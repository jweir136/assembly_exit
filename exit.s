# PURPOSE:  Simple program that exits and returns a status code back to the Linux kernel.
#
#
# INPUT:    None.
#
#
# OUTPUT:   returns a status code. This can be viewed by typing 'echo $?'.
#
#
# VARS:     '%eax' holds the system call number. '%ebx' holds the return status.
#
#

.globl _start

_start:
    movl $1, %eax   # This is the linux kernel command number for exiting.
    movl $0, %ebx   # This is the status number we will use to output.

    int $0x80       # This wakes up the kernel to run the exit command.