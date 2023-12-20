include 'emu8086.inc'

org 100h

mov AX, -5
call print_num

call pthis
db 13, 10, '', 0
call print_num_uns  ;;numarul fara bit ul de semn luat in seama          

ret

DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PRINT_STRING
DEFINE_PTHIS

end