;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    cp d
    ld [bc], a
    jp $c302


    ld [bc], a
    rst $00
    ld [bc], a
    call nc, $d002
    ld [bc], a
    jp z, $c702

    ld [bc], a
    call $fb02
    ld [bc], a
    jp $c302


    ld [bc], a
    db $eb
    ld [bc], a
    db $eb
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    rst $30
    ld [bc], a
    rst $30
    ld [bc], a
    rst $30
    ld [bc], a
    rst $30
    ld [bc], a
    rst $30
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    di
    ld [bc], a
    ei
    ld [bc], a
    rst $28
    ld [bc], a
    rst $28
    ld [bc], a
    cp d
    ld [bc], a
    cp d
    ld [bc], a
    cp d
    ld [bc], a
    call $bd1f
    ld [bc], a
    cp l
    ld [bc], a
    jp $c302


    ld [bc], a
    ret nz

    ld [bc], a
    db $e3
    rra
    jp $c302


    ld [bc], a
    jp $c302


    ld [bc], a
    db $e3
    rra
    jp $c302


    ld [bc], a
    ret nz

    ld [bc], a
    jp $bd02


    ld [bc], a
    jp $bd02


    ld [bc], a
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    cp l
    ld [bc], a
    ret nz

    ld [bc], a
    rst $00
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    rst $20
    rra
    jp $c302


    ld [bc], a
    jp $c302


    ld [bc], a
    jp $d002


    ld [bc], a
    jp $c302


    ld [bc], a
    jp z, $c302

    ld [bc], a
    jp $bd02


    ld [bc], a
    rst $20
    rra
    rst $18
    rra
    ret nc

    ld [bc], a
    db $e3
    rra
    ret nc

    ld [bc], a
    jp $c702


    ld [bc], a
    cp l
    ld [bc], a
    ret nc

    ld [bc], a
    cp l
    ld [bc], a
    ret nz

    ld [bc], a
    ret nc

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    db $e3
    rra
    db $e3
    rra
    ret c

    ld [bc], a
    rst $20
    rra
    rst $28
    rra
    rst $18
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ei
    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    ret c

    ld [bc], a
    cp d
    ld [bc], a
    db $eb
    ld [bc], a
    ei
    ld [bc], a
    db $eb
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    jp z, $ca02

    ld [bc], a
    jp z, $ca02

    ld [bc], a
    jp z, $bd02

    ld [bc], a
    ret nz

    ld [bc], a
    reti


    rra
    cp l
    ld [bc], a
    jp z, $ca02

    ld [bc], a
    jp z, $ca02

    ld [bc], a
    cp l
    ld [bc], a
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    call nc, $bd02
    ld [bc], a
    call nc, $bd02
    ld [bc], a
    rst $00
    ld [bc], a
    cp l
    ld [bc], a
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    ret nz

    ld [bc], a
    rst $00
    ld [bc], a
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    rst $00
    ld [bc], a
    rst $00
    ld [bc], a
    db $eb
    rra
    ret nz

    ld [bc], a
    call $cd02
    ld [bc], a
    call $cd02
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    call $fb02
    ld [bc], a
    jp $c302


    ld [bc], a
    jp $c002


    ld [bc], a
    jp $bd02


    ld [bc], a
    ld a, [c]
    rra
    cp l
    ld [bc], a
    jp $c302


    ld [bc], a
    jp $c302


    ld [bc], a
    jp $ca02


    ld [bc], a
    jp z, $c302

    ld [bc], a
    jp $e302


    rra
    db $e3
    rra
    rst $20
    rra
    jp $d002


    ld [bc], a
    db $e3
    rra
    rst $20
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    db $eb
    rra
    db $eb
    rra
    db $eb
    rra
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $00
    ld [bc], a
    jp $cd02


    ld [bc], a
    rst $20
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    jp z, $ca02

    ld [bc], a
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ld a, [c]
    rra
    ret nz

    ld [bc], a
    rst $18
    rra
    rst $28
    rra
    di
    ld [bc], a
    and c
    ld b, d
    ld d, a
    ld b, e
    ld e, d
    ld b, l
    ld d, h
    ld b, a
    nop
    ld b, b
    sbc [hl]
    ld c, c
    nop
    ld b, b
    or e
    ld c, e
    nop
    ld b, b
    inc h
    ld c, c
    xor d
    ld c, c
    xor d
    ld c, c
    jp VBlankInterrupt


    ld b, b
    xor $41
    sbc b
    ld b, e
    adc c
    ld b, l
    nop
    ld b, b
    nop
    ld b, b
    dec l
    ld b, c
    adc [hl]
    ld b, [hl]
    call nc, $be42
    ld b, h
    ld l, l
    ld b, [hl]
    inc d
    ld c, b
    and c
    ld c, c
    inc l
    ld c, c
    jp c, $284a

    ld c, e
    jr c, jr_03f_427a

    add b
    ld c, [hl]
    pop af
    ld b, b
    rrca
    ld d, b
    nop
    ld b, b
    ccf
    ld b, e
    add d
    ld b, [hl]
    and c
    ld b, a
    or $40

Jump_03f_423e:
    and h
    ld b, b
    cpl
    ld e, h
    add [hl]
    ld b, e
    ld d, c
    ld b, d
    ld l, [hl]
    ld c, h
    ld l, l
    ld c, l
    add $4d
    call nc, $ae40
    ld d, a
    add l
    ld d, h
    db $eb
    ld d, a
    jp nc, $5a54

    ld d, l
    db $ed
    ld d, b
    db $e3
    ld b, b
    or h
    ld b, c
    ld d, a
    ld b, d
    jr nc, jr_03f_42b0

    sbc $44
    add [hl]
    ld c, [hl]
    ld l, [hl]
    ld b, h
    ld d, e
    ld e, c
    ld a, b
    ld e, d
    ld a, [hl]
    ld e, h
    jp $344e


    ld c, a
    push af
    ld b, h
    ld [hl], a
    ld b, l
    jr c, jr_03f_42c8

    ld d, a
    ld b, a

jr_03f_427a:
    xor c
    ld d, d
    jp $314e


    ld e, b
    xor b
    ld d, l
    inc sp
    ld h, d
    dec sp
    ld e, c
    xor $55
    xor $55
    cp $59
    dec hl
    ld d, [hl]
    ld l, b
    ld d, [hl]
    push bc
    ld e, d
    add a
    ld e, e
    jr nc, jr_03f_42e9

    ld [hl], c
    ld b, l
    call nz, $965b
    ld d, e
    cp b
    ld e, [hl]
    sbc $53
    adc a
    ld d, h
    ld l, [hl]
    ld h, b
    ld h, l
    ld c, b
    nop
    ld e, d
    bit 1, b
    db $10
    ld c, c
    ld hl, sp+$53
    ld c, [hl]
    ld d, h

jr_03f_42b0:
    and h
    ld d, d
    sbc $53
    cp a
    ld c, c
    ld d, b
    ld d, [hl]
    ret nc

    ld d, [hl]
    push de
    ld d, a
    or a
    ld e, b
    sub e
    ld e, c
    ld l, b
    ld e, e
    ld h, b
    ld e, l
    dec a
    ld h, d
    dec a
    ld h, d

jr_03f_42c8:
    dec a
    ld h, d
    add hl, bc
    ld e, c
    dec a
    ld h, d
    dec a
    ld h, d
    dec a
    ld h, d
    dec a
    ld h, d
    dec a
    ld h, d
    dec a
    ld h, d
    dec a
    ld h, d
    dec a
    ld h, d
    dec a
    ld h, d
    dec l
    ld h, h
    ld sp, $a05f
    ld d, a
    ld d, l
    ld e, a
    or a
    ld b, d
    reti


jr_03f_42e9:
    ld h, b
    ld d, a
    ld b, c
    ld d, c
    ld b, d
    ret nc

    ld b, d
    rst $38
    ld b, h
    sub e
    ld b, l
    ld e, d
    ld b, [hl]
    or b
    ld b, [hl]
    ld h, c
    ld c, b
    ld [hl], $56
    xor a
    ld c, b
    dec d
    ld c, c
    ret z

    ld c, e
    ld a, a
    ld d, b
    rlca
    ld d, c
    ld l, b
    ld d, c
    add sp, $51
    ld b, e
    ld d, d
    sbc h
    ld b, a
    jr nz, jr_03f_4354

    rst $20
    ld b, h
    xor a
    ld b, [hl]
    reti


    ld b, a
    dec d
    ld c, c
    jp nc, $e84a

    ld c, h
    and h
    ld d, c
    ld [bc], a
    ld c, b
    xor d
    ld d, d
    add l
    ld d, [hl]
    ld d, c
    ld c, b
    sbc h
    ld c, b
    ld [bc], a
    ld c, c
    ld a, [de]
    ld c, d
    reti


    ld c, e
    ld a, a
    ld c, [hl]
    ld a, b
    ld h, l
    or h
    ld h, [hl]
    ldh a, [$67]
    db $fc
    ld l, c
    ld d, h
    ld h, b
    ld h, b
    ld h, c
    ld b, h
    ld b, e
    and $4e
    ei
    ld d, e
    sub b
    ld d, h
    or $54
    and b
    ld d, l
    sbc e
    ld d, [hl]
    ld bc, $0157
    ld d, a
    ld b, l
    ld e, l
    ld b, [hl]
    ld d, a
    ld e, e
    ld c, e

jr_03f_4354:
    ld b, a
    ld c, h
    rst $30
    ld c, [hl]
    db $db
    ld d, [hl]
    di
    ld d, d
    jr c, jr_03f_43b1

    rra
    ld d, h
    ld a, [hl-]
    ld d, a
    adc l
    ld d, l
    push de
    ld d, l
    ld c, c
    ld d, [hl]
    sub [hl]
    ld d, a
    or $5e
    and l
    ld h, h
    ld bc, $0058
    ld e, c
    ld a, [hl]
    ld c, b
    add c
    ld e, a
    call z, $eb57
    ld d, h
    dec b
    ld e, l
    ld a, c
    ld e, a
    dec c
    ld c, d
    ld e, [hl]
    ld c, h
    cp e
    ld c, [hl]
    cp c
    ld d, d
    pop af
    ld d, h
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    add b
    ld e, h
    ld [$095e], a
    ld e, [hl]
    dec [hl]
    ld h, b
    and a
    ld h, d
    sub a
    ld e, e
    ld a, [hl+]
    ld h, l
    push af
    ld e, a
    dec bc
    ld h, d
    sub $63
    or e
    ld e, d
    di
    ld e, e
    ld e, d
    ld h, e
    ld a, [$355d]
    ld e, a
    cp h
    ld h, h
    ld [hl], d

jr_03f_43b1:
    ld e, a
    cp l
    ld e, a
    ld [$5360], sp
    ld h, b
    ld b, c
    ld h, c
    dec a
    ld b, l
    ld c, $53
    ld b, e
    ld b, [hl]
    ld c, c
    ld d, [hl]
    ld c, [hl]
    ld h, d
    cp d
    ld d, [hl]
    ret z

    ld h, b
    dec b
    ld h, c
    ld [$805a], sp
    ld e, h
    add b
    ld e, h
    ld a, c
    ld a, [hl]
    and $7e
    add b
    ld e, h
    add b
    ld e, h
    add b
    ld e, h
    add b
    ld e, h
    rst $28
    ld e, c
    ld c, d
    ld e, e
    and c
    ld e, h
    ld c, $62
    ld b, $06
    ld b, $06
    ld de, $0606
    ld b, $07
    inc d
    inc d
    ld bc, $1507
    dec d
    dec d
    dec d
    ld d, $12
    ld d, $15
    ld d, $16
    ld d, $15
    dec d
    ld d, $16
    dec d
    ld d, $15
    inc d
    dec d
    inc d
    inc d
    inc d
    inc d
    ld [de], a
    rla
    ld b, $07
    ld de, $0707
    rlca
    dec e
    rlca
    rla
    rlca
    rla
    rla
    jr jr_03f_4430

    rla
    rla
    rlca
    dec e
    rlca
    rla
    ld [de], a
    inc d
    ld [de], a
    rlca
    rlca
    rla
    rla
    rlca
    rla
    ld [de], a
    rlca
    rlca
    rla
    dec d
    rlca
    rla
    rla

jr_03f_4430:
    rlca
    rla
    rla
    rlca
    rlca
    ld [de], a
    ld de, $1207
    rlca
    ld [de], a
    ld [de], a
    rlca
    rla
    ld d, $17
    rla
    rlca
    rlca
    jr jr_03f_445d

    ld de, $1818
    jr jr_03f_4462

    jr jr_03f_4464

    jr jr_03f_446b

    dec e
    dec e
    rla
    dec e
    dec e
    dec e
    dec e
    ld d, $1d
    dec e
    dec e
    dec e
    ld d, $18
    dec e

jr_03f_445d:
    jr jr_03f_4470

    dec d
    ld [de], a
    ld [de], a

jr_03f_4462:
    ld [de], a
    ld [de], a

jr_03f_4464:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rlca
    ld [de], a
    ld [de], a

jr_03f_446b:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a

jr_03f_4470:
    ld [de], a
    rla
    jr jr_03f_448c

    jr jr_03f_448e

    jr jr_03f_4490

    jr jr_03f_4481

    rla
    rlca
    rlca
    dec e
    dec e
    dec e
    dec e

jr_03f_4481:
    dec e
    dec e
    ld de, $1111
    ld de, $1515
    ld de, $1d1d

jr_03f_448c:
    dec e
    dec e

jr_03f_448e:
    dec e
    dec e

jr_03f_4490:
    dec e
    dec e
    ld b, $1d
    rla
    rla
    rla
    rlca
    rla
    rla
    rla
    rlca
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    rlca
    dec d
    ld [de], a
    ld [de], a
    ld de, $1407
    ld [de], a
    ld b, $18
    ld de, $1111
    ld de, $1111
    ld bc, $0101
    ld d, $16
    ld b, $06
    ld b, $14
    dec d
    inc d
    inc d
    inc d
    ld de, $1211
    ld de, $1211
    ld de, $1111
    ld de, $1d11
    rlca
    dec e
    ld bc, $1711
    ld d, $18
    ld de, $1111
    inc de
    inc de
    ld de, $1111
    ld de, $1d1d
    dec e
    inc a

Call_03f_44dd:
    ld a, [$d42f]
    bit 5, a
    jr nz, jr_03f_44f8

    ld a, [$d42f]
    bit 7, a
    jr nz, jr_03f_44f8

    call Call_03f_4db8
    jr nc, jr_03f_44f8

    ld a, [$d6ff]
    and a
    jr nz, jr_03f_44f8

    scf
    ret


jr_03f_44f8:
    and a
    ret


    ld hl, $d42f
    bit 4, [hl]
    res 4, [hl]
    jr nz, jr_03f_4515

    call Call_000_1542
    call Call_03f_4523
    ld a, $ff
    ld [$c1f2], a
    call Call_03f_4b84
    call Call_03f_45bc
    ret


jr_03f_4515:
    call Call_03f_453f
    xor a
    ld [$d430], a
    ld a, [$c109]
    ld [$c1f9], a
    ret


Call_03f_4523:
    ld hl, $c1f0
    call Call_03f_452c
    ld hl, $c2f0

Call_03f_452c:
    ld bc, $0010
    xor a
    call Call_000_166e
    ret


Call_03f_4534:
    call Call_03f_453f
    call Call_03f_45bc
    xor a
    ld [$d430], a
    ret


Call_03f_453f:
    ld bc, $c1f0
    ld a, [$d360]
    add $04
    ld e, a
    ld a, [$d361]
    add $04
    ld d, a
    ld a, [$d430]
    and a
    jr z, jr_03f_45aa

    cp $01
    jr z, jr_03f_459e

    cp $02
    jr z, jr_03f_4584

    cp $03
    jr z, jr_03f_45aa

    cp $04
    jr z, jr_03f_45a4

    cp $05
    jr z, jr_03f_45a7

    cp $06
    jr z, jr_03f_45a1

    cp $07
    jr z, jr_03f_4572

    jr jr_03f_459e

jr_03f_4572:
    ld a, [$c109]
    and a
    jr z, jr_03f_45a4

    cp $04
    jr z, jr_03f_45a7

    cp $08
    jr z, jr_03f_45a1

    cp $0c
    jr z, jr_03f_459e

jr_03f_4584:
    ld a, [$c109]
    and a
    jr nz, jr_03f_458d

    dec e
    jr jr_03f_45aa

jr_03f_458d:
    cp $04
    jr nz, jr_03f_4594

    inc e
    jr jr_03f_45aa

jr_03f_4594:
    cp $08
    jr nz, jr_03f_459b

    inc d
    jr jr_03f_45aa

jr_03f_459b:
    dec d
    jr jr_03f_45aa

jr_03f_459e:
    inc d
    jr jr_03f_45aa

jr_03f_45a1:
    dec d
    jr jr_03f_45aa

jr_03f_45a4:
    inc e
    jr jr_03f_45aa

jr_03f_45a7:
    dec e
    jr jr_03f_45aa

jr_03f_45aa:
    ld hl, HeaderLogo
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $fe
    push hl
    ld hl, $d471
    set 5, [hl]
    pop hl
    ret


Call_03f_45bc:
    ld a, $49
    ld [$c1f0], a
    ld a, $ff
    ld [$c1f2], a
    ld a, [$d430]
    and a
    jr z, jr_03f_45e4

    cp $01
    jr z, jr_03f_45e4

    cp $03
    jr z, jr_03f_45eb

    cp $04
    jr z, jr_03f_45e4

    cp $06
    jr z, jr_03f_45e4

    cp $07
    jr z, jr_03f_45f1

    call Call_03f_4cb2
    ret


jr_03f_45e4:
    ld a, [$c109]
    ld [$c1f9], a
    ret


jr_03f_45eb:
    ld a, $00
    ld [$c1f9], a
    ret


jr_03f_45f1:
    ld a, [$c109]
    xor $04
    ld [$c1f9], a
    ret


    ld a, [$d35d]
    cp $28
    jr z, jr_03f_463d

    cp $c1
    jr z, jr_03f_462d

    cp $3c
    jr z, jr_03f_4635

    cp $52
    jr z, jr_03f_4645

    ld a, [$d35d]
    ld hl, $464b
    call Call_000_1568
    jr c, jr_03f_4639

    ld a, [$d35d]
    ld hl, $4653
    call Call_000_1568
    jr nc, jr_03f_4641

    ld a, [$c109]
    and a
    jr nz, jr_03f_4641

    ld a, $03
    jr jr_03f_4647

jr_03f_462d:
    ld a, [$c109]
    and a
    jr z, jr_03f_4645

    jr jr_03f_4641

jr_03f_4635:
    ld a, $03
    jr jr_03f_4647

jr_03f_4639:
    ld a, $04
    jr jr_03f_4647

jr_03f_463d:
    ld a, $06
    jr jr_03f_4647

jr_03f_4641:
    ld a, $01
    jr jr_03f_4647

jr_03f_4645:
    ld a, $03

jr_03f_4647:
    ld [$d430], a
    ret


    jp nz, Jump_03f_4f4c

    cp d
    cp [hl]
    cp b
    ld d, h
    rst $38
    cpl
    and $3e
    ld e, [hl]
    add b
    ld sp, $ffa4
    ld a, [$d35d]
    cp $2f
    jr z, jr_03f_4673

    cp $32
    jr z, jr_03f_467c

    ld a, [$d35d]
    ld hl, $468e
    call Call_000_1568
    jr c, jr_03f_4688

    jr jr_03f_4684

jr_03f_4673:
    ld a, [$c109]
    cp $04
    jr z, jr_03f_4688

    jr jr_03f_4684

jr_03f_467c:
    ld a, [$c109]
    and a
    jr z, jr_03f_4684

    jr jr_03f_4688

jr_03f_4684:
    ld a, $00
    jr jr_03f_468a

jr_03f_4688:
    ld a, $01

jr_03f_468a:
    ld [$d430], a
    ret


    inc sp
    db $dd
    rst $18
    ldh [$e1], a
    sbc $ec
    ld a, a
    xor b
    xor c
    xor d
    rst $38
    ld a, [$d35d]
    cp $c1
    jr z, jr_03f_46a7

    cp $31
    jr z, jr_03f_46b0

    jr jr_03f_46bd

jr_03f_46a7:
    ld a, [$c109]
    cp $04
    jr z, jr_03f_46b9

    jr jr_03f_46bd

jr_03f_46b0:
    ld a, [$c109]
    cp $04
    jr z, jr_03f_46b9

    jr jr_03f_46bd

jr_03f_46b9:
    ld a, $01
    jr jr_03f_46c1

jr_03f_46bd:
    ld a, $03
    jr jr_03f_46c1

jr_03f_46c1:
    ld [$d430], a
    ret


Call_03f_46c5:
    push hl
    ld hl, $d42f
    set 2, [hl]
    pop hl
    ret


Call_03f_46cd:
    push hl
    ld hl, $d42f
    res 2, [hl]
    pop hl
    ret


    call Call_03f_46cd
    call Call_03f_4727
    ret nc

    push bc
    call Call_03f_4d25
    pop bc
    ret c

    ld bc, $c1f0
    ld hl, $0001
    add hl, bc
    bit 7, [hl]
    jp nz, Jump_03f_4745

    ld a, [$cfc3]
    bit 0, a
    jp nz, Jump_03f_476a

    call Call_000_154a
    jp nz, Jump_03f_476a

    ld a, [hl]
    and $7f
    cp $0a
    jr c, jr_03f_4704

    xor a

jr_03f_4704:
    add a
    ld e, a
    ld d, $00
    ld hl, $4710
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sub e
    ld b, a
    xor d
    ld b, a
    inc bc
    ld c, b
    jp Jump_000_1c49


    ld c, d
    xor $49
    ld a, a
    ld c, b
    inc b
    ld c, c
    scf
    ld c, c
    ld l, c
    ld c, c
    ld h, $47
    ret


Call_03f_4727:
    call Call_03f_44dd
    jr nc, jr_03f_473b

    ld a, [$c1f1]
    and a
    jr nz, jr_03f_4739

    push bc
    push hl
    call Call_03f_4534
    pop hl
    pop bc

jr_03f_4739:
    scf
    ret


jr_03f_473b:
    ld hl, $c1f2
    ld [hl], $ff
    dec hl
    ld [hl], $00
    xor a
    ret


Jump_03f_4745:
    ld hl, $0001
    add hl, bc
    res 7, [hl]
    ld hl, $0100
    add hl, bc
    ld [hl], a
    call Call_000_154a
    jr nz, jr_03f_475f

    ld a, [$c109]
    xor $04
    ld hl, $0009
    add hl, bc
    ld [hl], a

jr_03f_475f:
    xor a
    ld hl, $0007
    add hl, bc
    ld [hl+], a
    ld [hl], a
    call Call_03f_4a99
    ret


Jump_03f_476a:
    xor a
    ld hl, $0007
    add hl, bc
    ld [hl+], a
    ld [hl], a
    call Call_03f_4a99
    call Call_03f_482e
    jr c, jr_03f_4783

    push bc
    ld hl, $5012
    ld b, $01
    call Call_000_3e84
    pop bc

jr_03f_4783:
    ld hl, $0001
    add hl, bc
    ld [hl], $01
    ld hl, $0100
    add hl, bc
    ld [hl], $00
    call Call_03f_4ba1
    ret


    call Call_03f_4ba1
    push bc
    ld hl, $5012
    ld b, $01
    call Call_000_3e84
    pop bc
    ld hl, $0002
    add hl, bc
    ld [hl], $ff
    dec hl
    ld [hl], $01
    ret


    call Call_03f_4c92
    jp c, Jump_03f_4803

    dec a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $47e3
    add hl, de
    ld d, h
    ld e, l
    ld a, [de]
    inc de
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld a, [de]
    inc de
    ld hl, $0005
    add hl, bc
    ld [hl], a
    dec hl
    dec hl
    ld a, [de]
    ld [hl], a
    inc de
    ld a, [de]
    ld hl, $0001
    add hl, bc
    ld [hl], a
    cp $04
    jp z, Jump_03f_4a0a

    call Call_03f_4d17
    jp c, Jump_03f_49df

    jp Jump_03f_49b4


    nop
    nop
    ld bc, $0403
    nop
    rst $38
    inc bc
    ld [$00ff], sp
    inc bc
    inc c
    ld bc, $0300
    nop
    nop
    ld bc, $0404
    nop
    rst $38
    inc b
    ld [$00ff], sp
    inc b
    inc c
    ld bc, $0400

Jump_03f_4803:
    call Call_03f_4ae2
    ret c

    ld hl, $0100
    add hl, bc
    dec [hl]
    jr nz, jr_03f_4823

    push hl
    call Call_03f_4cee
    pop hl
    cp $05
    jr nc, jr_03f_4842

    ld [hl], $20
    call Call_000_3e6d
    and $0c
    ld hl, $0009
    add hl, bc
    ld [hl], a

jr_03f_4823:
    xor a
    ld hl, $0007
    add hl, bc
    ld [hl+], a
    ld [hl], a
    call Call_03f_4a99
    ret


Call_03f_482e:
    ld a, [$cfc4]
    and a
    ret z

    scf
    ret


Jump_03f_4835:
    ld hl, $0100
    add hl, bc
    ld [hl], $10
    ld hl, $0001
    add hl, bc
    ld [hl], $01
    ret


jr_03f_4842:
    ld hl, $0000
    push af
    call Call_000_3e6d
    ldh a, [$d3]
    and $03
    ld e, a
    ld d, $00
    ld hl, $485a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    jp hl


    ld h, d
    ld c, b
    ld hl, sp+$48
    dec hl
    ld c, c
    ld e, l
    ld c, c
    dec a
    add a
    add a
    and $0c
    ld hl, $0009
    add hl, bc
    ld [hl], a
    ld hl, $0001
    add hl, bc
    ld [hl], $06
    xor a
    ld [$d431], a
    ld [$d432], a
    ld hl, $0100
    add hl, bc
    ld [hl], $11
    ld a, [$d431]
    ld e, a
    ld a, [$d432]
    ld d, a
    call Call_03f_482e
    jr c, jr_03f_48c7

    call Call_03f_46c5
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub e
    ld e, a
    inc hl
    inc hl
    ld a, [hl]
    sub d
    ld d, a
    ld hl, $0100
    add hl, bc
    ld a, [hl]
    dec a
    add a
    add $d6
    ld l, a
    ld a, $48
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$d431], a
    add e
    ld e, a
    ld a, [hl]
    ld [$d432], a
    add d
    ld d, a
    ld hl, $0004
    add hl, bc
    ld [hl], e
    inc hl
    inc hl
    ld [hl], d
    ld hl, $0100
    add hl, bc
    dec [hl]
    ret nz

    jp Jump_03f_4835


jr_03f_48c7:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    sub e
    ld [hl], a
    inc hl
    inc hl
    ld a, [hl]
    sub d
    ld [hl], a
    jp Jump_03f_4835


    nop
    nop
    cp $01
    db $fc
    ld [bc], a
    cp $03
    nop
    inc b
    cp $03
    db $fc
    ld [bc], a
    cp $01
    nop
    nop
    cp $ff
    db $fc
    cp $fe
    db $fd
    nop
    db $fc
    cp $fd
    db $fc
    cp $fe
    rst $38
    nop
    nop
    ld hl, $0001
    add hl, bc
    ld [hl], $07
    ld hl, $0100
    add hl, bc
    ld [hl], $30
    call Call_03f_482e
    jp c, Jump_03f_4835

    call Call_03f_46c5
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    inc a
    cp $08
    ld [hl], a
    jr nz, jr_03f_491f

    xor a
    ld [hl+], a
    ld a, [hl]
    inc a
    and $03
    ld [hl], a

jr_03f_491f:
    call Call_03f_4a99
    ld hl, $0100
    add hl, bc
    dec [hl]
    ret nz

    jp Jump_03f_4835


    ld hl, $0100
    add hl, bc
    ld [hl], $20
    ld hl, $0001
    add hl, bc
    ld [hl], $08
    call Call_03f_482e
    jp c, Jump_03f_4835

    call Call_03f_46c5
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    inc a
    cp $08
    ld [hl], a
    jr nz, jr_03f_4951

    xor a
    ld [hl+], a
    ld a, [hl]
    xor $01
    ld [hl], a

jr_03f_4951:
    call Call_03f_4a99
    ld hl, $0100
    add hl, bc
    dec [hl]
    ret nz

    jp Jump_03f_4835


    ld hl, $0100
    add hl, bc
    ld [hl], $20
    ld hl, $0001
    add hl, bc
    ld [hl], $09
    call Call_03f_482e
    jp c, Jump_03f_4835

    call Call_03f_46c5
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    inc a
    cp $08
    ld [hl], a
    jr nz, jr_03f_4988

    xor a
    ld [hl], a
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    call Call_03f_4994
    ld [hl], a

jr_03f_4988:
    call Call_03f_4a99
    ld hl, $0100
    add hl, bc
    dec [hl]
    ret nz

    jp Jump_03f_4835


Call_03f_4994:
    push hl
    ld hl, $49ac
    ld d, a

jr_03f_4999:
    ld a, [hl+]
    cp d
    jr nz, jr_03f_4999

    ld a, [hl]
    pop hl
    ret


    push hl
    ld hl, $49b4
    ld d, a

jr_03f_49a5:
    ld a, [hl-]
    cp d
    jr nz, jr_03f_49a5

    ld a, [hl]
    pop hl
    ret


    nop
    ld [$0c04], sp
    nop
    ld [$0c04], sp

Jump_03f_49b4:
    ld hl, $0100
    add hl, bc
    ld [hl], $08
    ld hl, $0001
    add hl, bc
    ld [hl], $03
    call Call_03f_4a38
    call Call_03f_4a4b
    call Call_03f_4a7e
    call Call_03f_4a99
    ld hl, $0100
    add hl, bc
    dec [hl]
    ret nz

    call Call_03f_4a75
    call Call_03f_4cb2
    ld hl, $0001
    add hl, bc
    ld [hl], $01
    ret


Jump_03f_49df:
    ld hl, $0100
    add hl, bc
    ld [hl], $04
    ld hl, $0001
    add hl, bc
    ld [hl], $05
    call Call_03f_4a38
    call Call_03f_4a59
    call Call_03f_4a7e
    call Call_03f_4a99
    ld hl, $0100
    add hl, bc
    dec [hl]
    ret nz

    call Call_03f_4a75
    call Call_03f_4cb2
    ld hl, $0001
    add hl, bc
    ld [hl], $01
    ret


Jump_03f_4a0a:
    ld hl, $0100
    add hl, bc
    ld [hl], $08
    ld hl, $0001
    add hl, bc
    ld [hl], $04
    call Call_03f_4a38
    call Call_03f_4a38
    call Call_03f_4a59
    call Call_03f_4a7e
    call Call_03f_4a99
    ld hl, $0100
    add hl, bc
    dec [hl]
    ret nz

    call Call_03f_4a75
    call Call_03f_4cb2
    ld hl, $0001
    add hl, bc
    ld [hl], $01
    ret


Call_03f_4a38:
    ld hl, $0003
    add hl, bc
    ld e, [hl]
    inc hl
    inc hl
    ld d, [hl]
    ld hl, HeaderLogo
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    add d
    ld [hl], a
    ret


Call_03f_4a4b:
    ld a, [$d6ff]
    cp $01
    jr nz, jr_03f_4a68

    ld a, [$d735]
    bit 6, a
    jr nz, jr_03f_4a68

Call_03f_4a59:
    ld hl, $0003
    add hl, bc
    ld a, [hl+]
    add a
    add a
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    add a
    add a
    add [hl]
    ld [hl], a
    ret


jr_03f_4a68:
    ld hl, $0003
    add hl, bc
    ld a, [hl+]
    add a
    add [hl]
    ld [hl+], a
    ld a, [hl+]
    add a
    add [hl]
    ld [hl+], a
    ret


Call_03f_4a75:
    ld hl, $0003
    add hl, bc
    xor a
    ld [hl+], a
    inc hl
    ld [hl], a
    ret


Call_03f_4a7e:
    call Call_03f_4dad
    ld d, $02
    jr nc, jr_03f_4a87

    ld d, $05

jr_03f_4a87:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    inc a
    cp d
    jr nz, jr_03f_4a91

    xor a

jr_03f_4a91:
    ld [hl+], a
    ret nz

    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    ret


Call_03f_4a99:
    ld a, [$d42f]
    bit 3, a
    jr nz, jr_03f_4ad1

    ld hl, $010e
    add hl, bc
    ld a, [hl]
    dec a
    swap a
    ld d, a
    ld a, [$d735]
    bit 7, a
    jr nz, jr_03f_4ad8

    ld hl, $0009
    add hl, bc
    ld a, [hl]
    or d
    ld d, a
    ld a, [$cfc3]
    bit 0, a
    jr z, jr_03f_4ac4

    call Call_03f_4ae2
    ret c

    jr jr_03f_4acb

jr_03f_4ac4:
    ld hl, $0008
    add hl, bc
    ld a, d
    or [hl]
    ld d, a

jr_03f_4acb:
    ld hl, $0002
    add hl, bc
    ld [hl], d
    ret


jr_03f_4ad1:
    ld hl, $0002
    add hl, bc
    ld [hl], $ff
    ret


jr_03f_4ad8:
    ld a, [$c102]
    and $0f
    or d
    ld [$c1f2], a
    ret


Call_03f_4ae2:
    ld hl, HeaderLogo
    add hl, bc
    ld a, [$d360]
    add $04
    cp [hl]
    jr nz, jr_03f_4aff

    inc hl
    ld a, [$d361]
    add $04
    cp [hl]
    jr nz, jr_03f_4aff

    ld hl, $0002
    add hl, bc
    ld [hl], $ff
    scf
    ret


jr_03f_4aff:
    and a
    ret


    push bc
    push de
    push hl
    ld bc, $c1f0
    ld a, [$d361]
    add $04
    ld d, a
    ld a, [$d360]
    add $04
    ld e, a
    ld hl, HeaderLogo
    add hl, bc
    ld a, [hl]
    sub e
    and a
    jr z, jr_03f_4b30

    cp $ff
    jr z, jr_03f_4b26

    cp $01
    jr z, jr_03f_4b26

    jr jr_03f_4b48

jr_03f_4b26:
    ld hl, $0105
    add hl, bc
    ld a, [hl]
    sub d
    jr z, jr_03f_4b43

    jr jr_03f_4b48

jr_03f_4b30:
    ld hl, $0105
    add hl, bc
    ld a, [hl]
    sub d
    cp $ff
    jr z, jr_03f_4b43

    cp $01
    jr z, jr_03f_4b43

    and a
    jr z, jr_03f_4b43

    jr jr_03f_4b48

jr_03f_4b43:
    pop hl
    pop de
    pop bc
    scf
    ret


jr_03f_4b48:
    pop hl
    pop de
    pop bc
    xor a
    ret


    call Call_03f_4b52
    ld e, a
    ret


Call_03f_4b52:
    ld bc, $c1f0
    ld a, [$d361]
    add $04
    ld d, a
    ld a, [$d360]
    add $04
    ld e, a
    ld hl, HeaderLogo
    add hl, bc
    ld a, [hl]
    cp e
    jr z, jr_03f_4b71

    jr nc, jr_03f_4b6e

    ld a, $04
    ret


jr_03f_4b6e:
    ld a, $00
    ret


jr_03f_4b71:
    ld hl, $0105
    add hl, bc
    ld a, [hl]
    cp d
    jr z, jr_03f_4b81

    jr nc, jr_03f_4b7e

    ld a, $08
    ret


jr_03f_4b7e:
    ld a, $0c
    ret


jr_03f_4b81:
    ld a, $ff
    ret


Call_03f_4b84:
    push bc
    ld hl, $d436
    ld [hl], $ff
    inc hl
    ld bc, $0010
    xor a
    call Call_000_166e
    pop bc
    ret


Call_03f_4b94:
    ld hl, $d436
    inc [hl]
    ld e, [hl]
    ld d, $00
    ld hl, $d437
    add hl, de
    ld [hl], a
    ret


Call_03f_4ba1:
    call Call_03f_4b84
    call Call_03f_4bac
    ret c

    call Call_03f_4b94
    ret


Call_03f_4bac:
    ld bc, $c1f0
    ld hl, HeaderLogo
    add hl, bc
    ld a, [$d360]
    add $04
    sub [hl]
    jr z, jr_03f_4bd7

    jr c, jr_03f_4bca

    call Call_03f_4c01
    jr c, jr_03f_4bc6

    ld a, $05
    and a
    ret


jr_03f_4bc6:
    ld a, $01
    and a
    ret


jr_03f_4bca:
    call Call_03f_4c01
    jr c, jr_03f_4bd3

    ld a, $06
    and a
    ret


jr_03f_4bd3:
    ld a, $02
    and a
    ret


jr_03f_4bd7:
    ld hl, $0105
    add hl, bc
    ld a, [$d361]
    add $04
    sub [hl]
    jr z, jr_03f_4bff

    jr c, jr_03f_4bf2

    call Call_03f_4c01
    jr c, jr_03f_4bee

    ld a, $08
    and a
    ret


jr_03f_4bee:
    ld a, $04
    and a
    ret


jr_03f_4bf2:
    call Call_03f_4c01
    jr c, jr_03f_4bfb

    ld a, $07
    and a
    ret


jr_03f_4bfb:
    ld a, $03
    and a
    ret


jr_03f_4bff:
    scf
    ret


Call_03f_4c01:
    jr nc, jr_03f_4c05

    cpl
    inc a

jr_03f_4c05:
    cp $02
    ret


    call Call_03f_4c23
    ret nc

    ld a, [$d735]
    bit 6, a
    jr nz, jr_03f_4c1b

    call Call_03f_4c42
    ret c

    call Call_03f_4b94
    ret


jr_03f_4c1b:
    call Call_03f_4c64
    ret c

    call Call_03f_4b94
    ret


Call_03f_4c23:
    ld a, [$d42f]
    bit 5, a
    jr nz, jr_03f_4c40

    ld a, [$d42f]
    bit 7, a
    jr nz, jr_03f_4c40

    ld a, [$d471]
    bit 7, a
    jr z, jr_03f_4c40

    ld a, [$d6ff]
    and a
    jr nz, jr_03f_4c40

    scf
    ret


jr_03f_4c40:
    and a
    ret


Call_03f_4c42:
    xor a
    ld a, [$d529]
    bit 3, a
    jr nz, jr_03f_4c58

    bit 2, a
    jr nz, jr_03f_4c5b

    bit 1, a
    jr nz, jr_03f_4c5e

    bit 0, a
    jr nz, jr_03f_4c61

    scf
    ret


jr_03f_4c58:
    ld a, $02
    ret


jr_03f_4c5b:
    ld a, $01
    ret


jr_03f_4c5e:
    ld a, $03
    ret


jr_03f_4c61:
    ld a, $04
    ret


Call_03f_4c64:
    ld hl, $d42f
    bit 6, [hl]
    jr z, jr_03f_4c6e

    res 6, [hl]
    ret


jr_03f_4c6e:
    set 6, [hl]
    xor a
    ld a, [$d529]
    bit 3, a
    jr nz, jr_03f_4c86

    bit 2, a
    jr nz, jr_03f_4c89

    bit 1, a
    jr nz, jr_03f_4c8c

    bit 0, a
    jr nz, jr_03f_4c8f

    scf
    ret


jr_03f_4c86:
    ld a, $06
    ret


jr_03f_4c89:
    ld a, $05
    ret


jr_03f_4c8c:
    ld a, $07
    ret


jr_03f_4c8f:
    ld a, $08
    ret


Call_03f_4c92:
    ld hl, $d436
    ld a, [hl]
    cp $ff
    jr z, jr_03f_4cb0

    and a
    jr z, jr_03f_4cb0

    dec [hl]
    ld e, a
    ld d, $00
    ld hl, $d437
    add hl, de
    inc e
    ld a, $ff

jr_03f_4ca8:
    ld d, [hl]
    ld [hl-], a
    ld a, d
    dec e
    jr nz, jr_03f_4ca8

    and a
    ret


jr_03f_4cb0:
    scf
    ret


Call_03f_4cb2:
    call Call_03f_4d01
    and a
    jr z, jr_03f_4cbf

    dec a
    and $03
    add a
    add a
    jr jr_03f_4cea

jr_03f_4cbf:
    ld a, [$d360]
    add $04
    ld d, a
    ld a, [$d361]
    add $04
    ld e, a
    ld a, [$c2f4]
    cp d
    jr z, jr_03f_4cd9

    ld a, $00
    jr c, jr_03f_4cea

    ld a, $04
    jr jr_03f_4cea

jr_03f_4cd9:
    ld a, [$c2f5]
    cp e
    jr z, jr_03f_4ce7

    ld a, $0c
    jr c, jr_03f_4cea

    ld a, $08
    jr jr_03f_4cea

jr_03f_4ce7:
    ld a, [$c109]

jr_03f_4cea:
    ld [$c1f9], a
    ret


Call_03f_4cee:
    ld hl, $d436
    ld a, [hl]
    cp $ff
    jr z, jr_03f_4cff

    ld e, a
    ld d, $00
    ld hl, $d437
    add hl, de
    ld a, [hl]
    ret


jr_03f_4cff:
    xor a
    ret


Call_03f_4d01:
    ld hl, $d436
    ld a, [hl]
    cp $ff
    jr z, jr_03f_4d15

    and a
    jr z, jr_03f_4d15

    ld e, a
    ld d, $00
    ld hl, $d437
    add hl, de
    ld a, [hl]
    ret


jr_03f_4d15:
    xor a
    ret


Call_03f_4d17:
    ld a, [$d436]
    cp $ff
    ret z

    cp $02
    jr nc, jr_03f_4d23

    and a
    ret


jr_03f_4d23:
    scf
    ret


Call_03f_4d25:
    ld h, $c2
    ldh a, [$da]
    add $04
    ld l, a
    ld b, [hl]
    ld a, [$d360]
    cp b
    jr z, jr_03f_4d3a

    jr nc, jr_03f_4d63

    add $08
    cp b
    jr c, jr_03f_4d63

jr_03f_4d3a:
    inc l
    ld b, [hl]
    ld a, [$d361]
    cp b
    jr z, jr_03f_4d49

    jr nc, jr_03f_4d63

    add $09
    cp b
    jr c, jr_03f_4d63

jr_03f_4d49:
    call Call_03f_4d83
    ld d, $60
    ld a, [hl+]
    ld e, a
    cp d
    jr nc, jr_03f_4d63

    ld a, [hl-]
    cp d
    jr nc, jr_03f_4d63

    ld bc, $ffec
    add hl, bc
    ld a, [hl+]
    cp d
    jr nc, jr_03f_4d63

    ld a, [hl]
    cp d
    jr c, jr_03f_4d6f

jr_03f_4d63:
    ld h, $c1
    ldh a, [$da]
    add $02
    ld l, a
    ld [hl], $ff
    scf
    jr jr_03f_4d82

jr_03f_4d6f:
    ld h, $c2
    ldh a, [$da]
    add $07
    ld l, a
    ld a, [$d534]
    cp e
    ld a, $00
    jr nz, jr_03f_4d80

    ld a, $80

jr_03f_4d80:
    ld [hl], a
    and a

jr_03f_4d82:
    ret


Call_03f_4d83:
    ld h, $c1
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [hl+]
    add $04
    and $f0
    srl a
    ld c, a
    ld b, $00
    inc l
    ld a, [hl]
    add $02
    srl a
    srl a
    srl a
    add $14
    ld d, $00
    ld e, a
    ld hl, $c3a0
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, de
    ret


Call_03f_4dad:
    push bc
    push af
    ld a, [$d46f]
    cp $50
    pop bc
    ld a, b
    pop bc
    ret


Call_03f_4db8:
    ld hl, $d163
    ld de, $d176
    ld bc, $d272
    push hl

jr_03f_4dc2:
    pop hl
    ld a, [hl+]
    push hl
    inc a
    jr z, jr_03f_4e0a

    cp $55
    jr nz, jr_03f_4ded

    ld h, d
    ld l, e
    ld a, [$d358]
    cp [hl]
    jr nz, jr_03f_4ded

    inc hl
    ld a, [$d359]
    cp [hl]
    jr nz, jr_03f_4ded

    push de
    push bc
    ld hl, $d157
    ld d, $06

jr_03f_4de2:
    dec d
    jr z, jr_03f_4dfb

    ld a, [bc]
    inc bc
    cp [hl]
    inc hl
    jr z, jr_03f_4de2

    pop bc
    pop de

jr_03f_4ded:
    ld hl, $002c
    add hl, de
    ld d, h
    ld e, l
    ld hl, $000b
    add hl, bc
    ld b, h
    ld c, l
    jr jr_03f_4dc2

jr_03f_4dfb:
    pop bc
    pop de
    ld h, d
    ld l, e
    ld bc, $fff5
    add hl, bc
    ld a, [hl+]
    or [hl]
    jr z, jr_03f_4e0a

    pop hl
    scf
    ret


jr_03f_4e0a:
    pop hl
    and a
    ret


    ld hl, $da95
    ld bc, $0021
    ld de, $dd29
    jr jr_03f_4e21

Call_03f_4e18:
    ld hl, $d16a
    ld bc, $002c
    ld de, $d272

jr_03f_4e21:
    ld a, [$cf91]
    call Call_000_3a74
    ld a, [hl]
    cp $54
    jr nz, jr_03f_4e56

    ld bc, $000c
    add hl, bc
    ld a, [$d358]
    cp [hl]
    jr nz, jr_03f_4e56

    inc hl
    ld a, [$d359]
    cp [hl]
    jr nz, jr_03f_4e56

    ld h, d
    ld l, e
    ld a, [$cf91]
    ld bc, $000b
    call Call_000_3a74
    ld de, $d157
    ld b, $06

jr_03f_4e4d:
    dec b
    jr z, jr_03f_4e58

    ld a, [de]
    inc de
    cp [hl]
    inc hl
    jr z, jr_03f_4e4d

jr_03f_4e56:
    and a
    ret


jr_03f_4e58:
    scf
    ret


    push de
    call Call_03f_4db8
    pop de
    ret nc

    ld a, d
    cp $80
    ld a, [$d470]
    jr c, jr_03f_4e6c

    cp d
    jr c, jr_03f_4e6e

    ret


jr_03f_4e6c:
    cp d
    ret c

jr_03f_4e6e:
    ld a, d
    ld [$d470], a
    ret


    xor a
    ld [$cf91], a
    ld hl, $d162

jr_03f_4e7a:
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_03f_4ea9

    push hl
    call Call_03f_4e18
    pop hl
    jr nc, jr_03f_4e9e

    ld a, [$cf91]
    ld hl, $d16b
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl+]
    or [hl]
    ld d, a
    inc hl
    inc hl
    ld a, [hl]
    and a
    jr nz, jr_03f_4ea7

    jr jr_03f_4ea9

jr_03f_4e9e:
    ld a, [$cf91]
    inc a
    ld [$cf91], a
    jr jr_03f_4e7a

jr_03f_4ea7:
    scf
    ret


jr_03f_4ea9:
    and a
    ret


    ld hl, $d163
    ld de, $d172
    ld bc, $d272
    push hl

jr_03f_4eb5:
    pop hl
    ld a, [hl+]
    push hl
    inc a
    jr z, jr_03f_4f09

    cp $55
    jr nz, jr_03f_4ef6

    ld h, d
    ld l, e
    push hl
    push bc
    ld b, $04

jr_03f_4ec5:
    ld a, [hl+]
    cp $39
    jr z, jr_03f_4ed1

    dec b
    jr nz, jr_03f_4ec5

    pop bc
    pop hl
    jr jr_03f_4ef6

jr_03f_4ed1:
    pop bc
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [$d358]
    cp [hl]
    jr nz, jr_03f_4ef6

    inc hl
    ld a, [$d359]
    cp [hl]
    jr nz, jr_03f_4ef6

    push de
    push bc
    ld hl, $d157
    ld d, $06

jr_03f_4eeb:
    dec d
    jr z, jr_03f_4f04

    ld a, [bc]
    inc bc
    cp [hl]
    inc hl
    jr z, jr_03f_4eeb

    pop bc
    pop de

jr_03f_4ef6:
    ld hl, $002c
    add hl, de
    ld d, h
    ld e, l
    ld hl, $000b
    add hl, bc
    ld b, h
    ld c, l
    jr jr_03f_4eb5

jr_03f_4f04:
    pop bc
    pop de
    pop hl
    scf
    ret


jr_03f_4f09:
    pop hl
    and a
    ret


    ld a, [$d435]
    and a
    ret z

    ldh a, [$8c]
    cp $0f
    ret nz

    call Call_03f_4f20
    xor a
    ldh [$8c], a
    ld [$d435], a
    ret


Call_03f_4f20:
    ld a, $d4
    ldh [$8c], a
    xor a
    ld [$d527], a
    ld a, $01
    ld [$cf0c], a
    call Call_000_2817
    xor a
    ld [$cf0c], a
    ret


Call_03f_4f35:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]

jr_03f_4f3d:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_03f_4f53

    ld c, a
    ld b, $00
    ld hl, $4f54
    add hl, bc
    add hl, bc
    ld a, [hl+]

Jump_03f_4f4c:
    ld h, [hl]
    ld l, a
    call Call_000_3e98
    jr jr_03f_4f3d

jr_03f_4f53:
    ret


    ld l, d
    ld c, a
    ld l, e
    ld c, a
    ld [hl], a
    ld c, a
    adc l
    ld c, a
    or b
    ld c, a
    ret nc

    ld e, c
    rst $00
    ld c, a
    cp [hl]
    ld c, a
    add sp, $4f
    jp hl


    ld c, a
    ld l, d
    ld c, a
    ret


    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    push de
    call Call_000_3c36
    pop de
    ret


    ld a, [de]
    inc de
    push de
    ld e, a
    nop
    call Call_03f_4f81
    pop de
    ret


Call_03f_4f81:
    cp $ff
    ret z

    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ret


    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    ld a, [de]
    inc de
    push de
    call Call_03f_4fa2
    pop de
    pop af
    ld [$cfca], a
    ret


Call_03f_4fa2:
    ld [$cd50], a
    ld a, $0f
    ld [$cd4f], a
    ld a, $4c
    call Call_000_3eb4
    ret


    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    push de

jr_03f_4fb7:
    ld b, $3f
    call Call_03f_52a1
    pop de
    ret


    ld a, [de]
    inc de
    push de
    ld c, a
    call Call_000_372f
    pop de
    ret


    ld a, [de]
    inc de
    push de
    ld e, a
    ld d, $00
    ld hl, $4fda
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3e98
    pop de
    ret


    xor e
    ld e, b
    add e
    ld [hl], $f8
    ld e, b
    ld d, d
    jr c, jr_03f_4fb7

    ld e, b
    pop hl
    ld e, b
    xor $58
    ret


    push de
    call Call_03f_4ff2
    call Call_000_231c
    pop de
    ret


Call_03f_4ff2:
    ld a, [$c109]
    xor $04
    ld [$c1f9], a
    ret


Call_03f_4ffb:
    nop
    nop
    nop
    nop
    nop
    ret


    ld a, e
    jr jr_03f_500f

    call Call_03f_505e
    jr c, jr_03f_500f

    call Call_03f_5978
    call Call_03f_4ffb

jr_03f_500f:
    ld [$d447], a
    ld hl, $5019
    call Call_03f_4f35
    ret


    dec d
    ld d, c
    ld b, c
    ld d, c
    ld d, $51
    ld h, b
    ld d, c
    ld [hl], $51
    ld c, l
    ld d, c
    ld d, e
    ld d, c
    jr z, jr_03f_507a

    ld b, a
    ld d, c
    ld h, [hl]
    ld d, c
    ld e, $51
    ld [hl], e
    ld d, c
    ld a, d
    ld d, c
    add b
    ld d, c
    adc c
    ld d, c
    sub c
    ld d, c
    sub a
    ld d, c
    sbc l
    ld d, c
    and e
    ld d, c
    xor c
    ld d, c
    or c
    ld d, c
    cp c
    ld d, c
    pop bc
    ld d, c
    rst $00
    ld d, c
    rst $08
    ld d, c
    rst $10
    ld d, c
    rst $18
    ld d, c
    db $eb
    ld d, c
    pop af
    ld d, c
    rst $30
    ld d, c
    db $fc
    ld d, c
    ld a, [bc]
    ld d, d
    inc de
    ld d, d
    ld e, l
    ld d, b
    rst $38

Call_03f_505e:
    ld a, [$d35d]
    cp $5a
    jr nz, jr_03f_5077

    ld hl, $d492
    bit 7, [hl]
    ld a, $1d
    jr z, jr_03f_50c9

    call Call_000_154a
    ld a, $1e
    jr nz, jr_03f_50c9

    jr jr_03f_5096

jr_03f_5077:
    ld a, [$d35d]

jr_03f_507a:
    cp $3a
    jr nz, jr_03f_5087

    call Call_000_154a
    ld a, $1a
    jr nz, jr_03f_50c9

    jr jr_03f_5096

jr_03f_5087:
    ld hl, $64ae
    ld b, $3c
    call Call_000_3e84
    ld a, e
    cp $ff
    jr nz, jr_03f_50c9

    jr jr_03f_5096

jr_03f_5096:
    call Call_03f_50d0
    ld a, $0b
    jr c, jr_03f_50c9

    ld hl, $4e73
    ld b, $3f
    call Call_000_3e84
    ld a, $1c
    jr c, jr_03f_50c9

    ld a, [$d35d]
    cp $8e
    jr c, jr_03f_50b6

    cp $95
    ld a, $16
    jr c, jr_03f_50c9

jr_03f_50b6:
    ld a, [$d49b]
    and a
    jr z, jr_03f_50c7

    dec a
    ld c, a
    ld b, $00
    ld hl, $50cb
    add hl, bc
    ld a, [hl]
    jr jr_03f_50c9

jr_03f_50c7:
    and a
    ret


jr_03f_50c9:
    scf
    ret


    ld [de], a
    dec d
    rla
    jr @+$1b

Call_03f_50d0:
    xor a
    ld [$cf91], a

jr_03f_50d4:
    ld a, [$cf91]
    ld c, a
    ld b, $00
    ld hl, $d163
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_03f_5113

    cp $54
    jr nz, jr_03f_5104

    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_03f_5104

    ld a, [$cf91]
    ld hl, $d16e
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl]
    and $07
    jr z, jr_03f_5113

    jr jr_03f_5111

jr_03f_5104:
    ld a, [$cf91]
    cp $05
    jr z, jr_03f_5113

    inc a
    ld [$cf91], a
    jr jr_03f_50d4

jr_03f_5111:
    scf
    ret


jr_03f_5113:
    and a
    ret


    rst $38
    ld [$0203], sp
    ld [bc], a
    ld [hl+], a
    dec b
    ld [bc], a
    rst $38
    ld [$0006], sp
    inc bc
    inc b
    ld [bc], a
    inc b
    dec b
    ld a, [bc]
    rst $38
    ld [$0006], sp
    inc b
    inc h
    ld d, d
    ld [bc], a
    nop
    inc b
    inc h
    ld d, d
    dec b
    rlca
    rst $38
    ld [$0006], sp
    inc b
    jr nc, jr_03f_518e

    ld [bc], a
    inc e
    dec b
    inc b
    rst $38
    ld [$ff02], sp
    dec b
    ld bc, $08ff
    ld [bc], a
    ld h, $05
    ld [$08ff], sp
    ld [bc], a
    ld e, $05
    dec b
    rst $38
    ld [$0006], sp
    ld [bc], a
    rst $38
    inc b
    ld e, $52
    inc bc
    inc bc
    dec b
    ld b, $ff
    ld [$2702], sp
    dec b
    inc bc
    rst $38
    ld [$0006], sp
    ld [bc], a
    dec b
    inc b
    jr jr_03f_51c0

    inc bc
    inc bc
    dec b
    add hl, bc
    rst $38
    inc bc
    ld b, $02
    inc h
    dec b
    dec bc
    rst $38
    ld [$ff02], sp
    dec b
    inc c
    rst $38
    ld [$0006], sp
    inc b
    ld e, $52
    dec b
    dec c
    rst $38
    ld [$0503], sp
    ld [bc], a
    add hl, bc

jr_03f_518e:
    dec b
    ld c, $ff
    ld [$2102], sp
    dec b
    rrca
    rst $38
    ld [$2002], sp
    dec b
    db $10
    rst $38
    ld [$0c02], sp
    dec b
    ld de, $08ff
    ld [bc], a
    rst $38
    dec b
    ld [de], a
    rst $38
    ld [$0403], sp
    ld [bc], a
    jr nz, jr_03f_51b4

    inc de
    rst $38
    ld [$0403], sp

jr_03f_51b4:
    ld [bc], a
    inc b
    dec b
    inc d
    rst $38
    ld [$0703], sp
    ld [bc], a
    rst $38
    dec b
    dec d

jr_03f_51c0:
    rst $38
    ld [$0302], sp
    dec b
    ld d, $ff
    ld [$1202], sp
    dec b
    rla
    ld b, $02
    rst $38
    ld [$0003], sp
    ld [bc], a
    rst $38
    dec b
    jr @+$01

    ld [$0503], sp
    ld [bc], a
    ld [hl+], a
    dec b
    add hl, de
    rst $38
    ld [$0603], sp
    ld [bc], a
    inc h
    dec b
    ld a, [de]
    ld b, $02
    ld b, $04
    rst $38
    ld [$0802], sp
    dec b
    dec de
    rst $38
    ld [$0e02], sp
    dec b
    inc e
    rst $38
    ld [bc], a
    inc b
    dec b
    ld a, [bc]
    rst $38
    add hl, bc
    inc bc
    inc b
    ld [bc], a
    inc b
    dec b
    inc d
    ld b, $02
    ld b, $01
    ld b, $05
    rst $38
    ld [bc], a
    ld [de], a
    dec b
    rla
    ld b, $02
    ld b, $06
    rst $38
    ld [bc], a
    add hl, de
    dec b
    rla
    rst $38
    nop
    add hl, sp
    ld bc, $1e3e
    ccf
    nop
    add hl, sp
    nop
    ld a, $1e
    ccf
    nop
    inc a
    rlca
    cpl
    inc a
    rlca
    cpl
    ccf
    dec sp
    rra
    inc bc
    ccf
    nop
    inc a
    rrca
    rra
    inc a
    rrca
    rra
    ccf
    nop
    dec b
    rlca
    add hl, sp
    nop
    dec b
    rlca
    ld b, $07
    add hl, sp
    nop
    ld b, $07
    ld [$3907], sp
    nop
    ld [$0707], sp
    rlca
    add hl, sp
    nop
    rlca
    rlca
    ccf
    ld a, $40
    ldh [$fc], a
    call Call_03f_58ab
    call Call_03f_5266
    and a
    jr z, jr_03f_5262

    call Call_000_159b

jr_03f_5262:
    xor a
    ldh [$fc], a
    ret


Call_03f_5266:
    ld a, [$c2f4]
    ld e, a
    ld a, [$c2f5]
    ld d, a
    ld a, [$d360]
    add $04
    cp e
    jr z, jr_03f_5280

    jr nc, jr_03f_527e

    ld hl, $5294
    ld a, $01
    ret


jr_03f_527e:
    xor a
    ret


jr_03f_5280:
    ld a, [$d361]
    add $04
    cp d
    jr c, jr_03f_528e

    ld hl, $5299
    ld a, $02
    ret


jr_03f_528e:
    ld hl, $529d
    ld a, $03
    ret


    nop
    ld [hl], $2b
    inc [hl]
    ccf
    nop
    ld [hl], $34
    ccf
    nop
    ld [hl], $33
    ccf

Call_03f_52a1:
    ld a, b
    ld [$d449], a
    ld a, l
    ld [$d44a], a
    ld a, h
    ld [$d44b], a
    call Call_03f_52c1

jr_03f_52b0:
    call Call_03f_52f5
    jr nc, jr_03f_52ba

    call Call_03f_5329
    jr jr_03f_52b0

jr_03f_52ba:
    call Call_03f_52c1
    call Call_000_1e64
    ret


Call_03f_52c1:
    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    push hl
    push de
    push bc
    ld hl, $c100
    ld de, $c1f0
    ld c, $10
    call Call_03f_52eb
    ld hl, $c200
    ld de, $c2f0
    ld c, $10
    call Call_03f_52eb
    pop bc
    pop de
    pop hl
    pop af
    ld [$cfca], a
    ret


Call_03f_52eb:
jr_03f_52eb:
    ld b, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, b
    ld [de], a
    inc de
    dec c
    jr nz, jr_03f_52eb

    ret


Call_03f_52f5:
    call Call_000_157c
    cp $3f
    ret z

    ld c, a
    ld b, $00
    ld hl, $53b0
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$d44e], a
    ld a, [hl+]
    cp $80
    jr nz, jr_03f_5311

    call Call_000_157c

jr_03f_5311:
    ld [$d44d], a
    ld a, [hl+]
    ld [$d450], a
    ld a, [hl+]
    cp $80
    jr nz, jr_03f_5320

    call Call_000_157c

jr_03f_5320:
    ld [$d44f], a
    xor a
    ld [$d451], a
    scf
    ret


Call_03f_5329:
    xor a
    ld [$d44c], a
    ld [$d457], a
    ld [$d458], a
    ld a, [$c207]
    push af

jr_03f_5337:
    ld bc, $c100
    ld a, [$d44e]
    ld hl, $54ac
    call Call_03f_5365
    ld a, [$d450]
    ld hl, $565c
    call Call_03f_5365
    call Call_03f_536e
    call Call_03f_539d
    call Call_000_1e64
    call Call_000_1e64
    ld hl, $d44c
    bit 7, [hl]
    jr z, jr_03f_5337

    pop af
    ld [$c207], a
    scf
    ret


Call_03f_5365:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_03f_536e:
    ld hl, $0002
    add hl, bc
    ld a, [$d452]
    ld [hl], a
    ld a, [$d454]
    ld d, a
    ld a, [$d456]
    add d
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld a, [$d453]
    ld d, a
    ld a, [$d455]
    add d
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $d44c
    bit 6, [hl]
    ret z

    ld hl, $0107
    add hl, bc
    ld [hl], $00
    ret


Call_03f_539d:
    ld hl, $d44c
    bit 6, [hl]
    res 6, [hl]
    ld hl, $d735
    res 6, [hl]
    ret z

    set 6, [hl]
    call $57f3
    ret


    ld bc, $0000
    nop
    inc bc
    add b
    ld bc, $0400
    add b
    ld bc, $0500
    add b
    ld bc, $0600
    add b
    ld bc, $0700
    add b
    ld bc, $0800
    add b
    ld bc, $0900
    add b
    ld bc, $0a00
    add b
    ld bc, $0300
    add b
    ld b, $00
    inc b
    add b
    ld b, $00
    dec b
    add b
    ld b, $00
    ld b, $80
    ld b, $00
    rlca
    add b
    ld b, $00
    ld [$0680], sp
    nop
    add hl, bc
    add b
    ld b, $00
    ld a, [bc]
    add b
    ld b, $00
    inc bc
    add b
    inc bc
    add b
    inc b
    add b
    inc bc
    add b
    dec b
    add b
    inc bc
    add b
    ld b, $80
    inc bc
    add b
    rlca
    add b
    inc bc
    add b
    ld [$0380], sp
    add b
    add hl, bc
    add b
    inc bc
    add b
    ld a, [bc]
    add b
    inc bc
    add b
    inc bc
    add b
    rlca
    add b
    inc b
    add b
    rlca
    add b
    dec b
    add b
    rlca
    add b
    ld b, $80
    rlca
    add b
    dec bc
    daa
    ld [bc], a
    nop
    inc c
    daa
    ld [bc], a
    nop
    dec c
    daa
    ld [bc], a
    nop
    ld c, $27
    ld [bc], a
    nop
    rrca
    daa
    ld [bc], a
    nop
    db $10
    daa
    ld [bc], a
    nop
    ld de, $0227
    nop
    ld [de], a
    daa
    ld [bc], a
    nop
    dec bc
    rrca
    ld [bc], a
    nop
    inc c
    rrca
    ld [bc], a
    nop
    dec c
    rrca
    ld [bc], a
    nop
    ld c, $0f
    ld [bc], a
    nop
    rrca
    rrca
    ld [bc], a
    nop
    db $10
    rrca
    ld [bc], a
    nop
    ld de, $020f
    nop
    ld [de], a
    rrca
    ld [bc], a
    nop
    dec bc
    rrca
    ld [$0c17], sp
    rrca
    ld [$0d17], sp
    rrca
    ld [$0e17], sp
    rrca
    ld [$0f17], sp
    rrca
    ld [$1017], sp
    rrca
    ld [$1117], sp
    rrca
    ld [$1217], sp
    rrca
    ld [$1317], sp
    rrca
    ld b, $00
    inc d
    rrca
    ld b, $00
    dec d
    rrca
    ld b, $00
    ld d, $0f
    ld b, $00
    ld [bc], a
    add b
    inc b
    nop
    ld [bc], a
    add b
    dec b
    nop
    ld [bc], a
    add b
    inc bc
    add b
    ld [bc], a
    add b
    rlca
    add b
    ld [bc], a
    add b
    add hl, bc
    add b
    ld [bc], a
    add b
    ld b, $00
    push hl
    ld d, h
    jp hl


    ld d, h
    inc b
    ld d, l
    inc c
    ld d, l
    ld de, $1855
    ld d, l
    inc l
    ld d, l
    ld b, b
    ld d, l
    ld d, e
    ld d, l
    ld h, [hl]
    ld d, l
    ld a, c
    ld d, l
    or c
    ld d, l
    or l
    ld d, l
    cp c
    ld d, l
    cp l
    ld d, l
    pop bc
    ld d, l
    push bc
    ld d, l
    ret


    ld d, l
    call $ea55
    ld d, l
    xor $55
    ld a, [c]
    ld d, l
    or $55
    push hl
    ld d, h

Call_03f_54dc:
    ld a, [$d44c]
    set 7, a
    ld [$d44c], a
    ret


    call Call_03f_54dc
    ret


    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$d454], a
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    ld [$d453], a
    xor a
    ld [$d456], a
    ld [$d455], a
    call Call_03f_54dc
    ret


    call Call_03f_5775
    ret nz

    call Call_03f_54dc
    ret


    call Call_03f_575f
    jr jr_03f_558c

    call Call_03f_575f
    xor $04
    jr jr_03f_558c

    call Call_03f_575f
    ld hl, $5523
    call Call_03f_55a0
    jr jr_03f_558c

    nop
    inc c
    inc b
    ld [$0008], sp
    inc c
    inc b
    rst $38
    call Call_03f_575f
    ld hl, $5537
    call Call_03f_55a0
    jr jr_03f_558c

    nop
    ld [$0c04], sp
    ld [$0c04], sp
    nop
    rst $38
    call Call_03f_575f
    ld hl, $554b
    call Call_03f_55a0
    jr jr_03f_558c

    nop
    inc d
    inc b
    jr @+$0a

    db $10
    inc c
    inc e
    call Call_03f_575f
    ld hl, $555e
    call Call_03f_55a0
    jr jr_03f_558c

    nop
    db $10
    inc b
    inc e
    ld [$0c18], sp
    inc d
    call Call_03f_575f
    ld hl, $5571
    call Call_03f_55a0
    jr jr_03f_558c

    nop
    inc e
    inc b
    db $10
    ld [$0c14], sp
    jr @-$31

    ld e, a
    ld d, a
    ld hl, $5584

Call_03f_557f:
    call Call_03f_55a0
    jr jr_03f_558c

    nop
    jr jr_03f_558b

    inc d
    ld [$0c1c], sp

jr_03f_558b:
    db $10

jr_03f_558c:
    rrca
    rrca
    and $07
    ld e, a
    call Call_03f_5784
    ld d, a
    call Call_03f_5601
    call Call_03f_5775
    ret nz

    call Call_03f_54dc
    ret


Call_03f_55a0:
    push de
    ld d, a

jr_03f_55a2:
    ld a, [hl+]
    cp d
    jr z, jr_03f_55ad

    inc hl
    cp $ff
    jr nz, jr_03f_55a2

    pop de
    ret


jr_03f_55ad:
    ld a, [hl]
    pop de
    scf
    ret


    ld a, $00
    jr jr_03f_55d1

    ld a, $01
    jr jr_03f_55d1

    ld a, $02
    jr jr_03f_55d1

    ld a, $03
    jr jr_03f_55d1

    ld e, $04
    jr jr_03f_55d5

    ld e, $05
    jr jr_03f_55d5

    ld e, $06
    jr jr_03f_55d5

    ld e, $07
    jr jr_03f_55d5

jr_03f_55d1:
    ld e, a
    call Call_03f_5769

jr_03f_55d5:
    call Call_03f_5784
    ld d, a
    push de
    call Call_03f_5601
    pop de
    call Call_03f_5775
    ret nz

    ld a, e
    call Call_03f_57cb
    call Call_03f_54dc
    ret


    ld a, $00
    jr jr_03f_55fa

    ld a, $01
    jr jr_03f_55fa

    ld a, $02
    jr jr_03f_55fa

    ld a, $03
    jr jr_03f_55fa

jr_03f_55fa:
    call Call_03f_5769
    call Call_03f_54dc
    ret


Call_03f_5601:
    push de
    ld d, $00
    ld hl, $560f
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ld a, d
    jp hl


    rra
    ld d, [hl]
    inc h
    ld d, [hl]
    dec hl
    ld d, [hl]
    ld [hl-], a
    ld d, [hl]
    scf
    ld d, [hl]
    dec a
    ld d, [hl]
    ld b, c
    ld d, [hl]
    ld b, a
    ld d, [hl]
    ld d, $00
    ld e, a
    jr jr_03f_564d

    ld d, $00
    cpl
    inc a
    ld e, a
    jr jr_03f_564d

    cpl
    inc a
    ld d, a
    ld e, $00
    jr jr_03f_564d

    ld d, a
    ld e, $00
    jr jr_03f_564d

    ld e, a
    cpl
    inc a
    ld d, a
    jr jr_03f_564d

    ld e, a
    ld d, a
    jr jr_03f_564d

    cpl
    inc a
    ld e, a
    ld d, a
    jr jr_03f_564d

    ld d, a
    cpl
    inc a
    ld e, a
    jr jr_03f_564d

jr_03f_564d:
    ld a, [$d453]
    add d
    ld [$d453], a
    ld a, [$d454]
    add e
    ld [$d454], a
    ret


    ld a, b
    ld d, [hl]
    and e
    ld d, [hl]
    sbc b
    ld d, [hl]
    db $f4
    ld d, [hl]
    rst $38
    ld d, [hl]
    jr jr_03f_56bf

    adc h
    ld d, [hl]
    add $56
    ret nz

    ld d, [hl]
    ld [c], a
    ld d, [hl]
    adc e
    ld d, [hl]

Call_03f_5672:
    ld hl, $d44c
    set 6, [hl]
    ret


    ld hl, $0007
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_03f_574a
    ld d, a
    call Call_03f_575f
    or d
    ld [$d452], a
    ret


    ret


    call Call_03f_574a
    ld d, a
    call Call_03f_5755
    or d
    ld [$d452], a
    ret


    call Call_03f_574a
    ld d, a
    call Call_03f_575f
    or d
    ld d, a
    jr jr_03f_56ac

    call Call_03f_574a
    ld d, a
    call Call_03f_5755
    or d
    ld d, a

jr_03f_56ac:
    ld hl, $0008
    add hl, bc
    call Call_03f_578e
    jr nz, jr_03f_56b6

    inc [hl]

jr_03f_56b6:
    ld a, [hl]
    rrca
    rrca
    and $03
    or d
    ld [$d452], a

jr_03f_56bf:
    ret


    call Call_03f_575f
    ld d, a
    jr jr_03f_56ca

    call Call_03f_5755
    ld d, a

jr_03f_56ca:
    call Call_03f_574a
    or d
    ld d, a
    call Call_03f_5736
    or d
    ld [$d452], a
    call Call_03f_579d
    ld [$d456], a
    and a
    ret z

    call Call_03f_5672
    ret


    call Call_03f_575f
    ld d, a
    call Call_03f_574a
    or d
    ld [$d452], a
    call Call_03f_579d
    ld [$d456], a
    ret


    ld a, [$d44f]
    and $40
    cp $40
    jr z, jr_03f_56ff

    jr jr_03f_5718

jr_03f_56ff:
    call Call_03f_5755
    ld d, a
    call Call_03f_578e
    jr nz, jr_03f_5710

    ld hl, $5731

jr_03f_570b:
    ld a, [hl+]
    cp d
    jr nz, jr_03f_570b

    ld d, [hl]

jr_03f_5710:
    call Call_03f_574a
    or d
    ld [$d452], a
    ret


jr_03f_5718:
    call Call_03f_5755
    ld d, a
    call Call_03f_578e
    jr nz, jr_03f_5729

    ld hl, $5736

jr_03f_5724:
    ld a, [hl-]
    cp d
    jr nz, jr_03f_5724

    ld d, [hl]

jr_03f_5729:
    call Call_03f_574a
    or d
    ld [$d452], a
    ret


    nop
    ld [$0c04], sp
    nop

Call_03f_5736:
    push hl
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    inc a
    and $03
    ld [hl+], a
    jr nz, jr_03f_5747

    ld a, [hl]
    inc a
    and $03
    ld [hl], a

jr_03f_5747:
    ld a, [hl]
    pop hl
    ret


Call_03f_574a:
    push hl
    ld hl, $010e
    add hl, bc
    ld a, [hl]
    dec a
    swap a
    pop hl
    ret


Call_03f_5755:
    push hl
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    and $0c
    pop hl
    ret


Call_03f_575f:
    push hl
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    and $0c
    pop hl
    ret


Call_03f_5769:
    push hl
    ld hl, $0009
    add hl, bc
    add a
    add a
    and $0c
    ld [hl], a
    pop hl
    ret


Call_03f_5775:
    ld hl, $d457
    inc [hl]
    ld a, [$d44d]
    and $1f
    inc a
    cp [hl]
    ret nz

    ld [hl], $00
    ret


Call_03f_5784:
    ld a, [$d44d]
    swap a
    rrca
    and $03
    inc a
    ret


Call_03f_578e:
    ld hl, $d458
    inc [hl]
    ld a, [$d44f]
    and $0f
    inc a
    cp [hl]
    ret nz

    ld [hl], $00
    ret


Call_03f_579d:
    call Call_03f_57b2
    ld a, [$d458]
    add e
    ld [$d458], a
    add $20
    ld e, a
    push hl
    push bc
    call Call_03f_5907
    pop bc
    pop hl
    ret


Call_03f_57b2:
    ld a, [$d44f]
    and $0f
    inc a
    ld d, a
    ld a, [$d44f]
    swap a
    and $07
    ld e, a
    ld a, $01
    jr z, jr_03f_57c9

jr_03f_57c5:
    add a
    dec e
    jr nz, jr_03f_57c5

jr_03f_57c9:
    ld e, a
    ret


Call_03f_57cb:
    push bc
    ld c, a
    ld b, $00
    ld hl, $57e3
    add hl, bc
    add hl, bc
    ld d, [hl]
    inc hl
    ld e, [hl]
    pop bc
    ld hl, HeaderLogo
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    add d
    ld [hl], a
    ret


    nop
    ld bc, $ff00
    rst $38
    nop
    ld bc, $ff00
    ld bc, $0101
    rst $38
    rst $38
    ld bc, $c5ff
    push de
    push hl
    ld bc, $c390
    ld a, [$d454]
    ld e, a
    ld a, [$d453]
    ld d, a
    ld hl, $580b
    call Call_03f_5814
    pop hl
    pop de
    pop bc
    ret


    ld [bc], a
    inc c
    nop
    rst $38
    nop
    inc c
    ld [$20ff], sp

Call_03f_5814:
    ld a, e
    add $10
    ld e, a
    ld a, d
    add $08
    ld d, a
    ld a, [hl+]

jr_03f_581d:
    push af
    ld a, [hl+]
    add e
    ld [bc], a
    inc bc
    ld a, [hl+]
    add d
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    jr nz, jr_03f_581d

    ret


Call_03f_5831:
    ld hl, $8ff0
    ld de, $583d
    ld bc, $3f01
    jp Jump_000_00e3


    rlca
    rra
    ccf
    ld a, a
    ld a, a
    ccf
    rra
    rlca

Call_03f_5845:
    ld hl, $8fe0
    ld de, $586b
    ld bc, $3f01
    jp Jump_000_00e3


    ld hl, $80c0
    ld a, $03

jr_03f_5856:
    push af
    push hl
    ld de, $586b
    ld bc, $3f04
    call Call_000_00c8
    pop hl
    ld de, $0040
    add hl, de
    pop af
    dec a
    jr nz, jr_03f_5856

    ret


    nop
    nop
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld e, $21
    ccf
    inc sp
    dec l
    ld e, $12
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_58ab:
    ld de, $67ef
    ld bc, $3f0c
    ld hl, $80c0
    push bc
    call Call_000_00c8
    ld de, $68af
    ld hl, $88c0
    ldh a, [$fc]
    and a
    jr z, jr_03f_58c9

    ld de, $68af
    ld hl, $8cc0

jr_03f_58c9:
    pop bc
    call Call_000_00c8
    call Call_03f_5831
    call Call_03f_5845
    ret


    ld a, [$d35d]
    cp $3a
    ret nz

    call Call_000_1542
    call Call_03f_4ff2
    ret


    ld a, [$d35d]
    cp $5a
    ret nz

    call Call_000_1542
    call Call_03f_4ff2
    ret


    ld a, [$d35d]
    cp $58
    ret nz

    call Call_000_1542
    ret


    call Call_000_0b06
    call Call_000_231c
    call Call_000_3ddb
    ret


    ld a, e
    add $10
    jr jr_03f_5908

Call_03f_5907:
    ld a, e

jr_03f_5908:
    and $3f
    cp $20
    jr nc, jr_03f_5913

    call Call_03f_591c
    ld a, h
    ret


jr_03f_5913:
    and $1f
    call Call_03f_591c
    ld a, h
    cpl
    inc a
    ret


Call_03f_591c:
    ld e, a
    ld a, d
    ld d, $00
    ld hl, $5938
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000

jr_03f_592b:
    srl a
    jr nc, jr_03f_5930

    add hl, de

jr_03f_5930:
    sla e
    rl d
    and a
    jr nz, jr_03f_592b

    ret


    nop
    nop
    add hl, de
    nop
    ld [hl-], a
    nop
    ld c, d
    nop
    ld h, d
    nop
    ld a, c
    nop
    adc [hl]
    nop
    and d
    nop
    or l
    nop
    add $00
    push de
    nop
    ld [c], a
    nop
    db $ed
    nop
    push af
    nop
    ei
    nop
    rst $38
    nop
    nop
    ld bc, $00ff
    ei
    nop
    push af
    nop
    db $ed
    nop
    ld [c], a
    nop
    push de
    nop
    add $00
    or l
    nop
    and d
    nop
    adc [hl]
    nop
    ld a, c
    nop
    ld h, d
    nop
    ld c, d
    nop
    ld [hl-], a
    nop
    add hl, de
    nop

Call_03f_5978:
    ld hl, $599c
    ld a, [$d470]
    ld d, a

jr_03f_597f:
    ld a, [hl+]
    inc hl
    cp d
    jr c, jr_03f_597f

    dec hl
    ld e, [hl]
    ld hl, $59a6
    ld a, [$d46f]
    ld d, a
    ld bc, $0006

jr_03f_5990:
    ld a, [hl]
    cp d
    jr nc, jr_03f_5997

    add hl, bc
    jr jr_03f_5990

jr_03f_5997:
    ld d, $00
    add hl, de
    ld a, [hl]
    ret


    jr z, jr_03f_599f

    ld a, a

jr_03f_599f:
    ld [bc], a
    add b
    inc bc
    jp nc, $ff04

    dec b
    ld [hl-], a
    ld c, $0e
    ld b, $0d
    dec c
    ld h, h
    add hl, bc
    add hl, bc
    dec b
    inc c
    inc c
    add d
    inc bc
    inc bc
    ld bc, $0808
    and b
    inc bc
    inc bc
    inc b
    rrca
    rrca
    ret z

    ld de, $0711
    ld [bc], a
    ld [bc], a
    ld a, [$1111]
    db $10
    ld a, [bc]
    ld a, [bc]
    rst $38
    ld de, $1311
    inc d
    inc d
    ldh a, [$ba]
    push af
    xor a
    ldh [$ba], a
    ld a, [de]
    ld [$d448], a
    inc de
    push de
    call Call_03f_59e4
    pop de
    pop af
    ldh [$ba], a
    ret


Call_03f_59e4:
    call Call_03f_5a2c
    ld hl, $60e3
    ld b, $1c
    call Call_000_3e84
    call Call_03f_59ff
    call Call_03f_5a46
    call Call_03f_5a9a
    call Call_03f_5a2c
    call Call_000_3e03
    ret


Call_03f_59ff:
    ld hl, $d44d
    ld bc, $0011
    xor a
    call Call_000_166e
    ld hl, $cc97
    ld bc, $0021
    xor a
    call Call_000_166e
    call Call_03f_615c
    ld hl, $0064
    ld a, l
    ld [$d451], a
    ld a, h
    ld [$d452], a
    ld a, $07
    ld [$d454], a
    ld a, $06
    ld [$d455], a
    ret


Call_03f_5a2c:
    xor a
    ldh [$ba], a
    ld hl, $c40a
    ld bc, $0505
    call Call_000_16f0
    call Call_000_3ddb
    call Call_000_231c
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    ret


Call_03f_5a46:
    ld a, [$d448]
    cp $1d
    jr c, jr_03f_5a4f

    ld a, $00

jr_03f_5a4f:
    ld e, a
    ld d, $00
    ld hl, $5a5e
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_03f_60d0
    ret


    adc d
    ld h, d
    adc d
    ld h, d
    and h
    ld h, d
    cp [hl]
    ld h, d
    ret c

    ld h, d
    ld a, [c]
    ld h, d
    inc c
    ld h, e
    ld h, $63
    ld b, b
    ld h, e
    ld e, d
    ld h, e
    ld [hl], h
    ld h, e
    sub b
    ld h, e
    xor d
    ld h, e
    call nz, $de63
    ld h, e
    ld hl, sp+$63
    ld [de], a
    ld h, h
    inc l
    ld h, h
    ld b, [hl]
    ld h, h
    ld h, b
    ld h, h
    ld a, d
    ld h, h
    sub h
    ld h, h
    or h
    ld h, h
    adc $64
    add sp, $64
    ld [bc], a
    ld h, l
    jr nz, jr_03f_5af9

    ld a, $65
    ld e, b
    ld h, l
    adc d
    ld h, d

Call_03f_5a9a:
jr_03f_5a9a:
    xor a
    ldh [$ba], a
    call Call_03f_6046
    call Call_03f_5ad5
    call Call_03f_5ad6
    call Call_03f_5ad5
    ld a, $01
    ldh [$ba], a
    call Call_03f_5ab4
    and a
    jr z, jr_03f_5a9a

    ret


Call_03f_5ab4:
    call Call_000_3ddb
    call Call_03f_5ac4
    and a
    ret nz

    call Call_000_381e
    ldh a, [$b3]
    and $03
    ret


Call_03f_5ac4:
    ld hl, $d451
    dec [hl]
    jr nz, jr_03f_5ad0

    inc hl
    ld a, [hl]
    and a
    jr z, jr_03f_5ad2

    dec [hl]

jr_03f_5ad0:
    xor a
    ret


jr_03f_5ad2:
    ld a, $01
    ret


Call_03f_5ad5:
    ret


Call_03f_5ad6:
    ld bc, $cc98
    ld a, $04

jr_03f_5adb:
    push af
    push bc
    ld hl, $0000
    add hl, bc
    ld a, [hl+]
    and a
    jr z, jr_03f_5b26

    ld a, [hl+]
    ld [$d459], a
    ld a, [hl+]
    ld [$d45a], a
    ld a, [hl+]
    ld [$d45b], a
    ld a, [hl+]
    ld [$d456], a
    ld a, [hl+]
    ld [$d457], a

jr_03f_5af9:
    ld a, [hl+]
    ld [$d458], a
    ld a, [hl+]
    ld [$d45c], a
    push bc
    call Call_03f_5b7e
    pop bc
    ld hl, $0001
    add hl, bc
    ld a, [$d459]
    ld [hl+], a
    ld a, [$d45a]
    ld [hl+], a
    ld a, [$d45b]
    ld [hl+], a
    ld a, [$d456]
    ld [hl+], a
    ld a, [$d457]
    ld [hl+], a
    ld a, [$d458]
    ld [hl+], a
    ld a, [$d45c]
    ld [hl], a

jr_03f_5b26:
    pop bc
    ld hl, $0008
    add hl, bc
    ld b, h
    ld c, l
    pop af
    dec a
    jr nz, jr_03f_5adb

    ret


    ld hl, $cc98
    ld de, $0008
    ld c, $04

jr_03f_5b3a:
    ld a, [hl]
    and a
    jr z, jr_03f_5b44

    add hl, de
    dec c
    jr nz, jr_03f_5b3a

    scf
    ret


jr_03f_5b44:
    ld a, [$cc97]
    inc a
    ld [$cc97], a
    ld [hl+], a
    call Call_03f_60c3
    ld [hl+], a
    call Call_03f_60c3
    ld [hl], a
    xor a
    ld [hl+], a
    ld [hl+], a
    call Call_03f_60c3
    ld [hl+], a
    call Call_03f_60c3
    ld [hl+], a
    call Call_03f_60c3
    ld [hl+], a
    and a
    ret


    call Call_03f_60c3
    ld b, a
    ld hl, $cc98
    ld de, $0008
    ld c, $04

jr_03f_5b71:
    ld a, [hl]
    cp b
    jr z, jr_03f_5b7b

    add hl, de
    dec c
    jr nz, jr_03f_5b71

    scf
    ret


jr_03f_5b7b:
    xor a
    ld [hl], a
    ret


Call_03f_5b7e:
jr_03f_5b7e:
    ld a, [$d459]
    cp $23
    jr c, jr_03f_5b87

    ld a, $04

jr_03f_5b87:
    ld e, a
    ld d, $00
    ld hl, $5bc9
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d45a]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    cp $e0
    jr z, jr_03f_5ba1

    jr jr_03f_5baa

jr_03f_5ba1:
    xor a
    ld [$d45a], a
    ld [$d45b], a
    jr jr_03f_5b7e

jr_03f_5baa:
    push hl
    call $5d62
    pop hl
    ld a, [hl]
    and a
    jr z, jr_03f_5bc8

    ld a, [$d45b]
    inc a
    ld [$d45b], a
    cp [hl]
    jr nz, jr_03f_5bc8

    xor a
    ld [$d45b], a
    ld a, [$d45a]
    inc a
    ld [$d45a], a

jr_03f_5bc8:
    ret


    ld de, $115c
    ld e, h
    add hl, hl
    ld e, h
    ld [hl-], a
    ld e, h
    dec sp
    ld e, h
    ld a, $5c
    ld b, c
    ld e, h
    ld d, b
    ld e, h
    ld h, c
    ld e, h
    ld l, [hl]
    ld e, h
    ld [hl], a
    ld e, h
    add h
    ld e, h
    adc l
    ld e, h
    sbc b
    ld e, h
    and l
    ld e, h
    or d
    ld e, h
    or a
    ld e, h
    jp nz, $cb5c

    ld e, h
    call nc, $df5c
    ld e, h
    add sp, $5c
    pop af
    ld e, h
    or $5c
    ld bc, $0a5d
    ld e, l
    inc de
    ld e, l
    inc e
    ld e, l
    daa
    ld e, l
    inc l
    ld e, l
    dec [hl]
    ld e, l
    ld b, b
    ld e, l
    ld b, a
    ld e, l
    ld d, h
    ld e, l
    ld e, c
    ld e, l
    dec sp
    ld e, h
    ld bc, $0714
    ld [bc], a
    ld bc, $0701
    ld [bc], a
    ld bc, $0701
    ld [$02e0], sp
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0201
    ld [$00e0], sp
    ld [$0808], sp
    nop
    ld [$0808], sp
    ldh [$08], a
    ld [$0800], sp
    ld [$0008], sp
    ld [$01e0], sp
    nop
    ldh [$09], a
    nop
    ldh [rP1], a
    ld [bc], a
    ld c, $04
    nop
    ld [$040e], sp
    nop
    ld b, b
    ld c, $04
    nop
    ld b, b
    ldh [rP1], a
    inc b
    rrca
    inc b
    nop
    inc b
    rrca
    inc b
    nop
    ld [$040f], sp
    nop
    ld [$040f], sp
    ldh [rNR10], a
    ld bc, $0100
    db $10
    ld bc, $4000
    db $10
    ld bc, $4000
    ldh [rP1], a
    ld [$0811], sp
    nop
    inc d
    ld de, $e008
    nop
    ld [bc], a
    ld [de], a
    ld [bc], a
    nop
    ld [bc], a
    ld [de], a
    ld b, b
    nop
    inc bc
    ld [de], a
    ld b, b
    ldh [rP1], a
    ld [$4013], sp
    nop
    inc b
    inc de
    ld b, b
    ldh [rNR14], a
    ld [$0200], sp
    inc d
    ld [$0200], sp
    inc d
    ld [$15e0], sp
    inc b
    nop
    ld [$0415], sp
    nop
    ld b, b
    dec d
    inc b
    nop
    ld b, b
    ldh [rP1], a
    ld [bc], a
    ld d, $02
    nop
    ld [bc], a
    ld d, $02
    nop
    inc d
    ld d, $02
    ldh [rP1], a
    ld [$0817], sp
    ldh [rP1], a
    ld [$0317], sp
    jr @+$07

    rla
    inc bc
    nop
    dec b
    ldh [rP1], a
    inc d
    add hl, de
    ld [$1400], sp
    add hl, de
    ld [$00e0], sp
    dec c
    ld a, [de]
    inc c
    nop
    ld h, h
    ld a, [de]
    ld [$00e0], sp
    dec b
    dec de
    dec b
    nop
    dec b
    dec de
    dec b
    nop
    ld h, h
    ldh [rP1], a
    ld [bc], a
    inc e
    ld [bc], a
    nop
    ld [bc], a
    inc e
    ld [bc], a
    ldh [rP1], a
    dec b
    dec e
    dec b
    nop
    dec b
    dec e
    dec b
    ldh [rNR34], a
    ld [$6400], sp
    ldh [rP1], a
    ld a, [bc]
    rra
    inc bc
    nop
    inc bc
    rra
    inc bc
    nop
    ld h, h
    ldh [rP1], a
    inc bc
    jr nz, @+$66

    nop
    ld [$0820], sp
    ldh [rNR42], a
    ld b, $00
    ld b, $21
    ld b, $00
    ld b, $e0
    nop
    ld [$0c22], sp
    nop
    ld [$0c22], sp
    ldh [rP1], a
    ld [$0209], sp
    ld a, [bc]
    ld bc, $010b
    inc c
    ld h, h
    ldh [rP1], a
    ld [$6424], sp
    ldh [rP1], a
    db $10
    dec h
    stop
    db $10
    dec h
    db $10
    ldh [rP1], a
    ld b, $26
    ld b, $00
    ld b, $26
    ld b, $00
    ld h, h
    ldh [rP1], a
    ld b, $09
    ld b, $0a
    ld h, h
    ldh [rP1], a
    inc d
    add hl, bc
    ld [$1400], sp
    add hl, bc
    ld [$080a], sp
    dec bc
    ld h, h
    ldh [rP1], a
    inc b
    add hl, bc
    ld h, h
    ldh [rP1], a
    inc c
    add hl, bc
    inc c
    nop
    inc c
    add hl, bc
    ld h, h
    ldh [$a7], a
    ret z

    ld e, a
    ld d, $00
    ld hl, $5db8
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    push bc
    call Call_03f_5d98
    pop bc
    pop de

jr_03f_5d7c:
    push bc
    push hl
    ld a, [$d456]
    ld c, a

jr_03f_5d82:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_03f_5d8a

    add c
    ld [hl], a

jr_03f_5d8a:
    inc hl
    dec b
    jr nz, jr_03f_5d82

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec c
    jr nz, jr_03f_5d7c

    ret


Call_03f_5d98:
    push bc
    ld a, [$d458]
    ld b, a
    ld a, [$d455]
    add b
    ld hl, $c3a0
    ld bc, $0014
    call Call_000_3a74
    ld a, [$d457]
    ld c, a
    ld a, [$d454]
    add c
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    ret


    ld c, $5e
    rrca
    ld e, [hl]
    ld a, [hl+]
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld h, e
    ld e, [hl]
    ld h, a
    ld e, [hl]
    ld l, e
    ld e, [hl]
    ld b, l
    ld e, [hl]
    ld l, e
    ld e, [hl]
    xor d
    ld e, a
    push bc
    ld e, a
    ldh [$5f], a
    ei
    ld e, a
    ld d, $60
    add c
    ld e, [hl]
    sbc h
    ld e, [hl]
    or a
    ld e, [hl]
    jp nc, $ed5e

    ld e, [hl]
    ld [$235f], sp
    ld e, a
    ld a, $5f
    ld e, c
    ld e, a
    ld [hl], h
    ld e, a
    adc a
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    xor d
    ld e, a
    push bc
    ld e, a
    ldh [$5f], a
    rrca
    ld e, [hl]
    rst $38
    dec b
    dec b
    nop
    dec b
    ld a, [bc]
    rrca
    inc d
    ld bc, $0b06
    db $10
    dec d
    ld [bc], a
    rlca
    inc c
    ld de, $0316
    ld [$120d], sp
    rla
    inc b
    add hl, bc
    ld c, $13
    jr @+$07

    dec b
    add hl, de
    ld e, $23
    jr z, jr_03f_5e5e

    ld a, [de]
    rra
    inc h
    add hl, hl
    ld l, $1b
    jr nz, jr_03f_5e5e

    ld a, [hl+]
    cpl
    inc e
    ld hl, $2b26
    jr nc, jr_03f_5e5e

    ld [hl+], a
    daa
    inc l
    ld sp, $0505
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_03f_5e79

    rst $38
    rst $38
    rst $38
    ld hl, $ff26
    rst $38
    rst $38
    rst $38
    rst $38

jr_03f_5e5e:
    rst $38
    rst $38
    ld bc, $0001
    ld [bc], a
    ld bc, $0100
    ld bc, $0002
    ld bc, $0202
    nop
    ld bc, $0302
    inc bc
    ld [bc], a
    nop
    ld bc, $0302
    inc b
    dec b

jr_03f_5e79:
    ld [bc], a
    inc bc
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0509], sp
    dec b
    nop
    ld bc, $ffff
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    rst $38
    inc b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    dec b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $ffff
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $ffff
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03f_5f44

    dec b
    rst $38
    rst $38
    rst $38
    rst $38

jr_03f_5f44:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$ff09], sp
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $ffff
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    rst $38
    inc b
    dec b
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03f_5f95

    dec b
    add hl, de
    ld a, [de]
    dec de
    inc e

jr_03f_5f95:
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03f_5fcb

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03f_5fdb

    dec b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03f_5fcb

    dec b
    add hl, de
    ld a, [de]
    dec de
    inc e

jr_03f_5fcb:
    dec e
    ld e, $1f
    jr nz, jr_03f_5ff1

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03f_6001

    ld a, [hl+]
    dec hl
    inc l

jr_03f_5fdb:
    dec l
    ld l, $2f
    jr nc, jr_03f_6011

    dec b
    dec b
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03f_6023

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_03f_5ff1:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    dec b
    dec b
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_03f_6001:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_03f_6011:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    dec b
    dec b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_03f_6023:
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h

Call_03f_6031:
    push hl
    ld e, a
    ld d, $00
    ld hl, $6572
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    pop hl
    ret


Call_03f_6046:
    call Call_03f_6066
    ret c

    xor a
    ld [$d44f], a

jr_03f_604e:
    call Call_03f_60c3
    ld e, a
    ld d, $00
    ld hl, $6071
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3e98
    ld a, [$d44f]
    and a
    jr z, jr_03f_604e

    ret


Call_03f_6066:
    ld a, [$d453]
    and a
    ret z

    dec a
    ld [$d453], a
    scf
    ret


    adc a
    ld h, b
    xor a
    ld h, b
    db $db
    ld h, b
    ld [hl-], a
    ld e, e
    or [hl]
    ld h, b
    or [hl]
    ld h, b
    ld h, l
    ld e, e
    or [hl]
    ld h, b
    or [hl]
    ld h, b
    or a
    ld h, b
    sbc h
    ld h, b
    rst $00
    ld h, c
    rst $10
    ld h, c
    xor c
    ld h, b
    sub b
    ld h, b
    ret


    ld a, $01
    ld [$d451], a
    xor a
    ld [$d452], a
    jr jr_03f_60a9

    ret


    call Call_03f_60c3
    ld [$d451], a
    call Call_03f_60c3
    ld [$d452], a
    ret


jr_03f_60a9:
    ld a, $ff
    ld [$d44f], a
    ret


    call Call_03f_60c3
    ld [$d453], a
    ret


    ret


    call Call_03f_60c3
    ld l, a
    call Call_03f_60c3
    ld h, a
    call Call_03f_60d0
    ret


Call_03f_60c3:
    push hl
    ld hl, $d44d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    call Call_03f_60d0
    pop hl
    ret


Call_03f_60d0:
    push af
    ld a, l
    ld [$d44d], a
    ld a, h
    ld [$d44e], a
    pop af
    ret


    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    ldh a, [$ba]
    push af
    xor a
    ldh [$ba], a
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    call Call_03f_60c3
    ld [$d450], a
    ld a, [$d450]
    call Call_03f_6031
    ld a, c
    cp $ff
    jr z, jr_03f_6106

    call Call_03f_6114
    jr jr_03f_6109

jr_03f_6106:
    call Call_03f_6128

jr_03f_6109:
    pop af
    ldh [$d7], a
    pop af
    ldh [$ba], a
    pop af
    ld [$cfca], a
    ret


Call_03f_6114:
    push de
    ld a, [$d450]
    ld d, a
    ld e, c
    call Call_03f_617a
    pop de
    jr c, jr_03f_6127

    call Call_03f_6167
    call Call_000_00c8
    and a

jr_03f_6127:
    ret


Call_03f_6128:
    push de
    ld a, [$d450]
    ld d, a
    ld e, $19
    call Call_03f_617a
    pop de
    jr c, jr_03f_615b

    ld a, b
    call Call_000_36e3
    ld a, $00
    call Call_000_3e99
    ld hl, $a188
    ld de, $a000
    ld bc, $0310
    call Call_000_00b1
    call Call_000_3ea9
    ld a, [$d450]
    call Call_03f_61af
    call Call_03f_6167
    ld d, h
    ld e, l
    call Call_000_14c7

jr_03f_615b:
    ret


Call_03f_615c:
    ld hl, $cc5b
    ld bc, $0011
    xor a
    call Call_000_166e
    ret


Call_03f_6167:
    ld hl, $8000
    push bc
    ld b, a
    and $0f
    swap a
    ld c, a
    ld a, b
    and $f0
    swap a
    ld b, a
    add hl, bc
    pop bc
    ret


Call_03f_617a:
    push bc
    push hl
    ld hl, $cc5c
    ld c, $08

jr_03f_6181:
    ld a, [hl]
    and a
    jr z, jr_03f_6192

    cp d
    jr z, jr_03f_618f

    inc hl
    inc hl
    dec c
    jr nz, jr_03f_6181

    scf
    ret


jr_03f_618f:
    inc hl
    ld a, [hl]
    ret


jr_03f_6192:
    ld [hl], d
    inc hl
    ld a, [$cc5b]
    add $80
    ld [hl], a
    ld a, [$cc5b]
    add e
    ld [$cc5b], a
    cp $80
    jr z, jr_03f_61a7

    jr nc, jr_03f_61ab

jr_03f_61a7:
    ld a, [hl]
    and a
    jr jr_03f_61ac

jr_03f_61ab:
    scf

jr_03f_61ac:
    pop hl
    pop bc
    ret


Call_03f_61af:
    push bc
    push hl
    ld b, a
    ld hl, $cc5c
    ld c, $08

jr_03f_61b7:
    ld a, [hl+]
    cp b
    jr z, jr_03f_61c2

    inc hl
    dec c
    jr nz, jr_03f_61b7

    scf
    jr jr_03f_61c4

jr_03f_61c2:
    ld a, [hl]
    and a

jr_03f_61c4:
    pop hl
    pop bc
    ret


    call Call_03f_60c3
    cp $ff
    ret z

    ld e, a
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ret


    ld a, $01
    ld [$c002], a
    call Call_000_1e64
    ld a, [$c0ef]
    push af
    ld a, $08
    ld [$c0ef], a
    ld [$c0f0], a
    call Call_03f_6203
    call Call_000_2238
    call Call_03f_6227
    call Call_000_373e
    pop af
    ld [$c0ef], a
    ld [$c0f0], a
    xor a
    ld [$c002], a
    ret


Call_03f_6203:
    ld hl, $5a18
    ld e, $55
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    ld a, $1e
    call Call_000_1681
    ld b, a
    inc hl
    ld a, $1e
    call Call_000_1681
    inc hl
    ld [$c0f1], a
    ld a, $1e
    call Call_000_1681
    ld [$c0f2], a
    ld a, b
    ret


Call_03f_6227:
    ld hl, $6242

jr_03f_622a:
    ld a, [hl+]
    cp $ff
    ret z

    ld c, a
    ld b, [hl]
    inc hl
    push hl
    call Call_03f_6238
    pop hl
    jr jr_03f_622a

Call_03f_6238:
    ld a, b
    ldh [rBGP], a
    call Call_000_3021
    call Call_000_372f
    ret


    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    inc b
    ret nz

    inc b
    db $e4
    rst $38
    ld [bc], a
    ld bc, $0f02
    ld [bc], a
    ld a, $03
    ld bc, $8000
    nop
    nop
    inc bc
    ld [bc], a
    nop
    or d
    dec b
    dec b
    inc bc
    inc bc
    nop
    or [hl]
    dec b
    dec b
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    add [hl]
    ld h, d
    ld a, [bc]
    jr z, jr_03f_628d

jr_03f_628d:
    ld [bc], a
    ld bc, $0202
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld b, $00
    sbc c
    nop
    nop
    dec c
    dec bc
    ld [bc], a
    dec c
    add hl, bc
    and b
    ld h, d
    ld a, [bc]
    inc l
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    rlca
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    cp d
    ld h, d
    ld a, [bc]
    ld d, b
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $03
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld [$9900], sp
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    call nc, Call_000_0a62
    ld b, [hl]
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [$0403], sp
    nop
    add b
    nop
    nop
    inc bc
    add hl, bc
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    xor $62
    ld a, [bc]
    jr nz, jr_03f_62f5

jr_03f_62f5:
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld a, [bc]
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld a, [bc]
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    ld [$0a63], sp
    ld [hl-], a
    nop
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    dec bc
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    dec h
    dec c
    add hl, bc
    ld [hl+], a
    ld h, e
    ld a, [bc]
    ld a, [hl-]
    nop
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $03
    inc b
    nop
    add b
    nop
    nop
    inc bc
    inc c
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    inc a
    ld h, e
    ld a, [bc]
    inc l
    nop
    ld [bc], a
    rrca
    ld [bc], a
    db $10
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    dec c
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    ld d, [hl]
    ld h, e
    ld a, [bc]
    jr c, jr_03f_635d

jr_03f_635d:
    ld [bc], a
    ld de, $1202
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld c, $00
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    ld [hl], b
    ld h, e
    ld a, [bc]
    jr c, jr_03f_6377

jr_03f_6377:
    ld [bc], a
    inc de
    ld [bc], a
    inc d
    ld [bc], a
    dec d
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    stop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    adc h
    ld h, e
    ld a, [bc]
    ld h, h
    nop
    ld [bc], a
    ld d, $02
    rla
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld de, $9900
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    and [hl]
    ld h, e
    ld a, [bc]
    ld [hl-], a
    nop
    ld [bc], a
    jr jr_03f_63b2

    add hl, de
    inc bc

jr_03f_63b2:
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld [de], a
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    jr jr_03f_63ce

    add hl, bc
    ret nz

    ld h, e
    ld a, [bc]
    ld [hl-], a
    nop
    ld [bc], a
    ld a, [de]
    ld [bc], a
    dec de
    inc bc
    inc b
    nop

jr_03f_63ce:
    add b
    nop
    nop
    inc bc
    inc de
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    jp c, $0a63

    jr z, jr_03f_63e1

jr_03f_63e1:
    ld [bc], a
    inc e
    ld [bc], a
    dec e
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    inc d
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    db $f4
    ld h, e
    ld a, [bc]
    ld [hl-], a
    nop
    ld [bc], a
    ld e, $02
    rra
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    dec d
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    ld c, $64
    ld a, [bc]
    jr nz, jr_03f_6415

jr_03f_6415:
    ld [bc], a
    jr nz, @+$04

    ld hl, $0403
    nop
    add b
    nop
    nop
    inc bc
    ld d, $00
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    jr z, jr_03f_6490

    ld a, [bc]
    ld h, h
    nop
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    inc hl
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    rla
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    ld b, d
    ld h, h
    ld a, [bc]
    jr nz, jr_03f_6449

jr_03f_6449:
    ld [bc], a
    inc h
    ld [bc], a
    dec h
    inc bc
    dec b
    nop
    add b
    nop
    nop
    inc bc
    jr jr_03f_6456

jr_03f_6456:
    sbc c
    nop
    nop
    dec c
    dec bc
    ld de, $090d
    ld e, h
    ld h, h
    ld a, [bc]
    inc l
    nop
    ld [bc], a
    ld h, $02
    daa
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    add hl, de
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    db $76
    ld h, h
    ld a, [bc]
    ld [hl-], a
    nop
    ld [bc], a
    jr z, jr_03f_6482

    add hl, hl
    inc bc

jr_03f_6482:
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld a, [de]
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38

jr_03f_6490:
    dec c
    add hl, bc
    sub b
    ld h, h
    ld a, [bc]
    jr z, jr_03f_6497

jr_03f_6497:
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    dec hl
    ld [bc], a
    inc l
    ld [bc], a
    dec l
    ld [bc], a
    ld l, $03
    inc b
    nop
    add b
    nop
    nop
    inc bc
    dec de
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    inc de
    dec c
    add hl, bc
    or b
    ld h, h
    ld a, [bc]
    jr z, jr_03f_64b7

jr_03f_64b7:
    ld [bc], a
    cpl
    ld [bc], a
    jr nc, jr_03f_64bf

    dec b
    nop
    add b

jr_03f_64bf:
    nop
    nop
    inc bc
    inc e
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    jp z, Jump_000_0a64

    ld b, [hl]
    nop
    ld [bc], a
    ld sp, $3202
    inc bc
    dec b
    nop
    add b
    nop
    nop
    inc bc
    dec e
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    db $e4
    ld h, h
    ld a, [bc]
    inc a
    nop
    ld [bc], a
    inc sp
    ld [bc], a
    inc [hl]
    inc bc
    dec b
    nop
    add b
    nop
    nop
    inc bc
    ld e, $00
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    cp $64
    ld a, [bc]
    ld [hl-], a
    nop
    ld [bc], a
    dec [hl]
    ld [bc], a
    ld [hl], $02
    scf
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    rra
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    ld bc, $0d0d
    inc c
    ld c, $0d
    ld a, [bc]
    ld h, h
    nop
    ld [bc], a
    ld d, $02
    rla
    ld [bc], a
    jr c, jr_03f_652c

    add hl, sp
    inc bc

jr_03f_652c:
    inc b
    nop
    add b
    nop
    nop
    inc bc
    jr nz, jr_03f_6534

jr_03f_6534:
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    ld a, [hl-]
    ld h, l
    ld a, [bc]
    ld e, $00
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    dec sp
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld hl, $9900
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    ld d, h
    ld h, l
    ld a, [bc]
    ld b, b
    nop
    ld [bc], a
    inc a
    ld [bc], a
    dec a
    inc bc
    inc b
    nop
    add b
    nop
    nop
    inc bc
    ld [hl+], a
    nop
    sbc c
    nop
    nop
    dec c
    dec bc
    rst $38
    dec c
    add hl, bc
    ld l, [hl]
    ld h, l
    ld bc, $0039
    nop
    rst $38
    add hl, sp
    nop
    ld b, b
    dec b
    add hl, sp
    call z, $ff40
    add hl, sp
    inc e
    ld b, c
    ld a, [bc]
    add hl, sp
    jp nc, $ff41

    add hl, sp
    ld [hl], d
    ld b, d
    ld b, $39
    inc hl
    ld b, e
    rst $38
    add hl, sp
    add e
    ld b, e
    inc d
    add hl, sp
    ld c, e
    ld b, h
    rst $38
    add hl, sp
    adc e
    ld b, l
    inc b
    add hl, sp
    dec sp
    ld b, [hl]
    rst $38
    add hl, sp
    ld a, e
    ld b, [hl]
    inc b
    add hl, sp
    ld l, $47
    rst $38
    add hl, sp
    ld l, [hl]
    ld b, a
    add hl, de
    add hl, sp
    ld b, c
    ld c, b
    rst $38
    add hl, sp
    pop de
    ld c, c
    ld a, [bc]
    add hl, sp
    sbc c
    ld c, d
    rst $38
    add hl, sp
    add hl, sp
    ld c, e
    ld b, $39
    sbc $4b
    rst $38
    add hl, sp
    ld a, $4c
    add hl, de
    add hl, sp
    ldh [$4c], a
    add hl, de
    add hl, sp
    ld [hl], b
    ld c, [hl]
    rst $38
    add hl, sp
    nop
    ld d, b
    add hl, de
    add hl, sp
    xor a
    ld d, b
    rst $38
    add hl, sp
    ccf
    ld d, d
    add hl, de
    add hl, sp
    cp $52
    rst $38
    add hl, sp
    adc [hl]
    ld d, h
    add hl, de
    add hl, sp
    ld b, c
    ld d, l
    rst $38
    add hl, sp
    pop de
    ld d, [hl]
    add hl, de
    add hl, sp
    sub h
    ld d, a
    rst $38
    add hl, sp
    inc h
    ld e, c
    add hl, de
    add hl, sp
    db $ed
    ld e, c
    rst $38
    add hl, sp
    ld a, l
    ld e, e
    add hl, de
    add hl, sp
    ld c, l
    ld e, h
    rst $38
    add hl, sp
    db $dd
    ld e, l
    add hl, de
    add hl, sp
    sub b
    ld e, [hl]
    add hl, de
    add hl, sp
    jr nz, jr_03f_6666

    add hl, de
    add hl, sp
    or b
    ld h, c
    rst $38
    add hl, sp
    ld b, b
    ld h, e
    add hl, de
    add hl, sp
    rst $30
    ld h, e
    rst $38
    add hl, sp
    add a
    ld h, l
    add hl, de
    add hl, sp
    ld b, [hl]
    ld h, [hl]
    rst $38
    add hl, sp
    sub $67
    add hl, de
    add hl, sp
    cpl
    ld l, b
    add hl, de
    add hl, sp
    cp a
    ld l, c
    add hl, de
    add hl, sp
    ld c, a
    ld l, e
    add hl, de
    add hl, sp
    rst $18
    ld l, h
    add hl, de
    add hl, sp
    ld l, a
    ld l, [hl]
    add hl, de
    add hl, sp
    rst $38
    ld l, a
    add hl, de
    add hl, sp
    adc a
    ld [hl], c
    add hl, de
    add hl, sp
    rra
    ld [hl], e
    add hl, de
    add hl, sp
    xor a
    ld [hl], h
    add hl, de
    add hl, sp
    ccf
    db $76
    rst $38
    add hl, sp
    rst $08
    ld [hl], a
    add hl, de
    add hl, sp
    ld h, e
    ld a, b
    add hl, de
    add hl, sp
    di
    ld a, c
    add hl, de
    add hl, sp
    add e
    ld a, e
    add hl, de
    add hl, sp
    inc de
    ld a, l
    rst $38
    inc a
    cp a
    ld c, d
    add hl, de
    inc a
    ld h, h
    ld c, e
    rst $38
    inc a
    db $f4
    ld c, h

jr_03f_6666:
    add hl, de
    inc a
    add d
    ld c, l
    jr jr_03f_66ab

    rst $28
    ld h, a
    ret


    rrca
    rrca
    rra
    ld e, $1f
    ld e, $1b
    rra
    inc d
    rra
    ccf
    dec hl
    ld [hl], a
    ld l, d
    sbc a
    ld a, [c]
    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$78
    ret c

    ld hl, sp+$28
    ld hl, sp-$04
    call nc, $56ee
    ld sp, hl
    ld c, a
    ld a, [hl]
    ld a, c
    rra
    rra
    rra
    rra
    add hl, sp
    ld l, $0f
    rra
    rlca
    rlca
    inc bc
    inc b
    ld bc, $7603
    sbc [hl]
    ld hl, sp-$08
    ld hl, sp-$08
    sbc h
    ld [hl], h
    ldh a, [$f8]
    ldh [$e0], a

jr_03f_66ab:
    ret nz

    and b
    add b
    ret nz

    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    cpl
    ccf
    ld b, b
    ld a, a
    sub b
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $f4
    db $fc
    ld [bc], a
    cp $09
    rst $38
    ld a, b
    ld a, a
    ld c, $0f
    rra
    rra
    ccf
    cpl
    rrca
    rra
    rlca
    rlca
    inc bc
    inc b
    ld bc, $1e03
    cp $70
    ldh a, [$f8]
    ld hl, sp-$04
    db $f4
    ldh a, [$f8]
    ldh [$e0], a
    ret nz

    and b
    add b
    ret nz

    rrca
    rrca
    rra
    rla
    rra
    rla
    ld h, e
    ld a, a
    adc a
    rst $38
    ld a, a
    ld [hl], b
    rra
    inc d
    rra
    inc d
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    add sp, -$08
    call nz, $e6fc
    cp [hl]
    pop hl
    ccf
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    ld b, $07
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $c601
    ld a, [hl]
    ld hl, sp-$08
    ret nz

    ldh [rNR41], a
    ldh [$e0], a
    jr nz, @-$1e

    ldh [$c0], a
    ld b, b
    add b
    ret nz

    nop
    nop
    rrca
    rrca
    rra
    ld e, $1f
    ld e, $1b
    rra
    inc d
    rra
    ccf
    dec hl
    ld [hl], a
    ld l, d
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$78
    ret c

    ld hl, sp+$28
    ld hl, sp-$04
    call nc, $56ee
    sbc a
    ld a, [c]
    ld a, [hl]
    ld a, c
    ccf
    ccf
    ccf
    cpl
    add hl, bc
    ld e, $0f
    rrca
    rlca
    inc b
    inc bc
    rlca
    ld sp, hl
    ld c, a
    db $76
    sbc [hl]
    ld hl, sp-$08
    ld hl, sp-$08
    cp b
    ld l, b
    ld hl, sp-$38
    ldh a, [$f0]
    ret nz

    ldh [rP1], a
    nop
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rla
    rra
    jr nz, jr_03f_67bc

    ld b, b
    ld a, a
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    add sp, -$08
    inc b
    db $fc
    ld [bc], a
    cp $90
    rst $38
    ld l, b
    ld a, a
    jr jr_03f_67b4

    rra
    rra
    rra
    rla
    rrca
    dec bc
    rlca
    rlca

jr_03f_679d:
    inc bc
    rlca
    add hl, bc
    rst $38
    ld d, $fe
    jr jr_03f_679d

    db $fc
    db $f4
    ldh a, [$f8]
    ldh a, [$f0]
    ldh [rNR41], a
    ret nz

    ldh [rP1], a
    nop
    rrca
    rrca
    rra

jr_03f_67b4:
    rla
    rra
    rla
    ld h, e
    ld a, a
    adc a
    rst $38
    ld a, a

jr_03f_67bc:
    ld [hl], b
    rra
    inc d
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08

jr_03f_67c9:
    add sp, -$08
    call nz, $e6fc
    cp [hl]
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rrca
    dec bc
    ld e, $1e
    pop hl
    ccf
    add $7e
    ld hl, sp-$08
    ldh [$e0], a
    jr nz, jr_03f_67c9

    ldh a, [$90]
    ld hl, sp-$18
    jr c, jr_03f_6827

    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld a, c
    ld l, c
    ccf
    daa
    rra
    db $10
    rra
    inc d
    rra
    ld de, $0000
    add b
    add b
    call c, $fc5c
    inc l
    ld hl, sp-$38
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rNR10]
    ccf
    dec hl
    ccf
    jr nz, jr_03f_6853

    inc h
    ccf
    inc l
    ccf
    jr nz, @+$21

    inc de
    inc c
    inc c
    nop
    nop
    ld hl, sp-$58
    ld hl, sp+$08
    ld hl, sp+$48
    ld hl, sp+$68

jr_03f_6827:
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld bc, $3b01
    ld a, [hl-]
    ccf
    inc a
    rra
    jr jr_03f_6849

    inc c
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    nop
    nop
    nop
    nop
    adc [hl]
    adc [hl]
    sbc [hl]
    sub [hl]
    db $fc
    db $e4

jr_03f_6849:
    ld hl, sp+$48
    ld hl, sp+$48
    ld hl, sp+$48
    ld e, $17
    inc d
    rra

jr_03f_6853:
    ld e, $13
    ld de, $1f1f
    db $10
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    db $fc
    ld b, h
    call nz, Call_03f_7cfc
    add h
    inc b
    db $fc
    db $fc
    inc b
    ld hl, sp-$38
    jr nc, @+$32

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    ld c, $1f
    db $10
    ccf
    jr nz, @+$41

    jr nz, jr_03f_6880

jr_03f_6880:
    nop
    nop
    nop
    jr nc, jr_03f_68b5

    rst $38
    rst $38
    rst $38
    ld [hl], c
    cp $22
    db $fc
    ld h, h
    ld hl, sp+$48
    ld a, a
    ld c, b
    ld a, l
    ld b, d
    ccf
    jr nz, jr_03f_68d5

    jr z, @+$41

    inc l
    ccf
    jr nz, jr_03f_68bb

    jr jr_03f_68a5

    rlca
    cp $2e
    cp $22
    inc d
    db $fc

jr_03f_68a5:
    ld a, [c]
    ld e, $14
    db $fc
    ld hl, sp+$38
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld a, b
    ld l, b

jr_03f_68b5:
    ccf
    daa
    rra
    db $10
    rra
    inc d

jr_03f_68bb:
    rra
    ld de, $2b3f
    nop
    nop
    inc e
    inc e
    inc a
    inc l
    cp $ce
    rst $38
    ld de, $52fe
    db $fc
    inc d
    cp $ae
    ccf
    jr nz, jr_03f_6911

    inc h
    ccf
    inc l

jr_03f_68d5:
    ccf
    jr nz, jr_03f_68f7

    inc e
    rra
    inc de
    inc c
    inc c
    nop
    nop
    rst $38
    add hl, bc
    cp $4a
    db $fc
    ld l, h
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03f_690b

    inc a
    inc l
    ld a, a
    ld b, a

jr_03f_68f7:
    ccf
    inc h
    rra
    ld [de], a
    ld a, a
    ld h, d
    ld a, a
    ld c, h
    nop
    nop
    ld c, $0e
    ld e, $16
    db $fc
    db $e4
    ld hl, sp+$08
    ld hl, sp+$08

jr_03f_690b:
    ld hl, sp+$08
    db $fc
    inc b
    inc h
    ccf

jr_03f_6911:
    inc de
    ld e, $18
    rra
    rra
    db $10
    rra
    ld d, $0f
    add hl, bc
    ld b, $06
    nop
    nop
    inc b
    db $fc
    db $fc
    inc b
    inc b
    db $fc
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    ld c, $1f
    db $10
    ccf
    jr nz, jr_03f_697b

    jr nz, jr_03f_69bd

    ld c, b
    nop
    nop
    jr nc, jr_03f_6973

    rst $38
    rst $38
    rst $38
    ld [hl], c
    cp $22
    db $fc
    ld h, h
    ld hl, sp+$48
    cp $2e
    ld a, l
    ld b, d
    ccf
    jr nz, jr_03f_6993

    jr z, jr_03f_6995

    inc l
    ccf
    jr nc, jr_03f_69d9

    ld c, b
    scf
    scf
    nop
    nop
    cp $32
    inc d
    db $fc
    ld a, [c]
    ld e, $14
    db $fc
    ld hl, sp+$38
    ld hl, sp+$68
    ldh a, [$90]
    ld h, b
    ld h, b
    ld h, a
    ld h, a
    ld e, h
    ld a, a

jr_03f_6973:
    ld [hl], a
    ld e, a
    inc h
    ccf
    ld sp, $1a3f
    cpl

jr_03f_697b:
    inc e
    rra
    dec e
    dec de
    and $e6
    ld a, [hl-]
    cp $ee
    ld a, [$fca4]
    adc h
    db $fc
    ld a, b
    db $f4
    jr c, @-$06

    cp b
    ret c

    ld l, $39
    daa
    inc a

jr_03f_6993:
    ld l, e
    ld a, a

jr_03f_6995:
    ld [hl], d
    ld a, a
    ld d, [hl]
    ld a, a
    ld c, [hl]
    ld a, e
    ccf
    scf
    jr jr_03f_69bb

    ld [hl], h
    sbc h
    db $e4
    inc a
    sub $fe
    ld c, [hl]
    cp $6a
    cp $72
    sbc $fc
    db $ec
    jr @+$3a

    ld h, a
    ld h, a
    ld e, h
    ld a, a
    ld d, a
    ld a, a
    inc h
    ccf
    jr z, jr_03f_69f8

    inc sp
    ccf

jr_03f_69bb:
    inc d
    rra

jr_03f_69bd:
    add hl, de
    rra
    and $e6
    ld a, [hl-]
    cp $ea
    cp $24
    db $fc
    inc d
    db $fc
    call z, $28fc
    ld hl, sp-$68
    ld hl, sp+$22
    ccf
    inc h
    ccf
    ld l, a
    ld a, a
    ld [hl], h
    ld a, a
    ld e, [hl]
    ld a, a

jr_03f_69d9:
    ld [hl], c
    ld a, a
    inc a
    ccf
    ld a, e
    ld a, a
    ld b, h
    db $fc
    inc [hl]
    db $fc
    or [hl]
    cp $6e
    cp $2a
    cp $72
    cp $ec
    db $fc
    sbc [hl]
    cp [hl]
    inc bc
    inc bc
    rra
    dec e
    dec h
    ccf
    ld [hl], d
    ld a, a
    ld c, [hl]

jr_03f_69f8:
    ld a, a
    cp $ef
    sbc c
    rst $38
    and $fb
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    ld d, b
    ldh a, [$90]
    ldh a, [$0a]
    ei
    dec d
    rst $38
    ld a, l
    add a
    ld a, [hl-]
    ld a, a
    add hl, sp
    cpl
    dec [hl]
    ld a, a
    ld a, [hl]
    ld e, a
    inc e
    ccf
    inc a
    daa
    rrca
    rra
    ld h, l
    rst $38
    add l
    rst $38
    adc c
    rst $38
    ld c, l
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl-], a
    cp $78
    db $fc
    nop
    add b
    ld bc, $0101
    ld bc, $6362
    ld e, d
    ld a, e
    ld h, $3f
    ld h, $3f
    ld [de], a
    rra
    ld a, [bc]
    rrca
    add b
    add b
    add b
    add b
    ld b, [hl]
    add $5a
    sbc $64
    db $fc
    ld h, h
    db $fc
    ld c, b
    ld hl, sp+$50
    ldh a, [rIF]
    rrca
    rra
    rra
    ccf
    dec sp
    ccf
    ccf
    ccf
    ld a, $1f
    rra
    rlca
    rlca
    ld e, $1e
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    call c, $fcfc
    db $fc
    ld a, h
    ld hl, sp-$08
    ldh [$e0], a
    ld a, b
    ld a, b
    ld bc, $0101
    ld bc, $6362
    ld e, d
    ld a, e
    ld h, $3f
    ld h, $3f
    ld [de], a
    rra
    ld a, [bc]
    rrca
    add b
    add b
    add b
    add b
    ld b, [hl]
    add $5a
    sbc $64
    db $fc
    ld h, h
    db $fc
    ld c, b
    ld hl, sp+$50
    ldh a, [$0e]
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    ld e, $1e
    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    ld a, b
    ld a, b
    ld bc, $0101
    ld bc, $6362
    ld e, d
    ld a, e
    ld h, $3f
    ld h, $3f
    ld [de], a
    rra
    dec bc
    rrca
    add b
    add b

jr_03f_6ac1:
    add b
    add b
    ld b, [hl]
    add $5a
    sbc $64
    db $fc
    ld h, h
    db $fc
    adc b
    ld hl, sp+$10
    ldh a, [rIF]
    rrca
    rrca
    rrca
    rra
    dec de
    rra
    rra
    rra
    rla
    rrca
    rrca
    inc bc
    inc bc
    rrca
    rrca
    jr nz, jr_03f_6ac1

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    ret nz

    ret nz

    nop
    nop
    ld bc, $0701
    rlca
    ld a, [de]
    rra
    inc h
    ccf
    ld [hl], a
    ld a, a
    ld c, b
    ld a, a
    jr nz, jr_03f_6b3e

    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld e, b
    ld hl, sp+$24
    db $fc
    xor $fe
    jp nc, $c2fe

    cp $58
    ld a, a
    ld e, h
    ld l, a
    ld e, [hl]
    ld l, e
    ld l, [hl]
    ld a, a
    sbc h
    rst $38
    and a
    rst $38
    or d
    rst $38
    ld a, l
    ld a, l
    inc c
    db $fc
    ld a, [hl-]
    or $7a
    sub $76
    cp $39
    rst $38
    push hl
    rst $38
    ld c, l
    rst $38
    cp [hl]
    cp [hl]
    nop
    nop
    ld bc, $0701
    rlca
    ld a, [de]
    rra
    ld h, $3f
    ld c, c
    ld a, a
    ld c, b
    ld a, a
    ld c, b

jr_03f_6b3e:
    ld a, a
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld e, b
    ld hl, sp+$64
    db $fc
    sub d
    cp $12
    cp $12
    cp $44
    ld a, a
    inc h
    ccf
    ld d, d
    ld a, a
    ld c, a
    ld a, a
    add b
    rst $38
    and h
    rst $38
    or b
    rst $38
    ld a, a
    ld a, a
    ld [hl+], a
    cp $24
    db $fc
    ld c, [hl]
    cp $f2
    cp $f1
    rst $38
    ld h, l
    rst $38
    dec c
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    ld [de], a
    rra
    inc sp
    ccf
    ld b, c
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld h, h
    db $fc
    add d
    cp $82
    cp $85
    rst $38
    ld e, h
    ld a, a
    cp h
    db $eb
    cp b
    rst $30
    add d
    rst $38
    add $ff
    inc a
    ccf
    inc c
    rrca
    rrca
    rrca
    push bc
    rst $38
    add hl, sp
    rst $38
    adc l
    rst $38
    ld c, $fe
    ld hl, $41ff
    rst $38
    ld [c], a
    cp $3c
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $7f73
    ld c, h
    ccf
    ld d, h
    ccf
    ld [hl+], a
    ccf
    ld hl, $0000
    nop
    nop
    nop
    nop
    adc h
    adc $fe
    ld [hl-], a
    db $fc
    xor d
    db $fc
    ld b, h
    db $fc
    add h
    ld a, a
    ld b, h
    ld a, a
    ld c, h
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld c, d
    ccf
    ld h, $1f
    inc e
    ccf
    ccf
    cp $12
    cp $32
    cp $82
    cp $02
    cp $52
    db $fc
    ld h, h
    ld hl, sp+$38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $7f73
    ld c, h
    ccf
    ld d, e
    ccf
    jr nz, jr_03f_6c3d

    jr nz, jr_03f_6c00

jr_03f_6c00:
    nop
    nop
    nop
    nop
    nop
    adc h
    adc $fe
    ld [hl-], a
    db $fc
    jp z, Jump_000_04fc

    db $fc
    inc b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_03f_6c3b

    inc e
    ccf
    ccf
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    db $fc
    inc b
    ld hl, sp+$38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03f_6c53

    rra
    daa
    ld [hl], a
    ld c, l

jr_03f_6c3b:
    ccf
    ld c, b

jr_03f_6c3d:
    ccf
    jr nc, jr_03f_6c40

jr_03f_6c40:
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$b0]
    ld hl, sp+$28
    db $fc
    inc b
    db $fc
    inc b
    ld a, a
    ld b, h
    ld a, a
    ld c, h

jr_03f_6c53:
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld c, d
    ccf
    ld h, $1f
    inc e
    ccf
    ccf
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, a
    ld l, [hl]
    ccf
    ld [hl-], a
    rra
    ld de, $243f
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e
    cp $b6
    db $fc
    ld c, h
    ld hl, sp-$78
    db $fc
    inc h
    ccf
    inc h
    ld [hl], a
    ld c, c
    rst $18
    and b
    ld a, a
    ld h, b
    cpl
    jr nc, jr_03f_6cb1

    jr jr_03f_6ca5

    rrca
    ld b, $06
    db $fc
    inc h
    xor $92
    ei
    dec b

jr_03f_6ca5:
    cp $06
    db $f4
    inc c
    add sp, $18
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop

jr_03f_6cb1:
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, a
    ld l, e
    ccf
    jr nc, jr_03f_6cdb

    db $10
    dec a
    inc hl
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e
    cp $d6
    db $fc
    inc c
    ld hl, sp+$08
    cp h
    call nz, $243f
    db $76
    ld c, c
    db $dd
    xor d
    ld a, l
    ld l, d
    ld l, $35
    rla
    dec de

jr_03f_6cdb:
    add hl, bc
    rrca
    ld b, $06
    db $fc
    inc h
    ld l, [hl]
    sub d
    cp e
    ld d, l
    cp [hl]
    ld d, [hl]
    ld [hl], h
    xor h
    add sp, -$28
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    ld b, $0e
    dec e
    inc de
    rra
    ld h, $2f
    jr c, @+$21

    inc d
    rrca
    inc d
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    db $fc
    db $fc
    db $fc
    adc h
    ld hl, sp+$08
    add sp, $18
    db $fc
    inc b
    rra
    jr nz, jr_03f_6d4f

    inc sp
    ccf
    jr nz, jr_03f_6d55

    jr nz, jr_03f_6d47

    jr nc, jr_03f_6d31

    jr jr_03f_6d28

    rrca
    inc bc
    inc bc
    cp $06
    rst $38
    dec h
    rst $38
    and l
    rst $18
    ld h, l
    push af

jr_03f_6d28:
    rrca
    ld [$3c1e], a
    db $fc
    ret nz

    ret nz

    nop
    nop

jr_03f_6d31:
    rlca

jr_03f_6d32:
    rlca
    dec de
    inc e
    scf
    jr z, jr_03f_6da7

    ld d, h
    xor a
    db $f4
    rst $38
    and c
    rst $18
    and b
    nop
    nop
    ldh [$e0], a
    ret c

    jr c, jr_03f_6d32

    inc d

jr_03f_6d47:
    or $2a
    push af
    cpl
    rst $38
    add l
    ei
    dec b

jr_03f_6d4f:
    cp a
    ret nz

    db $eb
    call nc, Call_03f_557f

jr_03f_6d55:
    ld a, a
    ld c, d
    ld a, e
    ld b, a
    inc a
    daa
    dec l
    inc sp
    ld [hl], e
    ld a, a
    db $fd
    inc bc
    rst $10
    dec hl
    cp $aa
    cp $52
    sbc $e2
    inc a
    db $e4
    or h
    call z, $fece
    nop
    nop
    rlca
    rlca
    dec de
    inc e
    ccf
    jr nz, jr_03f_6de7

    ld d, b
    xor a
    ldh a, [rIE]
    and b
    rst $18
    and b
    nop
    nop
    ldh [$e0], a
    ret c

    jr c, @-$02

    inc b
    or $0a
    push af
    rrca
    rst $38
    dec b
    ei
    dec b
    cp a
    jp nz, $c5ff

    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld b, d
    ccf
    ld hl, $302f
    ld [hl], e
    ld a, a
    db $fd
    inc bc
    rst $38
    inc bc
    cp $82
    cp $42

jr_03f_6da7:
    cp $02
    db $fc
    inc b
    db $f4
    inc c
    adc $fe
    nop
    nop
    rlca
    rlca
    rra

jr_03f_6db4:
    jr @+$41

    jr nz, jr_03f_6df7

    jr nz, @+$81

    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld h, b
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    ret c

    jr z, jr_03f_6db4

    inc d
    ld [$fe9e], a
    ld c, d
    or $4e
    ld a, a
    ld b, b
    ld_long a, $ffa5
    sub l
    rst $28
    ld a, [$fc9b]
    ld b, a
    ld a, h
    ccf
    ld a, $1f
    rra
    db $e4
    inc a
    db $fc
    inc e
    cp $06
    rst $38
    dec b

jr_03f_6de7:
    rst $38
    dec b
    cp $0a
    db $fc
    inc e
    ldh [$e0], a
    nop
    jr nz, @+$32

    jr nc, jr_03f_6e2c

    jr c, jr_03f_6e11

    daa

jr_03f_6df7:
    rrca
    db $10
    rra
    inc d
    rrca
    db $10
    daa
    dec sp
    nop
    nop
    ld [$3c1c], sp
    inc l
    or b
    ret z

    ldh a, [rNR10]
    ld hl, sp+$48
    ldh a, [$08]
    call z, Call_03f_7734
    ld e, b

jr_03f_6e11:
    ccf
    ld [hl], b
    rrca
    db $10
    rlca
    ld [$191e], sp
    ld h, $3f
    nop
    ccf
    rrca
    rra
    adc $32
    or $0f
    db $fd
    rlca
    db $ec
    rra

jr_03f_6e27:
    and $fe
    jr jr_03f_6e27

    ld h, b

jr_03f_6e2c:
    ldh a, [rP1]
    add b
    nop
    nop
    db $10
    jr c, jr_03f_6e68

    inc a
    dec c
    inc de
    rrca
    ld [$1e0d], sp
    ld a, $31
    ld a, a
    ld d, c
    nop
    inc b
    inc c
    inc c
    inc e
    inc e
    ret c

    db $e4
    ldh a, [$08]
    ld hl, sp+$08
    ldh a, [$08]
    ld a, h
    add h
    cpl
    add hl, sp
    ld e, l
    rst $30
    cp l
    rst $20
    scf
    ei
    ld h, a
    ld a, a
    jr @+$41

    ld b, $0f
    nop
    ld bc, $e21e
    db $fc
    ld c, $10
    add sp, -$60
    ret nc

    ld a, b

jr_03f_6e68:
    sbc b
    ld h, h
    db $fc
    nop
    db $fc
    ldh a, [$f8]
    nop
    nop
    nop
    nop
    ld bc, $0603
    dec b
    rrca
    ld [$111e], sp
    rra
    jr z, @+$41

    jr nz, jr_03f_6e80

jr_03f_6e80:
    nop
    ld b, b
    ret nz

    add h
    call nz, $8a8e
    ld e, a
    pop de
    xor $33
    ld hl, sp+$14
    call nz, $133c
    ld l, $17
    inc e
    ld a, [bc]
    rla
    rlca
    ld [$191e], sp
    ld h, $3f
    nop
    ccf
    rrca
    rra
    db $fc
    inc c
    ld [$fa1e], a
    ld c, $f4
    inc e
    add sp, -$08
    db $10
    ldh a, [$60]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld [hl], b
    scf
    ld c, a
    rra
    jr nz, jr_03f_6efb

    jr z, jr_03f_6edd

    jr nz, jr_03f_6ec0

jr_03f_6ec0:
    nop
    nop
    nop
    db $10
    jr c, jr_03f_6f3e

    ld e, b
    ld h, b
    sub b
    ldh a, [rNR10]
    add sp, -$68
    db $fc
    inc b
    ld c, a
    db $76
    rst $28
    or b
    ld a, a
    ldh [$2f], a
    jr nc, jr_03f_6f0f

    jr c, jr_03f_6f1d

    ld a, a
    nop
    ld a, a

jr_03f_6edd:
    rra
    ccf
    sub b
    ld l, b
    sbc b
    ld l, b
    db $f4
    inc c
    jp c, Jump_03f_423e

    cp $08
    db $fc
    ld h, b
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    ld [$1a1c], sp
    ld e, $06
    add hl, bc
    ld c, $0f

jr_03f_6efb:
    rra
    jr jr_03f_6f3d

    jr z, jr_03f_6f00

jr_03f_6f00:
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld c, $ee
    ld a, [c]
    db $fc
    ld [bc], a
    ld a, b
    add h
    db $fc
    add h

jr_03f_6f0f:
    rla
    inc e
    ld e, $13
    ld l, $33
    ld e, e
    ld a, l
    ld b, d
    ld a, a
    db $10
    ccf
    ld b, $0f

jr_03f_6f1d:
    nop
    ld bc, $c4fc
    sbc [hl]
    and $ff
    add l
    or [hl]
    rst $08
    db $ec
    sbc h
    jp nz, $00fe

    cp $f8
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    dec c
    dec bc
    ld e, $11
    dec a
    ld [hl+], a

jr_03f_6f3d:
    ccf

jr_03f_6f3e:
    ld d, b
    nop
    nop
    nop
    nop
    add b
    add b
    ld [$1c88], sp
    inc d
    cp [hl]
    and d
    call c, $f066
    jr z, jr_03f_6fcf

    ld b, b
    daa
    ld e, h
    cpl
    jr c, jr_03f_6f70

    cpl
    rrca
    db $10
    dec a

jr_03f_6f5a:
    inc sp
    ld b, b
    ld a, a
    rra
    ccf
    adc b
    ld a, b
    ldh a, [rNR10]
    ret c

    jr c, jr_03f_6f5a

    inc e
    add sp, $38
    ret nc

    ldh a, [rLCDC]
    ldh [rP1], a
    add b
    rlca

jr_03f_6f70:
    rlca
    jr jr_03f_6f92

    jr nz, @+$41

    jr nz, @+$41

    ld b, b
    ld a, a
    ld c, h
    ld [hl], e
    ld a, a
    ld l, b
    ld a, a
    ld b, h
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    jp nz, $f23e

    ld e, [hl]
    ld sp, hl
    adc a
    ccf
    inc h
    inc e

jr_03f_6f92:
    inc de
    ccf
    cpl
    ld a, h
    ld a, e
    ld a, a
    ld a, a
    rra
    db $10
    rrca
    rrca
    inc e
    inc e
    pop af
    sbc a
    pop af
    ccf
    ld sp, hl
    rst $18
    ld a, [$fa7e]
    cp $f4
    inc a
    ret c

    ret c

    ldh [$e0], a
    rlca
    rlca
    jr jr_03f_6fd2

    jr nz, jr_03f_6ff4

    jr nz, jr_03f_6ff6

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    add b

jr_03f_6fc0:
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $0a
    cp $09
    rst $38

jr_03f_6fcf:
    jr nz, jr_03f_7010

    db $10

jr_03f_6fd2:
    rra
    jr c, jr_03f_7014

    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    rra
    inc de
    rrca
    rrca
    inc e
    inc e
    add l
    rst $38
    add l
    rst $38
    ld b, [hl]
    cp $46
    cp $44
    db $fc
    ld c, b
    ld hl, sp-$50
    ldh a, [$e0]
    ldh [rIF], a
    rrca
    jr nc, jr_03f_7032

jr_03f_6ff3:
    ld b, b

jr_03f_6ff4:
    ld a, a
    ld b, b

jr_03f_6ff6:
    ld a, a
    ld c, [hl]
    ld [hl], c
    ccf
    inc h
    ccf
    jr z, jr_03f_703d

    jr z, jr_03f_6fc0

    ret nz

    jr nc, jr_03f_6ff3

    ld [$04f8], sp
    db $fc
    ld [bc], a
    cp $c2
    cp $e1
    cp a
    ld h, c
    cp a
    ccf

jr_03f_7010:
    jr nz, jr_03f_7029

    jr jr_03f_7023

jr_03f_7014:
    rrca
    dec bc
    ld c, $0f
    ld c, $0f
    dec bc
    rrca
    rrca
    rra
    rra
    pop hl
    ccf
    pop af
    rst $38

jr_03f_7023:
    adc c
    adc a
    ret


    rst $08
    add $c6

jr_03f_7029:
    db $ec
    xor h
    ldh [$e0], a
    add b
    add b
    nop
    nop
    rlca

jr_03f_7032:
    rlca
    jr jr_03f_7054

    jr nz, @+$41

    jr nz, @+$41

    ld b, b
    ld a, a
    ld c, h
    ld [hl], e

jr_03f_703d:
    ld a, a
    ld l, b
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    jp nz, $f23e

    ld e, [hl]
    ld a, a
    ld b, h
    ccf
    inc h
    inc e

jr_03f_7054:
    inc de
    ccf
    cpl
    dec a
    dec sp
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    ld sp, hl
    adc a
    pop af
    sbc a
    pop af
    ccf
    pop af
    rst $18
    ld a, [c]
    cp [hl]
    ld a, [c]
    cp $e4
    db $fc
    jr c, @+$3a

    nop
    nop
    rlca
    rlca
    jr jr_03f_7094

    jr nz, jr_03f_70b6

    jr nz, jr_03f_70b8

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $0a
    cp $41
    ld a, a
    jr nz, jr_03f_70d2

    db $10

jr_03f_7094:
    rra
    jr jr_03f_70b6

    inc a
    ccf
    ld a, $3f
    rra
    dec de
    rlca
    rlca
    add hl, bc
    rst $38
    add l
    rst $38
    add l
    rst $38
    ld b, [hl]
    cp $46
    cp $44
    db $fc
    ld c, b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    rrca
    rrca
    jr nc, jr_03f_70f4

jr_03f_70b5:
    ld b, b

jr_03f_70b6:
    ld a, a
    ld b, b

jr_03f_70b8:
    ld a, a
    ld c, [hl]
    ld [hl], c
    ccf
    inc h
    ccf
    jr z, jr_03f_70c0

jr_03f_70c0:
    nop
    ret nz

    ret nz

    jr nc, jr_03f_70b5

    ld [$04f8], sp
    db $fc
    ld [bc], a
    cp $c2
    cp $e1
    cp a
    ccf
    jr z, jr_03f_7111

jr_03f_70d2:
    jr nz, jr_03f_70eb

    jr jr_03f_70e5

    rrca
    rrca
    dec c
    rra
    ld a, [de]
    ccf
    ccf
    rrca
    rrca
    ld h, c
    cp a
    pop hl
    ccf
    pop af
    rst $38

jr_03f_70e5:
    adc c
    adc a
    adc c
    adc a
    add $46

jr_03f_70eb:
    call z, $80cc
    add b
    inc bc
    inc bc
    inc c
    rrca

jr_03f_70f3:
    db $10

jr_03f_70f4:
    rra
    db $10
    rra
    jr nz, @+$41

    inc hl
    inc a
    daa
    inc a
    daa
    ld a, [hl-]
    ret nz

    ret nz

    jr nc, jr_03f_70f3

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    call nz, $e43c
    inc a
    db $e4
    ld e, h
    daa
    ld a, [hl-]

jr_03f_7111:
    ld a, $39
    rra
    rla
    ld a, $3d
    ccf
    ccf
    rrca
    ld [$090f], sp
    ld e, $1e
    db $e4
    ld e, h
    ld a, h
    sbc h
    ld hl, sp-$18
    ld a, h
    cp h
    db $fc
    db $fc
    ldh a, [rNR10]
    ldh a, [$90]
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc c
    rrca

jr_03f_7133:
    db $10
    rra
    db $10
    rra
    jr nz, jr_03f_7178

    jr nz, jr_03f_717a

    jr nz, jr_03f_717c

    jr nz, jr_03f_717e

    ret nz

    ret nz

    jr nc, jr_03f_7133

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    jr nz, jr_03f_7190

    jr c, jr_03f_7192

    rra
    rla
    ccf
    inc a
    ccf
    ccf
    rrca
    ld [$090f], sp
    ld e, $1e
    inc b
    db $fc
    inc e
    db $fc
    ld hl, sp-$18

jr_03f_7165:
    db $fc
    inc a
    db $fc
    db $fc
    ldh a, [rNR10]
    ldh a, [$90]
    ld a, b
    ld a, b
    rrca
    rrca
    db $10
    rra
    jr nz, jr_03f_71b4

    ld b, b
    ld a, a
    ld e, b

jr_03f_7178:
    ld h, a
    inc a

jr_03f_717a:
    daa
    inc a

jr_03f_717c:
    dec hl
    inc a

jr_03f_717e:
    dec hl
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_03f_7165

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$3c]

jr_03f_7190:
    inc hl
    rla

jr_03f_7192:
    dec de
    rrca
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rra
    rra
    db $10
    ldh a, [$e0]
    ldh [$80], a
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    inc bc
    inc bc
    inc c

jr_03f_71b4:
    rrca

jr_03f_71b5:
    db $10
    rra
    db $10
    rra
    jr nz, @+$41

    inc hl
    inc a
    daa
    inc a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_03f_71b5

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    call nz, $e43c
    inc a
    daa
    ld a, [hl-]
    daa
    ld a, [hl-]
    ld a, $39
    rra
    rla
    ld e, $1d
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    db $e4
    ld e, h
    db $e4
    ld e, h
    ld a, h
    sbc h
    ld hl, sp-$18
    ld a, h
    cp h
    db $fc
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_03f_71f5:
    db $10
    rra
    db $10
    rra
    jr nz, jr_03f_723a

    jr nz, jr_03f_723c

    jr nz, jr_03f_723e

    nop
    nop
    ret nz

    ret nz

    jr nc, jr_03f_71f5

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    jr nz, jr_03f_7250

    jr nz, jr_03f_7252

    jr c, jr_03f_7254

    rrca
    rrca
    rra
    inc e
    rra
    rra
    rrca
    rrca
    ld c, $0e
    inc b
    db $fc
    inc b
    db $fc
    inc e
    db $fc
    ld hl, sp-$18

jr_03f_7227:
    db $fc
    inc a
    db $fc
    db $fc
    ldh a, [$b0]
    ldh a, [$f0]
    nop
    nop
    rrca
    rrca
    db $10
    rra
    jr nz, jr_03f_7276

    ld b, b
    ld a, a
    ld e, b

jr_03f_723a:
    ld h, a
    inc a

jr_03f_723c:
    daa
    inc a

jr_03f_723e:
    dec hl
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_03f_7227

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$3c]

jr_03f_7250:
    dec hl
    inc a

jr_03f_7252:
    inc hl
    rla

jr_03f_7254:
    dec de
    rrca
    rrca
    dec bc
    ld c, $3f
    dec a
    ccf
    ld a, $1f
    rra
    db $10
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$80], a
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_7276:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_7734:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03f_7cfc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
