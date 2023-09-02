

	.global _start #faz a label ser visivel para o linker

	.text

_start:	
	
	mov $60, %rax #exit
	mov $0, %rdi #return code 0
	add $1, %rdi
	syscall	


