include 'emu8086.inc'

org 100h ;seteaza distanta? trb cautat
                   
lea SI, x
mov CX, n

mov AX, -7FFFh ;-7FFFh e cea mai mica valoare pe 16 biti cu semn

start:

cmp [SI], AX
jle continue
mov AX, [SI]

continue:
add SI, 2

loop start ;ia 'n' ca nr de iteratii si se opreste automat

call print_num

ret

x dw 1,-2,4,-1,3,5,6
n dw 7

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end