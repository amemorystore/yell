;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    inc b
    add hl, bc
    dec b
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0f02
    rrca
    dec bc
    rrca
    rrca
    ld [de], a
    inc de
    inc de
    add hl, bc
    dec h
    rrca
    inc d
    inc d
    jr @+$1b

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
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
    jr nz, jr_01d_4042

    ld bc, $0c02
    dec c
    dec c
    daa
    inc b
    dec b
    rlca
    rlca
    ld [hl+], a
    inc hl
    ld [$0f0f], sp
    rrca

jr_01d_4042:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $3d
    add hl, bc
    dec a
    dec a
    dec bc
    dec bc
    rlca
    ld b, $0b
    dec bc
    dec bc
    inc l
    dec bc
    dec de
    dec bc
    dec [hl]
    ld hl, $5faa
    ld b, $00

jr_01d_4061:
    ld de, $0003
    ld a, [$d35d]
    call Call_000_3da9
    ret nc

    push bc
    push hl
    ld hl, $d6ef
    ld c, b
    ld b, $02
    ld a, $10
    call Call_000_3eb4
    ld a, c
    pop hl
    pop bc
    inc b
    and a
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    jr nz, jr_01d_4061

    ld a, [$d360]
    call Call_01d_40a8
    cp d
    jr nc, jr_01d_4061

    ld a, [$d360]
    add $04
    cp d
    jr c, jr_01d_4061

    ld a, [$d361]
    call Call_01d_40a8
    cp e
    jr nc, jr_01d_4061

    ld a, [$d361]
    add $05
    cp e
    jr c, jr_01d_4061

    scf
    ret


Call_01d_40a8:
    sub $05
    cp $f0
    ret c

    xor a
    ret


    call Call_000_1eb6
    ld a, $08
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, $0a
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $07
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_1e8f
    ret


    rlca
    add hl, bc
    ld a, [bc]
    add h
    ld b, h
    add hl, hl
    ld b, d
    ldh [rLCDC], a
    nop
    dec de
    ld b, h
    ld hl, $40fc
    ld de, $410a
    call Call_000_311b
    call Call_000_3c29
    ld hl, $4245
    ld de, $411e
    ld a, [$d5fa]
    call Call_000_30fc
    ld [$d5fa], a
    ret


    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
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

Jump_01d_4113:
    xor a
    ld [$cd6b], a
    ld [$d5fa], a
    ld [$da38], a
    ret


    jr z, jr_01d_4161

    add sp, $31
    ld de, $c532
    ld b, c
    xor b
    ld b, c
    ld a, [$d360]
    ld b, a
    ld a, [$d361]
    ld c, a
    ld hl, $4153
    call Call_000_33d1
    cp $ff
    jp z, Jump_000_31b5

    call Call_000_3415
    ld hl, $d735
    set 7, [hl]
    ld a, $a7
    call Call_000_2238
    ld a, $ff
    ld [$cd6b], a
    ld a, $04
    ld [$da38], a
    ret


    dec bc
    inc de
    add h
    ld b, c
    ld bc, $8713
    ld b, c
    ld [bc], a
    ld [de], a
    adc d
    ld b, c
    ld [bc], a
    dec bc

jr_01d_4161:
    adc l
    ld b, c
    ld a, [bc]
    db $10
    sub b
    ld b, c
    ld b, $04
    sub e
    ld b, c
    dec c
    dec b
    sub [hl]
    ld b, c
    ld c, $04
    sbc c
    ld b, c
    rrca
    nop
    sbc h
    ld b, c
    rrca
    ld bc, $419f
    db $10
    dec c
    and d
    ld b, c
    ld de, $a50d
    ld b, c
    rst $38
    ld b, b
    add hl, bc
    rst $38
    jr nz, jr_01d_4191

    rst $38
    add b
    add hl, bc
    rst $38
    db $10
    ld b, $ff
    add b

jr_01d_4191:
    ld [bc], a
    rst $38
    add b
    rlca
    rst $38
    db $10
    ld [$10ff], sp
    add hl, bc
    rst $38
    ld b, b
    ld [$40ff], sp
    ld b, $ff
    jr nz, @+$08

    rst $38
    jr nz, @+$0e

    rst $38
    ld a, [$cd38]
    and a
    jr nz, jr_01d_41bd

    xor a
    ld [$cd6b], a
    ld hl, $d735
    res 7, [hl]
    ld a, $00
    ld [$da38], a
    ret


jr_01d_41bd:
    ld b, $11
    ld hl, $5077
    jp Jump_000_3e84


    ld a, [$d056]
    cp $ff
    jp z, Jump_01d_4113

    ld a, $f0
    ld [$cd6b], a

Call_01d_41d2:
    ld a, $0c
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d750
    set 1, [hl]
    ld bc, $e301
    call Call_000_3e3f
    jr nc, jr_01d_41f4

    ld a, $0d
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d750
    set 0, [hl]
    jr jr_01d_41fb

jr_01d_41f4:
    ld a, $0e
    ldh [$8c], a
    call Call_000_2817

jr_01d_41fb:
    ld hl, $d355
    set 7, [hl]
    ld hl, $d729
    set 7, [hl]
    ld a, [$d750]
    or $fc
    ld [$d750], a
    ld a, [$d751]
    or $03
    ld [$d751], a
    ld a, $24
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld hl, $d7ea
    set 1, [hl]
    set 7, [hl]
    jp Jump_01d_4113


    and [hl]
    ld b, d
    jr nc, jr_01d_4270

    ld c, c
    ld b, e
    ld h, d
    ld b, e
    ld a, e
    ld b, e
    sub h
    ld b, e
    xor l
    ld b, e
    add $43
    rst $18
    ld b, e
    ld hl, sp+$43
    rst $28
    inc hl
    inc e
    ld b, e
    ld hl, $2b43
    ld b, e
    ld [bc], a
    ld b, b
    ld d, b
    rst $10
    ld a, [hl-]
    ld b, e
    ld b, h
    ld b, e
    ccf
    ld b, e
    ccf
    ld b, e
    inc bc
    ld b, b
    ld d, b
    rst $10
    ld d, e
    ld b, e
    ld e, l
    ld b, e
    ld e, b
    ld b, e
    ld e, b
    ld b, e
    inc b
    ld b, b
    ld d, b
    rst $10
    ld l, h
    ld b, e
    db $76
    ld b, e
    ld [hl], c
    ld b, e
    ld [hl], c
    ld b, e
    dec b
    jr nz, jr_01d_42bc

    rst $10
    add l
    ld b, e
    adc a

jr_01d_4270:
    ld b, e
    adc d
    ld b, e
    adc d
    ld b, e
    ld b, $30
    ld d, b
    rst $10
    sbc [hl]
    ld b, e
    xor b
    ld b, e
    and e
    ld b, e
    and e
    ld b, e
    rlca
    ld b, b
    ld d, b
    rst $10
    or a
    ld b, e
    pop bc
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    ld [$5030], sp
    rst $10
    ret nc

    ld b, e
    jp c, $d543

    ld b, e
    push de
    ld b, e
    add hl, bc
    ld b, b
    ld d, b
    rst $10
    jp hl


    ld b, e
    di
    ld b, e
    xor $43
    xor $43
    rst $38
    ld [$50fa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_42dd

    bit 0, a
    jr nz, jr_01d_42ba

    call z, Call_01d_41d2
    call Call_000_2fde
    jr jr_01d_4308

jr_01d_42ba:
    ld a, $01

jr_01d_42bc:
    ld [$cc3c], a
    ld hl, $4316
    call Call_000_3c36
    call Call_000_1eb6
    ld a, $31
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_231c
    call Call_000_3ddb
    call Call_000_1e8f
    jr jr_01d_4308

jr_01d_42dd:
    ld hl, $430b
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4310
    ld de, $4310
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $08
    ld [$d05b], a
    ld a, $03
    ld [$d5fa], a

jr_01d_4308:
    jp Jump_000_23d2


    rla
    ld h, b
    ld e, c
    ld a, [hl+]
    ld d, b
    rla
    inc l
    ld e, d
    ld a, [hl+]
    dec bc
    ld d, b
    rla
    add d
    ld e, d
    ld a, [hl+]
    dec c
    ld d, b
    rla
    ld [hl+], a
    ld e, e
    ld a, [hl+]
    ld d, b
    rla
    ret c

    ld e, e
    ld a, [hl+]
    dec bc
    rla
    db $eb
    ld e, e
    ld a, [hl+]
    ld d, b
    rla
    ld e, d
    ld e, h
    ld a, [hl+]
    ld d, b
    ld [$4521], sp
    ld b, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld a, e
    ld e, h
    ld a, [hl+]
    ld d, b
    rla
    xor d
    ld e, h
    ld a, [hl+]
    ld d, b
    rla
    cp l
    ld e, h
    ld a, [hl+]
    ld d, b
    ld [$5121], sp
    ld b, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $ed
    ld e, h
    ld a, [hl+]
    ld d, b
    rla
    ld d, $5d
    ld a, [hl+]
    ld d, b
    rla
    ld e, $5d
    ld a, [hl+]
    ld d, b
    ld [$5d21], sp
    ld b, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc [hl]
    ld e, l
    ld a, [hl+]
    ld d, b
    rla
    ld h, e
    ld e, l
    ld a, [hl+]
    ld d, b
    rla
    add b
    ld e, l
    ld a, [hl+]
    ld d, b
    ld [$6921], sp
    ld b, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    xor l
    ld e, l
    ld a, [hl+]
    ld d, b
    rla
    db $db
    ld e, l
    ld a, [hl+]
    ld d, b
    rla
    db $e3
    ld e, l
    ld a, [hl+]
    ld d, b
    ld [$7521], sp
    ld b, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld c, $5e
    ld a, [hl+]
    ld d, b
    rla
    ld [hl-], a
    ld e, [hl]
    ld a, [hl+]
    ld d, b
    rla
    ld b, e
    ld e, [hl]
    ld a, [hl+]
    ld d, b
    ld [$8121], sp
    ld b, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld e, [hl]
    ld e, [hl]
    ld a, [hl+]
    ld d, b
    rla
    adc h
    ld e, [hl]
    ld a, [hl+]
    ld d, b
    rla
    sub e
    ld e, [hl]
    ld a, [hl+]
    ld d, b
    ld [$8d21], sp
    ld b, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    or [hl]
    ld e, [hl]
    ld a, [hl+]
    ld d, b
    rla
    push hl
    ld e, [hl]
    ld a, [hl+]
    ld d, b
    rla
    rst $30
    ld e, [hl]
    ld a, [hl+]
    ld d, b
    ld [$9921], sp
    ld b, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc de
    ld e, a
    ld a, [hl+]
    ld d, b
    rla
    ld e, c
    ld e, a
    ld a, [hl+]
    ld d, b
    rla
    ld l, b
    ld e, a
    ld a, [hl+]
    ld d, b
    ld [$50fa], sp
    rst $10
    bit 1, a
    jr nz, jr_01d_4408

    ld hl, $4411
    call Call_000_3c36
    jr jr_01d_440e

jr_01d_4408:
    ld hl, $4416
    call Call_000_3c36

jr_01d_440e:
    jp Jump_000_23d2


    rla
    xor b
    ld e, a
    ld a, [hl+]
    ld d, b
    rla
    ld d, d
    ld h, b
    ld a, [hl+]
    ld d, b
    inc bc
    ld [bc], a
    ld de, $0410
    rst $38
    ld de, $0411
    rst $38
    nop
    dec bc
    rla
    dec b
    ld b, $ff
    ret nc

    ld b, c
    push hl
    inc bc
    rlca
    dec bc
    db $10
    rst $38
    ret nc

    ld b, d
    rst $20
    add hl, bc
    ld c, $0f
    rrca
    rst $38
    pop de
    ld b, e
    ldh [rTMA], a
    ld hl, $0e0b
    rst $38
    ret nc

    ld b, h
    sbc $03
    ld c, $0b
    rlca
    rst $38
    jp nc, $e045

    rlca
    rlca
    add hl, bc
    ld de, $d3ff
    ld b, [hl]
    rst $20
    ld a, [bc]
    ld c, $05
    ld c, $ff
    ret nc

    ld b, a
    ldh [$08], a
    ld hl, $0614
    rst $38
    db $d3
    ld c, b
    sbc $04
    rlca
    add hl, bc
    ld a, [bc]
    rst $38
    ret nc

    ld c, c
    rst $20
    ld bc, $1324
    inc d
    rst $38
    ret nc

    ld a, [bc]
    ld b, a
    dec c
    inc d
    rst $38
    rst $38
    adc e
    dec [hl]
    add c
    rst $00
    ld de, $8110
    rst $00
    ld de, $4911
    ld bc, HeaderDestinationCode
    ld bc, $015f
    ld bc, $5d01
    ld c, e
    dec b
    ld d, c
    ld h, h
    ld d, [hl]
    ld h, e
    ld b, [hl]
    ld b, [hl]
    ld e, [hl]
    ld e, h
    ld d, d
    ld b, [hl]
    ld c, [hl]
    ld d, e
    ld d, h
    ld d, l
    dec b
    dec b
    ld c, h
    dec b
    ld h, c
    dec b
    ld h, b
    ld c, h
    ld d, l
    ld c, b
    ld c, b
    ld e, e
    ld c, h
    dec b
    ld b, b
    ld b, h
    ld c, h
    ld c, h
    dec b
    dec b
    dec b
    ld c, l
    ld c, h
    dec b
    dec b
    inc l
    ld d, l
    ld c, h
    dec b
    dec b
    dec b
    ld d, c
    ld h, b
    ld b, a
    dec b
    inc l
    ld e, b
    ld c, b
    ld c, b
    ld c, b
    ld e, d
    dec b
    ld h, d
    dec b
    ld b, e
    ld b, l
    ld d, a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld e, c
    ld [hl-], a
    dec b
    ld sp, $0540
    dec b
    ld b, c
    dec b
    dec b
    ld b, d
    dec b
    inc b
    dec b
    ld [bc], a
    inc b
    inc b
    db $10
    ld b, b
    di
    ld b, h
    ld [$0044], a
    rla
    ld b, l
    call Call_000_3c29
    ld a, $01
    ld [$cf0c], a
    ret


    ld b, e
    inc hl
    ld sp, hl
    ld b, h
    ld [$0845], sp
    ld hl, $4503
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    sbc l
    ld l, h
    ld a, [hl+]
    ld d, b
    ld [$1221], sp
    ld b, l
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    db $fc
    ld l, h
    ld a, [hl+]
    ld d, b
    nop
    ld [bc], a
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0704
    rlca
    cp $01
    ld [bc], a
    inc c
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld de, $0f09
    cp h
    ld b, l
    ld c, h
    ld b, l
    ld c, c
    ld b, l
    nop
    ld d, h
    ld b, l
    jp Jump_000_3c29


    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld a, l
    add hl, bc
    ld de, $0618
    rst $38
    ld de, $0619
    rst $38
    ld bc, $001b
    ld [c], a
    rlca
    rla
    ld bc, $09e2
    ld [de], a
    ld [bc], a
    ld [c], a
    ld bc, $0307
    ld [c], a
    inc bc
    ld bc, $e204
    dec bc
    inc bc
    dec b
    ld [c], a
    ld b, $00
    nop
    db $e3
    nop
    inc b
    ld b, a
    inc d
    ld hl, $ffff
    add c
    jr z, @+$49

    rrca
    dec bc
    rst $38
    rst $38
    add d
    ld d, e
    ld b, a
    dec c
    ld hl, $ffff
    add e
    ld [hl], $47
    rlca
    ld d, $ff
    rst $38
    add h
    ld [bc], a
    or d
    rst $00
    ld de, $b218
    rst $00
    ld de, $0b19
    rst $00
    ld bc, $481b
    rst $00
    rlca
    rla
    ld e, e
    rst $00
    add hl, bc
    ld [de], a
    ld bc, $01c7
    rlca
    inc de
    rst $00
    inc bc
    ld bc, $c768
    dec bc
    inc bc
    dec a
    rst $00
    ld b, $00
    ld [bc], a
    jr nz, jr_01d_45e1

    ld h, d
    ld [bc], a
    dec c
    ld e, [hl]
    rrca
    dec b
    dec b
    dec b
    dec b
    inc d
    ld a, h
    ld d, $62
    ld a, d
    ld [bc], a
    ld b, $09
    inc c
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld [hl], c
    ld l, l
    ld h, [hl]
    dec e
    ld e, $5f
    inc b
    ld de, $0702
    ld c, $17

jr_01d_45e1:
    ld [bc], a
    ld h, [hl]
    dec e
    ld e, b
    ld a, [bc]
    inc b
    ld de, $277a
    ld l, [hl]
    inc de
    ld [bc], a
    inc b
    dec bc
    rra
    dec b
    ld c, $0c
    ld l, [hl]
    ld a, $7d
    ld c, l
    ld de, $744d
    jr nz, jr_01d_461e

    ld e, a
    ld [bc], a
    ld e, a
    rlca
    inc d
    ld a, a
    rla
    rlca
    jr nz, jr_01d_4628

    ld b, $08
    ld a, $02
    ld [$7a6e], sp
    ld [hl], d
    inc c
    ld h, [hl]
    ld e, $1f
    db $76
    db $76
    db $76
    ld e, a
    ld b, $72
    jr nz, jr_01d_463c

    rla
    inc c
    ld [bc], a
    ld a, [bc]

jr_01d_461e:
    ld e, [hl]
    ld [hl], h
    ld [bc], a
    jr nz, jr_01d_4645

    db $76
    db $76
    dec c
    jr nz, jr_01d_464a

jr_01d_4628:
    ld e, a
    rra
    ld b, $20
    ld [hl+], a
    ld [bc], a
    ld e, a
    ld c, a
    ld l, [hl]
    ld l, [hl]
    rla
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76

jr_01d_463c:
    db $76
    db $76
    db $76
    ld [bc], a
    inc h
    rra
    ld c, h
    dec c
    inc b

jr_01d_4645:
    inc b
    ld c, h
    ld b, b
    ld e, c
    ld b, [hl]

jr_01d_464a:
    ld c, a
    ld b, [hl]
    nop
    inc b
    ld b, a
    ld a, $01
    ld [$cf0c], a
    dec a
    ld [$cc3c], a
    ret


    ld e, e
    ld b, [hl]
    ld [$bd21], sp
    ld b, [hl]
    call Call_000_3c36
    xor a
    ld [$cc26], a
    ld [$cc36], a

jr_01d_4669:
    ld hl, $46c2
    call Call_000_3c36
    ld hl, $46b3
    call Call_000_293d
    ld hl, $cf7a
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    xor a
    ld [$cf92], a
    ld [$cc35], a
    ld a, $04
    ld [$cf93], a
    call Call_000_2ae0
    jr c, jr_01d_46a6

    ld hl, $46cc
    ld a, [$cf90]
    sub $15
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c36
    jr jr_01d_4669

jr_01d_46a6:
    xor a
    ld [$cc36], a
    ld hl, $46c7
    call Call_000_3c36
    jp Jump_000_23d2


    ld [$1615], sp
    rla
    jr jr_01d_46d2

    ld a, [de]
    dec de
    inc e
    rst $38
    rla
    inc hl
    ld a, c
    ld a, [hl+]
    ld d, b
    rla
    sub h
    ld a, c
    ld a, [hl+]
    ld d, b
    rla
    jp z, Jump_000_2a79

    ld d, b
    call c, $e146
    ld b, [hl]
    and $46

jr_01d_46d2:
    db $eb
    ld b, [hl]
    ldh a, [rDMA]
    push af
    ld b, [hl]
    ld_long a, $ff46
    ld b, [hl]
    rla
    db $ed
    ld a, c
    ld a, [hl+]
    ld d, b
    rla
    ld c, [hl]
    ld a, d
    ld a, [hl+]
    ld d, b
    rla
    cp c
    ld a, d
    ld a, [hl+]
    ld d, b
    rla
    inc d
    ld a, e
    ld a, [hl+]
    ld d, b
    rla
    nop
    ld b, b
    dec hl
    ld d, b
    rla
    ld e, [hl]
    ld b, b
    dec hl
    ld d, b
    rla
    sbc l
    ld b, b
    dec hl
    ld d, b
    rla
    bit 0, b
    dec hl
    ld d, b
    inc c
    inc bc
    nop
    ld [bc], a
    add hl, bc
    rst $38
    rlca
    ld [bc], a
    ld [$07ff], sp
    inc bc
    ld [$00ff], sp
    ld bc, $070a
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
    ld hl, $47de
    call Call_000_3c36
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $03
    ld [$cc28], a
    ld a, $05
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld hl, $d72f
    set 6, [hl]
    ld hl, $c3dc
    ld bc, $080c
    call Call_000_16f0
    call Call_000_231c
    ld hl, $c406
    ld de, $47e3
    call Call_000_1723
    ld hl, $c421
    ld de, $4808
    call Call_000_1723
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3aab
    bit 1, a
    jr nz, jr_01d_47d8

    ld a, [$cc26]
    cp $03
    jr z, jr_01d_47d8

    xor a
    ldh [$9f], a
    ldh [$a1], a
    ld a, $02
    ldh [$a0], a
    call Call_000_35c3
    jr nc, jr_01d_4799

    ld hl, $4818
    jp Jump_000_3c36


jr_01d_4799:
    call Call_01d_482c
    ldh a, [$db]
    ld b, a
    ld c, $01
    call Call_000_3e3f
    jr nc, jr_01d_47d2

    ld b, $3c

jr_01d_47a8:
    ld c, $02
    call Call_000_372f
    push bc
    ld a, $a8
    call Call_000_2238
    pop bc
    dec b
    jr nz, jr_01d_47a8

    ld hl, $481d
    call Call_000_3c36
    ld hl, $ffde
    ld de, $d348
    ld c, $03
    ld a, $0c
    call Call_000_3eb4
    ld a, $13
    ld [$d124], a
    jp Jump_000_3010


jr_01d_47d2:
    ld hl, $4822
    jp Jump_000_3c36


jr_01d_47d8:
    ld hl, $4827
    jp Jump_000_3c36


    rla
    rst $30
    ld h, a
    dec hl
    ld d, b
    add l
    sub c
    add h
    sub d
    add a
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld c, [hl]
    sub d
    adc [hl]
    add e
    add b
    ld a, a
    adc a
    adc [hl]
    adc a
    ld c, [hl]
    adc e
    add h
    adc h
    adc [hl]
    adc l
    add b
    add e
    add h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ldh a, [$f8]
    or $f6
    ld c, [hl]
    ldh a, [$f9]
    or $f6
    ld c, [hl]
    ldh a, [$f9]
    ei
    or $4e
    ld d, b
    rla
    dec de
    ld l, b
    dec hl
    ld d, b
    rla
    inc [hl]
    ld l, b
    dec hl
    ld d, b
    rla
    ld b, l
    ld l, b
    dec hl
    ld d, b
    rla
    ld h, l
    ld l, b
    dec hl
    ld d, b

Call_01d_482c:
    ld hl, $4845
    ld a, [$cc26]
    add a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ldh [$db], a
    ld a, [hl+]
    ldh [$dc], a
    ld a, [hl+]
    ldh [$dd], a
    ld a, [hl]
    ldh [$de], a
    ret


    inc a
    nop
    ld [bc], a
    nop
    dec a
    nop
    inc bc
    nop
    ld a, $00
    inc bc
    ld d, b
    ld [$0404], sp
    jr nz, jr_01d_4896

    ld h, c
    ld c, b
    ld e, l
    ld c, b
    nop
    db $76
    ld c, b
    call Call_000_3c29
    ret


    ld h, a
    ld c, b
    ld l, h
    ld c, b
    ld [hl], c
    ld c, b
    rla
    pop bc
    ld b, h
    inc l
    ld d, b
    rla
    ld de, $2c45
    ld d, b
    rla
    ld l, e
    ld b, l
    inc l
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $00ff
    inc bc
    inc e
    rlca
    ld b, $ff
    db $d3
    ld bc, $060b
    dec bc
    rst $38
    pop de
    ld [bc], a
    inc b
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00

jr_01d_4896:
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld b, $04
    rlca
    jr nc, jr_01d_48e1

    xor [hl]
    ld c, b
    xor b
    ld c, b
    nop
    ret nc

    ld c, b
    call Call_000_2156
    jp Jump_000_3c29


    cp b
    ld c, b
    cp c
    ld c, b
    cp [hl]
    ld c, b
    jp $c448


    ld c, b
    rst $38
    rla
    and l
    ld b, l
    inc l
    ld d, b
    rla
    db $fc
    ld b, l
    inc l
    ld d, b
    or $08
    ld hl, $4f12
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    nop
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    rst $38
    rlca
    inc b
    ld [bc], a
    rst $38
    nop
    dec b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

jr_01d_48e1:
    ld bc, $0721
    ld [$d1ff], sp
    ld [bc], a
    ld b, $09
    ld a, [bc]
    cp $02
    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld b, h
    dec b
    ld [$d0ff], sp
    dec b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    inc d
    inc b
    dec b
    ld b, $4a
    ld de, $0e49
    ld c, c
    nop
    reti


    ld c, c
    jp Jump_000_3c29


    dec de
    ld c, c
    rst $28
    inc hl
    ldh [rNR44], a
    cp h
    ld c, c
    cp h
    ld c, c
    ld [$8dfa], sp
    rst $10
    bit 0, a
    jr nz, jr_01d_497d

    ld b, $40
    call Call_000_3422
    jr nz, jr_01d_494b

    ld a, [$d78d]
    bit 1, a
    jr nz, jr_01d_4962

    ld hl, $498e
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    ld hl, $4998
    jr nz, jr_01d_4946

    ld hl, $4993

jr_01d_4946:
    call Call_000_3c36
    jr jr_01d_498b

jr_01d_494b:
    ld hl, $499d
    call Call_000_3c36
    ld a, $40
    ldh [$db], a
    ld b, $05
    ld hl, $7dbb
    call Call_000_3e84
    ld hl, $d78d
    set 1, [hl]

jr_01d_4962:
    ld hl, $49a7
    call Call_000_3c36
    ld bc, $c701
    call Call_000_3e3f
    jr nc, jr_01d_4985

    ld hl, $49ac
    call Call_000_3c36
    ld hl, $d78d
    set 0, [hl]
    jr jr_01d_498b

jr_01d_497d:
    ld hl, $49b2
    call Call_000_3c36
    jr jr_01d_498b

jr_01d_4985:
    ld hl, $49b7
    call Call_000_3c36

jr_01d_498b:
    jp Jump_000_23d2


    rla
    ld h, d
    ld b, [hl]
    inc l
    ld d, b
    rla
    xor c
    ld b, [hl]
    inc l
    ld d, b
    rla
    adc $46
    inc l
    ld d, b
    rla
    ldh a, [rDMA]
    inc l
    dec bc
    rla
    rla
    ld b, a
    inc l
    ld d, b
    rla
    add hl, sp
    ld b, a
    inc l
    ld d, b
    rla
    ret nz

    ld b, a
    inc l
    dec bc
    ld d, b
    rla
    call nc, $2c47
    ld d, b
    rla
    sbc b
    ld c, b
    inc l
    ld d, b
    ld [$8cf0], sp
    cp $04
    ld hl, $49d4
    jr nz, jr_01d_49c9

    ld hl, $49cf

jr_01d_49c9:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    or h
    ld c, b
    inc l
    ld d, b
    rla
    adc $48
    inc l
    ld d, b
    rla
    ld [bc], a
    rlca
    inc b
    inc bc
    rst $38
    rlca
    dec b
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc b
    inc b
    inc bc
    dec b
    dec b
    inc bc
    dec l
    rlca
    ld b, $ff
    rst $38
    ld bc, $0747
    inc c
    rst $38
    rst $38
    add d
    jr z, @+$4b

    ld [$ff0c], sp
    db $10
    inc bc
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    ld bc, $0101
    ld bc, $2901
    rlca
    jr nz, jr_01d_4a2c

    ld e, $07
    rlca
    rlca
    rlca
    rlca
    dec c
    rlca
    inc c
    rlca
    ld c, $0c
    inc bc
    inc b
    ld d, [hl]
    ld c, d
    ld d, l
    ld c, e
    ld h, d
    ld c, d
    nop
    ld h, $4a
    ld a, [bc]
    inc b
    dec b
    inc bc
    inc b
    rst $38

jr_01d_4a2c:
    dec b
    inc b
    inc b
    rst $38
    nop
    inc bc
    nop
    call c, $0400
    ld bc, $00dc
    ld [bc], a
    inc hl
    ld b, $0a
    rst $38
    jp nc, Jump_000_2301

    ld [$ff05], sp
    db $d3
    ld [bc], a
    ld [$05c7], sp
    inc bc
    add hl, bc
    rst $00
    dec b
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld d, $6b
    ld l, d
    rla
    ld [bc], a
    add hl, bc
    ld [$1801], sp
    ld l, h
    ld l, c
    add hl, de
    call Call_000_3c29
    ld hl, $4a6f
    ld a, [$d61e]
    call Call_000_3d93
    ret


    ld a, l
    ld c, d
    cp h
    ld c, d
    ret nz

    ld c, d
    sub $4a
    inc hl
    ld c, e
    db $e4
    ld c, d
    ld sp, $214b
    or a
    ld c, d
    call Call_000_34bc
    ret nc

    ld a, $03
    ldh [$8c], a
    call Call_000_2817
    ld a, $ff
    ld [$cd6b], a
    xor a
    ldh [$b4], a
    ld a, $0c
    ld [$c109], a
    ld a, [$cd3d]
    cp $01
    jr z, jr_01d_4aa5

    ld a, $02
    ld [$d61e], a
    ret


jr_01d_4aa5:
    ld a, $10
    ld c, $01
    call Call_01d_4b3f
    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ld [$d61e], a
    ret


    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    rst $38
    call Call_01d_4b50
    ret nz

    xor a
    ldh [$b4], a
    ld [$cd6b], a
    call Call_000_231c
    ld a, $04
    ldh [$8c], a
    call Call_000_2817
    ld a, $ff
    ld [$cd6b], a
    ret


    call Call_01d_4b50
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $05
    ld [$d61e], a
    ret


    ld a, $04
    ld [$d527], a
    ld hl, $d78f
    bit 6, [hl]
    res 6, [hl]
    jr z, jr_01d_4b1b

    res 7, [hl]
    call Call_000_231c
    ld a, $f0
    ld [$cd6b], a
    ld a, $06
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$da46], a
    ld [$d70c], a
    ld [$d70c], a
    ld a, $80
    ld c, $03
    call Call_01d_4b3f
    ld a, $04
    ld [$d61e], a
    jr jr_01d_4b22

jr_01d_4b1b:
    ld a, $05
    ldh [$8c], a
    call Call_000_2817

jr_01d_4b22:
    ret


    call Call_01d_4b50
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d61e], a
    ret


    call Call_01d_4b50
    ret nz

    call Call_000_3ddb
    ld a, [$cf0d]
    ld [$d61e], a
    ret


Call_01d_4b3f:
    push af
    ld b, $00
    ld a, c
    ld [$cd38], a
    ld hl, $ccd3
    pop af
    call Call_000_166e
    jp Jump_000_3415


Call_01d_4b50:
    ld a, [$cd38]
    and a
    ret


    ld h, c
    ld c, e
    call Call_01d_614b
    ld c, e
    ld h, [hl]
    ld c, e
    ld [hl], d
    ld c, e
    ret z

    ld c, e
    rla
    push hl
    ld c, b
    inc l
    ld d, b
    ld [$7721], sp
    ld e, a
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    rla
    ld [bc], a
    ld c, c
    inc l
    ld [$efcd], sp
    dec [hl]
    ld a, [$cc26]
    and a
    jr nz, jr_01d_4b9f

    ld hl, $4bbe
    call Call_000_3c36
    xor a
    ld [$c109], a
    ld a, $80
    ld c, $03
    call Call_01d_4b3f
    ld hl, $d78f
    res 6, [hl]
    res 7, [hl]
    ld a, $00
    ld [$cf0d], a
    jr jr_01d_4bb6

jr_01d_4b9f:
    ld hl, $4bc3
    call Call_000_3c36
    ld a, $04
    ld [$c109], a
    ld a, $40
    ld c, $01
    call Call_01d_4b3f
    ld a, $05
    ld [$cf0d], a

jr_01d_4bb6:
    ld a, $06
    ld [$d61e], a
    jp Jump_000_23d2


    rla
    inc de
    ld c, c
    inc l
    ld d, b
    rla
    ld b, d
    ld c, c
    inc l
    ld d, b
    rla
    ld c, [hl]
    ld c, c
    inc l
    ld d, b
    ld [$3e21], sp
    ld h, b
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    rlca
    add hl, bc
    dec b
    ld d, d
    ld c, [hl]
    ld a, l
    ld c, h
    push hl
    ld c, e
    nop
    nop
    ld c, [hl]
    call Call_01d_4bfb
    call Call_000_3c29
    ld hl, $4c93
    ld de, $4c2a
    ld a, [$d65a]
    call Call_000_30fc
    ld [$d65a], a
    ret


Call_01d_4bfb:
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    ret z

    ld hl, $4c0d
    ld de, $4c1a
    call Call_000_311b
    ret


    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    adc d
    adc [hl]
    add [hl]
    add b
    ld d, b

Jump_01d_4c1f:
    xor a
    ld [$cd6b], a
    ld [$d65a], a
    ld [$da38], a
    ret


    or l
    ld sp, $31e8
    ld de, $3232
    ld c, h
    ld a, [$d056]
    cp $ff
    jp z, Jump_01d_4c1f

    ld a, $f0
    ld [$cd6b], a

Call_01d_4c3f:
    ld a, $09
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d791
    set 1, [hl]

jr_01d_4c4b:
    ld bc, $ce01
    call Call_000_3e3f
    jr nc, jr_01d_4c61

    ld a, $0a
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d791
    set 0, [hl]
    jr jr_01d_4c68

jr_01d_4c61:
    ld a, $0b

jr_01d_4c63:
    ldh [$8c], a
    call Call_000_2817

jr_01d_4c68:
    ld hl, $d355
    set 4, [hl]
    ld hl, $d729
    set 4, [hl]
    ld a, [$d791]
    or $fc
    ld [$d791], a
    jp Jump_01d_4c1f


    call c, $4c4c
    ld c, l
    ld h, l
    ld c, l
    ld a, [hl]
    ld c, l
    sub a
    ld c, l
    or b
    ld c, l
    ret


    ld c, l
    ld [c], a
    ld c, l
    jr c, jr_01d_4cdc

    dec a
    ld c, l
    ld b, a
    ld c, l
    ld [bc], a
    jr nz, @-$6d

    rst $10
    ld d, [hl]
    ld c, l
    ld h, b
    ld c, l
    ld e, e
    ld c, l
    ld e, e
    ld c, l
    inc bc
    jr nz, @-$6d

    rst $10
    ld l, a
    ld c, l
    ld a, c
    ld c, l
    ld [hl], h
    ld c, l
    ld [hl], h
    ld c, l
    inc b
    ld b, b
    sub c
    rst $10
    adc b
    ld c, l
    sub d
    ld c, l
    adc l
    ld c, l
    adc l
    ld c, l
    dec b
    jr nz, jr_01d_4c4b

    rst $10
    and c
    ld c, l
    xor e
    ld c, l
    and [hl]
    ld c, l
    and [hl]
    ld c, l
    ld b, $20
    sub c
    rst $10
    cp d
    ld c, l
    call nz, $bf4d
    ld c, l
    cp a
    ld c, l
    rlca
    jr nz, jr_01d_4c63

    rst $10
    db $d3
    ld c, l
    db $dd
    ld c, l
    ret c

    ld c, l
    ret c

    ld c, l
    rst $38

jr_01d_4cdc:
    ld [$91fa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_4cf8

    bit 0, a
    jr nz, jr_01d_4cf0

    call z, Call_01d_4c3f
    call Call_000_2fde
    jr jr_01d_4d26

jr_01d_4cf0:
    ld hl, $4d33
    call Call_000_3c36
    jr jr_01d_4d26

jr_01d_4cf8:
    ld hl, $4d29
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4d2e
    ld de, $4d2e
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $05
    ld [$d05b], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d65a], a

jr_01d_4d26:
    jp Jump_000_23d2


    rla
    pop af
    ld c, h
    inc l
    ld d, b
    rla
    and [hl]
    ld c, l
    inc l
    ld d, b
    rla
    db $e4
    ld c, l
    inc l
    ld d, b
    rla
    ld c, l
    ld c, [hl]
    inc l
    ld d, b
    rla
    rst $08
    ld c, [hl]
    inc l
    ld de, $e317
    ld c, [hl]
    inc l
    ld d, b
    rla
    daa
    ld c, a
    inc l
    ld d, b
    ld [$9321], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld b, h
    ld c, a
    inc l
    ld d, b
    rla
    and [hl]
    ld c, a
    inc l
    ld d, b
    rla
    cp h
    ld c, a
    inc l
    ld d, b
    ld [$9f21], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $eb
    ld c, a
    inc l
    ld d, b
    rla
    ld e, $50
    inc l
    ld d, b
    rla
    inc l
    ld d, b
    inc l
    ld d, b
    ld [$ab21], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld h, d
    ld d, b
    inc l
    ld d, b
    rla
    adc h
    ld d, b
    inc l
    ld d, b
    rla
    and b
    ld d, b
    inc l
    ld d, b
    ld [$b721], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [c], a
    ld d, b
    inc l
    ld d, b
    rla
    ld e, $51
    inc l
    ld d, b
    rla
    ld sp, $2c51
    ld d, b
    ld [$c321], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add l
    ld d, c
    inc l
    ld d, b
    rla
    and $51
    inc l
    ld d, b
    rla
    db $ed
    ld d, c
    inc l
    ld d, b
    ld [$cf21], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld a, [bc]
    ld d, d
    inc l
    ld d, b
    rla
    ld d, h
    ld d, d
    inc l
    ld d, b
    rla
    ld h, a
    ld d, d
    inc l
    ld d, b
    ld [$91fa], sp
    rst $10
    bit 1, a
    ld hl, $4dfb
    jr nz, jr_01d_4df0

    ld hl, $4df6

jr_01d_4df0:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    or [hl]
    ld d, d
    inc l
    ld d, b
    rla
    ld e, b
    ld d, e
    inc l
    ld d, b
    inc bc
    ld [bc], a
    ld de, $0504
    rst $38
    ld de, $0505
    rst $38
    nop
    ld [$0e2c], sp
    ld [$d0ff], sp
    ld b, c
    xor $01
    ld hl, $0c11
    rst $38
    ret nc

    ld b, d
    db $dd
    rlca
    ld hl, $0b0c
    rst $38
    db $d3
    ld b, e
    db $dd
    inc bc
    ld hl, $0510
    rst $38
    ret nc

    ld b, h
    db $dd
    ld [$0921], sp
    rlca
    rst $38
    pop de
    ld b, l
    sbc $01
    ld hl, $0c06
    rst $38
    ret nc

    ld b, [hl]
    sbc $02
    ld hl, $060b
    rst $38
    jp nc, $dd47

    inc b
    inc h
    inc de
    dec bc
    rst $38
    ret nc

    ld [$c74e], sp
    ld de, $4e04
    rst $00
    ld de, $0105
    ld bc, $0101
    ld bc, $2d05
    ld l, $30
    dec b
    dec l
    dec b
    cpl
    jr nc, jr_01d_4e66

    cpl
    dec l
    dec b
    cpl
    dec b

jr_01d_4e66:
    dec b
    dec l
    dec l
    cpl
    dec b
    ld l, $2f
    dec b
    jr nc, jr_01d_4e75

    dec b
    dec l
    dec l
    dec l
    dec b

jr_01d_4e75:
    dec b
    ld [hl-], a
    dec b
    ld sp, $0505
    dec b
    inc b
    dec b
    dec b
    inc d
    inc b
    rlca
    jp z, $8f4e

    ld c, [hl]
    adc e
    ld c, [hl]
    nop
    and h
    ld c, [hl]
    call Call_000_3c29
    ret


    sub l
    ld c, [hl]
    sbc d
    ld c, [hl]
    sbc a
    ld c, [hl]
    rla
    add l
    ld d, e
    inc l
    ld d, b
    rla
    jp z, $2c53

    ld d, b
    rla
    ld h, $54
    inc l
    ld d, b
    rla
    ld [bc], a
    rlca
    inc b
    ld b, $ff
    rlca
    dec b
    ld b, $ff
    nop
    inc bc
    inc hl
    dec b
    ld [$d0ff], sp
    ld bc, $0623
    inc b
    rst $38
    pop de
    ld [bc], a
    inc hl
    dec b
    ld c, $ff
    ret nc

    inc bc
    rra
    rst $00
    rlca
    inc b
    rra
    rst $00
    rlca
    dec b
    ld b, $06
    ld bc, $0103
    dec [hl]
    ld bc, $0707
    jr c, @+$3b

    rlca
    rrca
    rlca
    inc [hl]
    rlca
    ld [hl], $37
    scf
    scf
    scf
    dec c
    rlca
    inc c
    rlca
    rlca
    rlca
    ld c, $16
    add hl, bc
    ld a, [bc]
    add h
    ld d, e
    xor e
    ld d, b
    ld a, [c]
    ld c, [hl]
    nop
    ld a, [hl+]
    ld d, e
    call Call_01d_4f01
    call Call_000_3c29
    ld hl, $4f53
    ld a, [$d65d]
    jp Jump_000_3d93


Call_01d_4f01:
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    push hl
    call nz, Call_01d_4f1a
    pop hl
    bit 5, [hl]
    res 5, [hl]
    call nz, Call_000_3ef0
    ld hl, $d79a
    res 7, [hl]
    ret


Call_01d_4f1a:
    ld hl, $4f23
    ld de, $4f33
    jp Jump_000_311b


    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    ld d, b
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, b

Jump_01d_4f3a:
    xor a
    ld [$cd6b], a
    ld [$d65d], a
    ld [$da38], a
    ld [$da37], a
    ret


    ldh a, [$8c]
    ld [$cc55], a
    ret


Call_01d_4f4e:
    ld a, $10
    jp Jump_000_3eb4


    ld e, e
    ld c, a
    cp h
    ld c, a
    pop de
    ld c, a
    ld d, e
    ld d, b
    ld a, [$da37]
    and a
    ret z

    ldh [$8c], a
    cp $04
    jr nz, jr_01d_4f78

    ld a, $04
    ld [$d527], a
    ld hl, $4f97
    ld b, $00
    call Call_01d_4fa3
    ld de, $4f94
    jr jr_01d_4f88

jr_01d_4f78:
    ld a, $01
    ld [$d527], a
    ld hl, $4f9e
    ld b, $0c
    call Call_01d_4fa3
    ld de, $4f9c

jr_01d_4f88:
    call Call_000_363d
    ld a, $01
    ld [$d65d], a
    ld [$da38], a
    ret


    add b
    ld b, b
    rst $38
    nop
    jr nz, jr_01d_4fb8

    dec [hl]
    ccf
    add b
    rst $38
    nop
    dec e
    rra
    jr c, jr_01d_4fe2

Call_01d_4fa3:
    ld a, [$d471]
    bit 7, a
    ret z

    push hl
    push bc
    ld hl, $4b4d
    ld b, $3f
    call Call_000_3e84
    pop bc
    pop hl
    ld a, b
    cp e
    ret nz

jr_01d_4fb8:
    call Call_000_159b
    ret


    ld a, [$d72f]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, [$da37]
    ld [$cc55], a
    ldh [$8c], a
    jp Jump_000_2817


    call Call_01d_53e9
    ld a, [$d056]
    cp $ff
    jp z, Jump_01d_4f3a

    ld a, [$cc55]
    sub $02
    ld c, a

jr_01d_4fe2:
    ld b, $02
    ld hl, $d79b
    call Call_01d_4f4e
    ld a, c
    and a
    jr nz, jr_01d_500d

    ld a, [$cc55]
    cp $02
    jr z, jr_01d_500d

    ld c, $1e
    call Call_000_372f
    call Call_01d_5023
    call Call_01d_5041
    call Call_000_373e
    ld a, $ad
    call Call_000_2238
    call Call_000_373e
    jr jr_01d_5013

jr_01d_500d:
    call Call_01d_5023
    call Call_01d_5041

jr_01d_5013:
    xor a
    ld [$cd6b], a
    ld [$da37], a
    ld a, $00
    ld [$d65d], a
    ld [$da38], a
    ret


Call_01d_5023:
    ld a, [$cc55]
    ldh [$db], a
    ld c, a
    ld b, $01
    ld hl, $d799
    call Call_01d_4f4e
    ret


    ld a, [$cc55]
    ldh [$db], a
    ld c, a
    ld b, $02
    ld hl, $d799
    call Call_01d_4f4e
    ret


Call_01d_5041:
    ld a, [$cc55]
    sub $02
    ld c, a
    ld b, $01
    ld hl, $d79b
    call Call_01d_4f4e
    call Call_000_3ef0
    ret


    call Call_01d_53e9
    ld a, [$d056]
    cp $ff
    jp z, Jump_01d_4f3a

    ld a, $f0
    ld [$cd6b], a

Call_01d_5063:
    ld a, $0a
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d799
    set 1, [hl]
    ld bc, $ee01
    call Call_000_3e3f
    jr nc, jr_01d_5085

    ld a, $0b
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d799
    set 0, [hl]
    jr jr_01d_508c

jr_01d_5085:
    ld a, $0c
    ldh [$8c], a
    call Call_000_2817

jr_01d_508c:
    ld hl, $d355
    set 6, [hl]
    ld hl, $d729
    set 6, [hl]
    ld a, [$d799]
    or $fc
    ld [$d799], a
    ld hl, $d79a
    set 0, [hl]
    ld hl, $d125
    set 5, [hl]
    jp Jump_01d_4f3a


    db $eb
    ld d, b
    ld b, l
    ld d, c
    ld a, d
    ld d, c
    ret nz

    ld d, c
    ld b, $52
    ld c, h
    ld d, d
    sub d
    ld d, d
    ret c

    ld d, d
    ld e, $53
    ld sp, $3651
    ld d, c
    ld b, b
    ld d, c

Jump_01d_50c3:
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld a, [$cf13]
    cp $01
    jr z, jr_01d_50e0

    ld a, $02
    jr jr_01d_50e2

jr_01d_50e0:
    ld a, $03

jr_01d_50e2:
    ld [$d65d], a
    ld [$da38], a
    jp Jump_000_23d2


    ld [$99fa], sp
    rst $10
    bit 1, a
    jr z, jr_01d_5109

    bit 0, a
    jr nz, jr_01d_5100

    call z, Call_01d_5063
    call Call_000_2fde
    jp Jump_000_23d2


jr_01d_5100:
    ld hl, $512c
    call Call_000_3c36
    jp Jump_000_23d2


jr_01d_5109:
    ld hl, $5120
    call Call_000_3c36
    ld hl, $5125
    ld de, $5125
    call Call_000_32f0
    ld a, $07
    ld [$d05b], a
    jp Jump_01d_50c3


    rla
    jr z, jr_01d_5179

    inc l
    ld d, b
    rla
    xor e
    ld d, [hl]
    inc l
    ld de, $500d
    rla
    pop hl
    ld d, [hl]
    inc l
    ld d, b
    rla
    ld a, [hl+]
    ld d, a
    inc l
    ld d, b
    rla
    adc h
    ld d, a
    inc l
    dec bc
    rla
    and b
    ld d, a
    inc l
    ld d, b
    rla
    ld [bc], a
    ld e, b
    inc l
    ld d, b
    ld [$48cd], sp
    ld c, a
    ld a, [$d799]
    bit 2, a
    jr nz, jr_01d_5162

    ld hl, $516b
    call Call_000_3c36
    ld hl, $5170
    ld de, $5170
    call Call_000_32f0
    jp Jump_01d_50c3


jr_01d_5162:
    ld hl, $5175
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld a, [de]
    ld e, b
    inc l
    ld d, b
    rla
    ld c, c
    ld e, b
    inc l
    ld d, b
    rla
    ld e, [hl]
    ld e, b
    inc l

jr_01d_5179:
    ld d, b
    ld [$48cd], sp
    ld c, a
    ld a, [$d799]
    bit 3, a
    jr nz, jr_01d_51a8

    call Call_01d_53f3
    jr nz, jr_01d_5196

    ld a, [$d79b]
    bit 1, a
    jr nz, jr_01d_5196

    ld e, $00
    jp $53de


jr_01d_5196:
    ld hl, $51b1
    call Call_000_3c36
    ld hl, $51b6
    ld de, $51b6
    call Call_000_32f0
    jp Jump_01d_50c3


jr_01d_51a8:
    ld hl, $51bb
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    and h
    ld e, b
    inc l
    ld d, b
    rla
    ret c

    ld e, b
    inc l
    ld d, b
    rla
    and $58
    inc l
    ld d, b
    ld [$48cd], sp
    ld c, a
    ld a, [$d799]
    bit 4, a
    jr nz, jr_01d_51ee

    call Call_01d_53f3
    jr nz, jr_01d_51dc

    ld a, [$d79b]
    bit 2, a
    jr nz, jr_01d_51dc

    ld e, $01
    jp $53de


jr_01d_51dc:
    ld hl, $51f7
    call Call_000_3c36
    ld hl, $51fc
    ld de, $51fc
    call Call_000_32f0
    jp Jump_01d_50c3


jr_01d_51ee:
    ld hl, $5201
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    db $10
    ld e, c
    inc l
    ld d, b
    rla
    inc a
    ld e, c
    inc l
    ld d, b
    rla
    ld c, a
    ld e, c
    inc l
    ld d, b
    ld [$48cd], sp
    ld c, a
    ld a, [$d799]
    bit 5, a
    jr nz, jr_01d_5234

    call Call_01d_53f3
    jr nz, jr_01d_5222

    ld a, [$d79b]
    bit 3, a
    jr nz, jr_01d_5222

    ld e, $02
    jp $53de


jr_01d_5222:
    ld hl, $523d
    call Call_000_3c36
    ld hl, $5242
    ld de, $5242
    call Call_000_32f0
    jp Jump_01d_50c3


jr_01d_5234:
    ld hl, $5247
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld a, c
    ld e, c
    inc l
    ld d, b
    rla
    sub a
    ld e, c
    inc l
    ld d, b
    rla
    xor e
    ld e, c
    inc l
    ld d, b
    ld [$48cd], sp
    ld c, a
    ld a, [$d799]
    bit 6, a
    jr nz, jr_01d_527a

    call Call_01d_53f3
    jr nz, jr_01d_5268

    ld a, [$d79b]
    bit 4, a
    jr nz, jr_01d_5268

    ld e, $03
    jp $53de


jr_01d_5268:
    ld hl, $5283
    call Call_000_3c36
    ld hl, $5288
    ld de, $5288
    call Call_000_32f0
    jp Jump_01d_50c3


jr_01d_527a:
    ld hl, $528d
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ret c

    ld e, c
    inc l
    ld d, b
    rla
    db $fd
    ld e, c
    inc l
    ld d, b
    rla
    ld [bc], a
    ld e, d
    inc l
    ld d, b
    ld [$48cd], sp
    ld c, a
    ld a, [$d799]
    bit 7, a
    jr nz, jr_01d_52c0

    call Call_01d_53f3
    jr nz, jr_01d_52ae

    ld a, [$d79b]
    bit 5, a
    jr nz, jr_01d_52ae

    ld e, $04
    jp $53de


jr_01d_52ae:
    ld hl, $52c9
    call Call_000_3c36
    ld hl, $52ce
    ld de, $52ce
    call Call_000_32f0
    jp Jump_01d_50c3


jr_01d_52c0:
    ld hl, $52d3
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld [hl], h
    ld e, d
    inc l
    ld d, b
    rla
    and l
    ld e, d
    inc l
    ld d, b
    rla
    or [hl]
    ld e, d
    inc l
    ld d, b
    ld [$48cd], sp
    ld c, a
    ld a, [$d79a]
    bit 0, a
    jr nz, jr_01d_5306

    call Call_01d_53f3
    jr nz, jr_01d_52f4

    ld a, [$d79b]
    bit 6, a
    jr nz, jr_01d_52f4

    ld e, $05
    jp $53de


jr_01d_52f4:
    ld hl, $530f
    call Call_000_3c36
    ld hl, $5314
    ld de, $5314
    call Call_000_32f0
    jp Jump_01d_50c3


jr_01d_5306:
    ld hl, $5319
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    db $e4
    ld e, d
    inc l
    ld d, b
    rla
    rst $38
    ld e, d
    inc l
    ld d, b
    rla
    ld de, $2c5b
    ld d, b
    ld [$3321], sp
    ld h, c
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    ld l, $02
    ld de, $0110
    rst $38
    ld de, $0111
    rst $38
    nop
    add hl, bc
    dec hl
    rlca
    rlca
    rst $38
    ret nc

    ld b, c
    rst $28
    ld bc, $060c
    dec d
    rst $38
    ret nc

    ld b, d
    ret nc

    add hl, bc
    inc c
    inc c
    dec d
    rst $38
    ret nc

    ld b, e
    db $d3
    inc b
    inc c
    ld [$ff0f], sp
    ret nc

    ld b, h
    ret nc

    ld a, [bc]
    inc c
    inc c
    rrca
    rst $38
    ret nc

    ld b, l
    db $d3
    dec b
    inc c
    ld [de], a
    rrca
    rst $38
    ret nc

    ld b, [hl]
    ret nc

    dec bc
    inc c
    ld [de], a
    rlca
    rst $38
    ret nc

    ld b, a
    db $d3
    ld b, $0c
    inc c
    rlca
    rst $38
    ret nc

    ld c, b
    ret nc

    inc c
    inc h
    ld de, $ff14
    ret nc

    add hl, bc
    add c
    rst $00
    ld de, $8110
    rst $00
    ld de, $4011
    ld h, c
    ld h, c
    ld b, b
    ld b, b
    ld h, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld e, c
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld l, e
    ld h, e
    ld c, $44
    ld l, e
    ld h, e
    ld c, $6b
    ld h, e
    ld c, $44
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld b, h
    ld c, $0e
    ld d, b
    ld e, b
    ld c, $6b
    ld h, e
    ld c, $44
    ld l, e
    ld h, e
    ld c, $44
    ld b, l
    ld c, $44
    ld c, $0e
    ld c, b
    ld d, l
    ld c, $0e
    ld b, h
    ld c, $0e
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, h
    inc l
    ld c, $21
    ld d, b
    ld h, c
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


Call_01d_53e9:
    push hl
    ld hl, $d474
    bit 7, [hl]
    res 7, [hl]
    pop hl
    ret


Call_01d_53f3:
    push hl
    ld hl, $d474
    bit 7, [hl]
    pop hl
    ret


    inc d
    inc b
    add hl, bc
    ld l, h
    ld d, h
    dec bc
    ld d, h
    rlca
    ld d, h
    nop
    ld l, $54
    call Call_000_3c29
    ret


    dec d
    ld d, h
    ld a, [de]
    ld d, h
    rra
    ld d, h
    inc h
    ld d, h
    add hl, hl
    ld d, h
    rla
    nop
    ld e, l
    inc l
    ld d, b
    rla
    ld d, d
    ld e, l
    inc l
    ld d, b
    rla
    ld a, c
    ld e, l
    inc l
    ld d, b
    rla
    sub b
    ld e, l
    inc l
    ld d, b
    rla
    and a
    ld e, l
    inc l
    ld d, b
    rla
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc
    ld [bc], a
    rst $38
    inc b
    ld [$a800], sp
    inc b
    inc c
    nop
    xor c
    inc b
    stop
    xor d
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    add hl, bc
    inc bc
    inc b
    dec c
    inc b
    inc b
    ld de, $0105
    daa
    rlca
    dec b
    rst $38
    rst $38
    ld bc, $c726
    rlca
    ld [bc], a
    ld h, $c7
    rlca
    inc bc
    ld a, [de]
    rst $00
    inc b
    ld [$c71c], sp
    inc b
    inc c
    ld e, $c7
    inc b
    db $10
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    add hl, bc
    inc bc
    ld a, [bc]
    rla
    rla
    rla
    rla
    rla
    rla
    rlca
    rlca
    rlca
    add hl, de
    jr @+$03

    jr @+$03

    jr jr_01d_548f

    inc c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_01d_548f:
    rlca
    inc d
    inc b
    inc b
    and $54
    sbc a
    ld d, h
    sbc h
    ld d, h
    nop
    ret nz

    ld d, h
    jp Jump_000_3c29


    and l
    ld d, h
    xor d
    ld d, h
    or d
    ld d, h
    rla
    cp [hl]
    ld e, l
    inc l
    ld d, b
    ld [$073e], sp
    ld [$cd3d], a
    jr jr_01d_54b8

    ld [$083e], sp
    ld [$cd3d], a

jr_01d_54b8:
    ld a, $54
    call Call_000_3eb4
    jp Jump_000_23d2


    rla
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    and a
    rlca
    inc bc
    ld [bc], a
    and a
    nop
    inc bc
    inc c
    ld b, $07
    rst $38
    ret nc

    ld bc, $0825
    dec b
    rst $38
    rst $38
    ld [bc], a
    rrca
    add hl, bc
    add hl, bc
    rst $38
    pop de
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    add hl, bc
    inc bc
    ld bc, $070a
    db $10
    ld de, $0707
    inc d
    dec d
    rlca
    dec c
    inc c
    rlca
    ld c, $14
    inc b
    inc b
    sub b
    ld d, l
    dec b
    ld d, l
    ld [bc], a
    ld d, l
    nop
    ld h, a
    ld d, l
    jp Jump_000_3c29


    rrca
    ld d, l
    ld e, b
    ld d, l
    ld e, l
    ld d, l
    ld e, l
    ld d, l
    ld h, d
    ld d, l
    ld [$a0fa], sp
    rst $10
    bit 7, a
    jr nz, jr_01d_553a

    ld hl, $5543
    call Call_000_3c36
    ld bc, $eb01
    call Call_000_3e3f
    jr nc, jr_01d_5532

    ld hl, $5548
    call Call_000_3c36
    ld hl, $d7a0
    set 7, [hl]
    jr jr_01d_5540

jr_01d_5532:
    ld hl, $5553
    call Call_000_3c36
    jr jr_01d_5540

jr_01d_553a:
    ld hl, $554e
    call Call_000_3c36

jr_01d_5540:
    jp Jump_000_23d2


    rla
    ld [de], a
    ld e, [hl]
    inc l
    ld d, b
    rla
    ld d, c
    ld e, [hl]
    inc l
    dec bc
    ld d, b
    rla
    ld h, [hl]
    ld e, [hl]
    inc l
    ld d, b
    rla
    ret nc

    ld e, [hl]
    inc l
    ld d, b
    rla
    db $ec
    ld e, [hl]
    inc l
    ld d, b
    rla
    add hl, de
    ld e, a
    inc l
    ld d, b
    rla
    pop hl
    ld e, a
    inc l
    ld d, b
    rla
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    and a
    rlca
    inc bc
    inc bc
    and a
    inc bc
    inc b
    nop
    inc bc
    inc b
    ld bc, HeaderLogo
    ld [bc], a
    dec b
    ld [bc], a
    jr nz, jr_01d_5584

    dec bc
    rst $38
    ret nc

    ld bc, $0720

jr_01d_5584:
    ld b, $fe
    ld [bc], a
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    ld [$0707], sp
    ld b, $07
    inc c
    rlca
    rlca
    inc d
    inc b
    inc b
    adc e
    ld d, [hl]
    xor a
    ld d, l
    xor h
    ld d, l
    nop
    ld l, e
    ld d, [hl]
    jp Jump_000_3c29


    rst $20
    ld d, l
    ld d, l
    ld d, [hl]

Call_01d_55b3:
    xor a
    ld [$cd37], a
    ld de, $cc5b
    ld hl, $55e3

jr_01d_55bd:
    ld a, [hl+]
    and a
    jr z, jr_01d_55df

    push hl
    push de
    ld [$d11d], a
    ld b, a
    ld a, $1c
    call Call_000_3eb4
    pop de
    pop hl
    ld a, b
    and a
    jr z, jr_01d_55bd

    ld a, [$d11d]
    ld [de], a
    inc de
    push hl
    ld hl, $cd37
    inc [hl]
    pop hl
    jr jr_01d_55bd

jr_01d_55df:
    ld a, $ff
    ld [de], a
    ret


    add hl, hl
    ld a, [hl+]
    rra
    nop
    ld [$a2fa], sp
    rst $10
    bit 0, a
    jr nz, jr_01d_5611

    ld hl, $5641
    call Call_000_3c36
    call Call_01d_55b3
    ld a, [$cd37]
    and a
    jr z, jr_01d_5608

    ld b, $18
    ld hl, $4ff2
    call Call_000_3e84
    jr jr_01d_560e

jr_01d_5608:
    ld hl, $5646
    call Call_000_3c36

jr_01d_560e:
    jp Jump_000_23d2


jr_01d_5611:
    bit 1, a
    jr z, jr_01d_561d

    ld hl, $564b
    call Call_000_3c36
    jr jr_01d_560e

jr_01d_561d:
    call Call_01d_5663
    ld hl, $5650
    call Call_000_3c36
    ld hl, $d7a2
    set 2, [hl]
    ld a, [$d70f]
    ld b, a
    ld c, $1e
    call Call_000_3e59
    jr nc, jr_01d_560e

    ld hl, $d7a2
    res 0, [hl]
    res 1, [hl]
    res 2, [hl]
    jr jr_01d_560e

    rla
    pop af
    ld e, a
    inc l
    ld d, b
    rla
    ld c, [hl]
    ld h, b
    inc l
    ld d, b
    rla
    ld e, a
    ld h, b
    inc l
    ld d, b
    rla
    sub [hl]
    ld h, b
    inc l
    ld d, b
    ld [$033e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3eb4
    jp Jump_000_23d2


Call_01d_5663:
    ld b, $18
    ld hl, $50d7
    jp Jump_000_3e84


    rla
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    and a
    rlca
    inc bc
    inc b
    and a
    nop
    ld [bc], a
    jr nz, jr_01d_567f

    add hl, bc
    cp $02
    ld bc, $0a20

jr_01d_567f:
    dec bc
    rst $38
    pop de
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [de], a
    inc de
    ld d, $02
    dec bc
    dec bc
    rlca
    rlca
    ld [$0708], sp
    rrca
    rlca
    inc c
    rlca
    rlca
    ld b, $04
    rlca
    jr nc, jr_01d_56e0

    xor l
    ld d, [hl]
    and a
    ld d, [hl]
    nop
    rst $08
    ld d, [hl]
    call Call_000_2156
    jp Jump_000_3c29


    or a
    ld d, [hl]
    cp b
    ld d, [hl]
    cp l
    ld d, [hl]
    jp nz, $c356

    ld d, [hl]
    rst $38
    rla
    rst $20
    ld h, c
    inc l
    ld d, b
    rla
    ld b, a
    ld h, d
    inc l
    ld d, b
    or $08
    ld hl, $4f12
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    nop
    ld [bc], a
    rlca
    inc bc
    inc bc
    rst $38
    rlca
    inc b
    inc bc
    rst $38
    nop
    dec b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

jr_01d_56e0:
    ld bc, $0806
    dec c
    cp $00
    ld [bc], a
    db $10
    ld a, [bc]
    ld b, $ff
    rst $38
    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld b, h
    dec b
    ld [$d0ff], sp
    dec b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld [bc], a
    inc b
    inc b
    db $10
    ld b, b
    db $10
    ld d, a
    dec c
    ld d, a
    nop
    jr nz, jr_01d_5764

    jp Jump_000_3c29


    or h
    inc hl
    ld d, $57
    dec de
    ld d, a
    rla
    and h
    ld h, d
    inc l
    ld d, b
    rla
    call nc, $2c62
    ld d, b
    nop
    ld [bc], a
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $061b
    ld a, [bc]
    rst $38
    rst $38
    ld [bc], a
    jr nz, jr_01d_5742

    rlca
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc

jr_01d_5742:
    inc de
    rst $00
    rlca
    inc b
    ld bc, $0404
    nop
    ld b, b
    ld d, l
    ld d, a
    ld d, d
    ld d, a
    nop
    ld [hl], d
    ld d, a
    jp Jump_000_3c29


    ld e, e
    ld d, a
    ld h, b
    ld d, a
    ld h, l
    ld d, a
    rla
    nop
    ld h, h
    inc l
    ld d, b
    rla
    ld a, $64
    inc l

jr_01d_5764:
    ld d, b
    rla
    sbc a
    ld h, h
    inc l
    ld [$283e], sp
    call Call_000_118b
    jp Jump_000_23d2


    ld a, [bc]
    inc bc
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    ld bc, $0007
    or b
    nop
    inc bc
    inc e
    ld b, $06
    rst $38
    ret nc

    ld bc, $080a
    add hl, bc
    rst $38
    jp nc, $4402

    ld [$ff05], sp
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    or $c6
    ld bc, $0707
    inc b
    inc b
    rst $18
    ld e, c
    ld d, [hl]
    ld e, c
    xor h
    ld d, a
    nop
    xor a
    ld e, c
    call Call_000_3c29
    ld hl, $57c1
    ld a, [$d64b]
    call Call_000_3d93
    ret


Jump_01d_57b9:
    xor a
    ld [$cd6b], a
    ld [$d64b], a
    ret


    rst $10
    ld d, a
    ret c

    ld d, a
    ld a, [$3b57]
    ld e, b
    ld h, h
    ld e, b
    sbc d
    ld e, b
    rst $00
    ld e, b
    rst $18
    ld e, b
    inc bc
    ld e, c
    add hl, de
    ld e, c
    add hl, sp
    ld e, c
    ret


    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $57f3
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld a, $02
    ld [$d64b], a
    ret


    ld b, b
    ld bc, $0110
    ld b, b
    inc bc
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld hl, $d354
    res 7, [hl]
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    call Call_000_3ddb
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $5979
    ld de, $597e
    call Call_000_32f0
    ld a, $f3
    ld [$d058], a
    ld a, [$d714]
    add $00
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d64b], a
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_01d_57b9

    call Call_000_231c
    ld hl, $d866
    set 1, [hl]
    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_01d_5948
    ld a, $01
    ldh [$8c], a
    call Call_000_353e
    ld a, $04
    ld [$d64b], a
    ret


    ld b, $02
    ld hl, $59f4
    call Call_000_3e84
    ld a, $02
    ldh [$8c], a
    call Call_01d_5948
    ld a, $02
    ldh [$8c], a
    call Call_000_353e
    ld de, $5894
    ld a, $02
    ldh [$8c], a
    call Call_000_363d
    ld a, $de
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, $05
    ld [$d64b], a
    ret


    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $02
    ld [$d527], a
    ld a, $01
    ldh [$8c], a
    ld a, $08
    ldh [$8d], a
    call Call_000_3488
    ld a, $02
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_3488
    ld a, $03
    ldh [$8c], a
    call Call_01d_5948
    ld a, $06
    ld [$d64b], a
    ret


    ld a, $02
    ldh [$8c], a
    ld a, $0c
    ldh [$8d], a
    call Call_000_3488
    ld a, $04
    ldh [$8c], a
    call Call_01d_5948
    ld a, $07
    ld [$d64b], a
    ret


    ld a, $02
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_3488
    ld a, $05
    ldh [$8c], a
    call Call_01d_5948
    ld de, $5900
    ld a, $02
    ldh [$8c], a
    call Call_000_363d
    ld a, $08
    ld [$d64b], a
    ret


    ld b, b
    ld b, b
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $de
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $09
    ld [$d64b], a
    ret


    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $5934
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld a, $0a
    ld [$d64b], a
    ret


    ld b, b
    inc b
    jr nz, jr_01d_5939

    rst $38

jr_01d_5939:
    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d64b], a
    ret


Call_01d_5948:
    ld a, $f0
    ld [$cd6b], a
    call Call_000_2817
    ld a, $ff
    ld [$cd6b], a
    ret


    ld h, b
    ld e, c
    adc b
    ld e, c
    adc l
    ld e, c
    and l
    ld e, c
    xor d
    ld e, c
    ld [$66fa], sp
    ret c

    bit 1, a
    ld hl, $5974
    jr z, jr_01d_596e

    ld hl, $5983

jr_01d_596e:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    db $db
    ld d, c
    daa
    ld d, b
    rla
    dec [hl]
    ld d, e
    daa
    ld d, b
    rla
    xor [hl]
    ld d, e
    daa
    ld d, b
    rla
    add hl, hl
    ld d, h
    daa
    ld d, b
    rla
    cp e
    ld d, h
    daa
    ld d, b
    ld [$16fa], sp
    rst $10
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $59a0
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    call nz, Call_000_2754
    ld d, b
    rla
    ld e, l
    ld d, l
    daa
    ld d, b
    rla
    ld h, c
    ld d, [hl]
    daa
    ld d, b
    inc bc
    inc b
    rlca
    inc bc
    ld bc, $0771
    inc b
    ld [bc], a
    ld [hl], c
    nop
    inc bc
    nop
    halt
    inc b
    nop
    halt
    ld [bc], a
    ld [bc], a
    ld b, $08
    rst $38
    ret nc

    ld bc, $0b03
    rlca
    rst $38
    pop de
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld c, c
    ld sp, $4a32
    ld c, e
    dec b
    dec b
    ld c, h
    ld c, e
    dec b
    dec b
    ld c, h
    ld d, d
    ld sp, $6f32
    rlca
    ld b, $05
    inc l
    ld e, e
    pop de
    ld e, d
    ei
    ld e, c
    nop
    nop
    ld e, e
    call Call_01d_5a11
    call Call_000_3c29
    ld hl, $5ad5
    ld de, $5a3b
    ld a, [$d64c]
    call Call_000_30fc
    ld [$d64c], a
    ret


Call_01d_5a11:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $d733
    set 1, [hl]
    ld a, [$d862]
    bit 1, a
    jr z, jr_01d_5a29

    ld a, $05
    jr jr_01d_5a2b

jr_01d_5a29:
    ld a, $24

jr_01d_5a2b:
    ld [$d09e], a
    ld bc, $0002
    ld a, $17
    jp Jump_000_3eb4


Jump_01d_5a36:
    xor a
    ld [$d64c], a
    ret


    ld h, d
    ld e, d
    add sp, $31
    cp a
    ld e, d
    xor h
    ld e, d
    ld b, l
    ld e, d
    ret


jr_01d_5a46:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a
    call Call_000_3415
    ld a, $03
    ld [$d64c], a
    ld [$da38], a
    ret


    ld hl, $5aa3
    call Call_000_34bc
    jp nc, Jump_000_31b5

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_5a86

    ld hl, $d862
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_5a46

jr_01d_5a86:
    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3415
    ld a, $03
    ld [$d64c], a
    ld [$da38], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld [$d64c], a
    ld [$da38], a
    ret


    call Call_000_3211
    ld a, [$d056]
    cp $ff
    jp z, Jump_01d_5a36

    ld a, $01
    ldh [$8c], a
    jp Jump_000_2817


    ld [c], a
    ld e, d
    ei
    ld e, d
    ld bc, $6200
    ret c

    db $ec
    ld e, d
    or $5a
    pop af
    ld e, d
    pop af
    ld e, d
    rst $38
    ld [$d521], sp
    ld e, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    jp hl


    ld d, [hl]
    daa
    ld d, b
    rla
    cp [hl]
    ld d, a
    daa
    ld d, b
    rla
    call $2757
    ld d, b
    rla
    inc hl
    ld e, b
    daa
    ld d, b
    inc bc
    inc b
    dec bc
    inc b
    ld [bc], a
    xor [hl]
    dec bc
    dec b
    ld [bc], a
    xor [hl]
    nop
    inc b
    nop
    or $00
    dec b
    ld bc, $00f6
    ld bc, $063b
    add hl, bc
    rst $38
    ret nc

    ld b, c
    db $f4
    ld bc, $c72d
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld hl, $2421
    ld hl, $0221
    jr @+$1a

    jr @+$04

    ld [bc], a
    jr jr_01d_5b51

    jr @+$04

    ld [bc], a
    jr nz, jr_01d_5b43

    jr nz, jr_01d_5b42

    ld [bc], a
    ld a, [de]

jr_01d_5b42:
    dec b

jr_01d_5b43:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, h
    dec b
    ld b, h
    ld [bc], a
    rlca
    ld b, $05
    add e
    ld e, h
    jr z, jr_01d_5bad

jr_01d_5b51:
    ld d, [hl]
    ld e, e
    nop
    ld d, a
    ld e, h
    call Call_01d_5b6c
    call Call_000_3c29
    ld hl, $5c2c
    ld de, $5b92
    ld a, [$d64d]
    call Call_000_30fc
    ld [$d64d], a
    ret


Call_01d_5b6c:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d863]
    bit 1, a
    jr z, jr_01d_5b80

    ld a, $05
    jp Jump_01d_5b82


jr_01d_5b80:
    ld a, $24

Jump_01d_5b82:
    ld [$d09e], a
    ld bc, $0002
    ld a, $17
    jp Jump_000_3eb4


Jump_01d_5b8d:
    xor a
    ld [$d64d], a
    ret


    cp c
    ld e, e
    add sp, $31
    ld d, $5c
    inc bc
    ld e, h
    sbc h
    ld e, e
    ret


jr_01d_5b9d:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a

jr_01d_5bad:
    call Call_000_3415
    ld a, $03
    ld [$d64d], a
    ld [$da38], a
    ret


    ld hl, $5bfa
    call Call_000_34bc
    jp nc, Jump_000_31b5

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_5bdd

    ld hl, $d863
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_5b9d

jr_01d_5bdd:
    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3415
    ld a, $03
    ld [$d64d], a
    ld [$da38], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld [$d64d], a
    ld [$da38], a
    ret


    call Call_000_3211
    ld a, [$d056]
    cp $ff
    jp z, Jump_01d_5b8d

    ld a, $01
    ldh [$8c], a
    jp Jump_000_2817


    add hl, sp
    ld e, h
    ld d, d
    ld e, h
    ld bc, $6300
    ret c

    ld b, e
    ld e, h
    ld c, l
    ld e, h
    ld c, b
    ld e, h
    ld c, b
    ld e, h
    rst $38
    ld [$2c21], sp
    ld e, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld b, e
    ld e, b
    daa
    ld d, b
    rla
    rst $38
    ld e, b
    daa
    ld d, b
    rla
    rla
    ld e, c
    daa
    ld d, b
    rla
    ld b, l
    ld e, c
    daa
    ld d, b
    inc bc
    inc b
    dec bc
    inc b
    ld [bc], a
    push af
    dec bc
    dec b
    inc bc
    push af
    nop
    inc b
    nop
    rst $30
    nop
    dec b
    ld bc, $00f7
    ld bc, $063a
    add hl, bc
    rst $38
    ret nc

    ld b, c
    jp hl


    ld bc, $c72d
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld bc, $0501
    ld bc, $0801
    dec b
    dec b
    dec b
    ld a, [bc]
    inc c
    ld [de], a
    dec b
    inc de
    dec c
    inc c
    ld a, [bc]
    dec b
    dec bc
    inc c
    ld [$0507], sp
    inc c
    ld [$110d], sp
    dec b
    ld a, [bc]
    dec c
    rrca
    ld b, $05
    ldh [$5d], a
    add l
    ld e, l
    xor l
    ld e, h
    nop
    or h
    ld e, l
    call Call_01d_5cc3
    call Call_000_3c29
    ld hl, $5d89
    ld de, $5ce9
    ld a, [$d64e]
    call Call_000_30fc
    ld [$d64e], a
    ret


Call_01d_5cc3:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d864]
    bit 1, a
    jr z, jr_01d_5cd7

    ld a, $0e
    jp Jump_01d_5cd9


jr_01d_5cd7:
    ld a, $3b

Jump_01d_5cd9:
    ld [$d09e], a
    ld bc, $0002
    ld a, $17
    jp Jump_000_3eb4


Jump_01d_5ce4:
    xor a
    ld [$d64e], a
    ret


    db $10
    ld e, l
    add sp, $31
    ld l, l
    ld e, l
    ld e, d
    ld e, l
    di
    ld e, h
    ret


jr_01d_5cf4:
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $06
    ld [$cd38], a
    call Call_000_3415
    ld a, $03
    ld [$d64e], a
    ld [$da38], a
    ret


    ld hl, $5d51
    call Call_000_34bc
    jp nc, Jump_000_31b5

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld [$ccd3], a
    ld [$cd38], a
    ld a, [$cd3d]
    cp $03
    jr c, jr_01d_5d34

    ld hl, $d864
    bit 6, [hl]
    set 6, [hl]
    jr z, jr_01d_5cf4

jr_01d_5d34:
    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    call Call_000_3415
    ld a, $03
    ld [$d64e], a
    ld [$da38], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    dec b
    dec bc
    inc b
    dec bc
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld [$d64e], a
    ld [$da38], a
    ret


    call Call_000_3211
    ld a, [$d056]
    cp $ff
    jp z, Jump_01d_5ce4

    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld a, $01
    ld [$d64b], a
    ret


    sub [hl]
    ld e, l
    xor a
    ld e, l
    ld bc, $6400
    ret c

    and b
    ld e, l
    xor d
    ld e, l
    and l
    ld e, l
    and l
    ld e, l
    rst $38
    ld [$8921], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld h, l
    ld e, c
    daa
    ld d, b
    rla
    ld l, d
    ld e, d
    daa
    ld d, b
    rla
    sub h
    ld e, d
    daa
    ld d, b
    rla
    ld sp, hl
    ld e, d
    daa
    ld d, b
    nop
    inc b
    dec bc
    inc b
    ld [bc], a
    or $0b
    dec b
    inc bc
    or $00
    inc b
    nop
    ld [hl], c
    nop
    dec b
    nop
    ld [hl], c
    nop
    ld bc, $0639
    add hl, bc
    rst $38
    ret nc

    ld b, c
    or $01
    dec l
    rst $00
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    ld b, a
    ld b, a
    ld [hl], $47
    ld b, a
    ld h, a
    ld [hl], $36
    ld c, [hl]
    ld h, l
    ld d, d
    ld c, [hl]
    ld [hl], $65
    ld d, d
    ld h, l
    ld h, a
    ld [hl], $65
    ld h, l
    ld d, d
    ld c, e
    ld [hl], $65
    ld d, d
    ld h, a
    ld d, d
    ld [hl], $68
    ld l, b
    ld hl, $5f02
    call Call_000_3c36
    ld hl, $d72f
    set 6, [hl]
    push hl
    ld a, [$cfca]
    push af
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ld [$d0a9], a
    ld [$cfca], a
    ld [$cd41], a
    ld [$cd42], a
    ld a, [$d5a1]
    ld b, a
    cp $33
    jr c, jr_01d_5e2e

    ld b, $32
    sub b
    ld [$cd42], a

jr_01d_5e2e:
    ld hl, $cd42
    inc [hl]
    push bc
    ld a, [$cd41]
    ld [$cd3d], a
    ld b, $1c
    ld hl, $7e60
    call Call_000_3e84
    call Call_01d_5e65
    pop bc
    jr c, jr_01d_5e4f

    ld hl, $cd41
    inc [hl]
    ld a, [hl]
    cp b
    jr nz, jr_01d_5e2e

jr_01d_5e4f:
    pop af
    ldh [$d7], a
    pop af
    ld [$cfca], a
    pop hl
    res 6, [hl]
    call Call_000_3dd8
    call Call_000_16dd
    call Call_000_3e03
    jp Jump_000_3de0


Call_01d_5e65:
    ld c, $06

jr_01d_5e67:
    push bc
    call Call_01d_5e90
    call Call_000_3852
    ldh a, [$b4]
    bit 1, a
    jr nz, jr_01d_5e8d

    ld hl, $cc6b
    ld de, $cc5b
    ld bc, $0050
    call Call_000_00b1
    pop bc
    ld a, [$cc5b]
    cp $ff
    jr z, jr_01d_5e8b

    dec c
    jr nz, jr_01d_5e67

jr_01d_5e8b:
    and a
    ret


jr_01d_5e8d:
    pop bc
    scf
    ret


Call_01d_5e90:
    call Call_000_3dd8
    call Call_000_16dd
    ld hl, $cc5b
    ld a, [hl+]
    ld [$cd3d], a
    ld [$cf90], a
    ld [$d0b4], a
    ld [$cfd8], a
    ld [$cf1c], a
    ld a, [hl+]
    ld [$cd3f], a
    ld de, $cd6d
    ld bc, $000b
    call Call_000_00b1
    ld b, $0b
    ld c, $00
    call Call_000_3e05
    ld hl, $c410
    call Call_000_132f
    call Call_000_1149
    call Call_000_3de0
    ld hl, $c4a4
    ld bc, $0212
    call Call_000_16f0
    ld hl, $c4cd
    ld de, $5eef
    call Call_000_1723
    ld hl, $c4dc
    ld de, $cd42
    ld bc, $0103
    call Call_000_3c5b
    ld b, $1c
    ld hl, $433f
    jp Jump_000_3e84


    add a
    add b
    adc e
    adc e
    ld a, a
    adc [hl]
    add l
    ld a, a
    add l
    add b
    adc h
    add h
    ld a, a
    adc l
    xor [hl]
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    rla
    ld h, d
    ld b, h
    jr z, jr_01d_5f57

    ld de, $ffe0
    call Call_01d_5f52
    ld de, $0240
    call Call_01d_5f52
    call Call_000_3ddb
    call Call_000_2233
    ldh a, [$af]
    ld d, a
    ld e, $01
    ld b, $64

jr_01d_5f20:
    ld a, e
    xor $fe
    ld e, a
    add d
    ldh [$af], a
    push bc
    ld c, $02
    ld a, $b4
    call Call_000_2211
    pop bc
    ld c, $02
    call Call_000_372f
    dec b
    jr nz, jr_01d_5f20

    ld a, d
    ldh [$af], a
    call Call_000_2233
    ld c, $02
    ld a, $b9
    call Call_000_2211

jr_01d_5f45:
    ld a, [$c02a]
    cp $b9
    jr z, jr_01d_5f45

    call Call_000_231c
    jp Jump_000_216b


Call_01d_5f52:
    ld hl, $d526
    ld a, [hl-]
    push af

jr_01d_5f57:
    ld a, [hl]
    push af
    push hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, h
    and $03
    or $98
    ld d, a
    ld a, l
    pop hl
    ld [hl+], a
    ld [hl], d
    call Call_000_0b95
    pop hl
    pop af
    ld [hl+], a
    pop af
    ld [hl], a
    jp Jump_000_3ddb


    ld hl, $5faa
    call Call_01d_6153
    ld [$cd41], a
    ld hl, $d6ef
    ld a, [$cd41]
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    jr nz, jr_01d_5fa5

    call Call_000_3c29
    ld a, $01
    ld [$cc3c], a
    ld a, [$cd3d]
    ld [$d11d], a
    call Call_000_2ec4
    ld a, $26
    jp Jump_000_3f3a


jr_01d_5fa5:
    ld a, $ff
    ldh [$eb], a
    ret


    jp nc, Jump_000_0c03

    jp hl


    rrca
    ld [bc], a
    rst $10
    add hl, bc
    ld bc, $09d8
    ld bc, $05db
    ld b, $e2
    dec c
    db $10
    db $e3
    ld c, $08
    ld l, a
    dec bc
    ld c, $a0
    rrca
    rrca
    and c
    db $10
    add hl, bc
    and d
    ld de, $3319
    ld [de], a
    ld bc, $2a33
    db $10
    dec a
    inc c
    ld [de], a
    dec a
    add hl, bc
    ld hl, $0168
    inc bc
    ld h, h
    add hl, bc
    dec c
    ld [hl], a
    inc b
    inc bc
    ld [hl], a
    ld [hl+], a
    inc b
    ld a, c
    ld [bc], a
    inc c

jr_01d_5fe6:
    ld a, c
    dec b
    dec d
    rst $00
    rrca
    dec d
    ret


    ld de, $ca1b
    ld bc, $1519
    ld de, $1509
    dec [hl]
    db $10
    ld d, e
    db $10
    ld de, $0153
    inc c
    ld d, $05
    jr nc, @+$19

    ccf
    ld [bc], a
    jr @+$10

    ld bc, $0d18
    db $10
    inc e
    ld c, $0f
    inc e
    dec l
    ld [$481c], sp
    ld de, $5b1c
    inc b
    inc e
    ld a, c
    ld [$2c22], sp
    add hl, bc
    ld [hl+], a
    ld b, [hl]
    inc de
    ld [hl+], a
    ld e, d
    ld [$02c2], sp
    dec b
    jp nz, Jump_000_1a07

    inc h
    inc bc
    ld h, $24
    ld bc, $0f0a
    inc bc
    jr z, @+$16

    rlca
    ld c, $b0
    ld bc, $0101
    inc b
    ld c, $03
    ld [$e40f], sp
    rlca
    ld [de], a
    sub d
    inc c
    inc b
    dec b
    dec bc
    ld c, $06
    rrca
    jr nc, jr_01d_5fe6

    ld bc, $a50a
    db $10
    ld [$17ff], sp
    xor b
    ld [hl], e
    daa
    ld [$3dfa], sp
    call $0e47
    ld bc, $3fcd
    ld a, $30
    add hl, de
    ld hl, $d6ef
    ld a, [$cd41]
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3eb4
    ld a, $89
    call Call_000_3736
    call Call_000_373e
    jp Jump_000_23d2


    call Call_000_3852
    xor a
    ld [$cc3c], a
    ld hl, $6089
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    cp c
    ld [hl], e
    daa
    ld d, b
    ld b, $45
    ld a, $1c
    call Call_000_3eb4
    ld a, b
    and a
    jr z, jr_01d_60ce

    ld hl, $611e
    call Call_01d_6153
    ld [$cd41], a
    ld hl, $d6fd
    ld a, [$cd41]
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    jr nz, jr_01d_60ce

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ldh [$a1], a
    ld a, [$cd3d]
    sub $3b
    cp $0a
    jr z, jr_01d_60d3

    cp $14
    jr z, jr_01d_60d9

    cp $28
    jr z, jr_01d_60d9

    jr jr_01d_60e5

jr_01d_60ce:
    ld a, $ff
    ldh [$eb], a
    ret


jr_01d_60d3:
    ld a, $10
    ldh [$a1], a
    jr jr_01d_60e9

jr_01d_60d9:
    ld a, $20
    ldh [$a1], a
    jr jr_01d_60e9

    ld a, $40
    ldh [$a1], a
    jr jr_01d_60e9

jr_01d_60e5:
    ld a, $01
    ldh [$a0], a

jr_01d_60e9:
    ld de, $d5a4
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3eb4
    ld hl, $d6fd
    ld a, [$cd41]
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3eb4
    call Call_000_3c29
    ld a, [$d5a3]
    cp $99
    jr nz, jr_01d_6119

    ld a, [$d5a4]
    cp $99
    jr nz, jr_01d_6119

    ld a, $2e
    jr jr_01d_611b

jr_01d_6119:
    ld a, $2d

jr_01d_611b:
    jp Jump_000_3f3a


    add a
    ld [$8700], sp
    db $10
    ld bc, $0b87
    inc bc
    add a
    ld c, $03
    add a
    inc c
    inc b
    add a
    inc c
    add hl, bc
    add a
    rrca
    add hl, bc
    add a
    ld c, $10
    add a
    db $10
    ld a, [bc]
    add a
    rlca
    dec bc
    add a
    ld [$870f], sp
    rrca
    inc c
    rst $38
    rla
    db $e3
    ld [hl], e
    daa
    db $10
    ld d, b
    rla
    ei

Call_01d_614b:
    ld [hl], e
    daa
    db $10
    rla
    inc de
    ld [hl], h
    daa
    ld d, b

Call_01d_6153:
    ld a, [$cd40]
    ld d, a
    ld a, [$cd41]
    ld e, a
    ld a, [$d35d]
    ld b, a
    ld c, $ff

jr_01d_6161:
    inc c
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr nz, jr_01d_6173

    ld a, [hl+]
    cp d
    jr nz, jr_01d_6174

    ld a, [hl+]
    cp e
    jr nz, jr_01d_6161

    ld a, c
    ret


jr_01d_6173:
    inc hl

jr_01d_6174:
    inc hl
    jr jr_01d_6161

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
