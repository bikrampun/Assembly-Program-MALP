.model small
.stack 100h
.data
    string dB 'a'
.code
    main proc    
        .startup
        mov cx, 1A H
        mov bl,alpha
again:	mov dl,bl
		mov ah,02 H
        int 21h
        inc bl
        loop again
        .exit
        main endp
    end main