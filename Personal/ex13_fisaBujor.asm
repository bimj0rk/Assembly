include 'emu8086.inc'

org 100h

mov AX, 6
add AX, 13
imul a
mov BX, AX

mov AX, 10
idiv b

add AX, BX

ret

a db 12
b db 5


DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
DEFINE_PTHIS

end