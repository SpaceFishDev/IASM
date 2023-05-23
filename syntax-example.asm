[elf64] 
;[interpet]
;[elf32] 

.data
label:
	byte 'a' ; 8 bit
	word 0xAA ; 16 bit
	dword 0xAAAA ; 32 bit
	qword 0xAAAAAAAA ; 64 bit
	LPCSTR "Hello, World" ; C string (null terminated) in this case will be placed right in memory right here but in cases of usage in .text it will be a pointer to this string.
.text 	
start:
	mov al, [label] ; in these cases type is implicit
	mov ax, [label + 1] 
	mov eax, [label + 3] 
	mov rax, [label + 7]
	mov rax, [label] : byte ; this needs to be explicit and this is how types are annotated, leading zeros will be placed in this scenario.
	cmp al, al ; comparisons are the EXACT same as intel syntax
	jne start 
	push LPSTR"FEW! al is infact equal to itself." ; LPSTR is a non-null terminated string
	

	; exit ;; in interpreted mode, exit can be called without icall but any other interpreted commands must use icall to avoid strange issues.

	
