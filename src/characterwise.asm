.model small
.stack 100h
.data
    string dB "microprocessor"
.code
    main proc    
        .startup
        mov cx,14
        mov si,offset string
again:	mov dl,[si]
		mov ah,02H
        int 21h
        inc si
        loop again
        mov ax,4c00h
        int 21h
     
        main endp
    end main