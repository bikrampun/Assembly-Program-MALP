.model small
.stack 100h
.data
    string1 dB 'a'
    
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
        mov cx,26
        mov bl,string1
 again: mov dl,bl
        mov ah,02h
        int 21h
        inc bl
        lfeed
        loop again
      
        
        
        main endp
    end main