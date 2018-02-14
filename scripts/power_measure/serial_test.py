import os
import pty
from mock import mock, patch
from nose.tools import *
from serial_ports import SerialPort, Controler


def test_serial_ports_list():
    with mock.patch.object(SerialPort, "get_serial_devices") as submethod_mocked:
        submethod_mocked.return_value = ["/dev/ttyACM0",
                                         "/dev/ttyUSB0",
                                         "/dev/ttySSY0"]

        expected_ports = ["/dev/ttyACM0", "/dev/ttyUSB0"]
        serial_ports = SerialPort.get_serial_ports(["ACM", "USB"])
        assert_equal(serial_ports, expected_ports)


def test_serial_open():
    master, slave = pty.openpty()
    mock_serial = os.ttyname(slave)
    with mock.patch.object(SerialPort, "get_serial_ports") as submethod_mocked:

        submethod_mocked.return_value = [
            "/dev/ttyACM0", "/dev/ttyUSB0", mock_serial]

        serialPort = SerialPort()

        with patch('__builtin__.input', return_value=mock_serial) as _input:
            assert_equal(True,
                         serialPort.serial_open(115200,
                                                SerialPort.get_serial_ports()))

        with patch('__builtin__.input', return_value='/dev/ttyUSB1') as _input:
            assert_equal(False,
                         serialPort.serial_open(115200,
                                                SerialPort.get_serial_ports()))


def test_serial_conection():
    master, slave = pty.openpty()
    mock_serial = os.ttyname(slave)
    serialPort = SerialPort()
    assert_equal(False, serialPort.serial_connect())
    serialPort.serial_port = mock.Mock()

    with patch('__builtin__.input', return_value=mock_serial) as _input:
        assert_equal(
            True, serialPort.serial_open(
                115200,
                ["/dev/ttyACM0",
                 "/dev/ttyUSB0",
                 mock_serial])
        )

        serialPort.serial_port.read = mock.Mock(
            return_value="dummy_data".encode('utf-8')
        )
        assert_equal(True, serialPort.serial_connect())


def test_calibrate():
    controler = Controler()
    serialPort = SerialPort()
    serialPort.serial_port = mock.Mock()
    serialPort.serial_port.read = mock.Mock(
        side_effect=list("-calibrate- 1 2 3 4 5 \n".encode('utf-8', "replace"))
    )

    controler.calibrate(serialPort.serial_port)

    assert_equal(controler.calib_val, ['1', '2', '3', '4', '5'])
