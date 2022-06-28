.code16
.global write;

write:
    xor %bh,%bh
    xor %dx,%dx
    movb $0x01, %al
    int $0x13