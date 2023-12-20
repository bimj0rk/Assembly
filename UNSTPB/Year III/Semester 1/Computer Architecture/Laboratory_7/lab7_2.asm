include 'emu8086.inc'

org 100h

lea SI, msg1
call print_string
call scan_num

mov AX, CX    

lea SI, msg2
call print_string
call scan_num

add AX, CX

call pthis
db 13, 10, 'Sum: ', 0

call print_num

ret

msg1 db 13, 10, 'Enter the first number: ', 0 
msg2 db 13, 10, 'Enter the second number: ', 0

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end                     