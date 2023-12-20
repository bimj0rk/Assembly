org 100h

mov AX, 1
mov BX, 1

mov CX, n
dec CX
dec CX

fibonacci:
    
    push BX
    add BX, AX
    pop BX

loop fibonacci

ret

n dw 5