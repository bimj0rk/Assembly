include 'emu8086.inc'

org 100h

lea SI, msg1
call print_string
call scan_num

mov AX, CX

call pthis
db 13, 10, 'You have entered: ', 0

call print_num

ret

msg1 db 'Enter the number: ', 0

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end                     

;if the value written is over 32767, it messes up
;my assumption: we have written the magnitude bit
;if we add them up, we get 2^16