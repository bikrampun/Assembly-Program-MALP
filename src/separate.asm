.model small
.stack 100h
.data
    string1 dB "mirror$"
    string2 db "image$"
.code
    lfeed macro
    mov ah,06h
    mov dl,0Ah
    int 21h
    mov dl,00h
    int 21h
    endm

    main proc    
        .startup
        mov dx,offset string1
        mov ah,09h
        int 21h
        lfeed
        mov dx,offset string2
        mov ah,09h
        int 21h
        main endp
    end main