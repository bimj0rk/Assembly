org 100h 

mov CX, n

chkPrime:
   mov AX, n
   div CX
   cmp DX, 0
   jne notPrime
   inc BX
   notPrime:
    mov DX, 0
loop chkPrime

cmp BX, 2
je isPrime

mov AX, 0
jmp final

isPrime:
    mov AX, 1
    
final:

ret
 
n dw 64 