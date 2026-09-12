.model small
.stack
.code
start:
    mov ah, 02h
    mov cx, 26          ; z down to a = 26 letters
    mov bl, 7ah         ; lowercase counter, starts at 'z' (descending)
    mov bh, 41h         ; uppercase counter, starts at 'A' (ascending)
ulit:    mov dl, bl
    int 21h             ; display lowercase letter
    mov dl, bh
    int 21h             ; display uppercase letter
    dec bl              ; move lowercase letter backward (z,y,x,...)
    inc bh              ; move uppercase letter forward (A,B,C,...)
    loop ulit
    mov ah, 4ch
    int 21h
end start