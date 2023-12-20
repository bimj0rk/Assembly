include 'emu8086.inc'

org 100h

mov CX, n

lea SI, string
call print_string

capital:
    cmp [SI], 97
    jl good
    sub [SI], 32
    good:
        inc SI
                    
loop capital

sub SI, n   

call pthis
db 13, 10, '', 0
call print_string 

mov CX, n

small:
    cmp [SI], 97
    jge good2
    cmp [SI], 65
    jl good2
    add [SI], 32
    good2:
        inc SI
              
loop small

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