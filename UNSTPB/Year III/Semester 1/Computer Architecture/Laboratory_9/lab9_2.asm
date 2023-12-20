org 100h 

lea SI, x
mov AX, a
mov BX, b
mov CX, n

fibonacci:  
     
mov [SI], AX     
add AX, BX
mov BX, [SI]
add SI, 2 

loop fibonacci

ret

a dw 1
b dw 1
n dw 27 ;cand depaseste 2^15 nu mai tine cont daca nr e intre 2^15 sau 2^16, iar incepand cu numarul pozitiv rezultatul va fi doar restul impartirii la 2^16
x dw 1