.code16
.global keypress;
keypress:
    in $0x60, %al
    push %ax
    in $0x61, %al
    movb %al, %ah
    or 0x80, %al
    out %al, $0x61
    movb %ah, %al
    out %al,$0x61
    retw
