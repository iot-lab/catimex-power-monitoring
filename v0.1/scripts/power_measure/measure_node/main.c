#include <stdio.h>

#include "shell.h"
#include "msg.h"

#define MAIN_QUEUE_SIZE     (8)
static msg_t _main_msg_queue[MAIN_QUEUE_SIZE];

extern int measure_cmd(int argc, char **argv);
extern int start_up(void);

static const shell_command_t shell_commands[] = {
    { "meas", "configure current measurement", measure_cmd },
    { NULL, NULL, NULL }
};

int main(void)
{
    msg_init_queue(_main_msg_queue, MAIN_QUEUE_SIZE);

    if(start_up()){
        puts("error: not enough adc lines on this mcu");
        return 1;
    }

    puts("All up, running the shell now");
    char line_buf[SHELL_DEFAULT_BUFSIZE];
    shell_run(shell_commands, line_buf, SHELL_DEFAULT_BUFSIZE);

    return 0;
}
