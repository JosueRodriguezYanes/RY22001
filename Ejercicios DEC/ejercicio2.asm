section .data
	
	num1 db 3
	num2 db 2
	Resultado db 0
	msg db "El resultado de la multiplicación es:"
	len_msg equ $-msg
	SigLinea db 13, 10

section .bss

section .text
    global _start

_start:
	
	mov al, byte [num1]
	
	mul byte [num2]
	
	add al, '0'
	mov [Resultado], al
	
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
