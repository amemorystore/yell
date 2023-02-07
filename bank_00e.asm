; disasSembly of "yell.gbc"
SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    ld bc, $2800
    nop
    rst $38
    inc hl
    ld [bc], a
    nop
    ld [hl-], a
    nop
    rst $38
    add hl, de
    inc bc
    dec e
    rrca
    nop
    ret c

    ld a, [bc]
    inc b
    dec e
    ld [de], a
    nop
    ret c

    rrca
    dec b
    nop
    ld d, b
    nop
    ret c

    inc d
    ld b, $10
    jr z, jr_00e_4022

jr_00e_4022:
    rst $38
    inc d
    rlca
    inc b
    ld c, e
    inc d
    rst $38
    rrca
    ld [$4b05], sp
    add hl, de
    rst $38
    rrca
    add hl, bc
    ld b, $4b
    rla
    rst $38
    rrca
    ld a, [bc]
    nop
    jr z, jr_00e_403a

jr_00e_403a:
    rst $38
    inc hl
    dec bc
    nop
    scf
    nop
    rst $38
    ld e, $0c
    ld h, $01
    nop
    ld c, h
    dec b
    dec c
    daa
    ld d, b
    nop
    cp a
    ld a, [bc]
    ld c, $32
    nop
    nop
    rst $38
    ld e, $0f
    nop
    ld [hl-], a
    nop
    ld a, [c]
    ld e, $10
    nop
    jr z, jr_00e_405e

jr_00e_405e:
    rst $38
    inc hl
    ld de, $2300
    ld [bc], a
    rst $38
    inc hl
    ld [de], a
    inc e
    nop
    nop
    ret c

    inc d
    inc de
    dec hl
    ld b, [hl]
    ld [bc], a
    ld a, [c]
    rrca
    inc d
    ld a, [hl+]
    rrca
    nop
    cp a
    inc d
    dec d
    nop
    ld d, b
    nop
    cp a
    inc d
    ld d, $00
    inc hl
    ld d, $ff
    ld a, [bc]
    rla
    dec h
    ld b, c
    nop
    rst $38
    inc d
    jr jr_00e_40b8

    ld e, $01
    rst $38
    ld e, $19
    nop
    ld a, b
    nop
    cp a
    dec b
    ld a, [de]
    dec l
    ld b, [hl]
    ld bc, $19f2
    dec de
    dec h
    inc a
    ld bc, $0fd8
    inc e
    ld d, $00
    nop
    rst $38
    rrca
    dec e
    dec h
    ld b, [hl]
    nop
    rst $38
    rrca
    ld e, $00
    ld b, c
    nop
    rst $38
    add hl, de
    rra
    dec e
    rrca
    nop

jr_00e_40b8:
    ret c

    inc d
    jr nz, jr_00e_40e2

    ld bc, $4c00
    dec b
    ld hl, $2300
    nop
    ld a, [c]
    inc hl
    ld [hl+], a
    inc h
    ld d, l
    nop
    rst $38
    rrca
    inc hl
    ld a, [hl+]
    rrca
    nop
    ret c

    inc d
    inc h
    jr nc, @+$5c

    nop
    ret c

    inc d
    dec h
    dec de
    ld e, d
    nop
    rst $38
    inc d
    ld h, $30
    ld h, h
    nop

jr_00e_40e2:
    rst $38
    rrca
    daa
    inc de
    nop
    nop
    rst $38
    ld e, $28
    ld [bc], a
    rrca
    inc bc
    rst $38
    inc hl
    add hl, hl
    ld c, l
    add hl, de
    rlca
    rst $38
    inc d
    ld a, [hl+]
    dec e
    ld c, $07
    ret c

    inc d
    dec hl
    inc de
    nop
    nop
    rst $38
    ld e, $2c
    rra
    inc a
    nop
    rst $38
    add hl, de
    dec l
    ld [de], a
    nop
    nop
    rst $38
    jr z, jr_00e_413d

    inc e
    nop
    nop
    rst $38
    inc d
    cpl
    jr nz, jr_00e_4117

jr_00e_4117:
    nop
    adc h
    rrca
    jr nc, jr_00e_414d

    nop
    nop
    adc h
    inc d
    ld sp, $0129
    nop
    push hl
    inc d
    ld [hl-], a
    ld d, [hl]
    nop
    nop
    adc h
    inc d
    inc sp
    ld b, l
    jr z, jr_00e_4133

    rst $38
    ld e, $34

jr_00e_4133:
    inc b
    jr z, jr_00e_414a

    rst $38
    add hl, de
    dec [hl]
    inc b
    ld e, a
    inc d
    rst $38

jr_00e_413d:
    rrca
    ld [hl], $2e
    nop
    add hl, de
    rst $38
    ld e, $37
    nop
    jr z, jr_00e_415d

    rst $38
    add hl, de

jr_00e_414a:
    jr c, jr_00e_414c

jr_00e_414c:
    ld a, b

jr_00e_414d:
    dec d
    call z, Call_000_3905
    nop
    ld e, a
    dec d
    rst $38
    rrca
    ld a, [hl-]
    dec b
    ld e, a
    add hl, de
    rst $38
    ld a, [bc]
    dec sp

jr_00e_415d:
    dec b
    ld a, b
    add hl, de
    push hl
    dec b
    inc a
    ld c, h
    ld b, c
    jr @+$01

    inc d
    dec a
    ld b, [hl]
    ld b, c
    dec d
    rst $38
    inc d
    ld a, $44
    ld b, c
    add hl, de
    rst $38
    inc d
    ccf
    ld d, b
    sub [hl]
    nop
    push hl
    dec b
    ld b, b
    nop
    inc hl
    ld [bc], a
    rst $38
    inc hl
    ld b, c
    nop
    ld d, b
    ld [bc], a
    rst $38
    inc d
    ld b, d
    jr nc, jr_00e_41d9

    ld bc, $19cc
    ld b, e
    dec h
    ld [hl-], a
    ld bc, $14e5
    ld b, h
    nop
    ld bc, $ff01
    inc d
    ld b, l
    add hl, hl
    ld bc, $ff01
    inc d
    ld b, [hl]
    nop
    ld d, b
    nop
    rst $38
    rrca
    ld b, a
    inc bc
    inc d
    ld d, $ff
    inc d
    ld c, b
    inc bc
    jr z, jr_00e_41c4

    rst $38
    ld a, [bc]
    ld c, c
    ld d, h
    nop
    ld d, $e5
    ld a, [bc]
    ld c, d
    dec c
    nop
    nop
    rst $38
    jr z, jr_00e_4208

    nop
    scf
    ld d, $f2
    add hl, de
    ld c, h
    daa

jr_00e_41c4:
    ld a, b
    ld d, $ff
    ld a, [bc]
    ld c, l
    ld b, d
    nop
    inc bc
    cp a
    inc hl
    ld c, [hl]
    ld b, e
    nop
    ld d, $bf
    ld e, $4f
    jr nz, jr_00e_41d7

jr_00e_41d7:
    ld d, $bf

jr_00e_41d9:
    rrca
    ld d, b
    dec de
    ld b, [hl]
    ld d, $ff
    inc d
    ld d, c
    inc d
    nop
    rlca
    ld a, [c]
    jr z, jr_00e_4239

    add hl, hl
    ld bc, $ff1a
    ld a, [bc]
    ld d, e
    ld a, [hl+]
    rrca
    inc d
    or d
    rrca
    ld d, h
    ld b, $28
    rla
    rst $38
    ld e, $55
    ld b, $5f
    rla
    rst $38
    rrca
    ld d, [hl]
    ld b, e
    nop
    rla
    rst $38
    inc d
    ld d, a
    ld b, $78
    rla

jr_00e_4208:
    or d
    ld a, [bc]
    ld e, b
    nop
    ld [hl-], a
    dec b
    and l
    rrca
    ld e, c
    nop
    ld h, h
    inc b
    rst $38
    ld a, [bc]
    ld e, d
    ld h, $01
    inc b
    ld c, h
    dec b
    ld e, e
    daa
    ld h, h
    inc b
    rst $38
    ld a, [bc]
    ld e, h
    ld b, d
    nop
    inc bc
    ret c

    ld a, [bc]
    ld e, l
    ld c, h
    ld [hl-], a
    jr @+$01

    add hl, de
    ld e, [hl]
    ld b, a
    ld e, d
    jr @+$01

    ld a, [bc]
    ld e, a
    jr nz, jr_00e_4237

jr_00e_4237:
    jr @-$65

jr_00e_4239:
    inc d
    ld h, b
    ld a, [bc]
    nop
    jr @+$01

    jr z, jr_00e_42a2

    inc [hl]
    nop
    jr @+$01

    ld e, $62
    nop
    jr z, jr_00e_424a

jr_00e_424a:
    rst $38
    ld e, $63
    ld d, c
    inc d
    nop
    rst $38
    inc d
    ld h, h
    inc e
    nop
    jr @+$01

    inc d
    ld h, l
    add hl, hl
    nop
    ld [$0fff], sp
    ld h, [hl]
    ld d, d
    nop
    nop
    rst $38
    ld a, [bc]
    ld h, a
    dec sp
    nop
    nop
    ret c

    jr z, jr_00e_42d3

    rrca
    nop
    nop
    rst $38
    rrca
    ld l, c
    jr c, jr_00e_4273

jr_00e_4273:
    nop
    rst $38
    inc d
    ld l, d
    dec bc
    nop
    nop
    rst $38
    ld e, $6b
    rrca
    nop
    nop
    rst $38
    inc d
    ld l, h
    ld d, $00
    nop
    rst $38
    inc d
    ld l, l
    ld sp, $0800
    rst $38
    ld a, [bc]
    ld l, [hl]
    dec bc
    nop
    dec d
    rst $38
    jr z, jr_00e_4304

    dec bc
    nop
    nop
    rst $38
    jr z, jr_00e_430b

    inc sp
    nop
    jr @+$01

    ld e, $71
    ld b, b

jr_00e_42a2:
    nop
    jr @+$01

    ld e, $72
    add hl, de
    nop
    add hl, de
    rst $38
    ld e, $73
    ld b, c
    nop
    jr @+$01

    inc d
    ld [hl], h
    cpl
    nop
    nop
    rst $38
    ld e, $75
    ld a, [de]
    nop
    nop
    rst $38
    ld a, [bc]
    db $76
    ld d, e
    nop
    nop
    rst $38
    ld a, [bc]
    ld [hl], a
    add hl, bc
    nop
    ld [bc], a
    rst $38
    inc d
    ld a, b
    rlca
    add d
    nop
    rst $38

jr_00e_42cf:
    dec b
    ld a, c
    nop
    ld h, h

jr_00e_42d3:
    nop
    cp a
    ld a, [bc]
    ld a, d
    inc h
    inc d
    ld [$1eff], sp
    ld a, e
    ld hl, $0314
    or d
    inc d
    ld a, h
    ld hl, $0341
    rst $38
    inc d
    ld a, l
    rra
    ld b, c
    inc b
    ret c

    inc d
    ld a, [hl]

jr_00e_42ef:
    ld [hl+], a
    ld a, b
    inc d
    ret c

    dec b
    ld a, a
    nop
    ld d, b
    dec d
    rst $38
    rrca
    add b
    ld a, [hl+]
    inc hl
    dec d
    cp a
    ld a, [bc]
    add c
    ld de, $003c

jr_00e_4304:
    rst $38
    inc d
    add d
    daa
    ld h, h
    nop
    rst $38

jr_00e_430b:
    rrca
    add e
    dec e
    inc d
    nop
    rst $38
    rrca
    add h
    ld b, [hl]
    ld a, [bc]
    nop
    rst $38
    inc hl
    add l
    dec [hl]
    nop
    jr @+$01

    inc d
    add [hl]
    ld d, $00
    jr jr_00e_42ef

jr_00e_4323:
    rrca
    add a
    jr c, jr_00e_4327

jr_00e_4327:
    nop
    rst $38
    ld a, [bc]
    adc b
    dec l
    ld d, l
    ld bc, $14e5
    adc c
    ld b, e
    nop
    nop
    cp a
    ld e, $8a
    ld [$1864], sp
    rst $38
    rrca
    adc e
    ld b, d
    nop
    inc bc
    adc h
    jr z, jr_00e_42cf

    dec e
    rrca
    nop
    ret c

    inc d
    adc l
    inc bc
    inc d
    rlca
    rst $38
    rrca
    adc [hl]
    jr nz, jr_00e_4351

jr_00e_4351:
    nop
    cp a
    ld a, [bc]
    adc a
    daa
    adc h
    ld [bc], a
    push hl
    dec b
    sub b
    add hl, sp
    nop
    nop
    rst $38
    ld a, [bc]
    sub c
    ld b, [hl]
    inc d
    dec d
    rst $38
    ld e, $92
    nop
    ld b, [hl]
    nop
    rst $38
    ld a, [bc]
    sub e
    jr nz, jr_00e_436f

jr_00e_436f:
    ld d, $ff
    rrca
    sub h
    ld d, $00
    nop
    or d
    inc d
    sub l
    add hl, hl
    ld bc, $cc18
    rrca
    sub [hl]
    ld d, l
    nop
    nop
    rst $38
    jr z, @-$67

    inc sp
    nop
    inc bc
    rst $38
    jr z, jr_00e_4323

    nop
    ld e, d
    dec d
    ret c

    ld a, [bc]
    sbc c
    rlca
    xor d
    nop
    rst $38
    dec b
    sbc d
    dec e
    ld [de], a
    nop
    call z, $9b0f
    inc l
    ld [hl-], a
    inc b
    push hl
    ld a, [bc]
    sbc h
    jr c, jr_00e_43a5

jr_00e_43a5:
    jr @+$01

    ld a, [bc]
    sbc l
    nop
    ld c, e
    dec b
    push hl
    ld a, [bc]
    sbc [hl]
    rra
    ld d, b
    nop
    push hl
    rrca
    sbc a
    ld a, [bc]

jr_00e_43b6:
    nop
    nop
    rst $38
    ld e, $a0
    jr jr_00e_43bd

jr_00e_43bd:
    nop
    rst $38
    ld e, $a1
    nop
    ld d, b
    nop
    rst $38
    ld a, [bc]
    and d
    jr z, jr_00e_43ca

    nop

jr_00e_43ca:
    push hl
    ld a, [bc]
    and e
    nop
    ld b, [hl]
    nop
    rst $38
    inc d

jr_00e_43d2:
    and h
    ld c, a
    nop
    nop
    rst $38
    ld a, [bc]
    and l
    jr nc, jr_00e_440d

    nop
    rst $38
    ld a, [bc]
    ld bc, $312d
    ld sp, $412d
    ld d, $03
    dec l
    ld b, b
    ld d, l
    nop
    ld b, b
    db $e4
    ld b, b
    ld hl, $002d
    nop
    inc bc
    and h
    inc bc
    jr c, jr_00e_43b6

    inc bc
    ld [$0006], sp
    ld [bc], a
    inc a
    ld a, $3f
    inc a
    ld d, b
    ld d, $03
    dec l
    adc l
    ld h, [hl]
    jp hl


    ld c, a
    ld [hl], e
    ld d, c
    ld hl, $492d
    nop

jr_00e_440d:
    inc bc
    and h
    inc bc
    jr c, jr_00e_43d2

    inc bc
    ld [$0006], sp
    inc bc
    ld d, b
    ld d, d
    ld d, e
    ld d, b
    ld h, h
    ld d, $03
    dec l
    ret nc

    ld [hl], a
    ld h, c
    ld b, c
    add c
    ld b, e
    ld hl, $492d
    ld d, $03
    and h
    ld b, e
    jr c, @-$3e

    inc bc
    ld [$0006], sp
    inc b
    daa
    inc [hl]
    dec hl
    ld b, c
    ld [hl-], a
    inc d
    inc d
    dec l
    ld b, c
    ld d, l
    ldh a, [$5d]
    db $fc
    ld e, [hl]
    ld a, [bc]
    dec l
    nop
    nop
    inc bc
    or l
    inc bc
    ld c, a
    ret z

    db $e3
    ld [$0026], sp
    dec b
    ld a, [hl-]
    ld b, b
    ld a, [hl-]
    ld d, b
    ld b, c
    inc d
    inc d
    dec l
    adc [hl]
    ld h, [hl]
    ret z

    ld h, b
    dec h
    ld h, d
    ld a, [bc]
    dec l
    inc [hl]
    nop
    inc bc
    or l
    inc bc
    ld c, a
    ret z

    db $e3
    ld [$0026], sp
    ld b, $4e
    ld d, h
    ld c, [hl]
    ld h, h
    ld d, l
    inc d
    ld [bc], a
    dec l
    pop de
    ld [hl], a
    xor c
    ld h, h
    nop
    ld h, a
    ld a, [bc]
    dec l
    inc [hl]
    dec hl
    inc bc
    or l
    ld b, e
    ld c, a
    adc $e3
    ld [$002e], sp
    rlca
    inc l
    jr nc, jr_00e_44cb

    dec hl
    ld [hl-], a
    dec d
    dec d
    dec l
    ld b, d
    ld d, l
    ld e, b
    ld e, a
    ld c, e
    ld h, b
    ld hl, $0027
    nop
    inc bc
    or c
    ccf
    rrca
    ret z

    add e
    ld [$0032], sp
    ld [$3f3b], sp
    ld d, b
    ld a, [hl-]
    ld b, c
    dec d
    dec d
    dec l
    adc a
    ld h, [hl]
    adc [hl]
    ld h, d
    inc d
    ld h, h
    ld hl, $9127
    nop
    inc bc
    or c
    ccf
    rrca
    ret z

    add e
    ld [$0032], sp
    add hl, bc
    ld c, a
    ld d, e
    ld h, h
    ld c, [hl]
    ld d, l
    dec d
    dec d
    dec l
    jp nc, $fa77

    ld [hl], l

jr_00e_44cb:
    dec bc
    ld a, b
    ld hl, $9127
    scf
    inc bc
    or c
    ld a, a
    rrca
    adc $83
    ld [$0032], sp
    ld a, [bc]
    dec l
    ld e, $23
    dec l
    inc d
    rlca
    rlca
    rst $38
    dec [hl]
    ld d, l
    dec b
    ld c, e
    add sp, $4b
    ld hl, $0051
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld [hl-], a
    inc d
    scf
    ld e, $19
    rlca
    rlca
    ld a, b
    ld c, b
    ld d, l
    ld b, c
    ld c, h
    xor $4c
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc a
    dec l
    ld [hl-], a
    ld b, [hl]
    ld d, b
    rlca
    ld [bc], a

jr_00e_451a:
    dec l
    and b
    ld [hl], a
    ld e, l
    ld c, l
    inc [hl]
    ld c, a
    ld e, l
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld b, e
    jr c, jr_00e_451a

    ld b, e
    jr z, jr_00e_456f

    nop
    dec c
    jr z, jr_00e_4554

    ld e, $32
    inc d
    rlca
    inc bc
    rst $38
    inc [hl]
    ld d, l
    ld [bc], a
    ld [hl], a
    or h
    ld [hl], a
    jr z, @+$53

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $2d
    add hl, de
    ld [hl-], a
    inc hl
    add hl, de
    rlca
    inc bc
    ld a, b
    ld b, a

jr_00e_4554:
    ld d, l
    rlca
    ld a, b
    ret


    ld a, b
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld b, c
    ld d, b
    jr z, @+$4d

    dec l
    rlca
    inc bc
    dec l

jr_00e_456f:
    sbc a
    ld [hl], a
    dec de
    ld a, c
    ld a, [hl+]
    ld a, e
    rra
    nop
    nop
    nop
    nop
    inc h
    ld b, e
    jr @-$3e

    jp $0608


    nop
    db $10
    jr z, jr_00e_45b2

    jr z, jr_00e_45bf

    inc hl
    nop
    ld [bc], a
    rst $38
    scf
    ld d, l
    push af
    ld b, l
    and $46
    stop
    nop
    nop
    inc bc
    ld a, [hl+]
    inc bc
    ld [$43c0], sp
    inc c
    ld a, [bc]
    nop
    ld de, $3c3f
    scf
    ld b, a
    ld [hl-], a
    nop
    ld [bc], a
    ld a, b
    ld [hl], c
    ld h, [hl]
    add $76
    dec hl
    ld a, b
    db $10
    inc e
    nop
    nop
    inc bc

jr_00e_45b2:
    ld a, [hl+]
    inc bc
    ld [$43c0], sp
    inc c
    ld a, [bc]
    nop
    ld [de], a
    ld d, e
    ld d, b
    ld c, e
    ld e, e

jr_00e_45bf:
    ld b, [hl]
    nop
    ld [bc], a
    dec l
    xor h
    ld [hl], a
    sub d
    ld a, b
    pop de
    ld a, d
    db $10
    inc e
    ld h, d
    nop
    inc bc
    ld a, [hl+]
    ld b, e
    ld [$43c0], sp
    inc c
    ld a, [bc]
    nop
    inc de
    ld e, $38
    inc hl
    ld c, b
    add hl, de
    nop
    nop
    rst $38
    add hl, sp
    ld d, l
    inc bc
    ld d, b
    ld hl, sp+$50
    ld hl, $0027
    nop
    nop
    and b
    cpl
    adc b
    ret


    jp nz, Jump_000_0208

    nop
    inc d
    scf
    ld d, c
    inc a
    ld h, c
    ld [hl-], a
    nop
    nop
    ld e, d
    ld [hl], h
    ld h, [hl]
    ld sp, $0a51
    ld d, e
    ld hl, $6227
    nop
    nop
    and b
    ld a, a
    adc b
    ret


    jp nz, Jump_000_0208

    nop
    dec d
    jr z, jr_00e_464d

    ld e, $46
    rra
    nop
    ld [bc], a
    rst $38
    ld a, [hl-]
    ld d, l
    ld b, c
    ld c, b
    db $10
    ld c, c
    ld b, b
    dec l
    nop
    nop
    nop
    ld a, [hl+]
    inc bc
    ld [$42c0], sp
    inc c
    ld a, [bc]
    nop
    ld d, $41

jr_00e_462c:
    ld e, d
    ld b, c
    ld h, h
    dec a
    nop
    ld [bc], a
    ld e, d
    and d
    ld [hl], a
    add [hl]
    ld b, e
    ld [hl], a
    ld b, l
    ld b, b
    dec l
    dec hl
    nop
    nop
    ld a, [hl+]
    ld b, e
    ld [$42c0], sp
    inc c
    ld a, [bc]
    nop
    rla
    inc hl

jr_00e_4648:
    inc a
    inc l
    scf
    jr z, @+$05

jr_00e_464d:
    inc bc
    rst $38
    ld a, $55
    ld a, [hl-]
    ld [hl], b
    dec sp
    ld [hl], c
    inc hl
    dec hl
    nop
    nop
    nop
    and b
    inc bc
    jr jr_00e_462c

    add d
    adc b
    ld [hl+], a
    nop
    jr jr_00e_46a0

    ld d, l
    ld b, l
    ld d, b
    ld b, c
    inc bc
    inc bc
    ld e, d
    sub e
    ld [hl], a
    sbc d
    ld d, [hl]
    ld [hl], l
    ld e, b
    inc hl
    dec hl
    jr z, jr_00e_4675

jr_00e_4675:
    nop
    and b
    ld b, e
    jr jr_00e_4648

    add d
    adc b
    ld [hl+], a
    nop
    add hl, de
    inc hl
    scf
    ld e, $5a
    ld [hl-], a
    rla
    rla
    cp [hl]
    ld d, d
    ld d, l
    ld d, l
    ld c, l
    ld c, c
    ld c, [hl]
    ld d, h
    dec l
    nop
    nop
    nop
    or c
    add e
    adc l
    pop bc
    jp $4218


    nop
    ld a, [de]
    inc a
    ld e, d
    scf
    ld h, h
    ld e, d

jr_00e_46a0:
    rla
    rla
    ld c, e
    ld a, d
    ld [hl], a
    pop bc
    ld c, [hl]
    or c
    ld d, b
    ld d, h
    dec l
    ld d, [hl]
    nop
    nop
    or c
    jp $c18d


    jp $4218


    nop
    dec de
    ld [hl-], a
    ld c, e
    ld d, l
    jr z, jr_00e_46da

    inc b
    inc b
    rst $38
    ld e, l
    ld d, l
    dec b
    ld e, e
    ld a, [hl+]
    ld e, h
    ld a, [bc]
    nop
    nop
    nop
    nop
    and h
    inc bc
    dec c
    adc $c2
    adc b
    ld h, $00
    inc e
    ld c, e
    ld h, h
    ld l, [hl]
    ld b, c
    scf
    inc b
    inc b

jr_00e_46da:
    ld e, d
    and e
    ld h, [hl]
    xor [hl]
    ld e, h
    ld c, l
    ld e, [hl]
    ld a, [bc]
    inc e
    nop
    nop
    nop
    and h
    ld b, e
    dec c
    adc $c2
    adc b
    ld h, $00
    dec e
    scf
    cpl
    inc [hl]
    add hl, hl
    jr z, jr_00e_46f8

    inc bc
    db $eb
    dec sp

jr_00e_46f8:
    ld d, l
    pop bc
    ld e, h
    or e
    ld e, l
    dec l
    ld hl, $0000
    inc bc
    and b
    inc hl
    adc b
    pop bc
    add e
    ld [$0002], sp
    ld e, $46
    ld a, $43
    jr c, jr_00e_4747

    inc bc
    inc bc
    ld a, b
    ld [hl], l
    ld h, [hl]
    ld [hl], a
    ld d, l
    db $fd
    ld d, [hl]
    dec l
    ld hl, $000a
    inc bc
    ldh [$3f], a
    adc b
    pop bc
    add e
    ld [$0002], sp
    rra
    ld e, d
    ld d, d
    ld d, a
    ld c, h
    ld c, e
    inc bc
    inc b
    dec l
    jp nz, $fa77

    ld e, l
    inc hl
    ld h, b
    ld hl, $270a
    ld [hl+], a
    inc bc
    pop af
    rst $38
    adc a
    rst $00
    and e
    adc b
    ld [hl-], a
    nop
    jr nz, jr_00e_4772

    add hl, sp
    jr z, @+$34

jr_00e_4747:
    jr z, jr_00e_474c

    inc bc
    db $eb
    inc a

jr_00e_474c:
    ld d, l
    sbc a
    ld b, l
    sbc l
    ld b, [hl]
    dec hl
    ld hl, $0000
    inc bc
    ldh [rNR44], a
    adc b
    pop bc
    add e
    ld [$0002], sp
    ld hl, $483d
    add hl, sp
    ld b, c
    scf
    inc bc
    inc bc
    ld a, b
    db $76
    ld h, [hl]
    ld a, a
    ld d, e
    call c, $2b54
    ld hl, $001e
    inc bc

jr_00e_4772:
    ldh [$3f], a
    adc b
    pop bc
    add e
    ld [$0002], sp
    ld [hl+], a
    ld d, c
    ld e, h
    ld c, l
    ld d, l
    ld c, e
    inc bc
    inc b
    dec l
    jp Jump_00e_6e77


    ld c, d
    sbc [hl]
    ld c, h
    ld hl, $281e
    dec h
    inc bc
    pop af
    rst $38
    adc a
    rst $00
    and e
    adc b
    ld [hl-], a
    nop
    inc hl
    ld b, [hl]
    dec l
    jr nc, jr_00e_47be

    inc a
    nop
    nop
    sub [hl]
    ld b, h
    ld d, l
    db $fc
    ld b, [hl]
    rst $20
    ld b, a
    ld bc, $002d
    nop
    inc b
    or c
    ccf
    xor a
    pop af
    and a
    jr c, jr_00e_4814

    nop
    inc h
    ld e, a
    ld b, [hl]
    ld c, c
    inc a
    ld d, l
    nop
    nop
    add hl, de
    add c
    ld h, [hl]
    ld h, l

jr_00e_47be:
    ld l, b
    jp nc, Jump_000_2f69

    inc bc
    ld l, e
    db $76
    inc b
    or c
    ld a, a
    xor a
    pop af
    and a
    jr c, jr_00e_4830

    nop
    dec h
    ld h, $29
    jr z, jr_00e_4814

    ld b, c
    inc d
    inc d
    cp [hl]
    ccf
    ld h, [hl]
    pop af
    ld c, b
    ld d, c
    ld c, d
    inc [hl]
    daa
    nop
    nop
    nop
    and b
    inc bc
    ld [$e3c8], sp
    ld [$0002], sp
    ld h, $49
    ld c, h
    ld c, e
    ld h, h
    ld h, h
    inc d
    inc d
    ld c, e
    or d
    ld [hl], a
    or [hl]
    ld c, d
    db $d3
    ld c, h
    inc [hl]
    daa
    ld h, d
    ld l, $00
    and b
    ld b, e
    ld [$e3c8], sp
    ld [$0002], sp
    daa
    ld [hl], e
    dec l
    inc d
    inc d
    add hl, de
    nop
    nop
    xor d
    ld c, h
    ld d, l
    ld e, l
    ld h, d
    ld b, d

jr_00e_4814:
    ld h, e
    cpl

jr_00e_4816:
    nop
    nop
    nop
    inc b
    or c
    ccf
    xor a
    pop af
    and e
    jr c, jr_00e_4884

    nop
    jr z, @-$72

    ld b, [hl]
    dec l
    dec l
    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld l, l
    ld h, [hl]
    ld a, e
    ld h, e
    db $fc

jr_00e_4830:
    ld h, h
    cpl

jr_00e_4832:
    ld [hl-], a
    ld l, a
    inc bc
    inc b
    or c
    ld a, a
    xor a
    pop af
    and e
    jr c, jr_00e_48a0

    nop
    add hl, hl
    jr z, jr_00e_486e

    inc hl
    scf
    jr z, @+$05

    ld [bc], a
    rst $38
    ld [hl], $55
    ld b, $6f
    and $6f
    adc l

jr_00e_484e:
    nop
    nop
    nop
    nop
    ld a, [hl+]
    inc bc
    jr jr_00e_4816

    ld b, d
    ld [$0002], sp
    ld a, [hl+]
    ld c, e
    ld d, b
    ld b, [hl]
    ld e, d
    ld c, e
    inc bc
    ld [bc], a
    ld e, d
    xor e
    ld [hl], a
    ld sp, $b757
    ld e, b
    adc l

jr_00e_486a:
    ld h, a
    inc l
    nop
    nop

jr_00e_486e:
    ld a, [hl+]
    ld b, e
    jr jr_00e_4832

    ld b, d
    ld [$0002], sp
    dec hl
    dec l
    ld [hl-], a
    scf
    ld e, $4b
    ld d, $03
    rst $38
    ld c, [hl]
    ld d, l
    db $76
    ld l, d
    ld d, [hl]

jr_00e_4884:
    ld l, e
    ld b, a

jr_00e_4886:
    nop
    nop
    nop
    inc bc
    inc h
    inc bc
    jr c, jr_00e_484e

    inc bc
    ld [$0006], sp
    inc l
    inc a
    ld b, c
    ld b, [hl]
    jr z, jr_00e_48ed

    ld d, $03
    ld a, b
    add h
    ld h, [hl]
    xor $6b
    db $10

jr_00e_48a0:
    ld l, l
    ld b, a
    ld c, l
    ld c, [hl]
    nop
    inc bc
    inc h
    inc bc
    jr c, jr_00e_486a

jr_00e_48aa:
    inc bc
    ld [$0006], sp
    dec l
    ld c, e
    ld d, b
    ld d, l
    ld [hl-], a
    ld h, h
    ld d, $03
    dec l
    cp b
    ld [hl], a
    cp c
    ld l, l
    ldh [$6e], a
    ld c, [hl]
    ld c, a
    inc sp
    ld d, b
    inc bc
    and h
    ld b, e
    jr c, jr_00e_4886

jr_00e_48c6:
    inc bc
    ld [$0006], sp
    ld l, $23
    ld b, [hl]
    scf
    add hl, de
    scf
    rlca
    ld d, $be
    ld b, [hl]
    ld d, l
    add d
    ld [hl], c
    adc h
    ld [hl], d
    ld a, [bc]
    nop
    nop
    nop
    nop
    and h
    inc bc
    jr c, jr_00e_48aa

    add e
    ld [$0006], sp
    cpl
    inc a
    ld e, a
    ld d, b

jr_00e_48ea:
    ld e, $50
    rlca

jr_00e_48ed:
    ld d, $4b
    add b
    ld [hl], a
    inc c
    ld e, c
    sbc [hl]
    ld e, d
    ld a, [bc]
    ld c, [hl]
    adc l
    nop
    nop
    and h
    ld b, e
    jr c, jr_00e_48c6

    add e
    ld [$0006], sp
    jr nc, jr_00e_4940

    scf
    ld [hl-], a
    dec l
    jr z, jr_00e_4910

    inc bc
    cp [hl]
    ld c, e
    ld d, l
    pop bc
    ld [hl], c
    cp d

jr_00e_4910:
    ld [hl], d
    ld hl, $0032
    nop
    nop
    jr nz, jr_00e_491b

    jr c, jr_00e_48ea

    inc bc

jr_00e_491b:
    jr z, jr_00e_495f

    nop
    ld sp, $4146
    inc a
    ld e, d
    ld e, d
    rlca
    inc bc

jr_00e_4926:
    ld c, e
    adc d
    ld [hl], a
    xor c
    ld b, [hl]
    adc a
    ld c, b
    ld hl, $3032
    ld e, l
    nop
    ld a, [hl+]
    ld b, e
    jr c, jr_00e_4926

    ld b, e
    jr z, jr_00e_497b

    nop
    ld [hl-], a
    ld a, [bc]
    scf
    add hl, de
    ld e, a
    dec l

jr_00e_4940:
    inc b
    inc b
    rst $38
    ld d, c
    ld d, l
    inc a
    ld l, h
    jp c, Jump_000_0a6c

    nop
    nop
    nop
    nop
    and b
    inc bc
    ld [$02ce], sp
    adc b
    ld b, $00
    inc sp
    inc hl
    ld d, b
    ld [hl-], a
    ld a, b
    ld b, [hl]
    inc b
    inc b
    ld [hl-], a

jr_00e_495f:
    sbc c
    ld [hl], a
    jp z, $2a44

    ld b, [hl]
    ld a, [bc]
    dec l
    ld e, e
    nop
    nop
    and b
    ld b, e
    ld [$02ce], sp
    adc b
    ld b, $00
    inc [hl]
    jr z, jr_00e_49a2

    inc hl
    ld e, d
    jr z, jr_00e_4979

jr_00e_4979:
    nop
    rst $38

jr_00e_497b:
    ld b, l
    ld d, l
    add hl, bc
    ld b, [hl]
    ld a, [hl+]
    ld b, a
    ld a, [bc]
    dec l
    nop
    nop
    nop
    and b
    adc a
    adc b
    pop bc
    jp nz, Jump_000_0208

    nop
    dec [hl]
    ld b, c
    ld b, [hl]
    inc a
    ld [hl], e
    ld b, c
    nop
    nop
    ld e, d
    sub h
    ld [hl], a
    ld l, b
    ld l, h
    rla
    ld l, [hl]
    ld a, [bc]
    dec l
    inc l
    ld h, a
    nop

jr_00e_49a2:
    and b
    rst $08
    adc b
    pop bc
    jp nz, Jump_000_0208

    nop
    ld [hl], $32
    inc [hl]
    jr nc, jr_00e_49e6

    ld [hl-], a
    dec d
    dec d
    cp [hl]
    ld d, b
    ld d, l
    inc e
    ld e, e
    daa
    ld e, h
    ld a, [bc]
    nop
    nop
    nop
    nop
    or c
    cp a
    rrca
    ret z

    jp nz, $3208

    nop
    scf
    ld d, b
    ld d, d
    ld c, [hl]
    ld d, l
    ld d, b
    dec d
    dec d
    ld c, e
    xor [hl]
    ld [hl], a
    ld h, h
    ld d, d
    ld d, c
    ld d, h
    ld a, [bc]
    daa
    ld [hl-], a
    nop
    nop
    or c
    rst $38
    rrca
    ret z

    jp nz, $3208

    nop
    jr c, jr_00e_4a0c

    ld d, b
    inc hl

jr_00e_49e6:
    ld b, [hl]
    inc hl
    ld bc, $be01
    ld c, d
    ld h, [hl]
    rst $10
    ld l, b
    inc [hl]
    ld l, d
    ld a, [bc]
    dec hl
    nop
    nop
    nop
    or c
    add e
    adc a
    ret


    add $88
    ld [hl+], a
    nop
    add hl, sp
    ld b, c
    ld l, c
    inc a
    ld e, a
    inc a
    ld bc, $4b01
    sub l
    ld [hl], a
    ld a, h
    ld b, d
    ld d, d

jr_00e_4a0c:
    ld b, h
    ld a, [bc]
    dec hl
    ld b, e
    ld [bc], a
    nop
    or c
    jp $c98f


    add $88
    ld [hl+], a
    nop
    ld a, [hl-]
    scf
    ld b, [hl]
    dec l
    inc a
    ld [hl-], a
    inc d
    inc d
    cp [hl]
    ld e, e
    ld d, l
    nop
    ld b, b
    daa
    ld b, c
    inc l
    ld l, $00
    nop
    dec b
    and b
    inc bc
    ld c, b
    ret z

    db $e3
    ld [$0002], sp
    dec sp
    ld e, d
    ld l, [hl]
    ld d, b
    ld e, a
    ld d, b
    inc d
    inc d
    ld c, e
    push de
    ld [hl], a
    dec [hl]
    ld h, a
    dec sp
    ld l, c
    ld l, $34
    dec hl
    inc h
    dec b
    and b
    ld b, e
    ld c, b
    add sp, -$1d
    ld [$0002], sp
    inc a
    jr z, jr_00e_4a87

    jr z, jr_00e_4ab1

    jr z, jr_00e_4a6e

    dec d
    rst $38
    ld c, l
    ld d, l
    ld a, c
    ld [hl], a
    ld e, h
    ld a, b
    sub c
    nop
    nop
    nop
    inc bc
    and b
    ccf
    ld [$82d0], sp
    jr z, jr_00e_4a7f

    nop

jr_00e_4a6e:
    dec a
    ld b, c
    ld b, c
    ld b, c
    ld e, d
    ld [hl-], a
    dec d
    dec d
    ld a, b
    add e
    ld h, [hl]
    ld [bc], a
    ld [hl], e
    ld h, [hl]
    ld [hl], h
    sub c
    ld e, a

jr_00e_4a7f:
    scf
    nop
    inc bc
    or c
    ccf
    rrca
    sub $86

jr_00e_4a87:
    jr z, jr_00e_4abb

    nop
    ld a, $5a
    ld d, l
    ld e, a
    ld b, [hl]
    ld b, [hl]
    dec d
    ld bc, $b92d
    ld [hl], a
    ret


    ld [hl], h
    or c
    db $76
    ld e, a
    scf
    inc bc
    ld [hl+], a
    inc bc
    or c
    ld a, a
    rrca
    sub $86
    jr z, jr_00e_4ad7

    nop
    ccf
    add hl, de
    inc d
    rrca
    ld e, d
    ld l, c
    jr @+$1a

    ret z

    ld c, c
    ld d, l

jr_00e_4ab1:
    sbc h
    ld [hl], d
    and l
    ld [hl], e
    ld h, h
    nop
    nop
    nop
    inc bc
    or c

jr_00e_4abb:
    inc bc
    rrca
    ldh a, [$87]
    jr c, jr_00e_4b04

    nop
    ld b, b
    jr z, jr_00e_4ae8

    ld e, $69
    ld a, b
    jr jr_00e_4ae2

    ld h, h
    sub c
    ld h, [hl]
    ld e, h
    ld c, b
    inc b
    ld c, d
    ld h, h
    add [hl]
    nop
    nop
    inc bc
    or c

jr_00e_4ad7:
    inc bc
    rrca
    ld hl, sp-$79
    jr c, jr_00e_4b20

    nop
    ld b, c
    scf
    ld [hl-], a
    dec l

jr_00e_4ae2:
    ld a, b
    add a
    jr jr_00e_4afe

    ld [hl-], a
    cp d

jr_00e_4ae8:
    ld [hl], a
    jr nc, jr_00e_4b5f

    dec [hl]
    db $76
    ld h, h
    add [hl]
    nop
    nop
    inc bc
    or c
    ld b, e
    rrca
    ld hl, sp-$79
    jr c, jr_00e_4b3c

    nop
    ld b, d
    ld b, [hl]
    ld d, b
    ld [hl-], a

jr_00e_4afe:
    inc hl
    inc hl
    ld bc, $b401
    ld e, b

jr_00e_4b04:
    ld d, l
    add c
    ld l, l
    sbc h
    ld l, [hl]
    ld [bc], a
    nop
    nop
    nop
    inc bc
    or c
    inc bc
    rrca
    adc $a6
    adc b
    ld [hl+], a
    nop
    ld b, e
    ld d, b
    ld h, h
    ld b, [hl]
    dec l
    ld [hl-], a
    ld bc, $5a01
    sub d

jr_00e_4b20:
    ld [hl], a
    sub e
    ld c, [hl]
    inc a
    ld d, b
    ld [bc], a

jr_00e_4b26:
    ld b, e
    dec hl
    nop
    inc bc
    or c
    inc bc
    rrca
    adc $a6
    adc b
    ld [hl+], a
    nop
    ld b, h
    ld e, d
    add d
    ld d, b
    scf
    ld b, c
    ld bc, $2d01
    pop bc

jr_00e_4b3c:
    ld [hl], a
    cp c
    ld c, a
    add sp, $51
    ld [bc], a

jr_00e_4b42:
    ld b, e
    dec hl
    nop
    inc bc
    or c
    ld b, e
    rrca
    adc $a6
    adc b
    ld [hl+], a
    nop
    ld b, l
    ld [hl-], a
    ld c, e
    inc hl
    jr z, jr_00e_4b9a

    ld d, $03
    rst $38
    ld d, h
    ld d, l
    ld e, [hl]
    ld l, a
    dec [hl]
    ld [hl], b
    ld d, $4a

jr_00e_4b5f:
    nop
    nop
    inc bc
    inc h
    inc bc
    jr c, jr_00e_4b26

    inc bc
    ld [$0006], sp
    ld b, [hl]
    ld b, c
    ld e, d
    ld [hl-], a
    scf
    ld d, l
    ld d, $03
    ld a, b
    sub a
    ld h, [hl]
    xor e
    ld [hl], b
    cp d
    ld [hl], c
    ld d, $4a
    inc hl
    nop
    inc bc
    inc h
    inc bc
    jr c, jr_00e_4b42

    inc bc
    ld [$0006], sp
    ld b, a
    ld d, b
    ld l, c
    ld b, c
    ld b, [hl]
    ld h, h
    ld d, $03
    dec l
    cp a
    ld [hl], a
    dec [hl]
    ld [hl], d
    inc c
    ld [hl], h
    ld c, a

jr_00e_4b96:
    ld c, [hl]
    inc sp
    ld c, e
    inc bc

jr_00e_4b9a:
    and h
    ld b, e
    jr c, @-$3e

    inc bc
    ld [$0006], sp
    ld c, b
    jr z, jr_00e_4bcd

    inc hl
    ld b, [hl]
    ld h, h
    dec d
    inc bc
    cp [hl]
    ld l, c
    ld d, l
    ld c, b
    ld l, a
    ld e, c
    ld [hl], b
    inc sp
    nop
    nop
    nop
    dec b
    inc h
    ccf
    jr @-$3e

    add e
    ld [$0016], sp
    ld c, c
    ld d, b
    ld b, [hl]
    ld b, c
    ld h, h
    ld a, b
    dec d
    inc bc
    inc a
    call Call_000_3f66
    ld b, h
    ld sp, hl
    ld b, l

jr_00e_4bcd:
    inc sp
    jr nc, jr_00e_4bf3

    nop
    dec b
    inc h
    ld a, a
    jr jr_00e_4b96

    add e
    ld [$0016], sp
    ld c, d
    jr z, jr_00e_4c2d

    ld h, h
    inc d
    ld e, $05
    inc b
    rst $38
    ld d, [hl]
    ld d, l
    add h
    ld d, a
    xor l
    ld e, b
    ld hl, $0000
    nop
    inc bc
    and c
    inc bc
    rrca
    adc $2e

jr_00e_4bf3:
    ret z

    ld [hl+], a
    nop
    ld c, e
    scf
    ld e, a
    ld [hl], e
    inc hl
    dec l
    dec b
    inc b
    ld a, b
    add [hl]
    ld h, [hl]
    sub a
    ld c, d
    ld c, d
    ld c, h
    ld hl, $006f
    nop
    inc bc
    and c
    inc bc
    rrca
    adc $2e
    ret z

    ld [hl+], a
    nop
    ld c, h
    ld d, b
    ld l, [hl]
    add d
    dec l
    scf
    dec b
    inc b
    dec l
    or c
    ld h, [hl]
    ld d, b
    ld e, [hl]
    push hl
    ld e, a
    ld hl, $006f
    nop
    inc bc
    or c
    ld b, e
    rrca
    adc $2e
    ret z

    ld [hl+], a

jr_00e_4c2d:
    nop
    ld c, l
    ld [hl-], a
    ld d, l
    scf
    ld e, d
    ld b, c
    inc d
    inc d
    cp [hl]
    sbc b
    ld h, [hl]
    inc e
    ld c, e
    bit 1, [hl]
    inc [hl]
    nop
    nop
    nop
    nop
    ldh [$03], a
    ld [$e3c0], sp
    ld [$0002], sp
    ld c, [hl]
    ld b, c
    ld h, h
    ld b, [hl]
    ld l, c
    ld d, b
    inc d
    inc d
    inc a
    ret nz

    ld [hl], a
    sbc h
    ld c, h
    ld d, e
    ld c, a
    inc [hl]
    daa
    rla
    dec l
    nop
    ldh [rSCX], a
    ld [$e3c0], sp
    ld [$0002], sp
    ld c, a
    ld e, d
    ld b, c
    ld b, c
    rrca
    jr z, jr_00e_4c82

    jr jr_00e_4c2d

    ld h, e
    ld d, l
    dec hl
    ld b, a
    xor $47
    ld e, l
    nop
    nop
    nop
    nop
    and b
    cp a
    ld [$e3fe], sp
    jr c, jr_00e_4cf4

    nop

jr_00e_4c82:
    ld d, b
    ld e, a
    ld c, e
    ld l, [hl]
    ld e, $50
    dec d
    jr jr_00e_4cd6

    and h
    ld [hl], a
    ld c, b
    ld c, l
    ld b, l
    ld c, a
    ld e, l
    ld [hl-], a
    dec e
    nop
    nop
    or c
    rst $38
    rrca
    cp $e3
    jr c, jr_00e_4d10

    nop
    ld d, c
    add hl, de
    inc hl
    ld b, [hl]
    dec l
    ld e, a
    rla
    rla
    cp [hl]
    ld e, c
    ld d, l
    jp nc, $a15c

    ld e, l
    ld hl, $0000
    nop
    nop
    jr nz, jr_00e_4cb7

    adc b
    pop hl
    ld b, e

jr_00e_4cb7:
    jr jr_00e_4cfb

    nop
    ld d, d
    ld [hl-], a
    inc a
    ld e, a
    ld b, [hl]
    ld a, b
    rla
    rla
    inc a
    and c
    ld h, [hl]
    add hl, bc
    ld h, l
    adc a
    ld h, [hl]
    ld hl, $5431
    nop
    nop
    jr nz, jr_00e_4d13

    adc b
    pop hl
    ld b, e
    jr jr_00e_4d17

    nop

jr_00e_4cd6:
    ld d, e
    inc [hl]
    ld b, c
    scf
    inc a
    ld a, [hl-]
    nop
    ld [bc], a
    dec l
    ld e, [hl]
    ld h, [hl]
    sbc c
    ld l, a
    jr nc, jr_00e_4d56

    ld b, b
    inc e
    nop
    nop
    nop
    xor [hl]
    inc bc
    ld [$c3c0], sp
    ld [$000e], sp
    ld d, h
    inc hl

jr_00e_4cf4:
    ld d, l
    dec l
    ld c, e
    inc hl
    nop
    ld [bc], a
    cp [hl]

jr_00e_4cfb:
    ld h, b
    ld h, [hl]
    db $d3
    ld [hl], l
    ld de, $4077
    nop
    nop
    nop
    nop
    xor b
    inc bc
    ld [$83c0], sp
    inc c
    dec bc
    nop
    ld d, l
    inc a

jr_00e_4d10:
    ld l, [hl]
    ld b, [hl]
    ld h, h

jr_00e_4d13:
    inc a
    nop
    ld [bc], a
    dec l

jr_00e_4d17:
    sbc [hl]
    ld [hl], a
    nop
    ld b, b
    rst $10
    ld b, c
    ld b, b
    dec l
    rra
    nop
    nop
    xor b
    ld b, e
    ld [$83c0], sp
    inc c
    dec bc
    nop
    ld d, [hl]
    ld b, c
    dec l
    scf
    dec l
    ld b, [hl]
    dec d
    dec d
    cp [hl]
    ld h, h
    ld h, [hl]
    and d
    ld l, d
    pop af
    ld l, e
    dec e
    nop
    nop
    nop
    nop
    ldh [$bf], a
    ld [$82c0], sp
    ld [$0032], sp
    ld d, a
    ld e, d

jr_00e_4d48:
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld e, a
    dec d
    add hl, de
    ld c, e
    or b
    ld [hl], a
    rst $20
    ld c, b
    sbc [hl]
    ld c, d
    dec e

jr_00e_4d56:
    dec l
    ld a, $00
    nop
    ldh [rIE], a
    ld [$82c0], sp
    ld [$0032], sp
    ld e, b
    ld d, b
    ld d, b
    ld [hl-], a
    add hl, de
    jr z, jr_00e_4d6c

    inc bc
    cp [hl]
    ld e, d

jr_00e_4d6c:
    ld d, l
    ld a, [hl+]
    ld e, c
    ld e, b
    ld e, d
    ld bc, $0032
    nop
    nop
    and b
    nop
    sbc b
    pop bc
    ld a, [hl+]
    ld c, b
    ld [bc], a
    nop
    ld e, c
    ld l, c
    ld l, c
    ld c, e
    ld [hl-], a
    ld b, c
    inc bc
    inc bc
    ld c, e
    sbc l
    ld [hl], a
    adc e
    ld e, a
    inc d
    ld h, c
    ld bc, $8b32
    nop
    nop
    and b
    ld b, b
    sbc b
    pop bc
    ld a, [hl+]
    ld c, b
    ld [bc], a
    nop
    ld e, d
    ld e, $41
    ld h, h
    jr z, @+$2f

    dec d
    dec d
    cp [hl]
    ld h, c
    ld d, l
    inc de
    ld l, [hl]
    pop hl
    ld l, [hl]
    ld hl, $006e
    nop
    dec b
    jr nz, jr_00e_4def

    ld [$4be0], sp
    ld c, b
    inc de
    nop
    ld e, e
    ld [hl-], a
    ld e, a
    or h
    ld b, [hl]
    ld d, l
    dec d
    add hl, de
    inc a
    bit 6, a
    ld b, d
    ld h, h
    ld e, c
    ld h, [hl]
    ld l, [hl]
    jr nc, jr_00e_4d48

    ld a, $05
    jr nz, jr_00e_4e4b

    ld [$4be0], sp
    ld c, b
    inc de
    nop
    ld e, h
    ld e, $23
    ld e, $50
    ld h, h
    ld [$be03], sp
    ld e, a
    ld d, l
    or h
    ld [hl], b
    ld a, a
    ld [hl], c
    ld a, d
    ld l, l
    ld h, l
    nop
    inc bc
    jr nz, jr_00e_4de8

jr_00e_4de8:
    sbc b
    pop de
    ld a, [bc]
    ld l, d
    ld [bc], a
    nop
    ld e, l

jr_00e_4def:
    dec l
    ld [hl-], a
    dec l
    ld e, a
    ld [hl], e
    ld [$5a03], sp
    ld a, [hl]
    ld [hl], a
    sbc a
    ld [hl], b
    dec d
    ld [hl], d
    ld a, d
    ld l, l
    ld h, l
    nop
    inc bc
    jr nz, jr_00e_4e04

jr_00e_4e04:
    sbc b
    pop de
    ld a, [bc]
    ld l, d
    ld [bc], a
    nop
    ld e, [hl]
    inc a
    ld b, c
    inc a
    ld l, [hl]
    add d
    ld [$2d03], sp
    cp [hl]
    ld [hl], a
    ld e, $5b
    ld e, a
    ld e, h
    ld a, d
    ld l, l
    ld h, l
    nop
    inc bc
    or c
    ld b, e
    sbc a
    pop de
    adc [hl]
    ld l, d
    ld [hl+], a
    nop
    ld e, a
    inc hl
    dec l
    and b
    ld b, [hl]
    ld e, $05
    inc b
    dec l
    ld l, h
    ld [hl], a
    adc d
    ld b, c
    inc bc
    ld b, e
    ld hl, $0067
    nop
    nop
    and b
    inc bc
    ld [$8ace], sp
    ret z

    ld [hl+], a
    nop
    ld h, b
    inc a
    jr nc, jr_00e_4e73

    ld a, [hl+]
    ld e, d
    jr jr_00e_4e62

    cp [hl]

jr_00e_4e4b:
    ld h, [hl]
    ld h, [hl]
    sub d
    ld e, h
    pop hl
    ld e, l
    ld bc, $005f
    nop
    nop
    or c
    inc bc
    rrca
    ldh a, [$87]
    ld a, [hl-]
    ld b, e
    nop
    ld h, c
    ld d, l
    ld c, c
    ld b, [hl]

jr_00e_4e62:
    ld b, e
    ld [hl], e
    jr jr_00e_4e7e

    ld c, e
    and l
    ld [hl], a
    db $ec
    ld d, h
    and e
    ld d, [hl]
    ld bc, $325f
    ld e, l
    nop
    or c

jr_00e_4e73:
    ld b, e
    rrca
    ldh a, [$87]
    ld a, [hl-]
    ld b, e
    nop
    ld h, d
    ld e, $69
    ld e, d

jr_00e_4e7e:
    ld [hl-], a
    add hl, de
    dec d
    dec d
    pop hl
    ld [hl], e
    ld d, l
    add d
    ld b, a
    ld a, l
    ld c, b
    sub c
    dec hl
    nop
    nop
    nop
    and h
    ccf
    ld [$02c0], sp
    ld [$0036], sp
    ld h, e
    scf
    add d
    ld [hl], e
    ld c, e
    ld [hl-], a
    dec d
    dec d
    inc a
    adc $77
    and c
    ld h, c
    and c
    ld h, e
    sub c
    dec hl
    dec bc
    nop
    nop
    and h
    ld a, a
    ld [$02c0], sp
    ld [$0036], sp
    ld h, h
    jr z, jr_00e_4ed3

    ld [hl-], a
    ld h, h
    scf
    rla
    rla
    cp [hl]
    ld h, a
    ld d, l
    ld e, a
    ld c, c
    db $10
    ld c, d
    ld hl, $0067
    nop
    nop
    jr nz, jr_00e_4ec9

    adc b

jr_00e_4ec9:
    pop hl
    ld c, e
    ld e, b
    ld b, d
    nop
    ld h, l
    inc a
    ld [hl-], a
    ld b, [hl]
    adc h

jr_00e_4ed3:
    ld d, b
    rla
    rla
    inc a
    sub [hl]
    ld d, l
    ld c, $67
    nop
    ld l, b
    ld hl, $3167
    nop
    nop
    jr nz, jr_00e_4f25

    adc b
    pop hl
    bit 3, b
    ld b, d
    nop
    ld h, [hl]
    inc a
    jr z, jr_00e_4f3e

    jr z, jr_00e_4f2c

    ld d, $18
    ld e, d
    ld h, d
    ld [hl], a
    cp c
    ld d, [hl]
    and a
    ld e, b
    adc h
    ld e, a
    nop
    nop
    dec b
    jr nz, jr_00e_4f03

    ld [$1bf0], sp

jr_00e_4f03:
    ld l, b
    ld [bc], a
    nop
    ld h, a
    ld e, a
    ld e, a
    ld d, l
    scf
    ld a, l
    ld d, $18

jr_00e_4f0e:
    dec l
    call nc, $f277
    ld d, c
    or l
    ld d, e
    adc h
    ld e, a
    nop
    nop
    dec b
    jr nz, jr_00e_4f5f

    jr c, jr_00e_4f0e

    dec de
    ld l, b
    ld [hl+], a
    nop
    ld l, b
    ld [hl-], a
    ld [hl-], a

jr_00e_4f25:
    ld e, a
    inc hl
    jr z, jr_00e_4f2d

    inc b
    cp [hl]
    ld d, a

jr_00e_4f2c:
    ld d, l

jr_00e_4f2d:
    call c, $f760
    ld h, c
    dec l
    nop
    nop
    nop
    nop
    or c
    ccf
    rrca
    adc $a2
    ld [$0022], sp

jr_00e_4f3e:
    ld l, c
    inc a
    ld d, b
    ld l, [hl]
    dec l
    ld [hl-], a
    inc b
    inc b
    ld c, e
    ld a, h
    ld h, [hl]
    and d
    ld l, [hl]
    ld d, $70
    ld a, l
    daa
    nop
    nop
    nop
    or c
    ld a, a
    rrca
    adc $a2
    ld [$0022], sp
    ld l, d
    ld [hl-], a
    ld a, b
    dec [hl]
    ld d, a

jr_00e_4f5f:
    inc hl
    ld bc, $2d01
    adc e
    ld [hl], a
    rst $20
    ld d, d
    sub [hl]
    ld d, h
    jr jr_00e_4fcb

    nop
    nop
    nop
    or c
    inc bc
    rrca
    ret nz

    add $08
    ld [hl+], a
    nop
    ld l, e
    ld [hl-], a
    ld l, c
    ld c, a
    ld c, h
    inc hl
    ld bc, $2d01
    adc h
    ld h, [hl]
    db $f4
    ld d, h
    add hl, hl
    ld d, [hl]
    inc b
    ld h, c
    nop
    nop
    nop
    or c
    inc bc
    rrca
    ret nz

    add $08
    ld [hl+], a
    nop
    ld l, h
    ld e, d
    scf
    ld c, e
    ld e, $3c
    nop
    nop
    dec l
    ld a, a
    ld [hl], a
    ld h, h
    ld d, h
    jr nz, jr_00e_4ff7

    inc hl
    jr nc, jr_00e_4fa4

jr_00e_4fa4:
    nop
    nop
    or l
    ld a, a
    adc a
    rst $00
    and d
    ld [$0036], sp
    ld l, l
    jr z, jr_00e_4ff2

    ld e, a
    inc hl
    inc a
    inc bc
    inc bc
    cp [hl]
    ld [hl], d
    ld h, [hl]
    ld [de], a
    ld h, a
    ld a, [hl-]
    ld l, b
    ld hl, $007b
    nop
    nop
    jr nz, jr_00e_4fc4

jr_00e_4fc4:
    adc b
    pop bc
    ld a, [hl+]
    ld c, b
    ld [bc], a
    nop
    ld l, [hl]

jr_00e_4fcb:
    ld b, c
    ld e, d
    ld a, b
    inc a
    ld d, l
    inc bc
    inc bc
    inc a
    xor l
    ld [hl], a
    ld e, [hl]
    ld l, d
    ret nz

    ld l, e
    ld hl, $7c7b
    nop
    nop
    jr nz, @+$42

    adc b
    pop bc
    ld a, [hl+]
    ld c, b
    ld [bc], a
    nop
    ld l, a
    ld d, b
    ld d, l
    ld e, a
    add hl, de
    ld e, $04
    dec b
    ld a, b
    add a
    ld [hl], a
    ld l, c

jr_00e_4ff2:
    ld h, d
    scf
    ld h, h
    ld e, $00

jr_00e_4ff7:
    nop
    nop
    dec b
    ldh [$03], a
    adc b
    rst $08
    and d
    adc b
    ld [hl+], a
    nop
    ld [hl], b
    ld l, c
    add d
    ld a, b
    jr z, jr_00e_5035

    inc b
    dec b
    inc a
    call z, Call_000_0077
    ld b, b
    ld a, [de]
    ld b, d
    ld e, $17
    daa
    rra
    dec b
    pop af
    rst $38
    adc a
    rst $08
    and d
    adc b
    ld [hl-], a
    nop
    ld [hl], c
    ld a, [$0505]
    ld [hl-], a
    ld l, c
    nop
    nop
    ld e, $ff
    ld h, [hl]
    ld hl, sp+$4c
    cpl
    ld c, [hl]
    ld bc, $0027
    nop
    inc b
    or c
    ld a, a
    xor a

jr_00e_5035:
    pop af
    or a
    add hl, sp
    ld h, e
    nop
    ld [hl], d
    ld b, c
    scf
    ld [hl], e
    inc a
    ld h, h
    ld d, $16
    dec l
    and [hl]
    ld h, [hl]
    ld a, $7b
    sbc h
    ld a, h
    add h
    nop
    nop
    nop
    nop
    and h
    ld b, e
    jr c, @-$3e

    add d
    ld [$0006], sp
    ld [hl], e
    ld l, c
    ld e, a
    ld d, b
    ld e, d
    jr z, jr_00e_505d

jr_00e_505d:
    nop
    dec l
    xor a
    ld [hl], a
    or d
    ld b, d
    add hl, bc
    ld b, l
    inc b
    ld h, e
    nop
    nop
    nop
    or c
    ld a, a
    adc a
    rst $00
    and d
    adc b
    ld [hl-], a
    nop
    ld [hl], h
    ld e, $28
    ld b, [hl]
    inc a
    ld b, [hl]
    dec d
    dec d
    pop hl
    ld d, e
    ld d, l
    and [hl]
    ld d, a
    sbc b
    ld e, b
    sub c
    nop
    nop
    nop
    nop
    jr nz, jr_00e_50c7

    ld [$c2c0], sp
    ld [$0012], sp
    ld [hl], l
    scf
    ld b, c
    ld e, a
    ld d, l
    ld e, a
    dec d
    dec d
    ld c, e
    sbc e
    ld h, [hl]
    jp hl


    ld e, b
    ld h, a
    ld e, d
    sub c
    ld l, h
    nop
    nop
    nop
    jr nz, jr_00e_5123

    ld [$c2c0], sp
    ld [$0012], sp
    db $76
    dec l
    ld b, e
    inc a
    ccf
    ld [hl-], a
    dec d
    dec d
    pop hl
    ld l, a
    ld h, [hl]
    and l
    ld b, [hl]
    nop
    ld c, b
    ld b, b
    daa
    nop
    nop
    nop
    ld h, b
    ccf
    ld [$c2c0], sp
    ld [$0012], sp
    ld [hl], a

jr_00e_50c7:
    ld d, b
    ld e, h
    ld b, c
    ld b, h
    ld d, b
    dec d
    dec d
    inc a
    xor d
    ld [hl], a
    ld l, l
    ld c, b
    ld l, [hl]
    ld c, d
    ld b, b
    daa
    jr nc, jr_00e_50d9

jr_00e_50d9:
    nop
    ld h, b
    ld a, a
    ld [$c2c0], sp
    ld [$0012], sp
    ld a, b
    ld e, $2d
    scf
    ld d, l
    ld b, [hl]
    dec d
    dec d
    pop hl
    ld l, d
    ld h, [hl]
    cp c
    ld [hl], h
    xor a
    ld [hl], l
    ld hl, $0000
    nop
    dec b
    jr nz, jr_00e_5137

    adc b
    pop af
    jp Jump_00e_5338


    nop
    ld a, c
    inc a
    ld c, e
    ld d, l
    ld [hl], e
    ld h, h
    dec d
    jr jr_00e_5143

    rst $08
    ld h, [hl]
    ld [hl], h
    ld a, e
    rst $30
    ld a, h
    ld hl, $6a37
    nop
    dec b
    jr nz, jr_00e_5193

    adc b
    pop af
    jp Jump_00e_5338


    nop
    ld a, d
    jr z, jr_00e_514a

    ld b, c
    ld e, d
    ld h, h
    jr jr_00e_513a

    dec l

jr_00e_5123:
    adc b
    ld h, [hl]
    call z, $6f50
    ld d, d
    ld e, l
    ld [hl], b
    nop
    nop
    nop
    or c
    ld b, e
    xor a
    pop af
    add a
    jr c, jr_00e_5177

    nop
    ld a, e

jr_00e_5137:
    ld b, [hl]
    ld l, [hl]
    ld d, b

jr_00e_513a:
    ld l, c
    scf
    rlca
    ld [bc], a
    dec l
    cp e
    ld [hl], a
    dec bc
    ld [hl], d

jr_00e_5143:
    dec d
    ld [hl], h
    ld h, d
    nop
    nop
    nop
    nop

jr_00e_514a:
    inc h
    ld b, e
    ld [$c2c0], sp
    ld [$0006], sp
    ld a, h
    ld b, c
    ld [hl-], a
    inc hl
    ld e, a
    ld e, a
    add hl, de
    jr @+$2f

    adc c
    ld h, [hl]
    and e
    ld a, b
    ld e, h
    ld a, d
    ld bc, $008e
    nop
    nop
    or c
    ld a, a
    rrca
    ldh a, [$87]
    jr z, jr_00e_516f

    nop
    ld a, l

jr_00e_516f:
    ld b, c
    ld d, e
    add hl, sp
    ld l, c
    ld d, l
    rla
    rla
    dec l

jr_00e_5177:
    sbc h
    ld h, [hl]
    xor d
    ld h, d
    ld [hl], b
    ld h, h
    ld h, d
    dec hl
    nop
    nop
    nop
    or c
    ld b, e
    adc a
    pop af
    rst $00
    jr c, jr_00e_51eb

    nop
    ld a, [hl]
    ld b, c
    ld e, a
    add hl, sp
    ld e, l
    ld d, l
    inc d
    inc d
    dec l

jr_00e_5193:
    and a
    ld h, [hl]
    ld d, h
    ld h, b
    ld [bc], a
    ld h, d
    inc [hl]
    nop
    nop
    nop
    nop
    or c
    ld b, e
    rrca
    ldh a, [$a6]
    jr z, jr_00e_51c7

    nop
    ld a, a
    ld b, c
    ld a, l
    ld h, h
    ld d, l
    scf
    rlca
    rlca
    dec l
    ret z

    ld [hl], a
    sub h
    ld a, b
    xor a
    ld a, d
    dec bc
    nop
    nop
    nop
    dec b
    and h
    ld b, e
    dec c
    ret nz

    ld [bc], a
    ld [$0026], sp
    add b
    ld c, e
    ld h, h
    ld e, a
    ld l, [hl]

jr_00e_51c7:
    ld b, [hl]
    nop
    nop
    dec l
    db $d3
    ld [hl], a
    ld c, b
    ld l, l
    inc b
    ld l, a
    ld hl, $0000
    nop
    dec b
    ldh [$73], a
    adc b
    rst $00
    and d
    ld [$0022], sp
    add c
    inc d
    ld a, [bc]
    scf
    ld d, b
    inc d
    dec d
    dec d
    rst $38
    inc d
    ld h, [hl]
    add [hl]
    ld e, l

jr_00e_51eb:
    ld hl, sp+$5e
    sub [hl]
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    ld e, a
    ld a, l
    ld c, a
    ld d, c
    ld h, h
    dec d
    ld [bc], a
    dec l
    sub $77
    dec sp
    ld l, e
    add d
    ld l, l
    ld hl, $0000
    nop
    dec b
    and b
    ld a, a
    ret z

    pop bc
    and e
    ld [$0032], sp
    add e
    add d
    ld d, l
    ld d, b
    inc a
    ld e, a
    dec d
    add hl, de
    dec l
    db $db
    ld [hl], a
    jp hl


    ld h, h
    or d
    ld h, [hl]
    scf
    dec l
    nop
    nop
    dec b
    ldh [$7f], a
    add sp, -$2f
    add e
    jr z, jr_00e_5263

    nop
    add h
    jr nc, @+$32

    jr nc, jr_00e_5267

    jr nc, jr_00e_5239

jr_00e_5239:
    nop
    inc hl
    dec a
    ld d, l
    dec e
    ld b, l
    cp l
    ld b, l
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add l
    scf
    scf
    ld [hl-], a
    scf
    ld b, c
    nop
    nop
    dec l
    ld e, h
    ld d, l
    ld l, [hl]
    ld h, l
    add e
    ld h, [hl]
    ld hl, $0027
    nop
    nop
    and b

jr_00e_5263:
    inc bc
    ld [$c3c0], sp

jr_00e_5267:
    ld [$0002], sp
    add [hl]
    add d
    ld b, c
    inc a
    ld b, c
    ld l, [hl]
    dec d
    dec d
    dec l
    call nz, $4866
    ld l, e
    db $e4
    ld l, h
    ld hl, $6227
    scf
    nop
    and b
    ld a, a
    ld [$c3c0], sp
    ld [$0012], sp
    add a
    ld b, c
    ld b, c
    inc a
    add d
    ld l, [hl]
    rla
    rla
    dec l
    push bc
    ld h, [hl]
    push de
    ld l, b
    and h
    ld l, d
    ld hl, $6227
    ld d, h
    nop
    and b
    ld b, e
    adc b
    pop bc
    jp $4218


    nop
    adc b
    ld b, c
    add d
    inc a
    ld b, c
    ld l, [hl]
    inc d
    inc d
    dec l
    add $66
    db $eb
    ld h, [hl]
    ld c, h
    ld l, b
    ld hl, $6227
    inc [hl]
    nop
    and b
    ld b, e
    ld [$e3c0], sp
    ld [$0002], sp
    adc c
    ld b, c
    inc a
    ld b, [hl]
    jr z, jr_00e_530f

    nop
    nop
    dec l
    add d
    ld h, [hl]
    ld [$0659], sp
    ld e, d
    ld hl, $a09f
    nop
    nop
    jr nz, jr_00e_5347

    adc b
    pop af
    jp $4338


    nop
    adc d
    inc hl
    jr z, jr_00e_5342

    inc hl
    ld e, d
    dec b
    dec d
    dec l
    ld a, b
    ld d, l
    and $5e
    push bc
    ld e, a
    scf
    ld l, [hl]
    nop
    nop
    nop
    and b
    ccf
    ld [$03c0], sp
    ld [$0012], sp
    adc e
    ld b, [hl]
    inc a
    ld a, l
    scf
    ld [hl], e
    dec b
    dec d
    dec l
    rst $00
    ld h, [hl]
    ld [hl+], a
    ld h, b
    cp c
    ld h, c
    scf
    ld l, [hl]
    ld e, $00
    nop
    ldh [$7f], a
    dec c
    ret nz

    add e

jr_00e_530f:
    ld [$0012], sp
    adc h
    ld e, $50
    ld e, d
    scf
    dec l
    dec b
    dec d
    dec l
    ld [hl], a
    ld d, l
    ld d, l
    ld d, h
    dec d
    ld d, l
    ld a, [bc]
    ld l, d
    nop
    nop
    nop
    and b
    ccf
    ld [$03c0], sp
    ld [$0012], sp
    adc l
    inc a
    ld [hl], e
    ld l, c
    ld d, b
    ld b, [hl]
    dec b
    dec d
    dec l
    ret


Jump_00e_5338:
    ld h, [hl]
    ld l, a
    ld d, l
    ld hl, $0a57
    ld l, d
    ld b, a
    nop
    nop

jr_00e_5342:
    or [hl]
    ld a, a
    dec c
    ret nz

    add e

jr_00e_5347:
    ld [$0016], sp
    adc [hl]
    ld d, b
    ld l, c
    ld b, c
    add d
    inc a
    dec b
    ld [bc], a
    dec l
    jp z, Jump_00e_6677

    ld e, d
    scf
    ld e, h
    ld de, $0061
    nop
    dec b
    ld a, [hl+]
    ld b, e
    ld c, b
    ret nz

    ld h, e
    inc c
    ld a, [bc]
    nop
    adc a
    and b
    ld l, [hl]
    ld b, c
    ld e, $41
    nop
    nop
    add hl, de
    sbc d
    ld [hl], a
    xor [hl]
    ld e, e
    ld a, [hl-]
    ld e, l
    dec e
    add l
    sbc h
    nop
    dec b
    or c
    rst $38
    xor a
    rst $10
    xor a
    xor b
    ld [hl-], a
    nop
    sub b
    ld e, d
    ld d, l
    ld h, h
    ld d, l
    ld a, l
    add hl, de
    ld [bc], a
    inc bc
    rst $10
    ld [hl], a
    nop
    ld b, b
    ld b, b
    ld b, d
    ld b, b
    ld a, [hl-]
    nop
    nop
    dec b
    ld a, [hl+]
    ld a, a
    ld [$43c0], sp
    inc c
    ld a, [bc]
    nop
    sub c
    ld e, d
    ld e, d
    ld d, l
    ld h, h
    ld a, l
    rla
    ld [bc], a
    inc bc
    ret c

    ld [hl], a
    and l
    ld b, d
    adc l
    ld b, h
    ld d, h
    ld b, c
    nop
    nop
    dec b
    ld a, [hl+]
    ld b, e
    adc b
    pop bc
    ld b, e
    inc e
    ld c, d
    nop
    sub d
    ld e, d
    ld h, h
    ld e, d
    ld e, d
    ld a, l
    inc d
    ld [bc], a
    inc bc
    reti


    ld [hl], a
    add $7a
    and l
    ld a, h
    ld b, b
    ld d, e
    nop
    nop
    dec b
    ld a, [hl+]
    ld b, e
    ld [$63c0], sp
    inc c
    ld a, [bc]
    nop
    sub e
    add hl, hl
    ld b, b
    dec l
    ld [hl-], a
    ld [hl-], a
    ld a, [de]
    ld a, [de]
    dec l
    ld b, e
    ld d, l
    ccf
    ld d, c
    jr nz, jr_00e_5437

    inc hl
    dec hl
    nop
    nop
    dec b
    and b
    ccf
    ret z

    pop bc
    db $e3
    jr jr_00e_5403

    nop
    sub h
    dec a
    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    ld a, [de]
    ld a, [de]
    dec de
    sub b
    ld h, [hl]

jr_00e_53fd:
    add e
    ld d, d
    jp z, $2353

    dec hl

jr_00e_5403:
    ld d, [hl]
    nop
    dec b
    ldh [$3f], a
    ret z

    pop bc
    db $e3
    jr jr_00e_541f

    nop
    sub l
    ld e, e
    add [hl]
    ld e, a
    ld d, b
    ld h, h
    ld a, [de]
    ld [bc], a
    add hl, bc
    jp c, Jump_000_0877

    ld [hl], e
    ld h, $75
    inc hl
    dec hl

jr_00e_541f:
    ld d, [hl]
    ld h, c
    dec b
    ld [c], a
    ld a, a
    ret z

    pop bc
    db $e3
    jr jr_00e_545b

    nop
    sub [hl]
    ld l, d
    ld l, [hl]
    ld e, d
    add d
    sbc d
    jr jr_00e_544a

    inc bc
    call c, Call_000_2c77
    ld e, c

jr_00e_5437:
    ld a, [de]
    ld e, e
    ld e, l
    ld [hl-], a
    add c
    ld e, [hl]
    dec b
    or c
    ld a, a
    xor a
    pop af
    xor a
    jr c, jr_00e_54a8

    nop
    sub a
    ld h, h
    ld h, h
    ld h, h

jr_00e_544a:
    ld h, h
    ld h, h
    jr jr_00e_5466

    dec l
    ld b, b
    ld d, l
    jp nc, $e569

    ld l, d
    ld bc, $0000
    nop
    inc bc
    rst $38

jr_00e_545b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    ld de, $8000
    inc bc

jr_00e_5466:
    nop
    add b
    nop
    nop
    add b
    add hl, de
    call z, Call_000_1001
    nop
    add b
    ld b, $ed
    add b
    add hl, bc
    nop
    add b
    rra
    nop
    add b
    rrca
    jr nz, jr_00e_53fd

    dec c
    nop
    add b
    inc c
    nop
    add b
    dec bc
    nop
    add b
    dec b
    nop
    add b
    rlca
    nop
    rst $38
    ld bc, $8000
    ld a, [bc]
    nop
    add b
    add hl, de
    nop
    add b
    inc b
    nop
    add b
    dec de
    nop
    add b
    dec d
    nop
    add b
    ld e, $ee
    rst $38
    rla
    nop
    add b
    jr jr_00e_54a6

jr_00e_54a6:
    add b
    ld a, [de]

jr_00e_54a8:
    nop
    add b
    inc e
    nop
    add b
    ld d, $00
    add b
    ld e, $02
    jr nz, jr_00e_54c7

    nop
    add b
    inc d
    nop
    add b
    ld [de], a
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_00e_5505

    rla
    rst $38

jr_00e_54c7:
    ret nz

    jr jr_00e_550a

    and b
    ld c, $df
    inc b
    ld [bc], a
    nop
    add b
    inc e
    xor b
    ret nz

    inc h
    nop
    add b
    inc d
    ld a, [bc]
    ret nz

    rra
    ld c, b
    ld h, b
    jr nz, jr_00e_54e7

    ld b, b
    ld [de], a
    add b
    ret nz

    inc c
    xor $c0
    rla

jr_00e_54e7:
    ldh [rNR10], a
    ld e, $42
    rst $38
    ld hl, $6020
    dec c
    adc b
    jr nz, jr_00e_5505

    ldh [rLCDC], a
    nop
    nop
    nop
    inc b
    rst $38
    jr nc, jr_00e_54fc

jr_00e_54fc:
    nop
    nop
    ld b, $8f
    rst $38
    inc e
    jr nz, @-$3e

    ld [de], a

jr_00e_5505:
    and $dd
    nop
    nop
    nop

jr_00e_550a:
    ld a, [bc]
    db $dd
    ld h, b
    inc c
    adc b
    ret nz

    dec bc
    xor d
    ld bc, $111d
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $dd
    ld bc, $441a
    ld b, b
    rrca
    inc a
    ret nz

    nop
    add b
    stop
    nop
    nop
    dec e
    ldh [$80], a
    dec bc
    cp e
    ld bc, $ff0e
    rst $38
    dec c
    rst $38
    rst $38
    add hl, bc
    ld hl, sp+$40
    add hl, bc
    add b

jr_00e_553f:
    ld b, b
    jr @+$01

    add b
    ld c, $ff
    rst $38
    add hl, de
    ld [hl], a
    db $10
    jr nz, jr_00e_556b

    ldh [rNR43], a
    rst $38
    ld b, b
    nop
    nop
    nop
    ld c, $e0
    ld h, b
    inc h
    ld c, a
    db $10
    inc h
    adc b
    ld h, b
    rrca
    xor $01
    add hl, bc
    xor $08
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld h, b
    ld b, b
    rrca

jr_00e_556b:
    ld b, b
    add b
    ld d, $bb
    ld b, b
    jr @-$10

    ld bc, $9919
    db $10
    add hl, de
    inc a
    ld bc, $400f
    ret nz

    rrca
    jr nz, jr_00e_553f

    nop
    jr nz, jr_00e_55c2

    nop
    rst $38
    rst $38
    rra
    ldh a, [rSB]
    rra
    rst $38
    ld b, b
    ld c, $ff
    dec [hl]
    ld c, $68
    ld h, b
    ld a, [de]
    adc b
    ld h, b
    ld a, [de]
    db $10
    jr nz, jr_00e_55b2

    dec a
    add b
    ld a, [de]
    xor d
    rst $38
    rra
    xor $01
    dec e
    ldh [$80], a
    rla
    ld [de], a
    ld b, b
    ld e, $20
    ldh [$0e], a
    ld [hl], a
    ld h, b
    ld c, $00
    rst $38
    dec d
    xor $01

jr_00e_55b2:
    inc de
    rst $38
    ld bc, $6013
    add b
    nop
    nop
    nop
    dec bc
    sbc c
    jr nz, jr_00e_55c9

    xor a
    ld b, b
    dec bc

jr_00e_55c2:
    ld a, [hl+]
    db $10
    ld a, [de]
    add hl, hl
    add b
    inc c
    inc hl

jr_00e_55c9:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $80
    jr nz, jr_00e_55f0

    call z, Call_000_1601
    ld [hl], a
    ld b, b
    rra
    ld [$11c0], sp
    jr nz, @+$12

    ld hl, $40ff
    dec c
    xor $40
    dec e
    ld a, [$1e80]
    sbc c
    rst $38
    dec b
    ld d, l

jr_00e_55ed:
    ld bc, $8017

jr_00e_55f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $28
    rst $38
    rrca
    ld b, b
    add b
    jr nz, jr_00e_55ed

    ldh [rNR23], a
    ld l, a
    ldh [rP1], a
    nop
    nop
    ld b, $a8
    sub b
    add hl, de
    xor d
    jr nz, @+$14

    rst $38

jr_00e_560e:
    rst $38
    add hl, de
    sbc c
    rst $38
    ld [$604f], sp
    nop
    nop
    nop
    inc e
    jr nc, jr_00e_565b

    inc e
    ret nz

    ld bc, $981c
    rst $38
    inc d
    jr z, @-$3e

    inc d
    ld de, $1eff
    nop
    add b
    rrca
    add b
    ld bc, $000f
    ret nz

    ld a, [de]
    xor $ff
    nop
    nop
    nop
    ld d, $80
    ld b, b
    ld d, $10
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    nop
    add b
    dec h
    jr nz, jr_00e_560e

    ld [hl+], a
    nop
    add b
    ld [hl+], a
    jr nz, @+$01

    nop
    inc l
    ret nz

    ld bc, $e02c
    inc h

jr_00e_565b:
    ldh a, [rNR10]
    dec h
    xor d
    rst $38
    inc hl
    jr nz, @-$0e

    nop
    nop
    nop
    inc e
    add b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld h, b
    ld b, b
    dec e
    ld h, b
    ld b, b
    inc b
    jr nz, jr_00e_56b8

    dec e
    jr nz, jr_00e_56bb

    inc b
    nop
    add b
    dec e
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$01dd], sp
    ld [$40aa], sp
    inc hl
    ld [hl+], a
    rst $38
    ld hl, $0155
    dec h
    ld b, h
    jr nz, jr_00e_56bf

    ld h, [hl]
    call z, Call_000_0a3e
    ld hl, $cee9
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, [$d071]
    swap a
    and $0f
    jr z, jr_00e_56b8

    ld hl, $cee9
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld [hl], $50

jr_00e_56b8:
    ld hl, $581e

jr_00e_56bb:
    ld a, [$d030]
    ld b, a

jr_00e_56bf:
    dec b
    jr z, jr_00e_56c8

jr_00e_56c2:
    ld a, [hl+]
    and a
    jr nz, jr_00e_56c2

    jr jr_00e_56bf

jr_00e_56c8:
    ld a, [hl]
    and a
    jp z, Jump_00e_5722

    push hl
    pop hl
    ld a, [hl+]
    and a
    jr z, jr_00e_56e5

    push hl
    ld hl, $5726
    dec a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $56ce
    push de
    jp hl


jr_00e_56e5:
    ld hl, $cee9
    ld de, $cfec
    ld c, $04

jr_00e_56ed:
    ld a, [de]
    inc de
    and a
    jr z, jr_00e_56e5

    dec [hl]
    jr z, jr_00e_56fb

    inc hl
    dec c
    jr z, jr_00e_56e5

    jr jr_00e_56ed

jr_00e_56fb:
    ld a, c

jr_00e_56fc:
    inc [hl]
    dec hl
    inc a
    cp $05
    jr nz, jr_00e_56fc

    ld hl, $cee9
    ld de, $cfec
    ld c, $04

jr_00e_570b:
    ld a, [de]
    and a
    jr nz, jr_00e_5710

    ld [hl], a

jr_00e_5710:
    ld a, [hl]
    dec a
    jr z, jr_00e_5718

    xor a
    ld [hl+], a
    jr jr_00e_571a

jr_00e_5718:
    ld a, [de]
    ld [hl+], a

jr_00e_571a:
    inc de
    dec c
    jr nz, jr_00e_570b

    ld hl, $cee9
    ret


Jump_00e_5722:
    ld hl, $cfec
    ret


    ld l, $57
    ld l, d
    ld d, a
    sbc d
    ld d, a
    ld b, $58
    ld a, [$d017]
    and a
    ret z

    ld hl, $cee8
    ld de, $cfec
    ld b, $05

jr_00e_573b:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5807
    ld a, [$cfcd]
    and a
    jr nz, jr_00e_573b

    ld a, [$cfcc]
    push hl
    push de
    push bc
    ld hl, $5765
    ld de, $0001
    call Call_000_3da7
    pop bc
    pop de
    pop hl
    jr nc, jr_00e_573b

    ld a, [hl]
    add $05
    ld [hl], a
    jr jr_00e_573b

    ld bc, $4220
    ld b, e
    rst $38
    ld a, [$ccd5]
    cp $01
    ret nz

    ld hl, $cee8
    ld de, $cfec
    ld b, $05

jr_00e_5778:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5807
    ld a, [$cfcc]
    cp $0a
    jr c, jr_00e_5778

    cp $1a
    jr c, jr_00e_5797

    cp $32
    jr c, jr_00e_5778

    cp $42
    jr c, jr_00e_5797

    jr jr_00e_5778

jr_00e_5797:
    dec [hl]
    jr jr_00e_5778

    ld hl, $cee8
    ld de, $cfec
    ld b, $05

jr_00e_57a2:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5807
    push hl
    push bc
    push de
    ld hl, $65bb
    ld b, $0f
    call Call_000_3e84
    pop de
    pop bc
    pop hl
    ld a, [$d11d]
    cp $10
    jr z, jr_00e_57a2

    jr c, jr_00e_57c6

    dec [hl]
    jr jr_00e_57a2

jr_00e_57c6:
    push hl
    push de
    push bc
    ld a, [$cfce]
    ld d, a
    ld hl, $cfec
    ld b, $05
    ld c, $00

jr_00e_57d4:
    dec b
    jr z, jr_00e_57fc

    ld a, [hl+]
    and a
    jr z, jr_00e_57fc

    call Call_00e_5807
    ld a, [$cfcc]
    cp $28
    jr z, jr_00e_57fb

    cp $29
    jr z, jr_00e_57fb

    cp $2b
    jr z, jr_00e_57fb

    ld a, [$cfce]
    cp d
    jr z, jr_00e_57d4

    ld a, [$cfcd]
    and a
    jr nz, jr_00e_57fb

    jr jr_00e_57d4

jr_00e_57fb:
    ld c, a

jr_00e_57fc:
    ld a, c
    pop bc
    pop de
    pop hl
    and a
    jr z, jr_00e_57a2

    inc [hl]
    jr jr_00e_57a2

    ret


Call_00e_5807:
    push hl
    push de
    push bc
    dec a
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a74
    ld de, $cfcb
    call Call_000_00b1
    pop bc
    pop de
    pop hl
    ret


    nop
    ld bc, $0100
    nop
    ld bc, $0003
    ld bc, $0100
    nop
    ld bc, $0302
    nop
    ld bc, $0002
    ld bc, $0100
    nop
    ld bc, $0003
    ld bc, $0100
    ld [bc], a
    nop
    ld bc, $0003
    ld bc, $0003
    nop
    ld bc, $0100
    inc bc
    nop
    ld bc, $0002
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0003
    ld bc, $0002
    ld bc, $0002
    ld bc, $0003
    ld bc, $0100
    inc bc
    nop
    ld bc, $0003
    ld bc, $0100
    nop
    ld bc, $0003
    ld bc, $0100
    inc bc
    nop
    ld bc, $0003
    ld bc, $0100
    nop
    ld bc, $0002
    ld bc, $0003
    ld bc, $0003
    ld bc, $0302
    nop
    ld bc, $0100
    nop
    ld bc, $0003
    nop
    ld b, b
    nop
    dec d
    nop
    add $40
    nop
    stop
    nop
    ld b, d
    nop
    dec d
    nop
    db $db
    ld b, d
    nop
    jr nc, jr_00e_58a7

jr_00e_58a7:
    ld d, b
    ld b, h
    nop
    jr nz, jr_00e_58ac

jr_00e_58ac:
    adc b
    ld b, l
    nop
    jr nz, jr_00e_58b1

jr_00e_58b1:
    ret


    ld b, [hl]
    nop
    ld d, b
    nop
    pop af
    ld b, a
    nop
    dec h
    nop
    rst $20
    ld c, b
    nop
    dec [hl]
    nop
    cp [hl]
    ld c, d
    nop
    jr nz, jr_00e_58c5

jr_00e_58c5:
    sub c
    ld c, h
    nop
    sub b
    nop
    ld a, [bc]
    ld c, [hl]
    nop
    ld d, b
    nop
    ld a, l
    ld e, c
    nop
    dec [hl]
    nop
    add a
    ld c, a
    nop
    dec [hl]
    nop
    inc sp
    ld d, c
    nop
    dec b
    nop
    ld c, a
    ld d, d
    nop
    dec h
    nop
    ld hl, $0054
    ld [hl], b
    nop
    rst $18
    ld d, l
    nop
    ld [hl], b
    nop
    jr z, jr_00e_5946

    nop
    stop
    ld b, e
    ld e, b
    nop
    dec h
    nop
    ld a, l
    ld e, c
    nop
    dec [hl]
    nop
    ld c, [hl]
    ld e, e
    nop
    ld b, b
    nop
    db $db
    ld e, h
    nop
    dec h
    nop
    db $76
    ld e, [hl]
    nop
    dec h
    nop
    ld c, c
    ld h, b
    nop
    dec [hl]
    nop
    ld a, [hl-]
    ld h, c
    nop
    sbc c
    nop
    ld e, b
    ld h, d
    nop
    jr nc, jr_00e_591a

jr_00e_591a:
    ld e, b
    ld h, d
    nop
    ld d, b
    nop
    sbc c
    ld h, e
    nop
    sbc c
    nop
    ld a, d
    ld h, h
    nop
    jr nc, jr_00e_5929

jr_00e_5929:
    db $10
    ld h, [hl]
    nop
    dec [hl]
    nop
    sbc c
    ld h, a
    nop
    dec [hl]
    nop
    ld e, $69
    nop
    sbc c
    nop
    add hl, de
    ld l, e
    nop
    sbc c
    nop
    inc d
    ld l, h
    nop
    sbc c
    nop
    jr nz, jr_00e_59b1

    nop
    sbc c

jr_00e_5946:
    nop
    and l
    ld l, [hl]
    nop
    sbc c
    nop
    pop bc
    ld l, a
    nop
    sbc c
    nop
    dec sp
    ld [hl], c
    nop
    sbc c
    nop
    dec a
    ld [hl], d
    nop
    sbc c
    nop
    cp e
    ld [hl], e
    nop
    ld [hl], b
    nop
    cp d
    ld [hl], h
    nop
    ld h, l
    nop
    pop hl
    ld [hl], l
    nop
    sbc c
    nop
    or $76
    nop
    sbc c
    nop
    ld hl, $0078
    jr nc, jr_00e_5974

jr_00e_5974:
    xor $79
    nop
    sbc c
    nop
    rra
    ld a, e
    nop
    sbc c
    nop
    sbc b
    adc [hl]
    sub h
    adc l
    add [hl]
    sub d
    sub e
    add h
    sub c
    ld d, b
    add c
    sub h
    add [hl]
    ld a, a
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    adc e
    add b
    sub d
    sub d
    ld d, b
    sub d
    add b
    adc b
    adc e
    adc [hl]
    sub c
    ld d, b
    adc c
    sub c
    add sp, -$6d
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    rst $28
    ld d, b
    adc c
    sub c
    add sp, -$6d
    sub c

jr_00e_59b1:
    add b
    adc b
    adc l
    add h
    sub c
    push af
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc l
    add h
    sub c
    add e
    ld d, b
    add a
    adc b
    adc d
    add h
    sub c
    ld d, b
    add c
    adc b
    adc d
    add h
    sub c
    ld d, b
    add c
    sub h
    sub c
    add [hl]
    adc e
    add b
    sub c
    ld d, b
    add h
    adc l
    add [hl]
    adc b
    adc l
    add h
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    add l
    adc b
    sub d
    add a
    add h
    sub c
    adc h
    add b
    adc l
    ld d, b
    sub d
    sub [hl]
    adc b
    adc h
    adc h
    add h
    sub c
    ld d, b
    add d
    sub h
    add h
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    add [hl]
    add b
    adc h
    add c
    adc e
    add h
    sub c
    ld d, b
    add c
    add h
    add b
    sub h
    sub e
    sbc b
    ld d, b
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    sub e
    add b
    adc h
    add h
    sub c
    ld d, b
    add c
    adc b
    sub c
    add e
    ld a, a
    adc d
    add h
    add h
    adc a
    add h
    sub c
    ld d, b
    add c
    adc e
    add b
    add d
    adc d
    add c
    add h
    adc e
    sub e
    ld d, b
    sub c
    adc b
    sub l
    add b
    adc e
    rst $30
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld d, b
    add d
    add a
    adc b
    add h
    add l
    ld d, b
    sub d
    add d
    adc b
    add h
    adc l
    sub e
    adc b
    sub d
    sub e
    ld d, b
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    rst $28
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    push af
    ld d, b
    add c
    sub c
    sub h
    adc l
    adc [hl]
    ld d, b
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld d, b
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld d, b
    add h
    sub c
    adc b
    adc d
    add b
    ld d, b
    adc d
    adc [hl]
    add [hl]
    add b
    ld d, b
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, b
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld d, b
    add [hl]
    add h
    adc l
    sub e
    adc e
    add h
    adc h
    add b
    adc l
    ld d, b
    sub c
    adc b
    sub l
    add b
    adc e
    ld hl, sp+$50
    sub c
    adc b
    sub l
    add b
    adc e
    ld sp, hl
    ld d, b
    adc e
    adc [hl]
    sub c
    add h
    adc e
    add h
    adc b
    ld d, b
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    add h
    sub c
    ld d, b
    add b
    add [hl]
    add b
    sub e
    add a
    add b
    ld d, b
    adc e
    add b
    adc l
    add d
    add h
    ld d, b
    ld hl, $d0db
    ld de, $d0e0
    ld b, $00

jr_00e_5b0e:
    ld a, [hl+]
    and a
    jr z, jr_00e_5b40

    push hl
    ld [$d0b4], a
    ld a, $2f
    ld [$d0b6], a
    ld a, $02
    ld [$d0b5], a
    call Call_000_3762
    ld hl, $cd6d

jr_00e_5b26:
    ld a, [hl+]
    cp $50
    jr z, jr_00e_5b2f

    ld [de], a
    inc de
    jr jr_00e_5b26

jr_00e_5b2f:
    ld a, b
    ld [$cd6c], a
    inc b
    ld a, $4e
    ld [de], a
    inc de
    pop hl
    ld a, b
    cp $04
    jr z, jr_00e_5b50

    jr jr_00e_5b0e

jr_00e_5b40:
    ld a, $e3
    ld [de], a
    inc de
    inc b
    ld a, b
    cp $04
    jr z, jr_00e_5b50

    ld a, $4e
    ld [de], a
    inc de
    jr jr_00e_5b40

jr_00e_5b50:
    ld a, $50
    ld [de], a
    ret


    ld a, [$d11a]
    cp $01
    jr nz, jr_00e_5b65

    ld hl, $d89b
    ld de, $d9ab
    ld a, $06
    jr jr_00e_5b97

jr_00e_5b65:
    cp $04
    jr nz, jr_00e_5b73

    ld hl, $d162
    ld de, $d272
    ld a, $05
    jr jr_00e_5b97

jr_00e_5b73:
    cp $05
    jr nz, jr_00e_5b81

    ld hl, $cf7a
    ld de, $4000
    ld a, $01
    jr jr_00e_5b97

jr_00e_5b81:
    cp $02
    jr nz, jr_00e_5b8f

    ld hl, $d31c
    ld de, $45b7
    ld a, $04
    jr jr_00e_5b97

jr_00e_5b8f:
    ld hl, $cf7a
    ld de, $45b7
    ld a, $04

jr_00e_5b97:
    ld [$d0b5], a
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    ld a, e
    ld [$cf8c], a
    ld a, d
    ld [$cf8d], a
    ld bc, $4494
    ld a, c
    ld [$cf8e], a
    ld a, b
    ld [$cf8f], a
    ret


    ld a, [$d12a]
    and a
    ret nz

    ld hl, $d89b
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ld a, [$d030]
    dec a
    add a
    ld hl, $5dd1
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d05c]
    ld b, a

jr_00e_5bd5:
    dec b
    jr z, jr_00e_5bde

jr_00e_5bd8:
    ld a, [hl+]
    and a
    jr nz, jr_00e_5bd8

    jr jr_00e_5bd5

jr_00e_5bde:
    ld a, [hl+]
    cp $ff
    jr z, jr_00e_5bfa

    ld [$d126], a

jr_00e_5be6:
    ld a, [hl+]
    and a
    jp z, Jump_00e_5c11

    ld [$cf90], a
    ld a, $01
    ld [$cc49], a
    push hl
    call Call_000_391c
    pop hl
    jr jr_00e_5be6

jr_00e_5bfa:
    ld a, [hl+]
    and a
    jr z, jr_00e_5c11

    ld [$d126], a
    ld a, [hl+]
    ld [$cf90], a
    ld a, $01
    ld [$cc49], a
    push hl
    call Call_000_391c
    pop hl
    jr jr_00e_5bfa

Jump_00e_5c11:
jr_00e_5c11:
    ld a, [$d030]
    ld b, a
    ld a, [$d05c]
    ld c, a
    ld hl, $5c6b

jr_00e_5c1c:
    ld a, [hl+]
    cp $ff
    jr z, jr_00e_5c4c

    cp b
    jr nz, jr_00e_5c46

    ld a, [hl+]
    cp c
    jr nz, jr_00e_5c46

    ld d, h
    ld e, l

jr_00e_5c2a:
    ld a, [de]
    inc de
    and a
    jp z, Jump_00e_5c4c

    dec a
    ld hl, $d8ab
    ld bc, $002c
    call Call_000_3a74
    ld a, [de]
    inc de
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    inc de
    ld [hl], a
    jr jr_00e_5c2a

jr_00e_5c46:
    ld a, [hl+]
    and a
    jr nz, jr_00e_5c46

    jr jr_00e_5c1c

Jump_00e_5c4c:
jr_00e_5c4c:
    xor a
    ld de, $d078
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    ld a, [$d126]
    ld b, a

jr_00e_5c59:
    ld hl, $d046
    ld c, $02
    push bc
    ld a, $0b
    call Call_000_3eb4
    pop bc
    inc de
    inc de
    dec b
    jr nz, jr_00e_5c59

    ret


    ld [bc], a
    rrca
    ld [bc], a
    ld [bc], a
    ld hl, $0302
    ld d, c
    nop
    ld bc, $010e
    inc b
    ld e, d
    nop
    ld [hl+], a
    ld bc, $0302
    inc d
    ld [bc], a
    inc b
    ld [hl], l
    nop
    inc hl
    ld bc, $0402
    dec a
    nop
    inc h
    ld bc, $0101
    ld d, l
    ld bc, $0502
    ld bc, $1903
    ld bc, $2d04
    nop
    dec h
    ld bc, $0301
    ld c, b
    ld [bc], a
    ld bc, $034b
    ld bc, $0050
    ld h, $01
    ld bc, $5c01
    ld bc, $2102
    ld [bc], a
    ld bc, $025c
    inc bc
    jr nc, jr_00e_5cb6

    ld bc, $035c

jr_00e_5cb6:
    ld [bc], a
    ld h, $04
    ld bc, $048d
    ld [bc], a
    ld l, b
    inc b
    inc bc
    ld e, [hl]
    inc b
    inc b
    ld e, h
    nop
    daa
    ld bc, $0101
    dec [hl]
    ld bc, $6d04
    inc bc
    ld bc, $0335
    ld [bc], a
    ld a, [hl]
    inc bc
    inc bc
    ld [hl], e
    nop
    jr z, @+$03

    ld bc, $9401
    ld [bc], a
    ld bc, $0286
    inc b
    sub l
    inc bc
    ld bc, $0095
    dec e
    inc bc
    ld bc, $5a03
    ld [bc], a
    ld [bc], a
    ld l, b
    inc bc
    ld bc, $0359
    inc bc
    ld d, a
    inc b
    ld bc, $0459
    ld [bc], a
    dec hl
    inc b
    inc bc
    ld d, a
    dec b
    ld bc, $059d
    inc b
    ld e, c
    nop
    inc l
    ld bc, $0101
    dec a
    ld [bc], a
    inc bc
    ld a, [hl-]
    inc bc
    ld bc, $035e
    ld [bc], a
    add hl, sp
    inc b
    inc bc
    adc [hl]
    dec b
    inc bc
    dec sp
    nop
    ld hl, $0101
    ld bc, $019d
    ld [bc], a
    ld h, a
    ld bc, $5b04
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    inc b
    ld l, b
    inc bc
    ld bc, $0318
    ld [bc], a
    add hl, de
    inc bc
    inc b
    ld l, b
    inc b
    ld bc, $049d
    ld [bc], a
    ld h, a
    inc b
    inc b
    ld e, c
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    ld b, [hl]
    nop
    ld l, $01
    ld bc, $a402
    ld bc, $7a03
    ld bc, $4804
    ld [bc], a
    ld [bc], a
    ld e, h
    ld [bc], a
    inc b
    adc l
    inc bc
    ld [bc], a
    ld a, d
    inc b
    ld bc, $0523
    ld [bc], a
    ld e, [hl]
    nop
    cpl
    ld bc, $0101
    ld d, d
    ld [bc], a
    ld bc, $0256
    inc bc
    ld d, l
    inc bc
    ld bc, $033d
    ld [bc], a
    inc hl
    inc bc
    inc bc
    ld a, [hl-]
    inc b
    ld bc, $0411
    ld [bc], a
    add c
    inc b
    inc bc
    inc de
    dec b
    ld bc, $053b
    ld [bc], a
    ld a, [hl]
    dec b
    inc bc
    ld d, a
    nop
    dec hl
    ld bc, $0301
    ld e, c
    ld [bc], a
    inc b
    add [hl]
    inc bc
    inc b
    ld c, c
    inc b
    ld bc, $053a
    ld bc, $056d
    inc b
    ld d, e
    ld b, $03
    ld h, d
    nop
    dec hl
    ld [bc], a
    ld bc, $5903
    ld [bc], a
    inc b
    add [hl]
    inc bc
    inc b
    ld c, c
    inc b
    ld bc, $0555
    ld bc, $063a
    ld [bc], a
    ld [hl], e
    ld b, $03
    ld h, d
    nop
    dec hl
    inc bc
    ld bc, $5903
    ld [bc], a
    inc b
    add [hl]
    inc bc
    inc b
    ld c, c
    inc b
    ld bc, $046d
    inc b
    ld d, e
    dec b
    ld bc, $0655
    ld bc, $063e
    inc bc
    ld h, d
    nop
    rst $38
    cpl
    ld e, [hl]
    ld h, a
    ld e, [hl]
    xor c
    ld e, [hl]
    ld hl, sp+$5e
    rla
    ld e, a
    ccf
    ld e, a
    xor [hl]
    ld e, a
    bit 3, a
    inc bc
    ld h, b
    ld b, c
    ld h, b
    adc c
    ld h, b
    xor h
    ld h, b
    cp b
    ld h, b
    cp b
    ld h, b
    xor $60
    ld [hl-], a
    ld h, c
    ld e, b
    ld h, c
    db $76
    ld h, c
    cp d
    ld h, c
    call z, $d561
    ld h, c
    or $61
    db $10
    ld h, d
    ld h, e
    ld h, d
    adc c
    ld h, d
    sbc h
    ld h, d
    ret nz

    ld h, d
    ret nz

    ld h, d
    db $fd
    ld h, d
    dec de
    ld h, e
    ld sp, hl
    ld h, e
    inc h
    ld h, h
    ld c, b
    ld h, h
    ld d, h
    ld h, h
    ld e, d
    ld h, h
    ld h, b
    ld h, h
    ld h, h
    ld h, h
    ld l, h
    ld h, h
    db $76
    ld h, h
    ld a, [hl]
    ld h, h
    add [hl]
    ld h, h
    sbc c
    ld h, h
    dec d
    ld h, l
    ccf
    ld h, l
    ld c, e
    ld h, l
    sbc d
    ld h, l
    and [hl]
    ld h, l
    dec bc
    and l
    ld l, h
    nop
    ld c, $05
    nop
    ld a, [bc]
    and l
    and l
    ld l, e
    nop
    ld c, $a5
    ld l, h
    ld l, e
    nop
    rrca
    and l
    dec b
    nop
    ld de, $0025
    ld c, $6c
    ld h, b
    nop
    dec d
    inc bc
    nop
    dec d
    ld l, h
    nop
    inc de
    ld h, b
    ld l, e
    nop
    ld de, $a5a5
    and [hl]
    nop
    ld [de], a
    inc bc
    and a
    nop
    ld de, $a505
    and l
    dec b
    nop
    jr jr_00e_5ec6

    nop
    rlca
    ld a, e
    ld a, e
    nop
    ld b, $7c
    ld a, e
    ld a, h
    nop
    ld a, [bc]
    ld a, e
    nop
    ld a, [bc]
    ld a, e
    ld [hl], b
    ld a, e
    nop
    add hl, bc
    ld [hl], b
    ld [hl], c
    ld a, e
    ld a, h
    nop
    dec bc
    ld a, e
    ld a, h
    nop
    dec bc
    ld [hl], b
    ld [hl], c
    nop
    ld a, [bc]
    ld a, e
    ld a, h
    ld a, e
    nop
    ld c, $7b
    ld [hl], b
    nop
    db $10
    ld [hl], b
    ld a, e
    ld [hl], b
    nop
    inc d
    ld a, l
    nop
    ld [de], a
    ld a, h
    ld a, e
    ld b, c
    nop
    inc de
    ld [hl], d
    ld [hl], d
    nop
    inc d
    ld a, e
    ld [hl], b
    ld b, c
    nop
    ld [$7c7b], sp
    nop
    add hl, bc
    inc h
    inc h
    nop
    ld a, [bc]
    and l
    inc bc
    nop
    ld c, $64
    nop
    rra
    ld l, l
    ld l, l
    ld l, $00
    dec bc
    cp c
    cp h
    nop
    ld c, $04
    nop
    db $10
    inc h
    rrca

jr_00e_5ec3:
    nop
    ld c, $24

jr_00e_5ec6:
    rrca
    nop
    rrca
    inc bc
    rrca
    nop
    dec c
    cp c
    inc h
    cp c
    nop
    ld [de], a
    inc h
    rrca
    nop
    inc d
    ld h, h
    nop
    rla
    rrca
    xor b
    nop
    jr jr_00e_5f2b

    ld c, l
    ld c, l
    nop
    inc de
    inc h
    and l
    rrca
    ld c, l
    inc bc
    nop
    ld d, $04
    inc b
    nop
    rla
    cp h
    cp l
    nop
    rla
    cp c
    cp d
    nop
    ld b, $0f
    inc bc
    nop
    ld [de], a
    ld l, d
    rla
    nop
    ld de, $186a
    nop
    dec d
    rla
    nop

jr_00e_5f03:
    ld de, $175c
    jr jr_00e_5f08

jr_00e_5f08:
    ld [de], a
    jr jr_00e_5f26

    nop
    ld de, $5c5c
    ld e, h
    nop
    inc d
    ld l, d
    nop
    jr jr_00e_5ec3

    nop
    add hl, bc
    dec sp
    ld h, b
    nop
    ld c, $a5
    ld l, h
    nop
    ld [de], a
    add hl, sp
    nop
    inc d
    or c
    nop
    db $10

jr_00e_5f26:
    dec b
    and [hl]
    nop
    ld [de], a
    dec sp

jr_00e_5f2b:
    dec sp
    ld h, b
    nop
    dec d
    ld hl, $00b0
    inc de
    and l
    dec sp
    ld l, h
    ld h, b
    nop
    dec e
    inc bc
    and a
    nop
    db $10
    cp l
    nop
    inc de
    sbc l
    nop
    db $10
    cp c
    cp h
    nop
    db $10
    inc h
    inc h
    inc h
    nop
    ld d, $99
    nop
    ld [de], a
    cp c
    cp h
    cp c
    cp h
    nop
    rla
    ld c, l
    nop
    inc d
    ld h, h
    inc b
    nop
    dec d
    inc h
    sub [hl]
    nop
    dec d
    ld h, h
    inc h
    ld c, l
    nop
    ld d, $b9
    sbc c
    nop
    jr jr_00e_5f03

    add hl, bc
    nop
    jr jr_00e_5f92

    ld c, l
    and l
    inc h
    ld c, l
    nop
    ld e, $47
    ld b, a

jr_00e_5f76:
    nop
    dec de
    inc h
    ld c, l
    inc h
    sub [hl]
    nop
    inc e
    sbc l
    ld b, a
    ld e, h
    nop
    rra
    sbc l
    sbc [hl]
    nop
    ld d, $bc
    inc b
    nop
    inc d
    ld c, l
    cp c
    inc h
    nop
    inc de
    inc h
    and l

jr_00e_5f92:
    and l
    cp h
    nop
    inc e
    cp d
    cp c
    cp c
    nop
    dec e
    inc h

jr_00e_5f9c:
    sub [hl]
    nop
    ld hl, $0004
    dec e
    cp h
    cp c
    ld e, $00
    ld e, $18
    ld e, h
    ld a, [hl-]
    nop
    inc d
    ld de, $1e00
    ld [de], a
    dec bc
    nop
    inc d
    ld de, $0025
    inc d
    dec h
    dec h
    dec h
    nop
    ld d, $b0
    ld de, $1900
    dec h
    nop
    jr z, jr_00e_5f76

    inc de
    dec bc
    nop
    rla
    ld de, $0025
    dec bc
    xor l
    ld b, $00
    inc c
    dec c
    ld b, $37
    nop
    inc d
    ld b, $37
    ld b, $ad
    nop
    ld d, $0d
    adc b
    dec c
    nop
    ld a, [de]
    scf
    nop
    ld d, $37
    xor l
    adc a
    nop
    inc d
    xor l
    xor l
    scf
    xor l
    nop
    jr jr_00e_5f9c

    ld b, $00
    inc h
    ld d, d
    ld d, d
    ld d, e
    nop
    ld [hl+], a
    and e
    or b
    ld d, d
    ld hl, $2900
    and h
    nop
    dec h
    ld hl, $0052
    ld a, [bc]
    xor c
    xor c
    ld [hl+], a
    nop
    rrca
    ld l, d
    xor c
    nop
    dec c
    xor c
    xor c
    ld l, d
    xor c
    nop
    ld de, $0022
    dec d
    xor c
    ld [hl+], a
    nop
    inc d
    xor c
    ld l, d
    xor c
    nop
    dec d
    xor c
    ld [hl+], a
    nop
    inc de
    ld [hl+], a
    daa
    nop
    dec d
    xor c
    xor c
    daa
    nop
    add hl, de
    xor c
    nop
    inc d
    ld l, d
    ld [hl+], a
    nop
    inc de
    xor c
    ld l, d
    xor c
    xor c
    nop
    inc d
    ld [hl+], a
    ld [hl+], a
    xor c
    nop
    dec d
    xor c
    daa
    nop
    inc e
    scf
    scf
    scf
    nop
    dec e
    scf
    dec c
    nop
    add hl, de
    scf
    scf
    adc a
    scf
    dec c
    nop
    inc e
    scf
    dec c
    adc a
    nop
    dec e
    dec c
    scf
    nop
    ld hl, $008f
    ld a, [de]
    dec c
    dec c
    dec c
    dec c
    nop
    inc e
    adc a
    scf
    adc a
    nop
    ld hl, $0088
    dec e
    ld b, $06
    nop
    dec e
    adc a

jr_00e_6071:
    adc b
    nop
    add hl, de
    scf
    adc a
    scf
    scf
    adc a
    nop
    ld a, [de]
    scf
    scf
    dec c
    scf
    nop
    inc e
    dec c
    dec c
    scf
    nop
    dec e
    scf
    adc b
    nop
    dec e
    ld hl, $0052
    ld hl, $0021
    inc e
    ld d, d
    or b
    and e
    nop
    inc h
    ld hl, $5352
    nop
    add hl, hl
    and e
    nop
    dec h
    ld d, d
    ld hl, $2200
    or b
    or d
    nop
    ld h, $53
    nop
    ld [hl+], a
    ld hl, $00a3
    dec d
    ld b, $ad
    nop
    dec d
    xor l
    nop
    ld [de], a
    xor l
    xor l
    ld [hl], $00
    ld de, $189d
    sbc l
    nop
    ld de, $1b18
    rla
    nop
    ld d, $9d
    ld b, a
    sbc l
    nop
    jr jr_00e_60e1

    sbc l
    nop
    dec de
    sbc l
    nop
    dec d
    ld b, a
    rla
    sbc l
    ld e, h
    nop
    inc e
    sbc [hl]
    sbc l
    sbc [hl]
    sbc [hl]
    nop
    rra
    rla
    adc e
    nop
    dec de
    add l
    add l

jr_00e_60e1:
    add l
    add l
    add l
    add l
    nop
    ld hl, $9d9e
    nop
    jr jr_00e_6071

    add l
    nop
    db $10
    ld e, h
    rla
    nop
    ld e, $18
    rla
    nop
    dec e
    sbc l
    ld e, h
    dec de
    nop
    ld e, $47
    ld l, [hl]
    nop
    dec de
    ld e, h
    jr jr_00e_611b

    sbc l
    nop
    dec e
    sbc l
    rla
    sbc [hl]
    nop
    ld e, $5c
    ld e, h
    nop
    dec de
    jr jr_00e_6129

    dec de
    ld e, h
    sbc e
    nop
    rra
    rla
    adc e
    nop
    inc hl
    dec de

jr_00e_611b:
    nop
    inc e
    ld e, h
    ld e, h
    ld e, l
    ld e, h
    nop
    ld hl, $9b5d
    nop
    dec h
    sbc b
    nop

jr_00e_6129:
    ld hl, $b31b
    nop
    jr nz, jr_00e_619d

    jr jr_00e_618e

    nop
    inc e
    ld l, d
    add hl, sp
    ld l, d
    nop
    dec e
    add hl, sp
    ld l, d

jr_00e_613a:
    nop
    ld hl, $006a
    dec e
    add hl, sp
    ld [hl], l
    nop
    dec e
    ld l, d
    add hl, hl
    nop
    ld hl, $0029
    ld a, [de]
    add hl, sp
    add hl, sp
    add hl, hl
    ld l, d
    nop
    dec e
    ld [hl], l
    add hl, hl
    nop
    rra
    jr @+$1a

    sbc e
    nop
    ld [de], a
    ld b, a
    ld e, h
    nop
    ld [de], a

jr_00e_615d:
    cp h
    cp c
    nop
    ld [de], a
    ld b, $ad
    nop
    ld [de], a
    ld hl, $0052
    ld d, $47
    ld b, a
    ld l, [hl]
    nop
    ld d, $22
    xor c
    daa
    nop
    jr jr_00e_6195

    ld d, d
    nop
    dec d
    cp c
    cp h
    cp c
    cp h
    nop
    jr jr_00e_613a

    cp h
    nop
    ld a, [de]
    inc c
    nop
    dec de
    and l
    ld d, d
    and l
    nop
    dec e
    inc b
    ld c, l
    nop
    inc hl
    sbc [hl]

jr_00e_618e:
    nop
    ld e, $17
    rla
    adc e
    nop
    rra

jr_00e_6195:
    ld b, a
    sbc [hl]
    nop
    dec e
    sub [hl]
    ld h, l
    nop
    dec e

jr_00e_619d:
    sbc c
    add hl, bc
    nop
    ld hl, $bcbd
    cp l
    nop
    dec de
    ld b, a
    sbc l
    sbc [hl]
    sbc l
    ld b, a
    nop
    ld e, $9d
    sbc [hl]
    nop
    dec e
    dec de
    dec de
    dec de
    nop
    ld e, $5d
    ld e, h
    ld e, l
    nop
    rra
    ld h, $25
    ld a, [hl+]
    ld h, $00
    ld [hl+], a
    ld a, [hl+]
    ld h, $00
    ld hl, $2525
    ld [$2600], sp
    ld [$1400], sp
    ld b, $06
    ld b, $00
    dec e
    ld b, $8d
    nop
    dec e
    ld h, $2a
    nop
    add hl, hl
    jr nc, jr_00e_615d

    ld h, $26
    nop
    rra
    jr nc, jr_00e_6212

    ld h, $30
    nop
    ld [hl+], a
    jr nc, @-$7d

    nop
    jr nc, jr_00e_6215

    nop
    ld hl, $0081
    ld h, $81
    nop
    ld [hl+], a
    jr nc, jr_00e_621b

    nop
    ld [hl+], a
    ld h, c
    dec l
    nop
    ld hl, $612d
    dec l
    nop
    dec hl
    ld [de], a
    nop
    daa
    dec l
    inc a
    nop
    inc l
    sub b
    add b
    nop
    ld a, [hl+]
    ld [de], a
    ld [hl], l
    dec l
    inc a
    nop
    dec e
    inc h

jr_00e_6212:
    sub [hl]
    nop
    add hl, de

jr_00e_6215:
    dec b
    inc h
    inc h
    dec b
    dec b
    nop

jr_00e_621b:
    ld a, [de]
    inc h
    sub [hl]
    dec b
    inc hl
    nop
    ld hl, $0040
    dec e
    dec b
    inc hl
    nop
    ld a, [de]
    sub [hl]
    ld b, b
    ld b, [hl]
    inc h
    nop
    inc e
    ld [hl], h
    ld b, [hl]
    ld b, [hl]
    nop
    dec e
    dec b
    inc hl
    nop
    ld [hl+], a
    ld [hl], h
    nop
    ld a, [de]
    dec b
    dec b
    inc hl
    dec b
    nop
    ld e, $23
    inc hl
    sub [hl]
    nop
    daa
    sub [hl]
    sub [hl]
    inc h
    sub [hl]
    nop
    ld a, [hl+]
    ld b, b
    inc hl
    nop
    inc e
    inc h
    ld b, [hl]
    sub [hl]
    nop
    ld a, [de]
    inc h
    dec b
    inc h
    inc hl
    nop
    dec e
    sub [hl]
    inc hl
    nop
    inc e
    dec b
    ld b, [hl]
    inc hl
    nop
    dec h
    dec hl
    inc l
    nop
    rra
    add hl, sp
    add hl, sp
    ld [hl], l
    nop
    jr nz, @+$6c

    add hl, hl
    nop
    inc h
    ld [hl], l
    nop
    rra
    ld l, d
    add hl, sp
    ld [hl], l
    nop
    jr z, jr_00e_62e4

    add hl, hl
    nop
    dec hl
    add hl, hl
    nop
    ld h, $29
    ld l, d
    add hl, hl
    nop
    dec hl
    add hl, hl
    ld l, d
    add hl, hl
    nop
    dec b
    ld h, [hl]
    nop
    rst $38
    add hl, bc
    dec b
    ld [$0066], sp
    rst $38
    ld [de], a
    dec b
    rrca
    ld h, b
    rrca
    and l
    ld de, $0066
    rst $38
    ld b, d
    inc a
    ld b, e
    ld a, [bc]
    ld b, h
    inc d
    ld b, l
    inc e
    ld b, [hl]
    ld d, $00
    rst $38
    ld b, d
    inc a
    ld b, e
    ld a, [bc]
    ld b, h
    inc d
    ld b, l
    sbc d
    ld b, [hl]
    ld d, $00
    rst $38
    ld b, d
    inc a
    ld b, e
    ld a, [bc]
    ld b, h
    inc d
    ld b, l
    or h
    ld b, [hl]
    ld d, $00
    ld [hl+], a
    scf
    ld b, $00
    ld a, [de]
    dec c
    adc a
    scf
    adc a
    nop
    inc e
    xor l
    ld b, $36
    nop
    dec e
    adc l
    adc a
    nop
    ld hl, $008d
    ld a, [de]
    ld [hl], $37
    adc a
    xor l
    nop
    add hl, de
    ld b, $37
    ld [hl], $ad
    scf
    nop
    dec e

jr_00e_62e4:
    adc l
    adc b
    nop
    dec e
    dec c
    adc l
    nop
    inc e
    ld b, $37
    ld [hl], $00
    dec e
    xor l
    scf
    nop
    ld hl, $36ad
    ld b, $00
    ld [hl+], a
    xor l
    adc l
    nop
    rst $38
    add hl, de
    ld [hl+], a
    jr jr_00e_6314

    dec e
    sub b
    nop
    rst $38
    dec h
    and a
    inc hl
    sub b
    dec h
    ld [de], a
    add hl, hl
    stop
    rst $38
    ld [hl-], a
    db $76
    dec [hl]
    sub b

jr_00e_6314:
    dec [hl]
    db $10
    scf
    rlca
    scf
    ld bc, $0d00
    and l
    ld l, e
    nop
    dec bc
    ld h, b
    and l
    ld l, e
    nop
    inc c
    ld l, e
    ld l, h
    nop
    db $10
    and [hl]
    nop
    ld de, $306a
    nop
    rrca
    ld l, h
    ld l, e
    nop
    inc d
    and [hl]
    ld l, e
    nop
    dec d
    jr nc, jr_00e_63a4

    nop
    dec d
    and [hl]
    and [hl]
    nop
    inc d
    dec c
    scf
    scf
    nop
    inc de
    and l
    and [hl]
    and [hl]
    and l
    nop

jr_00e_634a:
    ld d, $0d
    scf
    nop
    ld de, $376b
    dec c
    ld l, e
    and [hl]
    nop
    inc d
    and l
    and [hl]
    jr nc, jr_00e_635a

jr_00e_635a:
    dec d
    ld l, d
    ld l, d
    nop
    rla
    ld h, b
    ld l, h
    ld h, c
    nop
    rla
    ld l, h
    ld h, b
    dec l
    nop
    dec d

jr_00e_6369:
    scf
    ld l, e
    nop
    add hl, de
    ld l, e
    ld l, e
    add d
    nop
    ld a, [de]
    scf
    jr nc, jr_00e_6375

jr_00e_6375:
    rla
    ld l, e
    and l
    and [hl]
    ld l, e
    nop
    ld a, [de]
    jr nc, jr_00e_63b5

    nop
    dec e
    ld de, $006b
    add hl, de
    add d
    ld l, e
    ld l, e
    and [hl]
    ld l, e
    nop
    inc e
    and [hl]
    add c
    and [hl]
    nop
    dec e
    ld l, d
    jr nc, jr_00e_6393

jr_00e_6393:
    inc e
    ld l, h
    ld l, e
    ld de, $2100
    dec l
    nop
    ld hl, $0081
    dec e
    ld l, d
    add hl, hl
    nop
    inc e
    ld l, e

jr_00e_63a4:
    ld l, e
    add d
    nop
    ld a, [de]
    and [hl]
    dec l
    scf
    add d
    nop
    dec e
    ld de, $0011
    dec e
    ld h, b
    ld h, c
    nop

jr_00e_63b5:
    ld a, [de]
    and [hl]
    ld l, e
    add d
    and l
    nop
    inc e
    adc a
    add d
    scf
    nop
    inc e
    jr nc, jr_00e_63d0

Jump_00e_63c3:
    ld l, d
    nop
    inc e
    add d
    jr nc, jr_00e_634a

    nop
    ld hl, $0029
    add hl, de
    and l
    and l

jr_00e_63d0:
    ld l, e
    and l
    ld l, h
    nop
    jr nz, jr_00e_63e7

    jr nc, jr_00e_6369

    nop
    ld c, $6c
    ld c, l
    scf
    nop
    add hl, de
    scf
    ld c, l
    ld l, h
    nop

jr_00e_63e3:
    dec de
    ld c, l
    dec l
    adc a

jr_00e_63e7:
    nop
    rra
    adc a
    dec l
    ld c, l
    nop
    db $10
    scf
    nop
    dec de
    scf
    nop
    dec e
    adc a
    nop
    ld hl, $008f
    daa
    and a
    rlca
    nop
    dec hl
    ld a, [bc]
    adc e
    inc d
    nop
    dec hl
    adc d
    sbc e
    inc e
    nop
    dec l
    adc d
    sbc b
    nop
    ld a, [hl+]
    add hl, bc
    or e
    or d
    or h
    nop
    inc l
    add hl, bc
    or e
    or d
    nop
    ld sp, $0007
    inc l
    adc d
    adc e
    nop
    daa
    ld h, c
    halt
    dec hl
    ld [de], a
    nop
    jr jr_00e_63e3

jr_00e_6426:
    cp d
    add hl, bc
    nop
    dec hl
    cp h
    cp l
    cp [hl]
    nop
    dec hl
    ld l, $78
    jr z, jr_00e_6433

jr_00e_6433:
    ld l, $bb
    ld a, l
    nop
    inc l
    sub b
    ld d, e
    nop
    dec l
    add hl, bc
    sbc d
    nop
    dec l
    xor b
    stop
    dec hl
    sub b
    ld d, e
    ld d, l
    nop
    rst $38
    dec [hl]
    ld [hl+], a
    scf
    inc l
    scf
    dec hl
    jr c, jr_00e_6473

    ld a, [hl-]
    ld a, [hl]
    nop
    rst $38
    ld a, [bc]
    xor c
    inc c
    ld [hl+], a
    nop
    rst $38
    ld [de], a
    dec de
    dec d
    sbc b
    nop
    rst $38
    inc e
    ld d, l
    nop
    rst $38
    ld e, $1e
    jr nz, jr_00e_6426

    jr nz, @-$44

    nop
    rst $38
    inc l
    ld b, c
    ld l, $41
    jr nc, jr_00e_64b4

jr_00e_6473:
    ld [hl-], a
    ld [hl], a
    nop
    rst $38
    jr nc, jr_00e_64cc

    ld [hl-], a
    and h
    ld [hl], $14
    nop
    rst $38
    ld [hl-], a
    sub h
    ld [hl-], a
    ld h, $32
    sub l
    nop
    ld [de], a
    ld hl, $0021
    inc de
    inc bc
    rrca
    nop
    ld d, $06
    xor l
    nop
    jr nc, jr_00e_6509

    nop
    ld de, $a321
    nop
    rst $38
    inc de
    dec b
    db $10
    and l
    ld [de], a
    ld h, b
    inc d
    ld h, [hl]
    nop
    rst $38
    add hl, de
    inc hl
    rla
    rla
    ld d, $52
    inc d
    ld h, b
    add hl, de
    ld h, [hl]
    nop
    rst $38
    add hl, de
    inc hl
    rla
    xor l

jr_00e_64b4:
    ld d, $17
    inc d
    ld h, b
    add hl, de
    ld h, [hl]
    nop
    rst $38
    add hl, de
    inc hl
    rla
    ld d, d
    ld d, $ad
    inc d
    ld h, b
    add hl, de
    ld h, [hl]
    nop
    rst $38
    ld h, $61
    inc hl
    ld d, e

jr_00e_64cc:
    dec h
    adc e
    inc hl
    ld h, $28
    ld l, b
    nop
    rst $38
    ld h, $61
    inc hl
    adc e
    dec h
    ld [hl], $23
    ld h, $28
    ld h, a
    nop
    rst $38
    ld h, $61
    inc hl
    ld [hl], $25
    ld d, e
    inc hl
    ld h, $28
    ld l, c
    nop
    rst $38
    cpl
    ld h, c
    dec l
    inc c
    dec l
    ld d, e
    cpl

jr_00e_64f3:
    adc e
    ld [hl-], a
    ld h, $35
    ld l, b
    nop
    rst $38
    cpl
    ld h, c
    dec l
    inc c
    dec l
    adc e
    cpl
    ld [hl], $32
    ld h, $35
    ld h, a
    nop
    rst $38
    cpl

jr_00e_6509:
    ld h, c
    dec l
    inc c
    dec l
    ld [hl], $2f
    ld d, e
    ld [hl-], a
    ld h, $35
    ld l, c
    nop
    rst $38
    dec a
    ld h, c
    dec sp
    sub l
    dec a
    ld a, [bc]
    dec a
    adc e
    ccf
    ld d, e
    ld b, c

jr_00e_6521:
    ld l, b
    nop
    rst $38
    dec a
    ld h, c
    dec sp
    sub l
    dec a
    ld a, [bc]
    dec a
    ld [hl], $3f
    adc e
    ld b, c
    ld h, a
    nop
    rst $38
    dec a
    ld h, c
    dec sp
    sub l
    dec a
    ld a, [bc]
    dec a
    ld d, e
    ccf
    ld [hl], $41
    ld l, c
    nop
    rst $38
    ld [hl], $78
    dec [hl]
    adc e
    ld [hl], $08
    jr c, jr_00e_6590

    jr c, jr_00e_655d

    nop
    ld d, $19
    nop
    jr jr_00e_6569

    nop
    rla
    add hl, de
    add hl, de
    nop
    jr jr_00e_6570

    nop
    rla
    add hl, de
    nop
    jr jr_00e_6576

jr_00e_655d:
    nop
    jr jr_00e_64f3

    nop
    ld d, $19
    nop
    jr jr_00e_657f

    nop
    rla
    add hl, de

jr_00e_6569:
    add hl, de
    nop
    jr jr_00e_6586

    nop
    ld d, $19

jr_00e_6570:
    nop
    jr @+$1b

    nop
    rla
    sub e

jr_00e_6576:
    nop
    jr jr_00e_6592

    nop
    ld d, $19
    nop
    jr jr_00e_6598

jr_00e_657f:
    nop
    ld d, $93
    nop
    ld d, $19
    add hl, de

jr_00e_6586:
    add hl, de
    nop
    jr jr_00e_65a3

    nop
    jr jr_00e_65a6

    nop
    ld [hl+], a
    add hl, de

jr_00e_6590:
    sub e
    nop

jr_00e_6592:
    ld h, $93
    nop
    ld hl, $1919

jr_00e_6598:
    sub e
    nop
    rst $38
    jr c, jr_00e_65ab

    jr c, jr_00e_6521

    scf
    sub e
    ld a, [hl-]
    dec l

jr_00e_65a3:
    inc a
    ld c, $00

jr_00e_65a6:
    rst $38
    ld a, [hl-]
    ld d, $38
    ld e, c

jr_00e_65ab:
    jr c, jr_00e_6606

    inc a
    xor e
    ld a, $42
    nop
    ld a, [$d056]
    dec a
    jr z, jr_00e_65f0

    ld a, [$d12a]
    cp $04
    jr z, jr_00e_65f0

    ld a, [$d066]
    and $13
    jr nz, jr_00e_65f0

    ld a, [$d067]
    and $40
    jr nz, jr_00e_65f0

    ld a, [$d030]
    dec a
    ld c, a
    ld b, $00
    ld hl, $65f2
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [$ccdf]
    and a
    jr z, jr_00e_65f0

    inc hl
    inc a
    jr nz, jr_00e_65e9

    dec hl
    ld a, [hl+]
    ld [$ccdf], a

jr_00e_65e9:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3e6d
    jp hl


jr_00e_65f0:
    and a
    ret


    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl

jr_00e_6606:
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    ld a, a
    ld h, [hl]
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    inc bc
    ld a, a
    ld h, [hl]
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    ld [bc], a
    add l
    ld h, [hl]
    inc bc
    add hl, hl
    ld h, a
    inc bc
    add hl, hl
    ld h, a
    ld bc, $6729
    inc bc
    add hl, hl
    ld h, a
    ld bc, $668b
    inc bc
    add hl, hl
    ld h, a
    ld [bc], a
    sub c
    ld h, [hl]
    ld bc, $6697
    ld [bc], a
    ld b, $67
    dec b
    xor d
    ld h, [hl]
    ld bc, $66b2
    ld bc, $66b8
    ld bc, $66be
    ld [bc], a
    jp z, Jump_000_0266

    ret nc

    ld h, [hl]
    ld bc, $66dc
    inc bc
    add hl, hl
    ld h, a
    ld bc, $66e2
    ld bc, $66ee
    ld [bc], a
    ld a, [$0366]

Jump_00e_6677:
    add hl, hl
    ld h, a
    ld [bc], a
    inc c
    ld h, a
    ld bc, $671d
    cp $40
    ret nc

    jp Jump_00e_67c0


    cp $20
    ret nc

    jp Jump_00e_6888


    cp $40
    ret nc

    jp Jump_00e_684b


    cp $40
    ret nc

    jp Jump_00e_6888


    cp $40
    ld a, $0a
    call Call_00e_6865
    jp c, Jump_00e_676c

    ld a, $05
    call Call_00e_6865
    ret nc

    jp Jump_00e_67c0


    ld a, [$cfe8]
    and a
    ret z

    jp Jump_00e_681c


    cp $40
    ret nc

    jp Jump_00e_688e


    cp $40
    ret nc

    jp Jump_00e_6894


    cp $80
    ret nc

    ld a, $0a
    call Call_00e_6865
    ret nc

    jp Jump_00e_6766


    cp $20
    ret nc

    jp Jump_00e_6888


    cp $40
    ret nc

    ld a, $0a
    call Call_00e_6865
    ret nc

    jp Jump_00e_6766


    cp $40
    ret nc

    jp Jump_00e_688e


    cp $20
    ret nc

    ld a, $05
    call Call_00e_6865
    ret nc

    jp Jump_00e_6760


    cp $20
    ret nc

    ld a, $05
    call Call_00e_6865
    ret nc

    jp Jump_00e_6736


    cp $80
    ret nc

    ld a, $05
    call Call_00e_6865
    ret nc

    jp Jump_00e_6766


    cp $40
    ret nc

    jp Jump_00e_688e


    cp $14
    jp c, Jump_00e_67c0

    cp $80
    ret nc

    ld a, $04
    call Call_00e_6865
    ret nc

    jp Jump_00e_6766


    cp $80
    ret nc

    ld a, $05
    call Call_00e_6865
    ret nc

    jp Jump_00e_676c


    and a
    ret


Jump_00e_672b:
    ld hl, $ccdf
    dec [hl]
    scf
    ret


Call_00e_6731:
    ld a, $8e
    jp Jump_000_3736


Jump_00e_6736:
    call Call_00e_6827
    ld a, $10
    ld [$cf05], a
    ld de, $ceeb
    ld hl, $cfe6
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $cff4
    ld a, [hl-]
    ld [de], a
    inc de
    ld [$cee9], a
    ld [$cfe6], a
    ld a, [hl]
    ld [de], a
    ld [$ceea], a
    ld [$cfe5], a
    jr jr_00e_67ae

Jump_00e_6760:
    ld a, $14
    ld b, $14
    jr jr_00e_6770

Jump_00e_6766:
    ld a, $13
    ld b, $32
    jr jr_00e_6770

Jump_00e_676c:
    ld a, $12
    ld b, $c8

jr_00e_6770:
    ld [$cf05], a
    ld hl, $cfe6
    ld a, [hl]
    ld [$ceeb], a
    add b
    ld [hl-], a
    ld [$ceed], a
    ld a, [hl]
    ld [$ceec], a
    ld [$ceee], a
    jr nc, jr_00e_678d

    inc a
    ld [hl], a
    ld [$ceee], a

jr_00e_678d:
    inc hl
    ld a, [hl-]
    ld b, a
    ld de, $cff4
    ld a, [de]
    dec de
    ld [$cee9], a
    sub b
    ld a, [hl+]
    ld b, a
    ld a, [de]
    ld [$ceea], a
    sbc b
    jr nc, jr_00e_67ae

    inc de
    ld a, [de]
    dec de
    ld [hl-], a
    ld [$ceed], a
    ld a, [de]
    ld [hl], a
    ld [$ceee], a

jr_00e_67ae:
    call Call_00e_68cb
    ld hl, $c3ca
    xor a
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4
    jp Jump_00e_672b


Jump_00e_67c0:
    ld a, [$d89b]
    ld c, a
    ld hl, $d8a4
    ld d, $00

jr_00e_67c9:
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    or b
    jr z, jr_00e_67d0

    inc d

jr_00e_67d0:
    push bc
    ld bc, $002c
    add hl, bc
    pop bc
    dec c
    jr nz, jr_00e_67c9

    ld a, d
    cp $02
    jp nc, Jump_00e_67e1

    and a
    ret


Jump_00e_67e1:
    ld a, [$cfe7]
    ld hl, $d8a4
    ld bc, $002c
    call Call_000_3a74
    ld d, h
    ld e, l
    ld hl, $cfe5
    ld bc, $0004
    call Call_000_00b1
    ld hl, $6817
    call Call_000_3c36
    ld a, $01
    ld [$d11c], a
    ld hl, $4973
    ld b, $0f
    call Call_000_3e84
    xor a
    ld [$d11c], a
    ld a, [$d12a]
    cp $04
    ret z

    scf
    ret


    rla
    ld e, e
    ld e, [hl]
    daa
    ld d, b

Jump_00e_681c:
    call Call_00e_6731
    call Call_00e_6827
    ld a, $34
    jp Jump_00e_68c2


Call_00e_6827:
    ld a, [$cfe7]
    ld hl, $d8a7
    ld bc, $002c
    call Call_000_3a74
    xor a
    ld [hl], a
    ld [$cfe8], a
    ld hl, $d068
    res 0, [hl]
    ret


    call Call_00e_6731
    ld hl, $d067
    set 0, [hl]
    ld a, $2e
    jp Jump_00e_68c2


Jump_00e_684b:
    call Call_00e_6731
    ld hl, $d067
    set 1, [hl]
    ld a, $37
    jp Jump_00e_68c2


    call Call_00e_6731
    ld hl, $d067
    set 2, [hl]
    ld a, $3a
    jp Jump_00e_68c2


Call_00e_6865:
    ldh [$99], a
    ld hl, $cff3
    ld a, [hl+]
    ldh [$95], a
    ld a, [hl]
    ldh [$96], a
    ld b, $02
    call Call_000_38b2
    ldh a, [$98]
    ld c, a
    ldh a, [$97]
    ld b, a
    ld hl, $cfe6
    ld a, [hl-]
    ld e, a
    ld a, [hl]
    ld d, a
    ld a, d
    sub b
    ret nz

    ld a, e
    sub c
    ret


Jump_00e_6888:
    ld b, $0a
    ld a, $41
    jr jr_00e_689e

Jump_00e_688e:
    ld b, $0b
    ld a, $42
    jr jr_00e_689e

Jump_00e_6894:
    ld b, $0c
    ld a, $43
    jr jr_00e_689e

    ld b, $0d
    ld a, $44

jr_00e_689e:
    ld [$cf05], a
    push bc
    call Call_00e_68cb
    pop bc
    ld hl, $cfcc
    ld a, [hl-]
    push af
    ld a, [hl]
    push af
    push hl
    ld a, $af
    ld [hl+], a
    ld [hl], b
    ld hl, $73de
    ld b, $0f
    call Call_000_3e84
    pop hl
    pop af
    ld [hl+], a
    pop af
    ld [hl], a
    jp Jump_00e_672b


Jump_00e_68c2:
    ld [$cf05], a
    call Call_00e_68cb
    jp Jump_00e_672b


Call_00e_68cb:
    ld a, [$cf05]
    ld [$d11d], a
    call Call_000_2ec4
    ld hl, $68da
    jp Jump_000_3c36


    rla
    ld [hl], d
    ld e, [hl]
    daa
    ld d, b
    call Call_00e_68f3
    call Call_00e_68ff
    ld a, [$d056]
    dec a
    ret z

    jp Jump_00e_6921


    call Call_00e_68f3
    jp Jump_00e_6921


Call_00e_68f3:
    ld de, $6a28
    ld hl, $8310
    ld bc, $0e04
    jp Jump_000_15fe


Call_00e_68ff:
    call Call_00e_69a3
    ld hl, $d16a
    ld de, $d162
    call Call_00e_6945
    ld a, $60
    ld hl, $d080
    ld [hl+], a
    ld [hl], a
    ld a, $08
    ld [$cd3e], a
    xor a
    ld [$def4], a
    ld hl, $c300
    jp Jump_00e_6980


Jump_00e_6921:
    call Call_00e_69ba
    ld hl, $d8a3
    ld de, $d89b
    call Call_00e_6945
    ld hl, $d080
    ld a, $48
    ld [hl+], a
    ld [hl], $20
    ld a, $f8
    ld [$cd3e], a
    ld a, $01
    ld [$def4], a
    ld hl, $c318
    jp Jump_00e_6980


Call_00e_6945:
    ld a, [de]
    push af
    ld de, $cee9
    ld c, $06
    ld a, $34

jr_00e_694e:
    ld [de], a
    inc de
    dec c
    jr nz, jr_00e_694e

    pop af
    ld de, $cee9

jr_00e_6957:
    push af
    call Call_00e_6961
    inc de
    pop af
    dec a
    jr nz, jr_00e_6957

    ret


Call_00e_6961:
    inc hl
    ld a, [hl+]
    and a
    jr nz, jr_00e_696c

    ld a, [hl]
    and a
    ld b, $33
    jr z, jr_00e_6977

jr_00e_696c:
    inc hl
    inc hl
    ld a, [hl]
    and a
    ld b, $32
    jr nz, jr_00e_6979

    dec b
    jr jr_00e_6979

jr_00e_6977:
    inc hl
    inc hl

jr_00e_6979:
    ld a, b
    ld [de], a
    ld bc, $0028
    add hl, bc
    ret


Call_00e_6980:
Jump_00e_6980:
    ld de, $cee9
    ld c, $06

jr_00e_6985:
    ld a, [$d081]
    ld [hl+], a
    ld a, [$d080]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld a, [$def4]
    ld [hl+], a
    ld a, [$d080]
    ld b, a
    ld a, [$cd3e]
    add b
    ld [$d080], a
    inc de
    dec c
    jr nz, jr_00e_6985

    ret


Call_00e_69a3:
    ld hl, $69b7
    ld de, $cd3f
    ld bc, $0003
    call Call_000_00b1
    ld hl, $c47a
    ld de, $ffff
    jr jr_00e_69d1

    ld [hl], e
    ld [hl], a
    ld l, a

Call_00e_69ba:
    ld hl, $69ce
    ld de, $cd3f
    ld bc, $0003
    call Call_000_00b1
    ld hl, $c3c9
    ld de, $0001
    jr jr_00e_69d1

    ld [hl], e
    ld [hl], h
    ld a, b

jr_00e_69d1:
    ld [hl], $73
    ld bc, $0014
    add hl, bc
    ld a, [$cd40]
    ld [hl], a
    ld a, $08

jr_00e_69dd:
    add hl, de
    ld [hl], $76
    dec a
    jr nz, jr_00e_69dd

    add hl, de
    ld a, [$cd41]
    ld [hl], a
    ret


    call Call_00e_68f3
    ld hl, $d16a
    ld de, $d162
    call Call_00e_6945
    ld hl, $d080
    ld a, $50
    ld [hl+], a
    ld [hl], $40
    ld a, $08
    ld [$cd3e], a
    xor a
    ld [$def4], a
    ld hl, $c300
    call Call_00e_6980
    ld hl, $d8a3
    ld de, $d89b
    call Call_00e_6945
    ld hl, $d080
    ld a, $50
    ld [hl+], a
    ld [hl], $68
    ld a, $01
    ld [$def4], a
    ld hl, $c318
    jp Jump_00e_6980


    nop
    nop
    inc e
    inc e
    ld [hl+], a
    ld a, $51
    ld l, a
    ld b, c
    ld a, a
    ld a, a
    ld b, c
    ld a, $22
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    ld a, $3e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, $3e
    inc e
    inc e
    nop
    nop
    ld b, c
    ld e, l
    ld a, $22
    ld a, $55
    ld a, $49
    ld a, $55
    ld a, $22
    ld b, c
    ld e, l
    nop
    nop
    inc e
    nop
    ld [hl+], a
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    inc e
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    jp $c3c3


    jp $ffff


    ret nz

    ret nz

    ret nz

    ret nz

    jp $ffc3


    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    db $fc
    db $fc
    cp $fe
    jp $c3c3


    jp $fbfb


    rlca
    rlca
    inc bc
    inc bc
    jp $c7c3


    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ccf
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ccf
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    jp $c0c3


    ret nz

    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    db $e3
    db $e3
    db $e3
    db $e3
    jp $c3c3


    jp $8383


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    sub b
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    dec c
    dec c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jp Jump_00e_63c3


    ld h, e
    or e
    or e
    rst $08
    rst $08
    call $cdcd
    call $cfcf
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    sbc a
    sbc a
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    sbc a
    sbc a
    ldh a, [$f0]
    sub b
    sub b
    ldh a, [$f0]
    ldh a, [$f0]
    rlca
    rlca
    inc c
    inc c
    dec de
    dec de
    rla
    rla
    rla
    rla
    dec de
    dec de
    inc c
    inc c
    rlca
    rlca
    adc e
    adc e
    set 1, e
    ld l, l
    ld l, l
    and [hl]
    and [hl]
    and e
    and e
    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    db $d3
    db $d3
    db $d3
    db $d3
    or e
    or e
    ld h, e
    ld h, e
    jp Jump_000_03c3


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc a
    inc a
    pop af
    pop af
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_00e_6c38

    ld a, b
    ld a, b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    add hl, hl
    and l
    and l

jr_00e_6c38:
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
    inc hl
    and e
    and e
    sub e
    sub e
    ld d, e
    ld d, e
    ld c, e
    ld c, e
    dec hl
    dec hl
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub h
    sub h
    ld d, d
    ld d, d
    ld c, d
    ld c, d
    jr z, jr_00e_6c98

    jr nz, jr_00e_6c92

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    and e
    and e
    add a
    add a
    ld b, $06
    ld c, $0e
    inc e
    inc e
    ld a, b
    ld a, b
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_00e_6c92:
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_00e_6c98:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld a, a
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $00
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $fffc


    rst $38
    rst $38
    nop
    ldh [$1f], a
    ret nz

    ccf
    pop bc
    ccf
    jp $c33f


    ccf
    jp $ff3f


    rst $38
    jp $c3fc


    db $fc
    db $e3
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jp $c33f


    ccf
    rst $00
    ccf
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    inc bc
    inc bc
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    cp $fe
    ld h, a
    ld h, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, a
    ld h, a
    cp $fe
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld b, $fe
    inc bc
    rst $38
    pop hl
    rra
    pop af
    rrca
    add hl, sp
    rst $00
    add hl, de
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    add hl, de
    rst $20
    add hl, de
    rst $20
    ld sp, hl
    rlca
    pop af
    rrca
    inc bc
    rst $38
    ld b, $fe
    db $fc
    db $fc
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    sbc c
    rst $20
    rlca
    rlca
    jr jr_00e_6d9b

    jr c, jr_00e_6da5

    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    inc de
    inc e
    inc de
    inc e
    inc hl
    inc a
    inc hl
    inc a
    nop
    nop
    nop

jr_00e_6d9b:
    nop
    rra
    rra
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc bc

jr_00e_6da5:
    db $fc
    rst $38
    nop
    rlca
    rlca
    rra
    rra
    ld a, b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    ld hl, $ccd3
    xor a
    ld [hl], a
    ld a, [$cf91]
    ld c, a
    ld b, $01
    call Call_00e_71cc
    ldh a, [$d7]
    push af
    xor a
    ld [$d120], a
    dec a
    ld [$cf91], a
    push hl
    push bc
    push de
    ld hl, $d162
    push hl

Jump_00e_6dd8:
jr_00e_6dd8:
    ld hl, $cf91
    inc [hl]
    pop hl
    inc hl
    ld a, [hl]
    cp $ff
    jp z, Jump_00e_6f8f

    ld [$cee9], a
    push hl
    ld a, [$cf91]
    ld c, a
    ld hl, $ccd3
    ld b, $02
    call Call_00e_71cc
    ld a, c
    and a
    jp z, Jump_00e_6dd8

    ld a, [$cee9]
    dec a
    ld b, $00
    ld hl, $71e5
    add a
    rl b
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$cf90]
    push af
    xor a
    ld [$cc49], a
    call Call_000_1132
    pop af
    ld [$cf90], a
    pop hl

Jump_00e_6e1b:
    ld a, [hl+]
    and a
    jr z, jr_00e_6dd8

    ld b, a
    cp $03
    jr z, jr_00e_6e3b

    ld a, [$d12a]
    cp $32
    jr z, jr_00e_6dd8

    ld a, b
    cp $02
    jr z, jr_00e_6e4e

    ld a, [$ccd4]
    and a
    jr nz, jr_00e_6dd8

    ld a, b
    cp $01
    jr z, jr_00e_6e5e

jr_00e_6e3b:
    ld a, [$d12a]
    cp $32
    jp nz, Jump_00e_6f8a

    ld a, [hl+]
    ld b, a
    ld a, [$cfb8]
    cp b
    jp c, Jump_00e_6dd8

    jr jr_00e_6e67

jr_00e_6e4e:
    ld a, [$d056]
    and a
    ld a, [hl+]
    jp nz, Jump_00e_6f8a

    ld b, a
    ld a, [$cf90]
    cp b
    jp nz, Jump_00e_6f8a

jr_00e_6e5e:
    ld a, [hl+]
    ld b, a
    ld a, [$cfb8]
    cp b
    jp c, Jump_00e_6f8b

jr_00e_6e67:
    ld [$d126], a
    ld a, $01
    ld [$d120], a
    push hl
    ld a, [hl]
    ld [$ceea], a
    ld a, [$cf91]

Jump_00e_6e77:
    ld hl, $d2b4
    call Call_000_139a
    call Call_000_3813
    ld hl, $6ffe
    call Call_000_3c36
    ld c, $32
    call Call_000_372f
    xor a
    ldh [$ba], a
    ld hl, $c3a0
    ld bc, $0c14
    call Call_000_1692
    ld a, $01
    ldh [$ba], a
    ld a, $ff
    ld [$cfca], a
    call Call_000_0082
    ld hl, $5a70
    ld b, $17
    call Call_000_3e84
    jp c, Jump_00e_6fdf

    ld hl, $6fef
    call Call_000_3c36
    pop hl
    ld a, [hl]
    ld [$d0b4], a
    ld [$cf97], a
    ld [$ceea], a
    ld a, $01
    ld [$d0b5], a
    ld a, $3a
    ld [$d0b6], a
    call Call_000_3762
    push hl
    ld hl, $6ff4
    call Call_000_3c46
    ld a, $89
    call Call_000_3736
    call Call_000_373e
    ld c, $28
    call Call_000_372f
    call Call_000_16dd
    call Call_00e_6fa8
    ld a, [$d11d]
    push af
    ld a, [$d0b4]
    ld [$d11d], a
    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    dec a
    ld hl, $43de
    ld bc, $001c
    call Call_000_3a74
    ld de, $d0b7
    call Call_000_00b1
    ld a, [$d0b4]
    ld [$d0b7], a
    pop af
    ld [$d11d], a
    ld hl, $cfa7
    ld de, $cfb9
    ld b, $01
    call Call_000_392b
    ld a, [$cf91]
    ld hl, $d16a
    ld bc, $002c
    call Call_000_3a74
    ld e, l
    ld d, h
    push hl
    push bc
    ld bc, $0022
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $cfba
    ld a, [hl-]
    sub c
    ld c, a
    ld a, [hl]
    sbc b
    ld b, a
    ld hl, $cf99
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    dec hl
    pop bc
    call Call_000_00b1
    ld a, [$d0b4]
    ld [$d11d], a
    xor a
    ld [$cc49], a
    call Call_00e_700c
    pop hl
    ld a, $42
    call Call_000_3eb4
    ld a, [$d056]
    and a
    call z, Call_00e_7003
    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $01
    ld hl, $d2f6
    push bc
    call Call_00e_71cc
    pop bc
    ld hl, $d309
    call Call_00e_71cc
    pop de
    pop hl
    ld a, [$cf97]
    ld [hl], a
    push hl
    ld l, e
    ld h, d
    jr jr_00e_6f8b

Jump_00e_6f8a:
    inc hl

Jump_00e_6f8b:
jr_00e_6f8b:
    inc hl
    jp Jump_00e_6e1b


Jump_00e_6f8f:
    pop de
    pop bc
    pop hl
    pop af
    ldh [$d7], a
    ld a, [$d12a]
    cp $32
    ret z

    ld a, [$d056]
    and a
    ret nz

    ld a, [$d120]
    and a
    call nz, Call_000_216b
    ret


Call_00e_6fa8:
    ld a, [$d0b4]
    push af
    ld a, [$d0b7]
    ld [$d0b4], a
    call Call_000_3762
    pop af
    ld [$d0b4], a
    ld hl, $cd6d
    ld de, $cf4a

jr_00e_6fbf:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    ret nz

    cp $50
    jr nz, jr_00e_6fbf

    ld a, [$cf91]
    ld bc, $000b
    ld hl, $d2b4
    call Call_000_3a74
    push hl
    call Call_000_3762
    ld hl, $cd6d
    pop de
    jp Jump_000_00b1


Jump_00e_6fdf:
    ld hl, $6ff9
    call Call_000_3c36
    call Call_000_16dd
    pop hl
    call Call_00e_7003
    jp Jump_00e_6dd8


    rla
    rst $28
    db $76
    add hl, hl
    ld d, b
    rla
    db $fc
    db $76
    add hl, hl
    ld d, b
    rla
    ld a, [bc]
    ld [hl], a
    add hl, hl
    ld d, b
    rla
    nop
    ld b, b
    ld a, [hl+]
    ld d, b

Call_00e_7003:
    ld a, [$d12a]
    cp $32
    ret z

    jp Jump_000_2f83


Call_00e_700c:
    ld a, [$d11d]
    ld [$cf90], a
    call Call_00e_71d1

jr_00e_7015:
    ld a, [hl+]
    and a
    jr z, jr_00e_7072

    ld b, a
    ld a, [$d126]
    cp b
    ld a, [hl+]
    jr nz, jr_00e_7015

    ld d, a
    ld a, [$cc49]
    and a
    jr nz, jr_00e_7034

    ld hl, $d172
    ld a, [$cf91]
    ld bc, $002c
    call Call_000_3a74

jr_00e_7034:
    ld b, $04

jr_00e_7036:
    ld a, [hl+]
    cp d
    jr z, jr_00e_7072

    dec b
    jr nz, jr_00e_7036

    ld a, d
    ld [$d0df], a
    ld [$d11d], a
    call Call_000_2f4d
    call Call_000_3813
    ld a, $1b
    call Call_000_3eb4
    ld a, b
    and a
    jr z, jr_00e_7072

    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_00e_7072

    ld a, [$d0df]
    cp $55
    jr z, jr_00e_7068

    cp $57
    jr nz, jr_00e_7072

jr_00e_7068:
    ld a, $05
    ld [$d49b], a
    ld a, $85
    ld [$d470], a

jr_00e_7072:
    ld a, [$cf90]
    ld [$d11d], a
    ret


    ld a, [$cf90]
    push af
    call Call_00e_70a2
    jr c, jr_00e_709c

    call Call_00e_710f
    jr nc, jr_00e_7096

    call Call_00e_70a2
    jr c, jr_00e_709c

    call Call_00e_710f
    jr nc, jr_00e_7096

    call Call_00e_70a2
    jr c, jr_00e_709c

jr_00e_7096:
    pop af
    ld [$cf90], a
    and a
    ret


jr_00e_709c:
    pop af
    ld [$cf90], a
    scf
    ret


Call_00e_70a2:
    ld a, [$d11d]
    ld [$d0df], a
    ld a, $43
    call Call_000_3eb4
    ld a, c
    and a
    jr nz, jr_00e_70ec

    ld hl, $70ee
    ld a, [$cf90]
    ld de, $0001
    call Call_000_3da7
    jr c, jr_00e_70d2

    ld a, $ff
    ld [$d0ca], a
    ld a, [$d11d]
    ld hl, $d0c6
    ld de, $0001
    call Call_000_3da7
    jr c, jr_00e_70ec

jr_00e_70d2:
    ld a, [$d11d]
    ld d, a
    call Call_00e_71d1

jr_00e_70d9:
    ld a, [hl+]
    and a
    jr z, jr_00e_70ea

    ld b, a
    ld a, [$d126]
    cp b
    jr c, jr_00e_70ea

    ld a, [hl+]
    cp d
    jr z, jr_00e_70ec

    jr jr_00e_70d9

jr_00e_70ea:
    and a
    ret


jr_00e_70ec:
    scf
    ret


    rlca
    add hl, bc
    ld a, [bc]
    ld c, $10
    inc d
    ld d, $1c
    ld sp, $5342
    ld e, c
    ld e, e
    ld h, e
    ld h, h
    ld h, a
    ld l, b
    ld l, c
    ld [hl], d
    ld a, l
    ld a, [hl]
    adc e
    adc [hl]
    sub l
    sbc b
    sbc d
    sbc e
    or d
    or e
    or h
    cp e
    cp [hl]
    rst $38

Call_00e_710f:
    ld c, $00

jr_00e_7111:
    ld hl, $71e5
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00e_711b:
    ld a, [hl+]
    and a
    jr z, jr_00e_7130

    cp $02
    jr nz, jr_00e_7124

    inc hl

jr_00e_7124:
    inc hl
    ld a, [$cf90]
    cp [hl]
    jr z, jr_00e_7138

    inc hl
    ld a, [hl]
    and a
    jr nz, jr_00e_711b

jr_00e_7130:
    inc c
    ld a, c
    cp $be
    jr c, jr_00e_7111

    and a
    ret


jr_00e_7138:
    inc c
    ld a, c
    ld [$cf90], a
    scf
    ret


    call Call_000_3ed7
    push hl
    push de
    push bc
    call Call_00e_71d1
    jr jr_00e_714c

jr_00e_714a:
    pop de

jr_00e_714b:
    inc hl

jr_00e_714c:
    ld a, [hl+]
    and a
    jp z, Jump_00e_71bf

    ld b, a
    ld a, [$d126]
    cp b
    jp c, Jump_00e_71bf

    ld a, [$cee9]
    and a
    jr z, jr_00e_7165

    ld a, [$cd3d]
    cp b
    jr nc, jr_00e_714b

jr_00e_7165:
    push de
    ld c, $04

jr_00e_7168:
    ld a, [de]
    inc de
    cp [hl]
    jr z, jr_00e_714a

    dec c
    jr nz, jr_00e_7168

    pop de
    push de
    ld c, $04

jr_00e_7174:
    ld a, [de]
    and a
    jr z, jr_00e_7196

    inc de
    dec c
    jr nz, jr_00e_7174

    pop de
    push de
    push hl
    ld h, d
    ld l, e
    call Call_00e_71c3
    ld a, [$cee9]
    and a
    jr z, jr_00e_7195

    push de
    ld bc, $0012
    add hl, bc
    ld d, h
    ld e, l
    call Call_00e_71c3
    pop de

jr_00e_7195:
    pop hl

jr_00e_7196:
    ld a, [hl]
    ld [de], a
    ld a, [$cee9]
    and a
    jr z, jr_00e_714a

    push hl
    ld a, [hl]
    ld hl, $0015
    add hl, de
    push hl
    dec a
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a74
    ld de, $cee9
    ld a, $0e
    call Call_000_009d
    ld a, [$ceee]
    pop hl
    ld [hl], a
    pop hl
    jr jr_00e_714a

Jump_00e_71bf:
    pop bc
    pop de
    pop hl
    ret


Call_00e_71c3:
    ld c, $03

jr_00e_71c5:
    inc de
    ld a, [de]
    ld [hl+], a
    dec c
    jr nz, jr_00e_71c5

    ret


Call_00e_71cc:
    ld a, $10
    jp Jump_000_3eb4


Call_00e_71d1:
    ld hl, $71e5
    ld b, $00
    ld a, [$cf90]
    dec a
    ld c, a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_00e_71e0:
    ld a, [hl+]
    and a
    jr nz, jr_00e_71e0

    ret


    ld h, c
    ld [hl], e
    ld l, a
    ld [hl], e
    ld a, e
    ld [hl], e
    adc h
    ld [hl], e
    sbc [hl]
    ld [hl], e
    xor l
    ld [hl], e
    cp h
    ld [hl], e
    call nz, $d473
    ld [hl], e
    rst $20
    ld [hl], e
    db $eb
    ld [hl], e
    rst $30
    ld [hl], e
    add hl, bc
    ld [hl], h
    ld a, [de]
    ld [hl], h
    jr nz, jr_00e_7277

    ld sp, $3974
    ld [hl], h
    ld c, [hl]
    ld [hl], h
    ld e, a
    ld [hl], h
    ld l, l
    ld [hl], h
    ld l, a
    ld [hl], h
    ld a, c
    ld [hl], h
    add l
    ld [hl], h
    sub l
    ld [hl], h
    xor d
    ld [hl], h
    or e
    ld [hl], h
    jp $d774


    ld [hl], h
    push hl
    ld [hl], h
    push af
    ld [hl], h
    rlca
    ld [hl], l
    add hl, bc
    ld [hl], l
    dec bc
    ld [hl], l
    dec de
    ld [hl], l
    daa
    ld [hl], l
    inc sp
    ld [hl], l
    ld b, h
    ld [hl], l
    ld d, l
    ld [hl], l
    ld h, [hl]
    ld [hl], l
    ld [hl], a
    ld [hl], l
    add a
    ld [hl], l
    sub [hl]
    ld [hl], l
    and d
    ld [hl], l
    xor [hl]
    ld [hl], l
    cp d
    ld [hl], l
    add $75
    jp nc, $e175

    ld [hl], l
    ld a, [c]
    ld [hl], l
    nop
    db $76
    ld [bc], a
    db $76
    db $10
    db $76
    ld [de], a
    db $76
    ld e, $76
    inc l
    db $76
    dec sp
    db $76
    dec a
    db $76
    ld d, b
    db $76
    ld e, a
    db $76
    ld l, [hl]
    db $76
    ld a, d
    db $76
    ld a, h
    db $76
    ld a, [hl]
    db $76
    add b
    db $76
    adc h
    db $76
    and c
    db $76
    xor l
    db $76
    xor a
    db $76
    or c
    db $76
    or e
    db $76
    call nz, $d576
    db $76
    db $e3
    db $76

jr_00e_7277:
    db $eb
    db $76
    di
    db $76
    ei
    db $76
    db $fd
    db $76
    inc c
    ld [hl], a
    dec de
    ld [hl], a
    dec e
    ld [hl], a
    rra
    ld [hl], a
    ld hl, $3177
    ld [hl], a
    inc sp
    ld [hl], a
    ld c, e
    ld [hl], a
    ld c, l
    ld [hl], a
    ld c, a
    ld [hl], a
    ld d, c
    ld [hl], a
    ld h, b
    ld [hl], a
    ld l, a
    ld [hl], a
    ld a, h
    ld [hl], a
    add [hl]
    ld [hl], a
    sub l
    ld [hl], a
    and c
    ld [hl], a
    and e
    ld [hl], a
    and l
    ld [hl], a
    or h
    ld [hl], a
    ret nz

    ld [hl], a
    call $d777
    ld [hl], a
    db $eb
    ld [hl], a
    db $ed
    ld [hl], a
    rlca
    ld a, b
    add hl, de
    ld a, b
    dec hl
    ld a, b
    ccf
    ld a, b
    ld c, [hl]
    ld a, b
    ld e, l
    ld a, b
    ld l, h
    ld a, b
    ld a, e
    ld a, b
    adc l
    ld a, b
    sub e
    ld a, b
    sbc b
    ld a, b
    sbc l
    ld a, b
    xor e
    ld a, b
    xor l
    ld a, b
    cp e
    ld a, b
    call $d978
    ld a, b
    rst $20
    ld a, b
    di
    ld a, b
    push af
    ld a, b
    rst $30
    ld a, b
    db $fc
    ld a, b
    inc bc
    ld a, c
    dec d
    ld a, c
    ld hl, $2379
    ld a, c
    cpl
    ld a, c
    dec a
    ld a, c
    ld c, c
    ld a, c
    ld d, l
    ld a, c
    ld e, a
    ld a, c
    ld h, [hl]
    ld a, c
    ld l, b
    ld a, c
    ld l, d
    ld a, c
    ld a, b
    ld a, c
    ld a, d
    ld a, c
    add [hl]
    ld a, c
    adc d
    ld a, c
    adc h
    ld a, c
    sbc b
    ld a, c
    sbc d
    ld a, c
    and [hl]
    ld a, c
    or d
    ld a, c
    call nz, $c679
    ld a, c
    rst $08
    ld a, c
    call nc, $e279
    ld a, c
    di
    ld a, c
    ld bc, $037a
    ld a, d
    ld d, $7a
    ld h, $7a
    jr c, jr_00e_7397

    ld a, [hl-]
    ld a, d
    ld c, e
    ld a, d
    ld e, c
    ld a, d
    ld e, e
    ld a, d
    ld e, l
    ld a, d
    ld e, a
    ld a, d
    ld h, c
    ld a, d
    ld [hl], d
    ld a, d
    add b
    ld a, d
    adc l
    ld a, d
    sub a
    ld a, d
    xor c
    ld a, d
    cp e
    ld a, d
    call z, $d67a
    ld a, d
    ldh [$7a], a
    ld [c], a
    ld a, d
    di
    ld a, d
    push af
    ld a, d
    rst $30
    ld a, d
    ld [$197b], sp
    ld a, e
    ld a, [hl+]
    ld a, e
    dec sp
    ld a, e
    ld c, c
    ld a, e
    ld c, e
    ld a, e
    ld c, l
    ld a, e
    ld c, a
    ld a, e
    ld d, c
    ld a, e
    ld h, d
    ld a, e
    ld [hl], h
    ld a, e
    ld a, h
    ld a, e
    adc a
    ld a, e
    and e
    ld a, e
    nop
    ld e, $17
    inc hl
    daa
    jr z, jr_00e_7387

    jr nc, @+$22

    scf
    dec hl
    ld b, b
    inc h
    nop
    nop
    ld a, [de]
    inc l
    rra
    daa
    inc h
    dec b
    add hl, hl
    dec hl
    ld l, $92
    nop
    ld bc, $a710
    nop
    ld [$0c1e], sp
    jr jr_00e_7395

    jr z, jr_00e_739d

    ld [hl], h

jr_00e_7387:
    ld e, $1f
    ld h, $20
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $008e
    dec c
    cpl
    ld [de], a
    inc bc

jr_00e_7395:
    jr jr_00e_7402

jr_00e_7397:
    rra
    db $76
    daa
    ld l, a
    jr nc, @+$73

jr_00e_739d:
    nop
    ld bc, $2314
    nop
    add hl, bc
    dec hl
    rrca
    rra
    ld d, $77
    dec e
    ld b, c
    inc h
    ld h, c
    nop
    ld bc, $8d1e
    nop
    ld de, $1631
    ld a, b
    dec e
    ld [hl], c
    inc h
    add c
    dec hl
    sbc c
    nop
    nop
    ld [$0c1e], sp
    jr jr_00e_73d9

    dec h
    nop
    nop
    ld [de], a
    ld [hl-], a
    ld d, $1d
    dec de
    dec l
    ld hl, $2537
    ld l, [hl]
    inc l
    add l
    scf
    ld e, [hl]
    nop
    ld bc, $9a20
    nop
    rlca

jr_00e_73d9:
    ld c, c
    dec c
    ld d, $16
    ld c, l
    ld e, $4b
    ld h, $4a
    ld l, $4f
    ld [hl], $4c
    nop
    nop
    inc e
    rla
    nop
    nop
    rlca
    rla
    rrca
    ld [hl-], a
    rla
    ld l, a
    rra
    dec d
    daa
    ld h, a
    nop
    ld [bc], a
    cpl
    ld bc, $000a
    add hl, de
    ld [hl], e
    inc e
    ld c, c
    jr nz, @+$50

jr_00e_7402:
    dec h
    ld c, l
    ld a, [hl+]
    ld c, h
    jr nc, @+$51

    nop
    ld bc, $8826
    nop
    ld e, $8b
    ld hl, $256b
    ld a, h
    ld a, [hl+]
    ld l, d
    jr nc, jr_00e_747e

    scf
    sub a
    nop
    nop
    dec e
    ld e, a
    ld h, $8a
    nop
    ld bc, $a810
    nop
    ld [$0c0a], sp
    jr @+$13

    jr z, jr_00e_7442

    daa
    ld e, $2c
    ld h, $9a
    nop
    nop
    ld [$0c0a], sp
    jr jr_00e_744e

    ld [hl+], a
    nop
    ld bc, $911c
    nop
    ld a, [bc]
    ld a, l
    dec c
    daa
    ld [de], a

jr_00e_7442:
    dec e
    add hl, de
    dec hl
    rra
    ld [hl], h
    ld h, $25
    dec hl
    sbc e
    ld l, $63
    nop

jr_00e_744e:
    ld bc, $012a

jr_00e_7451:
    nop
    ld e, $17
    inc hl
    daa
    jr z, @+$21

    dec l
    jr nz, jr_00e_748d

    dec hl
    scf
    inc h
    nop
    nop
    db $10
    cpl
    inc d
    ld [hl], $19
    ld [hl+], a
    rra
    ld l, l
    ld h, $3a
    ld l, $38
    nop
    nop
    nop
    nop
    ld a, [bc]
    sub b
    inc d
    dec b
    ld e, $76
    jr z, @+$60

    nop
    nop
    inc d
    inc l
    add hl, de
    ld d, d

jr_00e_747e:
    jr nz, @+$2d

    add hl, hl
    jr c, jr_00e_74b7

    ccf
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $008b
    ld [de], a
    jr nc, @+$19

jr_00e_748d:
    add b
    ld e, $3e
    daa
    dec hl
    ld [hl-], a
    ld a, [hl-]
    nop
    ld bc, $9b1e
    nop
    rlca
    jr nc, jr_00e_74a9

    inc hl
    ld [de], a
    jr z, @+$18

    scf
    dec de
    add h
    ld hl, $2870
    ld h, a
    jr nc, jr_00e_74e1

jr_00e_74a9:
    nop
    ld bc, $9319
    nop
    dec de
    ld e, a
    inc hl
    adc d
    nop
    nop
    ld de, $142b

jr_00e_74b7:
    ld [hl], h
    jr jr_00e_7522

    dec e
    and e
    inc hl
    ld c, $2a
    ld h, c
    ld [hl-], a
    ld de, $0200
    ld [hl+], a
    ld bc, $0098
    ld de, $1637
    ld l, d
    dec de
    ld l, c
    jr nz, jr_00e_7451

    dec h
    ld l, e
    ld a, [hl+]
    ld [hl], c
    cpl
    jr c, jr_00e_74d7

jr_00e_74d7:
    nop
    ld [$0f91], sp
    scf
    jr jr_00e_750a

    rra
    ld l, [hl]
    ld a, [hl+]

jr_00e_74e1:
    add d
    inc [hl]
    jr c, jr_00e_74e5

jr_00e_74e5:
    nop
    dec d
    inc d
    add hl, de
    ld b, l
    ld e, $0c
    inc h
    ld [hl], h
    dec hl
    ld l, d
    ld sp, $36a3
    ld c, $00
    nop
    jr jr_00e_750c

    dec de
    ld b, a
    dec e
    ld d, $20
    ld c, l
    inc h
    ld c, [hl]
    daa
    ld c, a
    dec l
    dec d
    jr nc, @+$4c

    nop
    nop
    nop
    nop

jr_00e_750a:
    nop
    ld [bc], a

jr_00e_750c:
    jr nz, jr_00e_750f

    inc d

jr_00e_750f:
    nop
    ld [de], a
    inc [hl]
    rla
    dec hl
    ld e, $24
    daa
    ld h, c
    ld [hl-], a
    dec [hl]
    nop
    nop
    rrca
    inc d
    inc de
    ld e, b
    add hl, de
    ld h, e

jr_00e_7522:
    ld hl, $2b15
    ld l, d
    nop
    nop
    add hl, bc
    dec hl
    rrca
    rra
    add hl, de
    ld [hl], a
    ld [hl+], a
    ld b, c
    dec hl
    ld h, c
    nop

jr_00e_7533:
    ld bc, $9612
    nop
    dec b
    inc e
    inc c
    ld h, d
    inc de
    ld [de], a
    inc e
    ld de, $6124
    inc l
    ld [hl], a
    nop
    ld bc, $0825
    nop
    ld [de], a
    ld [hl-], a
    ld d, $1d
    dec de
    dec l
    ld hl, $2837
    add l
    jr nc, jr_00e_75b2

    nop
    inc bc
    ld bc, $0095
    db $10
    ld e, l
    inc d
    ld [hl-], a
    dec de
    inc a
    rra
    ld l, c
    ld h, $5e
    ld a, [hl+]
    ld [hl], e
    nop
    inc bc
    ld bc, $0031
    dec bc
    ld l, a
    db $10
    ld e, b
    dec d
    ld a, b
    dec e
    ld l, d
    inc h
    ld e, c
    dec hl
    sbc c
    nop
    nop
    inc c
    inc bc
    jr jr_00e_75ab

    ld e, $2d
    ld h, $6b
    inc l
    ld l, a
    jr nc, jr_00e_75f5

    ld [hl], $26
    nop
    inc bc
    ld bc, $007e
    inc d
    ld b, e
    add hl, de
    dec hl
    inc h
    ld [hl], h
    inc l
    ld b, l
    inc [hl]
    ld b, d
    nop
    nop
    rrca
    ld e, l
    rla
    ld [hl], c
    rra
    inc bc
    daa
    ld h, b
    cpl
    and h
    nop
    nop
    ld hl, $261b
    ld a, [de]
    dec hl
    ld [hl], h
    jr nc, jr_00e_7533

jr_00e_75ab:
    dec [hl]
    add hl, de
    nop
    nop
    ld hl, $2607

jr_00e_75b2:
    ld [$092b], sp
    jr nc, jr_00e_75bc

    dec [hl]
    ld b, h
    nop
    nop
    ld a, [bc]

jr_00e_75bc:
    jr z, jr_00e_75cf

    inc l
    dec de
    adc c
    inc h
    ld h, a
    cpl
    inc sp
    nop
    nop
    dec c
    ld c, [hl]
    inc d
    adc l
    ld e, $93
    daa
    and e

jr_00e_75cf:
    jr nc, @+$4c

    nop
    ld bc, $8021
    nop
    inc e
    daa
    rra
    ld [hl-], a
    inc h
    ld e, l
    dec hl
    sbc d
    inc [hl]
    jr c, jr_00e_75e1

jr_00e_75e1:
    ld bc, $811a
    nop
    inc c
    ld [hl-], a
    ld de, $185d
    dec e
    dec e
    adc e
    jr nz, jr_00e_764d

    dec h
    ld h, b
    nop
    nop
    dec bc
    ld l, a

jr_00e_75f5:
    db $10
    ld e, b
    dec d
    ld a, b
    dec e
    ld l, d
    inc h
    ld e, c
    dec hl
    sbc c
    nop
    nop
    nop
    nop
    inc h
    dec hl
    daa
    ld l, l
    dec hl
    rlca
    jr nc, jr_00e_7677

    inc [hl]
    ld a, e
    scf
    dec [hl]
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld d, h
    dec h
    ld h, a
    ld a, [hl+]
    add hl, bc
    ld sp, $3671
    ld d, a
    nop
    nop
    dec d
    ld sp, $5419
    dec e
    jr nc, jr_00e_764c

    ld d, [hl]
    ld l, $81
    ld [hl], $67
    nop
    ld bc, $8f23
    nop
    jr nz, jr_00e_76ae

    dec h
    ld l, h
    jr z, jr_00e_76ae

    dec l
    ld [hl], d
    jr nc, @-$65

    nop
    nop
    nop
    ld bc, $751c
    nop
    add hl, bc
    ld b, e
    rrca
    ld [bc], a
    dec d
    sbc d
    dec de
    ld [hl], h
    ld hl, $2745

jr_00e_764c:
    dec h

jr_00e_764d:
    dec l
    ld h, a
    nop
    ld bc, $7822
    nop
    ld e, $2d
    inc hl
    ld a, $28
    sbc h
    dec l
    inc h
    ld [hl-], a
    ld a, [hl-]
    nop
    ld bc, $761a

jr_00e_7662:
    nop
    rrca
    dec l
    inc de
    ld e, e
    jr jr_00e_7685

    rra
    and e
    jr z, @+$5b

    nop
    nop
    dec d
    rla
    inc e
    daa
    inc hl
    dec hl
    inc l
    ld h, e

jr_00e_7677:
    inc sp
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    dec hl
    rrca
    rra

jr_00e_7685:
    rla
    ld c, $1f
    ld h, c
    daa
    and e
    nop
    ld bc, $771f
    nop
    dec bc
    jr nc, jr_00e_76a6

    ld e, l
    ld d, $4d
    dec de
    adc l
    ld e, $4e
    inc hl
    inc a
    ld h, $4f
    dec hl
    ld e, [hl]
    nop
    nop
    ld a, [bc]
    ld d, [hl]
    inc d
    ld h, c

jr_00e_76a6:
    inc hl
    dec d
    dec l
    ld d, d
    inc a
    ccf
    nop
    nop

jr_00e_76ae:
    nop
    nop
    nop
    nop
    nop
    ld bc, $741f
    nop
    inc d
    dec l
    jr jr_00e_76da

    ld e, $41
    inc h
    ld h, e
    jr z, jr_00e_7662

    inc l
    ld h, c
    nop
    ld bc, $6e19
    nop
    db $10
    ld e, a
    inc de
    scf
    add hl, de
    inc bc
    rra
    ld [hl+], a
    ld h, $85
    dec l
    jr c, jr_00e_76d5

jr_00e_76d5:
    nop
    ld [de], a
    ld a, d
    rla
    inc bc

jr_00e_76da:
    rra
    ld [$2227], sp
    cpl
    dec h
    ld a, [hl-]
    dec sp
    nop
    nop
    inc sp
    dec hl
    scf
    ld h, c
    inc a
    adc a
    nop
    nop
    inc sp
    dec sp
    scf
    ld h, c
    inc a
    ld [hl], $00
    nop
    inc sp
    ld d, a
    scf
    ld h, c
    inc a
    ld [hl], c
    nop
    nop
    nop
    ld bc, $901c
    nop
    inc c
    inc l
    ld de, $1806
    ld h, a
    ld hl, $2c9a
    and e
    nop
    ld bc, $8a1c
    nop
    inc d
    dec bc
    add hl, de
    inc c
    ld e, $17
    inc hl
    sbc b
    jr z, jr_00e_7784

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    jr nz, jr_00e_7725

    ld d, e

jr_00e_7725:
    nop
    db $10
    ld h, d
    dec d
    ld l, $1c
    ld l, l
    inc hl
    dec [hl]
    ld a, [hl+]
    ld d, e
    nop
    nop
    nop
    ld [bc], a
    ld hl, $5501
    nop
    ld b, $27
    ld [$0b56], sp
    ld h, d
    rrca
    ld l, b
    inc d
    dec d
    ld a, [de]
    ld d, l
    ld hl, $2961
    ld d, a
    ld [hl-], a
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $591e
    nop
    ld a, [bc]
    ld d, [hl]
    inc d
    ld h, c
    ld e, $15
    jr z, @+$54

    ld [hl-], a
    ccf
    nop
    ld bc, $4237
    nop
    ld a, [bc]
    ld d, [hl]
    inc d
    ld h, c
    inc hl
    dec d
    dec l
    ld d, d
    scf
    ccf
    nop
    ld bc, $5b28
    nop
    ld [hl+], a
    ld b, a
    daa
    and e
    inc l
    dec hl
    ld sp, $0038
    nop
    ld [hl+], a
    ld b, a
    daa
    and e
    ld l, $2b
    dec [hl]

jr_00e_7784:
    jr c, jr_00e_7786

jr_00e_7786:
    ld bc, $5d20
    nop
    inc de
    ld l, h
    jr @+$2d

    ld e, $37
    dec h
    ld h, c
    dec l
    jr c, jr_00e_7795

jr_00e_7795:
    nop
    inc de
    ld l, h
    jr jr_00e_77c5

    ld e, $37
    add hl, hl
    ld h, c
    inc [hl]
    jr c, jr_00e_77a1

jr_00e_77a1:
    nop
    nop
    nop
    nop
    ld bc, $6116
    nop
    ld a, [bc]
    inc e
    ld de, $18a3
    jr z, jr_00e_77cf

    add c
    ld h, $9a
    nop
    nop
    ld a, [bc]
    inc e
    ld de, $1ba3
    jr z, jr_00e_77e0

    add c
    cpl
    sbc d
    nop
    ld bc, $6328
    nop
    ld [hl+], a

jr_00e_77c5:
    ld e, $27
    dec hl
    ld l, $83
    dec [hl]
    jr c, jr_00e_77cd

jr_00e_77cd:
    nop
    ld [hl+], a

jr_00e_77cf:
    ld e, $27
    dec hl
    inc l
    add e
    ld sp, $0038
    ld [bc], a
    ld a, [bc]
    ld bc, $0065
    add hl, bc
    ld bc, $320e

jr_00e_77e0:
    inc de
    ld l, a
    jr jr_00e_77e7

    dec e
    sbc h
    ld [hl+], a

jr_00e_77e7:
    ld [hl+], a
    daa
    ld h, $00
    nop
    nop
    ld [bc], a
    jr nz, jr_00e_77f1

jr_00e_77f0:
    ld h, a

jr_00e_77f1:
    ld [bc], a
    ld hl, $6801
    ld [bc], a
    ld [hl+], a
    ld bc, $0069
    ld [$101c], sp
    dec l
    rla
    ld h, d
    ld e, $2c
    inc h
    ld [hl], h
    ld a, [hl+]
    inc h
    nop
    nop
    ld [$101c], sp
    inc [hl]
    rla
    ld h, d
    ld e, $2c
    inc h
    ld d, e
    ld a, [hl+]
    ld a, e
    cpl
    dec hl
    inc [hl]
    dec [hl]
    nop
    nop
    ld [$101c], sp
    ld d, h
    rla
    ld h, d
    ld e, $18
    inc h
    ld a, [hl+]
    ld a, [hl+]
    ld d, [hl]
    cpl
    ld h, c
    inc [hl]
    ld d, a
    nop
    nop
    ld [$101c], sp
    scf
    rla
    ld h, d
    ld e, $2c
    inc h
    ld a, $2a
    ld [hl], d
    ld a, [hl+]
    ld [hl], $2f
    sub a
    inc [hl]
    jr c, jr_00e_783f

jr_00e_783f:
    ld bc, $291c
    nop
    inc d
    ld b, e
    add hl, de
    dec hl
    jr nz, jr_00e_78bd

    daa
    ld b, l
    ld l, $42
    nop
    ld bc, $8216
    nop
    ld a, [bc]
    jr nc, jr_00e_7864

    inc l
    dec d
    ld l, l
    inc e
    ld de, $7224
    nop
    ld bc, $2d16
    nop
    ld a, [bc]
    jr z, jr_00e_7875

jr_00e_7864:
    inc l
    jr jr_00e_77f0

    rra
    ld h, a
    ld h, $33
    nop
    ld bc, $2e18
    nop
    dec c
    ld c, [hl]
    inc d
    adc l
    dec de

jr_00e_7875:
    sub e
    ld [hl+], a
    and e
    add hl, hl
    ld c, d
    nop
    ld [bc], a
    ld [hl+], a
    ld bc, $006f
    db $10
    ld e, a
    inc de
    scf
    ld a, [de]
    inc bc
    ld hl, $2922
    add l
    ld sp, $0038
    nop
    db $10
    ld e, a
    inc de
    scf
    nop
    ld bc, $7107
    nop
    nop
    ld bc, $720a
    nop
    nop
    nop
    inc c
    rra
    db $10
    ld [hl], h
    inc d
    add hl, hl
    add hl, de
    ld h, e
    ld e, $2a
    inc hl
    ld h, c
    nop
    nop
    nop
    nop
    inc d
    dec l
    jr jr_00e_78d1

    ld e, $41
    daa
    ld h, e
    dec l
    and c
    inc sp
    ld h, c
    nop
    nop
    add hl, bc

jr_00e_78bd:
    ld b, e
    rrca
    ld [bc], a
    dec d
    sbc d
    dec de
    ld [hl], h
    inc e
    ld h, e

jr_00e_78c6:
    dec h
    ld b, l
    ld l, $25
    dec l
    ld h, a
    nop
    nop
    rrca
    dec l
    inc de

jr_00e_78d1:
    ld e, e
    jr jr_00e_78f0

    inc hl
    and e
    cpl
    ld e, c
    nop
    nop
    ld d, $4d
    dec de
    adc l
    ld e, $4e
    ld h, $3c
    dec hl
    ld c, a
    ld [hl-], a
    ld e, [hl]
    nop
    nop
    ld e, $2d
    inc hl
    ld a, $2c
    sbc h
    ld [hl-], a
    inc h

jr_00e_78f0:
    jr c, jr_00e_792c

    nop
    nop
    nop
    nop
    nop
    ld bc, $7c07
    nop
    nop
    ld bc, $7d0a
    nop
    rlca
    ld l, d
    nop
    nop
    ld a, [bc]
    ld e, l
    dec c
    ld c, l
    ld c, $4e
    rrca
    ld c, a
    ld [de], a
    jr nc, jr_00e_7926

    ld [de], a
    inc e
    db $10
    ld [hl+], a
    inc a
    nop
    nop

jr_00e_7916:
    inc d
    ld b, e
    add hl, de
    dec hl
    inc h
    ld [hl], h
    inc l
    ld b, l
    inc [hl]
    ld b, d
    nop
    nop
    nop
    nop
    inc e
    daa

jr_00e_7926:
    rra
    ld [hl-], a
    daa
    ld e, l
    jr nc, jr_00e_78c6

jr_00e_792c:
    dec sp
    jr c, jr_00e_792f

jr_00e_792f:
    nop
    inc c
    ld [hl-], a
    ld de, $185d
    dec e
    ld hl, $258b
    ld e, [hl]
    dec hl
    ld h, b
    nop
    nop
    ld a, [bc]
    jr nc, jr_00e_7950

    inc l
    dec d
    ld l, l
    jr nz, jr_00e_7957

    dec hl
    ld [hl], d
    nop
    nop
    ccf
    ld [hl], b
    ld b, d
    ld e, [hl]
    ld b, [hl]
    ld l, c

jr_00e_7950:
    ld c, e
    ld [hl], $51
    add l
    nop
    nop
    inc hl

jr_00e_7957:
    ld [hl+], a
    add hl, hl
    ld l, d
    jr nc, jr_00e_7982

jr_00e_795c:
    jr c, jr_00e_799d

    nop
    ld bc, $1614
    nop
    rrca
    ld hl, $0000
    nop
    nop
    nop
    nop
    ld e, $8b
    ld hl, $256b
    ld a, h
    dec l
    ld l, d
    dec [hl]
    ld h, a
    inc a
    sub a
    nop
    nop
    nop
    nop
    inc d
    dec bc
    add hl, de
    inc c
    ld [hl+], a
    rla
    ld a, [hl+]

jr_00e_7982:
    sbc b
    ld sp, $006a
    nop
    ld [hl-], a
    add e
    nop
    nop
    nop
    nop
    ld de, $1631
    ld a, b
    dec e
    ld [hl], c
    jr z, jr_00e_7916

    ld [hl-], a
    sbc c
    nop
    nop
    nop
    nop
    jr nz, jr_00e_7a19

jr_00e_799d:
    daa
    ld l, h
    dec hl
    ld a, b
    ld sp, $3572
    sbc c
    nop
    nop
    inc c
    inc l
    ld de, $1806
    ld h, a
    dec h
    sbc d
    inc sp
    and e
    nop
    nop
    ld a, [bc]
    ld a, l
    dec c
    daa
    ld [de], a
    dec e
    add hl, de
    dec hl
    ld hl, $2974
    dec h
    jr nc, jr_00e_795c

    scf
    ld h, e
    nop
    nop
    nop
    inc bc
    ld bc, $000e
    dec e
    ld e, a
    ld h, $8a
    nop
    ld bc, $2610
    nop
    nop
    nop
    db $10
    ld e, l
    inc d
    ld [hl-], a
    dec de
    inc a
    rra
    ld l, c
    ld h, $5e
    ld a, [hl+]
    ld [hl], e
    nop
    ld bc, $9724
    nop
    dec b
    inc e
    inc c
    ld h, d
    dec d
    ld [de], a
    rra
    ld de, $6128
    ld sp, $0077
    nop
    dec b
    inc e
    inc c
    ld h, d
    dec d
    ld [de], a
    rra
    ld de, $612c
    ld [hl], $77
    nop
    nop
    nop
    ld bc, $0910
    nop
    rlca
    ld c, c
    dec c
    ld d, $14
    ld c, l
    dec de
    ld c, e
    ld [hl+], a
    ld c, d
    add hl, hl
    ld c, a
    jr nc, jr_00e_7a61

    nop
    nop
    rlca
    ld c, c

jr_00e_7a19:
    dec c
    ld d, $16
    ld c, l
    ld e, $4b
    dec hl
    ld c, d
    scf
    ld c, a
    ld b, c
    ld c, h
    nop
    nop
    rlca
    jr nc, @+$0f

    inc hl
    ld [de], a
    jr z, jr_00e_7a44

    scf
    dec de
    add h
    inc hl
    ld [hl], b
    dec hl
    ld h, a
    ld [hl-], a
    jr c, jr_00e_7a38

jr_00e_7a38:
    nop
    nop
    ld bc, $9e21
    nop
    inc de
    jr nc, jr_00e_7a59

    ld e, $1e
    rra

jr_00e_7a44:
    dec h
    ld a, a
    dec l
    jr nz, jr_00e_7a7f

    ld h, c
    nop
    nop
    inc de
    jr nc, jr_00e_7a67

    ld e, $1e
    rra
    daa
    ld a, a
    jr nc, @+$22

    ld [hl], $61
    nop

jr_00e_7a59:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_7a61:
    ld bc, $a428
    nop
    ld e, $27

jr_00e_7a67:
    jr nz, jr_00e_7a80

    inc hl
    dec l
    daa
    ld d, e
    dec hl
    inc h
    jr nc, jr_00e_7ad2

    nop
    nop
    ld e, $27
    jr nz, jr_00e_7a8e

    inc hl
    dec l
    daa
    ld d, e
    cpl
    inc h
    scf
    ld h, c

jr_00e_7a7f:
    nop

jr_00e_7a80:
    ld bc, $a614
    nop
    rlca
    ld h, d
    ld c, $9e
    rla
    ld [hl], h
    ld [hl+], a
    and d
    nop
    nop

jr_00e_7a8e:
    rlca
    ld h, d
    ld c, $9e
    dec de
    ld [hl], h
    add hl, hl
    and d
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $0007
    ld [$0c1e], sp
    jr @+$15

    jr z, jr_00e_7abe

    ld [hl], h
    inc h
    rra
    ld l, $20
    nop
    ld [bc], a
    ld a, [bc]
    ld bc, $0010
    ld [$0c0a], sp
    jr jr_00e_7ac6

    jr z, jr_00e_7ad0

    daa
    inc h
    inc l
    ld l, $9a
    nop
    ld bc, $2719

jr_00e_7abe:
    nop
    dec bc
    ld l, a
    db $10
    ld e, b
    dec d
    ld a, b
    ld a, [de]

jr_00e_7ac6:
    ld l, d
    rra
    ld e, c
    inc h
    sbc c
    nop
    nop
    rla
    inc a
    inc e

jr_00e_7ad0:
    ld l, c
    inc hl

jr_00e_7ad2:
    ld h, c
    ld a, [hl+]
    and c
    nop
    nop
    ld hl, $2630
    inc l
    dec l
    inc h
    ld [hl], $3f
    nop
    nop
    nop
    ld bc, $361e
    nop
    dec d
    ld sp, $5419
    dec e
    jr nc, jr_00e_7b10

    ld d, [hl]
    add hl, hl
    add c
    cpl
    ld h, a
    nop
    nop
    nop
    nop
    nop
    ld bc, $b210
    nop
    add hl, bc
    inc [hl]
    rrca
    dec hl
    ld d, $63
    ld e, $a3
    ld h, $35
    ld l, $53
    nop
    ld bc, $b310
    nop
    ld [$0f91], sp
    scf

jr_00e_7b10:
    ld d, $2c
    inc e
    ld l, [hl]
    inc hl
    add d
    ld a, [hl+]
    jr c, jr_00e_7b19

jr_00e_7b19:
    ld bc, $b424
    nop
    add hl, bc
    inc [hl]
    rrca
    dec hl
    jr jr_00e_7b86

    ld hl, $2aa3
    dec [hl]
    jr c, jr_00e_7b7c

    nop
    ld bc, $1c24
    nop
    ld [$0f91], sp
    scf
    jr jr_00e_7b60

    rra
    ld l, [hl]
    daa
    add d
    cpl
    jr c, jr_00e_7b3b

jr_00e_7b3b:
    nop
    add hl, bc
    inc [hl]
    rrca
    dec hl
    jr jr_00e_7ba5

    inc h
    and e
    ld l, $35
    scf
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ba15
    nop
    rrca
    ld c, l
    ld de, $134e
    ld c, a
    jr jr_00e_7b90

    ld hl, $2e50

jr_00e_7b60:
    ld c, h
    nop
    ld [bc], a
    cpl
    ld bc, $00bb
    rrca
    ld c, l
    ld de, $134e
    ld c, a
    inc e
    inc sp
    ld h, $50
    inc [hl]
    ld c, h
    nop
    nop
    rrca
    ld c, l
    ld de, $134e
    ld c, a
    nop

jr_00e_7b7c:
    ld bc, $bd15
    nop
    dec c
    inc hl
    rrca
    ld c, l
    ld [de], a
    ld c, a

jr_00e_7b86:
    dec d
    ld c, [hl]
    ld a, [de]
    inc sp
    ld hl, $2a4b
    dec d
    nop
    ld [bc], a

jr_00e_7b90:
    cpl
    ld bc, $00be
    dec c
    inc hl
    rrca
    ld c, l
    ld [de], a
    ld c, a
    rla
    ld c, [hl]
    dec e
    inc sp
    ld h, $4b
    ld sp, $0015
    nop
    dec c

jr_00e_7ba5:
    inc hl
    rrca
    ld c, l
    ld [de], a
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
