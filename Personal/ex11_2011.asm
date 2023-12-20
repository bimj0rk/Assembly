org 100h

mov DX, n

bigLoop:
    mov CX, n
    dec CX
    
    lea SI, x
    
    bubbleSort:
        mov AX, [SI]
        cmp AX, [SI + 2]
        jle nimic
        mov BX, [SI + 2]
        mov [SI], BX
        mov [SI + 2], AX
        
        nimic:
            add SI, 2
    
    loop bubbleSort

dec DX
cmp DX, 0
jg bigLoop        

ret

n dw 5
x dw 2, 5, 7, -3, -8