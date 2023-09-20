.intel_syntax noprefix
        .section .text
        .global UPPER_FRAG

UPPER_FRAG:
	mov rdi, QWORD ptr[rbx] #suppose to represent the string 

looping:
	mov cl, byte ptr[rdi] #increments the letter in the string
	cmp cl, 0 #checks if the string is empty
	je done

matching_letter:
	cmp cl, 'z' #checks cl is a letter
	jg next_value  

	cmp cl, 'a' #checks cl is a letter
	jl next_value
	
	jmp lower_to_upper

next_value:
	add rdi, 1
	add rax, 1
	jmp looping

lower_to_upper: #change the lower case letter to upper case
	mov ch, cl
	sub ch, 32	
	mov byte ptr[rdi], ch
	add rax, 1	
	add rdi, 1
	jmp looping

done:
	add rbx, 8
	ret
