; disasSembly of "yell.gbc"
SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    ld d, l
    cp [hl]
    dec e
    ld d, e
    sbc c
    ld d, d
    ld d, l
    ld d, b
    ld l, e
    jp nz, Jump_000_389d

    xor d
    db $eb
    xor d
    sbc [hl]
    and l
    inc e
    db $dd
    or c
    rst $28
    ld hl, sp+$18
    ld a, [hl+]
    ld a, [bc]
    ld h, [hl]
    ld [hl], $b0
    add e
    dec c
    ld b, e
    daa
    add hl, bc
    ld h, l
    inc hl
    call z, $46e0
    rla
    ld [$d252], a
    inc d
    pop de
    ld a, b
    xor c
    ret z

    call z, Call_00d_646a
    ret


    ld d, e
    dec b
    inc c
    ld l, b
    adc $8c
    and b
    adc h
    ld hl, $168f
    ld e, l
    and e
    ld h, h
    jp z, $8734

    daa
    dec h
    ld l, c
    db $e3
    add hl, hl
    ld a, [hl+]
    add hl, de
    and l
    add hl, bc
    ld d, $9a
    rla
    call z, $b0e2
    cp a
    ld a, [c]
    add hl, de
    ld c, b
    ld b, [hl]
    di
    ld c, c
    inc d
    ld e, c
    ld c, b
    ld d, a
    add c
    and b
    ld l, h
    ldh [$99], a
    adc c
    xor b
    db $18, $8d
    ld h, c
    db $d3
    add [hl]
    and l
    ld d, [hl]
    xor a
    xor l
    add hl, hl
    dec sp
    rst $20
    ld [hl], b
    ld e, b
    ldh a, [$ea]
    dec a
    dec c
    di
    add sp, $24
    and h
    jr nz, @-$3f

    ret


    add hl, bc
    jp $2121


    xor d
    add [hl]
    dec c
    ld e, a
    adc h
    ld l, a
    add hl, hl
    ld e, $a4
    ld hl, $3351
    sbc e
    ld [hl], d
    jp hl


    db $10
    ld c, b
    ld d, e
    ld sp, $87c9
    ld [bc], a
    sub l
    ld l, h
    sub e
    ld [de], a
    ld sp, hl
    and e
    ld a, [de]
    ld e, c
    add [hl]
    xor b
    and $69
    add hl, bc
    sbc h
    push bc
    call nc, Call_000_106b
    sbc [hl]
    dec de
    ld a, [hl]
    ld h, h
    db $e4
    dec h
    xor d
    add hl, bc
    sub h
    sub c
    ld c, h
    ld b, e
    ret c

    and c
    ld b, e
    ld [hl], l
    ld d, [hl]
    ld h, l
    ld c, b
    or d
    add d
    xor d
    ld b, h
    inc c
    sub a
    dec de
    ld e, c
    ld d, [hl]
    xor [hl]
    ld b, h
    inc c
    ld e, d
    ld l, [hl]
    pop hl
    and h
    dec h
    ld hl, $a7c5
    inc e
    cp a
    rrca
    ld sp, $184a
    rst $20
    inc c
    dec l
    ld d, h
    dec l
    sub c
    ld b, b
    sbc [hl]
    dec c
    ld c, d
    rst $00
    res 0, b
    ld b, h
    cp c
    dec de
    rst $38
    ld c, [hl]
    db $76
    ld a, [de]
    xor e
    adc $05
    ld d, [hl]
    dec b
    ld d, l
    ld [hl+], a
    ld [hl], $77
    rst $38
    adc e
    sub e
    add d
    jp c, $aa50

    sub l
    inc b
    pop hl
    and d
    ld a, [hl+]
    ld d, d
    ld h, e
    sub e
    ld c, e
    and h
    ld h, e
    adc d
    and h
    add $39
    ld d, l
    ld c, h
    inc de
    sbc c
    ld l, l
    ld d, l
    adc [hl]
    adc e
    ld a, a
    ret z

    ld b, c
    add hl, sp
    ld e, $ab
    add $e3
    sub c
    ld e, l
    ld a, [c]
    ld e, b
    push hl
    and b
    or l
    inc d
    xor $a3
    ret z

    sbc h
    xor d
    adc d
    ld [hl], h
    or h
    xor e
    ld l, c
    ret nz

    sub h
    cp a
    rst $38

jr_00d_4130:
    or c
    cp h
    dec e
    ld d, d
    and h
    sbc $72
    ld a, [hl]
    xor l
    ld e, d
    rst $00
    ld e, $17
    rst $38
    db $eb
    ld h, a
    ld [de], a
    jp $ff7f


    and a
    dec h
    ld de, $fc57
    ld [hl], c
    pop bc
    add d
    ld d, a
    rst $00
    inc l
    inc de
    sub e
    dec bc
    sbc h
    push af
    ld b, b
    rst $38
    sbc l
    rrca
    ld a, [hl]
    inc e
    ld [hl], h
    ld b, h
    rst $20
    ld a, l
    ld b, a
    jp $7780


    cp e
    dec d
    dec a
    scf
    ldh [$8f], a
    ld c, d
    add l
    ld c, h
    ld d, a
    push af
    inc a
    ld a, [hl-]
    ld b, e
    pop bc
    ld d, d
    add hl, de
    rrca
    ldh a, [$97]
    ld c, [hl]
    reti


    ld b, l
    ld a, [bc]
    sbc d
    pop de
    ld l, b
    jr z, jr_00d_418f

    add c
    dec [hl]
    ld b, l
    ld a, a
    adc d
    ld [hl], d
    ld de, $68a0
    ld l, h
    scf
    ld a, [de]
    or b
    di
    daa
    ld e, [hl]

jr_00d_418f:
    add l
    ld b, c
    dec h
    adc c
    ld e, d
    adc h
    ld [hl+], a
    xor e
    inc [hl]
    ld d, c
    ld b, l
    and b
    ld [hl], a
    ld b, l
    daa
    add d
    call nc, $85d5
    ld c, [hl]
    inc b
    ld e, b
    adc d
    ld c, h
    add hl, hl
    rla
    sub e
    jr jr_00d_4130

    call $98a4
    ld a, [hl+]
    ld l, l
    ld d, $92
    ld d, [hl]
    ld [hl+], a
    jr nc, jr_00d_4200

    and d
    jp hl


    add hl, hl

jr_00d_41ba:
    ld [$aa26], sp
    inc c
    add hl, hl
    rst $18
    dec b
    adc h
    add sp, -$7c
    cp d
    pop bc
    ld b, $41
    ld b, c
    ld d, b
    ld e, e
    ld [c], a
    ld h, c
    ld a, h
    adc b
    push hl
    add e
    jp nz, $864a

jr_00d_41d4:
    rst $20
    ld c, c
    add e
    adc d
    adc h
    ld d, c
    ld b, [hl]
    ld a, [hl+]
    ld e, $1c
    ld h, b
    ld h, d
    jr nc, jr_00d_41d4

    and h
    ld [hl+], a
    ld h, c
    ld a, l
    sub d
    ld h, e
    ld a, [hl+]

Jump_00d_41e9:
    pop de
    ret


    ld c, d
    ld a, [hl]
    ld a, [de]
    ld b, e
    ld b, l
    add l
    add d
    ld [c], a
    ld d, h
    ld [hl+], a
    sbc $f0
    ld h, c
    add [hl]
    ld a, [hl+]
    ld [hl+], a
    sub a
    and b
    ld c, b
    ld b, d
    sub h

jr_00d_4200:
    ld h, c
    ld l, b
    add l
    ld h, $0c
    dec [hl]
    dec b
    ld c, c
    ld e, a
    dec c
    dec h
    ld d, [hl]
    and d
    ld d, [hl]
    ld l, $aa
    ld hl, $a260
    ret nc

    xor b
    ld [hl], e
    inc d
    inc hl
    sbc d
    adc b
    ld e, e
    ld c, $17
    dec d
    rlca
    adc h
    ld d, h
    ld d, l
    ld d, e
    ld d, $46
    ld b, e
    ld c, e
    add d
    dec b
    ld d, b
    ld h, a
    add l
    dec hl
    ld [hl], h
    ld [de], a
    ld d, h
    and h
    adc b
    ld d, b
    ld d, d
    pop de
    ld h, c
    ld [hl], h
    jr nc, jr_00d_41ba

    db $f4
    sub a
    ld [hl-], a
    rst $38
    push de
    ld l, [hl]
    add d
    ld h, $08
    jr nz, jr_00d_428a

    ld a, [de]
    and d
    call nc, $6120
    sub l
    and d
    sub l
    ld l, d
    call z, $a72f
    ld sp, hl
    ld [$0ac6], sp
    ld a, [bc]
    adc c
    ld d, l
    dec [hl]
    adc h
    ld [$31aa], a
    xor d
    dec bc
    jr nc, @-$68

    inc e
    pop af
    ld h, b
    ld d, c
    db $ed
    and l
    ld d, [hl]
    xor b
    pop af
    db $dd
    ld l, b
    push af
    ld l, e
    ld [hl], e
    db $e3
    adc $c5
    dec a
    ld b, h
    inc l
    push af
    ld e, $18
    push bc
    ld a, d
    ld d, e
    jp Jump_00d_7074


    ld d, d
    ld e, c
    dec c
    ld b, c
    sub b
    db $d3
    or l
    inc e
    adc d
    ld a, [$42d0]
    add d

jr_00d_428a:
    sub b
    and l
    jr c, jr_00d_42de

    and h
    and l
    inc c

Jump_00d_4291:
    jr jr_00d_42bc

    add [hl]
    or d
    ld l, b
    daa
    rst $28
    inc sp
    rst $30
    ld [$4b20], sp
    ld d, b
    ld [hl], c
    ld l, d
    inc [hl]
    ld e, c
    inc d
    rst $08
    inc d
    sub h
    rra
    inc b
    xor a
    ldh [$b9], a

Jump_00d_42ab:
    ld [hl-], a
    ld e, b
    ld hl, $a28c
    ret nc

    ld l, b
    adc d
    ld b, d
    dec c
    ld a, [bc]
    ld c, $81
    ld c, e
    adc c
    add [hl]
    ld [hl-], a

jr_00d_42bc:
    ld c, c
    ld b, d
    add hl, hl
    or h
    ld e, a
    ret


    ld b, e
    add [hl]
    ld [hl], $4b
    ld h, l
    jr jr_00d_431b

    sub d
    xor d
    jp $870c


    ld c, h
    xor b
    ld d, d
    ret c

    add [hl]
    ld b, l
    ld c, d
    ret z

    ld d, b
    ld a, d

Call_00d_42d8:
    dec d
    ld a, e
    adc l
    db $10
    ld c, d

jr_00d_42dd:
    ld b, l

jr_00d_42de:
    ld hl, $a688
    ret


    xor c
    ld [$de3b], sp
    adc h
    ld d, h
    db $10
    adc h
    scf
    ld a, [hl+]
    ld a, [hl+]
    bit 0, l
    ret c

    sbc b
    pop bc
    ld h, $04
    sla a
    dec l
    db $f4
    adc b
    add hl, sp
    ldh [$7e], a
    cpl
    adc c
    ld e, h
    rst $00
    ld [hl], d
    ld d, $25
    dec bc
    ld b, e
    ld a, [de]
    sub h
    ld a, b
    add h
    jr nz, @+$53

    sub b
    ld h, d
    ld d, d
    ld hl, $8571
    ld l, b
    jr z, @+$7a

    ld de, $87a8
    ld [$4920], sp
    ld b, c

jr_00d_431b:
    ld a, [bc]
    ld a, [$4886]
    sub d
    ld [hl+], a
    pop hl
    adc b
    ld b, d
    add c
    or l
    call z, $a036
    and b
    xor b
    adc c
    and c
    sub c
    ld c, d
    ld e, b

jr_00d_4330:
    jr jr_00d_434d

    ld [hl+], a
    ld [$0b53], a
    sub b
    and h
    inc [hl]
    sbc b
    xor b
    ld d, d
    rra
    dec d
    adc b
    cp b
    inc d
    sub [hl]
    ld d, l
    ld a, [c]
    ld [hl+], a
    ld e, b
    add h
    adc $43
    ld b, [hl]
    ld [hl], l
    ld b, d
    db $f4

jr_00d_434d:
    push bc
    ld d, b
    push de
    ld a, b
    jr nz, jr_00d_42dd

    add $22
    ld a, [bc]
    cp b
    pop bc
    ld b, $0e
    jp nz, $8156

    ld e, e
    ldh a, [$ab]
    ld c, h
    ld a, e
    ld d, a
    adc h
    sub h
    db $10
    rst $00
    and d
    ld a, [de]
    xor c
    add hl, sp
    xor d
    and e
    ld a, $92
    call nc, $9f25
    ld c, a
    ld a, [de]
    ld d, d
    ld a, [hl-]
    add e
    ldh a, [$82]
    inc a
    adc e
    add c
    ld c, a
    ld e, d
    dec bc
    ld a, $3c
    ld b, h
    sub [hl]
    ld d, d
    ld l, c
    db $fd
    ld b, c
    rst $38
    call nc, Call_000_0ac2
    and $a2
    ld de, $2781
    ld [$94a7], sp
    jr z, jr_00d_43be

    or l
    dec d
    xor d
    jr nc, jr_00d_43eb

    xor [hl]
    adc b
    and d
    jr nz, jr_00d_4330

    ld d, e
    dec b
    ld d, d
    ld [de], a
    and b
    ld e, b
    ld a, a
    and c
    ld c, d
    add c
    dec d
    ld l, $23
    ld a, [c]
    and d
    sbc [hl]
    ld [hl+], a
    dec b
    ld c, c
    ld l, d
    jp z, $9598

    ld h, $81
    add c
    rra
    and d
    db $e3
    dec bc
    ld l, [hl]

jr_00d_43be:
    dec b
    and h
    ld a, b
    sub h
    jp c, Jump_000_2125

    ld a, b
    jr nc, jr_00d_4423

    inc [hl]
    ld h, b
    ld c, h
    ld l, d
    rst $18
    ld c, l
    ld sp, $5f6f
    ld d, a
    add d
    rlca
    ld d, e
    ld a, [hl-]
    ld h, $86
    and b
    sbc b
    add [hl]
    dec sp
    ld l, h
    add h
    inc sp
    xor [hl]
    and b
    and e
    push bc

jr_00d_43e3:
    ret nc

    sub [hl]
    and b
    or c

Jump_00d_43e7:
    add d
    sbc c
    db $e4
    inc h

jr_00d_43eb:
    call nz, $0c59
    inc [hl]
    sub h

jr_00d_43f0:
    add h
    ret nc

    ld d, e
    ld [hl], l
    ld e, [hl]
    ld [hl-], a
    sub b
    sub d
    ret nz

    db $e4
    res 1, e
    ld d, l
    ldh [$f2], a
    ld d, h
    ld de, $4a54
    ld b, e
    ld a, l
    add [hl]
    and l
    jp z, Jump_00d_5843

    ld e, d
    jp $b9c2


    sub h
    ld l, $aa
    and b
    push de
    ld b, $9a
    ld h, e
    inc de
    ld d, b
    ld a, $2c
    sub c
    ld h, $34
    ld de, $847f
    jr z, @+$2d

    daa

jr_00d_4423:
    ld d, $0e
    add [hl]
    ret nc

    ld a, $62
    jp $4117


    add h
    sub b
    and [hl]
    dec sp
    ld b, $1d
    ld c, d
    call z, $9c4d
    ld sp, $438c
    ld [de], a
    sbc l
    ld d, d
    or h
    ld a, h
    jr nc, jr_00d_44a6

    cp c
    ld d, l
    xor d
    ld d, h
    or l
    dec sp
    ld e, c
    xor d
    and l
    ld l, d
    ld b, e
    add hl, de
    jr c, jr_00d_43e3

    ld d, l
    or c
    ld c, c
    ld e, d
    adc c
    add c
    dec h
    and h
    ret


    or h
    ld a, d
    add [hl]
    ld e, d
    and b
    ld b, l
    dec hl
    jr c, jr_00d_43f0

    add [hl]
    jr nc, jr_00d_44a9

    sub b
    pop bc
    dec bc
    ld [hl], $4c
    ld [de], a
    and b
    ld b, [hl]
    sub h
    sub h
    sub h
    and h
    ld de, $3563
    ld a, [de]
    ret c

    ld e, $52
    ld h, c
    add l
    ld a, [hl+]
    ld hl, $a74d
    rst $10
    rst $20
    adc d
    push bc
    and e
    ld [$9814], sp
    jp nc, Jump_00d_42ab

    add hl, hl
    adc l
    sbc [hl]
    ld hl, $5285
    inc d
    or h
    inc d
    sub h
    ret


    ld d, d
    ld [hl+], a
    jr jr_00d_44ee

    cp b
    add hl, hl
    inc d
    inc l

jr_00d_449a:
    ld [hl+], a
    xor b
    cp d
    adc d
    pop hl
    ld h, d
    ld h, d
    ld a, a
    dec bc
    add d
    dec c
    ld b, c

jr_00d_44a6:
    ld a, [de]
    cpl
    rst $38

jr_00d_44a9:
    pop af
    ld l, b
    sub [hl]
    ld hl, $6625
    xor b
    inc l
    add [hl]
    and l
    jr c, @-$4c

    ld h, b
    ld b, e
    ld d, h
    ld h, d
    ld e, b
    db $10
    and h
    adc c
    inc hl
    rst $38
    ret z

    ld b, c
    adc h
    db $10
    ld l, c
    ld [$1d84], sp
    ret z

    sub d
    dec h
    ld d, a
    db $fd
    db $e3
    ld [$4220], sp
    ld b, d
    add l
    jr jr_00d_449a

    sub l
    ld l, d
    ld h, $07
    ld c, e
    add d
    ld c, b
    sbc [hl]
    adc b
    ld a, [c]
    ld h, e
    dec [hl]
    ld d, [hl]
    pop hl
    adc e
    sub h
    reti


    ld hl, $958c
    xor b
    add [hl]
    ld [hl-], a
    xor c
    ld d, l
    ld d, [hl]

jr_00d_44ee:
    and b
    ld b, l
    sub d
    ld d, h
    and l
    ld l, b
    db $ec
    add [hl]
    add hl, bc
    ld a, [de]
    ld a, [$5485]
    add sp, -$7e
    add hl, bc
    add hl, bc
    ld h, h
    sbc d
    xor b
    add h
    db $eb
    add [hl]
    ld b, [hl]
    cp c
    ld d, l
    ld d, [hl]
    adc [hl]
    xor c
    add hl, bc
    rlca
    ld d, c
    xor d
    rst $08
    ld a, [bc]
    ld b, d
    inc b
    ld l, d
    xor b
    sub $72
    and e
    xor [hl]
    add hl, hl
    ld c, d
    sbc l
    xor e
    push af
    ld a, a
    db $ed
    ld hl, $9c0c
    ld c, c
    ld c, h
    add a
    db $eb
    rst $38
    ld d, a
    add h
    add hl, de
    dec hl
    ld h, $4e
    rst $38
    rst $38
    jp c, Jump_00d_72f5

    sub c
    ld h, c
    rla
    sbc c
    xor h
    ccf
    db $fd
    add a
    rst $38
    db $e3
    inc b
    pop bc
    and $18
    ld b, [hl]
    ld [$ff7b], sp
    inc b
    rrca
    rst $38
    db $e4
    ld b, h
    ldh a, [rNR44]
    ld b, $64
    xor a
    rst $38
    ldh [$ef], a
    rst $38
    db $e4
    and h
    ldh [$8c], a
    inc c
    add hl, bc
    adc a

jr_00d_455a:
    cp l
    ld a, e
    ei
    rst $38
    ldh a, [$2f]
    ldh [$e3], a
    jr nc, jr_00d_4594

    ld h, $5f
    rst $38
    and b
    rst $38
    rst $38
    inc de
    ld d, e
    ret nz

    add h
    rrca
    ld sp, $2408
    ld e, a
    rst $38
    push de
    rst $38
    di
    ld de, $ddd0
    jr nc, jr_00d_45ad

    inc c
    add hl, hl
    inc de
    rst $18
    db $d3

jr_00d_4581:
    rst $30
    ld hl, sp+$66
    xor b
    and h
    rst $08
    dec h
    ld l, [hl]
    adc $d7
    rst $38
    sbc b
    add $10
    rst $28
    ld c, c
    ld l, b
    ld e, a
    rst $18

jr_00d_4594:
    rst $38
    ld [$4947], a
    add l
    ld d, h
    adc l
    dec h
    ld a, [hl]
    inc a
    rra
    rst $38
    ldh a, [$de]
    adc h
    sbc e
    ld sp, $a47f
    ld d, a
    rst $38
    jr nc, jr_00d_45ee

    ld a, [hl]
    or [hl]

jr_00d_45ad:
    xor a
    db $fc
    ld b, d
    ld h, e
    rst $38
    inc hl
    ld a, a
    sub d
    ld a, [c]
    rla
    rst $38
    rst $38
    ld b, c
    inc bc
    ld h, $5f
    pop hl
    inc bc
    ld a, c
    inc l
    ld b, e
    scf
    push af
    inc de
    dec bc
    jp hl


    sub l
    ld c, d
    jr c, jr_00d_4581

    ld c, d
    ld [$3149], sp
    ld a, [de]
    db $f4
    ld [hl], d
    ret nc

    pop bc
    jr nz, jr_00d_455a

    add l
    adc d
    inc [hl]
    ld sp, $90d6
    add h
    ld [hl-], a
    jr nc, jr_00d_4605

    ld [hl+], a
    sbc l
    ld d, b
    call z, Call_00d_4d08
    ld a, [hl+]
    and h
    ld sp, $84d2
    ld b, h
    adc h
    add h

jr_00d_45ee:
    ld e, h
    db $76
    call z, $c082
    sub d
    rst $00
    add a
    dec hl
    inc e
    and b
    ld b, h
    or l
    ld l, c
    dec l
    ld a, a
    ld c, l
    reti


    sub b
    ld c, b
    ld a, e
    ld d, l
    inc sp

jr_00d_4605:
    ld e, d
    ld a, [bc]
    inc e
    ld e, b
    rra
    add $30
    ld a, a
    ld d, $a2
    ld h, d
    ld h, c
    ld d, h
    cp c
    ld [$e21d], sp
    inc h
    add $52
    and a
    db $eb
    ld [hl], e
    ld d, l
    ld l, a
    scf
    call $e82a
    cp d
    sub a
    di
    add d
    ld [hl], d
    and b
    sub c
    sbc d
    add hl, hl
    daa
    rst $38
    jp nc, Jump_000_24e8

    ld l, a
    ld b, l
    ld [hl-], a
    add sp, -$3e
    ret nc

    pop de
    ld d, h
    add h
    add $8c
    xor l
    or e
    add hl, de
    push af
    ld c, $8d
    ld l, c
    ld d, b
    ld c, c
    ld a, a
    ld [$e13c], sp
    sub b
    ld h, b
    rst $38
    ld a, [hl]
    add hl, sp
    ld h, d
    ld l, d
    adc a
    ld a, [hl+]
    ld l, h
    and [hl]
    adc c
    jp nz, Jump_00d_69c1

    add l
    ld b, [hl]
    adc c
    ld a, $c5
    ld h, h
    xor d
    ld h, b
    ret nz

    adc e
    rst $38
    inc h
    ld b, h
    ld d, d
    ld h, e
    inc c
    rrca
    db $fc
    ld a, $8a
    rra
    call nc, Call_000_3f54
    cp l
    db $e3
    add hl, sp
    ld sp, $feb3
    adc $33

Call_00d_4677:
    sub d
    add d
    and [hl]
    ld [$3f35], sp
    add sp, $4e
    ld d, h
    dec d
    jr jr_00d_46a4

    inc hl
    ld a, a
    and b
    ret nc

    daa
    ld [bc], a
    ld [hl-], a
    scf
    cp $4c
    rst $38
    jp hl


    and d
    ld [$925e], sp
    and d
    and [hl]
    ret nc

    ld [hl], $1e
    add hl, bc
    inc [hl]
    and b
    xor c
    cp h
    rla
    jp hl


    ld c, a
    sbc h
    pop de
    add h
    ld a, h

jr_00d_46a4:
    ld d, b
    ld h, [hl]
    cp l
    push hl
    ld d, d
    dec d
    inc a
    ld l, d
    xor e
    ld a, d
    cp l
    dec h
    db $fd
    ld a, [hl-]
    ld l, b
    xor b
    ret


    ld [c], a
    dec l
    ld d, e
    jp nz, Jump_00d_52f0

    ld [de], a
    ld a, [hl+]
    db $d3
    add l
    db $e3
    ld l, d
    dec b
    ld a, b
    or l
    jr c, @+$2a

    cp c
    ld d, h
    call $fe55
    jr c, jr_00d_46f4

    ld d, e
    jr z, @+$20

    rst $38
    jp hl


    ld [hl], e
    adc c
    pop hl
    xor a
    ld c, h
    ld a, [hl-]
    xor b
    ld a, b
    adc e
    ld c, l
    add sp, -$39
    or d
    jr jr_00d_474e

    ld b, c
    ld h, b
    ld h, h
    inc d
    call $b6f8
    adc e
    and a
    cp $88
    xor h
    jr nz, jr_00d_4742

    dec d
    add hl, hl
    ld e, l
    dec h
    ld l, b

jr_00d_46f4:
    inc a
    adc $37
    ld d, d
    xor d
    add hl, de
    dec e

jr_00d_46fb:
    ld h, b
    ld l, a
    ld [c], a
    sub d
    inc de
    ld d, l
    ld c, h
    add sp, $21
    ld c, d
    ld d, h
    sbc c
    add l
    ld c, h
    db $eb
    jp nc, $c297

    inc d
    add a
    and b
    or h
    and l
    jr c, jr_00d_473c

    ld e, [hl]
    add [hl]
    ld h, $41
    ld e, l
    ld h, h
    sub l
    jr c, jr_00d_46fb

    inc [hl]
    or a
    cp a
    add l
    cp b
    add l
    ld [hl], $d3
    ld b, [hl]
    ld a, [de]
    ld c, $aa
    rlca
    rst $38
    xor b
    push de
    ld d, d
    jp c, $fd8d

    ld c, b
    and e
    ld l, d
    db $d3
    ld h, l
    db $dd
    ld e, b
    ld l, b
    adc e
    ld c, [hl]
    rst $18

jr_00d_473c:
    add l
    ld c, l
    inc d
    ldh [rHDMA2], a
    sub e

jr_00d_4742:
    ld b, l
    dec l

jr_00d_4744:
    cp $38
    xor l
    ld e, [hl]
    push de
    ld hl, sp-$55
    push de
    db $e3
    and d

jr_00d_474e:
    and d
    ld a, [hl+]
    inc [hl]
    xor b
    jp nc, $c97b

    ld l, b
    daa
    and e
    ld [bc], a
    ld c, e
    inc b

jr_00d_475b:
    ld [hl], l
    ld b, [hl]
    ret


    sbc d
    add hl, bc
    jp z, $aa8a

    ld e, d
    ccf
    and a
    ld [hl], a
    rst $38
    rst $28
    and e
    rlca
    adc $9c
    pop af
    ccf
    rst $18
    rst $38
    rrca
    ld b, c
    ld d, l
    jr nc, jr_00d_47bd

    inc c
    db $10
    jr z, jr_00d_47d9

    ld a, a
    ldh [$d9], a
    ld [$5bc7], sp
    rst $38
    rst $18
    jr nz, jr_00d_4744

    jp c, Jump_000_1c93

    add hl, bc
    ld c, a
    ei
    ld a, [hl]
    jp hl


    inc e
    and h
    db $e3
    sbc e
    ld b, l
    ccf
    ld e, a
    or b
    ld [hl], a
    dec b
    ld a, [$7733]
    and [hl]
    inc l
    ld c, d
    db $db
    rst $38
    db $10
    ret nz

    xor [hl]
    db $fc
    ld b, [hl]
    jr @+$7b

    sbc d
    ld d, l
    rst $38
    cp $f3
    cp $fc
    ld c, l
    ld [hl], a
    and $a9
    ld d, l
    rst $38
    ld a, [$d01f]
    jr nz, jr_00d_475b

    rst $10
    pop af
    or h
    ld h, c
    cp a
    db $ed

jr_00d_47bd:
    adc d
    ld d, $08
    inc h
    ld l, $71
    ld b, l
    ld a, a
    rst $28
    and e
    ld e, h
    ld b, h
    ccf
    inc e
    ld l, c
    ccf
    ei
    rst $38
    or d
    xor $bd
    inc d
    sbc h
    ld de, $8737
    rst $38
    db $e4

jr_00d_47d9:
    ld b, b
    xor d
    ld a, [bc]
    ld b, h
    ld sp, $57b2
    rst $38
    rst $38
    sub l
    rst $38
    cp h
    sub c
    inc e
    ld c, b
    rst $18
    ldh a, [$50]
    and e
    ld e, a
    rst $38
    ld e, $2a
    ld b, l
    rst $38
    ld b, a
    ld b, h
    ld l, h
    sbc e
    ld b, c
    inc e
    sub d
    add hl, bc
    ld [$9431], sp
    add d
    ld a, e
    add b
    ld b, h
    cp c
    sbc a
    ld c, [hl]

jr_00d_4804:
    jp z, $4e15

    ld a, [$943a]
    ld e, h
    db $e3
    ld e, a
    ld a, [$4255]
    scf
    ld a, d
    ld b, c
    and l
    ld h, b
    ret c

    ld [c], a
    or [hl]
    inc e
    adc c
    jr c, jr_00d_4804

    ld de, $aca8
    inc d
    ldh [$50], a
    db $ec
    xor a
    ld d, h
    pop hl
    ld d, a
    add hl, hl
    push af
    ld a, [bc]
    ld [hl], $6a
    ld e, e
    jp nc, $e36f

    ld e, l
    ld a, d
    dec bc
    jp $3b09


    dec l
    ld b, d
    ld c, [hl]
    ld [$2a3e], a
    ld a, h
    cp [hl]
    ld a, b
    ld a, [de]
    add hl, hl
    call nz, $0884
    jp $9b7f


    cp d
    ld [de], a
    ld a, [bc]
    ld a, [$1bd5]
    or e
    rst $08
    ei
    ld e, a
    ld a, c
    pop bc
    inc sp
    ei
    ld [hl+], a
    rst $00
    inc e
    rrca
    pop de
    add hl, bc
    db $d3
    dec h
    ret


    add hl, bc
    cp d
    ld de, $e113
    and b
    rst $00
    inc a
    jr nc, jr_00d_48e6

    db $76
    pop bc
    ld d, c
    push af
    jr nz, jr_00d_48e5

    cp e
    ld e, $d3
    rlca
    db $f4
    rst $20
    ld d, l
    ld d, e
    dec d
    xor e
    ld a, [bc]
    ld d, h
    rra
    ld a, [hl-]
    sbc $ab
    cp $a8
    and h
    adc d
    ld a, a
    add l
    ld c, [hl]
    adc e
    ld c, e
    and d
    ret c

    jp nz, Jump_00d_53d1

    xor d
    jp nc, $a692

    call nc, $f7bf
    ld c, [hl]
    xor d
    ld d, [hl]
    ld sp, $baf8
    ld a, [hl+]
    db $d3
    add c
    push af
    ld b, l
    dec l
    ld d, h
    adc c
    dec [hl]
    adc c
    ld d, h
    db $dd
    rst $38
    jp z, $ed7b

    ld [hl+], a
    sub l
    ld l, b
    add l
    ld [hl+], a
    sbc a
    ld c, l
    ld l, d
    cp h
    push bc
    ld c, [hl]
    dec d
    ld [hl-], a
    ld d, d
    rst $18
    ld h, c
    rst $38
    add hl, hl
    ld c, c
    ld d, e
    inc h
    ld e, $2d
    db $e4
    or a
    adc b
    and d
    sub d
    xor a
    ld hl, sp-$37
    ld c, $15
    ld a, [hl]
    sbc $52
    ld d, h
    xor e
    ld b, l
    adc $57
    rst $38
    xor b
    ld h, a
    ld a, b
    cp d
    inc hl
    rst $30
    ld [hl], e
    sbc l
    ld d, e
    jr z, @-$35

    ld b, c
    ld hl, $2c58
    db $e3

Call_00d_48e3:
    ld e, d
    xor a

jr_00d_48e5:
    ld d, l

jr_00d_48e6:
    ld d, l
    inc [hl]
    adc b
    sub a
    xor d
    ld c, [hl]
    ld [$8687], sp
    or l
    and e
    ld a, [de]
    rra
    rst $38
    push de
    rla
    ld [hl], $85
    ld [c], a
    ld de, $537d
    dec b
    inc c
    dec d
    ld d, a
    rst $18
    xor e
    inc b
    rst $00
    ld a, [hl]
    jp nc, $ab22

    sub d
    rst $28
    ld [$c5b7], a
    ld a, [hl]
    ld a, [$5a90]
    sbc a
    ld l, l
    ld c, c
    rst $38
    xor e
    ld c, h
    sbc $05
    ld a, d
    dec d
    dec h
    ld c, c
    ld d, c
    or [hl]
    cp h
    ld a, a
    push de
    ld c, h
    add sp, -$79
    adc c
    ld d, b
    ld h, e
    ld a, d
    ld [hl-], a
    xor d
    ld [hl-], a
    add d
    rlca
    adc h
    sub h
    push bc
    ld c, d
    or l
    ld sp, $ca78
    add c

jr_00d_4937:
    inc d
    sbc d
    ld l, $85
    ld b, c
    ld c, e
    xor a
    push de
    ld hl, sp-$36
    adc e
    ld c, c
    ld c, h
    ld l, h
    db $10
    ld b, d
    adc h
    ld [$d53b], a
    ld a, [hl+]
    add [hl]
    adc a
    ld hl, $b4fa
    ldh a, [$a8]
    pop de
    ld [c], a
    db $ed
    ld c, b
    ld a, b
    ld [$49b5], a
    ld d, l
    inc sp
    xor a
    db $e3
    cp d
    xor a
    ld a, [$1a8f]
    db $76
    cp d
    ld h, l

jr_00d_4967:
    inc b
    sbc h
    jp hl


    add hl, hl
    adc d
    rla
    add a
    ret z

    inc h
    daa
    add c
    ld l, d
    and b
    cp [hl]
    ld e, $1e
    inc e
    ld [de], a
    ld d, h
    ld [hl], a
    ld d, a
    rst $30
    rst $28
    cp [hl]
    ld d, e
    xor a
    sbc [hl]
    dec e
    rst $38
    or a
    pop af
    ccf
    ld b, h
    ld b, a
    ld l, [hl]
    cpl
    rst $38
    cp $63
    jr jr_00d_4937

    inc d
    add d
    dec hl
    rst $38
    ld b, e
    ld e, a
    jp hl


    ld l, c
    ld sp, $a608
    add sp, -$50
    rst $38
    add e
    inc c
    add a
    rst $38
    rst $38
    ld h, h
    push bc
    inc l
    ld l, b
    sub l
    rrca
    and $57
    rst $30
    di
    adc e
    ld [de], a
    ld a, [$6112]
    dec b
    inc c
    jr nc, jr_00d_4a15

    add h
    adc e
    inc bc
    add [hl]
    ccf
    rst $38
    ld [de], a
    cp h
    or $6a
    sub l
    dec b
    ld a, [$f88a]
    db $eb
    rst $38
    db $eb
    call c, $bd15
    inc e
    or l
    rst $38
    rst $38
    cp a
    ld a, a
    add sp, -$3a
    ld d, $65
    ld de, $8a12
    ld d, l
    ld d, l
    ld b, b
    cp a
    db $fd
    ld a, a
    xor d
    cp $64
    push bc
    jr nz, jr_00d_4967

    add hl, hl
    ld a, [hl+]
    dec hl
    rst $38
    cp $4c
    rla
    ld d, l
    ld [hl], c
    adc d
    ld h, c
    dec b
    rst $38

jr_00d_49f1:
    and h
    rst $18
    push af
    db $fc
    ld c, d
    ld h, c
    add hl, de
    call nz, Call_00d_5d45
    rst $38
    ld c, b
    rst $38
    db $eb
    pop af
    rra
    ld sp, hl
    db $10
    ld c, b
    ld h, $11
    add hl, hl
    jr z, jr_00d_4a3c

    rst $38
    jp z, $f445

    rst $28
    rst $18
    and $09
    sub h
    ld de, $3f52

jr_00d_4a15:
    ld l, a
    ccf
    ldh [rIE], a
    push af
    db $ed
    call nz, Call_000_1243
    sbc e
    jp $df57


    ld a, a
    rst $38
    pop af
    adc h
    jr nc, jr_00d_49f1

    or d
    ld h, a

Jump_00d_4a2a:
    db $f4
    pop bc
    rlca
    cp $60
    sbc e
    ld h, $30
    ld h, $3e
    adc l
    ld a, [bc]
    dec [hl]
    ld b, [hl]
    ld [de], a
    ld h, h
    sbc c
    and h

jr_00d_4a3c:
    ld b, d
    adc a
    call nz, Call_000_24a4
    ld hl, $4119
    jr nz, @-$7a

    ld h, a
    add hl, de
    ccf
    adc e
    db $e4
    pop bc
    ld [bc], a
    jp hl


    sub $98
    rst $38
    rst $38
    ldh [$98], a
    ld a, a
    dec e
    cpl
    and h
    cpl
    rst $38
    call nc, $7a67
    ld [hl], l
    ccf
    rst $38
    rst $38
    add $89
    ld de, $dfdd
    rst $38
    ld [hl], c
    xor h
    ld de, $43e1
    ld e, $48
    ld b, h
    or l
    ld d, l
    ld c, b
    ld a, l
    add hl, sp
    ld a, [hl+]
    xor e
    ld a, b
    db $e4
    ld d, h
    cp d
    dec h
    ld a, l
    ld [hl-], a
    ld a, [hl]
    xor d
    dec h
    rlca
    rlca
    add [hl]
    jr nc, @+$7b

    jr jr_00d_4aae

    db $f4
    jr z, jr_00d_4adc

    inc de
    ld [hl], l
    sbc c
    add c
    inc b
    and l
    ld sp, $d4a6
    ld hl, $6952
    ld l, h
    inc de
    add hl, de
    sub d
    ld hl, sp+$14
    jp nz, $d24c

    ld d, l
    sub $48
    ld e, a
    and e
    inc [hl]
    ld e, b
    cp d
    add l
    ei
    call z, $985e
    sub l
    ld d, b

jr_00d_4aae:
    ld a, [$32fc]
    rst $18
    dec e
    ld sp, hl
    rst $38
    ldh a, [$d6]
    ld e, [hl]
    dec h
    ldh [$df], a
    and b
    xor h
    ld sp, $86af
    ld l, $fe
    adc h
    ld l, d
    and l
    cp b
    ld hl, sp-$67
    xor d
    ld b, d
    ld d, h
    sbc h
    sub b
    and h
    inc h
    daa
    ld [de], a
    jr z, @-$1b

    sub c
    add h
    ld sp, $54a4
    add l
    db $e3
    db $ec
    ld l, b

jr_00d_4adc:
    adc d
    jr nc, jr_00d_4b39

    or $0e
    db $10
    and [hl]
    ld c, b
    dec hl
    ld [hl], a
    ret nc

    ld d, e
    add sp, $30
    and [hl]
    inc sp
    cp a
    ld a, [bc]
    or d
    or l
    and c
    ld sp, hl
    sbc a
    call nz, $ffac

jr_00d_4af6:
    xor b
    ld h, [hl]
    ldh a, [$a8]
    ld a, [hl+]
    push af
    jp nz, $aaa9

    inc e
    rst $08
    rst $38
    or e
    ld l, l
    sbc c
    jr z, @+$4c

    ld b, a
    ld e, [hl]
    jr nc, jr_00d_4b2c

    add hl, de
    jr z, jr_00d_4af6

    ld l, b
    and d
    add [hl]
    add a
    ld a, [de]
    pop hl
    dec d
    ld c, b
    or d
    dec c
    add hl, de
    ld b, c
    rra
    ld a, [hl-]
    ld h, [hl]
    cp h
    ld h, l
    ld c, l
    sub a
    push af
    jr nc, jr_00d_4b83

    ld c, l
    inc e
    db $dd
    add sp, -$76
    push de
    ld e, [hl]
    add e

jr_00d_4b2c:
    and e
    rla
    add d
    dec [hl]
    ld d, e
    inc l
    ld a, [hl-]
    add hl, hl
    ld c, d
    ld a, [hl]
    ld hl, $9508

jr_00d_4b39:
    ld [hl], $a0
    ld h, b
    ld c, c
    ret c

    sbc d
    add hl, hl
    ld h, d
    jr jr_00d_4ba6

    ld [hl], $14
    dec hl
    dec h
    pop hl
    ld a, b
    add [hl]
    sub l
    cp $8a
    ld d, d
    sub d
    inc e
    ld d, $22
    ld d, l
    add d
    ld d, [hl]
    inc hl
    and d
    or b
    ld c, h
    ld d, b
    ld l, b
    ld d, d
    xor b
    ld a, [hl+]
    xor c
    ld c, b
    ld h, d
    sub a
    ld h, e
    ld d, l
    xor l
    rrca
    db $e3
    ld a, [hl-]
    adc d
    ld a, d
    ld l, $8b
    adc e
    sub e
    adc l
    ld a, b
    sbc $15
    push hl
    ld [hl+], a
    ld c, l
    sbc d
    ld [$05d2], sp
    add l
    dec de
    ld d, l
    ld b, [hl]
    inc sp
    ld d, d
    ld h, e
    add l

Call_00d_4b81:
    ld c, d
    and b

jr_00d_4b83:
    ld h, e
    dec d
    ld a, l
    and e
    add d
    ld e, d
    scf
    ld c, b
    cp $88
    ld h, c
    ld h, e
    sub c
    ld c, d
    sub e
    dec de
    push de
    ld hl, $55f5
    inc sp
    ld a, [hl]
    cp l
    ld d, l
    inc [hl]
    xor h
    adc c
    ld a, [bc]
    call Call_000_26ad
    xor c
    ld b, d
    inc sp
    and l

jr_00d_4ba6:
    dec b
    and l
    ld h, e
    ld b, l
    ret z

    ld d, h
    adc h
    dec h
    inc [hl]
    xor d
    adc l
    add sp, -$3a
    and d
    ld e, a
    ld d, h
    jp nz, $d5d4

    ld [c], a
    ld e, b
    ret


    ld [hl+], a
    rst $18
    ld d, d
    xor e
    jp hl


    dec h
    xor l
    xor c
    adc h
    xor b
    sbc d
    ld b, $19
    ld c, l
    and l
    scf
    ld h, d
    cp l
    ld [hl], b
    ld l, d
    ld a, a
    db $fd
    and e
    ld a, [bc]
    ld c, b
    and l
    ld l, d
    ld sp, $8eaa
    sbc d

Jump_00d_4bdb:
    adc a
    rra
    ld a, b
    ret z

    ld h, $ec
    ret


    adc d
    add hl, de
    pop bc
    add h
    ld l, d
    push bc
    ld c, d
    ld b, d
    db $10
    or $6b
    ld [bc], a
    ld h, [hl]
    add $70
    call nz, $61ae
    sub d
    pop af
    ld a, [hl+]
    sub c
    add hl, de
    or b
    dec h
    ld a, [hl+]
    ld c, d
    ld c, d
    or c
    cpl
    ld c, c
    or e
    add a
    ld de, $105d
    add d
    db $d3
    ld b, b
    and c
    jp c, Jump_000_184b

    jr c, jr_00d_4c70

    add e
    ld b, c
    ld c, b
    ld sp, hl
    ld c, b
    cp l
    ld [de], a
    cp b
    push bc
    cp h
    add e
    ld d, c
    inc e
    ld [hl], $33
    ld [hl], e
    pop af
    dec bc
    add a
    db $10
    sbc b
    jr c, @+$74

    dec bc
    ld a, [hl+]
    pop de
    ld l, b
    ld b, h
    cp l
    jr jr_00d_4c77

    ld d, e
    or l
    ld l, c
    call nz, Call_000_1caf
    ld c, l
    dec h
    ld d, [hl]
    sbc d
    ld d, b
    add $d1
    add hl, hl
    ld [hl-], a

jr_00d_4c3d:
    call nc, $93c9
    inc de
    ld h, [hl]
    db $eb
    add hl, de
    or c
    ld l, d
    dec d
    sub [hl]
    sbc d
    pop de
    jp $cc11


    ld e, d
    pop de
    ret z

    sbc b
    ld c, l
    ld d, $c0
    add e
    db $d3
    inc h
    and [hl]
    ld l, e
    inc b
    ret


    jr z, jr_00d_4ca3

    ld [hl], $a5
    ret nc

    and $74
    sub l
    ld d, l
    call z, $bd66
    ld [bc], a
    ld [$a271], sp
    sbc d
    ld e, [hl]
    and [hl]
    ld d, l
    pop bc

jr_00d_4c70:
    dec de
    and a
    dec c
    db $76
    xor c
    ld [hl], $a6

jr_00d_4c77:
    jp hl


    cp d
    add hl, de
    db $10
    pop hl
    ld d, h
    and e
    ld c, b
    ld l, c
    ld c, e
    dec de
    and c
    ld [de], a
    push bc
    ld h, $38
    ld h, l
    ld d, d
    sub d
    sub h
    add h
    ld h, d
    xor b
    jr nc, jr_00d_4cdd

    ld d, l
    ld h, c
    add hl, de
    ld c, e
    add l
    ld c, h
    ld de, $448c

jr_00d_4c99:
    ld [hl], l
    rst $00
    adc [hl]
    ld [hl], a
    or b
    ld d, h
    dec d
    inc a
    push hl
    ld b, a

jr_00d_4ca3:
    cp a
    ld [hl], l
    rst $38

jr_00d_4ca6:
    ld d, l
    push af
    dec sp
    and [hl]
    ld h, c
    sbc c
    xor $26
    xor b
    ld l, d
    dec sp
    jr z, jr_00d_4c3d

    ld [hl+], a
    ld b, d
    adc h
    call nc, Call_00d_5295
    sbc a
    db $d3
    ld b, [hl]
    ld hl, $4185
    add hl, hl
    ld h, d
    ld l, c
    ld e, [hl]
    xor e
    sub b
    and d

jr_00d_4cc6:
    jr z, jr_00d_4c99

    sbc b
    ld a, b
    dec [hl]
    ld hl, $85d0
    xor e
    ld c, h
    ld h, $04
    add h
    inc hl
    ld c, b
    xor c
    dec l
    ld hl, sp+$1d
    ld l, d
    adc h
    sub h
    ld a, [hl+]

jr_00d_4cdd:
    scf
    adc b
    ld c, b
    xor d
    ld c, e

jr_00d_4ce2:
    adc h
    jr z, jr_00d_4ca6

    and h
    pop hl
    ld b, l
    add hl, bc
    ld l, $95
    ld [hl-], a
    ld d, d
    ld [hl], $86
    ld a, [bc]
    ld c, l
    call c, $ce94
    ld c, h
    ld [hl+], a
    ld d, l
    ld d, c
    adc b
    xor a
    ld c, h
    add sp, -$68
    pop de
    inc [hl]

Call_00d_4cff:
    ld [hl], h
    ld [hl+], a
    dec h
    dec d
    add hl, bc
    ld [hl-], a
    and e
    ld b, h
    sbc b

Call_00d_4d08:
    call Call_00d_4b81
    and d
    sub e
    add hl, de
    jr nc, jr_00d_4d51

    add d
    ld hl, $9533
    ld h, e
    sub [hl]
    adc b
    ld h, c
    ld b, d
    pop de
    add l
    ld c, l
    ld a, [de]
    ld [$0653], sp
    ld l, $81
    inc d
    ld h, e
    inc e
    adc b
    and h
    add h
    ld d, $81
    inc b
    xor b
    push bc
    ld a, e
    ld c, b
    sub d
    add hl, hl
    db $e4
    jr nz, jr_00d_4cc6

    cpl
    add [hl]
    jr nc, jr_00d_4ce2

    adc h
    db $d3
    inc h
    adc d
    dec h
    add [hl]
    ld a, [hl+]
    xor d
    ld a, [hl-]
    ld d, h
    ret


    ld h, $77
    ld d, e
    inc d
    add h
    db $e4
    ld d, b
    adc b
    ld h, b
    ld h, h
    add $c1
    add hl, hl
    ld c, d

jr_00d_4d51:
    adc [hl]
    ld a, [hl+]
    inc b
    ld a, [de]
    jr jr_00d_4d6a

    ld c, c
    adc c
    and l
    ld h, $38
    ld e, c
    ld l, $04
    db $dd
    sub d
    db $e4
    add l
    jr c, @+$24

    ld de, $3486
    ld d, h
    db $10

jr_00d_4d6a:
    and h
    and h
    sbc d
    dec [hl]
    ld h, d
    ld h, b
    add c
    ld d, e
    ld a, [hl+]
    xor [hl]
    ld h, $56
    cp d
    ld d, b
    sub e
    ld [hl], $c5
    add c
    inc hl
    call z, $8468
    adc d
    sub l
    ld b, d
    ld d, b
    ld b, [hl]
    inc sp
    sub $18
    ld d, b
    cp a
    ld c, b
    ld a, [hl]
    ld hl, $c314
    ld [hl+], a
    adc b
    ld c, [hl]
    ld [$9b84], sp
    ld hl, sp+$16
    and d
    call nc, $8556
    ld h, $38
    inc h
    ld l, c
    ld e, d
    xor b
    or [hl]
    ld [hl+], a
    ld a, h
    ld a, [hl+]
    ld h, b
    sub l
    ld c, [hl]
    ld a, [hl+]
    sub l
    ld e, d
    and l
    ld e, d
    ld [hl-], a
    xor d
    ld [hl-], a
    ret c

    dec h
    daa
    sbc h
    sub c
    ld l, b
    ld l, [hl]
    inc l
    ld [hl-], a
    ld l, $09
    rst $18
    add l
    ld [hl-], a
    call Call_000_0c75
    pop hl
    inc c
    add hl, de
    reti


    push bc
    or b
    ld c, b
    ld b, [hl]
    ld l, b
    inc h
    ld h, $4b
    ld h, $9a
    ld d, d
    cp d
    sub l
    ld sp, hl
    ld [$844e], sp
    ld b, [hl]
    sub c
    ld [de], a
    sbc d
    ld l, c
    ld e, $cd
    ld b, d
    add [hl]
    ld b, e
    ld a, [$7631]
    ld de, $ae79
    adc l

jr_00d_4de7:
    rst $28
    db $e3
    db $10
    cp h
    jr nc, jr_00d_4e57

    ld e, e
    ld l, c
    push bc
    add h
    ld c, l
    ei
    ld c, e
    ld b, h
    xor h
    ld [hl-], a
    add [hl]
    or c
    rla
    and b

jr_00d_4dfb:
    sbc e
    ld h, $55
    ld [$143d], a
    ldh a, [$a1]
    sub a
    ld l, c
    or [hl]
    sbc c
    jr z, jr_00d_4e5a

    ld de, $5f71
    ld a, [$4993]
    xor [hl]
    ld h, h
    and l
    and [hl]
    ld a, [de]
    ld d, $4d
    ld [bc], a
    ld d, h
    and [hl]
    ld d, h
    ld [hl], c
    ld b, [hl]
    jr nc, jr_00d_4de7

    inc c
    ld a, [bc]
    ld b, e
    and $4c
    ld e, e
    ld c, c
    add d
    ld h, c
    inc l
    ret z

    xor b
    ld hl, $2956
    add [hl]
    ld h, b
    db $e3
    jr jr_00d_4e83

    add hl, de
    ld d, e
    call nz, $a45d
    ld d, h
    ld e, a
    rla
    sub l
    sub b
    sub e
    ld de, $0aca
    ld b, d
    adc [hl]
    jp nz, Jump_00d_6d99

    ld b, h
    xor c
    ld [de], a
    and c
    inc h
    ld c, b
    call $ba40
    ld c, h
    ld b, h
    ld h, a
    sub c
    inc de
    and c
    and l
    dec h
    ld b, h

jr_00d_4e57:
    ret nc

    ld d, b
    daa

jr_00d_4e5a:
    dec sp
    dec d
    adc e
    inc de
    ld [hl-], a
    adc d
    ld d, l
    dec e
    ld e, c
    ld [$3250], sp
    ld h, l
    jr nz, jr_00d_4dfb

    add e
    inc bc
    inc e
    ld a, h
    inc l
    db $10
    ld a, [c]
    ld l, e
    ld a, [hl+]
    add l
    ldh [$a1], a
    ld h, a
    ld c, $98
    ld h, c
    sbc e
    add sp, -$36
    add l
    ld b, b
    add d
    ld [hl], b
    pop bc
    inc de
    ld e, c

jr_00d_4e83:
    and d
    ld c, d
    ld d, h
    add l
    cp d
    and $ab
    dec c
    adc d
    add hl, bc
    sbc d
    dec d
    dec l
    ld a, [hl+]
    ld d, l
    ld e, b
    ld l, c
    sub h
    ld d, h
    ld b, d
    ld a, $63
    ld h, l
    ld b, h
    or l
    ld [bc], a
    ld b, h
    ld d, $68
    or b
    pop af
    inc d
    push bc
    ld sp, $096e
    ld e, b
    ld a, d
    inc de
    and l
    ret nz

    push bc
    and [hl]
    inc d
    pop de
    adc d
    inc l
    ld a, [bc]
    inc e
    ld b, h

jr_00d_4eb5:
    add a
    ld h, h
    ld a, e
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld a, [bc]
    ld d, d
    inc d
    ld b, e
    pop hl
    xor e
    db $10
    adc [hl]
    ld [hl], d
    ld c, l
    ld c, h
    inc sp
    ld c, b
    ld b, [hl]
    inc d
    ld l, h
    ld b, h
    cp l
    inc h
    ld [$b855], a
    db $e4
    pop af
    ld a, d
    and e
    ld b, l
    call $d128
    ld e, [hl]
    ld a, h
    call Call_00d_514a
    ld e, [hl]
    and l
    db $e3
    daa
    adc c
    ld a, c
    ld a, d
    ld [hl+], a
    adc l
    inc d
    or a
    add sp, -$5b
    dec [hl]
    ld d, b
    db $d3
    rla
    ldh a, [$8d]
    ld e, h
    ld a, a
    ld c, c
    ld a, b

jr_00d_4ef5:
    jp nz, $b5fc

    or b
    db $fc
    rra
    adc [hl]
    ld e, e
    ld b, d
    ld hl, sp+$29
    ld c, $e2
    ld l, b
    jp nc, Jump_00d_52fd

    dec a
    rst $18
    ld d, l
    jr c, jr_00d_4ef5

    jr nc, jr_00d_4eb5

    ld hl, sp+$79
    jp hl


    daa
    ld a, [hl+]
    sub b
    adc e
    rst $00
    inc hl
    add $31
    and d
    ld h, e
    ld h, l
    ld h, $48
    dec sp
    ld b, $66
    add e
    or c
    ld l, e
    cp $11
    sbc d
    rrca
    ldh [$a0], a
    and c
    inc sp
    ld d, c
    and d
    rst $38
    pop bc
    inc b
    ld c, e
    inc a
    ld c, [hl]
    ld h, c
    ccf
    add sp, $3f
    or h
    ld de, $f90b
    add h
    add a
    rst $38
    ld sp, hl
    sub l
    sbc c
    ret z

    ld a, a

Call_00d_4f43:
    ld a, [c]
    sbc c
    and [hl]
    rst $18
    db $ed
    ld e, e
    ld hl, $c612
    pop de
    dec d
    ld d, b
    jp Jump_000_1f37


    ld c, h
    ld b, h
    dec l
    ld a, a
    ld sp, hl
    ld hl, $1605
    di
    rla
    xor [hl]
    ld b, [hl]
    ld [hl], h
    add hl, de
    cp [hl]
    db $ec
    jp $9289


    and c
    or h
    ld d, a
    dec [hl]
    ld b, e
    push bc
    call c, Call_00d_5e9e
    ld c, h
    db $fc
    add [hl]

jr_00d_4f71:
    db $fd
    ld b, l
    cp b
    add hl, hl
    jr nc, jr_00d_4fd8

    or $22
    ld b, $ab
    add c
    ld [$a0c2], sp
    cp b
    dec e
    xor b

jr_00d_4f82:
    ld l, b
    adc a
    adc l
    ld e, h
    dec sp
    ld sp, $0842
    jp z, $4147

    dec c
    db $fd
    ld a, b
    jr nz, jr_00d_4fdf

    add hl, hl
    rrca
    cp $22
    cp l
    ld d, a
    inc c
    jp z, Jump_00d_43e7

    inc d
    sbc e
    scf
    jp $f7ff


    ld h, h
    sbc l
    scf
    xor d
    sbc b
    ld hl, $4387
    add hl, sp
    xor b
    jr nz, jr_00d_4f71

    ld hl, sp-$12
    adc a
    ld [hl-], a
    ld l, h
    sub e
    and l
    ld h, $8c
    ld [hl-], a
    ld b, h
    ld b, e
    ld h, d
    add e
    and $08
    and h
    dec h
    ld h, h

jr_00d_4fc1:
    jr z, jr_00d_4f82

jr_00d_4fc3:
    sbc d
    and c
    dec bc

jr_00d_4fc6:
    push bc
    ld e, e
    db $fc
    ld h, d
    sub [hl]
    ld a, [$fe5c]
    ld de, $908a
    rst $38
    rst $38
    xor e
    rst $38
    ld b, [hl]
    sub e
    rst $38

jr_00d_4fd8:
    rst $38
    rst $38

jr_00d_4fda:
    db $fc
    ld de, $f5ac
    ld a, a

jr_00d_4fdf:
    rst $38
    rr c
    call nz, $6858
    ld h, h
    ld d, [hl]
    cp $9a
    ld d, d
    ld d, $d9
    ld [hl], h
    ld d, l
    ld h, $2c
    adc e
    ld c, c
    adc d
    ld l, e
    ld [bc], a
    jr jr_00d_4fda

    xor c
    add d
    ld [hl], d
    or $f0
    jp Jump_00d_501d


    ld e, b
    ld [hl], c
    pop af
    ld b, b
    ld d, l
    cp c
    inc h
    rst $28
    ld d, l
    ld c, c
    ld d, e
    or c
    add e
    and [hl]
    ld d, b
    sbc l

jr_00d_500f:
    ld sp, $8153
    ld [hl+], a
    and c
    push bc
    ld c, $55
    xor d
    ld h, e
    add d
    ld d, e
    ld a, [hl+]
    and e

Jump_00d_501d:
    dec b
    jr c, jr_00d_4fc3

    jr z, jr_00d_4fc6

    adc [hl]
    dec sp
    jr nz, jr_00d_500f

    adc b
    adc [hl]
    cp d
    ld h, $81
    add l
    ld e, [hl]
    ld c, [hl]
    ld d, a
    sub d
    sub d
    ldh [$cd], a
    ret c

    xor d
    inc b
    add [hl]
    jr nc, jr_00d_507c

    ld c, l
    jr jr_00d_4fc1

    ld c, d
    jp nz, $e333

    add c
    adc b
    or c
    ld b, d
    inc sp
    adc h
    push de
    ld d, c
    ld c, b
    ld h, d
    ld h, d
    jp nc, $1613

    adc c
    or l
    xor b
    inc de
    dec [hl]
    ld l, b
    push bc
    ld [hl-], a
    ld b, d
    xor b
    sbc b
    cp b
    dec d
    ld hl, sp-$1b
    ld d, e
    ld a, b
    ld [hl-], a
    db $d3
    ld a, [hl-]
    and d
    ld e, c
    ld d, e
    ld d, $8b
    ld c, [hl]
    ld b, $2a
    and l
    ld e, [hl]
    adc h
    ld h, l
    dec l
    ld d, [hl]
    adc [hl]
    jp c, Jump_000_3baa

    and a
    inc h
    ld a, b
    add hl, bc
    add hl, bc
    ld [hl-], a
    db $76
    cp l

jr_00d_507c:
    ld a, [$2685]
    adc c
    jp $127a


    inc d
    ret z

    ld b, b
    adc [hl]
    or c
    call $fdff
    adc d
    add l
    ld a, [$c511]
    ld a, a
    rst $38
    ldh a, [$bb]
    dec b
    inc e
    rst $18
    db $fd
    ld [hl], b
    ld [hl], $29
    db $d3
    db $fc
    ld c, $61
    sub b
    sub c
    daa
    dec c
    pop hl
    inc bc
    sub l
    add d
    cp a
    sbc h
    ld c, e
    or [hl]
    cp $92
    rst $38
    cp $d1
    xor e
    ld a, [c]
    or l
    pop hl
    ld hl, $ffff
    rst $00
    rlca
    ccf
    cp $32
    rra
    db $fd
    dec de
    and d
    add l
    rst $38
    db $fd
    sub c
    rst $38
    xor b
    or c
    adc e
    cp a
    jp hl


    dec d
    ld h, e
    add d
    rst $38
    db $fc
    ld l, b
    cp a
    rst $38
    and [hl]
    dec c
    cp a
    ld a, [$e1a2]
    rla
    db $fd
    rst $38
    inc d
    add d
    scf
    rst $38
    rst $38
    ret nz

    and l
    rst $18
    or h
    ld a, [$e1ab]
    inc b
    dec a
    ld a, a
    or d
    ld h, e
    ld a, a
    rst $38
    rst $38
    reti


    sbc h
    ld b, h
    ld l, l
    push de
    ld h, h
    ld b, a
    pop bc
    nop
    ld b, h
    cp [hl]
    cp l
    ld d, e
    or [hl]
    cp e
    ld e, a
    ld d, l
    ld [hl], e
    adc d
    db $fd
    add hl, bc
    sbc d
    db $fc
    db $e4
    cp l
    rst $10
    rst $38
    adc $6b
    ei
    ld a, [$973d]
    adc [hl]
    rst $30
    call nc, $9feb
    xor c
    adc $ea
    ld a, $9a
    ld a, [hl]
    ld a, [hl+]
    and l
    daa
    dec sp
    rst $38
    call nc, $2978
    sub $af
    rst $20
    ld e, a
    rst $38
    sbc l
    cpl
    rst $38
    rst $00
    ld c, a
    ld d, l

jr_00d_512e:
    sbc a
    sub e
    add b
    ld h, [hl]
    and c
    jr nc, jr_00d_51a9

    and l
    cp [hl]
    push af
    ld c, h
    ld d, h
    dec d
    ld l, $0a
    sub l
    ld c, d
    ld l, d
    add c
    adc c
    ld l, d
    ld c, b
    ld h, c
    add e
    ld c, h
    sub l
    ld d, d
    ld e, d

Call_00d_514a:
    ld d, $5c
    jr z, jr_00d_5162

    ld h, $46
    ld a, [bc]
    add c
    scf
    adc c
    ld d, a
    ld h, b
    rst $28
    ld a, [hl+]
    ld [hl], b
    ld b, [hl]
    ld b, $0a
    add hl, hl
    add hl, de
    dec l
    inc hl
    add d
    ld l, b

jr_00d_5162:
    dec de
    dec b
    ld [hl-], a
    ld l, a
    adc e
    ld c, b

jr_00d_5168:
    and l
    inc b
    and [hl]
    dec d
    ld d, b
    ret z

    xor c
    inc d
    add l
    ld sp, $c664
    ld [$541a], sp
    jr z, jr_00d_51db

    and c
    add d
    adc h
    jp hl


    cpl
    ld sp, $217a
    ld l, $98
    push bc
    ld d, c
    db $e4
    ld d, [hl]
    dec d
    ld d, l
    ld [hl+], a
    sub b
    add c
    ld sp, $2d81
    ld l, $25
    and d
    and $d5
    ld c, $32
    adc h
    ld h, d
    call c, $922a
    ld d, $a0
    and d
    inc de
    adc [hl]
    jr nc, jr_00d_512e

    ld [hl], e
    ld c, b
    ld [$4571], a
    ld [hl+], a
    sub h

jr_00d_51a9:
    ccf
    ret nc

    call z, $1893
    pop bc
    inc b
    jr z, @-$38

    ld h, $8c
    sub b
    jp nc, $ac98

    sbc c
    ld c, e

jr_00d_51ba:
    ld b, c
    xor d
    sub e
    ld d, a
    ld c, b
    ld d, h
    ld h, h
    adc c
    ld [hl+], a
    xor d
    or $92
    dec l
    dec l
    ld b, $1a
    jr nc, jr_00d_5168

    sbc c
    dec l
    ld c, b
    ld c, d
    ld d, d
    ld [c], a
    xor b
    sub [hl]
    call z, $5122
    ld [$8b15], a
    ld h, d

jr_00d_51db:
    sub [hl]
    ld [$2586], sp
    ld b, c
    ld [$6820], sp
    add l
    ld [hl], l
    dec bc
    ld l, b
    ld d, h
    adc c
    dec b
    inc d
    add [hl]
    adc c

Jump_00d_51ed:
    ld c, b
    ld b, d
    jr nc, jr_00d_5237

    add hl, hl
    add c
    ld b, c
    ld e, d
    ld l, $32
    ld e, a
    ld h, a
    cp a
    dec h
    ld e, d
    dec h
    ld h, h
    ld a, [hl+]
    add hl, hl
    ld d, l
    adc b
    ld c, c
    or a
    pop de
    xor d
    inc sp
    ld d, a
    ld hl, sp-$3f

jr_00d_520a:
    ld d, h
    sbc e
    adc b
    xor l
    jr c, jr_00d_51ba

    adc c
    sbc d
    adc c
    ld d, h
    ldh a, [$e6]
    adc d
    sub h
    add h
    and b
    ld [c], a
    sbc b
    and d
    add d
    ld e, l
    xor [hl]
    ld l, e
    pop hl
    and c
    di
    or c

jr_00d_5225:
    dec hl
    rst $08
    jr jr_00d_520a

    rst $38
    db $e4
    jr nc, jr_00d_526e

    db $d3
    dec b
    rlca
    add a
    xor b
    rst $28
    ldh [$98], a
    ld l, a
    rst $38

jr_00d_5237:
    sub e
    ld hl, sp-$50
    and e
    ld [bc], a
    call nc, $f38f
    jp hl


    ld d, a
    or a
    ld hl, sp-$1f
    inc b
    inc c
    db $ec
    di
    rst $38
    xor b
    ld a, a
    pop af
    sub l
    ei
    pop bc
    add d
    and c
    inc a
    cp a
    jp hl


    scf
    cp a
    db $f4
    ld h, d
    adc l
    ccf
    xor c
    ld sp, $f715
    sub a
    rst $38
    add $9b
    rst $38
    db $fc
    ld h, l
    add e
    db $fc
    ld d, l
    cp $62
    adc a

jr_00d_526b:
    ld b, c
    ld [hl], l
    db $10

jr_00d_526e:
    sub d
    sub c
    db $ec
    ld b, d
    ld c, a
    ld a, [$5f98]
    inc hl
    and d
    add $12
    scf
    rrca
    dec bc
    rst $38
    and $73
    ld sp, hl
    inc d
    jr nc, jr_00d_5225

    ld e, h
    ld a, [bc]
    ld c, h
    scf
    rst $38
    sbc c

Call_00d_528a:
    ld h, c
    ld sp, hl
    adc h
    inc a
    ld a, [hl-]
    ld e, $43
    sub b
    rst $38
    and $58

Call_00d_5295:
    ld a, a
    sub e
    and b
    sub e
    ld e, a
    xor [hl]
    adc d
    ccf
    rst $38
    and [hl]
    ld c, l
    or $84
    sbc c
    rst $38
    db $fc
    ld de, $f817
    and l
    cp [hl]
    jp Jump_000_2993


    dec hl
    ld d, d
    xor h
    ld e, l
    pop hl
    ld a, [$3a4c]
    add e
    ld [$bf62], a
    cp a
    jp hl


    ld c, a
    rst $38
    db $fc
    ld e, a
    ld a, a
    cp $98
    ld a, a
    rst $08
    cp $8f
    pop hl
    rst $38
    ld sp, hl
    ld d, b
    xor l
    db $fd
    ld [de], a
    sub h
    rst $38
    cp $0b
    ld hl, sp+$7f
    rst $18
    call nz, $dabf
    jr jr_00d_532d

    dec c
    db $fd
    xor a
    ld a, l
    rst $38
    push de
    cp $a1
    dec bc

Call_00d_52e2:
    di
    cp $38
    jr nz, jr_00d_526b

    ret nc

    ld a, a
    ld [bc], a
    rst $38
    ld b, h
    ld d, a
    ld a, [hl]
    sub e
    rst $18

Jump_00d_52f0:
    cp $4f
    db $e3
    ld h, e
    dec b
    rst $10
    inc b
    ld e, l
    ld l, a
    ld [hl], c
    jr jr_00d_537b

    ld sp, hl

Jump_00d_52fd:
    ld [de], a
    add hl, bc
    inc c
    sbc h
    ld d, a
    ld e, c
    cpl
    ld e, c
    jp Jump_000_251e


    ld b, a
    add [hl]
    ld b, h
    cp c
    push de
    ld d, h
    ldh [rOBP0], a
    ld b, c
    sbc a
    xor d
    ld b, d
    dec [hl]
    ld e, a
    inc b
    dec [hl]
    ld a, e
    ld d, l
    adc l
    ld l, e
    rst $28
    rst $18
    ldh a, [rSVBK]
    add e
    dec [hl]
    ld h, c
    ld a, [$a989]
    call nc, Call_00d_6ad5
    scf
    and e
    ccf
    dec sp

jr_00d_532d:
    sbc [hl]
    ld c, [hl]
    db $db
    add d
    dec sp
    ld d, [hl]
    sub e
    add [hl]
    inc [hl]
    ld l, b
    ld de, $0442
    or [hl]
    inc [hl]
    sub l
    ld h, a
    ret z

    or a
    add sp, $53
    add c
    ld b, d
    jp Jump_00d_67f8


    di
    add c
    ld h, $31
    and e
    pop hl
    ld [hl], a
    xor d
    or l
    ld d, h
    sbc h
    add hl, hl
    ld [$0a36], sp
    sbc h
    dec c
    inc b
    ld [hl], $e8
    dec a
    rlca
    sbc d
    ld l, e
    dec c
    rla
    ld b, c
    ldh [$9b], a
    ld b, a
    inc d
    ld l, d
    add h
    rst $00
    ld d, e
    dec e
    ld a, [c]
    and a
    ld [hl], d

jr_00d_536e:
    rst $00
    ld l, d
    ld c, d
    ld [$092a], sp
    rst $00
    inc [hl]
    add h
    ld de, $5410
    xor e

jr_00d_537b:
    sbc l
    db $fc
    ld a, l
    jr nz, jr_00d_53e6

    cp l
    xor c
    dec sp
    and a
    adc l
    sbc e
    sub l
    add hl, sp
    ld d, l
    jp c, Jump_000_0b53

    ld c, b
    add d
    sub a
    sub l
    ld d, e
    dec h
    ld a, d
    ld [$308a], sp
    xor e
    sub c
    ld l, d
    ld a, a
    pop bc
    db $e4
    sub a
    ld l, [hl]
    jp c, $3266

    or [hl]
    and e
    ld c, d
    ld b, c
    ld a, l
    ld d, [hl]
    ld b, e
    and b
    ld c, l
    xor l
    jr @-$2c

    ld b, d
    ld [$a242], a
    inc de
    add [hl]
    ret nc

    sub e
    jr c, jr_00d_53de

    add $2a
    add hl, sp
    dec l
    add hl, bc
    inc [hl]
    ld e, c
    and e
    and c
    ld d, a
    add $53
    ld [$457a], sp
    ld b, c
    jr c, jr_00d_536e

    ldh a, [$95]
    ld a, a
    cp $30
    ld b, c
    add l
    add hl, sp

Jump_00d_53d1:
    ccf
    ld d, l
    xor d
    xor e
    ld d, $d4
    dec h
    ld hl, $e738
    and l
    ld h, d
    ld a, [de]

jr_00d_53de:
    jp nz, $1208

    ld h, d
    dec h
    cpl
    cp l
    ld d, l

jr_00d_53e6:
    ld e, l
    rrca
    jp hl


    inc b
    ld de, $e4f9
    adc b
    sbc a
    ld l, $ee
    xor a
    add sp, -$68
    ld h, b
    add c
    ld b, d
    rrca
    ld h, d
    ld d, d
    inc d
    ld d, a
    cp $88
    sub l
    ld [hl-], a
    sub b
    ld d, e
    ld c, a
    add hl, de
    ld a, [de]
    rst $38
    ld d, h
    cp d
    and l
    ld e, b
    ld [hl], h
    ld d, b
    db $e4
    cp b
    jr @-$34

    xor a
    db $fd
    ld [hl], h
    jr jr_00d_5432

    ld b, e
    and b
    ld b, c
    dec b
    ld a, a
    db $e3
    sub d
    add a
    add c
    xor b
    ld d, h
    adc c
    add d
    adc [hl]
    rst $18
    xor l
    push de
    push de
    add hl, de
    dec sp
    and d
    jp hl


    ld e, d
    ld [$f218], sp
    ld l, c
    rst $30
    ld c, a

jr_00d_5432:
    xor l
    sbc $d6
    sbc l
    ret c

    and $d8
    ld c, b
    and a
    ld a, [hl+]
    ld b, e
    add hl, de
    push hl

Call_00d_543f:
    ld b, e
    ld b, b
    and h
    and [hl]
    ld c, c
    dec de
    ld b, e
    add hl, de
    jp c, $0a39

    cp a
    ld h, c
    add hl, hl
    dec hl
    ld [bc], a
    jp hl


    inc c
    ld h, a
    dec b
    ret nc

    jp $1054


    ld b, c
    ld hl, $11bc
    ld d, $a7
    inc c
    adc d
    ld sp, $5475
    inc [hl]
    ld e, $b0
    ld h, a
    inc e
    add d
    ld [hl-], a
    ld d, l
    ld a, [$e794]
    ld c, h
    ret z

    jp nc, $1dac

Jump_00d_5472:
    inc bc
    db $ed
    daa
    ld [hl+], a
    ld b, d
    inc de
    ld c, d
    ld d, [hl]
    ld c, h
    dec l
    ld b, a
    dec h
    add d
    adc e
    ld d, h
    rra
    pop de
    adc e
    add h
    sbc h
    cp c
    dec de
    dec [hl]
    ld d, c
    ld c, e
    ld h, e
    ld e, d
    ld [hl], d
    ret c

    dec l
    ld a, [hl+]

jr_00d_5491:
    ld h, e
    ld hl, $c9c4
    sbc [hl]
    ld a, [hl+]
    ld b, d
    ld [hl], $87
    call z, $b65f
    and l
    adc $65
    push de
    dec b
    ld de, $ac57
    sub l
    rlca
    push bc
    ld d, h
    ld c, d
    add hl, de
    db $10
    ld h, [hl]
    db $f4
    ld a, [bc]
    ld l, e
    or c
    ld d, b
    ld h, h
    ld hl, $a64a
    ld l, [hl]
    add l
    ld de, $aaca
    add hl, bc
    and h
    add hl, sp
    dec a
    dec l
    scf
    ld b, c
    ld hl, $2949
    add hl, de
    rl b
    rst $18
    rla
    sub c
    ld h, e
    dec e
    sub l
    dec c
    ld d, h
    dec e
    ld d, d
    ld a, b
    ld de, $488f
    ld a, [hl+]
    add hl, de
    push hl
    and a
    reti


    nop
    ld b, h
    and l
    ret nc

    sub l
    ld d, e
    dec h
    ld a, h
    sub l
    ld d, h
    jr nz, jr_00d_5491

    xor a
    ld c, c
    ld a, d
    adc h
    ld a, [hl+]
    inc [hl]
    ld b, d
    ld [hl+], a
    db $e4
    jp nz, $44d3

    adc c
    ld a, l
    ld b, d
    ld c, d
    ld l, l
    jr nc, @+$67

    xor a
    ld a, [hl+]
    and d
    ld e, d
    dec bc
    jp nc, $1716

    xor b
    rla
    adc e
    ld e, e
    db $dd
    ld a, a
    ld d, h
    ld hl, $8cc6
    ld a, b

jr_00d_550d:
    adc b
    ld h, c
    xor d
    db $d3
    add d
    jr c, jr_00d_553c

    db $dd
    ld c, [hl]
    ld [$b5e0], sp
    xor d
    and l
    ld c, h
    sub d
    inc de
    add hl, bc
    ld c, h
    ld a, h
    cp c
    cp [hl]
    inc sp
    and l
    ld b, d
    ld hl, sp+$5c
    jr nz, jr_00d_550d

    sub e
    add d
    db $dd
    add sp, -$1b
    adc d
    xor b
    di
    ld h, h
    and h
    inc h
    and [hl]
    ld c, b
    ld sp, $a648
    rla
    cp d

jr_00d_553c:
    ld d, d
    adc e
    ld [de], a
    sbc d
    ccf

jr_00d_5541:
    push hl
    sbc $e5
    ld b, [hl]
    ld c, a
    rst $38
    ld de, $d90e
    cp e
    db $fd
    ld c, $0b
    ccf
    dec de
    ld a, a
    ld b, h
    xor h
    cp a
    inc e
    db $10
    and d
    add a
    ld d, c
    pop de
    ld a, [hl]
    sbc h
    add hl, hl
    and a
    cp $75
    ccf
    cp $61
    ld a, [de]
    ld [$5f0d], a
    sbc b
    ld a, $a6
    xor l
    ld d, h
    push hl
    inc hl
    inc b
    ld [hl], d
    and h
    jr c, jr_00d_55ba

    ld e, a
    ld b, a
    add $80
    ld h, [hl]
    cp l
    ld [hl], a
    push de
    inc a
    sub a
    adc d
    sub [hl]
    db $f4
    pop af
    ld [hl], e
    dec sp
    ld b, l
    ld a, [hl]
    ld a, a
    call nc, Call_00d_52e2
    inc de
    ld [hl], $a8
    ld h, d
    xor e
    ld d, d
    dec d
    inc sp
    ld c, b
    sub b
    ld d, l
    dec l
    ld hl, $4330
    sbc d
    push de
    dec h
    ld a, b
    ld [hl-], a
    ld l, l
    ld [c], a
    ld h, [hl]
    db $fd
    ld [hl], l
    ld a, a
    ld a, [bc]
    xor h
    jr c, jr_00d_5541

    add d
    add c
    and h
    ld d, e
    add d
    xor a
    db $e3
    ld a, [bc]
    ld [hl+], a
    adc e
    ld [hl], e
    sbc c
    dec de
    ld c, b
    ld e, l
    ld c, c
    or [hl]
    add c
    ld [hl], h

jr_00d_55ba:
    db $e4
    xor c
    inc b
    ld d, $21
    ld c, e
    ld [hl], l
    ld c, $36
    ld d, l
    ld e, l
    ld [$8fb4], a
    adc h
    sub b
    or h
    pop bc
    rla
    db $ec
    ld a, [de]
    ld a, [hl+]
    or c
    and e
    dec d
    ld h, d
    xor c
    ld h, h
    add hl, hl
    ld b, l
    inc b
    push bc
    rrca
    inc sp
    cp d
    sub e
    inc [hl]
    inc hl
    ld [hl], l
    cp b
    db $10
    ld a, b
    sbc d
    db $ec
    ldh [rLYC], a
    ld [$fea7], sp
    xor e
    call z, $dabc
    dec d
    add [hl]
    ld e, a
    cp b
    pop bc
    ld b, c
    dec h
    ldh [$63], a
    add hl, hl
    ld sp, $c968
    ld c, b
    xor b
    or l
    ld h, h
    and [hl]
    ld a, [hl+]
    db $76
    inc [hl]
    rst $00
    inc d
    jr z, jr_00d_5677

    add d
    db $db
    ld sp, hl
    ld [hl], h
    jr jr_00d_561e

    sub e
    dec b
    ld b, [hl]
    add c
    ld l, e
    adc h
    ld d, b
    add c
    ld a, d
    dec d
    ld a, d
    dec bc
    call nc, $8828
    add l

jr_00d_561e:
    ld hl, sp-$26
    ld sp, $a2a1
    dec hl
    ld c, d
    ld a, [hl]

Jump_00d_5626:
    scf
    sbc b
    push de
    ld c, h
    ld d, $aa
    inc a
    ld d, l
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, [$398e]
    db $ec
    ld l, b
    and a
    sub d
    sub c
    add l
    inc hl
    add hl, sp
    db $e3
    add sp, -$42
    jr @+$4b

    ld [$3041], sp
    ret nz

    sbc h
    ld d, c
    ld a, [hl-]
    rra
    add [hl]
    ld b, [hl]
    ld de, $5a0e
    and h
    and [hl]
    sbc h
    ld b, l
    and e
    ld b, h
    ld a, b

jr_00d_5655:
    ld a, a
    rst $28
    rst $38
    add sp, $40
    add l
    ld [bc], a
    ld c, d
    ld e, $ea
    ld c, h
    ld d, a
    cp $4d
    ret c

    ld b, b
    rst $10
    or b
    add hl, hl
    rrca
    rst $30
    ld [hl], b
    inc hl
    rla
    ld a, h
    ld h, c
    ld l, h
    sub c
    or $97
    xor $76
    ld a, e
    rst $38

jr_00d_5677:
    pop bc
    dec h
    call c, Call_000_3110
    ret


    inc bc
    ld a, b
    ld a, [hl]
    rrca
    jr jr_00d_56c4

    ld a, [hl+]
    sbc e
    inc h
    ld l, $15
    ld [hl+], a
    or $11
    sbc d
    rrca
    xor b
    and l
    jr c, jr_00d_56ed

    push bc
    push de
    sbc d
    jr nz, jr_00d_5655

    rst $08
    ld hl, sp+$68
    ld c, d
    inc a
    sbc b
    ld [c], a
    sbc c
    or a
    cp $1f
    rst $38
    add [hl]
    sub l
    add [hl]
    ld e, e
    ccf
    ld c, c
    ld de, $e373
    ld a, a
    ld hl, sp-$08
    ld l, e
    or [hl]
    xor e
    inc b
    ld de, $691a
    jp hl


    rla
    ld [c], a
    ld hl, sp-$01
    or l
    push hl
    xor a
    rst $28
    sub [hl]
    rst $38
    and [hl]
    rrca
    add a
    or l

jr_00d_56c4:
    call z, $ff5a
    ld sp, hl
    ld de, $c117
    ld l, d
    ld b, e
    db $fc
    rst $38
    rst $28
    sub [hl]
    rst $38
    rst $38
    add h
    or c
    ld sp, $ff15
    ldh a, [rSTAT]
    cp $15
    add sp, $3f
    rst $38
    rst $38
    jp hl


    and d
    ldh a, [$c4]
    call c, Call_00d_4f43
    ld a, a
    rst $38
    db $fc
    ld sp, $a6a3

jr_00d_56ed:
    pop de
    dec bc
    rst $28
    ld d, l
    add h
    ld [hl], a
    or b
    ld a, a
    db $fc
    ld a, c
    rra
    rst $30
    ld e, $4c
    ld sp, $44cc
    or d
    ld d, l
    ld c, h
    sub l
    di
    ld e, d
    xor d
    db $f4
    sub a
    xor b
    pop de
    ld hl, sp-$3e
    adc b

jr_00d_570c:
    cp c
    ld a, [hl-]
    ld e, $57
    xor [hl]
    ld c, h
    sub h
    or a
    ld [$99a4], a
    inc sp
    ld d, d
    ld e, $3a
    xor d
    or l
    ld c, [hl]
    add a
    ld l, d
    xor e
    ld c, [hl]
    ld d, a
    call z, $e468
    ld [hl], c
    ld d, l
    ld c, b
    adc [hl]
    ld c, d
    ld h, d
    xor b
    pop bc
    ld hl, $b432
    or l
    ld l, $6f
    adc l
    ld d, l
    xor b
    ld hl, $8370
    adc [hl]
    ld a, e
    ld [hl], a
    and e
    xor [hl]
    and e
    call $a299
    sbc c
    jr nz, jr_00d_570c

    pop de
    ld [hl], d
    ld d, d
    adc e
    add hl, de
    ld hl, $a916
    ld [hl], l
    cp c
    jp $c4ff


    cpl
    ld [hl], $65
    dec d
    db $fd
    inc de
    ccf
    ld sp, $d1c0
    sub a
    rst $00
    ld b, $09
    add hl, bc
    add a
    inc e
    ld de, $9256
    rst $00
    ld [bc], a
    ld h, e
    ld sp, hl
    call z, $fe97
    ld h, c
    ld a, [de]
    xor b
    ld [hl-], a
    db $eb
    jr jr_00d_57b3

    and [hl]
    ld [hl], b
    ld l, l
    db $d3
    sub h
    adc h
    ld de, $12c1
    sub b
    pop hl
    dec e
    ld a, l
    rra
    ld a, [de]
    ld d, l
    and l
    ld a, a
    and l
    dec sp
    ld e, e
    and c
    ld h, d
    add hl, hl
    ld c, [hl]
    add l
    adc b
    ld b, [hl]
    dec hl
    db $f4
    db $ed
    adc h
    ld d, $39
    call nc, $ca78
    sbc b
    ret


    ld a, a
    sub h
    and l
    ld d, d
    sbc h
    add [hl]
    dec [hl]
    add c
    pop de
    adc d
    sub h
    ld d, h
    ld [hl-], a
    dec [hl]
    inc sp
    and c
    add a
    add hl, de
    dec h
    ld e, h
    adc b
    ld d, $06

jr_00d_57b3:
    sub e
    ld l, [hl]
    adc d
    ld d, [hl]
    inc b
    jr @+$6c

    jp nz, $8b42

    adc d
    ld [hl], h
    ld h, c
    sub d
    ld e, b
    add l
    ld [hl], d
    ld a, b
    adc d
    ld [$a598], sp
    ld b, $51
    and [hl]
    dec b
    ld b, [hl]
    ld e, $0a
    ld b, [hl]
    ld d, c
    ld h, c
    adc c
    ld b, [hl]
    dec h
    ld [$2246], a
    sub c
    adc b
    and c
    ld h, c
    sub d
    ld h, c
    ld a, b
    ld e, d
    ld [$48c5], sp
    ld e, d
    add hl, hl
    ld [$5221], sp
    ld hl, $4881
    add c
    and c
    ld h, e
    ld [$8584], sp
    dec b
    add [hl]
    sub h
    add h
    ld e, b
    ld d, e
    ld [hl], h
    ld d, b
    adc d
    and e
    inc b
    ld a, [de]
    inc [hl]

Jump_00d_57ff:
    ld h, l
    adc b
    adc l
    xor c
    adc [hl]
    add hl, bc
    ld a, [hl+]
    sub b
    ld c, c
    ld d, d
    ld d, e
    sub d
    ld h, l
    ld h, b
    sub d
    jr nz, jr_00d_5855

    adc [hl]
    ld a, d
    ld d, l
    ld b, l
    ld h, h
    ld d, e
    adc a
    ld c, d
    jr jr_00d_5846

    ld [hl], a
    cp b
    ld c, l
    ld de, $090e
    ret nc

    ret nz

    call nz, $036b
    ld b, b
    sbc h
    ldh a, [rNR50]
    rst $28
    sub c
    ld a, [$d99c]
    jr jr_00d_585e

    ld a, [bc]
    ld [de], a
    and c
    add hl, de
    ld hl, $63aa
    ld de, $3a0c
    ld l, a
    ld [bc], a
    ld a, [hl-]
    push hl
    push de
    rlca
    ld a, e
    dec de
    ld b, [hl]

Jump_00d_5843:
    ld c, $09
    add hl, hl

jr_00d_5846:
    dec d
    ld d, [hl]
    rra
    add hl, hl
    adc h

jr_00d_584b:
    sub a
    ld c, h
    jr z, @+$76

    add d
    dec d
    sbc b
    add hl, sp
    add d
    ld e, a

jr_00d_5855:
    add [hl]
    ld [de], a
    add hl, bc
    rla
    and c
    ld d, [hl]
    inc sp
    inc de
    and e

jr_00d_585e:
    sbc b
    ld b, b
    sub c
    ld l, c
    ld sp, $2b09
    db $10
    add d
    ld h, b
    or b
    ld b, l
    ld d, c
    dec l
    ret nz

    sub b
    add $32
    ld b, [hl]
    ld c, h
    ld c, d
    sub c
    jr nc, jr_00d_584b

    ld [de], a
    ret nz

    and h
    inc [hl]
    sub d
    and [hl]
    dec c
    ld de, $0906
    jr c, jr_00d_58f2

    and c
    jr jr_00d_58c6

    dec c
    ld [bc], a
    call nz, $c420
    ld hl, $a610
    ret nc

    and d
    sub [hl]
    ld [$0a0b], a
    adc h
    ld l, c
    and l
    ret


    ld de, $422a
    ld [hl], c
    call Call_00d_710d
    jr z, jr_00d_58e4

    add hl, sp
    call $8422
    ld b, h
    ld c, e
    dec e
    db $10
    jr nc, jr_00d_5855

    ld [bc], a
    and a
    jr z, jr_00d_58f2

    ld a, $49
    db $f4
    db $eb
    ld h, b
    xor $4e
    ld [hl], a

jr_00d_58b6:
    and b
    pop hl
    db $f4
    push hl
    ld d, a
    db $fc
    adc e
    adc $3d
    ld b, d
    sub h
    add a
    ld [$a9e2], sp
    or b

jr_00d_58c6:
    ld [hl], c
    di
    sub d
    and a
    add d
    rlca
    di
    sub [hl]
    or a
    inc hl
    ei
    adc [hl]
    ld c, b
    adc l
    cp l
    adc $a6
    ldh a, [$8e]
    add a
    dec c
    ld hl, sp-$16
    and e
    db $e3
    rst $30
    ret


    xor c
    rst $18
    reti


jr_00d_58e4:
    db $db
    ld [hl], l
    ld c, c
    jp z, Jump_000_358b

    sub c
    add hl, hl
    push bc
    rrca
    ld [bc], a
    sub a
    inc e
    sub b

jr_00d_58f2:
    ld c, d
    ld [hl], l
    ld a, b

jr_00d_58f5:
    scf
    dec e
    ld a, h
    cp c
    add [hl]
    ld [hl], e
    ld c, d
    sub b
    or h
    ld [hl], e
    xor e
    ld hl, sp+$67
    ld c, h
    add l
    ld b, a
    ld l, h
    ld a, h
    ld [hl], b
    ld h, [hl]
    cp b
    push de
    db $f4
    pop af
    sub l
    ldh a, [$fa]
    inc b
    ldh a, [rNR22]
    ld a, [$e168]
    ld l, d
    jr c, jr_00d_5938

    and e
    adc c
    ld d, l
    ld d, e
    or c
    ld [hl], h
    cp h
    jr z, jr_00d_58b6

    or l
    dec [hl]
    and d
    ld d, $b8
    inc de
    ld h, h
    or h
    ld h, h
    push de
    ld [hl], b
    ld l, [hl]
    db $e3

jr_00d_592f:
    ld h, h
    or l
    ld a, [bc]
    dec [hl]
    add sp, -$68
    adc $51
    ld c, e

jr_00d_5938:
    ld d, c
    and e
    ld c, e
    ld b, [hl]
    sub l
    adc l
    jr z, jr_00d_58f5

    jr c, jr_00d_592f

    ld sp, $5450
    call Call_00d_6b4e
    ld hl, $5868
    adc $93
    and [hl]
    and e
    ld b, $33
    adc a
    dec d
    adc a
    ld b, c
    adc h
    inc hl
    ret z

    ld h, e
    ret nc

    ld h, l
    ld l, d
    dec l
    ld d, h
    ld hl, sp-$19
    xor d
    ld d, h
    xor b
    ldh a, [rNR34]
    ld sp, $4eb1
    rst $30
    adc d
    ld d, a
    ld a, [$e78e]
    add l

jr_00d_596f:
    ld a, a
    xor b
    ldh a, [$ed]
    ld a, [hl]
    adc a
    ld h, $a8
    ld hl, sp-$23
    add $8c
    and a
    adc h
    adc h
    db $f4
    ld a, [hl-]
    ld a, b
    inc l
    dec de
    xor c
    ld l, h
    ld h, h
    rst $20
    dec de
    db $f4
    dec c
    db $10
    xor a
    add sp, -$5e
    sub c
    inc e
    ld l, h
    xor l
    ld a, [bc]
    dec c
    db $fd
    ld b, $a1
    ld c, d
    ld a, [bc]
    jr z, jr_00d_59c1

    cp b
    ld b, h
    inc l
    db $10
    inc l
    sub c
    inc d
    call nz, $8443
    add hl, bc
    xor d
    or $37
    ld b, h
    ld e, d
    ld d, e
    db $10
    adc h
    dec [hl]
    add hl, de
    cp l
    ld [bc], a

jr_00d_59b2:
    inc l
    ld e, d
    add h
    ret nz

    push bc
    ret nz

    and [hl]
    call nc, $af4b
    db $10
    and l
    ld b, b
    sub l
    inc e

jr_00d_59c1:
    sub h
    add l
    ld d, b
    dec l
    ld h, h
    dec h
    ld d, d
    db $10
    xor c
    ret


    dec hl
    ld b, l
    inc h
    ld c, c
    ld [hl], c
    push de
    add hl, de
    and h
    ret


    dec [hl]
    ld b, a
    add [hl]
    sub l
    jr nz, jr_00d_596f

    ld e, $12
    ld e, l
    ld e, $4a
    ld e, h
    add hl, bc
    db $e4
    ld a, [hl+]
    ccf
    dec b
    ld hl, $7856
    inc [hl]
    ld h, h
    sbc [hl]
    dec l
    ld [$c792], a
    add [hl]
    or b
    push de
    jp hl


    pop hl
    xor h
    ld c, d
    inc c
    pop bc
    ld e, $03
    ld [bc], a
    inc c
    pop bc
    ld e, $1b
    pop hl
    ld hl, $4c1e
    ld sp, $a0f1
    ld b, h
    dec sp
    inc d
    db $ed
    ld h, e
    and c
    ld d, c
    ld h, e
    and c
    pop af
    sub b
    sub e
    sbc e
    and d
    ret nc

    sub e
    adc c
    ld hl, $9030
    adc [hl]
    ld b, $26
    ld c, h
    inc hl
    add [hl]
    jr nc, jr_00d_59b2

    ld e, a
    inc b
    ld [$eee8], a
    ld c, d
    ld c, [hl]
    adc d
    ld [$e958], sp
    and [hl]
    ld h, e
    xor a

jr_00d_5a30:
    ret c

    ld a, [$d69d]
    ret


    ret c

    rst $00
    db $76
    ld [hl], l
    dec [hl]
    daa
    ld c, d
    push bc
    ld c, d
    ld [hl], d
    ldh [$c9], a
    db $76
    sbc h
    ld e, a
    ld de, $d125
    jp $4918


    ld c, d
    ld [hl], b
    add hl, hl
    add d
    ld [hl], h
    add hl, hl
    ld l, $96
    sbc h
    ld d, [hl]
    add l
    inc c
    ld c, e
    inc e
    ld [hl], l
    ld a, [c]
    jp nz, Jump_000_3ac7

    sub d
    rst $00
    dec a
    ldh a, [$b1]
    rst $10
    ld d, h
    ld a, c
    add b
    ld [hl], a
    adc b
    jp z, $3a4f

    ld c, h
    ld l, l
    inc a
    add sp, -$36
    db $d3
    call Call_00d_528a
    cpl
    ld c, a
    ld e, $22
    ld c, l
    dec l
    ld c, a
    dec d
    ld h, $45
    ld c, h
    dec hl
    push af
    ld d, l
    ld d, e
    and c
    ld c, h
    add hl, hl
    ld [hl], $aa
    add [hl]
    inc sp
    ld d, l
    ld c, [hl]
    ld l, d
    ld d, h
    jp nc, $9f8c

    xor d
    cp l
    dec l
    ld h, e
    ld a, d
    sub [hl]
    sub c
    xor d
    dec l
    db $e3
    dec hl
    ld c, h
    inc de
    sbc [hl]
    adc h
    ld e, $29
    xor e
    ld b, l
    ld c, b
    sbc c
    add hl, sp
    xor b
    pop bc
    jr nc, jr_00d_5a30

    sub b
    adc b
    ld d, l
    ld h, h
    ld d, e
    sub c
    ld a, [de]
    ld b, $08
    xor e
    ldh [$88], a
    ld b, c
    dec de
    ld l, b
    jr nz, @-$69

    jr c, @+$6b

    pop hl
    adc c
    ld l, b
    cpl
    inc d
    xor e
    rst $18
    db $db
    rst $10
    ld [$064e], a
    rra
    ret z

    or h
    ccf
    ld c, h
    dec hl
    ld [$828a], sp
    sub b
    adc l
    sub e
    add hl, hl
    ld h, $26
    adc c
    rst $38
    adc c
    adc c
    sbc c

jr_00d_5ade:
    ld c, h
    sub e
    add hl, de
    ld e, [hl]
    ld d, c
    ld d, l
    ld l, $8a
    add c
    ld c, c
    sub b
    sub d

jr_00d_5aea:
    sbc b
    or l
    dec sp
    ld l, l
    ld h, h
    sbc d
    ld a, l
    ld h, e
    jr jr_00d_5b31

    ld d, a
    add [hl]
    sub h
    ldh [rPCM12], a
    adc h
    xor d
    ld h, l
    ld e, a
    pop hl
    xor e
    ld hl, $4b4e

jr_00d_5b02:
    ret nc

    sub h
    ld d, h
    and [hl]
    xor b
    pop bc
    xor c
    ldh [$a3], a
    sub d
    and d
    jr z, jr_00d_5b73

    jr jr_00d_5ade

    add c
    ld a, [bc]
    rlca
    adc [hl]
    adc b
    jr @+$66

    inc d
    ret


    add c
    adc c
    and e
    and c
    ld d, [hl]
    jr @-$69

    jr nc, jr_00d_5aea

    ld d, l
    ld d, h

jr_00d_5b25:
    ld [$89fb], a
    ret nc

    ld l, c
    ld a, [hl+]
    xor d
    xor d
    ld a, [hl-]
    ld d, l
    dec l
    add hl, bc

jr_00d_5b31:
    ld b, d
    jr jr_00d_5b25

    ld l, d
    ld a, [hl+]
    add d
    and l
    ld [$c513], sp
    ld e, c
    ld [hl-], a
    or l
    and e
    rst $00
    and a
    ld d, a
    res 4, e
    and e
    add hl, de
    sub [hl]
    ld a, c
    ld a, [$2763]
    sbc l
    ld h, [hl]
    ld d, d
    ld a, c
    sbc l
    sub l
    sub e
    ld c, c
    db $e4
    ld b, b
    ret


    ld d, c
    ld [hl], d
    ld a, b
    pop af
    ld [de], a
    ld b, [hl]
    ld h, e
    ld d, e
    dec h
    and a
    ld b, [hl]
    ld b, h
    ld b, l
    ld hl, $551b
    ld h, c
    add hl, de
    and h
    ld h, $50
    jr nz, jr_00d_5b02

    ld e, b
    add hl, hl
    xor a
    ld h, $4c
    dec d

jr_00d_5b73:
    inc b
    sbc b
    ld h, [hl]
    call nc, Call_000_2838
    ld h, h
    ld h, b
    add $0c
    ld h, l
    dec h
    pop bc
    inc b
    ld l, h
    or b
    pop bc
    sbc c
    ld sp, $2487
    ld c, c
    ld a, [de]
    ld c, h
    sbc c
    and l
    ld c, c
    add hl, bc

jr_00d_5b8f:
    ld d, c
    ld l, d
    db $10
    add sp, -$36
    add sp, -$40
    or l
    ld a, [hl+]
    xor h
    add hl, bc
    ld c, c
    jr c, jr_00d_5bc9

    ld e, [hl]
    inc c
    inc e
    db $10
    sub $13
    call nc, $a432
    ld h, $7a
    dec [hl]
    jr jr_00d_5bdd

    dec c
    ld de, $4811
    ld a, $0c
    add d
    call nc, Call_000_120a
    ld e, l
    add d
    call nz, $34fe
    adc d
    call nz, $4224
    add d
    jr nc, jr_00d_5b73

    ld b, d

jr_00d_5bc2:
    ld [hl-], a
    ld c, d
    pop bc
    jr jr_00d_5b8f

    and c
    inc d

jr_00d_5bc9:
    push bc
    ld h, c
    ld b, h
    db $e4
    ld c, b
    jp z, $0bd5

    ld a, [de]

jr_00d_5bd2:
    ld c, b
    ld [c], a
    pop bc
    sbc b
    ld b, l
    ld l, [hl]
    inc e
    ret


    ld [hl-], a
    xor h
    ld h, d

jr_00d_5bdd:
    sbc b
    ld h, h
    ld h, c
    inc e
    jr jr_00d_5c04

    jr c, @+$54

    and [hl]
    ld a, [c]
    ld a, [bc]
    inc d
    jr c, jr_00d_5bd2

    dec b
    add h
    add d
    jp nc, $9285

    xor b
    ld [hl-], a
    ld b, h
    ld sp, $6730
    inc e
    add h
    ld e, $a1
    ld h, h
    ld sp, $8b11
    jr nz, jr_00d_5bc2

    rst $00
    ld a, [hl+]
    ld c, l

jr_00d_5c04:
    dec c
    add h
    ld l, d
    call nz, $d140
    pop de
    jp nc, $9956

    or c
    ld l, c
    db $d3
    adc d
    db $10
    add sp, -$1a
    ld d, d
    xor d
    and c
    sbc l
    ld e, [hl]
    db $10
    pop bc
    jp Jump_00d_7131


    add h
    ld [hl], l
    add hl, sp
    ld c, l
    add h
    ld c, h
    ld a, b
    call c, Call_000_105b
    call nz, $8d27
    add d
    ld d, d
    ld c, l
    adc $79
    db $10
    jr nc, @+$2a

    ld h, [hl]
    ld de, $44d0
    cp c
    ld d, l
    cp e
    adc h
    sub e
    dec [hl]
    rst $38
    ld c, $ec
    add $b4
    or a
    xor a
    ld e, d
    rst $38
    ld sp, $bda0
    ld d, a
    xor a
    ei
    db $e3
    ld e, d
    rlca
    xor d
    xor e
    ld a, [hl]
    jr jr_00d_5ca8

    ld a, [hl-]
    adc h
    and d
    ld d, b
    ld h, h
    ld [$6476], a
    ret


    db $e3
    scf
    push hl
    sbc a
    dec l
    ld hl, sp+$13
    rla
    sbc e
    rst $18
    ld a, [c]
    rst $18
    or $4a
    and b
    jp $fcff


    sub $bd
    ld a, [de]
    sbc a
    db $db
    cp h
    ldh [$a2], a
    xor $fe
    ld [hl], e
    add c
    ld c, b
    add $04
    dec hl
    db $d3
    add [hl]
    ld hl, sp+$5a
    ld l, $39
    ld a, [hl+]
    inc a
    db $fd
    ret nc

jr_00d_5c8a:
    xor d
    sbc h
    db $eb
    jp c, Jump_00d_62aa

    sbc e
    ld a, [hl-]
    dec d
    ld a, [hl]
    ld h, e
    ld hl, $4eca
    adc l
    ld e, b
    call nc, $2265
    pop bc
    call nc, Call_000_3408
    ld c, e
    sbc c
    call c, Call_000_1465
    ld a, [c]
    ld l, b

jr_00d_5ca8:
    jp z, Jump_000_2dc6

    rst $08
    ld a, [de]
    ld b, [hl]
    ld l, e
    inc sp
    add $59
    add hl, bc
    adc e
    dec sp
    add h
    ld h, a
    sub e
    dec h
    xor l
    ret


    bit 1, c
    ld d, $ae
    jr jr_00d_5cea

    rst $00
    ld b, e
    dec c
    ld d, e

jr_00d_5cc5:
    pop bc
    sbc h
    jr jr_00d_5c8a

    inc b
    and h
    jp nc, Jump_00d_6271

    pop af
    db $db
    ld e, $88
    ld d, l
    or e
    ld d, e
    push bc
    ld [hl], b
    ld h, h
    ldh a, [$ef]
    add hl, bc
    sub e
    cp c
    db $e4
    inc l
    ld h, b
    adc d
    ld d, h
    db $e4
    ldh a, [$99]
    jr jr_00d_5d07

    adc b
    sbc l
    adc [hl]

jr_00d_5cea:
    ld c, b
    db $10
    sbc d
    ld b, c
    rlca
    or $e4
    and $b5
    cp e
    and d
    rla
    xor $4e
    ld l, c
    sbc b
    sub a
    xor d
    ret c

    inc de
    sbc c
    ld c, h
    ld a, [c]
    xor $4e

jr_00d_5d03:
    and l
    dec h
    ld c, b
    db $fc

jr_00d_5d07:
    db $ec
    cp a
    ld [c], a
    ld e, l
    adc [hl]
    dec h
    ld h, h
    ret


    ld h, e
    sub l
    cp h
    inc e
    inc hl
    ld [$38a5], sp
    ld d, b
    xor d
    ld b, c
    ld l, $21
    cp c
    db $d3
    add c
    add hl, de
    dec bc

jr_00d_5d21:
    push de
    inc b
    ld [de], a
    jr nz, @-$58

    db $d3
    ld a, d
    adc d
    xor b
    jr z, jr_00d_5cc5

    ret nc

    sbc e
    ld c, [hl]
    ret z

    inc h
    jr nz, jr_00d_5d03

    sbc [hl]
    dec sp
    inc h
    inc h
    cpl
    ld d, [hl]
    dec sp
    and h
    ld h, $08
    ldh a, [$e4]
    ld e, b
    xor c
    jp hl


    ld a, $9e
    dec a

Call_00d_5d45:
    jp hl


    ldh [$29], a
    dec l
    push hl
    and b
    sbc h
    or b
    ret


    scf
    sub e
    ld b, $c7
    inc l
    ld a, $b0
    ld d, h
    inc l
    call z, $5774
    jp nz, Jump_00d_57ff

    or d
    ld [hl], e
    push bc
    ld sp, hl
    db $76
    and a
    ld [hl-], a
    ld d, a
    sbc b
    ei
    inc b
    sbc h
    sbc d
    cp $97
    ld a, [$9c1c]
    sbc a
    rst $38
    ld a, [$f0bf]
    rst $00
    inc e
    dec [hl]
    rst $38
    rst $38
    rst $38
    sbc h
    add sp, $33
    rst $38
    rst $38
    db $fc
    ld b, d
    ld [hl], c
    ld b, e
    dec c
    rst $38
    rst $38
    ret nz

    cp $09
    rst $00
    rla
    rst $10
    ld c, b
    ld h, h
    ld e, e
    daa
    ld a, e
    ld a, [hl-]
    ld [hl], $c9
    call c, $e3ed
    ld a, h
    ld [hl], a
    db $db
    ld l, c
    ld [c], a
    db $db
    rst $00
    adc l
    jr jr_00d_5d21

    ld b, h
    cp l
    ld h, l
    ld hl, $9a4e
    and b
    xor b
    ld [$7cb7], a
    add sp, $58
    push hl
    ld c, h
    inc l
    and $a9
    ld [hl], a
    ld d, l
    add hl, sp
    cp h
    db $dd
    adc l
    sub l
    xor [hl]
    ld [$5881], a
    pop hl
    adc h
    db $10
    and e
    cp d
    dec b
    ld hl, $d84e
    db $ec
    cp [hl]
    dec bc
    rst $08
    and l
    rst $18
    dec l
    ld b, h
    ld d, c
    call nc, $f9ea
    jp nc, $dbe9

    ld [bc], a
    and a
    inc de
    and d
    add d
    add hl, hl
    ld de, $91c5
    db $dd
    sbc l
    rla
    jr jr_00d_5e26

    xor d
    sbc l
    dec hl
    rst $10
    ld e, c
    sub $c1
    add hl, hl
    db $ed
    ld b, a
    push de
    add b
    ld d, l
    or a
    ld d, e
    sub l
    ld [hl-], a
    ld a, [hl]
    ld b, [hl]
    cp l
    ld c, [hl]
    ld a, [de]
    adc e
    ld h, h
    inc h
    jr z, jr_00d_5e1f

    ld l, e
    ld c, h
    rla
    or $b2
    ld e, e
    add c
    jr jr_00d_5e62

    ld b, d
    ld h, b
    sub d
    ld e, $88
    pop bc
    adc b
    ld e, b
    adc b
    and h
    adc b
    sub l
    db $fd
    ld d, l
    ld h, e
    inc [hl]
    ld [hl+], a
    ld de, $9088
    and d
    jp hl


    ld c, e

jr_00d_5e1f:
    ld c, c
    ld a, [$159a]
    and l
    ld c, l
    ld h, h

jr_00d_5e26:
    ld a, [hl+]
    ld hl, $9241
    inc h
    add [hl]
    ld c, [hl]
    ld a, [de]
    dec l
    ld c, b
    and d
    ld a, [hl+]
    ld h, b
    ld c, [hl]
    sbc e
    ld d, h
    jp nz, $75a3

    add c
    ld d, d
    ld [$55ff], a
    ld c, [hl]
    ld a, [bc]
    sub [hl]
    db $e3
    ld e, d
    add d
    ld hl, $92a2
    and h
    ld a, [hl+]
    adc l
    and d
    ld h, b
    ld e, c
    ld sp, $0f46
    ld [hl], $a0
    sbc c
    add a
    ld a, [bc]
    add d
    ld b, c
    dec hl

jr_00d_5e58:
    call Call_00d_689d
    add l
    ld hl, $d560
    xor e
    db $e3
    and d

jr_00d_5e62:
    and b
    ld a, b
    pop hl
    ld d, l
    ld [hl-], a
    ld a, b
    ld d, a
    adc [hl]
    inc l
    sbc d
    xor h
    and l
    ld a, [$6a39]
    ld d, h
    dec [hl]
    dec d
    and e
    cp [hl]
    sub a
    db $e3
    sbc e
    ld l, [hl]
    sbc [hl]
    inc c
    ret z

    pop hl
    ret


    call nz, Call_00d_6fb9
    dec bc
    ld a, a
    ld h, e
    ld h, $28
    ld c, h
    db $10

jr_00d_5e89:
    ld h, h
    or d
    ld c, h
    dec l
    ld e, c
    ld [hl], $90
    pop bc
    ld de, $2465
    and l
    jr z, jr_00d_5e58

    jr nz, jr_00d_5e89

    ld h, c
    ld [bc], a
    ld l, c
    jr jr_00d_5ec1

Call_00d_5e9e:
    ld b, d
    or b
    ld h, $10
    jr nc, jr_00d_5ec4

    xor [hl]
    ld e, e
    ld [hl+], a
    add d
    ld c, h
    ld de, $c5ad
    db $e4
    xor $32
    add a
    inc a
    ld l, a
    ld h, l
    ret z

    ld d, c
    ld [hl], b
    ld a, [c]
    ld [hl], b
    and [hl]
    jr nc, jr_00d_5ee1

    sub d
    sbc c
    xor h
    and b
    sbc b
    ld b, c

jr_00d_5ec1:
    inc [hl]
    add d
    and l

jr_00d_5ec4:
    ld d, h
    xor e
    ld d, c
    dec d
    dec b
    sbc d
    jp nz, $9b96

    cp b
    ld h, [hl]
    ret


    ld c, h
    add hl, hl
    xor [hl]
    add hl, sp
    xor [hl]
    ld [$1121], sp
    ld e, a
    add d
    ld d, d
    rst $18
    sbc d
    rst $30
    inc b
    ld b, e
    dec d

jr_00d_5ee1:
    ld [hl], l
    inc hl
    ld h, $ad
    ld d, d
    and h
    ld h, l
    inc l
    ld [hl], b
    dec [hl]
    ld b, [hl]
    jr nc, jr_00d_5f12

    or c
    push bc
    sbc e
    ret nz

    or h
    ld [hl], d
    call nc, $94a9
    ld [hl], a
    jp nc, $c7aa

    jr z, jr_00d_5f41

    cp l
    ld c, l
    ld d, h
    db $eb
    ld [$5c82], a
    rst $20
    push de
    add l
    adc [hl]
    dec [hl]
    rst $38
    pop de
    ld h, l
    adc $06
    ld h, d
    rst $20
    add sp, -$1e

jr_00d_5f12:
    adc h
    db $e4
    xor $47
    ld [$53e0], sp
    ld b, $68
    inc de
    adc c
    and l
    inc d
    ld d, c
    ld c, [hl]
    ld c, c
    ld e, d
    sub c
    and [hl]
    adc [hl]
    ld l, c
    ld e, h
    jr @-$13

    xor d
    ld a, $ab
    ld a, h
    xor d
    jp nc, $d229

    xor d
    inc d
    ld [hl], d
    ld [hl-], a
    xor e
    ld d, b
    ld hl, $0b9c
    ld a, [hl+]
    ld d, a
    add h
    ld [hl], c
    ld b, c
    inc bc

jr_00d_5f41:
    dec e
    or h
    ld h, d
    rst $20
    inc e
    ld h, d
    or b
    ld b, a
    dec e
    ld a, [hl+]
    ld c, h
    dec bc
    ld [bc], a
    sbc h
    xor h

jr_00d_5f50:
    dec a
    ld [hl], h
    ld [hl], h
    jp c, $d9f1

    rra
    ld e, d
    ld d, l
    cp b
    inc d
    pop af
    sub [hl]
    push af
    dec sp
    sub l
    reti


    ld a, [de]
    db $d3
    and c
    rst $30
    jr @+$20

    sub l
    rrca
    or l
    ld a, a
    db $dd
    ld sp, $aaa1
    add e
    add l
    xor d
    dec bc
    push hl
    ld b, [hl]
    ld [hl-], a
    and e
    inc l
    ld l, b
    sub l
    ld l, b
    jr nz, @-$6a

    and $a2
    ld [$72c3], a
    inc h
    push de
    ld a, [$4d48]
    add hl, hl
    ld b, $37
    and b
    ld b, a
    sub l
    dec l
    dec h
    inc [hl]
    and d
    dec h
    ld h, b
    reti


    ld l, d
    pop bc
    ld [$fd75], a
    jr nc, jr_00d_5f50

    ld e, d
    dec d
    dec b
    add hl, bc
    ld a, [bc]
    ld h, $2d
    ld c, h
    ld l, c
    ld d, h
    dec d
    call nc, $d0af
    sub d
    sub e
    add c
    ld d, h
    dec hl
    ld a, [$4656]
    xor d
    ld [$86e0], sp

Jump_00d_5fb5:
    sub l
    xor b
    adc c
    and d
    ld d, $38
    and l
    ld c, l
    inc [hl]
    adc b
    add sp, -$57
    ld d, l
    ld l, a
    and h
    ldh a, [$9e]
    rla
    inc d
    pop af
    ld d, $3c
    dec d
    ld h, $41
    inc a
    dec bc
    db $eb
    ld h, d
    ld [hl], a
    ld a, [bc]
    ld a, b
    ldh a, [$32]
    ld [hl], a
    jr z, jr_00d_600c

    and h
    ld c, c
    call nc, $c3dd
    ld a, b
    xor h

jr_00d_5fe1:
    ld b, [hl]
    add e
    inc l
    xor c
    adc e
    ld de, $1751
    add sp, $59

Call_00d_5feb:
    db $10
    ld c, c
    ld d, c
    add [hl]
    ld l, e
    add d
    ld de, $6d28
    sbc l
    add hl, hl
    ld c, c
    ld d, $43
    jr nz, jr_00d_5fe1

    call $9aa2
    and c
    ld b, c
    add hl, de
    inc h
    db $e3
    ldh a, [$ba]
    adc d
    ld c, d
    add hl, bc
    or l
    sub e
    dec sp
    pop hl

jr_00d_600c:
    dec c
    or c
    ld [hl], $3a
    or c
    adc l
    ld [bc], a
    ld e, d
    ld e, l
    ld [hl], d
    pop bc
    rla
    ld h, $30
    dec [hl]
    ld c, e
    add d
    ld c, d
    ld a, [c]
    add hl, de

jr_00d_6020:
    adc [hl]
    ld l, a
    add e
    ldh [$b3], a
    ld hl, sp+$20
    ld [$c790], a
    inc b
    adc l
    dec b
    inc hl
    ld a, [hl-]
    db $10
    ld e, l
    inc e
    ld [hl], e
    ld h, $0a
    inc e
    db $10
    rst $20
    ld b, h
    inc de
    ld d, b
    jr nc, jr_00d_6064

    adc d
    or c
    inc a
    sbc l
    pop af
    add hl, sp
    ld de, $a5df
    cp c
    ldh [$ca], a
    ld [de], a
    ld d, b
    ld b, h
    cp c
    sub l
    ld d, h
    add sp, $7b
    rst $38
    ld [$70e5], sp
    sbc d
    adc [hl]
    dec h
    ld d, h
    ld a, [hl+]
    ld [$dd58], sp
    ld a, [$0eaa]
    xor d
    scf
    ld a, b
    ret


jr_00d_6064:
    ld [$931a], sp
    sub c
    ld [$232c], sp
    sbc l
    adc b
    xor h
    ld [de], a
    jr @-$1c

    xor c
    ld d, $19
    adc l
    xor l

jr_00d_6076:
    rlca
    and b
    and [hl]
    ld b, l
    ld c, b

jr_00d_607b:
    ld e, b
    adc $d7
    push de
    ld h, b
    sub h
    inc hl
    adc [hl]
    xor d
    ld l, $f6
    ccf
    ld [$c99c], sp
    add hl, hl
    db $d3
    dec [hl]
    ld d, [hl]
    ld [hl], h
    jr nz, jr_00d_6020

    db $ec
    ld l, h
    sub b
    add l
    pop bc
    xor a
    cp $6a
    rst $38
    db $fc
    ld [hl], $85
    ld d, h
    add hl, de
    adc d
    rst $18
    rst $38
    and c
    ld a, h
    rst $18
    ld_long a, $ff6b
    ld a, [$0fa1]
    rst $38
    sbc c
    ld l, a
    db $fc
    rst $38
    ld l, h
    rst $38
    db $fc
    ld h, d
    rst $38
    rst $18
    rst $18
    and h
    ld d, l
    ld b, [hl]
    or h
    adc l
    rst $30

jr_00d_60bd:
    dec bc
    ld a, [$dd70]
    ld e, h
    ld h, c
    ld l, c
    db $db
    inc b
    ld a, [hl]
    ld [de], a
    ld h, [hl]
    cp [hl]
    ld bc, $38f9
    inc d
    and $55
    pop hl
    add d
    ld [hl-], a
    or h
    adc d
    jr c, jr_00d_6076

    xor d
    daa
    add hl, de
    ld [hl-], a
    cp d
    add hl, de
    scf
    ld d, d
    ld d, h
    pop hl
    and l
    inc b
    adc d
    add hl, sp
    jr nc, jr_00d_607b

    db $10
    call z, $a6aa
    add hl, bc
    ld d, a
    ld c, l
    jp nc, $8c30

    ld d, [hl]
    and d
    and b
    ld c, b
    ld a, [$a230]
    ld [hl+], a
    jr jr_00d_60bd

    and c
    ld h, d
    jp nc, $d426

    cp d
    dec b
    inc b
    dec a
    ld c, h
    ret c

    pop bc
    ld l, h
    sub h
    jp nz, Jump_000_1dd8

    call z, $8cda

jr_00d_610f:
    jr jr_00d_6139

    adc d
    ld sp, $8696
    sub l
    ld l, c
    ld hl, $5749
    ld [$9594], a
    dec sp
    cpl
    ld [$9031], a
    ld c, e
    ld d, e
    add [hl]
    ld a, [hl+]
    ld c, d
    ld d, a
    rst $38
    ld c, c
    ld c, b
    sbc d
    sub l
    inc [hl]
    sub d
    and l
    ld a, [$858a]
    ld hl, sp-$3f
    ld e, d
    inc [hl]
    sub e
    add [hl]

jr_00d_6139:
    ld [$8c25], sp
    xor b
    reti


    ld a, [hl+]
    ld d, l
    ld d, [hl]
    adc c
    add c
    ld b, c
    adc b
    adc a
    ld a, [de]
    sub c
    ld c, d
    sub c
    ld d, e
    ld [hl], $39
    dec d
    ld [hl+], a
    ld d, d
    ld d, c
    cp l
    ld d, l
    ld a, [hl]
    jr nc, jr_00d_61ab

    ld b, $a5
    ld b, c
    ld l, b
    xor b
    xor e
    ld b, d
    xor d
    add [hl]
    dec h
    ld h, b
    ld e, l
    jr nc, jr_00d_610f

    ld c, e
    sub c
    sub a
    or l
    ld d, l
    adc b
    rst $38
    ld a, [$e939]
    ld b, c
    add d
    and l
    ld d, [hl]
    xor b
    ldh a, [$63]
    push hl
    scf
    ret nz

    ld [$a770], a
    ld a, [hl-]
    jr z, @+$32

    reti


    sub [hl]
    sub c
    add [hl]
    ld [hl], c
    jr nc, jr_00d_61f1

    ld de, $a319
    ld [hl], a
    ld hl, $0f9c
    rst $00
    inc l
    add d
    jr @-$5d

    sbc e
    ld b, l
    ld [$a64f], a
    ld a, [bc]
    dec d
    ld h, c
    ld e, b
    jp hl


    sub d
    ld d, e
    inc l
    ld c, d
    sub b
    add [hl]
    and b
    sub l
    sub l
    ld h, [hl]
    ld sp, $e92a
    inc e
    rrca
    add h

jr_00d_61ab:
    jr nc, jr_00d_61d3

    ld d, $cd
    sub a
    or c
    cpl
    ld a, [c]
    ld e, l
    ld h, h
    ld sp, $295d
    ld de, $0b84
    ld b, b
    sub d
    and l
    db $eb
    ld b, l
    dec [hl]
    sbc e
    pop de
    jr nc, jr_00d_61f9

    adc h
    sbc c
    inc hl
    add l
    ld e, [hl]
    adc e
    ld h, a
    ld a, [hl-]
    ld c, a
    db $e3
    add hl, de
    ld e, l
    sub [hl]
    xor c

jr_00d_61d3:
    pop bc
    ld b, [hl]
    adc d
    add a
    ldh [$98], a
    jp $a652


    sub d
    ld e, e
    push af
    dec d
    db $10
    jp hl


    ld de, $2685
    ld [hl], d
    ld c, h
    ld l, c
    ld [bc], a
    add l
    adc d
    ld h, a
    add hl, hl
    adc [hl]
    sbc h
    ld d, h
    add [hl]

jr_00d_61f1:
    ld de, $62ba
    jp z, $376b

    dec de
    and [hl]

jr_00d_61f9:
    ld l, d
    ld [de], a
    jp nc, $adaa

    ret nz

    db $e4
    jp z, $c161

    add d
    ld b, e
    dec h
    call nc, Call_00d_64a8
    inc [hl]
    or e
    sub e
    dec h
    add sp, -$2b
    dec de
    ld [hl], $61
    inc b
    push hl
    and l
    pop bc
    xor d
    ld d, d
    and b
    db $d3
    inc e
    db $f4
    and h
    ld sp, $4913
    ld de, $54e0
    ld a, h
    sbc b
    ld b, h
    cp d
    call nc, Call_00d_5feb
    and e
    and c
    ld a, d
    ld a, [hl-]
    sbc [hl]
    adc [hl]
    or a
    adc [hl]
    ld c, e
    push de
    rst $38
    adc [hl]
    ld h, l
    ld a, [bc]
    ld d, e
    xor [hl]
    add l
    ld c, d
    push de
    add hl, sp
    ld a, $33
    and h
    ld e, b
    and $d5
    add hl, bc
    and e
    ld h, l
    add hl, hl
    ld c, d
    and b
    db $d3
    ld a, e
    cp d
    ld [$a8c6], sp
    sbc $d5
    ld c, d
    ld d, c
    cp h
    db $e4
    ld e, c
    ld a, b
    db $eb
    xor d
    inc a
    db $dd
    sub $9d
    xor e
    inc b
    ld [hl], h
    xor h
    db $76
    ld sp, $c7da
    ld h, $1a
    inc c
    or h
    ld [hl], e
    ld l, b

jr_00d_626c:
    ld b, b
    and a
    ld e, h
    dec c
    rst $00

Jump_00d_6271:
    ld h, a
    add h
    ld h, e
    xor d
    db $76
    ld a, d
    add h
    sbc e
    add sp, $26
    sbc b
    jp z, Jump_00d_7e6d

    add d
    ld h, [hl]
    rst $00
    dec b
    ld [hl], b
    ld c, c
    ld c, $45
    inc e
    sbc l
    pop bc
    dec e
    sub b
    rst $00
    sbc d
    ld h, [hl]

jr_00d_628f:
    cp c
    dec d
    ld e, e
    adc a

jr_00d_6293:
    dec hl
    ld l, c
    add c
    jr c, jr_00d_62ab

    and d
    inc hl
    ld h, c
    ld c, h
    push de
    pop bc
    ld c, [hl]
    ld [hl], l
    dec c
    daa
    rst $38
    ld d, [hl]
    ld [$390a], a
    dec d
    ld h, b
    ld d, [hl]

Jump_00d_62aa:
    inc hl

jr_00d_62ab:
    rst $38
    add $30
    db $e3
    ld d, l
    cp l
    ld b, e
    db $e4
    ld de, $d061
    and [hl]
    ld d, b
    ld e, d
    ld d, e
    dec d
    ld d, [hl]
    adc c
    xor b
    ld a, b
    rst $10
    jr jr_00d_6293

    rst $38
    db $d3
    ld e, b
    ld a, b
    sbc d
    dec h
    ld h, $8b
    cp a
    scf
    ld c, d
    and e
    ld a, [bc]
    daa
    jr nc, jr_00d_628f

    ret c

    adc $f4
    sbc b
    ccf
    jp $eacd


    adc l
    ld a, [de]
    push de
    inc b
    call $3352
    ld [hl], l
    dec l
    adc b
    ld b, [hl]
    jr jr_00d_626c

    ld [hl-], a
    ld d, e
    ld a, c
    ld c, d
    ld e, b
    ld [de], a
    ld d, e
    inc b
    db $e3
    ld e, l
    sub b
    xor d
    add l
    rrca
    pop de
    xor b
    ld a, [hl+]
    ld hl, $68a4
    pop bc
    ld h, l
    pop af
    xor d
    sub l
    ld b, $29
    ld b, e
    ld [hl+], a
    add hl, hl
    jp nc, $e8e5

    jr nz, jr_00d_628f

    ld d, h
    ld [de], a
    ld [de], a
    ld l, b
    xor c
    ld d, b
    db $d3
    dec b
    ld h, l
    ld h, [hl]
    ld a, [hl]
    xor d
    ld a, d
    dec d
    and b
    sub d
    ld a, [hl+]
    or b
    and e
    rlca
    sub [hl]
    add d
    add l
    ld d, d
    ld l, d
    add l
    sub b
    and b
    ld c, d
    adc h
    ld l, d
    adc c
    and c
    sbc d
    db $d3
    ld c, $81
    ld c, [hl]
    push hl
    daa
    push bc
    db $fd
    ld c, $0a
    ld a, [hl-]
    jr z, @-$76

    ld d, h
    adc d
    ld [hl+], a
    add [hl]
    ld c, [hl]
    xor e
    push de
    call $9320
    cp d
    and b
    ld h, h
    ld l, c
    ld d, [hl]
    db $e3
    call nz, $eaaf
    xor b
    pop hl
    sbc l
    ld sp, $a3e5
    ld a, [$2771]

Jump_00d_6355:
    ld e, [hl]
    rla
    add d
    ld h, [hl]
    adc d
    sbc l
    adc e
    ld sp, hl
    ld l, $2c
    dec hl
    ld sp, hl
    ret z

    sub b
    and c
    ld a, a
    add d
    xor a
    ld b, b
    cp a
    rst $38
    sbc e
    ld hl, $e08a
    ld a, [$c314]
    ld hl, $7f4b
    pop af
    sbc d
    ld e, a
    rst $38
    rst $38
    ld [hl-], a
    ld h, a
    ld hl, $987c
    ret nz

    cp c
    ccf
    rst $38
    rst $38
    add [hl]
    ld d, a
    db $10
    add sp, -$5a
    inc sp
    ld sp, hl
    ld e, a
    rst $38
    rst $30
    db $e3
    sub e
    sub c
    rlca
    add d
    ld h, d
    add l
    dec d
    rst $38
    rst $38
    ld de, $82e3
    xor b
    jr z, jr_00d_63db

    add hl, de
    jp $feff


    ld b, l
    ld a, b
    ld [hl-], a
    ld b, [hl]
    scf
    ld hl, sp-$5a
    push af
    rst $38
    rst $28
    rst $38
    pop bc
    ld a, $b4
    ld c, $18
    xor b
    ld h, $f7
    rst $38
    rst $38
    adc h
    scf
    ei
    rst $38
    add e
    cp $68
    sub c
    xor l
    ld d, l
    ld b, d
    sbc $d7
    db $fd
    inc bc
    rst $38
    ld a, [$b266]
    and $13
    xor a
    and b
    xor l

jr_00d_63ce:
    ld h, c
    ld a, a
    rst $38
    jr @+$43

    cp l
    inc h
    and h
    scf
    rst $38
    add d
    ldh [$93], a

jr_00d_63db:
    rst $10
    add $08
    ld [hl], b
    ld hl, $1711
    dec b
    ld d, b
    ld e, [hl]
    ld e, $e5
    and [hl]
    inc l
    ld de, $0851
    xor c
    adc d
    ret c

    ld [hl], h

jr_00d_63f0:
    ld [hl], e
    call nz, Call_00d_6d41
    db $fc
    inc [hl]
    ld b, a
    jp hl


    ret nc

    sub b
    sub c
    add d
    ld c, [hl]
    and e
    ld b, $75

jr_00d_6400:
    xor c
    rrca
    inc h
    ld d, b
    ret c

    jr c, jr_00d_644e

    ld e, h
    dec e
    ld a, [de]
    ld a, [hl]
    ld de, $48e1
    ld a, $8d
    daa
    sub c
    dec e
    jr nz, jr_00d_6459

    cp d
    sub a
    jr nc, jr_00d_63ce

    ld c, l
    rst $18
    ld [$ddce], sp
    ld d, e
    ld a, [hl+]
    ld hl, $a031
    ld d, b
    ld l, l
    rst $38
    or $86
    jr jr_00d_63f0

    db $db
    ld a, d
    ld l, $05
    add c
    ld d, e
    dec sp
    and e
    ld d, [hl]
    sub l
    ld a, [hl-]
    and [hl]
    ld [$3f3b], a
    ld c, h
    dec d
    ld [hl-], a
    ld l, d
    ret z

    ld [hl], b
    ld l, b
    cp b
    rra
    ld sp, hl
    ld [hl+], a
    ld e, d
    add c
    cp $53
    dec bc
    and $82
    ld b, c
    ld b, [hl]
    inc c

jr_00d_644e:
    cpl
    db $f4
    adc $bd
    sbc l
    db $76
    dec b
    rlca
    adc $8a
    add d

jr_00d_6459:
    adc [hl]
    ei
    ld e, c
    adc [hl]
    jp z, $1f8f

    ld a, b
    sbc b
    jr nz, jr_00d_6400

    jr z, jr_00d_64ac

    jr z, jr_00d_64b5

    add d
    ld [hl], b

Call_00d_646a:
    and [hl]
    ld d, $0c
    ei
    jp z, $acb0

    ld d, $9a
    ld c, h
    ld sp, $0b71
    pop af
    xor h
    jp nc, $3f61

    cp $6b
    ld [hl+], a
    sbc b
    ld e, h
    push af
    dec de
    pop de
    sbc l
    ld a, [de]
    and h
    dec h
    or [hl]
    ld b, d

jr_00d_648a:
    and b
    add $3c
    ld a, $95
    ld b, c
    cp d
    db $db
    ld h, $38
    ld [hl], d
    rrca
    ld d, c
    jr z, jr_00d_64c5

    or d
    ld l, c
    ld h, c
    ret c

    jp z, $d7fb

    rst $00
    ld b, h
    ld [$1da3], sp
    ld d, b
    ld l, e
    rra

Call_00d_64a8:
    inc c
    ld [hl], a
    cp e
    sub l

jr_00d_64ac:
    ld b, c
    ld d, b
    ld e, e
    db $fd
    ld c, c
    ld a, [hl]
    add hl, sp
    push de
    xor e

jr_00d_64b5:
    xor $a2
    ld [hl+], a
    inc h
    ld l, e
    ret c

    inc d
    db $e4
    ld l, d
    add hl, hl
    ld [$812e], sp
    ld d, l
    ld [hl+], a
    ld c, b

jr_00d_64c5:
    ld b, d
    dec b
    and d
    sub h
    pop bc
    and e
    ld b, l
    db $76
    ld c, d
    and l
    ld a, [bc]
    add l
    inc b
    inc d
    add a
    xor d
    ld d, b
    ld h, e
    ld e, c
    or b
    or h
    adc $92
    push af
    ld a, [de]
    ld [hl], d
    jr nc, jr_00d_648a

    inc sp
    ld e, d
    cp a
    db $e3
    ld e, b
    and l
    ld b, l
    ld h, c
    add e
    ld e, $7d
    ld d, d
    jr jr_00d_654d

    pop bc
    add e
    db $e3
    jr c, @-$78

    adc h
    sub b
    add c
    xor d
    inc hl
    ld h, d

jr_00d_64fa:
    ldh [$a0], a
    ld h, l
    ld hl, $1455
    ret


    ld b, c
    dec h
    add d
    ld hl, $b568
    ld [$5b54], sp
    ld [$26af], a
    ld d, c
    and b
    add c
    jr jr_00d_6572

    xor b
    ld h, e
    dec de
    ld [c], a
    sbc b
    pop bc
    dec d
    ld b, $a2
    inc d
    xor d
    ld [$da98], sp
    inc b
    adc $94
    sub l
    ld c, c
    ld [hl], d
    ld a, b
    ld [de], a
    ld d, l
    xor c
    ld c, c
    and a
    inc b
    ld [hl+], a
    add sp, -$6c
    dec [hl]
    add d
    xor d
    adc d
    ld c, h

jr_00d_6535:
    ld d, h
    adc c
    jr jr_00d_64fa

    ld a, [hl+]
    ld h, $31
    and b
    ld c, c
    ld d, d
    ld d, $a9
    adc d
    sub d
    and e
    inc [hl]
    ld [hl+], a
    ld h, $88
    ld e, d
    cp l
    ld l, d
    dec h
    adc h

jr_00d_654d:
    and l
    ld h, d
    ld d, d
    sub d
    jp hl


    ld c, c
    ld d, h
    inc de
    scf
    sub e
    ld l, c
    ld a, [de]
    xor b
    pop bc
    inc sp
    ld c, l
    ld l, b
    inc de
    ld e, c
    sub h
    rst $10
    ld [c], a
    xor l
    ld c, h
    sbc $04
    sbc $42
    ld c, h
    ld [c], a
    ld l, a
    ld e, b
    push bc
    ld a, b
    jr @-$69

    xor d

jr_00d_6572:
    jr nc, jr_00d_6535

    ld [hl], l
    ld c, h
    push de
    xor l
    ld d, l
    cp $da
    dec b
    xor b
    cp d
    dec b
    and d
    ld l, l
    ld h, h
    jp z, $2a74

    or [hl]
    and d
    ld [hl], h
    sub $25
    ldh [rSCY], a
    or d
    ld h, e
    dec d
    ld a, [bc]
    adc e
    ld d, [hl]
    adc l
    dec [hl]
    ld a, [hl]
    dec c
    ld c, c
    ld b, [hl]
    inc sp
    ld l, d
    ld d, d
    xor d
    xor c
    ld c, h
    ld e, d
    adc d
    add l
    ld h, c
    call Call_000_196d

jr_00d_65a5:
    ld d, e
    add hl, hl
    ld d, l
    ld h, b
    and l
    ld d, l
    ld l, b
    sub [hl]
    scf
    cp l
    ld b, [hl]
    xor c
    ld d, e
    adc c
    ld c, d
    ld h, e
    sub d
    cp l
    ld c, d
    xor d
    ld d, l
    ld d, [hl]
    xor d
    add c
    dec d
    adc [hl]
    xor d
    db $fd
    ld d, l
    inc sp
    ld d, [hl]
    jp c, $2a3c

    xor e
    rst $38
    rst $38
    ld [$0d8e], a
    ldh [$a0], a
    add d
    ld [$c04a], sp
    sub d
    pop hl
    sbc l
    ld c, d
    dec d
    ld d, b
    ld [hl], b
    ld b, b
    push bc
    ld b, b
    set 7, c
    jp z, $f4af

    add d
    dec sp
    add d
    ld l, l
    inc b
    cp $5a
    ld h, d
    cp e
    ld b, [hl]
    db $10
    ld [hl-], a
    ld [de], a
    ld b, l
    inc l
    add hl, bc
    db $10
    ld d, e
    push hl
    jr c, jr_00d_6657

    adc e
    jr nc, jr_00d_65a5

    ld d, l
    ld a, [hl+]
    rrca
    and [hl]
    ld e, e
    and d
    add a
    ld h, h
    ld h, c
    ld h, b
    ld hl, sp+$70
    ld l, d
    cp a
    and b
    db $f4
    inc l
    add [hl]
    ld h, e
    ld de, $2148
    cp b
    jp hl


    ld a, b
    ld b, b
    and c
    ld d, d
    db $fc
    ld b, h
    dec bc
    add [hl]
    add hl, sp
    sbc h
    sub e
    inc de
    inc de
    ld b, c
    inc b
    ld sp, $4c2c
    ld [de], a
    ld d, $f6
    dec hl
    xor c
    ld a, d
    ld d, e
    sub l
    adc h
    sub b
    add e
    rla
    inc h
    pop bc
    ld b, b
    and e
    ld d, b
    ldh [$82], a
    add d
    dec a
    add d
    ld c, [hl]

jr_00d_663b:
    ld b, d
    ld b, h
    ld h, l
    ld b, $91
    ld sp, $d09e
    ld hl, sp-$32
    call nz, $32e4
    ld l, h
    and c
    sbc e
    ld e, b
    or e
    add d
    dec de
    ld h, $71
    xor [hl]
    ld d, $12
    ld h, a
    ld b, e
    ret nc

jr_00d_6657:
    ld h, c
    ld h, c
    ld b, [hl]
    xor d
    dec c
    ld h, b
    sbc c
    ld c, c
    or d
    or d
    inc [hl]
    ld h, h
    add h
    jp Jump_000_3003


    ld c, c
    add $a4
    jr z, jr_00d_66b0

    ld l, b
    push de
    jr nc, @+$47

    ld d, e
    inc d
    and h
    or h
    ld l, h
    adc h
    sub e
    pop hl
    ld h, $78
    jp nz, Jump_00d_5fb5

    jp Jump_00d_5626


    or d
    push hl
    ld l, b
    ld b, [hl]
    sub [hl]
    ld d, $65
    ld b, $84
    xor c
    dec hl
    db $dd
    ld sp, $e650
    adc b
    xor c
    sbc h
    ldh [$8f], a
    ld a, a
    ld b, h
    ld e, c
    dec sp
    inc bc
    jr jr_00d_663b

    ret nz

    pop af
    cp a
    ldh [$c9], a
    or [hl]
    cp b
    add hl, hl
    inc c
    pop bc
    ld hl, $2ac6
    sub c
    ld hl, $100e
    and l
    dec h
    pop hl
    and c

jr_00d_66b0:
    ld d, b
    ld hl, $97ce
    call nc, $9744
    dec d
    inc de
    add $30
    ld b, c
    ld d, b
    ld c, a
    ld d, b
    or h
    and l
    ld [hl], d
    dec hl
    ld b, [hl]
    ld l, h
    ld h, a
    adc l
    jr z, @+$7b

    ld d, l
    add hl, hl
    ld [hl], d
    ld de, $e9a2
    or h
    sub c
    cpl
    jr @-$2c

    xor l
    ld h, b
    xor d
    xor d
    ret nc

    inc l
    ld [hl], b
    jr nc, jr_00d_6701

    ld b, e
    ldh [$aa], a
    ld h, b
    cp b
    xor d
    ret nc

    inc a
    ld [hl], d
    ld b, b
    ret nz

    add d
    xor a
    ld d, b
    ld a, a
    pop hl
    ld d, l
    db $10
    add l
    rst $00
    ld d, h
    ld [$d970], sp
    and d
    add h
    add h
    ld a, b
    ld d, c
    inc de
    ld d, l
    ld d, h
    jp Jump_000_001c


    ld b, h

jr_00d_6701:
    cp c
    sub l
    rst $38
    ld [hl-], a
    ld [hl], h
    ret


    ld a, [$f3a5]
    ld d, h
    add $f5
    ld a, d
    ld d, e
    ld a, [hl+]
    add c
    ld sp, $0f57
    add sp, -$32
    and l
    ld hl, $b67e
    inc [hl]
    or h
    ld l, b
    ld a, a
    and d
    daa
    add c
    ld a, h
    or l
    or h
    adc b
    jp nz, $bd87

    ld c, h
    dec l
    cp h
    push bc
    ld a, e
    ld l, d
    inc c
    jp z, Jump_00d_4bdb

    ld h, l
    add l
    db $ec
    jp nc, Jump_000_3082

    ld b, e
    push af
    ld a, b
    push de
    ld b, c
    ld d, h
    sub [hl]
    pop af
    ld d, h
    jp c, $d9c3

    ld [hl+], a
    ld c, $22
    jr c, jr_00d_6773

    call c, $a235
    inc l
    push hl
    ld d, a
    ld hl, sp-$15
    xor d
    inc a
    ret


    ret nc

    add $a8
    ld h, $4c
    add h
    ld [$647a], sp
    adc d
    ld h, l
    inc b
    inc de
    db $fc
    ld h, a
    ld a, [bc]
    ld h, d
    adc d
    dec de
    ld d, c
    add $83
    db $fc
    ret nz

    cp [hl]
    ld e, l
    inc de
    rlca
    rlca
    rst $38
    ret nz

jr_00d_6773:
    db $dd
    jp hl


    ld [hl], c
    ld c, h
    rrca
    rst $38
    jp Jump_00d_51ed


    xor h
    rrca
    jp nz, $35da

    ld c, h
    ld l, a
    ld a, d
    rra
    rst $10
    ld a, [bc]
    add hl, hl
    xor h
    rrca
    ei
    ld hl, sp-$40
    sbc h
    ld d, e
    rst $10
    rst $38
    and d
    adc d
    ld [hl], b
    and b
    or a
    sbc $e4
    and a
    inc e
    jr jr_00d_6817

    rst $00
    ld e, [hl]
    inc l
    ld a, h
    ld e, b
    ld [hl], a
    or a
    ld a, d
    or e
    adc c
    ld c, [hl]
    push de
    db $db
    ld d, l
    dec h
    ld d, h
    jp $d3ee


    sbc c
    ld h, c
    ld d, a
    ld l, d
    rla
    xor d
    adc d
    ld l, [hl]
    add c
    and e
    adc l
    db $fd
    xor c
    adc l
    ld d, h
    add [hl]
    push de
    and [hl]
    and e
    add c
    cp [hl]
    adc d
    sub h
    dec h
    ld hl, $5bc8
    ld h, d
    sub [hl]
    and e
    ld d, [hl]
    ld e, b
    jp nc, $a507

    ld c, c
    ret c

    sbc e
    cp [hl]
    ld d, e
    ld b, l
    adc [hl]
    ld c, $60
    ld d, d
    jr nz, jr_00d_6826

    or h
    ld a, [hl-]
    ld d, h
    sub $36

jr_00d_67e3:
    ld a, l
    ld h, d
    ld e, $a0
    ld b, d
    rst $10
    or a
    add sp, -$14
    cp h
    xor c
    ld l, d
    and l
    and b
    ld a, d
    inc a
    dec [hl]
    add hl, de
    ld a, [de]
    sub $05

Jump_00d_67f8:
    and e
    dec [hl]
    dec sp
    xor l
    ld d, [hl]
    dec h
    ld h, c
    ld d, h
    sub a
    pop bc
    ld d, e
    sbc l
    ld b, l
    ld d, a
    ld a, e
    cp a
    ld e, l
    jp nc, Jump_00d_7c17

    inc de
    sbc c
    rla
    ld b, $97
    ld e, [hl]
    ret z

    cp b
    ld d, $21
    rlca

jr_00d_6817:
    ld a, [hl-]
    ld a, d
    sub c
    xor b
    ld a, d
    rst $00
    ld a, e

Call_00d_681e:
    cp $c5
    db $e3
    sbc d
    add d
    or e
    ld a, [hl+]
    ld [hl], a

jr_00d_6826:
    ld sp, hl
    ld l, c
    ld h, b
    xor b
    jp hl


    or $48
    ret nc

    sbc $82
    adc h
    ld a, [hl+]
    adc [hl]
    cp a
    rst $38
    rst $10
    rst $38
    ld [hl], $aa
    ld a, [hl-]
    xor a
    xor a
    rst $38
    db $e3
    add c
    ld d, h
    db $ec
    sub c
    cp l
    xor e
    ld c, b
    ld c, a
    ld e, $d9
    ld l, d
    push af
    ld b, c
    add sp, -$3b
    ld d, h
    push bc
    jr c, jr_00d_68b0

    xor b
    add [hl]
    ld c, $81
    db $e3
    inc [hl]
    jp z, $cdb4

    ld l, b
    ld [de], a
    jr jr_00d_67e3

    ld d, b
    call nc, $34ca
    cp [hl]
    inc b
    inc d
    ld d, $af
    ld a, [$d277]
    ccf
    db $fc
    call $af34
    rst $38
    rst $28
    db $e3
    ld a, [bc]
    ld d, c
    ld [hl], a
    and e
    add hl, hl
    jr c, jr_00d_6899

    and b
    add d
    ld [hl], $bd
    rst $18
    ld c, h
    ld d, h
    ld a, [c]
    db $eb
    ld c, h
    ld h, e
    db $ed

Jump_00d_6885:
    rst $20
    inc d
    sbc [hl]
    jp nc, Jump_00d_704a

    ld h, a
    ld c, e
    ld c, $d2
    ld c, d
    scf
    and [hl]
    sub a
    inc e
    adc b
    ld b, l
    xor c
    sub a
    add hl, de

jr_00d_6899:
    ld b, e
    rlca
    inc e
    inc l

Call_00d_689d:
    ld l, d
    sub h
    cp b
    and [hl]
    reti


    pop hl
    ld c, d
    ld d, $70
    ld sp, $e2e1
    ld hl, sp-$3a
    dec hl
    ld [hl], c
    call c, $d0c2

jr_00d_68b0:
    ei
    ld d, $d8
    ld b, a
    add e
    ld c, $0d
    ccf
    adc d
    add d
    ld a, b
    rst $30
    adc h
    ld c, a
    sub c
    and $c9
    reti


    ld l, b
    inc hl
    db $e4
    ld [hl-], a
    ld l, b
    sub d
    sbc h
    add sp, $3c
    ld b, l
    ld [de], a
    sub d
    and [hl]
    ld d, c
    call nc, $36b1
    or l
    inc b
    add hl, sp
    sub e
    add d
    ld [hl], h
    call nz, $913f
    ld a, [hl-]
    sub h
    add a
    add h
    ld [$9dc0], sp
    ld e, e
    ld a, [hl]
    sub c
    ld d, h
    inc [hl]
    ld h, c
    ld h, a
    ld [hl], e
    dec c
    inc de
    ld sp, $76be
    or c
    ld a, [hl-]
    ret nz

    sbc h
    add hl, sp
    db $db
    inc de
    xor h
    ld a, d
    jr c, @+$5a

    dec hl
    rst $20
    and a
    xor b
    add hl, hl
    ld c, c
    and h
    sbc l
    adc [hl]
    xor b
    pop af
    dec bc
    add $b1
    ret nc

    add l
    adc l
    inc bc
    db $10
    sbc l
    pop af
    sbc [hl]
    ld sp, $2130
    ld a, d

jr_00d_6915:
    rla
    dec e
    or b
    ld b, e
    inc e
    rla
    ld [hl-], a
    ld a, e
    ld sp, $d0f9
    ld h, [hl]
    cp [hl]

jr_00d_6922:
    push de
    ld l, d
    xor d
    ld c, a
    ld de, $34a3
    db $ec
    ld b, c
    db $dd
    ld [hl], $53
    xor a
    rst $38
    or e
    ld l, [hl]
    ld a, [hl-]
    sub b
    add d
    jr c, @+$3a

    dec e
    inc b
    ld [c], a
    sbc b
    rst $20
    add d
    add sp, -$1f
    add l
    sub e
    xor c
    ret nc

    ld [hl], e
    dec d
    ld b, a
    dec sp
    xor a
    db $f4
    jp nz, Jump_00d_4a2a

    and h
    and $bf
    jr nc, jr_00d_699d

    inc hl
    ld [$fce6], sp
    pop bc
    inc a
    ld h, h
    inc hl
    inc c
    ldh [$4e], a
    ld l, e
    ld c, h
    ld [hl+], a
    ret c

    and [hl]
    ld a, [hl-]
    cpl
    ld c, d
    sub d
    jr jr_00d_6915

    dec sp
    inc l
    cp a
    add hl, de
    inc a
    ld b, h
    jp nz, $a391

    jp nz, $bd4c

    inc a
    rst $28
    ret z

    ld c, [hl]
    inc [hl]
    inc de
    ld c, b
    jp z, Jump_00d_41e9

    inc d
    ret


    call c, $833f
    ld c, h
    inc hl
    ld c, e
    ld l, a
    cp l
    db $dd
    ld e, e
    add d
    ld [$af20], sp
    ld b, a
    ld h, h
    jp nc, Jump_000_1826

    jr nz, jr_00d_6922

    jr jr_00d_69c0

    inc c
    db $f4
    and $89
    cp e
    ld [hl-], a
    ld e, d

jr_00d_699d:
    ld [hl], e
    ld [hl-], a
    add hl, de
    ld [$2f33], sp
    and b
    sub b
    call z, $31c8
    xor d
    inc c
    call z, $d5ef
    ld d, l
    add sp, $20
    rst $08
    db $ec
    ld l, b
    call $ffb3
    ld b, l
    ld d, l
    ld e, e
    ld de, $a63f
    sub e
    cpl
    rst $38
    ld sp, hl

jr_00d_69c0:
    adc d

Jump_00d_69c1:
    xor a
    ret nz

    adc a
    db $fc
    sbc b
    inc h
    rst $08
    rst $38
    rst $18
    dec h
    ld c, b
    rst $38
    db $ec
    add a
    ld a, [c]
    ld h, b
    call $d4bf
    ld de, $9332
    rst $18
    rst $38
    rst $38
    ld [hl], d
    add hl, bc
    ld a, e
    rst $38
    dec de
    ld d, l
    ld de, $ff57
    xor a
    call z, Call_000_0743
    and b
    ld sp, hl
    call $ff5f
    cp $c8
    cp a
    adc [hl]
    ld e, a
    and a
    dec e
    rst $38
    cp $e4
    ld a, $4c
    sub l
    ld a, [$5771]
    rst $38
    db $e4
    cp c
    xor h
    ld [hl], e
    rst $38
    db $fc
    adc e
    jp hl


    pop hl
    rst $18
    db $fc
    adc e
    jp hl


    ld l, c
    add d
    ld c, d
    ld [hl], b
    rst $38
    jp hl


    ld e, $92
    ld sp, hl
    ld [$3530], sp
    dec b
    ld c, d
    ld l, c
    ld a, a
    db $e4
    ld e, a
    adc a
    inc de
    ld d, b
    db $e4
    dec [hl]
    ld c, e
    sbc d
    rst $18
    sub b
    rst $18

jr_00d_6a26:
    add h
    sbc b
    ld [hl], c
    ld l, d
    sub c
    sbc d
    rst $38
    ld a, [bc]
    dec c
    jp hl


    sub [hl]
    ld d, h
    ld b, l
    ld h, [hl]
    rst $08
    ret z

    pop bc
    ld a, a
    and c
    sub [hl]
    sub h
    xor e
    ld a, [bc]
    and [hl]
    ld c, l
    call nz, $ffb3
    ld a, [hl+]
    ld d, h
    add d
    ld de, $ff0b
    ld a, [$36a4]
    sub c
    scf
    ld a, a
    rst $38
    cp $aa
    cp e
    rst $38
    rst $38
    rst $38
    ld a, [$24b3]
    push de
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    call c, $cdd4
    rst $38
    rst $38
    adc d
    ld [$117f], sp
    ld e, [hl]
    rst $18
    ld [hl], h
    dec c
    inc d
    add [hl]
    ld b, a
    ld b, c
    ld b, c
    sbc e
    or e
    ld de, $d01c
    ret nz

    ld d, l
    cp l
    scf
    inc a
    ld d, a
    inc a
    sbc e
    ld d, e
    or [hl]
    jp nc, $1a28

    db $e4
    ld [$d45b], a
    ld d, h
    ld hl, $6a49
    sub h
    db $dd
    ld b, c
    or b
    add d
    ret


    sub [hl]
    jr nc, jr_00d_6a26

    ld h, l
    and b
    ld e, [hl]
    or e
    inc c
    add $29
    ld c, e
    ld a, [$e568]
    sub [hl]
    add [hl]
    ld hl, $4ee1
    db $f4
    ld e, $5f
    sub d
    sub a
    daa
    inc sp
    ld c, c
    ld b, c
    ld b, e
    and d
    ld l, a
    jp nz, Jump_000_0c8e

    ld a, [hl+]
    adc b
    ld b, e
    cp [hl]
    xor h
    add h
    db $e3
    sub l
    ld [hl+], a
    or a
    and [hl]
    ld hl, sp+$15
    inc d
    add hl, de
    ld c, d
    ld h, d
    db $e4
    sbc d
    add [hl]
    adc b
    ld b, [hl]
    sub h
    sbc d
    xor b
    ld d, e
    ld l, d
    ld [$181c], sp
    ld d, h
    jp c, Jump_00d_6355

    daa

Call_00d_6ad5:
    adc d

jr_00d_6ad6:
    ld d, e
    cp d
    adc e
    ld d, e
    cp e
    adc c
    or l
    dec sp
    sub e
    inc d
    ld [$9a9e], a
    ld a, b
    adc $9e
    inc sp
    ld [$4977], a
    ld d, a
    ld a, [hl]
    sbc l
    ld [hl], l
    cp d
    dec sp
    ld a, a
    sub [hl]
    xor d
    ld [hl], b
    rst $10
    ld a, a
    ld a, e
    ld a, [hl]
    adc e
    rst $38
    ld a, [$5b6f]
    ld l, d
    ld hl, sp+$5e
    ei
    rst $38
    db $e3
    ld [de], a
    xor c
    add e
    rst $38
    rst $38

Jump_00d_6b08:
    db $eb
    rst $38
    adc e
    sub e
    dec b
    ld de, $ff12
    call nc, $bfaa
    rst $38
    ld sp, hl
    xor [hl]
    cpl
    db $db
    rst $38
    rst $38
    pop hl
    ei
    db $fc
    ld d, e
    ld [hl+], a
    ret nz

    rst $38
    rst $38
    rst $38
    ld d, d
    rst $28
    rst $38
    ld b, l
    and [hl]
    dec c
    push hl
    inc a
    rst $08
    dec sp
    ld e, c
    add d
    jr nc, jr_00d_6ad6

    ldh a, [$3f]
    cp a
    rst $28
    push af
    ld c, d
    ld b, e
    jr jr_00d_6b83

    add e
    rst $38
    add h
    rst $38
    ld b, [hl]
    sub d
    ld d, d
    ld e, l
    rst $38
    rrca
    db $fd
    dec de
    call nz, $3f46
    inc de
    db $fd
    dec e
    cp d
    ld c, e

Call_00d_6b4e:
    db $f4
    ld [hl], a
    ld b, l
    call nc, Call_00d_4677
    ld sp, $44d4
    or [hl]
    ld c, [hl]
    and h
    adc d
    db $d3
    sbc [hl]
    ld [$1788], sp
    ld c, [hl]
    ld l, c
    ld h, $d0
    cp l
    ld c, d
    ld d, e
    jr z, jr_00d_6be6

    ld d, a
    sub c
    ld a, d
    ld e, b
    pop bc
    ld h, $77
    ld [$8daf], a
    push hl
    ld h, $9f
    ld d, l
    or e
    ld l, c
    rrca
    rst $38
    rst $38
    xor d
    ld [hl], e
    add d
    cp l
    ld d, h
    dec d
    ld d, [hl]

jr_00d_6b83:
    ld c, [hl]
    ld c, e
    jp $aeaa


    dec hl
    dec [hl]
    ld a, d
    add c
    ld d, l
    ld d, d
    ld a, [de]
    ld c, h
    ret c

    rra
    ei
    ld d, [hl]
    add c
    adc c
    and e
    ld h, $89
    and c
    ld a, d
    jr c, @+$6e

    cp e
    ld d, b
    di
    or d
    and e
    ret nc

    sbc d
    xor d
    sbc h
    ld [$828c], a
    ld [hl], e
    push bc
    cp e
    sbc h
    jp z, Jump_000_3061

    ld h, $09
    adc d
    ld l, $e9
    ld c, e
    ld hl, sp+$48
    ld b, [hl]
    ld c, $4c
    dec e
    or d
    ld [hl-], a
    add h
    ld l, b
    ld sp, hl
    add h
    ld [de], a
    dec [hl]
    ld d, h
    ld l, e
    ld a, d
    xor d
    cp h
    rla
    ei
    inc e
    rla
    ld e, a
    add h
    dec d
    xor b
    daa
    ld [de], a
    rrca
    ret z

    rst $18
    ld a, [bc]
    sbc e
    rst $38
    db $fc
    db $10
    ld l, d
    inc [hl]
    ld [de], a
    ld h, h
    cp a
    inc c
    jr c, jr_00d_6c2f

    sbc h
    inc l
    ld e, l

jr_00d_6be6:
    db $fc
    ld b, d
    ld [hl], c
    ld b, [hl]
    dec d
    add l
    rra

jr_00d_6bed:
    ld a, [de]
    ld h, [hl]
    cp [hl]
    dec e
    ld a, a
    and l
    inc a
    ld h, a
    and b
    ld h, b
    ld d, a
    sub e
    jp nz, Jump_000_10a2

    ld h, d
    ld h, [hl]
    dec l
    sub e
    add l
    ld l, d
    and b
    xor c
    dec d
    cpl

jr_00d_6c06:
    ld c, c
    ld c, [hl]
    ld h, $34
    ld l, d
    cp l
    ld b, $18
    push hl
    ld b, l
    inc sp
    sub d
    xor h
    pop bc
    jr c, jr_00d_6c06

    adc l
    sbc d
    xor e
    ld h, $49
    ld c, l
    ld d, e
    add [hl]
    jr c, jr_00d_6c38

    sub $2a
    adc [hl]
    inc [hl]
    rst $20
    ld c, c
    and c
    ld c, a
    ld e, $26
    sub b
    adc a
    add hl, de
    ld a, [hl+]
    and e

jr_00d_6c2f:
    adc l
    ld d, h
    db $e3
    ld c, [hl]
    sub [hl]
    xor b
    ld d, e
    adc l

jr_00d_6c37:
    dec sp

jr_00d_6c38:
    ld h, l
    ld d, e
    ld a, c
    inc [hl]
    ld d, e
    ld d, l
    ld a, [hl+]
    ld c, h
    db $e4
    inc hl
    ld h, $14
    inc d
    cp d
    add hl, de
    jr c, jr_00d_6bed

    ret


    ld h, $d9
    ld h, $2a
    ld h, $36
    and l
    ld c, d
    sub d
    ld l, l
    sub c
    ld c, e
    adc l
    sub e
    dec b
    sub a
    ld l, a
    ld d, c
    or a
    adc h
    ld h, l
    adc h
    xor l
    ld d, a
    ld [c], a
    inc d
    sbc d
    rst $38
    and e
    and [hl]
    ld d, [hl]
    ld d, a
    db $e3
    jp z, Jump_000_3eaa

    dec sp
    ld a, h
    ld a, [hl-]
    ld [de], a
    cp b
    daa
    adc h
    pop bc
    dec bc
    inc c
    ld a, [de]
    ld a, b
    ld e, c
    ld d, c
    add l
    jr jr_00d_6ca8

    jp nz, $9184

    sub e
    ld a, [bc]
    ld e, h
    sub d
    and c
    dec de
    xor b
    ld b, l
    ret nz

    push af
    inc b
    and d
    pop bc
    sub c
    inc e
    ld l, $56
    ld c, a
    jr jr_00d_6c37

    xor $44
    ld [hl], b
    call nz, Call_00d_543f
    jp hl


    dec l
    rst $08
    dec b
    inc hl
    inc bc
    sbc e
    jr nc, jr_00d_6cf6

    add e
    db $eb
    ld [hl-], a

jr_00d_6ca8:
    sub $4a
    ld sp, $07b7
    ld b, [hl]
    ld l, d
    ld b, d
    adc l
    ld b, l
    ld h, a
    ld h, h
    ld h, c
    inc de
    ld e, $12
    ld a, b
    sbc e
    jr @-$3a

    and e
    ld [bc], a
    ld d, h
    and a
    ld [hl-], a
    and [hl]
    ld c, e
    ld de, $fd42
    ld [bc], a
    add hl, de
    ret


    ld a, d
    add d
    ld c, $a1
    sub c
    ld b, e
    rla
    add d
    add hl, bc
    xor d
    ld d, l
    ret nc

    ld d, h
    inc de
    db $10
    sub d
    cp b
    ld l, b
    ld c, [hl]
    and [hl]
    ld [hl], h
    sub c
    ld [de], a
    and h
    call c, $f8a3
    ld b, e
    ld b, $46
    ld l, l
    ld [bc], a
    ld c, d
    ld a, [bc]
    ld d, h
    add h
    adc l
    sub a
    ld de, $419b
    adc [hl]
    ld b, l
    dec h
    inc hl

jr_00d_6cf6:
    inc bc
    sbc b
    ld h, d
    sbc h
    ld [hl], c
    ld [$8dca], sp
    ld sp, $d194
    and d
    inc l
    call nz, Call_000_1526
    ld d, c
    push de
    ld h, c
    ld [bc], a
    add e
    ld e, $5c
    ld sp, $c0f1
    ld b, h
    or e
    ld l, d
    and h
    push bc
    ld d, e
    ld d, [hl]
    inc b
    xor c
    ld hl, $8dba
    ld de, $b9e4
    add l
    ld e, b
    call $8927
    ld c, [hl]
    ld b, h
    push bc
    ld b, $3a
    ld [de], a
    add hl, sp
    add c
    add hl, hl
    ld d, e
    ld l, a
    daa
    sub b
    jp z, $3246

    adc b
    adc b
    ret nc

    add d
    ld l, $4d
    ld [hl+], a
    inc e
    ld h, b
    call z, Call_00d_48e3
    ld l, h

Call_00d_6d41:
    call $e004
    sub e
    ld c, a
    add d
    ld c, [hl]
    add hl, bc
    ld d, l
    ld l, b
    ld h, $d1
    adc [hl]
    ld b, a
    ld hl, sp+$14
    cpl
    ld c, [hl]
    ld c, e
    rst $38
    adc d
    adc a
    add l
    ret c

    cp b
    ld a, [hl+]
    ld a, [c]
    jr jr_00d_6d7f

    add d
    ld h, a
    add d
    inc de
    ld [de], a
    call z, Call_000_0f84
    and $18
    or d
    add hl, bc
    ld a, [hl+]
    cp d
    jr nc, jr_00d_6dc4

    ld h, a
    inc a
    db $d3
    pop de

jr_00d_6d72:
    ld [de], a
    inc de
    ld a, [de]
    reti


    reti


    adc h
    ld b, d
    ld b, [hl]
    add hl, bc
    ld l, l
    ld d, d
    ld e, d
    add hl, hl

jr_00d_6d7f:
    db $10
    ld b, h
    ld b, l
    ret z

    ld a, [hl-]
    ld e, h
    ld l, $4a
    and $77
    add $5d
    or b
    ld a, [hl-]
    ld e, d
    add hl, bc
    ld [de], a
    ld h, b
    adc e
    dec b
    dec c
    ld [$12cc], a
    sbc c
    ld b, e

Jump_00d_6d99:
    add e
    inc h
    and d
    jp c, $c90c

    sbc h
    rra
    push de
    rrca
    ld c, l
    inc hl
    sbc b
    ld h, l
    ld e, c
    jr @+$35

    adc e
    ret z

    daa
    ld [de], a
    inc e
    jp Jump_000_1882


    rst $20
    inc c
    ld h, l
    inc b
    ld sp, $80e2
    ld [hl], a
    cp [hl]
    ld sp, $947f
    di
    sbc $85
    ld [hl+], a
    ld c, d
    ld d, l

jr_00d_6dc4:
    inc a
    dec [hl]
    ld hl, $488b
    adc c
    sub e
    ret nz

    ld b, d
    xor b
    ret


    ld [hl-], a
    sub e
    or c
    call nc, $8cdd
    sub e
    xor d
    adc b
    adc [hl]
    inc h
    pop bc
    ld a, [hl-]
    jr z, jr_00d_6d72

    pop hl
    ld b, d
    ld d, d
    sub e
    sbc d
    adc [hl]
    ld a, d
    and a
    ld a, [hl-]
    sub h
    xor b
    ld [$e468], a
    adc [hl]
    ld b, h
    sub $39
    and e
    sub [hl]
    dec [hl]
    adc a
    add hl, sp
    dec a
    adc b
    push af
    ld d, e
    ret c

    adc [hl]
    ld d, l
    ld d, h
    jp z, Jump_000_393c

    ld d, $8a
    adc h
    and l
    ld a, [hl+]
    ld a, [hl-]
    ld d, c
    and e
    inc d
    ld a, [c]
    ld a, [hl+]
    add hl, bc
    ld sp, $5563
    ld a, [hl+]
    add hl, sp
    ld h, h
    sbc c

jr_00d_6e13:
    ld d, [hl]
    and e
    add c
    ld c, d
    adc a
    ld c, c
    ld c, c
    ld c, [hl]
    add hl, de
    ld e, b
    xor $b5
    adc [hl]
    jr jr_00d_6e13

    ld l, b
    dec d
    and l
    jr nc, jr_00d_6e8a

    ret z

    ld d, d
    ld [c], a
    ld e, b
    ld a, [c]
    rst $28
    ld d, l
    ld b, c
    ld h, e
    ret nc

    xor d
    and e
    push hl
    or a
    add $21
    inc l
    add hl, bc
    rst $20
    xor b
    inc h
    ret nz

    and l
    ld [hl+], a
    sbc [hl]
    dec de
    sbc c
    jp hl


    jr jr_00d_6e86

    ld l, c
    ldh [$32], a
    xor c
    adc a
    ld [bc], a
    adc d
    ld [hl], $9d
    or b
    ld d, l
    ld b, c
    and l
    ld hl, sp-$3d
    ld de, $5347
    add hl, de
    ld c, c
    adc d
    ld [de], a
    ld [de], a
    add l
    dec e
    add hl, bc
    xor h
    ld h, c
    ld b, $30
    ld hl, $7334
    ld h, b
    and [hl]
    sub c
    ld sp, $b712
    add d
    add hl, de
    bit 0, b
    and [hl]
    sub d
    push de
    ld d, c
    db $10
    rst $18
    rst $00
    inc hl
    inc e
    db $10
    or c
    ld l, c
    add hl, sp
    call $9a90
    call nz, $9960
    and a
    ld d, d
    ld [hl], d

jr_00d_6e86:
    ld l, c
    db $eb
    inc a
    ld a, b

jr_00d_6e8a:
    ld c, c
    push bc
    sbc b
    ld b, a
    ld e, d
    ld b, h
    ld l, d
    sub c
    dec de
    dec h
    add hl, hl
    add hl, bc
    sub h
    add e
    dec de
    inc h
    ld c, c
    ld a, c
    ld a, [hl+]
    dec bc
    pop de
    ld d, $67
    sbc h
    ld [hl-], a
    adc h
    or l
    db $10
    xor h
    inc d
    ld e, e
    sbc d
    ld b, e
    sbc d
    jp $823c


    add [hl]
    dec d
    ld l, c
    ld l, a
    ld a, [de]
    rst $20
    ld [bc], a
    ld c, d
    add d
    ld [hl-], a
    sub e
    ld h, e
    pop hl
    inc e
    ld de, $65b4
    sub c
    sbc l
    or h
    ld h, h
    pop af
    adc [hl]
    or e
    dec e
    ldh a, [rNR50]
    cp h
    ld h, c
    ld c, h
    ld a, b
    or b
    ld a, $11
    adc d
    and a
    sub e
    and c
    sbc b
    cp h
    ld a, c
    adc h
    ld a, [bc]
    and b
    rst $00
    and e
    inc de
    rra
    inc l
    ld b, h
    or d
    ld l, c
    dec d
    xor d
    ld c, [hl]
    ld h, $26
    adc h
    inc h
    ldh a, [rHDMA3]
    add l
    ret nc

    sbc l
    ld sp, $d754
    pop hl
    db $ec
    add sp, -$3f
    ld l, [hl]
    jp c, $8e73

    dec c
    adc h
    ld [hl], e
    sub a
    call z, $97b3
    call nc, Call_00d_681e
    db $e4
    ld b, [hl]
    ret nc

    ret c

    inc [hl]
    pop bc
    ld c, l
    inc h
    add l
    rst $18
    adc e
    ld c, [hl]
    ld [$8260], sp
    dec l
    adc [hl]
    add hl, hl
    ld [hl-], a

jr_00d_6f17:
    ld h, e
    sbc d
    ld d, l
    ld e, d
    ld a, $33
    ld h, [hl]
    jp c, Jump_00d_6b08

    ret


    jp nz, $12b1

    inc d
    inc [hl]
    and a
    inc b
    ld d, h
    ld h, b
    add l
    dec e
    ld l, a
    and c
    ld a, [bc]
    ld l, b
    sub l
    add sp, $3c
    ld b, h
    ld b, h
    ld h, [hl]
    cp d
    sbc $b4
    ld d, h
    ld l, [hl]
    pop bc
    ld b, h
    rst $00
    add b
    sbc l
    adc a
    dec hl
    daa
    ld h, $94
    ldh a, [rWY]
    adc h
    ld a, $6b
    cpl
    rla
    ld [hl-], a
    add h
    ld [hl], b
    and [hl]
    inc l
    dec c
    rst $00
    dec c

jr_00d_6f55:
    dec h
    jr nz, @-$32

    ld [hl], e
    dec [hl]
    ld e, a
    ld b, a
    push bc
    add b
    ld d, l
    cp [hl]
    dec hl
    ld b, c
    di
    sbc l
    ld l, d
    xor h
    xor d
    adc h
    sub l
    ld d, d
    ld e, d
    sbc b
    db $10
    ld h, b
    adc [hl]
    rlca
    ld [$e2ef], a
    push hl
    inc sp
    sbc a
    ld b, l
    ld [c], a
    ld [hl], h
    pop de
    ld c, c
    adc d
    sub d
    inc hl
    add c
    jr nc, jr_00d_6f17

    add hl, hl
    adc a
    add hl, bc
    add c
    ld b, [hl]
    jr nc, jr_00d_6fda

    ret c

    ld d, l
    ld d, l
    ld c, d
    xor b
    ld e, b
    ret


    ld c, d
    or a
    and d
    ld e, b
    or h
    add h
    jp nc, $e1ff

    ld d, d
    jr jr_00d_6f55

jr_00d_6f9b:
    inc b
    push hl
    and l
    ld a, [bc]
    adc l
    ld hl, $6a4e
    pop bc
    jr nc, jr_00d_6fef

jr_00d_6fa6:
    ld c, [hl]
    ld h, a
    add sp, $64
    xor $78
    add a
    adc a

jr_00d_6fae:
    dec c
    ld hl, sp-$3a
    jr jr_00d_6f9b

    and e
    ld h, $2a
    add hl, sp
    ld a, [hl+]
    dec d

Call_00d_6fb9:
    ld d, a
    ld h, d
    ld d, l
    cp b
    db $e4
    ld a, [hl]
    xor d
    dec l
    ld h, d
    jr z, jr_00d_6fa6

    and e
    ld l, b
    or h
    cp c
    pop af
    ld d, d
    inc c
    ld [hl], h
    ld hl, $c5a2
    add $69
    add hl, bc
    ld c, d
    add l
    di
    sbc c
    ld h, $51
    ld d, b
    ret c

jr_00d_6fda:
    ret c

    ld [hl], e
    and $30
    ret z

    xor c
    xor [hl]
    ld b, h
    rst $08
    db $fc
    ld d, l
    inc e
    sbc h
    sub c
    add a
    cp $90
    ret


    add $f8
    ld l, e

jr_00d_6fef:
    rst $08
    ldh a, [$ac]
    add hl, bc
    adc l
    and [hl]
    rrca
    pop de
    dec [hl]
    ld b, a
    dec h
    rst $38
    db $fc
    ld h, b
    push bc
    add hl, hl
    add hl, de
    xor h
    ld c, d
    db $10
    inc h
    jr nc, jr_00d_6fae

    ld b, h
    ld h, a
    inc a
    add hl, bc
    ld a, a

jr_00d_700b:
    and h
    jp $0c9d


    add a
    cp $95
    sbc h
    db $eb
    ld hl, sp+$7f
    ld sp, hl
    call nc, $f3bf
    rst $38
    ld sp, hl
    add hl, bc
    rst $08
    ld a, [c]
    rst $38
    rst $38
    rst $00
    ld d, e
    add a
    rst $38
    rst $38
    jr jr_00d_7071

    ret


    ld a, a
    push de
    sbc b
    inc [hl]
    ld sp, $c1c6
    ld a, [de]
    dec h
    rst $00
    sub c
    ld d, $44
    cp c
    ld a, [de]
    ld hl, $9ea3
    ld d, c
    ld h, h
    db $ec
    and [hl]
    db $e3
    and c
    ld b, d
    adc [hl]
    rla
    or [hl]
    db $fd
    dec de
    dec l
    ld [hl-], a
    ld [hl], c

Jump_00d_704a:
    ld b, [hl]
    rst $30
    pop de
    or h
    pop de
    ldh [$bf], a
    adc b
    sbc [hl]
    or l
    cp c
    ld c, [hl]
    adc e
    rst $28
    ld d, e
    xor a
    sub d
    inc hl
    dec b
    jr nc, jr_00d_70aa

    ld h, l
    inc b
    jp nc, $88d4

    dec [hl]
    ld e, b
    jr nz, jr_00d_700b

    ld a, d
    db $fd
    ld a, d
    xor d
    ret nc

    db $e3
    or [hl]
    adc a
    xor d

jr_00d_7071:
    sbc h
    xor c
    ld c, d

Jump_00d_7074:
    ld [hl], e
    call nc, $f98b
    pop de
    dec sp
    rst $38
    inc e
    push af
    db $d3
    ld sp, $12aa
    db $e3
    inc d
    sub l
    add hl, de
    set 5, l
    add hl, hl
    adc h
    ret


    add d
    ld c, h
    ld de, $0c34
    ld [de], a
    add l
    rst $20
    ld b, [hl]
    adc h
    ld b, h
    ld h, d
    sbc e
    cp $9a
    sub $a4
    ld a, [hl+]
    ld b, e
    ld a, [$b5a9]
    db $eb
    inc sp
    ld d, h
    ret c

    ld l, c
    pop bc
    inc de
    jr jr_00d_70f0

    pop hl

jr_00d_70aa:
    ld h, b
    ld h, [hl]
    cp b
    sub [hl]
    sub h
    ld a, [c]
    ld e, l
    ld hl, $228f
    add [hl]

jr_00d_70b5:
    adc a
    ld a, [hl+]
    adc d
    ld d, e
    ret


    ld c, d
    ld b, d
    ld c, c
    ld e, a
    db $fd
    ld c, [hl]
    sub h
    dec h
    ld h, d
    ld h, l
    jp hl


    ld d, l
    xor l
    ld a, [hl-]
    inc de
    daa
    ld b, c
    adc d
    sub b
    and e
    sbc l
    db $f4
    dec de
    ld hl, sp-$2b
    ld a, [bc]
    jr c, jr_00d_70b5

    xor b
    inc d
    inc d
    inc de
    add d
    adc [hl]
    dec d
    ld [hl+], a
    add [hl]
    cp $38
    ld d, e
    add c
    jp z, $15a2

    ld b, d
    add c
    inc sp
    ld c, l
    call nc, $97ac
    cp a
    push de
    inc b

jr_00d_70f0:
    jp nz, Jump_000_3345

    ld h, e
    sbc l
    ld a, [bc]
    ld d, l
    sub c
    ld c, l
    sbc d
    ret c

    adc h
    ld l, l
    rst $38
    add d
    ld h, l
    ld hl, $3545
    ld b, d
    ld c, b
    ld d, e
    ld a, [bc]
    or l
    ld b, [hl]
    ld a, [de]
    add c
    ld h, e
    ld a, d

Call_00d_710d:
    ld [hl], d
    cpl
    ld d, h
    ld e, d
    ld h, $ba
    xor d
    dec sp
    ld a, [hl+]
    and [hl]
    and l
    inc a
    xor b
    cp b
    pop af
    add sp, -$3a
    dec a
    ld a, [bc]
    inc a
    ld d, l
    dec a
    dec b
    dec l

jr_00d_7125:
    ld [$eff1], sp
    ld e, d
    ld [hl+], a
    ld c, a
    ld [hl+], a
    sub h
    xor a
    jr c, jr_00d_7167

    ld a, [de]

Jump_00d_7131:
    ret nz

    sbc [hl]
    ld d, e
    ld de, $90c7
    call nz, $93c7
    sub a
    ld e, $8c
    and h
    and c
    dec hl
    daa
    ld d, [hl]
    sbc c
    and c
    inc b
    ld a, [bc]
    adc h
    sbc l
    jr c, jr_00d_716e

    xor b
    ld b, c
    dec bc
    ld de, $2723
    dec sp
    ld a, [hl-]
    jp $cd50


    ld c, b
    call nz, Call_000_1b27
    cpl
    ld e, b
    ldh [$e6], a
    ld c, b
    call nz, $0b67
    or b
    ld d, c
    jr jr_00d_7125

    sbc l
    rst $28

jr_00d_7167:
    inc h
    ld d, c
    ld [$84a2], sp
    sub e
    ld a, [bc]

jr_00d_716e:
    ld [hl], b
    and c
    inc de
    sub d
    add h
    add [hl]

jr_00d_7174:
    jr nc, @-$3e

    or b
    and h
    and $6f
    inc bc
    add hl, hl

jr_00d_717c:
    ld a, b
    pop hl
    add [hl]
    add hl, de
    inc d
    or c
    inc c
    ld l, c
    ld b, $13
    jr z, @-$1b

    ld l, h
    jp hl


    add hl, hl
    adc e
    sbc d
    xor $95
    add hl, hl
    ld c, $e0
    and h
    ld e, d
    xor b
    ld sp, $03c1
    db $e3
    jr nc, jr_00d_720f

    jr c, jr_00d_7174

    ld l, h
    ld c, h
    db $76
    ld b, c
    add hl, sp
    add l
    ld e, $32
    ld a, c
    ld sp, hl
    sbc d
    ld a, c
    db $ec
    ld a, b
    cp d
    ld h, d
    sbc [hl]
    ld a, $64
    sbc [hl]
    dec a
    add hl, hl
    ld [hl], d
    ld a, c
    inc [hl]
    add d
    and e
    sbc h
    nop
    ld b, h
    cp c
    sbc a
    ei
    ld a, [hl-]
    ld h, b
    ld b, a
    adc $a4
    ld d, d
    inc de
    scf
    db $fd
    dec b
    cp a
    push af
    ld a, h
    jp nc, Jump_00d_6885

    jp c, $944c

    ld a, [hl+]
    adc c
    ld c, [hl]
    ld l, e
    ldh [$8a], a
    db $dd
    dec h
    inc b
    sub $b6
    ld c, b
    cp c
    cp $0b
    jr c, jr_00d_7203

    add l
    ld h, c
    ld h, d
    inc sp
    adc l
    ld [$2b5a], sp
    jr c, jr_00d_717c

    add c
    adc [hl]
    ret


    add c
    ld d, l
    and b
    and e
    adc [hl]
    ld l, b
    jp nz, $89f3

    adc a
    sub d
    call c, $a7ea
    ld h, l
    and c
    sbc l
    adc b
    jr z, jr_00d_7229

jr_00d_7203:
    or b
    jp nz, $a086

    xor a
    cp d
    sbc c
    ld [hl], h
    add a
    jr nc, jr_00d_724f

    add [hl]

jr_00d_720f:
    sub l
    ld h, [hl]
    ld e, e
    ld hl, $6470
    ld e, h
    ld [hl], c
    sbc $08
    ld sp, hl
    ldh [rOBP0], a
    jr z, jr_00d_7293

    jp hl


    res 7, l
    db $fd
    dec e
    ld [$553c], sp
    inc e
    adc e
    push bc

jr_00d_7229:
    ld [hl], $e7
    ld a, [de]
    xor l
    ld d, h
    jr z, jr_00d_7257

    rra
    add hl, de
    ld e, c
    db $f4
    ret nz

    ld [hl], a
    cp [hl]
    ld h, l

jr_00d_7238:
    ld d, l
    ld c, a
    dec a
    ld a, [hl]
    xor d

jr_00d_723d:
    cp a
    ld c, a
    dec h
    add sp, -$2e
    db $d3
    add $a3
    ret


    ld a, e
    ld [hl-], a
    and b
    ld a, a
    push af
    ld sp, $91a3
    ld sp, hl

jr_00d_724f:
    ld c, h
    xor b
    dec l
    ld c, b
    xor l
    ld a, [hl-]
    add sp, $54

jr_00d_7257:
    add l
    ld d, d
    cpl
    xor d
    push af
    ld e, [hl]
    ld c, d
    and e
    add [hl]
    adc c
    ld l, d
    ld c, $bd
    ld c, h
    ld d, d
    jp hl


    ld e, c
    ld d, e
    ld h, h
    xor b
    ld d, h
    ld d, h
    ld l, d
    ld d, l
    ld d, l
    ld d, l
    ld hl, $0a16
    db $f4
    ld [c], a
    and d
    sub b
    ret nc

    add d
    ld a, d
    and b
    ld b, [hl]
    and b
    and b
    db $e4
    adc e
    ld c, h
    db $e4
    jp nz, $881a

    xor l
    adc b
    add d
    call z, $a564
    jr nc, @+$4a

    sub h
    and h
    xor b
    sub l
    ld [hl+], a

jr_00d_7293:
    ld h, e
    xor c
    jp z, $19a9

    jr nc, jr_00d_723d

    cp c
    and b
    ld c, c
    ld d, [hl]
    adc b
    ld c, [hl]
    db $fc
    and [hl]
    ld b, $e5
    and d
    ret c

    rst $00
    sub e
    ld d, l
    sub h
    ldh [$8e], a
    jr jr_00d_7238

    ld [hl], $50
    ld d, d
    sub h
    ld h, c
    sub e
    ld c, b

jr_00d_72b5:
    ld a, e
    ld b, [hl]
    sbc [hl]
    ld a, [de]
    ld c, h
    and d
    call nc, Call_000_2199
    ld a, [hl+]
    sub h
    sub [hl]
    add hl, de
    rst $18
    db $f4
    scf
    push af
    db $f4
    sub l
    db $e3
    add hl, bc
    ld b, d
    ld b, [hl]
    ld c, h
    ld l, a
    adc h
    ld d, $85
    ld h, c
    and a
    add sp, -$6a
    ld l, $1a
    ld [$563d], sp
    adc h
    sub h
    sub l
    ld a, [hl+]
    jr nc, jr_00d_7358

    add $4a
    ld e, d
    xor c
    ld d, e
    ld d, l
    dec [hl]
    ld a, b
    inc d
    jp z, Jump_00d_4291

    xor c
    ld d, b
    xor d
    ld d, e
    ld a, d
    rla
    adc [hl]
    ld a, [hl+]
    adc h

Jump_00d_72f5:
jr_00d_72f5:
    ld l, d
    ld d, c
    add d
    jr c, jr_00d_734c

    jr z, @-$10

    and l
    ld h, c
    and d
    ld e, e
    ld e, b
    ld a, a
    adc a
    ld [de], a
    db $e4
    dec d
    adc d
    ld a, b

jr_00d_7308:
    ld a, [c]
    and h
    pop bc
    ld e, $3c
    jp c, Jump_000_3652

    ld [hl-], a
    rst $18
    ld [hl-], a
    sub d
    sbc [hl]
    add d
    pop bc
    cp $13
    ld e, $5b
    cpl
    and h
    ld d, d
    inc d
    sbc [hl]
    inc sp
    dec c
    ld de, $324a
    add hl, de
    db $d3
    ld b, $64
    adc d
    rra
    adc d
    ld b, l
    jr nz, jr_00d_72b5

    ld [hl], d
    or h
    and $be
    sub l
    ld l, c
    inc [hl]
    add hl, bc
    add $c2
    db $e4
    ld [hl+], a

jr_00d_733b:
    sub e
    jr nc, jr_00d_7308

    sub c
    jr @-$17

    ld c, $28
    ld hl, $5030
    ld c, d
    ld h, l
    and h
    jp hl


    ld a, [hl-]
    sbc e

jr_00d_734c:
    or b
    xor b
    jr nc, @-$34

    dec a
    and b
    sub l
    ld e, [hl]
    cpl
    and l
    ld [hl], d
    sbc c

jr_00d_7358:
    call nz, Call_00d_42d8
    add d
    call z, $870b
    ld e, e
    db $fd
    inc c
    inc d
    jr c, jr_00d_73b8

    daa
    inc [hl]
    ld b, l
    jr nz, jr_00d_72f5

    ld b, $44
    ld h, c
    add hl, hl
    ld l, $98
    ld l, c
    sbc h
    sub d
    sub b
    reti


    ld [de], a
    rst $00
    inc c
    ld e, d
    add l
    ld a, [hl+]
    ld h, c
    dec h
    and a
    ld a, e

jr_00d_737f:
    jp c, $902a

    ld hl, sp-$5b
    and b
    sbc h
    cp c
    ld c, a
    ld e, a
    pop de
    ld [hl], b
    or c
    add hl, bc
    inc d
    add hl, bc
    and e
    ld d, d
    ld b, e
    inc de
    add l
    add h
    ld l, c
    jr jr_00d_733b

    add l
    add hl, de
    inc h
    ld [hl+], a
    adc e
    adc d
    call z, $8668
    add e
    ld a, [bc]
    add hl, hl
    inc [hl]
    ld h, e
    ld d, b
    ld sp, $3619
    reti


    ld l, h
    ld b, d
    add h
    ld b, d
    ld [$6055], sp
    or d
    adc e
    dec [hl]
    ld a, [bc]
    add $16

jr_00d_73b8:
    add hl, de
    jr z, jr_00d_7403

    ld b, h
    xor h
    ld h, e
    ld [hl], c
    dec c
    inc d
    pop de
    ld a, c
    db $76
    ld b, h
    ld [$4c61], sp
    ld h, [hl]
    call nz, Call_000_34b0
    ld sp, $638c
    ld b, b
    add h
    ld a, $47
    add d
    sub a
    dec d

jr_00d_73d6:
    ld [bc], a
    jr z, jr_00d_737f

    inc de
    sbc c
    ld b, c
    dec bc
    ld b, e
    ldh [$f0], a
    ld a, [$c6a4]
    inc c
    ld l, $0c
    add hl, bc
    or h
    ld de, $0785
    xor l
    ld e, c
    ld [$0ac1], sp
    ld l, $c3
    rst $00
    ld l, l
    ld a, b
    ld e, c
    ld [$e1a2], sp
    xor a
    ld c, h
    ld a, b
    sub h
    add h
    ld c, e

jr_00d_73ff:
    jp $e551


    pop bc

jr_00d_7403:
    db $10
    add d
    dec bc
    ld e, $6c
    inc c
    dec c
    ld [hl], c
    sub b
    ld b, h
    cp d
    sub l
    inc [hl]

jr_00d_7410:
    ld d, l
    ld d, l
    xor d
    xor d
    and e
    ld [hl], $a5

jr_00d_7417:
    ld d, l
    ld e, a
    rst $38
    jp nz, $29a9

    ret z

    ld [$9d5a], a
    xor d
    inc sp
    adc l
    cp [hl]
    jr c, jr_00d_7410

    jr nc, jr_00d_74a5

    cp [hl]
    ld c, h
    sub d
    ld [hl+], a
    rst $28
    daa
    ld a, [bc]
    ld sp, $928b
    jp nc, $a3f0

    inc b
    ld de, $c27c
    ldh a, [$57]
    ret c

    pop bc
    ld l, $49
    ld e, c
    or $22
    adc h
    jr jr_00d_73ff

    jr jr_00d_746e

    jr nc, jr_00d_73d6

    ld h, b
    ld d, d
    and l
    sub a
    ld c, [hl]
    jr c, jr_00d_7417

    xor b
    ld a, [$d2dd]
    and [hl]
    xor d
    ld e, a
    sbc b
    jp nc, $d896

    ld a, c
    ld a, h
    ld h, e
    ld b, l
    or e
    and c
    ld l, a
    ld a, [$5585]
    ld [bc], a
    sbc b
    add hl, sp
    ld de, $644e
    sbc h
    inc d

jr_00d_746e:
    db $10
    ld a, c
    sbc e
    ld b, l
    xor d
    sub c
    ld b, c
    ld a, c
    add d
    cp h
    push bc
    ld h, $14
    ld [hl], $90
    rst $08
    ldh [$b1], a
    ld d, d
    and d
    pop bc
    inc hl
    ld l, b
    ld a, [hl]
    cp $0a
    ld d, l
    inc hl
    dec d
    inc hl
    ld a, d
    ld de, $7749
    add $0c
    and c
    ld [hl], c
    jp $91f2


    ld h, b
    jp z, Jump_00d_5472

    ld e, h
    ld a, l
    add b
    dec b
    dec b
    nop
    and d
    sub h
    add h
    ld h, e

jr_00d_74a5:
    ld d, d
    ld sp, $0011
    ld [de], a
    ld [hl+], a
    ld [hl-], a
    ld b, d
    ld d, d
    ld h, d
    add e
    sub e
    nop
    ld a, d
    ld bc, $74a1
    ld d, $88
    ld e, $00
    and a
    jr nz, jr_00d_74c4

    ld bc, $74a9
    ld d, $00
    ld e, $00

Jump_00d_74c4:
jr_00d_74c4:
    ld a, [bc]
    and a
    ret z

    inc bc
    push bc
    ld b, a
    and $0f
    ld c, a
    ld a, b
    and $f0
    swap a
    ld b, a

jr_00d_74d3:
    ld h, d
    ld l, $48
    call Call_00d_74ec
    ld h, $00
    ld l, $88
    call Call_00d_74ec
    ld a, d
    add b
    ld d, a
    call Call_00d_751e
    dec c
    jr nz, jr_00d_74d3

    pop bc
    jr jr_00d_74c4

Call_00d_74ec:
jr_00d_74ec:
    ldh a, [rLY]
    cp l
    jr nz, jr_00d_74ec

    ld a, h
    ldh [rSCX], a

jr_00d_74f4:
    ldh a, [rLY]
    cp h
    jr z, jr_00d_74f4

    ret


    nop
    ld [hl], c
    ld l, a
    ld l, [hl]
    ld l, l
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], c
    ld [hl], h
    nop
    ld a, [$cd3d]
    cp $b0
    jr z, jr_00d_7514

    cp $b1
    jr z, jr_00d_7514

    cp $99
    ret nz

jr_00d_7514:
    ld e, $01
    ld bc, $749e
    ld d, $00
    jp Jump_00d_74c4


Call_00d_751e:
    push de
    push hl
    xor a
    ld d, a
    ld hl, $74fa
    add hl, de
    ld a, [hl]
    pop hl
    pop de
    and a
    ret z

    ld [$c328], a
    inc e
    ret


Call_00d_7530:
    call Call_000_36ec
    ld a, $01
    ld [$cf0c], a
    ld b, a
    ld hl, $6f0e
    call Call_000_3e84
    ld hl, $75b8
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_00d_75a8

    dec a
    ld [$cfca], a
    ld hl, $cd4f
    xor a
    ld [hl+], a
    ld [hl], $02
    ld a, $4c
    call Call_000_3eb4
    call Call_000_3dd8
    call Call_00d_7ad8
    call Call_000_3683
    ld b, $05
    call Call_000_3e05
    call Call_000_3ddb
    call Call_000_3de0
    ld a, $e4
    ldh [rOBP0], a
    call Call_000_3040
    ld hl, $d72f
    set 6, [hl]
    xor a
    ld [$d095], a
    ld hl, $cd3d
    ld bc, $0014
    call Call_000_166e
    call Call_00d_75bd
    ld hl, $d72f
    res 6, [hl]
    xor a
    ld [$d095], a
    call Call_000_3dd8
    ld a, $01
    ld [$cfca], a
    call Call_000_3e03
    call Call_000_3e1e
    call Call_000_2f83

jr_00d_75a8:
    call Call_000_36f8
    call Call_000_3ddb
    call Call_000_3de0
    ld a, [$cc5e]
    push af
    jp Jump_000_28d8


    rla
    ld e, b
    ld e, a
    daa
    ld d, b

Call_00d_75bd:
Jump_00d_75bd:
    call Call_00d_7981
    xor a
    ld hl, $cd4a
    ld [hl+], a
    ld [hl], a
    call Call_00d_798c
    ld hl, $7693
    call Call_000_3c36
    call Call_000_370f

jr_00d_75d2:
    ld a, $03
    ld [$cc29], a
    ld a, $02
    ld [$cc28], a
    ld a, $0c
    ld [$cc24], a
    ld a, $0f
    ld [$cc25], a
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc37], a
    ld hl, $c48a
    ld bc, $0504
    call Call_000_16f0
    ld hl, $c4a0
    ld de, $7685
    call Call_000_1723
    call Call_000_3aab
    and $02
    jp nz, Jump_000_371b

    ld a, [$cc26]
    ld b, a
    ld a, $03
    sub b
    ld [$cd50], a
    ld hl, $d5a3
    ld c, a
    ld a, [hl+]
    and a
    jr nz, jr_00d_7628

    ld a, [hl]
    cp c
    jr nc, jr_00d_7628

    ld hl, $769d
    call Call_000_3c36
    jr jr_00d_75d2

jr_00d_7628:
    call Call_000_371b
    call Call_00d_796e
    call Call_00d_7a05
    call Call_00d_76a7
    ld a, $04
    ld hl, $cd4d
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_000_373e
    ld a, $c0
    call Call_000_2238
    ld hl, $7698
    call Call_000_3c36
    call Call_00d_76d4
    call Call_00d_77af
    ld hl, $d5a3
    ld a, [hl+]
    or [hl]
    jr nz, jr_00d_7662

    ld hl, $768e
    call Call_000_3c36
    ld c, $3c
    jp Jump_000_372f


jr_00d_7662:
    ld hl, $76a2
    call Call_000_3c36
    ld hl, $c49e
    ld bc, $0d0f
    xor a
    ld [$d12b], a
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$cc26]
    and a
    ret nz

    call Call_00d_79fe
    jp Jump_00d_75bd


    pop af
    ld sp, hl
    ld c, [hl]
    pop af
    ld hl, sp+$4e
    pop af
    rst $30
    ld d, b
    rla
    ld [hl], a
    ld e, a
    daa
    ld d, b
    rla
    sub b
    ld e, a
    daa
    ld d, b
    rla
    and l
    ld e, a
    daa
    ld d, b
    rla
    xor l
    ld e, a
    daa
    ld d, b
    rla
    ret nz

    ld e, a
    daa
    ld d, b

Call_00d_76a7:
    ld hl, $cd4c
    bit 7, [hl]
    ret nz

    ld a, [$d095]
    and a
    jr nz, jr_00d_76c8

    call Call_000_3e6d
    and a
    jr z, jr_00d_76cb

    ld b, a
    ld a, [$cc5b]
    cp b
    jr c, jr_00d_76d1

    ld a, $d2
    cp b
    jr c, jr_00d_76c8

    ld [hl], $00
    ret


jr_00d_76c8:
    set 6, [hl]
    ret


jr_00d_76cb:
    ld a, $3c
    ld [$d095], a
    ret


jr_00d_76d1:
    set 7, [hl]
    ret


Call_00d_76d4:
    ld c, $14

jr_00d_76d6:
    push bc
    call Call_00d_7a43
    call Call_00d_7a53
    call Call_00d_7a63
    ld c, $02
    call Call_000_372f
    pop bc
    dec c
    jr nz, jr_00d_76d6

    xor a
    ld [$cd3d], a

jr_00d_76ed:
    call Call_00d_7ab2
    call Call_00d_7706
    call Call_00d_7722
    call Call_00d_773e
    ret c

    ld a, [$cf1a]
    xor $01
    inc a
    ld c, a
    call Call_000_372f
    jr jr_00d_76ed

Call_00d_7706:
    ld a, [$cd3d]
    cp $01
    jr c, jr_00d_771f

    ld de, $cd3e
    ld a, [de]
    rra
    jr nc, jr_00d_771f

    ld hl, $cd4d
    ld a, [hl]
    and a
    ret z

    dec [hl]
    call Call_00d_7753
    ret nz

jr_00d_771f:
    jp Jump_00d_7a43


Call_00d_7722:
    ld a, [$cd3d]
    cp $02
    jr c, jr_00d_773b

    ld de, $cd3f
    ld a, [de]
    rra
    jr nc, jr_00d_773b

    ld hl, $cd4e
    ld a, [hl]
    and a
    ret z

    dec [hl]
    call Call_00d_7779
    ret z

jr_00d_773b:
    jp Jump_00d_7a53


Call_00d_773e:
    ld a, [$cd3d]
    cp $03
    jr c, jr_00d_774e

    ld de, $cd40
    ld a, [de]
    rra
    jr nc, jr_00d_774e

    scf
    ret


jr_00d_774e:
    call Call_00d_7a63
    and a
    ret


Call_00d_7753:
    call Call_00d_78ed
    ld hl, $cd41
    ld a, [$cd4c]
    and $80
    jr nz, jr_00d_7767

    inc hl
    ld a, [hl]
    cp $0a
    jr nz, jr_00d_7772

    ret


jr_00d_7767:
    ld c, $03

jr_00d_7769:
    ld a, [hl+]
    cp $02
    jr c, jr_00d_7772

    dec c
    jr nz, jr_00d_7769

    ret


jr_00d_7772:
    inc a
    ld hl, $cd4d
    ld [hl], $00
    ret


Call_00d_7779:
    call Call_00d_78e1
    ld a, [$cd4c]
    and $80
    jr nz, jr_00d_7789

    call Call_00d_7795
    ret nz

    jr jr_00d_7790

jr_00d_7789:
    call Call_00d_7795
    ld a, [de]
    cp $07
    ret nc

jr_00d_7790:
    xor a
    ld [$cd4e], a
    ret


Call_00d_7795:
    ld hl, $cd41
    ld de, $cd44
    ld a, [de]
    cp [hl]
    ret z

    inc de
    ld a, [de]
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc de
    ld a, [de]
    cp [hl]
    ret z

    dec de
    dec de
    ret


Call_00d_77af:
Jump_00d_77af:
    call Call_00d_78d5
    ld a, [$cd50]
    cp $02
    jr z, jr_00d_77da

    cp $01
    jr z, jr_00d_77f6

    ld hl, $cd41
    ld de, $cd45
    ld bc, $cd49
    call Call_00d_78cf
    jp z, Jump_00d_782b

    ld hl, $cd43
    ld de, $cd45
    ld bc, $cd47
    call Call_00d_78cf
    jr z, jr_00d_782b

jr_00d_77da:
    ld hl, $cd43
    ld de, $cd46
    ld bc, $cd49
    call Call_00d_78cf
    jr z, jr_00d_782b

    ld hl, $cd41
    ld de, $cd44
    ld bc, $cd47
    call Call_00d_78cf
    jr z, jr_00d_782b

jr_00d_77f6:
    ld hl, $cd42
    ld de, $cd45
    ld bc, $cd48
    call Call_00d_78cf
    jr z, jr_00d_782b

    ld a, [$cd4c]
    and $c0
    jr z, jr_00d_7811

    ld hl, $cd4f
    dec [hl]
    jr nz, jr_00d_781c

jr_00d_7811:
    ld hl, $78ca
    call Call_000_3c36

Jump_00d_7817:
    xor a
    ld [$c002], a
    ret


jr_00d_781c:
    call Call_00d_7a63
    call Call_000_1e64
    call Call_00d_7a63
    call Call_000_1e64
    jp Jump_00d_77af


Jump_00d_782b:
jr_00d_782b:
    ld a, [$cd4c]
    and $c0
    jr z, jr_00d_781c

    and $80
    jr nz, jr_00d_783b

    ld a, [hl]
    cp $07
    jr c, jr_00d_781c

jr_00d_783b:
    ld a, [hl]
    sub $02
    ld [$cd41], a
    ld hl, $78a5
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cf4a
    ld bc, $0004
    call Call_000_00b1
    pop hl
    ld de, $785f
    push de
    jp hl


jr_00d_785f:
    ldh a, [rBGP]
    xor $40
    ldh [rBGP], a
    call Call_000_3021
    ld c, $05
    call Call_000_372f
    dec b
    jr nz, jr_00d_785f

    ld hl, $cd4a
    ld [hl], d
    inc hl
    ld [hl], e
    call Call_00d_798c
    ld hl, $7892
    call Call_000_3c36
    call Call_000_3852
    call Call_00d_7998
    call Call_00d_798c
    ld a, $e4
    ldh [rOBP0], a
    call Call_000_3040
    jp Jump_00d_7817


    ld [$cdc5], sp
    ld d, l
    ld a, c
    ld hl, $78a0
    pop bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret


    rla
    rst $08
    ld e, a
    daa
    ld d, b
    cpl
    ld a, c
    cp l
    ld a, b
    jr nz, @+$7b

    pop bc
    ld a, b
    inc b
    ld a, c
    push bc
    ld a, b
    ld [de], a
    ld a, c
    rst $00
    ld a, b
    ld [de], a
    ld a, c
    rst $00
    ld a, b
    ld [de], a
    ld a, c
    rst $00
    ld a, b
    ld sp, hl
    or $f6
    ld d, b
    rst $30
    or $f6
    ld d, b
    cp $50
    rst $30
    ei
    ld d, b
    rla
    rst $28
    ld e, a
    daa
    ld d, b

Call_00d_78cf:
    ld a, [de]
    cp [hl]
    ret nz

    ld a, [bc]
    cp [hl]
    ret


Call_00d_78d5:
    ld de, $cd47
    ld hl, $7c5d
    ld a, [$cd40]
    call Call_00d_78f6

Call_00d_78e1:
    ld de, $cd44
    ld hl, $7c39
    ld a, [$cd3f]
    call Call_00d_78f6

Call_00d_78ed:
    ld de, $cd41
    ld hl, $7c15
    ld a, [$cd3e]

Call_00d_78f6:
    ld c, a
    ld b, $00
    add hl, bc
    ld c, $03

jr_00d_78fc:
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    dec c
    jr nz, jr_00d_78fc

    ret


    ld hl, $d095
    ld a, [hl]
    and a
    jr z, jr_00d_790c

    dec [hl]

jr_00d_790c:
    ld b, $02
    ld de, $0008
    ret


    ld hl, $d095
    ld a, [hl]
    and a
    jr z, jr_00d_791a

    dec [hl]

jr_00d_791a:
    ld b, $04
    ld de, $000f
    ret


    ld a, $94
    call Call_000_2238
    xor a
    ld [$cd4c], a
    ld b, $08
    ld de, $0064
    ret


    ld hl, $794f
    call Call_000_3c36
    ld a, $89
    call Call_000_2238
    call Call_000_3e6d
    cp $80
    ld a, $00
    jr c, jr_00d_7946

    ld [$cd4c], a

jr_00d_7946:
    ld [$d095], a
    ld b, $14
    ld de, $012c
    ret


    rla
    rst $38
    ld e, a
    daa
    ld a, [bc]
    ld d, b
    ld hl, $c4ba
    ld a, [$cd41]
    add $25
    ld [hl+], a
    inc a
    ld [hl-], a
    inc a
    ld de, $ffec
    add hl, de
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4f2
    ld [hl], $ee
    ret


Call_00d_796e:
    ld hl, $cd4b
    ld a, [$cd50]
    ld [hl-], a
    xor a
    ld [hl+], a
    ld de, $d5a4
    ld c, $02
    ld a, $0c
    call Call_000_3eb4

Call_00d_7981:
    ld hl, $c3b9
    ld de, $d5a3
    ld c, $02
    jp Jump_000_13ad


Call_00d_798c:
    ld hl, $c3bf
    ld de, $cd4a
    ld bc, $8204
    jp Jump_000_3c5b


Call_00d_7998:
    ld a, $01
    ld [$c002], a
    call Call_000_373e
    ld hl, $cd46
    xor a
    ld [hl+], a
    inc a
    ld [hl], a
    ld a, $05
    ld [$d08a], a

jr_00d_79ac:
    ld a, [$cd4b]
    ld l, a
    ld a, [$cd4a]
    ld h, a
    or l
    ret z

    ld de, $ffff
    add hl, de
    ld a, l
    ld [$cd4b], a
    ld a, h
    ld [$cd4a], a
    ld hl, $cd47
    ld de, $d5a4
    ld c, $02
    ld a, $0b
    call Call_000_3eb4
    call Call_00d_7981
    call Call_00d_798c
    ld a, $bf
    call Call_000_2238
    ld a, [$d08a]
    dec a
    jr nz, jr_00d_79eb

    ldh a, [rOBP0]
    xor $40
    ldh [rOBP0], a
    call Call_000_3040
    ld a, $05

jr_00d_79eb:
    ld [$d08a], a
    ld a, [$cd41]
    cp $07
    ld c, $08
    jr nc, jr_00d_79f9

    srl c

jr_00d_79f9:
    call Call_000_372f
    jr jr_00d_79ac

Call_00d_79fe:
    ld a, $23
    ld [$d089], a
    jr jr_00d_7a13

Call_00d_7a05:
    ld a, $14
    ld [$d089], a
    ld a, [$cd50]
    dec a
    jr z, jr_00d_7a2b

    dec a
    jr z, jr_00d_7a1f

jr_00d_7a13:
    ld hl, $c3cb
    call Call_00d_7a2e
    ld hl, $c46b
    call Call_00d_7a2e

jr_00d_7a1f:
    ld hl, $c3f3
    call Call_00d_7a2e
    ld hl, $c443
    call Call_00d_7a2e

jr_00d_7a2b:
    ld hl, $c41b

Call_00d_7a2e:
    ld a, [$d089]
    ld [hl], a
    ld bc, $000d
    add hl, bc
    ld [hl], a
    ld bc, $0007
    add hl, bc
    inc a
    ld [hl], a
    ld bc, $000d
    add hl, bc
    ld [hl], a
    ret


Call_00d_7a43:
Jump_00d_7a43:
    ld bc, $7c15
    ld de, $cd3e
    ld hl, $c300
    ld a, $30
    ld [$d080], a
    jr jr_00d_7a71

Call_00d_7a53:
Jump_00d_7a53:
    ld bc, $7c39
    ld de, $cd3f
    ld hl, $c330
    ld a, $50
    ld [$d080], a
    jr jr_00d_7a71

Call_00d_7a63:
Jump_00d_7a63:
    ld bc, $7c5d
    ld de, $cd40
    ld hl, $c360
    ld a, $70
    ld [$d080], a

jr_00d_7a71:
    ld a, $58
    ld [$d081], a
    push de
    ld a, [de]
    ld d, b
    add c
    ld e, a
    jr nc, jr_00d_7a7e

    inc d

jr_00d_7a7e:
    ld a, [$d081]
    ld [hl+], a
    ld a, [$d080]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld a, [$d081]
    ld [hl+], a
    ld a, [$d080]
    add $08
    ld [hl+], a
    ld a, [de]
    inc a
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc de
    ld a, [$d081]
    sub $08
    ld [$d081], a
    cp $28
    jr nz, jr_00d_7a7e

    pop de
    ld a, [de]
    inc a
    cp $1e
    jr nz, jr_00d_7ab0

    xor a

jr_00d_7ab0:
    ld [de], a
    ret


Call_00d_7ab2:
    call Call_000_1e64
    call Call_000_381e
    ldh a, [$b5]
    and $01
    ret z

    ld hl, $cd3d
    ld a, [hl]
    dec a
    ld de, $cd4d
    jr z, jr_00d_7ad3

    dec a
    ld de, $cd4e
    jr z, jr_00d_7ad3

jr_00d_7acd:
    inc [hl]
    ld a, $be
    jp Jump_000_2238


jr_00d_7ad3:
    ld a, [de]
    and a
    ret nz

    jr jr_00d_7acd

Call_00d_7ad8:
    call Call_000_0061
    ld hl, $4c17
    ld de, $8000
    ld bc, $01c0
    ld a, $1e
    call Call_000_009d
    ld hl, $7c81
    ld de, $9000
    ld bc, $0250
    ld a, $0d
    call Call_000_009d
    ld hl, $4c17
    ld de, $9250
    ld bc, $01c0
    ld a, $1e
    call Call_000_009d
    ld hl, $7b25
    ld de, $c3a0
    ld bc, $00f0
    call Call_000_00b1
    call Call_000_007b
    ld hl, $cd3e
    ld a, $1c
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_00d_7a43
    call Call_00d_7a53
    jp Jump_00d_7a63


    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    ld c, $0b
    inc hl
    inc e
    ld e, $1f
    inc e
    inc e
    ld e, $1f
    inc e
    inc e
    ld e, $1f
    inc e
    inc hl
    ld a, [bc]
    ld c, $0b
    inc c
    rrca
    dec c
    inc h
    dec e
    jr nz, jr_00d_7b89

    dec e
    dec e
    jr nz, jr_00d_7b8d

    dec e
    dec e
    jr nz, @+$23

    dec e
    inc h
    inc c
    rrca
    dec c
    ld a, [bc]
    db $10
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    db $10
    dec bc

jr_00d_7b89:
    inc c
    ld de, $240d

jr_00d_7b8d:
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    ld de, $0a0d
    ld [de], a
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    ld [de], a
    dec bc
    inc c
    inc de
    dec c
    inc h
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    inc de
    dec c
    ld a, [bc]
    db $10
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    db $10
    dec bc
    inc c
    ld de, $240d
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    ld de, $0a0d
    ld c, $0b
    inc hl
    nop
    jr @+$1b

    nop
    nop
    jr @+$1b

    nop
    nop
    jr jr_00d_7c15

    nop
    inc hl
    ld a, [bc]
    ld c, $0b
    inc c
    rrca
    dec c
    inc h
    ld bc, $1b1a
    ld bc, $1a01
    dec de
    ld bc, $1a01
    dec de
    ld bc, $0c24
    rrca
    dec c

jr_00d_7c15:
    nop
    ld [bc], a

Jump_00d_7c17:
    inc d
    ld d, $0c
    ld c, $04
    ld b, $08
    ld a, [bc]
    nop
    ld [bc], a
    inc c
    ld c, $10
    ld [de], a
    inc b
    ld b, $08
    ld a, [bc]
    nop
    ld [bc], a
    inc d
    ld d, $10
    ld [de], a
    inc b
    ld b, $08
    ld a, [bc]
    nop
    ld [bc], a
    inc d
    ld d, $0c
    ld c, $00
    ld [bc], a
    inc c
    ld c, $08
    ld a, [bc]
    db $10
    ld [de], a
    inc d
    ld d, $04
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $10
    ld [de], a
    ld [$040a], sp
    ld b, $0c
    ld c, $10
    ld [de], a
    ld [$140a], sp
    ld d, $00
    ld [bc], a
    inc c
    ld c, $08
    ld a, [bc]
    nop
    ld [bc], a
    db $10
    ld [de], a
    inc c
    ld c, $08
    ld a, [bc]
    inc d
    ld d, $10
    ld [de], a
    inc c
    ld c, $08
    ld a, [bc]
    inc d
    ld d, $10
    ld [de], a
    inc c
    ld c, $08
    ld a, [bc]
    inc d
    ld d, $10
    ld [de], a
    inc b
    ld b, $00
    ld [bc], a
    db $10
    ld [de], a
    inc c
    ld c, $81
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    adc c
    db $76
    ld d, [hl]
    adc c
    xor b
    ld b, $55
    nop
    adc d
    ld h, b
    ld h, h
    sub c
    sub c
    ld l, [hl]
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec e
    rst $38
    ld sp, $31ff
    rst $38
    ld sp, $1dff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    xor h
    rst $38
    xor a
    rst $38
    call z, $afff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld [hl], e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    call z, Call_00d_4cff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc sp
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld sp, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, [hl]
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    adc h
    rst $38
    nop
    nop
    rst $38
    ld bc, $3eff
    cp $24
    db $e4
    dec hl
    add sp, $37
    ldh a, [$2f]
    ldh [$5f], a
    ret nz

    nop
    rst $38
    add b
    rst $38
    ld a, h
    ld a, a
    inc h
    daa
    call nc, $ec17
    rrca
    db $f4
    rlca
    ld a, [$5f03]
    ret nz

    cpl
    ldh [$37], a
    ldh a, [$2f]
    add sp, $24
    db $e4
    ld a, $fe
    ld bc, $00ff
    rst $38
    ld a, [$f403]
    rlca
    db $ec
    rrca
    call nc, Call_000_2417
    daa
    ld a, h
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    ld a, [hl]
    jp $99c3


    sbc c
    di
    di
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    jp $ffc3


    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    jp $99c3


    sbc c
    pop af
    pop af
    rst $20
    ld h, a
    call $81cd
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $20
    db $e4
    add a
    add h
    rst $20
    db $e4
    rst $20
    inc h
    rst $20
    rst $20
    add c
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
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
    nop
    rst $38
    inc a
    rst $38
    ld h, [hl]
    rst $20
    ld e, d
    jp $c35a


    ld h, [hl]
    rst $20
    inc a
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
    jp $c3a5


    and l
    jp $c3a5


    and l
    jp $c3a5


    and l
    jp $c3a5


    and l
    nop
    nop
    nop
    nop
    nop

jr_00d_7df6:
    nop
    nop
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
    nop
    rlca
    rst $38
    rrca
    db $fc
    rra
    db $fc
    db $fc
    dec sp
    jr c, jr_00d_7df6

    cp b
    daa
    rst $38
    rst $38
    rst $38
    nop
    ldh [rIE], a
    ldh a, [$3f]
    ld hl, sp+$3f
    ccf
    call c, $e71c
    ld e, $e4
    ld a, b
    daa
    cp b
    daa
    inc a
    ei
    rst $38
    inc e
    rrca

jr_00d_7e2a:
    db $fc
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec e
    db $e4
    ld e, $e4
    inc a
    rst $18
    rst $38

jr_00d_7e38:
    jr c, jr_00d_7e2a

    ccf
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc e

jr_00d_7e46:
    rst $30
    jr c, jr_00d_7e38

    ld a, b
    rst $08
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    ld sp, hl
    ld e, $f3
    inc e
    rst $30
    jr c, jr_00d_7e46

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    jp $c33c


    cp l
    nop
    rst $38
    inc bc
    rst $38
    rrca
    db $fc
    inc e
    ldh a, [rNR32]
    ldh a, [$3f]
    db $ec

Jump_00d_7e6d:
    dec sp
    ld [$ea3b], a
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    scf
    call c, $dc57
    ld d, a
    ccf
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$0c]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    rlca
    ld [$080f], sp
    rrca
    jr nc, jr_00d_7ed8

    ret nz

    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
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
    inc a
    rst $38
    ld h, [hl]
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld h, [hl]
    rst $38
    inc a
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
    ld a, [$cd3d]
    cp $fd
    jr z, jr_00d_7f0a

jr_00d_7ed8:
    cp $fe
    jr z, jr_00d_7f0e

    cp $ff
    jr z, jr_00d_7f12

    ld b, $0b
    ld hl, $7dfd
    call Call_000_3e84
    ld a, [$cd3d]
    and a
    ret z

    ld a, [$cd05]
    ld b, a
    ld a, [$cd3f]
    inc a
    cp b
    jr z, jr_00d_7efc

    ld a, $fd
    jr jr_00d_7efe

jr_00d_7efc:
    ld a, $fa

jr_00d_7efe:
    ld [$cc5b], a
    ldh a, [$b8]
    ld [$cc5e], a
    call Call_00d_7530
    ret


jr_00d_7f0a:
    ld a, $2a
    jr jr_00d_7f14

jr_00d_7f0e:
    ld a, $2b
    jr jr_00d_7f14

jr_00d_7f12:
    ld a, $2c

jr_00d_7f14:
    push af
    call Call_000_3c29
    pop af
    call Call_000_3f3a
    ret


    rla
    ld b, b
    ld l, d
    daa
    ld d, b
    rla
    ld e, [hl]
    ld l, d
    daa
    ld d, b
    rla
    ld a, [hl]
    ld l, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
