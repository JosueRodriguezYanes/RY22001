section .data
	Resultado db "0"
	msg db " El resultado de la resta es:"
	SigLinea db 13, 10
	len_msg equ $-msg

section .bss

section .text
    global _start

_start:

	mov ax, 6		
    	mov bx, 3		
    	sub ax, bx       

    	mov bx, 2       	
    	sub ax, bx       	
    	
	add ax, 48       	
    	mov [Resultado], ax
    	
    	mov eax, 4       	
    	mov ebx, 1       	
    	mov ecx, msg
    	mov edx, len_msg     	
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
		
