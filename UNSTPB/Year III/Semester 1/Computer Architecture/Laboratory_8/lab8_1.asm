include 'emu8086.inc'

org 100h
                   
call pthis
db 13, 10, 'You have taken the grade :', 0
mov AL, grade
call print_num

cmp AL, passGrade

jge printGood
call pthis
db 13, 10, 'You failed. :(',0
jmp over

printGood:
call pthis
db 13, 10, 'You passed. :D', 0

over:
ret
passGrade db 5
grade db 9

DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS
DEFINE_PTHIS

end