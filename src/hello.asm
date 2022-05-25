.model small
.stack 100h
.data
    string dB "Hello world!$"
.code
    main proc    
        .startup
        mov dx, offset string
        mov ah,09h
        int 21h
        .exit
        main endp
    end main
    