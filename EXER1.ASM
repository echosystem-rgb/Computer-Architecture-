.model small
.stack
.code
start:
    mov ah,02h
    mov dl,4ah
    int 21h    ; 'J'
    mov dl,45h
    int 21h    ; 'E'
    mov dl,52h
    int 21h    ; 'R'
    mov dl,49h
    int 21h    ; 'I'
    mov dl,43h
    int 21h    ; 'C'
    mov dl,48h
    int 21h    ; 'H'
    mov dl,4fh
    int 21h    ; 'O'
    mov dl,0dh
    int 21h    ; carriage return
    mov dl,0ah
    int 21h    ; line feed
    mov dl,4dh
    int 21h    ; 'M'
    mov dl,2eh
    int 21h    ; '.'
    mov dl,0dh
    int 21h    ; carriage return
    mov dl,0ah
    int 21h    ; line feed
    mov dl,46h
    int 21h    ; 'F'
    mov dl,52h
    int 21h    ; 'R'
    mov dl,41h
    int 21h    ; 'A'
    mov dl,4eh
    int 21h    ; 'N'
    mov dl,43h
    int 21h    ; 'C'
    mov dl,49h
    int 21h    ; 'I'
    mov dl,53h
    int 21h    ; 'S'
    mov dl,43h
    int 21h    ; 'C'
    mov dl,4fh
    int 21h    ; 'O'
    mov ah,4ch
    int 21h
end start