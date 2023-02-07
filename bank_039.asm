; disasSembly of "yell.gbc"
SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    ld d, l
    db $30, $94
    pop af
    and c
    and l
    inc a
    add hl, sp
    xor d
    db $d3
    dec [hl]
    jr nc, jr_039_4062

    ld c, h
    ld a, [c]
    ld l, c
    ld d, c
    ldh a, [$6c]
    sbc h
    ld a, [hl-]
    xor b
    db $d3
    ld c, b
    sbc d
    daa
    add d
    adc $8b
    dec l
    rst $20
    ld b, c
    bit 1, [hl]
    db $38, $a6
    inc b
    db $20, $8c
    inc l
    inc de
    sbc [hl]
    adc b
    jp nc, $ab24

    ld a, [hl-]
    ld d, c
    adc d
    ld c, [hl]
    db $f4
    ld [hl-], a
    db $d3
    pop bc
    ld [hl], d
    ld d, d
    db $d3
    sub l
    db $e4
    ld h, d
    ld h, d
    ld d, b
    db $e3

jr_039_403f:
    ld h, [hl]
    add hl, hl
    add c
    ld [hl], b
    jp nc, $ddf8

    ld [c], a
    ld [de], a
    jr z, jr_039_407c

    inc sp
    sbc c
    adc c
    sbc a
    dec d
    or b
    ldh [rSTAT], a
    inc b
    db $dd
    adc b
    ld a, b
    xor d
    rlca
    jp $ba60


    xor b
    add $0a
    ld hl, sp-$3b
    ld [c], a
    and b

jr_039_4062:
    cp c
    ld b, c
    db $30, $96
    adc h
    sbc [hl]
    jr nc, jr_039_40ca

    or b
    db $e3
    jr jr_039_403f

    db $e3
    ld d, $3b
    rra
    rst $38
    db $fc
    inc hl
    add hl, hl
    adc h
    add hl, bc
    ld [c], a
    call nz, $9ec0

jr_039_407c:
    inc d
    sub l
    and [hl]
    jr z, @-$59

    daa
    ld [bc], a
    ld d, a
    adc e
    inc c
    xor b
    ld c, h
    inc d
    ld [hl], e
    pop de
    ld e, a
    ld sp, hl
    sbc h
    ld l, [hl]
    sbc c
    ld e, a
    push bc
    daa
    inc l
    ld [hl], e
    daa
    add l
    and a
    add h
    call nz, Call_039_787a
    ld c, c
    rra
    ld e, $37
    inc e
    jp hl


    call Call_000_311c
    sub e
    ld a, [$7354]
    xor c
    ld e, a
    ld sp, hl
    sbc d
    ld h, a
    dec d
    db $e3
    ld [hl+], a
    call nc, $820e
    sbc e
    ld sp, $635c
    dec c
    ld e, a
    ld l, d
    xor c
    add d
    ld c, d
    ld de, $43c5
    ld d, h
    ld h, d
    add h
    ld [hl], e
    ld b, h
    daa
    add a
    dec e
    ld [hl], c

jr_039_40ca:
    sbc h
    ld h, [hl]
    inc bc

jr_039_40cd:
    inc b
    ld bc, $0102
    ld bc, $0101
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc bc
    inc bc
    inc c
    ld [bc], a
    jr @+$06

    ld [$0818], sp
    ld [$0800], sp
    nop
    inc b
    ld b, h
    ld b, h
    add h
    add h
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    ld d, l
    dec a
    add hl, hl
    ld c, [hl]
    ld c, a
    push bc
    dec [hl]
    add [hl]
    sub h
    db $db
    dec b
    ld [hl+], a
    dec c
    inc sp
    sbc d
    xor l
    inc sp
    ld e, a
    adc e
    adc l
    ld [hl], d
    ld l, c
    ld d, c
    ldh a, [$6c]
    dec l
    add hl, sp
    inc [hl]
    adc c
    and d
    ld a, b
    inc l
    ld h, e
    sub [hl]
    bit 6, c
    ret nc

    ld [hl], e
    xor d
    add hl, hl
    ld c, b
    add d
    inc a
    jr z, jr_039_40cd

    xor c
    dec sp
    ret nc

    xor c
    dec h
    dec sp
    sub d
    ld d, d
    ld d, e
    ret nz

    add sp, -$6c
    db $ec
    ld [hl], e
    jr z, @-$18

    ld h, d
    sub h
    ld e, h
    inc [hl]
    rst $20
    ld a, b
    add h
    adc b
    ld [hl], d
    inc sp
    sbc c
    adc c
    sbc a
    dec d
    or b
    ldh [$73], a
    adc c
    adc b
    ld a, b
    xor d
    rra
    ld a, b
    ld [c], a
    add d
    cp [hl]
    dec [hl]
    ld l, a
    add hl, hl
    call z, $a3a5
    add d
    dec b
    ld b, a
    ld [$39ce], sp
    xor d
    ld l, $7a
    ld [hl], b
    daa
    dec bc
    ld de, $d126
    jr nc, jr_039_41b0

    xor c
    add h
    ld l, e
    dec h
    ld l, c
    adc d
    add hl, hl
    call z, $e295
    jp $122a


    ld [hl], l

Call_039_4198:
    pop de
    ld e, a
    ld sp, hl
    ld [de], a
    ld [hl], d
    and [hl]
    db $10
    ld e, a
    rst $00
    ld e, h
    ld e, d
    ld a, d
    ld a, [hl-]
    ld a, b
    ld l, [hl]
    add a
    and a
    add l
    ld [hl], b
    ld a, h
    ld a, b
    call c, $a573

jr_039_41b0:
    rst $00
    add c
    jr jr_039_41d4

    cp $9d
    xor d
    ld d, a
    cp $43
    inc e
    ld sp, $325e
    dec l
    ld b, b
    rst $00
    inc de
    dec d
    add $30
    rst $00
    ld a, [de]
    ld c, d
    ld de, $60ac
    sbc d
    and c
    inc e
    ld [hl-], a
    ld b, e
    ld e, $68
    nop
    nop

jr_039_41d4:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $7131
    add b
    adc c
    add b
    add b
    jr z, @-$6e

    ld b, h
    jr c, jr_039_41eb

jr_039_41eb:
    ld a, h
    ld b, h
    jr c, jr_039_4217

    stop
    nop
    nop
    nop
    jr jr_039_420e

    nop
    nop
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0191
    ld bc, $0914
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e

jr_039_420e:
    inc d

jr_039_420f:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop

jr_039_4217:
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    adc h
    adc [hl]
    add hl, bc
    adc l
    add b
    sub e
    sub b
    sub b
    add b
    add b
    nop
    add b
    nop
    ld b, b
    ld b, b
    ld b, b
    nop
    jr nz, @-$7e

    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nc, jr_039_427a

    nop
    jr nz, jr_039_423d

jr_039_423d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop

jr_039_4248:
    jr jr_039_424a

jr_039_424a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0306
    inc c

jr_039_4259:
    ld [bc], a
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    or c
    ld bc, $09c9
    add hl, bc
    ld bc, $0001
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld d, l
    or a
    and h
    ld a, [c]
    ld h, h
    pop af
    jr nz, jr_039_420f

jr_039_427a:
    inc a
    adc e
    ld b, l
    ld d, a
    db $fd
    dec b
    ld a, a
    jr c, jr_039_429b

    xor a
    xor d
    ld h, h
    ld l, $a3
    and [hl]
    dec d
    inc c
    adc h
    jp hl


    and h
    sbc a
    ld [$3026], sp
    di
    adc [hl]
    add hl, hl
    ld d, e
    call z, $c473
    adc a
    ld [hl+], a

jr_039_429b:
    dec d
    inc a
    dec d
    ld c, c
    adc [hl]
    cp h
    sub a
    dec h
    ld sp, $8153
    ld [c], a
    and l
    sbc b
    inc h
    cp d
    ld [hl], $78
    xor c
    ld c, b
    sub b
    ld h, b
    ld c, [hl]
    dec [hl]
    add hl, hl
    ld [$75ff], a
    rst $28
    push de
    inc [hl]
    add c
    ld d, [hl]
    db $e3
    dec b
    xor b
    sub l
    db $e3
    jr c, jr_039_4248

    and e
    rlca
    adc h
    inc d
    inc l
    call $c968
    db $e3
    dec d
    ld a, [hl-]
    rst $30
    rst $38
    rst $38
    ld [c], a
    and [hl]
    pop af
    db $e4
    jr nz, jr_039_4259

    ld a, b
    ld a, [c]
    ld a, c
    ld d, $a2
    adc e
    inc c
    add d
    ld c, $71
    ld d, b
    jp c, $0f11

    add sp, $47
    ld a, [hl-]
    ld h, a
    rst $38
    sbc l
    ld d, d
    ld c, h
    ld c, l
    ld b, [hl]
    ld sp, $18d7
    daa
    adc b
    sub c
    rst $20
    adc a
    ld sp, hl
    pop hl
    ld b, h
    ld a, c
    sbc $98
    ld b, a
    dec sp
    ld [de], a
    sub d
    xor c
    adc d
    db $76
    ld a, a
    rst $20
    ld [hl-], a
    ld d, e
    ret nz

    sub c
    ld a, a
    ld [bc], a
    ld [hl], c
    and l
    inc a
    ld b, h
    ld [hl-], a
    inc l
    db $10
    ld e, c
    or h
    ld d, e
    inc e
    ld [hl], c
    xor h
    jr z, @+$49

    inc l
    ld l, a
    dec e
    ld de, $19d7
    push bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld [hl], b
    jr c, jr_039_43c7

    inc a
    ld a, $19
    add hl, sp
    jr jr_039_4369

    ld [$0018], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_4383

    ld [$0408], sp
    inc c
    ld [bc], a
    inc b

jr_039_4369:
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    nop
    nop
    db $10
    db $10
    rlca
    rrca
    nop
    inc b
    add b
    nop
    ret nz

    nop
    add b
    ret nz

    add b
    add b
    nop
    adc b

jr_039_4383:
    ld d, l
    or c
    and l
    inc a
    ld d, h
    adc d
    ld d, e
    jp nz, $a942

    db $d3
    dec d
    ld d, d
    sub l
    ld d, e
    ld a, [hl-]
    ld a, [hl+]
    push de
    rst $38
    cp d
    rst $18
    ld [$4ba3], a
    ld c, d
    ld l, b
    add [hl]
    add hl, bc
    ld [$b4e6], sp
    and a
    jp nz, $8a41

    ld d, e
    sub e
    dec h
    ld d, d
    inc hl
    ld a, [bc]
    call nc, $a2e7
    inc [hl]
    jp z, $a48e

    inc d
    pop af
    ld d, b
    ld d, e
    rst $00
    ld d, e
    or c
    dec h
    ld a, [c]
    inc hl
    daa
    call $25d6
    ld d, c
    ld h, h
    cp a
    adc l
    sbc $25

jr_039_43c7:
    ld a, [de]
    inc c
    adc h
    and $a2
    sub a
    push de
    ld h, [hl]
    rlca
    ld d, h
    db $dd
    and d
    rla
    adc b
    xor d
    cp a
    add d
    cp a
    db $fc
    push bc
    ld a, [de]
    or [hl]
    jr nc, @+$7a

    or l
    ld c, b
    ld c, h
    sub $8c
    ld e, [hl]
    jr nc, @+$52

    or a
    adc h
    ld l, b
    call Call_000_15e3
    ld h, $39
    or a
    rst $38
    rst $38
    db $e3
    add hl, de
    sub h
    add hl, bc
    ld [c], a
    call nz, $9ec0
    inc d
    sub l
    and [hl]
    jr z, @-$59

    daa
    ld [bc], a
    ld d, a
    adc e
    inc c
    xor b
    ld c, h
    inc d
    ld [hl], e
    pop de
    ld e, a
    ld sp, hl
    call nc, Call_039_4198
    ld a, a
    inc d
    sbc h
    or c
    ld c, c
    ret nz

    sbc [hl]
    ld d, $9e
    inc de
    ld de, $e1e9
    inc h
    ld a, h
    ld a, b
    call c, $a573
    ld b, a
    inc b
    ld [hl], b
    add $08
    ccf
    and l
    ld b, a
    ld a, [hl-]
    sub l
    rst $38
    sbc h
    pop de
    ld e, [hl]
    ld [hl-], a
    dec l
    ld b, b
    add sp, $29
    or e
    dec d
    add $30
    push de
    db $f4
    xor d
    ld h, d
    sub d
    add h
    ld [hl], c
    call nz, $9251
    ld de, $10cd
    sbc [hl]
    inc e
    ld [hl], l
    add $71
    sub b
    ld h, b
    ld [hl], b
    jr c, @+$7e

    inc a
    ld a, $19
    add hl, sp
    jr jr_039_446d

    ld [$0818], sp
    ld [$0c04], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_4487

    db $10
    db $10
    rlca
    rrca
    nop
    nop

jr_039_446d:
    nop
    nop
    nop
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
    nop
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
    rlca

jr_039_4487:
    jr jr_039_44c5

    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$3e

    db $fc
    db $fc
    jr @+$3a

    jr nc, jr_039_450b

    ld [bc], a
    inc b
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    inc b
    add b
    nop
    ret nz

    nop
    add b
    ret nz

    add b
    add b
    inc c
    adc h
    ld d, $16
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_44c5:
    nop
    nop
    ld bc, $0101
    ld bc, $8001
    rlca
    nop
    rrca
    ld bc, $0e04
    inc b
    inc b
    ret nz

    call nz, Call_039_6260
    ld [c], a
    ld [c], a
    ret nz

    ld h, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0303
    dec b
    dec b
    ld bc, $0001
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0000
    inc c
    inc c
    ld d, b
    jr nz, @-$76

    ld [hl], b
    ld bc, $88f9

jr_039_4504:
    ld [hl], b
    ld d, b
    jr nz, jr_039_4508

jr_039_4508:
    nop
    nop
    add b

jr_039_450b:
    nop
    nop
    jr nc, jr_039_453f

    nop
    nop
    ld [de], a
    ld [hl-], a
    add h
    call z, RST_00
    nop
    nop
    nop
    nop
    jp nz, $28c2

    ld [de], a
    ld b, h
    add hl, sp
    ld bc, $457d
    add hl, sp
    jr z, jr_039_4538

    ld bc, $0302
    inc b
    add hl, bc
    add hl, bc
    ld de, $2111
    ld hl, $4141
    add c
    add c
    ld bc, $0101

jr_039_4538:
    ld bc, $0101
    nop
    ld bc, $0101

jr_039_453f:
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [$0808], sp
    inc b
    inc b

jr_039_4557:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp $00
    db $fc
    nop
    jr nc, jr_039_4561

jr_039_4561:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    ld bc, $0202
    ld b, c
    ld b, c
    ld b, c
    add c
    add c
    ld bc, $0101
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    adc b
    inc c
    and b
    jr nc, jr_039_4504

    ret nz

    jr nz, jr_039_45a7

    sub b
    db $10
    add b
    ld [$b755], sp
    and h
    ld a, [c]
    ld h, h
    pop af
    jr nz, @-$69

    inc a
    adc e
    ld b, l
    ld d, a
    db $fd
    dec b
    ld a, a
    jr c, jr_039_45b4

    xor a
    xor d
    ld h, h
    ld l, $a3
    and [hl]

jr_039_45a2:
    dec d
    inc c
    adc h
    jp hl


    and h

jr_039_45a7:
    sbc e
    ld [$3026], sp
    di
    adc [hl]
    ld h, $58
    di
    inc e
    pop af
    jr nz, jr_039_4557

jr_039_45b4:
    push bc
    add d
    db $d3
    pop bc
    ld d, d
    and e
    xor a
    ld h, $c2
    inc d
    push bc
    ld c, [hl]
    rlca
    adc d
    sub [hl]
    ld h, b
    sub d
    add sp, -$27
    ld [c], a
    and l
    ld [hl+], a
    ld b, c
    add c
    jr c, jr_039_45a2

    and a
    xor e
    db $fd
    rst $10
    cp a
    ld d, h
    jp nc, Jump_039_5b05

    adc h
    ld d, $a2
    ld d, a
    adc h
    ld [c], a
    ld d, $8c
    ld e, $30
    ld d, b
    or e
    dec [hl]
    and e
    daa
    adc h
    ld d, h
    db $eb
    rst $18
    rst $38
    rst $38
    adc d
    sbc e
    rst $00
    sub b
    add d
    add hl, bc
    db $e3
    ret


    db $e4
    ld e, d
    adc d
    inc l
    ld [hl-], a
    ld [$c539], sp
    ld b, e
    ld l, b
    ld b, h
    ccf
    and c
    inc e
    jp hl


    sbc a
    cp $75
    ld c, c
    sub l
    ld b, [hl]
    ld sp, $a7e1
    adc b
    sub c
    rst $20
    add l
    sub e
    ld sp, hl
    pop hl
    ld b, h
    ld a, c
    db $e3
    rst $00
    dec sp
    add hl, de
    ld a, [hl+]
    ld h, d
    sbc l
    sbc a
    ld sp, hl
    call z, $f094
    inc h
    ld e, a
    ret nz

    sbc h
    ld l, c
    ld c, a
    ld de, $8b0c
    ld d, e
    and $d1
    ld c, h
    ld [hl], c
    call nc, Call_000_0a67
    ld de, $1bcb
    rst $00
    ld b, h
    ld [hl], l
    add $71
    ld h, b
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_4695

    db $fc
    db $fc
    jr jr_039_4699

    add b
    ret nz

    ld bc, $0780
    nop
    rrca
    ld bc, $0e04
    inc b
    inc b
    ret nz

    call nz, Call_000_3818
    jr nc, jr_039_46df

    ret nz

    ld h, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld d, l
    cp [hl]
    xor d
    ei
    call nc, Call_039_4e95
    ld h, l
    ld hl, sp+$61
    xor a
    ld a, [$478e]
    and l
    ld c, a
    dec b
    ld b, a
    rst $00
    ld hl, $d43a
    sbc d

jr_039_4692:
    add l
    add d
    ld c, [hl]

jr_039_4695:
    ld [hl], a
    inc [hl]
    sub l
    adc e

jr_039_4699:
    adc l
    sbc [hl]
    add hl, sp
    db $d3
    ld d, a
    adc c
    ld c, [hl]
    or $8b
    adc [hl]
    sub $14
    ld d, [hl]
    adc [hl]
    daa
    call z, Call_039_5f62
    add d
    jr c, jr_039_470c

    add hl, de
    dec l
    ld e, d
    rla
    adc e
    ld e, h
    or a
    adc [hl]
    ld a, [hl-]
    add hl, hl
    ld sp, hl
    call nc, $385e
    jp c, Jump_039_7821

    xor d
    cp b
    db $e4
    ld b, [hl]
    xor c
    adc h
    ld e, $32
    ld h, h
    push de
    ld l, b
    pop bc
    db $e3
    daa
    xor b
    jp z, $27a3

    adc h
    sbc [hl]
    ld a, [hl-]
    ld [hl], a
    rst $38
    rst $38
    ld hl, sp-$47
    push af
    ld a, [c]
    ld d, d
    ld [hl], h
    or c
    sub h

jr_039_46df:
    inc [hl]
    ld [hl], e
    jp nz, Jump_039_7882

    ld d, b
    ret z

    jr nc, jr_039_4692

    ld [hl], l
    ld sp, $fe97
    ld e, d
    db $76
    rst $18
    push bc
    rst $20
    adc a
    rst $20
    ld [bc], a
    ld a, [bc]
    ld [hl], d
    ld a, c
    sub e
    inc bc
    cp $9c
    ld l, e
    and $0c
    ccf
    ld a, [c]
    ld [hl], c
    inc [hl]
    ld d, $5c
    ld b, d
    add h
    add hl, bc
    ld c, d
    ld h, h
    add $f4
    ld b, e

jr_039_470c:
    ld [de], a
    rst $38
    add hl, hl
    dec bc
    inc e
    or c
    cpl
    jp Jump_039_7c07


    ld [hl], d
    or c
    dec c
    add $31
    sbc d
    sbc c
    dec h
    ld sp, $bfc4
    ld b, [hl]
    adc b
    ld b, a
    ld a, [bc]
    rst $38
    dec e
    ld c, c
    dec hl
    rst $38
    rst $00
    ld e, h
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    db $10
    jr @+$42

    ld h, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    ld [$0808], sp
    ld [$0c0c], sp
    ld [$0008], sp
    ld [$0400], sp
    nop
    db $10
    ld d, b
    ld d, b
    jr nz, @+$22

    nop
    nop
    ld a, [bc]
    inc b
    ld de, $010e
    ld e, $11
    ld c, $55
    or c
    and l
    inc a
    ld d, h
    adc d
    ld d, e
    jp nz, $a942

    db $d3
    dec d
    ld d, d
    sub l
    ld d, e
    ld a, [hl-]
    ld a, [hl+]
    push de
    rst $38
    cp d
    rst $18
    ld [$4ba3], a
    ld c, d
    ld l, b
    add [hl]
    add hl, bc
    ld [$b4e6], sp
    and a
    jp nz, $8a41

    ld d, e
    sub e
    dec h
    ld d, d
    inc hl
    ld a, [bc]
    call nc, $a2e7
    inc [hl]
    jp z, $a48e

    rla
    ld c, a
    dec c
    dec b
    ld d, e
    push bc
    ld e, b
    db $eb
    ld c, c
    ld a, h
    adc b
    ret


    di
    ld [hl], l
    adc c
    ld d, h
    ld e, c
    cpl
    db $e3
    ld [hl], a
    adc c
    ld b, [hl]
    add e
    inc hl
    add hl, sp
    xor b
    and l
    push af
    ld e, c
    add c
    push de
    scf
    ld l, b
    add l
    ld [c], a
    ld a, [hl+]
    xor a
    ldh [$af], a
    rst $38
    ld sp, $ad46
    adc h
    ld e, $2d
    ld d, d
    inc de
    dec [hl]
    and e
    rla
    adc h
    inc d
    dec l
    db $e3
    ld a, [de]
    inc sp
    ld a, b
    push bc
    ld c, c
    adc [hl]
    ld l, l
    rst $38
    rst $38
    ld hl, sp-$3a
    ld h, l
    ld [bc], a
    ld h, d
    xor c
    push de
    inc de
    ld [bc], a
    ld b, h
    xor h
    ld [hl], l
    ld c, c
    ld e, d
    ld de, $a210
    sub h
    sbc h
    add hl, bc
    ld e, [hl]
    inc l
    ld [hl-], a
    and c
    jr nc, jr_039_4849

    rst $08
    ld b, l
    ld a, a
    rst $20
    ld d, d
    ld h, c
    dec b
    db $fc
    ld d, d
    ld [hl], d
    push bc
    daa
    ld [bc], a
    ld a, b
    ld e, d
    ld a, b
    ld c, [hl]
    adc a
    and a
    add l
    jp $a6f1


    add hl, de
    pop de
    add $b2
    ld [de], a
    sub d
    sub l
    inc e
    ld de, $a494
    add $08
    ccf
    and l
    ld b, a
    ld a, [hl-]
    sub l
    rst $38
    sbc h
    pop de
    ld e, [hl]
    ld [hl-], a
    dec l
    ld b, b
    add sp, $29
    or e
    dec d
    add $30
    push de
    db $f4
    xor d
    ld h, d
    sub d
    add h
    ld [hl], c
    call nz, $9251
    ld de, $10cd
    sbc [hl]
    inc e
    ld [hl], l
    add $71
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_4849:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rSVBK], a
    ld hl, sp+$78
    ld a, h
    ld [hl-], a
    ld [hl], e
    jr nc, jr_039_48cf

    db $10
    jr nc, jr_039_48a2

jr_039_48a2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc b
    inc c
    db $10
    db $10

jr_039_48cf:
    jr nz, @+$22

    nop
    nop
    nop
    nop
    jr nc, jr_039_4947

    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    db $10
    db $10
    ld [$0418], sp
    ld [$0403], sp
    ld bc, $0102
    ld bc, $0101
    nop
    ld bc, $2020
    rrca
    rra
    nop
    ld [$0000], sp
    add b
    nop
    nop
    add b
    nop
    nop
    jr jr_039_4919

    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4001
    ld b, b
    ld bc, $0281
    ld bc, $020c

jr_039_4919:
    jr @+$06

    ld [$0818], sp
    ld [$8880], sp
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0404
    dec b
    dec b
    inc b
    nop
    inc b
    jr nz, jr_039_4967

    inc b
    inc h
    nop
    nop

jr_039_4947:
    and b
    ld b, b
    db $10
    ldh [rSC], a
    ld a, [c]
    ld de, $a0e1
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    inc h
    ld h, h
    ld l, b
    sbc b
    ldh a, [$90]
    ld b, b
    ld b, h
    inc b
    ld b, h
    inc b
    inc b

jr_039_4967:
    ld d, b

jr_039_4968:
    inc h
    adc c
    ld [hl], e
    ld [bc], a
    ld a, [$728a]
    ld d, b
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    db $10
    db $10
    db $10
    ld [$6008], sp
    ld h, b
    nop
    nop
    db $fc
    nop

jr_039_49a7:
    ld hl, sp+$00
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc b
    ld b, $08
    inc bc
    inc b
    rlca
    inc b
    inc bc
    dec b
    inc b
    add d
    add e
    add d
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    db $10
    jr @+$42

    ld h, b
    nop
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    nop
    db $10
    ld d, l
    jr nc, jr_039_4968

    pop af
    and c
    and l
    inc a
    add hl, sp
    xor d
    db $d3
    dec [hl]
    jr nc, jr_039_4a33

    ld c, h
    ld a, [c]
    ld l, c
    ld d, c
    ldh a, [$6c]
    adc a
    ld c, $aa
    inc [hl]
    jp nc, $8926

jr_039_49eb:
    ldh [$b3], a
    and d
    bit 7, c
    ret nc

    ld [hl], d
    db $d3
    adc [hl]
    add hl, hl
    add c
    ld [$0b23], sp
    inc b
    rst $20
    and d
    inc [hl]
    adc c
    ld a, [hl+]
    adc $94
    dec e
    dec h

jr_039_4a03:
    dec sp
    ret nc

    ld d, h
    sub h
    ldh a, [$5c]
    sub h
    or h
    push hl
    ld a, c
    jr jr_039_49a7

    sub h
    jr c, jr_039_49eb

    adc d
    ld h, b
    ld e, h
    inc [hl]
    cp [hl]
    scf
    ld a, b
    add h
    adc d
    inc c
    adc h
    and $62
    ld h, a
    push bc
    ld l, h
    jr c, @-$7a

    inc de
    db $76
    ld hl, $a8e2
    rra
    ld h, $6f
    db $fc
    add $0a
    ld hl, sp-$3b
    ld [c], a
    reti


jr_039_4a33:
    ld hl, $25cc
    and e
    daa
    adc h
    jr jr_039_4a67

    jr c, jr_039_4a03

    inc [hl]
    ld a, b
    push bc
    adc [hl]
    rst $00
    rst $38
    rst $38
    ld [$63ca], sp
    ld [bc], a
    ld a, b
    or c
    jr nc, jr_039_4a73

    add l
    dec h
    ld l, c
    adc d
    add hl, hl
    ld c, c
    ret nz

    sub l
    ld [c], a
    jp $122a


    inc [hl]
    ld [hl], e
    pop de
    ld e, a
    ld sp, hl
    sbc h
    ld l, [hl]
    sbc c
    ld e, a
    push bc
    daa
    inc l
    ld [hl], e
    daa
    add l

jr_039_4a67:
    and a
    add a
    add sp, $7a
    ld a, b
    ld e, a
    rlca
    rst $00
    adc l
    rst $00
    ld a, [hl-]
    ld [hl], e

jr_039_4a73:
    ld b, a
    inc c
    ld h, h
    cp $95
    inc e
    ld [$fe57], a
    ld h, [hl]
    sbc c
    push bc
    ld a, b
    ret z

    or l
    inc bc
    jr nz, @-$58

    call z, Call_000_1857
    jp Jump_000_1a15


    and h
    and c
    inc e
    ld [hl], c
    cp d
    ld de, $10cd
    sbc [hl]
    inc e
    ld [hl], l
    add $71
    sbc b
    inc bc
    inc b
    ld bc, $0102
    ld bc, $0101
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    jr jr_039_4acb

    inc h
    inc h
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc c
    ld [bc], a

jr_039_4acb:
    jr @+$06

    ld [$0818], sp
    ld [$8880], sp
    ld b, b
    ld b, h
    ld b, h
    ld b, h
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    nop
    ld [bc], a
    ld bc, $0404
    dec b
    dec b
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0202
    and b
    ld b, b
    db $10
    ldh [rSC], a
    ld a, [c]
    ld de, $a0e1
    ld b, b
    nop
    nop
    nop
    nop
    inc bc

jr_039_4b08:
    nop
    ld h, b
    ld h, b
    nop

jr_039_4b0c:
    nop
    ld h, h
    ld h, h
    ld [$0098], sp
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld d, b
    inc h
    adc c
    ld [hl], e
    ld [bc], a
    ld a, [$728a]
    ld d, b
    ld [hl+], a
    nop
    inc b
    nop
    ld [$0400], sp
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    db $10
    jr jr_039_4b8f

    add hl, sp
    dec d
    ld d, l
    ld d, h
    rst $28
    ld a, d
    xor d
    and b
    adc $19
    ld c, h
    db $ed
    ld sp, $41c8
    ld [hl-], a
    add [hl]
    sub h
    add $d3
    inc c
    jr c, @+$2f

    ld sp, $ad9a
    ld sp, $bcb4
    sub h
    db $d3
    ld h, $95
    rra
    dec de
    ld c, e
    ld e, b
    db $db
    ld c, b
    sbc d
    ld sp, $69b5
    and h
    jp c, Jump_000_1ace

    ld l, e
    ld b, l
    scf
    adc [hl]
    ld l, b
    db $fd
    ld h, l
    adc [hl]
    ld l, h
    ld d, e
    ld b, a
    adc b
    ld c, [hl]
    inc l
    ld e, $33
    ld h, d
    ld h, a
    push bc
    ld c, l
    jr nc, jr_039_4b0c

    jr jr_039_4b08

    adc d
    and c
    rst $38
    push bc
    ld d, l
    ld d, e
    jr jr_039_4bb4

    db $e3
    adc [hl]
    xor d
    and e
    add hl, bc
    ld l, b

jr_039_4b8f:
    db $ed
    call c, $9a69
    db $76
    add $70
    daa
    ld c, $09
    sla h
    ld h, [hl]
    ld a, b
    pop bc
    add d
    ld [hl], c
    ld c, c
    cp [hl]
    sub e
    ld c, c
    adc d
    ld h, c
    ld [de], a
    add $52
    ld c, h
    db $10
    cp b
    pop af
    sub d
    add hl, de
    xor h
    ld d, h
    pop hl
    add hl, de
    xor l

jr_039_4bb4:
    push af
    and [hl]
    jp hl


    jp nz, Jump_000_24c8

    ld h, $f6
    ld [hl], d
    rst $00
    and $69
    db $e3
    pop af
    rr h
    xor d
    ld [hl], b
    jp nz, Jump_039_79c6

    ld d, b
    ld b, c
    and d
    sbc c
    xor h
    ld h, [hl]
    push hl
    ld c, h
    ld b, h
    ld [hl], $56
    sbc e
    or c
    ld [$c371], sp
    dec de
    ret z

    ld h, c
    dec e
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_039_4c17

    jr nc, jr_039_4c11

    jr z, jr_039_4c0f

    inc h
    ld [hl+], a
    ld [hl+], a
    jr nc, @+$42

    jr jr_039_4c12

    db $10
    jr @+$12

    stop
    stop
    jr nz, jr_039_4c1b

    jr nz, jr_039_4c1d

    jr nz, jr_039_4c20

    ld hl, $2020
    jr nz, jr_039_4c24

    jr nz, @+$22

    jr nz, jr_039_4c28

    jr nz, jr_039_4c2a

    nop
    jr nz, jr_039_4c1d

    stop

jr_039_4c0f:
    jr nz, @-$7e

jr_039_4c11:
    ret nz

jr_039_4c12:
    ld b, b
    ld b, b
    jr nz, jr_039_4c36

    db $10

jr_039_4c17:
    db $10
    ld [$0408], sp

jr_039_4c1b:
    inc b
    ld [bc], a

jr_039_4c1d:
    ld [bc], a
    inc b
    inc c

jr_039_4c20:
    ld bc, $0003
    nop

jr_039_4c24:
    ld bc, $0201
    ld [bc], a

jr_039_4c28:
    nop
    inc b

jr_039_4c2a:
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0103
    ld b, [hl]
    pop bc
    ld b, $02

jr_039_4c36:
    dec c

jr_039_4c37:
    ld b, $08
    rrca
    jr jr_039_4c4b

    inc a
    rlca
    ld d, l
    cp b
    xor c
    inc a
    sbc b
    ld a, [c]
    jr jr_039_4c37

    ld e, b
    jr z, @-$49

    ld d, d
    db $d3

jr_039_4c4b:
    adc c
    ld c, b
    and a
    cp $bb
    rst $10
    db $e3
    and d
    adc c
    ld h, b
    sub b
    and b
    ld [hl], e
    xor c

jr_039_4c59:
    ldh a, [$90]
    ld h, d
    inc d
    db $e4
    and d
    sub l
    ld [hl+], a
    ld a, [hl-]
    add sp, -$46
    inc d
    or l
    ld c, [hl]
    call nc, $ba28
    dec sp
    ld d, e
    jp z, $9fe2

    jr c, jr_039_4c59

    and a
    adc $fa
    add hl, hl
    ld d, c
    ld h, h
    sbc d
    dec sp
    jr z, @+$34

    ld [hl-], a
    ld l, h
    add sp, -$4b
    ld d, b
    sbc c
    ld a, l
    ld c, [hl]
    adc d
    ld a, [bc]
    xor a
    ld a, [$ce1a]
    ld c, c
    and e
    rst $00
    adc a
    add hl, de
    adc [hl]
    ld c, c
    rst $00
    daa
    sub e
    ld e, $3a
    ld de, $c4e2
    ld b, l
    and d
    sub [hl]
    sbc h
    ld d, d
    ld c, d
    jp $b002


    ld hl, $071e
    cp $74
    xor h
    ld e, h
    rla
    pop af
    inc c
    ld [hl], d
    add $09
    rst $18
    inc e
    jr c, jr_039_4d0e

    ld a, b
    ld a, a
    and [hl]
    xor a
    jp hl


    ret


    db $fc
    ld l, l
    ld a, a
    and b
    sbc h
    jr c, jr_039_4cf0

    and e
    rst $38
    ld de, $4698
    ld c, d
    ld l, e
    ld d, c
    inc [hl]
    sub [hl]
    add e
    ld a, [$9d4d]
    rst $18
    ld sp, hl
    db $dd
    ld c, b
    and c
    ld d, d
    db $10
    daa
    ld c, d
    ld e, h
    ld sp, $c971
    ld [bc], a
    ld a, b
    jp hl


    db $e3
    ld sp, $00ca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_4cf0:
    nop
    nop
    nop
    nop
    inc b
    nop
    ld c, $00
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop

jr_039_4d0e:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_4d6e

    inc e
    ld a, $1e
    rra
    inc c
    inc e
    inc c
    inc c
    inc b
    inc c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    jr nz, jr_039_4d6e

    db $10
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
    ld bc, $0403
    inc b

jr_039_4d6e:
    ld [$0008], sp
    nop
    nop
    nop
    inc c
    inc e
    jr c, jr_039_4df4

jr_039_4d78:
    ld a, b
    ld hl, sp+$30
    jr c, jr_039_4dad

    jr nc, @+$22

    jr nc, jr_039_4d85

    inc b
    ld [bc], a
    ld b, $01

jr_039_4d85:
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0308], sp
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
    ld b, b
    ld h, b
    ld b, b
    ld b, b
    ld b, $46
    nop
    nop
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

jr_039_4dad:
    nop
    nop
    nop
    db $10
    db $10
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld h, b
    ld h, d
    jr nz, jr_039_4de2

    ld b, b
    ld h, b
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $8909

jr_039_4de2:
    add b
    adc c
    add b
    add b
    jr z, jr_039_4d78

    ld b, h
    jr c, jr_039_4deb

jr_039_4deb:
    ld a, h
    ld b, h
    jr c, jr_039_4e17

    stop
    nop
    nop
    nop

jr_039_4df4:
    jr jr_039_4e0e

    nop
    nop
    ld b, d
    ld b, d
    inc a
    inc a
    jr jr_039_4e16

    nop
    nop
    sub b
    sub c
    ld bc, $0191
    ld bc, $0914
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e

jr_039_4e0e:
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop

jr_039_4e16:
    nop

jr_039_4e17:
    nop
    nop
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    ld bc, $0101
    ld bc, $1001
    sbc b
    xor h
    and h
    ld c, [hl]
    ld b, d
    add [hl]
    add c
    rlca
    add c
    ld [bc], a
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2d19], sp
    dec h
    ld c, [hl]
    ld b, d
    rlca
    add c
    add d
    add c
    inc bc
    add b
    inc bc
    ld b, b
    ld b, c
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
    nop
    nop
    add b
    add b
    add b
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
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop

Call_039_4e95:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    ret nz

    ret nz

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $8001
    ret nz

    ret nz

    ret nz

    pop bc
    ldh [$e1], a
    ldh a, [rNR11]
    sub b
    nop
    ld [$0808], sp
    inc c
    inc b
    nop
    nop
    adc b
    nop
    call c, $fc00
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    jr nz, jr_039_4ef0

jr_039_4ef0:
    ld bc, $0303
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld [$0009], sp
    db $10
    db $10
    db $10
    jr nz, jr_039_4f20

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_039_4f4e

    ld e, b
    ld c, b

jr_039_4f20:
    inc bc
    rlca
    add h
    add d
    add b
    add b
    ld b, b
    add b
    ld b, [hl]
    ld h, [hl]
    ld c, c
    ld c, c
    nop
    ld c, c
    nop
    add b
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
    jr jr_039_4f58

    ret nz

Call_039_4f41:
    ldh [rSB], a
    ld b, c
    inc bc
    ld bc, $0106
    ld h, d
    ld h, [hl]
    sub d
    sub d
    nop
    sub d

jr_039_4f4e:
    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_4f58:
    nop
    nop
    nop
    nop
    inc b
    inc c
    ld e, $12
    inc c
    add h
    add [hl]
    add d
    add e
    add c
    add d
    add c
    ld bc, $0081
    ld b, c
    ld b, c
    ld b, b
    ld bc, $8040
    add b
    xor b
    sub b
    ld b, h
    cp b
    nop
    ld a, h
    ld b, h
    jr c, jr_039_4fa3

    stop
    add b
    nop
    add b
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc h
    inc a
    inc h
    inc a
    jr jr_039_4fa2

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1501
    add hl, bc
    ld [hl+], a
    dec e
    nop
    ld a, $22
    inc e
    inc d
    ld [$0100], sp
    nop
    ld bc, $2126

jr_039_4fa2:
    ld b, e

jr_039_4fa3:
    ld b, c
    jp Jump_000_0381


    add c
    add d
    add c
    inc b
    add d
    add [hl]
    ld [bc], a
    inc b
    ld [bc], a
    nop
    jr nz, jr_039_4fd3

    jr nz, jr_039_4fb5

jr_039_4fb5:
    jr nz, jr_039_4fb7

jr_039_4fb7:
    db $10
    db $10
    stop
    ld [$0800], sp
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_4fd3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0c04], sp
    inc b
    ld [$1004], sp
    ld [$0818], sp
    jr nz, jr_039_500c

    jr nc, jr_039_500e

    nop
    jr nz, jr_039_5056

jr_039_5001:
    or a
    and l
    inc a
    ld d, h
    adc d
    ld d, e
    jp nz, $a942

    db $d3
    dec d

jr_039_500c:
    ld d, e
    sub [hl]

jr_039_500e:
    adc d
    or l
    ld a, a
    xor $b7
    adc $2b
    ld c, d
    ld l, b
    add [hl]
    add hl, bc
    ld [$b4e6], sp
    jp $1864


    db $eb
    bit 2, c
    adc a
    ld [de], a
    dec h
    inc a
    ld d, h
    inc d
    pop af
    ld d, b
    ld d, e
    ret z

    ld c, [hl]
    call nz, Call_000_3bbd
    sub [hl]
    dec l
    ld b, c
    sub e
    and c
    ld [c], a
    ld d, d
    jr nz, jr_039_5001

    adc $6a
    add hl, hl
    ld a, l
    ld d, [hl]
    ld h, b
    ld [hl], l
    jr c, jr_039_505c

    ld hl, $8a78
    xor e
    ld hl, sp+$28
    db $dd
    ld a, [de]
    or [hl]
    jr nc, jr_039_50c5

    or h
    pop hl
    ld e, d
    ld sp, $c178
    ld c, l
    add sp, -$33

jr_039_5056:
    db $e3
    dec d
    ld a, [hl-]
    rst $30
    rst $38
    rst $38

jr_039_505c:
    pop hl
    sbc h
    db $10
    ld h, $4a
    ld [hl], l
    ld b, h
    ret nz

    sub e

jr_039_5065:
    adc [hl]
    ld [hl], l
    ld c, c
    ld e, d
    ld b, l
    db $10
    adc d
    ld [hl], e
    dec h
    ld a, b
    or b
    jp z, $9d84

    ld [hl], h
    ld d, a
    cp $70
    ld a, [hl+]
    ld h, b
    sbc c
    ld e, a
    add $cc
    ld b, h
    sub a
    dec e
    ld a, c
    ld e, c
    rst $08
    and [hl]
    ld d, d
    ld b, e
    inc e
    cp $69
    ld d, c
    db $d3
    rst $20
    adc a
    rst $00
    ld a, [hl-]
    ld a, b
    pop af
    sub e
    ld a, [$a976]
    ld e, a
    ld sp, hl
    call $e315
    ld [hl+], a
    call nc, $9c0c
    inc l
    ld d, a
    jr jr_039_5065

    inc e
    ld l, c
    jr z, jr_039_50ed

    add h
    add h
    ld [hl], e
    ld b, a
    adc a
    dec e
    ld [hl], c
    sbc h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_50c5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    stop

jr_039_50ed:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1000], sp
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_51bf

    ld [hl], b
    ld hl, sp+$78
    ld a, h
    ld [hl-], a
    ld [hl], e
    jr nc, jr_039_5187

    db $10
    jr nc, @+$12

    db $10
    ld [$0418], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_518b

    rrca
    rra
    nop
    ld [$0038], sp
    ld b, h
    nop
    ld b, h
    nop
    ld b, h
    nop
    jr c, jr_039_5179

jr_039_5179:
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $0100
    ld bc, $0403
    inc c
    db $10
    db $10

jr_039_5187:
    jr nz, @+$22

    ld b, b
    ld b, b

jr_039_518b:
    ld bc, $0281
    ld bc, $f0e0
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    add b
    nop
    nop
    inc bc
    inc b
    ld bc, $0102
    ld bc, $0101
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    add b
    nop
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
    inc h
    inc h

jr_039_51bf:
    nop
    nop
    nop
    nop
    nop
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
    inc c
    ld [bc], a
    jr @+$06

    ld [$0818], sp
    ld [$0800], sp
    nop
    inc b
    inc b
    inc b
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    nop
    ld [bc], a
    nop
    inc b
    dec b
    inc b
    inc b
    dec b
    ld bc, $0004
    ld [bc], a

jr_039_51fb:
    nop
    ld bc, $0202
    jr jr_039_5219

    and b
    ld b, b
    db $10
    ldh [rP1], a
    ldh a, [rNR11]
    pop hl
    and b
    ld b, b
    nop
    nop
    inc bc
    nop
    ld bc, $6001
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    sbc b
    sbc b

jr_039_5219:
    nop
    nop
    nop
    nop
    db $fc
    nop
    add b
    add h
    ld d, c
    inc hl
    adc d
    ld [hl], d
    ld [bc], a
    ld a, [$7288]
    ld d, b
    inc h
    nop
    ld [$0400], sp
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    db $10
    jr @+$57

    or d
    and l
    inc a
    ld d, h
    adc d
    ld d, e
    jp nz, $a942

    db $d3
    dec d
    ld d, d
    sub l
    ld c, l
    jr z, jr_039_51fb

    ld d, a
    cp $eb
    ld a, a
    xor d
    dec [hl]
    or h
    and [hl]
    adc b
    ld h, b
    sub b
    adc [hl]
    ld l, e
    ld c, e
    ret nc

    sub b
    ld h, d
    sub h
    db $e4
    call z, Call_000_0ae3
    db $d3
    and e
    adc l
    db $e3
    xor l
    rlca
    inc a
    ld d, h
    inc d
    ldh a, [$92]
    and e
    or c
    ld a, [hl+]
    adc l
    sbc h
    ldh [$58], a
    and l
    ld d, $4b
    ld hl, sp-$23
    ld [c], a

jr_039_527e:
    ld d, c
    add a
    inc hl
    add hl, sp
    xor b
    and l
    push af
    ld e, c
    add c
    push de
    scf
    ld l, b
    add l
    ld [c], a
    ld a, [hl+]
    xor a
    ldh [$af], a
    db $fc
    ret


    ld a, [de]
    or [hl]
    jr nc, jr_039_530e

    or l
    ld c, l
    sub $8c
    ld e, [hl]
    jr nc, jr_039_52ed

    or a
    ld [hl-], a
    and e
    scf
    adc h
    ld d, h
    sbc b
    and $df
    rst $38
    rst $38
    adc h
    ld h, $70
    daa
    adc e
    inc de
    ld [bc], a
    ld a, b
    ld d, d
    ld d, [hl]
    sbc b
    and d
    sub h
    sbc h
    add hl, bc
    ld e, [hl]
    inc l
    ld [hl-], a
    and c
    jr nc, jr_039_530e

    rst $08
    ld b, l
    ld a, a
    rst $20
    ld d, d
    ld h, b
    add l
    db $fc
    ld d, d
    ld [hl], d
    push bc
    and [hl]
    jp hl


    pop hl
    ld l, c
    db $e3
    ld a, [$df78]
    ld e, $37
    inc e
    jp hl


    ld [hl], c
    cp h
    ld [hl], b
    add $10
    ccf
    and l
    ld b, a
    ld a, [hl-]
    sub l
    rst $38
    sbc h
    pop de
    ld e, [hl]
    ld [hl-], a
    dec l
    ld b, b
    add sp, $29
    or e
    dec d
    add $30
    push de
    db $f4

jr_039_52ed:
    xor c
    sub d
    ld c, d
    ld de, $11c7
    add hl, de
    and c
    inc e
    pop de
    add hl, bc
    pop hl
    rst $00
    ld e, h
    ld h, a
    jr jr_039_527e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_530e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rSVBK], a
    ld hl, sp+$78
    ld a, h
    ld [hl-], a
    ld [hl], e
    jr nc, jr_039_538c

    db $10
    jr nc, jr_039_535f

jr_039_535f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc b
    inc c
    db $10
    db $10

jr_039_538c:
    jr nz, @+$22

    nop
    nop
    nop
    nop
    jr nc, jr_039_5404

    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    db $10
    db $10
    ld [$0418], sp
    ld [$0403], sp
    ld bc, $0102
    ld bc, $0101
    nop
    ld bc, $2020
    rrca
    rra
    nop
    ld [$0000], sp
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld bc, $0281
    ld bc, $020c
    jr @+$06

    ld [$0818], sp
    ld [$0800], sp
    add b
    add b
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
    ld [bc], a
    ld b, $06
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0404
    dec b
    dec b
    inc b
    nop
    inc b
    ld [hl+], a
    ld [hl+], a
    ld [$001c], sp
    nop

jr_039_5404:
    and b
    ld b, b
    db $10
    ldh [rP1], a
    ldh a, [rNR10]
    ldh [$a0], a
    ld b, b
    inc b
    inc b
    ld bc, $0003
    nop
    ld h, b
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$90]
    ldh a, [$90]
    ld b, b
    ld b, h
    inc b
    add h
    inc b
    inc b
    ld d, b
    inc h
    adc b
    ld [hl], d
    inc bc
    ei
    adc d
    ld [hl], d
    ld d, b
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    db $10
    db $10
    db $10
    ld [$6008], sp
    ld h, b
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc b
    ld b, $08
    ld [bc], a
    inc b
    rlca
    inc b
    inc bc
    inc b
    dec b
    add e
    add d
    add d
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    db $10
    jr jr_039_54c7

    ld h, b
    nop
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_54ae

    ld d, l
    cp [hl]
    xor d
    ei
    call nc, Call_039_4e95
    ld h, l
    ld hl, sp+$61
    xor a
    ld a, [$478e]
    and l
    ld c, a
    dec b
    ld b, [hl]
    ld b, a
    ld hl, $d43a
    adc b
    jr z, jr_039_54ff

    inc h
    rst $20
    ld [hl], e
    ld c, c
    ld e, b
    cp b
    reti


jr_039_54ae:
    db $e3
    sbc l
    dec [hl]
    ld a, b
    sub h
    rst $28
    ld l, b
    cp b
    db $ed
    ld h, c
    ld b, l
    ld l, b
    ld [c], a
    ld a, h
    add $25
    ld hl, sp+$23
    add l
    pop hl
    sub d
    push de
    and c
    ld a, b
    or l

jr_039_54c7:
    bit 7, b
    db $e3
    and d
    sbc a
    sbc l
    ld b, l
    db $e3
    adc l
    and d
    rla
    adc d
    xor e
    adc [hl]
    ld b, h
    ld l, d
    sbc b
    pop bc
    db $e3
    ld h, $4d
    ld d, [hl]
    adc h
    ld e, $32
    ld a, d
    adc h
    xor d
    ld [hl-], a
    ld a, b
    ret


    db $e3
    and a
    ld a, a
    rst $38
    rst $38
    adc e
    sbc a
    ld e, a
    dec h
    daa
    ld c, e
    add hl, de
    ld b, e
    ld b, a
    inc a
    jr z, @+$29

    add l
    ld c, $2c
    ld a, [hl+]
    sbc l
    ld c, h
    ld h, l
    rst $38

jr_039_54ff:
    sub [hl]
    sbc l
    or a
    pop af
    ld a, c
    db $e3
    ld sp, hl
    ret nz

    add d
    sbc h
    sbc [hl]
    ld h, h
    ret nz

    rst $38
    and a
    ld a, [de]
    ld sp, hl
    add e
    rrca
    db $fc
    sbc h
    ld c, l
    dec b
    sub a
    db $10
    and c
    ld [bc], a
    ld d, d
    sbc c
    ld sp, $10bd
    call nz, $cabf
    ld b, d
    rst $00
    inc l
    ld c, e
    ldh a, [$c1]
    rst $18
    inc e
    xor h
    ld b, e
    ld [hl], c
    adc h
    ld h, [hl]
    and [hl]
    ld c, c
    ld c, h
    ld [hl], c
    cpl
    pop de
    and d
    ld de, $bfc2
    rst $00
    ld d, d
    ld c, d
    rst $38
    pop af
    rst $10
    inc e
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_5551:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ldh [$e0], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld [de], a
    ld de, $2027
    ld c, a
    ld b, b
    adc [hl]
    add c
    rra
    ld bc, $e0c0
    ldh [$c0], a
    add b
    pop bc
    pop bc
    add e
    add h
    adc h
    nop
    sub b
    nop
    jr nz, jr_039_5551

    ret nz

    nop
    nop
    jr nc, jr_039_5645

    ldh a, [$f0]
    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    db $10
    jr jr_039_5638

    ld h, b
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_039_5600

jr_039_5600:
    ld d, b
    ld c, $03
    add sp, -$04
    nop
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
    inc bc
    ld bc, $0106
    inc c
    ld [bc], a
    jr @+$06

    jr nc, jr_039_5623

    ld a, b
    ld [$1060], sp
    jr nc, @+$1a

    nop
    add b

jr_039_5623:
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
    ld b, $0a
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    ld [$0808], sp

jr_039_5638:
    ld [$0c0c], sp
    ld [$0008], sp
    ld [$0400], sp
    ld [hl], b
    ld [hl], b
    jr nz, @+$72

jr_039_5645:
    nop
    jr nz, jr_039_5648

jr_039_5648:
    nop
    ld a, [bc]
    inc b
    ld de, $010e
    ld e, $11
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_039_568b

    jr jr_039_5669

    inc c
    inc b
    inc c
    ld [bc], a

jr_039_5669:
    rrca
    inc bc
    ld c, $02
    inc e

jr_039_566e:
    inc b
    jr jr_039_5679

    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d

jr_039_5676:
    ld b, d
    add [hl]
    add d

jr_039_5679:
    ld b, $02
    ld c, $02
    ld c, $02
    ld e, $02
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

jr_039_568b:
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, [bc]
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0204
    add [hl]
    ld a, d
    ld bc, $30ff
    db $10
    ld h, b
    jr nz, jr_039_5676

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1e00
    ld [bc], a
    ld a, $02
    inc a
    inc b
    ld a, b
    ld [$1070], sp
    ldh [rNR41], a
    add b
    ld b, b
    ld b, b
    ret nz

    ld d, l
    or a
    and h

jr_039_56d4:
    ld a, [c]
    ld h, h
    pop af
    jr nz, jr_039_566e

    inc a
    adc e
    ld b, l
    ld d, a
    db $fd
    dec b
    ld a, a
    jr c, jr_039_56fa

    xor a
    xor d
    ld h, h
    ld l, $a3
    and [hl]
    dec d
    inc c
    adc h
    jp hl


    and h
    sbc a
    ld [$3126], sp
    adc $38
    xor c
    ld c, a
    ld sp, $c353
    add d
    xor d

jr_039_56fa:
    inc a
    jr z, jr_039_572c

    db $e3
    ret nz

    ld d, e
    ret nz

    ret


    ld [hl], d
    ld d, e
    dec d
    jr c, jr_039_576f

    xor e
    ld h, [hl]
    add hl, bc
    ld l, $8e
    inc b
    xor c
    ld c, b
    sub b
    ld h, b
    ld c, [hl]
    ld a, b
    add l

jr_039_5714:
    xor a
    rst $30
    ld e, [hl]
    db $fd
    ld d, e
    adc c
    ld a, b
    or l
    xor b
    sub l
    db $e3
    ld a, b
    jr nz, jr_039_576d

    ld a, b
    pop bc
    ld b, d
    adc $16
    add hl, hl
    db $e3
    dec d
    jr c, jr_039_5714

jr_039_572c:
    cp l
    rst $38
    rst $38
    ld hl, sp-$57
    cp h
    ld [hl], l
    and [hl]
    xor b
    jr nz, jr_039_56d4

    ld e, $a2
    sbc b
    ret


    db $d3
    ld a, a
    ld a, [$6a61]
    jr z, @-$4e

    ret z

    jr nz, @-$18

    rla
    rst $18

jr_039_5747:
    and e
    ld b, e
    ld l, b
    ld b, h
    ccf
    and c
    dec de
    ld b, h
    ld d, [hl]
    add hl, hl
    sbc a
    cp $75
    ld c, c
    ld sp, $1835
    rst $00
    ld e, h
    ld h, b
    sbc [hl]
    ld b, a
    sbc [hl]
    rra
    pop hl
    ld sp, hl
    db $e3
    ld a, c
    sbc $98
    ld b, a
    dec sp
    ld [de], a
    sub d
    xor c
    adc d
    ld l, h
    adc h

jr_039_576d:
    ld h, a
    rst $38

jr_039_576f:
    sbc e
    cp b
    cpl
    ret nz

    and d
    ldh a, [rNR50]
    ld e, a
    ret nz

    sbc c
    cp a
    rst $38
    ld d, $f4
    jr nc, jr_039_5747

    or b
    ld b, c
    ld h, h
    cp a
    rst $10
    jr jr_039_57b7

    rst $00
    db $10
    pop de
    sbc h
    db $10
    ld b, a
    inc d
    ld [hl], c
    daa
    inc l
    ld [hl], l
    add $71
    ld h, b
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $20
    nop
    rst $00
    nop
    adc a
    nop
    rrca
    nop
    rra
    nop
    rst $38
    nop
    rst $38

jr_039_57b7:
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
    nop
    rst $18
    nop
    rst $20
    nop
    db $e3
    nop
    pop af
    nop
    ldh a, [rP1]
    ld hl, sp+$00
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
    ld a, a
    nop
    db $fc
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld sp, hl
    nop
    ld l, a
    ldh a, [$1f]
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $38

jr_039_5827:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    nop
    db $db
    inc a
    rst $38
    rst $38
    ldh [rSVBK], a
    ldh a, [$38]
    xor $18
    rst $38
    inc b
    rst $38
    ld [bc], a
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ld l, a
    ldh a, [rTAC]
    rrca
    nop
    inc b
    add b
    nop
    ret nz

    nop
    add b
    ret nz

    add b
    add b
    rst $38
    nop
    rst $38
    nop
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
    ei
    rlca
    ret c

    inc a
    add b
    ret nz

    ld bc, $0780
    nop
    rrca
    ld bc, $0e05
    rlca
    inc b
    rst $38
    db $fc
    rra
    jr c, jr_039_58b8

    ld [hl], b
    rst $18
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $01ff
    cp $01
    db $fc
    ld [bc], a
    cp $02
    cp $02
    nop
    adc b
    inc d
    inc d
    ld e, $1e
    inc c
    ld c, $50
    jr nz, jr_039_5827

    ld [hl], b
    nop
    ld hl, sp-$78
    ld [hl], b
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $3030
    nop
    nop
    jr nc, jr_039_58e2

    ld a, b
    ld c, b
    inc bc
    ld b, h
    and c
    and d

jr_039_58b8:
    db $e3
    ld [c], a
    jp Jump_000_29c2


    ld [de], a
    ld b, h
    add hl, sp
    ld bc, $457d
    add hl, sp
    rst $38
    ld b, $fb
    ld a, [bc]
    di
    ld [de], a
    db $e3
    ld [hl+], a
    jp $8342


    add d
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $01fe
    db $fd
    ld [bc], a

jr_039_58e2:
    cp $02
    ld d, b
    jr nz, jr_039_58e7

jr_039_58e7:
    nop
    nop
    add b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld c, b
    ld a, b
    ld c, b
    jr nc, jr_039_592a

    cp $00
    db $fc
    nop
    jr nc, jr_039_5900

jr_039_5900:
    nop
    nop
    nop
    nop
    jr z, jr_039_5917

    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $4141
    inc bc
    ld [bc], a
    inc bc

jr_039_5917:
    ld [bc], a
    ld bc, $0302
    inc b
    rla
    jr jr_039_597e

    ld h, b
    ld a, a
    add b
    ld a, a
    ld b, b
    ld d, l
    or c
    and l
    jr c, jr_039_5988

    db $fd

jr_039_592a:
    ld c, l

jr_039_592b:
    ld d, d
    add hl, hl

jr_039_592d:
    ld c, l
    call nc, $d36b
    inc [hl]
    ld a, [hl+]
    sbc l
    ld sp, $e25e
    db $ec
    adc $8a
    or l
    ld a, a
    xor $99
    jr c, jr_039_592d

    add hl, hl
    and d
    jr jr_039_5968

    jr z, jr_039_592b

    or h
    and a
    jp nz, $8e41

    cp h
    sub l
    ld c, b
    adc a
    ld c, $88
    db $d3
    push bc
    ld b, c
    ld c, a
    dec d
    dec b
    inc a
    ld [hl], l
    dec sp
    ld [de], a
    ld e, a
    ld [hl+], a
    ld [hl-], a
    ld a, h
    db $dd
    ld h, d
    ld d, l
    ld d, $4b
    ld hl, sp-$23
    ld [c], a
    ld d, c

jr_039_5968:
    and b
    ret z

    adc $6a
    add hl, hl
    ld a, l
    ld d, [hl]
    ld h, b
    ld [hl], l
    ld c, l
    jp c, Jump_039_7821

    adc d
    xor e
    ld hl, sp+$2b
    rst $38
    call z, $ab51
    ld h, e

jr_039_597e:
    rlca
    adc e
    ld d, h
    add h
    call $c568
    db $e3
    dec b
    dec bc

jr_039_5988:
    ld a, b
    add $8c
    sbc $31
    ld d, d
    ld h, e
    sbc e
    ld a, a
    rst $38
    cp $31
    sbc c
    ld b, b
    sbc h
    inc l
    ld b, h
    sbc e
    ld b, h
    ret nz

    sbc d
    and [hl]
    db $10
    ld h, $72
    ld d, [hl]
    sbc b
    and d
    sbc c
    ld b, [hl]
    adc c
    ld e, [hl]
    inc l
    ld [hl-], a
    and c
    add hl, hl
    push de
    ld b, l
    ld a, a
    rst $20
    ld d, d
    ld h, c
    dec b
    db $fc
    ld [hl], l
    push bc
    daa
    and l
    and a
    add h
    call nz, Call_039_787a
    ld c, c
    rra
    ld e, $37
    inc e
    jp hl


    ld d, c
    pop bc
    inc e
    ld sp, $0f82
    jp hl


    ld d, c
    adc $a5
    ld a, a
    rst $20
    inc [hl]
    ld d, a
    adc h
    adc e
    ld d, b
    ld a, [hl-]
    ld a, [bc]
    ld l, h
    push bc
    ld [hl], c
    adc h
    dec [hl]
    ld a, l
    ld a, [hl+]
    sbc b
    and h
    and c
    inc e
    ld [hl], c
    inc d
    ld h, h
    add h
    ld [hl], e
    ld b, h
    daa
    add a
    dec e
    ld [hl], c
    sbc h
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rSVBK], a
    ld hl, sp+$78
    ld a, h
    ld [hl-], a
    ld [hl], e
    jr nc, jr_039_5a79

    db $10
    jr nc, @+$12

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
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_5a7d

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc b
    inc c
    db $10
    db $10

jr_039_5a79:
    jr nz, @+$22

    ld b, b
    ld b, b

jr_039_5a7d:
    nop
    nop
    jr nc, jr_039_5af1

    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    add b
    ld [$0418], sp
    ld [$0403], sp
    ld bc, $0102
    ld bc, $0101
    nop
    ld bc, $0200
    rrca
    rra
    nop
    ld [$0000], sp
    add b
    nop
    nop
    add b
    nop
    nop
    jr jr_039_5ac3

    jr nz, jr_039_5ad1

    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld bc, $0281
    ld bc, $020c

jr_039_5ac3:
    jr @+$06

    ld [$0818], sp
    ld [$8880], sp
    ld b, b
    ld b, h
    nop
    add b
    nop
    nop

jr_039_5ad1:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0404
    dec b
    dec b
    inc b
    db $10
    inc a
    inc b
    ld b, [hl]
    inc b
    inc h
    nop
    nop

jr_039_5af1:
    and b
    ld b, b
    db $10
    ldh [rSC], a
    ld a, [c]
    ld de, $a0e1
    ld b, b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop

Jump_039_5b05:
    inc h
    ld h, h
    ld [$0098], sp
    nop
    nop
    nop
    inc b
    ld b, h
    inc b
    inc b
    ld d, b
    inc h
    adc c
    ld [hl], e
    ld [bc], a
    ld a, [$728a]
    ld d, b
    ld [hl+], a
    ld [bc], a
    inc b
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld c, d
    ld c, e
    ld c, c
    ld c, c
    ld b, b
    ld b, b
    nop
    ld b, b
    nop

jr_039_5b36:
    jr nz, jr_039_5b58

    jr nz, jr_039_5b3a

jr_039_5b3a:
    jr nz, jr_039_5b3c

jr_039_5b3c:
    stop
    nop
    inc bc
    nop
    add c
    add b
    nop
    nop

jr_039_5b45:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00

jr_039_5b53:
    ld h, b
    nop
    nop
    nop
    nop

jr_039_5b58:
    nop
    ld bc, $0001
    ld [bc], a
    ld b, $08
    inc bc
    inc b
    rlca
    inc b
    inc bc
    dec b
    inc b
    add d
    add e
    add d
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    inc b
    db $10
    jr jr_039_5bb2

    ld h, b
    nop
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_5b99

    nop
    db $10
    and b
    jr nz, jr_039_5bd3

    or d
    and l
    inc a
    ld d, h
    adc d
    ld d, e
    jp nz, $a942

    db $d3
    dec d
    ld d, d
    sub l
    ld c, l
    jr z, @-$53

    ld d, a
    cp $eb
    ld a, a
    xor d
    dec [hl]
    or h
    and [hl]
    adc b
    ld h, b
    sub b

jr_039_5b99:
    adc [hl]
    ld l, e
    ld c, d
    ld a, h
    inc h
    jr jr_039_5b45

    add hl, sp
    ld [hl-], a
    ld d, l
    ld [hl+], a
    jr nc, jr_039_5b53

    ld a, [hl-]
    jr z, jr_039_5b36

    ld [hl-], a
    adc [hl]
    or h
    rla
    ld c, a
    dec c
    dec b
    ld d, e
    push bc

jr_039_5bb2:
    ld e, b
    db $eb
    ld c, c
    ld a, h
    adc b
    ret


    adc $05
    adc c
    ld d, h
    ld e, c
    cpl
    db $e3
    ld [hl], a
    adc c
    ld b, [hl]
    add e
    inc hl
    add hl, sp
    xor b
    and l
    push af
    ld e, c
    add c
    push de
    scf
    ld l, b
    add l
    ld [c], a
    ld a, [hl+]
    xor a
    ldh [$af], a

jr_039_5bd3:
    db $fc
    ret


    ld a, [de]
    or [hl]
    jr nc, jr_039_5c51

    or l
    ld c, l
    sub $8c
    ld e, [hl]
    jr nc, jr_039_5c30

    or a
    ld [hl-], a
    and e
    scf
    adc h
    ld d, h
    sbc b
    and $df
    rst $38
    rst $38
    adc h
    ld h, $70
    daa
    adc e
    inc de
    ld [bc], a
    ld a, b
    ld d, d
    ld d, [hl]
    sbc b
    and d
    sub h
    sbc b
    ld a, [hl+]
    ld d, d
    ld d, a
    adc e
    inc c
    xor b
    ld c, h
    inc d
    ld e, a
    cp $99
    pop de
    ld e, a
    ld sp, hl
    or l
    rst $38
    and l
    ld h, $10
    ld e, a
    push bc
    dec h
    cp a
    db $fc
    ld h, c
    inc d
    sbc h
    add hl, bc
    rla
    pop af
    push de
    and a
    add h
    add sp, -$06
    ld a, b
    ld e, h
    ccf
    ld e, $37
    inc e
    jp hl


    ld d, c
    pop bc
    inc e
    ld sp, $0f82
    jp hl


    ld d, c
    adc $a5
    ld a, a
    rst $20
    inc [hl]

jr_039_5c30:
    ld d, a
    adc h
    adc e
    ld d, b
    ld a, [hl-]
    ld a, [bc]
    ld l, h
    push bc
    ld [hl], c
    adc h
    dec [hl]
    ld a, l
    ld a, [hl+]
    ld h, h
    sub d
    add h
    ld [hl], c
    call nz, Call_039_6846
    ld b, a
    inc [hl]
    ld b, d
    ld a, b
    ld [hl], c
    rst $10
    add hl, de
    add $20
    nop
    nop
    nop
    nop

jr_039_5c51:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_5c79

jr_039_5c79:
    cp h
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rSVBK], a
    ld hl, sp+$78
    ld a, h
    ld [hl-], a
    ld [hl], e
    jr nc, jr_039_5cd9

    db $10
    jr nc, @+$12

    db $10
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_5cdd

    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    nop
    nop
    nop
    ld bc, $0301
    inc b
    inc c
    db $10
    db $10

jr_039_5cd9:
    jr nz, @+$22

    ld b, b
    ld b, b

jr_039_5cdd:
    nop
    nop
    jr nc, jr_039_5d51

    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    add b
    ld [$0418], sp
    ld [$0403], sp
    ld bc, $0102
    ld bc, $0101
    nop
    ld bc, $0200
    rrca
    rra
    nop
    ld [$0000], sp
    add b
    nop
    nop
    add b
    nop
    nop
    jr jr_039_5d23

    jr nz, jr_039_5d31

    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld bc, $0281
    ld bc, $020c

jr_039_5d23:
    jr @+$06

    ld [$0818], sp
    ld [$8880], sp
    ld b, b
    ld b, h
    nop
    add b
    nop
    nop

jr_039_5d31:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0404
    dec b
    dec b
    inc b
    nop
    inc b
    nop
    ld [bc], a
    inc b
    inc h
    nop
    nop

jr_039_5d51:
    and b
    ld b, b
    db $10
    ldh [rSC], a
    ld a, [c]
    ld de, $a0e1
    ld b, b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    inc h
    ld h, h
    ld [$0098], sp
    nop
    nop
    nop
    inc b
    ld b, h
    inc b
    inc b
    ld d, b
    inc h
    adc c
    ld [hl], e
    ld [bc], a
    ld a, [$728a]
    ld d, b
    ld [hl+], a
    ld [bc], a
    inc b
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    db $10
    db $10
    db $10
    ld [$0008], sp
    inc b
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld b, $08
    inc bc
    inc b
    rlca
    inc b
    inc bc
    dec b
    inc b
    add d
    add e
    add d
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    inc b
    db $10
    jr @+$42

    ld h, b
    nop
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    nop
    db $10
    and b
    jr nz, jr_039_5e33

    or e
    and l
    inc a
    ld d, h
    adc d
    ld d, e
    jp nz, $a942

    db $d3
    dec d
    ld d, d
    sub l
    dec [hl]
    and d
    xor l
    ld e, a
    ei
    xor l
    cp $a3
    ld l, e
    ld c, d
    ld l, b
    add [hl]
    add hl, bc
    ld [$b4e6], sp
    jp $1864


    and l
    add hl, sp
    ld [hl-], a
    call nc, $0a63
    adc $a8
    ld a, [c]
    sub b
    ld [hl], e
    push bc
    ld b, c
    ld c, a
    ld [hl+], a
    dec sp
    ld [de], a
    db $f4
    push de
    jr c, jr_039_5e69

    dec l
    ld b, c
    sub d
    cp $37
    ld a, b
    sub h
    adc b
    ld [hl-], a
    inc sp
    sbc d
    adc d
    ld e, a
    ld d, l
    sbc b

jr_039_5e22:
    dec e
    ld d, e
    db $76
    adc b
    ld e, [hl]
    ld [hl+], a
    xor d
    cp $0a
    rst $38
    inc sp
    ld b, [hl]
    xor l
    adc h
    ld e, $2d
    ld d, e

jr_039_5e33:
    ld [hl], l
    and e
    rla
    adc h
    inc d
    dec l
    inc sp
    and e
    scf
    adc h
    ld d, h
    sbc b
    and $df
    rst $38
    rst $38
    adc e
    sbc d
    ld b, b
    sbc [hl]
    inc l
    ld c, h
    add hl, bc
    pop hl
    ld c, c
    ld e, d
    ld h, d
    adc d
    ld d, d
    ld [hl], b
    dec h
    ld a, b
    or b
    jp z, $8d84

    inc e
    db $f4
    ld d, a
    cp $75
    ld h, $57
    pop af
    ld c, c
    rr [hl]
    add $9e
    ccf
    and a
    adc l
    pop af
    db $e3

jr_039_5e69:
    ld [hl], c
    adc $9e
    inc a
    ld h, h
    cp $95
    inc e
    ld [$fe57], a
    ld [hl], e
    ld b, l
    ld a, b
    ret z

    or l
    inc bc
    jr nz, jr_039_5e22

    call z, Call_000_1857
    jp Jump_000_1a15


    and h
    and c
    inc e
    ld [hl], c
    cp d
    ld de, $10cd
    sbc [hl]
    inc e
    ld [hl], l
    add $71
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rSVBK], a
    ld hl, sp+$78
    ld a, h
    ld [hl-], a
    ld [hl], e
    jr nc, @+$32

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc b
    inc c
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_5f98

    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    db $10
    jr nc, @+$12

    db $10
    ld [$0418], sp
    ld [$0403], sp
    ld bc, $0102
    ld bc, $0101
    ld b, b
    ld b, b
    jr nz, jr_039_5f64

    rrca
    rra
    nop
    ld [$0000], sp
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$22

Call_039_5f62:
    ld b, b
    ld b, b

jr_039_5f64:
    ld bc, $0281
    ld bc, $020c
    jr @+$06

    ld [$0818], sp
    ld [$c080], sp
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0404
    dec b
    dec b
    inc b
    nop
    nop
    nop
    nop
    inc h
    inc h
    jr jr_039_5fb0

jr_039_5f98:
    and b
    ld b, b
    db $10
    ldh [rP1], a
    ldh a, [rNR10]
    ldh [rP1], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $6001
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    sub b
    sub b

jr_039_5fb0:
    nop
    ld [$0400], sp
    ld b, h
    ld b, h
    add h
    add h
    ld d, b
    inc h
    adc c
    ld [hl], e
    ld [bc], a
    ld a, [$728a]
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    and b
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld [hl+], a
    nop
    inc b
    nop
    ld [$0400], sp
    inc b
    inc b
    ld bc, $0405
    add d
    add d
    add d
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    db $10
    jr jr_039_6059

    ld h, b
    nop
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_6040

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_6040:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_6059:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld [hl], b
    jr c, jr_039_60f6

    inc a
    ld a, $19
    add hl, sp
    jr jr_039_6098

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_6098:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0602
    ld [$0008], sp
    nop
    nop

jr_039_60b3:
    nop
    nop
    nop
    jr jr_039_60f0

    ld [hl], b
    ld hl, sp-$10
    ldh a, [$60]
    ld [hl], b
    ld h, b
    ld h, b
    ld [$0818], sp
    ld [$0c04], sp
    ld [bc], a
    inc b
    ld bc, $0002
    ld bc, $0000
    nop
    nop
    jr nz, jr_039_60f2

    db $10
    db $10
    rlca
    rrca
    nop
    inc b
    add b
    nop
    ret nz

    nop
    add b
    ret nz

    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_60f0:
    db $10
    db $10

jr_039_60f2:
    jr nz, @+$22

    add b
    ret nz

jr_039_60f6:
    ld bc, $0680
    ld bc, $020c
    inc b
    inc c
    inc b
    inc b
    ld b, b
    ld h, b
    ld b, b
    ld b, b
    add b
    ret nz

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
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    adc h
    ld d, $16
    ld e, $1e
    inc c
    inc c
    ld d, b
    jr nz, jr_039_60b3

    ld [hl], b
    ld bc, $88f9
    ld [hl], b
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    jr nc, jr_039_616a

    nop
    nop
    ld [de], a
    ld [hl-], a
    add h
    call z, $c4c0
    ld h, b
    ld h, d
    ld [c], a
    ld [c], a
    jp nz, $28c2

    ld [de], a
    ld b, h
    add hl, sp
    ld bc, $457d
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_039_616a:
    nop
    nop
    nop
    nop
    ld bc, $5001
    jr nz, jr_039_6173

jr_039_6173:
    nop
    nop
    add b
    ld bc, $4040
    ld h, b
    add b
    add b
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
    cp $00
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_039_61a3

    nop
    ld [bc], a
    nop
    inc b
    inc c
    ld [$040c], sp
    inc b
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld bc, $8282
    ld [bc], a

jr_039_61a3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    ret nz

    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_623c

    inc e
    ld a, $1e
    rra
    inc c
    inc e
    inc c
    inc c
    inc b
    inc c
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    jr nz, jr_039_623c

    db $10
    db $10
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0403
    inc b

jr_039_623c:
    ld [$1008], sp
    stop
    nop
    inc c
    inc e
    jr c, jr_039_62c2

jr_039_6246:
    ld a, b
    ld hl, sp+$30
    jr c, jr_039_627b

    jr nc, @+$22

    jr nc, jr_039_626f

    jr nz, jr_039_6253

    ld b, $01

jr_039_6253:
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_6260:
    inc bc
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
    ld b, b
    ld h, b
    ld b, b
    ld b, b
    ld b, $46
    dec bc

jr_039_626f:
    adc e
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

jr_039_627b:
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld h, b
    ld h, d
    sub b
    sub c
    ld b, b
    ld h, b
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    add hl, bc
    dec e
    ld [bc], a
    inc hl
    dec h
    dec h
    add [hl]
    adc a
    add b
    add [hl]
    jr z, jr_039_6246

    ld b, h
    jr c, jr_039_62b9

jr_039_62b9:
    ld a, h
    ld b, h
    jr c, jr_039_62e5

    stop
    add b
    nop
    nop

jr_039_62c2:
    jr jr_039_62dc

    nop
    nop
    ld b, d
    ld b, d
    inc a
    inc a
    inc a
    inc h
    jr jr_039_62f2

    nop
    jr jr_039_62d2

    sub c

jr_039_62d2:
    ld bc, $1401
    add hl, bc
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e

jr_039_62dc:
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop

jr_039_62e5:
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    nop
    add c
    add e
    add e
    inc h
    inc h

jr_039_62f2:
    jr nz, jr_039_6314

    nop
    jr nz, jr_039_62f7

jr_039_62f7:
    db $10
    db $10
    stop
    ld [$0808], sp
    inc b
    inc b
    add b
    ret nz

    ld b, b
    ld b, b
    nop
    jr nz, jr_039_6307

jr_039_6307:
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
    rst $38
    nop

jr_039_6314:
    ld a, [hl]
    nop
    jr jr_039_6318

jr_039_6318:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    inc b
    inc b
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    dec b
    dec b
    add hl, bc
    add hl, bc
    ld de, $2111
    ld hl, $4141
    pop bc
    ld bc, $01c1
    ldh [$81], a
    ld d, l
    cp l
    ld e, d
    ld d, e
    push bc
    ld c, b
    and l
    inc a
    inc h
    ld a, [hl+]
    sbc l
    ld sp, $2955
    scf
    and d
    xor l
    ld e, a
    ei
    xor a
    ld a, [hl]
    jr c, jr_039_6384

    add hl, hl
    and d
    jr jr_039_6380

    db $e3
    sub [hl]
    jp nc, Jump_000_099f

    ld b, $53
    and a
    dec h
    ld d, d
    ld [hl+], a
    dec l
    ld d, e
    xor [hl]
    add l
    ld l, $a3
    or l
    ld a, [bc]
    inc a
    ld d, h
    ld a, [c]
    cp b
    db $ed
    ld c, c
    ld a, h
    push bc
    db $fc
    db $e3
    ld e, b
    sub l
    ld b, l
    sub b
    ld a, b
    db $e4
    ld a, b
    sub h

jr_039_6380:
    ld l, b
    ld [hl-], a
    dec [hl]
    add hl, sp

jr_039_6384:
    jr z, @-$59

    push af
    ld e, c
    add c
    push af
    scf
    ld l, b
    add l
    ld [c], a
    ld a, [hl+]
    cp a
    add sp, $2b
    dec [hl]
    ld b, [hl]
    xor l
    adc a
    add hl, bc
    ld l, b
    ldh a, [$e8]
    db $eb
    sbc [hl]
    or h
    add hl, bc
    ld [c], a
    call nz, $9ec0
    inc d
    sub l
    and [hl]
    jr z, @-$59

    ld h, $4a
    sub b
    sub l
    ld [c], a
    jp $112a


    ld de, $fe95
    sbc b
    pop de
    ld e, a
    ld sp, hl
    ret nz

    rst $38
    call nz, Call_000_10a6
    ld e, a
    push de
    xor c
    sub l
    db $fc
    ld h, c
    ld d, $99
    db $76
    ld a, b
    sbc d
    ld a, b
    cp $78
    cp $64
    xor c
    rst $10
    add $37
    ld a, [$9764]
    add hl, de
    ld b, c
    ld d, $ff
    add $11
    add d
    rrca
    ld [$7f67], a
    ld a, [de]
    xor c
    ld e, a
    ld hl, sp+$5a
    ld [hl], c
    ld b, l
    ld a, b
    ret z

    or l
    ld [bc], a
    scf
    sbc e
    ld sp, $635c
    inc c
    ld d, h
    ld l, d
    sub d
    add h
    ld a, b
    ld c, b
    ld b, a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld c, $00
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_6485

    inc e
    ld a, $1e
    rra
    inc c
    inc e
    inc c
    inc c
    inc b
    inc c
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    ret nz

    jr nz, jr_039_6485

    db $10
    db $10
    jp nz, $8700

    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    jr nz, jr_039_6479

jr_039_6479:
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    inc bc
    add h
    inc b

jr_039_6485:
    ld [$0008], sp
    nop
    nop
    nop
    inc c
    inc e
    jr c, jr_039_650b

jr_039_648f:
    ld a, b
    ld hl, sp+$30
    jr c, jr_039_64c4

    jr nc, @+$22

    jr nc, jr_039_649c

    inc b
    ld [bc], a
    ld b, $01

jr_039_649c:
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0308], sp
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
    ld b, b
    ld h, b
    ld b, b
    ld b, b
    ld b, $46
    nop
    nop
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

jr_039_64c4:
    nop
    nop
    nop
    db $10
    db $10
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld h, b
    ld h, d
    jr nz, jr_039_64f9

    ld b, b
    ld h, b
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $8909

jr_039_64f9:
    add b
    adc c
    add b
    add b
    jr z, jr_039_648f

    ld b, h
    jr c, jr_039_6502

jr_039_6502:
    ld a, h
    ld b, h
    jr c, jr_039_652e

    stop
    nop
    nop
    nop

jr_039_650b:
    jr jr_039_6525

    nop
    nop
    ld b, d
    ld b, d
    inc a
    inc a
    jr jr_039_652d

    nop
    nop
    sub b
    sub c
    ld bc, $0191
    ld bc, $0914
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e

jr_039_6525:
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop

jr_039_652d:
    nop

jr_039_652e:
    nop
    nop
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    ld bc, $0101
    ld bc, $1001
    sbc b
    and h
    and h
    ld b, d

jr_039_654c:
    ld b, d
    add [hl]
    add c
    rlca
    add c
    ld [bc], a
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2d19], sp
    dec h
    ld c, [hl]
    ld b, d
    rlca
    add c
    add d
    add c
    inc bc
    add b
    inc bc
    ld b, b
    ld b, c
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

jr_039_6580:
    nop
    nop

jr_039_6582:
    add b
    add b
    add b
    add b
    add b
    ld d, l
    cp c
    add hl, hl
    inc a
    sbc b
    ld a, [c]
    jr jr_039_6580

    ld e, b
    jr z, @-$49

    ld d, e
    and l
    ld c, b
    and a
    cp $bb
    rst $10
    ld a, [hl-]
    xor b
    sub [hl]
    add hl, bc
    dec bc
    ld c, [hl]
    rst $00
    jp nz, $9e41

    adc [hl]
    ld e, d
    add hl, hl
    ld d, d
    jr nz, jr_039_654c

    and d
    adc e
    and c
    ld b, d
    adc a
    dec c
    ld a, [bc]
    or l
    ld d, e
    cp l
    dec h
    ld d, l
    inc a
    ld e, $a3
    and [hl]
    adc d
    ld a, h
    sbc d
    ld a, [hl-]
    ld l, b
    and l
    ld b, l
    sbc e
    ld c, [hl]
    ld a, [$8c0c]
    cpl
    add hl, sp
    inc d
    sbc e
    ld d, l
    add hl, bc
    sub a
    db $d3
    sub l
    ld [hl+], a
    add d
    xor e
    cp $86
    add hl, sp
    and [hl]
    adc a
    ld e, $3c
    ld h, [hl]
    jr c, jr_039_6582

    inc l
    sbc [hl]
    ld c, h
    ld h, c
    jp hl


    ret nc

    and h
    ld hl, $bf10
    rst $20
    dec sp
    ld hl, sp+$44
    ld b, e
    ld a, a
    ret nz

    sbc h
    ld a, a
    rst $38
    inc h
    xor h
    jr nc, jr_039_661e

    ld [bc], a
    ld [hl], b
    push de
    ld b, [hl]
    cp a
    ld hl, sp-$59
    ld [bc], a
    and h
    inc l
    ld e, h
    rla
    pop af
    push bc
    ld a, a
    and e
    jr jr_039_662a

    daa
    dec de
    rst $38
    ld b, [hl]
    ret


    rst $00
    ld a, a
    inc e
    db $10
    ld c, b
    ld e, c
    or e
    ld a, [$2070]
    ret nz

    and $f7
    ld a, [$479b]
    dec de
    rst $38
    ld a, [bc]
    ld h, c

jr_039_661e:
    dec d
    inc e
    ld [hl], l
    ld de, $6849
    ccf
    and a
    ld a, [de]
    xor d
    ld l, e
    rst $38

jr_039_662a:
    adc h
    ld l, a
    rst $38
    db $ec
    ld c, l
    ld [hl+], a
    add l
    ld c, b
    ld b, a
    dec d
    ld hl, sp+$24
    ld [hl+], a
    rst $38
    and c
    inc e
    call nc, Call_000_0944
    dec d
    cp $77
    ld h, $1f
    dec e
    adc h
    ld [hl], c
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rlca
    nop
    rrca
    nop
    ccf
    nop
    ld [$1d00], sp
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld [bc], a
    nop
    nop
    nop
    add c
    nop
    jp $c300


    nop
    jp $8100


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    cp b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    ld b, c
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    ccf
    nop
    rra
    nop
    jr nc, jr_039_66d4

    inc e
    ld a, $1e
    rra
    inc c
    inc e
    inc c
    inc c
    inc b
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
    add b
    ret nz

    jr nz, jr_039_66d4

    db $10
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
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0403
    inc b

jr_039_66d4:
    ld [$f808], sp
    nop
    ldh a, [rP1]
    inc c
    inc e
    jr c, jr_039_675a

jr_039_66de:
    ld a, b
    ld hl, sp+$30
    jr c, jr_039_6713

    jr nc, @+$22

    jr nc, jr_039_66eb

    inc b
    ld [bc], a
    ld b, $01

jr_039_66eb:
    ld [bc], a
    nop
    ld bc, $0018
    inc e
    nop
    inc a
    nop
    db $fc
    nop
    ld [$0308], sp
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
    ld b, b
    ld h, b
    ld b, b
    ld b, b
    ld b, $46
    nop
    nop
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

jr_039_6713:
    nop
    nop
    nop
    db $10
    db $10
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld h, b
    ld h, d
    jr nz, jr_039_6748

    ld b, b
    ld h, b
    add b
    ld b, b
    nop
    add b
    jr jr_039_6730

jr_039_6730:
    jr c, jr_039_6732

jr_039_6732:
    inc a
    nop
    ccf
    nop
    db $fc
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $8909

jr_039_6748:
    add b
    adc c
    add b
    add b
    jr z, jr_039_66de

    ld b, h
    jr c, jr_039_6751

jr_039_6751:
    ld a, h
    ld b, h
    jr c, jr_039_677d

    stop
    nop
    nop
    nop

jr_039_675a:
    jr jr_039_6774

    nop
    nop
    ld b, d
    ld b, d
    inc a
    inc a
    jr jr_039_677c

    nop
    nop
    sub b
    sub c
    ld bc, $0191
    ld bc, $0914
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e

jr_039_6774:
    inc d
    ld [$003f], sp
    ld a, $00
    nop
    nop

jr_039_677c:
    nop

jr_039_677d:
    nop
    nop
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    ld bc, $0101
    ld bc, $1001
    sbc b
    xor h
    and h
    ld c, [hl]
    ld b, d
    add [hl]
    add c
    rlca
    add c
    ld [bc], a
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2d19], sp
    dec h
    ld c, [hl]
    ld b, d
    rlca
    add c
    add d
    add c
    inc bc
    add b
    inc bc
    ld b, b
    ld b, c
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
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    ld d, l
    cp [hl]
    call $b953
    ld d, [hl]
    xor b
    adc c
    add hl, sp
    ld d, l
    xor d
    ld [hl], $8e
    ld a, [de]
    adc a
    ld d, $3c
    ld [hl], h
    db $fd
    ld hl, $463e
    inc a
    sbc d
    sub l
    inc a
    sbc d
    and l
    ld d, e
    ld d, $3b
    ld [$8f95], a
    sub e
    rst $18
    adc e
    xor b
    inc sp
    and a
    ld c, d
    xor l
    ld d, b
    jp c, Jump_000_1c15

    ld l, e
    ld d, c
    xor d
    add l
    ld b, a
    inc c
    sbc h
    ld c, d
    ld a, [bc]
    ld [hl], b
    jr nz, @-$57

    or h
    and b
    sbc a
    ld l, d
    and b
    sbc h
    ld [$e329], sp
    and a
    ld [de], a
    add d
    sbc h
    ld [hl-], a
    sbc h
    ld a, [bc]
    ld [hl], h
    ld d, h
    xor d
    ld h, b
    and e
    ld d, c
    rst $10
    ld d, h
    or [hl]
    rrca
    rst $00
    adc c
    inc b
    ld a, h
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_6846:
    nop
    ld bc, $0e01
    rrca
    ld sp, $203f
    ccf
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
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$8c]
    db $fc
    inc b
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
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
    add b
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
    ld bc, $80ff
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    inc b
    rlca
    ld b, $07
    dec b
    rlca
    ld b, $07
    dec b
    rlca
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    ld h, b
    rst $38
    ld e, $ff
    ld bc, $c0ff
    rst $38
    inc a
    rst $38
    jp $f8ff


    rst $38
    and a
    rst $18
    nop
    rst $38

jr_039_6941:
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld b, $ff
    ld a, b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    inc a
    rst $38
    jp Jump_000_1fff


    rst $38
    push hl
    ei
    jr nz, jr_039_6941

    ld h, b
    ldh [$a0], a
    ldh [$60], a
    ldh [$a0], a
    ldh [rNR41], a
    and b
    jr nz, jr_039_698d

    jr nz, jr_039_698f

    inc b
    dec b
    dec b
    dec b
    ld bc, $0005
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $4401
    jr c, jr_039_6982

jr_039_6982:
    ld a, h
    ld b, h
    jr c, @+$2a

    stop
    add b
    add b
    add b
    ld b, b
    ld b, b

jr_039_698d:
    add b
    add b

jr_039_698f:
    nop
    nop
    jr @+$1a

    jr jr_039_69ad

    jr @+$1a

    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e
    inc d
    ld [$0100], sp
    ld bc, $0201
    ld [bc], a

jr_039_69ad:
    ld bc, $2001
    and b
    and b
    and b
    add b
    and b
    nop
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    jr nc, jr_039_6a1a

    jr nz, jr_039_6a1c

    jr nz, jr_039_6a1e

    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$0c]
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_6a51

    inc e

jr_039_6a1a:
    ld a, $1e

jr_039_6a1c:
    rra
    inc c

jr_039_6a1e:
    inc e
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    add c
    rst $38
    adc [hl]
    rst $38
    or b
    rst $38
    add e
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [bc], a
    cp $02
    cp $02
    cp $01
    rst $38
    add c
    rst $38
    ld [hl], c
    rst $38
    dec c
    rst $38
    pop bc
    rst $38
    nop
    nop

jr_039_6a51:
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc e
    jr c, jr_039_6ad7

jr_039_6a5b:
    ld a, b
    ld hl, sp+$30
    jr c, jr_039_6a6c

    inc c
    inc b
    inc c
    inc b
    inc b
    ld [bc], a
    ld b, $01
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc

jr_039_6a6c:
    inc bc
    rlca
    rlca
    inc a
    ccf
    rla
    rra
    rrca
    rrca
    inc bc
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
    ret nz

    ldh [rP1], a
    rst $38
    rst $38
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

jr_039_6a8d:
    nop
    nop
    jr c, jr_039_6a8d

    add sp, -$08
    ldh a, [$f0]
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    inc bc
    rlca
    jr nc, jr_039_6ad1

    jr nz, jr_039_6ad3

    jr nz, jr_039_6ac5

    ld b, b
    ld h, b
    add b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rlca
    rlca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ret nz

    ret nz

    ld b, $c6
    dec bc
    adc e

jr_039_6ac5:
    adc a
    adc a
    add [hl]
    add [hl]
    jr z, jr_039_6a5b

    ld b, h
    jr c, jr_039_6ace

jr_039_6ace:
    ld a, h
    nop

Call_039_6ad0:
    nop

jr_039_6ad1:
    nop
    nop

jr_039_6ad3:
    nop
    nop
    nop
    nop

jr_039_6ad7:
    jr @+$1a

    nop
    nop
    nop
    nop
    jr jr_039_6af7

    inc bc
    inc bc
    ld h, b
    ld h, e
    or b
    or c
    pop af
    pop af
    ld h, c
    ld h, c
    inc d
    add hl, bc
    ld [hl+], a
    inc e
    nop
    ld a, $e0
    ldh [$60], a
    ldh [$c0], a
    ret nz

    add b
    add b

jr_039_6af7:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3844
    jr z, jr_039_6b23

    nop
    add b
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    nop
    jr jr_039_6b39

    jr @+$1a

jr_039_6b23:
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc e
    inc d
    ld [$0100], sp
    ld bc, $0201
    ld [bc], a

jr_039_6b39:
    ld bc, $0001
    ld bc, $0000
    add b
    add b
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_6be3

    inc e
    ld a, $1e
    rra
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    jr nc, jr_039_6bf8

    jr nz, jr_039_6bfa

    jr nz, jr_039_6bfc

    ld b, b
    ld a, a
    nop
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
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$0c]
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $00
    nop
    nop
    nop

jr_039_6be3:
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc e
    jr c, jr_039_6c69

jr_039_6bed:
    ld a, b
    ld hl, sp+$0c
    inc e
    inc c
    inc c
    inc b
    inc c
    inc b
    inc b
    ld [bc], a

jr_039_6bf8:
    ld b, $01

jr_039_6bfa:
    ld [bc], a
    ld [bc], a

jr_039_6bfc:
    inc bc
    ld bc, $8001
    rst $38
    jr nz, jr_039_6c42

    db $10
    rra
    dec c
    rrca
    inc bc
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $04ff
    db $fc
    ld [$b0f8], sp
    ldh a, [$c0]
    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    jr nc, jr_039_6c69

    jr nc, jr_039_6c63

    jr nz, jr_039_6c65

    jr nz, jr_039_6c57

    ld b, b
    ld h, b
    add b
    ld b, b
    ld b, b
    ret nz

    add b
    add b
    ld bc, $0101

jr_039_6c42:
    ld bc, $0302
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    ret nz

    ldh [$c0], a
    ret nz

    ld b, $c6
    add hl, bc
    adc c

jr_039_6c57:
    adc c
    adc c
    add b
    add b
    jr z, jr_039_6bed

    ld b, h
    jr c, jr_039_6c60

jr_039_6c60:
    nop
    nop
    nop

jr_039_6c63:
    nop
    nop

jr_039_6c65:
    nop
    nop
    nop
    nop

jr_039_6c69:
    jr jr_039_6c83

    nop
    nop
    nop
    nop
    inc bc
    rlca
    inc bc
    inc bc
    ld h, b
    ld h, e
    sub b
    sub c
    sub c
    sub c
    ld bc, $1401
    add hl, bc
    ld [hl+], a
    inc e
    add b
    add b
    add b
    add b

jr_039_6c83:
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [rTAC], a
    rlca
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld b, h
    jr c, @+$2a

    stop
    add b
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    nop
    add b
    jr @+$1a

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $22
    inc e
    inc d
    ld [$0100], sp
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    ld bc, $e0e0
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_6d75

    inc e
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_6d75:
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc e
    jr c, jr_039_6dfb

jr_039_6d7f:
    ld e, $1f
    inc c
    inc e
    inc c
    inc c
    inc b
    inc c
    inc b
    inc b
    ld [bc], a
    ld b, $01
    ld [bc], a
    nop
    ld bc, $0000
    add b
    ret nz

    jr nz, jr_039_6db5

    db $10
    db $10
    ld [$0308], sp
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0403
    inc b

jr_039_6db5:
    ld [$1008], sp
    db $10
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld a, b
    ld hl, sp+$30
    jr c, jr_039_6df4

    jr nc, @+$22

    jr nc, jr_039_6de8

    jr nz, jr_039_6e0a

    ld h, b
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add b
    ld b, b
    ld h, b
    ld b, b
    ld b, b
    ld b, $46
    dec bc

jr_039_6de8:
    adc e
    adc a
    adc a
    add [hl]
    add [hl]
    jr z, jr_039_6d7f

    nop
    nop
    nop
    nop
    nop

jr_039_6df4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_6dfb:
    jr jr_039_6e15

    nop
    nop
    ld b, $01
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld h, b
    ld h, d
    or b
    or c
    pop af

jr_039_6e0a:
    pop af
    ld h, c
    ld h, c
    inc d
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_6e15:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    jr c, jr_039_6e32

jr_039_6e32:
    ld a, h
    ld b, h
    jr c, @+$2a

    stop
    add b
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ld e, d
    ld e, d
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e
    inc d
    ld [$0100], sp
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    cp $38
    ld a, h
    jr jr_039_6f51

    inc b
    inc c
    ld bc, $0003
    nop
    nop
    nop
    nop
    add b
    jr c, jr_039_6fa1

    dec b
    inc bc
    ld [$0000], sp
    nop
    nop
    nop
    add b
    ret nz

    nop
    nop
    nop
    nop
    ld a, [hl]
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
    nop
    ld bc, $3e1c
    and b
    ret nz

    stop
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop

jr_039_6f51:
    rst $38
    rst $38
    ld a, $7f
    inc e
    ld a, $18
    inc e
    jr nz, jr_039_6f8b

    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld b, b
    ld [bc], a
    add [hl]
    adc e
    sbc e
    sbc a
    sbc a
    ld c, $8e
    jr z, jr_039_6f8b

    ld b, h
    jr c, jr_039_6f7e

jr_039_6f7e:
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_6fa1

    nop
    nop

jr_039_6f8b:
    nop
    nop
    jr jr_039_6fa7

    nop
    ld [bc], a
    ld b, b
    ld h, c
    pop de
    reti


    ld sp, hl
    ld sp, hl
    ld [hl], b
    ld [hl], c
    inc d
    ld [$1c22], sp
    nop
    ld a, $00
    nop

jr_039_6fa1:
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_6fa7:
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4401
    jr c, @+$2a

    sub b
    add b
    add b
    nop
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc e
    inc d
    add hl, bc
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_039_70a1

jr_039_70a1:
    nop
    nop
    rst $38
    rst $38
    ld a, h
    cp $38
    ld a, h
    jr jr_039_70e3

    inc b
    inc c
    ld hl, $0003
    nop
    jr nc, jr_039_70b3

jr_039_70b3:
    nop
    add b
    jr c, jr_039_7133

    dec b
    inc bc
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
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
    inc c
    nop
    nop
    ld bc, $3e1c
    and b
    ret nz

    stop
    nop
    nop
    nop
    nop
    inc e
    nop
    nop
    nop

jr_039_70e3:
    rst $38
    rst $38
    ld a, $7f
    inc e
    ld a, $18
    inc e
    jr nz, jr_039_711d

    add h
    ret nz

    stop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0109
    add b
    ret nz

    nop
    ld b, b
    nop
    add b
    adc b
    sbc h
    add d
    add e
    nop
    add b
    jr z, jr_039_711d

    ld b, h
    jr c, jr_039_7110

jr_039_7110:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_7133

    nop
    nop

jr_039_711d:
    nop
    nop
    ld bc, $0003
    ld [bc], a
    nop
    ld bc, $3911
    ld b, c
    pop bc
    nop
    ld bc, $0814
    ld [hl+], a
    inc e
    ld [$0000], sp
    nop

jr_039_7133:
    nop
    nop
    nop
    nop
    jr nz, jr_039_7139

jr_039_7139:
    nop
    nop
    nop
    add b
    sub b
    add b
    ld bc, $0001
    ld bc, $0004
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld b, h
    jr c, @+$2a

    sub b
    add b
    add b
    nop
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    jr jr_039_7179

    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $22
    inc e
    inc d
    add hl, bc
    ld bc, $0001
    ld [bc], a

jr_039_7179:
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $8080
    nop
    add b
    jr nz, jr_039_7185

jr_039_7185:
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    nop
    nop
    nop
    ld h, b
    ldh a, [$f8]
    db $fc
    inc c
    sbc [hl]
    ld b, $0e
    ld b, $06
    inc b
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_7265

    ld a, a
    ld a, a
    adc b
    sbc h
    jr jr_039_720b

    inc b
    inc c
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b

jr_039_720b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_7227:
    nop
    nop
    nop
    nop
    inc c
    ld e, $fe
    cp $30
    jr c, jr_039_724a

    inc e
    ld b, $0c
    inc bc

jr_039_7236:
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    db $10
    jr c, jr_039_7245

    rlca
    nop
    ld [bc], a

jr_039_7245:
    add b
    nop
    ret nz

    nop
    ld b, b

jr_039_724a:
    ldh [rLCDC], a
    ld b, b
    ld b, $46
    nop
    nop
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
    ld [$c01c], sp

jr_039_7262:
    ldh [rP1], a
    ld b, b

jr_039_7265:
    ld bc, $0300
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, d
    inc c
    inc e
    jr jr_039_72ab

    ld h, b
    jr nc, jr_039_7236

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $8b0a
    adc a
    adc a
    add [hl]
    add [hl]
    jr z, jr_039_7227

    ld b, h
    jr c, jr_039_729a

jr_039_729a:
    ld a, h
    ld b, h
    jr c, jr_039_72c6

    stop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    nop
    nop
    jr jr_039_72c3

jr_039_72ab:
    inc h
    inc h
    nop
    nop
    jr nc, jr_039_7262

    pop af
    pop af
    ld h, c
    ld h, c
    inc d
    add hl, bc
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e
    inc d
    ld [$0000], sp
    nop
    nop

jr_039_72c3:
    nop
    nop
    nop

jr_039_72c6:
    nop
    nop
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    add b
    add b
    ld b, b
    nop
    add b
    add b
    add b
    nop
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
    rst $38
    nop
    ld a, [hl]
    nop
    jr jr_039_72f9

jr_039_72f9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    ld bc, $0000
    jr nc, jr_039_73cb

    db $fc
    db $fc
    add h
    adc $06
    add [hl]
    ld b, $06
    inc b
    adc [hl]
    adc b
    call z, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_73bb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_73bb:
    nop
    nop
    ld b, $0f
    ccf
    ccf
    jr jr_039_73df

    inc c
    ld c, $03
    ld b, $01
    ld bc, $0000

jr_039_73cb:
    nop
    nop
    nop
    nop
    ret nz

    ldh [$08], a
    inc e
    ld bc, $0003
    ld bc, $00c0
    ldh [$80], a
    jr nz, jr_039_744d

    jr nz, @+$22

jr_039_73df:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e04
    ldh [$f0], a
    nop
    jr nz, jr_039_73f8

jr_039_73f8:
    nop
    ld bc, $0100
    inc bc
    ld bc, $ff01
    rst $38
    ld b, $0e
    inc c
    inc e
    jr nc, jr_039_741f

    ldh [rNR41], a
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_741f:
    inc bc
    inc hl
    rlca
    ld b, a
    ld b, l
    ld b, l
    ld b, e
    ld b, e
    inc d
    ld c, b
    ld [hl+], a
    sbc h
    add b
    cp [hl]
    and d
    sbc h
    nop
    nop
    nop
    add b
    add b
    add b
    nop
    nop
    inc c
    inc c
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld e, $30
    ld sp, $7838
    ld e, b
    ld e, b
    jr nc, jr_039_7477

    ld a, [bc]
    inc b
    ld de, $000e
    rra

jr_039_744d:
    ld de, $000e
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    adc b
    nop
    ld b, b
    ld b, b
    jr nz, jr_039_7476

jr_039_7476:
    ld b, b

jr_039_7477:
    ld b, b
    ld b, b
    nop
    ld b, b
    ld b, b
    add b
    add b
    add b
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc b
    nop
    nop
    nop
    ld bc, $0080
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    add b
    add b
    add b
    nop
    add b
    add b
    ld b, b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0c0c], sp
    ld c, $0e
    rrca
    ld [$080c], sp
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_039_7520

jr_039_7520:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0003
    ld bc, $2020
    jr nc, jr_039_7573

    ld l, b
    jr jr_039_75dd

    rrca
    ldh [$30], a
    add b
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_7573:
    nop
    nop
    ld a, [c]
    ei
    ld a, [de]
    inc b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld bc, $1f0f
    ld d, b
    pop hl
    add b
    nop
    ld bc, $0700
    nop
    rra
    ld bc, $067c
    ld hl, sp-$04
    ld hl, sp-$04
    ldh a, [$f8]
    ld h, b
    ldh a, [rLCDC]
    ldh [$80], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    ld b, $06
    nop
    ld [$0808], sp
    ld [$0009], sp
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    nop
    ld bc, $0200
    ld bc, $8380
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    jr nz, @-$3e

    nop
    ldh [$e8], a
    jr jr_039_75f2

    jr nc, jr_039_75d4

jr_039_75d4:
    ld [$0808], sp
    ld [$0008], sp
    inc b
    inc b
    inc b

jr_039_75dd:
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0409

jr_039_75f2:
    inc b
    nop
    inc b
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    ld b, d
    ld b, c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    jr nz, @-$3e

    ld b, b
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
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld b, $01
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_76cd

    inc e
    ld a, $1e
    rra
    inc c
    inc e
    inc c
    inc c
    inc b
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
    add b
    ret nz

    jr nz, jr_039_76cd

    db $10
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
    ld bc, $0403
    inc b

jr_039_76cd:
    ld [$0008], sp
    nop
    nop
    nop
    inc c
    inc e
    jr c, jr_039_7753

    ld a, b
    ld hl, sp+$30
    jr c, jr_039_770c

    jr nc, jr_039_76fe

    jr nc, jr_039_76e4

    inc b
    ld [bc], a
    ld b, $01

jr_039_76e4:
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0308], sp
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
    ld b, b
    ld h, b
    ld b, b
    ld b, b
    nop

jr_039_76fe:
    ld b, b
    nop
    nop
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

jr_039_770c:
    nop
    nop
    nop
    db $10
    db $10
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    ld [bc], a
    ld b, $02
    ld [bc], a
    nop
    ld [bc], a
    jr nz, jr_039_7741

    ld b, b
    ld h, b
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $8808

jr_039_7741:
    add a
    add a
    xor b
    sub b
    ld b, h
    cp b
    nop
    ld a, h
    ld b, h
    jr c, jr_039_7774

    stop
    nop
    add c
    add c
    nop
    nop

jr_039_7753:
    jr @+$1a

    nop
    nop
    nop
    nop
    jr jr_039_7773

    inc h
    inc h
    nop
    nop
    db $10
    ld de, $e1e1
    dec d
    add hl, bc
    ld [hl+], a
    dec e
    nop
    ld a, $22
    inc e
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop

jr_039_7773:
    nop

jr_039_7774:
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    add b
    nop
    ld b, b
    nop
    add b
    add b
    add b
    nop
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
    rst $38
    nop
    ld a, [hl]
    nop
    jr jr_039_77a9

jr_039_77a9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld bc, $0101
    nop
    ld bc, $0001
    nop

jr_039_77bc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    ld d, l
    or a
    ld d, e
    ret


    sub e
    push bc
    ld b, c
    ld [$ebf1], sp
    ld c, h
    dec d
    ld c, d
    ld d, h
    push hl
    and l
    rst $38
    cp d
    rst $18
    ld [$2838], a
    sub [hl]
    adc b
    ld h, b
    sub b
    adc [hl]
    ld [hl], l
    add hl, hl
    and $41
    adc [hl]
    cp h
    sub [hl]
    inc b
    ld h, e
    jp $93a2


    call nz, $e341
    call nz, Call_039_4f41
    ld [hl+], a
    adc $b4

jr_039_77ff:
    sub [hl]
    sub e
    cp c
    ld h, d
    ld e, h
    db $10
    ld h, h
    rst $28
    ld b, [hl]
    add e
    inc hl
    ld a, [hl-]
    jr z, jr_039_77bc

    ld d, l
    sbc b
    dec e
    ld d, e
    sbc l
    pop hl
    xor d
    rst $38
    add d
    xor a
    call Call_039_6ad0
    inc a
    ld h, [hl]
    inc a
    ld b, l

jr_039_781e:
    adc [hl]
    adc c
    cp d

Jump_039_7821:
    ld a, h
    add h
    inc de
    ld e, $44
    sbc b
    and d
    sub h
    sbc h
    ld c, c
    rla
    inc bc
    inc c
    xor b
    ld e, h
    inc d
    ld [hl], c
    call nz, Call_039_7fc5
    rst $20
    ld c, h
    sbc c
    ld e, a
    rst $00
    ld e, h
    ld d, d
    ld a, d
    ld e, d
    ld a, b
    cp $9e
    scf
    rst $00
    adc l
    rst $00
    ld a, [hl-]
    ld d, h
    ld a, b
    inc c
    ld h, h
    cp $9d
    add hl, hl
    add hl, hl
    ld e, a
    ld sp, hl
    pop de
    db $10
    add sp, $48
    or l
    inc bc
    jr nz, jr_039_77ff

    dec hl
    jr jr_039_781e

    dec d
    inc e
    jr z, jr_039_7891

    ld a, h
    ld h, h
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_787a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_039_7882:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_7891:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_78f3

    inc e
    ld a, $1e
    rra
    inc c
    inc e
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
    add b
    ret nz

    jr nz, jr_039_78f3

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0403
    inc b

jr_039_78f3:
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc e
    jr c, jr_039_7979

jr_039_78fd:
    ld a, b
    ld hl, sp+$30
    jr c, jr_039_7932

    jr nc, jr_039_7908

    inc c
    inc b
    inc b
    ld [bc], a

jr_039_7908:
    ld b, $01
    ld [bc], a
    db $10
    ld bc, $0030
    ld [hl], b
    nop
    ld [hl], b
    nop
    db $10
    db $10
    ld [$0308], sp
    rlca
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
    ld b, b
    ld h, b
    ld b, b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop

jr_039_7932:
    nop
    ld [$1008], sp
    db $10
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    ld [bc], a
    ld b, $02
    ld [bc], a
    jr nz, jr_039_7975

    jr nz, jr_039_7967

    ld b, b
    ld h, b
    add b
    ld b, b
    ld [$0c80], sp
    nop
    ld c, $00
    ld c, $00
    inc a
    nop
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    stop
    inc c
    ld bc, $0101
    dec b
    ld bc, $4404

jr_039_7965:
    ld a, [bc]
    adc e

jr_039_7967:
    adc a
    adc a
    add [hl]
    add [hl]
    jr z, jr_039_78fd

    ld b, h
    jr c, jr_039_7970

jr_039_7970:
    ld a, h
    ld b, h
    jr c, jr_039_7974

jr_039_7974:
    nop

jr_039_7975:
    nop
    nop
    nop
    nop

jr_039_7979:
    nop
    nop
    jr jr_039_7995

    nop
    nop
    jr jr_039_7999

    inc a
    inc h
    jr nz, jr_039_79a7

    ld d, b
    pop de
    pop af
    pop af
    ld h, c
    ld h, c
    inc d
    add hl, bc
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e
    inc a
    nop

jr_039_7995:
    ld h, b
    nop
    ld b, b
    nop

jr_039_7999:
    nop
    nop
    ld [$3000], sp
    add b
    add b
    add b
    and b
    add b
    inc c
    ld bc, $0010

jr_039_79a7:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    jr z, jr_039_79c5

    nop
    add b
    add b
    ld b, b
    nop
    add b
    add b
    add b
    nop
    add b
    add b
    nop
    nop
    nop
    jr jr_039_79dd

jr_039_79c5:
    nop

Jump_039_79c6:
    nop
    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    jr jr_039_79cf

jr_039_79cf:
    nop
    nop
    nop
    nop
    inc d
    ld [$0100], sp
    ld bc, $0002
    ld bc, $0101

jr_039_79dd:
    nop
    ld bc, $0001
    nop
    nop
    jr nc, jr_039_7965

    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ei
    nop
    di
    nop
    di
    nop
    db $e3
    nop
    jp $c300


    nop
    add a
    nop
    add a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_039_7a2b:
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    rst $30
    jr c, jr_039_7a2b

    ld a, $fe
    rra
    db $ec
    inc e
    adc a
    nop
    adc a
    nop
    rra
    nop
    ccf
    nop
    sbc a
    nop
    rst $18
    nop
    rst $28
    nop
    cp a
    ret nz

    rst $00
    nop
    db $e3
    nop
    pop af
    nop
    db $e3
    nop
    rst $20
    nop
    rst $00
    nop
    rst $08
    nop
    sbc a
    nop
    pop af
    nop
    pop af
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld sp, hl
    nop
    ei
    nop
    rst $30
    nop
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    inc e
    cp e
    ld a, h

jr_039_7a8f:
    ld a, a

jr_039_7a90:
    ld hl, sp+$37
    jr c, jr_039_7a90

    inc c
    db $f4
    inc c
    cp h
    inc b
    sbc d
    ld b, $8d
    ld [bc], a
    add $01
    jp $8f00


    nop
    ccf
    jr nz, jr_039_7ac5

    db $10
    rrca
    ld [$0703], sp
    nop
    ld [bc], a
    ret nz

    nop
    ld h, b
    add b
    ret nz

    ld h, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc b

jr_039_7ac5:
    ld hl, sp+$08
    ldh a, [rNR10]
    ret nz

    ldh [rP1], a
    ld b, b
    inc bc
    nop
    ld b, $01
    inc bc
    ld b, $3f
    jr nc, jr_039_7b05

    jr nc, jr_039_7b15

    jr nz, jr_039_7b33

    ld h, b
    or c
    ld b, b
    ld h, e
    add b
    jp $f100


    nop
    rst $00
    nop
    di
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $40c0
    add h
    ld b, h
    ld a, [bc]
    adc d
    adc a
    adc a
    add [hl]
    add [hl]
    jr z, jr_039_7a8f

    ld b, h
    jr c, jr_039_7b02

jr_039_7b02:
    ld a, h
    nop
    nop

jr_039_7b05:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_7b27

    nop
    nop
    jr jr_039_7b2b

    inc bc
    ld [bc], a

jr_039_7b15:
    ld hl, $5022
    ld d, c
    pop af
    pop af
    ld h, c
    ld h, c
    inc d
    add hl, bc
    ld [hl+], a
    inc e
    nop
    ld a, $e3
    nop
    rst $08
    nop

jr_039_7b27:
    cp a
    nop
    rst $38
    nop

jr_039_7b2b:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b

jr_039_7b33:
    rst $38
    ld bc, $01fe
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
    cp $01
    ld b, h
    jr c, @+$2a

    stop
    add b
    add b
    ld b, b
    nop
    add b
    add b
    add b
    nop
    add b
    add b
    nop
    inc a
    inc h
    inc a
    inc h
    jr @+$1a

    nop
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    jr jr_039_7b61

jr_039_7b61:
    nop
    nop
    ld [hl+], a
    inc e
    inc d
    ld [$0100], sp
    ld bc, $0002
    ld bc, $0101
    nop
    ld bc, $0001
    rst $38
    add b
    ld a, a
    add b
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
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rSVBK], a
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_039_7c07:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_7c91

    ldh [$f0], a
    ld a, b
    ld a, h
    ld [hl-], a
    ld [hl], e
    jr nc, jr_039_7c59

    db $10
    jr nc, @+$12

    db $10
    ld [$0418], sp
    ld [$0403], sp
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_7c5d

    rrca
    rra
    nop
    ld [$0000], sp
    nop
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
    nop
    ld bc, $0000
    ld bc, $0403
    inc c
    db $10
    db $10

jr_039_7c59:
    jr nz, @+$22

    ld b, b
    ld b, b

jr_039_7c5d:
    ld bc, $0281
    ld bc, $020c
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0101
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    inc h
    jr @+$1a

jr_039_7c91:
    and b
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
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $6001
    ld h, b
    jr @+$06

    ld [$0818], sp
    ld [$0800], sp
    nop
    inc b
    ld b, h
    ld b, h
    add h
    add h
    ld d, b
    inc h
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    add d
    add d
    ld bc, $0404
    dec b
    dec b
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    db $10
    ldh [rP1], a
    ldh a, [rNR10]
    ldh [$a0], a
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld h, b
    ld h, b
    ldh a, [$90]
    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    adc c
    ld [hl], e
    ld [bc], a
    ld a, [$728a]
    ld d, b
    ld [hl+], a
    nop
    inc b
    nop
    ld [$0400], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    db $10
    jr jr_039_7d52

    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_7d52:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rSVBK], a
    ld hl, sp+$78
    ld a, h
    nop
    nop
    ld [bc], a
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    ld c, b
    nop
    jr nz, jr_039_7d7f

jr_039_7d7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_039_7e1f

    ldh [$f0], a
    ldh [$e0], a
    ld [hl-], a
    ld [hl], e
    jr nc, jr_039_7de7

    db $10
    jr nc, @+$12

    db $10
    ld [$0418], sp
    ld [$0403], sp
    ld bc, $0002
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_039_7deb

    rrca
    rra
    nop
    ld [$0000], sp
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
    rst $38
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    inc b
    inc c
    db $10
    db $10

jr_039_7de7:
    jr nz, jr_039_7e09

    ld b, b
    ld b, b

jr_039_7deb:
    ld bc, $0281
    ld bc, $020c
    jr jr_039_7df7

    ret nz

    ldh [$c0], a
    ret nz

jr_039_7df7:
    add b
    ret nz

    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100

jr_039_7e09:
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0004
    add b
    nop
    nop
    jr jr_039_7e31

    inc l
    inc l
    inc a
    inc a
    jr @+$1a

jr_039_7e1f:
    and b
    ld b, b
    db $10
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    ld bc, $6001
    ld h, b

jr_039_7e31:
    nop
    nop
    ld [$0818], sp
    ld [$8880], sp
    ret nz

    call nz, $c4c4
    add h
    add h
    ld d, b
    inc h
    adc c
    ld [hl], e
    nop
    ld [bc], a
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    add d
    add d
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    dec b
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ldh a, [rNR10]
    ldh [$a1], a
    ld b, c
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld h, b
    ld h, b
    sub b
    sub b
    ld [$0008], sp
    nop
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld h, b
    nop
    ld [bc], a
    ld a, [$728a]
    ld d, b
    ld [hl+], a
    nop
    inc b
    nop
    ld [$0400], sp
    inc b
    inc b
    ld bc, $0205
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    db $10
    jr jr_039_7ee0

    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_7ee0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_039_7fc5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
