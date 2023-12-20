org 100h    ;updated fibonacci dupa mine

lea SI, x
mov AX, 1
mov [SI], AX
add SI, 2
mov BX, 1
mov [SI], BX
add SI, 2

mov CX, n
dec CX
dec CX

fibonacci:  mov DX, BX
            add BX, AX
            mov AX, DX
            mov [SI], BX
            add SI, 2
            
loop fibonacci

ret

n dw 5
x dw ?, ?, ?, ?, ?, ?