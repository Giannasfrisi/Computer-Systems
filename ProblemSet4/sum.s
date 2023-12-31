.intel_syntax noprefix

.section .data

.global SUM_POSITIVE #created the global data SUM_POSITIVE
.global SUM_NEGATIVE #created the global data SUM_NEGATIVE
.global SUM_FRAG #created the global data SUM_FRAG

SUM_POSITIVE:
        .quad 0 #sets SUM_POSITIVE to 0

SUM_NEGATIVE:
        .quad 0 #sets SUM_NEGATIVE to 0

.section .text

SUM_FRAG:
        mov rdi, QWORD PTR[rbx] #moves the value of y into the register rdi
        add rax, rdi #updates rax by adding rdi 
        add rbx, 8 #updated to equal &y + 8
        cmp rdi, 0 #compares the value of y to 0 to determine if its positive or negative

        jg positive #if the statement is true it jumps to the positive block
        jmp negative #else jumps to the negative block

positive:
add QWORD PTR[SUM_POSITIVE], rdi #updates SUM_POSITIVE if the value of y is positive
        jmp .done

negative:
add QWORD PTR[SUM_NEGATIVE], rdi #updates SUM_NEGATIVE if the value of y is negative

.done:
ret
