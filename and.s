	# AND_FRAG Fragement
	# INPUTS: rax -> x
	#         rbx -> &y address of where in memory y is
	# OUTPUTS: x = x bitwise and y : update rax with bit wise and of the 
	#                                8 byte quantity at the location of &y
	#          rbx should be updated to equal &y + 8

.intel_syntax noprefix
	.section .text
	.global AND_FRAG 

AND_FRAG:
	mov rdi, QWORD PTR [rbx] #moves the value of y into the register rdi
	and rax, rdi #updates rax to include the value of y
	add rbx, 8 #updated to equal &y + 8 
	int3
