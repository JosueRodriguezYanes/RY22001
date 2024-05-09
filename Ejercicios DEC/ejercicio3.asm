section .data
	
	num1 dd 8
	num2 dd 4
	Resultado dd 0
	msg db "El resultado de la división es:"
	len_msg equ $-msg
	SigLinea db 13, 10

section .bss

section .text
    global _start

_start:
	
	mov eax, dword [num1]
	cdq
	idiv dword [num2]
	
	add eax, '0'
	mov [Resultado], eax
	
	mov eax, 4       	
    	mov ebx, 1       	
    	mov ecx, msg
    	mov edx, len_msg     	
    	int 80h
    	
    	mov eax, 4       	
    	mov ebx, 1       	
    	mov ecx, SigLinea
    	mov edx, 2      	
    	int 80h

    	mov eax, 4       	
    	mov ebx, 1       	
    	mov ecx, Resultado 	
    	mov edx, 1       	
    	int 80h          	
    	
    	mov eax, 4       	
    	mov ebx, 1       	
    	mov ecx, SigLinea
    	mov edx, 2      	
    	int 80h
	         	

    	mov eax, 1       	
    	mov ebx, 0    
    	int 80h
