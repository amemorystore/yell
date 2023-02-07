;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $03d", ROMX[$4000], BANK[$3d]

    ld a, [$d056]
    dec a
    jr nz, jr_03d_4044

    ld a, [$d35d]
    cp $90
    jr c, jr_03d_4011

    cp $95
    jr c, jr_03d_4064

jr_03d_4011:
    ld a, [$d059]
    cp $04
    jr nz, jr_03d_4030

    ld hl, $50d0
    ld b, $3f
    call Call_000_3e84
    ld e, $24
    jr c, jr_03d_4026

    ld e, $0a

jr_03d_4026:
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    jr jr_03d_4036

jr_03d_4030:
    ld a, [$cfd7]
    call Call_000_118b

jr_03d_4036:
    ld hl, $40c7
    ld a, [$d05e]
    and a
    jr z, jr_03d_4042

    ld hl, $40cc

jr_03d_4042:
    jr jr_03d_404f

jr_03d_4044:
    call Call_03d_40b5
    ld c, $14
    call Call_000_372f
    ld hl, $40d6

jr_03d_404f:
    ld a, [$d059]
    and a
    jr nz, jr_03d_405f

    push hl
    ld hl, $68df
    ld b, $0e
    call Call_000_3e84
    pop hl

jr_03d_405f:
    call Call_000_3c36
    jr jr_03d_40c6

jr_03d_4064:
    ld b, $48
    call Call_000_3422
    ld a, [$cfd7]
    ld [$cf90], a
    cp $91
    jr z, jr_03d_408f

    ld a, b
    and a
    jr z, jr_03d_4081

    ld hl, $6c87
    ld b, $0f
    call Call_000_3e84
    jr jr_03d_4011

jr_03d_4081:
    ld hl, $40d1
    call Call_000_3c36
    ld hl, $40e0
    call Call_000_3c36
    jr jr_03d_40c6

jr_03d_408f:
    ld a, b
    and a
    jr z, jr_03d_4081

    ld hl, $40d1
    call Call_000_3c36
    ld hl, $40db
    call Call_000_3c36
    ld hl, $6c87
    ld b, $0f
    call Call_000_3e84
    ld hl, $492b
    ld b, $1c
    call Call_000_3e84
    ld hl, $40c7
    call Call_000_3c36

Call_03d_40b5:
    xor a
    ld [$c0f1], a
    ld a, $80
    ld [$c0f2], a
    ld a, $e9
    call Call_000_2238
    jp Jump_000_373e


jr_03d_40c6:
    ret


    rla
    ld h, l
    ld a, e
    daa
    ld d, b
    rla
    ld a, e
    ld a, e
    daa
    ld d, b
    rla
    nop
    ld b, b
    jr z, jr_03d_4126

    rla
    rrca
    ld b, b
    jr z, jr_03d_412b

    rla
    inc h
    ld b, b
    jr z, jr_03d_4130

    rla
    ld c, a
    ld b, b
    jr z, @+$52

    ld hl, $cfe5
    ld a, [hl+]
    or [hl]
    ld hl, $413a
    jr z, jr_03d_4137

    xor a
    ldh [$96], a
    ld hl, $cfe5
    ld a, [hl+]
    ld [$cce3], a
    ldh [$97], a
    ld a, [hl]
    ld [$cce4], a
    ldh [$98], a
    ld a, $19
    ldh [$99], a
    call Call_000_38a5
    ld hl, $cff3
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    ld a, b
    ld b, $04
    ldh [$99], a
    call Call_000_38b2
    ldh a, [$98]
    ld hl, $413a
    cp $46
    jr nc, jr_03d_4137

jr_03d_4126:
    ld hl, $4141
    cp $28

jr_03d_412b:
    jr nc, jr_03d_4137

    ld hl, $4148

jr_03d_4130:
    cp $0a
    jr nc, jr_03d_4137

    ld hl, $414f

jr_03d_4137:
    jp Jump_000_3c36


    rla
    ld l, l
    ld b, b
    jr z, @+$0a

    jr jr_03d_4154

    rla
    ld [hl], h
    ld b, b
    jr z, @+$0a

    jr jr_03d_4154

    rla
    ld a, [hl]
    ld b, b
    jr z, @+$0a

    jr jr_03d_4154

    rla
    add a
    ld b, b
    jr z, @+$0a

jr_03d_4154:
    ld hl, $4158
    ret


    rla
    and c
    ld b, b
    jr z, jr_03d_41ad

    ld hl, $4163
    jp Jump_000_3c36


    rla
    and a
    ld b, b
    jr z, jr_03d_4170

    push de
    push bc
    ld hl, $cfe6
    ld de, $cce4

jr_03d_4170:
    ld b, [hl]
    dec hl
    ld a, [de]
    sub b
    ldh [$98], a
    dec de
    ld b, [hl]
    ld a, [de]
    sbc b
    ldh [$97], a
    ld a, $19
    ldh [$99], a
    call Call_000_38a5
    ld hl, $cff3
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    ld a, b
    ld b, $04
    ldh [$99], a
    call Call_000_38b2
    pop bc
    pop de
    ldh a, [$98]
    ld hl, $41b1
    and a
    ret z

    ld hl, $41ca
    cp $1e
    ret c

    ld hl, $41b8
    cp $46
    ret c

jr_03d_41ad:
    ld hl, $41bf
    ret


    rla
    xor [hl]
    ld b, b
    jr z, @+$0a

    jr jr_03d_41c6

    rla
    cp b
    ld b, b
    jr z, @+$0a

    jr jr_03d_41c6

    rla
    cp [hl]
    ld b, b
    jr z, @+$0a

    jr jr_03d_41c6

jr_03d_41c6:
    ld hl, $41ca
    ret


    rla
    add $40
    jr z, jr_03d_421f

    call Call_000_36a3
    ld hl, $c3f3
    ld bc, $070c
    call Call_000_16f0
    ld hl, $c408
    ld de, $d157
    call Call_000_1723
    ld hl, $c46c
    ld de, $d886
    call Call_000_1723
    ld hl, $c449
    ld a, $69
    ld [hl+], a
    ld [hl], $6a
    xor a
    ld [$cfca], a
    ld hl, $69e9
    ld b, $0e
    call Call_000_3e84
    ld c, $96
    jp Jump_000_372f


    ldh a, [$f3]
    and a
    ld a, [$d05f]
    ld hl, $d025
    jr z, jr_03d_4217

    ld a, [$d064]
    ld hl, $cff6

jr_03d_4217:
    ld c, $04
    ld b, a

jr_03d_421a:
    srl b
    call c, Call_03d_4225

jr_03d_421f:
    inc hl
    inc hl
    dec c
    ret z

    jr jr_03d_421a

Call_03d_4225:
    ld a, [hl]
    add a
    ld [hl-], a
    ld a, [hl]
    rl a
    ld [hl+], a
    ret


    ldh a, [$f3]
    and a
    ld a, [$d060]
    ld hl, $d024
    jr z, jr_03d_423e

    ld a, [$d065]
    ld hl, $cff5

jr_03d_423e:
    ld c, $04
    ld b, a

jr_03d_4241:
    srl b
    call c, Call_03d_424c
    inc hl
    inc hl
    dec c
    ret z

    jr jr_03d_4241

Call_03d_424c:
    ld a, [hl]
    srl a
    ld [hl+], a
    rr [hl]
    or [hl]
    jr nz, jr_03d_4257

    ld [hl], $01

jr_03d_4257:
    dec hl
    ret


    xor a
    ld [$cfd7], a
    ld b, $01
    call Call_000_3e05
    ld hl, $615a
    ld b, $3d
    call Call_000_3e84
    ld hl, $c3b3
    ld c, $00

jr_03d_426f:
    inc c
    ld a, c
    cp $07
    ret z

    ld d, $00
    push bc
    push hl

jr_03d_4278:
    call Call_03d_428d
    inc hl
    ld a, $07
    add d
    ld d, a
    dec c
    jr nz, jr_03d_4278

    ld c, $04
    call Call_000_372f
    pop hl
    pop bc
    dec hl
    jr jr_03d_426f

Call_03d_428d:
    push hl
    push de
    push bc
    ld e, $07

jr_03d_4292:
    ld [hl], d
    ld bc, $0014
    add hl, bc
    inc d
    dec e
    jr nz, jr_03d_4292

    pop bc
    pop de
    pop hl
    ret


    ld hl, $c404
    ld c, $00

jr_03d_42a4:
    inc c
    ld a, c
    cp $09
    ret z

    ld d, $5b
    push bc
    push hl

jr_03d_42ad:
    call Call_03d_42c2
    dec hl
    ld a, d
    sub $07
    ld d, a
    dec c
    jr nz, jr_03d_42ad

    ld c, $02
    call Call_000_372f
    pop hl
    pop bc
    inc hl
    jr jr_03d_42a4

Call_03d_42c2:
    push hl
    push de
    push bc
    ld e, $07

jr_03d_42c7:
    ld a, d
    cp $31
    jr nc, jr_03d_42ce

    ld a, $7f

jr_03d_42ce:
    ld [hl], a
    ld bc, $0014
    add hl, bc
    inc d
    dec e
    jr nz, jr_03d_42c7

    pop bc
    pop de
    pop hl
    ret


    ld a, [de]
    cp $a5
    ret z

    ld hl, $d061
    ld a, [hl+]
    and $07
    ret nz

    bit 6, [hl]
    ret nz

    ld hl, $d02c
    call Call_03d_4301
    ld a, [$d063]
    bit 3, a
    ret nz

    ld hl, $d187
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a74

Call_03d_4301:
    ld a, [$cc2e]
    ld c, a
    ld b, $00
    add hl, bc
    dec [hl]
    ret


    ld a, d
    cp $04
    jr z, jr_03d_4320

    cp $06
    jr z, jr_03d_4320

    push de
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    pop de
    ret nc

    jr jr_03d_432b

jr_03d_4320:
    push de
    ld hl, $4db8
    ld b, $3f
    call Call_000_3e84
    pop de
    ret nc

jr_03d_432b:
    push de
    ld e, $00
    ld a, [$d46f]
    cp $64
    jr c, jr_03d_433b

    inc e
    cp $c8
    jr c, jr_03d_433b

    inc e

jr_03d_433b:
    ld c, d
    dec c
    ld b, $00
    ld hl, $4385
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, $00
    add hl, de
    ld a, [hl]
    cp $64

jr_03d_434b:
    ld a, [$d46f]
    jr nc, jr_03d_4357

    add [hl]
    jr nc, jr_03d_435b

    ld a, $ff
    jr jr_03d_435b

jr_03d_4357:
    add [hl]
    jr c, jr_03d_435b

    xor a

jr_03d_435b:
    ld [$d46f], a
    pop de
    dec d
    ld hl, $43a6
    ld e, d
    ld d, $00
    add hl, de
    ld a, [hl]
    ld b, a
    cp $80
    jr z, jr_03d_4384

    ld a, [$d470]
    jr c, jr_03d_437d

    cp b
    jr nc, jr_03d_4384

    ld a, [$d49b]
    and a
    jr nz, jr_03d_4384

    jr jr_03d_4380

jr_03d_437d:
    cp b
    jr c, jr_03d_4384

jr_03d_4380:
    ld a, b
    ld [$d470], a

jr_03d_4384:
    ret


    dec b
    inc bc
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    ld bc, $0001
    inc bc
    ld [bc], a
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $fd01
    db $fd
    ei
    rst $38
    rst $38
    rst $38
    ei
    ei
    or $fb
    ei
    or $f6
    or $ec
    adc d
    add e
    add b
    add b
    sub h
    add b
    ld h, d
    ld l, h
    ld h, d
    ld l, h
    nop
    ld b, h
    cp c
    rla
    and l
    add hl, sp
    sbc $18
    sbc b
    call $0553
    ldh a, [$8b]
    adc h
    jr jr_03d_434b

    and l
    daa
    ld h, e
    ld h, h
    jp nc, $cd23

    sub h
    jp c, Jump_000_350e

    ld d, b
    ret nc

    ld c, h
    db $e3
    adc d
    db $fc
    jp nz, $5621

    rla
    ld c, c
    ld d, d
    inc l
    db $10
    db $fd
    rla
    rla
    db $eb
    bit 2, h
    add h
    ld a, [hl]
    dec b
    dec b
    ld [c], a
    xor b
    cp d
    ld hl, sp+$15
    cp [hl]
    ld [hl+], a
    call nc, $d194
    ld d, e
    dec [hl]
    xor a
    jp nz, $8d34

    db $ed
    and e
    and [hl]
    push af
    db $d3
    or [hl]
    and e
    ret z

    sbc $8b
    jr nc, jr_03d_4455

    ld b, a
    inc sp
    adc h
    ld de, $9331
    ld d, h
    sub b
    add h
    ld b, h
    sbc e
    and h
    call nz, $84d9
    xor c

jr_03d_4410:
    adc d
    ld d, d
    ld e, l
    inc bc
    push af
    ld d, l
    sub h
    sbc d
    xor e
    inc h
    cpl
    pop af
    or h
    ld b, d
    dec bc
    rst $38
    ret nz

    db $fc
    ld c, [hl]
    sub [hl]
    and c
    ld hl, sp+$23
    ld c, a
    sub $62
    and h
    jr nz, jr_03d_4410

    jr c, jr_03d_4493

jr_03d_442f:
    ld c, c
    ld de, $4593
    ld h, [hl]
    ld [hl], b
    and a
    ld e, a
    dec b
    dec e
    ld c, b
    reti


    reti


    ld a, [bc]
    add hl, de
    db $dd
    ld e, $50
    ld b, h
    cp c
    push de
    xor b
    add sp, $68
    db $e3
    ld e, l
    ld d, d
    jr jr_03d_442f

    ld a, a
    push af
    ldh a, [$8e]
    daa
    and b
    db $ed
    push af
    add c

jr_03d_4455:
    inc b
    jp c, $e88a

    ld a, [hl]

jr_03d_445a:
    ld e, $cd
    jr z, jr_03d_44b2

    add l
    ld a, [$6a0a]
    sub h
    push de
    ld b, a
    call nc, $8c3a
    jr nz, @-$75

    and d
    ld l, [hl]

jr_03d_446c:
    db $fd
    add d
    and e
    ld a, [de]
    ld a, [hl+]
    call nc, $a58f
    ld a, [hl]
    jp nc, $a317

    ld a, [bc]
    db $fd
    ld sp, hl
    and d
    ld l, [hl]
    cp b
    jr z, jr_03d_445a

    ld [c], a
    rst $18
    sub h
    ld d, h
    and $f8
    sub [hl]
    adc [hl]
    add a
    push af
    db $d3
    xor d
    ld a, [de]
    adc a
    inc hl
    ld [hl], l
    ld a, [hl+]
    ld [hl], h
    xor l

jr_03d_4493:
    ld b, a
    ld [de], a
    ld h, b
    rst $00
    ld a, [de]
    ret nc

    ld d, [hl]
    ld b, h
    ld [hl], c
    ld hl, $2318
    inc e
    ld d, b
    ld h, $3f
    ld b, d
    xor d
    ld a, [hl-]
    ld h, b
    adc d
    ld h, c
    ld b, c
    ld d, [hl]
    rst $30
    and b
    sub d
    adc d
    ld a, [bc]
    ld a, [hl+]
    xor b

jr_03d_44b2:
    call nz, $845e
    ld e, h
    adc l
    ld l, h
    inc d
    add d
    call nz, $31fe
    db $76
    sub e
    ld d, l

jr_03d_44c0:
    ld c, b
    dec h
    ld e, e
    add $30

jr_03d_44c5:
    ld h, e
    ccf
    add h
    ld l, c
    dec e
    ld a, [hl]
    ld [hl-], a
    ld a, e
    adc b
    ld h, a
    ld [hl], h
    ld a, c
    ld b, b
    ld b, h
    cp d
    call nc, Call_03d_57e9
    ld a, [$9f39]
    xor b
    reti


    ld a, [hl]
    ld d, h
    sbc b
    ld [c], a
    ld a, d
    jr jr_03d_446c

    ld l, d
    adc h
    inc d
    and l
    ld [hl], $bf
    push de
    ld a, [$4e25]
    rlca
    rst $38
    adc [hl]
    jr jr_03d_44c0

    cp a
    call nc, Call_000_0fd5
    pop bc
    ld b, c
    sub l
    ld a, [de]
    jr jr_03d_44c5

    push de
    xor b
    inc d
    xor d
    and l
    ld c, c
    ld [hl], h
    add l
    ld a, l
    ld a, b
    db $e4
    ld e, l
    ret c

    ld l, b
    rst $20
    add [hl]
    ld a, $ea
    ld a, e
    ld a, [bc]
    ld sp, hl
    db $d3
    ld e, a
    cp $66
    xor c
    adc [hl]
    ld e, l
    ld a, c
    and l
    cp $95
    sbc h
    rst $18
    cp $3c
    jp nc, $e6ab

    cp a
    db $fc
    add sp, -$2d
    rst $38
    and $9f
    ld d, h
    rst $38
    dec d
    rst $18
    sub e
    inc d
    add sp, -$3f
    ldh a, [$c2]
    sbc h
    add hl, bc
    adc h
    ld h, a
    rla
    add hl, de
    pop de
    push de
    rra
    adc l
    nop
    ld hl, $46fb
    ld de, $9000
    ld bc, $0730
    ld a, $3d
    call Call_000_009d
    ld hl, $4e2b
    ld de, $8fd0
    ld bc, $0030
    ld a, $3d
    call Call_000_009d
    ld hl, $4e5b
    ld de, $8800
    ld bc, $0400
    ld a, $3d
    call Call_000_009d
    ld hl, $525b
    ld de, $8f00
    ld bc, $00c0
    ld a, $3d
    call Call_000_009d
    ret


    ld hl, $c3b6
    ld de, $45f9
    ld bc, $0710
    call Call_03d_45e7
    ret


    ld hl, $c3f6
    ld de, $4673
    ld bc, $0407
    call Call_03d_45e7
    ld hl, $c449
    ld [hl], $64
    inc hl
    ld [hl], $65
    ret


    ld hl, $c444
    ld de, $468f
    ld bc, $090c
    call Call_03d_45e7
    ld hl, $c478
    ld [hl], $96
    ld hl, $c48c
    ld [hl], $9d
    ld hl, $c4a0
    ld [hl], $a7
    ld hl, $c4b4
    ld [hl], $b1
    ld hl, $45c7
    ld de, $c300
    ld bc, $0020
    call Call_000_00b1
    ret


    ld h, b
    ld b, b
    pop af
    ld [hl+], a
    ld h, b
    ld c, b
    ldh a, [rNR43]
    ld l, b
    ld b, b
    di
    ld [hl+], a
    ld l, b
    ld c, b
    ld a, [c]
    ld [hl+], a
    ld h, b
    ld h, b
    ldh a, [rSC]
    ld h, b
    ld l, b
    pop af
    ld [bc], a
    ld l, b
    ld h, b
    ld a, [c]
    ld [bc], a
    ld l, b
    ld l, b
    di
    ld [bc], a

Call_03d_45e7:
jr_03d_45e7:
    push bc
    push hl

jr_03d_45e9:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_03d_45e9

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_03d_45e7

jr_03d_45f8:
    ret


    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    ld c, c
    db $f4
    ld [hl], d
    jr nc, jr_03d_45f8

    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $fd
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    db $f4
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03d_464c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03d_465c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    db $f4
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03d_467c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    db $f4
    ld b, c
    ld b, d

jr_03d_464c:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    db $f4
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    db $f4
    ld l, d
    ld l, e

jr_03d_465c:
    ld l, h
    ld l, l
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    db $f4
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld e, a
    inc h
    dec h
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld a, [hl+]
    ld d, b
    ld d, c

jr_03d_467c:
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
    ld l, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    add b
    add c
    add d
    add e
    nop
    nop
    nop
    nop
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc l
    adc [hl]
    adc a
    adc d
    sub b
    sub c
    nop
    sub d
    sub e
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    sub h
    sub l
    nop
    nop
    nop
    sub a
    adc d
    adc d
    sbc b
    sbc c
    adc d
    adc d
    sbc d
    sbc e
    sbc h
    nop
    nop
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    adc d
    nop
    xor b
    xor c
    xor d
    adc d
    xor e
    xor h
    adc d
    xor l
    xor [hl]
    xor a
    or b
    nop
    or d
    or e
    or h
    adc d
    adc d
    adc d
    adc d
    or l
    or [hl]
    or a
    cp b
    nop
    cp c
    cp d
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    cp e
    cp h
    nop
    nop
    nop
    cp l
    adc d
    adc d
    adc d
    adc d
    adc d
    adc d
    cp [hl]
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    rlca
    rra
    cp [hl]
    ld a, a
    rst $30
    ld hl, sp-$41
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    nop
    jr c, @+$01

    rst $38
    rst $38
    ld a, h
    add e
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
    add b
    nop
    ret nz

    ldh [$e8], a
    ldh a, [$bc]
    ld a, b
    xor $1c
    or $0e
    cp $07
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0501
    inc bc
    nop
    rlca
    dec b
    inc bc
    cpl
    rra
    ld a, h
    rst $38
    rst $28
    ldh a, [rIE]
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [$e4], a
    adc $fe
    rst $08
    db $eb
    rst $18
    ld e, a
    ld sp, hl
    ld a, a
    ldh a, [$6f]
    ldh a, [$5f]
    ldh [$7f], a
    ret nz

    nop
    ld bc, $0103
    ld [bc], a
    add c
    ret nz

    jp $e3f7


    or a
    ld a, a
    db $dd
    ld a, $db
    inc a
    or a
    rst $08
    sbc h
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    pop bc
    rst $38
    ld a, a
    add b
    rst $38
    nop
    jp Jump_000_003c


    add b
    ld b, d
    add c
    ld b, c
    add e
    jp $f383


    db $e3
    rst $38
    ld [hl], e
    jp nc, $fe3f

    rra
    inc bc
    ld bc, $ff03
    rst $38
    rst $38
    ld a, e
    add a
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $fcfe
    db $fc
    cp $fc
    add [hl]
    cp $86
    cp $86
    cp $06
    rst $38
    ld b, $fa
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
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    db $10
    ldh [$7b], a
    db $fc
    ld a, a
    rst $38
    ld a, h
    jp $c07f


    ld l, a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    ldh [$f5], a
    ld a, [c]
    ei
    scf
    jp c, Jump_000_0037

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
    ret c

    ldh [$fd], a
    cp $0b
    inc e
    dec l
    ld e, $07
    ld a, [hl]
    add [hl]
    ld a, a
    inc bc
    ld a, a
    ld b, c
    ccf
    ld bc, $203f
    rra
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
    cpl
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$01
    nop
    ldh [$1f], a
    rst $28
    rra
    rst $38
    rrca
    rst $30
    rrca
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld_long a, $ff07
    inc bc
    rst $38
    add e
    rst $38
    jp $e3df


    rst $18
    db $e3
    ld e, e
    rst $20
    ld a, a
    rst $00
    nop
    rlca
    add b
    rlca
    add b
    rlca
    or h
    rrca
    cp a
    ld a, a
    rst $18
    ldh [rIE], a
    add b
    rst $20
    jr @+$01

    ldh [$2f], a
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$ef]
    ldh a, [$7f]
    ldh a, [$d7]
    jr c, @+$01

    jr jr_03d_489b

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fd
    cp $07
    or $0f
    ei
    rlca
    rst $30
    jr c, @+$01

    ld [hl], b
    rst $28
    ldh a, [$ef]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ld h, b
    rst $28
    ldh a, [$bf]
    ld a, h
    ld a, a
    ld hl, sp-$09
    ld hl, sp-$42
    pop bc
    db $fd
    add e
    ld a, e
    add a
    rst $30
    ld c, $ff
    nop
    sbc $3f
    or a
    ld a, [hl]
    ld h, a
    cp $ef
    or $f7
    cp $5d
    cp [hl]
    db $ed
    ld e, $f7
    rrca

jr_03d_489b:
    cp $01
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

jr_03d_48a7:
    rst $38
    nop
    rst $38
    nop
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    ei
    rlca
    rst $38
    ld b, $00
    inc bc
    jr nc, jr_03d_48ce

    cp a
    ld a, a
    rst $28
    ldh a, [$bf]
    ret nz

    rst $20
    jr jr_03d_48a7

    jr nc, @+$01

    jr nc, jr_03d_493b

    ldh a, [$2f]

jr_03d_48ce:
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$d7]
    jr c, @+$01

    jr @-$13

    inc e
    ld a, e
    adc h
    db $dd
    ld a, $fd
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $28
    inc e
    db $eb
    inc e
    rst $38
    ld [$08ff], sp
    rst $20
    ld e, $fc
    ld b, $f4
    ld c, $fe

jr_03d_48f2:
    inc c
    db $fc
    inc c
    add sp, $1c
    db $fc
    jr jr_03d_48f2

    jr jr_03d_490c

    rrca
    nop
    rrca
    ld [$0007], sp
    rlca
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    rra

jr_03d_490c:
    ld hl, sp+$1b
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    add a
    ld a, [hl]
    rlca
    ld a, [hl]
    ld [bc], a
    ld a, a
    inc bc
    ccf
    rst $38
    nop
    cp $01
    rst $38
    nop

jr_03d_4921:
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $01fe
    rst $30
    adc [hl]
    rst $28
    inc e
    db $db
    inc a
    cp a
    ld a, b
    ld a, a
    ld hl, sp-$31
    ld hl, sp-$71
    ld hl, sp-$75
    db $fc

jr_03d_493b:
    rst $18
    jr nc, @+$01

    jr nc, @+$01

    jr c, jr_03d_4921

    ccf
    rst $38
    rra
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    db $eb
    inc e
    rst $38
    inc c
    rst $30
    adc h
    rst $30
    adc h
    rst $30
    inc c
    rst $38
    inc c
    db $eb
    inc e
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $30
    ld a, b
    db $fd
    ld a, [hl]
    rst $28
    ld a, a
    db $e3
    ld a, a

jr_03d_496b:
    ld a, a
    ldh a, [$df]
    jr c, jr_03d_496b

    inc e
    rst $38
    rrca
    ei
    rlca
    cp $01
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$3f]
    ret nc

    ccf
    cp $07

jr_03d_498d:
    db $ed
    ld e, $df
    inc a
    ei

jr_03d_4992:
    db $fc
    db $db
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$1c
    rst $38
    rst $38
    nop

jr_03d_499d:
    rst $20
    jr @-$0f

    jr jr_03d_498d

    inc e
    rst $28
    inc e
    db $fd
    ld e, $f7
    rra
    ld d, e
    cp a
    or l
    ld c, [hl]
    rst $38
    ld c, h
    rst $38
    ld c, h
    ld e, a
    db $ec
    rst $18
    db $ec
    db $fd
    xor $f5
    xor $fe
    rst $20
    rst $30
    jr c, jr_03d_499d

    ccf
    rst $38
    rra
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc h
    rst $30
    adc h
    rst $38
    inc c
    ei
    inc c
    rst $28
    jr @+$01

    jr @+$01

    jr nc, @-$50

    ld [hl], c
    rst $30
    ld [$00ff], sp
    rst $38

jr_03d_49e0:
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a

jr_03d_49e6:
    add b
    rst $38
    add b
    rst $38
    add b
    ret nc

    jr c, jr_03d_49e6

    jr nc, jr_03d_49e0

    jr nc, jr_03d_4992

    ld [hl], b
    ldh a, [$60]
    ldh [$60], a
    ld b, b
    ldh [$e0], a
    ret nz

    nop
    nop
    add b
    nop
    add b
    add b
    add b
    ret nz

    ldh [$c0], a
    ldh a, [$60]
    ld [hl], b
    ldh [$a0], a
    ret nz

    inc bc
    ccf

jr_03d_4a0d:
    ld hl, $011f
    rra
    db $10
    rrca
    nop
    rrca
    ld [$0007], sp
    rlca
    nop
    rlca
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh [$7f], a
    ldh [$2f], a
    ldh a, [$cf]
    db $fc
    push bc
    cp $c6
    rst $38
    ld b, e
    rst $38
    pop hl
    ld a, a
    ldh [$7f], a
    and b
    ld a, a
    and b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    jp $ffff


    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03d_4a4b:
    rst $18
    jr c, jr_03d_4a0d

    ld a, b
    ld a, a
    ld hl, sp-$21
    ld hl, sp+$09
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh a, [$6f]
    db $f4
    db $e3
    pop af
    ldh [rLCDC], a
    add b
    ld b, b
    add b
    ld [hl], a
    ld hl, sp+$1d
    cp $07
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    db $10
    rrca
    ret nc

    ccf
    pop de
    ld a, $58
    or b
    ld hl, sp-$10
    ld a, b
    ldh a, [rNR10]
    ld hl, sp+$38
    ret nz

    jr nz, jr_03d_4a4b

    rrca
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    inc e
    inc bc
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $18
    nop
    rst $08
    nop
    push bc
    nop
    ld bc, $0100
    ei
    rst $20
    ld a, l
    db $e3
    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    rst $38
    rst $38
    cp $ff
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $38
    ld [hl], b
    add e
    sbc $e1
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    db $dd
    db $e3
    rst $38
    rst $38
    rlca
    rst $38
    ld bc, $ffff
    add b
    cp $81
    cp $81
    rst $38
    add c
    db $fd
    add e
    db $fd
    add e
    rst $38
    add e
    ld a, [$c087]
    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    add b
    nop
    add b
    add b
    nop

jr_03d_4af7:
    nop
    nop

jr_03d_4af9:
    nop
    nop
    ld c, b
    jr nc, jr_03d_4afe

jr_03d_4afe:
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ccf
    ldh a, [rNR21]
    ld sp, hl
    rra
    rst $38
    ld e, $ff
    inc c
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $f87e
    scf
    ld hl, sp-$0d
    ret z

    ldh a, [rLCDC]
    add b
    nop
    ret nz

    jr nz, jr_03d_4af7

    jr nz, jr_03d_4af9

    nop
    nop
    ld bc, $04fe
    ld hl, sp-$10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    inc c
    ld [hl], b
    nop
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
    inc b
    inc bc
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
    jr nz, @-$3e

    nop
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $04
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
    rst $38
    add b
    ld a, a
    ld b, $01
    nop
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
    add e
    ld b, b
    add e
    ld b, e
    add b
    nop
    nop
    nop
    nop
    nop

jr_03d_4bc6:
    nop
    nop
    nop
    nop
    nop
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld [$0807], sp
    rlca
    ld [$0407], sp
    inc bc
    nop
    nop
    ei
    add [hl]

jr_03d_4bdd:
    and $fe
    inc a
    cp $06
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$38
    jr nc, jr_03d_4bdd

    pop af
    ld e, e
    ld e, e
    ld d, l
    ld d, l
    ld d, c
    ld d, c
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
    rst $38
    nop
    rst $38
    nop
    cp l
    jp $ffff


    ld a, h
    rst $38
    nop
    cp $00
    cp $de
    jr c, jr_03d_4bc6

    ld a, c
    ld h, e
    rst $20
    rst $08
    rst $18
    rra
    and b
    ccf
    ld h, b
    ld a, a
    ldh [rIE], a
    ldh a, [$3f]
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc h
    rst $38
    ret z

    rst $38
    rst $00
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld h, e
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
    rst $38
    pop af
    ld sp, hl
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $f1
    rst $38
    ld de, $007f
    sbc a
    ret nz

    rst $28
    ldh [$f7], a
    ldh a, [$09]
    ld hl, sp+$0d
    db $fc
    dec e
    nop
    db $fd
    dec b
    ld sp, hl
    pop af
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp+$3f
    ld a, h
    rra
    inc a
    rst $38
    call z, $8fff
    rst $38
    jr @+$01

    jr c, @+$01

    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $e3
    rst $38
    add $ff
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld l, h
    rst $38
    sbc a
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    rst $20
    rst $38
    ld h, d
    rst $38
    jr nc, @+$01

    add [hl]
    rst $38
    add [hl]
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    rra
    rst $38
    add hl, de
    db $fc
    ld e, $fe
    ld a, $fe
    ld a, $fc
    ld a, [hl]
    db $fc
    ld a, h
    ld hl, sp-$04
    ldh a, [$f0]
    ldh [$f0], a
    rrca
    inc e
    inc bc
    rlca
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
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rlca
    rlca
    rlca
    rst $38
    jr c, @+$01

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fc]
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    sub b
    rst $38

jr_03d_4d1e:
    ld sp, hl
    db $fc
    cp $f0
    ld hl, sp-$80
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rP1], a
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
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $30
    ld a, b
    db $fd
    ld a, [hl]
    ldh [rSVBK], a
    add a
    rrca

jr_03d_4d6b:
    ld a, a
    ldh a, [$df]
    jr c, jr_03d_4d6b

    inc e
    rst $38
    rrca
    ei
    rlca
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    rst $38
    rst $38
    inc bc
    inc bc
    ldh a, [$fc]
    rst $38
    rst $38
    cp $07
    db $ed
    ld e, $df
    inc a
    ei
    db $fc
    db $db
    db $fc
    rra
    ld hl, sp+$1f
    jr c, jr_03d_4d1e

    rst $00
    nop
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld bc, $0102
    ld [bc], a
    ld bc, $0002
    inc bc
    nop
    rst $38
    sbc d
    ld h, l
    sub d
    ld l, l
    sub d
    ld l, l
    ld a, [hl-]
    push bc
    ld [de], a
    db $ed
    dec de
    and h
    nop
    cp a
    nop
    rst $28
    ld b, h
    cp e
    ld c, d
    or l
    ld c, d
    or l
    ld c, d
    or l
    ld c, d
    or l
    ld h, h
    sbc e
    nop
    cp $00
    db $fc
    xor b
    ld d, h
    xor b
    ld d, h
    xor b
    ld d, h
    ld hl, sp+$04
    ld d, b
    xor h
    ld d, b
    xor b
    nop
    ld hl, sp+$00
    rst $38
    ld d, e
    xor h
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, a
    xor b
    ld [hl+], a
    db $dd
    inc hl
    ld d, h

jr_03d_4de9:
    nop
    ld [hl], a
    nop
    rst $30
    ld h, e
    sbc h
    ld d, h
    xor e
    ld d, [hl]
    xor c
    ld h, e
    sbc h
    ld d, c
    xor [hl]
    ld d, [hl]
    xor c
    nop
    rst $38
    nop
    rst $38
    ld c, c
    or [hl]
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld c, c
    or [hl]
    nop
    rst $38
    nop
    ldh a, [rNR41]
    ret nc

    and b
    ld d, b
    and b
    ld d, b
    ld h, b
    sub b
    ld h, b
    sub b
    jr nz, jr_03d_4de9

    nop
    ldh a, [rSC]
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld e, $0d
    ccf
    jr jr_03d_4ea5

    jr nc, jr_03d_4ea7

    ld h, b
    db $dd
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $070b
    ld c, $1f
    dec sp
    inc e
    inc b
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
    ld hl, sp-$38
    jr nc, jr_03d_4e50

jr_03d_4e50:
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    add b
    rst $38
    ret nz

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
    ld hl, sp-$08
    rst $38
    ccf
    rst $38
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
    nop
    nop
    ret nz

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

jr_03d_4ea5:
    nop
    nop

jr_03d_4ea7:
    nop
    nop
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
    ld bc, $1f01
    rra
    rst $38
    db $fc
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ld bc, $03ff
    nop
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$7f]
    ld [hl], b
    ccf
    jr c, @+$01

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
    ld hl, sp-$08
    cp $1e
    rst $38
    rlca
    rst $38
    ld bc, $00ff
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
    adc a
    adc a
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
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
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    rra
    ld a, a
    ld a, b
    rst $38
    ldh [rIE], a
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
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    cp $0e
    db $fc
    inc e
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    rra
    inc e
    rrca
    ld c, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    dec a
    rrca
    rrca
    rlca
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    db $fc
    cp h
    ldh a, [$f0]
    ldh [$e0], a
    ld hl, sp+$38
    ldh a, [rSVBK]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03d_4fdf

    inc a
    inc a
    ld a, h
    ld l, h
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $0f
    inc c
    rst $38
    nop
    rst $38
    nop

jr_03d_4fdf:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    ret nz

    rst $38
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh a, [$30]
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    inc c
    rra
    jr jr_03d_50a5

    ld [hl], b
    rst $38
    ldh [rIE], a
    add b
    db $fc
    call z, $8cfc
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    cp $06
    cp $06
    cp $06
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rra
    jr jr_03d_5065

    jr jr_03d_5067

    jr jr_03d_5069

    jr @+$01

    nop
    db $e3
    inc e
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
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
    nop
    rst $38
    nop
    ld a, a
    add b

jr_03d_5065:
    ld a, a
    add b

jr_03d_5067:
    ld a, a
    add b

jr_03d_5069:
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $e7ff


    db $fc
    ld a, a
    ld hl, sp+$1f
    ld hl, sp+$0f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $e7ff


    ccf
    cp $1f
    ld hl, sp+$1f
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $00
    jr c, @+$03

    cp $01
    cp $00
    rst $38

jr_03d_50a5:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp+$18
    ld sp, hl
    add hl, de
    rst $38
    rra
    rst $38
    ld e, $07
    rlca
    rrca
    ld c, $1f
    jr jr_03d_5101

    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $06
    cp $06
    cp $06
    cp $06
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld a, a
    ld a, a
    rst $38
    call $80ff
    rst $38
    ret nz

    rra
    jr jr_03d_510d

    jr jr_03d_50ff

    inc c
    rrca
    inc c
    rrca
    inc c
    rst $08
    adc $ff
    cp $ff
    ccf
    add b
    ld a, a
    add b
    ld a, a

jr_03d_50ff:
    db $e3
    inc e

jr_03d_5101:
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
    ld hl, sp+$0f

jr_03d_510d:
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    rlca
    cp $07
    rst $38
    inc bc
    rst $38
    nop
    rra
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$7f], a
    ldh [rIE], a
    ret nz

    rst $38
    nop
    ld bc, $01fe
    cp $c7
    jr c, @+$01

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
    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld [hl], e
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, h
    rst $38
    cp $ff
    or e
    rst $38
    ld bc, $03ff
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
    ld bc, $87ff
    cp $9e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    cp $1e
    ld hl, sp+$78
    ldh [$e0], a
    add b
    add b
    nop
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ld h, b
    ccf
    jr nc, jr_03d_51a9

    jr @+$01

    rrca
    rst $38
    inc bc
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
    ret nz

    rst $38
    ldh [rIE], a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_03d_51a9:
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ret nz

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
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    cp $06
    cp $0e
    db $fc
    inc e
    ld hl, sp-$08
    ldh [$e0], a
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
    rra
    jr jr_03d_51fd

    inc c
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_03d_51fd:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [$7f], a
    ld [hl], b
    ccf
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ld c, $ff
    inc e
    db $fc
    inc e
    db $fc
    inc a
    cp $6e
    cp $c6
    cp $86
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rra
    ld e, $0f
    rrca
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $ff
    ld a, b
    cp $f1
    xor $f1
    db $e4
    ld a, e
    push af
    ld a, e
    pop af
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    rst $38
    rrca
    db $fc
    inc e
    ld hl, sp+$78
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ld h, b
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
    rrca
    rrca
    rra
    inc de
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ld hl, $617f
    ld a, a
    ld [hl], e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec a
    ccf
    ld a, [de]
    rra
    rrca
    rrca
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    add hl, de
    ccf
    inc sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec hl
    ccf
    rra
    rra
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    ld [hl], b
    ld [hl], b
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
    add b
    add b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03d_531b:
Jump_03d_531b:
    ld c, $14
    call Call_000_372f
    ld a, $01
    ld [$cee9], a
    xor a
    ld [$d498], a
    ld hl, $c3a0
    ld bc, $0405
    call Call_000_16f0
    ld de, $5791
    ld hl, $c3c9
    call Call_000_1723
    ld hl, $c3a8
    ld bc, $080a
    call Call_000_16f0
    ld hl, $c3d2
    ld de, $579c
    call Call_000_1723
    ld hl, $c468
    ld bc, $0612
    call Call_000_16f0
    call Call_000_231c
    xor a
    ld [$cd37], a
    ld [$d72c], a
    ld [$d11d], a
    ld hl, $cc24
    ld a, $02
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, $03
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a

jr_03d_5377:
    call Call_03d_56bd
    call Call_000_3aab
    and $03
    add a
    add a
    ld b, a
    ld a, [$cc26]
    cp $03
    jr nz, jr_03d_5390

    bit 2, b
    jr z, jr_03d_5390

    dec a
    ld b, $08

jr_03d_5390:
    add b
    add $c0
    ld [$cc42], a
    ld [$cc43], a

jr_03d_5399:
    ld hl, $cc42
    ld a, [hl]
    ldh [$ac], a
    call Call_000_1ff6
    push af
    ld hl, $cc42
    ld a, [hl]
    ldh [$ac], a
    call Call_000_1ff6
    pop bc
    cp b
    jr nz, jr_03d_5399

    and $f0
    cp $c0
    jr nz, jr_03d_5399

    ld a, b
    and $0c
    jr nz, jr_03d_53c4

    ld a, [$cc42]
    and $0c
    jr z, jr_03d_5377

    jr jr_03d_53df

jr_03d_53c4:
    ld a, [$cc42]
    and $0c
    jr z, jr_03d_53d1

    ldh a, [$aa]
    cp $02
    jr z, jr_03d_53df

jr_03d_53d1:
    ld a, $01
    ld [$d11d], a
    ld a, b
    ld [$cc42], a
    and $03
    ld [$cc26], a

jr_03d_53df:
    call Call_000_1e64
    call Call_000_1e64
    ld hl, $cc42
    ld a, [hl]
    ldh [$ac], a
    call Call_000_1ff6
    call Call_000_1ff6
    ld b, $14

jr_03d_53f3:
    call Call_000_1e64
    call Call_000_2149
    dec b
    jr nz, jr_03d_53f3

    ld b, $7f
    ld c, $7f
    ld d, $7f
    ld e, $ec
    ld a, [$cc42]
    bit 3, a
    jr nz, jr_03d_541a

    ld b, e
    ld e, c
    ld a, [$cc26]
    and a
    jr z, jr_03d_541a

    ld c, b
    ld b, d
    dec a
    jr z, jr_03d_541a

    ld d, c
    ld c, b

jr_03d_541a:
    ld a, b
    ld [$c3d1], a
    ld a, c
    ld [$c3f9], a
    ld a, d
    ld [$c421], a
    ld a, e
    ld [$c449], a
    ld c, $28
    call Call_000_372f
    ld a, [$cc42]
    bit 3, a
    jr nz, jr_03d_547f

    ld a, [$cc26]
    cp $03
    jr z, jr_03d_547f

    inc a
    ld [$d498], a
    ld a, [$cc26]
    ld hl, $5488
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $5454
    push de
    jp hl


    ld [$cc42], a
    xor a
    ld [$cc47], a
    ld [$cc48], a
    call Call_000_20db
    ld a, [$cc42]
    and a
    jr nz, jr_03d_547c

    ld a, [$cc3d]
    and a
    jr nz, jr_03d_5476

    xor a
    ld [$cc47], a
    ld [$cc48], a
    and a
    ret


jr_03d_5476:
    ld hl, $5807
    call Call_000_3c36

jr_03d_547c:
    jp Jump_03d_531b


jr_03d_547f:
    xor a
    ld [$cc47], a
    ld [$cc48], a
    scf
    ret


    adc [hl]
    ld d, h
    db $e4
    ld d, h
    ld a, [hl-]
    ld d, l
    ld hl, $d162
    ld a, [hl+]
    cp $03
    jp nz, Jump_03d_561d

    ld b, $03

jr_03d_5499:
    ld a, [hl+]
    cp $15
    jp z, Jump_03d_5626

    dec b
    jr nz, jr_03d_5499

    dec hl
    dec hl
    cp [hl]
    jp z, Jump_03d_562f

    dec hl
    cp [hl]
    jp z, Jump_03d_562f

    ld a, [hl+]
    cp [hl]
    jp z, Jump_03d_562f

    ld a, [$d18b]
    cp $38
    jp nc, Jump_03d_5638

    cp $32
    jp c, Jump_03d_5641

    ld b, a
    ld a, [$d1b7]
    cp $38
    jp nc, Jump_03d_5638

    cp $32
    jp c, Jump_03d_5641

    ld c, a
    ld a, [$d1e3]
    cp $38
    jp nc, Jump_03d_5638

    cp $32
    jp c, Jump_03d_5641

    add b
    add c
    cp $9c
    jp nc, Jump_03d_564a

    xor a
    ret


    ld hl, $d162
    ld a, [hl+]
    cp $03
    jp nz, Jump_03d_561d

    ld b, $03

jr_03d_54ef:
    ld a, [hl+]
    cp $15
    jp z, Jump_03d_5626

    dec b
    jr nz, jr_03d_54ef

    dec hl
    dec hl
    cp [hl]
    jp z, Jump_03d_562f

    dec hl
    cp [hl]
    jp z, Jump_03d_562f

    ld a, [hl+]
    cp [hl]
    jp z, Jump_03d_562f

    ld a, [$d18b]
    cp $15
    jp nc, Jump_03d_566e

    cp $0f
    jp c, Jump_03d_5677

    ld b, a
    ld a, [$d1b7]
    cp $15
    jp nc, Jump_03d_566e

    cp $0f
    jp c, Jump_03d_5677

    ld c, a
    ld a, [$d1e3]
    cp $15
    jp nc, Jump_03d_566e

    cp $0f
    jp c, Jump_03d_5677

    add b
    add c
    cp $33
    jp nc, Jump_03d_5680

    xor a
    ret


    ld hl, $d162
    ld a, [hl+]
    cp $03
    jp nz, Jump_03d_561d

    ld b, $03

jr_03d_5545:
    ld a, [hl+]
    cp $15
    jp z, Jump_03d_5626

    dec b
    jr nz, jr_03d_5545

    dec hl
    dec hl
    cp [hl]
    jp z, Jump_03d_562f

    dec hl
    cp [hl]
    jp z, Jump_03d_562f

    ld a, [hl+]
    cp [hl]
    jp z, Jump_03d_562f

    dec hl
    ld a, [hl]
    ld [$cf90], a
    push hl
    ld hl, $710f
    ld b, $0e
    call Call_000_3e84
    pop hl
    jp c, Jump_03d_56ad

    inc hl
    ld a, [hl]
    ld [$cf90], a
    push hl
    ld hl, $710f
    ld b, $0e
    call Call_000_3e84
    pop hl
    jp c, Jump_03d_56ad

    inc hl
    ld a, [hl]
    ld [$cf90], a
    push hl
    ld hl, $710f
    ld b, $0e
    call Call_000_3e84
    pop hl
    jp c, Jump_03d_56ad

    dec hl
    dec hl
    ld b, $03

jr_03d_5598:
    ld a, [hl+]
    push hl
    push bc
    push af
    dec a
    ld c, a
    ld b, $00
    ld hl, $450b
    add hl, bc
    add hl, bc
    ld de, $cd6d
    ld bc, $0002
    ld a, $10
    call Call_000_009d
    ld hl, $cd6d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cd6d
    ld bc, $0014
    ld a, $10
    call Call_000_009d
    ld hl, $cd6d

jr_03d_55c4:
    ld a, [hl+]
    cp $50
    jr nz, jr_03d_55c4

    ld a, [hl+]
    cp $07
    jp nc, Jump_03d_5689

    add a
    add a
    ld b, a
    add a
    add b
    ld b, a
    ld a, [hl+]
    add b
    cp $51
    jp nc, Jump_03d_5689

    ld a, [hl+]
    sub $b9
    ld a, [hl]
    sbc $01
    jp nc, Jump_03d_569b

    pop af
    pop bc
    pop hl
    dec b
    jr nz, jr_03d_5598

    ld a, [$d18b]
    cp $1f
    jp nc, Jump_03d_5653

    cp $19
    jp c, Jump_03d_565c

    ld b, a
    ld a, [$d1b7]
    cp $1f
    jp nc, Jump_03d_5653

    cp $19
    jp c, Jump_03d_565c

    ld c, a
    ld a, [$d1e3]
    cp $1f
    jp nc, Jump_03d_5653

    cp $19
    jp c, Jump_03d_565c

    add b
    add c
    cp $51
    jp nc, Jump_03d_5665

    xor a
    ret


Jump_03d_561d:
    ld hl, $57bc
    call Call_000_3c36
    ld a, $01
    ret


Jump_03d_5626:
    ld hl, $57c1
    call Call_000_3c36
    ld a, $02
    ret


Jump_03d_562f:
    ld hl, $57c6
    call Call_000_3c36
    ld a, $03
    ret


Jump_03d_5638:
    ld hl, $57cb
    call Call_000_3c36
    ld a, $04
    ret


Jump_03d_5641:
    ld hl, $57d0
    call Call_000_3c36
    ld a, $05
    ret


Jump_03d_564a:
    ld hl, $57d5
    call Call_000_3c36
    ld a, $06
    ret


Jump_03d_5653:
    ld hl, $57da
    call Call_000_3c36
    ld a, $07
    ret


Jump_03d_565c:
    ld hl, $57df
    call Call_000_3c36
    ld a, $08
    ret


Jump_03d_5665:
    ld hl, $57e4
    call Call_000_3c36
    ld a, $09
    ret


Jump_03d_566e:
    ld hl, $57e9
    call Call_000_3c36
    ld a, $0a
    ret


Jump_03d_5677:
    ld hl, $57ee
    call Call_000_3c36
    ld a, $0b
    ret


Jump_03d_5680:
    ld hl, $57f3
    call Call_000_3c36
    ld a, $0c
    ret


Jump_03d_5689:
    pop af
    pop bc
    pop hl
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $57f8
    call Call_000_3c36
    ld a, $0d
    ret


Jump_03d_569b:
    pop af
    pop bc
    pop hl
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $57fd
    call Call_000_3c36
    ld a, $0e
    ret


Jump_03d_56ad:
    ld a, [hl]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $5802
    call Call_000_3c36
    ld a, $0f
    ret


Call_03d_56bd:
    xor a
    ldh [$ba], a
    ld hl, $c47d
    ld bc, $0612
    call Call_000_1692
    ld a, [$cc26]
    cp $03
    jr nc, jr_03d_56e6

    ld hl, $56ee
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    ld hl, $c491
    call Call_000_1723

jr_03d_56e6:
    call Call_000_3ddb
    ld a, $01
    ldh [$ba], a
    ret


    db $f4
    ld d, [hl]
    jr z, jr_03d_5749

    ld e, e
    ld d, a
    adc e
    sub l
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld sp, hl
    ld c, d
    sbc h
    ei
    or $e3
    ei
    ei
    ld c, [hl]
    sub d
    or h
    xor h
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc e
    sub l
    or d
    sbc h
    rst $30
    ei
    ei
    ld a, a
    adc h
    add b
    sub a
    ld c, [hl]
    adc h
    add h
    sub [hl]
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and b
    or e
    or e
    and h
    xor l
    and e
    add sp, $50
    adc e
    sub l
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld sp, hl
    ld c, d
    sbc h
    rst $30
    ei
    db $e3
    ld hl, sp-$0a
    ld c, [hl]
    sub d
    or h
    xor h
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc e
    sub l
    or d
    sbc h
    ei
    or $7f
    adc h
    add b
    sub a

jr_03d_5749:
    ld c, [hl]
    adc h
    add h
    sub [hl]
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and b
    or e
    or e
    and h
    xor l
    and e
    add sp, $50
    ld sp, hl
    ld a, a
    add c
    and b
    or d
    xor b
    and d
    ld a, a
    ld c, d
    add sp, -$75
    sub l
    ld hl, sp-$05
    db $e3
    ld sp, hl
    or $4e
    sub d
    or h
    xor h
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc e
    sub l
    or d
    sbc h
    cp $f6
    ld a, a
    adc h
    add b
    sub a
    ld c, [hl]
    db $fc
    ld [hl], c
    cp $73
    ld a, a
    and b
    xor l
    and e
    ld a, a
    ld a, [$abfa]
    and c
    ld a, a
    adc h
    add b
    sub a
    ld d, b
    sub l
    xor b
    and h
    or [hl]
    ld c, [hl]
    sub c
    or h
    xor e
    and h
    or d
    ld d, b
    ld d, h
    ld a, a
    add d
    or h
    xor a
    ld c, [hl]
    adc a
    xor b
    xor d
    and b
    ld a, a
    add d
    or h
    xor a
    ld c, [hl]
    adc a
    and h
    or e
    xor b
    or e
    ld a, a
    add d
    or h
    xor a
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    rla
    dec hl
    ld c, d
    jr z, @+$52

    rla
    ld b, [hl]
    ld c, d
    jr z, @+$52

    rla
    ld e, a
    ld c, d
    jr z, jr_03d_581b

    rla
    add c
    ld c, d
    jr z, @+$52

    rla
    sbc d
    ld c, d
    jr z, @+$52

    rla
    cp d
    ld c, d
    jr z, jr_03d_582a

    rla
    reti


    ld c, d
    jr z, @+$52

    rla
    ld a, [c]
    ld c, d
    jr z, @+$52

    rla
    ld [de], a
    ld c, e
    jr z, jr_03d_5839

Call_03d_57e9:
    rla
    jr nc, @+$4d

    jr z, @+$52

    rla
    ld c, c
    ld c, e
    jr z, jr_03d_5843

    rla
    ld l, c
    ld c, e
    jr z, jr_03d_5848

    rla
    add a
    ld c, e
    jr z, jr_03d_584d

    rla
    sbc a
    ld c, e
    jr z, jr_03d_5852

    rla
    cp e
    ld c, e
    jr z, @+$52

    rla
    call nc, Call_000_284b
    ld d, b
    xor a
    ld [$d357], a
    ld hl, $d72d
    set 6, [hl]
    ld hl, $5a16
    call Call_000_3c36

jr_03d_581b:
    call Call_000_370f
    ld hl, $5a02
    call Call_000_3c36
    ld hl, $c3e1
    ld bc, $080d

jr_03d_582a:
    call Call_000_16f0
    call Call_000_231c
    ld hl, $c40b
    ld de, $5a17
    call Call_000_1723

jr_03d_5839:
    xor a
    ld [$cd37], a
    ld [$d72c], a
    ld [$d11d], a

jr_03d_5843:
    ld hl, $cc24
    ld a, $05

jr_03d_5848:
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    xor a

jr_03d_584d:
    ld [hl+], a
    inc hl
    ld a, $03
    ld [hl+], a

jr_03d_5852:
    ld [hl+], a
    xor a
    ld [hl], a

jr_03d_5855:
    call Call_000_3aab
    and $03
    add a
    add a
    ld b, a
    ld a, [$cc26]
    cp $03
    jr nz, jr_03d_586b

    bit 2, b
    jr z, jr_03d_586b

    dec a
    ld b, $08

jr_03d_586b:
    add b
    add $d0
    ld [$cc42], a
    ld [$cc43], a

jr_03d_5874:
    call Call_000_20a3
    ld a, [$cc3d]
    ld b, a
    and $f0
    cp $d0
    jr z, jr_03d_588b

    ld a, [$cc3e]
    ld b, a
    and $f0
    cp $d0
    jr nz, jr_03d_5874

jr_03d_588b:
    ld a, b
    and $0c
    jr nz, jr_03d_5899

    ld a, [$cc42]
    and $0c
    jr z, jr_03d_5855

    jr jr_03d_58b4

jr_03d_5899:
    ld a, [$cc42]
    and $0c
    jr z, jr_03d_58a6

    ldh a, [$aa]
    cp $02
    jr z, jr_03d_58b4

jr_03d_58a6:
    ld a, $01
    ld [$d11d], a
    ld a, b
    ld [$cc42], a
    and $03
    ld [$cc26], a

jr_03d_58b4:
    ldh a, [$aa]
    cp $02
    jr nz, jr_03d_58c4

    call Call_000_1e64
    call Call_000_1e64
    ld a, $81
    ldh [rSC], a

jr_03d_58c4:
    ld b, $7f
    ld c, $7f
    ld d, $7f
    ld e, $ec
    ld a, [$cc42]
    and $08
    jr nz, jr_03d_58ea

    ld a, [$cc26]
    cp $02
    jp z, Jump_03d_5963

    ld b, e
    ld e, c
    ld a, [$cc26]
    and a
    jr z, jr_03d_58ea

    ld c, b
    ld b, d
    dec a
    jr z, jr_03d_58ea

    ld d, c
    ld c, b

jr_03d_58ea:
    call Call_03d_59ec
    call Call_000_371b
    ld a, [$cc42]
    and $08
    jr nz, jr_03d_5948

    ld a, [$cc26]
    cp $02
    jr z, jr_03d_5948

    xor a
    ld [$d6ff], a
    ld a, [$cc26]
    and a
    ld a, $f0
    jr nz, jr_03d_590c

    ld a, $ef

Jump_03d_590c:
jr_03d_590c:
    ld [$d72c], a
    ld hl, $5a07
    call Call_000_3c36
    ld c, $32
    call Call_000_372f
    ld hl, $d731
    res 1, [hl]
    ld a, [$d07b]
    ld [$d719], a
    ld hl, $6042
    ld b, $01
    call Call_000_3e84
    ld c, $14
    call Call_000_372f
    xor a
    ld [$cc34], a
    ld [$cc42], a
    inc a
    ld [$d12a], a
    ld [$cc47], a
    ld hl, $5ce4
    ld b, $01
    jp Jump_000_3e84


Jump_03d_5948:
jr_03d_5948:
    xor a
    ld [$cc34], a
    call Call_000_3ddb
    ld hl, $71ac
    ld b, $01
    call Call_000_3e84
    ld hl, $5a0c
    call Call_000_3c36
    ld hl, $d72d
    res 6, [hl]
    ret


Jump_03d_5963:
    ld a, [$d11d]
    and a
    jr nz, jr_03d_5974

    ld b, $7f
    ld c, $7f
    ld d, $ec
    ld e, $7f
    call Call_03d_59ec

jr_03d_5974:
    xor a
    ld [$cee9], a
    ld a, $ff
    ld [$cc3e], a
    ld a, $0b
    ld [$cc42], a
    ld b, $78

jr_03d_5984:
    ldh a, [$aa]
    cp $02
    call z, Call_000_1e64
    dec b
    jr z, jr_03d_59b2

    call Call_000_211f
    call Call_000_1e64
    ld a, [$cc3e]
    inc a
    jr z, jr_03d_5984

    ld b, $0f

jr_03d_599c:
    call Call_000_1e64
    call Call_000_211f
    dec b
    jr nz, jr_03d_599c

    ld b, $0f

jr_03d_59a7:
    call Call_000_1e64
    call Call_000_2149
    dec b
    jr nz, jr_03d_59a7

    jr jr_03d_59d6

jr_03d_59b2:
    xor a
    ld [$cc47], a
    ld [$cc48], a
    ld a, [$d11d]
    and a
    jr z, jr_03d_59cd

    ld b, $7f
    ld c, $7f
    ld d, $7f
    ld e, $ec
    call Call_03d_59ec
    jp Jump_03d_5948


jr_03d_59cd:
    ld hl, $5a11
    call Call_000_3c36
    jp Jump_03d_5948


jr_03d_59d6:
    ld b, $7f
    ld c, $7f
    ld d, $ec
    ld e, $7f
    call Call_03d_59ec
    call Call_03d_531b
    jp c, Jump_03d_5948

    ld a, $f0
    jp Jump_03d_590c


Call_03d_59ec:
    ld a, b
    ld [$c40a], a
    ld a, c
    ld [$c432], a
    ld a, d
    ld [$c45a], a
    ld a, e
    ld [$c482], a
    ld c, $28
    call Call_000_372f
    ret


    rla
    ld a, [c]
    ld c, e
    jr z, @+$52

    rla
    rrca
    ld c, h
    jr z, @+$52

    rla
    cpl
    ld c, h
    jr z, jr_03d_5a61

    rla
    ld b, a
    ld c, h
    jr z, jr_03d_5a66

    ld d, b
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
    add d
    adc [hl]
    adc e
    adc [hl]
    sub d
    sub d
    add h
    sub h
    adc h
    ld hl, sp+$4e
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    xor a
    ld [$d09a], a
    ldh a, [$8b]
    push af
    ldh a, [$8c]
    push af
    xor a
    ldh [$8b], a
    ld a, $06
    ldh [$8c], a

Jump_03d_5a51:
    xor a
    ld [$d08a], a
    call Call_03d_5ab0
    call Call_000_381e
    ldh a, [$b5]
    and a
    jr nz, jr_03d_5a6b

    pop af

jr_03d_5a61:
    ldh [$8c], a
    pop af
    ldh [$8b], a

jr_03d_5a66:
    xor a
    ld [$cc4a], a
    ret


jr_03d_5a6b:
    xor a
    ld [$cc4b], a
    ldh a, [$b5]
    ld b, a
    bit 6, a
    jr z, jr_03d_5a82

    ld a, [$cc26]
    and a
    jr z, jr_03d_5a95

    dec a
    ld [$cc26], a
    jr jr_03d_5a95

jr_03d_5a82:
    bit 7, a
    jr z, jr_03d_5a95

    ld a, [$cc26]
    inc a
    ld c, a
    ld a, [$cc28]
    cp c
    jr c, jr_03d_5a95

    ld a, c
    ld [$cc26], a

jr_03d_5a95:
    ld a, [$cc29]
    and b
    jp z, Jump_03d_5a51

    ldh a, [$b5]
    and $03
    jr z, jr_03d_5aa7

    ld a, $90
    call Call_000_2238

jr_03d_5aa7:
    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    ldh a, [$b5]
    ret


Call_03d_5ab0:
    ld a, [$cc24]
    and a
    jr z, jr_03d_5ac0

    ld hl, $c3a0
    ld bc, $0014

jr_03d_5abc:
    add hl, bc
    dec a
    jr nz, jr_03d_5abc

jr_03d_5ac0:
    ld a, [$cc25]
    ld b, $00
    ld c, a
    add hl, bc
    push hl
    ld a, [$cc2a]
    and a
    jr z, jr_03d_5ad5

    ld bc, $0028

jr_03d_5ad1:
    add hl, bc
    dec a
    jr nz, jr_03d_5ad1

jr_03d_5ad5:
    ld a, [hl]
    cp $ed
    jr nz, jr_03d_5ade

    ld a, [$cc27]
    ld [hl], a

jr_03d_5ade:
    pop hl
    ld a, [$cc26]
    and a
    jr z, jr_03d_5aec

    ld bc, $0028

jr_03d_5ae8:
    add hl, bc
    dec a
    jr nz, jr_03d_5ae8

jr_03d_5aec:
    ld a, [hl]
    cp $ed
    jr z, jr_03d_5af4

    ld [$cc27], a

jr_03d_5af4:
    ld a, $ed
    ld [hl], a
    ld a, l
    ld [$cc30], a
    ld a, h
    ld [$cc31], a
    ld a, [$cc26]
    ld [$cc2a], a
    ret


    ld hl, $d727
    set 0, [hl]
    ld hl, $5b17
    call Call_000_3c36
    ld hl, $5b28
    jp Jump_000_3c36


    rla
    ld a, [hl]
    ld b, c
    dec l
    ld [$90fa], sp
    rst $08
    call Call_000_118b
    call Call_000_3ddb
    jp Jump_000_23d2


    rla
    sub e
    ld b, c
    dec l
    ld d, b
    ld hl, $d727
    set 1, [hl]
    ld a, [$d731]
    bit 5, a
    jr nz, jr_03d_5b59

    ld a, [$d35d]
    cp $a2
    ret nz

    ld a, [$d880]
    and $03
    cp $03
    ret z

    ld hl, $5b64
    call Call_000_34bc
    ret nc

    ld hl, $d727
    res 1, [hl]
    ld hl, $5b67
    jp Jump_000_3c36


jr_03d_5b59:
    ld hl, $d727
    res 1, [hl]
    ld hl, $5b6c
    jp Jump_000_3c36


    dec bc
    rlca
    rst $38
    rla
    xor e
    ld b, c
    dec l
    ld d, b
    rla
    jp z, Jump_000_2d41

    ld d, b
    ld a, [$cf95]
    push af
    push bc
    push de
    push hl
    push hl
    ld d, $32
    ld a, $1c
    cp l
    jr nz, jr_03d_5b87

    ld a, $d3
    cp h
    jr nz, jr_03d_5b87

    ld d, $14

jr_03d_5b87:
    ld a, [hl]
    sub d
    ld d, a
    ld a, [hl+]
    and a
    jr z, jr_03d_5b9d

jr_03d_5b8e:
    ld a, [hl+]
    ld b, a
    ld a, [$cf90]
    cp b
    jp z, Jump_03d_5bb7

    inc hl

Jump_03d_5b98:
    ld a, [hl]
    cp $ff
    jr nz, jr_03d_5b8e

jr_03d_5b9d:
    pop hl
    ld a, d
    and a
    jr z, jr_03d_5bd8

    inc [hl]
    ld a, [hl]
    add a
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cf90]
    ld [hl+], a
    ld a, [$cf95]
    ld [hl+], a
    ld [hl], $ff
    jp Jump_03d_5bd7


Jump_03d_5bb7:
    ld a, [$cf95]
    ld b, a
    ld a, [hl]
    add b
    cp $64
    jp c, Jump_03d_5bd5

    sub $63
    ld [$cf95], a
    ld a, d
    and a
    jr z, jr_03d_5bd1

    ld a, $63
    ld [hl+], a
    jp Jump_03d_5b98


jr_03d_5bd1:
    pop hl
    and a
    jr jr_03d_5bd8

Jump_03d_5bd5:
    ld [hl], a
    pop hl

Jump_03d_5bd7:
    scf

jr_03d_5bd8:
    pop hl
    pop de
    pop bc
    pop bc
    ld a, b
    ld [$cf95], a
    ret


    push hl
    inc hl
    ld a, [$cf91]
    add a
    add l
    ld l, a
    jr nc, jr_03d_5bec

    inc h

jr_03d_5bec:
    inc hl
    ld a, [$cf95]
    ld e, a
    ld a, [hl]
    sub e
    ld [hl-], a
    ld [$cf96], a
    and a
    jr nz, jr_03d_5c22

    ld e, l
    ld d, h
    inc de
    inc de

jr_03d_5bfe:
    ld a, [de]
    inc de
    ld [hl+], a
    cp $ff
    jr nz, jr_03d_5bfe

    xor a
    ld [$cc36], a
    ld [$cc26], a
    ld [$cc2c], a
    ld [$d07d], a
    pop hl
    ld a, [hl]
    dec a
    ld [hl], a
    ld [$d129], a
    cp $02
    jr c, jr_03d_5c23

    ld [$cc28], a
    jr jr_03d_5c23

jr_03d_5c22:
    pop hl

jr_03d_5c23:
    ret


    nop
    nop
    nop

jr_03d_5c27:
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, jr_03d_5c91

    inc b
    ld [de], a
    nop

jr_03d_5c37:
    rla
    ld [bc], a
    dec d
    nop
    rla
    nop
    dec d
    ld bc, $0416
    inc de
    nop
    dec d
    inc b
    cp d
    jr nz, jr_03d_5c27

    add d
    ld [hl], l
    nop
    ldh [rP1], a
    rst $20
    ld b, b
    xor b

jr_03d_5c50:
    nop
    add sp, $20
    ld c, b
    inc b
    cp d
    jr nz, jr_03d_5c37

    add d
    ld [hl], l
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    cp d
    jr nz, @-$1f

    add d
    ld [hl], l
    nop
    rlca
    nop
    push hl
    ld bc, $0416
    inc de
    nop
    dec d
    nop
    xor b
    jr nz, @-$36

    add b
    ld l, b
    nop
    add sp, $00
    add sp, $40
    xor b
    nop
    add sp, $20
    ld c, b
    nop
    xor b
    jr nz, jr_03d_5c50

    add b
    ld l, b
    nop
    rst $20
    nop
    ldh [rSTAT], a
    xor [hl]
    inc b

jr_03d_5c91:
    ei
    jr nz, jr_03d_5cf1

    inc b
    ld [de], a
    nop
    rla
    ld [bc], a
    dec d
    nop
    rst $20
    nop
    dec b
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, jr_03d_5d01

    inc b
    cp d
    jr nz, @-$1f

    add d
    ld [hl], l
    nop
    rst $28
    nop
    push af
    ld b, c
    xor [hl]
    inc b
    ei
    jr nz, jr_03d_5d11

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_5cf1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_5d01:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_5d11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_03d_5e1a

jr_03d_5e1a:
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    jr c, jr_03d_5e22

jr_03d_5e22:
    nop
    nop
    nop

jr_03d_5e25:
    nop
    db $fc
    jr nc, jr_03d_5e25

    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld d, b
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    ld a, [$d35d]
    ld c, a
    ld hl, $5eda

jr_03d_5eab:
    ld a, [hl+]
    cp $ff
    jr z, jr_03d_5ebd

    cp c
    jr z, jr_03d_5eb9

    ld de, $0008
    add hl, de
    jr jr_03d_5eab

jr_03d_5eb9:
    call Call_03d_5ec1
    ret


jr_03d_5ebd:
    ld de, $0000
    ret


Call_03d_5ec1:
    call Call_000_3e6d
    cp $66
    jr c, jr_03d_5ed6

    inc hl
    inc hl
    cp $b2
    jr c, jr_03d_5ed6

    inc hl
    inc hl
    cp $e5
    jr c, jr_03d_5ed6

    inc hl
    inc hl

jr_03d_5ed6:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


    nop
    dec de
    ld a, [bc]
    jr jr_03d_5ee9

    dec de
    dec b
    jr @+$16

    ld bc, $0547
    ld b, a
    ld a, [bc]
    ld b, a

jr_03d_5ee9:
    rrca
    ld b, a
    ld a, [bc]
    inc bc
    sbc l
    add hl, de
    sbc l
    ld e, $9e
    ld e, $9e
    jr z, @+$07

    jr jr_03d_5f07

    jr jr_03d_5f0e

    jr jr_03d_5f06

    ld e, h
    dec b
    ld b, $9d
    dec b
    sbc l
    ld a, [bc]
    sbc l
    rrca
    sbc l

jr_03d_5f06:
    inc d

jr_03d_5f07:
    rlca
    add l
    dec b
    add l
    ld a, [bc]
    add l
    rrca

jr_03d_5f0e:
    ld d, $0f
    ld [$0f1b], sp
    jr jr_03d_5f24

    dec de
    ld a, [bc]
    jr jr_03d_5f37

    rrca
    sbc l
    inc d
    sbc l
    add hl, de
    sbc l
    ld e, $9e
    ld e, $11
    sbc l

jr_03d_5f24:
    dec b
    sbc l
    ld a, [bc]
    sbc l
    rrca
    sbc l
    inc d
    inc hl
    sbc l
    inc d
    sbc l
    add hl, de
    sbc l
    ld e, $9e
    ld e, $24
    ld c, [hl]
    ld a, [bc]

jr_03d_5f37:
    ld c, [hl]
    rrca
    adc d
    rrca
    adc d
    add hl, de
    dec d
    ld c, [hl]
    rrca
    ld c, [hl]
    inc d
    ld e, h
    ld a, [bc]
    adc d
    add hl, de
    ld d, $18
    rrca
    jr jr_03d_5f5f

    jr jr_03d_5f57

    ld e, h
    dec b
    rla
    ld e, h
    inc d
    ld e, h
    add hl, de
    ld e, l
    add hl, de
    ld e, l

jr_03d_5f57:
    inc hl
    jr jr_03d_5fb6

    rrca
    ld e, h
    inc d
    jr jr_03d_5f69

jr_03d_5f5f:
    ld e, l
    inc d
    inc e
    jr jr_03d_5f69

    jr @+$11

    rla
    add hl, de
    rla

jr_03d_5f69:
    inc hl
    dec e
    jr @+$11

    rla
    inc d
    rla
    ld e, $17
    jr z, jr_03d_5f92

    jr @+$11

    dec de
    inc d
    jr jr_03d_5f98

    sbc e
    ld e, $1f
    jr jr_03d_5f93

    sbc e
    inc d
    dec de
    ld e, $9b
    jr z, jr_03d_5fa6

    jr jr_03d_5f97

    dec de
    inc d
    jr @+$20

jr_03d_5f8c:
    sbc e
    ld e, $21
    ld b, a
    dec b
    ld b, a

jr_03d_5f92:
    ld a, [bc]

jr_03d_5f93:
    ld b, a
    rrca
    ld l, [hl]
    rrca

jr_03d_5f97:
    ld [hl+], a

jr_03d_5f98:
    ld b, a
    add hl, de
    ld b, a
    ld e, $6e
    ld e, $6e
    jr z, @+$60

    jr jr_03d_5fad

    jr jr_03d_5fb4

    dec de

jr_03d_5fa6:
    rrca
    rla
    ld a, [bc]
    call c, $0585
    add l

jr_03d_5fad:
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld e, c
    rrca
    reti


    add l

jr_03d_5fb4:
    dec b
    add l

jr_03d_5fb6:
    ld a, [bc]
    add l
    rrca
    ld e, b
    rrca
    jp c, $0585

    add l
    ld a, [bc]
    add l
    rrca
    ld e, b
    rrca

jr_03d_5fc4:
    db $db
    add l
    dec b
    add l
    ld a, [bc]
    add l
    rrca
    ld e, b
    rrca
    and c
    ld c, [hl]
    add hl, de
    dec de
    inc d
    adc d
    inc hl
    dec de
    jr z, @-$5c

    ld c, [hl]
    add hl, de
    dec de
    inc d
    adc d
    inc hl
    dec de
    jr z, jr_03d_5fc4

    sbc l
    add hl, de
    sbc [hl]
    inc hl
    sbc [hl]
    dec l
    sbc [hl]
    scf
    db $e3
    sbc l
    ld e, $9e
    jr z, jr_03d_5f8c

    ld [hl-], a
    sbc [hl]
    inc a
    rst $38
    ld a, [$d058]
    and a
    jr z, jr_03d_6003

    ld a, [$d058]
    ld [$cf90], a
    ld [$cfd7], a
    jr jr_03d_601d

jr_03d_6003:
    ld a, [$d731]
    bit 1, a
    jr z, jr_03d_600f

    ldh a, [$b4]
    bit 1, a
    ret nz

jr_03d_600f:
    ld a, [$d13b]
    and a
    ret nz

    ld hl, $783a
    ld b, $04
    call Call_000_3e84
    ret nz

jr_03d_601d:
    ld a, [$d35c]
    push af
    ld hl, $d357
    ld a, [hl]
    push af
    res 1, [hl]
    call Call_03d_6236
    ld a, [$cfd7]
    sub $c8
    jp c, Jump_03d_607c

    ld [$d030], a
    call Call_000_3563
    ld hl, $5bb6
    ld b, $0e
    call Call_000_3e84
    ld hl, $6db8
    ld b, $0f
    call Call_000_3e84
    call Call_03d_615a
    xor a
    ld [$cfd7], a
    ldh [$e1], a
    dec a
    ld [$ccdf], a
    ld hl, $c3ac
    ld a, $01
    call Call_000_3eb4
    ld a, $ff
    ld [$cfe7], a
    ld a, $02
    ld [$d056], a
    ld a, [$d05b]
    and a
    jp z, Jump_03d_60eb

    ld hl, $430a
    ld b, $3d
    ld d, $04
    call Call_000_3e84
    jp Jump_03d_60eb


Jump_03d_607c:
    ld a, $01
    ld [$d056], a
    ld hl, $6c87
    ld b, $0f
    call Call_000_3e84
    ld hl, $6db8
    ld b, $0f
    call Call_000_3e84
    ld a, [$d058]
    cp $91
    jr z, jr_03d_60a2

    ld hl, $59ac
    ld b, $0f
    call Call_000_3e84
    jr nz, jr_03d_60d7

jr_03d_60a2:
    ld hl, $d0c1
    ld a, $66
    ld [hl+], a
    ld bc, $6920
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $cfd9
    ld a, $86
    ld [hl+], a
    ld a, $87
    ld [hl+], a
    ld a, $8e
    ld [hl+], a
    ld a, $92
    ld [hl+], a
    ld a, $93
    ld [hl+], a
    ld [hl], $50
    ld a, [$cf90]
    push af
    ld a, $b8
    ld [$cf90], a
    ld de, $9000
    call Call_000_143e
    pop af
    ld [$cf90], a
    jr jr_03d_60dd

jr_03d_60d7:
    ld de, $9000
    call Call_000_143e

jr_03d_60dd:
    xor a
    ld [$d030], a
    ldh [$e1], a
    ld hl, $c3ac
    ld a, $01
    call Call_000_3eb4

Jump_03d_60eb:
    ld b, $00
    call Call_000_3e05
    ld hl, $404c
    ld b, $0f
    call Call_000_3e84
    xor a
    ldh [$ba], a
    ld hl, $6159
    call Call_000_3c36
    call Call_000_370f
    call Call_000_16dd
    ld a, $98
    ldh [$bd], a
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    ld a, $9c
    ldh [$bd], a
    call Call_000_371b
    ld hl, $c435
    ld bc, $050a
    call Call_000_1692
    ld hl, $c3a1
    ld bc, $040a
    call Call_000_1692
    call Call_000_0082
    ld a, [$d056]
    dec a
    ld hl, $4eb1
    ld b, $0f
    call z, Call_000_3e84
    ld hl, $4127
    ld b, $0f
    call Call_000_3e84
    ld hl, $7765
    ld b, $04
    call Call_000_3e84
    pop af
    ld [$d357], a
    pop af
    ld [$d35c], a
    ld a, [$d0d3]
    ldh [$d7], a
    scf
    ret


    ld d, b

Call_03d_615a:
    ld a, [$d032]
    ld e, a
    ld a, [$d033]
    ld d, a
    ld a, [$d12a]
    and a
    ld a, $13
    jr z, jr_03d_616c

    ld a, $04

jr_03d_616c:
    call Call_000_36e3
    ld de, $9000
    ld a, $77
    ld c, a
    jp Jump_000_144b


    ld a, [$cfd8]
    ld [$cf90], a
    ld hl, $c405
    ld bc, $0708
    call Call_000_1692
    ld hl, $000d
    call Call_000_1407
    ld a, $03
    call Call_000_3eb4
    ld de, $9310
    call Call_000_14c7
    ld hl, $8000
    ld de, $9310
    ld c, $31
    ldh a, [$b8]
    ld b, a
    jp Jump_000_15fe


    ld a, [$cc4f]
    ld h, a
    ld a, [$cc50]
    ld l, a
    ldh a, [$e1]
    ldh [$8b], a
    ld b, $4c
    ld a, [$d056]
    and a
    jr z, jr_03d_61ef

    add b
    ld [hl], a
    call Call_000_3ddb
    ld bc, $ffd7
    add hl, bc
    ld a, $01
    ld [$cd6c], a
    ld bc, $0303
    ld a, $05
    call Call_000_3eb4
    ld c, $04
    call Call_000_372f
    ld bc, $ffd7
    add hl, bc
    xor a
    ld [$cd6c], a
    ld bc, $0505
    ld a, $05
    call Call_000_3eb4
    ld c, $05
    call Call_000_372f
    ld bc, $ffd7
    jr jr_03d_61f2

jr_03d_61ef:
    ld bc, $ff85

jr_03d_61f2:
    add hl, bc
    ldh a, [$8b]
    add $31
    jr jr_03d_6203

    ld a, [$cc4f]
    ld h, a
    ld a, [$cc50]
    ld l, a
    ldh a, [$e1]

jr_03d_6203:
    ld bc, $0707
    ld de, $0014
    push af
    ld a, [$d0a9]
    and a
    jr nz, jr_03d_6220

    pop af

jr_03d_6211:
    push bc
    push hl

jr_03d_6213:
    ld [hl], a
    add hl, de
    inc a
    dec c
    jr nz, jr_03d_6213

    pop hl
    inc hl
    pop bc
    dec b
    jr nz, jr_03d_6211

    ret


jr_03d_6220:
    push bc
    ld b, $00
    dec c
    add hl, bc
    pop bc
    pop af

jr_03d_6227:
    push bc
    push hl

jr_03d_6229:
    ld [hl], a
    add hl, de
    inc a
    dec c
    jr nz, jr_03d_6229

    pop hl
    dec hl
    pop bc
    dec b
    jr nz, jr_03d_6227

    ret


Call_03d_6236:
    ldh a, [$d7]
    ld [$d0d3], a
    xor a
    ld [$cd6a], a
    ld [$cf0b], a
    ld hl, $cc2b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$cc36], a
    ld [$d05d], a
    ld [$d013], a
    ld [$d057], a
    ld [$cc2f], a
    ld [$d077], a
    ld [$d35c], a
    ld hl, $cf1c
    ld [hl+], a
    ld [hl], a
    ld hl, $ccd3
    ld b, $3c

jr_03d_6268:
    ld [hl+], a
    dec b
    jr nz, jr_03d_6268

    inc a
    ld [$ccd9], a
    ld a, [$d35d]
    cp $d9
    jr c, jr_03d_6280

    cp $dd
    jr nc, jr_03d_6280

    ld a, $02
    ld [$d059], a

jr_03d_6280:
    ld hl, $5064
    ld b, $02
    jp Jump_000_3e84


    ld hl, $d062
    ldh a, [$f3]
    and a
    jr z, jr_03d_6293

    ld hl, $d067

jr_03d_6293:
    bit 2, [hl]
    jr nz, jr_03d_62a7

    set 2, [hl]
    ld hl, $7b83
    ld b, $0f
    call Call_000_3e84
    ld hl, $62b4
    jp Jump_000_3c36


jr_03d_62a7:
    ld c, $32
    call Call_000_372f
    ld hl, $7b2e
    ld b, $0f
    jp Jump_000_3e84


    ld a, [bc]
    rla
    db $f4
    ld b, d
    ld a, [hl+]
    ld d, b
    ldh a, [$f3]
    and a
    ld de, $d014
    ld hl, $d022
    ld a, [$cfd1]
    jr z, jr_03d_62d1

    ld de, $cfe5
    ld hl, $cff3
    ld a, [$cfcb]

jr_03d_62d1:
    ld b, a
    ld a, [de]
    cp [hl]
    inc de
    inc hl
    ld a, [de]
    sbc [hl]
    jp z, Jump_03d_6365

    ld a, b
    cp $9c
    jr nz, jr_03d_6305

    push hl
    push de
    push af
    ld c, $32
    call Call_000_372f
    ld hl, $d017
    ldh a, [$f3]
    and a
    jr z, jr_03d_62f3

    ld hl, $cfe8

jr_03d_62f3:
    ld a, [hl]
    and a
    ld [hl], $02
    ld hl, $6370
    jr z, jr_03d_62ff

    ld hl, $6375

jr_03d_62ff:
    call Call_000_3c36
    pop af
    pop de
    pop hl

jr_03d_6305:
    ld a, [hl-]
    ld [$cee9], a
    ld c, a
    ld a, [hl]
    ld [$ceea], a
    ld b, a
    jr z, jr_03d_6315

    srl b
    rr c

jr_03d_6315:
    ld a, [de]
    ld [$ceeb], a
    add c
    ld [de], a
    ld [$ceed], a
    dec de
    ld a, [de]
    ld [$ceec], a
    adc b
    ld [de], a
    ld [$ceee], a
    inc hl
    inc de
    ld a, [de]
    dec de
    sub [hl]
    dec hl
    ld a, [de]
    sbc [hl]
    jr c, jr_03d_633d

    ld a, [hl+]
    ld [de], a
    ld [$ceee], a
    inc de
    ld a, [hl]
    ld [de], a
    ld [$ceed], a

jr_03d_633d:
    ld hl, $7b83
    call Call_03d_64a7
    ldh a, [$f3]
    and a
    ld hl, $c45e
    ld a, $01
    jr z, jr_03d_6351

    ld hl, $c3ca
    xor a

jr_03d_6351:
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4
    ld hl, $4e1f
    call Call_03d_64a7
    ld hl, $637a
    jp Jump_000_3c36


Jump_03d_6365:
    ld c, $32
    call Call_000_372f
    ld hl, $7b2e
    jp Jump_03d_64a7


    rla
    ld [$2a43], sp
    ld d, b
    rla
    dec e
    ld b, e
    ld a, [hl+]
    ld d, b
    rla
    ld b, b
    ld b, e
    ld a, [hl+]
    ld d, b
    ld hl, $d013
    ld de, $cfe4
    ld bc, $d068
    ld a, [$d066]
    ldh a, [$f3]
    and a
    jr nz, jr_03d_639f

    ld hl, $cfe4
    ld de, $d013
    ld bc, $d063
    ld [$cc2e], a
    ld a, [$d061]

jr_03d_639f:
    bit 6, a
    jp nz, Jump_03d_6452

    push hl
    push de
    push bc
    ld hl, $d062
    ldh a, [$f3]
    and a
    jr z, jr_03d_63b2

    ld hl, $d067

jr_03d_63b2:
    bit 4, [hl]
    push af
    ld hl, $5816
    ld b, $1e
    call nz, Call_000_3e84
    ld a, [$d354]
    add a
    ld hl, $7b83
    ld b, $0f
    jr nc, jr_03d_63cd

    ld hl, $58c8
    ld b, $1e

jr_03d_63cd:
    call Call_000_3e84
    ld hl, $58b2
    ld b, $1e
    pop af
    call nz, Call_000_3e84
    pop bc
    ld a, [bc]
    set 3, a
    ld [bc], a
    pop de
    pop hl
    push hl
    ld a, [hl]
    ld [de], a
    ld bc, $0005
    add hl, bc
    inc de
    inc de
    inc de
    inc de
    inc de
    inc bc
    inc bc
    call Call_000_00b1
    ldh a, [$f3]
    and a
    jr z, jr_03d_6400

    ld a, [de]
    ld [$cceb], a
    inc de
    ld a, [de]
    ld [$ccec], a
    dec de

jr_03d_6400:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    inc hl
    inc hl
    inc de
    inc de
    inc de
    ld bc, $0008
    call Call_000_00b1
    ld bc, $ffef
    add hl, bc
    ld b, $04

jr_03d_6418:
    ld a, [hl+]
    and a
    jr z, jr_03d_641e

    ld a, $05

jr_03d_641e:
    ld [de], a
    inc de
    dec b
    jr nz, jr_03d_6418

    pop hl
    ld a, [hl]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $cd26
    ld de, $cd12
    call Call_03d_6443
    ld hl, $cd2e
    ld de, $cd1a
    call Call_03d_6443
    ld hl, $6458
    jp Jump_000_3c36


Call_03d_6443:
    ldh a, [$f3]
    and a
    jr z, jr_03d_644c

    push hl
    ld h, d
    ld l, e
    pop de

jr_03d_644c:
    ld bc, $0008
    jp Jump_000_00b1


Jump_03d_6452:
    ld hl, $7b2e
    jp Jump_03d_64a7


    rla
    ld d, h
    ld b, e
    ld a, [hl+]
    ld d, b
    ld hl, $d063
    ld de, $cfd2
    ldh a, [$f3]
    and a
    jr z, jr_03d_646e

    ld hl, $d068
    ld de, $cfcc

jr_03d_646e:
    ld a, [de]
    cp $40
    jr nz, jr_03d_647e

    bit 1, [hl]
    jr nz, jr_03d_6492

    set 1, [hl]
    ld hl, $649d
    jr jr_03d_6487

jr_03d_647e:
    bit 2, [hl]
    jr nz, jr_03d_6492

    set 2, [hl]
    ld hl, $64a2

jr_03d_6487:
    push hl
    ld hl, $7b83
    call Call_03d_64a7
    pop hl
    jp Jump_000_3c36


jr_03d_6492:
    ld c, $32
    call Call_000_372f
    ld hl, $7b2e
    jp Jump_03d_64a7


    rla
    ld l, a
    ld b, e
    ld a, [hl+]
    ld d, b
    rla
    sub [hl]
    ld b, e
    ld a, [hl+]
    ld d, b

Call_03d_64a7:
Jump_03d_64a7:
    ld b, $0f
    jp Jump_000_3e84


    ld hl, $d062
    ldh a, [$f3]
    and a
    jr z, jr_03d_64b7

    ld hl, $d067

jr_03d_64b7:
    bit 1, [hl]
    jr nz, jr_03d_64cb

    set 1, [hl]
    ld hl, $7b83
    ld b, $0f
    call Call_000_3e84
    ld hl, $64d3
    jp Jump_000_3c36


jr_03d_64cb:
    ld hl, $7b2e
    ld b, $0f
    jp Jump_000_3e84


    rla
    and a
    ld b, e
    ld a, [hl+]
    ld d, b
    ld hl, $d0d6
    xor a
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$d05d], a
    ld hl, $d029
    ld de, $cffa
    ldh a, [$f3]
    and a
    jr z, jr_03d_64f3

    ld hl, $cffa
    ld de, $d029

jr_03d_64f3:
    ld a, [de]
    dec de
    ld b, a
    ld a, [hl-]
    sub b
    ld a, [de]
    ld b, a
    ld a, [hl]
    sbc b
    jr c, jr_03d_650b

    ld hl, $d0d6
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$d05d], a
    ret


jr_03d_650b:
    ld a, $01
    ld [$d05e], a
    ret


    xor a
    ld hl, $cd6d
    ld [hl+], a
    ldh a, [$f3]
    and a
    ld a, [$d021]
    jr z, jr_03d_6521

    ld a, [$cff2]

jr_03d_6521:
    add a
    ldh [$98], a
    xor a
    ldh [$95], a
    ldh [$96], a
    ldh [$97], a
    ld a, $64
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$98]
    ld [hl+], a
    ldh a, [$99]
    ldh [$98], a
    ld a, $0a
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$98]
    swap a
    ld b, a
    ldh a, [$99]
    add b
    ld [hl], a
    ld de, $cce7
    ld c, $03
    ld a, $0b
    call Call_000_3eb4
    ld hl, $655d
    jp Jump_000_3c36


    rla
    cp l
    ld b, e
    ld a, [hl+]
    ld d, b
    ld hl, $cfe8
    ld de, $cfd4
    ldh a, [$f3]
    and a
    jp z, Jump_03d_6574

    ld hl, $d017
    ld de, $cfce

Jump_03d_6574:
    ld a, [hl]
    and a
    jr nz, jr_03d_65ba

    ld a, [de]
    cp $17
    jr nz, jr_03d_658b

    ld b, h
    ld c, l
    inc bc
    ld a, [bc]
    cp $04
    jr z, jr_03d_65c7

    inc bc
    ld a, [bc]
    cp $04
    jr z, jr_03d_65c7

jr_03d_658b:
    push hl
    ld hl, $66f1
    ld b, $0f
    call Call_000_3e84
    pop hl
    ld a, [$d05e]
    and a
    jr nz, jr_03d_65ba

    set 6, [hl]
    ld hl, $6eb3
    ld b, $0f
    call Call_000_3e84
    ld c, $1e
    call Call_000_372f
    ld hl, $7b83
    ld b, $0f
    call Call_000_3e84
    ld hl, $7b49
    ld b, $0f
    jp Jump_000_3e84


jr_03d_65ba:
    ld c, $32
    call Call_000_372f
    ld hl, $7b39
    ld b, $0f
    jp Jump_000_3e84


jr_03d_65c7:
    ld c, $32
    call Call_000_372f
    ld hl, $5dc3
    ld b, $0f
    jp Jump_000_3e84


    ld a, [$cf90]
    sub $c9
    ret c

    ld d, a
    ld hl, $65f5
    srl a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    srl d
    jr nc, jr_03d_65eb

    swap a

jr_03d_65eb:
    and $f0
    ldh [$8c], a
    xor a
    ldh [$8b], a
    ldh [$8d], a
    ret


    ld [hl-], a
    ld hl, $2434
    inc [hl]
    ld hl, $5545
    ld [hl-], a
    ld [hl-], a
    ld d, l
    ld d, d
    ld d, h
    ld d, d
    ld b, c
    ld hl, $4212
    dec h
    inc h
    ld [hl+], a
    ld d, d
    inc h
    inc [hl]
    ld b, d
    ld a, $08
    ld b, a
    xor a
    ldh [$95], a
    ldh [$9b], a
    ldh [$9c], a
    ldh [$9d], a
    ldh [$9e], a

jr_03d_661c:
    ldh a, [$99]
    srl a
    ldh [$99], a
    jr nc, jr_03d_6644

    ldh a, [$9e]
    ld c, a
    ldh a, [$98]
    add c
    ldh [$9e], a
    ldh a, [$9d]
    ld c, a
    ldh a, [$97]
    adc c
    ldh [$9d], a
    ldh a, [$9c]
    ld c, a
    ldh a, [$96]
    adc c
    ldh [$9c], a
    ldh a, [$9b]
    ld c, a
    ldh a, [$95]
    adc c
    ldh [$9b], a

jr_03d_6644:
    dec b
    jr z, jr_03d_6661

    ldh a, [$98]
    sla a
    ldh [$98], a
    ldh a, [$97]
    rl a
    ldh [$97], a
    ldh a, [$96]
    rl a
    ldh [$96], a
    ldh a, [$95]
    rl a
    ldh [$95], a
    jr jr_03d_661c

jr_03d_6661:
    ldh a, [$9e]
    ldh [$98], a
    ldh a, [$9d]
    ldh [$97], a
    ldh a, [$9c]
    ldh [$96], a
    ldh a, [$9b]
    ldh [$95], a
    ret


    xor a
    ldh [$9a], a
    ldh [$9b], a
    ldh [$9c], a
    ldh [$9d], a
    ldh [$9e], a
    ld a, $09
    ld e, a

jr_03d_6680:
    ldh a, [$9a]
    ld c, a
    ldh a, [$96]
    sub c
    ld d, a
    ldh a, [$99]
    ld c, a
    ldh a, [$95]
    sbc c
    jr c, jr_03d_669b

    ldh [$95], a
    ld a, d
    ldh [$96], a
    ldh a, [$9e]
    inc a
    ldh [$9e], a
    jr jr_03d_6680

jr_03d_669b:
    ld a, b
    cp $01
    jr z, jr_03d_66e5

    ldh a, [$9e]
    sla a
    ldh [$9e], a
    ldh a, [$9d]
    rl a
    ldh [$9d], a
    ldh a, [$9c]
    rl a
    ldh [$9c], a
    ldh a, [$9b]
    rl a
    ldh [$9b], a
    dec e
    jr nz, jr_03d_66d1

    ld a, $08
    ld e, a
    ldh a, [$9a]
    ldh [$99], a
    xor a
    ldh [$9a], a
    ldh a, [$96]
    ldh [$95], a
    ldh a, [$97]
    ldh [$96], a
    ldh a, [$98]
    ldh [$97], a

jr_03d_66d1:
    ld a, e
    cp $01
    jr nz, jr_03d_66d7

    dec b

jr_03d_66d7:
    ldh a, [$99]
    srl a
    ldh [$99], a
    ldh a, [$9a]
    rr a
    ldh [$9a], a
    jr jr_03d_6680

jr_03d_66e5:
    ldh a, [$96]
    ldh [$99], a
    ldh a, [$9e]
    ldh [$98], a
    ldh a, [$9d]
    ldh [$97], a
    ldh a, [$9c]
    ldh [$96], a
    ldh a, [$9b]
    ldh [$95], a
    ret


    call Call_000_3c29
    xor a
    ld [$ccd3], a
    ld a, [$d162]
    cp $06
    jr c, jr_03d_6756

    ld a, [$da7f]
    cp $14
    jr nc, jr_03d_674e

    xor a
    ld [$d068], a
    ld a, [$cf90]
    ld [$cfd7], a
    ld hl, $6c87
    ld b, $0f
    call Call_000_3e84
    call Call_03d_676c
    ld hl, $66e8
    ld b, $03
    call Call_000_3e84
    ld hl, $cf4a
    ld a, [$d59f]
    and $7f
    cp $09
    jr c, jr_03d_6741

    sub $09
    ld [hl], $f7
    inc hl
    add $f6
    jr jr_03d_6743

jr_03d_6741:
    add $f7

jr_03d_6743:
    ld [hl+], a
    ld [hl], $50
    ld hl, $679b
    call Call_000_3c36
    scf
    ret


jr_03d_674e:
    ld hl, $67a0
    call Call_000_3c36
    and a
    ret


jr_03d_6756:
    call Call_03d_676c
    ld hl, $6794
    call Call_000_3c36
    call Call_000_391c
    ld a, $01
    ld [$cc3c], a
    ld [$ccd3], a
    scf
    ret


Call_03d_676c:
    ld a, [$cf90]
    push af
    ld [$d11d], a
    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    dec a
    ld c, a
    ld hl, $d2f6
    ld b, $01
    ld a, $10
    call Call_000_3eb4
    pop af
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $6795
    jp Jump_000_3c36


    ld d, b
    rla
    db $eb
    ld b, c
    dec l
    dec bc
    ld d, b
    rla
    ld a, [$2d41]
    ld d, b
    rla
    ld b, c
    ld b, d
    dec l
    ld d, b
    ld hl, $d886
    ld a, [$d12a]
    and a
    jr nz, jr_03d_67d3

    ld hl, $d349
    ld a, [$d030]
    cp $19
    jr z, jr_03d_67d3

    cp $2a
    jr z, jr_03d_67d3

    cp $2b
    jr z, jr_03d_67d3

    ld [$d0b4], a
    ld a, $07
    ld [$d0b5], a
    ld a, $0e
    ld [$d0b6], a
    call Call_000_3762
    ld hl, $cd6d

jr_03d_67d3:
    ld de, $d049
    ld bc, $000d
    jp Jump_000_00b1


    ldh a, [rDIV]
    ld b, a
    ldh a, [$d3]
    adc b
    ldh [$d3], a
    ldh a, [rDIV]
    ld b, a
    ldh a, [$d4]
    sbc b
    ldh [$d4], a
    ret


    ld a, h
    ld [$cc4f], a
    ld a, l
    ld [$cc50], a
    ld hl, $cc51
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld [hl], c
    ld hl, $681d
    ld de, $0000
    ld a, [$cc4e]
    ld e, a
    add a
    add e
    ld e, a
    jr nc, jr_03d_680f

    inc d

jr_03d_680f:
    add hl, de
    ld d, h
    ld e, l
    ld a, [de]
    ld [$d0b6], a
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ret


    rrca
    dec h
    ld c, [hl]
    dec a
    ld sp, hl
    ld h, c
    dec a
    and [hl]
    ld h, c
    dec bc
    ld a, c
    ld a, l
    dec a
    ld a, b
    ld h, c
    ld e, $16
    ld e, h
    inc bc
    and a
    ld [hl], b
    inc bc
    dec hl
    ld [hl], l
    ld e, $97
    ld c, l
    inc bc
    and h
    ld [hl], l
    inc bc
    and h
    ld [hl], l
    inc bc
    and e
    db $76
    inc bc
    cp h
    db $76
    inc bc
    and h
    ld [hl], l
    inc bc
    and h
    ld [hl], l
    inc bc
    sub $76
    inc bc
    db $ec
    ld [hl], h
    inc bc
    ld d, e
    ld [hl], b
    inc bc
    ld [hl+], a
    ld [hl], b
    inc bc
    sbc $43
    rrca
    add sp, $4a
    inc bc
    ld b, h
    ld [hl], b
    inc bc
    ld b, h
    ld [hl], b
    inc bc
    dec de
    ld l, l
    inc bc
    sub $76
    inc bc
    db $f4
    ld b, h
    ld c, $0c
    ld [hl], b
    ld bc, $6bc8
    inc bc
    dec [hl]
    ld [hl], a
    inc bc
    ld sp, hl
    ld a, $03
    ccf
    ld a, $0a
    ld c, h
    ld a, l
    inc bc
    ld c, d
    ld [hl], a
    ld a, [bc]
    ld h, a
    ld a, l
    inc bc
    cp c
    ld [hl], a
    inc bc
    jr nc, jr_03d_6901

    ld a, [bc]
    adc l
    ld a, l
    inc bc
    xor l
    ld a, b
    inc bc
    ld l, h
    ld a, b
    ld bc, $5b64
    rrca
    adc [hl]
    ld l, [hl]
    stop
    ld b, b
    ld c, $c6
    ld l, l
    inc e
    push hl
    ld a, d
    dec a
    ld hl, sp+$5f
    ld bc, $5b13
    inc bc
    add b
    ld l, b
    db $10
    or $53
    inc e
    rst $10
    ld c, c
    ld e, $7b
    ld e, a
    db $10
    sub a
    ld e, c
    ld e, $c5
    ld e, c
    inc e
    ret nc

    ld c, e
    inc bc
    pop de
    ld b, d
    inc b
    call z, Call_000_0454
    ei
    ld d, [hl]
    db $10
    push hl
    ld d, e
    dec d
    ld e, e
    ld l, b
    db $10
    sbc l
    ld d, b
    ld bc, $600d
    inc bc
    pop de
    ld l, l
    db $10
    ld [de], a
    ld b, e
    ld c, $3f
    ld [hl], c
    inc e
    ld h, a
    ld a, d
    inc e
    ld hl, sp+$61
    inc bc
    sub e
    ld l, a
    rla
    sub e
    ld e, e
    inc b
    ldh a, [$62]
    inc b
    dec e
    ld h, e
    inc e
    or e
    ld e, [hl]
    rla
    call nc, Call_000_0340
    ld h, c
    ld [hl], c
    inc bc
    xor l
    ld a, b
    rrca
    or c
    ld c, [hl]
    inc e
    db $e4
    ld c, a
    add hl, bc
    jr nz, jr_03d_697e

jr_03d_6901:
    db $10
    ld l, a
    ld d, c
    ld bc, $5b63
    ld bc, $625d
    ld b, $e5
    ld h, [hl]
    inc e
    ld d, [hl]
    ld a, e
    inc e
    inc h
    ld a, d
    inc e
    ld e, c
    ld a, c
    inc e
    ld [hl-], a
    ld a, e
    inc e
    add [hl]
    ld e, e
    inc a
    ld h, $4f
    ld de, $4169
    ld e, $15
    ld b, [hl]
    ld e, $67
    ld b, l
    inc bc
    add hl, bc
    ld b, e
    inc bc
    ld d, [hl]
    ld b, e
    dec a
    ld b, $5b
    ld bc, $4d55
    add hl, bc
    ld c, l
    ld a, l
    inc bc
    ld sp, hl
    ld [hl], d
    inc b
    ld l, b
    ld d, h
    inc b
    ld l, a
    ld d, h
    rlca
    ld h, h
    ld b, d
    ld d, $cc
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_697e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
