include 'emu8086.inc'

org 100h

call scan_num

mov AX, CX

call pthis
db 13, 10, '', 0
call scan_num

;add AX, CX pt suma
imul CX

jno printare

printare:
    call pthis
    db 13, 10, '', 0
    call print_num
    jmp stop

lea SI, msgof    
call pthis
db 13, 10, '', 0
call print_string

ret

msgof db 13, 10, 'OVERFLOW NIGGA', 0

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end