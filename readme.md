# IASM
## Interpretable Assembly
This project is an assembler that can both assemble the code and also interpret the assembly.
This assembler is not too disimilar to x86 intel syntax.
The syntax does have a few differences.
# Syntax
```asm
[interpret]
start: 
	push LPCSTR"Hello, world!" ; will push a pointer to the begining of the string, it will be null terminated
	icall print ; icall is a call to any interpreter builtin functions
exit 
```
This is an example of an interpreter application, the same application in elf-64 is different.
```asm
[elf64]
start:
	mov rax, 1
	mov rdi, 0 ; stdout
	mov rsi, LPSTR"Hello, world!" ; not null terminated
	mov rdx, 13
	syscall
	mov rax, 60
	mov rdi, 0
	syscall
```

