.model small
.stack
.code
start:
    mov ah, 02h
    mov cx, 26          ; a to z = 26 lines
    mov bl, 61h         ; lowercase counter, starts at 'a' (ascending)
    mov bh, 5ah         ; uppercase counter, starts at 'Z' (descending)
ulit:
    mov dl, bl
    int 21h             ; display lowercase letter
    mov dl, bh
    int 21h             ; display uppercase letter
    mov dl, 0dh
    int 21h             ; carriage return
    mov dl, 0ah
    int 21h             ; line feed
    inc bl              ; move lowercase letter forward (a,b,c,...)
    dec bh              ; move uppercase letter backward (Z,Y,X,...)
    loop ulit
    mov ah, 4ch
    int 21h
end start