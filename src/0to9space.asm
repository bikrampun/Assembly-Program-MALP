.model small
.stack 100h
.data
    num dB '0'

space macro
mov dl, ''
mov ah,02H
int 21h
endm

.code
    main proc    
        .startup
        mov cx, 0AH
        mov bl,num
again:	mov dl,bl
		mov ah,02H
        int 21h
        space
        inc bl
        loop again
        .exit
        main endp
    end main