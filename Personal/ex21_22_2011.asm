include 'emu8086.inc'

org 100h

mov CX, n

lea SI, string
call print_string

bigL:
    cmp [SI], 97
    jge bad
    bad:
        sub [SI], 32
    inc SI
                    
loop bigL

sub SI, n
sub SI, n     

call pthis
db 13, 10, '', 0
call print_string

ret

string db 'Hello World', 0
n dw 11

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
DEFINE_PTHIS

end