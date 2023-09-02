	.global _start

	.text

_start:

	jmp output_end

output:
	mov $1, %rax
	mov $1, %rdi
	mov $buffer, %rsi
	mov $14, %rdx
	syscall
	ret
output_end:

	call output

	mov $60, %rax
	mov $0, %rdi
	syscall

	.data
buffer:
	.ascii "Hello, World!\n"
