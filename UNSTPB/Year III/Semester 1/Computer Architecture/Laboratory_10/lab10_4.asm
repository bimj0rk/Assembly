org 100h    ;updated fibonacci dupa mine

mov CX, n
dec CX

bigLoop:    push CX
            mov CX, n
            dec CX 
            
            lea SI, x  ;adresare directa (00129h), stie deja ca e acolo? cred?
            
            bubble:     mov AX, [SI]
                        cmp AX, [SI + 2]
                        jle nimic
                        mov BX, [SI + 2]
                        mov [SI], BX
                        mov [SI + 2], AX
                        
                        nimic:  add SI, 2
                                
            loop bubble 
            pop CX
loop bigLoop
                                
dec DX
cmp DX, 0
jg bigLoop

ret

n dw 5
x db 5, -2, 3, -1, 3