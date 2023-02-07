; disasSembly of "yell.gbc"
SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld b, d
    ld b, b
    ld d, e
    ld b, b
    ld b, d
    ld b, b
    ld h, h
    ld b, b
    ld [hl], l
    ld b, b
    add [hl]
    ld b, b
    ld [hl], l
    ld b, b
    sub a
    ld b, b
    xor b
    ld b, b
    cp c
    ld b, b
    xor b
    ld b, b
    cp c
    ld b, b
    jp z, $db40

    ld b, b
    jp z, $db40

    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld b, b
    db $ec
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    ld [$0200], sp
    ld [bc], a
    ld [$0308], sp
    inc bc
    inc b
    nop
    nop
    add b
    nop
    nop
    ld [$0081], sp
    ld [$8200], sp
    ld [bc], a
    ld [$8308], sp
    inc bc
    inc b
    nop
    ld [$2080], sp
    nop
    nop
    add c
    jr nz, jr_001_4076

    ld [$2282], sp
    ld [$8300], sp
    inc hl
    inc b

jr_001_4076:
    nop
    nop
    inc b
    nop
    nop
    ld [$0005], sp
    ld [$0600], sp
    ld [bc], a
    ld [$0708], sp
    inc bc
    inc b
    nop
    nop
    add h
    nop
    nop
    ld [$0085], sp
    ld [$8600], sp
    ld [bc], a
    ld [$8708], sp
    inc bc
    inc b
    nop
    ld [$2084], sp
    nop
    nop
    add l
    jr nz, jr_001_40a9

    ld [$2286], sp
    ld [$8700], sp
    inc hl
    inc b

jr_001_40a9:
    nop
    nop
    ld [$0000], sp
    ld [$0009], sp
    ld [$0a00], sp
    ld [bc], a
    ld [$0b08], sp
    inc bc
    inc b
    nop
    nop
    adc b
    nop
    nop
    ld [$0089], sp
    ld [$8a00], sp
    ld [bc], a
    ld [$8b08], sp
    inc bc
    inc b
    nop
    ld [$2008], sp
    nop
    nop
    add hl, bc
    jr nz, jr_001_40dc

    ld [$220a], sp
    ld [$0b00], sp
    inc hl
    inc b

jr_001_40dc:
    nop
    ld [$2088], sp
    nop
    nop
    adc c
    jr nz, jr_001_40ed

    ld [$228a], sp
    ld [$8b00], sp
    inc hl
    add hl, bc

jr_001_40ed:
    db $fc
    db $fc
    nop
    nop
    db $fc
    inc b
    ld bc, $fc00
    inc c
    nop
    jr nz, jr_001_40fe

    db $fc
    ld bc, $0400

jr_001_40fe:
    inc b
    ld [bc], a
    nop
    inc b
    inc c
    ld bc, $0c00
    db $fc
    nop
    ld b, d
    inc c
    inc b
    ld bc, $0c02
    inc c
    nop
    ld h, e
    ld hl, $cce9
    ld a, [hl]
    and a
    jr z, jr_001_411e

    dec [hl]
    ld hl, $4141
    jr jr_001_4139

jr_001_411e:
    dec hl
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld hl, $4146
    jr nz, jr_001_4139

    push hl
    ld a, [$cfe4]
    ld [$d0b4], a
    call Call_000_132f
    ld a, [$d0bf]
    ld [$d006], a
    pop hl

jr_001_4139:
    push hl
    call Call_000_371b
    pop hl
    jp Jump_000_3c36


    rla
    jr c, @+$7d

    daa
    ld d, b
    rla
    ld c, a
    ld a, e
    daa
    ld d, b
    ld hl, $43f9
    ld de, $d157
    call Call_001_43f3
    ld hl, $4400
    ld de, $d349
    call Call_001_43f3
    xor a
    ldh [$b0], a
    ld [$d357], a
    ld hl, $d731
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $1f
    ld [$c0ef], a
    ld [$c0f0], a

Jump_001_4171:
    call Call_000_3df2
    ld a, $01
    ldh [$ba], a
    xor a
    ldh [$d7], a
    ldh [$ae], a
    ld a, $40
    ldh [$af], a
    ld a, $90
    ldh [$b0], a
    call Call_000_16dd
    call Call_000_0061
    call Call_000_3683
    ld hl, $4c48
    ld de, $8e00
    ld bc, $0050
    ld a, $04
    call Call_000_009d
    ld hl, $4e08
    ld de, $8ee0
    ld bc, $0010
    ld a, $04
    call Call_000_009d
    ld hl, $4d78
    ld de, $8e50
    ld bc, $0090
    ld a, $04
    call Call_000_009d
    ld hl, $453f
    ld b, $3d
    call Call_000_3e84
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call Call_000_166e
    ld hl, $4578
    ld b, $3d
    call Call_000_3e84
    call Call_001_4418
    call Call_001_4241
    call Call_000_36ec
    call Call_000_36f8
    call Call_000_007b
    ld hl, $459a
    ld b, $3d
    call Call_000_3e84
    ld a, $9b
    call Call_001_4332
    call Call_000_370f
    ld a, $40
    ldh [$b0], a
    call Call_000_36f8
    ld a, $98
    call Call_001_4332
    ld b, $06
    call Call_000_3e05
    call Call_000_3de0
    ld a, $e0
    ldh [rOBP0], a
    call Call_000_3040
    ld bc, $ffaf
    ld hl, $4228

jr_001_4213:
    ld a, [hl+]
    and a
    jr z, jr_001_4260

    ld d, a
    cp $fd
    jr nz, jr_001_4221

    ld a, $bc
    call Call_000_2238

jr_001_4221:
    ld a, [hl+]
    ld e, a
    call Call_001_4237
    jr jr_001_4213

    db $fc
    db $10
    inc bc
    inc b
    db $fd
    inc b
    ld [bc], a
    ld [bc], a
    cp $02
    ld bc, $ff02
    ld [bc], a
    nop

Call_001_4237:
jr_001_4237:
    call Call_000_1e64
    ld a, [bc]
    add d
    ld [bc], a
    dec e
    jr nz, jr_001_4237

    ret


Call_001_4241:
    ld hl, $c4f6
    ld de, $424f

jr_001_4247:
    ld a, [de]
    inc de
    cp $ff
    ret z

    ld [hl+], a
    jr jr_001_4247

    ldh [$e1], a
    ld [c], a
    db $e3
    pop hl
    ld [c], a
    xor $e5
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    rst $38

jr_001_4260:
    call Call_000_371b
    ld c, $24
    call Call_000_372f
    ld a, $bd
    call Call_000_2238
    ld hl, $4585
    ld b, $3d
    call Call_000_3e84
    ld a, $90
    ldh [$b0], a
    call Call_000_3ddb
    ld e, $00
    call Call_001_4387
    call Call_000_373e
    call Call_000_2233
    ld a, $c3
    ld [$c0ee], a
    call Call_000_2238

Jump_001_428f:
    xor a
    ld [$cc5b], a
    ld [$cd3d], a
    ld [$cd3e], a
    ld [$cd3f], a
    ld [$cd40], a
    ld a, $0f
    ld [$cd41], a

Jump_001_42a4:
jr_001_42a4:
    call Call_001_4405
    jp c, Jump_001_431b

    call Call_000_1e64
    call Call_000_381e
    ldh a, [$b4]
    cp $46
    jr z, jr_001_42bf

    and $09
    jr nz, jr_001_42bf

    call Call_001_4390
    jr jr_001_42a4

jr_001_42bf:
    ld e, $0a
    call Call_001_4387
    call Call_000_3dd8
    call Call_000_0082
    xor a
    ldh [$b0], a
    inc a
    ldh [$ba], a
    call Call_000_16dd
    ld a, $98
    call Call_001_4332
    ld a, $9c
    call Call_001_4332
    call Call_000_3ddb
    call Call_000_1e6f
    ldh a, [$b4]
    ld b, a
    and $46
    cp $46
    jp z, Jump_001_432a

    jp Jump_001_5ba6


    ld hl, $4e79
    ld b, $3a
    call Call_000_3e84
    jp Jump_001_428f


    ld a, [$cd41]
    inc a
    cp $2a
    jr c, jr_001_4305

    ld a, $0f

jr_001_4305:
    ld [$cd41], a
    ld e, a
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    xor a
    ld [$cd3f], a
    ld [$cd40], a
    jp Jump_001_42a4


Jump_001_431b:
    ld [$cfc6], a
    call Call_000_2233

jr_001_4321:
    ld a, [$cfc6]
    and a
    jr nz, jr_001_4321

    jp Jump_000_1d10


Jump_001_432a:
    ld b, $07
    ld hl, $421e
    jp Jump_000_3e84


Call_001_4332:
    ldh [$bd], a
    jp Jump_000_3ddb


    xor a
    ldh [$b0], a
    call Call_000_16dd
    call Call_000_36a3
    ld de, $4c48
    ld hl, $9600
    ld bc, $041e
    call Call_000_15fe
    ld hl, $c42e
    ld de, $4355
    jp Jump_000_1723


    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, c
    ld h, d
    ld a, h
    ld a, a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld c, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, c
    ld h, d
    ld a, h
    ld a, a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld c, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, c
    ld h, d
    ld a, h
    ld a, a
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld d, b

Call_001_4387:
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ret


Call_001_4390:
    call Call_001_43de
    ld a, [$cd3d]
    ld e, a
    ld d, $00
    ld hl, $43a2
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    cp [hl]
    ld b, e
    jp $d943


    ld b, e
    reti


    ld b, e
    rst $00
    ld b, e
    reti


    ld b, e
    reti


    ld b, e
    jp $d943


    ld b, e
    reti


    ld b, e
    cp a
    ld b, e
    cp d
    ld b, e
    xor a
    ld [$cd3d], a
    ret


    ld e, $00
    jr jr_001_43c9

    ld e, $04
    jr jr_001_43c9

    ld e, $08

jr_001_43c9:
    ld hl, $c302
    ld c, $08

jr_001_43ce:
    ld a, [hl]
    and $f3
    or e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_001_43ce

    ld hl, $cd3d
    inc [hl]
    ret


Call_001_43de:
    ld hl, $cd3e
    ld a, [hl]
    inc [hl]
    and a
    jr z, jr_001_43ed

    cp $80
    jr z, jr_001_43ed

    cp $90
    ret nz

jr_001_43ed:
    ld a, $01
    ld [$cd3d], a
    ret


Call_001_43f3:
    ld bc, $000b
    jp Jump_000_00b1


    adc l
    adc b
    adc l
    sub e
    add h
    adc l
    ld d, b
    sub d
    adc [hl]
    adc l
    sbc b
    ld d, b

Call_001_4405:
    ld hl, $cd3f
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, d
    cp $0c
    jr z, jr_001_4416

    ld [hl], d
    dec hl
    ld [hl], e
    and a
    ret


jr_001_4416:
    scf
    ret


Call_001_4418:
    xor a
    call Call_000_3e99
    ld hl, $a000
    ld bc, $0020
    ld a, $aa
    call Call_000_166e
    call Call_000_3ea9
    ret


    ld a, [$da5e]
    ld [$cf90], a
    ld a, [$cc49]
    cp $03
    jr z, jr_001_443f

    ld a, [$cf91]
    ld e, a
    call Call_001_4478

jr_001_443f:
    ld a, [$cf90]
    ld [$d0b4], a
    call Call_000_132f
    ld hl, $d16a
    ld bc, $002c
    ld a, [$cc49]
    cp $01
    jr c, jr_001_4469

    ld hl, $d8a3
    jr z, jr_001_4469

    cp $02
    ld hl, $da95
    ld bc, $0021
    jr z, jr_001_4469

    ld hl, $da5e
    jr jr_001_446f

jr_001_4469:
    ld a, [$cf91]
    call Call_000_3a74

jr_001_446f:
    ld de, $cf97
    ld bc, $002c
    jp Jump_000_00b1


Call_001_4478:
    ld hl, $d163
    ld a, [$cc49]
    and a
    jr z, jr_001_448c

    dec a
    jr z, jr_001_4489

    ld hl, $da80
    jr jr_001_448c

jr_001_4489:
    ld hl, $d89c

jr_001_448c:
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$cf90], a
    ret


    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    ld b, $00
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
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    ld d, b
    nop
    ld [bc], a
    ld d, b
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    jr nc, jr_001_44c4

jr_001_44c4:
    nop
    dec h
    nop
    nop
    dec d
    nop
    nop
    rlca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld d, b
    nop
    inc bc
    ld d, b
    nop
    nop
    nop
    nop
    ld hl, $0000
    ld hl, $0000
    ld hl, $0000
    sbc b
    nop
    nop
    sbc b
    nop
    nop
    sbc b
    nop
    nop
    sbc b
    nop
    nop
    sbc b
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld d, b
    nop
    ld hl, $0000
    nop
    nop
    ld bc, $0000
    nop
    sbc b
    nop
    nop
    stop
    nop
    ld b, $00
    nop
    dec d
    nop
    nop
    ld b, b
    nop
    nop
    rlca
    nop
    nop
    dec b
    nop
    nop
    rlca
    nop
    nop
    ld b, $50
    nop
    nop
    stop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    dec b
    ld d, b
    nop
    inc bc
    ld d, b
    nop
    inc bc
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
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    sub h
    adc e
    sub e
    sub c
    add b
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    add [hl]
    sub c
    add h
    add b
    sub e
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    adc h
    add b
    adc a
    ld d, b
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld d, b
    and $e6
    and $e6
    and $50
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    add c
    add b
    adc e
    adc e
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    add e
    add h
    sub a
    ld d, b
    adc h
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    add b
    adc l
    sub e
    adc b
    add e
    adc [hl]
    sub e
    add h
    ld d, b
    add c
    sub h
    sub c
    adc l
    ld a, a
    add a
    add h
    add b
    adc e
    ld d, b
    adc b
    add d
    add h
    ld a, a
    add a
    add h
    add b
    adc e
    ld d, b
    add b
    sub [hl]
    add b
    adc d
    add h
    adc l
    adc b
    adc l
    add [hl]
    ld d, b
    adc a
    add b
    sub c
    adc e
    sbc b
    sbc c
    ld a, a
    add a
    add h
    add b
    adc e
    ld d, b
    add l
    sub h
    adc e
    adc e
    ld a, a
    sub c
    add h
    sub d
    sub e
    adc [hl]
    sub c
    add h
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    add a
    sbc b
    adc a
    add h
    sub c
    ld a, a
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    add c
    adc [hl]
    sub h
    adc e
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    add d
    add b
    sub d
    add d
    add b
    add e
    add h
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub c
    add b
    adc b
    adc l
    add c
    adc [hl]
    sub [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub d
    adc [hl]
    sub h
    adc e
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    adc h
    add b
    sub c
    sub d
    add a
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    add h
    add b
    sub c
    sub e
    add a
    add c
    add b
    add e
    add [hl]
    add h
    ld d, b
    add h
    sub d
    add d
    add b
    adc a
    add h
    ld a, a
    sub c
    adc [hl]
    adc a
    add h
    ld d, b
    sub c
    add h
    adc a
    add h
    adc e
    ld d, b
    adc [hl]
    adc e
    add e
    ld a, a
    add b
    adc h
    add c
    add h
    sub c
    ld d, b
    add l
    adc b
    sub c
    add h
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    add a
    adc a
    ld a, a
    sub h
    adc a
    ld d, b
    adc a
    sub c
    adc [hl]
    sub e
    add h
    adc b
    adc l
    ld d, b
    adc b
    sub c
    adc [hl]
    adc l
    ld d, b
    add d
    add b
    sub c
    add c
    adc [hl]
    sub d
    ld d, b
    add d
    add b
    adc e
    add d
    adc b
    sub h
    adc h
    ld d, b
    sub c
    add b
    sub c
    add h
    ld a, a
    add d
    add b
    adc l
    add e
    sbc b
    ld d, b
    add e
    adc [hl]
    adc h
    add h
    ld a, a
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
    ld d, b
    add a
    add h
    adc e
    adc b
    sub a
    ld a, a
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
    ld d, b
    sub d
    add h
    add d
    sub c
    add h
    sub e
    ld a, a
    adc d
    add h
    sbc b
    ld d, b
    add e
    add h
    add c
    sub h
    add [hl]
    ld d, b
    add c
    adc b
    adc d
    add h
    ld a, a
    sub l
    adc [hl]
    sub h
    add d
    add a
    add h
    sub c
    ld d, b
    sub a
    ld a, a
    add b
    add d
    add d
    sub h
    sub c
    add b
    add d
    sbc b
    ld d, b
    adc e
    add h
    add b
    add l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, b
    add d
    add b
    sub c
    add e
    ld a, a
    adc d
    add h
    sbc b
    ld d, b
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
    ld d, b
    adc a
    adc a
    ld a, a
    sub h
    adc a
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld d, b
    add l
    sub h
    adc e
    adc e
    ld a, a
    add a
    add h
    add b
    adc e
    ld d, b
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    ld d, b
    add [hl]
    sub h
    add b
    sub c
    add e
    ld a, a
    sub d
    adc a
    add h
    add d
    add sp, $50
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld d, b
    add e
    adc b
    sub c
    add h
    ld a, a
    add a
    adc b
    sub e
    ld d, b
    add d
    adc [hl]
    adc b
    adc l
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
    ld d, b
    sub d
    adc [hl]
    add e
    add b
    ld a, a
    adc a
    adc [hl]
    adc a
    ld d, b
    adc e
    add h
    adc h
    adc [hl]
    adc l
    add b
    add e
    add h
    ld d, b
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add e
    ld a, a
    sub e
    add h
    add h
    sub e
    add a
    ld d, b
    sub a
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld d, b
    sub a
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    add e
    ld d, b
    sub a
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld d, b
    sub a
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    ld d, b
    adc [hl]
    add b
    adc d
    cp l
    ld a, a
    adc a
    add b
    sub c
    add d
    add h
    adc e
    ld d, b
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld d, b
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    sub d
    add d
    adc [hl]
    adc a
    add h
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    ld d, b
    adc e
    adc b
    add l
    sub e
    ld a, a
    adc d
    add h
    sbc b
    ld d, b
    add h
    sub a
    adc a
    add sp, -$80
    adc e
    adc e
    ld d, b
    adc [hl]
    adc e
    add e
    ld a, a
    sub c
    adc [hl]
    add e
    ld d, b
    add [hl]
    adc [hl]
    adc [hl]
    add e
    ld a, a
    sub c
    adc [hl]
    add e
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    sub c
    adc [hl]
    add e
    ld d, b
    adc a
    adc a
    ld a, a
    sub h
    adc a
    ld d, b
    add h
    sub e
    add a
    add h
    sub c
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    add h
    sub e
    add a
    add h
    sub c
    ld d, b
    add h
    adc e
    adc b
    sub a
    add h
    sub c
    ld d, b
    adc h
    add b
    sub a
    ld a, a
    add h
    adc e
    adc b
    sub a
    add h
    sub c
    ld d, b
    add c
    ld hl, sp-$7b
    ld d, b
    add c
    rst $30
    add l
    ld d, b
    rst $30
    add l
    ld d, b
    ld hl, sp-$7b
    ld d, b
    ld sp, hl
    add l
    ld d, b
    ld a, [$5085]
    ei
    add l
    ld d, b
    db $fc
    add l
    ld d, b
    db $fd
    add l
    ld d, b
    cp $85
    ld d, b
    rst $38
    add l
    ld d, b
    rst $30
    or $85
    ld d, b
    rst $30
    rst $30
    add l
    ld d, b
    add c
    ld a, [$5085]
    or [hl]
    ret nc

    push bc
    ret c

    add hl, de
    xor h
    db $10
    ld d, b
    or [hl]
    or d
    ld h, $d7
    add hl, de
    xor h
    db $10
    ld d, b
    or l
    inc l
    cpl
    or e
    add hl, de
    xor h
    db $10
    ld d, b
    jp z, Jump_000_3cd4

    cp e
    add hl, de
    xor h
    db $10
    ld d, b
    set 3, [hl]
    call nc, Call_000_19d8
    xor h
    db $10
    ld d, b
    push bc
    or [hl]
    sub $bc
    add hl, de
    xor h
    db $10
    ld d, b
    add hl, de
    and l
    add hl, de
    xor h
    db $10
    ld d, b
    set 1, c
    ret nz

    rst $08
    add hl, de
    xor h
    db $10
    ld d, b
    add hl, bc
    db $e3
    and [hl]
    inc de
    add hl, de
    xor h
    db $10
    ld d, b
    ret nz

    rst $08
    ld a, [hl+]
    ld d, b
    set 2, [hl]
    cp d
    ld d, b
    dec de
    xor b
    xor e
    inc c
    ld d, b
    adc e
    and [hl]
    add hl, de
    db $e3
    ld d, b
    add hl, bc
    db $e3
    and [hl]
    inc de
    ld d, b
    ld b, d
    sub b
    add [hl]
    xor l
    ld b, d
    sub d
    xor e
    ld d, b
    add [hl]
    xor l
    ld b, d
    sub d
    xor e
    ld d, b
    ld b, d
    sub b
    sbc l
    adc h
    adc a
    db $e3
    ld d, b
    sbc l
    adc h
    adc a
    db $e3
    ld d, b
    add e
    add a
    adc l
    and a
    xor e
    sub e
    ld a, [$cfca]
    dec a
    jr z, jr_001_49aa

    cp $ff
    ret nz

    ld [$cfca], a
    jp Jump_000_008d


jr_001_49aa:
    xor a
    ldh [$90], a

Jump_001_49ad:
    ldh [$8f], a
    ld e, a
    ld d, $c1
    ld a, [de]
    and a
    jp z, Jump_001_4a38

    inc e
    inc e
    ld a, [de]
    ld [$d5cc], a
    cp $ff
    jr nz, jr_001_49c6

    call Call_001_4a5f
    jr jr_001_4a38

jr_001_49c6:
    cp $a0
    jr c, jr_001_49ce

    ld a, $00
    jr jr_001_49d0

jr_001_49ce:
    and $0f

jr_001_49d0:
    ld c, a
    ld b, $00
    ld hl, $4000
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de
    inc d
    ld a, e
    add $05
    ld e, a
    ld a, [de]
    and $80
    ldh [$94], a
    pop de
    call Call_001_4a5f
    ldh a, [$90]
    add [hl]
    cp $a0
    jr z, jr_001_49f3

    jr nc, jr_001_4a41

jr_001_49f3:
    call Call_001_4a7b
    ld [$d5cc], a
    ldh a, [$90]
    ld e, a
    ld d, $c3
    ld a, [hl+]
    ld c, a

jr_001_4a00:
    ldh a, [$92]
    add $10
    add [hl]
    ld [de], a
    inc hl
    inc e
    ldh a, [$91]
    add $08
    add [hl]
    ld [de], a
    inc hl
    inc e
    ld a, [$d5cc]
    add [hl]
    cp $80
    jr c, jr_001_4a1c

    ld b, a
    ldh a, [$fc]
    add b

jr_001_4a1c:
    ld [de], a
    inc hl
    inc e
    ld a, [hl]
    bit 1, a
    jr z, jr_001_4a27

    ldh a, [$94]
    or [hl]

jr_001_4a27:
    and $f0
    bit 4, a
    jr z, jr_001_4a2f

    or $04

jr_001_4a2f:
    ld [de], a
    inc hl
    inc e
    dec c
    jr nz, jr_001_4a00

    ld a, e
    ldh [$90], a

Jump_001_4a38:
jr_001_4a38:
    ldh a, [$8f]
    add $10
    cp $00
    jp nz, Jump_001_49ad

jr_001_4a41:
    ld a, [$d735]
    bit 6, a
    ld c, $a0
    jr z, jr_001_4a4c

    ld c, $90

jr_001_4a4c:
    ldh a, [$90]
    cp c
    ret nc

    ld l, a
    ld h, $c3
    ld a, c
    ld de, $0004
    ld b, $a0

jr_001_4a59:
    ld [hl], b
    add hl, de
    cp l
    jr nz, jr_001_4a59

    ret


Call_001_4a5f:
    inc e
    inc e
    ld a, [de]
    ldh [$92], a
    inc e
    inc e
    ld a, [de]
    ldh [$91], a
    ld a, $04
    add e
    ld e, a
    ldh a, [$92]
    add $04
    and $f0
    ld [de], a
    inc e
    ldh a, [$91]
    and $f0
    ld [de], a
    ret


Call_001_4a7b:
    push bc
    ld a, [$d5cc]
    swap a
    and $0f
    cp $0b
    jr nz, jr_001_4a8b

    ld a, $7c
    jr jr_001_4a90

jr_001_4a8b:
    add a
    add a
    ld c, a
    add a
    add c

jr_001_4a90:
    pop bc
    ret


    ld c, $80
    ld b, $0a
    ld hl, $4aa0

jr_001_4a99:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_001_4a99

    ret


    ld a, $c3
    ldh [rDMA], a
    ld a, $28

jr_001_4aa6:
    dec a
    jr nz, jr_001_4aa6

    ret


Call_001_4aaa:
    ld hl, $d52f
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_001_4ab0:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_4aba

    cp c
    jr nz, jr_001_4ab0

    xor a
    ret


jr_001_4aba:
    scf
    ret


    dec bc
    inc c
    inc de
    dec d
    jr @+$01

    nop
    db $10
    dec de
    jr nz, @+$23

    inc hl
    inc l
    dec l
    ld l, $30
    ld sp, $3933
    inc a
    ld a, $52
    ld d, h
    ld e, b
    ld e, e
    rst $38
    ld bc, $0302
    ld de, $1312
    inc d
    inc e
    ld a, [de]
    rst $38
    ld de, $1c1a
    inc a
    ld e, [hl]
    rst $38
    ld de, $1916
    dec hl
    inc a
    dec a
    ccf
    ld c, d
    ld c, h
    ld c, l
    inc bc
    rst $38
    ld e, $20
    ld l, $30
    inc [hl]
    scf
    add hl, sp
    ld a, [hl-]
    ld b, b
    ld d, c
    ld d, d
    ld e, d
    ld e, h
    ld e, [hl]
    ld e, a
    rst $38
    ld bc, $1412
    jr z, jr_001_4b39

    scf
    ld b, h
    ld d, h
    ld e, h
    rst $38
    ld bc, $1412
    ld a, [de]
    inc e
    scf
    jr c, @+$3d

    inc a
    ld e, [hl]
    rst $38
    inc b
    dec c
    rla
    dec e
    ld e, $23
    inc [hl]
    scf
    add hl, sp
    ld c, d
    rst $38
    ld a, [bc]
    ld a, [de]
    ld [hl-], a
    dec sp
    rst $38
    ld bc, $1310
    dec de
    ld [hl+], a
    ld b, d
    ld d, d
    rst $38
    inc b
    rrca
    dec d
    rra
    dec sp
    ld b, l
    ld b, a
    ld d, l
    ld d, [hl]
    rst $38

jr_001_4b39:
    dec b
    dec d
    jr jr_001_4b57

    jr nz, jr_001_4b60

    ld [hl+], a
    ld a, [hl+]
    dec l
    jr nc, @+$01

    rst $38
    inc d
    rla
    ld a, [de]
    inc e
    jr nz, jr_001_4b83

    ld b, l
    rst $38
    ld bc, $1105
    ld [de], a
    inc d
    ld a, [de]
    inc e
    inc l
    ld d, e
    rst $38

jr_001_4b57:
    inc c
    ld h, $16
    ld e, $34
    scf
    rst $38
    rrca
    ld a, [de]

jr_001_4b60:
    rra
    ld h, $28
    add hl, hl
    inc l
    dec l
    ld l, $2f
    ld b, c
    rst $38
    ld bc, $1110
    inc de
    dec de
    jr nz, jr_001_4b92

    ld [hl+], a
    jr nc, @+$33

    ld [hl-], a
    ld b, d
    ld b, e
    ld c, b
    ld d, d
    ld d, l
    ld e, b
    ld e, [hl]
    rst $38
    dec de
    inc hl
    inc l
    dec l
    dec sp
    ld b, l

jr_001_4b83:
    rst $38
    ld bc, $1211
    inc d
    rst $38
    ld hl, $c46b
    ld bc, $010b
    ld a, [$d056]

jr_001_4b92:
    and a
    jr z, jr_001_4b9a

    call Call_000_16f0
    jr jr_001_4b9d

jr_001_4b9a:
    call Call_001_5b67

jr_001_4b9d:
    ld hl, $c480
    ld de, $4bab
    call Call_000_1723
    ld c, $32
    jp Jump_000_372f


    sub [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, -$19
    ld d, b
    ld h, $c1
    inc h
    ld a, $0e

jr_001_4bbc:
    ld l, a
    sub $0e
    ld c, a
    ldh [$da], a
    ld a, [hl]
    and a
    jr z, jr_001_4bcf

    push hl
    push de
    push bc
    call Call_001_4bd7
    pop bc
    pop de
    pop hl

jr_001_4bcf:
    ld a, l
    add $10
    cp $0e
    jr nz, jr_001_4bbc

    ret


Call_001_4bd7:
    ldh a, [$da]
    and a
    jp z, Jump_001_4da5

    cp $f0
    jp z, Jump_000_1552

    ld a, [hl]
    dec a
    swap a
    ldh [$93], a
    ld a, [$cf17]
    ld b, a
    ldh a, [$da]
    cp b
    jr nz, jr_001_4bf4

    jp Jump_001_5199


jr_001_4bf4:
    jp Jump_001_4e3e


Call_001_4bf7:
    ld h, $c1
    ldh a, [$da]
    ld l, a
    ld a, [hl]
    and a
    ret z

    ld a, l
    add $03
    ld l, a
    ld a, [hl+]
    call Call_001_4d22
    ld a, [hl+]
    add $04
    add b
    and $f0
    or c
    ldh [$90], a
    ld a, [hl+]
    call Call_001_4d22
    ld a, [hl]
    add b
    and $f0
    or c
    ldh [$91], a
    ld a, l
    add $07
    ld l, a
    xor a
    ld [hl-], a
    ld [hl-], a
    ldh a, [$91]
    ld [hl-], a
    ldh a, [$90]
    ld [hl], a
    xor a

Jump_001_4c29:
    ldh [$8f], a
    swap a
    ld e, a
    ldh a, [$da]
    cp e
    jp z, Jump_001_4d01

    ld d, h
    ld a, [de]
    and a
    jp z, Jump_001_4d01

    inc e
    inc e
    ld a, [de]
    inc a
    jp z, Jump_001_4d01

    ldh a, [$da]
    add $0a
    ld l, a
    inc e
    ld a, [de]
    call Call_001_4d22
    inc e
    ld a, [de]
    add $04
    add b
    and $f0
    or c
    sub [hl]
    jr nc, jr_001_4c58

    cpl
    inc a

jr_001_4c58:
    ldh [$90], a
    push af
    rl c
    pop af
    ccf
    rl c
    ld b, $07
    ld a, [hl]
    and $0f
    jr z, jr_001_4c6a

    ld b, $09

jr_001_4c6a:
    ldh a, [$90]
    sub b
    ldh [$92], a
    ld a, b
    ldh [$90], a
    jr c, jr_001_4c85

    ld b, $07
    dec e
    ld a, [de]
    inc e
    and a
    jr z, jr_001_4c7e

    ld b, $09

jr_001_4c7e:
    ldh a, [$92]
    sub b
    jr z, jr_001_4c85

    jr nc, jr_001_4d01

jr_001_4c85:
    inc e
    inc l
    ld a, [de]
    push bc
    call Call_001_4d22
    inc e
    ld a, [de]
    add b
    and $f0
    or c
    pop bc
    sub [hl]
    jr nc, jr_001_4c98

    cpl
    inc a

jr_001_4c98:
    ldh [$91], a
    push af
    rl c
    pop af
    ccf
    rl c
    ld b, $07
    ld a, [hl]
    and $0f
    jr z, jr_001_4caa

    ld b, $09

jr_001_4caa:
    ldh a, [$91]
    sub b
    ldh [$92], a
    ld a, b
    ldh [$91], a
    jr c, jr_001_4cc5

    ld b, $07
    dec e
    ld a, [de]
    inc e
    and a
    jr z, jr_001_4cbe

    ld b, $09

jr_001_4cbe:
    ldh a, [$92]
    sub b
    jr z, jr_001_4cc5

    jr nc, jr_001_4d01

jr_001_4cc5:
    ld a, l
    and $f0
    jr nz, jr_001_4cd9

    xor a
    ld [$d433], a
    ldh a, [$8f]
    cp $0f
    jr nz, jr_001_4cd9

    call Call_001_4d0a
    jr jr_001_4cef

jr_001_4cd9:
    ldh a, [$91]
    ld b, a
    ldh a, [$90]
    inc l
    cp b
    jr c, jr_001_4ce6

    ld b, $0c
    jr jr_001_4ce8

jr_001_4ce6:
    ld b, $03

jr_001_4ce8:
    ld a, c
    and b
    or [hl]
    ld [hl], a
    ld a, c
    inc l
    inc l

jr_001_4cef:
    ldh a, [$8f]
    ld de, $4d35
    add a
    add e
    ld e, a
    jr nc, jr_001_4cfa

    inc d

jr_001_4cfa:
    ld a, [de]
    or [hl]
    ld [hl+], a
    inc de
    ld a, [de]
    or [hl]
    ld [hl], a

Jump_001_4d01:
jr_001_4d01:
    ldh a, [$8f]
    inc a
    cp $10
    jp nz, Jump_001_4c29

    ret


Call_001_4d0a:
    ldh a, [$91]
    ld b, a
    ldh a, [$90]
    inc l
    cp b
    jr c, jr_001_4d17

    ld b, $0c
    jr jr_001_4d19

jr_001_4d17:
    ld b, $03

jr_001_4d19:
    ld a, c
    and b
    ld [$d433], a
    ld a, c
    inc l
    inc l
    ret


Call_001_4d22:
    and a
    ld b, $00
    ld c, $00
    jr z, jr_001_4d34

    ld c, $09
    cp $ff
    jr z, jr_001_4d33

    ld c, $07
    ld a, $00

jr_001_4d33:
    ld b, a

jr_001_4d34:
    ret


    nop
    ld bc, $0200
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_001_4d42

jr_001_4d42:
    ld b, b
    nop
    add b
    ld bc, $0200
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_001_4d51

jr_001_4d51:
    ld b, b
    nop
    add b
    nop
    call Call_000_3c29
    ldh a, [$8c]
    ld b, a
    ld hl, $d5cd

jr_001_4d5e:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_001_4d68

    inc hl
    jr jr_001_4d5e

jr_001_4d68:
    ld a, [hl]
    ldh [$db], a
    ld hl, $d503
    ldh a, [$8c]
    dec a
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld b, a
    ld c, $01
    call Call_000_3e3f
    jr nc, jr_001_4d93

    ldh a, [$db]
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $01
    ld [$cc3c], a
    ld hl, $4d9a
    jr jr_001_4d96

jr_001_4d93:
    ld hl, $4da0

jr_001_4d96:
    call Call_000_3c36
    ret


    rla
    add hl, de
    ld b, c
    ld h, $0b
    ld d, b
    rla
    ld a, [hl+]
    ld b, c
    ld h, $50

Jump_001_4da5:
    ld a, [$c200]
    and a
    jr z, jr_001_4db5

    cp $ff
    jr z, jr_001_4dbe

    dec a
    ld [$c200], a
    jr jr_001_4dbe

jr_001_4db5:
    ld a, [$c45c]
    ldh [$93], a
    cp $60
    jr c, jr_001_4dc4

jr_001_4dbe:
    ld a, $ff
    ld [$c102], a
    ret


jr_001_4dc4:
    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    call Call_001_4bf7
    pop af
    ld [$cfca], a
    ld h, $c1
    ld a, [$cfc4]
    and a
    jr nz, jr_001_4e14

    ld a, [$d527]
    bit 2, a
    jr z, jr_001_4de6

    xor a
    jr jr_001_4dfe

jr_001_4de6:
    bit 3, a
    jr z, jr_001_4dee

    ld a, $04
    jr jr_001_4dfe

jr_001_4dee:
    bit 1, a
    jr z, jr_001_4df6

    ld a, $08
    jr jr_001_4dfe

jr_001_4df6:
    bit 0, a
    jr z, jr_001_4e08

    ld a, $0c
    jr jr_001_4dfe

jr_001_4dfe:
    ld [$c109], a
    ld a, [$cfc3]
    bit 0, a
    jr z, jr_001_4e14

jr_001_4e08:
    xor a
    ld [$c107], a
    ld [$c108], a
    call Call_001_4e32
    jr jr_001_4e21

jr_001_4e14:
    ld a, [$d735]
    bit 7, a
    jr nz, jr_001_4e21

    call Call_001_5274
    call Call_001_4e32

jr_001_4e21:
    ldh a, [$93]
    ld c, a
    ld a, [$d534]
    cp c
    ld a, $00
    jr nz, jr_001_4e2e

    ld a, $80

jr_001_4e2e:
    ld [$c207], a
    ret


Call_001_4e32:
    ld a, [$c108]
    ld b, a
    ld a, [$c109]
    add b
    ld [$c102], a
    ret


Jump_001_4e3e:
    ldh a, [$da]
    swap a
    dec a
    add a
    ld hl, $d4e3
    add l
    ld l, a
    ld a, [hl]
    ld [$cf14], a
    ld h, $c1
    ldh a, [$da]
    ld l, a
    inc l
    ld a, [hl]
    and a
    jp z, Jump_001_4fff

    call Call_001_503f
    ret c

    ld h, $c1
    ldh a, [$da]
    ld l, a
    inc l
    ld a, [hl]
    bit 7, a
    jp nz, Jump_001_4fd1

    ld b, a
    ld a, [$cfc3]
    bit 0, a
    jp nz, Jump_001_4fc5

    ld a, b
    cp $02
    jp z, Jump_001_4fa9

    cp $03
    jp z, Jump_001_4f61

    cp $04
    jp z, Jump_001_5357

    ld a, [$cfc4]
    and a
    ret nz

    call Call_001_5012
    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    inc a
    jp z, Jump_001_4ed4

    inc a
    jp z, Jump_001_4ed4

    dec a
    ld [hl], a
    dec a
    push hl
    ld hl, $cf0f
    dec [hl]
    pop hl
    ld de, $cc5b
    call Call_001_5192
    cp $e0
    jp z, Jump_001_4f43

    cp $ff
    jr nz, jr_001_4ebf

    ld [hl], a
    ld hl, $d72f
    res 0, [hl]
    xor a
    ld [$cd38], a
    ld [$cd3a], a
    ret


jr_001_4ebf:
    cp $fe
    jr nz, jr_001_4ecb

    ld [hl], $01
    ld de, $cc5b
    call Call_001_5192

jr_001_4ecb:
    push af
    call Call_001_5288
    pop bc
    ld a, b
    jr nc, jr_001_4eda

    ret


Jump_001_4ed4:
    call Call_001_516a
    call Call_000_3e6d

jr_001_4eda:
    ld b, a
    ld a, [$cf14]
    cp $d0
    jr z, jr_001_4efa

    cp $d1
    jr z, jr_001_4f11

    cp $d2
    jr z, jr_001_4f28

    cp $d3
    jr z, jr_001_4f39

    ld a, b
    cp $40
    jr nc, jr_001_4f06

    ld a, [$cf14]
    cp $02
    jr z, jr_001_4f28

jr_001_4efa:
    ld de, $0028
    add hl, de
    ld de, $0100
    ld bc, $0400
    jr jr_001_4f46

jr_001_4f06:
    cp $80
    jr nc, jr_001_4f1d

    ld a, [$cf14]
    cp $02
    jr z, jr_001_4f39

jr_001_4f11:
    ld de, $ffd8
    add hl, de
    ld de, $ff00
    ld bc, $0804
    jr jr_001_4f46

jr_001_4f1d:
    cp $c0
    jr nc, jr_001_4f32

    ld a, [$cf14]
    cp $01
    jr z, jr_001_4f11

jr_001_4f28:
    dec hl
    dec hl
    ld de, $00ff
    ld bc, $0208
    jr jr_001_4f46

jr_001_4f32:
    ld a, [$cf14]
    cp $01
    jr z, jr_001_4efa

jr_001_4f39:
    inc hl
    inc hl
    ld de, $0001
    ld bc, $010c
    jr jr_001_4f46

Jump_001_4f43:
    ld de, $0000

jr_001_4f46:
    push hl
    call Call_001_5337
    pop hl
    push de
    ld c, [hl]
    call Call_001_50d1
    pop de
    ret c

    call Call_001_5349
    ldh a, [$da]
    ld l, a
    ld [hl], $10
    dec h
    inc l
    ld [hl], $03
    jp Jump_001_50ba


Jump_001_4f61:
    call Call_001_5274
    ldh a, [$da]
    add $03
    ld l, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    add b
    ld [hl+], a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    add b
    ld [hl], a
    ldh a, [$da]
    ld l, a
    inc h
    ld a, [hl]
    dec a
    ld [hl], a
    ret nz

    ld a, $06
    add l
    ld l, a
    ld a, [hl]
    cp $fe
    jr nc, jr_001_4f8c

    ldh a, [$da]
    inc a
    ld l, a
    dec h
    ld [hl], $01
    ret


jr_001_4f8c:
    call Call_000_3e6d
    ldh a, [$da]
    add $08
    ld l, a
    ldh a, [$d3]
    and $7f
    ld [hl], a
    dec h
    ldh a, [$da]
    inc a
    ld l, a
    ld [hl], $02
    inc l
    inc l
    xor a
    ld b, [hl]
    ld [hl+], a
    inc l
    ld c, [hl]
    ld [hl], a
    ret


Jump_001_4fa9:
    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    inc l
    inc l
    cp $fe
    jr nc, jr_001_4fbb

    ld [hl], $00
    jr jr_001_4fbe

jr_001_4fbb:
    dec [hl]
    jr nz, jr_001_4fc5

jr_001_4fbe:
    dec h
    ldh a, [$da]
    inc a
    ld l, a
    ld [hl], $01

Jump_001_4fc5:
jr_001_4fc5:
    ld h, $c1
    ldh a, [$da]
    add $08
    ld l, a
    ld [hl], $00
    jp Jump_001_50ba


Jump_001_4fd1:
    ld a, [$d72c]
    bit 5, a
    jr nz, jr_001_4fc5

    res 7, [hl]
    ld a, [$d529]
    bit 3, a
    jr z, jr_001_4fe5

    ld c, $00
    jr jr_001_4ff7

jr_001_4fe5:
    bit 2, a
    jr z, jr_001_4fed

    ld c, $04
    jr jr_001_4ff7

jr_001_4fed:
    bit 1, a
    jr z, jr_001_4ff5

    ld c, $0c
    jr jr_001_4ff7

jr_001_4ff5:
    ld c, $08

jr_001_4ff7:
    ldh a, [$da]
    add $09
    ld l, a
    ld [hl], c
    jr jr_001_4fc5

Jump_001_4fff:
    ld [hl], $01
    inc l
    ld [hl], $ff
    inc h
    ldh a, [$da]
    add $02
    ld l, a
    ld a, $08
    ld [hl+], a
    ld [hl], a
    call Call_001_5012
    ret


Call_001_5012:
    ld h, $c2
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [$d360]
    ld b, a
    ld a, [hl]
    sub b
    call Call_001_5033
    sub $04
    dec h
    ld [hl+], a
    inc h
    ld a, [$d361]
    ld b, a
    ld a, [hl+]
    sub b
    call Call_001_5033
    dec h
    ld [hl], a
    ret


Call_001_5033:
    jr nc, jr_001_503c

    cpl
    inc a
    swap a
    cpl
    inc a
    ret


jr_001_503c:
    swap a
    ret


Call_001_503f:
    ld a, $12
    call Call_000_3eb4
    ldh a, [$e5]
    and a
    jp nz, Jump_001_5091

    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    cp $fe
    jr c, jr_001_5078

    ldh a, [$da]
    add $04
    ld l, a
    ld b, [hl]
    ld a, [$d360]
    cp b
    jr z, jr_001_5069

    jr nc, jr_001_5091

    add $08
    cp b
    jr c, jr_001_5091

jr_001_5069:
    inc l
    ld b, [hl]
    ld a, [$d361]
    cp b
    jr z, jr_001_5078

    jr nc, jr_001_5091

    add $09
    cp b
    jr c, jr_001_5091

jr_001_5078:
    call Call_001_516a
    ld d, $60
    ld a, [hl+]
    cp d
    jr nc, jr_001_5091

    ld a, [hl-]
    cp d
    jr nc, jr_001_5091

    ld bc, $ffec
    add hl, bc
    ld a, [hl+]
    cp d
    jr nc, jr_001_5091

    ld a, [hl]
    cp d
    jr c, jr_001_509d

Jump_001_5091:
jr_001_5091:
    ld h, $c1
    ldh a, [$da]
    add $02
    ld l, a
    ld [hl], $ff
    scf
    jr jr_001_50b9

jr_001_509d:
    ld c, a
    ld a, [$cfc4]
    and a
    jr nz, jr_001_50b9

    call Call_001_50ba
    inc h
    ldh a, [$da]
    add $07
    ld l, a
    ld a, [$d534]
    cp c
    ld a, $00
    jr nz, jr_001_50b7

    ld a, $80

jr_001_50b7:
    ld [hl], a
    and a

jr_001_50b9:
    ret


Call_001_50ba:
Jump_001_50ba:
    ld h, $c1
    ldh a, [$da]
    add $08
    ld l, a
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    add b
    ld b, a
    ldh a, [$93]
    add b
    ld b, a
    ldh a, [$da]
    add $02
    ld l, a
    ld [hl], b
    ret


Call_001_50d1:
    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    cp $fe
    jr nc, jr_001_50df

    and a
    ret


jr_001_50df:
    call Call_001_4aaa
    jr c, jr_001_514c

    ld h, $c2
    ldh a, [$da]
    add $06
    ld l, a
    ld a, [hl]
    inc a
    jr z, jr_001_514c

    ld h, $c1
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [hl+]
    add $04
    add d
    cp $80
    jr nc, jr_001_514c

    inc l
    ld a, [hl]
    add e
    cp $90
    jr nc, jr_001_514c

    push de
    push bc
    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    call Call_001_4bf7
    pop af
    ld [$cfca], a
    pop bc
    pop de
    ld h, $c1
    ldh a, [$da]
    add $0c
    ld l, a
    ld a, [hl]
    and b
    jr nz, jr_001_514c

    ld h, $c2
    ldh a, [$da]
    add $02
    ld l, a
    ld a, [hl+]
    bit 7, d
    jr nz, jr_001_5135

    add d
    cp $05
    jr jr_001_5139

jr_001_5135:
    sub $01
    jr c, jr_001_514c

jr_001_5139:
    ld d, a
    ld a, [hl]
    bit 7, e
    jr nz, jr_001_5144

    add e
    cp $05
    jr jr_001_5148

jr_001_5144:
    sub $01
    jr c, jr_001_514c

jr_001_5148:
    ld [hl-], a
    ld [hl], d
    and a
    ret


jr_001_514c:
    ld h, $c1
    ldh a, [$da]
    inc a
    ld l, a
    ld [hl], $02
    inc l
    inc l
    xor a
    ld [hl+], a
    inc l
    ld [hl], a
    inc h
    ldh a, [$da]
    add $08
    ld l, a
    call Call_000_3e6d
    ldh a, [$d3]
    and $7f
    ld [hl], a
    scf
    ret


Call_001_516a:
    ld h, $c1
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [hl+]
    add $04
    and $f8
    srl a
    ld c, a
    ld b, $00
    inc l
    ld a, [hl]
    srl a
    srl a
    srl a
    add $14
    ld d, $00
    ld e, a
    ld hl, $c3a0
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, de
    ret


Call_001_5192:
    add e
    ld e, a
    jr nc, jr_001_5197

    inc d

jr_001_5197:
    ld a, [de]
    ret


Jump_001_5199:
    ld a, [$d72f]
    bit 7, a
    ret z

    ld hl, $d72d
    bit 7, [hl]
    set 7, [hl]
    jp z, Jump_001_5209

    ld hl, $cc97
    ld a, [$cd37]
    add l
    ld l, a
    jr nc, jr_001_51b4

    inc h

jr_001_51b4:
    ld a, [hl]
    cp $40
    jr nz, jr_001_51c2

    call Call_001_5215
    ld c, $04
    ld a, $fe
    jr jr_001_51ec

jr_001_51c2:
    cp $00
    jr nz, jr_001_51cf

    call Call_001_5215
    ld c, $00
    ld a, $02
    jr jr_001_51ec

jr_001_51cf:
    cp $80
    jr nz, jr_001_51dc

    call Call_001_521a
    ld c, $08
    ld a, $fe
    jr jr_001_51ec

jr_001_51dc:
    cp $c0
    jr nz, jr_001_51e9

    call Call_001_521a
    ld c, $0c
    ld a, $02
    jr jr_001_51ec

jr_001_51e9:
    cp $ff
    ret


jr_001_51ec:
    ld b, a
    ld a, [hl]
    add b
    ld [hl], a
    ldh a, [$da]
    add $09
    ld l, a
    ld a, c
    ld [hl], a
    call Call_001_5226
    ld hl, $cf18
    dec [hl]
    ret nz

    ld a, $08
    ld [$cf18], a
    ld hl, $cd37
    inc [hl]
    ret


Jump_001_5209:
    xor a
    ld [$cd37], a
    ld a, $08
    ld [$cf18], a
    jp Jump_001_5226


Call_001_5215:
    ld a, $04
    ld b, a
    jr jr_001_521d

Call_001_521a:
    ld a, $06
    ld b, a

jr_001_521d:
    ld hl, $c100
    ldh a, [$da]
    add l
    add b
    ld l, a
    ret


Call_001_5226:
Jump_001_5226:
    ld hl, $c200
    ldh a, [$da]
    add $0e
    ld l, a
    ld a, [hl]
    dec a
    swap a
    ld b, a
    ld hl, $c100
    ldh a, [$da]
    add $09
    ld l, a
    ld a, [hl]
    cp $00
    jr z, jr_001_524d

    cp $04
    jr z, jr_001_524d

    cp $08
    jr z, jr_001_524d

    cp $0c
    jr z, jr_001_524d

    ret


jr_001_524d:
    add b
    ld b, a
    ldh [$e9], a
    call Call_001_5264
    ld hl, $c100
    ldh a, [$da]
    add $02
    ld l, a
    ldh a, [$e9]
    ld b, a
    ldh a, [$ea]
    add b
    ld [hl], a
    ret


Call_001_5264:
    call Call_001_5274
    ld h, $c1
    ldh a, [$da]
    add $08
    ld l, a
    ld a, [hl]
    and $03
    ldh [$ea], a
    ret


Call_001_5274:
    ldh a, [$da]
    add $07
    ld l, a
    ld h, $c1
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    ret nz

    inc l
    ld a, [hl]
    inc a
    and $03
    ld [hl], a
    ret


Call_001_5288:
    cp $05
    jr z, jr_001_52af

    cp $04
    jr z, jr_001_52aa

    cp $06
    jr z, jr_001_52b4

    cp $07
    jr z, jr_001_52b9

    cp $11
    jr z, jr_001_52c3

    cp $12
    jr z, jr_001_52be

    cp $13
    jr z, jr_001_52c8

    cp $14
    jr z, jr_001_52cd

    xor a
    ret


jr_001_52aa:
    call Call_001_531f
    jr jr_001_52e6

jr_001_52af:
    call Call_001_5325
    jr jr_001_52e6

jr_001_52b4:
    call Call_001_5331
    jr jr_001_52e6

jr_001_52b9:
    call Call_001_532b
    jr jr_001_52e6

jr_001_52be:
    call Call_001_531f
    jr jr_001_52fa

jr_001_52c3:
    call Call_001_5325
    jr jr_001_52fa

jr_001_52c8:
    call Call_001_5331
    jr jr_001_52fa

jr_001_52cd:
    call Call_001_532b
    jr jr_001_52fa

    call Call_001_531f
    jr jr_001_530b

    call Call_001_5325
    jr jr_001_530b

    call Call_001_5331
    jr jr_001_530b

    call Call_001_532b
    jr jr_001_530b

jr_001_52e6:
    call Call_001_5337
    call Call_001_5349
    ldh a, [$da]
    ld l, a
    ld [hl], $08
    dec h
    inc l
    ld [hl], $04
    call Call_001_50ba
    scf
    ret


jr_001_52fa:
    call Call_001_5337
    ldh a, [$da]
    ld l, a
    ld [hl], $08
    dec h
    inc l
    ld [hl], $03
    call Call_001_50ba
    scf
    ret


jr_001_530b:
    call Call_001_5337
    call Call_001_5349
    ldh a, [$da]
    ld l, a
    ld [hl], $08
    dec h
    inc l
    ld [hl], $03
    call Call_001_50ba
    scf
    ret


Call_001_531f:
    ld de, $0100
    ld c, $00
    ret


Call_001_5325:
    ld de, $ff00
    ld c, $04
    ret


Call_001_532b:
    ld de, $0001
    ld c, $0c
    ret


Call_001_5331:
    ld de, $00ff
    ld c, $08
    ret


Call_001_5337:
    ldh a, [$da]
    add $09
    ld l, a
    ld h, $c1
    ld [hl], c
    ldh a, [$da]
    add $03
    ld l, a
    ld [hl], d
    inc l
    inc l
    ld [hl], e
    ret


Call_001_5349:
    ld h, $c2
    ldh a, [$da]
    add $04
    ld l, a
    ld a, [hl]
    add d
    ld [hl+], a
    ld a, [hl]
    add e
    ld [hl], a
    ret


Jump_001_5357:
    call Call_001_5274
    ldh a, [$da]
    add $03
    ld l, a
    ld h, $c1
    ld a, [hl+]
    add a
    ld b, a
    ld a, [hl]
    add b
    ld [hl+], a
    ld a, [hl+]
    add a
    ld b, a
    ld a, [hl]
    add b
    ld [hl], a
    ldh a, [$da]
    ld l, a
    ld h, $c2
    dec [hl]
    ret nz

    ld a, $06
    add l
    ld l, a
    ld a, [hl]
    cp $fe
    jr nc, jr_001_5386

    ldh a, [$da]
    inc a
    ld l, a
    ld h, $c1
    ld [hl], $01
    ret


jr_001_5386:
    call Call_000_3e6d
    ldh a, [$da]
    add $08
    ld l, a
    ld h, $c2
    ldh a, [$d3]
    and $7f
    ld [hl], a
    dec h
    ldh a, [$da]
    inc a
    ld l, a
    ld [hl], $02
    inc l
    inc l
    xor a
    ld b, [hl]
    ld [hl+], a
    inc l
    ld c, [hl]
    ld [hl], a
    ret


Call_001_53a5:
    ld c, $50
    call Call_000_372f
    call Call_000_16dd
    call Call_000_231c
    call Call_000_3683
    call Call_000_36c3
    call Call_001_5b9a
    ld hl, $c443
    ld bc, $020c
    call Call_001_5b67
    ld hl, $c46c
    ld de, $55a9
    call Call_000_1723
    ld hl, $d073
    xor a
    ld [hl+], a
    ld [hl], $50

Jump_001_53d2:
    ld hl, $d151
    ld a, $fd
    ld b, $06

jr_001_53d9:
    ld [hl+], a
    dec b
    jr nz, jr_001_53d9

    ld hl, $d140
    ld a, $fd
    ld b, $07

jr_001_53e4:
    ld [hl+], a
    dec b
    jr nz, jr_001_53e4

    ld b, $0a

jr_001_53ea:
    call Call_000_3e6d
    cp $fd
    jr nc, jr_001_53ea

    ld [hl+], a
    dec b
    jr nz, jr_001_53ea

    ld hl, $c508
    ld a, $fd
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, $c8
    xor a

jr_001_5400:
    ld [hl+], a
    dec b
    jr nz, jr_001_5400

    ld hl, $d886
    ld bc, $01a9

jr_001_540a:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_540a

    ld hl, $d169
    ld de, $c512
    ld bc, $0000

jr_001_541a:
    inc c
    ld a, c
    cp $fd
    jr z, jr_001_5436

    ld a, b
    dec a
    jr nz, jr_001_5429

    ld a, c
    cp $0d
    jr z, jr_001_543f

jr_001_5429:
    inc hl
    ld a, [hl]
    cp $fe
    jr nz, jr_001_541a

    ld a, c
    ld [de], a
    inc de
    ld [hl], $ff
    jr jr_001_541a

jr_001_5436:
    ld a, $ff
    ld [de], a
    inc de
    ld bc, $0100
    jr jr_001_541a

jr_001_543f:
    ld a, $ff
    ld [de], a
    call Call_000_20db
    ldh a, [$aa]
    cp $02
    jr nz, jr_001_545f

    call Call_000_3ddb
    xor a
    ldh [$ac], a
    ld a, $81
    ldh [rSC], a
    call Call_000_1e64
    xor a
    ldh [$ac], a
    ld a, $81
    ldh [rSC], a

jr_001_545f:
    call Call_000_3ddb
    call Call_000_2233
    ld a, $08
    ldh [rIE], a
    ld hl, $d140
    ld de, $cd81
    ld bc, $0011
    call Call_000_1fcb
    ld a, $fe
    ld [de], a
    ld hl, $d151
    ld de, $d892
    ld bc, $01a8
    call Call_000_1fcb
    ld a, $fe
    ld [de], a
    ld hl, $c508
    ld de, $c5d0
    ld bc, $00c8
    call Call_000_1fcb
    ld a, $0d
    ldh [rIE], a
    ldh a, [$aa]
    cp $02
    jr z, jr_001_54bc

    ld hl, $cd81

jr_001_54a0:
    ld a, [hl+]
    and a
    jr z, jr_001_54a0

    cp $fd
    jr z, jr_001_54a0

    cp $fe
    jr z, jr_001_54a0

    dec hl
    ld de, $d147
    ld c, $0a

jr_001_54b2:
    ld a, [hl+]
    cp $fe
    jr z, jr_001_54b2

    ld [de], a
    inc de
    dec c
    jr nz, jr_001_54b2

jr_001_54bc:
    ld hl, $d895

jr_001_54bf:
    ld a, [hl+]
    and a
    jr z, jr_001_54bf

    cp $fd
    jr z, jr_001_54bf

    cp $fe
    jr z, jr_001_54bf

    dec hl
    ld de, $d886
    ld c, $0b

jr_001_54d1:
    ld a, [hl+]
    cp $fe
    jr z, jr_001_54d1

    ld [de], a
    inc de
    dec c
    jr nz, jr_001_54d1

    ld de, $d89b
    ld bc, $0194

jr_001_54e1:
    ld a, [hl+]
    cp $fe
    jr z, jr_001_54e1

    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_001_54e1

    ld de, $c508
    ld hl, $d16a
    ld c, $02

jr_001_54f5:
    ld a, [de]
    inc de
    and a
    jr z, jr_001_54f5

    cp $fd
    jr z, jr_001_54f5

    cp $fe
    jr z, jr_001_54f5

    cp $ff
    jr z, jr_001_5514

    push hl
    push bc
    ld b, $00
    dec a
    ld c, a
    add hl, bc
    ld a, $fe
    ld [hl], a
    pop bc
    pop hl
    jr jr_001_54f5

jr_001_5514:
    ld hl, $d266
    dec c
    jr nz, jr_001_54f5

    ld de, $c5d0
    ld hl, $d8a3
    ld c, $02

jr_001_5522:
    ld a, [de]
    inc de
    and a
    jr z, jr_001_5522

    cp $fd
    jr z, jr_001_5522

    cp $fe
    jr z, jr_001_5522

    cp $ff
    jr z, jr_001_5541

    push hl
    push bc
    ld b, $00
    dec a
    ld c, a
    add hl, bc
    ld a, $fe
    ld [hl], a
    pop bc
    pop hl
    jr jr_001_5522

jr_001_5541:
    ld hl, $d99f
    dec c
    jr nz, jr_001_5522

    ld a, $ab
    ld [$cf8c], a
    ld a, $d9
    ld [$cf8d], a
    xor a
    ld [$cc38], a
    call Call_000_2233
    ldh a, [$aa]
    cp $02
    ld c, $42
    call z, Call_000_372f
    ld a, [$d12a]
    cp $03
    ld a, $32
    ld [$d12a], a
    jr nz, jr_001_55a0

    ld a, $04
    ld [$d12a], a
    ld a, $e1
    ld [$d058], a
    call Call_000_16dd
    call Call_000_3ddb
    ld b, $09
    call Call_000_3e05
    ld hl, $d354
    res 7, [hl]
    ld a, [$d357]
    push af
    xor a
    ld [$d357], a
    ld a, $2c
    call Call_000_3eb4
    pop af
    ld [$d357], a
    ld a, $07
    call Call_000_3eb4
    jp Jump_001_581e


jr_001_55a0:
    ld c, $1f
    ld a, $d9
    call Call_000_2211
    jr jr_001_55b6

    adc a
    adc e
    add h
    add b
    sub d
    add h
    ld a, a
    sub [hl]
    add b
    adc b
    sub e
    rst $20
    ld d, b

Jump_001_55b6:
jr_001_55b6:
    ld hl, $5b0f
    ld b, $00
    ld a, [$cc38]
    cp $ff
    jp z, Jump_001_4171

    add a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    call Call_000_16dd
    call Call_000_3ddb
    ld b, $09
    call Call_000_3e05
    call Call_001_5b9a
    call Call_001_589a
    call Call_001_5843
    xor a
    ld hl, $cc3d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$cc37], a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc34], a
    inc a
    ld [$cc42], a
    jp Jump_001_567e


Jump_001_55f9:
    xor a
    ld [$cc37], a
    inc a
    ld [$cc49], a
    ld a, $a1
    ld [$cc29], a
    ld a, [$d89b]
    ld [$cc28], a
    ld a, $09
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a

Jump_001_5616:
    ld hl, $fffa
    set 1, [hl]
    call Call_000_3aab
    ld hl, $fffa
    res 1, [hl]
    and a
    jp z, Jump_001_56fd

    bit 0, a
    jr z, jr_001_5652

    ld a, [$cc28]
    ld c, a
    ld a, [$cc26]
    cp c
    jr c, jr_001_563c

    ld a, [$cc28]
    dec a
    ld [$cc26], a

jr_001_563c:
    ld a, $01
    ld [$d11a], a
    ld hl, $5b54
    ld b, $0e
    call Call_000_3e84
    ld hl, $d8a3
    call Call_001_5876
    jp Jump_001_56fd


jr_001_5652:
    bit 5, a
    jr z, jr_001_5676

    xor a
    ld [$cc49], a
    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld a, [$cc27]
    ld [hl], a
    ld a, [$cc26]
    ld b, a
    ld a, [$d162]
    dec a
    cp b
    jr nc, jr_001_567e

    ld [$cc26], a
    jr jr_001_567e

jr_001_5676:
    bit 7, a
    jp z, Jump_001_56fd

    jp Jump_001_57d0


Jump_001_567e:
jr_001_567e:
    xor a
    ld [$cc49], a
    ld [$cc37], a
    ld a, $91
    ld [$cc29], a
    ld a, [$d162]
    ld [$cc28], a
    ld a, $01
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld hl, $c3b5
    ld bc, $0601
    call Call_000_1692

Jump_001_56a3:
    ld hl, $fffa
    set 1, [hl]
    call Call_000_3aab
    ld hl, $fffa
    res 1, [hl]
    and a
    jr nz, jr_001_56b6

    jp Jump_001_56fd


jr_001_56b6:
    bit 0, a
    jr z, jr_001_56d0

    jp Jump_001_5707


    ld a, $04
    ld [$d11a], a
    ld hl, $5b54
    ld b, $0e
    call Call_000_3e84
    call Call_001_5876
    jp Jump_001_56fd


jr_001_56d0:
    bit 4, a
    jr z, jr_001_56f6

    ld a, $01
    ld [$cc49], a
    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld a, [$cc27]
    ld [hl], a
    ld a, [$cc26]
    ld b, a
    ld a, [$d89b]
    dec a
    cp b
    jr nc, jr_001_56f3

    ld [$cc26], a

jr_001_56f3:
    jp Jump_001_55f9


jr_001_56f6:
    bit 7, a
    jr z, jr_001_56fd

    jp Jump_001_57d0


Jump_001_56fd:
jr_001_56fd:
    ld a, [$cc49]
    and a
    jp z, Jump_001_56a3

    jp Jump_001_5616


Jump_001_5707:
    call Call_000_370f
    call Call_000_3bd9
    ld a, [$cc28]
    ld c, a
    ld a, [$cc26]
    cp c
    jr c, jr_001_571b

    ld a, [$cc28]
    dec a

jr_001_571b:
    push af
    ld hl, $c4b8
    ld bc, $0212
    call Call_001_5b67
    ld hl, $c4e2
    ld de, $57c0
    call Call_000_1723
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc34], a
    ld [$cc28], a
    ld a, $10
    ld [$cc24], a

jr_001_5740:
    ld a, $7f
    ld [$c4eb], a
    ld a, $13
    ld [$cc29], a
    ld a, $01
    ld [$cc25], a
    call Call_000_3aab
    bit 4, a
    jr nz, jr_001_5764

    bit 1, a
    jr z, jr_001_5780

jr_001_575a:
    pop af
    ld [$cc26], a
    call Call_000_371b
    jp Jump_001_567e


jr_001_5764:
    ld a, $7f
    ld [$c4e1], a
    ld a, $23
    ld [$cc29], a
    ld a, $0b
    ld [$cc25], a
    call Call_000_3aab
    bit 5, a
    jr nz, jr_001_5740

    bit 1, a
    jr nz, jr_001_575a

    jr jr_001_579a

jr_001_5780:
    pop af
    ld [$cc26], a
    ld a, $04
    ld [$d11a], a
    ld hl, $5b54
    ld b, $0e
    call Call_000_3e84
    call Call_001_5876
    call Call_000_371b
    jp Jump_001_567e


jr_001_579a:
    call Call_000_3bd9
    pop af
    ld [$cc26], a
    ld [$cd3d], a
    ld [$cc42], a
    call Call_000_20ca
    ld a, [$cc3d]
    cp $0f
    jp z, Jump_001_55b6

    ld [$cd3e], a
    call Call_001_5867
    ld a, $01
    ld [$cc38], a
    jp Jump_001_55b6


    sub d
    sub e
    add b
    sub e
    sub d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub e
    sub c
    add b
    add e
    add h
    ld d, b

Jump_001_57d0:
    ld a, [$cc26]
    ld b, a
    ld a, [$cc28]
    cp b
    jp nz, Jump_001_56fd

    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld a, $7f
    ld [hl], a

jr_001_57e6:
    ld a, $ed
    ld [$c4e1], a

jr_001_57eb:
    call Call_000_381e
    ldh a, [$b5]
    and a
    jr z, jr_001_57eb

    bit 0, a
    jr nz, jr_001_580a

    bit 6, a
    jr z, jr_001_57eb

    ld a, $7f
    ld [$c4e1], a
    ld a, [$d162]
    dec a
    ld [$cc26], a
    jp Jump_001_567e


jr_001_580a:
    ld a, $ec
    ld [$c4e1], a
    ld a, $0f
    ld [$cc42], a
    call Call_000_20ca
    ld a, [$cc3d]
    cp $0f
    jr nz, jr_001_57e6

Jump_001_581e:
    call Call_000_3dd8
    ld hl, $cfc3
    ld a, [hl]
    push af
    push hl
    res 0, [hl]
    xor a
    ld [$d72c], a
    dec a
    ld [$d42e], a
    call Call_000_0ecb
    ld b, $03
    ld hl, $407c
    call Call_000_3e84
    pop hl
    pop af
    ld [hl], a
    call Call_000_1ebd
    ret


Call_001_5843:
Jump_001_5843:
    ld hl, $c4d7
    ld a, $7e
    ld bc, $0031
    call Call_000_166e
    ld hl, $c4cc
    ld bc, $0109
    call Call_001_5b67
    ld hl, $c4e2
    ld de, $5860
    jp Jump_000_1723


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_001_5867:
    ld a, [$cc3d]
    ld hl, $c455
    ld bc, $0014
    call Call_000_3a74
    ld [hl], $ec
    ret


Call_001_5876:
    ld a, [$cc26]
    ld [$cf91], a
    ld a, $36
    call Call_000_3eb4
    ld a, $37
    call Call_000_3eb4
    call Call_000_3ddb
    ld b, $09
    call Call_000_3e05
    call Call_000_3de0
    call Call_001_5b9a
    call Call_001_589a
    jp Jump_001_5843


Call_001_589a:
    ld hl, $c3a0
    ld bc, $0612
    call Call_001_5b67
    ld hl, $c440
    ld bc, $0612
    call Call_001_5b67
    ld hl, $c3a5
    ld de, $d157
    call Call_000_1723
    ld hl, $c445
    ld de, $d886
    call Call_000_1723
    ld hl, $c3b6
    ld de, $d163
    call Call_001_58cd
    ld hl, $c456
    ld de, $d89c

Call_001_58cd:
    ld c, $00

jr_001_58cf:
    ld a, [de]
    cp $ff
    ret z

    ld [$d11d], a
    push bc
    push hl
    push de
    push hl
    ld a, c
    ldh [$95], a
    call Call_000_2e93
    pop hl
    call Call_000_1723
    pop de
    inc de
    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    inc c
    jr jr_001_58cf

    ld c, $64
    call Call_000_372f
    xor a
    ld [$cc43], a
    ld [$cc3e], a
    ld [$cc37], a
    ld [$cc34], a
    ld hl, $c490
    ld bc, $0412
    call Call_001_5b67
    ld a, [$cd3d]
    ld hl, $d163
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $cd6d
    ld de, $cd3f
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cd3e]
    ld hl, $d89c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $5ad8
    ld bc, $c4b9
    call Call_000_1919
    call Call_000_370f
    ld hl, $c436
    ld bc, $080b
    ld a, $05
    ld [$d12b], a
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    call Call_000_371b
    ld a, [$cc26]
    and a
    jr z, jr_001_597d

    ld a, $01
    ld [$cc42], a
    ld hl, $c490
    ld bc, $0412
    call Call_001_5b67
    ld hl, $c4b9
    ld de, $5aee
    call Call_000_1723
    call Call_000_20ca
    jp Jump_001_5acc


jr_001_597d:
    ld a, $02
    ld [$cc42], a
    call Call_000_20ca
    ld a, [$cc3d]
    dec a
    jr nz, jr_001_59a0

    ld hl, $c490
    ld bc, $0412
    call Call_001_5b67
    ld hl, $c4b9
    ld de, $5aee
    call Call_000_1723
    jp Jump_001_5acc


jr_001_59a0:
    ld a, [$cd3d]
    ld hl, $d272
    call Call_000_3a6a
    ld de, $cd41
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d16a
    ld a, [$cd3d]
    ld bc, $002c
    call Call_000_3a74
    ld bc, $000c
    add hl, bc
    ld a, [hl+]
    ld [$cd4c], a
    ld a, [hl]
    ld [$cd4d], a
    ld a, [$cd3e]
    ld hl, $d9ab
    call Call_000_3a6a
    ld de, $cd4e
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d8a3
    ld a, [$cd3e]
    ld bc, $002c
    call Call_000_3a74
    ld bc, $000c
    add hl, bc
    ld a, [hl+]
    ld [$cd59], a
    ld a, [hl]
    ld [$cd5a], a
    ld a, [$cd3d]
    ld [$cf91], a
    ld hl, $d163
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$cd3d], a
    ld hl, $430a
    ld b, $3d
    ld d, $0b
    call Call_000_3e84
    xor a
    ld [$cf94], a
    call Call_000_3914
    ld a, [$cd3e]
    ld c, a
    ld [$cf91], a
    ld hl, $d89c
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$cf90], a
    ld hl, $d8a3
    ld a, c
    ld bc, $002c
    call Call_000_3a74
    ld de, $cf97
    ld bc, $002c
    call Call_000_00b1
    call Call_000_3a48
    ld a, [$d162]
    dec a
    ld [$cf91], a
    ld a, $01
    ld [$ccd4], a
    ld a, [$cd3e]
    ld hl, $d89c
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$cd3e], a
    ld a, $0a
    ld [$cfc6], a
    ld a, $02
    ld [$c0f0], a
    ld a, $e5
    ld [$c0ee], a
    call Call_000_2238
    ld c, $64
    call Call_000_372f
    call Call_000_16dd
    call Call_000_36c3
    xor a
    ld [$cc5b], a
    ldh a, [$aa]
    cp $01
    jr z, jr_001_5a86

    ld a, $38
    call Call_000_3eb4
    jr jr_001_5a8b

jr_001_5a86:
    ld a, $2f
    call Call_000_3eb4

jr_001_5a8b:
    ld hl, $6db8
    ld b, $0e
    call Call_000_3e84
    call Call_000_16dd
    call Call_001_5b9a
    call Call_000_20ca
    ld c, $28
    call Call_000_372f
    call Call_000_3ddb
    ld b, $09
    call Call_000_3e05
    ld hl, $c490
    ld bc, $0412
    call Call_001_5b67
    ld hl, $c4b9
    ld de, $5add
    call Call_000_1723
    ld a, $50
    call Call_000_3eb4
    ld c, $32
    call Call_000_372f
    xor a
    ld [$cc38], a
    jp Jump_001_53d2


Jump_001_5acc:
    ld c, $64
    call Call_000_372f
    xor a
    ld [$cc38], a
    jp Jump_001_55b6


    rla
    inc c
    ld c, d
    jr z, @+$52

    sub e
    or c
    and b
    and e
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    rst $20
    ld d, b
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld c, [hl]
    or [hl]
    and b
    or d
    ld a, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    and h
    and e
    rst $20
    ld d, b
    jp z, $ef55

    ld e, b
    ld a, [$d12a]
    cp $02
    jr z, jr_001_5b29

    cp $03
    jr z, jr_001_5b29

    cp $05
    ret nz

    ld a, $4d
    call Call_000_3eb4
    jp Jump_000_1d10


jr_001_5b29:
    call Call_001_53a5
    ld hl, $7670
    ld a, h
    ld [$d52e], a
    ld a, l
    ld [$d52d], a
    ld a, $1b
    ld [$d52a], a
    ld hl, $4b5e
    ld a, h
    ld [$d530], a
    ld a, l
    ld [$d52f], a
    xor a
    ld [$d886], a
    inc a
    ld [$d12a], a
    ldh [$b5], a
    ld a, $0a
    ld [$cfc6], a
    ld a, $02
    ld [$c0f0], a
    ld a, $ca
    ld [$c0ee], a
    jp Jump_000_2238


    ret


    call Call_000_3ed7

Call_001_5b67:
    push hl
    ld a, $78
    ld [hl+], a
    inc a
    call Call_001_5b94
    inc a
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de

jr_001_5b76:
    push hl
    ld a, $7b
    ld [hl+], a
    ld a, $7f
    call Call_001_5b94
    ld [hl], $77
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_001_5b76

    ld a, $7c
    ld [hl+], a
    ld a, $76
    call Call_001_5b94
    ld [hl], $7d
    ret


Call_001_5b94:
    ld d, c

jr_001_5b95:
    ld [hl+], a
    dec d
    jr nz, jr_001_5b95

    ret


Call_001_5b9a:
    ld de, $5c24
    ld hl, $9760
    ld bc, $3d09
    jp Jump_000_15fe


Jump_001_5ba6:
    call Call_001_5cb1
    xor a
    ld [$d089], a
    inc a
    ld [$d087], a
    call Call_001_5dfb
    jr nc, jr_001_5bbb

    ld a, $52
    call Call_000_3eb4

Jump_001_5bbb:
jr_001_5bbb:
    ld c, $14
    call Call_000_372f
    xor a
    ld [$d12a], a
    ld hl, $cc2b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d07b], a
    ld hl, $d72d
    res 6, [hl]
    call Call_000_16dd
    call Call_000_3e03
    call Call_000_36a3
    call Call_000_3683
    ld hl, $d72f
    set 6, [hl]
    ld a, [$d087]
    cp $01
    jr z, jr_001_5bff

    ld hl, $c3a0
    ld bc, $060d
    call Call_000_16f0
    ld hl, $c3ca
    ld de, $5d06
    call Call_000_1723
    jr jr_001_5c11

jr_001_5bff:
    ld hl, $c3a0
    ld bc, $040d
    call Call_000_16f0
    ld hl, $c3ca
    ld de, $5d0f
    call Call_000_1723

jr_001_5c11:
    ld hl, $d72f
    res 6, [hl]
    call Call_000_231c
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc34], a
    inc a
    ld [$cc25], a
    inc a
    ld [$cc24], a
    ld a, $0b
    ld [$cc29], a
    ld a, [$d087]
    ld [$cc28], a
    call Call_000_3aab
    bit 1, a
    jp nz, Jump_001_4171

    ld c, $14
    call Call_000_372f
    ld a, [$cc26]
    ld b, a
    ld a, [$d087]
    cp $02
    jp z, Jump_001_5c50

    inc b

Jump_001_5c50:
    ld a, b
    and a
    jr z, jr_001_5c64

    cp $01
    jp z, Jump_001_5cd2

    call Call_001_5df2
    ld a, $01
    ld [$d089], a
    jp Jump_001_5bbb


jr_001_5c64:
    call Call_001_5d1f
    ld hl, $d125
    set 5, [hl]

jr_001_5c6c:
    xor a
    ldh [$b3], a
    ldh [$b2], a
    ldh [$b4], a
    call Call_000_01b9
    ldh a, [$b4]
    bit 0, a
    jr nz, jr_001_5c83

    bit 1, a
    jp nz, Jump_001_5bbb

    jr jr_001_5c6c

jr_001_5c83:
    call Call_000_3dd8
    call Call_000_16dd
    ld a, $04
    ld [$d529], a
    ld c, $0a
    call Call_000_372f
    ld a, [$d5a1]
    and a
    jp z, Jump_001_5ce4

    ld a, [$d35d]
    cp $76
    jp nz, Jump_001_5ce4

    xor a
    ld [$d719], a
    ld hl, $d731
    set 2, [hl]
    call Call_001_6042
    jp Jump_001_5ce4


Call_001_5cb1:
    ld a, $01
    ld [$d357], a
    ld a, $03
    ld [$d354], a
    ld a, $40
    ld [$d497], a
    ret


Call_001_5cc1:
    ld a, $6d
    cp $80
    ret c

    ld hl, $5ccd
    call Call_000_3c36
    ret


    rla
    sub a
    ld b, a
    jr z, jr_001_5d22

Jump_001_5cd2:
    ld hl, $d731
    res 1, [hl]
    call Call_001_5e85
    ld a, $08
    ld [$d527], a
    ld c, $14
    call Call_000_372f

Jump_001_5ce4:
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    ld [$d72c], a
    ld hl, $d731
    set 0, [hl]
    call Call_000_279c
    ld c, $14
    call Call_000_372f
    call Call_001_5cc1
    ld a, [$cc47]
    and a
    ret nz

    jp Jump_000_01d7


    add d
    adc [hl]
    adc l
    sub e
    adc b
    adc l
    sub h
    add h
    ld c, [hl]
    adc l
    add h
    sub [hl]
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld c, [hl]
    adc [hl]
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b

Call_001_5d1f:
    xor a
    ldh [$ba], a

jr_001_5d22:
    ld hl, $c430
    ld bc, $080e
    call Call_000_16f0
    ld hl, $c459
    ld de, $5dd2
    call Call_000_1723
    ld hl, $c460
    ld de, $d157
    call Call_000_1723
    ld hl, $c48d
    call Call_001_5d97
    ld hl, $c4b4
    call Call_001_5daa
    ld hl, $c4d9
    call Call_001_5dbd
    ld a, $01
    ldh [$ba], a
    ld c, $1e
    jp Jump_000_372f


    xor a
    ldh [$ba], a
    ld hl, $c3a4
    ld bc, $080e
    call Call_000_16f0
    call Call_000_36a3
    call Call_000_231c
    ld hl, $c3cd
    ld de, $5dd2
    call Call_000_1723
    ld hl, $c3d4
    ld de, $d157
    call Call_000_1723
    ld hl, $c401
    call Call_001_5d97
    ld hl, $c428
    call Call_001_5daa
    ld hl, $c44d
    call Call_001_5dbd
    ld a, $01
    ldh [$ba], a
    ld c, $1e
    jp Jump_000_372f


Call_001_5d97:
    push hl
    ld hl, $d355
    ld b, $01
    call Call_000_2a81
    pop hl
    ld de, $d11d
    ld bc, $0102
    jp Jump_000_3c5b


Call_001_5daa:
    push hl
    ld hl, $d2f6
    ld b, $13
    call Call_000_2a81
    pop hl
    ld de, $d11d
    ld bc, $0103
    jp Jump_000_3c5b


Call_001_5dbd:
    ld de, $da40
    ld bc, $0103
    call Call_000_3c5b
    ld [hl], $6d
    inc hl
    ld de, $da42
    ld bc, $8102
    jp Jump_000_3c5b


    adc a
    adc e
    add b
    sbc b
    add h
    sub c
    ld c, [hl]
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, [hl]
    ld d, h
    add e
    add h
    sub a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld c, [hl]
    sub e
    adc b
    adc h
    add h
    ld d, b

Call_001_5df2:
    ld hl, $5c70
    ld b, $10
    call Call_000_3e84
    ret


Call_001_5dfb:
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [$6000], a
    ld [$4000], a
    ld b, $0b
    ld hl, $a598

jr_001_5e0d:
    ld a, [hl+]
    cp $50
    jr z, jr_001_5e1e

    dec b
    jr nz, jr_001_5e0d

    xor a
    ld [$0000], a
    ld [$6000], a
    and a
    ret


jr_001_5e1e:
    xor a
    ld [$0000], a
    ld [$6000], a
    scf
    ret


Call_001_5e27:
    ld a, [$d357]
    push af
    ld a, [$d354]
    push af
    ld a, [$d731]
    push af
    ld a, [$d497]
    push af
    ld hl, $d157
    ld bc, $0d8a
    xor a
    call Call_000_166e
    ld hl, $c100
    ld bc, $0200
    xor a
    call Call_000_166e
    xor a
    ld [$d494], a
    ld [$d495], a
    ld [$d496], a
    pop af
    ld [$d497], a
    pop af
    ld [$d731], a
    pop af
    ld [$d354], a
    pop af
    ld [$d357], a
    ld a, [$d089]
    and a
    call z, Call_001_5cb1
    ld hl, $43f9
    ld de, $d157
    ld bc, $000b
    call Call_000_00b1
    ld hl, $4400
    ld de, $d349
    ld bc, $000b
    call Call_000_00b1
    ret


Call_001_5e85:
    call Call_000_2233
    ld a, $02
    ld c, a
    ld a, $ef
    call Call_000_2211
    call Call_000_16dd
    call Call_000_36a3
    call Call_001_5e27
    ld a, $18
    call Call_000_3eb4
    ld hl, $d539
    ld a, $2c
    ld [$cf90], a
    ld a, $01
    ld [$cf95], a
    call Call_000_2acd
    ld a, [$d07b]
    ld [$d719], a
    call Call_001_6042
    xor a
    ldh [$d7], a
    ld a, [$d731]
    bit 1, a
    jp nz, Jump_001_5f2a

    ld de, $613a
    ld bc, $1300
    call Call_001_6010
    call Call_001_5fd7
    ld hl, $5fb9
    call Call_000_3c36
    call Call_000_1e96
    call Call_000_16dd
    ld a, $54
    ld [$d0b4], a
    ld [$cf90], a
    call Call_000_132f
    ld hl, $c3f6
    call Call_000_1144
    call Call_001_5ff1
    ld hl, $5fbe
    call Call_000_3c36
    call Call_000_1e96
    call Call_000_16dd
    ld de, $5a97
    ld bc, $0400
    call Call_001_6010
    call Call_001_5ff1
    ld hl, $5fc8
    call Call_000_3c36
    call Call_001_66db
    call Call_000_1e96
    call Call_000_16dd
    ld de, $6049
    ld bc, $1300
    call Call_001_6010
    call Call_001_5fd7
    ld hl, $5fcd
    call Call_000_3c36
    call Call_001_6722

Jump_001_5f2a:
    call Call_000_1e96
    call Call_000_16dd
    ld de, $5a97
    ld bc, $0400
    call Call_001_6010
    call Call_000_1ebd
    ld a, [$d72c]
    and a
    jr nz, jr_001_5f48

    ld hl, $5fd2
    call Call_000_3c36

jr_001_5f48:
    ldh a, [$b8]
    push af
    ld a, $9c
    call Call_000_2238
    pop af
    call Call_000_3e7e
    ld c, $04
    call Call_000_372f
    ld hl, $8000
    ld de, $4571
    ld b, $05
    ld c, $0c
    call Call_000_15fe
    ld de, $5b96
    ld bc, $0400
    call Call_001_6010
    ld c, $04
    call Call_000_372f
    ld de, $5bf0
    ld bc, $0400
    call Call_001_6010
    call Call_000_279c
    ldh a, [$b8]
    push af
    ld a, $02
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, $0a
    ld [$cfc6], a
    call Call_000_2233
    pop af
    call Call_000_3e7e
    ld c, $14
    call Call_000_372f
    ld hl, $c40a
    ld bc, $0707
    call Call_000_1692
    call Call_000_36a3
    ld a, $01
    ld [$cfca], a
    ld c, $32
    call Call_000_372f
    call Call_000_1e96
    call Call_000_16dd
    ret


    rla
    cp d
    ld b, a
    jr z, @+$52

    rla
    inc d
    ld c, b
    jr z, jr_001_5fd7

    rla
    ld c, b
    ld c, b
    jr z, @+$52

    rla
    xor [hl]
    ld c, b
    jr z, jr_001_601d

    rla
    ret


    ld c, b
    jr z, @+$52

    rla
    inc l
    ld c, c
    jr z, @+$52

Call_001_5fd7:
jr_001_5fd7:
    ld hl, $5feb
    ld b, $06

jr_001_5fdc:
    ld a, [hl+]
    ldh [rBGP], a
    call Call_000_3021
    ld c, $0a
    call Call_000_372f
    dec b
    jr nz, jr_001_5fdc

    ret


    ld d, h
    xor b
    db $fc
    ld hl, sp-$0c
    db $e4

Call_001_5ff1:
    ld a, $77
    ldh [rWX], a
    call Call_000_1e64
    ld a, $e4
    ldh [rBGP], a
    call Call_000_3021

jr_001_5fff:
    call Call_000_1e64
    ldh a, [rWX]
    sub $08
    cp $ff
    ret z

    ldh [rWX], a
    jr jr_001_5fff

    call Call_000_3ed7

Call_001_6010:
    push bc
    ld a, b
    call Call_000_36e3
    ld a, $00
    call Call_000_3e99
    ld hl, $a188

jr_001_601d:
    ld de, $a000
    ld bc, $0310
    call Call_000_00b1
    call Call_000_3ea9
    ld de, $9000
    call Call_000_14c7
    pop bc
    ld a, c
    and a
    ld hl, $c3c3
    jr nz, jr_001_603a

    ld hl, $c3f6

jr_001_603a:
    xor a
    ldh [$e1], a
    ld a, $01
    jp Jump_000_3eb4


Call_001_6042:
    call Call_001_6073
    ld a, $19
    call Call_000_3eb4
    ld hl, $d731
    bit 2, [hl]
    res 2, [hl]
    jr z, jr_001_6058

    ld a, [$d719]
    jr jr_001_6061

jr_001_6058:
    bit 1, [hl]
    jr z, jr_001_605f

    call Call_001_625c

jr_001_605f:
    ld a, $00

jr_001_6061:
    ld b, a
    ld a, [$d72c]
    and a
    jr nz, jr_001_6069

    ld a, b

jr_001_6069:
    ld hl, $d731
    bit 4, [hl]
    ret nz

    ld [$d364], a
    ret


Call_001_6073:
    ld a, [$d72c]
    cp $ef
    jr nz, jr_001_6088

    ld hl, $619c
    ldh a, [$aa]
    cp $02
    jr z, jr_001_60a8

    ld hl, $61a4
    jr jr_001_60a8

jr_001_6088:
    cp $f0
    jr nz, jr_001_609a

    ld hl, $61ac
    ldh a, [$aa]
    cp $02
    jr z, jr_001_60a8

    ld hl, $61b4
    jr jr_001_60a8

jr_001_609a:
    ld a, [$d731]
    bit 1, a
    jr nz, jr_001_60ba

    bit 2, a
    jr nz, jr_001_60ba

    ld hl, $6194

jr_001_60a8:
    ld de, $d35d
    ld c, $07

jr_001_60ad:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_60ad

    ld a, [hl+]
    ld [$d366], a
    xor a
    jr jr_001_6127

jr_001_60ba:
    ld a, [$d364]
    ld hl, $d731
    bit 4, [hl]
    jr nz, jr_001_60cf

    bit 6, [hl]
    res 6, [hl]
    jr z, jr_001_6102

    ld a, [$d718]
    jr jr_001_6105

jr_001_60cf:
    ld hl, $d72c
    res 4, [hl]
    ld a, [$d71c]
    ld b, a
    ld [$d35d], a
    ld a, [$d71d]
    ld c, a
    ld hl, $6133
    ld de, $0000
    ld a, $06
    ld [$d12e], a

jr_001_60ea:
    ld a, [hl+]
    cp b
    jr z, jr_001_60f1

    inc hl
    jr jr_001_60f5

jr_001_60f1:
    ld a, [hl+]
    cp c
    jr z, jr_001_60fc

jr_001_60f5:
    ld a, [$d12e]
    add e
    ld e, a
    jr jr_001_60ea

jr_001_60fc:
    ld hl, $614c
    add hl, de
    jr jr_001_6118

jr_001_6102:
    ld a, [$d719]

jr_001_6105:
    ld b, a
    ld [$d35d], a
    ld hl, $61bc

jr_001_610c:
    ld a, [hl+]
    inc hl
    cp b
    jr z, jr_001_6115

    inc hl
    inc hl
    jr jr_001_610c

jr_001_6115:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_001_6118:
    ld de, $d35e
    ld c, $06

jr_001_611d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_611d

    xor a
    ld [$d366], a

jr_001_6127:
    ld [$d4e1], a
    ld [$d4e2], a
    ld a, $ff
    ld [$d42e], a
    ret


    sbc a
    ld bc, $029f
    and b
    ld bc, $02a0
    and c
    ld bc, $02a1
    and d
    ld bc, $02a2
    jp nz, $a502

    ld bc, $02a5
    sub $03
    rst $38
    ld b, [hl]
    rst $00
    rlca
    ld [de], a
    ld bc, $4800
    rst $00
    rlca
    rla
    ld bc, $4601
    rst $00
    rlca
    inc de
    ld bc, $4801
    rst $00
    rlca
    ld d, $01
    nop
    ld b, [hl]
    rst $00
    rlca
    ld [de], a
    ld bc, $4600
    rst $00
    rlca
    inc de
    ld bc, $9301
    rst $00
    ld c, $04
    nop
    nop
    sub e
    rst $00
    ld c, $05
    nop
    ld bc, $c7b1
    db $10
    ld d, $00
    nop
    sbc c
    rst $00
    ld c, $10
    nop
    nop
    sbc c
    rst $00
    ld c, $10
    nop
    nop
    sbc d
    rst $00
    ld c, $12
    nop
    nop
    ld h, $12
    rst $00
    ld b, $03
    nop
    ld bc, $ef04
    dec bc
    rst $00
    inc b
    inc bc
    nop
    ld bc, $ef15
    dec c
    rst $00
    inc b
    ld b, $00
    nop
    dec d
    ldh a, [$0b]
    rst $00
    inc b
    inc bc
    nop
    ld bc, $f015
    dec c
    rst $00
    inc b
    ld b, $00
    nop
    dec d
    nop
    nop
    ldh a, [$61]
    ld bc, $f600
    ld h, c
    ld [bc], a
    nop
    db $fc
    ld h, c
    inc bc
    nop
    ld [bc], a
    ld h, d
    inc b
    nop
    ld [$0562], sp
    nop
    ld c, $62
    ld b, $00
    inc d
    ld h, d
    rlca
    nop
    ld a, [de]
    ld h, d
    ld [$2000], sp
    ld h, d
    add hl, bc
    nop
    ld h, $62
    ld a, [bc]
    nop
    inc l
    ld h, d
    rrca
    nop
    ld [hl-], a
    ld h, d
    dec d
    nop
    jr c, @+$64

    dec hl
    rst $00
    ld b, $05
    nop
    ld bc, $c860
    ld a, [de]
    rla
    nop
    ld bc, $c85b
    ld a, [de]
    dec c
    nop
    ld bc, $c7f6
    ld [de], a
    inc de
    nop
    ld bc, $c72a
    ld b, $03
    nop
    ld bc, $c73c
    inc b
    dec bc
    nop
    ld bc, $c7b7
    ld a, [bc]
    add hl, hl
    nop
    ld bc, $c878
    inc e
    inc de
    nop
    ld bc, $c75e
    inc c
    dec bc
    nop
    ld bc, $c72d
    ld b, $09
    nop
    ld bc, $c88d
    ld e, $09
    nop
    ld bc, $c7ba
    ld b, $0b
    nop
    ld bc, $c79e
    inc d
    dec bc
    nop
    ld bc, $5311
    ld h, d

jr_001_6241:
    ld a, [de]
    cp $ff
    ret z

    ld [$cf90], a
    inc de
    ld a, [de]
    ld [$d126], a
    inc de
    call Call_000_391c
    jr jr_001_6241

    add h
    ld d, b
    sub b
    ld d, b
    ld h, h
    rrca
    ld d, h
    dec b
    rst $38

Call_001_625c:
    ret


    call Call_000_370f
    call Call_000_3ed7
    push hl
    ld a, [$d056]
    dec a
    ld hl, $c3a0
    ld bc, $040b
    call z, Call_000_1692
    ld a, [$cf90]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $62c8
    call Call_000_3c36
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    pop hl
    ld a, [$cc26]
    and a
    jr nz, jr_001_62bd

    ld a, [$cfca]
    push af
    xor a
    ld [$cfca], a
    push hl
    ld a, $02
    ld [$d07c], a
    call Call_001_6307
    ld a, [$d056]
    and a
    jr nz, jr_001_62af

    call Call_000_3e1e

jr_001_62af:
    call Call_000_371b
    pop hl
    pop af
    ld [$cfca], a
    ld a, [$cf4a]
    cp $50
    ret nz

jr_001_62bd:
    ld d, h
    ld e, l
    ld hl, $cd6d
    ld bc, $000b
    jp Jump_000_00b1


    rla
    sbc d
    ld c, c
    jr z, @+$52

    ld hl, $cee9
    xor a
    ld [$cfca], a
    ld a, $02
    ld [$d07c], a
    call Call_001_6307
    call Call_000_3dd8
    call Call_000_3dc2
    call Call_000_1e6f
    ld a, [$cf4a]
    cp $50
    jr z, jr_001_6305

    ld hl, $d2b4
    ld bc, $000b
    ld a, [$cf91]
    call Call_000_3a74
    ld e, l
    ld d, h
    ld hl, $cee9
    ld bc, $000b
    call Call_000_00b1
    and a
    ret


jr_001_6305:
    scf
    ret


Call_001_6307:
    push hl
    ld hl, $d72f
    set 6, [hl]
    call Call_000_3dd8
    call Call_000_16dd
    call Call_000_231c
    ld b, $08
    call Call_000_3e05
    call Call_000_36c3
    call Call_001_64cb
    ld b, $1c
    ld hl, $57f9
    call Call_000_3e84
    ld hl, $c3f0
    ld bc, $0912
    call Call_000_16f0
    call Call_001_6676
    ld a, $03
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld [$cc2a], a
    ld [$cc26], a
    ld a, $ff
    ld [$cc29], a
    ld a, $07
    ld [$cc28], a
    ld a, $50
    ld [$cf4a], a
    xor a
    ld hl, $ceea
    ld [hl+], a
    ld [hl+], a
    ld [$d08a], a
    call $64ed
    call Call_000_3de0
    ld a, [$ceea]
    and a
    jr nz, jr_001_639d

    call Call_001_658c
    call Call_000_3b6d

jr_001_636f:
    ld a, [$cc26]
    push af
    ld b, $1c
    ld hl, $5784
    call Call_000_3e84
    pop af
    ld [$cc26], a
    call Call_000_381e
    ldh a, [$b3]
    and a
    jr z, jr_001_636f

    ld hl, $63ce

jr_001_638a:
    sla a
    jr c, jr_001_6394

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_001_638a

jr_001_6394:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de
    jp hl


jr_001_639d:
    pop de
    ld hl, $cf4a
    ld bc, $000b
    call Call_000_00b1
    call Call_000_3dd8
    call Call_000_16dd
    call Call_000_0082
    call Call_000_3e03
    call Call_000_3de0
    xor a
    ld [$d08a], a
    ld hl, $d72f
    res 6, [hl]
    ld a, [$d056]
    and a
    jp z, Jump_000_36a3

    ld hl, $6fe7
    ld b, $0f
    jp Jump_000_3e84


    ld l, h
    ld h, e
    xor [hl]
    ld h, h
    ld l, h
    ld h, e
    sbc h
    ld h, h
    ld l, h
    ld h, e
    adc b
    ld h, h
    ld l, h
    ld h, e
    ld [hl], d
    ld h, h
    ld h, e
    ld h, e
    db $fc
    ld h, e
    ld e, l
    ld h, e
    di
    ld h, e
    ld h, e
    ld h, e
    ld h, [hl]
    ld h, h
    ld h, e
    ld h, e
    ld [bc], a
    ld h, h

jr_001_63ee:
    pop de
    ld de, $635d
    push de
    ld a, [$ceeb]
    xor $01
    ld [$ceeb], a
    ret


jr_001_63fc:
    ld a, $01
    ld [$ceea], a
    ret


    ld a, [$cc26]
    cp $05
    jr nz, jr_001_6410

    ld a, [$cc25]
    cp $11
    jr z, jr_001_63fc

jr_001_6410:
    ld a, [$cc26]
    cp $06
    jr nz, jr_001_641e

    ld a, [$cc25]
    cp $01
    jr z, jr_001_63ee

jr_001_641e:
    ld hl, $cc30
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [hl]
    ld [$ceed], a
    call Call_001_6669
    ld a, [$ceed]
    cp $e5
    ld de, $6603
    jr z, jr_001_6453

    cp $e4
    ld de, $6654
    jr z, jr_001_6453

    ld a, [$d07c]
    cp $02
    jr nc, jr_001_644b

    ld a, [$cee9]
    cp $07
    jr jr_001_6450

jr_001_644b:
    ld a, [$cee9]
    cp $0a

jr_001_6450:
    jr c, jr_001_645a

    ret


jr_001_6453:
    push hl
    call Call_001_65ef
    pop hl
    ret nc

    dec hl

jr_001_645a:
    ld a, [$ceed]
    ld [hl+], a
    ld [hl], $50
    ld a, $90
    call Call_000_2238
    ret


    ld a, [$cee9]
    and a
    ret z

    call Call_001_6669
    dec hl
    ld [hl], $50
    ret


    ld a, [$cc26]
    cp $06
    ret z

    ld a, [$cc25]
    cp $11
    jp z, Jump_001_6484

    inc a
    inc a
    jr jr_001_64c5

Jump_001_6484:
    ld a, $01
    jr jr_001_64c5

    ld a, [$cc26]
    cp $06
    ret z

    ld a, [$cc25]
    dec a
    jp z, Jump_001_6498

    dec a
    jr jr_001_64c5

Jump_001_6498:
    ld a, $11
    jr jr_001_64c5

    ld a, [$cc26]
    dec a
    ld [$cc26], a
    and a
    ret nz

    ld a, $06
    ld [$cc26], a
    ld a, $01
    jr jr_001_64c5

    ld a, [$cc26]
    inc a
    ld [$cc26], a
    cp $07
    jr nz, jr_001_64c0

    ld a, $01
    ld [$cc26], a
    jr jr_001_64c5

jr_001_64c0:
    cp $06
    ret nz

    ld a, $01

jr_001_64c5:
    ld [$cc25], a
    jp Jump_000_3be6


Call_001_64cb:
    ld de, $64e5
    ld hl, $8f00
    ld c, $04

jr_001_64d3:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_64d3

    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_001_64d3

    ret


    ldh a, [$c0]
    ldh a, [$ce]
    db $fd
    dec c
    dec c
    ld c, $af
    ldh [$ba], a
    ld a, [$ceeb]
    and a
    ld de, $651c
    jr nz, jr_001_64fc

    ld de, $6554

jr_001_64fc:
    ld hl, $c406
    ld bc, $0509

jr_001_6502:
    push bc

jr_001_6503:
    ld a, [de]
    ld [hl+], a
    inc hl
    inc de
    dec c
    jr nz, jr_001_6503

    ld bc, $0016
    add hl, bc
    pop bc
    dec b
    jr nz, jr_001_6502

    call Call_000_1723
    ld a, $01
    ldh [$ba], a
    jp Jump_000_3ddb


    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    ld a, a
    pop af
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    pop hl
    ld [c], a
    db $e3
    and $e7
    rst $28
    push af
    di
    ld a, [c]
    db $f4
    ldh a, [$94]
    adc a
    adc a
    add h
    sub c
    ld a, a
    add d
    add b
    sub d
    add h
    ld d, b
    add b
    add c
    add d
    add e
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
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld a, a
    pop af
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    pop hl
    ld [c], a
    db $e3
    and $e7
    rst $28
    push af
    di
    ld a, [c]
    db $f4
    ldh a, [$ab]
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and d
    and b
    or d
    and h
    ld d, b

Call_001_658c:
    call Call_001_6669
    ld a, c
    ld [$cee9], a
    ld hl, $c3d2
    ld bc, $010a
    call Call_000_1692
    ld hl, $c3d2
    ld de, $cf4a
    call Call_000_1723
    ld hl, $c3e6
    ld a, [$d07c]
    cp $02
    jr nc, jr_001_65b3

    ld b, $07
    jr jr_001_65b5

jr_001_65b3:
    ld b, $0a

jr_001_65b5:
    ld a, $76

jr_001_65b7:
    ld [hl+], a
    dec b
    jr nz, jr_001_65b7

    ld a, [$d07c]
    cp $02
    ld a, [$cee9]

jr_001_65c3:
    jr nc, jr_001_65c9

    cp $07
    jr jr_001_65cb

jr_001_65c9:
    cp $0a

jr_001_65cb:
    jr nz, jr_001_65e5

    call Call_000_3be6
    ld a, $11
    ld [$cc25], a
    ld a, $05
    ld [$cc26], a
    ld a, [$d07c]
    cp $02
    ld a, $09
    jr nc, jr_001_65e5

    ld a, $06

jr_001_65e5:
    ld c, a
    ld b, $00
    ld hl, $c3e6
    add hl, bc
    ld [hl], $77
    ret


Call_001_65ef:
    push de
    call Call_001_6669
    dec hl
    ld a, [hl]
    pop hl
    ld de, $0002
    call Call_000_3da7
    ret nc

    inc hl
    ld a, [hl]
    ld [$ceed], a
    ret


    or [hl]
    ld h, $b7
    daa
    cp b
    jr z, jr_001_65c3

    add hl, hl
    cp d
    ld a, [hl+]
    cp e
    dec hl
    cp h
    inc l
    cp l
    dec l
    cp [hl]
    ld l, $bf
    cpl
    ret nz

    jr nc, @-$3d

    ld sp, $32c2
    jp $c433


    inc [hl]
    jp z, $cb3a

    dec sp
    call z, $cd3c
    dec a
    adc $3e
    add l
    dec b
    add [hl]
    ld b, $87
    rlca
    adc b
    ld [$0989], sp
    adc d
    ld a, [bc]
    adc e
    dec bc
    adc h
    inc c
    adc l
    dec c
    adc [hl]
    ld c, $8f
    rrca
    sub b
    db $10
    sub c
    ld de, $1292
    sub e
    inc de
    sbc c
    add hl, de
    sbc d
    ld a, [de]
    sbc e
    dec de
    call $9c3d
    inc e
    rst $38
    jp z, $cb44

    ld b, l
    call z, $cd46
    ld b, a
    adc $48
    sbc c
    ld b, b
    sbc d
    ld b, c
    sbc e
    ld b, d
    call $9c47
    ld b, e
    rst $38

Call_001_6669:
    ld hl, $cf4a
    ld c, $00

jr_001_666e:
    ld a, [hl]
    cp $50
    ret z

    inc hl
    inc c
    jr jr_001_666e

Call_001_6676:
    ld hl, $c3b4
    ld a, [$d07c]
    ld de, $66bd
    and a
    jr z, jr_001_66b2

    ld de, $66c3
    dec a
    jr z, jr_001_66b2

    ld a, [$cf90]
    ld [$cd5d], a
    push af
    ld b, $1c
    ld hl, $592f
    call Call_000_3e84
    pop af
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $c3b8
    call Call_000_1723
    ld hl, $0001
    add hl, bc
    ld [hl], $c9
    ld hl, $c3dd
    ld de, $66d1
    jr jr_001_66ba

jr_001_66b2:
    call Call_000_1723
    ld l, c
    ld h, b
    ld de, $66cb

jr_001_66ba:
    jp Jump_000_1723


    sbc b
    adc [hl]
    sub h
    sub c
    ld a, a
    ld d, b
    sub c
    adc b
    sub l
    add b
    adc e
    cp l
    ld a, a
    ld d, b
    adc l
    add b
    adc h
    add h
    and $50
    adc l
    adc b
    add d
    adc d
    adc l
    add b
    adc h
    add h
    and $50

Call_001_66db:
    call Call_001_6790
    ld de, $6827
    call Call_001_67ec
    ld a, [$cc26]
    and a
    jr z, jr_001_66f8

    ld hl, $6874
    call Call_001_6858
    ld de, $d157
    call Call_001_676a
    jr jr_001_6717

jr_001_66f8:
    ld hl, $d157
    xor a
    ld [$d07c], a
    call Call_001_6307
    ld a, [$cf4a]
    cp $50
    jr z, jr_001_66f8

    call Call_000_16dd
    call Call_000_3ddb
    ld de, $5a97
    ld b, $04
    call Call_001_6010

jr_001_6717:
    ld hl, $671d
    jp Jump_000_3c36


    rla
    call nz, $2849
    ld d, b

Call_001_6722:
    call Call_001_6790
    ld de, $6840
    call Call_001_67ec
    ld a, [$cc26]
    and a
    jr z, jr_001_673f

    ld hl, $688d
    call Call_001_6858
    ld de, $d349
    call Call_001_676a
    jr jr_001_675f

jr_001_673f:
    ld hl, $d349
    ld a, $01
    ld [$d07c], a
    call Call_001_6307
    ld a, [$cf4a]
    cp $50
    jr z, jr_001_673f

    call Call_000_16dd
    call Call_000_3ddb
    ld de, $6049
    ld b, $13
    call Call_001_6010

jr_001_675f:
    ld hl, $6765
    jp Jump_000_3c36


    rla
    rst $18
    ld c, c
    jr z, jr_001_67ba

Call_001_676a:
    push de
    ld hl, $c3a0
    ld bc, $0c0b
    call Call_000_1692
    ld c, $0a
    call Call_000_372f
    pop de
    ld hl, $cd6d
    ld bc, $000b
    call Call_000_00b1
    call Call_000_3ddb
    ld hl, $c3fc
    ld de, $067d
    ld a, $ff
    jr jr_001_6797

Call_001_6790:
    ld hl, $c3f5
    ld de, $067d
    xor a

jr_001_6797:
    push hl
    push de
    push bc
    ldh [$8d], a
    ld a, d
    ldh [$8b], a
    ld a, e
    ldh [$8c], a
    ld c, a
    ldh a, [$8d]
    and a
    jr nz, jr_001_67ab

    ld d, $00
    add hl, de

jr_001_67ab:
    ld d, h
    ld e, l

jr_001_67ad:
    xor a
    ldh [$ba], a
    ldh [$bb], a
    ldh a, [$8d]
    and a
    jr nz, jr_001_67bc

    ld a, [hl+]
    ld [hl-], a
    dec hl

jr_001_67ba:
    jr jr_001_67bf

jr_001_67bc:
    ld a, [hl-]
    ld [hl+], a
    inc hl

jr_001_67bf:
    dec c
    jr nz, jr_001_67ad

    ldh a, [$8d]
    and a
    jr z, jr_001_67ca

    dec hl
    xor a
    ld [hl], a

jr_001_67ca:
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    ldh a, [$8c]
    ld c, a
    ld h, d
    ld l, e
    ldh a, [$8d]
    and a
    jr nz, jr_001_67de

    inc hl
    jr jr_001_67df

jr_001_67de:
    dec hl

jr_001_67df:
    ld d, h
    ld e, l
    ldh a, [$8b]
    dec a
    ldh [$8b], a
    jr nz, jr_001_67ad

    pop bc
    pop de
    pop hl
    ret


Call_001_67ec:
    push de
    ld hl, $c3a0
    ld bc, $0a09
    call Call_000_16f0
    ld hl, $c3a3
    ld de, $6822
    call Call_000_1723
    pop de
    ld hl, $c3ca
    call Call_000_1723
    call Call_000_231c
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    inc a
    ld [$cc25], a
    ld [$cc29], a
    inc a
    ld [$cc24], a
    inc a
    ld [$cc28], a
    jp Jump_000_3aab


    adc l
    add b
    adc h
    add h
    ld d, b
    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld c, [hl]
    sbc b
    add h
    adc e
    adc e
    adc [hl]
    sub [hl]
    ld c, [hl]
    add b
    sub d
    add a
    ld c, [hl]
    adc c
    add b
    add d
    adc d
    ld d, b
    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld c, [hl]
    add c
    adc e
    sub h
    add h
    ld c, [hl]
    add [hl]
    add b
    sub c
    sbc b
    ld c, [hl]
    adc c
    adc [hl]
    add a
    adc l
    ld d, b

Call_001_6858:
    ld b, a
    ld c, $00

jr_001_685b:
    ld d, h
    ld e, l

jr_001_685d:
    ld a, [hl+]
    cp $50
    jr nz, jr_001_685d

    ld a, b
    cp c
    jr z, jr_001_6869

    inc c
    jr jr_001_685b

jr_001_6869:
    ld h, d
    ld l, e
    ld de, $cd6d
    ld bc, $0014
    jp Jump_000_00b1


    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld d, b
    sbc b
    add h
    adc e
    adc e
    adc [hl]
    sub [hl]
    ld d, b
    add b
    sub d
    add a
    ld d, b
    adc c
    add b
    add d
    adc d
    ld d, b
    adc l
    add h
    sub [hl]
    ld a, a
    adc l
    add b
    adc h
    add h
    ld d, b
    add c
    adc e
    sub h
    add h
    ld d, b
    add [hl]
    add b
    sub c
    sbc b
    ld d, b
    adc c
    adc [hl]
    add a
    adc l
    ld d, b
    ld d, b
    ld de, $d346
    ld hl, $ff9f
    ld c, $03
    call Call_000_3a7b
    ret c

    ld de, $d348
    ld hl, $ffa1
    ld c, $03
    ld a, $0c
    call Call_000_3eb4
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    and a
    ret


    ld a, [$cf93]
    cp $03
    jp nz, Jump_000_2b4d

    push hl
    ld hl, $cf8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [$cc26]
    ld b, a
    ld a, [$cc36]
    add b
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    inc a
    jp z, Jump_000_2b4d

    ld a, [$cc35]
    and a
    jr nz, jr_001_6906

    ld a, [$cc26]
    inc a
    ld b, a
    ld a, [$cc36]
    add b
    ld [$cc35], a
    ld c, $14
    call Call_000_372f
    jp Jump_000_2b4d


jr_001_6906:
    ld a, [$cc26]
    inc a
    ld b, a
    ld a, [$cc36]
    add b
    ld b, a
    ld a, [$cc35]
    cp b
    jp z, Jump_000_2b4d

    dec a
    ld [$cc35], a
    ld c, $14
    call Call_000_372f
    push hl
    push de
    ld hl, $cf8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld d, h
    ld e, l
    ld a, [$cc26]
    ld b, a
    ld a, [$cc36]
    add b
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cc35]
    add a
    add e
    ld e, a
    jr nc, jr_001_6941

    inc d

jr_001_6941:
    ld a, [de]
    ld b, a
    ld a, [hl+]
    cp b
    jr z, jr_001_6961

    ldh [$95], a
    ld a, [hl-]
    ldh [$96], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ldh a, [$96]
    ld [de], a
    dec de
    ldh a, [$95]
    ld [de], a
    xor a
    ld [$cc35], a
    pop de
    pop hl
    jp Jump_000_2b4d


jr_001_6961:
    inc de
    ld a, [hl]
    ld b, a
    ld a, [de]
    add b
    cp $64
    jr c, jr_001_6972

    sub $63
    ld [de], a
    ld a, $63
    ld [hl], a
    jr jr_001_699c

jr_001_6972:
    ld [hl], a
    ld hl, $cf8a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    dec [hl]
    ld a, [hl]
    ld [$d129], a
    cp $01
    jr nz, jr_001_6985

    ld [$cc28], a

jr_001_6985:
    dec de
    ld h, d
    ld l, e
    inc hl
    inc hl

jr_001_698a:
    ld a, [hl+]
    ld [de], a
    inc de
    inc a
    jr z, jr_001_6995

    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_001_698a

jr_001_6995:
    xor a
    ld [$cc36], a
    ld [$cc26], a

jr_001_699c:
    xor a
    ld [$cc35], a
    pop de
    pop hl
    jp Jump_000_2b4d


    ld a, [$cc36]
    ld [$d07d], a
    call Call_000_231c
    xor a
    ld [$cf0a], a

Jump_001_69b2:
    xor a
    ld [$cc36], a
    ld [$cc26], a
    ld [$cc2f], a
    inc a
    ld [$cf92], a
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld a, $15
    ld [$d124], a
    call Call_000_3010
    ld hl, $d127
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    ld a, [$d12d]
    cp $02
    jp z, Jump_001_6b7c

    ld a, [$d12c]
    and a
    jp z, Jump_001_6aa3

    dec a
    jp z, Jump_001_69ed

    dec a
    jp z, Jump_001_6b7c

Jump_001_69ed:
    xor a
    ld [$cf92], a
    ld a, $02
    ld [$d11a], a
    ld hl, $5b54
    ld b, $0e
    call Call_000_3e84
    ld a, [$d31c]
    and a
    jp z, Jump_001_6a97

    ld hl, $6baa
    call Call_000_3c36
    call Call_000_370f

Jump_001_6a0e:
jr_001_6a0e:
    call Call_000_371b
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld hl, $d31c
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    xor a
    ld [$cf92], a
    ld [$cc26], a
    ld a, $03
    ld [$cf93], a
    call Call_000_2ae0
    jp c, Jump_001_6b4d

    call Call_000_3001
    ld a, [$d123]
    and a
    jr nz, jr_001_6a8e

    ld a, [$cf90]
    call Call_000_2f35
    jr c, jr_001_6a8e

    ld a, $02
    ld [$cf93], a
    ldh [$8e], a
    call Call_000_2c51
    inc a
    jr z, jr_001_6a0e

    ld hl, $6baf
    ld bc, $0e01
    call Call_000_3c36
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$d12d]
    cp $02
    jr z, jr_001_6a0e

    ld a, [$d12c]
    dec a
    jr z, jr_001_6a0e

    ld a, [$cf0a]
    and a
    jr nz, jr_001_6a82

    inc a
    ld [$cf0a], a

jr_001_6a82:
    call Call_000_2aa0
    ld hl, $d31c
    call Call_000_2abd
    jp Jump_001_6a0e


jr_001_6a8e:
    ld hl, $6bb9
    call Call_000_3c36
    jp Jump_001_6b4d


Jump_001_6a97:
    ld hl, $6bb4
    call Call_000_3c36
    call Call_000_370f
    jp Jump_001_6b4d


Jump_001_6aa3:
    ld a, $01
    ld [$cf92], a
    ld a, $03
    ld [$d11a], a
    ld hl, $5b54
    ld b, $0e
    call Call_000_3e84
    ld hl, $6b91
    call Call_000_3c36
    call Call_000_370f

Jump_001_6abe:
jr_001_6abe:
    call Call_000_371b
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld hl, $cf7a
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    xor a
    ld [$cc26], a
    inc a
    ld [$cf92], a
    inc a
    ld [$cf93], a
    call Call_000_2ae0
    jr c, jr_001_6b4d

    ld a, $63
    ld [$cf96], a
    xor a
    ldh [$8e], a
    call Call_000_2c51
    inc a
    jr z, jr_001_6abe

    ld a, [$cf90]
    ld [$d11d], a
    call Call_000_2ec4
    call Call_000_3813
    ld hl, $6b96
    call Call_000_3c36
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$d12d]
    cp $02
    jp z, Jump_001_6abe

    ld a, [$d12c]
    dec a
    jr z, jr_001_6abe

    call Call_001_6b61
    jr c, jr_001_6b6c

    ld hl, $d31c
    call Call_000_2acd
    jr nc, jr_001_6b74

    call Call_000_2a98
    ld a, [$cf0a]
    and a
    jr nz, jr_001_6b3c

    ld a, $01
    ld [$cf0a], a

jr_001_6b3c:
    ld a, $b2
    call Call_000_3736
    call Call_000_373e
    ld hl, $6b9b
    call Call_000_3c36
    jp Jump_001_6abe


Jump_001_6b4d:
jr_001_6b4d:
    call Call_000_371b
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld hl, $6bc3
    call Call_000_3c36
    jp Jump_001_69b2


Call_001_6b61:
    ld de, $d346
    ld hl, $ff9f
    ld c, $03
    jp Jump_000_3a7b


jr_001_6b6c:
    ld hl, $6ba0
    call Call_000_3c36
    jr jr_001_6b4d

jr_001_6b74:
    ld hl, $6ba5
    call Call_000_3c36
    jr jr_001_6b4d

Jump_001_6b7c:
    ld hl, $6bbe
    call Call_000_3c36
    ld a, $01
    ld [$cfca], a
    call Call_000_231c
    ld a, [$d07d]
    ld [$cc36], a
    ret


    rla
    dec c
    ld [hl], l
    inc l
    ld d, b
    rla
    ld e, $75
    inc l
    ld d, b
    rla
    ld a, $75
    inc l
    ld d, b
    rla
    ld e, b
    ld [hl], l
    inc l
    ld d, b
    rla
    ld [hl], l
    ld [hl], l
    inc l
    ld d, b
    rla
    sub l
    ld [hl], l
    inc l
    ld d, b
    rla
    or e
    ld [hl], l
    inc l
    ld d, b
    rla
    call nc, $2c75
    ld d, b
    rla
    push af
    ld [hl], l
    inc l
    ld d, b
    rla
    ld [de], a
    db $76
    inc l
    ld d, b
    rla
    ld e, $76
    inc l
    ld d, b
    call Call_000_370f
    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    ld hl, $cd6d
    ld de, $d035
    ld bc, $000b
    call Call_000_00b1

Jump_001_6be0:
    ld hl, $d172
    ld bc, $002c
    ld a, [$cf91]
    call Call_000_3a74
    ld d, h
    ld e, l
    ld b, $04

jr_001_6bf0:
    ld a, [hl]
    and a
    jr z, jr_001_6c10

    inc hl
    dec b
    jr nz, jr_001_6bf0

    push de
    call Call_001_6c8c
    pop de
    jp c, Jump_001_6c5f

    push hl
    push de
    ld [$d11d], a
    call Call_000_2f4d
    ld hl, $6d4c
    call Call_000_3c36
    pop de
    pop hl

jr_001_6c10:
    ld a, [$d0df]
    ld [hl], a
    ld bc, $0015
    add hl, bc
    push hl
    push de
    dec a
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a74
    ld de, $cee9
    ld a, $0e
    call Call_000_009d
    ld a, [$ceee]
    pop de
    pop hl
    ld [hl], a
    ld a, [$d056]
    and a
    jp z, Jump_001_6c83

    ld a, [$cf91]
    ld b, a
    ld a, [$cc2f]
    cp b
    jp nz, Jump_001_6c83

    ld h, d
    ld l, e
    ld de, $d01b
    ld bc, $0004
    call Call_000_00b1
    ld bc, $0011
    add hl, bc
    ld de, $d02c
    ld bc, $0004
    call Call_000_00b1
    jp Jump_001_6c83


Jump_001_6c5f:
    ld hl, $6d3d
    call Call_000_3c36
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$cc26]
    and a
    jp nz, Jump_001_6be0

    ld hl, $6d42
    call Call_000_3c36
    ld b, $00
    ret


Jump_001_6c83:
    ld hl, $6d31
    call Call_000_3c36
    ld b, $01
    ret


Call_001_6c8c:
    push hl
    ld hl, $6d47
    call Call_000_3c36
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    pop hl
    ld a, [$cc26]
    rra
    ret c

    ld bc, $fffc
    add hl, bc
    push hl
    ld de, $d0db
    ld bc, $0004
    call Call_000_00b1
    ld hl, $5b06
    ld b, $0e
    call Call_000_3e84
    pop hl

jr_001_6cbe:
    push hl
    ld hl, $6d38
    call Call_000_3c36
    ld hl, $c430
    ld bc, $040e
    call Call_000_16f0
    ld hl, $c446
    ld de, $d0e0
    ldh a, [$fa]
    set 2, a
    ldh [$fa], a
    call Call_000_1723
    ldh a, [$fa]
    res 2, a
    ldh [$fa], a
    ld hl, $cc24
    ld a, $08
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, [$cd6c]
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld [hl], $00
    ld hl, $fffa
    set 1, [hl]
    call Call_000_3aab
    ld hl, $fffa
    res 1, [hl]
    push af
    call Call_000_371b
    pop af
    pop hl
    bit 1, a
    jr nz, jr_001_6d2f

    push hl
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    push af
    push bc
    call Call_000_2f3e
    pop bc
    pop de
    ld a, d
    jr c, jr_001_6d26

    pop hl
    add hl, bc
    and a
    ret


jr_001_6d26:
    ld hl, $6d92
    call Call_000_3c36
    pop hl
    jr jr_001_6cbe

jr_001_6d2f:
    scf
    ret


    rla
    ld b, b
    db $76
    inc l
    dec bc
    ld b, $50
    rla
    ld d, l
    db $76
    inc l
    ld d, b
    rla
    db $76
    db $76
    inc l
    ld d, b
    rla
    adc a
    db $76
    inc l
    ld d, b
    rla
    xor c
    db $76
    inc l
    ld d, b
    rla
    ld e, $77
    inc l
    ld a, [bc]
    ld [$c5f5], sp
    push de
    push hl
    ld a, $01
    ld [$c002], a
    call Call_000_1e64
    ld a, [$c0ef]
    push af
    ld a, $02
    ld [$c0ef], a
    ld [$c0f0], a
    call Call_000_373e
    ld a, $ae
    call Call_000_2238
    call Call_000_373e
    pop af
    ld [$c0ef], a
    ld [$c0f0], a
    xor a
    ld [$c002], a
    pop hl
    pop de
    pop bc
    pop af
    ld hl, $6d88
    ret


    rla
    inc l
    ld [hl], a
    inc l
    ld a, [bc]
    rla
    dec [hl]
    ld [hl], a
    inc l
    ld d, b
    rla
    ld d, d
    ld [hl], a
    inc l
    ld d, b
    ld a, [$d35d]
    cp $3a
    jr nz, jr_001_6daa

    call Call_000_154a
    jr z, jr_001_6daa

    ld hl, $6eeb
    call Call_000_3c36
    ret


jr_001_6daa:
    call Call_000_370f
    ld hl, $6ed0
    call Call_000_3c36
    ld hl, $d72d
    bit 2, [hl]
    set 1, [hl]
    set 2, [hl]
    jr nz, jr_001_6dc4

    ld hl, $6ed5
    call Call_000_3c36

jr_001_6dc4:
    call Call_000_360d
    call Call_000_231c
    ld a, [$cc26]
    and a
    jp nz, Jump_001_6e9d

    call Call_001_6ef0
    ld hl, $4db8
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_001_6df4

    call Call_000_154a
    jr nz, jr_001_6df4

    call Call_000_0b06
    call Call_000_3ddb
    call Call_000_231c
    ld hl, $5252
    ld b, $3f
    call Call_000_3e84

jr_001_6df4:
    ld hl, $6edb
    call Call_000_3c36
    ld c, $40
    call Call_000_372f
    call Call_000_154a
    jr nz, jr_001_6e12

    call Call_000_152d
    ld hl, $4db8
    ld b, $3f
    call Call_000_3e84
    call c, Call_001_6eaa

jr_001_6e12:
    ld bc, $0108
    call Call_001_6ebb
    ld c, $1e
    call Call_000_372f
    ld b, $1c
    ld hl, $448b
    call Call_000_3e84
    ld a, $07
    call Call_000_3eb4
    xor a
    ld [$cfc6], a
    ld a, [$c0f0]
    ld [$c0ef], a
    ld a, [$d35a]
    ld [$cfc9], a
    ld [$c0ee], a
    call Call_000_2238
    call Call_000_154a
    jr nz, jr_001_6e58

    ld hl, $4db8
    ld b, $3f
    call Call_000_3e84
    call c, Call_001_6eaa
    ld a, $05
    ld [$d430], a
    call Call_000_1525

jr_001_6e58:
    ld bc, $0100
    call Call_001_6ebb
    ld hl, $6ee0
    call Call_000_3c36
    ld hl, $4db8
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_001_6e74

    ld bc, $0f00
    call Call_001_6ebb

jr_001_6e74:
    call Call_000_0b06
    call Call_000_3ddb
    call Call_000_231c
    ld hl, $40d2
    ld b, $05
    call Call_000_3e84
    ld a, $01
    ldh [$8c], a
    ld a, $01
    ldh [$8d], a
    call Call_000_34a1
    ld c, $28
    call Call_000_372f
    call Call_000_231c
    call Call_000_3683
    jr jr_001_6ea0

Jump_001_6e9d:
    call Call_000_371b

jr_001_6ea0:
    ld hl, $6ee5
    call Call_000_3c36
    call Call_000_231c
    ret


Call_001_6eaa:
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_34a1
    ld c, $40
    call Call_000_372f
    ret


Call_001_6ebb:
    ld a, b
    ldh [$8c], a
    ld a, c
    ldh [$8d], a
    push bc
    call Call_000_3488
    pop bc
    ld a, b
    ldh [$8c], a
    ld a, c
    ldh [$8d], a
    call Call_000_34a1
    ret


    rla
    ld [hl], d
    ld [hl], a
    inc l
    ld d, b
    ld a, [bc]
    rla
    cp c
    ld [hl], a
    inc l
    ld d, b
    rla
    db $d3
    ld [hl], a
    inc l
    ld d, b
    rla
    db $ed
    ld [hl], a
    inc l
    ld d, b
    ld a, [bc]
    rla
    dec d
    ld a, b
    inc l
    ld d, b
    rla
    jr nc, @+$7a

    inc l
    ld d, b

Call_001_6ef0:
    push hl
    ld hl, $6f0a
    ld a, [$d35d]
    ld b, a

jr_001_6ef8:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_6f02

    cp b
    jr nz, jr_001_6ef8

    jr jr_001_6f08

jr_001_6f02:
    ld a, [$d364]
    ld [$d718], a

jr_001_6f08:
    pop hl
    ret


    rst $18
    ldh [$e1], a
    rst $38
    xor a
    ld [$cf93], a
    ld a, [$cf0c]
    bit 0, a
    jr nz, jr_001_6f3c

    ldh a, [$8c]
    and a
    jr nz, jr_001_6f33

    ld a, [$d74a]
    bit 5, a
    ld hl, $c3aa
    ld bc, $0e08
    jr nz, jr_001_6f39

    ld hl, $c3aa
    ld bc, $0c08
    jr jr_001_6f39

jr_001_6f33:
    ld hl, $c490
    ld bc, $0412

jr_001_6f39:
    call Call_000_16f0

jr_001_6f3c:
    ld hl, $cfc3
    set 0, [hl]
    ld hl, $cd60
    bit 4, [hl]
    res 4, [hl]
    jr nz, jr_001_6f4d

    call Call_000_231c

jr_001_6f4d:
    ld hl, $c119
    ld c, $0f
    ld de, $0010

jr_001_6f55:
    ld a, [hl]
    inc h
    ld [hl], a
    dec h
    add hl, de
    dec c
    jr nz, jr_001_6f55

    ld hl, $c102
    ld de, $0010
    ld c, e

jr_001_6f64:
    ld a, [hl]
    cp $ff
    jr z, jr_001_6f6c

    and $fc
    ld [hl], a

jr_001_6f6c:
    add hl, de
    dec c
    jr nz, jr_001_6f64

    ld b, $9c
    call Call_000_16a4
    xor a
    ldh [$b0], a
    call Call_000_3683
    ld a, $01
    ldh [$ba], a
    ret


    ld a, [$d74a]
    bit 5, a
    ld hl, $c3aa
    ld bc, $0e08
    jr nz, jr_001_6f93

    ld hl, $c3aa
    ld bc, $0c08

jr_001_6f93:
    call Call_000_16f0
    ld a, $cb
    ld [$cc29], a
    ld a, $02
    ld [$cc24], a
    ld a, $0b
    ld [$cc25], a
    ld a, [$cc2d]
    ld [$cc26], a
    ld [$cc2a], a
    xor a
    ld [$cc37], a
    ld hl, $d72f
    set 6, [hl]
    ld hl, $c3d4
    ld a, [$d74a]
    bit 5, a
    ld a, $06
    jr z, jr_001_6fcb

    ld de, $7002
    call Call_001_702b
    ld a, $07

jr_001_6fcb:
    ld [$cc28], a
    ld de, $700a
    call Call_001_702b
    ld de, $700f
    call Call_001_702b
    ld de, $d157
    call Call_001_702b
    ld a, [$d72d]
    bit 6, a
    ld de, $7014
    jr z, jr_001_6fed

    ld de, $7019

jr_001_6fed:
    call Call_001_702b
    ld de, $7024
    call Call_001_702b
    ld de, $701f
    call Call_000_1723
    ld hl, $d72f
    res 6, [hl]
    ret


    adc a
    adc [hl]
    adc d
    cp d
    add e
    add h
    sub a
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, b
    adc b
    sub e
    add h
    adc h
    ld d, b
    sub d
    add b
    sub l
    add h
    ld d, b
    sub c
    add h
    sub d
    add h
    sub e
    ld d, b
    add h
    sub a
    adc b
    sub e
    ld d, b
    adc [hl]
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b

Call_001_702b:
    push hl
    call Call_000_1723
    pop hl
    ld de, $0028
    add hl, de
    ret


    ld hl, $718d
    call Call_000_3c36
    call Call_000_154a
    jr nz, jr_001_7048

    ld a, [$d74a]
    bit 5, a
    jp nz, Jump_001_7056

jr_001_7048:
    ld c, $3c
    call Call_000_372f
    ld hl, $71a7
    call Call_000_3c36
    jp Jump_001_710d


Jump_001_7056:
    ld a, $01
    ld [$cc34], a
    ld a, $5a
    ld [$cc47], a

jr_001_7060:
    ldh a, [$aa]
    cp $02
    jr z, jr_001_708f

    cp $01
    jr z, jr_001_708f

    ld a, $ff
    ldh [$aa], a
    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ad], a
    ld a, $80
    ldh [rSC], a
    ld a, [$cc47]
    dec a
    ld [$cc47], a
    jr z, jr_001_70fc

    ld a, $01
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    call Call_000_1e64
    jr jr_001_7060

jr_001_708f:
    call Call_000_2149
    call Call_000_1e64
    call Call_000_2149
    ld c, $32
    call Call_000_372f
    ld hl, $7192
    call Call_000_3c36
    xor a
    ld [$cc34], a
    call Call_000_35ef
    ld a, $01
    ld [$cc34], a
    ld a, [$cc26]
    and a
    jr nz, jr_001_7104

    ld hl, $7b91
    ld b, $1c
    call Call_000_3e84
    call Call_000_373e
    ld a, $b6
    call Call_000_3736
    ld hl, $7197
    call Call_000_3c36
    ld hl, $cc47
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    ldh [$a9], a
    ld [$cc42], a
    call Call_000_20db
    ld hl, $cc47
    ld a, [hl+]
    inc a
    jr nz, jr_001_711d

    ld a, [hl]
    inc a
    jr nz, jr_001_711d

    ld b, $0a

jr_001_70e8:
    call Call_000_1e64
    call Call_000_2149
    dec b
    jr nz, jr_001_70e8

    call Call_001_71ac
    ld hl, $719d
    call Call_000_3c36
    jr jr_001_710d

jr_001_70fc:
    ld hl, $7188
    call Call_000_3c36
    jr jr_001_710d

jr_001_7104:
    call Call_001_71ac
    ld hl, $71a2
    call Call_000_3c36

Jump_001_710d:
jr_001_710d:
    xor a
    ld hl, $cc47
    ld [hl+], a
    ld [hl], a
    ld hl, $d72d
    res 6, [hl]
    xor a
    ld [$cc34], a
    ret


jr_001_711d:
    xor a
    ld [hl-], a
    ld [hl], a
    ld a, [$d357]
    push af
    ld hl, $580c
    ld b, $3d
    call Call_000_3e84
    pop af
    ld [$d357], a
    ret


    ld a, $ff
    ld [$cc3e], a

jr_001_7136:
    call Call_000_211f
    call Call_000_1e64
    push hl
    ld hl, $cc48
    dec [hl]
    jr nz, jr_001_714a

    dec hl
    dec [hl]
    jr nz, jr_001_714a

    pop hl
    jr jr_001_717f

jr_001_714a:
    pop hl
    ld a, [$cc3e]
    inc a
    jr z, jr_001_7136

    call Call_000_1e64
    ld a, $ff
    ld [$cc3e], a
    call Call_000_211f
    ld a, [$cc3e]
    inc a
    jr z, jr_001_7136

    ld b, $0a

jr_001_7164:
    call Call_000_1e64
    call Call_000_211f
    dec b
    jr nz, jr_001_7164

    ld b, $0a

jr_001_716f:
    call Call_000_1e64
    call Call_000_2149
    dec b
    jr nz, jr_001_716f

    ld a, [$cc3e]
    ld [$cc3d], a
    ret


jr_001_717f:
    ld a, $ff
    ld [$cc47], a
    ld [$cc48], a
    ret


    rla
    ld c, a
    ld a, b
    inc l
    ld d, b
    rla
    adc l
    ld a, b
    inc l
    ld d, b
    rla
    xor c
    ld a, b
    inc l
    ld d, b
    rla
    nop
    ld b, b
    dec l
    ld a, [bc]
    ld d, b
    rla
    rrca
    ld b, b
    dec l
    ld d, b
    rla
    ld l, e
    ld b, b
    dec l
    ld d, b
    rla
    ld a, a
    ld b, b
    dec l
    ld d, b

Call_001_71ac:
    call Call_000_3ddb
    ld a, $ff
    ldh [$aa], a
    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ad], a
    ld a, $80
    ldh [rSC], a
    ret


    ld a, [$d124]
    cp $14
    jp z, Jump_001_742d

    ld c, a
    ld hl, $725c
    ld de, $0003
    call Call_001_7221
    jr c, jr_001_71ea

    ld hl, $7266
    ld de, $0005
    call Call_001_7221
    jr c, jr_001_71f2

    ld hl, $7285
    ld de, $0009
    call Call_001_7221
    jr c, jr_001_71fc

    ret


jr_001_71ea:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $71e9
    push de
    jp hl


jr_001_71f2:
    call Call_001_722f
    call Call_001_724a
    call Call_000_16f0
    ret


jr_001_71fc:
    call Call_001_722f
    push hl
    call Call_001_724a
    call Call_000_16f0
    pop hl
    call Call_001_723c
    ld a, [$d72f]
    push af
    ld a, [$d72f]
    set 6, a
    ld [$d72f], a
    call Call_000_1723
    pop af
    ld [$d72f], a
    call Call_000_231c
    ret


Call_001_7221:
    dec de

jr_001_7222:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_722e

    cp c
    jr z, jr_001_722d

    add hl, de
    jr jr_001_7222

jr_001_722d:
    scf

jr_001_722e:
    ret


Call_001_722f:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    sub e
    dec a
    ld c, a
    ld a, [hl+]
    sub d
    dec a
    ld b, a
    ret


Call_001_723c:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    call Call_001_724a
    pop de
    ret


Call_001_724a:
    push bc
    ld hl, $c3a0
    ld bc, $0014

jr_001_7251:
    ld a, d
    and a
    jr z, jr_001_7259

    add hl, bc
    dec d
    jr jr_001_7251

jr_001_7259:
    pop bc
    add hl, de
    ret


    inc de
    adc a
    ld [hl], e
    dec d
    cp [hl]
    ld [hl], e
    inc b
    adc d
    ld [hl], l
    rst $38
    ld bc, $0c00
    inc de
    ld de, $0003
    nop
    inc de
    ld c, $07
    nop
    nop
    dec bc
    ld b, $0d
    inc b
    ld [bc], a
    inc de
    inc c
    db $10
    rlca
    nop
    inc de
    ld de, $0611
    inc b
    ld c, $0d
    rst $38
    dec b
    nop
    nop
    ld c, $11
    jr jr_001_72ff

    inc bc
    nop
    ld b, $0d
    ld a, [bc]
    inc de
    ld c, $f7
    ld [hl], d
    rrca
    dec bc
    ld [$0000], sp
    rlca
    dec b
    nop
    ld [hl], e
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld b, $05
    ld a, [bc]
    ld a, [bc]
    ld [hl], e
    ld [bc], a
    rlca
    dec bc
    ld [$130c], sp
    ld de, $732a
    ld a, [bc]
    ld c, $1b
    nop
    inc c
    inc de
    ld de, $733d
    ld [bc], a
    ld c, $0c
    dec bc
    dec bc
    inc de
    ld de, $735e
    dec c
    inc c
    ld c, $00
    nop
    ld a, [bc]
    ld b, $e8
    ld [hl], d
    ld [bc], a
    ld bc, $0b0f
    nop
    inc de
    ld [bc], a
    ld [de], a
    ld [hl], e
    dec c
    nop
    ld [de], a
    rlca
    ld b, $0b
    ld a, [bc]
    ld [hl], d
    ld [hl], e
    ld [$1a08], sp
    dec bc
    ld [$1113], sp
    db $76
    ld [hl], e
    inc c
    ld a, [bc]
    add c
    sub h
    sbc b
    ld c, [hl]
    sub d
    add h
    adc e
    adc e
    ld c, [hl]
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld d, b
    sub h
    sub d
    add h
    ld c, [hl]
    sub e
    adc [hl]
    sub d
    sub d

jr_001_72ff:
    ld d, b
    or a
    db $db
    cp b
    ld c, [hl]
    and b
    xor h
    adc l
    db $e3
    dec bc
    ld d, b
    jp z, $b2d4

    ld c, [hl]
    or l
    cp a
    or d
    ld d, b
    adc h
    adc [hl]
    adc l
    add h
    sbc b
    ld d, b
    db $d3
    pop bc
    db $d3
    ret


    ld d, b
    jp nz, $b732

    or [hl]
    rst $10
    ld c, [hl]
    cp e
    or d
    cp h
    ld [c], a
    or [hl]
    rst $10
    ld d, b
    add l
    adc b
    add [hl]
    add a
    sub e
    ld a, a
    pop hl
    ld [c], a
    ld c, [hl]
    adc b
    sub e
    add h
    adc h
    ld a, a
    ld a, a
    sub c
    sub h
    adc l
    ld d, b
    add c
    add b
    adc e
    adc e
    pop af
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add c
    add b
    adc b
    sub e
    ld c, [hl]
    sub e
    add a
    sub c
    adc [hl]
    sub [hl]
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    ld a, a
    sub c
    sub h
    adc l
    ld d, b
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld c, [hl]
    sub d
    sub e
    add b
    sub e
    sub d
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    add b
    xor h
    rst $20
    ld d, b
    ld [de], a
    db $e3
    adc a
    db $dd
    ret nc

    reti


    ld c, [hl]
    push bc
    or a
    ld a, [hl+]
    or h
    ld c, [hl]
    inc a
    sbc $46
    db $dd
    ret nc

    reti


    ld c, [hl]
    add [hl]
    xor l
    xor e
    adc l
    and [hl]
    ld d, b
    ld hl, $d72f
    set 6, [hl]
    ld a, $0f
    ld [$d124], a
    call Call_000_3010
    ld hl, $c3c1
    ld bc, $0106
    call Call_000_1692
    ld hl, $c3c0
    ld de, $d346
    ld c, $a3
    call Call_000_13ad
    ld hl, $d72f
    res 6, [hl]
    ret


    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh a, [$50]
    ld a, [$d72f]
    set 6, a
    ld [$d72f], a
    xor a
    ld [$d12c], a
    ld a, $0e
    ld [$d124], a
    call Call_000_3010
    ld a, $03
    ld [$cc29], a
    ld a, $02
    ld [$cc28], a
    ld a, $01
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld [$cc37], a
    ld a, [$d72f]
    res 6, a
    ld [$d72f], a
    call Call_000_3aab
    call Call_000_3bd9
    bit 0, a
    jr nz, jr_001_740d

    bit 1, a
    jr z, jr_001_740d

    ld a, $02
    ld [$d12d], a
    jr jr_001_7420

jr_001_740d:
    ld a, $01
    ld [$d12d], a
    ld a, [$cc26]
    ld [$d12c], a
    ld b, a
    ld a, [$cc28]
    cp b
    jr z, jr_001_7420

    ret


jr_001_7420:
    ld a, $02
    ld [$d12d], a
    ld a, [$cc26]
    ld [$d12c], a
    scf
    ret


Jump_001_742d:
    push hl
    ld a, [$d72f]
    set 6, a
    ld [$d72f], a
    xor a
    ld [$d12c], a
    ld [$d12d], a
    ld a, $03
    ld [$cc29], a
    ld a, $01
    ld [$cc28], a
    ld a, b
    ld [$cc24], a
    ld a, c
    ld [$cc25], a
    xor a
    ld [$cc2a], a
    ld [$cc37], a
    push hl
    ld hl, $d12b
    bit 7, [hl]
    res 7, [hl]
    jr z, jr_001_7461

    inc a

jr_001_7461:
    ld [$cc26], a
    pop hl
    push hl
    push hl
    call Call_001_74e7
    ld a, [$d12b]
    ld hl, $751a
    ld e, a
    ld d, $00
    ld a, $05

jr_001_7475:
    add hl, de
    dec a
    jr nz, jr_001_7475

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld e, l
    ld d, h
    pop hl
    push de
    ld a, [$d12b]
    cp $05
    jr nz, jr_001_748d

    call Call_001_5b67
    jr jr_001_7490

jr_001_748d:
    call Call_000_16f0

jr_001_7490:
    call Call_000_231c
    pop hl
    ld a, [hl+]
    and a
    ld bc, $0016
    jr z, jr_001_749e

    ld bc, $002a

jr_001_749e:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    pop hl
    add hl, bc
    call Call_000_1723
    xor a
    ld [$d12b], a
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3aab
    pop hl
    bit 1, a
    jr nz, jr_001_74d0

    ld a, [$cc26]
    ld [$d12c], a
    and a
    jr nz, jr_001_74d0

    ld a, $01
    ld [$d12d], a
    ld c, $0f
    call Call_000_372f
    call Call_001_74ff
    and a
    ret


jr_001_74d0:
    ld a, $01
    ld [$cc26], a
    ld [$d12c], a
    ld a, $02
    ld [$d12d], a
    ld c, $0f
    call Call_000_372f
    call Call_001_74ff
    scf
    ret


Call_001_74e7:
    ld de, $cee9
    ld bc, $0506

jr_001_74ed:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_001_74ed

    push bc
    ld bc, $000e
    add hl, bc
    pop bc
    ld c, $06
    dec b
    jr nz, jr_001_74ed

    ret


Call_001_74ff:
    ld de, $cee9
    ld bc, $0506

jr_001_7505:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_001_7505

    push bc
    ld bc, $000e
    add hl, bc
    pop bc
    ld c, $06
    dec b
    jr nz, jr_001_7505

    call Call_000_231c
    ret


    inc b
    inc bc
    nop
    ld c, c
    ld [hl], l
    ld b, $03
    nop
    ld d, b
    ld [hl], l
    ld b, $03
    nop
    ld e, e
    ld [hl], l
    ld b, $03
    nop
    ld c, c
    ld [hl], l
    ld b, $03
    nop
    ld h, [hl]
    ld [hl], l
    rlca
    inc bc
    nop
    ld [hl], c
    ld [hl], l
    rlca
    inc b
    ld bc, $757e
    inc b
    inc bc
    nop
    ld b, d
    ld [hl], l
    adc l
    adc [hl]
    ld c, [hl]
    sbc b
    add h
    sub d
    ld d, b
    sbc b
    add h
    sub d
    ld c, [hl]
    adc l
    adc [hl]
    ld d, b
    adc l
    adc [hl]
    sub c
    sub e
    add a
    ld c, [hl]
    sub [hl]
    add h
    sub d
    sub e
    ld d, b
    sub d
    adc [hl]
    sub h
    sub e
    add a
    ld c, [hl]
    add h
    add b
    sub d
    sub e
    ld d, b
    adc l
    adc [hl]
    sub c
    sub e
    add a
    ld c, [hl]
    add h
    add b
    sub d
    sub e
    ld d, b
    sub e
    sub c
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
    add a
    add h
    add b
    adc e
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    xor a
    ld hl, $cd3d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $0c
    call Call_001_767e
    ld a, [$cd41]
    and a
    jr nz, jr_001_75b7

    ld hl, $c487
    ld bc, $0507
    call Call_000_16f0
    call Call_000_231c
    ld a, $0c
    ldh [$fb], a
    ld hl, $c49d
    ld de, $766a
    jp Jump_000_1723


jr_001_75b7:
    push af
    ld hl, $c47c
    ld a, [$cd42]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld b, $05
    ld a, $12
    sub e
    ld c, a
    pop af
    ld de, $ffd8

jr_001_75cd:
    add hl, de
    inc b
    inc b
    dec a
    jr nz, jr_001_75cd

    ld de, $ffec
    add hl, de
    inc b
    call Call_000_16f0
    call Call_000_231c
    ld hl, $c490
    ld a, [$cd42]
    inc a
    ld e, a
    ld d, $00
    add hl, de
    ld de, $ffd8
    ld a, [$cd41]

jr_001_75ef:
    add hl, de
    dec a
    jr nz, jr_001_75ef

    xor a
    ld [$cd41], a
    ld de, $cd3d

jr_001_75fa:
    push hl
    ld hl, $7635
    ld a, [de]
    and a
    jr z, jr_001_761e

    inc de
    ld b, a

jr_001_7604:
    dec b
    jr z, jr_001_760e

jr_001_7607:
    ld a, [hl+]
    cp $50
    jr nz, jr_001_7607

    jr jr_001_7604

jr_001_760e:
    ld b, h
    ld c, l
    pop hl
    push de
    ld d, b
    ld e, c
    call Call_000_1723
    ld bc, $0028
    add hl, bc
    pop de
    jr jr_001_75fa

jr_001_761e:
    pop hl
    ld a, [$cd42]
    ldh [$fb], a
    ld hl, $c490
    ld a, [$cd42]
    inc a
    ld e, a
    ld d, $00
    add hl, de
    ld de, $766a
    jp Jump_000_1723


    add d
    sub h
    sub e
    ld d, b
    add l
    adc e
    sbc b
    ld d, b
    ld d, b
    sub d
    sub h
    sub c
    add l
    ld d, b
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    ld d, b
    add l
    adc e
    add b
    sub d
    add a
    ld d, b
    add e
    adc b
    add [hl]
    ld d, b
    sub e
    add h
    adc e
    add h
    adc a
    adc [hl]
    sub c
    sub e
    ld d, b
    sub d
    adc [hl]
    add l
    sub e
    add c
    adc [hl]
    adc b
    adc e
    add h
    add e
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub d
    ld c, [hl]
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_001_767e:
    ld a, [$cf91]
    ld hl, $d172
    ld bc, $002c
    call Call_000_3a74
    ld d, h
    ld e, l
    ld c, $05
    ld hl, $cd3d

jr_001_7691:
    push hl

jr_001_7692:
    dec c
    jr z, jr_001_76c9

    ld a, [de]
    and a
    jr z, jr_001_76c9

    ld b, a
    inc de
    ld hl, $76cb

jr_001_769e:
    ld a, [hl+]
    cp $ff
    jr z, jr_001_7692

    cp b
    jr z, jr_001_76aa

    inc hl
    inc hl
    jr jr_001_769e

jr_001_76aa:
    ld a, b
    ld [$cd43], a
    ld a, [hl+]
    ld b, [hl]
    pop hl
    ld [hl+], a
    ld a, [$cd41]
    inc a
    ld [$cd41], a
    ld a, [$cd42]
    cp b
    jr c, jr_001_76c3

    ld a, b
    ld [$cd42], a

jr_001_76c3:
    ld a, [$cd43]
    ld b, a
    jr jr_001_7691

jr_001_76c9:
    pop hl
    ret


    rrca
    ld bc, $130c
    ld [bc], a
    inc c
    or h
    inc bc
    inc c
    add hl, sp
    inc b
    inc c
    ld b, [hl]
    dec b
    ld a, [bc]
    sub h
    ld b, $0c
    ld e, e
    rlca
    inc c
    ld h, h
    ld [$870a], sp
    add hl, bc
    ld [$21ff], sp
    sub $d0
    ld a, [hl]
    srl a
    ld [hl+], a
    ld a, [hl]
    rr a
    ld [hl-], a
    or [hl]
    jr nz, jr_001_76f7

    inc hl
    inc [hl]

jr_001_76f7:
    ld hl, $d014
    ld de, $d022
    ldh a, [$f3]
    and a
    jp z, Jump_001_7709

    ld hl, $cfe5
    ld de, $cff3

Jump_001_7709:
    ld bc, $ceec
    ld a, [hl+]
    ld [bc], a
    ld a, [hl]
    dec bc
    ld [bc], a
    ld a, [de]
    dec bc
    ld [bc], a
    inc de
    ld a, [de]
    dec bc
    ld [bc], a
    ld a, [$d0d7]
    ld b, [hl]
    add b
    ld [hl-], a
    ld [$ceed], a
    ld a, [$d0d6]
    ld b, [hl]
    adc b
    ld [hl+], a
    ld [$ceee], a
    jr c, jr_001_7738

    ld a, [hl-]
    ld b, a
    ld a, [de]
    dec de
    sub b
    ld a, [hl+]
    ld b, a
    ld a, [de]
    inc de
    sbc b
    jr nc, jr_001_7744

jr_001_7738:
    ld a, [de]
    ld [hl-], a
    ld [$ceed], a
    dec de
    ld a, [de]
    ld [hl+], a
    ld [$ceee], a
    inc de

jr_001_7744:
    ldh a, [$f3]
    and a
    ld hl, $c45e
    ld a, $01
    jr z, jr_001_7752

    ld hl, $c3ca
    xor a

jr_001_7752:
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4
    ld a, $00
    call Call_000_3eb4
    ld a, $49
    call Call_000_3eb4
    ld hl, $4e08
    ld b, $0f
    call Call_000_3e84
    ld hl, $7784
    ldh a, [$f3]
    and a
    ld a, [$cfd2]
    jr z, jr_001_777a

    ld a, [$cfcc]

jr_001_777a:
    cp $08
    jr nz, jr_001_7781

    ld hl, $7789

jr_001_7781:
    jp Jump_000_3c36


    rla
    jp c, Jump_000_2a43

    ld d, b
    rla
    pop af
    ld b, e
    ld a, [hl+]
    ld d, b
    ld a, $04
    ld [$d0b5], a
    call Call_000_370f
    xor a
    ld [$cc2c], a
    ld [$ccd3], a
    ld a, [$cd60]
    bit 3, a
    jr nz, jr_001_77af

    ld a, $99
    call Call_000_2238
    ld hl, $79c9
    call Call_000_3c36

Jump_001_77af:
jr_001_77af:
    ld hl, $d72f
    set 6, [hl]
    ld a, [$ccd3]
    ld [$cc26], a
    ld hl, $cd60
    set 5, [hl]
    call Call_000_36f8
    ld hl, $c3a0
    ld bc, $080e
    call Call_000_16f0
    call Call_000_231c
    ld hl, $c3ca
    ld de, $799c
    call Call_000_1723
    ld hl, $cc24
    ld a, $02
    ld [hl+], a
    dec a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $03
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $cc36
    ld [hl+], a
    ld [hl], a
    ld [$cc2f], a
    ld hl, $79ce
    call Call_000_3c36
    call Call_000_3aab
    bit 1, a
    jp nz, Jump_001_7814

    call Call_000_3bd9
    ld a, [$cc26]
    ld [$ccd3], a
    and a
    jp z, Jump_001_78b9

    dec a
    jp z, Jump_001_783c

    dec a
    jp z, Jump_001_7936

Jump_001_7814:
    ld a, [$cd60]
    bit 3, a
    jr nz, jr_001_7823

    ld a, $9a
    call Call_000_2238
    call Call_000_373e

jr_001_7823:
    ld hl, $cd60
    res 5, [hl]
    call Call_000_36f8
    xor a
    ld [$cc36], a
    ld [$cc2c], a
    ld hl, $d72f
    res 6, [hl]
    xor a
    ld [$cc3c], a
    ret


Jump_001_783c:
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld a, [$d31c]
    and a
    jr nz, jr_001_7852

    ld hl, $79e2
    call Call_000_3c36
    jp Jump_001_77af


Jump_001_7852:
jr_001_7852:
    ld hl, $79d3
    call Call_000_3c36
    ld hl, $d31c
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    xor a
    ld [$cf92], a
    ld a, $03
    ld [$cf93], a
    call Call_000_2ae0
    jp c, Jump_001_77af

    call Call_000_3001
    ld a, $01
    ld [$cf95], a
    ld a, [$d123]
    and a
    jr nz, jr_001_788e

    ld hl, $79d8
    call Call_000_3c36
    call Call_000_2c51
    cp $ff
    jp z, Jump_001_7852

jr_001_788e:
    ld hl, $d539
    call Call_000_2acd
    jr c, jr_001_789f

    ld hl, $79e7
    call Call_000_3c36
    jp Jump_001_7852


jr_001_789f:
    ld hl, $d31c
    call Call_000_2abd
    call Call_000_373e
    ld a, $ab
    call Call_000_2238
    call Call_000_373e
    ld hl, $79dd
    call Call_000_3c36
    jp Jump_001_7852


Jump_001_78b9:
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld a, [$d539]
    and a
    jr nz, jr_001_78cf

    ld hl, $79fb
    call Call_000_3c36
    jp Jump_001_77af


Jump_001_78cf:
jr_001_78cf:
    ld hl, $79ec
    call Call_000_3c36
    ld hl, $d539
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    xor a
    ld [$cf92], a
    ld a, $03
    ld [$cf93], a
    call Call_000_2ae0
    jp c, Jump_001_77af

    call Call_000_3001
    ld a, $01
    ld [$cf95], a
    ld a, [$d123]
    and a
    jr nz, jr_001_790b

    ld hl, $79f1
    call Call_000_3c36
    call Call_000_2c51
    cp $ff
    jp z, Jump_001_78cf

jr_001_790b:
    ld hl, $d31c
    call Call_000_2acd
    jr c, jr_001_791c

    ld hl, $7a00
    call Call_000_3c36
    jp Jump_001_78cf


jr_001_791c:
    ld hl, $d539
    call Call_000_2abd
    call Call_000_373e
    ld a, $ab
    call Call_000_2238
    call Call_000_373e
    ld hl, $79f6
    call Call_000_3c36
    jp Jump_001_78cf


Jump_001_7936:
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld a, [$d539]
    and a
    jr nz, jr_001_794c

    ld hl, $79fb
    call Call_000_3c36
    jp Jump_001_77af


Jump_001_794c:
jr_001_794c:
    ld hl, $7a05
    call Call_000_3c36
    ld hl, $d539
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    xor a
    ld [$cf92], a
    ld a, $03
    ld [$cf93], a
    push hl
    call Call_000_2ae0
    pop hl
    jp c, Jump_001_77af

    push hl
    call Call_000_3001
    pop hl
    ld a, $01
    ld [$cf95], a
    ld a, [$d123]
    and a
    jr nz, jr_001_7996

    ld a, [$cf90]
    call Call_000_2f35
    jr c, jr_001_7996

    push hl
    ld hl, $7a0a
    call Call_000_3c36
    call Call_000_2c51
    pop hl
    cp $ff
    jp z, Jump_001_794c

jr_001_7996:
    call Call_000_2fec
    jp Jump_001_794c


    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld c, [hl]
    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld c, [hl]
    sub e
    adc [hl]
    sub d
    sub d
    ld a, a
    adc b
    sub e
    add h
    adc h
    ld c, [hl]
    adc e
    adc [hl]
    add [hl]
    ld a, a
    adc [hl]
    add l
    add l
    ld d, b
    rla
    rla
    ld b, e
    jr z, jr_001_7a1e

    rla
    inc l
    ld b, e
    jr z, @+$52

    rla
    ld b, l
    ld b, e
    jr z, jr_001_7a28

    rla
    ld h, e
    ld b, e
    jr z, @+$52

    rla
    ld l, [hl]
    ld b, e
    jr z, @+$52

    rla
    add [hl]
    ld b, e
    jr z, jr_001_7a37

    rla
    and h
    ld b, e
    jr z, jr_001_7a3c

    rla
    jp nz, Jump_000_2843

    ld d, b
    rla
    pop hl
    ld b, e
    jr z, @+$52

    rla
    db $ec
    ld b, e
    jr z, @+$52

    rla
    db $fd
    ld b, e
    jr z, @+$52

    rla
    rla
    ld b, h
    jr z, @+$52

    rla
    scf
    ld b, h
    jr z, jr_001_7a5a

    rla
    ld d, a
    ld b, h
    jr z, jr_001_7a5f

    ld hl, $d162
    ld a, [$cf94]
    and a
    jr z, jr_001_7a1b

    ld hl, $da7f

jr_001_7a1b:
    ld a, [hl]
    dec a
    ld [hl+], a

jr_001_7a1e:
    ld a, [$cf91]
    ld c, a
    ld b, $00
    add hl, bc
    ld e, l
    ld d, h
    inc de

jr_001_7a28:
    ld a, [de]
    inc de
    ld [hl+], a
    inc a
    jr nz, jr_001_7a28

    ld hl, $d272
    ld d, $05
    ld a, [$cf94]
    and a

jr_001_7a37:
    jr z, jr_001_7a3e

    ld hl, $dd29

jr_001_7a3c:
    ld d, $13

jr_001_7a3e:
    ld a, [$cf91]
    call Call_000_3a6a
    ld a, [$cf91]
    cp d
    jr nz, jr_001_7a4d

    ld [hl], $ff
    ret


jr_001_7a4d:
    ld d, h
    ld e, l
    ld bc, $000b
    add hl, bc
    ld bc, $d2b4
    ld a, [$cf94]
    and a

jr_001_7a5a:
    jr z, jr_001_7a5f

    ld bc, $de05

jr_001_7a5f:
    call Call_000_3908
    ld hl, $d16a
    ld bc, $002c
    ld a, [$cf94]
    and a
    jr z, jr_001_7a74

    ld hl, $da95
    ld bc, $0021

jr_001_7a74:
    ld a, [$cf91]
    call Call_000_3a74
    ld d, h
    ld e, l
    ld a, [$cf94]
    and a
    jr z, jr_001_7a8b

    ld bc, $0021
    add hl, bc
    ld bc, $dd29
    jr jr_001_7a92

jr_001_7a8b:
    ld bc, $002c
    add hl, bc
    ld bc, $d272

jr_001_7a92:
    call Call_000_3908
    ld hl, $d2b4
    ld a, [$cf94]
    and a
    jr z, jr_001_7aa1

    ld hl, $de05

jr_001_7aa1:
    ld bc, $000b
    ld a, [$cf91]
    call Call_000_3a74
    ld d, h
    ld e, l
    ld bc, $000b
    add hl, bc
    ld bc, $d2f6
    ld a, [$cf94]
    and a
    jr z, jr_001_7abc

    ld bc, $dee1

jr_001_7abc:
    jp Jump_000_3908


    ld hl, $d72f
    set 6, [hl]
    ld a, $3d
    call Call_000_3eb4
    ld hl, $d72f
    res 6, [hl]
    call Call_000_2f66
    ld c, $0a
    call Call_000_372f
    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $01
    ld hl, $d309
    ld a, $10
    call Call_000_3eb4
    ld a, $01
    ld [$cc3c], a
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
