

	.global _start

	.text

_start:
	mov $1, %rax # syscall 1 (write)
	mov $1, %rdi # file handle 1 (stdout)

	mov $message, %rsi
	mov $14, %rdx
	
	syscall

	mov $60, %rax
	mov $0, %rdi
	syscall

message:
	.ascii "Hello, World!\n"
