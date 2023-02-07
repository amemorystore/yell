; disasSembly of "yell.gbc"
SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    scf
    dec d
    ld [bc], a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld [bc], a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld c, c
    scf
    dec sp
    ld [bc], a
    dec de
    dec de
    dec de
    add hl, hl
    ld [bc], a
    dec de
    add hl, hl
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    add hl, hl
    dec sp
    scf
    dec sp
    ld [bc], a
    add hl, hl
    dec sp
    scf
    dec de
    ld [bc], a
    dec de
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld b, $07
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld b, $07
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    ld bc, $0101
    dec de
    add hl, hl
    dec de
    dec de
    dec sp
    ld b, $07
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    rlca
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld bc, $0607
    rlca
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    rlca
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld bc, $0607
    rlca
    ld [bc], a
    ld bc, $0607
    ld bc, $0102
    rlca
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld bc, $0607
    rlca
    ld [bc], a
    ld bc, $0607
    ld bc, $011b
    rlca
    ld [bc], a
    ld [bc], a
    scf
    dec d
    ld [bc], a
    ld bc, $0607
    rlca
    ld [bc], a
    ld bc, $3707
    add hl, hl
    dec de
    dec de
    dec sp
    ld [bc], a
    ld [bc], a
    scf
    add hl, hl
    dec de
    dec de
    dec sp
    ld b, $07
    ld [bc], a
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld b, $01
    dec de
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    scf
    dec de
    ld hl, $1b29
    dec de
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld b, $01
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld [bc], a
    scf
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, hl
    ld bc, $0101
    ld bc, $0721
    ld [bc], a
    ld [bc], a
    ld b, $1b
    dec de
    add hl, hl
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec de
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec de
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec de
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $1b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld bc, $011b
    ld bc, $0101
    inc d
    ld bc, $0101
    ld d, $1b
    ld bc, $0701
    ld b, $01
    ld bc, $1b1b
    dec de
    dec de
    dec de
    jr jr_018_418a

    dec de
    dec de
    dec de
    dec de
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    dec de
    dec d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_018_418a:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    ld e, b
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $090d
    inc bc
    inc c
    dec c
    inc b
    dec b
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    inc b
    ld [bc], a
    inc c
    dec c
    rrca
    ld [bc], a
    inc c
    ld bc, $0e0e
    ld bc, $0101
    ld bc, $0d01
    add hl, bc
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
    inc c
    dec c
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc c
    dec c
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    ld bc, $0e0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $01
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc l
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, $18
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1d1c
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_018_4304

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    inc e
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_4304:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    ld d, $01
    ld bc, $1801
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_018_4342

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    ld d, $01
    jr jr_018_4356

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_4342:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1d1c
    dec e
    dec e
    dec e
    dec e
    dec hl

jr_018_4356:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1d1c
    dec e
    dec e
    dec e
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld bc, $0101
    ld bc, $3e01
    jr jr_018_43b2

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_43b2:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    add hl, de
    scf
    jr c, jr_018_43cf

    inc c
    inc c
    scf
    jr c, jr_018_43d4

    inc c
    inc c
    scf
    jr c, @+$3d

    add hl, sp
    inc c

jr_018_43cf:
    inc c
    inc c
    dec sp
    add hl, sp
    inc c

jr_018_43d4:
    inc c
    inc c
    dec sp
    add hl, sp
    dec bc
    dec de
    inc c
    inc c
    inc c
    dec bc
    dec de
    inc c
    inc c
    inc c
    dec bc
    dec de
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    scf
    jr c, jr_018_440b

    inc c
    inc c
    scf
    jr c, jr_018_4410

    inc c
    inc c
    scf
    jr c, jr_018_4444

    add hl, sp
    inc c

jr_018_440b:
    inc c
    inc c
    dec sp
    add hl, sp
    inc c

jr_018_4410:
    inc c
    inc c
    dec sp
    add hl, sp
    dec bc
    dec de
    inc c
    inc c
    inc c
    dec bc
    dec de
    inc c
    inc c
    inc c
    dec bc
    dec de
    rrca
    add hl, bc
    ld a, [bc]
    adc l
    ld b, h
    jr nc, jr_018_446b

    inc l
    ld b, h
    nop
    ld d, e
    ld b, h
    call Call_000_3c29
    ret


    ld a, [hl-]
    ld b, h
    ccf
    ld b, h
    ld b, h
    ld b, h
    ld c, c
    ld b, h
    ld c, [hl]
    ld b, h
    rla
    ld d, l
    ld b, c
    dec hl
    ld d, b
    rla
    sub d
    ld b, c
    dec hl
    ld d, b

jr_018_4444:
    rla
    cp h
    ld b, c
    dec hl
    ld d, b
    rla
    ld a, [$2b41]
    ld d, b
    rla
    inc e
    ld b, d
    dec hl
    ld d, b
    ld bc, $1103
    ld a, [bc]
    ld bc, $11ff
    dec bc
    ld bc, $09ff
    ld [de], a
    ld bc, $008f
    dec b
    ld a, [hl+]
    ld de, $ff13
    pop de
    ld bc, $0c1c

jr_018_446b:
    ld a, [bc]
    rst $38
    rst $38
    ld [bc], a
    inc [hl]
    db $10
    inc c
    rst $38
    rst $38
    inc bc
    dec c
    dec bc
    ld de, $ffff
    inc b
    add hl, de
    dec bc
    dec d
    rst $38
    jp nc, Jump_018_7e05

    rst $00
    ld de, $7e0a
    rst $00
    ld de, $420b
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld a, [bc]
    ld b, $07
    inc bc
    ld bc, $0101
    ld bc, $0610
    ld c, $0e
    ld c, $06
    ld [$0101], sp
    inc c
    add hl, sp
    ld c, $0e
    ld c, $0e
    ld c, $20
    dec c
    ld bc, $0e0a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rlca
    ld bc, $0e39
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld [de], a
    ld bc, $0e1c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld e, $01
    inc c
    ld c, $0e
    ld c, $0e
    dec h
    ccf
    ccf
    dec c
    ld bc, $1401
    ld c, $0e
    ld c, $25
    ld c, $0b
    ld bc, $0101
    ld bc, $1c05
    ld c, $1e
    dec b
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    ld d, l
    ld b, [hl]
    jp c, $f345

    ld b, h
    nop
    dec [hl]
    ld b, [hl]
    call Call_000_3c29
    ld hl, $450a
    ld a, [$d62a]
    jp Jump_000_3d93


Jump_018_44ff:
    xor a
    ld [$cd6b], a
    ld [$d62a], a
    ld [$da38], a
    ret


    db $10
    ld b, l
    ld e, a
    ld b, l
    cp d
    ld b, l
    ld a, [$d763]
    bit 7, a
    ret nz

    ld hl, $455a
    call Call_000_34bc
    ret nc

    call Call_000_2233
    ld c, $02
    ld a, $de
    call Call_000_2211
    ld hl, $d763
    res 6, [hl]
    ld a, [$cd3d]
    cp $01
    ld a, $08
    ld b, $00
    jr nz, jr_018_4540

    ld hl, $d763
    set 6, [hl]
    ld a, $02
    ld b, $0c

jr_018_4540:
    ld [$d527], a
    ld a, $01
    ldh [$8c], a
    ld a, b
    ldh [$8d], a
    call Call_000_3488
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    xor a
    ldh [$b4], a
    ldh [$b3], a
    ret


    dec b
    rrca
    ld b, $0e
    rrca
    ld a, [$d056]
    cp $ff
    jp z, Jump_018_44ff

    ld a, $f0
    ld [$cd6b], a
    ld hl, $d763
    set 7, [hl]
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld de, $45b1
    ld a, [$d763]
    bit 6, a
    jr nz, jr_018_458d

    ld hl, $5e22
    ld b, $3c
    call Call_000_3e84
    ld de, $45a8

jr_018_458d:
    ld a, $01
    ldh [$8c], a
    call Call_000_363d
    call Call_000_2233
    ld b, $02
    ld hl, $59bd
    call Call_000_3e84
    ld a, $02
    ld [$d62a], a
    ld [$da38], a
    ret


    ret nz

    nop
    nop
    ret nz

    nop
    nop
    ret nz

    ret nz

    rst $38
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $39
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    xor a
    ld [$cd6b], a
    call Call_000_216b
    ld a, $00
    ld [$d62a], a
    ld [$da38], a
    ret


    sbc $45
    jr nc, jr_018_4624

    ld [$63fa], sp
    rst $10
    bit 7, a
    jr z, jr_018_45ee

    ld hl, $462b
    call Call_000_3c36
    jr jr_018_4619

jr_018_45ee:
    ld hl, $461c
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4621
    ld de, $4626
    call Call_000_32f0
    ld a, $f2
    ld [$d058], a
    ld a, [$d714]
    add $01
    ld [$d05c], a
    ld a, $01
    ld [$d62a], a
    ld [$da38], a

jr_018_4619:
    jp Jump_000_23d2


    rla
    ld d, c
    ld b, d
    dec hl
    ld d, b
    rla
    cp e
    ld b, d

jr_018_4624:
    dec hl
    ld d, b
    rla
    ld [$2b42], a
    ld d, b
    rla
    dec l
    ld b, e
    dec hl
    ld d, b
    rla
    ldh a, [rSCX]
    dec hl
    ld d, b
    ld bc, $0902
    inc bc
    nop
    sub b
    add hl, bc
    ld [de], a
    ld [bc], a
    adc [hl]
    nop
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld [de], a
    rst $38
    rst $38
    ld bc, $0b19
    rlca
    rst $38
    db $d3
    ld [bc], a
    ld a, [hl-]
    rst $00
    add hl, bc
    inc bc
    ld b, d
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld h, b
    ld e, e
    ld h, c
    inc bc
    ld bc, $0101
    ld bc, $5b10
    ld d, c
    ld c, $0e
    ld b, $08
    ld bc, $0c01
    ld e, [hl]
    ld c, h
    ld [hl], $0e
    ld [hl], $36
    ld e, a
    dec c
    ld bc, $0e0a
    ld [hl], $52
    ld c, h
    ld c, h
    ld [hl], $0e
    rlca
    ld bc, $0e15
    ld d, d
    ld d, d
    ld c, $52
    ld d, d
    ld c, $16
    ld bc, $0e1c
    ld [hl], $52
    ld c, $0e
    ld [hl], $0e
    ld e, $01
    inc c
    ld d, a
    ld d, d
    ld d, d
    ld d, d
    ld c, $4f
    ld e, b
    dec c
    ld bc, $1401
    dec e
    ld [hl], $36
    ld [hl], $1d
    dec bc
    ld bc, $0101
    ld bc, $5305
    ld d, [hl]
    ld d, h
    dec b
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    ld a, a
    ld b, a
    call nc, $bb46
    ld b, [hl]
    nop
    ld c, h
    ld b, a
    call Call_000_3c29
    ld hl, $46dc
    ld de, $46ce
    ld a, [$d62b]
    call Call_000_30fc
    ld [$d62b], a
    ret


    or l
    ld sp, $31e8
    ld de, $0132
    ld b, a
    dec bc
    ld b, a
    dec d
    ld b, a
    rst $28
    inc hl
    ld bc, $6420
    rst $10
    rra
    ld b, a
    add hl, hl
    ld b, a
    inc h
    ld b, a
    inc h
    ld b, a
    ld [bc], a
    jr nc, jr_018_474f

    rst $10
    ld l, $47
    jr c, jr_018_4737

    inc sp
    ld b, a
    inc sp
    ld b, a
    inc bc
    jr nz, jr_018_475b

    rst $10
    dec a
    ld b, a
    ld b, a
    ld b, a
    ld b, d
    ld b, a
    ld b, d
    ld b, a
    rst $38
    ld [$dc21], sp
    ld b, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    ld [$e821], sp
    ld b, [hl]

Jump_018_470f:
    call Call_000_3168
    jp Jump_000_23d2


    ld [$f421], sp
    ld b, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld c, h
    ld b, h
    dec hl
    ld d, b
    rla
    ld l, d
    ld b, h
    dec hl
    ld d, b
    rla
    ld a, d
    ld b, h
    dec hl
    ld d, b
    rla
    xor h
    ld b, h
    dec hl
    ld d, b
    rla
    ret nz

    ld b, h
    dec hl

jr_018_4737:
    ld d, b
    rla
    rst $10
    ld b, h
    dec hl
    ld d, b
    rla
    ldh a, [rLY]
    dec hl
    ld d, b
    rla
    rlca
    ld b, l
    dec hl
    ld d, b
    rla
    rra
    ld b, l
    dec hl
    ld d, b
    ld bc, $0902

jr_018_474f:
    inc bc
    nop
    adc a
    add hl, bc
    ld [de], a
    ld bc, $0091
    inc b
    add hl, de
    rlca
    db $10

jr_018_475b:
    rst $38
    jp nc, $f541

    dec b
    add hl, de
    inc c
    dec c
    rst $38
    ret nc

    ld b, d
    push af
    ld b, $19
    ld de, $ff0e
    ret nc

    ld b, e
    push af
    ld [$0547], sp
    db $10
    rst $38
    rst $38
    add h
    dec e
    ld a, [hl-]
    rst $00
    add hl, bc
    inc bc
    ld b, d
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld a, [bc]
    ld b, $07
    inc bc
    ld bc, $0101
    ld bc, $5b10
    ld d, c
    ld c, $0e
    ld b, $08
    ld bc, $0c01
    add hl, sp
    inc de
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, b
    dec c
    ld bc, $0e0a
    ld d, b
    ld c, $0e
    ld c, $13
    rla
    rlca
    ld bc, $0e11
    ld d, b
    ld c, $52
    ld c, $51
    ld c, $12
    ld bc, $0e1c
    ld d, b
    ld c, $0e
    ld c, $51
    ld c, $1e
    ld bc, $390c
    ld c, [hl]
    ld c, $4c
    ld c, h
    ld c, l
    ld c, h
    dec c
    ld bc, $1401
    ld d, [hl]
    ld c, $0e
    ld c, $56
    dec bc
    ld bc, $0101
    ld bc, $5305
    ld d, [hl]
    ld d, h
    dec b
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    cp e
    ld c, b
    cp $47
    push hl
    ld b, a
    nop
    ld a, d
    ld c, b
    call Call_000_3c29
    ld hl, $480a
    ld de, $47f8
    ld a, [$d62c]
    call Call_000_30fc
    ld [$d62c], a
    ret


    or l
    ld sp, $31e8
    ld de, $2f32
    ld c, b
    add hl, sp
    ld c, b
    ld b, e
    ld c, b
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld bc, $6520
    rst $10
    ld c, l
    ld c, b
    ld d, a
    ld c, b
    ld d, d
    ld c, b
    ld d, d
    ld c, b
    ld [bc], a
    jr nz, jr_018_487e

    rst $10
    ld e, h
    ld c, b
    ld h, [hl]
    ld c, b
    ld h, c
    ld c, b
    ld h, c
    ld c, b
    inc bc
    jr nz, jr_018_488a

    rst $10
    ld l, e
    ld c, b
    ld [hl], l
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    rst $38
    ld [$0a21], sp
    ld c, b
    call Call_000_3168
    jp Jump_000_23d2


    ld [$1621], sp
    ld c, b
    call Call_000_3168
    jp Jump_000_23d2


    ld [$2221], sp
    ld c, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ccf
    ld b, l
    dec hl
    ld d, b
    rla
    ld d, e
    ld b, l
    dec hl
    ld d, b
    rla
    ld l, b
    ld b, l
    dec hl
    ld d, b
    rla
    add [hl]
    ld b, l
    dec hl
    ld d, b
    rla
    and d
    ld b, l
    dec hl
    ld d, b
    rla
    xor c
    ld b, l
    dec hl
    ld d, b
    rla
    call nc, Call_000_2b45
    ld d, b
    rla
    db $ec
    ld b, l
    dec hl
    ld d, b
    rla
    db $fd
    ld b, l
    dec hl
    ld d, b
    ld bc, $0902
    inc bc

jr_018_487e:
    nop
    sub d
    add hl, bc
    ld [de], a
    ld bc, $0090
    ld b, $19
    ld c, $09
    rst $38

jr_018_488a:
    db $d3
    ld b, c
    push af
    add hl, bc
    add hl, de
    dec bc
    inc de
    rst $38
    ret nc

    ld b, d
    push af
    ld a, [bc]
    add hl, de
    db $10
    ld [de], a
    rst $38
    jp nc, $f543

    inc c
    ld b, a
    ld c, $10
    rst $38
    rst $38
    add h
    ld d, d
    ld b, a
    ld c, $0d
    rst $38
    rst $38
    add l
    ld c, $47
    inc d
    db $10
    rst $38
    rst $38
    add [hl]
    inc hl
    ld a, [hl-]
    rst $00
    add hl, bc
    inc bc
    ld b, d
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld a, [bc]
    ld b, $07
    inc bc
    ld bc, $0101
    ld bc, $5b09
    ld d, c
    ld c, $0e
    ld b, $08
    ld bc, $0c01
    ld e, [hl]
    inc de
    rla
    ld d, c
    ld c, a
    ld c, h
    ld e, a
    dec c
    ld bc, $0e0a
    inc de
    rla
    ld h, [hl]
    ld c, a
    ld c, [hl]
    ld c, l
    rlca
    ld bc, $4f15
    ld c, $4f
    ld c, l
    ld c, a
    ld c, $0e
    ld d, $01
    inc e
    ld c, $0e
    ld h, a
    ld c, [hl]
    ld c, a
    inc de
    ld h, a
    ld e, $01
    inc c
    add hl, sp
    ld h, [hl]
    inc de
    ld c, $13
    rla
    jr nz, @+$0f

    ld bc, $1401
    dec e
    rla
    ld c, [hl]
    ld c, a
    dec e
    dec bc
    ld bc, $0101
    ld bc, $5305
    ld d, l
    ld e, $05
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    ld a, b
    ld c, d
    adc d
    ld c, c
    ld hl, $0049
    scf
    ld c, d
    call Call_000_3c29
    ld hl, $4998
    ld de, $4934
    ld a, [$d62d]
    call Call_000_30fc
    ld [$d62d], a
    ret


    ld a, [hl-]
    ld c, c
    add sp, $31
    ld de, $2132
    add c
    ld c, c
    call Call_000_34bc
    jr c, jr_018_494f

    ld hl, $d72d
    res 4, [hl]
    ld hl, $d766
    res 7, [hl]
    jp Jump_000_31b5


jr_018_494f:
    ld hl, $d766
    bit 7, [hl]
    set 7, [hl]
    ret nz

    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld hl, $d72d
    set 4, [hl]
    ld a, $07
    call Call_000_3eb4
    call Call_000_1e96
    call Call_000_3ddb
    call Call_000_3ddb
    call Call_000_1ebd
    ld a, $07
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cd6b], a
    ret


    ld [$080a], sp
    dec bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec bc
    rst $38
    ret


    ld c, c
    adc $49
    rst $20
    ld c, c
    nop
    ld c, d
    add hl, de
    ld c, d
    rst $28
    inc hl
    ld [hl-], a
    ld c, d
    ld [bc], a
    jr nz, @+$68

    rst $10
    ret c

    ld c, c
    ld [c], a
    ld c, c
    db $dd
    ld c, c
    db $dd
    ld c, c
    inc bc
    jr nc, jr_018_4a0d

    rst $10
    pop af
    ld c, c
    ei
    ld c, c
    or $49
    or $49
    inc b
    jr nz, jr_018_4a19

    rst $10
    ld a, [bc]
    ld c, d
    inc d
    ld c, d
    rrca
    ld c, d
    rrca
    ld c, d
    dec b
    jr nz, jr_018_4a25

    rst $10
    inc hl
    ld c, d
    dec l
    ld c, d
    jr z, jr_018_4a10

    jr z, jr_018_4a12

    rst $38
    rla
    ld l, $46
    dec hl
    ld d, b
    ld [$9821], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], l
    ld b, [hl]
    dec hl
    ld d, b
    rla
    sub d
    ld b, [hl]
    dec hl
    ld d, b
    rla
    sbc c
    ld b, [hl]
    dec hl
    ld d, b
    ld [$a421], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    or d
    ld b, [hl]
    dec hl
    ld d, b
    rla
    rst $08
    ld b, [hl]
    dec hl
    ld d, b
    rla
    ld [c], a
    ld b, [hl]
    dec hl
    ld d, b
    ld [$b021], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $f4
    ld b, [hl]

jr_018_4a0d:
    dec hl
    ld d, b
    rla

jr_018_4a10:
    cp $46

jr_018_4a12:
    dec hl
    ld d, b
    rla
    inc bc
    ld b, a
    dec hl
    ld d, b

jr_018_4a19:
    ld [$bc21], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld a, [de]

jr_018_4a25:
    ld b, a
    dec hl
    ld d, b
    rla
    dec l
    ld b, a
    dec hl
    ld d, b
    rla
    inc [hl]
    ld b, a
    dec hl
    ld d, b
    rla
    ld h, c
    ld b, a
    dec hl
    ld d, b
    ld bc, $0902
    inc bc
    nop
    sub c
    add hl, bc
    ld [de], a
    nop
    sub e
    nop
    ld b, $19
    inc c
    db $10
    rst $38
    rst $38
    ld bc, $0b19
    dec d
    rst $38
    jp nc, $f542

    ld c, $19
    rlca
    ld [de], a
    rst $38
    jp nc, $f543

    db $10
    add hl, de
    ld c, $0a
    rst $38
    db $d3
    ld b, h
    push af
    ld de, $1419
    dec c
    rst $38
    db $d3
    ld b, l
    push af
    ld [de], a
    ld b, a
    ld [de], a
    ld a, [bc]
    rst $38
    rst $38
    add [hl]
    ld sp, $c73a
    add hl, bc
    inc bc
    ld b, d
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $0101
    inc bc
    ld a, [bc]
    ld b, $07
    inc bc
    ld bc, $0101
    ld bc, $5b10
    ld h, l
    ld [hl], $36
    ld b, $08
    ld bc, $0c01
    ld d, a
    ld l, c
    ld c, h
    ld [hl], $4c
    ld l, d
    ld e, b
    dec c
    ld bc, $363a
    ld [hl], $4f
    ld c, a
    ld [hl], $36
    ld c, $07
    ld bc, $5011
    ld d, d
    ld [hl], $33
    ld [hl], $52
    ld d, c
    ld [de], a
    ld bc, $501c
    ld [hl], $36
    ld c, a
    ld c, h
    ld [hl], $0e
    ld e, $01
    inc c
    ld e, [hl]
    ld h, a
    ld c, a
    ld c, $4f
    ld l, b
    ld e, a
    dec c
    ld bc, $1401
    dec e
    ld [hl], $36
    ld [hl], $1d
    dec bc
    ld bc, $0101
    ld bc, $1c05
    dec e
    ld e, $05
    ld bc, $0f01
    add hl, bc
    ld a, [bc]
    add h
    ld c, h
    and b
    ld c, e
    sbc $4a
    nop
    ld c, d
    ld c, h
    call Call_000_3c29
    ld hl, $4bae
    ld de, $4afc
    ld a, [$d62e]
    call Call_000_30fc
    ld [$d62e], a
    ret


Jump_018_4af1:
    xor a
    ld [$cd6b], a
    ld [$d62e], a
    ld [$da38], a
    ret


    ld b, $4b
    add sp, $31
    ld de, $9032
    ld c, e
    scf
    ld c, e
    ld a, [$d767]
    bit 7, a
    jp nz, Jump_000_31b5

    ld hl, $4b34
    call Call_000_34bc
    jp nc, Jump_000_31b5

    xor a
    ldh [$b4], a
    ld a, $06
    ldh [$8c], a
    call Call_000_2817
    ld a, $91
    ld [$d058], a
    ld a, $1e
    ld [$d126], a
    ld a, $04
    ld [$d62e], a
    ld [$da38], a
    ret


    db $10
    ld a, [bc]
    rst $38
    ld a, [$d056]
    cp $ff
    jp z, Jump_018_4af1

    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72c]
    bit 6, a
    ret nz

    call Call_000_231c
    ld a, $f0
    ld [$cd6b], a
    ld a, [$cf0b]
    and a
    jr nz, jr_018_4b71

    ld hl, $d767
    set 7, [hl]
    ld a, $07
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d62e], a
    ld [$da38], a
    ret


jr_018_4b71:
    ld a, $01
    ld [$cd38], a
    ld a, $10
    ld [$ccd3], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    ld hl, $d72f
    set 7, [hl]
    ld a, $03
    ld [$d62e], a
    ld [$da38], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$d62e], a
    ld [$da38], a
    ret


    db $d3
    ld c, e
    db $dd
    ld c, e
    rst $20
    ld c, e
    rst $28
    inc hl
    rst $28
    inc hl
    ld b, l
    ld c, h
    pop af
    ld c, e
    ld bc, $6730
    rst $10
    jr jr_018_4c00

    ld [hl+], a
    ld c, h
    dec e
    ld c, h
    dec e
    ld c, h
    ld [bc], a
    jr nc, jr_018_4c24

    rst $10
    daa
    ld c, h
    ld sp, $2c4c
    ld c, h
    inc l
    ld c, h
    inc bc
    jr nz, jr_018_4c30

    rst $10
    ld [hl], $4c
    ld b, b
    ld c, h
    dec sp
    ld c, h
    dec sp
    ld c, h
    rst $38
    ld [$ae21], sp
    ld c, e
    call Call_000_3168
    jp Jump_000_23d2


    ld [$ba21], sp
    ld c, e
    call Call_000_3168
    jp Jump_000_23d2


    ld [$c621], sp
    ld c, e
    call Call_000_3168
    jp Jump_000_23d2


    ld [$0e21], sp
    ld c, h
    call Call_000_3c36
    ld a, $91
    call Call_000_118b
    call Call_000_373e

jr_018_4c00:
    ld c, $1e
    call Call_000_372f
    ld hl, $4c13
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    sbc [hl]
    ld b, a
    dec hl
    ld d, b
    rla
    jp nc, $2b47

    ld d, b
    rla
    ld c, $48
    dec hl
    ld d, b
    rla
    dec h
    ld c, b
    dec hl
    ld d, b
    rla
    dec l

jr_018_4c24:
    ld c, b
    dec hl
    ld d, b
    rla
    ld c, b
    ld c, b
    dec hl
    ld d, b
    rla
    ld e, b
    ld c, b
    dec hl

jr_018_4c30:
    ld d, b
    rla
    ld l, a
    ld c, b
    dec hl
    ld d, b
    rla
    sbc h
    ld c, b
    dec hl
    ld d, b
    rla
    cp d
    ld c, b
    dec hl
    ld d, b
    rla
    pop bc
    ld c, b
    dec hl
    ld d, b
    rla
    rst $10
    ld c, b
    dec hl
    ld d, b
    ld bc, $0902
    ld [de], a
    ld bc, $1092
    add hl, bc
    nop
    sub h
    nop
    dec b
    add hl, de
    ld c, $10
    rst $38
    db $d3
    ld b, c
    push af
    inc de
    add hl, de
    add hl, bc
    dec c
    rst $38
    ret nc

    ld b, d
    push af
    inc d
    add hl, de
    add hl, bc
    inc d
    rst $38
    jp nc, $f543

    dec d
    ld b, a
    inc c
    ld a, [bc]
    rst $38
    rst $38
    add h
    jr z, jr_018_4cbd

    ld [de], a
    ld [de], a
    rst $38
    rst $38
    add l
    ld l, $42
    rst $00
    add hl, bc
    ld [de], a
    ld a, l
    rst $00
    db $10
    add hl, bc
    ld bc, $0101
    inc bc
    ld h, b
    ld e, e
    ld h, c
    inc bc
    ld bc, $0101
    ld bc, $5d10
    ld b, $36
    ld [hl], $06
    ld [$0101], sp
    inc c
    ld e, [hl]
    ld c, [hl]
    ld c, h
    ld [hl], $52
    ld [hl], $5f
    dec c
    ld bc, $360a
    ld [hl], $36
    ld [hl], $52
    ld [hl], $4c
    rlca
    ld bc, $525a
    ld d, b
    ld c, a
    ld c, a
    ld c, h
    ld [hl], $36
    ld d, $01
    inc e
    ld c, a
    ld [hl], $4c
    ld c, h
    ld c, a

jr_018_4cbd:
    rla
    ld c, a
    ld e, $01
    inc c
    ld d, a
    ld [hl], $4f
    ld [hl], $4f
    ld d, c
    ld e, b
    dec c
    ld bc, $1401
    dec e
    ld c, a
    ld [hl], $52
    dec e
    dec bc
    ld bc, $0101
    ld bc, $3005
    dec e
    ld e, $05
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rrca
    add hl, bc
    ld a, [bc]
    sbc b
    ld c, a
    db $f4
    ld c, [hl]
    db $f4
    ld c, h
    nop
    ld a, d
    ld c, a
    call Call_000_3c29
    ld hl, $4d09
    ld a, [$d62f]
    call Call_000_3d93
    ret


Jump_018_4d01:
    xor a
    ld [$cd6b], a

Call_018_4d05:
    ld [$d62f], a
    ret


    ld hl, $7f4d
    ld c, l
    sbc [hl]
    ld c, l
    xor c
    ld c, l
    cp a
    ld c, l
    sbc $4d
    jp hl


    ld c, l
    ld c, $4e
    inc [hl]
    ld c, [hl]
    ld a, d
    ld c, [hl]
    sbc e
    ld c, [hl]
    rst $00
    ld c, [hl]
    ld a, [$d768]
    bit 1, a
    call z, Call_018_4d2a
    ret


Call_018_4d2a:
    ld a, [$d360]
    cp $0c
    ret nz

    ld hl, $d768
    res 2, [hl]
    ld a, [$d361]
    cp $0a
    jr z, jr_018_4d47

    ld a, [$d361]
    cp $0b
    ret nz

    ld hl, $d768
    set 2, [hl]

jr_018_4d47:
    call Call_000_2233
    ld c, $20
    ld a, $9c
    call Call_000_2211
    xor a
    ldh [$b4], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $41
    call Call_018_4eaf
    ld a, $42
    call Call_018_4eaf
    ld a, $01
    ld [$cc3c], a
    ld a, $04
    ldh [$8c], a
    call Call_000_2817
    ld a, $ff
    ld [$cd6b], a
    ld a, $01
    call Call_018_4d05
    ret


    inc b
    inc b
    inc b
    inc b
    rst $38
    ld de, $4d7b
    ld a, [$d768]
    bit 2, a
    jr z, jr_018_4d8c

    ld de, $4d7a

jr_018_4d8c:
    ld a, $01
    ldh [$8c], a
    call Call_000_363d
    ld a, $ff
    ld [$cd6b], a
    ld a, $02
    call Call_018_4d05
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $00
    ld [$c119], a
    ld a, [$d768]
    bit 2, a
    jr z, jr_018_4dba

    ld a, $0c
    ld [$c119], a

jr_018_4dba:
    ld a, $02
    ld [$c111], a
    ld de, $4d7a
    ld a, [$d768]
    bit 2, a
    jr z, jr_018_4dcc

    ld de, $4d7b

jr_018_4dcc:
    ld a, $02
    ldh [$8c], a
    call Call_000_363d
    ld a, $ff
    ld [$cd6b], a
    ld a, $05
    call Call_018_4d05
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $02
    ld [$c121], a
    ld a, $08
    ld [$c129], a
    ld a, [$d768]
    bit 2, a
    jr z, jr_018_4dff

    ld a, $00
    ld [$c129], a

jr_018_4dff:
    call Call_000_3ddb
    ld a, $fc
    ld [$cd6b], a
    ld a, $05
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4f2c
    ld de, $4f2c
    call Call_000_32f0
    ld a, $e6
    ld [$d058], a
    ld a, $2c
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld [$cd6b], a
    ld a, $08
    call Call_018_4d05
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d056]
    cp $ff
    jp z, Jump_018_4d01

    ld a, $02
    ld [$c111], a
    ld [$c121], a
    xor a
    ld [$c119], a
    ld [$c129], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $01
    ld [$cc3c], a
    ld a, $06
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cc3c], a
    call Call_000_2233
    ld c, $20
    ld a, $9c
    call Call_000_2211
    ld a, $ff
    ld [$cd6b], a
    ld a, $09
    call Call_018_4d05
    ret


    ld a, $ff
    ld [$cd6b], a
    call Call_000_1eb6
    ld a, $41
    call Call_018_4ebe
    ld a, $42
    call Call_018_4ebe
    call Call_000_231c
    call Call_000_3ddb
    call Call_000_1e8f
    ld a, $0a
    call Call_018_4d05
    ret


    call Call_000_216b
    xor a
    ldh [$b4], a
    ld [$cd6b], a
    ld hl, $d768
    set 1, [hl]
    ld a, $00
    call Call_018_4d05
    ret


Call_018_4eaf:
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    call Call_000_231c
    call Call_000_3ddb
    ret


Call_018_4ebe:
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, $43
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $04
    ld [$c109], a
    ld a, $95
    ldh [$8b], a
    ld a, $01
    ld [$d42e], a
    ld a, $04
    ld [$d364], a
    ld hl, $d72c
    set 3, [hl]
    ld a, $00
    ld [$d62f], a
    ret


    nop
    ld c, a
    nop
    ld c, a
    ld a, $4f
    ld bc, $274f
    ld c, a
    ld sp, $504f
    rla
    ldh a, [rOBP0]
    dec hl
    ld [$0a0e], sp
    call Call_000_372f
    ld a, $08
    ld [$d527], a
    ld a, $00
    ld [$cd4f], a
    ld a, $00
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    ld c, $14
    call Call_000_372f
    jp Jump_000_23d2


    rla
    inc b
    ld c, c
    dec hl
    ld d, b
    rla
    db $76
    ld c, c
    dec hl
    ld d, b
    rla
    adc l
    ld c, c
    dec hl
    ld [$400e], sp
    call Call_000_372f
    jp Jump_000_23d2


    ld [$7521], sp
    ld c, a
    call Call_000_3c36
    ld hl, $d7df
    set 7, [hl]
    ld hl, $d768
    set 7, [hl]
    ld a, $44
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, $18
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $19
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, $0b
    ld [$d62f], a
    jp Jump_000_23d2


    rla
    cp e
    ld c, c
    dec hl
    ld d, b
    ld bc, $1001
    add hl, bc
    ld bc, $0093
    inc bc
    ld b, l
    inc c
    ld c, $ff
    ret nc

    ld bc, $0c46
    rrca
    rst $38
    ret nc

    ld [bc], a
    ld d, $07
    ld c, $ff
    ret nc

    inc bc
    ld a, l
    rst $00
    db $10
    add hl, bc
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0210
    ld l, h
    ld c, $6d
    ld [bc], a
    ld [$0101], sp
    inc c
    ld [bc], a
    ld [bc], a
    add hl, sp
    ld c, $20
    ld [bc], a
    ld [bc], a
    dec c
    ld bc, $0202
    ld [bc], a
    add hl, sp
    ld c, $20
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    add hl, sp
    ld c, $20
    ld [bc], a
    dec [hl]
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    add hl, sp
    ld c, $20
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $020c
    ld [bc], a
    inc e
    ld c, $1e
    ld [bc], a
    ld [bc], a
    dec c
    ld bc, $1401
    ld [bc], a
    ld [bc], a
    ld c, $02
    ld [bc], a
    dec bc
    ld bc, $0101
    ld bc, $3105
    dec e
    ld e, $05
    ld bc, $2101
    cpl
    rst $10
    set 6, [hl]
    xor a
    ld [$cc26], a
    ld a, $03
    ld [$cc29], a
    ld a, [$cd37]
    dec a
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld a, [$cd37]
    dec a
    ld bc, $0002
    ld hl, $0003
    call Call_000_3a74
    dec l
    ld b, l
    ld c, $0d
    ld hl, $c3a0
    call Call_000_16f0
    call Call_000_231c
    call Call_018_50ae
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3aab
    bit 1, a
    jr nz, jr_018_5093

    ld hl, $cc5b
    ld a, [$cc26]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ldh [$db], a
    cp $29
    jr z, jr_018_5057

    cp $2a
    jr z, jr_018_5053

    ld b, $ab
    jr jr_018_5059

jr_018_5053:
    ld b, $62
    jr jr_018_5059

jr_018_5057:
    ld b, $5a

jr_018_5059:
    ld [$d70e], a
    ld a, b
    ld [$d70f], a
    call Call_018_50d7
    ld hl, $509a
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_018_5093

    ld hl, $509f
    call Call_000_3c36
    ld a, [$d70e]
    ldh [$db], a
    ld b, $05
    ld hl, $7dbb
    call Call_000_3e84
    ld hl, $50a4
    call Call_000_3c36
    ld hl, $d7a2
    set 0, [hl]
    set 1, [hl]
    ret


jr_018_5093:
    ld hl, $50a9
    call Call_000_3c36
    ret


    rla
    rst $18
    ld h, b
    inc l
    ld d, b
    rla
    ld h, d
    ld h, c
    inc l
    ld d, b
    rla
    sbc b
    ld h, c
    inc l
    ld d, b
    rla
    rst $08
    ld h, c
    inc l
    ld d, b

Call_018_50ae:
    ld hl, $cc5b
    xor a
    ldh [$db], a

jr_018_50b4:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    ld [$d11d], a
    call Call_000_2ec4
    ld hl, $c3ca
    ldh a, [$db]
    ld bc, $0028
    call Call_000_3a74
    ld de, $cd6d
    call Call_000_1723
    ld hl, $ffdb
    inc [hl]
    pop hl
    jr jr_018_50b4

Call_018_50d7:
    ld a, [$d70f]
    ld [$d11d], a
    call Call_000_2e93
    call Call_000_3813
    ld a, [$d70e]
    ld [$d11d], a
    call Call_000_2ec4
    ret


    inc bc
    jr @+$13

    nop
    ld b, b
    ld [de], a
    ld d, c
    ld sp, hl
    ld d, b
    nop
    dec d
    ld d, d
    call Call_000_3c29
    ld hl, $5132
    ld de, $510c
    ld a, [$d617]
    call Call_000_30fc
    ld [$d617], a
    ret


    or l
    ld sp, $31e8
    ld de, $6f32
    ld d, c
    ld [hl], h
    ld d, c
    ld a, d
    ld d, c
    add b
    ld d, c
    add [hl]
    ld d, c
    adc h
    ld d, c
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    pop hl
    ld d, c
    and $51
    db $ed
    ld d, c
    db $f4
    ld d, c
    ei
    ld d, c
    ld [bc], a
    ld d, d
    add hl, bc
    ld d, d
    ld [bc], a
    ld b, b
    ld a, [c]
    rst $10
    sub [hl]
    ld d, c
    and b
    ld d, c
    sbc e
    ld d, c
    sbc e
    ld d, c
    inc bc
    ld b, b
    ld a, [c]
    rst $10
    and l
    ld d, c
    xor a
    ld d, c
    xor d
    ld d, c
    xor d
    ld d, c
    inc b
    db $10
    ld a, [c]
    rst $10
    or h
    ld d, c
    cp [hl]
    ld d, c
    cp c
    ld d, c
    cp c
    ld d, c
    dec b
    nop
    ld a, [c]
    rst $10
    jp $cd51


    ld d, c
    ret z

    ld d, c
    ret z

    ld d, c
    ld b, $40
    ld a, [c]
    rst $10
    jp nc, $dc51

    ld d, c
    rst $10
    ld d, c
    rst $10
    ld d, c
    rst $38
    rla
    inc sp
    ld b, e
    ld h, $50
    ld [$3221], sp
    ld d, c
    jr jr_018_5190

    ld [$3e21], sp
    ld d, c
    jr jr_018_5190

    ld [$4a21], sp
    ld d, c
    jr jr_018_5190

    ld [$5621], sp
    ld d, c
    jr jr_018_5190

    ld [$6221], sp
    ld d, c

jr_018_5190:
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, a
    ld b, e
    ld h, $50
    rla
    sbc [hl]
    ld b, e
    ld h, $50
    rla
    cp c
    ld b, e
    ld h, $50
    rla
    jp c, $2643

    ld d, b
    rla
    add hl, bc
    ld b, h
    ld h, $50
    rla
    ld [hl+], a
    ld b, h
    ld h, $50
    rla
    ld c, a
    ld b, h
    ld h, $50
    rla
    ld l, a
    ld b, h
    ld h, $50
    rla
    adc h
    ld b, h
    ld h, $50
    rla
    sbc $44
    ld h, $50
    rla
    ld a, [$2644]
    ld d, b
    rla
    ld a, [bc]
    ld b, l
    ld h, $50
    rla
    ccf
    ld b, l
    ld h, $50
    rla
    ld l, l
    ld b, l
    ld h, $50
    rla
    add c
    ld b, l
    ld h, $50
    rla
    or a
    ld b, l
    ld h, $50
    ld [$2821], sp
    ld h, l
    jp Jump_018_520d


    ld [$3421], sp
    ld h, l
    jp Jump_018_520d


    ld [$4021], sp
    ld h, l
    jp Jump_018_520d


    ld [$4c21], sp
    ld h, l
    jp Jump_018_520d


    ld [$5821], sp
    ld h, l
    jp Jump_018_520d


    ld [$2821], sp
    ld h, l

Jump_018_520d:
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    inc bc
    ld b, $00
    ld bc, $2f02
    nop
    ld [bc], a
    ld [bc], a
    cpl
    cpl
    rrca
    ld bc, $2f32
    db $10
    ld bc, $2f32
    ld de, $3201
    cpl
    ld [de], a
    ld bc, $0632
    jr z, @+$1a

    dec bc
    jr nz, jr_018_5245

    inc c
    ld de, $0d1a
    jr jr_018_523f

    ld c, $2d
    ld [de], a
    rrca

jr_018_523f:
    ld bc, $1002
    ld a, [bc]
    inc b
    cpl

jr_018_5245:
    inc d
    rst $38
    rst $38
    ld bc, $2504
    ld [hl+], a
    rst $38
    jp nc, $ca42

    ld bc, $1704
    ld [hl+], a
    rst $38
    jp nc, $ca43

    ld [bc], a
    inc b
    ld d, $06
    rst $38
    jp nc, $ca44

    inc bc
    ld b, $2d
    ld b, $ff
    rst $38
    ld b, l
    rl e
    inc b
    dec d
    ld de, $d3ff
    ld b, [hl]
    jp z, Jump_018_470f

    rrca
    dec e
    rst $38
    rst $38
    add a
    inc d
    ld b, a
    ld hl, $ff10
    rst $38
    adc b
    inc d
    ld b, a
    inc hl
    dec b
    rst $38
    rst $38
    adc c
    inc b
    inc b
    inc l
    rra
    rst $38
    rst $38
    ld a, [bc]
    nop
    rst $00
    nop
    ld bc, $c701
    nop
    ld [bc], a
    jr @-$35

    cpl
    rrca
    add hl, de
    ret


    cpl
    db $10
    add hl, de
    ret


    cpl
    ld de, $c91a
    cpl
    ld [de], a
    dec c
    add hl, bc
    inc d
    ld a, [hl+]
    ld d, e
    or h
    ld d, d
    or b
    ld d, d
    nop
    jp nz, $cd52

    add hl, hl
    inc a
    ret


    cp b
    ld d, d
    cp l
    ld d, d
    rla
    ld l, a
    ld c, l
    ld h, $50
    rla
    push hl
    ld c, l
    ld h, $50
    inc c
    dec bc
    nop
    ld a, [de]
    ld bc, $005e
    dec de
    ld bc, $085e
    rra
    nop
    ld h, [hl]
    ld [$0117], sp
    ld h, [hl]
    ld [$0213], sp
    ld h, [hl]
    ld [$030f], sp
    ld h, [hl]
    ld [$040b], sp
    ld h, [hl]
    ld [$0507], sp
    ld h, [hl]
    ld b, $02
    ld b, $60
    rrca
    dec h
    dec b
    ld h, d
    db $10
    inc bc
    nop
    ld h, h
    nop
    ld [bc], a
    ld a, [de]
    ld a, [bc]
    db $10
    cp $02
    ld bc, $0913
    rra
    rst $38
    rst $38
    ld [bc], a
    db $10
    rst $00
    nop
    ld a, [de]
    db $10
    rst $00
    nop
    dec de
    ld a, d
    rst $00
    ld [$761f], sp
    rst $00
    ld [$7417], sp
    rst $00
    ld [$7213], sp
    rst $00
    ld [$700f], sp
    rst $00
    ld [$6e0b], sp
    rst $00
    ld [$5207], sp
    rst $00
    ld b, $02
    set 0, a
    rrca
    dec h
    call nc, $10c7
    inc bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc de
    db $10
    rrca
    dec b
    dec b
    dec b
    dec b
    ld de, $180e
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec c
    ld c, $10
    ld bc, $1514
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    inc bc
    ld d, $0d
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $17
    dec c
    inc c
    inc d
    ld a, [hl-]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [bc], a
    inc c
    dec c
    add hl, bc
    inc d
    sbc h
    ld d, l
    add hl, bc
    ld d, l
    ld [$0053], a
    ld b, d
    ld d, l
    call Call_000_3c29
    ld hl, $53fe
    ld a, [$d664]
    jp Jump_000_3d93


Jump_018_53f6:
    xor a
    ld [$cd6b], a
    ld [$d664], a
    ret


    add hl, bc
    ld d, h
    db $76
    ld d, h
    and b
    ld d, h
    db $ec
    ld d, h
    ld [$c954], sp
    ld hl, $5457
    call Call_000_34bc
    ret nc

    call Call_000_2233
    ld c, $02
    ld a, $de
    call Call_000_2211
    ld a, [$cd3d]
    ldh [$db], a
    ld a, $73
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    call Call_000_3ddb
    ld a, $02
    ldh [$8c], a
    call Call_000_353e
    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ldh a, [$db]
    cp $02
    jr nz, jr_018_5446

    ld de, $5452
    jr jr_018_5449

jr_018_5446:
    ld de, $5453

jr_018_5449:
    call Call_000_363d
    ld a, $01
    ld [$d664], a
    ret


    nop
    nop
    nop
    nop
    rst $38
    ld [$0824], sp
    dec h
    rst $38

Call_018_545c:
    ld a, [$d361]
    cp $25
    jr nz, jr_018_546c

    ld a, $02
    ld [$d527], a
    ld a, $0c
    jr jr_018_546d

jr_018_546c:
    xor a

jr_018_546d:
    ldh [$8d], a
    ld a, $02
    ldh [$8c], a
    jp Jump_000_3488


    ld a, [$d72f]
    bit 0, a
    ret nz

    call Call_018_545c
    xor a
    ld [$cd6b], a
    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    call Call_000_3ddb
    ld a, $f2
    ld [$d058], a
    ld a, $01
    ld [$d05c], a
    call Call_018_545c
    ld a, $02
    ld [$d664], a
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_018_53f6

    call Call_018_545c
    ld a, $f0
    ld [$cd6b], a
    ld a, $03
    ldh [$8c], a
    call Call_000_2817
    ld a, $02
    ldh [$8c], a
    call Call_000_353e
    ld a, [$d361]
    cp $25
    jr nz, jr_018_54ca

    ld de, $54e7
    jr jr_018_54cd

jr_018_54ca:
    ld de, $54e5

jr_018_54cd:
    ld a, $02
    ldh [$8c], a
    call Call_000_363d
    call Call_000_2233
    ld b, $02
    ld hl, $59bd
    call Call_000_3e84
    ld a, $03
    ld [$d664], a
    ret


    ret nz

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
    ld a, $73
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_216b
    ld a, $04
    ld [$d664], a
    ret


    rrca
    ld d, l
    inc d
    ld d, l
    dec a
    ld d, l
    rla
    inc sp
    ld c, [hl]
    ld h, $50
    ld [$2e21], sp
    ld d, l
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $5533
    ld de, $5538
    call Call_000_32f0
    jp Jump_000_23d2


    rla
    sbc c
    ld c, [hl]
    ld h, $50
    rla
    ld d, [hl]
    ld c, a
    ld h, $50
    rla
    add b
    ld c, a
    ld h, $50
    rla
    or l
    ld c, a
    ld h, $50
    inc c
    add hl, bc
    dec bc
    add hl, bc
    nop
    ld h, a
    dec bc
    dec c
    ld [bc], a
    ld h, a
    dec bc
    ld de, $6704
    dec bc
    dec d
    ld b, $67
    dec bc
    add hl, de
    ld [$0b67], sp

jr_018_5559:
    dec e
    ld a, [bc]
    ld h, a
    inc b
    ld [bc], a
    ld [$0c5f], sp
    ld [bc], a
    ld bc, $0461
    inc h
    nop
    ld h, l
    nop
    ld [bc], a
    ld a, [de]
    dec bc
    rlca
    cp $01
    ld bc, $0802
    jr z, @+$01

    ret nc

    ld b, d
    pop hl
    ld bc, $c789
    dec bc
    add hl, bc
    adc e
    rst $00
    dec bc
    dec c
    adc l
    rst $00
    dec bc
    ld de, $c78f
    dec bc
    dec d
    sub c
    rst $00
    dec bc
    add hl, de
    sub e
    rst $00
    dec bc
    dec e
    jr c, jr_018_5559

    inc b
    ld [bc], a
    and b
    rst $00
    inc c
    ld [bc], a
    ld c, c
    rst $00
    inc b
    inc h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    dec b
    ld de, $0c0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    dec b
    ld de, $1a0e
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $18
    dec c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $10
    dec c
    ld c, $10
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    inc de
    db $10
    dec c
    ld c, $10
    rrca
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    inc de
    db $10
    inc b
    dec c
    ld c, $18
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c

jr_018_5651:
    inc b
    rrca
    sub h
    ld d, [hl]
    ld e, a
    ld d, [hl]
    ld e, h
    ld d, [hl]
    nop
    ld h, b
    ld d, [hl]
    jp Jump_000_3c29


    ld d, b
    inc c
    ld b, $03
    rla
    ld [$0368], sp
    inc de
    ld b, $68
    inc bc
    rrca
    inc b
    ld l, b
    inc bc
    dec bc
    ld [bc], a
    ld l, b
    inc bc
    rlca
    nop
    ld l, b
    dec b
    dec de
    add hl, bc
    ld e, a
    nop
    nop
    ld e, $c7
    inc bc
    rla
    inc e
    rst $00
    inc bc
    inc de
    ld a, [de]
    rst $00
    inc bc
    rrca
    jr jr_018_5651

    inc bc
    dec bc
    ld d, $c7
    inc bc
    rlca
    dec [hl]
    rst $00
    dec b
    dec de
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    dec b
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    dec b
    ld de, $040e
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
    inc b
    inc [hl]
    dec c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    rlca
    ld a, [bc]
    adc a
    ld d, a
    push af
    ld d, [hl]
    call c, Call_000_0056
    ld e, c
    ld d, a
    call Call_000_3c29
    ld hl, $56ff
    ld de, $56ef
    ld a, [$d616]
    call Call_000_30fc
    ld [$d616], a
    ret


    or l
    ld sp, $31e8
    ld de, $1832
    ld d, a
    dec e
    ld d, a
    ld [hl+], a
    ld d, a
    daa
    ld d, a
    ld b, b
    ld d, a
    inc b

jr_018_5700:
    jr nc, jr_018_5700

    rst $10
    ld sp, $3b57
    ld d, a
    ld [hl], $57
    ld [hl], $57
    dec b

jr_018_570c:
    jr nc, jr_018_570c

    rst $10
    ld c, d
    ld d, a
    ld d, h
    ld d, a
    ld c, a
    ld d, a
    ld c, a
    ld d, a
    rst $38
    rla
    add a
    ld d, b
    ld h, $50
    rla
    cp d
    ld d, b
    ld h, $50
    rla
    reti


    ld d, b
    ld h, $50
    ld [$ff21], sp
    ld d, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld a, [bc]
    ld d, c
    ld h, $50
    rla
    inc l
    ld d, c
    ld h, $50
    rla
    ccf
    ld d, c
    ld h, $50
    ld [$0b21], sp
    ld d, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, a
    ld d, c
    ld h, $50
    rla
    adc l
    ld d, c
    ld h, $50
    rla
    and e
    ld d, c
    ld h, $50
    inc hl
    ld [bc], a
    ld b, $0d
    nop
    ld h, c
    rlca
    dec c
    nop
    ld h, c
    nop
    dec b
    inc c
    ld b, $09
    rst $38
    pop de
    ld bc, $0d13
    ld [$ffff], sp
    ld [bc], a
    rlca
    rrca
    dec bc
    rst $38
    rst $38
    inc bc
    inc de
    ld [$ff08], sp
    ret nc

    ld b, h
    call z, $1301
    inc c
    ld c, $ff
    pop de
    ld b, l
    call z, $2f02
    rst $00
    ld b, $0d
    cpl
    rst $00
    rlca
    dec c
    inc hl
    inc hl
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $26
    inc hl
    ld e, $1f
    inc h
    inc h
    inc h
    dec c
    inc c
    inc c
    inc c
    ld e, $1f
    add hl, hl
    daa
    inc b
    inc b
    rrca
    ld de, $0c0c
    jr nz, @+$2b

    inc b
    inc b
    inc b
    inc b
    inc h
    dec c
    inc c
    inc c
    ld hl, $0422
    daa
    inc b
    inc b
    ld bc, $0c0c
    inc c
    jr z, jr_018_57e4

    ld [hl+], a
    inc b
    inc b
    inc b
    dec c
    inc c
    inc c
    inc c
    inc hl
    jr z, @+$27

    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec c
    ld [$7f07], sp
    ld e, b
    push hl
    ld d, a
    pop hl
    ld d, a
    nop
    ld c, c
    ld e, b
    call Call_000_3c29

jr_018_57e4:
    ret


    di
    ld d, a
    ld hl, sp+$57
    db $fd
    ld d, a
    ld [bc], a
    ld e, b
    rlca
    ld e, b
    inc c
    ld e, b
    ld de, $1758
    db $e4
    ld d, c
    ld h, $50
    rla
    dec d
    ld d, d
    ld h, $50
    rla
    ld [hl], $52
    ld h, $50
    rla
    ld d, h
    ld d, d
    ld h, $50
    rla
    adc l
    ld d, d
    ld h, $50
    rla
    ret z

    ld d, d
    ld h, $50
    ld [$3521], sp
    ld e, b
    call Call_000_3c36
    ldh a, [$d3]
    bit 7, a
    jr z, jr_018_5823

    ld hl, $583a
    jr jr_018_582f

jr_018_5823:
    bit 4, a
    jr z, jr_018_582c

    ld hl, $583f
    jr jr_018_582f

jr_018_582c:
    ld hl, $5844

jr_018_582f:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld [bc], a
    ld d, e
    ld h, $50
    rla
    ld [hl-], a
    ld d, e
    ld h, $50
    rla
    ld [hl], e
    ld d, e
    ld h, $50
    rla
    and [hl]
    ld d, e
    ld h, $50
    inc c
    ld bc, $0600
    ld a, [bc]
    ld e, a
    nop
    rlca
    inc d
    inc c
    dec b
    cp $01
    ld bc, $0c14
    add hl, bc
    cp $01
    ld [bc], a
    inc d
    dec bc
    dec c
    cp $01
    inc bc
    inc d
    ld a, [bc]
    ld de, $ffff
    inc b
    inc d
    inc c
    ld de, $ffff
    dec b
    inc d
    ld c, $11
    rst $38
    rst $38
    ld b, $14
    ld de, $ff0f
    pop de
    rlca
    ld sp, hl
    add $00
    ld b, $0a
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld b, $0b
    ld b, $0b
    ld b, $35
    dec bc
    ld a, [hl+]
    dec bc
    ld a, [hl+]
    dec bc
    ld a, [hl+]
    dec [hl]
    dec bc
    ld a, [hl+]
    dec bc
    ld a, [hl+]
    dec bc
    ld a, [hl+]
    dec [hl]
    dec bc
    inc l
    dec bc
    inc l
    dec bc
    inc l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    dec l
    dec hl
    dec l
    dec hl
    dec l
    dec hl
    dec c
    inc b
    inc bc
    add a
    ld e, c
    push de
    ld e, b
    jp SerialTransferCompleteInterrupt


    ld l, a
    ld e, c
    call Call_018_58c9
    jp Jump_000_3c29


Call_018_58c9:
    ld a, [$d802]
    bit 0, a
    ret nz

    ld hl, $d72c
    set 5, [hl]
    ret


    db $db
    ld e, b
    ld h, l
    ld e, c
    ld l, d
    ld e, c
    ld [$02fa], sp
    ret c

    bit 0, a
    jr nz, jr_018_5911

    ld hl, $591a
    call Call_000_3c36
    ld hl, $5950
    call Call_000_3c36
    ld bc, $c401
    call Call_000_3e3f
    jr nc, jr_018_5909

    ld hl, $5955
    call Call_000_3c36
    ld hl, $d802
    set 0, [hl]
    ld hl, $d72c
    res 5, [hl]
    jr jr_018_5917

jr_018_5909:
    ld hl, $5960
    call Call_000_3c36
    jr jr_018_5917

jr_018_5911:
    ld hl, $595b
    call Call_000_3c36

jr_018_5917:
    jp Jump_000_23d2


    rla
    db $dd
    ld d, e
    ld h, $08
    ld a, [$c0ef]
    cp $1f
    ld [$c0f0], a
    jr nz, jr_018_5931

    call Call_000_2233
    ld a, $02
    ld [$c0ef], a

jr_018_5931:
    ld a, $e8
    ld [$c0ee], a
    call Call_000_2238

jr_018_5939:
    ld a, [$c026]
    cp $e8
    jr z, jr_018_5939

    call Call_000_216b
    ld hl, $d802
    set 1, [hl]
    ld hl, $d72c
    res 5, [hl]
    jp Jump_000_23d2


    rla
    ld b, a
    ld d, h
    ld h, $50
    rla
    inc c
    ld d, l
    ld h, $11
    ld d, b
    rla
    dec de
    ld d, l
    ld h, $50
    rla
    ld e, e
    ld d, l
    ld h, $50
    rla
    ld a, [hl]
    ld d, l
    ld h, $50
    rla
    sbc e
    ld d, l
    ld h, $50
    inc c
    ld bc, $0007
    ld [$0260], sp
    ld bc, $0204
    ld [bc], a
    ld bc, $0103
    ld l, $06
    ld [$d1ff], sp
    ld bc, $c70d
    rlca
    nop
    jr nc, jr_018_59ba

    cpl
    ld [hl-], a
    inc sp
    rlca
    dec bc
    dec bc
    rlca
    ld l, $0b
    dec bc
    dec c
    ld [$080c], sp
    ld e, e
    cp b
    ld e, c
    sbc a
    ld e, c
    nop
    adc c
    ld e, d
    call Call_000_3c29
    ld hl, $59ce
    ld de, $59b2
    ld a, [$d607]
    call Call_000_30fc
    ld [$d607], a
    ret


    or l
    ld sp, $31e8
    ld de, $ff32
    ld e, c

jr_018_59ba:
    add hl, bc
    ld e, d
    inc de
    ld e, d
    dec e
    ld e, d
    ld [hl], b
    ld e, d
    ld [hl], l
    ld e, d
    ld a, d
    ld e, d
    daa
    ld e, d
    ld a, a
    ld e, d
    rst $28
    inc hl
    add h
    ld e, d
    ld bc, $0420
    ret c

    inc [hl]
    ld e, d
    ld a, $5a
    add hl, sp
    ld e, d
    add hl, sp
    ld e, d
    ld [bc], a
    jr nc, jr_018_59e1

    ret c

    ld b, e
    ld e, d
    ld c, l

jr_018_59e1:
    ld e, d
    ld c, b
    ld e, d
    ld c, b
    ld e, d
    inc bc
    jr nz, jr_018_59ed

    ret c

    ld d, d
    ld e, d
    ld e, h

jr_018_59ed:
    ld e, d
    ld d, a
    ld e, d
    ld d, a
    ld e, d
    inc b
    jr nz, jr_018_59f9

    ret c

    ld h, c
    ld e, d
    ld l, e

jr_018_59f9:
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    rst $38
    ld [$ce21], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    ld [$da21], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    ld [$e621], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    ld [$f221], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    push de
    ld d, l
    ld h, $08
    ld a, $65
    call Call_000_118b
    jp Jump_000_23d2


    rla
    rst $28
    ld d, l
    ld h, $50
    rla
    inc l
    ld d, [hl]
    ld h, $50
    rla
    ccf
    ld d, [hl]
    ld h, $50
    rla
    ld e, a
    ld d, [hl]
    ld h, $50
    rla
    add b
    ld d, [hl]
    ld h, $50
    rla
    sbc b
    ld d, [hl]
    ld h, $50
    rla
    cp e
    ld d, [hl]
    ld h, $50
    rla
    pop de
    ld d, [hl]
    ld h, $50
    rla
    push hl
    ld d, [hl]
    ld h, $50
    rla
    add hl, de
    ld d, a
    ld h, $50
    rla
    ld c, h
    ld d, a
    ld h, $50
    rla
    ld [hl], a
    ld d, a
    ld h, $50
    rla
    push bc
    ld d, a
    ld h, $50
    rla
    ldh a, [$57]
    ld h, $50
    rla
    ld [de], a
    ld e, b
    ld h, $50
    rla
    inc [hl]
    ld e, b
    ld h, $50
    rla
    ld d, a
    ld e, b
    ld h, $50
    inc c
    ld b, $00
    nop
    ld [bc], a
    ld e, a
    nop
    ld a, [bc]
    inc bc
    ld e, a
    nop
    inc d
    inc b
    ld e, a
    ld a, [bc]
    nop
    dec b
    ld e, a
    ld a, [bc]
    ld a, [bc]
    ld b, $5f
    ld a, [bc]
    inc d
    rlca
    ld e, a
    nop
    dec bc
    db $10
    rlca
    ld b, $ff
    jp nc, $f141

    ld bc, $0810
    rrca
    rst $38
    pop de
    ld b, d
    pop af
    ld [bc], a
    inc b
    ld [de], a
    rrca
    rst $38
    pop de
    ld b, e
    ret


    ld [$0f06], sp
    ld de, $d2ff
    ld b, h
    rrc e
    dec c
    rlca
    ld a, [de]
    cp $01
    dec b
    ld a, [bc]
    ld [de], a
    inc b
    rst $38
    rst $38
    ld b, $08
    rrca
    ld b, $ff
    ret nc

    rlca
    ld b, d
    rrca
    rlca
    rst $38
    ret nc

    ld [$110d], sp
    ld c, $ff
    db $d3
    add hl, bc
    ld b, a
    inc de
    db $10
    rst $38
    rst $38
    adc d
    ret nc

    db $10
    ld de, $fe19
    ld [bc], a
    dec bc
    ei
    add $00
    nop
    nop
    rst $00
    nop
    ld a, [bc]
    dec b
    rst $00
    nop
    inc d
    ld d, l
    rst $00
    ld a, [bc]
    nop
    ld e, d
    rst $00
    ld a, [bc]
    ld a, [bc]
    ld e, a
    rst $00
    ld a, [bc]
    inc d
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    ld b, $36
    inc c
    inc c
    inc c
    ld b, $36
    inc c
    inc c
    inc c
    ld b, $36
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    inc c
    inc c
    inc c
    dec bc
    dec bc
    ld b, $36
    inc c
    inc c
    inc c
    ld b, $36
    inc c
    inc c
    inc c
    ld b, $36
    dec c
    ld [$c00c], sp
    ld b, e
    adc l
    ld e, e
    ld [hl], h
    ld e, e
    nop
    and h
    ld e, h
    call Call_000_3c2c
    ld hl, $5ba7
    ld de, $5b87
    ld a, [$d608]
    call Call_000_30fc
    ld [$d608], a
    ret


    or l
    ld sp, $31e8
    ld de, $d832
    ld e, e
    ld [c], a
    ld e, e
    db $ec
    ld e, e
    or $5b
    nop
    ld e, h
    rst $28
    inc hl
    ld a, [de]
    ld e, h
    add hl, hl
    ld e, h
    rst $28
    inc hl
    jr c, jr_018_5bfd

    ld b, h
    ld e, h
    ld d, b
    ld e, h
    ld e, h
    ld e, h
    ld bc, $0620
    ret c

    ld l, b
    ld e, h
    ld [hl], d
    ld e, h
    ld l, l
    ld e, h
    ld l, l
    ld e, h
    ld [bc], a
    jr nc, jr_018_5bbc

    ret c

    ld [hl], a
    ld e, h
    add c
    ld e, h
    ld a, h

jr_018_5bbc:
    ld e, h
    ld a, h
    ld e, h
    inc bc
    jr nc, jr_018_5bc8

    ret c

    add [hl]
    ld e, h
    sub b
    ld e, h
    adc e

jr_018_5bc8:
    ld e, h
    adc e
    ld e, h
    inc b
    jr nz, jr_018_5bd4

    ret c

    sub l
    ld e, h
    sbc a
    ld e, h
    sbc d

jr_018_5bd4:
    ld e, h
    sbc d
    ld e, h
    rst $38
    ld [$a721], sp
    ld e, e
    call Call_000_3168
    jp Jump_000_23d2


    ld [$b321], sp
    ld e, e
    call Call_000_3168
    jp Jump_000_23d2


    ld [$bf21], sp
    ld e, e
    call Call_000_3168
    jp Jump_000_23d2


    ld [$cb21], sp
    ld e, e
    call Call_000_3168

jr_018_5bfd:
    jp Jump_000_23d2


    ld [$0fcd], sp
    scf
    ld hl, $5c15
    call Call_000_3c36
    call Call_000_371b
    ld a, $84
    call Call_000_347d
    jp Jump_000_23d2


    rla
    sub a
    ld e, b
    ld h, $50
    ld [$2421], sp
    ld e, h
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    db $f4
    ld e, b
    ld h, $50
    ld [$3321], sp
    ld e, h
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld [hl-], a
    ld e, c
    ld h, $50
    ld [$3c06], sp
    ld hl, $6570
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $657c
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $6588
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $6594
    call Call_000_3e84
    jp Jump_000_23d2


    rla
    ld d, e
    ld e, c
    ld h, $50
    rla
    add e
    ld e, c
    ld h, $50
    rla
    xor b
    ld e, c
    ld h, $50
    rla
    ret


    ld e, c
    ld h, $50
    rla
    and $59
    ld h, $50
    rla
    di
    ld e, c
    ld h, $50
    rla
    add hl, hl
    ld e, d
    ld h, $50
    rla
    ld d, [hl]
    ld e, d
    ld h, $50
    rla
    ld l, d
    ld e, d
    ld h, $50
    rla
    adc d
    ld e, d
    ld h, $50
    rla
    xor c
    ld e, d
    ld h, $50
    rla
    cp b
    ld e, d
    ld h, $50
    inc c
    inc c
    dec b
    ld [bc], a
    nop
    ld h, b
    dec b
    inc bc
    nop
    ld h, b
    dec b
    inc c
    ld bc, $0560
    dec c
    ld bc, $0560
    ld d, $02
    ld h, b
    dec b
    rla
    ld [bc], a
    ld h, b
    rrca
    ld [bc], a
    inc bc
    ld h, b
    rrca
    inc bc
    inc bc
    ld h, b
    rrca
    inc c
    inc b
    ld h, b
    rrca
    dec c
    inc b
    ld h, b
    rrca
    ld d, $05
    ld h, b
    rrca
    rla
    dec b
    ld h, b
    nop
    dec c
    db $10
    ld b, $0e
    rst $38
    db $d3
    ld b, c
    pop af
    inc bc
    cpl
    ld [$ff11], sp
    jp nc, $d642

    ld bc, $1210
    inc b
    rst $38
    db $d3
    ld b, e
    pop af
    dec b
    ld b, $0f
    ld b, $ff
    ret nc

    ld b, h
    rrc h
    db $10

jr_018_5cf9:
    ld b, $05
    rst $38
    ret nc

jr_018_5cfd:
    dec b
    ld b, a
    dec b
    db $10
    rst $38
    rst $38
    add [hl]
    ld d, c
    db $10
    ld b, $19
    rst $38
    ret nc

    rlca
    dec h
    dec b
    ld a, [de]
    rst $38
    ret nc

    ld [$1047], sp
    inc b
    rst $38
    rst $38
    adc c
    jr z, @+$12

    db $10
    db $10
    rst $38
    ret nc

    ld a, [bc]
    dec [hl]
    ld [de], a
    rrca
    rst $38
    rst $38
    dec bc
    dec e
    db $10
    ld a, [de]
    rst $38
    jp nc, Jump_000_0f0c

    db $10
    jr @+$01

    db $d3
    dec c
    jr nz, jr_018_5cf9

    dec b
    ld [bc], a
    jr nz, jr_018_5cfd

    dec b
    inc bc
    dec h
    rst $00
    dec b
    inc c
    dec h
    rst $00
    dec b
    dec c
    ld a, [hl+]
    rst $00
    dec b
    ld d, $2a
    rst $00
    dec b
    rla
    ld a, d
    rst $00
    rrca
    ld [bc], a
    ld a, d
    rst $00
    rrca
    inc bc
    ld a, a
    rst $00
    rrca
    inc c
    ld a, a
    rst $00
    rrca
    dec c
    add h
    rst $00
    rrca
    ld d, $84
    rst $00
    rrca
    rla
    dec c
    ld [$c00c], sp
    ld b, e
    add l
    ld e, l
    ld l, h
    ld e, l
    nop
    adc h
    ld e, [hl]
    call Call_000_3c29
    ld hl, $5d9b
    ld de, $5d7f
    ld a, [$d628]
    call Call_000_30fc
    ld [$d628], a
    ret


    or l
    ld sp, $31e8
    ld de, $e432
    ld e, l
    xor $5d
    ld hl, sp+$5d
    ld [bc], a
    ld e, [hl]
    inc c
    ld e, [hl]
    ld d, $5e
    add a
    ld e, [hl]
    jr nz, @+$60

    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld bc, $0820
    ret c

    dec l
    ld e, [hl]
    scf
    ld e, [hl]
    ld [hl-], a
    ld e, [hl]
    ld [hl-], a
    ld e, [hl]
    ld [bc], a
    jr nc, jr_018_5db2

    ret c

    inc a
    ld e, [hl]
    ld b, [hl]
    ld e, [hl]
    ld b, c
    ld e, [hl]
    ld b, c

jr_018_5db2:
    ld e, [hl]
    inc bc
    jr nz, jr_018_5dbe

    ret c

    ld c, e
    ld e, [hl]
    ld d, l
    ld e, [hl]
    ld d, b
    ld e, [hl]
    ld d, b

jr_018_5dbe:
    ld e, [hl]
    inc b
    jr nz, jr_018_5dca

    ret c

    ld e, d
    ld e, [hl]
    ld h, h
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a

jr_018_5dca:
    ld e, [hl]
    dec b
    jr nz, jr_018_5dd6

    ret c

    ld l, c
    ld e, [hl]
    ld [hl], e
    ld e, [hl]
    ld l, [hl]
    ld e, [hl]
    ld l, [hl]

jr_018_5dd6:
    ld e, [hl]
    ld b, $30
    ld [$78d8], sp
    ld e, [hl]
    add d
    ld e, [hl]
    ld a, l
    ld e, [hl]
    ld a, l
    ld e, [hl]
    rst $38
    ld [$9b21], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$a721], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$b321], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$bf21], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$cb21], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$d721], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    xor c
    ld e, e
    ld h, $08
    ld a, $29
    call Call_000_118b
    jp Jump_000_23d2


    rla
    jp nz, $265b

    ld d, b
    rla
    or $5b
    ld h, $50
    rla
    db $10
    ld e, h
    ld h, $50
    rla
    ld [hl-], a
    ld e, h
    ld h, $50
    rla
    ld d, c
    ld e, h
    ld h, $50
    rla
    ld h, a
    ld e, h
    ld h, $50
    rla
    sbc b
    ld e, h
    ld h, $50
    rla
    or e
    ld e, h
    ld h, $50
    rla
    ret z

    ld e, h
    ld h, $50
    rla
    ld a, [c]
    ld e, h
    ld h, $50
    rla
    ld de, $265d
    ld d, b
    rla
    ld hl, $265d
    ld d, b
    rla
    ld d, c
    ld e, l
    ld h, $50
    rla
    ld a, [hl]
    ld e, l
    ld h, $50
    rla
    sub [hl]
    ld e, l
    ld h, $50
    rla
    jp nz, $265d

    ld d, b
    rla
    nop
    ld e, [hl]
    ld h, $50
    rla
    jr nz, @+$60

    ld h, $50
    rla
    ld c, e
    ld e, [hl]
    ld h, $50
    inc c
    ld a, [bc]
    dec b
    ld [bc], a
    inc b
    ld h, d
    dec b
    inc bc
    inc b
    ld h, d
    dec b
    inc c
    inc bc
    ld h, d
    dec b
    dec c
    inc bc
    ld h, d
    dec b
    ld d, $02
    ld h, d
    dec b
    rla
    ld [bc], a
    ld h, d
    rrca
    ld [bc], a
    ld bc, $0f62
    inc bc
    ld bc, $0f62
    inc c
    nop
    ld h, d
    rrca
    dec c
    nop
    ld h, d
    nop
    dec bc
    inc de
    ld de, $ff04
    ret nc

    ld b, c
    call z, Call_000_1303
    rrca
    ld b, $ff
    ret nc

    ld b, d
    call z, $1304
    rlca
    db $10
    rst $38
    jp nc, $cc43

    dec b
    inc de
    ld b, $1a
    rst $38
    ret nc

    ld b, h

jr_018_5ed6:
    call z, Call_000_1306
    ld b, $04
    rst $38
    db $d3
    ld b, l
    call z, $2f07
    ld [$ff04], sp
    db $d3
    ld b, [hl]
    sub $02
    inc c
    ld de, $ff0e
    db $d3
    rlca
    dec b
    db $10
    rrca
    rst $38
    rst $38
    ld [$0647], sp
    jr @+$01

    rst $38
    adc c
    ld d, b
    ld b, a
    ld b, $0e
    rst $38
    rst $38
    adc d
    db $f4
    ld b, a
    rrca
    db $10
    rst $38
    rst $38
    adc e
    ld de, $c720
    dec b
    ld [bc], a
    jr nz, jr_018_5ed6

    dec b
    inc bc
    dec h
    rst $00
    dec b
    inc c
    dec h
    rst $00
    dec b
    dec c
    ld a, [hl+]
    rst $00
    dec b
    ld d, $2a
    rst $00
    dec b
    rla
    ld a, d
    rst $00
    rrca
    ld [bc], a
    ld a, d
    rst $00
    rrca
    inc bc
    ld a, a
    rst $00
    rrca
    inc c
    ld a, a
    rst $00
    rrca
    dec c
    dec bc
    jr jr_018_5f38

    sbc b
    ld b, c
    ld b, b
    ld e, a

jr_018_5f38:
    dec a
    ld e, a
    nop
    ld b, c
    ld e, a
    jp Jump_000_3c29


    ld d, b
    ld bc, $0402
    dec b
    ld [bc], a
    ld b, a
    add hl, hl
    ld [bc], a
    ld [bc], a
    ld c, d
    nop
    nop
    add hl, bc
    rst $00
    inc b
    dec b
    cp h
    rst $00
    add hl, hl
    ld [bc], a
    dec bc
    inc b
    add hl, de
    db $f4
    ld b, c
    ld h, h
    ld e, a
    ld h, c
    ld e, a
    nop
    ld h, l
    ld e, a
    jp Jump_000_3c29


    ld d, b
    ld bc, $0502
    ld [bc], a
    ld [bc], a
    ld c, l
    ld [bc], a
    cpl
    ld [bc], a
    ld d, b
    nop
    nop
    ld b, a
    rst $00
    dec b
    ld [bc], a
    ld a, $c7
    ld [bc], a
    cpl
    ld de, $1412
    sbc l
    ld e, a
    adc b
    ld e, a
    add l
    ld e, a
    nop
    adc c
    ld e, a
    jp Jump_000_3c29


    ld d, b
    add hl, de
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld l, $1f
    dec h
    ld [bc], a
    ld d, l
    nop
    nop
    add hl, sp
    rst $00
    dec b
    dec b
    sbc e
    ret z

    rra
    dec h
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc l
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld a, $18
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1d1c
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_018_6049

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    inc e
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_6049:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    ld d, $01
    ld bc, $1801
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_018_6087

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    ld d, $01
    jr jr_018_609b

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_6087:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $1d1c
    dec e
    dec e
    dec e
    dec e
    dec hl

jr_018_609b:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1d1c
    dec e
    dec e
    dec e
    dec e
    dec hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld bc, $0101
    ld bc, $3e01
    jr jr_018_60f7

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld bc, $1918
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_018_60f7:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    add hl, de
    db $10
    add hl, bc
    add hl, bc
    sub a
    ld h, l
    db $76
    ld h, h
    ld de, $0061
    ld c, e
    ld h, l
    call Call_018_6127
    call Call_000_3c29
    ld hl, $648a
    ld de, $6190
    ld a, [$d658]
    call Call_000_30fc
    ld [$d658], a
    ret


Call_018_6127:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $614c
    call Call_018_614f
    call Call_018_617b
    ld a, [$d837]
    bit 0, a
    ret nz

    ld a, $20
    ld [$d09e], a
    ld bc, $0603
    ld a, $17
    call Call_000_3eb4
    ret


    ld b, $03
    rst $38

Call_018_614f:
    push hl
    ld hl, $d73e
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_018_615b:
    ld a, [hl+]
    cp $ff
    jr z, jr_018_6177

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_018_616c

    inc hl
    jr jr_018_615b

jr_018_616c:
    ld a, [hl+]
    cp c
    jr nz, jr_018_615b

    ld hl, $d73e
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_018_6177:
    xor a
    ldh [$e0], a
    ret


Call_018_617b:
    ldh a, [$e0]
    and a
    ret z

    ld hl, $d837
    set 0, [hl]
    ret


Jump_018_6185:
    xor a
    ld [$cd6b], a

Call_018_6189:
Jump_018_6189:
    ld [$d658], a
    ld [$da38], a
    ret


    xor [hl]
    ld h, c
    add sp, $31
    ld de, $0c32
    ld h, d
    ld d, h
    ld h, d
    jr jr_018_61ff

    ccf
    ld h, e
    ld c, d
    ld h, e
    ld h, [hl]
    ld h, e
    adc l
    ld h, e
    sbc l
    ld h, e
    cp e
    ld h, e
    pop hl
    ld h, e
    daa
    ld h, h
    ld c, b
    ld h, h
    ld a, [$d836]
    bit 4, a
    call z, Call_018_629c
    ld a, [$d836]
    bit 2, a
    ret nz

    ld a, [$d837]
    bit 7, a
    call z, Call_018_61c5
    ret


Call_018_61c5:
    ld hl, $61f6
    call Call_000_34bc
    jp nc, Jump_000_31b5

    ld a, [$cd3d]
    ld [$cf0d], a
    xor a
    ldh [$b4], a
    ld a, $f0
    ld [$cd6b], a
    ld a, $03
    ldh [$8c], a
    call Call_000_2817
    ld a, $03
    ldh [$8c], a
    call Call_000_353e
    ld de, $61fb
    call Call_000_363d
    ld a, $04
    call Call_018_6189
    ret


    dec c
    ld b, $0c
    rlca
    rst $38
    nop
    nop
    nop
    rst $38

Call_018_61ff:
jr_018_61ff:
    ld [$d527], a
    ld a, b
    ld [$c139], a
    ld a, $02
    ld [$c131], a
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_018_6185

    ld a, [$cf0d]
    cp $01
    jr z, jr_018_6221

    ld a, $02
    ld b, $0c
    jr jr_018_6225

jr_018_6221:
    ld a, $08
    ld b, $00

jr_018_6225:
    call Call_018_61ff
    ld a, $f0
    ld [$cd6b], a
    ld a, $07
    ldh [$8c], a
    call Call_000_2817
    call Call_000_1eb6
    ld b, $3c
    ld hl, $65a0
    call Call_000_3e84
    call Call_000_231c
    call Call_000_3ddb
    call Call_000_1e8f
    ld hl, $d837
    set 7, [hl]
    xor a
    ld [$cd6b], a
    jp Jump_018_6189


    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $03
    ldh [$8c], a
    call Call_000_353e
    ld a, [$cf0d]
    cp $01
    jr z, jr_018_626e

    ld a, $02
    ld b, $0c
    jr jr_018_6272

jr_018_626e:
    ld a, $08
    ld b, $00

jr_018_6272:
    call Call_018_61ff
    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $6528
    ld de, $6528
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $03
    jp Jump_018_6189


Call_018_629c:
    ld a, [$d360]
    cp $03
    ret nz

    ld a, [$d361]
    cp $04
    ret nc

    ld hl, $d836
    res 0, [hl]
    res 1, [hl]
    ld a, [$d361]
    cp $03
    jr z, jr_018_62c3

    set 0, [hl]
    ld a, [$d361]
    cp $02
    jr z, jr_018_62c3

    res 0, [hl]
    set 1, [hl]

jr_018_62c3:
    call Call_000_2233
    ld c, $20
    ld a, $9c
    call Call_000_2211
    xor a
    ldh [$b4], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $01
    ld [$cc3c], a
    ld a, $08
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cc3c], a
    ld a, $ff
    ld [$cd6b], a
    ld hl, $d836
    set 2, [hl]
    ld a, $05
    call Call_018_6189
    ret


    dec b
    dec b
    dec b
    dec b
    dec b
    rst $38
    dec b
    dec b
    dec b
    dec b
    rst $38
    dec b
    dec b
    dec b
    dec b
    rst $38
    dec b
    dec b
    dec b
    dec b
    dec b
    rst $38
    dec b
    dec b
    ld b, $05
    dec b
    rst $38
    dec b
    dec b
    dec b
    ld b, $05
    dec b
    rst $38
    ld de, $62f5
    ld a, [$d836]
    and $03
    and a
    jr z, jr_018_632d

    ld de, $6300
    cp $01
    jr z, jr_018_632d

    ld de, $630b

jr_018_632d:
    ld a, $04
    ldh [$8c], a
    call Call_000_363d
    ld a, $ff
    ld [$cd6b], a
    ld a, $06
    call Call_018_6189
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $02
    ld [$c141], a
    ld hl, $c149
    ld [hl], $0c
    ld a, [$d836]
    and $03
    and a
    jr z, jr_018_635e

    ld [hl], $04

jr_018_635e:
    call Call_000_3ddb
    ld a, $fc
    ld [$cd6b], a
    ld de, $62fb
    ld a, [$d836]
    and $03
    and a
    jr z, jr_018_637b

    ld de, $6305
    cp $01
    jr z, jr_018_637b

    ld de, $6311

jr_018_637b:
    ld a, $06
    ldh [$8c], a
    call Call_000_363d
    ld a, $ff
    ld [$cd6b], a
    ld a, $09
    call Call_018_6189
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $fc
    ld [$cd6b], a
    ld a, $02
    ld [$c161], a
    ld hl, $c169
    ld [hl], $04
    ld a, [$d836]
    and $03
    and a
    jr z, jr_018_63b1

    ld [hl], $08

jr_018_63b1:
    call Call_000_3ddb
    ld a, $09
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $64c2
    ld de, $64c2
    call Call_000_32f0
    ld a, $e6
    ld [$d058], a
    ld a, $2d
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld [$cd6b], a
    ld a, $0c
    call Call_018_6189
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d056]
    cp $ff
    jp z, Jump_018_6185

    ld a, $02
    ld [$c141], a
    ld [$c161], a
    xor a
    ld [$c149], a
    ld [$c169], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $01
    ld [$cc3c], a
    ld a, $0a
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cc3c], a
    call Call_000_2233
    ld c, $20
    ld a, $9c
    call Call_000_2211
    ld a, $ff
    ld [$cd6b], a
    ld a, $0d
    call Call_018_6189
    ret


    ld a, $ff
    ld [$cd6b], a
    call Call_000_1eb6
    ld a, $bc
    call Call_018_646d
    ld a, $be
    call Call_018_646d
    call Call_000_231c
    call Call_000_3ddb
    call Call_000_1e8f
    ld a, $0e
    call Call_018_6189
    ret


    call Call_000_216b
    xor a
    ldh [$b4], a
    ld [$cd6b], a
    ld hl, $d836
    res 2, [hl]
    set 4, [hl]
    ld a, $00
    call Call_018_6189
    ret


    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    call Call_000_231c
    call Call_000_3ddb
    ret


Call_018_646d:
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ret


    call nc, Call_000_1e64
    ld h, l
    inc hl
    ld h, l
    sub a
    ld h, h
    ld [hl-], a
    ld h, l
    sub a
    ld h, h
    dec l
    ld h, l
    sub a
    ld h, h
    cp l
    ld h, h
    rst $00
    ld h, h
    dec b
    jr nc, jr_018_64c3

    ret c

    inc a
    ld h, l
    ld b, [hl]
    ld h, l
    ld b, c
    ld h, l
    ld b, c
    ld h, l
    rst $38
    rla
    ld l, $7a
    ld h, $08
    ld c, $0a
    call Call_000_372f
    ld a, $04
    ld [$d527], a
    ld a, $00
    ld [$cd4f], a
    ld a, $00
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    ld c, $14
    call Call_000_372f
    jp Jump_000_23d2


    rla
    ld c, e
    ld a, d
    ld h, $50
    rla

jr_018_64c3:
    add d
    ld a, d
    ld h, $50
    rla
    sub d
    ld a, d
    ld h, $08
    ld c, $40
    call Call_000_372f
    jp Jump_000_23d2


    ld [$37fa], sp
    ret c

    bit 5, a
    jp nz, Jump_018_6500

    ld hl, $6509
    call Call_000_3c36
    ld bc, $0101
    call Call_000_3e3f
    jr nc, jr_018_64f8

    ld hl, $650e
    call Call_000_3c36
    ld hl, $d837
    set 5, [hl]
    jr jr_018_6506

jr_018_64f8:
    ld hl, $6519
    call Call_000_3c36
    jr jr_018_6506

Jump_018_6500:
    ld hl, $6514
    call Call_000_3c36

jr_018_6506:
    jp Jump_000_23d2


    rla
    nop
    ld b, b
    daa
    ld d, b
    rla
    ret z

    ld b, b
    daa
    ld de, $1750
    reti


    ld b, b
    daa
    ld d, b
    rla
    ld a, b
    ld b, c
    daa
    ld d, b
    rla
    sub h
    ld b, c
    daa
    ld d, b
    rla
    jp c, Jump_000_2741

    ld d, b
    rla
    ld a, a
    ld b, d
    daa
    ld d, b
    rla
    sub a
    ld b, d
    daa
    ld d, b
    ld [$8a21], sp
    ld h, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc a
    ld b, e
    daa
    ld d, b
    rla
    ld l, h
    ld b, e
    daa
    ld d, b
    rla
    ld a, a
    ld b, e
    daa
    ld d, b
    dec c
    inc b
    nop
    add hl, bc
    ld bc, $00ea
    dec c
    nop
    db $ec
    dec b
    dec b
    add hl, bc

jr_018_6558:
    rst $38
    ld [bc], a
    inc bc
    inc bc
    call nc, $0600
    dec hl
    add hl, bc
    dec bc
    rst $38
    ret nc

    ld bc, $090f
    ld c, $ff
    ret nc

    ld [bc], a
    rla
    dec c
    ld a, [bc]
    rst $38
    ret nc

    ld b, e
    push hl
    ld [bc], a
    ld b, [hl]
    inc c
    ld b, $ff
    pop de
    inc b
    jr jr_018_6588

    inc de
    rst $38
    pop de
    ld b, l
    and $28
    ld b, l
    inc c
    rlca
    rst $38
    pop de
    ld b, $fc

jr_018_6588:
    add $00
    add hl, bc
    cp $c6
    nop
    dec c
    jr jr_018_6558

    dec b
    dec b
    ld [$02c7], sp
    inc bc
    ld hl, $2122
    ld [hl+], a
    ld e, $22
    dec e
    ld [hl+], a
    inc hl
    inc h
    add hl, sp
    ld [hl-], a
    ld sp, $3131
    inc [hl]
    ld c, $28
    inc h
    ld c, $33
    ld [de], a
    inc de
    ld d, $35
    ld c, $28
    inc h
    ld c, $24
    db $10
    ld de, $2a0e
    ld c, $28
    inc h
    ld c, $24
    inc d
    dec d
    inc bc
    ld a, [hl+]
    ld c, $28

jr_018_65c4:
    inc h
    ld c, $24
    ld c, $03
    inc bc
    ld a, [hl+]
    ld c, $28
    inc h
    ld c, $37
    inc bc
    ld [hl], $38
    ld a, [hl+]
    ld c, $28
    inc h
    ld c, $0e
    ld c, $24
    ld c, $2a
    ld c, $28
    dec h
    ld h, $26
    ld h, $25
    ld h, $2e
    ld h, $27
    call Call_000_3c29
    ld a, [$c109]
    cp $04
    ret nz

    ld hl, $6611
    ld a, [$d35d]
    ld b, a

jr_018_65f8:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_018_6602

    inc hl
    jr jr_018_65f8

jr_018_6602:
    ld b, [hl]
    ld a, [$d729]
    and b
    cp b
    ld a, $0f
    jr z, jr_018_660e

    ld a, $0e

jr_018_660e:
    jp Jump_000_3f3a


    ld [hl], $01
    ld b, c
    ld [bc], a
    ld e, h
    inc b
    add [hl]
    ld [$109d], sp
    or d
    jr nz, jr_018_65c4

    ld b, b
    dec l
    add b
    rst $38
    rla
    ld a, $60
    daa
    ld d, b
    rla
    ld l, [hl]
    ld h, b
    daa
    ld d, b
    call Call_000_3c29
    ld hl, $664d
    ld a, [$d35d]
    ld b, a

jr_018_6636:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_018_6641

    inc hl
    inc hl
    jr jr_018_6636

jr_018_6641:
    ld a, [hl+]
    ld b, a
    ld a, [$c109]
    cp b
    jr nz, jr_018_6636

    ld a, [hl]
    jp Jump_000_3f3a


    add hl, hl
    ld [$3a11], sp
    ld [$4012], sp
    ld [$8d13], sp
    ld [$5914], sp
    ld [$8515], sp
    ld [$8c16], sp
    ld [$9a17], sp
    ld [$ab18], sp
    ld [$b619], sp
    ld [$441a], sp
    ld [$511b], sp
    ld [$df1c], sp
    ld [$e01d], sp
    ld [$e11e], sp
    ld [$ff1f], sp
    rla
    and b
    ld h, b
    daa
    ld d, b
    rla
    push de
    ld h, b
    daa
    ld d, b
    rla
    inc e
    ld h, c
    daa
    ld d, b
    rla
    ld c, a
    ld h, c
    daa
    ld d, b
    rla
    adc e
    ld h, c
    daa
    ld d, b
    rla
    push bc
    ld h, c
    daa
    ld d, b
    rla
    rst $28
    ld h, c
    daa
    ld d, b
    rla
    dec bc
    ld h, d
    daa
    ld d, b
    rla
    add hl, hl
    ld h, d
    daa
    ld d, b
    rla
    ld d, a
    ld h, d
    daa
    ld d, b
    rla
    ld a, [$2762]
    ld d, b
    rla
    jr z, jr_018_6718

    daa
    ld d, b
    rla
    ld a, b
    ld h, e
    daa
    ld d, b
    ld [$37fa], sp
    ret c

    bit 7, a
    ld hl, $66d5
    jr nz, jr_018_66ca

    ld hl, $66d0

jr_018_66ca:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld [$2763], a
    ld d, b
    rla
    dec l
    ld h, h
    daa
    ld d, b
    rla
    ld l, l
    ld h, h
    daa
    ld d, b
    ret


    ld d, b
    call Call_000_3c29
    ld a, $10
    jp Jump_000_3f3a


    rla
    sub d
    ld h, h
    daa
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c29
    ld a, $01
    ld [$cf0c], a
    ld a, $21
    jp Jump_000_3f3a


    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_6718:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_018_7e05:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
