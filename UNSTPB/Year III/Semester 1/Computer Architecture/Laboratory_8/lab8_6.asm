include 'emu8086.inc' 

org 100h 
                   
lea SI, x
lea DI, y
mov CX, n

mov BX, 0

start: 

add BX, [SI]
add BX, [DI]
mov [SI], BX
mov BX, 0  

; mov AX, [DI]
; add [SI], AX

add SI, 2
add DI, 2  

loop start

ret

x dw -1,2,0,-1,4
y dw 1,-2,0,1,-4
n dw 5 

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end