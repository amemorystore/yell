;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    ld [hl], a
    cp [hl]
    dec h
    ld a, e
    dec a
    daa
    cp [hl]
    inc a
    push bc
    xor c
    rst $20
    adc a
    ld [hl], $0c
    ld e, b
    dec l
    ld e, [hl]
    or e
    rst $00
    adc d
    xor b
    ccf
    ld a, d
    dec sp
    dec e
    jr nc, jr_00c_406f

    xor b
    sbc a
    inc a
    inc e
    ld e, [hl]
    rlca
    cp c
    ld h, $29
    push af
    dec sp
    cp $0a
    inc b
    inc d
    ld [de], a
    ld e, d
    cp l
    db $ed
    dec b
    ld d, e
    sbc [hl]
    ld b, c
    add c
    ldh [rSTAT], a
    ld a, [bc]
    and d
    ld [$260a], a
    and h
    reti


    ld [hl], a
    inc b
    adc b
    inc [hl]
    ld d, d
    dec d
    ld d, d
    and b
    sbc h
    add $a9
    ld d, l
    ld a, a
    and l
    and l
    ld b, l
    ld a, c
    ld b, c
    add l
    ld e, d
    ld b, d
    ld a, [hl-]
    cpl
    ld sp, hl
    add $26
    ld h, a
    ret


    sub h
    add h
    add l
    ld d, e
    ld h, l
    xor b
    cp d
    ld [hl], d
    sbc l
    ld [hl], e
    ld d, $a5
    or $35
    adc l
    add sp, $1a
    push af
    adc e
    ld b, d
    ld d, l
    ld d, a
    db $fc

jr_00c_406f:
    adc $54
    call $a022
    add d
    sub d
    dec e
    ld d, $39
    rst $18
    ld d, d
    xor [hl]
    ld [hl+], a
    ld b, d
    and c
    ld d, b

jr_00c_4080:
    add l
    add [hl]
    ld b, c
    jr c, jr_00c_409a

    rst $30
    cp l
    ld d, b
    adc d
    sub b
    ld b, l
    ld e, d
    and d
    ld e, [hl]
    inc c
    db $dd
    ld c, b
    xor a
    ld l, c
    adc d
    ld h, b
    ld b, [hl]
    ld [hl+], a
    sub b
    ld e, a
    sub a

jr_00c_409a:
    ld c, [hl]
    ld a, [de]
    ld c, c
    cp d
    ld b, c
    ld c, b
    ld h, h
    and h
    adc b
    ld e, a
    and c
    xor d
    and e
    ld l, l
    dec h
    add hl, de
    ld d, d
    ld [hl+], a
    and d
    add sp, -$15
    and e
    jr jr_00c_4080

    adc c
    ld c, [hl]
    ld h, $2d
    ld [$9428], sp
    dec e
    ld h, $76
    adc c
    ld c, [hl]
    jr z, jr_00c_4112

    ld d, b
    add c
    ld d, d
    inc l

jr_00c_40c4:
    ld h, e
    daa
    dec b
    adc [hl]
    sbc d
    ld [hl+], a
    inc b
    cp b
    add $90
    db $e3
    sub c
    inc b
    add h
    ld [de], a
    sub h
    pop hl
    ld e, b
    rst $20
    ld b, c
    dec d
    inc b
    rst $20
    adc [hl]
    xor c
    ld hl, sp+$26
    ld d, a
    adc [hl]
    ld [$eaf0], sp
    adc l
    ld h, a
    call nz, $b1a1
    ld [$e731], a
    ld hl, $b1b8
    add sp, $23
    rst $28
    ld [hl+], a
    rst $30
    ld e, $3d
    rst $38
    ld l, e
    ld d, a
    dec e
    add sp, $26
    ld [$e12f], sp

Jump_00c_40ff:
    ld a, a
    ld [bc], a
    ld a, b
    add hl, hl
    jr nc, jr_00c_40c4

    ld hl, $fbe0
    ld a, e
    add d
    db $76
    db $eb
    db $ed
    db $fd
    db $e3
    sub $55
    ld a, [hl]

jr_00c_4112:
    add d
    add hl, hl
    call Call_000_03ff
    ld de, $b5d1
    rst $28
    cp $a7
    inc bc
    cp a
    sub h
    and c
    sub d
    sub b
    sub h
    db $fd
    ccf
    rst $38
    add sp, $40
    sub b
    rst $28
    db $fd
    cp $8d
    ld a, d
    ld b, e
    db $dd
    cp d
    rla
    rst $38
    rst $38
    rst $38
    inc de
    rst $38
    ld [hl], b
    pop bc
    cpl
    dec d
    ld [hl], a
    rst $18
    and e
    add sp, $2a
    cp a
    rst $38
    and [hl]
    ld sp, $4ab2
    ld a, [de]
    xor a
    xor a
    cp b
    ld d, b
    db $fd

Call_00c_414d:
    ld a, a
    cp $9c
    call z, $5415
    rst $38
    ld e, e
    call nc, $bf60
    pop af
    ld l, c
    rst $00
    and h
    ld a, h
    ld b, a
    ret nz

    rst $38
    rst $38
    rst $38
    push bc
    ld a, a
    xor c
    add h
    ld de, $1f12
    ld de, $4575
    ld e, a
    rst $38
    ld [$9542], a
    db $76
    add sp, -$47
    ld e, a
    ld h, h
    and [hl]
    ld e, a
    rst $38
    rst $38
    db $fc
    xor $09
    ld d, b
    ld e, a
    ld sp, hl
    scf
    ldh a, [$3f]
    cp c
    dec bc
    db $fd
    dec b
    ld d, l
    ld c, a
    ld a, e
    ld a, e
    sbc b
    rst $38
    sub l
    ld h, b
    db $fd
    rst $38
    db $fd
    ld a, [de]
    ei
    ld a, [hl]
    rst $18
    and l
    ld b, c
    sbc $93

jr_00c_419a:
    inc a
    cpl
    db $fc
    ld [hl], b
    ld a, [hl]
    rst $38
    db $ed
    ld a, [$1456]
    ld d, e
    db $dd
    rst $38
    pop af
    pop bc
    rst $38
    ld a, a
    ei
    db $fc
    ld b, d
    ld c, h
    ld d, h
    add l
    add a
    rst $20
    rla
    rst $38
    ld a, a
    ei
    pop af
    ld c, c
    sub d
    db $10
    ld h, c
    inc e
    ld a, a
    ld hl, sp+$7f
    rst $38
    inc e
    inc sp
    ld sp, $7fcb
    ei
    rst $38
    ld a, [$d170]
    db $d3
    ld a, a
    dec b
    rst $38
    jp hl


    ret nz

    sbc l
    sub b
    ld b, h
    push af
    sbc a
    ld a, [bc]
    ld b, h
    and a
    db $e4
    pop bc
    ld d, l
    dec l
    ret


    ld d, h
    adc c
    and h
    ld a, [de]
    ld a, [hl+]
    ld d, l
    add d
    ld h, $ae
    ld b, l
    ld b, d
    ld d, d
    rst $18
    db $fc
    ret


    add hl, de
    db $76
    jr jr_00c_419a

    rrca
    ld sp, $517a
    ld c, b
    ld h, d
    ldh [rIE], a
    ld l, $0f
    xor l
    dec c
    adc h
    or l
    ld d, h
    jp z, $e682

    xor c
    dec h
    rst $38
    and e
    dec b
    and d
    ld [hl+], a
    ld [c], a
    cpl
    ld b, d
    ld c, e
    sub [hl]
    sub c
    sub e
    ld h, $f8
    add $2f
    ld d, d
    sub d
    add sp, -$22
    ld h, l
    sub [hl]
    ld hl, $a439
    ld d, d
    ld e, l
    add hl, sp
    add sp, $2a
    ld [hl], a
    push af
    ld a, [hl-]
    db $eb
    add sp, -$08

jr_00c_4229:
    ld a, c
    jr nc, jr_00c_4295

    add d
    ld b, d
    ld l, d
    add d
    ld b, h
    or d
    inc c
    or d
    ld sp, $5c5e
    ret


    ld d, d
    and l
    ld hl, $1954
    ld l, a
    inc b
    xor h
    rla
    db $e4
    ld b, b
    sub e
    ld h, l
    ld [hl], b
    jp $ff7b


    ld de, $4a02
    ld c, h

Call_00c_424d:
    inc d
    or e
    dec a

jr_00c_4250:
    ld a, [hl+]
    sub l
    inc h
    ld b, [hl]
    ld [hl], b
    ld e, e
    rst $38
    ld a, [$4a3c]
    ld h, b
    pop de
    rrca
    dec b
    rst $38
    db $e3
    ld h, $78
    ld b, e
    inc bc
    ld l, a
    rst $38
    pop hl
    adc h
    sbc b

Call_00c_4269:
    push bc
    inc a
    rst $38

jr_00c_426c:
    rst $38
    sbc h
    rst $30
    rst $10
    db $fd
    dec e
    ld de, $7814
    jr nc, jr_00c_4297

    ldh [$9d], a
    or c
    pop af
    ld b, b
    ld [hl], a
    cp h
    ld h, l
    xor c
    dec a
    jr z, @-$45

    ld a, [hl-]
    ld e, d
    sub e
    add c
    ld h, e
    jr z, jr_00c_426c

    ld d, l
    ld h, d
    and h
    sub h
    sub l
    ld [$4dda], sp
    ld e, d
    ld [hl], $90

jr_00c_4295:
    xor l
    ld a, b

jr_00c_4297:
    db $e3
    sub l
    jr nc, jr_00c_4229

    ld a, [hl-]
    ld d, $21
    ld d, e
    adc [hl]
    ld c, b
    ld h, b
    ld d, h
    push bc
    ld b, c
    ld b, l
    jr nc, jr_00c_4308

    ld c, [hl]
    ld [hl], h
    ld h, c
    ld c, h
    ld [hl+], a
    jr nz, jr_00c_4250

    ld c, h
    inc de
    sub l
    add hl, hl
    ld h, d
    rst $10
    push af
    ld [$f011], sp
    ld c, [hl]
    db $76
    jr c, jr_00c_42dc

    xor b
    inc [hl]
    ld e, $81
    ld h, $4d
    ld d, $a8
    and h
    call $ae76
    rlca
    jp nz, Jump_00c_7df0

jr_00c_42cd:
    add hl, bc
    ld d, d
    ld a, $8d
    ld d, e
    dec b
    rla
    db $f4
    db $10
    ld c, b
    db $f4
    cpl
    and d
    ld l, d
    sbc c

jr_00c_42dc:
    ld c, l
    ld h, l
    ld d, [hl]
    ld [hl+], a
    pop af
    adc l
    ld d, h
    res 2, [hl]
    add hl, sp
    ld e, [hl]
    and e
    dec b
    db $fd
    dec bc
    db $e3

jr_00c_42ec:
    ld a, [hl+]
    ld c, [hl]
    ld b, a
    adc l
    jr z, jr_00c_4310

    inc b
    ld e, b
    jp nz, $e398

    or l
    add hl, hl
    dec l
    rst $28
    ld a, [de]
    ld [hl-], a
    sbc c
    jr c, jr_00c_42ec

    scf
    xor $2a
    ret z

    and e
    ld h, a
    ld d, l
    ld c, [hl]

jr_00c_4308:
    ld a, [bc]
    and a
    sbc c
    ld [hl+], a
    xor a
    ld [$55c9], sp

jr_00c_4310:
    ld a, [bc]
    ld h, $55
    ld c, l
    ld d, h
    ld [hl+], a
    ld sp, $098e
    ld b, a
    adc l
    inc hl
    ld [hl], l
    ld h, a
    dec h
    ld d, [hl]
    xor d
    ld d, l
    rla
    scf
    call $fa1f
    adc b
    ld h, e
    ld l, d
    ld [hl-], a
    ld c, e
    ld c, [hl]
    dec b
    add l
    adc [hl]
    ld a, $a4
    sbc d
    ld d, [hl]
    jr c, jr_00c_42cd

    adc $5f
    rst $10
    ld h, e
    and d
    and e
    xor d
    and e
    jp nz, Jump_00c_5355

jr_00c_4341:
    ld [hl], $3c
    ld c, b
    ld d, d
    xor d
    ld c, b
    xor b
    pop af
    db $e4
    inc h
    or h
    jr jr_00c_4341

    dec h
    xor d

jr_00c_4350:
    or $39
    rst $30
    sub b
    xor c
    ld [$1251], a
    ld [hl], l
    jp z, $a370

    sbc b

jr_00c_435d:
    ld b, a
    ld a, [de]
    ld c, e
    ld de, $8826
    ld h, c
    ld d, [hl]
    sub a
    ld h, $eb
    and c
    ld d, c
    ld [hl], d
    inc l
    add d
    ret nc

    and h
    add $32
    add hl, hl
    add a
    ld a, [bc]
    jp c, Jump_00c_4410

    add hl, hl
    ld [$b244], sp
    sbc e
    ret nc

    add hl, hl
    dec bc
    ld de, $3f51
    ld e, d

Jump_00c_4383:
    ld [hl-], a
    inc de
    ld c, h
    dec hl
    daa
    inc c
    ld l, $64
    add e
    db $10
    add l
    pop bc
    inc h
    db $d3
    dec b
    ld [hl], l
    ld d, d
    sbc b
    jr c, jr_00c_435d

    ld d, $ae
    xor e
    inc bc
    adc l
    ld a, [$5242]
    ld e, l
    ld a, [hl+]
    ld de, $d29b
    add hl, bc
    ld a, [hl]
    jr jr_00c_4350

    ld b, h
    ld e, d
    ld b, [hl]
    sub d
    add [hl]
    ld b, h
    ld d, [hl]
    sbc b
    and c
    call nz, $0b32
    dec c
    and b
    pop bc
    inc bc
    ld a, b

jr_00c_43b9:
    jr z, @-$38

    cp d
    ld b, l
    ld [hl], $2c
    ld a, [de]
    jr jr_00c_440e

    jr @+$77

    or $0c
    ld d, h
    and [hl]
    db $ed
    ld e, c
    dec sp

Call_00c_43cb:
jr_00c_43cb:
    inc c
    ld l, d
    and h
    ld c, c
    ld c, l
    inc e
    db $ed
    or h
    ld d, d
    jr jr_00c_443a

    ld d, b
    inc h
    ld c, c
    ld [de], a
    ld [hl], e
    dec a
    add hl, de
    ld b, h
    ccf
    ld [bc], a
    push bc
    ld hl, $c8d1
    ld [$982a], a
    cp h
    ld [$ab44], sp
    ld b, e
    daa
    inc h
    add e
    inc b
    db $f4
    ld c, e
    jp nz, $a6c5

    ld [$9c22], sp
    db $10
    srl b
    inc h
    ld b, e
    add h
    ld e, d
    db $e4

Call_00c_4400:
    inc l
    jr jr_00c_4453

    add hl, hl
    add hl, bc
    xor e
    add a
    inc e
    ld l, c
    ld d, d
    jr @+$54

    ld b, l
    ret nz

jr_00c_440e:
    sbc d
    ld b, l

Jump_00c_4410:
    ld sp, hl
    add hl, hl
    add hl, de
    jr jr_00c_43b9

    xor h
    and h
    ld b, h
    ld e, a
    ld a, [de]
    ld [hl], l
    ld d, b
    inc h
    and c
    ld d, l
    inc hl
    inc c
    pop hl
    ld b, h
    ld c, d
    add hl, hl
    ld c, $70
    ld [hl-], a
    or e
    jr jr_00c_43cb

    call nz, $8649
    db $10
    inc [hl]
    ld [hl], c
    ld l, h
    pop de
    and h
    add hl, bc
    inc de
    ret z

    ld hl, $4447

jr_00c_443a:
    ld de, $8bc0
    ld c, $30
    ld b, a
    ld a, d
    ld l, l
    inc b
    add l
    ld e, $24
    sbc e
    inc hl
    ld e, $44

Call_00c_444a:
    sbc c
    inc [hl]
    ld a, c
    or d
    ld a, [bc]
    inc c
    sbc l
    nop
    ld b, h

jr_00c_4453:
    cp c
    ld e, h
    ld e, l
    jr c, @+$19

    rst $38
    cp [hl]
    ld e, $64
    call $8a5a
    adc h
    ld l, $31
    ld [hl], d
    sbc a
    add hl, sp
    xor b
    add a
    db $e3
    and d
    ldh [rSCY], a
    db $d3
    xor d
    adc a
    ld de, $ebfc
    ld a, d
    dec sp
    ld l, l
    ld c, [hl]
    ld a, [$4de3]
    adc $2a
    ld d, c
    ld d, b
    db $e4
    inc a
    ld [c], a
    xor c
    pop hl
    ld b, d
    xor b
    db $e3
    or l
    add c
    sbc a
    db $e3
    sbc d
    xor b
    di
    and [hl]
    add hl, hl
    ld l, b
    ld b, h
    ld c, b
    ld [hl-], a
    ld [hl], b
    or c
    cpl
    ld b, c
    ld c, $e6
    ret c

    ld l, $31
    sbc h
    ld h, a
    sub c
    ld b, c
    rst $00
    inc sp
    ldh a, [$af]
    dec de
    ld h, $54
    ld b, e
    and $e9
    and d
    rst $00

Jump_00c_44aa:
    ld [de], a
    ld h, l
    ld de, $4658
    ret


    rst $18
    ld h, a
    ld [bc], a
    sbc b
    and b
    add e
    and $c9
    ld d, $cc
    rst $28
    rst $38
    sbc c
    and [hl]
    scf
    rst $38
    db $ed
    rst $00
    ld [hl-], a
    sub c
    cp $29
    ret


    ld d, c
    pop af
    ldh [rPCM34], a
    cp [hl]
    ld h, [hl]
    ld d, c
    ld e, d
    ld c, a
    add hl, sp
    ld [hl+], a
    adc d
    sub e
    res 1, l
    sub e
    jp Jump_00c_5455


    ldh [$94], a
    ld [$fa5f], a
    xor d
    xor c

Jump_00c_44e1:
    ld c, l
    db $e4
    and $7a
    push de
    ld d, c
    ld d, d
    and e
    ld a, b
    push hl
    and d
    ld h, h
    jr z, jr_00c_4517

    ld [hl+], a
    and e
    ld e, b
    push hl
    and e
    ld [$f498], sp
    sbc h
    push af
    ld e, h
    dec h
    push hl
    adc c
    ld h, e
    ld e, b
    db $eb
    add d
    xor b
    and [hl]
    and l
    ld d, l
    ld d, h
    jp hl


    ld e, [hl]
    sub l
    ld sp, $a95d
    ld sp, $4d4a
    rst $18
    xor d
    ld c, b
    xor d
    xor d

jr_00c_4514:
    ld h, d
    xor h
    ld d, h

jr_00c_4517:
    adc $34
    ld a, b
    ld [hl], h
    adc d
    ld d, d
    db $d3
    cpl
    ld d, a
    sub h
    pop hl
    ld d, d
    xor l
    ld h, b
    ld [hl], b
    db $d3
    adc l
    jr jr_00c_4514

    xor b
    ld d, d
    inc hl
    ld h, h
    ld a, [c]
    sub e
    ld b, l
    add sp, -$12
    ld d, [hl]
    inc b
    ld d, h
    adc c
    ld c, c
    ld d, e
    add d
    inc sp
    and d
    xor d
    and c
    ld hl, sp-$3e
    xor b
    xor $ba
    ld e, l
    ld e, d
    adc [hl]
    db $f4
    sbc $53
    add $4e
    ld a, [hl-]
    sub l
    ld d, l
    ld d, e
    and [hl]
    inc a
    inc b
    add sp, $4f
    ld b, $53
    sub l
    inc a
    ld b, h
    or l
    ld c, c
    ld e, d
    and e
    add $92
    ld [de], a
    ld a, [hl+]
    adc a
    ld a, [hl-]
    ld h, e
    and e
    ld a, h
    rst $08
    ld a, [hl+]
    jp c, $a39e

    jp $9747


    ld [$6c29], a
    ld a, b
    ld l, c
    adc h
    dec d
    inc b
    and c
    ld e, a
    ld c, c
    call nc, $05cb
    ld d, l
    ld d, l
    ld hl, $0c0b
    sub e
    inc e
    db $ec
    jr jr_00c_45b0

    ld c, d
    ld e, h
    ld hl, sp+$2c
    xor c
    add hl, sp
    ret z

    push bc
    dec hl
    add e
    ret


    sub e
    ld a, [hl-]
    ld d, h
    ld [hl], d
    ld h, a
    ld b, h
    dec hl
    call nz, $84c7
    adc d
    ld h, c
    ld de, $9d16
    cp l
    ld h, e
    and $09
    ld [hl-], a
    sub $73
    and [hl]
    inc [hl]
    ld h, b
    cp a
    xor d
    xor d
    inc c
    ld b, h
    ld [hl], c

jr_00c_45b0:
    ld hl, $c846
    ld [hl], h
    add hl, bc
    adc d
    sub h
    sbc e
    inc l
    dec d
    ld h, b
    sbc b

jr_00c_45bc:
    cp h
    ld d, l
    xor d
    sub h
    sbc h
    ld c, c
    add hl, hl
    jr nc, jr_00c_463f

    xor e
    add hl, de
    ld c, e
    inc bc
    xor b
    ld c, c
    or e
    dec d
    ld a, l
    adc e
    ld a, [c]
    ld [hl], b
    pop de
    ld c, h
    sbc d
    ld b, [hl]
    ld d, b
    pop de
    ld sp, $8cca
    sbc [hl]

Jump_00c_45db:
    ld e, l
    ld e, l
    pop af
    call nz, $d698

jr_00c_45e1:
    ld a, [bc]
    and h
    ld c, c
    add e
    call nc, $9968
    ret


    ld d, b
    ld d, c
    inc d
    ld d, l
    and h
    pop af
    sub e
    and a
    inc c
    sub c
    inc e
    dec d
    ld a, [hl+]
    sbc b
    and a
    inc sp
    ld [bc], a
    ld l, a
    ld b, h
    ld l, b
    ld e, a
    ld a, l
    rla
    inc e
    ld d, b
    ld c, l
    ld d, l
    ld d, l
    ld d, e
    ld d, b
    ld b, [hl]
    ld a, [hl+]
    jr jr_00c_45bc

    rst $18
    and e
    ld d, [hl]
    jr z, @-$5d

    ld l, e
    ld a, [hl+]
    ld de, $d9e0
    ld d, a
    ld d, l
    and c
    jr nc, jr_00c_45e1

    adc l
    add h
    ld d, d
    scf
    add d
    push de
    ld e, $34
    ld [$55c1], sp
    ld b, a
    sbc e
    ld l, h
    ld [hl], e
    add b
    ld b, h
    or a
    ld d, a
    rst $38
    rst $38
    add sp, -$20
    ld a, d
    adc h
    cp h
    db $dd
    db $e3
    ld d, a
    call $db94
    db $e3
    or l
    adc $04
    push bc

jr_00c_463f:
    ld e, a
    db $dd
    inc b
    call $25ea
    ld [$cc2f], a
    xor b
    add l
    rlca
    adc h
    db $fc
    ldh [$b3], a
    ld l, a
    dec sp
    cp [hl]
    dec sp
    cp h
    call Call_00c_6349
    ld b, [hl]
    dec [hl]
    or [hl]
    ret z

    sub h
    ld l, $9c
    pop hl
    xor l
    ld d, l
    ld h, b
    cp h
    db $ec
    xor d
    and b
    xor d
    adc a
    inc de
    ld l, [hl]
    add e
    ld a, [hl+]
    xor d
    xor d
    ld [hl], b
    and c
    dec e
    adc h
    sub $e7
    dec sp
    dec d
    rst $00
    ld b, h
    ld b, d
    add hl, bc
    jp nc, $c4a4

    inc hl
    rst $38
    cp $66
    adc d
    ld d, [hl]
    ld de, $cac7
    ret


    ld c, l
    ld l, c
    jp $dc0a


    ld sp, $701c
    call $b4c5
    db $76
    rst $00
    ld l, $60
    sbc l
    inc [hl]
    dec c

Jump_00c_4699:
    ld hl, $d2a2
    xor c
    pop bc
    ld b, $2c
    db $10
    ld a, l
    add d
    xor d
    sbc h
    or b
    jp $9047


    ld [hl], a
    or d
    ld d, l
    ld d, l
    ld d, l
    ld c, a
    add hl, hl
    push hl
    rst $38
    rst $38
    rst $28
    db $fd
    ld c, a
    dec e
    rst $38
    ret


    xor d
    rst $38
    db $f4
    ld a, [hl-]
    ld c, [hl]
    or [hl]
    ld a, [$4caa]
    dec hl
    cp h
    jr z, jr_00c_46e0

    dec b
    ld a, [hl-]
    inc d
    or l
    call z, $a5bf
    ei
    ld a, e
    ld d, e
    sub [hl]
    db $db
    ld a, [$56c1]
    cp l
    ld d, d
    push de
    jr jr_00c_46f2

    and $ad
    db $eb
    jp c, $98a8

jr_00c_46e0:
    ld d, [hl]
    add a
    jp nz, Jump_00c_4e50

    adc e
    dec d
    and l
    add hl, hl
    inc b
    jr nz, @-$1f

    jr jr_00c_473e

    db $f4
    add sp, -$51
    sub [hl]

jr_00c_46f2:
    ld hl, $2898
    jp $0b96


    adc [hl]
    sub [hl]
    add hl, hl
    ret c

    sbc a
    pop hl
    ld l, c
    push de
    add [hl]
    add hl, sp
    sbc b
    jp nz, Jump_00c_6936

    ld c, d
    add e
    ld c, [hl]
    ld h, $55
    ld c, [hl]
    ld e, e
    ld a, b
    inc d
    ld l, e
    ld c, l
    sbc c
    adc b
    ld a, d
    add hl, sp
    sub a
    add d
    add d
    ld [hl], $66
    ld hl, $2ce2
    ldh [rOBP1], a
    sub $85
    db $e3
    ld h, $62
    ld e, $29
    ld h, h
    ret


    ld [hl+], a
    sub d
    or a
    adc h
    ret c

    ld [hl+], a
    ld e, $34
    add c
    and d
    jr nz, jr_00c_4776

    ld h, b
    sub b
    xor d
    inc [hl]
    ld b, c
    add l
    call z, $cda8
    dec l

jr_00c_473e:
    ld b, l
    ld c, l
    sub b
    ld b, l
    ld [$5230], a
    ld d, h
    ret


    ld b, l
    ld b, l
    ld c, l
    db $10
    ld b, l
    ld c, [hl]
    add h
    ret


    ld c, [hl]
    inc b
    ld d, h
    ld l, b
    pop bc
    ld c, h
    call nc, Call_000_21aa
    ld b, d
    adc h
    and d
    inc d
    ldh a, [rHDMA4]
    add l
    dec sp
    ld d, h
    xor d
    dec h
    ld [$21b5], sp
    ld c, l
    xor b
    adc d
    jr c, jr_00c_4780

    db $76
    or h

jr_00c_476d:
    and l
    inc hl
    ld c, l
    jr nz, jr_00c_47c0

    dec b
    ld a, [$a5a8]

jr_00c_4776:
    ld a, [hl+]
    sbc h
    jp nc, $a448

    ld [de], a
    ld d, l
    rrca
    ld h, e
    ld l, e

jr_00c_4780:
    push de
    add l
    and e
    ld c, c
    ld d, d
    ld a, a
    ld [$5a8e], a
    xor b

jr_00c_478a:
    ld e, d
    scf
    xor d
    inc a
    add hl, hl
    dec b
    dec a
    ld l, d
    jr nc, jr_00c_476d

    ld h, $89
    push hl
    jr z, jr_00c_47c6

    rst $38
    db $fc
    ld [de], a
    or b
    daa
    add a
    ld [de], a
    rst $38

Call_00c_47a1:
    ld d, h
    dec a
    pop hl
    add e
    ld a, $c7
    ld h, a
    ld h, e
    ld d, h
    ld a, $2f
    ld c, h
    ccf
    rst $18
    ld h, a
    ld e, [hl]
    sbc b
    ld a, [hl+]
    dec [hl]
    rrca
    ldh [$ef], a
    add h
    ret z

    ld b, b
    sbc h
    ret nc

    ld a, $37
    rlca
    adc l

jr_00c_47c0:
    ld [de], a
    pop de
    ld l, a
    adc [hl]
    ld [hl], e
    ld b, c

jr_00c_47c6:
    rrca
    ret nz

    xor d
    xor d
    and h
    xor b
    ld [hl-], a
    ld [$2750], sp
    ld b, h
    or $15
    ld d, l
    adc d
    dec [hl]
    ld a, [$440c]
    add d
    ld [hl], h
    ret nz

    ret z

    cpl
    add e
    inc bc
    ld c, b
    ld hl, $caa0
    dec hl
    ld h, a
    ld d, [hl]
    dec e
    inc a
    or d
    xor $3d
    cp b
    call nz, $743c
    inc [hl]
    jr z, jr_00c_486f

    db $10
    xor b
    ld [hl+], a
    or d
    ld b, [hl]
    ld c, l
    inc e
    xor h
    ld b, e
    ret nc

    inc a
    dec [hl]
    add l
    ld l, a
    ret c

jr_00c_4802:
    jr nz, jr_00c_478a

    dec bc
    add hl, hl
    ret nz

    call nz, $423c
    sub c
    ld b, c
    ld b, b
    add h
    ld c, h
    add [hl]
    adc h
    ld b, [hl]
    ld l, h
    call nz, Call_00c_4a3c
    sub b
    ret nz

    and h
    ld b, e
    ld hl, $b442
    call z, $c468
    inc a
    ld e, h
    ld l, a
    ld hl, $6835
    ld d, c
    sbc e
    or c
    rrca
    jr jr_00c_4890

    pop de
    add h
    add d
    adc h

jr_00c_4830:
    ld c, h
    ld l, b
    pop de
    ld c, $64
    sbc h
    ld l, c
    ld de, $42bb
    di
    jr jr_00c_4802

    ld b, [hl]
    ld d, c
    add hl, de
    ld a, [bc]
    ld l, b
    ret nc

    or b
    and [hl]
    ld sp, $a651
    ld b, [hl]
    ld b, [hl]
    ld l, c
    ld b, d
    jp nz, Jump_00c_4699

    ld [hl], c
    add d

Jump_00c_4851:
    ld b, [hl]
    ld b, [hl]
    ld h, l
    and h
    ld b, [hl]
    or c
    ld l, c
    ld d, c
    ld [hl], d
    ld b, [hl]
    ld [hl], b
    db $e4
    and [hl]
    ld sp, $8249
    ld e, h
    sub c
    and [hl]
    ret


    add hl, hl
    adc h
    ld h, b
    xor b
    jr nc, jr_00c_4830

    ret


    ld d, $64
    and a

jr_00c_486f:
    ld a, [de]
    ld [de], a
    ld c, h
    ld d, h
    sub l
    ld hl, $76e6
    ld l, h
    xor l
    ld [hl], c
    cp h
    add d
    xor c
    add hl, bc
    and l
    ret z

    ld [hl+], a
    db $d3
    inc c
    ld [hl], d
    call nz, $1949
    cp h
    ld sp, $c8e1
    ld h, a
    xor a
    jr jr_00c_488f

jr_00c_488f:
    ld b, h

jr_00c_4890:
    or l
    ld e, a
    rst $38
    rst $38
    push af
    scf
    ld a, d
    dec [hl]
    and e
    db $e4
    inc de
    cp [hl]
    ld h, h
    rst $28
    sbc d
    ld d, e
    or [hl]
    sub [hl]
    ld d, e
    sbc l
    ld d, l
    ld b, d
    ld b, $52
    inc de
    add d
    ld e, a
    db $fc
    inc l
    ld l, d
    add hl, sp
    ld a, [hl+]
    db $f4
    adc e
    dec sp
    jr z, jr_00c_48d5

    ld d, e
    or d
    ld [hl], b
    sub e
    or [hl]
    call c, Call_00c_5df8
    and $af
    rst $18
    ld d, l
    ld d, d
    sbc h
    ld [$d445], sp
    ld a, [bc]
    sbc [hl]
    sbc h
    sbc l
    or d
    jr nc, jr_00c_48f4

    ld h, h
    and e
    dec b
    daa
    ld d, l
    dec h
    ld d, d
    ld [hl], h

jr_00c_48d5:
    jp c, $3e9d

    xor a
    or h
    and a
    dec a
    ld c, a
    inc [hl]
    rst $20
    ld h, d
    ld_long a, $ff76
    dec e
    push de
    rra
    ld a, [bc]
    ld [hl], a
    cp b
    dec d
    ld e, a
    rst $38
    push af
    ld d, e
    jp nz, $fa5f

    xor l
    ld d, l
    ld d, b

jr_00c_48f4:
    xor d
    db $fd
    ld c, [hl]
    and a
    add sp, $55
    cp $aa
    xor e
    db $fc
    sbc d
    push af
    add hl, sp
    ld a, b
    ld d, b
    ld a, [$5589]
    ld d, l
    inc [hl]
    xor a
    ld c, [hl]
    ld [$8a87], sp
    ld e, a
    ld [$8eaa], a
    dec bc
    ld c, l
    ld d, h
    add h
    sub a
    add sp, -$3b
    ld d, h
    pop hl
    or h
    rst $18
    ld d, $f5
    ld b, l
    ld e, a
    ld a, [$17a2]
    rst $38
    ld c, h
    inc d
    jp z, Jump_00c_6bd1

    ld [$0dbd], a
    jr nc, jr_00c_49ac

    adc d
    and e
    dec b
    inc sp
    cp l

Call_00c_4933:
    ld h, h
    add l
    ld [hl+], a
    ld b, d
    sub l
    ld a, b
    ret


    ld c, h
    ld d, h
    db $e4
    xor a
    ld b, l
    add hl, hl
    ld sp, $3a5e
    ld e, $31
    and c
    ld c, b

jr_00c_4947:
    ld c, d
    ld d, a
    and e
    and c
    pop hl

jr_00c_494c:
    rst $38
    call nc, Call_00c_5068
    sub l
    cp $a3
    xor c
    ld c, d
    ld d, h
    dec hl
    ld b, c
    dec b
    ld a, d
    adc a
    dec c
    ld e, [hl]
    xor a
    ld b, d
    rlca
    ld h, e
    push bc
    cp [hl]
    and d
    db $ed
    db $e3
    or [hl]

Jump_00c_4967:
    adc l
    ld e, a
    push de
    ld hl, $e54e
    dec [hl]
    and d
    ld a, a
    jp nz, $243d

    pop af
    jr c, jr_00c_4947

    db $ec
    cp b
    db $db
    push af
    ld d, l
    ld d, d
    call c, Call_00c_4cd5
    jr nz, @+$7a

    push de
    ld a, [bc]
    xor d
    xor a
    rst $38
    ld d, e
    ld h, h
    sub h
    adc e
    ld d, e
    inc [hl]
    dec l
    ld d, e
    ld e, d
    inc sp
    ld e, b
    adc e
    sub e
    ld c, l
    dec d
    ld a, [de]
    cp a
    ld d, l
    jr c, jr_00c_4a07

    ld h, c
    ld d, l
    ld e, $30
    ld b, c
    dec d
    jr nc, jr_00c_494c

    ld hl, $caf8

Jump_00c_49a5:
    xor c
    ld c, l
    sub [hl]
    dec b
    ret nc

    or h
    ret


jr_00c_49ac:
    ld hl, sp-$1e
    cp l
    ld d, l

Call_00c_49b0:
    ld e, a
    ld a, [$2da2]
    dec bc
    call nc, $3a9a
    ld a, [hl+]
    xor d
    ld [hl], $b4
    ld l, e
    rst $08
    ld c, d
    call nc, Call_000_3d9a
    ld a, [de]
    rst $38
    adc [hl]
    add hl, de
    ret nz

    sub b
    push hl
    add sp, -$59
    add h
    add [hl]
    inc [hl]
    ld b, d
    ld e, d
    ld d, h
    db $10
    daa
    ld e, [hl]
    ld de, $3808
    ld d, l
    ld d, l
    ld e, d
    and $12
    sbc h
    adc b
    ld b, h
    jr nc, jr_00c_4a26

    and l
    and e
    ld b, [hl]
    ld [hl], c
    jp $3144


    ld c, b
    ld b, c
    ccf
    rst $38
    rst $38
    rst $38
    xor c
    jp z, $65e4

    ld h, b
    xor a
    rst $38
    db $fd
    ld a, a
    rst $38
    cp $98
    ld h, $6e
    ld d, e
    dec a
    ld a, a
    sbc $bf
    rst $38
    db $fd
    ld de, $947e
    sbc c

jr_00c_4a07:
    jp nc, $15b7

    dec c
    rst $38
    rst $38

jr_00c_4a0d:
    pop af
    sub l
    ld sp, hl
    ld c, c
    and h
    ld b, l
    ld [de], a
    sub l
    ld a, a
    pop af
    xor a

Call_00c_4a18:
    pop af
    ld l, c
    cp d
    ld h, c
    ld de, $c65f
    ld l, e
    rst $00
    add [hl]
    adc l
    ld a, h
    ld d, d
    add hl, bc

jr_00c_4a26:
    ldh [rOCPS], a
    ret


    jr nc, jr_00c_4a0d

    add e
    inc b
    db $76
    or b
    ccf
    rst $30
    db $ec
    add h
    jr nc, jr_00c_4a7c

    ld b, d
    ld h, [hl]
    cp a
    ld h, l
    sbc $ac
    ld [hl], l

Call_00c_4a3c:
    jp hl


    and h
    ld l, c
    ld d, c
    reti


    add $f0

Call_00c_4a43:
    ld h, l
    and a
    ld [hl], e
    add $b1
    adc l
    ld l, d
    ld [hl], l
    cp d
    ld l, h
    sub d
    add d
    sub c
    ld sp, hl
    adc $be
    ld l, h
    ldh [$92], a
    add h
    adc l
    and $10
    ld l, c
    ld l, d
    rst $38
    add $ce
    ld h, c
    ld [bc], a
    ld de, $45cd
    ld h, [hl]
    call c, Call_00c_444a
    cp c
    ld l, d
    sub h
    add d
    sbc d
    ld [hl], c
    xor d
    ld d, h
    sub b
    sub a
    cp a
    pop de
    inc [hl]
    ld e, $29
    ld l, $99
    ld hl, $1052

jr_00c_4a7c:
    jp $fb16


    pop hl
    ld c, c
    xor e
    inc b
    ld l, a
    ld e, d
    ld h, d
    cp a
    ld e, h
    ld [hl-], a
    ld [hl-], a
    ld h, a
    inc e
    or [hl]
    ld d, a
    inc c
    ld h, l
    inc hl
    ld c, d
    ld b, h
    ld a, c
    ld a, [c]
    ld b, h
    ld b, d
    ld a, d
    ld [hl-], a
    sub c
    ld e, $a4
    ld sp, $44c4
    cp d
    rla
    di
    and c
    ld a, [hl]
    adc [hl]
    sub a
    and e
    xor c
    ld hl, sp-$15
    ld a, b
    db $e4
    ld d, c
    ld e, a
    ld hl, sp-$19
    cp d
    adc [hl]
    or l
    ld d, e
    or [hl]
    and e

Call_00c_4ab6:
    add l
    ld e, a
    di
    adc e
    ld c, e
    xor b
    call $b04c
    sub l
    jr c, jr_00c_4b2d

    ld c, b
    rst $10
    xor d
    cp l
    ld c, l
    xor l
    ld c, c
    db $ec
    cp d
    db $d3
    ld [hl], a
    ld a, [$ef8c]
    ld c, a
    ld [bc], a
    inc a
    ld e, c
    jp nc, Jump_00c_5ac7

    ld de, $1dd9
    xor h
    db $76
    or c
    ret z

    sub b
    add h
    ld sp, $8cce
    ld [hl], e
    ld h, [hl]
    inc l
    ld [hl], d
    cp c
    ld [hl], c
    sub d
    sbc b
    ld hl, $2fc7
    and a
    ld e, $a6
    ld c, $d4
    and a
    inc b
    sub l
    ld [hl], c
    ld [hl], b
    ld c, d
    ld b, d
    ld h, l
    ld [bc], a
    rrca
    inc bc
    add hl, de
    ld e, a
    sbc e
    rst $00
    dec b
    rra
    ld a, [bc]
    ld d, l
    cp l
    ld h, [hl]
    sub d
    dec d
    ld c, [hl]
    db $e4
    adc d

jr_00c_4b0d:
    cp d
    or a
    db $e4
    jp hl


    adc e
    add $82
    add c
    ld a, [hl-]
    jr nz, jr_00c_4b59

    and d
    ld d, c
    add l
    ld d, e
    adc l
    sbc d
    ld b, c
    ld d, c
    add d
    ld hl, $8e41
    ld b, [hl]
    ld e, a
    db $fd
    ld [$2858], sp
    jr z, jr_00c_4b0d

    sub b

jr_00c_4b2d:
    adc b
    ld c, h
    ld h, c
    or l
    dec b
    jr c, jr_00c_4b9c

    dec l
    cp $08
    adc d
    ld d, [hl]
    ld a, [bc]
    adc [hl]
    dec de
    ld e, d
    sub [hl]
    ld d, $91
    ld b, d
    db $ec
    db $e3
    sbc [hl]
    adc b
    and e
    add hl, bc
    sub e
    sbc [hl]
    ld b, a
    add hl, hl
    ld l, c
    inc d
    jp hl


    sub [hl]
    sbc d
    adc d
    ld l, d
    ld a, [hl-]
    xor d
    xor l
    ld a, [hl]
    sub l
    dec [hl]
    ld d, l

jr_00c_4b59:
    ld c, l
    push af
    ld [hl+], a
    and e
    ld c, d
    xor d
    call nc, $82ce
    jp hl


    and e
    ld c, e
    ld d, d
    dec hl
    ld d, h
    add l
    pop bc
    add hl, de
    xor b
    sbc $bf
    ld d, a
    ld a, [de]
    cp b
    ld h, $90
    adc [hl]
    ld l, d
    xor d
    xor c
    rst $38
    and e
    rst $08
    sbc [hl]
    cp d
    sub d
    adc d
    ld [hl], a
    sbc $85
    cp $86
    ret


    sub $b5
    cp a
    ld a, b
    ld l, c
    db $d3
    ld a, h
    rst $38
    db $ed
    or [hl]
    add hl, bc
    jp z, Jump_000_3dbf

    ld a, a
    or h
    ld a, [bc]
    or d
    ld [hl], c
    db $fc
    ld a, [c]
    ld [$877f], sp

jr_00c_4b9c:
    dec b
    add d
    ld [hl], d
    ld a, [$0f42]
    pop hl
    jr nz, @-$42

    add d
    ld [hl], c
    ld a, $a0
    cp a
    rst $08
    or a
    ldh [$a9], a
    rst $00
    ld a, a
    rst $38
    ccf
    ld hl, sp+$5f
    add d
    ld [hl], e
    ld [hl], l
    inc a
    or a
    dec sp
    add hl, sp
    push de
    ei
    ld c, l
    sub $d2
    ld [hl], l
    ld e, l
    ld c, [hl]
    db $d3
    ccf
    dec e
    rst $30
    cp l
    ld e, h
    ld l, d
    sub b
    sbc h
    rrca
    xor a
    add $8f
    sub h
    sbc c
    cp a
    and c
    pop af
    or l
    jp z, $8242

    ld b, d
    dec c
    ret z

    ld l, c
    rst $00
    dec b
    push de
    db $10
    db $eb
    and b
    rst $00
    add e
    ld de, $881e
    ld b, h
    cp [hl]
    ld c, c
    ld a, a
    jp c, Jump_00c_7a4e

    rst $38
    ld c, b

jr_00c_4bf1:
    adc $35
    ld a, a
    ld a, l
    add l
    jr c, jr_00c_4c17

    xor e
    and b
    and b
    add [hl]
    scf
    and d
    ld [c], a
    ld de, $3a42
    ld hl, $cede
    add [hl]
    dec d
    ld d, [hl]
    scf
    ld h, a
    or $f0
    xor b
    db $e4
    sbc d
    ld b, l
    ld a, [hl-]
    xor h
    ld a, [de]
    ret c

    add sp, -$58
    ei

jr_00c_4c17:
    add hl, hl
    ld a, [c]
    ld c, b
    ld b, b
    ldh [$a7], a
    ld d, h
    jr nc, @+$4c

    sbc h
    ld [$0c29], a
    ld [hl], c
    ld e, a
    or a
    add a
    add e
    ld h, [hl]
    pop af
    ccf
    db $ec
    inc c
    ld e, $70
    db $eb
    rst $38
    pop hl
    dec c
    inc e
    ld e, a
    rst $38
    ldh a, [$27]
    dec l
    ld [hl], b
    ld e, e
    sbc l
    ldh a, [rBCPD]
    ld sp, hl
    ld h, b
    ld d, l
    ld a, $31
    ld h, e
    jp Jump_00c_6858


    ldh a, [$28]
    ld [hl], b
    sbc b
    pop hl
    ld h, b
    ld c, e
    ld e, d
    jp z, $e068

    ld h, b
    ld e, d
    ld l, c
    add e
    jr jr_00c_4bf1

    inc de
    db $76
    ld [hl+], a
    ld [hl], d
    sub b
    jp nc, Jump_000_35b7

    ld d, b
    jp z, $0c5a

    ld hl, $5a90
    ld c, h
    jp c, Jump_000_3218

jr_00c_4c6c:
    add sp, -$3a
    rst $10
    ld [hl-], a
    ld h, b
    ld c, [hl]
    ld e, b
    ld d, [hl]
    ld sp, $2162
    ld l, c
    dec l
    ld [hl-], a
    db $e3
    jr c, jr_00c_4c8f

    ld l, d
    and h
    xor b
    dec l
    ld b, $73
    ld l, b
    inc h
    dec de
    or b
    sub d

Jump_00c_4c88:
    sub b
    sbc a
    ld [$82e3], sp
    db $76
    inc c

jr_00c_4c8f:
    pop bc
    ld h, e
    or [hl]
    dec b
    add hl, de

jr_00c_4c94:
    db $e3
    jp $8f50


    call $c637
    jp z, Jump_000_2878

    ld b, c
    inc c
    ld [hl], a
    xor b
    ld b, c
    jr nz, @-$17

Jump_00c_4ca5:
    inc bc
    jr nc, jr_00c_4ccc

    and c

Call_00c_4ca9:
    ld l, $55
    ld h, [hl]
    xor $a0
    call c, Call_00c_49b0
    ld a, [de]
    ld c, d
    ld l, h
    db $fd
    ld c, e
    and l
    call nz, $d1da
    sbc d
    rra
    dec bc
    jp Jump_00c_6018


    sub c
    ld h, $88
    ld d, c
    inc e
    ld l, a
    ld l, e
    ld b, [hl]
    ld [$4ae7], sp
    ld h, a

jr_00c_4ccc:
    add l
    ld b, h

jr_00c_4cce:
    xor c
    ld l, c
    sbc [hl]
    ld l, c
    and [hl]
    jr jr_00c_4d2d

Call_00c_4cd5:
    cp h
    jr jr_00c_4cfc

    or h
    ld l, l
    jr nz, jr_00c_4c6c

    add d
    inc a
    ld d, h

jr_00c_4cdf:
    or d
    ld [hl], c
    pop bc
    inc [hl]
    add hl, hl
    adc d
    ld [hl], a
    ld b, c
    ld b, h
    or c
    pop hl
    push de
    rra
    sbc d
    add b
    ld b, h
    dec sp
    inc de
    cp c
    adc [hl]
    sub $39
    ld h, h
    or [hl]
    add hl, sp
    sub b
    db $f4
    ld d, h
    cp b

jr_00c_4cfc:
    ldh [rOBP0], a
    ld e, d
    jr nc, jr_00c_4c94

    ld [hl], h
    xor e
    ld c, c
    ld l, e
    call $c758
    sub b
    adc b
    ld c, l
    jr jr_00c_4cce

    ld h, d
    ld hl, $4c60
    ld d, $d4
    dec d
    pop hl
    ld d, c
    ld e, b
    jr jr_00c_4cdf

    ld l, l
    inc hl
    dec d
    sub [hl]
    sub [hl]
    adc l
    and a
    ld a, [bc]
    add l
    ld a, [hl]
    adc [hl]
    ld e, d
    xor d
    ld a, $ca
    ld a, e
    sub c
    jp c, Jump_00c_75fe

jr_00c_4d2d:
    xor e
    ld d, c
    call nz, $4de9
    cp $71
    ccf
    and e
    cp $b1
    call nz, $faff
    rla
    ret nz

    or c
    or e
    rst $38
    rst $38
    ld c, b
    cp a
    ld a, [de]
    cp a
    rst $38
    ret nc

    cp a
    ldh a, [rDMA]
    ld e, e
    call nc, Call_000_2b09
    ld a, l
    ld sp, $0aaa
    inc de
    dec b
    adc $86
    ld de, $c5c3
    inc h
    ld b, a
    pop hl
    and b
    ld [hl], a
    or h
    ld d, l
    ld d, l
    ld d, h
    ld a, [c]
    sub [hl]
    add l
    dec b
    ld d, h
    ld e, $93
    call nz, Call_00c_5a61
    ld l, $86
    sbc l
    inc a
    inc d
    ld e, h
    jp z, Jump_00c_7f8b

    ld b, l
    ld e, e
    cp $94
    ld [c], a
    ld e, e
    ld d, l
    inc sp
    ld a, d
    ld a, [de]
    add c
    ld d, l
    ld l, d
    ld b, d
    ld c, l
    sub c
    cp b
    ld e, d
    jp nc, $bce8

    ld [hl+], a
    daa
    xor a
    sub b
    ld c, l
    sub h
    ld d, d
    db $ec
    sbc d
    dec h
    ld sp, hl
    ld c, d
    ld d, b
    call nc, $8113
    ld b, [hl]
    ld h, h
    sbc e
    ld b, c
    xor d
    or b
    ld a, h
    ld [de], a
    sub c

jr_00c_4da3:
    xor [hl]
    jr c, jr_00c_4e13

    ld b, d
    or l
    ld d, $04
    cp b
    inc e
    ld h, h
    add h
    ld hl, $e258
    xor a
    rst $18
    and b
    and d
    sub b
    ld b, [hl]
    ld h, $a2
    add hl, de
    dec [hl]
    ld e, d
    cp a
    rst $38
    ld a, h
    jp z, Jump_000_350a

    ld l, b
    reti


    ld d, [hl]
    ld sp, $c6a8
    ld l, h
    add h
    add $3b
    ld d, [hl]
    ld d, $93
    inc e
    inc l
    pop bc
    ld c, [hl]
    ld [hl], l
    ld a, [$45d0]
    ld [hl-], a
    and e
    dec b
    ld a, c
    ld c, l
    sub $e8
    ld e, [hl]
    inc b
    jr z, jr_00c_4da3

    jr c, jr_00c_4e0d

    sub e
    ld h, $86
    ld hl, $7ae1
    ld b, c
    ld b, c
    and c
    xor b
    dec d
    and [hl]
    ld c, c
    ld b, [hl]
    ld c, h
    ret c

    ld e, [hl]
    rla
    adc l
    ld d, h
    ld d, h
    xor c
    xor d
    dec [hl]
    xor b
    adc d
    ld [hl+], a
    adc [hl]
    ld e, l
    ld a, [hl+]
    dec b
    ld b, l
    adc l
    ld l, b
    adc d
    dec l
    ld c, l
    ld d, [hl]
    push de
    ld [hl], l
    ld d, e

jr_00c_4e0d:
    add d
    adc b
    adc l
    ld d, h
    sbc d
    dec h

jr_00c_4e13:
    add hl, bc
    pop hl
    adc b
    ld c, l
    ld d, h
    ld e, l
    add hl, bc
    ld c, b
    ld d, e
    dec [hl]
    ld [hl+], a
    ret nc

Jump_00c_4e1f:
    push hl
    add l
    jr c, jr_00c_4e41

    ld [hl], d
    ld l, e
    adc d
    ld d, d
    xor d
    ld a, b
    ld [hl+], a
    ld d, [hl]
    ld [hl], $41
    ld b, d
    sub [hl]
    xor b
    ret


jr_00c_4e31:
    ld c, h
    xor d
    xor d
    add hl, sp
    ld l, b
    pop bc
    ld c, l
    ld e, b
    inc hl
    xor c
    ld a, [de]
    ld a, [bc]
    jr c, @+$2b

    add c
    adc [hl]

jr_00c_4e41:
    call nz, $c564
    ld c, c
    ld e, d
    ld d, $3b
    jp hl


    ld b, d
    xor d
    xor b
    ld a, [hl+]
    add c
    ld e, d
    inc a

Jump_00c_4e50:
    ld e, d
    and l
    ld d, l
    ld d, [hl]
    adc [hl]
    jp hl


    and d
    ld h, h
    and a
    sub d
    add h
    add hl, hl
    sub d
    rst $00
    adc d
    ret nz

    add h
    ld h, d
    sub e
    ld c, c
    pop hl
    inc hl
    add hl, de
    add $38
    ld b, h
    jr nz, jr_00c_4e31

    ld d, d
    ld [hl], c

Jump_00c_4e6e:
    ld b, d
    and h
    daa
    rla
    xor [hl]
    adc d
    ld c, h
    sbc e
    ld b, h
    ld h, h
    ld [hl], c
    sub d
    ld h, l
    rst $38
    db $e3
    inc d
    sbc e
    ld b, h
    ld c, c
    ld [hl], d
    ld b, h
    ld h, c
    ccf
    rst $38
    db $e4
    inc hl
    inc e
    ld de, $5a32
    add d
    and e
    ld l, h
    and c
    rst $38
    ld a, [$c744]
    ld a, [de]
    add h
    and b
    rst $30
    rst $38
    sub b
    add a
    and c
    ld a, a
    db $fc
    ld [hl], h
    pop bc
    ld [hl], l
    dec b
    rst $38
    inc bc
    pop hl
    inc b
    ld d, l
    ld a, [c]
    inc c
    ld l, d
    ret nc

    add hl, hl
    ld [hl], d
    ld de, $e78f
    ld [hl], h
    inc [hl]
    ld l, [hl]
    xor b
    sbc $42
    add d
    ld e, [hl]
    db $76
    and c
    inc bc
    cp a
    jp hl


    ld e, a
    pop af
    ldh [rNR42], a
    rlca
    scf
    rst $38
    push hl
    pop de
    add a
    xor e
    inc e
    ld [$7731], sp
    or a
    db $fc
    ld l, $09
    adc e
    rst $38
    ld a, [$c266]
    call nz, $de25
    ld a, [bc]
    rra
    call nz, $fc52
    rla
    rst $38
    ld sp, hl
    sub d
    inc c
    ld l, a
    inc b
    inc [hl]
    ld b, d
    scf
    push bc
    push de

jr_00c_4ee9:
    pop de
    ret nz

    sub d
    sbc h
    ret


    add h
    ld [hl], d
    ld b, h
    add $0c
    ld h, d
    sub c
    ld a, b
    ld [hl+], a
    adc d
    ld [hl], c
    ld b, h
    add $c9
    ld d, c
    ld sp, $6aa4
    call nz, Call_00c_4a43
    ld b, h
    ld h, a
    inc h
    ld l, b
    and h
    ld b, b
    rst $00
    ld [hl-], a
    ld c, h

Jump_00c_4f0c:
    ld e, h
    ld h, c
    db $10
    sub h
    add h
    ld l, [hl]
    add e
    ld [bc], a
    dec c
    inc c
    ld h, [hl]
    sub [hl]
    sbc l
    ret nc

    and l
    ld c, c
    adc d
    ld b, e
    daa
    ld e, h
    jr nc, jr_00c_4ee9

    inc d
    call z, $c876
    ld b, [hl]
    ld d, c
    ld c, b
    ld b, d
    rst $00
    add l
    ld [bc], a
    ld l, h
    adc h
    ld a, c
    ld [hl], c
    add h
    ld a, b
    nop
    ld b, h
    or l
    ld d, l
    ld c, d
    ld e, d
    and e
    ld h, l
    adc d
    xor d
    adc [hl]
    ld h, $33
    ld d, d
    ld a, [de]
    adc [hl]
    ld d, l
    ld hl, $e308
    ld a, c
    dec h
    ld c, [hl]
    ld c, b
    adc [hl]
    add l
    dec b
    ld a, [de]
    jr c, jr_00c_4fb8

    ld hl, $259a
    ld c, [hl]
    add hl, sp
    jp hl


    dec b
    dec h
    ld c, [hl]
    ld c, a
    ld a, [hl+]
    xor d
    dec b
    inc sp
    ld l, d
    cp $aa
    ld c, [hl]
    ld c, c
    ld h, d
    ld d, a
    ld hl, sp+$13
    adc l
    xor a
    add sp, -$65
    sub b
    ld l, b
    db $d3

jr_00c_4f6f:
    ld e, b
    jp c, $a23e

    ld l, d
    xor d
    sub h
    or l
    ld b, [hl]
    xor e
    pop de
    ld [hl], l
    db $10
    xor c
    and a
    add hl, de
    ld a, $2f
    ld sp, hl
    ret nz

    sub e
    and c
    add [hl]
    dec e
    reti


    and d
    jr c, @-$36

    db $76
    ld b, d
    add hl, de
    cp h
    adc h
    ld b, l
    add l
    sub c
    ld c, c
    pop bc
    ld l, b
    ld a, $08
    ld c, b
    pop bc
    daa
    dec d
    sub $be
    cp $1e
    ld [hl], c
    ld hl, $5711
    db $fd
    sbc c
    dec a
    inc l
    ld e, h

jr_00c_4fa9:
    ld e, l
    ld b, [hl]
    ld [hl], l
    ld b, h
    inc h
    rst $08

jr_00c_4faf:
    daa
    dec bc
    adc $67
    inc bc
    pop af
    and [hl]
    rst $00
    db $db

jr_00c_4fb8:
    add b
    ld [hl], a
    cp h
    and a
    db $fd
    inc a
    or l
    ld d, c
    ld d, b
    ld c, b
    and e
    ret z

    ld a, d
    add d
    add c
    ld d, h
    adc e
    ld c, [hl]
    push bc
    jr nc, jr_00c_4f6f

    ld h, c
    adc b
    or d
    ld l, l
    ld a, [hl-]
    ld l, d
    ld sp, hl
    ld d, l
    ld c, c
    and $53
    jr jr_00c_4faf

    db $fd
    ld [hl], $92
    jr nz, jr_00c_4fa9

    ld [hl], c
    ld c, h
    db $10
    ld c, h
    sub h
    adc e
    and l
    ld a, [de]
    ld l, $91
    ld d, d
    ld l, d
    jp nz, Jump_00c_544b

    or a
    adc c
    ld b, d
    ld b, [hl]
    sub h

jr_00c_4ff3:
    db $10
    ld sp, hl
    add hl, de
    add hl, de
    ld l, d
    adc c
    sub e
    add l
    and [hl]
    ldh a, [rOBP0]
    ld d, d
    sub b
    ld c, b
    adc l
    push hl
    ld e, b
    and a
    ld l, b
    sbc d
    ld e, b
    cp d
    ld b, [hl]
    ld d, d
    inc h
    pop de
    ld c, c
    ld h, c
    ld l, b
    add hl, de
    dec d
    ld [hl-], a
    add c
    dec d
    rra
    ld h, $cc
    jr jr_00c_5084

    adc d
    jp hl


    ld e, b
    adc h
    add l
    ld d, h
    ld hl, $a2ab
    and e
    sbc e
    ld b, $aa
    ld a, [hl+]
    ld a, [$5983]
    ld a, [bc]
    jr c, jr_00c_5041

    ld c, c
    dec bc
    ld hl, sp+$17
    ld a, c
    dec b
    ld [hl+], a
    ld [$6c20], sp
    ld d, a
    add hl, sp
    ld [$be17], a
    ld d, $42
    ld [hl+], a
    add hl, hl

jr_00c_5041:
    ld d, h
    sbc h
    jp nz, $f425

    set 6, l
    daa
    ld b, c
    add hl, hl
    ld b, $09
    cpl
    ld [hl-], a
    ld h, b
    ld b, l
    jr nc, jr_00c_4ff3

    ld l, b
    adc b
    pop hl
    adc d
    call z, Call_000_2e24
    ld [$52c5], sp
    ld e, e
    jr c, jr_00c_50b0

    ld e, d
    sub d
    ret nc

    sub b
    add [hl]
    adc h
    jr nz, jr_00c_50b8

Call_00c_5068:
    ld d, b
    add [hl]
    dec h
    ld [$6011], sp
    adc e
    ld c, c
    add c

Call_00c_5071:
    ld h, $34
    ld d, c
    ld l, [hl]
    sub b
    ld e, d
    inc b
    ld d, $82

jr_00c_507a:
    ld c, d
    ld c, d
    add l
    jp nc, $ce24

    sub $42
    pop hl
    ld e, b

jr_00c_5084:
    ld de, $5196
    pop bc
    jr nc, jr_00c_50ec

    inc hl
    adc d
    adc b
    xor b
    add h

jr_00c_508f:
    sbc b
    sbc d
    dec l
    add hl, bc
    ld b, l
    ld b, d
    ld e, b
    push bc
    ld d, l
    ld b, d
    ld sp, $6249
    add hl, de
    ld h, $a5
    ld d, l
    ld [hl], $a8
    dec d
    sbc h
    sub l
    inc d
    ret


    dec h
    ld a, [hl+]
    and e
    ld d, a
    ld l, d
    ld d, [hl]
    dec d
    and c
    sub b

jr_00c_50b0:
    xor d
    ld [hl+], a
    ld b, $25
    add hl, sp
    dec d
    ld hl, sp-$76

jr_00c_50b8:
    add e
    ld d, l
    ld [hl], d
    ld h, l
    ld [$18a8], sp
    db $e4
    add c
    or d
    ld h, h
    ld l, d
    xor b
    ld e, b
    adc c
    ld b, l
    add sp, -$19

jr_00c_50ca:
    cp b
    ld d, [hl]
    xor a
    push de
    xor d
    jr nc, jr_00c_508f

    jr c, jr_00c_50ca

    sub h
    rr [hl]
    ld h, d
    jr z, jr_00c_507a

    inc de
    daa
    sub d
    or h
    ld a, [bc]
    xor c
    ld l, c
    jp c, $f798

    inc de
    ld b, [hl]
    ld d, d
    sbc l
    jr c, jr_00c_515c

    sub b
    jp hl


    ld [hl], d

jr_00c_50ec:
    sbc c
    add $b3
    add hl, de
    jr nz, @-$72

    rst $10
    add $13
    add hl, de
    ld c, c
    sbc h
    ld b, l
    ld sp, $9a29
    sbc c
    ld e, d
    ld h, e
    and l
    xor h
    ld h, e
    ld b, h
    inc h
    ldh [$91], a
    ld h, b
    adc e
    xor b
    or d
    ld h, c
    rla
    sub b
    and [hl]
    inc sp
    inc b
    ld a, [de]
    ld [de], a
    ld c, l
    ld h, c
    inc b
    db $ec
    ld [hl-], a
    ld d, d
    ld d, d
    ld b, a
    ld c, [hl]
    ld d, d
    jp $846d


    ld c, l
    xor c
    ld d, b
    and h
    jr z, jr_00c_5175

    cp h
    ld c, d
    ret nz

    add d
    jr nc, jr_00c_516c

    adc [hl]
    and [hl]
    ld d, l
    and c
    and e
    jp Jump_00c_4f0c


    pop bc
    and c
    inc de
    ldh a, [$3f]
    ld [$a630], a
    ld c, h
    xor c
    or l
    ld a, l
    inc b
    ld c, h
    db $10

Jump_00c_5142:
    ld [hl], l
    ld d, l
    ld [hl+], a
    add $48
    jp nz, $cb9a

    pop de
    jr z, jr_00c_517d

    jp z, $f01a

    dec hl
    sub [hl]
    sub a
    dec de
    ld b, l
    inc [hl]
    inc c
    ldh [$99], a
    ld [hl-], a
    adc [hl]
    or [hl]

jr_00c_515c:
    ld h, c
    sub l
    ld h, $b7
    db $e4
    jp nz, Jump_000_0685

    jp $8207


    ld sp, hl
    ld a, [hl+]
    ld c, e
    adc h
    ld h, e

jr_00c_516c:
    pop bc
    inc bc
    ld a, b
    ld b, e
    ld [de], a
    add $2a
    add [hl]
    dec l

jr_00c_5175:
    inc b
    add h
    ld de, $8609
    add e
    ret c

    ld [hl], c

jr_00c_517d:
    jp nz, Jump_00c_54fd

    and c
    ld a, [de]
    ld h, [hl]

Jump_00c_5183:
    ld [hl-], a
    ld a, [hl+]
    add sp, $20
    cp h

jr_00c_5188:
    ld a, [bc]
    ld c, d
    ld h, h
    sub l
    inc e
    ld a, [hl-]
    ld a, [de]
    ld de, $0a2d
    adc [hl]
    dec d
    add hl, de
    ld b, [hl]
    inc c
    ld a, [de]
    sbc c
    or b
    jr z, jr_00c_51bd

    ld a, [bc]
    pop af
    ld d, [hl]

jr_00c_519f:
    sbc h
    sub b
    ld e, c
    push bc

Call_00c_51a3:
    ld e, e
    ld h, l
    jp nz, Jump_00c_68d1

    dec h
    ld [c], a
    pop de
    adc d
    ld [$c0a4], sp
    add l
    and h
    reti


    ld de, $0c76
    ld [$d846], sp
    ld d, e
    ld [bc], a
    ld b, h
    cp [hl]
    ret


jr_00c_51bd:
    ld [hl], h
    ld sp, $1194
    or d
    add l
    ld [bc], a
    dec [hl]
    ld d, h
    jr nc, jr_00c_5209

    ret z

    and e
    call nz, $9c20
    xor e
    ld a, h
    ld [hl], b
    ld hl, $9540
    db $f4
    ld [hl], d
    ld c, h
    ld c, $82
    sbc b
    xor b
    ld d, c
    db $10
    ld [hl+], a
    pop de
    pop de
    ld a, $84
    inc sp
    jr nz, jr_00c_5188

    ld b, [hl]
    ld [hl-], a
    ld [hl], d
    nop
    ld b, h
    cp c
    sbc a
    db $fd
    ld [hl-], a
    ld d, d
    ld d, a
    rst $38

jr_00c_51f0:
    ld b, d
    adc d
    adc h
    rst $28
    ld a, d
    ld a, [hl+]
    reti


    scf
    and b
    ld a, [hl]
    call z, $e068
    ei
    db $e3
    inc h
    db $dd
    and $08
    ret


Call_00c_5204:
    add hl, bc
    jr c, jr_00c_519f

    and l
    inc b

jr_00c_5209:
    ld e, b
    push de
    and $15
    ld a, [hl+]
    jr jr_00c_51f0

    and b
    ld e, a
    or l
    add hl, sp
    xor a
    and b
    cp l

jr_00c_5217:
    daa
    ld d, d
    sub e
    sub d
    ld b, a
    reti


    ld e, b
    add sp, -$78
    ld l, b
    db $eb
    adc c
    ld c, [hl]
    sbc e
    ld d, l
    add c
    ld h, e
    and d
    xor d
    adc a
    inc hl
    ld [hl], h
    xor d
    ld [hl], c
    xor d
    and h
    or c
    ld de, $76bb
    ld b, h
    pop de
    ret


    db $dd
    dec e
    xor c
    call c, $98cb
    inc h
    and [hl]
    adc h
    inc c
    add hl, bc
    ld a, [hl+]
    ld a, [hl+]
    call c, Call_00c_4269
    jp z, $1342

    inc c
    ld [hl], c
    jr nc, jr_00c_5217

    and b
    add e
    dec e
    dec hl
    inc b
    and a
    ld [hl], a
    inc b
    and a
    ld e, d
    dec c
    ld e, d

jr_00c_525b:
    sbc h
    ldh a, [rLYC]
    ld e, c
    rst $08
    ld a, [hl+]
    xor l
    rra
    inc c
    ld [hl], a
    cp [hl]
    dec c
    ld d, a
    rst $38
    rst $38
    call nc, Call_00c_7ee5
    ld [hl], $6b
    db $fd
    ld d, e
    ld a, [bc]
    db $e4
    pop hl
    or b
    and e
    ld l, d
    xor d
    sub l
    xor d
    ld d, d
    ld h, b
    sub l
    ld d, h

jr_00c_527e:
    add $c2
    add c
    ld d, e
    sub [hl]
    sub d
    dec h
    ld h, b
    ld e, d
    xor e
    jp nc, Jump_000_231b

    xor b
    rst $20
    ld d, l
    ld d, d
    jr jr_00c_525b

    db $fc
    ld d, l
    and b
    ld a, b
    db $e3
    ld a, a
    push de
    adc b
    ld c, h
    ld d, l
    ld [hl+], a
    add l

jr_00c_529d:
    add l
    jr c, jr_00c_527e

    ld a, d
    xor d
    ld d, c
    and l
    cp $22
    ld c, c
    add $8e
    dec [hl]

Call_00c_52aa:
    ld a, b
    jp z, $8856

Jump_00c_52ae:
    and b
    ld d, b
    sub d
    ld a, [hl+]
    ld c, [hl]
    dec h
    inc b
    sbc d
    ld c, h
    push de
    ld [hl], a
    push de
    sub l
    add d
    db $d3
    ld b, l
    ld d, b
    ld c, c
    ld h, d
    ld a, $8a
    ld a, [$e9a2]
    ld d, b
    ld e, [hl]
    inc sp
    ld a, d
    ld b, d
    ld e, b
    sbc h
    ld h, b
    adc d
    cp l
    inc b
    adc $aa
    dec [hl]
    sub b
    and l
    ld l, $51
    add [hl]
    ld c, b
    or b
    db $d3
    and [hl]
    inc d
    sbc d
    xor d
    ld b, c
    ld c, d
    or l
    add l
    push hl
    add hl, sp
    sub e
    dec h
    ld d, b
    or [hl]
    ld [$b229], sp
    ld e, b
    dec l
    ld [hl], $57
    ld a, [$e7a2]
    ld e, b
    dec hl
    ld a, [bc]
    jr jr_00c_529d

    add a
    call Call_000_2564
    dec [hl]
    ld e, b
    sbc d
    sub l
    ld a, h
    xor a
    and e
    add d
    sub [hl]
    sub e
    inc h
    jr z, jr_00c_5332

    jp nz, Jump_000_28a2

    rst $20
    cp a
    ld hl, $2ae4
    dec b
    inc c
    jp z, $3922

    rla
    add sp, -$6a
    inc b
    sbc d
    ld [hl], $82
    and e
    add l
    add sp, -$36
    adc b
    ld a, [hl]
    ld [hl], e
    ld [hl], $56
    adc [hl]
    rlca
    rst $38
    xor c
    add hl, hl
    cp d
    ld [hl+], a
    db $fd
    ld d, l
    ld a, l
    ld a, e

jr_00c_5332:
    ld c, [hl]
    ld l, h
    ld [hl], l
    ld l, b
    ld a, b
    xor c
    ld l, e
    rla
    ld l, d
    db $e4
    db $e4
    ld h, d
    ld d, l
    ld l, d
    add hl, bc
    add hl, hl
    ld a, [hl]
    and c
    ld a, e
    cp $38
    push de
    xor b
    adc $50
    call nc, $5ebd
    and e
    rst $00
    xor d
    push af
    ld d, d
    cp e
    adc a

Jump_00c_5355:
    ld [hl-], a
    and a
    rst $38
    and e
    pop hl
    or a
    pop bc
    and d
    jp z, $b0aa

    daa
    ld [hl], $09
    or e
    add e
    and $90
    ld sp, $82c5
    ld de, $54b4
    jp z, Jump_00c_4967

    add hl, hl
    sub l
    inc h
    and a
    dec [hl]
    dec h
    inc h
    db $76
    inc l
    and h
    or b
    ld a, [hl+]

jr_00c_537c:
    ld [$3267], sp
    rla
    sub c
    ld [$44cb], a
    ld c, e
    db $10
    adc h
    add h
    ld [hl], c
    or d
    ld a, [de]
    xor a
    pop bc
    ld d, h
    ld [hl], c
    ld b, a
    ld a, [hl+]
    rrca
    xor d
    or $52
    add $ad
    inc e
    or e
    push bc
    call z, $acb0
    ld b, l
    xor c
    ld d, h
    sbc h
    ld l, h
    ld de, $4d3a
    ld d, c
    ld a, [hl+]
    ld [$d241], sp
    sub b
    and [hl]
    ret


    add hl, de
    ld l, a
    ld b, $0a
    ld d, [hl]
    call $b498
    and d
    sbc c
    ret z

    ld [hl], d
    adc d
    and l
    ld b, [hl]
    ld d, $10
    ld h, $71

jr_00c_53c0:
    ld de, $48a7
    ld a, a
    ld l, d
    sub d
    sub d
    and h
    pop de
    rst $10
    ld c, b
    ld d, a
    add l
    ld d, b
    ld l, l
    inc h
    jr nc, jr_00c_537c

    pop hl
    and a
    ld a, [hl-]
    add hl, hl
    add d
    adc h
    adc h
    ld c, e
    ld [bc], a
    add l
    ld d, d
    ld [hl], b
    jr nz, @-$1d

    xor e
    jr jr_00c_5422

    ld hl, $8c6c
    add hl, hl
    ld c, b
    ld b, [hl]
    ldh a, [$f5]
    ld a, [de]
    jr nc, @+$24

    pop bc
    or l
    ld b, c
    sub h
    rst $00
    inc c
    inc c
    add hl, bc
    and h
    adc e
    rla
    ld b, b
    and e
    rst $00
    inc a
    reti


    dec c
    and l
    inc [hl]
    and [hl]
    ld a, [hl-]
    ld a, [bc]
    ld [hl], d
    ld hl, $e402

Jump_00c_5408:
    ld a, [hl-]
    sub d
    add l
    ld d, c
    add e
    ld c, l
    ld h, a
    ld d, $0f
    ld b, l
    pop de
    dec c
    jr nz, jr_00c_53c0

    xor e
    ld b, b
    ld hl, sp+$6e
    ld [hl], b
    ld h, c
    ld d, d
    ld a, [bc]
    ld h, b
    jp c, Jump_00c_5408

jr_00c_5422:
    add d
    xor b
    ld b, c
    ld b, $09
    rst $08
    ld sp, $0f4b
    call nc, Call_000_088c
    ld a, [hl-]
    ld a, [c]
    ld de, $c0cc
    add e
    ld c, b
    jp $cb24


    inc b
    ld c, [hl]
    add a
    add [hl]
    ld [hl], c
    push af
    inc b
    ld l, c
    ld b, b
    xor c
    add [hl]
    xor a
    add hl, hl
    db $e3
    ld b, h
    jr nc, @+$2c

    ld d, a
    pop de

Jump_00c_544b:
    and $43
    push de
    daa
    call nz, Call_00c_4400
    and l
    ld d, l

Jump_00c_5454:
    ld d, a

Jump_00c_5455:
    rst $38
    rst $38
    push de
    ld d, e
    rra
    cp $bc
    adc $a9
    adc h
    ld l, d
    cp h
    ld l, $bd
    ld b, l
    ld d, h
    inc de
    add d
    add d
    ld h, [hl]
    cp $a7
    ld [hl-], a
    cp a
    push de
    pop hl
    sbc b
    inc h
    xor h
    add $d4
    add hl, hl
    ld b, d
    ld hl, $aa46
    inc [hl]
    sbc c
    ld [hl+], a
    adc d
    add [hl]
    and h
    res 7, b
    ld h, e
    inc h
    ld [de], a
    inc de

Jump_00c_5485:
    dec sp
    rrca
    adc b
    ld d, h
    xor c
    inc b
    jp c, Jump_00c_5142

    ld b, d
    ld h, d
    ld h, e
    ld l, [hl]
    adc c
    add d
    ret z

    ld l, d
    dec b
    ld h, e
    ld a, [hl-]
    ld d, l
    ld d, d
    dec de
    ld [hl+], a
    sub e
    sub [hl]
    xor l
    ld a, [hl+]
    ld [$bde8], sp
    ld e, b
    inc de
    xor [hl]
    xor d
    inc a
    ld a, l
    call nz, $9daa
    dec hl
    dec d
    ld d, l
    daa
    inc de
    ld d, d
    adc d
    and a
    scf

jr_00c_54b6:
    inc h
    ld a, l
    ld e, [hl]
    and [hl]
    ld l, d
    ld h, e
    inc b
    ld h, c
    ld b, [hl]
    ld e, [hl]
    push de
    ld e, c
    db $10
    ld [hl+], a

Jump_00c_54c4:
    ret


    or l
    sbc d
    ld d, l
    ld d, [hl]
    sbc d
    inc l
    sbc d

jr_00c_54cc:
    inc h
    reti


    sbc d
    inc d
    ld c, d
    ld d, d
    sbc h
    ld d, d
    ld c, h
    ld a, [de]
    ld b, d
    ld [de], a
    ld a, [hl+]
    ld l, d
    add sp, $3b
    dec bc
    inc de
    ld b, [hl]
    db $f4
    db $10
    rst $18
    ld d, $9d
    ld l, c
    ld [$5447], sp
    ld e, $a9
    ldh a, [$e0]
    ld [hl], a
    cp [hl]
    ld a, [hl+]
    ld [c], a
    ld d, h
    di
    inc d
    sbc d
    ld b, $68
    ld a, [c]
    xor d
    ld [c], a
    dec l
    sbc d
    inc a
    xor e

Jump_00c_54fd:
    ld e, d
    ld b, $a8
    ld d, h

jr_00c_5501:
    ld a, [c]
    ld d, l
    ld [hl], e
    ld h, $d3
    add $a8
    dec d
    inc b
    push bc
    ld [$7fc5], sp
    ld b, l
    db $e4
    pop hl
    cp d
    ld h, l
    jr nc, jr_00c_54b6

    ld c, e
    ld a, d
    ld [hl+], a
    xor d
    ld b, c
    jr c, jr_00c_553a

    and l
    ld h, $a5
    dec e
    ld c, c
    sub e
    ld [$e164], sp
    and c
    ld c, b
    or $21
    jp c, $de0b

    ld [hl-], a
    add c
    ld c, l
    jp c, $a431

    db $10
    adc c
    cp b
    inc l
    add $90
    sub b
    adc h

jr_00c_553a:
    reti


    ld h, $31
    adc e
    ld a, l
    sub e
    jr jr_00c_54cc

    ld h, e
    ld d, $e8
    inc hl
    dec b
    ld d, d
    ld [de], a
    ld h, c
    ld [hl], b
    ld c, d

jr_00c_554c:
    ld h, h
    add [hl]
    ld sp, $8b6f
    ld d, [hl]
    adc c
    adc b
    ld c, e
    sub d
    sbc b
    jr nz, jr_00c_5501

    adc $a8
    xor b
    db $e3
    ld c, b
    ld b, [hl]
    inc d
    db $ed
    db $e3
    inc b
    jp nz, $c1fc

    ld [$52e3], sp
    cpl
    ld c, l
    ld [hl+], a
    db $e3
    add hl, de
    sub b
    ld l, d
    sub h
    reti


    rst $18
    jp nc, Jump_000_1523

    ld [hl], d
    ld [de], a
    rst $20
    ld hl, $4c46
    add hl, hl
    rst $28
    ret c

    ld d, $21
    ld d, c
    sbc a
    pop de
    ld d, e
    ld a, [de]
    add [hl]
    add l
    ld sp, $8989
    ld b, c
    ld e, a
    ld a, h
    jr nc, @-$36

    ld b, e
    dec [hl]
    add d
    call z, $5462
    xor b
    ld de, $1bd2
    ld sp, hl
    add hl, bc
    ld c, h
    sbc b
    ld h, h
    or a
    ld d, h
    ld l, d
    jr nc, jr_00c_554c

    ld a, [hl+]
    ld [$59a2], a
    dec l
    inc d
    jr @-$46

Jump_00c_55ac:
    add l
    rra
    ld c, d
    xor c
    ld c, l
    and $48
    ld b, l
    ld b, e
    inc d
    ret


    ret nc

    db $f4
    add h
    xor b
    ldh [$af], a
    jp c, Jump_00c_580b

    sub $ff
    and l
    add hl, hl
    inc b
    db $f4
    dec l
    ld e, c
    adc a
    ld c, [hl]
    xor b
    ld sp, hl
    adc l
    pop af
    ld e, c
    ld l, c
    jp hl


    jr nc, @-$42

    sbc [hl]
    ld e, [hl]
    ld a, [bc]
    sub c
    dec sp
    ld b, a
    sbc d
    adc h
    ld e, h
    add hl, hl
    and $79
    adc l
    ld [bc], a
    ld a, c
    inc [hl]
    ld a, [bc]
    ld b, d
    pop de
    ld sp, $1992
    ld l, d
    ld [hl], d
    ld [hl], h
    ld a, [de]
    ld b, a
    and h
    cp c
    adc h
    xor d
    ld c, $ba
    ld [hl], c
    ld a, [c]
    add hl, hl
    ld d, a
    pop de
    add [hl]
    inc c
    ld c, l
    and c
    inc e
    ld e, c
    add l
    jp Jump_000_14cc


    add hl, bc
    ld d, c
    sbc e
    and $f8
    push bc
    ld a, [hl-]
    ld h, c
    ld [hl], $12
    add $28
    pop bc
    inc e
    inc c
    ld d, h
    ld b, h
    sub a
    jp c, $a899

    or c
    sub e
    and e
    ld b, l
    ld d, c
    ld [hl], c
    add h
    ld sp, hl
    add e
    dec [hl]

jr_00c_5622:
    add hl, de
    ld hl, $4470
    cp a
    jr @-$55

    ld c, h
    and l
    jp $c61a


    inc l
    ld b, d
    ld h, l
    ld [de], a
    adc d
    sbc [hl]
    ld [bc], a
    ld d, h
    ld l, l
    ld hl, sp+$25
    rst $00
    ld h, $52
    jr jr_00c_5687

    add e
    ld a, [bc]
    adc l
    ld b, [hl]
    ld a, [de]
    ld b, h
    xor c
    and d
    ld b, e
    cp a
    and l
    jp $2f38


    sub [hl]
    pop bc
    ld l, e
    sub c
    ld c, c
    adc h
    dec c
    rlca
    xor d
    sub b
    ld a, [c]
    adc e
    jr nz, jr_00c_5622

    and e
    ld c, d
    ld [de], a
    ld h, b
    sbc b
    ld d, b
    ld b, h
    call nc, $b515
    cp [hl]
    jr c, jr_00c_56ca

    ld a, c
    ld [hl], l
    db $10
    add h
    ld h, d
    sub [hl]
    xor d
    add d
    ld a, [bc]
    ld [hl], $3b
    inc b
    pop hl
    ld [bc], a
    ld l, l
    ld a, c
    ld c, b
    ld e, b
    ld b, e
    ld d, h
    adc l
    ld c, e
    db $fc
    ld de, $3e11
    sbc b
    or b
    ld h, $14
    ld c, d
    ccf

jr_00c_5687:
    jp hl


    db $76
    ld l, l
    ld a, d
    ld c, d
    inc sp
    db $76
    ld h, l
    add h
    ld a, $09
    pop de
    inc bc
    ld c, b
    ld b, h
    ld d, c
    cp e
    ld c, b
    jp nc, $9e53

    sub a
    ld b, c
    ld e, $a4
    ld sp, $00f3
    ld b, h
    or e
    ld d, h
    ret


    ld b, c
    and e
    ld [hl], a
    or h
    cp d
    or e
    adc l
    ld b, d
    jp nc, $e228

    or h
    ld d, l
    dec bc
    ldh a, [rLYC]
    ld d, e
    ld e, d
    or a
    and d
    and [hl]
    ld [hl], c
    adc l
    ld l, b
    dec l
    ld sp, $3b4e
    ld b, c
    ld c, h
    inc a
    inc hl
    adc l
    inc b
    or a

jr_00c_56ca:
    push bc
    adc $14
    rst $00
    adc b
    adc [hl]
    inc b
    ld [de], a
    ld e, c
    adc c
    ld d, e
    ld [hl], l
    ld e, $50
    bit 5, h
    ldh [$ad], a
    ld b, d
    xor c
    ld d, $d3
    ld [hl], h
    ld d, [hl]
    ld a, a
    push hl
    adc $19
    rst $18
    ld c, d
    or l
    ld a, b
    pop hl
    xor b
    add $a3
    rst $00
    sbc l
    ld l, d
    ld [hl], l
    ei
    ld h, a
    inc e
    sub a
    rst $00
    dec a
    cp $ba
    ld b, d
    sbc e
    ld b, h
    inc a
    scf
    ei
    ld a, l
    dec de
    ld b, b
    add l
    xor a
    rst $38
    ld [$ce70], a
    rla
    rst $38
    rst $38
    sbc h
    ld l, a
    cp a
    rst $38
    cp $29
    jp nz, $ffff

    rst $38
    add a
    dec de
    or l
    rst $38
    rst $18
    db $fc
    ld [hl], b
    xor a
    dec b
    ld b, d
    jp c, $15c7

    db $eb
    sbc b
    ld l, d
    ld [hl], b
    inc hl
    ld [hl], c
    adc d
    ldh [$9b], a
    pop bc
    pop de
    sbc d
    ld a, h
    jr c, jr_00c_57a9

    sbc b
    or $63
    reti


    adc a
    ld e, [hl]
    inc b
    or $64
    db $f4
    jp hl


    ld [hl+], a
    jr c, jr_00c_575c

    ld a, [c]
    inc de
    ld d, [hl]
    ld c, a
    dec c
    ld d, e
    add d
    inc b
    ld a, [c]
    db $d3
    ld d, $04
    pop af

jr_00c_574d:
    xor d
    inc [hl]
    ld b, [hl]
    inc sp
    ld d, a
    ld a, [hl-]
    sub l

jr_00c_5754:
    ld hl, $182a
    or l
    xor l
    and e
    ld b, l
    ld c, b

jr_00c_575c:
    ld d, h
    pop bc
    ld d, d
    ld de, $8861
    ld e, d
    ld b, $8d
    ld e, a
    xor e
    cp d
    and e
    dec b
    ld c, b
    ld d, d
    dec d
    and d
    jr jr_00c_574d

    ld b, c
    ld l, b
    dec h
    ld d, h
    add $b4
    sub l
    push de
    ld h, $49
    ld d, a
    rst $38
    ldh a, [$60]
    and a
    jp c, $e58c

    xor e
    ld a, a
    rst $38
    ld c, b
    sbc a
    cp l
    ld l, e
    db $ec
    db $10
    adc [hl]
    ld e, e
    ld l, d
    ld a, [hl+]
    or c
    ld l, [hl]
    and d
    ret c

    add l
    ld [$93e6], sp
    dec h
    add sp, -$1c
    adc [hl]
    ei
    xor e
    inc [hl]
    ld d, h
    inc de
    pop bc
    ld a, h
    ld a, $35
    sub l
    dec b
    dec d
    ld sp, hl
    add hl, sp

jr_00c_57a9:
    sub h
    dec e
    inc b
    reti


    add d
    dec de
    or [hl]
    ld a, [hl-]
    rra
    ld d, h
    sub l
    dec l
    ld h, b
    ld h, c
    cp d
    dec d
    adc [hl]
    sub l
    dec c
    db $76
    dec d
    and l
    and b
    ld e, b
    sub [hl]
    dec sp
    xor c
    and l
    cp e
    and d
    jr jr_00c_5754

    db $d3
    ld l, $55
    ld c, l
    sub b
    cp e
    ld e, a
    and b
    sub d
    dec h
    ld c, [hl]
    add hl, bc
    ld a, [hl]
    rst $38
    push af
    ld d, l
    ld b, l
    ld d, [hl]
    adc e
    adc d
    ld h, e
    adc [hl]
    cp l
    ld c, b
    xor d
    xor d
    adc h
    ret c

    sub [hl]
    ld a, [hl-]
    ld l, e
    push de
    dec [hl]
    ld d, [hl]
    add l
    ld l, b
    rst $28
    xor e
    db $fd
    ld d, l
    ld a, l
    ld d, [hl]
    and e
    sub e

jr_00c_57f5:
    add hl, sp
    db $ec
    rst $20
    or e
    sbc [hl]
    cp h
    ld [de], a
    ld a, d
    adc d
    ld b, d
    sbc [hl]
    sub h
    ld [de], a
    ld b, l
    ld c, d
    ld h, d
    xor h
    sbc [hl]
    ld h, l
    ld d, l
    ld d, h
    ld a, b

Jump_00c_580b:
    cp h
    and [hl]
    call Call_000_2713
    add b
    and [hl]
    call Call_00c_4a18
    db $76
    pop bc
    ld b, [hl]
    ld c, e
    ld a, [de]
    dec a
    ld h, a
    ld d, a
    add hl, hl
    add d
    add $0b
    pop hl
    ld c, h
    ld l, b
    sbc b
    ld h, $1a
    and l
    ld l, c
    ld l, a
    pop de
    ld sp, $ba9b
    and b
    xor [hl]
    ld h, e
    jp z, $9043

    ld hl, sp+$47
    dec h
    dec l
    add h
    xor c
    and a
    ld [$ef0f], a
    xor c
    adc h
    ld a, [hl-]
    xor d
    cp d
    ld b, l
    ld e, b
    add $70
    ld e, l
    ld h, c
    ld d, l
    ld e, a
    and b
    xor a
    cp $f5
    cpl
    add hl, sp
    rst $08
    ld b, c
    dec d
    inc b
    di
    add l
    rrca
    db $10
    jp nc, Jump_00c_7484

    ld h, [hl]
    pop de
    add d
    inc d
    inc l
    ld b, l
    sbc [hl]
    ld [de], a
    sbc c
    ld d, l
    ld c, b
    ld b, d
    sbc l
    ret


    rra
    dec de
    xor b
    add hl, sp
    ld a, [hl+]
    sbc h
    db $ed
    jr nz, jr_00c_57f5

    ld l, h
    call nz, $1ddd
    ld d, b
    ld c, d
    sub b
    sbc b
    or h
    ld c, a
    ld [hl], b
    dec l
    dec e
    ld l, b
    ld c, e
    inc h
    dec [hl]
    db $10
    or h
    ld [$81a7], sp
    dec bc
    ld [hl], l
    jp c, Jump_00c_55ac

    ld e, c
    sub [hl]
    sub d
    sbc e
    jr z, jr_00c_58e0

    cp a
    ld b, c
    ld c, d
    ld [hl], d
    ret c

    ld hl, $1815
    ld c, a
    db $fd
    add hl, de
    ld d, [hl]
    ld [hl], d
    pop bc
    add d
    ld b, l
    push de
    ld d, l
    dec de
    xor h
    ld [hl], l
    ld b, c
    add d
    inc d
    xor d
    ld l, b
    xor l
    ld e, $0c
    add hl, sp
    dec c
    ld d, a
    ld d, l
    ld b, a
    jr c, @+$46

    cp c

jr_00c_58b9:
    ld d, l
    cp $ce
    ld d, l
    rst $38
    rst $38
    ld [hl], e
    add l
    ld a, a
    cp $a0
    ld d, l
    scf
    ld a, d
    push af
    ld d, [hl]
    and d
    inc sp
    add c
    ld a, a
    db $ed
    ld e, d
    and h
    ldh [$a8], a
    rra
    and e
    jr jr_00c_58b9

    or h
    call Call_000_1539
    jr nc, jr_00c_593f

    sub e
    sbc $55
    and e

jr_00c_58e0:
    sbc [hl]
    or h
    dec d
    ld d, l
    adc l
    rst $18
    ld e, a
    rst $20
    push af
    ld d, h
    db $dd
    ld e, d
    xor a
    ld d, h
    ld a, [hl+]
    and e
    add d
    cp l
    rst $38
    rst $38
    rst $38
    add hl, sp
    ld l, d
    xor e
    rst $38
    rst $08
    add l
    sbc $aa

jr_00c_58fd:
    or l
    ld c, c
    jp z, $adb4

    ld d, h
    ld [hl], d
    ei
    inc de
    ld a, [$e16e]
    adc h
    jp Jump_00c_5955


    cp h
    ld d, h
    db $10
    daa
    ld h, e
    ld d, c
    jp c, $049e

    sbc c
    daa
    ld b, l
    db $fd
    ld c, c
    jp z, Jump_000_2bbf

    ld d, l
    inc e
    ld de, $0d1f
    ccf
    ld sp, hl
    pop bc
    ld de, $5255
    xor d
    sbc a
    ld c, d
    ld [hl], a
    cp h
    daa
    ret nc

    ld d, e
    pop de
    and c
    xor d
    db $d3
    db $d3
    ld d, l
    ld d, d
    rst $18
    ld c, a
    ld d, $ab
    ld a, [de]
    adc d
    and d

jr_00c_593f:
    dec a
    dec sp
    rst $10

jr_00c_5942:
    ld [$5481], a
    and l
    dec b
    ld a, [de]
    dec sp
    jr jr_00c_596b

    ld d, l
    ld b, [hl]
    ld d, e
    jr jr_00c_593f

    ld [hl], d
    jr z, jr_00c_58fd

    ld b, d
    adc c

Jump_00c_5955:
    and d
    sub h
    pop bc
    ld c, h

jr_00c_5959:
    rst $18
    push af
    add sp, -$2f
    dec bc
    ld d, h
    or l
    dec l
    db $eb
    rst $10
    pop de
    and d
    inc d
    sub h

jr_00c_5967:
    jp nc, $9842

    add a

jr_00c_596b:
    adc b
    ld d, [hl]
    adc d
    and c
    or h
    db $10
    di
    dec b
    inc [hl]
    db $e4
    ld e, a
    ret


    xor b
    inc hl
    ld b, [hl]
    ld a, [hl+]
    sub d
    dec d
    ld e, d
    xor d
    ld d, c
    sbc [hl]
    adc h
    ld l, $8b
    ld d, d
    ld l, b
    ld [de], a
    ld h, b
    xor b
    jr jr_00c_5959

    adc b
    cp a
    adc l
    cp $85
    ld c, e
    add [hl]
    call $e5e8
    db $e4
    db $10
    xor b
    sub a
    ld d, b
    ld b, l
    ld [hl], $53
    ld d, l
    ld [$9185], sp
    and c
    ld c, b
    ld d, b
    sbc a
    cp c
    ld a, [hl-]
    ld d, b
    ld [c], a
    ld a, [hl+]
    ld d, $0a
    ld e, b
    adc l
    ld a, [bc]
    pop de
    sub l
    jr nc, jr_00c_5967

    push bc
    add sp, -$37
    jr jr_00c_5942

    xor d
    or h
    ld h, h
    xor d
    sub l
    dec h
    inc [hl]
    ld a, a
    ld d, l
    add l
    ld sp, $82a0
    ld b, [hl]
    ld c, d
    ld e, d
    ret nc

    xor [hl]
    db $f4
    ld d, l
    ld [c], a
    ld a, [hl+]
    dec d
    ld c, d
    ld e, [hl]
    ld [$1d99], sp
    dec b
    jp nc, $8514

    ld a, [bc]
    ld a, [de]
    ld sp, $2f94
    cp $81
    adc b
    ld d, h
    ld a, $2e
    ld [hl+], a
    adc b
    cp l
    ld c, l
    xor a
    ld d, l
    ld e, d
    dec d
    adc b
    ld h, l
    ld b, d
    ld h, b
    adc c
    and e
    and d
    bit 4, d
    push de
    ld b, [hl]
    xor d
    ld c, c
    and b
    db $d3
    sub d
    add hl, hl
    adc l
    ld h, l
    inc d
    ld [de], a
    sub h
    dec d
    ld c, [hl]
    ld l, b
    call $4248
    ret c

Jump_00c_5a08:
    adc $a3
    add [hl]
    ld c, b
    sub l
    xor d
    xor c
    cp a
    ld e, b
    call Call_00c_794e
    ld [hl], $93
    add [hl]
    cp $39
    ld l, c
    ld d, e
    inc h
    di
    jp hl


    ld d, l
    ld h, e
    sbc [hl]
    ld a, b
    ld [hl], c
    add hl, bc
    jp hl


    ld b, h
    ld [hl], b
    ld a, [hl+]
    ld a, c
    add sp, $3d
    or $60
    ret nz

    sbc [hl]
    ld [hl], $17
    adc e
    dec d
    ld [de], a
    rst $20
    add d
    cp h
    ld b, l
    ld e, h
    ld d, h
    add e
    dec b
    rst $00
    ld h, e
    ccf
    ret nc

    ld a, [hl+]
    and [hl]
    add hl, bc
    ld e, c
    sub $c4
    rst $38
    ldh a, [$5e]
    call nz, Call_000_34c5
    ld h, b
    sbc d
    jp Jump_00c_4383


    rst $38
    sub l
    ld l, d
    adc d
    ld c, e
    ld b, [hl]
    inc [hl]
    ld a, [bc]
    jr @+$25

    ld de, $35f1
    rst $38
    and l
    ld e, a

Call_00c_5a61:
    ld [$48b1], a
    and [hl]
    jp z, $92ea

    db $ed
    ld d, l
    ld b, l
    ld e, a
    ret nc

    inc h
    sbc $9a
    and l
    ld e, l
    xor a
    di
    ld b, h
    jp nc, $128c

    xor c
    ld [hl], c
    ld l, d
    and h
    pop bc
    ld de, $d761
    add $89
    jr nc, jr_00c_5acb

    dec b
    add h
    ld b, d
    ld c, e

jr_00c_5a88:
    call nz, $9b21
    ld b, [hl]
    jp hl


    ld [hl], b
    ld b, d
    pop af
    rra
    xor c
    ld a, $9a
    ld c, c
    xor l
    ld l, b
    ld [c], a
    ret nz

    ldh a, [$ae]
    rst $18
    db $dd
    or [hl]
    and [hl]
    ld c, c
    cp h
    ld b, l
    dec bc
    ld a, [c]
    ld b, a
    ld d, d
    ld d, $cc
    rrca
    jp c, Jump_00c_44aa

    sbc b
    and h
    xor d
    xor a
    and $96
    ret c

    ld c, l
    pop af
    rla
    ld a, d
    add hl, bc
    sbc e
    ret nc

    ld e, l
    ld a, e
    ld b, [hl]
    dec l
    xor l
    and h
    ld b, [hl]
    ld d, d
    jr nc, jr_00c_5a88

    ld c, a
    jr @+$41

Jump_00c_5ac7:
    sub [hl]
    add h
    cpl
    pop bc

jr_00c_5acb:
    ld l, e
    db $e4
    ld h, h
    jp nc, $3c30

    ld l, a
    cp $44
    ld d, h
    add hl, bc
    ld e, $fa
    ccf
    inc de
    inc h
    ld b, c
    and [hl]
    ldh a, [rNR50]
    cp b
    and c
    dec d
    rst $38
    or h
    sub a
    ld [de], a
    rst $20
    inc hl
    ldh a, [$31]
    add e
    dec b
    ld b, h
    ld l, c
    ld [hl], b
    ld e, a
    sbc h
    ld d, a
    di
    add hl, de
    add sp, -$20
    db $fd
    dec d
    inc hl
    pop de
    jp nz, $9afe

    ld d, a
    cp $84
    ld h, l
    xor a
    inc e
    ld [hl], a
    and d
    ld [$31ae], a
    ld de, $7ea5
    sbc h
    or l
    rst $38
    rst $38
    ld a, [$c171]
    dec e
    ld [hl], l
    rst $38
    pop af

jr_00c_5b16:
    jp hl


    ld b, h
    rst $00
    ld b, b
    ld b, h
    or l
    ld e, a
    db $fd
    ld d, l
    ld e, a
    dec l
    ld d, l
    ld a, [hl]
    db $ed
    xor l
    push hl
    db $fd
    adc d
    xor e
    ld l, b
    inc d
    ld a, [hl+]
    sub a
    dec bc
    ld [hl], b
    call nc, Call_00c_52aa
    sbc d
    dec h
    ld e, b
    dec h
    ld c, h
    ld h, d
    push hl
    jr nc, jr_00c_5bba

    db $d3
    and l
    ld [c], a
    ld a, b
    db $ed
    ld [hl], l
    adc [hl]
    inc d
    and l
    dec h
    dec de
    add hl, hl
    db $e3
    dec b
    rrca
    ld b, d
    add sp, $64
    pop bc
    ld b, l
    ld d, c
    rst $18
    or b
    ld c, b
    xor d
    cp b
    cp e
    ld [$e0f7], a
    db $eb
    ldh [rHDMA2], a
    inc sp
    ld a, d
    xor b
    add a
    ld [$eb98], a
    cp [hl]
    pop bc
    add hl, sp
    db $ed
    ld l, e
    ld h, e
    xor d
    xor b
    ld a, [c]
    ld h, a
    ld e, d
    sub [hl]
    sub b
    sbc e
    ld a, [hl+]
    scf
    sub h
    db $eb
    ld [de], a
    push hl
    ld e, [hl]
    ld [hl], $99
    inc a
    ld d, [hl]
    ld l, l
    and [hl]
    ld c, c
    ld d, [hl]
    sbc c
    xor c
    push de
    dec d
    ldh [$e6], a
    add hl, hl
    add d
    adc [hl]
    ld c, e
    ld de, $3b66
    jr nz, jr_00c_5b16

    ld a, a
    and b
    ld sp, hl
    and e
    add l
    cp $d3
    ld d, a
    db $ed
    ld b, h
    add hl, sp
    ld d, l
    xor l
    ld a, [hl]
    cp d
    dec d
    and $11
    add h
    ld c, h
    dec d
    ld b, c
    ld e, $5b

jr_00c_5ba7:
    sbc l
    ld l, e
    pop af
    rst $10
    ld b, a
    push bc
    nop
    ld [hl], a
    cp e
    push de
    ld c, b
    ld d, l
    ld c, a
    dec [hl]
    rst $28
    ld a, [$f4ab]
    ld a, [c]

jr_00c_5bba:
    dec l
    and d
    ld e, d
    ld c, b
    or h
    ldh a, [rNR21]
    xor b
    dec h
    daa
    ld h, $25
    ld c, [hl]
    sub $2f
    xor b
    xor c
    ld e, b
    ldh a, [$a3]
    ld a, [hl+]
    inc b
    ldh [$4e], a
    xor b
    adc d
    ld c, b
    ld d, d
    dec h
    ld sp, $f058
    db $10
    ld b, c
    add [hl]
    sub h
    ld l, d
    xor d
    adc a
    ld b, $42

jr_00c_5be3:
    ld h, e
    add hl, de

jr_00c_5be5:
    inc a
    ld a, h
    add hl, hl
    adc a
    ld b, l
    ld c, b
    adc l
    db $d3
    ld d, h
    pop de
    ld d, l
    ld d, a
    ld a, [$3c82]
    or $8f
    ld d, $33
    adc c
    ld b, d
    adc [hl]
    adc b
    jp hl


    sub c
    ld b, c
    dec d
    or e
    ld d, l
    ld d, b
    ld d, b
    ld d, l
    ld d, h
    and h
    jp nc, $4222

    jr jr_00c_5be5

    ld [$c2a8], a
    sub h
    ld [c], a
    ld h, b
    ld b, [hl]
    ld c, l
    ld d, b
    cp b
    add [hl]
    xor c
    ld c, c
    sub h
    reti


    inc b
    ld l, c
    ld b, d
    ld sp, $a27a
    inc hl
    add hl, bc
    dec sp
    jr nz, jr_00c_5ba7

    ld c, c
    or l
    ld d, d
    inc de
    ld b, $38
    ret nc

    ld d, d
    ret nc

    xor [hl]
    dec hl
    ld d, h
    sbc d
    ld d, l
    adc [hl]
    inc h
    add h
    ld [de], a
    sbc d
    ld [$0f69], sp
    ld b, d
    adc [hl]
    dec b
    ld [hl-], a
    ld h, d
    ld h, h
    or [hl]
    jr nc, jr_00c_5be3

    db $ec
    reti


    adc h
    db $d3
    ld a, [de]
    ld d, h

jr_00c_5c4b:
    inc hl
    ld c, d
    ld a, [de]
    sub l
    ld d, l
    ld l, b
    pop de
    inc a
    db $f4
    push bc
    ld d, l
    ld l, d
    ld d, l
    ld c, a
    dec b
    ld a, [hl-]
    add hl, hl
    dec sp
    jr jr_00c_5c4b

    sub l
    add hl, sp
    dec d
    adc a
    ld a, [bc]
    and l
    ld d, l
    ld l, d
    xor d
    and e
    ld c, c
    sbc $8a
    ld b, d
    ld b, d
    ld a, c
    jp c, Jump_00c_44e1

    ld d, b
    ld l, c
    db $e4
    ld c, b
    ld b, h
    cp a
    add sp, -$36
    ld a, b
    ld [$0f43], sp
    inc de
    rst $38
    ld hl, sp-$36
    db $76
    or c
    ld l, e
    xor c
    dec [hl]
    ld d, c
    ld c, $76
    ld sp, $fe9d
    and l
    xor a
    add [hl]
    ld [hl], l
    ld b, h
    ld hl, $ad0a
    ld a, a
    rst $38
    rst $38
    pop af
    ldh [$78], a
    dec [hl]
    ld e, a
    xor l
    ld d, l
    ld d, h
    ld [hl], a
    and c
    ld b, b
    push bc
    rst $18
    rst $20
    adc a
    adc e
    sbc c
    ld e, a
    sbc [hl]
    ld [hl+], a
    jp nz, $9fc6

    and $b9
    add $e1
    ld d, a
    ld b, [hl]
    cp a
    and $c9
    sbc d
    ld d, a
    daa
    daa
    ld a, [$1a6b]
    inc h
    ld h, c
    inc e
    adc a
    cp $9d
    ld [hl-], a
    jr @+$44

    jp hl


    or e
    ld e, a
    jp c, $9352

    sbc d
    ld b, h
    ld c, b
    ld a, a
    and $ac
    xor h
    ld h, a
    ld c, d
    ld [hl], b
    ldh a, [$5f]
    and c
    sbc c
    inc a
    ldh a, [$bf]
    cp $a4
    ld e, d
    ld l, l
    add d
    ld b, h
    cpl
    and l
    add hl, sp
    inc c
    ld b, a
    rst $38
    rst $38
    sbc h
    ld a, c
    add e
    add a
    ld a, [c]
    cp $b7
    sub c
    rst $38
    rst $38
    rst $00
    ld e, $11
    rrca
    ld hl, sp+$4b
    ld a, a
    ld hl, sp+$5a
    ld c, l
    ld d, l
    ld [de], a
    and $91
    dec de
    rst $38
    db $fc
    add h
    ld b, l
    ld a, [$ea0e]
    ld h, d
    cp a
    add $4c
    ld c, l
    rst $38
    pop hl
    add $15
    ld hl, sp+$7f
    rst $38
    rst $38
    rst $38
    add hl, de
    and [hl]
    ld d, l
    ld b, c
    inc e
    ld d, l
    ld d, l
    ld d, h
    ld b, d
    ld h, d
    sbc e
    rst $20
    sub e
    inc de
    ld b, e
    db $10
    or d
    db $76
    or c
    push de
    daa
    ld d, e
    dec e
    ret nc

    add hl, hl
    call nz, Call_000_1ea1
    dec l
    dec d
    ld b, a
    jr nz, jr_00c_5d7f

    cp c
    push de
    xor b
    pop hl
    ld d, l
    ld d, b
    ld l, b
    db $e3
    ld e, d
    ld l, $38
    cp d
    adc [hl]
    jp hl


    ld a, $7d

jr_00c_5d4b:
    adc [hl]
    add sp, -$10
    ld a, [hl+]
    add hl, hl
    and l
    add hl, sp
    push hl
    dec c
    adc b
    adc $9a
    ld e, c
    ld c, b
    ld c, [hl]
    xor d
    xor c
    sub e
    cp [hl]
    push de
    ld l, b
    ld hl, sp+$59
    call z, Call_00c_47a1
    ld [de], a
    sub d
    add e
    inc e
    adc l
    jr jr_00c_5db3

    inc d
    sbc [hl]
    inc c
    ld a, h
    ld a, [bc]
    ld [hl], a
    ld sp, $1edd
    ld a, [de]
    ld b, e
    call nc, $3ca7
    inc d
    sub e
    sbc l
    or b
    ld b, d

jr_00c_5d7f:
    rst $20
    adc [hl]
    sbc l
    ld [hl], b
    rst $00

jr_00c_5d84:
    jp Jump_00c_6680


    cp d
    dec d
    ld d, l
    dec sp
    ld d, l
    add hl, hl
    ld l, a
    cp a
    rst $38
    call nc, $5ee5
    ei
    xor a
    inc hl
    ld a, [$f4aa]
    inc h
    ld [c], a
    sbc [hl]
    dec h
    ld h, $82
    and h
    rst $00
    rst $38
    scf

jr_00c_5da3:
    xor b
    ld d, [hl]
    ld c, b
    sub [hl]
    ld a, [hl+]
    ld b, l
    ld a, [hl]
    adc [hl]
    ld c, c
    add c
    jp c, Jump_00c_4ca5

    ld l, $85
    db $e3

jr_00c_5db3:
    add [hl]
    sub a
    ld [c], a
    rra
    ld d, a
    jr nc, jr_00c_5d4b

    db $f4
    push hl
    ld c, e
    or a
    rst $38
    cp $94
    ld hl, $4eaf
    rlca
    rlca
    db $ed
    ld a, [de]
    xor d
    and b
    ld sp, hl
    rst $38
    ld d, a
    adc [hl]
    ld a, [hl+]
    jr jr_00c_5da3

    adc d
    push af
    db $ed
    jr c, jr_00c_5de6

    ld d, l
    ld a, b
    ld d, h
    sub l
    cp [hl]
    add l
    ld d, l
    db $e3
    ld h, a
    sbc d
    xor b
    ld e, b
    ld a, c
    ld [c], a
    pop hl
    ld c, [hl]

jr_00c_5de6:
    rla
    adc b
    ld h, l
    ld a, [de]
    jp c, Jump_000_0505

    dec h
    ld b, c
    add sp, -$26
    rst $30
    ld a, [hl+]
    sub d
    jr z, jr_00c_5d84

    dec h
    ld c, b

Call_00c_5df8:
    and e
    add [hl]
    adc b
    adc d
    xor d
    ld a, [bc]
    or c
    ld e, [hl]
    inc b
    dec h
    ld c, l
    add sp, -$66
    ld c, h
    and h
    ld e, $85
    ld l, $94
    jp z, Jump_00c_6985

    sub e
    inc h
    dec l
    ld a, [hl]
    xor a
    sub l
    rst $18
    ld c, h
    rra
    xor e
    ld h, e
    ld c, c
    ld b, c
    ld a, [hl+]
    cp l
    ld [$923f], sp
    ld l, b
    call Call_00c_7129
    ld h, d
    sub l
    ld [hl], a
    rst $38
    xor b
    db $e3
    add c
    jp hl


    ld h, c
    ld e, a
    ld [$988e], a
    ld d, [hl]
    add [hl]
    rlca
    ld a, [$043c]
    ld [de], a
    jp c, $683c

    ld sp, hl
    ld c, l
    ret nc

    sub h
    sbc l
    xor b
    dec h
    or e
    ld [bc], a
    ld c, [hl]
    db $10
    daa
    inc sp
    inc l
    db $10
    dec l
    dec hl
    ld sp, $0637
    ld [hl], d
    inc sp
    ld b, c
    sbc b
    ld d, h
    add hl, bc
    sub [hl]
    ld c, $70
    ld l, h
    dec bc
    dec c
    and l
    jr z, jr_00c_5ea7

    ld [$0661], sp
    ld [hl], b
    and c
    or $87
    ld d, b
    ld a, b
    dec h

Call_00c_5e68:
    ld hl, $9105
    inc e
    inc [hl]
    scf
    dec d
    ld [bc], a
    pop hl
    ld a, [hl+]
    ld c, [hl]
    sbc h
    push de
    jr jr_00c_5ee9

    ld e, d
    and c
    xor b
    ld c, e
    sbc h
    ld e, b
    xor l
    ld [bc], a
    ld b, l
    ld d, l
    ld d, [hl]
    ld [$0c12], a
    ld [hl], c
    ret


    db $10
    ld h, $54
    ld b, e
    ld l, h
    reti


    call nz, $8684
    add hl, de
    add hl, bc
    ld c, e
    ld a, h
    db $10
    dec a
    inc e
    db $76
    add l
    inc de
    ret z

    ld l, a
    jr jr_00c_5efe

    xor $6e
    sub e
    sub h
    adc a
    inc c

jr_00c_5ea4:
    inc l
    ld c, e
    dec bc

jr_00c_5ea7:
    add $e8
    ld b, h
    and e
    pop bc
    sub l
    pop af
    inc l
    ld c, h
    ld [hl], b
    ldh a, [$30]
    ccf
    ld [bc], a
    ld c, d
    ld [de], a
    jr z, @+$72

    jp nc, $ba09

    jr nc, jr_00c_5ea4

    inc [hl]
    inc d
    inc a
    ld c, h
    xor h
    ld [de], a
    sbc c
    di
    ld [bc], a
    adc e
    add hl, de
    inc l
    and e
    add l
    ld d, b
    db $eb
    ld c, c
    add e
    or h
    ld [hl-], a
    ld l, h
    add l
    sbc b
    and b
    add h
    ret nc

    inc h
    rst $00
    ld [de], a
    ld e, $82
    xor d
    push af
    db $f4
    ld b, a
    inc b
    ld [hl], b
    inc h
    jr z, jr_00c_5f26

    call nz, Call_00c_70b8

jr_00c_5ee9:
    rst $00
    ld c, [hl]
    rrca
    inc b
    inc a
    pop hl
    add h
    ld a, b
    jr @+$67

    pop hl
    ld e, $34
    ld a, h
    and b
    ld b, h
    or a
    ld a, a
    xor e
    push af
    ld d, e

jr_00c_5efe:
    adc [hl]
    rst $38
    rst $38
    rst $38
    adc l
    ld e, a
    ld b, l
    ld b, [hl]
    xor a
    or c
    adc h
    add hl, hl
    ld c, c
    xor [hl]
    dec d
    ld a, [hl]
    dec [hl]
    ld [hl], a
    call nc, Call_000_1a54

jr_00c_5f13:
    cp d
    ld b, $4c
    sub $d8
    add l
    ld b, c
    adc c
    ld b, c
    inc b
    jp z, Jump_00c_45db

    ld d, c
    ld l, d
    sbc b
    inc sp
    ld e, e
    ld a, d

jr_00c_5f26:
    ret c

    ld d, d
    jr @-$76

    pop hl
    ld d, l
    ld d, b
    xor b
    add a
    adc $08
    cp d
    ld hl, $ddf8
    add hl, bc
    ld d, l
    ld e, b
    rra
    add c
    ld c, l
    db $e4
    cpl
    and e
    xor [hl]
    ret nc

    or l
    inc b
    and h
    db $e4
    xor a
    ret nc

    rst $18
    and e
    xor d
    and e
    ret


    sbc $ba
    sub c
    dec e
    ld [hl], l
    cp $62
    sub d
    adc d
    ld de, $916b
    jr jr_00c_5f13

    ld a, [hl+]
    dec bc
    ld b, b
    ret nc

    ld a, $c9
    sbc a
    add sp, $2a
    ld [de], a
    ld b, h
    dec de
    ld a, [bc]

jr_00c_5f66:
    ld l, c

jr_00c_5f67:
    ld a, l
    dec bc
    call Call_00c_6fb5
    ld b, [hl]
    or d
    rrca
    ld a, [de]
    ld c, d
    ld l, a
    rst $18
    ld a, [$c4a2]
    ld h, a
    dec a
    ld [hl], c
    dec c
    dec de
    and d
    xor d
    adc d
    inc l
    rst $20
    dec c
    dec d
    ld a, [bc]
    ld sp, $96d7
    and a
    ld b, h
    rla
    rra

jr_00c_5f8a:
    ld [de], a
    ld [hl], a
    cp e
    sub l
    dec a
    dec [hl]
    pop de
    sub d
    rra
    push de
    rst $38
    db $d3
    cp c
    and h
    add h
    adc d
    add d
    ld b, d
    ld b, d
    ld c, b
    xor a
    db $d3
    sbc l
    rst $20
    ld a, b
    jp nc, Jump_000_1841

    ld d, b
    sub e
    and c
    ld c, b
    add e
    add $4e
    inc c
    sub l
    ld a, [hl-]
    ld sp, hl
    inc b
    sbc $15
    and h
    inc de
    sbc d
    adc [hl]
    ld l, b

jr_00c_5fb9:
    ld [de], a
    ld h, l
    inc a
    inc b
    ld de, $3645
    ld l, b
    db $ed
    ld d, d
    and b
    ld l, b
    db $dd
    ld d, e
    or d
    ld d, b
    ld b, c
    inc b
    inc de
    jr jr_00c_5f66

    ld h, e
    cp d
    ld h, b
    ld b, d
    ld [$1ab4], sp
    dec e
    rst $18
    ld c, [hl]
    ld h, l
    dec hl
    or $06
    sub l
    cp e
    ld hl, $f058
    jr z, jr_00c_5f67

    jr nz, jr_00c_5f8a

    and e
    add $52
    dec h
    adc l
    ld d, e
    dec b
    and h
    ld [$828a], a
    and e
    ld a, [bc]
    add hl, hl
    ld hl, $683a
    sub [hl]
    dec d
    ld b, c
    ld h, l
    ld sp, $3a45
    db $e4
    ld h, d
    ld h, d
    ld [de], a
    ld h, c
    sub d
    ld h, a
    ld c, [hl]
    ret z

    inc h
    sub h
    add h
    sub l
    inc d
    cp [hl]
    ld c, [hl]
    db $e4
    ld d, b
    sub d
    xor c
    ld [hl+], a
    sub l
    adc [hl]
    db $f4
    ld e, b
    ld [de], a
    inc e

Jump_00c_6018:
    ld h, d
    dec d
    ld c, d
    ld h, e
    xor d
    adc b
    ld c, d
    ld b, c
    xor l
    and e
    add hl, hl
    ld a, [hl-]
    ld a, [de]
    ld a, [de]
    add hl, bc
    add hl, bc
    ld h, c
    adc e
    ld h, e
    cp c

jr_00c_602c:
    add hl, de
    jr jr_00c_5fb9

    ld d, c
    adc d
    ld d, e
    push bc
    ld b, d
    adc h
    ld l, d
    db $fd
    ld sp, $9a63
    ld d, $ad
    and c
    ld e, b
    ld a, [de]
    adc b
    sub h
    ld d, [hl]
    adc [hl]
    ld a, b
    ld h, d
    ld d, b
    add d
    sub $86
    add c
    pop hl
    and e
    xor [hl]
    ld h, d
    ld h, d
    dec h
    dec h
    xor e
    adc a
    ld [hl+], a
    ld e, b
    ld l, a
    or $38
    or a
    ld [hl], d
    add hl, bc
    ld [$4128], a
    and h
    dec sp
    jr nz, jr_00c_602c

    rst $20
    add b
    ldh [$93], a
    ld e, d
    ld d, $42
    sub d
    add [hl]
    or d
    ld [hl], h
    scf
    and b
    sub e
    jr nc, jr_00c_60a0

    adc h
    ld d, a
    ld de, $cd1c
    ld b, c
    ld [hl], d
    ld e, d
    ld c, l
    ld c, $47
    ld [hl+], a
    rst $20
    scf
    dec de
    pop de
    add h
    ld c, h
    ld e, $73
    ld h, d
    rst $00
    ld a, [de]
    ld sp, $090a
    db $d3
    inc e
    ldh a, [$bd]
    dec e
    ret


    and d
    sbc b
    pop af
    ld c, $76
    ld b, b
    add d
    ld e, h
    ld c, h
    add hl, hl
    ld c, h
    ld [hl], a
    or d
    ld e, d

jr_00c_60a0:
    ld de, $540b
    inc l
    or d
    ld [hl], e
    ld h, l
    add hl, hl
    add l
    inc de
    ld a, [bc]
    ld d, $17
    pop bc
    inc e
    pop af
    add hl, bc
    add l
    ld a, [hl+]
    add h
    adc h
    ld h, c
    dec e
    add hl, sp
    ld l, $08
    push hl
    add $f9
    pop de
    add d
    call nc, Call_00c_424d
    add h
    ld l, b
    rst $00
    ld c, l
    add $4e
    pop bc
    add hl, de
    or c
    reti


    add hl, hl
    adc h
    ld [hl], b
    ld c, h
    ld [hl], a
    ld b, a
    ld e, h
    and a
    ld e, [hl]
    sbc h
    inc c
    sbc c
    ld h, a
    ld h, h
    and [hl]
    cp b
    ld d, b
    ld a, b
    ld a, [hl+]
    inc d
    ld [hl], l
    jr nc, jr_00c_6113

    ld h, $18
    pop af
    ld [hl], l
    ld h, a
    ld e, d
    ld e, l
    and h
    ld h, a
    inc c
    ld [hl], h
    ld sp, $1059
    ld a, d
    ld a, c
    add hl, sp
    ld a, [bc]
    add hl, sp
    ld [hl], b
    ld a, a
    sbc c
    inc l
    ld [hl], e
    ldh [$b0], a
    ret z

    ld h, $cd
    dec l
    dec e
    dec l
    rla
    add hl, de
    cp b
    ld sp, $51e0
    ld c, h
    jr @+$4b

    ld e, b
    ld c, c
    db $e4
    call $d410
    rst $00

jr_00c_6113:
    db $10
    ld b, h
    or b
    ld h, h
    add hl, de
    inc sp
    ld d, l
    scf
    adc b
    ld c, c
    ld e, d
    add a
    ld c, h
    jp nc, Jump_00c_7a64

    cp [hl]
    jp nc, Jump_000_0623

    sbc a
    sbc d
    jp nz, Jump_000_0be9

    dec b
    ld [hl-], a
    ld a, l
    ld e, c
    rla
    add hl, de
    sub c
    ld d, b
    sub e
    ld a, [de]
    cp a
    ld h, b
    sbc d
    ld b, e
    sub d
    inc hl
    ld a, a
    inc b
    inc de
    ld a, [bc]
    sub l
    scf
    cp d
    ld h, $88
    sub d
    inc hl
    and d
    adc b
    adc [hl]
    sbc d
    jr jr_00c_61b0

    xor c
    ld b, l
    inc b
    inc hl
    and l
    ld b, l
    ld [$64eb], sp
    dec h
    adc $a9
    db $eb
    adc $da
    and e
    push bc
    ret c

    and h
    daa
    ld [hl], l
    ld a, [bc]
    ld e, d
    xor e
    and $90
    ld d, [hl]
    or d
    xor a
    or a
    add d
    sbc b
    xor a
    ld d, a
    db $fd
    cp l
    xor $29
    sbc [hl]
    add a
    and d
    add [hl]
    db $fc
    db $10
    ld a, [hl+]
    ret


    adc h
    ld c, h
    db $d3
    dec c
    add sp, -$2b
    dec de
    rst $28
    sub l
    ld c, e
    ret z

    ld sp, $c2cd
    call c, $7414
    ld [hl], b
    ld d, h
    ld [hl], l
    ld b, b
    call $730a
    jp hl


    dec l
    dec e
    jr c, jr_00c_61b9

    or c
    rst $10
    jr nc, jr_00c_61f9

    sbc l
    ld [hl], b
    ld a, l
    rra
    ld a, [bc]
    ld [hl], a
    cp l
    ld b, $8e
    push af
    ld d, l
    ld c, [hl]
    dec b
    adc [hl]
    dec d
    ld d, e
    dec b
    and e
    ld a, [bc]
    sub e

jr_00c_61b0:
    dec d
    pop bc
    and e
    ld l, e
    or c
    xor d
    xor b
    ld a, [hl-]
    ld c, h

jr_00c_61b9:
    jp hl


    ld d, a
    add sp, -$7c
    jp c, $d18d

    and l
    ld [hl-], a
    ld b, e
    ld e, a
    add sp, -$5b

jr_00c_61c6:
    ld c, d
    and d
    inc de
    ld d, h
    add l
    ld sp, $4382
    dec l
    ld l, [hl]
    inc b

Call_00c_61d1:
    add a
    add [hl]
    sub h
    push de
    ld c, $a5
    ld [hl-], a
    sbc c
    ld e, a
    add e
    ld l, b
    ld e, [hl]
    ld hl, $3122
    adc c
    ld c, d
    adc d
    and l
    ld h, $95
    ld d, $39
    ld e, l
    ld a, [hl+]
    ld d, c
    sub d
    db $db
    add c
    ld a, [$95a8]
    ld h, $32
    cp b
    adc $90
    sub d
    ret nc

    adc [hl]

jr_00c_61f9:
    jr z, jr_00c_61c6

    adc b
    db $e4
    jp z, Jump_000_2242

    adc [hl]
    ld [hl], $32
    push bc
    and [hl]
    ld c, d
    ret


    ld h, b
    add l
    add [hl]
    dec sp
    ld d, d
    ld [de], a
    or b
    ld d, h
    ld l, d
    dec de
    adc $05
    ld [$a8d7], sp
    sub a
    ld h, b
    jp nz, $931a

    sub c
    add d
    sub h
    push bc
    db $fd
    inc d
    pop bc
    ld h, $21
    ld h, e
    add d
    adc c
    adc d
    jp nz, Jump_00c_49a5

    ld c, h
    ld d, d
    inc d
    inc d
    ldh [$a2], a
    inc hl
    dec c
    ld d, b
    ld b, l
    add hl, de
    ld [$3a89], sp
    ld l, l
    add l
    sub d
    jr nz, @-$2a

    ld d, d
    and d
    ld h, d
    ld [hl], b
    ld d, e
    sub d

jr_00c_6244:
    and a
    ld e, a
    ld d, l
    db $ec
    ld d, h
    inc d
    call $8953
    ld d, d
    xor d
    adc b
    ld d, b
    ld b, l
    ld c, $88
    ld e, b
    ld e, d
    adc [hl]
    rla
    jp nz, $fe1b

    ld e, e
    dec c
    call nc, Call_00c_7822
    add a
    jr jr_00c_6244

    ld d, h
    ld h, l
    and $89
    xor b
    adc d
    rrca
    xor b
    ld d, a
    ret c

    pop af
    ld [hl+], a
    ld l, a
    dec bc
    cp [hl]
    db $fd
    add hl, sp
    sub e
    rla
    jp z, $a692

    ld [hl], a
    jp hl


    adc [hl]
    dec [hl]
    add hl, bc
    ld l, $31
    cp c
    ld d, c
    add [hl]
    xor [hl]
    and e
    sub c
    ld b, [hl]
    scf
    ld e, d
    cp b
    push bc
    adc [hl]
    ld l, e
    db $fc
    inc de
    dec d
    xor e
    push de
    adc a
    ld c, $b7
    ldh a, [$58]
    jp nz, $fd8e

    add sp, $39
    ldh [rNR51], a
    daa
    inc c
    and a
    ld a, [de]
    ld h, h
    and c
    ld d, l
    ld [bc], a
    add $49
    dec d
    dec de
    ld h, b
    ret nc

    ld a, [hl+]
    xor e
    ld e, h
    sbc c
    ld b, b
    sub e
    add [hl]
    db $dd
    sbc h
    add hl, bc
    xor d
    db $10
    ld d, d
    sub a
    ld d, e
    add a
    jp nc, $9860

    ld hl, $231b
    inc bc
    ld b, c
    ldh [$b2], a
    inc [hl]
    sbc b
    ld hl, $9591
    ld b, [hl]
    pop af
    db $10
    ld a, [hl+]
    adc h

Call_00c_62d0:
    add d
    inc d
    add h
    sub c
    add h
    rla
    db $10
    sub c
    inc e
    ld a, [bc]
    db $10
    and e
    sub e
    ld sp, $2010
    cp a
    ld sp, hl
    ld d, c
    add $a1
    ld [bc], a

jr_00c_62e6:
    add l
    ld a, [hl-]
    ld c, d
    ld b, e
    adc h
    sub e
    ld [de], a
    sub b
    sbc d
    or h
    dec hl
    ld d, a
    jr z, jr_00c_6346

    ld c, h
    or c
    or h
    add hl, hl
    and e
    ld de, $22c5
    db $ec
    call nz, $c3a9
    inc e
    ld l, c
    dec hl
    ld b, h
    ld l, l
    rrca
    ld l, $75
    push bc
    and h
    ld [hl], b
    xor e
    ld d, e
    ld d, a
    and [hl]
    ld hl, sp+$44
    and [hl]
    ld a, [hl+]
    or b
    cp b
    inc [hl]
    dec d
    ld d, h
    add d
    ld sp, $84c1
    adc l
    and l
    xor d
    sbc d
    jr z, jr_00c_62e6

    ld a, [hl+]
    ld [hl], c
    ld hl, $2443
    ld b, h
    add sp, $44
    ld b, d
    add d
    ld [$3864], sp
    add hl, sp
    pop bc
    ld h, $72
    ld b, d
    ld sp, $1912
    ld e, $44
    ld [hl], d
    pop bc
    xor e
    sub a
    add sp, -$37
    sub [hl]
    ld d, [hl]
    ld d, $73
    pop hl
    ret z

    ld d, b

jr_00c_6346:
    jp nc, Jump_000_2908

Call_00c_6349:
    ld c, c
    ld l, b
    ld h, a
    ld a, [de]
    sub l
    inc c
    ld b, d
    inc c
    add h
    adc [hl]
    inc d
    cp c
    ld e, $71
    ld hl, $e230
    xor d
    cpl
    ret nc

    ld b, c
    ld l, l
    rlca
    ld b, b
    db $db
    inc e
    dec l
    ld c, $a8
    ld b, h
    call $9015
    xor d
    add [hl]
    call c, Call_00c_5071
    and c
    ld d, b
    ld b, b
    xor d
    ld de, $1f84
    ld a, d
    db $76
    jp z, $5247

    ld sp, $1f74
    ld h, e
    pop af
    ret


    xor c
    ld d, l
    dec d
    xor b
    ld c, [hl]
    inc l
    db $10
    call nz, $cb31
    add h
    sbc d
    jp nz, $fec1

    sbc b
    daa
    ld b, [hl]
    db $10
    ld h, $2d
    sub c
    add d
    add h
    ld a, b
    ld [hl], b
    ld d, b
    jr z, jr_00c_63e7

    adc h
    ld a, b
    nop
    ld b, h
    or h
    ld a, a
    push af
    ld d, b
    ld d, b
    ld c, [hl]
    rlca
    add l
    ld e, h
    dec hl
    ld a, [$85d3]
    adc d
    sbc c
    sbc c
    inc [hl]
    ld e, h
    inc [hl]
    ld a, [hl-]
    dec h
    add c
    ld c, l
    ld e, $be
    ld b, $f4
    dec d
    ld a, d
    call z, Call_000_235e
    call z, $082d
    ld d, e
    ld a, [de]
    add hl, hl
    ld hl, $f121
    ld l, b
    ld d, h
    call $908a
    cp a
    add hl, bc
    ld [hl+], a
    adc d
    and d
    inc de
    ld a, [de]
    sub h
    ld d, e
    ld b, l
    ld [hl+], a
    ld [hl], h
    cp a
    add d
    daa
    call z, $562d
    db $e4
    or l
    adc $0a
    xor a

jr_00c_63e7:
    db $fd
    rra
    ld h, e
    and [hl]
    rst $08
    ld b, $52
    ld d, b
    adc $aa
    and b
    xor d
    adc a
    rla
    ld l, [hl]
    add d
    add hl, bc
    sub $84
    dec d
    ld [bc], a
    adc d
    sbc h
    ld [$bb4a], sp
    db $ec
    jr z, jr_00c_642a

    xor e
    rst $30
    ld d, b
    add hl, hl
    ld c, a
    sbc c
    inc [hl]
    ld b, [hl]
    dec [hl]
    ld b, b
    adc e
    add $8a
    ld c, d
    ld h, d
    rst $10
    db $10
    sub l
    adc a
    sbc d
    and h
    inc h
    ld l, c
    ld c, b
    pop af
    add hl, hl
    add l
    xor l
    ld [hl+], a
    sub l
    ld [hl], c
    add h
    sub [hl]
    xor b
    and d
    sub a
    and [hl]
    ld d, d

jr_00c_642a:
    and c
    jp $a6c2


    ld [hl-], a
    xor c
    adc a
    and l
    ret


    or e
    ld d, d
    ccf
    cp d
    ld [hl], h
    ret z

    ld d, h
    ld d, $a7
    ld b, l
    ld a, [hl+]
    jp $f051


    and b
    ld [hl], a
    cp c
    rra
    ld c, h
    dec d
    ld c, [hl]
    or l
    ld d, l
    ld c, h
    sub b
    or h
    add a
    xor d
    db $d3
    and d
    xor d
    xor e
    jp nc, $d06a

    or l
    ld b, l
    ld d, h
    inc de
    sbc [hl]
    jp nc, Jump_000_045a

    sub h
    ld e, b
    ld l, c
    and d
    db $e3
    and d
    ret nc

    adc b
    xor d
    add sp, $15
    ld b, $89
    ld c, d
    xor a
    db $f4
    db $e3
    or [hl]
    rla
    and b
    ld a, [hl]
    add c
    ld b, $16

jr_00c_6476:
    inc d
    xor d
    ld b, d
    xor b
    db $e4
    add d
    inc b
    jp nz, Jump_000_2604

    jr jr_00c_649c

    ld c, d
    add d
    inc b
    db $e4
    sub b
    ld h, c
    db $fc
    add l
    db $e3
    rrca
    ld d, d
    and e
    xor d
    rlca
    sub [hl]
    add c
    ld l, $22
    add d
    jp hl


    ld b, d
    db $f4
    pop hl
    ld a, b
    add l
    ld h, d

jr_00c_649c:
    ld d, l
    sub $89
    ld c, b
    or [hl]
    adc b
    ld l, l
    add hl, sp
    add hl, hl
    ld [hl+], a
    ld [$c154], sp
    inc c
    add h
    pop bc
    ld d, e
    adc c
    db $e4
    add $a7
    and h
    sbc b
    jr c, jr_00c_6476

    ld d, e
    ld a, d
    ld h, $26
    and b
    and d
    ld l, $45
    and b
    ld d, e
    rrca
    db $d3

jr_00c_64c1:
    ld d, h
    adc d
    adc d
    ld d, a
    adc b
    ld b, [hl]
    dec h
    or l
    and h
    ld e, c
    sub h
    pop de
    ld c, c
    adc e
    sub h
    sub a
    ld [hl+], a
    sub [hl]
    adc b
    sub b
    and [hl]
    add hl, sp
    inc hl
    ld a, [bc]
    adc d
    and e
    add hl, bc
    inc d
    ld h, h
    xor b
    pop de
    ld [$1e23], sp
    ld [hl-], a
    ld b, a
    ld c, b
    or b
    sub c
    adc b
    adc h
    sub a
    ld d, e
    ld h, $33
    ld a, b
    pop bc
    ld c, h
    inc hl
    jr z, jr_00c_652a

    adc e
    ld e, b
    jp $f84b


    xor [hl]
    adc c
    adc h
    push hl
    ld c, h
    ld d, d
    ld e, h
    sub l
    inc b
    ld h, b
    ld d, d
    ld h, d
    db $e3
    add d
    dec d
    add hl, bc
    ld a, [bc]
    xor b
    add hl, sp
    dec b
    sub $61
    adc h
    db $e4
    push de
    ld a, [$1278]
    ld h, d
    xor b
    sub h
    add [hl]
    add l
    dec h
    ld d, b
    sub e
    dec sp
    ld [$8418], a
    ld [de], a
    rst $38
    ld [c], a
    rra
    ld h, d
    ld l, e
    jp c, $5a63

jr_00c_652a:
    db $fd
    jr @+$57

    add [hl]
    ld [hl+], a
    inc e
    xor [hl]
    ld [$2f22], sp
    db $e3
    adc [hl]
    ld a, [hl]
    ld a, [bc]
    ld d, d
    jr jr_00c_64c1

    rst $38
    xor l
    inc b
    ld a, [c]
    ret c

    jp z, $228f

    ld b, $3d
    dec sp
    ld h, e
    cp a
    ld [hl], d
    and [hl]
    ld c, b
    and a
    ld e, d
    ld d, d
    ld h, e
    or d
    ld h, c
    ld c, $a7
    ld b, d
    add hl, bc
    inc a
    and h
    db $eb
    inc sp
    add e
    dec hl
    ld c, $74

jr_00c_655d:
    ld d, e
    ld d, h
    inc l

jr_00c_6560:
    ld h, b
    ldh a, [rHDMA1]
    sub l
    sbc l
    ld [hl-], a
    jr z, @+$57

    add e
    ld d, h
    inc e
    rrca
    sla h
    ld c, d
    and c
    sbc h
    or h
    db $10
    db $f4
    pop hl
    adc e
    jr z, jr_00c_65a6

    ld [$475a], sp
    ret z

    ld h, b
    sbc h
    or h
    ld b, l
    call $f705
    dec bc
    ld e, h
    add hl, bc
    ld d, b
    ld c, c
    ret


    pop af
    ld [hl], $43
    ld e, h
    adc d
    ld d, $08
    ld d, d
    sub c
    ld h, a
    ld a, [hl+]
    sub e
    set 4, e
    ld de, $cf28
    inc [hl]
    db $db
    and b
    sbc h
    dec l
    db $10
    db $ec
    dec bc
    ld a, [hl-]
    dec hl
    ld [de], a
    sub b

jr_00c_65a6:
    and c
    ld [bc], a
    or b
    ld c, c
    cp l
    ld b, d
    ret z

    jp $3434


    sub b
    ret c

    cp d
    jr z, jr_00c_6560

    dec de
    and h
    ret z

    jr nc, jr_00c_655d

    add [hl]
    ld [$82c2], sp
    inc e
    ld a, [hl+]
    and h
    ld h, [hl]
    ld a, [$4038]
    sub b
    adc d
    ld c, l
    or $e1
    jr z, jr_00c_65ec

    jp Jump_000_2750


    inc b
    add h
    add hl, bc
    inc c
    db $d3
    dec d
    dec sp
    ld e, [hl]
    db $fc
    cp h
    jr jr_00c_6621

    ldh a, [$c5]
    ld d, e
    add h
    ld h, a
    sub l
    db $ed
    inc h
    ld h, $e8
    dec h
    sub $31
    rst $00
    ld l, c
    inc a
    ld l, b

jr_00c_65ec:
    add h
    add hl, bc
    dec hl
    dec b
    ld sp, $559c
    inc hl
    ldh a, [$c6]
    ld c, e
    ld l, d
    sub l
    jp z, Jump_00c_54c4

    ld b, [hl]
    ret


    ld c, c
    jr z, @-$0d

    sbc [hl]
    dec bc
    inc d
    and [hl]
    ld d, b
    call nz, $8569
    ld h, h
    ld [hl], c
    and l
    ld [bc], a
    ld b, e
    and l
    cp c
    jr nc, jr_00c_6655

    ld b, d
    sub c
    inc b

jr_00c_6615:
    ld c, l
    inc e
    ld d, $e0
    add [hl]
    sub c
    push bc
    scf
    add h
    jr jr_00c_6678

    ld b, e

jr_00c_6621:
    jr nz, jr_00c_6615

    ld [hl], b
    ld c, a
    ld h, h
    ld e, b
    dec h
    ret nz

    sub e
    sub d
    call nz, Call_000_12d9
    ld l, e
    call c, $a95b
    ld d, d
    ldh [$aa], a
    ei
    or c
    dec l
    inc l
    sbc d
    ret nz

    call nc, Call_00c_62d0
    adc h
    ret nc

    ret z

    dec h
    ld c, e
    dec d
    add e
    inc e
    sbc h
    pop bc
    inc b
    adc e
    db $10
    add l
    db $d3
    inc b
    add hl, bc
    db $e3
    and h
    ld sp, $20e9
    add h

jr_00c_6655:
    ld a, d
    sub l
    rst $00
    ld a, b
    ld b, h
    or a
    ld a, l
    dec d
    ld e, a
    di
    adc c
    inc d
    ld a, $a8
    push de
    push af
    ld a, a
    and b
    add c
    dec l
    ld h, e
    dec d
    ld a, [bc]
    adc b
    ld d, [hl]
    ld a, [de]
    xor d
    inc sp
    ld d, h
    dec d
    xor b
    dec d
    xor d
    xor d
    xor b

jr_00c_6678:
    and a
    ld b, $89
    ld l, b
    db $e3
    and b
    and h
    ld e, d

Jump_00c_6680:
    add hl, sp
    xor l
    jp hl


    adc b
    ld b, e
    ld [hl], h
    ldh [$78], a
    inc h
    sub l
    inc b
    inc l
    cp [hl]
    ld c, h
    and d
    and l
    sub b
    cp b
    xor b
    dec l
    dec h
    ld b, d
    ld h, c
    sbc [hl]

jr_00c_6698:
    rst $38
    add sp, -$7c
    inc h
    ld [hl+], a
    xor a
    ld a, e
    add c
    add d
    db $fc
    jr jr_00c_66b4

    add d
    db $d3
    ld h, $06
    inc b
    dec a
    add l
    ld b, c
    ld h, $31
    ld d, a
    ld a, l
    ret z

    cp a
    ld d, l
    ld d, l

jr_00c_66b4:
    ld [hl-], a
    and c
    xor d
    xor d
    ld a, [hl+]
    xor d
    adc a
    rla
    ld [hl], b
    and a
    ld a, d
    add hl, de

jr_00c_66c0:
    ld c, l
    ld d, c
    call nz, Call_000_12be
    or c
    jp nz, Jump_00c_5183

    ld [hl], $aa
    xor d
    sbc c
    cp h
    ld a, [bc]
    call nc, Call_00c_75fd
    ld d, h
    ld h, b
    or d
    pop de
    dec c
    ld b, h
    or h
    sbc c
    jr nz, jr_00c_66c0

    xor h
    ld h, l
    ld c, l
    dec h
    or h
    sub c
    ld a, [hl+]
    ld l, e
    sbc c
    jr z, jr_00c_6698

    add hl, bc

jr_00c_66e8:
    ld c, l
    ld h, l
    ld b, l
    ld sp, $0f72
    adc h
    ld b, [hl]
    add l
    add hl, hl
    ld c, b
    jp nz, $d1c1

    jr nc, @-$01

    ld c, e
    rla
    ld c, [hl]
    ld b, h
    ld b, d
    sub b
    ld [c], a
    pop bc
    ld sp, $2da3
    adc h
    xor b
    xor b
    xor c
    and a
    ld e, a
    cp a
    sub a
    ld d, c
    pop af
    nop
    ld d, l
    cp b
    ld d, l
    ld d, l
    dec sp
    ld d, a
    ld a, [$0aab]
    and l
    add hl, sp
    rra
    and d
    ret c

    cp d
    db $f4
    db $dd
    db $e3
    inc h
    and l
    ld a, c
    dec bc
    ld c, h
    sbc $4c
    sub d
    and d
    ld h, b
    sub b
    or h
    pop bc
    ld c, [hl]
    jr z, jr_00c_66e8

    ld l, e
    inc b
    and l
    ld [hl+], a
    ret nc

    ld d, h
    ld h, d
    ld h, e
    jr jr_00c_67aa

    pop bc
    inc [hl]
    add d
    and d
    db $d3
    ld l, b
    cp d
    dec [hl]
    adc [hl]
    ld [$c7b8], sp
    ret nc

    ld d, h
    and h
    push bc
    ld d, e
    adc d
    ld b, d
    and e
    ld a, d
    adc [hl]
    rlca
    adc [hl]
    ld a, b
    jp z, Jump_00c_4c88

    ld d, d
    inc de
    rrca
    db $d3
    ld [$3a85], sp
    ld d, $30
    ld c, d
    ld d, e
    ld b, h
    adc c
    ld d, [hl]
    adc h
    sub e
    dec b
    dec sp
    sub e
    dec hl
    ld c, h
    and e
    add c
    adc l
    ld l, l
    ld c, h
    inc hl
    ld d, [hl]
    jr c, jr_00c_67df

    push de
    ld [hl+], a
    ld c, e
    ld e, d
    add hl, sp
    ld [$d5ff], a
    xor b
    jp c, $a570

    and a
    ld h, d
    ld a, [de]
    push de
    ld [hl], e
    xor [hl]
    add hl, bc
    res 0, h
    ld h, c
    cp a
    rst $30
    pop bc
    sbc h
    ld sp, $ff9e
    dec hl
    db $db
    ld h, $88
    and [hl]
    ld e, e
    db $fd
    db $fd
    ld d, a
    or d
    sbc b
    ld h, $a8
    ld a, a
    ld a, c
    ld [hl], a
    ld a, [$9894]
    and h
    rst $18
    sbc $63
    ld a, e

jr_00c_67a9:
    xor c

jr_00c_67aa:
    call nz, $ee87
    ld h, h
    rst $38
    db $e4
    add $d7
    pop hl
    add $9f
    db $fc
    ld h, e
    db $10
    sub e
    ei
    sub [hl]
    and h
    rst $38
    and $71
    add a
    add a
    sbc d
    ccf
    ld sp, hl
    add hl, bc
    add hl, hl
    sub a
    add a
    sbc d
    ld a, a
    ld a, [$f770]
    sbc $4d
    ld de, $e5ff
    ld b, [hl]
    cp b
    ld a, e
    push hl
    xor a
    rst $38
    pop de
    ld d, c
    sbc a
    rst $30
    cp h
    dec bc
    rst $38

jr_00c_67df:
    rst $38
    pop de
    add h
    ld h, d
    cp $df
    rst $38
    rst $38
    db $fd
    inc b
    ld h, a
    inc b
    cp a
    rst $38
    and e
    ld d, l
    ld d, h
    ld [hl], d
    and c
    ld e, a
    cp $99
    and a
    inc l
    ld [$4955], sp
    ld c, b
    ld b, a
    ld h, h
    ld e, h
    ld [hl], b
    add b
    ld b, h
    cp h
    push hl
    ld d, l
    ld d, e
    sbc c
    ld a, [$ada9]
    jr c, jr_00c_67a9

    ld sp, $d386
    ld a, d
    inc sp
    and b
    ld b, e
    adc l
    ld l, e

Jump_00c_6814:
    ld c, l
    cpl
    jp nz, $a13a

    adc a
    ld b, l
    ld c, d
    ld d, e
    sbc d
    and d
    ld hl, $04ad
    xor b
    sub $d1
    or h
    ld d, $89
    ld h, e
    add d
    call nc, $c220
    ld hl, $4a8e
    db $fd
    ld d, [hl]
    adc a
    xor e
    sbc [hl]
    ld [hl], d
    ld e, d
    db $76
    rst $08
    dec e
    ld [$c0e9], a
    sbc d
    rst $18
    and $d0
    ld c, c
    sbc e
    rst $38
    add $f9
    sbc d
    rra
    and $ee
    ld h, h
    pop hl
    db $fc
    ld l, d
    cp $92
    and b
    ld hl, sp+$50

jr_00c_6853:
    and [hl]
    or a
    or h
    ld c, l
    ld sp, hl

Jump_00c_6858:
    add hl, hl
    pop bc
    ld a, [hl]
    sub d
    pop af
    rst $08
    ld e, a
    rst $38
    ld [bc], a
    ld [hl], h
    ld b, a
    reti


    add b
    ld h, [hl]
    add l
    ld d, h
    db $eb
    ld d, h
    db $dd
    daa
    push af
    ld c, c
    cp l
    ld b, c
    ld d, l
    ld d, [hl]

jr_00c_6872:
    cp d
    adc l
    pop de
    adc b
    xor e
    call nc, Call_00c_7a15
    xor d
    xor d
    cp h
    inc de
    ld [hl], h
    ret


    sub $95
    ld [hl], $ad
    ld [hl], $64
    cp d
    ld h, $f4
    inc [hl]
    sub $93
    ld e, c
    ld e, a
    db $f4
    cp d
    adc b
    and h
    adc $0a
    ld e, [hl]
    ld c, e

jr_00c_6896:
    ld e, b
    sbc e
    ld c, l
    and e
    jr c, jr_00c_68c4

    jr c, jr_00c_6853

    ld hl, $53f1
    ld d, h
    pop de
    ld b, c
    adc l
    jr z, jr_00c_6872

    ld a, [c]
    ld d, $37

jr_00c_68aa:
    ld d, b
    adc e
    ld d, c
    and e
    ld b, h
    inc d
    ldh a, [$6f]
    ld e, [hl]
    inc hl
    ret nc

    adc [hl]
    ld b, l
    ld h, d
    add sp, -$56
    inc a
    sub l
    ld c, [hl]
    push af
    jr jr_00c_6896

    dec sp
    jp hl


    ld b, d
    ld [hl-], a

jr_00c_68c4:
    and e
    sbc e
    ld c, l
    ld h, l
    jr nc, jr_00c_691d

    inc h
    and h
    pop bc
    ld c, l
    add hl, de
    ld c, [hl]
    rlca

Jump_00c_68d1:
jr_00c_68d1:
    xor d
    ld e, [hl]
    add hl, sp
    ld d, h
    cp e
    ld c, d
    ld [hl], c
    adc h
    inc h
    xor d
    sub h
    jp z, $2229

    xor e
    add d
    sub h
    add $25
    ret z

    xor c
    ld d, h
    ld a, $33
    ld h, e
    ld [$a152], sp
    ld d, h
    adc $34
    ld h, d
    xor b
    add hl, de
    adc h
    ld l, $1a
    ld d, d
    ld e, b
    push bc
    ld e, b
    or l
    ld h, [hl]
    jp nc, Jump_000_1354

    dec e
    ld h, e
    sbc d
    ld h, d
    dec l
    dec c
    ld [$7e95], sp
    ld a, [hl-]
    jr z, jr_00c_68d1

    xor a
    rst $38
    xor b
    sub $09
    add hl, bc
    sub $82
    ld [hl], c
    and e
    jr nz, jr_00c_68aa

    jr c, jr_00c_6939

    sbc b
    ld b, b
    db $fc
    ld l, a

jr_00c_691d:
    ld c, $97
    ld hl, $115c
    xor h
    add hl, bc
    cp h
    rra
    ld [$1982], a
    ld a, [hl+]
    sbc l
    db $d3
    ld a, a
    rst $38
    add hl, de
    ld c, c
    or h
    sbc e
    ld e, l
    inc c
    ld l, a
    ld a, [de]

Jump_00c_6936:
    or d
    inc c
    add hl, bc

jr_00c_6939:
    ld l, b
    cp [hl]
    sbc e
    ccf
    add hl, de
    ld a, b
    ld a, b
    ld h, $09
    inc e
    db $10
    ret


    sub a
    reti


    sub a
    rst $38
    cp c
    sbc d
    ld c, e
    add [hl]
    ld h, l
    ld b, [hl]
    ld a, a
    add a
    ld sp, hl
    ld [hl], d
    ld b, h
    dec bc
    xor $5b
    ld a, [de]
    cp a
    add a
    ld a, [$4b5a]
    di
    call nz, $bb51
    cp $08
    add $31
    dec [hl]
    ld b, a
    inc hl
    rst $38
    and $d2
    ld [hl], e
    xor e
    rst $38
    db $fc
    inc e
    ld l, b
    sbc h
    ld l, a
    rst $38
    rst $38
    db $e4
    ld c, l
    add hl, de
    ld b, h
    cp a
    and [hl]
    ld a, a
    rst $30
    rst $38
    push hl
    ld c, d

jr_00c_6980:
    ld h, b
    call nz, $fe7f
    sub d

Jump_00c_6985:
    sub c
    ld a, a
    rst $38
    cp $93
    ret nz

    sub [hl]
    sub c
    rst $38
    adc $0f
    adc h
    ld c, l
    rst $28
    rst $38
    ld a, [$0269]
    rra
    ldh a, [$7d]
    rst $38
    xor $57
    rst $18
    ld a, a
    cp $42
    ld c, d
    ld e, d
    ld c, a
    rst $38
    rst $18
    pop af
    inc a
    cp $fd
    ld c, b
    ld b, [hl]
    ld l, h
    ld d, e
    rst $38
    scf
    db $fc
    ld b, e
    rst $38
    rst $38
    jp hl


    and e
    rla
    ld a, a
    ld a, $1f
    ld a, h

jr_00c_69bb:
    rst $38
    rst $38
    db $fc
    ld l, e
    jr jr_00c_6a00

    dec c
    pop hl
    srl a
    rst $38
    ldh a, [rBGP]
    inc sp
    jr jr_00c_6980

    rst $38
    db $fd
    add h
    ld a, b
    pop de
    ld sp, $44c0
    or d
    ld l, c
    ld c, d
    ld a, l
    dec b
    di
    add c
    ld e, l
    ld c, b
    ld b, e
    add sp, -$1f
    adc c
    rst $38
    ld l, c
    jr c, jr_00c_69bb

    add $8e
    add a
    adc h
    add sp, $75
    inc [hl]
    ld d, e
    scf
    db $ed
    ld l, b
    and $78
    sbc d
    di
    daa
    adc b
    ld c, c
    ld d, e
    adc [hl]
    adc b
    ld h, b
    ld b, [hl]
    adc [hl]
    ld a, [hl-]
    ld d, $25
    pop hl

jr_00c_6a00:
    ld [hl], h
    jp c, Jump_000_2dda

    rla
    adc d
    or h
    cp b
    push de
    or d
    add sp, $2c
    sbc b
    pop bc
    ld l, d
    ld [$54f4], a
    push bc
    ld hl, $d268
    or a
    push de
    ld a, [hl+]
    and e
    sbc d
    and e
    push bc
    sbc c
    inc [hl]
    add hl, bc
    ld c, h
    ld b, d
    ld a, [de]
    ld [hl], c
    and l
    ldh a, [$fe]
    ld [hl], c
    call nc, $13af
    ld b, a
    dec de
    rst $38
    rst $20
    ld [hl+], a
    ld d, l
    rst $38
    ld a, [$a670]
    dec [hl]
    ld [hl], l
    xor c
    jp nc, $ff91

    jp hl


    push de
    ld a, a
    ld sp, hl
    adc h
    ld h, a

jr_00c_6a41:
    rla
    ld a, a
    and $11
    ld l, a
    sbc d
    ld d, b
    ld h, l
    push bc
    ccf
    add $f9
    ld d, c
    dec bc
    db $fc
    sbc h
    or c
    dec d
    ld h, c
    ld de, $0211
    ld [hl], b
    ld hl, $111c
    add hl, bc
    ldh a, [$e0]
    ld [hl], a
    cp a
    ld c, $7f
    db $d3
    pop de
    ld d, h
    sbc [hl]
    ld d, h
    ld a, [c]
    ld e, e
    add sp, -$56
    xor [hl]
    db $d3
    pop bc
    ld d, l
    sub l
    db $fc
    push bc
    add hl, bc
    ld h, h
    db $ed
    ld a, d
    xor b
    ld d, h
    pop bc
    dec b
    sub h
    scf
    and h
    jp hl


    ld h, h
    jp nz, $9ba4

    ld b, [hl]
    dec de
    ld c, b

jr_00c_6a85:
    adc [hl]
    cp c
    ld l, $53
    ld [hl], h
    ld e, b
    ld [$d9a8], a
    ld l, c
    ld sp, $9a8e
    scf
    add d
    add c
    ld c, a
    dec l
    daa
    ld [$088a], sp
    pop af
    and c
    ld d, e
    ld e, [hl]
    add c
    ld [hl], e
    or e

jr_00c_6aa2:
    jp Jump_000_2808


    ld [c], a
    ld [hl], e
    or d

jr_00c_6aa8:
    sub l
    ld hl, $5348
    dec h
    ld [hl+], a
    add d
    ld a, [hl-]
    jr jr_00c_6a41

    ld b, d
    add sp, $13
    rlca
    ld b, l
    jr jr_00c_6aa2

    ld e, h
    ld d, c
    adc c
    ld d, b
    ld l, d
    sub d
    and d
    ld [hl], e
    sbc [hl]
    xor [hl]
    adc h
    jr nz, jr_00c_6aa8

    ldh [rBCPS], a
    db $ed
    cp d
    inc d

jr_00c_6acb:
    and h
    add h
    jp nz, Jump_000_2125

    ld a, [hl-]
    jr z, jr_00c_6af1

    jr jr_00c_6b2e

    ld b, c
    ld sp, $2a68
    dec sp
    dec d
    inc hl
    add [hl]
    ldh a, [$cc]
    inc hl
    cp c
    ld h, $8c
    jr nz, @-$5b

    add $f5
    daa
    xor $37
    adc [hl]
    db $eb
    ld d, e
    jr z, jr_00c_6a85

    ld b, l
    ld h, e

jr_00c_6af1:
    jp nz, Jump_00c_5454

    ld [de], a
    ld e, b
    adc d
    inc a
    ld l, d
    rst $38
    cp a
    ld h, e
    pop de
    xor d
    ld a, $63
    ld a, l
    db $d3
    ld d, h
    sbc h
    ld a, [de]
    add $8d
    ld c, c
    cp h
    ld e, h
    ld l, b

jr_00c_6b0b:
    add l
    ld de, $9d62
    ld d, c
    pop bc
    jr nc, jr_00c_6b58

    call nc, $29b1
    add hl, bc
    sub d
    sub e
    jr z, jr_00c_6acb

    and d
    or b
    ld l, $67
    call z, Call_00c_51a3
    sub h
    ld sp, $4274
    inc d
    ld c, l
    sbc b
    inc hl
    inc c
    inc c
    inc d
    ld l, c

jr_00c_6b2e:
    inc l
    ld h, a
    and [hl]
    ld [hl], $95
    ld h, b
    or b
    ret nc

    ld b, c
    daa

jr_00c_6b38:
    adc c
    inc e
    db $10
    ld d, h
    ld [hl], h
    and a
    ld [de], a
    ld h, a
    ld h, a
    ld c, [hl]
    ld [hl], b
    ld h, e
    ld a, [hl+]
    ld a, c
    ld l, c
    sbc l
    add d
    ld d, d
    ld [hl], l
    and h
    jp nz, $b2f1

    inc l
    db $76
    ld b, e
    add h
    ld [$06a7], sp
    or b
    daa

jr_00c_6b58:
    ld b, a
    rla
    ld [hl], c
    cp h
    inc [hl]
    inc c
    ld l, e
    ld b, [hl]
    ld e, d
    ld l, $44
    ld e, $65
    ld sp, $090c
    or l
    jr jr_00c_6b0b

    db $f4
    ld e, [hl]
    ld [hl], c
    ld l, h
    ld [hl], e
    and c
    inc c
    ld l, d
    sbc [hl]
    dec [hl]
    ld h, [hl]
    db $db
    jr @-$52

    ld [$0b67], sp
    ld c, c
    jr jr_00c_6b38

    inc c
    ld a, [de]
    ld [$ab2a], sp
    pop de
    db $10
    ld b, a
    ld [de], a
    add hl, hl
    ld [hl], b
    inc h
    and e
    and e
    dec c
    ld h, c
    ld h, l
    ld a, [hl+]
    and [hl]
    db $f4
    ld h, l
    ld a, [bc]
    ld [$42d2], sp
    inc c
    add hl, hl
    ld sp, $c751
    push bc
    ld h, d
    adc d
    ld c, d
    ld b, h
    inc [hl]
    ld c, d
    ld d, d
    ld [hl], d
    ld d, d
    ld h, a
    adc d
    ld [hl-], a
    inc d
    ld h, c
    ld a, [hl+]
    sbc h
    ld hl, sp+$24
    ld a, [hl+]

jr_00c_6bb1:
    ld c, [hl]
    ld d, h
    ld a, [hl+]
    sbc [hl]
    inc c
    inc c
    jr jr_00c_6be6

    sbc [hl]
    sub h
    ld sp, $47b5
    call nz, Call_00c_4400
    cp h
    ld b, [hl]
    sub l
    jp nc, Jump_00c_4e1f

    inc l
    dec de
    or b
    ld b, d
    sbc b
    ld [hl+], a
    ld e, h
    ret


    add hl, bc
    cp [hl]

Jump_00c_6bd1:
    add hl, de
    adc b
    ld c, c
    or e
    jr jr_00c_6c39

    ld [hl+], a
    ld h, d
    ld l, d
    ld d, e
    add hl, sp
    inc b
    or l
    push af
    ld c, d
    sub e
    ld [hl], $25
    sbc b
    ld d, a
    ld c, e

jr_00c_6be6:
    adc h
    db $e4
    ld h, b
    ld c, d
    jp $8c30


    ld a, [c]
    inc a
    ld d, $da
    dec e
    jr c, jr_00c_6c15

    ld b, l
    sub b
    adc d
    adc [hl]
    ld d, $3a
    jp nc, $d1d2

    sub d
    ld d, e
    ld c, $23
    dec c
    ld a, [hl+]
    ld b, l
    adc b
    ld c, l
    push hl
    sub h
    ld l, h
    add l
    and e
    sbc d
    xor d
    and e
    call z, $aa9c
    ld l, [hl]
    and [hl]
    ld d, d
    ld b, l

jr_00c_6c15:
    jr nz, jr_00c_6bb1

    cp a
    and h
    rst $38
    sub e
    cp $64
    or l
    db $ec
    ld b, l
    pop de
    ld d, h
    ld h, l
    ei
    di
    db $10
    xor d
    dec c
    inc h
    add $17
    ld [hl], $47
    rst $08
    xor $0c
    sbc d
    ld d, e
    add e
    ld a, [hl]
    pop bc
    rst $38
    or b
    ld b, [hl]
    ld c, c

jr_00c_6c39:
    ccf
    rst $38
    ld d, e
    rst $38
    jp $f816


    pop bc
    rst $38
    add e
    rst $28
    rst $38
    add $51
    ld e, a
    rst $30
    ld a, d
    call $bdf1
    ei
    inc b
    ei
    rlca
    pop af
    adc e
    push hl
    dec sp
    inc sp
    rst $28
    ld [hl], $31
    ld [hl], l
    ld b, h
    ld e, d
    inc de
    di
    sub $2c
    ld [hl], b
    ld b, e
    rlca
    ld d, h
    ld [$c547], sp
    nop
    ld [hl], a
    cp [hl]
    push hl
    ld e, a
    push af
    inc a
    rst $20
    xor c
    ld d, b
    sbc b
    ld a, [c]
    sbc $17
    xor d
    ld [hl+], a
    inc a
    sbc d
    dec d
    dec h
    ld c, l
    ld h, d
    and e
    and [hl]
    add [hl]
    ld h, l
    jr jr_00c_6c9c

    add l
    ld e, a
    db $eb
    pop af
    ld d, e
    sbc d
    ld b, [hl]
    adc b
    cp a
    jp hl


    xor e
    and e
    ld a, [hl-]
    xor $39
    ld l, b
    ret


    add l
    ld b, d
    ld d, d
    jr z, @+$6a

    rra
    xor $4d

jr_00c_6c9c:
    xor b
    inc d
    pop bc
    cp b
    add h
    jr z, jr_00c_6cf9

    jr @+$5c

    and d
    dec hl
    sub e
    sbc c
    ld h, d
    ld [$815a], a
    adc b
    and e
    ld a, [de]
    push hl
    ld d, e
    ld [hl], l
    ld h, $2a
    ld hl, $a449
    ccf
    ld d, d
    and $bf
    ld b, c
    ld c, [hl]
    inc b
    ld de, $f446
    add l
    sub b
    ld b, e
    add hl, bc
    ld sp, $266a
    adc c
    sub e

jr_00c_6ccb:
    ld a, [hl+]
    ld b, [hl]
    ld a, b
    adc d
    ret c

    ld [hl+], a
    ld [hl], h
    ld [de], a
    inc d
    ld [hl+], a
    jr z, @+$2a

    ld d, h
    ldh [rSCY], a
    jp nc, $a060

    and b
    ld b, d
    and c
    add [hl]
    add hl, hl
    add d
    db $e4
    ldh [$c2], a
    ld b, d
    dec d
    rlca
    and b
    ld d, d
    ld e, l
    inc b
    push bc
    adc h
    cp l
    and d
    cp c
    adc c
    ld l, [hl]
    ld h, a
    adc c
    sub h
    jr nz, @-$1b

jr_00c_6cf9:
    dec bc
    ld c, h
    or l
    xor d
    ld hl, $61b2
    ld hl, sp-$3a
    ld h, h
    jr c, jr_00c_6ccb

    ld d, e
    inc d
    ld d, b
    sub $fe
    ld l, d
    ld b, c
    dec [hl]
    xor d
    adc [hl]
    ld l, b
    jr nc, jr_00c_6d6a

    sbc d
    ld [hl+], a
    ld d, e
    xor [hl]
    sub d
    and h
    add hl, hl
    add l
    ld d, $1a
    ld [hl+], a
    db $d3
    xor d
    ld d, d
    ld [$a423], a
    dec h
    ld l, h
    sbc b
    db $ec
    cp l
    ld d, l
    ld c, h
    sbc d
    cp c
    inc a
    add hl, sp
    ld a, [bc]
    adc l
    ldh a, [$b3]
    jp $c6b4


    ld [hl], l
    ld b, $4f
    ld e, $f5
    ld d, a
    add [hl]
    or l
    ld b, e
    inc a
    adc d
    xor b
    add $a3
    db $e3
    daa
    call c, $aea3
    ld a, d
    ld d, b
    and b
    rst $18
    ld e, $7a

jr_00c_6d4e:
    add l
    push af
    pop af
    adc d
    ld d, d
    ld [hl], l
    ld b, d
    pop af
    rrca
    rlca
    ld h, $3a
    ld b, a
    sbc l
    jr nc, jr_00c_6d4e

    call nz, Call_00c_4ab6
    ld a, [hl-]
    add h
    cp c
    add hl, bc
    ld c, c
    pop bc
    ld c, $95
    inc c

jr_00c_6d6a:
    ld b, h
    dec d
    ld de, $e0af
    db $f4
    or h
    ld [hl], c
    and $b0
    ld a, [hl+]
    adc d
    ld hl, sp+$5d
    ld h, b
    jp $bcb9


    dec c
    jr jr_00c_6db2

    adc a
    cp $85
    ld [hl+], a
    adc a
    sub a
    ld l, h
    sbc d
    and $49
    ld [$bffc], sp
    ld b, c
    ldh [$a3], a
    rla
    ld a, d
    sub b
    sub a
    sbc b
    add hl, hl
    add hl, sp
    ccf
    ld a, [bc]
    and h
    ld e, b
    and [hl]
    scf
    add h
    add hl, hl
    db $10
    ld h, [hl]
    xor [hl]
    jp z, $b018

    ld [hl-], a
    ld [$425a], sp
    sub e
    db $10
    xor c
    jr z, jr_00c_6e1e

    ld [hl-], a
    ld c, a
    inc de
    ld h, $18

jr_00c_6db2:
    db $e3
    dec hl
    and h
    and c
    ld a, [hl]
    ld h, e
    jp nz, $299c

    add hl, de
    add hl, de
    ld d, a
    ld b, l
    ld sp, hl
    add h
    ld [hl-], a
    add hl, bc
    cp d
    ld [$4256], a
    dec c
    db $10
    add e
    add hl, sp
    adc h
    ld b, h
    ld e, h
    pop hl
    xor c
    ld d, $61
    and c
    and [hl]
    sub b
    ld b, a
    ld l, $1d
    ld c, c
    jr z, jr_00c_6e46

    ret nz

    add h
    ld h, a

jr_00c_6dde:
    ld h, $d4
    ld h, e
    ld [bc], a
    or h
    ld c, e
    ld d, b
    ldh [$9d], a
    adc d
    ld e, d
    rrca
    ldh a, [$e3]
    ld hl, $2791
    ld l, d
    ld h, e
    ld b, h
    or d
    jr nc, jr_00c_6dde

    inc d
    sbc l
    sub d
    ld l, e
    ld a, [hl]
    and b
    add h
    ld a, b
    ld d, b
    ld b, h
    and [hl]
    rra
    db $f4
    rst $20
    adc e
    ld b, $62
    pop hl
    sub e
    ld b, c
    ld e, $32
    ld d, e
    jp nz, $9e93

    ld b, h
    dec e
    ld e, b
    ld b, h
    pop bc
    ld c, c
    ld hl, sp+$20
    ld b, h
    and c
    rst $38
    ld c, e
    ld b, l
    db $d3
    ld d, a

jr_00c_6e1e:
    adc c
    and l
    ld a, l
    rst $30
    ld a, a
    call nc, Call_00c_61d1
    and e
    ld e, d
    jp z, $1152

    ld h, d
    dec d
    ld d, l
    ld d, l
    ld [hl-], a
    or l
    ld a, a
    rst $38
    xor d
    and h
    ld a, [hl+]
    db $f4
    add $0a
    adc l
    ld h, d
    and e
    ld [c], a
    db $e4
    sbc $36

jr_00c_6e40:
    adc b
    sub d
    jp nc, $3455

    adc e

jr_00c_6e46:
    ld c, b
    ld a, c
    dec d
    dec bc
    sub e
    inc d
    and l
    ld sp, hl
    ld l, c
    ld d, h
    adc d
    call z, $a26a
    ld a, [hl+]
    adc b
    ld d, l
    add hl, sp
    ld l, d
    adc d
    ld d, h
    push hl
    cp b
    ld l, [hl]
    jr @-$0c

    db $e4
    db $eb
    sbc b
    ld [hl+], a
    ret


    or e
    rst $38
    add sp, $2e
    xor b
    dec h
    ld c, c
    adc a
    db $fd
    ei
    rst $38
    or d
    ld l, a
    ld e, a
    or h
    rst $38
    push af
    ld d, $99
    db $dd
    ld e, h
    ld b, h
    ld l, e
    rra
    ld d, $9c
    ret


    sub l
    dec de

jr_00c_6e82:
    ld sp, hl
    add hl, hl
    adc h
    ld d, d
    ld h, d
    pop af
    inc c
    sbc b
    ld b, l
    ld a, [$3493]
    ld b, l
    ld h, [hl]
    ld [de], a
    ld b, e
    ld b, h
    inc h
    ld [hl], h
    sbc h
    or $93
    ld [bc], a
    sbc h
    xor a
    dec bc
    and c
    ld b, a
    inc a
    ld c, h
    ld a, c
    ldh [$66], a
    cp h
    ld d, $a4
    ld a, [c]
    sbc b
    xor b
    ld a, [c]
    inc de
    adc $63
    dec b
    ld d, l
    ld e, d
    sub e
    ld h, a
    db $d3
    ld b, $8b
    ld l, [hl]
    adc h
    jr jr_00c_6e40

    push af
    ld b, l
    pop hl
    and l
    ld b, l
    ld [hl-], a
    and e

jr_00c_6ec0:
    add c
    ld b, [hl]
    xor a
    ld c, c
    jp c, $e7b8

    ld c, d
    and e
    dec e
    ld e, l

jr_00c_6ecb:
    ld hl, $4125
    ld d, l
    ld d, e
    add hl, hl
    ld h, $8c
    ld h, h
    ld [hl+], a
    and l
    push bc
    inc hl
    ld hl, $1692
    adc d
    xor h
    jp z, $c15f

    ld e, e
    ld b, d
    ld [hl+], a
    ld [hl+], a
    add hl, bc
    ld [hl-], a
    and e
    adc [hl]
    and e
    jp z, $fc55

    inc d
    sbc $30
    and b
    ld c, h
    ld d, a
    xor d
    add c
    ld a, b
    ld d, d
    ld [de], a
    ld de, $ea4c
    jr nc, jr_00c_6e82

    ld a, [hl+]
    add hl, de
    ld h, d
    ld [hl-], a
    db $10
    ld d, d
    inc hl
    ld a, [bc]
    jr nc, jr_00c_6ec0

    jp nc, Jump_000_0913

    sub l
    ld b, d
    ld l, $48
    ld a, b
    sub l
    ld b, d
    add c
    ret z

    ld c, l
    sub l
    dec [hl]
    ld d, l
    cp $72
    ld l, d
    ld sp, hl
    inc sp
    ld h, d
    inc hl
    ld e, d
    adc d
    or h
    ld e, [hl]
    ld h, $4b
    ld h, d
    sub d
    db $e3
    add d
    ld hl, sp-$26
    cpl
    and d
    ld [hl], e
    adc c
    rst $38
    ld d, a
    ei
    ld [hl+], a
    sub l
    ld d, l
    adc b
    ld l, l
    scf
    and d
    ld l, d
    dec b
    adc d
    ld l, d
    jr nc, jr_00c_6ecb

    dec [hl]
    ld d, d
    ld l, [hl]
    sub d
    jr jr_00c_6ecb

    and [hl]
    add hl, sp
    ld h, b
    add l
    ld [c], a
    ld l, d
    ld a, [hl+]
    dec d
    adc [hl]
    adc e
    db $f4
    ldh [$a3], a
    ld c, c
    pop hl
    ld l, [hl]
    ld a, c
    ld l, e
    rst $38
    rst $00
    sub b
    cp a
    or $79
    rrca
    rst $38
    pop bc
    inc h
    cp e
    ld h, $f1
    sbc [hl]
    rst $38
    pop af
    rrca
    rst $38
    ld sp, hl
    ld a, b
    ld c, b
    dec h
    ld a, [$bf28]
    push af
    dec hl
    rst $38
    rst $38
    ldh [$a4], a
    ld d, [hl]
    sub c
    inc b
    ld d, l
    inc b
    adc a
    xor a
    rst $38
    rst $38
    rst $38
    push de
    ld h, l
    ccf
    and $0e
    sub c
    and c
    ld a, e
    jp nz, $7c8f

    ld d, e
    inc d
    db $fc
    ld d, l
    add h
    add hl, bc
    dec sp
    ld h, c
    inc hl
    ld hl, $82fa
    ld de, $1182
    sbc h
    jr nc, @+$2a

    ld a, e
    add [hl]
    ld b, [hl]
    ccf
    ld sp, hl
    sub h
    ld [hl], e
    ld hl, sp-$1c
    ld h, h
    ld [hl], a
    sbc c
    ld h, $ca
    adc e
    ccf
    ld l, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, h
    ld h, e
    ld [bc], a
    ld h, d
    db $dd
    db $10

Jump_00c_6fb4:
    db $db

Call_00c_6fb5:
    cp $46
    ld b, [hl]
    add hl, sp
    and h
    ld h, e
    ld d, a
    rrca
    db $db
    or $46
    ld b, [hl]
    add hl, sp
    ld de, $2a82
    sub b
    call nz, $f841
    ld a, a
    xor $c4
    cpl
    jp hl


    ld [de], a
    ld d, d
    rst $38
    add d
    ld c, d
    cp a
    rlca
    rst $18
    rst $38
    db $f4
    cp a
    ld a, [$dda4]
    pop bc
    ld d, $fc
    db $10
    sbc $b5
    pop af
    ccf
    ld a, a
    pop af
    jp $8df1


    cp $94
    ld hl, sp+$7f
    sbc h
    ld [hl], c
    and l
    inc d
    xor a
    ld hl, sp-$5f
    add hl, hl
    jp $830c


    ld a, [hl-]
    ld c, $bd
    ld d, l
    ld l, a
    rst $00
    inc e
    ld e, e
    db $fc
    rra
    pop af
    cpl
    cp $9c
    sub d
    ld [$113f], sp
    db $76
    ld e, a
    db $fc
    ld [hl], h
    rst $38
    inc e
    ld d, $11
    push de
    inc c
    db $76
    add b
    ld b, h
    cp c
    inc d
    ld e, a
    ld c, [hl]
    ld [hl], a
    xor l
    ld b, [hl]
    call z, Call_000_2195
    ld d, l
    ld c, d
    ld d, d
    inc de
    rra
    xor [hl]
    db $e4
    ld a, [hl+]
    ld d, d
    xor d
    inc sp
    or a
    adc b
    and d
    dec l
    ld h, e
    add d
    adc d
    ld e, l
    inc d
    add [hl]
    sub e
    adc c
    ld b, [hl]
    and c
    ld h, d
    ld h, e
    ld [hl], a
    adc c
    add l
    jr c, jr_00c_705e

    xor $30
    add d
    jr c, jr_00c_705b

    dec bc
    ld d, b
    ld d, d
    db $e3
    add d
    cp a
    ld e, a
    ldh [$62], a
    add hl, hl
    add hl, sp
    ld l, d
    ret z

    ld e, a
    add sp, -$1a
    cp $1f
    di
    and c
    rst $10

jr_00c_705b:
    xor d
    or e
    sbc [hl]

jr_00c_705e:
    and e
    call z, $c2de
    ld b, d
    ld [hl], c
    ld h, $4c
    add $7c
    xor b
    ld [hl], h
    ld d, d
    or l
    ld [hl], $67
    inc bc
    dec c
    ld [bc], a
    ld b, [hl]
    add d
    or h
    ld l, e
    ld [de], a
    and c
    db $f4
    dec d
    ld b, a
    ld [hl+], a
    adc l
    ld a, l
    call z, $ab9b
    call nz, $c6e4
    add sp, -$34
    ld e, [hl]
    dec [hl]
    inc l
    ld l, c
    ld e, d
    and l
    ld b, h
    pop de
    pop bc
    dec b
    ld b, l
    ld b, l
    ret


    db $d3
    ld b, b
    add sp, -$4e
    ld [hl], e
    ldh a, [rSTAT]
    adc [hl]
    ld de, $fccf
    ld a, h
    ld e, b
    ld [hl], a
    cp h
    dec d
    ld d, b
    ld l, d
    sub e
    cp l
    dec [hl]
    and d
    ld h, d
    ld a, [de]
    call Call_000_37b5
    ld b, l
    dec l
    adc c
    ret


    adc [hl]
    inc [hl]
    inc h
    adc $14
    ld d, d
    ld d, e

Call_00c_70b8:
    ld c, b
    db $e4
    add [hl]
    ld d, d
    jp nc, Jump_00c_4851

    adc d
    ld a, h
    add h
    push hl
    adc c
    sub h
    ld d, e
    inc h
    adc c
    ld d, $26
    add hl, sp
    jp nc, $d1e8

    ld h, $63
    jp nc, $914a

    ld h, e
    adc $94
    sbc d
    dec a
    ld a, [hl-]
    ld d, e
    or d
    dec h
    ld d, l
    ld l, $8d
    add hl, hl
    ld c, [hl]
    ld [hl], h
    xor b
    add a
    dec hl
    ld [$eacb], sp
    dec sp
    and c
    and d
    ld h, c
    ld c, l
    add hl, hl
    ld c, [hl]
    ld e, b
    add $4b
    sub b
    or e
    ld a, a
    adc $da
    ld a, [hl+]
    inc d
    db $d3
    push af
    inc a
    ld c, h
    ld a, b
    pop hl
    cp h
    ldh [$4e], a
    inc h
    ld [hl], e
    ld b, l
    ld l, d
    dec sp
    ld d, h
    sub [hl]
    inc c
    rst $08
    call nc, $8ce7
    dec de
    ret


    add l
    dec h
    ld d, h
    ld e, d
    adc [hl]
    add h
    xor b
    jp z, $c285

    xor e
    adc $c4
    sbc l
    ld d, [hl]
    ld sp, $1863
    di
    ld e, b
    adc $4e
    adc b
    sub [hl]
    xor c

Call_00c_7129:
    dec l
    sub e
    dec [hl]
    adc [hl]
    or [hl]
    ld l, $26
    ld [hl], $93
    and c
    ld b, $32
    ld b, [hl]
    ld hl, $6333
    and d
    adc l
    sub d
    sub d
    sub h
    add hl, sp
    inc a
    ld h, h
    jp nz, $28bc

jr_00c_7144:
    sbc h
    di

jr_00c_7146:
    db $e4
    sub [hl]
    adc [hl]
    ld e, c
    ldh [$2d], a
    cpl
    ld d, h
    sbc l
    ld sp, hl
    and e
    db $10
    or b
    xor l
    ld b, [hl]
    call nc, $b69a
    add hl, sp
    ld a, h
    ld b, [hl]
    jr nc, jr_00c_7144

    inc e
    ret


    sbc h
    jr c, jr_00c_7146

    and $99
    ret


    ld hl, $564a
    ld c, [hl]
    add hl, sp
    ld [de], a
    ld c, e
    jp nc, Jump_000_2ce7

    sub c
    ld c, d
    and $59
    ld d, $83
    ld de, $3e47
    ld h, c
    ld a, [de]
    ld h, h
    sbc $42
    sbc l
    add hl, sp
    ret


    and h
    jp c, $d3f1

    add hl, de
    ld c, d
    ld h, e
    ld c, d
    ld [hl], a
    and [hl]
    cp a
    and [hl]
    ld d, h
    and a
    ld e, h
    ld c, d
    ld b, d
    ld c, l
    ld a, [$4a69]
    ld [hl], e
    ld h, l
    ld e, c
    ld de, $e92f
    add l
    add hl, hl
    ret nc

    sbc b
    ld e, b
    db $e4
    ld e, a
    and $b4
    and a
    ld h, $63
    ld l, [hl]
    ld c, l
    ld a, a
    ld a, [de]
    xor b
    ld d, c
    jp $d199


    cpl
    ld a, [$4465]

jr_00c_71b4:
    add hl, hl
    push bc
    sbc h
    ccf
    jp hl


    jp nz, Jump_00c_6fb4

    sbc h
    ld d, a
    pop af
    sub d
    call nc, $e672
    ld c, d
    ld b, e
    cp $98
    ret nc

    xor c
    call Call_000_3c25
    add hl, bc
    scf
    pop af
    ld a, [bc]
    xor e
    rst $00
    ld d, [hl]
    sub b
    db $e4
    ld h, h
    ccf
    adc e
    push af
    ld d, d
    sbc l
    ld a, [hl]
    ld b, h
    ld b, h
    ld b, e
    call nz, $8c39
    sbc l
    ld l, $5a
    sub c
    inc d
    push hl
    xor d
    ld [de], a
    ld [hl], h
    ld h, h
    inc [hl]
    ld b, h
    sub d
    rst $30
    db $10
    add sp, -$43
    dec e
    jr jr_00c_7227

    add l
    adc e
    rlca
    sub c
    ld de, $9d55
    rra
    add hl, de
    ld hl, sp+$43
    ld h, [hl]
    ld c, [hl]
    ld [hl], h
    add $de
    ld c, l
    xor d
    xor a
    ld d, d
    sbc [hl]
    ld l, $63
    db $f4
    ld c, d
    pop de
    rst $20
    ld c, d
    xor a
    inc e
    ret nz

    ld b, h
    add l
    ld c, e
    ld d, d
    call nc, $94e1
    ld d, c

jr_00c_721d:
    and h
    jr jr_00c_71b4

    adc $2a
    adc e
    adc c
    ld h, e
    ld e, b

jr_00c_7226:
    and a

jr_00c_7227:
    ld [hl], $5a
    ld sp, $8e89
    jr z, jr_00c_721d

    adc h
    and e
    sub a
    ld d, e
    pop bc
    adc $e6
    ld sp, $5c4e
    adc $39
    and h
    or [hl]
    add hl, sp
    sub l
    dec l
    ld d, [hl]
    ld sp, $aa64
    scf
    ld b, c
    sub b
    ld h, d
    add hl, hl
    add hl, sp
    ld [hl+], a
    inc hl
    ld a, [de]
    inc a
    cp d

jr_00c_724e:
    cp $8a
    rrca

Call_00c_7251:
    xor b
    jr nz, jr_00c_724e

    ld d, d
    ld d, a
    adc l
    db $eb
    jp Jump_000_076f


    cp d
    add d
    ld e, a
    sub e
    ld d, b
    jr z, jr_00c_7226

    ld a, l
    ldh [$a9], a
    ld c, a
    sub d
    pop de
    add h
    ld b, a
    rst $30
    sbc b
    ld a, b
    ld sp, $e6c5
    rla
    sbc h
    sbc [hl]
    ld h, b
    ld sp, hl
    ret


    ld a, [hl]
    sub a
    rst $20
    dec sp
    sub e

jr_00c_727b:
    rlca
    sbc h
    xor a
    jr jr_00c_72da

    ld [hl], c
    db $db
    jr jr_00c_72fd

    call Call_000_2f69
    ld a, [bc]
    sub b
    sub d
    sub [hl]
    cp a
    call nz, $fedf
    ld l, $2f
    ld l, d
    ccf
    ld a, [bc]
    ld h, a
    ld l, a
    ld l, a

jr_00c_7297:
    dec bc
    ld e, e
    db $e3
    rra
    ld c, $55
    or b
    sub e
    ld e, c
    ld a, [hl-]
    sub h
    sub $93
    sbc l
    ld e, c
    ld c, h
    ld d, [hl]
    ld l, c
    ld c, [hl]
    ld b, l
    ld [hl+], a
    and l
    cp a
    ld h, a
    ld [hl+], a
    sub e
    adc d
    ld b, [hl]
    and l
    ld a, l
    ld a, c
    ld c, b
    ld b, d
    db $f4
    ldh [$ae], a
    ld d, l
    and c
    ld a, l
    ld sp, hl
    rst $30
    adc h
    rst $28
    ld d, d
    jr nc, jr_00c_7297

    ld h, d
    cpl
    add l
    adc [hl]
    ld a, [bc]
    cp $a8
    sbc d
    xor b
    sbc a
    ld c, l
    ld e, c
    ld a, [hl+]
    jr jr_00c_727b

    and h
    sub l
    ld c, l
    ld d, $2a
    ret nc

jr_00c_72da:
    adc c
    add d
    sub e
    or [hl]
    ld c, $25
    sub d
    db $e3
    ld c, d
    jr nc, jr_00c_7336

    call z, $a468
    ret


    jr nc, @+$7c

    dec b
    sub e
    inc b
    sub h
    jp z, $d2a2

    ld [de], a
    inc h
    ld l, d
    adc c
    call z, Call_00c_4ca9
    sub b
    adc b
    ld [hl], h
    ld a, [hl+]

jr_00c_72fd:
    ld hl, $d47f
    sbc e
    rst $18
    push de
    and b
    sub d
    db $eb
    db $db
    ld e, d
    xor a
    add $aa
    ld [hl+], a
    ld d, $e4
    sub h
    dec l
    ld l, l
    add hl, hl
    and e
    ld e, c
    and [hl]
    add hl, bc
    ld d, c
    xor l
    ld e, b
    ld d, $8e
    ld a, [hl+]
    inc sp
    ld d, a
    ld l, b
    ldh a, [$f8]
    rst $10
    ld h, c
    and a
    sub c
    sbc e
    and a
    ld b, a
    ld c, b
    ld h, $38
    jp z, $c909

    ret c

    ld b, b
    jp $e48a


    ld b, b
    sbc h
    or [hl]

jr_00c_7336:
    db $10
    call nc, $a5bc
    ld b, b
    or c
    rst $00
    ld [hl], d

jr_00c_733e:
    sub e
    add e
    add d
    adc [hl]
    or c
    and [hl]
    add d
    ld c, h
    dec e
    and b
    add h
    ld b, l
    ld c, $70
    ret nz

    bit 2, [hl]
    jp nc, $ab12

    ld [hl], d
    ld l, l
    xor c
    ld e, c
    dec bc
    ld e, b
    db $f4
    db $e4
    ld h, $a8
    dec h
    add sp, $21
    ld [bc], a
    db $ec
    and c
    inc e
    ld de, $6395
    ld a, [bc]
    ld [de], a
    or h
    ld l, l
    add h
    ld h, b
    add e
    add d
    ld sp, $0984
    xor d
    ld e, [hl]
    ld de, $14b2
    ld h, a
    pop de
    ld a, c
    jr z, jr_00c_733e

    ld c, a
    pop hl
    ld a, [de]
    ld [hl], b
    xor c
    adc a
    ld [hl+], a
    or b
    and b
    ld a, [$16ab]
    jp nc, $9012

    ld [c], a
    or h
    ld d, a
    ld d, c

jr_00c_738e:
    ld c, a
    jr jr_00c_73d5

    rst $10
    inc bc
    db $10
    sub e
    xor c
    ld c, c
    ld de, $c4ba
    ld d, c
    add h
    ld [$4748], sp
    add c
    ret z

    ld b, a
    add h
    sbc e
    add b
    ld b, h
    cp b
    ld a, [de]
    ld c, [hl]
    push bc
    and [hl]
    or l
    ld [hl], $bd
    ld l, d
    jp z, $ed82

    ld d, e
    dec h
    ld e, d
    sbc d
    ld a, [hl+]
    add hl, de
    ld [hl], e
    ld b, h
    db $e3
    sbc b
    jp hl


    ld b, l
    xor c
    jr c, jr_00c_7421

    ld c, c
    ld b, c
    ld d, b
    ld h, e
    adc c
    dec bc
    cp l
    rst $00
    add d
    inc [hl]
    ld d, d
    ld d, b
    cp $50
    and b
    call Call_000_1554
    add c
    ld h, e

jr_00c_73d5:
    dec b
    dec [hl]
    ld a, [hl]
    sbc a
    adc h
    jr @+$75

    adc d
    xor b
    xor l
    ld e, [hl]
    ld d, e
    sub d
    ld e, d
    sbc a
    pop bc
    adc [hl]
    xor a
    reti


    ld c, [hl]
    cp d
    and e
    rst $00
    call c, Call_00c_772a
    inc hl
    jr nz, jr_00c_738e

jr_00c_73f2:
    ld c, b
    and d
    add e
    ld de, $a661
    cp b
    ldh [$cd], a
    jr jr_00c_7447

    add $aa
    add hl, bc
    inc l
    ld h, d
    ret


    or h
    ld l, d
    ret nz

    rst $00
    inc d
    and h
    xor l
    or b
    and a
    ld a, [bc]
    or a
    ld d, e
    ld b, b
    cp h
    ld l, c
    and h
    ld hl, $afaf
    jp nc, $ea6a

    jp z, Jump_00c_5485

    dec bc
    and [hl]
    or a
    ld c, $a5

jr_00c_7421:
    cp a
    add a
    and a
    inc h
    cpl
    db $db
    ld hl, $b41c
    ld de, $df29
    xor l
    rra
    ld a, [bc]
    ld [hl], a
    cp c
    ld e, a
    xor d
    ld c, c
    ld d, e
    jp z, Jump_000_2aba

    ld a, [hl]
    db $e3
    jp $0555


    xor d
    ld c, b
    or [hl]
    sub h
    inc de
    cp [hl]
    ld [$29b2], a

jr_00c_7447:
    ld h, h
    jr nz, jr_00c_73f2

    sbc l
    dec sp
    add hl, hl
    ld hl, $1294
    dec hl
    inc b
    ld a, e
    ld b, l
    ld c, l
    push de
    ld c, h
    ld d, l
    add sp, $14
    db $10
    ld c, c
    ld d, d
    ld l, d
    ld c, l
    ld d, l
    ld a, b
    ld l, l
    ld c, e
    ld [hl], a
    ld hl, sp+$30
    ld d, b
    jp nz, $a230

    ld l, d
    ld l, a
    ld a, [$aa42]
    add hl, bc
    sub d
    ld [$c1dc], a
    jr c, @-$4b

    inc h
    ld l, l
    add hl, bc
    push hl
    dec h
    ld d, e
    inc h
    cp d
    jr c, jr_00c_74a3

    dec bc
    ld b, [hl]
    ld b, d
    sub h

Jump_00c_7484:
    ld de, $c954
    ld a, b
    ld e, b
    cp c
    ld d, [hl]
    inc b
    ld [de], a
    db $ed
    add hl, de
    ld c, b
    ld e, b
    adc b
    and a
    db $ed
    ld l, c
    dec d
    sub l
    ld d, d
    ld d, l
    ld c, h
    dec l
    ld [hl+], a
    and b
    db $eb
    ret c

    sbc c
    or [hl]
    add d
    ld b, d

jr_00c_74a3:
    ld sp, $b4aa
    call $e692
    ld [$4542], a
    xor b
    jr nz, jr_00c_74fd

    ld a, [bc]
    add hl, sp
    ld e, c
    add hl, bc
    call $c713
    sub l
    ld d, b
    ld d, d
    add hl, hl
    inc a
    ld b, [hl]
    jp hl


    ld b, c
    ld d, l
    ld e, h
    ld [de], a
    and e
    xor c
    adc e
    add d
    sub b
    sub d

jr_00c_74c7:
    jr nc, jr_00c_751e

    ld l, h
    adc $4d
    ret c

    ld d, a
    xor b
    pop bc
    ld hl, $a551
    add c
    dec h
    ld h, c
    adc l
    add hl, de
    ld l, b
    ld e, h
    ld [de], a
    jp nc, $be60

    ld d, c
    ld b, c
    ld l, b
    dec d
    jr @-$34

    ld h, d
    dec de
    xor c
    ld b, l
    add d
    ld h, $d1
    and l
    sub d
    and d
    jr nz, jr_00c_7554

    and a
    add c
    ld a, [hl]
    add l
    or $8c
    ld hl, $46bd
    ld d, d
    ld d, d
    db $10
    or d

jr_00c_74fd:
    sub l
    ld a, d
    ld a, [hl+]
    adc b
    and h
    adc c
    inc b
    xor d
    adc c
    ld c, c
    ld hl, sp+$30
    and d
    ld e, [hl]
    adc h
    ld l, l
    ld d, l
    ld c, l
    add sp, -$46
    add hl, de
    adc $6b
    inc hl
    ld [hl+], a
    ld b, c
    jr nc, jr_00c_756b

    jp nc, $e5a8

    xor d
    ld d, h

jr_00c_751e:
    sbc b
    pop bc
    ld d, d
    ld h, $8e
    rst $00
    ld d, l
    ld b, l
    adc h
    cp e
    ld l, b
    ldh a, [rBCPS]
    inc h
    inc hl
    jr c, jr_00c_74c7

    pop af
    dec d
    ld c, [hl]
    ld [$9ce3], sp
    jp c, Jump_00c_52ae

    ld a, c
    ld [hl], l
    dec hl
    ld e, b
    ret nz

    rst $20
    adc b
    adc d
    ld b, a
    cp $8b
    sub $10
    daa
    ld a, h
    ld b, d
    sub c
    push de
    cp $98
    ld a, d
    db $76

jr_00c_754e:
    ld d, b
    cpl
    ret z

    ld c, l
    ld [bc], a
    pop de

jr_00c_7554:
    rla
    jr c, jr_00c_75c0

    call nz, $c498
    ld d, h
    ld c, h
    add l
    ld hl, $d815
    ld h, [hl]
    ld l, c
    jr z, jr_00c_754e

    ld h, c
    ld b, $63
    ld sp, $3e9e
    inc c

jr_00c_756b:
    ld a, [bc]
    ld c, e
    jp hl


    dec d
    jp hl


    and e
    db $fd
    ld a, d
    sbc b
    ldh [$f8], a
    ld a, b
    ld e, a
    rst $38
    pop af
    ld [hl], a
    cp b
    inc h
    xor a
    di
    add a
    xor c
    ld a, b
    ccf
    ld a, h
    rrca
    rst $38
    and $75
    ei
    sub c
    ld [bc], a
    cp $dc
    ld c, d
    rst $08
    pop af
    cpl
    rst $38
    cp $9a
    ld d, a
    rst $38
    rst $38
    cp $55
    cp l
    ld c, e
    adc h
    ld de, $043d
    add hl, bc
    xor a
    rst $38
    push af
    rst $18
    adc h
    inc e
    ld de, $761e
    ld b, c
    rst $38
    rst $38
    sub c
    ld a, [$9312]
    pop af
    db $dd
    rst $38
    rst $38
    db $e3
    cp $b5
    ld a, [hl-]
    adc d
    db $76
    rst $38
    rst $38
    rst $38
    xor d
    rst $28
    ld h, c

jr_00c_75c0:
    rst $38
    sbc l
    xor l
    dec c
    dec hl
    ld a, a
    ld e, a
    db $fc
    add l
    rst $00
    ld h, e
    ld a, [hl+]
    ld b, a
    cp $2f
    ld b, $60
    and $51
    ret nz

    rst $08
    cp $1c
    ccf
    add [hl]
    ld b, h
    and h
    sub $94
    adc d
    add $8c
    rst $38
    db $fc
    call nz, Call_000_3ef0
    adc a
    ld a, [$a30f]
    ccf
    cp $67
    dec a
    ld b, b
    call nz, Call_00c_43cb
    ld e, b
    ret z

    ld d, a
    xor l
    ld de, $feff
    add hl, bc
    ld l, h
    jr z, jr_00c_7641

    ld c, d

Call_00c_75fd:
    xor d

Jump_00c_75fe:
    ld l, $55
    dec l
    ld a, e
    ld l, b
    ld a, a
    add sp, $26
    add hl, hl
    adc d
    scf
    rst $38
    add a
    and [hl]

jr_00c_760c:
    jr c, jr_00c_760c

    jr jr_00c_7653

    ld d, c
    adc h
    ld l, d
    sub l
    ld de, $58e6
    ld a, [hl]
    add $09
    adc $c1
    db $10
    call nc, $c360
    ld sp, hl
    rst $18
    ld a, a
    ld hl, sp+$49
    adc e
    inc hl
    or c
    db $dd
    ld [bc], a
    ld [hl], b
    ldh a, [rWY]
    ld a, b
    or d
    ld [hl], b
    rst $20
    adc e
    dec b
    ld e, $18
    ld b, h
    sbc e
    ld c, l
    rra
    jp nc, $d6d2

    db $d3
    ld a, [de]
    ld [hl+], a
    push af
    ld a, b

jr_00c_7641:
    jp nz, $d282

    sub h
    jp nz, $4c82

    ld l, l
    dec bc
    rst $18
    ld [hl-], a
    ld h, c
    ld c, h
    xor $78
    ld d, l
    dec h
    adc b

jr_00c_7653:
    ld c, l
    sub e
    add hl, de
    jr nc, @-$6b

    sbc l
    dec sp
    db $10
    ld h, e
    sbc [hl]
    adc b
    ld b, d
    dec hl
    ld c, [hl]
    rlca
    add c
    ld h, e
    rra
    ld [hl], $79
    ld h, b
    ld d, h
    cp a
    adc c
    adc e
    ld a, [hl]
    sub [hl]
    adc b
    ld d, d
    inc e
    sub l
    ld c, e
    db $76
    adc h
    ld e, c
    cp c
    and [hl]
    ld h, e
    sub [hl]
    ld d, [hl]
    ld h, $63
    ret nz

    adc a
    rla
    ld [hl], c
    ld a, [hl+]
    ld l, a
    sbc e
    ld c, l
    add d
    sub b
    and [hl]
    ld a, [hl+]
    ld h, d
    db $d3
    cp $14
    add $55
    inc hl

jr_00c_7690:
    add [hl]
    inc d
    rra
    call nz, $6630
    ld [hl], l
    cp b
    xor b
    ld e, h
    ld b, e
    inc bc
    dec de
    and b
    ld hl, sp-$39
    ld d, d
    ld de, $70ac
    inc h
    xor h
    ld d, d
    ld b, h
    ld l, l
    add $d2
    ld sp, $a1b3
    sbc d
    ld c, c
    and d
    jp z, Jump_00c_6814

    add $08
    dec sp
    ld b, l
    ld h, [hl]
    dec c
    and [hl]
    jr nc, jr_00c_7703

    ld [hl], d
    ld b, e
    inc c
    ret


    call Call_00c_7251
    ld a, h
    jr z, @+$68

    cp l
    and l
    dec b
    dec h
    ld d, l

jr_00c_76cc:
    ld l, d
    and l
    ld c, [hl]
    ld [hl], l
    add a
    add d
    db $fd
    add hl, hl
    ld d, h
    sbc d
    ld c, h
    rra
    adc e
    ld [hl], a
    jr nc, jr_00c_7690

    ld hl, $69a2
    daa
    ld c, c
    sub l
    ld c, d
    ld d, b
    ld c, c
    sub b
    ld h, l
    ld [hl], $92
    dec l
    ld hl, $a514
    db $ec
    sub h
    ld l, $14
    ld d, e
    add hl, sp
    or [hl]
    sub h
    ld h, [hl]
    ld h, $88
    add l
    add $58
    sub l
    ld c, h
    sbc e
    sub l
    rlca
    and d
    ld d, h
    ld a, [hl+]

jr_00c_7703:
    dec d
    ld [hl], $a5
    ld c, h
    ld l, b
    db $10
    ld b, c
    add hl, hl
    ld c, [hl]
    xor e
    ld e, b
    ld d, $85
    ld b, $8a
    sbc b
    pop bc
    jr c, jr_00c_7783

    add hl, de
    ld d, b
    push hl
    ld d, e
    add hl, bc
    ld l, $d3
    ld c, l
    inc d
    inc h
    adc d
    inc d
    inc de
    add hl, sp
    ld c, b
    ldh a, [rKEY1]
    ld a, [hl+]
    inc b
    ld d, c

Call_00c_772a:
    sub b
    xor b
    sbc $aa
    inc sp
    push de
    ld [hl+], a
    or $41
    ld a, c
    jr c, jr_00c_76cc

    adc h
    or d
    ld d, d
    dec l
    add hl, de
    ld hl, sp-$20
    call $ab18
    ld c, b
    sub h
    ld l, d
    scf
    ld [hl], l
    ld [hl-], a
    sub b
    jp nc, Jump_00c_4e6e

    ld l, a
    inc d
    or h
    sbc d
    db $e4
    sbc b
    ld a, $39
    ld a, [hl-]
    dec l
    ld [hl-], a
    ld [hl], l
    ld a, [de]
    add hl, sp
    ld d, e
    inc d
    inc de
    inc b
    ld l, e
    db $f4
    push hl
    ld c, h
    inc de
    ret


    ld b, l
    add c
    inc d
    jp nz, Jump_000_0a3c

    rla
    ld d, b
    ld c, d
    adc a
    ld e, $60
    sub l
    adc a
    add h
    sbc $f2
    ld c, d
    ld d, [hl]
    xor h
    add hl, hl
    adc $87
    db $ed
    ld h, h
    push de
    ld d, e
    ld c, a
    inc bc
    add hl, de
    ld h, c
    sbc b
    ld e, l

jr_00c_7783:
    ld h, h
    call nz, $b448
    ld d, h
    adc h
    sub l
    and c
    ld h, l
    jr nc, jr_00c_77cd

    add d
    dec a
    sbc e
    ld l, $a1
    dec h
    ld d, c
    ld [hl], e
    pop bc
    ld e, b
    ld c, a
    xor l
    inc c
    ld e, h
    ld b, h
    db $db
    ld hl, $1104
    ld e, h
    dec a
    ld de, $b94a
    ld [de], a
    sub b
    sub l
    dec b
    ld [hl], b
    jr nc, jr_00c_77d2

    ld l, b
    ld [hl+], a
    sub h
    xor h
    ld a, [hl+]
    ld a, [$548a]
    ld a, [de]
    add l
    ld b, [hl]
    ld a, [de]

jr_00c_77b9:
    ld c, d
    inc a
    ld c, e
    call nc, Call_00c_414d
    add d
    add l
    adc l
    pop de
    sub a
    db $10
    adc a
    dec hl
    dec de
    ret z

    inc h
    dec [hl]
    dec b
    sbc b

jr_00c_77cd:
    ret z

    and c
    ld l, c
    ret


    ld c, a

jr_00c_77d2:
    ld [hl], h
    or c
    and e
    ld b, $38
    ld l, c
    cp d
    ld [hl], $08
    and c
    dec de
    call nz, $2644
    xor a
    add d
    ld [$9c22], sp
    xor e

jr_00c_77e6:
    cp d
    ld h, b
    ret nc

    pop bc
    ld l, b
    pop bc
    add d
    ld [hl], b
    rst $38
    rst $08
    ret z

    or h
    ld c, a
    sub c
    ld b, h
    ld b, c
    inc e
    dec c
    inc bc
    call nz, Call_00c_4933
    ld a, d
    ld b, d
    ld [hl], d
    ld h, d
    ldh a, [$c1]
    inc b
    ld [de], a
    rst $08
    jr z, @+$5f

    ld b, a
    dec l
    call nz, Call_000_0c21
    ld c, l
    inc b
    sbc l
    ld l, h
    ld e, h
    ld d, e
    ld c, $44
    sub $73
    jr c, jr_00c_77b9

    ld b, h
    ld b, b
    sub b
    sbc [hl]
    ld [bc], a
    pop bc
    ld b, l
    inc h
    rst $00
    adc c

Call_00c_7822:
    ret z

    jr nc, jr_00c_77e6

    ld e, $4c
    ld b, h
    ld de, $a0f0
    ld b, h
    cp l
    dec d
    ld c, [hl]
    or a
    or $3a
    ld e, [hl]
    dec b
    ei
    add hl, sp
    xor b
    ld d, h
    ld e, $2d
    adc l
    xor b
    xor b
    ld a, [hl+]
    sub l
    adc l
    pop de
    ld b, d
    sub e
    and c
    ld e, e
    add c
    inc a
    and l
    and e
    ld c, d
    ld [hl-], a
    ld d, l
    ld [$b2e1], sp
    ld d, l
    adc c
    adc [hl]
    ld c, c
    ld b, d
    ld h, h
    db $10
    ld d, l
    ld c, [hl]
    ld c, d
    inc c
    ld a, $aa
    cp h
    push hl
    ld h, b
    sub e
    xor [hl]
    dec a
    dec e
    ld hl, sp+$5f
    and b
    sbc d
    and [hl]
    db $d3
    ld [hl], l
    add d
    xor d
    ld b, e
    dec de
    ld sp, $c50d
    ld d, h
    ld l, [hl]
    ld a, [c]
    db $76
    push hl
    ldh a, [$aa]
    sbc h
    ld d, [hl]
    ld [de], a
    jr z, jr_00c_78af

    xor h
    ld [hl], c
    ld d, e
    ld h, e
    dec a
    inc c
    ld [hl], d
    or h
    ld [hl-], a
    ld [$a72a], sp
    inc h
    inc a
    inc c
    ld d, l
    inc e
    adc c
    ldh [rBGP], a
    and d
    ld [hl], a
    or e
    ld d, a
    ld [$8554], a
    ld d, h

jr_00c_7899:
    db $e3
    ld d, a
    db $ec
    ret


    ld d, [hl]

jr_00c_789e:
    sub a
    ret


    xor [hl]
    xor e
    call $c2df
    dec b
    ld sp, $9fba

jr_00c_78a9:
    xor e
    ret z

    and d
    inc e
    ldh [$a7], a

jr_00c_78af:
    sbc d
    adc h
    ld l, b
    sbc b
    adc a
    ld a, [c]
    inc h
    jr jr_00c_78cb

    ld a, d
    ld hl, $fb81
    ld h, $92
    sub [hl]
    and e
    ld [$35a9], sp
    ld h, b
    ld b, d
    ld d, [hl]
    adc e
    ld d, d
    jr jr_00c_7899

    inc b

jr_00c_78cb:
    add [hl]
    sbc l

jr_00c_78cd:
    ld c, h
    ld h, h
    adc b
    ld de, $a24a
    jr jr_00c_789e

    and b
    add d
    or h
    sbc d
    push af
    ld d, l
    ld hl, $d204
    add c
    inc [hl]
    xor b
    ld a, [hl+]
    add [hl]
    ld c, e
    and h
    dec sp
    jp nz, $2404

    pop bc
    inc d
    jp hl


    ld c, h
    ld h, b
    sub h
    adc d
    ld e, [hl]
    ld c, [hl]
    dec e
    scf
    ld c, h
    ld d, l
    and h
    add l
    ld b, [hl]
    jp nc, $ce28

    dec [hl]
    ld h, e
    jr z, jr_00c_78a9

    ld h, $b4
    and h
    push bc
    ld c, h
    dec d
    ld l, b
    xor l
    inc [hl]
    ld d, d

jr_00c_790a:
    add sp, -$2f
    add [hl]
    xor d
    and e
    jr c, jr_00c_7939

    ret


    add hl, sp
    ld h, e
    add [hl]
    ld [hl+], a
    and b
    and d
    db $dd
    adc [hl]
    ld h, $34
    ld [hl], d
    inc d
    ld d, d
    inc h
    cp h
    ld [c], a
    sub b
    ld b, [hl]
    add hl, hl
    ld hl, $5148
    ld b, a
    db $e4
    inc de
    sbc c
    ld d, h
    ld l, b
    sub l
    jr nc, jr_00c_7979

    ld d, b
    add c
    ld d, e
    ld b, $39
    jr z, jr_00c_78cd

    ld [hl+], a

jr_00c_7939:
    add [hl]
    xor e
    add c
    ld c, e

jr_00c_793d:
    adc b
    ld b, [hl]
    ld c, l
    ld a, [hl+]
    adc e
    ld d, d
    ld d, a
    add sp, $54
    sub l
    ld d, d
    inc h
    ld h, d
    inc h
    push bc
    ld d, h
    adc e

Call_00c_794e:
    ld a, [$e407]
    push bc
    ld h, c
    or [hl]
    ld c, b
    adc h
    inc h
    pop bc
    ld c, c
    ld c, c
    xor b
    ld l, b
    jp c, Jump_000_2368

    ld e, c
    jr c, @+$16

    add h
    sub l
    jr jr_00c_790a

    ld e, d
    ld [$41e1], sp
    ld h, $8d
    sub b
    ld [hl], h
    xor d
    ld b, c
    and b
    adc l
    inc de
    dec h
    ld hl, $a248
    ld d, $86

jr_00c_7979:
    jr nc, jr_00c_793d

    ld b, [hl]
    inc sp
    sub e
    sub l
    ld d, h
    call Call_00c_5204
    ld h, e
    ld a, b
    ld e, d
    ld sp, $a2a1
    sbc b
    ld e, b
    ld l, d

jr_00c_798c:
    ld l, $32
    ld b, [hl]
    cp $29
    ld d, a
    adc h
    ld [$e48d], a
    sub l
    adc h
    ld l, l
    ld d, h
    jr z, jr_00c_798c

    ld l, d
    adc e
    sbc c
    and e
    xor b
    ld b, d
    sbc l
    ld l, b
    jp $2019


    cp a
    call nc, $ff52
    rst $00
    dec bc
    jp nz, $8cd1

    rst $38
    rst $28
    rst $38
    and c
    rst $38
    call z, Call_00c_7f6f
    xor c
    sbc l
    rst $38
    rst $38
    rst $38
    ld c, d
    rla
    add e
    sbc e
    sbc $1f
    ret nc

    ld hl, $7f13
    rst $38
    jp nc, Jump_00c_40ff

    adc e
    sbc h
    rrca
    cp e
    db $ec
    ld h, b
    rst $38
    ld a, [c]
    rst $38
    ld sp, hl
    ld a, [hl+]
    and h
    ret nz

    sbc d
    ld e, b
    ld a, a
    pop af
    ld d, a
    cp $ff
    rst $38
    call z, $fd0f
    dec h
    ld b, b
    sub d
    adc h
    rst $30
    and $3f
    rst $28
    rst $38
    jp Jump_000_2f65


    jp c, $b35d

    or a
    cp $a5
    rst $18
    cp a
    rst $38
    inc de
    ld l, e
    rst $38
    ld c, a
    and l
    sbc $d0
    ld c, a
    rst $38
    dec h
    jr c, jr_00c_7a83

    ld a, [hl+]
    sub a
    ld b, d
    cp a
    db $fc
    ld h, c
    sub e
    ccf
    dec b
    add d
    sub a
    di
    rst $38
    ld_long $ffbf, a
    push af

Call_00c_7a15:
    inc e
    add hl, hl
    ld [hl], h
    sub e
    ld d, e
    db $fc
    ld b, l
    ld d, l
    ld l, c
    ld de, $a771
    rst $00
    rlca
    pop af
    call z, $98e0
    inc a
    sbc h
    rra
    inc h
    ld h, $d1
    rla
    ld l, d
    ld b, d
    ld hl, sp+$47
    inc bc
    call nz, $8ef1
    ld b, e
    ld a, [bc]
    ld a, [de]
    rra
    jp hl


    call $b9d0
    ld c, b
    cp h
    add hl, hl
    add hl, bc
    ld e, $d7
    and a
    dec de
    ret z

    sbc $91
    ld [c], a
    ld [c], a
    and l
    ld l, b
    ld d, e

Jump_00c_7a4e:
    cp $b9
    ret nz

    xor $17
    cp $f8
    ret c

    jp $5638


    ccf
    add a
    rst $38
    and [hl]
    or [hl]
    ld e, $0f
    db $fc
    inc e
    jr nc, @-$36

Jump_00c_7a64:
    rst $18
    add e
    ld d, b
    ld e, d
    ld e, $87
    jp hl


    sub e
    rst $18
    ld c, $10
    db $f4
    ld e, [hl]
    ld c, l
    ccf
    and h
    ld b, e
    ei
    ld a, [hl]
    sbc b
    rst $18
    dec bc
    sub c
    ld h, h
    ld e, c
    ld a, [de]
    ld a, [hl+]
    rst $18
    ld sp, hl
    ld c, l
    ei

jr_00c_7a83:
    ld a, [hl]
    and l
    ld sp, hl
    ld c, $2f
    sub e
    adc a
    db $fd
    cp $37
    db $e4
    db $ed
    cp $de
    ld c, d
    rra
    adc l
    add sp, -$02
    ld [$6168], sp
    ld b, c
    ld a, a
    jp $3e79


    rra
    ei
    ld b, l
    ld a, a
    add a
    ei
    cp $47
    add $1f
    sub b
    add l
    inc de
    db $ed
    rst $38
    xor c
    rrca
    ei
    cp $1f
    add sp, $5d
    jr jr_00c_7b33

    ld [bc], a
    inc c

jr_00c_7ab8:
    ld e, a
    or a
    cp $43
    db $fd
    ld a, a
    pop hl
    ld a, [$8566]
    sbc h
    rra
    or a
    pop de
    db $10
    ld b, b
    rst $38
    push de
    sbc [hl]
    rrca
    ld e, c
    or l
    ld [hl], c
    rst $20
    nop
    ld b, h
    or [hl]
    ld d, l
    dec h
    ld a, a
    and e
    ld b, l
    rst $38
    rst $38
    rst $38
    and l
    ld c, l
    ld e, $81
    ld a, [$5fa5]
    call Call_00c_5e68
    rlca
    cp $a8
    inc hl
    ld e, e
    rlca
    pop bc
    and b
    ld d, a
    cp $a3
    inc [hl]
    inc a
    ld l, $77
    xor b
    ld a, [de]
    ld hl, $b235
    cpl
    sub $8c
    inc h
    db $e3
    adc h
    ld h, d
    ld h, e
    or e
    ld d, e
    inc d
    ret


    xor d
    ld d, d
    jr nz, jr_00c_7ab8

    jr nc, @-$6c

    jr c, jr_00c_7b40

    ld a, [bc]
    sub h
    jp c, $c196

jr_00c_7b12:
    ld d, l
    ld a, a
    db $eb
    call nc, $b1d6
    ld [hl], b
    and e
    ld a, [de]
    dec [hl]
    ld h, l
    add d
    adc [hl]
    xor b
    push af
    rst $20
    dec sp
    xor d
    ld [hl], c
    and d
    jp $d305


    sbc c
    or c
    ld sp, $a028
    rst $08
    and $36
    ret z

    inc hl

jr_00c_7b33:
    adc h
    ld e, a
    cp $61
    db $fc
    ld hl, sp+$32
    inc a
    ld c, a
    rst $38
    sub [hl]
    add a
    cp h

jr_00c_7b40:
    db $f4
    jp hl


jr_00c_7b42:
    ld c, $17
    cp $61
    di
    inc sp
    rst $38
    inc bc
    ld sp, hl
    rra
    and $1e
    jr jr_00c_7b42

    xor a
    rst $38
    db $e4
    ld a, [hl]
    ld h, c
    ld l, l
    adc l
    call nz, $fe5f
    add e
    push hl
    db $d3
    ld h, [hl]
    ld d, b
    ld a, a
    jp $9669


    ld d, h
    ld e, d
    sub b
    sub c
    ld a, [de]
    ld b, b
    adc h
    ld c, a
    inc c
    ld b, h
    add hl, bc
    xor h
    ldh a, [$c7]
    ld d, l
    rra
    ld l, $66
    or [hl]
    ld a, l

jr_00c_7b77:
    ld sp, $c653
    ld h, h
    xor d
    dec [hl]
    ld d, h
    db $e4
    ld d, d
    jr nz, jr_00c_7b12

    ld a, b
    ld h, d
    sub a
    ld a, [c]
    inc hl
    and [hl]
    jr jr_00c_7b12

    ld d, a
    ld a, [$eb58]
    cp d
    ld b, [hl]
    ld b, c
    ld l, b
    ld d, [hl]
    ld l, $35
    xor d
    and h
    ld l, b
    ld h, [hl]
    ld b, a
    dec d
    and e
    jr jr_00c_7b77

    jp nc, Jump_000_11a4

    ld h, l
    xor d
    inc [hl]
    adc [hl]
    jr z, jr_00c_7bd0

    ld a, [hl+]
    ld e, b
    jr @-$28

    jr c, jr_00c_7c17

    ld l, b
    rra
    dec bc
    add c
    adc l
    and e
    add l
    sbc b
    ld a, h
    ld e, $d0
    push de
    ld c, l
    dec h
    dec [hl]
    ld h, [hl]
    dec d
    and b
    or [hl]
    ld [$3385], sp
    ld d, c
    sub e
    rla
    and d
    inc d
    ld [hl-], a
    ld [hl+], a
    cp [hl]
    xor b
    adc $96
    ld c, e
    ld e, [hl]

jr_00c_7bd0:
    xor b
    ld [de], a
    ld h, d

jr_00c_7bd3:
    call nc, $aad6
    add c
    jr nc, @-$4e

    jp nc, $6310

    add hl, bc
    xor d
    ld [hl], $63
    add hl, sp
    or h
    ld [hl], h
    and [hl]
    ld b, [hl]
    ld [hl], $58
    sbc $09
    ld a, [bc]
    push bc
    sub b
    or [hl]
    ld hl, $48aa
    adc [hl]

jr_00c_7bf1:
    ld a, [hl+]
    xor d
    add hl, de
    sbc e
    ld b, d
    ld b, l
    ld l, $42
    jr c, jr_00c_7c50

    add d
    and b
    ld b, c
    dec b
    add hl, bc
    ld hl, $4231
    jr c, jr_00c_7c67

    ld d, b
    adc d
    ld l, a
    reti


    ld d, e
    ld [$7a23], sp
    xor d
    ld h, $46
    add [hl]
    sub a
    add hl, bc
    ld c, d
    add d
    inc a
    inc d

jr_00c_7c17:
    ld d, h
    adc c
    ld c, b
    add d
    jr c, jr_00c_7bf1

    or [hl]
    ld c, h
    ld a, [hl+]
    ld d, b
    sub b
    ld c, [hl]
    or [hl]
    ld [hl+], a
    ld [hl+], a
    jr nc, jr_00c_7bd3

    ld e, b
    db $e4
    ld d, b
    ld h, d
    db $ed
    add hl, sp
    or [hl]
    jp z, $a799

    add a
    ld b, c
    add hl, hl
    ld e, l
    ld a, [de]
    daa
    ld [hl-], a
    ld d, a
    and b
    ret nc

    ld e, c
    ld c, b
    ld c, d
    pop de
    ret


    ld d, $de
    ld c, d
    add h
    and c
    inc hl
    ld a, [bc]
    ld [hl], e
    or h
    inc de
    ld a, [hl+]
    jr jr_00c_7c90

    adc h
    ld c, a

jr_00c_7c50:
    ld a, [de]
    ld [$a8a8], a
    ld b, b
    adc l
    ld a, b
    xor [hl]
    ld de, $1b4f
    ld [hl], d
    ld [hl-], a
    ld [$eb2a], sp
    dec b
    ld [hl], h
    ld h, b
    or c
    ret nz

    db $db
    reti


jr_00c_7c67:
    ld c, h
    cpl
    ld h, $53
    inc e
    dec [hl]
    pop bc
    add d
    rla
    adc e
    and $6c
    ld de, $e1c2
    inc de
    adc e
    db $ed
    cp d
    sub [hl]
    add d
    and b
    sbc e
    ld sp, $7238
    cp h
    jp nz, $a4a0

    ld b, b
    sub c
    ld l, c
    sub d
    cp d
    cp [hl]
    jr jr_00c_7cb1

    ld sp, $d430

jr_00c_7c90:
    ld de, $9894
    ld c, c
    ld c, d
    add hl, hl
    sbc d
    and [hl]
    dec d
    ld d, l
    jp hl


    sub h
    and h
    ld c, b
    ld [hl+], a
    and d
    add a
    ld a, l
    ld [hl], b
    ld b, h
    xor l
    ld sp, $a3af
    inc bc
    pop bc
    ld l, e
    inc b
    ld [$c844], sp
    ld l, e
    daa

jr_00c_7cb1:
    dec b
    jp nz, Jump_000_0fce

    ld b, $f0
    ld b, [hl]
    add hl, bc
    set 2, h
    ret z

    jp nc, Jump_00c_5a08

    ld h, a
    ld b, $70
    xor b
    call nc, $2b08
    xor d
    inc [hl]
    ld h, l
    add hl, sp
    pop bc
    xor l
    inc b
    add hl, bc
    inc l
    scf
    pop bc
    sbc c
    add hl, sp
    cp h
    ld h, e
    ld [bc], a
    ld b, e
    ld d, h
    and h
    ld h, [hl]
    ld d, $74
    ld d, h
    ld [de], a
    dec [hl]
    ld l, h
    ld a, [bc]
    add hl, de
    ld d, [hl]
    ld [hl], c
    jp hl


    cpl
    jp c, $3042

    or b
    ld [hl-], a
    ld [hl], l
    cp h
    ld b, h
    inc [hl]
    ld h, c
    rrca
    ld b, a
    ld l, $0c
    ld h, c
    ld e, c
    call z, $b844
    sbc a
    xor d
    ld d, l
    add hl, sp
    xor l
    xor d
    ld d, e
    xor d
    jp nc, $e968

    ld a, l
    ld a, [hl-]
    ld d, a
    add sp, $2d
    add hl, sp
    ld e, [hl]
    adc e
    ld d, e
    sub [hl]
    call nc, Call_000_3aa5
    dec hl
    push de
    ld c, [hl]
    db $db
    ld c, [hl]
    push hl
    add hl, hl
    ld a, [hl-]
    inc d
    sub [hl]
    ld a, [hl-]
    inc d
    add [hl]
    ld a, [hl-]
    ld d, h
    ld e, b
    db $ec
    ld e, b
    dec d
    xor b
    and $aa
    adc a
    cpl
    ld [hl], c
    jp z, $d7a9

    ld c, c
    dec d
    ld b, a
    ld d, h
    sbc l
    ret z

    ret


    ret nc

    add [hl]
    ld de, $7232
    cp d
    xor d
    xor b
    daa
    inc l
    add hl, bc
    ld [hl], d
    ld [hl], e
    ret nz

    ret nz

    add h
    sbc l
    sub e
    daa
    ld l, e
    daa
    ld l, e
    daa
    ld l, e
    daa
    ld l, e
    push bc
    ld a, [hl+]
    ld [hl], e
    ld c, d
    or l
    rra
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00c_7df0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00c_7ee5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00c_7f6f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00c_7f8b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
