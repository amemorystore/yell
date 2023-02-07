; disasSembly of "yell.gbc"
SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

Call_01c_4000:
    ld a, $f9
    ldh [rOBP0], a
    ld a, $a4
    ldh [rOBP1], a
    call Call_000_3040
    call Call_000_3061
    ld de, $4757
    ld hl, $8a00
    ld bc, $1e01
    call Call_000_15fe
    ld de, $4857
    ld hl, $8a10
    ld bc, $1e01
    call Call_000_15fe
    ld de, $41b6
    ld hl, $8a20
    ld bc, $1c01
    call Call_000_15fe
    ld hl, $4166
    ld de, $c360
    ld bc, $0040
    call Call_000_00b1
    ld hl, $41a6
    ld de, $c300
    ld bc, $0010
    jp Jump_000_00b1


    call Call_01c_4000
    ld a, $c2
    call Call_000_2238
    ld hl, $c300
    ld bc, $a004

jr_01c_4058:
    push hl
    push bc

jr_01c_405a:
    ld a, [hl]
    add $04
    ld [hl+], a
    ld a, [hl]
    add $fc
    ld [hl+], a
    inc hl
    inc hl
    dec c
    jr nz, jr_01c_405a

    ld c, $01
    call Call_000_10ba
    pop bc
    pop hl
    ret c

    ld a, [hl]
    cp $50
    jr nz, jr_01c_4076

    jr jr_01c_4058

jr_01c_4076:
    cp b
    jr nz, jr_01c_4058

    ld hl, $c300
    ld c, $04
    ld de, $0004

jr_01c_4081:
    ld [hl], $a0
    add hl, de
    dec c
    jr nz, jr_01c_4081

    ld b, $03

jr_01c_4089:
    ld hl, $ff48
    rrc [hl]
    rrc [hl]
    call Call_000_3040
    ld c, $0a
    call Call_000_10ba
    ret c

    dec b
    jr nz, jr_01c_4089

    ld de, $c300
    ld a, $18

jr_01c_40a1:
    push af
    ld hl, $4101
    ld bc, $0004
    call Call_000_00b1
    pop af
    dec a
    jr nz, jr_01c_40a1

    xor a
    ld [$cd3d], a
    ld hl, $4105
    ld c, $06

jr_01c_40b8:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push bc
    push hl
    ld hl, $c350
    ld c, $04

jr_01c_40c3:
    ld a, [de]
    cp $ff
    jr z, jr_01c_40e8

    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    inc hl
    push bc
    ld a, [de]
    ld b, a
    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    inc de
    pop bc
    inc hl
    dec c
    jr nz, jr_01c_40c3

    ld a, [$cd3d]
    cp $18
    jr z, jr_01c_40e8

    add $06
    ld [$cd3d], a

jr_01c_40e8:
    call Call_01c_4142
    push af
    ld hl, $c310
    ld de, $c300
    ld bc, $0050
    call Call_000_00b1
    pop af
    pop hl
    pop bc
    ret c

    dec c
    jr nz, jr_01c_40b8

    and a
    ret


jr_01c_4101:
    nop
    nop
    and d
    sub b
    ld de, $1d41
    ld b, c
    add hl, hl
    ld b, c
    dec [hl]
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld l, b
    jr nc, jr_01c_4119

    ld l, b
    ld b, b
    dec b
    ld l, b
    ld e, b

jr_01c_4119:
    inc b
    ld l, b
    ld a, b
    rlca
    ld l, b
    jr c, jr_01c_4125

    ld l, b
    ld c, b
    ld b, $68
    ld h, b

jr_01c_4125:
    inc b
    ld l, b
    ld [hl], b
    rlca
    ld l, b
    inc [hl]
    dec b
    ld l, b
    ld c, h
    ld b, $68
    ld d, h
    ld b, $68
    ld h, h
    rlca
    ld l, b
    inc a
    dec b
    ld l, b
    ld e, h
    inc b
    ld l, b
    ld l, h
    rlca
    ld l, b
    ld [hl], h
    rlca
    rst $38

Call_01c_4142:
    ld b, $08

jr_01c_4144:
    ld hl, $c35c
    ld a, [$cd3d]
    ld de, $fffc
    ld c, a

jr_01c_414e:
    inc [hl]
    add hl, de
    dec c
    jr nz, jr_01c_414e

    ldh a, [rOBP1]
    xor $a0
    ldh [rOBP1], a
    call Call_000_3061
    ld c, $03
    call Call_000_10ba
    ret c

    dec b
    jr nz, jr_01c_4144

    ret


    ld c, b
    ld d, b
    adc l
    nop
    ld c, b
    ld e, b
    adc [hl]
    nop
    ld d, b
    ld d, b
    adc a
    nop
    ld d, b
    ld e, b
    sub b
    nop
    ld e, b
    ld d, b
    sub c
    nop
    ld e, b
    ld e, b
    sub d
    nop
    ld h, b
    jr nc, jr_01c_4101

    nop
    ld h, b
    jr c, @-$7d

    nop
    ld h, b
    ld b, b
    add d
    nop
    ld h, b
    ld c, b
    add e
    nop
    ld h, b
    ld d, b
    sub e
    nop
    ld h, b
    ld e, b
    add h
    nop
    ld h, b
    ld h, b
    add l
    nop
    ld h, b
    ld l, b
    add e
    nop
    ld h, b
    ld [hl], b
    add c
    nop
    ld h, b
    ld a, b
    add [hl]
    nop
    nop
    and b
    and b
    inc d
    nop
    xor b
    and b
    inc [hl]
    ld [$a1a0], sp
    inc d
    ld [$a1a8], sp
    inc [hl]
    inc b
    nop
    rra
    nop
    ld c, $00
    ld a, [bc]
    jr nz, jr_01c_41bf

jr_01c_41bf:
    ld hl, sp+$00
    ld [hl], b
    nop
    ld d, b
    nop
    nop
    call Call_01c_447b
    call Call_000_16dd
    ld c, $64
    call Call_000_372f
    call Call_000_3683
    call Call_000_36a3
    call Call_000_0061
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call Call_000_166e
    call Call_000_007b
    ld hl, $ff40
    set 3, [hl]
    xor a
    ld hl, $cc5b
    ld bc, $0060
    call Call_000_166e
    xor a
    ld [$cfca], a
    ldh [$d7], a
    ld [$d0a9], a
    ld [$d357], a
    ld [$cd40], a
    inc a
    ldh [$ba], a
    ld hl, $d5a1
    ld a, [hl]
    inc a
    jr z, jr_01c_4211

    inc [hl]

jr_01c_4211:
    ld a, $90
    ldh [$b0], a
    ld c, $1f
    ld a, $ca
    call Call_000_2211
    ld hl, $d163
    ld c, $ff

jr_01c_4221:
    ld a, [hl+]
    cp $ff
    jr z, jr_01c_4266

    inc c
    push hl
    push bc
    ld [$cd3d], a
    ld a, c
    ld [$cd3e], a
    ld hl, $d18b
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl]
    ld [$cd3f], a
    call Call_01c_42a2
    call Call_01c_430e
    ld c, $50
    call Call_000_372f
    ld hl, $c4a6
    ld bc, $030e
    call Call_000_16f0
    ld hl, $c4d0
    ld de, $4295
    call Call_000_1723
    ld c, $b4
    call Call_000_372f
    call Call_000_1e96
    pop bc
    pop hl
    jr jr_01c_4221

jr_01c_4266:
    ld a, c
    inc a
    ld hl, $cc5b
    ld bc, $0010
    call Call_000_3a74
    ld [hl], $ff
    ld hl, $7e2e
    ld b, $1c
    call Call_000_3e84
    xor a
    ld [$cd3d], a
    inc a
    ld [$cd40], a
    call Call_01c_42a2
    call Call_01c_43d1
    call Call_01c_447b
    xor a
    ldh [$b0], a
    ld hl, $ff40
    res 3, [hl]
    ret


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
    ld d, b

Call_01c_42a2:
    call Call_000_16dd
    ld a, $d0
    ldh [$af], a
    ld a, $c0
    ldh [$ae], a
    ld a, [$cd3d]
    ld [$cf90], a
    ld [$d0b4], a
    ld [$cfd8], a
    ld [$cf1c], a
    ld a, [$cd40]
    and a
    jr z, jr_01c_42c7

    call Call_01c_4390
    jr jr_01c_42d5

jr_01c_42c7:
    ld hl, $c410
    call Call_000_132f
    call Call_000_1149
    ld a, $04
    call Call_000_3eb4

jr_01c_42d5:
    ld b, $0b
    ld c, $00
    call Call_000_3e05
    ld a, $e4
    ldh [rBGP], a
    call Call_000_3021
    ld c, $31
    call Call_01c_43c7
    ld d, $a0
    ld e, $04
    ld a, [$cf1a]
    and a
    jr z, jr_01c_42f4

    sla e

jr_01c_42f4:
    call Call_01c_4302
    xor a
    ldh [$af], a
    ld c, a
    call Call_01c_43c7
    ld d, $00
    ld e, $fc

Call_01c_4302:
jr_01c_4302:
    call Call_000_1e64
    ldh a, [$ae]
    add e
    ldh [$ae], a
    cp d
    jr nz, jr_01c_4302

    ret


Call_01c_430e:
    ld a, [$cd3e]
    ld hl, $d2b4
    call Call_000_139a
    call Call_01c_4348
    ld a, [$cd3e]
    ld [$cf91], a
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_01c_4336

    ld e, $22
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    jr jr_01c_433c

jr_01c_4336:
    ld a, [$cd3d]
    call Call_000_118b

jr_01c_433c:
    jp Jump_01c_445c


    call Call_01c_4348
    ld a, [$cd3d]
    jp Jump_000_118b


Call_01c_4348:
    ld hl, $c3c8
    ld bc, $090a
    call Call_000_16f0
    ld hl, $c41a
    ld de, $437b
    call Call_000_1723
    ld hl, $c3f1
    ld de, $cd6d
    call Call_000_1723
    ld a, [$cd3f]
    ld hl, $c434
    call Call_000_131b
    ld a, [$cd3d]
    ld [$d0b4], a
    ld hl, $c457
    ld a, $4b
    call Call_000_3eb4
    ret


    adc e
    add h
    sub l
    add h
    adc e
    di
    ld c, [hl]
    sub e
    sbc b
    adc a
    add h
    rst $30
    di
    ld c, [hl]
    sub e
    sbc b
    adc a
    add h
    ld hl, sp-$0d
    ld d, b

Call_01c_4390:
    ld de, $5a97
    ld a, $04
    call Call_000_36e3
    ld a, $00
    call Call_000_3e99
    ld hl, $a188
    ld de, $a000
    ld bc, $0310
    call Call_000_00b1
    call Call_000_3ea9
    ld de, $9000
    call Call_000_14c7
    ld de, $43b1
    ld a, $3d
    call Call_000_36e3
    ld a, $03
    call Call_000_3eb4
    ld de, $9310
    call Call_000_14c7
    ld c, $01

Call_01c_43c7:
    ld b, $00
    ld hl, $c410
    ld a, $31
    jp Jump_000_3eb4


Call_01c_43d1:
    ld hl, $d746
    set 3, [hl]
    ld a, $56
    call Call_000_3eb4
    ld hl, $c3f0
    ld bc, $060a
    call Call_000_16f0
    ld hl, $c3a5
    ld bc, $0209
    call Call_000_16f0
    ld hl, $c3cf
    ld de, $d157
    call Call_000_1723
    ld hl, $c419
    ld de, $4442
    call Call_000_1723
    ld hl, $c431
    ld de, $da40
    ld bc, $0103
    call Call_000_3c5b
    ld [hl], $6d
    inc hl
    ld de, $da42
    ld bc, $8102
    call Call_000_3c5b
    ld hl, $c455
    ld de, $444c
    call Call_000_1723
    ld hl, $c46c
    ld de, $d346
    ld c, $a3
    call Call_000_13ad
    ld hl, $4452
    call Call_01c_443a
    ld hl, $4457
    call Call_01c_443a
    ld hl, $cc5d

Call_01c_443a:
    call Call_000_3c36
    ld c, $78
    jp Jump_000_372f


    adc a
    adc e
    add b
    sbc b
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld d, b
    adc h
    adc [hl]
    adc l
    add h
    sbc b
    ld d, b
    rla
    rlca
    ld h, b
    daa
    ld d, b
    rla
    jr nc, jr_01c_44ba

    daa
    ld d, b

Jump_01c_445c:
    ld hl, $cc5b
    ld bc, $0010
    ld a, [$cd3e]
    call Call_000_3a74
    ld a, [$cd3d]
    ld [hl+], a
    ld a, [$cd3f]
    ld [hl+], a
    ld e, l
    ld d, h
    ld hl, $cd6d
    ld bc, $000b
    jp Jump_000_00b1


Call_01c_447b:
    ld a, $0a
    ld [$cfc7], a
    ld [$cfc8], a
    ld a, $ff
    ld [$cfc6], a
    jp Jump_000_1e96


    ld de, $450b
    ld hl, $87c0
    ld bc, $1c03
    call Call_000_15fe
    ld hl, $cfca
    ld a, [hl]
    push af
    ld [hl], $ff
    push hl
    ldh a, [rOBP1]
    push af
    ld a, $e0
    ldh [rOBP1], a
    call Call_000_3061
    ld hl, $c384
    ld de, $452b
    call Call_01c_455a
    ld a, $04
    ld [$cfc6], a
    call Call_000_2233

jr_01c_44ba:
    ld a, [$cfc6]
    and a
    jr nz, jr_01c_44ba

    ld a, [$d162]
    ld b, a

jr_01c_44c4:
    call Call_01c_455a
    ld a, $9e
    call Call_000_2238
    ld c, $1e
    call Call_000_372f
    dec b
    jr nz, jr_01c_44c4

    ld a, [$c0ef]
    cp $1f
    ld [$c0f0], a
    jr nz, jr_01c_44e6

    call Call_000_2233
    ld a, $02
    ld [$c0ef], a

jr_01c_44e6:
    ld a, $e8
    ld [$c0ee], a
    call Call_000_2238
    ld d, $28
    call Call_01c_4547

jr_01c_44f3:
    ld a, [$c026]
    cp $e8
    jr z, jr_01c_44f3

    ld c, $20
    call Call_000_372f
    pop af
    ldh [rOBP1], a
    call Call_000_3061
    pop hl
    pop af
    ld [hl], a
    jp Jump_000_231c


    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
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
    inc h
    inc [hl]
    ld a, h
    inc d
    dec hl
    jr nc, jr_01c_45af

    inc d
    dec hl
    jr c, @+$7f

    inc [hl]
    jr nc, @+$32

    ld a, l
    inc d
    jr nc, @+$3a

    ld a, l
    inc [hl]
    dec [hl]
    jr nc, @+$7f

    inc d
    dec [hl]
    jr c, jr_01c_45c3

    inc [hl]

Call_01c_4547:
    ld b, $08

jr_01c_4549:
    ldh a, [rOBP1]
    xor d
    ldh [rOBP1], a
    call Call_000_3061
    ld c, $0a
    call Call_000_372f
    dec b
    jr nz, jr_01c_4549

    ret


Call_01c_455a:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ret


    call Call_01c_474f
    ld a, $ec
    ld [$c104], a
    call Call_000_3ddb
    push hl
    call Call_000_1ebd
    ld hl, $d732
    bit 7, [hl]

jr_01c_457b:
    res 7, [hl]
    jr nz, jr_01c_45ca

    ld a, $a0
    call Call_000_2238
    ld hl, $d731
    bit 4, [hl]
    pop hl
    jr nz, jr_01c_45bb

    call Call_01c_4605
    ld a, $a3
    call Call_000_2238
    call Call_01c_47e7
    ld a, b
    and a
    jr nz, jr_01c_45b5

    ld hl, $cd3d
    xor a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld [hl], $ff
    ld hl, $cd48
    call Call_01c_4790
    ld a, $01

jr_01c_45af:
    ld [$d430], a

jr_01c_45b2:
    call Call_000_216b

jr_01c_45b5:
    call Call_000_151d
    jp Jump_01c_47d2


jr_01c_45bb:
    ld c, $32
    call Call_000_372f
    call Call_01c_4605

jr_01c_45c3:
    ld a, $00
    ld [$d430], a
    jr jr_01c_45b5

jr_01c_45ca:
    pop hl
    call Call_01c_4735
    ld a, $a4
    call Call_000_2238
    ld hl, $cd3d
    xor a
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld [hl], $08
    ld de, $45ed
    call Call_01c_470c
    call Call_000_07d7
    ld a, $01
    ld [$d430], a
    jr jr_01c_45b2

    dec b
    sbc b
    rrca
    sub b
    jr jr_01c_457b

    jr nz, @-$7e

    daa
    ld a, b
    dec l
    ld [hl], b
    ld [hl-], a
    ld l, b
    ld [hl], $60
    add hl, sp
    ld e, b
    dec sp
    ld d, b
    inc a
    ld c, b
    inc a
    ld b, b

Call_01c_4605:
    ld hl, $cd3d
    ld a, $10
    ld [hl+], a
    ld a, $3c
    ld [hl+], a
    call Call_01c_47df
    ld [hl], a
    jp Jump_01c_47b5


    call Call_000_1510
    call Call_01c_474f
    call Call_01c_47e7
    ld a, b
    and a
    jr z, jr_01c_464d

    dec a
    jp nz, Jump_01c_46db

jr_01c_4626:
    ld a, $9f
    call Call_000_2238
    ld hl, $cd3d
    ld a, $f0
    ld [hl+], a
    ld a, $ec
    ld [hl+], a
    call Call_01c_47df
    ld [hl], a
    call Call_01c_47b5
    call Call_01c_47e7
    ld a, b
    dec a
    jr z, jr_01c_4647

    ld c, $0a
    call Call_000_372f

jr_01c_4647:
    call Call_000_1e96
    jp Jump_01c_47d2


jr_01c_464d:
    ld a, $04
    call Call_000_0785
    ld a, [$d731]
    bit 6, a
    jr z, jr_01c_466e

    ld hl, $cd3d
    ld a, $10
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl], $a1
    ld hl, $cd48
    call Call_01c_4790
    jr jr_01c_4626

jr_01c_466e:
    call Call_01c_4735
    ld hl, $cd3d
    ld a, $ff
    ld [hl+], a
    ld a, $08
    ld [hl+], a
    ld [hl], $0c
    call Call_01c_470c
    ld a, $a4
    call Call_000_2238
    ld hl, $cd3d
    xor a
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld [hl], $0c
    ld de, $46ad
    call Call_01c_470c
    ld c, $28
    call Call_000_372f
    ld hl, $cd3e
    ld a, $0b
    ld [hl+], a
    ld [hl], $08
    ld de, $46c5
    call Call_01c_470c
    call Call_000_1e96
    jp Jump_01c_47d2


    inc a
    ld c, b
    inc a
    ld d, b
    dec sp
    ld e, b
    ld a, [hl-]
    ld h, b
    add hl, sp
    ld l, b
    scf
    ld [hl], b
    scf
    ld a, b
    inc sp
    add b
    jr nc, jr_01c_4647

    dec l
    sub b
    ld a, [hl+]
    sbc b
    daa
    and b
    ld a, [de]
    sub b
    add hl, de
    add b
    rla
    ld [hl], b
    dec d
    ld h, b
    ld [de], a
    ld d, b
    rrca
    ld b, b
    inc c
    jr nc, jr_01c_46dd

    jr nz, jr_01c_46db

    stop
    nop
    ldh a, [rP1]

Jump_01c_46db:
jr_01c_46db:
    ld a, $ff

jr_01c_46dd:
    ld [$cfca], a
    ld a, [$c302]
    ld [$c30a], a
    ld a, [$c306]
    ld [$c30e], a
    ld a, $a0
    ld [$c300], a
    ld [$c304], a
    ld c, $02
    call Call_000_372f
    ld a, $a0
    ld [$c308], a
    ld [$c30c], a
    call Call_000_1e96
    ld a, $01
    ld [$cfca], a
    jp Jump_01c_47d2


Call_01c_470c:
jr_01c_470c:
    ld a, [$cd3f]
    xor $01
    ld [$cd3f], a
    ld [$c102], a
    call Call_000_3ddb
    ld a, [$cd3d]
    cp $ff
    jr z, jr_01c_472b

    ld hl, $c104
    ld a, [de]
    inc de
    ld [hl+], a
    inc hl
    ld a, [de]
    inc de
    ld [hl], a

jr_01c_472b:
    ld a, [$cd3e]
    dec a
    ld [$cd3e], a
    jr nz, jr_01c_470c

    ret


Call_01c_4735:
    ld de, $5171
    ld b, $05
    ld c, $0c
    ld hl, $8000
    call Call_000_15fe
    ld de, $5231
    ld b, $05
    ld c, $0c
    ld hl, $8800
    jp Jump_000_15fe


Call_01c_474f:
    ld a, [$c102]
    ld [$cd50], a
    ld a, [$c104]
    ld [$cd4f], a
    ld hl, $4773
    ld de, $cd48
    ld bc, $0004
    call Call_000_00b1
    ld a, [$c102]
    ld hl, $cd48

jr_01c_476d:
    cp [hl]
    inc hl
    jr nz, jr_01c_476d

    dec hl
    ret


    nop
    ld [$0c04], sp

Call_01c_4777:
    ld a, [hl]
    ld [$c102], a
    push hl
    ld hl, $cd48
    ld de, $cd47
    ld bc, $0004
    call Call_000_00b1
    ld a, [$cd47]
    ld [$cd4b], a
    pop hl
    ret


Call_01c_4790:
jr_01c_4790:
    call Call_01c_4777
    ld a, [$cd3d]
    ld c, a
    and $03
    jr nz, jr_01c_47a3

    ld a, [$cd40]
    cp $ff
    call nz, Call_000_2238

jr_01c_47a3:
    ld a, [$cd3e]
    add c
    ld [$cd3d], a
    ld c, a
    ld a, [$cd3f]
    cp c
    ret z

    call Call_000_372f
    jr jr_01c_4790

Call_01c_47b5:
Jump_01c_47b5:
jr_01c_47b5:
    call Call_01c_4777
    ld a, [$cd3d]
    ld c, a
    ld a, [$c104]
    add c
    ld [$c104], a
    ld c, a
    ld a, [$cd3e]
    cp c
    ret z

    ld a, [$cd3f]
    ld c, a
    call Call_000_372f
    jr jr_01c_47b5

Jump_01c_47d2:
    ld a, [$cd4f]
    ld [$c104], a
    ld a, [$cd50]
    ld [$c102], a
    ret


Call_01c_47df:
    ld a, [$cf1a]
    xor $01
    inc a
    inc a
    ret


Call_01c_47e7:
    ld b, $00
    ld hl, $4809
    ld a, [$d366]
    ld c, a

jr_01c_47f0:
    ld a, [hl+]
    cp $ff
    jr z, jr_01c_4804

    cp c
    jr nz, jr_01c_47fe

    ld a, [$c45c]
    cp [hl]
    jr z, jr_01c_4802

jr_01c_47fe:
    inc hl
    inc hl
    jr jr_01c_47f0

jr_01c_4802:
    inc hl
    ld b, [hl]

jr_01c_4804:
    ld a, b
    ld [$cd5b], a
    ret


    ld d, $20
    ld bc, $1116
    ld [bc], a
    ld de, $0222
    db $10
    ld d, l
    ld bc, $0eff
    ld a, [bc]
    call Call_000_372f
    ld hl, $d735
    set 6, [hl]
    ld hl, $8000
    ld de, $4571
    ld b, $05
    ld c, $0c
    call Call_000_15fe
    ld a, $04
    ld hl, $48c7
    call Call_01c_57fe
    ld a, [$c102]
    ld c, a
    ld b, $00
    ld hl, $48b7
    add hl, bc
    ld de, $c39c
    ld bc, $0004
    call Call_000_00b1
    ld c, $64
    call Call_000_372f
    ld a, [$cd3d]
    and a
    ld hl, $48a8
    jr z, jr_01c_4897

    cp $02
    ld hl, $48ad
    jr z, jr_01c_4897

    ld b, $0a

jr_01c_485f:
    ld hl, $c104
    call Call_01c_48a3
    ld hl, $c39c
    call Call_01c_48a3
    call Call_000_3ddb
    dec b
    jr nz, jr_01c_485f

    ld a, [$c102]
    cp $04
    jr nz, jr_01c_487d

    ld a, $a0
    ld [$c39c], a

jr_01c_487d:
    ld hl, $cd4f
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $4c
    call Call_000_3eb4
    ld a, [$c102]
    cp $04
    jr nz, jr_01c_4894

    ld a, $44
    ld [$c39c], a

jr_01c_4894:
    ld hl, $48b2

jr_01c_4897:
    call Call_000_3c36
    ld hl, $d735
    res 6, [hl]
    call Call_000_3683
    ret


Call_01c_48a3:
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


    rla
    ld c, l
    ld b, b
    ld h, $50
    rla
    ld h, c
    ld b, b
    ld h, $50
    rla
    add d
    ld b, b
    ld h, $50
    ld e, e
    ld c, h
    db $fd
    nop
    ld b, h
    ld c, h
    db $fd
    nop
    ld d, b
    ld b, b
    cp $00
    ld d, b
    ld e, b
    cp $20
    sbc d
    ld h, c
    ld [bc], a
    ld e, $20
    add b
    cp d
    ld h, c
    ld [bc], a
    ld e, $60
    add b
    jp c, $0261

    ld e, $a0
    add b
    ld a, [$0361]
    ld e, $d0
    adc a
    ld a, [$d713]
    ld c, a
    inc a
    cp $10
    jr nc, jr_01c_48f6

    ld [$d713], a
    ld b, $00
    ld hl, $491b
    add hl, bc
    ld a, [hl]
    ld [$c104], a
    ret


jr_01c_48f6:
    ld a, [$cfc4]
    cp $00
    ret nz

    call Call_000_231c
    call Call_000_3ddb
    xor a
    ldh [$b4], a
    ldh [$b3], a
    ldh [$b2], a
    ld [$d713], a
    ld hl, $d735
    res 6, [hl]
    ld hl, $d72f
    res 7, [hl]
    xor a
    ld [$cd6b], a
    ret


    jr c, @+$38

    inc [hl]
    ld [hl-], a
    ld sp, $3030
    jr nc, jr_01c_4955

    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl], $38
    inc a
    inc a
    ld a, $e4
    ldh [rOBP1], a
    call Call_000_3061
    call Call_01c_4994
    ld hl, $c3ac
    ld bc, $0707
    call Call_000_1692
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    ld a, $91
    ld [$cee9], a
    ld a, $01
    ldh [$f3], a
    ld hl, $58d4
    ld b, $1e
    call Call_000_3e84

jr_01c_4955:
    ld d, $80
    call Call_01c_4547

jr_01c_495a:
    ld c, $0a
    call Call_000_372f
    ldh a, [rOBP1]
    sla a
    sla a
    ldh [rOBP1], a
    call Call_000_3061
    jr nz, jr_01c_495a

    call Call_000_0082
    call Call_01c_4994
    ld b, $e4

jr_01c_4974:
    ld c, $0a
    call Call_000_372f
    ldh a, [rOBP1]
    srl b
    rra
    srl b
    rra
    ldh [rOBP1], a
    call Call_000_3061
    ld a, b
    and a
    jr nz, jr_01c_4974

    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    jp Jump_000_0082


Call_01c_4994:
    ld de, $9000
    ld hl, $8000
    ld bc, $0031
    call Call_000_15fe
    ld a, $10
    ld [$d081], a
    ld a, $70
    ld [$d080], a
    ld hl, $c300
    ld bc, $0606
    ld d, $08

jr_01c_49b2:
    push bc
    ld a, [$d081]
    ld e, a

jr_01c_49b7:
    ld a, e
    add $08
    ld e, a
    ld [hl+], a
    ld a, [$d080]
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $14
    ld [hl+], a
    inc d
    dec c
    jr nz, jr_01c_49b7

    inc d
    ld a, [$d080]
    add $08
    ld [$d080], a
    pop bc
    dec b
    jr nz, jr_01c_49b2

    ret


    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    xor a
    ldh [$b0], a
    dec a
    ld [$cfca], a
    call Call_000_1e64
    ld hl, $c102
    ldh a, [$8c]
    ld c, a
    ld b, $00
    ld de, $0010

jr_01c_49f3:
    ld a, [hl]
    cp $ff
    jr z, jr_01c_49f9

    inc b

jr_01c_49f9:
    add hl, de
    dec c
    jr nz, jr_01c_49f3

    ld hl, $c310
    ld c, $09

jr_01c_4a02:
    ld a, b
    swap a
    cp l
    jr z, jr_01c_4a13

    push hl
    push bc
    ld bc, $0010
    xor a
    call Call_000_166e
    pop bc
    pop hl

jr_01c_4a13:
    ld de, $0010
    add hl, de
    dec c
    jr nz, jr_01c_4a02

    call Call_000_3ddb
    call Call_01c_4ab7
    ld bc, $0000
    ld a, [$d12a]
    cp $04
    jr z, jr_01c_4a33

    call Call_01c_4a4c
    call Call_01c_4a59
    call Call_01c_4a83

jr_01c_4a33:
    ld hl, $4a3c
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    sbc d
    ld c, l
    push hl
    ld c, d
    ld e, d
    ld c, l
    push hl
    ld c, d
    ld a, [hl+]
    ld c, l
    push af
    ld c, e
    db $f4
    ld c, h
    ld b, b
    ld c, h

Call_01c_4a4c:
    ld a, [$d058]
    cp $c8
    jr nc, jr_01c_4a56

    res 0, c
    ret


jr_01c_4a56:
    set 0, c
    ret


Call_01c_4a59:
    ld hl, $d16b

jr_01c_4a5c:
    ld a, [hl+]
    or [hl]
    jr nz, jr_01c_4a66

    ld de, $002b
    add hl, de
    jr jr_01c_4a5c

jr_01c_4a66:
    ld de, $001f
    add hl, de
    ld a, [hl]
    add $03
    ld e, a
    ld a, [$d126]
    sub e
    jr nc, jr_01c_4a7c

    res 1, c
    ld a, $01
    ld [$cd47], a
    ret


jr_01c_4a7c:
    set 1, c
    xor a
    ld [$cd47], a
    ret


Call_01c_4a83:
    ld a, [$d35d]
    ld e, a
    ld hl, $4aa9

jr_01c_4a8a:
    ld a, [hl+]
    cp $ff
    jr z, jr_01c_4a95

    cp e
    jr nz, jr_01c_4a8a

jr_01c_4a92:
    set 2, c
    ret


jr_01c_4a95:
    ld hl, $4aae

jr_01c_4a98:
    ld a, [hl+]
    cp $ff
    jr z, jr_01c_4aa6

    ld d, a
    ld a, [hl+]
    cp e
    jr c, jr_01c_4a98

    ld a, e
    cp d
    jr nc, jr_01c_4a92

jr_01c_4aa6:
    res 2, c
    ret


    inc sp
    ld d, d
    ret nz

    add sp, -$01
    dec sp
    dec a
    ld e, a
    db $76
    adc l
    sub a
    rst $08
    db $e4
    rst $38

Call_01c_4ab7:
    ld hl, $8ff0
    ld de, $4ac3
    ld bc, $1c01
    jp Jump_000_15fe


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

Call_01c_4ad3:
Jump_01c_4ad3:
    ld a, $ff
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ret


    ld a, [$cd47]
    and a
    jr z, jr_01c_4af0

    call Call_01c_4b1d
    jr jr_01c_4b12

jr_01c_4af0:
    ld hl, $c472
    ld a, $03
    ld [$d09e], a
    ld a, l
    ld [$d09a], a
    ld a, h
    ld [$d099], a
    ld b, $78

jr_01c_4b02:
    ld c, $03

jr_01c_4b04:
    push bc
    call Call_01c_4b6c
    pop bc
    dec c
    jr nz, jr_01c_4b04

    call Call_000_1e64
    dec b
    jr nz, jr_01c_4b02

jr_01c_4b12:
    call Call_01c_4ad3
    xor a
    ld [$d09a], a
    ld [$d099], a
    ret


Call_01c_4b1d:
    ld a, $07
    ld [$cd3d], a
    ld hl, $c3a0
    ld c, $11
    ld de, $0014
    call Call_01c_4b53
    inc c
    jr jr_01c_4b36

jr_01c_4b30:
    ld de, $0014
    call Call_01c_4b53

jr_01c_4b36:
    inc c
    ld de, $0001
    call Call_01c_4b53
    dec c
    dec c
    ld de, $ffec
    call Call_01c_4b53
    inc c
    ld de, $ffff
    call Call_01c_4b53
    dec c
    dec c
    ld a, c
    and a
    jr nz, jr_01c_4b30

    ret


Call_01c_4b53:
    push bc

jr_01c_4b54:
    ld [hl], $ff
    add hl, de
    push bc
    ld a, [$cd3d]
    dec a
    jr nz, jr_01c_4b63

    call Call_01c_4d8f
    ld a, $07

jr_01c_4b63:
    ld [$cd3d], a
    pop bc
    dec c
    jr nz, jr_01c_4b54

    pop bc
    ret


Call_01c_4b6c:
    ld bc, $ffec
    ld de, $0014
    ld a, [$d09a]
    ld l, a
    ld a, [$d099]
    ld h, a
    ld a, [$d09e]
    cp $00
    jr z, jr_01c_4b98

    cp $01
    jr z, jr_01c_4ba2

    cp $02
    jr z, jr_01c_4bac

    cp $03
    jr z, jr_01c_4bb6

jr_01c_4b8d:
    ld [hl], $ff

jr_01c_4b8f:
    ld a, l
    ld [$d09a], a
    ld a, h
    ld [$d099], a
    ret


jr_01c_4b98:
    dec hl
    ld a, [hl]
    cp $ff
    jr nz, jr_01c_4bc0

    inc hl
    add hl, bc
    jr jr_01c_4b8d

jr_01c_4ba2:
    add hl, de
    ld a, [hl]
    cp $ff
    jr nz, jr_01c_4bc0

    add hl, bc
    dec hl
    jr jr_01c_4b8d

jr_01c_4bac:
    inc hl
    ld a, [hl]
    cp $ff
    jr nz, jr_01c_4bc0

    dec hl
    add hl, de
    jr jr_01c_4b8d

jr_01c_4bb6:
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_01c_4bc0

    add hl, de
    inc hl
    jr jr_01c_4b8d

jr_01c_4bc0:
    ld [hl], $ff
    ld a, [$d09e]
    inc a
    cp $04
    jr nz, jr_01c_4bcb

    xor a

jr_01c_4bcb:
    ld [$d09e], a
    jr jr_01c_4b8f

Call_01c_4bd0:
jr_01c_4bd0:
    ld hl, $4be8

jr_01c_4bd3:
    ld a, [hl+]
    cp $01
    jr z, jr_01c_4be4

    ldh [rBGP], a
    call Call_000_3021
    ld c, $02
    call Call_000_372f
    jr jr_01c_4bd3

jr_01c_4be4:
    dec b
    jr nz, jr_01c_4bd0

    ret


    ld sp, hl
    cp $ff
    cp $f9
    db $e4
    sub b
    ld b, b
    nop
    ld b, b
    sub b
    db $e4
    ld bc, $090e

jr_01c_4bf7:
    push bc
    xor a
    ldh [$ba], a
    ld hl, $c42c
    ld de, $c440
    ld bc, $ffd8
    call Call_01c_4c88
    ld hl, $c468
    ld de, $c454
    ld bc, $0028
    call Call_01c_4c88
    ld hl, $c3a8
    ld de, $c3a9
    ld bc, $fffe
    call Call_01c_4cb5
    ld hl, $c3ab
    ld de, $c3aa
    ld bc, $0002
    call Call_01c_4cb5
    ld a, $01
    ldh [$ba], a
    ld c, $06
    call Call_000_372f
    pop bc
    dec c
    jr nz, jr_01c_4bf7

    call Call_01c_4ad3
    ld c, $0a
    jp Jump_000_372f


    ld c, $09
    xor a
    ldh [$ba], a

jr_01c_4c45:
    push bc
    ld hl, $c4e0
    ld de, $c4f4
    ld bc, $ffd8
    call Call_01c_4c88
    ld hl, $c3b4
    ld de, $c3a0
    ld bc, $0028
    call Call_01c_4c88
    ld hl, $c3b2
    ld de, $c3b3
    ld bc, $fffe
    call Call_01c_4cb5
    ld hl, $c3a1
    ld de, $c3a0
    ld bc, $0002
    call Call_01c_4cb5
    call Call_01c_4d8f
    call Call_000_3ddb
    pop bc
    dec c
    jr nz, jr_01c_4c45

    call Call_01c_4ad3
    ld c, $0a
    jp Jump_000_372f


Call_01c_4c88:
    ld a, c
    ld [$cd3d], a
    ld a, b
    ld [$cd3e], a
    ld c, $08

jr_01c_4c92:
    push bc
    push hl
    push de
    ld bc, $0014
    call Call_000_00b1
    pop hl
    pop de
    ld a, [$cd3d]
    ld c, a
    ld a, [$cd3e]
    ld b, a
    add hl, bc
    pop bc
    dec c
    jr nz, jr_01c_4c92

    ld l, e
    ld h, d
    ld a, $ff
    ld c, $14

jr_01c_4cb0:
    ld [hl+], a
    dec c
    jr nz, jr_01c_4cb0

    ret


Call_01c_4cb5:
    ld a, c
    ld [$cd3d], a
    ld a, b
    ld [$cd3e], a
    ld c, $09

jr_01c_4cbf:
    push bc
    push hl
    push de
    ld c, $12

jr_01c_4cc4:
    ld a, [hl]
    ld [de], a
    ld a, e
    add $14
    jr nc, jr_01c_4ccc

    inc d

jr_01c_4ccc:
    ld e, a
    ld a, l
    add $14
    jr nc, jr_01c_4cd3

    inc h

jr_01c_4cd3:
    ld l, a
    dec c
    jr nz, jr_01c_4cc4

    pop hl
    pop de
    ld a, [$cd3d]
    ld c, a
    ld a, [$cd3e]
    ld b, a
    add hl, bc
    pop bc
    dec c
    jr nz, jr_01c_4cbf

    ld l, e
    ld h, d
    ld de, $0014
    ld c, $12

jr_01c_4ced:
    ld [hl], $ff
    add hl, de
    dec c
    jr nz, jr_01c_4ced

    ret


    ld c, $12
    ld hl, $c3a0
    ld de, $c4f5
    xor a
    ldh [$ba], a

jr_01c_4cff:
    push bc
    push hl
    push de
    push de
    call Call_01c_4d20
    pop hl
    call Call_01c_4d20
    call Call_01c_4d8f
    pop hl
    ld bc, $ffec
    add hl, bc
    ld e, l
    ld d, h
    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec c
    jr nz, jr_01c_4cff

    jp Jump_01c_4ad3


Call_01c_4d20:
    ld c, $0a

jr_01c_4d22:
    ld [hl], $ff
    inc hl
    inc hl
    dec c
    jr nz, jr_01c_4d22

    ret


    ld c, $14
    ld hl, $c3a0
    ld de, $c3c7
    xor a
    ldh [$ba], a

jr_01c_4d35:
    push bc
    push hl
    push de
    push de
    call Call_01c_4d4e
    pop hl
    call Call_01c_4d4e
    call Call_01c_4d8f
    pop de
    pop hl
    pop bc
    inc hl
    dec de
    dec c
    jr nz, jr_01c_4d35

    jp Jump_01c_4ad3


Call_01c_4d4e:
    ld c, $09
    ld de, $0028

jr_01c_4d53:
    ld [hl], $ff
    add hl, de
    dec c
    jr nz, jr_01c_4d53

    ret


    call Call_01c_4d73
    ld bc, $000a
    ld hl, $4dd7
    call Call_01c_4d7c
    ld c, $0a
    ld b, $01
    ld hl, $4e09
    call Call_01c_4d7c
    jp Jump_01c_4ad3


Call_01c_4d73:
    ld b, $03
    call Call_01c_4bd0
    xor a
    ldh [$ba], a
    ret


Call_01c_4d7c:
jr_01c_4d7c:
    push bc
    push hl
    ld a, b
    call Call_01c_4dc6
    pop hl
    ld bc, $0005
    add hl, bc
    call Call_01c_4d8f
    pop bc
    dec c
    jr nz, jr_01c_4d7c

    ret


Call_01c_4d8f:
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    ret


    call Call_01c_4d73
    ld c, $0a
    ld hl, $4dd7
    ld de, $4e09

jr_01c_4da5:
    push bc
    push hl
    push de
    push de
    xor a
    call Call_01c_4dc6
    pop hl
    ld a, $01
    call Call_01c_4dc6
    pop hl
    ld bc, $0005
    add hl, bc
    ld e, l
    ld d, h
    pop hl
    add hl, bc
    call Call_01c_4d8f
    pop bc
    dec c
    jr nz, jr_01c_4da5

    jp Jump_01c_4ad3


Call_01c_4dc6:
    ld [$cd3d], a
    ld a, [hl+]
    ld [$cd3e], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $4e3b


    ld bc, $4e74
    ld a, [hl+]
    call nz, Call_01c_7a01
    ld c, [hl]
    rst $28
    jp $8401


    ld c, [hl]
    or d
    jp $9601


    ld c, [hl]
    xor [hl]
    jp $a401


    ld c, [hl]
    xor d
    jp $a400


    ld c, [hl]
    xor c
    jp $9600


    ld c, [hl]
    and l
    jp $8400


    ld c, [hl]
    and c
    jp $7a00


    ld c, [hl]
    call c, Call_000_00c3
    ld [hl], h
    ld c, [hl]
    add hl, de
    call nz, Call_01c_7400
    ld c, [hl]
    ld a, l
    call nz, $7a00
    ld c, [hl]
    cp b
    call nz, $8400
    ld c, [hl]
    push af
    call nz, $9600
    ld c, [hl]
    ld sp, hl
    call nz, $a400
    ld c, [hl]
    db $fd
    call nz, $a401
    ld c, [hl]
    cp $c4
    ld bc, $4e96
    ld [bc], a
    push bc
    ld bc, $4e84
    ld b, $c5
    ld bc, $4e7a
    set 0, h
    ld bc, $4e74
    adc [hl]
    call nz, Call_000_1ae5
    ld c, a
    inc de

jr_01c_4e3f:
    ld [hl], $ff
    ld a, [$cd3e]
    and a
    jr z, jr_01c_4e4a

    inc hl
    jr jr_01c_4e4b

jr_01c_4e4a:
    dec hl

jr_01c_4e4b:
    dec c
    jr nz, jr_01c_4e3f

    pop hl
    ld a, [$cd3d]
    and a
    ld bc, $0014
    jr z, jr_01c_4e5b

    ld bc, $ffec

jr_01c_4e5b:
    add hl, bc
    ld a, [de]
    inc de
    cp $ff
    ret z

    and a
    jr z, @-$27

    ld c, a

jr_01c_4e65:
    ld a, [$cd3e]
    and a
    jr z, jr_01c_4e6e

    dec hl
    jr jr_01c_4e6f

jr_01c_4e6e:
    inc hl

jr_01c_4e6f:
    dec c
    jr nz, jr_01c_4e65

    jr @-$37

    ld [bc], a
    inc bc
    dec b
    inc b
    add hl, bc
    rst $38
    ld bc, $0201
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    rst $38
    ld [bc], a
    ld bc, $0103
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $0103
    ld [bc], a
    ld bc, $0101
    ld bc, $04ff
    ld bc, $0004
    inc bc
    ld bc, $0003
    ld [bc], a
    ld bc, $0002
    ld bc, $04ff
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $cdff
    ld h, $51
    ld hl, $cfca
    ld a, [hl]
    push af
    ld [hl], $ff
    push hl
    ld a, $01
    ldh [$b7], a
    ld a, [$d35d]
    push af
    ld b, $00
    call Call_01c_524e
    ld hl, $c3a1
    ld de, $cd6d
    call Call_000_1723
    ld hl, $c300
    ld de, $c508
    ld bc, $0010
    call Call_000_00b1
    ld hl, $8040
    ld de, $4fc4
    ld bc, $1c04
    call Call_000_1636
    xor a
    ld [$cd3d], a
    pop af
    jr jr_01c_4f08

Jump_01c_4ef4:
    ld hl, $c3a0
    ld bc, $0114
    call Call_000_1692
    ld hl, $4f95
    ld a, [$cd3d]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]

jr_01c_4f08:
    ld de, $cee9
    call Call_01c_537a
    ld a, [de]
    push hl
    call Call_01c_52e1
    ld a, $04
    ld [$cd5b], a
    ld hl, $c310
    call Call_01c_5302
    pop hl
    ld de, $cd6d

jr_01c_4f22:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_01c_4f22

    ld hl, $c3a1
    ld de, $cd6d
    call Call_000_1723
    ld hl, $c310
    ld de, $c518
    ld bc, $0010
    call Call_000_00b1

jr_01c_4f3e:
    call Call_01c_5753
    call Call_000_381e
    ldh a, [$b5]
    ld b, a
    and $c3
    jr z, jr_01c_4f3e

    ld a, $8c
    call Call_000_2238
    bit 6, b
    jr nz, jr_01c_4f68

    bit 7, b
    jr nz, jr_01c_4f77

    xor a
    ld [$d09a], a
    ldh [$b7], a
    ld [$d08a], a
    call Call_01c_5235
    pop hl
    pop af
    ld [hl], a
    ret


jr_01c_4f68:
    ld a, [$cd3d]
    inc a
    cp $2f
    jr nz, jr_01c_4f71

    xor a

jr_01c_4f71:
    ld [$cd3d], a
    jp Jump_01c_4ef4


jr_01c_4f77:
    ld a, [$cd3d]
    dec a
    cp $ff
    jr nz, jr_01c_4f81

    ld a, $2e

jr_01c_4f81:
    ld [$cd3d], a
    jp Jump_01c_4ef4


    ldh a, [$b5]
    and $c0
    ret z

    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ret


    nop
    inc c
    ld bc, $330d
    push bc
    ld [bc], a
    ld c, $3b
    rrca
    inc bc
    inc hl
    inc h
    ld e, b
    db $10
    ld de, $5f05
    inc d
    ld d, c
    dec d
    inc b
    adc a
    inc de
    ld [de], a
    ld b, $0a
    ld d, $17
    jr jr_01c_4fcd

    ld a, [de]
    dec de
    inc e
    dec e
    rlca
    reti


    ld e, $9f
    rra
    ld [$2120], sp
    ld [hl+], a
    add $09
    ld d, e
    cp $fe
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ld a, a

jr_01c_4fcd:
    ld a, a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    cp $fe
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, a
    ld a, a
    call Call_01c_5126
    ld hl, $cfca
    ld a, [hl]
    push af
    ld [hl], $ff
    push hl
    call Call_01c_5279
    call Call_000_2e93
    ld hl, $c3a1
    call Call_000_1723
    ld h, b
    ld l, c
    ld de, $500d
    call Call_000_1723
    call Call_000_3852
    call Call_01c_5235
    pop hl
    pop af
    ld [hl], a
    ret


    cp l
    ld a, a
    adc l
    add h
    sub d
    sub e
    ld d, b
    call Call_000_0082
    call Call_01c_5126
    ld a, $01
    ldh [$b7], a
    call Call_000_07d7
    call Call_000_3683
    ld de, $5171
    ld b, $05
    ld c, $0c
    ld hl, $8040
    call Call_000_15fe
    ld de, $511e
    ld hl, $8ed0
    ld bc, $1c01
    call Call_000_1636
    call Call_01c_50fb
    ld hl, $cfca
    ld a, [hl]
    push af
    ld [hl], $ff
    push hl
    ld hl, $c3a0
    ld de, $50f8
    call Call_000_1723
    ld a, [$d35d]
    ld b, $00
    call Call_01c_524e
    ld hl, $cd3e
    ld de, $c3b2

Jump_01c_505f:
    ld a, $7f
    ld [de], a
    push hl
    push hl
    ld hl, $c3a3
    ld bc, $010f
    call Call_000_1692
    pop hl
    ld a, [hl]
    ld b, $04
    call Call_01c_524e
    ld hl, $c3a3
    ld de, $cd6d
    call Call_000_1723
    ld c, $0f
    call Call_000_372f
    ld hl, $c3b2
    ld [hl], $ed
    ld hl, $c3b3
    ld [hl], $ee
    pop hl

jr_01c_508d:
    push hl
    call Call_000_1e64
    call Call_000_381e
    ldh a, [$b5]
    ld b, a
    pop hl
    and $c3
    jr z, jr_01c_508d

    bit 0, b
    jr nz, jr_01c_50af

    ld a, $8c
    call Call_000_2238
    bit 6, b
    jr nz, jr_01c_50cd

    bit 7, b
    jr nz, jr_01c_50e3

    jr jr_01c_50c0

jr_01c_50af:
    ld a, $8e
    call Call_000_2238
    ld a, [hl]
    ld [$d719], a
    ld hl, $d731
    set 3, [hl]
    inc hl
    set 7, [hl]

jr_01c_50c0:
    xor a
    ld [$d09a], a
    ldh [$b7], a
    call Call_000_3dd8
    pop hl
    pop af
    ld [hl], a
    ret


jr_01c_50cd:
    ld de, $c3b2
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_01c_50dd

    cp $fe
    jr z, jr_01c_50cd

    jp Jump_01c_505f


jr_01c_50dd:
    ld hl, $cd3e
    jp Jump_01c_505f


jr_01c_50e3:
    ld de, $c3b3
    dec hl
    ld a, [hl]
    cp $ff
    jr z, jr_01c_50f3

    cp $fe
    jr z, jr_01c_50e3

    jp Jump_01c_505f


jr_01c_50f3:
    ld hl, $cd49
    jr jr_01c_50e3

    sub e
    xor [hl]
    ld d, b

Call_01c_50fb:
    ld hl, $cd3d
    ld [hl], $ff
    inc hl
    ld a, [$d70a]
    ld e, a
    ld a, [$d70b]
    ld d, a
    ld bc, $000b

jr_01c_510c:
    srl d
    rr e
    ld a, $fe
    jr nc, jr_01c_5115

    ld a, b

jr_01c_5115:
    ld [hl], a
    inc hl
    inc b
    dec c
    jr nz, jr_01c_510c

    ld [hl], $ff
    ret


    nop
    nop
    db $10
    jr c, jr_01c_519f

    cp $fe
    nop

Call_01c_5126:
    call Call_000_3dd8
    call Call_000_16dd
    call Call_000_231c
    ld hl, $c3a0
    ld bc, $1212
    call Call_000_16f0
    call Call_000_0061
    ld hl, $5138
    ld de, $9600
    ld bc, $0100
    ld a, $04
    call Call_000_009d
    ld hl, $574b
    ld de, $8040
    ld bc, $0008
    ld a, $1c
    call Call_000_15d4
    ld hl, $c3a0
    ld de, $518a

jr_01c_515d:
    ld a, [de]
    and a
    jr z, jr_01c_5173

    ld b, a
    and $0f
    ld c, a
    ld a, b
    swap a
    and $0f
    add $60

jr_01c_516c:
    ld [hl+], a
    dec c
    jr nz, jr_01c_516c

    inc de
    jr jr_01c_515d

jr_01c_5173:
    call Call_000_007b
    ld b, $02
    call Call_000_3e05
    call Call_000_3ddb
    call Call_000_3de0
    xor a
    ld [$d08a], a
    inc a
    ld [$d09a], a
    ret


    ld a, a
    ld [hl], l
    ld l, h
    ld [hl], e
    add c
    ld b, h
    ld l, h
    ld [hl], c
    ld h, h
    add c
    ld b, d
    ld h, d
    ld d, c
    ld h, h
    ld [hl], c
    pop bc
    ld [hl], e
    ld d, c
    ld [hl], h
    ld h, d
    ld b, c

jr_01c_519f:
    ld h, d
    ld [hl], c
    ld h, c
    ld d, c
    ld [hl], e
    ld h, h
    ld [hl], c
    ld h, e
    pop bc
    ld h, c
    or c
    ld b, c
    ld h, d
    pop bc
    ld h, c
    pop bc
    ld h, a
    ld [hl], c
    ld h, e
    ld [hl], c
    or c
    ld b, d
    ld h, d
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], e
    ld d, c
    ld [hl], d
    ld d, c
    ld [hl], e
    ld d, c
    ld b, e
    ld h, d
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, l
    ld [hl], c
    ld h, e
    ld [hl], c
    ld b, e
    ld h, d
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    or c
    and c
    ld h, e
    ld [hl], c
    ld h, e
    ld [hl], c
    ld b, e
    ld h, d
    ld [hl], d
    ld d, c
    ld h, c
    ld [hl], c
    ld b, e
    and c
    ld h, c
    ld [hl], c
    ld h, e
    ld [hl], c
    ld b, e
    ld h, c
    or c
    and c
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, e
    ld h, c
    ld d, c
    ld [hl], h
    sub c
    ld b, d
    or c
    ld b, d
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], c
    or c
    ld b, e
    and c
    ld h, h
    ld [hl], c
    or c
    ld b, d
    ld b, e
    ld h, c
    ld d, c
    or c
    pop af
    ld b, l
    ld h, c
    ld [hl], h
    ld b, e
    ld b, e
    and c
    ld [hl], c
    ld b, c
    pop af
    ld b, d
    sub c
    ld h, e
    ld [hl], c
    ld h, d
    ld b, h
    ld b, h
    pop af
    ld b, c
    pop de
    pop hl
    ld [hl], d
    ld d, c
    ld [hl], e
    ld h, c
    or c
    ld b, h
    ld b, e
    sub c
    ld [hl], c
    add c
    ld b, d
    and c
    ld h, c
    ld [hl], c
    or c
    ld c, b
    ld b, e
    ld h, c
    ld d, c
    ld [hl], c
    pop hl
    pop bc
    ld [c], a
    pop de
    ld c, c
    ld c, a
    ld b, l
    nop

Call_01c_5235:
    xor a
    ld [$d09a], a
    call Call_000_3df2
    call Call_000_16dd
    call Call_000_0082
    call Call_000_07d7
    call Call_000_3683
    call Call_000_231c
    jp Jump_000_3e03


Call_01c_524e:
    push af
    ld a, b
    ld [$cd5b], a
    pop af
    ld de, $cee9
    call Call_01c_537a
    ld a, [de]
    push hl
    call Call_01c_52e1
    call Call_01c_52f6
    pop hl
    ld de, $cd6d

jr_01c_5266:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_01c_5266

    ld hl, $c300
    ld de, $c508
    ld bc, $00a0
    jp Jump_000_00b1


Call_01c_5279:
    ld b, $03
    ld hl, $6848
    call Call_000_3e84
    call Call_01c_5362
    ld hl, $c300
    ld de, $cee9

jr_01c_528a:
    ld a, [de]
    cp $ff
    jr z, jr_01c_52a7

    and a
    jr z, jr_01c_52a4

    push hl
    call Call_01c_537a
    pop hl
    ld a, [de]
    cp $19
    jr z, jr_01c_52a4

    call Call_01c_52e1
    ld a, $04
    ld [hl+], a
    xor a
    ld [hl+], a

jr_01c_52a4:
    inc de
    jr jr_01c_528a

jr_01c_52a7:
    ld a, l
    and a
    jr nz, jr_01c_52bf

    ld hl, $c42d
    ld bc, $020f
    call Call_000_16f0
    ld hl, $c456
    ld de, $52d3
    call Call_000_1723
    jr jr_01c_52c7

jr_01c_52bf:
    ld a, [$d35d]
    ld b, $00
    call Call_01c_524e

jr_01c_52c7:
    ld hl, $c300
    ld de, $c508
    ld bc, $00a0
    jp Jump_000_00b1


    ld a, a
    add b
    sub c
    add h
    add b
    ld a, a
    sub h
    adc l
    adc d
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld d, b

Call_01c_52e1:
    push af
    and $f0
    srl a
    add $18
    ld b, a
    ld [hl+], a
    pop af
    and $0f
    swap a
    srl a
    add $18
    ld c, a
    ld [hl+], a
    ret


Call_01c_52f6:
    ld a, [$cd5b]
    and a
    ld hl, $c390
    jr z, jr_01c_5302

    ld hl, $c380

Call_01c_5302:
jr_01c_5302:
    push hl
    ld hl, $fcfc
    add hl, bc
    ld b, h
    ld c, l
    pop hl

Call_01c_530a:
    ld de, $0202

jr_01c_530d:
    push de
    push bc

jr_01c_530f:
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, [$cd5b]
    ld [hl+], a
    inc a
    ld [$cd5b], a
    xor a
    ld [hl+], a
    inc d
    ld a, $08
    add c
    ld c, a
    dec e
    jr nz, jr_01c_530f

    pop bc
    pop de
    ld a, $08
    add b
    ld b, a
    dec d
    jr nz, jr_01c_530d

    ret


Call_01c_532f:
    xor a
    ld [$cd5c], a
    ld de, $0202

jr_01c_5336:
    push de
    push bc

jr_01c_5338:
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, [$cd5b]
    ld [hl+], a
    ld a, [$cd5c]
    ld [hl+], a
    xor $20
    ld [$cd5c], a
    inc d
    ld a, $08
    add c
    ld c, a
    dec e
    jr nz, jr_01c_5338

    pop bc
    pop de
    push hl
    ld hl, $cd5b
    inc [hl]
    inc [hl]
    pop hl
    ld a, $08
    add b
    ld b, a
    dec d
    jr nz, jr_01c_5336

    ret


Call_01c_5362:
    ld de, $cee9

jr_01c_5365:
    ld a, [de]
    inc de
    cp $ff
    ret z

    ld c, a
    ld l, e
    ld h, d

jr_01c_536d:
    ld a, [hl]
    cp $ff
    jr z, jr_01c_5365

    cp c
    jr nz, jr_01c_5377

    xor a
    ld [hl], a

jr_01c_5377:
    inc hl
    jr jr_01c_536d

Call_01c_537a:
jr_01c_537a:
    cp $25
    jr c, jr_01c_538d

    ld bc, $0004
    ld hl, $540b

jr_01c_5384:
    cp [hl]
    jr c, jr_01c_538a

    add hl, bc
    jr jr_01c_5384

jr_01c_538a:
    inc hl
    jr jr_01c_5396

jr_01c_538d:
    ld hl, $539c
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc

jr_01c_5396:
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    or d
    nop
    ld d, l
    add d
    inc c
    ld d, l
    ld [hl-], a
    ld a, [de]
    ld d, l
    ld a, [hl+]
    ld h, $55
    ld e, [hl]
    inc [hl]
    ld d, l
    sbc d
    ld b, d
    ld d, l
    ld d, a
    ld d, c
    ld d, l
    ret c

    ld e, [hl]
    ld d, l
    ld a, [c]
    ld l, e
    ld d, l
    jr nz, jr_01c_5434

    ld d, l
    ld e, d
    adc d
    ld d, l
    nop
    nop
    ld d, l
    and d
    sub a
    ld d, l
    ld h, d
    sbc a
    ld d, l
    inc [hl]
    and a
    ld d, l
    jr z, jr_01c_537a

    ld d, l
    ld a, [hl-]
    or a
    ld d, l
    adc d
    cp a
    ld d, l
    ld e, b
    rst $00
    ld d, l
    ld e, l
    rst $08
    ld d, l
    dec l
    rst $10
    ld d, l
    ld c, [hl]
    rst $18
    ld d, l
    sbc h
    add sp, $55
    sbc [hl]
    pop af
    ld d, l
    cp l
    ld a, [$cb55]
    inc bc
    ld d, [hl]
    jp c, $560c

    ld d, l
    dec d
    ld d, [hl]
    add h
    ld e, $56
    sub $27
    ld d, [hl]
    or $30
    ld d, [hl]
    db $f4
    dec a
    ld d, [hl]
    jp nc, Jump_01c_564a

    add b
    ld d, a
    ld d, [hl]
    ld h, b
    ld h, b
    ld d, [hl]
    ld a, [de]
    ld l, c
    ld d, [hl]
    dec bc
    ld [hl], d
    ld d, [hl]
    add hl, hl
    or d
    nop
    ld d, l
    ld l, $82
    inc c
    ld d, l
    inc sp
    ld h, d
    sbc a

jr_01c_5416:
    ld d, l
    inc [hl]
    ld b, d
    ld a, e
    ld d, [hl]
    dec sp
    ld [hl-], a
    ld a, [de]

jr_01c_541e:
    ld d, l
    ld a, $26
    adc e
    ld d, [hl]
    ld b, h
    ld a, [hl+]
    ld h, $55
    ld b, l
    dec h
    xor a
    ld d, l
    ld b, [hl]
    ld a, [hl+]
    ld h, $55
    ld c, c
    ld c, d
    or a
    ld d, l
    ld c, h

jr_01c_5434:
    ld l, d
    cp a
    ld d, l
    ld c, a
    ld e, c
    rst $00
    ld d, l
    ld d, c
    ld e, e
    rst $08
    ld d, l
    ld d, e
    ld a, $93
    ld d, [hl]
    ld d, h
    ld c, a
    ccf
    ld d, a
    ld d, a
    sbc l
    add sp, $55
    ld e, b
    ld a, [hl]
    pop af
    ld d, l
    ld e, c
    inc c
    sbc a
    ld d, [hl]
    ld e, a
    sbc d
    ld b, d
    ld d, l
    ld l, c
    xor c
    xor e
    ld d, [hl]
    ld l, l
    ld b, b
    db $ec
    ld d, [hl]
    ld [hl], a
    jr nz, jr_01c_5416

    ld d, [hl]
    ld a, b
    ld e, d
    ret nz

    ld d, [hl]
    ld a, c
    jr nz, jr_01c_541e

    ld d, [hl]
    ld a, d
    ld e, d
    ret nz

    ld d, [hl]
    adc l
    ld d, a
    ld d, c
    ld d, l
    adc [hl]
    ld e, [hl]
    inc [hl]
    ld d, l
    sub l
    ld e, a
    pop de
    ld d, [hl]
    sbc b
    ld e, [hl]
    inc [hl]
    ld d, l
    sbc h
    ret c

    ld e, [hl]
    ld d, l
    sbc l
    ret z

    dec h
    ld d, a
    sbc a
    ret c

    ld e, [hl]
    ld d, l
    and e
    push af
    call c, $a456
    sbc d
    ld b, d
    ld d, l
    and l
    ret c

    ld e, [hl]
    ld d, l
    and [hl]
    ld a, [c]
    dec de
    ld d, a
    xor [hl]
    ld a, [c]
    ld l, e
    ld d, l
    xor a
    jr nz, jr_01c_551d

    ld d, l
    cp b
    ld e, d
    adc d
    ld d, l
    cp d
    reti


    inc c
    ld d, [hl]
    cp l
    ld d, h
    dec d

jr_01c_54ae:
    ld d, [hl]
    cp [hl]
    xor [hl]
    pop af
    ld d, l
    ret nz

    rst $10
    daa
    ld d, [hl]
    pop bc
    push af
    call c, $c256
    ld [hl], b
    ld d, a
    ld d, [hl]
    jp $ec40


    ld d, [hl]
    call nz, $f17e
    ld d, l
    push bc
    sbc d
    ld b, d
    ld d, l
    add $43
    ld sp, hl
    ld d, [hl]
    rst $00
    ld b, b
    db $ec
    ld d, [hl]
    rst $08
    ld d, a
    rlca
    ld d, a
    sub $5a
    ld de, $d957
    ld a, [c]
    dec de
    ld d, a
    ld [c], a
    ret z

    dec h
    ld d, a
    push hl
    add hl, de
    ld sp, $e657
    ld e, [hl]
    inc [hl]
    ld d, l
    rst $20
    ld a, [hl+]
    ld h, $55
    jp hl


    ld a, $93
    ld d, [hl]
    db $ed
    ld e, d
    ld de, $f857
    jr nz, jr_01c_54ae

    ld d, [hl]
    ld sp, hl
    or $30
    ld d, [hl]
    rst $38
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, b
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
    adc a
    add h
    sub [hl]

jr_01c_551d:
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
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
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, b
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
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, b
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
    adc b
    adc l
    add e
    adc b
    add [hl]
    adc [hl]
    ld a, a
    adc a
    adc e
    add b
    sub e
    add h
    add b
    sub h
    ld d, b
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
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp+$50
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$9150]
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ei
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    db $fc
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    db $fd
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    cp $50
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $38
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    or $50
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    rst $30
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld hl, sp+$50
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld sp, hl
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld a, [$9150]
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ei
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    db $fc
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    db $fd
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    cp $50
    sub d
    add h
    add b
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    rst $38
    ld d, b
    sub d
    add h
    add b
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$0a
    ld d, b

Jump_01c_564a:
    sub d
    add h
    add b
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$09
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$08
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$07
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$06
    ld d, b
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$05
    ld d, b
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld d, b
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    ld d, b
    sub d
    add h
    add b
    ld a, a
    add d
    adc [hl]
    sub e
    sub e
    add b
    add [hl]
    add h
    ld d, b
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld d, b
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    adc a
    add b
    sub e
    add a
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    ld d, b
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld d, b
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    cp l
    ld a, a
    add d
    add b
    sub l
    add h
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    add a
    sub b
    ld d, b
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, $50
    ld c, d
    ld a, a
    adc h
    add b
    adc l
    sub d
    adc b
    adc [hl]
    adc l
    ld d, b
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld d, b
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
    add b
    sub l
    add h
    ld d, b
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    ld d, b
    ld b, d
    ld h, [hl]
    rst $38
    cp l
    sbc c
    rst $38
    ld e, d
    inc h

Call_01c_5753:
    ld a, [$d08a]
    inc a
    cp $19
    jr z, jr_01c_576e

    cp $32
    jr nz, jr_01c_577e

    ld hl, $c508
    ld de, $c300
    ld bc, $0090
    call Call_000_00b1
    xor a
    jr jr_01c_577e

jr_01c_576e:
    ld hl, $c300
    ld b, $24
    ld de, $0004

jr_01c_5776:
    ld [hl], $a0
    add hl, de
    dec b
    jr nz, jr_01c_5776

    ld a, $19

jr_01c_577e:
    ld [$d08a], a
    jp Jump_000_1e64


    xor a
    ld [$cc26], a
    ld b, a
    inc a
    jr jr_01c_5797

    ld hl, $cf1e
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]

jr_01c_5797:
    ld c, a
    ld hl, $57f6
    add hl, bc
    ld a, [$cf1a]
    xor $01
    add [hl]
    ld c, a
    add a
    ld b, a
    ld a, [$d08a]
    and a
    jr z, jr_01c_57b9

    cp c
    jr z, jr_01c_57ca

jr_01c_57ae:
    inc a
    cp b
    jr nz, jr_01c_57b3

    xor a

jr_01c_57b3:
    ld [$d08a], a
    jp Jump_000_1e64


jr_01c_57b9:
    push bc
    ld hl, $cc5b
    ld de, $c300
    ld bc, $0060
    call Call_000_00b1
    pop bc
    xor a
    jr jr_01c_57ae

jr_01c_57ca:
    push bc
    ld hl, $c302
    ld bc, $0010
    ld a, [$cc26]
    call Call_000_3a74
    ld c, $40
    ld a, [hl]
    cp $04
    jr z, jr_01c_57e2

    cp $08
    jr nz, jr_01c_57e6

jr_01c_57e2:
    dec hl
    dec hl
    ld c, $01

jr_01c_57e6:
    ld b, $04
    ld de, $0004

jr_01c_57eb:
    ld a, [hl]
    add c
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_01c_57eb

    pop bc
    ld a, c
    jr jr_01c_57ae

    dec b
    db $10
    jr nz, jr_01c_581b

    ld c, l
    ld e, b
    ld a, $1e

Call_01c_57fe:
    ld bc, $0000

jr_01c_5801:
    push af
    push bc
    push hl
    add hl, bc
    ld a, [hl+]
    ld e, a
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
    pop hl
    pop bc
    ld a, $06
    add c
    ld c, a
    pop af
    dec a

jr_01c_581b:
    jr nz, jr_01c_5801

    ret


    call Call_000_0061
    ld hl, $584d
    ld a, $1e
    ld bc, $0000

jr_01c_5829:
    push af
    push bc
    push hl
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld c, a
    swap c
    ld b, $00
    ld a, [hl+]
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    call Call_000_009d
    pop hl
    pop bc
    ld a, $06
    add c
    ld c, a
    pop af
    dec a
    jr nz, jr_01c_5829

    jp Jump_000_007b


    ld sp, $044c
    dec b
    nop
    add b
    push hl
    ld [hl], h
    ld [$4004], sp
    add b
    ld [hl], c
    ld [hl], l
    inc b
    dec b
    ret nz

    add b
    ld sp, $0452
    dec b
    nop
    add c
    or c
    ld a, d
    inc b
    dec b
    ld b, b
    add c
    ld b, [hl]
    ld e, d
    ld bc, $801c
    add c
    ld d, [hl]
    ld e, d
    ld bc, $a01c
    add c
    ld h, [hl]
    ld e, d
    ld bc, $c01c
    add c
    db $76
    ld e, d
    ld bc, $e01c
    add c
    add [hl]
    ld e, d
    ld bc, $001c
    add d
    sub [hl]
    ld e, d
    ld bc, $201c
    add d
    and [hl]
    ld e, d
    ld bc, $401c
    add d
    or [hl]
    ld e, d
    ld bc, $601c
    add d
    rst $28
    ld h, a
    inc b
    ccf
    add b
    add d
    ld b, $5b
    inc b
    inc e
    add b
    add e
    ld [hl], c
    ld c, e
    inc b
    dec b
    nop
    add h
    push hl
    ld [hl], h
    ld [$4004], sp
    add h
    or c
    ld [hl], h
    inc b
    dec b
    ret nz

    add h
    ld [hl], c
    ld d, c
    inc b
    dec b
    nop
    add l
    ld [hl], c
    ld a, e
    inc b
    dec b
    ld b, b
    add l
    ld b, $5a
    ld bc, $801c
    add l
    ld d, $5a
    ld bc, $a01c
    add l
    ld h, $5a
    ld bc, $c01c
    add l
    ld [hl], $5a
    ld bc, $e01c
    add l
    add $5a
    ld bc, $001c
    add [hl]
    sub $5a
    ld bc, $201c
    add [hl]
    and $5a
    ld bc, $401c
    add [hl]
    or $5a
    ld bc, $601c
    add [hl]
    xor a
    ld l, b
    inc b
    ccf
    add b
    add [hl]
    ld b, [hl]
    ld e, e
    inc b
    inc e
    add b
    add a
    push hl
    push de
    push bc
    ldh a, [$8c]
    cp $ff
    jr z, jr_01c_591f

    ld hl, $d163
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    call Call_01c_5996
    ld [$cd5b], a
    call Call_01c_5970
    pop bc
    pop de
    pop hl
    ret


jr_01c_591f:
    ld hl, $c300
    ld de, $cc5b
    ld bc, $0060
    call Call_000_00b1
    pop bc
    pop de
    pop hl
    ret


jr_01c_592f:
    xor a
    ldh [$8c], a
    ld a, [$cd5d]
    call Call_01c_5996
    ld [$cd5b], a
    jr jr_01c_5970

    ld a, [$cf90]
    call Call_01c_5996
    push af
    ld hl, $8000
    call Call_01c_5959
    pop af
    add $5a
    ld hl, $8040
    call Call_01c_5959
    xor a
    ld [$cd5d], a
    jr jr_01c_592f

Call_01c_5959:
    push hl
    add a
    ld c, a
    ld b, $00
    ld hl, $584d
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl
    jp Jump_000_15fe


Call_01c_5970:
jr_01c_5970:
    push af
    ld c, $10
    ld h, $c3
    ldh a, [$8c]
    swap a
    ld l, a
    add $10
    ld b, a
    pop af
    cp $08
    jr z, jr_01c_5987

    call Call_01c_532f
    jr jr_01c_598a

jr_01c_5987:
    call Call_01c_530a

jr_01c_598a:
    ld hl, $c300
    ld de, $cc5b
    ld bc, $0060
    jp Jump_000_00b1


Call_01c_5996:
    ld [$d11d], a
    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    ld c, a
    dec a
    srl a
    ld hl, $59ba
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    bit 0, c
    jr nz, jr_01c_59b3

    swap a

jr_01c_59b3:
    and $f0
    srl a
    srl a
    ret


    ld [hl], a
    ld [hl], b
    nop
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld b, h
    sbc c
    ld b, h
    adc b
    xor d
    nop
    nop
    nop
    nop
    inc sp
    sbc c
    inc sp
    nop
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, b
    nop
    nop
    nop
    add hl, bc
    sub b
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], l
    ld d, b
    nop
    sbc c
    sub b
    ld de, $4544
    ld d, b
    ld [bc], a
    jr nz, jr_01c_59e9

jr_01c_59e9:
    add b
    dec b
    ld d, c
    rla
    ld [hl], b
    nop
    nop
    nop
    sub b
    scf
    dec b
    ld d, l
    ld d, d
    jr nz, jr_01c_5a58

    nop
    ld l, c
    ld e, b
    ld d, b
    sbc c
    sbc c
    ld [bc], a
    ld [hl+], a
    inc h
    inc b
    ld b, h
    adc b
    add b
    nop
    nop
    nop
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rrca
    inc c
    inc de
    ld e, $73
    ld a, [hl]
    rst $08
    call z, $1d17
    ld [hl], e
    ld a, a
    jr @+$21

    rla
    rra
    jr z, @+$31

    ld b, [hl]
    ld b, a
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    jr c, jr_01c_5a6f

    ld e, h
    ld h, a
    sbc a
    db $e3
    sbc a
    push hl
    adc h
    di
    ld a, b
    ld a, a
    ld [$740f], sp
    ld [hl], a
    ei
    adc e
    ld a, l
    ld b, l
    ccf
    inc sp
    ld c, $0e
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    jp Jump_01c_6fc3


    ld l, h
    inc sp
    ld a, $13
    ld e, $1f
    inc e

jr_01c_5a58:
    ld [hl], a
    ld a, l
    dec de
    rra
    rla
    rra
    jr z, @+$31

    ld b, [hl]
    ld b, a
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    jr c, jr_01c_5aad

    ld b, h

jr_01c_5a6f:
    ld a, a
    ld e, d
    ld h, a
    ld e, a
    ld h, e
    ld e, a
    ld h, l
    inc h
    dec sp
    jr jr_01c_5a99

    ld [$770f], sp
    ld [hl], a
    ld sp, hl
    adc c
    ld a, l
    ld b, l
    ccf
    inc sp
    ld c, $0e
    nop
    nop
    ld bc, $0201
    inc bc
    rlca
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $15
    ld c, $09
    inc b
    rlca
    ld a, [bc]

jr_01c_5a99:
    rrca
    dec bc
    dec c
    inc de
    inc e
    inc d
    dec de
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ccf

jr_01c_5aad:
    daa
    inc e
    inc de
    jr z, jr_01c_5af1

    ld l, $39
    ld l, $3b
    jr z, @+$41

    inc h
    ccf
    daa
    dec a
    ld [hl+], a
    ccf
    ld de, $121f
    ld e, $1e
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    rlca
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $15
    ld c, $09
    inc b
    rlca
    ld a, [bc]
    rrca
    rla
    add hl, de
    inc de
    inc e
    inc d
    dec de
    rrca
    ld [$0707], sp
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    jr jr_01c_5b0d

    ccf
    daa
    inc a

jr_01c_5af1:
    inc sp
    jr z, jr_01c_5b33

    ld l, $39
    ld l, $3b
    jr z, jr_01c_5b39

    inc h
    ccf
    daa
    dec a
    inc de
    rra
    ld [de], a
    ld e, $1e
    ld [de], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_5b0d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc e
    rra
    ld h, e
    ld a, a
    sbc a
    db $fc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec bc
    ld c, $17
    inc e
    cpl
    jr c, jr_01c_5b60

    jr c, jr_01c_5b92

jr_01c_5b33:
    ld [hl], b
    ld e, a
    ld [hl], b
    ld a, a
    ldh [rIE], a

jr_01c_5b39:
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
    nop
    nop
    nop
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
    nop
    nop
    rlca
    rlca
    jr jr_01c_5b7d

    ld h, a
    ld a, a

jr_01c_5b60:
    sbc a
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    dec b
    rlca
    dec bc
    ld c, $0b
    ld c, $17
    inc e
    rla
    inc e
    cpl
    jr c, jr_01c_5ba2

    jr c, @+$31

    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01c_5b7d:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call Call_000_36ec
    ld hl, $5c1d
    ld a, [$cd3d]
    ld bc, $000e

jr_01c_5b92:
    call Call_000_3a74
    ld a, [hl+]
    ld [$cd0f], a
    ld a, [hl+]
    ld [$cd34], a
    ld a, [hl+]
    push af
    ld de, $cd29

jr_01c_5ba2:
    ld bc, $000b
    call Call_000_00b1
    pop af
    ld l, a
    ld h, $00
    ld de, $5e38
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld [$cd10], a
    ld a, [hl]
    ld [$cd11], a
    ld a, [$cd0f]
    ld de, $cd13
    call Call_01c_5c0c
    ld a, [$cd34]
    ld de, $cd1e
    call Call_01c_5c0c
    ld a, $04
    ld [$cd12], a
    ld b, $02
    call Call_01c_5ded
    ld a, c
    and a
    jr nz, jr_01c_5bfa

    ld a, $00
    ld [$cd12], a
    call Call_01c_5bfa
    ld a, $01
    ld [$cd12], a
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_01c_5bfa

    call Call_01c_5ca9
    jr c, jr_01c_5bfa

    ld hl, $5e61
    call Call_000_3c36

Call_01c_5bfa:
jr_01c_5bfa:
    ld hl, $cd12
    ld a, [hl-]
    ld e, a
    ld d, $00
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_000_3c36


Call_01c_5c0c:
    push de
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $cd6d
    pop de
    ld bc, $000b
    jp Jump_000_00b1


    dec bc
    halt
    add [hl]
    sub h
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc b
    ld a, [hl+]
    nop
    adc h
    adc b
    adc e
    add h
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, l
    ld [hl], d
    ld [bc], a
    sub d
    sub e
    adc b
    adc l
    add [hl]
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [bc], a
    adc b
    nop
    sub d
    sub e
    adc b
    add d
    adc d
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec d
    dec d
    ld [bc], a
    add c
    add b
    sub c
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld e, $2e
    nop
    sub d
    adc a
    adc b
    adc d
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub a
    sub a
    ld bc, $808c
    sub c
    sub e
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    ld bc, $8101
    sub h
    add l
    add l
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld hl, $0278
    add d
    add h
    sbc c
    add b
    adc l
    adc l
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld de, $0229
    sub c
    adc b
    add d
    adc d
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b

Call_01c_5ca9:
    xor a
    ld [$d07c], a
    dec a
    ld [$cfca], a
    call Call_000_11c8
    push af
    call Call_01c_5d36
    pop af
    ld a, $01
    jp c, Jump_01c_5d31

    ld a, [$cd0f]
    ld b, a
    ld a, [$cf90]
    cp b
    ld a, $02
    jr nz, jr_01c_5d31

    ld a, [$cf91]
    ld hl, $d18b
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl]
    ld [$d126], a
    ld b, $01
    call Call_01c_5ded
    ld hl, $5e5c
    call Call_000_3c36
    ld a, [$cf91]
    push af
    ld a, [$d126]
    push af
    call Call_000_36c3
    call Call_01c_5d55
    ld a, $38
    call Call_000_3eb4
    pop af
    ld [$d126], a
    pop af
    ld [$cf91], a
    ld a, [$cd34]
    ld [$cf90], a
    xor a
    ld [$cc49], a
    ld [$cf94], a
    call Call_000_3914
    ld a, $80
    ld [$cc49], a
    call Call_000_391c
    call Call_01c_5dad
    call Call_01c_5df9
    call Call_000_16dd
    call Call_01c_5d36
    ld b, $03
    ld hl, $6d59
    call Call_000_3e84
    and a
    ld a, $03
    jr jr_01c_5d32

Jump_01c_5d31:
jr_01c_5d31:
    scf

jr_01c_5d32:
    ld [$cd12], a
    ret


Call_01c_5d36:
    call Call_000_3dd8
    call Call_000_3dc2
    call Call_000_2f83
    call Call_000_36f8
    call Call_000_3ddb
    call Call_000_1e6f
    ld c, $0a
    call Call_000_372f
    ld b, $03
    ld hl, $4b62
    jp Jump_000_3e84


Call_01c_5d55:
    ld hl, $cd3d
    ld a, [$cd0f]
    ld [hl+], a
    ld a, [$cd34]
    ld [hl], a
    ld hl, $d272
    ld bc, $000b
    ld a, [$cf91]
    call Call_000_3a74
    ld de, $cd41
    ld bc, $000b
    call Call_01c_5da5
    ld hl, $5e2d
    ld de, $cd4e
    call Call_01c_5da5
    ld de, $d886
    call Call_01c_5da5
    ld hl, $d176
    ld bc, $002c
    ld a, [$cf91]
    call Call_000_3a74
    ld de, $cd4c
    ld bc, $0002
    call Call_01c_5da5
    call Call_000_3e6d
    ld hl, $ffd3
    ld de, $cd59
    jp Jump_000_00b1


Call_01c_5da5:
    push hl
    push bc
    call Call_000_00b1
    pop bc
    pop hl
    ret


Call_01c_5dad:
    ld hl, $d2b4
    ld bc, $000b
    call Call_01c_5de3
    ld hl, $cd29
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d272
    ld bc, $000b
    call Call_01c_5de3
    ld hl, $5e2d
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d176
    ld bc, $002c
    call Call_01c_5de3
    ld hl, $cd59
    ld bc, $0002
    jp Jump_000_00b1


Call_01c_5de3:
    ld a, [$d162]
    dec a
    call Call_000_3a74
    ld e, l
    ld d, h
    ret


Call_01c_5ded:
    ld hl, $d736
    ld a, [$cd3d]
    ld c, a
    ld a, $10
    jp Jump_000_3eb4


Call_01c_5df9:
    ld a, [$cd34]
    cp $26
    jr z, jr_01c_5e0d

    cp $27
    jr z, jr_01c_5e0d

    cp $29
    jr z, jr_01c_5e0d

    cp $93
    jr z, jr_01c_5e0d

    ret


jr_01c_5e0d:
    ld a, [$d162]
    dec a
    ld [$cf91], a
    ld a, $01
    ld [$ccd4], a
    ld a, $32
    ld [$d12a], a
    ld hl, $6db8
    ld b, $0e
    call Call_000_3e84
    xor a
    ld [$d12a], a
    jp Jump_000_216b


    ld e, l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, $5e
    ld c, b
    ld e, [hl]
    ld d, d
    ld e, [hl]
    ld l, b
    ld e, [hl]
    ld l, l
    ld e, [hl]
    ld [hl], d
    ld e, [hl]
    ld [hl], a
    ld e, [hl]
    ld a, h
    ld e, [hl]
    add c
    ld e, [hl]
    add [hl]
    ld e, [hl]
    adc e
    ld e, [hl]
    sub b
    ld e, [hl]
    sub l
    ld e, [hl]
    sbc d
    ld e, [hl]
    sbc a
    ld e, [hl]
    and h
    ld e, [hl]
    xor c
    ld e, [hl]
    xor [hl]
    ld e, [hl]
    rla
    ld [$2d6f], sp
    ld d, b
    rla
    ld a, [hl+]
    ld l, a
    dec l
    ld de, $500a
    rla
    ld b, [hl]
    ld l, a
    dec l
    ld d, b
    rla
    ld a, c
    ld l, a
    dec l
    ld d, b
    rla
    adc e
    ld l, a
    dec l
    ld d, b
    rla
    jp $2d6f


    ld d, b
    rla
    ret nc

    ld l, a
    dec l
    ld d, b
    rla
    ld [$2d6f], a
    ld d, b
    rla
    inc hl
    ld [hl], b
    dec l
    ld d, b
    rla
    ld b, c
    ld [hl], b
    dec l
    ld d, b
    rla
    ld [hl], a
    ld [hl], b
    dec l
    ld d, b
    rla
    add b
    ld [hl], b
    dec l
    ld d, b
    rla
    xor l
    ld [hl], b
    dec l
    ld d, b
    rla
    pop hl
    ld [hl], b
    dec l
    ld d, b
    rla
    pop af
    ld [hl], b
    dec l
    ld d, b
    rla
    add hl, hl
    ld [hl], c
    dec l
    ld d, b
    rla
    scf
    ld [hl], c
    dec l
    ld d, b
    call Call_000_3ed7
    ld a, b
    cp $ff
    jr nz, jr_01c_5ebe

    ld a, [$cf1b]

jr_01c_5ebe:
    cp $fc
    jp z, Jump_01c_618b

    ld l, a
    ld h, $00
    add hl, hl
    ld de, $606b
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $6328
    push de
    jp hl


    ld hl, $6781
    ld de, $6621
    ret


    ld hl, $6761
    ld de, $cf2c
    ld bc, $0010
    call Call_000_00b1
    ld hl, $d013
    ld a, [hl]
    and a
    jr z, jr_01c_5ef9

    ld hl, $d16a
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a74

jr_01c_5ef9:
    call Call_01c_6093
    ld b, a
    ld hl, $cfd7
    call Call_01c_6093
    ld c, a
    ld hl, $cf2d
    ld a, [$cf1c]
    add $1f
    ld [hl+], a
    inc hl
    ld a, [$cf1d]
    add $1f
    ld [hl+], a
    inc hl
    ld a, b
    ld [hl+], a
    inc hl
    ld a, c
    ld [hl], a
    ld hl, $cf2c
    ld de, $6621
    ld a, $01
    ld [$cf1b], a
    ret


    ld hl, $6791
    ld de, $6611
    ret


    ld hl, $6761
    ld de, $cf2c
    ld bc, $0010
    call Call_000_00b1
    ld a, [$cf90]
    cp $bf
    jr c, jr_01c_5f42

    ld a, $01

jr_01c_5f42:
    call Call_01c_6094
    push af
    ld hl, $cf2d
    ld a, [$cf24]
    add $1f
    ld [hl+], a
    inc hl
    pop af
    ld [hl], a
    ld hl, $cf2c
    ld de, $6641
    ret


    ld hl, $6771
    ld de, $cf2d
    ret


    ld hl, $67a1
    ld de, $cf2c
    ld bc, $0010
    call Call_000_00b1
    ld a, [$cf90]
    call Call_01c_6094
    ld hl, $cf2f
    ld [hl], a
    ld hl, $cf2c
    ld de, $6651
    ret


    ld hl, $67b1
    ld de, $6661
    ret


    ld hl, $67c1
    ld de, $6681
    ret


    ld hl, $67e1
    ld de, $6611
    ret


    ld hl, $67f1
    ld de, $66a1
    ret


    ld hl, $6801
    ld de, $6731
    ld a, $08
    ld [$cf1b], a
    ret


    ld hl, $6761
    ld de, $cf2c
    ld bc, $0010
    call Call_000_00b1
    ld a, [$d366]
    cp $0f
    jr z, jr_01c_5ff2

    cp $11
    jr z, jr_01c_5ff6

    ld a, [$d35d]
    cp $25
    jr c, jr_01c_5fde

    cp $e2
    jr c, jr_01c_5fdb

    cp $e5
    jr c, jr_01c_5ff6

    cp $f5
    jr z, jr_01c_5ffa

    cp $f6
    jr z, jr_01c_5ff6

    cp $ef
    jr z, jr_01c_5ffd

    cp $f0
    jr z, jr_01c_5ffd

jr_01c_5fdb:
    ld a, [$d364]

jr_01c_5fde:
    cp $0b
    jr c, jr_01c_5fe4

    ld a, $ff

jr_01c_5fe4:
    inc a
    ld hl, $cf2d
    ld [hl-], a
    ld de, $6611
    ld a, $09
    ld [$cf1b], a
    ret


jr_01c_5ff2:
    ld a, $18
    jr jr_01c_5fe4

jr_01c_5ff6:
    ld a, $22
    jr jr_01c_5fe4

jr_01c_5ffa:
    xor a
    jr jr_01c_5fe4

jr_01c_5ffd:
    ld a, $18
    jr jr_01c_5fe4

    push bc
    ld hl, $6761
    ld de, $cf2c
    ld bc, $0010
    call Call_000_00b1
    pop bc
    ld a, c
    and a
    ld a, $1e
    jr nz, jr_01c_601b

    ld a, [$cf1c]
    call Call_01c_6094

jr_01c_601b:
    ld [$cf2d], a
    ld hl, $cf2c
    ld de, $6611
    ret


    ld hl, $66f1
    ld de, $cc5b
    ld bc, $0040
    call Call_000_00b1
    ld de, $608b
    ld hl, $cc5d
    ld a, [$d355]
    ld c, $08

jr_01c_603c:
    srl a
    push af
    jr c, jr_01c_604c

    push bc
    ld a, [de]
    ld c, a
    xor a

jr_01c_6045:
    ld [hl+], a
    dec c
    jr nz, jr_01c_6045

    pop bc
    jr jr_01c_6051

jr_01c_604c:
    ld a, [de]

jr_01c_604d:
    inc hl
    dec a
    jr nz, jr_01c_604d

jr_01c_6051:
    pop af
    inc de
    dec c
    jr nz, jr_01c_603c

    ld hl, $67d1
    ld de, $cc5b
    ret


    ld hl, $6811
    ld de, $6611
    ret


    ld hl, $6821
    ld de, $6751
    ret


    db $d3
    ld e, [hl]
    jp c, Jump_000_265e

    ld e, a
    dec l
    ld e, a
    ld h, b
    ld e, a
    ld a, l
    ld e, a
    add h
    ld e, a
    sub d
    ld e, a
    adc e
    ld e, a
    and l
    ld e, a
    ld e, c
    ld e, a
    ld bc, $9960
    ld e, a
    dec h
    ld h, b
    ld e, l
    ld h, b
    ld h, h
    ld h, b
    ld b, $06
    ld b, $12
    ld b, $06
    ld b, $06

Call_01c_6093:
    ld a, [hl]

Call_01c_6094:
    ld [$d11d], a
    and a
    jr z, jr_01c_60a4

    push bc
    ld a, $3a
    call Call_000_3eb4
    pop bc
    ld a, [$d11d]

jr_01c_60a4:
    ld e, a
    ld d, $00
    ld hl, $6921
    add hl, de
    ld a, [hl]
    ret


    ld a, e
    and a
    jr nz, jr_01c_60bd

    ld hl, $67e1
    ldh a, [$fe]
    and a
    jp z, Jump_01c_61b4

    jp Jump_01c_6346


jr_01c_60bd:
    ld hl, $6811
    ldh a, [$fe]
    and a
    jp z, Jump_01c_61b4

    call Call_01c_6346
    ld hl, $67e1
    inc hl
    ld a, [hl+]
    call Call_01c_63fe
    ld a, e
    ld [$dee3], a
    ld a, d
    ld [$dee4], a
    xor a
    call Call_01c_640f
    ld a, $01
    call Call_01c_6470
    ret


    ld hl, $6761
    ld de, $cf2c
    ld bc, $0010
    call Call_000_00b1
    call Call_01c_613b
    ld hl, $cf2d
    ld [hl], a
    ld hl, $cf2f
    ld a, $26
    ld [hl], a
    ld hl, $cf2c
    ldh a, [$fe]
    and a
    jr nz, jr_01c_6109

    call Call_01c_61b4
    jr jr_01c_610c

jr_01c_6109:
    call Call_01c_6346

jr_01c_610c:
    ld hl, $6611
    ld de, $cf2c
    ld bc, $0010
    call Call_000_00b1
    ld hl, $cf2f
    ld a, $05
    ld [hl+], a
    ld a, $07
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    ld a, $0b
    ld [hl+], a
    ld a, $0a
    ld [hl], a
    ld hl, $cf2c
    ldh a, [$fe]
    and a
    jr nz, jr_01c_6137

    call Call_01c_61b4
    jr jr_01c_613a

jr_01c_6137:
    call Call_01c_6346

jr_01c_613a:
    ret


Call_01c_613b:
    ld a, [$d366]
    cp $0f
    jr z, jr_01c_6170

    cp $11
    jr z, jr_01c_6174

    ld a, [$d35d]
    cp $25
    jr c, jr_01c_6168

    cp $e2
    jr c, jr_01c_6165

    cp $e5
    jr c, jr_01c_6174

    cp $f5
    jr z, jr_01c_6178

    cp $f6
    jr z, jr_01c_6174

    cp $ef
    jr z, jr_01c_617b

    cp $f0
    jr z, jr_01c_617b

jr_01c_6165:
    ld a, [$d364]

jr_01c_6168:
    cp $0b
    jr c, jr_01c_616e

    ld a, $ff

jr_01c_616e:
    inc a
    ret


jr_01c_6170:
    ld a, $18
    jr jr_01c_616e

jr_01c_6174:
    ld a, $22
    jr jr_01c_616e

jr_01c_6178:
    xor a
    jr jr_01c_616e

jr_01c_617b:
    ld a, $18
    jr jr_01c_616e

    ld hl, $66c1
    ld de, $cf2d
    ld bc, $0030
    jp Jump_000_00b1


Jump_01c_618b:
    ld hl, $cf1e
    ld a, [$cf2c]
    ld e, a
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    and a
    ld e, $05
    jr z, jr_01c_61a4

    dec a
    ld e, $0a
    jr z, jr_01c_61a4

    ld e, $0f

jr_01c_61a4:
    push de
    ld hl, $cf36
    ld bc, $0006
    ld a, [$cf2c]
    call Call_000_3a74
    pop de
    ld [hl], e
    ret


Call_01c_61b4:
Jump_01c_61b4:
    ld a, $01
    ldh [$f8], a
    call Call_01c_61bf
    xor a
    ldh [$f8], a
    ret


Call_01c_61bf:
    ld a, [hl]
    and $07
    ret z

    ld b, a

jr_01c_61c4:
    push bc
    xor a
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    ld b, $10

jr_01c_61ce:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_01c_61d2:
    bit 0, d
    ld a, $10
    jr nz, jr_01c_61da

    ld a, $20

jr_01c_61da:
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    rr d
    dec e
    jr nz, jr_01c_61d2

    dec b
    jr nz, jr_01c_61ce

    ld a, $20
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    call Call_01c_631c
    pop bc
    dec b
    ret z

    jr jr_01c_61c4

    xor a
    ld [$cf1a], a
    call Call_01c_626d
    jr c, jr_01c_620c

    ldh a, [$fe]
    and a
    jr z, jr_01c_620b

    ld a, $01
    ld [$cf1a], a

jr_01c_620b:
    ret


jr_01c_620c:
    ld a, $01
    ld [$cf1a], a
    di
    call Call_01c_6247
    ei
    ld a, $01
    ld [$cf2c], a
    ld de, $6861
    ld hl, $74b9
    call Call_01c_62d7
    xor a
    ld [$cf2c], a
    ld de, $6871
    ld hl, $6c39
    call Call_01c_62d7
    xor a
    ld [$cf2c], a
    ld de, $6831
    ld hl, $69b9
    call Call_01c_62d7
    call Call_000_1dc6
    ld hl, $6891
    jp Jump_01c_61b4


Call_01c_6247:
    ld hl, $625b
    ld c, $09

jr_01c_624c:
    push bc
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call Call_01c_61b4
    pop hl
    inc hl
    pop bc
    dec c
    jr nz, jr_01c_624c

    ret


    add c
    ld l, b
    and c
    ld l, b
    or c
    ld l, b
    pop bc
    ld l, b
    pop de
    ld l, b
    pop hl
    ld l, b
    pop af
    ld l, b
    ld bc, $1169
    ld l, c

Call_01c_626d:
    ld hl, $6851
    call Call_01c_61b4
    call Call_01c_631c
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_01c_62c9

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01c_631c
    call Call_01c_631c
    ld a, $30
    ldh [rP1], a
    call Call_01c_631c
    call Call_01c_631c
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01c_631c
    call Call_01c_631c
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_01c_631c
    call Call_01c_631c
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_01c_62c9

    call Call_01c_62ce
    and a
    ret


jr_01c_62c9:
    call Call_01c_62ce
    scf
    ret


Call_01c_62ce:
    ld hl, $6841
    call Call_01c_61b4
    jp Jump_01c_631c


Call_01c_62d7:
    di
    push de
    call Call_000_0061
    ld a, $e4
    ldh [rBGP], a
    call Call_01c_6520
    ld de, $8800
    ld a, [$cf2c]
    and a
    jr z, jr_01c_62f1

    call Call_01c_65fb
    jr jr_01c_62f7

jr_01c_62f1:
    ld bc, $1000
    call Call_000_00b1

jr_01c_62f7:
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

Call_01c_6301:
jr_01c_6301:
    ld b, $14

jr_01c_6303:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_01c_6303

    add hl, de
    dec c
    jr nz, jr_01c_6301

    ld a, $e3
    ldh [rLCDC], a
    pop hl
    call Call_01c_61b4
    xor a
    ldh [rBGP], a
    call Call_01c_6520
    ei
    ret


Call_01c_631c:
Jump_01c_631c:
    ld de, $1b58

jr_01c_631f:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_01c_631f

    ret


    ldh a, [$fe]
    and a
    jr z, jr_01c_633e

    push de
    call Call_01c_6346
    pop hl
    call Call_01c_6346
    ldh a, [rLCDC]
    and $80
    ret z

    call Call_000_3ddb
    ret


jr_01c_633e:
    push de
    call Call_01c_61b4
    pop hl
    jp Jump_01c_61b4


Call_01c_6346:
Jump_01c_6346:
    ld a, [hl]
    and $f8
    cp $20
    jp z, Jump_01c_65be

    inc hl
    ld a, [hl+]
    inc hl
    push hl
    call Call_01c_63fe
    ld a, e
    ld [$dee1], a
    ld a, d
    ld [$dee2], a
    xor a
    call Call_01c_640f
    ld a, $00
    call Call_01c_6470
    ld a, $01
    call Call_01c_640f
    ld a, $00
    call Call_01c_64df
    ld a, $02
    call Call_01c_640f
    ld a, $04
    call Call_01c_64df
    pop hl
    ld a, [hl+]
    inc hl
    push hl
    call Call_01c_63fe
    ld a, e
    ld [$dee3], a
    ld a, d
    ld [$dee4], a
    xor a
    call Call_01c_640f
    ld a, $01
    call Call_01c_6470
    ld a, $01
    call Call_01c_640f
    ld a, $01
    call Call_01c_64df
    ld a, $02
    call Call_01c_640f
    ld a, $05
    call Call_01c_64df
    pop hl
    ld a, [hl+]
    inc hl
    push hl
    call Call_01c_63fe
    ld a, e
    ld [$dee5], a
    ld a, d
    ld [$dee6], a
    xor a
    call Call_01c_640f
    ld a, $02
    call Call_01c_6470
    ld a, $01
    call Call_01c_640f
    ld a, $02
    call Call_01c_64df
    ld a, $02
    call Call_01c_640f
    ld a, $06
    call Call_01c_64df
    pop hl
    ld a, [hl+]
    inc hl
    call Call_01c_63fe
    ld a, e
    ld [$dee7], a
    ld a, d
    ld [$dee8], a
    xor a
    call Call_01c_640f
    ld a, $03
    call Call_01c_6470
    ld a, $01
    call Call_01c_640f
    ld a, $03
    call Call_01c_64df
    ld a, $02
    call Call_01c_640f
    ld a, $07
    call Call_01c_64df
    ret


Call_01c_63fe:
    push hl
    ld l, a
    xor a
    ld h, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $6af9
    add hl, de
    ld a, l
    ld e, a
    ld a, h
    ld d, a
    pop hl
    ret


Call_01c_640f:
    and a
    jr nz, jr_01c_6419

    ldh a, [rBGP]
    ld [$def1], a
    jr jr_01c_6428

jr_01c_6419:
    dec a
    jr nz, jr_01c_6423

    ldh a, [rOBP0]
    ld [$def2], a
    jr jr_01c_6428

jr_01c_6423:
    ldh a, [rOBP1]
    ld [$def3], a

jr_01c_6428:
    ld b, a
    and $03
    call Call_01c_646a
    ld a, [hl+]
    ld [$dee9], a
    ld a, [hl]
    ld [$deea], a
    ld a, b
    rrca
    rrca
    ld b, a
    and $03
    call Call_01c_646a
    ld a, [hl+]
    ld [$deeb], a
    ld a, [hl]
    ld [$deec], a
    ld a, b
    rrca
    rrca
    ld b, a
    and $03
    call Call_01c_646a
    ld a, [hl+]
    ld [$deed], a
    ld a, [hl]
    ld [$deee], a
    ld a, b
    rrca
    rrca
    ld b, a
    and $03
    call Call_01c_646a
    ld a, [hl+]
    ld [$deef], a
    ld a, [hl]
    ld [$def0], a
    ret


Call_01c_646a:
    add a
    ld l, a
    xor a
    ld h, a
    add hl, de
    ret


Call_01c_6470:
    push de
    add a
    add a
    add a
    or $80
    ldh [rBCPS], a
    ld de, $ff69
    ld hl, $dee9
    ld b, $02
    ldh a, [rLCDC]
    and $80
    jr nz, jr_01c_6494

    call Call_01c_651b
    call Call_01c_651b
    call Call_01c_651b
    call Call_01c_651b
    jr jr_01c_64a0

jr_01c_6494:
    call Call_01c_6511
    call Call_01c_6511
    call Call_01c_6511
    call Call_01c_6511

jr_01c_64a0:
    pop de
    ret


Call_01c_64a2:
    push de
    add a
    add a
    add a
    ld l, a
    xor a
    ld h, a
    ld de, $def5
    add hl, de
    ld de, $dee9
    ld c, $08

jr_01c_64b2:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_01c_64b2

    pop de
    ret


Call_01c_64ba:
    ldh a, [rLCDC]
    and $80
    jr z, jr_01c_64c7

    di

jr_01c_64c1:
    ldh a, [rLY]
    cp $90
    jr c, jr_01c_64c1

jr_01c_64c7:
    call Call_01c_64cc
    ei
    ret


Call_01c_64cc:
    xor a
    or $80
    ldh [rBCPS], a
    ld de, $ff69
    ld hl, $def5
    ld c, $20

jr_01c_64d9:
    ld a, [hl+]
    ld [de], a
    dec c
    jr nz, jr_01c_64d9

    ret


Call_01c_64df:
    push de
    add a
    add a
    add a
    or $80
    ldh [rOCPS], a
    ld de, $ff6b
    ld hl, $dee9
    ld b, $02
    ldh a, [rLCDC]
    and $80
    jr nz, jr_01c_6503

    call Call_01c_651b
    call Call_01c_651b
    call Call_01c_651b
    call Call_01c_651b
    jr jr_01c_650f

jr_01c_6503:
    call Call_01c_6511
    call Call_01c_6511
    call Call_01c_6511
    call Call_01c_6511

jr_01c_650f:
    pop de
    ret


Call_01c_6511:
jr_01c_6511:
    ldh a, [rSTAT]
    and b
    jr z, jr_01c_6511

jr_01c_6516:
    ldh a, [rSTAT]
    and b
    jr nz, jr_01c_6516

Call_01c_651b:
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [de], a
    ret


Call_01c_6520:
    ldh a, [$fe]
    and a
    ret z

    ld a, [$dee1]
    ld e, a
    ld a, [$dee2]
    ld d, a
    xor a
    call Call_01c_640f
    ld a, $00
    call Call_01c_64a2
    ld a, [$dee3]
    ld e, a
    ld a, [$dee4]
    ld d, a
    xor a
    call Call_01c_640f
    ld a, $01
    call Call_01c_64a2
    ld a, [$dee5]
    ld e, a
    ld a, [$dee6]
    ld d, a
    xor a
    call Call_01c_640f
    ld a, $02
    call Call_01c_64a2
    ld a, [$dee7]
    ld e, a
    ld a, [$dee8]
    ld d, a
    xor a
    call Call_01c_640f
    ld a, $03
    call Call_01c_64a2
    call Call_01c_64ba
    ret


    ld a, [$dee1]
    ld e, a
    ld a, [$dee2]
    ld d, a
    ld a, c
    call Call_01c_640f
    ld a, c
    dec a
    rlca
    rlca
    call Call_01c_64df
    ld a, [$dee3]
    ld e, a
    ld a, [$dee4]
    ld d, a
    ld a, c
    call Call_01c_640f
    ld a, c
    dec a
    rlca
    rlca
    inc a
    call Call_01c_64df
    ld a, [$dee5]
    ld e, a
    ld a, [$dee6]
    ld d, a
    ld a, c
    call Call_01c_640f
    ld a, c
    dec a
    rlca
    rlca
    add $02
    call Call_01c_64df
    ld a, [$dee7]
    ld e, a
    ld a, [$dee8]
    ld d, a
    ld a, c
    call Call_01c_640f
    ld a, c
    dec a
    rlca
    rlca
    add $03
    call Call_01c_64df
    ret


Jump_01c_65be:
    push hl
    pop de
    ld hl, $65e2
    ld a, [hl+]
    ld c, a

jr_01c_65c5:
    ld a, e

jr_01c_65c6:
    cp [hl]
    jr z, jr_01c_65cf

    inc hl
    inc hl
    dec c
    jr nz, jr_01c_65c6

    ret


jr_01c_65cf:
    inc hl
    ld a, d
    cp [hl]
    jr z, jr_01c_65d9

    inc hl
    dec c
    jr nz, jr_01c_65c5

    ret


jr_01c_65d9:
    ld b, $2f
    ld hl, $7450
    call Call_000_3e84
    ret


    inc c
    ld de, $2166
    ld h, [hl]
    ld b, c
    ld h, [hl]
    ld d, c
    ld h, [hl]
    ld h, c
    ld h, [hl]
    add c
    ld h, [hl]
    and c
    ld h, [hl]
    dec l
    rst $08
    ld e, e
    call z, Call_01c_6731
    inc l
    rst $08
    ld d, c
    ld h, a

Call_01c_65fb:
    ld b, $80

jr_01c_65fd:
    ld c, $10

jr_01c_65ff:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_01c_65ff

    ld c, $10
    xor a

jr_01c_6608:
    ld [de], a
    inc de
    dec c
    jr nz, jr_01c_6608

    dec b
    jr nz, jr_01c_65fd

    ret


    ld hl, $0301
    nop
    nop
    nop
    inc de
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    rlca
    ld a, [bc]
    nop
    inc c
    inc de
    ld de, $0503
    ld bc, $0a00
    inc bc
    inc bc
    nop
    ld a, [bc]
    rlca
    inc de
    ld a, [bc]
    inc bc
    ld a, [bc]
    nop
    inc b
    ld [$030b], sp
    rrca
    dec bc
    nop
    inc de
    ld b, $21
    ld bc, $0507
    ld bc, $0700
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0701
    dec b
    ld bc, $0801
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    inc bc
    dec b
    nop
    nop
    inc de
    dec bc
    inc bc
    ld a, [bc]
    nop
    inc b
    inc de
    add hl, bc
    ld [bc], a
    rrca
    nop
    ld b, $13
    rlca
    inc bc
    nop
    inc b
    inc b
    rrca
    add hl, bc
    inc bc
    nop
    nop
    inc c
    inc de
    ld de, $0322
    inc bc
    nop
    nop
    nop
    inc de
    rlca
    inc bc
    ld a, [bc]
    nop
    ld [$1113], sp
    ld [bc], a
    nop
    add hl, bc
    ld [$080a], sp
    nop
    nop
    nop
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
    inc bc
    inc bc
    dec b
    nop
    nop
    inc de
    inc bc
    inc bc
    nop
    nop
    inc b
    inc de
    dec c
    inc bc
    dec b
    nop
    ld c, $13
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    rlca
    ld b, $10
    ld bc, $0200
    inc c
    ld [bc], a
    nop
    dec b
    ld bc, $010b
    ld [bc], a
    nop
    dec b
    inc bc
    dec bc
    inc bc
    ld [bc], a
    nop
    dec b
    dec b
    dec bc
    dec b
    ld [bc], a
    nop
    dec b
    rlca
    dec bc
    rlca
    ld [bc], a
    nop
    dec b
    add hl, bc
    dec bc
    add hl, bc
    ld [bc], a
    nop
    dec b
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    inc h
    ld a, [bc]
    ld [bc], a
    nop
    inc bc
    inc c
    inc b
    dec c
    ld [bc], a
    dec b
    rlca
    inc c
    ld [$020d], sp
    rrca
    dec bc
    inc c
    inc c
    dec c
    ld [bc], a
    ld a, [bc]
    db $10
    dec bc
    ld de, $020c
    dec b
    ld c, $0d
    rrca
    dec c
    ld [bc], a
    rrca
    db $10
    dec c
    ld de, $020d
    ld a, [bc]
    inc bc
    rrca
    inc b
    db $10
    ld [bc], a
    rrca
    rlca
    rrca
    ld [$0210], sp
    ld a, [bc]
    dec bc
    rrca
    inc c
    db $10
    ld [bc], a
    dec b
    rrca
    rrca
    db $10
    stop
    nop

Call_01c_6731:
    ld [hl+], a
    inc bc
    rlca
    dec b
    dec b
    dec bc
    rlca
    dec c
    ld [bc], a
    ld a, [bc]
    ld [$090b], sp
    dec c
    inc bc
    rrca
    inc c
    dec bc
    ld c, $0d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0701
    dec b
    inc b
    nop
    rrca
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    stop
    rra
    nop
    jr nz, jr_01c_6778

jr_01c_6778:
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
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
    ld d, c
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld a, [de]
    nop
    dec de
    nop
    inc e
    nop
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld c, $00
    dec c
    nop
    stop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    stop
    ld [hl+], a
    nop
    ld [de], a
    nop
    jr jr_01c_67da

jr_01c_67da:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
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
    ld d, c
    inc d
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc h
    nop
    ld [de], a
    nop
    ld [bc], a
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec h
    nop
    daa
    nop
    dec h
    nop
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
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
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
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
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld e, l
    ld [$0b00], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$79], a
    ld b, a
    ld [$0b00], sp
    call nz, Call_000_16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, @+$7b

    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, $79c9

    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_01c_7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    call Call_000_0c48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, @+$0a

    ld [$eaea], a
    ld [$60ea], a
    ld [$10ea], a
    ld d, $16
    ld d, $12
    ld [de], a
    ld [de], a
    inc de
    inc de
    inc de
    ld d, $16
    inc de
    jr @+$1a

    jr jr_01c_6947

    dec d
    dec d
    add hl, de
    add hl, de
    dec d
    dec d
    inc d
    inc d
    jr jr_01c_6954

    dec d
    dec d
    ld de, $1111
    inc d
    inc d
    inc d
    rla
    rla
    ld [de], a

jr_01c_6947:
    jr jr_01c_6960

    rla
    ld de, $1611
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc d
    inc d
    dec d

jr_01c_6954:
    dec d
    jr jr_01c_696f

    jr jr_01c_696c

    dec d
    dec d
    dec d
    ld [de], a
    ld de, $1111

jr_01c_6960:
    jr jr_01c_697a

    jr jr_01c_697d

    add hl, de
    add hl, de
    ld d, $16
    ld d, $13
    inc de
    add hl, de

jr_01c_696c:
    add hl, de
    add hl, de
    ld [de], a

jr_01c_696f:
    ld [de], a
    rla
    rla
    add hl, de
    add hl, de
    dec d
    dec d
    dec d
    ld de, $1411

jr_01c_697a:
    inc d
    add hl, de
    add hl, de

jr_01c_697d:
    inc d
    inc d
    inc d
    add hl, de
    jr jr_01c_699b

    ld [de], a
    ld [de], a
    jr @+$1a

    rla
    ld d, $19
    add hl, de
    dec d
    dec d
    rla
    inc d
    inc d
    add hl, de
    add hl, de
    rla
    ld de, $1315
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    add hl, de

jr_01c_699b:
    rla
    ld d, $10
    jr @+$14

    dec d
    add hl, de
    ld [de], a
    ld de, $1913
    add hl, de
    inc de
    jr jr_01c_69bc

    add hl, de
    ld de, $1511
    dec d
    add hl, de
    rla
    ld de, $1218
    add hl, de
    ld de, $1015
    db $10
    rst $38
    ld a, e
    ld d, a

jr_01c_69bc:
    ld c, a
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    ld a, h
    ld a, a
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    ld a, [$7757]
    ld a, a
    add $18
    rst $38
    ld a, e
    rst $30
    ld e, d
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    or $7e
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    ei
    db $76
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    ccf
    ld b, e
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    or $5b
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    ld e, a
    ld l, e
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    rst $38
    add hl, sp
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    ld sp, $7766
    ld a, a
    add $18
    rst $38
    ld a, e
    rst $38
    ld c, a
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    ld d, h
    ld a, a
    pop af
    ld a, [hl+]
    ld b, e
    ld [$7bff], sp
    sbc $47
    dec d
    db $10
    dec d
    db $10
    rst $38
    ld a, e
    sbc $47
    ld d, d
    ld h, d
    rst $20
    ld b, b
    rst $38
    ld a, e
    sbc b
    ld a, d
    adc e
    ld a, d
    ld b, e
    ld [$7bff], sp
    rst $18
    ld e, e
    dec de
    ld b, d
    add $18
    rst $38
    ld a, e
    push de
    ld a, [hl]
    ld c, c
    ld d, c
    add $18
    rst $38
    ld a, e
    rra
    cpl
    ld a, [hl-]
    add hl, de
    add $18
    rst $38
    ld a, e
    sbc d
    ld a, a
    rlca
    ld [hl], e
    add $18
    rst $38
    ld a, e
    db $db
    ld a, d
    or $5d
    add $18
    rst $38
    ld a, e
    ld a, [$d24a]
    add hl, hl
    add $18
    rst $38
    ld a, e
    sbc b
    ld c, e
    xor l
    ld a, $c6
    jr @+$01

    ld a, e
    rra
    ld l, e
    ld e, a
    ld d, [hl]
    add $18
    rst $38
    ld a, e
    rst $38
    ld c, a
    db $fc
    ld h, $c6
    jr @+$01

    ld a, e
    add hl, sp
    ld c, e
    db $10
    ld a, [hl-]
    add $18
    rst $38
    ld a, e
    db $db
    ld a, d
    ld a, [hl-]
    add hl, de
    add $18
    rst $38
    ld a, e
    rst $38
    ld l, d
    cp l
    inc hl
    add $18
    rst $38
    ld a, e
    rst $30
    ld d, e
    cp l
    inc hl
    add $18
    rst $38
    ld a, e
    or a
    ld a, a
    cp l
    inc hl
    add $18
    rst $38
    ld a, e
    add $18
    add $18
    add $18
    rst $38
    ld a, e
    rst $38
    ld c, a
    and b
    ld [bc], a
    add $18
    rst $38
    ld a, e
    rst $38
    ld c, a
    db $fc
    ld h, $c6
    jr @+$01

    ld a, e
    rst $38
    ld c, a
    ld a, [hl-]
    add hl, de
    add $18
    rst $38
    ld a, e
    db $f4
    dec l
    or [hl]
    ld d, d
    add $18
    rst $38
    ld a, e
    db $f4
    dec l
    or [hl]
    ld d, d
    add $18
    rst $38
    ld a, e
    inc e
    dec sp
    sub h
    ld l, $c6
    jr @+$01

    ld a, e
    rst $18
    ld e, e
    ld [hl], a
    ld a, a
    add $18
    rst $38
    ld a, e
    db $fc
    ld h, $d2
    add hl, hl
    add $18
    rst $38
    ld a, e
    db $10
    ld b, d
    ccf
    daa
    add $18
    rst $38
    ld a, a
    ldh a, [rNR13]
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    scf
    ld a, [hl]
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    di
    inc bc
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    ld d, d
    ld a, $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    dec b
    ld a, l
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    sbc c
    ld a, h
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    ld a, a
    ld [bc], a
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    push hl
    rla
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    rst $38
    dec a
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    rra
    ld hl, $7eeb
    ld h, e
    inc c
    rst $38
    ld a, a
    dec bc
    ld a, l
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    rst $38
    inc bc
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    and b
    ld a, [hl]
    adc d
    inc bc
    ld hl, $ff04
    ld a, a
    rst $38
    inc bc
    rra
    nop
    rra
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $20
    ld h, h
    nop
    ld b, h
    rst $38
    ld a, a
    dec l
    ld a, h
    jr nz, jr_01c_6bf4

    ld hl, $ff04
    ld a, a
    rst $38
    inc bc
    ccf
    inc b
    ld h, e
    inc c
    rst $38
    ld a, a
    ld d, b
    ld a, [hl]
    jr nz, jr_01c_6beb

    ld h, e
    inc c
    rst $38
    ld a, a
    ccf
    ld [bc], a
    rra
    nop
    ld h, e
    inc c
    rst $38
    ld a, a
    ld d, b
    ld a, a
    jr nz, @+$80

    ld h, e
    inc c
    rst $38
    ld a, a
    ld sp, hl
    ld a, l
    inc de
    ld e, b
    ld h, e
    inc c
    rst $38
    ld a, a
    ld e, l
    ld a, [hl+]
    ld sp, $6315
    inc c
    rst $38
    ld a, a
    pop af
    cpl
    pop bc
    ld a, [de]
    ld h, e
    inc c
    rst $38
    ld a, a
    rst $38
    ld c, c
    rra
    jr jr_01c_6c1b

    inc c
    rst $38
    ld a, a
    rst $38
    inc bc
    call c, Call_01c_6301
    inc c
    rst $38
    ld a, a
    db $f4
    ld a, [hl+]
    ld l, e
    dec d
    ld h, e
    inc c
    rst $38
    ld a, a
    add hl, sp
    ld a, h
    rra
    nop
    ld h, e
    inc c
    rst $38
    ld a, a
    sbc a
    ld c, h
    rst $38
    inc bc
    ld h, e
    inc c
    rst $38
    ld a, a
    add sp, $03
    rst $38
    inc bc
    ld h, e
    inc c
    rst $38
    ld a, a
    ldh [$7f], a
    rst $38
    inc bc
    ld h, e
    inc c
    rst $38
    ld a, a

jr_01c_6beb:
    ld h, e
    inc c
    ld h, e
    inc c
    ld h, e
    inc c
    rst $38
    ld a, a
    rst $38

jr_01c_6bf4:
    inc bc
    ldh [$03], a
    ld h, e
    inc c
    rst $38
    ld a, a
    rst $38
    inc bc
    ld e, a
    ld [bc], a
    ld h, e
    inc c
    rst $38
    ld a, a
    rst $38
    inc bc
    rra
    nop
    ld h, e
    inc c
    rst $38
    ld a, a
    rla
    ld bc, $2dd1
    ld h, e
    inc c
    rst $38
    ld a, a
    rla
    ld bc, $2dd1
    ld h, e
    inc c
    rst $38
    ld a, a

jr_01c_6c1b:
    ld a, a
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld h, e
    inc c
    rst $38
    ld a, a
    rst $38
    inc bc
    db $eb
    ld a, [hl]
    ld h, e
    inc c
    rst $38
    ld a, a
    ld e, a
    ld [bc], a
    di
    inc b
    ld h, e
    inc c
    rst $38
    ld a, a
    add hl, hl
    dec h
    cp a
    ld [bc], a
    ld h, e
    inc c
    ld bc, $0118
    jr jr_01c_6c41

    ld e, b
    ld [bc], a
    ld e, b

jr_01c_6c41:
    ld bc, $0158
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6c51

    ld e, b
    ld [bc], a
    ld e, b

jr_01c_6c51:
    ld bc, $0158
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6c64

    jr @+$05

jr_01c_6c64:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6c74

    jr @+$05

jr_01c_6c74:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6c91

    ld e, b
    ld [de], a
    ld e, b
    ld de, $1058
    ld e, b
    ld bc, $4118
    ld d, h
    ld b, b
    ld d, h
    ld bc, $1318
    ld e, b
    ld [de], a
    ld e, b

jr_01c_6c91:
    ld de, $1058
    ld e, b
    add hl, sp
    jr jr_01c_6ca6

    inc d
    ld c, $54
    add hl, sp
    ld e, b
    db $10
    jr @+$13

    jr jr_01c_6cb4

    jr @+$15

    jr @+$03

jr_01c_6ca6:
    jr jr_01c_6ce8

    inc d
    ld b, c
    inc d
    ld bc, $1018
    jr jr_01c_6cc1

    jr jr_01c_6cc4

    jr @+$15

jr_01c_6cb4:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$25

    ld e, b
    ld [hl+], a
    ld e, b

jr_01c_6cc1:
    ld hl, $2050

jr_01c_6cc4:
    ld e, b
    ld bc, $4318
    ld d, h
    ld b, d
    ld d, h
    ld bc, $2318
    ld e, b
    ld [hl+], a
    ld e, b
    ld hl, $2050
    ld e, b
    add hl, sp
    sbc b
    add hl, de
    inc d
    add hl, de
    ld d, h
    add hl, sp
    ret c

    jr nz, @+$1a

    ld hl, $2210
    jr @+$25

    jr @+$03

    jr jr_01c_6d2a

jr_01c_6ce8:
    inc d
    ld b, e
    inc d
    ld bc, $2018
    jr jr_01c_6d11

    db $10
    ld [hl+], a
    jr @+$25

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$35

    ld e, b
    ld [hl-], a
    ld e, b
    ld sp, $3058
    ld e, b
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$35

    ld e, b
    ld [hl-], a
    ld e, b

jr_01c_6d11:
    ld sp, $3058
    ld e, b
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr jr_01c_6d4e

    jr jr_01c_6d51

    jr jr_01c_6d54

    jr jr_01c_6d57

    jr @+$03

    jr @+$03

    jr @+$03

jr_01c_6d2a:
    jr @+$03

    jr jr_01c_6d5e

    jr jr_01c_6d61

    jr jr_01c_6d64

    jr jr_01c_6d67

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6d6e

    jr @+$2b

    inc d
    add hl, hl
    inc d
    add hl, hl
    inc d
    add hl, bc
    inc d
    add hl, hl

jr_01c_6d4e:
    inc d
    ld a, [bc]
    inc d

jr_01c_6d51:
    add hl, hl
    inc d
    dec bc

jr_01c_6d54:
    inc d
    add hl, hl
    inc d

jr_01c_6d57:
    inc c
    inc d
    add hl, hl
    inc d
    dec c
    inc d
    add hl, hl

jr_01c_6d5e:
    inc d
    ld a, [bc]
    inc d

jr_01c_6d61:
    add hl, hl
    inc d
    rrca

jr_01c_6d64:
    inc d
    add hl, hl
    inc d

jr_01c_6d67:
    add hl, hl
    inc d
    add hl, hl
    inc d
    add hl, hl
    inc d
    ld a, [hl+]

jr_01c_6d6e:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6daf

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_6daf:
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6def

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_6def:
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6e2f

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_6e2f:
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6e80

    inc d
    ld b, l
    inc d
    ld b, [hl]
    inc d
    ld bc, $2b18
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d
    ld bc, $4418
    inc d
    ld b, l
    inc d
    ld b, [hl]
    inc d
    ld bc, $0118
    jr @+$49

    inc d
    inc l
    inc d
    dec l

jr_01c_6e80:
    inc d
    ld bc, $2b18
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d
    ld bc, $4718
    inc d
    inc l
    inc d
    dec l
    inc d
    ld bc, $0118
    jr @+$03

    jr jr_01c_6ed9

    ld d, h
    ld bc, $0118
    jr jr_01c_6eef

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6ed9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_6eef:
    ld bc, $0118
    jr jr_01c_6f0f

    inc d
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6f2f

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6f0f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_6f2f:
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_6f3e

    jr @+$07

    jr jr_01c_6f44

jr_01c_6f3e:
    jr jr_01c_6f47

    jr jr_01c_6f4a

    jr jr_01c_6f6f

jr_01c_6f44:
    inc d
    nop
    nop

jr_01c_6f47:
    nop
    nop
    nop

jr_01c_6f4a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_6f6f:
    ld [$0758], sp
    ld e, b
    ld b, $58
    dec b
    ld e, b
    inc b
    ld e, b
    inc d
    inc d
    dec d
    db $10
    ld d, $10
    rla
    db $10
    jr jr_01c_6f9b

    dec hl
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6f9b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d
    jr jr_01c_7009

    rla
    ld d, b
    ld d, $50
    dec d
    ld d, b
    inc d
    ld d, h
    inc h
    inc d
    dec h
    db $10
    ld h, $10
    daa
    db $10
    jr z, jr_01c_6fdb

Jump_01c_6fc3:
    dec hl
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_6fdb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d
    jr z, jr_01c_7049

    daa
    ld d, b
    ld h, $50
    dec h
    ld d, b
    inc h
    ld d, h
    inc [hl]
    jr jr_01c_7031

    jr @+$38

    jr jr_01c_7037

    jr @+$3a

    jr jr_01c_702f

    inc d
    nop
    nop
    nop
    nop

jr_01c_7009:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_702f:
    jr c, jr_01c_7089

jr_01c_7031:
    scf
    ld e, b
    ld [hl], $58
    dec [hl]
    ld e, b

jr_01c_7037:
    inc [hl]
    ld e, b
    ld bc, $3a18
    jr @+$3d

    jr jr_01c_707c

    jr @+$3f

    jr jr_01c_706f

    inc d
    nop
    nop
    nop
    nop

jr_01c_7049:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_706f:
    dec a
    ld e, b
    inc a
    ld e, b
    dec sp
    ld e, b
    ld a, [hl-]
    ld e, b
    ld bc, $0158
    jr @+$03

jr_01c_707c:
    jr @+$03

    jr jr_01c_70ae

    jr jr_01c_70b1

    jr jr_01c_70af

    inc d
    nop
    nop
    nop
    nop

jr_01c_7089:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl

jr_01c_70ae:
    inc d

jr_01c_70af:
    cpl
    ld e, b

jr_01c_70b1:
    ld l, $58
    ld bc, $0158
    ld e, b
    ld bc, $0158
    jr @+$03

    jr @+$03

    jr jr_01c_70fe

    jr @+$41

    jr jr_01c_70ef

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_70ef:
    ccf
    ld e, b
    ld a, $58
    ld bc, $0158
    ld e, b
    ld bc, $0158
    jr @+$03

    jr @+$03

jr_01c_70fe:
    jr @+$03

    jr @+$03

    jr jr_01c_712f

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_712f:
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_716f

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_716f:
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_71af

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_71af:
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_71ef

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc d

jr_01c_71ef:
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_722e

    jr @+$2b

    inc d
    add hl, hl
    inc d
    add hl, hl
    inc d
    add hl, hl
    inc d
    inc e
    inc d
    add hl, hl
    inc d
    dec e
    inc d
    add hl, hl
    inc d
    ld e, $14
    add hl, hl
    inc d
    ld e, $14
    add hl, hl
    inc d
    ld a, [bc]
    inc d
    ld c, b
    inc d
    rra
    inc d
    ld c, c
    inc d
    add hl, hl
    inc d
    add hl, hl
    inc d
    add hl, hl
    inc d
    add hl, hl
    inc d
    ld a, [hl+]

jr_01c_722e:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_7241

    ld e, b
    ld [bc], a
    ld e, b

jr_01c_7241:
    ld bc, $0158
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_7251

    ld e, b
    ld [bc], a
    ld e, b

jr_01c_7251:
    ld bc, $0158
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_7264

    jr @+$05

jr_01c_7264:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_7274

    jr @+$05

jr_01c_7274:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr jr_01c_7291

    ld e, b
    ld [de], a
    ld e, b
    ld de, $1058
    ld e, b
    ld bc, $4118
    ld d, h
    ld b, b
    ld d, h
    ld bc, $1318
    ld e, b
    ld [de], a
    ld e, b

jr_01c_7291:
    ld de, $1058
    ld e, b
    add hl, sp
    jr jr_01c_72a6

    inc d
    ld c, $54
    add hl, sp
    ld e, b
    db $10
    jr @+$13

    jr jr_01c_72b4

    jr @+$15

    jr @+$03

jr_01c_72a6:
    jr jr_01c_72e8

    inc d
    ld b, c
    inc d
    ld bc, $1018
    jr jr_01c_72c1

    jr jr_01c_72c4

    jr @+$15

jr_01c_72b4:
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$25

    ld e, b
    ld [hl+], a
    ld e, b

jr_01c_72c1:
    ld hl, $2050

jr_01c_72c4:
    ld e, b
    ld bc, $4318
    ld d, h
    ld b, d
    ld d, h
    ld bc, $2318
    ld e, b
    ld [hl+], a
    ld e, b
    ld hl, $2050
    ld e, b
    add hl, sp
    sbc b
    add hl, de
    inc d
    add hl, de
    ld d, h
    add hl, sp
    ret c

    jr nz, @+$1a

    ld hl, $2210
    jr @+$25

    jr @+$03

    jr jr_01c_732a

jr_01c_72e8:
    inc d
    ld b, e
    inc d
    ld bc, $2018
    jr jr_01c_7311

    db $10
    ld [hl+], a
    jr @+$25

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$35

    ld e, b
    ld [hl-], a
    ld e, b
    ld sp, $3058
    ld e, b
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr jr_01c_7341

    ld e, b
    ld [hl-], a
    ld e, b

jr_01c_7311:
    ld sp, $3058
    ld e, b
    ld bc, $0118
    jr @+$03

    jr @+$03

    jr jr_01c_734e

    jr jr_01c_7351

    jr jr_01c_7354

    jr jr_01c_7357

    jr @+$03

    jr @+$03

    jr @+$03

jr_01c_732a:
    jr @+$03

    jr jr_01c_735e

    jr jr_01c_7361

    jr jr_01c_7364

    jr jr_01c_7367

    jr @+$03

    jr @+$03

    jr jr_01c_733a

jr_01c_733a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_7341:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_734e:
    nop
    nop
    nop

jr_01c_7351:
    nop
    nop
    nop

jr_01c_7354:
    nop
    nop
    nop

jr_01c_7357:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_735e:
    nop
    nop
    nop

jr_01c_7361:
    nop
    nop
    nop

jr_01c_7364:
    nop
    nop
    nop

jr_01c_7367:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01c_7400:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    jr @+$41

    daa
    ld e, c
    add hl, hl
    nop
    nop
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    ld [de], a
    ld c, e
    ld e, c
    add hl, hl
    cpl
    ccf
    nop
    nop
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    jp nc, Jump_000_3f7c

    daa
    cpl
    ccf
    nop
    nop
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    db $ec
    dec de
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    inc a
    rst $30
    ld a, [hl]
    rst $20
    cp $c3
    rst $38
    add e
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    cp $07
    cp $03
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    jr @+$01

    nop
    rst $38
    ld b, b
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
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
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ff78
    cp $ff
    cp $3f
    db $fc
    ccf
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh [rIE], a
    ret nz

    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    sbc c
    nop
    sbc l
    nop
    sbc c
    nop
    add e
    nop
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    nop
    inc a
    nop
    inc a
    nop
    sbc c
    nop
    jp $ffc3


    rst $38
    rst $38
    rst $38
    ld bc, $9301
    nop
    add a
    nop
    sub a
    nop
    sbc e
    nop
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    adc a
    adc a
    ccf
    ccf
    jp $bd00


    nop
    add c
    nop
    cp a
    nop
    pop bc
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    inc a
    sbc c
    nop
    add c
    nop
    and l
    nop
    and l
    nop
    jr @+$1a

    rst $38
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    db $fc
    ccf
    ldh a, [$7f]
    ldh [$7f], a
    db $e3
    cp $c6
    db $fc
    db $fc
    rst $38
    rst $38
    sbc b
    sbc b
    call $c500
    nop
    pop de
    nop
    reti


    nop
    adc l
    adc l
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
    ld bc, $03ff
    rst $38
    rlca
    db $fc
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    di
    rst $38
    jp $87ff


    rst $38
    ld c, $ff
    nop
    jp $c3ff


    cp $83
    rst $38
    add c
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    cp $6f
    rst $38
    ld h, a
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $87
    db $fc
    rst $08
    ld a, [hl]
    rst $20
    ld a, $f3
    cp $e7
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp $03
    cp $ff
    add b
    rst $38
    or b
    rst $18
    ld e, b
    rst $38
    ld a, b
    rst $38
    ld [hl-], a
    ld a, a
    add b
    ccf
    rst $10
    inc a
    rst $08
    rst $38
    ld b, $fb
    dec bc
    rst $38
    rrca
    rst $38
    ld b, $ff
    nop
    cp $01
    cp $11
    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    ccf
    jp $e11f


    rra
    pop hl
    ccf
    pop bc
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
    add b
    rst $38
    db $fc
    db $fc
    add $c6
    ld h, e
    db $e3
    ld h, b
    ldh [$30], a
    ldh a, [rNR32]
    db $fc
    rrca
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    jp $e7c3


    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    jp $ffc3


    rst $38
    rst $38
    pop bc
    ld a, a
    pop hl
    ccf
    pop af
    rra
    ld sp, hl
    rrca
    db $fd
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    jr jr_01c_7695

    sbc c
    nop
    jp $e700


    nop
    rst $20
    nop
    jp $ffc3


    rst $38
    rst $38
    rst $38
    ld bc, $9f01
    nop
    add a
    nop
    sbc a
    nop
    sbc l
    nop

jr_01c_7695:
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc l
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    jr @+$1a

    inc a
    nop
    inc h
    nop
    inc h
    nop
    add c
    nop
    sbc c
    jr @+$01

    rst $38
    rrca
    db $fc
    rrca
    ld hl, sp+$0f
    ld a, [$fa1f]
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    ld h, $ff
    ld [bc], a
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
    db $fc
    rst $08
    cp $67
    cp $73
    cp $27
    db $fc
    cpl
    ld hl, sp+$3f
    ldh a, [$3f]
    ldh [$3f], a
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld a, [hl]
    add e
    cp $03
    rst $38
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    jr nz, jr_01c_7799

    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$bf]
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $fc
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    ld hl, $2400
    nop
    ld h, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    sub [hl]
    inc bc
    add [hl]
    inc bc
    sub [hl]
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$7f]
    ret nz

    rst $38

jr_01c_7799:
    rrca
    db $fc
    rra
    ld sp, hl
    ccf
    ldh a, [$3f]
    ld hl, sp+$0f
    db $fc
    rlca
    cp $0f
    db $fc
    rra
    ld hl, sp-$40
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [$3f]
    ld hl, sp+$1f
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    rlca
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add [hl]
    rst $38
    rrca
    ld hl, sp+$3f
    ldh [rIE], a
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
    ret nz

    ld a, a
    ldh a, [$1f]
    cp $03
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$7f], a
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp+$1f
    ld hl, sp-$61
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rrca
    db $fd
    rrca
    db $fc
    rlca
    cp $03
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
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    sub b
    rst $38
    ld hl, sp+$1f
    ld hl, sp+$0f
    db $fc
    rrca
    cp $ff
    ld b, $ff
    ld [bc], a
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
    jr nz, @+$01

    ret nz

    rst $38
    sbc h
    rst $38
    ld [hl], $ff
    ld d, l
    rst $38
    ld h, c
    rst $38
    ld hl, $11ff
    db $fc
    ccf
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    ld hl, sp+$1f
    ld hl, sp+$1f
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    rlca
    cp $03
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ld hl, sp+$3f
    rst $30
    ccf
    pop hl
    ccf
    push af
    rra
    rst $38
    rst $38
    ld c, $ff
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $20
    rst $38
    add a
    rst $38
    add e
    rst $38
    rlca
    cp $f0
    ccf
    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ccf
    ldh a, [$3f]
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $00ff
    rst $38
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [rIE], a
    ret nz

    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    db $fc
    ccf
    ldh a, [$7f]
    ldh [$7f], a
    db $e3
    cp $c6
    db $fc
    call nz, $ffc0
    ldh a, [rIE]
    ld hl, sp+$3f
    db $fc
    rra
    cp $3f
    or $f7
    ld h, e
    ld h, e
    inc hl
    inc hl
    db $fc
    call nz, $c6fe
    ld a, a
    rst $28
    ld a, h
    db $fc
    jr c, @-$06

    inc e
    db $fc
    rrca
    rst $38
    inc bc
    rst $38
    inc hl
    inc hl
    ld h, e
    ld h, e
    add $c7
    ld b, $07
    inc c
    rrca
    jr c, jr_01c_7934

    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    cp $1f
    ld hl, sp+$3f
    ldh a, [$3f]
    ldh [$63], a
    ldh [$65], a
    ret nz

    rst $30
    rst $38
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, $00
    inc h
    nop
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$7f]
    ld hl, sp+$1f
    db $fc
    rrca
    db $fc
    rlca
    adc $07
    sub [hl]
    inc bc
    ld h, l
    ret nz

    ld h, e
    ret nz

    ld h, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]

jr_01c_7934:
    ld hl, sp+$0f
    cp $03
    rst $38
    rst $38
    rst $38
    cp $fe
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
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
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
    rst $38
    call Call_000_16dd
    call Call_000_3683
    call Call_000_36a3
    call Call_01c_7994
    jr c, jr_01c_7975

    call Call_01c_79fc
    jr c, jr_01c_7975

    call Call_01c_7a24
    jr c, jr_01c_7975

    ld a, $02
    jr jr_01c_798b

jr_01c_7975:
    ld hl, $d72f
    push hl
    set 6, [hl]
    ld hl, $798f
    call Call_000_3c36
    ld c, $64
    call Call_000_372f
    pop hl
    res 6, [hl]
    ld a, $01

jr_01c_798b:
    ld [$d087], a
    ret


    rla
    inc de
    db $76
    add hl, hl
    ld d, b

Call_01c_7994:
    call Call_01c_7e9f
    ld a, $01
    ld [$4000], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7b9f
    ld c, a
    ld a, [$b523]
    cp c
    jp z, Jump_01c_79be

    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7b9f
    ld c, a
    ld a, [$b523]
    cp c
    jp nz, Jump_01c_7a59

Jump_01c_79be:
    ld hl, $a598
    ld de, $d157
    ld bc, $000b
    call Call_000_00b1
    ld hl, $a5a3
    ld de, $d2f6
    ld bc, $0789
    call Call_000_00b1
    ld hl, $d366
    set 7, [hl]
    ld hl, $ad2c
    ld de, $c100
    ld bc, $0200
    call Call_000_00b1
    ld a, [$b522]
    ldh [$d7], a
    ld hl, $b0c0
    ld de, $da7f
    ld bc, $0462
    call Call_000_00b1
    and a
    jp Jump_01c_7a5a


Call_01c_79fc:
    call Call_01c_7e9f
    ld a, $01

Call_01c_7a01:
    ld [$4000], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7b9f
    ld c, a
    ld a, [$b523]
    cp c
    jr nz, jr_01c_7a59

    ld hl, $b0c0
    ld de, $da7f
    ld bc, $0462
    call Call_000_00b1
    and a
    jp Jump_01c_7a5a


Call_01c_7a24:
Jump_01c_7a24:
    call Call_01c_7e9f
    ld a, $01
    ld [$4000], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7b9f
    ld c, a
    ld a, [$b523]
    cp c
    jp nz, Jump_01c_7a59

    ld hl, $af2c
    ld de, $d162
    jp Jump_01c_7eb4


Jump_01c_7a46:
    call Call_000_00b1
    ld hl, $a5a3
    ld de, $d2f6
    ld bc, $0026
    call Call_000_00b1
    and a
    jp Jump_01c_7a5a


Jump_01c_7a59:
jr_01c_7a59:
    scf

Jump_01c_7a5a:
    call Call_01c_7eaa
    ret


    call Call_01c_7994
    call Call_01c_79fc
    jp Jump_01c_7a24


    ld b, $01
    ld hl, $5d58
    call Call_000_3e84
    ld c, $0a
    call Call_000_372f
    ld hl, $7ad1
    call Call_01c_7abc
    and a
    ret nz

    ld c, $0a
    call Call_000_372f
    ld a, [$d087]
    cp $01
    jr z, jr_01c_7a95

    call Call_01c_7df7
    jr z, jr_01c_7a95

    ld hl, $7ae0
    call Call_01c_7abc
    and a
    ret nz

jr_01c_7a95:
    call Call_01c_7b91
    ld hl, $7ad6
    call Call_000_3c36
    ld c, $80
    call Call_000_372f
    ld hl, $7adb
    call Call_000_3c36
    ld c, $0a
    call Call_000_372f
    ld a, $b6
    call Call_000_3736
    call Call_000_373e
    ld c, $1e
    call Call_000_372f
    ret


Call_01c_7abc:
    call Call_000_3c36
    ld hl, $c42c
    ld bc, $0801
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$cc26]
    ret


    rla
    jr nc, @+$78

    add hl, hl
    ld d, b
    rla
    ld d, d
    db $76
    add hl, hl
    ld d, b
    rla
    ld e, l
    db $76
    add hl, hl
    ld d, b
    rla
    ld [hl], b
    db $76
    add hl, hl
    ld d, b

Call_01c_7ae5:
    call Call_01c_7e9f
    ld a, $01
    ld [$4000], a
    ld hl, $d157
    ld de, $a598
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d2f6
    ld de, $a5a3
    ld bc, $0789
    call Call_000_00b1
    ld hl, $c100
    ld de, $ad2c
    ld bc, $0200
    call Call_000_00b1
    ld hl, $da7f
    ld de, $b0c0
    ld bc, $0462
    call Call_000_00b1
    ldh a, [$d7]
    ld [$b522], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7b9f
    ld [$b523], a
    call Call_01c_7eaa
    ret


Call_01c_7b32:
    call Call_01c_7e9f
    ld a, $01
    ld [$4000], a
    ld hl, $da7f
    ld de, $b0c0
    ld bc, $0462
    call Call_000_00b1
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7b9f
    ld [$b523], a
    call Call_01c_7eaa
    ret


Jump_01c_7b56:
    call Call_01c_7e9f
    ld a, $01
    ld [$4000], a
    ld hl, $d162
    ld de, $af2c
    ld bc, $0194
    call Call_000_00b1
    ld hl, $d2f6
    ld de, $a5a3
    ld bc, $0026
    call Call_000_00b1
    ld hl, $d46f
    ld de, $a71c
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7b9f
    ld [$b523], a
    call Call_01c_7eaa
    ret


Call_01c_7b91:
    ld a, $02
    ld [$d087], a
    call Call_01c_7ae5
    call Call_01c_7b32
    jp Jump_01c_7b56


Call_01c_7b9f:
    ld d, $00

jr_01c_7ba1:
    ld a, [hl+]
    add d
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_01c_7ba1

    ld a, d
    cpl
    ret


Call_01c_7bac:
    ld hl, $a000
    ld de, $ba4d
    ld b, $06

jr_01c_7bb4:
    push bc
    push de
    ld bc, $0462
    call Call_01c_7b9f
    pop de
    ld [de], a
    inc de
    pop bc
    dec b
    jr nz, jr_01c_7bb4

    ret


Call_01c_7bc4:
    ld hl, $7bde
    ld a, [$d59f]
    and $7f
    cp $06
    ld b, $02
    jr c, jr_01c_7bd5

    inc b
    sub $06

jr_01c_7bd5:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    nop
    and b
    ld h, d
    and h
    call nz, Call_000_26a8
    xor l
    adc b
    or c
    ld [$21b5], a
    ld d, d
    ld a, h
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    ret nz

    ld hl, $d59f
    bit 7, [hl]
    call z, Call_01c_7d65
    call Call_01c_7c7d
    call Call_000_231c
    ld hl, $fffa
    set 1, [hl]
    call Call_000_3aab
    ld hl, $fffa
    res 1, [hl]
    bit 1, a
    ret nz

    ld a, $b6
    call Call_000_3736
    call Call_000_373e
    call Call_01c_7bc4
    ld e, l
    ld d, h
    ld hl, $da7f
    call Call_01c_7c57
    ld a, [$cc26]
    set 7, a
    ld [$d59f], a
    call Call_01c_7bc4
    ld de, $da7f
    call Call_01c_7c57
    ld hl, $d36b
    ld de, $cd3d
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call Call_000_3f4a
    call Call_01c_7b91
    ld hl, $cd3d
    call Call_000_3f54
    ret


    rla
    sbc [hl]
    db $76
    add hl, hl
    ld d, b

Call_01c_7c57:
    push hl
    call Call_01c_7e9f
    ld a, b
    ld [$4000], a
    ld bc, $0462
    call Call_000_00b1
    pop hl
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ld hl, $a000
    ld bc, $1a4c
    call Call_01c_7b9f
    ld [$ba4c], a
    call Call_01c_7bac
    call Call_01c_7eaa
    ret


Call_01c_7c7d:
    xor a
    ldh [$ba], a
    ld a, $03
    ld [$cc29], a
    ld a, $0b
    ld [$cc28], a
    ld a, $01
    ld [$cc24], a
    ld a, $0c
    ld [$cc25], a
    xor a
    ld [$cc37], a
    ld a, [$d59f]
    and $7f
    ld [$cc26], a
    ld [$cc2a], a
    ld hl, $c3a0
    ld bc, $0209
    call Call_000_16f0
    ld hl, $7d10
    call Call_000_3c36
    ld hl, $c3ab
    ld bc, $0c07
    call Call_000_16f0
    ld hl, $fffa
    set 2, [hl]
    ld de, $7d15
    ld hl, $c3c1
    call Call_000_1723
    ld hl, $fffa
    res 2, [hl]
    ld a, [$d59f]
    and $7f
    cp $09
    jr c, jr_01c_7ce2

    sub $09
    ld hl, $c3d0
    ld [hl], $f7
    add $f6
    jr jr_01c_7ce4

jr_01c_7ce2:
    add $f7

jr_01c_7ce4:
    ld [$c3d1], a
    ld hl, $c3c9
    ld de, $7d5d
    call Call_000_1723
    call Call_01c_7db5
    ld hl, $c3c6
    ld de, $cd3d
    ld bc, $0014
    ld a, $0c

jr_01c_7cfe:
    push af
    ld a, [de]
    and a
    jr z, jr_01c_7d05

    ld [hl], $78

jr_01c_7d05:
    add hl, bc
    inc de
    pop af
    dec a
    jr nz, jr_01c_7cfe

    ld a, $01
    ldh [$ba], a
    ret


    rla
    db $dd
    db $76
    add hl, hl
    ld d, b
    add c
    adc [hl]
    sub a
    ld a, a
    rst $30
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    ld hl, sp+$4e
    add c
    adc [hl]
    sub a
    ld a, a
    ld sp, hl
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    ld a, [$814e]
    adc [hl]
    sub a
    ld a, a
    ei
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    db $fc
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    db $fd
    ld c, [hl]
    add c
    adc [hl]
    sub a
    ld a, a
    cp $4e
    add c
    adc [hl]
    sub a
    ld a, a
    rst $38
    ld c, [hl]
    add c
    adc [hl]
    sub a
    rst $30
    or $4e
    add c
    adc [hl]
    sub a
    rst $30
    rst $30
    ld c, [hl]
    add c
    adc [hl]
    sub a
    rst $30
    ld hl, sp+$50
    add c
    adc [hl]
    sub a
    ld a, a
    adc l
    xor [hl]
    add sp, $50

Call_01c_7d65:
    call Call_01c_7e9f
    ld a, $02
    ld [$4000], a
    call Call_01c_7d7c
    ld a, $03
    ld [$4000], a
    call Call_01c_7d7c
    call Call_01c_7eaa
    ret


Call_01c_7d7c:
    ld hl, $a000
    call Call_01c_7db0
    ld hl, $a462
    call Call_01c_7db0
    ld hl, $a8c4
    call Call_01c_7db0
    ld hl, $ad26
    call Call_01c_7db0
    ld hl, $b188
    call Call_01c_7db0
    ld hl, $b5ea
    call Call_01c_7db0
    ld hl, $a000
    ld bc, $1a4c
    call Call_01c_7b9f
    ld [$ba4c], a
    call Call_01c_7bac
    ret


Call_01c_7db0:
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ret


Call_01c_7db5:
    ld hl, $cd3d
    push hl
    call Call_01c_7e9f
    ld a, $02
    ld [$4000], a
    call Call_01c_7dde
    ld a, $03
    ld [$4000], a
    call Call_01c_7dde
    call Call_01c_7eaa
    pop hl
    ld a, [$d59f]
    and $7f
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$da7f]
    ld [hl], a
    ret


Call_01c_7dde:
    ld a, [$a000]
    ld [hl+], a
    ld a, [$a462]
    ld [hl+], a
    ld a, [$a8c4]
    ld [hl+], a
    ld a, [$ad26]
    ld [hl+], a
    ld a, [$b188]
    ld [hl+], a
    ld a, [$b5ea]
    ld [hl+], a
    ret


Call_01c_7df7:
    call Call_01c_7e9f
    ld a, $01
    ld [$4000], a
    ld a, [$a598]
    and a
    jr z, jr_01c_7e25

    ld hl, $a598
    ld bc, $0f8b
    call Call_01c_7b9f
    ld c, a
    ld a, [$b523]
    cp c
    jr nz, jr_01c_7e25

    ld hl, $a605
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d358]
    cp l
    jr nz, jr_01c_7e25

    ld a, [$d359]
    cp h

jr_01c_7e25:
    ld a, $00
    ld [$6000], a
    ld [$0000], a
    ret


    ld a, [$d5a1]
    dec a
    cp $32
    jr nc, jr_01c_7e49

    ld hl, $a598
    ld bc, $0060
    call Call_000_3a74
    ld e, l
    ld d, h
    ld hl, $cc5b
    ld bc, $0060
    jr jr_01c_7e72

jr_01c_7e49:
    ld hl, $a5f8
    ld de, $a598
    ld bc, $1260
    call Call_01c_7e72
    ld hl, $cc5b
    ld de, $b7f8
    ld bc, $0060
    jr jr_01c_7e72

    ld hl, $a598
    ld bc, $0060
    ld a, [$cd3d]
    call Call_000_3a74
    ld de, $cc5b
    ld bc, $0060

Call_01c_7e72:
jr_01c_7e72:
    call Call_01c_7e9f
    xor a
    ld [$4000], a
    call Call_000_00b1
    call Call_01c_7eaa
    ret


    call Call_01c_7e9f
    ld a, $04

jr_01c_7e85:
    dec a
    push af
    call Call_01c_7e91
    pop af
    jr nz, jr_01c_7e85

    call Call_01c_7eaa
    ret


Call_01c_7e91:
    ld [$4000], a
    ld hl, $a000
    ld bc, $2000
    ld a, $ff
    jp Jump_000_166e


Call_01c_7e9f:
    ld a, $01
    ld [$6000], a
    ld a, $0a
    ld [$0000], a
    ret


Call_01c_7eaa:
    ld a, $00
    ld [$6000], a
    ld [$0000], a
    ret


    nop

Jump_01c_7eb4:
    push hl
    push af
    ld hl, $ffa6
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $18
    inc hl
    ld [hl], $fe
    pop af
    pop hl
    ld bc, $0194
    jp Jump_01c_7a46


Jump_01c_7ec9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
