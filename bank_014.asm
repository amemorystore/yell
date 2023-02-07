;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    nop
    add hl, bc
    inc d
    dec a
    ld b, b
    ld l, c
    ld d, c
    or d
    ld c, [hl]
    add hl, bc
    ld [hl+], a
    ld h, h
    ld b, [hl]
    db $eb
    add $0a
    ld a, [bc]
    adc a
    nop
    ld l, c
    rlc c
    ld b, $44
    rst $38
    add $0f
    inc d
    ld [$0300], sp
    rst $00
    ld [hl+], a
    ld b, b
    inc l
    ld bc, $0805
    nop
    pop bc
    ld bc, $070b
    inc bc
    ld [bc], a
    ld [bc], a
    add hl, bc
    dec e
    rst $38
    rst $38
    ld bc, $0902
    dec e
    rst $38
    rst $38
    ld [bc], a
    dec sp
    rst $00
    dec b
    ld [$2013], sp
    dec c
    dec c
    dec c
    dec c
    ld hl, $2c28
    inc l
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    dec sp
    ld l, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    inc h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    rlca
    cpl
    rlca
    jr z, jr_014_4091

    add hl, hl
    scf
    ld a, l
    ld a, l
    ld a, [hl-]
    ld a, l
    ld a, [hl]
    inc de
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
    inc h
    ld d, a
    add hl, hl
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc de
    rlca
    rlca
    rlca
    dec e
    ld e, $3e
    dec sp
    cpl
    rlca
    ld h, d
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    rlca
    rlca
    rlca

jr_014_4091:
    rlca
    cpl
    rlca
    inc de
    dec bc
    dec bc
    dec bc
    ld h, l
    ld h, h
    jr z, jr_014_40c5

    dec bc
    dec bc
    ld c, [hl]
    ld bc, $2901
    ld sp, $5631
    ld [hl], a
    ld [hl], a
    ld [hl], a
    inc de
    dec bc
    dec bc
    dec bc
    ld d, l
    ld d, l
    jr z, jr_014_40d9

    dec bc
    dec bc
    ld c, [hl]
    ld bc, $293e
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc h
    dec h
    rlca

jr_014_40c5:
    cpl
    rlca
    rlca
    jr z, jr_014_40f3

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

jr_014_40d9:
    ld d, l
    ld d, l
    ld d, l
    jr z, jr_014_410a

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc l
    nop
    add hl, bc

jr_014_40f3:
    ld [hl-], a
    ld a, l
    ld b, c
    ld [hl+], a
    ld c, l
    xor c
    ld c, h
    inc bc
    ld [$4070], sp
    sub b
    rst $00
    add hl, bc
    ld a, [bc]
    nop
    inc de
    ld [bc], a
    rst $00
    ld e, $97
    ld c, a
    dec e

jr_014_410a:
    rst $00
    inc c
    ld a, [bc]
    inc h
    nop
    ld sp, hl
    add $13
    ld b, c
    ld b, e
    ld [bc], a
    dec b
    jr nc, jr_014_4118

jr_014_4118:
    ret nz

    add hl, bc
    ld a, [hl-]
    ld [bc], a
    ret nz

    ld [bc], a
    rlca
    inc sp
    dec bc
    dec bc
    add hl, sp
    inc c
    ld a, [bc]
    ld [hl+], a
    inc c
    ld e, e
    rst $38
    pop de
    ld b, c
    rst $10
    add hl, bc
    ld [hl+], a
    rrca
    ld c, b
    rst $38
    pop de
    ld b, d
    jp c, Jump_000_220f

    ld c, $31
    rst $38
    ret nc

    ld b, e
    jp c, Jump_000_2206

    ld [de], a
    dec sp
    rst $38
    db $d3
    ld b, h
    adc $18
    ld [hl+], a
    ld de, $ff2a
    ret nc

    ld b, l
    rst $10
    ld a, [bc]
    ld [hl+], a
    ld de, $ff5b
    pop de
    ld b, [hl]
    rst $10
    dec bc
    rlca
    dec c
    ld h, $ff
    pop de
    ld b, a
    rst $18
    dec bc
    ld [hl+], a
    dec bc
    dec e
    rst $38
    pop de
    ld c, b
    jp c, Jump_000_2207

    db $10
    inc e
    rst $38
    ret nc

    ld c, c
    adc $10
    ld [hl+], a
    inc c
    inc de
    rst $38
    pop de
    ld c, d
    jp c, $a908

    rst $00
    dec b
    jr nc, jr_014_4198

    ret z

    add hl, bc
    ld a, [hl-]
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e

jr_014_4198:
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld h, l
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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld h, h
    ld a, $3f
    dec sp
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld h, l
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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, l
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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld h, h
    inc h
    ld b, $25
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld h, l
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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, l
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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld h, h
    ld a, d
    ld d, h
    ld [$7a7a], sp
    ld a, $3f
    dec sp
    ld h, l
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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, l
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
    ld b, e
    ld d, h
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld h, h
    ld a, d
    ld d, h
    ld a, d
    ld a, d
    ld a, d
    inc h
    ld b, $25
    ld h, l
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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, l
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
    ld b, e
    ld a, b
    ld a, b
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    dec l
    rra
    ld b, e
    rra
    rra
    ld l, d
    ld [$7a54], sp
    jr jr_014_42db

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
    ld b, e
    ld b, e
    ld b, e
    ld h, l
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
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    dec d
    rra
    ld b, e
    rra
    jr jr_014_430d

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
    ld b, e
    ld b, e
    ld b, e

jr_014_42db:
    ld l, $43
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
    ld b, e
    jr jr_014_433f

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
    ld b, e
    ld b, e
    ld b, e

jr_014_430d:
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e

jr_014_433f:
    rla
    ld c, b
    ld a, [bc]
    or d
    ld b, e
    or b
    ld d, d
    sub e
    ld d, c
    inc c
    add hl, bc
    adc h
    ld c, c
    db $eb
    add $0a
    ld a, [bc]
    ld de, $7900
    rst $00
    ld hl, $403d
    sbc e
    rrc l
    inc d
    nop
    nop
    inc bc
    rst $00
    ld h, c
    ld b, e
    rrca
    inc b
    adc e
    rlca
    ld [bc], a
    pop bc
    adc e
    ld [$c103], sp
    rra
    inc b
    nop
    ld l, h
    rra
    ld c, $01
    jp nz, $2101

    inc bc
    ld [$3107], sp
    daa
    ld [$d0ff], sp
    ld bc, $3c31
    ld c, $ff
    ret nc

    ld [bc], a
    ld [hl+], a
    ld e, c
    inc c
    rst $38
    ret nc

    inc bc
    ld [hl+], a
    ld h, h
    rrca
    rst $38
    ret nc

    inc b
    ld sp, $106d
    rst $38
    ret nc

    dec b
    ld sp, $0c7b
    rst $38
    ret nc

    ld b, $31
    adc h
    inc c
    rst $38
    ret nc

    rlca
    ld c, h
    res 1, e
    rlca
    ld c, l
    res 1, e
    ld [$c7eb], sp
    rra
    inc b
    ldh a, [$c7]
    rra
    ld c, $35
    rla
    ld [hl], $36
    ld b, e
    ld b, d
    dec [hl]
    dec [hl]
    rla
    ld [hl], $35
    rla
    ld [hl], $36
    ld b, e
    ld b, d
    dec [hl]
    dec [hl]
    rla
    ld [hl], $35
    ld [hl], $2b
    dec hl
    ld b, e
    ld b, d
    inc l
    inc l
    dec [hl]
    ld [hl], $35
    ld [hl], $41
    ld b, e
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    dec [hl]
    ld [hl], $35
    ld [hl], $42
    ld b, c
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    dec [hl]
    ld [hl], $35
    ld [hl], $43
    ld b, c
    ld b, e
    ld b, d
    ld b, c
    ld b, d
    dec [hl]
    ld [hl], $35
    ld [hl], $41
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, c
    dec [hl]
    ld [hl], $35
    ld [hl], $43
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    dec [hl]
    ld [hl], $2c
    dec hl
    ld b, d
    ld b, c
    ld b, e
    ld b, d
    ld b, c
    ld b, d
    inc l
    dec hl
    ld b, c
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    add hl, hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $412a
    dec [hl]
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    ld [hl], $41
    dec [hl]
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    ld [hl], $41
    jr jr_014_445a

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    ld b, c
    inc e
    daa
    ld e, $27
    dec [hl]
    rla
    ld [hl], $1e
    rra
    ld b, c
    ld a, [bc]
    ld c, b
    ld a, [bc]
    ld a, [bc]
    jr jr_014_4472

    dec de
    ld b, c

jr_014_445a:
    ld b, c
    ld b, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec [hl]
    rla
    ld [hl], $01
    ld bc, $0a01
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr jr_014_4486

    dec de
    ld bc, $2a01
    ld a, [bc]
    ld a, [bc]

jr_014_4472:
    ld a, [bc]
    ld a, [bc]
    dec [hl]
    rla
    ld [hl], $17
    rla
    ld [hl], $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr @+$1c

    dec de
    ld a, [de]
    ld a, [de]
    dec de
    ld b, h
    ld a, [bc]

jr_014_4486:
    ld b, l
    ld a, [bc]
    inc l
    jr z, @+$2d

    jr z, jr_014_44b5

    dec hl
    jr @+$1c

    dec de
    ld a, [bc]
    ld [bc], a
    ld b, b
    ld a, [bc]
    ld bc, $0101
    inc l
    jr z, jr_014_44c6

    ld a, [bc]
    inc de
    ld d, $0a
    add hl, hl
    ld bc, $0a2a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr @+$1c

    dec de
    ld b, h
    ld a, [bc]
    ld b, l
    ld a, [bc]
    ld a, [bc]
    ld b, l
    ld a, [bc]
    dec [hl]
    rla

jr_014_44b5:
    ld [hl], $18
    ld a, [de]
    dec de
    ld a, [de]
    ld a, [de]
    dec de
    ld a, [bc]
    jr jr_014_44d9

    dec de
    dec [hl]
    rla
    ld [hl], $28
    jr z, jr_014_44f1

jr_014_44c6:
    ld a, [bc]
    dec [hl]
    rla
    ld [hl], $18
    ld a, [de]
    dec de
    ld b, b
    ld b, b
    ld a, [bc]
    ld a, [bc]
    jr jr_014_44ed

    dec de
    dec [hl]
    rla
    ld [hl], $40
    ld [bc], a

jr_014_44d9:
    ld a, [bc]
    ld d, $35
    rla
    ld [hl], $18
    ld a, [de]
    dec de
    ld d, $13
    ld b, b
    ld b, b
    jr jr_014_4501

    dec de
    dec [hl]
    rla
    ld [hl], $16
    inc de

jr_014_44ed:
    inc de
    ld d, $35
    rla

jr_014_44f1:
    ld [hl], $18
    ld a, [de]
    dec de
    ld b, b
    ld [bc], a
    ld a, [bc]
    ld d, $18
    ld a, [de]
    dec de
    dec [hl]
    rla
    ld [hl], $16
    ld b, b

jr_014_4501:
    inc de
    ld a, [bc]
    inc l
    jr z, jr_014_4531

    jr @+$1c

    dec de
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld b, b
    ld b, b
    dec [hl]
    rla
    ld [hl], $02
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, h
    ld a, [bc]
    ld b, l
    jr jr_014_4536

    dec de
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    jr jr_014_453d

    dec de
    inc l
    jr z, @+$2d

    inc b
    inc b
    inc b
    inc b
    inc l
    jr z, jr_014_4559

    inc b
    inc b
    inc b

jr_014_4531:
    inc b
    inc b
    inc b
    inc b
    inc b

jr_014_4536:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, [hl]

jr_014_453d:
    inc b
    inc b
    ld b, [hl]
    inc b
    ld b, a
    inc b
    inc b
    inc b
    inc b
    jr @+$1c

    ld a, [de]
    jr jr_014_4565

    dec de
    ld b, [hl]
    ld b, a
    inc b
    inc b
    inc l
    jr z, jr_014_457b

    dec [hl]
    rla
    ld [hl], $18
    dec de
    inc b

jr_014_4559:
    inc b
    inc b
    inc b
    inc b
    jr jr_014_4579

    dec de
    dec [hl]
    ld [hl], $04
    inc b
    inc b

jr_014_4565:
    inc b
    inc b
    dec [hl]
    rla
    ld [hl], $18
    dec de
    inc b
    inc b
    inc b
    inc b
    inc b
    jr jr_014_458d

    dec de
    inc l
    dec hl
    inc b
    inc d
    ld b, c

jr_014_4579:
    dec d
    inc b

jr_014_457b:
    dec [hl]
    rla
    ld [hl], $04
    inc b
    inc b
    jr c, jr_014_4595

    scf
    inc b
    jr jr_014_45a1

    dec de
    ld b, [hl]
    inc b
    inc b
    ld b, a
    inc b

jr_014_458d:
    inc b
    inc b
    dec [hl]
    rla
    ld [hl], $18
    ld a, [de]
    ld a, [de]

jr_014_4595:
    dec de
    inc b
    inc b
    inc b
    jr jr_014_45b5

    dec de
    inc l
    jr z, jr_014_45c7

    dec hl
    inc b

jr_014_45a1:
    inc b
    inc b
    inc l
    jr z, jr_014_45d1

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, [hl]
    inc b
    inc b
    inc b
    ld b, a

jr_014_45b5:
    inc b
    inc b
    inc b
    ld b, [hl]
    ld b, a
    jr jr_014_45d6

    ld a, [de]
    ld a, [de]
    dec de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr @+$1d

    inc l
    jr z, @+$2a

jr_014_45c7:
    jr z, jr_014_45f4

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc l
    dec hl
    ld b, c
    ld b, c
    ld b, c

jr_014_45d1:
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c

jr_014_45d6:
    ld bc, $4101
    add hl, hl
    ld bc, $2a01
    ld bc, $0129
    ld bc, $412a
    jr @+$1c

    ld a, [de]
    dec de
    ld bc, $1a18
    ld a, [de]
    dec de
    ld b, c
    inc l
    jr z, jr_014_4618

    dec hl
    ld bc, $282c

jr_014_45f4:
    jr z, jr_014_4621

    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld bc, $0101
    ld bc, $2901
    ld bc, $2a01
    ld b, c
    add hl, hl
    ld bc, $012a
    ld a, [hl+]
    jr jr_014_4626

    ld a, [de]
    dec de
    ld b, c
    jr @+$1c

    dec de
    ld a, [de]
    dec de
    inc l
    jr z, jr_014_463f

    dec hl

jr_014_4618:
    ld b, c
    inc l
    jr z, @+$2d

    jr z, jr_014_4649

    ld bc, $0101

jr_014_4621:
    ld bc, $4141
    ld b, c
    ld b, c

jr_014_4626:
    ld b, c
    ld b, c
    add hl, hl
    ld bc, $0129
    ld a, [hl+]
    ld bc, $412a
    add hl, hl
    ld a, [hl+]
    jr jr_014_464e

    jr jr_014_4650

    dec de
    ld a, [de]
    dec de
    ld b, c
    jr @+$1d

    inc l
    jr z, @+$2e

jr_014_463f:
    jr z, jr_014_466c

    jr z, jr_014_466e

    ld b, c
    inc l
    dec hl
    ld bc, $0101

jr_014_4649:
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c

jr_014_464e:
    ld b, c
    ld b, c

jr_014_4650:
    add hl, hl
    ld bc, $412a
    ld b, c
    add hl, hl
    ld bc, $0101

jr_014_4659:
    ld a, [hl+]
    jr @+$1c

    dec de
    ld b, c
    ld b, c
    jr jr_014_467b

    ld a, [de]
    ld a, [de]
    dec de
    inc l
    jr z, jr_014_4692

    ld b, c
    ld b, c
    inc l
    jr z, jr_014_4694

jr_014_466c:
    jr z, @+$2d

jr_014_466e:
    ld bc, $3c3a
    inc a
    inc a
    inc a
    dec sp
    ld bc, $0101
    ld bc, $3d3e

jr_014_467b:
    dec a
    dec a
    dec a
    ccf
    ld bc, $0101
    nop
    ld [de], a
    ld a, [bc]
    db $ed
    ld b, [hl]
    inc b
    ld d, h
    ld h, [hl]
    ld d, e
    dec b
    inc bc
    jr c, @+$4a

    jr c, jr_014_4659

    db $10

jr_014_4692:
    inc d
    nop

jr_014_4694:
    ld a, [bc]
    inc bc
    rst $00
    inc h
    ld d, $48
    dec h
    rst $00
    add hl, bc
    ld e, $00
    nop
    dec c
    rst $00
    and h
    ld b, [hl]
    inc l
    nop
    nop
    add hl, bc
    rlca
    inc de
    rrca
    rst $38
    jp nc, $e641

    ld b, $07
    jr jr_014_46bc

    rst $38
    pop de
    ld b, d
    call $0702
    rla
    rrca
    rst $38

jr_014_46bc:
    jp nc, $cd43

    inc bc
    ld b, $1a
    ld c, $ff
    db $d3
    ld b, h
    rlc a
    inc b
    dec e
    rrca
    rst $38
    jp nc, $c945

    inc b
    ld b, $20
    ld c, $ff
    db $d3
    ld b, [hl]
    rrc b
    inc b
    inc hl
    rrca
    rst $38
    jp nc, $ca47

    add hl, bc
    ld b, a
    add hl, bc
    ld c, $ff
    rst $38
    adc b
    push af
    rlca
    add hl, bc
    ld a, [bc]
    rst $38
    ret nc

    add hl, bc
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    inc l
    add hl, hl
    ld sp, $3131
    ld sp, $3147
    ld e, b
    ld a, [bc]
    inc l
    add hl, hl
    ld a, [de]
    ld e, h
    ld a, [de]
    ld a, [de]
    ld c, e
    ld sp, $075a
    inc l
    add hl, hl
    ld sp, $3131
    ld sp, $3131
    ld sp, $2c31
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld sp, $5162
    ld d, c
    ld d, c
    inc l
    add hl, hl
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld sp, $0a4e
    ld a, $3f
    inc l
    add hl, hl
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld sp, $0a4e
    jr z, jr_014_4769

    inc l
    add hl, hl
    ld a, [bc]
    dec e
    ld l, d
    ld d, h
    ld c, [hl]
    ld a, [bc]
    jr z, jr_014_4773

    inc l
    add hl, hl
    dec bc
    ld h, l
    add hl, de
    ld d, h
    ld c, [hl]
    ld a, [bc]
    jr z, jr_014_477d

    inc l
    add hl, hl
    dec bc
    ld h, l
    add hl, de
    ld d, h
    ld c, [hl]
    ld a, [bc]
    inc h
    ld d, a
    inc l
    add hl, hl
    dec bc
    ld h, l
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    inc l
    add hl, hl
    dec bc
    ld h, l

jr_014_4769:
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    inc l
    add hl, hl
    dec bc
    ld h, l

jr_014_4773:
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    inc l
    add hl, hl
    dec bc
    ld h, l

jr_014_477d:
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    inc l
    add hl, hl
    dec bc
    ld h, l
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    inc l
    add hl, hl
    rra
    ld l, $19
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    inc l
    add hl, hl
    ld b, e
    ld b, e
    add hl, de
    ld d, h
    ld c, [hl]
    ld c, l
    ld b, e
    ld b, e
    nop
    add hl, bc
    ld e, $16
    ld c, b
    ld h, e
    ld d, [hl]
    di
    ld d, l
    ld [bc], a
    inc hl
    db $f4
    ld b, [hl]
    ld d, h
    rst $00
    inc c
    ld a, [bc]
    nop
    inc de
    ld [bc], a
    rst $00
    cp b
    ld b, a
    inc l
    ld bc, $2d03
    nop
    ld e, b
    ld bc, $2b03
    dec bc
    ld a, [bc]
    inc b
    ld b, $12
    rst $38
    ret nc

    ld b, c
    ret


    dec b
    inc b
    add hl, bc
    ld d, $ff
    pop de
    ld b, d
    ret


    ld b, $07
    ld [$ff1c], sp
    ret nc

    ld b, e
    call Call_000_0602
    inc c
    ld d, $ff
    db $d3
    ld b, h
    rrc c
    inc b
    rlca
    inc h
    rst $38
    jp nc, $c945

    rlca
    ld b, $08
    add hl, hl
    rst $38
    ret nc

    ld b, [hl]
    rrc d
    ld c, $08
    inc c
    rst $38
    db $d3
    ld b, a
    pop de
    ld [bc], a
    ld c, $0d
    dec de
    rst $38
    pop de
    ld c, b
    pop de
    inc bc
    ld c, $0b
    ld de, $d3ff
    ld c, c
    pop de
    inc b
    ld b, a
    ld b, $1a
    rst $38
    rst $38
    adc d
    db $db
    ld b, a
    rst $00
    inc bc
    dec l
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    jr c, jr_014_4867

    inc h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld l, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld h, b
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    inc a
    dec a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, d
    ld b, e
    ld b, e
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld c, h
    ld c, h
    ld c, h
    ld a, [bc]
    ld l, [hl]
    ld l, h
    ld l, [hl]
    ld [hl], h
    ld [hl], h
    ld l, [hl]
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h

jr_014_4867:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld b, e
    ld b, e
    rlca
    rlca
    rlca
    rlca
    ld c, h
    ld l, h
    ld c, h
    ld a, [bc]
    ld l, l
    ld l, h
    ld l, [hl]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld l, a
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld b, e
    ld b, e
    ld sp, $3131
    ld sp, $6d31
    ld l, h
    ld a, [bc]
    ld l, l
    ld c, h
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld l, l
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    dec e
    rra
    rra
    ld d, h
    ld d, h
    rra
    rra
    ld e, $4d
    ld b, e
    ld b, e
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld h, l
    ld b, e
    ld b, e
    ld d, h
    ld d, h
    ld b, e
    ld b, e
    ld h, h
    ld c, l
    ld b, e
    ld b, e
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, a
    ld b, e
    ld b, e
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, e
    ld b, e
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
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
    rla
    add hl, bc
    ld a, [bc]
    ld d, b
    ld c, c
    inc a
    ld c, c
    dec sp
    ld c, c
    inc b
    ld [hl+], a
    or d
    ld b, e
    xor e
    rst $00
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $3c
    ld c, c
    ret


    ld c, $02
    dec b
    add hl, bc
    nop
    xor [hl]
    dec b
    ld a, [bc]
    nop
    xor [hl]
    nop
    nop
    dec e
    rst $00
    dec b
    add hl, bc
    ld e, $c7
    dec b
    ld a, [bc]
    jr @+$1c

    ld a, [de]
    ld hl, $1717
    ld [hl+], a
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    daa
    inc e
    jr jr_014_4979

    ld a, [de]
    dec de
    rra
    daa
    rra
    ld bc, $0101
    inc e
    dec e
    ld e, $1f
    ld bc, $0101
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4243
    ld bc, $2a2a
    ld a, [hl+]
    inc l

jr_014_4979:
    inc l
    inc l
    jr z, @+$45

    ld b, d
    jr z, jr_014_49ab

    dec hl
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4243
    ld bc, $2a2a
    ld a, [hl+]
    inc l
    inc l
    inc l
    jr z, jr_014_49d4

    ld b, d
    jr z, jr_014_49bf

    dec hl
    dec hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4243
    ld bc, $2a2a
    ld a, [hl+]
    inc l
    inc l
    inc l
    jr z, jr_014_49e8

    ld b, d
    jr z, jr_014_49d3

    dec hl
    dec hl
    nop

jr_014_49ab:
    ld [de], a
    inc d
    sbc b
    ld c, d
    inc bc
    ld c, h
    nop
    ld c, h
    rrca
    db $10
    ld [hl], b
    ld b, [hl]
    ldh a, [$c6]
    ld a, [bc]
    ld a, [bc]
    inc hl
    or $09
    ret z

jr_014_49bf:
    ld de, $4079
    ld [de], a
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    or $f9
    add $12
    ld e, b
    ld b, b
    sbc [hl]
    rst $00
    add hl, bc
    ld a, [bc]
    ld hl, sp+$13

jr_014_49d3:
    ld [bc], a

jr_014_49d4:
    rst $00
    inc de
    add $41
    or l
    rst $00
    add hl, bc
    ld e, $f8
    nop
    dec c
    rst $00
    ld [c], a
    ld c, c
    rrca
    ld [$0705], sp
    nop
    xor a

jr_014_49e8:
    inc bc
    ld a, [de]
    nop
    or c
    inc bc
    ld [hl+], a
    nop
    or d
    dec bc
    dec c
    nop
    or e
    dec bc
    add hl, de
    nop
    or h
    dec d
    ld [de], a
    nop
    or l
    dec e
    add hl, bc
    nop
    or [hl]
    dec e
    dec e
    nop
    or a
    ld a, [bc]
    dec b
    ld de, $0510
    dec de
    ld de, $2305
    ld [de], a
    dec bc
    ld a, [de]
    inc de
    inc de
    daa
    inc d
    dec d
    dec b
    dec d
    dec d
    rrca
    ld d, $1d
    ld a, [bc]
    rla
    dec e
    dec de
    jr jr_014_4a34

    ld bc, $0e19
    jr jr_014_4a30

    dec bc
    rst $38
    rst $38
    ld bc, $0c18

jr_014_4a2c:
    jr jr_014_4a2c

    ld [bc], a
    ld [bc], a

jr_014_4a30:
    jr @+$0a

    ld h, $ff

jr_014_4a34:
    rst $38
    inc bc
    jr @+$12

    ld de, $ffff
    inc b
    jr jr_014_4a5b

    rrca
    cp $02
    dec b
    jr @+$13

    inc h
    cp $02
    ld b, $18
    ld [hl+], a
    ld d, $fe
    ld [bc], a
    rlca
    jr nz, jr_014_4a62

    inc c
    cp $00
    ld [$1b2c], sp
    dec de
    rst $38
    rst $38
    add hl, bc
    dec de

jr_014_4a5b:
    ld [hl+], a
    dec d
    cp $02
    ld a, [bc]
    db $10
    db $10

jr_014_4a62:
    ld [hl+], a
    rst $38
    ret nc

    dec bc
    add hl, bc
    db $10
    inc hl
    rst $38
    ret nc

    inc c
    ld hl, $160c
    rst $38
    pop de
    dec c
    jr jr_014_4a8e

    ld d, $ff
    ret nc

    ld c, $3a
    rst $00
    dec b
    rlca
    ld a, [hl+]
    rst $00
    inc bc
    ld a, [de]
    ld l, $c7
    inc bc
    ld [hl+], a
    adc e
    rst $00
    dec bc
    dec c
    sub c
    rst $00
    dec bc
    add hl, de
    db $10
    ret z

jr_014_4a8e:
    dec d
    ld [de], a
    ld [hl], e
    ret z

    dec e
    add hl, bc
    ld a, l
    ret z

    dec e
    dec e
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    ld d, d
    ld d, d
    ld sp, $0c31
    dec c
    ld c, $0c
    dec c
    dec c
    ld c, $38
    add hl, sp
    ld c, [hl]
    jr c, jr_014_4ae8

    jr c, jr_014_4aea

    jr c, jr_014_4aec

    ld sp, $3131
    ld sp, $1110
    ld [de], a
    db $10
    ld de, $1211
    stop
    ld c, [hl]
    stop
    inc a
    dec a
    stop
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld sp, $7731
    ld d, [hl]
    ld [hl], a
    ld sp, $5677
    ld [hl], a
    ld c, l
    ld c, [hl]
    ld c, c
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    ld c, l

jr_014_4ae8:
    ld c, [hl]
    daa

jr_014_4aea:
    jr c, jr_014_4b25

jr_014_4aec:
    jr c, jr_014_4b27

    jr c, jr_014_4b29

    ld sp, $3131
    ld sp, $2120
    jr c, jr_014_4b31

    jr c, jr_014_4b33

    daa
    ld c, l
    ld a, [bc]
    daa
    stop
    stop
    inc a
    dec a
    jr nz, jr_014_4b13

    dec c
    ld hl, $737c
    stop
    stop
    daa
    ld c, l
    ld a, [bc]
    ld h, $23

jr_014_4b13:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld l, b
    ld a, a
    ld a, a
    ld l, c
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld c, l
    ld a, [bc]

jr_014_4b25:
    daa
    ld d, l

jr_014_4b27:
    ld d, l
    ld d, l

jr_014_4b29:
    ld d, l
    ld d, l
    ld d, l
    ld l, b
    ld a, a
    ld a, a
    ld l, c
    ld d, l

jr_014_4b31:
    ld d, l
    ld d, l

jr_014_4b33:
    ld d, l
    ld d, l
    ld d, l
    daa
    ld c, l
    ld bc, $3127
    jr nz, jr_014_4b5e

    jr nz, jr_014_4b60

    ld sp, $7f68
    ld a, a
    ld l, c
    jr nz, jr_014_4b67

    jr nz, jr_014_4b69

    jr nz, jr_014_4b6b

    daa
    ld bc, $2256
    ld sp, $6968
    ld l, b
    ld l, c
    ld sp, $7f68
    ld a, a
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld l, c

jr_014_4b5e:
    ld h, $56

jr_014_4b60:
    ld a, [bc]
    daa
    ld d, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]

jr_014_4b67:
    ld d, [hl]
    scf

jr_014_4b69:
    ld a, [hl-]
    ld a, l

jr_014_4b6b:
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    scf
    ld a, [hl]
    daa
    ld c, l
    ld a, [bc]
    ld h, $23
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    ld c, l
    ld c, [hl]
    daa
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
    daa
    ld c, l
    ld c, [hl]
    daa
    jr c, @+$3b

    jr nz, jr_014_4bc3

    jr c, @+$3b

    jr c, @+$3b

    jr c, @+$3b

    ld sp, $2031
    ld hl, $3938
    daa
    ld c, l
    ld c, [hl]
    daa
    stop
    ld a, h
    ld [hl], d
    stop
    stop
    stop
    ld [hl], a
    ld d, [hl]
    ld a, h
    ld a, [hl]
    stop
    daa

jr_014_4bc3:
    ld c, l
    ld c, [hl]
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    ld c, l
    jr nz, @+$23

    jr c, jr_014_4c15

    jr c, jr_014_4c17

    jr c, jr_014_4c19

    jr c, jr_014_4c1b

    ld sp, $3831
    add hl, sp
    jr c, jr_014_4c21

    jr c, jr_014_4c23

    jr nz, jr_014_4c0d

    scf
    ld a, [hl]
    stop
    stop
    stop
    stop
    ld a, [bc]
    ld [hl], a
    stop
    stop
    stop
    scf
    ld a, [hl]
    jp Jump_000_3c29


    dec [hl]
    ld c, h
    ld a, [hl-]
    ld c, h
    ccf
    ld c, h
    ld b, h
    ld c, h
    ld c, c
    ld c, h

jr_014_4c0d:
    ld c, [hl]
    ld c, h
    ld d, e
    ld c, h
    ld e, b
    ld c, h
    ld e, l
    ld c, h

jr_014_4c15:
    ld h, d
    ld c, h

jr_014_4c17:
    ld h, a
    ld c, h

jr_014_4c19:
    ld l, h
    ld c, h

jr_014_4c1b:
    ld [hl], d
    ld c, h
    ld [hl], a
    ld c, h
    ld a, h
    ld c, h

jr_014_4c21:
    add c
    ld c, h

jr_014_4c23:
    add [hl]
    ld c, h
    adc e
    ld c, h
    push hl
    inc hl
    sub b
    ld c, h
    sub l
    ld c, h
    sbc d
    ld c, h
    ld [$9f23], a
    ld c, h
    and h
    ld c, h
    rla
    sub a
    ld h, l
    dec l
    ld d, b
    rla
    or h
    ld h, l
    dec l
    ld d, b
    rla
    call nc, $2d65
    ld d, b
    rla
    jp hl


    ld h, l
    dec l
    ld d, b
    rla
    ld a, [bc]
    ld h, [hl]
    dec l
    ld d, b
    rla
    ld l, $66
    dec l
    ld d, b
    rla
    ld c, [hl]
    ld h, [hl]
    dec l
    ld d, b
    rla
    adc a
    ld h, [hl]
    dec l
    ld d, b
    rla
    cp a
    ld h, [hl]
    dec l
    ld d, b
    rla
    push af
    ld h, [hl]
    dec l
    ld d, b
    rla
    dec h
    ld h, a
    dec l
    ld d, b
    rla
    add [hl]
    ld h, a
    dec l
    dec d
    ld d, b
    rla
    sbc e
    ld h, a
    dec l
    ld d, b
    rla
    ret z

    ld h, a
    dec l
    ld d, b
    rla
    rst $38
    ld h, a
    dec l
    ld d, b
    rla
    daa
    ld l, b
    dec l
    ld d, b
    rla
    ld d, [hl]
    ld l, b
    dec l
    ld d, b
    rla
    ld h, l
    ld l, b
    dec l
    ld d, b
    rla
    xor b
    ld l, b
    dec l
    ld d, b
    rla
    rla
    ld l, c
    dec l
    ld d, b
    rla
    ld [hl], a
    ld l, c
    dec l
    ld d, b
    rla
    sub d
    ld l, c
    dec l
    ld d, b
    rla
    and l
    ld l, c
    dec l
    ld d, b
    ld hl, $d7e6
    bit 0, [hl]
    res 0, [hl]
    call nz, Call_014_4cc6
    call Call_000_3c29
    ld hl, $4d3a
    ld de, $4d1c
    ld a, [$d627]
    call Call_000_30fc
    ld [$d627], a
    ret


Call_014_4cc6:
    ld a, [$d87f]
    and $03
    cp $03
    jr z, jr_014_4cef

    ld a, $df
    call Call_014_4d0c
    ld a, $e0
    call Call_014_4d0c
    ld hl, $4ce8

jr_014_4cdc:
    ld a, [hl+]
    cp $ff
    jr z, jr_014_4cef

    push hl
    call Call_014_4d14
    pop hl
    jr jr_014_4cdc

    pop hl
    ld [c], a
    db $e3
    db $e4
    rst $20
    add sp, -$01

jr_014_4cef:
    ld a, [$d880]
    and $03
    cp $03
    ret z

    ld a, $e5
    call Call_014_4d0c
    ld a, $e6
    call Call_014_4d0c
    ld a, $e9
    call Call_014_4d14
    ld a, $ea
    call Call_014_4d14
    ret


Call_014_4d0c:
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3eb4


Call_014_4d14:
    ld [$cc4d], a
    ld a, $11
    jp Jump_000_3eb4


    or l
    ld sp, $31e8
    ld de, $b332
    ld c, l
    cp l
    ld c, l
    rst $00
    ld c, l
    pop de
    ld c, l
    db $db
    ld c, l
    push hl
    ld c, l
    rst $28
    ld c, l
    ld sp, hl
    ld c, l
    inc bc
    ld c, [hl]
    dec c
    ld c, [hl]
    xor l
    ld c, [hl]
    xor l
    ld c, [hl]
    ld bc, $e640
    rst $10
    rla
    ld c, [hl]
    ld hl, $1c4e
    ld c, [hl]
    inc e
    ld c, [hl]
    ld [bc], a
    ld b, b
    and $d7
    ld h, $4e
    jr nc, @+$50

    dec hl
    ld c, [hl]
    dec hl
    ld c, [hl]
    inc bc

jr_014_4d53:
    jr nz, @-$18

    rst $10
    dec [hl]
    ld c, [hl]
    ccf
    ld c, [hl]
    ld a, [hl-]
    ld c, [hl]
    ld a, [hl-]
    ld c, [hl]
    inc b
    ld b, b
    and $d7
    ld b, h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld c, c
    ld c, [hl]
    dec b

jr_014_4d6b:
    jr nc, jr_014_4d53

    rst $10
    ld d, e
    ld c, [hl]
    ld e, l
    ld c, [hl]
    ld e, b
    ld c, [hl]
    ld e, b
    ld c, [hl]
    ld b, $40
    and $d7
    ld h, d
    ld c, [hl]
    ld l, h
    ld c, [hl]
    ld h, a
    ld c, [hl]
    ld h, a
    ld c, [hl]
    rlca

jr_014_4d83:
    jr nz, jr_014_4d6b

    rst $10
    ld [hl], c
    ld c, [hl]
    ld a, e
    ld c, [hl]
    db $76
    ld c, [hl]
    db $76
    ld c, [hl]
    ld [$e640], sp
    rst $10
    add b
    ld c, [hl]
    adc d
    ld c, [hl]
    add l
    ld c, [hl]
    add l
    ld c, [hl]
    add hl, bc
    jr nc, jr_014_4d83

    rst $10
    adc a
    ld c, [hl]
    sbc c
    ld c, [hl]
    sub h
    ld c, [hl]
    sub h
    ld c, [hl]
    ld a, [bc]
    ld b, b
    and $d7
    sbc [hl]
    ld c, [hl]
    xor b
    ld c, [hl]
    and e
    ld c, [hl]
    and e
    ld c, [hl]
    rst $38
    ld [$3a21], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$4621], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$5221], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$5e21], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$6a21], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$7621], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$8221], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$8e21], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$9a21], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$a621], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    and e
    ld h, d
    add hl, hl
    ld d, b
    rla
    cp a
    ld h, d
    add hl, hl
    ld d, b
    rla
    ret z

    ld h, d
    add hl, hl
    ld d, b
    rla
    and $62
    add hl, hl
    ld d, b
    rla
    inc bc
    ld h, e
    add hl, hl
    ld d, b
    rla
    dec c
    ld h, e
    add hl, hl
    ld d, b
    rla
    dec sp
    ld h, e
    add hl, hl
    ld d, b
    rla
    ld e, l
    ld h, e
    add hl, hl
    ld d, b
    rla
    ld h, l
    ld h, e
    add hl, hl
    ld d, b
    rla
    ld a, l
    ld h, e
    add hl, hl
    ld d, b
    rla
    sub a
    ld h, e
    add hl, hl
    ld d, b
    rla
    xor c
    ld h, e
    add hl, hl
    ld d, b
    rla
    ret


    ld h, e
    add hl, hl
    ld d, b
    rla
    and $63
    add hl, hl
    ld d, b
    rla
    xor $63
    add hl, hl
    ld d, b
    rla
    dec de
    ld h, h
    add hl, hl
    ld d, b
    rla
    ld b, [hl]
    ld h, h
    add hl, hl
    ld d, b
    rla
    ld e, b
    ld h, h
    add hl, hl
    ld d, b
    rla
    ld [hl], a
    ld h, h
    add hl, hl
    ld d, b
    rla
    sub d
    ld h, h
    add hl, hl
    ld d, b
    rla
    sbc d
    ld h, h
    add hl, hl
    ld d, b
    rla
    or [hl]
    ld h, h
    add hl, hl
    ld d, b
    rla
    reti


    ld h, h
    add hl, hl
    ld d, b
    rla
    ldh a, [$64]
    add hl, hl
    ld d, b
    rla
    dec e
    ld h, l
    add hl, hl
    ld d, b
    rla
    ld b, b
    ld h, l
    add hl, hl
    ld d, b
    rla
    ld d, l
    ld h, l
    add hl, hl
    ld d, b
    rla
    adc l
    ld h, l
    add hl, hl
    ld d, b
    rla
    cp c
    ld h, l
    add hl, hl
    ld d, b
    rla
    ret nz

    ld h, l
    add hl, hl
    ld d, b
    rla
    pop hl
    ld h, l
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $4ebe
    ld a, [$d609]
    jp Jump_000_3d93


    add hl, bc
    ld c, a
    ld h, [hl]
    ld c, a
    or l
    ld c, a
    ld sp, $8450
    ld d, b
    ret c

    ld d, b
    ld b, l
    ld d, c
    push de
    ld c, [hl]

Jump_014_4ece:
    xor a
    ld [$cd6b], a
    ld [$d609], a
    ret


Call_014_4ed6:
    ld a, $e1
    ld [$d058], a
    ld a, $02
    ld [$d05c], a
    ret


Call_014_4ee1:
    ld a, $f2
    ld [$d058], a
    ld a, [$d714]
    add $07
    ld [$d05c], a
    ret


Call_014_4eef:
    ld de, $4f04
    ld a, [$cf0d]
    cp $01
    jr z, jr_014_4efa

    inc de

jr_014_4efa:
    call Call_000_363d
    ld a, $0c
    ldh [$8d], a
    jp Jump_000_3488


    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    ld a, [$d7ea]
    bit 7, a
    ret z

    ld hl, $4f36
    call Call_000_34bc
    ret nc

    ld a, [$cd3d]
    ld [$cf0d], a
    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld a, $02
    ld [$d527], a
    ld a, [$d7ea]
    bit 0, a
    jr nz, jr_014_4f3b

    bit 1, a
    jp nz, Jump_014_5055

    ret


    inc b
    dec e
    dec b
    dec e
    rst $38

jr_014_4f3b:
    ld a, $01
    ld [$cd4f], a
    xor a
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    ld a, [$d6ff]
    and a
    jr z, jr_014_4f52

    call Call_000_2233

jr_014_4f52:
    ld c, $02
    ld a, $de
    call Call_000_2211
    ld a, $01
    ldh [$8c], a
    call Call_014_4eef
    ld a, $01
    ld [$d609], a
    ret


    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_4f7c

    ld a, $04
    ld [$d527], a
    ld a, $04
    jr jr_014_4f7e

jr_014_4f7c:
    ld a, $0c

jr_014_4f7e:
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call Call_000_3488
    xor a
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4fab
    ld de, $4fb0
    call Call_000_32f0
    call Call_014_4ed6
    ld a, $02
    ld [$d609], a
    ret


    rla
    rlca
    ld l, c
    add hl, hl
    ld d, b
    rla
    inc hl
    ld l, c
    add hl, hl
    ld d, b
    ld a, [$d056]
    cp $ff
    jp z, Jump_014_4ece

    ld a, [$d714]
    cp $02
    jr nz, jr_014_4fc9

    ld a, $01
    ld [$d714], a

jr_014_4fc9:
    ld a, [$c109]
    and a
    jr nz, jr_014_4fd3

    ld a, $04
    jr jr_014_4fd5

jr_014_4fd3:
    ld a, $0c

jr_014_4fd5:
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call Call_000_3488
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d7ea
    set 5, [hl]
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    call Call_000_2233
    ld b, $02
    ld hl, $59bd
    call Call_000_3e84
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_5006

    call Call_014_500f
    jr jr_014_5009

jr_014_5006:
    call Call_014_5014

jr_014_5009:
    ld a, $03
    ld [$d609], a
    ret


Call_014_500f:
    ld de, $501e
    jr jr_014_5017

Call_014_5014:
    ld de, $5026

jr_014_5017:
    ld a, $01
    ldh [$8c], a
    jp Jump_000_363d


    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, b
    ret nz

    ret nz

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

    xor a
    ld [$cd6b], a
    ld a, $23
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_216b
    ld hl, $d7ea
    res 0, [hl]
    res 7, [hl]
    ld a, $00
    ld [$d609], a
    ret


Jump_014_5055:
    ld a, $02
    ld [$cd4f], a
    xor a
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    ld a, [$d6ff]
    and a
    jr z, jr_014_506c

    call Call_000_2233

jr_014_506c:
    call Call_000_2233
    ld b, $02
    ld hl, $59db
    call Call_000_3e84
    ld a, $02
    ldh [$8c], a
    call Call_014_4eef
    ld a, $04
    ld [$d609], a
    ret


    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $02
    ldh [$8c], a
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_509e

    ld a, $04
    ld [$d527], a
    ld a, $04
    jr jr_014_50a5

jr_014_509e:
    ld a, $02
    ld [$d527], a
    ld a, $0c

jr_014_50a5:
    ldh [$8d], a
    call Call_000_3488
    xor a
    ld [$cd6b], a
    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $50ce
    ld de, $50d3
    call Call_000_32f0
    call Call_014_4ee1
    ld a, $05
    ld [$d609], a
    ret


    rla
    ld h, e
    ld l, c
    add hl, hl
    ld d, b
    rla
    add b
    ld l, c
    add hl, hl
    ld d, b
    ld a, [$d056]
    cp $ff
    jp z, Jump_014_4ece

    ld a, $02
    ldh [$8c], a
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_50f4

    ld a, $04
    ld [$d527], a
    ld a, $04
    jr jr_014_50fb

jr_014_50f4:
    ld a, $02
    ld [$d527], a
    ld a, $0c

jr_014_50fb:
    ldh [$8d], a
    call Call_000_3488
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d7ea
    set 6, [hl]
    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    call Call_000_2233
    ld b, $02
    ld hl, $59e7
    call Call_000_3e84
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_5128

    call Call_014_5131
    jr jr_014_512b

jr_014_5128:
    call Call_014_5136

jr_014_512b:
    ld a, $06
    ld [$d609], a
    ret


Call_014_5131:
    ld de, $5140
    jr jr_014_5139

Call_014_5136:
    ld de, $5141

jr_014_5139:
    ld a, $02
    ldh [$8c], a
    jp Jump_000_363d


    add b
    add b
    add b
    add b
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $24
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_216b
    ld hl, $d7ea
    res 1, [hl]
    res 7, [hl]
    ld a, $07
    ld [$d609], a
    ret


    ld l, a
    ld d, c
    ld a, e
    ld d, c
    add a
    ld d, c
    ld [$3c06], sp
    ld hl, $5b27
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5b47
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5b67
    call Call_000_3e84
    jp Jump_000_23d2


    call Call_014_51a2
    call Call_000_3c29
    ld hl, $51cc
    ld a, [$d666]
    jp Jump_000_3d93


Call_014_51a2:
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $d7ed
    res 0, [hl]
    res 7, [hl]
    ld hl, $d812
    res 0, [hl]
    res 6, [hl]
    ld a, $7c
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, $60
    ld [$cc4d], a
    ld a, $11
    jp Jump_000_3eb4


    jp nc, $a551

    ld d, d
    xor d
    ld d, d
    ld hl, $520e
    ld a, [$d360]
    ld b, a
    ld e, $00
    ld c, $07

jr_014_51dd:
    ld a, [hl+]
    cp $ff
    ret z

    inc e
    dec c
    cp b
    jr nz, jr_014_51dd

    cp $23
    jr nz, jr_014_51f0

    ld a, [$d361]
    cp $0e
    ret nc

jr_014_51f0:
    ld a, e
    ldh [$8c], a
    ld a, c
    ld [$cd3d], a
    ld b, $02
    ld hl, $d7ec
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    ret nz

    call Call_014_5216
    call Call_000_2817
    xor a
    ldh [$b4], a
    ret


    inc hl
    jr c, jr_014_5266

    ld h, b
    ld l, c
    ld [hl], a
    adc b
    rst $38

Call_014_5216:
    ld hl, $522f
    ld a, [$cd3d]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cd6d

jr_014_5227:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_014_5227

    ret


    add h
    ld d, d
    ld [hl], a
    ld d, d
    ld l, d
    ld d, d
    ld h, b
    ld d, d
    ld d, l
    ld d, d
    ld c, b
    ld d, d
    dec a
    ld d, d
    add h
    add b
    sub c
    sub e
    add a
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    adc h
    add b
    sub c
    sub d
    add a
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub d
    adc [hl]
    sub h
    adc e
    add c
    add b

jr_014_5266:
    add e
    add [hl]
    add h
    ld d, b
    sub c
    add b
    adc b
    adc l
    add c
    adc [hl]
    sub [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    add d
    add b
    sub d
    add d
    add b
    add e
    add h
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b

Call_014_5291:
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    xor a
    ld [$c109], a
    ld [$cd6b], a
    jp Jump_000_3415


    ld a, [$cd38]
    and a
    ret nz

    ld a, $00
    ld [$d666], a
    ret


    ret nz

    ld d, d
    ret


    ld d, d
    jp nc, $db52

    ld d, d
    db $e4
    ld d, d
    db $ed
    ld d, d
    or $52
    ld h, c
    ld d, e
    ld [$063e], sp
    call Call_014_52ff
    jp Jump_000_23d2


    ld [$053e], sp
    call Call_014_52ff
    jp Jump_000_23d2


    ld [$043e], sp
    call Call_014_52ff
    jp Jump_000_23d2


    ld [$033e], sp
    call Call_014_52ff
    jp Jump_000_23d2


    ld [$023e], sp
    call Call_014_52ff
    jp Jump_000_23d2


    ld [$013e], sp
    call Call_014_52ff
    jp Jump_000_23d2


    ld [$003e], sp
    call Call_014_52ff
    jp Jump_000_23d2


Call_014_52ff:
    ld [$cd3d], a
    call Call_014_5216
    ld a, [$cd3d]
    inc a
    ld c, a
    ld b, $02
    ld hl, $d355
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    jr nz, jr_014_5327

    ld hl, $5347
    call Call_000_3c36
    call Call_014_5291
    ld a, $01
    ld [$d666], a
    ret


jr_014_5327:
    ld hl, $5357
    call Call_000_3c36
    ld a, [$cd3d]
    ld c, a
    ld b, $01
    ld hl, $d7ec
    ld a, $10
    call Call_000_3eb4
    ld a, $02
    ld [$d666], a
    ret


    ld hl, $5357
    jp Jump_000_3c36


    rla
    ld e, c
    ld l, h
    add hl, hl
    ld [$a53e], sp
    call Call_000_3736
    call Call_000_373e
    jp Jump_000_23d2


    rla
    pop de
    ld l, h
    add hl, hl
    dec bc
    rla
    jr @+$6f

    add hl, hl
    ld d, b
    rla
    dec sp
    ld l, l
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $5416
    ld de, $5384
    ld a, [$d601]
    call Call_000_30fc
    ld [$d601], a
    ret


Jump_014_5379:
    xor a
    ld [$cd6b], a
    ld [$d601], a
    ld [$da38], a
    ret


    adc [hl]
    ld d, e
    add sp, $31
    ld de, $db32
    ld d, e
    jp z, $fa53

    xor $d7
    bit 0, a
    jp nz, Jump_000_31b5

    ld hl, $53c7
    call Call_000_34bc
    jp nc, Jump_000_31b5

    xor a
    ldh [$b4], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d7ef
    bit 1, [hl]
    res 1, [hl]
    ret z

    ld a, $80
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3415
    ld a, $04
    ld [$d601], a
    ld [$da38], a
    ret


    rrca
    ld a, [bc]
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    ld a, $00
    ld [$d601], a
    ld [$da38], a
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_014_5379

    call Call_000_231c
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d7ee
    set 1, [hl]
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d601], a
    ld [$da38], a
    ret


    ld e, a
    ld d, h
    ldh a, [rHDMA4]
    ld a, [$0454]
    ld d, l
    ld c, $55
    jr jr_014_5465

    ld [hl+], a
    ld d, l
    rst $28
    inc hl
    add [hl]
    ld d, l
    ld [bc], a
    ld b, b
    xor $d7
    inc l
    ld d, l
    ld [hl], $55
    ld sp, $3155
    ld d, l
    inc bc
    db $10
    xor $d7
    dec sp
    ld d, l
    ld b, l
    ld d, l
    ld b, b
    ld d, l
    ld b, b
    ld d, l
    inc b
    db $10
    xor $d7
    ld c, d
    ld d, l
    ld d, h
    ld d, l
    ld c, a
    ld d, l
    ld c, a
    ld d, l
    dec b
    db $10
    xor $d7
    ld e, c
    ld d, l
    ld h, e
    ld d, l
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ld d, l
    ld b, $10
    xor $d7
    ld l, b
    ld d, l
    ld [hl], d
    ld d, l
    ld l, l
    ld d, l
    ld l, l
    ld d, l
    rlca
    db $10
    xor $d7
    ld [hl], a
    ld d, l
    add c
    ld d, l
    ld a, h
    ld d, l
    ld a, h
    ld d, l
    rst $38
    ld [$ef21], sp
    rst $10
    res 1, [hl]

jr_014_5465:
    ld a, [$d7ee]
    bit 0, a
    jr nz, jr_014_54b4

    ld hl, $54cb
    call Call_000_3c36
    ld bc, $3101
    call Call_000_3e3f
    jr nc, jr_014_54bd

    ld hl, $d7ee
    set 0, [hl]
    ld hl, $54d5
    call Call_000_3c36
    ld hl, $54e1
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $54e6
    ld de, $54e6
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d601], a
    ld [$da38], a
    jp Jump_000_23d2


jr_014_54b4:
    ld hl, $54eb
    call Call_000_3c36
    jp Jump_000_23d2


jr_014_54bd:
    ld hl, $54dc
    call Call_000_3c36
    ld hl, $d7ef
    set 1, [hl]
    jp Jump_000_23d2


    rla
    ld e, h
    ld l, l
    add hl, hl
    dec bc
    rla
    sub b
    ld l, l
    add hl, hl
    ld d, b
    rla
    or h
    ld l, l
    add hl, hl
    ld de, $5006
    rla
    jp z, $296d

    ld d, b
    rla
    db $e3
    ld l, l
    add hl, hl
    ld d, b
    rla
    push bc
    ld l, [hl]
    add hl, hl
    ld d, b
    rla
    db $db
    ld l, [hl]
    add hl, hl
    ld d, b
    ld [$1621], sp
    ld d, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$2221], sp
    ld d, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$2e21], sp
    ld d, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$3a21], sp
    ld d, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$4621], sp
    ld d, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$5221], sp
    ld d, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec e
    ld l, a
    add hl, hl
    ld d, b
    rla
    ld a, $6f
    add hl, hl
    ld d, b
    rla
    ld c, [hl]
    ld l, a
    add hl, hl
    ld d, b
    rla
    add c
    ld l, a
    add hl, hl
    ld d, b
    rla
    sbc a
    ld l, a
    add hl, hl
    ld d, b
    rla
    or b
    ld l, a
    add hl, hl
    ld d, b
    rla
    db $d3
    ld l, a
    add hl, hl
    ld d, b
    rla
    db $ed
    ld l, a
    add hl, hl
    ld d, b
    rla
    ld a, [$296f]
    ld d, b
    rla
    dec e
    ld [hl], b
    add hl, hl
    ld d, b
    rla
    dec sp
    ld [hl], b
    add hl, hl
    ld d, b
    rla
    ld c, [hl]
    ld [hl], b
    add hl, hl
    ld d, b
    rla
    ld [hl], c
    ld [hl], b
    add hl, hl
    ld d, b
    rla
    adc [hl]
    ld [hl], b
    add hl, hl
    ld d, b
    rla
    and c
    ld [hl], b
    add hl, hl
    ld d, b
    rla
    call nz, $2970
    ld d, b
    rla
    ld h, $71
    add hl, hl
    ld d, b
    rla
    add hl, sp
    ld [hl], c
    add hl, hl
    ld d, b
    ld [$effa], sp
    rst $10
    bit 7, a
    jr nz, jr_014_55d5

    ld hl, $55de
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_014_55d0

    ld a, $b0
    ld [$d11d], a
    ld [$cf90], a
    call Call_000_2e93
    ld a, $01
    ld [$cc3c], a
    ld bc, $b00a
    call Call_000_3e59
    jp nc, Jump_000_23d2

    ld a, [$ccd3]
    and a
    call z, Call_000_3852
    ld a, $01
    ld [$cc3c], a
    ld hl, $55e3
    call Call_000_3c36
    ld hl, $d7ef
    set 7, [hl]
    jp Jump_000_23d2


jr_014_55d0:
    ld hl, $55e9
    jr jr_014_55d8

jr_014_55d5:
    ld hl, $55ee

jr_014_55d8:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld e, h
    ld [hl], c
    add hl, hl
    ld d, b
    rla
    db $ec
    ld [hl], c
    add hl, hl
    dec c
    ld d, b
    rla
    rrca
    ld [hl], d
    add hl, hl
    ld d, b
    rla
    ld sp, $2972
    ld d, b
    call Call_000_3c29
    ld hl, $5679
    ld de, $565d
    ld a, [$d602]
    call Call_000_30fc
    ld [$d602], a
    call Call_014_5609
    ret


Call_014_5609:
    ld hl, $d492
    res 2, [hl]
    res 3, [hl]
    res 4, [hl]
    res 7, [hl]
    xor a
    ld [$d660], a
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $d7f1
    bit 7, [hl]
    ret nz

    bit 5, [hl]
    jr nz, jr_014_5638

    res 6, [hl]
    ld a, $61
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    jr jr_014_565c

jr_014_5638:
    bit 4, [hl]
    jr z, jr_014_565c

    set 7, [hl]
    ld a, $25
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $62
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $63
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4

jr_014_565c:
    ret


    or l
    ld sp, $31e8
    ld de, $e632
    ld d, [hl]
    ldh a, [rRP]
    ld a, [$0456]
    ld d, a
    ld c, $57
    jr jr_014_56c6

    ld [hl+], a
    ld d, a
    inc l
    ld d, a
    ld [hl], $57
    rst $28
    inc hl
    rst $00

jr_014_5678:
    ld d, a
    ld bc, $f020
    rst $10
    ld b, b
    ld d, a
    ld c, d
    ld d, a
    ld b, l
    ld d, a
    ld b, l

jr_014_5684:
    ld d, a
    ld [bc], a
    jr nc, jr_014_5678

    rst $10
    ld c, a
    ld d, a
    ld e, c
    ld d, a
    ld d, h
    ld d, a
    ld d, h

jr_014_5690:
    ld d, a
    inc bc
    jr nc, jr_014_5684

    rst $10
    ld e, [hl]
    ld d, a
    ld l, b
    ld d, a
    ld h, e
    ld d, a
    ld h, e
    ld d, a
    inc b
    jr nz, jr_014_5690

    rst $10
    ld l, l
    ld d, a
    ld [hl], a
    ld d, a
    ld [hl], d
    ld d, a
    ld [hl], d
    ld d, a
    dec b
    ld b, b
    ldh a, [$d7]
    ld a, h
    ld d, a
    add [hl]
    ld d, a
    add c
    ld d, a
    add c

jr_014_56b4:
    ld d, a
    ld b, $40
    ldh a, [$d7]
    adc e
    ld d, a
    sub l
    ld d, a
    sub b
    ld d, a
    sub b
    ld d, a
    rlca
    jr nc, jr_014_56b4

    rst $10
    sbc d

jr_014_56c6:
    ld d, a
    and h
    ld d, a
    sbc a
    ld d, a
    sbc a

jr_014_56cc:
    ld d, a
    ld [$f020], sp
    rst $10
    xor c
    ld d, a
    or e
    ld d, a
    xor [hl]
    ld d, a
    xor [hl]
    ld d, a
    add hl, bc
    jr nz, jr_014_56cc

    rst $10
    cp b
    ld d, a
    jp nz, $bd57

    ld d, a
    cp l
    ld d, a
    rst $38
    ld [$7921], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$8521], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$9121], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$9d21], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$a921], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$b521], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$c121], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$cd21], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$d921], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld c, c
    ld [hl], d
    add hl, hl
    ld d, b
    rla
    ld [hl], b
    ld [hl], d
    add hl, hl
    ld d, b
    rla
    ld a, a
    ld [hl], d
    add hl, hl
    ld d, b
    rla
    cp l
    ld [hl], d
    add hl, hl
    ld d, b
    rla
    ld a, [$2972]
    ld d, b
    rla
    rlca
    ld [hl], e
    add hl, hl
    ld d, b
    rla
    dec sp
    ld [hl], e
    add hl, hl
    ld d, b
    rla
    ld h, d
    ld [hl], e
    add hl, hl
    ld d, b
    rla
    ld [hl], b
    ld [hl], e
    add hl, hl
    ld d, b
    rla
    sub h
    ld [hl], e
    add hl, hl
    ld d, b
    rla
    or b
    ld [hl], e
    add hl, hl
    ld d, b
    rla
    ret nz

    ld [hl], e
    add hl, hl
    ld d, b
    rla
    db $e3
    ld [hl], e
    add hl, hl
    ld d, b
    rla
    rst $38
    ld [hl], e
    add hl, hl
    ld d, b
    rla
    inc d
    ld [hl], h
    add hl, hl
    ld d, b
    rla
    ld c, h
    ld [hl], h
    add hl, hl
    ld d, b
    rla
    ld [hl], a
    ld [hl], h
    add hl, hl
    ld d, b
    rla
    adc e
    ld [hl], h
    add hl, hl
    ld d, b
    rla
    cp e
    ld [hl], h
    add hl, hl
    ld d, b
    rla
    add sp, $74
    add hl, hl
    ld d, b
    rla
    ld a, [$2974]
    ld d, b
    rla
    rra
    ld [hl], l
    add hl, hl
    ld d, b
    rla
    ld c, h
    ld [hl], l
    add hl, hl
    ld d, b
    rla
    ld e, c
    ld [hl], l
    add hl, hl
    ld d, b
    rla
    add l
    ld [hl], l
    add hl, hl
    ld d, b
    rla
    or d
    ld [hl], l
    add hl, hl
    ld d, b
    rla
    call nz, $2975
    ld d, b
    rla
    push af
    ld [hl], l
    add hl, hl
    ld d, b
    ld de, $0f09
    pop af
    ld e, c
    ld e, l
    ld e, b
    ret c

    ld d, a
    nop
    ld d, a
    ld e, c
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_014_57ff
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    call nz, Call_014_5804
    call Call_000_3c29
    ld hl, $5877
    ld de, $5826
    ld a, [$d63e]
    call Call_000_30fc
    ld [$d63e], a
    ret


Call_014_57ff:
    ld hl, $d868
    res 7, [hl]

Call_014_5804:
    ld a, [$d7ed]
    bit 0, a
    jr z, jr_014_5815

    push af
    ld a, $15
    ld bc, $0403
    call Call_014_581d
    pop af

jr_014_5815:
    bit 7, a
    ret z

    ld a, $1d
    ld bc, $070b

Call_014_581d:
    ld [$d09e], a
    ld a, $17
    call Call_000_3eb4
    ret


    inc l
    ld e, b
    add sp, $31
    ld de, $2132
    ld e, b
    ld e, b
    call Call_000_34e1
    jp nc, Jump_000_31b5

    ldh a, [$8c]
    cp $0f
    jp z, Jump_000_31b5

    ld hl, $d7ed
    ld a, [$cd3d]
    cp $02
    jr z, jr_014_584d

    bit 0, [hl]
    set 0, [hl]
    ret nz

    jr jr_014_5852

jr_014_584d:
    bit 7, [hl]
    set 7, [hl]
    ret nz

jr_014_5852:
    ld hl, $d125
    set 5, [hl]
    ret


    db $10
    ld bc, $0910
    rst $38
    ret nz

    ld e, b
    jp z, $d458

    ld e, b
    sbc $58
    add sp, $58
    ld a, [c]
    ld e, b
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ldh [rNR44], a

jr_014_5873:
    ldh [rNR44], a
    ldh [rNR44], a
    ld bc, $ed40
    rst $10
    inc c
    ld e, c
    ld d, $59

jr_014_587f:
    ld de, $1159
    ld e, c
    ld [bc], a
    jr nc, jr_014_5873

    rst $10
    dec de
    ld e, c
    dec h
    ld e, c
    jr nz, @+$5b

    jr nz, jr_014_58e8

    inc bc
    jr nc, jr_014_587f

    rst $10
    ld a, [hl+]
    ld e, c
    inc [hl]
    ld e, c

jr_014_5897:
    cpl
    ld e, c
    cpl
    ld e, c
    inc b
    db $10
    db $ed
    rst $10
    add hl, sp
    ld e, c
    ld b, e
    ld e, c
    ld a, $59
    ld a, $59
    dec b
    jr nc, jr_014_5897

    rst $10
    ld c, b
    ld e, c
    ld d, d
    ld e, c
    ld c, l
    ld e, c
    ld c, l
    ld e, c
    ld b, $00
    db $ed
    rst $10
    db $fc
    ld e, b
    db $fc
    ld e, b
    db $fc
    ld e, b
    db $fc
    ld e, b
    rst $38
    ld [$7721], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    ld [$8321], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    ld [$8f21], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    ld [$9b21], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


jr_014_58e8:
    ld [$a721], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    ld [$b321], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld h, c
    ld h, [hl]
    jr z, jr_014_5909

    ld a, $49
    call Call_000_118b
    call Call_000_373e

jr_014_5909:
    jp Jump_000_23d2


    rla
    ld l, d
    ld h, [hl]
    jr z, jr_014_5961

    rla
    sbc b
    ld h, [hl]
    jr z, jr_014_5966

    rla
    and b
    ld h, [hl]
    jr z, jr_014_596b

    rla
    call nc, Call_000_2866
    ld d, b
    rla
    ld [bc], a
    ld h, a
    jr z, jr_014_5975

    rla
    rrca
    ld h, a
    jr z, jr_014_597a

    rla
    ld a, [hl+]
    ld h, a
    jr z, jr_014_597f

    rla
    ld b, d
    ld h, a
    jr z, @+$52

    rla
    ld d, d
    ld h, a
    jr z, jr_014_5989

    rla
    ld a, a
    ld h, a
    jr z, @+$52

    rla
    cp l
    ld h, a
    jr z, jr_014_5993

    rla
    ret nc

    ld h, a
    jr z, jr_014_5998

    rla
    rlca
    ld l, b
    jr z, @+$52

    rla
    inc hl
    ld l, b
    jr z, jr_014_59a2

    rla
    cpl
    ld l, b
    jr z, jr_014_59a7

    ld a, l
    rlca
    ld [$0200], sp
    ld l, h
    rlca
    dec e
    inc bc
    rst $38

jr_014_5961:
    ld [$031d], sp
    rst $38
    rlca

jr_014_5966:
    rla
    nop
    add $0e
    add hl, de

jr_014_596b:
    ld [bc], a
    add $07
    dec de
    ld bc, $01c6
    ld bc, $c603

jr_014_5975:
    nop
    dec c
    ld c, $0d
    db $10

jr_014_597a:
    rst $38
    jp nc, $e041

    add hl, bc

jr_014_597f:
    inc c
    ld de, $ff19
    jp nc, $dd42

    ld [bc], a
    rlca
    inc c

jr_014_5989:
    rla
    rst $38
    ret nc

    ld b, e
    sbc $05
    inc c
    ld b, $08
    rst $38

jr_014_5993:
    ret nc

    ld b, h
    rst $08
    ld b, $0c

jr_014_5998:
    rlca
    ld e, $ff
    jp nc, $dd45

    dec b
    add hl, bc
    add hl, bc
    rrca

jr_014_59a2:
    rst $38
    pop de
    ld b, [hl]
    ld c, c
    ld [hl-], a

jr_014_59a7:
    ld b, a
    add hl, bc
    rra
    rst $38
    rst $38
    add a
    reti


    ld b, a
    dec c
    ld d, $ff
    rst $38
    adc b
    inc [hl]
    ld b, a
    rrca
    dec c
    rst $38
    rst $38
    adc c
    call $0447
    rrca
    rst $38
    rst $38
    adc d
    scf
    ld c, c
    ld [de], a
    ld [$10ff], sp
    dec bc
    ld c, c
    add hl, bc
    add hl, bc
    rst $38
    db $10
    inc c
    ld c, c
    inc d
    dec de
    rst $38
    db $10
    dec c
    ld d, d
    rst $00
    ld [$4b00], sp
    rst $00
    rlca
    dec e
    ld h, b
    rst $00
    ld [$481d], sp
    rst $00
    rlca
    rla
    sbc l
    rst $00
    ld c, $19
    ld c, d
    rst $00
    rlca
    dec de
    cp $c6
    ld bc, $6201
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, $60
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    rlca
    ld b, $60
    rrca
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, $60
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    rlca
    ld [$0e05], sp
    ld [$6006], sp
    ld h, b
    ld b, $60
    dec b
    dec b
    dec b
    ld b, $60
    rlca
    ld bc, $6060
    ld h, b
    ld b, $60
    ld h, b
    ld b, $60
    ld h, b
    ld h, b
    ld a, $08
    ld h, d
    ld h, e
    inc hl
    ld h, b
    inc d
    scf
    dec d
    dec d
    dec d
    ld d, $60
    ld h, b
    ld h, b
    ld h, b
    ld b, $60
    ld h, a
    ld b, $60
    ld d, h
    ld sp, $3157
    ld [hl-], a
    ld a, [de]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    dec b
    dec b
    dec b
    ld c, l
    ld h, b
    ld h, b
    ld h, b
    ld b, $60
    jr jr_014_5a6c

    dec d
    dec d
    dec d
    ld h, $15
    ld d, $60
    ld b, $11
    ld h, b
    ld h, b
    ld b, $60
    inc e
    dec l
    dec e
    dec e
    dec l
    dec h
    ld h, c
    ld e, $60
    ld h, l
    inc b
    dec bc

jr_014_5a6c:
    ld a, l
    ld h, l
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld de, $0e0e
    db $d3
    ld e, d
    adc b
    ld e, d
    add h
    ld e, d
    nop
    adc a
    ld e, d
    call Call_000_3c29
    ret


    adc d
    ld e, d
    rla
    ld c, e
    ld c, d
    ld h, $50
    inc bc
    ld [$0505], sp
    ld [bc], a
    dec sp
    dec bc
    ld de, $3d00
    add hl, bc
    add hl, de
    inc bc
    dec sp
    rrca
    add hl, de
    inc b
    dec sp
    ld de, $0115
    dec a
    dec de
    dec c
    ld [bc], a
    dec a
    inc bc
    rla
    inc bc
    dec a
    inc bc
    dec de
    ld [bc], a
    rst $38
    nop
    nop
    daa
    rst $00
    dec b
    dec b
    ld l, c
    rst $00
    dec bc
    ld de, $c759
    add hl, bc
    add hl, de
    sub l
    rst $00
    rrca
    add hl, de
    and a
    rst $00
    ld de, $0715
    ret z

    dec de
    dec c
    inc e
    rst $00
    inc bc
    rla
    ld e, $c7
    inc bc
    dec de
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
    ccf
    ccf
    ccf
    ccf
    inc bc
    inc bc
    ccf
    ccf
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, de
    inc a
    add hl, de
    dec a
    inc bc
    inc bc
    dec a
    add hl, de
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
    inc bc
    inc bc
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc bc
    inc bc
    inc bc
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec a
    inc bc
    inc bc
    inc bc
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    add hl, de
    inc a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ccf
    ccf
    inc bc
    inc bc
    add hl, de
    add hl, de
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc bc
    dec a
    add hl, de
    inc bc
    inc bc
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc a
    inc bc
    add hl, de
    add hl, de
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
    inc bc
    inc bc
    add hl, de
    add hl, de
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
    inc bc
    inc bc
    add hl, de
    add hl, de
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
    inc bc
    inc bc
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, de
    inc a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld d, $09
    dec c
    add b
    ld e, a
    ld l, b
    ld e, l
    and e
    ld e, e
    nop
    nop
    ld e, a
    call Call_014_5bb9
    call Call_000_3c29
    ld hl, $5d86
    ld de, $5c59
    ld a, [$d647]
    call Call_000_30fc
    ld [$d647], a
    ret


Call_014_5bb9:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5c03
    call Call_014_5c0a
    call Call_014_5c36
    ld a, [$d82f]
    bit 4, a
    jr nz, jr_014_5be0

    push af
    ld a, $54
    ld [$d09e], a
    ld bc, $0305
    ld a, $17
    call Call_000_3eb4
    pop af

jr_014_5be0:
    bit 5, a
    jr nz, jr_014_5bf3

    push af
    ld a, $54
    ld [$d09e], a
    ld bc, $020a
    ld a, $17
    call Call_000_3eb4
    pop af

jr_014_5bf3:
    bit 6, a
    ret nz

    ld a, $54
    ld [$d09e], a
    ld bc, $060a
    ld a, $17
    jp Jump_000_3eb4


    inc bc
    dec b
    ld [bc], a
    ld a, [bc]
    ld b, $0a
    rst $38

Call_014_5c0a:
    push hl
    ld hl, $d73e
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_014_5c16:
    ld a, [hl+]
    cp $ff
    jr z, jr_014_5c32

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_014_5c27

    inc hl
    jr jr_014_5c16

jr_014_5c27:
    ld a, [hl+]
    cp c
    jr nz, jr_014_5c16

    ld hl, $d73e
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_014_5c32:
    xor a
    ldh [$e0], a
    ret


Call_014_5c36:
    ld hl, $d82f
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_014_5c44

    set 4, [hl]
    ret


jr_014_5c44:
    cp $02
    jr nz, jr_014_5c4b

    set 5, [hl]
    ret


jr_014_5c4b:
    set 6, [hl]
    ret


Jump_014_5c4e:
    xor a
    ld [$cd6b], a

Call_014_5c52:
Jump_014_5c52:
    ld [$d647], a
    ld [$da38], a
    ret


    ld h, l
    ld e, h
    add sp, $31
    ld de, $bf32
    ld e, h
    or $5c
    ld c, [hl]
    ld e, l
    ld a, [$d82e]
    bit 0, a
    jp nz, Jump_000_31b5

    ld hl, $5cb5
    call Call_000_34bc
    jp nc, Jump_000_31b5

    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld a, $04
    ld [$d527], a
    call Call_000_2233
    ld c, $02
    ld a, $de
    call Call_000_2211
    ld a, $09
    ldh [$8c], a
    call Call_000_2817
    ld a, $09
    ldh [$8c], a
    call Call_000_353e
    ld de, $5cba
    ld a, [$cd3d]
    ld [$cf0d], a
    cp $01
    jr z, jr_014_5ca9

    inc de

jr_014_5ca9:
    ld a, $09
    ldh [$8c], a
    call Call_000_363d
    ld a, $03
    jp Jump_014_5c52


    ld [bc], a
    inc bc
    inc bc
    inc bc
    rst $38
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $0d
    ldh [$8c], a
    call Call_000_2817
    call Call_000_3ddb
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $5ef1
    ld de, $5ef6
    call Call_000_32f0
    ld a, $f2
    ld [$d058], a
    ld a, [$d714]
    add $04
    ld [$d05c], a
    ld a, $04
    call Call_014_5c52
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_014_5c4e

    ld a, $f0
    ld [$cd6b], a
    ld hl, $d82e
    set 0, [hl]
    ld a, $04
    ld [$d527], a
    ld a, $09
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_3488
    ld a, $0f
    ldh [$8c], a
    call Call_000_2817
    call Call_000_2233
    ld b, $02
    ld hl, $59bd
    call Call_000_3e84
    ld de, $5d46
    ld a, [$cf0d]
    cp $01
    jr nz, jr_014_5d37

    ld de, $5d43

jr_014_5d37:
    ld a, $09
    ldh [$8c], a
    call Call_000_363d
    ld a, $05
    jp Jump_014_5c52


    ret nz

    ret nz

    rst $38
    add b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $ab
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_216b
    xor a
    ld [$cd6b], a
    jp Jump_014_5c52


    or a
    ld e, l
    db $10
    ld e, [hl]
    inc sp
    ld e, [hl]
    ld d, [hl]
    ld e, [hl]
    ld a, c
    ld e, [hl]
    sub d
    ld e, [hl]
    xor e
    ld e, [hl]
    call nz, $dd5e
    ld e, [hl]
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    db $ec
    ld e, [hl]
    pop af
    ld e, [hl]
    ei
    ld e, [hl]
    dec b
    jr nz, jr_014_5db7

    ret c

    add e
    ld e, [hl]
    adc l
    ld e, [hl]
    adc b
    ld e, [hl]
    adc b
    ld e, [hl]
    ld b, $30
    ld l, $d8
    sbc h
    ld e, [hl]
    and [hl]
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld e, [hl]
    rlca
    jr nc, @+$30

    ret c

    or l
    ld e, [hl]
    cp a
    ld e, [hl]
    cp d
    ld e, [hl]
    cp d
    ld e, [hl]
    ld [$2e40], sp
    ret c

    adc $5e
    ret c

    ld e, [hl]
    db $d3
    ld e, [hl]
    db $d3
    ld e, [hl]
    rst $38

jr_014_5db7:
    ld [$2dfa], sp
    rst $10
    bit 0, a
    jr z, jr_014_5dce

    ld a, [$d837]
    bit 7, a
    jr nz, jr_014_5df3

    ld hl, $5e06
    call Call_000_3c36
    jr jr_014_5df9

jr_014_5dce:
    ld hl, $5dfc
    call Call_000_3c36
    ld bc, $130f
    call Call_000_3e59
    jr nc, jr_014_5df9

    ld a, [$ccd3]
    and a
    call z, Call_000_3852
    call Call_000_3c29
    ld hl, $5e01
    call Call_000_3c36
    ld hl, $d72d
    set 0, [hl]
    jr jr_014_5df9

jr_014_5df3:
    ld hl, $5e0b
    call Call_000_3c36

jr_014_5df9:
    jp Jump_000_23d2


    rla
    push bc
    ld l, a
    ld h, $50
    rla
    inc sp
    ld [hl], b
    ld h, $50
    rla
    rst $28
    ld [hl], b
    ld h, $50
    rla
    ld l, $71
    ld h, $50
    ld [$37fa], sp
    ret c

    bit 7, a
    jr nz, jr_014_5e20

    ld hl, $5e29
    call Call_000_3c36
    jr jr_014_5e26

jr_014_5e20:
    ld hl, $5e2e
    call Call_000_3c36

jr_014_5e26:
    jp Jump_000_23d2


    rla
    ld c, c
    ld [hl], c
    ld h, $50
    rla
    adc e
    ld [hl], c
    ld h, $50
    ld [$37fa], sp
    ret c

    bit 7, a
    jr nz, jr_014_5e43

    ld hl, $5e4c
    call Call_000_3c36
    jr jr_014_5e49

jr_014_5e43:
    ld hl, $5e51
    call Call_000_3c36

jr_014_5e49:
    jp Jump_000_23d2


    rla
    ret z

    ld [hl], c
    ld h, $50
    rla
    dec b
    ld [hl], d
    ld h, $50
    ld [$37fa], sp
    ret c

    bit 7, a
    jr nz, jr_014_5e66

    ld hl, $5e6f
    call Call_000_3c36
    jr jr_014_5e6c

jr_014_5e66:
    ld hl, $5e74
    call Call_000_3c36

jr_014_5e6c:
    jp Jump_000_23d2


    rla
    scf
    ld [hl], d
    ld h, $50
    rla
    ld [hl], a
    ld [hl], d
    ld h, $50
    ld [$8621], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sub h
    ld [hl], d
    ld h, $50
    rla
    or b
    ld [hl], d
    ld h, $50
    rla
    cp l
    ld [hl], d
    ld h, $50
    ld [$9221], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    xor $72
    ld h, $50
    rla
    add hl, de
    ld [hl], e
    ld h, $50
    rla
    inc hl
    ld [hl], e
    ld h, $50
    ld [$9e21], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld d, c
    ld [hl], e
    ld h, $50
    rla
    ld [hl], l
    ld [hl], e
    ld h, $50
    rla
    adc [hl]
    ld [hl], e
    ld h, $50
    ld [$aa21], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ret nz

    ld [hl], e
    ld h, $50
    rla
    push hl
    ld [hl], e
    ld h, $50
    rla
    db $f4
    ld [hl], e
    ld h, $50
    ld [$e721], sp
    ld e, [hl]
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    jr nz, jr_014_5f5e

    ld h, $50
    rla
    dec [hl]
    ld [hl], h
    ld h, $50
    rla
    db $dd
    ld [hl], h
    ld h, $50
    rla
    ld [$2675], sp
    ld d, b
    rla
    ld d, b
    ld [hl], l
    ld h, $50
    ld l, $06
    nop
    db $10
    ld bc, $00d5
    ld d, $00
    db $d3
    nop
    ld [de], a
    nop
    db $ec
    rlca
    dec b
    inc bc
    db $eb
    inc bc
    dec b
    ld [$0fd0], sp
    dec d
    inc bc
    jp nc, Jump_000_0b00

    inc l
    add hl, bc
    dec b
    rst $38
    rst $38
    ld bc, $112c
    ld de, $d1ff
    ld [bc], a
    inc l
    ld c, $0b
    rst $38
    rst $38
    inc bc
    dec de
    inc c
    ld c, $ff
    rst $38
    inc b
    jr @+$07

    ld de, $d0ff
    ld b, l
    and $20
    jr nz, jr_014_5f4f

    ld b, $ff
    ret nc

    ld b, [hl]
    db $e4
    ld [$0618], sp
    jr @+$01

    jp nc, $e647

    ld hl, $1218
    rla

jr_014_5f4f:
    rst $38
    db $d3
    ld c, b
    and $22
    ld [bc], a
    dec bc
    rlca
    rst $38
    pop de
    add hl, bc
    ld b, a
    dec c
    dec b
    rst $38

jr_014_5f5e:
    rst $38
    adc d
    daa
    ld b, a
    rrca
    inc e
    rst $38
    rst $38
    adc e
    rlc h
    rst $00
    nop
    db $10
    rlca
    rst $00
    nop
    ld d, $05
    rst $00
    nop
    ld [de], a
    scf
    rst $00
    rlca
    dec b
    ld de, $03c7
    dec b
    adc e
    rst $00
    rrca
    dec d
    ld b, b
    ld b, c
    ld h, c
    ld h, b
    ld b, c
    ld b, c
    db $10
    ld b, d
    ld a, l
    ld a, h
    dec a
    inc h
    ld a, $44
    ld c, $2f
    ld h, h
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl], c
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld c, $47
    ld b, h
    ld c, $0e
    ld c, $0c
    ld e, d
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    ld c, $2f
    ld b, b
    ld h, e
    ld c, $67
    ld b, d
    ld b, [hl]
    dec c
    ld c, $34
    ld b, [hl]
    ld b, b
    ld h, c
    ld h, c
    ld b, h
    inc [hl]
    ld c, $34
    ld b, [hl]
    ld b, [hl]
    dec c
    ld c, $36
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld b, h
    ld [hl], $0e
    ld [hl], $46
    ld b, [hl]
    dec c
    ld c, $37
    ld b, [hl]
    ld b, h
    add hl, bc
    dec c
    ld b, h
    scf
    ld c, $37
    ld b, [hl]
    ld b, [hl]
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    ld c, $0e
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld b, [hl]
    ld c, $2f
    ld c, $46
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld d, a
    ld c, c
    ld c, c
    ld c, d
    ld d, $0e
    rrca
    add hl, sp
    ld h, c
    db $76
    ld h, b
    ld bc, $0060
    ld a, [$cd60]
    rla
    ld h, b
    call Call_000_3c29
    ld hl, $6080
    ld de, $6070
    ld a, [$d63b]
    call Call_000_30fc
    ld [$d63b], a
    ret


    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d795]
    bit 0, a
    jr nz, jr_014_603f

    ld a, $0e
    ld bc, $0204
    call Call_014_6058
    ld a, $54
    ld bc, $0409
    call Call_014_6058
    ld a, $5f
    ld bc, $0b03
    call Call_014_6058
    ret


jr_014_603f:
    ld a, $5f
    ld bc, $0204
    call Call_014_6058
    ld a, $0e
    ld bc, $0409
    call Call_014_6058
    ld a, $0e
    ld bc, $0b03
    call Call_014_6058
    ret


Call_014_6058:
    ld [$d09e], a
    ld a, $17
    jp Jump_000_3eb4


    ld a, [$c109]
    cp $04
    ret nz

    xor a
    ldh [$b4], a
    ld a, $05
    ldh [$8c], a
    jp Jump_000_2817


    or l
    ld sp, $31e8
    ld de, $8d32
    ld h, b
    rst $28
    inc hl
    and [hl]
    ld h, b
    xor e
    ld h, b
    or b
    ld h, b
    ld bc, $4600
    ret c

    sub a
    ld h, b
    and c
    ld h, b
    sbc h
    ld h, b
    sbc h
    ld h, b
    rst $38
    ld [$8021], sp
    ld h, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    xor a
    ld b, e
    daa
    ld d, b
    rla
    ld [c], a
    ld b, e
    daa
    ld d, b
    rla
    ld a, [$2743]
    ld d, b
    rla
    ld l, $44
    daa
    ld d, b
    rla
    add c
    ld b, h
    daa
    ld d, b
    ld [$eb21], sp
    ld h, b
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_014_60e2

    ld a, $01
    ld [$cc3c], a
    ld hl, $d125
    set 5, [hl]
    ld hl, $60f0
    call Call_000_3c36
    ld a, $ad
    call Call_000_2238
    ld hl, $d795
    bit 0, [hl]
    set 0, [hl]
    jr z, jr_014_60e8

    res 0, [hl]
    jr jr_014_60e8

jr_014_60e2:
    ld hl, $60f5
    call Call_000_3c36

jr_014_60e8:
    jp Jump_000_23d2


    rla
    cp a
    ld b, h
    daa
    ld d, b
    rla
    db $db
    ld b, h
    daa
    ld d, b
    rla
    jp hl


    ld b, h
    daa
    ld d, b
    ld bc, $0a04
    dec b
    inc b
    and l
    ld a, [bc]
    rlca
    nop
    rst $10
    ld c, $19
    ld [bc], a
    rst $10
    ld bc, $0106
    rst $10
    nop
    inc b
    inc c
    dec d
    rlca
    cp $02
    ld b, c
    db $d3
    rlca
    ld b, a
    dec bc
    jr nz, @+$01

    rst $38
    add d
    daa
    ld c, e
    ld b, $16
    rst $38
    rst $38
    inc bc
    ld c, e
    ld a, [de]
    rlca
    rst $38
    rst $38
    inc b
    ld l, c
    rst $00
    ld a, [bc]
    dec b
    ld l, d
    rst $00
    ld a, [bc]
    rlca
    sbc l
    rst $00
    ld c, $19
    ld bc, $01c7
    ld b, $68
    ld h, l
    ld h, l
    ld l, d
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld h, c
    ld h, l
    ld l, c
    ld e, h
    ld b, $0e
    ld c, $56
    ld c, $0e
    ld b, [hl]
    ld c, $47
    ld c, $70
    ld c, $07
    ld e, l
    ld e, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld d, [hl]
    ld e, b
    ld c, $57
    ld b, $38
    ld c, $46
    ld b, h
    ld c, $43
    ld b, e
    ld e, d
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld sp, $0606
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, $09
    ld h, b
    ld h, e
    ld c, $67
    ld b, $41
    ld h, l
    ld l, c
    ld b, h
    ld [hl], a
    ld l, a
    ld l, [hl]
    ld c, $0e
    add hl, bc
    ld h, h
    ld c, $0e
    ld c, $38
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld e, d
    jr c, jr_014_61ec

    ld c, c
    ld b, $06
    ld e, b
    ld c, $38
    ld c, $57
    ld d, c
    ld l, e
    ld h, c
    ld a, [hl+]
    ld e, l
    jr c, @+$48

    ld b, $06
    ld b, $0e
    ld c, $06
    ld l, [hl]
    ld c, $46
    ld b, h
    ld c, $31
    ld b, $06
    ld b, [hl]
    ld c, $6c
    ld bc, $1f1f
    rra
    rra
    rra
    ld c, a
    ld l, e
    ld h, c
    ld h, c
    ld b, d
    ld c, $46
    ld c, $6c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0e44
    ld c, $56
    ld c, $56
    ld c, $6c
    ld bc, $0101
    ld bc, $0101
    ld bc, $4744
    ld b, a
    ld c, $0e
    ld d, e
    ld c, $6c
    ld bc, $0101
    ld bc, $0101

jr_014_61ec:
    ld bc, $0e44
    ld c, $5a
    ld c, $46
    ld c, $6c
    ld bc, $0101
    ld bc, $0101
    ld bc, $4948
    ld c, c
    ld c, d
    ld c, c
    ld c, d
    rra
    ld l, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0916
    rrca
    ld c, a
    ld h, e
    or e
    ld h, d
    rla
    ld h, d
    nop
    rrca
    ld h, e
    call Call_014_622d
    call Call_000_3c29
    ld hl, $62bf
    ld de, $625e
    ld a, [$d63c]
    call Call_000_30fc
    ld [$d63c], a
    ret


Call_014_622d:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d795]
    bit 0, a
    jr nz, jr_014_624d

    ld a, $0e
    ld bc, $0207
    call Call_014_6058
    ld a, $5f
    ld bc, $0507
    call Call_014_6058
    ret


jr_014_624d:
    ld a, $5f
    ld bc, $0207
    call Call_014_6058
    ld a, $0e
    ld bc, $0507
    call Call_014_6058
    ret


    ld h, h
    ld h, d
    add sp, $31
    ld de, $2132
    ld a, l
    ld h, d
    call Call_014_6284
    ld a, [$d71d]
    and a
    jp z, Jump_000_31b5

    cp $03
    ld a, $a5
    jr nz, jr_014_6279

    ld a, $d6

jr_014_6279:
    ld [$d71c], a
    ret


    ld c, $10
    ld c, $11
    ld c, $13
    rst $38

Call_014_6284:
    xor a
    ld [$d71d], a
    ld a, [$d72c]
    bit 4, a
    ret nz

    call Call_000_34bc
    ret nc

    ld a, [$cd3d]
    ld [$d71d], a
    ld hl, $d72c
    set 4, [hl]
    ld hl, $d731
    set 4, [hl]
    ret


    ld a, [$c109]
    cp $04
    ret nz

    xor a
    ldh [$b4], a
    ld a, $06
    ldh [$8c], a
    jp Jump_000_2817


    ret c

    ld h, d
    ld [c], a
    ld h, d
    rst $28
    inc hl
    rst $28
    inc hl
    ld a, [bc]
    ld h, e
    or b
    ld h, b
    ld bc, $4800
    ret c

    db $ec
    ld h, d
    or $62
    pop af
    ld h, d
    pop af
    ld h, d
    ld [bc], a
    jr nz, jr_014_6316

    ret c

    ei
    ld h, d
    dec b
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    rst $38
    ld [$bf21], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$cb21], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld sp, hl
    ld b, h
    daa
    ld d, b
    rla
    inc d
    ld b, l
    daa
    ld d, b
    rla
    dec de
    ld b, l
    daa
    ld d, b
    rla
    inc a
    ld b, l
    daa
    ld d, b
    rla
    ld e, b
    ld b, l
    daa
    ld d, b
    rla
    ld l, l
    ld b, l
    daa
    ld d, b
    rla
    sbc e
    ld b, l
    daa
    ld d, b
    ld bc, $0a03
    rlca
    ld bc, $01d6

jr_014_6316:
    ld b, $03
    sub $0e
    add hl, de
    ld [bc], a
    sub $00
    dec b
    inc c
    rrca
    add hl, bc
    cp $02
    ld b, c
    db $d3
    ld [$0f20], sp
    jr @+$01

    jp nc, $e442

    inc c
    ld b, a
    inc d
    dec b
    rst $38
    rst $38
    add e
    ld de, $0947
    dec e
    rst $38
    rst $38
    add h
    dec h
    ld c, e
    db $10
    ld a, [bc]
    rst $38
    rst $38
    dec b
    ld l, d
    rst $00
    ld a, [bc]
    rlca
    ld bc, $01c7
    ld b, $9d
    rst $00
    ld c, $19
    ld b, b
    ld b, c
    ld b, c
    ld [hl], e
    ld b, c
    ld h, l
    ld h, l
    ld b, d
    ld h, c
    ld h, c
    ld h, c
    ld b, b
    ld b, $06
    ld b, $44
    ld c, $0e
    ld c, $0e
    ld c, $06
    ld d, [hl]
    ld c, $0e
    ld c, $55
    ld c, $06
    ld b, $5c
    jr c, @+$10

    ld c, $31
    ld [hl], a
    ld c, $0e
    ld c, $47
    ld c, $0e
    ld c, $31
    ld b, $5c
    ld b, $06
    ld b, $06
    ld c, $0e
    ld e, d
    ld c, $0e
    ld sp, $0e38
    ld c, $46
    ld e, h
    ld b, $38
    ld c, $67
    ld l, c
    dec c
    ld d, [hl]
    ld c, c
    ld b, $06
    ld b, $49
    ld c, c
    ld d, c
    ld b, h
    ld b, $0e
    ld l, a
    ld c, $5d
    dec c
    ld c, $07
    ld c, $0e
    jr c, jr_014_63b5

    ld c, $46
    ld b, h
    rlca
    ld c, $47
    ld sp, $495d
    ld b, $0e
    ld [hl], h
    ld d, a
    ld d, d

jr_014_63b5:
    ld d, a
    ld c, c
    ld d, c
    ld e, h
    ld b, $0e
    ld c, $06
    ld e, l
    ld bc, $0101
    ld bc, $4401
    ld l, a
    ld c, $46
    ld c, b
    ld c, c
    ld c, c
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $4948
    ld c, c
    ld c, d
    ld d, $0e
    rrca
    ld b, $65
    ld e, a
    ld h, h
    ld [c], a
    ld h, e
    nop
    pop bc
    ld h, h
    call Call_014_63f8
    call Call_000_3c29
    ld hl, $6471
    ld de, $6459
    ld a, [$d63d]
    call Call_000_30fc
    ld [$d63d], a
    ret


Call_014_63f8:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d795]
    bit 0, a
    jr nz, jr_014_6428

    ld a, $0e
    ld bc, $080d
    call Call_014_6058
    ld a, $0e
    ld bc, $0b06
    call Call_014_6058
    ld a, $5f
    ld bc, $0304
    call Call_014_6058
    ld a, $54
    ld bc, $0808
    call Call_014_6058
    ret


jr_014_6428:
    ld a, $2d
    ld bc, $080d
    call Call_014_6058
    ld a, $5f
    ld bc, $0b06
    call Call_014_6058
    ld a, $0e
    ld bc, $0304
    call Call_014_6058
    ld a, $0e
    ld bc, $0808
    call Call_014_6058
    ret


    ld a, [$c109]
    cp $04
    ret nz

    xor a
    ldh [$b4], a
    ld a, $09
    ldh [$8c], a
    jp Jump_000_2817


    or l
    ld sp, $31e8
    ld de, $8a32
    ld h, h
    sub h
    ld h, h
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    cp h
    ld h, h
    rst $28
    inc hl
    or b
    ld h, b
    ld bc, $4a00
    ret c

    sbc [hl]
    ld h, h
    xor b
    ld h, h
    and e
    ld h, h
    and e
    ld h, h
    ld [bc], a
    jr nc, @+$4c

    ret c

    xor l
    ld h, h
    or a
    ld h, h
    or d
    ld h, h
    or d
    ld h, h
    rst $38
    ld [$7121], sp
    ld h, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$7d21], sp
    ld h, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    rst $10
    ld b, l
    daa
    ld d, b
    rla
    rst $28
    ld b, l
    daa
    ld d, b
    rla
    rst $30
    ld b, l
    daa
    ld d, b
    rla
    add hl, de
    ld b, [hl]
    daa
    ld d, b
    rla
    add hl, sp
    ld b, [hl]
    daa
    ld d, b
    rla
    ld c, l
    ld b, [hl]
    daa
    ld d, b
    rla
    ld a, e
    ld b, [hl]
    daa
    ld d, b
    ld bc, $1601
    rla
    dec b
    and l
    nop
    ld [$1b0c], sp
    inc d
    rst $38
    rst $38
    ld b, c
    db $d3
    add hl, bc
    jr nz, jr_014_64e2

    rra
    rst $38
    ret nc

    ld b, d
    db $e4
    dec c
    ld b, a
    ld b, $0e
    rst $38
    rst $38
    add e
    jr z, @+$49

    ld a, [de]

jr_014_64e2:
    dec b
    rst $38
    rst $38
    add h
    db $10
    ld b, a
    dec e
    rla
    rst $38
    rst $38
    add l
    sub $47
    ld [$ff09], sp
    rst $38
    add [hl]
    sbc $4b
    jr jr_014_650c

    rst $38
    rst $38
    rlca
    ld b, a
    ld de, $ff09
    rst $38
    adc b
    dec hl
    ldh a, [$c7]
    ld d, $17
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld b, d
    ld h, c

jr_014_650c:
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld h, h
    ld c, $0e
    ld c, $46
    ld c, $0e
    ld c, $0e
    ld h, [hl]
    ld [hl], a
    ld b, e
    ld b, e
    ld b, e
    ld b, [hl]
    ld b, h
    ld c, $47
    ld c, $56
    ld e, b
    ld c, $57
    ld c, c
    ld c, d
    ld c, c
    ld e, b
    ld c, $57
    ld d, c
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, b
    ld h, e
    ld c, $67
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld c, $46
    ld b, h
    dec bc
    ld c, $0b
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $46
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld c, $46
    ld b, h
    dec bc
    ld c, $0b
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld c, $46
    ld d, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, $5a
    ld h, c
    ld c, $61
    ld e, c
    ld c, $56
    ld c, $51
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld c, $0e
    ld c, $44
    ld c, $0e
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $56
    ld c, $47
    ld c, $44
    ld c, $0e
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $44
    ld l, [hl]
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $5a
    ld c, $0e
    ld [hl], a
    ld b, h
    ld c, $0e
    ld c, $46
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld hl, $6645
    ld a, [$d35d]
    ld b, a

jr_014_65df:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr nz, jr_014_65df

    ld a, [$cfc5]
    cp $18
    jr z, jr_014_65fc

    cp $24
    jr z, jr_014_65fc

    ld b, a
    ld a, [$d35d]
    cp $eb
    ret nz

    ld a, b
    cp $5e
    ret nz

jr_014_65fc:
    ld b, $30
    call Call_000_3422
    jr z, jr_014_663e

    xor a
    ld [$d527], a
    ld a, $01
    ldh [$8c], a
    call Call_000_3f3a
    call Call_014_665f
    srl d
    ld a, d
    ld b, a
    ld [$d73e], a
    srl e
    ld a, e
    ld c, a
    ld [$d73f], a
    ld a, [$d35d]
    cp $eb
    jr nz, jr_014_662a

    ld a, $03
    jr jr_014_662c

jr_014_662a:
    ld a, $0e

jr_014_662c:
    ld [$d09e], a
    ld a, $17
    call Call_000_3eb4
    ld hl, $d125
    set 5, [hl]
    ld a, $ad
    jp Jump_000_2238


jr_014_663e:
    ld a, $02
    ldh [$8c], a
    jp Jump_000_3f3a


    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    jp hl


    ld_long $ffeb, a
    rla
    nop
    ld b, b
    ld h, $0b
    rla
    add hl, bc
    ld b, b
    ld h, $50
    rla
    add hl, hl
    ld b, b
    ld h, $50

Call_014_665f:
    ld a, [$d360]
    ld d, a
    ld a, [$d361]
    ld e, a
    ld a, [$c109]
    and a
    jr nz, jr_014_666f

    inc d
    ret


jr_014_666f:
    cp $04
    jr nz, jr_014_6675

    dec d
    ret


jr_014_6675:
    cp $08
    jr nz, jr_014_667b

    dec e
    ret


jr_014_667b:
    inc e
    ret


    ld b, $45
    call Call_000_3422
    jr nz, jr_014_668a

    ld hl, $66df
    jp Jump_000_3c36


jr_014_668a:
    ld hl, $d72f
    set 6, [hl]
    ld hl, $66e5
    call Call_000_3c36
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $03
    ld [$cc28], a
    ld a, $04
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    call Call_014_67db
    ld hl, $c3c8
    ld bc, $0810
    call Call_000_16f0
    call Call_014_66ef
    call Call_000_231c
    ld hl, $66ea
    call Call_000_3c36
    call Call_000_3aab
    bit 1, a
    jr nz, jr_014_66d9

    ld a, [$cc26]
    cp $03
    jr z, jr_014_66d9

    call Call_014_6826

jr_014_66d9:
    ld hl, $d72f
    res 6, [hl]
    ret


    rla
    dec [hl]
    ld b, [hl]
    jr z, jr_014_66f1

    ld d, b
    rla
    ld d, b
    ld b, [hl]
    jr z, @+$52

    rla
    ld [hl], h
    ld b, [hl]
    jr z, jr_014_673f

Call_014_66ef:
    ldh a, [$8c]

jr_014_66f1:
    sub $03
    ld [$d12e], a
    add a
    add a
    ld d, $00
    ld e, a
    ld hl, $67ae
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    inc hl
    push hl
    ld hl, $d13c
    call Call_000_3816
    pop hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d140
    ld bc, $0006
    call Call_000_00b1
    ld a, [$d12e]
    cp $02
    jr nz, jr_014_674d

    ld a, [$d13c]
    ld [$d11d], a
    call Call_000_2ec4
    ld hl, $c3f2
    call Call_000_1723
    ld a, [$d13d]
    ld [$d11d], a
    call Call_000_2ec4
    ld hl, $c41a
    call Call_000_1723
    ld a, [$d13e]

jr_014_673f:
    ld [$d11d], a
    call Call_000_2ec4
    ld hl, $c442
    call Call_000_1723
    jr jr_014_677a

jr_014_674d:
    ld a, [$d13c]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $c3f2
    call Call_000_1723
    ld a, [$d13d]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $c41a
    call Call_000_1723
    ld a, [$d13e]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $c442
    call Call_000_1723

jr_014_677a:
    ld hl, $c46a
    ld de, $67a4
    call Call_000_1723
    ld de, $d140
    ld hl, $c411
    ld c, $82
    call Call_000_13ad
    ld de, $d142
    ld hl, $c439
    ld c, $82
    call Call_000_13ad
    ld de, $d144
    ld hl, $c461
    ld c, $82
    jp Jump_000_13ad


    adc l
    adc [hl]
    ld a, a
    sub e
    add a
    add b
    adc l
    adc d
    sub d
    ld d, b
    cp d
    ld h, a
    cp [hl]
    ld h, a
    push bc
    ld h, a
    ret


    ld h, a
    ret nc

    ld h, a
    call nc, $9467
    ld d, d
    ld h, l
    ld d, b
    ld [bc], a
    jr nc, jr_014_67d1

    nop
    ld h, $80
    ld d, b
    ld a, [de]
    dec e
    xor d
    ld d, b
    ld h, l
    nop
    ld h, l
    nop
    sbc c
    sbc c
    ld d, b
    rst $18

jr_014_67d1:
    rst $10
    ld a, [$3350]
    nop
    ld d, l
    nop
    ld [hl], a
    nop
    ld d, b

Call_014_67db:
Jump_014_67db:
    ld hl, $c3ab
    ld bc, $0107
    call Call_000_16f0
    call Call_000_231c
    ld hl, $c3ac
    ld de, $6805
    call Call_000_1723
    ld hl, $c3c1
    ld de, $680a
    call Call_000_1723
    ld hl, $c3c1
    ld de, $d5a3
    ld c, $82
    call Call_000_13ad
    ret


    add d
    adc [hl]
    adc b
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Call_014_6811:
    ld a, [$d138]
    add a
    ld d, $00
    ld e, a
    ld hl, $d140
    add hl, de
    xor a
    ldh [$9f], a
    ld a, [hl+]
    ldh [$a0], a
    ld a, [hl]
    ldh [$a1], a
    ret


Call_014_6826:
    ld a, [$cc26]
    ld [$d138], a
    ld d, $00
    ld e, a
    ld hl, $d13c
    add hl, de
    ld a, [hl]
    ld [$d11d], a
    ld a, [$d12e]
    cp $02
    jr nz, jr_014_6843

    call Call_000_2ec4
    jr jr_014_6846

jr_014_6843:
    call Call_000_2e93

jr_014_6846:
    ld hl, $68c0
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_014_68ab

    call Call_014_6811
    call Call_000_35ce
    jr c, jr_014_68a5

    ld a, [$d12e]
    cp $02
    jr nz, jr_014_6872

    ld a, [$d11d]
    ld b, a
    ld a, $01
    ld c, a
    call Call_000_3e3f
    jr nc, jr_014_689f

    jr jr_014_688c

jr_014_6872:
    ld a, [$d11d]
    ld [$cf90], a
    push af
    call Call_014_68d7
    ld c, a
    pop af
    ld b, a
    call Call_000_3e59
    push af
    ld a, [$ccd3]
    and a
    call z, Call_000_3852
    pop af
    ret nc

jr_014_688c:
    call Call_014_6811
    ld hl, $ffa1
    ld de, $d5a4
    ld c, $02
    ld a, $0c
    call Call_000_3eb4
    jp Jump_014_67db


jr_014_689f:
    ld hl, $68cb
    jp Jump_000_3c36


jr_014_68a5:
    ld hl, $68c5
    jp Jump_000_3c36


jr_014_68ab:
    ld hl, $68d1
    jp Jump_000_3c36


    nop
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $8e17
    ld b, [hl]
    jr z, jr_014_68cc

    ld d, b
    rla
    sbc l
    ld b, [hl]
    jr z, @+$52

    rla
    or d
    ld b, [hl]
    jr z, jr_014_68d7

    ld d, b
    rla

jr_014_68cc:
    ret nc

    ld b, [hl]
    jr z, @+$0f

    ld d, b
    rla
    di
    ld b, [hl]
    jr z, jr_014_68e3

    ld d, b

Call_014_68d7:
jr_014_68d7:
    ld a, [$cf90]
    ld b, a
    ld hl, $68ea

jr_014_68de:
    ld a, [hl+]
    cp b
    jr z, jr_014_68e5

    inc hl

jr_014_68e3:
    jr jr_014_68de

jr_014_68e5:
    ld a, [hl]
    ld [$d126], a
    ret


    sub h
    rrca
    ld d, d
    ld [de], a
    ld h, l
    ld d, $1a
    ld e, $1d
    ld e, $aa
    ld a, [de]
    call Call_000_3c29
    ld a, $01
    ld [$cc3c], a
    ld a, [$cd3d]
    jp Jump_000_3f3a


    rla
    xor [hl]
    ld l, d
    daa
    dec c
    ld d, b
    ld [$5421], sp
    ld l, c
    call Call_000_3c36
    call Call_014_693b
    jr nz, jr_014_6938

    ld hl, $6959
    call Call_000_3c36
    call Call_014_693b
    jr nz, jr_014_6938

    ld hl, $695e
    call Call_000_3c36
    call Call_014_693b
    jr nz, jr_014_6938

    ld hl, $6963
    call Call_000_3c36
    ld hl, $694e
    call Call_000_3c36

jr_014_6938:
    jp Jump_000_23d2


Call_014_693b:
    ld hl, $6949
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    ret


    rla
    jr nz, jr_014_69b7

    daa
    ld d, b
    rla
    jr nc, jr_014_69bc

    daa
    dec c
    ld d, b
    rla
    ld d, h
    ld l, e
    daa
    ld d, b
    rla
    rst $30
    ld l, e
    daa
    ld d, b
    rla
    ld l, [hl]
    ld l, h
    daa
    ld d, b
    rla
    db $dd
    ld l, h
    daa
    ld d, b
    call Call_000_3c29
    ld a, $39
    jp Jump_000_3f3a


    rla
    ld [hl], d
    ld l, l
    daa
    ld d, b
    call Call_000_3c29
    ld a, $3a
    jp Jump_000_3f3a


    rla
    adc d
    ld l, l
    daa
    ld d, b
    call Call_000_3c29
    ld a, $38
    jp Jump_000_3f3a


    rla
    xor d
    ld l, l
    daa
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c29
    ld a, $29
    jp Jump_000_3f3a


    rla
    cp c
    ld l, l
    daa
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_69b7:
    nop
    nop
    nop
    nop
    nop

jr_014_69bc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
