	.intel_syntax noprefix
	.section .data
RX:
	.quad 0

	.section .text
.global _start

_start:
	mov rax, 0 #moves 0 into rax
	mov QWORD ptr[SUM_POSITIVE], 0 #sets sum_positive
	mov QWORD ptr[SUM_NEGATIVE], 0 #sets sum_negative

 	mov rbx, OFFSET CALC_DATA_BEGIN

check:
	mov cl, byte ptr[rbx] #increments cl
	cmp cl, 0 #checks if cl = 0
	je done

steptwo:
	add rbx, 8 #advances rbx by 8
	cmp cl, '|' #compares cl to or
	je orblock #jumps to OR_FRAG

	cmp cl, '&' #compares cl to and 
	je andblock #jumps to AND_FRAG

	cmp cl, 'S' #compares cl to sum
	je sumblock #jumps to SUM_FRAG

	cmp cl, 'U' #compares cl to upper
	je upperblock #jumps to UPPER_FRAG
	
	jmp check #loops back

orblock:
	call OR_FRAG 
	jmp check 

andblock:
	call AND_FRAG
	jmp check 

sumblock:
	call SUM_FRAG
	jmp check 

upperblock:
        call UPPER_FRAG
        jmp check

done:
	# Print rax contents
	mov qword ptr[RX], rax
	mov rax, 1
	mov rdi, 1
	mov rsi, OFFSET RX
	mov rdx, 8 
	syscall

	# Print SUM_POSITIVE
	mov rax, 1
	mov rdi, 1
	mov rsi, OFFSET SUM_POSITIVE 
	mov rdx, 8
	syscall

	# Print SUM_NEGATIVE
	mov rax, 1
        mov rdi, 1
        mov rsi, OFFSET SUM_NEGATIVE
        mov rdx, 8
        syscall

	
	# Print CALC_DATA	
	mov rax, 1
        mov rdi, 1
        mov rsi, OFFSET CALC_DATA_BEGIN
        mov rdx, OFFSET CALC_DATA_END
	sub rdx, rsi
        syscall


	#exit 
	mov rax, 60
	mov rdi, 0
	syscall

