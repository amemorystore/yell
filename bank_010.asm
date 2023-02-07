; disasSembly of "yell.gbc"
SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    call Call_000_3df2
    call Call_000_16dd
    call Call_000_231c
    ld a, [$cc36]
    push af
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld [$cc2a], a
    inc a
    ld [$d11d], a
    ldh [$b7], a

Jump_010_401d:
    ld hl, $4000
    ld b, $05
    call Call_000_3e84

jr_010_4025:
    ld b, $08
    call Call_000_3e05

jr_010_402a:
    ld hl, $cc24
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    inc a
    ld [$cc37], a
    inc hl
    inc hl
    ld a, $06
    ld [hl+], a
    ld [hl], $33
    call Call_010_4140
    jr c, jr_010_4061

jr_010_4042:
    xor a
    ld [$cc37], a
    ld [$cc26], a
    ld [$cc2a], a
    ldh [$b7], a
    ld [$cd3a], a
    ld [$cd3b], a
    pop af
    ld [$cc36], a
    call Call_000_3dd8
    call Call_000_3e03
    jp Jump_000_2f66


jr_010_4061:
    call Call_010_4070
    dec b
    jr z, jr_010_4042

    dec b
    jr z, jr_010_402a

    dec b
    jr z, jr_010_4025

    jp Jump_010_401d


Call_010_4070:
    call Call_000_3bd9
    ld a, [$cc26]
    push af
    ld b, a
    ld a, [$cc2a]
    push af
    ld a, [$cc36]
    push af
    add b
    inc a
    ld [$d11d], a
    ld a, [$d11d]
    push af
    ld a, [$cd3d]
    push af
    ld hl, $d309
    call Call_010_4303
    ld b, $02
    jr z, jr_010_40cd

    call Call_010_5086
    ld hl, $cc24
    ld a, $08
    ld [hl+], a
    ld a, $0f
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, $04
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [$cc37], a
    ldh [$b7], a

jr_010_40b3:
    call Call_000_3aab
    bit 1, a
    ld b, $02
    jr nz, jr_010_40f4

    ld a, [$cc26]
    and a
    jr z, jr_010_4104

    dec a
    jr z, jr_010_410b

    dec a
    jr z, jr_010_4116

    dec a
    jr z, jr_010_411f

    ld b, $01

jr_010_40cd:
    pop af
    ld [$cd3d], a
    pop af
    ld [$d11d], a
    pop af
    ld [$cc36], a
    pop af
    ld [$cc2a], a
    pop af
    ld [$cc26], a
    ld a, $01
    ldh [$b7], a
    push bc
    ld hl, $c3dc
    ld de, $0014
    ld bc, $7f0d
    call Call_010_4501
    pop bc
    ret


jr_010_40f4:
    push bc
    ld hl, $c44f
    ld de, $0014
    ld bc, $7f09
    call Call_010_4501
    pop bc
    jr jr_010_40cd

jr_010_4104:
    call Call_010_4323
    ld b, $00
    jr jr_010_40cd

jr_010_410b:
    ld a, [$d11d]
    call Call_000_11a5
    call Call_000_2238
    jr jr_010_40b3

jr_010_4116:
    ld a, $4a
    call Call_000_3eb4
    ld b, $00
    jr jr_010_40cd

jr_010_411f:
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ld a, [$d11d]
    ld [$cf90], a
    ld hl, $4b74
    ld b, $3a
    call Call_000_3e84
    xor a
    ldh [$ba], a
    call Call_000_16dd
    pop af
    ldh [$d7], a
    ld b, $03
    jr jr_010_40cd

Call_010_4140:
    call Call_010_41c2

Jump_010_4143:
    call Call_010_427c
    call Call_000_3de0
    call Call_000_3aab
    bit 1, a
    jp nz, Jump_010_41c0

    bit 0, a
    jp nz, Jump_010_41be

    bit 6, a
    jr z, jr_010_4168

    ld a, [$cc36]
    and a
    jp z, Jump_010_4143

    dec a
    ld [$cc36], a
    jp Jump_010_4143


jr_010_4168:
    bit 7, a
    jr z, jr_010_4185

    ld a, [$cd3d]
    cp $07
    jp c, Jump_010_4143

    sub $07
    ld b, a
    ld a, [$cc36]
    cp b
    jp z, Jump_010_4143

    inc a
    ld [$cc36], a
    jp Jump_010_4143


jr_010_4185:
    bit 4, a
    jr z, jr_010_41a8

    ld a, [$cd3d]
    cp $07
    jp c, Jump_010_4143

    sub $06
    ld b, a
    ld a, [$cc36]
    add $07
    ld [$cc36], a
    cp b
    jp c, Jump_010_4143

    dec b
    ld a, b
    ld [$cc36], a
    jp Jump_010_4143


jr_010_41a8:
    bit 5, a
    jr z, jr_010_41be

    ld a, [$cc36]
    sub $07
    ld [$cc36], a
    jp nc, Jump_010_4143

    xor a
    ld [$cc36], a
    jp Jump_010_4143


Jump_010_41be:
jr_010_41be:
    scf
    ret


Jump_010_41c0:
    and a
    ret


Call_010_41c2:
    xor a
    ldh [$ba], a
    ld hl, $c427
    ld a, $7a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $c3ae
    ld [hl], $71
    ld hl, $c3c2
    call Call_010_4243
    ld hl, $c462
    call Call_010_4243
    ld hl, $d309
    ld b, $13
    call Call_000_2a81
    ld de, $d11d
    ld hl, $c3d8
    ld bc, $0103
    call Call_000_3c5b
    ld hl, $d2f6
    ld b, $13
    call Call_000_2a81
    ld de, $d11d
    ld hl, $c414
    ld bc, $0103
    call Call_000_3c5b
    ld hl, $c3c4
    ld de, $4252
    call Call_000_1723
    ld hl, $c400
    ld de, $4257
    call Call_000_1723
    ld hl, $c3b5
    ld de, $425b
    call Call_000_1723
    ld hl, $c450
    ld de, $4264
    call Call_000_1723
    ld hl, $d31b
    ld b, $99

jr_010_4231:
    ld a, [hl-]
    ld c, $08

jr_010_4234:
    dec b
    sla a
    jr c, jr_010_423e

    dec c
    jr nz, jr_010_4234

    jr jr_010_4231

jr_010_423e:
    ld a, b
    ld [$cd3d], a
    ret


Call_010_4243:
    ld c, $09
    ld de, $0014
    ld a, $71

jr_010_424a:
    ld [hl], a
    add hl, de
    xor $01
    dec c
    jr nz, jr_010_424a

    ret


    sub d
    add h
    add h
    adc l
    ld d, b
    adc [hl]
    sub [hl]
    adc l
    ld d, b
    add d
    adc [hl]
    adc l
    sub e
    add h
    adc l
    sub e
    sub d
    ld d, b
    add e
    add b
    sub e
    add b
    ld c, [hl]
    add d
    sub c
    sbc b
    ld c, [hl]
    add b
    sub c
    add h
    add b
    ld c, [hl]
    adc a
    sub c
    adc l
    sub e
    ld c, [hl]
    sub b
    sub h
    adc b
    sub e
    ld d, b

Call_010_427c:
    xor a
    ldh [$ba], a
    ld hl, $c3cc
    ld bc, $0e0a
    call Call_000_1692
    ld hl, $c3dd
    ld a, [$cc36]
    ld [$d11d], a
    ld d, $07
    ld a, [$cd3d]
    cp $07
    jr nc, jr_010_429f

    ld d, a
    dec a
    ld [$cc28], a

jr_010_429f:
    ld a, [$d11d]
    inc a
    ld [$d11d], a
    push af
    push de
    push hl
    ld de, $ffec
    add hl, de
    ld de, $d11d
    ld bc, $8103
    call Call_000_3c5b
    ld de, $0014
    add hl, de
    dec hl
    push hl
    ld hl, $d2f6
    call Call_010_4303
    pop hl
    ld a, $7f
    jr z, jr_010_42c9

    ld a, $72

jr_010_42c9:
    ld [hl], a
    push hl
    ld hl, $d309
    call Call_010_4303
    jr nz, jr_010_42e3

    ld de, $42d8
    jr jr_010_42e9

    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b

jr_010_42e3:
    call Call_010_5086
    call Call_000_2e93

jr_010_42e9:
    pop hl
    inc hl
    call Call_000_1723
    pop hl
    ld bc, $0028
    add hl, bc
    pop de
    pop af
    ld [$d11d], a
    dec d
    jr nz, jr_010_429f

    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    ret


Call_010_4303:
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $02
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    ret


    call Call_000_3dd8
    call Call_000_16dd
    call Call_000_231c
    ld hl, $4000
    ld b, $05
    call Call_000_3e84

Call_010_4323:
    ld hl, $d72b
    set 1, [hl]
    ld a, $33
    ldh [rNR50], a
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    call Call_000_3df2
    ld a, [$d11d]
    ld [$cf90], a
    push af
    ld b, $04
    call Call_000_3e05
    pop af
    ld [$d11d], a
    call Call_010_439c
    call c, Call_010_44ae

jr_010_434b:
    call Call_000_381e
    ldh a, [$b5]
    and $03
    jr z, jr_010_434b

    pop af

Call_010_4355:
    ldh [$d7], a
    call Call_000_3df2
    call Call_000_16dd
    call Call_000_3e03
    call Call_000_36a3
    call Call_000_3de0
    ld hl, $d72b
    res 1, [hl]
    ld a, $77
    ldh [rNR50], a
    ret


    add a
    sub e
    ld a, a
    ld a, a
    and $60
    and $e6
    ld h, c
    ld c, [hl]
    sub [hl]
    sub e
    ld a, a
    ld a, a
    ld a, a
    and $e6
    and $ab
    and c
    ld d, b
    ld d, h
    ld d, b
    ld l, b
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    ld l, d
    ld d, b

Call_010_439c:
    call Call_000_16dd
    ld hl, $c3a0
    ld de, $0001
    ld bc, $6414
    call Call_010_4501
    ld hl, $c4f4
    ld b, $6f
    call Call_010_4501
    ld hl, $c3b4
    ld de, $0014
    ld bc, $6610
    call Call_010_4501
    ld hl, $c3c7
    ld b, $67
    call Call_010_4501
    ld a, $63
    ld [$c3a0], a
    ld a, $65
    ld [$c3b3], a
    ld a, $6c
    ld [$c4f4], a
    ld a, $6e
    ld [$c507], a
    ld hl, $c454
    ld de, $4387
    call Call_000_1723
    ld hl, $c421
    ld de, $4370
    call Call_000_1723
    call Call_000_2e93
    ld hl, $c3d1
    call Call_000_1723
    ld hl, $450b
    ld a, [$d11d]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $c3f9
    call Call_000_1723
    ld h, b
    ld l, c
    push de
    ld a, [$d11d]
    push af
    call Call_010_509d
    ld hl, $c442
    ld a, $74
    ld [hl+], a
    ld a, $f2
    ld [hl+], a
    ld de, $d11d
    ld bc, $8103
    call Call_000_3c5b
    ld hl, $d2f6
    call Call_010_4303
    pop af
    ld [$d11d], a
    ld a, [$cf90]
    ld [$d0b4], a
    pop de
    push af
    push bc
    push de
    push hl
    call Call_000_3ddb
    call Call_000_3de0
    call Call_000_132f
    ld hl, $c3b5
    call Call_000_1144
    ld a, [$cf90]
    call Call_000_118b
    pop hl
    pop de
    pop bc
    pop af
    ld a, c
    and a
    ret z

    inc de
    ld a, [de]
    ld hl, $c424
    ld bc, $0102
    call Call_000_3c5b
    ld a, $60
    ld [hl], a
    inc de
    inc de
    ld hl, $c427
    ld bc, $8102
    call Call_000_3c5b
    ld a, $61
    ld [hl], a
    inc de
    inc de
    inc de
    push de
    ld hl, $ff8b
    ld a, [hl]
    push af
    ld a, [de]
    ld [hl+], a
    ld a, [hl]
    push af
    dec de
    ld a, [de]
    ld [hl], a
    ld de, $ff8b
    ld hl, $c44b
    ld bc, $0205
    call Call_000_3c5b
    ld hl, $c44e
    ldh a, [$8c]
    sub $0a
    ldh a, [$8b]
    sbc $00
    jr nc, jr_010_449f

    ld [hl], $f6

jr_010_449f:
    inc hl
    ld a, [hl+]
    ld [hl-], a
    ld [hl], $f2
    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    pop hl
    inc hl
    scf
    ret


Call_010_44ae:
    ld bc, $c47d

Call_010_44b1:
    ld a, $02
    ldh [$f9], a
    call Call_000_1919
    xor a
    ldh [$f9], a
    ret


    ld hl, $c3a0
    ld de, $0014
    ld bc, $660d
    call Call_010_4501
    ld hl, $c3b3
    ld b, $67
    call Call_010_4501
    ld hl, $c4a4
    ld de, $0001
    ld bc, $6f14
    call Call_010_4501
    ld a, $6c
    ld [$c4a4], a
    ld a, $6e
    ld [$c4b7], a
    ld a, [$caf5]
    ld l, a
    ld a, [$caf6]
    ld h, a
    ld bc, $c3b5
    ldh a, [$fa]
    set 3, a
    ldh [$fa], a
    call Call_010_44b1
    ldh a, [$fa]
    res 3, a
    ldh [$fa], a
    ret


Call_010_4501:
    push bc
    push de

jr_010_4503:
    ld [hl], b
    add hl, de
    dec c
    jr nz, jr_010_4503

    pop de
    pop bc
    ret


    cp [hl]
    ld c, l
    add sp, $4d
    ld a, c
    ld c, b
    or b
    ld c, b
    rst $00
    ld b, a
    db $f4
    ld c, h
    and c
    ld c, b
    sbc d
    ld c, e
    sub l
    ld b, [hl]
    dec e
    ld c, l
    ld [hl], l
    ld c, l
    db $10
    ld c, l
    inc l
    ld c, h
    adc b
    ld c, h
    ld b, d
    ld c, b
    ld l, d
    ld c, b
    ld l, $4d
    xor [hl]
    ld c, l
    inc b
    ld c, a
    cpl
    ld c, d
    ld e, [hl]
    ld d, b
    pop af
    ld c, [hl]
    ld c, h
    ld c, h
    db $10
    ld c, e
    ld l, [hl]
    ld c, h
    ld [hl], h
    ld c, [hl]
    inc a
    ld c, [hl]
    inc bc
    ld b, a
    cp h
    ld c, [hl]
    jp c, Jump_010_724d

    ld d, b
    ld [hl], d
    ld d, b
    jr nz, jr_010_4597

    sbc b
    ld c, h
    jp c, Jump_010_7e47

    ld b, a
    adc e
    ld c, e
    add d
    ld c, d
    ld b, h
    ld c, e
    call $b04d
    ld c, d
    ld h, e
    ld c, [hl]
    ld d, d
    ld c, l
    ld h, e
    ld c, l
    rst $30
    ld b, a
    ld h, d
    ld c, c
    call c, $ac49
    ld c, h
    ld d, d
    ld c, e
    ld [hl], d
    ld d, b
    xor d
    ld c, [hl]
    ld [hl], d
    ld d, b
    sbc b
    ld c, [hl]
    cp [hl]
    ld c, e
    add [hl]
    ld c, l
    ld [hl], d
    ld d, b
    ld hl, sp+$49
    ld [$984c], sp
    ld c, c
    ret nc

    ld c, [hl]
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    adc $4b
    ld [hl], h
    ld c, c
    dec a
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    pop hl
    ld c, e

jr_010_4597:
    ld b, d
    ld c, d
    add h
    ld c, [hl]
    ld c, $50
    db $ec
    ld c, a
    db $fc
    ld c, a
    rla
    ld c, a
    or h
    ld c, c
    ret nc

    ld c, h
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    adc $48
    db $db
    ld c, b
    ld b, $48
    dec d
    ld c, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    dec e
    ld d, b
    dec l
    ld d, b
    and h
    ld c, a
    or a
    ld c, a
    ld hl, sp+$4d
    ld [$724e], sp
    ld d, b
    ld [hl], d
    ld d, b
    inc h
    ld c, b
    inc sp
    ld c, b
    add h
    ld c, a
    sub h
    ld c, a
    add sp, $48
    ld sp, hl
    ld c, b
    ld a, [hl+]
    ld c, a
    ld h, h
    ld c, a
    ld d, c
    ld c, a
    dec a
    ld c, a
    sbc h
    ld c, d
    ld a, [bc]
    ld c, c
    add sp, $47
    ld d, b
    ld c, c
    ld d, e
    ld c, d
    ld h, h
    ld c, d
    ld b, a
    ld b, a
    ld e, d
    ld b, a
    ld l, d
    ld b, a
    ld [hl], d
    ld d, b
    db $f4
    ld c, e
    inc c
    ld c, d
    and [hl]
    ld c, c
    add h
    ld c, c
    ld a, [de]
    ld c, h
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld d, $47
    inc h
    ld b, a
    inc [hl]
    ld b, a
    call nz, Call_010_724a
    ld d, b
    ld [$be49], a
    ld c, h
    rla
    ld c, c
    ld c, l
    ld d, b
    jp c, $e34f

    ld c, [hl]
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    inc a
    ld c, h
    ld [hl], d
    ld d, b
    db $e4
    ld c, h
    ld e, l
    ld c, h
    ld [hl], d
    ld d, b
    ld [bc], a
    ld c, l
    cp a
    ld c, b
    sbc d
    ld c, l
    ret z

    ld c, c
    ld a, $4d
    ld [hl], d
    ld d, b
    ld a, e
    ld c, h
    ld [hl], l
    ld c, d
    adc a
    ld c, d
    sub c
    ld b, a
    sbc a
    ld b, a
    ld c, a
    ld c, [hl]
    add a
    ld b, [hl]
    and e
    ld b, [hl]
    inc hl
    ld c, e
    ld [hl], d
    ld d, b
    jr jr_010_4693

    ld a, [hl+]
    ld c, [hl]
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld h, e
    ld c, e
    ld [hl], a
    ld c, e
    xor l
    ld b, a
    cp d
    ld b, a
    adc l
    ld c, b
    ld d, [hl]
    ld c, b
    ld [hl], $4b
    ld [hl], e
    ld c, a
    jp z, Jump_010_724f

    ld d, b
    xor [hl]
    ld c, e
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    or c
    ld b, [hl]
    rst $18
    ld b, [hl]
    pop bc
    ld b, [hl]
    di
    ld b, [hl]
    ret nc

    ld b, [hl]
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    ld [hl], d
    ld d, b
    inc h
    ld c, c
    ld [hl-], a
    ld c, c
    ld b, b
    ld c, c
    ret c

    ld c, d
    add sp, $4a
    db $fc
    ld c, d
    sub d
    add h
    add h
    add e
    ld d, b
    ld [bc], a
    inc b
    sub [hl]
    nop
    rla
    nop
    ld b, b

jr_010_4693:
    ld l, $50
    sub d
    add h
    add h
    add e
    ld d, b
    inc bc
    inc bc
    ld [hl+], a
    ld bc, $5f17
    ld b, b
    ld l, $50
    sub d
    add h
    add h
    add e
    ld d, b
    ld b, $07
    and d
    ld [$bf17], sp
    ld b, b
    ld l, $50
    adc e
    adc b
    sbc c
    add b
    sub c
    add e
    ld d, b
    ld [bc], a
    nop
    cp [hl]
    nop
    rla
    ld hl, $2e41
    ld d, b
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    inc bc
    rlca
    and h
    ld bc, $8417
    ld b, c
    ld l, $50
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    dec b
    rlca
    ret nc

    rlca
    rla
    sbc $41
    ld l, $50
    sub e
    adc b
    adc l
    sbc b
    sub e
    sub h
    sub c
    sub e
    adc e
    add h
    ld d, b
    ld bc, $c808
    nop
    rla
    ld b, h
    ld b, d
    ld l, $50
    sub e
    sub h
    sub c
    sub e
    adc e
    add h
    ld d, b
    inc bc
    inc bc
    db $f4
    ld bc, $9717
    ld b, d
    ld l, $50
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    dec b
    inc bc
    ld h, d
    rlca
    rla
    or $42
    ld l, $50
    sub [hl]
    adc [hl]
    sub c
    adc h
    ld d, b
    ld bc, $3c00
    nop
    rla
    ld d, d
    ld b, e
    ld l, $50
    add d
    adc [hl]
    add d
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld [bc], a
    inc b
    call c, Call_000_1700
    or e
    ld b, e
    ld l, $50
    add c
    sub h
    sub e
    sub e
    add h
    sub c
    add l
    adc e
    sbc b
    ld d, b
    inc bc
    rlca
    add $02
    rla
    rla
    ld b, h
    ld l, $50
    add a
    add b
    adc b
    sub c
    sbc b
    ld a, a
    add c
    sub h
    add [hl]
    ld d, b
    ld bc, $4600
    nop
    rla
    ld [hl], e
    ld b, h
    ld l, $50
    add d
    adc [hl]
    add d
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld [bc], a
    nop
    call c, Call_000_1700
    ret nc

    ld b, h
    ld l, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add c
    add h
    add h
    ld d, b
    inc bc
    inc bc
    adc d
    ld [bc], a
    rla
    ld sp, $2e45
    ld d, b
    sub e
    adc b
    adc l
    sbc b
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    ld bc, $2800
    nop
    rla
    sub a
    ld b, l
    ld l, $50
    add c
    adc b
    sub c
    add e
    ld d, b
    inc bc
    rlca
    sub h
    ld [bc], a
    rla
    rst $30
    ld b, l
    ld l, $50
    add c
    adc b
    sub c
    add e
    ld d, b
    inc b
    dec bc
    ld h, [hl]
    inc bc
    rla
    ld e, c
    ld b, [hl]
    ld l, $50
    sub c
    add b
    sub e
    ld d, b
    ld bc, $5000
    nop
    rla
    cp b
    ld b, [hl]
    ld l, $50
    sub c
    add b
    sub e
    ld d, b
    ld [bc], a
    inc b
    sbc d
    ld bc, $1e17
    ld b, a
    ld l, $50
    sub e
    adc b
    adc l
    sbc b
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    ld bc, $2800
    nop
    rla
    ld a, e
    ld b, a
    ld l, $50
    add c
    add h
    add b
    adc d
    ld d, b
    inc bc
    dec bc
    ld c, b
    inc bc
    rla
    db $d3
    ld b, a
    ld l, $50
    sub d
    adc l
    add b
    adc d
    add h
    ld d, b
    ld b, $07
    sub [hl]
    nop
    rla
    cpl
    ld c, b
    ld l, $50
    add d
    adc [hl]
    add c
    sub c
    add b
    ld d, b
    dec bc
    ld b, $96
    dec b
    rla
    sub a
    ld c, b
    ld l, $50
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld bc, $8204
    nop
    rla
    push af
    ld c, b
    ld l, $50
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld [bc], a
    rlca
    sub h
    ld [bc], a
    rla
    ld e, e
    ld c, c
    ld l, $50
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld [bc], a
    nop
    inc b
    ld bc, $b617
    ld c, c
    ld l, $50
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    inc bc
    inc bc
    adc d
    ld [bc], a
    rla
    rla
    ld c, d
    ld l, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld bc, $9604
    nop
    rla
    ld [hl], a
    ld c, d
    ld l, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld [bc], a
    rlca
    cp b
    ld bc, $d117
    ld c, d
    ld l, $50
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    inc b
    inc bc
    jr z, jr_010_4879

    rla
    jr nc, jr_010_48c2

    ld l, $50

jr_010_4879:
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld bc, $c808
    nop
    rla
    adc l
    ld c, e
    ld l, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld [bc], a
    dec bc
    xor [hl]
    ld bc, $f217
    ld c, e
    ld l, $50
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    inc b
    rlca
    ld e, d
    dec b
    rla
    ld d, l
    ld c, h
    ld l, $50
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    ld [bc], a
    nop
    xor d
    nop
    rla
    cp c
    ld c, h
    ld l, $50
    add l
    add b
    adc b

jr_010_48c2:
    sub c
    sbc b
    ld d, b
    inc b
    inc bc
    ld [hl], b
    inc bc
    rla
    ld hl, $2e4d
    ld d, b
    add l
    adc [hl]
    sub a
    ld d, b
    ld [bc], a
    nop
    call c, Call_000_1700
    add [hl]
    ld c, l
    ld l, $50
    add l
    adc [hl]
    sub a
    ld d, b
    inc bc
    rlca
    cp b
    ld bc, $e317
    ld c, l
    ld l, $50
    add c
    add b
    adc e
    adc e
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld bc, $7808
    nop
    rla
    ccf
    ld c, [hl]
    ld l, $50
    add c
    add b
    adc e
    adc e
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    inc bc
    inc bc
    inc b
    ld bc, $aa17
    ld c, [hl]
    ld l, $50
    add c
    add b
    sub e
    ld d, b
    ld [bc], a
    rlca
    xor d
    nop
    rla
    db $10
    ld c, a
    ld l, $50
    add c
    add b
    sub e
    ld d, b
    dec b
    inc bc
    cp d
    inc b
    rla
    ld [hl], h
    ld c, a
    ld l, $50
    sub [hl]
    add h
    add h
    add e
    ld d, b
    ld bc, $7808
    nop
    rla
    ret c

    ld c, a
    ld l, $50
    sub [hl]
    add h
    add h
    add e
    ld d, b
    ld [bc], a
    rlca
    cp [hl]
    nop
    rla
    ld b, b
    ld d, b
    ld l, $50
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    inc bc
    dec bc
    sbc d
    ld bc, $a717
    ld d, b
    ld l, $50
    adc h
    sub h
    sub d
    add a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    ld bc, $7800
    nop
    rla
    ld [$2e51], sp
    ld d, b
    adc h
    sub h
    sub d
    add a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    inc bc
    inc bc
    adc d
    ld [bc], a
    rla
    ld [hl], c
    ld d, c
    ld l, $50
    adc b
    adc l
    sub d
    add h
    add d
    sub e
    ld d, b
    inc bc
    inc bc
    sub h
    ld [bc], a
    rla
    sub $51
    ld l, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    adc h
    adc [hl]
    sub e
    add a
    ld d, b
    inc b
    dec bc
    jr jr_010_4994

    rla

jr_010_4994:
    ld a, $52
    ld l, $50
    adc h
    adc [hl]
    adc e
    add h
    ld d, b
    nop
    ld [$0014], sp
    rla
    and a
    ld d, d
    ld l, $50
    adc h
    adc [hl]
    adc e
    add h
    ld d, b
    ld [bc], a
    inc b
    jp c, Jump_000_1702

    rlca
    ld d, e
    ld l, $50
    sub d
    add d
    sub c
    add b
    sub e
    add d
    add a
    add d
    add b
    sub e
    ld d, b
    ld bc, $5a04
    nop
    rla
    ld l, d
    ld d, e
    ld l, $50
    add d
    adc e
    add b
    sub d
    sub d
    sbc b
    ld a, a
    add d
    add b
    sub e
    ld d, b
    inc bc
    inc bc
    add $02
    rla
    db $d3
    ld d, e
    ld l, $50
    add e
    sub h
    add d
    adc d
    ld d, b
    ld [bc], a
    rlca
    xor [hl]
    ld bc, $3917
    ld d, h
    ld l, $50
    add e
    sub h
    add d
    adc d
    ld d, b
    dec b
    rlca
    sbc d
    ld b, $17
    sbc l
    ld d, h
    ld l, $50
    adc a
    adc b
    add [hl]
    ld a, a
    adc h
    adc [hl]
    adc l
    adc d
    add h
    sbc b
    ld d, b
    ld bc, $6c08
    ld [bc], a
    rla
    rst $38
    ld d, h
    ld l, $50
    adc a
    adc b
    add [hl]
    ld a, a
    adc h
    adc [hl]
    adc l
    adc d
    add h
    sbc b
    ld d, b
    inc bc
    inc bc
    add $02
    rla
    ld e, [hl]
    ld d, l
    ld l, $50
    adc a
    sub h
    adc a
    adc a
    sbc b
    ld d, b
    ld [bc], a
    inc b
    and h
    ld bc, $bc17
    ld d, l
    ld l, $50
    adc e
    add h
    add [hl]
    add h
    adc l
    add e
    add b
    sub c
    sbc b
    ld d, b
    ld b, $03
    ld e, h
    dec c
    rla
    rra
    ld d, [hl]
    ld l, $50
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    ld [bc], a
    nop
    ld c, $01
    rla
    ld a, h
    ld d, [hl]
    ld l, $50
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    inc bc
    inc bc
    cp b
    ld bc, $e217
    ld d, [hl]
    ld l, $50
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    inc b
    inc bc
    and [hl]
    inc b
    rla
    ld a, $57
    ld l, $50
    adc a
    sub d
    adc b
    ld d, b
    ld [bc], a
    dec bc
    xor [hl]
    ld bc, $9b17
    ld d, a
    ld l, $50
    adc a
    sub d
    adc b
    ld d, b
    inc b
    inc bc
    ld [c], a
    inc b
    rla
    db $fd
    ld d, a
    ld l, $50
    adc a
    sub d
    adc b
    ld d, b
    inc b
    dec bc
    inc h
    inc b
    rla
    ld e, e
    ld e, b
    ld l, $50
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    ld [bc], a
    rlca
    xor [hl]
    ld bc, $bf17
    ld e, b
    ld l, $50
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    inc b
    dec bc
    ld c, $06
    rla
    add hl, hl
    ld e, c
    ld l, $50
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    dec b
    inc bc
    ld [hl], $0b
    rla
    add a
    ld e, c
    ld l, $50
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    ld [bc], a
    inc b
    ld e, d
    nop
    rla
    db $e4
    ld e, c
    ld l, $50
    add l
    adc e
    sbc b
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    inc bc
    inc bc
    adc h
    nop
    rla
    dec a
    ld e, d
    ld l, $50
    add l
    adc e
    sbc b
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    dec b
    rlca
    ld d, h
    ld bc, $9f17
    ld e, d
    ld l, $50
    adc c
    add h
    adc e
    adc e
    sbc b
    add l
    adc b
    sub d
    add a
    ld d, b
    ld [bc], a
    dec bc
    add sp, $03
    rla
    rlca
    ld e, e
    ld l, $50
    adc c
    add h
    adc e
    adc e
    sbc b
    add l
    adc b
    sub d
    add a
    ld d, b
    dec b
    inc bc
    cp d
    inc b
    rla
    ld l, a
    ld e, e
    ld l, $50
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    ld bc, $b804
    ld bc, $d317
    ld e, e
    ld l, $50
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    inc bc
    inc bc
    db $10
    add hl, bc
    rla
    dec l
    ld e, h
    ld l, $50
    adc h
    add h
    add [hl]
    add b
    sub e
    adc [hl]
    adc l
    ld d, b
    inc b
    rlca
    call c, $1719
    sub e
    ld e, h
    ld l, $50
    add l
    adc b
    sub c
    add h
    ld a, a
    add a
    adc [hl]
    sub c
    sub d
    add h
    ld d, b
    inc bc
    inc bc
    sub h
    ld [bc], a
    rla
    ld sp, hl
    ld e, h
    ld l, $50
    add l
    adc b
    sub c
    add h
    ld a, a
    add a
    adc [hl]
    sub c
    sub d
    add h
    ld d, b
    dec b
    rlca
    ld a, [hl+]
    ld [$5e17], sp
    ld e, l
    ld l, $50
    add e
    adc [hl]
    adc a
    add h
    sbc b
    ld d, b
    inc bc
    dec bc
    ld d, $03
    rla
    cp [hl]
    ld e, l
    ld l, $50
    add a
    add h
    sub c
    adc h
    adc b
    sub e
    add d
    sub c
    add b
    add c
    ld d, b
    dec b
    inc bc
    jp nz, $1706

    jr nz, jr_010_4c0a

    ld l, $50
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld d, b
    ld bc, $8200
    nop
    rla
    ld a, [hl]
    ld e, [hl]
    ld l, $50
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld d, b
    inc bc
    inc bc
    jr z, jr_010_4bce

    rla
    ld [c], a
    ld e, [hl]
    ld l, $50

jr_010_4bce:
    sub [hl]
    adc b
    adc e
    add e
    ld a, a
    add e
    sub h
    add d
    adc d
    ld d, b
    ld [bc], a
    rlca
    ld c, d
    ld bc, $4317
    ld e, a
    ld l, $50
    sub e
    sub [hl]
    adc b
    adc l
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    inc b
    rlca
    ld e, h
    inc bc
    rla
    and [hl]
    ld e, a
    ld l, $50
    sub e
    sub c
    adc b
    adc a
    adc e
    add h
    add c
    adc b
    sub c
    add e
    ld d, b
    dec b
    dec bc
    ld e, b
    rlca
    rla
    add hl, bc
    ld h, b
    ld l, $50
    sub d
    add h

jr_010_4c0a:
    add b
    ld a, a
    adc e
    adc b
    adc [hl]
    adc l
    ld d, b
    inc bc
    rlca
    cp h
    rlca
    rla
    ld h, [hl]
    ld h, b
    ld l, $50
    sub d
    add h
    add b
    ld a, a
    adc e
    adc b
    adc [hl]
    adc l
    ld d, b
    dec b
    rlca
    ld e, d
    ld a, [bc]
    rla
    add $60
    ld l, $50
    sub d
    adc e
    sub h
    add e
    add [hl]
    add h
    ld d, b
    ld [bc], a
    dec bc
    sub h
    ld [bc], a
    rla
    dec hl
    ld h, c
    ld l, $50
    sub d
    adc e
    sub h
    add e
    add [hl]
    add h
    ld d, b
    inc bc
    dec bc
    sub h
    ld [bc], a
    rla
    add [hl]
    ld h, c
    ld l, $50
    add c
    adc b
    sub l
    add b
    adc e
    sub l
    add h
    ld d, b
    ld bc, $5a00
    nop
    rla
    pop hl
    ld h, c
    ld l, $50
    add c
    adc b
    sub l
    add b
    adc e
    sub l
    add h
    ld d, b
    inc b
    dec bc
    ld l, b
    dec bc
    rla
    inc a
    ld h, d
    ld l, $50
    add [hl]
    add b
    sub d
    ld d, b
    inc b
    inc bc
    ld [bc], a
    nop
    rla
    sbc h
    ld h, d
    ld l, $50
    add [hl]
    add b
    sub d
    ld d, b
    dec b
    inc bc
    ld [bc], a
    nop
    rla
    dec b
    ld h, e
    ld l, $50
    sub d
    add a
    add b
    add e
    adc [hl]
    sub [hl]
    ld d, b
    inc b
    dec bc
    ld a, d
    inc bc
    rla
    ld h, a
    ld h, e
    ld l, $50
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub d
    adc l
    add b
    adc d
    add h
    ld d, b
    inc e
    ld a, [bc]
    ld d, $12
    rla
    pop bc
    ld h, e
    ld l, $50
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    sub d
    adc b
    sub d
    ld d, b
    inc bc
    inc bc
    add $02
    rla
    jr nz, jr_010_4d20

    ld l, $50
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    sub d
    adc b
    sub d
    ld d, b
    dec b
    inc bc
    add [hl]
    ld b, $17
    ld a, [hl]
    ld h, h
    ld l, $50
    sub c
    adc b
    sub l
    add h
    sub c
    ld a, a
    add d
    sub c
    add b
    add c
    ld d, b
    ld bc, $8c04
    nop
    rla
    ldh [$64], a
    ld l, $50
    adc a
    adc b
    adc l
    add d
    add h
    sub c
    ld d, b
    inc b
    inc bc
    jr z, jr_010_4cf4

    rla
    ld b, d
    ld h, l
    ld l, $50

jr_010_4cf4:
    add c
    add b
    adc e
    adc e
    ld d, b
    ld bc, $e608
    nop
    rla
    and [hl]
    ld h, l
    ld l, $50
    add c
    add b
    adc e
    adc e
    ld d, b
    inc bc
    dec bc
    cp [hl]
    dec b
    rla
    dec b
    ld h, [hl]
    ld l, $50
    add h
    add [hl]
    add [hl]
    ld d, b
    ld bc, $3c04
    nop
    rla
    ld l, c
    ld h, [hl]
    ld l, $50
    add d
    adc [hl]
    add d

jr_010_4d20:
    adc [hl]
    adc l
    sub h
    sub e
    ld d, b
    ld b, $07
    ld e, d
    ld a, [bc]
    rla
    jp z, Jump_000_2e66

    ld d, b
    adc e
    adc [hl]
    adc l
    add h
    adc e
    sbc b
    ld d, b
    ld bc, $8c04
    nop
    rla
    add hl, hl
    ld h, a
    ld l, $50
    add c
    adc [hl]
    adc l
    add h
    adc d
    add h
    add h
    adc a
    add h
    sub c
    ld d, b
    inc bc
    inc bc
    sbc $03
    rla
    sub b
    ld h, a
    ld l, $50
    adc d
    adc b
    add d
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    inc b
    dec bc
    ld c, h
    inc b
    rla
    pop af
    ld h, a
    ld l, $50
    adc a
    sub h
    adc l
    add d
    add a
    adc b
    adc l
    add [hl]
    ld d, b
    inc b
    rlca
    ld d, [hl]
    inc b
    rla
    ld d, h
    ld l, b
    ld l, $50
    adc e
    adc b
    add d
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    inc bc
    dec bc
    and b
    dec b
    rla
    cp [hl]
    ld l, b
    ld l, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add [hl]
    add b
    sub d
    ld d, b
    ld [bc], a
    nop
    inc d
    nop
    rla
    ld h, $69
    ld l, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add [hl]
    add b
    sub d
    ld d, b
    inc bc
    dec bc
    jp nc, Jump_000_1700

    adc c
    ld l, c
    ld l, $50
    sub d
    adc a
    adc b
    adc d
    add h
    sub d
    ld d, b
    inc bc
    inc bc
    db $ec
    add hl, bc
    rla
    or $69
    ld l, $50
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    ld b, $03
    ld e, d
    ld a, [bc]
    rla
    ld d, e
    ld l, d
    ld l, $50
    add h
    add [hl]
    add [hl]
    ld d, b
    inc bc
    rlca
    ld hl, sp+$02
    rla
    or [hl]
    ld l, d
    ld l, $50
    sub l
    adc b
    adc l
    add h
    ld d, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rla
    inc de
    ld l, e
    ld l, $50
    adc a
    add b
    sub c
    add h
    adc l
    sub e
    ld d, b
    rlca
    inc bc
    ldh [rTMA], a
    rla
    ld [hl], a
    ld l, e
    ld l, $50
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld bc, $b404
    nop
    rla
    jp nc, $2e6b

    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    inc bc
    dec bc
    ld h, $02
    rla
    inc [hl]
    ld l, h
    ld l, $50
    add [hl]
    adc [hl]
    adc e
    add e
    add l
    adc b
    sub d
    add a
    ld d, b
    ld [bc], a
    nop
    ld c, d
    ld bc, $9a17
    ld l, h
    ld l, $50
    add [hl]
    adc [hl]
    adc e
    add e
    add l
    adc b
    sub d
    add a
    ld d, b
    inc b
    inc bc
    ld e, h
    inc bc
    rla
    nop
    ld l, l
    ld l, $50
    sub d
    sub e
    add b
    sub c
    sub d
    add a
    add b
    adc a
    add h
    ld d, b
    ld [bc], a
    rlca
    ld hl, sp+$02
    rla
    ld h, h
    ld l, l
    ld l, $50
    adc h
    sbc b
    sub d
    sub e
    add h
    sub c
    adc b
    adc [hl]
    sub h
    sub d
    ld d, b
    inc bc
    rlca
    ldh [rTMA], a
    rla
    add $6d
    ld l, $50
    add c
    add b
    sub c
    sub c
    adc b
    add h
    sub c
    ld d, b
    inc b
    inc bc
    or b
    inc b
    rla
    add hl, hl
    ld l, [hl]
    ld l, $50
    adc h
    add b
    adc l
    sub e
    adc b
    sub d
    ld d, b
    inc b
    dec bc
    adc $04
    rla
    adc h
    ld l, [hl]
    ld l, $50
    add a
    sub h
    adc h
    add b
    adc l
    sub d
    add a
    add b
    adc a
    add h
    ld d, b
    inc b
    rlca
    add h
    inc bc
    rla
    ld a, [c]
    ld l, [hl]
    ld l, $50
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc b
    add d
    ld d, b
    inc bc
    rlca
    sub h
    ld [bc], a
    rla
    ld d, e
    ld l, a
    ld l, $50
    sub d
    adc a
    adc b
    sub e
    add l
    adc b
    sub c
    add h
    ld d, b
    inc b
    inc bc
    call nc, Call_000_1703
    cp c
    ld l, a
    ld l, $50
    sub d
    sub e
    add b
    add [hl]
    add c
    add h
    add h
    sub e
    adc e
    add h
    ld d, b
    inc b
    dec bc
    cp d
    inc b
    rla
    jr nz, jr_010_4f3e

    ld l, $50
    sub [hl]
    adc b
    adc e
    add e
    ld a, a
    add c
    sub h
    adc e
    adc e
    ld d, b
    inc b
    rlca
    sbc [hl]
    rlca
    rla
    adc b
    ld [hl], b
    ld l, $50
    add l
    adc b
    sub d
    add a
    ld d, b
    ld [bc], a
    dec bc
    call c, Call_000_1700
    pop hl
    ld [hl], b
    ld l, $50
    add b
    sub e
    sub c
    adc [hl]
    add d
    adc b
    adc [hl]
    sub h
    sub d
    ld d, b
    dec d
    inc b
    inc a
    inc d
    rla
    ld c, c
    ld [hl], c
    ld l, $50
    sub e
    sub c
    add b
    adc l
    sub d
    adc a
    adc [hl]
    sub c
    sub e
    ld d, b
    ld [$f202], sp
    ld [de], a
    rla
    xor l
    ld [hl], c
    ld l, $50
    sub e
    sub c
    add b
    adc l
    sub d
    add l
    adc [hl]
    sub c
    adc h
    ld d, b
    ld bc, $5a00
    nop
    rla
    rrca
    ld [hl], d
    ld l, $50
    add h
    sub l
    adc [hl]
    adc e
    sub h
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld bc, $8c00
    nop
    rla
    ld l, l
    ld [hl], d
    ld l, $50
    add c

jr_010_4f3e:
    sub h
    add c
    add c
    adc e
    add h
    ld a, a
    adc c
    add h
    sub e
    ld d, b
    inc bc
    inc bc
    add b
    ld [bc], a
    rla
    pop de
    ld [hl], d
    ld l, $50
    adc e
    adc b
    add [hl]
    add a
    sub e
    adc l
    adc b
    adc l
    add [hl]
    ld d, b
    ld [bc], a
    rlca
    inc e
    ld [bc], a
    rla
    scf
    ld [hl], e
    ld l, $50
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    ld [bc], a
    dec bc
    ld h, $02
    rla
    sbc h
    ld [hl], e
    ld l, $50
    sub l
    adc b
    sub c
    sub e
    sub h
    add b
    adc e
    ld d, b
    ld [bc], a
    rlca
    jr nz, jr_010_4f82

    rla
    ld [bc], a
    ld [hl], h

jr_010_4f82:
    ld l, $50
    sub d
    adc a
    adc b
    sub c
    add b
    adc e
    ld d, b
    ld bc, $aa04
    nop
    rla
    ld e, a
    ld [hl], h
    ld l, $50
    sub d
    adc a
    adc b
    sub c
    add b
    adc e
    ld d, b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rla
    ret z

    ld [hl], h
    ld l, $50
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    ld bc, $fa08
    nop
    rla
    jr z, @+$77

    ld l, $50
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    inc b
    inc bc
    ld a, d
    inc bc
    rla
    adc [hl]
    ld [hl], l
    ld l, $50
    add l
    adc [hl]
    sub d
    sub d
    adc b
    adc e
    ld d, b
    dec b
    dec bc
    inc d
    dec b
    rla
    xor $75
    ld l, $50
    sub d
    adc e
    add h
    add h
    adc a
    adc b
    adc l
    add [hl]
    ld d, b
    ld b, $0b
    sbc h
    daa
    rla
    ld c, h
    db $76
    ld l, $50
    add l
    sub c
    add h
    add h
    sbc c
    add h
    ld d, b
    dec b
    rlca
    call nz, $1704
    xor a
    db $76
    ld l, $50
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc b
    add d
    ld d, b
    dec b
    inc bc
    adc b
    inc b
    rla
    dec bc
    ld [hl], a
    ld l, $50
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    ld b, $07
    jr z, jr_010_501d

    rla
    ld l, e
    ld [hl], a
    ld l, $50

jr_010_501d:
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    dec b
    dec bc
    ld b, [hl]
    nop
    rla
    call nz, Call_000_2e77
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    dec c
    ld bc, $0168
    rla
    inc h
    ld a, b
    ld l, $50
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    rlca
    inc bc
    ld d, $12
    rla
    add l
    ld a, b
    ld l, $50
    add [hl]
    add h
    adc l
    add h
    sub e
    adc b
    add d
    ld d, b
    ld b, $07
    add d
    ld a, [bc]
    rla
    db $eb
    ld a, b
    ld l, $50
    adc l
    add h
    sub [hl]
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add h
    ld d, b
    ld bc, $5a04
    nop
    rla
    ld c, d
    ld a, c
    ld l, $50
    and $e6
    and $50
    ld a, [bc]
    ld h, h
    nop
    adc c
    and b
    xor e
    sub e
    ld a, a
    cp e
    cp b
    cp [hl]
    or d
    pop bc
    pop hl
    or e
    ld d, b

Call_010_5086:
    push bc
    push hl

jr_010_5088:
    ld a, [$d11d]
    ld b, a
    ld c, $00
    ld hl, $50b1

jr_010_5091:
    inc c
    ld a, [hl+]
    cp b
    jr nz, jr_010_5091

    ld a, c
    ld [$d11d], a
    pop hl
    pop bc

jr_010_509c:
    ret


Call_010_509d:
    push bc
    push hl
    ld a, [$d11d]
    dec a
    ld hl, $50b1
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$d11d], a
    pop hl
    pop bc
    ret


    ld [hl], b
    ld [hl], e
    jr nz, jr_010_50d8

    dec d
    ld h, h
    ld [hl+], a
    ld d, b
    ld [bc], a
    ld h, a
    ld l, h
    ld h, [hl]
    ld e, b
    ld e, [hl]
    dec e
    rra
    ld l, b
    ld l, a
    add e
    dec sp
    sub a
    add d
    ld e, d
    ld c, b
    ld e, h
    ld a, e
    ld a, b
    add hl, bc
    ld a, a
    ld [hl], d
    nop
    nop
    ld a, [hl-]
    ld e, a
    ld d, $10
    ld c, a
    ld b, b
    ld c, e

jr_010_50d8:
    ld [hl], c
    ld b, e
    ld a, d
    ld l, d
    ld l, e
    jr jr_010_510e

    ld [hl], $60
    ld c, h
    nop
    ld a, [hl]
    nop
    ld a, l
    ld d, d
    ld l, l
    nop
    jr c, jr_010_5141

    ld [hl-], a
    add b
    nop
    nop
    nop
    ld d, e
    jr nc, jr_010_5088

    nop
    nop
    nop
    ld d, h
    inc a
    ld a, h
    sub d
    sub b
    sub c
    add h
    inc [hl]
    ld h, d
    nop
    nop
    nop
    dec h
    ld h, $19
    ld a, [de]
    nop
    nop
    sub e
    sub h
    adc h
    adc l
    ld [hl], h
    ld [hl], l

jr_010_510e:
    nop
    nop
    dec de
    inc e
    adc d
    adc e
    daa
    jr z, jr_010_509c

    adc b
    add a
    add [hl]
    ld b, d
    add hl, hl
    rla
    ld l, $3d
    ld a, $0d
    ld c, $0f
    nop
    ld d, l
    add hl, sp
    inc sp
    ld sp, $0057
    nop
    ld a, [bc]
    dec bc
    inc c
    ld b, h
    nop
    scf
    ld h, c
    ld a, [hl+]
    sub [hl]
    adc a
    add c
    nop
    nop
    ld e, c
    nop
    ld h, e
    ld e, e
    nop
    ld h, l
    inc h
    ld l, [hl]
    dec [hl]

jr_010_5141:
    ld l, c
    nop
    ld e, l
    ccf
    ld b, c
    ld de, $7912
    ld bc, $4903
    nop
    db $76
    ld [hl], a
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    inc de
    inc d
    ld hl, $4a1e
    adc c
    adc [hl]
    nop
    ld d, c
    nop
    nop
    inc b
    rlca
    dec b
    ld [$0006], sp
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [$cd50]
    and $0f
    swap a
    ld c, a
    ld b, $00
    ld hl, $51e5
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, l
    ld d, h
    ld hl, $8f80
    ld bc, $1004
    call Call_000_15fe
    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    ld a, [$d735]
    bit 6, a
    ld hl, $c38f
    ld de, $c39f
    jr z, jr_010_51a7

    ld hl, $c37f
    ld de, $c38f

jr_010_51a7:
    ld bc, $0090

jr_010_51aa:
    ld a, [hl]
    ld [de], a
    dec hl
    dec de
    dec bc
    ld a, c
    or b
    jr nz, jr_010_51aa

    ld hl, $c104
    ld a, [$cd4f]
    swap a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl]
    add $08
    ld c, a
    ld de, $51dd
    xor a
    call Call_000_3a84
    ld c, $3c
    call Call_000_372f
    pop af
    ld [$cfca], a
    call Call_000_1e64
    call Call_000_231c
    ret


    ld hl, sp+$00
    ld sp, hl
    nop
    ld a, [$fb00]
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, c
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add d
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld c, a
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld b, c
    rst $38
    ld b, c
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld a, [c]
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld [c], a
    rst $38
    add d
    rst $38
    ld b, b
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [bc], a
    rst $38
    jp nz, $c2ff

    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld b, b
    rst $38
    ld c, h
    rst $38
    ld d, d
    rst $38
    ld d, d
    rst $38
    ld b, b
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [hl-], a
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    ld b, e
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    jp nz, Jump_000_04fe

    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld c, a
    rst $38
    ld e, c
    rst $38
    ld e, c
    rst $38
    ld e, e
    rst $38
    ld c, a
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld a, [c]
    rst $38
    sbc d
    rst $38
    sbc d
    rst $38
    jp c, $f2ff

    rst $38
    ld b, b
    rst $38
    ld b, l
    rst $38
    ld b, a
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [bc], a
    rst $38
    and d
    rst $38
    ld [c], a
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld c, h
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld [hl], d
    rst $38
    jp c, $eaff

    rst $38
    ld a, [$f2ff]
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38
    ld b, c
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [c], a
    rst $38
    jp nz, $82ff

    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    ld b, b
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    jp nz, $82ff

    rst $38
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld b, [hl]
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    jp nz, $82ff

    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld e, [hl]
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    ld e, [hl]
    rst $38
    ld b, b
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    xor d
    rst $38
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    ld b, b
    rst $38
    ld c, d
    rst $38
    ld b, b
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    ld a, [c]
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    rra
    nop
    ccf
    rra
    ld a, a
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    ld hl, sp+$00
    db $fc
    ld hl, sp-$02
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    jp c, $faff

    rst $38
    ld e, a
    rst $38
    ld b, a
    rst $38
    ld b, b
    ld a, a
    jr nz, @+$41

    rra
    rra
    nop
    ld bc, $0100
    nop
    rst $38
    jp c, $0aff

    rst $38
    ld [bc], a
    cp $04
    db $fc
    ld hl, sp-$08
    ret nz

    ret nz

    add b
    add b
    nop
    ld a, [$cd3d]
    ld [$cd5e], a
    ld a, [$cd3e]
    ld [$cd5f], a
    ld de, $543d
    jr jr_010_5405

    ld a, [$cd3e]
    ld [$cd5e], a
    ld a, [$cd3d]
    ld [$cd5f], a
    ld de, $544e

jr_010_5405:
    ld a, [$d354]
    push af
    and $30
    ld [$d354], a
    ldh a, [$af]
    push af
    ldh a, [$ae]
    push af
    xor a
    ldh [$af], a
    ldh [$ae], a
    push de
    pop de
    ld a, [de]
    cp $ff
    jr z, jr_010_5432

    inc de
    push de
    ld hl, $5464
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $541a
    push de
    jp hl


jr_010_5432:
    pop af
    ldh [$ae], a
    pop af
    ldh [$af], a
    pop af
    ld [$d354], a
    ret


    nop
    ld bc, $0302
    dec b
    rlca
    ld [$0a09], sp
    dec bc
    ld b, $08
    ld [bc], a
    inc b
    rlca
    ld c, $ff
    nop
    ld [$0b0d], sp
    db $10
    dec b
    db $10
    ld [$0402], sp
    rrca
    ld bc, $0302
    db $10
    ld b, $10
    rlca
    ld [$0e09], sp
    rst $38
    and [hl]
    ld d, h
    ld d, b
    ld d, l
    and d
    ld d, l
    call c, Call_010_4355
    ld d, [hl]
    add d
    ld d, [hl]
    push de
    ld d, [hl]
    add [hl]
    ld d, h
    db $dd
    ld e, b
    inc de
    ld e, c
    ld h, $59
    ld b, d
    ld e, c
    ld h, c
    ld e, c
    ld l, a
    ld e, c
    ld b, [hl]
    ld d, l
    db $f4
    ld e, b
    ld [hl+], a
    ld d, l

Call_010_5486:
    ld c, $64
    jp Jump_000_372f


Call_010_548b:
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    ret


Call_010_5496:
Jump_010_5496:
    ld c, $50
    jp Jump_000_372f


Call_010_549b:
    ld hl, $c3a0
    ld bc, $0168
    ld a, $7f
    jp Jump_000_166e


    call Call_010_549b
    call Call_000_0061
    ld hl, $6a68
    ld de, $9310
    ld bc, $0310
    ld a, $0e
    call Call_000_009d
    ld hl, $6d78
    ld de, $87c0
    ld bc, $0040
    ld a, $0e
    call Call_000_009d
    ld hl, $9800
    ld bc, $0800
    ld a, $7f
    call Call_000_166e
    call Call_000_0082
    ld a, $ff
    ld [$cfca], a
    ld hl, $d72f
    set 6, [hl]
    ld a, [$cf1a]
    and a
    ld a, $e4
    jr z, jr_010_54ea

    ld a, $f0

jr_010_54ea:
    ldh [rOBP0], a
    call Call_000_3040
    call Call_000_007b
    xor a
    ldh [$ba], a
    ld a, [$cd3d]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $cd6d
    ld de, $cf4a
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cd3e]
    ld [$d11d], a
    jp Jump_000_2e93


Call_010_5513:
    ld a, $d0
    ldh [rOBP1], a
    call Call_000_3061
    ld b, $1c
    ld hl, $57f9
    jp Jump_000_3e84


    ld hl, $d157
    ld de, $cee9
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d886
    ld de, $d157
    ld bc, $000b
    call Call_000_00b1
    ld hl, $cee9
    ld de, $d886
    ld bc, $000b
    jp Jump_000_00b1


    xor a
    call Call_000_1e6f
    ld hl, $d72f
    res 6, [hl]
    ret


    ld a, $ab
    ldh [rLCDC], a
    ld a, $50
    ldh [$b0], a
    ld a, $86
    ldh [rWX], a
    ldh [$ae], a
    xor a
    ldh [$ba], a
    ld hl, $c3a4
    ld bc, $060a
    call Call_000_16f0
    call Call_010_5be6
    ld b, $98
    call Call_000_16a4
    call Call_000_16dd
    ld a, [$cd3d]
    call Call_010_58b9
    ld a, $7e

jr_010_557d:
    push af
    call Call_000_1e64
    pop af
    ldh [rWX], a
    ldh [$ae], a
    dec a
    dec a
    and a
    jr nz, jr_010_557d

    call Call_010_5496
    ld a, $ad
    call Call_010_598b
    ld a, $aa
    call Call_010_598b
    ld a, [$cd3d]
    call Call_000_118b
    xor a
    ldh [$ba], a
    ret


    call Call_010_549b
    ld b, $98
    call Call_000_16a4
    ld b, $08
    call Call_000_3e05
    ld hl, $9c8c
    call Call_010_57c0
    ld a, $a0
    ldh [$ae], a
    call Call_000_1e64
    ld a, $8b
    ldh [rLCDC], a
    ld hl, $c3ce
    ld b, $07
    call Call_010_59fb
    call Call_010_548b
    ld a, $8d
    call Call_000_2238
    ld c, $14

jr_010_55d2:
    ldh a, [$ae]
    add $04
    ldh [$ae], a
    dec c
    jr nz, jr_010_55d2

    ret


    ld a, $ab
    call Call_010_598b
    ld c, $0a
    call Call_000_372f
    ld a, $e4
    ldh [rOBP0], a
    call Call_000_3040
    xor a
    ld [$d09e], a
    ld bc, $2060

jr_010_55f4:
    push bc
    xor a
    ld de, $563b
    call Call_000_3a84
    ld a, [$d09e]
    xor $01
    ld [$d09e], a
    add $7e
    ld hl, $c302
    ld de, $0004
    ld c, e

jr_010_560d:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_560d

    call Call_000_3ddb
    pop bc
    ld a, c
    add $04
    ld c, a
    cp $a0
    jr nc, jr_010_5625

    ld a, $8c
    call Call_000_2238
    jr jr_010_55f4

jr_010_5625:
    call Call_000_0082
    ld a, $01
    ldh [$ba], a
    call Call_000_16dd
    ld b, $98
    call Call_000_16a4
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    ret


    ld a, [hl]
    nop
    ld a, [hl]
    jr nz, @+$80

    ld b, b
    ld a, [hl]
    ld h, b
    ld a, $ac
    call Call_010_598b
    call Call_010_58dd
    ld hl, $c46c
    ld bc, $060a
    call Call_000_16f0
    call Call_010_5c24
    call Call_010_548b
    ld a, $01
    ldh [$ba], a
    ld a, [$cd3e]
    call Call_010_58b9
    ld a, $ad
    call Call_010_598b
    ld a, $01
    ldh [$ba], a
    ld a, [$cd3e]
    call Call_000_118b
    call Call_010_5486
    ld hl, $c46c
    ld bc, $080c
    call Call_000_1692
    jp Jump_010_5961


    call Call_010_5720
    ld a, $01
    ld [$d089], a
    ld a, $e4
    ldh [rOBP0], a
    call Call_000_3040
    ld a, $54
    ld [$d080], a
    ld a, $1c
    ld [$d081], a
    ld a, [$cd5e]
    ld [$cd5d], a
    call Call_010_581a
    call Call_010_5741
    call Call_010_548b
    call Call_010_57b1
    ld hl, $9c8c
    call Call_010_57c0
    ld b, $06
    call Call_010_57d7
    ld a, $01
    ldh [$ba], a
    call Call_010_57b1
    ld b, $04
    call Call_010_57d7
    call Call_010_576f
    ld b, $06
    call Call_010_57d7
    xor a
    ldh [$ba], a
    call Call_010_583a
    jp Jump_000_0082


    call Call_010_5720
    xor a
    ld [$d089], a
    ld a, $64
    ld [$d080], a
    ld a, $44
    ld [$d081], a
    ld a, [$cd5f]
    ld [$cd5d], a
    call Call_010_581a
    call Call_010_576f
    call Call_010_548b
    call Call_010_57b1
    ld hl, $9c94
    call Call_010_57c0
    call Call_010_583a
    ld b, $06
    call Call_010_57d7
    ld a, $01
    ldh [$ba], a
    call Call_010_57b1
    ld b, $04
    call Call_010_57d7
    call Call_010_5741
    ld b, $06
    call Call_010_57d7
    xor a
    ldh [$ba], a
    jp Jump_000_0082


Call_010_5720:
    ld a, $01
    ldh [$ba], a
    call Call_000_16dd
    ld b, $08
    call Call_000_3e05
    xor a
    ldh [$ba], a
    call Call_010_5513
    call Call_000_1e64
    ld a, $ab
    ldh [rLCDC], a
    xor a
    ldh [$ae], a
    ld a, $90
    ldh [$b0], a
    ret


Call_010_5741:
    call Call_010_549b
    ld hl, $c3fb
    ld a, $5d
    ld [hl+], a
    ld a, $5e
    ld c, $08

jr_010_574e:
    ld [hl+], a
    dec c
    jr nz, jr_010_574e

    ld hl, $c3e1
    ld b, $06
    call Call_010_59fb
    ld hl, $c494
    ld bc, $0207
    call Call_000_16f0
    ld hl, $c4bd
    ld de, $d157
    call Call_000_1723
    jp Jump_000_1e64


Call_010_576f:
    call Call_010_549b
    ld hl, $c3f0
    ld a, $5e
    ld c, $0e

jr_010_5779:
    ld [hl+], a
    dec c
    jr nz, jr_010_5779

    ld a, $5f
    ld [hl], a
    ld de, $0014
    add hl, de
    ld a, $61
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    add hl, de
    ld a, $60
    ld [hl-], a
    ld a, $5d
    ld [hl], a
    ld hl, $c447
    ld b, $06
    call Call_010_59fb
    ld hl, $c3a6
    ld bc, $0207
    call Call_000_16f0
    ld hl, $c3cf
    ld de, $d886
    call Call_000_1723
    jp Jump_000_1e64


Call_010_57b1:
    call Call_010_549b
    ld hl, $c3f0
    ld a, $5e
    ld c, $14

jr_010_57bb:
    ld [hl+], a
    dec c
    jr nz, jr_010_57bb

    ret


Call_010_57c0:
    push hl
    ld hl, $c3f0
    call Call_000_0baa
    pop hl
    ld a, h
    ldh [$d2], a
    ld a, l
    ldh [$d1], a
    ld a, $02
    ldh [$d0], a
    ld c, $0a
    jp Jump_000_372f


Call_010_57d7:
jr_010_57d7:
    ld a, [$d089]
    ld e, a
    ld d, $08

jr_010_57dd:
    ld a, e
    dec a
    jr z, jr_010_57e7

    ldh a, [$ae]
    sub $02
    jr jr_010_57eb

jr_010_57e7:
    ldh a, [$ae]
    add $02

jr_010_57eb:
    ldh [$ae], a
    call Call_000_1e64
    dec d
    jr nz, jr_010_57dd

    call Call_010_57fa
    dec b
    jr nz, jr_010_57d7

    ret


Call_010_57fa:
    push de
    push bc
    push hl
    ldh a, [rBGP]
    xor $3c
    ldh [rBGP], a
    call Call_000_3021
    ld hl, $c302
    ld de, $0004
    ld c, $14

jr_010_580e:
    ld a, [hl]
    xor $40
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_010_580e

    pop hl
    pop bc
    pop de
    ret


Call_010_581a:
    ld b, $1c
    ld hl, $592f
    call Call_000_3e84
    call Call_010_586d

Call_010_5825:
    ld hl, $c300
    ld c, $14

jr_010_582a:
    ld a, [$d081]
    add [hl]
    ld [hl+], a
    ld a, [$d080]
    add [hl]
    ld [hl+], a
    inc hl
    inc hl
    dec c
    jr nz, jr_010_582a

    ret


Call_010_583a:
    ld a, [$d089]
    and a
    jr z, jr_010_584b

    ld bc, $0400
    call Call_010_5854
    ld bc, $000a
    jr jr_010_5854

jr_010_584b:
    ld bc, $00f6
    call Call_010_5854
    ld bc, $fc00

Call_010_5854:
jr_010_5854:
    ld a, b
    ld [$d080], a
    ld a, c
    ld [$d081], a
    ld d, $04

jr_010_585e:
    call Call_010_5825
    call Call_010_57fa
    ld c, $08
    call Call_000_372f
    dec d
    jr nz, jr_010_585e

    ret


Call_010_586d:
    ld hl, $5889
    ld c, $04
    xor a

jr_010_5873:
    push bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    push hl
    inc a
    push af
    call Call_000_3a84
    pop af
    pop hl
    pop bc
    dec c
    jr nz, jr_010_5873

    ret


    sbc c
    ld e, b
    ld [$a108], sp
    ld e, b
    jr jr_010_5899

    xor c
    ld e, b
    ld [$b118], sp
    ld e, b
    jr jr_010_58b1

jr_010_5899:
    jr c, jr_010_58ab

    add hl, sp
    db $10
    ld a, [hl-]
    db $10
    dec sp
    db $10
    add hl, sp
    jr nc, @+$3a

    jr nc, jr_010_58e1

    jr nc, @+$3c

    jr nc, jr_010_58e4

    ld d, b

jr_010_58ab:
    dec sp
    ld d, b
    jr c, jr_010_58ff

    add hl, sp
    ld d, b

jr_010_58b1:
    dec sp
    ld [hl], b
    ld a, [hl-]
    ld [hl], b
    add hl, sp
    ld [hl], b
    jr c, jr_010_5929

Call_010_58b9:
    ld [$cf90], a
    ld [$d0b4], a
    ld [$cf1c], a
    ld b, $0b
    ld c, $00
    call Call_000_3e05
    ldh a, [$ba]
    xor $01
    ldh [$ba], a
    call Call_000_132f
    ld hl, $c3cf
    call Call_000_1144
    ld c, $0a
    jp Jump_000_372f


Call_010_58dd:
    ld a, $01
    ldh [$ba], a

jr_010_58e1:
    call Call_000_16dd

jr_010_58e4:
    ld a, $e3
    ldh [rLCDC], a
    ld a, $07
    ldh [rWX], a
    xor a
    ldh [$b0], a
    ld a, $90
    ldh [$ae], a
    ret


Jump_010_58f4:
    ld c, $32
    call Call_000_372f

jr_010_58f9:
    call Call_000_1e64
    ldh a, [rWX]
    inc a

jr_010_58ff:
    inc a
    ldh [rWX], a
    cp $a1
    jr nz, jr_010_58f9

    call Call_010_549b
    ld c, $0a
    call Call_000_372f
    ld a, $07
    ldh [rWX], a
    ret


    ld hl, $5921
    call Call_000_3c36
    ld c, $c8
    call Call_000_372f
    jp Jump_010_58f4


    rla
    cp b
    ld e, [hl]
    daa
    ld d, b
    ld hl, $5938

jr_010_5929:
    call Call_000_3c36
    call Call_010_5496
    ld hl, $593d
    call Call_000_3c36
    jp Jump_010_5496


    rla
    call z, Call_000_275e
    ld d, b
    rla
    db $db
    ld e, [hl]
    daa
    ld d, b
    ld hl, $5957
    call Call_000_3c36
    call Call_010_5496
    ld hl, $595c
    call Call_000_3c36
    call Call_010_5496
    jp Jump_010_58f4


    rla
    db $ed
    ld e, [hl]
    daa
    ld d, b
    rla
    inc b
    ld e, a
    daa
    ld d, b

Jump_010_5961:
    ld hl, $596a
    call Call_000_3c36
    jp Jump_010_5496


    rla
    add hl, de
    ld e, a
    daa
    ld d, b
    ld hl, $5981
    call Call_000_3c36
    call Call_010_5496
    ld hl, $5986
    call Call_000_3c36
    jp Jump_010_5496


    rla
    inc sp
    ld e, a
    daa
    ld d, b
    rla
    ld c, c
    ld e, a
    daa
    ld d, b

Call_010_598b:
    ld [$d07b], a
    xor a
    ld [$cc5b], a
    ld a, $08
    jp Jump_000_3eb4


    xor a
    ldh [$b4], a
    inc a
    ldh [$ba], a
    call Call_010_5a02
    ld hl, $582d
    ld b, $3e
    call Call_000_3e84
    xor a
    ldh [$ae], a
    ldh [$ba], a
    call Call_000_0082
    call Call_000_1e64
    ret


    ld hl, $c300
    ld d, $00

jr_010_59b9:
    push bc
    ld a, [$d081]
    ld e, a

jr_010_59be:
    ld a, e
    add $08
    ld e, a
    ld [hl+], a
    ld a, [$d080]
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    inc d
    dec c
    jr nz, jr_010_59be

    ld a, [$d080]
    add $08
    ld [$d080], a
    pop bc
    dec b
    jr nz, jr_010_59b9

    ret


Call_010_59dd:
    ld hl, $9c00
    ld bc, $0240
    jr jr_010_59eb

Call_010_59e5:
    ld hl, $c3f0
    ld bc, $00c8

jr_010_59eb:
    ld [hl], $00
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_010_59eb

    ret


Call_010_59f4:
Jump_010_59f4:
    ld a, $01

jr_010_59f6:
    ld [hl+], a
    dec c
    jr nz, jr_010_59f6

    ret


Call_010_59fb:
    ld c, $00
    ld a, $31
    jp Jump_000_3eb4


Call_010_5a02:
    ld b, $0c
    call Call_000_3e05
    ld b, $01
    ld hl, $4337
    call Call_000_3e84
    ld a, $e4
    ldh [rBGP], a
    call Call_000_3021
    ld c, $b4
    call Call_000_372f
    call Call_000_16dd
    call Call_000_0061
    xor a
    ld [$d058], a
    call Call_010_5a82
    ld hl, $9000
    ld bc, $0010
    xor a
    call Call_000_166e
    ld hl, $9010
    ld bc, $0010
    ld a, $ff
    call Call_000_166e
    ld hl, $5aa6
    ld de, $9600
    ld bc, $0140
    ld a, $10
    call Call_000_009d
    ld hl, $5aa6
    ld de, $8800
    ld bc, $0140
    ld a, $10
    call Call_000_009d
    call Call_000_007b
    ld hl, $ff40
    res 5, [hl]
    set 3, [hl]
    ld c, $40
    call Call_000_372f
    ld b, $1c
    ld hl, $404a
    call Call_000_3e84
    push af
    pop af
    jr c, jr_010_5a79

    ld c, $28
    call Call_000_372f

jr_010_5a79:
    call Call_010_59e5
    call Call_000_0082
    jp Jump_000_3ddb


Call_010_5a82:
    call Call_010_59dd
    ld hl, $c3a0
    ld c, $50
    call Call_010_59f4
    ld hl, $c4b8
    ld c, $50
    call Call_010_59f4
    ld hl, $9c00
    ld c, $80
    call Call_010_59f4
    ld hl, $9dc0
    ld c, $80
    jp Jump_010_59f4


    ret


    ld a, $3e
    ld h, d
    ld h, d
    ret nz

    ret nz

    adc $ce
    add $c6
    ld h, [hl]
    ld h, [hl]
    ccf
    ccf
    nop
    nop
    jr jr_010_5ad0

    jr jr_010_5ad2

    inc l
    inc l
    inc l
    inc l
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    rst $28
    rst $28
    nop
    nop
    rst $20
    rst $20
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld e, e
    ld e, e

jr_010_5ad0:
    ld e, e
    ld e, e

jr_010_5ad2:
    set 1, e
    nop
    nop
    cp $fe
    ld h, d
    ld h, d
    ld a, h
    ld a, h
    ld h, h
    ld h, h
    ld h, b
    ld h, b
    ld h, d
    ld h, d
    cp $fe
    nop
    nop
    db $fc
    db $fc
    ld h, d
    ld h, d
    ld h, h
    ld h, h
    ld a, h
    ld a, h
    ld h, h
    ld h, h
    ld h, b
    ld h, b
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    or $f6
    inc bc
    inc bc
    rst $28
    rst $28
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld a, b
    ld l, h
    ld l, h
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    dec de
    dec de
    ld e, $1e
    jr jr_010_5b3a

    jr jr_010_5b3c

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld a, l
    ld l, l
    ld l, l
    ld a, c
    ld a, c
    ld l, l
    ld l, l
    ld h, l
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_5b3a:
    rst $20
    rst $20

jr_010_5b3c:
    adc h
    adc h
    rst $28
    rst $28
    add e
    add e
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ld a, d
    ld h, e
    ld h, e
    ld a, e
    ld a, e
    ld h, e
    ld h, e
    ld a, e
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld l, a
    ld h, [hl]
    ld h, [hl]
    and $e6
    ld h, [hl]
    ld h, [hl]
    ld h, $26
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_010_5ba4

    ld h, b
    ld h, b
    ld a, b
    ld a, b
    jr jr_010_5b8a

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    ld b, $00
    rrca
    nop
    dec c
    nop
    inc e
    nop
    inc e
    nop
    dec e
    nop
    add hl, de
    nop
    dec sp
    nop
    nop
    nop
    add b

jr_010_5b8a:
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    dec sp
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    dec de
    nop
    dec sp
    nop
    dec e

jr_010_5ba4:
    nop
    dec l
    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_010_5bad

jr_010_5bad:
    jr c, jr_010_5baf

jr_010_5baf:
    cp b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    inc l
    nop
    ld e, $00
    rla
    nop
    rrca
    nop
    rla
    nop
    cpl
    nop
    ld a, $00
    nop
    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    and b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_010_5be6:
    ld hl, $c3a5
    ld de, $5c62
    call Call_000_1723
    ld a, [$cd3d]
    ld [$d11d], a
    ld a, $3a
    call Call_000_3eb4
    ld hl, $c3a9
    ld de, $d11d
    ld bc, $8103
    call Call_000_3c5b
    ld hl, $c3cd
    ld de, $cf4a
    call Call_000_1723
    ld hl, $c3f8
    ld de, $cd41
    call Call_000_1723
    ld hl, $c420
    ld de, $cd4c
    ld bc, $8205
    jp Jump_000_3c5b


Call_010_5c24:
    ld hl, $c46d
    ld de, $5c62
    call Call_000_1723
    ld a, [$cd3e]
    ld [$d11d], a
    ld a, $3a
    call Call_000_3eb4
    ld hl, $c471
    ld de, $d11d
    ld bc, $8103
    call Call_000_3c5b
    ld hl, $c495
    ld de, $cd6d
    call Call_000_1723
    ld hl, $c4c0
    ld de, $cd4e
    call Call_000_1723
    ld hl, $c4e8
    ld de, $cd59
    ld bc, $8205
    jp Jump_000_3c5b


    ld a, d
    ld a, d
    ld [hl], h
    ld a, [c]
    ld c, [hl]
    ld c, [hl]
    adc [hl]
    sub e
    di
    ld c, [hl]
    ld [hl], e
    ld [hl], h
    ld a, [c]
    ld d, b
    call Call_010_5f06

jr_010_5c73:
    call Call_000_381e
    ldh a, [$b5]
    and $0a
    jr nz, jr_010_5c94

    call Call_010_5eb7
    jr c, jr_010_5c86

    call Call_010_5c95
    jr c, jr_010_5c94

jr_010_5c86:
    call Call_010_5ee9
    call Call_000_1e64
    call Call_000_1e64
    call Call_000_1e64
    jr jr_010_5c73

jr_010_5c94:
    ret


Call_010_5c95:
    ld a, [$cd3d]
    ld e, a
    ld d, $00
    ld hl, $5ca4
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or h
    ld e, h
    ld h, $5d
    ld e, [hl]
    ld e, l
    sbc h
    ld e, l
    inc c
    ld e, [hl]
    xor e
    ld e, [hl]
    xor e
    ld e, [hl]
    xor l
    ld e, [hl]
    call Call_010_5d07
    ldh a, [$b5]
    bit 4, a
    jr nz, jr_010_5cc3

    bit 5, a
    jr nz, jr_010_5cce

    jr jr_010_5ce0

jr_010_5cc3:
    ld a, c
    cp $02
    jr c, jr_010_5cca

    ld c, $ff

jr_010_5cca:
    inc c
    ld a, e
    jr jr_010_5cd6

jr_010_5cce:
    ld a, c
    and a
    jr nz, jr_010_5cd4

    ld c, $03

jr_010_5cd4:
    dec c
    ld a, d

jr_010_5cd6:
    ld b, a
    ld a, [$d354]
    and $f0
    or b
    ld [$d354], a

jr_010_5ce0:
    ld b, $00
    ld hl, $5cf2
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c3d6
    call Call_000_1723
    and a
    ret


    ld hl, sp+$5c
    db $fd
    ld e, h
    ld [bc], a
    ld e, l
    add l
    add b
    sub d
    sub e
    ld d, b
    adc h
    adc b
    add e
    ld a, a
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    ld d, b

Call_010_5d07:
    ld a, [$d354]
    and $0f
    cp $05
    jr z, jr_010_5d1a

    cp $01
    jr z, jr_010_5d20

    ld c, $01
    ld de, $0105
    ret


jr_010_5d1a:
    ld c, $02
    ld de, $0301
    ret


jr_010_5d20:
    ld c, $00
    ld de, $0503
    ret


    ldh a, [$b5]
    and $30
    jr nz, jr_010_5d33

    ld a, [$d354]
    and $80
    jr jr_010_5d3b

jr_010_5d33:
    ld a, [$d354]
    xor $80
    ld [$d354], a

jr_010_5d3b:
    ld bc, $0000
    sla a
    rl c
    ld hl, $5d52
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c3fe
    call Call_000_1723
    and a
    ret


    ld d, [hl]
    ld e, l
    ld e, d
    ld e, l
    adc [hl]
    adc l
    ld a, a
    ld d, b
    adc [hl]
    add l
    add l
    ld d, b
    ldh a, [$b5]
    and $30
    jr nz, jr_010_5d6b

    ld a, [$d354]
    and $40
    jr jr_010_5d73

jr_010_5d6b:
    ld a, [$d354]
    xor $40
    ld [$d354], a

jr_010_5d73:
    ld bc, $0000
    sla a
    sla a
    rl c
    ld hl, $5d8c
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c426
    call Call_000_1723
    and a
    ret


    sub b
    ld e, l
    sub [hl]
    ld e, l
    sub d
    add a
    adc b
    add l
    sub e
    ld d, b
    sub d
    add h
    sub e
    ld a, a
    ld a, a
    ld d, b
    ld a, [$d354]
    and $30
    swap a
    ld c, a
    ldh a, [$b5]
    bit 4, a
    jr nz, jr_010_5db0

    bit 5, a
    jr nz, jr_010_5db6

    jr jr_010_5dca

jr_010_5db0:
    ld a, c
    inc a
    and $03
    jr jr_010_5dba

jr_010_5db6:
    ld a, c
    dec a
    and $03

jr_010_5dba:
    ld c, a
    swap a
    ld b, a
    xor a
    ldh [rNR51], a
    ld a, [$d354]
    and $cf
    or b
    ld [$d354], a

jr_010_5dca:
    ld b, $00
    ld hl, $5ddc
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c448
    call Call_000_1723
    and a
    ret


    db $e4
    ld e, l
    xor $5d
    ld hl, sp+$5d
    ld [bc], a
    ld e, [hl]
    adc h
    adc [hl]
    adc l
    adc [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    add h
    add b
    sub c
    adc a
    add a
    adc [hl]
    adc l
    add h
    rst $30
    ld d, b
    add h
    add b
    sub c
    adc a
    add a
    adc [hl]
    adc l
    add h
    ld hl, sp+$50
    add h
    add b
    sub c
    adc a
    add a
    adc [hl]
    adc l
    add h
    ld sp, hl
    ld d, b
    call Call_010_5e7b
    ldh a, [$b5]
    bit 4, a
    jr nz, jr_010_5e1b

    bit 5, a
    jr nz, jr_010_5e26

    jr jr_010_5e32

jr_010_5e1b:
    ld a, c
    cp $04
    jr c, jr_010_5e22

    ld c, $ff

jr_010_5e22:
    inc c
    ld a, e
    jr jr_010_5e2e

jr_010_5e26:
    ld a, c
    and a
    jr nz, jr_010_5e2c

    ld c, $05

jr_010_5e2c:
    dec c
    ld a, d

jr_010_5e2e:
    ld b, a
    ld [$d497], a

jr_010_5e32:
    ld b, $00
    ld hl, $5e44
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c470
    call Call_000_1723
    and a
    ret


    ld c, [hl]
    ld e, [hl]
    ld d, a
    ld e, [hl]
    ld h, b
    ld e, [hl]
    ld l, c
    ld e, [hl]
    ld [hl], d
    ld e, [hl]
    adc e
    adc b
    add [hl]
    add a
    sub e
    add h
    sub d
    sub e
    ld d, b
    adc e
    adc b
    add [hl]
    add a
    sub e
    add h
    sub c
    ld a, a
    ld d, b
    adc l
    adc [hl]
    sub c
    adc h
    add b
    adc e
    ld a, a
    ld a, a
    ld d, b
    add e
    add b
    sub c
    adc d
    add h
    sub c
    ld a, a
    ld a, a
    ld d, b
    add e
    add b
    sub c
    adc d
    add h
    sub d
    sub e
    ld a, a
    ld d, b

Call_010_5e7b:
    ld a, [$d497]
    and a
    jr z, jr_010_5e93

    cp $20
    jr z, jr_010_5e99

    cp $60
    jr z, jr_010_5e9f

    cp $7f
    jr z, jr_010_5ea5

    ld c, $02
    ld de, $2060
    ret


jr_010_5e93:
    ld c, $00
    ld de, $7f20
    ret


jr_010_5e99:
    ld c, $01
    ld de, $0040
    ret


jr_010_5e9f:
    ld c, $03
    ld de, $407f
    ret


jr_010_5ea5:
    ld c, $04
    ld de, $6000
    ret


    and a
    ret


    ldh a, [$b5]
    and $01
    jr nz, jr_010_5eb5

    and a
    ret


jr_010_5eb5:
    scf
    ret


Call_010_5eb7:
    ld hl, $cd3d
    ldh a, [$b5]
    cp $80
    jr z, jr_010_5ec6

    cp $40
    jr z, jr_010_5ed8

    and a
    ret


jr_010_5ec6:
    ld a, [hl]
    cp $07
    jr nz, jr_010_5ecf

    ld [hl], $00
    scf
    ret


jr_010_5ecf:
    cp $04
    jr c, jr_010_5ed5

    ld [hl], $06

jr_010_5ed5:
    inc [hl]
    scf
    ret


jr_010_5ed8:
    ld a, [hl]
    cp $07
    jr nz, jr_010_5ee1

    ld [hl], $04
    scf
    ret


jr_010_5ee1:
    and a
    jr nz, jr_010_5ee6

    ld [hl], $08

jr_010_5ee6:
    dec [hl]
    scf
    ret


Call_010_5ee9:
    ld hl, $c3b5
    ld de, $0014
    ld c, $10

jr_010_5ef1:
    ld [hl], $7f
    add hl, de
    dec c
    jr nz, jr_010_5ef1

    ld hl, $c3c9
    ld bc, $0028
    ld a, [$cd3d]
    call Call_000_3a74
    ld [hl], $ed
    ret


Call_010_5f06:
    ld hl, $c3a0
    ld bc, $1012
    call Call_000_16f0
    ld hl, $c3ca
    ld de, $5f3e
    call Call_000_1723
    ld hl, $c4e2
    ld de, $5f73
    call Call_000_1723
    xor a
    ld [$cd3d], a
    ld c, $05

jr_010_5f27:
    push bc
    call Call_010_5c95
    pop bc
    ld hl, $cd3d
    inc [hl]
    dec c
    jr nz, jr_010_5f27

    xor a
    ld [$cd3d], a
    inc a
    ldh [$ba], a
    call Call_000_3ddb
    ret


    sub e
    add h
    sub a
    sub e
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld a, a
    sbc h
    ld c, [hl]
    add b
    adc l
    adc b
    adc h
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    ld a, a
    sbc h
    ld c, [hl]
    add c
    add b
    sub e
    sub e
    adc e
    add h
    sub d
    sub e
    sbc b
    adc e
    add h
    sbc h
    ld c, [hl]
    sub d
    adc [hl]
    sub h
    adc l
    add e
    sbc h
    ld c, [hl]
    adc a
    sub c
    adc b
    adc l
    sub e
    sbc h
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_010_724a:
    nop
    nop
    nop

Jump_010_724d:
    nop
    nop

Jump_010_724f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_010_7e47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
