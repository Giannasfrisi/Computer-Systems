.intel_syntax noprefix
        .section .text
        .global OR_FRAG

OR_FRAG:
        mov rdi, QWORD PTR [rbx] #moves the contents of y into rdi
        or rax, rdi #update rax with bitwise or
        add rbx, 8 #updated to equal &y + 8
        ret
