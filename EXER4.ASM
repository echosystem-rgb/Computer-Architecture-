.model small
.stack
.code
start:
    mov ah, 02h
    mov cx, 26          ; A to Z = 26 letters
    mov bl, 41h         ; uppercase counter, starts at 'A'
    mov bh, 61h         ; lowercase counter, starts at 'a'
ulit:
    mov dl, bl
    int 21h             ; display uppercase letter
    mov dl, bh
    int 21h             ; display lowercase letter
    inc bl              ; advance uppercase counter
    inc bh              ; advance lowercase counter
    loop ulit
    mov ah, 4ch
    int 21h
end start