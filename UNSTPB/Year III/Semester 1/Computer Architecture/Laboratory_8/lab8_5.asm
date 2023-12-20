include 'emu8086.inc' ;sum

org 100h 
                   
lea SI, x
mov CX, n

mov AX, 0

start:

add AX, [SI]
add SI, 2

loop start

call print_num

ret

x dw 1,-2,4,-1,3,5,6
n dw 7

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end