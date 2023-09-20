.intel_syntax noprefix
        .section .text
        .global AND_FRAG

AND_FRAG:
        mov rdi, QWORD PTR [rbx] #moves the value of y into the register rdi
        and rax, rdi #updates rax to include the value of y
        add rbx, 8 #updated to equal &y + 8 
        ret
