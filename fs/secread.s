.code16 
.global secread
secread:
    movb $0x0, %dl
    movb $0x0, %dh
    movb $0x0, %ch
    movb $0x2, %cl
    movb $0x1, %al
    movb $0x2, %ah
    