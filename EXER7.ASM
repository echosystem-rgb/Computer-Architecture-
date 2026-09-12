.model small
.stack
.code
start:
    mov ah, 02h
    mov cx, 26          ; A to Z = 26 lines
    mov bl, 41h         ; uppercase counter, starts at 'A' (ascending)
    mov bh, 7ah         ; lowercase counter, starts at 'z' (descending)
ulit:
    mov dl, bl
    int 21h             ; display uppercase letter
    mov dl, bh
    int 21h             ; display lowercase letter
    mov dl, 0dh
    int 21h             ; carriage return
    mov dl, 0ah
    int 21h             ; line feed
    inc bl              ; move uppercase letter forward (A,B,C,...)
    dec bh              ; move lowercase letter backward (z,y,x,...)
    loop ulit
    mov ah, 4ch
    int 21h
end start