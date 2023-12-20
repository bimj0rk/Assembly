include 'emu8086.inc' 

org 100h 

mov AX, a
mov BX, b
mov CX, n

fibonacci:

call pthis
db 13, 10, '', 0
call print_num

mov DX, AX     
add AX, BX
mov BX, DX 

loop fibonacci

ret

a dw 1
b dw 1
n dw 27 ;cand depaseste 2^15 nu mai tine cont daca nr e intre 2^15 sau 2^16, iar incepand cu numarul pozitiv rezultatul va fi doar restul impartirii la 2^16


DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
DEFINE_PTHIS

end