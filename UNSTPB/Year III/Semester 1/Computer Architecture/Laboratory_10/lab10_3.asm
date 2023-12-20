org 100h    ;updated fibonacci dupa mine

mov DX, n

bigLoop:    mov CX, n
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
                                
dec DX
cmp DX, 0
jg bigLoop

ret

n dw 5
x dw 5, -2, 3, -1, 3