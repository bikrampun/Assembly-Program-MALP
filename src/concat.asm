.model small
.stack 100h
.data
    string1 dB "assembly program"
    string2 dB "language $"
language macro
mov dx,offset string2
mov ah,09H
int 21h
endm
.code
    main proc    
        .startup
        mov cx,09
        mov si,offset string1
       
again1:	mov dl,[si]
		mov ah,02H
        int 21h
        inc si
        loop again
        language
        mov cx,07h
        mov di,offset string1
        add di,09
again2: mov dl,[di]
        mov ah,02H     
        int 21h
        inc di
        loop again2
     
        main endp
    end main