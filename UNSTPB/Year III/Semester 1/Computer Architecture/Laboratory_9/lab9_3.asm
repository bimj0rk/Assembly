include 'emu8086.inc'

org 100h 

mov AX, str

cmp AX, 41h

jle stop

jge convert

convert:
sub AX, 20h    

stop:

call print_string

ret

str dw 'a', 0

DEFINE_PRINT_STRING
DEFINE_PTHIS