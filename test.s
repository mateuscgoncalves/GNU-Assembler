
	.global _start

	.text

_start:
	
	#b=7; while (b > 0) { b--: }
	mov $7, %rbx

loop:
	cmp $1, %rbx
	jle behindloop
	
	sub $1, %rbx
	jmp loop

behindloop:

	mov $60, %rax #60: syscall para exit
	mov %rbx, %rdi #return code (rdi) vai ser igual a rbx
	syscall
