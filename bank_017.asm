;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    ld [de], a
    inc de
    inc de
    add hl, bc
    dec h
    rrca
    inc d
    inc d
    jr jr_017_4023

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
    db $10
    ld de, $0805
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    inc c
    rrca
    rrca
    ld [de], a
    inc a
    inc a
    inc a

jr_017_4023:
    ld d, b
    ld d, b
    ld b, e
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld b, b
    ld b, c
    ld d, e
    nop
    nop
    ld c, h
    ld c, [hl]
    nop
    ld c, a
    nop
    ld b, h
    ld b, l
    ld d, a
    nop
    ld b, a
    ld c, d
    ld d, h
    ld h, b
    nop
    nop
    ld c, b
    ld c, c
    ld e, e
    ld d, d
    ld b, [hl]
    dec bc
    ld [hl], h
    add hl, bc
    dec bc
    ld [hl], h
    inc a
    inc a
    inc a
    inc a
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    ccf
    ld c, e
    ld e, b
    ld e, c
    ld e, d
    nop
    ld b, a
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld b, [hl]
    nop
    nop
    jr nz, jr_017_4076

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

jr_017_4076:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $06
    inc bc
    inc bc
    rlca
    ld de, $1415
    db $10
    ld [$0500], sp
    add hl, bc
    ld c, $0f
    inc c
    dec c
    ld e, [hl]
    ld e, h
    ld [hl], e
    ld e, h
    ld e, a
    ld a, [hl-]
    nop
    nop
    ld h, d
    ld h, e
    ld a, [hl-]
    nop
    nop
    ld h, b
    ld h, h
    ld a, [hl-]
    nop
    dec bc
    ld h, c
    ld h, l
    inc b
    inc b
    inc b
    db $10
    ld b, b
    rst $00
    ld b, b
    or b
    ld b, b
    nop
    ret z

    ld b, b
    call Call_000_3c29
    ld hl, $40bc
    ld a, $00
    call Call_000_3d93
    ret


    add $40
    add $40
    add $40
    add $40
    add $40
    ret


    ld d, b
    ld a, [bc]
    ld bc, $0701
    ld [bc], a
    dec h
    nop
    nop
    or $c6
    ld bc, $3e07
    ld c, e
    ld [$d2f6], a
    ld a, $3d
    call Call_000_3eb4
    xor a
    ld [$d2f6], a
    ret


    ld a, [bc]
    inc b
    ld a, [bc]
    jr nz, jr_017_4128

    inc h
    ld b, c
    rst $28
    ld b, b
    nop
    ld l, d
    ld b, c
    ld a, $01
    ld [$cf0c], a
    xor a
    ld [$cc3c], a
    ld hl, $4102
    ld a, [$d618]
    call Call_000_3d93
    ret


    ld b, $41
    inc hl
    ld b, c
    ld a, [$d360]
    cp $04
    ret nz

    ld a, [$d361]
    cp $09
    jr z, jr_017_4119

    ld a, [$d361]
    cp $0a
    ret nz

jr_017_4119:
    xor a
    ldh [$b4], a
    ld a, $01
    ldh [$8c], a
    jp Jump_000_2817


    ret


    ld l, $41
    ld a, [hl-]
    ld b, c

jr_017_4128:
    ld b, [hl]
    ld b, c
    ld d, d
    ld b, c
    ld e, [hl]
    ld b, c
    ld [$3c06], sp
    ld hl, $5c1b
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5d2a
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5d36
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5d80
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5d8c
    call Call_000_3e84
    jp Jump_000_23d2


    ld a, [bc]
    dec b
    rlca
    ld a, [bc]
    nop
    rst $38
    rlca
    dec bc
    nop
    rst $38
    rlca
    db $10
    ld bc, $07ff
    ld de, $ff01
    rlca
    rlca
    nop
    dec [hl]
    nop
    dec b
    jr nz, jr_017_418c

    db $10
    rst $38
    jp nc, Jump_000_0b01

    ld [$ff05], sp

jr_017_418c:
    rst $38
    ld [bc], a
    jr nz, jr_017_4196

    inc de
    rst $38
    ret nc

    inc bc
    jr nz, jr_017_419e

jr_017_4196:
    dec d
    rst $38
    rst $38
    inc b
    ld c, a
    ld b, $14
    rst $38

jr_017_419e:
    rst $38
    dec b
    ld l, $c7
    rlca
    ld a, [bc]
    ld l, $c7
    rlca
    dec bc
    ld sp, $07c7
    db $10
    ld sp, $07c7
    ld de, $c72c
    rlca
    rlca
    ld a, [bc]
    inc b
    rlca
    ld c, b
    ld b, b
    call nz, $c041
    ld b, c
    nop
    daa
    ld b, d
    call Call_000_3c29
    ret


    jp nc, $d741

    ld b, c
    call c, $e141
    ld b, c
    and $41
    dec e
    ld b, d
    ld [hl+], a
    ld b, d
    rla
    sbc c
    ld h, e
    ld a, [hl+]
    ld d, b
    rla
    pop bc
    ld h, e
    ld a, [hl+]
    ld d, b
    rla
    add hl, bc
    ld h, h
    ld a, [hl+]
    ld d, b
    rla
    daa
    ld h, h
    ld a, [hl+]
    ld d, b
    ld [$71fa], sp
    call nc, Call_017_7fcb
    jr nz, jr_017_41f6

    ld hl, $420e
    call Call_000_3c36
    jr jr_017_420b

jr_017_41f6:
    ld a, [$d46f]
    cp $65
    jr c, jr_017_4205

    ld hl, $4218
    call Call_000_3c36
    jr jr_017_420b

jr_017_4205:
    ld hl, $4213
    call Call_000_3c36

jr_017_420b:
    jp Jump_000_23d2


    rla
    ld l, c
    ld h, h
    ld a, [hl+]
    ld d, b
    rla
    adc e
    ld h, h
    ld a, [hl+]
    ld d, b
    rla
    rst $00
    ld h, h
    ld a, [hl+]

jr_017_421c:
    ld d, b
    rla
    ld a, [bc]
    ld h, l
    ld a, [hl+]
    ld d, b
    rla
    ld [hl+], a
    ld h, l
    ld a, [hl+]
    ld d, b
    ld a, [bc]
    ld bc, $0707
    inc b
    inc [hl]
    ld [bc], a
    ld [bc], a
    dec bc
    ld b, $05
    ld [bc], a
    rlca
    dec b
    inc b
    dec bc
    dec b
    cp $02
    ld bc, $0925
    inc b
    rst $38
    ret nc

    ld [bc], a
    jr nz, jr_017_424c

    dec bc
    rst $38
    ret nc

    inc bc
    dec e
    add hl, bc
    rrca
    rst $38
    rst $38

jr_017_424c:
    inc b
    ld c, $09
    db $10
    rst $38
    ret nc

    dec b
    jr nz, jr_017_421c

    rlca
    rlca
    rlca
    rlca
    dec b
    ld c, e
    ld b, h
    ld [de], a
    ld b, e
    ld h, e
    ld b, d
    nop
    ld hl, $2144
    dec h
    pop de
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_017_4280
    call Call_000_3c29
    ld hl, $431e
    ld de, $42a7
    ld a, [$d5fb]
    call Call_000_30fc
    ld [$d5fb], a
    ret


Call_017_4280:
    ld hl, $428a
    ld de, $4296
    call Call_000_311b
    ret


    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, b

Jump_017_429c:
    xor a
    ld [$cd6b], a
    ld [$d5fb], a
    ld [$da38], a
    ret


    or l
    ld sp, $31e8
    ld de, $af32
    ld b, d
    ld a, [$d056]
    cp $ff
    jp z, Jump_017_429c

    ld a, $f0
    ld [$cd6b], a

Call_017_42bc:
    ld a, $04
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d754
    set 7, [hl]
    ld bc, $ea01
    call Call_000_3e3f
    jr nc, jr_017_42de

    ld a, $05
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d754
    set 6, [hl]
    jr jr_017_42e5

jr_017_42de:
    ld a, $06
    ldh [$8c], a
    call Call_000_2817

jr_017_42e5:
    ld hl, $d355
    set 0, [hl]
    ld hl, $d729
    set 0, [hl]
    ld a, $05
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $23
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $d7ea
    res 0, [hl]
    res 7, [hl]
    ld hl, $d754
    set 2, [hl]
    jp Jump_017_429c


    dec hl
    ld b, e
    and e
    ld b, e
    cp h
    ld b, e
    add l
    ld b, e
    adc d
    ld b, e
    sub h
    ld b, e
    ld [bc], a
    ld d, b
    ld d, h
    rst $10
    xor l
    ld b, e
    or a
    ld b, e
    or d
    ld b, e
    or d
    ld b, e
    rst $38
    ld [$54fa], sp
    rst $10
    bit 7, a
    jr z, jr_017_4347

    bit 6, a
    jr nz, jr_017_433f

    call z, Call_017_42bc
    call Call_000_2fde
    jr jr_017_4378

jr_017_433f:
    ld hl, $4380
    call Call_000_3c36
    jr jr_017_4378

jr_017_4347:
    ld hl, $437b
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4399
    ld de, $4399
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $01
    ld [$d05b], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d5fb], a
    ld [$da38], a

jr_017_4378:
    jp Jump_000_23d2


    rla
    ld d, c
    ld h, l
    ld a, [hl+]
    ld d, b
    rla
    rrca
    ld h, [hl]
    ld a, [hl+]
    ld d, b
    rla
    ld a, [$2a66]
    ld d, b
    rla
    dec d
    ld h, a
    ld a, [hl+]
    dec bc
    rla
    jr z, @+$69

    ld a, [hl+]
    ld d, b
    rla
    inc de
    ld l, b
    ld a, [hl+]
    ld d, b
    rla
    ld sp, $2a68
    dec bc
    rla
    sbc d
    ld l, b
    ld a, [hl+]
    ld d, b
    ld [$1e21], sp
    ld b, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec d
    ld l, c
    ld a, [hl+]
    ld d, b
    rla
    ld e, b
    ld l, c
    ld a, [hl+]
    ld d, b
    rla
    adc h
    ld l, c
    ld a, [hl+]
    ld d, b
    ld [$29fa], sp
    rst $10
    bit 0, a
    jr nz, jr_017_43f1

    ld hl, $4403
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_017_43e3

    ld a, [$d471]
    bit 7, a
    jp nz, Jump_017_43fa

    ld hl, $4408
    call Call_000_3c36
    jr jr_017_43e9

jr_017_43e3:
    ld hl, $4412
    call Call_000_3c36

jr_017_43e9:
    ld hl, $440d
    call Call_000_3c36
    jr jr_017_43f7

jr_017_43f1:
    ld hl, $4417
    call Call_000_3c36

jr_017_43f7:
    jp Jump_000_23d2


Jump_017_43fa:
    ld hl, $441c
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    cp b
    ld l, c
    ld a, [hl+]
    ld d, b
    rla
    ld b, e
    ld l, d
    ld a, [hl+]

jr_017_440c:
    ld d, b
    rla
    ld h, e
    ld l, d

jr_017_4410:
    ld a, [hl+]
    ld d, b
    rla
    db $dd
    ld l, d
    ld a, [hl+]
    ld d, b
    rla
    ld b, $6b
    ld a, [hl+]
    ld d, b
    rla
    dec [hl]
    ld l, e
    ld a, [hl+]
    ld d, b
    inc bc
    ld [bc], a
    dec c
    inc b
    ld [bc], a
    rst $38
    dec c
    dec b
    ld [bc], a
    rst $38
    nop
    inc bc
    inc c
    dec b
    ld [$d0ff], sp
    ld b, c
    ld [$0701], a
    ld a, [bc]
    rlca
    rst $38
    db $d3
    ld b, d
    call $2401
    ld c, $0b
    rst $38
    ret nc

    inc bc
    jr c, jr_017_440c

    dec c
    inc b
    jr c, jr_017_4410

    dec c
    dec b
    ld [$0a0a], sp
    ld a, [bc]
    add hl, bc
    inc c
    dec bc
    dec b
    dec bc
    dec c
    ld c, $12
    inc de
    dec bc
    rrca
    ld c, $12
    inc de
    dec bc
    rrca
    inc c
    rlca
    dec b
    ld b, $0d
    dec b
    ld de, $1005
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    ld b, $04
    rlca
    ld h, h
    ld b, b
    add [hl]
    ld b, h
    ld a, d
    ld b, h
    nop
    cp l
    ld b, h
    ld hl, $d492
    set 7, [hl]
    call Call_000_2156
    call Call_000_3c29
    ret


    sub d
    ld b, h
    sub e
    ld b, h
    sbc b
    ld b, h
    and h
    ld b, h
    and l
    ld b, h
    or c
    ld b, h
    rst $38
    rla
    db $f4
    ld l, l
    ld a, [hl+]
    ld d, b
    ld [$3c06], sp
    ld hl, $5da4
    call Call_000_3e84
    jp Jump_000_23d2


    or $08
    ld b, $3c
    ld hl, $5d98
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$1221], sp
    ld c, a
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    nop
    ld [bc], a
    rlca
    inc bc
    ld b, $ff
    rlca
    inc b
    ld b, $ff
    nop
    ld b, $29
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0b10
    rrca
    rst $38
    jp nc, $4202

    rlca
    dec b
    rst $38
    ret nc

    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld b, $07
    ld [$d1ff], sp
    dec b
    ld b, h
    dec b
    ld [$d0ff], sp
    ld b, $1e
    rst $00
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld b, $04
    rlca
    ld e, e
    ld b, l
    rlca
    ld b, l
    ld bc, $0045
    add hl, hl
    ld b, l
    call Call_000_2156
    jp Jump_000_3c29


    ld [de], a
    ld b, l
    inc de
    ld b, l
    jr jr_017_4552

    ld de, $1d45
    ld b, l
    or $ff
    rla
    ld sp, $2a71
    ld d, b
    rla
    db $76
    ld [hl], c
    ld a, [hl+]
    ld d, b
    ld [$1221], sp
    ld c, a
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

    ld bc, $090c
    ld c, $fe
    nop
    ld [bc], a
    db $10
    rlca
    ld [$d1ff], sp
    inc bc
    ld a, [hl+]
    ld b, $0f
    rst $38
    ret nc

    inc b
    ld b, h
    dec b
    ld [$d0ff], sp

jr_017_4552:
    dec b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    jr nz, jr_017_456d

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

jr_017_456d:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $07
    rlca
    dec b
    inc [hl]
    ld b, a
    ld a, [de]
    ld b, [hl]
    add e
    ld b, l
    nop
    ld [bc], a
    ld b, a
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_017_45a0
    call Call_000_3c29
    ld hl, $4628
    ld de, $45c8
    ld a, [$d5fc]
    call Call_000_30fc
    ld [$d5fc], a
    ret


Call_017_45a0:
    ld hl, $45a9
    ld de, $45b7
    jp Jump_000_311b


    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld d, b

Jump_017_45bd:
    xor a
    ld [$cd6b], a
    ld [$d5fc], a
    ld [$da38], a
    ret


    or l
    ld sp, $31e8
    ld de, $d032
    ld b, l
    ld a, [$d056]
    cp $ff
    jp z, Jump_017_45bd

    ld a, $f0
    ld [$cd6b], a

Call_017_45dd:
    ld a, $05
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d75d
    set 7, [hl]
    ld bc, $d301
    call Call_000_3e3f
    jr nc, jr_017_45ff

    ld a, $06
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d75d
    set 6, [hl]
    jr jr_017_4606

jr_017_45ff:
    ld a, $07
    ldh [$8c], a
    call Call_000_2817

jr_017_4606:
    ld hl, $d355
    set 1, [hl]
    ld hl, $d729
    set 1, [hl]
    ld hl, $d75d
    set 2, [hl]
    set 3, [hl]
    jp Jump_017_45bd


    ld b, c
    ld b, [hl]
    xor l
    ld b, [hl]
    add $46
    rst $18
    ld b, [hl]
    sbc b
    ld b, [hl]
    sbc l
    ld b, [hl]
    and e
    ld b, [hl]
    ld [bc], a
    jr nc, jr_017_4688

    rst $10
    or a
    ld b, [hl]
    pop bc
    ld b, [hl]
    cp h
    ld b, [hl]
    cp h
    ld b, [hl]
    inc bc
    jr nc, jr_017_4694

    rst $10
    ret nc

    ld b, [hl]
    jp c, $d546

    ld b, [hl]
    push de
    ld b, [hl]
    rst $38
    ld [$5dfa], sp
    rst $10
    bit 7, a
    jr z, jr_017_465d

    bit 6, a
    jr nz, jr_017_4655

    call z, Call_017_45dd
    call Call_000_2fde
    jr jr_017_468b

jr_017_4655:
    ld hl, $4693
    call Call_000_3c36
    jr jr_017_468b

jr_017_465d:
    ld hl, $468e
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $46a8
    ld de, $46a8
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $02
    ld [$d05b], a
    xor a
    ldh [$b4], a
    ld a, $03

jr_017_4688:
    ld [$d5fc], a

jr_017_468b:
    jp Jump_000_23d2


    rla
    dec c
    ld [hl], d
    ld a, [hl+]
    ld d, b
    rla

jr_017_4694:
    push de
    ld [hl], d
    ld a, [hl+]
    ld d, b
    rla
    ld a, [bc]
    ld [hl], e
    ld a, [hl+]
    ld d, b
    rla
    sub $73
    ld a, [hl+]
    dec bc
    ld d, b
    rla
    jp hl


    ld [hl], e
    ld a, [hl+]
    ld d, b
    rla
    add hl, bc
    ld [hl], h
    ld a, [hl+]
    ld d, b
    ld [$2821], sp
    ld b, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld e, a
    ld [hl], h
    ld a, [hl+]
    ld d, b
    rla
    sub d
    ld [hl], h
    ld a, [hl+]
    ld d, b
    rla
    and a
    ld [hl], h
    ld a, [hl+]
    ld d, b
    ld [$3421], sp
    ld b, [hl]
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $ed
    ld [hl], h
    ld a, [hl+]
    ld d, b
    rla
    rrca
    ld [hl], l
    ld a, [hl+]
    ld d, b
    rla
    ld e, $75
    ld a, [hl+]
    ld d, b
    ld [$5dfa], sp
    rst $10
    bit 7, a
    jr nz, jr_017_46ef

    ld hl, $46f8
    call Call_000_3c36
    jr jr_017_46f5

jr_017_46ef:
    ld hl, $46fd
    call Call_000_3c36

jr_017_46f5:
    jp Jump_000_23d2


    rla

jr_017_46f9:
    ld h, h
    ld [hl], l
    ld a, [hl+]
    ld d, b
    rla
    ld a, [bc]
    db $76
    ld a, [hl+]
    ld d, b
    inc bc
    ld [bc], a
    dec c
    inc b
    inc bc
    rst $38
    dec c
    dec b
    inc bc
    rst $38
    nop
    inc b
    dec e
    ld b, $08
    rst $38
    ret nc

    ld b, c
    db $eb
    ld bc, $0706
    ld b, $ff
    db $d3
    ld b, d
    adc $01
    ld [hl+], a
    dec bc
    inc c
    rst $38
    jp nc, $d743

    ld bc, $0e24
    dec bc
    rst $38
    ret nc

    inc b
    jr c, jr_017_46f5

    dec c
    inc b
    jr c, jr_017_46f9

    dec c
    dec b
    inc d
    inc d
    ld hl, $1414
    dec d
    inc hl
    ld [hl+], a
    inc hl
    ld d, $15
    ld e, $1e
    rra
    ld d, $15
    inc e
    dec e
    jr nz, jr_017_475e

    dec d
    dec de
    dec b
    rla
    ld d, $15
    ld a, [de]
    dec b
    add hl, de
    ld d, $18
    jr jr_017_4759

    jr jr_017_476f

    ld [bc], a
    inc b

jr_017_4759:
    inc b
    nop
    ld b, b
    ld h, [hl]
    ld b, a

jr_017_475e:
    ld h, e
    ld b, a
    nop
    db $76
    ld b, a
    jp Jump_000_3c29


    ld c, l
    inc hl
    ld l, h
    ld b, a
    ld [hl], c
    ld b, a
    rla
    ld l, h
    ld a, b

jr_017_476f:
    ld a, [hl+]
    ld d, b
    rla
    reti


    ld a, b
    ld a, [hl+]
    ld d, b
    nop
    ld [bc], a
    rlca
    inc bc
    dec b
    rst $38
    rlca
    inc b
    dec b
    rst $38
    nop
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0807
    rlca
    cp $01
    ld [bc], a
    ld b, $06
    ld a, [bc]
    cp $02
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld b, $04
    rlca
    ld h, h
    ld b, b
    xor [hl]
    ld b, a
    xor b
    ld b, a
    nop
    ret nc

    ld b, a
    call Call_000_2156
    jp Jump_000_3c29


    cp c
    ld b, a
    cp d
    ld b, a
    cp a
    ld b, a
    cp b
    ld b, a
    call nz, $f647
    rst $38
    rla
    db $e4
    ld b, b
    dec hl
    ld d, b
    rla
    jr jr_017_4803

    dec hl
    ld d, b
    ld [$1221], sp
    ld c, a
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    nop
    ld [bc], a
    rlca
    inc bc
    nop
    rst $38
    rlca
    inc b
    nop
    rst $38
    nop
    dec b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0710
    add hl, bc
    rst $38
    rst $38
    ld [bc], a
    ld [$0e09], sp
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
    ld [bc], a

jr_017_4803:
    inc b
    inc b
    nop
    ld b, b
    ld de, $0e48
    ld c, b
    nop
    ccf
    ld c, b
    jp Jump_000_3c29


    ld h, l
    inc hl
    rla
    ld c, b
    inc e
    ld c, b
    rla
    ld c, c
    ld c, l
    dec hl
    ld d, b
    ld [$dffa], sp
    rst $10
    bit 7, a
    jr nz, jr_017_482c

    ld hl, $4835
    call Call_000_3c36
    jr jr_017_4832

jr_017_482c:
    ld hl, $483a
    call Call_000_3c36

jr_017_4832:
    jp Jump_000_23d2


    rla
    ld sp, hl
    ld c, l
    dec hl
    ld d, b
    rla
    jr z, jr_017_488b

    dec hl
    ld d, b
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
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0834
    rlca
    rst $38
    rst $38
    ld [bc], a
    rlca
    ld b, $0b
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
    ld b, $04
    rlca
    ld h, h
    ld b, b
    ld [hl], a
    ld c, b
    ld [hl], c
    ld c, b
    nop
    sbc c
    ld c, b
    call Call_000_2156
    jp Jump_000_3c29


    add c
    ld c, b
    add d
    ld c, b
    add a
    ld c, b
    adc h
    ld c, b
    adc l
    ld c, b
    rst $38
    rla
    ld hl, sp+$50
    dec hl
    ld d, b
    rla
    ld a, a
    ld d, c
    dec hl

jr_017_488b:
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
    nop
    rst $38
    rlca
    inc b
    nop
    rst $38
    nop
    dec b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0927
    ld c, $ff
    rst $38
    ld [bc], a
    inc de
    ld [$ff09], sp
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
    nop
    ld b, b
    jp c, $d748

    ld c, b
    nop
    ld [$c348], a
    add hl, hl
    inc a
    ld e, h
    inc hl
    ldh [rOBP0], a
    push hl
    ld c, b
    rla
    jr c, @+$59

    dec hl
    ld d, b
    rla
    sbc $57
    dec hl
    ld d, b
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
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0a07
    add hl, bc
    rst $38
    rst $38
    ld [bc], a
    ld b, $07
    rlca
    cp $02
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    rlca
    add hl, bc
    dec b
    ld l, $4b
    sbc $49
    inc e
    ld c, c
    nop
    db $f4
    ld c, d
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    push hl
    call nz, Call_017_4942
    pop hl
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_017_4963
    call Call_000_3c29
    ld hl, $49ee
    ld de, $498b
    ld a, [$d5fd]
    call Call_000_30fc
    ld [$d5fd], a
    ret


Call_017_4942:
    ld hl, $494b
    ld de, $495a
    jp Jump_000_311b


    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
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

Call_017_4963:
    ld a, [$d772]
    bit 0, a
    jr nz, jr_017_496e

    ld a, $24
    jr jr_017_4975

jr_017_496e:
    ld a, $ad
    call Call_000_2238
    ld a, $05

jr_017_4975:
    ld [$d09e], a
    ld bc, $0202
    ld a, $17
    jp Jump_000_3eb4


Jump_017_4980:
    xor a
    ld [$cd6b], a
    ld [$d5fd], a
    ld [$da38], a
    ret


    or l
    ld sp, $31e8
    ld de, $9332
    ld c, c
    ld a, [$d056]
    cp $ff
    jp z, Jump_017_4980

    ld a, $f0
    ld [$cd6b], a

Call_017_49a0:
    ld a, $06
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d772
    set 7, [hl]
    ld bc, $e001
    call Call_000_3e3f
    jr nc, jr_017_49c2

    ld a, $07
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d772
    set 6, [hl]
    jr jr_017_49c9

jr_017_49c2:
    ld a, $08
    ldh [$8c], a
    call Call_000_2817

jr_017_49c9:
    ld hl, $d355
    set 2, [hl]
    ld hl, $d729
    set 2, [hl]
    ld a, [$d772]
    or $1c
    ld [$d772], a
    jp Jump_017_4980


    inc de
    ld c, d
    add [hl]
    ld c, d
    sbc a
    ld c, d
    cp b
    ld c, d
    pop de
    ld c, d
    ld l, l
    ld c, d
    ld [hl], d
    ld c, d
    ld a, h
    ld c, d
    ld [bc], a
    jr nc, jr_017_4a63

    rst $10
    sub b
    ld c, d
    sbc d
    ld c, d
    sub l
    ld c, d
    sub l
    ld c, d
    inc bc
    jr nz, jr_017_4a6f

    rst $10
    xor c
    ld c, d
    or e
    ld c, d
    xor [hl]
    ld c, d
    xor [hl]
    ld c, d
    inc b
    jr nc, jr_017_4a7b

    rst $10
    jp nz, $cc4a

    ld c, d
    rst $00
    ld c, d
    rst $00
    ld c, d
    rst $38
    ld [$72fa], sp
    rst $10
    bit 7, a
    jr z, jr_017_4a2f

    bit 6, a
    jr nz, jr_017_4a27

    call z, Call_017_49a0
    call Call_000_2fde
    jr jr_017_4a60

jr_017_4a27:
    ld hl, $4a68
    call Call_000_3c36
    jr jr_017_4a60

jr_017_4a2f:
    ld hl, $4a63
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4a81
    ld de, $4a81
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $03
    ld [$d05b], a
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d5fd], a
    ld [$da38], a

jr_017_4a60:
    jp Jump_000_23d2


jr_017_4a63:
    rla
    inc e
    ld e, b
    dec hl
    ld d, b
    rla
    rlca
    ld e, c
    dec hl
    ld d, b
    rla
    ld [hl], b

jr_017_4a6f:
    ld e, c
    dec hl
    ld d, b
    rla
    add sp, $59
    dec hl
    ld de, $fd17
    ld e, c
    dec hl

jr_017_4a7b:
    ld d, b
    rla
    jr c, jr_017_4ad9

    dec hl
    ld d, b
    rla
    ld e, c
    ld e, d
    dec hl
    ld d, b
    ld [$ee21], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sbc h
    ld e, d
    dec hl
    ld d, b
    rla
    ret nc

    ld e, d
    dec hl
    ld d, b
    rla
    add sp, $5a
    dec hl
    ld d, b
    ld [$fa21], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec de
    ld e, e
    dec hl
    ld d, b
    rla
    ld c, h
    ld e, e
    dec hl
    ld d, b
    rla
    ld d, h
    ld e, e
    dec hl
    ld d, b
    ld [$0621], sp
    ld c, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sbc b
    ld e, e
    dec hl
    ld d, b
    rla
    or h
    ld e, e
    dec hl
    ld d, b
    rla
    ret z

    ld e, e
    dec hl
    ld d, b
    ld [$29fa], sp
    rst $10
    bit 2, a
    jr nz, jr_017_4ae1

jr_017_4ad9:
    ld hl, $4aea
    call Call_000_3c36
    jr jr_017_4ae7

jr_017_4ae1:
    ld hl, $4aef
    call Call_000_3c36

jr_017_4ae7:
    jp Jump_000_23d2


    rla
    inc sp
    ld e, h
    dec hl
    ld d, b
    rla
    ld sp, $2b5d
    ld d, b
    inc bc
    ld [bc], a
    ld de, $0304
    rst $38
    ld de, $0305
    rst $38
    nop
    dec b
    ld hl, $0905
    rst $38
    ret nc

    ld b, c
    db $ec
    ld bc, $0a10
    dec c
    rst $38
    jp nc, $f142

    inc bc
    inc c
    inc c
    rlca
    rst $38
    jp nc, $dc43

    ld bc, $0e13
    inc b
    rst $38
    db $d3
    ld b, h
    call z, Call_000_2408
    ld [de], a
    ld [$d0ff], sp
    dec b
    ld c, [hl]
    rst $00
    ld de, $4e04
    rst $00
    ld de, $2c05
    dec h
    dec h
    ld h, $2c
    inc l
    dec b
    dec b
    dec b
    inc l
    ld a, [hl+]
    dec hl
    dec b
    ld a, [hl+]
    dec hl
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    dec b
    add hl, hl
    dec b
    jr z, jr_017_4b56

    dec b
    ld de, $1005
    dec b

jr_017_4b56:
    dec b
    dec b
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    db $10
    ld b, b
    ld l, d
    ld c, e
    ld h, a
    ld c, e
    nop
    rla
    ld c, h
    jp Jump_000_3c29


    ld a, b
    ld c, e
    ld [$ef4b], a
    ld c, e
    rst $28
    ld c, e
    rst $28
    ld c, e
    db $f4
    ld c, e
    ld sp, hl
    ld c, e
    ld [$aefa], sp
    rst $10
    bit 0, a
    jr nz, jr_017_4bc1

    ld a, $01
    ld [$cc3c], a
    ld hl, $4bca
    call Call_000_3c36
    ld b, $33
    call Call_000_3422
    jr z, jr_017_4bc7

    ld hl, $4bcf
    call Call_000_3c36
    ld bc, $e701
    call Call_000_3e3f
    jr nc, jr_017_4bb9

    ld hl, $4bd4
    call Call_000_3c36
    ld a, $33
    ldh [$db], a
    ld b, $05
    ld hl, $7dbb
    call Call_000_3e84
    ld hl, $d7ae
    set 0, [hl]
    jr jr_017_4bc7

jr_017_4bb9:
    ld hl, $4be4
    call Call_000_3c36
    jr jr_017_4bc7

jr_017_4bc1:
    ld hl, $4bdf
    call Call_000_3c36

jr_017_4bc7:
    jp Jump_000_23d2


    rla
    or [hl]
    ld h, h
    inc l
    ld d, b
    rla
    ccf
    ld h, l
    inc l
    ld d, b
    rla
    ld a, [hl]
    ld h, l
    inc l
    dec bc
    rla
    sub d
    ld h, l
    inc l
    dec c
    ld d, b
    rla
    adc $65
    inc l
    ld d, b
    rla
    inc a
    ld h, [hl]
    inc l
    dec c
    ld d, b
    rla
    ld d, d
    ld h, [hl]
    inc l
    ld d, b
    rla
    sbc e
    ld h, [hl]
    inc l
    ld d, b
    rla
    rst $00
    ld h, [hl]
    inc l
    ld d, b
    ld [$09fa], sp
    pop bc
    cp $04
    ld hl, $4c12
    jr nz, jr_017_4c07

    ld hl, $4c0d

jr_017_4c07:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld hl, sp+$66
    inc l
    ld d, b
    rla
    ld c, e
    ld h, a
    inc l
    ld d, b
    ld a, [bc]
    ld bc, $0701
    ld [bc], a
    xor a
    ld [bc], a
    dec b
    inc bc
    ld b, $01
    nop
    rlca
    dec b
    dec e
    rlca
    ld [$00fe], sp
    ld bc, $0a09
    ld [$02fe], sp
    ld [bc], a
    dec b
    dec b
    add hl, bc
    rst $38
    ret nc

    inc bc
    add hl, bc
    inc b
    ld b, $ff
    ret nc

    inc b
    jr c, @+$0c

    dec b
    rst $38
    db $d3
    dec b
    or $c6
    ld bc, $0507
    ld b, $05
    reti


    ld c, [hl]
    ld sp, hl
    ld c, h
    ld d, e
    ld c, h
    nop
    sub c
    ld c, [hl]
    call Call_000_3c29
    ld hl, $4d09
    ld de, $4c71
    ld a, [$d641]
    call Call_000_30fc
    ld [$d641], a
    ret


Jump_017_4c66:
    xor a
    ld [$cd6b], a
    ld [$d641], a
    ld [$da38], a
    ret


    ld a, c
    ld c, h
    add sp, $31
    ld de, $bc32
    ld c, h
    ld a, [$d7b0]
    bit 0, a
    ret nz

    call Call_000_31b5
    ld a, [$cc55]
    and a
    ret nz

    ld a, [$d7b0]
    bit 1, a
    ret nz

    xor a
    ldh [$b4], a
    ld [$cf0d], a
    ld a, [$d360]
    cp $03
    ret nz

    ld a, [$d361]
    cp $04
    ret nz

    ld a, $01
    ld [$cf0d], a
    ld a, $01
    ld [$d527], a
    ld a, $01
    ldh [$8c], a
    ld a, $08
    ldh [$8d], a
    call Call_000_3488
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_017_4c66

    ld a, [$cf0d]
    and a
    jr z, jr_017_4cda

    ld a, $01
    ld [$d527], a
    ld a, $01
    ldh [$8c], a
    ld a, $08
    ldh [$8d], a
    call Call_000_3488

jr_017_4cda:
    ld a, $f0
    ld [$cd6b], a
    ld a, [$d7b0]
    or $3e
    ld [$d7b0], a
    ld a, $08
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cd6b], a
    ld [$d641], a
    ld [$da38], a
    ret


    ld a, [hl-]
    ld c, l
    sbc b
    ld c, l
    or c
    ld c, l
    jp z, $e34d

    ld c, l
    db $fc
    ld c, l
    ld b, h
    ld c, [hl]
    adc [hl]
    ld c, l
    ld [bc], a
    ld b, b
    or b
    rst $10
    and d
    ld c, l
    xor h
    ld c, l
    and a
    ld c, l
    and a
    ld c, l
    inc bc
    ld b, b
    or b
    rst $10
    cp e
    ld c, l
    push bc
    ld c, l
    ret nz

    ld c, l
    ret nz

    ld c, l
    inc b
    jr nc, @-$4e

    rst $10
    call nc, $de4d
    ld c, l
    reti


    ld c, l
    reti


    ld c, l
    dec b
    jr nc, @-$4e

    rst $10
    db $ed
    ld c, l
    rst $30
    ld c, l
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    rst $38
    ld [$b0fa], sp
    rst $10
    bit 0, a
    jp nz, Jump_017_4d73

    bit 1, a
    jp nz, Jump_017_4d7b

    ld hl, $4d84
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4d89
    ld de, $4d89
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $03
    ld [$d641], a
    ld [$da38], a
    jr jr_017_4d81

Jump_017_4d73:
    ld hl, $4d93
    call Call_000_3c36
    jr jr_017_4d81

Jump_017_4d7b:
    ld hl, $4d8e
    call Call_000_3c36

jr_017_4d81:
    jp Jump_000_23d2


    rla
    ld e, e
    ld h, a
    inc l
    ld d, b
    rla
    jp Jump_000_2c67


    ld d, b
    rla
    ret c

    ld h, a
    inc l
    ld d, b
    rla
    ld a, e
    ld l, b
    inc l
    ld d, b
    ld [$0921], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    and d
    ld l, b
    inc l
    ld d, b
    rla
    ret nz

    ld l, b
    inc l
    ld d, b
    rla
    call z, $2c68
    ld d, b
    ld [$1521], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld c, $69
    inc l
    ld d, b
    rla
    dec hl
    ld l, c
    inc l
    ld d, b
    rla
    inc a
    ld l, c
    inc l
    ld d, b
    ld [$2121], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld e, d
    ld l, c
    inc l
    ld d, b
    rla
    sub [hl]
    ld l, c
    inc l
    ld d, b
    rla
    xor l
    ld l, c
    inc l
    ld d, b
    ld [$2d21], sp
    ld c, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    pop hl
    ld l, c
    inc l
    ld d, b
    rla
    ld [de], a
    ld l, d
    inc l
    ld d, b
    rla
    inc hl
    ld l, d
    inc l
    ld d, b
    ld [$b0fa], sp
    rst $10
    and $c0
    jr z, jr_017_4e0c

    ld hl, $4e8c
    call Call_000_3c36
    jr jr_017_4e3c

jr_017_4e0c:
    ld a, $2b
    call Call_000_347d
    ld hl, $4e3f
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_017_4e3c

    ld a, [$cf90]
    ld b, a
    ld c, $1e
    call Call_000_3e59
    jr nc, jr_017_4e3c

    ld a, $4a
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $d7b0
    set 6, [hl]
    set 0, [hl]

jr_017_4e3c:
    jp Jump_000_23d2


    rla
    ld d, e
    ld l, d
    inc l
    ld d, b
    ld [$b0fa], sp
    rst $10
    and $c0
    jr z, jr_017_4e54

    ld hl, $4e8c
    call Call_000_3c36
    jr jr_017_4e84

jr_017_4e54:
    ld a, $2c
    call Call_000_347d
    ld hl, $4e87
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_017_4e84

    ld a, [$cf90]
    ld b, a
    ld c, $1e
    call Call_000_3e59
    jr nc, jr_017_4e84

    ld hl, $d7b0
    set 7, [hl]
    set 0, [hl]
    ld a, $4b
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4

jr_017_4e84:
    jp Jump_000_23d2


    rla
    ld a, c
    ld l, d
    inc l
    ld d, b
    rla
    and e
    ld l, d
    inc l
    ld d, b
    inc bc
    ld [bc], a
    dec bc
    inc b
    ld bc, $0bff
    dec b
    ld bc, $00ff
    rlca
    ld c, $07
    add hl, bc
    rst $38
    ret nc

    ld b, c
    ldh [rSB], a
    ld c, $08
    rlca
    rst $38
    db $d3
    ld b, d
    ldh [rSC], a
    ld c, $0a
    rlca
    rst $38
    db $d3
    ld b, e
    ldh [$03], a
    ld c, $09
    add hl, bc
    rst $38
    jp nc, $e044

    inc b
    ld c, $0b
    add hl, bc
    rst $38
    jp nc, $e045

    dec b
    ld b, a
    dec b
    ld [$ffff], sp
    ld b, $47
    dec b
    add hl, bc
    rst $38
    rst $38
    rlca
    dec l
    rst $00
    dec bc
    inc b
    dec l
    rst $00
    dec bc
    dec b
    ld c, c
    ld c, d
    ld h, a
    ld c, c
    ld c, d
    ld c, e
    ld d, c
    dec b
    ld d, b
    ld c, h
    ld c, e
    dec b
    dec b
    dec b
    ld c, h
    ld c, e
    dec b
    dec b
    dec b
    ld c, h
    ld c, e
    ld [hl-], a
    dec b
    ld sp, $524c
    ld b, [hl]
    inc b
    ld b, [hl]
    ld l, a
    ld d, $09
    ld a, [bc]
    sbc c
    ld d, d
    and c
    ld c, a
    inc bc
    ld c, a
    nop
    ld c, a
    ld d, c
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_017_4f20
    call Call_000_3c29
    ld hl, $4fb9
    ld de, $4f49
    ld a, [$d65b]
    call Call_000_30fc
    ld [$d65b], a
    ret


Call_017_4f20:
    ld hl, $4f29
    ld de, $4f36
    jp Jump_000_311b


    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld d, b

Jump_017_4f3e:
    xor a
    ld [$cd6b], a
    ld [$d65b], a
    ld [$da38], a
    ret


    or l
    ld sp, $31e8
    ld de, $5132
    ld c, a
    ld a, [$d056]
    cp $ff
    jp z, Jump_017_4f3e

    ld a, $f0
    ld [$cd6b], a

Call_017_4f5e:
    ld a, $0a
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d7b2
    set 1, [hl]
    ld bc, $f601
    call Call_000_3e3f
    jr nc, jr_017_4f80

    ld a, $0b
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d7b2
    set 0, [hl]
    jr jr_017_4f87

jr_017_4f80:
    ld a, $0c
    ldh [$8c], a
    call Call_000_2817

jr_017_4f87:
    ld hl, $d355
    set 5, [hl]
    ld hl, $d729
    set 5, [hl]
    ld a, [$d7b2]
    or $fc
    ld [$d7b2], a
    ld hl, $d7b3
    set 0, [hl]
    jp Jump_017_4f3e


    ld c, $50
    ld a, l
    ld d, b
    add a
    ld d, b
    sub c
    ld d, b
    sbc e

jr_017_4faa:
    ld d, b
    and l
    ld d, b
    xor a
    ld d, b
    cp c
    ld d, b
    jp Jump_017_6950


    ld d, b
    ld l, [hl]
    ld d, b
    ld a, b
    ld d, b
    ld [bc], a
    jr nc, @-$4c

    rst $10
    and $50
    ldh a, [$50]
    db $eb
    ld d, b
    db $eb
    ld d, b
    inc bc
    jr nc, @-$4c

    rst $10
    push af
    ld d, b
    rst $38
    ld d, b
    ld a, [$fa50]
    ld d, b
    inc b
    jr nc, @-$4c

    rst $10
    inc b
    ld d, c
    ld c, $51
    add hl, bc
    ld d, c
    add hl, bc
    ld d, c
    dec b
    jr nc, @-$4c

    rst $10
    inc de
    ld d, c
    dec e
    ld d, c
    jr @+$53

    jr jr_017_503a

    ld b, $30
    or d
    rst $10
    ld [hl+], a
    ld d, c
    inc l
    ld d, c
    daa
    ld d, c
    daa
    ld d, c
    rlca
    jr nc, jr_017_4faa

    rst $10
    ld sp, $3b51
    ld d, c
    ld [hl], $51
    ld [hl], $51
    ld [$b230], sp
    rst $10
    ld b, b
    ld d, c
    ld c, d
    ld d, c
    ld b, l
    ld d, c
    ld b, l
    ld d, c
    rst $38
    ld [$b2fa], sp
    rst $10
    bit 1, a
    jr z, jr_017_502a

    bit 0, a
    jr nz, jr_017_5022

    call z, Call_017_4f5e
    call Call_000_2fde
    jr jr_017_5055

jr_017_5022:
    ld hl, $5064
    call Call_000_3c36
    jr jr_017_5055

jr_017_502a:
    ld hl, $5058
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $505d

jr_017_503a:
    ld de, $505d
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $06
    ld [$d05b], a
    ld a, $03
    ld [$d65b], a

jr_017_5055:
    jp Jump_000_23d2


    rla
    cp l
    ld l, d
    inc l
    ld d, b
    rla
    ld a, h
    ld l, e
    inc l
    ld de, $5006
    rla
    push hl
    ld l, e
    inc l
    ld d, b
    rla
    rra
    ld l, h
    inc l
    ld d, b
    rla
    sub $6c
    inc l
    dec bc
    rla
    jp hl


    ld l, h
    inc l
    ld d, b
    rla
    ld l, $6d
    inc l
    ld d, b
    ld [$b921], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$c521], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$d121], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$dd21], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$e921], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$f521], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$0121], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    ld [$b2fa], sp
    rst $10
    bit 1, a
    jr nz, jr_017_50d3

    ld hl, $50dc
    call Call_000_3c36
    jr jr_017_50d9

jr_017_50d3:
    ld hl, $50e1
    call Call_000_3c36

jr_017_50d9:
    jp Jump_000_23d2


    rla
    ld d, c
    ld l, l
    inc l
    ld d, b
    rla
    ld sp, hl
    ld l, l
    inc l
    ld d, b
    rla
    inc a
    ld l, [hl]
    inc l
    ld d, b
    rla
    ld l, e
    ld l, [hl]
    inc l
    ld d, b
    rla
    ld a, l
    ld l, [hl]
    inc l
    ld d, b
    rla
    jp hl


    ld l, [hl]
    inc l
    ld d, b
    rla
    dec bc
    ld l, a
    inc l
    ld d, b
    rla
    ld [hl+], a
    ld l, a
    inc l
    ld d, b
    rla
    ld b, b
    ld l, a
    inc l
    ld d, b
    rla
    adc a
    ld l, a
    inc l
    ld d, b
    rla
    sbc e
    ld l, a
    inc l
    ld d, b
    rla
    rst $00
    ld l, a
    inc l
    ld d, b
    rla
    rst $28
    ld l, a
    inc l
    ld d, b
    rla
    dec b
    ld [hl], b
    inc l
    ld d, b
    rla
    ld a, [hl-]
    ld [hl], b
    inc l
    ld d, b
    rla
    ld e, h
    ld [hl], b
    inc l
    ld d, b
    rla
    ld l, a
    ld [hl], b
    inc l
    ld d, b
    rla
    sbc d
    ld [hl], b
    inc l
    ld d, b
    rla
    ld [c], a
    ld [hl], b
    inc l
    ld d, b
    rla
    db $fc
    ld [hl], b
    inc l
    ld d, b
    rla
    ld [hl], l
    ld [hl], c
    inc l
    ld d, b
    rla
    ret z

    ld [hl], c
    inc l
    ld d, b
    rla
    pop de
    ld [hl], c
    inc l
    ld d, b
    ld l, $20
    ld de, $0208
    rst $38
    ld de, $0209
    rst $38
    inc bc
    ld bc, $b216
    inc bc
    dec b
    rrca
    or d
    dec b
    ld bc, $b212
    dec b
    dec b
    ld [$09b2], sp
    ld bc, $b21b
    add hl, bc
    dec b
    db $10
    or d
    dec bc
    ld bc, $b205
    dec bc
    dec b
    dec c
    or d
    rrca
    ld bc, $b217
    rrca
    dec b
    ld e, $b2
    ld de, $1101
    or d
    ld de, $0905
    or d
    inc bc
    add hl, bc
    ld a, [de]
    or d
    inc bc
    dec bc
    inc bc
    or d
    dec b
    add hl, bc
    rlca
    or d
    dec b
    dec bc
    inc c
    or d
    dec bc
    dec bc
    inc b
    or d
    rrca
    dec bc
    rra
    or d
    inc bc
    rrca
    jr @-$4c

    inc bc
    inc de
    inc e
    or d
    dec b
    rrca
    ld [bc], a
    or d
    dec b
    inc de
    ld a, [bc]
    or d
    add hl, bc
    rrca
    inc d
    or d
    add hl, bc
    inc de
    dec e
    or d
    dec bc
    rrca
    ld c, $b2
    dec bc
    inc de
    ld b, $b2
    rrca
    rrca
    dec d
    or d
    rrca
    inc de
    add hl, de
    or d
    ld de, $0b0f
    or d
    ld de, $1313
    or d
    nop
    add hl, bc
    ld b, $0c
    dec c
    rst $38
    ret nc

    ld b, c
    ldh a, [rSB]
    add hl, de
    dec b
    ld c, $ff
    ret nc

    ld b, d
    push af
    ld d, $04
    dec b
    dec d
    rst $38
    ret nc

    ld b, e
    db $db
    ld bc, $0b19
    rlca
    rst $38
    ret nc

    ld b, h
    push af
    rla
    inc b
    dec bc
    dec d
    rst $38
    ret nc

    ld b, l
    db $db
    ld [bc], a
    add hl, de
    ld de, $ff07
    ret nc

    ld b, [hl]
    push af
    jr jr_017_5208

    ld de, $ff15
    ret nc

jr_017_5208:
    ld b, a
    db $db
    inc bc
    inc b
    dec b
    rlca
    rst $38
    ret nc

    ld c, b
    db $db
    inc b
    inc h
    inc de
    ld c, $ff
    ret nc

    add hl, bc
    ld a, l
    rst $00
    ld de, $7d08
    rst $00
    ld de, $0909
    rst $00
    inc bc
    ld bc, $c70b
    inc bc
    dec b
    add hl, de
    rst $00
    dec b
    ld bc, $c71b
    dec b
    dec b
    add hl, sp
    rst $00
    add hl, bc
    ld bc, $c73b
    add hl, bc
    dec b
    ld c, c

jr_017_523a:
    rst $00
    dec bc
    ld bc, $c74b
    dec bc
    dec b
    ld l, c
    rst $00
    rrca
    ld bc, $c76b
    rrca
    dec b
    ld a, c
    rst $00
    ld de, $7b01
    rst $00
    ld de, $0d05
    rst $00
    inc bc
    add hl, bc
    ld c, $c7
    inc bc
    dec bc
    dec e
    rst $00
    dec b
    add hl, bc
    ld e, $c7
    dec b
    dec bc
    ld c, [hl]
    rst $00
    dec bc
    dec bc
    ld l, [hl]
    rst $00
    rrca
    dec bc
    db $10
    rst $00
    inc bc
    rrca
    ld [de], a
    rst $00
    inc bc
    inc de
    jr nz, jr_017_523a

    dec b
    rrca
    ld [hl+], a
    rst $00
    dec b
    inc de
    ld b, b
    rst $00
    add hl, bc
    rrca
    ld b, d
    rst $00
    add hl, bc
    inc de
    ld d, b
    rst $00
    dec bc
    rrca
    ld d, d
    rst $00
    dec bc
    inc de
    ld [hl], b
    rst $00
    rrca
    rrca
    ld [hl], d
    rst $00
    rrca
    inc de
    add b
    rst $00
    ld de, $820f
    rst $00
    ld de, $4113
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    cpl
    ld c, $2f
    ld b, h
    cpl
    cpl
    ld b, [hl]
    cpl
    ld c, $2f
    cpl
    ld c, $2f
    ld b, h
    cpl
    cpl
    ld b, [hl]
    cpl
    ld c, $2f
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    cpl
    ld c, $2f
    ld b, h
    ld c, $0e
    ld b, [hl]
    cpl
    ld c, $2f
    cpl
    ld c, $2f
    ld b, h
    ld c, $2f
    ld b, [hl]
    cpl
    ld c, $2f
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    cpl
    ld c, $2f
    ld b, h
    ld b, l
    cpl
    ld b, [hl]
    cpl
    ld c, $2f
    cpl
    ld c, $2f
    ld b, h
    inc l
    ld c, $46
    cpl
    ld c, $2f
    ld [bc], a
    inc b
    inc b
    nop
    ld b, b
    ld [bc], a
    ld d, e
    rst $38
    ld d, d
    nop
    ld [de], a
    ld d, e
    jp Jump_000_3c29


    cp [hl]
    inc hl
    ld [$0d53], sp
    ld d, e
    rla
    pop hl
    ld [hl], d
    inc l
    ld d, b
    rla
    jr z, jr_017_5383

    inc l
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
    ld bc, $060c
    ld [$ffff], sp
    ld [bc], a
    ld b, $09
    ld a, [bc]
    cp $00
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld d, $09
    rrca
    sbc b
    ld d, e
    ld e, a
    ld d, e
    ld b, h
    ld d, e
    nop
    ld h, [hl]
    ld d, e
    call Call_000_3c29
    ld a, [$d837]
    bit 7, a
    ret z

    ld hl, $d7b8
    bit 7, [hl]
    set 7, [hl]
    ret nz

    ld a, $4c
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3eb4


    ld h, c
    ld d, e
    rla
    ld e, b
    ld [hl], e
    inc l
    ld d, b
    ld l, $05
    ld de, $050a
    rst $38
    ld de, $050b
    rst $38
    nop
    ld a, [de]
    nop
    rst $08
    nop
    inc d
    nop
    db $ec
    ld a, [bc]
    db $10
    ld b, $d0
    nop
    ld bc, $062a
    ld [$d0ff], sp

jr_017_5383:
    ld bc, $c7ab
    ld de, $ab0a
    rst $00
    ld de, $0b0b
    rst $00
    nop
    ld a, [de]
    ld [$00c7], sp
    inc d
    ld l, a
    rst $00
    ld a, [bc]
    db $10
    inc a
    dec a
    dec a
    ld a, a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld a, h
    dec a
    dec a
    ld a, l
    ld a, $7e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld c, $0e
    dec e
    ld c, $0e
    dec e
    ld c, $0e
    ld c, $09
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $0e
    ld e, $5b
    inc e
    ld e, $5b
    inc e
    ld c, $0e
    ld c, $46
    ld b, h
    dec c
    ld c, $0e
    jr nz, @+$5d

    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    add hl, sp
    ld c, $09
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $0e
    ld a, [de]
    ld e, e
    jr jr_017_53f7

    ld e, e
    jr @+$10

    ld c, $0e
    ld b, [hl]
    ld b, h
    dec c
    ld c, $0e
    ld c, $0e
    add hl, de
    ld c, $0e
    add hl, de
    ld c, $0e
    ld c, $09
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld c, $0e

jr_017_53f7:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, h
    dec bc
    dec bc
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0b
    dec bc
    dec bc
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld e, b
    inc l
    ld d, a
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld b, $04
    rlca
    ld h, h
    ld b, b
    ld sp, $2b54
    ld d, h
    nop
    ld d, e
    ld d, h
    call Call_000_2156
    jp Jump_000_3c29


    dec sp
    ld d, h
    inc a
    ld d, h
    ld b, c
    ld d, h
    ld b, [hl]
    ld d, h
    ld b, a
    ld d, h
    rst $38
    rla
    adc h
    ld [hl], e
    inc l
    ld d, b
    rla
    cp l
    ld [hl], e
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
    ld b, $ff
    rlca
    inc b
    ld b, $ff
    nop
    dec b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $090f
    add hl, bc
    rst $38
    rst $38
    ld [bc], a
    db $10
    rlca
    inc c
    rst $38
    ret nc

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
    add hl, bc
    inc b
    dec b
    sub b
    ld b, b
    sub h
    ld d, h
    sub c
    ld d, h
    nop
    and d
    ld d, h
    jp Jump_000_3c29


    sbc b
    ld d, h
    sbc l
    ld d, h
    rla
    and $4c
    jr z, jr_017_54ed

    rla
    ld b, [hl]
    ld c, l
    jr z, @+$52

    ld a, [bc]
    inc b
    nop
    inc b
    ld bc, $00ff
    dec b
    ld bc, $07ff
    inc b
    nop
    inc sp
    rlca
    dec b
    nop
    inc sp
    nop
    ld [bc], a
    inc c
    ld b, $07
    rst $38
    rst $38
    ld bc, $0925
    ld b, $ff
    rst $38
    ld [bc], a
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    inc c
    inc b
    dec b
    sub b
    ld b, b
    pop hl
    ld d, h
    sbc $54
    nop
    ld a, [hl+]
    ld d, l
    jp Jump_000_3c29


    push hl
    ld d, h
    dec h
    ld d, l
    ld [$c1fa], sp
    rst $10
    bit 0, a
    jr nz, jr_017_5517

jr_017_54ed:
    ld a, $0a
    ldh [$db], a
    ld a, $c8
    ldh [$dc], a
    ld [$d11d], a
    call Call_000_2ec4
    ld hl, $cd6d
    ld de, $cc5b
    ld bc, $000d
    call Call_000_00b1
    ld a, $62
    call Call_000_3eb4
    ldh a, [$db]
    cp $01
    jr nz, jr_017_551d

    ld hl, $d7c1
    set 0, [hl]

jr_017_5517:
    ld hl, $5520
    call Call_000_3c36

jr_017_551d:
    jp Jump_000_23d2


    rla
    push hl
    ld c, l
    jr z, jr_017_5575

    rla
    dec d
    ld c, [hl]
    jr z, jr_017_557a

    ld a, [bc]
    inc b
    nop
    inc b
    inc bc
    rst $38
    nop
    dec b
    inc bc
    rst $38
    rlca
    inc b
    inc b
    rst $38
    rlca
    dec b
    inc b
    rst $38
    nop
    ld [bc], a
    jr nz, jr_017_5548

    dec b
    rst $38
    jp nc, Jump_000_0401

    ld [$fe09], sp

jr_017_5548:
    ld [bc], a
    ld [bc], a
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    add hl, bc
    inc b
    dec b
    sub b
    ld b, b
    ld l, d
    ld d, l
    ld h, [hl]
    ld d, l
    nop
    ld a, b
    ld d, l
    call Call_000_3c29
    ret


    ld l, [hl]
    ld d, l
    ld [hl], e
    ld d, l
    rla
    ld d, c
    ld c, [hl]
    jr z, jr_017_55c3

    rla
    sub h

jr_017_5575:
    ld c, [hl]
    jr z, jr_017_55c8

    ld a, [bc]
    inc b

jr_017_557a:
    nop
    inc b
    inc bc
    inc sp
    nop
    dec b
    inc bc
    inc sp
    rlca
    inc b
    dec b
    rst $38
    rlca
    dec b
    dec b
    rst $38
    nop
    ld [bc], a
    dec c
    ld [$ff0c], sp
    jp nc, $0801

    ld [$fe06], sp
    ld bc, $f602
    add $00
    inc b
    or $c6
    nop
    dec b
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    inc c
    inc b
    inc b
    add b
    ld b, b
    cp e
    ld d, l
    or h
    ld d, l
    nop
    call z, $3e55
    db $10
    ld [$d364], a
    ret


    ld d, b
    cp l
    ld d, l
    ld [$093e], sp
    ld [$cd3d], a

jr_017_55c3:
    ld a, $54
    call Call_000_3eb4

jr_017_55c8:
    ld hl, $55ba
    ret


    ld a, [bc]
    inc bc
    rlca
    inc bc
    inc bc
    rst $38
    rlca
    inc b
    inc bc
    rst $38
    inc b
    inc b
    nop
    ld [hl], a
    nop
    ld bc, $0708
    ld b, $ff
    rst $38
    ld bc, $c712
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    inc c
    inc b
    inc b
    add b
    ld b, b
    ld [bc], a
    ld d, [hl]
    ld a, [$0055]
    add hl, bc
    ld d, [hl]
    ld a, $11
    ld [$d364], a
    jp Jump_000_3c29


    inc b
    ld d, [hl]
    rla
    ret nc

    ld d, e
    jr z, @+$52

    ld a, [bc]
    inc bc
    rlca
    inc bc
    inc bc
    rst $38
    rlca
    inc b
    inc bc
    rst $38
    inc b
    inc b
    ld bc, $0077
    ld bc, $070d
    ld b, $ff
    rst $38
    ld bc, $c712
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    inc c
    inc b
    inc b
    add b
    ld b, b
    ccf
    ld d, [hl]
    scf
    ld d, [hl]
    nop
    ld b, [hl]
    ld d, [hl]
    ld a, $12
    ld [$d364], a
    jp Jump_000_3c29


    ld b, c
    ld d, [hl]
    rla
    inc b
    ld d, h
    jr z, jr_017_5696

    ld a, [bc]
    inc bc
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    inc b
    inc b
    nop
    ld a, c
    nop
    ld bc, $080a
    ld b, $ff
    rst $38
    ld bc, $c712
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    inc c
    inc b
    inc b
    add b
    ld b, b
    ld a, d
    ld d, [hl]
    ld [hl], h
    ld d, [hl]
    nop
    sub d
    ld d, [hl]
    ld a, $12
    ld [$d364], a
    ret


    ld a, [hl]
    ld d, [hl]
    adc b
    ld d, [hl]
    rla
    scf
    ld d, h
    jr z, @+$52

    rla
    sbc d
    ld d, h
    jr z, jr_017_56d8

    rla
    call $2854
    ld d, b
    rla
    ld c, $55
    jr z, @+$52

    ld a, [bc]
    inc bc
    rlca
    inc bc

jr_017_5696:
    dec b
    rst $38
    rlca
    inc b
    dec b
    rst $38
    inc b
    inc b
    nop
    ld a, c
    nop
    ld [bc], a
    dec c
    ld b, $07
    rst $38
    rst $38
    ld bc, $080a
    ld b, $ff
    rst $38
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    ld d, $09
    dec c
    sub h
    ld e, b
    sub [hl]
    ld d, a
    add $56
    nop
    ld c, d
    ld e, b
    call Call_017_56dc
    call Call_000_3c29
    ld hl, $579e
    ld de, $5790
    ld a, [$d649]
    call Call_000_30fc

jr_017_56d8:
    ld [$d649], a
    ret


Call_017_56dc:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5739
    call Call_017_5742
    call Call_017_576e
    ld a, [$d833]
    bit 0, a
    jr nz, jr_017_5703

    push af
    ld a, $5f
    ld [$d09e], a
    ld bc, $0401
    ld a, $17
    call Call_000_3eb4
    pop af

jr_017_5703:
    bit 1, a
    jr nz, jr_017_5716

    push af
    ld a, $54
    ld [$d09e], a
    ld bc, $0209
    ld a, $17
    call Call_000_3eb4
    pop af

jr_017_5716:
    bit 2, a
    jr nz, jr_017_5729

    push af
    ld a, $54
    ld [$d09e], a
    ld bc, $0509
    ld a, $17
    call Call_000_3eb4
    pop af

jr_017_5729:
    bit 3, a
    ret nz

    ld a, $5f
    ld [$d09e], a
    ld bc, $0605
    ld a, $17
    jp Jump_000_3eb4


    inc b
    ld bc, $0902
    dec b
    add hl, bc
    ld b, $05
    rst $38

Call_017_5742:
    push hl
    ld hl, $d73e
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_017_574e:
    ld a, [hl+]
    cp $ff
    jr z, jr_017_576a

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_017_575f

    inc hl
    jr jr_017_574e

jr_017_575f:
    ld a, [hl+]
    cp c
    jr nz, jr_017_574e

    ld hl, $d73e
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_017_576a:
    xor a
    ldh [$e0], a
    ret


Call_017_576e:
    ld hl, $d833
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_017_577c

    set 0, [hl]
    ret


jr_017_577c:
    cp $02
    jr nz, jr_017_5783

    set 1, [hl]
    ret


jr_017_5783:
    cp $03
    jr nz, jr_017_578a

    set 2, [hl]
    ret


jr_017_578a:
    cp $04
    ret nz

    set 3, [hl]
    ret


    or l
    ld sp, $31e8
    ld de, $c332
    ld d, a
    rst $38
    ld d, a
    add hl, bc
    ld e, b
    inc de
    ld e, b
    ld [bc], a
    ld b, b
    ld [hl-], a
    ret c

    dec e
    ld e, b
    daa
    ld e, b
    ld [hl+], a
    ld e, b
    ld [hl+], a
    ld e, b
    inc bc
    jr nz, jr_017_57df

    ret c

    inc l
    ld e, b
    ld [hl], $58
    ld sp, $3158
    ld e, b
    inc b
    ld b, b
    ld [hl-], a
    ret c

    dec sp
    ld e, b
    ld b, l
    ld e, b
    ld b, b
    ld e, b
    ld b, b
    ld e, b
    rst $38
    ld [$37fa], sp
    ret c

    bit 7, a
    jr nz, jr_017_57e7

    ld hl, $57f0
    call Call_000_3c36
    ld a, $07
    call Call_000_3eb4
    call Call_000_1e96
    call Call_000_3ddb
    call Call_000_1ebd

jr_017_57df:
    ld hl, $57f5
    call Call_000_3c36
    jr jr_017_57ed

jr_017_57e7:
    ld hl, $57fa
    call Call_000_3c36

jr_017_57ed:
    jp Jump_000_23d2


    rla
    sbc [hl]
    ld [hl], a
    ld h, $50
    rla
    call z, $2677
    ld d, b
    rla
    db $db
    ld [hl], a
    ld h, $50
    ld [$9e21], sp
    ld d, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$aa21], sp
    ld d, a
    call Call_000_3168
    jp Jump_000_23d2


    ld [$b621], sp
    ld d, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    rst $28
    ld [hl], a
    ld h, $50
    rla
    ld [de], a
    ld a, b
    ld h, $50
    rla
    dec de
    ld a, b
    ld h, $50
    rla
    ld c, c
    ld a, b
    ld h, $50
    rla
    ld [hl], a
    ld a, b
    ld h, $50
    rla
    adc c
    ld a, b
    ld h, $50
    rla
    add $78
    ld h, $50
    rla
    ld [$2678], a
    ld d, b
    rla
    inc bc
    ld a, c
    ld h, $50
    ld l, $05
    nop
    ld c, $00
    ld [$1000], a
    nop
    push de
    nop
    ld [de], a
    nop
    db $ec
    inc bc
    add hl, bc
    rlca
    ret nc

    rrca
    ld de, $d204
    nop
    inc b
    add hl, hl
    ld [de], a
    rlca
    rst $38
    ret nc

    ld bc, $0818
    ld b, $ff
    pop de
    ld b, d
    and $25
    jr nz, jr_017_5883

    add hl, de
    rst $38
    ret nc

    ld b, e
    db $e4
    ld a, [bc]
    jr jr_017_588e

    ld de, $d1ff
    ld b, h
    and $26
    inc bc
    rst $00
    nop

jr_017_5883:
    ld c, $04
    rst $00
    nop
    db $10
    dec b
    rst $00
    nop
    ld [de], a
    inc de
    rst $00

jr_017_588e:
    inc bc
    add hl, bc
    adc c
    rst $00
    rrca
    ld de, $4140
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, c
    ld a, l
    inc h
    ld a, h
    dec a
    dec a
    ld a, $44
    ld c, $0e
    ld c, $2f
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld e, d
    ld h, a
    ld b, c
    ld b, c
    ld b, d
    ld c, $40
    ld h, e
    ld c, $67
    ld e, c
    ld b, [hl]
    ld b, h
    ld d, [hl]
    ld c, $47
    ld b, a
    ld b, [hl]
    ld c, $44
    ld c, $34
    ld c, $12
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld h, a
    ld b, b
    ld b, d
    dec c
    ld b, h
    ld c, $37
    ld c, $12
    ld b, [hl]
    ld b, h
    ld e, d
    ld c, $0e
    ld d, l
    ld d, [hl]
    dec c
    ld b, b
    ld h, e
    ld c, $67
    ld b, d
    ld b, [hl]
    ld d, b
    ld c, d
    ld b, e
    ld b, e
    ld c, $0e
    ld c, $44
    ld b, a
    ld a, e
    ld c, $56
    ld b, [hl]
    ld b, h
    ld b, e
    ld b, e
    ld b, e
    ld e, c
    ld e, d
    ld c, $44
    cpl
    ld b, a
    ld c, $0e
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, d
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld de, $0a09
    ld d, $5a
    ld [hl], c
    ld e, c
    dec d
    ld e, c
    nop
    jp z, $2159

    dec h
    pop de
    bit 5, [hl]
    res 5, [hl]
    call nz, Call_017_5932
    call Call_000_3c29
    ld hl, $597f
    ld de, $5945
    ld a, [$d650]
    call Call_000_30fc
    ld [$d650], a
    ret


Call_017_5932:
    ld a, [$d868]
    bit 7, a
    ret z

    ld a, $1d
    ld [$d09e], a
    ld bc, $0604
    ld a, $17
    jp Jump_000_3eb4


    ld c, e
    ld e, c
    add sp, $31
    ld de, $fa32
    ld l, b
    ret c

    bit 7, a
    jp nz, Jump_000_31b5

    ld hl, $596e
    call Call_000_34e1
    jp nc, Jump_000_31b5

    ldh a, [$8c]
    cp $0f
    jp z, Jump_000_31b5

    ld hl, $d125
    set 5, [hl]
    ld hl, $d868
    set 7, [hl]
    ret


    dec c
    ld de, $98ff
    ld e, c
    and d
    ld e, c
    rst $28
    inc hl
    rst $28
    inc hl
    ldh [rNR44], a
    ldh [rNR44], a
    ldh [rNR44], a
    ld bc, $6820
    ret c

    xor h
    ld e, c
    or [hl]
    ld e, c
    or c
    ld e, c
    or c
    ld e, c
    ld [bc], a
    jr nz, jr_017_59f6

    ret c

    cp e
    ld e, c
    push bc
    ld e, c
    ret nz

    ld e, c
    ret nz

    ld e, c
    rst $38
    ld [$7f21], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    ld [$8b21], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], c
    ld c, l
    daa
    ld d, b
    rla
    sbc d
    ld c, l
    daa
    ld d, b
    rla
    and a
    ld c, l
    daa
    ld d, b
    rla
    bit 1, l
    daa
    ld d, b
    rla
    rst $38
    ld c, l
    daa
    ld d, b
    rla
    ld [de], a
    ld c, [hl]
    daa
    ld d, b
    ld a, l
    inc bc
    ld de, $0208
    rst $38
    ld de, $0209
    rst $38
    ld bc, $0001
    jp nz, $0700

    ld b, $09
    dec bc
    rst $38
    db $d3
    ld b, c
    add sp, $05
    rlca
    ld b, $07
    rst $38
    ret nc

    ld b, d
    rst $20
    dec b
    ld b, a
    inc b
    rrca
    rst $38
    rst $38
    add e
    di
    ld b, a
    ld b, $0d
    rst $38
    rst $38

jr_017_59f6:
    add h
    jr z, jr_017_5a42

    inc de
    add hl, bc
    rst $38
    db $10
    dec b
    ld c, c
    ld b, $12
    rst $38
    db $10
    ld b, $49
    ld c, $06
    rst $38
    db $10
    rlca
    ld a, l
    rst $00
    ld de, $7d08
    rst $00
    ld de, $f909
    add $01
    ld bc, $0562
    ld a, l
    ld a, l
    ld c, [hl]
    ld l, l
    ld [hl], h
    inc c
    add hl, bc
    ld a, l
    ld c, l
    ld bc, $7d7a
    ld a, [bc]
    inc c
    dec c
    ld bc, $7a01
    ld b, $01
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $01
    ld a, l
    ld bc, $2d1c
    dec e
    dec hl
    inc l
    dec l
    ld e, $01
    ld a, l
    ld c, $6a
    ld e, e

jr_017_5a42:
    ld l, a
    jr @+$1c

    ld c, h
    ld bc, $4d0d
    rrca
    jr jr_017_5a65

    ld [hl], b
    jr jr_017_5a69

    ld c, a
    dec b
    ld [hl], d
    ld c, $0d
    ld h, [hl]
    dec e
    dec h
    dec e
    ld e, $0d
    ld l, h
    ld [hl], h
    inc c
    dec b
    ld bc, $0108
    ld e, [hl]
    ld bc, $0701

jr_017_5a65:
    ld a, l
    ld d, e
    inc b
    inc b

jr_017_5a69:
    ld bc, $7d24
    inc b
    ld d, c
    ld a, l
    ld a, l
    push hl
    push de
    push bc
    ld a, [$cf90]
    push af
    ld a, [$d0b4]
    push af
    xor a
    ld [$d082], a
    ld [$c02a], a
    call Call_000_2233
    ld a, $01
    ldh [$ba], a
    ld a, $8c
    call Call_000_2238
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    ldh [$d7], a
    ld a, [$cee9]
    ld [$cf1c], a
    ld c, $00
    call Call_017_5b32
    ld a, [$ceea]
    ld [$cf90], a
    ld [$d0b4], a
    call Call_017_5b37
    ld de, $9000
    ld hl, $9310
    ld bc, $0031
    call Call_000_15fe
    ld a, [$cee9]
    ld [$cf90], a
    ld [$d0b4], a
    call Call_017_5b37
    ld a, $01
    ldh [$ba], a
    ld a, [$cee9]
    call Call_000_118b
    call Call_000_373e
    ld c, $02
    ld a, $e5
    call Call_000_2211
    ld c, $50
    call Call_000_372f
    ld c, $01
    call Call_017_5b32
    ld bc, $0110

jr_017_5ae6:
    push bc
    call Call_017_5b78
    jr c, jr_017_5b27

    call Call_017_5b40
    pop bc
    inc b
    dec c
    dec c
    jr nz, jr_017_5ae6

    xor a
    ld [$ceec], a
    ld a, $31
    ld [$ceeb], a
    call Call_017_5b54
    ld a, [$ceea]

jr_017_5b04:
    ld [$cf1c], a
    call Call_000_2233
    ld a, [$cf1c]
    call Call_000_118b
    ld c, $00
    call Call_017_5b32
    pop af
    ld [$d0b4], a
    pop af
    ld [$cf90], a
    pop bc
    pop de
    pop hl
    ld a, [$ceec]
    and a
    ret z

    scf
    ret


jr_017_5b27:
    pop bc
    ld a, $01
    ld [$ceec], a
    ld a, [$cee9]
    jr jr_017_5b04

Call_017_5b32:
    ld b, $0b
    jp Jump_000_3e05


Call_017_5b37:
    call Call_000_132f
    ld hl, $c3cf
    jp Jump_000_1144


Call_017_5b40:
jr_017_5b40:
    ld a, $31
    ld [$ceeb], a
    call Call_017_5b54
    ld a, $cf
    ld [$ceeb], a
    call Call_017_5b54
    dec b
    jr nz, jr_017_5b40

    ret


Call_017_5b54:
    push bc
    xor a
    ldh [$ba], a
    ld hl, $c3cf
    ld bc, $0707
    ld de, $000d

jr_017_5b61:
    push bc

jr_017_5b62:
    ld a, [$ceeb]
    add [hl]
    ld [hl+], a
    dec c
    jr nz, jr_017_5b62

    pop bc
    add hl, de
    dec b
    jr nz, jr_017_5b61

    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    pop bc
    ret


Call_017_5b78:
jr_017_5b78:
    call Call_000_1e64
    push bc
    call Call_000_381e
    ldh a, [$b5]
    pop bc
    and $02
    jr nz, jr_017_5b8b

jr_017_5b86:
    dec c
    jr nz, jr_017_5b78

    and a
    ret


jr_017_5b8b:
    ld a, [$ccd4]
    and a
    jr nz, jr_017_5b86

    scf
    ret


    call Call_000_3ed7
    ld bc, $0005
    add hl, bc
    ld a, [$d11d]
    ld [$d0b4], a
    push hl
    call Call_000_132f
    pop hl
    ld a, [$d0bd]
    ld [hl+], a
    ld a, [$d0be]
    ld [hl], a
    ret


    call Call_000_3c29
    ld a, $04
    jp Jump_000_3f3a


    rla
    ret c

    ld l, l
    daa
    ld d, b
    call Call_000_3c29
    ld a, $03
    jp Jump_000_3f3a


    db $fc
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c29
    ld a, $0a
    call Call_000_3f3a
    ld a, $4a
    ld [$cf90], a
    call Call_000_118b
    call Call_017_5c3e
    xor a
    ldh [$ba], a
    ret


    rla
    add hl, bc
    ld l, [hl]
    daa
    ld d, b
    ld a, $b7
    ld [$cf90], a
    call Call_017_5c3e
    call Call_000_3c29
    ld a, $09
    call Call_000_3f3a
    ret


    rla
    ld e, b
    ld l, [hl]
    daa
    ld d, b
    ld a, $b6
    ld [$cf90], a
    call Call_017_5c3e
    call Call_000_3c29
    ld a, $0b
    call Call_000_3f3a
    ret


    rla
    add [hl]
    ld l, [hl]
    daa
    ld d, b
    ld a, $a4
    ld [$cf90], a
    call Call_017_5c3e
    call Call_000_3c29
    ld a, $0c
    call Call_000_3f3a
    ret


    rla
    or d
    ld l, [hl]
    daa
    ld d, b
    ld a, $23
    ld [$cf90], a
    call Call_017_5c3e
    call Call_000_3c29
    ld a, $0d
    call Call_000_3f3a
    ret


    rla
    push bc
    ld l, [hl]
    daa
    ld d, b

Call_017_5c3e:
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    xor a
    ldh [$b0], a
    call Call_000_370f
    ld a, $11
    ld [$d124], a
    call Call_000_3010
    call Call_000_231c
    ld a, [$cf90]
    ld [$d0b4], a
    call Call_000_132f
    ld de, $8b10
    call Call_000_143e
    ld a, $80
    ldh [$e1], a
    ld hl, $c486
    ld a, $02
    call Call_000_3eb4
    call Call_000_3852
    call Call_000_371b
    call Call_000_3ddb
    ld a, $90
    ldh [$b0], a
    ret


    call Call_000_3c29
    ld a, $01
    ld [$cc3c], a
    ld a, [$cd3d]
    call Call_000_3f3a
    ret


    ld [$0fcd], sp
    scf
    ld hl, $5d02
    call Call_000_3c36
    xor a
    ld [$d07b], a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $03
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a

Jump_017_5cb6:
    ld hl, $d72f
    set 6, [hl]
    ld hl, $c3a0
    ld bc, $080d
    call Call_000_16f0
    ld hl, $c3ca
    ld de, $5d0c
    call Call_000_1723
    ld hl, $5d07
    call Call_000_3c36
    call Call_000_3aab
    bit 1, a
    jr nz, jr_017_5cf7

    ld a, [$cc26]
    cp $03
    jr z, jr_017_5cf7

    ld hl, $d72f
    res 6, [hl]
    ld hl, $5d3c
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c36
    jp Jump_017_5cb6


jr_017_5cf7:
    ld hl, $d72f
    res 6, [hl]
    call Call_000_371b
    jp Jump_000_23d2


    rla
    reti


    ld l, [hl]
    daa
    ld d, b
    rla
    rst $38
    ld l, [hl]
    daa
    ld d, b
    add a
    adc [hl]
    sub [hl]
    ld a, a
    sub e
    adc [hl]
    ld a, a
    adc e
    adc b
    adc l
    adc d
    ld c, [hl]
    add d
    adc [hl]
    adc e
    adc [hl]
    sub d
    sub d
    add h
    sub h
    adc h
    ld c, [hl]
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld c, [hl]
    sub d
    sub e
    adc [hl]
    adc a
    ld a, a
    sub c
    add h
    add b
    add e
    adc b
    adc l
    add [hl]
    ld d, b
    ld b, d
    ld e, l
    ld b, a
    ld e, l
    ld c, h
    ld e, l
    rla
    inc hl
    ld l, a
    daa
    ld d, b
    rla
    sub l
    ld l, a
    daa
    ld d, b
    rla
    ret nz

    ld l, a
    daa
    ld d, b
    ld [$0fcd], sp
    scf
    ld hl, $5e06
    call Call_000_3c36
    xor a
    ld [$d07b], a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $33
    ld [$cc29], a
    ld a, $02
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a

Jump_017_5d79:
jr_017_5d79:
    ld hl, $d72f
    set 6, [hl]
    ld hl, $c3a0
    ld bc, $060a
    call Call_000_16f0
    ld hl, $c3c9
    ld de, $5e10
    call Call_000_1723
    ld hl, $c3ce
    ld de, $5e1f
    call Call_000_1723
    ld hl, $5e0b
    call Call_000_3c36
    call Call_000_3aab
    bit 1, a
    jr nz, jr_017_5dfb

    bit 4, a
    jr z, jr_017_5dc0

    ld a, $02
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $06
    ld [$cc25], a
    ld a, $03
    ld [$d07b], a
    jr jr_017_5d79

jr_017_5dc0:
    bit 5, a
    jr z, jr_017_5dd9

    ld a, $02
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    xor a
    ld [$d07b], a
    jr jr_017_5d79

jr_017_5dd9:
    ld a, [$cc26]
    ld b, a
    ld a, [$d07b]
    add b
    cp $05
    jr z, jr_017_5dfb

    ld hl, $d72f
    res 6, [hl]
    ld hl, $5e30
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c36
    jp Jump_017_5d79


jr_017_5dfb:
    ld hl, $d72f
    res 6, [hl]
    call Call_000_371b
    jp Jump_000_23d2


    rla
    add sp, $6f
    daa
    ld d, b
    rla
    ld h, $70
    daa
    ld d, b
    ld a, a
    sub d
    adc e
    adc a
    ld c, [hl]
    ld a, a
    adc a
    sub d
    adc l
    ld c, [hl]
    ld a, a
    adc a
    add b
    sub c
    ld d, b
    ld a, a
    add c
    sub c
    adc l
    ld c, [hl]
    ld a, a
    add l
    sub c
    sbc c
    ld c, [hl]
    ld a, a
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld d, b
    ld a, [hl-]
    ld e, [hl]
    ccf
    ld e, [hl]
    ld b, h
    ld e, [hl]
    ld c, c
    ld e, [hl]
    ld c, [hl]
    ld e, [hl]
    rla
    ld c, d
    ld [hl], b
    daa
    ld d, b
    rla
    or [hl]
    ld [hl], b
    daa
    ld d, b
    rla
    inc hl
    ld [hl], c
    daa
    ld d, b
    rla
    adc l
    ld [hl], c
    daa
    ld d, b
    rla
    rlca
    ld [hl], d
    daa
    ld d, b
    call Call_000_3c29
    ld a, $28
    jp Jump_000_3f3a


    rla
    ld a, a
    ld [hl], d
    daa
    ld d, b
    call Call_000_3c29
    ld a, [$cd3d]
    ld [$cd5b], a
    ld a, [$d772]
    bit 0, a
    jr z, jr_017_5e75

    ld a, $28
    jp Jump_000_3f3a


jr_017_5e75:
    bit 1, a
    jr nz, jr_017_5e98

    ld a, [$d742]
    ld b, a
    ld a, [$cd5b]
    cp b
    jr z, jr_017_5e87

    ld a, $28
    jr jr_017_5ec5

jr_017_5e87:
    ld hl, $d772
    set 1, [hl]
    ld hl, $6d0c
    ld b, $3c
    call Call_000_3e84
    ld a, $3d
    jr jr_017_5ec5

jr_017_5e98:
    ld a, [$cd5b]
    ld b, a
    ld a, [$d743]
    cp b
    jr z, jr_017_5eb9

    ld a, [$d744]
    cp b
    jr z, jr_017_5eb9

    ld hl, $d772
    res 1, [hl]
    call Call_000_3e6d
    and $0e
    ld [$d742], a
    ld a, $40
    jr jr_017_5ec5

jr_017_5eb9:
    ld hl, $d772
    set 0, [hl]
    ld hl, $d125
    set 6, [hl]
    ld a, $3f

jr_017_5ec5:
    jp Jump_000_3f3a


    ld [bc], a
    ld bc, $ff03
    rst $38
    inc bc
    nop
    ld [bc], a
    inc b
    rst $38
    ld [bc], a
    ld bc, $ff05
    rst $38
    inc bc
    nop
    inc b
    ld b, $ff
    inc b
    ld bc, $0503
    rlca
    inc bc
    ld [bc], a
    inc b
    ld [$03ff], sp
    inc bc
    rlca
    add hl, bc
    rst $38
    inc b
    inc b
    ld b, $08
    ld a, [bc]
    inc bc
    dec b
    rlca
    dec bc
    rst $38
    inc bc
    ld b, $0a
    inc c
    rst $38
    inc b
    rlca
    add hl, bc
    dec bc
    dec c
    inc bc
    ld [$0e0a], sp
    rst $38
    ld [bc], a
    add hl, bc
    dec c
    rst $38
    rst $38
    inc bc
    ld a, [bc]
    inc c
    ld c, $ff
    ld [bc], a
    dec bc
    dec c
    rst $38
    rst $38
    rla
    sbc [hl]
    ld [hl], d
    daa
    ld [$3ecd], sp
    scf
    ld a, $9d
    call Call_000_2238
    call Call_000_373e
    jp Jump_000_23d2


    rla
    ldh a, [$72]
    daa
    ld d, b
    ld [$3ecd], sp
    scf
    ld a, $9d
    call Call_000_2238
    call Call_000_373e
    jp Jump_000_23d2


    rla
    add hl, hl
    ld [hl], e
    daa
    ld [$3ecd], sp
    scf
    ld a, $ad
    call Call_000_2238
    call Call_000_373e
    jp Jump_000_23d2


    rla
    ld h, h
    ld [hl], e
    daa
    ld [$3ecd], sp
    scf
    ld a, $a5
    call Call_000_2238
    call Call_000_373e
    jp Jump_000_23d2


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_017_6950:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_017_7fcb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
