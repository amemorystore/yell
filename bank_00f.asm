;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    jr jr_00f_401b

    inc e
    ld l, $2f
    ld sp, $3938
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld c, a
    ld d, d
    ld d, h
    ld d, l
    rst $38
    jr z, jr_00f_403c

    rst $38
    ld bc, $0b0a
    inc c
    dec c
    ld c, $0f

jr_00f_401b:
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    ld a, [de]
    jr nz, @+$34

    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rst $38
    inc bc
    rlca
    ld [$1d10], sp
    ld e, $2c
    jr nc, @+$4f

    ld d, c
    rst $38
    inc bc

jr_00f_403c:
    rlca
    ld [$1110], sp
    dec e
    ld e, $27
    jr z, @+$2b

    dec hl
    inc l
    dec l
    jr nc, @+$1d

    ld a, [hl+]
    rst $38
    call Call_00f_6e18
    ld a, $01
    ld [$d124], a
    call Call_000_3010
    ld hl, $c405
    ld bc, $0307
    call Call_000_1692
    call Call_000_0061
    call Call_000_3683
    call Call_00f_6fe4
    ld hl, $9800
    ld bc, $0400

jr_00f_406f:
    ld a, $7f
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_00f_406f

    ld hl, $c3a0
    ld de, $9800
    ld b, $12

jr_00f_407f:
    ld c, $14

jr_00f_4081:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_00f_4081

    ld a, $0c
    add e
    ld e, a
    jr nc, jr_00f_408e

    inc d

jr_00f_408e:
    dec b
    jr nz, jr_00f_407f

    call Call_000_007b
    ld a, $90
    ldh [$b0], a
    ldh [rWY], a
    xor a
    ldh [$d7], a
    ldh [$af], a
    dec a
    ld [$cfca], a
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    ld b, $70
    ld c, $90
    ld a, c
    ldh [$ae], a
    call Call_000_1e64
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061

jr_00f_40c4:
    ld h, b
    ld l, $40
    call Call_00f_4119
    inc b
    inc b
    ld h, $00
    ld l, $60
    call Call_00f_4119
    call Call_00f_4108
    ld a, c
    ldh [$ae], a
    dec c
    dec c
    jr nz, jr_00f_40c4

    ld a, $01
    ldh [$ba], a
    ld a, $31
    ldh [$e1], a
    ld hl, $c405
    ld a, $01
    call Call_000_3eb4
    xor a
    ldh [$b0], a
    ldh [rWY], a
    inc a
    ldh [$ba], a
    call Call_000_3ddb
    ld b, $01
    call Call_000_3e05
    call Call_000_008d
    ld hl, $4000
    ld b, $3d
    jp Jump_000_3e84


Call_00f_4108:
    push bc
    ld hl, $c301
    ld c, $15
    ld de, $0004

jr_00f_4111:
    dec [hl]
    dec [hl]
    add hl, de
    dec c
    jr nz, jr_00f_4111

    pop bc
    ret


Call_00f_4119:
jr_00f_4119:
    ldh a, [rLY]
    cp l
    jr nz, jr_00f_4119

    ld a, h
    ldh [rSCX], a

jr_00f_4121:
    ldh a, [rLY]
    cp h
    jr z, jr_00f_4121

    ret


    xor a
    ld [$d057], a
    ld [$ccf5], a
    ld [$cd6a], a
    inc a
    ld [$d11c], a
    ld hl, $d8a4
    ld bc, $002b
    ld d, $03

jr_00f_413d:
    inc d
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_4145

    add hl, bc
    jr jr_00f_413d

jr_00f_4145:
    ld a, d
    ld [$cc3e], a
    ld a, [$d056]
    dec a
    call nz, Call_00f_498f
    ld c, $28
    call Call_000_372f
    call Call_000_370f

jr_00f_4158:
    ld a, [$d059]
    cp $03
    jp z, Jump_00f_416d

    cp $04
    jp z, Jump_00f_416d

    call Call_00f_4ae8
    ld a, d
    and a
    jp z, Jump_00f_489c

Jump_00f_416d:
    call Call_000_371b
    ld a, [$d059]
    and a
    jp z, Jump_00f_41c3

jr_00f_4177:
    call Call_00f_4f78
    ret c

    ld a, [$cd6a]
    and a
    jr z, jr_00f_4177

    ld a, [$da46]
    and a
    jr nz, jr_00f_4190

    call Call_000_371b
    ld hl, $41be
    jp Jump_000_3c36


jr_00f_4190:
    ld hl, $4111
    ld b, $01
    call Call_000_3e84
    ld a, [$cffa]
    add a
    ld b, a
    jp c, Jump_00f_4218

    ld a, [$cce9]
    and a
    jr z, jr_00f_41aa

    srl b
    srl b

jr_00f_41aa:
    ld a, [$cce8]
    and a
    jr z, jr_00f_41b6

    sla b
    jr nc, jr_00f_41b6

    ld b, $ff

jr_00f_41b6:
    call Call_000_3e6d
    cp b
    jr nc, jr_00f_4158

    jr jr_00f_4218

    rla
    ld de, $2775
    ld d, b

Jump_00f_41c3:
    xor a
    ld [$cf91], a

jr_00f_41c7:
    call Call_00f_4afc
    jr nz, jr_00f_41d2

    ld hl, $cf91
    inc [hl]
    jr jr_00f_41c7

jr_00f_41d2:
    ld a, [$cf91]
    ld [$cc2f], a
    inc a
    ld hl, $d162
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$cf90], a
    ld [$cfd8], a
    call Call_000_371b
    ld hl, $c405
    ld a, $09
    call Call_00f_4944
    call Call_000_370f
    ld a, [$cf91]
    ld c, a
    ld b, $01
    push bc
    ld hl, $d057
    ld a, $10
    call Call_000_3eb4
    ld hl, $ccf5
    pop bc
    ld a, $10
    call Call_000_3eb4
    call Call_00f_4c10
    call Call_000_371b
    call Call_00f_4cfb
    jr jr_00f_4249

Jump_00f_4218:
jr_00f_4218:
    call Call_000_371b
    ld a, [$d12a]
    cp $04
    ld hl, $423f
    jr nz, jr_00f_422c

    xor a
    ld [$cf0b], a
    ld hl, $4244

jr_00f_422c:
    call Call_000_3c36
    ld a, $97
    call Call_000_3736
    xor a
    ldh [$f3], a
    ld hl, $5353
    ld b, $1e
    jp Jump_000_3e84


    rla
    ld a, $75
    daa
    ld d, b
    rla
    ld c, a
    ld [hl], l
    daa
    ld d, b

Jump_00f_4249:
jr_00f_4249:
    call Call_00f_4e08
    ld hl, $d014
    ld a, [hl+]
    or [hl]
    jp z, Jump_00f_471d

    ld hl, $cfe5
    ld a, [hl+]
    or [hl]
    jp z, Jump_00f_453b

    call Call_000_370f
    xor a
    ld [$d11c], a
    ld a, [$d062]
    and $60
    jr nz, jr_00f_42bc

    ld hl, $d066
    res 3, [hl]
    ld hl, $d061
    res 3, [hl]
    ld a, [hl]
    and $12
    jr nz, jr_00f_42bc

    call Call_00f_4f78
    ret c

    ld a, [$d077]
    and a
    ret nz

    ld a, [$d017]
    and $27
    jr nz, jr_00f_42bc

    ld a, [$d061]
    and $21
    jr nz, jr_00f_42bc

    ld a, [$d066]
    bit 5, a
    jr z, jr_00f_429e

    ld a, $ff
    ld [$ccdc], a
    jr jr_00f_42bc

jr_00f_429e:
    ld a, [$cd6a]
    and a
    jr nz, jr_00f_42bc

    ld [$ccdb], a
    inc a
    ld [$d07b], a
    xor a
    ld [$cc35], a
    call Call_00f_5320
    push af
    call Call_000_371b
    call Call_00f_4e1f
    pop af
    jr nz, jr_00f_4249

jr_00f_42bc:
    call Call_00f_56d6
    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_42fb

    ld a, [$cc3e]
    cp $0f
    jp z, Jump_00f_4218

    cp $0e
    jr z, jr_00f_42fb

    cp $0d
    jr z, jr_00f_42fb

    sub $04
    jr c, jr_00f_42fb

    ld a, [$d061]
    bit 5, a
    jr z, jr_00f_42f3

    ld a, [$cc2e]
    ld hl, $d01b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $76
    jr nz, jr_00f_42f3

    ld [$ccdc], a

jr_00f_42f3:
    ld hl, $67e1
    ld b, $0e
    call Call_000_3e84

jr_00f_42fb:
    ld a, [$ccdc]
    cp $62
    jr nz, jr_00f_430c

    ld a, [$ccdd]
    cp $62
    jr z, jr_00f_432a

    jp Jump_00f_4393


jr_00f_430c:
    ld a, [$ccdd]
    cp $62
    jr z, jr_00f_4353

    ld a, [$ccdc]
    cp $44
    jr nz, jr_00f_4323

    ld a, [$ccdd]
    cp $44
    jr z, jr_00f_432a

    jr jr_00f_4353

jr_00f_4323:
    ld a, [$ccdd]
    cp $44
    jr z, jr_00f_4393

jr_00f_432a:
    ld de, $d028
    ld hl, $cff9
    ld c, $02
    call Call_000_3a7b
    jr z, jr_00f_433b

    jr nc, jr_00f_4393

    jr jr_00f_4353

jr_00f_433b:
    ldh a, [$aa]
    cp $02
    jr z, jr_00f_434a

    call Call_00f_7027
    cp $80
    jr c, jr_00f_4393

    jr jr_00f_4353

jr_00f_434a:
    call Call_00f_7027
    cp $80
    jr c, jr_00f_4353

    jr jr_00f_4393

jr_00f_4353:
    ld a, $01
    ldh [$f3], a
    ld hl, $65b2
    ld b, $0e
    call Call_000_3e84
    jr c, jr_00f_436e

    call Call_00f_6842
    ld a, [$d077]
    and a
    ret nz

    ld a, b
    and a
    jp z, Jump_00f_471d

jr_00f_436e:
    call Call_00f_43d3
    jp z, Jump_00f_453b

    call Call_00f_4e1f
    call Call_00f_57d0
    ld a, [$d077]
    and a
    ret nz

    ld a, b
    and a
    jp z, Jump_00f_453b

    call Call_00f_43d3
    jp z, Jump_00f_471d

    call Call_00f_4e1f
    call Call_00f_4525
    jp Jump_00f_4249


Jump_00f_4393:
jr_00f_4393:
    call Call_00f_57d0
    ld a, [$d077]
    and a
    ret nz

    ld a, b
    and a
    jp z, Jump_00f_453b

    call Call_00f_43d3
    jp z, Jump_00f_471d

    call Call_00f_4e1f
    ld a, $01
    ldh [$f3], a
    ld hl, $65b2
    ld b, $0e
    call Call_000_3e84
    jr c, jr_00f_43c4

    call Call_00f_6842
    ld a, [$d077]
    and a
    ret nz

    ld a, b
    and a
    jp z, Jump_00f_471d

jr_00f_43c4:
    call Call_00f_43d3
    jp z, Jump_00f_453b

    call Call_00f_4e1f
    call Call_00f_4525
    jp Jump_00f_4249


Call_00f_43d3:
    ld hl, $d014
    ld de, $d017
    ldh a, [$f3]
    and a
    jr z, jr_00f_43e4

    ld hl, $cfe5
    ld de, $cfe8

jr_00f_43e4:
    ld a, [de]
    and $18
    jr z, jr_00f_4405

    push hl
    ld hl, $4444
    ld a, [de]
    and $10
    jr z, jr_00f_43f5

    ld hl, $4449

jr_00f_43f5:
    call Call_000_3c36
    xor a
    ld [$cc5b], a
    ld a, $ba
    call Call_00f_7093
    pop hl
    call Call_00f_4453

jr_00f_4405:
    ld de, $d062
    ldh a, [$f3]
    and a
    jr z, jr_00f_4410

    ld de, $d067

jr_00f_4410:
    ld a, [de]
    add a
    jr nc, jr_00f_4437

    push hl
    ldh a, [$f3]
    push af
    xor $01
    ldh [$f3], a
    xor a
    ld [$cc5b], a
    ld a, $47
    call Call_00f_7093
    pop af
    ldh [$f3], a
    pop hl
    call Call_00f_4453
    call Call_00f_44b9
    push hl
    ld hl, $444e
    call Call_000_3c36
    pop hl

jr_00f_4437:
    ld a, [hl+]
    or [hl]
    ret nz

    call Call_00f_4e1f
    ld c, $14
    call Call_000_372f
    xor a
    ret


    rla
    ld h, c
    ld [hl], l
    daa
    ld d, b
    rla
    ld [hl], l
    ld [hl], l
    daa
    ld d, b
    rla
    adc e
    ld [hl], l
    daa
    ld d, b

Call_00f_4453:
    push hl
    push hl
    ld bc, $000e
    add hl, bc
    ld a, [hl+]
    ld [$ceea], a
    ld b, a
    ld a, [hl]
    ld [$cee9], a
    ld c, a
    srl b
    rr c
    srl b
    rr c
    srl c
    srl c
    ld a, c
    and a
    jr nz, jr_00f_4474

    inc c

jr_00f_4474:
    ld hl, $d063
    ld de, $d06b
    ldh a, [$f3]
    and a
    jr z, jr_00f_4485

    ld hl, $d068
    ld de, $d070

jr_00f_4485:
    bit 0, [hl]
    jr z, jr_00f_4495

    ld a, [de]
    inc a
    ld [de], a
    ld hl, $0000

jr_00f_448f:
    add hl, bc
    dec a
    jr nz, jr_00f_448f

    ld b, h
    ld c, l

jr_00f_4495:
    pop hl
    inc hl
    ld a, [hl]
    ld [$ceeb], a
    sub c
    ld [hl-], a
    ld [$ceed], a
    ld a, [hl]
    ld [$ceec], a
    sbc b
    ld [hl], a
    ld [$ceee], a
    jr nc, jr_00f_44b4

    xor a
    ld [hl+], a
    ld [hl], a
    ld [$ceed], a
    ld [$ceee], a

jr_00f_44b4:
    call Call_00f_450c
    pop hl
    ret


Call_00f_44b9:
    push hl
    ld hl, $cff3
    ldh a, [$f3]
    and a
    jr z, jr_00f_44c5

    ld hl, $d022

jr_00f_44c5:
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    ld de, $fff2
    add hl, de
    ld a, [hl]
    ld [$ceeb], a
    add c
    ld [hl-], a
    ld [$ceed], a
    ld a, [hl]
    ld [$ceec], a
    adc b
    ld [hl+], a
    ld [$ceee], a
    ld a, [$cee9]
    ld c, a
    ld a, [hl-]
    sub c
    ld a, [$ceea]
    ld b, a
    ld a, [hl]
    sbc b
    jr c, jr_00f_44fb

    ld a, b
    ld [hl+], a
    ld [$ceee], a
    ld a, c
    ld [hl], a
    ld [$ceed], a

jr_00f_44fb:
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    call Call_00f_450c
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    pop hl
    ret


Call_00f_450c:
    ld hl, $c45e
    ldh a, [$f3]
    and a
    ld a, $01
    jr z, jr_00f_451a

    ld hl, $c3ca
    xor a

jr_00f_451a:
    push bc
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4
    pop bc
    ret


Call_00f_4525:
    ld a, [$d069]
    and a
    jr nz, jr_00f_4530

    ld hl, $d061
    res 5, [hl]

jr_00f_4530:
    ld a, [$d06e]
    and a
    ret nz

    ld hl, $d066
    res 5, [hl]
    ret


Jump_00f_453b:
    xor a
    ld [$ccf0], a
    call Call_00f_457d
    call Call_00f_4ae8
    ld a, d
    and a
    jp z, Jump_00f_489c

    ld hl, $d014
    ld a, [hl+]
    or [hl]
    call nz, Call_00f_4e25
    ld a, [$d056]
    dec a
    ret z

    call Call_00f_4665
    jp z, Jump_00f_46b8

    ld hl, $d014
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_456b

    call Call_00f_47ff
    ret c

    call Call_00f_483c

jr_00f_456b:
    ld a, $01
    ld [$cd6a], a
    call Call_00f_467a
    jp z, Jump_00f_4218

    xor a
    ld [$cd6a], a
    jp Jump_00f_4249


Call_00f_457d:
    call Call_00f_4e08
    ld a, [$d056]
    dec a
    jr z, jr_00f_4595

    ld a, [$cfe7]
    ld hl, $d8a4
    ld bc, $002c
    call Call_000_3a74
    xor a
    ld [hl+], a
    ld [hl], a

jr_00f_4595:
    ld hl, $d061
    res 2, [hl]
    xor a
    ld [$d073], a
    ld hl, $d064
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d071], a
    ld [$ccef], a
    ld [$ccf3], a
    ld hl, $ccf1
    ld [hl+], a
    ld [hl], a
    ld hl, $c410
    ld de, $c424
    call Call_00f_48f8
    ld hl, $c3a0
    ld bc, $040b
    call Call_000_1692
    ld a, [$d056]
    dec a
    jr z, jr_00f_45e9

    xor a
    ld [$c0f1], a
    ld [$c0f2], a
    ld a, $9e
    call Call_000_3736

jr_00f_45d8:
    ld a, [$c02a]
    cp $9e
    jr z, jr_00f_45d8

    ld a, $95
    call Call_000_2238
    call Call_000_373e
    jr jr_00f_45f1

jr_00f_45e9:
    call Call_00f_4659
    ld a, $f9
    call Call_00f_4710

jr_00f_45f1:
    ld hl, $d014
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_4601

    ld a, [$ccf0]
    and a
    jr nz, jr_00f_4601

    call Call_00f_475e

jr_00f_4601:
    call Call_00f_4ae8
    ld a, d
    and a
    ret z

    ld hl, $4654
    call Call_000_3c36
    call Call_00f_7020
    call Call_000_370f
    xor a
    ld [$cf0b], a
    ld b, $4b
    call Call_000_3422
    push af
    jr z, jr_00f_462a

    ld hl, $d001
    ld b, $07

jr_00f_4624:
    srl [hl]
    inc hl
    dec b
    jr nz, jr_00f_4624

jr_00f_462a:
    xor a
    ld [$cc5b], a
    ld hl, $525f
    ld b, $15
    call Call_000_3e84
    pop af
    ret z

    ld a, $01
    ld [$cc5b], a
    ld a, [$d162]
    ld b, $00

jr_00f_4642:
    scf
    rl b
    dec a
    jr nz, jr_00f_4642

    ld a, b
    ld [$d057], a
    ld hl, $525f
    ld b, $15
    jp Jump_000_3e84


    rla
    sbc a
    ld [hl], l
    daa
    ld d, b

Call_00f_4659:
    xor a
    ld [$d082], a
    ld [$c02a], a
    inc a
    ld [$ccf6], a
    ret


Call_00f_4665:
    ld a, [$d89b]
    ld b, a
    xor a
    ld hl, $d8a4
    ld de, $002c

jr_00f_4670:
    or [hl]
    inc hl
    or [hl]
    dec hl
    add hl, de
    dec b
    jr nz, jr_00f_4670

    and a
    ret


Call_00f_467a:
    ld hl, $cf1d
    ld e, $30
    call Call_00f_4f55
    ld a, $e4
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_3040
    call Call_000_3061
    ld hl, $68ed
    ld b, $0e
    call Call_000_3e84
    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_46a9

    call Call_00f_5777
    ld a, [$cc3e]
    cp $0f
    ret z

    call Call_000_371b

jr_00f_46a9:
    call Call_00f_4973
    xor a
    ld [$cfcb], a
    ld [$cd6a], a
    ld [$ccd5], a
    inc a
    ret


Jump_00f_46b8:
    call Call_00f_4659
    ld b, $fc
    ld a, [$d05b]
    and a
    jr nz, jr_00f_46c5

    ld b, $f6

jr_00f_46c5:
    ld a, [$d030]
    cp $2b
    jr nz, jr_00f_46d3

    ld b, $fc
    ld hl, $d732
    set 1, [hl]

jr_00f_46d3:
    ld a, [$d12a]
    cp $04
    ld a, b
    call nz, Call_00f_4710
    ld hl, $470b
    call Call_000_3c36
    ld a, [$d12a]
    cp $04
    ret z

    call Call_00f_6e9e
    ld c, $28
    call Call_000_372f
    call Call_000_331d
    ld hl, $4706
    call Call_000_3c36
    ld de, $d348
    ld hl, $d07a
    ld c, $03
    ld a, $0b
    jp Jump_000_3eb4


    rla
    or l
    ld [hl], l
    daa
    ld d, b
    rla
    pop de
    ld [hl], l
    daa
    ld d, b

Call_00f_4710:
    push af
    call Call_000_2233
    ld c, $08
    pop af
    call Call_000_2211
    jp Jump_000_3ddb


Jump_00f_471d:
    ld a, $01
    ld [$ccf0], a
    call Call_00f_475e
    call Call_00f_4ae8
    ld a, d
    and a
    jp z, Jump_00f_489c

    ld hl, $cfe5
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_4742

    call Call_00f_457d
    ld a, [$d056]
    dec a
    ret z

    call Call_00f_4665
    jp z, Jump_00f_46b8

jr_00f_4742:
    call Call_00f_47ff
    ret c

    call Call_00f_483c
    jp nz, Jump_00f_4249

    ld a, $01
    ld [$cd6a], a
    call Call_00f_467a
    jp z, Jump_00f_4218

    xor a
    ld [$cd6a], a
    jp Jump_00f_4249


Call_00f_475e:
    ld a, [$cc2f]
    ld c, a
    ld hl, $d057
    ld b, $00
    ld a, $10
    call Call_000_3eb4
    ld hl, $d066
    res 2, [hl]
    ld a, [$d082]
    bit 7, a
    jr z, jr_00f_4781

    ld a, $ff
    ld [$d082], a
    call Call_000_373e
    xor a

jr_00f_4781:
    ld hl, $cd05
    ld [hl+], a
    ld [hl], a
    ld [$d017], a
    call Call_00f_4e08
    ld hl, $c435
    ld bc, $050b
    call Call_000_1692
    ld hl, $c469
    ld de, $c47d
    call Call_00f_48f8
    ld a, $01
    ld [$cf0b], a
    ld a, [$ccf0]
    and a
    ret z

    ld a, [$cc2f]
    ld [$cf91], a
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_00f_47c4

    ld e, $03
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    jr jr_00f_47ca

jr_00f_47c4:
    ld a, [$d013]
    call Call_000_118b

jr_00f_47ca:
    ld hl, $47fa
    call Call_000_3c36
    ld a, [$cc2f]
    ld [$cf91], a
    ld a, [$d021]
    ld b, a
    ld a, [$cff2]
    sub b
    jr c, jr_00f_47e4

    cp $1e
    jr nc, jr_00f_47ef

jr_00f_47e4:
    ld hl, $430a
    ld b, $3d
    ld d, $08
    call Call_000_3e84
    ret


jr_00f_47ef:
    ld hl, $430a
    ld b, $3d
    ld d, $0a
    call Call_000_3e84
    ret


    rla
    db $e4
    ld [hl], l
    daa
    ld d, b

Call_00f_47ff:
    call Call_00f_7020
    call Call_000_370f
    ld a, [$d056]
    and a
    dec a
    ret nz

    ld hl, $4837
    call Call_000_3c36

jr_00f_4811:
    ld hl, $c461
    ld bc, $0a0e
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$d12d]
    cp $02
    jr z, jr_00f_4828

    and a
    ret


jr_00f_4828:
    ld a, [$cc26]
    and a
    jr z, jr_00f_4811

    ld hl, $d192
    ld de, $cff9
    jp Jump_00f_4b1e


    rla
    ld a, [c]
    ld [hl], l
    daa
    ld d, b

Call_00f_483c:
    ld a, $02
    ld [$d07c], a
    call Call_000_11c8

jr_00f_4844:
    jr nc, jr_00f_484b

jr_00f_4846:
    call Call_000_11dd
    jr jr_00f_4844

jr_00f_484b:
    call Call_00f_4afc
    jr z, jr_00f_4846

    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_485f

    ld a, $01
    ld [$cd6a], a
    call Call_00f_5777

jr_00f_485f:
    xor a
    ld [$cd6a], a
    call Call_000_0082
    ld a, [$cf91]
    ld [$cc2f], a
    ld c, a
    ld hl, $d057
    ld b, $01
    push bc
    ld a, $10
    call Call_000_3eb4
    pop bc
    ld hl, $ccf5
    ld a, $10
    call Call_000_3eb4
    call Call_00f_4c10
    call Call_000_3df2
    call Call_00f_6fe7
    call Call_000_371b
    call Call_000_3e03
    call Call_000_3de0
    call Call_00f_4cfb
    ld hl, $cfe5
    ld a, [hl+]
    or [hl]
    ret


Jump_00f_489c:
    ld a, [$d12a]
    cp $04
    jr z, jr_00f_48c7

    ld a, [$d058]
    cp $e1
    jr nz, jr_00f_48c7

    ld hl, $c3a0
    ld bc, $0815
    call Call_000_1692
    call Call_00f_6e9e
    ld c, $28
    call Call_000_372f
    ld hl, $48e9
    call Call_000_3c36
    ld a, [$d35d]
    cp $28
    ret z

jr_00f_48c7:
    ld b, $00
    call Call_000_3e05
    ld hl, $48ee
    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_48d9

    ld hl, $48f3

jr_00f_48d9:
    call Call_000_3c36
    ld a, [$d731]
    res 5, a
    ld [$d731], a
    call Call_000_16dd
    scf
    ret


    rla
    ld [bc], a
    db $76
    daa
    ld d, b
    rla
    jr nz, @+$78

    daa
    ld d, b
    rla
    ld c, d
    db $76
    daa
    ld d, b

Call_00f_48f8:
    ld a, [$d72f]
    push af
    set 6, a
    ld [$d72f], a
    ld b, $07

jr_00f_4903:
    push bc
    push de
    push hl
    ld b, $06

jr_00f_4908:
    push bc
    push hl
    push de
    ld bc, $0007
    call Call_000_00b1
    pop de
    pop hl
    ld bc, $ffec
    add hl, bc
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    pop bc
    dec b
    jr nz, jr_00f_4908

    ld bc, $0014
    add hl, bc
    ld de, $493c
    call Call_000_1723
    ld c, $02
    call Call_000_372f
    pop hl
    pop de
    pop bc
    dec b
    jr nz, jr_00f_4903

    pop af
    ld [$d72f], a
    ret


    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Call_00f_4944:
    ldh [$8b], a
    ld c, a

jr_00f_4947:
    push bc
    push hl
    ld b, $07

jr_00f_494b:
    push hl
    ldh a, [$8b]
    ld c, a

jr_00f_494f:
    ldh a, [$8b]
    cp $08
    jr z, jr_00f_495a

    ld a, [hl-]
    ld [hl+], a
    inc hl
    jr jr_00f_495d

jr_00f_495a:
    ld a, [hl+]
    ld [hl-], a
    dec hl

jr_00f_495d:
    dec c
    jr nz, jr_00f_494f

    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_00f_494b

    ld c, $02
    call Call_000_372f
    pop hl
    pop bc
    dec c
    jr nz, jr_00f_4947

    ret


Call_00f_4973:
    ld hl, $d057
    xor a
    ld [hl], a
    ld a, [$cc2f]
    ld c, a
    ld b, $01
    push bc
    ld a, $10
    call Call_000_3eb4
    ld hl, $ccf5
    xor a
    ld [hl], a
    pop bc
    ld a, $10
    call Call_000_3eb4

Call_00f_498f:
    xor a
    ld hl, $d064
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d071], a
    ld [$ccef], a
    ld [$ccf3], a
    ld hl, $ccf1
    ld [hl+], a
    ld [hl], a
    dec a
    ld [$ccdf], a
    ld hl, $d061
    res 5, [hl]
    ld hl, $c3b2
    ld a, $08
    call Call_00f_4944
    call Call_00f_7020
    call Call_000_370f
    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_49ce

    ld a, [$cc3e]
    sub $04
    ld [$cf91], a
    jr jr_00f_49ed

jr_00f_49ce:
    ld b, $ff

jr_00f_49d0:
    inc b
    ld a, [$cfe7]
    cp b
    jr z, jr_00f_49d0

    ld hl, $d8a3
    ld a, b
    ld [$cf91], a
    push bc
    ld bc, $002c
    call Call_000_3a74
    pop bc
    inc hl
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    or c
    jr z, jr_00f_49d0

jr_00f_49ed:
    ld a, [$cf91]
    ld hl, $d8c4
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl]
    ld [$d126], a
    ld a, [$cf91]
    inc a
    ld hl, $d89b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$cfd7], a
    ld [$cf90], a
    call Call_00f_6c87
    ld hl, $cfe5
    ld a, [hl+]
    ld [$cce3], a
    ld a, [hl]
    ld [$cce4], a
    ld a, $01
    ld [$cc26], a
    ld a, [$d11c]
    dec a
    jr z, jr_00f_4a8b

    ld a, [$d162]
    dec a
    jr z, jr_00f_4a8b

    ld a, [$d12a]
    cp $04
    jr z, jr_00f_4a8b

    ld a, [$d354]
    bit 6, a
    jr nz, jr_00f_4a8b

    ld hl, $4ade
    call Call_000_3c36
    ld hl, $c42c
    ld bc, $0801
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$cc26]
    and a
    jr nz, jr_00f_4a8b

    ld a, $02
    ld [$d07c], a
    call Call_000_11c8

jr_00f_4a5e:
    ld a, $01
    ld [$cc26], a
    jr c, jr_00f_4a82

    ld hl, $cc2f
    ld a, [$cf91]
    cp [hl]
    jr nz, jr_00f_4a79

    ld hl, $52fc
    call Call_000_3c36

jr_00f_4a74:
    call Call_000_11dd
    jr jr_00f_4a5e

jr_00f_4a79:
    call Call_00f_4afc
    jr z, jr_00f_4a74

    xor a
    ld [$cc26], a

jr_00f_4a82:
    call Call_000_3df2
    call Call_00f_6fe7
    call Call_000_371b

jr_00f_4a8b:
    call Call_000_0082
    ld hl, $c3a0
    ld bc, $040b
    call Call_000_1692
    ld b, $01
    call Call_000_3e05
    call Call_000_3de0
    ld hl, $4ae3
    call Call_000_3c36
    ld a, [$cfd7]
    ld [$cf90], a
    ld [$d0b4], a
    call Call_000_132f
    ld de, $9000
    call Call_000_143e
    ld a, $cf
    ldh [$e1], a
    ld hl, $c427
    ld a, $02
    call Call_000_3eb4
    ld a, [$cfd7]
    call Call_000_118b
    call Call_00f_4eb1
    ld a, [$cc26]
    and a
    ret nz

    xor a
    ld [$d057], a
    ld [$ccf5], a
    call Call_000_370f
    jp Jump_00f_52c1


    rla
    ld e, h
    db $76
    daa
    ld d, b
    rla
    adc h
    db $76
    daa
    ld d, b

Call_00f_4ae8:
    ld a, [$d162]
    ld e, a
    xor a
    ld hl, $d16b
    ld bc, $002b

jr_00f_4af3:
    or [hl]
    inc hl
    or [hl]
    add hl, bc
    dec e
    jr nz, jr_00f_4af3

    ld d, a
    ret


Call_00f_4afc:
    ld a, [$cf91]
    ld hl, $d16b
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl+]
    or [hl]
    ret nz

    ld a, [$d11c]
    and a
    jr nz, jr_00f_4b17

    ld hl, $4b19
    call Call_000_3c36

jr_00f_4b17:
    xor a
    ret


    rla
    and c
    db $76
    daa
    ld d, b

Call_00f_4b1e:
Jump_00f_4b1e:
    call Call_00f_59ac
    jp z, Jump_00f_4bc6

    ld a, [$d059]
    cp $02
    jp z, Jump_00f_4bc6

    cp $03
    jp z, Jump_00f_4bc6

    ld a, [$d12a]
    cp $04
    jp z, Jump_00f_4bc6

    ld a, [$d056]
    dec a
    jr nz, jr_00f_4bb6

    ld a, [$d11f]
    inc a
    ld [$d11f], a
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a
    ld a, [de]
    ldh [$8d], a
    inc de
    ld a, [de]
    ldh [$8e], a
    call Call_000_371b
    ld de, $ff97
    ld hl, $ff8d
    ld c, $02
    call Call_000_3a7b
    jr nc, jr_00f_4bc6

    xor a
    ldh [$96], a
    ld a, $20
    ldh [$99], a
    call Call_000_38a5
    ldh a, [$97]
    ldh [$95], a
    ldh a, [$98]
    ldh [$96], a
    ldh a, [$8d]
    ld b, a
    ldh a, [$8e]
    srl b
    rr a
    srl b
    rr a
    and a
    jr z, jr_00f_4bc6

    ldh [$99], a
    ld b, $02
    call Call_000_38b2
    ldh a, [$97]
    and a
    jr nz, jr_00f_4bc6

    ld a, [$d11f]
    ld c, a

jr_00f_4b95:
    dec c
    jr z, jr_00f_4ba3

    ld b, $1e
    ldh a, [$98]
    add b
    ldh [$98], a
    jr c, jr_00f_4bc6

    jr jr_00f_4b95

jr_00f_4ba3:
    call Call_00f_7027
    ld b, a
    ldh a, [$98]
    cp b
    jr nc, jr_00f_4bc6

    ld a, $01
    ld [$cd6a], a
    ld hl, $4c01
    jr jr_00f_4bb9

jr_00f_4bb6:
    ld hl, $4c06

jr_00f_4bb9:
    call Call_000_3c36
    ld a, $01
    ld [$d11e], a
    call Call_000_370f
    and a
    ret


Jump_00f_4bc6:
jr_00f_4bc6:
    ld a, [$d12a]
    cp $04
    ld a, $02
    jr nz, jr_00f_4beb

    call Call_000_370f
    xor a
    ld [$cd6a], a
    ld a, $0f
    ld [$cc2e], a
    call Call_00f_5777
    call Call_000_371b
    ld a, [$cc3e]
    cp $0f
    ld a, $02
    jr z, jr_00f_4beb

    dec a

jr_00f_4beb:
    ld [$cf0b], a
    ld a, $97
    call Call_000_3736
    ld hl, $4c0b
    call Call_000_3c36
    call Call_000_373e
    call Call_000_370f
    scf
    ret


    rla
    cp e
    db $76
    daa
    ld d, b
    rla
    ret


    db $76
    daa
    ld d, b
    rla
    rst $30
    db $76
    daa
    ld d, b

Call_00f_4c10:
    ld a, [$cf91]
    ld bc, $002c
    ld hl, $d16a
    call Call_000_3a74
    ld de, $d013
    ld bc, $000c
    call Call_000_00b1
    ld bc, $000f
    add hl, bc
    ld de, $d01f
    ld bc, $0002
    call Call_000_00b1
    ld de, $d02c
    ld bc, $0004
    call Call_000_00b1
    ld de, $d021
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cfd8]
    ld [$d0b4], a
    call Call_000_132f
    ld hl, $d2b4
    ld a, [$cc2f]
    call Call_000_3a6a
    ld de, $d008
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d021
    ld de, $cd0f
    ld bc, $000b
    call Call_000_00b1
    call Call_00f_6ea6
    call Call_00f_6fa5
    ld a, $07
    ld b, $08
    ld hl, $cd1a

jr_00f_4c78:
    ld [hl+], a
    dec b
    jr nz, jr_00f_4c78

    ret


Jump_00f_4c7d:
    ld a, [$cf91]
    ld bc, $002c
    ld hl, $d8a3
    call Call_000_3a74
    ld de, $cfe4
    ld bc, $000c
    call Call_000_00b1
    ld bc, $000f
    add hl, bc
    ld de, $cff0
    ld bc, $0002
    call Call_000_00b1
    ld de, $cffd
    ld bc, $0004
    call Call_000_00b1
    ld de, $cff2
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cfe4]
    ld [$d0b4], a
    call Call_000_132f
    ld hl, $d9ed
    ld a, [$cf91]
    call Call_000_3a6a
    ld de, $cfd9
    ld bc, $000b
    call Call_000_00b1
    ld hl, $cff2
    ld de, $cd23
    ld bc, $000b
    call Call_000_00b1
    call Call_00f_6eaa
    ld hl, $d0b8
    ld de, $d001
    ld b, $05

jr_00f_4ce3:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00f_4ce3

    ld a, $07
    ld b, $08
    ld hl, $cd2e

jr_00f_4cf0:
    ld [hl+], a
    dec b
    jr nz, jr_00f_4cf0

    ld a, [$cf91]
    ld [$cfe7], a
    ret


Call_00f_4cfb:
    ld hl, $40e5
    ld b, $3d
    call Call_000_3e84
    ld hl, $cfe5
    ld a, [hl+]
    or [hl]
    jp z, Jump_00f_4d0e

    call Call_00f_4eb1

Jump_00f_4d0e:
    call Call_00f_4e25
    ld a, $04
    call Call_000_3eb4
    xor a
    ldh [$e1], a
    ld hl, $cc2d
    ld [hl+], a
    ld [hl], a
    ld [$cc5b], a
    ld [$d05a], a
    ld [$cfd1], a
    ld hl, $ccf1
    ld [hl+], a
    ld [hl], a
    ld hl, $d05f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d06c], a
    ld [$ccee], a
    ld [$ccf7], a
    ld b, $01
    call Call_000_3e05
    ld hl, $d066
    res 5, [hl]
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr c, jr_00f_4d64

    ld a, $01
    ldh [$f3], a
    ld a, $c3
    call Call_00f_7093
    ld hl, $c480
    ld a, $02
    call Call_000_3eb4
    jr jr_00f_4d8b

jr_00f_4d64:
    xor a
    ldh [$f3], a
    ld a, $01
    ldh [$ba], a
    ld hl, $429f
    ld b, $3d
    call Call_000_3e84
    ld hl, $50d0
    ld b, $3f
    call Call_000_3e84
    ld e, $24
    jr c, jr_00f_4d81

    ld e, $0a

jr_00f_4d81:
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    jr jr_00f_4d91

jr_00f_4d8b:
    ld a, [$cf90]
    call Call_000_118b

jr_00f_4d91:
    call Call_00f_7020
    jp Jump_000_370f


Call_00f_4d97:
    ld a, [$cf91]
    push af
    ld a, [$cc2f]
    ld [$cf91], a
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    pop bc
    ld a, b
    ld [$cf91], a
    jr c, jr_00f_4df2

    ld hl, $c405
    ld bc, $0707
    call Call_000_1692
    ld hl, $c42f
    ld bc, $0505
    xor a
    ld [$cd6c], a
    ldh [$8b], a
    ld a, $05
    call Call_000_3eb4
    ld c, $04
    call Call_000_372f
    call Call_00f_4dfe
    ld hl, $c458
    ld bc, $0303
    ld a, $01
    ld [$cd6c], a
    xor a
    ldh [$8b], a
    ld a, $05
    call Call_000_3eb4
    call Call_000_3ddb
    call Call_00f_4dfe
    ld a, $4c
    ld [$c481], a
    jr jr_00f_4dfe

jr_00f_4df2:
    xor a
    ldh [$f3], a
    ld hl, $5349
    ld b, $1e
    call Call_000_3e84
    ret


Call_00f_4dfe:
jr_00f_4dfe:
    ld hl, $c405
    ld bc, $0707
    call Call_000_1692
    ret


Call_00f_4e08:
    ld a, [$cc2f]
    ld hl, $d16b
    ld bc, $002c
    call Call_000_3a74
    ld d, h
    ld e, l
    ld hl, $d014
    ld bc, $0004
    jp Jump_000_00b1


Call_00f_4e1f:
Jump_00f_4e1f:
    call Call_00f_4e25
    jp Jump_00f_4eb1


Call_00f_4e25:
    xor a
    ldh [$ba], a
    ld hl, $c435
    ld bc, $050b
    call Call_000_1692
    ld hl, $69a3
    ld b, $0e
    call Call_000_3e84
    ld hl, $c466
    ld [hl], $73
    ld de, $d008
    ld hl, $c436
    call Call_00f_4f61
    call Call_000_1723
    ld hl, $d013
    ld de, $cf97
    ld bc, $000c
    call Call_000_00b1
    ld hl, $d021
    ld de, $cfb8
    ld bc, $000b
    call Call_000_00b1
    ld hl, $c44e
    push hl
    inc hl
    ld de, $cf9b
    call Call_000_12f3
    pop hl
    jr nz, jr_00f_4e73

    call Call_000_1303

jr_00f_4e73:
    ld a, [$cf97]
    ld [$cf90], a
    ld hl, $c45e
    ld a, $5f
    call Call_000_3eb4
    ld a, $01
    ldh [$ba], a
    ld hl, $cf1c
    call Call_00f_4f55
    ld hl, $d014
    ld a, [hl+]
    or [hl]
    jr z, jr_00f_4e9e

    ld a, [$ccf6]
    and a
    ret nz

    ld a, [$cf1c]
    cp $02
    jr z, jr_00f_4eab

jr_00f_4e9e:
    ld hl, $d082
    bit 7, [hl]
    ld [hl], $00
    ret z

    xor a
    ld [$c02a], a
    ret


jr_00f_4eab:
    ld hl, $d082
    set 7, [hl]
    ret


Call_00f_4eb1:
Jump_00f_4eb1:
    xor a
    ldh [$ba], a
    ld hl, $c3a0
    ld bc, $040c
    call Call_000_1692
    ld hl, $69ba
    ld b, $0e
    call Call_000_3e84
    ld de, $cfd9
    ld hl, $c3a1
    call Call_00f_4f61
    call Call_000_1723
    ld hl, $c3b8
    push hl
    inc hl
    ld de, $cfe8
    call Call_000_12f3
    pop hl
    jr nz, jr_00f_4ee8

    ld a, [$cff2]
    ld [$cfb8], a
    call Call_000_1303

jr_00f_4ee8:
    ld hl, $cfe5
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl-]
    ldh [$98], a
    or [hl]
    jr nz, jr_00f_4efb

    ld c, a
    ld e, a
    ld d, $06
    jp Jump_00f_4f44


jr_00f_4efb:
    xor a
    ldh [$96], a
    ld a, $30
    ldh [$99], a
    call Call_000_38a5
    ld hl, $cff3
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ldh [$99], a
    ld a, b
    and a
    jr z, jr_00f_4f2f

    ldh a, [$99]
    srl b
    rr a
    srl b
    rr a
    ldh [$99], a
    ldh a, [$97]
    ld b, a
    srl b
    ldh a, [$98]
    rr a
    srl b
    rr a
    ldh [$98], a
    ld a, b
    ldh [$97], a

jr_00f_4f2f:
    ldh a, [$97]
    ldh [$95], a
    ldh a, [$98]
    ldh [$96], a
    ld a, $02
    ld b, a
    call Call_000_38b2
    ldh a, [$98]
    ld e, a
    ld a, $06
    ld d, a
    ld c, a

Jump_00f_4f44:
    xor a
    ld [$cf93], a
    ld hl, $c3ca
    call Call_000_10f8
    ld a, $01
    ldh [$ba], a
    ld hl, $cf1d

Call_00f_4f55:
    ld b, [hl]
    call Call_000_3e0f
    ld a, [hl]
    cp b
    ret z

    ld b, $01
    jp Jump_000_3e05


Call_00f_4f61:
    push de
    inc hl
    inc hl
    ld b, $02

jr_00f_4f66:
    inc de
    ld a, [de]
    cp $50
    jr z, jr_00f_4f76

    inc de
    ld a, [de]
    cp $50
    jr z, jr_00f_4f76

    dec hl
    dec b
    jr nz, jr_00f_4f66

jr_00f_4f76:
    pop de
    ret


Call_00f_4f78:
Jump_00f_4f78:
    call Call_000_371b
    ld a, [$d059]
    and a
    jr nz, jr_00f_4f8a

    call Call_00f_4e1f
    call Call_00f_7020
    call Call_000_370f

jr_00f_4f8a:
    ld a, [$d059]
    cp $02
    ld a, $0b
    jr nz, jr_00f_4f95

    ld a, $1b

jr_00f_4f95:
    ld [$d124], a
    call Call_000_3010
    ld a, [$d059]
    cp $01
    jr z, jr_00f_4fa9

    cp $04
    jr z, jr_00f_4fa9

    jp Jump_00f_4ff8


jr_00f_4fa9:
    ld hl, $d157
    ld de, $d886
    ld bc, $000b
    call Call_000_00b1
    ld hl, $4fe7
    ld a, [$d059]
    dec a
    jr z, jr_00f_4fc1

    ld hl, $4fef

jr_00f_4fc1:
    ld de, $d157
    ld bc, $000b
    call Call_000_00b1
    ld hl, $c4c1
    ld [hl], $ed
    ld c, $14
    call Call_000_372f
    ld [hl], $7f
    ld hl, $c4e9
    ld [hl], $ed
    ld c, $14
    call Call_000_372f
    ld [hl], $ec
    ld a, $02
    jp Jump_00f_50e4


    adc [hl]
    adc e
    add e
    ld a, a
    adc h
    add b
    adc l
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld d, b

Jump_00f_4ff8:
    ld a, [$cc2d]
    ld [$cc26], a
    ld [$cc2a], a
    sub $02
    jr c, jr_00f_500d

    ld [$cc26], a
    ld [$cc2a], a
    jr jr_00f_504c

jr_00f_500d:
    ld a, [$d059]
    cp $02
    ld a, $7f
    jr z, jr_00f_5020

    ld [$c4c7], a
    ld [$c4ef], a
    ld b, $09
    jr jr_00f_5034

jr_00f_5020:
    ld [$c4c5], a
    ld [$c4ed], a
    ld hl, $c4bf
    ld de, $da46
    ld bc, $0102
    call Call_000_3c5b
    ld b, $01

jr_00f_5034:
    ld hl, $cc24
    ld a, $0e
    ld [hl+], a
    ld a, b
    ld [hl+], a
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    ld [hl], $11
    call Call_000_3aab
    bit 4, a
    jr nz, jr_00f_504c

    jr jr_00f_5092

jr_00f_504c:
    ld a, [$d059]
    cp $02
    ld a, $7f
    jr z, jr_00f_505f

    ld [$c4c1], a
    ld [$c4e9], a
    ld b, $0f
    jr jr_00f_5073

jr_00f_505f:
    ld [$c4b9], a
    ld [$c4e1], a
    ld hl, $c4bf
    ld de, $da46
    ld bc, $0102
    call Call_000_3c5b
    ld b, $0d

jr_00f_5073:
    ld hl, $cc24
    ld a, $0e
    ld [hl+], a
    ld a, b
    ld [hl+], a
    inc hl
    inc hl
    ld a, $01
    ld [hl+], a
    ld a, $21
    ld [hl+], a
    call Call_000_3aab
    bit 5, a
    jr nz, jr_00f_500d

    ld a, [$cc26]
    add $02
    ld [$cc26], a

jr_00f_5092:
    call Call_000_3bd9
    ld a, [$d059]
    cp $03
    jr z, jr_00f_50ce

    ld a, [$d059]
    cp $02
    ld a, [$cc26]
    ld [$cc2d], a
    jr z, jr_00f_50b5

    cp $01
    jr nz, jr_00f_50b0

    inc a
    jr jr_00f_50b5

jr_00f_50b0:
    cp $02
    jr nz, jr_00f_50b5

    dec a

jr_00f_50b5:
    and a
    jr nz, jr_00f_50e4

    ld a, [$d059]
    cp $02
    jr z, jr_00f_50c6

    xor a
    ld [$d11f], a
    jp Jump_000_371b


jr_00f_50c6:
    ld a, $08
    ld [$cf90], a
    jp Jump_00f_5162


jr_00f_50ce:
    ld a, [$cc26]
    cp $03
    jp z, Jump_00f_5301

    ld hl, $50df
    call Call_000_3c36
    jp Jump_00f_4f78


    rla
    add hl, bc
    ld [hl], a
    daa
    ld d, b

Jump_00f_50e4:
jr_00f_50e4:
    cp $02
    jp nz, Jump_00f_51cd

    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_50f9

    ld hl, $51c8
    call Call_000_3c36
    jp Jump_00f_4f78


jr_00f_50f9:
    call Call_000_36ec
    ld a, [$d059]
    cp $02
    jr nz, jr_00f_510a

    ld a, $15
    ld [$cf90], a
    jr jr_00f_5162

Jump_00f_510a:
jr_00f_510a:
    call Call_000_371b
    ld a, [$d059]
    and a
    jr nz, jr_00f_5116

    call Call_00f_4e1f

jr_00f_5116:
    ld a, [$d059]
    cp $01
    jr z, jr_00f_5123

    cp $04
    jr z, jr_00f_5123

    jr jr_00f_5134

jr_00f_5123:
    ld hl, $5130
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    jr jr_00f_513f

    ld bc, HeaderLogo
    rst $38

jr_00f_5134:
    ld hl, $d31c
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a

jr_00f_513f:
    xor a
    ld [$cf92], a
    ld a, $03
    ld [$cf93], a
    ld a, [$cc2c]
    ld [$cc26], a
    call Call_000_2ae0
    ld a, [$cc26]
    ld [$cc2c], a
    ld a, $00
    ld [$cc37], a
    ld [$cc35], a
    jp c, Jump_00f_4f78

Jump_00f_5162:
jr_00f_5162:
    ld a, [$cf90]
    ld [$d11d], a
    call Call_000_2ec4
    call Call_000_3813
    xor a
    ld [$d151], a
    call Call_000_2fe4
    call Call_00f_6fe7
    call Call_000_0082
    xor a
    ld [$cc26], a
    ld a, [$d059]
    cp $02
    jr z, jr_00f_519f

    ld a, [$cd6a]
    and a
    jp z, Jump_00f_510a

    ld a, [$d061]
    bit 5, a
    jr z, jr_00f_519f

    ld hl, $d069
    dec [hl]
    jr nz, jr_00f_519f

    ld hl, $d061
    res 5, [hl]

jr_00f_519f:
    ld a, [$d11b]
    and a
    jr nz, jr_00f_51ba

    ld a, [$d059]
    cp $02
    jr z, jr_00f_51b5

    call Call_000_371b
    call Call_00f_4e1f
    call Call_000_3ddb

jr_00f_51b5:
    call Call_000_3de0
    and a
    ret


jr_00f_51ba:
    call Call_000_3de0
    xor a
    ld [$d11b], a
    ld a, $02
    ld [$cf0b], a
    scf
    ret


    rla
    dec de
    ld [hl], a
    daa
    ld d, b

Jump_00f_51cd:
    dec a
    jp nz, Jump_00f_5301

    call Call_000_36ec
    ld a, [$d059]
    cp $02
    jr nz, jr_00f_51e3

    ld a, $16
    ld [$cf90], a
    jp Jump_00f_5162


Jump_00f_51e3:
jr_00f_51e3:
    call Call_000_371b
    xor a
    ld [$d07c], a
    ld [$cc35], a
    call Call_000_11c8

jr_00f_51f0:
    jp nc, Jump_00f_521c

jr_00f_51f3:
    call Call_000_0082
    call Call_000_3df2
    call Call_00f_6fe7
    call Call_000_36f8
    call Call_000_3e03
    call Call_000_3de0
    jp Jump_00f_4f78


Jump_00f_5208:
jr_00f_5208:
    ld hl, $c487
    ld bc, $0081
    ld a, $7f
    call Call_000_166e
    xor a
    ld [$d07c], a
    call Call_000_11dd
    jr jr_00f_51f0

Jump_00f_521c:
    ld a, $0c
    ld [$d124], a
    call Call_000_3010
    ld hl, $cc24
    ld a, $0c
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_000_3aab
    bit 1, a
    jr nz, jr_00f_5208

    call Call_000_3bd9
    ld a, [$cc26]
    cp $02
    jr z, jr_00f_51f3

    and a
    jr z, jr_00f_5291

    xor a
    ld [$cc49], a
    ld hl, $d16a
    call Call_000_0082
    ld a, $36
    call Call_000_3eb4
    ld a, $37
    call Call_000_3eb4
    ld a, $01
    ldh [$f3], a
    ld a, [$d067]
    bit 4, a
    ld hl, $57af
    jr nz, jr_00f_5289

    ld a, [$ccf3]
    and a
    ld hl, $566e
    jr nz, jr_00f_5289

    ld a, [$cfe4]
    ld [$cf90], a
    ld [$d0b4], a
    call Call_000_132f
    ld de, $9000
    call Call_000_143e
    jr jr_00f_528e

jr_00f_5289:
    ld b, $1e
    call Call_000_3e84

jr_00f_528e:
    jp Jump_00f_51e3


jr_00f_5291:
    ld a, [$cc2f]
    ld d, a
    ld a, [$cf91]
    cp d
    jr nz, jr_00f_52a4

    ld hl, $52fc
    call Call_000_3c36
    jp Jump_00f_5208


jr_00f_52a4:
    call Call_00f_4afc
    jp z, Jump_00f_5208

    ld a, $01
    ld [$cd6a], a
    call Call_000_3df2
    call Call_000_0082
    call Call_00f_6fe7
    call Call_000_371b
    call Call_000_3e03
    call Call_000_3de0

Jump_00f_52c1:
    ld hl, $415d
    ld b, $3d
    call Call_000_3e84
    ld c, $32
    call Call_000_372f
    call Call_00f_4d97
    ld a, [$cf91]
    ld [$cc2f], a
    ld c, a
    ld b, $01
    push bc
    ld hl, $d057
    ld a, $10
    call Call_000_3eb4
    pop bc
    ld hl, $ccf5
    ld a, $10
    call Call_000_3eb4
    call Call_00f_4c10
    call Call_00f_4cfb
    call Call_000_370f
    ld a, $02
    ld [$cc26], a
    and a
    ret


    rla
    dec [hl]
    ld [hl], a
    daa
    ld d, b

Jump_00f_5301:
    call Call_000_371b
    ld a, $03
    ld [$cc26], a
    ld hl, $d028
    ld de, $cff9
    call Call_00f_4b1e
    ld a, $00
    ld [$d11e], a
    ret c

    ld a, [$cd6a]
    and a
    ret nz

    jp Jump_00f_4f78


Call_00f_5320:
Jump_00f_5320:
    ld a, [$ccdb]
    dec a
    jr z, jr_00f_537b

    dec a
    jr z, jr_00f_5396

    jr jr_00f_5350

Call_00f_532b:
    ld de, $d0db
    ld bc, $0004
    call Call_000_00b1
    ld hl, $5b06
    ld b, $0e
    call Call_000_3e84
    ret


Call_00f_533d:
    ld de, $d0e0
    ldh a, [$fa]
    set 2, a
    ldh [$fa], a
    call Call_000_1723
    ldh a, [$fa]
    res 2, a
    ldh [$fa], a
    ret


jr_00f_5350:
    call Call_00f_555f
    ret z

    ld hl, $d01b
    call Call_00f_532b
    ld hl, $c494
    ld bc, $040e
    di
    call Call_000_16f0
    ld hl, $c494
    ld [hl], $7a
    ld hl, $c49a
    ld [hl], $7e
    ei
    ld hl, $c4aa
    call Call_00f_533d
    ld b, $05
    ld a, $0c
    jr jr_00f_53b8

jr_00f_537b:
    ld hl, $cfec
    call Call_00f_532b
    ld hl, $c42c
    ld bc, $040e
    call Call_000_16f0
    ld hl, $c442
    call Call_00f_533d
    ld b, $01
    ld a, $07
    jr jr_00f_53b8

jr_00f_5396:
    ld a, [$cf91]
    ld hl, $d172
    ld bc, $002c
    call Call_000_3a74
    call Call_00f_532b
    ld hl, $c430
    ld bc, $040e
    call Call_000_16f0
    ld hl, $c446
    call Call_00f_533d
    ld b, $05
    ld a, $07

jr_00f_53b8:
    ld hl, $cc24
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, [$ccdb]
    cp $01
    jr z, jr_00f_53c9

    ld a, [$cc2e]
    inc a

jr_00f_53c9:
    ld [hl+], a
    inc hl
    ld a, [$cd6c]
    inc a
    inc a
    ld [hl+], a
    ld a, [$ccdb]
    dec a
    ld b, $c1
    jr z, jr_00f_53f0

    dec a
    ld b, $c3
    jr z, jr_00f_53f0

    ld a, [$d12a]
    cp $04
    jr z, jr_00f_53f0

    ld a, [$d732]
    bit 0, a
    ld b, $c7
    jr z, jr_00f_53f0

    ld b, $ff

jr_00f_53f0:
    ld a, b
    ld [hl+], a
    ld a, [$ccdb]
    cp $01
    jr z, jr_00f_53fd

    ld a, [$cc2e]
    inc a

jr_00f_53fd:
    ld [hl], a

Jump_00f_53fe:
    ld a, [$ccdb]
    and a
    jr z, jr_00f_5412

    dec a
    jr nz, jr_00f_542e

    ld hl, $c4b9
    ld de, $54b8
    call Call_000_1723
    jr jr_00f_542e

jr_00f_5412:
    ld a, [$d732]
    bit 0, a
    jr nz, jr_00f_542e

    call Call_00f_5629
    ld a, [$cc35]
    and a
    jr z, jr_00f_542e

    ld hl, $c4a9
    dec a
    ld bc, $0014
    call Call_000_3a74
    ld [hl], $ec

jr_00f_542e:
    ld hl, $fffa
    set 1, [hl]
    call Call_000_3aab
    ld hl, $fffa
    res 1, [hl]
    bit 6, a
    jp nz, Jump_00f_54c9

    bit 7, a
    jp nz, Jump_00f_54dd

    bit 2, a
    jp nz, Jump_00f_55a0

    bit 1, a
    push af
    xor a
    ld [$cc35], a
    ld a, [$cc26]
    dec a
    ld [$cc26], a
    ld b, a
    ld a, [$ccdb]
    dec a
    jr nz, jr_00f_5461

    pop af
    ret


jr_00f_5461:
    dec a
    ld a, b
    ld [$cc2e], a
    jr nz, jr_00f_546a

    pop af
    ret


jr_00f_546a:
    pop af
    ret nz

    ld hl, $d02c
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $3f
    jr z, jr_00f_54a2

    ld a, [$d06c]
    swap a
    and $0f
    dec a
    cp c
    jr z, jr_00f_549d

    ld a, [$d063]
    bit 3, a
    jr nz, jr_00f_548d

jr_00f_548d:
    ld a, [$cc26]
    ld hl, $d01b
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$ccdc], a
    xor a
    ret


jr_00f_549d:
    ld hl, $54b3
    jr jr_00f_54a5

jr_00f_54a2:
    ld hl, $54ae

jr_00f_54a5:
    call Call_000_3c36
    call Call_000_371b
    jp Jump_00f_5320


    rla
    ld c, d
    ld [hl], a
    daa
    ld d, b
    rla
    ld h, l
    ld [hl], a
    daa
    ld d, b
    sub [hl]
    add a
    adc b
    add d
    add a
    ld a, a
    sub e
    add h
    add d
    add a
    adc l
    adc b
    sub b
    sub h
    add h
    and $50

Jump_00f_54c9:
    ld a, [$cc26]
    and a
    jp nz, Jump_00f_53fe

    call Call_000_3be6
    ld a, [$cd6c]
    inc a
    ld [$cc26], a
    jp Jump_00f_53fe


Jump_00f_54dd:
    ld a, [$cc26]
    ld b, a
    ld a, [$cd6c]
    inc a
    inc a
    cp b
    jp nz, Jump_00f_53fe

    call Call_000_3be6
    ld a, $01
    ld [$cc26], a
    jp Jump_00f_53fe


    bit 3, a
    ld a, $00
    jr nz, jr_00f_54fd

    ld a, $01

jr_00f_54fd:
    ldh [$f3], a
    call Call_000_371b
    call Call_00f_5536
    ld a, [$ccd9]
    and a
    jp z, Jump_00f_5320

    ld [$d07b], a
    xor a
    ld [$cc5b], a
    ld a, $08
    call Call_000_3eb4
    ld hl, $4e98
    ld b, $1e
    call Call_000_3e84
    jp Jump_00f_5320


    ld a, [$ccd9]
    dec a
    jr jr_00f_552d

    ld a, [$ccd9]
    inc a

jr_00f_552d:
    ld [$ccd9], a
    call Call_00f_5536
    jp Jump_00f_5320


Call_00f_5536:
    ld hl, $c4ea
    ld bc, $020a
    call Call_000_1692
    ld hl, $c4fe
    ld de, $ccd9
    ld bc, $8103
    call Call_000_3c5b
    ld a, [$ccd9]
    and a
    ret z

    cp $a5
    ret nc

    ld [$d11d], a
    call Call_000_2f4d
    ld hl, $c501
    jp Jump_000_1723


Call_00f_555f:
    ld a, $a5
    ld [$ccdc], a
    ld a, [$d06c]
    and a
    ld hl, $d02c
    jr nz, jr_00f_5578

    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    and $3f
    ret nz

    jr jr_00f_558e

jr_00f_5578:
    swap a
    and $0f
    ld b, a
    ld d, $05
    xor a

jr_00f_5580:
    dec d
    jr z, jr_00f_558b

    ld c, [hl]
    inc hl
    dec b
    jr z, jr_00f_5580

    or c
    jr jr_00f_5580

jr_00f_558b:
    and $3f
    ret nz

jr_00f_558e:
    ld hl, $559b
    call Call_000_3c36
    ld c, $3c
    call Call_000_372f
    xor a
    ret


    rla
    ld a, h
    ld [hl], a
    daa
    ld d, b

Jump_00f_55a0:
    ld a, [$d063]
    bit 3, a
    jp nz, Jump_00f_5320

    ld a, [$cc35]
    and a
    jr z, jr_00f_5620

    ld hl, $d01b
    call Call_00f_5606
    ld hl, $d02c
    call Call_00f_5606
    ld hl, $d06c
    ld a, [hl]
    swap a
    and $0f
    ld b, a
    ld a, [$cc26]
    cp b
    jr nz, jr_00f_55d6

    ld a, [hl]
    and $0f
    ld b, a
    ld a, [$cc35]
    swap a
    add b
    ld [hl], a
    jr jr_00f_55e7

jr_00f_55d6:
    ld a, [$cc35]
    cp b
    jr nz, jr_00f_55e7

    ld a, [hl]
    and $0f
    ld b, a
    ld a, [$cc26]
    swap a
    add b
    ld [hl], a

jr_00f_55e7:
    ld hl, $d172
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a74
    push hl
    call Call_00f_5606
    pop hl
    ld bc, $0015
    add hl, bc
    call Call_00f_5606
    xor a
    ld [$cc35], a
    jp Jump_00f_5320


Call_00f_5606:
    push hl
    ld a, [$cc35]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$cc26]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    ld b, [hl]
    ld [hl], a
    ld a, b
    ld [de], a
    ret


jr_00f_5620:
    ld a, [$cc26]
    ld [$cc35], a
    jp Jump_00f_5320


Call_00f_5629:
    xor a
    ldh [$ba], a
    ld hl, $c440
    ld bc, $0309
    call Call_000_16f0
    ld a, [$d06c]
    and a
    jr z, jr_00f_5651

    swap a
    and $0f
    ld b, a
    ld a, [$cc26]
    cp b
    jr nz, jr_00f_5651

    ld hl, $c469
    ld de, $56c7
    call Call_000_1723
    jr jr_00f_56c0

jr_00f_5651:
    ld hl, $cc26
    dec [hl]
    xor a
    ldh [$f3], a
    ld hl, $d01b
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$ccdc], a
    ld a, [$cc2f]
    ld [$cf91], a
    ld a, $04
    ld [$cc49], a
    ld hl, $65bb
    ld b, $03
    call Call_000_3e84
    ld hl, $cc26
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $d02c
    add hl, bc
    ld a, [hl]
    and $3f
    ld [$cd6d], a
    ld hl, $c455
    ld de, $56d1
    call Call_000_1723
    ld hl, $c483
    ld [hl], $f3
    ld hl, $c459
    ld [hl], $f3
    ld hl, $c481
    ld de, $cd6d
    ld bc, $0102
    call Call_000_3c5b
    ld hl, $c484
    ld de, $d11d
    ld bc, $0102
    call Call_000_3c5b
    call Call_00f_6c44
    ld hl, $c46a
    ld a, $5d
    call Call_000_3eb4

jr_00f_56c0:
    ld a, $01
    ldh [$ba], a
    jp Jump_000_3ddb


    add e
    xor b
    or d
    and b
    and c
    xor e
    and h
    and e
    rst $20
    ld d, b
    sub e
    sbc b
    adc a
    add h
    ld d, b

Call_00f_56d6:
    ld a, [$d12a]
    sub $04
    jr nz, jr_00f_5702

    call Call_000_370f
    call Call_00f_5777
    call Call_000_371b
    ld a, [$cc3e]
    cp $0e
    jp z, Jump_00f_5773

    cp $0d
    jr z, jr_00f_5722

    cp $04
    ret nc

    ld [$cce2], a
    ld c, a
    ld hl, $cfec
    ld b, $00
    add hl, bc
    ld a, [hl]
    jr jr_00f_576f

jr_00f_5702:
    ld a, [$d067]
    and $60
    ret nz

    ld hl, $d066
    ld a, [hl]
    and $12
    ret nz

    ld a, [$cfe8]
    and $27
    ret nz

    ld a, [$d066]
    and $21
    ret nz

    ld a, [$d061]
    bit 5, a
    jr z, jr_00f_5726

jr_00f_5722:
    ld a, $ff
    jr jr_00f_576f

jr_00f_5726:
    ld hl, $cfed
    ld a, [hl-]
    and a
    jr nz, jr_00f_5735

    ld a, [$d071]
    and a
    ld a, $a5
    jr nz, jr_00f_576f

jr_00f_5735:
    ld a, [$d056]
    dec a
    jr z, jr_00f_5743

    ld hl, $569c
    ld b, $0e
    call Call_000_3e84

jr_00f_5743:
    push hl
    call Call_00f_7027
    ld b, $01
    cp $3f
    jr c, jr_00f_575b

    inc hl
    inc b
    cp $7f
    jr c, jr_00f_575b

    inc hl
    inc b
    cp $be
    jr c, jr_00f_575b

    inc hl
    inc b

jr_00f_575b:
    ld a, b
    dec a
    ld [$cce2], a
    ld a, [$d071]
    swap a
    and $0f
    cp b
    ld a, [hl]
    pop hl
    jr z, jr_00f_5743

    and a
    jr z, jr_00f_5743

jr_00f_576f:
    ld [$ccdd], a
    ret


Jump_00f_5773:
    ld a, $a5
    jr jr_00f_576f

Call_00f_5777:
    ld a, $ff
    ld [$cc3e], a
    ld a, [$cc2e]
    cp $0f
    jr z, jr_00f_57a2

    ld a, [$cd6a]
    and a
    jr nz, jr_00f_579b

    ld a, [$ccdc]
    cp $a5
    ld b, $0e
    jr z, jr_00f_57a1

    dec b
    inc a
    jr z, jr_00f_57a1

    ld a, [$cc2e]
    jr jr_00f_57a2

jr_00f_579b:
    ld a, [$cf91]
    add $04
    ld b, a

jr_00f_57a1:
    ld a, b

jr_00f_57a2:
    ld [$cc42], a
    ld hl, $4b89
    ld b, $01
    call Call_000_3e84

jr_00f_57ad:
    call Call_000_211f
    call Call_000_1e64
    ld a, [$cc3e]
    inc a
    jr z, jr_00f_57ad

    ld b, $0a

jr_00f_57bb:
    call Call_000_1e64
    call Call_000_211f
    dec b
    jr nz, jr_00f_57bb

    ld b, $0a

jr_00f_57c6:
    call Call_000_1e64
    call Call_000_2149
    dec b
    jr nz, jr_00f_57c6

    ret


Call_00f_57d0:
    xor a
    ldh [$f3], a
    ld a, [$ccdc]
    inc a
    jp z, Jump_00f_597c

    xor a
    ld [$d05e], a
    ld [$cced], a
    ld [$ccf4], a
    ld a, $0a
    ld [$d05a], a
    ld a, [$cd6a]
    and a
    jp nz, Jump_00f_597c

    call Call_00f_5983
    jp z, Jump_00f_597c

    call Call_00f_59c6
    jr nz, jr_00f_57fc

    jp hl


jr_00f_57fc:
    call Call_00f_6c44
    ld hl, $d061
    bit 4, [hl]
    jr nz, jr_00f_581b

    call Call_00f_5dfa
    jp z, Jump_00f_597c

Jump_00f_580c:
    ld a, [$cfd2]
    cp $27
    jp z, Jump_00f_70a7

    cp $2b
    jp z, Jump_00f_70a7

    jr jr_00f_5822

jr_00f_581b:
    ld hl, $d061
    res 4, [hl]
    res 6, [hl]

jr_00f_5822:
    call Call_00f_5c67
    ld hl, $42db
    ld de, $ccdc
    ld b, $3d
    call Call_000_3e84
    ld a, [$cfd2]
    ld hl, $4000
    ld de, $0001
    call Call_000_3da7
    jp c, Jump_00f_70a7

    ld a, [$cfd2]
    ld hl, $4049
    ld de, $0001
    call Call_000_3da7
    call c, Call_00f_70a7
    ld a, [$cfd2]
    ld hl, $4011
    ld de, $0001
    call Call_000_3da7
    jp c, Jump_00f_5874

    call Call_00f_6195
    call Call_00f_6205
    jr z, jr_00f_5877

    call Call_00f_5f41
    call Call_00f_60d7
    jp z, Jump_00f_58bd

    call Call_00f_6517
    call Call_00f_680d

Jump_00f_5874:
    call Call_00f_66f1

jr_00f_5877:
    ld a, [$d05e]
    and a
    jr z, jr_00f_5886

    ld a, [$cfd2]
    sub $07
    jr z, jr_00f_5890

    jr jr_00f_58bd

Jump_00f_5886:
jr_00f_5886:
    ld a, [$cfd2]
    and a
    ld a, $04
    jr z, jr_00f_5890

    ld a, $05

jr_00f_5890:
    push af
    ld a, [$d062]
    bit 4, a
    ld hl, $5816
    ld b, $1e
    call nz, Call_000_3e84
    pop af
    ld [$cc5b], a
    ld a, [$cfd1]
    call Call_00f_7093
    call Call_00f_705f
    call Call_00f_4e25
    ld a, [$d062]
    bit 4, a
    ld hl, $58b2
    ld b, $1e
    call nz, Call_000_3e84
    jr jr_00f_58d8

Jump_00f_58bd:
jr_00f_58bd:
    ld c, $1e
    call Call_000_372f
    ld a, [$cfd2]
    cp $2b
    jr z, jr_00f_58cf

    cp $27
    jr z, jr_00f_58cf

    jr jr_00f_58d8

jr_00f_58cf:
    xor a
    ld [$cc5b], a
    ld a, $a7
    call Call_00f_7093

jr_00f_58d8:
    ld a, [$cfd2]
    cp $09
    jr nz, jr_00f_58ec

    call Call_00f_646f
    jp z, Jump_00f_597c

    xor a
    ld [$cced], a
    jp Jump_00f_580c


jr_00f_58ec:
    cp $53
    jr nz, jr_00f_58f6

    call Call_00f_64ba
    jp Jump_00f_580c


jr_00f_58f6:
    ld a, [$cfd2]
    ld hl, $4014
    ld de, $0001
    call Call_000_3da7
    jp c, Jump_00f_70a7

    ld a, [$d05e]
    and a
    jr z, jr_00f_5918

    call Call_00f_5d54
    ld a, [$cfd2]
    cp $07
    jr z, jr_00f_592b

    jp Jump_00f_597c


jr_00f_5918:
    call Call_00f_6251
    call Call_00f_5dce
    ld hl, $7d25
    ld b, $0b
    call Call_000_3e84
    ld a, $01
    ld [$ccf4], a

jr_00f_592b:
    ld a, [$cfd2]
    ld hl, $4030
    ld de, $0001
    call Call_000_3da7
    call c, Call_00f_70a7
    ld hl, $cfe5
    ld a, [hl+]
    ld b, [hl]
    or b
    ret z

    call Call_00f_6428
    ld hl, $d061
    bit 2, [hl]
    jr z, jr_00f_5961

    ld a, [$d069]
    dec a
    ld [$d069], a
    jp nz, Jump_00f_5886

    res 2, [hl]
    ld hl, $5977
    call Call_000_3c36
    xor a
    ld [$d073], a

jr_00f_5961:
    ld a, [$cfd2]
    and a
    jp z, Jump_00f_597c

    ld hl, $403b
    ld de, $0001
    call Call_000_3da7
    call nc, Call_00f_70a7
    jp Jump_00f_597c


    rla
    sub h
    ld [hl], a
    daa
    ld d, b

Jump_00f_597c:
    xor a
    ld [$cd6a], a
    ld b, $01
    ret


Call_00f_5983:
    call Call_00f_59ac
    ret nz

    ldh a, [$f3]
    and a
    jr nz, jr_00f_599a

    ld a, [$d017]
    and $27
    ret nz

    ld hl, $59a2
    call Call_000_3c36
    xor a
    ret


jr_00f_599a:
    ld hl, $59a7
    call Call_000_3c36
    xor a
    ret


    rla
    or c
    ld [hl], a
    daa
    ld d, b
    rla
    call $2777
    ld d, b

Call_00f_59ac:
    ld a, [$d056]
    dec a
    ret nz

    ld a, [$d35d]
    cp $8e
    jr c, jr_00f_59c2

    cp $95
    jr nc, jr_00f_59c2

    ld b, $48
    call Call_000_3422
    ret z

jr_00f_59c2:
    ld a, $01
    and a
    ret


Call_00f_59c6:
    ld hl, $d017
    ld a, [hl]
    and $07
    jr z, jr_00f_59f6

    dec a
    ld [$d017], a
    and a
    jr z, jr_00f_59e6

    xor a
    ld [$cc5b], a
    ld a, $bc
    call Call_00f_7093
    ld hl, $5baf
    call Call_000_3c36
    jr jr_00f_59ec

jr_00f_59e6:
    ld hl, $5bb4
    call Call_000_3c36

jr_00f_59ec:
    xor a
    ld [$ccf1], a
    ld hl, $597c
    jp Jump_00f_5ba9


jr_00f_59f6:
    bit 5, [hl]
    jr z, jr_00f_5a0a

    ld hl, $5bb9
    call Call_000_3c36
    xor a
    ld [$ccf1], a
    ld hl, $597c
    jp Jump_00f_5ba9


jr_00f_5a0a:
    ld a, [$d066]
    bit 5, a
    jp z, Jump_00f_5a1e

    ld hl, $5bf5
    call Call_000_3c36
    ld hl, $597c
    jp Jump_00f_5ba9


Jump_00f_5a1e:
    ld hl, $d061
    bit 3, [hl]
    jp z, Jump_00f_5a34

    res 3, [hl]
    ld hl, $5bc3
    call Call_000_3c36
    ld hl, $597c
    jp Jump_00f_5ba9


Jump_00f_5a34:
    ld hl, $d062
    bit 5, [hl]
    jr z, jr_00f_5a49

    res 5, [hl]
    ld hl, $5bc8
    call Call_000_3c36
    ld hl, $597c
    jp Jump_00f_5ba9


jr_00f_5a49:
    ld hl, $d06c
    ld a, [hl]
    and a
    jr z, jr_00f_5a60

    dec a
    ld [hl], a
    and $0f
    jr nz, jr_00f_5a60

    ld [hl], a
    ld [$ccee], a
    ld hl, $5bcd
    call Call_000_3c36

jr_00f_5a60:
    ld a, [$d061]
    add a
    jr nc, jr_00f_5a9b

    ld hl, $d06a
    dec [hl]
    jr nz, jr_00f_5a79

    ld hl, $d061
    res 7, [hl]
    ld hl, $5bdc
    call Call_000_3c36
    jr jr_00f_5a9b

jr_00f_5a79:
    ld hl, $5bd2
    call Call_000_3c36
    xor a
    ld [$cc5b], a
    ld a, $be
    call Call_00f_7093
    call Call_00f_7027
    cp $80
    jr c, jr_00f_5a9b

    ld hl, $d061
    ld a, [hl]
    and $80
    ld [hl], a
    call Call_00f_5c1f
    jr jr_00f_5ac4

jr_00f_5a9b:
    ld a, [$ccee]
    and a
    jr z, jr_00f_5ab0

    ld hl, $ccdc
    cp [hl]
    jr nz, jr_00f_5ab0

    call Call_00f_5bfa
    ld hl, $597c
    jp Jump_00f_5ba9


jr_00f_5ab0:
    ld hl, $d017
    bit 6, [hl]
    jr z, jr_00f_5ae7

    call Call_00f_7027
    cp $3f
    jr nc, jr_00f_5ae7

    ld hl, $5bbe
    call Call_000_3c36

jr_00f_5ac4:
    ld hl, $d061
    ld a, [hl]
    and $cc
    ld [hl], a
    ld a, [$cfd2]
    cp $2b
    jr z, jr_00f_5ad8

    cp $27
    jr z, jr_00f_5ad8

    jr jr_00f_5ae1

jr_00f_5ad8:
    xor a
    ld [$cc5b], a
    ld a, $a7
    call Call_00f_7093

jr_00f_5ae1:
    ld hl, $597c
    jp Jump_00f_5ba9


jr_00f_5ae7:
    ld hl, $d061
    bit 0, [hl]
    jr z, jr_00f_5b42

    xor a
    ld [$cfd1], a
    ld hl, $d0d6
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $d074
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld hl, $d069
    dec [hl]
    jr z, jr_00f_5b0d

    ld hl, $597c
    jp Jump_00f_5ba9


jr_00f_5b0d:
    ld hl, $d061
    res 0, [hl]
    ld hl, $5be6
    call Call_000_3c36
    ld a, $01
    ld [$cfd3], a
    ld hl, $d074
    ld a, [hl-]
    add a
    ld b, a
    ld [$d0d7], a
    ld a, [hl]
    rl a
    ld [$d0d6], a
    or b
    jr nz, jr_00f_5b34

    ld a, $01
    ld [$d05e], a

jr_00f_5b34:
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $75
    ld [$cfd1], a
    ld hl, $5877
    jp Jump_00f_5ba9


jr_00f_5b42:
    bit 1, [hl]
    jr z, jr_00f_5b71

    ld a, $25
    ld [$cfd1], a
    ld hl, $5beb
    call Call_000_3c36
    ld hl, $d069
    dec [hl]
    ld hl, $584e
    jp nz, Jump_00f_5ba9

    push hl
    ld hl, $d061
    res 1, [hl]
    set 7, [hl]
    call Call_00f_7027
    and $03
    inc a
    inc a
    ld [$d06a], a
    pop hl
    jp Jump_00f_5ba9


jr_00f_5b71:
    bit 5, [hl]
    jp z, Jump_00f_5b8c

    ld hl, $5bf0
    call Call_000_3c36
    ld a, [$d069]
    dec a
    ld [$d069], a
    ld hl, $5886
    jp nz, Jump_00f_5ba9

    jp Jump_00f_5ba9


Jump_00f_5b8c:
    ld a, [$d062]
    bit 6, a
    jp z, Jump_00f_5bab

    ld a, $63
    ld [$d11d], a
    call Call_000_2f4d
    call Call_000_3813
    xor a
    ld [$cfd2], a
    ld hl, $5822
    jp Jump_00f_5ba9


Jump_00f_5ba9:
    xor a
    ret


Jump_00f_5bab:
    ld a, $01
    and a
    ret


    rla
    db $eb
    ld [hl], a
    daa
    ld d, b
    rla
    cp $77
    daa
    ld d, b
    rla
    ld a, [bc]
    ld a, b
    daa
    ld d, b
    rla
    ld e, $78
    daa
    ld d, b
    rla
    inc sp
    ld a, b
    daa
    ld d, b
    rla
    ld b, b
    ld a, b
    daa
    ld d, b
    rla
    ld d, d
    ld a, b
    daa
    ld d, b
    rla
    ld l, b
    ld a, b
    daa
    ld d, b
    rla
    ld a, b
    ld a, b
    daa
    ld d, b
    rla
    sbc d
    ld a, b
    daa
    ld d, b
    rla
    or b
    ld a, b
    daa
    ld d, b
    rla
    push bc
    ld a, b
    daa
    ld d, b
    rla
    jp c, Jump_000_2778

    ld d, b
    rla
    rst $28
    ld a, b
    daa
    ld d, b
    rla
    dec b
    ld a, c
    daa
    ld d, b

Call_00f_5bfa:
    ld hl, $ccdc
    ld de, $d061
    ldh a, [$f3]
    and a
    jr z, jr_00f_5c09

    inc hl
    ld de, $d066

jr_00f_5c09:
    ld a, [de]
    res 4, a
    ld [de], a
    ld a, [hl]
    ld [$d11d], a
    call Call_000_2f4d
    ld hl, $5c1a
    jp Jump_000_3c36


    rla
    inc de
    ld a, c
    daa
    ld d, b

Call_00f_5c1f:
    ld hl, $5bd7
    call Call_000_3c36
    ld hl, $cff7
    ld a, [hl+]
    push af
    ld a, [hl-]
    push af
    ld a, [$d026]
    ld [hl+], a
    ld a, [$d027]
    ld [hl], a
    ld hl, $cfd2
    push hl
    ld a, [hl]
    push af
    xor a
    ld [hl+], a
    ld [$d05d], a
    ld a, $28
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_00f_5f41
    call Call_00f_60d7
    pop af
    pop hl
    ld [hl], a
    ld hl, $cff8
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    xor a
    ld [$cc5b], a
    inc a
    ldh [$f3], a
    call Call_00f_7093
    call Call_00f_4e25
    xor a
    ldh [$f3], a
    jp Jump_00f_6372


Call_00f_5c67:
    ld hl, $5c6d
    jp Jump_000_3c36


    rla
    ld a, [hl+]
    ld a, c
    daa
    ld [$f3f0], sp
    and a
    ld a, [$cfd1]
    ld hl, $ccf1
    jr z, jr_00f_5c83

    ld a, [$cfcb]
    ld hl, $ccf2

jr_00f_5c83:
    ld [hl], a
    ld [$d11d], a
    call Call_00f_5cf7
    ld a, [$cced]
    and a
    ld hl, $5ca6
    ret nz

    ld a, [$d11d]
    cp $03
    ld hl, $5ca6
    ret c

    ld hl, $5c9f
    ret


    rla
    ld l, $79
    daa
    ld [$0518], sp
    rla
    scf
    ld a, c
    daa
    ld [$edfa], sp
    call z, $28a7
    add hl, bc
    ld hl, $5cb5
    ret


    rla
    ld b, b
    ld a, c
    daa
    ld [$be21], sp
    ld e, h
    ret


    rla
    ld c, h
    ld a, c
    daa
    ld [$d421], sp
    ld e, h
    ld a, [$d11d]
    add a
    push bc
    ld b, $00
    ld c, a
    add hl, bc
    pop bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    sbc $5c
    db $e3
    ld e, h
    add sp, $5c
    db $ed
    ld e, h
    ld a, [c]
    ld e, h
    rla
    ld d, c
    ld a, c
    daa
    ld d, b
    rla
    ld d, h
    ld a, c
    daa
    ld d, b
    rla
    ld d, a
    ld a, c
    daa
    ld d, b
    rla
    ld e, d
    ld a, c
    daa
    ld d, b
    rla
    ld e, l
    ld a, c
    daa
    ld d, b

Call_00f_5cf7:
    push bc
    ld a, [$d11d]
    ld c, a
    ld b, $00
    ld hl, $5d15

jr_00f_5d01:
    ld a, [hl+]
    cp $ff
    jr z, jr_00f_5d0f

    cp c
    jr z, jr_00f_5d0f

    and a
    jr nz, jr_00f_5d01

    inc b
    jr jr_00f_5d01

jr_00f_5d0f:
    ld a, b
    ld [$d11d], a
    pop bc
    ret


    ld c, $4a
    nop
    ld l, c
    ld a, b
    add l
    nop
    ld h, b
    ld h, c
    ld h, h
    ld h, [hl]
    ld l, b
    ld [hl], l
    adc h
    nop
    ld bc, $0b0a
    ld de, $1413
    dec d
    ld e, $22
    inc hl
    dec h
    daa
    dec hl
    inc l
    dec l
    ld l, $2f
    ld b, b
    ld b, h
    ld b, [hl]
    ld b, a
    ld d, c
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld h, a
    ld l, d
    ld l, e
    ld l, [hl]
    ld l, a
    db $76
    ld a, d
    add b
    add h
    adc e
    adc l
    sub c
    sub h
    sub [hl]
    sub a
    sbc d
    sbc h
    sbc a
    and e
    and h
    nop
    rst $38

Call_00f_5d54:
    ld de, $cfd2
    ldh a, [$f3]
    and a
    jr z, jr_00f_5d5f

    ld de, $cfcc

jr_00f_5d5f:
    ld hl, $5dc9
    ld a, [$d05a]
    and $7f
    jr z, jr_00f_5d76

    ld hl, $5db4
    ld a, [$d05d]
    cp $ff
    jr nz, jr_00f_5d76

    ld hl, $5dbe

jr_00f_5d76:
    push de
    call Call_000_3c36
    xor a
    ld [$d05d], a
    pop de
    ld a, [de]
    cp $2d
    ret nz

    ld hl, $d0d6
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    srl a
    rr b
    ld [hl], b
    dec hl
    ld [hl+], a
    or b
    jr nz, jr_00f_5d9c

    inc a
    ld [hl], a

jr_00f_5d9c:
    ld hl, $5db9
    call Call_000_3c36
    ld b, $04
    ld a, $24
    call Call_000_3eb4
    ldh a, [$f3]
    and a
    jr nz, jr_00f_5db1

    jp Jump_00f_6372


jr_00f_5db1:
    jp Jump_00f_62b4


    rla
    ld h, b
    ld a, c
    daa
    ld d, b
    rla
    ld [hl], e
    ld a, c
    daa
    ld d, b
    rla
    adc [hl]
    ld a, c
    daa
    ld d, b
    ld hl, $5dc9
    jp Jump_000_3c36


    rla
    sbc [hl]
    ld a, c
    daa
    ld d, b

Call_00f_5dce:
    ld a, [$d05d]
    and a
    jr z, jr_00f_5de7

    dec a
    add a
    ld hl, $5dec
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c36
    xor a
    ld [$d05d], a

jr_00f_5de7:
    ld c, $14
    jp Jump_000_372f


    ldh a, [$5d]
    push af
    ld e, l
    rla
    or e
    ld a, c
    daa
    ld d, b
    rla
    jp nz, $2779

    ld d, b

Call_00f_5dfa:
    xor a
    ld [$cced], a
    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_5e09

    ld a, $01
    and a
    ret


jr_00f_5e09:
    ld hl, $d176
    ld bc, $002c
    ld a, [$cc2f]
    call Call_000_3a74
    ld a, [$d358]
    cp [hl]
    jr nz, jr_00f_5e23

    inc hl
    ld a, [$d359]
    cp [hl]
    jp z, Jump_00f_5f22

jr_00f_5e23:
    ld hl, $d355
    bit 7, [hl]
    ld a, $65
    jr nz, jr_00f_5e40

    bit 5, [hl]
    ld a, $46
    jr nz, jr_00f_5e40

    bit 3, [hl]
    ld a, $32
    jr nz, jr_00f_5e40

    bit 1, [hl]
    ld a, $1e
    jr nz, jr_00f_5e40

    ld a, $0a

jr_00f_5e40:
    ld b, a
    ld c, a
    ld a, [$d021]
    ld d, a
    add b
    ld b, a
    jr nc, jr_00f_5e4c

    ld b, $ff

jr_00f_5e4c:
    ld a, c
    cp d
    jp nc, Jump_00f_5f22

jr_00f_5e51:
    call Call_00f_7027
    swap a
    cp b
    jr nc, jr_00f_5e51

    cp c
    jp c, Jump_00f_5f22

jr_00f_5e5d:
    call Call_00f_7027
    cp b
    jr nc, jr_00f_5e5d

    cp c
    jr c, jr_00f_5eb1

    ld a, d
    sub c
    ld b, a
    call Call_00f_7027
    swap a
    sub b
    jr c, jr_00f_5e80

    cp b
    jr nc, jr_00f_5e92

    ld hl, $5f32
    call Call_000_3c36
    call Call_00f_5c1f
    jp Jump_00f_5f26


jr_00f_5e80:
    call Call_00f_7027
    add a
    swap a
    and $07
    jr z, jr_00f_5e80

    ld [$d017], a
    ld hl, $5f2d
    jr jr_00f_5eac

jr_00f_5e92:
    call Call_00f_7027
    and $03
    ld hl, $5f28
    and a
    jr z, jr_00f_5eac

    ld hl, $5f32
    dec a
    jr z, jr_00f_5eac

    ld hl, $5f37
    dec a
    jr z, jr_00f_5eac

    ld hl, $5f3c

jr_00f_5eac:
    call Call_000_3c36
    jr jr_00f_5f26

jr_00f_5eb1:
    ld a, [$d01c]
    and a
    jr z, jr_00f_5e92

    ld a, [$ccee]
    and a
    jr nz, jr_00f_5e92

    ld a, [$ccdc]
    cp $a5
    jr z, jr_00f_5e92

    ld hl, $d02c
    push hl
    ld a, [hl+]
    and $3f
    ld b, a
    ld a, [hl+]
    and $3f
    add b
    ld b, a
    ld a, [hl+]
    and $3f
    add b
    ld b, a
    ld a, [hl]
    and $3f
    add b
    pop hl
    push af
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $3f
    ld b, a
    pop af
    cp b
    jr z, jr_00f_5e92

    ld a, $01
    ld [$cced], a
    ld a, [$cc28]
    ld b, a
    ld a, [$cc26]
    ld c, a

jr_00f_5ef8:
    call Call_00f_7027
    and $03
    cp b
    jr nc, jr_00f_5ef8

    cp c
    jr z, jr_00f_5ef8

    ld [$cc26], a
    ld hl, $d02c
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_00f_5ef8

    ld a, [$cc26]
    ld c, a
    ld b, $00
    ld hl, $d01b
    add hl, bc
    ld a, [hl]
    ld [$ccdc], a
    call Call_00f_6c44

Jump_00f_5f22:
    ld a, $01
    and a
    ret


Jump_00f_5f26:
jr_00f_5f26:
    xor a
    ret


    rla
    rst $08
    ld a, c
    daa
    ld d, b
    rla
    rst $20
    ld a, c
    daa
    ld d, b
    rla
    ld a, [$2779]
    ld d, b
    rla
    ld a, [bc]
    ld a, d
    daa
    ld d, b
    rla
    inc e
    ld a, d
    daa
    ld d, b

Call_00f_5f41:
    xor a
    ld hl, $d0d6
    ld [hl+], a
    ld [hl], a
    ld hl, $cfd3
    ld a, [hl+]
    and a
    ld d, a
    ret z

    ld a, [hl]
    cp $14
    jr nc, jr_00f_5f88

    ld hl, $cff7
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$d068]
    bit 2, a
    jr z, jr_00f_5f64

    sla c
    rl b

jr_00f_5f64:
    ld hl, $d024
    ld a, [$d05d]
    and a
    jr z, jr_00f_5fbb

    ld c, $03
    call Call_00f_608e
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    ld c, a
    push bc
    ld hl, $d18e
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a74
    pop bc
    jr jr_00f_5fbb

jr_00f_5f88:
    ld hl, $cffb
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$d068]
    bit 1, a
    jr z, jr_00f_5f99

    sla c
    rl b

jr_00f_5f99:
    ld hl, $d02a
    ld a, [$d05d]
    and a
    jr z, jr_00f_5fbb

    ld c, $05
    call Call_00f_608e
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    ld c, a
    push bc
    ld hl, $d194
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a74
    pop bc

jr_00f_5fbb:
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    or b
    jr z, jr_00f_5fd6

    srl b
    rr c
    srl b
    rr c
    srl h
    rr l
    srl h
    rr l
    ld a, l
    or h
    jr nz, jr_00f_5fd6

    inc l

jr_00f_5fd6:
    ld b, l
    ld a, [$d021]
    ld e, a
    ld a, [$d05d]
    and a
    jr z, jr_00f_5fe3

    sla e

jr_00f_5fe3:
    ld a, $01
    and a
    ret


Call_00f_5fe7:
    ld hl, $d0d6
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $cfcd
    ld a, [hl+]
    ld d, a
    and a
    ret z

    ld a, [hl]
    cp $14
    jr nc, jr_00f_602e

    ld hl, $d026
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$d063]
    bit 2, a
    jr z, jr_00f_600a

    sla c
    rl b

jr_00f_600a:
    ld hl, $cff5
    ld a, [$d05d]
    and a
    jr z, jr_00f_6061

    ld hl, $d190
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    push bc
    ld c, $02
    call Call_00f_608e
    ld hl, $ff97
    pop bc
    jr jr_00f_6061

jr_00f_602e:
    ld hl, $d02a
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$d063]
    bit 1, a
    jr z, jr_00f_603f

    sla c
    rl b

jr_00f_603f:
    ld hl, $cffb
    ld a, [$d05d]
    and a
    jr z, jr_00f_6061

    ld hl, $d194
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    push bc
    ld c, $05
    call Call_00f_608e
    ld hl, $ff97
    pop bc

jr_00f_6061:
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    or b
    jr z, jr_00f_607c

    srl b
    rr c
    srl b
    rr c
    srl h
    rr l
    srl h
    rr l
    ld a, l
    or h
    jr nz, jr_00f_607c

    inc l

jr_00f_607c:
    ld b, l
    ld a, [$cff2]
    ld e, a
    ld a, [$d05d]
    and a
    jr z, jr_00f_6089

    sla e

jr_00f_6089:
    ld a, $01
    and a
    and a
    ret


Call_00f_608e:
    push de
    push bc
    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_60b2

    ld hl, $d8c5
    dec c
    sla c
    ld b, $00
    add hl, bc
    ld a, [$cfe7]
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a
    pop bc
    pop de
    ret


jr_00f_60b2:
    ld a, [$cff2]
    ld [$d126], a
    ld a, [$cfe4]
    ld [$d0b4], a
    call Call_000_132f
    ld hl, $cff0
    ld de, $cfae
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop bc
    ld b, $00
    ld hl, $cfa3
    call Call_000_393f
    pop de
    ret


Call_00f_60d7:
    ldh a, [$f3]
    and a
    ld a, [$cfd2]
    jr z, jr_00f_60e2

    ld a, [$cfcc]

jr_00f_60e2:
    cp $07
    jr nz, jr_00f_60eb

    srl c
    jr nz, jr_00f_60eb

    inc c

jr_00f_60eb:
    cp $1d
    jr z, jr_00f_60fb

    cp $1e
    jr z, jr_00f_60fb

    cp $26
    jp z, Jump_00f_6188

    ld a, d
    and a
    ret z

jr_00f_60fb:
    xor a
    ld hl, $ff95
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, e
    add a
    jr nc, jr_00f_610b

    push af
    ld a, $01
    ld [hl], a
    pop af

jr_00f_610b:
    inc hl
    ld [hl+], a
    ld a, $05
    ld [hl-], a
    push bc
    ld b, $04
    call Call_000_38b2
    pop bc
    inc [hl]
    inc [hl]
    inc hl
    ld [hl], d
    call Call_000_38a5
    ld [hl], b
    call Call_000_38a5
    ld [hl], c
    ld b, $04
    call Call_000_38b2
    ld [hl], $32
    ld b, $04
    call Call_000_38b2
    ld hl, $d0d6
    ld b, [hl]
    ldh a, [$98]
    add b
    ldh [$98], a
    jr nc, jr_00f_6142

    ldh a, [$97]
    inc a
    ldh [$97], a
    and a
    jr z, jr_00f_6176

jr_00f_6142:
    ldh a, [$95]
    ld b, a
    ldh a, [$96]
    or a
    jr nz, jr_00f_6176

    ldh a, [$97]
    cp $03
    jr c, jr_00f_615a

    cp $04
    jr nc, jr_00f_6176

    ldh a, [$98]
    cp $e6
    jr nc, jr_00f_6176

jr_00f_615a:
    inc hl
    ldh a, [$98]
    ld b, [hl]
    add b
    ld [hl-], a
    ldh a, [$97]
    ld b, [hl]
    adc b
    ld [hl], a
    jr c, jr_00f_6176

    ld a, [hl]
    cp $03
    jr c, jr_00f_617c

    cp $04
    jr nc, jr_00f_6176

    inc hl
    ld a, [hl-]
    cp $e6
    jr c, jr_00f_617c

jr_00f_6176:
    ld a, $03
    ld [hl+], a
    ld a, $e5
    ld [hl-], a

jr_00f_617c:
    inc hl
    ld a, [hl]
    add $02
    ld [hl-], a
    jr nc, jr_00f_6184

    inc [hl]

jr_00f_6184:
    ld a, $01
    and a
    ret


Jump_00f_6188:
    call Call_00f_70a7
    ld a, [$d05e]
    dec a
    ret


    ld [bc], a
    ld c, e
    sbc b
    and e
    rst $38

Call_00f_6195:
    xor a
    ld [$d05d], a
    ldh a, [$f3]
    and a
    ld a, [$cfe4]
    jr nz, jr_00f_61a4

    ld a, [$d013]

jr_00f_61a4:
    ld [$d0b4], a
    call Call_000_132f
    ld a, [$d0bb]
    ld b, a
    srl b
    ldh a, [$f3]
    and a
    ld hl, $cfd3
    ld de, $d062
    jr z, jr_00f_61c1

    ld hl, $cfcd
    ld de, $d067

jr_00f_61c1:
    ld a, [hl-]
    and a
    ret z

    dec hl
    ld c, [hl]
    ld a, [de]
    bit 2, a
    jr nz, jr_00f_61d3

    sla b
    jr nc, jr_00f_61d5

    ld b, $ff
    jr jr_00f_61d5

jr_00f_61d3:
    srl b

jr_00f_61d5:
    ld hl, $6200

jr_00f_61d8:
    ld a, [hl+]
    cp c
    jr z, jr_00f_61e3

    inc a
    jr nz, jr_00f_61d8

    srl b
    jr jr_00f_61ef

jr_00f_61e3:
    sla b
    jr nc, jr_00f_61e9

    ld b, $ff

jr_00f_61e9:
    sla b
    jr nc, jr_00f_61ef

    ld b, $ff

jr_00f_61ef:
    call Call_00f_7027
    rlc a
    rlc a
    rlc a
    cp b
    ret nc

    ld a, $01
    ld [$d05d], a
    ret


    ld [bc], a
    ld c, e
    sbc b
    and e
    rst $38

Call_00f_6205:
    ldh a, [$f3]
    and a
    ld hl, $ccdd
    ld de, $cfcd
    ld a, [$ccdc]
    jr z, jr_00f_621c

    ld hl, $ccdc
    ld de, $cfd3
    ld a, [$ccdd]

jr_00f_621c:
    cp $44
    ret nz

    ld a, $01
    ld [$d05e], a
    ld a, [hl]
    cp $44
    ret z

    ld a, [de]
    and a
    ret z

    inc de
    ld a, [de]
    and a
    jr z, jr_00f_6236

    cp $01
    jr z, jr_00f_6236

    xor a
    ret


jr_00f_6236:
    ld hl, $d0d6
    ld a, [hl+]
    or [hl]
    ret z

    ld a, [hl]
    add a
    ld [hl-], a
    ld a, [hl]
    adc a
    ld [hl], a
    jr nc, jr_00f_6248

    ld a, $ff
    ld [hl+], a
    ld [hl], a

jr_00f_6248:
    xor a
    ld [$d05e], a
    call Call_00f_66f1
    xor a
    ret


Call_00f_6251:
    ld a, [$cfd2]
    cp $26
    jr z, jr_00f_62b4

    cp $28
    jr z, jr_00f_6269

    cp $29
    jr z, jr_00f_6281

    ld a, [$cfd3]
    and a
    jp z, Jump_00f_630f

    jr jr_00f_62b4

jr_00f_6269:
    ld hl, $cfe5
    ld de, $d0d6
    ld a, [hl+]
    srl a
    ld [de], a
    inc de
    ld b, a
    ld a, [hl]
    rr a
    ld [de], a
    or b
    jr nz, jr_00f_62b4

    ld a, $01
    ld [de], a
    jr jr_00f_62b4

jr_00f_6281:
    ld hl, $d021
    ld a, [hl]
    ld b, a
    ld a, [$cfd1]
    cp $45
    jr z, jr_00f_62ad

    cp $65
    jr z, jr_00f_62ad

    ld b, $14
    cp $31
    jr z, jr_00f_62ad

    ld b, $28
    cp $52
    jr z, jr_00f_62ad

    ld a, [hl]
    ld b, a
    srl a
    add b
    ld b, a

jr_00f_62a3:
    call Call_00f_7027
    and a
    jr z, jr_00f_62a3

    cp b
    jr nc, jr_00f_62a3

    ld b, a

jr_00f_62ad:
    ld hl, $d0d6
    xor a
    ld [hl+], a
    ld a, b
    ld [hl], a

Call_00f_62b4:
Jump_00f_62b4:
jr_00f_62b4:
    ld hl, $d0d6
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    or b
    jr z, jr_00f_630f

    ld a, [$d067]
    bit 4, a
    jp nz, Jump_00f_63d0

    ld a, [hl-]
    ld b, a
    ld a, [$cfe6]
    ld [$ceeb], a
    sub b
    ld [$cfe6], a
    ld a, [hl]
    ld b, a
    ld a, [$cfe5]
    ld [$ceec], a
    sbc b
    ld [$cfe5], a
    jr nc, jr_00f_62ed

    ld a, [$ceec]
    ld [hl+], a
    ld a, [$ceeb]
    ld [hl], a
    xor a
    ld hl, $cfe5
    ld [hl+], a
    ld [hl], a

jr_00f_62ed:
    ld hl, $cff3
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    ld hl, $cfe5
    ld a, [hl+]
    ld [$ceee], a
    ld a, [hl]
    ld [$ceed], a
    ld hl, $c3ca
    xor a
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4

Jump_00f_630f:
jr_00f_630f:
    jp Jump_00f_4e1f


Call_00f_6312:
    ld a, [$cfcc]
    cp $26
    jr z, jr_00f_6372

    cp $28
    jr z, jr_00f_632a

    cp $29
    jr z, jr_00f_6342

    ld a, [$cfcd]
    and a
    jp z, Jump_00f_63cd

    jr jr_00f_6372

jr_00f_632a:
    ld hl, $d014
    ld de, $d0d6
    ld a, [hl+]
    srl a
    ld [de], a
    inc de
    ld b, a
    ld a, [hl]
    rr a
    ld [de], a
    or b
    jr nz, jr_00f_6372

    ld a, $01
    ld [de], a
    jr jr_00f_6372

jr_00f_6342:
    ld hl, $cff2
    ld a, [hl]
    ld b, a
    ld a, [$cfcb]
    cp $45
    jr z, jr_00f_636b

    cp $65
    jr z, jr_00f_636b

    ld b, $14
    cp $31
    jr z, jr_00f_636b

    ld b, $28
    cp $52
    jr z, jr_00f_636b

    ld a, [hl]
    ld b, a
    srl a
    add b
    ld b, a

jr_00f_6364:
    call Call_00f_7027
    cp b
    jr nc, jr_00f_6364

    ld b, a

jr_00f_636b:
    ld hl, $d0d6
    xor a
    ld [hl+], a
    ld a, b
    ld [hl], a

Jump_00f_6372:
jr_00f_6372:
    ld hl, $d0d6
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    or b
    jr z, jr_00f_63cd

    ld a, [$d062]
    bit 4, a
    jp nz, Jump_00f_63d0

    ld a, [hl-]
    ld b, a
    ld a, [$d015]
    ld [$ceeb], a
    sub b
    ld [$d015], a
    ld [$ceed], a
    ld b, [hl]
    ld a, [$d014]
    ld [$ceec], a
    sbc b
    ld [$d014], a
    ld [$ceee], a
    jr nc, jr_00f_63b5

    ld a, [$ceec]
    ld [hl+], a
    ld a, [$ceeb]
    ld [hl], a
    xor a
    ld hl, $d014
    ld [hl+], a
    ld [hl], a
    ld hl, $ceed
    ld [hl+], a
    ld [hl], a

jr_00f_63b5:
    ld hl, $d022
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    ld hl, $c45e
    ld a, $01
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4

Jump_00f_63cd:
jr_00f_63cd:
    jp Jump_00f_4e1f


Jump_00f_63d0:
    ld hl, $641e
    call Call_000_3c36
    ld de, $ccd8
    ld bc, $d067
    ldh a, [$f3]
    and a
    jr z, jr_00f_63e7

    ld de, $ccd7
    ld bc, $d062

jr_00f_63e7:
    ld hl, $d0d6
    ld a, [hl+]
    and a
    jr nz, jr_00f_63f2

    ld a, [de]
    sub [hl]
    ld [de], a
    ret nc

jr_00f_63f2:
    ld h, b
    ld l, c
    res 4, [hl]
    ld hl, $6423
    call Call_000_3c36
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    ld hl, $5929
    ld b, $1e
    call Call_000_3e84
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    ld hl, $cfd2
    and a
    jr z, jr_00f_6419

    ld hl, $cfcc

jr_00f_6419:
    xor a
    ld [hl], a
    jp Jump_00f_4e1f


    rla
    ld sp, $277a
    ld d, b
    rla
    ld d, h
    ld a, d
    daa
    ld d, b

Call_00f_6428:
    ld hl, $d067
    ld de, $cd2e
    ld bc, $cfcb
    ldh a, [$f3]
    and a
    jr z, jr_00f_643f

    ld hl, $d062
    ld de, $cd1a
    ld bc, $cfd1

jr_00f_643f:
    bit 6, [hl]
    ret z

    ld a, [de]
    cp $0d
    ret z

    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    ld h, b
    ld l, c
    ld [hl], $00
    inc hl
    ld [hl], $0a
    push hl
    ld hl, $646a
    call Call_000_3c36
    call Call_00f_73de
    pop hl
    xor a
    ld [hl-], a
    ld a, $63
    ld [hl], a
    ldh a, [$f3]
    xor $01
    ldh [$f3], a
    ret


    rla
    ld l, d
    ld a, d
    daa
    ld d, b

Call_00f_646f:
    ldh a, [$f3]
    and a
    ld a, [$ccf2]
    ld hl, $ccdc
    ld de, $cfd1
    jr z, jr_00f_6486

    ld a, [$ccf1]
    ld de, $cfcb
    ld hl, $ccdd

jr_00f_6486:
    ld [hl], a
    cp $77
    jr z, jr_00f_648e

    and a
    jr nz, jr_00f_649b

jr_00f_648e:
    ld hl, $6496
    call Call_000_3c36
    xor a
    ret


    rla
    add b
    ld a, d
    daa
    ld d, b

jr_00f_649b:
    ld [$d11d], a
    dec a
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a74
    ld a, $0e
    call Call_000_009d
    call Call_00f_64e5
    call Call_000_2f4d
    call Call_000_3813
    ld a, $01
    and a
    ret


Call_00f_64ba:
    xor a
    ld [$cc5b], a
    ld a, $76
    call Call_00f_7093
    ld de, $cfd1
    ld hl, $ccdc
    ldh a, [$f3]
    and a
    jr z, jr_00f_64d4

    ld de, $cfcb
    ld hl, $ccdd

jr_00f_64d4:
    call Call_00f_7027
    and a
    jr z, jr_00f_64d4

    cp $a5
    jr nc, jr_00f_64d4

    cp $76
    jr z, jr_00f_64d4

    ld [hl], a
    jr jr_00f_649b

Call_00f_64e5:
    ldh a, [$f3]
    and a
    ld hl, $d02c
    ld de, $d187
    ld a, [$cc2e]
    jr z, jr_00f_64fc

    ld hl, $cffd
    ld de, $d8c0
    ld a, [$cce2]

jr_00f_64fc:
    ld b, $00
    ld c, a
    add hl, bc
    inc [hl]
    ld h, d
    ld l, e
    add hl, bc
    ldh a, [$f3]
    and a
    ld a, [$cc2f]
    jr z, jr_00f_650f

    ld a, [$cfe7]

jr_00f_650f:
    ld bc, $002c
    call Call_000_3a74
    inc [hl]
    ret


Call_00f_6517:
    ld hl, $d018
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $cfe9
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld a, [$cfd4]
    ld [$d11d], a
    ldh a, [$f3]
    and a
    jr z, jr_00f_6540

    ld hl, $cfe9
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $d018
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld a, [$cfce]
    ld [$d11d], a

jr_00f_6540:
    ld a, [$d11d]
    cp b
    jr z, jr_00f_654b

    cp c
    jr z, jr_00f_654b

    jr jr_00f_6565

jr_00f_654b:
    ld hl, $d0d7
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    ld b, h
    ld c, l
    srl b
    rr c
    add hl, bc
    ld a, h
    ld [$d0d6], a
    ld a, l
    ld [$d0d7], a
    ld hl, $d05a
    set 7, [hl]

jr_00f_6565:
    ld a, [$d11d]
    ld b, a
    ld hl, $65fa

Jump_00f_656c:
    ld a, [hl+]
    cp $ff
    jr z, jr_00f_65ba

    cp b
    jr nz, jr_00f_65b5

    ld a, [hl]
    cp d
    jr z, jr_00f_657d

    cp e
    jr z, jr_00f_657d

    jr jr_00f_65b5

jr_00f_657d:
    push hl
    push bc
    inc hl
    ld a, [$d05a]
    and $80
    ld b, a
    ld a, [hl]
    ldh [$99], a
    add b
    ld [$d05a], a
    xor a
    ldh [$96], a
    ld hl, $d0d6
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl-]
    ldh [$98], a
    call Call_000_38a5
    ld a, $0a
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$97]
    ld [hl+], a
    ld b, a
    ldh a, [$98]
    ld [hl], a
    or b
    jr nz, jr_00f_65b3

    inc a
    ld [$d05e], a

jr_00f_65b3:
    pop bc
    pop hl

jr_00f_65b5:
    inc hl
    inc hl
    jp Jump_00f_656c


jr_00f_65ba:
    ret


    ld a, [$cfce]
    ld d, a
    ld hl, $d018
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, $10
    ld [$d11d], a
    ld hl, $65fa

jr_00f_65cd:
    ld a, [hl+]
    cp $ff
    ret z

    cp d
    jr nz, jr_00f_65dd

    ld a, [hl+]
    cp b
    jr z, jr_00f_65e1

    cp c
    jr z, jr_00f_65e1

    jr jr_00f_65de

jr_00f_65dd:
    inc hl

jr_00f_65de:
    inc hl
    jr jr_00f_65cd

jr_00f_65e1:
    ld a, [$d030]
    cp $2c
    jr nz, jr_00f_65f5

    ld a, [$cfe4]
    cp $78
    jr nz, jr_00f_65f5

    call Call_00f_7027
    cp $66
    ret c

jr_00f_65f5:
    ld a, [hl]
    ld [$d11d], a
    ret


    dec d
    inc d
    inc d
    inc d
    ld d, $14
    inc d
    add hl, de
    inc d
    ld d, $15
    inc d
    rla
    dec d
    inc d
    dec d
    dec b
    inc d
    inc b
    ld [bc], a
    nop
    dec d
    dec d
    dec b
    inc d
    inc d
    dec b
    rla
    rla
    dec b
    add hl, de
    add hl, de
    dec b
    ld d, $16
    dec b
    jr jr_00f_6638

    dec b
    inc d
    dec d
    dec b
    ld d, $14
    dec b
    dec d
    ld d, $05
    rla
    ld d, $05
    nop
    dec b
    dec b
    nop
    ld [$0800], sp
    ld [$1414], sp
    rlca

jr_00f_6638:
    inc d
    inc d
    dec b
    dec b
    dec d
    inc b
    inc d
    rla
    inc b
    nop
    rla
    ld [bc], a
    inc d
    ld d, $04
    inc d
    ld d, $07
    dec b
    ld d, $03
    dec b
    ld d, $05
    inc d
    ld d, $02
    dec b
    add hl, de
    dec d
    dec b
    add hl, de
    ld d, $14
    add hl, de
    inc b
    inc d
    add hl, de
    ld [bc], a
    inc d
    ld bc, $1400
    ld bc, $0503
    ld bc, $0502
    ld bc, $0518
    ld bc, $0507
    ld bc, $1405
    ld bc, $1419
    ld bc, $0008
    inc bc
    ld d, $14
    inc bc
    inc bc
    dec b
    inc bc
    inc b
    dec b
    inc bc
    rlca
    inc d
    inc bc
    dec b
    dec b
    inc bc
    ld [$0405], sp
    inc d
    inc d
    inc b
    rla
    inc d
    inc b
    ld d, $05
    inc b
    rlca
    dec b
    inc b
    dec b
    inc d
    inc b
    inc bc
    inc d
    ld [bc], a
    rla
    dec b
    ld [bc], a
    ld bc, $0214
    rlca
    inc d
    ld [bc], a
    ld d, $14
    ld [bc], a
    dec b
    dec b
    jr jr_00f_66ae

    inc d

jr_00f_66ae:
    jr jr_00f_66b3

    inc d
    rlca
    inc d

jr_00f_66b3:
    dec b
    rlca
    ld d, $14
    rlca
    ld bc, $0705
    ld [bc], a
    dec b
    rlca
    jr jr_00f_66d4

    rlca
    ld [$0705], sp
    inc bc
    inc d
    dec b
    inc d
    inc d
    dec b
    ld bc, $0505
    inc b
    dec b
    dec b
    ld [bc], a
    inc d
    dec b
    rlca

jr_00f_66d4:
    inc d
    dec b
    add hl, de
    inc d
    ld [$0000], sp
    ld [$0018], sp
    inc d
    ld a, [de]
    dec b
    dec d
    ld a, [de]
    dec b
    rla
    ld a, [de]
    dec b
    ld d, $1a
    dec b
    add hl, de
    ld a, [de]
    inc d
    ld a, [de]
    ld a, [de]
    inc d
    rst $38

Call_00f_66f1:
    ld hl, $d066
    ld de, $cfd2
    ld bc, $cfe8
    ldh a, [$f3]
    and a
    jr z, jr_00f_6708

    ld hl, $d061
    ld de, $cfcc
    ld bc, $d017

jr_00f_6708:
    ld a, [de]
    cp $08
    jr nz, jr_00f_6713

    ld a, [bc]
    and $07
    jp z, Jump_00f_678f

jr_00f_6713:
    ld a, [de]
    cp $11
    ret z

    call Call_00f_7b54
    jr z, jr_00f_6726

    cp $03
    jp z, Jump_00f_678f

    cp $08
    jp z, Jump_00f_678f

jr_00f_6726:
    bit 6, [hl]
    jp nz, Jump_00f_678f

    ldh a, [$f3]
    and a
    jr nz, jr_00f_6755

    ld a, [$cfd2]
    cp $12
    jr c, jr_00f_674d

    cp $1a
    jr c, jr_00f_6745

    cp $3a
    jr c, jr_00f_674d

    cp $42
    jr c, jr_00f_6745

    jr jr_00f_674d

jr_00f_6745:
    ld a, [$d067]
    bit 1, a
    jp nz, Jump_00f_678f

jr_00f_674d:
    ld a, [$d062]
    bit 0, a
    ret nz

    jr jr_00f_6778

jr_00f_6755:
    ld a, [$cfcc]
    cp $12
    jr c, jr_00f_6772

    cp $1a
    jr c, jr_00f_676a

    cp $3a
    jr c, jr_00f_6772

    cp $42
    jr c, jr_00f_676a

    jr jr_00f_6772

jr_00f_676a:
    ld a, [$d062]
    bit 1, a
    jp nz, Jump_00f_678f

jr_00f_6772:
    ld a, [$d067]
    bit 0, a
    ret nz

jr_00f_6778:
    call Call_00f_67aa
    ld a, [$cfd5]
    ld b, a
    ldh a, [$f3]
    and a
    jr z, jr_00f_6788

    ld a, [$cfcf]
    ld b, a

jr_00f_6788:
    call Call_00f_7027
    cp b
    jr nc, jr_00f_678f

    ret


Jump_00f_678f:
jr_00f_678f:
    xor a
    ld hl, $d0d6
    ld [hl+], a
    ld [hl], a
    inc a
    ld [$d05e], a
    ldh a, [$f3]
    and a
    jr z, jr_00f_67a4

    ld hl, $d066
    res 5, [hl]
    ret


jr_00f_67a4:
    ld hl, $d061
    res 5, [hl]
    ret


Call_00f_67aa:
    ld hl, $cfd5
    ldh a, [$f3]
    and a
    ld a, [$cd1e]
    ld b, a
    ld a, [$cd33]
    ld c, a
    jr z, jr_00f_67c5

    ld hl, $cfcf
    ld a, [$cd32]
    ld b, a
    ld a, [$cd1f]
    ld c, a

jr_00f_67c5:
    ld a, $0e
    sub c
    ld c, a
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a
    push hl
    ld d, $02

jr_00f_67d4:
    push bc
    ld hl, $7681
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    pop bc
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38a5
    ld a, [hl]
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$98]
    ld b, a
    ldh a, [$97]
    or b
    jp nz, Jump_00f_67fd

    ldh [$97], a
    ld a, $01
    ldh [$98], a

Jump_00f_67fd:
    ld b, c
    dec d
    jr nz, jr_00f_67d4

    ldh a, [$97]
    and a
    ldh a, [$98]
    jr z, jr_00f_680a

    ld a, $ff

jr_00f_680a:
    pop hl
    ld [hl], a
    ret


Call_00f_680d:
    ld hl, $d0d6
    ld a, [hl+]
    and a
    jr nz, jr_00f_6818

    ld a, [hl]
    cp $02
    ret c

jr_00f_6818:
    xor a
    ldh [$96], a
    dec hl
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a

jr_00f_6822:
    call Call_00f_7027
    rrca
    cp $d9
    jr c, jr_00f_6822

    ldh [$99], a
    call Call_000_38a5
    ld a, $ff
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$97]
    ld hl, $d0d6
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    ret


Call_00f_6842:
    ld a, [$ccdd]
    inc a
    jp z, Jump_00f_6a12

    call Call_00f_5983
    jp z, Jump_00f_6a12

    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_6862

    ld b, $01
    ld a, [$cc3e]
    cp $0e
    jr z, jr_00f_6862

    cp $04
    ret nc

jr_00f_6862:
    ld hl, $ccd5
    inc [hl]
    xor a
    ld [$d05e], a
    ld [$ccf4], a
    ld a, $0a
    ld [$d05a], a
    call Call_00f_6a15
    jr nz, jr_00f_6878

    jp hl


jr_00f_6878:
    ld hl, $d066
    bit 4, [hl]
    jr nz, jr_00f_6891

    call Call_00f_6c44

Jump_00f_6882:
    ld a, [$cfcc]
    cp $27
    jp z, Jump_00f_70a7

    cp $2b
    jp z, Jump_00f_70a7

    jr jr_00f_68b1

jr_00f_6891:
    ld hl, $d066
    res 4, [hl]
    res 6, [hl]
    ld a, [$cfcb]
    ld [$d0b4], a
    ld a, $2f
    ld [$d0b6], a
    ld a, $02
    ld [$d0b5], a
    call Call_000_3762
    ld de, $cd6d
    call Call_000_3813

jr_00f_68b1:
    xor a
    ld [$cced], a
    call Call_00f_5c67
    ld a, [$cfcc]
    ld hl, $4000
    ld de, $0001
    call Call_000_3da7
    jp c, Jump_00f_70a7

    ld a, [$cfcc]
    ld hl, $4049
    ld de, $0001
    call Call_000_3da7
    call c, Call_00f_70a7
    call Call_00f_6e07
    ld a, [$cfcc]
    ld hl, $4011
    ld de, $0001
    call Call_000_3da7
    jp c, Jump_00f_6905

    call Call_00f_6195
    call Call_00f_6205
    jr z, jr_00f_6908

    call Call_00f_6e07
    call Call_00f_5fe7
    call Call_00f_6e07
    call Call_00f_60d7
    jp z, Jump_00f_6957

    call Call_00f_6517
    call Call_00f_680d

Jump_00f_6905:
    call Call_00f_66f1

jr_00f_6908:
    ld a, [$d05e]
    and a
    jr z, jr_00f_6917

    ld a, [$cfcc]
    cp $07
    jr z, jr_00f_6926

    jr jr_00f_6957

jr_00f_6917:
    call Call_00f_6e07

Jump_00f_691a:
    ld a, [$cfcc]
    and a
    ld a, $01
    jr z, jr_00f_692a

    ld a, $02
    jr jr_00f_692a

jr_00f_6926:
    call Call_00f_6e07
    xor a

jr_00f_692a:
    push af
    ld a, [$d067]
    bit 4, a
    ld hl, $5816
    ld b, $1e
    call nz, Call_000_3e84
    pop af
    ld [$cc5b], a
    ld a, [$cfcb]
    call Call_00f_7093
    call Call_00f_705f
    call Call_00f_4eb1
    ld a, [$d067]
    bit 4, a
    ld hl, $58b2
    ld b, $1e
    call nz, Call_000_3e84
    jr jr_00f_6975

Jump_00f_6957:
jr_00f_6957:
    call Call_00f_6e07
    ld c, $1e
    call Call_000_372f
    ld a, [$cfcc]
    cp $2b
    jr z, jr_00f_696c

    cp $27
    jr z, jr_00f_696c

    jr jr_00f_6975

jr_00f_696c:
    xor a
    ld [$cc5b], a
    ld a, $a7
    call Call_00f_7093

jr_00f_6975:
    ld a, [$cfcc]
    cp $09
    jr nz, jr_00f_6985

    call Call_00f_646f
    jp z, Jump_00f_6a12

    jp Jump_00f_6882


jr_00f_6985:
    cp $53
    jr nz, jr_00f_698f

    call Call_00f_64ba
    jp Jump_00f_6882


jr_00f_698f:
    ld a, [$cfcc]
    ld hl, $4014
    ld de, $0001
    call Call_000_3da7
    jp c, Jump_00f_70a7

    ld a, [$d05e]
    and a
    jr z, jr_00f_69b1

    call Call_00f_5d54
    ld a, [$cfcc]
    cp $07
    jr z, jr_00f_69c4

    jp Jump_00f_6a12


jr_00f_69b1:
    call Call_00f_6312
    call Call_00f_5dce
    ld hl, $7d25
    ld b, $0b
    call Call_000_3e84
    ld a, $01
    ld [$ccf4], a

jr_00f_69c4:
    ld a, [$cfcc]
    ld hl, $4030
    ld de, $0001
    call Call_000_3da7
    call c, Call_00f_70a7
    ld hl, $d014
    ld a, [hl+]
    ld b, [hl]
    or b
    ret z

    call Call_00f_6428
    ld hl, $d066
    bit 2, [hl]
    jr z, jr_00f_69f9

    push hl
    ld hl, $d06e
    dec [hl]
    pop hl
    jp nz, Jump_00f_691a

    res 2, [hl]
    ld hl, $6a0d
    call Call_000_3c36
    xor a
    ld [$cd05], a

jr_00f_69f9:
    ld a, [$cfcc]
    and a
    jr z, jr_00f_6a12

    ld hl, $403b
    ld de, $0001
    call Call_000_3da7
    call nc, Call_00f_70a7
    jr jr_00f_6a12

    rla
    sbc c
    ld a, d
    daa
    ld d, b

Jump_00f_6a12:
jr_00f_6a12:
    ld b, $01
    ret


Call_00f_6a15:
    ld hl, $cfe8
    ld a, [hl]
    and $07
    jr z, jr_00f_6a45

    dec a
    ld [$cfe8], a
    and a
    jr z, jr_00f_6a35

    ld hl, $5baf
    call Call_000_3c36
    xor a
    ld [$cc5b], a
    ld a, $bd
    call Call_00f_7093
    jr jr_00f_6a3b

jr_00f_6a35:
    ld hl, $5bb4
    call Call_000_3c36

jr_00f_6a3b:
    xor a
    ld [$ccf2], a
    ld hl, $6a12
    jp Jump_00f_6c3e


jr_00f_6a45:
    bit 5, [hl]
    jr z, jr_00f_6a59

    ld hl, $5bb9
    call Call_000_3c36
    xor a
    ld [$ccf2], a
    ld hl, $6a12
    jp Jump_00f_6c3e


jr_00f_6a59:
    ld a, [$d061]
    bit 5, a
    jp z, Jump_00f_6a6d

    ld hl, $5bf5
    call Call_000_3c36
    ld hl, $6a12
    jp Jump_00f_6c3e


Jump_00f_6a6d:
    ld hl, $d066
    bit 3, [hl]
    jp z, Jump_00f_6a83

    res 3, [hl]
    ld hl, $5bc3
    call Call_000_3c36
    ld hl, $6a12
    jp Jump_00f_6c3e


Jump_00f_6a83:
    ld hl, $d067
    bit 5, [hl]
    jr z, jr_00f_6a98

    res 5, [hl]
    ld hl, $5bc8
    call Call_000_3c36
    ld hl, $6a12
    jp Jump_00f_6c3e


jr_00f_6a98:
    ld hl, $d071
    ld a, [hl]
    and a
    jr z, jr_00f_6aaf

    dec a
    ld [hl], a
    and $0f
    jr nz, jr_00f_6aaf

    ld [hl], a
    ld [$ccef], a
    ld hl, $5bcd
    call Call_000_3c36

jr_00f_6aaf:
    ld a, [$d066]
    add a
    jp nc, Jump_00f_6b30

    ld hl, $d06f
    dec [hl]
    jr nz, jr_00f_6aca

    ld hl, $d066
    res 7, [hl]
    ld hl, $5bdc
    call Call_000_3c36
    jp Jump_00f_6b30


jr_00f_6aca:
    ld hl, $5bd2
    call Call_000_3c36
    xor a
    ld [$cc5b], a
    ld a, $bf
    call Call_00f_7093
    call Call_00f_7027
    cp $80
    jr c, jr_00f_6b30

    ld hl, $d066
    ld a, [hl]
    and $80
    ld [hl], a
    ld hl, $5bd7
    call Call_000_3c36
    ld hl, $d026
    ld a, [hl+]
    push af
    ld a, [hl-]
    push af
    ld a, [$cff7]
    ld [hl+], a
    ld a, [$cff8]
    ld [hl], a
    ld hl, $cfcc
    push hl
    ld a, [hl]
    push af
    xor a
    ld [hl+], a
    ld [$d05d], a
    ld a, $28
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_00f_5fe7
    call Call_00f_60d7
    pop af
    pop hl
    ld [hl], a
    ld hl, $d027
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    xor a
    ld [$cc5b], a
    ldh [$f3], a
    ld a, $01
    call Call_00f_7093
    ld a, $01
    ldh [$f3], a
    call Call_00f_62b4
    jr jr_00f_6b59

Jump_00f_6b30:
jr_00f_6b30:
    ld a, [$ccef]
    and a
    jr z, jr_00f_6b45

    ld hl, $ccdd
    cp [hl]
    jr nz, jr_00f_6b45

    call Call_00f_5bfa
    ld hl, $6a12
    jp Jump_00f_6c3e


jr_00f_6b45:
    ld hl, $cfe8
    bit 6, [hl]
    jr z, jr_00f_6b7c

    call Call_00f_7027
    cp $3f
    jr nc, jr_00f_6b7c

    ld hl, $5bbe
    call Call_000_3c36

jr_00f_6b59:
    ld hl, $d066
    ld a, [hl]
    and $cc
    ld [hl], a
    ld a, [$cfcc]
    cp $2b
    jr z, jr_00f_6b6d

    cp $27
    jr z, jr_00f_6b6d

    jr jr_00f_6b76

jr_00f_6b6d:
    xor a
    ld [$cc5b], a
    ld a, $a7
    call Call_00f_7093

jr_00f_6b76:
    ld hl, $6a12
    jp Jump_00f_6c3e


jr_00f_6b7c:
    ld hl, $d066
    bit 0, [hl]
    jr z, jr_00f_6bda

    xor a
    ld [$cfcb], a
    ld hl, $d0d6
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $cd06
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld hl, $d06e
    dec [hl]
    jr z, jr_00f_6ba2

    ld hl, $6a12
    jp Jump_00f_6c3e


jr_00f_6ba2:
    ld hl, $d066
    res 0, [hl]
    ld hl, $5be6
    call Call_000_3c36
    ld a, $01
    ld [$cfcd], a
    ld hl, $cd06
    ld a, [hl-]
    add a
    ld b, a
    ld [$d0d7], a
    ld a, [hl]
    rl a
    ld [$d0d6], a
    or b
    jr nz, jr_00f_6bc9

    ld a, $01
    ld [$d05e], a

jr_00f_6bc9:
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, $75
    ld [$cfcb], a
    call Call_00f_6e07
    ld hl, $6908
    jp Jump_00f_6c3e


jr_00f_6bda:
    bit 1, [hl]
    jr z, jr_00f_6c09

    ld a, $25
    ld [$cfcb], a
    ld hl, $5beb
    call Call_000_3c36
    ld hl, $d06e
    dec [hl]
    ld hl, $68d6
    jp nz, Jump_00f_6c3e

    push hl
    ld hl, $d066
    res 1, [hl]
    set 7, [hl]
    call Call_00f_7027
    and $03
    inc a
    inc a
    ld [$d06f], a
    pop hl
    jp Jump_00f_6c3e


jr_00f_6c09:
    bit 5, [hl]
    jp z, Jump_00f_6c21

    ld hl, $5bf0
    call Call_000_3c36
    ld hl, $d06e
    dec [hl]
    ld hl, $691a
    jp nz, Jump_00f_6c3e

    jp Jump_00f_6c3e


Jump_00f_6c21:
    ld a, [$d067]
    bit 6, a
    jp z, Jump_00f_6c40

    ld a, $63
    ld [$d11d], a
    call Call_000_2f4d
    call Call_000_3813
    xor a
    ld [$cfcc], a
    ld hl, $68b1
    jp Jump_00f_6c3e


Jump_00f_6c3e:
    xor a
    ret


Jump_00f_6c40:
    ld a, $01
    and a
    ret


Call_00f_6c44:
    ldh a, [$f3]
    and a
    jp z, Jump_00f_6c52

    ld de, $cfcb
    ld a, [$ccdd]
    jr jr_00f_6c62

Jump_00f_6c52:
    ld de, $cfd1
    ld a, [$d732]
    bit 0, a
    ld a, [$ccd9]
    jr nz, jr_00f_6c62

    ld a, [$ccdc]

jr_00f_6c62:
    ld [$d0b4], a
    dec a
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a74
    ld a, $0e

Jump_00f_6c71:
    call Call_000_009d
    ld a, $2f
    ld [$d0b6], a
    ld a, $02
    ld [$d0b5], a
    call Call_000_3762
    ld de, $cd6d
    jp Jump_000_3813


Call_00f_6c87:
    ld a, [$d12a]
    cp $04
    jp z, Jump_00f_4c7d

    ld a, [$cfd7]
    ld [$cfe4], a
    ld [$d0b4], a
    call Call_000_132f
    ld a, [$d068]
    bit 3, a
    ld hl, $cceb
    ld a, [hl+]
    ld b, [hl]
    jr nz, jr_00f_6cb9

    ld a, [$d056]
    cp $02
    ld a, $98
    ld b, $88
    jr z, jr_00f_6cb9

    call Call_00f_7027
    ld b, a
    call Call_00f_7027

jr_00f_6cb9:
    ld hl, $cff0
    ld [hl+], a
    ld [hl], b
    ld de, $cff2
    ld a, [$d126]
    ld [de], a
    inc de
    ld b, $00
    ld hl, $cfe5
    push hl
    call Call_000_392b
    pop hl
    ld a, [$d056]
    cp $02
    jr z, jr_00f_6ceb

    ld a, [$d068]
    bit 3, a
    jr nz, jr_00f_6d0c

    ld a, [$cff3]
    ld [hl+], a
    ld a, [$cff4]
    ld [hl+], a
    xor a
    inc hl
    ld [hl], a
    jr jr_00f_6d0c

jr_00f_6ceb:
    ld hl, $d8a4
    ld a, [$cf91]
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl+]
    ld [$cfe5], a
    ld a, [hl+]
    ld [$cfe6], a
    ld a, [$cf91]
    ld [$cfe7], a
    inc hl
    ld a, [hl]
    ld [$cfe8], a
    jr jr_00f_6d0c

jr_00f_6d0c:
    ld hl, $d0bd
    ld de, $cfe9
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [$d056]
    cp $02
    jr nz, jr_00f_6d36

    ld hl, $d8ab
    ld a, [$cf91]
    ld bc, $002c
    call Call_000_3a74
    ld bc, $0004
    call Call_000_00b1
    jr jr_00f_6d50

jr_00f_6d36:
    ld hl, $d0c6
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    dec de
    dec de
    dec de
    xor a
    ld [$cee9], a
    ld a, $3e
    call Call_000_3eb4

jr_00f_6d50:
    ld hl, $cfec
    ld de, $cffc
    ld a, $5e
    call Call_000_3eb4
    ld hl, $d0b8
    ld de, $d001
    ld b, $05

jr_00f_6d63:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00f_6d63

    ld hl, $d0bf
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$cfd7]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $cd6d
    ld de, $cfd9
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cfd7]
    ld [$d11d], a
    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $01
    ld hl, $d309
    ld a, $10
    call Call_000_3eb4
    ld hl, $cff2
    ld de, $cd23
    ld bc, $000b
    call Call_000_00b1
    ld a, $07
    ld b, $08
    ld hl, $cd2e

jr_00f_6db3:
    ld [hl+], a
    dec b
    jr nz, jr_00f_6db3

    ret


    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_6dd3

    xor a
    ld [$cc34], a
    ld hl, $41cf
    ld b, $3d
    call Call_000_3e84
    ld a, $01
    ld [$cfca], a
    call Call_000_16dd

jr_00f_6dd3:
    call Call_000_1e64
    ld a, $30
    call Call_000_3eb4
    ld hl, $6fe4
    ld b, $0f
    call Call_000_3e84
    ld a, $01
    ldh [$ba], a
    ld a, $ff
    ld [$cfca], a
    call Call_000_0082
    call Call_000_16dd
    xor a
    ldh [$ba], a
    ldh [$b0], a
    ldh [rWY], a
    ldh [$d7], a
    ld hl, $d05f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d06c], a
    ret


Call_00f_6e07:
    push bc
    ld a, [$d021]
    ld b, a
    ld a, [$cff2]
    ld [$d021], a
    ld a, b
    ld [$cff2], a
    pop bc
    ret


Call_00f_6e18:
    ld a, [$d059]
    ld de, $4441
    cp $01
    jr z, jr_00f_6e2c

    ld de, $44d2
    cp $04
    jr z, jr_00f_6e2c

    ld de, $43b1

jr_00f_6e2c:
    ld a, $3d
    call Call_000_36e3
    ld a, $03
    call Call_000_3eb4
    ld hl, $c300
    xor a
    ldh [$8b], a
    ld b, $07
    ld e, $a0

jr_00f_6e40:
    ld c, $03
    ld d, $38

jr_00f_6e44:
    ld [hl], d
    inc hl
    ld [hl], e
    ld a, $08
    add d
    ld d, a
    inc hl
    ldh a, [$8b]
    ld [hl+], a
    inc a
    ldh [$8b], a
    ld a, $02
    ld [hl], a
    inc hl
    dec c
    jr nz, jr_00f_6e44

    ldh a, [$8b]
    add $04
    ldh [$8b], a
    ld a, $08
    add e
    ld e, a
    dec b
    jr nz, jr_00f_6e40

    ld de, $9310
    call Call_000_14c7
    ld a, $00
    call Call_000_3e99
    ld hl, $8000
    ld de, $a188
    ldh a, [$b8]
    ld b, a
    ld c, $31
    call Call_000_15fe
    call Call_000_3ea9
    ld a, $31
    ldh [$e1], a
    ld hl, $c405
    ld a, $01
    jp Jump_000_3eb4


    ld hl, $4206
    ld b, $3d
    call Call_000_3e84
    ld hl, $422d
    ld b, $3d
    jp Jump_000_3e84


Call_00f_6e9e:
    ld hl, $4259
    ld b, $3d
    jp Jump_000_3e84


Call_00f_6ea6:
    ld a, $01
    jr jr_00f_6eab

Call_00f_6eaa:
    xor a

jr_00f_6eab:
    ldh [$f3], a
    call Call_00f_6eb3
    jp Jump_00f_6ef0


Call_00f_6eb3:
    ldh a, [$f3]
    and a
    jr z, jr_00f_6ed4

    ld a, [$d017]
    and $40
    ret z

    ld hl, $d029
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6ed2

    ld b, $01

jr_00f_6ed2:
    ld [hl], b
    ret


jr_00f_6ed4:
    ld a, [$cfe8]
    and $40
    ret z

    ld hl, $cffa
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6eee

    ld b, $01

jr_00f_6eee:
    ld [hl], b
    ret


Call_00f_6ef0:
Jump_00f_6ef0:
    ldh a, [$f3]
    and a
    jr z, jr_00f_6f0d

    ld a, [$d017]
    and $10
    ret z

    ld hl, $d025
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6f0b

    ld b, $01

jr_00f_6f0b:
    ld [hl], b
    ret


jr_00f_6f0d:
    ld a, [$cfe8]
    and $10
    ret z

    ld hl, $cff6
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6f23

    ld b, $01

jr_00f_6f23:
    ld [hl], b
    ret


    ld c, $00

jr_00f_6f27:
    call Call_00f_6f31
    inc c
    ld a, c
    cp $04
    jr nz, jr_00f_6f27

    ret


Call_00f_6f31:
    push bc
    push bc
    ld a, [$d11d]
    and a
    ld a, c
    ld hl, $d024
    ld de, $cd12
    ld bc, $cd1a
    jr z, jr_00f_6f4c

    ld hl, $cff5
    ld de, $cd26
    ld bc, $cd2e

jr_00f_6f4c:
    add c
    ld c, a
    jr nc, jr_00f_6f51

    inc b

jr_00f_6f51:
    ld a, [bc]
    pop bc
    ld b, a
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00f_6f60

    inc d

jr_00f_6f60:
    pop bc
    push hl
    ld hl, $7681
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    xor a
    ldh [$96], a
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38a5
    ld a, [hl]
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    pop hl
    ldh a, [$98]
    sub $e7
    ldh a, [$97]
    sbc $03
    jp c, Jump_00f_6f98

    ld a, $03
    ldh [$97], a
    ld a, $e7
    ldh [$98], a

Jump_00f_6f98:
    ldh a, [$97]
    ld [hl+], a
    ld b, a
    ldh a, [$98]
    ld [hl], a
    or b
    jr nz, jr_00f_6fa3

    inc [hl]

jr_00f_6fa3:
    pop bc
    ret


Call_00f_6fa5:
    ld a, [$d12a]
    cp $04
    ret z

    ld a, [$d355]
    ld b, a
    ld hl, $d024
    ld c, $04

jr_00f_6fb4:
    srl b
    call c, Call_00f_6fc1
    inc hl
    inc hl
    srl b
    dec c
    jr nz, jr_00f_6fb4

    ret


Call_00f_6fc1:
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld a, [hl-]
    sub $e7
    ld a, [hl]
    sbc $03
    ret c

    ld a, $03
    ld [hl+], a
    ld a, $e7
    ld [hl-], a
    ret


Call_00f_6fe4:
    call Call_000_36c3

Call_00f_6fe7:
    ldh a, [rLCDC]
    add a
    jr c, jr_00f_7008

    ld hl, $4c00
    ld de, $96d0
    ld bc, $0018
    ld a, $04
    call Call_000_15d4
    ld hl, $4c18
    ld de, $9730
    ld bc, $0030
    ld a, $04
    jp Jump_000_15d4


jr_00f_7008:
    ld de, $4c00
    ld hl, $96d0
    ld bc, $0403
    call Call_000_1636
    ld de, $4c18
    ld hl, $9730
    ld bc, $0406
    jp Jump_000_1636


Call_00f_7020:
    ld hl, $7026
    jp Jump_000_3c36


    ld d, b

Call_00f_7027:
    ld a, [$d12a]
    cp $04
    jp nz, Jump_000_3e6d

    push hl
    push bc
    ld a, [$ccde]
    ld c, a
    ld b, $00
    ld hl, $d147
    add hl, bc
    inc a
    ld [$ccde], a
    cp $09
    ld a, [hl]
    pop bc
    pop hl
    ret c

    push hl
    push bc
    push af
    xor a
    ld [$ccde], a
    ld hl, $d147
    ld b, $09

jr_00f_7051:
    ld a, [hl]
    ld c, a
    add a
    add a
    add c
    inc a
    ld [hl+], a
    dec b
    jr nz, jr_00f_7051

    pop af
    pop bc
    pop hl
    ret


Call_00f_705f:
    ldh a, [$f3]
    and a
    ld hl, $cfe9
    ld de, $d066
    ld a, [$cfd1]
    jr z, jr_00f_7076

    ld hl, $d018
    ld de, $d066
    ld a, [$cfcb]

jr_00f_7076:
    cp $78
    jr z, jr_00f_707d

    cp $99
    ret nz

jr_00f_707d:
    ld a, [de]
    bit 6, a
    ret nz

    ld a, [hl+]
    cp $08
    ret z

    ld a, [hl]
    cp $08
    ret z

    ld a, [$d05e]
    and a
    ret nz

    ld a, $05
    ld [$cc5b], a

Call_00f_7093:
    ld [$d07b], a
    call Call_000_3ddb
    ld a, $08
    call Call_000_3eb4
    ld hl, $4e98
    ld b, $1e
    call Call_000_3e84
    ret


Call_00f_70a7:
Jump_00f_70a7:
    call Call_00f_70ad
    ld b, $01
    ret


Call_00f_70ad:
    ldh a, [$f3]
    and a
    ld a, [$cfd2]
    jr z, jr_00f_70b8

    ld a, [$cfcc]

jr_00f_70b8:
    dec a
    add a
    ld hl, $70c5
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [hl], c
    ld [hl], c
    jp nc, Jump_00f_6c71

    ld [hl], d
    adc a
    ld [hl], d
    adc a
    ld [hl], d
    adc a
    ld [hl], d
    ld [hl], h
    ld [hl], d
    ld l, h
    ld [hl], d
    nop
    nop
    sbc $73
    sbc $73
    sbc $73
    sbc $73
    sbc $73
    sbc $73
    jp hl


    ld a, d
    nop
    nop
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    pop af
    ld a, d
    ld sp, hl
    ld a, d
    sbc e
    db $76
    call $ef76
    db $76
    rst $00
    ld [hl], a
    rst $00
    ld [hl], a
    ld de, $7178
    ld [hl], c
    jp nc, $8f71

    ld [hl], d
    adc a
    ld [hl], d
    adc a
    ld [hl], d
    ld de, $4278
    ld a, b
    ld c, d
    ld a, b
    nop
    nop
    nop
    nop
    ld a, [c]
    ld a, b
    ld c, d
    ld a, b
    rst $00
    ld [hl], a
    nop
    nop
    inc e
    ld a, c
    inc h
    ld a, c
    inc l
    ld a, c
    inc a
    ld a, c
    sbc $73
    sbc $73
    sbc $73
    sbc $73
    sbc $73
    sbc $73
    ld bc, $097b
    ld a, e
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld de, $117b
    ld a, e
    jp nc, $8c71

    ld a, c
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld [hl], l
    inc [hl]
    ld a, c
    rst $00
    ld [hl], a
    nop
    nop
    sub h
    ld a, c
    sbc h
    ld a, c
    cp d
    ld a, c
    ret z

    ld a, c
    nop
    nop
    ld d, a
    ld a, d
    ld e, a
    ld a, d
    ld h, l
    ld a, d
    ld de, $cfe8
    ld bc, $d067
    ldh a, [$f3]
    and a
    jp z, Jump_00f_7183

    ld de, $d017
    ld bc, $d062

Jump_00f_7183:
    ld a, [bc]
    bit 5, a
    res 5, a
    ld [bc], a
    jr nz, jr_00f_71a6

    ld a, [de]
    ld b, a
    and $07
    jr z, jr_00f_7197

    ld hl, $71cd
    jp Jump_000_3c36


jr_00f_7197:
    ld a, b
    and a
    jr nz, jr_00f_71c5

    push de
    call Call_00f_66f1
    pop de
    ld a, [$d05e]
    and a
    jr nz, jr_00f_71c5

jr_00f_71a6:
    call Call_00f_7027
    and $07
    jr z, jr_00f_71a6

    ld b, a
    ld a, [$d498]
    and a
    jr z, jr_00f_71ba

    ld a, b
    and $03
    jr z, jr_00f_71a6

    ld b, a

jr_00f_71ba:
    ld a, b
    ld [de], a
    call Call_00f_7b64
    ld hl, $71c8
    jp Jump_000_3c36


jr_00f_71c5:
    jp Jump_00f_7b39


    rla
    ld a, [de]
    ld b, b
    ld a, [hl+]
    ld d, b
    rla
    ld a, [hl+]
    ld b, b
    ld a, [hl+]
    ld d, b
    ld hl, $cfe8
    ld de, $cfd2
    ldh a, [$f3]
    and a
    jr z, jr_00f_71e3

    ld hl, $d017
    ld de, $cfcc

jr_00f_71e3:
    call Call_00f_7b54
    jr nz, jr_00f_7256

    ld a, [hl+]
    ld b, a
    and a
    jr nz, jr_00f_7256

    ld a, [hl+]
    cp $03
    jr z, jr_00f_7256

    ld a, [hl-]
    cp $03
    jr z, jr_00f_7256

    ld a, [de]
    cp $02
    ld b, $34
    jr z, jr_00f_7213

    cp $21
    ld b, $67
    jr z, jr_00f_7213

    push hl
    push de
    call Call_00f_66f1
    pop de
    pop hl
    ld a, [$d05e]
    and a
    jr nz, jr_00f_725a

    jr jr_00f_7218

jr_00f_7213:
    call Call_00f_7027
    cp b
    ret nc

jr_00f_7218:
    dec hl
    set 3, [hl]
    push de
    dec de
    ldh a, [$f3]
    and a
    ld b, $c7
    ld hl, $d063
    ld a, [de]
    ld de, $d06b
    jr nz, jr_00f_7233

    ld b, $a9
    ld hl, $d068
    ld de, $d070

jr_00f_7233:
    cp $5c
    jr nz, jr_00f_7240

    set 0, [hl]
    xor a
    ld [de], a
    ld hl, $7267
    jr jr_00f_7243

jr_00f_7240:
    ld hl, $7262

jr_00f_7243:
    pop de
    ld a, [de]
    cp $42
    jr z, jr_00f_7250

    ld a, b
    call Call_00f_7b71
    jp Jump_000_3c36


jr_00f_7250:
    call Call_00f_7b64
    jp Jump_000_3c36


jr_00f_7256:
    ld a, [de]
    cp $42
    ret nz

jr_00f_725a:
    ld c, $32
    call Call_000_372f
    jp Jump_00f_7b39


    rla
    ld a, $40
    ld a, [hl+]
    ld d, b
    rla
    ld c, a
    ld b, b
    ld a, [hl+]
    ld d, b
    ld hl, $76e7
    ld b, $01
    jp Jump_000_3e84


    ld hl, $d014
    ld de, $d062
    ldh a, [$f3]
    and a
    jr z, jr_00f_7285

    ld hl, $cfe5
    ld de, $d067

jr_00f_7285:
    xor a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl], a
    ld a, [de]
    res 7, a
    ld [de], a
    ret


    xor a
    ld [$cc5b], a
    call Call_00f_7b54
    ret nz

    ldh a, [$f3]
    and a
    jp nz, Jump_00f_7317

    ld a, [$cfe8]
    and a
    jp nz, Jump_00f_7398

    ld a, [$cfd4]
    ld b, a
    ld a, [$cfe9]
    cp b
    ret z

    ld a, [$cfea]
    cp b
    ret z

    ld a, [$cfd2]
    cp $23
    jr nz, jr_00f_72c7

    ld a, [$d498]
    and a
    ld a, $05
    ld b, $4d
    jr z, jr_00f_72d1

    ld b, $1a
    jr jr_00f_72d1

jr_00f_72c7:
    cp $07
    ld b, $1a
    jr c, jr_00f_72d1

    ld b, $4d
    sub $1e

jr_00f_72d1:
    push af
    call Call_00f_7027
    cp b
    pop bc
    ret nc

    ld a, b
    cp $04
    jr z, jr_00f_72f1

    cp $05
    jr z, jr_00f_7304

    ld a, $40
    ld [$cfe8], a
    call Call_00f_6eb3
    ld a, $a9
    call Call_00f_7b94
    jp Jump_00f_7b49


jr_00f_72f1:
    ld a, $10
    ld [$cfe8], a
    call Call_00f_6ef0
    ld a, $a9
    call Call_00f_7b94
    ld hl, $738e
    jp Jump_000_3c36


jr_00f_7304:
    call Call_00f_79aa
    ld a, $20
    ld [$cfe8], a
    ld a, $a9
    call Call_00f_7b94
    ld hl, $7393
    jp Jump_000_3c36


Jump_00f_7317:
    ld a, [$d017]
    and a
    jp nz, Jump_00f_7398

    ld a, [$cfce]
    ld b, a
    ld a, [$d018]
    cp b
    ret z

    ld a, [$d019]
    cp b
    ret z

    ld a, [$cfcc]
    cp $23
    jr nz, jr_00f_7341

    ld a, [$d498]
    and a
    ld a, $05
    ld b, $4d
    jr z, jr_00f_734b

    ld b, $1a
    jr jr_00f_734b

jr_00f_7341:
    cp $07
    ld b, $1a
    jr c, jr_00f_734b

    ld b, $4d
    sub $1e

jr_00f_734b:
    push af
    call Call_00f_7027
    cp b
    pop bc
    ret nc

    ld a, b
    cp $04
    jr z, jr_00f_736b

    cp $05
    jr z, jr_00f_737e

    ld a, $40
    ld [$d017], a
    call Call_00f_6eb3
    ld a, $c7
    call Call_00f_7b71
    jp Jump_00f_7b49


jr_00f_736b:
    ld a, $10
    ld [$d017], a
    call Call_00f_6ef0
    ld a, $c7
    call Call_00f_7b71
    ld hl, $738e
    jp Jump_000_3c36


jr_00f_737e:
    ld a, $20
    ld [$d017], a
    ld a, $c7
    call Call_00f_7b71
    ld hl, $7393
    jp Jump_000_3c36


    rla
    ld h, e
    ld b, b
    ld a, [hl+]
    ld d, b
    rla
    ld [hl], d
    ld b, b
    ld a, [hl+]
    ld d, b

Jump_00f_7398:
    and $20
    ret z

    ldh a, [$f3]
    and a
    jr nz, jr_00f_73bc

    ld a, [$cfd4]
    sub $14
    ret nz

    ld [$cfe8], a
    ld hl, $d8a7
    ld a, [$cfe7]
    ld bc, $002c
    call Call_000_3a74
    xor a
    ld [hl], a
    ld hl, $73d9
    jr jr_00f_73d6

jr_00f_73bc:
    ld a, [$cfce]
    sub $14
    ret nz

    ld [$d017], a
    ld hl, $d16e
    ld a, [$cc2f]
    ld bc, $002c
    call Call_000_3a74
    xor a
    ld [hl], a
    ld hl, $73d9

jr_00f_73d6:
    jp Jump_000_3c36


    rla
    add a
    ld b, b
    ld a, [hl+]
    ld d, b

Call_00f_73de:
    ld hl, $cd1a
    ld de, $cfd2
    ldh a, [$f3]
    and a
    jr z, jr_00f_73ef

    ld hl, $cd2e
    ld de, $cfcc

jr_00f_73ef:
    ld a, [de]
    sub $0a
    cp $08
    jr c, jr_00f_73f8

    sub $28

jr_00f_73f8:
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    inc b
    ld a, $0d
    cp b
    jp c, Jump_00f_74d8

    ld a, [de]
    cp $12
    jr c, jr_00f_7410

    inc b
    ld a, $0d
    cp b
    jr nc, jr_00f_7410

    ld b, a

jr_00f_7410:
    ld [hl], b
    ld a, c
    cp $04
    jr nc, jr_00f_7480

    push hl
    ld hl, $d025
    ld de, $cd12
    ldh a, [$f3]
    and a
    jr z, jr_00f_7428

    ld hl, $cff6
    ld de, $cd26

jr_00f_7428:
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00f_7434

    inc d

jr_00f_7434:
    pop bc
    ld a, [hl-]
    sub $e7
    jr nz, jr_00f_7440

    ld a, [hl]
    sbc $03
    jp z, Jump_00f_74d6

jr_00f_7440:
    push hl
    push bc
    ld hl, $7681
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    pop bc
    xor a
    ldh [$96], a
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38a5
    ld a, [hl]
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    pop hl
    ldh a, [$98]
    sub $e7
    ldh a, [$97]
    sbc $03
    jp c, Jump_00f_7479

    ld a, $03
    ldh [$97], a
    ld a, $e7
    ldh [$98], a

Jump_00f_7479:
    ldh a, [$97]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    pop hl

jr_00f_7480:
    ld b, c
    inc b
    call Call_00f_763e
    ld hl, $d062
    ld de, $cfd1
    ld bc, $ccf7
    ldh a, [$f3]
    and a
    jr z, jr_00f_749c

    ld hl, $d067
    ld de, $cfcb
    ld bc, $ccf3

jr_00f_749c:
    ld a, [de]
    cp $6b
    jr nz, jr_00f_74af

    bit 4, [hl]
    push af
    push bc
    push de
    ld hl, $5816
    ld b, $1e
    call nz, Call_000_3e84
    pop de

jr_00f_74af:
    call Call_00f_7b83
    ld a, [de]
    cp $6b
    jr nz, jr_00f_74c4

    pop bc
    ld a, $01
    ld [bc], a
    ld hl, $58b2
    ld b, $1e
    pop af
    call nz, Call_000_3e84

jr_00f_74c4:
    ldh a, [$f3]
    and a
    call z, Call_00f_6fa5
    ld hl, $74de
    call Call_000_3c36
    call Call_00f_6eb3
    jp Jump_00f_6ef0


Jump_00f_74d6:
    pop hl
    dec [hl]

Jump_00f_74d8:
    ld hl, $7b19
    jp Jump_000_3c36


    rla
    sbc d
    ld b, b
    ld a, [hl+]
    ld [$f821], sp
    ld [hl], h
    ldh a, [$f3]
    and a
    ld a, [$cfd2]
    jr z, jr_00f_74f1

    ld a, [$cfcc]

jr_00f_74f1:
    cp $12
    ret nc

    ld hl, $74fd
    ret


    ld a, [bc]
    rla
    and l
    ld b, b
    ld a, [hl+]
    rla
    or b
    ld b, b
    ld a, [hl+]
    ld d, b
    ld hl, $cd2e
    ld de, $cfd2
    ld bc, $d066
    ldh a, [$f3]
    and a
    jr z, jr_00f_7528

    ld hl, $cd1a
    ld de, $cfcc
    ld bc, $d061
    ld a, [$d12a]
    cp $04
    jr z, jr_00f_7528

    call Call_00f_7027
    cp $40
    jp c, Jump_00f_7610

jr_00f_7528:
    call Call_00f_7b54
    jp nz, Jump_00f_7610

    ld a, [de]
    cp $44
    jr c, jr_00f_7540

    call Call_00f_7027
    cp $55
    jp nc, Jump_00f_7606

    ld a, [de]
    sub $44
    jr jr_00f_755f

jr_00f_7540:
    push hl
    push de
    push bc
    call Call_00f_66f1
    pop bc
    pop de
    pop hl
    ld a, [$d05e]
    and a
    jp nz, Jump_00f_7610

    ld a, [bc]
    bit 6, a
    jp nz, Jump_00f_7610

    ld a, [de]
    sub $12
    cp $08
    jr c, jr_00f_755f

    sub $28

jr_00f_755f:
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    dec b
    jp z, Jump_00f_7606

    ld a, [de]
    cp $24
    jr c, jr_00f_7575

    cp $44
    jr nc, jr_00f_7575

    dec b
    jr nz, jr_00f_7575

    inc b

jr_00f_7575:
    ld [hl], b
    ld a, c
    cp $04
    jr nc, jr_00f_75e2

    push hl
    push de
    ld hl, $cff6
    ld de, $cd26
    ldh a, [$f3]
    and a
    jr z, jr_00f_758e

    ld hl, $d025
    ld de, $cd12

jr_00f_758e:
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00f_759a

    inc d

jr_00f_759a:
    pop bc
    ld a, [hl-]
    sub $01
    jr nz, jr_00f_75a5

    ld a, [hl]
    and a
    jp z, Jump_00f_7603

jr_00f_75a5:
    push hl
    push bc
    ld hl, $7681
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    pop bc
    xor a
    ldh [$96], a
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38a5
    ld a, [hl]
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    pop hl
    ldh a, [$98]
    ld b, a
    ldh a, [$97]
    or b
    jp nz, Jump_00f_75da

    ldh [$97], a
    ld a, $01
    ldh [$98], a

Jump_00f_75da:
    ldh a, [$97]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    pop de
    pop hl

jr_00f_75e2:
    ld b, c
    inc b
    push de
    call Call_00f_763e
    pop de
    ld a, [de]
    cp $44
    jr nc, jr_00f_75f1

    call Call_00f_7b64

jr_00f_75f1:
    ldh a, [$f3]
    and a
    call nz, Call_00f_6fa5
    ld hl, $7617
    call Call_000_3c36
    call Call_00f_6eb3
    jp Jump_00f_6ef0


Jump_00f_7603:
    pop de
    pop hl
    inc [hl]

Jump_00f_7606:
    ld a, [de]
    cp $44
    ret nc

    ld hl, $7b19
    jp Jump_000_3c36


Jump_00f_7610:
    ld a, [de]
    cp $44
    ret nc

    jp Jump_00f_7b29


    rla
    cp b
    ld b, b
    ld a, [hl+]
    ld [$3921], sp
    db $76
    ldh a, [$f3]
    and a
    ld a, [$cfd2]
    jr z, jr_00f_762a

    ld a, [$cfcc]

jr_00f_762a:
    cp $1a
    ret c

    cp $44
    ret nc

    ld hl, $7634
    ret


    ld a, [bc]
    rla
    jp Jump_000_2a40


    rla
    adc $40
    ld a, [hl+]
    ld d, b

Call_00f_763e:
    ld hl, $7655
    ld c, $50

jr_00f_7643:
    dec b
    jr z, jr_00f_764c

jr_00f_7646:
    ld a, [hl+]
    cp c
    jr z, jr_00f_7643

    jr jr_00f_7646

jr_00f_764c:
    ld de, $cf4a
    ld bc, $000a
    jp Jump_000_00b1


    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld d, b
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld d, b
    sub d
    adc a
    add h
    add h
    add e
    ld d, b
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b
    add b
    add d
    add d
    sub h
    sub c
    add b
    add d
    sbc b
    ld d, b
    add h
    sub l
    add b
    add e
    add h
    ld d, b
    add hl, de
    ld h, h
    inc e
    ld h, h
    ld hl, $2864
    ld h, h
    ld [hl-], a
    ld h, h
    ld b, d
    ld h, h
    ld bc, $0f01
    ld a, [bc]
    ld [bc], a
    ld bc, $0a19
    inc bc
    ld bc, $0a23
    inc b
    ld bc, $6121
    ret nc

    ld de, $d073
    ld bc, $d069
    ldh a, [$f3]
    and a
    jr z, jr_00f_76b2

    ld hl, $d066
    ld de, $cd05
    ld bc, $d06e

jr_00f_76b2:
    set 0, [hl]
    xor a
    ld [de], a
    inc de
    ld [de], a
    ld [$cfd2], a
    ld [$cfcc], a
    call Call_00f_7027
    and $01
    inc a
    inc a
    ld [bc], a
    ldh a, [$f3]
    add $ae
    jp Jump_00f_7b71


    ld hl, $d061
    ld de, $d069
    ldh a, [$f3]
    and a
    jr z, jr_00f_76de

    ld hl, $d066
    ld de, $d06e

jr_00f_76de:
    set 1, [hl]
    call Call_00f_7027
    and $01
    inc a
    inc a
    ld [de], a
    ldh a, [$f3]
    add $b0
    jp Jump_00f_7b71


    ldh a, [$f3]
    and a
    jr nz, jr_00f_7747

    ld a, [$d056]
    dec a
    jr nz, jr_00f_7734

    ld a, [$d126]
    ld b, a
    ld a, [$d021]
    cp b
    jr nc, jr_00f_7724

    add b
    ld c, a
    inc c

jr_00f_7707:
    call Call_00f_7027
    cp c
    jr nc, jr_00f_7707

    srl b
    srl b
    cp b
    jr nc, jr_00f_7724

    ld c, $32
    call Call_000_372f
    ld a, [$cfd1]
    cp $64
    jp nz, Jump_00f_7b39

    jp Jump_00f_7b2e


jr_00f_7724:
    call Call_00f_4e08
    xor a
    ld [$cc5b], a
    inc a
    ld [$d077], a
    ld a, [$cfd1]
    jr jr_00f_779a

jr_00f_7734:
    ld c, $32
    call Call_000_372f
    ld hl, $7b44
    ld a, [$cfd1]
    cp $64
    jp nz, Jump_000_3c36

    jp Jump_00f_7b2e


jr_00f_7747:
    ld a, [$d056]
    dec a
    jr nz, jr_00f_7787

    ld a, [$d021]
    ld b, a
    ld a, [$d126]
    cp b
    jr nc, jr_00f_7777

    add b
    ld c, a
    inc c

jr_00f_775a:
    call Call_00f_7027
    cp c
    jr nc, jr_00f_775a

    srl b
    srl b
    cp b
    jr nc, jr_00f_7777

    ld c, $32
    call Call_000_372f
    ld a, [$cfcb]
    cp $64
    jp nz, Jump_00f_7b39

    jp Jump_00f_7b2e


jr_00f_7777:
    call Call_00f_4e08
    xor a
    ld [$cc5b], a
    inc a
    ld [$d077], a
    ld a, [$cfcb]
    jr jr_00f_779a

jr_00f_7787:
    ld c, $32
    call Call_000_372f
    ld hl, $7b44
    ld a, [$cfcb]
    cp $64
    jp nz, Jump_000_3c36

    jp Jump_00f_7b29


jr_00f_779a:
    push af
    call Call_00f_7b94
    ld c, $14
    call Call_000_372f
    pop af
    ld hl, $77b8
    cp $64
    jr z, jr_00f_77b5

    ld hl, $77bd
    cp $2e
    jr z, jr_00f_77b5

    ld hl, $77c2

jr_00f_77b5:
    jp Jump_000_3c36


    rla
    sub $40
    ld a, [hl+]
    ld d, b
    rla
    ld [$2a40], a
    ld d, b
    rla
    cp $40
    ld a, [hl+]
    ld d, b
    ld hl, $d061
    ld de, $d069
    ld bc, $d073
    ldh a, [$f3]
    and a
    jr z, jr_00f_77de

    ld hl, $d066
    ld de, $d06e
    ld bc, $cd05

jr_00f_77de:
    bit 2, [hl]
    ret nz

    set 2, [hl]
    ld hl, $cfd2
    ldh a, [$f3]
    and a
    jr z, jr_00f_77ee

    ld hl, $cfcc

jr_00f_77ee:
    ld a, [hl]
    cp $4d
    jr z, jr_00f_780c

    cp $2c
    ld a, $02
    jr z, jr_00f_7809

    call Call_00f_7027
    and $03
    cp $02
    jr c, jr_00f_7807

    call Call_00f_7027
    and $03

jr_00f_7807:
    inc a
    inc a

jr_00f_7809:
    ld [de], a
    ld [bc], a
    ret


jr_00f_780c:
    ld a, $02
    ld [hl], a
    jr jr_00f_7809

    call Call_00f_7b54
    ret nz

    ld hl, $d066
    ld de, $cfd2
    ldh a, [$f3]
    and a
    jr z, jr_00f_7826

    ld hl, $d061
    ld de, $cfcc

jr_00f_7826:
    ld a, [$d12a]
    cp $04
    call z, Call_00f_79aa
    ld a, [de]
    cp $1f
    ld b, $1a
    jr z, jr_00f_7837

    ld b, $4d

jr_00f_7837:
    call Call_00f_7027
    cp b
    ret nc

    set 3, [hl]
    call Call_00f_79aa
    ret


    ld hl, $64d8
    ld b, $3d
    jp Jump_000_3e84


    ld hl, $d061
    ld de, $cfd2
    ldh a, [$f3]
    and a
    ld b, $ae
    jr z, jr_00f_785f

    ld hl, $d066
    ld de, $cfcc
    ld b, $af

jr_00f_785f:
    set 4, [hl]
    ld a, [de]
    dec de
    cp $2b
    jr nz, jr_00f_786b

    set 6, [hl]
    ld b, $64

jr_00f_786b:
    ld a, [de]
    cp $5b
    jr nz, jr_00f_7874

    set 6, [hl]
    ld b, $c0

jr_00f_7874:
    push de
    push bc
    inc hl
    push hl
    ld a, [hl]
    bit 4, a
    ld hl, $5816
    ld b, $1e
    call nz, Call_000_3e84
    pop hl
    pop bc
    xor a
    ld [$cc5b], a
    ld a, b
    call Call_00f_7b94
    ld a, [hl]
    bit 4, a
    ld hl, $58b2
    ld b, $1e
    call nz, Call_000_3e84
    pop de
    ld a, [de]
    ld [$cd3d], a
    ld hl, $78a3
    jp Jump_000_3c36


    rla
    ld de, $2a41
    ld [$3dfa], sp
    call Call_000_0dfe
    ld hl, $78d4
    jr z, jr_00f_78d3

    cp $4c
    ld hl, $78d9
    jr z, jr_00f_78d3

    cp $82
    ld hl, $78de
    jr z, jr_00f_78d3

    cp $8f
    ld hl, $78e3
    jr z, jr_00f_78d3

    cp $13
    ld hl, $78e8
    jr z, jr_00f_78d3

    cp $5b
    ld hl, $78ed

jr_00f_78d3:
    ret


    rla
    dec d
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    add hl, hl
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    dec a
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    ld d, c
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    ld e, a
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    ld l, a
    ld b, c
    ld a, [hl+]
    ld d, b
    ld hl, $d061
    ld de, $d069
    ldh a, [$f3]
    and a
    jr z, jr_00f_7903

    ld hl, $d066
    ld de, $d06e

jr_00f_7903:
    bit 5, [hl]
    ret nz

    call Call_00f_79aa
    set 5, [hl]
    call Call_00f_7027
    and $03
    cp $02
    jr c, jr_00f_7919

    call Call_00f_7027
    and $03

jr_00f_7919:
    inc a
    ld [de], a
    ret


    ld hl, $64ac
    ld b, $3d
    jp Jump_000_3e84


    ld hl, $6288
    ld b, $3d
    jp Jump_000_3e84


    ld hl, $78f6
    ld b, $04
    jp Jump_000_3e84


    call Call_00f_7027
    cp $19
    ret nc

    jr jr_00f_794a

    call Call_00f_7b54
    jr nz, jr_00f_7981

    call Call_00f_66f1
    ld a, [$d05e]
    and a
    jr nz, jr_00f_7981

jr_00f_794a:
    ldh a, [$f3]
    and a
    ld hl, $d066
    ld bc, $d06f
    ld a, [$cfd2]
    jr z, jr_00f_7961

    ld hl, $d061
    ld bc, $d06a
    ld a, [$cfcc]

jr_00f_7961:
    bit 7, [hl]
    jr nz, jr_00f_7981

    set 7, [hl]
    push af
    call Call_00f_7027
    and $03
    inc a
    inc a
    ld [bc], a
    pop af
    cp $4c
    call nz, Call_00f_7b64
    ld hl, $797c
    jp Jump_000_3c36


    rla
    ld a, l
    ld b, c
    ld a, [hl+]
    ld d, b

jr_00f_7981:
    cp $4c
    ret z

    ld c, $32
    call Call_000_372f
    jp Jump_00f_7b29


    ld hl, $6562
    ld b, $3d
    jp Jump_000_3e84


    ld hl, $7c31
    ld b, $05
    jp Jump_000_3e84


    ld hl, $d062
    ldh a, [$f3]
    and a
    jr z, jr_00f_79a7

    ld hl, $d067

jr_00f_79a7:
    set 5, [hl]
    ret


Call_00f_79aa:
    push hl
    ld hl, $d067
    ldh a, [$f3]
    and a
    jr z, jr_00f_79b6

    ld hl, $d062

jr_00f_79b6:
    res 5, [hl]
    pop hl
    ret


    ld hl, $d062
    ldh a, [$f3]
    and a
    jr z, jr_00f_79c5

    ld hl, $d067

jr_00f_79c5:
    set 6, [hl]
    ret


    ld c, $32
    call Call_000_372f
    call Call_00f_66f1
    ld a, [$d05e]
    and a
    jr nz, jr_00f_7a4f

    ldh a, [$f3]
    and a
    ld hl, $d01b
    ld a, [$d061]
    jr nz, jr_00f_79ee

    ld a, [$d12a]
    cp $04
    jr nz, jr_00f_7a15

    ld hl, $cfec
    ld a, [$d066]

jr_00f_79ee:
    bit 6, a
    jr nz, jr_00f_7a4f

jr_00f_79f2:
    push hl
    call Call_00f_7027
    and $03
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_00f_79f2

    ld d, a
    ldh a, [$f3]
    and a
    ld hl, $d01b
    ld a, [$cc2e]
    jr z, jr_00f_7a3a

    ld hl, $cfec
    ld a, [$cce2]
    jr jr_00f_7a3a

jr_00f_7a15:
    ld a, [$d066]
    bit 6, a
    jr nz, jr_00f_7a4f

    ld a, [$cc26]
    push af
    ld a, $01
    ld [$ccdb], a
    call Call_00f_5320
    call Call_000_371b
    ld hl, $cfec
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ld d, [hl]
    pop af
    ld hl, $d01b

jr_00f_7a3a:
    ld c, a
    ld b, $00
    add hl, bc
    ld a, d
    ld [hl], a
    ld [$d11d], a
    call Call_000_2f4d
    call Call_00f_7b83
    ld hl, $7a52
    jp Jump_000_3c36


jr_00f_7a4f:
    jp Jump_00f_7b2e


    rla
    sub c
    ld b, c
    ld a, [hl+]
    ld d, b
    ld hl, $7dba
    ld b, $0a
    jp Jump_000_3e84


    call Call_00f_7b83
    jp Jump_00f_7b1e


    call Call_00f_66f1
    ld a, [$d05e]
    and a
    jr nz, jr_00f_7ae1

    ld de, $d071
    ld hl, $cfec
    ldh a, [$f3]
    and a
    jr z, jr_00f_7a7f

    ld de, $d06c
    ld hl, $d01b

jr_00f_7a7f:
    ld a, [de]
    and a
    jr nz, jr_00f_7ae1

jr_00f_7a83:
    push hl
    call Call_00f_7027
    and $03
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_00f_7a83

    ld [$d11d], a
    push hl
    ldh a, [$f3]
    and a
    ld hl, $d02c
    jr nz, jr_00f_7aaa

    ld a, [$d12a]
    cp $04
    pop hl
    jr nz, jr_00f_7abc

    push hl
    ld hl, $cffd

jr_00f_7aaa:
    push hl
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    and $3f
    pop hl
    jr z, jr_00f_7ae0

    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_00f_7a83

jr_00f_7abc:
    call Call_00f_7027
    and $07
    inc a
    inc c
    swap c
    add c
    ld [de], a
    call Call_00f_7b64
    ld hl, $ccee
    ldh a, [$f3]
    and a
    jr nz, jr_00f_7ad3

    inc hl

jr_00f_7ad3:
    ld a, [$d11d]
    ld [hl], a
    call Call_000_2f4d
    ld hl, $7ae4
    jp Jump_000_3c36


jr_00f_7ae0:
    pop hl

jr_00f_7ae1:
    jp Jump_00f_7b2e


    rla
    and e
    ld b, c
    ld a, [hl+]
    ld d, b
    ld hl, $6511
    ld b, $3d
    jp Jump_000_3e84


    ld hl, $796d
    ld b, $04
    jp Jump_000_3e84


    ld hl, $79a4
    ld b, $04
    jp Jump_000_3e84


    ld hl, $62ba
    ld b, $3d
    jp Jump_000_3e84


    ld hl, $637f
    ld b, $3d
    jp Jump_000_3e84


    ld hl, $645d
    ld b, $3d
    jp Jump_000_3e84


    rla
    cp e
    ld b, c
    ld a, [hl+]
    ld d, b

Jump_00f_7b1e:
    ld hl, $7b24
    jp Jump_000_3c36


    rla
    adc $41
    ld a, [hl+]
    ld d, b

Jump_00f_7b29:
    ld a, [$ccf4]
    and a
    ret nz

Jump_00f_7b2e:
    ld hl, $7b34
    jp Jump_000_3c36


    rla
    jp c, Jump_000_2a41

    ld d, b

Jump_00f_7b39:
    ld hl, $7b3f
    jp Jump_000_3c36


    rla
    db $ec
    ld b, c
    ld a, [hl+]
    ld d, b
    rla
    nop
    ld b, d
    ld a, [hl+]
    ld d, b

Jump_00f_7b49:
    ld hl, $7b4f
    jp Jump_000_3c36


    rla
    ld [de], a
    ld b, d
    ld a, [hl+]
    ld d, b

Call_00f_7b54:
    push hl
    ld hl, $d067
    ldh a, [$f3]
    and a
    jr z, jr_00f_7b60

    ld hl, $d062

jr_00f_7b60:
    bit 4, [hl]
    pop hl
    ret


Call_00f_7b64:
    ldh a, [$f3]
    and a
    ld a, [$cfd1]
    jr z, jr_00f_7b6f

    ld a, [$cfcb]

jr_00f_7b6f:
    and a
    ret z

Call_00f_7b71:
Jump_00f_7b71:
    ld [$d07b], a
    ldh a, [$f3]
    and a
    ld a, $06
    jr z, jr_00f_7b7d

    ld a, $03

jr_00f_7b7d:
    ld [$cc5b], a
    jp Jump_00f_7b97


Call_00f_7b83:
    xor a
    ld [$cc5b], a
    ldh a, [$f3]
    and a
    ld a, [$cfd1]
    jr z, jr_00f_7b92

    ld a, [$cfcb]

jr_00f_7b92:
    and a
    ret z

Call_00f_7b94:
    ld [$d07b], a

Jump_00f_7b97:
    push hl
    push de
    push bc
    ld a, $08
    call Call_000_3eb4
    ld hl, $4e98
    ld b, $1e
    call Call_000_3e84
    pop bc
    pop de
    pop hl
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
