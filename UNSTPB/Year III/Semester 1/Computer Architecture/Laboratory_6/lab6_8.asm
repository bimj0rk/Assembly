include 'emu8086.inc'

org 100h

mov AX, 256
call print_num_uns  ;print number in Acumulator

ret

DEFINE_PRINT_NUM_UNS ;req for print_num

end