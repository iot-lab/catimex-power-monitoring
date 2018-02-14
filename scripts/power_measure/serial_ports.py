import serial
import serial.tools.list_ports
import sys

allowed_ttys = ["ACM", "USB"]

ADC_V_REF = 3.3
ADC_BIT_RES = 12.0

RES_CAL = [1e3, 1e4, 1e5, 1e7]   # Calibrating resistors
SHUNT_RESISTOR = 4.7             # Shunt resistor value
SWITCH_RES = 0.7                 # Analog switch value

# TODO: resolution of adc should be consulted


class Controler(object):

    calib_v_val = []
    calib_i_val = []
    initial_vbat = 0

    def __init__(self):
        self.serial_port = None

    @staticmethod
    def adc_to_v(adc_reading):
        global ADC_BIT_RES, ADC_V_REF
        return adc_reading*ADC_V_REF/2**ADC_BIT_RES

    @staticmethod
    def v_to_i(supply_v):
        global ADC_BIT_RES, ADC_V_REF
        return map(lambda x: supply_v/(x + SHUNT_RESISTOR + SWITCH_RES), RES_CAL)

    def calibrate(self, serial_port):
        serial_port.write(b"meas calibrate\n")
        string_serial = ""
        while True:
            rx_buffer_data = serial_port.read()
            string_serial += rx_buffer_data.decode("utf-8", "replace")
            if rx_buffer_data.decode("utf-8", "replace") == "\n":
                data = string_serial.split(" ")
                if data[0] == "-calibrate-":
                    self.initial_vbat = self.adc_to_v(int(data[1]))
                    self.calib_v_val = map(self.adc_to_v, map(int, data[2:6]))
                    self.calib_i_val = self.v_to_i(int(data[1]))
                    break
                string_serial = ""

    def set_meas(self, serial_port, param, value):
        data = 'meas set %s %s \n' % (param, value)
        my_bytes = data.encode('utf-8')
        serial_port.write(my_bytes)
        string_serial = ""
        while True:
            rx_buffer_data = serial_port.read()
            string_serial += rx_buffer_data.decode("utf-8", "replace")
            if rx_buffer_data.decode("utf-8", "replace") == "\n":
                print (string_serial.rstrip())
                break


class SerialPort(object):

    serial_port = None
    device = None

    def __init__(self):
        self.serial_port = None

    @staticmethod
    def get_serial_devices():
        comports_list = serial.tools.list_ports.comports()
        return map(lambda x: x.device, comports_list)

    @staticmethod
    def get_serial_ports(filter):
        serial_ports = SerialPort.get_serial_devices()
        tty_ports = []
        for port in serial_ports:
            for string in filter:
                if string in port:
                    tty_ports.append(port)

        if(len(tty_ports) == 0):
            print ("No serial port conneted, exiting script")
            sys.exit()

        return tty_ports

    def serial_open(self, baudrate, tty_ports, device=None):
        print("Connected COM ports: " + str(tty_ports))
        if device is None:
            device = input("Choose Com port: \n > ")

        if device in tty_ports:
            self.serial_port = serial.Serial(device, baudrate)
            self.device = device
            return True
        else:
            print("device not valid, selec one of: " + str(tty_ports))
            return False

    def serial_connect(self):
        if self.serial_port is None:
            print("Serial port isnt initialized")
            return False
        else:
            connected = False
            while not connected:
                    try:
                        connected = True
                    except(serial.SerialException,
                            serial.SerialTimeoutException):
                        print ("failed to connect on ", self.device)
                        sys.exit()
        print ("serial_port connected")
        return connected


if __name__ == "__main__":
    controler = Controler()

    serial_port = SerialPort()
    serial_port.serial_open(115200, SerialPort.get_serial_ports(allowed_ttys),
                            "/dev/ttyACM0")

    string_serial = ""

    controler.calibrate(serial_port.serial_port)
    controler.set_meas(serial_port.serial_port, "freq", "1")
    controler.set_meas(serial_port.serial_port, "res", "1")

    while True:
        try:
            rx_buffer_data = serial_port.serial_port.read(1)
            string_serial += rx_buffer_data.decode("utf-8", "replace")

            if rx_buffer_data.decode("utf-8", "replace") is "\n":
                print (string_serial.rstrip())
                string_serial = ""

        except (KeyboardInterrupt, SystemExit):
            serial_port.serial_port.close()
            raise
