

	.global _start

	.text

_start:

	mov $0, %rax # syscall 1 (read)
	mov $0, %rdi # file handle 1 (stdin)
	mov $buffer, %rsi # buffer
	mov $14, %rdx # len of buffer
	syscall

	mov $1, %rax # syscall 1 (write)
	mov $1, %rdi # file handle 1 (stdout)
	mov $buffer, %rsi
	mov $14, %rdx #len of message	
	syscall

	mov $60, %rax # exit
	mov $0, %rdi # status code
	syscall

	.data
buffer:
	.ascii "              "
