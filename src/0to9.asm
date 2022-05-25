.model small
.stack 100h
.data
    num dB '0'
.code
    main proc    
        .startup
        mov cx, 0AH
        mov bl,num
again:	mov dl,bl
		mov ah,02H
        int 21h
        inc bl
        loop again
        .exit
        main endp
    end main