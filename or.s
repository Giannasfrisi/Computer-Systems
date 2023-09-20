	# OR_FRAG Fragement
	# INPUTS: rax -> x
	#         rbx -> &y address of where in memory y is
	# OUTPUTS: x = x bitwise and y : update rax with bit wise OR of the 
	#                                8 byte quantity at the location of &y
	#          rbx should be updated to equal &y + 8

.intel_syntax noprefix
	.section .text
	.global OR_FRAG 

OR_FRAG:
	mov rdi, QWORD PTR [rbx] #moves the contents of y into rdi
	or rax, rdi #update rax with bitwise or
	add rbx, 8 #updated to equal &y + 8
	int3
