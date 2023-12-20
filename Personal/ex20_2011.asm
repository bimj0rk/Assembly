include 'emu8086.inc'

org 100h

mov AX, a
mov BX, b
mov CX, n

fibonacci:  call pthis
            db 13, 10, '', 0
            call print_num
            
            mov DX, AX
            add AX, BX
            mov BX, DX  

loop fibonacci

ret

a dw 1
b dw 1
n dw 27

DEFINE_PTHIS
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS

end