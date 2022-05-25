.model small
.stack 100h
.data
    val db 1
.code
    main proc    
        .startup
        mov cx,10
        mov al,val
        mov dl,0
  top:  add di,al
        inc al
        dec cx
        jz last
        jmp top
  last: mov al,dl
        aam
        add ax,3030h
        mov dl,ah
        mov dh,al
        mov ah,02h
        int 21h
        mov dl,dh
        mov ah,02h
        int 21h
        .exit
        main endp
    end main