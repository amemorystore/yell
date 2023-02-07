;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ldh a, [$f8]
    and a
    ret nz

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    ldh [$f5], a
    ld a, $30
    ldh [rP1], a
    ret


    ldh a, [$f5]
    ld b, a
    and $4f
    cp $0f
    jp z, Jump_003_406b

    ldh a, [$b1]
    ld e, a
    xor b
    ld d, a
    and e
    ldh [$b2], a
    ld a, d
    and b
    ldh [$b3], a
    ld a, b
    ldh [$b1], a
    ld a, [$d72f]
    bit 5, a
    jr nz, jr_003_4063

    ldh a, [$b1]
    ldh [$b4], a
    ld a, [$cd6b]
    and a
    ret z

    cpl
    ld b, a
    ldh a, [$b4]
    and b
    ldh [$b4], a
    ldh a, [$b3]
    and b
    ldh [$b3], a
    ret


Call_003_4063:
jr_003_4063:
    xor a
    ldh [$b4], a
    ldh [$b3], a
    ldh [$b2], a
    ret


Jump_003_406b:
    call Call_000_1e64
    ld a, $30
    ldh [rP1], a
    ld hl, $ff8a
    dec [hl]
    jp z, $1d05

    jp Jump_000_01b9


    ld a, $90
    ldh [$b0], a
    ldh [rWY], a
    xor a
    ldh [$ba], a
    ld [$d13a], a
    ld [$d05b], a
    ldh [$b3], a
    ldh [$b2], a
    ldh [$b4], a
    ld [$cd6a], a
    ld [$d5a2], a
    ld hl, $d73e
    ld [hl+], a
    ld [hl], a
    ld hl, $cd3d
    ld bc, $001e
    call Call_000_166e
    ret


    ld a, [$d3ad]
    and a
    ret z

    ld c, a
    ld hl, $d3ae

jr_003_40af:
    ld a, [$d360]
    cp [hl]
    jr nz, jr_003_40ca

    inc hl
    ld a, [$d361]
    cp [hl]
    jr nz, jr_003_40cb

    inc hl
    ld a, [hl+]
    ld [$d42e], a
    ld a, [hl]
    ldh [$8b], a
    ld hl, $d735
    set 2, [hl]
    ret


jr_003_40ca:
    inc hl

jr_003_40cb:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_003_40af

    ret


    ld hl, $d731
    bit 5, [hl]
    ret nz

    ld hl, $412f
    ld a, [$d360]
    ld b, a
    ld a, [$d361]
    ld c, a
    ld a, [$d35d]
    ld d, a

jr_003_40e7:
    ld a, [hl+]
    cp $ff
    ret z

    cp d
    jr nz, jr_003_411f

    ld a, [hl+]
    cp b
    jr nz, jr_003_4120

    ld a, [hl+]
    cp c
    jr nz, jr_003_40e7

    ld a, [$d35d]
    cp $a1
    ld a, $02
    ld [$d665], a
    jr z, jr_003_4123

    ld a, [$d35d]
    cp $a2
    ld a, $02
    ld [$d667], a
    jr z, jr_003_4123

    ld hl, $d731
    set 5, [hl]
    ld a, $01
    ld [$d6ff], a
    ld [$d119], a
    call Call_000_0fd6
    ret


jr_003_411f:
    inc hl

jr_003_4120:
    inc hl
    jr jr_003_40e7

jr_003_4123:
    ld a, $02
    ld [$d6ff], a
    ld [$d119], a
    call Call_000_0fd6
    ret


    dec de
    ld a, [bc]
    ld de, $0b1b
    ld de, $081d
    ld hl, $091d
    ld hl, $07a1
    ld [de], a
    and c
    rlca
    inc de
    and d
    ld c, $04
    and d
    ld c, $05
    rst $38
    push hl
    push de
    push bc
    ld a, [$c109]
    srl a
    ld c, a
    ld b, $00
    ld hl, $416b
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d360]
    ld b, a
    ld a, [$d361]
    ld c, a
    ld de, $4167
    push de
    jp hl


    pop bc
    pop de
    pop hl
    ret


    ld [hl], e
    ld b, c
    ld a, l
    ld b, c
    add e
    ld b, c
    adc c
    ld b, c
    ld a, [$d367]
    add a
    dec a
    cp b
    jr z, jr_003_4195

    jr jr_003_4193

    ld a, b
    and a
    jr z, jr_003_4195

    jr jr_003_4193

    ld a, c
    and a
    jr z, jr_003_4195

    jr jr_003_4193

    ld a, [$d368]
    add a
    dec a
    cp c
    jr z, jr_003_4195

    jr jr_003_4193

jr_003_4193:
    and a
    ret


jr_003_4195:
    scf
    ret


    push hl
    push de
    push bc
    call Call_003_42d4
    ld a, [$d35d]
    cp $63
    jr z, jr_003_41d9

    ld a, [$c109]
    srl a
    ld c, a
    ld b, $00
    ld hl, $41c0
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cfc5]
    ld de, $0001
    call Call_000_3da7

jr_003_41bc:
    pop bc
    pop de
    pop hl
    ret


    ret z

    ld b, c
    ret nc

    ld b, c
    db $d3
    ld b, c
    sub $41
    ld bc, $1712
    dec a
    inc b
    jr @+$35

    rst $38
    ld bc, $ff5c
    ld a, [de]
    ld c, e
    rst $38
    rrca
    ld c, [hl]
    rst $38

jr_003_41d9:
    ld a, [$cfc5]
    cp $15
    jr nz, jr_003_41e3

    scf
    jr jr_003_41bc

jr_003_41e3:
    and a
    jr jr_003_41bc

    push hl
    push de
    push bc
    ld b, $06
    ld hl, $6785
    call Call_000_3e84
    jr c, jr_003_4211

    ld a, [$d366]
    add a
    ld c, a
    ld b, $00
    ld hl, $4215
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0001
    ld a, [$c45c]
    call Call_000_3da7
    jr nc, jr_003_4211

    ld hl, $d735
    res 2, [hl]

jr_003_4211:
    pop bc
    pop de
    pop hl
    ret


    ld b, a
    ld b, d
    ld c, e
    ld b, d
    ld c, [hl]
    ld b, d
    ld d, b
    ld b, d
    ld c, e
    ld b, d
    ld d, h
    ld b, d
    ld c, [hl]
    ld b, d
    ld d, h
    ld b, d
    ld d, [hl]
    ld b, d
    ld c, d
    ld b, d
    ld c, d
    ld b, d
    ld [hl], l
    ld b, d
    ld c, d
    ld b, d
    ld e, d
    ld b, d
    ld a, c
    ld b, d
    ld [hl], h
    ld b, d
    ld e, a
    ld b, d
    ld h, e
    ld b, d
    ld h, a
    ld b, d
    ld l, e
    ld b, d
    ld l, a
    ld b, d
    ld a, c
    ld b, d
    ld [hl], c
    ld b, d
    ld [hl], a
    ld b, d
    ld a, d
    ld b, d
    dec de
    ld e, b
    rst $38
    dec sp
    ld a, [de]
    inc e
    rst $38
    ld e, [hl]
    rst $38
    ld e, d
    ld e, h
    ld a, [hl-]
    rst $38
    ld c, d
    rst $38
    ld d, h
    ld e, h
    ld [hl-], a
    rst $38
    scf
    add hl, sp
    ld e, $4a
    rst $38
    dec d
    ld d, l
    inc b
    rst $38
    jr @+$1c

    ld [hl+], a
    rst $38
    ld a, [de]
    inc e
    jr c, @+$01

    ld a, [de]
    inc e
    ld d, e
    rst $38
    inc [hl]
    rst $38
    ld b, e
    ld e, b
    jr nz, jr_003_4290

    inc de
    rst $38
    dec de
    dec sp
    rst $38
    rst $38
    ld a, [$d35d]
    cp $d9
    ret c

    cp $e2
    ret nc

    ld hl, $c3a0
    ld bc, $0307
    call Call_000_16f0
    ld hl, $c3b5

jr_003_4290:
    ld de, $d70c
    ld bc, $0203
    call Call_000_3c5b
    ld hl, $c3b8
    ld de, $42c4
    call Call_000_1723
    ld hl, $c3dd
    ld de, $42c9
    call Call_000_1723
    ld a, [$da46]
    cp $0a
    jr nc, jr_003_42b8

    ld hl, $c3e1
    ld a, $7f
    ld [hl], a

jr_003_42b8:
    ld hl, $c3e2
    ld de, $da46
    ld bc, $0102
    jp Jump_000_3c5b


    di
    ei
    or $f6
    ld d, b
    add c
    add b
    adc e
    adc e
    pop af
    pop af
    ld a, a
    ld d, b

Call_003_42d1:
    call Call_000_3ed7

Call_003_42d4:
    ld a, [$d360]
    ld d, a
    ld a, [$d361]
    ld e, a
    ld a, [$c109]
    and a
    jr nz, jr_003_42e8

    ld a, [$c484]
    inc d
    jr jr_003_4304

jr_003_42e8:
    cp $04
    jr nz, jr_003_42f2

    ld a, [$c434]
    dec d
    jr jr_003_4304

jr_003_42f2:
    cp $08
    jr nz, jr_003_42fc

    ld a, [$c45a]
    dec e
    jr jr_003_4304

jr_003_42fc:
    cp $0c
    jr nz, jr_003_4304

    ld a, [$c45e]
    inc e

jr_003_4304:
    ld c, a
    ld [$cfc5], a
    ret


Call_003_4309:
    xor a
    ldh [$db], a
    ld hl, $d360
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ld a, [$c109]
    and a
    jr nz, jr_003_4323

    ld hl, $ffdb
    set 0, [hl]
    ld a, [$c4ac]
    inc d
    jr jr_003_434e

jr_003_4323:
    cp $04
    jr nz, jr_003_4332

    ld hl, $ffdb
    set 1, [hl]
    ld a, [$c40c]
    dec d
    jr jr_003_434e

jr_003_4332:
    cp $08
    jr nz, jr_003_4341

    ld hl, $ffdb
    set 2, [hl]
    ld a, [$c458]
    dec e
    jr jr_003_434e

jr_003_4341:
    cp $0c
    jr nz, jr_003_434e

    ld hl, $ffdb
    set 3, [hl]
    ld a, [$c460]
    inc e

jr_003_434e:
    ld c, a
    ld [$d71b], a
    ld [$cfc5], a
    ret


    call Call_003_4309
    call Call_000_15c3
    jr c, jr_003_4374

    ld hl, $0ada
    call Call_000_0aa0
    ld a, $ff
    jr c, jr_003_4374

    ld a, [$d71b]
    cp $15
    ld a, $ff
    jr z, jr_003_4374

    call Call_003_4378

jr_003_4374:
    ld [$d71b], a
    ret


Call_003_4378:
    ld a, [$d717]
    dec a
    swap a
    ld d, $00
    ld e, a
    ld hl, $c214
    add hl, de
    ld a, [hl+]
    ldh [$dc], a
    ld a, [hl]
    ldh [$dd], a
    ld a, [$d4e0]
    ld c, a
    ld de, $000f
    ld hl, $c214
    ldh a, [$db]
    and $03
    jr z, jr_003_43ba

jr_003_439b:
    inc hl
    ldh a, [$dd]
    cp [hl]
    jr nz, jr_003_43b4

    dec hl
    ld a, [hl+]
    ld b, a
    ldh a, [$db]
    rrca
    jr c, jr_003_43ae

    ldh a, [$dc]
    dec a
    jr jr_003_43b1

jr_003_43ae:
    ldh a, [$dc]
    inc a

jr_003_43b1:
    cp b
    jr z, jr_003_43d9

jr_003_43b4:
    dec c
    jr z, jr_003_43dc

    add hl, de
    jr jr_003_439b

jr_003_43ba:
    ld a, [hl+]
    ld b, a
    ldh a, [$dc]
    cp b
    jr nz, jr_003_43d3

    ld b, [hl]
    ldh a, [$db]
    bit 2, a
    jr nz, jr_003_43cd

    ldh a, [$dd]
    inc a
    jr jr_003_43d0

jr_003_43cd:
    ldh a, [$dd]
    dec a

jr_003_43d0:
    cp b
    jr z, jr_003_43d9

jr_003_43d3:
    dec c
    jr z, jr_003_43dc

    add hl, de
    jr jr_003_43ba

jr_003_43d9:
    ld a, $ff
    ret


jr_003_43dc:
    xor a
    ret


    ld a, [$d72f]
    add a
    jp c, Jump_003_44c2

    ld a, [$d492]
    bit 7, a
    jp nz, Jump_003_44c2

    ld a, [$d72d]
    bit 6, a
    jp nz, Jump_003_44c2

    ld a, [$d162]
    and a
    jp z, Jump_003_44c2

    call Call_003_4684
    call Call_003_44c7
    ld a, [$d13a]
    and $03
    jp nz, Jump_003_44a6

    ld [$cf91], a
    ld hl, $d16e
    ld de, $d163

jr_003_4413:
    ld a, [hl]
    and $08
    jr z, jr_003_4470

    dec hl
    dec hl
    ld a, [hl-]
    ld b, a
    ld a, [hl+]
    or b
    jr z, jr_003_446e

    ld a, [hl]
    dec a
    ld [hl-], a
    inc a
    jr nz, jr_003_442a

    dec [hl]
    inc hl
    jr jr_003_446e

jr_003_442a:
    ld a, [hl+]
    or [hl]
    jr nz, jr_003_446e

    push hl
    inc hl
    inc hl
    ld [hl], a
    ld a, [de]
    ld [$d11d], a
    push de
    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    xor a
    ld [$cd6b], a
    call Call_000_3c29
    ld a, $d0
    ldh [$8c], a
    call Call_000_2817
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_003_446c

    ld e, $03
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ld hl, $430a
    ld d, $09
    ld b, $3d
    call Call_000_3e84

jr_003_446c:
    pop de
    pop hl

jr_003_446e:
    inc hl
    inc hl

jr_003_4470:
    inc de
    ld a, [de]
    inc a
    jr z, jr_003_4481

    ld bc, $002c
    add hl, bc
    push hl
    ld hl, $cf91
    inc [hl]
    pop hl
    jr jr_003_4413

jr_003_4481:
    ld hl, $d16e
    ld a, [$d162]
    ld d, a
    ld e, $00

jr_003_448a:
    ld a, [hl]
    and $08
    or e
    ld e, a
    ld bc, $002c
    add hl, bc
    dec d
    jr nz, jr_003_448a

    ld a, e
    and a
    jr z, jr_003_44a6

    ld b, $02
    ld a, $1f
    call Call_000_3eb4
    ld a, $97
    call Call_000_2238

Jump_003_44a6:
jr_003_44a6:
    ld a, $14
    call Call_000_3eb4
    ld a, d
    and a
    jr nz, jr_003_44c2

    call Call_000_3c29
    ld a, $d1
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d72d
    set 5, [hl]
    ld a, $ff
    jr jr_003_44c3

Jump_003_44c2:
jr_003_44c2:
    xor a

jr_003_44c3:
    ld [$d12c], a
    ret


Call_003_44c7:
    ld a, [$d13a]
    and a
    jr nz, jr_003_44de

    call Call_000_3e6d
    and $01
    jr z, jr_003_44de

    ld hl, $430a
    ld d, $06
    ld b, $3d
    call Call_000_3e84

jr_003_44de:
    ld hl, $d470
    ld a, [hl]
    cp $80
    jr z, jr_003_44ef

    jr c, jr_003_44ea

    dec a
    dec a

jr_003_44ea:
    inc a
    ld [hl], a
    cp $80
    ret nz

jr_003_44ef:
    xor a
    ld [$d49b], a
    ret


    call Call_000_3ed7
    push hl
    ld d, $00
    ld a, [$d366]
    add a
    add a
    ld e, a
    ld hl, $4558
    add hl, de
    add hl, de
    add hl, de
    ld de, $d52a
    ld bc, $000b
    call Call_000_00b1
    ld a, [hl]
    ldh [$d7], a
    xor a
    ldh [$d8], a
    pop hl
    ld a, [$d366]
    push hl
    push de
    ld hl, $454c
    ld de, $0001
    call Call_000_3da7
    pop de
    pop hl
    jr c, jr_003_4531

    ld a, [$d366]
    ld b, a
    ldh a, [$8b]
    cp b
    jr z, jr_003_454b

jr_003_4531:
    ld a, [$d42e]
    cp $ff
    jr z, jr_003_454b

    call Call_000_10d5
    ld a, [$d360]
    and $01
    ld [$d362], a
    ld a, [$d361]
    and $01
    ld [$d363], a

jr_003_454b:
    ret


    inc bc
    ld a, [bc]
    dec c
    ld de, $1312
    inc c
    inc d
    ld d, $0f
    rlca
    rst $38
    add hl, de
    nop
    ld b, [hl]
    nop
    ld b, b
    jp nz, $ff4a

    rst $38
    rst $38
    ld d, d
    ld [bc], a
    add hl, de
    sub b
    ld d, d
    nop
    ld c, [hl]
    sub $4a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, [de]
    add b
    ld d, e
    add b
    ld c, l
    ldh [rWY], a
    jr jr_003_4592

    ld e, $ff
    nop
    ld a, [de]
    ldh a, [rBCPD]
    ldh a, [$63]
    ld a, [c]
    ld c, d
    rst $38
    rst $38
    rst $38
    jr nz, jr_003_4589

    add hl, de

jr_003_4589:
    sub b
    ld d, d
    nop
    ld c, [hl]
    sub $4a
    rst $38
    rst $38
    rst $38

jr_003_4592:
    rst $38
    nop
    ld a, [de]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, b
    and $4a
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld a, [de]
    add b
    ld d, e
    add b
    ld c, l
    ldh [rWY], a
    jr jr_003_45c2

    ld e, $ff
    nop
    ld a, [de]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, b
    and $4a
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    ld [bc], a
    add hl, de
    and b
    ld e, c
    ret nz

    ld d, e
    ld [bc], a
    ld c, e
    rst $38
    rst $38
    rst $38

jr_003_45c2:
    rst $38
    nop
    ld a, [de]
    ldh a, [$5b]
    nop
    ld d, [hl]
    inc c
    ld c, e
    rla
    ld [hl-], a
    rst $38
    rst $38
    nop
    ld a, [de]
    ldh a, [$5b]
    nop
    ld d, [hl]
    inc c
    ld c, e
    rla
    ld [hl-], a
    rst $38
    rst $38
    nop
    dec de
    ldh a, [$7e]
    ld h, b
    ld a, l
    cp h
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, [de]
    ldh a, [$5b]
    nop
    ld d, [hl]
    inc c
    ld c, e
    rla
    ld [hl-], a
    rst $38
    rst $38
    nop
    dec de
    jr nc, jr_003_4660

    sub b
    ld h, e
    rla
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $1019
    ld l, h
    jr nc, jr_003_466b

    ld [hl+], a
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $c01b
    ld b, l
    nop
    ld b, b
    daa
    ld c, e
    ld [de], a
    rst $38
    rst $38
    rst $38
    nop
    add hl, de
    ld [hl], b
    ld [hl], e
    add b
    ld l, l
    cpl
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec de
    ret nz

    ld d, b
    and b
    ld c, h
    add hl, sp
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $a01b
    ld e, [hl]
    ret nz

    ld e, b
    ld b, l
    ld c, e
    dec d
    ld [hl], $ff
    rst $38
    nop
    add hl, de
    or b
    ld h, c
    ret nc

    ld e, e
    ld c, l
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec de
    ret nc

    ld [hl], d
    db $10
    ld l, l
    ld d, a
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec de
    jr nz, @+$7d

    ld [hl], b
    db $76
    ld e, [hl]
    ld c, e
    rlca
    rla
    rst $38
    rst $38
    nop

jr_003_4660:
    ld a, [de]
    ldh a, [rPCM34]
    ldh a, [$71]
    ld l, d
    ld c, e
    ld [de], a
    rst $38
    rst $38
    rst $38

jr_003_466b:
    ld bc, $7019
    ld a, e
    db $10
    ld [hl], a
    ld a, l
    ld c, e
    rst $38
    rst $38
    rst $38
    ld b, l
    ld bc, $143c
    ld c, c
    inc d
    ld b, e
    add h
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    nop

Call_003_4684:
    ld a, [$da47]
    and a
    ret z

    ld hl, $da6e
    inc [hl]
    ret nz

    dec hl
    inc [hl]
    ret nz

    dec hl
    inc [hl]
    ld a, [hl]
    cp $50
    ret c

    ld a, $50
    ld [hl], a
    ret


    sub d
    ld c, b
    sub l
    ld c, b
    sbc [hl]
    ld c, b
    and h
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    or e
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    ldh [rOBP0], a
    adc a
    ld c, b
    and $48
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    jp hl


    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    db $ec
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    push af
    ld c, b
    ld hl, sp+$48
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    ei
    ld c, b
    adc a
    ld c, b
    ld bc, $0749
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    ld a, [bc]
    ld c, c
    inc de
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    dec h
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    cp [hl]
    ld c, c
    dec hl
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    rst $00
    ld c, c
    adc a
    ld c, b
    reti


    ld c, c
    adc a
    ld c, b
    ld l, $49
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    ld a, c
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    or l
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    db $eb
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    xor $49
    pop af
    ld c, c
    rst $30
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    ld h, $4b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    inc l
    ld c, e
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    ld h, c
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    ld h, h
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    dec a
    ld c, c
    ld b, b
    ld c, c
    ld b, e
    ld c, c
    ld c, h
    ld c, c
    ld c, a
    ld c, c
    ld d, l
    ld c, c
    ld e, [hl]
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    ld h, a
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    dec [hl]
    ld c, e
    dec sp
    ld c, e
    ld b, c
    ld c, e
    ld c, l
    ld c, e
    adc a
    ld c, b
    adc a
    ld c, b
    ld l, d
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    ld [hl], b
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    db $76
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    cpl
    ld c, e
    adc a
    ld c, b
    and e
    ld c, c
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    nop
    ld c, d
    add hl, bc
    ld c, d
    rrca
    ld c, d
    dec de
    ld c, d
    ld hl, $8f4a
    ld c, b
    adc a

Call_003_4834:
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    add hl, sp
    ld c, d
    ld c, b
    ld c, d
    ld d, c
    ld c, d
    ld h, e
    ld c, d
    ld a, b
    ld c, d
    add a
    ld c, d
    sbc a
    ld c, d
    jp nc, $d54a

    ld c, d
    db $db
    ld c, d
    ld [$f64a], a
    ld c, d
    db $fc
    ld c, d
    ld [$8f4b], sp
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    dec bc
    ld c, e
    rla
    ld c, e
    ld sp, $8f49
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    xor b
    ld c, d
    or c
    ld c, d
    jp $8f4a


    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    rst $08
    ld c, d
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0111
    dec b
    dec d
    ld bc, $1107
    ld bc, $1108
    ld [bc], a
    inc bc
    dec d
    ld [bc], a
    dec b
    dec d
    inc bc
    ld bc, $0311
    ld [bc], a
    dec d
    inc bc
    ld b, $11
    inc bc
    ld a, [bc]
    dec d
    inc bc
    dec bc
    dec d
    ld a, [bc]
    ld bc, $0a15
    ld [bc], a
    dec d
    ld a, [bc]
    inc bc
    dec d
    ld a, [bc]
    inc b
    dec d
    ld a, [bc]
    dec b
    dec d
    ld a, [bc]
    ld b, $15
    ld a, [bc]
    rlca
    dec d
    ld a, [bc]
    ld [$0a11], sp
    add hl, bc
    ld de, $0a0a
    ld de, $0b0a
    ld de, $0c0a
    ld de, $0d0a
    ld de, $0e0a
    dec d
    ld a, [bc]
    rrca
    ld de, $010d
    dec d
    dec c
    ld [bc], a
    dec d
    rrca
    inc bc
    dec d
    inc d
    ld a, [bc]
    dec d
    rla
    ld bc, $1715
    add hl, bc
    dec d
    rla
    ld a, [bc]
    dec d
    ld a, [de]
    dec bc
    dec d
    dec de
    rlca
    dec d
    ld hl, $1101
    ld hl, $1102
    inc hl
    ld bc, $2315
    ld [$2415], sp
    ld a, [bc]
    dec d
    daa
    ld bc, $2715
    ld [bc], a
    ld de, $0327
    dec d
    jr z, jr_003_4916

    dec d

jr_003_4916:
    jr z, @+$04

    dec d
    jr z, jr_003_491e

    ld de, $0428

jr_003_491e:
    dec d
    jr z, @+$07

    dec d
    jr z, jr_003_492a

    ld de, $012d
    dec d
    dec l
    dec bc

jr_003_492a:
    dec d
    inc [hl]
    dec b
    dec d
    ccf
    ld [bc], a
    dec d
    db $e4
    ld bc, $e415
    ld [bc], a
    dec d
    db $e4
    inc bc
    dec d
    db $e4
    inc b
    dec d
    adc a
    ld bc, $9015
    inc b
    dec d
    sub c
    inc b
    dec d
    sub c
    dec b
    dec d
    sub c
    ld b, $15
    sub d
    ld b, $15
    sub e
    inc b
    dec d
    sub e
    dec b
    dec d
    sub h
    ld bc, $9411
    ld [bc], a
    ld de, $0394
    dec d
    sub l
    dec b
    ld de, $0284
    dec d
    add a
    dec bc
    dec d
    sbc e
    ld [bc], a
    dec d
    and l
    ld [bc], a
    dec d
    and l
    inc bc
    dec d
    or c
    ld b, $15
    or c
    rlca
    dec d
    or l
    ld bc, $5311
    ld bc, $5315
    ld [bc], a
    dec d
    ld d, e
    inc bc
    dec d
    ld d, e
    inc b
    dec d
    ld d, e
    dec b
    dec d
    ld d, e
    ld b, $15
    ld d, e
    rlca
    dec d
    ld d, e
    ld [$5315], sp
    add hl, bc
    dec d
    ld d, e
    ld a, [bc]
    dec d
    ld d, e
    dec bc
    dec d
    ld d, e
    inc c
    dec d
    ld d, e
    dec c
    dec d
    ld d, e
    ld c, $15
    jp nz, $1506

    jp nz, Jump_000_1507

    jp nz, $1508

    jp nz, Jump_000_1509

    jp nz, Jump_000_150a

    jp nz, Jump_000_150d

    ld e, b
    ld bc, $5815
    ld [bc], a
    ld de, $0358
    ld de, $0733
    dec d
    inc sp
    ld [$3315], sp
    add hl, bc
    dec d
    dec sp
    ld [$3b15], sp
    add hl, bc
    dec d
    dec sp
    ld a, [bc]
    dec d
    dec sp
    dec bc
    dec d
    dec sp
    inc c
    dec d
    dec sp
    dec c
    dec d
    dec a
    ld [bc], a
    ld de, $063d
    ld de, $073d
    dec d
    dec a
    ld [$3d15], sp
    add hl, bc
    dec d
    dec a
    ld a, [bc]
    dec d
    ld h, b
    ld [bc], a
    ld de, $0a66
    dec d
    ld h, a
    ld b, $15
    ld h, a
    add hl, bc
    dec d
    ld l, b
    add hl, bc
    dec d
    ld l, b
    ld a, [bc]
    dec d
    ld l, b
    dec bc
    dec d
    add $05
    dec d
    add $06
    dec d
    add $0a
    dec d
    rst $00
    ld b, $15
    rst $00
    rlca
    dec d
    ret z

    ld [bc], a
    dec d
    ret z

    inc bc
    dec d
    ret z

    inc b
    dec d
    ret z

    dec b
    dec d
    ret


    inc bc
    dec d
    ret


    inc b
    dec d
    jp z, Jump_000_1501

    jp z, $1102

    jp z, Jump_000_1103

    jp z, Jump_000_1505

    jp z, $1506

    jp z, Jump_000_1507

    jp z, $1108

    jp z, $1109

    rst $08
    ld bc, $cf15
    ld [bc], a
    dec d
    rst $08
    inc bc
    dec d
    rst $08
    inc b
    dec d
    rst $08
    dec b
    dec d
    ret nc

    ld [bc], a
    dec d
    ret nc

    inc bc
    dec d
    ret nc

    inc b
    dec d
    pop de
    ld [bc], a
    dec d
    pop de
    inc bc
    dec d
    pop de
    inc b
    dec d
    pop de
    dec b
    dec d
    pop de
    ld b, $15
    pop de
    rlca
    dec d
    jp nc, Jump_000_1502

    jp nc, $1503

    jp nc, $1504

    jp nc, Jump_000_1505

    jp nc, $1506

    jp nc, Jump_000_1507

    jp nc, $1508

    db $d3
    ld b, $15
    db $d3
    rlca
    dec d
    db $d3
    ld [$d315], sp
    add hl, bc
    dec d
    db $d3
    ld a, [bc]
    dec d
    call nc, Call_000_1505
    call nc, $1506
    call nc, Call_000_1507
    call nc, $1508
    call nc, Call_000_1509
    call nc, Call_000_150a
    call nc, $150b
    call nc, $150c
    push de
    ld [bc], a
    dec d
    push de
    inc bc
    dec d
    push de
    inc b
    dec d
    jp hl


    ld [bc], a
    dec d
    jp hl


    inc bc
    dec d
    jp hl


    inc b
    dec d
    ld [$1501], a
    ld [$1502], a
    ld [$1503], a
    ld [$1504], a
    ld [$1505], a
    ld [$1506], a
    db $eb
    inc bc
    dec d
    db $eb
    inc b
    dec d
    db $eb
    dec b
    dec d
    db $eb
    ld b, $15
    db $f4
    ld [bc], a
    dec d
    sub $02
    dec d
    rst $10
    inc bc
    dec d
    rst $10
    inc b
    dec d
    ret c

    inc bc
    dec d
    ret c

    inc b
    dec d
    ret c

    dec b
    dec d
    ret c

    ld b, $15
    ret c

    ld [$d915], sp
    ld bc, $d915
    ld [bc], a
    dec d
    reti


    inc bc
    dec d
    reti


    inc b
    dec d
    jp c, Jump_000_1501

    jp c, Jump_000_1502

    db $db
    ld bc, $db15
    ld [bc], a
    dec d
    db $db
    inc bc
    dec d
    db $db
    inc b
    dec d
    call c, Call_000_1501
    ld [c], a
    ld bc, $e215
    ld [bc], a
    dec d
    ld [c], a
    inc bc
    dec d
    ld [c], a
    inc b
    dec d
    db $e3
    ld bc, $e315
    ld [bc], a
    dec d
    db $e3
    inc bc
    dec d
    db $e3
    inc b
    dec d
    db $e3
    dec b
    dec d
    ld l, h
    inc bc
    dec d
    ld l, h
    inc b
    dec d
    ld a, b
    ld [bc], a
    ld de, $01c0
    dec d
    ret nz

    ld [bc], a
    dec d
    sbc a
    ld bc, $9f11
    ld [bc], a
    ld de, $01a0
    ld de, $02a0
    ld de, $02a1
    dec d
    and c
    inc bc
    dec d
    and c
    dec b
    ld de, $06a1
    ld de, $01a2
    ld de, $02a2
    ld de, $03a2
    dec d
    daa
    ld bc, $2715
    ld [bc], a
    ld de, $0327
    dec d
    rst $38
    ld bc, $2115
    sub l
    ld c, e
    ld a, [$d35d]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$d886], a
    and a
    jr z, jr_003_4b86

    push hl
    ld de, $d887
    ld bc, $0014
    call Call_000_00b1
    pop hl
    ld bc, $0014
    add hl, bc

jr_003_4b86:
    ld a, [hl+]
    ld [$d8a3], a
    and a
    ret z

    ld de, $d8a4
    ld bc, $0014
    jp Jump_000_00b1


    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc e
    ld c, l
    and c
    ld c, l
    db $e3
    ld c, l
    dec sp
    ld c, [hl]
    sub e
    ld c, [hl]
    xor c
    ld c, [hl]
    ld l, e
    ld c, a
    ld d, l
    ld c, a
    ld a, l
    ld c, [hl]
    dec d
    ld c, a
    db $d3
    ld c, [hl]
    dec hl
    ld c, a
    di
    ld c, a
    dec e
    ld d, b
    inc sp
    ld d, b
    ld c, c
    ld d, b
    ld e, a
    ld d, b
    ld [hl], l
    ld d, b
    db $e3
    ld d, b
    ld sp, hl
    ld d, b
    db $fd
    ld d, c
    or a
    ld c, l
    ld a, a
    ld d, d
    ld d, c
    ld c, [hl]
    ld h, a
    ld c, [hl]
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    call $894d
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    ld sp, hl
    ld c, l
    rrca
    ld c, [hl]
    dec h
    ld c, [hl]
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    jp hl


    ld c, [hl]
    ld l, c
    ld d, d
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    pop bc
    ld d, d
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    add c
    ld c, a
    add e
    ld c, a
    add l
    ld c, a
    sbc e
    ld c, a
    or c
    ld c, a
    rst $00
    ld c, a
    db $dd
    ld c, a
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    dec h
    ld d, c
    dec sp
    ld d, c
    ld d, c
    ld d, c
    ld a, e
    ld d, c
    adc c
    ld c, l
    adc c
    ld c, l
    and l
    ld d, c
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    rrca
    ld d, c
    adc c
    ld c, l
    sub l
    ld d, d
    adc c
    ld c, l
    adc c
    ld c, l
    rst $10
    ld d, d
    xor e
    ld d, d
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    cp e
    ld d, c
    pop de
    ld d, c
    rst $20
    ld d, c
    and c
    ld d, b
    or a
    ld d, b
    call $8b50
    ld d, b
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    dec a
    ld d, d
    ld d, e
    ld d, d
    daa
    ld d, d
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    rst $38
    ld c, [hl]
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    adc c
    ld c, l
    rst $38
    rst $38
    nop
    nop
    add hl, de
    inc bc
    inc h
    inc b
    inc h
    ld [bc], a
    and l
    inc bc
    and l
    ld [bc], a
    inc h
    inc bc
    inc h
    dec b
    inc h
    inc b
    and l
    ld b, $24
    rlca
    inc h
    nop
    add hl, de
    inc bc
    and l
    inc bc
    inc h
    inc b
    and l
    inc b
    inc bc
    inc b
    rrca
    dec b
    inc h
    ld b, $03
    ld b, $0f
    rlca
    inc h
    rlca
    inc h
    nop
    add hl, de
    ld [bc], a
    inc bc
    ld [bc], a
    rrca
    inc bc
    add hl, sp
    inc bc
    and l
    inc b
    inc bc
    inc b
    rrca
    dec b
    add hl, sp
    ld [bc], a
    dec b
    inc b
    dec b
    ld b, $05
    nop
    add hl, de
    inc bc
    ld a, e
    inc b
    ld a, h
    inc b
    ld a, e
    dec b
    ld a, e
    inc b
    inc h
    ld b, $24
    ld b, $7b
    ld b, $7c
    ld [$0924], sp
    sub [hl]
    nop
    inc d
    ld [$0905], sp
    dec b
    add hl, bc
    add hl, sp
    ld a, [bc]
    dec b
    ld [$0a60], sp
    and l
    ld a, [bc]
    ld h, b
    inc c
    and l
    dec bc
    dec b
    inc c
    dec b
    nop
    ld a, [bc]
    ld [$096b], sp
    ld l, e
    ld a, [bc]
    xor c
    ld b, $6b
    rlca
    ld l, e
    ld a, [bc]
    ld l, e
    ld a, [bc]
    xor c
    dec bc
    ld l, e
    inc c
    ld h, b
    dec bc
    inc b
    nop
    ld a, [bc]
    ld [$096b], sp
    ld l, e
    ld a, [bc]
    ld l, e
    ld a, [bc]
    xor c
    dec bc
    xor c
    dec bc
    ld l, e
    add hl, bc
    ld l, l
    dec bc
    ld l, l
    ld a, [bc]
    inc b
    inc c
    inc b
    nop
    ld a, [bc]
    ld a, [bc]
    ld l, e
    dec bc
    xor c
    dec c
    ld l, l
    dec bc
    ld l, e
    dec bc
    ld l, e
    inc c
    ld l, e
    dec c
    ld l, e
    add hl, bc
    inc b
    dec bc
    inc b
    dec c
    inc b
    nop
    inc d
    ld [$0905], sp
    dec b
    add hl, bc
    add hl, sp
    ld a, [bc]
    dec b
    ld [$0a60], sp
    and l
    ld a, [bc]
    ld h, b
    inc c
    and l
    dec bc
    dec b
    inc c
    dec b
    nop
    add hl, de
    inc c
    cp c
    inc c
    cp h
    dec c
    inc h
    ld c, $b9
    ld c, $bc
    rrca
    inc h
    dec c
    ld b, c
    db $10
    ld b, c
    ld de, $1124
    sub [hl]
    nop
    rrca
    inc c
    cp c
    inc c
    cp h
    dec c
    inc h
    ld c, $b9
    ld c, $bc
    rrca
    inc h
    dec c
    ld b, c
    db $10
    ld b, c
    ld de, $1124
    sub [hl]
    nop
    rrca
    db $10
    inc bc
    db $10
    rrca
    ld [de], a
    and l
    ld [de], a
    inc bc
    ld [de], a
    rrca
    ld de, $1205
    and a
    ld [de], a
    xor b
    inc d
    and [hl]
    inc de
    inc hl
    nop
    rrca
    rrca
    inc h
    ld c, $a5
    rlca
    sub h
    db $10
    inc h
    db $10
    and l
    ld de, $1124
    sub [hl]
    inc bc
    ld h, h
    dec b
    ld h, h
    rlca
    ld h, h
    nop
    rrca
    rrca
    inc h
    ld c, $a5
    rlca
    sub h
    db $10
    inc h
    db $10
    and l
    ld de, $1124
    sub [hl]
    inc bc
    ld h, h
    dec b
    ld h, h
    rlca
    ld h, h
    inc bc
    rrca
    cpl
    rrca
    cpl
    rrca
    cpl
    rrca
    cpl
    rrca
    cpl
    rrca
    cpl
    rrca
    cpl
    rrca
    cpl
    rrca
    add b
    inc d
    add b
    rrca
    db $10
    inc h
    rrca
    and l
    ld [de], a
    inc h
    rrca
    jr nc, jr_003_4eee

    and l
    ld de, $1230
    sub [hl]
    inc d
    sub [hl]
    inc de
    jr nc, jr_003_4ef8

    and [hl]
    nop
    rrca
    rrca
    ld l, e
    db $10
    xor c

jr_003_4eee:
    ld de, $136b
    ld l, e
    ld [de], a
    xor c
    inc d
    xor c
    dec d
    ld l, e

jr_003_4ef8:
    ld de, $136a
    ld l, d
    dec d
    ld l, d
    nop
    rrca
    inc d
    ld l, e
    ld de, $12a9
    ld l, d
    dec d
    ld l, e
    ld d, $6b
    dec d
    xor c
    inc d
    ld l, d

jr_003_4f0e:
    ld c, $22
    ld [de], a
    ld [hl+], a
    ld d, $22
    nop
    rrca
    db $10
    xor l
    ld [de], a
    and l
    ld [de], a
    xor l
    inc d
    xor l
    ld de, $1103
    rrca
    ld d, $ad
    inc d
    and [hl]
    db $10
    ld l, d
    ld [de], a
    ld l, d
    nop
    rrca
    add hl, de
    cp c
    add hl, de
    cp h
    inc e
    inc h
    inc e
    sub [hl]
    dec de
    cp c
    dec de
    cp h
    dec e
    cp d
    dec e
    cp l
    ld a, [de]
    ld b, b
    rra
    ld b, b
    inc bc
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    ld [$0814], sp
    rrca
    inc d
    inc h
    ld d, $24
    inc d
    and l
    rrca
    sub h
    inc de
    sub h
    jr jr_003_4ef8

    inc de
    ld h, h
    jr jr_003_4fca

    inc d
    ld h, $1b
    ld h, $00
    rrca
    inc d
    inc h
    ld d, $24
    inc d
    and l
    rrca
    sub h
    inc de
    sub h
    jr jr_003_4f0e

    ld a, [de]
    sub h
    inc de
    ld h, h
    jr jr_003_4fe2

    jr jr_003_4fe4

    nop
    nop
    nop

jr_003_4f83:
    nop
    nop
    ld a, [bc]
    inc d
    add hl, de
    dec d
    add hl, de
    ld d, $19
    rla
    add hl, de
    jr jr_003_4fa9

    inc de
    add hl, de
    ld [de], a
    add hl, de
    add hl, de
    add hl, de
    inc d
    sub e
    add hl, de
    sub e
    nop
    ld a, [bc]
    inc d
    add hl, de
    dec d
    add hl, de
    ld d, $19
    rla
    add hl, de
    jr jr_003_4fbf

    inc de
    add hl, de
    ld [de], a

jr_003_4fa9:
    add hl, de
    add hl, de
    add hl, de
    inc d
    sub e
    add hl, de
    sub e
    nop
    rrca
    ld d, $19
    rla
    add hl, de
    jr jr_003_4fd1

    add hl, de
    add hl, de
    ld a, [de]
    add hl, de
    dec d
    add hl, de
    inc d

jr_003_4fbf:
    ld de, $191b
    ld d, $93
    dec de
    sub e
    nop
    rrca
    ld d, $19

jr_003_4fca:
    rla
    add hl, de
    jr jr_003_4fe7

    add hl, de
    add hl, de
    ld a, [de]

jr_003_4fd1:
    add hl, de

jr_003_4fd2:
    dec d
    add hl, de
    ld d, $11
    dec de
    add hl, de
    ld d, $93
    dec de
    sub e
    nop
    inc d
    jr jr_003_4ff9

    add hl, de
    add hl, de

jr_003_4fe2:
    ld a, [de]
    add hl, de

jr_003_4fe4:
    dec de
    add hl, de
    inc e

jr_003_4fe7:
    add hl, de
    rla
    add hl, de
    jr jr_003_4ffd

    dec e
    add hl, de
    jr jr_003_4f83

    dec e
    sub e
    nop
    rrca
    add hl, de
    cp c
    add hl, de
    cp h
    inc e

jr_003_4ff9:
    sub [hl]
    inc e
    inc h
    dec de

jr_003_4ffd:
    cp c
    dec de
    cp h
    dec e
    cp d
    dec e
    cp l
    ld a, [de]
    ld b, b
    rra
    ld b, b
    inc bc
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h
    rrca
    dec h

jr_003_5015:
    rrca
    dec h
    rrca
    dec h
    rrca
    ld [$0814], sp
    rrca
    ld a, [de]
    cp c
    ld a, [de]
    cp h
    jr jr_003_5065

    ld e, $96
    inc e
    cp c
    inc e
    cp h
    ld e, $ba
    ld e, $bd
    dec de
    ld b, c
    ld e, $77
    nop
    rrca
    ld a, [de]
    cp c
    ld a, [de]
    cp h
    jr jr_003_507b

    jr nz, jr_003_4fd2

    inc e
    cp c
    inc e
    cp h
    ld e, $ba
    ld e, $bd
    dec de
    ld b, c
    ld e, $77
    nop
    add hl, de
    ld d, $05
    ld d, $46
    rla
    and l
    jr @+$48

    jr jr_003_4ff9

jr_003_5054:
    ld a, [de]
    ld b, [hl]
    rla
    dec b
    jr @+$25

    add hl, de
    and [hl]
    ld a, [de]
    and [hl]
    nop
    add hl, de
    ld a, [de]
    ld b, [hl]
    dec de
    inc hl
    dec de

jr_003_5065:
    ld b, [hl]
    inc e
    ld b, [hl]
    inc e
    and e
    ld e, $a3
    dec e
    inc hl
    inc e

jr_003_506f:
    ld b, [hl]
    jr nz, jr_003_5015

    dec e
    ld [hl], h
    nop
    add hl, de
    ld d, $05
    ld d, $46
    rla

jr_003_507b:
    and l
    jr jr_003_50c4

    jr @-$59

    ld a, [de]
    ld b, [hl]
    rla
    dec b
    jr jr_003_50a9

    add hl, de
    and [hl]
    ld a, [de]
    and [hl]
    nop
    ld e, $0e
    inc bc
    inc h
    rrca
    jr jr_003_509e

    inc d
    ld [de], a
    rla
    and a
    dec de
    ld l, $1b
    ld l, l
    jr nz, jr_003_50ca

    ld d, $1e

jr_003_509e:
    rlca
    jr z, jr_003_50a1

jr_003_50a1:
    ld e, $15
    inc bc
    dec e
    rrca
    ld d, $0c
    dec d

jr_003_50a9:
    inc a
    jr nz, jr_003_5054

    inc de
    ld de, $0c1a
    jr @-$6d

    dec d
    jr z, jr_003_50c4

    ld a, [de]
    nop
    ld e, $24
    inc bc
    ld c, $0f
    inc d
    inc c
    add hl, de
    ld [de], a
    rla
    xor b
    inc e
    ld [bc], a

jr_003_50c4:
    db $10
    ld de, $0221
    add hl, de
    ld a, [de]

jr_003_50ca:
    rrca
    dec e
    nop
    ld e, $1d
    inc bc
    dec d
    rrca
    ld d, $0c
    dec d
    inc a
    jr nz, @-$57

    inc de
    ld de, $0c1a
    jr jr_003_506f

    add hl, de
    dec e
    dec de
    ld e, $00
    nop
    dec b
    dec b
    jr jr_003_50f2

    jr @+$11

    jr @+$07

    jr jr_003_50f8

    jr @+$11

    jr jr_003_5106

jr_003_50f2:
    jr jr_003_5112

    jr jr_003_5119

    jr jr_003_5120

jr_003_50f8:
    jr jr_003_50fa

jr_003_50fa:
    dec b
    dec b
    jr jr_003_5108

    jr @+$11

    jr @+$07

    jr jr_003_510e

    jr jr_003_5115

jr_003_5106:
    jr jr_003_511c

jr_003_5108:
    jr jr_003_5128

    jr jr_003_512f

    jr jr_003_5136

jr_003_510e:
    jr jr_003_511f

    ld [de], a
    ld l, e

jr_003_5112:
    add hl, de
    ld c, [hl]
    dec de

jr_003_5115:
    ld c, [hl]
    dec de
    ld l, e
    inc h

jr_003_5119:
    ld l, e
    inc e
    dec h

jr_003_511c:
    ld e, $25
    add hl, bc

jr_003_511f:
    ld l, e

jr_003_5120:
    dec de
    add d
    inc h
    add d
    nop
    ld a, [bc]
    dec de
    ld l, e

jr_003_5128:
    ld a, [de]
    ld c, [hl]
    inc h
    ld l, e
    inc e
    ld c, [hl]
    dec de

jr_003_512f:
    add d
    dec e
    dec h
    ld [de], a
    ld l, e
    inc e
    adc d

jr_003_5136:
    ld d, $3a
    ld a, [de]
    ld a, [hl-]
    nop
    ld a, [bc]
    dec de
    ld l, e
    dec de
    ld c, [hl]
    inc h
    ld l, e
    dec de
    add d
    inc e
    adc d
    jr jr_003_5182

    dec e
    ld c, [hl]
    inc h
    add d
    rra
    dec h
    rra
    ld [$0a00], sp
    dec de
    add d
    inc h
    ld l, e
    dec e
    ld c, [hl]
    dec de
    ld l, e
    ld e, $8a
    ld a, [de]
    ld a, [hl-]
    rra
    ld c, [hl]
    ld e, $3a
    inc e
    ld a, b
    jr nz, jr_003_51de

    dec b
    add hl, de
    jr jr_003_5188

    jr jr_003_5180

    jr jr_003_518c

jr_003_516e:
    dec de
    inc hl
    jr jr_003_5190

    dec de
    jr z, @+$1a

    ld e, $1b
    ld e, $1b

jr_003_5179:
    ld e, $1b
    ld a, [bc]

jr_003_517c:
    inc h
    add d
    inc h
    ld l, e

jr_003_5180:
    ld e, $4e

jr_003_5182:
    jr nz, jr_003_510e

    inc e
    ld a, [hl-]
    jr nz, jr_003_51c2

jr_003_5188:
    dec de
    add d
    dec l
    ld l, e

jr_003_518c:
    ld e, $78
    ld [hl+], a
    ld a, b

jr_003_5190:
    dec b
    add hl, de
    jr jr_003_51b2

    jr jr_003_51aa

jr_003_5196:
    jr jr_003_51b6

    dec de
    inc hl
    jr jr_003_51ba

    dec de
    jr z, jr_003_51b7

    ld e, $1b
    ld e, $1b
    ld e, $1b
    ld a, [bc]
    ld [hl+], a
    and l
    ld [hl+], a
    and [hl]

jr_003_51aa:
    rla
    dec c
    ld a, [de]
    ld hl, $a525
    dec h
    and [hl]

jr_003_51b2:
    ld e, $21
    ld a, [de]
    dec c

jr_003_51b6:
    ld [hl+], a

jr_003_51b7:
    ld hl, $2126

jr_003_51ba:
    nop
    ld a, [bc]
    dec h
    and l
    dec h
    and [hl]
    ld a, [de]
    dec c

jr_003_51c2:
    dec e
    dec c
    jr z, @-$59

    jr z, jr_003_516e

    jr nz, @+$0f

    inc hl
    dec c
    inc hl
    adc b
    ld h, $88
    nop
    ld a, [bc]
    jr z, jr_003_5179

    jr z, jr_003_517c

    jr nz, jr_003_51e5

    inc hl
    dec c
    dec hl
    and l
    dec hl
    and [hl]

jr_003_51de:
    ld h, $0d
    ld h, $0d
    ld h, $88
    add hl, hl

jr_003_51e5:
    adc b
    nop
    ld a, [bc]
    inc hl
    dec c
    ld h, $0d
    dec h
    and [hl]
    jr z, jr_003_5196

    add hl, hl
    adc b
    dec hl
    and [hl]
    jr jr_003_5242

    ld l, $a6
    ld [de], a
    ld c, h
    inc c
    ld c, h
    nop
    add hl, de
    rrca
    inc h
    dec c
    and l
    dec c
    inc h
    dec bc
    inc h
    ld de, $0f24
    and l
    rrca
    and [hl]
    ld de, $1396
    sub [hl]
    rrca
    sub [hl]
    dec b
    dec b
    jr jr_003_5220

    jr @+$11

    jr @+$07

    jr jr_003_5226

    jr jr_003_522d

    jr jr_003_5234

jr_003_5220:
    jr jr_003_5240

    jr jr_003_5247

    jr jr_003_524e

jr_003_5226:
    jr jr_003_5232

    ld [hl-], a
    add d
    scf
    add d
    dec l

jr_003_522d:
    daa
    scf
    cp d
    scf
    cp l

jr_003_5232:
    inc [hl]
    ld h, c

jr_003_5234:
    ld [hl], $77
    ld [hl], $2e
    scf
    ld c, h
    inc a
    ld c, h
    nop
    rrca
    inc [hl]
    add d

jr_003_5240:
    add hl, sp
    add d

jr_003_5242:
    ld [hl-], a
    daa
    jr c, jr_003_52a7

    ld [hl-], a

jr_003_5247:
    ld [de], a
    inc a
    ld c, h
    ld a, [hl-]
    cp d
    ld a, [hl-]
    cp l

jr_003_524e:
    inc a
    ld bc, $013a
    nop
    add hl, de
    ld [hl], $82
    dec sp
    add d
    scf
    daa
    inc [hl]
    ld [de], a
    ld a, $01
    inc a
    ld c, h
    jr c, jr_003_528a

    ld b, c
    ld c, h
    scf
    dec bc
    ld [hl-], a
    dec bc
    nop
    ld a, [bc]
    ld e, $ad
    inc hl
    xor l
    ld hl, $2136
    ld b, $25
    ld b, $21
    dec c
    dec h
    dec c
    ld h, $36
    ld hl, $2588
    adc b
    nop
    ld a, [bc]
    add hl, hl
    and a
    add hl, hl
    xor b
    inc h
    add hl, sp
    inc l
    and a
    inc l
    xor b

jr_003_528a:
    jr z, jr_003_52af

    add hl, hl
    add hl, sp
    dec l
    inc hl
    add hl, hl
    ld [hl], l
    ld l, $75
    nop
    ld a, [bc]
    rra
    xor c
    inc h
    xor c
    add hl, hl
    xor c
    inc l
    ld l, e
    daa
    add d
    inc l
    daa
    dec l
    ld [hl+], a
    cpl
    ld [hl+], a
    daa

jr_003_52a7:
    add hl, hl
    ld a, [hl+]
    add hl, hl
    nop
    rrca
    inc h
    xor c
    inc l

jr_003_52af:
    add d
    add hl, hl
    xor c
    ld sp, $2e22
    xor c
    add hl, hl
    daa
    ld a, [hl+]
    add hl, hl
    dec l
    add hl, hl
    cpl
    daa
    cpl
    daa
    nop
    rrca
    ld a, [de]
    xor c
    rra
    xor c
    inc h
    xor c
    daa
    ld l, e
    inc l
    ld l, e
    add hl, hl
    xor c
    dec hl
    ld [hl+], a
    dec l
    ld [hl+], a
    add hl, hl
    daa
    cpl
    daa
    nop
    inc d
    ld [de], a
    dec sp
    inc de
    dec sp
    ld de, $143b
    dec sp
    db $10
    dec sp
    rrca
    dec sp
    dec d
    dec sp
    ld d, $3b
    dec e
    db $76
    rra
    halt
    ld a, $01
    ld [$cd6a], a
    ld a, [$cf90]
    cp $c4
    jp nc, Jump_003_6374

    ld hl, $5307
    dec a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor l
    ld d, e
    xor l
    ld d, e
    xor l
    ld d, e
    xor l
    ld d, e
    ret z

    ld d, [hl]
    rst $10
    ld d, [hl]
    dec h
    ld d, a
    xor l
    ld d, e
    bit 2, a
    ret nc

    ld d, a
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    ld [hl], d
    ld e, l
    add a
    ld e, l
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    rst $08
    ld e, l
    ld l, $5e
    ld [hl], c
    ld h, e
    ret nc

    ld d, a
    ret nc

    ld d, a
    ret nc

    ld d, a
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ldh a, [$3f]
    ld [hl], c
    ld h, e
    ld a, $5e
    ret nc

    ld d, a
    ld d, a
    ld e, [hl]
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ld [bc], a
    ld e, a
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    ld de, $385f
    ld e, a
    dec a
    ld e, a
    ld b, d
    ld e, a
    ld [hl], c
    ld h, e
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    xor [hl]
    ld e, b
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    ld l, c
    ld e, a
    rst $20
    ld h, b
    or a
    ld h, c
    cp d
    ld h, c
    ld [hl], c
    ld h, e
    cp l
    ld e, a
    ld [hl], c
    ld h, e
    ld [hl], c
    ld h, e
    ld sp, hl
    ld h, b
    ld b, $61
    jr nc, jr_003_5404

    ldh a, [$61]
    rst $30
    ld h, c
    rst $30
    ld h, c
    rst $30
    ld h, c
    rst $30
    ld h, c
    ld a, [$d056]
    and a
    jp z, Jump_003_64b5

    dec a
    jp nz, Jump_003_64ca

    ld a, [$d059]
    cp $01
    jr z, jr_003_53d2

    cp $04
    jr z, jr_003_53d2

    ld a, [$d162]
    cp $06
    jr nz, jr_003_53d2

    ld a, [$da7f]
    cp $14
    jp z, Jump_003_64f0

jr_003_53d2:
    xor a
    ld [$d11b], a
    ld a, [$d059]
    cp $02
    jr nz, jr_003_53e1

    ld hl, $da46
    dec [hl]

jr_003_53e1:
    call Call_000_3e03
    ld a, $43
    ld [$d11d], a
    call Call_000_371b
    ld hl, $652c
    call Call_000_3c36
    ld hl, $59ac
    ld b, $0f
    call Call_000_3e84
    ld b, $10
    jp z, Jump_003_554a

    ld a, [$d059]
    cp $01

jr_003_5404:
    jr z, jr_003_540c

    cp $04
    jr z, jr_003_540c

    jr jr_003_5432

jr_003_540c:
    ld hl, $d886
    ld de, $d157
    ld bc, $000b
    call Call_000_00b1
    ld a, [$d059]
    cp $01
    jp nz, Jump_003_54d4

    ld a, $01
    ld [$d11b], a
    ld a, [$d74b]
    bit 7, a
    ld b, $63
    jp nz, Jump_003_554a

    jp Jump_003_54d4


jr_003_5432:
    ld a, [$d35d]
    cp $93
    jr nz, jr_003_5443

    ld a, [$cfd7]
    cp $91
    ld b, $10
    jp z, Jump_003_554a

jr_003_5443:
    call Call_000_3e6d
    ld b, a
    ld hl, $cf90
    ld a, [hl]
    cp $01
    jp z, Jump_003_54d4

    cp $04
    jr z, jr_003_5463

    ld a, $c8
    cp b
    jr c, jr_003_5443

    ld a, [hl]
    cp $03
    jr z, jr_003_5463

    ld a, $96
    cp b
    jr c, jr_003_5443

jr_003_5463:
    ld a, [$cfe8]
    and a
    jr z, jr_003_5477

    and $27
    ld c, $0c
    jr z, jr_003_5471

    ld c, $19

jr_003_5471:
    ld a, b
    sub c
    jp c, Jump_003_54d4

    ld b, a

jr_003_5477:
    push bc
    xor a
    ldh [$96], a
    ld hl, $cff3
    ld a, [hl+]
    ldh [$97], a
    ld a, [hl]
    ldh [$98], a
    ld a, $ff
    ldh [$99], a
    call Call_000_38a5
    ld a, [$cf90]
    cp $03
    ld a, $0c
    jr nz, jr_003_5496

    ld a, $08

jr_003_5496:
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ld hl, $cfe5
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    srl b
    rr a
    srl b
    rr a
    and a
    jr nz, jr_003_54af

    inc a

jr_003_54af:
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$97]
    and a
    jr z, jr_003_54bf

    ld a, $ff
    ldh [$98], a

jr_003_54bf:
    pop bc
    ld a, [$d006]
    cp b
    jr c, jr_003_54d6

    ldh a, [$97]
    and a
    jr nz, jr_003_54d4

    call Call_000_3e6d
    ld b, a
    ldh a, [$98]
    cp b
    jr c, jr_003_54d6

Jump_003_54d4:
jr_003_54d4:
    jr jr_003_554e

jr_003_54d6:
    ldh a, [$98]
    ld [$d11d], a
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, [$d006]
    ldh [$98], a
    ld a, $64
    ldh [$99], a
    call Call_000_38a5
    ld a, [$cf90]
    ld b, $ff
    cp $04
    jr z, jr_003_5501

    ld b, $c8
    cp $03
    jr z, jr_003_5501

    ld b, $96
    cp $02
    jr z, jr_003_5501

jr_003_5501:
    ld a, b
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$97]
    and a
    ld b, $63
    jr nz, jr_003_554a

    ld a, [$d11d]
    ldh [$99], a
    call Call_000_38a5
    ld a, $ff
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ld a, [$cfe8]
    and a
    jr z, jr_003_5534

    and $27
    ld b, $05
    jr z, jr_003_552f

    ld b, $0a

jr_003_552f:
    ldh a, [$98]
    add b
    ldh [$98], a

jr_003_5534:
    ldh a, [$98]
    cp $0a
    ld b, $20
    jr c, jr_003_554a

    cp $1e
    ld b, $61
    jr c, jr_003_554a

    cp $46
    ld b, $62
    jr c, jr_003_554a

    ld b, $63

Jump_003_554a:
jr_003_554a:
    ld a, b
    ld [$d11d], a

jr_003_554e:
    ld c, $14
    call Call_000_372f
    ld a, $c1
    ld [$d07b], a
    xor a
    ldh [$f3], a
    ld [$cc5b], a
    ld [$d05a], a
    ld a, [$cf91]
    push af
    ld a, [$cf90]
    push af
    ld a, $08
    call Call_000_3eb4
    pop af
    ld [$cf90], a
    pop af
    ld [$cf91], a
    ld a, [$d11d]
    cp $10
    ld hl, $5697
    jp z, Jump_003_5681

    cp $20
    ld hl, $569c
    jp z, Jump_003_5681

    cp $61
    ld hl, $56a1
    jp z, Jump_003_5681

    cp $62
    ld hl, $56a6
    jp z, Jump_003_5681

    cp $63
    ld hl, $56ab
    jp z, Jump_003_5681

    ld hl, $cfe5
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    inc hl
    ld a, [hl]
    push af
    push hl
    ld hl, $d068
    bit 3, [hl]
    jr z, jr_003_55ba

    ld a, $4c
    ld [$cfd7], a
    jr jr_003_55c7

jr_003_55ba:
    set 3, [hl]
    ld hl, $cceb
    ld a, [$cff0]
    ld [hl+], a
    ld a, [$cff1]
    ld [hl], a

jr_003_55c7:
    ld a, [$cf90]
    push af
    ld a, [$cfd7]
    ld [$cf90], a
    ld a, [$cff2]
    ld [$d126], a
    ld hl, $6c87
    ld b, $0f
    call Call_000_3e84
    pop af
    ld [$cf90], a
    pop hl
    pop af
    ld [hl-], a
    dec hl
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    ld a, [$cfe4]
    ld [$d11b], a
    ld [$cf90], a
    ld [$d11d], a
    ld a, [$d059]
    cp $01
    jp z, Jump_003_567e

    cp $04
    jr z, jr_003_567e

    ld hl, $56b0
    call Call_000_3c36
    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $02
    ld hl, $d2f6
    ld a, $10
    call Call_000_3eb4
    ld a, c
    push af
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $01
    ld a, $10
    call Call_000_3eb4
    pop af
    and a
    jr nz, jr_003_5643

    ld hl, $56c1
    call Call_000_3c36
    call Call_000_0082
    ld a, [$cfe4]
    ld [$d11d], a
    ld a, $3d
    call Call_000_3eb4

jr_003_5643:
    ld a, $01
    ld [$d49b], a
    ld a, $85
    ld [$d470], a
    ld a, [$d162]
    cp $06
    jr z, jr_003_5666

    xor a
    ld [$cc49], a
    call Call_000_0082
    ld hl, $5696
    call Call_000_3c36
    call Call_000_391c
    jr jr_003_5687

jr_003_5666:
    call Call_000_0082
    call Call_003_66e8
    ld hl, $56b7
    ld a, [$d7f0]
    bit 0, a
    jr nz, jr_003_5679

    ld hl, $56bc

jr_003_5679:
    call Call_000_3c36
    jr jr_003_5687

Jump_003_567e:
jr_003_567e:
    ld hl, $56b0

Jump_003_5681:
    call Call_000_3c36
    call Call_000_0082

jr_003_5687:
    ld a, [$d059]
    and a
    ret nz

    ld hl, $d31c
    inc a
    ld [$cf95], a
    jp Jump_000_2abd


    ld d, b
    rla
    reti


    ld l, c
    dec l
    ld d, b
    rla
    rrca
    ld l, d
    dec l
    ld d, b
    rla
    dec h
    ld l, d
    dec l
    ld d, b
    rla
    ld b, c
    ld l, d
    dec l
    ld d, b
    rla
    ld h, d
    ld l, d
    dec l
    ld d, b
    rla
    ld a, a
    ld l, d
    dec l
    ld [de], a
    ld b, $50
    rla
    sbc [hl]
    ld l, d
    dec l
    ld d, b
    rla
    ret nz

    ld l, d
    dec l
    ld d, b
    rla
    push hl
    ld l, d
    dec l
    inc de
    ld b, $50
    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

    ld b, $1c
    ld hl, $4eb4
    jp Jump_000_3e84


    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

    ld a, [$d6ff]
    ld [$d119], a
    cp $02
    jp z, Jump_003_64b5

    dec a
    jr nz, jr_003_5701

    call Call_003_6842
    xor a
    ld [$d6ff], a
    ld a, $00
    ld [$d430], a
    call Call_000_216b
    ld hl, $6540
    jp Jump_000_3c36


jr_003_5701:
    call Call_000_0805
    jp nc, Jump_003_64eb

    call Call_003_6842
    xor a
    ldh [$b4], a
    ld a, $01
    ld [$d6ff], a
    call Call_000_216b
    xor a
    ld [$d6ff], a
    ld hl, $6536
    call Call_000_3c36
    ld a, $01
    ld [$d6ff], a
    ret


    ld a, [$d6ff]
    ld [$d119], a
    cp $02
    jr z, jr_003_5754

    call Call_003_6808
    jp nc, Jump_003_64f5

    ld hl, $0afc
    call Call_000_0aa6
    jp c, Jump_003_64f5

    call Call_003_579d
    ld hl, $d72f
    set 7, [hl]
    ld a, $02
    ld [$d6ff], a
    call Call_000_216b
    ld hl, $57c1
    jp Jump_000_3c36


jr_003_5754:
    xor a
    ldh [$8c], a
    ld d, $10
    call Call_000_0985
    res 7, [hl]
    ldh a, [$8c]
    and a
    jr nz, jr_003_5774

    ld hl, $0afc
    call Call_000_0aa6
    jr c, jr_003_5774

    ld a, [$cfc5]
    ld c, a
    call Call_000_15c3
    jr nc, jr_003_577a

jr_003_5774:
    ld hl, $57c6
    jp Jump_000_3c36


jr_003_577a:
    call Call_003_579d
    ld a, $03
    ld [$d430], a
    ld hl, $d42f
    set 5, [hl]
    ld hl, $d72f
    set 7, [hl]
    xor a
    ld [$d6ff], a
    dec a
    ld [$cd6b], a
    call Call_000_216b
    call Call_000_3dd8
    jp Jump_000_0d5e


Call_003_579d:
    ld a, [$d529]
    bit 3, a
    ld b, $40
    jr nz, jr_003_57b4

    bit 2, a
    ld b, $80
    jr nz, jr_003_57b4

    bit 1, a
    ld b, $20
    jr nz, jr_003_57b4

    ld b, $10

jr_003_57b4:
    ld a, b
    ld [$ccd3], a
    xor a
    ld [$cd39], a
    inc a
    ld [$cd38], a
    ret


    rla
    ld c, $6b
    dec l
    ld d, b
    rla
    rra
    ld l, e
    dec l
    ld d, b
    ld a, $29
    jp Jump_000_3eb4


    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

    ld a, [$cf91]
    push af
    ld a, [$cf90]
    ld [$d155], a
    push af
    ld a, $05
    ld [$d07c], a
    ld a, $ff
    ld [$cfca], a
    call Call_000_11c8
    ld a, [$cf90]
    ld [$cf97], a
    pop bc
    jr c, jr_003_5857

    ld a, b
    ld [$cf90], a
    call Call_003_585d
    jr nc, jr_003_5854

    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_003_5830

    ld e, $1b
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    ld hl, $58a2
    call Call_000_3c36
    ld a, $04
    ld [$d49b], a
    ld a, $82
    ld [$d470], a
    jr jr_003_5857

jr_003_5830:
    ld a, $8e
    call Call_000_3736
    call Call_000_373e
    ld a, $01
    ld [$ccd4], a
    ld hl, $6db8
    ld b, $0e
    call Call_000_3e84
    pop af
    ld [$cf91], a
    ld hl, $d31c
    ld a, $01
    ld [$cf95], a
    jp Jump_000_2abd


jr_003_5854:
    call Call_003_64b0

jr_003_5857:
    xor a
    ld [$cd6a], a
    pop af
    ret


Call_003_585d:
    ld hl, $71e5
    ld a, [$cf97]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld de, $cd6d
    ld a, $0e
    ld bc, $0002
    call Call_000_009d
    ld hl, $cd6d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cd6d
    ld a, $0e
    ld bc, $000d
    call Call_000_009d
    ld hl, $cd6d

jr_003_5888:
    ld a, [hl+]
    and a
    jr z, jr_003_58a0

    inc hl
    inc hl
    cp $02
    jr nz, jr_003_5888

    dec hl
    dec hl
    ld b, [hl]
    ld a, [$cf90]
    inc hl
    inc hl
    inc hl
    cp b
    jr nz, jr_003_5888

    scf
    ret


jr_003_58a0:
    and a
    ret


    rla
    inc a
    ld l, e
    dec l
    ld d, b
    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

jr_003_58ae:
    ld a, [$d162]
    and a
    jp z, Jump_003_64bf

    ld a, [$cf91]
    push af
    ld a, [$cf90]
    push af
    ld a, $01
    ld [$d07c], a
    ld a, $ff
    ld [$cfca], a
    ld a, [$d151]
    and a
    jr z, jr_003_58d2

    call Call_000_11dd
    jr jr_003_58d5

jr_003_58d2:
    call Call_000_11c8

jr_003_58d5:
    jp c, Jump_003_5be1

    ld hl, $d16a
    ld bc, $002c
    ld a, [$cf91]
    call Call_000_3a74
    ld a, [$cf91]
    ld [$cf06], a
    ld d, a
    ld a, [$cf90]
    ld e, a
    ld [$d0b4], a
    pop af
    push af
    cp $28
    jr nc, jr_003_5906

    push hl
    push de
    ld hl, $430a
    ld b, $3d
    ld d, $02
    call Call_000_3e84
    pop de
    pop hl

jr_003_5906:
    pop af
    ld [$cf90], a
    pop af
    ld [$cf91], a
    ld a, [$d151]
    and a
    jr z, jr_003_591a

    ld a, [$cf91]
    cp d
    jr z, jr_003_58ae

jr_003_591a:
    ld a, [$cf90]
    cp $35
    jr nc, jr_003_598d

    cp $34
    jr z, jr_003_592e

    cp $23
    jp nc, Jump_003_5bfa

    cp $10
    jr nc, jr_003_598d

Jump_003_592e:
jr_003_592e:
    ld bc, $0004
    add hl, bc
    ld a, [$cf90]
    ld bc, $f008
    cp $0b
    jr z, jr_003_595b

    ld bc, $f110
    cp $0c
    jr z, jr_003_595b

    ld bc, $f220
    cp $0d
    jr z, jr_003_595b

    ld bc, $f307
    cp $0e
    jr z, jr_003_595b

    ld bc, $f440
    cp $0f
    jr z, jr_003_595b

    ld bc, $f6ff

jr_003_595b:
    ld a, [hl]
    and c
    jp z, Jump_003_5b73

    xor a
    ld [hl], a
    ld a, b
    ld [$d07c], a
    ld a, [$cc2f]
    cp d
    jp nz, Jump_003_5b79

    xor a
    ld [$d017], a
    push hl
    ld hl, $d063
    res 0, [hl]
    pop hl
    ld bc, $001e
    add hl, bc
    ld de, $d022
    ld bc, $000a
    call Call_000_00b1
    ld a, $28
    call Call_000_3eb4
    jp Jump_003_5b79


jr_003_598d:
    inc hl
    ld a, [hl+]
    ld b, a
    ld [$ceec], a
    ld a, [hl]
    ld c, a
    ld [$ceeb], a
    or b
    jr nz, jr_003_59f3

    ld a, [$cf90]
    cp $35
    jr z, jr_003_59a9

    cp $36
    jr z, jr_003_59a9

    jp Jump_003_5b73


jr_003_59a9:
    ld a, [$cf91]
    push af
    ld a, [$cf06]
    ld [$cf91], a
    push hl
    push de
    push bc
    ld hl, $7d6a
    ld b, $0b
    call Call_000_3e84
    pop bc
    pop de
    pop hl
    pop af
    ld [$cf91], a
    ld a, [$d056]
    and a
    jr z, jr_003_5a00

    push hl
    push de
    push bc
    ld a, [$cf06]
    ld c, a
    ld hl, $ccf5
    ld b, $02
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    jr z, jr_003_59ee

    ld a, [$cf06]
    ld c, a
    ld hl, $d057
    ld b, $01
    ld a, $10
    call Call_000_3eb4

jr_003_59ee:
    pop bc
    pop de
    pop hl
    jr jr_003_5a00

jr_003_59f3:
    ld a, [$cf90]
    cp $35
    jp z, Jump_003_5b73

    cp $36
    jp z, Jump_003_5b73

jr_003_5a00:
    push hl
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    ld a, [hl+]
    cp b
    jr nz, jr_003_5a0d

    ld a, [hl]
    cp c

jr_003_5a0d:
    pop hl
    jr nz, jr_003_5a2a

    ld a, [$cf90]
    cp $10
    jp nz, Jump_003_5b73

    inc hl
    inc hl
    ld a, [hl-]
    and a
    jp z, Jump_003_5b73

    ld a, $34
    ld [$cf90], a
    dec hl
    dec hl
    dec hl
    jp Jump_003_592e


jr_003_5a2a:
    xor a
    ld [$d082], a
    ld [$c02a], a
    push hl
    push de
    ld bc, $0020
    add hl, bc
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    ld a, [$d151]
    and a
    jp z, Jump_003_5ac5

    ld hl, $cee9
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    ld a, [hl]
    push af
    ld hl, $d18c
    ld a, [$cf91]
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl+]
    ld [$ceea], a
    ldh [$95], a
    ld a, [hl]
    ld [$cee9], a
    ldh [$96], a
    ld a, $05
    ldh [$99], a
    ld b, $02
    call Call_000_38b2
    ld bc, $ffdf
    add hl, bc
    ldh a, [$98]
    push af
    ld b, a
    ld a, [hl]
    ld [$ceeb], a
    sub b
    ld [hl-], a
    ld [$ceed], a
    ldh a, [$97]
    ld b, a
    ld a, [hl]
    ld [$ceec], a
    sbc b
    ld [hl], a
    ld [$ceee], a
    ld hl, $c3b8
    ld a, [$cf91]
    ld bc, $0028
    call Call_000_3a74
    ld a, $8d
    call Call_000_3736
    ldh a, [$fa]
    set 0, a
    ldh [$fa], a
    ld a, $02
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4
    ldh a, [$fa]
    res 0, a
    ldh [$fa], a
    pop af
    ld b, a
    ld hl, $ceec
    pop af
    ld [hl-], a
    pop af
    ld [hl-], a
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    jr jr_003_5ae4

Jump_003_5ac5:
    ld a, [$cf90]
    cp $3d
    ld b, $3c
    jr z, jr_003_5ae4

    ld b, $50
    jr nc, jr_003_5ae4

    cp $3c
    ld b, $32
    jr z, jr_003_5ae4

    cp $13
    ld b, $c8
    jr c, jr_003_5ae4

    ld b, $32
    jr z, jr_003_5ae4

    ld b, $14

jr_003_5ae4:
    pop de
    pop hl
    ld a, [hl]
    add b
    ld [hl-], a
    ld [$ceed], a
    ld a, [hl]
    ld [$ceee], a
    jr nc, jr_003_5af7

    inc [hl]
    ld a, [hl]
    ld [$ceee], a

jr_003_5af7:
    push de
    inc hl
    ld d, h
    ld e, l
    ld hl, $0021
    add hl, de
    ld a, [$cf90]
    cp $35
    jr z, jr_003_5b1d

    ld a, [hl-]
    ld b, a
    ld a, [de]
    sub b
    dec de
    ld b, [hl]
    ld a, [de]
    sbc b
    jr nc, jr_003_5b31

    ld a, [$cf90]
    cp $12
    jr c, jr_003_5b31

    cp $36
    jr z, jr_003_5b31

    jr jr_003_5b4a

jr_003_5b1d:
    dec hl
    dec de
    ld a, [hl+]
    srl a
    ld [de], a
    ld [$ceee], a
    ld a, [hl]
    rr a
    inc de
    ld [de], a
    ld [$ceed], a
    dec de
    jr jr_003_5b3d

jr_003_5b31:
    ld a, [hl+]
    ld [de], a
    ld [$ceee], a
    inc de
    ld a, [hl]
    ld [de], a
    ld [$ceed], a
    dec de

jr_003_5b3d:
    ld a, [$cf90]
    cp $10
    jr nz, jr_003_5b4a

    ld bc, $ffe1
    add hl, bc
    xor a
    ld [hl], a

jr_003_5b4a:
    ld h, d
    ld l, e
    pop de
    ld a, [$cc2f]
    cp d
    jr nz, jr_003_5b66

    ld a, [hl+]
    ld [$d014], a
    ld a, [hl-]
    ld [$d015], a
    ld a, [$cf90]
    cp $10
    jr nz, jr_003_5b66

    xor a
    ld [$d017], a

jr_003_5b66:
    ld hl, $c390
    ld bc, $0028
    inc d

jr_003_5b6d:
    add hl, bc
    dec d
    jr nz, jr_003_5b6d

    jr jr_003_5b79

Jump_003_5b73:
    call Call_003_64b0
    jp Jump_003_5be7


Jump_003_5b79:
jr_003_5b79:
    ld a, [$d151]
    and a
    jr nz, jr_003_5b84

    push hl
    call Call_003_64a5
    pop hl

jr_003_5b84:
    ld a, [$cf90]
    cp $10
    jr c, jr_003_5bc1

    cp $34
    jr z, jr_003_5bc1

    ld a, $8d
    call Call_000_3736
    ldh a, [$fa]
    set 0, a
    ldh [$fa], a
    ld a, $02
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4
    ldh a, [$fa]
    res 0, a
    ldh [$fa], a
    ld a, $f7
    ld [$d07c], a
    ld a, [$cf90]
    cp $35
    jr z, jr_003_5bc6

    cp $36
    jr z, jr_003_5bc6

    ld a, $f5
    ld [$d07c], a
    jr jr_003_5bc6

jr_003_5bc1:
    ld a, $8e
    call Call_000_3736

jr_003_5bc6:
    xor a
    ldh [$ba], a
    call Call_000_16dd
    dec a
    ld [$cfca], a
    call Call_000_12d6
    ld a, $01
    ldh [$ba], a
    ld c, $32
    call Call_000_372f
    call Call_000_3852
    jr jr_003_5be7

Jump_003_5be1:
    xor a
    ld [$cd6a], a
    pop af
    pop af

Jump_003_5be7:
jr_003_5be7:
    ld a, [$d151]
    and a
    ret nz

    call Call_000_3df2
    call z, Call_000_3e03
    ld a, [$d056]
    and a
    ret nz

    jp Jump_000_2f66


Jump_003_5bfa:
    push hl
    ld a, [hl]
    ld [$d0b4], a
    ld [$d11d], a
    ld bc, $0021
    add hl, bc
    ld a, [hl]
    ld [$d126], a
    call Call_000_132f
    push de
    ld a, d
    ld hl, $d2b4
    call Call_000_139a
    pop de
    pop hl
    ld a, [$cf90]
    cp $28
    jp z, Jump_003_5c83

    push hl
    sub $23
    add a
    ld bc, $0011
    add hl, bc
    add l
    ld l, a
    jr nc, jr_003_5c2c

    inc h

jr_003_5c2c:
    ld a, $0a
    ld b, a
    ld a, [hl]
    cp $64
    jr nc, jr_003_5c6a

    add b
    jr nc, jr_003_5c39

    ld a, $ff

jr_003_5c39:
    ld [hl], a
    pop hl
    call Call_003_5c74
    ld hl, $5d4e
    ld a, [$cf90]
    sub $22
    ld c, a

jr_003_5c47:
    dec c
    jr z, jr_003_5c53

jr_003_5c4a:
    ld a, [hl+]
    ld b, a
    ld a, $50
    cp b
    jr nz, jr_003_5c4a

    jr jr_003_5c47

jr_003_5c53:
    ld de, $cf4a
    ld bc, $000a
    call Call_000_00b1
    ld a, $8e
    call Call_000_2238
    ld hl, $5d44
    call Call_000_3c36
    jp Jump_003_64a5


jr_003_5c6a:
    pop hl
    ld hl, $5d49
    call Call_000_3c36
    jp Jump_000_3df2


Call_003_5c74:
    ld bc, $0022
    add hl, bc
    ld d, h
    ld e, l
    ld bc, $ffee
    add hl, bc
    ld b, $01
    jp Jump_000_392b


Jump_003_5c83:
    push hl
    ld bc, $0021
    add hl, bc
    ld a, [hl]
    cp $64
    jr z, jr_003_5c6a

    inc a
    ld [hl], a
    ld [$d126], a
    push hl
    push de
    ld d, a
    ld hl, $4dc0
    ld b, $16
    call Call_000_3e84
    pop de
    pop hl
    ld bc, $ffed
    add hl, bc
    ldh a, [$96]
    ld [hl+], a
    ldh a, [$97]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    pop hl
    ld a, [$cf91]
    push af
    ld a, [$cf90]
    push af
    push de
    push hl
    ld bc, $0022
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    pop hl
    push bc
    push hl
    call Call_003_5c74
    pop hl
    ld bc, $0023
    add hl, bc
    pop bc
    ld a, [hl-]
    sub c
    ld c, a
    ld a, [hl]
    sbc b
    ld b, a
    ld de, $ffe0
    add hl, de
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, $f8
    ld [$d07c], a
    call Call_000_12d6
    pop de
    ld a, d
    ld [$cf91], a
    ld a, e
    ld [$d11d], a
    xor a
    ld [$cc49], a
    call Call_000_1132
    ld d, $01
    ld hl, $568a
    ld b, $04
    call Call_000_3e84
    call Call_000_3852
    xor a
    ld [$cc49], a
    ld a, $1a
    call Call_000_3eb4
    xor a
    ld [$ccd4], a
    ld hl, $430a
    ld b, $3d
    ld d, $01
    call Call_000_3e84
    ld a, [$cf91]
    push af
    ld a, [$cf06]
    ld [$cf91], a
    ld hl, $7d6a
    ld b, $0b
    call Call_000_3e84
    pop af
    ld [$cf91], a
    ld hl, $6db8
    ld b, $0e
    call Call_000_3e84
    ld a, $01
    ld [$cfca], a
    pop af
    ld [$cf90], a
    pop af
    ld [$cf91], a
    jp Jump_003_64a5


    rla
    ld c, [hl]
    ld l, e
    dec l
    ld d, b
    rla
    ld h, b
    ld l, e
    dec l
    ld d, b
    add a
    add h
    add b
    adc e
    sub e
    add a
    ld d, b
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
    ld hl, $5dc5
    call Call_000_3c36
    ld hl, $d006
    srl [hl]
    ld a, $ca
    ld hl, $cce9
    ld de, $cce8
    jr jr_003_5d9f

    ld hl, $5dca
    call Call_000_3c36
    ld hl, $d006
    ld a, [hl]
    add a
    jr nc, jr_003_5d96

    ld a, $ff

jr_003_5d96:
    ld [hl], a
    ld a, $c9
    ld hl, $cce8
    ld de, $cce9

jr_003_5d9f:
    ld [$d07b], a
    xor a
    ld [$cc5b], a
    ldh [$f3], a
    ld [de], a

jr_003_5da9:
    call Call_000_3e6d
    and $07
    cp $05
    jr nc, jr_003_5da9

    inc a
    ld b, a
    ld a, [hl]
    add b
    jr nc, jr_003_5dba

    ld a, $ff

jr_003_5dba:
    ld [hl], a
    ld a, $08
    call Call_000_3eb4
    ld c, $46
    jp Jump_000_372f


    rla
    ld a, d
    ld l, e
    dec l
    ld d, b
    rla
    adc [hl]
    ld l, e
    dec l
    ld d, b
    ld a, [$d056]
    and a
    jr nz, jr_003_5e25

    ld a, [$d35d]
    cp $f7
    jr z, jr_003_5e25

    cp $58
    jr z, jr_003_5e25

    cp $5a
    jr z, jr_003_5e25

    ld a, [$d366]
    ld b, a
    ld hl, $5e28

jr_003_5deb:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_5e25

    cp b
    jr nz, jr_003_5deb

    ld hl, $d731
    set 3, [hl]
    set 6, [hl]
    call Call_000_1510
    ld hl, $d72d
    res 4, [hl]
    ld hl, $d78f
    res 7, [hl]
    xor a
    ld [$da46], a
    ld [$d61e], a
    inc a
    ld [$d077], a
    ld [$cd6a], a
    ld a, [$d151]
    and a
    ret nz

    call Call_003_6842
    ld c, $1e
    call Call_000_372f
    jp Jump_003_64a5


jr_003_5e25:
    jp Jump_003_64b5


    inc bc
    rrca
    ld de, $1016
    rst $38
    ld b, $64

Jump_003_5e30:
    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

    ld a, b
    ld [$d0da], a
    jp Jump_003_6497


    ld a, [$d056]
    and a
    jp z, Jump_003_64b5

    ld hl, $d062
    set 0, [hl]
    ld hl, $430a
    ld b, $3d
    ld d, $03
    call Call_000_3e84
    jp Jump_003_6497


    xor a
    ld [$d71e], a
    call Call_003_42d1
    ld a, [$42d1]
    cp $18
    jr nz, jr_003_5e6a

    ld hl, $5ea7
    jr jr_003_5e7b

jr_003_5e6a:
    cp $24
    jr nz, jr_003_5e73

    ld hl, $5ed0
    jr jr_003_5e7b

jr_003_5e73:
    cp $5e
    jp nz, Jump_003_64b5

    ld hl, $5ef9

jr_003_5e7b:
    ld a, [$d35d]
    ld b, a

jr_003_5e7f:
    ld a, [hl+]
    cp $ff
    jp z, Jump_003_64b5

    cp b
    jr nz, jr_003_5e96

    ld a, [hl+]
    cp d
    jr nz, jr_003_5e97

    ld a, [hl+]
    cp e
    jr nz, jr_003_5e98

    ld a, [hl]
    ld [$d71e], a
    jr jr_003_5e9b

jr_003_5e96:
    inc hl

jr_003_5e97:
    inc hl

jr_003_5e98:
    inc hl
    jr jr_003_5e7f

jr_003_5e9b:
    ld hl, $652c
    call Call_000_3c36
    ld hl, $d727
    set 7, [hl]
    ret


    rst $08
    inc b
    inc b
    nop
    rst $08
    inc b
    dec b
    ld bc, $0cd1
    inc b
    ld [bc], a
    pop de
    inc c
    dec b
    inc bc
    call nc, $0a06
    inc b
    call nc, Call_000_0b06
    dec b
    jp hl


    inc b
    ld [de], a
    ld b, $e9
    inc b
    inc de
    rlca
    ld [$0a08], a
    ld [$08ea], sp
    dec bc
    add hl, bc
    rst $38
    ret nc

    ld [$0a09], sp
    ret nc

    add hl, bc
    add hl, bc
    dec bc
    jp nc, $0704

    inc c
    jp nc, Jump_000_0705

    dec c
    db $d3
    inc c
    dec b
    ld c, $d3
    dec c
    dec b
    rrca
    push de
    ld [$1007], sp
    push de
    add hl, bc
    rlca
    ld de, $08e9
    inc bc
    ld [de], a
    jp hl


    add hl, bc
    inc bc
    inc de
    rst $38
    db $eb
    ld [$1409], sp
    db $eb
    add hl, bc
    add hl, bc
    dec d
    rst $38
    ld a, [$d056]
    dec a
    jp nz, Jump_003_64b5

    ld a, $01
    ld [$d077], a
    jp Jump_003_6497


    ld a, [$d056]
    and a
    jp z, Jump_003_64b5

    ld a, [$cf91]
    push af
    ld a, [$cc2f]
    ld [$cf91], a
    ld hl, $430a
    ld b, $3d
    ld d, $03
    call Call_000_3e84
    pop af
    ld [$cf91], a
    ld hl, $d062
    set 1, [hl]
    jp Jump_003_6497


    ld b, $c8
    jp Jump_003_5e30


    ld b, $fa
    jp Jump_003_5e30


    ld a, [$d056]
    and a
    jp z, Jump_003_64b5

    ld a, [$cf91]
    push af
    ld a, [$cc2f]
    ld [$cf91], a
    ld hl, $430a
    ld b, $3d
    ld d, $03
    call Call_000_3e84
    pop af
    ld [$cf91], a
    ld hl, $d062
    set 2, [hl]
    jp Jump_003_6497


    ld a, [$d056]
    and a
    jr nz, jr_003_5f78

    call Call_003_64b5
    ld a, $02
    ld [$cd6a], a
    ret


jr_003_5f78:
    ld hl, $cfd1
    ld a, [hl+]
    push af
    ld a, [hl]
    push af
    push hl
    ld a, [$cf90]
    sub $37
    ld [hl], a
    call Call_003_6497
    ld a, $ae
    ld [$cfd1], a
    call Call_000_371b
    call Call_000_3ddb
    xor a
    ldh [$f3], a
    ld b, $0f
    ld hl, $73de
    call Call_000_3e84
    ld a, [$cf91]
    push af
    ld a, [$cc2f]
    ld [$cf91], a
    ld hl, $430a
    ld b, $3d
    ld d, $03
    call Call_000_3e84
    pop af
    ld [$cf91], a
    pop hl
    pop af
    ld [hl-], a
    pop af
    ld [hl], a
    ret


    ld a, [$d056]
    and a
    jr nz, jr_003_6034

    call Call_003_6842
    ld a, [$d35d]
    cp $17
    jr nz, jr_003_5fe8

    ld a, [$d7d7]
    bit 7, a
    jr nz, jr_003_602e

    ld hl, $60ac
    call Call_000_34bc
    jr nc, jr_003_602e

    ld hl, $60c4
    call Call_000_3c36
    ld hl, $d7d7
    set 6, [hl]
    ret


jr_003_5fe8:
    cp $1b
    jr nz, jr_003_6007

    ld a, [$d7df]
    bit 1, a
    jr nz, jr_003_602e

    ld hl, $60b5
    call Call_000_34bc
    jr nc, jr_003_602e

    ld hl, $60c4
    call Call_000_3c36
    ld hl, $d7df
    set 0, [hl]
    ret


jr_003_6007:
    cp $3a
    jr nz, jr_003_602e

    call Call_000_154a
    jr z, jr_003_602e

    ld hl, $4b01
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_003_602e

    ld hl, $60c4
    call Call_000_3c36
    call Call_003_6842
    ld e, $1a
    ld hl, $5001
    ld b, $3f
    call Call_000_3e84
    ret


jr_003_602e:
    ld hl, $60ba
    jp Jump_000_3c36


jr_003_6034:
    xor a
    ld [$cd3d], a
    ld b, $f8
    ld hl, $d16e
    call Call_003_6094
    ld a, [$d056]
    dec a
    jr z, jr_003_604c

    ld hl, $d8a7
    call Call_003_6094

jr_003_604c:
    ld hl, $d017
    ld a, [hl]
    and b
    ld [hl], a
    ld hl, $cfe8
    ld a, [hl]
    ld c, a
    and b
    ld [hl], a
    ld a, c
    and $07
    jr z, jr_003_6063

    ld a, $01
    ld [$cd3d], a

jr_003_6063:
    call Call_000_36f8
    ld a, [$cd3d]
    and a
    ld hl, $60ba
    jp z, Jump_000_3c36

    ld hl, $60c4
    call Call_000_3c36
    ld a, [$d082]
    and $80
    jr nz, jr_003_608e

    call Call_000_373e
    ld b, $08
    ld hl, $59cf
    call Call_000_3e84

jr_003_6088:
    ld a, [$c02c]
    and a
    jr nz, jr_003_6088

jr_003_608e:
    ld hl, $60bf
    jp Jump_000_3c36


Call_003_6094:
    ld de, $002c
    ld c, $06

jr_003_6099:
    ld a, [hl]
    push af
    and $07
    jr z, jr_003_60a4

    ld a, $01
    ld [$cd3d], a

jr_003_60a4:
    pop af
    and b
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_003_6099

    ret


    ld a, $09
    dec a
    ld a, [bc]
    ccf
    ld a, [bc]
    ld a, $0b
    rst $38
    ld a, [bc]
    dec de
    ld a, [bc]
    add hl, de
    rst $38
    rla
    sbc a
    ld l, e
    dec l
    ld d, b
    rla
    adc $6b
    dec l
    ld d, b
    rla
    ld [$2d6b], a
    ld b, $08
    ld a, [$d056]
    and a
    jr nz, jr_003_60e4

    call Call_000_2233
    ld a, $b8
    ld c, $02
    call Call_000_2211

jr_003_60da:
    ld a, [$c028]
    cp $b8
    jr z, jr_003_60da

    call Call_000_216b

jr_003_60e4:
    jp Jump_000_23d2


    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

    ld hl, $60f4
    jp Jump_000_3c36


    rla
    ld [bc], a
    ld l, h
    dec l
    ld d, b
    call Call_003_6182
    jp c, Jump_003_64b5

    ld bc, $0585
    ld a, $01
    jr jr_003_615b

    call Call_003_6182
    jp c, Jump_003_64b5

jr_003_610c:
    call Call_000_3e6d
    srl a
    jr c, jr_003_6125

    and $03
    cp $02
    jr nc, jr_003_610c

    ld hl, $612c
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    inc hl
    ld c, [hl]
    and a

jr_003_6125:
    ld a, $00
    rla
    xor $01
    jr jr_003_615b

    ld a, [bc]
    sbc l
    ld a, [bc]
    ld b, a
    call Call_003_6182
    jp c, Jump_003_64b5

    ld hl, $5ea4
    ld b, $3d
    call Call_000_3e84
    ld c, e
    ld b, d
    ld a, $02
    ld [$cd3d], a
    ld a, c
    and a
    jr z, jr_003_616e

    ld a, $01
    ld [$cd3d], a
    call Call_000_3e6d
    and $01
    jr nz, jr_003_615b

    xor a
    ld [$cd3d], a
    jr jr_003_616e

jr_003_615b:
    ld [$cd3d], a
    dec a
    jr nz, jr_003_616e

    ld a, $01
    ld [$d05e], a
    ld a, b
    ld [$d126], a
    ld a, c
    ld [$d058], a

jr_003_616e:
    ld hl, $d6ff
    ld a, [hl]
    push af
    push hl
    ld [hl], $00
    ld b, $1c
    ld hl, $4816
    call Call_000_3e84
    pop hl
    pop af
    ld [hl], a
    ret


Call_003_6182:
    ld a, [$d056]
    and a
    jr z, jr_003_618a

    scf
    ret


jr_003_618a:
    call Call_003_6808
    jr nc, jr_003_61b5

    ld a, [$d6ff]
    cp $02
    jr z, jr_003_61b5

    call Call_003_6842
    ld hl, $652c
    call Call_000_3c36
    ld a, $8e
    call Call_000_2238
    ld a, $02
    ld [$d49b], a
    ld a, $81
    ld [$d470], a
    ld c, $50
    call Call_000_372f
    and a
    ret


jr_003_61b5:
    scf
    ret


    jp Jump_003_64ba


    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

    call Call_003_6842
    ld b, $1d
    ld hl, $405c
    call Call_000_3e84
    ld hl, $61eb
    jr nc, jr_003_61e3

    ld c, $04

jr_003_61d3:
    ld a, $9e
    call Call_000_3736
    ld a, $b2
    call Call_000_3736
    dec c
    jr nz, jr_003_61d3

    ld hl, $61e6

jr_003_61e3:
    jp Jump_000_3c36


    rla
    ld de, $2d6c
    ld d, b
    rla
    ld b, e
    ld l, h
    dec l
    ld d, b
    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

    ld a, [$cf91]
    push af
    ld a, [$cf90]
    ld [$cd3d], a

jr_003_6201:
    xor a
    ld [$cfca], a
    ld a, $01
    ld [$d07c], a
    call Call_000_11c8
    jr nc, jr_003_6212

    jp Jump_003_634c


jr_003_6212:
    ld a, [$d056]
    and a
    jr z, jr_003_622f

    ld a, [$cf91]
    ld b, a
    ld a, [$cc2f]
    cp b
    jr nz, jr_003_622f

    ld a, [$d063]
    bit 3, a
    jr z, jr_003_622f

    call Call_003_64b5
    jp Jump_003_634c


jr_003_622f:
    ld a, [$cd3d]
    cp $52
    jp nc, Jump_003_6316

    ld a, $02
    ld [$ccdb], a
    ld hl, $6358
    ld a, [$cd3d]
    cp $50
    jr c, jr_003_6249

    ld hl, $635d

jr_003_6249:
    call Call_000_3c36
    xor a
    ld [$cc2e], a
    ld hl, $5320
    ld b, $0f
    call Call_000_3e84
    ld a, $00
    ld [$cc2e], a
    jr nz, jr_003_6201

    ld hl, $d172
    ld bc, $002c
    call Call_003_6627
    push hl
    ld a, [hl]
    ld [$d11d], a
    call Call_000_2f4d
    call Call_000_3813
    pop hl
    ld a, [$cd3d]
    cp $50
    jr nc, jr_003_62d9

    ld bc, $0015
    add hl, bc
    ld a, [hl]
    cp $c0
    jr c, jr_003_628c

    ld hl, $6362
    call Call_000_3c36
    jr jr_003_6212

jr_003_628c:
    ld a, [hl]
    add $40
    ld [hl], a
    ld a, $01
    ld [$d11d], a
    call Call_003_654a
    ld a, $8e
    call Call_000_2238
    ld hl, $6367
    call Call_000_3c36

jr_003_62a3:
    pop af
    ld [$cf91], a
    call Call_000_3df2
    call Call_000_3e03
    jp Jump_003_64a5


Jump_003_62b0:
jr_003_62b0:
    ld a, [$cf91]
    ld b, a
    ld a, [$cc2f]
    cp b
    jr nz, jr_003_62cc

    ld hl, $d187
    ld bc, $002c
    call Call_000_3a74
    ld de, $d02c
    ld bc, $0004
    call Call_000_00b1

jr_003_62cc:
    ld a, $8e
    call Call_000_2238
    ld hl, $636c
    call Call_000_3c36
    jr jr_003_62a3

jr_003_62d9:
    call Call_003_62e1
    jr nz, jr_003_62b0

    jp Jump_003_6349


Call_003_62e1:
    xor a
    ld [$cc49], a
    call Call_003_65bb
    ld hl, $d172
    ld bc, $002c
    call Call_003_6627
    ld bc, $0015
    add hl, bc
    ld a, [$d11d]
    ld b, a
    ld a, [$cd3d]
    cp $51
    jr z, jr_003_6311

    ld a, [hl]
    and $3f
    cp b
    ret z

    add $0a
    cp b
    jr nc, jr_003_630b

    ld b, a

jr_003_630b:
    ld a, [hl]
    and $c0
    add b
    ld [hl], a
    ret


jr_003_6311:
    ld a, [hl]
    cp b
    ret z

    jr jr_003_630b

Jump_003_6316:
    ld hl, $cd3d
    dec [hl]
    dec [hl]
    xor a
    ld hl, $cc26
    ld [hl+], a
    ld [hl], a
    ld b, $04

jr_003_6323:
    push bc
    ld hl, $d172
    ld bc, $002c
    call Call_003_6627
    ld a, [hl]
    and a
    jr z, jr_003_633a

    call Call_003_62e1
    jr z, jr_003_633a

    ld hl, $cc27
    inc [hl]

jr_003_633a:
    ld hl, $cc26
    inc [hl]
    pop bc
    dec b
    jr nz, jr_003_6323

    ld a, [$cc27]
    and a
    jp nz, Jump_003_62b0

Jump_003_6349:
    call Call_003_64b0

Jump_003_634c:
    call Call_000_3df2
    call Call_000_3e03
    pop af
    xor a
    ld [$cd6a], a
    ret


    rla
    ld h, [hl]
    ld l, h
    dec l
    ld d, b
    rla
    add h
    ld l, h
    dec l
    ld d, b
    rla
    and h
    ld l, h
    dec l
    ld d, b
    rla
    cp e
    ld l, h
    dec l
    ld d, b
    rla
    rst $08
    ld l, h
    dec l
    ld d, b
    jp Jump_003_64b5


Jump_003_6374:
    ld a, [$d056]
    and a
    jp nz, Jump_003_64b5

    ld a, [$cf90]
    sub $c9
    push af
    jr nc, jr_003_6385

    add $37

jr_003_6385:
    inc a
    ld [$d11d], a
    ld a, $44
    call Call_000_3eb4
    ld a, [$d11d]
    ld [$d0df], a
    call Call_000_2f4d
    call Call_000_3813
    pop af
    ld hl, $6483
    jr nc, jr_003_63a3

    ld hl, $6488

jr_003_63a3:
    call Call_000_3c36
    ld hl, $648d
    call Call_000_3c36
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$cc26]
    and a
    jr z, jr_003_63c6

    ld a, $02
    ld [$cd6a], a
    ret


jr_003_63c6:
    ld a, [$cf91]
    push af
    ld a, [$cf90]
    push af

jr_003_63ce:
    ld hl, $cf4a
    ld de, $d035
    ld bc, $000e
    call Call_000_00b1
    ld a, $ff
    ld [$cfca], a
    ld a, $03
    ld [$d07c], a
    call Call_000_11c8
    push af
    ld hl, $d035
    ld de, $cf4a
    ld bc, $000e
    call Call_000_00b1
    pop af
    jr nc, jr_003_6405

    pop af
    pop af
    call Call_000_3dd8
    call Call_000_0082
    call Call_000_3e03
    jp Jump_000_371b


jr_003_6405:
    ld a, $43
    call Call_000_3eb4
    push bc
    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    pop bc
    ld a, c
    and a
    jr nz, jr_003_6426

    ld a, $a5
    call Call_000_3736
    ld hl, $6492
    call Call_000_3c36
    jr jr_003_63ce

jr_003_6426:
    ld hl, $7d42
    ld b, $0b
    call Call_000_3e84
    jr c, jr_003_63ce

    ld a, $1b
    call Call_000_3eb4
    ld a, [$cf91]
    ld d, a
    pop af
    ld [$cf90], a
    pop af
    ld [$cf91], a
    ld a, b
    and a
    ret z

    ld a, [$cf91]
    push af
    ld a, d
    ld [$cf91], a
    ld hl, $430a
    ld b, $3d
    ld d, $05
    call Call_000_3e84
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_003_6475

    ld a, [$cf90]
    cp $e0
    jr z, jr_003_646b

    cp $e1
    jr nz, jr_003_6475

jr_003_646b:
    ld a, $05
    ld [$d49b], a
    ld a, $85
    ld [$d470], a

jr_003_6475:
    pop af
    ld [$cf91], a
    ld a, [$cf90]
    call Call_000_2f35
    ret c

    jp Jump_003_64a5


    rla
    pop hl
    ld l, h
    dec l
    ld d, b
    rla
    ld a, [c]
    ld l, h
    dec l
    ld d, b
    rla
    inc b
    ld l, l
    dec l
    ld d, b
    rla
    jr nc, jr_003_6502

    dec l
    ld d, b

Call_003_6497:
Jump_003_6497:
    ld hl, $652c
    call Call_000_3c36
    ld a, $8e
    call Call_000_2238
    call Call_000_3852

Call_003_64a5:
Jump_003_64a5:
jr_003_64a5:
    ld hl, $d31c
    ld a, $01
    ld [$cf95], a
    jp Jump_000_2abd


Call_003_64b0:
    ld hl, $6509
    jr jr_003_64f8

Call_003_64b5:
Jump_003_64b5:
    ld hl, $64ff
    jr jr_003_64f8

Jump_003_64ba:
    ld hl, $6504
    jr jr_003_64f8

Jump_003_64bf:
    ld a, $02
    ld [$cd6a], a
    ld hl, $6527
    jp Jump_000_3c36


Jump_003_64ca:
    call Call_000_3e03
    call Call_000_371b
    call Call_000_3ddb
    ld a, $c1
    ld [$d07b], a
    ld a, $08
    call Call_000_3eb4
    ld hl, $650e
    call Call_000_3c36
    ld hl, $6513
    call Call_000_3c36
    jr jr_003_64a5

Jump_003_64eb:
    ld hl, $6518
    jr jr_003_64f8

Jump_003_64f0:
    ld hl, $6522
    jr jr_003_64f8

Jump_003_64f5:
    ld hl, $651d

jr_003_64f8:
    xor a
    ld [$cd6a], a
    jp Jump_000_3c36


    rla
    ld l, b
    ld l, l

jr_003_6502:
    dec l
    ld d, b
    rla
    sub d
    ld l, l
    dec l
    ld d, b
    rla
    xor e
    ld l, l
    dec l
    ld d, b
    rla
    push bc
    ld l, l
    dec l
    ld d, b
    rla
    db $e4
    ld l, l
    dec l
    ld d, b
    rla
    or $6d
    dec l
    ld d, b
    rla
    db $10
    ld l, [hl]
    dec l
    ld d, b
    rla
    dec hl
    ld l, [hl]
    dec l
    ld d, b
    rla
    ld d, [hl]
    ld l, [hl]
    dec l
    ld d, b
    rla
    ld l, [hl]
    ld l, [hl]
    dec l
    dec b
    rla
    ld [hl], a
    ld l, [hl]
    dec l
    ld d, b
    rla
    ld a, l
    ld l, [hl]
    dec l
    dec b
    rla
    adc h
    ld l, [hl]
    dec l
    ld d, b
    rla
    sub d
    ld l, [hl]
    dec l
    dec b
    rla
    sbc [hl]
    ld l, [hl]
    dec l
    ld d, b

Call_003_654a:
    ld hl, $d172
    ld bc, $002c
    ld a, [$cf91]
    call Call_000_3a74
    push hl
    ld de, $cd77
    ld a, $5e
    call Call_000_3eb4
    pop hl
    ld c, $15
    ld b, $00
    add hl, bc
    ld de, $cd78
    ld b, $00

jr_003_656a:
    inc b
    ld a, b
    cp $05
    ret z

    ld a, [$d11d]
    dec a
    jr nz, jr_003_657c

    ld a, [$cc26]
    inc a
    cp b
    jr nz, jr_003_6582

jr_003_657c:
    ld a, [hl]
    and $c0
    call nz, Call_003_6586

jr_003_6582:
    inc hl
    inc de
    jr jr_003_656a

Call_003_6586:
    push bc
    ld a, [de]
    ldh [$98], a
    xor a
    ldh [$95], a
    ldh [$96], a
    ldh [$97], a
    ld a, $05
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ld a, [hl]
    ld b, a
    swap a
    and $0f
    srl a
    srl a
    ld c, a

jr_003_65a5:
    ldh a, [$98]
    cp $08
    jr c, jr_003_65ad

    ld a, $07

jr_003_65ad:
    add b
    ld b, a
    ld a, [$d11d]
    dec a
    jr z, jr_003_65b8

    dec c
    jr nz, jr_003_65a5

jr_003_65b8:
    ld [hl], b
    pop bc
    ret


Call_003_65bb:
    ld a, [$cc49]
    and a
    ld hl, $d172
    ld bc, $002c
    jr z, jr_003_65e4

    ld hl, $d8ab
    dec a
    jr z, jr_003_65e4

    ld hl, $da9d
    ld bc, $0021
    dec a
    jr z, jr_003_65e4

    ld hl, $da66
    dec a
    jr z, jr_003_65df

    ld hl, $d01b

jr_003_65df:
    call Call_003_662d
    jr jr_003_65e7

jr_003_65e4:
    call Call_003_6627

jr_003_65e7:
    ld a, [hl]
    dec a
    push hl
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a74
    ld de, $cd6d
    ld a, $0e
    call Call_000_009d
    ld de, $cd72
    ld a, [de]
    ld b, a
    pop hl
    push bc
    ld bc, $0015
    ld a, [$cc49]
    cp $04
    jr nz, jr_003_660f

    ld bc, $0011

jr_003_660f:
    add hl, bc
    ld a, [hl]
    and $c0
    pop bc
    or b
    ld h, d
    ld l, e
    inc hl
    ld [hl], a
    xor a
    ld [$d11d], a
    call Call_003_6586
    ld a, [hl]
    and $3f
    ld [$d11d], a
    ret


Call_003_6627:
    ld a, [$cf91]
    call Call_000_3a74

Call_003_662d:
    ld a, [$cc26]
    ld c, a
    ld b, $00
    add hl, bc
    ret


    push hl
    ld a, [$cf90]
    call Call_000_2f35
    pop hl
    jr c, jr_003_668f

    push hl
    call Call_003_66a8
    ld a, [$d123]
    pop hl
    and a
    jr nz, jr_003_668f

    push hl
    ld a, [$cf90]
    ld [$d11d], a
    call Call_000_2ec4
    call Call_000_3813
    ld hl, $669e
    call Call_000_3c36
    ld hl, $c43a
    ld bc, $080f
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, [$d12d]
    cp $02
    pop hl
    scf
    ret z

    push hl
    ld a, [$cf91]
    call Call_000_2abd
    ld a, [$cf90]
    ld [$d11d], a
    call Call_000_2ec4
    call Call_000_3813
    ld hl, $6699
    call Call_000_3c36
    pop hl
    and a
    ret


jr_003_668f:
    push hl
    ld hl, $66a3
    call Call_000_3c36
    pop hl
    scf
    ret


    rla
    xor d
    ld l, [hl]
    dec l
    ld d, b
    rla
    cp l
    ld l, [hl]
    dec l
    ld d, b
    rla
    sub $6e
    dec l
    ld d, b

Call_003_66a8:
    ld a, $01
    ld [$d123], a
    ld a, [$cf90]
    cp $c4
    jr nc, jr_003_66d1

    push af
    ld hl, $66dd
    ld de, $cee9
    ld bc, $000f
    call Call_000_00b1
    pop af
    dec a
    ld c, a
    ld hl, $cee9
    ld b, $02
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    ret nz

jr_003_66d1:
    ld a, [$cf90]
    call Call_000_2f35
    ret c

    xor a
    ld [$d123], a
    ret


    ldh a, [rSB]
    ldh a, [rVBK]
    nop
    sbc a
    nop
    ret nz

    ldh a, [$3b]
    nop

Call_003_66e8:
    ld de, $da7f
    ld a, [de]
    inc a
    ld [de], a
    ld a, [$cf90]
    ld [$d0b4], a
    ld c, a

jr_003_66f5:
    inc de
    ld a, [de]
    ld b, a
    ld a, c
    ld c, b
    ld [de], a
    cp $ff
    jr nz, jr_003_66f5

    call Call_000_132f
    ld hl, $dd29
    ld bc, $000b
    ld a, [$da7f]
    dec a
    jr z, jr_003_6732

    dec a
    call Call_000_3a74
    push hl
    ld bc, $000b
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$da7f]
    dec a
    ld b, a

jr_003_671f:
    push bc
    push hl
    ld bc, $000b
    call Call_000_00b1
    pop hl
    ld d, h
    ld e, l
    ld bc, $fff5
    add hl, bc
    pop bc
    dec b
    jr nz, jr_003_671f

jr_003_6732:
    ld hl, $d157
    ld de, $dd29
    ld bc, $000b
    call Call_000_00b1
    ld a, [$da7f]
    dec a
    jr z, jr_003_676e

    ld hl, $de05
    ld bc, $000b
    dec a
    call Call_000_3a74
    push hl
    ld bc, $000b
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$da7f]
    dec a
    ld b, a

jr_003_675b:
    push bc
    push hl
    ld bc, $000b
    call Call_000_00b1
    pop hl
    ld d, h
    ld e, l
    ld bc, $fff5
    add hl, bc
    pop bc
    dec b
    jr nz, jr_003_675b

jr_003_676e:
    ld hl, $de05
    ld a, $02
    ld [$d07c], a
    ld a, $4e
    call Call_000_3eb4
    ld a, [$da7f]
    dec a
    jr z, jr_003_67ab

    ld hl, $da95
    ld bc, $0021
    dec a
    call Call_000_3a74
    push hl
    ld bc, $0021
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$da7f]
    dec a
    ld b, a

jr_003_6798:
    push bc
    push hl
    ld bc, $0021
    call Call_000_00b1
    pop hl
    ld d, h
    ld e, l
    ld bc, $ffdf
    add hl, bc
    pop bc
    dec b
    jr nz, jr_003_6798

jr_003_67ab:
    ld a, [$cff2]
    ld [$cfe7], a
    ld hl, $cfe4
    ld de, $da95
    ld bc, $000c
    call Call_000_00b1
    ld hl, $d358
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    push de
    ld a, [$d126]
    ld d, a
    ld hl, $4dc0
    ld b, $16
    call Call_000_3e84
    pop de
    ldh a, [$96]
    ld [de], a
    inc de
    ldh a, [$97]
    ld [de], a
    inc de
    ldh a, [$98]
    ld [de], a
    inc de
    xor a
    ld b, $0a

jr_003_67e3:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_67e3

    ld hl, $cff0
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld hl, $cffd
    ld b, $04

jr_003_67f5:
    ld a, [hl+]
    inc de
    ld [de], a
    dec b
    jr nz, jr_003_67f5

    ld a, [$cf90]
    cp $26
    jr nz, jr_003_6807

    ld a, $60
    ld [$da9c], a

jr_003_6807:
    ret


Call_003_6808:
    ld a, [$d366]
    ld hl, $6834
    ld de, $0001
    call Call_000_3da7
    ret nc

    ld hl, $6840
    ld a, [$d366]
    cp $0e
    jr z, jr_003_682a

    cp $07
    jr z, jr_003_682a

    cp $05
    jr z, jr_003_682a

    ld hl, $683e

jr_003_682a:
    ld a, [$cfc5]
    ld de, $0001
    call Call_000_3da7
    ret


    nop
    inc bc
    dec b
    rlca
    dec c
    ld c, $11
    ld d, $17
    rst $38
    ld c, b
    ld [hl-], a
    inc d
    rst $38

Call_003_6842:
    call Call_000_0b06
    jp Jump_000_231c


    ld hl, $4b95
    ld de, $cee9
    ld c, $00

jr_003_6850:
    inc hl
    ld a, [hl-]
    inc a
    jr z, jr_003_6869

    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    and a
    call nz, Call_003_686d
    ld a, [hl+]
    and a
    call nz, Call_003_686d
    pop hl
    inc hl
    inc hl
    inc c
    jr jr_003_6850

jr_003_6869:
    ld a, $ff
    ld [de], a
    ret


Call_003_686d:
    inc hl
    ld b, $0a

jr_003_6870:
    ld a, [$d11d]
    cp [hl]
    jr nz, jr_003_6879

    ld a, c
    ld [de], a
    inc de

jr_003_6879:
    inc hl
    inc hl
    dec b
    jr nz, jr_003_6870

    dec hl
    ret


    ld de, $cd3f
    ld hl, $6913
    ld bc, $0008
    call Call_000_00b1
    ld hl, $cd49
    ld bc, $0008
    xor a
    call Call_000_166e
    ld de, $cd49
    ld hl, $cd3f
    ld a, [$d355]
    ld b, a
    ld c, $08

jr_003_68a2:
    srl b
    jr nc, jr_003_68ad

    ld a, [hl]
    add $04
    ld [hl], a
    ld a, $01
    ld [de], a

jr_003_68ad:
    inc hl
    inc de
    dec c
    jr nz, jr_003_68a2

    ld hl, $cd3d
    ld a, $d8
    ld [hl+], a
    ld [hl], $60
    ld hl, $c47e
    ld de, $cd49
    call Call_003_68c9
    ld hl, $c4ba
    ld de, $cd4d

Call_003_68c9:
    ld c, $04

jr_003_68cb:
    push de
    push hl
    ld a, [$cd3d]
    ld [hl+], a
    inc a
    ld [$cd3d], a
    ld a, [de]
    and a
    ld a, [$cd3e]
    jr nz, jr_003_68e1

    call Call_003_690e
    jr jr_003_68e4

jr_003_68e1:
    inc a
    inc a
    inc hl

jr_003_68e4:
    ld [$cd3e], a
    ld de, $0013
    add hl, de
    ld a, [$cd3f]
    call Call_003_690e
    add hl, de
    call Call_003_690e
    push bc
    ld hl, $cd40
    ld de, $cd3f
    ld bc, $0008
    call Call_000_00b1
    pop bc
    pop hl
    ld de, $0004
    add hl, de
    pop de
    inc de
    dec c
    jr nz, jr_003_68cb

    ret


Call_003_690e:
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    ret


    jr nz, jr_003_693d

    jr nc, jr_003_694f

    ld b, b
    ld c, b
    ld d, b
    ld e, b
    ccf
    ld a, a
    ld a, a
    ld a, a
    ei
    rst $38
    rst $30
    ld a, [$f0e0]
    ld [hl], b
    ldh [$50], a
    ld a, b
    call z, $fec6
    rst $38
    cp $fe
    ld a, a
    rst $38
    rst $28
    ccf
    rst $30
    rrca
    cp $07
    ld [$bf1e], a

jr_003_693a:
    ld h, e
    ld c, a
    ld c, [hl]

jr_003_693d:
    nop
    ld b, b
    pop bc
    ld hl, $a0e0
    ld h, c
    ld [hl], e
    db $10
    db $10
    jr jr_003_6951

    dec b
    ld b, $fe
    ld [hl], d
    db $fc
    ld [bc], a

jr_003_694f:
    adc a
    inc b

jr_003_6951:
    rst $18
    dec b
    or [hl]
    adc $f0
    ld [$10f8], sp
    and b
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    ld [$1008], sp
    db $10
    inc hl
    jr nz, jr_003_69af

    ld b, b
    ld b, a
    ld b, b
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_003_6991

    db $10
    jr nc, jr_003_697c

    jr c, jr_003_693a

    inc a
    ld [c], a
    ld e, $e2
    ld e, $47

jr_003_697c:
    ld b, b
    ld b, a
    ld b, b
    ccf
    jr nz, @+$1e

    inc de
    inc c
    dec bc
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld [c], a
    ld e, $e2
    ld e, $c4
    inc a

jr_003_6991:
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    nop
    db $fc
    rst $00
    xor $1b
    sbc [hl]
    ld sp, hl
    cp h
    ld h, e
    sbc b
    ld [hl], a
    dec d
    rst $38
    dec e
    rst $38
    ld h, $ff
    dec de
    ld a, [$fc0f]

jr_003_69af:
    ld d, $f5
    inc d
    rst $30
    adc e
    ei
    ld b, c
    rst $38
    pop bc
    ld a, a
    ld [c], a
    ld a, [hl]
    di
    call c, $c8ef
    ld c, a
    ld l, b
    ld e, e
    ld l, b
    inc bc
    jr nz, jr_003_69f7

    inc hl
    add hl, bc
    jr jr_003_69ce

    rlca
    db $76
    sbc $b9

jr_003_69ce:
    adc c
    cp c
    adc l
    rst $30
    adc c
    cp $0a
    db $fc
    inc e
    and b
    ld h, b

jr_003_69d9:
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $05
    ld b, $05
    inc c
    dec bc
    jr @+$19

    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

jr_003_69f7:
    jr nz, jr_003_69d9

    db $10
    ldh a, [rNR23]
    rla
    jr nc, jr_003_6a2e

    jr nc, jr_003_6a2d

    jr nc, jr_003_6a2f

    jr jr_003_6a1c

    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$60]
    ldh [$80], a
    add b
    nop
    nop
    nop

jr_003_6a1c:
    nop
    nop
    ret nz

    add [hl]
    ld a, [hl]
    ld c, b
    cp c
    or c
    ld d, b
    db $e3
    and h
    ld h, e
    ld h, d
    ld hl, $00a5
    nop

jr_003_6a2d:
    nop

jr_003_6a2e:
    nop

jr_003_6a2f:
    inc e
    nop
    rst $38
    pop bc
    sbc $3d
    cp $02
    cp h
    ld b, d
    cp d
    ld b, [hl]
    ld bc, $4485
    ld b, e
    rst $00
    ret nz

    ld h, $e1
    db $f4
    ld a, [c]
    adc h
    ld a, h
    inc de
    ld a, a
    ld hl, $fcf9
    adc h
    call nc, Call_003_4834
    jr c, @-$06

    add sp, $38
    ld c, b
    jr nc, jr_003_6aa7

    ld h, b
    and b
    ret nz

    ret nz

    nop
    nop
    ld bc, $1e01
    ld e, $13
    inc de
    inc d
    inc d
    dec sp
    jr c, jr_003_6abf

    ld d, b
    sub a
    sub b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_003_6a91

    db $fc
    db $fc
    inc h
    inc h
    call nc, $ec34
    inc e
    ld [$571a], a
    ld d, b
    scf
    jr nc, jr_003_6aab

    jr z, jr_003_6aa6

    daa
    ccf
    ccf
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $e901
    add hl, de
    ld [$dc1a], a
    inc a

jr_003_6a91:
    jr z, @-$16

    ret z

    ret z

    ld a, b
    ld a, b
    add b
    add b
    nop
    nop
    rra
    db $10
    ccf
    jr nz, jr_003_6ade

    ld a, a
    ld a, l
    rst $38
    ei
    rst $38
    ei

jr_003_6aa6:
    rst $38

jr_003_6aa7:
    rst $38
    ld a, [$faf5]

jr_003_6aab:
    ld a, a
    rst $38
    rst $28
    rra
    ld a, e
    add a
    db $dd
    db $e3
    rst $30
    ei
    rst $38
    rst $38
    db $fd
    rst $38
    or [hl]
    rst $08
    rst $28
    ldh a, [$7f]
    ld [hl], b

jr_003_6abf:
    ld a, a
    ld a, h
    ld a, a
    ld [hl], b
    ld [hl], h
    ld a, d

jr_003_6ac5:
    ld a, e
    ld a, l
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    push af
    rlca
    add a
    ld b, a
    ld h, a
    ld [hl], a
    rlca
    rlca
    rlca
    rlca
    rra
    rrca
    rla
    rla
    rst $10
    sub a
    ld bc, $0201

jr_003_6ade:
    inc bc
    jr @+$21

    ld h, $3a
    dec h
    scf
    jr jr_003_6b14

    ld d, d
    ld a, d

jr_003_6ae9:
    adc c
    db $ed
    add b
    add b
    ld b, b
    ret nz

    jr jr_003_6ae9

    ld h, h
    ld e, h
    and h
    db $ec
    inc e
    or h
    ld c, d
    ld e, [hl]
    sub c
    or a
    adc c
    db $ed
    ld d, d
    ld a, d
    jr jr_003_6b2e

    dec h
    scf
    ld h, $3a
    jr jr_003_6b26

    ld [bc], a
    inc bc
    ld bc, $9101
    or a
    ld c, d
    ld e, [hl]

jr_003_6b0f:
    jr jr_003_6ac5

    and h
    db $ec
    ld h, h

jr_003_6b14:
    ld e, h
    jr jr_003_6b0f

    ld b, b
    ret nz

    add b
    add b
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    xor $f7
    call z, $c47b
    ld a, a

jr_003_6b26:
    ld b, b
    dec a
    ld h, d
    ld a, l
    ld [hl], d
    rst $38
    rst $38
    ld a, a

jr_003_6b2e:
    sbc a
    rst $38
    rrca
    add a
    rrca
    add a
    daa
    or a
    ld [hl], a
    db $f4
    db $76
    jp nz, Jump_000_3fe5

    ld sp, $2c2b
    ld [de], a
    inc e
    rrca
    db $10
    rrca
    dec bc
    rlca
    inc b
    inc bc
    inc b
    ld bc, $8203
    and c
    and d
    ret nz

    db $e3
    inc bc
    call nz, $8c17
    rst $08
    cp b
    ccf
    add sp, $7f
    sub e
    sbc a
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld [de], a
    dec l
    ld hl, $202e
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    nop
    nop
    jr nc, jr_003_6b9f

    ld a, b
    ld c, b
    call nz, $84bc
    ld a, h
    ld [bc], a
    cp $02
    cp $02
    cp $2f
    jr nz, jr_003_6bad

    jr nz, jr_003_6b97

    jr jr_003_6b8d

    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    inc b
    db $fc

jr_003_6b8d:
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

jr_003_6b97:
    add b
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_6b9f:
    rst $38
    rst $38
    ld h, [hl]
    sbc a
    sbc [hl]
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ldh a, [$f8]

jr_003_6bad:
    ld hl, sp-$04
    db $fc
    cp $f6
    ei
    ld a, e
    rst $20
    rst $28
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    inc sp
    ld l, e
    inc hl
    xor d
    ld b, e
    and [hl]
    rst $20
    nop
    db $e3
    ret nz

    db $e3
    pop af
    rst $30
    ld hl, sp+$38
    or a
    db $fc
    inc a
    add sp, $28
    ldh [$28], a
    ld h, b
    db $10
    jr nz, @+$52

    ld b, b
    and b
    and b
    ld [hl], b
    ld a, b
    adc b
    nop
    nop
    inc bc
    inc bc
    inc c
    inc c
    inc de
    db $10
    inc l
    inc hl
    dec hl
    inc h
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    nop
    nop
    ret nz

    ret nz

    jr nc, @+$32

    ret z

    ld [$cc34], sp
    call nc, $ea2c

jr_003_6bf8:
    ld d, $ea
    ld d, $57
    ld c, b
    ld d, a
    ld c, b
    dec hl
    inc h
    inc l
    inc hl
    inc de
    inc e
    inc c
    rrca

jr_003_6c07:
    inc bc
    inc bc
    nop
    nop
    ld [$ea16], a
    ld d, $d4
    inc l
    inc [hl]
    call z, Call_000_38c8
    jr nc, jr_003_6c07

    ret nz

    ret nz

    nop
    nop
    inc e
    db $10
    inc e
    nop
    ccf
    jr nz, jr_003_6c61

    jr nz, jr_003_6c53

    jr nc, jr_003_6c45

    ld c, b
    ld a, [hl]
    ld c, l
    ld [hl], e
    ld e, a
    ld [$0008], sp
    ld [$0400], sp
    add h
    inc b
    db $fc
    inc e
    ld [$fe32], a
    ld l, d
    sbc [hl]
    ld a, [$3e33]
    dec e
    ld c, $1d
    ld [de], a
    inc d
    inc e
    ld b, $09

jr_003_6c45:
    rrca
    ld [$0407], sp
    ld [bc], a
    rlca
    sub h
    db $fc
    add sp, $68
    ret z

    ld [$3010], sp

jr_003_6c53:
    db $10
    ret nc

    ret nz

    jr nz, jr_003_6bf8

    jr nc, jr_003_6cca

    ldh a, [rP1]
    nop
    ld bc, $0201
    ld [bc], a

jr_003_6c61:
    ld [hl+], a
    ld [hl+], a
    ld d, l
    ld d, h
    ld e, l
    ld c, h
    ld e, [hl]
    ld b, c
    ld l, $21

jr_003_6c6b:
    nop
    nop
    nop
    nop
    add b
    add b
    adc b
    adc b
    ld d, h
    call c, $ec74
    db $f4
    inc c
    ld hl, sp+$08
    inc l
    inc hl
    ld e, b
    ld b, a
    ld e, b
    ld b, a
    jr z, jr_003_6caa

    inc d
    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    ld a, b
    adc b
    inc [hl]
    call z, $cc34
    jr z, jr_003_6c6b

    ld d, b
    or b
    ldh [$60], a
    add b
    add b
    nop
    nop
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    jr c, jr_003_6cdb

    jr nc, jr_003_6cd5

    ld [hl], e
    ld [hl], e
    rst $38
    rst $38
    rst $38

jr_003_6caa:
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    inc e
    inc e
    inc c
    inc c
    adc $ce
    rst $08
    rst $08
    rra
    rra
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_6cca:
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_003_6cd5:
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_6cd9:
    rst $38
    rst $38

jr_003_6cdb:
    nop
    nop
    rra
    rra
    ccf
    inc h
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld a, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$a0], a
    jr nz, jr_003_6cd9

    jr nc, jr_003_6d2b

    inc a
    ld a, $0c
    ld a, [bc]
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    jr z, @+$4a

    ld [$88a8], sp
    jr jr_003_6d2b

    db $f4
    db $f4
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    nop
    nop
    call Call_000_3ed7
    ld hl, $c6e8
    ld a, [$d368]
    add $06
    ld e, a
    ld d, $00
    add hl, de
    add hl, de

jr_003_6d2b:
    add hl, de
    ld e, $03
    add hl, de
    ld e, a
    ld a, b
    and a
    jr z, jr_003_6d38

jr_003_6d34:
    add hl, de
    dec b
    jr nz, jr_003_6d34

jr_003_6d38:
    add hl, bc
    ld a, [$d09e]
    ld [hl], a
    ld a, [$d35e]
    ld c, a
    ld a, [$d35f]
    ld b, a
    call Call_003_6dcb
    ret c

    push hl
    ld l, e
    ld h, $00
    ld e, $06
    ld d, h
    add hl, hl
    add hl, hl
    add hl, de
    add hl, bc
    pop bc
    call Call_003_6dcb
    ret c

Call_003_6d59:
Jump_003_6d59:
    ld a, [$d056]
    inc a
    ret z

    ldh a, [$ba]
    push af
    ldh a, [$d7]
    push af
    xor a
    ldh [$ba], a
    ldh [$d7], a
    call Call_000_0b06
    call Call_000_3e03
    ld hl, $d525
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ffc0
    add hl, de
    ld a, h
    and $03
    or $98
    ld a, l
    ld [$cee9], a
    ld a, h
    ld [$ceea], a
    ld a, $02
    ldh [$be], a
    ld c, $09

jr_003_6d8c:
    push bc
    push hl
    push hl
    ld hl, $c378
    ld de, $0014
    ldh a, [$be]

jr_003_6d97:
    add hl, de
    dec a
    jr nz, jr_003_6d97

    call Call_000_0baa
    pop hl
    ld de, $0020
    ldh a, [$be]
    ld c, a

jr_003_6da5:
    add hl, de
    ld a, h
    and $03
    or $98
    dec c
    jr nz, jr_003_6da5

    ldh [$d2], a
    ld a, l
    ldh [$d1], a
    ld a, $02
    ldh [$d0], a
    call Call_000_1e64
    ld hl, $ffbe
    inc [hl]
    inc [hl]
    pop hl
    pop bc
    dec c
    jr nz, jr_003_6d8c

    pop af
    ldh [$d7], a
    pop af
    ldh [$ba], a
    ret


Call_003_6dcb:
    ld a, h
    sub b
    ret nz

    ld a, l
    sub c
    ret


    xor a
    ld [$cd6a], a
    ld a, [$d366]
    and a
    jr z, jr_003_6de8

    cp $07
    jr nz, jr_003_6df4

    ld a, [$cfc5]
    cp $50
    jr nz, jr_003_6df4

    jr jr_003_6dff

jr_003_6de8:
    dec a
    ld a, [$cfc5]
    cp $3d
    jr z, jr_003_6dff

    cp $52
    jr z, jr_003_6dff

jr_003_6df4:
    ld hl, $6dfa
    jp Jump_000_3c36


    rla
    ld h, [hl]
    ld [hl], c
    dec l
    ld d, b

jr_003_6dff:
    ld [$cd4d], a
    ld a, $01
    ld [$cd6a], a
    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    ld hl, $d72f
    set 6, [hl]
    call Call_000_3dd8
    call Call_000_0082
    call Call_000_3dc2
    ld a, $90
    ldh [$b0], a
    call Call_000_3ddb
    call Call_000_1e6f
    call Call_000_0b06
    call Call_000_36ec
    call Call_000_3ddb
    xor a
    ldh [$b0], a
    ld hl, $6e6f
    call Call_000_3c36
    call Call_000_36f8
    ld hl, $d72f
    res 6, [hl]
    ld a, $ff
    ld [$cfca], a
    call Call_003_6e74
    ld de, $6f80
    call Call_003_6f1f
    call Call_003_6d59
    ld b, $1e
    ld hl, $6037
    call Call_000_3e84
    ld a, $01
    ld [$cfca], a
    ld a, $ac
    call Call_000_2238
    ld a, $90
    ldh [$b0], a
    call Call_000_231c
    jp Jump_003_6d59


    rla
    add e
    ld [hl], c
    dec l
    ld d, b

Call_003_6e74:
    xor a
    ld [$cd50], a
    ld a, $e4
    ldh [rOBP1], a
    call Call_000_3061
    ld a, [$cd4d]
    cp $52
    jr z, jr_003_6ea0

    ld de, $42d0
    ld hl, $8fc0
    ld bc, $1902
    call Call_000_15fe
    ld de, $43d0
    ld hl, $8fe0
    ld bc, $1902
    call Call_000_15fe
    jr jr_003_6ed5

jr_003_6ea0:
    ld hl, $8fc0
    call Call_003_6ecc
    ld hl, $8fd0
    call Call_003_6ecc
    ld hl, $8fe0
    call Call_003_6ecc
    ld hl, $8ff0
    call Call_003_6ecc
    call Call_003_6ed5
    ld hl, $c393
    ld de, $0004
    ld a, $30
    ld c, e

jr_003_6ec4:
    ld [hl], a
    add hl, de
    xor $60
    dec c
    jr nz, jr_003_6ec4

    ret


Call_003_6ecc:
    ld de, $4787
    ld bc, $1e01
    jp Jump_000_15fe


Call_003_6ed5:
jr_003_6ed5:
    call Call_003_6ee8
    ld a, $09
    ld de, $6ee0
    jp Jump_000_3a84


    db $fc
    inc d
    db $fd
    inc d
    cp $14
    rst $38
    inc d

Call_003_6ee8:
    ld hl, $c104
    ld a, [hl+]
    ld b, a
    inc hl
    ld a, [hl+]
    ld c, a
    inc hl
    inc hl
    ld a, [hl]
    srl a
    ld e, a
    ld d, $00
    ld a, [$cd50]
    and a
    ld hl, $6f0f
    jr z, jr_003_6f04

    ld hl, $6f17

jr_003_6f04:
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    add d
    ld b, a
    ld a, c
    add e
    ld c, a
    ret


    ld [$0824], sp
    inc b
    ld hl, sp+$14
    jr @+$16

    ld [$0834], sp
    db $f4
    add sp, $14
    jr z, @+$16

Call_003_6f1f:
    push de
    ld a, [$d368]
    add $06
    ld c, a
    ld b, $00
    ld d, $00
    ld hl, $d35e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [$c109]
    and a
    jr z, jr_003_6f47

    cp $04
    jr z, jr_003_6f4f

    cp $08
    jr z, jr_003_6f57

    ld a, [$d363]
    and a
    jr z, jr_003_6f60

    jr jr_003_6f6c

jr_003_6f47:
    ld a, [$d362]
    and a
    jr z, jr_003_6f60

    jr jr_003_6f5f

jr_003_6f4f:
    ld a, [$d362]
    and a
    jr z, jr_003_6f61

    jr jr_003_6f60

jr_003_6f57:
    ld a, [$d363]
    and a
    jr z, jr_003_6f66

    jr jr_003_6f60

jr_003_6f5f:
    add hl, bc

jr_003_6f60:
    add hl, bc

jr_003_6f61:
    ld e, $02
    add hl, de
    jr jr_003_6f70

jr_003_6f66:
    ld e, $01
    add hl, bc
    add hl, de
    jr jr_003_6f70

jr_003_6f6c:
    ld e, $03
    add hl, bc
    add hl, de

jr_003_6f70:
    pop de
    ld a, [hl]
    ld c, a

jr_003_6f73:
    ld a, [de]
    inc de
    inc de
    cp $ff
    ret z

    cp c
    jr nz, jr_003_6f73

    dec de
    ld a, [de]
    ld [hl], a
    ret


    ld [hl-], a
    ld l, l
    inc sp
    ld l, h
    inc [hl]
    ld l, a
    dec [hl]
    ld c, h
    ld h, b
    ld l, [hl]
    dec bc
    ld a, [bc]
    inc a
    dec [hl]
    ccf
    dec [hl]
    dec a
    ld [hl], $ff
    ld a, [$d35d]
    cp $0c
    jr nc, jr_003_6fa5

    ld c, a
    ld b, $01
    ld hl, $d70a
    ld a, $10
    call Call_000_3eb4

jr_003_6fa5:
    ld hl, $469b
    ld a, [$d35d]
    ld b, $00
    ld c, a
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, l
    sub $92
    ld l, a
    ld a, h
    sbc $48
    ld h, a
    ld a, h
    ldh [$95], a
    ld a, l
    ldh [$96], a
    xor a
    ldh [$97], a
    ldh [$98], a
    ld a, $03
    ldh [$99], a
    ld b, $02
    call Call_000_38b2
    ld a, [$d35d]
    ld b, a
    ldh a, [$98]
    ld c, a
    ld de, $d5cd
    pop hl

jr_003_6fdb:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_6fed

    cp b
    jr nz, jr_003_6fed

    ld a, [hl+]
    inc hl
    ld [de], a
    inc de
    ld a, c
    inc c
    ld [de], a
    inc de
    jr jr_003_6fdb

jr_003_6fed:
    ld a, $ff
    ld [de], a
    ret


Jump_003_6ff1:
    ld hl, $d5a5
    ld bc, $0020
    xor a
    call Call_000_166e
    ld hl, $4892
    xor a
    ld [$d047], a

jr_003_7002:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    inc hl
    ld a, [hl]
    cp $11
    jr nz, jr_003_7019

    ld hl, $d5a5
    ld a, [$d047]
    ld c, a
    ld b, $01
    call Call_003_7062

jr_003_7019:
    ld hl, $d047
    inc [hl]
    pop hl
    inc hl
    inc hl
    jr jr_003_7002

    ldh a, [$da]
    swap a
    ld b, a
    ld hl, $d5cd

jr_003_702a:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_7040

    cp b
    ld a, [hl+]
    jr nz, jr_003_702a

    ld c, a
    ld b, $02
    ld hl, $d5a5
    call Call_003_7062
    ld a, c
    and a
    jr nz, jr_003_7041

jr_003_7040:
    xor a

jr_003_7041:
    ldh [$e5], a
    ret


    ld hl, $d5a5
    ld a, [$cc4d]
    ld c, a
    ld b, $00
    call Call_003_7062
    jp Jump_000_231c


    ld hl, $d5a5
    ld a, [$cc4d]
    ld c, a
    ld b, $01
    call Call_003_7062
    jp Jump_000_231c


Call_003_7062:
    push hl
    push de
    push bc
    ld a, c
    ld d, a
    and $07
    ld e, a
    ld a, d
    srl a
    srl a
    srl a
    add l
    ld l, a
    jr nc, jr_003_7076

    inc h

jr_003_7076:
    inc e
    ld d, $01

jr_003_7079:
    dec e
    jr z, jr_003_7080

    sla d
    jr jr_003_7079

jr_003_7080:
    ld a, b
    and a
    jr z, jr_003_708f

    cp $02
    jr z, jr_003_7098

    ld a, [hl]
    ld b, a
    ld a, d
    or b
    ld [hl], a
    jr jr_003_709c

jr_003_708f:
    ld a, [hl]
    ld b, a
    ld a, d
    xor $ff
    and b
    ld [hl], a
    jr jr_003_709c

jr_003_7098:
    ld a, [hl]
    ld b, a
    ld a, d
    and b

jr_003_709c:
    pop bc
    pop de
    pop hl
    ld c, a
    ret


    ld a, [$d727]
    bit 0, a
    ret z

    ld a, [$cd60]
    bit 1, a
    ret nz

    xor a
    ldh [$8c], a
    call Call_000_0983
    ldh a, [$8c]
    ld [$d717], a
    and a
    jp z, Jump_003_7159

    ld hl, $c101
    ld d, $00
    ldh a, [$8c]
    swap a
    ld e, a
    add hl, de
    res 7, [hl]
    call Call_000_3555
    ld a, [hl]
    cp $10
    jp nz, Jump_003_7159

    ld hl, $cd60
    bit 6, [hl]
    set 6, [hl]
    ret z

    ldh a, [$b4]
    and $f0
    ret z

    ld a, $5a
    call Call_000_3eb4
    ld a, [$d71b]
    and a
    jp nz, Jump_003_7159

    ldh a, [$b4]
    ld b, a
    ld a, [$c109]
    cp $04
    jr z, jr_003_7105

    cp $08
    jr z, jr_003_710d

    cp $0c
    jr z, jr_003_7115

    bit 7, b
    ret z

    ld de, $712b
    jr jr_003_711b

jr_003_7105:
    bit 6, b
    ret z

    ld de, $7129
    jr jr_003_711b

jr_003_710d:
    bit 5, b
    ret z

    ld de, $712d
    jr jr_003_711b

jr_003_7115:
    bit 4, b
    ret z

    ld de, $712f

jr_003_711b:
    call Call_000_363d
    ld a, $a8
    call Call_000_2238
    ld hl, $cd60
    set 1, [hl]
    ret


    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld hl, $60fb
    ld b, $1e
    call Call_000_3e84
    call Call_003_4063
    ld [$cd6b], a
    call Call_003_7159
    set 7, [hl]
    ld a, [$d717]
    ldh [$8c], a
    call Call_000_3555
    ld [hl], $10
    ld a, $ac
    jp Jump_000_2238


Call_003_7159:
Jump_003_7159:
    ld hl, $cd60
    res 1, [hl]
    res 6, [hl]
    ret


    ld de, $d162
    ld a, [$cc49]
    and $0f
    jr z, jr_003_716e

    ld de, $d89b

jr_003_716e:
    ld a, [de]
    inc a
    cp $07
    ret nc

    ld [de], a
    ld a, [de]
    ldh [$e4], a
    add e
    ld e, a
    jr nc, jr_003_717c

    inc d

jr_003_717c:
    ld a, [$cf90]
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    ld hl, $d272
    ld a, [$cc49]
    and $0f
    jr z, jr_003_7191

    ld hl, $d9ab

jr_003_7191:
    ldh a, [$e4]
    dec a
    call Call_000_3a6a
    ld d, h
    ld e, l
    ld hl, $d157
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cc49]
    and a
    jr nz, jr_003_71bb

    ld hl, $d2b4
    ldh a, [$e4]
    dec a
    call Call_000_3a6a
    ld a, $02
    ld [$d07c], a
    ld a, $4e
    call Call_000_3eb4

jr_003_71bb:
    ld hl, $d16a
    ld a, [$cc49]
    and $0f
    jr z, jr_003_71c8

    ld hl, $d8a3

jr_003_71c8:
    ldh a, [$e4]
    dec a
    ld bc, $002c
    call Call_000_3a74
    ld e, l
    ld d, h
    push hl
    ld a, [$cf90]
    ld [$d0b4], a
    call Call_000_132f
    ld hl, $d0b7
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    push hl
    ld a, [$cc49]
    and $0f
    ld a, $98
    ld b, $88
    jr nz, jr_003_722f

    ld a, [$cf90]
    ld [$d11d], a
    push de
    ld a, $3a
    call Call_000_3eb4
    pop de
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $02
    ld hl, $d2f6
    call Call_003_74ef
    ld a, c
    ld [$d152], a
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $01
    push bc
    call Call_003_74ef
    pop bc
    ld hl, $d309
    call Call_003_74ef
    pop hl
    push hl
    ld a, [$d056]
    and a
    jr nz, jr_003_7252

    call Call_000_3e6d
    ld b, a
    call Call_000_3e6d

jr_003_722f:
    push bc
    ld bc, $001b
    add hl, bc
    pop bc
    ld [hl+], a
    ld [hl], b
    ld bc, $fff4
    add hl, bc
    ld a, $01
    ld c, a
    xor a
    ld b, a
    call Call_000_393f
    ldh a, [$97]
    ld [de], a
    inc de
    ldh a, [$98]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    jr jr_003_7270

jr_003_7252:
    ld bc, $001b
    add hl, bc
    ld a, [$cff0]
    ld [hl+], a
    ld a, [$cff1]
    ld [hl], a
    ld a, [$cfe5]
    ld [de], a
    inc de
    ld a, [$cfe6]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld a, [$cfe8]
    ld [de], a
    inc de

jr_003_7270:
    ld hl, $d0bd
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [$cf90]
    cp $26
    jr nz, jr_003_7285

    ld a, $60
    ld [de], a

jr_003_7285:
    ld hl, $d0c6
    ld a, [hl+]
    inc de
    push de
    ld [de], a
    ld a, [hl+]
    inc de
    ld [de], a
    ld a, [hl+]
    inc de
    ld [de], a
    ld a, [hl+]
    inc de
    ld [de], a
    push de
    dec de
    dec de
    dec de
    xor a
    ld [$cee9], a
    ld a, $3e
    call Call_000_3eb4
    pop de
    ld a, [$d358]
    inc de
    ld [de], a
    ld a, [$d359]
    inc de
    ld [de], a
    push de
    ld a, [$d126]
    ld d, a
    ld hl, $4dc0
    ld b, $16
    call Call_000_3e84
    pop de
    inc de
    ldh a, [$96]
    ld [de], a
    inc de
    ldh a, [$97]
    ld [de], a
    inc de
    ldh a, [$98]
    ld [de], a
    xor a
    ld b, $0a

jr_003_72ca:
    inc de
    ld [de], a
    dec b
    jr nz, jr_003_72ca

    inc de
    inc de
    pop hl
    call Call_003_72fc
    inc de
    ld a, [$d126]
    ld [de], a
    inc de
    ld a, [$d056]
    dec a
    jr nz, jr_003_72ed

    ld hl, $cff3
    ld bc, $000a
    call Call_000_00b1
    pop hl
    jr jr_003_72f7

jr_003_72ed:
    pop hl
    ld bc, $0010
    add hl, bc
    ld b, $00
    call Call_000_392b

jr_003_72f7:
    scf
    ret


    call Call_000_3ed7

Call_003_72fc:
    ld b, $04

jr_003_72fe:
    ld a, [hl+]
    and a
    jr z, jr_003_731d

    dec a
    push hl
    push de
    push bc
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a74
    ld de, $cd6d
    ld a, $0e
    call Call_000_009d
    pop bc
    pop de
    pop hl
    ld a, [$cd72]

jr_003_731d:
    inc de
    ld [de], a
    dec b
    jr nz, jr_003_72fe

    ret


    ld hl, $d162
    ld a, [hl]
    cp $06
    scf
    ret z

    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cf90]
    ld [hl+], a
    ld [hl], $ff
    ld hl, $d16a
    ld a, [$d162]
    dec a
    ld bc, $002c
    call Call_000_3a74
    ld e, l
    ld d, h
    ld hl, $cf97
    call Call_000_00b1
    ld hl, $d272
    ld a, [$d162]
    dec a
    call Call_000_3a6a
    ld d, h
    ld e, l
    ld hl, $d9ab
    ld a, [$cf91]
    call Call_000_3a6a
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d2b4
    ld a, [$d162]
    dec a
    call Call_000_3a6a
    ld d, h
    ld e, l
    ld hl, $d9ed
    ld a, [$cf91]
    call Call_000_3a6a
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cf90]
    ld [$d11d], a
    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    dec a
    ld c, a
    ld b, $01
    ld hl, $d2f6
    push bc
    call Call_003_74ef
    pop bc
    ld hl, $d309
    call Call_003_74ef
    and a
    ret


    ld a, [$cf94]
    and a
    jr z, jr_003_73bf

    cp $02
    jr z, jr_003_73bf

    cp $03
    ld hl, $da5e
    jr z, jr_003_73fb

    ld hl, $da7f
    ld a, [hl]
    cp $14
    jr nz, jr_003_73c9

    jr jr_003_73c7

jr_003_73bf:
    ld hl, $d162
    ld a, [hl]
    cp $06
    jr nz, jr_003_73c9

jr_003_73c7:
    scf
    ret


jr_003_73c9:
    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$cf94]
    cp $02
    ld a, [$da5e]
    jr z, jr_003_73dc

    ld a, [$cf90]

jr_003_73dc:
    ld [hl+], a
    ld [hl], $ff
    ld a, [$cf94]
    dec a
    ld hl, $d16a
    ld bc, $002c
    ld a, [$d162]
    jr nz, jr_003_73f7

    ld hl, $da95
    ld bc, $0021
    ld a, [$da7f]

jr_003_73f7:
    dec a
    call Call_000_3a74

jr_003_73fb:
    push hl
    ld e, l
    ld d, h
    ld a, [$cf94]
    and a
    ld hl, $da95
    ld bc, $0021
    jr z, jr_003_7417

    cp $02
    ld hl, $da5e
    jr z, jr_003_741d

    ld hl, $d16a
    ld bc, $002c

jr_003_7417:
    ld a, [$cf91]
    call Call_000_3a74

jr_003_741d:
    push hl
    push de
    ld bc, $0021
    call Call_000_00b1
    pop de
    pop hl
    ld a, [$cf94]
    and a
    jr z, jr_003_743a

    cp $02
    jr z, jr_003_743a

    ld bc, $0021
    add hl, bc
    ld a, [hl]
    inc de
    inc de
    inc de
    ld [de], a

jr_003_743a:
    ld a, [$cf94]
    cp $03
    ld de, $da53
    jr z, jr_003_7459

    dec a
    ld hl, $d272
    ld a, [$d162]
    jr nz, jr_003_7453

    ld hl, $dd29
    ld a, [$da7f]

jr_003_7453:
    dec a
    call Call_000_3a6a
    ld d, h
    ld e, l

jr_003_7459:
    ld hl, $dd29
    ld a, [$cf94]
    and a
    jr z, jr_003_746c

    ld hl, $da53
    cp $02
    jr z, jr_003_7472

    ld hl, $d272

jr_003_746c:
    ld a, [$cf91]
    call Call_000_3a6a

jr_003_7472:
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cf94]
    cp $03
    ld de, $da48
    jr z, jr_003_7497

    dec a
    ld hl, $d2b4
    ld a, [$d162]
    jr nz, jr_003_7491

    ld hl, $de05
    ld a, [$da7f]

jr_003_7491:
    dec a
    call Call_000_3a6a
    ld d, h
    ld e, l

jr_003_7497:
    ld hl, $de05
    ld a, [$cf94]
    and a
    jr z, jr_003_74aa

    ld hl, $da48
    cp $02
    jr z, jr_003_74b0

    ld hl, $d2b4

jr_003_74aa:
    ld a, [$cf91]
    call Call_000_3a6a

jr_003_74b0:
    ld bc, $000b
    call Call_000_00b1
    pop hl
    ld a, [$cf94]
    cp $01
    jr z, jr_003_74ea

    cp $03
    jr z, jr_003_74ea

    push hl
    srl a
    add $02
    ld [$cc49], a
    call Call_000_1132
    ld b, $16
    ld hl, $4d99
    call Call_000_3e84
    ld a, d
    ld [$d126], a
    pop hl
    ld bc, $0021
    add hl, bc
    ld [hl+], a
    ld d, h
    ld e, l
    ld bc, $ffee
    add hl, bc
    ld b, $01
    call Call_000_392b

jr_003_74ea:
    and a
    ret


    call Call_000_3ed7

Call_003_74ef:
    push hl
    push de
    push bc
    ld a, c
    ld d, a
    and $07
    ld e, a
    ld a, d
    srl a
    srl a
    srl a
    add l
    ld l, a
    jr nc, jr_003_7503

    inc h

jr_003_7503:
    inc e
    ld d, $01

jr_003_7506:
    dec e
    jr z, jr_003_750d

    sla d
    jr jr_003_7506

jr_003_750d:
    ld a, b
    and a
    jr z, jr_003_751b

    cp $02
    jr z, jr_003_7523

    ld b, [hl]
    ld a, d
    or b
    ld [hl], a
    jr jr_003_7526

jr_003_751b:
    ld b, [hl]
    ld a, d
    xor $ff
    and b
    ld [hl], a
    jr jr_003_7526

jr_003_7523:
    ld b, [hl]
    ld a, d
    and b

jr_003_7526:
    pop bc
    pop de
    pop hl
    ld c, a
    ret


    ld hl, $d163
    ld de, $d16b

jr_003_7531:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_758c

    push hl
    push de
    ld hl, $0003
    add hl, de
    xor a
    ld [hl], a
    push de
    ld b, $04

jr_003_7541:
    ld hl, $0007
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_003_7571

    dec a
    ld hl, $001c
    add hl, de
    push hl
    push de
    push bc
    ld hl, $4000
    ld bc, $0006
    call Call_000_3a74
    ld de, $cd6d
    ld a, $0e
    call Call_000_009d
    ld a, [$cd72]
    pop bc
    pop de
    pop hl
    inc de
    push bc
    ld b, a
    ld a, [hl]
    and $c0
    add b
    ld [hl], a
    pop bc

jr_003_7571:
    dec b
    jr nz, jr_003_7541

    pop de
    ld hl, $0021
    add hl, de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    pop de
    pop hl
    push hl
    ld bc, $002c
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    jr jr_003_7531

jr_003_758c:
    xor a
    ld [$cf91], a
    ld [$d11d], a
    ld a, [$d162]
    ld b, a

jr_003_7597:
    push bc
    call Call_003_654a
    pop bc
    ld hl, $cf91
    inc [hl]
    dec b
    jr nz, jr_003_7597

    ret


    call Call_000_3ed7
    xor a
    ldh [$a5], a
    ldh [$a6], a
    ldh [$a7], a
    ld d, $01

jr_003_75b0:
    ldh a, [$a2]
    and $f0
    jr nz, jr_003_75e1

    inc d
    ldh a, [$a2]
    swap a
    and $f0
    ld b, a
    ldh a, [$a3]
    swap a
    ldh [$a3], a
    and $0f
    or b
    ldh [$a2], a
    ldh a, [$a3]
    and $f0
    ld b, a
    ldh a, [$a4]
    swap a
    ldh [$a4], a
    and $0f
    or b
    ldh [$a3], a
    ldh a, [$a4]
    and $f0
    ldh [$a4], a
    jr jr_003_75b0

jr_003_75e1:
    push de
    push de
    call Call_003_7686
    pop de
    ld a, b
    swap a
    and $f0
    ldh [$a5], a
    dec d
    jr z, jr_003_7642

    push de
    call Call_003_765d
    call Call_003_7686
    pop de
    ldh a, [$a5]
    or b
    ldh [$a5], a
    dec d
    jr z, jr_003_7642

    push de
    call Call_003_765d
    call Call_003_7686
    pop de
    ld a, b
    swap a
    and $f0
    ldh [$a6], a
    dec d
    jr z, jr_003_7642

    push de
    call Call_003_765d
    call Call_003_7686
    pop de
    ldh a, [$a6]
    or b
    ldh [$a6], a
    dec d
    jr z, jr_003_7642

    push de
    call Call_003_765d
    call Call_003_7686
    pop de
    ld a, b
    swap a
    and $f0
    ldh [$a7], a
    dec d
    jr z, jr_003_7642

    push de
    call Call_003_765d
    call Call_003_7686
    pop de
    ldh a, [$a7]
    or b
    ldh [$a7], a

jr_003_7642:
    ldh a, [$a5]
    ldh [$a2], a
    ldh a, [$a6]
    ldh [$a3], a
    ldh a, [$a7]
    ldh [$a4], a
    pop de
    ld a, $06
    sub d
    and a
    ret z

jr_003_7654:
    push af
    call Call_003_765d
    pop af
    dec a
    jr nz, jr_003_7654

    ret


Call_003_765d:
    ldh a, [$a4]
    swap a
    and $0f
    ld b, a
    ldh a, [$a3]
    swap a
    ldh [$a3], a
    and $f0
    or b
    ldh [$a4], a
    ldh a, [$a3]
    and $0f
    ld b, a
    ldh a, [$a2]
    swap a
    ldh [$a2], a
    and $f0
    or b
    ldh [$a3], a
    ldh a, [$a2]
    and $0f
    ldh [$a2], a
    ret


Call_003_7686:
    ld bc, $0003

jr_003_7689:
    ld de, $ff9f
    ld hl, $ffa2
    push bc
    call Call_000_3a7b
    pop bc
    ret c

    inc b
    ld de, $ffa1
    ld hl, $ffa4
    push bc
    call Call_003_76bf
    pop bc
    jr jr_003_7689

    call Call_000_3ed7
    and a
    ld b, c

jr_003_76a8:
    ld a, [de]
    adc [hl]
    daa
    ld [de], a
    dec de
    dec hl
    dec c
    jr nz, jr_003_76a8

    jr nc, jr_003_76bb

    ld a, $99
    inc de

jr_003_76b6:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_76b6

jr_003_76bb:
    ret


    call Call_000_3ed7

Call_003_76bf:
    and a
    ld b, c

jr_003_76c1:
    ld a, [de]
    sbc [hl]
    daa
    ld [de], a
    dec de
    dec hl
    dec c
    jr nz, jr_003_76c1

    jr nc, jr_003_76d5

    ld a, $00
    inc de

jr_003_76cf:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_76cf

    scf

jr_003_76d5:
    ret


    call Call_000_3e6d
    ldh a, [$d4]
    ld [$d358], a
    call Call_000_3e6d
    ldh a, [$d3]
    ld [$d359], a
    ld a, $ff
    ld [$d71a], a
    ld a, $5a
    ld [$d46f], a
    ld a, $80
    ld [$d470], a
    ld hl, $d162
    call Call_003_7730
    ld hl, $da7f
    call Call_003_7730
    ld hl, $d31c
    call Call_003_7730
    ld hl, $d539
    call Call_003_7730
    ld hl, $d347
    ld a, $30
    ld [hl-], a
    xor a
    ld [hl+], a
    inc hl
    ld [hl], a
    ld [$cc49], a
    ld hl, $d355
    ld [hl+], a
    ld [hl], a
    ld hl, $d5a3
    ld [hl+], a
    ld [hl], a
    ld hl, $d5ef
    ld bc, $00c8
    call Call_000_166e
    jp Jump_003_6ff1


Call_003_7730:
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ret


    call Call_000_3ed7
    ld hl, $d31c

jr_003_773b:
    inc hl
    ld a, [hl+]
    cp $ff
    jr z, jr_003_7747

    cp b
    jr nz, jr_003_773b

    ld a, [hl]
    ld b, a
    ret


jr_003_7747:
    ld b, $00
    ret


    xor a
    ld hl, $ff97
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $cc97
    ld de, $0000

Jump_003_7758:
    ldh a, [$99]
    ld b, a
    ldh a, [$95]
    call Call_000_3636
    ld d, a
    and a
    jr nz, jr_003_776a

    ldh a, [$98]
    set 0, a
    ldh [$98], a

jr_003_776a:
    ldh a, [$9a]
    ld b, a
    ldh a, [$96]
    call Call_000_3636
    ld e, a
    and a
    jr nz, jr_003_777c

    ldh a, [$98]
    set 1, a
    ldh [$98], a

jr_003_777c:
    ldh a, [$98]
    cp $03
    jr z, jr_003_77b6

    ld a, e
    cp d
    jr c, jr_003_779a

    ldh a, [$9d]
    bit 1, a
    jr nz, jr_003_7790

    ld d, $c0
    jr jr_003_7792

jr_003_7790:
    ld d, $80

jr_003_7792:
    ldh a, [$9a]
    add $01
    ldh [$9a], a
    jr jr_003_77ac

jr_003_779a:
    ldh a, [$9d]
    bit 0, a
    jr nz, jr_003_77a4

    ld d, $00
    jr jr_003_77a6

jr_003_77a4:
    ld d, $40

jr_003_77a6:
    ldh a, [$99]
    add $01
    ldh [$99], a

jr_003_77ac:
    ld a, d
    ld [hl+], a
    ldh a, [$97]
    inc a
    ldh [$97], a
    jp Jump_003_7758


jr_003_77b6:
    ld [hl], $ff
    ret


    xor a
    ldh [$9d], a
    ld a, [$c104]
    ld d, a
    ld a, [$c106]
    ld e, a
    ld hl, $c100
    ldh a, [$95]
    add l
    add $04
    ld l, a
    jr nc, jr_003_77d0

    inc h

jr_003_77d0:
    ld a, d
    ld b, a
    ld a, [hl+]
    call Call_000_3636
    jr nc, jr_003_77e3

    push hl
    ld hl, $ff9d
    bit 0, [hl]
    set 0, [hl]
    pop hl
    jr jr_003_77ec

jr_003_77e3:
    push hl
    ld hl, $ff9d
    bit 0, [hl]
    res 0, [hl]
    pop hl

jr_003_77ec:
    push hl
    ld hl, $ffe5
    ld [hl+], a
    ld a, $10
    ld [hl+], a
    call Call_000_366e
    ld a, [hl]
    ldh [$95], a
    pop hl
    inc hl
    ld b, e
    ld a, [hl]
    call Call_000_3636
    jr nc, jr_003_780e

    push hl
    ld hl, $ff9d
    bit 1, [hl]
    set 1, [hl]
    pop hl
    jr jr_003_7817

jr_003_780e:
    push hl
    ld hl, $ff9d
    bit 1, [hl]
    res 1, [hl]
    pop hl

jr_003_7817:
    ldh [$e5], a
    ld a, $10
    ldh [$e6], a
    call Call_000_366e
    ldh a, [$e7]
    ldh [$96], a
    ldh a, [$9b]
    and a
    ret z

    ldh a, [$9d]
    cpl
    and $03
    ldh [$9d], a
    ret


    ldh a, [$95]
    ld [$cd37], a
    dec a
    ld de, $ccd3
    ld hl, $cc97
    add l
    ld l, a
    jr nc, jr_003_7841

    inc h

jr_003_7841:
    ld a, [hl-]
    call Call_003_784f
    ld [de], a
    inc de
    ldh a, [$95]
    dec a
    ldh [$95], a
    jr nz, jr_003_7841

    ret


Call_003_784f:
    push hl
    ld b, a
    ld hl, $7862

jr_003_7854:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_7860

    cp b
    jr z, jr_003_785f

    inc hl
    jr jr_003_7854

jr_003_785f:
    ld a, [hl]

jr_003_7860:
    pop hl
    ret


    ld b, b
    ld b, b
    nop
    add b
    add b
    jr nz, @-$3e

    db $10
    rst $38
    ret


    call Call_000_3ed7

Call_003_786f:
    push hl
    xor a
    ld hl, $ff96
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], $30
    call Call_000_38a5
    ld a, d
    and a
    jr z, jr_003_789c

    srl d
    rr e
    srl d
    rr e
    ldh a, [$97]
    ld b, a
    ldh a, [$98]
    srl b
    rr a
    srl b
    rr a
    ldh [$98], a
    ld a, b
    ldh [$97], a

jr_003_789c:
    ld a, e
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$98]
    ld e, a
    pop hl
    and a
    ret nz

    ld e, $01
    ret


    push hl
    ld hl, $ceeb
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    push de
    push bc
    call Call_003_7967
    ld a, e
    ld [$cefe], a
    ld a, d
    ld [$cefd], a
    pop bc
    pop de
    call Call_003_7961
    ret z

    ld a, $ff
    jr c, jr_003_78d2

    ld a, $01

jr_003_78d2:
    ld [$ceef], a
    call Call_000_3ed7
    ld a, [$ceed]
    ld e, a
    ld a, [$ceee]
    ld d, a

jr_003_78e0:
    push de
    ld a, [$ceeb]
    ld c, a
    ld a, [$ceec]
    ld b, a
    call Call_003_7961
    jr z, jr_003_7926

    jr nc, jr_003_7900

    dec bc
    ld a, c
    ld [$ceed], a
    ld a, b
    ld [$ceee], a
    call Call_003_79be
    ld a, e
    sub d
    jr jr_003_790e

jr_003_7900:
    inc bc
    ld a, c
    ld [$ceed], a
    ld a, b
    ld [$ceee], a
    call Call_003_79be
    ld a, d
    sub e

jr_003_790e:
    call Call_003_7985
    and a
    jr z, jr_003_7917

    call Call_003_7941

jr_003_7917:
    ld a, [$ceed]
    ld [$ceeb], a
    ld a, [$ceee]
    ld [$ceec], a
    pop de
    jr jr_003_78e0

jr_003_7926:
    pop de
    ld a, e
    ld [$ceeb], a
    ld a, d
    ld [$ceec], a
    or e
    jr z, jr_003_7936

    call Call_003_79be
    ld d, e

jr_003_7936:
    call Call_003_7985
    ld a, $01
    call Call_003_7941
    jp Jump_000_3ddb


Call_003_7941:
    push hl

jr_003_7942:
    push af
    push de
    ld d, $06
    call Call_000_10f8
    ld c, $02
    call Call_000_372f
    pop de
    ld a, [$ceef]
    add e
    cp $31
    jr nc, jr_003_795e

    ld e, a
    pop af
    dec a
    jr nz, jr_003_7942

    pop hl
    ret


jr_003_795e:
    pop af
    pop hl
    ret


Call_003_7961:
    ld a, d
    sub b
    ret nz

    ld a, e
    sub c
    ret


Call_003_7967:
    ld a, d
    sub b
    jr c, jr_003_7974

    jr z, jr_003_797b

jr_003_796d:
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ret


jr_003_7974:
    ld a, c
    sub e
    ld e, a
    ld a, b
    sbc d
    ld d, a
    ret


jr_003_797b:
    ld a, e
    sub c
    jr c, jr_003_7974

    jr nz, jr_003_796d

    ld de, $0000
    ret


Call_003_7985:
    push af
    push de
    ld a, [$cf93]
    and a
    jr z, jr_003_79bb

    ld a, [$ceeb]
    ld [$cef1], a
    ld a, [$ceec]
    ld [$cef0], a
    push hl
    ld de, $0015
    ldh a, [$fa]
    bit 0, a
    jr z, jr_003_79a6

    ld de, $0009

jr_003_79a6:
    add hl, de
    push hl
    ld a, $7f
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld de, $cef0
    ld bc, $0203
    call Call_000_3c5b
    call Call_000_1e64
    pop hl

jr_003_79bb:
    pop de
    pop af
    ret


Call_003_79be:
    push hl
    ld hl, $cee9
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
    push hl
    push de
    call Call_003_786f
    ld a, e
    pop de
    pop bc
    push af
    call Call_003_786f
    pop af
    ld d, e
    ld e, a
    pop hl
    ret


    ld a, [$c109]
    cp $04
    jr nz, jr_003_7a0d

    ld a, [$d366]
    ld b, a
    ld a, [$c434]
    ld c, a
    ld hl, $7a19

jr_003_79f0:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_7a0d

    cp b
    jr nz, jr_003_7a09

    ld a, [hl+]
    cp c
    jr nz, jr_003_7a0a

    ld a, [hl]
    push af
    call Call_000_3c29
    pop af
    call Call_000_3f3a
    xor a
    ldh [$db], a
    ret


jr_003_7a09:
    inc hl

jr_003_7a0a:
    inc hl
    jr jr_003_79f0

jr_003_7a0d:
    ld a, $ff
    ldh [$db], a
    ld b, $14
    ld hl, $65d8
    jp Jump_000_3e84


    rla
    jr nc, @+$3e

    ld [$413d], sp
    ld [$421e], sp
    inc de
    ld [hl-], a
    ld b, d
    ld bc, $4232
    inc d
    jr z, jr_003_7a6d

    ld [de], a
    ld d, $43
    rlca
    dec e
    ld b, d
    dec b
    dec e
    ld b, d
    inc c
    ld [hl+], a
    ld b, d
    ld [bc], a
    ld d, h
    ld b, h
    ld [bc], a
    ld d, l
    ld b, h
    ld b, $54
    ld b, h
    ld b, $55
    ld b, h
    ld [de], a
    ld d, b
    ld b, h
    ld [de], a
    ld d, d
    ld b, h
    dec c
    ld [hl], $42
    rst $38
    ld [$6721], sp
    ld a, d
    call Call_000_3c36
    ld a, [$d361]
    bit 0, a
    ld hl, $7a6c
    jr nz, jr_003_7a61

    ld hl, $7a71

jr_003_7a61:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    cpl
    ld [hl], h
    daa
    ld d, b
    rla

jr_003_7a6d:
    ccf
    ld [hl], h
    daa
    ld d, b
    rla
    ld l, [hl]
    ld [hl], h
    daa
    ld d, b
    ld [$9121], sp
    ld a, d
    ld a, [$d366]
    cp $13
    jr nz, jr_003_7a8b

    ld a, [$c420]
    cp $38
    jr nz, jr_003_7a8b

    ld hl, $7a96

jr_003_7a8b:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    sbc c
    ld [hl], h
    daa
    ld d, b
    rla
    or [hl]
    ld [hl], h
    daa
    ld d, b
    rla
    db $d3
    ld [hl], h
    daa
    ld d, b
    rla
    jp hl


    ld [hl], h
    daa
    ld b, $08
    ld a, $01
    ld [$cc3c], a
    ld hl, $d72f
    set 6, [hl]
    call Call_000_3dd8
    xor a
    ldh [$b0], a
    inc a
    ldh [$ba], a
    call Call_000_3683
    ld b, $1c
    ld hl, $4eb4
    call Call_000_3e84
    ld hl, $d72f
    res 6, [hl]
    ld de, $23d2
    push de
    ldh a, [$b8]
    push af
    jp Jump_000_28d8


    rla
    rst $30
    ld [hl], h
    daa
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
