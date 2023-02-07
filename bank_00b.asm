; disasSembly of "yell.gbc"
SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld [hl], a
    cp l
    or a
    pop de
    ld a, l
    rla
    db $f4
    db $e4
    ld d, l
    ld d, h
    pop hl
    and d
    ld l, b
    inc d
    ld d, h
    sub h
    ret


    ld a, a
    cp $af
    call nc, $86c6
    sub h
    ld l, b
    and l
    rlca
    and d
    sbc a
    and c
    xor d
    db $f4
    adc d
    db $d3
    ld c, e
    ld h, $94
    push de
    or d
    sub l
    ld d, l
    db $f4
    sbc e
    ld c, d
    ld d, d
    ld d, h
    adc e
    ld h, $a2
    and d
    ld a, [hl+]
    or [hl]
    xor d
    xor h
    inc h
    sub l
    inc [hl]
    ld d, d
    ld d, h
    push bc
    add sp, -$54
    call Call_00b_5336
    add c
    add hl, de
    adc c

Jump_00b_4044:
    adc c
    xor d
    xor d
    ld d, [hl]
    ld [$2f9a], sp
    ld c, b
    or d
    ld h, d
    jp nc, $e168

    adc l
    xor d
    adc [hl]
    ld c, d
    jr nc, jr_00b_40c1

    xor c
    ld c, [hl]
    ld a, [de]
    or h
    ld [c], a
    add [hl]
    daa
    ld c, h
    ld h, h
    inc de
    ld [$05aa], sp
    ld d, l
    scf
    ld b, l
    ld l, d
    adc h
    ld [c], a
    ld l, b
    dec l
    ld c, b
    or a
    ld a, [$d4ff]
    jp nz, Jump_00b_5ea1

    add hl, hl
    call nc, Call_00b_5251
    ld d, b
    sub h
    ld l, l
    cp a
    db $fd
    db $ed
    ld sp, $f475
    add l
    ld a, [bc]
    inc hl
    ld d, d
    jp nc, $8c2b

    db $76
    cp d
    ld c, d
    adc c
    ld d, l
    ld d, c
    ld d, c
    ld a, b
    push bc
    ld [$55f5], a
    ld sp, hl
    ld l, $21
    ld e, a
    ldh a, [$a8]
    inc e
    adc b
    sub $d2

jr_00b_409e:
    ld a, [hl+]
    xor b
    ld h, e
    jr jr_00b_410d

    dec b
    ld b, l
    ld a, b
    adc b
    ldh [$b5], a
    add hl, hl
    ld h, d
    call nc, $e8af

jr_00b_40ae:
    ld e, $d0
    ld b, c
    jr c, jr_00b_409e

    ld e, d
    dec l
    ld h, d
    inc d
    and h
    dec d
    sub h
    ld [$41a5], a
    ld a, l
    ld e, a
    add d
    ld d, h

jr_00b_40c1:
    ld l, h
    db $10
    ld e, e
    jp nz, $a43b

    ld [hl], d
    ld a, $ad
    inc b
    ld d, h
    jr jr_00b_40ae

    ld e, a
    rst $38
    ld d, a
    ldh a, [$8a]
    db $e4
    cp l
    ret z

    ld b, c
    ld c, b
    adc h
    sbc a
    and d
    rst $10
    ld [hl+], a
    ld h, h
    ld e, [hl]
    inc sp
    adc c
    adc b
    adc h
    xor b
    add l
    ld [hl], d
    ld a, e
    ld c, b
    sbc e
    dec bc
    ld d, h
    add $0a
    ld c, l
    sub l
    and $8c
    ld a, l
    ld [hl+], a
    ld h, l
    ret nc

    sub e
    rrca
    add hl, de
    adc l
    ld a, [hl+]
    adc b
    ld e, h
    sbc a
    ld l, a
    db $eb
    push de
    dec h
    ld d, a
    db $e3
    sub d
    cp $a1
    ld c, b
    jp nz, $9ea8

    xor d
    rst $38
    ld c, [hl]

jr_00b_410d:
    cp e
    ei
    ld a, a
    pop bc
    ld e, d
    and e
    ld a, [bc]
    adc [hl]
    ld e, c
    db $ed
    or d
    ld b, e
    inc h
    jr nc, jr_00b_4185

    ret z

    sub h
    sbc e
    jr z, jr_00b_4172

    inc [hl]
    jr z, @-$55

    cp d
    dec de
    ld d, l
    cp $e0
    sbc c
    ld b, e
    ld d, d
    inc [hl]
    ld d, d
    add d
    inc e
    ld d, e
    cp a
    rst $38
    db $eb
    ld a, [hl]
    ld [hl], b
    db $e4
    call nc, $8290
    add hl, de
    cpl
    rst $38
    rst $38
    ld d, l
    ld l, l
    sbc d
    ld e, c
    ld a, [hl-]
    ld b, h
    sub e
    ld b, e
    sub c
    ld a, a
    db $fd
    cp a
    rst $38
    ld [$2693], a
    adc d
    ld c, [hl]
    sub a
    sub l
    ld e, h
    rst $38
    rst $38
    rst $38
    jp hl


    ld c, c
    ld d, [hl]
    sub d
    sub h
    sub c
    inc bc
    ld b, h
    cpl
    ld a, a
    jp c, $dfaf

    ret


    ld sp, $4a48
    add hl, hl
    sbc a
    db $10
    pop bc
    add a
    ccf
    push de
    ld a, a
    or b
    ld a, c
    sbc h

jr_00b_4172:
    ld d, $a7
    inc c
    ld a, [hl-]
    db $fc
    ld h, c
    dec b
    pop hl
    ld a, [$0f65]
    ld [$7770], a
    ld [c], a
    sbc c
    rst $38
    ld hl, sp+$21

jr_00b_4185:
    rla
    rrca
    ld d, a
    jp hl


    ld a, [hl+]
    sub c
    ld b, b
    add h
    rrca
    add hl, de
    rst $38
    pop af
    ld c, c
    ld c, b
    and b
    ld_long $ffff, a
    ld [$c643], a
    ld a, [hl-]
    rra
    rst $38
    inc de
    inc b
    add hl, bc
    cpl

Call_00b_41a1:
    xor d
    db $fd
    or a
    rst $38
    rst $28
    ld de, $df95
    rst $38
    sbc b
    ld b, b
    adc [hl]
    rst $38
    rst $38
    or $f0
    scf
    ld a, [$da43]
    ld c, $28
    ld e, h
    ld h, a
    ld e, a
    xor a
    ld d, l
    rst $28
    cp $cd
    rst $38
    ld d, b
    ld a, a
    ld d, b
    cp [hl]
    sbc h
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    ld a, [hl]
    xor a
    db $10

Call_00b_41ce:
    add e
    db $fc
    ld [hl], c
    rst $30
    rst $38
    rst $38
    rst $38
    inc b
    ld a, $10
    ld b, h
    cp a
    rst $38
    inc e
    db $dd
    rst $38
    or $11
    rrca
    and h
    and b
    db $fd
    cp [hl]
    ld [hl], l
    ld b, e
    ld b, $90
    add h
    ld b, d
    ld [$1c2e], sp
    rst $38
    add h
    ld [hl], a
    ld a, a
    ld h, h
    ld d, b
    xor l
    db $ed
    ei
    ret nz

    sbc d
    and c
    ld a, [bc]
    ldh [$84], a
    dec bc
    ld c, $4a
    ld c, l
    ld b, c
    ld e, a
    ld l, a
    ld l, c
    and h
    ld h, e
    ld l, c
    ld [hl], $86
    add h
    ld l, d
    ld a, [c]
    add a
    add hl, de
    call nz, $7128
    inc de
    and h
    db $db
    ld h, e
    ld [hl], c
    add a
    and e
    ld a, [hl-]
    ld h, a
    ld [hl], h
    ld de, $c98f
    scf
    ld c, e
    jp hl


    cpl
    pop af
    ld sp, $abbc
    pop de
    jr nc, jr_00b_425e

    and c
    ld [bc], a
    push af
    ccf
    ld d, b
    ld b, a
    inc [hl]
    ld [de], a
    xor e
    add d
    dec bc
    xor a
    sub $5d
    call nc, $4276
    call c, $8c1d
    ld a, b
    ld h, b
    ld b, h
    cp h
    sub l
    ld a, [hl-]
    call nc, Call_00b_548b
    push de
    inc sp
    or h

Call_00b_424a:
    sub l
    sub h
    or a
    db $e3
    ld a, [hl+]
    add hl, bc
    ld h, d
    add hl, hl
    sub c
    ld a, b
    inc d
    call Call_00b_7246
    and [hl]
    ld b, c
    ld a, [$5234]
    ld d, h

jr_00b_425e:
    xor c
    and e
    add l
    ld b, [hl]
    dec bc
    ld b, l
    ld h, d
    rra
    ld [hl], $bd
    ld b, $06
    sub b
    sbc [hl]
    jr c, @-$15

    ld c, $a0
    add d
    ld a, [hl-]
    dec hl
    db $d3
    jp Jump_00b_54b5


    db $ec

jr_00b_4278:
    xor d
    adc a
    and l
    sbc a
    ld d, $9d
    ld [hl], d
    ld b, [hl]
    inc d
    sbc c
    cp c
    xor h
    reti


    ld e, d
    ld e, a
    ld b, [hl]
    di
    dec d
    ld l, c
    rst $08
    add [hl]
    ld c, e
    ld sp, hl
    set 7, c
    rla
    rst $18
    xor h
    ld [hl], c
    jp nz, Jump_00b_4584

    ld b, h
    ld h, a
    ld [hl+], a
    ld c, $61
    rst $20
    ld h, a
    cp $76
    push de
    rra
    add e
    nop
    ld [hl], a
    sbc c
    ld sp, $254e
    dec h
    ld c, [hl]
    ld e, b
    inc h
    pop bc
    ld hl, $b436
    ld [$3075], a
    ld c, b
    ld c, l
    dec l
    or l
    ld [$64e8], sp
    inc h
    add h
    add $22
    db $fd
    sbc e
    inc d
    push hl
    and b
    ld b, c
    inc b
    sub h

jr_00b_42c8:
    ld h, d
    ld [hl+], a
    ld l, a
    rst $18
    jp nz, Jump_00b_5f42

    db $e3
    db $76
    inc b
    sbc c
    ld d, l
    ld a, d
    dec h
    ld [hl], c
    xor e
    ld b, d
    rst $38
    cp $38
    ld d, [hl]
    ld h, d
    ld d, $a8
    sbc d
    inc b
    or l
    ld a, [de]
    and e
    add l
    ld [hl], b
    ld a, e
    ld h, c
    adc b
    ld d, l
    dec h
    dec l
    ld a, [de]
    dec l
    dec h
    jr nc, jr_00b_42c8

    rlca
    jr nc, jr_00b_4278

    ld h, $a7
    ld d, a
    ldh [$e8], a
    or h
    ld e, e
    adc l
    sbc b
    jp nz, Jump_000_1963

    ld b, $33
    ld b, [hl]
    inc b
    rla
    jr nc, jr_00b_4362

    inc [hl]
    and h
    add $33
    ld a, h
    sbc [hl]
    ld h, b
    ld c, [hl]
    dec c
    ld c, c
    sub h
    or l
    bit 3, d
    ld d, l

jr_00b_4317:
    cp b
    dec hl
    adc d

jr_00b_431a:
    and b
    ld c, b
    sub c
    ld b, e
    push af
    ld d, h
    add a
    sub d
    sbc a
    inc b
    ld hl, $a962
    ld b, l
    rlca
    ld [hl+], a
    ld e, l
    ld a, [hl+]
    xor l
    ret z

    ld a, l
    ld [hl], c
    or [hl]
    daa

jr_00b_4332:
    ld e, d
    pop af
    ld l, b
    add [hl]
    add [hl]
    adc b

jr_00b_4338:
    cp [hl]
    jr nc, jr_00b_4398

    jp c, $4c89

    ld e, d
    ld h, $90
    ldh [$50], a
    and d
    push hl
    jr nc, jr_00b_4332

    sub b
    ld c, d
    ld c, h
    ld a, [hl+]
    ld d, a

Jump_00b_434c:
    add sp, -$7b
    jr jr_00b_431a

    ld l, $82
    cp d
    pop bc
    dec b
    ld a, a
    rst $38
    rst $38
    push af
    pop af
    ld d, b
    ld a, d
    dec l
    dec l
    ld l, $ac
    jp hl


    ld d, a

jr_00b_4362:
    ld b, [hl]
    add hl, hl
    inc b

Call_00b_4365:
    jp nc, Jump_000_2aa8

    adc [hl]
    ld b, l
    ldh [$81], a
    ld a, [hl+]
    jr nc, jr_00b_4317

    ld l, d
    ld [c], a
    inc d
    push hl
    adc b
    adc e
    ld h, e
    ld a, [hl-]
    inc sp
    and e
    sbc c
    add [hl]

jr_00b_437b:
    ld [hl+], a
    ld c, b
    ld c, c
    ld d, c
    ld d, e
    ret nz

    ld b, c
    pop de
    ld h, h
    xor d
    jr nc, jr_00b_43e1

    dec sp
    ld a, [hl-]
    dec h
    ld h, d
    ld d, d
    ld d, h
    and l
    inc a
    ld a, [bc]
    add hl, bc
    add hl, sp
    inc de
    cp l
    ld e, d
    ld l, $21
    ld d, e

jr_00b_4398:
    inc d
    db $ed
    ld d, l
    adc a
    ld d, a
    adc h
    ld h, d
    sub e
    add $8a
    ld h, h
    sbc h
    ld c, c
    ld l, c
    ret nc

    sub a
    and h
    ld h, $ac
    sbc l
    ld [hl], b
    ld h, $1a
    ld a, [hl-]
    ld l, a
    ld hl, $7304
    jr nz, jr_00b_4338

    ld [de], a
    ld a, [hl-]
    ld d, $56
    ld b, h
    ld b, d
    ld [hl-], a
    ld [hl], l
    and l
    ld hl, $64a1
    ld a, c
    jr nc, @-$5d

    inc c
    sub e
    inc c
    ld l, a
    ld a, [bc]
    jr z, jr_00b_43fc

    xor d
    or [hl]
    ld b, d
    add $50
    and a
    ld a, $cf
    push de
    rla
    ld a, h
    ld h, d
    sbc h
    ret z

    inc hl
    inc bc
    rst $38
    or a
    ld a, [$18a1]

jr_00b_43e1:
    jr nz, jr_00b_437b

    and h
    and [hl]
    ld de, $5753
    ei
    ld [hl], l
    ld a, a
    add sp, -$18
    and $2c
    inc c
    ld l, [hl]
    sbc b
    ld e, a
    jp c, $fe45

    rst $18
    sbc c
    add $e9
    xor l
    db $ed

jr_00b_43fc:
    and e
    ld a, a
    db $ed
    jr jr_00b_4432

    add hl, hl
    add hl, hl
    cp [hl]
    sub l
    ld l, l
    ld b, e
    db $fd
    ld c, c
    add h
    xor b
    ld b, h
    ld b, [hl]
    jr nc, jr_00b_4433

    ld h, h
    ld c, a
    and b
    add h
    sub b
    rst $28
    jp hl


    jr z, jr_00b_445c

    ld b, [hl]
    ld d, b
    ld [hl+], a
    add h
    ld b, [hl]
    inc e
    add h
    rla
    sub c
    ld de, $2a84

jr_00b_4424:
    db $fc
    and l
    dec hl
    ld d, h
    add hl, bc
    adc h
    ld b, a
    dec d
    dec b
    sub d
    adc d
    ld [de], a
    rrca
    pop bc

jr_00b_4432:
    jp hl


jr_00b_4433:
    cp h
    ld d, d
    jr z, jr_00b_449d

    ret


    ld e, d
    db $10
    ld h, e
    ld a, a
    xor d
    xor d
    xor c

jr_00b_443f:
    add d
    ld a, [hl+]
    sub h
    sbc b
    rst $18
    inc de
    ld c, $72
    jp nz, Jump_00b_4583

    db $fc
    ld d, d
    ld [hl], $4c
    ld b, h
    ld [hl], e
    and c
    jr jr_00b_4492

    dec d
    db $e4
    ld h, [hl]
    ld d, c
    jp z, $3184

    cpl
    push bc

jr_00b_445c:
    ld [c], a
    adc a
    ld b, [hl]
    add hl, bc
    jp c, $83f1

    sub l
    sbc [hl]
    ld [bc], a
    jr nc, jr_00b_4424

    ld c, h
    adc a
    ld b, e
    ld b, $78
    inc c
    adc a
    add h
    ld h, e
    sub l
    rlca
    dec e
    sub c
    ld e, h
    ld e, h
    ld c, l
    dec d
    ld e, $0c
    jr jr_00b_44c2

    inc h
    and $31
    sbc $d2
    ld l, c
    ld d, c
    adc h
    db $76
    xor h
    ld h, d
    sbc [hl]
    ld l, d
    ld [hl], b
    rst $00
    adc h
    ld b, h
    or h
    ld d, e
    ld a, b
    pop hl

jr_00b_4492:
    and d
    ret c

    sbc d
    jr c, jr_00b_443f

    add a
    ld a, [hl+]
    adc h
    ld a, c
    ld c, c

jr_00b_449c:
    and b

jr_00b_449d:
    and b
    ld d, c
    ld b, [hl]
    adc h
    rst $20
    push hl
    dec b
    ld a, [bc]
    add d
    ld d, $8d

jr_00b_44a8:
    xor a
    sbc a

jr_00b_44aa:
    inc b
    ld hl, $8e5e
    dec de
    ld b, [hl]
    adc h
    push de
    scf
    or h
    ret


    and l
    ld c, l
    sbc $14
    sbc a
    jr jr_00b_449c

    ld a, b
    ld e, d
    dec e
    ld b, c
    add hl, bc
    dec [hl]

jr_00b_44c2:
    ld a, b
    rra
    adc c
    ld b, d
    call c, $c564
    cp a
    ld [$058a], sp
    ld h, b
    ld a, d
    and e
    ld a, [de]
    adc h
    sub h
    ld l, l
    ld d, e
    and c
    ld a, [hl+]
    db $d3
    sbc [hl]
    dec a
    add hl, de
    and d
    sbc e
    and a
    inc d
    ld h, c
    sub d
    sbc h
    jr z, jr_00b_44a8

    ld l, $4a
    ld h, a
    ld [bc], a
    ld d, h
    jr nc, jr_00b_44aa

    ld a, [bc]
    ld l, l
    jr c, jr_00b_4510

    ld [hl+], a
    cp $42
    ld a, [hl+]
    ld l, l
    ld b, c
    xor c
    dec d
    inc b
    rst $38
    sbc h
    ld a, [bc]
    ld h, d
    rst $38
    ld sp, hl
    pop bc
    ld a, c
    ld c, a
    db $fd
    inc b
    ld [hl], c
    cp b
    ccf
    or c
    call z, $fff7
    ld a, [hl]
    sbc h
    dec l
    dec bc
    cp $45

jr_00b_4510:
    ret nc

    ld h, $6c
    ld h, c
    ld a, b
    rst $00
    ld h, [hl]
    ld c, h
    sbc l
    add hl, hl
    add h
    ld a, h
    ld c, b
    ld d, l
    cp [hl]
    ld l, l
    ld d, l
    add hl, hl
    xor c
    add hl, sp
    rst $18
    sub l
    ld l, d
    xor [hl]
    and [hl]
    add hl, sp
    jp nc, $a8ea

    xor c
    add hl, sp
    ld h, $8d
    db $d3
    sbc c
    ret c

    sbc b
    call Call_00b_4e0a
    ld a, [bc]
    dec h
    dec d
    inc sp
    xor b
    inc de
    add c
    ld h, $38
    ld d, e
    add [hl]
    ld [$8cc2], sp
    pop de
    ld c, [hl]
    add hl, bc
    adc d
    ld b, d
    adc l
    ld d, e
    and d
    dec de
    ld sp, $9693
    add hl, sp
    db $10
    adc [hl]
    jr jr_00b_4580

    add hl, sp
    inc hl
    add [hl]
    sub [hl]
    add hl, hl
    xor c
    ld a, [hl+]
    dec sp
    ld d, d
    xor c
    and d
    inc hl
    sub [hl]
    sub [hl]
    ld d, $a9
    ld d, l
    and e
    sbc [hl]
    ld d, [hl]
    adc a
    and h
    rst $18
    ld [hl], $90
    sub h
    jp hl


    jp nc, $f4c0

    ld a, [bc]
    or b
    ld b, c
    ld b, a
    ld a, $0b
    dec de
    ld c, c
    bit 1, c
    db $e3

jr_00b_4580:
    xor c
    ld d, c
    and h

Jump_00b_4583:
    and a

Jump_00b_4584:
    rrca
    ld e, b
    and e
    ld h, $ca
    ld [hl], b
    call nz, $2644
    pop af
    pop bc
    and [hl]
    add hl, sp
    xor l
    sbc h
    ld d, $94
    adc d
    ld c, e
    ld c, c
    ld a, [bc]
    ld [hl], h
    ld b, e
    ld h, h
    ld [hl+], a
    sub e
    inc e
    ld c, c
    xor [hl]
    inc d
    ld d, l
    sbc h
    ld [hl], $9c
    or [hl]
    ld [hl], b
    ret nz

    ret


    add $9c
    xor b
    ld c, c
    ld l, $a5
    inc a
    ld [hl], d
    push de
    inc bc
    pop bc
    dec bc
    ld d, d
    ld de, $d0d0
    ld b, a
    jp nc, $4400

    cp l
    sub l
    and e
    sub c
    rst $38
    xor d
    dec d

Call_00b_45c5:
    jr c, @-$16

    sbc d
    ld d, [hl]
    add hl, sp
    ld l, l
    ld d, e

jr_00b_45cc:
    cp d
    xor b
    db $ed
    ld a, [hl]
    dec sp
    ld l, a
    ld d, e
    cp c
    inc b
    db $ed

jr_00b_45d6:
    db $fd
    ld c, [hl]
    jp c, $8554

    ld a, [hl-]
    db $fc
    inc hl
    or d
    sbc b
    jr jr_00b_45cc

    or l
    adc a
    add a
    sbc $da
    sbc h
    xor d
    xor b
    cp h
    ld [hl], d
    di
    ld l, b
    ld d, a
    inc e
    push af
    jr nc, jr_00b_462c

    push de
    ld b, c
    ld [bc], a
    db $76
    inc l
    ld [hl], a

jr_00b_45f9:
    ld c, d
    ld a, b
    add hl, bc
    rst $18
    daa
    ld a, h
    inc d
    sbc [hl]
    ld c, $32
    ld [hl], l
    jp nz, $b59d

    rra
    db $10
    ld d, l
    or e
    ld e, [hl]
    xor d
    ld d, h
    db $ed
    or b
    adc e
    xor a
    ld c, [hl]
    sbc d
    jr nc, jr_00b_4675

    ld e, d
    ld d, l
    add hl, sp
    ld h, d
    ld [hl+], a
    and b
    sbc b
    sbc [hl]
    ld c, [hl]
    add hl, hl
    add hl, hl
    add d
    adc e
    adc c
    ld c, l
    ld l, d
    xor e
    ret z

    ld e, h
    xor h
    jr @-$64

jr_00b_462c:
    scf
    db $ec
    inc d
    dec d
    jr jr_00b_45d6

    sub h
    ld l, $29
    ld d, a
    ld [hl+], a
    ld [$4257], sp
    ld h, b
    ld a, h
    ld de, $a846
    sbc c
    ld a, l
    ld d, b
    ret nc

    sbc e
    ld h, d
    ld h, $99
    ld l, c
    ld sp, hl
    jr nc, jr_00b_45f9

    ld a, d
    inc d
    and [hl]
    ld e, l
    ld a, [bc]
    ld [$315a], sp
    ld a, l
    ld e, a
    ld h, a
    ld a, b
    ld l, $04
    ld d, h

Jump_00b_465a:
    sbc $a0
    add d
    ld a, [bc]
    add [hl]
    ld h, $21
    sub d
    cp [hl]
    ld c, e
    ld d, h
    db $10
    ld b, c
    ld d, e
    inc b
    ld de, $55a1
    dec bc
    and h
    ld a, $0b
    rst $38
    ldh [$5d], a
    rla
    inc d

jr_00b_4675:
    adc a
    add [hl]
    sub d
    ld h, c
    xor d
    cp e

jr_00b_467b:
    jp nz, $826d

    sbc l
    ld h, h
    cp b
    and h
    sbc b
    inc [hl]
    inc h
    add hl, de
    dec b
    ld a, [bc]
    ld a, [de]
    adc h

jr_00b_468a:
    ld h, l

Call_00b_468b:
    ld h, e
    dec [hl]
    db $db
    cp [hl]

Jump_00b_468f:
    ld a, [hl-]
    xor d
    and d
    ld l, d
    add d
    inc a

jr_00b_4695:
    inc [hl]
    xor d
    inc a
    inc b
    jp nz, $2639

    ld l, b
    ld l, d
    or b
    and a
    ld l, l
    push af
    ld a, a
    ret nc

    ld h, a
    ld e, a
    add a
    db $ec

jr_00b_46a8:
    ld b, h
    ld sp, $c829
    rst $38
    cp $83
    adc h
    ld [de], a
    jp c, $f472

    db $10
    cp c
    ld e, a
    pop hl
    and [hl]
    pop de
    jr nc, jr_00b_468a

    inc c
    ld e, d
    rst $18
    db $fc
    ld l, b
    add a
    ldh a, [$3f]
    cp $c4
    scf
    rst $38
    ei
    inc d
    sub e
    inc b
    dec c
    ld [bc], a
    dec l
    ldh a, [rNR50]
    sub $17
    pop af
    ld d, b
    jr nc, jr_00b_467b

    pop bc
    rrca
    ld hl, sp+$41
    ld h, c
    db $eb
    ld a, [bc]
    ld h, a
    dec c
    ld b, b
    sub e
    add l
    or c
    jr jr_00b_4760

    ld de, $aaa6
    db $e3
    inc c
    add hl, sp
    db $10
    jr nc, @-$05

    and h
    jr nc, jr_00b_4753

    add a
    rla
    sub e
    add h
    inc a
    xor h
    ld l, a
    ld sp, $4686
    jr @-$0e

    ld b, e
    ld l, d
    jr nc, jr_00b_4733

    ld c, [hl]
    jr z, jr_00b_46a8

    jr nz, jr_00b_4695

    ld sp, $7b28
    rla
    ld [bc], a
    ld [$0ec1], sp
    ld [$3143], sp
    add e
    inc [hl]
    ld d, h
    rra
    ld [bc], a
    ld [de], a
    inc l
    sbc h
    ld sp, $428a
    ld b, h
    jr nc, jr_00b_474c

    ld a, b
    add hl, sp
    ld d, d
    ld a, b
    inc [hl]
    ld d, h
    sbc [hl]
    inc b
    halt
    ld b, h
    cp [hl]
    ld c, c
    db $fd
    ld d, e
    sub c
    xor c
    rst $18
    sbc b

jr_00b_4733:
    inc hl
    sbc c
    adc c
    ld l, b
    ld l, c
    ld [hl], $fc
    inc hl
    add hl, bc
    ld b, a
    adc l
    call nc, $acd6
    sbc $8e
    ld [$f0db], sp
    ld c, h
    ld de, $e458
    sub d
    ld d, h

jr_00b_474c:
    add l
    adc [hl]
    add hl, bc
    ld e, e
    cp [hl]
    rlca
    adc [hl]

jr_00b_4753:
    sub l
    ld e, [hl]
    dec sp
    ld a, [hl+]
    ld a, $b2
    ld a, h
    xor d
    ld [hl], e
    or b
    ld b, c
    inc de
    cp c

jr_00b_4760:
    ret z

    add e
    rla
    ld l, [hl]
    and a
    ld [hl], l
    ld e, c
    push bc
    sbc b
    and h
    and a
    rla
    sub [hl]
    ld a, [$c0f9]

Jump_00b_4770:
    add a
    ld [$f7bd], a
    rst $00
    ld [bc], a
    dec [hl]
    rst $38
    cp [hl]
    ld [hl], d
    pop bc
    inc b
    rrca
    pop af
    reti


    ld d, c
    ld hl, sp+$60
    ld d, l
    cp d
    db $10
    sub e
    add l
    ld b, l
    ld d, h
    pop de
    ld [$6663], sp
    inc hl
    ld h, $b5
    ld l, d
    ld h, d

jr_00b_4792:
    sub e
    ld d, h
    sbc c
    sub d
    ld l, b
    inc a
    ld d, h
    ld a, [hl-]
    ld d, e
    ld a, c
    ld [hl+], a
    adc d
    sub d
    ld l, d
    or l
    jr c, jr_00b_47b3

    sub e
    ld a, [bc]
    jp nc, $a591

    inc [hl]
    sub [hl]
    and d
    sbc b

jr_00b_47ac:
    jr nz, jr_00b_4792

    sbc d
    ld hl, $aa4d
    ld d, l

Jump_00b_47b3:
jr_00b_47b3:
    add l
    add hl, bc
    ld d, e
    ld c, a
    ld c, [hl]
    ld [hl], $35
    ld c, e
    and e
    add [hl]
    push bc
    dec l

jr_00b_47bf:
    dec h
    ld a, [hl-]
    ld a, [hl+]
    add c
    ld h, $62
    dec e
    ld d, e
    and c
    adc c
    ld h, b
    add d
    ld e, $5a
    jr c, jr_00b_47ac

    ld l, $a0
    xor b
    ld d, b
    db $d3
    adc l
    or $37
    ei
    cp b
    db $e3
    add c
    and h
    jp nc, $d346

    push bc
    db $d3
    adc l
    add hl, bc
    jr jr_00b_47bf

    ld d, h
    ld [c], a
    sub b
    and h
    adc $51
    adc [hl]
    ld e, c
    ld c, h
    jp nc, $aa23

    and l
    ld d, [hl]
    adc h
    ld h, a
    ld b, d
    ld [de], a
    ld [hl], c
    ld [hl+], a
    adc d
    ld l, b
    add [hl]
    ld sp, $e4b2
    ld e, a
    pop bc
    add d
    dec de
    inc b
    db $10
    ld b, c
    ld a, [de]
    xor [hl]
    ld [hl-], a
    inc [hl]
    ld [hl], $1b
    cpl
    ld b, c
    ld l, c
    or a
    ld a, d
    and l
    jr nc, jr_00b_4835

    dec l
    inc b
    ret


    xor e
    db $ed
    rst $38
    ld a, [c]
    inc c
    add a
    db $ec
    sub c
    sbc e
    db $dd
    ld a, a
    call nz, $ed40
    ei
    ld de, $509c
    call nz, Call_00b_53e8
    cp $56
    ld de, $f7ca
    rst $38
    rst $38
    ld [c], a
    sub c

jr_00b_4835:
    rst $00
    dec bc
    ld c, b
    rst $38
    call $e3ef
    rst $20
    inc a
    ld e, $46
    inc e
    rla
    cp $9c
    set 5, b
    ld hl, sp+$2f
    rst $08
    inc e
    cp a
    jp nz, $2bab

    rlca
    ld sp, $0cc9
    ccf
    ld hl, sp+$55

Call_00b_4855:
    add sp, $7a
    pop bc
    inc e
    ld [hl], a
    rst $18
    sub l
    ld a, [$e214]
    sbc h
    ld e, [hl]
    ccf
    and h
    rst $38
    add d
    add h
    ld [hl], c
    rst $10
    xor a
    rst $38
    db $eb
    add sp, -$2b
    inc e
    sub a
    rst $38
    rst $38

Jump_00b_4871:
    add [hl]
    dec d
    daa
    ld b, h
    dec e
    ld a, a
    ldh [$c7], a
    add e
    ld de, $4046
    ld b, h
    or e
    ld d, l
    ld d, e
    and c
    and d
    jp hl


    ld c, c
    ld d, l
    inc sp
    xor b
    jp nc, $8468

    pop de
    adc l
    sub d
    inc hl
    ld b, h
    ld d, h
    and l
    sub b
    jp Jump_000_3419


    ld h, c
    xor d
    add a
    add $3b
    inc d
    pop bc
    inc [hl]
    ld c, h
    add sp, -$48
    pop de
    add hl, bc

jr_00b_48a3:
    ld l, d
    and l
    ld [$34b9], sp
    sub e
    dec hl
    db $f4
    pop hl
    ld h, e
    ld b, [hl]
    sub l
    ld c, l
    inc h
    call $ffbe
    ld c, l
    ld l, c
    ld d, l
    ld l, b
    ld a, [$e4f9]
    xor a
    rst $38
    xor c
    call $ff7f
    ld d, h
    sub d
    or d
    ld l, c
    db $f4
    ld b, e
    db $fd
    dec bc
    pop hl
    sbc d
    push bc
    ld d, h
    ld c, l
    cp a
    or c
    push de
    rst $38
    ld sp, hl
    push de
    rst $38
    ret


    push de
    cp $19
    xor d
    ld d, d
    and h
    rst $10
    ei
    ld a, [de]
    ld e, d
    sub c
    ld a, [hl]
    and h
    ld d, a
    and $9f

Call_00b_48e6:
    rst $38
    ld [$c0a0], a
    xor e
    ld a, [de]
    rst $10
    rst $38
    pop de
    ld hl, sp+$78

jr_00b_48f1:
    ld h, [hl]
    cp l
    adc d
    sub l
    ld c, a
    dec h
    jr nc, jr_00b_48a3

    ld d, e
    pop bc
    ld a, d
    sub h
    sub [hl]
    sub a
    db $f4
    db $ec
    ld d, b
    ld l, d
    ld l, d
    ld h, h
    xor d
    add l
    rst $38
    call nc, Call_00b_66e2
    xor e
    inc d
    ld [hl+], a
    and c
    ld h, b
    sub d
    sub e
    add e
    ld h, b
    ld d, [hl]
    sbc c
    add c
    ld d, d
    db $10
    xor c
    ld [$1522], sp
    ld [hl], $59
    ld d, d
    ld de, $2183
    ld [$9499], sp
    ld [hl-], a
    inc hl
    ld c, c
    ld [$d562], sp
    sbc b
    ld d, d
    sub b
    push af
    add hl, sp
    ld h, d
    ld hl, $8956
    ld e, a
    ld a, [$4d30]
    xor l
    push bc
    ld b, $25
    ld b, l
    ld [$06ca], sp
    jr c, jr_00b_49ac

    inc d
    sub h
    dec hl
    add hl, hl
    ld d, l
    ld a, [$748e]
    add l
    jp nc, $2a62

    and d
    ld [de], a
    inc d
    ld [c], a
    ld b, c
    ld h, d
    ld h, h
    adc b
    or l
    add [hl]
    and c

jr_00b_495a:
    adc [hl]
    ld d, l
    ld a, a
    ret


    ld c, d
    sub h
    ld [$a2fe], a
    inc e
    sub h
    jp nz, Jump_00b_6389

    add l
    ld c, c
    ld a, a
    ld c, c
    ld e, c
    jr nc, jr_00b_48f1

    add c
    ld c, [hl]
    ld a, $e2
    ld h, b
    ld h, b
    ld b, c
    push hl
    ld h, $a8
    ld h, e
    adc d
    adc e
    ld d, c
    adc c
    xor e
    and $39
    ld l, l
    ld c, b
    db $f4
    or l
    sub d
    and h
    and l
    ld a, [hl-]
    ld a, [hl+]
    ld a, [de]
    add hl, de
    sub d
    xor d
    and e
    adc [hl]
    sub h
    ld e, b
    ld de, $c453
    sub b
    and b
    ld d, b
    ld d, b
    or b
    ld h, b
    ld c, a
    ld [bc], a
    xor b
    ld h, h
    ld a, [hl+]
    sub [hl]
    jr c, jr_00b_495a

    or d
    db $e4
    daa
    sub d
    or $08
    ld d, d
    ldh [$9e], a

jr_00b_49ac:
    ld [de], a
    dec d
    jr c, jr_00b_4a18

    sub $b2
    db $76
    ld sp, $350a
    ld l, c
    ld d, b
    ld h, h
    ld c, d
    ret nz

    sbc h
    jr c, @+$3a

    ld d, c
    ld e, h
    ld d, h
    ld c, h
    ld d, h
    sbc h
    jr c, jr_00b_4a0a

    xor b
    add hl, sp
    add hl, bc
    ld d, l
    ld a, $91
    ld [bc], a
    ld l, a
    adc d
    rra
    ld c, h
    inc l
    add hl, de
    ld [hl], b
    ld d, b
    ld d, l
    add a
    ld h, $b4
    jp nz, $91a0

    ld sp, $8b84
    or b
    ld b, e
    sbc e
    and e
    call nc, Call_00b_424a
    ld e, [hl]
    pop bc
    rla
    ld h, [hl]
    call nc, Call_000_100a
    or b
    ld c, h
    add hl, de
    cp e
    inc e
    ld d, b
    ld [hl], b
    jp nz, $d9cb

    ld c, d
    add e
    ld d, c
    db $d3
    inc bc
    ld a, a
    cp $93
    ld d, [hl]
    and b
    sbc h
    cp $c5
    sub $a6
    ld a, [bc]
    db $10
    dec [hl]
    ld h, a

jr_00b_4a0a:
    ld d, $42
    ccf
    cp $63
    ld c, b
    and e
    and a
    dec d
    adc h
    ld c, d
    ei
    add hl, de
    ld c, b

jr_00b_4a18:
    ld e, l
    inc e
    inc l
    ld c, d
    jr @+$53

    ld d, $99
    ld hl, $711c
    rrca
    inc d
    db $e4
    ld d, h
    add hl, bc
    ld l, d
    jp nc, $8b6e

    jr jr_00b_4a72

    jp $c904


    ld a, h
    ld l, a
    ld b, c
    inc de
    and c
    sub b
    add e
    jr jr_00b_4a7a

    xor b
    daa
    ld d, $5c
    sub c
    ld b, h
    ld c, d
    ld d, h
    ld b, h
    ld [hl], c
    pop de
    sbc h
    ld e, h
    ld [hl], a
    jp z, $98b6

    cp c
    db $e3
    ret nz

    xor b
    ld sp, $44c6
    cp [hl]
    add hl, hl
    dec sp
    ld e, d
    jp c, Jump_00b_47b3

    ld [hl-], a
    ld d, h
    add h
    ld d, l
    ld b, c
    ld d, h
    ld e, $36
    ld c, b
    add d
    rst $00
    xor d
    db $e3
    add l
    ld d, b
    add c
    ld h, e
    adc [hl]
    ld [$3a9b], sp
    ld de, $21bf
    sub e

jr_00b_4a72:
    sub [hl]
    ld b, d
    ld d, [hl]
    sub [hl]
    inc d
    sub a
    di
    ld c, d

jr_00b_4a7a:
    ld d, l
    cp a
    call c, $aeef
    ld a, b
    db $ed
    and e
    ld [$d4b7], a
    jr z, @-$55

    cp d
    ld h, [hl]
    sub c
    ld a, [bc]
    ld b, d
    ld [$b1a0], sp
    xor d
    ld c, d
    call nc, Call_00b_41a1
    inc e
    scf
    add d
    ld [$9c7c], sp
    ld d, a
    ld hl, $a321
    ld sp, $6482
    add a
    sub c
    jp nz, $b198

    and h

Call_00b_4aa7:
    or l
    ld [bc], a
    add sp, $29
    rrca
    sbc h
    dec d
    ld b, e
    ld d, a
    sub e
    dec e
    sub h
    sbc a
    add l
    nop
    ld [hl], a
    cp l
    ld b, l
    ld c, l
    inc de
    dec d
    ld d, l
    ld a, [hl-]
    sbc a
    ld e, b
    db $d3
    ld c, b
    ld l, [hl]
    or [hl]
    adc [hl]
    sub l
    add hl, bc
    ld c, h
    call nc, $a05b
    ld a, b
    dec d
    ld c, c
    ld d, l
    ld d, e
    scf
    add a
    or h
    reti


    add l
    rst $20
    ld [$d4ba], a
    sbc e
    rst $38
    ld e, a
    adc b
    ld l, [hl]
    ld sp, $2478
    adc d
    ld a, b
    sub a
    db $eb
    sbc d
    dec e
    ld e, a
    and d
    ld e, [hl]
    adc h
    ld e, [hl]
    ld e, $22
    ld hl, sp-$48
    xor b
    ld e, $aa
    adc d
    ld l, e
    ld b, $4b
    ld d, e
    rlca
    db $d3
    add d
    cp e
    jr nc, jr_00b_4b5f

    ld l, c
    call nc, Call_000_3295
    db $e3
    adc [hl]
    adc d
    ld e, l
    ld e, $15
    scf
    ld a, b
    db $e4
    and c
    ld e, d
    and a
    ld l, c
    jp nz, Jump_00b_7e35

    cpl
    ld c, l
    ld d, h
    adc d
    ld b, c
    ld [c], a
    ld e, [hl]
    dec l
    ld c, c
    and [hl]
    adc b
    sub c
    and l
    dec l
    ld a, b
    add $25
    ld d, d
    ret nc

    ld b, e
    jp nz, Jump_00b_7c08

    ld d, a
    add d
    ld a, e
    ld l, a
    and e
    dec [hl]
    ld a, [hl]
    adc b
    ld e, a
    ld [hl+], a
    inc b
    ld a, [hl+]
    xor b
    cp b
    adc b
    ld l, d
    ld [hl-], a
    call nc, Call_00b_5799
    db $eb
    adc c
    add e
    ld d, d
    sub e
    ld h, $42
    adc h
    and h
    and l
    and d
    sub h
    add l
    ld hl, sp-$6b
    ld [$58f0], a
    dec l
    db $e3
    inc [hl]
    adc l
    dec h
    ld a, b
    add $fe
    ei
    ld l, b
    adc d
    and c
    and e
    ld d, h
    ld a, [hl+]
    rst $38

jr_00b_4b5f:
    and c
    and e
    ld b, l
    ld [hl], l
    jr nc, jr_00b_4bbc

    pop bc
    inc [hl]
    ld d, e
    ld a, [de]
    dec [hl]
    and d
    dec hl
    rst $38
    ld a, [$6586]
    ld [hl-], a
    ld h, d
    ld d, a
    add c
    ld c, b
    and e
    and l
    jp hl


    cp a
    ld d, d
    ld e, e
    ld a, [$bb14]
    ld c, [hl]
    ld d, a
    adc h
    ld l, e
    ld c, b
    cp a
    rst $38
    db $dd
    ld a, [hl+]
    db $d3
    add l
    db $e3
    ld h, [hl]
    ld c, h
    and l
    ld sp, $4bbd
    ld d, l
    ld hl, sp-$3e
    adc h
    rra
    rst $38
    ld d, c
    add sp, -$2e
    xor a
    cp $a8
    ret


    ld c, [hl]
    add hl, bc
    xor a
    db $e3
    ld e, d
    jr c, jr_00b_4c0c

    ret


    ld c, e
    ld e, b
    ld [c], a
    and e
    ld h, a
    call z, Call_00b_5597
    ld hl, sp-$1b
    cp l
    ld c, e
    ld e, [hl]
    dec bc
    ld d, d
    ld e, [hl]
    ld a, [de]
    and e
    xor [hl]
    cp a
    cp $8a
    xor a

jr_00b_4bbc:
    ld hl, sp-$1e
    sbc [hl]
    and d
    add hl, bc
    and d
    ld h, d
    sub d
    sbc l
    ld a, l
    or c
    and d
    sub d
    rst $38
    ld b, a
    ld h, a
    db $fc
    ld h, [hl]
    ld hl, sp-$43
    ld [hl], c
    ld [$a4a4], sp
    and [hl]
    adc a
    rst $38
    ld b, [hl]
    ld c, a
    add a
    inc bc
    ld a, [bc]
    rst $38
    add sp, -$01
    ld e, a
    xor d
    ldh [$bf], a
    db $10
    sbc d
    cp e
    adc e
    dec bc
    db $fd
    ld e, e
    add sp, $5e
    push de
    ld l, a
    pop de
    add $f4
    inc a
    rrca
    db $10
    db $f4
    ld b, l
    rst $30
    rst $38
    ld d, c
    ld c, d
    add e
    ld h, $10
    ld sp, $3e0e
    ld c, h
    ld h, a
    ld h, c
    sbc b
    cp a
    di
    xor c
    inc l
    ld d, e
    di
    ld b, a
    inc bc

jr_00b_4c0c:
    and l
    dec l
    rrca
    ld b, $19
    or a
    call z, $9952
    ccf
    ld b, b
    or e
    sub b
    db $e3
    ld [bc], a
    ld l, l
    pop bc
    dec d
    scf
    db $e4
    inc h
    or h
    ccf
    ld a, [c]
    rst $38
    xor a
    push hl
    jr nz, @-$6d

    dec sp
    db $e3

Call_00b_4c2b:
    ld d, e
    scf

Jump_00b_4c2d:
    and e
    ld a, [hl]
    ld e, a
    pop hl
    rst $38
    di
    ldh a, [$a9]
    ld e, $0c
    dec d
    and e
    ld b, $8d
    cpl
    cpl
    jr jr_00b_4cb7

    ld d, a
    cp a
    ld a, [c]
    add hl, hl
    ld l, $90
    db $fc
    ld l, c
    db $fd
    sbc b
    or $fb
    push af
    cp h
    ld d, $5f
    ld a, l

Call_00b_4c50:
    inc bc
    ld [$7e5d], a
    sbc b
    db $db
    rst $38
    rst $38
    ld b, h
    ld a, h
    ld b, e
    cp d
    cpl
    xor b
    cp a
    xor b
    rst $28
    ld b, [hl]
    ld d, e
    ld d, l
    xor c
    ld a, [bc]
    ld h, c
    db $fc
    scf
    rst $28
    db $fd
    ld a, a
    rst $38

Jump_00b_4c6d:
    sbc d
    ld d, b
    ld a, a
    and c
    db $10
    pop af
    ld sp, $1749
    dec d
    ld e, l
    rst $28
    and [hl]
    ld a, l
    cp $4c
    ld e, d
    ld l, l
    ld a, [bc]

jr_00b_4c80:
    cp a
    rst $38
    db $ec
    and [hl]
    dec de
    ld d, b
    and h
    or c
    ld sp, $7fc1
    rst $38
    rst $08
    ld [$91e0], a
    and b
    add h
    ld [hl], a
    ld d, a
    di
    rst $38
    add a
    cp $91
    ld d, b

Jump_00b_4c9a:
    xor e
    jp z, $4f9d

    rst $38
    rst $28
    rst $38
    and $55
    ld [hl], c
    sub h
    add hl, bc
    ld l, d
    ld a, [hl+]
    rst $38

jr_00b_4ca9:
    rst $38
    ld e, a
    rst $38
    rst $10
    xor b
    ld c, c
    ld e, d
    ld l, e
    ld a, [hl+]
    inc d
    ld b, l
    ld a, a
    ld d, b
    rst $10

jr_00b_4cb7:
    db $fd
    ld de, $c044
    adc h
    ld l, a
    ld h, a
    dec b
    sbc c
    ld a, [hl-]
    ld d, e
    inc e
    sub c
    pop bc
    ld l, c
    sbc a
    inc bc
    dec e
    ld sp, $5592
    sbc [hl]
    ld d, h
    ld c, h
    ld h, l
    inc c
    ld [hl], c
    add b
    ld b, h
    rst $18
    ld [$a193], a
    ld b, [hl]
    ld h, $4e
    ld a, b
    ld h, d
    db $e4
    rst $20
    add c
    inc hl
    ld [hl], e
    ld h, l
    adc e
    ld b, e
    db $e4
    jr nz, jr_00b_4c80

    or l
    ld a, [hl]
    and d
    and b
    ld h, e
    add hl, hl
    ld e, a
    xor b
    jp nc, Jump_000_262a

    ld d, $38
    ld d, e
    ld b, [hl]
    jr c, jr_00b_4ca9

    sub e
    dec b
    add hl, sp
    ld [hl], l
    sub d
    ld e, $8c
    ld d, h
    jp z, Jump_000_0a57

    db $e3
    ld e, e
    db $fc
    jp nz, $bfaa

    ld a, [$14b2]
    add sp, -$59
    ld d, l
    dec sp
    ld h, l
    ld a, $32
    or c
    ld a, [bc]
    jp c, Jump_00b_7e76

    ret


    db $d3
    ld l, l
    ei
    inc e
    rst $30
    db $ed
    ld a, [$2a9a]
    ld e, e
    rst $38
    add a
    ld a, h
    ld e, d
    dec bc
    ld b, [hl]
    rla
    db $fc
    and c
    inc b
    sub b
    pop bc
    dec de
    ld a, h
    pop bc
    sub h
    db $fc
    ld [hl], b
    ccf
    inc h
    ld b, h
    ld d, a
    inc e
    dec hl
    ld l, [hl]
    sub h
    add $1a
    ld h, a
    call $af79
    sbc $a6
    jr jr_00b_4da2

    db $10
    xor d
    ld d, a
    adc h
    ld [hl], b
    ld d, c
    ld sp, $7574
    ld b, h
    rst $00
    push de
    add b
    ld d, l
    call nc, $d0f1
    and l
    inc a
    ld b, h

jr_00b_4d5c:
    ld d, a
    db $d3
    dec b
    ld d, e
    dec b
    ld d, l
    ld [hl-], a
    ld c, d
    or l
    ld a, a
    rst $00
    rst $30
    cp $aa
    cp l
    jr nc, @-$4a

    adc [hl]
    and l
    inc b
    ld d, c
    adc b
    push af
    ld a, [hl+]
    sbc $2a
    adc d
    or b
    add d
    adc h
    xor e
    ld c, d
    adc h
    ld l, h
    sbc c

jr_00b_4d7f:
    ld h, c
    jp nc, Jump_00b_55bd

    ld l, $4b
    adc h
    sub b

jr_00b_4d87:
    ld d, e
    ld a, [bc]
    and d
    db $e4
    ld [c], a
    ld b, c
    ld c, a
    dec e
    ld c, h
    dec d
    ld c, [hl]
    inc b
    or l
    ld [hl+], a
    cpl
    ld [$d3a2], a
    rlca
    ld h, $c2
    dec [hl]
    ld e, [hl]
    ld a, [hl+]
    inc b
    sub $59

jr_00b_4da2:
    and h
    cp a
    and e
    jr jr_00b_4d5c

    inc hl
    ld d, d
    ld de, $3645
    ld [hl], h
    jp nc, $dfaf

    ld l, e

jr_00b_4db1:
    db $fd
    ld d, l
    ld d, [hl]
    ldh [$a2], a
    ld d, h
    adc d
    ld a, [hl+]
    xor l
    xor l
    dec c
    ld d, d
    ld d, e
    ld b, [hl]
    and e
    rlca
    adc c
    cp b
    adc h
    ld d, e
    ld c, b
    jr jr_00b_4d7f

    adc h
    sbc $63
    ld b, l
    adc e
    ld a, b
    pop bc
    rst $10
    adc [hl]
    db $76
    push de
    ld d, l
    ld a, b
    jr z, jr_00b_4db1

    xor c
    db $e3
    db $e3
    ld [bc], a
    ld a, b
    sub b
    inc hl
    and [hl]
    jr z, jr_00b_4d87

    add hl, bc
    add hl, hl
    sub l
    ld de, $0e6a
    inc de
    add sp, $6e
    ld sp, $bd71
    push bc
    ld e, a
    rla
    dec b
    and l
    and c
    ld d, $a7
    ld b, [hl]
    ld d, h
    ld h, d
    add $71
    add h
    adc d
    ld e, a
    ld b, l
    add $8c
    ld b, [hl]
    sbc d

jr_00b_4e02:
    inc a
    ld [hl], c
    ld b, c
    inc h
    ld a, c
    and a
    sbc h
    xor c

Call_00b_4e0a:
    ld sp, $a508
    ld a, c
    adc [hl]

jr_00b_4e0f:
    ld [hl], d
    ld b, h
    and h
    jp c, $e760

    ld [hl-], a
    push bc
    ld l, d
    ld h, h

jr_00b_4e19:
    sub [hl]
    ld a, [$145c]
    ld h, b
    sbc b
    jr c, jr_00b_4e19

    jr z, jr_00b_4e02

    ld [bc], a
    and [hl]
    adc b
    ld b, b
    sbc b
    cp d
    jr nc, jr_00b_4e73

    and c
    jr nc, jr_00b_4e77

    ld [hl], h
    ld h, h
    ldh [$e9], a
    sbc e
    rla
    cp a
    add $8f
    ld h, $4c
    ld h, e
    ld [hl], a
    dec de
    ld sp, $1a8b
    ld b, [hl]
    db $f4
    ld h, d
    add $91
    ret nc

    add h
    ld h, b
    rst $00
    db $10
    ld b, h
    cp h
    sbc e
    db $f4
    add a
    ret nc

    ld l, c
    jr c, jr_00b_4e7f

    dec bc
    ld a, b
    ld l, h
    ld d, b

jr_00b_4e56:
    xor b
    sbc $d0
    add [hl]
    db $fd
    sbc a
    ld d, e
    ld h, l
    ld l, l
    ld l, b
    rla
    add $38
    inc h
    cpl
    rst $38
    and c
    ld b, c
    jr c, jr_00b_4e0f

    ld b, $30
    ld c, [hl]
    ld e, b
    pop de
    dec a
    ld l, a
    add hl, hl
    add hl, sp

jr_00b_4e73:
    sbc [hl]
    cpl
    ld c, [hl]
    ld b, [hl]

jr_00b_4e77:
    rlca
    sbc $45
    inc b
    pop hl
    push de
    add [hl]
    add hl, bc

jr_00b_4e7f:
    ld e, a
    and l
    ld a, [hl-]
    ld l, d
    dec d
    adc a
    add l
    sbc e
    add hl, hl
    ldh [rOBP0], a
    add hl, hl
    ld a, [bc]
    ld [hl], h
    rst $38
    cp h
    ld de, $f1ce

jr_00b_4e92:
    db $10
    inc hl
    and a
    ld [bc], a
    dec [hl]
    db $10
    res 3, h
    ld [hl], e
    and b
    or h
    ld b, a
    and $de
    sub c
    inc a
    ld h, c
    and $f5
    and [hl]
    reti


    add sp, $2c
    jr nc, jr_00b_4eef

    ld [hl], $9c
    ld sp, $7729
    rst $00
    inc hl
    pop bc
    ld b, c
    ld h, d
    add d
    ld [hl], b
    jp $8a12


    add hl, bc
    add hl, de
    ret z

    pop af
    adc h
    ld a, h
    jr c, jr_00b_4f39

    cp e
    ld a, e
    rst $38
    db $fd
    ld d, l
    inc a
    cp d
    xor d
    sub $aa
    rst $38
    ld d, l
    inc a
    jr c, jr_00b_4e56

    ld a, [bc]
    db $f4
    cp d
    xor a
    or e
    jp nz, $ed72

    ld sp, $f078
    inc h
    inc h
    add $d2
    ld e, [hl]

jr_00b_4ee1:
    inc a
    ld c, c
    ld l, c
    ld c, e
    or l
    and e
    xor c
    xor c
    ld c, h

Call_00b_4eea:
    or d
    ld a, [hl+]
    ld d, d
    jr nz, jr_00b_4e92

jr_00b_4eef:
    cp c
    ld [hl], h
    and a
    xor d
    sub l
    ld a, [bc]
    xor b
    jr z, jr_00b_4ee1

    add l

jr_00b_4ef9:
    ld [hl+], a
    pop de
    add c
    ld d, l
    ld d, b
    ld c, b
    ld h, d
    jr z, @-$25

    ld d, l
    add hl, hl
    ld a, [de]
    ld d, c
    and l
    ld l, d
    xor d
    jp nc, $a822

    push bc
    ld l, b
    xor c
    ld e, h
    add hl, sp
    rla
    ld d, [hl]
    inc [hl]
    sub c
    ld d, d
    ld d, h
    and [hl]
    inc sp
    ld h, [hl]
    inc b
    ld a, [de]
    add hl, de
    jr c, jr_00b_4f46

    and e
    ld d, $21
    ld l, c
    ld b, [hl]
    ld [hl+], a
    sub b
    and h
    add sp, -$4c
    ld d, h
    jr nc, @+$5c

    jr nc, @-$73

    ld c, c
    and d
    ld d, $bf
    ld d, e
    ld a, [bc]

jr_00b_4f34:
    dec d
    ld a, [hl+]
    ld a, [hl-]
    jr @+$1a

jr_00b_4f39:
    ld d, a
    ld a, [de]
    push af
    ld d, d
    call nc, $88ec
    ld b, a
    ld c, h
    ld l, d
    cp h
    cp b
    db $e4

jr_00b_4f46:
    ld a, c
    ld c, $29
    dec de
    call $8468
    reti


    add c
    ld hl, $0681
    and h
    adc c
    sub h

jr_00b_4f55:
    push de
    ld c, [hl]
    ld b, $26
    ld [hl+], a
    adc l
    ld a, [hl+]
    cp a
    push de
    ld d, l
    ld [c], a
    ld d, b
    ld c, h
    jr jr_00b_4ef9

    ld h, d
    jp nc, $5412

    ld h, l
    ld l, d
    xor l
    jr c, @+$14

    ld e, b
    adc d
    ld l, $a7
    ld h, $42
    ld d, b
    xor d
    ld d, d
    db $d3
    ld h, h
    jp $8754


    adc e
    ld h, l
    ld [hl], d
    jr jr_00b_4f34

    ld h, d
    pop hl
    ld h, d
    add sp, $2a
    ld hl, sp+$28
    and a
    ld d, [hl]
    ld [hl+], a
    dec l
    add c
    adc h
    sub d
    inc d
    adc $26
    ld d, a
    adc d
    add [hl]
    dec h
    add l
    ld sp, $1741
    xor b
    jr z, jr_00b_4f55

    ld hl, $c568
    add hl, de
    ld h, c
    ld h, e
    dec [hl]
    ld a, b
    add l
    rra
    ld c, d
    xor b
    jp c, Jump_00b_5848

    rst $10
    and d
    push hl
    ld d, h
    add sp, -$58
    sbc $34
    xor b
    pop af
    rst $30
    ld l, [hl]
    ld a, [bc]
    xor d
    ret


    add hl, bc
    push hl
    xor a
    ret c

    and c
    ld d, b
    ld c, e
    ld [hl+], a
    sbc [hl]
    dec de
    and c
    ld d, h
    ld [de], a
    ld h, e
    ld b, c
    ld hl, $ed9d
    ld l, c
    ld [hl], d
    sbc b
    or c
    ldh [$ce], a
    ret


    dec [hl]
    ld [hl-], a
    ld c, e
    ld e, $2d
    rst $18
    xor h
    xor b
    jp nz, Jump_00b_6c9d

    ret nz

    sbc c
    ld a, b
    ld e, e
    ld l, d
    pop bc
    ret


    push de
    sub c
    ld l, c
    add d
    dec d
    rrca
    rrca
    and h
    daa
    ld c, l
    inc h
    ret


    ld a, [de]
    ld a, [bc]
    xor c
    ld a, h
    ld c, d
    ld l, h
    sub b
    sub h
    xor $0a
    inc sp
    add e
    dec d
    ld [hl-], a
    add hl, hl
    ld a, c
    adc d
    jr jr_00b_5048

    ld e, c
    ld [hl], $45
    ld h, b
    add $d2
    add hl, bc
    ld d, d
    ld d, e
    add $2d
    jr nz, @-$38

    ld de, $2ac3
    ld c, h
    ld b, e
    ret nz

    cp a
    ld [c], a
    sub e
    ld [bc], a
    ld a, [hl+]
    ld b, h
    ld [hl], b
    ld b, c
    adc h
    adc h
    add l
    cp a
    ld b, [hl]
    pop de
    dec bc
    db $10
    add h
    adc [hl]
    add hl, bc
    ld sp, $e818
    pop bc
    ld d, c
    call z, Call_000_3ed0
    rst $30
    adc h
    dec e
    and [hl]
    add hl, de
    reti


    ld b, h
    res 2, [hl]
    cp d
    inc de
    and h
    sub $71
    or h
    add [hl]
    ld e, a
    ld b, c
    sub e
    inc de
    inc de
    sub c

jr_00b_5048:
    dec de

Call_00b_5049:
    or c
    jr z, jr_00b_507d

    sbc [hl]
    ld a, [de]
    ld b, l
    dec hl
    inc b
    ld c, $44
    ld l, b
    pop hl
    ld d, d
    ld b, h
    ld l, e
    inc b
    ld [de], a
    pop de
    jr c, jr_00b_50a2

    ld b, c
    jr jr_00b_509c

    ld a, [hl+]
    reti


    pop bc
    jr @-$29

    ld [hl], c
    ld [hl], b
    ld b, l
    pop de
    ld de, $d659
    push hl
    ret nz

    sub [hl]
    jp nz, $f0c5

    inc h
    and [hl]
    xor d
    and c
    jr jr_00b_50ab

    ld d, $8c
    ld h, b
    pop bc
    inc b

jr_00b_507d:
    call z, $b460
    add d
    add hl, sp
    ld l, a
    inc b
    ld h, l
    ld [de], a
    sub b
    sub a
    push bc
    ld hl, $8a16
    ld c, e
    adc $63
    inc b
    dec l
    ld [bc], a
    inc c
    ld h, c
    ld [bc], a
    ld [de], a
    ld de, $868e
    inc a
    pop af
    sub l

jr_00b_509c:
    ld hl, $a413
    ld h, l
    pop bc
    dec de

jr_00b_50a2:
    ld [hl-], a
    dec bc
    and [hl]
    adc d
    ld de, $8386
    sbc h
    db $f4

jr_00b_50ab:
    inc d
    ld l, l
    ld a, [de]
    ld b, c
    ld e, $38
    ld b, h
    or d
    ld e, e
    db $d3
    ld b, l
    adc e
    ld a, a
    ld d, b
    ld h, b
    ld d, e
    dec b
    and d
    ret nc

    adc h
    ld hl, $5a89
    scf
    add [hl]
    ld [hl+], a
    ld b, c
    ld l, b
    ldh [$88], a
    adc h
    inc hl
    adc [hl]
    inc b
    adc c
    adc [hl]
    sub l
    ld c, c
    adc [hl]
    and l
    ld c, [hl]
    push af
    adc [hl]
    ei
    call z, $93da
    add [hl]

jr_00b_50db:
    sub l
    inc a
    jr jr_00b_50fc

    add hl, bc
    ld e, b
    ld d, e
    sub d
    ret c

    jp nz, Jump_000_390a

    ld h, l
    ld hl, $d3bf
    sbc [hl]
    and e
    ld [$36f1], sp
    ld c, a
    ld a, [hl-]
    ld h, [hl]
    cp [hl]
    ld e, d
    ld e, $d4
    pop bc
    ld d, $bf
    ld b, c
    db $10

jr_00b_50fc:
    add a
    ld de, $a5c0
    cpl
    ld a, d
    ld c, h
    ld b, h
    ld b, h
    add h
    ld b, e
    cpl
    ld h, c
    inc de
    dec h
    cp b
    jp z, $1609

    ld de, $549a
    ld de, $a30e
    dec de
    and l
    ld a, h
    ld d, d
    ld de, $72cf
    ld d, h
    sbc h
    ld de, $a576
    rst $00
    dec a
    sbc b
    ld b, h
    and [hl]
    ld c, c
    sub h
    jr jr_00b_50db

    ld d, c
    sub h
    ld l, [hl]
    and b
    ret


    sub d
    ld [hl], c
    and d
    adc a
    and b
    call $2327
    ld [bc], a
    add l
    adc l
    and a
    inc [hl]
    ld h, l
    ld e, $20
    ld d, l
    cp [hl]
    ld l, c
    ld d, h
    xor $7f
    rst $38
    sub $9f
    db $d3
    sbc [hl]
    call nc, $fd1f
    ld [$418b], sp
    ld e, a
    db $fd
    ld c, l
    ld a, [hl+]
    xor d
    adc h
    ld a, [$ad8a]
    ld [hl], $be
    ld a, [de]
    dec h
    ld c, l
    ld l, l
    ld [hl], $7e
    cp c
    ld d, b
    ld c, l
    call nc, Call_00b_45c5
    ld h, c
    ld h, l
    ld l, e
    push af
    ld c, h
    sub h
    push bc
    sub a
    db $fc
    dec d
    xor d
    sbc d
    cp l
    ld c, l
    ld d, a
    db $eb
    xor c
    sub [hl]
    xor d
    jp nz, $a948

    ld [hl-], a
    db $fd
    ld e, [hl]
    ld h, $97
    add sp, -$79
    ld l, $41
    ld c, d
    xor d
    dec b
    rst $38
    ld [$a81a], a
    call Call_00b_5e4c
    and e
    sub [hl]
    ld [hl], $a3
    and c
    dec h
    adc h
    jr z, jr_00b_51af

    xor c
    ld d, e
    ld d, [hl]
    ld hl, $d88c
    ld d, $aa
    cp a
    ld d, l
    ld d, l
    add c
    ld l, b
    sbc $34
    xor d
    xor d
    and e
    add d
    ld b, c
    inc a
    ld a, d

jr_00b_51af:
    inc a
    dec e
    di
    ld c, b
    and a
    ld a, [hl]
    ld c, a
    add a
    ld b, $18
    ld l, c
    db $d3
    ld [hl], b
    dec l
    ld l, $4f
    jr nz, @-$7b

    sub c
    and [hl]
    or b
    ld [hl], $1e
    add hl, hl
    ld [$11cc], sp
    ld d, b
    ld h, a
    ld [bc], a
    ld d, d
    add hl, bc
    ld de, $6cba
    or h
    add d
    ld [$666c], sp
    sub $98
    db $e4
    ld c, b
    and h
    ld b, e
    ld c, h
    add d
    ld c, d
    ld c, [hl]
    sbc b
    ret nz

    xor a
    sub d
    xor d
    and e
    inc bc
    ld h, $11
    ld l, [hl]
    ld a, [de]

jr_00b_51ec:
    ld c, h
    inc d
    ld e, l
    and h
    jp c, $b065

    ld h, c
    call nc, $8384
    dec hl
    ld b, c
    ld h, l
    ld e, b
    cp c
    ld d, c
    ld a, [de]
    ld a, $c1
    inc e
    ld e, e
    sbc c
    ld hl, $691d
    adc e
    dec e
    adc l
    jr @+$67

    xor d
    sbc h
    dec hl
    dec de
    dec l
    inc de
    ld [hl-], a
    ld a, [bc]
    xor d
    and c
    ld h, $c8
    ld h, $b1
    adc h
    ld [hl], b
    ld d, d
    sbc [hl]
    dec a
    ld e, $08
    ld b, h
    cp l
    or l
    dec sp
    ld e, b
    db $ed
    and e
    sbc c
    ld c, e
    add l
    ld h, h
    sub $f5
    dec bc
    ld d, h
    sbc b
    pop hl
    cp b
    add hl, hl
    ld [hl], d
    ld h, l
    ld b, [hl]
    scf
    xor e
    ld a, [hl+]
    ld b, [hl]
    ret c

    db $dd
    ld a, [bc]
    ld sp, $e1a8
    xor h
    jr @-$29

    ld c, l
    ld d, h
    jr nz, jr_00b_52ad

    jr nc, jr_00b_51ec

    add d
    rst $18
    ld b, $69
    ld a, [bc]
    rst $38
    jr c, jr_00b_527c

Call_00b_5251:
    call c, $3a85
    rst $28
    db $e3
    db $e3
    daa
    or [hl]
    sbc l
    xor l
    dec e
    adc h
    ld [hl], e
    and [hl]
    db $10
    dec l
    ld h, a
    ld [bc], a
    ld e, d
    ld b, e
    inc e
    sub [hl]
    adc l
    dec e
    adc a
    cp $96
    rst $20
    inc de
    rst $38
    ld a, [$e7bf]
    rrca
    ld e, l
    ld a, a
    rst $38
    ld sp, hl
    jp nz, $8791

    push af
    ld d, c

jr_00b_527c:
    rst $00
    ld l, h
    rst $38
    sbc l
    rst $18
    rra
    ld e, b
    ld h, [hl]
    cp l
    dec hl
    rst $30
    push de
    inc a
    ld a, e
    ld e, b
    dec e
    rrca
    sbc e
    db $e4
    call Call_00b_5555
    ld c, l
    dec hl
    xor b
    cpl
    ld b, d
    jr jr_00b_52be

    dec b
    ld a, a
    xor d
    xor d
    xor a
    ld c, h
    jp hl


    ld hl, sp-$78
    add h
    ld h, b
    xor d
    jr c, jr_00b_52d4

    inc sp
    cp l
    ld hl, $2241
    rlca

jr_00b_52ad:
    rst $38
    rst $38
    ld d, h
    add $8c
    inc d
    sub a
    add $06
    ld e, b
    dec d
    ld d, l
    ld b, d
    xor a
    ld c, e
    and d
    sub l

jr_00b_52be:
    push de
    ld a, [bc]
    dec b
    rst $10
    cp $aa
    xor e
    jp nc, $292d

    ld l, a
    jp hl


    ld c, $45
    ld a, [hl]
    and e
    ld a, e
    ld c, b
    and d
    db $ed
    ld e, [hl]
    rrca

jr_00b_52d4:
    db $f4
    push de
    ld d, l
    ld c, d
    ld d, d
    inc d
    jp nz, $dfaf

    adc h
    rst $18
    xor d
    ld e, e
    ld c, a
    ld [de], a
    adc h
    ld l, a
    db $d3
    pop bc
    and b
    ld l, c
    dec l
    ld l, d
    ld h, $8e
    add l
    ld [$c298], sp
    ld c, h
    xor b
    sbc b
    reti


    ld b, c
    ld l, d
    adc d
    ld h, b
    ld c, e
    and e
    ld a, [de]
    ld c, e
    ld d, a
    sub a
    adc d
    and c
    ld b, l
    inc sp
    and d
    and $ae
    xor h
    db $10
    sub e
    dec b
    dec h
    jr nc, jr_00b_52ad

    ld d, e
    ld a, [hl+]
    ld [hl], l
    adc b
    ld d, e
    dec b
    dec e
    adc h
    jr z, jr_00b_532b

    pop hl
    xor d
    add hl, sp
    sbc [hl]
    dec b
    dec sp
    add sp, -$3b
    pop hl
    ld d, e
    pop bc
    or l
    ld d, a

jr_00b_5324:
    pop hl
    ld a, b
    pop af
    dec h
    push af
    ld a, [hl]
    inc a

jr_00b_532b:
    sbc d
    xor b
    rst $30
    scf
    and l
    adc [hl]
    db $e4
    daa
    sub e
    add [hl]
    db $db

Call_00b_5336:
jr_00b_5336:
    adc [hl]
    ld [de], a
    add $89
    adc d
    ld l, h
    pop hl
    inc c
    or c
    ld [hl], $08
    jr nz, jr_00b_5324

    add $30

jr_00b_5345:
    ld b, [hl]
    sbc b
    or d
    ld h, [hl]
    add a
    inc b
    ld l, a
    ld l, c
    xor h
    add $2c
    dec [hl]
    ld d, l
    ld d, h
    xor c
    adc h
    sbc b
    ld h, l
    or l
    inc bc
    sbc $42
    xor d
    sub l
    ld c, c
    jr nc, jr_00b_5345

    ld hl, $3882
    or a
    jr nz, @-$2b

    rla
    ld c, d
    ld c, h
    sub l
    ld a, [hl-]
    inc e
    inc d
    and c
    inc c
    ret nc

    ld b, a
    inc b
    ld d, h
    jr nc, jr_00b_5336

    ld b, b
    and e
    ccf
    sbc d
    and h
    and l
    ld b, l
    ld h, $10

jr_00b_537e:
    ld c, b
    ld a, [c]
    ld l, d
    pop bc
    ld d, l
    ret


    ld sp, $d269
    add $7a
    add hl, hl
    rst $18
    sbc d
    call Call_000_1097
    sbc h
    or c
    ld a, [bc]
    ld h, e
    ld sp, $1393
    sbc e
    ret nz

    ret nc

    reti


    ld l, h
    ld h, [hl]
    sub a
    and l
    and h
    inc sp
    rla
    inc h
    or c
    sbc e
    jr jr_00b_53ce

    ld a, [hl+]
    inc e
    db $10
    ld e, c
    adc h
    ld c, h
    ld l, c
    sbc c
    ld b, b
    ret nc

    cp a
    ld h, [hl]
    inc c
    ld b, [hl]
    ld l, e
    inc e
    jr nc, jr_00b_537e

    ld e, c
    jp $f21d


    ld l, h
    rst $00
    add l
    ld a, [hl+]
    ld h, b

Call_00b_53c1:
    rst $00
    adc a
    add d
    and b
    rst $00
    sub l
    ld de, $e01e
    ld b, h
    cp c
    rst $10
    db $fc

jr_00b_53ce:
    rst $20
    ld d, a
    and e
    add d
    db $d3
    ld a, [bc]
    jp nz, $f35f

    ld h, l
    ld c, d
    ld h, c
    ld l, b
    ldh [$a1], a
    cp c
    ld d, b
    add l
    add hl, sp
    ld a, e
    ld l, c
    sbc c
    jr c, @-$4f

jr_00b_53e6:
    sbc b
    xor c

Call_00b_53e8:
    ret c

    db $e4
    cp c

jr_00b_53eb:
    ld c, e
    or h
    ldh [$62], a
    ld h, b
    sub h
    cp d
    sub h
    push de
    add c
    ld e, e
    or h
    jr @-$6a

    pop de
    ld d, l
    dec b
    ld a, [bc]
    jr jr_00b_5414

    dec c
    adc h
    ld e, e
    ld b, c
    or a
    ld l, [hl]
    ld a, [hl+]
    and b
    adc h
    ld l, d
    and a
    ld a, a
    call nc, $81ab
    jr c, jr_00b_543a

    ld [hl], l
    ld b, $26
    adc [hl]

jr_00b_5414:
    ld e, d
    and e
    adc $9d
    ld l, d
    ld [hl], a
    ld a, $69
    ld a, [de]
    jr c, jr_00b_53e6

    ld [bc], a
    ld h, a
    ld d, c
    ret


    jr nz, jr_00b_53eb

    add hl, bc
    ret z

    adc d
    push de
    and a
    inc l
    ld b, l
    sub l
    ld l, c
    db $d3
    ld [bc], a
    cp a
    jp hl


    jp Jump_00b_465a


    dec d
    rst $38

jr_00b_5437:
    add sp, $40
    sbc e

jr_00b_543a:
    ld b, c
    inc d
    rst $18
    rst $38
    jp hl


    and l

jr_00b_5440:
    ld d, [hl]
    sub b
    pop hl
    jp $9a57


    ld b, b
    xor a
    ld d, h
    ld sp, hl
    ld d, e
    dec de
    db $dd
    ld d, e
    ld a, [$474d]
    ld [hl+], a
    ld d, $7c
    ld [hl], b
    ld d, l
    cp l
    push bc
    ld d, l
    ld c, [hl]
    push de
    cp $bf
    ld a, [$9dd3]
    add sp, -$7a
    jr nc, jr_00b_53e6

    ld c, [hl]
    scf
    adc d
    adc h
    add hl, de
    ld b, l
    jr c, jr_00b_54c0

    jr jr_00b_5437

    dec c
    ld [hl+], a
    dec e
    ld [hl], $51
    and d
    ld d, d
    or c
    and [hl]
    jr c, jr_00b_54cd

    adc $22
    ld [hl-], a
    adc a
    dec h
    ld a, [hl-]
    ld d, d
    inc de
    or c
    adc c
    ld h, d
    db $10
    adc $ba
    ld [hl-], a
    and d
    ld d, h
    sbc b

Call_00b_548b:
    push de
    ld c, h

jr_00b_548d:
    inc hl
    ld a, [de]
    adc c
    ld c, a
    ld b, $45
    inc b
    inc hl
    ld a, d
    jr c, jr_00b_5440

    ld de, $7b53
    ld c, c
    adc l
    and [hl]
    jr c, jr_00b_548d

    ld [hl+], a
    ld c, l
    sbc b
    db $e4
    or l
    add hl, de
    inc sp
    ld c, [hl]
    adc d

Jump_00b_54a9:
    db $fd
    ld a, [c]
    sub [hl]
    dec sp
    xor d
    xor d
    adc l
    ld [hl], a
    cp b
    sub h
    sbc l

jr_00b_54b4:
    xor b

Jump_00b_54b5:
    ld h, c
    call Call_00b_4c50
    ld [hl], l
    ld c, e
    ld d, b
    xor l
    ld c, e
    add d
    ld [hl], e

jr_00b_54c0:
    ld sp, $3568
    ld d, h
    rst $20
    ld e, $31
    sub d
    add hl, bc
    ld e, h
    and [hl]
    ld hl, sp+$54

jr_00b_54cd:
    ld h, c
    ld [bc], a
    inc [hl]
    sub c
    inc b
    ld l, d
    ldh [$9a], a

Jump_00b_54d5:
    or c
    ld sp, $b409
    ld [hl], e
    ret nc

    and $e9
    or [hl]
    sub e
    daa
    dec l
    jr jr_00b_54b4

    db $db
    ld b, [hl]
    ld [$2c3c], sp
    ld c, l
    sbc d
    ld [$a262], a
    or l
    db $10
    add h
    ld [hl], b
    ld h, [hl]
    or c
    add d
    ld de, $71c3
    add d
    add hl, hl
    dec hl
    ld sp, $c319
    dec h
    ret z

    ld d, a
    call nc, $9c43
    sub d
    ld e, l
    ccf
    ld a, [hl+]
    db $fc
    ld [hl], e
    and [hl]
    ld d, b
    ld d, a
    dec e
    db $10
    inc [hl]
    ld a, [bc]
    xor d
    inc d
    ld [hl], a
    rst $00
    jr nz, jr_00b_555a

    cp [hl]
    ld d, l
    ld e, a
    db $d3
    sbc c
    ld a, [hl]
    or l
    ld c, [hl]
    ld d, [hl]
    ld h, c

Jump_00b_5520:
    ld a, d
    jp nz, $e638

    dec d
    adc [hl]
    adc b
    rla
    ret c

    ld [$f868], a
    dec d
    ld d, h
    adc c
    ld c, [hl]
    ld a, [hl+]
    ld_long a, $ffab
    inc b
    ld [c], a
    ld h, l
    add hl, hl
    ld e, b
    push hl
    sub b
    xor d
    adc d
    ld c, [hl]
    ld e, d
    sub l
    ld d, [hl]
    adc a
    add [hl]
    rst $18
    ld l, $8a
    db $76
    dec sp
    add hl, hl
    jp z, $c0e2

    ret nc

    ld b, a
    daa
    sub $0c
    and a
    inc [hl]
    add d
    ret nz

Call_00b_5555:
    rst $00
    ld b, e
    ld c, h
    db $76
    inc l

jr_00b_555a:
    db $76
    and l
    and h
    jp z, Jump_00b_4871

    ret c

    ld b, l
    ret


    push bc
    and c
    add hl, de
    ld d, c
    ret


    ld a, [hl+]
    ld e, d
    sbc l
    dec [hl]
    ld d, h
    ld a, h
    ld b, b
    ld h, [hl]
    or l
    ld d, l
    ld d, h
    and $55
    inc sp
    ld e, a
    ld a, [$bfaa]
    call nc, $51c5
    ld a, e
    ld h, e
    rla

Jump_00b_5580:
    or a
    dec [hl]
    ld a, [hl]
    ld c, b
    ld a, [hl]
    xor l
    ld a, [bc]
    rst $38
    ld c, c
    ld a, c
    add sp, -$3f
    ld e, a
    ld [$68a0], a
    rst $08
    rlca
    adc b
    ld d, b
    or l
    rst $38
    xor e

Call_00b_5597:
    ld d, a
    sub d
    ld e, c
    adc b
    ld d, [hl]
    dec hl
    adc c
    ld d, [hl]
    ld l, d
    ld e, a
    xor b
    sub h
    xor b
    ld de, $5868
    dec d
    adc e
    ld d, [hl]
    rla

Jump_00b_55ab:
    and e
    inc d
    ld e, a
    ld b, [hl]
    and d
    ld h, c
    adc h
    add sp, $5e
    inc sp
    ld c, b
    ld d, b
    ld c, h
    ld h, e
    dec h
    ld hl, $13f4

Jump_00b_55bd:
jr_00b_55bd:
    ld h, $06
    dec de
    jp nz, Jump_000_2352

    dec b

jr_00b_55c4:
    cp e
    ld c, c
    and l
    dec l
    add c
    ld c, h
    dec hl
    jp nz, Jump_000_2a4c

    ld hl, sp+$38
    or l
    ld hl, $0486
    add h
    adc $2a
    add d
    ld [hl+], a
    adc l
    ld hl, $826f
    inc b
    ld e, b
    inc d
    add hl, hl
    push af
    ld b, c
    add c
    add c
    ld d, e
    ld a, [bc]
    adc l
    ld l, b
    or [hl]
    ld [hl+], a
    sub h
    and l
    inc sp
    ld c, b
    adc d
    ld b, e
    adc h
    ld h, e
    inc e
    ld [de], a
    jr z, jr_00b_55c4

    ld [$93c9], sp
    add hl, bc
    dec h
    ldh [$8e], a
    ld a, [bc]
    ld l, $04
    ld h, [hl]
    ld sp, $8ea7
    dec [hl]
    add hl, hl
    call z, $5218
    ld e, l
    ld a, [hl+]
    add hl, sp
    ld e, $06

jr_00b_560f:
    ld [$3024], sp
    ld b, d
    ld b, a
    adc c
    and e
    adc l
    db $e3
    dec b
    cp $05
    ret c

    and l
    jr c, jr_00b_55bd

    add hl, hl
    ld e, a
    db $ed
    ld a, [$2121]
    jr c, jr_00b_560f

    sub a
    cp $1a
    and d
    sbc [hl]
    inc d
    jp hl


    and b
    add e
    ld sp, $855f
    ret z

    adc [hl]
    ld h, l
    add hl, bc
    ld a, a
    rst $38
    add sp, $57
    add d
    ld c, [hl]
    sbc e
    push af
    ld d, l
    ld d, l
    cp $8a
    sbc h
    jp $946a


    sbc h
    ret z

    and [hl]
    adc [hl]
    ld a, $aa
    ld hl, sp-$17
    sub d
    add hl, bc
    ld a, $11
    and [hl]
    rst $18
    ld d, l
    ld d, c
    inc c
    add hl, bc
    ld a, h
    ld a, [de]
    ld [de], a
    cp b
    ld b, [hl]
    inc l
    ld b, l
    ld [de], a
    add e
    add a
    inc c
    ld b, d
    sub b
    sub b
    add e
    inc a
    ld c, e
    add h
    ld [$82fe], sp
    xor $c9
    ld c, h
    dec l
    ld a, [bc]
    ld c, d
    sub h
    pop bc
    ld h, c
    ld a, [bc]
    jr jr_00b_56c0

    ld de, $601c
    ret nz

    push de
    rla
    ld sp, $110e
    sbc h
    dec sp
    xor c
    ld c, c
    inc d
    ld h, l
    sub e
    add $b3
    and h
    ld hl, $2648
    adc c
    inc e
    add h
    sbc d
    dec a
    ld b, c
    ld c, a
    xor b
    ld h, $28
    ret nz

    sub l
    ld b, $98
    or c
    ld [hl], b
    ret nz

    add [hl]
    sbc b
    ld hl, $8740
    sub a
    sbc b
    ld b, d
    sbc c
    ld a, [hl+]
    ld sp, hl
    ld e, c
    jr z, jr_00b_56f5

    ld e, c
    ld e, l
    ld b, d
    adc h
    sub $08
    ld e, d
    call nz, $0fab
    ld h, [hl]
    ld [de], a
    ld b, [hl]
    ld h, b
    db $ed
    inc c

jr_00b_56bf:
    inc c

jr_00b_56c0:
    ld c, l
    ld c, a
    inc de
    and $5a
    add hl, bc
    add [hl]
    adc d
    ld [hl], b
    ld c, c
    ld d, c
    sbc a
    ld b, l
    ld [c], a
    adc d
    ld b, l
    and [hl]
    inc c
    add hl, de
    pop bc
    push bc
    or b
    ret c

    call nz, Call_000_20d8
    add d
    ld b, d
    ld l, [hl]
    push bc
    ld [hl], $82
    ld a, [hl-]
    rla
    inc h
    ld c, a
    inc b
    inc c
    ld l, a
    ld [de], a
    jp Jump_000_23c1


    cp [hl]
    dec l
    and h
    ld d, a
    inc e
    ld l, h
    ld h, e
    cp a
    ret nz

    add e

jr_00b_56f5:
    jp nz, $71f2

    inc l
    ld e, d
    ld c, $0a
    inc c
    ld [$f042], sp
    rst $20
    inc d
    ld e, [hl]
    or b
    ld d, [hl]
    inc [hl]
    ld c, e
    call nz, $cf31
    add l
    push bc
    ld d, d
    adc e
    call nz, Call_00b_67e1
    ld [hl], $12
    push de
    ld d, l
    jr c, jr_00b_5762

    sub e
    add hl, hl
    pop de
    add [hl]
    sbc b
    ret c

    ld sp, $9885
    nop
    ld b, h
    and [hl]
    ei
    call nc, Call_00b_4aa7
    ld e, h
    add $db
    cp a
    jp nc, Jump_00b_6b6d

    db $e3
    add [hl]
    cp l
    ld c, d
    rst $28
    add hl, sp
    ld h, d
    jr jr_00b_56bf

    push hl
    or c
    and e
    xor d
    ld c, l
    ld d, h
    pop hl
    adc l
    ld h, [hl]
    dec [hl]
    ld c, [hl]
    jr @-$2c

    sub e
    or c
    add d
    dec sp
    inc hl
    sbc a
    sub d
    call nc, $93e7
    ld a, [de]
    ld d, l
    dec d
    ld l, d
    ld b, c
    xor e
    inc d
    sbc $bd
    ld d, l
    push de
    sub [hl]
    add hl, sp
    ld a, [hl+]
    xor d
    xor b
    ld a, [c]
    db $76
    ld a, [hl+]
    ld [hl], c

jr_00b_5762:
    ld h, $b3
    add hl, hl
    add d
    ld c, a
    sbc h
    inc d
    ld a, [c]
    dec bc
    inc b
    add e
    ld e, c
    rst $00
    ld h, $14
    ld [hl], b
    inc h
    cp e
    jr jr_00b_57c8

    sbc d
    ld b, h
    add $e9
    jp nz, Jump_00b_4c9a

    ld [hl], c
    cp h
    ld h, b

jr_00b_5780:
    and [hl]
    ret nc

    ld b, l

jr_00b_5783:
    or c
    sbc d
    ld h, d
    pop bc
    ld a, [hl+]
    or h
    inc d
    ld c, l
    xor h
    ld h, e
    inc bc
    add $68
    xor l
    ld c, c
    adc l
    ld h, [hl]
    ld c, h
    ld b, d
    inc d
    and c
    add hl, de

Call_00b_5799:
    push de
    ld d, a
    jp nz, Jump_00b_55ab

    ld d, c
    jp $ae5f


    xor e
    ld b, a
    jp Jump_00b_5580


    dec a
    ld d, a
    inc a
    add [hl]
    jr nc, jr_00b_5780

    push bc
    cp d
    dec sp
    db $e4
    adc c
    and e
    xor c
    ld e, c
    dec d
    ld h, [hl]
    adc b
    ld d, a
    ld c, [hl]
    ld d, $26
    add hl, bc
    jp hl


    dec b
    and h
    ld a, $37
    ld [hl], e
    ld c, b
    jr z, jr_00b_5803

    add sp, -$1f

jr_00b_57c8:
    ld h, c
    ld b, l
    ld l, $14
    ld [hl+], a
    call nc, Call_000_27d2
    ld l, e
    jr c, @+$36

    inc de
    ld h, h
    inc [hl]
    dec a
    add hl, hl
    dec h
    ld [hl+], a
    inc d
    sub $41
    ld d, $e3
    ld a, [de]
    cp a
    ld [hl], a
    call nc, Call_00b_41ce
    inc d
    ld d, c
    ld h, c
    ld a, a
    rlca
    ld sp, hl
    ld l, b
    inc [hl]
    add $dd
    add c
    ld a, [bc]
    rla
    inc c
    ld h, h
    cpl
    ld b, d
    ld [hl+], a
    ld c, h
    ld d, a
    add c
    dec b
    inc c
    jr nz, jr_00b_5783

    cp a
    ld b, d
    db $dd
    ld b, d
    ld c, d

jr_00b_5803:
    ld [hl], b
    sub [hl]
    ld a, d
    ld l, $f8
    ld a, [de]
    add $63
    ld a, [de]
    ld [hl+], a
    ld e, b
    jp nc, $0e53

Call_00b_5811:
    ld d, $26
    ret c

    adc b
    sbc $bd
    push de
    ld [hl], b
    adc h
    jr nz, jr_00b_5874

    push hl
    add e
    ld hl, sp-$0d
    ld [hl], a
    xor e
    add d
    ld a, b
    db $ec
    ld d, e
    cp c
    ld [c], a
    dec a
    ld e, $05
    adc e
    add h
    db $76
    jp z, Jump_00b_7828

    ld b, h
    inc hl
    add hl, sp
    ret nz

    db $ed
    rla
    ld b, b
    adc h
    add l
    or c
    jp $b546


    dec l
    cpl
    ld l, c
    and d
    ld de, $670a

jr_00b_5845:
    sub b
    and h
    inc a

Jump_00b_5848:
    ld h, a
    ld de, $263d
    db $ec
    ld b, d
    ld l, d
    add h
    inc l
    sbc c
    pop hl
    ld d, c
    add hl, bc
    and [hl]
    jr z, jr_00b_58aa

    ld h, a
    ld d, d
    rst $38
    xor $09
    sub [hl]
    add hl, hl
    xor e
    ld a, [hl-]
    ld h, c
    ld b, b
    sbc c
    ld h, e
    ld b, [hl]
    inc l
    rra
    ld [hl], h
    add $16
    ld h, b
    ldh [$c4], a
    jr z, jr_00b_58b8

    ldh a, [rSTAT]
    ld [bc], a
    inc e

jr_00b_5874:
    ld a, [$9285]
    push af
    db $10
    jp $fc16


    and c
    jr nc, jr_00b_5845

    jr nc, jr_00b_58d5

    add e
    sbc c
    jp z, $2310

    xor h
    add e
    sub e
    or [hl]
    xor [hl]
    ld l, l
    ld b, $10
    ld hl, $1952
    ld [hl], b
    ld [hl], h
    ld [hl], e
    or l
    inc b
    ld a, c

jr_00b_5897:
    add b
    ld b, h
    cp [hl]
    ld b, l
    ld a, [hl-]
    db $dd
    ld l, [hl]
    ld [hl], h
    rst $20
    ld d, [hl]
    xor c
    ld d, e
    sbc [hl]
    adc e
    and d
    ld e, $ce
    inc d
    or h

jr_00b_58aa:
    ld d, $39
    xor h
    ld e, $22
    ld a, [bc]
    ld h, e
    add e
    ld a, b
    ld l, h
    jp hl


    ld a, c
    ld d, b
    ld b, a

jr_00b_58b8:
    sub h
    rst $20
    add l
    jp nz, $ec70

    and $aa
    ld [hl+], a
    xor b
    db $fc
    ld d, $7d
    ld [hl], d
    ld c, d
    ld [hl], l
    ld b, c
    cp $c7
    ld b, h
    add e
    rst $38
    call nz, Call_00b_7132
    ld a, a
    rst $38
    sub a
    sbc h

jr_00b_58d5:
    cpl
    inc a
    ld d, $0d
    jp c, Jump_000_3f9d

    cp $e7
    inc h
    inc d
    rst $10
    rst $38
    sbc h
    call z, $4108
    call nc, $4a7e
    ld h, [hl]
    cp b
    ld h, h
    or [hl]
    ld hl, $c58e
    ld a, [hl+]
    adc h
    jr nz, jr_00b_5897

    cp d
    call nc, Call_00b_468b
    ld [hl+], a
    adc c
    ld e, a
    rst $38
    ld d, e
    add d
    add d
    cp [hl]
    dec d
    ld c, h
    ld e, [hl]
    adc e
    xor l
    ld sp, $a24a
    ld [hl-], a
    ld h, d
    and d
    inc hl
    ld e, e
    ld c, d
    add e
    ld b, d
    sbc d
    ld d, c
    ld c, b
    add c
    db $d3
    dec d
    db $fd
    inc [hl]
    ld b, [hl]
    jp nz, $cb68

    ld c, h
    ld e, [hl]
    rst $18
    db $f4
    sbc b
    cp b
    ld d, h
    jr @-$59

    and c
    adc e
    ld a, a
    and [hl]
    adc h
    ld h, h
    ld d, b
    sbc b
    add h
    or l
    jr @-$57

    and c
    ld a, d
    sub e
    add hl, hl
    adc h
    ld d, c
    ld l, b
    db $10
    adc h
    ret c

    dec d
    inc b
    adc b
    inc de
    dec [hl]
    ld h, $21
    add hl, de
    ld d, d
    ld d, a
    jp nc, $821f

    dec h
    add hl, de
    ld [hl-], a
    add l
    push de
    xor l
    ld e, d
    rla
    push de
    ldh [$60], a
    ld h, e
    add hl, bc

jr_00b_5955:
    ld h, b
    ld d, d
    and d
    dec de
    db $e3
    ld a, [de]
    ld d, [hl]
    add c
    adc d
    adc [hl]
    ld h, $18
    sub l
    ld [$5641], a
    adc [hl]
    rla
    add hl, hl
    adc d
    ld e, d
    ld a, [de]
    jr c, jr_00b_5955

    adc b
    sbc c
    jr nc, jr_00b_59d9

    sub h

jr_00b_5972:
    ld a, h

jr_00b_5973:
    jr z, jr_00b_5955

    ld d, d
    ret nc

    pop hl
    add l
    inc d
    jp nz, $e594

    and d
    ld a, [hl+]
    jr nc, jr_00b_5973

    inc a
    ld d, [hl]
    jr c, jr_00b_5972

    inc b
    ld a, h
    sub l
    ld d, b
    and d
    sub l
    add hl, sp
    add sp, $60
    ld b, c
    ld a, b
    ld l, [hl]
    push af
    xor d
    ld a, [hl-]
    inc d
    add h
    ld a, [hl-]
    ld [hl-], a
    xor b
    ld [$2052], a
    adc a
    dec e
    ld [c], a
    jr nz, @-$6f

    ld [hl+], a
    push af
    adc a
    rra
    ld [hl], b
    and $0e
    ld c, [hl]
    db $76
    ld h, $19
    ld d, h
    add hl, sp
    db $dd
    jp z, Jump_00b_7c29

    ld d, $5b
    ld a, [hl+]
    ret nz

    sbc h
    ld d, $33
    db $e3
    and c
    inc c
    sub b
    or c
    add h
    add hl, bc
    sub d
    ld d, l
    sub h
    adc h
    adc d
    ld de, $29c3
    ld e, b
    inc hl
    and c
    ld h, b
    add h
    db $10
    call c, Call_00b_48e6
    ld h, b
    sub l
    dec d
    adc h
    add l
    dec b
    ld e, e
    dec b

jr_00b_59d9:
    ld b, c
    ld [hl], c
    add [hl]
    jr @+$32

    ld h, h
    reti


    ld d, c
    inc de
    ld b, h
    push bc
    and [hl]
    ld [$4348], sp
    inc b
    ld e, [hl]
    ld b, [hl]
    ld c, h
    ld sp, $732f
    inc c

jr_00b_59f0:
    add a
    inc b
    ld b, e
    ld d, c
    sub h
    add e
    ld [de], a
    adc h
    add e
    ld [hl], b
    ld d, c
    ld d, d
    ld c, d
    xor d
    add d
    ld c, [hl]
    ld c, h
    ld [$28b1], sp
    jr nc, jr_00b_5a3e

    xor c
    ld d, [hl]
    db $e3
    ld d, e
    sub e
    adc [hl]
    ld de, $2110
    add hl, de
    ld c, [hl]
    ld sp, hl
    dec c
    inc b
    rra
    add h
    ld c, l

jr_00b_5a17:
    ld de, $9192
    jr jr_00b_59f0

    ldh a, [$bd]
    ld l, d
    ld e, d
    pop de
    ld d, c
    sub [hl]
    ld h, d
    ldh a, [$bc]
    ld c, l
    ld [hl], l
    ld d, c
    sbc d
    ld [hl], b
    jr c, jr_00b_5a90

    push bc
    ld [hl+], a
    and [hl]
    ld a, [c]
    ld b, d
    ld b, h
    sub l
    ld a, [de]
    push af
    rst $00
    ld b, $42
    ld [hl-], a
    ret


    ld l, $a8
    xor a

jr_00b_5a3e:
    ld b, c
    add [hl]
    ld [hl], c
    ld h, h
    ld [hl+], a
    call z, Call_00b_4365
    sub c
    sbc h
    sub h
    add h
    dec bc
    ld [de], a
    ret c

    and l
    ld h, b
    rst $20
    ld b, d
    ld e, d
    push bc
    ld e, b
    jr nz, jr_00b_5a17

    dec e
    ld sp, $693c
    inc b
    ld [hl], l
    call nz, $e3d1
    xor h
    ld c, d
    ld a, c
    inc [hl]
    add d
    xor c

jr_00b_5a65:
    ld [c], a
    add b
    ld b, h
    or h
    sub h
    and a
    ld c, l
    sub e
    ld [$2e3d], sp
    rla
    ld c, h
    ld [hl], h
    sub a
    db $db
    jp nc, Jump_00b_4c6d

    sub [hl]
    jp nc, $f1df

    ld d, l
    inc b
    jp z, $dcdf

    db $10
    ld d, l
    adc b
    ld b, c
    inc [hl]
    ld e, b
    sbc d
    ret nc

    ld l, b
    inc d
    ld de, $b489
    jr z, jr_00b_5a65

jr_00b_5a90:
    and h
    ld de, $6a62
    adc $06
    inc b
    add h
    cp e
    ld d, h
    ld [de], a
    jp nc, Jump_00b_5520

    db $e4
    add $83
    sbc b
    ld h, h
    add a
    ld [hl+], a
    ld b, d
    db $d3
    dec b
    sbc e
    jr nc, jr_00b_5af1

    sub l
    and e
    ld b, $de
    sub c
    add c
    sub h
    pop hl
    xor d
    dec h
    jp nz, $8e22

    xor e
    ld d, a
    adc [hl]
    jp z, Jump_00b_468f

    ld a, c
    xor [hl]
    sub a
    call nz, $0227
    ld [$4f5a], sp
    and h
    ld b, [hl]
    ld l, c
    add h
    ld d, $83
    ld [hl], b
    ret


    sbc l
    ld a, [hl+]
    sub c
    dec b
    ld hl, sp+$43
    add hl, hl
    and l
    rst $38
    add sp, $23
    db $e4
    ld c, h
    sbc e
    ld a, a
    cp $08
    db $e3
    inc b
    add hl, bc
    add d
    ld a, [de]
    rst $38
    rst $38
    or d
    ld b, h
    pop bc
    ld h, [hl]
    scf
    rst $18
    rst $38
    ld hl, sp+$28
    ld b, b

jr_00b_5af1:
    add a
    and [hl]
    ld d, e
    pop bc
    pop hl
    db $fc
    dec d
    ccf
    inc b
    ld l, c
    ld de, $f1e1
    rst $10
    add l
    jp hl


    db $db
    ld a, a
    rra
    ld h, b
    ld d, l
    or l
    xor a
    ld d, e
    push bc
    sbc l
    db $fd
    ld d, h
    db $ec
    pop de
    ld a, l
    inc c
    db $10
    and l
    add hl, sp
    ld e, a
    add [hl]
    ld [hl+], a
    sbc e
    inc d
    dec l
    jr c, jr_00b_5b7b

    ld [$9528], sp
    ret nc

    sub $eb
    ld c, l
    xor b
    ld a, [hl-]
    ld hl, $5e54

Jump_00b_5b28:
    add d
    add d
    add l
    inc [hl]
    and a
    add d
    add e
    xor d
    ld [$5189], sp
    xor b
    inc de
    ld c, d
    inc b
    ld d, l
    ld d, $52
    ld d, $2a
    call nc, $95c6
    jr jr_00b_5b51

    ld c, b
    and d
    ld [de], a
    ld d, $08
    sbc $42
    ld a, d
    db $e3
    ld a, [de]
    sub d
    ld l, $4d
    sbc l
    xor b
    ret


jr_00b_5b51:
    ld b, a
    add c
    ld l, b
    rst $08
    ld d, d
    ld d, $06
    or [hl]
    add d
    jr @+$20

    ld [hl], $aa
    call nc, $f2c5
    jr jr_00b_5b73

    ld d, l
    inc [hl]
    ld d, c
    ld [hl], a
    jp z, Jump_00b_6085

    ld b, e
    xor l
    ld h, e
    ld b, l
    dec d
    dec de
    ld e, [hl]
    cp l
    ld b, [hl]

jr_00b_5b73:
    cp d
    dec b
    dec [hl]
    or l
    dec b
    ld [$d2a2], a

jr_00b_5b7b:
    sub h
    ldh [$de], a
    add d
    ret nc

    ld d, l
    ld l, d
    add l
    db $e3
    ld d, l
    push af
    or l
    ld e, $c2
    or b
    and [hl]
    adc l
    rst $38
    ld b, [hl]
    call c, $8a28
    push de
    adc [hl]
    ld a, [hl-]
    cp a
    push de
    ld e, d
    xor b
    db $e3
    sbc d
    res 0, d
    ld a, b
    ld l, a
    jp nc, $29b2

    sbc $8d
    db $ec
    ld b, h
    add hl, bc
    rst $08
    dec sp
    cp $cf
    and e
    ld a, c
    set 7, l
    rst $38
    ei
    ld [hl], d
    sub c
    jp hl


    or d
    rra
    ld a, b
    ld a, l
    ld b, c
    ld hl, sp+$7f
    dec c
    add d
    ld l, c
    rlca
    rst $28
    add e
    cp $1e
    rra
    pop de
    ld d, $9a
    ccf
    ld a, [$f1f7]
    dec hl
    db $10
    and d
    ret


    adc h
    scf
    cp a
    add a
    jp hl


    cpl
    rst $38
    ld b, b
    and [hl]
    xor a

jr_00b_5bd8:
    add a
    jr nc, jr_00b_5bfc

    ld a, d
    ld a, [c]
    add d
    ld d, [hl]
    ld de, $fe97
    and $48
    inc [hl]
    adc d
    add h
    ld l, b
    rst $30
    rst $38
    db $eb
    ei
    ld [c], a
    ei
    inc e
    scf
    cp h
    ld e, $1f
    add l
    jr nz, @+$01

    ret nz

    adc d
    ld l, c
    ld e, [hl]
    db $db
    cp a

jr_00b_5bfc:
    cp a
    db $fd
    ld a, [hl+]
    ld [$1a41], sp
    ld d, a
    cp a
    rst $28
    ld d, b
    dec hl

jr_00b_5c07:
    rst $38
    db $76
    add h
    ld l, a
    ld l, a
    ld l, a
    rst $38
    rst $38
    ld hl, sp+$61
    pop de
    push bc
    ld a, a
    rst $38
    ld a, l
    ld e, a
    call nc, $c170
    ld [bc], a
    rst $30
    rst $08
    cp $1c
    ld [hl], c
    and c
    cp $ff
    cp l

jr_00b_5c24:
    ld e, h
    ld sp, $18cf
    ld b, a
    ld b, b
    ld b, h

jr_00b_5c2b:
    cp l
    dec [hl]
    ld l, a
    cp l
    jr c, jr_00b_5c07

    ret c

    jr nz, jr_00b_5c85

    adc $2c
    jr nc, @-$56

    jr z, jr_00b_5c50

    adc [hl]
    dec b
    ld l, e
    ld b, $b5
    jr c, jr_00b_5c2b

    xor $b6

jr_00b_5c43:
    ld b, [hl]
    jr jr_00b_5c24

    ldh [$85], a
    push hl
    rlca
    and h
    ld [c], a
    rst $18
    ld d, l
    dec c
    ret nc

jr_00b_5c50:
    ld c, [hl]
    jr z, jr_00b_5bd8

    and l
    ld a, [de]
    ld c, [hl]
    dec h
    ldh a, [rLYC]
    db $76
    adc [hl]
    inc h
    ld de, $856f
    adc $17
    jp nc, $a414

    jr c, jr_00b_5c43

    ld b, a
    ldh a, [$e5]
    ld h, d
    inc hl
    add d
    ld hl, sp+$6a
    xor d
    and e
    pop hl
    rst $20
    xor h

jr_00b_5c73:
    adc d
    ld [hl], h
    ld hl, $7c38
    jp hl


    rst $00
    ld d, l
    ld d, l
    rst $28
    sbc h
    add sp, -$46
    or [hl]
    sbc h
    inc l
    adc e
    db $fc

jr_00b_5c85:
    rrca
    add [hl]
    ld [hl], c
    inc hl
    ldh a, [rVBK]
    ret nz

    and a
    ld [de], a
    sub $bf
    ld a, e
    rst $20
    ld e, $0f
    inc bc
    or a
    ld sp, hl
    push bc
    push af
    or a

jr_00b_5c9a:
    pop hl
    ld h, a
    inc h
    db $fd
    ld d, l
    ld l, b
    add hl, sp
    rst $00
    ret nz

    add d
    ld c, [hl]
    inc d
    ld [hl], b
    cp l
    ld c, b
    inc [hl]
    db $10
    daa
    db $d3
    add b
    ld h, [hl]
    cp d
    ld d, e
    rst $00
    xor c
    ld hl, $3c82
    ld a, [hl+]
    ld c, b
    reti


    adc c
    add c
    ld a, a
    db $fd
    ld c, c
    ld d, h
    ret


    ld d, d
    and d
    dec l
    ld l, $62
    ld [$8cde], a
    ld l, b
    scf
    call z, Call_000_2999
    jr nc, jr_00b_5d47

    inc d
    rla
    adc h
    sub c
    and h
    push bc
    dec l
    ld c, c
    ld e, l
    ld a, [de]
    adc d
    xor b
    xor d
    ld d, e
    jr jr_00b_5c73

    sbc d
    ld l, b
    ld l, l
    ld a, [bc]
    dec b
    add hl, de
    inc sp
    ld l, d
    ld [hl], c
    ld c, b
    add d
    sub l
    ld b, [hl]
    ld d, c
    or a
    adc e
    ld c, h
    ld a, [hl-]
    ld h, $a0
    sub l
    jr nc, jr_00b_5c9a

    ld l, d
    ld [hl], b
    ld h, d
    ld e, b
    sub l
    and e
    ld l, d
    ld [hl-], a
    sub c
    ld l, d
    dec h
    adc c
    ld h, e
    cp l
    ld [hl-], a
    ld c, d
    xor c
    ld d, h
    and l
    ld c, c
    and e
    sbc [hl]
    ld c, h
    and d
    dec de
    ld [$8d17], sp
    ld d, c
    ld d, h
    ldh [rWX], a
    ld d, [hl]
    add hl, de
    inc [hl]
    ld b, c
    add sp, -$3e
    jr nc, jr_00b_5d9d

    ld a, [de]
    ld [$85b4], sp
    ld a, d
    add sp, -$7b
    and h
    ld h, d
    ret c

    sbc c
    ld l, b
    pop bc
    xor [hl]
    and b
    ld c, d
    ld a, b
    ld h, l
    ld a, [bc]
    adc b
    ld c, c
    ld h, e
    ld [$3197], sp
    sub a
    add [hl]
    call Call_000_18d3

jr_00b_5d3c:
    add $2a
    inc e
    ld e, c
    or h
    xor d
    dec b
    ld [hl], e
    inc [hl]
    ld l, c
    ld [hl+], a

jr_00b_5d47:
    ld c, b
    adc b
    sub h
    inc h
    inc hl
    ld a, [bc]
    xor b
    add $48
    and l
    ld h, $a1
    ld e, d
    add hl, bc
    ld a, [hl]
    jr c, jr_00b_5d3c

    jp nz, $e330

    and l
    add l
    ld b, c
    ld l, $4c
    inc de
    sbc d
    and d
    ld h, [hl]
    add hl, bc
    ld [hl+], a
    add hl, de
    ld c, a
    ld [bc], a
    and d
    and [hl]
    ld l, $aa
    inc [hl]
    sbc a
    ld bc, $4e39
    sbc [hl]
    ld a, [de]
    ld b, a
    add sp, -$01
    ret nz

    add [hl]
    xor e
    and [hl]
    add hl, bc
    sub d
    add hl, bc
    ld e, $87
    cp $dd
    inc bc
    call nz, $c4d7
    and [hl]
    ld [hl-], a
    ld a, [de]
    adc l
    dec c
    rst $38
    ld hl, sp-$21
    rst $38
    rst $38
    and c
    rlca
    inc c
    ld e, [hl]
    rst $18
    or [hl]
    ld b, a
    rst $38
    db $e4
    ld e, a
    rst $38
    pop hl
    ld e, d

jr_00b_5d9d:
    db $10
    add hl, hl
    ld [de], a
    xor h
    rla
    cp $85
    ld e, a
    ret nz

    cp b
    push de
    ld d, d
    sub c
    ld h, c
    ld [hl], h
    ld d, l
    ld a, [$7f15]
    xor b
    jr z, @+$61

    cp $82
    add l
    ld l, d
    add [hl]
    ld de, $c395
    ld a, a
    rst $38
    add sp, $41
    db $fc
    ld d, l
    jr nz, @-$40

    add hl, bc
    add a
    ldh [$b5], a
    ld a, a
    rst $38
    cp $44
    ld h, a
    pop af
    sub e
    di
    db $eb
    rst $38
    rst $38
    rst $38
    sub b
    sbc d
    add hl, sp
    sub l
    db $eb
    ld a, a
    rst $30
    rst $38
    sub $2a
    ld [hl], l
    ld a, h
    xor b
    cp a
    ld sp, hl
    db $10
    xor $6b
    ldh [$82], a
    ld h, d
    rst $38
    dec bc
    cp $a1
    dec b
    ld a, a
    and [hl]
    dec l
    or c
    sbc a
    db $fc
    ld a, [bc]
    cp a
    jp Jump_00b_5f13


    add sp, $7a
    inc e
    ld b, e
    ld [hl], h
    adc e
    ld d, h
    ccf
    inc bc
    ret nc

    ld c, e
    jp hl


    rra
    ld a, l
    ld e, d
    xor e
    ld a, [bc]
    ldh [$94], a
    add a
    add e
    ld sp, hl
    rra
    rst $38
    adc a
    jp c, $f6bf

    adc d
    ret


    ld l, h
    rra
    db $fc
    ld [$fe3f], sp
    ld e, a
    rst $38
    rst $38
    xor [hl]
    ld [c], a
    push bc
    or l
    jp nz, $ffe1

    ldh a, [$7e]
    ld b, a
    rst $38
    cp $10
    ld e, [hl]
    add d
    ld l, b
    db $fc
    rra
    db $fc
    ld b, a
    xor b

jr_00b_5e34:
    push de
    ld e, c
    ld [hl], b
    add $bf
    rlca
    rst $38
    inc de
    ldh a, [$af]
    and a
    ld c, l
    ld de, $4ef9
    ld b, l
    rst $38
    and a
    ld h, e
    ld h, l
    ld e, c
    ld d, b
    ld [hl], l
    daa

Call_00b_5e4c:
    cp b
    ld b, h
    add hl, sp
    inc d
    ld d, l
    ld d, e
    sbc c
    add [hl]
    add c
    ld c, [hl]
    ld h, [hl]
    ld [hl], b
    ld e, a
    and e
    sub c
    sbc [hl]
    dec d
    jr c, jr_00b_5e34

    ld d, b
    cp e
    ld hl, $537c
    ld l, d
    rlca
    ld e, d
    ld l, [hl]
    push bc
    db $e3
    ld b, h
    rra
    db $f4
    ld h, h
    ld l, $18
    pop de
    ld b, c
    inc b

jr_00b_5e73:
    ld sp, $6d70
    inc d
    db $db
    ld e, b
    adc b
    ld l, e
    xor $37
    sbc c
    cp h
    add $0f
    pop bc
    inc sp
    ld e, h
    ld d, b
    and l
    ld a, [de]
    ld a, d
    dec b
    adc h
    sbc l
    dec b
    sub c
    ld h, [hl]
    xor d
    ld a, [bc]
    ld [$f7ce], sp
    ld h, c
    add l
    or b
    xor b
    jr jr_00b_5e73

    xor c
    ld d, l
    ld h, h
    dec de
    ld a, h
    add sp, -$58
    ld a, [c]

Jump_00b_5ea1:
    rst $20
    and [hl]
    ldh [$bd], a
    ld h, a
    inc sp
    inc sp
    xor a
    add hl, sp
    add $cf
    dec b
    ld a, [hl+]
    and a
    ld a, [de]
    db $fc
    db $fd
    inc l
    add $ea
    dec d
    rlca
    xor a
    call z, $a8e6
    jp c, $f24d

    xor c
    cp h
    add d
    pop bc
    ld l, d
    rrca
    ld [bc], a
    ld c, $66

jr_00b_5ec7:
    add h
    jp hl


    db $76
    ld b, a
    add a
    sbc d
    ld e, e
    and [hl]
    ld a, h
    add a
    sbc d
    ld [c], a
    pop de
    ld l, [hl]
    ld b, e
    ld h, [hl]
    sub h

jr_00b_5ed8:
    call $9197
    add [hl]
    sbc h
    scf
    xor d
    adc [hl]
    ld d, $11
    db $d3
    inc b
    ld a, h
    ld e, b
    ld d, l
    cp d
    dec d
    dec b
    inc a
    cpl
    xor h
    ld h, e
    xor l
    rst $38
    jp nc, $ff51

    ld d, e
    sub [hl]
    sub h
    ld l, b
    xor b
    ld e, c
    adc [hl]
    ld d, h
    adc [hl]
    sub d
    ld h, c
    rst $10
    ld c, [hl]
    ld b, h
    adc b
    db $dd

jr_00b_5f03:
    db $e4
    ldh [rSVBK], a
    sub b
    ld b, d
    jp nc, $82ff

    and e
    ld a, d
    ld a, [bc]
    add hl, bc
    and b
    ld c, h
    xor e
    ld c, l

Jump_00b_5f13:
    sbc a
    jr nc, jr_00b_5f5e

    jp hl


    add hl, hl
    dec d
    jr c, jr_00b_5f03

    xor b
    inc d
    ld de, $93da
    ld e, d
    ld a, [bc]
    ld [hl+], a
    adc c
    ld b, l

Jump_00b_5f25:
    add hl, hl
    ld h, b
    sub e
    add d
    pop de
    or a
    ld b, d
    adc h
    ld [hl], h
    db $e4
    ld d, d
    dec hl
    ld l, $39
    ld h, h
    sbc e
    push de
    jp c, $8e88

    jr c, jr_00b_5f7a

    ld d, d
    jr nz, jr_00b_5ec7

    ld c, c
    ld a, b

jr_00b_5f40:
    pop hl
    sbc b

Jump_00b_5f42:
    dec hl
    db $fd
    ld d, l
    pop bc
    ld b, $8e
    ld e, e
    push de
    ld e, l
    and l
    ld hl, sp-$15
    xor d
    ld a, a
    ld a, [$7a3e]
    ld [hl], h
    jr nz, jr_00b_5ed8

jr_00b_5f56:
    sbc [hl]
    dec de
    ld a, b
    rst $00
    ld e, e
    and e
    jr z, jr_00b_5f56

jr_00b_5f5e:
    jr nc, jr_00b_5f40

    sbc h
    call Call_00b_4eea
    add e
    pop af
    adc $a4
    reti


    db $10
    inc a
    ld sp, $86ca
    ld b, d
    ld h, h
    xor a
    ld c, c
    jp nz, $83b6

    jp c, Jump_000_2c54

    ld [hl], c
    ld d, b

jr_00b_5f7a:
    pop bc
    ld l, b
    ld a, [$a990]
    call nz, Call_000_09b9
    ld e, $08
    jp c, Jump_00b_5b28

    ld h, $a8
    inc h
    call nz, $a164
    and c
    ld b, b
    add h
    ld l, e
    ld b, e
    inc d
    ld a, [$0e3e]
    add l
    or b
    ld b, a
    inc hl
    or l
    ld [$a4bf], a
    ld b, a
    cpl
    rst $38

jr_00b_5fa1:
    and c
    ld e, b
    ccf
    and a
    dec bc
    inc h
    ld a, $f7
    ld [bc], a
    or h
    rla
    and a
    dec bc
    jr nc, jr_00b_602f

    db $e4
    ld a, a
    cp h
    add hl, de
    ret


    jr z, jr_00b_5fa1

    add sp, $5b
    ld hl, $101d
    ld h, e
    ld h, c
    ld a, e
    pop de
    ldh [rLY], a
    rst $00
    ret nc

    nop
    ld b, h
    cp [hl]
    ld e, c
    ld d, e
    and l
    ld d, [hl]
    rst $38
    ld d, h
    ld [c], a
    ld l, h
    jr z, jr_00b_5ffb

    inc c
    inc sp
    add l
    and e
    pop bc
    ld e, e
    ld l, l
    ld a, [bc]
    add hl, sp
    rla
    push de
    ldh a, [$a3]
    sub c
    cp b
    add hl, de
    db $f4
    rst $20
    sub h
    rra
    ld l, b
    sub [hl]
    add hl, sp
    dec hl
    ld d, l
    dec b
    add c
    ld a, [hl-]
    cpl
    add l
    db $e3
    and d
    rst $10
    db $e3
    or d
    adc a
    adc d
    sbc a
    inc l
    add d
    ld a, b
    add hl, hl

jr_00b_5ffb:
    call z, Call_000_3986
    ld a, [de]
    pop de
    jp nz, $1886

    db $e4
    ld a, a
    sbc h
    ld e, b
    ld c, e
    rst $38
    rst $38
    rst $20
    inc d
    db $dd
    adc d
    xor e
    inc e
    ld [hl], e
    inc sp
    ld a, [bc]
    call c, $c909
    ld l, b
    ld [hl], c
    cpl
    sbc l
    ld l, b
    ld d, a
    dec e
    db $10
    ld b, a
    add l
    rra
    ld d, d
    ld h, [hl]
    cp d
    rra
    rst $38
    ld d, b
    db $eb
    db $f4
    db $eb
    ld d, l
    ld a, a
    ld d, l
    db $ed
    xor l

jr_00b_602f:
    ld a, [bc]
    rlca
    db $e3
    adc c
    ld a, [$feaa]
    sub [hl]
    cp c
    ld b, d
    ld e, [hl]
    add hl, sp
    jr z, jr_00b_6052

    ld d, l
    dec de
    db $eb
    dec l
    adc c
    ld c, [hl]
    dec hl
    db $eb
    dec b
    add hl, bc
    ld d, [hl]
    ld d, l
    ld l, d
    add hl, hl
    ld [$57e2], sp
    ld [$f997], sp
    inc [hl]

jr_00b_6052:
    adc [hl]
    dec d
    ld a, [$4581]
    ld a, [de]
    and b
    ld a, d
    db $fd
    jr @+$65

    ld d, a
    ld [$5085], sp
    ld d, b

jr_00b_6062:
    and l
    ld h, b
    adc b
    ld d, a
    sub c
    adc l
    rra
    ld b, c
    ld h, $aa
    or [hl]
    ld [hl+], a
    ld a, [bc]
    add hl, sp
    sub h
    ld e, $bf
    ld [$6653], a
    xor b
    inc hl
    ld b, l
    ld hl, $426a
    ld c, b
    sub h
    sbc b

jr_00b_607f:
    ld a, [hl-]
    ld [$f7de], sp
    db $fd
    dec h

Jump_00b_6085:
    add [hl]
    ld d, b
    add c
    ld b, $f0
    ld b, c
    dec b
    ld l, b
    jp z, Jump_00b_54d5

    jr nz, jr_00b_60f5

    ld l, l
    ld l, d
    sub $a1
    and e
    jr jr_00b_602f

    ld b, $33
    ld b, l
    ld h, $8c
    xor b
    pop bc
    ld [$6822], sp
    ld e, d
    and b
    adc c
    cp a
    add l
    ld d, h
    xor d
    dec h
    ld [$aaa2], a
    dec [hl]
    ld c, c
    adc c
    and e
    daa
    and b
    xor l
    ld d, $39
    ld [hl+], a
    db $e4
    ld l, b
    xor d
    xor b
    dec l
    jr c, jr_00b_6062

    jr jr_00b_60d4

    ld a, e
    ld e, h
    and $85
    ld a, [bc]
    xor c
    db $e3
    ld c, d
    ld d, e
    ld h, l
    pop de
    adc h
    db $fd
    jr c, jr_00b_60f9

    ld d, l
    ld d, l
    and b
    and l

jr_00b_60d4:
    adc b
    add [hl]
    ld a, [de]
    adc [hl]
    ld hl, sp+$20
    ld h, l
    add c
    ld b, d
    xor l
    db $e3
    or [hl]
    xor b
    sub a
    sub l
    ld [hl+], a
    inc a
    ld l, a
    db $76
    ld sp, $32dd
    xor h
    ld b, [hl]
    add d
    rst $00
    ld h, d
    ld c, e
    jr nz, jr_00b_607f

    ld hl, $8504

jr_00b_60f5:
    adc h
    rst $20
    inc e
    add l

jr_00b_60f9:
    ld d, b
    ld c, h
    inc de
    ld hl, $8222
    pop de
    ret z

    jp nz, Jump_00b_54a9

    cp b
    ld b, h
    ld h, c
    push bc
    daa
    inc c
    ret nc

    ccf
    and d
    and e
    ld l, $14
    ld h, b
    rst $00
    ld [de], a
    ld [$0c51], sp
    add d
    sbc e
    and [hl]
    ld [$101c], a
    ld h, h
    inc hl
    dec c
    inc bc
    ld d, h
    add hl, bc
    inc l
    ld l, d
    db $f4
    ld b, d
    rra
    inc hl
    jr z, jr_00b_6195

    inc d
    add sp, -$5a
    xor a
    add [hl]
    xor l
    xor d
    and c
    sub c
    dec b
    ld h, a
    ld b, h
    db $10
    jr c, jr_00b_619c

    sub a
    ld de, $8612
    dec l
    ld a, [de]
    cp c
    add hl, de
    ld e, b
    ld l, c
    inc c
    dec hl
    ld [bc], a
    db $10
    ld l, h
    add hl, hl
    sub [hl]

Call_00b_614a:
    cp d
    or b
    ld b, b
    cp c
    db $10
    ld [hl], h
    jr z, @-$41

    ret nc

    dec hl
    adc d
    ld h, e
    inc h
    xor l
    ld d, c
    or a
    ld [hl], l
    db $ed
    ld b, h
    and [hl]
    ld d, d
    ldh a, [$d9]
    adc d
    ld b, h
    adc d
    add hl, bc
    and d
    ld h, b
    or d
    ld e, h
    ld h, d
    sub c
    add e
    add h
    ld l, e
    sub a
    add [hl]
    add hl, de
    ld d, [hl]
    sub d
    and c
    inc l
    add hl, bc
    ld l, c
    adc d
    ld c, [hl]
    ld a, [hl+]
    add [hl]
    sub d
    cp a
    rst $38
    cp $98
    jr nc, jr_00b_61eb

jr_00b_6182:
    ld a, c
    ld d, c
    jr jr_00b_61e0

    ret nc

    dec [hl]
    ld a, a
    ld d, l
    inc b
    ld d, h
    scf
    sub d
    sbc c
    ld d, b
    inc [hl]
    rst $28
    rst $38
    rst $28
    inc b

jr_00b_6195:
    ld h, e
    db $10
    add d
    inc c
    ld l, c
    inc bc
    inc bc

jr_00b_619c:
    ld d, l
    ld d, h
    ret


    add hl, bc
    ld de, $2c11
    and a
    inc b
    dec c
    ld d, l
    ld c, b
    ld b, e
    dec bc
    jr jr_00b_61d4

    ld b, c
    sbc l
    jp c, $c0c5

    pop bc
    inc [hl]
    ld a, b
    call z, $e5b9
    ld [$4466], a
    or e
    ld a, a
    ld d, d
    ld d, a
    db $f4
    inc de
    adc [hl]
    xor c
    cp l
    ld b, d
    di
    ld a, d
    ld d, [hl]
    rst $38
    add hl, hl
    ld [hl], $5b
    db $db
    ld l, l
    jp nc, Jump_00b_4c2d

    ld e, e
    add hl, bc
    ld e, [hl]
    daa

jr_00b_61d4:
    inc b
    ld hl, $0b63
    ld e, h
    db $10
    ld d, a
    daa
    ld [$c694], sp
    sub b

jr_00b_61e0:
    ld b, c
    ld b, [hl]
    adc b
    ld d, l
    ld d, d
    jr z, jr_00b_6182

    add a
    ld [hl], b
    ld e, d
    ld a, c

jr_00b_61eb:
    ld b, c
    ld [$ab94], sp
    push bc
    dec bc
    ld e, e
    cp a
    ld sp, $baf8
    ld b, d
    ld h, b
    cp [hl]
    inc [hl]
    adc l
    dec h
    jr nc, jr_00b_6248

    ld b, l
    jr c, @+$2b

    ld d, b
    cp l
    ld h, $85
    adc $07
    add a
    sbc d
    push de
    add sp, -$20
    ld d, l
    ret c

Jump_00b_620e:
    sbc d

jr_00b_620f:
    cp [hl]
    jr c, @+$6c

    dec a
    add hl, hl
    rst $20
    cp d
    sub h
    and a
    dec l
    ld d, l
    ld c, d
    add a
    and [hl]
    db $eb
    rst $10
    ld e, l
    xor b
    ld a, a
    ld h, $6f
    ld b, d
    or b
    ret nz

    add a
    ld sp, $a9a2
    ld d, d
    jr c, jr_00b_624f

    add [hl]
    ld d, $99
    ldh a, [rNR42]
    xor [hl]
    rst $38
    rst $38
    dec sp
    inc d
    and c
    adc e
    rst $38
    ld d, l
    ld d, a
    db $e3
    ld a, [hl]
    ld e, h
    ld e, $fc
    cp a
    rst $38
    and b
    ld hl, sp+$7e
    ld h, l

jr_00b_6248:
    ld a, b
    ld a, a
    pop de
    inc de
    cp $1f
    sbc d

jr_00b_624f:
    ret nz

    ret nc

    xor e
    db $e3
    ld c, l
    rst $20
    rra
    rst $38
    dec d
    ld b, a
    dec l
    rst $00
    rst $10
    add b
    ld d, l
    cp l
    push af
    inc a
    ld l, d
    or h
    ldh a, [$15]
    call nc, $e154
    ld d, l
    ld d, h
    ld d, a
    rst $38
    ret nc

    ld d, d
    inc [hl]
    ldh [$af], a
    ei
    and b
    ld a, l
    add hl, de
    add [hl]
    dec bc
    ld c, b
    ld a, l
    ld a, [hl+]
    call nc, Call_000_1f88
    ld d, [hl]
    ld a, [bc]
    ld sp, $a3a0
    dec [hl]
    sbc c
    ld [c], a
    inc l
    ld l, [hl]
    ld sp, $d6a8
    add l
    jr nc, jr_00b_620f

    ld a, [de]
    jp nc, $6894

    db $eb
    call nc, Call_00b_53c1
    sub c
    ld a, [bc]
    ld [hl+], a
    and e
    ld e, $38
    ld d, l
    db $e4
    cpl
    ld c, h
    db $db
    db $d3
    dec h
    ld [hl+], a
    xor [hl]
    ld hl, $210a
    db $f4
    cp e
    ld c, [hl]
    daa
    ld e, d
    rla
    adc c
    sub e
    ld a, d
    dec l
    ld l, a
    inc d
    ld [hl+], a
    add hl, hl
    ld e, l
    ld d, l
    ld sp, $2aa5
    db $fd
    adc e
    sub h
    adc d
    and e
    dec d
    ld b, [hl]
    ld c, l
    sub a
    adc [hl]
    ld [hl], a
    dec d
    ld d, l
    ld e, a
    and e
    sub [hl]
    db $fd
    cp $aa
    xor b
    rst $20
    ld a, [hl]
    xor b
    db $eb
    sbc [hl]
    ld a, [$f078]
    ld c, c
    ldh [$a0], a
    ld [$7116], a
    dec h
    inc h
    jr c, jr_00b_6328

    and d
    add h
    and a
    ld [bc], a
    add d
    ld b, d
    jp nz, $b28a

    ld d, h
    sub a
    dec h
    jp nc, Jump_000_0e83

    ld [$09fc], sp
    add h
    add h
    ld l, c
    ld c, a
    ld h, $15
    sbc c
    pop bc
    and b
    and [hl]
    ld d, c
    sbc a
    ld de, $5f02
    db $fc
    ld [hl], d
    cp d
    ld b, e
    ld b, [hl]
    dec a
    dec de
    ld c, d
    ld c, a
    ld e, $0d
    db $db
    ret nz

    or d
    ld h, a
    inc b
    ld l, c
    dec h
    ret nc

    ld a, d
    inc c
    ld d, d
    adc d
    sub b
    and [hl]
    add hl, hl
    sub l
    db $fc
    add hl, hl
    ld a, [de]
    dec d

jr_00b_6320:
    rst $38
    sbc c
    and l
    jp nc, Jump_00b_434c

    and c
    add h

jr_00b_6328:
    dec e
    ld [hl], c

Call_00b_632a:
    adc h
    ld a, [hl-]
    sub e
    inc c
    ld h, b
    rst $00
    dec bc
    inc hl
    ld a, d
    ld h, h
    cp l
    inc e
    adc b
    xor a
    jp hl


    dec d
    ld [hl], c
    adc $fd
    ld [hl], b
    ld b, a
    ld a, h
    ld de, $44de
    cp [hl]
    ld d, c
    ld e, a
    db $fd
    jr c, jr_00b_6320

    cp d
    adc d
    adc [hl]
    ld d, $aa
    ld a, [hl-]
    db $eb
    and e
    rst $20
    ld e, [hl]
    dec sp
    ld a, l
    ld d, e
    or [hl]
    ld d, b
    call nc, $39b6
    ld l, a
    ld a, [bc]
    xor d
    inc b
    rst $20
    xor d
    xor d
    adc a
    and [hl]
    sbc a
    inc [hl]
    and a
    ld [hl-], a
    ld h, l
    ld h, a
    rra
    and a
    rst $08

jr_00b_636d:
    and a
    sbc c

jr_00b_636f:
    sbc h
    xor c
    adc e
    rst $20
    ld c, d
    cp a
    ld sp, hl
    pop de
    dec c
    ld d, h
    ld a, [hl]
    inc c
    ld h, [hl]
    cp h
    dec b
    ld d, e
    ld a, e
    call nc, $aae9
    add hl, bc
    scf
    ld a, e
    call nc, $54c1

Jump_00b_6389:
    ret


    ld b, [hl]
    ld b, d
    ld c, h
    sub $0a
    ld a, e
    ld c, c
    xor d
    xor c
    ld b, c
    ld d, l
    ld [$2374], a
    dec [hl]
    sub d
    ld h, $d1
    ld d, l
    add c
    ld e, [hl]
    xor d
    xor c
    ld b, d
    add hl, de
    ld [hl-], a
    ld d, b
    sub d
    jr nz, jr_00b_63f8

    ld [hl], c
    db $e3
    ld a, d
    ld c, b
    sub e
    dec de
    ld d, h
    cp c
    jp $8aa3


    ld b, l
    inc sp
    sbc b
    adc e
    dec bc
    ld e, l
    ld c, [hl]
    ld b, h
    inc de
    ld [hl], $26
    dec bc
    cp $82
    sub e
    sub d
    ld c, d
    ld a, [hl]
    xor h
    ld h, h
    ret


    and e
    add [hl]
    jr nc, jr_00b_636f

    sub c
    ld [c], a
    sbc a
    xor c
    ld c, h
    ld hl, $53a0
    dec [hl]
    ld d, b
    add sp, -$4b
    jr nc, jr_00b_636d

    dec d
    ld a, [bc]
    add [hl]
    ld [hl+], a
    ld a, a
    db $ed
    dec [hl]
    adc e
    sub e
    dec bc
    db $fc
    adc b
    ld a, [de]
    adc b
    sbc d
    dec [hl]
    sub e
    inc h
    jp nz, $30ff

    and l
    ld c, h
    dec l
    ld h, $93
    sub e
    cp a
    ld e, h
    inc d

jr_00b_63f8:
    adc $d4
    sbc d
    sub l
    adc h
    sbc [hl]
    xor l
    cp a
    db $e3
    ld l, d
    push hl
    ld c, c
    ld d, e
    dec d
    ld c, $88
    sub h
    add h
    adc d
    sub e
    inc c
    adc d
    ld hl, sp-$3f
    and $25
    ld e, d
    db $fc
    sbc b
    push bc
    adc c
    ld h, e
    ld a, [hl+]
    ld h, d
    ld e, c
    ld c, e
    and d
    ld de, $8956
    ld h, e
    daa
    sub d
    ld d, $78
    push bc
    ld c, c
    xor c
    ld d, l
    and e
    ld [hl], l
    and l
    db $e3
    ld b, l
    ld a, b
    push hl
    and b
    ld d, a
    add sp, -$22
    adc [hl]
    ld [hl], a
    ld [$ad3c], a
    ldh [rNR43], a
    sbc e
    pop hl
    and a
    ld d, [hl]
    inc d
    add hl, bc
    ret nz

    adc $09
    adc d
    add hl, hl
    sub [hl]
    sub e
    ld h, $9a
    or a
    add h
    sub l
    add l
    inc b
    and d
    sub h
    sub l
    ld h, [hl]
    ld [hl], b
    ld e, d
    ld [de], a
    ld [de], a
    ld b, [hl]
    ld b, d
    dec sp
    dec b
    ld e, a
    xor h
    ld [$a749], sp
    inc b
    ld [hl-], a
    ld [de], a
    dec c
    add hl, sp
    ld c, e
    ld b, l
    pop bc
    ld hl, $7226
    ld [de], a
    ld [$ffe1], sp
    ld [hl+], a
    add $8d
    ld h, b
    and $92
    ret nz

    add a
    ld hl, $090c
    rst $00
    ld h, $8a
    db $ec
    ld b, d
    add h
    inc [hl]
    ld l, l
    dec d
    add $18
    ld b, h
    reti


    and h
    sbc d
    push bc
    and h
    and $71
    adc d
    pop de
    ld [hl], d
    or h
    ld de, $e278
    add h
    ld e, d
    ld b, d
    sub c
    sbc b
    ld sp, $6572
    or b
    ld e, c
    add e
    adc e
    ld c, b
    ld b, l
    add $5a
    ld h, e
    inc sp
    sub d
    xor $c1
    db $10
    add h
    sub d
    sbc c
    jp c, Jump_00b_620e

    push de
    add d
    add hl, bc
    dec sp
    ld de, $5248
    ld h, a
    ld h, a
    ld [bc], a
    rla
    ld [c], a
    and $15
    ld e, b
    ld h, $56
    ld h, [hl]
    or h
    ld b, h
    or c
    pop bc
    ld b, $09
    ld c, [hl]
    ld h, h
    adc e
    ld d, b
    ld c, c
    sbc [hl]
    ld h, a
    dec c
    ld h, $4c
    inc c
    inc l
    jr jr_00b_6522

    push hl
    add $6c
    ld h, a
    ldh [$c2], a
    ret nz

    push bc
    ret


    ld c, b
    dec h
    ld hl, $a219
    ret nz

    or b
    ld sp, $4b96
    ld b, b
    call nc, Call_00b_6984
    adc l
    add h
    inc c
    ld l, e
    ld hl, $dc1c
    ld [$1c23], sp
    ld sp, $c1d3
    ld e, $50
    ld b, h
    or c
    rst $28
    ld c, d
    or l
    dec d
    ld l, b
    push de
    add d
    push hl
    rla
    rrca
    xor d
    adc l
    xor d
    ld a, c
    add c
    and e
    sbc d
    ld [hl+], a
    xor b
    ld [$8e88], a
    sub h
    adc h
    inc hl
    and l
    ld d, b
    xor e
    ld c, [hl]
    xor e
    adc [hl]
    push bc
    add hl, hl
    ld c, l
    inc de
    ld d, l

jr_00b_6522:
    ld hl, $4d35
    rst $28
    ld b, [hl]
    sub h
    and [hl]
    jr c, jr_00b_6583

    jp nz, Jump_000_38aa

    ld e, b
    or a
    ld d, e
    adc l
    adc d
    ld l, d
    ld a, [bc]
    ld e, d
    xor d
    inc sp
    xor d
    xor b
    adc d
    and e
    call z, $a9d9
    add d
    ld h, b
    and [hl]
    ret nc

    ld c, c
    ld a, b
    dec l
    ld b, a
    inc c
    add l
    jr z, jr_00b_65bf

    ld [hl], h
    inc h
    jp hl


    db $dd
    inc c
    ld [hl], l
    ld b, d
    add e
    dec e
    ld [hl], d
    ld de, $e9eb
    ld c, $9d
    ld c, h
    ret


    db $db
    ld c, e
    dec e
    xor h
    ld b, d
    sbc l
    inc c
    dec hl
    rrca
    ld a, [$9aaa]
    ld [$ebc4], a
    ld b, a
    push bc
    nop
    ld d, l
    adc e
    call nc, Call_000_2df1
    ld a, a
    ld d, e
    jp nz, $bf56

Call_00b_6578:
    db $d3
    scf
    db $fd
    ld a, a
    db $d3
    dec h
    sub h
    ld h, $95
    ld a, a
    ld l, b

jr_00b_6583:
    sbc h
    ld de, $cad8
    rst $30
    or b
    or l
    ld [$4160], sp
    ld a, [$6409]
    sub $a8
    ld l, a
    ld d, c
    ld h, b
    and d
    ld l, l
    ld [$8cde], sp
    ld h, e
    ld c, b
    sub l
    inc [hl]
    ld a, [c]
    ld [de], a
    ld h, l
    dec [hl]
    or $8c
    call nc, $e97f
    add d
    ld sp, $5a60
    dec [hl]
    ld d, c
    ld e, b
    ld d, b
    add l
    ld hl, $8d63
    ld a, [c]
    dec hl
    ret c

    inc d
    sbc d
    ld c, e
    ld h, e
    rla
    ldh [$5a], a
    adc b
    ld d, h

jr_00b_65bf:
    or l
    ld [hl+], a
    and e
    ld a, [hl+]
    adc e
    xor d
    add [hl]
    sub l
    ld h, d
    xor d
    adc h
    ld a, [hl+]
    ld l, $2d
    jp c, $8653

    and d
    ld [c], a
    sbc [hl]
    ld l, $a2
    dec d
    adc d
    ld d, h
    and [hl]
    add hl, hl
    ld c, h
    pop de
    ld c, [hl]
    ld b, $55
    ld a, [hl]
    ld a, [hl-]
    ld l, $16
    add hl, de
    ld hl, sp-$26
    jr @-$35

    ld e, d
    ld l, $b5
    ld c, e
    ld e, d
    ld e, b
    jp hl


    xor e
    rst $38
    jp c, $318d

    or b
    daa
    adc e
    jr nc, jr_00b_6629

    daa
    add l
    and d
    ldh [$c6], a
    adc [hl]
    ld [hl-], a
    ld [de], a
    add $7a
    inc de
    and c
    ld l, b
    or e
    inc a
    jr z, @-$15

    ld d, $66
    ret nz

jr_00b_660d:
    jp $a43e


    ld b, b
    db $ed
    ld [hl-], a
    dec c
    sbc d
    pop bc
    sub c
    ld c, e
    inc de
    inc de
    db $d3
    and a
    ld [bc], a
    ld h, l
    add h
    inc [hl]
    sub e
    add h
    add hl, hl
    xor h
    ld l, c
    ld a, [de]
    inc hl
    ld b, $70

jr_00b_6629:
    dec l
    ld h, $32
    pop bc
    di
    ld b, [hl]
    or c
    inc d
    add hl, hl
    ld e, h
    and b
    cp c
    dec hl
    add hl, de
    or c
    ld d, h
    ld d, h
    ld c, h
    inc d
    dec c
    inc a
    ld h, d
    and b
    ret z

    ld a, [hl+]
    and b
    call Call_00b_4c2b
    sub c
    add hl, de
    jr nz, jr_00b_660d

    rla
    ld de, $3caa
    inc d
    xor [hl]
    ld h, b
    add d
    ld b, d
    ld d, $60
    add l
    ld e, [hl]
    xor d
    ld b, d
    sub a
    add d
    ld b, d
    ld de, $1883
    ld d, l
    ld d, l
    push bc
    ld sp, $c60c
    ld de, $65b6
    add h
    call z, $0809
    ld h, c
    add hl, hl
    sbc [hl]
    ld l, e
    or c
    ld d, $84
    ld e, h
    ld h, e
    add $74
    ld h, e
    ld a, [bc]
    add hl, bc
    ld de, $4c28
    ld [hl], h
    pop bc
    ld h, e
    ld d, e
    inc b
    ld l, b
    ld b, h
    cp l
    add l
    ld c, [hl]
    ld [hl], l
    rst $38
    ld [$8df3], a
    add sp, -$37
    ld [hl], $bf
    push af
    ld d, l
    ld d, h
    adc h
    jp c, $f0d1

    rst $38
    dec b
    xor e
    jr c, jr_00b_66ca

    ld d, $aa
    jp c, $e204

    add d
    inc sp
    and e
    sub c
    ld c, [hl]
    push de
    and h
    add [hl]
    dec b
    ld c, [hl]
    rla
    add c
    add d
    ld h, d
    add hl, hl
    scf
    ld a, b
    jr jr_00b_66ce

    ld d, [hl]
    or l
    call $d69f
    ld [hl-], a
    xor b
    ld a, [$ec5d]
    jr nz, @-$61

    add hl, sp
    db $10
    ld b, c
    daa
    ld d, h
    ld [hl], h
    dec h
    jp hl


    rst $08
    dec b

jr_00b_66ca:
    dec h
    ld b, b
    and a
    inc e

jr_00b_66ce:
    add e
    ld [hl], l
    ld c, h
    rra
    sbc h
    ld [hl], b
    and [hl]
    inc l
    ld [hl], d

jr_00b_66d7:
    ld [hl], c
    call c, Call_000_38c6
    ld b, a
    inc e
    inc l
    sub b
    sub c
    ld h, a
    dec de

Call_00b_66e2:
    ld de, $0f51
    inc e
    ld d, [hl]
    ld h, a
    inc b
    ld a, l
    jr z, jr_00b_6752

    cp b
    push de
    dec l
    ld d, e
    jp $bf7a


    ld e, d
    xor a
    ld c, a
    ld [bc], a
    call nc, $8a9a
    or l
    add hl, sp
    ld e, a
    rst $38
    rst $10
    and e
    ld l, d
    adc [hl]
    ld c, e
    ld c, d
    xor e
    adc [hl]
    ld a, [bc]
    jr c, jr_00b_6778

    push de
    ld c, h
    sub l
    ld b, l
    ld d, h
    sbc d
    jr c, @+$2f

    rlca
    rst $28
    ld d, d
    sbc [hl]
    cp [hl]
    xor e
    ld d, e
    adc l
    sub $5a
    ld a, e

jr_00b_671c:
    ld b, c
    ld hl, sp-$36
    cp b
    dec l
    ld c, l
    db $ed
    ld h, h
    ld h, [hl]
    and c
    ld d, h
    adc $41
    xor b
    pop bc
    ld hl, sp-$66
    db $fc
    inc d

jr_00b_672f:
    ld a, [hl+]
    cp d
    adc l
    ld l, $d4
    pop hl
    ld a, d
    db $f4
    ld a, [hl+]
    ld [hl], b
    and e
    ld h, h
    jr c, jr_00b_66d7

    ld sp, $a8a2
    xor b
    jr z, jr_00b_671c

    call z, $9111
    and e
    ld l, b
    push de
    ld hl, $baca
    rlca
    ld hl, sp-$3e
    add c
    ld d, h
    add hl, de

jr_00b_6752:
    jr nc, jr_00b_67b9

    ld [hl], b
    and d
    add sp, $55
    add hl, hl
    ld a, b
    dec h
    jr jr_00b_672f

    inc e
    jp z, $7b85

    rst $38
    push af
    dec d
    ld h, $32
    ld b, a
    ld [hl], $7b
    ld b, l
    db $db
    jp Jump_000_322a


    ld b, d
    ld a, b
    add $d1
    ld d, b
    ld e, [hl]
    ld b, $27
    xor d
    dec [hl]

jr_00b_6778:
    and e
    ld e, e

Jump_00b_677a:
    ld b, d
    db $e4
    ld h, d
    dec h
    or h
    push bc
    rlca
    db $e3
    add [hl]
    ld sp, hl
    jr jr_00b_67de

    xor e
    push af
    ld a, [hl]
    db $e3
    sbc d
    add c
    add c
    add c
    db $e3
    ld a, [bc]
    adc [hl]
    xor d
    dec c
    or a
    db $e3
    push bc
    rst $18
    cp $8f
    sub c
    sbc h
    xor c
    ld l, b
    daa
    sub l
    dec h
    ld b, a
    adc b
    sbc c
    ld a, [$cf29]
    dec d
    inc h
    dec h
    xor b
    ld a, a
    ld a, [$d177]
    rrca
    rst $38
    rst $38
    ld a, [$ca70]
    add sp, $26
    scf
    ld e, a
    push af

jr_00b_67b9:
    rst $38
    pop af
    push bc
    ld a, l
    ld a, [$449a]
    rst $10
    rst $20
    dec bc
    dec b
    db $eb
    ld e, [hl]
    sub e
    dec de
    dec hl
    add d
    ld l, b
    sub e
    sbc $85
    rst $28
    add sp, $26
    ld l, e
    ld a, a
    jr jr_00b_6806

    add e
    or h
    rst $38
    add l
    db $fc
    ld h, l
    ld a, [hl]
    xor c
    add d

jr_00b_67de:
    ld h, b
    db $f4
    dec [hl]

Call_00b_67e1:
    ld a, [$cabf]
    ld h, e
    add a
    db $f4
    ld c, h
    ld h, e
    and h
    xor e
    ld a, a
    rst $28
    sbc $5b
    add a
    pop af
    ld c, c
    ld [hl-], a
    add hl, hl
    cpl
    rst $28
    rst $38
    ld hl, sp+$71
    ld c, a
    xor d
    ld [de], a
    ld d, h
    ld [$1143], sp
    ld a, a
    cp a
    push de
    rst $38
    rla
    ld l, e

jr_00b_6806:
    and [hl]

jr_00b_6807:
    ld c, c
    ld [de], a
    dec hl
    db $fc
    db $fc
    adc e
    xor $95
    rst $18
    and [hl]
    ld d, c
    ld [$0221], sp
    db $fd
    ld a, d
    cpl
    cp a
    ld [$fabb], a
    sbc b
    and [hl]
    ld [hl], e
    db $fd
    push af
    ld c, a
    rst $38
    rst $38
    push af
    sbc h
    db $10
    ret nz

    rst $38
    inc bc
    add a
    rst $38
    rst $38
    rst $38
    ld a, [$4172]
    db $fc
    cpl
    pop bc
    ld a, a
    rst $38
    rst $30
    add h
    ld [hl], e
    ld a, a
    inc bc
    ld a, [$174c]
    ld h, c
    inc b
    ld [hl], e
    cp a
    rst $08
    pop af
    db $e3
    ld e, a
    cp a
    ld b, a
    adc a
    dec d
    rra
    ld h, $44
    or e
    ld d, a
    rst $38
    db $fd
    ld d, h
    db $dd
    ld a, [$49d5]
    xor d
    db $d3
    scf
    rst $18
    ld [$4baf], a
    and e
    ld a, $8c
    db $ec
    cp b
    push bc
    ld c, [hl]
    rst $10
    adc d
    ld e, a
    db $fc
    add sp, $7a
    ld [hl-], a
    ld d, h
    ld d, $34
    and e
    rlca
    ld a, [$31ad]
    or h
    ld d, h
    and a
    adc h
    and e
    dec hl
    ld e, [hl]
    xor a
    jr nc, jr_00b_6807

    adc h
    ld l, [hl]
    ld c, b
    ld h, b
    ld h, l
    ld [$d664], sp
    ret nc

    and a
    cp b
    add h
    and l
    dec [hl]
    cp c
    ld b, c
    ld a, [c]
    ld a, [hl+]
    ld b, l
    cp h
    sub $5c
    ld hl, $6862
    push hl
    xor d
    dec a
    add hl, de
    db $e4
    and a
    inc b
    sbc d
    or h
    ld [hl], c
    ld c, c
    ldh [$67], a
    ld a, a
    sbc l
    xor a
    and $09
    ld c, c
    sbc d
    dec d
    cp $61
    and h
    ld l, h
    add d
    ld c, d
    sub a
    ld b, [hl]
    ld [hl], $0d
    xor $c2
    ld sp, hl
    rst $00
    ld a, [hl-]
    sub e
    rst $38
    push hl
    and [hl]
    ld c, [hl]
    call nc, Call_00b_7f3b
    ld hl, sp-$60
    and $76
    db $10
    xor e
    ldh a, [$de]
    dec d
    and $93
    ccf
    ldh a, [$27]
    ld b, h
    jr z, @-$4d

    ld a, [c]
    nop
    ld h, [hl]
    or b
    or h
    or h
    adc c
    inc sp
    ld d, l
    rst $38
    db $f4
    push de
    ld l, c
    ld hl, $2d62
    add hl, hl
    cp d
    and d
    ld a, h
    pop hl
    sbc c
    ld [hl+], a
    add [hl]
    ld a, [bc]
    ld e, e
    ld h, b
    ld l, d
    xor d
    and e
    ld a, d
    inc d
    jr z, jr_00b_695f

    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    ld hl, $5855
    ret


    ld d, d
    ld de, $1a99
    inc b
    ld l, c
    ld e, b
    ld e, b
    ld [c], a
    ld a, e
    push bc
    ld [hl+], a
    dec c
    adc b
    and a
    adc $a5
    add hl, de
    add hl, bc
    ld c, b
    sub b
    ld h, c
    ld h, d
    and e
    add c
    ld d, l
    ld b, c
    cp b
    dec h
    adc c
    ld b, c
    ld h, e
    ld b, $aa
    sub e
    inc d
    ld a, a
    rst $20
    sub h
    ld h, d
    ld [c], a
    ld [hl+], a
    ld e, b
    pop hl
    sub h
    adc d
    sbc b
    inc h
    jr nz, jr_00b_6982

    sbc b
    ld d, $82
    add hl, sp
    dec h
    ld sp, $41be
    ld [hl+], a
    adc b
    ld h, d
    ld d, $a3
    add d
    add l
    ld l, b
    add hl, sp
    dec c
    call nc, $8594

jr_00b_6943:
    ei
    jr c, @+$5d

    dec bc
    dec de
    ld [hl+], a
    xor l
    ld b, a
    ld l, d
    ld d, $04
    ldh [$d1], a

jr_00b_6950:
    ld h, d
    xor c
    ld h, $a2
    sbc $a7
    push hl
    inc sp
    ld h, b
    sub $ca
    ld c, l
    dec e
    ld d, l
    ld [hl+], a

jr_00b_695f:
    sbc [hl]
    ld c, h
    add hl, hl
    ld b, l
    ld hl, $95a2
    rla
    sbc l
    ld [hl+], a
    sub d
    add hl, de
    adc h
    ld e, b
    inc [hl]
    ld l, h
    add h
    dec e
    ld c, b
    add e
    inc b
    ld a, [hl+]
    ld d, b
    and [hl]
    di
    inc h
    dec de
    ld hl, $c260
    ld h, e
    add hl, bc
    sub d
    ld l, c
    add hl, bc

jr_00b_6982:
    and e
    rlca

Call_00b_6984:
    sbc b
    dec de
    ld e, d
    ld b, $2a
    push de
    ld d, a
    ld d, d
    ld d, l
    adc d
    ld a, a
    and e
    inc b
    and h
    sub [hl]
    ld h, $59
    db $d3
    daa
    sbc b
    push bc
    ld l, d
    ld h, b
    and h
    xor d
    ld d, c
    add l
    sub d
    call nc, $1623
    dec d
    ld a, [bc]
    ret nc

    or h
    ld [de], a
    and h
    jr nz, jr_00b_69fe

    jr z, jr_00b_6943

    inc d
    or l
    ld d, $1b
    ld c, h
    jr nz, jr_00b_6950

    cp e
    ld b, c
    ld e, b
    ld e, b
    cp c
    ld [hl-], a
    sub e
    inc b
    ld a, [hl+]
    ld a, [hl+]
    ld h, c
    ld h, $09
    ld de, $2ea2
    xor e
    and [hl]
    or a
    and h
    xor h
    ld b, [hl]
    sbc b
    ld l, a
    rst $38
    ld a, [$bf9b]
    and d
    db $fc
    rrca
    ldh a, [$af]
    rst $38
    rst $38
    db $f4
    sbc e
    rst $18
    rst $28
    db $fd
    rst $38
    cp a
    rst $38
    pop de
    ld [hl], c
    xor d
    cpl
    rst $38
    rst $38
    rst $38
    ei
    ld a, a
    rst $00
    dec h
    ei
    rst $38
    db $fc
    rla
    rst $30
    push af
    cp $9c
    rst $18
    db $ed
    ld a, [hl]
    ld [$84c0], sp
    ld b, l
    pop af
    jp nz, $ca97

    ld a, [de]

jr_00b_69fe:
    pop bc
    sub b
    call nz, $c164
    ld b, $ba
    ld h, l
    ld e, l
    ld a, [hl]
    db $fd
    ei
    db $e3
    ld de, $20c4
    add a
    db $fc
    ld l, c
    dec b
    and e
    ld e, [hl]
    rst $18
    ret nz

    sub c
    ret z

    ld b, d
    rst $08
    db $f4
    sbc h
    db $10
    inc h
    ld [hl-], a
    cp $99
    ld [hl], b
    ld d, c
    pop de
    ccf
    pop hl
    ld a, l
    xor c
    ld l, $29
    ld [$1347], sp
    rst $10
    cp $87
    adc l
    sub c
    ld b, h
    or e
    sbc h

jr_00b_6a35:
    adc a
    rst $38
    rst $38
    ld h, c
    pop hl
    push bc
    inc sp
    cp $b9
    xor d
    rra
    rst $38
    rst $38
    ld hl, sp+$78
    ld h, h
    or b
    scf
    rst $38
    cp $a6
    ld [hl], b
    ccf
    di
    rlca
    adc h
    ld hl, sp-$40
    pop bc
    ld d, l
    rst $38
    rst $30
    add $4f
    ld a, a
    adc e
    rst $08
    adc $a1
    inc b
    sub a
    rst $18
    xor d
    ld h, e
    cpl
    ld a, [$dbff]
    rst $38
    jp hl


    ld de, $c98d
    sub a
    push af
    db $fd
    call z, $d4ff
    ldh a, [$aa]
    sub l
    inc b
    ld h, c
    cp h
    dec hl
    pop bc
    or e
    ld a, l
    and e
    dec [hl]
    ld a, a
    ld a, [$fc68]
    ld b, e
    pop hl
    ld b, c
    ld a, [hl]
    db $fd
    ld l, c
    add l
    cp $82
    ld e, e
    pop af
    dec c
    pop af
    scf
    jp Jump_00b_7911


    add l
    or $60
    ei
    pop af
    inc d
    ld d, e
    ld b, e
    dec d
    add hl, de
    ld l, d
    ld e, e
    ld e, b
    add $b1
    sbc h
    ld h, e
    ld b, [hl]
    nop
    ld b, h
    jr c, @-$4a

    ld [hl], a
    push af
    jr nc, jr_00b_6afe

    ld c, b
    ld [de], a
    dec d
    ld a, [bc]
    ld [hl-], a

jr_00b_6ab0:
    add l
    jr nc, jr_00b_6a35

    ld c, d
    sub h
    jp nz, Jump_000_0919

    daa
    inc hl
    rlca
    or b
    ld [hl], e
    dec de
    ld b, e
    inc d
    add hl, de
    daa
    add d
    jr @-$30

    ld sp, hl
    ld e, [hl]
    push af
    push de
    adc [hl]
    ld d, $41
    and d
    and c
    adc $24
    ld e, d
    ld c, [hl]
    ld a, e
    ld d, b
    sub c
    ld c, h
    add hl, hl
    ld c, h
    dec d
    ld l, a
    ld c, b
    and e
    ld e, d
    ld a, [hl+]
    ld [hl], c
    add d
    inc c
    db $d3
    xor e
    adc h
    dec hl
    inc c

jr_00b_6ae6:
    cp l
    ld hl, $4216
    inc [hl]
    and l
    ld d, a
    ld [$fcc3], sp
    db $e3
    xor b
    add l
    ld h, c
    xor b
    push hl
    xor d
    inc a
    db $dd
    jp nz, Jump_00b_799c

    xor h
    add hl, bc

jr_00b_6afe:
    ld c, c
    and h
    and c
    and l
    jr c, jr_00b_6ae6

    or $a6
    inc e
    jr @-$19

    ld h, h
    ld c, a
    ld [bc], a
    inc d
    ld h, e
    and c
    ld b, c
    ld h, d
    db $e4
    jp Jump_000_1955


    ld a, d
    ld b, d
    jp $b242


    sbc e
    ld c, h
    sbc d
    and a
    inc c
    ld b, e
    ld c, c
    add l
    ld a, d
    sbc e
    jr nz, jr_00b_6ab0

    ld h, c
    ld c, e
    ld b, [hl]
    cp [hl]
    dec c
    jr @+$26

    pop de
    add a
    jp z, Jump_000_19e1

    ld h, b
    add d
    and [hl]
    ccf
    ld a, [hl+]
    xor h
    sub e
    jp Jump_00b_677a


    ld b, $38
    ld b, e
    inc d
    db $e3
    inc b
    ld [hl], b
    call nz, $844a
    ld a, h
    ld e, b
    ld h, [hl]
    or e
    sub h
    db $f4
    dec a
    push de
    ld a, l
    ld c, a
    ld c, $15
    ld h, a
    add [hl]
    cp a
    ld c, [hl]
    ld sp, hl
    jr jr_00b_6b6b

    ld h, d
    db $10
    ld d, e
    db $76
    sub e
    daa
    add c
    ld h, $0e
    dec b
    and c
    ld d, d
    dec d
    ld d, l
    cp $b3

jr_00b_6b69:
    dec h
    dec c

jr_00b_6b6b:
    add hl, hl
    add d

Jump_00b_6b6d:
    add [hl]
    pop de
    xor a
    xor d
    xor b
    xor l
    jr nc, jr_00b_6bb6

    ld e, [hl]
    ld h, $a5
    and c
    pop hl
    ld b, e
    sub e
    rlca
    ld [c], a
    cp [hl]
    ld d, h
    dec d
    ld d, d
    sbc b
    sub h
    sbc b
    ld h, $57
    ld hl, sp-$32
    sbc e
    ld d, [hl]
    adc b
    ld h, c
    ld d, c
    ld d, c
    adc c
    add d
    adc [hl]
    ld a, [de]
    and d
    pop af
    ld d, d
    jr nz, jr_00b_6b69

    ld c, b
    ld b, d
    dec h
    ld e, a
    ld c, e
    and c
    db $e4
    xor c
    dec b
    and $0a
    rra
    push de
    rst $38
    xor b
    inc sp
    ld h, h

jr_00b_6ba9:
    add a
    inc hl
    call c, $cbe6
    cp [hl]
    dec l
    ld d, a

Jump_00b_6bb1:
    and c
    or c
    add d
    inc sp
    ld d, a

jr_00b_6bb6:
    ld hl, sp-$5b
    xor a
    add l
    ldh [$50], a
    adc d
    sbc b
    xor a
    xor d
    cp $93
    ld c, b
    ld d, c
    ld a, b
    sub l
    ld h, b
    adc h
    ld h, e
    add [hl]
    jp nc, $dd15

    ld d, a
    xor e
    jr c, jr_00b_6ba9

    pop bc
    ld e, h
    add hl, sp
    or h
    ld a, [hl+]
    adc c
    ld b, l
    cpl
    xor d
    xor d
    jr nc, jr_00b_6c57

    dec h
    inc b
    inc d
    push bc
    ld d, e
    dec de
    ld d, d
    dec d
    ld hl, $a8e2

jr_00b_6be8:
    ld l, l
    or l
    ld d, a
    and $04
    add $bf
    and [hl]
    ld a, [bc]
    inc sp
    ld d, l
    sbc a
    cp $a0
    ld l, e
    ld d, e
    ld b, a
    dec de
    push de
    ld d, l
    ld a, [$556d]
    ld e, d
    adc c
    cp e
    push af
    ld d, l
    ld a, [hl]
    ld h, $aa
    and d
    and a
    ld d, d
    push de
    cp $88
    xor d
    xor d
    add hl, sp
    xor e
    rst $38
    ld [$0f3e], a
    ld h, a
    ld [bc], a
    ld a, c
    jp c, $a2a1

    add [hl]
    add hl, bc
    pop hl
    jp z, $b1cd

    ld d, $1a
    ld [hl], a
    ldh [$af], a
    ld sp, $3109
    ret nz

    ret nz

    sbc e
    ld c, l
    jr c, @+$30

    db $e4
    db $e4
    and l
    inc sp
    rrca
    jr jr_00b_6be8

    add h
    dec e
    ldh a, [$aa]
    jr jr_00b_6c5f

    or b
    ld d, l
    ld b, l
    ld sp, hl
    add e
    dec hl
    add [hl]
    dec e
    ldh [$91], a
    ld a, e
    add [hl]
    ld b, d
    ld h, b
    or c
    ld a, c
    dec d
    push de
    ld h, h
    xor c
    inc [hl]
    ld h, c
    ld l, d
    inc c
    sbc d
    xor l
    xor c

jr_00b_6c57:
    ld c, a
    ld [hl+], a
    sub c
    ld c, $52
    ld de, $93c0

jr_00b_6c5f:
    and e
    ret nc

    call nc, $088e
    dec h
    db $e4
    and e
    add hl, hl
    db $76
    dec l
    inc hl
    ld h, e
    or b
    ld a, [hl-]
    ld d, $47
    ld a, [$14ac]
    inc e
    ld h, b
    add h
    and b
    add e
    or d
    ld e, $18
    ret nz

    sbc h
    ld a, [hl-]
    ld d, [hl]

jr_00b_6c7f:
    call z, $3230
    ret c

    xor a
    ld c, $6c
    and c
    ld sp, $b258
    inc de
    ld [hl], b
    jr z, jr_00b_6cd3

    add $1f
    ld d, h
    ld sp, $0497
    call z, Call_000_022f
    jr z, jr_00b_6cba

    daa
    ld [de], a
    ld h, c
    ld e, h

Jump_00b_6c9d:
    inc c
    or b
    ld hl, $1002
    ld b, c
    sbc h
    cpl
    jr jr_00b_6cc8

    ld h, c
    push de
    inc c
    ld sp, $984a
    ld h, l
    add $48
    ld d, b
    ld sp, $9a11
    add hl, bc
    adc d
    add hl, bc
    add hl, bc
    cp d
    ld d, l

jr_00b_6cba:
    ld [de], a
    call z, Call_00b_632a
    inc b
    pop bc
    ld [hl+], a
    and [hl]
    ld e, [hl]
    adc d
    dec d
    ld b, d
    xor a
    ld e, b

jr_00b_6cc8:
    ld h, $8e
    ld [hl-], a
    ld de, $3050
    ld c, l
    db $e4
    ld a, l
    ld b, l
    ld c, l

jr_00b_6cd3:
    jr nz, jr_00b_6c7f

    or h
    ld d, h
    ld d, h
    ld e, h
    and [hl]
    jr z, @+$35

    inc de
    rla
    inc e
    di
    ld d, h
    pop bc
    rra
    ld b, $44
    or c
    ld d, l
    ld d, e
    ld b, l
    adc h
    ld e, d
    adc e
    sub c
    ld d, l
    ld e, l
    ld h, e
    ld a, [de]
    ld c, d
    ld d, l
    ldh [$e9], a
    add hl, bc
    ld h, e
    ld c, h
    inc d
    inc h
    adc b
    ld h, l
    ld e, b
    pop de
    cp l
    ld a, h
    dec hl
    pop de
    and d
    inc sp
    dec h
    ld d, l
    ld d, h
    jr z, @-$75

    ld e, [hl]
    adc h
    ld e, [hl]
    add hl, hl
    ld a, b
    add $0a
    ld c, h
    ld d, l
    ld e, d
    ld [$a516], sp
    add c
    add hl, sp
    ld a, [de]
    add hl, sp
    and d
    ld e, e
    adc l
    ld [hl], h
    inc h
    jp nz, $6341

    ld b, [hl]
    rra
    ld c, h
    ld hl, sp-$2a
    dec de

jr_00b_6d28:
    adc l
    ld h, l
    ld c, h
    and e
    sbc [hl]
    xor d
    xor d
    ld a, $3e
    ld h, b
    and h
    xor c
    and e
    jr jr_00b_6d28

    adc l
    and b
    sub b
    ld a, [$9509]
    and h
    and h
    ld b, c
    ld [$1add], a
    ldh a, [$d6]
    cp $d5
    or b
    add hl, sp
    sbc d
    xor a
    add sp, $4f
    pop hl
    db $10
    and $71
    ld c, d
    rst $38
    cp $bb
    add hl, sp
    ld l, c
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    add a
    ei
    jr jr_00b_6dde

    db $f4
    rra
    push af
    ld a, [hl]
    and c
    ld a, [hl]
    ld e, e
    pop de
    rrca
    ld b, l
    cp $4f
    sbc b
    inc h
    ld [hl], a
    add hl, de
    ld [hl], e
    and c
    add hl, de
    ld c, [hl]
    add $6c
    dec c
    ld d, c
    sbc e
    ld a, [de]
    jr nc, @-$38

    db $f4
    ld a, [bc]
    ld h, b
    rst $00
    rst $10
    nop
    ld d, l
    cp l
    rla
    rst $38
    ld c, a
    ld bc, $afe2
    rst $38
    push af
    inc a
    ld a, d
    pop de
    ld [hl], h
    db $dd
    ld c, h
    cp a
    jp nc, $8a68

    jr c, jr_00b_6da8

    ld e, e
    jp nc, $ca68

    add l
    db $e4
    jp $8478


    ld a, [hl+]
    ld d, b
    ld c, b
    xor b
    ld [de], a
    ld e, $0c
    add a

jr_00b_6da8:
    xor $1a
    xor e
    adc c
    add $b8
    adc d
    ld d, d
    add sp, $28
    dec d
    ld l, $48
    ld b, d
    ld b, c
    ld d, l
    and c
    ld e, b
    ld d, l
    ld [hl+], a
    ld [hl], b
    adc h
    ld [de], a
    ld a, [hl+]
    and d
    ld a, d
    adc c
    ld b, l
    ld l, c
    ld l, l
    dec b
    ld c, d
    sbc a
    ld hl, sp-$5c
    ld e, d
    add c
    ld b, d
    sub $e0
    adc b
    sub c
    ld b, [hl]
    ld [$54ca], sp
    sub l
    ld e, b
    adc b
    pop bc
    ld c, l
    ld d, b
    jp hl


    add l

jr_00b_6dde:
    ldh a, [$81]
    ld [$2dc2], sp
    ld sp, $a149
    xor e
    ld h, h
    rst $10
    ld a, a
    ld c, c
    add c
    ld c, [hl]
    ld c, l
    ld h, $c2
    inc b
    dec d
    push de
    ld h, l
    adc h
    inc l
    ld d, h
    ld a, [hl+]
    ld d, $82
    and a
    xor b
    xor c
    inc d
    push bc
    pop de
    push af
    adc [hl]
    ld c, d
    ld [hl-], a
    xor d
    adc l
    ld e, $39
    xor [hl]
    rst $10
    push de
    ld a, a
    db $e3
    add e
    ld a, d
    ld d, d
    or c
    ldh [$b4], a
    ld d, l
    ld a, [hl+]
    xor h
    add hl, bc
    call Call_000_301c
    inc h
    ld sp, $9ac1
    ld a, b
    inc h
    ret c

    ld b, c
    ld h, [hl]
    pop af
    dec hl
    add hl, hl
    ld [hl-], a
    ld c, d
    ld [$12d9], sp
    sbc b
    ld a, $0e
    sub c
    jr z, @-$5a

    ld [hl], $4a
    inc d
    ld sp, $c412
    ret nc

    ld c, d
    ld b, [hl]
    ld b, e
    ld c, $0b
    pop af
    ld a, b
    and h
    add hl, hl
    add h
    ld de, $d50b
    pop de
    adc e
    ld a, [bc]
    dec bc
    add hl, de
    ld d, b
    or e
    ld h, $68
    ld [hl], b
    ld [hl-], a
    call z, Call_00b_614a
    call c, Call_00b_5811
    inc l
    db $10
    ld a, e
    jr nz, jr_00b_6dde

jr_00b_6e5b:
    inc bc
    ld a, $44
    ld l, l
    db $10
    sub c
    call nc, Call_000_21a4
    ld de, $551c
    inc de
    ld b, $8a
    add hl, bc
    sub h
    ld l, d
    call nz, $c1d8
    ld hl, $2d13
    or [hl]
    jr z, jr_00b_6e5b

    ld sp, $10b6
    inc l
    add [hl]
    cpl
    ld [bc], a
    pop bc
    jr z, jr_00b_6ea1

    ld c, d
    ld h, a
    ld b, c
    add [hl]
    add h
    ld a, [de]
    inc d
    dec [hl]
    and e
    ld d, $83
    sbc c
    ld l, b
    ccf
    ld b, [hl]
    ld e, c
    sbc h
    ld h, [hl]
    sub $6a
    pop de
    call $b23a
    ld a, [bc]
    dec c
    daa
    ld [$bd44], sp
    dec h
    xor c
    ld a, [hl-]

jr_00b_6ea1:
    ld e, b
    cp c
    add hl, sp
    xor e
    add hl, de
    ret z

    ld c, [hl]
    dec h
    add d
    ld hl, $54f2
    push de
    ld h, [hl]
    and h
    sbc b
    add hl, de
    ld [hl], $64
    inc [hl]
    jp z, $d514

    ld a, l
    jp Jump_000_2a06


    ld d, e
    ld a, d
    inc b
    ld l, b
    add sp, -$6a
    dec sp
    db $e4
    push de
    sub e
    adc d
    ld e, h
    and [hl]
    ld d, [hl]
    add hl, sp
    ld l, d
    ld e, b
    adc c
    ld c, a
    ld b, $94
    ld hl, sp+$5d
    ld [$752a], a
    or h
    ld b, h
    sbc l
    ld [$4a6c], sp
    ld [hl], d
    xor a
    ld hl, $ed9c
    sub c
    ld c, b
    ld c, d
    add l
    ld b, [hl]
    rlc [hl]
    ld d, h

jr_00b_6ee9:
    ld [de], a
    sbc h
    ld d, e
    and [hl]
    ld de, $c6cd
    ld sp, $84c7
    ld e, d
    ld [hl], h
    and d
    and d
    call $fae8
    ld l, a
    ld e, b
    ld b, l
    or c
    ld sp, $45c9
    ld d, d
    sbc [hl]
    dec c
    rra
    ld a, [bc]
    ld d, l
    ld sp, $536a
    jp Jump_00b_4770


    ld d, l
    ld d, l
    ld a, [hl-]
    jr nz, @-$7d

    or a
    add a
    dec c
    dec bc
    adc $58
    rra
    ret nc

    ld h, d
    sbc a
    ld a, [hl-]
    xor h
    ld d, d

jr_00b_6f1f:
    ld [de], a
    db $e3
    pop bc
    or d
    and h
    db $eb
    adc c
    ret z

    pop bc
    ld b, $4e
    ld a, a
    dec l
    add c
    ld c, d
    and l

jr_00b_6f2f:
    jr c, jr_00b_6ee9

    ld l, b
    adc c
    jp c, $a522

    adc $0a
    ld l, e
    and d
    ld [de], a
    db $10
    ld c, [hl]
    ld [hl], h
    rla
    push hl
    dec b
    cp l
    add [hl]
    add hl, sp
    xor d
    dec d
    add e
    sbc l
    and l
    di
    and c
    ld sp, hl
    sbc b
    jp nz, $91f3

    ld a, [hl]
    ld [$1352], sp
    sbc e
    cp d
    add e
    ld l, e
    sub $45
    jr nc, jr_00b_6f2f

    ld e, e
    and $21
    ld e, d
    ld hl, sp+$63
    ld [$fdde], sp
    inc d
    ld l, d
    and c
    ld c, h
    or h
    jp c, $d905

    jr c, @-$1b

    add [hl]
    ret nc

    cp a
    dec b
    inc b
    ldh a, [$2a]
    ld e, [hl]
    jr c, jr_00b_6f1f

    inc c
    xor b
    xor d
    xor c
    jp c, $7b85

    ld d, l
    cp $a9
    call $547a
    adc l
    db $fd
    ld d, c
    ret


    dec c
    dec bc
    sub a
    daa
    ld [hl], e
    and $31
    db $db
    ei
    rla
    sbc l
    adc a
    cp $4c
    add sp, -$59
    ld a, [hl+]
    rrca
    ld e, a
    ld hl, sp+$2f
    ld [c], a
    and d
    sbc h
    ld [$e273], sp
    cp a
    rst $38
    sub e
    ld d, l
    dec de
    add sp, -$3c
    ld e, a
    rst $38
    rst $00
    dec sp
    jr jr_00b_702f

    call nc, $3c78
    rst $38
    dec c
    ld l, c
    call nc, $fecf
    ld e, h
    and a
    ld [de], a
    db $10
    jr nc, jr_00b_7040

    cp $98
    ld e, c
    cp d
    xor h
    xor d
    dec [hl]
    cp $98
    ld e, d
    ld l, a
    ld a, a
    rst $38
    xor b
    push de
    ld h, $12
    ld [hl], b
    ld e, a
    rst $38
    rst $38
    db $fc
    ld h, l
    ld h, $f0
    rst $18
    rst $38
    cp $78
    dec c
    ld a, a
    ld a, [$5078]
    push af
    ld h, $e0
    ld b, h
    cp [hl]
    ld d, l
    ld a, a
    db $fc
    push hl
    ld e, a
    and e
    sbc l
    ld e, e
    push bc
    ld e, a
    db $f4
    ldh [$fe], a
    xor e
    ld [$3826], a
    ld h, a
    sub h
    xor $b3
    or l
    ld h, [hl]
    jr nc, jr_00b_704f

    ld h, $6d
    xor [hl]
    rst $38
    adc [hl]
    add hl, hl
    push af
    cp $3a
    sbc $8e
    db $db
    rst $38
    rst $38

jr_00b_700f:
    db $fc
    ld a, [$f259]
    adc $ab
    sbc h
    ret z

    ld b, a
    ld c, d
    jr nc, jr_00b_703d

    add e
    inc c
    sbc h
    ld [hl], $aa
    rst $00
    ld h, l
    ld [hl], c
    sbc $a6
    ld c, $72
    ccf
    xor d
    cp a
    rst $20
    dec bc
    db $fd
    ld [hl+], a
    cp l

jr_00b_702f:
    ld b, a
    inc d
    ld b, h
    dec l
    dec e
    ld c, c
    ldh [$c6], a
    ld [hl], c
    db $f4
    and b
    ld d, l
    cp [hl]
    ld l, c

jr_00b_703d:
    ld a, a
    ld c, l
    dec d

jr_00b_7040:
    ld d, h
    db $dd
    rst $30
    ld e, $9b
    ld b, c
    ld a, e
    xor d
    xor a
    ld d, e
    ld a, [hl+]
    dec l
    ld h, $aa
    dec b

jr_00b_704f:
    ld sp, $2ead
    adc b
    ld d, c
    sub e
    sbc l
    ld c, l
    jp nc, $e964

    and b
    ld h, a
    ld c, c
    ld d, h
    ld d, [hl]
    add d
    ld d, d
    sub d
    jr z, jr_00b_700f

    rlca
    ld d, b
    xor c
    ld c, l
    dec h
    ld a, b
    ret


    ld b, d
    db $fd
    ld e, a
    ld d, c
    ld e, d
    and h
    sbc d
    ld hl, $fd31
    ld a, [bc]
    and d
    ld d, $34
    ld d, l
    db $e3
    ld [$4c57], sp
    ldh [rRP], a
    ld hl, $21aa
    ld c, d
    xor b
    rla
    db $d3
    dec bc
    dec h
    ld h, e
    add [hl]
    add sp, $57
    push de
    ld a, [hl+]
    xor b
    push bc
    db $e3
    dec hl
    add sp, -$72
    inc b
    jp nz, $93d2

    add c
    ld b, [hl]
    ld a, [bc]
    cp l
    db $e4
    adc e
    ld e, d
    inc b
    ldh [$bc], a
    ld h, d
    ld [hl], l
    ld a, d
    and e
    and [hl]
    sbc [hl]
    ld d, h
    ld e, a
    dec l
    adc [hl]
    adc d
    cp a
    ld [$6385], sp
    ret nz

    xor d
    adc h
    rst $30
    call Call_000_2624
    xor c
    add hl, hl
    cp e
    and b
    or a
    ld c, $8a
    db $10
    ld b, c
    ld d, h
    inc c
    add hl, bc
    sub e
    ld de, $350a
    ld b, b
    add l
    sub d
    or l
    ld [bc], a
    and l
    db $fd
    inc c
    jr nc, @-$5e

    adc h
    adc h
    ld h, a
    ld l, c
    ld c, c
    ld sp, $c530
    ld c, c
    ld [hl-], a
    sub l
    ld h, l
    ld e, b
    jr z, jr_00b_714a

    ld h, b
    or e
    db $e4
    ld h, $14
    sub b
    push hl
    ld d, [hl]
    xor d
    jr nc, @+$23

    and c
    ld a, d
    ld a, [c]
    sub h
    sbc b

jr_00b_70f2:
    and h
    inc [hl]
    and b
    pop bc
    inc bc
    ld b, l
    ld c, b
    dec h
    ld h, $1a
    ld a, [de]
    db $10
    call nz, $d531
    ld [hl], b
    ld e, c
    add h
    ld h, a
    ld sp, $d608
    ld d, l
    ld c, b
    ld h, c
    sbc d
    cpl
    call nz, $19a9
    adc l
    ld d, d
    jr jr_00b_7175

    sub a
    ld b, d
    or [hl]
    ld de, $6614
    call $c610
    ld d, l
    ld [de], a
    add $fa
    rla
    inc b
    jr c, jr_00b_714b

    dec hl
    reti


    jp $9720


    rlca
    rst $38
    add l
    ld b, $73
    ld d, b
    add hl, hl
    and e

Call_00b_7132:
    ld b, a
    ld b, h
    dec l
    ld [bc], a
    xor e
    daa
    add e
    dec de
    add b
    ld b, h
    cp [hl]
    push hl
    ld a, h
    pop hl
    ld a, a
    rst $18
    ld a, l
    xor d
    scf
    ld a, b
    sbc e
    xor d
    ld a, h
    inc de

jr_00b_714a:
    and d

jr_00b_714b:
    db $e3
    or a
    ld d, e
    sbc d
    jp nc, Jump_000_2958

    ld d, h
    db $e3
    cp [hl]
    add c
    add c
    ld l, e
    inc c
    db $e4
    xor b
    sbc e
    ld hl, sp-$11
    cp h
    db $fc
    ld d, $7d
    jp nz, Jump_00b_7442

    jr nz, jr_00b_70f2

    add [hl]
    ld [hl], e
    ld c, c
    add hl, bc
    ld de, $f9ce
    ret nc

    sub d
    db $fd
    inc bc
    cp b
    daa
    dec c

jr_00b_7175:
    rst $38
    db $e4
    ld e, a
    add [hl]
    ld [hl], d
    ld d, h
    ld c, h
    and b
    rst $00
    ld [hl], l
    and a
    db $e4
    and b
    ld d, l
    cp b
    rst $18
    rst $10
    rst $38
    db $f4
    add sp, $6b
    ld l, [hl]
    adc h
    add hl, hl
    ld c, [hl]
    dec b
    ld e, b
    adc l
    adc b
    ld e, d
    xor c
    rrca
    sub e
    ld b, a
    xor d
    sub c
    ld b, l
    and e
    dec d
    ld e, b
    adc $c9
    ld d, d
    rla
    ld b, e
    ld b, a
    cp [hl]
    jr c, jr_00b_7213

    ld b, a
    add c
    add c
    ld c, c
    cp a
    and e
    add [hl]
    add [hl]
    inc b
    sbc b
    ld a, a
    adc b
    xor b
    ldh [$92], a
    ld [hl], h
    ld [hl+], a
    ld l, [hl]
    ld b, l
    ld d, b
    adc [hl]
    jr z, @+$12

    and e
    add hl, bc
    sub d
    ld e, d
    add hl, sp
    add sp, -$76
    add hl, bc
    ret nc

    add d
    db $e3
    add [hl]
    dec d
    jr nc, @+$5f

    cp $39
    call nc, $2228
    sub h
    xor b
    db $e3
    adc h
    ld h, l
    add a
    ld sp, hl
    adc h
    inc d
    db $d3
    ld l, d
    and h
    and l
    and a
    db $fd
    ld e, a
    cp b
    ldh [$57], a
    ld c, l
    ld l, b
    ld d, h

jr_00b_71e7:
    inc hl
    ld l, d
    ld h, $22
    sub e
    inc b
    jr nz, jr_00b_7252

    ld c, d
    ld hl, $a94c
    ld d, [hl]
    ld d, $37
    or c
    ld d, d
    push af
    ld c, d
    ld e, b
    db $e3
    xor c
    ld l, $e8
    ld d, [hl]
    ld a, [hl-]
    and l
    ld e, e
    ld [hl], b
    ld h, e
    ld c, l
    ret


    jr z, jr_00b_723b

    xor e
    dec e
    ld d, e
    cpl
    jr jr_00b_71e7

    daa
    ld [bc], a
    ld c, h
    dec e

jr_00b_7213:
    ld b, [hl]
    adc h
    ld a, [bc]
    ld l, d
    sub c
    ld e, b
    ld sp, $2a09
    cp e
    ld c, h
    ld h, a
    jp Jump_00b_4044


    add d
    add sp, $4a
    ld b, h
    ld [hl], h
    ld hl, $4b5a
    ld [bc], a
    add d
    ld [hl], b
    dec h
    inc [hl]

jr_00b_722f:
    sub b
    db $fd
    adc h
    ld b, h
    ld [hl], b
    ld d, b
    cpl
    ret


    ld d, [hl]
    ld [$59c8], sp

jr_00b_723b:
    push bc
    dec b
    ld b, b
    sub d
    add h
    ret z

    and c
    ld [bc], a
    ld [hl], b
    and l
    and h

Call_00b_7246:
    and c
    ld b, $46
    inc e
    ld [hl], b
    and e
    db $10
    sub e
    inc b
    xor $82
    ld [hl], d

jr_00b_7252:
    inc hl
    db $10
    sub e
    and l
    ld d, c
    rst $00
    add [hl]
    add d
    or d
    ld d, l
    cp $62

jr_00b_725e:
    sbc e
    ld [hl], l
    ld e, [hl]
    ld [de], a
    ld hl, sp+$50
    dec hl
    jr nz, jr_00b_722f

    ld b, [hl]
    sub l
    ld de, $1172
    and l
    db $10
    sbc d
    inc [hl]
    ld [hl], e
    dec hl
    ld a, [de]
    reti


    add e
    ld c, d
    ld h, a
    rst $20
    dec b
    ld [bc], a
    xor [hl]
    ld [hl-], a
    or h
    xor d
    inc de
    inc e
    ld [hl], c
    jr jr_00b_72d5

    add h
    dec bc
    add a
    dec e
    ld [hl], h
    jr jr_00b_72cb

    add h
    ld l, d
    ld b, h
    cp l
    daa
    db $ed
    dec d
    add hl, sp
    xor l
    ld [$f36b], sp
    sub l
    inc b
    jr @+$52

    ld d, e
    sub c
    add d
    sbc b
    ld a, [hl+]
    ld [$79e1], sp
    adc b
    ld h, b
    ld b, c
    inc b
    ldh [$aa], a
    dec h
    ld d, h
    adc b
    pop hl
    ld d, d
    ld h, $15
    add l
    adc $18
    jr @+$56

    inc d
    adc e
    jr c, jr_00b_7320

    add l
    ld b, c
    ld c, c
    ld c, [hl]
    dec d
    sub c
    sub h
    ld h, d
    inc sp
    adc d
    ld a, [$5481]
    add h
    add sp, -$43
    ld [hl], e
    cp d
    sub l

jr_00b_72cb:
    ld c, a
    add l
    sbc [hl]
    xor d
    sbc l
    sbc d
    cp $0f
    daa
    dec [hl]

jr_00b_72d5:
    db $fd
    jr z, jr_00b_72ff

    ld [hl-], a
    or b
    jr nz, jr_00b_725e

    rst $00
    ld [de], a
    rla
    pop hl
    pop hl
    or a
    sbc h
    inc a
    rrca
    jp z, $b1ad

    jp $c803


    rst $38
    rst $20
    scf
    add a
    rst $38
    ld hl, sp+$39
    push bc
    add h
    rra
    rst $38
    pop hl

jr_00b_72f7:
    inc e
    ld [hl], d
    adc l
    rst $38
    dec e
    ld [$d777], a

jr_00b_72ff:
    xor c
    db $f4
    and b
    ld h, [hl]
    cp l
    ld d, l
    ld d, e
    jp z, $ab6e

    db $d3
    and l
    ld d, e
    dec [hl]
    add a
    pop de
    or h
    and $91
    sub e
    add d
    adc c
    ld c, [hl]
    ld c, d
    adc [hl]
    ld b, h
    db $10
    ld b, l
    jr c, @-$68

    ld [hl], $a4
    add l

jr_00b_7320:
    add d
    add hl, hl
    ld e, d
    xor d
    ld d, e
    ld d, h
    jp z, $81be

    ld d, d
    ld [hl], l
    rst $38
    cp $7d
    ld d, b
    adc c
    ld c, l
    rst $28
    add c
    ld d, $17
    rst $38
    xor $42
    ld c, e
    ld c, [hl]
    dec [hl]
    jr jr_00b_7396

    ld a, a
    xor $e9
    add hl, bc
    ld b, $8d
    db $db
    ld a, [c]
    ld de, $6a82
    sbc l
    sub [hl]
    ld a, [hl+]
    jr c, jr_00b_72f7

    and d
    pop hl
    add d
    pop hl
    adc c
    add [hl]
    ld [$59e1], sp
    ld c, e
    ld b, l
    ld b, $e0
    ld d, e
    inc h
    db $dd
    ld [$1822], a
    jr jr_00b_7388

    xor l
    inc b
    ld d, e
    sbc d
    ld d, b
    adc b
    add [hl]
    ld l, l
    ld a, a
    ld e, c
    adc c
    adc b
    sub [hl]
    xor c
    inc sp
    ld d, h
    adc b
    adc c
    and l
    ld d, [hl]
    ld b, $18
    sub $4e
    add hl, bc
    ld [hl+], a
    sub l
    ld e, d
    ld d, $25
    ld d, b
    ld c, e
    ld c, h
    ld l, e
    ld a, [hl+]
    sub h
    or l
    and d

jr_00b_7388:
    ld e, b
    add [hl]
    inc b
    rst $18
    rlca
    db $f4
    sbc d
    xor d
    dec l
    ld l, e
    ld d, b
    sbc a
    or $36

jr_00b_7396:
    ld c, [hl]
    inc h
    ld h, c
    sub h
    adc d
    adc l
    db $10
    ld e, l
    ld c, d
    ld d, d
    sbc c
    dec h
    adc $64
    ld a, [hl+]
    dec b
    xor e
    db $fc
    ldh a, [$ea]
    and e
    ld a, [bc]
    sub [hl]
    ld c, h
    ld l, b
    pop af
    ld l, e
    push de
    ld a, [hl]
    ld [hl-], a
    sbc [hl]
    xor d
    add hl, hl
    push hl
    ld sp, $e714
    ld d, d
    add hl, bc
    sbc d
    ld c, d
    add e
    ld [$4f73], a
    xor c
    cp a
    add a
    ldh [$9c], a
    sub a
    cp $64
    sub b
    cp $17
    xor d
    ld [hl], c
    cpl
    cp $66
    add e
    ldh a, [$6c]
    ld e, $56
    xor d

jr_00b_73d9:
    sbc b
    rst $38
    db $f4
    ld l, c
    db $10
    jp $f772


    ld d, l
    ld d, h
    add hl, de
    ccf
    db $f4
    ld [hl], d
    jr nz, jr_00b_73d9

    xor c
    add hl, hl
    ld d, d
    db $dd
    ld h, a
    ld a, [de]
    add e
    db $e4
    ld b, d
    sub l
    ld [hl+], a
    add a
    add h
    ld [hl], b
    or h
    scf
    db $e3
    ld a, [bc]
    ld l, a
    pop af
    jp $e617


    ld sp, $3031
    db $fc
    ld [hl], e
    ld a, $29
    ld d, d
    inc l
    ld h, c
    ld [$4a6f], a
    db $fd
    push hl
    ld h, $0c

jr_00b_7411:
    jr nc, jr_00b_7411

    ld [hl], d
    rst $38
    ld a, c
    ld d, c
    ld d, c
    ld [$b0ff], sp
    db $eb
    sbc d
    ld d, a
    rst $38
    and h
    ld h, $0c
    ccf
    db $fd
    rst $38
    cp $99
    cp a
    rst $38
    jp hl


    ld de, $af10
    cp $91
    ld a, a
    ld a, [$f569]
    ld a, a
    ld_long a, $ffaf
    cp $54
    rst $18
    ld a, [$9764]
    ld a, a
    rst $38
    rst $38
    db $f4
    and b

Jump_00b_7442:
    and b
    adc h
    dec e
    sbc d
    ld h, [hl]
    rra
    rst $38
    push de
    ld de, $8705
    xor c
    push bc
    ld d, $e1
    ld e, a
    rst $38
    sub a
    ld c, a
    sbc h
    sub d
    adc h
    ld de, $7510
    sbc c
    ld a, [$ac78]
    ld c, d
    ld a, [$1079]
    ld [hl], l
    add h
    ld h, [hl]
    ld b, h
    cp b
    sub l
    ld d, l
    add hl, sp
    sub [hl]
    adc h
    add hl, hl
    ld [hl], $55
    adc l
    db $e3
    ld [hl], $3b
    jp nc, $3a19

    pop hl
    sbc b
    ld sp, hl
    and [hl]
    inc b
    xor $42
    ret z

    ld l, b
    dec d
    ld c, [hl]
    dec de
    pop bc
    ld b, d
    dec b
    db $e4
    ld h, b
    sub e
    ld a, d
    dec de
    db $fd
    and d
    ld a, c
    adc [hl]
    ld c, b
    rst $00
    adc [hl]
    ld a, e
    ld d, l
    db $e3
    xor [hl]
    xor b
    ld a, [c]
    rst $20
    ld a, [bc]
    sub h
    and a
    ld [hl+], a
    pop de
    sub l
    and [hl]
    adc e
    ld e, h
    ld l, a
    sbc c

jr_00b_74a4:
    ldh a, [$32]
    ld [hl], l
    xor $f6
    sbc l
    ld d, b
    call c, $8a7b
    ld l, d
    sbc h
    inc e
    ld sp, $7949
    cp e
    inc d
    push af
    dec d
    ld h, $d6
    cp b
    ld [hl], c

jr_00b_74bc:
    sbc l
    add d
    ld [hl], c

jr_00b_74bf:
    ld b, b
    sub h
    db $e4
    ld b, a
    ld c, d
    ld sp, hl
    reti


    ld d, h

jr_00b_74c7:
    ld a, h
    ld e, b
    ld [hl], a
    or c
    ld e, d
    xor d
    and l
    inc sp
    ld e, d
    xor d
    and l
    add hl, sp
    ld l, [hl]
    call z, $c2e8
    ld c, l
    jr z, jr_00b_74bc

    cp a
    xor c
    ld c, h
    ld h, h
    push hl
    adc [hl]
    jr z, jr_00b_74a4

    ld c, h
    ld d, d
    ld l, e
    ld d, e
    inc [hl]
    ldh [$a3], a
    sub c
    ld h, $ec
    ret


    ld a, [hl-]
    ld a, l
    ld c, h
    ld [$82a0], a
    ld l, $8e
    ret z

    ret


    ld e, d
    and b
    ld b, e
    ld d, h
    adc b
    db $e3
    and d
    ld a, l
    ld d, d
    jp c, Jump_00b_5f25

    cp [hl]
    adc c
    sub e
    adc d
    sub d
    ld h, e
    inc b
    and [hl]
    ld a, a
    sbc $e4
    xor b
    ld [c], a
    xor a
    db $fc
    sub $0a
    ld l, c
    db $ed
    add d
    ld c, c
    adc [hl]
    ld d, [hl]
    adc h
    ld [de], a
    jr nz, jr_00b_74c7

    cp d
    add c
    ld h, c
    ld c, c
    adc [hl]
    dec [hl]
    jp $94b4


    add $08
    jr z, jr_00b_74bf

    cp c
    ld c, [hl]
    jr c, jr_00b_754f

    jp nc, Jump_000_2565

    ld b, e
    ld d, d
    add sp, -$3e
    sub e
    add c
    ld b, [hl]
    ld c, e
    ld d, [hl]
    add c
    sub [hl]
    and h
    add h
    pop de
    inc [hl]
    xor h
    inc hl
    ld h, [hl]
    sbc [hl]
    xor l
    add hl, bc
    inc d
    jp nc, $a534

    ld a, [bc]
    ld sp, $69a0

jr_00b_754f:
    xor b
    jr jr_00b_75a5

    ld d, h
    ld [c], a
    add c
    ld [hl-], a
    sbc c
    ld a, [bc]
    and l
    and b
    adc d
    ld d, a
    cp $38
    jr nz, @-$7d

    jr nc, @-$78

    cp d
    and l
    add c
    cpl
    ld a, [$578c]
    cp $46
    ld l, b
    push bc
    ld h, $a8
    add h
    cp b
    push de
    sbc b
    add a
    pop hl
    add c
    rst $00
    ld c, c
    ld c, h
    ld e, b
    cp b
    sub $4b
    and h
    jr z, jr_00b_75d2

    inc e
    xor d
    ld d, l
    and e
    ld [$82d6], sp
    call z, $c124
    ld c, [hl]
    ld [hl], $37
    ld c, a
    add hl, de
    adc [hl]
    inc h
    pop af
    inc hl
    adc d
    ld [$39cd], sp
    ret c

    db $e4
    or l
    jr nc, jr_00b_75e1

    scf
    ld b, e
    ld e, b
    add sp, -$51
    ld d, [hl]
    xor d
    ld a, [bc]
    sub l

jr_00b_75a5:
    ld d, l
    dec e
    add sp, -$11
    xor d
    cp a
    push de
    ld d, l
    cp $a3
    xor a
    ld h, d
    add h
    xor d
    or c
    xor d
    add hl, de
    ld a, c
    rst $08
    and c
    xor c
    ld [hl], h
    and $1f
    ld a, [de]
    ld h, a
    rla
    rst $10
    sbc $b9
    ld [hl-], a
    sub h
    adc d
    ld l, c
    inc e
    ld l, $4d
    dec b
    ld b, l
    jp hl


    ld [hl], $84
    and l
    and b
    sbc h

jr_00b_75d2:
    inc e
    ld h, c
    dec c
    rla
    dec d
    rlca
    xor a
    push de
    ld sp, hl
    push de
    ld a, [hl+]
    sub d
    xor d
    and h

jr_00b_75e0:
    ld b, e

jr_00b_75e1:
    ld d, h
    inc c
    ld de, $a6c4
    dec d
    inc de
    add a
    db $f4
    rst $38
    and l
    ret


    ret


    ld c, c
    scf
    or h
    ld b, e
    pop hl
    db $10
    adc h
    dec d
    ld d, c
    ld [de], a
    ld [hl], d
    ld a, d
    add l
    ld h, l
    inc l
    ld d, e
    jr jr_00b_75e0

    sub b
    rst $20
    inc d
    inc c
    ld [hl], $09
    sub [hl]
    call nz, $d9e5

jr_00b_760a:
    ld de, $efcc
    and h
    ld c, c
    jr jr_00b_7655

    inc hl
    sub b
    and e
    sub c
    inc e
    adc a
    jp c, $3414

    sbc b
    ld b, [hl]
    adc c
    ld l, c
    pop bc
    dec c
    ld h, b
    add h
    ld b, a
    and $59
    ld d, l
    ld de, $a60c
    ret z

    jr z, jr_00b_760a

    sub d
    sbc d
    dec h
    dec h
    xor b
    ld l, c
    xor l
    or a
    db $fc
    add hl, bc
    inc [hl]
    adc d
    add hl, bc
    jr jr_00b_768c

    add hl, bc
    ld sp, $6956
    dec b
    ld b, h
    ret


    inc [hl]

jr_00b_7643:
    jr nc, jr_00b_768d

    db $ec
    ld [de], a
    add hl, bc
    and d
    ld [hl], b
    ld d, c
    add hl, hl
    inc [hl]
    ld d, h
    ld b, d
    ret nc

    ld b, [hl]
    ld a, [hl+]
    inc d
    ld [hl], b
    ld d, h

jr_00b_7655:
    ld h, l
    jr jr_00b_7643

    inc bc
    inc de
    ld d, d
    ld sp, $0b8a
    ld sp, $6a17
    sub d
    push hl
    ld sp, $4c2c
    ld l, h
    add h
    dec d
    xor [hl]
    ld c, a
    ret nc

    ld sp, $ac0e
    ld c, e
    call nz, $f9c6
    ld d, a
    ld h, $48
    ld b, h
    ld e, [hl]
    xor b
    ld h, c
    dec d
    sbc e
    ld h, b
    ret


    ld c, b
    ld d, b
    cp d
    add d
    add hl, bc
    ld [hl], l
    inc d
    add e
    ld b, [hl]
    add sp, $49
    sub h
    ld b, l
    ld c, e

jr_00b_768c:
    ld sp, hl

jr_00b_768d:
    or h
    ld [hl], b
    or c
    xor e
    inc e
    xor [hl]
    ld [hl], c
    ret z

    ld h, l
    and d
    and a
    ld [hl+], a
    add h
    ld [hl], d
    ld b, b
    sub h
    adc e
    inc e
    ld c, e
    ld h, a
    ld c, h
    jr jr_00b_76fe

    add h
    ld l, h
    and c
    ld b, a
    add e
    ld de, $0255
    xor d
    inc d
    adc h
    ld [hl], l
    add b
    ld b, h
    cp b
    push de
    ld d, l
    ld c, [hl]
    ld d, l
    and e
    ld a, [de]
    inc [hl]
    ld l, d
    sbc b
    or $a5
    inc a
    inc b
    xor $63
    pop bc
    db $f4
    db $ec
    sub b
    db $e3
    cp d
    and h
    add l
    ld c, [hl]
    or h
    ld [hl+], a
    inc h
    ld [$febf], a
    adc a
    ld b, $4f
    ld b, $53
    pop hl
    ld h, a
    ld [de], a
    sub [hl]
    and a
    inc hl
    ld b, [hl]
    ld [hl], c
    and e
    inc c
    ld de, $a9d4
    rst $18
    ld d, c
    sbc $a6
    ld a, [bc]
    sbc h
    ld l, h
    ld h, e
    ld de, $901c
    ld b, a
    sbc [hl]
    sbc h
    ld [hl], b
    inc a
    add hl, bc
    add h
    ld [hl], c
    ld c, h
    ld c, [hl]
    sbc l
    ld d, c
    dec [hl]
    daa
    add e
    daa

jr_00b_76fe:
    add e
    daa
    jp nz, Jump_00b_5580

    cp a
    ld b, $50
    rst $38
    dec b
    rla
    db $f4
    and $7a
    ld l, $a4
    ld d, $04
    ld e, [hl]
    ld c, l
    sub h
    ld e, d
    ld b, $90
    sbc l
    ld e, d
    or [hl]
    dec d
    ld [hl-], a
    ld d, a
    ld b, d
    xor e
    ld [hl+], a
    ld sp, $a4a0
    ret


    add sp, $68
    add sp, -$7e
    ld l, $d4
    ld d, h
    add h
    sub h
    db $dd
    inc sp

jr_00b_772e:
    xor e
    add c
    and b
    sub [hl]
    dec h
    db $fd
    and a
    and e
    ld l, d
    ld a, [de]
    adc h
    jr z, jr_00b_7751

    dec bc
    ld [$d294], sp
    call nc, $e0b5
    sub l
    add [hl]
    dec h
    scf
    and b
    rst $38
    dec bc
    db $fd
    ld d, h
    ld e, $1d
    ld a, [hl-]
    ld l, l
    ld a, [bc]
    xor e

jr_00b_7751:
    add l
    adc [hl]
    bit 0, [hl]
    ld d, [hl]
    adc a
    ld [bc], a
    ld hl, sp-$04
    xor [hl]
    ld a, [hl]
    ld c, $f0
    jp nc, $aa42

    ld [hl], e
    inc l
    ld h, h
    add e
    ld a, [$a990]
    or d
    ld b, d
    ld [$7fa8], sp
    xor b
    ld d, e
    cp h
    ld l, h
    add h
    ld d, h
    db $e3
    ld a, b
    ld a, d
    ld a, $32
    add $0a
    and h
    ld b, h
    ld a, [$1f3e]
    adc [hl]
    ld c, a
    pop af
    adc l
    db $fd
    ld de, $1f5e
    add a
    pop bc
    ld [$9aff], a
    jr nc, jr_00b_772e

    sub l
    ei

jr_00b_7790:
    xor e
    db $fc
    or b
    ld sp, $98a4
    cp a
    inc bc
    ld a, [$0213]
    ld [hl], b
    jp z, $f143

    sbc a
    and c
    inc e
    ld d, h
    inc [hl]
    jr nc, jr_00b_77ee

    and b
    or h
    rst $00
    ld h, l
    xor c
    rla
    daa
    add c
    ld a, h
    ld sp, $c7e1
    push hl
    and b
    ld b, h
    cp [hl]
    ld l, l
    ld c, [hl]
    rst $28
    adc $fa
    inc a
    inc b
    ldh [$7f], a
    db $fd
    dec l
    sub e
    ld h, a
    adc e
    or [hl]
    sbc c
    inc c
    pop de
    adc l
    db $76
    ld c, $33
    ld l, [hl]
    and e
    jr c, @-$1e

    and a
    and b
    ld d, d
    sub d
    dec d
    ld [hl], e
    ld l, e
    sub b
    add l
    add e
    ld hl, sp+$28
    pop hl
    or l
    db $fc
    ld d, e
    or [hl]
    and e
    db $e3
    ld [hl], a
    sbc $27
    add c
    ld e, $8e
    xor e
    add hl, de
    ld h, a
    inc d
    sub c

jr_00b_77ee:
    jr nz, jr_00b_7790

    ld a, [$826a]
    ld h, a
    push af
    ld l, c
    and e
    jp nc, Jump_00b_6bb1

    inc b
    ld l, l
    ld d, h
    ld a, b
    db $10
    ld d, c
    rrca
    sbc l
    rla
    call nc, Call_00b_7d0a
    ld l, b
    ld d, l
    cp a
    ld c, a
    ld l, e
    pop de
    ld a, [hl]
    ld a, a
    ld b, c
    ld d, l
    ld c, l

jr_00b_7811:
    db $dd
    ld b, $6e
    pop de
    add c
    ld e, l
    ld a, [hl]
    cp d
    ld d, l
    ld l, $86
    add hl, bc
    jr jr_00b_784b

    ccf
    push de
    ld a, [hl]
    cp d
    add d
    or h
    adc d
    ld [hl], $fe

Jump_00b_7828:
    xor d
    or b
    ld c, h
    ld d, h
    ld d, h
    push de
    add d
    ld d, d
    add hl, de
    add d
    pop de
    ld d, l
    dec [hl]
    add l
    dec l
    ld e, c
    ld d, d
    ld d, h
    ld h, d
    sub h
    xor c
    dec l
    inc d
    jr z, jr_00b_7859

    dec h
    dec de
    cp b
    adc $14
    db $10
    ld h, c
    adc b
    ld d, l
    xor d

jr_00b_784b:
    sub $8c
    dec l
    dec d
    ld c, b
    adc b
    and e
    ld b, a
    ld h, e
    dec sp
    ld d, d
    dec d
    ld c, b
    ld d, d

jr_00b_7859:
    dec d
    rst $38
    and e
    ld a, d
    cp $0a
    push af
    rrca
    xor d
    inc a
    ld a, [bc]
    adc a
    jp $ea77


    ld a, [de]
    add hl, de
    ld a, c
    jr jr_00b_7811

    and [hl]
    xor $0d
    call nc, Call_000_15bc
    ret c

    ld d, h
    rrca
    cp d
    add hl, hl
    ld l, h
    dec c
    inc h
    ret c

    jr c, jr_00b_78ce

    db $eb
    db $dd
    cp b
    ld sp, $4170
    jr jr_00b_78c6

    db $e3
    ld d, l
    ld e, e
    sub a
    ld a, b
    cp b

jr_00b_788c:
    ld b, [hl]
    ld l, l
    sbc b
    ldh a, [$e8]
    ret z

    ld h, h
    ld b, c
    inc d
    and h
    jr nc, jr_00b_78d9

    adc d
    ld a, [$8d4c]
    sub e
    sub [hl]
    sub e
    ld a, [bc]
    sub e
    ld de, $8cc0
    inc de
    inc d
    sub d
    adc h
    add hl, hl
    add hl, bc
    ld d, a
    ret nc

    ld [hl], b
    add hl, sp
    adc l
    ld [hl+], a
    or b
    push bc
    inc h
    ld b, h
    inc l
    dec c
    add $92
    ld c, e
    ld a, [c]
    add h
    ld b, e
    ld e, [hl]
    inc a
    ld [hl], b
    call z, $188c
    ld [hl], a
    jr nc, jr_00b_788c

    add c

jr_00b_78c6:
    inc b
    ld a, [hl]
    ld a, [de]
    ld b, h
    cp [hl]
    reti


    ld c, [hl]
    push bc

jr_00b_78ce:
    sub $fd
    jr c, jr_00b_7931

    db $eb
    and c
    and c
    adc l
    jp c, Jump_000_1622

jr_00b_78d9:
    sub b
    ld d, e
    adc d
    ld [hl-], a
    add c
    ld b, d
    adc [hl]
    inc b
    add [hl]
    ld [hl+], a
    adc [hl]
    ld d, h
    ld a, [hl+]
    ld sp, $3855
    ld h, h
    or [hl]
    rra
    and h
    ld [c], a
    sub l
    ld l, a
    sbc a
    and e
    ldh a, [$6d]
    ld hl, sp-$55
    ldh [$a9], a
    rst $00
    ld a, [hl+]
    pop hl
    dec hl
    ld d, [hl]
    ld [hl], b
    dec a
    ld [hl+], a
    db $f4
    cpl
    ld h, $f9
    inc c
    ld d, l
    inc e
    call nc, $1355
    ld l, c
    cp [hl]
    sbc b
    inc hl
    rst $38
    rst $20
    inc c

Jump_00b_7911:
    jp nc, $4f0b

    ld sp, $05cf
    dec b
    rra
    add h
    add b
    ld [hl], a
    cp h
    ld h, l
    ld c, a
    ld sp, $ff55
    or $3a
    dec d
    ld d, l
    ld c, d
    ld d, a
    cp $aa
    ld hl, $99e3
    ld a, a
    and a
    sub $d6

jr_00b_7931:
    xor b
    call $89e3
    ld c, b
    and l
    dec bc
    ld b, c
    add $fc
    push de
    ld [c], a
    dec d
    ld hl, $e052
    add [hl]
    add l
    ld b, a
    db $db
    ld b, c
    ld hl, $5c30
    dec [hl]
    ld [$dc8a], sp
    dec h
    inc d
    ld [de], a
    inc d
    add l
    ld d, $de
    dec d
    ld h, l
    ld l, d
    ld h, l
    ld [hl], b
    add c
    ld b, $8c
    add hl, hl
    adc d
    ld d, l
    add d
    inc e
    inc h
    adc b
    ld h, h
    add l
    ld a, c
    dec h
    ld [c], a
    jr jr_00b_79bf

    and e
    inc e
    cp e
    ld d, [hl]
    ld b, [hl]
    ld b, [hl]
    ld [hl], d
    ld h, c
    ld l, b
    and h
    ld l, b
    reti


    ld c, b
    ld a, d
    ldh [$b2], a
    ld l, b
    ld l, d
    add hl, bc
    ld h, e
    inc b
    ld [hl], l
    ld d, h
    sub $5b
    ld l, e
    ld [hl], l
    ld d, d
    dec hl
    ld b, $8c
    sub b
    db $76
    xor d
    ld a, [$f74c]
    ret z

    and d
    inc h
    ld a, [de]
    adc l
    ld de, $4541
    ld l, c
    ld h, e
    and c
    jr c, jr_00b_79af

Jump_00b_799c:
    ld a, [bc]
    ld e, d
    ld [hl-], a
    ld e, d
    rrca
    push bc
    ld d, d
    ld de, $4453
    push bc
    adc l
    ld h, b
    ld e, c
    ld b, a
    ret nc

    or [hl]
    ld l, $4c

jr_00b_79af:
    inc hl
    inc d
    db $dd
    ld a, [bc]
    sub l
    ld d, b
    ld b, c
    add c
    ld sp, $16a4
    jr nc, @+$65

    add [hl]
    sub h
    dec l

jr_00b_79bf:
    or l
    ld b, $33

jr_00b_79c2:
    ld e, b
    add l
    dec b
    ld h, e
    sbc a
    ld h, d
    ld d, h
    ld d, [hl]
    ld d, l
    dec e
    add hl, bc
    jr jr_00b_79f7

    jp hl


    ld d, e
    sub d
    and c
    add [hl]
    ld c, $54
    db $ec
    and c
    ld d, e

jr_00b_79d9:
    ld [$6468], sp
    ld [hl+], a
    xor d
    ld c, [hl]
    ld [$6812], sp
    call Call_00b_5049
    ld a, d
    ld b, c
    ld c, d
    sub e
    ld d, l
    xor l
    ld a, [bc]
    ld [hl+], a
    adc c
    ld d, e
    ld e, $30
    xor c
    ld d, b
    and h
    reti


    ld b, d
    rst $10

jr_00b_79f7:
    adc b
    ld a, e
    ld h, d
    xor b
    sbc d
    ld sp, $9a93
    ld hl, $6de2
    ld c, d
    ld e, [hl]
    inc [hl]
    ld c, l
    xor b
    adc e
    ld b, [hl]
    adc b
    sub d
    dec hl
    rst $30
    and e
    db $76
    ld c, h
    dec d
    ld c, b
    ld e, d
    add sp, $5d
    dec sp
    ld l, b
    push bc
    ld [hl-], a
    or a
    db $e3
    jp z, $dfbf

    ld [$693c], a
    db $e3
    jr nz, jr_00b_79c2

    ld h, d
    ld b, e
    sub c
    rst $00
    ld d, d
    ld e, d
    ld d, d
    ld c, $34
    ld e, e
    dec e
    ld [$a145], sp
    inc b
    add h
    ld h, [hl]
    cp h
    ld [hl], d
    inc h
    and d
    sub l
    ld d, $96
    cp a
    pop af
    ld c, b
    inc h
    jr nz, jr_00b_79d9

    inc de
    ld [de], a
    adc e
    db $10
    add d
    ld b, a
    rst $38
    rst $38
    dec h
    ld b, h
    and c
    ld h, c
    ld c, d
    inc l
    ld b, h
    ld h, b
    add sp, -$50
    ld a, [hl+]
    rst $38
    db $fc
    or $0c
    dec sp
    ld b, e
    sub [hl]
    push bc
    ret z

    pop bc
    inc bc
    cp $8d
    ei
    ld d, e
    rst $08
    jp nz, $0fb1

    inc b
    inc [hl]
    ld h, a
    db $10
    ei
    rst $18
    adc l
    cp $de
    ld [c], a
    pop de
    cpl
    sbc h
    ld d, b
    inc sp
    pop bc
    cpl
    xor c
    scf
    add sp, -$54
    ld d, e
    ld hl, sp-$5c
    and [hl]
    ret nc

    scf
    ei
    adc $a4
    jr z, jr_00b_7ad9

    ld l, a
    ld hl, sp+$3b
    inc de
    ld l, $68
    rst $28
    rst $38
    rst $38
    cp a
    add $0f
    cp $38
    ld a, a
    rst $38
    ld b, [hl]
    rst $18
    rst $38
    rst $38
    ld hl, sp+$79
    ld l, a
    rst $38
    add e
    ld hl, sp+$5d
    ld a, [de]
    and c
    ld a, [bc]
    rst $38
    rst $18
    db $fc
    di
    cp a
    rst $38
    ld hl, sp-$01
    rst $20
    inc b
    add h
    rla
    ldh a, [$7e]
    ldh a, [$7b]
    dec b
    rst $38
    rst $38
    inc de
    ld a, l
    dec de
    jp z, Jump_000_1c12

    rrca
    ret nz

    and b
    push bc
    ld d, a
    db $f4
    ld a, [de]
    ld b, d
    ld [hl], d
    ret nz

    set 5, [hl]
    cp [hl]
    add hl, bc
    ld l, a
    and h
    ld a, [hl+]
    ld sp, $07d3
    db $fd
    rst $38
    ld a, [$5fe3]
    and c

jr_00b_7ad9:
    ld a, d
    ld [hl], h
    or c
    rla
    cp a
    add a
    rst $38
    add l
    rst $28
    add sp, $57
    ld a, [bc]
    sbc l
    ld l, a
    rst $38
    rst $38
    pop hl
    rst $38
    ld b, e
    ld h, $32
    ld [hl], b
    ld c, c
    ld c, b
    jp nc, $ff17

    rst $38
    ret


    ld d, b
    xor c
    ld [hl-], a
    sbc d
    ld sp, $2949
    ld c, h
    inc [hl]
    ld b, e
    inc d
    sub e
    ld b, b
    and c
    ld h, $cc
    ld b, d
    ld h, l
    ret


    ld [hl], c
    ld sp, $709e
    inc h
    and [hl]
    add hl, hl
    ld c, c
    res 3, e
    ld b, h
    ret nz

    adc d
    ld b, e
    ld b, l
    ld b, h
    ld b, a
    inc c
    sbc b
    jp $c410


    ld b, b
    or b
    ld b, a
    adc a
    ld h, $2d
    rst $00
    sbc e
    rla
    ld e, $48
    ld b, h
    cp d
    dec de
    dec sp
    jr @+$3a

    db $eb

jr_00b_7b31:
    ld c, b
    and e
    and l
    pop de
    adc [hl]
    and l
    ld [hl+], a
    dec sp
    reti


    ld d, e
    adc c
    rst $38
    call nc, $4c89
    ld e, a
    call nc, $2e5e
    call nc, $c618
    ret nc

    xor [hl]
    adc h
    and $14
    jp z, $e0d4

    add l
    inc [hl]
    and d
    inc de
    ld b, h
    ldh [$57], a
    ret z

    ld d, l
    ld d, b
    ld b, l
    adc h
    sbc a
    and c
    or [hl]
    ld l, h
    adc b
    jr jr_00b_7b31

    push de
    ld [hl], d
    dec hl
    push de
    ld l, b
    jp c, Jump_000_3daa

    sbc c
    db $ec
    rst $00
    ld a, e
    rst $00
    ld l, [hl]
    ld a, [de]
    db $76
    cp [hl]
    sbc l
    or d
    rst $00
    ld d, d
    ld a, [$5da7]
    ld a, a
    sbc l
    sbc d
    add hl, bc
    or d
    sbc d
    rst $38
    and a
    ld c, d
    rst $38
    ld a, [$a172]
    ld d, a
    db $fc
    ld [hl], d
    or b
    inc a
    inc a
    ld [hl], c
    inc [hl]
    ld h, e
    rra
    inc e
    ld h, [hl]
    cp c
    inc d
    dec sp
    rst $38
    dec b
    ld c, a
    dec b
    call c, Call_00b_4855
    xor e
    call nc, $2ef0
    db $eb
    sub l
    ld h, $b9
    ld hl, $97e2
    cp a
    ld d, l
    ld [hl+], a
    push af
    ld [$bfea], a
    call nc, $2126
    ld h, d
    ld a, [hl+]
    ld c, c
    xor d
    push af
    ld a, [de]
    ld e, h
    ld a, a
    ld c, c
    xor e
    ld c, $4c
    ld l, $ae
    and h
    ld d, [hl]
    or h
    rla
    ld l, e
    and h
    ld d, h
    dec hl
    db $dd
    ld b, $4a
    ld d, b
    ld c, b
    ld b, d
    ld a, [de]
    ld l, d
    sub [hl]
    ld a, [$a615]
    ld d, a
    ld d, h
    ret


    ld hl, $ba08
    pop hl
    ld c, h
    ld a, [$58a9]
    or l
    xor d
    add hl, de
    ld d, d
    ld h, b
    ld a, d
    ld a, l
    ld a, [bc]
    ld a, [bc]
    jr nc, @-$70

    ld e, d
    xor l
    ld a, [de]
    ld [$9460], sp
    db $e3
    ld b, c
    add hl, sp
    ld l, b
    dec d
    sbc c
    ld d, h
    push de
    pop bc
    inc sp
    ld d, l
    dec l
    rlca
    ld a, [c]
    inc a
    inc a
    sub $52
    sub l
    add d
    bit 6, b
    jp hl


    sub [hl]

Jump_00b_7c08:
    and e
    ld c, d
    dec b
    inc b
    ld a, [hl+]
    ld [hl-], a
    sub b
    ld d, b
    ld d, e
    call nz, Call_00b_6578
    add c
    ld b, e
    ld [$8d86], sp
    inc h
    ld [de], a
    add hl, de
    ld hl, $6192
    and c
    add [hl]
    sbc h
    jr nz, @-$72

    xor b
    add h
    ld d, c
    xor c
    ld c, l

Jump_00b_7c29:
    db $10
    ld c, c
    ld a, d
    ld [$8ac2], sp
    and b
    ld d, [hl]
    db $db
    dec b
    adc c
    ld e, [hl]
    ldh a, [$c6]
    ld e, b
    ld [hl+], a
    push de
    ld d, h
    ld a, $05
    sub b
    add sp, $15
    cp $81
    adc b
    ld h, c
    ld e, d
    adc e
    xor d
    add d
    db $eb
    ldh [rIE], a
    ld [$7a21], a
    add d
    ld h, $ae
    inc [hl]
    and d
    ld d, [hl]
    ld hl, $5f43
    and e
    dec sp
    ld c, l
    xor l
    ld b, d
    ld a, a
    jp $8ffe


    ld b, $81
    rst $38
    ld a, [$2e3e]
    ld [hl], d
    ld hl, $3449
    add hl, hl
    pop hl
    ld d, d
    ld b, d
    ld a, [hl+]
    xor d
    ldh [$98], a
    and a
    ld c, e
    db $fd
    ld d, l
    ld e, a
    xor $4e
    ld de, $2368
    ld h, $8c
    sbc d
    rst $10
    db $10
    add h
    ld b, [hl]
    add e
    jr jr_00b_7cc6

    sub a

jr_00b_7c87:
    inc b
    sbc e
    ld b, d
    sbc b
    call nc, $0912
    or e
    db $f4
    ld b, d
    ld b, l
    db $10
    ret z

    ld h, l
    and d
    pop bc
    ld c, $60
    call nc, Call_000_195a
    dec e
    ld b, e
    ld h, $3b
    inc de
    sub l
    ld de, $a118

jr_00b_7ca5:
    sbc b
    inc hl
    ld d, $82
    ld h, c
    ld [bc], a
    sub c
    or [hl]
    adc h
    add h
    and a
    inc l
    sbc c
    or a
    ld l, l
    inc b
    ld d, h
    ld [hl], d
    ld hl, $b099
    ld sp, hl
    jr nc, jr_00b_7c87

    dec l
    ld [bc], a
    sbc c
    or h
    add hl, bc
    add d
    cp $f0
    ld h, h

jr_00b_7cc6:
    jr nz, @-$02

    jr @+$54

    pop de
    adc d
    xor [hl]
    xor a
    rst $38
    ld d, l
    ld h, b
    db $e3
    adc h
    ld a, [hl+]
    inc d
    ld l, a
    rst $38
    ld e, h
    ld h, b
    sub c
    pop hl
    and e
    add hl, hl
    res 0, d
    jr nc, @+$67

    or e
    ld b, e
    inc de
    push hl
    ld sp, $cca5
    add d
    jr nc, jr_00b_7ca5

    add hl, bc
    sub a
    ld b, $28
    inc l
    ld h, l
    ld [de], a
    pop bc
    rst $38
    db $fc
    cp $61
    ld b, h
    cp l
    inc bc
    jr jr_00b_7d40

    ccf
    rst $38
    ld d, d
    db $f4
    ld h, b
    sub e
    ld a, d
    ld b, l
    add h
    ld h, c
    push de
    ld d, d
    dec hl
    pop af

Call_00b_7d0a:
    ld a, [hl+]
    ld de, $0c29
    ld d, h
    sbc h
    inc [hl]
    ld a, [hl+]
    ld sp, $466b
    ld l, h
    ld sp, $12c7
    xor [hl]
    ld de, $e7c0
    dec b
    ld hl, $f4ff
    ld a, c
    ld de, $60f2
    ld a, [$d05a]
    and $7f
    cp $0a
    ret z

    ld hl, $7d38
    jr nc, jr_00b_7d35

    ld hl, $7d3d

jr_00b_7d35:
    jp Jump_000_3c36


    rla
    rlca
    ld a, e
    daa
    ld d, b
    rla
    dec e
    ld a, e

jr_00b_7d40:
    daa
    ld d, b
    ld a, [$cf91]
    ld hl, $d172
    ld bc, $002c
    call Call_000_3a74
    ld a, [$d0df]
    ld b, a
    ld c, $04

jr_00b_7d54:
    ld a, [hl+]
    cp b
    jr z, jr_00b_7d5d

    dec c
    jr nz, jr_00b_7d54

    and a
    ret


jr_00b_7d5d:
    ld hl, $7d65
    call Call_000_3c36
    scf
    ret


    rla
    or $6e
    dec l
    ld d, b
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    ret nc

    ld a, $03
    ld [$d430], a
    ret


    ld a, $00
    call Call_000_3e99
    call Call_00b_7d85
    call Call_000_3ea9
    ret


Call_00b_7d85:
    ld de, $a203
    ld hl, $a187
    call Call_00b_7dc2
    call Call_00b_7d9a
    ld de, $a38b
    ld hl, $a30f
    call Call_00b_7dc2

Call_00b_7d9a:
    ld b, $03

jr_00b_7d9c:
    ld c, $1c

jr_00b_7d9e:
    push bc
    ld a, [de]
    ld bc, $ffc9
    call Call_00b_7ddc
    ld a, [de]
    dec de
    swap a
    ld bc, $0037
    call Call_00b_7ddc
    pop bc
    dec c
    jr nz, jr_00b_7d9e

    dec de
    dec de
    dec de
    dec de
    ld a, b
    ld bc, $ffc8
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_00b_7d9c

    ret


Call_00b_7dc2:
    ld a, $1c
    ldh [$8b], a
    ld bc, $ffff

jr_00b_7dc9:
    ld a, [de]
    dec de
    swap a
    call Call_00b_7ddc
    ldh a, [$8b]
    dec a
    ldh [$8b], a
    jr nz, jr_00b_7dc9

    dec de
    dec de
    dec de
    dec de
    ret


Call_00b_7ddc:
    push hl
    and $0f
    ld hl, $7ded
    add l
    ld l, a
    jr nc, jr_00b_7de7

    inc h

jr_00b_7de7:
    ld a, [hl]
    pop hl
    ld [hl-], a
    ld [hl], a
    add hl, bc
    ret


    nop
    inc bc
    inc c
    rrca
    jr nc, jr_00b_7e26

    inc a
    ccf
    ret nz

    jp $cfcc


    ldh a, [$f3]
    db $fc
    rst $38
    ld a, [$c102]
    and $08
    jr z, jr_00b_7e22

    ld b, $45
    ld a, $1c
    call Call_000_3eb4
    ld a, b
    and a
    ld b, $35
    jr z, jr_00b_7e1a

    ld hl, $d5a3
    ld a, [hl+]
    or [hl]
    jr nz, jr_00b_7e22

    ld b, $34

jr_00b_7e1a:
    call Call_000_3c29
    ld a, b
    call Call_000_3f3a
    xor a

jr_00b_7e22:
    ld [$cd3d], a
    ret


jr_00b_7e26:
    rla
    inc c
    ld l, d
    daa
    ld d, b
    rla
    ld h, $6a
    daa
    ld d, b
    nop
    nop
    nop
    nop
    nop

Jump_00b_7e35:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00b_7e76:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00b_7f3b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
