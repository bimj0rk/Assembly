include 'emu8086.inc'

org 100h

lea SI, msg1      ;ask for number
call print_string
call scan_num     ;get nr in CX

mov AX, CX

call pthis        ;
db 13, 10, 'you have entered: ', 0

call print_num    ;print nr in AX

ret

msg1 db 'enter the number: ', 0

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end