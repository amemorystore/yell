; disasSembly of "yell.gbc"
SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    nop
    ld [de], a
    add hl, de
    rst $18
    ld b, b
    ld e, a
    ld e, d
    ld b, e
    ld e, d
    inc bc
    dec de
    sub l
    ld c, e
    pop bc
    rst $00
    add hl, bc
    inc d
    ld hl, sp+$27
    ld d, $c7
    ld [de], a
    ld d, c
    ld b, b
    db $dd
    rst $00
    add hl, bc
    ld a, [bc]
    ld hl, sp+$00
    ld sp, hl
    add $22
    ld b, b
    rrca
    dec c
    dec c
    ld [$7a00], sp
    dec c
    ld a, [bc]
    ld [bc], a
    ld a, d
    add hl, bc
    jr jr_006_402f

jr_006_402f:
    add b
    inc bc
    jr jr_006_4035

    add b
    inc bc

jr_006_4035:
    add hl, de
    ld [bc], a
    add b
    add hl, bc
    add hl, hl
    nop
    add l
    dec de
    inc c
    nop
    add [hl]
    inc de
    inc e
    nop
    add a
    inc de
    daa
    nop
    adc b
    inc de
    ld hl, $8900
    dec de
    rra
    nop
    adc d
    dec de
    inc hl
    nop
    adc e
    dec de
    dec hl
    nop
    adc h
    add hl, bc
    rrca
    dec de
    ld a, [bc]
    rrca
    inc de
    dec bc
    add hl, bc
    ld a, [hl+]
    inc c
    dec e
    dec c
    dec c
    add hl, bc
    dec d
    ld c, $0d
    inc c
    rrca
    dec d
    daa
    db $10
    dec d
    ld hl, $1511
    dec de
    ld [de], a
    add hl, bc
    ld [$0c15], sp
    cp $00
    ld bc, $2025
    rrca
    rst $38
    pop de
    ld [bc], a
    dec c
    rla
    ld [de], a
    cp $01
    inc bc
    dec h
    ld a, [de]
    dec e
    rst $38
    ret nc

    inc b
    dec h
    inc d
    ld a, [de]
    rst $38
    ret nc

    dec b
    cpl
    db $10
    inc h
    rst $38
    jp nc, Jump_000_0506

    db $10
    ld [hl+], a
    rst $38
    db $d3
    rlca
    jr jr_006_40c2

    inc h
    cp $02
    ld [$1218], sp
    ld l, $fe
    ld [bc], a
    add hl, bc
    add $c7
    dec c
    ld [$c7c7], sp
    dec c
    ld a, [bc]
    sub b
    rst $00
    add hl, bc
    jr jr_006_40eb

    rst $00
    inc bc
    jr jr_006_40ef

    rst $00
    inc bc
    add hl, de
    sbc b
    rst $00
    add hl, bc

jr_006_40c2:
    add hl, hl
    and c
    ret z

    dec de
    inc c
    dec l
    ret z

    inc de
    inc e
    ld [hl-], a
    ret z

    inc de
    daa
    cpl
    ret z

    inc de
    ld hl, $c8aa
    dec de
    rra
    xor h
    ret z

    dec de
    inc hl
    or b
    ret z

    dec de
    dec hl
    rrca
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h

jr_006_40eb:
    ld l, h
    ld l, h
    ld l, h
    ld l, h

jr_006_40ef:
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, a
    ld l, a
    ld a, [bc]
    ld l, a
    ld l, a
    ld l, a
    ld a, [bc]
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld a, [bc]
    ld l, [hl]
    rrca
    jr nz, jr_006_4135

    ld d, l
    ld d, l
    ld d, l
    ld d, l
    jr nz, jr_006_4127

    ld hl, $2055
    dec c
    ld hl, $5555
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l

jr_006_4127:
    ld d, l
    ld l, l
    ld l, [hl]
    rrca
    ld l, b
    ld l, c
    jr nz, jr_006_413c

    dec c
    ld hl, $7f68
    ld l, c
    ld d, l

jr_006_4135:
    ld l, b
    ld a, a
    ld l, c
    jr nz, jr_006_415b

    jr nz, jr_006_415d

jr_006_413c:
    jr nz, jr_006_415f

    jr nz, jr_006_4161

    ld d, l
    ld l, l
    ld l, [hl]
    rrca
    scf
    ld a, [hl]
    ld l, b
    ld a, a
    ld a, a
    ld l, c
    scf
    ld a, l
    ld a, [hl]
    ld a, c
    scf
    ld a, [hl-]
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    ld a, h
    ld [hl], d
    ld d, l
    rrca

jr_006_415b:
    rrca
    rrca

jr_006_415d:
    ld d, l
    ld d, l

jr_006_415f:
    ld l, b
    ld a, a

jr_006_4161:
    ld a, a
    ld l, c
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rrca
    ld d, l
    ld d, l
    scf
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], e
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rrca
    rrca
    rrca
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, c
    jr nc, jr_006_41a3

    inc bc
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, l
    ld [hl], a
    ld [hl], a

jr_006_41a3:
    ld [hl], a
    ld [hl], a
    rrca
    rrca
    rrca
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld c, [hl]
    ld d, h
    ld c, l
    jr nz, jr_006_41c3

    ld hl, $2120
    ld d, l
    jr nz, jr_006_41dd

    jr nz, jr_006_41df

    rrca
    ld l, [hl]
    ld [hl], a
    ld d, l
    ld d, l

jr_006_41c3:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, a
    rra
    ld l, d
    scf
    ld a, [hl-]
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld d, l
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    rrca
    ld l, [hl]
    rrca
    ld d, l
    ld d, l
    ld d, l

jr_006_41dd:
    ld d, l
    ld d, l

jr_006_41df:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    jr jr_006_4228

    add hl, de
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    dec [hl]
    ld l, [hl]
    rrca
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld l, l
    ld l, [hl]
    rrca
    jr nz, jr_006_422f

    inc c
    dec c
    dec c
    ld c, $20
    ld hl, $2120
    ld d, l
    ld d, l
    jr nz, jr_006_423b

    jr nz, jr_006_423d

    jr nz, jr_006_423f

    jr nz, jr_006_4241

    jr nz, jr_006_4243

    ld a, [bc]
    ld l, [hl]
    rrca
    scf
    ld a, [hl]
    db $10

jr_006_4228:
    ld de, $1211
    scf
    ld a, [hl]
    scf
    ld a, [hl]

jr_006_422f:
    ld d, l
    ld d, l
    scf
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    scf
    ld a, [hl]
    ld a, h
    ld a, [hl]

jr_006_423b:
    ld a, [bc]
    ld l, [hl]

jr_006_423d:
    rrca
    ld d, l

jr_006_423f:
    ld d, l
    ld d, l

jr_006_4241:
    ld d, l
    ld d, l

jr_006_4243:
    ld a, c
    ld d, l
    ld d, l
    jr nz, jr_006_4269

    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld l, [hl]
    rrca
    rlca
    cpl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    scf
    ld a, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l

jr_006_4269:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld l, [hl]
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [hl-], a
    ld [hl], $6c
    ld l, h
    ld l, h
    ld l, h
    ld a, [bc]
    ld l, [hl]
    rrca
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld [hl], $6f
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rrca
    nop
    add hl, bc
    ld a, [bc]
    db $fd
    ld b, d
    xor d
    ld c, a
    ld a, [$0c4d]
    inc c
    sub d
    ld b, c
    db $eb
    add $0a
    ld a, [bc]
    inc hl
    nop
    add hl, bc
    ret z

    jr nz, @+$7f

    ld d, b
    xor e
    rst $00
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $c3
    ld b, d
    dec bc
    inc bc
    dec b
    dec b
    nop
    dec h
    dec b
    dec c
    nop
    daa
    dec bc
    inc c
    ld bc, $0428
    dec c
    dec c
    inc b
    add hl, bc
    rlca
    dec b
    dec b
    inc bc
    ld b, $05
    dec bc
    rlca
    inc bc
    inc bc
    ld [$ff0e], sp
    rst $38
    ld bc, $0c0d
    rlca
    cp $00
    ld [bc], a
    cpl
    ld [de], a
    rrca
    cp $00
    inc bc
    dec de
    rst $00
    dec b
    dec b
    rra
    rst $00
    dec b
    dec c
    ld c, a
    rst $00
    dec bc
    inc c
    ld d, d
    ld c, a
    ld d, d
    ld d, d
    ld c, a
    dec bc
    ld d, b
    ld d, d
    ld d, d
    ld d, b
    ld c, [hl]
    ld bc, $3938
    ld bc, $3801
    add hl, sp
    ld bc, $4e4d
    ld [$3d3c], sp
    ld bc, $3c08
    dec a
    ld bc, $4e4d
    ld bc, $0101
    ld bc, $0101
    ld bc, $4d01
    ld c, [hl]
    ld bc, $5677
    ld bc, $0d0c
    ld c, $01
    ld c, l
    ld c, [hl]
    ld bc, $7474
    ld bc, $3a10
    nop
    ld bc, $4e4d
    ld bc, $0101
    ld bc, $5677
    ld [hl], a
    ld sp, $4e4d
    ld a, [bc]
    dec e
    ld e, $31
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld sp, $504d
    ld a, [bc]
    ld h, l
    ld h, h
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld c, a
    nop
    ld [de], a
    inc d
    ld a, [c]
    ld b, e
    inc de
    ld d, d
    ld a, [hl+]
    ld d, b
    ld c, $0d
    ret nc

    ld b, c
    ldh a, [$c6]
    ld a, [bc]
    ld a, [bc]
    ld b, a
    or $29
    ret


    inc c
    db $fc
    ld b, b
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $21
    ld c, [hl]
    ld b, b
    sbc [hl]
    rst $00
    add hl, bc
    inc d
    ld hl, sp+$27
    ld d, $c7
    add h
    ld b, e
    rrca
    dec b
    add hl, de
    rla
    nop
    add hl, hl
    inc de
    dec e
    nop
    ld a, [hl+]
    rrca
    dec d
    nop
    dec hl
    add hl, bc
    dec d
    nop
    inc l
    rlca
    jr nz, jr_006_4399

jr_006_4399:
    dec l
    ld b, $11
    ld de, $0109
    inc de
    ld a, [bc]
    dec e
    dec d
    dec bc
    inc de
    ld e, $0c
    add hl, de
    jr jr_006_43b7

    rlca
    dec de
    ld c, $08
    inc b
    jr jr_006_43c2

    cp $00
    ld bc, $0c0b
    ld [hl+], a

jr_006_43b7:
    rst $38
    rst $38
    ld [bc], a
    inc b
    dec e
    ld [hl+], a
    cp $00
    inc bc
    dec c
    dec c

jr_006_43c2:
    dec d
    rst $38
    db $d3
    inc b
    ld d, d
    dec c
    ld d, $ff
    rst $38
    dec b
    cpl
    dec de
    ld a, [bc]
    rst $38
    ret nc

    ld b, $0b
    add hl, bc
    dec d
    cp $02
    rlca
    dec bc
    dec c
    ld d, $ff
    rst $38
    ld [$c846], sp
    add hl, de
    rla
    ei
    rst $00
    inc de
    dec e
    jp $0fc7


    dec d
    ld [hl], l
    rst $00
    add hl, bc
    dec d
    ld h, c
    rst $00
    rlca
    jr nz, jr_006_441f

    inc l
    add hl, hl
    rrca
    rrca
    rrca
    rrca
    rrca
    dec de
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    rrca
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $0f0f
    ld sp, $3131
    ld sp, $3131
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    ld a, [bc]
    ld d, d

jr_006_441f:
    ld d, d
    ld d, d
    inc [hl]
    ld bc, $0101
    ld sp, $3131
    inc c
    dec c
    ld c, $31
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $311b
    ld sp, $1008
    ld de, $3112
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $0302
    ld a, [de]
    ld a, [de]
    rlca
    rlca
    rlca
    ld a, [de]
    rrca
    rrca
    inc l
    inc l
    add hl, hl
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $0101
    ld bc, $0101
    ld bc, $3101
    rrca
    rrca
    ld d, a
    ld d, a
    dec h
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    rrca
    rrca
    rrca
    rrca
    dec de
    ld bc, $0302
    ld bc, $0101
    ld bc, $0101
    rrca
    rrca
    ld sp, $0101
    ld a, [bc]
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [$7701], sp
    ld [hl], a
    ld bc, $200a
    ld hl, $010a
    rrca
    rrca
    ccf
    dec sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $7401
    ld [hl], h
    ld bc, $7c0a
    ld [hl], e
    ld a, [bc]
    ld bc, $0f0f
    inc l
    add hl, hl
    inc e
    ld l, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0f
    inc l
    add hl, hl
    ld bc, $340a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld bc, $0174
    jr nz, jr_006_44fc

    ld bc, $0a74
    ld a, [bc]
    ld bc, $0f0f
    inc l
    add hl, hl
    ld bc, $1d0a
    rra
    ld e, $0a
    ld bc, $010a
    ld a, h
    ld [hl], d
    ld bc, $0a0a
    ld [hl], h
    ld bc, $0f0f
    ld d, a
    dec h
    ld a, [de]
    rlca
    ld h, l
    ld b, e

jr_006_44fc:
    ld h, h
    cpl
    ld a, [de]
    cpl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    rrca
    rrca
    ld a, [bc]
    ld c, l
    ld bc, $0a74
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $080a
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld bc, $7474
    ld bc, $0f0f
    ld a, [bc]
    ld c, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld bc, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld bc, $0a4e
    ld a, [bc]
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld bc, $0a4e
    ld a, [bc]
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld [de], a
    inc d
    db $ec
    ld b, l
    ld c, b
    ld d, h
    push af
    ld d, d
    dec b
    dec c
    add [hl]
    ld b, b
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $0e
    ld e, l
    ld b, d
    or l
    rst $00
    add hl, bc
    inc hl
    ld hl, sp+$00
    ld [de], a
    rst $00
    ld a, l
    ld b, l
    nop
    ld a, [bc]
    rlca
    rlca
    ld c, $00
    inc [hl]
    dec b
    inc de
    ld [bc], a
    inc [hl]
    ld de, $0010
    ld [hl], $0d
    dec e
    nop
    scf
    ld de, $0017
    jr c, jr_006_45b1

    rlca
    nop
    add hl, sp
    add hl, de
    dec c
    nop
    ld a, [hl-]
    rlca
    dec e
    inc de
    ld b, $13
    ld hl, $1107
    jr @+$0a

    add hl, de
    ld c, $09
    add hl, bc
    rrca
    ld a, [bc]
    ld de, $0b0b
    rla
    add hl, de
    inc c

jr_006_45b1:
    dec b
    ld b, $13
    inc c
    rst $38
    rst $38
    ld bc, $1d07
    dec d
    rst $38
    rst $38
    ld [bc], a
    inc c
    dec d
    rra
    rst $38
    rst $38
    inc bc
    inc c
    dec e
    ld e, $fe
    ld [bc], a
    inc b
    inc b
    inc d
    daa
    rst $38
    ret nc

    dec b
    ld e, b
    rst $00
    rlca
    ld c, $40
    rst $00
    dec b
    inc de
    db $db
    rst $00
    ld de, $ad10
    rst $00
    dec c
    dec e
    sbc $c7
    ld de, $7217
    ret z

    dec e
    rlca
    ld b, c
    ret z

    add hl, de
    dec c
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld l, a
    ld l, a
    ld l, a
    ccf
    dec sp
    ld bc, $7474
    inc c
    dec c
    dec c
    ld c, $20
    dec c
    ld hl, $6f6f
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld l, [hl]
    rrca
    rrca
    inc l
    add hl, hl
    ld bc, $7474
    ld [hl], l
    ld [hl], c
    ld [hl], c
    db $76
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld l, [hl]
    rrca
    rrca
    inc l
    add hl, hl
    ld a, [de]
    cpl
    rlca
    scf
    ld a, l
    ld a, [hl-]
    ld a, [hl]
    ld a, [de]
    rlca
    rlca
    rlca
    ld b, d
    rlca
    cpl
    rlca
    ld b, d
    rrca
    rrca
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $0801
    ld bc, $0a01
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    rrca
    rrca
    inc l
    add hl, hl
    ld bc, $7474
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld bc, $0101
    ld bc, $0101
    ld bc, $3e01
    ccf
    ccf
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    inc bc
    ld bc, $2c28
    inc l
    inc l
    add hl, hl
    ld bc, $0a0a
    ld bc, $0d0c
    ld c, $01
    ld bc, $2120
    ld bc, $0101
    ld bc, $5724
    ld d, a
    inc l
    add hl, hl
    ld bc, $0a0a
    ld [$1110], sp
    ld [de], a
    ld bc, $7c0a
    ld [hl], e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0101
    ld bc, $292c
    ld bc, $0101
    ld bc, $0101
    ld bc, $011b
    ld bc, $0101
    ld bc, $0801
    ld bc, $0101
    inc l
    add hl, hl
    inc e
    ld l, a
    ld l, a
    inc e
    ld l, a
    ld l, a
    ld l, a
    dec de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $3f3e
    ccf
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $2120
    ld bc, $3101
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld sp, $2801
    inc l
    inc l
    inc l
    add hl, hl
    ld bc, $0a0a
    ld a, [bc]
    ld a, h
    ld [hl], d
    ld [hl], h
    ld bc, $746e
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld l, l
    ld bc, $5724
    ld d, a
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $6e01
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld l, l
    ld bc, $0a4d
    ld a, [bc]
    dec hl
    dec h
    ld bc, $0302
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$076e], sp
    cpl
    rlca
    rlca
    ld l, l
    ld bc, $0a4d
    ld a, [bc]
    add hl, hl
    inc de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld c, l
    ld a, [bc]
    ld a, [bc]
    dec h
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    rrca
    rrca
    rrca
    ld bc, $0f0f
    rrca
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    ld bc, $0f0f
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld [de], a
    inc d
    ld [hl], $48
    call $3d56
    ld d, l
    rrca
    inc hl
    add e
    ld b, a
    ldh a, [$c6]
    ld a, [bc]
    ld a, [bc]
    inc hl
    or $09
    ret z

    db $10
    jp c, $1245

    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $0f
    ld e, $44
    sbc [hl]
    rst $00
    add hl, bc
    dec l
    ld hl, sp+$59
    ld c, b
    rst $00
    inc d
    ld b, $47
    or l
    rst $00
    add hl, bc
    ld e, $f8
    nop
    dec c
    rst $00
    adc h
    ld b, a
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec de
    nop
    ld a, $0f
    dec c
    nop
    ccf
    ld de, $0013
    ld b, b
    inc de
    ld e, $00
    ld b, c
    add hl, de
    dec c
    nop
    ld b, d
    add hl, de
    add hl, de
    nop
    ld b, e
    dec bc
    inc b
    nop
    db $e4
    add hl, bc
    dec de
    ld [bc], a
    ld a, $0b
    add hl, bc
    ld bc, $09e6
    add hl, bc
    nop
    and $06
    inc de
    rla
    inc c
    dec e
    ld de, $190d
    ld a, [de]
    ld c, $11
    inc d
    rrca
    add hl, de
    dec bc
    db $10
    dec d
    dec de
    ld de, $020b
    ld b, $18
    rst $38
    ret nc

    ld bc, $0c18
    ld [hl+], a
    rst $38
    rst $38
    ld b, d
    and $05
    rlca
    jr jr_006_47fe

    rst $38
    ret nc

    inc bc
    inc c
    ld d, $13
    cp $01
    inc b
    inc c
    add hl, de
    dec c
    cp $02
    dec b
    ld a, $10
    jr nz, @+$01

    ret nc

    ld b, $06
    ld e, $21
    rst $38
    jp nc, $4707

    ld e, $20
    rst $38
    ret nc

    ld [$1f06], sp

jr_006_47fe:
    dec c
    cp $02
    add hl, bc
    inc c
    db $10
    ld [$d0ff], sp
    ld a, [bc]
    ld a, $10
    rra
    rst $38
    ret nc

    dec bc
    sub d
    rst $00
    dec bc
    dec de
    cp a
    rst $00
    rrca
    dec c
    call c, Call_000_11c7
    inc de
    db $fc
    rst $00
    inc de
    ld e, $41
    ret z

    add hl, de
    dec c
    ld b, a
    ret z

    add hl, de
    add hl, de
    add a
    rst $00
    dec bc
    inc b
    ld a, b
    rst $00
    add hl, bc
    dec de
    adc c
    rst $00
    dec bc
    add hl, bc
    ld l, a
    rst $00
    add hl, bc
    add hl, bc
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld b, e
    ld b, e
    add hl, de
    ld d, h
    ld c, [hl]
    ld a, [bc]
    jr jr_006_4888

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld b, e
    ld b, e
    add hl, de
    ld d, h
    ld d, b
    rlca
    jr jr_006_489c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc l
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld c, [hl]
    ld a, [bc]
    jr @+$45

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc l
    inc l
    add hl, hl
    add hl, de
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [hl], $0a
    ld l, l
    ld l, [hl]
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rrca
    rrca
    ld l, l
    inc l
    inc l

jr_006_4888:
    add hl, hl
    add hl, de
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld l, [hl]
    ld a, [bc]
    ld l, l
    ld l, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rrca
    rrca
    ld l, l
    ld d, a
    ld d, a

jr_006_489c:
    ld [hl], b
    add hl, de
    ld [bc], a
    add hl, bc
    inc bc
    jr nc, @+$0b

    inc bc
    ld bc, $0101
    ld [bc], a
    add hl, bc
    inc bc
    ld bc, $0930
    inc bc
    ld sp, $3131
    add hl, de
    ld bc, $0101
    ld bc, $0101
    ld bc, $010a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec de
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    rra
    rra
    rra
    add hl, de
    ld e, h
    rlca
    ld [bc], a
    add hl, bc
    inc bc
    jr nz, jr_006_48ee

    ld a, [bc]
    ld bc, $0101
    ld bc, $011b
    ld bc, $6b50
    ld l, e
    ld l, e
    dec d
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, h
    ld [hl], d
    rlca
    inc c
    dec c
    dec c
    ld c, $01
    ld a, [bc]
    ld bc, $010a
    ld bc, $0101

jr_006_48ee:
    ld bc, $0101
    ld bc, $0101
    ld bc, $1008
    ld de, $1211
    ld a, [de]
    cpl
    ld e, h
    ld h, d
    ld d, c
    ld d, c
    ld c, [hl]
    ld bc, $740a
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld bc, $0801
    ld sp, $3131
    ld e, a
    ld bc, $744e
    ld [hl], h
    ld c, [hl]
    ld bc, $0101
    jr nz, jr_006_493b

    ld bc, $0101
    ld bc, $2120
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld e, a
    ld bc, $744e
    ld [hl], h
    ld c, [hl]
    ld bc, $560a
    ld a, h
    ld a, [hl]
    ld bc, $0930
    inc bc
    ld a, h
    ld [hl], e
    jr nc, @+$0b

    inc bc
    ld e, a
    ld bc, $744e

jr_006_493b:
    ld [hl], h
    ld c, [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $5f01
    ld bc, $744e
    ld [hl], h
    ld h, d
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld [hl], $56
    ld [hl-], a
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld bc, $744e
    ld [hl], h
    ld c, [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $744e
    ld [hl], h
    ld d, b
    ld d, d
    ld d, d
    ld l, l
    ld e, l
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    ld e, l
    ld c, l
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, [hl]
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld l, l
    daa
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    daa
    ld c, l
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    nop
    ld [de], a
    inc d
    ld c, e
    ld c, d
    dec hl
    ld e, c
    ld b, c
    ld e, b
    add hl, bc
    ld de, $410f
    ldh a, [$c6]
    ld a, [bc]
    ld a, [bc]
    inc hl
    or $09
    ret z

    ld d, $5f
    ld b, l
    or l
    rst $00
    add hl, bc
    ld e, $f8
    nop
    dec c
    rst $00
    ret nz

    ld c, c
    ld b, e
    add hl, bc
    inc bc
    dec bc
    nop
    ld e, c
    dec c
    add hl, bc
    nop
    ld e, d
    dec c
    rla
    nop
    ld e, e
    inc de
    inc c
    nop
    ld e, h
    inc de
    rla
    nop
    ld e, l
    rra
    ld [de], a
    nop
    ld e, [hl]
    rra
    inc de
    nop
    ld e, [hl]
    dec c
    rrca
    nop
    call nz, Call_000_0703
    nop
    and e
    rlca
    inc bc
    dec de
    ld [$250d], sp
    add hl, bc
    dec c
    jr jr_006_49fa

    inc bc
    inc c
    dec bc
    dec c
    rlca
    inc c
    inc de
    rlca
    dec c
    rrca

jr_006_49fa:
    dec e
    ld c, $07
    ld b, $0b
    rla
    cp $02
    ld bc, $0a0b
    ld [de], a
    rst $38
    rst $38
    ld [bc], a
    inc de
    ld [hl+], a
    rla
    rst $38
    pop de
    inc bc
    dec bc

jr_006_4a10:
    dec bc
    ld [hl+], a
    rst $38
    rst $38
    inc b
    dec b
    dec c
    ld hl, $01fe
    dec b
    inc de
    rra
    dec e
    cp $02
    ld b, $3e
    inc de
    rla
    rst $38
    rst $38
    rlca
    ld [hl+], a
    rst $00
    inc bc
    dec bc
    and e
    rst $00
    dec c
    add hl, bc
    xor d
    rst $00
    dec c
    rla
    di
    rst $00
    inc de
    inc c
    ld hl, sp-$39
    inc de
    rla
    sub d
    ret z

    rra
    ld [de], a
    sub d
    ret z

    rra
    inc de
    and [hl]
    rst $00
    dec c
    rrca
    jr nz, jr_006_4a10

    inc bc
    rlca
    ld b, e
    ld b, e
    ld b, e
    jr nz, @+$23

    jr nz, jr_006_4a73

    jr nz, jr_006_4a75

    ld sp, $2120
    ld sp, $3131
    ld sp, $3131
    ld sp, $4331
    ld l, e
    ld l, e
    ld a, h
    ld a, [hl]
    ld a, h
    ld [hl], d
    scf
    ld a, [hl]
    ld sp, $7e37
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $3131

jr_006_4a73:
    add hl, de
    ld b, e

jr_006_4a75:
    ld h, h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $1b31
    ld sp, $1931
    ld b, e
    dec l
    rra
    ld e, $31
    ld sp, $3131
    ld sp, $3131
    ld sp, $4931
    ld c, b
    ld sp, $311b
    ld sp, $4319
    ld b, e
    ld b, e
    dec l
    rra
    rra
    ld e, $31
    ld sp, $3131
    ld sp, $4431
    ld b, l
    ld sp, $311b
    ld sp, $4319
    ld b, e
    ld b, e
    jr nz, jr_006_4ad6

    ld b, e
    jr nz, jr_006_4ad9

    ld sp, $2031
    ld hl, $3131
    ld sp, $1b31
    ld sp, $1931
    ld b, e
    ld h, h
    ld [$7e7c], sp
    ld sp, $7e7c
    ld sp, $7c31
    ld [hl], e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    inc de
    ld d, [hl]

jr_006_4ad6:
    ld [hl], a
    add hl, de
    ld b, e

jr_006_4ad9:
    ld h, h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $0831
    ld sp, $3131
    ld sp, $1931
    ld b, e
    ld h, h
    ld sp, $0d0c
    ld c, $31
    ld sp, $3131
    jr nz, jr_006_4b19

    dec e
    ld e, $54
    dec e
    rra
    rra
    rra
    add hl, de
    ld b, e
    ld h, h
    ld d, [hl]
    db $10
    ld de, $3512
    dec e
    ld e, $31
    ld a, h
    ld a, [hl]
    ld h, l
    ld h, h
    ld d, h
    ld h, l
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld h, h
    ld sp, $3131

jr_006_4b19:
    ld sp, $6531
    ld h, h
    ld sp, $3131
    ld h, l
    dec l
    ld d, h
    ld l, $43
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld h, h
    ld sp, $3131
    ld sp, $6531
    dec l
    rra
    rra
    rra
    ld l, $43
    ld d, h
    ld b, e
    ld h, h
    rrca
    rrca
    add hl, de
    ld b, e
    dec l
    rra
    rra
    rra
    rra
    rra
    ld l, $43
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld h, h
    rrca
    rrca
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    dec l
    ld h, a
    rra
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    ld b, e
    jr jr_006_4bba

    add hl, de
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc de
    ld d, h
    inc de
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    jr jr_006_4bce

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    dec b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_006_4b9a:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    nop
    ld [de], a
    inc d
    sub d
    ld c, h
    ld l, $5b

jr_006_4bba:
    dec hl
    ld e, e
    rlca
    ld e, $01
    ld c, a
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $1d
    or d
    ld c, h
    sbc [hl]
    rst $00
    add hl, bc

jr_006_4bce:
    add hl, de
    ld hl, sp+$31
    jr nz, jr_006_4b9a

    ld a, [de]
    call z, $b549
    rst $00
    add hl, bc
    ld e, $f8
    nop
    dec c
    rst $00
    ldh [rWX], a
    rrca
    add hl, bc
    dec c
    dec b
    nop
    sbc b
    dec de
    dec bc
    nop
    sbc c
    dec de
    inc de
    nop
    sbc d
    dec de
    dec de
    nop
    sbc e
    inc bc
    ld [de], a
    nop
    sbc h
    dec de
    dec b
    nop
    sbc l
    dec c
    ld d, $00
    sbc [hl]
    dec de
    rra
    ld bc, $18a4
    rra
    nop
    and h
    ld c, $17
    rrca
    dec bc
    rrca
    add hl, de
    inc c
    dec b
    ld de, $0d0d
    ld b, $0e
    dec de
    inc d
    rrca
    dec e
    dec de
    db $10
    rrca
    dec d
    ld de, $051d
    ld [de], a
    rlca
    ld hl, $0713
    dec de
    inc d
    rlca
    dec c
    dec d
    dec c
    rra
    ld d, $0f
    dec c
    rla
    rlca
    rlca
    jr jr_006_4c3c

    inc b
    db $10
    ld c, $fe
    ld [bc], a
    ld bc, $150b

jr_006_4c3a:
    jr nz, jr_006_4c3a

jr_006_4c3c:
    ld [bc], a
    ld [bc], a
    cpl
    ld [de], a
    ld [hl+], a
    rst $38
    ret nc

    inc bc
    inc b
    inc c
    inc e
    rst $38
    pop de
    inc b
    ld b, h
    add hl, bc
    inc hl
    rst $38
    ret nc

    dec b
    ld b, a
    ld a, [bc]
    dec e
    rst $38
    rst $38
    ld b, $05
    ld a, [bc]
    db $10
    cp $02
    rlca
    dec b
    db $10
    ld [hl+], a
    cp $02
    ld [$153c], sp
    inc c
    cp $00
    add hl, bc
    ld c, b
    add hl, bc
    ld a, [bc]
    rst $38
    rst $38
    ld a, [bc]
    and c
    rst $00
    dec c
    dec b
    ld e, d
    ret z

    dec de
    dec bc
    ld e, [hl]
    ret z

    dec de
    inc de
    ld h, d
    ret z

    dec de
    dec de
    ld h, $c7
    inc bc
    ld [de], a
    ld d, a
    ret z

    dec de
    dec b
    xor d
    rst $00
    dec c
    ld d, $64
    ret z

    dec de
    rra
    ld c, d
    ret z

    jr jr_006_4cb1

    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    jr nz, jr_006_4ca9

    ld hl, $0f0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, d
    ld l, a

jr_006_4ca9:
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld a, d
    scf
    ld a, [hl-]
    ld a, [hl]

jr_006_4cb1:
    ld a, d
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld a, d
    rrca
    rrca
    ld l, [hl]
    dec e
    ld e, $0f
    ld [hl], h
    ld [hl], h
    ld l, l
    ld d, [hl]
    ld d, l
    ld [hl], a
    ld l, [hl]
    ld bc, $0f01
    ld bc, $0101
    ld l, l
    rrca
    rrca
    ld l, [hl]
    ld [hl], a
    ld d, [hl]
    rrca
    ld [hl], a
    ld d, [hl]
    ld l, l
    ld a, d
    ld l, a
    ld l, a
    ld h, b
    ld [hl], a
    ld d, [hl]
    rrca
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld l, l
    rrca
    rrca
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld l, [hl]
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    rrca
    rrca
    ld a, d
    jr nz, jr_006_4d1b

    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld h, b
    ld a, d
    jr nz, jr_006_4d0f

    ld hl, $6c6e
    ld l, h
    ld l, h
    ld l, l
    ld a, d
    rrca
    rrca
    ld a, d
    ld a, h
    ld [hl], e
    ld a, d

jr_006_4d0f:
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    scf
    ld a, [hl-]
    ld a, [hl]
    ld h, b
    ld [hl], a
    ld d, [hl]
    ld [hl], a

jr_006_4d1b:
    ld l, l
    ld a, d
    rrca
    rrca
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld a, c
    ld a, d
    ld a, d
    ld l, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld l, a
    rrca
    ld bc, $6701
    rra
    rra
    rra
    ld l, l
    ld a, d
    ld a, d
    ld l, [hl]
    ld bc, $0155
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld sp, $4e31
    ld bc, $6b14
    ld l, e
    ld l, e
    ld d, b
    ld d, d
    ld d, d
    ld h, b
    ld bc, $0155
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $0f31
    ld c, [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $5f55
    ld [hl], h
    dec e
    rra
    ld e, $1b
    ld l, [hl]
    rrca
    ld c, [hl]
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld e, a
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec de
    ld l, [hl]
    rrca
    ld c, [hl]
    inc h
    jr nz, jr_006_4d93

    ld hl, $5757
    ld d, a
    ld d, a
    jr nz, @+$23

    dec h
    ld e, a
    jr c, jr_006_4dca

    jr c, @+$3b

jr_006_4d93:
    dec de
    ld l, [hl]
    rrca
    ld c, [hl]
    ld e, b
    ld a, h
    ld de, $027e
    inc bc
    jr nc, jr_006_4da2

    ld a, h
    ld [hl], d
    ld e, c

jr_006_4da2:
    ld sp, $3d3c
    inc a
    dec a
    ld sp, $0f6e
    ld c, [hl]
    ld e, b
    ld [$3131], sp
    ld sp, $3131
    ld sp, $3131
    ld e, c
    ld e, a
    ld d, [hl]
    ld [hl], a
    ld sp, $1b77
    ld l, [hl]
    rrca
    ld c, [hl]
    ld e, d
    rlca
    rlca
    ld e, h
    ld l, a
    ld l, a
    ld l, a
    ld e, h
    rlca
    rlca
    ld e, e

jr_006_4dca:
    ld bc, $0101
    ld bc, $3131
    ld l, [hl]
    rrca
    ld d, b
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, $3f
    dec sp
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld d, b
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld l, [hl]
    rrca
    ld sp, $3131
    ld sp, $2831
    inc l
    add hl, hl
    ld sp, $3131
    ld sp, $3f3e
    dec sp
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [$d74a]
    bit 4, a
    jr z, jr_006_4e06

    ld hl, $d746
    set 6, [hl]

jr_006_4e06:
    call Call_000_3c29
    ld hl, $4e12
    ld a, [$d5f0]
    jp Jump_000_3d93


    ld h, $4e
    ld h, e
    ld c, [hl]
    sbc e
    ld c, [hl]
    bit 1, [hl]
    ld a, [bc]
    ld c, a
    jr z, @+$51

    ld d, b
    ld c, a
    ld l, l
    ld c, a
    ld a, b
    ld c, a
    xor c
    ld c, a
    ld a, [$d746]
    bit 0, a
    ret nz

    ld a, [$d360]
    cp $00
    ret nz

    ld hl, $d746
    res 5, [hl]
    ld a, [$d361]
    cp $0a
    jr z, jr_006_4e40

    set 5, [hl]

jr_006_4e40:
    xor a
    ldh [$b4], a
    ld a, $ff
    ld [$cd6b], a
    ld a, $08
    ld [$d527], a
    call Call_000_2233
    ld a, $02
    ld c, a
    ld a, $db
    call Call_000_2211
    ld hl, $d74a
    set 7, [hl]
    ld a, $01
    ld [$d5f0], a
    ret


    ld a, $fc
    ld [$cd6b], a
    xor a
    ld [$cf0d], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld a, $ff
    ld [$cd6b], a
    ld hl, $c214
    ld a, $08
    ld [hl+], a
    ld a, $0e
    ld [hl], a
    ld a, $00
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, $02
    ld [$c111], a
    ld a, $04
    ld [$c119], a
    ld a, $02
    ld [$d5f0], a
    ret


    call Call_000_3ddb
    ld a, $00
    ld [$d360], a
    ld a, $01
    ldh [$9b], a
    ld a, $01
    swap a
    ldh [$95], a
    ld a, $22
    call Call_000_3eb4
    ld hl, $ff95
    dec [hl]
    ld a, $20
    call Call_000_3eb4
    ld de, $cc97
    ld a, $01
    ldh [$8c], a
    call Call_000_363d
    ld a, $03
    ld [$d5f0], a
    ret


    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $fc
    ld [$cd6b], a
    ld a, $01
    ld [$cf0d], a
    ld a, $02
    ld [$c111], a
    ld a, $04
    ld [$c119], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld a, $ff
    ld [$cd6b], a
    ld a, $02
    ld [$c111], a
    ld a, [$d746]
    bit 5, a
    ld a, $0c
    jr z, jr_006_4f01

    ld a, $08

jr_006_4f01:
    ld [$c119], a
    ld a, $04
    ld [$d5f0], a
    ret


    ld a, $fc
    ld [$cd6b], a
    xor a
    ld [$cc36], a
    ld a, $04
    ld [$d059], a
    ld a, $54
    ld [$d058], a
    ld a, $05
    ld [$d126], a
    ld a, $05
    ld [$d5f0], a
    ret


    ld a, $02
    ld [$cf0d], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld a, $02
    ld [$c111], a
    ld a, $04
    ld [$c119], a
    ld a, $08
    ldh [$8c], a
    call Call_000_2817
    ld a, $ff
    ld [$cd6b], a
    ld a, $06
    ld [$d5f0], a
    ret


    xor a
    ld [$c109], a
    ld a, $01
    ld [$cf13], a
    xor a
    ld [$cf10], a
    ld a, $01
    ld [$cc57], a
    ldh a, [$b8]
    ld [$cc58], a
    ld a, $07
    ld [$d5f0], a
    ret


    ld a, [$cc57]
    and a
    ret nz

    ld a, $08
    ld [$d5f0], a
    ret


    ld a, [$d749]
    bit 2, a
    jr nz, jr_006_4f9e

    and $03
    cp $03
    jr nz, jr_006_4f9e

    ld hl, $d749
    set 2, [hl]
    ld a, $28
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $29
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3eb4


jr_006_4f9e:
    ld a, [$d74a]
    bit 4, a
    ret z

    ld hl, $d74a
    set 6, [hl]
    ret


    cp d
    ld c, a
    inc c
    ld d, b
    ld de, $1650
    ld d, b
    dec de
    ld d, b
    jr nz, jr_006_5006

    dec h
    ld d, b
    rlca
    ld d, b
    ld [$0dfa], sp
    rst $08
    and a
    jr nz, jr_006_4fcb

    ld a, $01
    ld [$cc3c], a
    ld hl, $4fdc
    jr jr_006_4fd6

jr_006_4fcb:
    dec a
    jr nz, jr_006_4fd3

    ld hl, $4ffd
    jr jr_006_4fd6

jr_006_4fd3:
    ld hl, $5002

jr_006_4fd6:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    or b
    ld b, d
    dec l
    ld [$0a0e], sp
    call Call_000_372f
    ld a, $04
    ld [$d527], a
    ld a, $00
    ld [$cd4f], a
    ld a, $00
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    jp Jump_000_23d2


    rla
    rst $08
    ld b, d
    dec l
    ld d, b
    rla
    inc bc
    ld b, e
    dec l

jr_006_5006:
    ld d, b
    rla
    ld de, $2d43
    ld d, b
    rla
    adc b
    ld b, e
    dec l
    ld d, b
    rla
    ret


    ld b, e
    dec l
    ld d, b
    rla
    jr nz, @+$46

    dec l
    ld d, b
    rla
    scf
    ld b, h
    dec l
    ld d, b
    rla
    ld h, d
    ld b, h
    dec l
    ld d, b
    rla
    ld l, l
    ld b, h
    dec l
    ld d, b
    call Call_000_3c29
    ld hl, $5037
    ld a, [$d5f3]
    call Call_000_3d93
    ret


    ld c, l
    ld d, b
    ld d, h
    ld d, b
    ld d, a
    ld d, b
    jp z, $0450

    ld d, c
    ccf
    ld d, c
    sbc l
    ld d, b
    sub c
    ld d, c
    and a
    ld d, c
    rst $08
    ld d, c
    ld sp, hl
    ld d, c
    call Call_006_505b
    call Call_006_50ab
    ret


    call Call_006_5162
    call Call_006_505b
    ret


Call_006_505b:
    ld a, [$d74b]
    bit 0, a
    ret nz

    ld a, [$d355]
    cp $7f
    jr nz, jr_006_506e

    ld hl, $d74b
    set 0, [hl]
    ret


jr_006_506e:
    ld a, [$d360]
    cp $08
    ret nz

    ld a, [$d361]
    cp $20
    ret nz

    ld a, $0f
    ldh [$8c], a
    call Call_000_2817
    call Call_000_3415
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    xor a
    ld [$c109], a
    ld [$cd6b], a
    ldh [$b4], a
    ld a, $06
    ld [$d5f3], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    ld a, $02
    ld [$d5f3], a
    ret


Call_006_50ab:
    ld a, [$d360]
    cp $09
    ret nz

    ld a, [$d361]
    cp $13
    ret nz

    ld a, $05
    ldh [$8c], a
    call Call_000_2817
    xor a
    ldh [$b4], a
    call Call_006_514d
    ld a, $05
    ld [$d5f3], a
    ret


    call Call_006_50ef
    call Call_006_50db
    ld hl, $d74b
    res 7, [hl]
    ld a, $04
    ld [$d5f3], a
    ret


Call_006_50db:
    xor a
    ld [$cc36], a
    ld a, $01
    ld [$d059], a
    ld a, $05
    ld [$d126], a
    ld a, $a5
    ld [$d058], a
    ret


Call_006_50ef:
    ld a, [$c134]
    ldh [$eb], a
    ld a, [$c136]
    ldh [$ec], a
    ld a, [$c234]
    ldh [$ed], a
    ld a, [$c235]
    ldh [$ee], a
    ret


    call Call_006_512a
    call Call_000_231c
    call Call_000_3ddb
    ld hl, $d74b
    set 6, [hl]
    xor a
    ld [$cd6b], a
    ld a, $10
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$d059], a
    ld [$cd6b], a
    ld a, $02
    ld [$d5f3], a
    ret


Call_006_512a:
    ldh a, [$eb]
    ld [$c134], a
    ldh a, [$ec]
    ld [$c136], a
    ldh a, [$ed]
    ld [$c234], a
    ldh a, [$ee]
    ld [$c235], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    ld a, $00
    ld [$d5f3], a
    ret


Call_006_514d:
    call Call_000_3415
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    xor a
    ld [$c109], a
    ld [$cd6b], a
    ret


Call_006_5162:
    ld a, [$d74b]
    bit 5, a
    ret nz

    ld a, [$d360]
    cp $09
    ret nz

    ld a, [$d361]
    cp $13
    ret nz

    ld a, $08
    ldh [$8c], a
    ld a, $0c
    ldh [$8d], a
    call Call_000_3488
    ld a, $08
    ld [$c109], a
    ld a, $08
    ldh [$8c], a
    call Call_000_2817
    ld a, $fc
    ld [$cd6b], a
    ret


    call Call_006_50ef
    call Call_006_50db
    ld hl, $d74b
    set 7, [hl]
    ld a, $fc
    ld [$cd6b], a
    ld a, $08
    ld [$d5f3], a
    ret


    call Call_006_512a
    call Call_000_231c
    call Call_000_3ddb
    ld hl, $d74b
    set 5, [hl]
    ld a, $fc
    ld [$cd6b], a
    ld a, $08
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$d059], a
    dec a
    ld [$cd6b], a
    ld a, $09
    ld [$d5f3], a
    ret


    ld de, $51f2
    ld a, [$d361]
    cp $13
    jr z, jr_006_51e4

    ld hl, $5a01
    ld b, $3c
    call Call_000_3e84
    ld de, $51f1

jr_006_51e4:
    ld a, $08
    ldh [$8c], a
    call Call_000_363d
    ld a, $0a
    ld [$d5f3], a
    ret


    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $03
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    xor a
    ld [$cd6b], a
    ld a, $02
    ld [$d5f3], a
    ret


    inc sp
    ld d, d
    ccf
    ld d, d
    ld c, e
    ld d, d
    ld d, a
    ld d, d
    ld h, e
    ld d, d
    ld l, a
    ld d, d
    ld a, e
    ld d, d
    adc h
    ld d, d
    cp c
    ld d, d
    push bc
    ld d, d
    pop de
    ld d, d
    push hl
    inc hl
    ld [$dd23], a
    ld d, d
    jp hl


    ld d, d
    add a
    ld d, d
    ld [$3c06], sp
    ld hl, $58bb
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $58c7
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $58e9
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5911
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $592c
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $594a
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $598e
    call Call_000_3e84
    jp Jump_000_23d2


    rla
    ld a, b
    ld b, h
    dec l
    ld d, b
    ld [$4bfa], sp
    rst $10
    bit 5, a
    jr nz, jr_006_52a6

    ld hl, $52af
    call Call_000_3c36
    ld c, $02
    call Call_000_372f
    ld a, $07
    ld [$d5f3], a
    jr jr_006_52ac

jr_006_52a6:
    ld hl, $52b4
    call Call_000_3c36

jr_006_52ac:
    jp Jump_000_23d2


    rla
    and h
    ld b, h
    dec l
    ld d, b
    rla
    ld d, e
    ld b, l
    dec l
    ld d, b
    ld [$3c06], sp
    ld hl, $59c5
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $59d1
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $59dd
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $59e9
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $59f5
    call Call_000_3e84
    jp Jump_000_23d2


    call Call_000_3c29
    ld hl, $d492
    res 7, [hl]
    ld hl, $5307
    ld a, [$d5f6]
    call Call_000_3d93
    ret


    dec d
    ld d, e
    ld b, h
    ld d, e
    sub a
    ld d, e
    xor l
    ld d, e
    ret


    ld d, e
    ld d, $54
    inc l
    ld d, h
    xor a
    ld [$d618], a
    ld hl, $d753
    res 0, [hl]
    call Call_006_5322
    ret


Call_006_5322:
    ld a, [$d754]
    bit 7, a
    ret nz

    ld hl, $533b
    call Call_000_34bc
    ret nc

    ld a, $fc
    ld [$cd6b], a
    ld a, $05
    ldh [$8c], a
    jp Jump_000_2817


    ld de, $1123
    inc h
    ld [de], a
    dec h
    inc de
    dec h
    rst $38
    ld a, [$cc57]
    and a
    ret nz

    ld a, $03
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_3488
    ld a, $04
    ldh [$8d], a
    call Call_000_34a1
    call Call_000_216b
    ld hl, $cd60
    set 4, [hl]
    ld a, $0d
    ldh [$8c], a
    call Call_000_2817
    ld a, $3c
    ldh [$eb], a
    ld a, $30
    ldh [$ec], a
    ld a, $0c
    ldh [$ed], a
    ld a, $11
    ldh [$ee], a
    ld a, $03
    ld [$cf13], a
    call Call_000_3295
    ld a, $03
    ldh [$8c], a
    ld de, $5392
    call Call_000_363d
    ld a, $02
    ld [$d5f6], a
    ret


    nop
    nop
    nop
    nop
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $04
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $03
    ld [$d5f6], a
    ret


    ld a, $03
    ld [$cf13], a
    call Call_000_329a
    ld a, $04
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d5f6], a
    ret


    ld a, [$cc57]
    and a
    ret nz

    ld a, $05
    ldh [$8c], a
    ld a, $08
    ldh [$8d], a
    call Call_000_34a1
    call Call_000_216b
    ld hl, $cd60
    set 4, [hl]
    ld a, $0e
    ldh [$8c], a
    call Call_000_2817
    ld a, $3c
    ldh [$eb], a
    ld a, $40
    ldh [$ec], a
    ld a, $16
    ldh [$ed], a
    ld a, $10
    ldh [$ee], a
    ld a, $05
    ld [$cf13], a
    call Call_000_3295
    ld a, $05
    ldh [$8c], a
    ld de, $5410
    call Call_000_363d
    ld a, $05
    ld [$d5f6], a
    ret


    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $05
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $06
    ld [$d5f6], a
    ret


    ld a, $05
    ld [$cf13], a
    call Call_000_329a
    ld a, $05
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d5f6], a
    ret


    ld h, h
    ld d, h
    ld l, c
    ld d, h
    ld l, [hl]
    ld d, h
    jp nz, $f354

    ld d, h
    inc h
    ld d, l
    add hl, hl
    ld d, l
    push hl
    inc hl
    ld [$2e23], a
    ld d, l
    inc sp
    ld d, l
    jr c, jr_006_54b5

    cp l
    ld d, h
    rra
    ld d, l
    rla
    or [hl]
    ld c, d
    dec l
    ld d, b
    rla
    rla
    ld c, e
    dec l
    ld d, b
    ld [$ae21], sp
    ld d, h
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_006_5486

    ld hl, $54b3
    call Call_000_3c36
    jr jr_006_54ab

jr_006_5486:
    ld hl, $54b8
    call Call_000_3c36
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$cf10], a
    ld a, $02
    ld [$cc57], a
    ldh a, [$b8]
    ld [$cc58], a
    ld a, $03
    ld [$cf13], a
    call Call_000_3290
    ld a, $01
    ld [$d5f6], a

jr_006_54ab:
    jp Jump_000_23d2


    rla
    adc l
    ld c, e
    dec l
    ld d, b
    rla
    xor h

jr_006_54b5:
    ld c, e
    dec l
    ld d, b
    rla
    reti


    ld c, e
    dec l
    ld d, b
    rla
    db $fd
    ld c, e
    dec l
    ld d, b
    ld [$e421], sp
    ld d, h
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    cp $00
    jr nz, jr_006_54db

    ld hl, $54e9
    call Call_000_3c36
    jr jr_006_54e1

jr_006_54db:
    ld hl, $54ee
    call Call_000_3c36

jr_006_54e1:
    jp Jump_000_23d2


    rla
    ld c, e
    ld c, h
    dec l
    ld d, b
    rla
    ld l, a
    ld c, h
    dec l
    ld d, b
    rla
    adc h
    ld c, h
    dec l
    ld d, b
    ld [$1a21], sp
    ld d, l
    call Call_000_3c36
    xor a
    ldh [$b4], a
    ld [$cf10], a
    ld a, $03
    ld [$cc57], a
    ldh a, [$b8]
    ld [$cc58], a
    ld a, $05
    ld [$cf13], a
    call Call_000_3290
    ld a, $04
    ld [$d5f6], a
    jp Jump_000_23d2


    rla
    cp [hl]
    ld c, h
    dec l
    ld d, b
    rla
    dec b
    ld c, l
    dec l
    ld d, b
    rla
    dec [hl]
    ld c, l
    dec l
    ld d, b
    rla
    add c
    ld c, l
    dec l
    ld d, b
    rla
    add sp, $4d
    dec l
    ld d, b
    rla
    ld [bc], a
    ld c, [hl]
    dec l
    ld d, b
    rla
    ld b, e
    ld c, [hl]
    dec l
    ld d, b
    call Call_000_3c29
    ld hl, $555a
    ld a, [$d60e]
    jp Jump_000_3d93


Jump_006_5549:
    xor a
    ld [$cd6b], a
    ld [$d60e], a
    ld a, $06
    ld [$cc4d], a
    ld a, $11
    jp Jump_000_3eb4


    add l
    ld d, l
    rra
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    or b
    ld d, [hl]
    ld h, h
    ld d, l
    ld a, [$d056]
    cp $ff
    jp z, Jump_006_5549

    ld a, $f0
    ld [$cd6b], a
    ld hl, $d75a
    set 7, [hl]
    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cd6b], a
    ld [$d60e], a
    ret


    ld a, [$d75a]
    bit 7, a
    jr nz, jr_006_55b4

    ld hl, $5607
    call Call_000_34bc
    jr nc, jr_006_55b4

    ld a, [$cd3d]
    cp $01
    ld a, $08
    ld b, $00
    jr nz, jr_006_55a3

    ld a, $04
    ld b, $04

jr_006_55a3:
    ld [$d527], a
    ld a, b
    ld [$c129], a
    call Call_000_3ddb
    ld a, $02
    ldh [$8c], a
    jp Jump_000_2817


jr_006_55b4:
    ld a, [$d759]
    bit 0, a
    ret nz

    ld hl, $560c
    call Call_000_34bc
    ret nc

    ld a, [$d6ff]
    and a
    jr z, jr_006_55ca

    call Call_000_2233

jr_006_55ca:
    ld c, $02
    ld a, $de
    call Call_000_2211
    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld a, [$d361]
    cp $14
    jr z, jr_006_55ed

    ld a, $01
    ldh [$8c], a
    ld a, $05
    ldh [$8b], a
    call Call_000_34fd
    ld [hl], $19

jr_006_55ed:
    ld a, $06
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld de, $5611
    ld a, $01
    ldh [$8c], a
    call Call_000_363d
    ld a, $01
    ld [$d60e], a
    ret


    rlca
    ld e, $09
    ld e, $ff
    ld b, $14
    ld b, $15
    rst $38
    nop
    nop
    nop
    rst $38

Call_006_5615:
    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    jp Jump_000_3488


    ld a, [$d72f]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $570d
    ld de, $5712
    call Call_000_32f0
    ld a, $e1
    ld [$d058], a
    ld a, $03
    ld [$d05c], a
    xor a
    ldh [$b4], a
    call Call_006_5615
    ld a, $02
    ld [$d60e], a
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_006_5549

    call Call_006_5615
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d759
    set 0, [hl]
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    call Call_000_2233
    ld b, $02
    ld hl, $59bd
    call Call_000_3e84
    ld a, $01
    ldh [$8c], a
    call Call_000_353e
    ld a, [$d361]
    cp $14
    jr nz, jr_006_5690

    ld de, $56a8
    jr jr_006_5693

jr_006_5690:
    ld de, $56a0

jr_006_5693:
    ld a, $01
    ldh [$8c], a
    call Call_000_363d
    ld a, $03
    ld [$d60e], a
    ret


    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $06
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    xor a
    ld [$cd6b], a
    call Call_000_216b
    ld a, $00
    ld [$d60e], a
    ret


    rst $28
    ld d, [hl]
    inc e
    ld d, a
    sbc b
    ld d, a
    sbc l
    ld d, a
    and d
    ld d, a
    and a
    ld d, a
    xor h
    ld d, a
    rst $18
    ld d, a
    inc hl
    ld e, b
    jr z, @+$5a

    and a
    ld d, a
    dec l
    ld e, b
    ld [hl-], a
    ld e, b
    push hl
    inc hl
    ld [$3723], a
    ld e, b
    inc a
    ld e, b
    ld [$59fa], sp
    rst $10
    bit 0, a
    jr z, jr_006_56ff

    ld hl, $5717
    call Call_000_3c36
    jr jr_006_5705

jr_006_56ff:
    ld hl, $5708
    call Call_000_3c36

jr_006_5705:
    jp Jump_000_23d2


    rla
    ld h, d
    ld c, [hl]
    dec l
    ld d, b
    rla
    push af
    ld c, [hl]
    dec l
    ld d, b
    rla
    ld a, [de]
    ld c, a
    dec l
    ld d, b
    rla
    ld a, $4f
    dec l
    ld d, b
    ld [$5afa], sp
    rst $10
    bit 7, a
    jr nz, jr_006_574d

    ld hl, $5779
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $578e
    ld de, $578e
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $04
    ld [$d60e], a
    jp Jump_000_23d2


jr_006_574d:
    ld hl, $5793
    call Call_000_3c36
    ld bc, $e401
    call Call_000_3e3f
    jr c, jr_006_5763

    ld hl, $5789
    call Call_000_3c36
    jr jr_006_5776

jr_006_5763:
    ld a, $01
    ld [$cc3c], a
    ld hl, $577e
    call Call_000_3c36
    ld b, $1d
    ld hl, $40af
    call Call_000_3e84

jr_006_5776:
    jp Jump_000_23d2


    rla
    ld e, [hl]
    ld d, b
    dec l
    ld d, b
    rla
    cp c
    ld d, b
    dec l
    dec bc
    rla
    call Call_000_2d50
    dec c
    ld d, b
    rla
    ld [$2d50], a
    ld d, b
    rla
    ld [hl+], a
    ld d, c
    dec l
    ld d, b
    rla
    ld b, a
    ld d, c
    dec l
    ld d, b
    rla
    ld h, a
    ld d, c
    dec l
    ld d, b
    rla
    and l
    ld d, c
    dec l
    ld d, b
    rla
    pop af
    ld d, c
    dec l
    ld d, b
    rla
    dec l
    ld d, d
    dec l
    ld d, b
    ld [$d3f0], sp
    cp $b4
    jr c, jr_006_57bb

    ld hl, $57d0
    call Call_000_3c36
    jr jr_006_57cd

jr_006_57bb:
    cp $64
    jr c, jr_006_57c7

    ld hl, $57d5
    call Call_000_3c36
    jr jr_006_57cd

jr_006_57c7:
    ld hl, $57da
    call Call_000_3c36

jr_006_57cd:
    jp Jump_000_23d2


    rla
    jp Jump_000_2d52


    ld d, b
    rla
    inc bc
    ld d, e
    dec l
    ld d, b
    rla
    ld l, $53
    dec l
    ld d, b
    ld [$d3f0], sp
    cp $b4
    jr c, jr_006_57ee

    ld hl, $580f
    call Call_000_3c36
    jr jr_006_580c

jr_006_57ee:
    cp $78
    jr c, jr_006_57fa

    ld hl, $5814
    call Call_000_3c36
    jr jr_006_580c

jr_006_57fa:
    cp $3c
    jr c, jr_006_5806

    ld hl, $5819
    call Call_000_3c36
    jr jr_006_580c

jr_006_5806:
    ld hl, $581e
    call Call_000_3c36

jr_006_580c:
    jp Jump_000_23d2


    rla
    xor e
    ld d, e
    dec l
    ld d, b
    rla
    rst $00
    ld d, e
    dec l
    ld d, b
    rla
    rst $20
    ld d, e
    dec l
    ld d, b
    rla
    ld bc, $2d54
    ld d, b
    rla
    ld e, $54
    dec l
    ld d, b
    rla
    ld h, a
    ld d, h
    dec l
    ld d, b
    rla
    ld [c], a
    ld d, h
    dec l
    ld d, b
    rla
    ld d, $55
    dec l
    ld d, b
    rla
    ld h, d
    ld d, l
    dec l
    ld d, b
    rla
    adc l
    ld d, l
    dec l
    ld d, b
    call Call_000_3c29
    ld hl, $d492
    res 7, [hl]
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    push hl
    call nz, Call_006_5884
    pop hl
    bit 5, [hl]
    res 5, [hl]
    call nz, Call_006_5875
    ld hl, $5895
    ld a, [$d629]
    call Call_000_3d93
    call Call_006_5869
    ret


Call_006_5869:
    ld hl, $d770
    bit 2, [hl]
    ret nz

    bit 1, [hl]
    ret z

    set 2, [hl]
    ret


Call_006_5875:
    call Call_000_3e6d
    ldh a, [$d3]
    ld b, a
    ldh a, [$d4]
    adc b
    and $0e
    ld [$d742], a
    ret


Call_006_5884:
    ld hl, $d802
    bit 2, [hl]
    ret z

    bit 3, [hl]
    set 3, [hl]
    ret nz

    ld a, $02
    ld [$d629], a
    ret


    sbc a
    ld e, b
    dec de
    ld e, c
    rst $28
    ld e, b
    ld a, [bc]
    ld e, c
    ld [c], a
    ld e, b
    ld a, [$c109]
    and a
    jr nz, jr_006_58de

    ld hl, $58df
    call Call_000_34bc
    jr nc, jr_006_58de

    xor a
    ldh [$b4], a
    ld [$cf0d], a
    ld a, $03
    ldh [$8c], a
    call Call_000_2817
    ld a, [$d802]
    bit 2, a
    jr nz, jr_006_58cb

    ld b, $3f
    ld a, $1c
    call Call_000_3eb4
    ld a, b
    and a
    ret nz

jr_006_58cb:
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3415
    ld a, $01
    ld [$d629], a
    ret


jr_006_58de:
    ret


    ld e, $12
    rst $38
    ld hl, $58df
    call Call_000_34bc
    ret c

    ld a, $00
    ld [$d629], a
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, $40
    ld [$ccd3], a
    ld [$ccd4], a
    ld a, $02
    ld [$cd38], a
    call Call_000_3415
    ld a, $03
    ld [$d629], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ldh [$b4], a
    ld a, $00
    ld [$d629], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    ld c, $0a
    call Call_000_372f
    ld a, $00
    ld [$d629], a
    ret


    ld b, a
    ld e, c
    ld c, h
    ld e, c
    ld l, a
    ld e, c
    db $db
    ld e, c
    ldh [$59], a
    or $59
    scf
    ld e, d
    ei
    ld e, c
    rlca
    ld e, d
    push hl
    inc hl
    ld [$1323], a
    ld e, d
    rra
    ld e, d
    dec hl
    ld e, d
    rla
    or b
    ld d, a
    dec l
    ld d, b
    ld [$02fa], sp
    ret c

    bit 2, a
    jr nz, jr_006_595c

    ld hl, $5965
    call Call_000_3c36
    jr jr_006_5962

jr_006_595c:
    ld hl, $596a
    call Call_000_3c36

jr_006_5962:
    jp Jump_000_23d2


    rla
    db $fd
    ld d, a
    dec l
    ld d, b
    rla
    ld a, [hl+]
    ld e, b
    dec l
    ld d, b
    ld [$02fa], sp
    ret c

    bit 2, a
    jr nz, jr_006_59b4

    ld a, [$c109]
    cp $0c
    jr z, jr_006_5986

    ld hl, $59bd
    call Call_000_34bc
    jr nc, jr_006_598e

jr_006_5986:
    ld hl, $59c2
    call Call_000_3c36
    jr jr_006_59ba

jr_006_598e:
    ld hl, $59c7
    call Call_000_3c36
    ld b, $3f
    ld a, $1c
    call Call_000_3eb4
    ld a, b
    and a
    jr nz, jr_006_59a7

    ld hl, $59d1
    call Call_000_3c36
    jr jr_006_59ba

jr_006_59a7:
    ld hl, $59cc
    call Call_000_3c36
    ld a, $04
    ld [$d629], a
    jr jr_006_59ba

jr_006_59b4:
    ld hl, $59d6
    call Call_000_3c36

jr_006_59ba:
    jp Jump_000_23d2


    dec e
    inc de
    rra
    inc de
    rst $38
    rla
    ld h, l
    ld e, b
    dec l
    ld d, b
    rla
    ld a, h
    ld e, b
    dec l
    ld d, b
    rla
    or h
    ld e, b
    dec l
    ld d, b
    rla
    db $eb
    ld e, b
    dec l
    ld d, b
    rla
    add hl, sp
    ld e, c
    dec l
    ld d, b
    rla
    ld c, l
    ld e, c
    dec l
    ld d, b
    rla
    sbc d
    ld e, c
    dec l
    ld [$6a3e], sp
    call Call_000_118b
    call Call_000_373e
    ld hl, $59f1
    ret


    rla
    or e
    ld e, c
    dec l
    ld d, b
    rla
    reti


    ld e, c
    dec l
    ld d, b
    ld [$3c06], sp
    ld hl, $5a8a
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5a96
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5aa2
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5aae
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5aba
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5a0f
    call Call_000_3e84
    jp Jump_000_23d2


    call Call_000_3c29
    ld hl, $5a50
    ld a, [$d640]
    call Call_000_3d93
    ret


    ld d, d
    ld e, d
    ld hl, $d77d
    res 0, [hl]
    res 7, [hl]
    ld hl, $d815
    res 7, [hl]
    ret


    add e
    ld e, d
    adc b
    ld e, d
    adc l
    ld e, d
    sub d
    ld e, d
    sub a
    ld e, d
    ldh [$5a], a
    push hl
    ld e, d
    ld a, [c]
    ld e, d
    rst $30
    ld e, d
    db $fc
    ld e, d
    ld [$ea5b], sp
    inc hl
    dec c
    ld e, e
    ld [de], a
    ld e, e
    rla
    ld e, e
    inc e
    ld e, e
    ld hl, $265b
    ld e, e
    rla
    xor b
    ld e, h
    dec l
    ld d, b
    rla
    ei
    ld e, h
    dec l
    ld d, b
    rla
    add hl, hl
    ld e, l
    dec l
    ld d, b
    rla
    ld d, [hl]
    ld e, l
    dec l
    ld d, b
    ld [$76fa], sp
    rst $10
    bit 0, a
    jr nz, jr_006_5ac2

    ld hl, $5acb
    call Call_000_3c36
    ld bc, $f101
    call Call_000_3e3f
    jr c, jr_006_5ab5

    ld hl, $5adb
    call Call_000_3c36
    jr jr_006_5ac8

jr_006_5ab5:
    ld hl, $5ad0
    call Call_000_3c36
    ld hl, $d776
    set 0, [hl]
    jr jr_006_5ac8

jr_006_5ac2:
    ld hl, $5ad6
    call Call_000_3c36

jr_006_5ac8:
    jp Jump_000_23d2


    rla
    xor l
    ld e, l
    dec l
    ld d, b
    rla
    ld a, [bc]
    ld e, [hl]
    dec l
    dec bc
    ld d, b
    rla
    ld e, $5e
    dec l
    ld d, b
    rla
    ld l, b
    ld e, [hl]
    dec l
    ld d, b
    rla
    adc c
    ld e, [hl]
    dec l
    ld d, b
    rla
    ldh [$5e], a
    dec l
    ld [$6f3e], sp
    call Call_000_118b
    jp Jump_000_23d2


    rla
    ld sp, hl
    ld e, [hl]
    dec l
    ld d, b
    rla
    inc de
    ld e, a
    dec l
    ld d, b
    ld [$3c06], sp
    ld hl, $5ac6
    call Call_000_3e84
    jp Jump_000_23d2


    rla
    ld [hl-], a
    ld e, a
    dec l
    ld d, b
    rla
    ld e, e
    ld e, a
    dec l
    ld d, b
    rla
    sbc h
    ld e, a
    dec l
    ld d, b
    rla
    xor l
    ld e, a
    dec l
    ld d, b
    rla
    reti


    ld e, a
    dec l
    ld d, b
    rla
    ld e, b
    ld h, b
    dec l
    ld d, b
    rla
    add h
    ld h, b
    dec l
    ld d, b
    jp Jump_000_3c29


    ld e, [hl]
    ld e, e
    ld h, e
    ld e, e
    ld l, b
    ld e, e
    ld l, l
    ld e, e
    ld [hl], d
    ld e, e
    ld [hl], d
    ld e, e
    ld [hl], d
    ld e, e
    ld [hl], d
    ld e, e
    ld [hl], d
    ld e, e
    ld [hl], d
    ld e, e
    ld [hl], a
    ld e, e
    ld [hl], a
    ld e, e
    ld a, h
    ld e, e
    push hl
    inc hl
    ld [$8123], a
    ld e, e
    add [hl]
    ld e, e
    adc e
    ld e, e
    sub b
    ld e, e
    and h
    ld e, e
    cp b
    ld e, e
    call z, $e05b
    ld e, e
    db $f4
    ld e, e
    rla
    ld c, e
    ld h, c
    dec l
    ld d, b
    rla
    adc l
    ld h, c
    dec l
    ld d, b
    rla
    db $ed
    ld h, c
    dec l
    ld d, b
    rla
    ld a, [de]
    ld h, d
    dec l
    ld d, b
    rla
    ld b, l
    ld h, d
    dec l
    ld d, b
    rla
    ld c, b
    ld h, d
    dec l
    ld d, b
    rla
    ld [hl], b
    ld h, d
    dec l
    ld d, b
    rla
    adc e
    ld h, d
    dec l
    ld d, b
    rla
    and l
    ld h, d
    dec l
    ld d, b
    rla
    ret nz

    ld h, d
    dec l
    ld d, b
    ld [$9f21], sp
    ld e, e
    call Call_000_3c36
    ld a, $28
    call Call_000_347d
    jp Jump_000_23d2


    rla
    nop
    ld h, e
    dec l
    ld d, b
    ld [$b321], sp
    ld e, e
    call Call_000_3c36
    ld a, $06
    call Call_000_347d
    jp Jump_000_23d2


    rla
    ld sp, $2d63
    ld d, b
    ld [$c721], sp
    ld e, e
    call Call_000_3c36
    ld a, $02
    call Call_000_347d
    jp Jump_000_23d2


    rla
    ld e, h
    ld h, e
    dec l
    ld d, b
    ld [$db21], sp
    ld e, e
    call Call_000_3c36
    ld a, $25
    call Call_000_347d
    jp Jump_000_23d2


    rla
    xor l
    ld h, e
    dec l
    ld d, b
    ld [$ef21], sp
    ld e, e
    call Call_000_3c36
    ld a, $13
    call Call_000_347d
    jp Jump_000_23d2


    rla
    call c, Call_000_2d63
    ld d, b
    ld [$f5fa], sp
    rst $10
    bit 0, a
    jr nz, jr_006_5c08

    bit 7, a
    jr nz, jr_006_5c12

    ld hl, $5c2a
    call Call_000_3c36
    jr jr_006_5c1d

jr_006_5c08:
    ld hl, $5c20
    call Call_000_3c36
    ld a, $62
    jr jr_006_5c1a

jr_006_5c12:
    ld hl, $5c25
    call Call_000_3c36
    ld a, $5a

jr_006_5c1a:
    call Call_000_347d

jr_006_5c1d:
    jp Jump_000_23d2


    rla
    rlca
    ld h, h
    dec l
    ld d, b
    rla
    ld b, c
    ld h, h
    dec l
    ld d, b
    rla
    ld a, d
    ld h, h
    dec l
    ld d, b
    ld [$0404], sp
    push af
    ld e, h
    ld d, l
    ld e, h
    dec sp
    ld e, h
    nop
    call z, $cd5c
    add hl, hl
    inc a
    ld hl, $5c46
    xor a
    call Call_000_3d93
    ret


    ld c, d
    ld e, h
    ld d, h
    ld e, h
    ld hl, $d749
    set 1, [hl]
    ld a, $01
    ld [$d5f2], a
    ret


    ld e, e
    ld e, h
    jp nz, $c75c

    ld e, h
    ld [$49fa], sp
    rst $10
    bit 0, a
    jr nz, jr_006_5c97

    ld a, [$d74a]
    bit 5, a
    jr nz, jr_006_5c72

    ld hl, $5ca8
    call Call_000_3c36
    jr jr_006_5ca5

jr_006_5c72:
    ld hl, $5cad
    call Call_000_3c36
    ld bc, $0501
    call Call_000_3e3f
    jr nc, jr_006_5c9f

    ld a, $2a
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $5cb2
    call Call_000_3c36
    ld hl, $d749
    set 0, [hl]
    jr jr_006_5ca5

jr_006_5c97:
    ld hl, $5cbd
    call Call_000_3c36
    jr jr_006_5ca5

jr_006_5c9f:
    ld hl, $5cb8
    call Call_000_3c36

jr_006_5ca5:
    jp Jump_000_23d2


    rla
    ld l, a
    ld b, l
    ld a, [hl+]
    ld d, b
    rla
    sub b
    ld b, l
    ld a, [hl+]
    ld d, b
    rla
    rst $08
    ld b, l
    ld a, [hl+]
    ld de, $1750
    ldh [rLYC], a
    ld a, [hl+]
    ld d, b
    rla
    inc bc
    ld b, [hl]
    ld a, [hl+]
    ld d, b
    rla
    jr nc, jr_006_5d0b

    ld a, [hl+]
    ld d, b
    rla
    ld l, a
    ld b, [hl]
    ld a, [hl+]
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $00ff
    inc bc
    ld de, $0607
    rst $38
    db $d3
    add c
    nop
    ld de, $0a08
    cp $01
    add d
    nop
    ld c, e
    rlca
    rlca
    rst $38
    rst $38
    add e
    nop
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc b
    ld c, $05
    add hl, bc
    rrca
    ld bc, $0f02
    rrca
    inc c
    dec c
    rrca
    ld b, $0b
    rrca
    rlca
    ld [$0404], sp
    dec [hl]
    ld e, l
    inc d

jr_006_5d0b:
    ld e, l
    ld de, $005d
    dec de
    ld e, l
    jp Jump_000_3c29


    ld d, $5d
    rla
    jr jr_006_5d77

    dec hl
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rst $38
    rlca
    inc bc
    rlca
    rst $38
    nop
    ld bc, $0910
    rlca
    rst $38
    pop de
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc b
    ld c, $05
    add hl, bc
    rrca
    ld bc, $0f02
    rrca
    inc c
    dec c
    rrca
    ld b, $0b
    rrca
    rlca
    ld [bc], a
    ld b, $08
    reti


    ld e, l
    ld [hl], l
    ld e, l
    ld d, c
    ld e, l
    nop
    sbc c
    ld e, l
    call Call_000_2156
    call Call_000_3c29
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $d868
    res 7, [hl]
    ld hl, $d733
    bit 1, [hl]
    res 1, [hl]
    ret z

    ld hl, $d862
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    add c
    ld e, l

jr_006_5d77:
    add d
    ld e, l
    add a
    ld e, l
    rst $00
    inc hl
    adc h
    ld e, l
    adc l
    ld e, l
    rst $38
    rla
    ld sp, hl
    ld h, d
    inc l
    ld d, b
    rla
    sub h
    ld h, e
    inc l
    ld d, b
    or $08
    ld hl, $4f12
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    nop
    inc bc
    dec bc
    rlca
    nop
    rst $38
    dec bc
    ld [$ff01], sp
    nop
    ld [$f500], sp
    nop
    ld b, $29
    add hl, bc
    dec bc
    rst $38
    ret nc

    ld bc, $0d24
    ld [$d3ff], sp
    ld [bc], a
    ld b, $05
    add hl, bc
    rst $38
    ret nc

    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    inc b
    ld a, [hl+]
    ld a, [bc]
    ld de, $d0ff
    dec b
    ld b, h
    add hl, bc
    inc c
    rst $38
    ret nc

    ld b, $40
    rst $00
    dec bc
    rlca
    ld b, c
    rst $00
    dec bc
    ld [$c6fb], sp
    nop
    ld [$1213], sp
    inc c
    inc c
    dec c
    nop
    nop
    nop
    ld d, $0f
    ld e, $1f
    rra
    inc h
    inc h
    inc h
    jr jr_006_5dfa

    jr nz, jr_006_5dfd

    ld bc, $0d02
    dec c
    rla
    rrca
    ld hl, $0504
    rlca
    ld [hl+], a
    inc hl
    dec e

jr_006_5dfa:
    dec e
    rrca
    rrca

jr_006_5dfd:
    rrca
    rrca
    rrca
    dec de
    add hl, de
    rrca
    rrca
    ld a, [bc]
    dec bc
    rrca
    ld c, $0e
    ld d, $09
    rrca
    xor [hl]
    ld e, a
    xor d
    ld e, [hl]
    dec d
    ld e, [hl]
    nop
    ccf
    ld e, a
    call Call_006_5e2b
    call Call_000_3c29
    ld hl, $5eb8
    ld de, $5ea4
    ld a, [$d644]
    call Call_000_30fc
    ld [$d644], a
    ret


Call_006_5e2b:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5e62
    call Call_006_5e67
    call Call_006_5e93
    ld a, [$d829]
    bit 0, a
    jr nz, jr_006_5e52

    push af
    ld a, $54
    ld [$d09e], a
    ld bc, $0602
    ld a, $17
    call Call_000_3eb4
    pop af

jr_006_5e52:
    bit 1, a
    ret nz

    ld a, $54
    ld [$d09e], a
    ld bc, $0406
    ld a, $17
    jp Jump_000_3eb4


    ld b, $02
    inc b
    ld b, $ff

Call_006_5e67:
    push hl
    ld hl, $d73e
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_006_5e73:
    ld a, [hl+]
    cp $ff
    jr z, jr_006_5e8f

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_006_5e84

    inc hl
    jr jr_006_5e73

jr_006_5e84:
    ld a, [hl+]
    cp c
    jr nz, jr_006_5e73

    ld hl, $d73e
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_006_5e8f:
    xor a
    ldh [$e0], a
    ret


Call_006_5e93:
    ld hl, $d829
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_006_5ea1

    set 0, [hl]
    ret


jr_006_5ea1:
    set 1, [hl]
    ret


    or l
    ld sp, $31e8
    ld de, $dd32
    ld e, [hl]

jr_006_5eac:
    db $f4
    ld e, [hl]
    dec c
    ld e, a
    ld h, $5f
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld [bc], a
    ld b, b
    jr z, @-$26

    cp $5e
    ld [$035f], sp
    ld e, a
    inc bc
    ld e, a
    inc bc
    jr nc, jr_006_5eef

    ret c

    rla
    ld e, a
    ld hl, $1c5f
    ld e, a
    inc e
    ld e, a
    inc b
    ld b, b
    jr z, jr_006_5eac

    jr nc, jr_006_5f35

    ld a, [hl-]
    ld e, a
    dec [hl]
    ld e, a
    dec [hl]
    ld e, a
    rst $38
    ld [$ea21], sp
    ld e, [hl]
    ld de, $5eef
    call Call_006_6339
    jp Jump_000_23d2


    rla
    jp z, $2668

    ld d, b

jr_006_5eef:
    rla
    jp hl


    ld l, b
    ld h, $50
    ld [$b821], sp
    ld e, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc b
    ld l, c
    ld h, $50
    rla
    ld sp, $2669
    ld d, b
    rla
    add hl, sp
    ld l, c
    ld h, $50
    ld [$c421], sp
    ld e, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, b
    ld l, c
    ld h, $50
    rla
    adc b
    ld l, c
    ld h, $50
    rla
    sbc [hl]
    ld l, c
    ld h, $50
    ld [$d021], sp
    ld e, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $db
    ld l, c
    ld h, $50

jr_006_5f35:
    rla
    xor $69
    ld h, $50
    rla
    db $fc
    ld l, c
    ld h, $50
    ld l, $07
    nop
    jr jr_006_5f45

    ret nc

jr_006_5f45:
    nop
    ld a, [de]
    ld bc, $00d2
    inc d
    nop
    db $ec
    rlca
    dec bc
    inc bc
    ld [$1103], a
    inc bc
    db $d3
    rrca
    inc bc
    inc b
    ld [$110b], a
    dec b
    ld [$0700], a
    inc l
    ld b, $0a
    rst $38
    rst $38
    ld bc, $1218
    dec c
    rst $38
    db $d3
    ld b, d
    and $1a
    jr nz, jr_006_5f79

    ld [de], a
    rst $38
    jp nc, $e443

    dec b
    jr jr_006_5f85

    ld e, $ff

jr_006_5f79:
    pop de
    ld b, h
    and $1b
    ld b, a
    dec c
    rlca
    rst $38
    rst $38
    add l
    inc [hl]
    ld b, a

jr_006_5f85:
    dec bc
    ld [$ffff], sp
    add [hl]
    ld [hl], $47
    inc c
    add hl, bc
    rst $38
    rst $38
    add a
    dec e
    ld a, [bc]
    rst $00
    nop
    jr jr_006_5fa2

    rst $00
    nop
    ld a, [de]
    ld [$00c7], sp
    inc d
    ld b, d
    rst $00
    rlca
    dec bc

jr_006_5fa2:
    dec de
    rst $00
    inc bc
    ld de, $c792
    rrca
    inc bc
    ld l, a
    rst $00
    dec bc
    ld de, $3d3c
    dec a
    dec a
    ld a, $61
    ld h, c
    ld h, c
    ld h, c
    inc a
    ld a, h
    dec a
    inc h
    ld a, l
    ld a, $44
    dec [hl]
    dec [hl]
    ld e, $46
    ld c, $0e
    ld c, $2f
    ld b, h
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    dec [hl]
    dec [hl]
    dec [hl]
    ld b, [hl]
    ld c, $47
    ld b, a
    ld c, $44
    ld b, b
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    dec [hl]
    ld a, [de]
    dec [hl]
    ld b, [hl]
    cpl
    ld c, $0e
    ld c, $44
    ld b, h
    dec c
    inc [hl]
    add hl, bc
    ld b, [hl]
    ld b, h
    jr @+$10

    dec [hl]
    ld b, [hl]
    ld h, e
    ld c, $67
    ld h, c
    ld b, h
    ld b, h
    ld c, $36
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $46
    ld c, $0e
    ld c, $2f
    ld b, h
    ld b, h
    dec c
    ld [hl], $09
    ld b, [hl]
    ld b, b
    ld h, e
    ld c, $67
    ld b, c
    ld h, e
    ld c, $67
    ld b, c
    ld [hl], b
    ld b, h
    ld c, $36
    ld c, $46
    ld b, h
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, h
    dec c
    scf
    add hl, bc
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld d, $09
    rrca
    jr nz, jr_006_609c

    add $60
    ld b, c
    ld h, b
    nop
    sub a
    ld h, c
    call Call_006_6057
    call Call_000_3c29
    ld hl, $60dc
    ld de, $60c0
    ld a, [$d645]
    call Call_000_30fc
    ld [$d645], a
    ret


Call_006_6057:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $60a1
    call Call_006_5e67
    call Call_006_60a8
    ld a, [$d82b]
    bit 0, a
    jr nz, jr_006_607e

    push af
    ld a, $5f
    ld [$d09e], a
    ld bc, $0203
    ld a, $17
    call Call_000_3eb4
    pop af

jr_006_607e:
    bit 1, a
    jr nz, jr_006_6091

    push af
    ld a, $5f
    ld [$d09e], a
    ld bc, $0603
    ld a, $17
    call Call_000_3eb4
    pop af

jr_006_6091:
    bit 2, a
    ret nz

    ld a, $5f
    ld [$d09e], a
    ld bc, $0507

jr_006_609c:
    ld a, $17
    jp Jump_000_3eb4


    ld [bc], a
    inc bc
    ld b, $03
    dec b
    rlca
    rst $38

Call_006_60a8:
    ld hl, $d82b
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_006_60b6

    set 0, [hl]
    ret


jr_006_60b6:
    cp $02
    jr nz, jr_006_60bd

    set 1, [hl]
    ret


jr_006_60bd:
    set 2, [hl]
    ret


    or l
    ld sp, $31e8
    ld de, $0d32
    ld h, c
    inc h
    ld h, c
    dec a
    ld h, c
    ld d, [hl]
    ld h, c
    ld l, a
    ld h, c
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    adc b
    ld h, c
    adc l
    ld h, c
    sub d
    ld h, c
    ld [bc], a
    db $10
    ld a, [hl+]
    ret c

    ld l, $61
    jr c, @+$63

    inc sp
    ld h, c
    inc sp
    ld h, c
    inc bc
    jr nz, @+$2c

    ret c

    ld b, a
    ld h, c
    ld d, c
    ld h, c
    ld c, h
    ld h, c
    ld c, h
    ld h, c
    inc b
    ld b, b
    ld a, [hl+]
    ret c

    ld h, b
    ld h, c
    ld l, d
    ld h, c
    ld h, l
    ld h, c
    ld h, l
    ld h, c
    dec b
    jr nc, @+$2c

    ret c

    ld a, c
    ld h, c
    add e
    ld h, c
    ld a, [hl]
    ld h, c
    ld a, [hl]
    ld h, c
    rst $38
    ld [$1a21], sp
    ld h, c
    ld de, $611f
    call Call_006_6339
    jp Jump_000_23d2


    rla
    inc e
    ld l, d
    ld h, $50
    rla
    ld e, [hl]
    ld l, d
    ld h, $50
    ld [$dc21], sp
    ld h, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sub b
    ld l, d
    ld h, $50
    rla
    or l
    ld l, d
    ld h, $50
    rla
    cp h
    ld l, d
    ld h, $50
    ld [$e821], sp
    ld h, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $ed
    ld l, d
    ld h, $50
    rla
    jr @+$6d

    ld h, $50
    rla
    add hl, hl
    ld l, e
    ld h, $50
    ld [$f421], sp
    ld h, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld h, a
    ld l, e
    ld h, $50
    rla
    sub l
    ld l, e
    ld h, $50
    rla
    and e
    ld l, e
    ld h, $50
    ld [$0021], sp
    ld h, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    pop de
    ld l, e
    ld h, $50
    rla
    push af
    ld l, e
    ld h, $50
    rla
    ld [$266c], sp
    ld d, b
    rla
    add hl, sp
    ld l, h
    ld h, $50
    rla
    add a
    ld l, h
    ld h, $50
    rla
    ret


    ld l, h
    ld h, $50
    ld l, $07
    nop
    jr jr_006_619d

    db $d3

jr_006_619d:
    nop
    ld a, [de]
    ld bc, $00d1
    inc d
    nop
    db $ec
    inc bc
    dec de
    dec b
    call nc, Call_000_090f
    inc b
    jp hl


    dec b
    dec bc
    inc b
    ret nc

    rrca
    inc bc
    dec b
    ret nc

    nop
    dec bc
    inc l
    dec c
    ld de, $ffff
    ld bc, $1418
    inc c
    rst $38
    db $d3
    ld b, d
    and $1c
    jr nz, jr_006_61ce

    inc c
    rst $38
    db $d3
    ld b, e
    db $e4
    ld b, $21

jr_006_61ce:
    ld c, $16
    rst $38
    pop de
    ld b, h
    db $dd
    ld bc, $0818
    jr nz, @+$01

jr_006_61d9:
    pop de
    ld b, l
    and $1d
    ld b, a
    ld de, $ff06
    rst $38
    add [hl]
    pop de
    ld b, a
    ld a, [bc]
    ld [$ffff], sp
    add a
    inc h
    ld b, a
    inc d
    add hl, de
    rst $38
    rst $38
    adc b
    jr nc, jr_006_623f

    db $10
    ld a, [de]
    rst $38
    rst $38
    add hl, bc
    ld c, h
    ld c, $1d
    rst $38
    rst $38
    ld a, [bc]
    ld c, h
    ld a, [bc]
    inc e
    rst $38
    rst $38
    dec bc
    ld a, [bc]
    rst $00
    nop
    jr jr_006_6214

    rst $00
    nop
    ld a, [de]
    ld [$00c7], sp
    inc d
    jr nz, jr_006_61d9

    inc bc
    dec de

jr_006_6214:
    sub l
    rst $00
    rrca
    add hl, bc
    dec l
    rst $00
    dec b
    dec bc
    sub d
    rst $00
    rrca
    inc bc
    ld b, b
    ld h, c
    ld h, c
    ld b, d
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld a, h
    dec a
    ld a, l
    inc h
    ld a, $44
    ld c, $0e
    ld d, [hl]
    ld c, $09
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    cpl
    ld b, [hl]
    ld b, h

jr_006_623f:
    ld c, $0e
    ld c, $0e
    cpl
    ld c, $5a
    ld b, c
    ld b, c
    ld h, e
    ld c, $67
    ld b, d
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld e, d
    ld c, $60
    ld h, c
    ld b, d
    ld c, $0e
    ld b, a
    ld b, a
    ld a, e
    ld b, [hl]
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld d, c
    ld c, $64
    ld c, $56
    ld c, $0e
    ld c, $0e
    ld [hl], $46
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld d, [hl]
    ld c, $44
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [hl], $46
    ld b, [hl]
    ld b, h
    ld a, [de]
    dec [hl]
    ld c, $0e
    ld b, h
    ld c, $5a
    ld c, $0e
    ld b, a
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, h
    cpl
    dec [hl]
    ld e, d
    cpl
    ld c, b
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld d, $09
    dec c
    ld [hl], l
    ld h, h
    nop
    ld h, e
    or e
    ld h, d
    nop
    dec b
    ld h, h
    call Call_006_62c9
    call Call_000_3c29
    ld hl, $6314
    ld de, $62fa
    ld a, [$d646]
    call Call_000_30fc
    ld [$d646], a
    ret


Call_006_62c9:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $62ed
    call Call_006_5e67
    call Call_006_62f0
    ld a, [$d82d]
    bit 7, a
    ret nz

    ld a, $5f
    ld [$d09e], a
    ld bc, $0602
    ld a, $17
    jp Jump_000_3eb4


    ld b, $02
    rst $38

Call_006_62f0:
    ldh a, [$e0]
    and a
    ret z

    ld hl, $d82d
    set 7, [hl]
    ret


    or l
    ld sp, $31e8
    ld de, $4732
    ld h, e
    ld e, [hl]
    ld h, e
    ld [hl], l
    ld h, e
    adc h
    ld h, e
    and e
    ld h, e
    cp d
    ld h, e
    db $d3
    ld h, e
    db $ec
    ld h, e
    rst $28
    inc hl
    rst $28
    inc hl
    ld b, $20
    inc l
    ret c

    call nz, $ce63
    ld h, e
    ret


    ld h, e
    ret


    ld h, e
    rlca
    jr nc, @+$2e

    ret c

    db $dd
    ld h, e
    rst $20
    ld h, e
    ld [c], a
    ld h, e
    ld [c], a
    ld h, e
    ld [$2c20], sp
    ret c

    or $63
    nop
    ld h, h
    ei
    ld h, e
    ei
    ld h, e
    rst $38

Call_006_6339:
    ld a, [$d837]
    bit 7, a
    jr nz, jr_006_6342

    jr jr_006_6344

jr_006_6342:
    ld h, d
    ld l, e

jr_006_6344:
    jp Jump_000_3c36


    ld [$5421], sp
    ld h, e
    ld de, $6359
    call Call_006_6339
    jp Jump_000_23d2


    rla
    dec bc
    ld l, l
    ld h, $50
    rla
    add hl, sp
    ld l, l
    ld h, $50
    ld [$6b21], sp
    ld h, e
    ld de, $6370
    call Call_006_6339
    jp Jump_000_23d2


    rla
    ld e, c
    ld l, l
    ld h, $50
    rla
    ld a, h
    ld l, l
    ld h, $50
    ld [$8221], sp
    ld h, e
    ld de, $6387
    call Call_006_6339
    jp Jump_000_23d2


    rla
    sub h
    ld l, l
    ld h, $50
    rla
    or l
    ld l, l
    ld h, $50
    ld [$9921], sp
    ld h, e
    ld de, $639e
    call Call_006_6339
    jp Jump_000_23d2


    rla
    db $e4
    ld l, l
    ld h, $50
    rla
    dec de
    ld l, [hl]
    ld h, $50
    ld [$b021], sp
    ld h, e
    ld de, $63b5
    call Call_006_6339
    jp Jump_000_23d2


    rla
    inc a
    ld l, [hl]
    ld h, $50
    rla
    ld [hl], d
    ld l, [hl]
    ld h, $50
    ld [$1421], sp
    ld h, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sbc e
    ld l, [hl]
    ld h, $50
    rla
    cp a
    ld l, [hl]
    ld h, $50
    rla
    bit 5, [hl]
    ld h, $50
    ld [$2021], sp
    ld h, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    di
    ld l, [hl]
    ld h, $50
    rla
    add hl, sp
    ld l, a
    ld h, $50
    rla
    ld b, c
    ld l, a
    ld h, $50
    ld [$2c21], sp
    ld h, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, l
    ld l, a
    ld h, $50
    rla
    adc e
    ld l, a
    ld h, $50
    rla
    sbc c
    ld l, a
    ld h, $50
    ld l, $05
    nop
    db $10
    ld bc, $00d4
    ld c, $00
    jp nc, Jump_000_1200

    nop
    db $ec
    inc bc
    inc bc
    inc b
    pop de
    inc bc
    rla
    ld b, $cf
    nop
    ld a, [bc]
    inc l
    ld a, [bc]
    ld c, $ff
    rst $38
    ld bc, $0a2c
    jr @+$01

    rst $38
    ld [bc], a
    dec de
    ld a, [bc]
    add hl, de
    rst $38
    ret nc

    inc bc
    dec de
    ld c, $0f
    rst $38
    db $d3
    inc b
    inc l
    ld de, $ff16
    pop de
    dec b
    jr @+$09

    dec d
    rst $38
    db $d3
    ld b, [hl]
    and $1e
    jr nz, @+$0e

    dec bc
    rst $38
    ret nc

    ld b, a
    db $e4
    rlca
    jr jr_006_6460

    ld [de], a
    rst $38
    jp nc, $e648

    rra
    ld b, a
    db $10
    rlca
    rst $38
    rst $38
    adc c
    inc hl
    ld b, a
    inc de
    ld b, $ff
    rst $38
    adc d

jr_006_6460:
    ld l, $04
    rst $00
    nop
    db $10
    inc bc
    rst $00
    nop
    ld c, $05
    rst $00
    nop
    ld [de], a
    db $10
    rst $00
    inc bc
    inc bc
    ld a, [de]
    rst $00
    inc bc
    rla
    ld h, b
    ld h, c
    ld b, d
    dec a
    dec a
    dec a
    dec a
    inc h
    ld a, l
    ld a, h
    dec a
    dec a
    ld a, $64
    cpl
    ld d, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    cpl
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $60
    ld h, c
    ld b, c
    ld b, c
    ld h, e
    ld c, $67
    ld b, d
    ld b, [hl]
    ld [de], a
    ld c, $0c
    ld c, $64
    ld c, $34
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld b, c
    ld b, d
    ld c, $44
    ld c, $36
    scf
    scf
    scf
    ld [hl], $46
    ld b, [hl]
    ld b, h
    jr jr_006_650f

    ld c, $12
    ld c, $36
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl], $46
    ld b, [hl]
    ld b, h
    inc e
    ld c, $0e
    ld [de], a
    ld c, $37
    scf
    scf
    scf
    scf
    ld b, [hl]
    ld b, [hl]
    ld b, h
    ld a, [de]
    ld e, d
    ld c, $67
    ld h, e
    ld c, $67
    ld b, c
    ld b, c
    ld b, c
    ld h, e
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld hl, $d72f
    res 1, [hl]
    call Call_006_6785
    jr nc, jr_006_6510

    ld a, $fc
    ld [$cd6b], a
    ld hl, $d735
    set 1, [hl]
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    xor a
    ld [$c102], a
    call Call_000_3415

jr_006_650f:
    ret


jr_006_6510:
    xor a
    ld [$cd3a], a
    ld [$cd38], a
    ld [$ccd3], a
    ld hl, $d735
    res 0, [hl]
    res 1, [hl]
    ld hl, $d72f
    res 7, [hl]
    ret


    ld hl, $d72f
    res 7, [hl]
    ld hl, $d72d
    res 7, [hl]
    ld hl, $d735
    res 0, [hl]
    res 1, [hl]
    xor a
    ld [$cf17], a
    ld [$cf10], a
    ld [$cc57], a
    ld [$cd3a], a
    ld [$cd38], a
    ld [$ccd3], a
    ret


    ld d, [hl]
    ld h, l
    sub a
    ld h, l
    or e
    ld h, l
    cp b
    ld h, l
    ld b, $66
    ld a, [$d361]
    sub $0a
    ld [$cca1], a
    jr z, jr_006_657f

    ld b, $00
    ld c, a
    ld hl, $cc97
    ld a, $80
    call Call_000_166e
    ld [hl], $ff
    ld a, [$cf13]
    ldh [$8c], a
    ld de, $cc97
    call Call_000_363d
    ld a, $01
    ld [$cf10], a
    jr jr_006_6584

jr_006_657f:
    ld a, $03
    ld [$cf10], a

jr_006_6584:
    ld a, $02
    ld c, a
    ld a, $e1
    call Call_000_2211
    ld hl, $d732
    set 1, [hl]
    ld a, $fc
    ld [$cd6b], a
    ret


    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, [$cca1]
    ld [$cd38], a
    ldh [$95], a
    ld a, $23
    call Call_000_3eb4
    call Call_000_3415
    ld a, $02
    ld [$cf10], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd3b], a
    ld a, [$cf13]
    swap a
    ld [$cf17], a
    xor a
    ld [$c206], a
    ld hl, $ccd3
    ld de, $65fb
    call Call_000_3509
    dec a
    ld [$cd38], a
    ld hl, $cc97
    ld de, $65ee
    call Call_000_3509
    ld hl, $d72d
    res 7, [hl]
    ld hl, $d72f
    set 7, [hl]
    ld a, $04
    ld [$cf10], a
    ret


    nop
    ld b, $80
    ld bc, $0500
    ret nz

    inc bc
    ld b, b
    ld bc, $01e0
    rst $38
    ld b, b
    ld [bc], a
    db $10
    inc bc
    add b
    dec b
    jr nz, jr_006_6604

    add b

jr_006_6604:
    rlca
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $00
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $d72f
    res 7, [hl]
    ld hl, $d72d
    res 7, [hl]
    jp Jump_000_30ea


    ld h, $66
    ld [hl], e
    ld h, [hl]
    ld a, $02
    ld c, a
    ld a, $e1
    call Call_000_2211
    ld a, [$cf13]
    swap a
    ld [$cf17], a
    call Call_000_3415
    ld hl, $ccd3
    ld de, $6661
    call Call_000_3509
    dec a

jr_006_6643:
    ld [$cd38], a
    xor a
    ld [$d12e], a
    call Call_006_66e5
    ld hl, $cc97
    ld de, $666a
    call Call_000_3509
    ld hl, $d72d
    res 7, [hl]
    ld a, $01
    ld [$cf10], a
    ret


    nop
    ld bc, $0340
    jr nz, jr_006_6674

    ld b, b
    ld b, $ff
    ld b, b
    ld b, $80
    dec c
    ld b, b
    inc bc
    add b
    ld bc, $faff

jr_006_6674:
    jr c, jr_006_6643

    and a
    ret nz

    ld hl, $d72f
    res 7, [hl]
    ld hl, $d72d
    res 7, [hl]
    jp Jump_000_30ea


    adc c
    ld h, [hl]
    ld [hl], e
    ld h, [hl]
    ld a, $02
    ld c, a
    ld a, $e1
    call Call_000_2211
    ld a, [$cf13]
    swap a
    ld [$cf17], a
    xor a
    ld [$c206], a
    ld hl, $ccd3
    ld de, $66cb
    call Call_000_3509
    dec a
    ld [$cd38], a
    ld a, $01
    ld [$d12e], a
    call Call_006_66e5
    ld hl, $cc97
    ld de, $66d8
    call Call_000_3509
    ld hl, $d72d
    res 7, [hl]
    ld hl, $d72f
    set 7, [hl]
    ld a, $01
    ld [$cf10], a
    ret


    nop
    ld bc, $0210
    add b
    dec b
    jr nz, jr_006_66de

    ld b, b
    dec b
    jr nz, @+$11

    rst $38
    nop
    ld [bc], a
    add b
    rrca
    ld b, b
    dec b

jr_006_66de:
    add b
    dec bc

jr_006_66e0:
    nop
    dec b
    ret nz

    inc bc
    rst $38

Call_006_66e5:
jr_006_66e5:
    ld hl, $ccd3
    ld a, [$cd38]
    dec a
    ld [$cd38], a
    ld d, $00
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    ld hl, $672a
    ld a, [$d12e]

jr_006_66fb:
    add a
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d360]
    ld b, a
    ld a, [$d361]
    ld c, a

jr_006_670b:
    ld a, [hl+]
    cp b
    jr nz, jr_006_6725

    ld a, [hl+]
    cp c
    jr nz, jr_006_6726

    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_006_6716:
    ld a, [hl+]
    cp $ff
    ret z

    ld [de], a
    inc de
    ld a, [$cd38]
    inc a
    ld [$cd38], a
    jr jr_006_6716

jr_006_6725:
    inc hl

jr_006_6726:
    inc hl
    inc hl
    jr jr_006_670b

    ld l, $67
    ld c, d
    ld h, a
    ld [de], a
    dec de
    ld a, $67
    db $10
    dec de
    ld b, c
    ld h, a
    ld de, $441a
    ld h, a
    ld de, $471c
    ld h, a
    ld b, b
    ld b, b
    rst $38
    db $10
    jr nz, @+$01

    ld b, b
    db $10
    rst $38
    ld b, b
    jr nz, @+$01

    db $10
    ld [hl+], a
    ld e, [hl]
    ld h, a
    ld de, $6323
    ld h, a
    ld [de], a
    dec h
    ld l, b
    ld h, a
    inc de
    dec h
    ld [hl], h
    ld h, a
    ld de, $7924
    ld h, a
    jr nz, jr_006_66e0

    add b
    db $10
    rst $38
    jr nz, jr_006_66e5

    db $10
    jr nz, @+$01

    jr nz, @+$22

    jr nz, jr_006_676c

jr_006_676c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr nz, jr_006_6796

    ld b, b
    jr nz, @+$01

    jr nz, jr_006_66fb

    jr nz, jr_006_677d

jr_006_677d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

Call_006_6785:
    push de
    ld hl, $67a8
    ld a, [$d366]
    ld de, $0003
    call Call_000_3da7
    pop de
    jr nc, jr_006_67a6

    inc hl

jr_006_6796:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c45c]
    ld b, a

jr_006_679d:
    ld a, [hl+]
    and a
    jr z, jr_006_67a6

    cp b
    jr nz, jr_006_679d

    scf
    ret


jr_006_67a6:
    and a
    ret


    nop
    db $d3
    ld h, a
    inc bc
    sub $67
    ld [bc], a
    ret c

    ld h, a
    ld [$67da], sp
    add hl, bc
    call c, Call_000_0a67
    call c, $0c67
    call c, Call_000_0d67
    sbc $67
    ld [de], a
    ldh [$67], a
    inc de
    db $e4
    ld h, a
    inc d
    add sp, $67
    ld d, $ea
    ld h, a
    rla
    xor $67
    db $10
    pop af
    ld h, a
    rst $38
    dec de
    ld e, b
    nop
    ld a, [hl-]
    nop
    ld e, [hl]
    nop
    ld d, h
    nop
    dec sp
    nop
    ld e, $00
    inc e
    jr c, jr_006_67fd

    nop
    ld a, [de]
    inc e
    ld d, e
    nop
    inc [hl]
    nop
    ld b, e
    ld e, b
    dec de
    nop
    dec sp
    dec de
    nop
    inc b
    dec d
    nop
    ld a, [$d735]
    bit 6, a
    ret nz

    ld a, [$d366]

jr_006_67fd:
    and a
    ret nz

    ld a, $35
    call Call_000_3eb4
    ld a, [$c109]
    ld b, a
    ld a, [$c45c]
    ld c, a
    ld a, [$cfc5]
    ld d, a
    ld hl, $6851

jr_006_6813:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr nz, jr_006_6826

    ld a, [hl+]
    cp c
    jr nz, jr_006_6827

    ld a, [hl+]
    cp d
    jr nz, jr_006_6828

    ld a, [hl]
    ld e, a
    jr jr_006_682b

jr_006_6826:
    inc hl

jr_006_6827:
    inc hl

jr_006_6828:
    inc hl
    jr jr_006_6813

jr_006_682b:
    ldh a, [$b4]
    and e
    ret z

    ld a, $ff
    ld [$cd6b], a
    ld hl, $d735
    set 6, [hl]
    call Call_000_3415
    ld a, e
    ld [$ccd3], a
    ld [$ccd4], a
    ld a, $02
    ld [$cd38], a
    call Call_006_6872
    ld a, $a2
    call Call_000_2238
    ret


    nop
    inc l
    scf
    add b
    nop
    add hl, sp
    ld [hl], $80
    nop
    add hl, sp
    scf
    add b
    ld [$272c], sp
    jr nz, jr_006_686a

    add hl, sp
    daa
    jr nz, jr_006_6872

    inc l
    dec c
    db $10
    inc c

jr_006_686a:
    inc l
    dec e
    db $10
    inc c
    add hl, sp
    dec c
    db $10
    rst $38

Call_006_6872:
jr_006_6872:
    ld hl, $8ff0
    ld de, $6893
    ld bc, $0601
    call Call_000_1636
    ld hl, $689b
    ld de, $c390
    ld bc, $0008
    call Call_000_00b1
    ld a, $a0
    ld [$c398], a
    ld [$c39c], a
    ret


    rlca
    rra
    ccf
    ld a, a
    ld a, a
    ccf
    rra
    rlca
    ld e, b
    ld c, b
    rst $38
    nop
    ld e, b
    ld d, b
    rst $38
    jr nz, jr_006_68a4

jr_006_68a4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
