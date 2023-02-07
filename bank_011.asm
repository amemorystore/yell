; disasSembly of "yell.gbc"
SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    nop
    add hl, bc
    ld a, [bc]
    add l
    ld b, b
    ld c, $41
    dec bc
    ld b, c
    ld c, $15
    and b
    ld b, h
    db $eb
    add $0a
    ld a, [bc]
    ld b, a
    nop
    add hl, hl
    ret


    rla
    db $10
    ld b, a
    xor e
    rst $00
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $13
    pop hl
    ld b, c
    db $18, $c7
    add hl, bc
    ld e, $00
    dec sp
    ld a, [hl+]
    rst $00
    dec l
    ld b, b
    inc l
    ld b, $05
    inc bc
    nop
    adc l
    dec b
    ld c, $00
    adc [hl]
    add hl, bc
    rlca
    nop

jr_011_403a:
    sub l
    dec c
    rrca
    nop
    sub [hl]
    dec c
    inc bc
    nop
    sub a
    dec c
    rlca
    nop
    push hl
    ld b, $09
    dec bc
    inc b
    inc bc
    add hl, bc
    dec b
    dec c
    db $10
    ld b, $05
    inc b
    rlca
    add hl, bc
    dec b
    ld [$1107], sp
    add hl, bc
    inc bc
    ld [$130d], sp
    cp $00
    ld bc, $0e07
    dec c
    rst $38
    rst $38
    ld [bc], a
    inc c
    dec bc
    inc c
    cp $02
    inc bc
    ld a, [de]
    rst $00
    dec b
    inc bc
    jr nz, jr_011_403a

    dec b
    ld c, $3c
    rst $00
    add hl, bc
    rlca
    ld h, b
    rst $00
    dec c
    rrca
    ld e, d
    rst $00
    dec c
    inc bc
    ld e, h
    rst $00
    dec c
    rlca
    ld d, a
    ld d, a
    dec h
    ld a, e
    ld a, e
    jr z, jr_011_40f4

    ld a, a
    ld l, c
    inc l
    ld a, e
    jr nz, jr_011_40b3

    ld a, e
    ld a, c
    jr z, jr_011_40cd

    ld a, l
    ld a, [hl]
    inc l
    ld a, e
    ld a, h
    ld [hl], d
    ld a, e
    ld a, e
    inc h
    ld d, a
    ld b, $57
    ld a, [hl+]
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, c
    jr z, @+$7d

    ld a, e
    ld a, c
    ld [bc], a
    inc bc
    ld a, c

jr_011_40b3:
    ld a, e
    ld a, e
    ld a, e
    jr z, jr_011_4133

    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    jr nz, jr_011_40e1

    jr z, jr_011_413d

    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld a, e
    ld a, e
    ld a, h
    ld [hl], e
    jr z, jr_011_4147

    ld a, e

jr_011_40cd:
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    jr z, jr_011_4115

    ccf
    ccf
    dec sp
    ld a, e
    ld a, $3f
    ccf
    ccf
    inc l
    jr nz, jr_011_40f1

jr_011_40e1:
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

jr_011_40f1:
    rrca
    rrca
    dec de

jr_011_40f4:
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $03
    rlca
    ld c, l
    ld c, l
    dec sp
    jr c, jr_011_4102

jr_011_4102:
    nop
    dec sp
    jr c, jr_011_4117

    ld hl, $0b00
    ld [$c301], sp
    add hl, hl
    inc a
    jr nz, jr_011_4151

    ld c, e
    ld b, c
    ld d, b
    ld b, c
    ld d, l

jr_011_4115:
    ld b, c
    ld e, d

jr_011_4117:
    ld b, c
    push hl
    inc hl
    ld [$5f23], a
    ld b, c
    ld h, h
    ld b, c
    ld [$3c21], sp
    ld b, c
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    ld hl, $4146
    jr nz, jr_011_4136

jr_011_4133:
    ld hl, $4141

jr_011_4136:
    call Call_000_3c36
    jp Jump_000_23d2


    rla

jr_011_413d:
    jp z, Jump_000_2d55

    ld d, b
    rla
    push hl
    ld d, l
    dec l
    ld d, b
    rla

jr_011_4147:
    ld [$2d56], sp
    ld d, b
    rla
    ld c, [hl]
    ld d, [hl]
    dec l
    ld d, b
    rla

jr_011_4151:
    and a
    ld d, [hl]
    dec l
    ld d, b
    rla
    inc bc
    ld d, a
    dec l
    ld d, b
    rla
    jr z, @+$59

    dec l
    ld d, b
    rla
    ld h, l
    ld d, a
    dec l
    ld d, b
    rla
    add h
    ld d, a
    dec l
    ld d, b
    ld hl, $d309
    ld b, $13
    call Call_000_2a81
    ld a, [$d11d]
    ldh [$db], a
    ld hl, $d2f6
    ld b, $13
    call Call_000_2a81
    ld a, [$d11d]
    ldh [$dc], a
    ld hl, $41d1

jr_011_4186:
    ld a, [hl+]
    ld b, a
    ldh a, [$dc]
    cp b
    jr c, jr_011_4191

    inc hl
    inc hl
    jr jr_011_4186

jr_011_4191:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d746]
    bit 3, a
    res 3, a
    ld [$d746], a
    jr nz, jr_011_41b6

    push hl
    ld hl, $41cc
    call Call_000_3c36
    pop hl
    call Call_000_3c36
    ld b, $1f
    ld hl, $50d6
    call Call_000_3e84
    jp Jump_000_3852


jr_011_41b6:
    ld de, $cc5b
    ldh a, [$db]
    ld [de], a
    inc de
    ldh a, [$dc]
    ld [de], a
    inc de

jr_011_41c1:
    ld a, [hl+]
    cp $50
    jr z, jr_011_41ca

    ld [de], a
    inc de
    jr jr_011_41c1

jr_011_41ca:
    ld [de], a
    ret


    rla
    inc d
    ld d, e
    ld a, [hl+]
    ld d, b
    ld a, [bc]
    ld bc, $1442
    ld b, $42
    ld e, $0b
    ld b, d
    jr z, jr_011_41ec

    ld b, d
    ld [hl-], a
    dec d
    ld b, d
    inc a
    ld a, [de]
    ld b, d
    ld b, [hl]
    rra
    ld b, d
    ld d, b
    inc h
    ld b, d
    ld e, d
    add hl, hl
    ld b, d

jr_011_41ec:
    ld h, h
    ld l, $42
    ld l, [hl]
    inc sp
    ld b, d
    ld a, b
    jr c, jr_011_4237

    add d
    dec a
    ld b, d
    adc h
    ld b, d
    ld b, d
    sub [hl]
    ld b, a
    ld b, d
    sbc b
    ld c, h
    ld b, d
    rla
    ld h, b
    ld d, e
    ld a, [hl+]
    ld d, b
    rla
    sbc e
    ld d, e
    ld a, [hl+]
    ld d, b
    rla
    call nc, Call_000_2a53
    ld d, b
    rla
    dec bc
    ld d, h
    ld a, [hl+]
    ld d, b
    rla
    ld b, l
    ld d, h
    ld a, [hl+]
    ld d, b
    rla
    ld [hl], l
    ld d, h
    ld a, [hl+]
    ld d, b
    rla
    ret nz

    ld d, h
    ld a, [hl+]
    ld d, b
    rla
    db $e4
    ld d, h
    ld a, [hl+]
    ld d, b
    rla
    ld c, $55
    ld a, [hl+]
    ld d, b
    rla
    add hl, sp
    ld d, l
    ld a, [hl+]
    ld d, b
    rla
    ld l, e
    ld d, l
    ld a, [hl+]

jr_011_4237:
    ld d, b
    rla
    or e
    ld d, l
    ld a, [hl+]
    ld d, b
    rla
    db $e4
    ld d, l
    ld a, [hl+]
    ld d, b
    rla
    dec d
    ld d, [hl]
    ld a, [hl+]
    ld d, b
    rla
    ld b, h
    ld d, [hl]
    ld a, [hl+]
    ld d, b
    rla
    ld a, d
    ld d, [hl]
    ld a, [hl+]
    ld d, b
    ld b, $04
    rlca
    rst $18
    ld b, b
    ld h, e
    ld b, d
    ld e, l
    ld b, d
    nop
    add l
    ld b, d
    call Call_000_2156
    jp Jump_000_3c29


    ld l, l
    ld b, d
    ld l, [hl]
    ld b, d
    ld [hl], e
    ld b, d
    ld a, b
    ld b, d
    ld a, c
    ld b, d
    rst $38
    rla
    xor c
    ld d, [hl]
    ld a, [hl+]
    ld d, b
    rla
    ldh a, [rRP]
    ld a, [hl+]
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

    ld bc, $0910
    ld c, $fe
    ld bc, $0702
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
    dec b
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld [de], a
    inc b
    ld a, [bc]
    inc e
    ld b, e
    rst $00
    ld b, d
    jp $0042


    call c, $cd42
    add hl, hl
    inc a
    ret


    call $d242
    ld b, d
    rst $10
    ld b, d
    rla
    jp hl


    ld e, a
    dec hl
    ld d, b
    rla
    ld b, h
    ld h, b
    dec hl
    ld d, b
    rla
    ret


    ld h, b
    dec hl
    ld d, b
    rrca
    ld b, $07
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    rlca
    db $10
    ld bc, $07ff
    ld de, $ff01
    ld bc, $000c
    ld a, e
    ld bc, $0001
    ld a, a
    ld [bc], a
    inc b
    dec bc
    ld [bc], a
    ld bc, $030e
    ld bc, $072a
    inc c
    rst $38
    ret nc

    ld bc, $c72a
    rlca
    ld [bc], a
    ld a, [hl+]
    rst $00
    rlca
    inc bc
    ld sp, $07c7
    db $10
    ld sp, $07c7
    ld de, $c6ff
    ld bc, $f90c
    add $01
    ld bc, $0d0c
    ld bc, $0118
    add hl, de
    ld [bc], a
    dec h
    rlca
    ld bc, $0b0b
    dec bc
    inc d
    dec bc
    rla
    dec bc
    dec bc
    ld [de], a
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec d
    ld de, $0b26
    dec bc
    dec bc
    add hl, bc
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$160b], sp
    ld c, $0f
    sbc a
    ld b, h
    call Call_011_5043
    ld b, e
    nop
    ld b, l
    ld b, h
    call Call_011_4366
    call Call_000_3c29
    ld hl, $43d5
    ld de, $43c7
    ld a, [$d639]
    call Call_000_30fc
    ld [$d639], a
    ret


Call_011_4366:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d795]
    bit 0, a
    jr nz, jr_011_438d

    ld bc, $060c
    call Call_011_43ac
    ld bc, $0308
    call Call_011_43a5
    ld bc, $080a
    call Call_011_43a5
    ld bc, $0d0d
    jp Jump_011_43a5


jr_011_438d:
    ld bc, $060c
    call Call_011_43a5
    ld bc, $0308
    call Call_011_43ac
    ld bc, $080a
    call Call_011_43ac
    ld bc, $0d0d
    jp Jump_011_43ac


Call_011_43a5:
Jump_011_43a5:
    ld a, $2d
    ld [$d09e], a
    jr jr_011_43b1

Call_011_43ac:
Jump_011_43ac:
    ld a, $0e
    ld [$d09e], a

jr_011_43b1:
    ld a, $17
    call Call_000_3eb4
    ret


    ld a, [$c109]
    cp $04
    ret nz

    xor a
    ldh [$b4], a
    ld a, $04
    ldh [$8c], a
    jp Jump_000_2817


    or l
    ld sp, $31e8
    ld de, $e232
    ld b, e
    rst $28
    inc hl
    rst $28
    inc hl
    ei
    ld b, e
    ld bc, $9730
    rst $10
    db $ec
    ld b, e
    or $43
    pop af
    ld b, e
    pop af
    ld b, e
    rst $38
    ld [$d521], sp
    ld b, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    adc h
    ld d, l
    inc l
    ld d, b
    rla
    cp c
    ld d, l
    inc l
    ld d, b
    rla
    ret nz

    ld d, l
    inc l
    ld d, b
    ld [$3621], sp
    ld b, h
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_011_442d

    ld a, $01
    ld [$cc3c], a
    ld hl, $d125
    set 5, [hl]
    ld hl, $443b
    call Call_000_3c36
    ld a, $ad
    call Call_000_2238
    ld hl, $d795
    bit 0, [hl]
    set 0, [hl]
    jr z, jr_011_4433

    res 0, [hl]
    jr jr_011_4433

jr_011_442d:
    ld hl, $4440
    call Call_000_3c36

jr_011_4433:
    jp Jump_000_23d2


    rla
    xor $55
    inc l
    ld d, b
    rla
    ld a, [bc]
    ld d, [hl]
    inc l
    ld d, b
    rla
    jr jr_011_4499

    inc l
    ld d, b
    ld l, $08
    dec de
    inc b
    nop
    rst $38
    dec de
    dec b
    nop
    rst $38
    dec de
    ld b, $00
    rst $38
    dec de
    rlca
    nop
    rst $38
    ld a, [bc]
    dec b
    nop
    sub $17
    dec d
    nop
    ret c

    dec de
    ld a, [de]
    nop
    rst $38
    dec de
    dec de
    nop
    rst $38
    nop
    inc bc
    jr nz, jr_011_4480

    dec d
    rst $38
    jp nc, $e441

    inc b
    ld b, a
    rlca
    ld [de], a
    rst $38
    rst $38
    add d
    dec e
    ld b, a
    add hl, de
    ld d, $ff
    rst $38
    add e
    ld h, $11

jr_011_4480:
    ret z

    dec de
    inc b
    ld de, $1bc8
    dec b
    ld [de], a
    ret z

    dec de
    ld b, $12
    ret z

    dec de
    rlca
    ld l, c
    rst $00
    ld a, [bc]
    dec b
    rst $28
    rst $00
    rla
    dec d
    inc e
    ret z

jr_011_4499:
    dec de
    ld a, [de]
    inc e
    ret z

    dec de
    dec de
    ld b, b
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
    ld b, c
    ld b, d
    ld e, h
    ld b, $0e
    ld c, $53
    ld c, $11
    ld de, $1111
    ld de, $0e0e
    ld c, $5d
    ld e, h
    ld [hl], a
    ld c, $47
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, b
    ld h, e
    ld c, $5d
    ld b, h
    ld c, $43
    ld c, $46
    ld c, $53
    ld e, b
    ld c, $57
    ld e, b
    ld d, l
    ld c, $0e
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld e, b
    ld b, $07
    ld b, [hl]
    ld c, $0e
    ld c, $06
    jr c, jr_011_452f

    ld c, $5d
    ld b, h
    ld de, $3b3a
    ld a, [bc]
    ld c, $46
    ld c, $43
    ld b, e
    ld sp, $0e38
    ld sp, $445d
    ld de, $3b3f
    ld a, [bc]
    ld d, e
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld e, b
    ld b, $0e
    ld d, a
    ld d, c
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0e
    ld c, $06
    rlca
    ld c, $0e
    ld c, $5d
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0e
    ld c, $48
    ld c, $58
    ld c, $57
    ld d, c
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0b
    dec bc

jr_011_452f:
    dec bc
    ld c, $06
    ld d, d
    rlca
    ld e, l
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, h
    ld c, $46
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0b
    dec bc
    dec bc
    ld c, [hl]
    ld c, $44
    ld c, $46
    ld b, h
    ld de, $3b3f
    ld a, [bc]
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, $0e
    ld b, [hl]
    ld c, b
    ld e, b
    ccf
    dec sp
    ld d, a
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld b, $0e
    ld b, $11
    ld [de], a
    inc d
    ld d, $47
    sub [hl]
    ld b, l
    ld a, l
    ld b, l
    nop
    sub a
    ld b, [hl]
    call Call_000_3c29
    ld hl, $45a6
    ld de, $4590
    ld a, [$d620]
    call Call_000_30fc
    ld [$d620], a
    ret


    or l
    ld sp, $31e8
    ld de, $fb32
    ld b, l
    ld bc, $0746
    ld b, [hl]
    dec c
    ld b, [hl]

jr_011_459e:
    inc de
    ld b, [hl]
    add hl, de
    ld b, [hl]
    rra
    ld b, [hl]
    sub d
    ld b, [hl]
    ld bc, $d140
    rst $10
    add hl, hl
    ld b, [hl]
    inc sp
    ld b, [hl]
    ld l, $46
    ld l, $46
    ld [bc], a
    ld b, b
    pop de
    rst $10
    jr c, jr_011_45fe

    ld b, d
    ld b, [hl]
    dec a
    ld b, [hl]
    dec a
    ld b, [hl]
    inc bc
    jr nc, @-$2d

    rst $10
    ld b, a
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld c, h
    ld b, [hl]
    ld c, h
    ld b, [hl]
    inc b
    jr nc, jr_011_459e

    rst $10
    ld d, [hl]
    ld b, [hl]
    ld h, b
    ld b, [hl]
    ld e, e
    ld b, [hl]
    ld e, e
    ld b, [hl]
    dec b
    ld b, b
    pop de
    rst $10
    ld h, l
    ld b, [hl]
    ld l, a
    ld b, [hl]
    ld l, d
    ld b, [hl]
    ld l, d
    ld b, [hl]
    ld b, $40
    pop de
    rst $10
    ld [hl], h
    ld b, [hl]
    ld a, [hl]
    ld b, [hl]
    ld a, c
    ld b, [hl]
    ld a, c
    ld b, [hl]
    rlca
    ld b, b
    pop de
    rst $10
    add e
    ld b, [hl]
    adc l
    ld b, [hl]
    adc b
    ld b, [hl]
    adc b
    ld b, [hl]
    rst $38
    ld [$a621], sp

jr_011_45fe:
    ld b, l
    jr jr_011_4623

    ld [$b221], sp
    ld b, l
    jr jr_011_4623

    ld [$be21], sp
    ld b, l
    jr jr_011_4623

    ld [$ca21], sp
    ld b, l
    jr jr_011_4623

    ld [$d621], sp
    ld b, l
    jr jr_011_4623

    ld [$e221], sp
    ld b, l
    jr jr_011_4623

    ld [$ee21], sp
    ld b, l

jr_011_4623:
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ccf
    ld d, [hl]
    jr z, jr_011_467e

    rla
    ld h, d
    ld d, [hl]
    jr z, jr_011_4683

    rla
    ld [hl], c
    ld d, [hl]
    jr z, jr_011_4688

    rla
    and c
    ld d, [hl]
    jr z, jr_011_468d

    rla
    ret nz

    ld d, [hl]
    jr z, jr_011_4692

    rla
    db $ed
    ld d, [hl]
    jr z, jr_011_4697

    rla
    inc l
    ld d, a
    jr z, @+$52

    rla
    ld e, [hl]
    ld d, a
    jr z, @+$52

    rla
    ld h, a
    ld d, a
    jr z, jr_011_46a6

    rla
    add a
    ld d, a
    jr z, jr_011_46ab

    rla
    sbc a
    ld d, a
    jr z, @+$52

    rla
    xor e
    ld d, a
    jr z, jr_011_46b5

    rla
    adc $57
    jr z, jr_011_46ba

    rla
    ld sp, hl
    ld d, a
    jr z, jr_011_46bf

    rla
    dec bc
    ld e, b
    jr z, jr_011_46c4

    rla
    dec hl
    ld e, b
    jr z, jr_011_46c9

    rla
    ld b, [hl]
    ld e, b
    jr z, jr_011_46ce

jr_011_467e:
    rla
    ld d, a
    ld e, b
    jr z, @+$52

jr_011_4683:
    rla
    db $76
    ld e, b
    jr z, jr_011_46d8

jr_011_4688:
    rla
    sub d
    ld e, b
    jr z, jr_011_46dd

jr_011_468d:
    rla
    and d
    ld e, b
    jr z, jr_011_46e2

jr_011_4692:
    rla
    cp h
    ld e, b
    jr z, @+$52

jr_011_4697:
    inc bc
    ld [$0f03], sp
    ld bc, $00ff
    rrca
    ld bc, $21ff
    rrca
    ld [bc], a
    rst $38
    inc hl

jr_011_46a6:
    rrca
    ld [bc], a
    rst $38
    inc bc
    dec h

jr_011_46ab:
    nop
    add sp, $03
    dec b
    ld bc, $0be8
    ld de, $e802

jr_011_46b5:
    ld de, $0325
    add sp, $01

jr_011_46ba:
    dec e
    dec bc
    ld [$0e07], sp

jr_011_46bf:
    add hl, bc
    dec bc
    rst $38
    ret nc

    ld b, c

jr_011_46c4:
    pop de
    inc c
    ld c, $14
    add hl, bc

jr_011_46c9:
    rst $38
    ret nc

    ld b, d
    pop de
    dec c

jr_011_46ce:
    ld c, $13
    dec d
    rst $38
    jp nc, $d143

    ld c, $0c
    inc c

jr_011_46d8:
    dec de
    rst $38
    jp nc, $cf44

jr_011_46dd:
    rlca
    ld b, $19
    add hl, hl
    rst $38

jr_011_46e2:
    jp nc, $ce45

    ld de, $1c06
    ld a, [de]
    rst $38
    ret nc

    ld b, [hl]
    adc $12
    ld b, $1c
    inc h
    rst $38
    db $d3
    ld b, a
    adc $13
    inc h
    rst $00
    inc bc
    rrca
    ld a, [bc]
    rst $00
    nop
    rrca
    xor d
    ret z

    ld hl, $c40f
    ret z

    inc hl
    rrca
    cpl
    rst $00
    inc bc
    dec h
    rra
    rst $00
    inc bc
    dec b
    adc l
    rst $00
    dec bc
    ld de, $c7e5
    ld de, $1425
    ld d, $20
    ld [hl+], a
    inc d
    add hl, de
    ld d, $20
    ld [hl+], a
    inc d
    add hl, de
    add hl, de
    add hl, de
    ld d, $14
    add hl, de
    ld d, $02
    ld [bc], a
    ld [bc], a
    jr jr_011_4746

    jr z, @+$03

    jr jr_011_4749

    ld a, [de]
    ld a, $01
    inc e
    dec e
    dec e
    dec e
    ld e, $1c
    dec e
    ld e, $01
    jr z, @+$04

    inc e
    ld e, $01
    ld bc, $1d1c
    ld e, $01

jr_011_4746:
    ld bc, $0101

jr_011_4749:
    ld bc, $0101
    ld bc, $0201
    ld bc, $1701
    rla
    ld bc, $0101
    ld bc, $1701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $1f01
    rra
    ld bc, $0101
    ld bc, $1f01
    jr nz, @+$24

    ld [bc], a
    ld bc, $0201
    jr nz, @+$24

    jr nz, @+$24

    ld bc, $1701
    rla
    ld bc, $1701
    ld bc, $1701
    ld bc, $1728
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rra
    rra
    ld bc, $1f01
    ld bc, $1f01
    ld bc, $1f01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rla
    rla
    ld bc, $1701
    ld bc, $0101
    ld bc, $0201
    jr nz, @+$24

    jr nz, @+$24

    jr nz, jr_011_47d4

    jr nz, @+$24

    ld [bc], a
    rra
    rra
    ld bc, $1f01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0117
    ld bc, $1701
    ld bc, $2801
    rla
    rla
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_011_47d4:
    ld bc, $011f
    ld bc, $1f01
    ld bc, $0101
    rra
    rra
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0117
    ld bc, $1701
    ld bc, $0101
    rla
    rla
    jr nz, @+$24

    jr nz, jr_011_4819

    jr nz, jr_011_481b

    jr nz, @+$24

    jr nz, @+$24

    rra
    ld bc, $0101
    rra
    ld bc, $0101
    rra
    rra
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1701
    ld bc, $0101

jr_011_4819:
    rla
    ld [bc], a

jr_011_481b:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1f01
    ld bc, $0101
    rra
    inc d
    dec d
    dec d
    dec d
    ld d, $2a
    ld bc, $0101
    ld bc, $1514
    ld d, $01
    ld bc, $0101
    ld bc, $1701
    jr @+$1b

    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $1801
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    rra
    jr jr_011_4871

    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $3e01
    ld bc, $1801
    add hl, de
    ld a, [de]
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $1c
    dec e
    dec e
    dec e
    ld e, $4e
    ld d, c

jr_011_4871:
    ld d, d
    ld c, l
    ld c, [hl]
    inc e
    dec e
    ld e, $1c
    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $11
    add hl, bc
    rrca
    jr c, jr_011_48cc

    db $ec
    ld c, b
    adc d
    ld c, b
    nop
    ldh a, [rOBP0]
    call Call_000_3c29
    ld hl, $d7e6
    set 0, [hl]
    ld hl, $cd60
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_011_48dc

    ld hl, $48e7
    call Call_000_34e1
    ret nc

    ld hl, $d7e7
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_48ba

    set 6, [hl]
    ld a, $df
    ld [$d078], a
    ld a, $e1
    ld [$d079], a
    jr jr_011_48c6

jr_011_48ba:
    set 7, [hl]
    ld a, $e0
    ld [$d078], a
    ld a, $e2
    ld [$d079], a

jr_011_48c6:
    ld a, [$d078]
    ld [$cc4d], a

jr_011_48cc:
    ld a, $11
    call Call_000_3eb4
    ld a, [$d079]
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3eb4


jr_011_48dc:
    ld a, $9f
    ld [$d71c], a
    ld hl, $48e7
    jp $6bf3


    ld b, $11
    ld b, $18
    rst $38
    ldh [rNR44], a
    ldh [rNR44], a
    ld a, l
    rlca
    ld de, $0004
    rst $38
    ld de, $0005
    rst $38
    ld de, $011a
    rst $38
    ld de, $011b
    rst $38
    dec b
    rlca
    ld bc, $039f
    add hl, de
    ld b, $9f
    rrca
    rla
    inc b
    sbc a
    nop
    ld [bc], a
    ld c, c
    ld c, $16
    rst $38
    db $10
    ld bc, $0b49
    ld e, $ff
    db $10
    ld [bc], a
    xor b
    rst $00
    ld de, $a804
    rst $00
    ld de, $b305
    rst $00
    ld de, $b31a
    rst $00
    ld de, $2b1b
    rst $00
    dec b
    rlca
    rra
    rst $00
    inc bc
    add hl, de
    sbc h
    rst $00
    rrca
    rla
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $28
    ld bc, $2e2e
    jr jr_011_4972

    inc a
    add hl, de
    inc l
    dec e
    dec e
    dec e
    dec e
    dec l
    ld e, $01
    ld bc, $2e2e
    jr @+$1b

    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $7801
    ld bc, $016d
    ld [hl], a

jr_011_4972:
    ld bc, $2e2e
    jr jr_011_4990

    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $016d
    ld bc, $2e01
    ld l, $1c
    dec e
    add hl, hl
    dec e
    ld e, $01
    ld bc, $0101
    ld c, h
    ld e, [hl]
    ld e, [hl]

jr_011_4990:
    ld e, [hl]
    ld l, $2e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld l, l
    ld bc, $0101
    ld l, $2e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld l, l
    jr z, @+$03

    ld bc, $2e2e
    ld l, $24
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    inc h
    ld l, $0d
    inc bc
    ld a, [bc]
    rst $28
    ld c, c
    adc $49
    bit 1, c
    nop
    push de
    ld c, c
    jp Jump_000_3c29


    ret nc

    ld c, c
    rla
    ld c, d
    ld d, b
    ld h, $50
    inc c
    ld [bc], a
    inc bc
    nop
    nop
    ld h, e
    inc bc
    inc de
    rlca
    ld h, b
    nop
    ld bc, $0713
    dec c
    cp $02
    ld bc, $c709
    inc bc
    nop
    ld [de], a
    rst $00
    inc bc
    inc de
    ld [de], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld de, $041d
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc e
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
    ld de, $0f09
    rst $10
    ld c, e
    call nz, Call_000_194a
    ld c, d
    nop
    ld l, l
    ld c, e
    call Call_011_4a2f
    call Call_000_3c29
    ld hl, $4ad8
    ld de, $4a4a
    ld a, [$d63f]
    call Call_000_30fc
    ld [$d63f], a
    ret


Call_011_4a2f:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $d812
    bit 0, [hl]
    ret z

    ld a, $1d
    ld [$d09e], a
    ld bc, $0503
    ld a, $17
    jp Jump_000_3eb4


    ld d, b
    ld c, d
    add sp, $31
    ld de, $2132
    ld h, b
    call Call_011_7ecb
    res 7, [hl]
    jp z, Jump_011_4a9e

    ld hl, $4a99
    call Call_000_34e1
    jp nc, Jump_011_4a9e

    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_4a7c

    ldh a, [$8c]
    cp $0f
    jp z, Jump_011_4a9e

    ld hl, $d125
    set 5, [hl]
    ld hl, $d812
    set 0, [hl]
    ret


jr_011_4a7c:
    ld hl, $d812
    bit 6, [hl]
    set 6, [hl]
    jr nz, jr_011_4a9e

    ld a, $7c
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $60
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3eb4


    dec b
    inc bc
    rrca
    rla
    rst $38

Jump_011_4a9e:
jr_011_4a9e:
    ld a, $c2
    ld [$d71c], a
    ld hl, $4a99
    call $6bf3
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_4abb

    ld hl, $d72c
    res 4, [hl]
    ld hl, $d731
    res 4, [hl]
    ret


jr_011_4abb:
    ld a, [$d72c]
    bit 4, a
    jp z, Jump_000_31b5

    ret


    add hl, bc
    ld c, e
    inc de
    ld c, e
    dec e
    ld c, e
    daa
    ld c, e
    rst $28
    inc hl
    rst $28
    inc hl
    ldh [rNR44], a
    ldh [rNR44], a
    ldh [rNR44], a
    ldh [rNR44], a
    ld bc, $1210
    ret c

    ld sp, $3b4b
    ld c, e
    ld [hl], $4b
    ld [hl], $4b
    ld [bc], a
    ld b, b
    ld [de], a
    ret c

    ld b, b
    ld c, e
    ld c, d
    ld c, e
    ld b, l
    ld c, e
    ld b, l
    ld c, e
    inc bc
    ld b, b
    ld [de], a
    ret c

    ld c, a
    ld c, e
    ld e, c
    ld c, e
    ld d, h
    ld c, e
    ld d, h
    ld c, e
    inc b
    ld b, b
    ld [de], a
    ret c

    ld e, [hl]
    ld c, e
    ld l, b
    ld c, e
    ld h, e
    ld c, e
    ld h, e
    ld c, e
    rst $38
    ld [$d821], sp
    ld c, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$e421], sp
    ld c, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$f021], sp
    ld c, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$fc21], sp
    ld c, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sbc d
    ld e, [hl]
    ld h, $50
    rla
    cp [hl]
    ld e, [hl]
    ld h, $50
    rla
    push de
    ld e, [hl]
    ld h, $50
    rla
    ld hl, sp+$5e
    ld h, $50
    rla
    dec e
    ld e, a
    ld h, $50
    rla
    ld a, [hl+]
    ld e, a
    ld h, $50
    rla
    ld c, [hl]
    ld e, a
    ld h, $50
    rla
    ld l, [hl]
    ld e, a
    ld h, $50
    rla
    add d
    ld e, a
    ld h, $50
    rla
    ret nz

    ld e, a
    ld h, $50
    rla
    db $eb
    ld e, a
    ld h, $50
    rla
    ei
    ld e, a
    ld h, $50
    ld a, l
    inc b
    rlca
    rla
    inc bc
    jp nz, $1a08

    dec b
    jp nz, Jump_000_1b0f

    inc b
    jp nz, Jump_000_0200

    ld b, $c2
    nop
    ld a, [bc]
    rlca
    add hl, bc
    jr nz, @+$01

    jp nc, $e741

    ld [bc], a
    ld b, $11
    dec bc
    rst $38
    db $d3
    ld b, d
    add sp, $02
    rlca
    ld [de], a
    ld a, [bc]
    rst $38
    jp nc, $e743

    inc bc
    ld b, $07
    ld de, $d3ff
    ld b, h
    add sp, $03
    ld b, a
    add hl, bc
    ld e, $ff
    rst $38
    add l
    ld [hl], $47
    dec bc
    dec bc
    rst $38
    rst $38
    add [hl]
    rst $30
    ld c, c
    rlca
    ld a, [de]
    rst $38
    db $10
    rlca
    ld c, c
    db $10
    ld de, $10ff
    ld [$0e49], sp
    inc e
    rst $38
    db $10
    add hl, bc
    ld c, c
    inc de
    ld a, [de]
    rst $38
    db $10
    ld a, [bc]
    ld c, b
    rst $00
    rlca
    rla
    ld e, a
    rst $00
    ld [$9e1a], sp
    rst $00
    rrca
    dec de
    rst $38
    add $00
    ld [bc], a
    ld c, l
    inc hl
    ld [hl], h
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
    ld h, b
    rlca
    ld [$0d0d], sp
    ld h, b
    inc d
    dec d
    dec d
    dec d
    dec d
    ld d, $60
    ld h, b
    ld h, b
    inc c
    rlca
    ld b, $6c
    dec bc
    ld h, b
    jr jr_011_4c27

    dec e
    dec e
    dec l
    ld e, $60
    ld h, b
    ld [bc], a
    ld c, $07
    ld l, d
    ld l, e
    ld l, e
    ld l, a
    jr jr_011_4c24

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr z, jr_011_4c19

    dec b
    add hl, bc
    ld h, [hl]
    dec e
    dec hl
    ld [hl], b
    jr jr_011_4c33

jr_011_4c19:
    ld h, b
    ld h, b
    rrca
    ld [$040d], sp
    ld b, $27
    rlca
    ld b, $60

jr_011_4c24:
    inc e
    dec h
    dec e

jr_011_4c27:
    ld e, $60
    ld h, b
    ld h, b
    ld h, b
    rlca
    ld h, b
    ld de, $070e
    ld b, $60

jr_011_4c33:
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, $05
    dec b
    dec b
    dec b
    ld h, b
    ld b, $60
    rlca
    ld b, $60
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld [bc], a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld l, c
    ld b, $28
    rlca
    ld [bc], a
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
    ld a, [bc]
    inc b
    ld [bc], a
    ld d, $0e
    rrca
    jp hl


    ld c, l
    or h
    ld c, h
    ld l, d
    ld c, h
    nop
    add a
    ld c, l
    call Call_011_4c80
    call Call_000_3c29
    ld hl, $4cc2
    ld de, $4cae
    ld a, [$d630]
    call Call_000_30fc
    ld [$d630], a
    ret


Call_011_4c80:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d814]
    bit 7, a
    jr nz, jr_011_4ca1

    bit 5, a
    jr nz, jr_011_4c97

    ld a, $54
    jr jr_011_4ca3

jr_011_4c97:
    ld a, $ad
    call Call_000_2238
    ld hl, $d814
    bit 7, [hl]

jr_011_4ca1:
    ld a, $0e

jr_011_4ca3:
    ld [$d09e], a
    ld bc, $080c
    ld a, $17
    jp Jump_000_3eb4


    or l
    ld sp, $31e8
    ld de, $ff32
    ld c, h
    add hl, bc
    ld c, l
    inc de
    ld c, l
    dec e
    ld c, l
    daa
    ld c, l
    rst $28
    inc hl
    rst $28
    inc hl
    ld bc, $1430
    ret c

    ld b, c
    ld c, l
    ld c, e
    ld c, l
    ld b, [hl]
    ld c, l
    ld b, [hl]
    ld c, l
    ld [bc], a
    jr nz, jr_011_4ce5

    ret c

    ld d, b
    ld c, l
    ld e, d
    ld c, l
    ld d, l
    ld c, l
    ld d, l
    ld c, l
    inc bc
    jr nz, jr_011_4cf1

    ret c

    ld e, a
    ld c, l
    ld l, c
    ld c, l
    ld h, h
    ld c, l
    ld h, h

jr_011_4ce5:
    ld c, l
    inc b
    jr nc, jr_011_4cfd

    ret c

    ld l, [hl]
    ld c, l
    ld a, b
    ld c, l
    ld [hl], e
    ld c, l
    ld [hl], e

jr_011_4cf1:
    ld c, l
    dec b
    jr nc, jr_011_4d09

    ret c

    ld a, l
    ld c, l
    add d
    ld c, l
    ld sp, $314d

jr_011_4cfd:
    ld c, l
    rst $38
    ld [$c221], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


jr_011_4d09:
    ld [$ce21], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$da21], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$e621], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    ld [$f221], sp
    ld c, h
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add hl, hl
    ld h, b
    ld h, $08
    ld hl, $d814
    set 5, [hl]
    ld hl, $4d3f
    ret


    ld b, $50
    rla
    inc sp
    ld h, b
    ld h, $50
    rla
    ld d, a
    ld h, b
    ld h, $50
    rla
    ld h, l
    ld h, b
    ld h, $50
    rla
    add e
    ld h, b
    ld h, $50
    rla
    and d
    ld h, b
    ld h, $50
    rla
    xor d
    ld h, b
    ld h, $50
    rla
    ret c

    ld h, b
    ld h, $50
    rla
    jp hl


    ld h, b
    ld h, $50
    rla
    ld hl, sp+$60
    ld h, $50
    rla
    rra
    ld h, c
    ld h, $50
    rla
    scf
    ld h, c
    ld h, $50
    rla
    ld b, [hl]
    ld h, c
    ld h, $50
    rla
    ld [hl], a
    ld h, c
    ld h, $50
    rla
    sub [hl]
    ld h, c
    ld h, $50
    ld l, $05
    ld [bc], a
    rla
    nop
    ret z

    ld [bc], a
    dec d
    ld [bc], a
    add a
    inc de
    jr jr_011_4d94

jr_011_4d94:
    rr b
    dec d
    inc bc
    ret z

    inc de
    add hl, de
    ld bc, $00cb
    rlca
    jr jr_011_4dad

    ld e, $ff
    jp nc, $e641

    ld [$0a18], sp
    db $10
    rst $38
    db $d3
    ld b, d

jr_011_4dad:
    and $09
    jr jr_011_4dc6

    ld d, $ff
    ret nc

    ld b, e
    and $0a
    jr @+$1f

    inc de
    rst $38
    db $d3
    ld b, h
    and $0b
    jr jr_011_4dd7

    jr nz, @+$01

    jp nc, $e645

jr_011_4dc6:
    inc c
    ld b, a
    ld [de], a
    rrca
    rst $38
    rst $38
    add [hl]
    dec e
    ld b, a
    dec d
    dec c
    rst $38
    rst $38
    add a
    ld [de], a
    ld e, $c7

jr_011_4dd7:
    ld [bc], a
    rla
    dec e
    rst $00
    ld [bc], a
    dec d
    rst $00
    rst $00
    inc de
    jr jr_011_4de6

    ret z

    jr jr_011_4dfa

    rst $00

jr_011_4de6:
    rst $00
    inc de
    add hl, de
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $40
    ld b, c
    ld b, c
    ld b, d
    ld l, $2e
    ld l, $2e

jr_011_4dfa:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $44
    ld l, [hl]
    ld l, a
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld h, e
    ld c, $0e
    ld h, a
    ld b, c
    ld b, d
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, b
    ld a, [hl+]
    dec hl
    ld b, d
    dec c
    ld c, $09
    ld b, b
    ld a, [hl+]
    dec hl
    ld b, d
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    ld b, [hl]
    dec c
    ld c, $09
    ld b, h
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a
    ld b, a
    ld b, [hl]
    dec c
    ld c, $09
    ld b, h
    ld b, a
    ld b, a
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld [de], a
    ld c, $0e
    ld b, [hl]
    dec c
    ld c, $09
    ld [de], a
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld c, $67
    ld b, d
    ld l, $2e
    ld l, $2e
    ld [de], a
    ld c, $34
    inc [hl]
    inc [hl]
    ld c, $0e
    ld b, [hl]
    inc l
    ld d, a
    ld c, d
    ld l, $2e
    ld l, $2e
    ld [de], a
    ld c, $36
    ld [hl], $36
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $12
    ld c, $36
    ld [hl], $36
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $12
    ld c, $37
    scf
    scf
    ld c, $6f
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $48
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld l, $2e
    ld l, $16
    ld c, $0f
    rst $20
    ld d, c
    ld h, a
    ld d, c
    rst $00
    ld c, [hl]
    nop
    sub a
    ld d, c
    call Call_000_3c29
    ld hl, $5171
    ld de, $4eda
    ld a, [$d631]
    call Call_000_30fc
    ld [$d631], a
    ret


    ld [c], a
    ld c, [hl]
    add sp, $31
    ld de, $6232
    ld d, b
    ld a, [$d360]
    ld b, a
    ld a, [$d361]
    ld c, a
    ld hl, $4f0d
    call Call_000_33d1
    cp $ff
    jp z, Jump_000_31b5

    ld hl, $d735
    set 7, [hl]
    call Call_000_3415
    ld a, $a7
    call Call_000_2238
    ld a, $ff
    ld [$cd6b], a
    ld a, $03
    ld [$da38], a
    ret


    add hl, bc
    inc b
    cp d
    ld c, a
    dec bc
    inc b
    cp l
    ld c, a
    rrca
    inc b
    ret nz

    ld c, a
    db $10
    inc b
    push bc
    ld c, a
    inc de
    inc b
    cp d
    ld c, a
    ld d, $04
    call z, Call_000_0e4f
    dec b
    pop de
    ld c, a
    ld d, $06
    sub $4f
    jr jr_011_4f35

    reti


    ld c, a
    add hl, bc
    ld [$4fdc], sp

jr_011_4f35:
    inc c
    ld [$4fdf], sp
    rrca
    ld [$4fd9], sp
    inc de
    ld [$4fdc], sp
    rla
    ld [$4fe2], sp
    ld c, $09
    rst $20
    ld c, a
    ld d, $09
    rst $20
    ld c, a
    add hl, bc
    ld a, [bc]
    ld [$0a4f], a
    ld a, [bc]
    db $ed
    ld c, a
    rrca
    ld a, [bc]
    ld a, [c]
    ld c, a
    ld de, $f70a
    ld c, a
    inc de
    ld a, [bc]
    db $fc
    ld c, a
    add hl, de
    ld a, [bc]
    cp l
    ld c, a
    ld c, $0b
    inc bc
    ld d, b
    db $10
    dec bc
    ld a, [bc]
    ld d, b
    ld [de], a
    dec bc
    rst $20
    ld c, a
    add hl, bc
    inc c
    rrca
    ld d, b
    dec bc
    inc c
    ld [de], a
    ld d, b
    dec c
    inc c
    rla
    ld d, b
    ld de, $1c0c
    ld d, b
    ld a, [bc]
    dec c
    ld hl, $0c50
    dec c
    ld h, $50
    db $10
    dec c
    add hl, hl
    ld d, b
    ld [de], a
    dec c
    ld l, $50
    inc de
    dec c
    inc sp
    ld d, b
    ld d, $0d
    inc a
    ld d, b
    rla
    dec c
    ld b, c
    ld d, b
    ld de, $480e
    ld d, b
    db $10
    rrca
    rst $20
    ld c, a
    ld c, $10
    ld c, e
    ld d, b
    db $10
    db $10
    ld c, [hl]
    ld d, b
    ld [de], a
    db $10
    ld d, c
    ld d, b
    ld a, [bc]
    ld de, $5054
    dec bc
    ld de, $505b
    rst $38
    jr nz, jr_011_4fbe

    rst $38
    db $10

jr_011_4fbe:
    inc b
    rst $38
    ld b, b
    inc b
    db $10
    inc b
    rst $38
    ld b, b
    inc b
    db $10
    inc b
    ld b, b
    ld bc, $20ff
    ld [bc], a
    ld b, b
    inc bc
    rst $38
    add b
    ld [bc], a
    db $10
    inc b
    rst $38
    ld b, b
    ld [bc], a
    rst $38
    ld b, b
    inc b
    rst $38
    jr nz, @+$08

    rst $38
    ld b, b
    ld bc, $20ff
    ld b, $40
    inc b
    rst $38
    add b
    ld [bc], a
    rst $38
    jr nz, @+$0a

    rst $38
    jr nz, jr_011_4ff7

    ld b, b
    ld bc, $20ff
    ld [$0640], sp
    rst $38

jr_011_4ff7:
    ld b, b
    ld [bc], a
    db $10
    inc b
    rst $38
    ld b, b
    ld [bc], a
    db $10
    inc b
    ld b, b
    ld [bc], a
    rst $38
    add b
    ld [bc], a
    db $10
    inc b
    add b
    ld [bc], a
    rst $38
    add b
    ld [bc], a
    db $10
    inc b
    rst $38
    jr nz, jr_011_501b

    rst $38
    jr nz, jr_011_501e

    ld b, b
    ld [bc], a
    rst $38
    jr nz, @+$0c

    ld b, b
    inc b

jr_011_501b:
    rst $38
    ld b, b
    ld [bc], a

jr_011_501e:
    db $10
    ld [bc], a
    rst $38
    db $10
    ld bc, $0280
    rst $38
    db $10
    ld bc, $80ff
    ld [bc], a
    db $10
    ld [bc], a
    rst $38
    add b
    ld [bc], a
    jr nz, jr_011_5034

    rst $38
    ld b, b

jr_011_5034:
    ld [bc], a
    db $10
    inc b
    ld b, b
    ld [bc], a
    jr nz, jr_011_503e

    rst $38
    add b
    ld [bc], a

jr_011_503e:
    jr nz, jr_011_5044

    rst $38
    jr nz, jr_011_5049

Call_011_5043:
    ld b, b

jr_011_5044:
    inc b
    jr nz, jr_011_504c

    rst $38
    ld b, b

jr_011_5049:
    ld [bc], a
    rst $38
    ld b, b

jr_011_504c:
    ld bc, $40ff
    inc bc
    rst $38
    ld b, b
    dec b
    rst $38
    db $10
    ld bc, $0280
    jr nz, jr_011_505e

    rst $38
    jr nz, @+$0c

    ld b, b

jr_011_505e:
    ld [bc], a
    jr nz, jr_011_5066

    rst $38
    ld a, [$cd38]
    and a

jr_011_5066:
    jr nz, jr_011_5077

    xor a
    ld [$cd6b], a
    ld hl, $d735
    res 7, [hl]
    ld a, $00
    ld [$da38], a
    ret


Jump_011_5077:
jr_011_5077:
    ld a, [$c102]
    srl a
    srl a
    ld hl, $5123
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$c102], a
    ld a, [$d366]
    cp $16
    ld hl, $50c3
    jr z, jr_011_5096

    ld hl, $50f3

jr_011_5096:
    ld a, [$cd38]
    bit 0, a
    jr nz, jr_011_50a1

    ld de, $0018
    add hl, de

jr_011_50a1:
    ld a, $04
    ld bc, $0000

jr_011_50a6:
    push af
    push hl
    push bc
    add hl, bc
    ld a, [hl+]
    ld e, a

jr_011_50ac:
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_15fe
    pop bc
    ld a, $06
    add c
    ld c, a
    pop hl
    pop af
    dec a
    jr nz, jr_011_50a6

    ret


    daa
    ld d, c
    ld bc, $0011
    sub d
    scf
    ld d, c
    ld bc, $1011
    sub d
    ld b, a
    ld d, c
    ld bc, $0011
    sub e
    ld d, a
    ld d, c
    ld bc, $1011
    sub e
    ldh a, [$73]
    ld bc, $001a
    sub d
    nop
    ld [hl], h
    ld bc, $101a
    sub d
    ldh a, [$74]
    ld bc, $001a
    sub e
    nop
    ld [hl], l
    ld bc, $101a
    sub e
    scf
    ld d, c
    ld bc, $c011
    sub e
    ld d, a
    ld d, c
    ld bc, $d011
    sub e
    daa
    ld d, c
    ld bc, $c011
    sub h
    ld b, a
    ld d, c
    ld bc, $d011
    sub h
    nop
    ld b, h
    ld bc, $c01a
    sub e
    db $10
    ld b, h
    ld bc, $d01a
    sub e
    nop
    ld b, l
    ld bc, $c01a
    sub h
    db $10
    ld b, l
    ld bc, $d01a
    sub h
    ld [$040c], sp
    nop
    add b
    ld [hl], b
    add b
    jr c, jr_011_50ac

    inc e
    add b
    ld c, $80
    rlca
    add b
    inc bc
    add b
    ld bc, $00ff
    rst $38
    nop
    add b
    ld bc, $0380
    add b
    rlca
    add b
    ld c, $80
    inc e
    add b
    jr c, @-$7e

    ld [hl], b
    ld bc, $010e
    inc e
    ld bc, $0138
    ld [hl], b
    ld bc, $01e0
    ret nz

    ld bc, $ff80
    nop
    rst $38
    nop
    ld bc, $0180
    ret nz

    ld bc, $01e0
    ld [hl], b
    ld bc, $0138
    inc e
    ld bc, $7e0e
    ld d, c
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld bc, $1640
    ret c

    adc b
    ld d, c
    sub d
    ld d, c
    adc l
    ld d, c
    adc l
    ld d, c
    rst $38
    ld [$7121], sp
    ld d, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    cp d
    ld h, c
    ld h, $50
    rla
    xor $61
    ld h, $50
    rla
    db $fc
    ld h, c
    ld h, $50
    ld l, $05
    ld [$001b], sp
    rst $00
    ld [$0015], sp
    ret


    inc de
    jr jr_011_51a4

jr_011_51a4:
    rl [hl]
    dec d
    inc bc
    rst $00
    inc de
    add hl, de
    ld bc, $00cb
    dec b
    jr jr_011_51c1

    jr @+$01

    ret nc

    ld b, c
    and $0d
    ld b, a
    rrca
    dec b
    rst $38
    rst $38
    add d
    ld a, [bc]
    ld b, a
    inc c
    inc d

jr_011_51c1:
    rst $38
    rst $38
    add e
    ld sp, $1047
    ld a, [bc]
    rst $38
    rst $38
    add h
    rst $08
    ld b, a
    add hl, de
    rlca

jr_011_51cf:
    rst $38
    rst $38
    add l
    inc de
    ld e, a
    rst $00
    ld [$5c1b], sp
    rst $00
    ld [$c715], sp
    rst $00
    inc de
    jr jr_011_51cf

    rst $00
    ld d, $15
    rst $00
    rst $00
    inc de
    add hl, de
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $40
    ld b, c
    ld b, c
    ld a, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, c
    ld b, d
    ld b, c
    ld b, c
    ld b, d
    ld b, h
    inc de
    dec de
    ld a, [bc]
    dec de
    dec de
    dec de
    inc e
    ld e, $55
    ld l, a
    ld b, [hl]
    dec c
    ld l, [hl]
    ld b, [hl]
    ld a, c
    add hl, sp
    ld h, $19
    inc de
    rla
    ld [bc], a
    ld c, $0f
    ld c, $0e
    ld b, [hl]
    dec c
    ld c, $46
    ld b, h
    ld a, [bc]
    ld a, [de]
    ld e, $17
    jr nz, jr_011_526f

    dec d
    inc de
    ld c, $0e
    ld d, [hl]
    dec c
    ld c, $46
    ld a, c
    add hl, de
    inc bc
    ld c, $02
    ld [bc], a
    dec [hl]
    inc de
    rla
    ld e, c
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    add hl, de
    rla
    dec [hl]
    add hl, hl
    inc bc
    inc bc
    ld [bc], a
    rla
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld b, h

jr_011_526f:
    inc de
    dec de
    ld c, $1b
    ld [bc], a
    rrca
    add hl, hl
    rla
    ld d, l
    ld c, $53
    inc l
    ld d, a
    ld c, d
    ld b, h
    jr jr_011_5291

    dec d
    jr nz, jr_011_52ac

    dec e
    jr nz, @+$10

    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $44
    jr nz, @+$19

    rla
    ld [bc], a

jr_011_5291:
    ld c, $0f
    jr nz, jr_011_52a3

    ld e, c
    ld l, [hl]
    ld b, [hl]
    ld l, $2e
    ld l, $44
    ld de, $1711
    add hl, hl
    ld h, $19
    inc de

jr_011_52a3:
    jr nz, @+$46

    ld c, $46
    ld l, $2e
    ld l, $48
    ld c, c

jr_011_52ac:
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ld c, b
    ld c, c
    ld c, d
    ld l, $2e
    ld l, $16
    ld c, $0f
    rra
    ld d, h
    sbc d
    ld d, e
    push bc
    ld d, d
    nop
    db $ed
    ld d, e
    call Call_000_3c29
    ld hl, $53a2
    ld de, $52d8
    ld a, [$d632]
    call Call_000_30fc
    ld [$d632], a
    ret


    ldh [rHDMA2], a
    add sp, $31
    ld de, $8432
    ld d, e
    ld a, [$d360]
    ld b, a
    ld a, [$d361]
    ld c, a
    ld hl, $530b
    call Call_000_33d1
    cp $ff
    jp z, Jump_000_31b5

    ld hl, $d735
    set 7, [hl]
    call Call_000_3415
    ld a, $a7
    call Call_000_2238
    ld a, $ff
    ld [$cd6b], a
    ld a, $03
    ld [$da38], a
    ret


    dec c
    ld a, [bc]
    ld l, e
    ld d, e
    inc de
    ld a, [bc]
    ld c, h
    ld d, e
    ld [de], a
    dec bc
    ld d, e
    ld d, e
    dec bc
    inc c
    ld e, b
    ld d, e
    ld de, $5b0c
    ld d, e
    inc d
    inc c
    ld h, d
    ld d, e
    db $10
    dec c
    ld l, e
    ld d, e
    dec bc
    ld c, $6e
    ld d, e
    rrca
    ld c, $6b
    ld d, e
    ld de, $710e
    ld d, e
    inc de
    ld c, $76
    ld d, e
    db $10
    rrca
    ld l, [hl]
    ld d, e
    ld [de], a
    rrca
    ld a, e
    ld d, e
    dec c
    db $10
    ld a, [hl]
    ld d, e
    inc c
    ld de, $537b
    db $10
    ld [de], a
    add c
    ld d, e
    rst $38
    db $10
    inc b
    ld b, b
    inc b
    db $10
    inc b
    rst $38
    add b

jr_011_5354:
    inc b
    db $10
    inc b
    rst $38
    jr nz, jr_011_535c

    rst $38
    db $10

jr_011_535c:
    inc b
    ld b, b
    ld [bc], a
    db $10
    ld [bc], a
    rst $38
    db $10
    inc b
    ld b, b
    ld [bc], a
    db $10
    ld [bc], a
    ld b, b
    inc bc
    rst $38
    db $10
    inc b
    rst $38
    db $10
    ld [bc], a
    rst $38
    db $10
    inc b
    ld b, b
    ld [bc], a
    rst $38
    db $10
    inc b
    ld b, b
    inc b
    rst $38
    add b
    inc b
    rst $38
    ld b, b
    ld [bc], a
    rst $38
    ld b, b
    ld bc, $faff
    jr c, jr_011_5354

    and a
    jp nz, Jump_011_5077

    xor a
    ld [$cd6b], a
    ld hl, $d735
    res 7, [hl]
    ld a, $00
    ld [$da38], a
    ret


    cp e
    ld d, e
    call nc, $ef53
    inc hl
    rst $28
    inc hl
    ld bc, $1820
    ret c

    push bc
    ld d, e
    rst $08
    ld d, e
    jp z, $ca53

    ld d, e
    ld [bc], a
    ld b, b
    jr @-$26

    sbc $53
    add sp, $53
    db $e3
    ld d, e
    db $e3
    ld d, e
    rst $38
    ld [$a221], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ccf
    ld h, d
    ld h, $50
    rla
    ld h, a
    ld h, d
    ld h, $50
    rla
    ld a, c
    ld h, d
    ld h, $50
    ld [$ae21], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    or a
    ld h, d
    ld h, $50
    rla
    add sp, $62
    ld h, $50
    rla
    ei
    ld h, d
    ld h, $50
    ld l, $02
    ld b, $19
    ld bc, $12c8
    inc de
    nop
    jp z, $0400

    jr jr_011_5415

    ld c, $ff
    db $d3
    ld b, c
    and $0e
    jr @+$12

    ld e, $ff
    pop de
    ld b, d
    and $0f
    ld b, a
    dec d
    ld e, $ff
    rst $38
    add e
    jp nc, $1247

    jr @+$01

    rst $38

jr_011_5415:
    add h
    jr z, jr_011_5461

    rst $00
    ld b, $19
    call nz, $12c7
    inc de
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $6e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, b
    ld b, c

jr_011_5461:
    ld b, c
    ld b, c
    ld b, c
    ld h, e
    ld e, d
    ld c, c
    ld e, b
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld a, c
    inc de
    dec de
    ld h, $13
    add hl, de
    ld b, [hl]
    ld c, $0e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld a, c
    ld h, $11
    inc de
    ld [bc], a
    dec [hl]
    ld d, $0e
    ld d, a
    ld c, c
    ld d, c
    ld l, $2e
    ld l, $2e
    ld b, h
    dec [hl]
    jr nz, @+$28

    ld c, $13
    ld b, [hl]
    ld c, $0e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, h
    dec e
    inc bc
    daa
    add hl, hl
    rla
    ld d, $0e
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    inc bc
    ld c, $02
    dec [hl]
    ld l, a
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld l, $2e
    ld l, $2e
    ld a, c
    add hl, de
    rla
    ld a, [bc]
    ld h, b
    ld a, [hl+]
    ld [hl], c
    ld h, d
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $44
    ld c, $0e
    add hl, hl
    ld h, h
    ld c, $0e
    ld h, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $40
    ld b, c
    ld a, [hl+]
    ld h, a
    ld [hl], b
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $48
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld l, $2e
    ld l, $16
    inc c
    rrca
    and h
    ld e, b
    ld e, a
    ld d, a
    db $fd
    ld d, h
    nop
    ld c, c
    ld e, b
    call Call_000_3c29
    ld hl, $5779
    ld de, $5530
    ld a, [$d633]
    call Call_000_30fc
    ld [$d633], a
    ret


Jump_011_5510:
    ld hl, $d81a
    bit 0, [hl]
    res 0, [hl]
    call nz, Call_011_5525
    xor a
    ld [$cd6b], a

Call_011_551e:
    ld [$d633], a
    ld [$da38], a
    ret


Call_011_5525:
    ld a, $86
    call Call_011_5756
    ld a, $87
    call Call_011_5756
    ret


    sub h
    ld d, l
    add sp, $31
    ld de, $4c32
    ld d, l
    ld a, [bc]
    ld d, [hl]
    add hl, hl
    ld d, [hl]
    inc [hl]
    ld d, [hl]
    ld d, d
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    add c
    ld d, [hl]
    and c
    ld d, [hl]
    call z, Call_000_1256
    ld d, a
    inc sp
    ld d, a
    ld a, [$d056]
    cp $ff
    jp z, Jump_011_5510

    ld a, $fc
    ld [$cd6b], a
    ld hl, $d81a
    set 7, [hl]
    ld a, $0a
    ldh [$8c], a
    call Call_000_2817
    call Call_000_1eb6
    ld a, $85
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $8b
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    call Call_000_231c
    call Call_000_1e8f
    xor a
    ld [$cd6b], a
    ld hl, $d125
    set 5, [hl]
    ld a, $00
    ld [$d633], a
    ld [$da38], a
    ret


    ld a, [$d81a]
    bit 2, a
    call z, Call_011_55a5
    ld a, [$d81a]
    bit 4, a
    call z, Call_000_31b5
    ret


Call_011_55a5:
    ld a, [$d360]
    cp $0e
    ret nz

    ld hl, $d81a
    res 3, [hl]
    ld a, [$d361]
    cp $18
    jr z, jr_011_55c2

    ld a, [$d361]
    cp $19
    ret nz

    ld hl, $d81a
    set 3, [hl]

jr_011_55c2:
    xor a
    ldh [$b4], a
    ld a, $fc
    ld [$cd6b], a
    call Call_000_2233
    ld c, $20
    ld a, $9c
    call Call_000_2211
    call Call_000_231c
    call Call_000_3ddb
    call Call_000_231c
    call Call_000_3ddb
    ld a, $01
    ld [$cc3c], a
    ld a, $0b
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cc3c], a
    ld a, $ff
    ld [$cd6b], a
    ld a, $86
    call Call_011_5747
    ld a, $87
    call Call_011_5747
    ld a, $04
    call Call_011_551e
    ret


    inc b
    inc b
    inc b
    inc b
    rst $38
    ld de, $5605
    ld a, [$d81a]
    bit 3, a
    jr z, jr_011_5617

    ld de, $5606

jr_011_5617:
    ld a, $02
    ldh [$8c], a
    call Call_000_363d
    ld a, $ff
    ld [$cd6b], a
    ld a, $05
    call Call_011_551e
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
    ld a, [$d81a]
    bit 3, a
    jr z, jr_011_564a

    ld a, $00
    ld [$c129], a

jr_011_564a:
    call Call_000_3ddb
    ld a, $fc
    ld [$cd6b], a
    ld de, $5606
    ld a, [$d81a]
    bit 3, a
    jr z, jr_011_565f

    ld de, $5605

jr_011_565f:
    ld a, $03
    ldh [$8c], a
    call Call_000_363d
    ld a, $ff
    ld [$cd6b], a
    ld a, $08
    call Call_011_551e
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $fc
    ld [$cd6b], a
    ld a, $02
    ld [$c131], a
    ld a, $00
    ld [$c139], a
    ld a, [$d81a]
    bit 3, a
    jr z, jr_011_5697

    ld a, $0c
    ld [$c139], a

jr_011_5697:
    call Call_000_3ddb
    ld a, $0c
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $57b2
    ld de, $57b2
    call Call_000_32f0
    ld a, $e6
    ld [$d058], a
    ld a, $2b
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld [$cd6b], a
    ld hl, $d81a
    set 0, [hl]
    ld a, $0b
    call Call_011_551e
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d056]
    cp $ff
    jp z, Jump_011_5510

    ld a, $02
    ld [$c121], a
    ld [$c131], a
    xor a
    ld [$c129], a
    ld [$c139], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $01
    ld [$cc3c], a
    ld a, $0d
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
    ld a, $0c
    call Call_011_551e
    ret


    ld a, $ff
    ld [$cd6b], a
    call Call_000_1eb6
    ld a, $86
    call Call_011_5756
    ld a, $87
    call Call_011_5756
    call Call_000_231c
    call Call_000_3ddb
    call Call_000_1e8f
    ld a, $0d
    call Call_011_551e
    ret


    call Call_000_216b
    xor a
    ldh [$b4], a
    ld [$cd6b], a
    ld hl, $d81a
    set 2, [hl]
    ld a, $00
    call Call_011_551e
    ret


Call_011_5747:
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    call Call_000_231c
    call Call_000_3ddb
    ret


Call_011_5756:
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ret


    call nz, $8657
    ld d, a
    add [hl]
    ld d, a
    inc de
    ld e, b
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld c, $58
    add a
    ld d, a
    xor l
    ld d, a
    or a
    ld d, a
    inc b
    db $10
    ld a, [de]
    ret c

    dec e
    ld e, b
    ld a, [hl-]
    ld e, b
    ld [hl+], a
    ld e, b
    ld [hl+], a
    ld e, b
    rst $38
    ld d, b
    rla
    dec a
    ld h, e
    ld h, $08
    ld c, $0a
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
    ld d, a
    ld h, e
    ld h, $50
    rla
    sbc d
    ld h, e
    ld h, $50
    rla
    or d
    ld h, e
    ld h, $08
    ld c, $40
    call Call_000_372f
    jp Jump_000_23d2


    ld [$1afa], sp
    ret c

    bit 7, a
    jp nz, Jump_011_57fb

    ld hl, $5804
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $5809
    ld de, $5809
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    xor a
    ldh [$b4], a
    ld a, $03
    ld [$d633], a
    ld [$da38], a
    jr jr_011_5801

Jump_011_57fb:
    ld hl, $580e
    call Call_000_3c36

jr_011_5801:
    jp Jump_000_23d2


    rla
    ldh [$63], a
    ld h, $50
    rla
    ld c, $64
    ld h, $50
    rla
    dec h
    ld h, h
    ld h, $50
    ld [$7921], sp
    ld d, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ret z

    ld h, h
    ld h, $50
    rla
    ld sp, hl
    ld h, h
    ld h, $06
    ld [$1a21], sp
    ret c

    set 6, [hl]
    ld a, $8c
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    jp Jump_000_23d2


    ld [$4421], sp
    ld e, b

jr_011_583e:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    cp $64
    ld h, $50
    ld l, $03
    ld a, [bc]
    inc de
    ld bc, $0fc9
    jr jr_011_5852

jr_011_5852:
    rrc a
    add hl, de
    ld bc, $00cb
    add hl, bc
    rla
    rlca
    dec e
    rst $38
    ret nc

    ld b, c
    push hl
    ld bc, $0e46
    dec e
    rst $38
    ret nc

    ld [bc], a
    ld b, l
    ld c, $1c
    rst $38
    ret nc

    inc bc
    jr jr_011_5875

    rrca
    rst $38
    ret nc

    ld b, h
    and $12

jr_011_5875:
    ld b, a
    db $10
    ld c, $ff
    rst $38
    add l
    inc hl
    ld b, a
    ld [$ff0d], sp
    rst $38
    add [hl]
    jp z, Jump_000_1847

    db $10
    rst $38
    rst $38
    add a
    dec h
    ld b, a
    ld b, $1d
    rst $38
    rst $38
    adc b
    ld c, b
    ld b, a
    ld b, $0e
    rst $38
    rst $38
    adc c
    ld c, d
    ld [hl], b
    rst $00
    ld a, [bc]
    inc de
    sbc l
    rst $00
    rrca
    jr jr_011_583e

    rst $00
    rrca
    add hl, de
    ld l, $2e
    ld l, $2e
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld b, b
    ld b, c
    ld b, d
    ld h, c
    ld h, c
    ld h, c
    ld b, d
    ld l, $2e
    ld l, $2e
    ld h, h
    ld c, $0e
    ld c, $70
    ld c, $46
    ld c, $0e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a
    ld b, a
    ld c, $52
    ld c, $46
    ld c, $47
    ld b, a
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld d, b
    ld c, c
    ld c, c
    ld c, c
    ld b, h
    ld c, $46
    dec c
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    dec bc
    ld b, h
    ld c, $46
    dec c
    ld c, $0e
    ld h, [hl]
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a
    ld c, $09
    ld b, h
    ld l, [hl]
    ld b, [hl]
    ld e, b
    ld c, $57
    ld d, c
    ld l, $2e
    ld l, $2e
    ld b, h
    ld b, a
    ld c, $67
    ld [hl], b
    ld d, e
    ld c, d
    ld c, $0e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld b, h
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld c, $53
    inc l
    ld d, a
    ld c, d
    ld l, $2e
    ld l, $2e
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, e
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $64
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $44
    ld c, $47
    ld b, a
    dec bc
    dec c
    ld c, $46
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $48
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld l, $2e
    ld l, $12
    inc b
    inc bc
    db $fc
    ld e, c
    cp a
    ld e, c
    ld h, h
    ld e, c
    nop
    push hl
    ld e, c
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    push hl
    call nz, Call_011_5980
    pop hl
    bit 7, [hl]
    res 7, [hl]
    call nz, $59b3
    xor a
    ld [$cf0c], a
    inc a
    ld [$cc3c], a
    ret


Call_011_5980:
    ld hl, $d3ae
    ld a, [$d73a]
    ld b, a
    ld a, [$d73b]
    ld c, a
    call Call_011_598e

Call_011_598e:
    inc hl
    inc hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


Call_011_5995:
    ld hl, $59a8
    call Call_000_293d
    ld hl, $59ad
    ld de, $cc5b
    ld bc, $0006
    call Call_000_00b1
    ret


    inc bc
    ld d, l
    ld d, h
    ld h, c
    rst $38
    inc b
    rst $00
    inc b
    ret z

    ld [bc], a
    jp z, $dbcd

    dec a
    ld b, $1d
    ld hl, $5f07
    call Call_000_3e84
    ret


    pop bc
    ld e, c
    ld [$4a06], sp
    call Call_000_3422
    jr z, jr_011_59d6

    call Call_011_5995
    ld hl, $59ad
    ld a, $61
    call Call_000_3eb4
    jr jr_011_59dc

jr_011_59d6:
    ld hl, $59df
    call Call_000_3c36

jr_011_59dc:
    jp Jump_000_23d2


    rla
    ld e, $65
    ld h, $0d
    ld d, b
    rrca
    ld [bc], a
    ld bc, $0202
    rst $00
    ld bc, $0403
    rst $00
    ld bc, $0101
    ld bc, $f300
    add $01
    ld [bc], a
    di
    add $01
    inc bc
    ld b, h
    ld c, l
    ld b, a
    ld c, d
    ld c, h
    ld c, e
    ld c, d
    jr nz, @+$4d

    ld c, b
    ld b, [hl]
    ld c, c
    ld [de], a
    ld [bc], a
    ld [bc], a
    xor a
    ld e, d
    add a
    ld e, d
    inc d
    ld e, d
    nop
    sbc b
    ld e, d
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    push hl
    call nz, Call_011_5a30
    pop hl
    bit 7, [hl]
    res 7, [hl]
    call nz, Call_011_5a7b
    xor a
    ld [$cf0c], a
    inc a
    ld [$cc3c], a
    ret


Call_011_5a30:
    ld hl, $d3ae
    ld a, [$d73a]
    ld b, a
    ld a, [$d73b]
    ld c, a
    call Call_011_5a3e

Call_011_5a3e:
    inc hl
    inc hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


    ld hl, $5a58
    call Call_000_293d
    ld hl, $5a65
    ld de, $cc5b
    ld bc, $0016
    call Call_000_00b1
    ret


    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rst $38
    inc bc
    or l
    ld [bc], a
    rst $08
    ld [bc], a
    ret nc

    ld [bc], a
    pop de
    ld [bc], a
    jp nc, $d302

    ld [bc], a
    call nc, $d502
    ld [bc], a
    jp hl


    ld [bc], a
    ld [$eb01], a

Call_011_5a7b:
    call Call_000_3ddb
    ld b, $1d
    ld hl, $5f07
    call Call_000_3e84
    ret


    adc c
    ld e, d
    ld [$45cd], sp
    ld e, d
    ld hl, $5a65
    ld a, $61
    call Call_000_3eb4
    jp Jump_000_23d2


    rrca
    ld [bc], a
    inc bc
    ld bc, $ed00
    inc bc
    ld [bc], a
    nop
    db $ed
    ld bc, $0300
    ld bc, $f900
    add $03
    ld bc, $c6fa
    inc bc
    ld [bc], a
    ld a, [hl+]
    dec hl
    jr z, jr_011_5adc

    inc bc
    dec c
    rrca
    jr nc, jr_011_5b13

    jp nz, $bf5a

    ld e, d
    nop
    rst $18
    ld e, d
    jp Jump_000_3c29


    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ret nc

    ld e, d
    push de
    ld e, d
    jp c, Jump_000_175a

    ret c

    ld b, [hl]
    daa
    ld d, b
    rla
    db $e4
    ld b, [hl]
    daa
    ld d, b
    rla
    inc hl

jr_011_5adc:
    ld b, a
    daa
    ld d, b
    nop
    dec b
    inc b
    nop
    ld b, $da

jr_011_5ae5:
    dec b
    nop
    rlca
    jp c, Jump_000_0016

    ld b, $dc
    rla
    nop
    ld b, $dc
    add hl, bc
    add hl, de
    nop
    ldh [$03], a
    ld a, [bc]
    ld a, [de]
    dec b
    inc b
    ld b, $06
    rla
    dec b
    rlca
    inc b
    ld b, a
    ld c, $19
    rst $38
    rst $38
    add c
    db $10
    ld b, a
    dec bc
    rlca
    rst $38
    rst $38
    add d
    ld de, $1147
    jr @+$01

    rst $38

jr_011_5b13:
    add e
    ld h, $47
    db $10
    inc de
    rst $38
    rst $38
    add h
    db $ed
    jr z, jr_011_5ae5

    inc b
    nop
    jr z, @-$37

    dec b
    nop
    push hl
    rst $00
    ld d, $00
    push hl
    rst $00
    rla
    nop
    ld e, [hl]
    rst $00
    add hl, bc
    add hl, de
    ld c, b
    ld a, l
    ld a, l
    ld a, l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, l
    dec b
    dec b
    dec b
    ld c, c
    ld c, h
    ld a, h
    ld a, h
    dec de
    dec h
    ld bc, $0101
    inc h
    dec de
    inc hl
    ld bc, $0101
    rlca
    ld d, [hl]
    dec de
    dec de
    ld hl, $3c1b
    dec a
    dec a
    dec a
    ld a, $25
    ld bc, $0101
    rlca
    ld c, b
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld b, h
    ld b, a
    ld b, l
    ld d, e
    ld b, [hl]
    dec h
    dec h
    inc h
    inc h
    ld a, [hl]
    ld a, a
    inc hl
    jr z, @+$2a

    ld [hl+], a
    dec de
    dec de
    ld [bc], a
    inc l
    add hl, hl
    inc l
    add hl, hl
    add hl, de
    inc e
    ld a, [hl]
    ld b, $28
    ld bc, $2001
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    dec de
    dec de
    dec de
    ld hl, $067e
    jr z, @+$03

    ld bc, $0128
    ld bc, $5501
    inc a
    dec a
    dec a
    dec a
    ld a, $02
    ld a, a
    dec h
    jr z, jr_011_5bc5

    inc h
    ld d, b
    ld d, c
    ld d, c
    ld c, a
    ld b, h
    ccf
    ld b, e
    ld b, a
    ld b, [hl]
    ld [bc], a
    ld c, h
    ld a, h
    ld a, h
    inc l
    dec de
    ld d, h
    dec l
    dec l
    dec l
    dec l
    ld b, b
    ld b, d
    inc l
    dec de
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, a
    inc l
    inc a
    dec a
    dec a
    dec a
    dec a
    ld c, d
    ld b, d
    dec de
    dec de

jr_011_5bc5:
    ld a, [hl]
    ld a, l
    ld a, l
    ld a, l
    ld a, a
    inc l
    ld b, h
    ld b, a
    ld b, l
    ld b, l
    ld b, l
    ld b, a
    ld b, [hl]
    ld bc, $7e22
    ld d, [hl]
    inc l
    inc sp
    ld c, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, a
    dec h
    ld bc, $0101
    inc h
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, h
    ld c, l
    inc bc
    ld [de], a
    inc d
    sub d
    ld e, h
    ld [bc], a
    ld e, h
    rst $38
    ld e, e
    nop
    add hl, hl
    ld e, h
    jp Jump_000_3c29


    rst $28
    inc hl
    rst $28
    inc hl
    db $10
    ld e, h
    dec d
    ld e, h
    ld a, [de]
    ld e, h
    rra
    ld e, h
    inc h
    ld e, h
    rla
    ld a, $47
    daa
    ld d, b
    rla
    ld c, d
    ld b, a
    daa
    ld d, b
    rla
    ld a, c
    ld b, a
    daa
    ld d, b
    rla
    add c
    ld b, a
    daa
    ld d, b
    rla
    rst $10
    ld b, a
    daa
    ld d, b
    nop
    add hl, bc
    inc hl
    ld [bc], a
    nop
    db $db
    inc hl
    inc bc
    ld bc, $23db
    ld [$db02], sp
    inc hl
    add hl, bc
    inc bc
    db $db
    inc hl
    inc d
    inc b
    call c, Call_000_1523
    dec b
    call c, Call_000_271e
    nop
    reti


    rra
    daa
    ld bc, $03d9
    inc hl
    nop
    pop hl
    dec b
    inc b
    inc h
    inc bc
    add hl, de
    inc b
    inc b
    rra
    dec c
    dec b
    ld hl, $0613
    inc e
    ld a, [de]
    rlca
    ld [bc], a
    ld b, a
    dec b
    dec e
    rst $38
    rst $38
    add c
    inc h
    ld b, a
    dec bc
    rla
    rst $38
    rst $38
    add d
    ldh a, [$be]
    ret z

    inc hl
    ld [bc], a
    cp [hl]
    ret z

    inc hl
    inc bc
    pop bc
    ret z

    inc hl
    ld [$c8c1], sp
    inc hl
    add hl, bc
    rst $00
    ret z

    inc hl
    inc d
    rst $00
    ret z

    inc hl
    dec d
    sbc h
    ret z

    ld e, $27
    sbc h
    ret z

    rra
    daa
    ld l, $c7
    inc bc
    inc hl
    ld [bc], a
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld a, a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    inc hl
    ld bc, $1924
    inc e
    ld a, [hl]
    ld a, a
    dec h
    ld bc, $2401
    ld a, [hl]
    ld a, l
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
    ld a, l
    ld a, l
    ld a, l
    ld bc, $1b01
    dec de
    ld hl, $7f7e
    inc hl
    ld bc, $2201
    ld a, [hl]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec h
    ld bc, $1b22
    dec de
    ld a, [hl]
    ld [bc], a
    dec h
    inc h
    dec h
    ld e, h
    ld d, d
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec h
    ld bc, $1b22
    ld a, [hl]
    ld a, a
    dec de
    add hl, hl
    inc l
    ld e, d
    ld e, e
    ld bc, $0222
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec h
    ld bc, $7e1b
    ld a, a
    inc l
    dec de
    dec de
    ld e, d
    ld e, e
    ld bc, $7f22
    add hl, hl
    add hl, hl
    dec de
    dec de
    dec de
    dec de
    dec de
    inc a
    dec a
    dec a
    ld a, $7f
    add hl, hl
    ld e, h
    ld d, d
    jr z, @+$03

    ld bc, $7f24
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld b, h
    ld b, a
    ccf
    ld b, d
    ld a, a
    dec de
    ld e, d
    ld e, e
    dec h
    inc h
    dec h
    dec de
    ld a, a
    dec de
    dec de
    dec de
    dec de
    inc l
    add hl, hl
    dec de
    dec de
    dec de
    ld b, b
    ld b, d
    ld a, a
    inc l
    ld e, d
    ld e, e
    dec de
    dec de
    dec de
    dec de
    ld a, a
    inc l
    dec de
    dec de
    dec de
    dec de
    inc l
    dec de
    dec de
    dec de
    ld b, b
    ld b, d
    ld a, a
    add hl, hl
    ld a, [hl]
    add hl, hl
    dec de
    dec de
    dec de
    inc a
    dec a
    dec a
    dec a
    dec a
    ld a, $1b
    dec de
    dec de
    add hl, hl
    dec de
    ld b, b
    ld b, d
    ld a, a
    dec de
    ld a, [hl]
    inc hl
    inc hl
    ld bc, $4022
    ld b, c
    ld b, e
    ld b, l
    ld b, a
    ld b, [hl]
    dec de
    dec de
    dec de
    dec de
    dec de
    ld b, b
    ld b, d
    ld a, a
    dec de
    dec d
    ld bc, $525c
    ld bc, $4140
    ld b, d
    ld bc, $2201
    inc a
    dec a
    dec a
    dec a
    dec a
    ld c, d
    ld b, d
    ld a, a
    dec de
    ld a, [hl]
    ld bc, $5b5a
    inc h
    ld b, h
    ld b, a
    ld b, [hl]
    ld bc, $0101
    ld b, h
    ld b, a
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld a, a
    dec de
    ld a, [hl]
    dec h
    ld e, d
    ld e, e
    dec de
    dec de
    ld a, [hl]
    dec h
    ld bc, $0101
    ld hl, $1b1b
    dec de
    dec de
    dec de
    dec e
    ld a, a
    add hl, hl
    ld a, [hl]
    dec de
    dec de
    dec de
    inc sp
    dec de
    ld a, [hl]
    inc l
    ld bc, $0101
    ld [hl+], a
    add hl, hl
    add hl, hl
    dec de
    add hl, hl
    dec de
    ld d, a
    ld a, a
    inc l
    ld a, [hl]
    dec de
    inc l
    dec de
    dec de
    dec de
    ld a, [hl]
    inc sp
    dec de
    inc h
    dec h
    inc h
    dec de
    dec de
    dec de
    dec de
    dec de
    dec e
    ld c, c
    ld e, c
    ld c, b
    ld c, c
    ld e, c
    ld c, b
    add hl, sp
    add hl, sp
    add hl, sp
    ld c, c
    ld e, c
    ld c, b
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    inc bc
    dec c
    rrca
    ld [hl], d
    ld e, [hl]
    add hl, bc
    ld e, [hl]
    ld b, $5e
    nop
    add hl, de
    ld e, [hl]
    jp Jump_000_3c29


    rst $28
    inc hl
    rrca
    ld e, [hl]
    inc d
    ld e, [hl]
    rla
    rst $38
    ld c, b
    daa
    ld d, b
    rla
    dec bc
    ld c, c
    daa
    ld d, b
    nop
    add hl, bc
    add hl, de
    ld c, $02
    sbc h
    add hl, de
    rrca
    inc bc
    sbc h
    ld a, [bc]
    nop
    inc b
    db $db
    dec bc
    nop
    dec b
    db $db
    nop
    ld c, $04
    jp c, $0f00

    dec b
    jp c, $1d0a

    ld [bc], a
    reti


    dec bc
    dec e
    inc bc
    reti


    inc de
    ld de, $dd00
    ld [bc], a
    inc d
    ld [de], a
    ld [bc], a
    ld d, $0e
    inc bc
    ld bc, $0e47
    ld [de], a
    rst $38
    rst $38
    add c
    ld sp, $c801
    add hl, de
    ld c, $01
    ret z

    add hl, de
    rrca
    ld h, a
    rst $00
    ld a, [bc]
    nop
    ld h, a
    rst $00
    dec bc
    nop
    dec b
    rst $00
    nop
    ld c, $05
    rst $00
    nop
    rrca
    ld [hl], l
    rst $00
    ld a, [bc]
    dec e
    ld [hl], l
    rst $00
    dec bc
    dec e
    jp $13c7


    ld de, $7d7e
    ld a, l
    ld a, l
    ld a, l
    ld [bc], a
    ld a, l
    ld e, b
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, a
    ld a, a
    dec de
    inc hl
    ld [hl+], a
    inc l
    ld a, [hl]
    dec de
    dec de
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    add hl, hl
    dec de
    ld a, [hl]
    ld a, a
    inc hl
    ld bc, $2201
    ld a, [hl]
    add hl, hl
    inc hl
    ld bc, $0101
    ld bc, $1b22
    ld a, [hl]
    ld a, a
    dec h
    ld bc, $1b24
    ld a, [hl]
    dec de
    dec h
    ld bc, $2524
    ld bc, $2c24
    ld a, [hl]
    ld a, a
    dec de
    inc h
    inc hl
    ld e, h
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld a, h
    ld a, h
    ld a, h
    ld [bc], a
    ld d, [hl]
    dec de
    dec de
    ld bc, $5d5a
    dec de
    ld l, $1b
    ld d, l
    ld e, e
    dec de
    ld l, $1b
    ld d, a
    ld a, a
    ld l, $1b
    dec h
    ld e, d
    ld e, [hl]
    ld d, c
    ld d, c
    ld d, c
    ld c, a
    ld e, e
    ld bc, $1b22
    ld a, [hl]
    ld a, a
    dec de
    inc l
    ld a, h
    ld a, h
    daa
    ld h, $17
    daa
    ld h, $1b
    dec h
    ld bc, $7e22
    ld [bc], a
    ld a, l
    ld a, l
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld bc, $2201
    ld a, [hl]
    ld a, a
    dec de
    inc hl
    ld bc, $2201
    inc l
    dec de
    add hl, de
    inc e
    dec de
    inc hl
    ld bc, $7e24
    ld a, a
    inc l
    dec h
    ld bc, $2401
    dec de
    dec de
    dec de
    ld hl, $231b
    inc h
    inc l
    ld a, [hl]
    ld a, a
    dec de
    add hl, hl
    dec h
    ld bc, $2401
    ld hl, $2c2c
    inc hl
    inc h
    dec de
    dec de
    ld a, [hl]
    ld a, [hl]
    daa
    rla
    ld h, $17
    rla
    ld h, $58
    daa
    rla
    rla
    daa
    rla
    ld h, $7f
    inc c
    inc b
    inc b
    ei
    ld b, b
    ld b, h
    ld e, a
    ld b, c
    ld e, a
    nop
    ld d, d
    ld e, a
    jp Jump_000_3c29


    ld c, b
    ld e, a
    ld c, l
    ld e, a
    rla
    ld c, c
    ld c, c
    daa
    ld d, b
    rla
    ld [hl], e
    ld c, c
    daa
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [$07dc], sp
    inc bc
    ld [$00dc], sp
    ld [bc], a
    dec c
    ld b, $07
    rst $38
    ret nc

    ld bc, $0820
    dec b
    cp $01
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc c
    inc b
    inc b
    ei
    ld b, b
    add d
    ld e, a
    ld a, [hl]
    ld e, a
    nop
    sub a
    ld e, a
    call Call_000_3c29
    ret


    adc b
    ld e, a
    adc l
    ld e, a
    sub d
    ld e, a
    rla
    daa
    ld c, e
    daa
    ld d, b
    rla
    ld [hl], d
    ld c, e
    daa
    ld d, b
    rla
    sbc [hl]
    ld c, e
    daa
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    db $db
    rlca
    inc bc
    rlca
    db $db
    nop
    inc bc
    jr nz, jr_011_5fad

    ld [$00fe], sp
    ld bc, $0607
    inc b
    rst $38

jr_011_5fad:
    db $d3
    ld [bc], a
    dec de
    ld b, $0a
    rst $38
    ret nc

    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc c
    inc b
    inc b
    ei
    ld b, b
    call $c95f
    ld e, a
    nop
    ld [c], a
    ld e, a
    call Call_000_3c29
    ret


    db $d3
    ld e, a
    ret c

    ld e, a
    db $dd
    ld e, a
    rla
    pop de
    ld c, e
    daa
    ld d, b
    rla
    inc bc
    ld c, h
    daa
    ld d, b
    rla
    jr c, jr_011_602c

    daa
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    reti


    rlca
    inc bc
    inc b
    reti


    nop
    inc bc
    jr nz, @+$09

    dec b
    cp $01
    ld bc, $0621
    ld [$ffff], sp
    ld [bc], a
    inc l
    ld b, $09
    rst $38
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
    inc c
    inc b
    inc b
    ei
    ld b, b
    jr jr_011_606f

    inc d
    ld h, b
    nop
    dec l
    ld h, b
    call Call_000_3c29
    ret


    ld e, $60
    inc hl
    ld h, b
    jr z, @+$62

    rla
    ld e, d
    ld c, h
    daa
    ld d, b
    rla
    call Call_000_274c
    ld d, b
    rla
    rrca
    ld c, l
    daa

jr_011_602c:
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [$07da], sp
    inc bc
    ld [$00da], sp
    inc bc
    jr nz, jr_011_6042

    ld a, [bc]
    cp $02
    ld bc, $0823
    rlca

jr_011_6042:
    rst $38
    rst $38
    ld [bc], a
    db $10
    add hl, bc
    dec b
    cp $01
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld de, $0f09
    cp d
    ld h, b
    ld h, d
    ld h, b
    ld e, a
    ld h, b
    nop
    ld l, d
    ld h, b
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
    ld b, $01
    dec e
    ld [bc], a

jr_011_606f:
    db $e4
    ld b, $16
    inc bc
    db $e4
    rlca
    inc de
    inc b
    db $e4
    ld bc, $0509
    db $e4
    inc bc
    ld bc, $e406
    dec bc
    inc bc
    rlca
    db $e4
    nop
    inc b
    ld b, a
    rrca
    inc b
    rst $38
    rst $38
    add c
    jr z, jr_011_60d5

    dec bc
    inc d
    rst $38
    rst $38
    add d
    ld [bc], a
    ld b, a
    rrca
    rla
    rst $38
    rst $38
    add e
    ld [hl], $47
    dec c
    rra
    rst $38
    rst $38
    add h
    db $10
    inc c
    rst $00
    ld bc, $481d
    rst $00
    ld b, $16
    ld b, [hl]
    rst $00
    rlca
    inc de
    ld [bc], a
    rst $00
    ld bc, $1309
    rst $00
    inc bc
    ld bc, $c768
    dec bc
    inc bc
    dec c
    inc b
    inc b
    dec bc
    jr z, jr_011_60cf

    dec b
    ld [$0505], sp
    dec b
    dec b
    dec b
    add hl, bc
    jr z, jr_011_60f2

    ld [$0505], sp
    dec b
    dec b

jr_011_60cf:
    ld b, $06
    ld b, $05
    dec b
    dec b

jr_011_60d5:
    add hl, bc
    rrca
    inc c
    rrca
    dec c
    ld a, l
    ld [$0e05], sp
    ld c, $0a
    rrca
    add hl, bc
    ld [$0709], sp
    ld b, $06
    rlca
    rrca
    dec b
    ld c, $08
    dec b
    dec b
    dec b
    add hl, bc
    jr z, jr_011_60f8

jr_011_60f2:
    inc hl
    inc c
    ld b, $06
    rlca
    ld a, l

jr_011_60f8:
    dec b
    dec b
    ld c, $08
    dec b
    ld [$0505], sp
    dec b
    ld b, $06
    ld b, $06
    rlca
    jr z, jr_011_6113

    ld b, $08
    ld c, $06
    ld b, $06
    ld [$0606], sp
    ld a, [bc]
    rrca

jr_011_6113:
    ld b, $08
    rrca
    dec b
    dec c
    ld b, $06
    ld b, $0e
    inc c
    ld b, $06
    ld b, $08
    rlca
    ld b, $06
    ld b, $05
    dec b
    ld b, $06
    ld a, l
    ld a, [bc]
    inc b
    inc b
    ld b, $06
    ld b, $7d
    ld b, $0a
    rrca
    dec b
    ld c, $04
    ld a, [bc]
    rrca
    ld c, $04
    inc b
    inc c
    ld c, $0a
    inc c
    ld c, $11
    add hl, bc
    rrca
    rst $00
    ld h, c
    ld h, [hl]
    ld h, c
    ld c, l
    ld h, c
    nop
    sub a
    ld h, c
    call Call_000_3c29
    ld hl, $6170
    ld de, $6160
    ld a, [$d64f]
    call Call_000_30fc
    ld [$d64f], a
    ret


    or l
    ld sp, $31e8
    ld de, $7d32
    ld h, c
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld bc, $5e00
    ret c

    add a
    ld h, c
    add a
    ld h, c
    add a
    ld h, c
    add a
    ld h, c
    rst $38
    ld [$7021], sp
    ld h, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, d
    ld c, l
    daa
    ld [$833e], sp
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


    ld a, l
    ld bc, $0306
    ld [$00e4], sp
    dec b
    dec b
    ld de, $ff1f
    ret nc

    ld b, c
    add e
    ld b, [hl]
    ld b, a
    dec b
    ld e, $ff
    rst $38
    add d
    ld [bc], a
    ld b, a
    ld de, $ff06
    rst $38
    add e
    ld [bc], a
    ld b, a
    ld de, $ff07
    rst $38
    add h
    ld [hl], $47
    rlca
    inc de
    rst $38
    rst $38
    add l
    ld d, e
    ld a, $c7
    ld b, $03
    dec b
    dec c
    inc b
    inc b
    inc c
    ld l, [hl]
    dec b
    add hl, bc
    inc d
    dec d
    dec d
    dec d
    ld d, $7a
    rla
    rlca
    ld [bc], a
    jr nz, @+$24

    ld [bc], a
    dec c
    ld [hl], d
    rrca
    ld h, [hl]
    dec e
    dec e
    dec l
    ld e, $0c
    rra
    ld l, d
    ld e, e
    ld l, a
    add hl, bc
    ld [bc], a
    rlca
    rla
    ld [bc], a
    ld b, $20
    ld [hl+], a
    ld c, $6e
    ld c, $72
    ld h, [hl]
    ld h, c
    ld e, b
    rlca
    rla
    inc c
    rra
    ld [$7201], sp
    ld c, a
    dec c
    jr nz, @+$24

    ld a, l
    ld a, [bc]
    inc b
    inc b
    dec bc
    rra
    ld b, $02
    ld c, $51
    ld [bc], a
    ld l, l
    ld l, [hl]
    dec b
    add hl, bc
    rla
    ld a, l
    jr nz, jr_011_6237

    ld e, a
    ld e, a
    ld c, $72
    db $76
    jr nz, jr_011_623e

    ld [bc], a
    ld [$0705], sp
    rra
    inc d
    dec d
    ld d, $6d
    dec c
    dec bc
    ld [bc], a
    db $76
    ld a, l
    db $76
    db $76
    db $76
    inc d
    dec d
    ld d, $1c
    add hl, hl
    ld e, $0d
    ld [hl], d
    jr nz, jr_011_6259

jr_011_6237:
    db $76
    rla
    db $76
    ld d, c
    ld [hl], d
    inc e
    add hl, hl

jr_011_623e:
    ld e, $53
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    rra
    db $76
    db $76
    db $76
    db $76
    db $76
    ld [hl], d
    ld de, $1412
    db $10
    ld h, h
    ld [hl], e
    ld h, d
    ld e, d
    ld h, d
    nop
    xor h

jr_011_6259:
    ld h, e
    call Call_000_3c29
    ld hl, $6283
    ld de, $626d
    ld a, [$d61f]
    call Call_000_30fc
    ld [$d61f], a
    ret


    or l
    ld sp, $31e8
    ld de, $e432
    ld h, d
    xor $62
    ld hl, sp+$62
    ld [bc], a
    ld h, e
    inc c
    ld h, e
    ld d, $63
    jr nz, jr_011_62e4

    ld a, [hl+]
    ld h, e
    ld bc, $7c40
    ret c

    inc [hl]
    ld h, e
    ld a, $63
    add hl, sp
    ld h, e
    add hl, sp
    ld h, e
    ld [bc], a
    jr nc, @+$7e

    ret c

    ld b, e
    ld h, e
    ld c, l
    ld h, e
    ld c, b
    ld h, e
    ld c, b
    ld h, e
    inc bc
    jr nc, jr_011_631a

    ret c

    ld d, d
    ld h, e
    ld e, h
    ld h, e
    ld d, a
    ld h, e
    ld d, a
    ld h, e
    inc b
    ld b, b
    ld a, h
    ret c

    ld h, c
    ld h, e
    ld l, e
    ld h, e
    ld h, [hl]
    ld h, e
    ld h, [hl]
    ld h, e
    dec b
    jr nc, @+$7e

    ret c

    ld [hl], b
    ld h, e
    ld a, d
    ld h, e
    ld [hl], l
    ld h, e
    ld [hl], l
    ld h, e
    ld b, $40
    ld a, h
    ret c

    ld a, a
    ld h, e
    adc c
    ld h, e
    add h
    ld h, e
    add h
    ld h, e
    rlca
    jr nc, jr_011_634a

    ret c

    adc [hl]
    ld h, e
    sbc b
    ld h, e
    sub e
    ld h, e
    sub e
    ld h, e
    ld [$7c30], sp
    ret c

    sbc l
    ld h, e
    and a
    ld h, e
    and d
    ld h, e
    and d
    ld h, e
    rst $38

jr_011_62e4:
    ld [$8321], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$8f21], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$9b21], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$a721], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$b321], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$bf21], sp
    ld h, d

jr_011_631a:
    call Call_000_3168
    jp Jump_000_23d2


    ld [$cb21], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    ld [$d721], sp
    ld h, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add hl, de
    ld e, e
    daa
    ld d, b
    rla
    ccf
    ld e, e
    daa
    ld d, b
    rla
    ld d, l
    ld e, e
    daa
    ld d, b
    rla
    ld l, d
    ld e, e
    daa
    ld d, b
    rla
    adc d

jr_011_634a:
    ld e, e
    daa
    ld d, b
    rla
    sbc [hl]
    ld e, e
    daa
    ld d, b
    rla
    rst $00
    ld e, e
    daa
    ld d, b
    rla
    jp hl


    ld e, e
    daa
    ld d, b
    rla
    nop
    ld e, h
    daa
    ld d, b
    rla
    dec hl
    ld e, h
    daa
    ld d, b
    rla
    ld c, a
    ld e, h
    daa
    ld d, b
    rla
    ld h, d
    ld e, h
    daa
    ld d, b
    rla
    adc l
    ld e, h
    daa
    ld d, b
    rla
    cp b
    ld e, h
    daa
    ld d, b
    rla
    call c, Call_000_275c
    ld d, b
    rla
    inc c
    ld e, l
    daa
    ld d, b
    rla
    dec sp
    ld e, l
    daa
    ld d, b
    rla
    ld c, b
    ld e, l
    daa
    ld d, b
    rla
    ld [hl], e
    ld e, l
    daa
    ld d, b
    rla
    sub b
    ld e, l
    daa
    ld d, b
    rla
    sbc l
    ld e, l
    daa
    ld d, b
    rla
    call nz, Call_000_275d
    ld d, b
    rla
    rst $18
    ld e, l
    daa
    ld d, b
    rla
    db $f4
    ld e, l
    daa
    ld d, b
    inc bc
    inc b
    add hl, de
    ld hl, $5204
    inc bc
    dec de
    dec b
    ld d, d
    dec bc
    rla
    ld b, $52
    inc bc
    inc bc
    rlca
    ld d, d
    nop
    ld [$1106], sp
    rrca
    rst $38
    ret nc

    ld b, c
    adc $09
    ld c, $0e
    ld a, [bc]
    rst $38
    ret nc

    ld b, d
    pop de
    add hl, bc
    inc c
    add hl, bc
    rlca
    rst $38
    ret nc

    ld b, e
    rst $08
    inc bc
    inc c
    add hl, de
    jr @+$01

    db $d3
    ld b, h
    rst $08
    inc b
    ld c, $0e
    ld [hl+], a
    rst $38
    ret nc

    ld b, l
    pop de
    ld a, [bc]
    ld b, $20
    ld [de], a
    rst $38
    db $d3
    ld b, [hl]
    adc $0a
    ld c, $09
    dec h
    rst $38
    db $d3
    ld b, a
    pop de
    dec bc
    inc c
    ld [hl+], a
    ld e, $ff
    ret nc

    ld c, b
    rst $08
    dec b
    ld c, e
    ret z

    add hl, de
    ld hl, $c72a
    inc bc
    dec de
    sub b
    rst $00
    dec bc
    rla
    ld e, $c7
    inc bc
    inc bc
    rla
    ld [bc], a
    jr nz, jr_011_6436

    jr nz, @+$24

    jr nz, @+$24

    jr nz, jr_011_643c

    jr nz, @+$24

    jr nz, @+$24

    jr nz, jr_011_6442

    jr nz, @+$24

    jr nz, @+$24

    rra
    ld a, $01
    rla
    ld bc, $1701
    ld bc, $0101
    ld bc, $1701
    ld a, $01
    ld bc, $0101

jr_011_6436:
    ld bc, $1702
    ld bc, $1f01

jr_011_643c:
    ld bc, $1f01
    ld bc, $0101

jr_011_6442:
    ld bc, $1f01
    ld bc, $0101
    ld bc, $0101
    rla
    rra
    ld bc, $1701
    ld bc, $1701
    ld bc, $1701
    ld bc, $1701
    ld bc, $1701
    rla
    ld bc, $1f01
    rla
    ld bc, $1f01
    ld bc, $1f01
    ld bc, $1f01
    ld [bc], a
    ld [bc], a
    rra
    ld bc, $1f01
    rra
    ld bc, $1701
    rra
    ld bc, $0101
    ld bc, $1701
    ld bc, $0101
    ld bc, $173e
    ld bc, $0101
    ld bc, $0101
    rra
    rla
    ld bc, $0101
    ld bc, $1f01
    ld bc, $0101
    ld bc, $1f01
    ld bc, $0101
    ld bc, $0101
    rla
    rra
    ld bc, $1701
    ld bc, $0101
    ld bc, $1701
    jr nz, @+$24

    jr nz, @+$24

    jr nz, jr_011_64ce

    ld bc, $0101
    rra
    rla
    ld bc, $1f01
    ld bc, $0101
    ld bc, $1f01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rla
    rra
    ld bc, $1701
    ld bc, $0201
    ld bc, $1701

jr_011_64ce:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rra
    rla
    ld bc, $1f01
    ld bc, $0201
    ld bc, $1f01
    ld bc, $0101
    jr nz, @+$24

    jr nz, @+$24

    jr nz, jr_011_650d

    rla
    rra
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $2001
    ld [hl+], a
    jr nz, jr_011_6518

    ld bc, $0101
    rla
    ld bc, $0101
    ld bc, $1f01
    rla
    ld bc, $0101
    ld bc, $1701
    ld bc, $0101
    ld bc, $0101

jr_011_650d:
    rra
    ld bc, $3e01
    ld bc, $1701
    rra
    ld bc, $0101

jr_011_6518:
    ld bc, $1f01
    ld bc, $0101
    ld bc, $0101
    rla
    ld bc, $0101
    ld bc, $1f01
    rla
    jr nz, @+$24

    jr nz, jr_011_654f

    jr nz, jr_011_6551

    ld bc, $2001
    ld [hl+], a
    jr nz, jr_011_6557

    rra
    ld bc, $0101
    ld bc, $1701
    rra
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_011_654f:
    rra
    ld [bc], a

jr_011_6551:
    ld bc, $0101
    ld bc, $0101

jr_011_6557:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rla
    jr nz, @+$24

    jr nz, jr_011_658a

    jr nz, jr_011_658c

    jr nz, jr_011_658e

    jr nz, jr_011_6590

    jr nz, @+$24

    jr nz, @+$24

    jr nz, jr_011_6596

    jr nz, @+$24

    ld [bc], a
    rra
    ld de, $0f09
    dec l
    ld h, [hl]
    pop hl
    ld h, l
    add h
    ld h, l
    nop
    push hl
    ld h, l
    call Call_000_3c29
    ld hl, $cd60

jr_011_658a:
    bit 7, [hl]

jr_011_658c:
    res 7, [hl]

jr_011_658e:
    jr z, jr_011_65d1

jr_011_6590:
    ld hl, $65dc
    call Call_000_34e1

jr_011_6596:
    ret nc

    ld hl, $d87e
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_65af

    set 0, [hl]
    ld a, $e1
    ld [$d078], a
    ld a, $e3
    ld [$d079], a
    jr jr_011_65bb

jr_011_65af:
    set 1, [hl]
    ld a, $e2
    ld [$d078], a
    ld a, $e4
    ld [$d079], a

jr_011_65bb:
    ld a, [$d078]
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, [$d079]
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3eb4


jr_011_65d1:
    ld a, $a0
    ld [$d71c], a
    ld hl, $65dc
    jp $6bf3


    ld b, $12
    ld b, $17
    rst $38
    ldh [rNR44], a
    ldh [rNR44], a
    ld a, l
    rlca
    ld [bc], a
    inc b
    nop
    and b
    dec b
    rlca
    inc b
    ret nz

    rlca
    dec c
    ld [bc], a
    and b
    rrca
    inc de
    inc bc
    and b
    rrca
    rla
    ld b, $c0
    dec bc
    add hl, de
    dec b
    and b
    inc bc
    add hl, de
    dec b
    ret nz

    nop
    ld [bc], a
    ld c, c
    ld a, [bc]
    dec d
    rst $38
    db $10
    ld bc, $0a49
    ld a, [de]
    rst $38
    db $10
    ld [bc], a
    dec d
    rst $00
    ld [bc], a
    inc b
    dec hl
    rst $00
    dec b
    rlca
    ld b, e
    rst $00
    rlca
    dec c
    sbc d
    rst $00
    rrca
    inc de
    sbc h
    rst $00
    rrca
    rla
    ld [hl], e
    rst $00
    dec bc
    add hl, de
    rra
    rst $00
    inc bc
    add hl, de
    ld l, $2e
    ld l, $2e
    ld l, $14
    dec d
    dec d
    dec d
    ld d, $2e
    ld l, $2e
    ld l, $2e
    ld l, $01
    daa
    ld bc, $1801
    add hl, de
    inc l
    dec l
    ld e, $01
    ld bc, $013e
    ld l, $2e
    ld bc, $7c14
    ld d, $18
    add hl, de
    ld a, [de]
    ld bc, $6d01
    ld bc, $0101
    ld l, $2e
    ld bc, $2c18
    ld e, $18
    inc a
    ld a, [de]
    ld bc, $6d77
    ld a, b
    ld bc, $2e01
    ld l, $01
    ld h, [hl]
    ld e, $14
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $4c01
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld l, $2e
    ld bc, $0101
    jr jr_011_6697

    add hl, de
    add hl, de
    dec d
    ld d, $01
    ld bc, $0128
    ld l, $2e
    ld bc, $0101
    ld h, [hl]
    dec e
    dec e
    dec e
    dec l
    ld e, $01
    ld bc, $0101
    ld l, $2e

jr_011_6697:
    ld bc, $0101
    ld bc, $6d01
    ld bc, $2801
    ld l, l
    ld a, $01
    ld bc, $2e2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld de, $0f09
    ld l, c
    ld h, a
    dec e
    ld h, a
    ret nz

    ld h, [hl]
    nop
    ld hl, $cd67
    add hl, hl
    inc a
    ld hl, $cd60
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_011_670d

    ld hl, $6718
    call Call_000_34e1
    ret nc

    ld hl, $d87f
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_66eb

    set 0, [hl]
    ld a, $e3
    ld [$d078], a
    ld a, $e7
    ld [$d079], a
    jr jr_011_66f7

jr_011_66eb:
    set 1, [hl]
    ld a, $e4
    ld [$d078], a
    ld a, $e8
    ld [$d079], a

jr_011_66f7:
    ld a, [$d078]
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, [$d079]
    ld [$cc4d], a
    ld a, $15
    jp Jump_000_3eb4


jr_011_670d:
    ld a, $a1
    ld [$d71c], a
    ld hl, $6718
    jp $6bf3


    ld b, $13
    ld b, $16
    rst $38
    ldh [rNR44], a
    ldh [rNR44], a
    ld a, l
    rlca
    inc bc
    dec b
    nop
    sbc a
    dec c
    dec b
    nop
    and c
    rlca
    dec c
    ld [bc], a
    sbc a
    rrca
    inc de
    inc bc
    sbc a
    inc bc
    add hl, de
    inc bc
    and c
    dec bc
    add hl, de
    dec b
    sbc a
    ld c, $19
    inc b
    and c
    nop
    ld [bc], a
    ld c, c
    ld a, [bc]
    ld d, $ff
    db $10
    ld bc, $0a49
    dec de
    rst $38
    db $10
    ld [bc], a
    dec d
    rst $00
    inc bc
    dec b
    ld a, [hl]
    rst $00
    dec c
    dec b
    ld b, e
    rst $00
    rlca
    dec c
    sbc d
    rst $00
    rrca
    inc de
    rra
    rst $00
    inc bc
    add hl, de
    ld [hl], e
    rst $00
    dec bc
    add hl, de
    sbc l
    rst $00
    ld c, $19
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld bc, $013e
    ld bc, $0101
    ld bc, $0101
    ld bc, $3c14
    ld d, $2e
    ld l, $01
    ld bc, $0101
    inc d
    dec d
    ld d, $01
    ld bc, $1c01
    dec l
    ld e, $2e
    ld l, $01
    ld bc, $0101
    jr jr_011_67da

    ld a, [de]
    ld bc, $5278
    ld [hl], a
    ld bc, $2e01
    ld l, $14
    dec d
    dec d
    dec d
    add hl, de
    add hl, de
    add hl, de
    dec d
    dec d
    ld d, $01
    ld bc, $2e01
    ld l, $1c
    dec e
    add hl, hl
    dec e
    dec e
    dec e
    dec hl
    add hl, de
    add hl, de
    ld a, [de]
    inc d
    ld a, h
    ld d, $2e
    ld l, $01
    jr z, @+$03

    ld bc, $0101
    inc e
    dec l
    dec e
    ld e, $18
    add hl, de
    ld a, [de]
    ld l, $2e
    ld bc, $0101
    ld bc, $0101
    db $10

jr_011_67da:
    ld bc, $013e
    inc e
    ld a, c
    ld e, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $11
    add hl, bc
    rrca
    ld [hl], l
    ld l, c
    add hl, bc
    ld l, c
    db $fc
    ld h, a
    nop
    dec d
    ld l, c
    call Call_000_3c29
    ld hl, $cd60
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_011_684b

    ld hl, $6865
    call Call_000_34e1
    ret nc

    ld hl, $d880
    ld a, [$cd3d]
    cp $01
    jr nz, jr_011_6827

    set 0, [hl]
    ld a, $e5
    ld [$d078], a
    ld a, $e9
    ld [$d079], a
    jr jr_011_6833

jr_011_6827:
    set 1, [hl]
    ld a, $e6
    ld [$d078], a
    ld a, $ea
    ld [$d079], a

jr_011_6833:
    ld a, [$d078]
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, [$d079]
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    jr jr_011_685c

jr_011_684b:
    ld a, $a2
    ld [$d71c], a
    ld hl, $6865
    call $6bf3
    ld a, [$d731]
    bit 4, a
    ret nz

jr_011_685c:
    ld hl, $686a
    ld a, [$d665]
    jp Jump_000_3d93


    db $10
    inc bc
    db $10
    ld b, $ff
    ld [hl], d
    ld l, b
    xor b
    ld l, b
    or e
    ld l, b
    cp $68
    ld a, [$d87f]
    and $03
    cp $03
    ret z

    ld a, [$d360]
    cp $08
    ret nz

    ld a, [$d361]
    cp $0f
    ret nz

    ld hl, $ccd3
    ld de, $68a1
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld hl, $d732
    set 2, [hl]
    ld a, $01
    ld [$d665], a
    ret


    add b
    ld b, $10
    dec b
    add b
    inc bc
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $00
    ld [$d665], a
    ret


    ld a, [$d87f]
    and $03
    cp $03
    ret z

    ld a, [$d361]
    cp $12
    jr z, jr_011_68cd

    cp $13
    ld a, $00
    jr nz, jr_011_68ea

    ld de, $68ee
    jr jr_011_68d0

jr_011_68cd:
    ld de, $68f7

jr_011_68d0:
    ld hl, $ccd3
    call Call_000_3509
    dec a
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld hl, $d72f
    set 7, [hl]
    ld hl, $d732
    set 2, [hl]
    ld a, $03

jr_011_68ea:
    ld [$d665], a
    ret


    add b
    ld b, $10
    ld [bc], a
    add b
    inc b
    jr nz, jr_011_68f7

    rst $38

jr_011_68f7:
    add b
    ld b, $10
    ld [bc], a
    add b
    inc b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $00
    ld [$d665], a
    ret


    ldh [rNR44], a
    ldh [rNR44], a
    ldh [rNR44], a
    ldh [rNR44], a
    ldh [rNR44], a
    ldh [rNR44], a
    ld a, l
    rlca
    inc c
    dec b
    ld bc, $06a0
    ld [$a202], sp
    inc b
    add hl, de
    inc bc
    and d
    inc bc
    add hl, de
    inc b
    and b
    ld c, $19
    ld b, $a0
    ld de, $0014
    and d
    ld de, $0115
    and d
    nop
    ld b, $49
    ld [de], a
    add hl, bc
    rst $38
    db $10
    ld bc, $1349
    rlca
    rst $38
    db $10
    ld [bc], a
    ld c, c
    ld [de], a
    inc c
    rst $38
    db $10
    inc bc
    ld c, c
    ld [de], a
    dec c
    rst $38
    db $10
    inc b
    ld c, c
    ld a, [bc]
    ld d, $ff
    rst $38
    dec b
    ld c, c
    ld a, [bc]
    rla
    rst $38
    rst $38
    ld b, $7e
    rst $00
    inc c
    dec b
    ld b, c
    rst $00
    ld b, $08
    inc [hl]
    rst $00
    inc b
    add hl, de
    rra
    rst $00
    inc bc
    add hl, de
    sbc l
    rst $00
    ld c, $19
    or b
    rst $00
    ld de, $b014
    rst $00
    ld de, $1415
    dec d
    dec d
    dec d
    ld d, $02
    ld [bc], a
    db $76
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    dec d
    dec d
    ld d, $18
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    db $76
    db $76
    db $76
    db $76
    db $76
    jr jr_011_69a9

    dec a
    add hl, de
    ld a, [de]
    jr jr_011_69ae

    inc l
    add hl, hl
    ld e, $14
    dec d
    dec d
    ld d, $76
    inc e
    dec e
    ld a, c
    dec e
    ld e, $18
    add hl, de
    ld a, [de]
    ld bc, $1827
    inc l

jr_011_69a9:
    dec l
    ld e, $76
    inc d
    dec d

jr_011_69ae:
    dec d
    dec d
    ld d, $18
    add hl, de
    add hl, de
    dec d
    dec d
    add hl, de
    ld a, [de]
    db $76
    db $76
    db $76
    inc e
    dec l
    dec hl
    add hl, de
    ld a, [de]
    jr jr_011_69db

    add hl, de
    inc l
    dec e
    dec hl
    ld a, [de]
    db $76
    db $76
    db $76
    db $76
    db $76
    jr jr_011_69e7

    ld a, [de]
    inc e
    dec e
    ld h, c
    ld e, $01
    jr jr_011_69ef

    dec d
    dec d
    ld d, $76
    inc d

jr_011_69db:
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0c01
    rrca
    ld bc, $1d1c
    dec e
    add hl, hl

jr_011_69e7:
    ld e, $76
    inc e
    ld h, c
    dec e
    ld e, $01
    ld a, b

jr_011_69ef:
    ld b, $77
    rrca
    ld bc, $0101
    ld bc, $767a
    ld l, l
    ld bc, $0101
    ld de, $0f09
    ld l, h
    ld l, e
    xor $6a
    ld [$006a], sp
    ld l, $6b
    call Call_000_3c29
    ld a, [$d667]
    ld hl, $6a1f
    jp Jump_000_3d93


jr_011_6a14:
    xor a
    ld [$cd6b], a
    ld [$d667], a
    ld [$da38], a
    ret


    add hl, sp
    ld l, d
    ld a, c
    ld l, d
    adc b
    ld l, d
    jp nc, $296a

    ld l, d
    ld a, [$d056]
    cp $ff
    jr z, jr_011_6a14

    call Call_000_3211
    ld a, $00
    ld [$d667], a
    ret


    ld a, [$d87f]
    and $03
    cp $03
    ret z

    ld hl, $6a70
    call Call_000_34bc
    ret nc

    ld a, [$cd3d]
    cp $03
    jr nc, jr_011_6a58

    ld a, $40
    ld [$ccd4], a
    ld a, $02
    jr jr_011_6a5a

jr_011_6a58:
    ld a, $01

jr_011_6a5a:
    ld [$cd38], a
    ld a, $40
    ld [$ccd3], a
    call Call_000_3415
    ld hl, $d732
    res 2, [hl]
    ld a, $01
    ld [$d667], a
    ret


    ld de, $1114
    dec d
    db $10
    inc d
    db $10
    dec d
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $00
    ld [$d667], a
    ret


    ld a, [$d880]
    and $03
    cp $03
    ld a, $00
    jr z, jr_011_6abb

    ld hl, $6abf
    call Call_000_34bc
    ld a, $00
    jr nc, jr_011_6abb

    ld a, [$cd3d]
    cp $01

jr_011_6aa2:
    jr nz, jr_011_6aa9

    ld de, $6acb
    jr jr_011_6aac

jr_011_6aa9:
    ld de, $6ac4

jr_011_6aac:
    ld hl, $ccd3
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld a, $03

jr_011_6abb:
    ld [$d667], a
    ret


    ld c, $04
    ld c, $05
    rst $38
    ld b, b
    inc bc
    db $10
    ld [bc], a
    ld b, b
    ld bc, $40ff
    inc bc
    db $10
    inc bc
    ld b, b
    ld bc, $faff
    jr c, jr_011_6aa2

    ld b, a
    cp $01
    call z, Call_011_6ae4
    ld a, b
    and a
    ret nz

    ld a, $00
    ld [$d667], a
    ret


Call_011_6ae4:
    xor a
    ld [$d6ff], a
    ld [$d119], a
    jp Jump_000_0fd6


    ldh [rNR44], a
    ldh [rNR44], a
    dec b
    ld l, e
    inc h
    ld l, e
    add hl, hl
    ld l, e
    ld [bc], a
    nop
    add c
    ret c

    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld l, e
    inc d
    ld l, e
    rst $38
    ld [$f821], sp
    ld l, d
    call Call_000_3168
    ld a, $04
    ld [$d667], a
    jp Jump_000_23d2


    rla
    ld [de], a
    ld e, [hl]
    daa
    ld [$4a3e], sp
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


    rla
    dec de
    ld e, [hl]
    daa
    ld d, b
    rla
    ld b, l
    ld e, [hl]
    daa
    ld d, b
    ld a, l
    inc b
    ld de, $0514
    and c
    ld de, $0615
    and c
    rlca
    dec bc
    ld bc, $04a1
    add hl, de
    ld [bc], a
    and c
    ld [bc], a
    rrca
    add hl, bc
    inc b
    ld bc, $0517
    inc bc
    ld c, c
    inc de
    ld [$ffff], sp
    ld bc, $1349
    add hl, bc
    rst $38
    rst $38
    ld [bc], a
    add hl, bc
    dec b
    ld a, [bc]
    rst $38
    ret nc

    ld b, e
    ld c, d
    ld [hl-], a
    or b
    rst $00
    ld de, $b014
    rst $00
    ld de, $4215
    rst $00
    rlca
    dec bc
    inc [hl]
    rst $00
    inc b
    add hl, de
    ld l, $76
    inc d
    dec d
    dec d
    ld d, $76
    inc d
    dec d
    dec d
    dec d
    ld [hl], l
    dec d
    ld d, $2e
    ld l, $76
    inc e
    dec l
    dec e
    ld e, $76
    jr jr_011_6b9d

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld l, $2e
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    jr jr_011_6bbf

    dec e
    dec e
    dec l
    ld h, c
    ld e, $2e
    ld l, $76
    db $76
    inc d

jr_011_6b9d:
    dec d
    ld a, h
    dec d
    add hl, de
    ld a, [de]
    db $76
    db $76
    db $76
    db $76
    db $76
    ld l, $2e
    db $76
    db $76
    jr @+$1b

    add hl, de
    add hl, de
    inc l
    ld e, $76
    db $76
    db $76
    db $76
    db $76
    ld l, $2e
    db $76
    db $76
    ld h, [hl]
    dec e
    dec e
    dec hl
    ld a, [de]

jr_011_6bbf:
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    ld l, $2e
    db $76
    db $76
    db $76
    db $76
    db $76
    jr jr_011_6be8

    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    ld l, $2e
    db $76
    db $76
    inc d
    ld [hl], l
    dec d
    add hl, de
    add hl, de
    dec d
    ld d, $76
    db $76
    db $76
    db $76
    ld l, $2e
    ld [bc], a
    db $76
    inc e

jr_011_6be8:
    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $76
    ld [bc], a
    ld c, h
    ld [bc], a
    ld l, $af
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


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_011_7ecb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
