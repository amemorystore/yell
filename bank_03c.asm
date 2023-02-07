; disasSembly of "yell.gbc"
SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    ld a, e
    ld e, a
    ld d, $00
    ld hl, $408e
    add hl, de
    add hl, de
    add hl, de
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $04

jr_03c_4011:
    dec c
    jr z, jr_03c_4019

    call Call_000_1e64
    jr jr_03c_4011

jr_03c_4019:
    di
    push bc
    push hl
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    xor a
    ldh [rNR30], a
    ld hl, $ff30
    ld de, $cbfc

jr_03c_402d:
    ld a, [hl]
    ld [de], a
    inc de
    ld a, $ff
    ld [hl+], a
    ld a, l
    cp $40
    jr nz, jr_03c_402d

    ld a, $80
    ldh [rNR30], a
    ldh a, [rNR51]
    or $44
    ldh [rNR51], a
    ld a, $ff
    ldh [rNR31], a
    ld a, $20
    ldh [rNR32], a
    ld a, $ff
    ldh [rNR33], a
    ld a, $87
    ldh [rNR34], a
    pop hl
    pop bc
    call Call_000_0150
    xor a
    ld [$c0f3], a
    ld [$c0f4], a
    ld a, $80
    ldh [rNR52], a
    xor a
    ldh [rNR30], a
    ld hl, $ff30
    ld de, $cbfc

jr_03c_406b:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, l
    cp $40
    jr nz, jr_03c_406b

    ld a, $80
    ldh [rNR30], a
    ldh a, [rNR51]
    and $bb
    ldh [rNR51], a
    xor a
    ld [$c02a], a
    ld [$c02b], a
    ld [$c02c], a
    ld [$c02d], a
    ldh a, [$b8]
    ei
    ret


    ld hl, $4000
    ld hl, $491a
    ld hl, $4fdc
    ld hl, $59ee
    ld [hl+], a
    nop
    ld b, b
    ld [hl+], a
    ld b, d
    ld d, b
    ld [hl+], a
    ld d, h
    ld h, d
    inc hl
    nop
    ld b, b
    inc hl
    jp z, Jump_000_2350

    inc c
    ld e, [hl]
    inc h
    nop
    ld b, b
    inc h
    ld [hl+], a
    ld b, a
    inc h
    and h
    ld d, h
    dec h
    nop
    ld b, b
    dec h
    sbc d
    ld e, b
    ld sp, $4000
    inc [hl]
    nop
    ld b, b
    ld sp, $549a
    inc sp
    nop
    ld b, b
    ld [hl-], a
    nop
    ld b, b
    ld [hl-], a
    ld [bc], a
    ld h, b
    ld sp, $63a4
    inc [hl]
    ld h, d
    ld c, b
    inc sp
    ld [hl-], a
    ld d, [hl]
    inc [hl]
    inc a
    ld d, a
    inc sp
    ld e, h
    ld [hl], d
    dec [hl]
    nop
    ld b, b
    dec [hl]
    ld e, d
    ld c, e
    dec [hl]
    and h
    ld e, l
    dec [hl]
    adc $69
    dec [hl]
    add b
    ld l, [hl]
    ld [hl], $00
    ld b, b
    ld [hl], $8a
    ld b, l
    ld [hl], $3c
    ld d, d
    scf
    nop
    ld b, b
    scf
    ld a, [hl+]

jr_03c_40f9:
    ld d, d
    jr c, jr_03c_40fc

jr_03c_40fc:
    ld b, b
    jr c, jr_03c_40f9

    ld c, l
    scf
    inc c
    ld l, [hl]
    jr c, @+$66

    ld e, d
    ld [hl], $46
    ld h, a
    jr c, @+$78

    ld l, c
    ld a, [$c103]
    ld b, a
    ld a, [$c105]
    ld c, a
    ld hl, $cfc4
    dec [hl]
    jr nz, jr_03c_412d

    ld hl, $d42f
    res 5, [hl]
    ld a, [$d360]
    add b
    ld [$d360], a
    ld a, [$d361]
    add c
    ld [$d361], a

jr_03c_412d:
    ld a, [$cfc4]
    cp $07
    jp nz, Jump_03c_4220

    ld a, c
    cp $01
    jr nz, jr_03c_414c

    ld a, [$d525]
    ld e, a
    and $e0
    ld d, a
    ld a, e
    add $02
    and $1f
    or d
    ld [$d525], a
    jr jr_03c_4197

jr_03c_414c:
    cp $ff
    jr nz, jr_03c_4162

    ld a, [$d525]
    ld e, a
    and $e0
    ld d, a
    ld a, e
    sub $02
    and $1f
    or d
    ld [$d525], a
    jr jr_03c_4197

jr_03c_4162:
    ld a, b
    cp $01
    jr nz, jr_03c_417e

    ld a, [$d525]
    add $40
    ld [$d525], a
    jr nc, jr_03c_4197

    ld a, [$d526]
    inc a
    and $03
    or $98
    ld [$d526], a
    jr jr_03c_4197

jr_03c_417e:
    cp $ff
    jr nz, jr_03c_4197

    ld a, [$d525]
    sub $40
    ld [$d525], a
    jr nc, jr_03c_4197

    ld a, [$d526]
    dec a
    and $03
    or $98
    ld [$d526], a

jr_03c_4197:
    ld a, c
    and a
    jr z, jr_03c_419b

jr_03c_419b:
    ld hl, $d363
    ld a, [hl]
    add c
    ld [hl], a
    cp $02
    jr nz, jr_03c_41b3

    xor a
    ld [hl], a
    ld hl, $d4e2
    inc [hl]
    ld de, $d35e
    call Call_03c_4248
    jr jr_03c_41f5

jr_03c_41b3:
    cp $ff
    jr nz, jr_03c_41c6

    ld a, $01
    ld [hl], a
    ld hl, $d4e2
    dec [hl]
    ld de, $d35e
    call Call_03c_4252
    jr jr_03c_41f5

jr_03c_41c6:
    ld hl, $d362
    ld a, [hl]
    add b
    ld [hl], a
    cp $02
    jr nz, jr_03c_41e1

    xor a
    ld [hl], a
    ld hl, $d4e1
    inc [hl]
    ld de, $d35e
    ld a, [$d368]
    call Call_03c_425c
    jr jr_03c_41f5

jr_03c_41e1:
    cp $ff
    jr nz, jr_03c_41f5

    ld a, $01
    ld [hl], a
    ld hl, $d4e1
    dec [hl]
    ld de, $d35e
    ld a, [$d368]
    call Call_03c_4268

jr_03c_41f5:
    call Call_000_0b06
    ld a, [$c103]
    cp $01
    jr nz, jr_03c_4204

    call Call_000_0bb6
    jr jr_03c_4220

jr_03c_4204:
    cp $ff
    jr nz, jr_03c_420d

    call Call_000_0b95
    jr jr_03c_4220

jr_03c_420d:
    ld a, [$c105]
    cp $01
    jr nz, jr_03c_4219

    call Call_000_0bd7
    jr jr_03c_4220

jr_03c_4219:
    cp $ff
    jr nz, jr_03c_4220

    call Call_000_0c0c

Jump_03c_4220:
jr_03c_4220:
    ld a, [$c103]
    add a
    ld b, a
    ld a, [$c105]
    add a
    ld c, a
    ld hl, $c114
    ld e, $0f

jr_03c_422f:
    ld a, [hl]
    sub b
    ld [hl+], a
    inc l
    ld a, [hl]
    sub c
    ld [hl], a
    ld a, $0e
    add l
    ld l, a
    dec e
    jr nz, jr_03c_422f

    ldh a, [$af]
    add b
    ldh [$af], a
    ldh a, [$ae]
    add c
    ldh [$ae], a
    ret


Call_03c_4248:
    ld a, [de]
    add $01
    ld [de], a
    ret nc

    inc de
    ld a, [de]
    inc a
    ld [de], a
    ret


Call_03c_4252:
    ld a, [de]
    sub $01
    ld [de], a
    ret nc

    inc de
    ld a, [de]
    dec a
    ld [de], a
    ret


Call_03c_425c:
    add $06
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    ret nc

    inc de
    ld a, [de]
    inc a
    ld [de], a
    ret


Call_03c_4268:
    add $06
    ld b, a
    ld a, [de]
    sub b
    ld [de], a
    ret nc

    inc de
    ld a, [de]
    dec a
    ld [de], a
    ret


    xor a
    ld [$d434], a
    xor a
    ld [$cf0b], a
    ld [$d6ff], a
    ld [$d056], a
    ld [$d35c], a
    ld [$cf10], a
    ldh [$b4], a
    ld [$cc57], a
    ld [$cd60], a
    ldh [$9f], a
    ldh [$a0], a
    ldh [$a1], a
    call Call_000_35c3
    jr c, jr_03c_42c7

    ld a, [$d346]
    ldh [$9f], a
    ld a, [$d347]
    ldh [$a0], a
    ld a, [$d348]
    ldh [$a1], a
    xor a
    ldh [$a2], a
    ldh [$a3], a
    ld a, $02
    ldh [$a4], a
    ld a, $0d
    call Call_000_3eb4
    ldh a, [$a2]
    ld [$d346], a
    ldh a, [$a3]
    ld [$d347], a
    ldh a, [$a4]
    ld [$d348], a

jr_03c_42c7:
    ld hl, $d731
    set 2, [hl]
    res 3, [hl]
    set 6, [hl]
    ld a, $ff
    ld [$cd6b], a
    ld a, $07
    jp Jump_000_3eb4


jr_03c_42da:
    ld a, [$d35d]
    cp $5c
    jr z, jr_03c_42ee

    ld c, a
    ld hl, $42fa

jr_03c_42e5:
    ld a, [hl+]
    cp c
    jr z, jr_03c_42f4

    cp $ff
    jr nz, jr_03c_42e5

    ret


jr_03c_42ee:
    ld hl, $d125
    set 6, [hl]
    ret


jr_03c_42f4:
    ld hl, $d125
    set 5, [hl]
    ret


    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    jp hl


    ld [$d6eb], a
    rst $10
    ret c

    and l
    and [hl]
    add a
    rst $00
    jp z, Jump_03c_6cc6

    jp nz, $f571

    or $f7
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    add b
    rra
    sbc b
    jr nz, jr_03c_42da

    jr nz, @-$76

    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    nop
    ld hl, sp+$18
    inc b
    add sp, $04
    nop
    nop
    ld d, l
    xor d
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld h, b
    sbc a
    ld h, b
    sbc a
    nop
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    rst $38
    ld a, a
    ret nz

    ld a, a
    jp c, Jump_03c_52ff

    ld a, a
    ret nz

    ld h, e
    ret nz

    ld b, c
    ret nz

    rst $38
    nop
    cp $ff
    cp $03
    cp $db
    rst $38
    jp z, $03fe

    cp $03
    cp $03
    ld a, c
    ld h, [hl]
    pop de
    cp [hl]
    ld [hl], a
    ld c, d
    push hl
    sbc e
    db $eb
    rst $18
    rst $38
    sbc e
    ld [hl], l
    ld d, l
    ld hl, $de21
    ld h, [hl]
    rrca
    ld sp, hl
    and d
    rst $18
    xor e
    push de
    db $db
    rst $30
    rst $38
    reti


    xor $ea
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03c_43c1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03c_43ce:
    nop
    nop

jr_03c_43d0:
    nop
    nop
    nop

jr_03c_43d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03c_43dc:
    nop
    nop

jr_03c_43de:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    jr nz, jr_03c_4432

jr_03c_4432:
    nop
    nop
    sub a
    jr nz, jr_03c_43ce

    jr nz, jr_03c_43d0

    jr nz, jr_03c_43d3

    jr nz, jr_03c_43dc

    jr nz, jr_03c_43de

    jr nz, jr_03c_43c1

    rra
    adc b
    nop
    add sp, $04
    add sp, $04
    add sp, $04
    jr jr_03c_4450

    ld hl, sp+$04
    ld hl, sp+$04

jr_03c_4450:
    nop
    ld hl, sp-$78
    nop
    nop
    rst $38
    ld b, $f9
    ld b, $f9
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld d, l
    xor d
    nop
    nop
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    rst $38
    ret nz

    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ld [bc], a
    ld [hl-], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    cp $ff
    nop
    rst $38
    nop
    rst $38
    cpl
    scf
    daa
    jr c, @+$13

    inc e
    rla
    rra
    inc de
    inc e
    add hl, bc
    inc c
    rlca
    rlca
    nop
    nop
    db $f4
    db $ec
    db $e4
    inc e
    ld [$e8f8], sp
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$e0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    or [hl]
    and b
    or [hl]
    and b
    or b
    and b
    cp a
    xor a
    or b
    or b
    cp a
    sbc a
    sbc a
    add b
    add b
    dec b
    rrca
    dec b
    rrca
    dec b
    rrca
    dec b
    rst $38
    push af
    rrca
    rrca
    db $fd
    rst $38
    ld sp, hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    add b
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rst $38
    rst $38
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
    rst $38
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
    cp $fe
    ld bc, $fd01
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    inc bc
    rst $38
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    and b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    dec b
    rst $38
    db $fd
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rst $38
    rlca
    ld hl, sp+$08
    ldh a, [rNR13]
    di
    inc e
    ldh a, [rNR32]
    ldh a, [rNR13]
    ld hl, sp+$08
    rst $38
    rlca
    rst $38
    ldh [$1f], a
    db $10
    rrca
    ret z

    rst $08
    jr c, jr_03c_46ac

    jr c, jr_03c_46ae

    ret z

    rra
    db $10
    rst $38
    ldh [$fd], a
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc

jr_03c_46ac:
    db $fd
    inc bc

jr_03c_46ae:
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    ld bc, $feff
    cp $f2
    ld e, $fe
    ld [de], a
    cp $12
    cp $1e
    nop
    nop
    rst $38
    rst $38
    add b
    rst $38
    ld a, a
    ld a, a
    ld c, a
    ld a, b
    ld e, a
    ld c, b
    ld e, a
    ld c, b
    ld a, a
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    ccf
    ld hl, sp+$28
    ld hl, sp+$2f
    ld hl, sp-$11
    ccf
    cpl
    rst $38
    rst $28
    rst $38
    and b
    or b
    rst $38
    ld hl, sp-$04
    rra
    inc d
    rra
    db $f4
    rra
    rst $30
    db $fc
    db $f4
    rst $38
    rst $30
    rst $38
    rlca
    dec c
    sbc a
    rst $38
    ldh [$ea], a
    or b
    xor a
    and b
    xor d
    cp a
    and b
    cp a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rlca
    and a
    dec b
    rst $30
    dec b
    rla
    db $fd
    rlca
    db $fd
    rst $38
    ld bc, $ffff
    rst $38
    jr nz, @+$22

    ld a, b
    ld e, b
    ld a, [hl]
    ld h, [hl]
    rst $28
    sub l
    ld h, e
    ld a, l
    ret nc

    xor a
    ld h, a
    ld a, a
    rst $38
    ld sp, hl
    inc b
    inc b
    ld e, $1a
    ld a, e
    ld h, a
    pop af
    xor a
    ld b, [hl]
    cp a
    sbc a
    pop af
    or $ce
    sbc b
    ld hl, sp+$01
    ld bc, $0000
    ld [bc], a
    inc bc
    rrca
    ld c, $14
    ld e, $0e
    dec c
    inc a
    ld l, $3e
    cpl
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ldh a, [rSVBK]
    xor b
    ld a, b
    ld [hl], b
    or b
    cp h
    ld [hl], h
    ld a, h
    db $f4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor e
    xor d
    xor e
    cp d
    cp e
    cp d
    cp e
    xor d
    xor e
    xor d
    xor e
    cp d
    cp e
    cp d
    cp e
    ld [bc], a
    inc bc
    ld h, $27
    ld [de], a
    inc de
    ld [hl], $37
    ld [bc], a
    inc bc
    inc l
    ld a, [hl+]
    ld [de], a
    inc de
    inc a
    ld a, [hl-]
    daa
    add hl, hl
    ld [bc], a
    inc bc
    jr c, @+$3b

    ld [de], a
    inc de
    ld a, [hl+]
    dec hl
    ld [bc], a
    inc bc
    ld a, [hl-]
    dec sp
    ld [de], a
    inc de
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
    ld bc, $2601
    add hl, hl
    ld h, $29
    jr nc, jr_03c_498b

    jr nc, @+$33

    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
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
    ld bc, $0001
    nop
    ld b, $07
    nop
    nop
    ld d, $17
    ld de, $1111
    ld de, $1111
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop

jr_03c_498b:
    nop
    ld de, $1111
    ld de, $1111
    ld de, $0011
    nop
    inc h
    dec h
    nop
    nop
    inc [hl]
    dec [hl]
    ld bc, $0a01
    dec bc
    ld bc, $1a01
    dec de
    nop
    nop
    ld b, $07
    nop
    nop
    ld d, $17
    ld bc, $0101
    ld bc, $0101
    ld bc, $1001
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $1111
    ld de, $0411
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    ld b, h
    ld b, l
    ld de, $0811
    add hl, bc
    ld de, $4611
    ld b, a
    ld de, $1811
    add hl, de
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld [bc], a
    inc bc
    ld bc, $1201
    inc de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld b, b
    ld b, c
    nop
    nop
    jr nz, jr_03c_4a3d

    ld bc, $4201
    ld b, e
    ld bc, $3201
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03c_4a3d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld hl, $4a76

jr_03c_4a58:
    ld a, [hl+]
    cp $ff
    ret z

    ld b, a
    ld a, [$d35d]
    cp b
    jr z, jr_03c_4a68

    inc hl
    inc hl
    inc hl
    jr jr_03c_4a58

jr_03c_4a68:
    ld a, [hl+]
    ld c, a
    ld b, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d5cd
    call Call_000_00b1
    ret


    daa
    rlca
    ld a, e
    ld c, d
    rst $38
    ld bc, $02ec
    db $ed
    inc bc
    xor $ff

Call_03c_4a82:
    ld a, [$d471]
    bit 7, a
    ret z

    ld a, [$d6ff]
    and a
    ret nz

    push hl
    push bc
    ld hl, $4b4d
    ld b, $3f
    call Call_000_3e84
    pop bc
    pop hl
    ld a, b
    cp e
    ret nz

    push hl
    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    ld hl, $5831
    ld b, $3f
    call Call_000_3e84
    pop af
    ld [$cfca], a
    pop hl
    call Call_000_159b
    ld hl, $4ba1
    ld b, $3f
    call Call_000_3e84
    ret


    ld d, l
    dec a
    ld l, c
    ld c, a
    ld a, [de]
    ld a, [de]
    ld d, e
    jp $ad9a


    inc sp
    ld d, e
    sbc a
    ld h, $95
    rra
    ld b, $c7
    ld [hl], e
    adc a
    ld c, b
    sbc d
    daa
    add d
    sbc $39
    ld l, h
    and a
    rst $30
    ld b, c
    ld [$9653], a
    cpl
    ld [hl+], a
    ld [$3a65], sp
    rst $28
    ld [c], a
    db $e4
    inc hl
    cp c
    rla
    db $d3
    jp nz, Jump_03c_5445

    rst $28
    ld d, h
    sbc d
    inc d
    db $ec
    xor [hl]
    adc e
    sub b
    adc $46
    dec h
    ld [hl], l
    ld [hl], b
    ret nc

    db $e3
    sub c
    ld [c], a
    ld de, $32a8
    ld a, $93
    adc c
    adc c
    sbc a
    dec d
    or b
    ldh [$d0], a
    adc $06
    ld hl, $a8e2
    ld a, h
    ld h, b
    adc [hl]
    ld [$e32b], sp
    pop bc
    sub [hl]
    adc a
    ld [de], a
    ld a, [hl-]
    rst $20
    xor a
    ld [bc], a
    ld a, b
    or c
    jr nc, jr_03c_4b4a

    add l
    dec h
    ld l, c
    adc d
    add hl, hl
    call z, $e295
    jp $112a


    ld de, $45d1
    ld a, a
    rst $20
    ld d, d
    ld h, l
    ld a, a
    ld d, [hl]
    and a
    inc [hl]
    ld [hl], b
    pop af
    ld [c], a
    jp hl


    ld [c], a
    jr z, jr_03c_4bb9

    ld [c], a
    ld d, b
    ld a, c
    db $e3
    pop af
    ret nc

    sbc h
    ld sp, $19cd

jr_03c_4b4a:
    ccf
    xor c
    ret c

    and l
    ld a, a
    pop hl
    ld l, c
    push bc
    dec d
    db $e3
    ld [hl+], a
    call nc, $d908
    cp e
    dec d
    add $30
    rst $00
    ld a, [de]
    ld c, d
    ld de, $21e1
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, e
    nop
    ld [hl], c
    nop
    add hl, sp
    nop
    nop
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
    ld bc, $0100

jr_03c_4bb9:
    nop
    jr nc, jr_03c_4bf4

    inc e
    ld a, $1e
    rra
    inc c
    inc e
    inc c
    inc c
    inc e
    nop
    adc h
    nop
    add $00
    db $e3
    nop
    ld [hl], c
    nop
    jr jr_03c_4bd0

jr_03c_4bd0:
    adc h
    ret nz

    jr nz, jr_03c_4bf4

    ret nz

    nop
    ret nz

    nop
    ld b, b
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

jr_03c_4bf4:
    nop
    nop

jr_03c_4bf6:
    nop
    nop
    nop
    nop
    inc c
    inc e
    jr c, jr_03c_4c7a

jr_03c_4bfe:
    ld a, b
    ld hl, sp+$30
    jr c, jr_03c_4c33

    jr nc, jr_03c_4c09

    inc c
    inc b
    inc b
    ld [bc], a

jr_03c_4c09:
    ld b, $01
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
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
    ld b, a
    ld b, a
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

jr_03c_4c33:
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
    ld b, $e2
    ld [c], a
    jr nz, jr_03c_4c76

    jr nz, jr_03c_4c68

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
    ld bc, $0801
    ld c, b
    ld a, [bc]
    adc d

jr_03c_4c68:
    adc b
    adc b
    add a
    add a
    jr z, jr_03c_4bfe

    ld b, h
    jr c, jr_03c_4c71

jr_03c_4c71:
    ld a, h
    ld b, h
    jr c, jr_03c_4bf6

    add c

jr_03c_4c76:
    add c
    add c
    add c
    add c

jr_03c_4c7a:
    jr jr_03c_4c94

    nop
    nop
    jr jr_03c_4c98

    inc h
    inc a
    inc h
    inc a
    db $10
    ld [de], a
    ld d, b
    ld d, c
    ld de, $e111
    pop hl
    inc d
    add hl, bc
    ld [hl+], a
    inc e
    nop
    ld a, $22
    inc e

jr_03c_4c94:
    nop
    nop
    nop
    nop

jr_03c_4c98:
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
    ld bc, $0101
    jr z, jr_03c_4cc6

    db $10
    sbc b
    xor h
    and h
    ld c, [hl]
    ld b, d
    add [hl]
    add c
    rlca

jr_03c_4cbf:
    add c
    ld [bc], a
    ld bc, $0200
    inc h
    inc a

jr_03c_4cc6:
    jr jr_03c_4ce0

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
    inc d
    ld [$1908], sp
    dec l
    dec h
    ld c, [hl]
    ld b, d
    rlca
    add c
    add d
    add c

jr_03c_4ce0:
    inc bc
    add b
    inc bc
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
    add b
    add b
    add b
    ld d, l
    dec a
    adc c
    ld c, a
    ld a, [de]
    ld a, [de]
    ld d, e
    jp $ad9a


    inc sp
    ld d, e
    sbc a
    ld h, $95
    rra
    ld e, $4e
    ld a, l
    ld [hl+], a
    ld l, b
    add h
    jr c, jr_03c_4d38

    rst $20
    or e
    dec de
    db $f4
    inc e
    jp hl


    adc h
    inc e
    ld h, b
    adc a
    dec c
    ld hl, $0ecf
    ld b, c
    ld c, a
    dec d
    dec b
    inc a
    ld c, h
    add l
    inc a
    dec h
    ld h, $3a
    ld e, b
    rst $00
    ld e, h
    inc [hl]
    and $78
    add h
    sbc e
    or d
    inc sp
    sub l
    adc c
    sbc a
    dec d
    dec bc

jr_03c_4d34:
    ld c, $39
    jr jr_03c_4cbf

jr_03c_4d38:
    adc d
    and c
    di
    sub [hl]
    ld a, [bc]
    ld hl, sp-$10
    ld h, l
    and e
    call nz, $998e
    db $ec
    ret nz

    sbc [hl]
    inc l
    ld c, h
    add hl, bc
    pop hl
    ld c, c
    ld e, d
    ld h, d
    adc d
    ld [hl], e
    dec h
    ld a, b
    or b
    ret nz

    xor h
    rst $00
    ld d, l
    ld [de], a
    add a
    cp $74
    and [hl]
    dec l
    ld a, a
    dec e
    ld d, c
    di
    add hl, de
    db $e4
    ld h, a
    call nz, $8f27
    jr jr_03c_4d34

    ld a, [$2976]
    jr nc, jr_03c_4ded

    rst $20
    inc l
    ld d, a
    adc h
    adc d
    dec d
    ld [hl-], a
    ld [hl], b
    or c
    ld e, h
    ld h, e
    inc c
    ld [hl], c
    and h
    and c
    ld e, $12
    ld de, $00ef
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03c_4ded:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03c_4ea4

    ld a, a
    ld a, a
    jr nc, jr_03c_4e68

    jr jr_03c_4e4e

    nop
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

    jr nc, jr_03c_4eb8

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

jr_03c_4e4e:
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
    ld bc, $0c03
    ld e, $c0
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop

jr_03c_4e68:
    nop
    nop
    inc c
    ld e, $fe
    cp $0c
    inc e
    jr jr_03c_4eaa

    rlca
    inc c
    inc bc
    ld [bc], a
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
    ld [bc], a
    ret nz

    nop
    ldh [rP1], a
    ld b, b
    ldh [rLCDC], a
    ld b, b
    nop
    ld b, b
    ld bc, $8b83
    adc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add c
    nop
    add c
    nop
    ld b, b

jr_03c_4ea4:
    inc bc
    nop
    rlca
    nop
    ld [bc], a
    rlca

jr_03c_4eaa:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ret nz

    pop hl
    ld h, c
    ld [hl], c
    ldh [$30], a
    ret nz

    ld b, b
    add b
    add b

jr_03c_4eb8:
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub [hl]
    add l
    inc c
    add b
    jr z, jr_03c_4ee8

    ld b, h
    jr c, jr_03c_4edb

jr_03c_4edb:
    ld a, h
    ld b, h
    jr c, jr_03c_4f07

    sub b
    nop
    ld b, b
    inc a
    nop
    jr jr_03c_4efe

    nop
    nop

jr_03c_4ee8:
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    ld l, c
    and c
    jr nc, jr_03c_4ef7

    inc d

jr_03c_4ef7:
    ld [$1c22], sp
    nop
    ld a, $22
    inc e

jr_03c_4efe:
    inc d
    add hl, bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop

jr_03c_4f07:
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
    ld hl, $4f21
    call Call_000_3c36
    ld a, $28
    call Call_000_118b
    call Call_000_373e
    ret


    rla
    dec e
    ld b, e
    ld h, $50
    ld hl, $41c6
    ld b, $1c
    call Call_000_3e84
    call Call_000_16dd
    ld c, $64
    call Call_000_372f
    call Call_000_0061
    ld a, $a7
    ldh [rWX], a
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    ldh [$ae], a
    ldh [$af], a
    ldh [$b0], a
    ldh [rWY], a
    call Call_03c_504d
    ld hl, $c3a0
    call Call_03c_507b
    ld hl, $c4b8
    call Call_03c_507b
    ld a, $c0
    ldh [rBGP], a
    call Call_000_3021
    call Call_000_007b
    call Call_000_2233
    ld hl, $9c00
    call Call_03c_5040
    ld hl, $9800
    call Call_03c_5040
    ld c, $1f
    ld a, $c7
    call Call_000_2211
    ld c, $80
    call Call_000_372f
    xor a
    ld [$cd3d], a
    ld [$cd3e], a
    jp Jump_03c_50b6


Call_03c_4f88:
Jump_03c_4f88:
    ld a, $01
    ldh [$ba], a
    ld hl, $4fa0
    ld b, $04

jr_03c_4f91:
    ld a, [hl+]
    ldh [rBGP], a
    call Call_000_3021
    ld c, $05
    call Call_000_372f
    dec b
    jr nz, jr_03c_4f91

    ret


    ret nz

    ret nc

    ldh [$f0], a

Call_03c_4fa4:
    ld hl, $9c00
    call Call_03c_5040
    xor a
    ldh [$ba], a
    ld hl, $ff40
    set 3, [hl]
    call Call_000_36ec
    call Call_03c_5083
    call Call_03c_500c
    ld hl, $980c
    call Call_03c_5040
    xor a
    ldh [$ba], a
    call Call_000_3700
    ld hl, $9800
    call Call_03c_5040
    ld a, $fc
    ldh [rBGP], a
    call Call_000_3021
    ld hl, $ff40
    res 3, [hl]
    ld a, $01
    ldh [$ba], a
    ld b, $00
    ld c, $0a
    call Call_03c_4fff
    call Call_03c_508e
    ld c, $0a
    call Call_03c_4fff
    call Call_03c_5097
    ld c, $08
    call Call_03c_4fff
    ld a, $c0
    ldh [rBGP], a
    call Call_000_3021
    xor a
    ldh [$ae], a
    ret


Call_03c_4fff:
jr_03c_4fff:
    ld a, b
    ldh [$ae], a
    add $08
    ld b, a
    call Call_000_1e64
    dec c
    jr nz, jr_03c_4fff

    ret


Call_03c_500c:
    ld hl, $cd3e
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $5028
    add hl, bc
    ld a, [hl]
    ld [$cf90], a
    ld [$d0b4], a
    ld hl, $c420
    call Call_000_132f
    call Call_000_1149
    ret


    sbc d
    dec l
    ld [de], a
    inc hl
    sub h
    daa
    dec hl
    ld e, $98
    ld d, $4c
    ld h, e
    cp e
    rlca
    ld l, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e

Call_03c_5040:
    ld a, l
    ldh [$bc], a
    ld a, h
    ldh [$bd], a
    ld a, $01
    ldh [$ba], a
    jp Jump_000_3ddb


Call_03c_504d:
    call Call_000_3683
    ld hl, $8800
    ld bc, $0400
    call Call_03c_5071
    call Call_000_36a3
    ld hl, $9600
    ld bc, $0100
    call Call_03c_5071
    ld hl, $97e0
    ld bc, $0010
    ld a, $ff
    call Call_000_166e
    ret


Call_03c_5071:
jr_03c_5071:
    ld [hl], $00
    inc hl
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_03c_5071

    ret


Call_03c_507b:
    ld bc, $0050
    ld a, $7e
    jp Jump_000_166e


Call_03c_5083:
    ld hl, $c3f0
    ld bc, $00c8
    ld a, $7f
    jp Jump_000_166e


Call_03c_508e:
    ld hl, $c3f0
    push bc
    call Call_03c_50a0
    pop bc
    ret


Call_03c_5097:
    ld hl, $c3fa
    push bc
    call Call_03c_50a0
    pop bc
    ret


Call_03c_50a0:
    ld b, $0a
    ld c, $0a
    ld a, $7f

jr_03c_50a6:
    push bc
    push hl

jr_03c_50a8:
    ld [hl+], a
    dec c
    jr nz, jr_03c_50a8

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_03c_50a6

    ret


Jump_03c_50b6:
    ld de, $5171
    push de

jr_03c_50ba:
    pop de
    ld hl, $c421
    push hl
    call Call_03c_5083
    pop hl

jr_03c_50c3:
    ld a, [de]
    inc de
    push de
    cp $ff
    jr z, jr_03c_50ef

    cp $fe
    jr z, jr_03c_50f6

    cp $fd
    jr z, jr_03c_5100

    cp $fc
    jr z, jr_03c_5107

    cp $fb
    jr z, jr_03c_50e4

    cp $fa
    jr z, jr_03c_510e

    call Call_03c_5154
    pop de
    jr jr_03c_50c3

jr_03c_50e4:
    ld b, $01
    ld hl, $4340
    call Call_000_3e84
    pop de
    jr jr_03c_50c3

jr_03c_50ef:
    call Call_03c_4f88
    ld c, $66
    jr jr_03c_50f8

jr_03c_50f6:
    ld c, $7a

jr_03c_50f8:
    call Call_000_372f
    call Call_03c_4fa4
    jr jr_03c_50ba

jr_03c_5100:
    call Call_03c_4f88
    ld c, $84
    jr jr_03c_5109

jr_03c_5107:
    ld c, $98

jr_03c_5109:
    call Call_000_372f
    jr jr_03c_50ba

jr_03c_510e:
    call Call_03c_5113
    pop de
    ret


Call_03c_5113:
    ld c, $18
    call Call_000_372f
    call Call_03c_5083
    ld de, $581b
    ld hl, $9600
    ld bc, $3c0a
    call Call_000_15fe
    ld hl, $c444
    ld de, $513a
    call Call_000_1723
    ld hl, $c458
    inc de
    call Call_000_1723
    jp Jump_03c_4f88


    ld h, b
    ld a, a
    ld h, d
    ld a, a
    ld h, h
    ld a, a
    ld a, a
    ld h, h
    ld a, a
    ld h, [hl]
    ld a, a
    ld l, b
    ld d, b
    ld h, c
    ld a, a
    ld h, e
    ld a, a
    ld h, l
    ld a, a
    ld a, a
    ld h, l
    ld a, a
    ld h, a
    ld a, a
    ld l, c
    ld d, b

Call_03c_5154:
    push hl
    push hl
    ld hl, $51e3
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld a, [de]
    inc de
    ld c, a
    ld b, $ff
    add hl, bc
    call Call_000_1723
    pop hl
    ld bc, $0028
    add hl, bc
    ret


    inc e
    nop
    rst $38
    dec e
    ld bc, $1eff
    ld [bc], a
    inc bc
    inc b
    db $fd
    ld e, $05
    dec hl
    cp $1f
    rlca
    ld [$20ff], sp
    dec b
    db $fd
    ld hl, $0405
    cp $22
    ld bc, $ff06
    inc hl
    rlca
    ld [$ff2f], sp
    inc h
    ld bc, $24fd

jr_03c_5198:
    jr nc, jr_03c_5198

    dec h
    ld b, $ff
    ld h, $01
    ld b, $31
    rst $38
    daa
    ld [hl-], a
    ld sp, $27fd
    inc sp
    inc [hl]
    cp $28
    dec a
    rst $38
    ccf
    ld a, $ff
    add hl, hl
    ld [hl], $fd
    add hl, hl
    ld a, [bc]
    db $fc
    add hl, hl
    dec bc
    cp $40
    db $fd
    ld b, c
    ld b, d
    db $fd
    ld b, c
    ld b, e
    ld b, h
    db $fc
    ld b, c
    ld b, l
    ld b, [hl]
    db $fc
    ld b, a
    ld c, b
    db $fd
    ld e, $4c
    ld c, l
    db $fd
    rra
    ld d, c
    db $fd
    jr z, jr_03c_5224

    ld c, e
    db $fd
    jr z, jr_03c_5229

    ld d, h
    ld d, l
    db $fc
    daa
    ld c, a
    ld c, [hl]
    db $fd
    ld a, [hl+]
    inc c
    rst $38
    ei
    rst $38
    ld a, [$528f]
    xor c
    ld d, d
    cp c
    ld d, d
    ret z

    ld d, d
    jp c, $ec52

    ld d, d
    db $fc
    ld d, d
    dec bc
    ld d, e
    add hl, de
    ld d, e
    add hl, hl
    ld d, e
    dec sp
    ld d, e
    ld c, [hl]
    ld d, e
    ld h, d
    ld d, e
    ld [hl], h
    ld d, e
    add l
    ld d, e
    sub [hl]
    ld d, e
    and [hl]
    ld d, e
    cp b
    ld d, e
    bit 2, e
    rst $18
    ld d, e
    ld a, [c]
    ld d, e
    dec b
    ld d, h
    ld d, $54
    jr z, @+$56

    ld a, [hl-]
    ld d, h
    ld c, d
    ld d, h
    ld e, e
    ld d, h
    ld l, e
    ld d, h
    ld a, e
    ld d, h
    add c
    ld d, h
    adc e
    ld d, h
    sbc b
    ld d, h
    xor d

jr_03c_5224:
    ld d, h
    or c
    ld d, h
    ret nz

    ld d, h

jr_03c_5229:
    call $dd54
    ld d, h
    db $ec
    ld d, h
    rst $38
    ld d, h
    dec bc
    ld d, l
    inc e
    ld d, l
    scf
    ld d, l
    ld b, c
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld [hl], e
    ld d, l
    add e
    ld d, l
    or a
    ld d, l
    sub e
    ld d, l
    xor b
    ld d, l
    ret


    ld d, l
    jp c, $ed55

    ld d, l
    inc bc
    ld d, [hl]
    add hl, de
    ld d, [hl]
    ld a, [hl+]
    ld d, [hl]
    add hl, sp
    ld d, [hl]
    ld c, d
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld [hl], b
    ld d, [hl]
    ld a, l
    ld d, [hl]
    adc e
    ld d, [hl]
    and d
    ld d, [hl]
    xor a
    ld d, [hl]
    ret z

    ld d, [hl]
    jp c, $eb56

    ld d, [hl]
    ld hl, sp+$56
    ld [$1757], sp
    ld d, a
    daa
    ld d, a
    dec [hl]
    ld d, a
    ld b, a
    ld d, a
    ld d, [hl]
    ld d, a
    ld h, h
    ld d, a
    ld [hl], l
    ld d, a
    add [hl]
    ld d, a
    sub a
    ld d, a
    and h
    ld d, a
    cp d
    ld d, a
    inc l
    ld d, l
    ret z

    ld d, a
    db $db
    ld d, a
    add sp, $57
    ld a, [$0b57]
    ld e, b
    ld a, [$8498]
    adc e
    adc e
    adc [hl]
    sub [hl]
    ld a, a
    sub l
    add h
    sub c
    sub d
    adc b
    adc [hl]
    adc l
    ld c, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    sub e
    add b
    add l
    add l
    ld d, b
    ld a, [$8092]
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sub e
    add b
    adc c
    adc b
    sub c
    adc b
    ld d, b
    ld a, [$8093]
    adc d
    add h
    adc l
    adc [hl]
    sub c
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld sp, hl
    sub d
    add a
    adc b
    add [hl]
    add h
    adc d
    adc b
    ld a, a
    adc h
    adc [hl]
    sub c
    adc b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld sp, hl
    sub e
    add h
    sub e
    sub d
    sub h
    sbc b
    add b
    ld a, a
    sub [hl]
    add b
    sub e
    add b
    adc l
    add b
    add c
    add h
    ld d, b
    ld a, [$9489]
    adc l
    adc b
    add d
    add a
    adc b
    ld a, a
    adc h
    add b
    sub d
    sub h
    add e
    add b
    ld d, b
    ei
    adc d
    adc [hl]

Jump_03c_52ff:
    add a
    adc c
    adc b
    ld a, a
    adc l
    adc b
    sub d
    add a
    adc b
    adc l
    adc [hl]
    ld d, b
    ei
    adc d
    add h
    adc l
    ld a, a
    sub d
    sub h
    add [hl]
    adc b
    adc h
    adc [hl]
    sub c
    adc b
    ld d, b
    ld a, [$9380]
    sub d
    sub h
    adc d
    adc [hl]
    ld a, a
    adc l
    adc b
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld sp, hl
    sub d
    add a
    adc b
    add [hl]
    add h
    sub c
    sub h
    ld a, a
    adc h
    adc b
    sbc b
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld hl, sp-$6d
    add b
    adc d
    add b
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$6d
    sub d
    sub h
    adc l
    add h
    adc d
    add b
    sbc c
    sub h
    ld a, a
    adc b
    sub d
    add a
    adc b
    add a
    add b
    sub c
    add b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    sub h
    add d
    add a
    adc b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sbc c
    adc b
    adc l
    adc l
    add b
    adc b
    ld d, b
    ld sp, hl
    sub e
    add b
    sub e
    sub d
    sub h
    sbc b
    add b
    ld a, a
    add a
    adc b
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld a, [$8098]
    sub d
    sub h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    sub d
    add b
    adc d
    add b
    adc b
    ld d, b
    ld sp, hl
    sub [hl]
    add b
    sub e
    add b
    sub c
    sub h
    ld a, a
    sbc b
    add b
    adc h
    add b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$76
    add b
    sbc c
    sub h
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld hl, sp-$6f
    sbc b
    adc [hl]
    add a
    sub d
    sub h
    adc d
    add h
    ld a, a
    sub e
    add b
    adc l
    adc b
    add [hl]
    sub h
    add d
    add a
    adc b
    ld d, b
    ld hl, sp-$7b
    sub h
    adc h
    adc b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc l
    adc [hl]
    adc l
    adc [hl]
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld sp, hl
    adc h
    adc [hl]
    sub e
    adc [hl]
    add l
    sub h
    adc h
    adc b
    ld a, a
    add l
    sub h
    sbc c
    adc b
    sub [hl]
    add b
    sub c
    add b
    ld d, b
    ld sp, hl
    adc d
    add h
    adc l
    adc c
    adc b
    ld a, a
    adc h
    add b
    sub e
    sub d
    sub h
    sub d
    adc b
    adc h
    add b
    ld d, b
    ld sp, hl
    add b
    adc d
    adc b
    add a
    adc b
    sub e
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    adc h
    adc b
    sub d
    add b
    sub [hl]
    add b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    adc h
    adc [hl]
    sub e
    adc [hl]
    ld d, b
    ld a, [$8a80]
    adc b
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc d

Jump_03c_5445:
    add b
    adc d
    add h
    adc b
    ld d, b
    ld sp, hl
    adc d
    add b
    sbc c
    sub h
    adc d
    adc b
    ld a, a
    sub e
    sub d
    sub h
    add d
    add a
    adc b
    sbc b
    add b
    ld d, b
    ld a, [$8093]
    adc d
    add h
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, [$808c]
    sub d
    add b
    adc h
    adc b
    sub e
    sub d
    sub h
    ld a, a
    sbc b
    sub h
    add e
    add b
    ld d, b
    db $fd
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, b
    db $fd
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld d, b
    ei
    adc a
    sub c
    adc [hl]
    add [hl]
    sub c
    add b
    adc h
    adc h
    add h
    sub c
    sub d
    ld d, b
    ld sp, hl
    add d
    add a
    add b
    sub c
    add b
    add d
    sub e
    add h
    sub c
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    cp $8c
    sub h
    sub d
    adc b
    add d
    ld d, b
    ld a, [$8e92]
    sub h
    adc l
    add e
    ld a, a
    add h
    add l
    add l
    add h
    add d
    sub e
    sub d
    ld d, b
    ei
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, [$8e8c]
    adc l
    sub d
    sub e
    add h
    sub c
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, [$8086]
    adc h
    add h
    ld a, a
    sub d
    add d
    add h
    adc l
    add b
    sub c
    adc b
    adc [hl]
    ld d, b
    ld sp, hl
    adc a
    add b
    sub c
    add b
    adc h
    add h
    sub e
    sub c
    adc b
    add d
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    db $fc
    adc h
    add b
    adc a
    ld a, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    ld d, b
    ld a, [$918f]
    adc [hl]
    add e
    sub h
    add d
    sub e
    ld a, a
    sub e
    add h
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    ld a, [$8f92]
    add h
    add d
    adc b
    add b
    adc e
    ld a, a
    sub e
    add a
    add b
    adc l
    adc d
    sub d
    ld d, b
    db $fc
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    sub d
    ld d, b
    db $fd
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    ld d, b
    ld hl, sp-$7c
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld a, a
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    ld d, b
    ld a, [$8e92]
    sub h
    sub d
    sub h
    adc d
    add h
    ld a, a
    sub e
    add b
    adc h
    add b
    add e
    add b
    ld d, b
    ei
    sub d
    add b
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld a, [$8491]
    adc l
    add b
    ld a, a
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ld a, [$8e93]
    adc h
    adc [hl]
    adc h
    adc b
    add d
    add a
    adc b
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    ld d, b
    ld hl, sp-$6d
    adc [hl]
    sub d
    add a
    adc b
    adc l
    adc [hl]
    add c
    sub h
    ld a, a
    adc h
    add b
    sub e
    sub d
    sub h
    adc h
    adc b
    sbc b
    add b
    ld d, b
    ei
    adc l
    adc [hl]
    add c
    sub h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    sub d
    add h
    sbc b
    add b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub c
    adc [hl]
    adc l
    adc [hl]
    add c
    sub h
    ld a, a
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    add e
    add b
    ld d, b
    ld a, [$808a]
    sbc c
    sub h
    add a
    adc b
    sub e
    adc [hl]
    ld a, a
    sub d
    add h
    adc d
    adc b
    adc l
    add h
    ld d, b
    ld sp, hl
    adc d
    add b
    sbc c
    sub h
    sub d
    add a
    adc b
    ld a, a
    sub d
    add a
    adc b
    adc h
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    rst $30
    sub e
    add h
    sub c
    sub h
    sbc b
    sub h
    adc d
    adc b
    ld a, a
    sub d
    add a
    adc b
    adc h
    adc [hl]
    sbc b
    add b
    adc h
    add b
    add e
    add b
    ld d, b
    rst $30
    adc l
    add d
    adc e
    ld a, a
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc [hl]
    ld a, a
    add d
    adc e
    sub h
    add c
    ld d, b
    ld sp, hl
    sub e
    add b
    adc d
    add h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc b
    sbc c
    sub h
    sub d
    add a
    adc b
    ld d, b
    ei
    add l
    sub h
    sbc c
    adc b
    adc d
    adc [hl]
    ld a, a
    adc l
    adc [hl]
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, [$8093]
    adc d
    add b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    add a
    add b
    sub c
    add b
    add e
    add b
    ld d, b
    ld sp, hl
    add a
    adc b
    sub e
    adc [hl]
    sub d
    add a
    adc b
    ld a, a
    sbc b
    add b
    adc h
    add b
    add [hl]
    add b
    adc h
    adc b
    ld d, b
    ld hl, sp-$76
    add h
    adc l
    sub e
    add b
    sub c
    adc [hl]
    sub h
    ld a, a
    adc l
    adc b
    sub d
    add a
    adc b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ei
    adc l
    add b
    adc [hl]
    adc d
    adc [hl]
    ld a, a
    sub d
    add b
    add h
    adc d
    adc b
    ld d, b
    ei
    sub e
    add b
    adc d
    add b
    sbc b
    add b
    ld a, a
    add l
    sub h
    sbc c
    adc b
    adc b
    ld d, b
    db $fc
    sub d
    add a
    adc [hl]
    add [hl]
    add b
    adc d
    sub h
    adc d
    add b
    adc l
    ld c, [hl]
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ei
    adc b
    adc d
    sub h
    add h
    ld a, a
    adc [hl]
    adc [hl]
    sub e
    add b
    adc l
    adc b
    ld d, b
    ld a, [$888f]
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    sub l
    adc [hl]
    adc b
    add d
    add h
    ld d, b
    db $fd
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    ld d, b
    ld sp, hl
    sub h
    sub d
    ld a, a
    sub l
    add h
    sub c
    sub d
    adc b
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    add b
    add l
    add l
    ld d, b
    ld sp, hl
    sub h
    sub d
    ld a, a
    add d
    adc [hl]
    adc [hl]
    sub c
    add e
    adc b
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ei
    add [hl]
    add b
    adc b
    adc e
    ld a, a
    sub e
    adc b
    adc e
    add e
    add h
    adc l
    ld d, b
    ld a, [$808d]
    adc [hl]
    adc d
    adc [hl]
    ld a, a
    adc d
    add b
    sub [hl]
    add b
    adc d
    add b
    adc h
    adc b
    ld d, b
    ld a, [$8887]
    sub c
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, [$8091]
    adc l
    add e
    sbc b
    ld a, a
    sub d
    add a
    adc [hl]
    add h
    adc h
    add b
    adc d
    add h
    ld d, b
    ei
    sub d
    add b
    sub c
    add b
    ld a, a
    adc [hl]
    sub d
    add c
    adc [hl]
    sub c
    adc l
    add h
    ld d, b
    ld sp, hl
    sub e
    add h
    sub a
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc l
    sub d
    adc e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    ld a, [$8e8d]
    add c
    ld a, a
    adc [hl]
    add [hl]
    add b
    sub d
    add b
    sub [hl]
    add b
    sub c
    add b
    ld d, b
    ei
    sub d
    add b
    sub e
    adc [hl]
    sub c
    sub h
    ld a, a
    adc b
    sub [hl]
    add b
    sub e
    add b
    ld d, b
    ld sp, hl
    sub e
    add b
    adc d
    add h
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    adc b
    sbc c
    sub h
    sub d
    add a
    adc b
    ld d, b
    ld sp, hl
    sub e
    add b
    adc d
    add b
    add a
    adc b
    sub c
    adc [hl]
    ld a, a
    add a
    add b
    sub c
    add b
    add e
    add b
    ld d, b
    ld sp, hl
    sub e
    add h
    sub c
    sub h
    adc d
    adc b
    ld a, a
    adc h
    sub h
    sub c
    add b
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ei
    adc d
    adc [hl]
    add a
    sub e
    add b
    ld a, a
    add l
    sub h
    adc d
    sub h
    adc b
    ld d, b
    rst $30
    adc l
    add d
    adc e
    ld a, a
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc [hl]
    ld a, a
    add d
    adc e
    sub h
    add c
    ld d, b
    ei
    adc a
    add b
    add b
    add e
    ld a, a
    sub e
    add h
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    ld hl, sp-$6d
    add b
    adc d
    add h
    add a
    adc b
    adc d
    adc [hl]
    ld a, a
    add a
    adc [hl]
    sub d
    adc [hl]
    adc d
    add b
    sub [hl]
    add b
    ld d, b
    ei
    adc d
    add h
    adc l
    adc c
    adc b
    ld a, a
    adc [hl]
    adc d
    sub h
    add c
    adc [hl]
    ld d, b
    ld sp, hl
    adc d
    adc b
    adc h
    adc b
    adc d
    adc [hl]
    ld a, a
    adc l
    add b
    adc d
    add b
    adc h
    adc b
    add d
    add a
    adc b
    ld d, b
    ld a, [$808a]
    adc h
    adc [hl]
    adc l
    ld a, a
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    adc h
    sub h
    sub c
    add b
    ld d, b
    ld a, [$8092]
    adc d
    add b
    add h
    ld a, a
    sbc b
    add b
    adc h
    add b
    sbc c
    add b
    adc d
    adc b
    ld d, b
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    jr z, jr_03c_5863

    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    and l
    and l
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    ldh [$e0], a

jr_03c_5863:
    ldh [$e0], a
    ldh [$e0], a
    cp $fe
    db $fc
    db $fc
    cp $fe
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    pop bc
    pop bc
    push bc
    push bc
    rst $20
    rst $20
    rst $20
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $20
    rst $20
    rst $20
    rst $20
    db $e3
    db $e3
    and e
    and e
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    xor $ee
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    xor $ee
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, $58c2
    call Call_000_3c36
    ret


    rla
    cp l
    ld b, l
    dec l
    ld d, b
    ld hl, $58e4
    ld a, [$d355]
    cp $7f
    jr z, jr_03c_58db

    ld a, [$d750]
    bit 1, a
    jr nz, jr_03c_58db

    ld hl, $58df

jr_03c_58db:
    call Call_000_3c36
    ret


    rla
    add hl, hl
    ld b, [hl]
    dec l
    ld d, b
    rla
    ld h, [hl]
    ld b, [hl]
    dec l
    ld d, b
    ld hl, $5902
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    ld hl, $5907
    jr nz, jr_03c_58fe

    ld hl, $590c

jr_03c_58fe:
    call Call_000_3c36
    ret


    rla
    add [hl]
    ld b, [hl]
    dec l
    ld d, b
    rla
    cp a
    ld b, [hl]
    dec l
    ld d, b
    rla
    call $2d46
    ld d, b
    ld hl, $5927
    ld a, [$d74a]
    bit 5, a
    jr nz, jr_03c_591e

    ld hl, $5922

jr_03c_591e:
    call Call_000_3c36
    ret


    rla
    rla
    ld b, a
    dec l
    ld d, b
    rla
    ld d, d
    ld b, a
    dec l
    ld d, b
    ld hl, $5945
    call Call_000_3c36
    call Call_000_3415
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    ld a, $05
    ld [$d5f3], a
    ret


    rla
    and a
    ld b, a
    dec l
    ld d, b
    ld a, [$d74b]
    bit 1, a
    jr nz, jr_03c_5972

    ld hl, $5979
    call Call_000_3c36
    ld bc, $f201
    call Call_000_3e3f
    jr nc, jr_03c_596b

    ld hl, $597e
    call Call_000_3c36
    ld hl, $d74b
    set 1, [hl]
    ret


jr_03c_596b:
    ld hl, $5989
    call Call_000_3c36
    ret


jr_03c_5972:
    ld hl, $5984
    call Call_000_3c36
    ret


    rla
    call c, Call_000_2d47
    ld d, b
    rla
    adc h
    ld c, b
    dec l
    db $10
    ld d, b
    rla
    sbc a
    ld c, b
    dec l
    ld d, b
    rla
    ret


    ld c, b
    dec l
    ld d, b
    ld hl, $59b6
    call Call_000_3c36
    ld c, $02
    call Call_000_372f
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_03c_59af

    ld hl, $59bb
    call Call_000_3c36
    ld a, $03
    ld [$d5f3], a
    jr jr_03c_59b5

jr_03c_59af:
    ld hl, $59c0
    call Call_000_3c36

jr_03c_59b5:
    ret


    rla
    db $eb
    ld c, b
    dec l
    ld d, b
    rla
    ld [hl+], a
    ld c, c
    dec l
    ld d, b
    rla
    ld b, a
    ld c, c
    dec l
    ld d, b
    ld hl, $59cc
    call Call_000_3c36
    ret


    rla
    ld l, d
    ld c, c
    dec l
    ld d, b
    ld hl, $59d8
    call Call_000_3c36
    ret


    rla
    sub a
    ld c, c
    dec l
    ld d, b
    ld hl, $59e4
    call Call_000_3c36
    ret


    rla
    ld a, [$2d49]
    ld d, b
    ld hl, $59f0
    call Call_000_3c36
    ret


    rla
    add b
    ld c, d
    dec l
    ld d, b
    ld hl, $59fc
    call Call_000_3c36
    ret


    rla
    sbc b
    ld c, d
    dec l
    ld d, b
    ld hl, $5a0a
    ld b, $0c
    call Call_03c_4a82
    ret


    nop
    dec e
    rra
    jr c, jr_03c_5a4e

    ld a, [$d76e]
    bit 7, a
    jr nz, jr_03c_5a69

    ld a, [$d729]
    bit 2, a
    jr nz, jr_03c_5a24

    ld hl, $5a70
    call Call_000_3c36
    ret


jr_03c_5a24:
    ld hl, $5a75
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_03c_5a62

    ld a, $b1
    ld [$d11d], a
    ld [$cf90], a
    call Call_000_2e93
    ld a, $01
    ld [$cc3c], a
    ld bc, $b10a
    call Call_000_3e59
    ret nc

    ld a, [$ccd3]
    and a

jr_03c_5a4e:
    call z, Call_000_3852
    ld a, $01
    ld [$cc3c], a
    ld hl, $5a7a
    call Call_000_3c36
    ld hl, $d76e
    set 7, [hl]
    ret


jr_03c_5a62:
    ld hl, $5a80
    call Call_000_3c36
    ret


jr_03c_5a69:
    ld hl, $5a85
    call Call_000_3c36
    ret


    rla
    inc hl
    ld e, d
    dec l
    ld d, b
    rla
    sbc b
    ld e, d
    dec l
    ld d, b
    rla
    ld sp, $2d5b
    dec c
    ld d, b
    rla
    ld d, h
    ld e, e
    dec l
    ld d, b
    rla
    ld [hl], b
    ld e, e
    dec l
    ld d, b
    ld hl, $5a91
    call Call_000_3c36
    ret


    rla
    adc b
    ld e, e
    dec l
    ld d, b
    ld hl, $5a9d
    call Call_000_3c36
    ret


    rla
    or [hl]
    ld e, e
    dec l
    ld d, b
    ld hl, $5aa9
    call Call_000_3c36
    ret


    rla
    dec l
    ld e, h
    dec l
    ld d, b
    ld hl, $5ab5
    call Call_000_3c36
    ret


    rla
    ld d, e
    ld e, h
    dec l
    ld d, b
    ld hl, $5ac1
    call Call_000_3c36
    ret


    rla
    sub [hl]
    ld e, h
    dec l
    ld d, b
    ld hl, $5acd
    call Call_000_3c36
    ret


    rla
    or l
    ld h, b
    dec l
    ld d, b
    ld hl, $d7be
    bit 0, [hl]
    set 0, [hl]
    jr nz, jr_03c_5af3

    ld hl, $5afa
    call Call_000_3c36
    ld bc, $1401
    call Call_000_3e3f
    jr nc, jr_03c_5aee

    ld hl, $5aff
    jr jr_03c_5af6

jr_03c_5aee:
    ld hl, $5b0a
    jr jr_03c_5af6

jr_03c_5af3:
    ld hl, $5b05

jr_03c_5af6:
    call Call_000_3c36
    ret


    rla
    pop de
    ld l, e
    jr z, @+$52

    rla
    ld d, l
    ld l, h
    jr z, jr_03c_5b0f

    ld d, b
    rla
    ld h, h
    ld l, h
    jr z, @+$52

    rla
    adc [hl]
    ld l, h
    jr z, jr_03c_5b5f

jr_03c_5b0f:
    ld hl, $5b16
    call Call_000_3c36
    ret


    rla
    or c
    ld l, h
    jr z, @+$52

    ld hl, $5b22
    call Call_000_3c36
    ret


    rla
    ld [hl-], a
    ld l, l
    jr z, @+$52

    ld a, [$d7ea]
    bit 5, a
    jr z, jr_03c_5b36

    ld hl, $5b42
    call Call_000_3c36
    jr jr_03c_5b3c

jr_03c_5b36:
    ld hl, $5b3d
    call Call_000_3c36

jr_03c_5b3c:
    ret


    rla
    and $69
    add hl, hl
    ld d, b
    rla
    adc b
    ld l, d
    add hl, hl
    ld d, b
    ld a, [$d7ea]
    bit 6, a
    jr z, jr_03c_5b56

    ld hl, $5b62
    call Call_000_3c36
    jr jr_03c_5b5c

jr_03c_5b56:
    ld hl, $5b5d
    call Call_000_3c36

jr_03c_5b5c:
    ret


    rla
    dec c

jr_03c_5b5f:
    ld l, e
    add hl, hl
    ld d, b
    rla
    call nz, $296b
    ld d, b
    ld hl, $5b6e
    call Call_000_3c36
    ret


    rla
    ld b, c
    ld l, h
    add hl, hl
    ld d, b
    ld a, [$d72d]
    bit 3, a
    jp nz, Jump_03c_5b87

    ld hl, $5b82
    call Call_000_3c36
    ret


    rla
    inc c
    ld b, h
    ld a, [hl+]
    ld d, b

Jump_03c_5b87:
    ld hl, $5bba
    call Call_000_3c36
    call Call_000_1e96
    call Call_000_2f66
    ld a, $07
    call Call_000_3eb4
    ld a, $e8
    ld [$c0ee], a
    call Call_000_2238

jr_03c_5ba0:
    ld a, [$c026]
    cp $e8
    jr z, jr_03c_5ba0

    ld a, [$d35a]
    ld [$c0ee], a
    call Call_000_2238
    call Call_000_1ebd
    ld hl, $5bbf
    call Call_000_3c36
    ret


    rla
    ld [hl], c
    ld b, h
    ld a, [hl+]
    ld d, b
    rla
    rst $00
    ld b, h
    ld a, [hl+]
    ld d, b
    ld hl, $5bdb
    ld a, [$c109]
    cp $04
    jp nz, Jump_03c_5bd2

    ld hl, $5bd6

Jump_03c_5bd2:
    call Call_000_3c36
    ret


    rla
    ld a, [bc]
    ld b, l
    ld a, [hl+]
    ld d, b
    rla
    ld e, h
    ld b, l
    ld a, [hl+]
    ld d, b
    ld a, [$d360]
    cp $03
    jr z, jr_03c_5bf0

    ld b, $00
    ld hl, $5bf9
    call Call_03c_4a82
    ret


jr_03c_5bf0:
    ld b, $08
    ld hl, $5bfe
    call Call_03c_4a82
    ret


    nop
    rra
    ld e, $38
    ccf
    nop
    dec e
    jr nz, jr_03c_5c38

    ccf
    ld hl, $5c0a
    call Call_000_3c36
    ret


    rla
    ld e, l
    ld e, b
    ld a, [hl+]
    ld d, b
    ld hl, $5c16
    call Call_000_3c36
    ret


    rla
    sub a
    ld e, b
    ld a, [hl+]
    ld d, b
    ld a, [$d360]
    cp $04
    jr nz, jr_03c_5c2c

    ld a, [$d361]
    cp $0d
    jp z, Jump_03c_5cde

    jr jr_03c_5c48

jr_03c_5c2c:
    cp $03
    jr nz, jr_03c_5c38

    ld a, [$d361]
    cp $0c
    jp z, Jump_03c_5cde

jr_03c_5c38:
    ld a, [$d753]
    bit 0, a
    jr nz, jr_03c_5c4f

    ld hl, $5d20
    call Call_000_3c36
    jp Jump_03c_5cfc


jr_03c_5c48:
    ld a, [$d753]
    bit 0, a
    jr z, jr_03c_5c58

jr_03c_5c4f:
    ld hl, $5d25
    call Call_000_3c36
    jp Jump_03c_5cfc


jr_03c_5c58:
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    xor a
    ldh [$b4], a
    ld hl, $5d02
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_03c_5cbf

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $50
    ldh [$a1], a
    call Call_000_35c3
    jr nc, jr_03c_5c89

    ld hl, $5d0c
    call Call_000_3c36
    jp Jump_03c_5cbf


jr_03c_5c89:
    ld hl, $5d07
    call Call_000_3c36
    ld hl, $d753
    set 0, [hl]
    xor a
    ld [$cd3d], a
    ld [$cd3e], a
    ld a, $50
    ld [$cd3f], a
    ld hl, $cd3f
    ld de, $d348
    ld c, $03
    ld a, $0c
    call Call_000_3eb4
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld a, $b2
    call Call_000_3736
    call Call_000_373e
    jr jr_03c_5cd7

Jump_03c_5cbf:
jr_03c_5cbf:
    ld hl, $5cfd
    call Call_000_3c36
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    call Call_000_3415
    call Call_000_231c
    jr jr_03c_5cfc

jr_03c_5cd7:
    ld a, $01
    ld [$d618], a
    jr jr_03c_5cfc

Jump_03c_5cde:
    ld hl, $5d11
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    cp $00
    jr nz, jr_03c_5cf6

    ld hl, $5d16
    call Call_000_3c36
    jr jr_03c_5cfc

jr_03c_5cf6:
    ld hl, $5d1b
    call Call_000_3c36

Jump_03c_5cfc:
jr_03c_5cfc:
    ret


    rla
    add e
    ld h, b
    ld a, [hl+]
    ld d, b
    rla
    sub b
    ld h, b
    ld a, [hl+]
    ld d, b
    rla
    ret


    ld h, b
    ld a, [hl+]
    ld d, b
    rla
    pop hl
    ld h, b
    ld a, [hl+]
    ld d, b
    rla
    cp $60
    ld a, [hl+]
    ld d, b
    rla
    ld c, b
    ld h, c
    ld a, [hl+]
    ld d, b
    rla
    adc l
    ld h, c
    ld a, [hl+]
    ld d, b
    rla
    xor [hl]
    ld h, c
    ld a, [hl+]
    ld d, b
    rla
    call z, $2a61
    ld d, b
    ld hl, $5d31
    call Call_000_3c36
    ret


    rla
    ld [$2a61], a
    ld d, b
    ld a, [$d753]
    bit 1, a
    jr nz, jr_03c_5d64

    ld hl, $5d6b
    call Call_000_3c36
    ld bc, $1f01
    call Call_000_3e3f
    jr nc, jr_03c_5d5f

    ld hl, $d753
    set 1, [hl]
    ld a, $33
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $5d70
    jr jr_03c_5d67

jr_03c_5d5f:
    ld hl, $5d7b
    jr jr_03c_5d67

jr_03c_5d64:
    ld hl, $5d76

jr_03c_5d67:
    call Call_000_3c36
    ret


    rla
    dec bc
    ld h, d
    ld a, [hl+]
    ld d, b
    rla
    add sp, $62
    ld a, [hl+]
    dec bc
    ld d, b
    rla
    nop
    ld h, e
    ld a, [hl+]
    ld d, b
    rla
    ld hl, $2a63
    ld d, b
    ld hl, $5d87
    call Call_000_3c36
    ret


    rla
    ld b, b
    ld h, e
    ld a, [hl+]
    ld d, b
    ld hl, $5d93
    call Call_000_3c36
    ret


    rla
    ld a, e
    ld h, e
    ld a, [hl+]
    ld d, b
    ld hl, $5d9f
    call Call_000_3c36
    ret


    rla
    inc [hl]
    ld l, [hl]
    ld a, [hl+]
    ld d, b
    ld a, $01
    ld [$cc3c], a
    ld hl, $5e19
    call Call_000_3c36
    call Call_000_2233
    ld c, $20
    call Call_000_372f
    ld hl, $5e1e
    ld de, $cd3f
    ld bc, $0004
    call Call_000_00b1
    ld a, [$c132]
    ld hl, $cd3f

jr_03c_5dc9:
    cp [hl]
    inc hl
    jr nz, jr_03c_5dc9

    dec hl
    push hl
    ld c, $1f
    ld a, $d0
    call Call_000_2211
    pop hl

jr_03c_5dd7:
    ld a, [hl]
    ld [$c132], a
    push hl
    ld hl, $cd3f
    ld de, $cd3e
    ld bc, $0004
    call Call_000_00b1
    ld a, [$cd3e]
    ld [$cd42], a
    pop hl
    ld c, $18
    call Call_000_372f
    ld a, [$c026]
    ld b, a
    ld a, [$c027]
    or b
    jr nz, jr_03c_5dd7

    ld c, $30
    call Call_000_372f
    call Call_000_216b
    ld a, [$d471]
    bit 7, a
    ret z

    ld hl, $4e73
    ld b, $3f
    call Call_000_3e84
    ret c

    call Call_000_153a
    ret


    rla
    xor e
    ld l, [hl]
    ld a, [hl+]
    ld d, b
    ld b, b
    ld c, b
    ld b, h
    ld c, h
    ld hl, $5e2b
    ld b, $0c
    call Call_03c_4a82
    ret


    nop
    dec e
    rra
    jr c, jr_03c_5e6f

    ld a, [$d777]
    bit 7, a
    jr nz, jr_03c_5e54

    ld hl, $5e5b
    call Call_000_3c36
    ld bc, $da01
    call Call_000_3e3f
    jr nc, jr_03c_5e4f

    ld hl, $d777
    set 7, [hl]
    ld hl, $5e60
    jr jr_03c_5e57

jr_03c_5e4f:
    ld hl, $5e6b
    jr jr_03c_5e57

jr_03c_5e54:
    ld hl, $5e66

jr_03c_5e57:
    call Call_000_3c36
    ret


    rla
    sbc b
    ld h, e
    dec hl
    ld d, b
    rla
    sbc $63
    dec hl
    dec bc
    ld d, b
    rla
    ld a, [c]
    ld h, e
    dec hl
    ld d, b
    rla
    ld l, $64
    dec hl

jr_03c_5e6f:
    ld d, b
    ld a, $01
    ld [$cc3c], a
    ld hl, $5e96
    call Call_000_3c36
    ld hl, $4db8
    ld b, $3f
    call Call_000_3e84
    ret nc

    ld hl, $5e9c
    call Call_000_3c36
    ld a, $00
    ld [$cc3c], a
    call Call_03c_5ea2
    call Call_000_3c36
    ret


    rla
    jp nc, $2b68

    dec c
    ld d, b
    rla
    db $10
    ld l, c
    dec hl
    ld b, $50

Call_03c_5ea2:
    ld hl, $5eb9

jr_03c_5ea5:
    ld a, [hl+]
    inc hl
    and a
    jr z, jr_03c_5eb5

    ld b, a
    ld a, [$d46f]
    cp b
    jr c, jr_03c_5eb5

    inc hl
    inc hl
    jr jr_03c_5ea5

jr_03c_5eb5:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    inc sp
    nop
    push de
    ld e, [hl]
    ld h, l
    nop
    jp c, $835e

    nop
    rst $18
    ld e, [hl]
    and c
    nop
    db $e4
    ld e, [hl]
    ret


    nop
    jp hl


    ld e, [hl]
    rst $38
    nop
    xor $5e
    nop
    rst $38
    xor $5e
    rla
    dec a
    ld l, c
    dec hl
    ld d, b
    rla
    ld l, b
    ld l, c
    dec hl
    ld d, b
    rla
    sub e
    ld l, c
    dec hl
    ld d, b
    rla
    ret nz

    ld l, c
    dec hl
    ld d, b
    rla
    db $db
    ld l, c
    dec hl
    ld d, b
    rla
    rst $38
    ld l, c
    dec hl
    ld d, b
    ld hl, $5efa
    call Call_000_3c36
    ret


    rla
    dec c
    ld l, l
    dec hl
    ld d, b
    ld hl, $5f06
    call Call_000_3c36
    ret


    rla
    ld c, h
    ld l, l
    dec hl
    ld d, b
    ld hl, $5f12
    call Call_000_3c36
    ret


    rla
    ld a, c
    ld l, l
    dec hl
    ld d, b
    ld hl, $5f1e
    call Call_000_3c36
    ret


    rla
    xor c
    ld l, l
    dec hl
    ld d, b
    ld hl, $5f2c
    ld b, $00
    call Call_03c_4a82
    ret


    nop
    jr nz, @+$20

    dec [hl]
    ccf
    ld a, [$d782]
    bit 0, a
    jr nz, jr_03c_5f5b

    ld hl, $5f62
    call Call_000_3c36
    ld bc, $4501
    call Call_000_3e3f
    jr nc, jr_03c_5f53

    ld hl, $d782
    set 0, [hl]
    ld hl, $5f67
    call Call_000_3c36
    jr jr_03c_5f61

jr_03c_5f53:
    ld hl, $5f6d
    call Call_000_3c36
    jr jr_03c_5f61

jr_03c_5f5b:
    ld hl, $5f72
    call Call_000_3c36

jr_03c_5f61:
    ret


    rla
    ld hl, $2c42
    ld d, b
    rla
    sbc b
    ld b, d
    inc l
    ld de, $1750
    xor [hl]
    ld b, d
    inc l
    ld d, b
    rla
    jp $2c42


    ld d, b
    ld hl, $6025
    call Call_000_3c36
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jp nz, Jump_03c_6012

    ld hl, $d346
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr nz, jr_03c_5f9f

    call Call_03c_60ce
    jr c, jr_03c_6018

    jr jr_03c_5ff2

jr_03c_5f9f:
    xor a
    ldh [$9f], a
    ld a, $05
    ldh [$a0], a
    ld a, $00
    ldh [$a1], a
    call Call_000_35c3
    jr nc, jr_03c_5fbc

    ld hl, $6039
    call Call_000_3c36
    call Call_03c_6077
    jr c, jr_03c_6018

    jr jr_03c_5ff2

jr_03c_5fbc:
    xor a
    ld [$cd3d], a
    ld a, $05
    ld [$cd3e], a
    ld a, $00
    ld [$cd3f], a
    ld hl, $cd3f
    ld de, $d348
    ld c, $03
    ld a, $0c
    call Call_000_3eb4
    ld a, $b2
    call Call_000_3736
    call Call_000_373e
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld hl, $602a
    call Call_000_3c36
    ld a, $1e
    ld hl, $01f6

jr_03c_5ff2:
    ld [$da46], a
    ld a, h
    ld [$d70c], a
    ld a, l
    ld [$d70d], a
    ld a, $40
    ld c, $03
    call Call_03c_6066
    ld hl, $d78f
    set 7, [hl]
    res 6, [hl]
    ld a, $03
    ld [$d61e], a
    jr jr_03c_6024

Jump_03c_6012:
    ld hl, $6034
    call Call_000_3c36

jr_03c_6018:
    ld a, $80
    ld c, $01
    call Call_03c_6066
    ld a, $04
    ld [$d61e], a

jr_03c_6024:
    ret


    rla
    ld [hl], h
    ld c, c
    inc l
    ld d, b
    rla
    rst $10
    ld c, c
    inc l
    dec bc
    rla
    inc sp
    ld c, d
    inc l
    ld d, b
    rla
    ld [hl], a
    ld c, d
    inc l
    ld d, b
    rla
    adc a
    ld c, d
    inc l
    ld d, b
    ld hl, $6057
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    ld hl, $6061
    jr nz, jr_03c_6053

    ld hl, $605c

jr_03c_6053:
    call Call_000_3c36
    ret


    rla
    xor b
    ld c, d
    inc l
    ld d, b
    rla
    ret


    ld c, d
    inc l
    ld d, b
    rla
    or l
    ld c, e
    inc l
    ld d, b

Call_03c_6066:
    push af
    ld b, $00
    ld a, c
    ld [$cd38], a
    ld hl, $ccd3
    pop af
    call Call_000_166e
    jp Jump_000_3415


Call_03c_6077:
    ld hl, $d346
    ld de, $ff9f
    ld bc, $0003
    call Call_000_00b1
    xor a
    ldh [$a2], a
    ldh [$a3], a
    ld a, $17
    ldh [$a4], a
    ld a, $0d
    call Call_000_3eb4
    ldh a, [$a4]
    call Call_03c_611e
    push af
    ld hl, $d346
    xor a
    ld bc, $0003
    call Call_000_166e
    ld hl, $60c4
    call Call_000_3c46
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld hl, $60c9
    call Call_000_3c36
    pop af
    inc a
    jr z, jr_03c_60bd

    cp $1d
    jr c, jr_03c_60bf

jr_03c_60bd:
    ld a, $1d

jr_03c_60bf:
    ld hl, $01f6
    and a
    ret


    rla
    db $d3
    ld c, e
    inc l
    ld d, b
    rla
    ld a, [$2c4b]
    ld d, b

Call_03c_60ce:
    ld hl, $d70c
    ld a, [hl]
    push af
    inc [hl]
    ld e, a
    ld d, $00
    ld hl, $6100
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c36
    pop af
    cp $03
    jr z, jr_03c_60e9

    scf
    ret


jr_03c_60e9:
    ld hl, $60f6
    call Call_000_3c46
    ld a, $01
    ld hl, $01f6
    and a
    ret


    rla
    ld e, $4c
    inc l
    dec bc
    rla
    ld l, [hl]
    ld c, h
    inc l
    ld d, b
    ld a, [bc]
    ld h, c
    rrca
    ld h, c
    inc d
    ld h, c
    add hl, de
    ld h, c
    add hl, de
    ld h, c
    rla
    ld [hl], b
    ld c, h
    inc l
    ld d, b
    rla
    sbc c
    ld c, h
    inc l
    ld d, b
    rla
    cp c
    ld c, h
    inc l
    ld d, b
    rla
    sub $4c
    inc l
    ld d, b

Call_03c_611e:
    push hl
    ld c, a
    and $0f
    ld l, a
    ld h, $00
    ld a, c
    and $f0
    swap a
    ld bc, $000a
    call Call_000_3a74
    ld a, l
    pop hl
    ret


    ld a, [$d799]
    bit 1, a
    jr nz, jr_03c_613f

    ld hl, $6146
    jr jr_03c_6142

jr_03c_613f:
    ld hl, $614b

jr_03c_6142:
    call Call_000_3c36
    ret


    rla
    ld a, $5b
    inc l
    ld d, b
    rla
    cp l
    ld e, e
    inc l
    ld d, b
    ld hl, $615d
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_000_3c36


    ld l, c
    ld h, c
    ld l, [hl]
    ld h, c
    ld [hl], e
    ld h, c
    ld a, b
    ld h, c
    ld a, l
    ld h, c
    add d
    ld h, c
    rla
    db $db
    ld e, e
    inc l
    ld d, b
    rla
    ld h, [hl]
    ld e, h
    inc l
    ld d, b
    rla
    ld a, h
    ld e, h
    inc l
    ld d, b
    rla
    adc a
    ld e, h
    inc l
    ld d, b
    rla
    xor b
    ld e, h
    inc l
    ld d, b
    rla
    push bc
    ld e, h
    inc l
    ld d, b
    rla
    pop hl
    ld e, h
    inc l
    ld d, b
    ld a, [$d7c5]
    add a
    jp c, Jump_03c_61f3

    ld hl, $61fa
    call Call_000_3c36
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jp nz, Jump_03c_61ee

    xor a
    ldh [$9f], a
    ldh [$a1], a
    ld a, $05
    ldh [$a0], a
    call Call_000_35c3
    jr nc, jr_03c_61be

    ld hl, $6204
    jr jr_03c_61f6

jr_03c_61be:
    ld bc, $8505
    call Call_000_3e59
    jr nc, jr_03c_61f9

    xor a
    ld [$cd3d], a
    ld [$cd3f], a
    ld a, $05
    ld [$cd3e], a
    ld hl, $cd3f
    ld de, $d348
    ld c, $03
    ld a, $0c
    call Call_000_3eb4
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld hl, $d7c5
    set 7, [hl]
    jr jr_03c_61f9

Jump_03c_61ee:
    ld hl, $61ff
    jr jr_03c_61f6

Jump_03c_61f3:
    ld hl, $6209

jr_03c_61f6:
    call Call_000_3c36

jr_03c_61f9:
    ret


    rla
    add d
    ld c, a
    jr z, @+$52

    rla
    ld hl, sp+$4f
    jr z, jr_03c_6254

    rla
    inc hl
    ld d, b
    jr z, jr_03c_6259

    rla
    ld b, l
    ld d, b
    jr z, jr_03c_625e

    jr @+$06

    rlca
    adc b
    ld h, e
    ld e, $62
    ld a, [de]
    ld h, d
    nop
    and h
    ld h, e
    call Call_000_3c29
    ret


    ld a, [hl+]
    ld h, d
    adc b
    ld h, d
    sbc a
    ld h, d
    cp l
    ld h, d
    db $db
    ld h, d
    ld sp, hl
    ld h, d
    ld [$71fa], sp
    call nc, Call_03c_77cb
    jr nz, jr_03c_623a

    ld hl, $6283
    call Call_000_3c36
    jr jr_03c_6271

jr_03c_623a:
    ld hl, $d492
    bit 0, [hl]
    set 0, [hl]
    jr nz, jr_03c_6248

    ld hl, $6274
    jr jr_03c_624b

jr_03c_6248:
    ld hl, $627e

jr_03c_624b:
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]

jr_03c_6254:
    and a
    jr nz, jr_03c_626b

    ld a, $01

jr_03c_6259:
    ld [$cc3c], a
    ld b, $3e

jr_03c_625e:
    ld hl, $4000
    call Call_000_3e84
    ld hl, $d492
    set 1, [hl]
    jr jr_03c_6271

jr_03c_626b:
    ld hl, $6279
    call Call_000_3c36

jr_03c_6271:
    jp Jump_000_23d2


    rla
    cp a
    ld h, d
    jr z, @+$52

    rla
    dec sp
    ld h, e
    jr z, jr_03c_62ce

    rla
    ld e, d
    ld h, e
    jr z, jr_03c_62d3

    rla
    ld l, d
    ld h, e
    jr z, jr_03c_62d8

    ld [$9a21], sp
    ld h, d
    call Call_000_3c36
    ld a, $54
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


    rla
    adc [hl]
    ld h, e
    jr z, jr_03c_62ef

    ld [$b821], sp
    ld h, d
    ld a, [$d471]
    bit 6, a
    jr z, jr_03c_62ad

    ld hl, $62b3

jr_03c_62ad:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    sbc [hl]
    ld h, e
    jr z, @+$52

    rla
    db $eb
    ld h, e
    jr z, jr_03c_630d

    ld [$d621], sp
    ld h, d
    ld a, [$d471]
    bit 6, a
    jr z, jr_03c_62cb

    ld hl, $62d1

jr_03c_62cb:
    call Call_000_3c36

jr_03c_62ce:
    jp Jump_000_23d2


    rla
    inc c

jr_03c_62d3:
    ld h, h
    jr z, @+$52

    rla
    ld e, d

jr_03c_62d8:
    ld h, h
    jr z, @+$52

    ld [$f421], sp
    ld h, d
    ld a, [$d471]
    bit 6, a
    jr z, jr_03c_62e9

    ld hl, $62ef

jr_03c_62e9:
    call Call_000_3c36
    jp Jump_000_23d2


jr_03c_62ef:
    rla
    ld a, h
    ld h, h
    jr z, @+$52

    rla
    or h
    ld h, h
    jr z, @+$52

    ld [$013e], sp
    ld [$cc3c], a
    ld a, [$d471]
    bit 6, a
    jr z, jr_03c_6369

    ld hl, $d492
    bit 1, [hl]
    jr z, jr_03c_6312

jr_03c_630d:
    ld a, $00
    ld [$cc3c], a

jr_03c_6312:
    ld hl, $6378
    call Call_000_3c36
    ld a, [$d492]
    bit 1, a
    jr z, jr_03c_636f

    ld a, $01
    ld [$cc3c], a
    ld hl, $637e
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jp z, Jump_03c_63d0

    call Call_000_36ec
    ld hl, $d72f
    set 6, [hl]
    xor a
    ld [$cfca], a
    ld hl, $510a
    ld b, $3a
    call Call_000_3e84
    call Call_000_3852
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3dd8
    call Call_000_2f83
    call Call_000_3dc2
    call Call_000_36f8
    call Call_000_3ddb
    call Call_000_3de0
    ld a, $01
    ld [$cfca], a
    jr jr_03c_636f

jr_03c_6369:
    ld hl, $6372
    call Call_000_3c36

jr_03c_636f:
    jp Jump_000_23d2


    rla
    call nc, $2864
    dec c
    ld d, b
    rla
    db $f4
    ld h, h
    jr z, @+$0f

    ld d, b
    rla
    dec de
    ld h, l
    jr z, jr_03c_63d3

    rla
    ld b, c
    ld h, l
    jr z, @+$52

    rlca
    ld b, $07
    add hl, bc
    dec b
    add hl, bc
    db $10
    inc c
    dec c
    dec c
    rrca
    ld bc, $0f02
    dec c
    dec c
    dec c
    rrca
    ld bc, $0f02
    inc c
    dec bc
    dec c
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    inc b
    nop
    inc bc
    inc bc
    nop
    rlca
    inc b
    nop
    dec bc
    dec b
    ld bc, $060d
    ld [bc], a
    daa
    rlca
    ld b, $ff
    ret nc

    ld bc, $073d
    add hl, bc
    cp $01
    ld [bc], a
    ld e, $c7
    rlca
    ld [bc], a
    ld e, $c7
    rlca
    inc bc

Jump_03c_63d0:
    call Call_000_36ec

jr_03c_63d3:
    xor a
    ld [$cfca], a
    ld hl, $d72f
    set 6, [hl]
    ld hl, $4c5c
    ld b, $3a
    call Call_000_3e84
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3dd8
    call Call_000_2f83
    call Call_000_3dc2
    call Call_000_36f8
    call Call_000_3ddb
    call Call_000_3de0
    ld hl, $6412
    ldh a, [$db]
    and a
    jr nz, jr_03c_6406

    ld hl, $640c

jr_03c_6406:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    adc h
    ld h, l
    jr z, jr_03c_641e

    ld d, b
    rla
    sbc a
    ld h, l
    jr z, jr_03c_6424

    ld d, b
    ld hl, $643b
    call Call_000_3c36

jr_03c_641e:
    call Call_000_35ef
    ld a, [$cc26]

jr_03c_6424:
    and a
    jr nz, jr_03c_6433

jr_03c_6427:
    ld hl, $6440
    call Call_000_3c36
    ld a, $02
    ld [$d660], a
    ret


jr_03c_6433:
    ld hl, $6445
    call Call_000_3c36
    jr jr_03c_6427

    rla
    ld a, c
    ld l, b
    jr z, @+$52

    rla
    ld d, a
    ld l, c
    jr z, @+$52

    rla
    and e
    ld l, c
    jr z, @+$52

    ld a, [$d7f1]
    bit 4, a
    jr nz, jr_03c_647e

    ld hl, $648c
    call Call_000_3c36
    ld bc, $3f01
    call Call_000_3e3f
    jr nc, jr_03c_6485

    ld hl, $6491
    call Call_000_3c36
    ld hl, $d7f1
    set 4, [hl]
    ld a, $08
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, $0a
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4

jr_03c_647e:
    ld hl, $649d
    call Call_000_3c36
    ret


jr_03c_6485:
    ld hl, $6498
    call Call_000_3c36
    ret


    rla
    rlca
    ld l, d
    jr z, jr_03c_64e1

    rla
    xor e
    ld l, d
    jr z, @+$13

    ld b, $50
    rla
    jp nz, Jump_000_286a

    ld d, b
    rla
    ld [c], a
    ld l, d
    jr z, @+$52

    ld hl, $64a9
    call Call_000_3c36
    ret


    rla
    sub c
    ld l, e
    jr z, @+$52

    ld a, [$d35d]
    cp $58
    jr nz, jr_03c_64d2

    call Call_000_154a
    jr z, jr_03c_64d2

    ld a, [$d660]
    cp $05
    ld e, $1b
    ret z

    cp $00
    ld e, $17
    ret z

    ld hl, $d7f1
    bit 5, [hl]
    ld e, $20
    ret z

    ld e, $1f
    ret


jr_03c_64d2:
    ld e, $ff
    ret


    ld a, $ff
    ld [$cd6b], a
    xor a
    ld [$d527], a
    call Call_000_231c

jr_03c_64e1:
    call Call_000_231c
    ld hl, $6505
    call Call_000_159b
    ld a, $0f
    ld [$cd4f], a
    ld a, $01
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    call Call_000_153a
    ld hl, $4f20
    ld b, $3f
    call Call_000_3e84
    ret


    nop
    jr nz, jr_03c_6528

    jr nz, jr_03c_6528

    ccf
    ld hl, $651c
    ld b, $04
    call Call_03c_4a82
    ld hl, $6521
    ld b, $0c
    call Call_03c_4a82
    ret


    nop
    rra
    dec e
    jr c, jr_03c_6560

    nop
    ld e, $1f
    rra
    dec e
    jr c, jr_03c_6567

jr_03c_6528:
    ld hl, $652f
    call Call_000_3c36
    ret


    rla
    ld a, [$2645]
    ld d, b
    ld hl, $653b
    call Call_000_3c36
    ret


    rla
    ld b, e
    ld b, [hl]
    ld h, $50
    ld hl, $6547
    call Call_000_3c36
    ret


    rla
    ld [hl], h
    ld b, [hl]
    ld h, $50
    ld hl, $6553
    call Call_000_3c36
    ret


    rla
    or [hl]
    ld b, [hl]
    ld h, $50
    ld hl, $655f
    call Call_000_3c36
    ret


    rla

jr_03c_6560:
    inc bc
    ld b, a
    ld h, $50
    ld hl, $656b

jr_03c_6567:
    call Call_000_3c36
    ret


    rla
    ld d, a
    ld b, a
    ld h, $50
    ld hl, $6577
    call Call_000_3c36
    ret


    rla
    rst $10
    ld e, d
    ld h, $50
    ld hl, $6583
    call Call_000_3c36
    ret


    rla
    dec hl
    ld e, e
    ld h, $50
    ld hl, $658f
    call Call_000_3c36
    ret


    rla
    ld e, [hl]
    ld e, e
    ld h, $50
    ld hl, $659b
    call Call_000_3c36
    ret


    rla
    adc b
    ld e, e
    ld h, $50
    ld hl, $65ce

jr_03c_65a3:
    ld a, [hl+]
    cp $ff
    jr z, jr_03c_65b4

    push hl
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    pop hl
    jr jr_03c_65a3

jr_03c_65b4:
    ld hl, $65c7

jr_03c_65b7:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    pop hl
    jr jr_03c_65b7

    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    rst $38
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1918
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub l
    sub [hl]
    sub a
    sbc e
    sbc h
    sbc l
    sbc [hl]
    and d
    and e
    and h
    and a
    xor b
    xor c
    xor d
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    cp e
    cp h
    cp l
    cp [hl]
    rst $38
    ld hl, $ffeb
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $668d
    ld de, $0003
    ld a, [$d35d]
    call Call_000_3da7
    jr nc, jr_03c_6649

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $cd3d
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl

jr_03c_661b:
    ld a, [hl+]
    cp $ff
    jr z, jr_03c_6649

    ld [$cd40], a
    ld b, a
    ld a, [hl+]
    ld [$cd41], a
    ld c, a
    call Call_03c_664e
    ldh a, [$ea]
    and a
    jr z, jr_03c_663d

    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld hl, $cd3f
    inc [hl]
    pop hl
    jr jr_03c_661b

jr_03c_663d:
    ld a, [hl+]
    ld [$cd3d], a
    ld a, [hl+]
    ld [$cd3e], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_03c_6649:
    ld a, $ff
    ldh [$ee], a
    ret


Call_03c_664e:
    ld a, [$c109]
    cp $04
    jr z, jr_03c_6663

    cp $08
    jr z, jr_03c_6672

    cp $0c
    jr z, jr_03c_6678

    ld a, [$d360]
    inc a
    jr jr_03c_6667

jr_03c_6663:
    ld a, [$d360]

jr_03c_6666:
    dec a

jr_03c_6667:
    cp b
    jr nz, jr_03c_6688

    ld a, [$d361]
    cp c
    jr nz, jr_03c_6688

    jr jr_03c_6685

jr_03c_6672:
    ld a, [$d361]
    dec a
    jr jr_03c_667c

jr_03c_6678:
    ld a, [$d361]
    inc a

jr_03c_667c:
    cp c
    jr nz, jr_03c_6688

    ld a, [$d360]
    cp b
    jr nz, jr_03c_6688

jr_03c_6685:
    xor a
    jr jr_03c_668a

jr_03c_6688:
    ld a, $ff

jr_03c_668a:
    ldh [$ea], a
    ret


    db $eb
    add c
    ld h, a
    jp nc, Jump_03c_6788

    jp hl


    adc a
    ld h, a
    sub $96
    ld h, a
    rst $10
    sbc l
    ld h, a
    ret c

    xor d
    ld h, a
    db $db
    cp l
    ld h, a
    ld [c], a
    call nz, $e367

jr_03c_66a6:
    bit 4, a
    ld l, a
    jp nc, $a067

    reti


    ld h, a
    and c
    ldh [$67], a
    and d
    rst $20
    ld h, a
    inc sp
    xor $67
    dec a
    ei
    ld h, a
    ld l, b
    ld [$6468], sp
    rrca
    ld l, b
    ld [hl], a
    ld [hl+], a
    ld l, b
    ld a, c
    cpl
    ld l, b
    rst $00
    inc a
    ld l, b
    ret


    ld b, e
    ld l, b
    jp z, Jump_03c_684a

    dec d
    ld d, c
    ld l, b
    ld d, c
    ld e, [hl]
    ld l, b
    ld d, e
    ld l, e
    ld l, b
    ld d, $78
    ld l, b
    rla
    ld a, a
    ld l, b
    jr jr_03c_6666

    ld l, b
    cp c
    sub e
    ld l, b
    inc e
    sbc d
    ld l, b
    ld [hl+], a
    cp c
    ld l, b
    jp nz, Jump_03c_68cc

    inc h
    reti


    ld l, b
    ld e, b
    and $68
    rrca
    db $ed
    ld l, b
    ld b, h
    db $f4
    ld l, b
    inc d
    ld bc, $ef69
    ld [$f069], sp
    dec d
    ld l, c
    add hl, bc
    ld [hl+], a
    ld l, c
    xor [hl]
    cpl
    ld l, c
    or b
    ld [hl], $69
    or c
    dec a
    ld l, c
    or d
    ld d, [hl]
    ld l, c
    or [hl]
    ld e, l
    ld l, c
    ld h, $6a
    ld l, c
    daa
    ld [hl], a
    ld l, c
    jr z, jr_03c_66a6

    ld l, c
    ld bc, $69a3
    add hl, hl
    xor d
    ld l, c
    dec hl
    or a
    ld l, c
    dec l
    call nz, Call_000_3469
    pop de
    ld l, c
    ld [hl], $de
    ld l, c
    ld a, [hl-]
    db $eb
    ld l, c
    inc bc
    ld hl, sp+$69
    ld b, b
    rst $38
    ld l, c
    ld b, c
    inc c
    ld l, d
    ld b, d
    add hl, de
    ld l, d
    db $e4
    ld a, $6a
    adc l
    ld b, l
    ld l, d
    sub d
    ld d, d
    ld l, d
    sub l
    ld e, c
    ld l, d
    dec b
    ld l, h
    ld l, d
    ld e, c
    ld [hl], e
    ld l, d
    ld e, d
    add b
    ld l, d
    ld e, h
    adc l
    ld l, d
    ld b, $fa
    ld l, d
    adc h
    ld bc, $816b
    ld [$846b], sp
    rrca
    ld l, e
    add l
    ld [hl+], a
    ld l, e
    add [hl]
    cpl
    ld l, e
    add a
    inc a
    ld l, e
    sbc d
    ld e, l
    ld l, h
    sbc h
    ld l, d
    ld l, h
    sbc l
    ld [hl], c
    ld l, h

jr_03c_6774:
    and l
    ld a, [hl]
    ld l, h
    and [hl]
    adc e
    ld l, h
    xor d
    or [hl]
    ld l, h
    xor e
    jp $ff6c


    inc c
    ld a, [bc]
    inc b
    jr jr_03c_6774

    ld h, [hl]
    rst $38

Jump_03c_6788:
    inc bc
    inc c
    ld d, d
    dec e
    ld [hl], h
    ld e, a
    rst $38
    rrca
    ld [bc], a
    ld de, $741d
    ld e, a
    rst $38
    dec bc
    ld [bc], a
    inc b
    inc d
    ld h, b
    ld h, b
    rst $38
    add hl, bc
    ld bc, $1d36
    ld [hl], h
    ld e, a
    dec b
    ld a, [bc]
    inc b
    inc d
    and e
    ld h, d
    rst $38
    add hl, bc
    ld bc, $1d28
    ld [hl], h
    ld e, a
    inc bc
    inc d
    inc b
    inc d
    ld c, c
    ld h, h
    add hl, de
    ld [de], a
    inc b
    inc d
    ld c, c
    ld h, h
    rst $38
    dec b
    ld b, $35
    dec e
    ld [hl], h
    ld e, a
    rst $38
    dec c
    db $10
    ld c, a
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld c, $08
    ld c, a
    dec e
    ld [hl], h
    ld e, a
    rst $38
    dec bc
    ld c, $53
    dec e
    ld [hl], h
    ld e, a
    rst $38
    rrca
    rrca
    ld sp, $741d
    ld e, a
    rst $38
    db $10
    add hl, bc
    ld d, e
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld de, $0219
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld [de], a
    ld bc, $1d14
    ld [hl], h
    ld e, a
    ld a, [hl+]
    db $10
    dec bc
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc c
    ld [de], a
    ld a, [bc]
    dec e
    ld [hl], h
    ld e, a
    add hl, bc
    ld hl, $1d50
    ld [hl], h
    ld e, a
    rst $38
    ld bc, $1203
    dec e
    ld [hl], h
    ld e, a
    rst $38
    dec b
    dec c
    nop
    rla
    ld d, e
    ld e, [hl]
    rlca
    dec c
    nop
    rla
    ld d, e
    ld e, [hl]
    add hl, bc
    dec c
    inc bc
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc b
    inc bc
    db $10
    dec e
    ld [hl], h
    ld e, a
    ld [hl+], a
    inc b
    ld b, h
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld [bc], a
    inc c
    ld sp, $741d
    ld e, a
    dec b
    dec d
    ld d, d
    dec e
    ld [hl], h
    ld e, a
    rst $38
    rrca
    dec d
    ld c, a
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld de, $311b
    dec e
    ld [hl], h
    ld e, a
    rst $38

Jump_03c_684a:
    ld bc, $1319
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld de, $1309
    dec e
    ld [hl], h
    ld e, a

jr_03c_6857:
    dec [hl]
    db $10
    ld d, c
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc b
    nop
    ld [$2c18], sp
    ld h, [hl]
    inc bc
    dec c
    inc b
    jr jr_03c_6857

    ld h, [hl]
    rst $38
    db $10
    ld de, $1d53
    ld [hl], h
    ld e, a
    ld bc, $4f0c
    dec e
    ld [hl], h
    ld e, a
    rst $38
    dec b
    jr nc, @+$1f

    dec e
    ld [hl], h
    ld e, a
    rst $38
    ccf
    ld [bc], a
    ld [de], a
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld c, $01
    ld c, a
    dec e
    ld [hl], h
    ld e, a
    dec c
    db $10
    daa
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld [bc], a
    ld bc, $1704
    call nz, $ff5b
    ld c, $0f
    jr z, jr_03c_68bb

    ld [hl], h
    ld e, a
    dec l
    ld [$1d10], sp
    ld [hl], h
    ld e, a
    ld c, b
    ld de, $1d4f
    ld [hl], h
    ld e, a
    ld e, e
    inc b
    ld [hl], $1d
    ld [hl], h
    ld e, a
    ld a, c
    ld [$1d53], sp
    ld [hl], h
    ld e, a
    rst $38
    inc l
    add hl, bc

jr_03c_68bb:
    db $10
    dec e
    ld [hl], h
    ld e, a
    ld b, [hl]
    inc de
    ld [bc], a
    dec e
    ld [hl], h
    ld e, a
    ld e, d
    ld [$1d51], sp
    ld [hl], h
    ld e, a
    rst $38

Jump_03c_68cc:
    ld [bc], a
    dec b
    ld [bc], a
    dec e
    ld [hl], h
    ld e, a
    rlca
    ld a, [de]
    db $10
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc bc
    ld h, $50
    dec e
    ld [hl], h
    ld e, a
    ld bc, $520a
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc b
    ld bc, $0704
    ld c, c
    ld h, l
    rst $38

jr_03c_68ed:
    inc bc
    jr z, jr_03c_68f3

    dec e
    ld [hl], h
    ld e, a

jr_03c_68f3:
    rst $38
    inc b
    nop
    ld [$2c18], sp
    ld h, [hl]
    inc bc
    dec c
    inc b
    jr jr_03c_68ed

    ld h, [hl]
    rst $38
    rlca
    ld c, $50
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc b
    dec b
    ret nc

    ld [$5887], sp
    inc b
    inc b
    ret nc

    ld [$5867], sp
    rst $38
    inc b
    dec b
    ret nc

    ld [$5887], sp
    inc b
    inc b
    ret nc

    ld [$5867], sp
    rst $38

jr_03c_6922:
    dec c
    ld [$14ff], sp
    adc a
    ld l, c
    dec c
    dec bc
    nop
    inc d
    adc a
    ld l, c
    rst $38
    rlca
    rrca
    inc b
    jr jr_03c_6922

    ld h, [hl]
    rst $38
    ld bc, $3101
    dec e
    ld [hl], h
    ld e, a
    rst $38
    add hl, bc
    inc bc
    inc b
    inc d
    add d
    ld l, c

jr_03c_6943:
    add hl, bc
    ld b, $04
    inc d
    add d
    ld l, c
    nop
    inc b
    inc b
    inc d
    ld l, b
    ld l, c
    nop
    dec b
    inc b
    inc d
    ld [hl], l
    ld l, c
    rst $38

jr_03c_6956:
    rrca
    add hl, bc
    inc b
    jr jr_03c_6943

    ld h, l
    rst $38

jr_03c_695d:
    inc b
    nop
    inc b
    jr jr_03c_698e

    ld h, [hl]

jr_03c_6963:
    inc bc
    dec c
    inc b
    jr jr_03c_6956

    ld h, [hl]

jr_03c_6969:
    rst $38
    ld bc, $0400
    rla
    cp e
    ld e, e
    dec b
    inc bc
    ret nc

    rla
    xor [hl]
    ld e, e
    rst $38
    ld bc, $0400
    jr jr_03c_695d

    ld h, [hl]
    ld bc, $0401
    jr jr_03c_6963

    ld h, [hl]
    ld bc, $0407
    jr jr_03c_6969

    ld h, [hl]
    rst $38
    nop
    inc b
    inc b
    rlca

jr_03c_698e:
    pop af
    ld h, d
    nop
    dec b
    inc b
    rlca
    cp $62
    ld bc, $0400
    rlca
    add h
    ld h, [hl]
    ld bc, $0401
    rlca
    add h
    ld h, [hl]
    rst $38

jr_03c_69a3:
    inc b
    ld c, $14
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc b
    nop
    ld [$2c18], sp
    ld h, [hl]
    inc bc

jr_03c_69b1:
    dec c
    inc b
    jr jr_03c_69a3

    ld h, [hl]
    rst $38

jr_03c_69b7:
    inc b
    inc bc
    ld [hl+], a
    inc d
    or $68
    nop
    inc bc
    inc hl
    rla
    ld a, a
    ld e, h
    rst $38
    rrca
    rrca
    inc b
    jr jr_03c_69b1

    ld h, l
    rrca

jr_03c_69cb:
    ld [de], a
    inc b
    jr jr_03c_69b7

    ld h, l
    rst $38

jr_03c_69d1:
    inc bc
    ld [bc], a
    inc b
    rla
    and $5b
    ld b, $02
    inc b
    rla
    db $fc
    ld e, e
    rst $38
    ld a, [bc]
    inc bc
    inc b
    jr jr_03c_69cb

    ld h, l

jr_03c_69e4:
    ld a, [bc]
    ld b, $04
    jr jr_03c_69d1

    ld h, l
    rst $38
    inc b
    nop
    ld [$2c18], sp
    ld h, [hl]
    inc bc
    dec c
    inc b
    jr jr_03c_69e4

    ld h, [hl]
    rst $38

jr_03c_69f8:
    ld [$280f], sp
    dec e
    ld [hl], h
    ld e, a
    rst $38

jr_03c_69ff:
    inc b
    nop
    ld [$2c18], sp
    ld h, [hl]
    inc bc
    dec c
    inc b
    jr jr_03c_69f8

    ld h, [hl]
    rst $38
    dec bc
    inc bc
    inc b
    jr @-$16

    ld h, l
    dec bc
    ld b, $04
    jr jr_03c_69ff

    ld h, l
    rst $38
    nop
    ld bc, $07d0
    db $e4
    ld h, d
    ld bc, $d002
    rlca
    db $e4
    ld h, d
    ld [bc], a
    ld bc, $07d0
    db $e4
    ld h, d
    ld [bc], a
    inc bc
    ret nc

    rlca
    db $e4
    ld h, d
    inc b
    nop
    ret nc

    rlca
    db $e4
    ld h, d
    dec b
    ld bc, $07d0
    db $e4
    ld h, d
    rst $38

jr_03c_6a3e:
    rlca
    ld [de], a
    ld c, a
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc b
    nop
    ld [$2c18], sp
    ld h, [hl]
    inc bc
    dec c
    inc b
    jr jr_03c_6a3e

    ld h, [hl]
    rst $38
    inc c
    inc b
    ld d, d
    dec e
    ld [hl], h
    ld e, a
    rst $38
    ld bc, $0000
    rlca
    dec sp
    ld h, l
    ld bc, $0001
    rlca
    dec sp
    ld h, l
    ld bc, $0007
    rlca
    dec sp
    ld h, l
    rst $38
    dec bc
    ld c, $51
    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc bc
    dec c
    inc b
    jr @-$10

    ld h, [hl]
    inc b

jr_03c_6a7a:
    nop
    inc b
    jr jr_03c_6aaa

    ld h, [hl]
    rst $38

jr_03c_6a80:
    nop
    ld bc, $1704
    ld [de], a
    ld e, h
    nop
    ld b, $04
    rla
    jr z, jr_03c_6ae8

    rst $38
    ld c, $03
    inc b
    jr jr_03c_6a7a

    ld h, l
    ld c, $06
    inc b
    jr jr_03c_6a80

    ld h, l
    ld bc, $0006
    rla
    ld d, e
    ld e, [hl]
    rlca
    ld bc, $1700
    ld h, b
    ld e, [hl]
    add hl, bc
    ld bc, $1701
    ld h, b

jr_03c_6aaa:
    ld e, [hl]
    dec bc
    ld bc, $1702
    ld h, b
    ld e, [hl]
    rlca
    inc bc
    inc bc
    rla
    ld h, b
    ld e, [hl]
    add hl, bc
    inc bc
    inc b
    rla
    ld h, b
    ld e, [hl]
    dec bc
    inc bc
    dec b
    rla
    ld h, b
    ld e, [hl]
    rlca
    dec b
    ld b, $17
    ld h, b
    ld e, [hl]
    add hl, bc
    dec b
    rlca
    rla
    ld h, b
    ld e, [hl]
    dec bc
    dec b
    ld [$6017], sp
    ld e, [hl]
    rlca
    rlca
    add hl, bc
    rla
    ld h, b
    ld e, [hl]
    add hl, bc
    rlca
    ld a, [bc]
    rla
    ld h, b
    ld e, [hl]
    dec bc
    rlca
    dec bc
    rla
    ld h, b
    ld e, [hl]
    rlca

jr_03c_6ae8:
    add hl, bc
    inc c
    rla
    ld h, b
    ld e, [hl]
    add hl, bc
    add hl, bc
    dec c
    rla
    ld h, b
    ld e, [hl]
    dec bc
    add hl, bc
    ld c, $17
    ld h, b
    ld e, [hl]
    rst $38
    rrca

jr_03c_6afb:
    jr nc, jr_03c_6b4c

    dec e
    ld [hl], h
    ld e, a
    rst $38
    inc b
    nop
    ld [$2c18], sp
    ld h, [hl]
    rst $38
    dec b
    nop
    inc b
    jr jr_03c_6afb

    ld h, [hl]
    rst $38
    nop
    inc bc
    ld [hl], $17
    ld a, a
    ld e, h
    nop
    inc b
    ld [hl], $17
    ld a, a
    ld e, h

jr_03c_6b1b:
    inc b

jr_03c_6b1c:
    inc bc
    scf
    inc d
    or $68
    rst $38

jr_03c_6b22:
    inc b
    nop
    ld [$2c18], sp
    ld h, [hl]
    inc bc
    dec c
    inc b
    jr jr_03c_6b1b

    ld h, [hl]
    rst $38
    rrca
    inc bc
    inc b
    jr jr_03c_6b1c

    ld h, l
    rrca
    ld b, $04
    jr jr_03c_6b22

    ld h, l
    rst $38
    rrca
    ld [de], a
    ret nc

    dec c
    pop de
    ld a, [hl]
    ld c, $12
    ret nc

    dec c
    pop de
    ld a, [hl]
    dec c
    ld [de], a
    ret nc

    dec c

jr_03c_6b4c:
    pop de
    ld a, [hl]
    inc c
    ld [de], a
    ret nc

    dec c
    pop de
    ld a, [hl]
    dec bc
    ld [de], a
    ret nc

    dec c
    pop de
    ld a, [hl]
    ld a, [bc]
    ld [de], a
    rst $38
    dec c
    pop de
    ld a, [hl]
    ld a, [bc]
    dec c
    ret nc

    dec c
    pop de
    ld a, [hl]
    dec bc
    dec c
    ret nc

    dec c
    pop de
    ld a, [hl]
    inc c
    dec c
    cp $0d
    pop de
    ld a, [hl]
    dec c
    dec c
    ret nc

    dec c
    pop de
    ld a, [hl]
    ld c, $0d
    ret nc

    dec c
    pop de
    ld a, [hl]
    rrca
    dec c
    ret nc

    dec c
    pop de
    ld a, [hl]
    rrca
    inc c
    ret nc

    dec c
    pop de
    ld a, [hl]
    ld c, $0c
    ret nc

    dec c
    pop de
    ld a, [hl]
    dec c
    inc c
    ret nc

    dec c
    pop de
    ld a, [hl]
    inc c
    inc c
    ret nc

    dec c
    pop de
    ld a, [hl]
    dec bc
    inc c
    ret nc

    dec c
    pop de
    ld a, [hl]
    ld a, [bc]
    inc c
    ret nc

    dec c
    pop de
    ld a, [hl]
    ld a, [bc]
    rlca
    ret nc

    dec c
    pop de
    ld a, [hl]
    dec bc
    rlca
    ret nc

    dec c
    pop de
    ld a, [hl]
    inc c
    rlca
    ret nc

    dec c
    pop de
    ld a, [hl]
    dec c
    rlca
    ret nc

    dec c
    pop de
    ld a, [hl]
    ld c, $07
    ret nc

    dec c
    pop de
    ld a, [hl]
    rrca
    rlca
    ret nc

    dec c
    pop de
    ld a, [hl]
    rrca
    ld b, $d0
    dec c
    pop de
    ld a, [hl]
    ld c, $06
    ret nc

    dec c
    pop de
    ld a, [hl]
    dec c
    ld b, $d0
    dec c
    pop de
    ld a, [hl]
    inc c
    ld b, $fd
    dec c
    pop de
    ld a, [hl]
    dec bc
    ld b, $d0
    dec c
    pop de
    ld a, [hl]
    ld a, [bc]
    ld b, $d0
    dec c
    pop de
    ld a, [hl]
    ld a, [bc]
    ld bc, $0dd0
    pop de
    ld a, [hl]
    dec bc
    ld bc, $0dd0
    pop de
    ld a, [hl]
    inc c
    ld bc, $0dd0
    pop de
    ld a, [hl]
    dec c
    ld bc, $0dd0
    pop de
    ld a, [hl]
    ld c, $01
    ret nc

    dec c
    pop de
    ld a, [hl]
    rrca
    ld bc, $0dd0
    pop de
    ld a, [hl]
    ld [$4500], sp
    dec e
    adc [hl]
    ld h, b
    db $10
    ld bc, $1d45
    adc [hl]
    ld h, b
    dec bc
    inc bc
    ld c, a
    dec e
    adc [hl]
    ld h, b
    ld c, $03
    ld b, l
    dec e
    adc [hl]
    ld h, b
    inc c
    inc b
    ld b, l
    dec e
    adc [hl]
    ld h, b
    inc c
    add hl, bc
    ld c, a
    dec e
    adc [hl]
    ld h, b
    rrca
    add hl, bc
    ld b, l
    dec e
    adc [hl]
    ld h, b
    ld c, $10
    ld b, l
    dec e
    adc [hl]
    ld h, b
    db $10
    ld a, [bc]
    ld b, l
    dec e
    adc [hl]
    ld h, b
    rlca
    dec bc
    ld h, e
    dec e
    adc [hl]
    ld h, b

jr_03c_6c50:
    ld [$9f0f], sp
    dec e
    adc [hl]
    ld h, b
    rrca
    inc c
    ld b, l
    dec e
    adc [hl]
    ld h, b
    rst $38
    inc bc

jr_03c_6c5e:
    dec c
    inc b
    jr jr_03c_6c50

    ld h, [hl]
    inc b

jr_03c_6c64:
    nop
    inc b
    jr @+$2e

    ld h, [hl]
    rst $38
    ld bc, $310a
    dec e
    ld [hl], h
    ld e, a
    rst $38
    rrca
    inc bc
    inc b
    jr jr_03c_6c5e

    ld h, l
    rrca
    ld b, $04
    jr jr_03c_6c64

    ld h, l
    rst $38
    db $10
    ld [$1d0a], sp
    ld [hl], h
    ld e, a
    dec b
    ld [bc], a
    inc b
    ld de, $43b7
    rst $38
    dec c
    ld de, $1804
    add sp, $65
    rlca
    rrca
    ld bc, $af07
    ld h, e
    ld bc, $120a
    rlca
    xor a
    ld h, e
    rlca
    add hl, bc
    inc de
    rlca
    xor a
    ld h, e
    dec c
    add hl, bc
    inc d
    rlca
    xor a
    ld h, e

jr_03c_6ca9:
    dec c
    ld bc, $0705
    xor a
    ld h, e

jr_03c_6caf:
    rlca
    ld bc, $0716
    xor a
    ld h, e
    rst $38
    inc b
    nop
    inc b
    jr jr_03c_6ca9

    ld h, [hl]

jr_03c_6cbc:
    inc b
    ld [bc], a
    inc b
    jr jr_03c_6caf

    ld h, [hl]
    rst $38
    inc b
    nop
    inc b

Jump_03c_6cc6:
    jr jr_03c_6cf4

    ld h, [hl]
    inc bc
    dec c
    inc b
    jr jr_03c_6cbc

    ld h, [hl]
    rst $38

Call_03c_6cd0:
    ld d, $00
    ld hl, $6ce1
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3e98
    ld e, a
    ld d, $00
    ret


    db $eb
    ld l, h
    db $eb
    ld l, h
    xor $6c
    db $f4
    ld l, h
    ld b, $6d
    ld a, $00
    ret


    call Call_000_3e6d
    and $01
    ret


jr_03c_6cf4:
    call Call_000_3e6d
    swap a
    cp $55
    ld b, $00
    ret c

    cp $aa
    ld b, $01
    ret c

    ld b, $02
    ret


    call Call_000_3e6d
    and $03
    ret


    ld hl, $6d31
    ld a, [$cd5b]
    ld c, a
    ld b, $00
    ld a, $09
    call Call_000_3a74
    call Call_000_3a74
    ld a, [hl+]
    ldh [$db], a
    ld e, a
    push hl
    call Call_03c_6cd0
    pop hl
    add hl, de
    add hl, de
    ld a, [hl+]
    ld [$d743], a
    ld a, [hl]
    ld [$d744], a
    ret


    inc b
    ld bc, $0303
    ld bc, $ff01
    inc bc
    rst $38
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    rst $38
    rst $38
    inc b
    ld bc, $0505
    ld bc, $ff01
    dec b
    rst $38
    inc bc
    nop
    inc b
    inc b
    ld b, $06
    nop
    rst $38
    rst $38
    inc b
    ld bc, $0303
    ld bc, $0505
    rlca
    rlca
    inc bc
    ld [bc], a
    inc b
    inc b
    ld [$0208], sp
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    rlca
    add hl, bc
    add hl, bc
    inc bc
    rst $38
    rst $38
    inc b
    inc b
    ld [$0a06], sp
    ld [$0a04], sp
    ld b, $03
    dec b
    rlca
    rlca
    dec bc
    dec bc
    dec b
    rst $38
    rst $38
    inc bc
    ld b, $0a
    ld a, [bc]
    inc c
    inc c
    ld b, $ff
    rst $38
    inc b
    rlca
    add hl, bc
    add hl, bc
    rlca
    dec bc
    dec c
    dec c
    dec bc
    inc bc
    ld [$0a0a], sp
    ld c, $0e
    ld [$ffff], sp
    inc b
    add hl, bc
    dec c
    dec c
    add hl, bc
    add hl, bc
    rst $38
    dec c
    rst $38
    inc bc
    ld a, [bc]
    inc c
    inc c
    ld c, $0e
    ld a, [bc]
    rst $38
    rst $38
    inc b
    dec bc
    dec c
    dec c
    dec bc
    dec bc
    rst $38
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03c_77cb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
