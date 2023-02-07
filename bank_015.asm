;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    nop
    inc h
    ld a, [bc]
    add [hl]
    ld b, b
    ld a, [$f754]
    ld d, h
    inc c
    ld [bc], a
    ld a, [de]
    ld b, a
    add sp, -$3a
    db $10
    inc d
    inc hl
    ld a, [bc]
    cp l
    ret z

    ld bc, $43f4
    ld e, b
    ret


    db $10
    inc d
    nop
    ld a, [bc]
    inc bc
    rst $00
    ld [hl+], a
    ld b, b
    rrca
    rlca
    add hl, bc
    inc c
    nop
    ld l, $0b
    inc bc
    ld bc, $132f
    rrca
    nop
    jr nc, jr_015_4054

    db $10
    ld bc, $2731
    rrca
    ld [bc], a
    ld sp, $032b
    ld [bc], a
    ld [hl-], a
    inc hl
    ld de, $3101
    ld [bc], a
    ld b, c
    dec b
    inc bc
    dec bc
    dec bc
    inc b
    ld [bc], a
    ld b, a
    ld a, [hl-]
    ld de, $ffff
    add c
    ld a, [bc]
    ld b, a
    ld sp, $ff11
    rst $38

jr_015_4054:
    add d
    inc hl
    ccf
    rst $00
    add hl, bc
    inc c
    ld c, d
    rst $00
    dec bc
    inc bc
    sub b
    rst $00
    inc de
    rrca
    ld de, $23c8
    db $10
    jr nc, @-$36

    daa
    rrca
    ld c, d
    ret z

    dec hl
    inc bc
    ld de, $23c8
    ld de, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    add hl, bc
    rlca
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    ld bc, $0f0f
    rrca
    rrca
    rrca
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $311b
    ld sp, $3131
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $311b
    ld sp, $3131
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $3f3e
    ccf
    dec sp
    ld sp, $3131
    ld sp, $3131
    inc h
    ld b, $57
    dec h
    ld sp, $6d6c
    ld [hl-], a
    ld l, h
    ld l, h
    ld [$7431], sp
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_015_40e6

    ld a, [bc]
    ld a, [bc]
    ld sp, $3131
    ld sp, $5231
    ld a, h
    ld a, [hl]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, [bc]
    ld a, [bc]
    ld sp, $5555
    ld d, l
    ld d, l
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld sp, $1a1a
    ld a, [de]
    ld a, [de]
    rrca
    rrca

jr_015_40e6:
    rrca
    ld [bc], a
    inc bc
    ld sp, $010b
    dec bc
    dec bc
    rrca
    rrca
    rrca
    ld sp, $3131
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [hl-], a
    ld l, h
    ld l, h
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    cpl
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    cpl
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld d, d
    ld a, [bc]
    ld d, d
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    jr nz, @+$0f

    ld hl, $6d6c
    ld [hl-], a
    ld l, h
    ld l, h
    rrca
    rrca
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [bc]
    jr nz, @+$23

    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld a, h
    ld a, [hl]
    ld d, d
    ld d, d
    rrca
    rrca
    cpl
    rlca
    rlca
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld bc, $0a6e
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld bc, $0b0b
    dec bc
    ld l, [hl]
    rlca
    cpl
    rlca
    rlca
    ld [hl], h
    ld bc, $0b0b
    dec bc
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld bc, $6f0a
    ld l, a
    ld l, a
    inc [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld bc, $0f6e
    rrca
    rrca
    ld l, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld bc, $6c0a
    ld l, h
    ld l, h
    ld l, l
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld bc, $3131
    ld sp, $6d0a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    rrca
    rlca
    rlca
    cpl
    ld a, [de]
    rlca
    inc [hl]
    cpl
    rlca
    rlca
    rrca
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld sp, $6d0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld sp, $3108
    ld sp, $6d0a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    rrca
    ld bc, $7474
    ld sp, $6d0a
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    rrca
    ld bc, $0101
    ld bc, $346f
    ld l, a
    ld l, a
    ld l, a
    rrca
    rrca
    rrca
    dec de
    ld bc, $0f0f
    rrca
    rrca
    rrca
    nop
    add hl, bc
    inc hl
    ld e, l
    ld b, d
    dec h
    ld d, l
    inc c
    ld d, l
    ld a, [bc]
    rrca
    ld [bc], a
    ld b, l
    inc b
    rst $00
    dec c
    dec l
    ld de, $b4ce
    ret z

    ld [bc], a
    ld de, $e846
    add $0f
    inc d
    ld [$1627], sp
    rst $00
    db $10
    ld b, d
    inc l
    nop
    ld bc, $3b09
    ld a, [bc]
    add hl, bc
    inc c
    rrca
    dec a
    rst $38
    rst $38
    ld bc, $0a04
    ld c, $ff
    db $d3
    ld b, d
    jp z, Jump_000_0404

    ld [$ff12], sp
    ret nc

    ld b, e
    ret


    ld bc, $0d06
    inc d
    rst $38
    jp nc, $cb44

    ld bc, $0904
    rla
    rst $38
    ret nc

    ld b, l
    jp z, $0605

    ld [$ff1b], sp
    jp nc, $cb46

    ld [bc], a
    inc b
    dec c
    ld a, [de]
    rst $38
    jp nc, $c947

    ld [bc], a
    inc b
    ld a, [bc]
    inc e
    rst $38
    db $d3
    ld c, b
    jp z, Jump_000_0606

    ld c, $25
    rst $38
    pop de
    ld c, c
    rlc e
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
    ld l, l
    ld bc, $0101
    jr z, jr_015_42ab

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
    ld d, a
    ld a, [hl+]
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
    ld a, [hl+]
    inc l
    add hl, hl
    ld a, [bc]
    ld bc, $0101
    jr z, jr_015_42ce

    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_015_42ab:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    jr z, jr_015_42df

    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, @+$2e

    add hl, hl
    ld a, [bc]
    ld bc, $3f3e
    inc l
    inc l
    inc l
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    cpl
    rlca
    rlca

jr_015_42ce:
    ld b, d
    rlca
    rlca
    ld b, d
    rlca
    cpl
    inc h
    ld d, a
    dec h
    rlca
    cpl
    ld a, $3f
    dec sp
    rlca
    rlca
    cpl

jr_015_42df:
    jr z, @+$2e

    add hl, hl
    rlca
    cpl
    inc h
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    ld bc, $400a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, jr_015_432a

    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc h
    ld d, a
    dec h
    ld a, [bc]
    ld d, [hl]
    dec bc
    dec bc
    dec bc
    jr z, jr_015_4338

    ld bc, $410a
    ld a, [bc]
    ld l, [hl]
    rlca
    rlca
    cpl
    ld b, d
    rlca
    rlca
    ld b, d
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    jr z, jr_015_434d

    add hl, hl
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc

jr_015_432a:
    dec bc
    dec bc
    dec bc
    jr z, jr_015_435b

    ccf
    ccf
    ccf
    ccf
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_015_4338:
    ld a, [bc]
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    jr z, jr_015_4370

    add hl, hl
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, [bc]

Jump_015_4349:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc

jr_015_434d:
    dec bc
    dec bc
    dec bc
    jr z, jr_015_437e

    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld a, $3f
    ccf
    ccf

jr_015_435b:
    ccf
    ccf
    ccf
    dec sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    jr z, jr_015_4393

    add hl, hl
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_015_4370:
    ccf
    ccf
    ccf
    inc l
    inc l
    ld d, a
    ld d, a
    ld d, a
    ld d, a

jr_015_4379:
    dec h
    jr z, jr_015_43a8

    inc l
    inc l

jr_015_437e:
    inc l
    inc l
    inc l
    add hl, hl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    jr z, @+$2e

    add hl, hl
    jr z, jr_015_43b9

    inc l
    inc l
    inc l
    inc l
    inc l
    inc l

jr_015_4393:
    inc l
    inc l
    inc l
    inc l
    inc l
    nop
    add hl, bc
    dec l
    db $f4
    ld b, e
    add l
    ld d, [hl]
    ld l, h
    ld d, [hl]
    dec b
    ld c, $73
    ld b, d
    ld c, h
    ret


    dec c

jr_015_43a8:
    inc hl
    nop
    ld [hl-], a
    ld [de], a
    rst $00
    inc bc
    ld c, d
    ld c, b
    jr jr_015_4379

    rrca
    inc d
    ld [$0300], sp
    rst $00
    cp d

jr_015_43b9:
    ld b, e
    inc l
    inc bc
    dec b
    dec bc
    nop
    ld b, h
    dec b
    ld [de], a
    nop
    dec sp
    dec b
    jr @+$09

    inc a
    inc bc
    dec b
    inc c
    inc b
    rlca
    ld de, $0705
    dec de
    ld b, $03
    ld b, $0c
    dec c
    cp $00
    ld bc, $0706
    ld b, e
    rst $38
    db $d3
    ld b, d
    rlc h
    ld b, a
    rlca
    dec a
    rst $38
    rst $38
    add e
    call z, $c787
    dec b
    dec bc
    adc e
    rst $00
    dec b
    ld [de], a
    adc [hl]
    rst $00
    dec b
    jr jr_015_4421

    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld a, [hl+]
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
    ld a, [hl+]
    inc l
    inc l
    inc l
    inc l

jr_015_4421:
    inc l
    dec hl
    ld d, a
    ld d, a
    dec h
    jr nz, @+$23

    inc h
    ld a, [hl+]
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, c
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld sp, $3131
    ld sp, $5724
    ld d, a
    ld d, a
    ld d, a
    inc l
    add hl, hl
    ld bc, $0101
    ld a, h
    ld [hl], d
    ld bc, $0624
    ld a, [hl+]
    dec hl
    ld b, $57
    ld d, a
    ld d, a
    ld d, a
    dec h
    ld a, [bc]
    ld e, d
    cpl
    ld e, e
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld e, d
    rlca
    rlca
    rlca
    rlca
    rlca
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    inc l
    add hl, hl
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $0108
    jr z, jr_015_44b0

    ld sp, $3108
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, d
    cpl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld h, a
    rra
    rra
    rra
    rra
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $1a01

jr_015_44b0:
    ld a, [de]
    ld a, [de]
    jr z, @+$2b

    rlca
    rlca
    rlca
    rlca
    rlca
    cpl
    rlca
    rlca
    rlca
    rlca
    ld e, e
    ld a, [bc]
    ld a, [bc]
    ld e, d
    rlca
    rlca
    rlca
    rlca
    cpl
    ld l, a
    rlca
    rlca
    rlca
    rlca
    ld a, [de]
    inc e
    ld a, [de]
    ld a, [de]
    inc d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc l
    add hl, hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $2928
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    ld sp, $3131
    ld sp, $3131
    ld sp, $292c
    ld bc, $0101
    ld bc, $1a01
    ld a, [de]
    ld a, [de]
    jr z, jr_015_453a

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    cpl
    rlca
    rlca
    rlca
    rlca
    cpl
    rlca
    rlca
    rlca
    rlca
    ld l, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    cpl
    rlca
    ld h, d
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    inc l
    inc l
    dec sp
    ld a, [de]
    ld a, [de]
    ld bc, $0101
    ld bc, $2801

jr_015_453a:
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
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc l
    inc l
    add hl, hl
    ld bc, $0101
    ld bc, $3f3e
    ccf
    inc l
    inc l
    inc l
    inc l
    inc l

jr_015_456b:
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
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
    ccf
    ccf
    ccf
    dec sp
    ld [hl], h
    ld [hl], h
    nop
    ld [de], a
    ld a, [bc]
    jp c, $c945

    ld d, [hl]
    add $56
    inc c
    inc bc
    ld h, h
    ld c, c
    add sp, -$3a
    db $10
    inc d
    inc hl
    ld a, [bc]
    cp l
    ret z

    ld a, [bc]
    sbc d
    ld c, d
    jr c, jr_015_456b

    db $10
    inc d
    nop
    ld a, [bc]
    inc bc
    rst $00
    xor e
    ld b, l
    ld a, [bc]
    dec b
    dec e
    ld a, [bc]
    ld [bc], a
    ld b, [hl]
    dec e
    add hl, bc
    ld [bc], a
    ld b, [hl]
    ld hl, $000a
    ld b, [hl]
    dec de
    ld de, $4700
    dec d
    ld a, [bc]
    nop
    ld c, b
    ld bc, $111d
    ld bc, $de00
    rst $00
    dec e
    ld a, [bc]
    db $dd
    rst $00
    dec e
    add hl, bc
    cp $c7
    ld hl, $d10a
    rst $00
    dec de
    ld de, $c79e
    dec d
    ld a, [bc]
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
    ld l, l
    daa
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld l, [hl]
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    daa
    ld c, l
    ld l, l
    daa
    ld e, a
    ld sp, $3131
    ld sp, $271b
    ld c, l
    ld l, l
    daa
    ld e, a
    ld sp, $0e0c
    ld sp, $271b
    ld c, l
    ld l, l
    ld e, [hl]
    ld e, a
    ld sp, $1210
    ld sp, $5e1b
    ld c, l
    ld l, l
    ld bc, $1a5f
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    ld bc, $6d4d
    ld bc, $0101
    ld bc, $0101
    ld bc, $2120
    ld l, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $7e7c
    ld l, l
    ld bc, $0101
    dec de
    ld e, a
    ld bc, $0801
    ld c, l
    ld l, l
    ld bc, $2001
    dec c
    dec c
    ld hl, $0101
    ld c, l
    ld l, [hl]
    ld [hl], a
    ld [hl], a
    scf
    ld a, l
    ld a, [hl-]
    ld a, [hl]
    ld [hl], a
    ld [hl], a
    ld l, l
    ld l, [hl]
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld l, l
    nop
    add hl, bc
    ld e, $06
    ld b, a
    jp hl


    ld d, [hl]
    ret nc

    ld d, [hl]
    inc bc
    inc bc
    ld e, e
    ld c, b
    add sp, -$3a
    rrca
    inc d
    ld [$1627], sp
    rst $00
    dec d
    ld d, [hl]
    ld b, e
    ld [hl], l
    rst $00
    inc c
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $b0
    ld b, [hl]
    inc l
    nop
    ld bc, $1907
    dec bc
    ld a, [bc]
    ld b, $0e
    ld de, $d2ff
    ld b, c
    adc $05
    rlca
    dec bc
    inc e
    rst $38
    jp nc, $c942

    ld c, $07
    dec bc
    inc hl
    rst $38
    db $d3
    ld b, e
    call $0608
    inc c
    inc [hl]
    rst $38
    db $d3
    ld b, h
    adc $06
    ld c, $13
    inc d
    rst $38
    jp nc, $d145

    dec bc
    ld c, $07
    cpl
    rst $38
    jp nc, $d146

    ld b, $04
    ld b, $1a
    rst $38
    ret nc

    ld b, a
    jp z, Jump_000_0e0d

    inc de
    ld sp, $d3ff
    ld c, b
    pop de
    dec b
    inc b
    inc c
    inc l
    rst $38
    db $d3
    ld c, c
    jp z, Jump_015_470e

    inc de
    ld c, $ff
    rst $38
    adc d
    and $24
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a

Jump_015_470e:
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    inc l
    dec hl
    ld [hl], h
    ld [hl], h
    ld c, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, $3b
    dec bc
    dec bc
    jr z, jr_015_4760

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, @+$2e

    inc l
    add hl, hl
    ld [hl], h
    ld [hl], h
    ld c, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, $3b
    rlca
    rlca
    cpl
    jr z, @+$2b

    cpl
    rlca
    inc h
    dec h
    cpl
    rlca
    rlca
    rlca
    ld a, $3b
    rlca
    jr z, jr_015_478a

    inc l
    add hl, hl

jr_015_4760:
    ld d, d
    ld d, d
    ld c, a
    rlca
    rlca
    rlca
    rlca
    ld c, h
    jr z, @+$2b

    ld sp, $0831
    inc h
    dec h
    ld sp, $3131
    ld sp, $3131
    ld sp, $2431
    dec h
    ld sp, $5724
    ld d, a
    dec h
    ld a, [bc]
    ld a, [bc]
    dec [hl]
    ld sp, $3131
    ld sp, $2c3e
    add hl, hl
    ld a, [de]
    ld a, [de]

jr_015_478a:
    ld a, [de]
    rlca
    cpl
    ld a, $3b
    ld sp, $3b3e
    ld sp, $3b3e
    ld sp, $3131
    ld sp, $3131
    ld sp, $5151
    ld h, e
    ld a, $3b
    ld a, [de]
    ld a, [de]
    inc h
    ld d, a
    dec h
    ld sp, $3131
    ld sp, $240a
    dec h
    rlca
    inc h
    dec h
    cpl
    jr z, @+$2b

    ld a, [de]
    ld a, $3b
    ld a, [de]
    ld a, $3f
    ccf
    ld [hl], h
    ld [hl], h
    ld c, l
    jr z, jr_015_47e8

    rlca
    rlca
    rlca
    rlca
    cpl
    ld a, [de]
    ld a, [de]
    ld a, $3b
    cpl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc h
    dec h
    ld a, [de]
    inc h
    dec h
    ld a, [de]
    jr z, jr_015_4803

    inc l
    ld [hl], h
    ld [hl], h
    ld c, l
    jr z, jr_015_4806

    ld sp, $3131
    ld sp, $3131
    ld sp, $2928
    ld a, [bc]
    ld a, [bc]

jr_015_47e8:
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
    jr z, jr_015_4821

    inc l
    ld [hl], h
    ld [hl], h
    ld c, l
    jr z, jr_015_4827

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc l

jr_015_4803:
    inc l
    ccf
    ccf

jr_015_4806:
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
    inc l
    inc l
    nop
    add hl, bc
    ld e, $93
    ld c, b
    ld c, e
    ld e, b
    ld [hl-], a
    ld e, b
    ld a, [bc]
    rla
    ld c, $49

jr_015_4821:
    rst $38
    add $0a
    ld a, [bc]
    ld l, e
    ret c

jr_015_4827:
    ld c, c
    jp z, $2119

    ld c, d
    ld d, h
    rst $00
    inc c
    ld a, [bc]
    nop
    inc de
    ld [bc], a
    rst $00
    ld [hl], $48
    ld b, e
    nop
    inc bc
    dec c
    rrca
    dec bc
    dec b
    ld hl, $0b0c
    rra
    dec c
    ld a, [bc]
    rlca
    ld c, $35
    rst $38
    db $d3
    ld b, c
    rst $18
    ld bc, $0e06
    inc [hl]
    rst $38
    ret nc

    ld b, d
    adc $0c
    ld b, $0d
    rra
    rst $38
    ret nc

    ld b, e
    adc $0d
    ld b, $0e
    dec de
    rst $38
    jp nc, $ce44

    ld c, $06
    add hl, bc
    ld [hl], $ff
    ret nc

    ld b, l
    adc $0f
    rlca
    ld [$ff10], sp
    db $d3
    ld b, [hl]
    rst $18
    ld [bc], a
    rrca
    ld a, [bc]
    dec h
    rst $38
    ret nc

    ld b, a
    jp c, Jump_000_0f04

    ld a, [bc]
    inc h
    rst $38
    ret nc

    ld c, b
    jp c, Jump_000_1205

    dec bc
    ld c, $ff
    pop de
    ld c, c
    jp nc, Jump_000_0701

    ld de, $ff0b
    pop de
    ld c, d
    rst $18
    inc bc
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $1c31
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rrca
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    rrca
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld bc, $7731
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $771b
    ld [hl], a
    ld d, [hl]
    inc [hl]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    dec de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld bc, $6d0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, [hl]
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld [hl], a
    dec de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $771b
    ld bc, $0f0f
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    rrca
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    dec de
    ld sp, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $771b
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld sp, $5454
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    dec de
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld [hl], a
    ld d, [hl]
    dec de
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld l, d
    ld b, e

jr_015_4978:
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
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    dec d
    nop
    dec de
    ld a, [bc]
    ld a, [de]
    ld c, d
    nop
    ld e, d
    rst $20
    ld e, c
    inc bc
    ld a, [de]
    rst $20
    ld c, c
    jr c, jr_015_4978

    add hl, bc
    ld e, $dc
    dec sp
    ld a, [hl+]
    rst $00
    jr @-$6b

    ld c, b
    dec h
    rst $00
    add hl, bc
    ld e, $00
    nop
    dec c
    rst $00
    jp Jump_015_4349


    nop
    ld bc, $110d
    dec bc
    ld a, [bc]
    rlca
    ld [$ff08], sp
    ret nc

    ld b, c
    rst $18
    ld c, $07
    ld a, [bc]
    inc de
    rst $38
    ret nc

    ld b, d
    rst $18
    rrca
    rlca
    rrca
    db $10
    rst $38
    ret nc

    ld b, e
    rst $18
    db $10
    rlca
    inc de
    ld [de], a
    rst $38
    pop de
    ld b, h
    rst $18
    ld de, $2307
    inc de
    rst $38
    jp nc, $df45

    inc b
    rlca
    dec [hl]
    ld a, [bc]
    rst $38
    pop de
    ld b, [hl]
    rst $18
    dec b
    ld [de], a
    dec hl
    add hl, bc
    rst $38
    ret nc

    ld b, a
    jp nc, Jump_000_120d

    ld [hl+], a
    ld [$d3ff], sp
    ld c, b
    jp nc, $120e

    ld [hl+], a
    inc de
    rst $38
    jp nc, $d249

    rrca
    ld [de], a
    inc hl
    ld [$d3ff], sp
    ld c, d
    jp nc, $0a02

    ld c, l
    ld sp, $3131
    ld sp, $3131
    ld sp, $0a31
    ld c, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [bc]
    ld c, l
    ld sp, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [bc]
    ld c, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld a, [bc]
    ld c, l
    ld [hl], a
    ld sp, $7777
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [bc]
    ld c, l
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld [hl], a
    ld a, [bc]
    ld c, l
    ld sp, $3131
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld [$0a77], sp
    ld c, l
    ld sp, $3131
    ld a, [bc]
    ld d, l
    ld c, l
    rrca
    rrca
    ld a, [bc]
    ld c, l
    inc e
    inc e
    inc e
    ld a, [bc]
    ld d, l
    ld c, l
    rrca
    rrca
    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    rrca
    rrca
    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    rra
    rra
    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld l, [hl]
    rlca
    rlca
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    dec [hl]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld h, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    dec [hl]
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    inc de
    inc de
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    inc de
    inc de
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld d, l
    ld l, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    rlca
    dec [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    ld c, l
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
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
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, e
    nop
    ld c, b
    ld a, [bc]
    or b
    ld c, e
    and a
    ld e, e
    adc [hl]
    ld e, e
    inc c
    dec de
    db $fc
    ld c, e
    db $eb
    add $0d
    inc d
    ld de, $d300
    rst $00
    dec e
    sbc h
    ld c, h
    sbc e
    rrc l
    add hl, de
    nop
    nop
    ld [$4ac7], sp
    ld c, e
    ld b, e
    nop
    ld b, $33
    add hl, bc
    dec bc
    ccf
    add hl, bc
    inc c
    ld c, e
    add hl, bc
    dec c
    ld d, a
    add hl, bc
    ld c, $6f
    add hl, bc
    rrca
    adc l
    add hl, bc
    db $10
    ld a, [bc]
    ld [de], a
    rla
    db $10
    rst $38
    jp nc, $d841

    inc b
    ld [de], a
    inc d
    rrca
    rst $38
    db $d3
    ld b, d
    ret c

    dec b
    ld [de], a
    ld d, $08
    rst $38
    pop de
    ld b, e
    jp nc, $1208

    inc h
    dec bc
    rst $38
    jp nc, $d244

    add hl, bc
    ld [de], a
    ld h, $12
    rst $38
    db $d3
    ld b, l
    jp nc, Jump_000_120a

    ld a, $15
    rst $38
    jp nc, $d846

    ld b, $12
    ld c, b
    ld b, $ff
    db $d3
    ld b, a
    ret c

    rlca
    ld [de], a
    ld h, [hl]
    ld [de], a
    rst $38
    db $d3
    ld c, b
    ret c

    ld [$6612], sp
    add hl, bc
    rst $38
    jp nc, $d249

    dec bc
    ld [de], a
    ld a, d
    ld c, $ff
    ret nc

    ld c, d
    jp nc, $4e0c

    ld e, l
    ld [hl], h
    ld [hl], h
    ld e, l
    ld [hl], h
    ld c, [hl]
    ld h, l
    ld b, e
    ld b, e
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld c, [hl]
    ld h, l
    ld b, e
    ld b, e
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld d, c
    ld d, c
    ld d, c
    ld h, e
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    dec e
    ld e, $5d
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    daa
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld [hl], h
    ld e, [hl]
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    dec e
    ld e, $31
    ld h, l
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld [$6465], sp
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld [$6465], sp
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld [$6465], sp
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld h, l
    ld h, h
    ld sp, $6465
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld sp, $6508
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    dec e
    rra
    ld l, $64
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld [hl], h
    ld h, l
    ld b, e
    ld b, e
    ld h, h
    daa
    ld [hl], h
    ld c, l
    ld c, [hl]
    daa
    ld sp, $0831
    ld sp, $2731
    ld sp, $4e4d
    daa
    ld sp, $1f1d
    rra
    ld e, $27
    ld sp, $4e4d
    daa
    ld sp, $4365
    ld b, e
    ld h, h
    daa
    ld sp, $4e4d
    daa
    ld sp, $4365
    ld b, e
    ld h, h
    daa
    ld sp, $4e4d
    daa
    ld sp, $3131
    ld sp, $2731
    ld sp, $4e4d
    ld e, [hl]
    ld sp, $3131
    ld sp, $5e31
    ld sp, $4e4d
    ld [hl], a
    ld [hl], a
    ld sp, $7777
    ld sp, $7777
    ld c, l
    ld h, a
    rra
    ld e, $5d
    ld sp, $5d31
    dec e
    rra
    ld l, d
    jr jr_015_4e6b

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr jr_015_4e75

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr jr_015_4e7f

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr jr_015_4e89

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr jr_015_4e93

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de
    jr @+$45

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e
    add hl, de

jr_015_4e62:
    jr jr_015_4ea7

    ld h, h
    daa
    ld sp, $2731
    ld h, l
    ld b, e

jr_015_4e6b:
    add hl, de
    jr jr_015_4eb1

    ld h, h
    ld e, [hl]
    ld [$5e31], sp
    ld h, l
    ld b, e

jr_015_4e75:
    add hl, de
    jr @+$45

    ld h, h
    ld a, [de]
    ld a, [de]
    ld e, h
    ld a, [de]
    ld h, l
    ld b, e

jr_015_4e7f:
    add hl, de
    nop
    dec de
    ld a, [bc]
    ld bc, $714f
    ld e, l
    ld e, b
    ld e, l

jr_015_4e89:
    ld a, [bc]
    rlca
    ret nz

    ld c, l
    add sp, -$3a
    db $10
    inc d
    inc hl
    ld a, [bc]

jr_015_4e93:
    cp l
    ret z

    rra
    xor h
    ld b, c
    jr c, jr_015_4e62

    add hl, bc
    ld [hl-], a
    call c, $5263
    rst $00
    and d
    ld c, [hl]
    ld b, e
    ld bc, $0509
    nop

jr_015_4ea7:
    ld hl, sp+$01
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    rlca
    dec bc
    dec c
    rst $38

jr_015_4eb1:
    db $d3
    ld b, c
    rst $10
    ld [bc], a
    rlca
    dec c
    db $10
    rst $38
    jp nc, $d742

    inc bc
    ld [hl+], a
    dec e
    ld de, $d2ff
    ld b, e
    rst $10
    inc b
    ld [hl+], a
    rra
    ld [$d3ff], sp
    ld b, h
    rst $10
    dec b
    ld [hl+], a
    inc hl
    inc d
    rst $38
    pop de
    ld b, l
    rst $10
    ld b, $22
    ld de, $ff0d
    ret nc

    ld b, [hl]
    rst $10
    rlca
    ld [hl+], a
    cpl
    inc c
    rst $38
    jp nc, $da47

    inc c
    ld [hl+], a
    cpl
    rrca
    rst $38
    db $d3
    ld c, b
    jp c, $220d

    ld l, $0d
    rst $38
    pop de
    ld c, c
    rst $10
    ld [$3022], sp
    ld c, $ff
    ret nc

    ld c, d
    jp c, Jump_000_3b0e

    rst $00
    add hl, bc
    dec b
    jr z, @+$2e

    add hl, hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    jr z, @+$2e

    add hl, hl
    jr z, @+$2e

    add hl, hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    inc h
    ld d, a
    dec h
    inc h
    ld d, a
    dec h
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    jr jr_015_4f61

    ld b, e
    ld b, e
    add hl, de
    ld sp, $3131
    ld sp, $1831
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld [bc], a
    inc bc
    ld sp, $3131
    jr jr_015_4f75

    ld b, e
    ld l, e
    dec d
    ld sp, $3131
    ld [$1431], sp
    ld l, e
    ld l, e
    jr jr_015_4f82

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4f8c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4f96

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4fa0

    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f61:
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4faa

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4fb4

    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f75:
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_4fbe

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f82:
    add hl, de
    jr jr_015_4fc8

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f8c:
    add hl, de
    jr jr_015_4fd2

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4f96:
    add hl, de
    jr jr_015_4fdc

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fa0:
    add hl, de
    jr jr_015_4fe6

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4faa:
    add hl, de
    jr jr_015_4ff0

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fb4:
    add hl, de
    jr jr_015_4ffa

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fbe:
    add hl, de
    inc de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fc8:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fd2:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fdc:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4fe6:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4ff0:
    add hl, de
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_4ffa:
    add hl, de
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
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    inc de
    nop
    dec l
    ld a, [bc]
    ld a, l
    ld d, b
    db $f4
    ld e, [hl]
    db $db
    ld e, [hl]
    inc c
    nop
    add hl, sp
    ld b, e
    db $eb
    add $0a
    ld a, [bc]
    ld de, $7900
    rst $00
    ld [$4069], sp
    db $eb
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $31
    ld d, b
    ld b, e
    nop
    nop
    add hl, bc
    cpl
    inc e
    ld [$d2ff], sp
    ld b, c
    sub $07
    cpl
    dec e
    ld a, [bc]
    rst $38
    ret nc

    ld b, d
    sub $09
    ld [hl+], a
    inc hl
    ld c, $ff
    pop de
    ld b, e
    rst $10
    inc c
    ld [hl+], a
    ld [hl+], a
    db $10
    rst $38
    db $d3
    ld b, h
    ret c

    add hl, bc
    ld [hl+], a
    ld b, e
    inc d
    rst $38
    ret nc

    ld b, l
    rst $10
    dec c
    ld [hl+], a
    ld c, e
    add hl, bc
    rst $38
    db $d3
    ld b, [hl]
    rst $10
    ld c, $22
    ld c, e
    inc de
    rst $38
    jp nc, $d747

    rrca
    cpl
    inc a
    ld [de], a
    rst $38
    jp nc, $d648

    ld [$3d2f], sp
    dec d
    rst $38
    db $d3
    ld c, c
    sub $0a
    ld d, c
    ld h, e
    ld h, l
    ld h, h
    ld d, c
    ld d, c
    ld d, c
    ld h, d
    ld d, c
    ld d, c
    ld a, [bc]
    ld c, l
    ld h, l
    ld h, h
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld c, l
    ld h, l
    ld h, h
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    ld [hl], h
    ld a, [bc]
    ld [hl], h
    ld c, l
    ld h, l
    ld h, h
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld c, l
    ld h, l
    ld h, h
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld c, l
    ld h, l
    dec l
    rra
    rra
    rra
    ld h, a
    rra
    rra
    ld d, d
    ld c, a
    ld h, l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    jr jr_015_5105

    ld b, e
    ld h, a
    rra
    ld l, $43
    ld b, e
    ld b, e
    ld b, e
    inc d
    ld l, e
    ld l, e
    jr jr_015_5112

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_511c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_5126

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_5130

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_513a

    ld d, h
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_5144

    ld a, b
    ld a, b
    ld b, e
    ld b, e

jr_015_5105:
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    jr jr_015_514e

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5112:
    add hl, de
    jr jr_015_5158

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_511c:
    add hl, de
    jr jr_015_5162

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5126:
    add hl, de
    jr jr_015_516c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5130:
    add hl, de
    jr jr_015_5176

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_513a:
    add hl, de
    jr jr_015_5180

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5144:
    add hl, de
    jr jr_015_518a

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_514e:
    add hl, de
    jr jr_015_5194

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5158:
    add hl, de
    jr jr_015_519e

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5162:
    add hl, de
    jr jr_015_51a8

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_516c:
    add hl, de
    jr jr_015_51b2

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5176:
    add hl, de
    jr jr_015_51bc

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5180:
    add hl, de
    jr jr_015_51c6

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_518a:
    add hl, de
    jr jr_015_51d0

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5194:
    add hl, de
    jr jr_015_51da

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld d, h

jr_015_519e:
    add hl, de
    jr jr_015_51e4

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, b
    ld a, b

jr_015_51a8:
    add hl, de
    jr jr_015_51ee

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51b2:
    add hl, de
    jr jr_015_51f8

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51bc:
    add hl, de
    jr jr_015_5202

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51c6:
    add hl, de
    jr jr_015_520c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51d0:
    add hl, de
    jr jr_015_5216

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51da:
    add hl, de
    jr jr_015_5220

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51e4:
    add hl, de
    jr jr_015_522a

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51ee:
    add hl, de
    jr jr_015_5234

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_51f8:
    add hl, de
    jr jr_015_523e

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5202:
    add hl, de
    jr jr_015_5248

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_520c:
    add hl, de
    jr jr_015_5252

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5216:
    add hl, de
    jr jr_015_525c

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_015_5220:
    add hl, de
    jr @+$45

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld l, e

jr_015_522a:
    dec d
    jr jr_015_5270

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, e

jr_015_5234:
    ld b, e
    jr @+$45

    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    add hl, de
    ld b, e

jr_015_523e:
    ld b, e
    inc b
    ld c, $05
    add hl, bc
    rrca
    ld bc, $0f02
    rrca

jr_015_5248:
    inc c
    dec c
    rrca
    ld b, $0b
    rrca
    rlca
    dec a
    add hl, bc
    dec a

jr_015_5252:
    dec a
    dec bc
    dec bc
    rlca
    ld b, $0b
    dec bc
    dec bc
    inc l
    dec bc

jr_015_525c:
    dec de
    dec bc
    dec [hl]
    ld a, [$d12a]
    cp $04
    ret z

    call Call_015_547b
    ld hl, $d16a
    xor a
    ld [$cf91], a

Jump_015_526f:
    inc hl

jr_015_5270:
    ld a, [hl+]
    or [hl]
    jp z, Jump_015_5445

    push hl
    ld hl, $d057
    ld a, [$cf91]
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    pop hl
    jp z, Jump_015_5445

    ld de, $0010
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d001
    ld c, $05

jr_015_5295:
    ld a, [hl+]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    jr nc, jr_015_52a9

    dec de
    ld a, [de]
    inc a
    jr z, jr_015_52a5

    ld [de], a
    inc de
    jr jr_015_52a9

jr_015_52a5:
    dec a
    ld [de], a
    inc de
    ld [de], a

jr_015_52a9:
    dec c
    jr z, jr_015_52b0

    inc de
    inc de
    jr jr_015_5295

jr_015_52b0:
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, [$d007]
    ldh [$98], a
    ld a, [$cff2]
    ldh [$99], a
    call Call_000_38a5
    ld a, $07
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ld hl, $fff2
    add hl, de
    ld b, [hl]
    inc hl
    ld a, [$d358]
    cp b
    jr nz, jr_015_52e0

    ld b, [hl]
    ld a, [$d359]
    cp b
    ld a, $00
    jr z, jr_015_52e5

jr_015_52e0:
    call Call_015_54ae
    ld a, $01

jr_015_52e5:
    ld [$cf4c], a
    ld a, [$d056]
    dec a
    call nz, Call_015_54ae
    inc hl
    inc hl
    inc hl
    ld b, [hl]
    ldh a, [$98]
    ld [$cf4b], a
    add b
    ld [hl-], a
    ld b, [hl]
    ldh a, [$97]
    ld [$cf4a], a
    adc b
    ld [hl], a
    jr nc, jr_015_5307

    dec hl
    inc [hl]
    inc hl

jr_015_5307:
    inc hl
    push hl
    ld a, [$cf91]
    ld c, a
    ld b, $00
    ld hl, $d163
    add hl, bc
    ld a, [hl]
    ld [$d0b4], a
    call Call_000_132f
    ld d, $64
    ld hl, $4dc0
    ld b, $16
    call Call_000_3e84
    ldh a, [$96]
    ld b, a
    ldh a, [$97]
    ld c, a
    ldh a, [$98]
    ld d, a
    pop hl
    ld a, [hl-]
    sub d
    ld a, [hl-]
    sbc c
    ld a, [hl]
    sbc b
    jr c, jr_015_533d

    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl-], a
    dec hl

jr_015_533d:
    push hl
    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    ld hl, $54c6
    call Call_000_3c36
    xor a
    ld [$cc49], a
    call Call_000_1132
    pop hl
    ld bc, $0013
    add hl, bc
    push hl
    ld b, $16
    ld hl, $4d99
    call Call_000_3e84
    pop hl
    ld a, [hl]
    cp d
    jp z, Jump_015_5445

    ld a, [$d126]
    push af
    push hl
    ld a, d
    ld [$d126], a
    ld [hl], a
    ld bc, $ffdf
    add hl, bc
    ld a, [hl]
    ld [$d0b4], a
    ld [$d11d], a
    call Call_000_132f
    ld bc, $0023
    add hl, bc
    push hl
    ld a, [hl-]
    ld c, a
    ld b, [hl]
    push bc
    ld d, h
    ld e, l
    ld bc, $ffee
    add hl, bc
    ld b, $01
    call Call_000_392b
    pop bc
    pop hl
    ld a, [hl-]
    sub c
    ld c, a
    ld a, [hl]
    sbc b
    ld b, a
    ld de, $ffe0
    add hl, de
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, [$cc2f]
    ld b, a
    ld a, [$cf91]
    cp b
    jr nz, jr_015_53fc

    ld de, $d014
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld bc, $001f
    add hl, bc
    push hl
    ld de, $d021
    ld bc, $000b
    call Call_000_00b1
    pop hl
    ld a, [$d063]
    bit 3, a
    jr nz, jr_015_53d7

    ld de, $cd0f
    ld bc, $000b
    call Call_000_00b1

jr_015_53d7:
    xor a
    ld [$d11d], a
    ld hl, $6f25
    call Call_015_54c1
    ld hl, $6ea6
    call Call_015_54c1
    ld hl, $6fa5
    call Call_015_54c1
    ld hl, $4e25
    call Call_015_54c1
    ld hl, $7020
    call Call_015_54c1
    call Call_000_370f

jr_015_53fc:
    ld hl, $430a
    ld b, $3d
    ld d, $01
    call Call_000_3e84
    ld hl, $54f1
    call Call_000_3c36
    xor a
    ld [$cc49], a
    call Call_000_1132
    ld d, $01
    ld hl, $568a
    ld b, $04
    call Call_000_3e84
    call Call_000_3852
    call Call_000_371b
    xor a
    ld [$cc49], a
    ld a, [$d0b4]
    ld [$d11d], a
    ld a, $1a
    call Call_000_3eb4
    ld hl, $ccd3
    ld a, [$cf91]
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3eb4
    pop hl
    pop af
    ld [$d126], a

Jump_015_5445:
    ld a, [$d162]
    ld b, a
    ld a, [$cf91]
    inc a
    cp b
    jr z, jr_015_545f

    ld [$cf91], a
    ld bc, $002c
    ld hl, $d16a
    call Call_000_3a74
    jp Jump_015_526f


jr_015_545f:
    ld hl, $d057
    xor a
    ld [hl], a
    ld a, [$cc2f]
    ld c, a
    ld b, $01
    push bc
    ld a, $10
    call Call_000_3eb4
    ld hl, $ccf5
    xor a
    ld [hl], a
    pop bc
    ld a, $10
    jp Jump_000_3eb4


Call_015_547b:
    ld a, [$d057]
    ld b, a
    xor a
    ld c, $08
    ld d, $00

jr_015_5484:
    xor a
    srl b
    adc d
    ld d, a
    dec c
    jr nz, jr_015_5484

    cp $02
    ret c

    ld [$d11d], a
    ld hl, $d001
    ld c, $07

jr_015_5497:
    xor a
    ldh [$95], a
    ld a, [hl]
    ldh [$96], a
    ld a, [$d11d]
    ldh [$99], a
    ld b, $02
    call Call_000_38b2
    ldh a, [$98]
    ld [hl+], a
    dec c
    jr nz, jr_015_5497

    ret


Call_015_54ae:
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    ld c, a
    srl b
    rr c
    add c
    ldh [$98], a
    ldh a, [$97]
    adc b
    ldh [$97], a
    ret


Call_015_54c1:
    ld b, $0f
    jp Jump_000_3e84


    rla
    xor h
    ld a, d
    daa
    ld [$5bfa], sp
    call z, $df21
    ld d, h
    and a
    ret nz

    ld hl, $54ec
    ld a, [$cf4c]
    and a
    ret z

    ld hl, $54e8
    ret


    rla
    cp d
    ld a, d
    daa
    ld [$ec21], sp
    ld d, h
    ret


    rla
    bit 7, d
    daa
    rla
    ret c

    ld a, d
    daa
    ld d, b
    rla
    db $eb
    ld a, d
    daa
    dec bc
    ld d, b
    jp Jump_000_3c29


    rst $28
    inc hl
    rst $28
    inc hl

jr_015_54fe:
    ld [bc], a
    ld d, l
    rlca
    ld d, l
    rla
    ld d, a
    ld l, l
    jr z, jr_015_5557

    rla
    ld a, h
    ld l, l

jr_015_550a:
    jr z, @+$52

    call Call_000_3c29
    ld hl, $5539
    ld de, $551f
    ld a, [$d5f7]
    call Call_000_30fc
    ld [$d5f7], a
    ret


    or l
    ld sp, $31e8
    ld de, $9a32
    ld d, l
    sbc a
    ld d, l
    cp b
    ld d, l
    pop de
    ld d, l
    ld [$0355], a
    ld d, [hl]
    inc e
    ld d, [hl]
    dec [hl]
    ld d, [hl]
    ld c, [hl]
    ld d, [hl]
    ld h, a
    ld d, [hl]
    ld [bc], a

jr_015_553a:
    jr nz, jr_015_54fe

    rst $10
    xor c
    ld d, l
    or e
    ld d, l
    xor [hl]
    ld d, l
    xor [hl]
    ld d, l
    inc bc
    jr nc, jr_015_550a

    rst $10
    jp nz, $cc55

    ld d, l
    rst $00
    ld d, l
    rst $00
    ld d, l
    inc b

jr_015_5552:
    jr nz, @-$3c

    rst $10
    db $db
    ld d, l

jr_015_5557:
    push hl
    ld d, l
    ldh [rHDMA5], a
    ldh [rHDMA5], a
    dec b
    db $10
    jp nz, $f4d7

    ld d, l
    cp $55
    ld sp, hl
    ld d, l
    ld sp, hl
    ld d, l
    ld b, $40
    jp nz, Jump_000_0dd7

    ld d, [hl]
    rla
    ld d, [hl]
    ld [de], a
    ld d, [hl]
    ld [de], a
    ld d, [hl]
    rlca
    jr nc, jr_015_553a

    rst $10
    ld h, $56
    jr nc, @+$58

    dec hl
    ld d, [hl]
    dec hl
    ld d, [hl]
    ld [$c230], sp
    rst $10
    ccf
    ld d, [hl]
    ld c, c
    ld d, [hl]
    ld b, h
    ld d, [hl]
    ld b, h
    ld d, [hl]
    add hl, bc
    jr nz, jr_015_5552

    rst $10
    ld e, b
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld e, l
    ld d, [hl]
    ld e, l
    ld d, [hl]
    rst $38
    rla
    adc e
    ld l, l
    jr z, @+$52

    ld [$3921], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    rst $20
    ld l, l
    jr z, jr_015_55fe

    rla
    dec bc
    ld l, [hl]
    jr z, jr_015_5603

    rla
    rra
    ld l, [hl]
    jr z, @+$52

    ld [$4521], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld e, [hl]
    ld l, [hl]
    jr z, jr_015_5617

    rla
    sub c
    ld l, [hl]
    jr z, jr_015_561c

    rla
    and l
    ld l, [hl]
    jr z, @+$52

    ld [$5121], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [c], a
    ld l, [hl]
    jr z, jr_015_5630

    rla
    nop
    ld l, a
    jr z, jr_015_5635

    rla
    dec c
    ld l, a
    jr z, @+$52

    ld [$5d21], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], $6f
    jr z, jr_015_5649

    rla
    ld d, [hl]
    ld l, a
    jr z, jr_015_564e

jr_015_55fe:
    rla
    ld a, c
    ld l, a
    jr z, @+$52

jr_015_5603:
    ld [$6921], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    cp c
    ld l, a
    jr z, jr_015_5662

    rla
    db $e4
    ld l, a
    jr z, jr_015_5667

jr_015_5617:
    rla
    xor $6f
    jr z, jr_015_566c

jr_015_561c:
    ld [$7521], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec de
    ld [hl], b
    jr z, jr_015_567b

    rla
    dec sp
    ld [hl], b
    jr z, jr_015_5680

jr_015_5630:
    rla
    ld c, [hl]
    ld [hl], b
    jr z, @+$52

jr_015_5635:
    ld [$8121], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], l
    ld [hl], b
    jr z, jr_015_5694

    rla
    sub c
    ld [hl], b
    jr z, jr_015_5699

jr_015_5649:
    rla
    and h
    ld [hl], b
    jr z, jr_015_569e

jr_015_564e:
    ld [$8d21], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


jr_015_5658:
    rla
    db $d3
    ld [hl], b
    jr z, jr_015_56ad

    rla
    db $eb
    ld [hl], b
    jr z, jr_015_56b2

jr_015_5662:
    rla
    or $70
    jr z, jr_015_56b7

jr_015_5667:
    rla
    ld a, [de]
    ld [hl], c
    jr z, jr_015_56bc

jr_015_566c:
    call Call_000_3c29
    ld hl, $5691
    ld de, $567f
    ld a, [$d5f8]
    call Call_000_30fc

jr_015_567b:
    ld [$d5f8], a
    ret


    or l

jr_015_5680:
    ld sp, $31e8
    ld de, $9e32
    ld d, [hl]
    and e
    ld d, [hl]
    rst $28
    inc hl
    ld [$bc23], a
    ld d, [hl]
    pop bc
    ld d, [hl]
    ld [bc], a
    jr nc, jr_015_5658

jr_015_5694:
    rst $10
    xor l
    ld d, [hl]
    or a
    ld d, [hl]

jr_015_5699:
    or d
    ld d, [hl]
    or d
    ld d, [hl]
    rst $38

jr_015_569e:
    rla
    ld sp, $2871
    ld d, b
    ld [$9121], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


jr_015_56ad:
    rla
    ld e, [hl]
    ld [hl], c
    jr z, jr_015_5702

jr_015_56b2:
    rla
    ld a, a
    ld [hl], c
    jr z, jr_015_5707

jr_015_56b7:
    rla
    sbc e
    ld [hl], c
    jr z, jr_015_570c

jr_015_56bc:
    rla
    ldh [$71], a
    jr z, jr_015_5711

    rla
    ld sp, hl
    ld [hl], c
    jr z, jr_015_5716

    jp Jump_000_3c29


    bit 2, [hl]
    rla
    ld a, [de]
    ld [hl], d
    jr z, jr_015_5720

    call Call_000_3c29
    ld hl, $56ff
    ld de, $56e3
    ld a, [$d603]

jr_015_56dc:
    call Call_000_30fc
    ld [$d603], a
    ret


    or l
    ld sp, $31e8
    ld de, $6c32
    ld d, a
    ld [hl], d
    ld d, a
    ld a, b
    ld d, a
    ld a, [hl]
    ld d, a
    add h
    ld d, a
    adc d

jr_015_56f4:
    ld d, a
    sub b
    ld d, a
    sub [hl]
    ld d, a
    sbc h
    ld d, a
    rst $28
    inc hl
    dec l
    ld e, b
    ld bc, $ce30

jr_015_5702:
    rst $10
    and [hl]
    ld d, a
    or b
    ld d, a

jr_015_5707:
    xor e
    ld d, a
    xor e
    ld d, a
    ld [bc], a

jr_015_570c:
    jr nz, jr_015_56dc

    rst $10
    or l
    ld d, a

jr_015_5711:
    cp a
    ld d, a
    cp d
    ld d, a
    cp d

jr_015_5716:
    ld d, a
    inc bc
    ld b, b
    adc $d7
    call nz, $ce57
    ld d, a
    ret


jr_015_5720:
    ld d, a
    ret


    ld d, a
    inc b
    jr nz, jr_015_56f4

    rst $10
    db $d3
    ld d, a
    db $dd
    ld d, a
    ret c

    ld d, a
    ret c

    ld d, a
    dec b

jr_015_5730:
    jr nz, @-$30

    rst $10
    ld [c], a
    ld d, a
    db $ec
    ld d, a
    rst $20
    ld d, a
    rst $20
    ld d, a
    ld b, $30
    adc $d7
    pop af
    ld d, a
    ei
    ld d, a
    or $57
    or $57
    rlca
    ld b, b
    adc $d7
    nop
    ld e, b
    ld a, [bc]
    ld e, b
    dec b
    ld e, b
    dec b
    ld e, b
    ld [$ce20], sp
    rst $10
    rrca
    ld e, b
    add hl, de
    ld e, b
    inc d
    ld e, b
    inc d
    ld e, b
    add hl, bc
    jr nz, jr_015_5730

    rst $10
    ld e, $58
    jr z, jr_015_57bf

    inc hl
    ld e, b
    inc hl
    ld e, b
    rst $38
    ld [$ff21], sp
    ld d, [hl]
    jr jr_015_57a0

    ld [$0b21], sp
    ld d, a
    jr jr_015_57a0

    ld [$1721], sp
    ld d, a
    jr jr_015_57a0

    ld [$2321], sp
    ld d, a
    jr jr_015_57a0

    ld [$2f21], sp
    ld d, a
    jr jr_015_57a0

    ld [$3b21], sp
    ld d, a
    jr jr_015_57a0

    ld [$4721], sp
    ld d, a
    jr jr_015_57a0

    ld [$5321], sp
    ld d, a
    jr jr_015_57a0

    ld [$5f21], sp
    ld d, a

jr_015_57a0:
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ldh a, [$78]
    jr z, jr_015_57fb

    rla
    dec d
    ld a, c
    jr z, jr_015_5800

    rla
    daa
    ld a, c
    jr z, jr_015_5805

    rla
    ld e, [hl]
    ld a, c
    jr z, jr_015_580a

    rla
    add c
    ld a, c
    jr z, jr_015_580f

jr_015_57bf:
    rla
    sub l
    ld a, c
    jr z, jr_015_5814

    rla
    call nz, Call_000_2879
    ld d, b
    rla
    ldh a, [$79]
    jr z, jr_015_581e

    rla
    ld [bc], a
    ld a, d
    jr z, jr_015_5823

    rla
    inc hl
    ld a, d
    jr z, jr_015_5828

    rla
    ld b, c
    ld a, d
    jr z, jr_015_582d

    rla
    ld d, [hl]
    ld a, d
    jr z, jr_015_5832

    rla
    add e
    ld a, d
    jr z, @+$52

    rla
    and l
    ld a, d
    jr z, @+$52

    rla
    db $d3
    ld a, d
    jr z, jr_015_5841

    rla
    inc bc
    ld a, e
    jr z, jr_015_5846

    rla
    jr z, jr_015_5874

    jr z, @+$52

jr_015_57fb:
    rla
    dec [hl]
    ld a, e
    jr z, jr_015_5850

jr_015_5800:
    rla
    ld d, h
    ld a, e
    jr z, jr_015_5855

jr_015_5805:
    rla
    adc l
    ld a, e
    jr z, jr_015_585a

jr_015_580a:
    rla
    or b
    ld a, e
    jr z, jr_015_585f

jr_015_580f:
    rla
    push hl
    ld a, e
    jr z, jr_015_5864

jr_015_5814:
    rla
    rst $38
    ld a, e
    jr z, jr_015_5869

    rla
    inc e
    ld a, h
    jr z, jr_015_586e

jr_015_581e:
    rla
    nop
    ld b, b
    add hl, hl
    ld d, b

jr_015_5823:
    rla
    jr @+$42

    add hl, hl
    ld d, b

jr_015_5828:
    rla
    inc h
    ld b, b
    add hl, hl
    ld d, b

jr_015_582d:
    rla
    ld c, h
    ld b, b
    add hl, hl
    ld d, b

jr_015_5832:
    call Call_000_3c29
    ld hl, $5865
    ld de, $5845
    ld a, [$d619]
    call Call_000_30fc

jr_015_5841:
    ld [$d619], a
    ret


    or l

jr_015_5846:
    ld sp, $31e8
    ld de, $de32

jr_015_584c:
    ld e, b
    rst $30
    ld e, b
    db $10

jr_015_5850:
    ld e, c
    add hl, hl
    ld e, c
    ld b, d
    ld e, c

jr_015_5855:
    ld e, e
    ld e, c
    ld [hl], h

jr_015_5858:
    ld e, c
    adc l

jr_015_585a:
    ld e, c
    and [hl]
    ld e, c
    cp a
    ld e, c

jr_015_585f:
    ret c

    ld e, c
    db $dd
    ld e, c
    ld [c], a

jr_015_5864:
    ld e, c
    ld bc, $d820
    rst $10

jr_015_5869:
    add sp, $58
    ld a, [c]
    ld e, b
    db $ed

jr_015_586e:
    ld e, b
    db $ed
    ld e, b
    ld [bc], a
    jr nz, jr_015_584c

jr_015_5874:
    rst $10
    ld bc, $0b59
    ld e, c
    ld b, $59
    ld b, $59
    inc bc
    jr nz, jr_015_5858

    rst $10
    ld a, [de]
    ld e, c
    inc h
    ld e, c
    rra
    ld e, c
    rra
    ld e, c
    inc b
    jr nz, jr_015_5864

    rst $10
    inc sp
    ld e, c
    dec a
    ld e, c
    jr c, jr_015_58ec

    jr c, jr_015_58ee

    dec b
    ld b, b
    ret c

    rst $10
    ld c, h
    ld e, c
    ld d, [hl]
    ld e, c
    ld d, c
    ld e, c
    ld d, c

jr_015_58a0:
    ld e, c
    ld b, $20
    ret c

    rst $10
    ld h, l
    ld e, c
    ld l, a
    ld e, c
    ld l, d
    ld e, c
    ld l, d
    ld e, c
    rlca
    ld b, b
    ret c

    rst $10
    ld a, [hl]
    ld e, c
    adc b
    ld e, c
    add e
    ld e, c
    add e
    ld e, c
    ld [$d820], sp
    rst $10
    sub a
    ld e, c
    and c
    ld e, c
    sbc h
    ld e, c
    sbc h
    ld e, c
    add hl, bc
    jr nz, jr_015_58a0

    rst $10
    or b
    ld e, c
    cp d
    ld e, c
    or l
    ld e, c
    or l
    ld e, c
    ld a, [bc]
    ld b, b
    ret c

    rst $10
    ret


    ld e, c
    db $d3
    ld e, c
    adc $59
    adc $59
    rst $38
    ld [$6521], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc h
    ld c, d
    add hl, hl

jr_015_58ec:
    ld d, b
    rla

jr_015_58ee:
    ld b, c
    ld c, d
    add hl, hl
    ld d, b
    rla
    ld d, [hl]
    ld c, d
    add hl, hl
    ld d, b
    ld [$7121], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add c
    ld c, d
    add hl, hl
    ld d, b
    rla
    sbc l
    ld c, d
    add hl, hl
    ld d, b
    rla
    xor e
    ld c, d
    add hl, hl
    ld d, b
    ld [$7d21], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $dd
    ld c, d
    add hl, hl
    ld d, b
    rla
    db $fd
    ld c, d
    add hl, hl
    ld d, b
    rla
    ld a, [bc]
    ld c, e
    add hl, hl
    ld d, b
    ld [$8921], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld a, [hl-]
    ld c, e
    add hl, hl
    ld d, b
    rla
    ld l, b
    ld c, e
    add hl, hl
    ld d, b
    rla
    ld a, a
    ld c, e
    add hl, hl
    ld d, b
    ld [$9521], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    or b
    ld c, e
    add hl, hl
    ld d, b
    rla
    ret nc

    ld c, e
    add hl, hl
    ld d, b
    rla
    pop hl
    ld c, e
    add hl, hl
    ld d, b
    ld [$a121], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    rlca
    ld c, h
    add hl, hl
    ld d, b
    rla
    ld [hl+], a
    ld c, h
    add hl, hl
    ld d, b
    rla
    inc [hl]
    ld c, h
    add hl, hl
    ld d, b
    ld [$ad21], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld d, h
    ld c, h
    add hl, hl
    ld d, b
    rla
    ld l, [hl]
    ld c, h
    add hl, hl
    ld d, b
    rla
    add l
    ld c, h
    add hl, hl
    ld d, b
    ld [$b921], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    or a
    ld c, h
    add hl, hl
    ld d, b
    rla
    push de
    ld c, h
    add hl, hl
    ld d, b
    rla
    add sp, $4c
    add hl, hl
    ld d, b
    ld [$c521], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld hl, $294d
    ld d, b
    rla
    add hl, sp
    ld c, l
    add hl, hl
    ld d, b
    rla
    ld d, b
    ld c, l
    add hl, hl
    ld d, b
    ld [$d121], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld e, e
    ld c, l
    add hl, hl
    ld d, b
    rla
    ld a, b
    ld c, l
    add hl, hl
    ld d, b
    rla
    add a
    ld c, l
    add hl, hl
    ld d, b
    rla
    cp b
    ld c, l
    add hl, hl
    ld d, b
    rla
    push hl
    ld c, l
    add hl, hl
    ld d, b
    rla
    ld [hl+], a
    ld c, [hl]
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $5a16
    ld de, $59fa
    ld a, [$d61a]
    call Call_000_30fc
    ld [$d61a], a
    ret


    or l
    ld sp, $31e8
    ld de, $8f32
    ld e, d
    xor b
    ld e, d
    pop bc
    ld e, d
    jp c, $f35a

    ld e, d
    inc c
    ld e, e
    dec h
    ld e, e
    ld a, $5b
    ld d, a
    ld e, e
    ld [hl], b
    ld e, e
    adc c
    ld e, e
    ld bc, $da20
    rst $10
    sbc c
    ld e, d
    and e
    ld e, d
    sbc [hl]
    ld e, d
    sbc [hl]
    ld e, d
    ld [bc], a

jr_015_5a23:
    jr nz, @-$24

    rst $10
    or d
    ld e, d
    cp h
    ld e, d
    or a
    ld e, d
    or a
    ld e, d
    inc bc
    ld b, b
    jp c, $cbd7

    ld e, d
    push de
    ld e, d
    ret nc

    ld e, d
    ret nc

    ld e, d
    inc b
    jr nc, @-$24

    rst $10
    db $e4
    ld e, d
    xor $5a
    jp hl


    ld e, d
    jp hl


    ld e, d
    dec b
    jr nc, jr_015_5a23

    rst $10
    db $fd
    ld e, d
    rlca
    ld e, e
    ld [bc], a
    ld e, e
    ld [bc], a
    ld e, e
    ld b, $40
    jp c, Jump_000_16d7

    ld e, e
    jr nz, jr_015_5ab5

    dec de
    ld e, e
    dec de
    ld e, e
    rlca
    ld b, b
    jp c, Jump_000_2fd7

    ld e, e
    add hl, sp
    ld e, e
    inc [hl]
    ld e, e
    inc [hl]
    ld e, e
    ld [$da40], sp
    rst $10
    ld c, b
    ld e, e
    ld d, d
    ld e, e
    ld c, l
    ld e, e
    ld c, l
    ld e, e
    add hl, bc
    jr nc, @-$24

    rst $10
    ld h, c
    ld e, e
    ld l, e
    ld e, e
    ld h, [hl]
    ld e, e
    ld h, [hl]
    ld e, e
    ld a, [bc]
    ld b, b
    jp c, Jump_015_7ad7

    ld e, e
    add h
    ld e, e
    ld a, a
    ld e, e
    ld a, a
    ld e, e
    rst $38
    ld [$1621], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld b, h
    ld c, [hl]
    add hl, hl
    ld d, b
    rla
    db $76
    ld c, [hl]
    add hl, hl
    ld d, b
    rla
    adc b
    ld c, [hl]
    add hl, hl
    ld d, b
    ld [$2221], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add $4e

jr_015_5ab5:
    add hl, hl
    ld d, b
    rla
    ldh a, [$4e]
    add hl, hl
    ld d, b
    rla
    nop
    ld c, a
    add hl, hl
    ld d, b
    ld [$2e21], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl+], a
    ld c, a
    add hl, hl
    ld d, b
    rla
    ld h, b
    ld c, a
    add hl, hl
    ld d, b
    rla
    ld l, [hl]
    ld c, a
    add hl, hl
    ld d, b
    ld [$3a21], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    xor c
    ld c, a
    add hl, hl
    ld d, b
    rla
    push de
    ld c, a
    add hl, hl
    ld d, b
    rla
    db $eb
    ld c, a
    add hl, hl
    ld d, b
    ld [$4621], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [$2950], sp
    ld d, b
    rla
    cpl
    ld d, b
    add hl, hl
    ld d, b
    rla
    ld b, d
    ld d, b
    add hl, hl
    ld d, b
    ld [$5221], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, a
    ld d, b
    add hl, hl
    ld d, b
    rla
    sub c
    ld d, b
    add hl, hl
    ld d, b
    rla
    sbc l
    ld d, b
    add hl, hl
    ld d, b
    ld [$5e21], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    pop de
    ld d, b
    add hl, hl
    ld d, b
    rla
    ld sp, hl
    ld d, b
    add hl, hl
    ld d, b
    rla
    db $10
    ld d, c
    add hl, hl
    ld d, b
    ld [$6a21], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec [hl]
    ld d, c
    add hl, hl
    ld d, b
    rla
    ld e, c
    ld d, c
    add hl, hl
    ld d, b
    rla
    ld h, [hl]
    ld d, c
    add hl, hl
    ld d, b
    ld [$7621], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add h
    ld d, c
    add hl, hl
    ld d, b
    rla
    or b
    ld d, c
    add hl, hl
    ld d, b
    rla
    cp e
    ld d, c
    add hl, hl
    ld d, b
    ld [$8221], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc b
    ld d, d
    add hl, hl
    ld d, b
    rla
    rra
    ld d, d
    add hl, hl
    ld d, b
    rla
    inc l
    ld d, d
    add hl, hl
    ld d, b
    rla
    ld d, a
    ld d, d
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $5bc7
    ld de, $5ba1
    ld a, [$d61b]
    call Call_000_30fc
    ld [$d61b], a
    ret


    or l
    ld sp, $31e8
    ld de, $4032
    ld e, h
    ld e, c
    ld e, h
    ld [hl], d
    ld e, h
    adc e
    ld e, h
    and h
    ld e, h
    cp l
    ld e, h
    sub $5c
    rst $28
    ld e, h
    ld [$215d], sp
    ld e, l
    ld a, [hl-]
    ld e, l
    ccf
    ld e, l
    ld b, h
    ld e, l
    ld c, c
    ld e, l
    ld c, [hl]
    ld e, l
    ld d, e
    ld e, l
    ld bc, $e030
    rst $10
    ld c, d
    ld e, h
    ld d, h
    ld e, h
    ld c, a
    ld e, h
    ld c, a
    ld e, h
    ld [bc], a
    ld b, b
    ldh [$d7], a
    ld h, e
    ld e, h
    ld l, l

jr_015_5bda:
    ld e, h
    ld l, b
    ld e, h
    ld l, b
    ld e, h
    inc bc
    ld b, b
    ldh [$d7], a
    ld a, h
    ld e, h
    add [hl]
    ld e, h
    add c
    ld e, h
    add c
    ld e, h
    inc b
    ld b, b
    ldh [$d7], a
    sub l
    ld e, h
    sbc a
    ld e, h
    sbc d
    ld e, h
    sbc d
    ld e, h
    dec b
    jr nc, jr_015_5bda

    rst $10
    xor [hl]
    ld e, h
    cp b
    ld e, h
    or e
    ld e, h
    or e
    ld e, h
    ld b, $20
    ldh [$d7], a
    rst $00
    ld e, h
    pop de

jr_015_5c0a:
    ld e, h
    call z, $cc5c
    ld e, h
    rlca
    ld b, b
    ldh [$d7], a
    ldh [$5c], a
    ld [$e55c], a
    ld e, h
    push hl
    ld e, h
    ld [$e020], sp
    rst $10
    ld sp, hl
    ld e, h
    inc bc
    ld e, l
    cp $5c
    cp $5c
    add hl, bc
    jr nc, jr_015_5c0a

    rst $10
    ld [de], a
    ld e, l
    inc e
    ld e, l
    rla
    ld e, l
    rla
    ld e, l
    ld a, [bc]
    ld b, b
    ldh [$d7], a
    dec hl
    ld e, l
    dec [hl]
    ld e, l
    jr nc, jr_015_5c9a

    jr nc, jr_015_5c9c

    rst $38
    ld [$c721], sp
    ld e, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    adc e
    ld e, c
    add hl, hl
    ld d, b
    rla
    xor [hl]
    ld e, c
    add hl, hl
    ld d, b
    rla
    cp e
    ld e, c
    add hl, hl
    ld d, b
    ld [$d321], sp
    ld e, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add sp, $59
    add hl, hl
    ld d, b
    rla
    ld [bc], a
    ld e, d
    add hl, hl
    ld d, b
    rla
    add hl, bc
    ld e, d
    add hl, hl
    ld d, b
    ld [$df21], sp
    ld e, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, $5a
    add hl, hl
    ld d, b
    rla
    ld b, a
    ld e, d
    add hl, hl
    ld d, b
    rla
    ld e, b
    ld e, d
    add hl, hl
    ld d, b
    ld [$eb21], sp
    ld e, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], c
    ld e, d
    add hl, hl
    ld d, b

jr_015_5c9a:
    rla
    adc [hl]

jr_015_5c9c:
    ld e, d
    add hl, hl
    ld d, b
    rla
    sub a
    ld e, d
    add hl, hl
    ld d, b
    ld [$f721], sp
    ld e, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    or a
    ld e, d
    add hl, hl
    ld d, b
    rla
    db $d3
    ld e, d
    add hl, hl
    ld d, b
    rla
    ld [c], a
    ld e, d
    add hl, hl
    ld d, b
    ld [$0321], sp
    ld e, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [de], a
    ld e, e
    add hl, hl
    ld d, b
    rla
    dec l
    ld e, e
    add hl, hl
    ld d, b
    rla
    jr c, jr_015_5d2f

    add hl, hl
    ld d, b
    ld [$0f21], sp
    ld e, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, b
    ld e, e
    add hl, hl
    ld d, b
    rla
    add e
    ld e, e
    add hl, hl
    ld d, b
    rla
    sbc b
    ld e, e
    add hl, hl
    ld d, b
    ld [$1b21], sp
    ld e, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    or [hl]
    ld e, e
    add hl, hl
    ld d, b
    rla
    jp $295b


    ld d, b
    rla
    call $295b
    ld d, b
    ld [$2721], sp
    ld e, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld a, [c]
    ld e, e
    add hl, hl
    ld d, b
    rla
    ld c, $5c
    add hl, hl
    ld d, b
    rla
    ld d, $5c
    add hl, hl
    ld d, b
    ld [$3321], sp
    ld e, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add hl, sp
    ld e, h
    add hl, hl

jr_015_5d2f:
    ld d, b
    rla
    ld d, h
    ld e, h
    add hl, hl
    ld d, b
    rla
    ld l, b
    ld e, h
    add hl, hl
    ld d, b
    rla
    add e
    ld e, h
    add hl, hl
    ld d, b
    rla
    or c
    ld e, h
    add hl, hl
    ld d, b
    rla
    ld [de], a
    ld e, l
    add hl, hl
    ld d, b
    rla
    ld e, e
    ld e, l
    add hl, hl
    ld d, b
    rla
    add c
    ld e, l
    add hl, hl
    ld d, b
    rla
    cp h
    ld e, l
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $5d87
    ld de, $5d6b
    ld a, [$d61c]
    call Call_000_30fc
    ld [$d61c], a
    ret


    or l
    ld sp, $31e8
    ld de, $0032
    ld e, [hl]
    ld b, $5e
    inc c
    ld e, [hl]
    ld [de], a
    ld e, [hl]
    jr jr_015_5dd9

    ld e, $5e
    inc h
    ld e, [hl]
    ld a, [hl+]
    ld e, [hl]
    jr nc, jr_015_5de1

    ld [hl], $5e
    sub $5e
    ld bc, $e440
    rst $10
    ld b, b
    ld e, [hl]
    ld c, d
    ld e, [hl]
    ld b, l
    ld e, [hl]
    ld b, l
    ld e, [hl]
    ld [bc], a
    ld b, b
    db $e4
    rst $10
    ld c, a
    ld e, [hl]
    ld e, c
    ld e, [hl]
    ld d, h
    ld e, [hl]
    ld d, h
    ld e, [hl]
    inc bc
    jr nc, @-$1a

    rst $10
    ld e, [hl]
    ld e, [hl]
    ld l, b
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld h, e
    ld e, [hl]
    inc b
    ld b, b
    db $e4
    rst $10
    ld l, l
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld [hl], d
    ld e, [hl]
    ld [hl], d

jr_015_5db6:
    ld e, [hl]
    dec b
    ld b, b
    db $e4
    rst $10
    ld a, h
    ld e, [hl]
    add [hl]
    ld e, [hl]
    add c
    ld e, [hl]
    add c
    ld e, [hl]
    ld b, $40
    db $e4
    rst $10
    adc e
    ld e, [hl]
    sub l
    ld e, [hl]
    sub b
    ld e, [hl]
    sub b
    ld e, [hl]
    rlca
    jr nc, jr_015_5db6

    rst $10
    sbc d
    ld e, [hl]
    and h
    ld e, [hl]
    sbc a
    ld e, [hl]

jr_015_5dd9:
    sbc a
    ld e, [hl]
    ld [$e440], sp
    rst $10
    xor c
    ld e, [hl]

jr_015_5de1:
    or e
    ld e, [hl]
    xor [hl]
    ld e, [hl]
    xor [hl]
    ld e, [hl]
    add hl, bc
    ld b, b
    db $e4
    rst $10
    cp b
    ld e, [hl]
    jp nz, $bd5e

    ld e, [hl]
    cp l
    ld e, [hl]
    ld a, [bc]
    ld b, b
    db $e4
    rst $10
    rst $00
    ld e, [hl]
    pop de
    ld e, [hl]
    call z, $cc5e
    ld e, [hl]
    rst $38
    ld [$8721], sp
    ld e, l
    jr jr_015_5e3a

    ld [$9321], sp
    ld e, l
    jr jr_015_5e3a

    ld [$9f21], sp
    ld e, l
    jr jr_015_5e3a

    ld [$ab21], sp
    ld e, l
    jr jr_015_5e3a

    ld [$b721], sp
    ld e, l
    jr jr_015_5e3a

    ld [$c321], sp
    ld e, l
    jr jr_015_5e3a

    ld [$cf21], sp
    ld e, l
    jr jr_015_5e3a

    ld [$db21], sp
    ld e, l
    jr jr_015_5e3a

    ld [$e721], sp
    ld e, l
    jr jr_015_5e3a

    ld [$f321], sp
    ld e, l

jr_015_5e3a:
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec h
    ld e, a
    add hl, hl
    ld d, b
    rla
    ld b, [hl]
    ld e, a
    add hl, hl
    ld d, b
    rla
    ld d, [hl]
    ld e, a
    add hl, hl
    ld d, b
    rla
    ld a, c
    ld e, a
    add hl, hl
    ld d, b
    rla
    sbc e
    ld e, a
    add hl, hl
    ld d, b
    rla
    xor a
    ld e, a
    add hl, hl
    ld d, b
    rla
    ret


    ld e, a
    add hl, hl
    ld d, b
    rla
    db $eb
    ld e, a
    add hl, hl
    ld d, b
    rla
    ld hl, sp+$5f
    add hl, hl
    ld d, b
    rla
    ld d, $60
    add hl, hl
    ld d, b
    rla
    ld sp, $2960
    ld d, b
    rla
    jr c, jr_015_5eda

    add hl, hl
    ld d, b
    rla
    ld d, h
    ld h, b
    add hl, hl
    ld d, b
    rla
    add d
    ld h, b
    add hl, hl
    ld d, b
    rla
    adc c
    ld h, b
    add hl, hl
    ld d, b
    rla
    xor c
    ld h, b
    add hl, hl
    ld d, b
    rla
    rst $00
    ld h, b
    add hl, hl
    ld d, b
    rla
    ret c

    ld h, b
    add hl, hl
    ld d, b
    rla
    ld a, [$2960]
    ld d, b
    rla
    ld l, $61
    add hl, hl
    ld d, b
    rla
    dec sp
    ld h, c
    add hl, hl
    ld d, b
    rla
    ld l, e
    ld h, c
    add hl, hl
    ld d, b
    rla
    adc l
    ld h, c
    add hl, hl
    ld d, b
    rla
    sub a
    ld h, c
    add hl, hl
    ld d, b
    rla
    ret


    ld h, c
    add hl, hl
    ld d, b
    rla
    add sp, $61
    add hl, hl
    ld d, b
    rla
    ld sp, hl
    ld h, c
    add hl, hl
    ld d, b
    rla
    rla
    ld h, d
    add hl, hl
    ld d, b
    rla
    inc sp
    ld h, d
    add hl, hl
    ld d, b
    rla
    ld b, h
    ld h, d
    add hl, hl
    ld d, b
    rla
    db $76
    ld h, d
    add hl, hl

jr_015_5eda:
    ld d, b
    call Call_000_3c29
    ld hl, $5f06
    ld de, $5eee
    ld a, [$d61d]
    call Call_000_30fc
    ld [$d61d], a
    ret


    or l
    ld sp, $31e8
    ld de, $7332
    ld e, a
    ld a, l
    ld e, a
    add a
    ld e, a
    sub c
    ld e, a
    sbc e
    ld e, a
    and l
    ld e, a
    xor a
    ld e, a
    cp c
    ld e, a
    jp Jump_000_015f


    nop
    add sp, -$29
    call $d75f
    ld e, a
    jp nc, $d25f

    ld e, a
    ld [bc], a
    nop
    add sp, -$29
    call c, $e65f
    ld e, a
    pop hl
    ld e, a
    pop hl
    ld e, a
    inc bc
    ld b, b
    add sp, -$29
    db $eb
    ld e, a
    push af
    ld e, a
    ldh a, [$5f]
    ldh a, [$5f]
    inc b
    ld b, b
    add sp, -$29
    ld a, [$045f]
    ld h, b
    rst $38
    ld e, a
    rst $38
    ld e, a
    dec b
    ld b, b
    add sp, -$29
    add hl, bc
    ld h, b
    inc de
    ld h, b
    ld c, $60
    ld c, $60
    ld b, $40
    add sp, -$29
    jr jr_015_5fa8

    ld [hl+], a
    ld h, b
    dec e
    ld h, b
    dec e
    ld h, b
    rlca
    jr nc, @-$16

    rst $10
    daa
    ld h, b
    ld sp, $2c60
    ld h, b
    inc l
    ld h, b
    ld [$e800], sp
    rst $10
    ld [hl], $60
    ld b, b
    ld h, b
    dec sp
    ld h, b
    dec sp
    ld h, b
    add hl, bc
    nop
    add sp, -$29
    ld b, l
    ld h, b
    ld c, a
    ld h, b
    ld c, d
    ld h, b
    ld c, d
    ld h, b
    rst $38
    ld [$0621], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$1221], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$1e21], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$2a21], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$3621], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$4221], sp

jr_015_5fa8:
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$4e21], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$5a21], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$6621], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld a, [c]
    ld h, l
    add hl, hl
    ld d, b
    rla
    inc e
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    inc hl
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    ld b, b
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    ld h, h
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    ld [hl], h
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    sub h
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    cp b
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    cp a
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    jp c, $2966

    ld d, b
    rla
    ld sp, hl
    ld h, [hl]
    add hl, hl
    ld d, b
    rla
    ld b, $67
    add hl, hl
    ld d, b
    rla
    add hl, sp
    ld h, a
    add hl, hl
    ld d, b
    rla
    ld d, a
    ld h, a
    add hl, hl
    ld d, b
    rla
    ld h, a
    ld h, a
    add hl, hl
    ld d, b
    rla
    add h
    ld h, a
    add hl, hl
    ld d, b
    rla
    xor b
    ld h, a
    add hl, hl
    ld d, b
    rla
    ret nz

    ld h, a
    add hl, hl
    ld d, b
    rla
    db $fd
    ld h, a
    add hl, hl
    ld d, b
    rla
    ld e, $68
    add hl, hl
    ld d, b
    rla
    inc l
    ld l, b
    add hl, hl
    ld d, b
    rla
    ld b, l
    ld l, b
    add hl, hl
    ld d, b
    rla
    ld h, l
    ld l, b
    add hl, hl
    ld d, b
    rla
    ld a, [hl]
    ld l, b
    add hl, hl
    ld d, b
    rla
    xor a
    ld l, b
    add hl, hl
    ld d, b
    rla
    pop de
    ld l, b
    add hl, hl
    ld d, b
    rla
    jp hl


    ld l, b
    add hl, hl
    ld d, b
    ld [$0404], sp
    ccf
    ld d, d
    ld h, e
    ld h, b
    ld h, b
    ld h, b
    nop
    cp a
    ld h, b
    jp Jump_000_3c29


    ld h, l
    ld h, b
    ld [$27fa], sp
    rst $10
    bit 3, a
    jr nz, jr_015_6098

    ld hl, $60a1
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_015_6093

    ld bc, $4c01
    call Call_000_3e3f
    jr nc, jr_015_608e

    ld hl, $d727
    set 3, [hl]
    ld hl, $60a6
    jr jr_015_609b

jr_015_608e:
    ld hl, $60ba
    jr jr_015_609b

jr_015_6093:
    ld hl, $60b0
    jr jr_015_609b

jr_015_6098:
    ld hl, $60b5

jr_015_609b:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    add a
    ld e, [hl]
    dec hl
    ld d, b
    rla
    bit 3, [hl]
    dec hl
    dec bc
    rla
    dec de
    ld e, a
    dec hl
    ld d, b
    rla
    ld a, b
    ld e, a
    dec hl
    ld d, b
    rla
    sbc c
    ld e, a
    dec hl
    ld d, b
    rla
    jp $2b5f


    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [$07ff], sp
    inc bc
    ld [$00ff], sp
    ld bc, $0827
    ld b, $ff
    db $d3
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [de], a
    inc b
    ld a, [bc]
    jr c, jr_015_613f

    add sp, $60
    push hl
    ld h, b
    nop
    ld bc, $c361
    add hl, hl
    inc a
    ld [hl], c
    inc hl
    ld a, l
    inc hl
    ld a, [c]
    ld h, b
    rst $30
    ld h, b
    db $fc
    ld h, b
    rla
    ld [c], a
    ld h, b
    dec hl
    ld d, b
    rla
    add hl, hl
    ld h, c
    dec hl
    ld d, b
    rla
    ld d, e
    ld h, c
    dec hl
    ld d, b
    rrca
    inc bc
    ld bc, $040c
    ld a, d
    ld bc, $0110
    ld a, h
    ld bc, $0001
    ld a, a
    ld bc, $0e01
    dec b
    inc b
    ld h, $07
    add hl, bc
    rst $38
    ret nc

    ld bc, $0726
    ld a, [bc]
    rst $38
    ret nc

    ld [bc], a
    ld a, [bc]
    add hl, bc
    rla
    rst $38
    rst $38
    inc bc
    dec c
    ld [$fe12], sp
    ld bc, $ff04
    add $01
    inc c
    ld bc, $01c7
    db $10
    ld sp, hl
    add $01
    ld bc, $0d0c
    jr @+$1b

    ld bc, $0301

jr_015_613f:
    dec h
    ld [bc], a
    ld bc, $0b0b
    inc d
    rla
    dec bc
    ld a, [de]
    ld a, [de]
    dec bc
    ld a, [de]
    ld a, [de]
    dec bc
    dec bc
    dec d
    ld d, $0b
    ld e, $1e
    dec bc
    ld e, $1e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec c
    inc b
    inc b
    ld c, a
    ld d, d
    ld l, a
    ld h, c
    ld l, h
    ld h, c
    nop
    ld de, $c362
    add hl, hl
    inc a
    ld [hl], c
    ld h, c
    ld [$27fa], sp
    rst $10
    bit 4, a
    jr nz, jr_015_61a4

    ld hl, $61ad
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_015_619f

    ld bc, $4d01
    call Call_000_3e3f
    jr nc, jr_015_619a

    ld hl, $d727
    set 4, [hl]
    ld hl, $61b2
    jr jr_015_61a7

jr_015_619a:
    ld hl, $620c
    jr jr_015_61a7

jr_015_619f:
    ld hl, $6202
    jr jr_015_61a7

jr_015_61a4:
    ld hl, $6207

jr_015_61a7:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld a, c
    ld d, h
    inc l

jr_015_61b1:
    ld d, b
    rla
    call z, Call_000_2c54
    dec bc
    ld d, b
    ld d, c
    jp nz, Jump_015_7fd8

    cp d
    cp a
    ld c, a
    or l
    call nz, $c9ba
    ld a, a
    xor b
    sbc l
    xor e
    ld a, a
    jr nc, jr_015_61b1

    ld d, c
    call $b23e
    jp nz, $2bd8

    or l
    jp z, $894f

    add c
    add [hl]
    xor e
    rlca
    cp h
    or [hl]
    ld a, a
    jp nz, Jump_015_7fda

    push bc
    sbc $30
    ld h, $4f
    cp d
    ret


    ld a, a
    or d
    or d
    jp nz, $2bd8

    or l
    push bc
    rst $10
    ld c, a
    db $d3
    rst $18
    call nz, $b27f
    or d
    db $d3
    sbc $26
    ld a, a
    jp nz, $d9da

    sbc $2c
    ldh [$e7], a
    ld d, a
    rla
    dec de
    ld d, l
    inc l
    ld d, b
    rla
    inc a
    ld d, l
    inc l
    ld d, b
    rla
    ld h, [hl]
    ld d, l
    inc l
    ld d, b
    inc c
    inc bc
    nop
    ld [bc], a
    ld [$07ff], sp
    ld [bc], a
    rlca
    rst $38
    rlca
    inc bc
    rlca
    rst $38
    nop
    ld bc, $0727
    add hl, bc
    rst $38
    db $d3
    ld bc, $c6f4
    nop
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    ccf
    ld d, d
    ld b, d
    ld h, d
    ccf
    ld h, d
    nop
    adc e
    ld h, h
    jp Jump_000_3c29


    ld b, h
    ld h, d
    ld [$eccd], sp
    ld [hl], $fa
    ld b, a
    jp c, $c2a7

    jp hl


    ld h, d
    ld hl, $6441
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    ld hl, $646d
    jp nz, Jump_015_643b

    ld a, [$d162]
    dec a
    ld hl, $6477
    jp z, Jump_015_643b

    ld hl, $6446
    call Call_000_3c36
    xor a
    ld [$cfca], a
    ld [$d07c], a
    ld [$cc35], a
    call Call_000_11c8
    push af
    call Call_000_3dd8
    call Call_000_3dc2
    call Call_000_1e6f
    pop af
    ld hl, $6469
    jp c, Jump_015_643b

    ld hl, $5759
    ld b, $08
    call Call_000_3e84
    ld hl, $647c
    jp c, Jump_015_643b

    xor a
    ld [$cc2b], a
    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    ld hl, $644b
    call Call_000_3c36
    ld a, $01
    ld [$da47], a
    ld a, $03
    ld [$cf94], a
    call Call_000_3a59
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    push af
    xor a
    ld [$cf94], a
    call Call_000_3914
    pop af
    jr c, jr_015_62d9

    ld a, [$cf90]
    call Call_000_118b
    jr jr_015_62e3

jr_015_62d9:
    ld e, $1b
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84

jr_015_62e3:
    ld hl, $6450
    jp Jump_015_643b


    xor a
    ld hl, $da48
    call Call_000_139a
    ld a, $03
    ld [$cc49], a
    call Call_000_1132
    ld hl, $4d99
    ld b, $16
    call Call_000_3e84
    ld a, d
    cp $64
    jr c, jr_015_631d

    ld d, $64
    ld hl, $4dc0
    ld b, $16
    call Call_000_3e84
    ld hl, $da6c
    ldh a, [$96]
    ld [hl+], a
    ldh a, [$97]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    ld d, $64

jr_015_631d:
    xor a
    ld [$cd3e], a
    ld hl, $da61
    ld a, [hl]
    ld [$cd3d], a
    cp d
    ld [hl], d
    ld hl, $6464
    jr z, jr_015_633b

    ld a, [$cd3d]
    ld b, a
    ld a, d
    sub b
    ld [$cd3e], a
    ld hl, $6455

jr_015_633b:
    call Call_000_3c36
    ld a, [$d162]
    cp $06
    ld hl, $6472
    jp z, Jump_015_6435

    ld de, $cd3f
    xor a
    ld [de], a
    inc de
    ld [de], a
    ld hl, $cd41
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    ld a, [$cd3e]
    inc a
    ld b, a
    ld c, $02

jr_015_635f:
    push hl
    push de
    push bc
    ld a, $0b
    call Call_000_3eb4
    pop bc
    pop de
    pop hl
    dec b
    jr nz, jr_015_635f

    ld hl, $645a
    call Call_000_3c36
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    call Call_000_35ef
    ld hl, $6469
    ld a, [$cc26]
    and a
    jp nz, Jump_015_6435

    ld hl, $cd3f
    ldh [$9f], a
    ld a, [hl+]
    ldh [$a0], a
    ld a, [hl]
    ldh [$a1], a
    call Call_000_35c3
    jr nc, jr_015_639e

    ld hl, $6486
    jp Jump_015_6435


jr_015_639e:
    xor a
    ld [$da47], a
    ld hl, $cd3e
    ld [hl+], a
    inc hl
    ld de, $d348
    ld c, $03
    ld a, $0c
    call Call_000_3eb4
    ld a, $b2
    call Call_000_3736
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld hl, $6481
    call Call_000_3c36
    ld a, $02
    ld [$cf94], a
    call Call_000_3a59
    ld a, [$da5e]
    ld [$cf90], a
    ld a, [$d162]
    dec a
    push af
    ld bc, $002c
    push bc
    ld hl, $d172
    call Call_000_3a74
    ld d, h
    ld e, l
    ld a, $01
    ld [$cee9], a
    ld a, $3e
    call Call_000_3eb4
    pop bc
    pop af
    ld hl, $d16b
    call Call_000_3a74
    ld d, h
    ld e, l
    ld bc, $0021
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$d162]
    dec a
    ld [$cf91], a
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr c, jr_015_6419

    ld a, [$cf90]
    call Call_000_118b
    jr jr_015_6430

jr_015_6419:
    ld a, $06
    ld [$d430], a
    ld hl, $44fa
    ld b, $3f
    ld hl, $3e84
    ld e, $22
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84

jr_015_6430:
    ld hl, $645f
    jr jr_015_643b

Jump_015_6435:
    ld a, [$cd3d]
    ld [$da61], a

Jump_015_643b:
jr_015_643b:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    and c
    ld d, c
    jr z, jr_015_6496

    rla
    ldh [rHDMA1], a
    jr z, jr_015_649b

    rla
    db $fc
    ld d, c
    jr z, jr_015_64a0

    rla
    dec h
    ld d, d
    jr z, jr_015_64a5

    rla
    ld a, $52
    jr z, jr_015_64aa

    rla
    adc c
    ld d, d
    jr z, jr_015_64af

    rla
    cp d
    ld d, d
    jr z, jr_015_64b4

    rla
    call Call_000_2852
    ld d, b
    rla
    dec b
    ld d, e
    jr z, @+$19

    jr @+$55

    jr z, @+$52

    rla
    dec h
    ld d, e
    jr z, jr_015_64c7

    rla
    ld b, [hl]
    ld d, e
    jr z, @+$52

    rla
    ld l, b
    ld d, e
    jr z, @+$52

    rla
    sub l
    ld d, e
    jr z, @+$52

    rla
    or d
    ld d, e
    jr z, @+$52

    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    rst $38
    rlca
    inc bc
    inc b
    rst $38
    nop

jr_015_6496:
    ld bc, $0710
    ld b, $ff

jr_015_649b:
    db $d3
    ld bc, $c712
    rlca

jr_015_64a0:
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc

jr_015_64a5:
    ld [$0404], sp
    ccf
    ld d, d

jr_015_64aa:
    or h
    ld h, h
    or c
    ld h, h
    nop

jr_015_64af:
    db $10
    ld h, l
    jp Jump_000_3c29


jr_015_64b4:
    or [hl]
    ld h, h
    ld [$27fa], sp
    rst $10
    bit 5, a
    jr nz, jr_015_64e9

    ld hl, $64f2
    call Call_000_3c36
    call Call_000_35ef

jr_015_64c7:
    ld a, [$cc26]
    and a
    jr nz, jr_015_64e4

    ld bc, $4e01
    call Call_000_3e3f
    jr nc, jr_015_64df

    ld hl, $d727
    set 5, [hl]
    ld hl, $64f7
    jr jr_015_64ec

jr_015_64df:
    ld hl, $650b
    jr jr_015_64ec

jr_015_64e4:
    ld hl, $6501
    jr jr_015_64ec

jr_015_64e9:
    ld hl, $6506

jr_015_64ec:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    or a
    ld e, h
    jr z, @+$52

    rla
    inc b
    ld e, l
    jr z, jr_015_6507

    rla
    ld d, e
    ld e, l
    jr z, jr_015_6551

    rla
    and l
    ld e, l
    jr z, @+$52

    rla

jr_015_6507:
    add $5d
    jr z, @+$52

    rla
    inc a
    ld e, [hl]
    jr z, jr_015_6560

    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    rst $38
    rlca
    inc bc
    inc bc
    rst $38
    nop
    ld bc, $0827
    ld b, $ff
    db $d3
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld d, $09
    dec c
    sbc a
    ld h, [hl]
    xor a
    ld h, l
    ld [hl], $65
    nop
    ld b, l
    ld h, [hl]
    call Call_015_654c
    call Call_000_3c29
    ld hl, $65b7
    ld de, $65a9
    ld a, [$d648]
    call Call_000_30fc
    ld [$d648], a
    ret


Call_015_654c:
    ld hl, $d125
    bit 5, [hl]

jr_015_6551:
    res 5, [hl]
    ret z

    ld hl, $6570
    call Call_015_6573
    call Call_015_659f
    ld a, [$d831]

jr_015_6560:
    bit 0, a
    ret nz

    ld a, $5f
    ld [$d09e], a
    ld bc, $0403
    ld a, $17
    jp Jump_000_3eb4


    inc b
    inc bc
    rst $38

Call_015_6573:
    push hl
    ld hl, $d73e
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_015_657f:
    ld a, [hl+]
    cp $ff
    jr z, jr_015_659b

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_015_6590

    inc hl
    jr jr_015_657f

jr_015_6590:
    ld a, [hl+]
    cp c
    jr nz, jr_015_657f

    ld hl, $d73e
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_015_659b:
    xor a
    ldh [$e0], a
    ret


Call_015_659f:
jr_015_659f:
    ldh a, [$e0]
    and a
    ret z

    ld hl, $d831
    set 0, [hl]
    ret


    or l
    ld sp, $31e8
    ld de, $dc32
    ld h, l
    ld a, [$0465]
    ld h, [hl]
    ld c, $66
    ld [bc], a
    ld b, b
    jr nc, @-$26

    jr jr_015_6623

    ld [hl+], a
    ld h, [hl]
    dec e
    ld h, [hl]
    dec e
    ld h, [hl]
    inc bc
    ld b, b
    jr nc, jr_015_659f

    daa
    ld h, [hl]
    ld sp, $2c66
    ld h, [hl]
    inc l
    ld h, [hl]
    inc b
    ld b, b
    jr nc, @-$26

    ld [hl], $66
    ld b, b
    ld h, [hl]
    dec sp
    ld h, [hl]
    dec sp
    ld h, [hl]
    rst $38
    ld [$37fa], sp
    ret c

    bit 7, a
    ld hl, $65f5
    jr nz, jr_015_65ea

    ld hl, $65f0

jr_015_65ea:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld d, a
    db $76
    ld h, $50
    rla
    ld a, c
    db $76
    ld h, $50
    ld [$b721], sp
    ld h, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$c321], sp
    ld h, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$cf21], sp
    ld h, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sub b
    db $76
    ld h, $50
    rla
    xor e
    db $76
    ld h, $50
    rla

jr_015_6623:
    cp l
    db $76
    ld h, $50
    rla
    ld [$2676], a
    ld d, b
    rla
    ld b, $77
    ld h, $50
    rla
    inc d
    ld [hl], a
    ld h, $50
    rla
    ld b, h
    ld [hl], a
    ld h, $50
    rla
    ld l, b
    ld [hl], a
    ld h, $50
    rla
    ld a, h
    ld [hl], a
    ld h, $50
    ld l, $07
    nop
    db $10
    ld bc, $00e9
    ld c, $00
    call nc, Call_000_1200
    nop
    db $ec
    dec bc
    inc bc
    ld b, $d5
    rrca
    inc bc
    inc b
    rst $08
    dec b
    dec bc
    dec b
    rst $08
    add hl, bc
    dec bc
    inc bc
    push de
    nop
    inc b
    inc l
    ld b, $08
    rst $38
    rst $38
    ld bc, $0618
    rla
    rst $38
    jp nc, $e642

    inc hl
    jr nz, jr_015_667b

    ld c, $ff
    ret nc

    ld b, e
    db $e4
    add hl, bc

jr_015_667b:
    jr jr_015_6690

    db $10
    rst $38
    db $d3
    ld b, h
    and $24
    inc b
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
    ld e, h

jr_015_6690:
    rst $00
    dec bc
    inc bc
    add d
    rst $00
    rrca
    inc bc
    daa
    rst $00
    dec b
    dec bc
    ld c, l
    rst $00
    add hl, bc
    dec bc
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld h, c
    ld h, c
    ld h, d
    inc h
    ld a, l
    ld a, h
    dec a
    dec a
    ld a, $44
    inc [hl]
    inc [hl]
    ld b, [hl]
    ld c, $0e
    ld h, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, h
    ld [hl], $36
    ld b, [hl]
    ld c, $2f
    ld b, [hl]
    ld c, $40
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, h
    ld [hl], $36
    ld d, [hl]
    ld c, $57
    ld d, c
    ld c, $44
    ld b, e
    ld b, e
    add hl, bc
    ld b, [hl]
    ld b, h
    scf
    ld [hl], $0e
    ld c, $2f
    ld b, [hl]
    ld c, $44
    ld c, $0e
    ld c, $46
    ld b, h
    cpl
    scf
    ld e, d
    ld c, $47
    ld b, [hl]
    ld c, $44
    ld b, a
    ld c, $09
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld c, d
    ld c, $57
    ld c, d
    ld c, $48
    ld e, b
    ld c, $57
    ld d, c
    ld [de], a
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
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
    ld c, c
    ld c, c
    ld c, d
    call Call_000_36ec
    call Call_000_3dd8
    call Call_000_16dd
    xor a
    ld [$cfca], a
    ld hl, $d72f
    set 6, [hl]
    ld hl, $5a08
    ld b, $3a
    call Call_000_3e84
    call Call_000_3852
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3dd8
    call Call_000_2f83
    call Call_000_3dc2
    call Call_000_3ddb
    jp Jump_000_3de0


    ld hl, $c100
    ld de, $0004
    ld a, [$cf13]
    ldh [$8c], a
    call Call_015_684f
    ld a, [hl+]
    ldh [$eb], a
    inc hl
    ld a, [hl]
    ldh [$ec], a
    ld de, $00fe
    add hl, de
    ld a, [hl+]
    ldh [$ed], a
    ld a, [hl]
    ldh [$ee], a
    ret


    ld hl, $c100
    ld de, $0004
    ld a, [$cf13]
    ldh [$8c], a
    call Call_015_684f
    ld a, [hl+]
    ld [$d12f], a
    inc hl
    ld a, [hl]
    ld [$d130], a
    ld de, $00fe
    add hl, de
    ld a, [hl+]
    ld [$d131], a
    ld a, [hl]
    ld [$d132], a
    ret


    ld hl, $c100
    ld de, $0004
    ld a, [$cf13]
    ldh [$8c], a
    call Call_015_684f
    ldh a, [$eb]
    ld [hl+], a
    inc hl
    ldh a, [$ec]
    ld [hl], a
    ld de, $00fe
    add hl, de
    ldh a, [$ed]
    ld [hl+], a
    ldh a, [$ee]
    ld [hl], a
    ret


    ld hl, $c100
    ld de, $0004
    ld a, [$cf13]
    ldh [$8c], a
    call Call_015_684f
    ld a, [$d12f]
    ld [hl+], a
    inc hl
    ld a, [$d130]
    ld [hl], a
    ld de, $00fe
    add hl, de
    ld a, [$d131]
    ld [hl+], a
    ld a, [$d132]
    ld [hl], a
    ret


    ld a, [$cf13]
    swap a
    ld [$cd3d], a
    call Call_015_68da
    ld a, [$cd3f]
    and a
    jr z, jr_015_67e8

    cp $04
    jr z, jr_015_67fc

    cp $08
    jr z, jr_015_6828

    jr jr_015_6812

jr_015_67e8:
    ld a, [$cd40]
    ld b, a
    ld a, $3c
    call Call_000_3636
    cp $10
    ret z

    swap a
    dec a
    ld c, a
    xor a
    ld b, a
    jr jr_015_683c

jr_015_67fc:
    ld a, [$cd40]
    ld b, a
    ld a, $3c
    call Call_000_3636
    cp $10
    ret z

    swap a
    dec a
    ld c, a
    ld b, $00
    ld a, $40
    jr jr_015_683c

jr_015_6812:
    ld a, [$cd41]
    ld b, a
    ld a, $40
    call Call_000_3636
    cp $10
    ret z

    swap a
    dec a
    ld c, a
    ld b, $00
    ld a, $c0
    jr jr_015_683c

jr_015_6828:
    ld a, [$cd41]
    ld b, a
    ld a, $40
    call Call_000_3636
    cp $10
    ret z

    swap a
    dec a
    ld c, a
    ld b, $00
    ld a, $80

jr_015_683c:
    ld hl, $cc97
    ld de, $cc97
    call Call_000_166e
    ld [hl], $ff
    ld a, [$cf13]
    ldh [$8c], a
    jp Jump_000_3640


Call_015_684f:
    push de
    add hl, de
    ldh a, [$8c]
    swap a
    ld d, $00
    ld e, a
    add hl, de
    pop de
    ret


    push hl
    push de
    ld a, [$cd3d]
    add $02
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    sub $ff
    jr nz, jr_015_6871

    jp Jump_015_68d4


jr_015_6871:
    ld a, [$cd3d]
    add $09
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    ld [$cd3f], a
    call Call_015_68da
    ld a, [$cd40]
    ld b, a
    ld a, $3c
    cp b
    jr z, jr_015_689a

    ld a, [$cd41]
    ld b, a
    ld a, $40
    cp b
    jr z, jr_015_68ad

    xor a
    jp Jump_015_68d4


jr_015_689a:
    ld a, [$cd41]
    ld b, a
    ld a, $40
    call Call_000_3636
    jr z, jr_015_68d4

    call Call_015_68fb
    jr c, jr_015_68c1

    xor a
    jr jr_015_68d4

jr_015_68ad:
    ld a, [$cd40]
    ld b, a
    ld a, $3c
    call Call_000_3636
    jr z, jr_015_68d4

    call Call_015_68fb
    jr c, jr_015_68c1

    xor a
    jp Jump_015_68d4


jr_015_68c1:
    call Call_015_692f
    ld a, [$cd3d]
    and a
    jr z, jr_015_68d4

    ld hl, $cd60
    set 0, [hl]
    call Call_000_3306
    ld a, $ff

Jump_015_68d4:
jr_015_68d4:
    ld [$cd3d], a
    pop de
    pop hl
    ret


Call_015_68da:
    ld a, [$cd3d]
    add $04
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    ld [$cd40], a
    ld a, [$cd3d]
    add $06
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    ld [$cd41], a
    ret


Call_015_68fb:
    ld b, a
    ld a, [$cd3e]
    cp b
    jr nc, jr_015_6904

    jr jr_015_692d

jr_015_6904:
    ld a, [$cd3f]
    cp $00
    jr z, jr_015_6919

    cp $04
    jr z, jr_015_6919

    cp $08
    jr z, jr_015_6923

    cp $0c
    jr z, jr_015_6923

    jr jr_015_692d

jr_015_6919:
    ld a, [$cd41]
    ld b, a
    cp $40
    jr z, jr_015_692b

    jr jr_015_692d

jr_015_6923:
    ld a, [$cd40]
    ld b, a
    cp $3c
    jr nz, jr_015_692d

jr_015_692b:
    scf
    ret


jr_015_692d:
    and a
    ret


Call_015_692f:
    ld a, [$d35d]
    cp $53
    jp z, Jump_015_698e

    ld a, [$cd3d]
    add $04
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    cp $fc
    jr nz, jr_015_694a

    ld a, $0c

jr_015_694a:
    ld [$cd40], a
    ld a, [$cd3d]
    add $06
    ld d, $00
    ld e, a
    ld hl, $c100
    add hl, de
    ld a, [hl]
    ld [$cd41], a
    ld a, [$cd3f]
    cp $00
    jr nz, jr_015_696d

    ld a, [$cd40]
    cp $3c
    jr c, jr_015_698e

    jr jr_015_6992

jr_015_696d:
    cp $04
    jr nz, jr_015_697a

    ld a, [$cd40]
    cp $3c
    jr nc, jr_015_698e

    jr jr_015_6992

jr_015_697a:
    cp $08
    jr nz, jr_015_6987

    ld a, [$cd41]
    cp $40
    jr nc, jr_015_698e

    jr jr_015_6992

jr_015_6987:
    ld a, [$cd41]
    cp $40
    jr nc, jr_015_6992

Jump_015_698e:
jr_015_698e:
    ld a, $ff
    jr jr_015_6993

jr_015_6992:
    xor a

jr_015_6993:
    ld [$cd3d], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_015_7ad7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_015_7fd8:
    nop
    nop

Jump_015_7fda:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
