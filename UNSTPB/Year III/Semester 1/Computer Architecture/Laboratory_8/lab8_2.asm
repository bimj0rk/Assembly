include 'emu8086.inc'

org 100h ;seteaza distanta? trb cautat
                   
call pthis
db 13, 10, 'The string "', 0

lea SI, str
call print_string

call pthis
db '" has ', 0

mov AX, 0

start:
cmp [SI], 0
jne increment

jmp stop

increment:
inc AX
inc SI

jmp start

stop:
call print_num

call pthis
db ' elements.', 0

ret
str db 'Hello World', 0

DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end