include 'emu8086.inc'

org 100h

mov CX, n
mov BX, a
lea SI, x

search:
    cmp [SI], BX
    jne notFound
    inc AX
    notFound:
        add SI, 2
loop search

call print_num 

ret

a dw -300
x dw -200,-300,-200,230,-300,0,-300
n dw 7

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
DEFINE_PTHIS

end