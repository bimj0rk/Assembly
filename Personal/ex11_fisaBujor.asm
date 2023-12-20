include 'emu8086.inc'

org 100h

    

ret

s db 'hello world', 0
w db 'aeiouyw', 0
n dw 7

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
DEFINE_PTHIS

end