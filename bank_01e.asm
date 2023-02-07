; disasSembly of "yell.gbc"
SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

Call_01e_4000:
    ld l, c
    ld h, b
    ld a, [hl+]
    ld [$d088], a
    ld a, [$d09c]
    ld e, a
    ld a, [$d09b]
    ld d, a
    xor a
    ld [$d083], a

Jump_01e_4012:
    ld a, [$d083]
    inc a
    ld [$d083], a
    ld a, $02
    ld [$def4], a
    ld a, [$d08a]
    dec a
    jr z, jr_01e_4068

    dec a
    jp z, Jump_01e_40ab

    dec a
    jr z, jr_01e_4037

    ld a, [$d081]
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [$d080]
    jr jr_01e_4049

jr_01e_4037:
    ld a, [$d081]
    ld b, a
    ld a, $88
    sub b
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [$d080]
    ld b, a
    ld a, $a8
    sub b

jr_01e_4049:
    add [hl]
    ld [de], a
    cp $58
    jr c, jr_01e_4056

    ld a, [$def4]
    inc a
    ld [$def4], a

jr_01e_4056:
    inc hl
    inc de
    ld a, [hl+]
    add $31
    ld [de], a
    inc de
    ld a, [hl+]
    ld b, a
    ld a, [$def4]
    or b
    ld [de], a
    inc de
    jp Jump_01e_40e1


jr_01e_4068:
    ld a, [$d081]
    add [hl]
    ld b, a
    ld a, $88
    sub b
    ld [de], a
    inc hl
    inc de
    ld a, [$d080]
    add [hl]
    ld b, a
    ld a, $a8
    sub b
    ld [de], a
    cp $58
    jr c, jr_01e_4087

    ld a, [$def4]
    inc a
    ld [$def4], a

jr_01e_4087:
    inc hl
    inc de
    ld a, [hl+]
    add $31
    ld [de], a
    inc de
    ld a, [hl+]
    and a
    ld b, $60
    jr z, jr_01e_40a2

    cp $20
    ld b, $40
    jr z, jr_01e_40a2

    cp $40
    ld b, $20
    jr z, jr_01e_40a2

    ld b, $00

jr_01e_40a2:
    ld a, [$def4]
    or b
    ld [de], a
    inc de
    jp Jump_01e_40e1


Jump_01e_40ab:
    ld a, [$d081]
    add [hl]
    add $28
    ld [de], a
    inc hl
    inc de
    ld a, [$d080]
    add [hl]
    ld b, a
    ld a, $a8
    sub b
    ld [de], a
    cp $58
    jr c, jr_01e_40c8

    ld a, [$def4]
    inc a
    ld [$def4], a

jr_01e_40c8:
    inc hl
    inc de
    ld a, [hl+]
    add $31
    ld [de], a
    inc de
    ld a, [hl+]
    bit 5, a
    jr nz, jr_01e_40d8

    set 5, a
    jr jr_01e_40da

jr_01e_40d8:
    res 5, a

jr_01e_40da:
    ld b, a
    ld a, [$def4]
    or b
    ld [de], a
    inc de

Jump_01e_40e1:
    ld a, [$d083]
    ld c, a
    ld a, [$d088]
    cp c
    jp nz, Jump_01e_4012

    ld a, [$d09d]
    cp $02
    jr z, jr_01e_411b

    ld a, [$d085]
    ld c, a
    call Call_000_372f
    ld a, [$d09d]
    cp $03
    jr z, jr_01e_411b

    cp $04
    jr z, jr_01e_4123

    ld a, [$d07b]
    cp $2d
    jr z, jr_01e_410f

    call Call_01e_4f30

jr_01e_410f:
    ld hl, $c300
    ld a, l
    ld [$d09c], a
    ld a, h
    ld [$d09b], a
    ret


jr_01e_411b:
    ld a, e
    ld [$d09c], a
    ld a, d
    ld [$d09b], a

jr_01e_4123:
    ret


Call_01e_4124:
Jump_01e_4124:
    xor a
    ldh [$8b], a
    ld [$d08a], a
    ld a, [$d07b]
    dec a
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $622a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_01e_4139:
    ld a, [hl+]
    cp $ff
    jr z, jr_01e_41b4

    cp $c0
    jr c, jr_01e_416d

    ld c, a
    ld de, $5145

jr_01e_4146:
    ld a, [de]
    cp c
    jr z, jr_01e_414f

    inc de
    inc de
    inc de
    jr jr_01e_4146

jr_01e_414f:
    ld a, [hl+]
    cp $ff
    jr z, jr_01e_4161

    ld [$cf07], a
    push hl
    push de
    call Call_01e_59cb
    call Call_000_2238
    pop de
    pop hl

jr_01e_4161:
    push hl
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld de, $41b1
    push de
    jp hl


jr_01e_416d:
    ld c, a
    and $3f
    ld [$d085], a
    xor a
    sla c
    rla
    sla c
    rla
    ld [$d09e], a
    ld a, [hl+]
    ld [$cf07], a
    ld a, [hl+]
    ld c, l
    ld b, h
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $6915
    add hl, de
    ld a, l
    ld [$d093], a
    ld a, h
    ld [$d094], a
    ld l, c
    ld h, b
    push hl
    ldh a, [rOBP0]
    push af
    ld a, [$cc79]
    ldh [rOBP0], a
    call Call_000_3040
    call Call_01e_420b
    call Call_01e_41b5
    call Call_01e_4ebb
    pop af
    ldh [rOBP0], a
    call Call_000_3040
    pop hl
    jr jr_01e_4139

jr_01e_41b4:
    ret


Call_01e_41b5:
    ld a, [$d094]
    ld h, a
    ld a, [$d093]
    ld l, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld a, [de]
    ld b, a
    and $1f
    ld [$d086], a
    ld a, b
    and $e0
    cp $a0
    jr nz, jr_01e_41d4

    call Call_01e_4203
    jr jr_01e_41d7

jr_01e_41d4:
    call Call_01e_41fb

jr_01e_41d7:
    srl a
    swap a
    ld [$d08a], a
    cp $04
    ld hl, $0000
    jr nz, jr_01e_41f0

    ld a, [$d086]
    dec a
    ld bc, $0003

jr_01e_41ec:
    add hl, bc
    dec a
    jr nz, jr_01e_41ec

jr_01e_41f0:
    inc de
    add hl, de
    ld a, l
    ld [$d095], a
    ld a, h
    ld [$d096], a
    ret


Call_01e_41fb:
    ld b, a
    ldh a, [$f3]
    and a
    ld a, b
    ret nz

    xor a
    ret


Call_01e_4203:
    ldh a, [$f3]
    and a
    ld a, $40
    ret z

    xor a
    ret


Call_01e_420b:
    ld a, [$d09e]
    add a
    add a
    ld hl, $422b
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld [$d07c], a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld hl, $8310
    ld b, $1e
    ld a, [$d07c]
    ld c, a
    jp Jump_000_15fe


    ld c, a
    scf
    ld b, d
    rst $38
    ld c, a
    daa
    ld b, a
    rst $38
    ld b, b
    scf
    ld b, d
    rst $38
    rrca
    rrca
    rra
    db $10
    ccf
    jr nz, jr_01e_42bd

    ld l, b
    cp a
    add sp, $7f
    ld h, b
    ccf
    ld hl, $417f
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld hl, sp+$38
    db $fc
    ld h, h
    db $fc
    add h
    cp $06
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $111e
    ld e, $18
    jr jr_01e_429e

    inc h
    ld h, d
    ld b, d
    pop de
    add c
    and c
    add c
    pop de
    add c
    xor e
    add c
    push de
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_01e_4280

jr_01e_4280:
    nop
    nop
    adc [hl]
    nop
    ccf
    jr nz, @+$61

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    ld sp, $601f
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_429e:
    nop
    rlca
    rlca
    jr jr_01e_42c2

    inc hl
    inc a
    inc hl
    inc a
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
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop

jr_01e_42bd:
    nop
    inc e
    nop
    ld a, $00

jr_01e_42c2:
    ld h, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_01e_42d0

jr_01e_42d0:
    ld a, h
    nop
    cp $00
    cp $00
    cp $03
    inc bc
    ld b, $05
    dec c
    ld a, [bc]
    ld a, [hl-]
    dec [hl]
    ld d, l
    ld l, d
    ld l, d
    ld d, l
    push de
    xor d
    ld [$00d5], a
    nop
    ldh [$e0], a
    ld d, b
    or b
    or b
    ld d, b
    ld e, b
    xor b
    xor h
    ld d, h
    ld d, [hl]
    xor d
    ld c, $f6
    nop
    nop
    nop
    nop
    ld bc, $0803
    add hl, de
    inc b
    dec c
    inc h
    ld l, h
    ld [de], a
    ld [hl], $12
    ld [hl], $10
    db $10
    ld c, b
    ld e, b
    inc h
    ld l, h
    sub d
    or [hl]
    sub d
    or [hl]
    ld c, c
    db $db
    ld c, c
    db $db
    ld c, c
    db $db
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, c
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    dec a
    dec a
    rlca
    rlca
    ld h, l
    ld h, l
    ld a, b
    ld a, b
    ld c, $0e
    inc bc
    inc bc
    ld c, $0e
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_01e_437d

    jr nz, @+$21

    jr jr_01e_4349

    rlca
    nop
    nop
    nop
    nop
    rst $38
    add hl, bc

jr_01e_4349:
    cp $f2
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ret c

    ret c

    jr nc, jr_01e_4385

    ld h, b
    ld h, b
    jr nz, jr_01e_4398

    jr nz, jr_01e_439a

    jr c, @+$29

    ccf
    jr nz, jr_01e_437f

    db $10
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    db $eb
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    add c
    pop af
    ld b, d
    ld [hl], d
    inc h
    inc [hl]
    jr @+$1a

    dec sp
    ld b, h
    ld c, $f1
    ld b, b
    cp a

jr_01e_437d:
    ld h, [hl]
    sbc c

jr_01e_437f:
    ld a, a
    add b
    dec sp
    call nz, Call_01e_7f00

jr_01e_4385:
    nop
    inc sp
    inc b
    ld a, e
    ld [hl], c
    adc [hl]
    ccf
    ret nz

    add hl, de
    and $00
    rst $38
    ld b, h
    cp e
    inc sp
    ld c, h
    nop
    inc sp
    ld b, b

jr_01e_4398:
    ld a, a
    ld b, b

jr_01e_439a:
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, [hl]
    ccf
    jr nz, jr_01e_43e1

    jr nz, jr_01e_43c3

    jr jr_01e_43ad

    rlca
    ld [$18f8], sp
    add sp, $38
    ret z

jr_01e_43ad:
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca

jr_01e_43c3:
    nop
    inc bc
    nop
    ld bc, $fe00
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    or h
    db $eb
    sbc [hl]
    rst $38
    sub l
    rst $38
    xor d
    rst $38
    ld d, l
    ld a, a

jr_01e_43e1:
    ld a, [hl+]
    ccf
    dec e
    rra
    rlca
    rlca
    rrca
    ld sp, hl
    rra
    pop af
    rst $38
    pop hl
    cp [hl]
    ld a, [c]
    ld e, [hl]
    ld a, [$fcac]
    ld [hl], b
    ldh a, [$c0]
    ret nz

    nop
    nop
    ld [$2a00], sp
    nop
    inc e
    nop
    ld a, a
    nop
    inc e
    nop
    ld a, [hl+]
    nop
    ld [$0300], sp
    nop
    inc c
    nop
    jr nc, jr_01e_440d

jr_01e_440d:
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
    cp a
    cp a

jr_01e_4419:
    ld c, $31
    ld b, a
    ld a, b
    adc a
    ldh a, [rSC]
    db $fd
    ld b, a
    ld a, c
    add [hl]
    cp $38

jr_01e_4426:
    jr c, jr_01e_4426

    cp $e1
    ld de, $8e76
    ld a, b
    sbc b
    ldh [$60], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0302
    inc e
    dec e
    ld [hl+], a
    rra
    jr nz, jr_01e_4484

    ld b, c
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$07f8], sp
    db $fd
    ld [bc], a
    ldh a, [rIF]
    ldh [rNR34], a
    ld b, b
    cp h
    jr nz, jr_01e_4419

    ld b, b
    add b
    add b
    nop
    nop
    nop
    ld a, b
    nop
    rst $00
    jr c, jr_01e_449c

    rst $38
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    add hl, sp
    ccf
    ld b, b
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$110e], sp
    ld e, $21
    inc e

jr_01e_4484:
    ld [hl+], a
    jr nc, jr_01e_44d3

    nop
    ld [hl], b
    ld [hl], b
    adc h
    ldh a, [$0e]
    add b
    ld a, h
    nop
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

jr_01e_449c:
    nop
    nop
    ld bc, $0600
    nop
    ld [$3000], sp
    nop
    ret nz

    nop
    inc bc
    nop
    inc b
    nop
    ld [$b000], sp
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
    ld bc, $0201
    ld bc, $181a
    dec h
    nop
    ld bc, $0201
    ld bc, $0002
    ld bc, $6000
    ld h, b
    sub b

jr_01e_44d3:
    ld h, b
    sub b
    nop
    ld h, b
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    jr nc, jr_01e_4513

    nop
    nop
    ld bc, $f001
    ldh a, [$fc]
    db $fc
    cp $fe
    ccf
    ccf
    rra
    rra
    rra
    rra
    ld a, $3e
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01e_4508

    ld d, $06
    add hl, bc
    rlca
    ld [$0403], sp
    nop

jr_01e_4508:
    jr jr_01e_4522

    inc h
    jr @+$26

    inc a
    ld b, d
    inc a
    ld b, d
    ld a, [hl]

jr_01e_4512:
    add c

jr_01e_4513:
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0700
    inc bc
    inc c
    ld b, $19
    inc c

jr_01e_4522:
    ld [hl-], a
    jr jr_01e_4549

    db $10
    ld l, b
    nop
    inc a
    jr jr_01e_4512

    rst $38
    nop
    jp Jump_000_003c


    jp RST_00


    nop
    nop
    nop
    nop
    ld a, $41
    inc e
    ld h, e
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    inc e
    nop
    db $fc

jr_01e_4549:
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $7f02
    add b
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [$0e]
    ret nz

    ld a, $c0
    inc a
    add b
    ld [hl], b
    jr nc, @+$4e

    ld h, b
    sbc b
    ld h, b
    sbc b
    ld h, b
    sub b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    jr nz, jr_01e_4586

jr_01e_4586:
    nop
    ld b, b
    ld b, b
    call nz, $fcc4
    db $fc
    inc a
    inc a
    rlca
    rlca
    ld b, $06
    inc c
    inc c
    jr c, jr_01e_45cf

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
    inc bc
    inc b
    rlca
    ld [$0806], sp
    nop
    ld [$1408], sp
    ld [$1c14], sp
    ld [hl+], a
    ld a, $41
    ld [hl], $41
    inc e
    ld [hl+], a
    nop
    inc e
    jr @+$26

    nop
    jr jr_01e_45bc

jr_01e_45bc:
    rlca
    rlca
    jr jr_01e_45df

    jr nz, jr_01e_45e1

    jr nz, jr_01e_45cb

    jr jr_01e_45c6

jr_01e_45c6:
    rlca
    nop
    nop
    nop
    nop

jr_01e_45cb:
    nop
    nop
    nop
    rlca

jr_01e_45cf:
    rlca
    jr c, jr_01e_460a

    ld b, b
    rlca
    jr c, jr_01e_45d6

jr_01e_45d6:
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop

jr_01e_45df:
    inc bc
    inc bc

jr_01e_45e1:
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b

jr_01e_45ed:
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a

jr_01e_45f3:
    ldh [$e0], a
    ret nz

    ret nz

    inc bc
    inc b
    rlca
    jr jr_01e_461b

    ld h, b
    ld a, a
    add b
    ld a, a
    add b
    rra
    ld h, b
    daa
    jr c, jr_01e_4609

    inc b
    rst $38
    nop

jr_01e_4609:
    rst $38

jr_01e_460a:
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
    jr nc, jr_01e_4661

    jr nc, jr_01e_4663

jr_01e_461b:
    jr nz, jr_01e_45ed

    ld h, b
    sub b
    ld h, b
    sub b
    jr nz, jr_01e_45f3

    jr nc, @+$4a

    jr nc, jr_01e_466f

    ld [hl], b
    ld [hl], b
    rrca
    rrca
    inc bc
    inc bc
    inc e
    inc e
    jr c, jr_01e_4669

    ret nz

    ret nz

    ldh a, [$f0]
    inc e
    inc e
    nop
    nop
    ld b, b
    ld b, b
    ld [c], a
    and d
    ld b, [hl]
    ld b, [hl]
    ld c, $0a
    ld e, $12
    ld e, $12
    inc c
    inc c
    nop
    rst $38
    ld e, d
    and l
    ld a, [hl]
    add c
    inc h
    db $db
    nop
    rst $38
    ld e, d
    and l
    ld a, [hl]
    add c
    inc h
    db $db
    ld a, [hl]
    add c
    inc h
    db $db
    nop
    rst $38
    ld e, d
    and l
    ld a, [hl]
    add c

jr_01e_4661:
    inc h
    db $db

jr_01e_4663:
    nop
    rst $38
    ld e, d
    and l
    rlca
    rlca

jr_01e_4669:
    jr jr_01e_468a

    daa
    jr c, @+$5a

    ld h, b

jr_01e_466f:
    ld d, b
    ld h, b
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    nop
    ld bc, $4100
    ld bc, $1332
    inc l
    rrca
    db $10
    rrca
    db $10
    rra
    jr nz, jr_01e_46c5

    ret nz

    inc a
    ret nz

    di

jr_01e_468a:
    nop
    rst $08
    nop
    inc a
    inc bc
    di
    rrca
    call z, Call_000_303c
    ldh a, [$c0]
    ret nz

    di
    rrca
    call z, Call_000_303c
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    rlca
    ld [$110e], sp
    inc e
    ld [hl+], a
    jr c, jr_01e_46f5

    ld [hl], b
    adc b
    ldh [rNR10], a
    ret nz

    jr nz, jr_01e_46b8

jr_01e_46b8:
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra

jr_01e_46c5:
    jr nz, @+$41

    inc a
    inc a
    ld c, [hl]
    ld b, d
    add l
    add e
    add l
    add e
    call $f983
    add a
    ld b, d
    ld a, [hl]
    inc a
    inc a

jr_01e_46d7:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    ld hl, $203f
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    daa
    add hl, sp
    inc h
    dec sp
    ld c, l
    ld [hl], d

jr_01e_46f5:
    ld c, c
    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$60], a
    or b
    ld d, b
    jr nc, jr_01e_46d7

    inc a
    inc a
    ld b, d
    ld a, [hl]
    pop bc
    rst $38
    db $e3
    cp a
    push af
    sbc a
    ld a, e
    ld c, l
    ld a, [hl]
    ld c, d
    inc a
    inc a
    jr c, jr_01e_4751

    rra
    rla
    ld l, a
    ld [hl], c
    ld a, [c]
    ld e, $ff
    add c
    ld a, a
    ld b, c
    ld a, a
    ld h, e
    inc a
    inc a
    ret nz

    ret nz

    ldh [$a0], a
    ldh [$a0], a
    ldh a, [$90]
    ld hl, sp-$78
    cp h
    add h
    ld e, [hl]
    ld b, d
    ld c, a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01e_475d

    inc [hl]
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_01e_4751:
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a

jr_01e_475d:
    rlca
    inc b
    rst $38
    db $fc
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_01e_4768

jr_01e_4768:
    ld [$1d00], sp
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $00
    cp c
    ei
    add l
    ld a, h
    ld b, e
    ccf
    ld sp, $0f0f
    nop
    add c
    add c
    ld b, d
    add c
    ld b, d
    jp Jump_01e_6624


    sbc c
    inc h
    db $db
    inc a
    jp Jump_01e_6618


    nop
    nop
    nop
    nop
    inc de
    inc de
    ccf
    ccf
    rra
    rra
    jr jr_01e_47cb

    rrca
    rrca
    ld [$0008], sp
    nop
    jr c, jr_01e_47f3

    ld hl, sp-$08
    add sp, -$18
    adc b
    adc b
    ld a, b
    ld a, b
    add h
    add h
    inc b
    inc b
    inc bc
    inc bc
    rrca
    inc c

jr_01e_47cb:
    ccf
    jr nc, jr_01e_484d

    ld d, c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    add b
    add b
    ldh [$60], a
    ldh a, [$f0]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    cp $02
    cp $02
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0302
    inc b

jr_01e_47f3:
    ld b, $19
    inc e
    ld [hl+], a
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ccf
    ld a, $41
    ld b, c
    cp [hl]
    ld [$04f5], sp
    dec bc
    nop
    rlca
    rlca
    ld [$0000], sp
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    daa
    jr nz, jr_01e_483d

    db $10
    inc c
    inc c
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    and h
    cp h
    add sp, $78
    add sp, $38

jr_01e_483d:
    ret c

    ld a, b
    sub $fe
    ld sp, $a9ff
    ld l, a
    add $c6
    jr nz, jr_01e_4888

    jr nz, jr_01e_488a

    jr nc, jr_01e_488c

jr_01e_484d:
    jr nc, jr_01e_488e

    inc e
    rra
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, jr_01e_489d

    jr nz, jr_01e_48df

    ld b, c
    ld a, [hl]
    ld b, [hl]
    ld hl, sp-$68
    ldh [$e0], a
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, b
    rlca
    jr c, jr_01e_4877

    inc a
    inc bc
    inc e

jr_01e_4877:
    nop
    rlca
    nop
    rlca
    nop
    rra
    ld bc, $033e
    inc a
    inc bc
    inc e

jr_01e_4883:
    inc bc
    inc e
    ld bc, $020e

jr_01e_4888:
    inc bc
    ld [bc], a

jr_01e_488a:
    inc bc
    dec b

jr_01e_488c:
    rlca
    dec b

jr_01e_488e:
    rlca
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    inc bc
    ld b, b
    ret nz

    add b
    add b
    nop
    nop

jr_01e_489d:
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_01e_4883

    db $10
    ldh a, [$f0]
    ldh a, [$0c]
    inc c
    inc b
    inc b
    ld [$3808], sp
    jr c, jr_01e_4928

    ld a, b
    ld a, b
    ld a, b
    jr nc, @+$32

    nop
    nop
    ld [$0808], sp
    ld [$1c1c], sp
    inc a
    inc a
    inc a
    inc a
    jr jr_01e_48db

    nop
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld c, [hl]
    ld [hl], c
    ld b, b
    ld a, a
    jr nc, jr_01e_4914

    rrca
    rrca
    db $fc
    inc b
    cp $02

jr_01e_48db:
    ld a, [$a246]
    ld a, [hl]

jr_01e_48df:
    inc h
    db $fc
    ld e, b
    ld hl, sp-$20
    ldh [rP1], a
    nop
    jr nc, jr_01e_4938

    ccf
    ld b, b
    ld bc, $013e
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    inc b
    dec bc
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    ld [bc], a
    dec b
    ld bc, $0002

jr_01e_4914:
    ld bc, $0000
    add b
    ld b, b
    ld b, b
    or b
    jr nc, jr_01e_4965

    ld a, b
    add h
    sbc h
    ld h, d
    ld c, $91
    ld b, $89
    nop
    ld b, $00

jr_01e_4928:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01e_4938

    ld d, $06
    add hl, bc
    rlca
    ld [$0403], sp
    nop

jr_01e_4938:
    ld bc, $0100
    ld bc, $0102
    ld [bc], a
    inc bc
    inc b
    rlca
    adc b
    adc a
    ld [hl], b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rrca
    rrca
    ccf
    ccf
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

jr_01e_4965:
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld e, $1f
    rlca
    rlca
    ccf
    ccf
    ld a, a
    ld a, a
    db $fc
    rst $38
    ldh [rIE], a
    jp $0ffc


    ldh a, [$3e]
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rra
    jr jr_01e_49c8

    daa
    ld h, b
    ld e, b
    ret nz

    and a
    add a
    ret c

    nop
    nop
    ld [hl], b
    ld [hl], b
    cp $06
    ld [bc], a
    db $fc
    ld bc, $0103
    db $fd
    ld a, [hl]
    add d
    sbc h
    ld a, b
    nop
    ld b, c
    ld b, $37
    ld [$100e], sp
    add hl, de
    db $10
    ld d, $0c
    dec c
    inc bc
    ld [$0607], sp
    call nz, $02fc
    adc [hl]
    ld [bc], a
    ld [hl], d
    db $f4
    inc c

jr_01e_49bf:
    ld a, [de]
    ld a, [de]
    ld a, d
    ld [c], a
    db $f4
    inc c
    jr jr_01e_49bf

    nop

jr_01e_49c8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    nop
    nop
    ld bc, $1c01
    inc e
    ccf
    ccf
    ld a, h
    ld a, h
    ld hl, sp-$08
    ldh [$e0], a

jr_01e_49e1:
    ld hl, sp-$08

jr_01e_49e3:
    db $fc
    db $fc

jr_01e_49e5:
    ldh [$e0], a

jr_01e_49e7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_49ee:
    nop
    nop
    ld [de], a
    ld [de], a
    dec l
    dec d
    ld a, [hl+]
    dec sp
    call nz, $b040
    ldh a, [$08]
    xor b
    ld d, h
    ld d, h
    xor d
    ld hl, sp+$04
    db $f4
    ld a, [bc]
    ld hl, sp+$04
    ldh [rNR23], a
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    jr nz, jr_01e_49ee

    jr nz, jr_01e_49e1

    jr nz, jr_01e_49e3

    jr nz, jr_01e_49e5

    jr nz, jr_01e_49e7

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
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
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    ld bc, $0302
    inc b
    rlca
    ld [$300f], sp
    ccf
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
    nop
    rst $38
    nop
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    ccf
    inc a

Jump_01e_4a6a:
    ccf
    ld a, c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], e
    ld a, h
    di
    db $fc
    rst $20
    ld hl, sp-$1a
    ld hl, sp+$78
    add b
    ldh [rP1], a
    ret nz

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
    ld a, [hl]
    ld h, c
    rst $28
    sbc [hl]
    adc [hl]
    sub b
    ld b, b
    ld h, c
    dec l
    ld e, $42
    ld c, h
    jr nz, jr_01e_4ac6

    ld b, $0f
    ld a, [c]
    ld [$6684], a
    jr jr_01e_4ab7

    call c, $f0e4
    ld a, [bc]
    db $10
    ld de, $e1c0
    jr c, jr_01e_4adf

    add hl, bc
    add hl, bc
    dec bc
    ld [$050e], sp

jr_01e_4aad:
    inc de
    rra
    nop
    add hl, bc
    ld de, $0e16
    add hl, bc
    inc bc
    inc bc

jr_01e_4ab7:
    db $e4
    db $e4
    add sp, $08
    jr nc, jr_01e_4aad

    ret z

    ldh a, [$08]
    ret z

    ret z

    jr nc, jr_01e_4af4

    ldh a, [$c0]

jr_01e_4ac6:
    ret nz

    inc bc
    inc bc
    ld c, $0e
    jr c, jr_01e_4b05

    ld a, a
    ld a, a
    rra
    rra
    inc c
    inc c
    jr nc, jr_01e_4b05

    ld b, b
    ld b, b
    rrca
    rrca

jr_01e_4ad9:
    ccf
    ccf

jr_01e_4adb:
    rst $38
    rst $38

jr_01e_4add:
    rst $00
    rst $38

jr_01e_4adf:
    add e
    rst $00

jr_01e_4ae1:
    add e
    rst $00

jr_01e_4ae3:
    add e
    rst $00

jr_01e_4ae5:
    rst $00
    rst $38

jr_01e_4ae7:
    nop
    ld hl, $5720
    ld [hl+], a
    ld e, l
    dec [hl]
    jp z, $d42b

    rst $10
    jr z, @+$01

jr_01e_4af4:
    nop
    rst $38
    nop
    nop
    nop
    ld e, $1e
    ld a, $22
    ld a, d
    ld b, [hl]
    ld [hl], d
    ld c, [hl]
    ld h, h
    ld e, h
    ld a, b
    ld a, b

jr_01e_4b05:
    nop
    nop
    jr nz, jr_01e_4ad9

    jr nz, jr_01e_4adb

    jr nz, jr_01e_4add

    jr nz, jr_01e_4adf

    jr nz, jr_01e_4ae1

    jr nz, jr_01e_4ae3

    jr nz, jr_01e_4ae5

    jr nz, jr_01e_4ae7

    nop
    inc a
    nop
    inc a
    nop
    jr jr_01e_4b1e

jr_01e_4b1e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_4b28:
    ld bc, $0f00
    nop
    ccf
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld c, [hl]
    nop
    inc e
    nop
    nop
    nop
    jr z, jr_01e_4b3a

jr_01e_4b3a:
    ld a, [hl+]
    nop
    ld l, [hl]
    nop
    ld a, [hl]
    jr jr_01e_4b28

    inc a
    jp $c33c


    inc a
    ld b, d
    nop
    nop
    nop
    stop
    inc d
    nop
    inc a
    nop
    ld a, [hl]
    jr jr_01e_4bb9

    jr jr_01e_4bbb

    jr jr_01e_4b7b

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
    ld bc, $0301
    inc bc
    dec de
    dec de
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $10
    db $10
    jr c, jr_01e_4bb3

jr_01e_4b7b:
    jr c, jr_01e_4bb5

    ld a, h
    ld c, h
    ld c, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    jr c, jr_01e_4bbf

    ld h, h
    inc e
    ld h, h
    inc e
    ld [hl-], a
    ld c, $32
    ld c, $32
    ld c, $19
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    ld [hl-], a
    ld c, $32
    ld c, $32
    ld c, $19
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca

jr_01e_4bb3:
    add hl, de
    rlca

jr_01e_4bb5:
    add hl, de
    rlca
    rst $38
    rst $38

jr_01e_4bb9:
    rst $38
    rst $38

jr_01e_4bbb:
    rst $38
    rst $38
    rst $38
    rst $38

jr_01e_4bbf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    ld a, $00
    db $fc
    nop
    ld h, b
    nop
    jr c, jr_01e_4bd1

jr_01e_4bd1:
    inc a
    nop
    inc a
    nop
    ldh a, [rP1]
    ld h, b
    nop
    ld a, h
    nop
    ccf
    nop
    sub e
    nop
    reti


    nop
    db $fc
    nop
    ld a, [hl]
    nop
    nop
    nop
    jr nc, jr_01e_4be9

jr_01e_4be9:
    ld [hl-], a
    nop
    halt
    ld a, a
    nop
    ld [hl], e
    nop
    ld h, a
    nop
    inc l
    nop
    inc c
    nop
    nop
    ccf
    nop
    ld a, a
    rra
    ld h, b
    ld [$0877], sp
    ld [hl], $04
    ld a, [hl-]
    ld b, $19
    ld [bc], a
    dec c
    ld bc, $010e
    ld b, $00
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b
    rlca
    dec b
    rlca
    ld a, [bc]
    ld c, $0c
    inc c
    db $10
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc d
    inc e
    daa
    ccf
    ld b, b
    ld a, a
    add b
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
    rst $38
    rst $38
    ld bc, $02ff
    cp $c2
    cp $84
    db $fc
    adc b
    ld hl, sp-$4c
    or h
    adc l
    adc l
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    nop
    nop
    nop
    dec l
    dec l
    xor l
    xor l
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    adc a
    adc a
    or [hl]
    or [hl]
    add l
    add l
    nop
    nop
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    db $e3
    db $e3
    dec l
    dec l
    and e
    and e
    dec h
    ccf
    ld b, b
    ld l, a
    ld b, b
    ld l, a
    ld b, b
    ld a, a
    ld hl, $1e3f
    ld e, $00
    nop
    nop
    nop
    sub h
    db $fc
    add d
    cp [hl]
    add d
    cp [hl]
    add d
    cp $84
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    ld hl, $403f
    ld l, a
    ld b, b
    ld l, a
    ld b, e
    ld a, a
    inc h
    inc a
    ccf
    ccf
    nop
    nop
    nop
    nop
    call c, $b4dc
    or h
    db $e4
    db $e4
    ld a, [bc]
    ld a, [bc]
    ld [$6aea], a
    ld l, d
    ld a, h
    ld c, b
    ld a, h
    ld e, b
    ld a, a
    ld b, b
    dec a
    jr nz, jr_01e_4d1e

    jr nz, @+$1f

    jr jr_01e_4ceb

    rlca

Jump_01e_4ce5:
    nop
    nop
    ld a, $12
    ld a, $1a

jr_01e_4ceb:
    cp $02
    cp h
    inc b
    ld a, h
    inc b
    cp b
    jr @-$1e

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    jr jr_01e_4d3f

    ld h, $3f
    jr nz, jr_01e_4d83

    ld b, a
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    ld h, h
    db $fc
    inc b
    cp $e2
    cp $02
    jr nc, jr_01e_4d46

    inc e
    inc de
    rrca
    inc c
    inc bc

jr_01e_4d1e:
    ld [bc], a
    rra
    inc e
    ccf
    jr nz, jr_01e_4d63

    ld hl, $1f1f
    ld b, $da
    inc e
    db $e4
    ld hl, sp+$18
    ldh [rNR41], a
    ldh [rNR41], a
    ld hl, sp+$78
    db $fc
    db $fc
    inc b
    inc b
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    ld [de], a

jr_01e_4d3f:
    ccf
    add hl, hl
    ld h, a
    ld e, h
    ld h, e
    ld d, [hl]
    ld h, c

jr_01e_4d46:
    ld d, e
    nop
    nop
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc h
    cp $4a
    di
    dec e
    db $e3
    dec [hl]
    jp Jump_01e_4ce5


    ld c, h
    jp nz, $40c2

    ld b, b
    ret


    ret


    ld h, $26
    jr jr_01e_4d7b

jr_01e_4d63:
    rlca
    rlca
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    ld b, e
    ld b, e
    ld [bc], a
    ld [bc], a
    sub e
    sub e
    ld h, h
    ld h, h
    jr jr_01e_4d8b

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_4d7b:
    ld bc, $3301
    ld [hl-], a
    ld a, e
    ld a, d
    ld l, a
    ld a, [hl]

jr_01e_4d83:
    ld a, e
    ld a, d
    ld h, c
    ld h, c
    nop
    nop
    nop
    nop

jr_01e_4d8b:
    add b
    add b
    call z, $de4c
    ld e, [hl]
    or $7e
    sbc $5e
    add [hl]
    add [hl]
    push hl
    push de
    push bc
    push af
    call Call_000_373e
    call Call_01e_4e5c
    ld a, [$d07b]
    and a
    jr z, jr_01e_4dc9

    cp $c1
    jr nz, jr_01e_4db2

    ld de, $4dc9
    push de
    jp Jump_01e_5fb7


jr_01e_4db2:
    ld a, [$d354]
    bit 7, a
    jr nz, jr_01e_4dc1

    call Call_01e_4ddf
    call Call_01e_4124
    jr jr_01e_4dc6

jr_01e_4dc1:
    ld c, $1e
    call Call_000_372f

jr_01e_4dc6:
    call Call_01e_4df6

jr_01e_4dc9:
    call Call_000_373e
    xor a
    ld [$d095], a
    ld [$d09a], a
    ld [$d08a], a
    dec a
    ld [$cf07], a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_01e_4ddf:
    ldh a, [$f3]
    and a
    ret z

    ld a, [$d07b]
    cp $85
    ld b, $bf
    jr z, jr_01e_4df1

    cp $9c
    ld b, $bd
    ret nz

jr_01e_4df1:
    ld a, b
    ld [$d07b], a
    ret


Call_01e_4df6:
    ld a, [$cc5b]
    and a
    ret z

    dec a
    add a
    ld c, a
    ld b, $00
    ld hl, $4e08
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc d
    ld c, [hl]
    inc e
    ld c, [hl]
    inc h
    ld c, [hl]
    add hl, hl
    ld c, [hl]
    cpl
    ld c, [hl]
    scf
    ld c, [hl]
    call Call_01e_600b
    ld b, $08
    jp Jump_01e_5283


    call Call_01e_600b
    ld b, $08
    jp Jump_01e_528a


    ld bc, $0602
    jr jr_01e_4e3a

    call Call_01e_600b
    jp Jump_01e_5421


    call Call_01e_600b
    ld b, $02
    jp Jump_01e_528a


    ld bc, $0302

jr_01e_4e3a:
    push bc
    push bc

jr_01e_4e3c:
    ldh a, [rWX]
    inc a
    ldh [rWX], a
    ld c, $02
    call Call_000_372f
    dec b
    jr nz, jr_01e_4e3c

    pop bc

jr_01e_4e4a:
    ldh a, [rWX]
    dec a
    ldh [rWX], a
    ld c, $02
    call Call_000_372f
    dec b
    jr nz, jr_01e_4e4a

    pop bc
    dec c
    jr nz, jr_01e_4e3a

    ret


Call_01e_4e5c:
    ld a, [$cf1a]
    and a
    ld a, $e4
    jr z, jr_01e_4e86

    ld a, $f0
    ld [$cc79], a
    ld b, $e4
    ld a, [$d07b]
    cp $aa
    jr c, jr_01e_4e78

    cp $ae
    jr nc, jr_01e_4e78

    ld b, $f0

jr_01e_4e78:
    ld a, b
    ldh [rOBP0], a
    ld a, $6c
    ldh [rOBP1], a
    call Call_000_3040
    call Call_000_3061
    ret


jr_01e_4e86:
    ld a, $e4
    ld [$cc79], a
    ldh [rOBP0], a
    ld a, $6c
    ldh [rOBP1], a
    call Call_000_3040
    call Call_000_3061
    ret


    call Call_000_36ec
    xor a
    ldh [$ba], a
    call Call_000_16dd
    ld h, $98
    call Call_01e_4eb1
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    call Call_000_36f8
    ld h, $9c

Call_01e_4eb1:
    ld l, $00
    call Call_01e_5fae
    ld a, $01
    ldh [$ba], a
    ret


Call_01e_4ebb:
    ld a, [$cf07]
    cp $ff
    jr z, jr_01e_4ec8

    call Call_01e_59cb
    call Call_000_2238

jr_01e_4ec8:
    ld hl, $c300
    ld a, l
    ld [$d09c], a
    ld a, h
    ld [$d09b], a
    ld a, [$d096]
    ld h, a
    ld a, [$d095]
    ld l, a

Jump_01e_4edb:
    push hl
    ld c, [hl]
    ld b, $00
    ld hl, $711c
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl
    inc hl
    push hl
    ld e, [hl]
    ld d, $00
    ld hl, $7e2d
    add hl, de
    add hl, de
    ld a, [hl+]
    ld [$d081], a
    ld a, [hl]
    ld [$d080], a
    pop hl
    inc hl
    ld a, [hl]
    ld [$d09d], a
    call Call_01e_4000
    call Call_01e_4f3f
    ld a, [$d086]
    dec a
    ld [$d086], a
    ret z

    ld a, [$d096]
    ld h, a
    ld a, [$d095]
    ld l, a
    ld a, [$d08a]
    cp $04
    ld bc, $0003
    jr nz, jr_01e_4f24

    ld bc, $fffd

jr_01e_4f24:
    add hl, bc
    ld a, h
    ld [$d096], a
    ld a, l
    ld [$d095], a
    jp Jump_01e_4edb


Call_01e_4f30:
Jump_01e_4f30:
    push hl
    push de
    push bc
    push af
    call Call_000_1e64
    call Call_000_0082
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_01e_4f3f:
    push hl
    push de
    push bc
    ld a, [$d07b]
    ld hl, $4f5d
    ld de, $0003
    call Call_000_3da7
    jr nc, jr_01e_4f59

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $4f59
    push de
    jp hl


jr_01e_4f59:
    pop bc
    pop de
    pop hl
    ret


    dec b
    inc l
    ld d, d
    inc c
    inc l
    ld d, d
    add hl, de
    inc l
    ld d, d
    dec e
    inc l
    ld d, d
    daa
    dec sp
    ld d, c
    dec l
    daa
    ld d, c
    ld [hl-], a
    inc l
    ld d, d
    dec sp
    add c
    ld d, b
    dec a
    inc l
    ld d, d
    ccf
    ld l, e
    ld d, b
    ld d, l
    ld h, d
    ld d, b
    ld [hl], e
    inc l
    ld d, d
    ld a, b
    ld [hl], h
    ld d, b
    sub e
    ld l, e
    ld d, b
    sbc c
    ld [hl], h
    ld d, b
    sbc l
    ld b, h
    ld d, b
    xor d
    xor h
    ld d, b
    xor e
    or a
    ld d, b
    xor h
    rst $20
    ld d, b
    pop bc
    and [hl]
    ld c, a
    jp nz, Jump_01e_5001

    jp Jump_01e_5039


    push bc
    and [hl]
    ld c, a
    add $a6
    ld c, a
    rst $38
    ld a, [$cf90]
    cp $03
    jr nc, jr_01e_4fb6

    ldh a, [rOBP0]
    xor $3c
    ldh [rOBP0], a
    call Call_000_3040

jr_01e_4fb6:
    ld a, [$d086]
    cp $0b
    jr nz, jr_01e_4fc2

    ld a, $91
    call Call_000_2238

jr_01e_4fc2:
    ld a, [$d056]
    cp $02
    jr z, jr_01e_4ff6

    ld a, [$d11d]
    cp $10
    ret nz

    ld a, [$d086]
    cp $03
    jr z, jr_01e_4fdd

    cp $02
    jr z, jr_01e_4fdd

    cp $01
    ret nz

jr_01e_4fdd:
    ld hl, $c3b1
    ld de, $0014
    ld bc, $0707

jr_01e_4fe6:
    push hl
    push bc
    call Call_01e_59be
    pop bc
    pop hl
    add hl, de
    dec b
    jr nz, jr_01e_4fe6

    ld a, $08
    ldh [rNR10], a
    ret


jr_01e_4ff6:
    ld a, [$d086]
    cp $03
    ret nz

    dec a
    ld [$d086], a
    ret


Jump_01e_5001:
    ld a, [$d086]
    cp $04
    jr nz, jr_01e_5012

    ld a, $8c
    call Call_000_2238
    ld c, $28
    call Call_000_372f

jr_01e_5012:
    ld a, [$d086]
    dec a
    ret nz

    ld a, [$cd3d]
    dec a
    ld [$cd3d], a
    ret z

    ld a, [$d095]
    ld l, a
    ld a, [$d096]
    ld h, a
    ld de, $fff4
    add hl, de
    ld a, l
    ld [$d095], a
    ld a, h
    ld [$d096], a
    ld a, $05
    ld [$d086], a
    ret


Jump_01e_5039:
    ld a, [$d086]
    cp $05
    ret nz

    ld a, $93
    jp Jump_000_2238


    ld a, [$d086]
    cp $0c
    ret nc

    cp $08
    jr nc, jr_01e_5054

    cp $01
    jp z, Jump_01e_522c

    ret


jr_01e_5054:
    ld b, $01
    ld a, $24
    call Call_000_3eb4
    ld b, $01
    ld a, $21
    jp Jump_000_3eb4


    ld a, [$d086]
    and $07
    call z, Call_01e_522c
    ret


jr_01e_506b:
    ld a, [$d086]
    and $03
    call z, Call_01e_522c
    ret


    ld a, [$d086]
    cp $01
    jr nz, jr_01e_506b

    ld hl, $c405
    jp Jump_01e_595d


    ld a, [$d086]
    cp $0d
    jp z, Jump_01e_522c

    cp $09
    jp z, Jump_01e_522c

    cp $05
    jp z, Jump_01e_522c

    cp $01
    jp z, Jump_01e_522c

    ret


    ld a, [$d086]
    cp $0e
    jp z, Jump_01e_522c

    cp $09
    jp z, Jump_01e_522c

    cp $02
    jp z, Jump_01e_522c

    ret


    ld a, [$d086]
    cp $06
    ret nz

    ld a, $2f
    jp Jump_01e_5968


    ld a, [$d086]
    cp $01
    ret nz

    ld de, $50e3

jr_01e_50c0:
    ld hl, $c300
    ld bc, $0004

jr_01e_50c6:
    ld a, [de]
    cp $ff
    jr z, jr_01e_50db

    add [hl]
    ld [hl], a
    add hl, bc
    ld a, l
    cp $10
    jr nz, jr_01e_50c6

    inc de
    push bc
    call Call_000_3ddb
    pop bc
    jr jr_01e_50c0

jr_01e_50db:
    call Call_01e_4f30
    ld a, $98
    jp Jump_000_2238


    db $f4
    db $f4
    ld hl, sp-$01
    ld de, $511e

jr_01e_50ea:
    ld hl, $c300
    ld bc, $0004

jr_01e_50f0:
    ld a, [de]
    cp $ff
    jp z, Jump_000_16dd

    add [hl]
    ld [hl], a
    add hl, bc
    ld a, l
    cp $10
    jr nz, jr_01e_50f0

    inc de
    push de
    ld a, [de]
    cp $0c
    jr z, jr_01e_5109

    cp $ff
    jr nz, jr_01e_510e

jr_01e_5109:
    ld a, $ae
    call Call_000_2238

jr_01e_510e:
    push bc
    ld c, $05
    call Call_000_372f
    pop bc
    ldh a, [$ae]
    sub $08
    ldh [$ae], a
    pop de
    jr jr_01e_50ea

    dec bc
    inc c
    db $f4
    ld sp, hl
    rlca
    inc c
    ld hl, sp+$08
    rst $38
    ld hl, $c300
    ld de, $c310
    ld bc, $0010
    call Call_000_00b1
    ld a, [$d086]
    dec a
    call z, Call_01e_4f30
    ret


    ld a, $01
    ld [$d086], a
    ld c, $14
    jp Jump_000_372f


    cp $2c
    ld d, d
    db $fd
    ld c, l
    ld d, d
    db $fc
    ld h, c
    ld d, d
    ei
    adc b
    ld d, d
    ld a, [$528f]
    ld sp, hl
    ld d, d
    ld d, d
    ld hl, sp-$30
    ld d, c
    rst $30
    inc d
    ld d, e
    or $31
    ld d, e
    push af
    ld b, c
    ld d, h
    db $f4
    ld c, c
    ld d, e
    di
    daa
    ld d, h
    ld a, [c]
    or c
    ld d, h
    pop af
    call $f054
    ld l, e
    ld d, d
    rst $28
    ld e, l
    ld e, c
    xor $70
    ld d, l
    db $ed
    ret z

    ld d, l
    db $ec
    dec [hl]
    ld d, [hl]
    db $eb
    cp e
    ld e, b
    ld [$566e], a
    jp hl


    sbc b
    ld d, [hl]
    add sp, -$38
    ld e, b
    rst $20
    ret nc

    ld e, l
    and $e2
    ld e, l
    push hl
    inc d
    ld d, a
    db $e4
    nop
    ld e, a
    db $e3
    nop
    ld e, a
    ld [c], a
    call c, $e154
    cp e
    ld d, c
    ldh [$50], a
    ld d, h
    rst $18
    add hl, de
    ld e, c
    sbc $21
    ld d, h
    db $dd
    ld d, [hl]
    ld d, h
    call c, Call_01e_5463
    db $db
    ld d, e
    ld d, e
    jp c, Jump_01e_5469

    reti


    xor a
    ld d, a
    ret c

    dec [hl]
    ld d, a
    rst $38
    ld c, $0a
    jp Jump_000_372f


Call_01e_51c0:
Jump_01e_51c0:
    ldh a, [$f3]
    push af
    xor $01
    ldh [$f3], a
    ld de, $51cc
    push de
    jp hl


    pop af
    ldh [$f3], a
    ret


    ld a, $03
    ld [$d089], a
    ld a, [$cf1a]
    and a
    ld hl, $51fc
    jr z, jr_01e_51e1

    ld hl, $5209

jr_01e_51e1:
    push hl

jr_01e_51e2:
    ld a, [hl+]
    cp $01
    jr z, jr_01e_51f1

    ldh [rBGP], a
    call Call_000_3021
    call $5216
    jr jr_01e_51e2

jr_01e_51f1:
    ld a, [$d089]
    dec a
    ld [$d089], a
    pop hl
    jr nz, jr_01e_51e1

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
    ld bc, $fcf8
    rst $38
    db $fc
    ld hl, sp-$1c
    sub b
    ld b, b
    nop
    ld b, b
    sub b
    db $e4
    ld bc, $89fa
    ret nc

    cp $04
    ld c, $04
    jr z, jr_01e_5229

    cp $03
    ld c, $02
    jr z, jr_01e_5229

    cp $02
    ld c, $01

jr_01e_5229:
    jp Jump_000_372f


Call_01e_522c:
Jump_01e_522c:
    ldh a, [rBGP]
    push af
    ld a, $1b
    ldh [rBGP], a
    call Call_000_3021
    ld c, $02
    call Call_000_372f
    xor a
    ldh [rBGP], a
    call Call_000_3021
    ld c, $02
    call Call_000_372f
    pop af
    ldh [rBGP], a
    call Call_000_3021
    ret


    ld bc, $6f6f
    jr jr_01e_5273

    ld bc, $f9f4
    jr jr_01e_5273

    ld bc, $fef8
    jr jr_01e_5273

    ld bc, $ffff
    jr jr_01e_5273

    ld bc, $e4e4
    jr jr_01e_5273

    ld bc, $0000
    jr jr_01e_5273

    ld bc, $9090
    jr jr_01e_5273

    ld bc, $4040

jr_01e_5273:
    ld a, [$cf1a]
    and a
    ld a, b
    jr z, jr_01e_527b

    ld a, c

jr_01e_527b:
    ldh [rBGP], a
    call Call_000_3021
    ret


    ld b, $05

Jump_01e_5283:
    ld a, $21
    jp Jump_000_3eb4


    ld b, $08

Jump_01e_528a:
    ld a, $24
    jp Jump_000_3eb4


    xor a
    ld [$d09e], a
    call Call_01e_420b
    ld d, $20
    ld a, $f0
    ld [$d080], a
    ld a, $71
    ld [$d09e], a

jr_01e_52a2:
    ld a, $10
    ld [$d081], a
    ld a, $00
    ld [$d089], a
    call Call_01e_52c0
    ld a, $18
    ld [$d081], a
    ld a, $20
    ld [$d089], a
    call Call_01e_52c0
    dec d
    jr nz, jr_01e_52a2

    ret


Call_01e_52c0:
    ld hl, $c300

jr_01e_52c3:
    ld a, $01
    ld [$def4], a
    ld a, [$d081]
    ld [hl+], a
    cp $28
    jr c, jr_01e_52d7

    ld a, [$def4]
    inc a
    ld [$def4], a

jr_01e_52d7:
    ld a, [$d080]
    add $1b
    ld [$d080], a
    ld [hl+], a
    cp $58
    jr c, jr_01e_52ee

    ld a, [$def4]
    add $02
    and $03
    ld [$def4], a

jr_01e_52ee:
    ld a, [$d09e]
    ld [hl+], a
    ld a, [$def4]
    ld [hl+], a
    ld a, [$d080]
    cp $90
    jr c, jr_01e_52c3

    sub $a8
    ld [$d080], a
    ld a, [$d081]
    add $10
    ld [$d081], a
    cp $70
    jr c, jr_01e_52c3

    call Call_01e_4f30
    jp Jump_000_1e64


    ld c, $07
    ldh a, [$f3]
    and a
    ld hl, $c419
    ld de, $c405
    ld a, $30
    jr z, jr_01e_532b

    ld hl, $c3c0
    ld de, $c3ac
    ld a, $ff

jr_01e_532b:
    ld [$d09e], a
    jp Jump_01e_5359


Call_01e_5331:
    xor a
    call Call_01e_599e

jr_01e_5335:
    call Call_01e_597c
    push bc
    push de
    call Call_01e_5c0a
    call Call_000_3ddb
    call Call_01e_595d
    pop de
    pop bc
    dec b
    jr nz, jr_01e_5335

    ret


Call_01e_5349:
    ld e, $08
    ld a, $03
    ld [$d08a], a
    jp Jump_01e_56c7


    ld hl, $5349
    jp Jump_01e_51c0


Jump_01e_5359:
jr_01e_5359:
    push de
    push hl
    push bc
    ld b, $06

jr_01e_535e:
    push bc
    push de
    push hl
    ld bc, $0007
    call Call_000_00b1
    pop de
    pop hl
    ld bc, $0028
    add hl, bc
    pop bc
    dec b
    jr nz, jr_01e_535e

    ldh a, [$f3]
    and a
    ld hl, $c47d
    jr z, jr_01e_537c

    ld hl, $c424

jr_01e_537c:
    ld a, [$d09e]
    inc a
    ld [$d09e], a
    ld c, $07

jr_01e_5385:
    ld [hl+], a
    add $07
    dec c
    jr nz, jr_01e_5385

    ld c, $02
    call Call_000_372f
    pop bc
    pop hl
    pop de
    dec c
    jr nz, jr_01e_5359

    ret


Call_01e_5397:
    ld a, $10
    ld [$d080], a
    ld a, $30
    ld [$d081], a
    ld hl, $c300
    ld d, $00
    ld c, $07

jr_01e_53a8:
    ld a, [$d081]
    ld e, a
    ld b, $05

jr_01e_53ae:
    call Call_01e_53c3
    inc d
    dec b
    jr nz, jr_01e_53ae

    dec c
    ret z

    inc d
    inc d
    ld a, [$d080]
    add $08
    ld [$d080], a
    jr jr_01e_53a8

Call_01e_53c3:
    ld a, $01
    ld [$def4], a
    ld a, e
    add $08
    ld e, a
    ld [hl+], a
    cp $28
    jr c, jr_01e_53d8

    ld a, [$def4]
    inc a
    ld [$def4], a

jr_01e_53d8:
    ld a, [$d080]
    ld [hl+], a
    cp $58
    jr c, jr_01e_53e8

    ld a, [$def4]
    add $02
    ld [$def4], a

jr_01e_53e8:
    ld a, d
    ld [hl+], a
    ld a, [$def4]
    ld [hl+], a
    ret


    ld l, e
    ld h, d

Call_01e_53f1:
    ld de, $0004

jr_01e_53f4:
    ld a, [$d089]
    ld b, a
    ld a, [hl]
    add b
    cp $a8
    jr c, jr_01e_5402

    dec hl
    ld a, $a0
    ld [hl+], a

jr_01e_5402:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_01e_53f4

    ret


    ld l, e
    ld h, d

Call_01e_540a:
    ld de, $0004

jr_01e_540d:
    ld a, [$d089]
    ld b, a
    ld a, [hl]
    add b
    cp $70
    jr c, jr_01e_541b

    dec hl
    ld a, $a0
    ld [hl+], a

jr_01e_541b:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_01e_540d

    ret


Jump_01e_5421:
    ld hl, $5427
    jp Jump_01e_51c0


    push af
    ld c, $06

jr_01e_542a:
    push bc
    call Call_01e_595d
    ld c, $05
    call Call_000_372f
    call Call_01e_5456
    ld c, $05
    call Call_000_372f
    pop bc
    dec c
    jr nz, jr_01e_542a

    pop af
    ret


Call_01e_5441:
    ld a, [$d013]
    ld [$ceea], a
    ld a, [$cfe4]
    ld [$cee9], a
    jp Jump_01e_58d4


    ld hl, $5441
    jp Jump_01e_51c0


Call_01e_5456:
Jump_01e_5456:
    xor a
    call Call_01e_599e
    call Call_01e_597c
    call Call_01e_5c0a
    jp Jump_000_3ddb


Call_01e_5463:
    ld hl, $5456
    jp Jump_01e_51c0


Jump_01e_5469:
    ldh a, [$f3]
    and a
    ld hl, $c404
    ld de, $c406
    jr z, jr_01e_547a

    ld hl, $c3ab
    ld de, $c3ad

jr_01e_547a:
    xor a
    ld c, $10

jr_01e_547d:
    push af
    push bc
    push de
    push hl
    push hl
    push de
    push af
    push hl
    push hl
    call Call_01e_599e
    pop hl
    call Call_01e_5c0a
    call Call_000_3ddb
    pop hl
    ld bc, $0709
    call Call_000_1692
    pop af
    call Call_01e_599e
    pop hl
    call Call_01e_5c0a
    call Call_000_3ddb
    pop hl
    ld bc, $0709
    call Call_000_1692
    pop hl
    pop de
    pop bc
    pop af
    dec c
    jr nz, jr_01e_547d

    ret


    call Call_01e_595d
    ldh a, [$f3]
    and a
    ld hl, $c406
    jr z, jr_01e_54bf

    ld hl, $c3ab

jr_01e_54bf:
    xor a
    push hl
    call Call_01e_599e
    pop hl
    call Call_01e_5c0a
    ld c, $03
    jp Jump_000_372f


    ldh a, [$f3]
    and a
    ld a, $66
    jr z, jr_01e_54d6

    ld a, $0b

jr_01e_54d6:
    call Call_01e_5968
    jp Jump_01e_5456


    ldh a, [$f3]
    and a
    jr z, jr_01e_54ed

    ld a, $d8
    ld [$d089], a
    ld a, $50
    ld [$d08a], a
    jr jr_01e_54f4

jr_01e_54ed:
    xor a
    ld [$d089], a
    ld [$d08a], a

jr_01e_54f4:
    ld d, $7a
    ld c, $03
    xor a
    call Call_01e_5943
    ld hl, $5545

jr_01e_54ff:
    push hl
    ld c, $03
    ld de, $c300

jr_01e_5505:
    ld a, [hl]
    cp $ff
    jr z, jr_01e_553e

    ld a, $02
    ld [$def4], a
    ld a, [$d089]
    add [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [$d08a]
    add [hl]
    ld [de], a
    cp $58
    jr c, jr_01e_5524

    ld a, $03
    ld [$def4], a

jr_01e_5524:
    inc hl
    inc de
    inc de
    ld a, [de]
    and $f0
    ld b, a
    ld a, [$def4]
    or b
    ld [de], a
    inc de
    dec c
    jr nz, jr_01e_5505

    ld c, $05
    call Call_000_372f
    pop hl
    inc hl
    inc hl
    jr jr_01e_54ff

jr_01e_553e:
    pop hl
    call Call_01e_4f30
    jp Jump_01e_522c


    jr c, @+$2a

    ld b, b
    jr @+$52

    db $10
    ld h, b
    jr jr_01e_55b6

    jr z, jr_01e_55b0

    jr c, @+$52

    ld b, b
    ld b, b
    jr c, @+$42

    jr z, jr_01e_559e

    ld e, $50
    jr @+$5d

    ld e, $60
    jr z, @+$5d

    ld [hl-], a
    ld d, b
    jr c, @+$48

    ld [hl-], a
    ld c, b
    jr z, @+$52

    jr nz, jr_01e_55c2

    jr z, jr_01e_55bc

    jr nc, @+$52

    jr z, @+$01

    ld c, $04

jr_01e_5572:
    push bc
    ldh a, [$f3]
    and a
    jr z, jr_01e_5580

    ld hl, $c3b0
    ld de, $c3ae
    jr jr_01e_5586

jr_01e_5580:
    ld hl, $c409
    ld de, $c407

jr_01e_5586:
    push de
    xor a
    ld [$d09e], a
    call Call_01e_55a3
    pop hl
    ld a, $01
    ld [$d09e], a
    call Call_01e_55a3
    pop bc
    dec c
    jr nz, jr_01e_5572

    call Call_01e_595d

jr_01e_559e:
    ld c, $02
    jp Jump_000_1e64


Call_01e_55a3:
    ld c, $07

jr_01e_55a5:
    push bc
    push hl
    ld c, $03
    ld a, [$d09e]
    cp $00
    jr nz, jr_01e_55b6

jr_01e_55b0:
    call Call_01e_59b7
    dec hl
    jr jr_01e_55ba

jr_01e_55b6:
    call Call_01e_59be
    inc hl

jr_01e_55ba:
    ld [hl], $7f

jr_01e_55bc:
    pop hl
    ld de, $0014
    add hl, de
    pop bc

jr_01e_55c2:
    dec c
    jr nz, jr_01e_55a5

    jp Jump_000_3ddb


    ldh a, [$f3]
    and a
    jr z, jr_01e_55d2

    ld bc, $0080
    jr jr_01e_55d5

jr_01e_55d2:
    ld bc, $3028

jr_01e_55d5:
    ld a, b
    ld [$d081], a
    ld a, c
    ld [$d080], a
    ld bc, $0501
    call Call_01e_55e6
    jp Jump_01e_4f30


Call_01e_55e6:
    push bc
    xor a
    ld [$d09e], a
    call Call_01e_420b
    pop bc
    ld d, $7a
    ld hl, $c300
    push bc
    ld a, [$d081]
    ld e, a

jr_01e_55f9:
    call Call_01e_53c3
    dec b
    jr nz, jr_01e_55f9

    call Call_000_1e64
    pop bc
    ld a, b
    ld [$d089], a

jr_01e_5607:
    push bc
    ld hl, $c300

jr_01e_560b:
    ld a, [$d081]
    add $08
    ld e, a
    ld a, [hl]
    cp e
    jr z, jr_01e_561a

    add $fc
    ld [hl], a
    jr jr_01e_5623

jr_01e_561a:
    ld [hl], $00
    ld a, [$d089]
    dec a
    ld [$d089], a

jr_01e_5623:
    ld de, $0004
    add hl, de
    dec b
    jr nz, jr_01e_560b

    call Call_000_372f
    pop bc
    ld a, [$d089]
    and a
    jr nz, jr_01e_5607

    ret


    ldh a, [$f3]
    and a
    ld hl, $5660
    ld a, $50
    jr z, jr_01e_5644

    ld hl, $5667
    ld a, $28

jr_01e_5644:
    ld [$cd3d], a

jr_01e_5647:
    ld a, [$cd3d]
    ld [$d081], a
    ld a, [hl+]
    cp $ff
    jp z, Jump_01e_4f30

    ld [$d080], a
    ld bc, $0401
    push hl
    call Call_01e_55e6
    pop hl
    jr jr_01e_5647

    db $10
    ld b, b
    jr z, @+$1a

    jr c, jr_01e_5696

    rst $38
    ld h, b
    sub b
    ld a, b
    ld l, b
    adc b
    add b
    rst $38

Call_01e_566e:
Jump_01e_566e:
    ld hl, $c6e8
    push hl
    xor a
    ld bc, $0310
    call Call_000_166e
    pop hl
    ld de, $0194
    add hl, de
    ld de, $5693
    ld c, $05

jr_01e_5683:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_01e_5683

    call Call_01e_5721
    call Call_000_3ddb
    jp Jump_01e_5456


    jr jr_01e_56d1

    ld a, [hl]

jr_01e_5696:
    inc a
    inc h
    ld a, $01
    ld c, $02

jr_01e_569c:
    push bc
    push af
    call Call_01e_595d
    pop af
    push af
    call Call_01e_599e
    call Call_01e_597c
    call Call_01e_5c0a
    ld c, $08
    call Call_000_372f
    pop af
    inc a
    pop bc
    dec c
    jr nz, jr_01e_569c

    call Call_01e_595d
    ld hl, $c6e8
    ld bc, $0310
    xor a
    call Call_000_166e
    jp Jump_01e_5721


Call_01e_56c7:
Jump_01e_56c7:
    ldh a, [$f3]
    and a
    jr z, jr_01e_56d1

    ld hl, $c3ac
    jr jr_01e_56d4

jr_01e_56d1:
    ld hl, $c404

jr_01e_56d4:
    ld d, $08

jr_01e_56d6:
    push hl
    ld b, $07

jr_01e_56d9:
    ld c, $08

jr_01e_56db:
    ldh a, [$f3]
    and a
    jr z, jr_01e_56e5

    call Call_01e_570b
    jr jr_01e_56e8

jr_01e_56e5:
    call Call_01e_5702

jr_01e_56e8:
    ld [hl+], a
    dec c
    jr nz, jr_01e_56db

    push de
    ld de, $000c
    add hl, de
    pop de
    dec b
    jr nz, jr_01e_56d9

    ld a, [$d08a]
    ld c, a
    call Call_000_372f
    pop hl
    dec d
    dec e
    jr nz, jr_01e_56d6

    ret


Call_01e_5702:
    ld a, [hl]
    add $07
    cp $62
    ret c

    ld a, $7f
    ret


Call_01e_570b:
    ld a, [hl]
    sub $07
    cp $30
    ret c

    ld a, $7f
    ret


    ld e, $04
    ld a, $04
    ld [$d08a], a
    call Call_01e_56c7
    jp Jump_000_3ddb


Call_01e_5721:
Jump_01e_5721:
    ldh a, [$f3]
    and a
    ld hl, $9310
    jr z, jr_01e_572c

    ld hl, $9000

jr_01e_572c:
    ld de, $c6e8
    ld bc, $0031
    jp Jump_000_15fe


    ld hl, $9800
    call Call_01e_5fae
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    ld a, $90
    ldh [$b0], a
    ld d, $80
    ld e, $8f
    ld c, $ff
    ld hl, $578e

jr_01e_574e:
    push hl

jr_01e_574f:
    call Call_01e_577d
    ldh a, [rLY]
    cp e
    jr nz, jr_01e_574f

    pop hl
    inc hl
    ld a, [hl]
    cp d
    jr nz, jr_01e_5760

    ld hl, $578e

jr_01e_5760:
    dec c
    jr nz, jr_01e_574e

    xor a
    ldh [$b0], a
    call Call_000_36ec
    call Call_000_16dd
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    call Call_000_36f8
    ld hl, $9c00
    call Call_01e_5fae
    ret


Call_01e_577d:
jr_01e_577d:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_01e_577d

    ld a, [hl]
    ldh [rSCX], a
    inc hl
    ld a, [hl]
    cp d
    ret nz

    ld hl, $578e
    ret


    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $ff
    rst $38
    rst $38
    add b

Call_01e_57af:
    ld hl, $c6e8
    xor a
    ld bc, $0310
    call Call_000_166e
    ldh a, [$f3]
    and a
    jr z, jr_01e_57e4

    ld hl, $4b71
    ld de, $c808
    call Call_01e_580e
    ld hl, $4b81
    ld de, $c878
    call Call_01e_580e
    ld hl, $4b91
    ld de, $c818
    call Call_01e_580e
    ld hl, $4ba1
    ld de, $c888
    call Call_01e_580e
    jr jr_01e_5808

jr_01e_57e4:
    ld hl, $4bb1
    ld de, $c878
    call Call_01e_580e
    ld hl, $4bc1
    ld de, $c8e8
    call Call_01e_580e
    ld hl, $4bd1
    ld de, $c888
    call Call_01e_580e
    ld hl, $4be1
    ld de, $c8f8
    call Call_01e_580e

jr_01e_5808:
    call Call_01e_5721
    jp Jump_01e_5456


Call_01e_580e:
    ld bc, $0010
    ld a, $05
    jp Jump_000_009d


    ldh a, [$f3]
    and a
    ld hl, $ccf7
    ld de, $d061
    ld bc, $cfd1
    ld a, [$d062]
    jr z, jr_01e_5833

    ld hl, $ccf3
    ld de, $d066
    ld bc, $cfcb
    ld a, [$d067]

jr_01e_5833:
    push hl
    push de
    push bc
    bit 4, a
    jr nz, jr_01e_583f

    call Call_01e_5331
    jr jr_01e_5842

jr_01e_583f:
    call Call_01e_5349

jr_01e_5842:
    pop bc
    pop de
    ld a, [de]
    bit 6, a
    pop hl
    jr nz, jr_01e_5853

    ld a, [bc]
    cp $13
    jr z, jr_01e_585e

    cp $5b
    jr z, jr_01e_585e

jr_01e_5853:
    ld a, [hl]
    and a
    jp nz, Jump_01e_566e

    call Call_01e_5441
    jp Jump_01e_5456


jr_01e_585e:
    ldh a, [$f3]
    and a
    jr nz, jr_01e_587b

    ld a, [$ccf7]
    and a
    jr nz, jr_01e_5893

    ld a, [$d013]
    ld [$cf90], a
    ld [$d0b4], a
    call Call_000_132f
    ld a, $04
    call Call_000_3eb4
    ret


jr_01e_587b:
    ld a, [$ccf3]
    and a
    jr nz, jr_01e_5893

    ld a, [$cfe4]
    ld [$cf90], a
    ld [$d0b4], a
    call Call_000_132f
    ld de, $9000
    jp Jump_000_143e


jr_01e_5893:
    ld hl, $c6e8
    push hl
    xor a
    ld bc, $0310
    call Call_000_166e
    pop hl
    ld de, $0194
    add hl, de
    ld de, $5693
    ld c, $05

jr_01e_58a8:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_01e_58a8

    jp Jump_01e_5721


    call Call_01e_5349
    call Call_01e_57af
    jp Jump_01e_5456


    ld c, $05

jr_01e_58bd:
    push bc
    call Call_01e_5331
    pop bc
    dec c
    jr nz, jr_01e_58bd

    jp Jump_01e_5456


    ld a, [$cfe4]
    ld [$ceea], a
    ld a, [$d013]
    ld [$cee9], a

Jump_01e_58d4:
    ldh a, [$f3]
    and a
    jr z, jr_01e_58f1

    ld a, [$cee9]
    ld [$cf90], a
    ld [$d0b4], a
    xor a
    ld [$d0a9], a
    call Call_000_132f
    ld hl, $c3ac
    call Call_000_1149
    jr jr_01e_5914

jr_01e_58f1:
    ld a, [$cfd8]
    push af
    ld a, [$ceea]
    ld [$cfd8], a
    ld [$d0b4], a
    call Call_000_132f
    ld a, $04
    call Call_000_3eb4
    xor a
    call Call_01e_599e
    call Call_01e_597c
    call Call_01e_5c0a
    pop af
    ld [$cfd8], a

jr_01e_5914:
    ld b, $01
    jp Jump_000_3e05


    xor a
    ldh [$ba], a
    ld hl, $595d
    call Call_01e_51c0
    ld a, $01
    ldh [$ba], a
    jp Jump_000_3ddb


    ld hl, $ccf7
    ldh a, [$f3]
    and a
    jr z, jr_01e_5934

    ld hl, $ccf3

jr_01e_5934:
    ld a, [hl]
    and a
    jr z, jr_01e_593c

    call Call_01e_566e
    ret


jr_01e_593c:
    call Call_01e_5441
    call Call_01e_5456
    ret


Call_01e_5943:
    push bc
    push de
    ld [$d09e], a
    call Call_01e_420b
    pop de
    pop bc
    xor a
    ld e, a
    ld [$d080], a
    ld hl, $c300

jr_01e_5955:
    call Call_01e_53c3
    dec c
    jr nz, jr_01e_5955

    ret


    ret


Call_01e_595d:
Jump_01e_595d:
    ldh a, [$f3]
    and a
    jr z, jr_01e_5966

    ld a, $0c
    jr jr_01e_5968

jr_01e_5966:
    ld a, $65

Call_01e_5968:
Jump_01e_5968:
jr_01e_5968:
    push hl
    push de
    push bc
    ld e, a
    ld d, $00
    ld hl, $c3a0
    add hl, de
    ld bc, $0707
    call Call_000_1692
    pop bc
    pop de
    pop hl
    ret


Call_01e_597c:
    push de
    ldh a, [$f3]
    and a
    jr nz, jr_01e_5986

    ld a, $65
    jr jr_01e_5988

jr_01e_5986:
    ld a, $0c

jr_01e_5988:
    ld hl, $c3a0
    ld e, a
    ld d, $00
    add hl, de
    ld a, $07
    sub b
    and a
    jr z, jr_01e_599c

    ld de, $0014

jr_01e_5998:
    add hl, de
    dec a
    jr nz, jr_01e_5998

jr_01e_599c:
    pop de
    ret


Call_01e_599e:
    ld hl, $5c46
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a
    and $0f
    ld c, a

jr_01e_59b0:
    ld a, b
    swap a
    and $0f
    ld b, a
    ret


Call_01e_59b7:
jr_01e_59b7:
    ld a, [hl-]
    ld [hl+], a
    inc hl
    dec c
    jr nz, jr_01e_59b7

    ret


Call_01e_59be:
jr_01e_59be:
    ld a, [hl+]
    ld [hl-], a
    dec hl
    dec c
    jr nz, jr_01e_59be

    ret


    ld a, b
    call Call_01e_59cb
    ld b, a
    ret


Call_01e_59cb:
    ld hl, $5a18
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld b, a
    call Call_01e_5a09
    jr nc, jr_01e_59ff

    ldh a, [$f3]
    and a
    jr nz, jr_01e_59e5

    ld a, [$d013]
    jr jr_01e_59e8

jr_01e_59e5:
    ld a, [$cfe4]

jr_01e_59e8:
    push hl
    call Call_000_11a5
    ld b, a
    pop hl
    ld a, [$c0f1]
    add [hl]
    ld [$c0f1], a
    inc hl
    ld a, [$c0f2]
    add [hl]
    ld [$c0f2], a
    jr jr_01e_5a07

jr_01e_59ff:
    ld a, [hl+]
    ld [$c0f1], a
    ld a, [hl+]
    ld [$c0f2], a

jr_01e_5a07:
    ld a, b
    ret


Call_01e_5a09:
    ld a, [$d07b]
    cp $2d
    jr z, jr_01e_5a16

    cp $2e
    jr z, jr_01e_5a16

    and a
    ret


jr_01e_5a16:
    scf
    ret


    and b
    nop
    add b
    and d
    db $10
    add b
    or e
    nop
    add b
    and c
    ld bc, $a380
    nop
    ld b, b
    jp hl


    nop
    rst $38
    and e
    db $10
    ld h, b
    and e
    jr nz, jr_01e_59b0

    and e
    nop
    and b
    and [hl]
    nop
    add b
    and l
    jr nz, jr_01e_5a79

    and l
    nop
    add b
    and h
    nop
    and b
    and a
    db $10
    ret nz

    and a
    nop
    and b
    xor b
    nop
    ret nz

    xor b
    db $10

jr_01e_5a4a:
    and b
    xor c
    nop
    ldh [$a7], a
    jr nz, @-$3e

    xor d
    nop

jr_01e_5a53:
    add b
    cp c
    nop
    add b
    xor e
    ld bc, $b780
    nop
    add b
    xor l
    ldh a, [rLCDC]
    or b
    nop
    add b
    xor l
    nop
    add b
    cp b
    db $10
    add b
    or c
    ld bc, $aea0
    nop
    add b
    or h
    nop
    ld h, b
    or h
    ld bc, $b640
    nop
    and b
    or b

jr_01e_5a79:
    db $10
    and b
    or a
    nop
    ret nz

    xor d
    db $10
    ld h, b
    or b
    nop
    and b
    cp c
    ld de, $b0c0
    jr nz, jr_01e_5a4a

    cp b
    nop
    add b
    or c
    nop
    add b
    or c
    jr nz, jr_01e_5a53

    xor a
    nop
    add b
    db $db

jr_01e_5a97:
    rst $38
    ld b, b
    or h
    nop
    add b
    and c
    nop
    ret nz

    and c
    nop
    ld b, b
    db $e4
    nop
    add b
    cp a
    ld b, b
    ld h, b
    cp a
    nop
    add b
    cp a
    rst $38
    ld b, b
    rst $00
    add b
    ret nz

    xor a
    db $10
    and b
    xor a
    ld hl, $c5e0
    nop
    add b
    cp e
    jr nz, jr_01e_5b1d

    rst $00
    nop
    add b
    call z, $8000
    jp nz, $8040

    push bc
    ldh a, [$e0]
    rst $08
    nop
    add b
    rst $00
    ldh a, [$60]
    jp nz, $8000

    and $00
    add b
    sbc l
    ld bc, $a9a0

jr_01e_5ad9:
    ldh a, [rNR41]
    cp d
    ld bc, $bac0
    nop
    add b
    or b
    nop
    ldh [$be], a
    ld bc, $be60
    jr nz, jr_01e_5b2a

jr_01e_5aea:
    cp e
    nop
    add b
    cp e
    ld b, b
    ret nz

    or c
    inc bc
    ld h, b
    cp l
    ld de, $a8e0
    jr nz, jr_01e_5ad9

    jp nc, $8000

    or d
    nop
    add b
    or d
    ld de, $b2a0
    ld bc, $a9c0
    inc d
    ret nz

jr_01e_5b08:
    or c
    ld [bc], a
    and b
    push bc
    ldh a, [$80]
    push bc
    jr nz, @-$3e

    push de
    nop
    jr nz, jr_01e_5aea

    jr nz, jr_01e_5a97

    jp nc, $6012

    cp [hl]
    nop
    add b

jr_01e_5b1d:
    xor d
    ld bc, $c5e0
    rrca
    ldh [$c5], a
    ld de, $a620
    db $10
    ld b, b
    and l

jr_01e_5b2a:
    db $10
    ret nz

    xor d
    nop
    jr nz, jr_01e_5b08

    nop
    add b
    db $e4
    ld de, $9f18
    jr nz, @-$3e

    sbc [hl]
    jr nz, @-$3e

    cp l
    nop
    db $10
    cp [hl]
    ldh a, [rNR41]
    rst $18
    ldh a, [$c0]
    and a
    ldh a, [$e0]
    sbc a
    ldh a, [rLCDC]
    db $db
    nop

jr_01e_5b4c:
    add b
    rst $18
    add b
    ld b, b

jr_01e_5b50:
    rst $18
    nop
    add b
    xor d
    ld de, $aa20
    ld [hl+], a
    db $10
    or c
    pop af
    rst $38
    xor c
    pop af
    rst $38

jr_01e_5b5f:
    xor d
    inc sp
    jr nc, @-$21

    ld b, b
    ret nz

    and h
    jr nz, jr_01e_5b88

    and h
    ldh a, [rNR10]
    and l
    ld hl, sp+$10
    and a
    ldh a, [rNR10]
    cp l
    nop
    add b
    xor [hl]
    nop
    ret nz

    db $dd
    ret nz

    rst $38
    sbc a
    ld a, [c]
    jr nz, jr_01e_5b5f

    nop
    add b
    pop hl
    nop
    ld b, b
    sbc a
    nop
    ld b, b
    and a
    db $10

jr_01e_5b88:
    rst $38
    rst $00
    jr nz, @+$22

    db $dd
    nop
    add b
    push bc
    rra
    jr nz, jr_01e_5b50

    cpl
    add b
    and l
    rra
    rst $38
    jp z, $601f

    cp [hl]
    ld e, $20
    cp [hl]
    rra
    jr jr_01e_5b4c

    rrca
    add b

jr_01e_5ba4:
    sbc a
    ld hl, sp+$10
    sbc [hl]
    jr jr_01e_5bca

    db $dd
    ld [$ad40], sp
    ld bc, $a7e0
    add hl, bc
    rst $38
    db $e4
    ld b, d
    ld bc, $00b2
    rst $38
    db $dd
    ld [$bbe0], sp
    nop
    add b
    sbc a
    adc b
    db $10
    cp l
    ld c, b
    rst $38
    sbc [hl]
    rst $38
    rst $38
    cp e
    rst $38

jr_01e_5bca:
    db $10
    sbc [hl]
    rst $38
    inc b
    or d
    ld bc, $a9ff
    ld hl, sp-$01
    and d
    ldh a, [$f0]
    and l
    ld [$a310], sp
    ldh a, [rIE]
    or b
    ldh a, [rIE]
    pop hl
    db $10
    rst $38
    and h
    ldh a, [rNR41]
    jp z, $60f0

    cp b
    ld [de], a
    db $10
    and $f0
    jr nz, jr_01e_5ba4

    ld [de], a
    rst $38
    db $db
    add b
    inc b
    rst $18
    ldh a, [rNR10]
    push bc
    ld hl, sp-$01
    cp [hl]
    ldh a, [rIE]
    and a
    ld bc, $ccff
    ret c

    inc b
    and c
    nop
    add b
    and c
    nop
    add b

Call_01e_5c0a:
    ldh a, [$f3]
    and a
    ld a, $31
    jr z, jr_01e_5c12

    xor a

jr_01e_5c12:
    ldh [$8b], a
    jr jr_01e_5c27

    call Call_000_3ed7
    ld a, [$cd6c]
    and a
    jr nz, jr_01e_5c24

    ld de, $5c5e
    jr jr_01e_5c27

jr_01e_5c24:
    ld de, $5c77

jr_01e_5c27:
    xor a
    ldh [$ba], a

Jump_01e_5c2a:
    push hl

jr_01e_5c2b:
    push bc
    push hl
    ldh a, [$8b]
    ld b, a

jr_01e_5c30:
    ld a, [de]
    add b
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_01e_5c30

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_01e_5c2b

    ld a, $01
    ldh [$ba], a
    pop hl
    ret


    add b
    ld e, h
    ld [hl], a
    or c
    ld e, h
    ld d, a
    call nc, Call_000_375c
    jp hl


    ld e, h
    ld [hl], a
    ld a, [de]
    ld e, l
    ld [hl], a
    ld c, e
    ld e, l
    ld [hl], a
    ld a, h
    ld e, l
    add [hl]
    xor h
    ld e, l
    inc a
    ld sp, $4638
    ld d, h
    ld e, e
    ld [hl-], a
    add hl, sp
    ld b, a
    ld d, l
    ld e, h
    inc [hl]
    dec sp
    ld c, c
    ld d, a
    ld e, [hl]
    ld [hl], $3d
    ld c, e
    ld e, c
    ld h, b
    scf
    ld a, $4c
    ld e, d
    ld h, c
    ld sp, $5b46
    inc [hl]
    ld c, c
    ld e, [hl]
    scf
    ld c, h
    ld h, c
    nop
    rlca
    ld c, $15
    inc e
    inc hl
    ld a, [hl+]
    ld bc, $0f08
    ld d, $1d
    inc h
    dec hl
    ld [bc], a
    add hl, bc
    db $10
    rla
    ld e, $25
    inc l
    inc bc
    ld a, [bc]
    ld de, $1f18
    ld h, $2d
    inc b
    dec bc
    ld [de], a
    add hl, de
    jr nz, jr_01e_5cc9

    ld l, $05
    inc c
    inc de
    ld a, [de]
    ld hl, $2f28
    ld b, $0d
    inc d
    dec de
    ld [hl+], a
    add hl, hl
    jr nc, jr_01e_5cb2

jr_01e_5cb2:
    rlca
    ld c, $15
    inc e
    inc hl
    ld a, [hl+]
    ld bc, $0f08
    ld d, $1d
    inc h
    dec hl
    inc bc
    ld a, [bc]
    ld de, $1f18
    ld h, $2d
    inc b
    dec bc
    ld [de], a

jr_01e_5cc9:
    add hl, de
    jr nz, jr_01e_5cf3

    ld l, $05
    inc c
    inc de
    ld a, [de]
    ld hl, $2f28
    nop
    rlca
    ld c, $15
    inc e
    inc hl
    ld a, [hl+]
    ld [bc], a
    add hl, bc
    db $10
    rla
    ld e, $25
    inc l
    inc b
    dec bc
    ld [de], a
    add hl, de
    jr nz, @+$29

    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_5cf3:
    nop
    nop
    add hl, de
    nop
    ld [bc], a
    ld b, $0b
    db $10
    inc d
    ld a, [de]
    nop
    nop
    rlca
    inc c
    ld de, $1b15
    nop
    inc bc
    ld [$120d], sp
    ld d, $1c
    nop
    inc b
    add hl, bc
    ld c, $13
    rla
    dec e
    rra
    dec b
    ld a, [bc]
    rrca
    ld bc, $1e18
    jr nz, jr_01e_5d1b

jr_01e_5d1b:
    nop
    nop
    jr nc, jr_01e_5d1f

jr_01e_5d1f:
    scf
    nop
    nop
    nop
    dec hl
    ld sp, $3834
    dec a
    ld hl, $2c26
    ld bc, $3935
    ld a, $22
    daa
    dec l
    ld [hl-], a
    ld [hl], $01
    nop
    inc hl
    jr z, jr_01e_5d67

    inc sp
    ld bc, $003a
    inc h
    add hl, hl
    cpl
    ld bc, $3b01
    nop
    dec h
    ld a, [hl+]
    ld bc, $0101
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld c, l
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, [hl]
    ld d, d
    ld d, [hl]
    ld e, e
    ccf
    ld b, e
    ld c, c
    ld c, a
    ld d, e
    ld d, a
    ld e, h

jr_01e_5d67:
    ld b, b
    ld b, h
    ld c, d
    ld d, b
    ld d, h
    ld e, b
    nop
    ld b, c
    ld b, l
    ld c, e
    ld d, c
    ld c, h
    ld e, c
    ld e, l
    ld b, d
    ld b, [hl]
    ld c, h
    ld c, h
    ld d, l
    ld e, d
    ld e, [hl]
    ld sp, $3232
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $36
    scf
    jr c, jr_01e_5dbd

    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    jr c, jr_01e_5dcb

    dec a
    ld a, $3e
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, e
    ld c, b
    ld c, c
    ld c, d
    ld b, c
    ld b, e
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld b, e
    ld d, l
    ld d, [hl]
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld b, e
    ld d, a
    ld e, b
    ld d, h
    ld d, h

jr_01e_5dbd:
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld e, c
    ld e, d
    ld b, e
    ld b, e
    ld b, e
    ld b, e

jr_01e_5dcb:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, [$cc79]
    ldh [rOBP0], a
    call Call_000_3040
    ld d, $37
    ld a, $03
    ld [$d08a], a
    jp Jump_01e_5def


    ld d, $71
    ld a, $14
    ld [$d08a], a
    call Call_01e_5def
    jp Jump_000_0082


Call_01e_5def:
Jump_01e_5def:
    ld c, a
    ld a, $01
    call Call_01e_5943
    call Call_01e_5eb3
    call Call_01e_5edb
    ld hl, $c300
    ld [hl], $00

jr_01e_5e00:
    ld hl, $cd3d
    ld de, $0000
    ld a, [$d08a]
    ld c, a

jr_01e_5e0a:
    push bc
    push hl
    push de
    ld a, [hl]
    ld [$d089], a
    call Call_01e_5e9f
    call Call_01e_5e33
    pop de
    ld hl, $0004
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [$d089]
    ld [hl+], a
    pop bc
    dec c
    jr nz, jr_01e_5e0a

    call Call_000_3ddb
    ld hl, $c300
    ld a, [hl]
    cp $68
    jr nz, jr_01e_5e00

    ret


Call_01e_5e33:
    ld hl, $c300
    add hl, de
    ld a, $01
    ld [$def4], a
    ld a, [hl]
    inc a
    inc a
    cp $70
    jr c, jr_01e_5e45

    ld a, $a0

jr_01e_5e45:
    ld [hl+], a
    cp $28
    jr c, jr_01e_5e51

    ld a, [$def4]
    inc a
    ld [$def4], a

jr_01e_5e51:
    ld a, [$d089]
    ld b, a
    ld de, $5e96
    and $7f
    add e
    jr nc, jr_01e_5e5e

    inc d

jr_01e_5e5e:
    ld e, a
    ld a, b
    and $80
    jr nz, jr_01e_5e79

    ld a, [de]
    add [hl]
    ld [hl+], a
    cp $58
    jr c, jr_01e_5e75

    ld a, [$def4]
    add $02
    and $03
    ld [$def4], a

jr_01e_5e75:
    inc hl
    xor a
    jr jr_01e_5e8f

jr_01e_5e79:
    ld a, [de]
    ld b, a
    ld a, [hl]
    sub b
    ld [hl+], a
    cp $58
    jr c, jr_01e_5e8c

    ld a, [$def4]
    add $02
    and $03
    ld [$def4], a

jr_01e_5e8c:
    inc hl
    ld a, $20

jr_01e_5e8f:
    ld b, a
    ld a, [$def4]
    or b
    ld [hl], a
    ret


    nop
    ld bc, $0503
    rlca
    add hl, bc
    dec bc
    dec c
    rrca

Call_01e_5e9f:
    ld a, [$d089]
    inc a
    ld b, a
    and $7f
    cp $09
    ld a, b
    jr nz, jr_01e_5eaf

    and $80
    xor $80

jr_01e_5eaf:
    ld [$d089], a
    ret


Call_01e_5eb3:
    ld hl, $c301
    ld de, $5ec7
    ld a, [$d08a]
    ld c, a

jr_01e_5ebd:
    ld a, [de]
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc de
    dec c
    jr nz, jr_01e_5ebd

    ret


    jr c, jr_01e_5f09

    ld d, b
    ld h, b
    ld [hl], b
    adc b
    sub b
    ld d, [hl]
    ld h, a
    ld c, d
    ld [hl], a
    add h
    sbc b
    ld [hl-], a
    ld [hl+], a
    ld e, h
    ld l, h
    ld a, l
    adc [hl]
    sbc c

Call_01e_5edb:
    ld hl, $cd3d
    ld de, $5eec
    ld a, [$d08a]
    ld c, a

jr_01e_5ee5:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_01e_5ee5

    ret


    nop
    add h
    ld b, $81
    ld [bc], a
    adc b
    ld bc, $0583
    adc c
    add hl, bc
    add b
    rlca
    add a
    inc bc
    add d
    inc b
    add l
    ld [$1186], sp
    db $10
    sub e
    ld hl, $8000
    ld bc, $0031

jr_01e_5f09:
    call Call_000_15fe
    xor a
    ldh [$ae], a
    ld hl, $9800
    call Call_01e_5fae
    ld a, $90
    ldh [$b0], a
    ld hl, $9b20
    call Call_01e_5fae
    ldh a, [$fe]
    and a
    jr z, jr_01e_5f2e

    ld c, $0d
    ld b, $2f
    ld hl, $7450
    call Call_000_3e84

jr_01e_5f2e:
    ld a, $38
    ldh [$b0], a
    call Call_01e_5397
    ld hl, $9800
    call Call_01e_5fae
    call Call_01e_595d
    call Call_000_3ddb
    ld de, $0208
    call Call_01e_5f8a
    call Call_01e_5456
    call Call_000_0082
    ld a, $90
    ldh [$b0], a
    ld hl, $9c00
    call Call_01e_5fae
    ldh a, [$fe]
    and a
    jr z, jr_01e_5f66

    ld c, $0b
    ld b, $2f
    ld hl, $7450
    call Call_000_3e84

jr_01e_5f66:
    xor a
    ldh [$b0], a
    call Call_000_370f
    ld hl, $9800
    call Call_01e_5fae
    call Call_000_371b
    ld hl, $9c00
    jp Jump_01e_5fae


    call Call_000_3ed7
    ld a, c
    ldh [$8b], a
    ld a, b
    push hl
    call Call_01e_599e
    pop hl
    jp Jump_01e_5c2a


Call_01e_5f8a:
    ldh a, [$ae]
    ld [$cd3d], a

jr_01e_5f8f:
    ld a, [$cd3d]
    add d
    ldh [$ae], a
    ld c, $02
    call Call_000_372f
    ld a, [$cd3d]
    sub d
    ldh [$ae], a
    ld c, $02
    call Call_000_372f
    dec e
    jr nz, jr_01e_5f8f

    ld a, [$cd3d]
    ldh [$ae], a
    ret


Call_01e_5fae:
Jump_01e_5fae:
    ld a, h
    ldh [$bd], a
    ld a, l
    ldh [$bc], a
    jp Jump_000_3ddb


Jump_01e_5fb7:
    ld a, [$d056]
    cp $02
    jr z, @+$3a

    ld a, [$d11d]
    ld b, a
    and $f0
    swap a
    ld c, a
    ld a, b
    and $0f
    ld [$cd3d], a
    ld hl, $5ff1
    ld a, [$cf90]
    cp $04
    ld b, $c1
    jr z, jr_01e_5fe1

    cp $03
    ld b, $c5
    jr z, jr_01e_5fe1

    ld b, $c6

jr_01e_5fe1:
    ld a, b

jr_01e_5fe2:
    ld [$d07b], a
    push bc
    push hl
    call Call_01e_4124
    pop hl
    ld a, [hl+]
    pop bc
    dec c
    jr nz, jr_01e_5fe2

    ret


    jp $c2c8


    jp $3ea6


    pop bc
    ld [$d07b], a
    call Call_01e_4124
    ld a, $95
    call Call_000_2238
    ld a, $c4
    ld [$d07b], a
    jp Jump_01e_4124


Call_01e_600b:
    call Call_000_373e
    ld a, [$d05a]
    and $7f
    ret z

    cp $0a
    ld a, $20
    ld b, $30
    ld c, $a6
    jr z, jr_01e_602c

    ld a, $e0
    ld b, $ff
    ld c, $b0
    jr nc, jr_01e_602c

    ld a, $50
    ld b, $01
    ld c, $a7

jr_01e_602c:
    ld [$c0f1], a
    ld a, b
    ld [$c0f2], a
    ld a, c
    jp Jump_000_2238


    ld a, [$cd4d]
    cp $52
    jr z, jr_01e_606c

    ld c, $08

jr_01e_6040:
    push bc
    ld hl, $c391
    ld a, $01
    ld [$d089], a
    ld c, $02
    call Call_01e_53f1
    ld hl, $c399
    ld a, $ff
    ld [$d089], a
    ld c, $02
    call Call_01e_53f1
    ldh a, [rOBP1]
    xor $64
    ldh [rOBP1], a
    call Call_000_3061
    call Call_000_1e64
    pop bc
    dec c
    jr nz, jr_01e_6040

    ret


jr_01e_606c:
    ld c, $02

jr_01e_606e:
    push bc
    ld c, $08
    call Call_01e_6091
    call Call_01e_60d7
    ld c, $08
    call Call_01e_6091
    call Call_01e_60d7
    ld hl, $c390
    ld a, $02
    ld [$d089], a
    ld c, $04
    call Call_01e_540a
    pop bc
    dec c
    jr nz, jr_01e_606e

    ret


Call_01e_6091:
jr_01e_6091:
    push bc
    ld hl, $c391
    ld a, $01
    ld [$d089], a
    ld c, $01
    call Call_01e_53f1
    ld hl, $c395
    ld a, $02
    ld [$d089], a
    ld c, $01
    call Call_01e_53f1
    ld hl, $c399
    ld a, $fe
    ld [$d089], a
    ld c, $01
    call Call_01e_53f1
    ld hl, $c39d
    ld a, $ff
    ld [$d089], a
    ld c, $01
    call Call_01e_53f1
    ldh a, [rOBP1]
    xor $64
    ldh [rOBP1], a
    call Call_000_3061
    call Call_000_1e64
    pop bc
    dec c
    jr nz, jr_01e_6091

    ret


Call_01e_60d7:
    ld hl, $c390
    ld de, $cee9
    ld bc, $0008
    call Call_000_00b1
    ld hl, $c398
    ld de, $c390
    ld bc, $0008
    call Call_000_00b1
    ld hl, $cee9
    ld de, $c398
    ld bc, $0008
    jp Jump_000_00b1


    ld a, $01
    ld [$cd50], a
    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    ld a, $e4
    ldh [rOBP1], a
    call Call_000_3061
    call Call_01e_616d
    ld b, $03
    ld hl, $6ed5
    call Call_000_3e84
    ld c, $08

jr_01e_611d:
    push bc
    call Call_01e_613f
    ld bc, $6128
    push bc
    ld c, $04
    jp hl


    ldh a, [rOBP1]
    xor $64
    ldh [rOBP1], a
    call Call_000_3061
    call Call_000_3ddb
    pop bc
    dec c
    jr nz, jr_01e_611d

    pop af
    ld [$cfca], a
    jp Jump_000_07d7


Call_01e_613f:
    ld a, [$c109]
    ld hl, $615d
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$d089], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $c390
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


    rst $38
    nop
    ld [$0154], sp
    nop
    ld [$0154], sp
    ld bc, $53ef
    rst $38
    ld bc, $53ef

Call_01e_616d:
    ld hl, $8fc0
    ld c, $04

jr_01e_6172:
    push bc
    push hl
    call Call_01e_6181
    pop hl
    ld bc, $0010
    add hl, bc
    pop bc
    dec c
    jr nz, jr_01e_6172

    ret


Call_01e_6181:
    ld de, $618a
    ld bc, $1e01
    jp Jump_000_15fe


    nop
    jr jr_01e_61a7

    ld h, [hl]
    inc b
    ld b, d
    dec bc
    add c
    ld d, [hl]
    adc c
    ld a, [de]
    ld l, $4c
    ld [de], a
    jr c, jr_01e_61d2

    ccf
    ld [hl-], a
    rra
    jr jr_01e_61ce

    ccf
    daa
    ccf
    rra
    add hl, de
    rra
    add hl, de
    rla

jr_01e_61a7:
    rra
    rrca
    rrca
    db $fc
    ld c, h
    ld hl, sp+$18
    db $f4
    db $fc
    db $e4
    db $fc
    ld hl, sp-$68
    ld hl, sp-$68
    add sp, -$08
    ldh a, [$f0]
    ccf
    inc sp
    inc l
    ccf
    dec hl
    ccf
    add hl, de
    ld e, $1c
    rra
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    call z, $fc34

jr_01e_61ce:
    call nc, $98fc
    ld a, b

jr_01e_61d2:
    jr c, @-$06

    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rst $18
    ret nc

    ei
    db $fc
    ccf
    ccf

jr_01e_61e0:
    inc a
    daa
    ccf
    daa
    ld e, $1f
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    jr nc, jr_01e_61e0

    ld [hl], b
    ldh a, [$d0]
    ldh a, [rSVBK]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    jr jr_01e_6214

    jr jr_01e_6216

    jr jr_01e_6218

    jr jr_01e_621a

    jr jr_01e_621c

    jr jr_01e_621e

    jr jr_01e_6220

    jr jr_01e_6222

    ret nz

    ret nz

    ldh a, [$f0]
    inc a
    inc a
    rrca
    rrca
    inc bc
    inc bc

jr_01e_6214:
    nop
    nop

jr_01e_6216:
    nop
    nop

jr_01e_6218:
    nop
    nop

jr_01e_621a:
    ld [bc], a
    ld [bc], a

jr_01e_621c:
    rlca
    dec b

jr_01e_621e:
    rlca
    dec b

jr_01e_6220:
    adc l
    adc e

jr_01e_6222:
    db $ed
    db $eb
    sbc $d6
    cp b
    cp b
    ld h, b
    ld h, b
    cp [hl]
    ld h, e
    jp nz, $c663

    ld h, e
    call $d463
    ld h, e
    ret c

    ld h, e
    rst $18
    ld h, e
    and $63
    db $ed
    ld h, e
    ld hl, sp+$63
    db $fc
    ld h, e
    nop
    ld h, h
    inc b
    ld h, h
    ld [$1264], sp
    ld h, h
    jr jr_01e_62ae

    rra
    ld h, h
    inc hl
    ld h, h
    add hl, hl
    ld h, h
    cpl
    ld h, h
    ld [hl], $64
    ld a, [hl-]
    ld h, h
    ld b, c
    ld h, h
    ld b, l
    ld h, h
    ld c, h
    ld h, h
    ld d, b
    ld h, h
    ld d, h
    ld h, h
    ld e, d
    ld h, h
    ld e, [hl]
    ld h, h
    ld h, d
    ld h, h
    ld l, c
    ld h, h
    ld [hl], b
    ld h, h
    add b
    ld h, h
    add l
    ld h, h
    adc [hl]
    ld h, h
    sbc b
    ld h, h
    sbc a
    ld h, h
    and e
    ld h, h
    or c
    ld h, h
    ret nz

    ld h, h
    call nz, $cb64
    ld h, h
    rst $08
    ld h, h
    ret c

    ld h, h
    call c, $e064
    ld h, h
    ld [$f464], a
    ld h, h
    ld hl, sp+$64
    dec b
    ld h, l
    ld c, $65
    dec d
    ld h, l
    add hl, de
    ld h, l
    inc hl
    ld h, l
    ld a, [hl+]
    ld h, l
    ld l, $65
    dec [hl]
    ld h, l
    dec sp
    ld h, l
    ld b, d
    ld h, l
    ld c, c
    ld h, l
    ld c, a
    ld h, l
    ld d, e
    ld h, l
    ld e, e
    ld h, l
    ld l, h
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], h
    ld h, l

jr_01e_62ae:
    ld a, h
    ld h, l
    add h
    ld h, l
    adc h
    ld h, l
    and [hl]
    ld h, l
    xor [hl]
    ld h, l
    cp c
    ld h, l
    ret z

    ld h, l
    rst $08
    ld h, l
    sub $65
    rst $18
    ld h, l
    and $65
    ld [$ee65], a
    ld h, l
    ld a, [c]
    ld h, l
    ld sp, hl
    ld h, l
    db $fd
    ld h, l
    ld a, [bc]
    ld h, [hl]
    inc d
    ld h, [hl]
    jr jr_01e_633a

    rra
    ld h, [hl]
    add hl, hl
    ld h, [hl]
    jr c, jr_01e_6340

    inc a
    ld h, [hl]
    ld b, c
    ld h, [hl]
    ld c, d
    ld h, [hl]
    ld d, b
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld e, c
    ld h, [hl]
    ld e, [hl]
    ld h, [hl]
    ld h, c
    ld h, [hl]
    ld l, e
    ld h, [hl]
    ld [hl], b
    ld h, [hl]
    ld a, b
    ld h, [hl]
    ld a, h
    ld h, [hl]
    add c
    ld h, [hl]
    add [hl]
    ld h, [hl]
    adc l
    ld h, [hl]
    sub c
    ld h, [hl]
    and l
    ld h, [hl]
    xor [hl]
    ld h, [hl]
    cp b
    ld h, [hl]
    pop bc
    ld h, [hl]
    ld [c], a
    ld h, [hl]
    ld [$f666], a
    ld h, [hl]
    nop
    ld h, a
    rlca
    ld h, a
    ld [de], a
    ld h, a
    add hl, de
    ld h, a
    inc h
    ld h, a
    daa
    ld h, a
    dec hl
    ld h, a
    ld a, [hl-]
    ld h, a
    ld a, $67
    ld b, d
    ld h, a
    ld c, c
    ld h, a
    ld c, l
    ld h, a
    ld d, l
    ld h, a
    ld e, h
    ld h, a
    ld h, b
    ld h, a
    ld [hl], b
    ld h, a
    ld a, e
    ld h, a
    add l
    ld h, a
    adc c
    ld h, a
    adc l
    ld h, a
    sub c
    ld h, a
    sbc e
    ld h, a
    and d
    ld h, a
    and [hl]
    ld h, a
    or h
    ld h, a

jr_01e_633a:
    cp b
    ld h, a
    pop bc
    ld h, a
    bit 4, a

jr_01e_6340:
    rst $08
    ld h, a
    sub $67
    db $e4
    ld h, a
    add sp, $67
    ld a, [c]
    ld h, a
    cp $67
    ld [bc], a
    ld l, b
    rrca
    ld l, b
    inc de
    ld l, b
    inc e
    ld l, b
    ld [hl+], a
    ld l, b
    dec h
    ld l, b
    jr z, @+$6a

    cpl
    ld l, b
    inc sp
    ld l, b
    scf
    ld l, b
    dec sp
    ld l, b
    ld b, d
    ld l, b
    ld c, h
    ld l, b
    ld d, b
    ld l, b
    ld e, d
    ld l, b
    ld h, l
    ld l, b
    ld l, l
    ld l, b
    ld [hl], l
    ld l, b
    ld a, c
    ld l, b
    cp [hl]
    ld h, e
    sub l
    ld l, b
    sbc e
    ld l, b
    sbc [hl]
    ld l, b
    and c
    ld l, b
    and h
    ld l, b
    xor b
    ld l, b
    xor h
    ld l, b
    or b
    ld l, b
    or h
    ld l, b
    or h
    ld l, b
    cp e
    ld l, b
    cp e
    ld l, b
    jp $c368


    ld l, b
    jp z, $ca68

    ld l, b
    jp nc, $d268

    ld l, b
    reti


    ld l, b
    reti


    ld l, b
    ldh [rBCPS], a
    ldh [rBCPS], a
    rst $20
    ld l, b
    xor $68
    push af
    ld l, b
    db $fc
    ld l, b
    rlca
    ld l, c
    add c
    ld l, b
    adc l
    ld l, b
    sub c
    ld l, b
    inc bc
    ld l, c
    add l
    ld l, b
    adc c
    ld l, b
    ld a, [bc]
    ld l, c
    sbc b
    ld l, b
    dec c
    ld l, c
    ld de, $0869
    nop
    ld bc, $08ff
    ld bc, $ff03
    dec b
    ld [bc], a
    ld bc, $0205
    ld bc, $04ff
    inc bc
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    rst $38
    ld b, [hl]
    inc b
    inc b
    rst $38
    ld [$0100], sp
    inc b
    dec b
    ld d, d
    rst $38
    ld b, $06
    ld [bc], a
    ld b, [hl]
    rst $38
    ld de, $06ff
    rlca
    ld [bc], a
    db $10
    rst $38
    cpl
    rst $38
    ld b, $08
    ld [bc], a
    db $fd
    rst $38
    ld b, [hl]
    rst $38
    dec hl
    db $fc
    rst $38
    rst $38
    ld b, $09
    rrca
    rst $38
    ld [$2a0a], sp
    rst $38
    ld b, $0b
    ld a, [hl+]
    rst $38
    inc b
    inc c
    ld d, $ff
    ld b, [hl]
    dec c
    jr jr_01e_6452

    dec c
    jr @+$48

    dec c
    jr @+$01

    cp $0e
    inc b
    rst $38
    ld d, $ff
    ld b, [hl]
    rrca
    db $10
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, [hl]
    db $10
    inc b
    rst $38
    ld b, [hl]
    ld de, $db10
    rst $38
    rst $38
    ld b, [hl]
    ld [de], a
    inc b
    db $dd
    rst $38
    rst $38
    inc b
    inc de
    inc hl
    inc b
    inc de
    inc hl
    rst $38
    ld b, $14
    ld [bc], a
    rst $38
    ld bc, $1615
    ld [$01ff], sp
    rst $38
    ld c, b
    ld d, $05
    rst $38
    ld [$0117], sp
    ld [$0117], sp
    rst $38
    ld b, [hl]
    jr jr_01e_6453

    rst $38
    ld b, [hl]
    add hl, de

jr_01e_6452:
    inc b

jr_01e_6453:
    rst $38
    cp $1a
    ld b, [hl]
    rst $38
    inc b
    rst $38
    ld b, [hl]
    dec de
    jr z, @+$01

    ld b, [hl]
    inc e
    dec b
    rst $38
    ld b, $1d
    ld b, l
    ld b, [hl]
    rst $38
    dec b
    rst $38
    ld [bc], a
    ld e, $46
    ld [bc], a
    rst $38
    ld b, [hl]
    rst $38
    ld b, d
    rra
    dec b
    ld b, d
    rst $38
    dec b
    ld b, d
    rst $38
    dec b
    ld b, d
    rst $38
    dec b
    ld b, d
    rst $38
    dec b
    rst $38
    ld a, [c]
    ld c, b
    pop af
    rst $38
    rst $38
    ld a, [c]
    ld c, b
    cp $ff
    cp $ff
    pop af
    rst $38
    rst $38
    inc b
    ld [hl+], a
    inc hl
    inc b
    ld [hl+], a
    inc hl
    inc b
    ld [hl+], a
    inc hl
    rst $38
    ld a, [c]
    ld c, b
    cp $23
    pop af
    rst $38
    rst $38
    ld b, [hl]
    inc h
    inc b
    rst $38
    ldh a, [rOBP0]
    ld b, $ff
    dec l
    db $fc
    rst $38
    ld a, [c]
    rst $38
    cp $25
    pop af
    rst $38
    rst $38
    ld a, [c]
    add h
    pop hl
    rst $38
    pop af
    add h
    pop hl
    rst $38
    ld a, [c]
    add h
    pop hl
    rst $38
    pop af
    add h
    rst $38
    ld b, $27
    nop
    rst $38
    dec b
    jr z, jr_01e_64c8

    dec b

jr_01e_64c8:
    jr z, jr_01e_64cb

    rst $38

jr_01e_64cb:
    inc bc
    add hl, hl
    ld bc, $fdff
    ld c, b
    cp $2a
    cp $2a
    db $fc
    rst $38
    rst $38
    ld [$022b], sp
    rst $38
    ld b, [hl]
    inc l
    ld [de], a
    rst $38
    ld b, [hl]
    dec l
    dec d
    ld b, [hl]
    dec l
    dec d
    ld b, [hl]
    dec l
    dec d
    rst $38
    ld b, [hl]
    ld l, $12
    ld d, b
    rst $38
    ld b, b
    ld d, b
    rst $38
    ld b, b
    rst $38
    ld b, $2f
    ld sp, $46ff
    dec l
    dec d
    ld b, [hl]
    dec l
    dec d
    ld b, [hl]
    rrca
    db $10
    ld b, [hl]
    rst $38
    dec b
    rst $38
    db $fd
    ld c, b
    cp $2a
    cp $2a
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    ld [hl-], a
    inc de
    ld b, [hl]
    ld [hl-], a
    inc d
    rst $38
    ld b, [hl]
    inc sp
    ld de, $46ff
    inc [hl]
    rra
    ld b, [hl]
    inc [hl]
    inc c
    ld b, [hl]
    inc [hl]
    dec c
    rst $38
    ldh a, [rIE]
    ld a, [$fc38]
    rst $38
    rst $38
    ld b, $36
    inc l
    rst $38
    ld b, $37
    ld a, [de]
    ld b, $37
    ld a, [de]
    rst $38
    ld a, [$0638]
    scf
    ld a, [de]
    rst $38
    inc bc
    add hl, sp
    ld l, $10
    rst $38
    cpl
    rst $38
    inc b
    ld a, [hl-]
    jr c, jr_01e_654a

    scf
    jr c, @+$01

    inc bc

jr_01e_654a:
    dec sp
    ld l, $f8
    rst $38
    rst $38
    ld [de], a
    inc a
    dec [hl]
    rst $38
    inc bc
    dec a
    ld l, $e1
    rst $38
    pop hl
    rst $38
    rst $38
    db $fd
    ld c, b
    ld [c], a
    rst $38
    ld [bc], a
    ld a, $2e
    cp $ff
    cp $ff
    ld b, [hl]
    inc b
    inc b
    db $fc
    rst $38
    rst $38
    ld [HeaderManufacturerCode], sp
    rst $38
    ld b, [hl]
    ld b, b
    inc b
    rst $38
    db $f4
    ld b, c
    ld b, $ff
    ld bc, $ffdd
    rst $38
    db $f4
    ld b, d
    ld b, [hl]
    rst $38
    inc b
    db $dd
    rst $38
    rst $38
    db $f4
    ld b, e
    ld b, [hl]
    rst $38
    inc b
    db $dd
    rst $38
    rst $38
    sbc $ff
    ld b, c
    adc e
    ld c, [hl]
    rst $18
    rst $38
    db $f4
    rst $38
    ld b, d
    ld b, h
    ld c, a
    pop hl
    rst $38
    pop hl
    rst $38
    db $dd
    rst $38
    ld b, c
    ld b, h
    ld d, b
    call c, $fbff
    rst $38
    rst $38
    ld a, [c]
    ld c, b
    pop af
    rst $38
    ld b, [hl]
    ld b, $04
    rst $38
    ldh a, [rDMA]
    ld b, $ff
    ld hl, $ff06
    ld [hl+], a
    db $fc
    rst $38
    rst $38
    ldh a, [rBGP]
    cp $ff
    ld b, $ff
    ld hl, $ff06
    ld [hl+], a
    cp $ff
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    ld c, b
    dec de
    ld d, l
    ld c, l
    inc e
    rst $38
    ldh a, [rOBP1]
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $20
    ld c, d
    ld b, c
    add b
    ld b, h
    ld bc, $160c
    rst $38
    ld b, $4b
    ld l, $06
    rst $38
    ld bc, $06ff
    ld c, h
    ld [hl], $ff
    ld b, $4d
    ld [hl], $ff
    ld b, $4e
    ld [hl], $ff
    ldh a, [rVBK]
    and $ff
    db $fc
    rst $38
    rst $38
    ld [$3750], sp
    rst $38
    ld b, [hl]
    ld d, c
    rra
    ld b, [hl]
    rst $38
    inc c
    ld b, [hl]
    rst $38
    dec c
    ld b, [hl]
    rst $38
    ld c, $ff
    ld b, [hl]
    ld d, d
    inc c
    ld b, [hl]
    rst $38
    dec c
    ld b, [hl]
    rst $38
    ld c, $ff
    ld b, d
    ld d, e
    add hl, hl
    rst $38

Jump_01e_6618:
    ld b, c
    ld d, h
    add hl, hl
    ld b, c
    ld d, h
    add hl, hl
    rst $38
    ld b, d
    ld d, l
    add hl, hl
    ld [bc], a
    rst $38

Jump_01e_6624:
    inc hl
    inc b
    rst $38
    inc hl
    rst $38
    db $fd
    ld d, [hl]
    cp $ff
    ld b, [hl]
    rst $38
    dec hl
    cp $ff
    ld b, d
    ld d, h
    add hl, hl
    db $fc
    rst $38
    rst $38
    inc b
    ld d, a
    jr nc, @+$01

    ei
    ld e, b
    ei
    ld e, b
    rst $38
    cp $59
    ei
    rst $38
    cp $59
    ei
    rst $38
    rst $38
    ld b, [hl]
    ld e, d
    inc b
    rst $30
    rst $38
    rst $38
    ld a, [$4638]
    ld e, e
    inc d
    rst $38
    ld hl, sp+$5c
    rst $38
    ld hl, sp+$5d
    ret c

    rst $38
    rst $38
    ld hl, sp+$5e
    rst $38
    ldh a, [$5f]
    ld b, [hl]
    rst $38
    ld b, e
    cp $ff
    db $fc
    rst $38
    rst $38
    ldh a, [$60]
    db $fc
    rst $38
    rst $38
    db $f4
    ld h, c
    ld b, [hl]
    rst $38
    inc b
    db $dd
    rst $38
    rst $38
    ld b, $62
    ld bc, $eeff
    ld h, e
    db $ed
    rst $38
    rst $38
    ld hl, sp+$5c
    ret c

    rst $38
    rst $38
    ld b, [hl]
    ld h, l
    ld hl, $6546
    ld [hl+], a
    rst $38
    ld b, [hl]
    ld h, [hl]
    ld [de], a
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    jp c, $dd67

    rst $38
    ld b, [hl]
    ld l, a
    inc sp
    rst $38
    di
    ld l, b
    ldh a, [rIE]
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    ldh a, [rBCPD]
    ld b, [hl]
    rst $38
    ld b, e
    cp $ff
    db $fc
    rst $38
    rst $38
    ldh a, [rOCPS]
    ld [c], a
    rst $38
    ld [$fcff], a
    rst $38
    rst $38
    ld b, [hl]
    ld l, e
    jr z, jr_01e_66c9

    rst $38
    ld a, [bc]
    ld sp, hl
    rst $38

jr_01e_66c9:
    pop hl
    rst $38
    pop hl
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    db $fc
    rst $38
    rst $38
    db $fd
    ld l, h
    ld b, [hl]
    rst $38
    ld a, $fc
    rst $38
    rst $38
    ldh a, [$6e]
    or $ff
    ld b, $ff
    ld d, c
    db $fc
    rst $38
    db $dd
    rst $38
    rst $38
    ldh a, [$6e]
    ld b, $ff
    ld b, e
    cp $ff
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    ld l, a
    inc sp
    ld b, [hl]
    ld l, a
    inc sp
    rst $38
    ldh a, [rIE]
    ld b, [hl]
    ld [hl], b
    inc sp
    ld b, [hl]
    ld [hl], b
    inc sp
    db $fc
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, [$fc38]
    rst $38
    rst $38
    db $fd
    rst $38
    ld b, [hl]
    ld [hl], d
    inc sp
    ld b, [hl]
    ld [hl], d
    inc sp
    db $fc
    rst $38
    rst $38
    ld [c], a
    ld [hl], e
    rst $38
    ld b, [hl]
    ld [hl], h
    inc b
    rst $38
    ld a, [c]
    add h
    pop hl
    rst $38
    pop af
    add h
    pop hl
    rst $38
    ld a, [c]
    add h
    pop hl
    rst $38
    pop af
    add h
    rst $38
    ld [$0176], sp
    rst $38
    ld b, e
    ld [hl], a
    inc [hl]
    rst $38
    ld b, h
    ld a, b
    ld b, c
    ld b, h
    ld a, b
    ld b, d
    rst $38
    ld b, [hl]
    ld a, e
    inc d
    rst $38
    ld sp, hl
    ld c, b
    ld b, [hl]
    ld a, d
    add hl, de
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    ld a, e
    inc de
    ld b, [hl]
    ld a, e
    inc d
    rst $38
    ld [$027c], sp
    rst $38
    ld b, [hl]
    ld a, l
    rra
    ld b, [hl]
    rst $38
    jr nz, jr_01e_67ad

    rst $38
    jr nz, jr_01e_67b0

    rst $38
    inc c
    ld b, [hl]
    rst $38
    dec c
    rst $38
    or $48
    ld b, $37
    ld a, [de]
    ld [$02ff], sp
    rst $30
    rst $38
    rst $38
    ld [$2a7f], sp
    ld b, $83
    inc hl
    ld b, $83
    inc hl
    rst $38
    ld b, e
    add b
    ccf
    rst $38
    ld b, [hl]
    add c
    dec b
    rst $38
    ld b, h
    add d
    inc b
    rst $38
    ld b, $83
    inc hl
    ld b, $83
    inc hl
    ld b, $83
    inc hl
    rst $38
    ld [$2584], sp
    ld [$2584], sp
    rst $38
    ld [$0185], sp
    rst $38
    push hl
    ld c, b
    ld [$4c86], sp
    ldh a, [rIE]

jr_01e_67ad:
    ld [c], a
    rst $38
    db $fc

jr_01e_67b0:
    rst $38
    db $dd
    rst $38
    rst $38
    ld b, [hl]
    add a
    inc b
    rst $38
    db $fd
    ld c, b
    cp $88
    cp $ff
    db $fc
    rst $38
    rst $38
    ld hl, sp-$77
    db $fd
    adc c
    ld [$0289], sp
    db $fc
    rst $38
    rst $38
    ld b, [hl]
    adc d
    add hl, de
    rst $38
    ld b, e
    adc e
    ld b, c
    dec b
    rst $38
    ld d, l
    rst $38
    ld [$028c], sp
    cp $ff
    ld b, $ff
    ld hl, $ff06
    ld [hl+], a
    cp $ff
    rst $38
    ld b, $8d
    ld [de], a
    rst $38
    xor $8e
    db $ed
    rst $38
    ld b, [hl]
    add a
    inc b
    db $dd
    rst $38
    rst $38
    ld b, [hl]
    adc a
    ld hl, $8f44
    ld [hl+], a
    ld [$47ff], sp
    add sp, -$01
    rst $38
    ld d, $90
    dec [hl]
    rst $38
    ld b, $91
    rla
    ld b, $91
    rla
    ld b, $91
    rla
    ld b, $02
    ld [bc], a
    rst $38
    ld b, $92
    ld [hl], $ff
    ldh a, [rOBP0]
    cp $88
    cp $ff
    db $fc
    rst $38
    rst $38
    ld b, $2f
    ld sp, $5cd8
    rst $38
    db $eb
    sub l
    rst $38
    jp hl


    sub [hl]
    rst $38
    ld b, [hl]
    sub a
    dec b
    ld b, $ff
    ld a, [hl+]
    rst $38
    ld b, e
    sbc b
    inc [hl]
    rst $38
    inc b
    sbc c
    rrca
    rst $38
    ld b, $9a
    ld [bc], a
    rst $38
    db $10
    sbc e
    ld a, [hl-]
    db $10
    sbc e
    ld a, [hl-]
    rst $38
    inc b
    sbc h
    dec e
    inc bc
    sbc h
    ld e, $46
    sbc l
    inc b
    rst $38
    ld b, $9d
    ld [bc], a
    rst $38
    ldh a, [$9e]
    ld b, [hl]
    rst $38
    ld b, e
    cp $ff
    db $fc
    rst $38
    rst $38
    cp $9f
    ld b, [hl]
    rst $38
    ld hl, $ff46
    ld [hl+], a
    cp $ff
    rst $38
    cp $a0
    ld b, [hl]
    rst $38
    ld c, l
    cp $ff
    rst $38
    db $fd
    ld c, b
    ld b, [hl]
    and c
    inc b
    db $fc
    rst $38
    rst $38
    ld b, $a2
    rrca
    rst $38
    db $f4
    and e
    ld [$47ff], sp
    reti


    rst $38
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld [$04ff], sp
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    call c, $ffff
    rst $18
    rst $38
    rst $38
    db $dd
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    db $e4
    rst $38
    rst $38
    add [hl]
    rst $38
    ld c, b
    rst $38
    add h
    rst $38
    ld c, c
    rst $38
    add [hl]
    rst $38
    ld c, d
    rst $38
    add [hl]
    rst $38
    ld c, e
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    ldh a, [rIE]
    ld b, [hl]
    rst $38
    ld b, e
    db $fc
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld b, [hl]
    rst $38
    ld b, e
    db $fc
    rst $38
    rst $38
    ldh a, [rIE]
    db $ec
    rst $38
    db $fc
    rst $38
    rst $38
    inc b
    inc de
    inc h
    inc b
    inc de
    inc h
    rst $38
    ld [$2713], sp
    ld [$2713], sp
    rst $38
    db $10
    sbc e
    ld a, [hl-]
    db $10
    sbc e
    ld a, [hl-]
    rst $38
    db $10
    sbc e
    dec sp
    db $10
    sbc e
    dec sp
    rst $38
    ld [$2584], sp
    ld [$2584], sp
    rst $38
    ld [$2684], sp
    ld [$2684], sp
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    or $5a
    rst $38
    ei
    rst $38
    rst $38
    inc bc
    adc e
    ld d, e
    rst $38
    inc bc
    adc e
    ld d, h
    rst $38
    xor $6a
    ld a, [c]
    ld l, d
    ld sp, hl
    ld l, d
    inc bc
    ld l, e
    pop bc
    ld l, c
    bit 5, c
    inc de
    ld l, d
    pop af
    ld l, c
    rst $08
    ld l, c
    dec [hl]
    ld l, d
    ld b, d
    ld l, d
    ld d, l
    ld l, d
    db $10
    ld l, e
    ld a, [de]
    ld l, e
    dec l
    ld l, e
    ret z

    ld l, e
    ld [de], a
    ld l, h
    ld h, [hl]
    ld l, d
    jp nc, Jump_01e_4a6a

    ld l, h
    ld e, l
    ld l, h
    sub e
    ld l, h
    db $ed
    ld l, e
    sbc d
    ld l, h
    and a
    ld l, h
    rst $00
    ld l, h
    db $ec
    ld l, h
    dec e
    ld l, l
    ld a, [hl+]
    ld l, l
    inc [hl]
    ld l, l
    ld h, d
    ld l, l
    ld c, c
    ld l, e
    ld h, [hl]
    ld l, l
    ld l, l
    ld l, l
    ld [hl], a
    ld l, l
    ld c, b
    ld l, [hl]
    ld c, a
    ld l, [hl]
    ld d, [hl]
    ld l, [hl]
    ld e, l
    ld l, [hl]
    ld a, b
    ld l, [hl]
    ld a, a
    ld l, [hl]
    db $e3
    ld l, l
    dec sp
    ld l, [hl]
    adc e
    ld l, d
    xor l
    ld l, d
    sbc c
    ld l, l
    ld e, c
    ld l, e
    add h
    ld l, e
    sub c
    ld l, e
    dec hl
    ld l, h
    adc c
    ld l, [hl]
    sub e
    ld l, [hl]
    push de
    ld l, [hl]
    dec d
    ld l, a
    ld [hl+], a
    ld l, a
    dec sp
    ld l, a
    ld e, d
    ld l, a
    xor h
    ld l, l
    ld h, h
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    and [hl]
    ld l, [hl]
    cp h
    ld l, [hl]
    adc e
    ld l, a
    jp nz, $b46f

    ld l, h
    ld a, c
    ld l, h
    adc c
    ld l, h
    ld e, $70
    ld sp, hl
    ld l, a
    jr z, jr_01e_6a11

    dec [hl]
    ld [hl], b
    ld c, b
    ld [hl], b
    ld d, d
    ld [hl], b
    ld h, l
    ld [hl], b
    ld [hl], d
    ld [hl], b
    db $76
    ld [hl], b
    add b
    ld [hl], b
    sbc c
    ld [hl], b
    or b
    ld l, l
    or h
    ld l, l
    jp z, $ac6d

    ld [hl], b
    cp a
    ld [hl], b
    push de
    ld [hl], b
    ld a, [$6270]
    ld l, d
    ld b, e
    ld [bc], a
    ld a, [de]
    nop
    ld [bc], a
    stop
    ld [bc], a
    inc bc
    nop
    ld b, c
    ld [bc], a
    stop
    dec bc
    inc bc
    jr nc, jr_01e_69d3

jr_01e_69d3:
    inc bc
    ld b, h
    nop
    inc bc
    sub h
    nop
    inc bc
    ld h, b
    nop
    inc bc
    halt
    inc bc
    sbc a
    nop
    inc bc
    adc l
    nop
    inc bc
    and b
    nop
    inc bc
    ld a, [de]
    nop
    inc bc
    and c
    nop
    inc bc
    inc [hl]
    nop
    dec bc
    inc bc
    jr nc, jr_01e_69f5

jr_01e_69f5:
    inc bc
    and d
    nop
    inc bc
    ld sp, $0300
    and e
    nop
    inc bc
    ld [hl-], a
    nop
    inc bc
    and h
    nop
    inc bc
    sub d
    nop
    inc bc
    and l
    nop
    inc bc
    dec d
    nop
    inc bc
    and [hl]
    nop
    inc bc

jr_01e_6a11:
    inc [hl]
    nop
    dec bc
    inc bc
    jr nc, jr_01e_6a17

jr_01e_6a17:
    inc bc
    and d
    nop
    inc bc
    sub e
    nop
    inc bc
    ld h, c
    nop
    inc bc
    ld [hl], e
    nop
    inc bc
    and a
    nop
    inc bc
    inc sp
    nop
    inc bc
    xor b
    nop
    inc bc
    ld c, $00
    inc bc
    xor c
    nop
    inc bc
    inc [hl]
    nop
    inc b
    inc bc
    ld hl, $0404
    ld hl, $0304
    ld hl, $0504
    ld hl, $4604
    ld b, $1b
    nop
    rlca
    dec de
    nop
    ld [$0036], sp
    add hl, bc
    ld [hl], $00
    ld a, [bc]
    dec d
    nop
    ld a, [bc]
    dec d
    nop
    inc b
    ld bc, $002d
    inc bc
    cpl
    nop
    inc bc
    dec [hl]
    nop
    inc bc
    ld c, l
    nop
    ld b, c
    ld bc, $009d
    ld c, h
    dec bc
    ld h, $00
    inc c
    ld h, $00
    dec bc
    ld h, $00
    inc c
    ld h, $00
    dec bc
    jr z, jr_01e_6a76

jr_01e_6a76:
    inc c
    jr z, jr_01e_6a79

jr_01e_6a79:
    dec bc
    jr z, jr_01e_6a7c

jr_01e_6a7c:
    inc c
    jr z, jr_01e_6a7f

jr_01e_6a7f:
    dec bc
    daa
    nop
    inc c
    daa
    nop
    dec bc
    daa
    nop
    inc c
    daa
    nop
    ld c, e
    dec c
    inc bc
    inc bc
    ld c, $03
    inc bc
    rrca
    inc bc
    nop
    dec c
    ld de, $0d00
    ld de, $0d00
    scf
    nop
    dec c
    scf
    nop
    db $10
    ld hl, $1000
    ld hl, $1100
    dec de
    nop
    ld de, $001b
    ld c, h
    ld [de], a
    ld bc, $1200
    rrca
    nop
    ld [de], a
    dec de
    nop
    ld [de], a
    dec h
    nop
    inc de
    jr c, jr_01e_6abd

jr_01e_6abd:
    inc de
    jr c, @+$04

    inc d
    jr c, jr_01e_6ac3

jr_01e_6ac3:
    inc d
    jr c, @+$04

    dec d
    jr c, jr_01e_6ac9

jr_01e_6ac9:
    dec d
    jr c, jr_01e_6acc

jr_01e_6acc:
    ld d, $38
    nop
    ld d, $38
    nop
    ld l, c
    rla
    jr nc, jr_01e_6ad6

jr_01e_6ad6:
    rla
    add hl, sp
    nop
    rla
    ld a, [hl-]
    nop
    rla
    dec sp
    nop
    rla
    inc a
    nop
    rla
    dec a
    nop
    rla
    ld a, $00
    rla
    ccf
    nop
    rla
    rra
    nop
    ld b, c
    ld bc, $0017
    ld b, d
    ld bc, $000f
    ld bc, $001d
    ld b, e
    ld bc, $0012
    ld bc, $0015
    ld bc, $001c
    ld b, h
    ld bc, $000b
    ld bc, $0011
    ld bc, $0018
    ld bc, $001d
    ld b, e
    inc c
    jr nz, jr_01e_6b14

jr_01e_6b14:
    inc c
    ld hl, $0c00
    inc hl
    nop
    ld b, [hl]
    inc c
    jr nz, jr_01e_6b20

    inc c
    dec d

jr_01e_6b20:
    nop
    inc c
    ld hl, $0c02
    rla
    nop
    inc c
    inc hl
    ld [bc], a
    inc c
    add hl, de
    nop
    ld c, c
    inc c
    jr nz, jr_01e_6b33

    inc c
    dec d

jr_01e_6b33:
    ld [bc], a
    inc c
    rlca
    nop
    inc c
    ld hl, $0c02
    rla
    ld [bc], a
    inc c
    add hl, bc
    nop
    inc c
    inc hl
    ld [bc], a
    inc c
    add hl, de
    ld [bc], a
    inc c
    inc c
    nop
    add l
    inc c
    jr nc, jr_01e_6b50

    inc c
    ld b, b
    inc bc

jr_01e_6b50:
    inc c
    ld b, c
    inc bc
    inc c
    ld b, d
    inc bc
    inc c
    ld hl, $2e00
    jr jr_01e_6b9f

    ld [bc], a
    ld [hl], l
    ld d, d
    inc b
    add hl, de
    ld b, e
    ld [bc], a
    ld [hl], l
    ld h, e
    inc b
    ld a, [de]
    ld b, e
    ld [bc], a
    ld [hl], l
    ld c, l
    inc b
    dec de
    ld b, e
    ld [bc], a
    ld [hl], l
    sub a
    inc b
    inc e
    ld b, e
    ld [bc], a
    ld [hl], l
    sbc b
    inc b
    dec e
    ld b, e
    ld [bc], a
    ld [hl], l
    ld e, b
    inc b
    ld e, $43
    ld [bc], a
    ld [hl], l
    dec de
    nop
    ld b, h
    rra
    inc h
    nop
    jr nz, jr_01e_6baa

    nop
    ld hl, $001a
    ld [hl+], a
    dec d
    nop
    ld d, d
    inc hl
    nop
    ld [bc], a
    inc hl
    ld [bc], a
    ld [bc], a
    inc hl
    inc b
    nop
    inc hl
    rlca
    ld [bc], a
    inc hl

jr_01e_6b9f:
    ld [bc], a
    ld [bc], a
    inc hl
    inc b
    nop
    inc hl
    ld c, $02
    inc hl
    ld [bc], a
    ld [bc], a

jr_01e_6baa:
    inc hl
    inc c
    nop
    dec h
    rlca
    nop
    dec h
    ld c, $00
    dec h
    dec d
    nop
    inc h
    inc h
    ld [bc], a
    inc hl
    inc e
    ld [bc], a
    inc hl
    inc hl
    nop
    inc hl
    ld hl, $2402
    jr z, jr_01e_6bc5

jr_01e_6bc5:
    inc h
    jr z, jr_01e_6bc8

jr_01e_6bc8:
    ld c, h
    ld h, $0e
    ld [bc], a
    ld h, $16
    ld [bc], a
    ld h, $1c
    nop
    daa
    ld c, $02
    daa
    ld d, $02
    daa
    inc e
    nop
    jr z, jr_01e_6beb

    ld [bc], a
    jr z, jr_01e_6bf6

    ld [bc], a
    jr z, jr_01e_6bff

    nop
    add hl, hl

jr_01e_6be5:
    ld c, $02
    add hl, hl
    ld d, $02
    add hl, hl

jr_01e_6beb:
    inc e
    nop
    ld c, h
    ld a, [hl+]
    dec b
    nop
    dec hl
    dec b
    ld [bc], a
    dec hl
    inc c

jr_01e_6bf6:
    ld [bc], a
    ld a, [hl+]
    ld de, $2b04
    ld de, $2b02
    rla

jr_01e_6bff:
    ld [bc], a
    ld a, [hl+]
    dec de
    inc b
    dec hl
    dec de
    ld [bc], a
    dec hl
    jr nz, jr_01e_6c0b

    ld a, [hl+]
    cpl

jr_01e_6c0b:
    inc b
    inc l
    nop
    ld [bc], a
    inc l
    nop
    nop
    adc b
    dec l
    ld b, h
    nop
    ld l, $45
    nop
    dec l
    ld b, [hl]
    nop
    ld l, $47
    nop
    dec l
    ld c, b
    nop
    ld l, $49
    nop
    dec l
    cpl
    nop
    ld l, $1a
    nop
    ld a, [hl+]
    cpl
    ld b, [hl]
    nop
    cpl
    ld c, d
    nop
    cpl
    ld c, e
    nop
    cpl
    ld c, h
    nop
    cpl
    ld c, l
    nop
    cpl
    ld c, [hl]
    nop
    cpl
    ld c, a
    nop
    cpl
    ld d, b
    nop
    cpl
    ld l, $00
    cpl
    ld d, c
    nop
    add [hl]
    jr nc, jr_01e_6c7e

    nop
    jr nc, jr_01e_6c82

    nop
    jr nc, jr_01e_6be5

    nop
    jr nc, jr_01e_6c64

    nop
    jr nc, @+$11

    nop
    jr nc, @+$12

    nop
    ld c, c
    jr nc, jr_01e_6c70

    nop
    jr nc, jr_01e_6c73

    inc bc

jr_01e_6c64:
    ld sp, $041c
    ld sp, $0421
    ld sp, $0026
    jr nc, jr_01e_6c7f

    ld [bc], a

jr_01e_6c70:
    ld sp, $041d

jr_01e_6c73:
    ld sp, $0422
    ld sp, $0027
    add l
    inc bc
    ld sp, $0300

jr_01e_6c7e:
    ld [hl-], a

jr_01e_6c7f:
    nop
    inc bc
    sub d

jr_01e_6c82:
    nop
    inc bc
    ld c, $00
    inc bc
    stop
    ld b, e
    ld c, b
    ld [$4900], sp
    ld [$5a00], sp
    ld [$2200], sp
    dec [hl]
    ld d, d
    nop
    dec [hl]
    ld d, e
    nop
    ld b, h
    ld [hl], $54
    nop
    ld [hl], $55
    nop
    scf
    ld d, [hl]
    nop
    scf
    ld d, a
    nop
    and h
    ld [hl], $54
    nop
    ld [hl], $55
    nop
    scf
    ld d, [hl]
    nop
    scf
    ld d, a
    nop
    ld b, [hl]
    rla
    ld d, h
    nop
    rla
    ld d, l
    nop
    rla
    ld c, $00
    rla
    ld d, [hl]
    nop
    rla
    ld d, a
    nop
    rla
    inc de
    nop
    adc h
    jr c, @+$33

    nop
    add hl, sp
    ld sp, $3800
    ld [hl-], a
    nop
    add hl, sp
    ld [hl-], a
    nop
    jr c, @-$6c

    nop
    add hl, sp
    sub d
    nop
    jr c, jr_01e_6cea

    nop
    add hl, sp
    ld c, $00
    jr c, jr_01e_6cf1

    nop
    add hl, sp
    rrca
    nop
    jr c, @+$12

    nop
    add hl, sp

jr_01e_6cea:
    stop
    ld d, b
    ld a, [hl-]
    ld [$3b00], sp

jr_01e_6cf1:
    ld [$3c00], sp
    ld [$3d00], sp
    ld [$3e00], sp
    ld [$3f00], sp
    ld [$3e00], sp
    ld [$3f00], sp
    ld [$3a00], sp
    dec bc
    nop
    dec sp
    dec bc
    nop
    inc a
    dec bc
    nop
    dec a
    dec bc
    nop
    ld a, $0b
    nop
    ccf
    dec bc
    nop
    ld a, $0b
    nop
    ccf
    dec bc
    nop
    add h
    ld b, b
    ld sp, $4000
    ld [hl-], a
    nop
    ld b, b
    sub d
    nop
    ld b, b
    dec d
    nop
    ld b, e
    ld b, c
    ld e, b
    nop
    ld b, c
    ld e, c
    nop
    ld b, c
    ld hl, $af00
    inc h
    sbc d
    nop
    inc hl
    dec de
    ld [bc], a
    inc h
    ld [hl+], a
    nop
    inc hl
    ld d, $02
    inc hl
    dec e
    ld [bc], a
    inc h
    sbc b
    nop
    dec h
    inc l
    inc b
    dec h
    ld a, [hl+]
    inc b
    dec h
    sbc c
    inc b
    dec h
    ld h, d
    inc b
    dec h
    sbc c
    inc b
    dec h
    ld h, d
    inc b
    dec h
    sbc c
    inc b
    dec h
    ld h, d
    inc b
    dec h
    sbc c
    inc bc
    ld bc, $7525
    nop
    ld b, d
    ld b, d
    rlca
    nop
    ld b, e
    rlca
    nop
    ld b, e
    ld b, h
    nop
    nop
    ld b, l
    ld [$4600], sp
    db $10
    ld [bc], a
    adc e
    ld b, a
    stop
    ld b, a
    ld d, [hl]
    nop
    ld b, a
    rlca
    nop
    ld b, a
    xor d
    nop
    ld b, a
    xor e
    nop
    ld b, a
    xor h
    nop
    ld b, a
    xor l
    nop
    ld b, a
    xor [hl]
    nop
    ld b, a
    xor a
    nop
    ld b, a
    adc c
    nop
    ld b, a
    or b
    nop
    ld h, [hl]
    ld b, h
    ld h, h
    nop
    ld b, l
    ld h, l
    nop
    ld b, [hl]
    ld h, [hl]
    nop
    ld b, a
    ld h, [hl]
    nop
    ld b, a
    ld h, [hl]
    nop
    ld b, a
    ld h, [hl]
    nop
    ld h, c
    ld b, a
    ld h, a
    nop
    ld b, c
    ld [hl], c
    rrca
    inc bc
    ld b, a
    ld [hl], c
    rrca
    nop
    ld [hl], c
    ld [$7100], sp
    ld bc, $7100
    sub l
    nop
    ld [hl], d
    sub l
    nop
    ld [hl], e
    sub l
    nop
    ld [hl], h
    sub l
    nop
    ld c, b
    ld [hl], h
    sub l
    nop
    ld [hl], e
    sub l
    nop
    ld [hl], d
    sub l
    nop
    ld [hl], c
    sub l
    nop
    ld [hl], c
    ld bc, $7100
    ld [$7100], sp
    rrca
    nop
    ld [hl], c
    ld d, $00
    ld e, l
    ld c, b
    rrca
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    inc bc
    ld c, c
    rrca
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld l, c
    inc bc
    ld c, c
    ld l, e
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld l, c
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    inc bc
    ld c, c
    ld l, h
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld l, c
    inc bc
    ld c, c
    ld l, l
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld a, [hl+]
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    inc bc
    ld c, c
    rrca
    nop
    ld c, d
    ld l, b
    inc bc
    ld c, e
    ld a, [hl+]
    nop
    ld c, h
    ld l, d
    inc bc
    ld c, l
    ld a, [hl+]
    inc bc
    ld c, c
    ld l, e
    nop
    ld b, h
    ld c, [hl]
    dec hl
    nop
    ld c, a
    dec hl
    nop
    ld d, b
    dec hl
    nop
    ld d, b
    dec hl
    nop
    ld b, d
    ld d, c
    dec l
    nop
    ld d, c
    ld l, [hl]
    nop
    and d
    ld d, c
    dec l
    nop
    ld d, c
    ld l, [hl]
    nop
    ld h, d
    ld d, d
    ld [hl], c
    nop
    ld d, d
    ld [hl], d
    nop
    ld [bc], a
    ld d, d
    ld bc, $5200
    inc l
    nop
    ld h, e
    ld d, e
    ld [hl], c
    nop
    ld d, e
    ld a, a
    nop
    ld d, e
    add c
    nop
    inc bc
    ld d, e
    ld bc, $5300
    dec d
    nop
    ld d, e
    inc l
    nop
    and d
    ld d, h
    ld bc, $5400
    inc l
    nop
    inc hl
    ld d, l
    ld [hl], e
    inc bc
    ld d, [hl]
    ld [hl], e
    inc bc
    ld d, a
    ld [hl], e
    nop
    ld h, e
    ld b, a
    ld [hl], h
    nop
    ld b, a
    ld b, e
    nop
    ld b, a
    ld [hl], l
    nop
    ld h, $58
    halt
    inc [hl]
    halt
    ld e, b
    halt
    inc [hl]
    halt
    ld e, b
    halt
    inc [hl]
    halt
    ld h, a
    ld e, c
    ld a, c
    inc bc
    ld e, c
    ld a, e
    inc bc
    ld e, c
    ld [hl], a
    inc bc
    ld e, c
    ld a, d
    inc bc
    ld e, c
    ld a, b
    inc bc
    ld e, c
    ld a, h
    inc bc
    ld e, c
    halt
    ld [$4d3a], sp
    nop
    dec sp
    ld c, l
    nop
    inc a
    ld c, l
    nop
    dec a
    ld c, l
    nop
    ld a, $4d
    nop
    ccf
    ld c, l
    nop
    ld a, $4d
    nop
    ccf
    ld c, l
    nop
    dec [hl]
    ld c, b
    ld a, l
    nop
    ld c, c
    ld a, l
    nop
    ld e, d
    ld a, l
    nop
    ld c, b
    jr nc, jr_01e_6ee2

jr_01e_6ee2:
    ld c, c
    jr nc, jr_01e_6ee5

jr_01e_6ee5:
    ld e, d
    jr nc, jr_01e_6ee8

jr_01e_6ee8:
    ld c, b
    ld a, [hl]
    nop
    ld c, c
    ld a, [hl]
    nop
    ld e, d
    ld a, [hl]
    nop
    ld c, b
    ld a, a
    nop
    ld c, c
    ld a, a
    nop
    ld e, d
    ld a, a
    nop
    ld c, b
    add b
    nop
    ld c, c
    add b
    nop
    ld e, d
    add b
    nop
    ld c, b
    add c
    nop
    ld c, c
    add c
    nop
    ld e, d
    add c
    nop
    ld c, b
    add d
    nop
    ld c, c
    add d
    nop
    ld e, d
    add d
    nop
    inc h
    ld e, e
    add e
    inc bc
    ld e, h
    add h
    inc bc
    ld e, l
    add l
    inc bc
    ld e, [hl]
    add hl, bc
    nop
    ld c, b
    ld e, a
    ld a, [hl+]
    nop
    ld e, a
    nop
    nop
    ld h, b
    ld a, [hl+]
    nop
    ld h, b
    nop
    nop
    ld h, c
    ld a, [hl+]
    nop
    ld h, c
    nop
    nop
    ld h, d
    ld a, [hl+]
    nop
    ld h, d
    nop
    nop
    ld a, [hl+]
    ld h, e
    adc c
    nop
    ld h, h
    ld [hl], l
    nop
    ld h, e
    halt
    ld h, l
    dec c
    nop
    ld h, l
    add [hl]
    nop
    ld h, l
    ld [de], a
    nop
    ld h, l
    add a
    nop
    ld h, l
    rla
    nop
    ld h, l
    adc b
    nop
    ld h, l
    ld a, [de]
    nop
    ld d, b
    ld h, [hl]
    adc d
    nop
    ld h, [hl]
    inc sp
    nop
    ld h, [hl]
    ld l, $00
    ld h, a
    inc h
    inc bc
    ld h, [hl]
    ld bc, $6604
    db $10
    inc b
    ld h, [hl]
    dec e
    inc b
    ld h, a
    jr z, jr_01e_6f76

    ld h, [hl]
    ld a, [hl+]
    inc b

jr_01e_6f76:
    ld h, [hl]
    ld c, $04
    ld h, [hl]
    dec de
    inc b
    ld h, a
    ld h, $03
    ld h, [hl]
    inc bc
    inc b
    ld h, [hl]
    ld [de], a
    inc b
    ld h, [hl]
    ld e, $04
    ld h, a
    add hl, hl
    nop
    sub d
    ld [bc], a
    ld sp, $3400
    ld sp, $0200
    ld sp, $0200
    ld [hl-], a
    nop
    inc [hl]
    ld [hl-], a
    nop
    ld [bc], a
    ld [hl-], a
    nop
    ld [bc], a
    sub d
    nop
    inc [hl]
    sub d
    nop
    ld [bc], a
    sub d
    nop
    ld [bc], a
    ld c, $00
    inc [hl]
    ld c, $00
    ld [bc], a
    ld c, $00
    ld [bc], a
    rrca
    nop
    inc [hl]
    rrca
    nop
    ld [bc], a
    rrca
    nop
    ld [bc], a
    stop
    inc [hl]
    stop
    ld [bc], a
    stop
    ld [hl], d
    ld l, b
    ld c, e
    nop
    ld l, b
    adc h
    nop
    ld l, b
    jr nz, jr_01e_6fcc

jr_01e_6fcc:
    ld l, b
    inc e
    nop
    ld l, b
    add hl, de
    nop
    ld l, b
    inc d
    nop
    ld l, b
    halt
    ld l, b
    adc l
    nop
    ld l, b
    dec d
    nop
    ld l, b
    stop
    ld l, b
    inc c
    nop
    ld l, b
    ld b, $00
    ld l, b
    adc [hl]
    nop
    ld l, b
    adc a
    nop
    ld l, b
    sub b
    nop
    ld l, b
    ld h, $00
    ld l, b
    inc hl
    nop
    ld l, b
    rra
    nop
    inc l
    ld l, c
    ld c, e
    nop
    ld l, c
    adc h
    nop
    ld l, c
    jr nz, jr_01e_7003

jr_01e_7003:
    ld l, c
    inc e
    nop
    ld l, c
    add hl, de
    nop
    ld l, c
    inc d
    nop
    ld l, c
    halt
    ld l, c
    adc l
    nop
    ld l, c
    dec d
    nop
    ld l, c
    stop
    ld l, c
    inc c
    nop
    ld l, c
    ld b, $00
    and e
    ld l, d
    rlca
    nop
    ld l, e
    rrca
    nop
    ld l, h
    rla
    nop
    inc h
    ld l, l
    adc e
    nop
    ld l, l
    add h
    nop
    ld l, l
    ld h, e
    nop
    ld l, l
    adc h
    nop
    ld h, $6d
    adc e
    nop
    ld l, l
    add h
    nop
    ld l, l
    ld h, e
    nop
    ld l, l
    adc h
    nop
    ld l, l
    ld a, [bc]
    nop
    ld l, l
    adc c
    nop
    inc hl
    ld b, $82
    nop
    rlca
    add d
    nop
    ld [$0096], sp
    ld b, $03
    ld b, c
    inc b
    inc bc
    ld c, b
    inc b
    inc b
    ld c, b
    inc b
    inc bc
    ld c, b
    inc b
    dec b
    ld c, b
    inc b
    inc bc
    ld c, b
    inc bc
    inc b
    inc b
    ld c, b
    inc b
    inc bc
    ld c, b
    inc b
    dec b
    ld c, b
    inc b
    inc bc
    ld c, b
    inc bc
    ld bc, $8404
    inc bc
    inc bc
    ld b, $72
    nop
    rlca
    ld [hl], d
    nop
    ld [$0072], sp
    ld l, b
    ld l, a
    jr nc, jr_01e_7084

jr_01e_7084:
    ld l, [hl]
    jr nc, jr_01e_7087

jr_01e_7087:
    ld [hl], b
    jr nc, jr_01e_708a

jr_01e_708a:
    ld l, [hl]
    jr nc, jr_01e_708d

jr_01e_708d:
    ld l, a
    jr nc, jr_01e_7090

jr_01e_7090:
    ld l, [hl]
    jr nc, jr_01e_7093

jr_01e_7093:
    ld [hl], b
    jr nc, jr_01e_7096

jr_01e_7096:
    ld l, [hl]
    jr nc, jr_01e_7099

jr_01e_7099:
    ld h, $32
    ld c, e
    nop
    inc sp
    ld c, a
    nop
    ld [hl-], a
    jr nz, jr_01e_70a3

jr_01e_70a3:
    inc sp
    ld d, $00
    ld [hl-], a
    add hl, de
    nop
    inc sp
    dec c
    nop
    and [hl]
    db $76
    dec de
    nop
    inc [hl]
    dec de
    nop
    db $76
    dec de
    nop
    inc [hl]
    dec de
    nop
    db $76
    dec de
    nop
    inc [hl]
    dec de
    nop
    ld b, a
    ld [hl], a
    dec h
    nop
    ld [hl], a
    sbc e
    nop
    ld [hl], a
    ld a, [de]
    nop
    ld [hl], a
    sbc h
    nop
    ld [hl], a
    cpl
    nop
    ld [hl], a
    ld d, b
    nop
    ld [hl], a
    adc h
    nop
    inc c
    ld a, b
    jr nc, jr_01e_70d9

jr_01e_70d9:
    ld a, b
    and d
    nop
    ld a, b
    sub e
    nop
    ld a, b
    ld h, c
    nop
    ld a, b
    ld [hl], e
    nop
    ld a, b
    and a
    nop
    ld a, b
    inc sp
    nop
    ld a, b
    xor b
    nop
    ld a, b
    ld c, $00
    ld a, b
    xor c
    nop
    ld a, b
    inc [hl]
    nop
    ld bc, $009e
    dec bc
    ld a, c
    jr nc, jr_01e_70fe

jr_01e_70fe:
    ld a, c
    and d
    nop
    ld a, c
    sub e
    nop
    ld a, c
    ld h, c
    nop
    ld a, c
    ld [hl], e
    nop
    ld a, c
    and a
    nop
    ld a, c
    inc sp
    nop
    ld a, c
    xor b
    nop
    ld a, c
    ld c, $00
    ld a, c
    xor c
    nop
    ld a, c
    inc [hl]
    nop
    adc a
    ld a, a
    db $10
    ld [hl], d
    dec [hl]
    ld [hl], d
    db $76
    ld [hl], d
    add a
    ld [hl], d
    sbc b
    ld [hl], d
    xor c
    ld [hl], d
    jp c, Jump_000_1b72

    ld [hl], e
    ld e, h
    ld [hl], e
    adc l
    ld [hl], e
    cp [hl]
    ld [hl], e
    rst $08
    ld [hl], e
    ldh [$73], a
    ld bc, $1274
    ld [hl], h
    inc hl
    ld [hl], h
    ld b, h
    ld [hl], h
    ld h, l
    ld [hl], h
    ld [hl], d
    ld [hl], h
    add e
    ld [hl], h
    and h
    ld [hl], h
    push de
    ld [hl], h
    or $74
    rlca
    ld [hl], l
    inc c
    ld [hl], l
    dec d
    ld [hl], l
    ld e, $75
    daa
    ld [hl], l
    jr nc, jr_01e_71cd

    add hl, sp
    ld [hl], l
    ld d, e
    ld [hl], l
    ld e, h
    ld [hl], l
    ld [hl], l
    ld [hl], l
    and [hl]
    ld [hl], l
    di
    ld [hl], l
    inc b
    db $76
    dec c
    db $76
    ld a, $76
    ld c, a
    db $76
    ld h, h
    db $76
    ld a, l
    db $76
    adc [hl]
    db $76
    sbc a
    db $76
    xor b
    db $76
    xor l
    db $76
    adc $76
    rst $28
    halt
    ld [hl], a
    ld de, $1677
    ld [hl], a
    inc sp
    ld [hl], a
    ld d, b
    ld [hl], a
    ld d, l
    ld [hl], a
    ld l, [hl]
    ld [hl], a
    ld a, a
    ld [hl], a
    sub b
    ld [hl], a
    and c
    ld [hl], a
    or d
    ld [hl], a
    jp $d877


    ld [hl], a
    pop af
    ld [hl], a
    ld c, $78
    cpl
    ld a, b
    ld d, b
    ld a, b
    ld e, l
    ld a, b
    ld l, [hl]
    ld a, b
    sbc e
    ld a, b
    ret z

    ld a, b
    reti


    ld a, b
    ld [$fb78], a
    ld a, b
    inc c
    ld a, c
    dec e
    ld a, c
    ld [bc], a
    ld a, d
    inc de
    ld a, d
    inc h
    ld a, d
    dec [hl]
    ld a, d
    ld b, [hl]
    ld a, d
    ld h, a
    ld a, d
    sbc b
    ld a, d
    cp c
    ld a, d
    jp c, $eb7a

    ld a, d
    ld hl, sp+$7a
    add hl, bc
    ld a, e
    ld d, $7b
    cpl
    ld a, e
    ld d, h

jr_01e_71cd:
    ld a, e
    ld [hl], c
    ld a, e
    db $76
    ld a, e
    and a
    ld a, e
    cp b
    ld a, e
    reti


    ld a, e
    ld b, $7c
    ld b, e
    ld a, h
    ld d, h
    ld a, h
    ld [hl], l
    ld a, h
    and [hl]
    ld a, h
    rst $20
    ld a, h
    nop
    ld a, l
    add hl, de
    ld a, l
    ld [hl-], a
    ld a, l
    dec sp
    ld a, l
    ld b, b
    ld a, l
    ld d, c
    ld a, l
    ld d, [hl]
    ld a, l
    ld [hl], a
    ld a, l
    sbc b
    ld a, l
    cp c
    ld a, l
    jp nz, $d37d

    ld a, l
    db $e4
    ld a, l
    ld e, [hl]
    ld a, c
    sbc a
    ld a, c
    ret nc

    ld a, c
    pop af
    ld a, c
    ld b, d
    ld [hl], l
    push af
    ld a, l
    ld [de], a
    ld a, [hl]
    inc hl
    ld a, [hl]
    jr z, @+$80

    add hl, bc
    nop
    nop
    inc l
    nop
    nop
    ld [$002d], sp
    nop
    db $10
    inc l
    jr nz, @+$0a

    nop
    inc a
    nop
    ld [$3d08], sp
    nop
    ld [$3c10], sp
    jr nz, jr_01e_723a

    nop
    inc l
    ld b, b
    db $10
    ld [$402d], sp
    db $10
    db $10
    inc l
    ld h, b
    stop
    nop
    jr nz, jr_01e_723a

jr_01e_723a:
    nop
    ld [$0021], sp
    nop
    db $10
    ld hl, $0020
    jr jr_01e_7265

    jr nz, @+$0a

    nop
    jr nc, jr_01e_724a

jr_01e_724a:
    ld [$3108], sp
    nop
    ld [$3110], sp
    jr nz, jr_01e_725b

    jr @+$32

    jr nz, @+$12

    nop
    jr nc, jr_01e_729a

    db $10

jr_01e_725b:
    ld [$4031], sp
    db $10
    db $10
    ld sp, $1060
    jr @+$32

jr_01e_7265:
    ld h, b
    jr jr_01e_7268

jr_01e_7268:
    jr nz, jr_01e_72aa

    jr @+$0a

    ld hl, $1840
    db $10
    ld hl, $1860
    jr @+$22

    ld h, b
    inc b
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [$2002], sp
    ld [$1200], sp
    nop
    ld [$1208], sp
    jr nz, jr_01e_728c

    nop
    nop
    ld b, $00

jr_01e_728c:
    nop
    ld [$0007], sp
    ld [$1600], sp
    nop
    ld [$1708], sp
    nop
    inc b
    nop

jr_01e_729a:
    nop
    rlca
    jr nz, jr_01e_729e

jr_01e_729e:
    ld [$2006], sp
    ld [$1700], sp
    jr nz, jr_01e_72ae

    ld [$2016], sp
    inc c

jr_01e_72aa:
    nop
    ld [$0023], sp

jr_01e_72ae:
    ld [$3200], sp
    nop
    ld [$3308], sp
    nop
    nop
    db $10
    inc hl
    jr nz, jr_01e_72c3

    db $10
    inc sp
    jr nz, jr_01e_72c7

    jr @+$34

    jr nz, jr_01e_72d3

jr_01e_72c3:
    nop
    ld [hl-], a
    ld b, b
    db $10

jr_01e_72c7:
    ld [$4033], sp
    jr @+$0a

    inc hl
    ld b, b
    db $10
    db $10
    inc sp
    ld h, b
    db $10

jr_01e_72d3:
    jr jr_01e_7307

    ld h, b
    jr @+$12

    inc hl
    ld h, b
    stop
    nop
    jr nz, jr_01e_72df

jr_01e_72df:
    nop
    ld [$0021], sp
    ld [$3000], sp
    nop
    ld [$3108], sp
    nop
    nop
    db $10
    ld hl, $0020
    jr jr_01e_7312

    jr nz, jr_01e_72fc

    db $10
    ld sp, $0820
    jr @+$32

    jr nz, jr_01e_730c

jr_01e_72fc:
    nop
    jr nc, @+$42

    db $10
    ld [$4031], sp
    jr jr_01e_7305

jr_01e_7305:
    jr nz, @+$42

jr_01e_7307:
    jr @+$0a

    ld hl, $1040

jr_01e_730c:
    db $10
    ld sp, $1060
    jr jr_01e_7342

jr_01e_7312:
    ld h, b
    jr @+$12

    ld hl, $1860
    jr @+$22

    ld h, b
    stop
    nop
    jr nz, jr_01e_7320

jr_01e_7320:
    nop
    ld [$0021], sp
    ld [$3000], sp
    nop
    ld [$3108], sp
    nop
    nop
    jr jr_01e_7350

    jr nz, jr_01e_7331

jr_01e_7331:
    jr nz, @+$22

    jr nz, jr_01e_733d

    jr jr_01e_7368

    jr nz, @+$0a

    jr nz, @+$32

    jr nz, @+$1a

jr_01e_733d:
    nop
    jr nc, jr_01e_7380

    jr jr_01e_734a

jr_01e_7342:
    ld sp, $2040
    nop
    jr nz, jr_01e_7388

    jr nz, jr_01e_7352

jr_01e_734a:
    ld hl, $1840
    jr jr_01e_7380

    ld h, b

jr_01e_7350:
    jr jr_01e_7372

jr_01e_7352:
    jr nc, jr_01e_73b4

    jr nz, jr_01e_736e

    ld hl, $2060
    jr nz, jr_01e_737b

    ld h, b
    inc c
    nop
    nop
    inc h
    nop
    nop
    ld [$0025], sp
    ld [$3400], sp

jr_01e_7368:
    nop
    nop
    jr jr_01e_7391

    jr nz, jr_01e_736e

jr_01e_736e:
    jr nz, @+$26

    jr nz, @+$0a

jr_01e_7372:
    jr nz, jr_01e_73a8

    jr nz, jr_01e_738e

    nop
    inc [hl]
    ld b, b
    jr nz, jr_01e_737b

jr_01e_737b:
    inc h
    ld b, b
    jr nz, jr_01e_7387

    dec h

jr_01e_7380:
    ld b, b
    jr jr_01e_73a3

    inc [hl]
    ld h, b
    jr nz, jr_01e_739f

jr_01e_7387:
    dec h

jr_01e_7388:
    ld h, b
    jr nz, @+$22

    inc h
    ld h, b
    inc c

jr_01e_738e:
    nop
    nop
    inc h

jr_01e_7391:
    nop
    nop
    ld [$0025], sp
    ld [$3400], sp
    nop
    nop
    jr nz, jr_01e_73c2

    jr nz, jr_01e_739f

jr_01e_739f:
    jr z, @+$26

    jr nz, @+$0a

jr_01e_73a3:
    jr z, @+$36

    jr nz, jr_01e_73c7

    nop

jr_01e_73a8:
    inc [hl]
    ld b, b
    jr z, jr_01e_73ac

jr_01e_73ac:
    inc h
    ld b, b
    jr z, jr_01e_73b8

    dec h
    ld b, b
    jr nz, jr_01e_73dc

jr_01e_73b4:
    inc [hl]
    ld h, b
    jr z, jr_01e_73d8

jr_01e_73b8:
    dec h
    ld h, b
    jr z, jr_01e_73e4

    inc h
    ld h, b
    inc b
    nop
    nop
    dec b

jr_01e_73c2:
    nop
    nop
    ld [$2005], sp

jr_01e_73c7:
    ld [$1500], sp
    nop
    ld [$1508], sp
    jr nz, jr_01e_73d4

    nop
    nop
    inc b
    nop

jr_01e_73d4:
    nop
    ld [$2004], sp

jr_01e_73d8:
    ld [$1400], sp
    nop

jr_01e_73dc:
    ld [$1408], sp
    jr nz, jr_01e_73e9

    nop
    nop
    inc c

jr_01e_73e4:
    nop
    nop
    ld [$000d], sp

jr_01e_73e9:
    ld [$1c00], sp
    nop
    ld [$1d08], sp
    nop
    stop
    dec e
    ld h, b
    db $10
    ld [$601c], sp
    jr jr_01e_73fb

jr_01e_73fb:
    dec c
    ld h, b
    jr @+$0a

    inc c
    ld h, b
    inc b
    jr nz, jr_01e_7404

jr_01e_7404:
    inc c
    nop
    jr nz, jr_01e_7410

    dec c
    nop
    jr z, jr_01e_740c

jr_01e_740c:
    inc e
    nop
    jr z, @+$0a

jr_01e_7410:
    dec e
    nop
    inc b
    jr nc, jr_01e_7415

jr_01e_7415:
    dec e
    ld h, b
    jr nc, jr_01e_7421

    inc e
    ld h, b
    jr c, jr_01e_741d

jr_01e_741d:
    dec c
    ld h, b
    jr c, jr_01e_7429

jr_01e_7421:
    inc c
    ld h, b
    ld [$0000], sp
    ld c, $00
    nop

jr_01e_7429:
    ld [$000f], sp
    ld [$1e00], sp
    nop
    ld [$1f08], sp
    nop
    nop
    db $10
    rrca
    jr nz, jr_01e_7439

jr_01e_7439:
    jr jr_01e_7449

    jr nz, jr_01e_7445

    db $10
    rra
    jr nz, jr_01e_7449

    jr @+$20

    jr nz, jr_01e_744d

jr_01e_7445:
    nop
    nop
    ld c, $00

jr_01e_7449:
    nop
    ld [$000f], sp

jr_01e_744d:
    ld [$1e00], sp
    nop
    ld [$1f08], sp
    nop
    nop
    jr nz, jr_01e_7467

    jr nz, jr_01e_745a

jr_01e_745a:
    jr z, jr_01e_746a

    jr nz, jr_01e_7466

    jr nz, jr_01e_747f

    jr nz, jr_01e_746a

    jr z, jr_01e_7482

    jr nz, jr_01e_7469

jr_01e_7466:
    nop

jr_01e_7467:
    nop
    scf

jr_01e_7469:
    nop

jr_01e_746a:
    ld [$3710], sp
    nop
    nop
    jr nz, @+$39

    nop
    inc b
    nop
    nop
    ld [hl], $00
    nop
    ld [$2036], sp
    ld [$3600], sp
    ld b, b

jr_01e_747f:
    ld [$3608], sp

jr_01e_7482:
    ld h, b
    ld [$1000], sp
    jr z, jr_01e_7488

jr_01e_7488:
    nop
    jr @+$2a

    jr nz, jr_01e_7495

    db $10
    jr c, jr_01e_7490

jr_01e_7490:
    ld [$3818], sp
    jr nz, jr_01e_7495

jr_01e_7495:
    jr nz, @+$38

    nop
    nop
    jr z, jr_01e_74d1

    jr nz, jr_01e_74a5

    jr nz, @+$38

    ld b, b
    ld [$3628], sp
    ld h, b
    inc c

jr_01e_74a5:
    nop
    nop
    jr z, jr_01e_74a9

jr_01e_74a9:
    nop
    ld [$2028], sp
    ld [$3800], sp
    nop
    ld [$3808], sp
    jr nz, jr_01e_74b6

jr_01e_74b6:
    db $10
    add hl, hl
    nop
    nop
    jr jr_01e_74e5

    jr nz, jr_01e_74c6

    db $10
    add hl, sp
    nop
    ld [$3918], sp
    jr nz, jr_01e_74c6

jr_01e_74c6:
    jr nz, @+$2a

    nop
    nop
    jr z, @+$2a

    jr nz, jr_01e_74d6

    jr nz, @+$3a

    nop

jr_01e_74d1:
    ld [$3828], sp
    jr nz, jr_01e_74de

jr_01e_74d6:
    nop
    nop
    add hl, hl
    nop
    nop
    ld [$2029], sp

jr_01e_74de:
    ld [$3900], sp
    nop
    ld [$3908], sp

jr_01e_74e5:
    jr nz, jr_01e_74e7

jr_01e_74e7:
    jr nz, jr_01e_7512

    nop
    nop
    jr z, jr_01e_7516

    jr nz, jr_01e_74f7

    jr nz, @+$3b

    nop
    ld [$3928], sp
    jr nz, @+$06

jr_01e_74f7:
    nop
    nop
    ld [$0000], sp
    ld [$0009], sp
    ld [$1800], sp
    nop
    ld [$1908], sp
    nop
    ld bc, $0018
    ld b, l
    ld h, b
    ld [bc], a
    jr jr_01e_7517

    ld b, l
    nop
    db $10

jr_01e_7512:
    ld [$6046], sp
    ld [bc], a

jr_01e_7516:
    db $10

jr_01e_7517:
    db $10
    ld b, l
    ld h, b
    jr jr_01e_752c

    ld b, [hl]
    nop
    ld [bc], a
    db $10
    jr @+$47

    nop
    ld [$4618], sp
    ld h, b
    ld [bc], a
    ld [$4520], sp
    ld h, b

jr_01e_752c:
    db $10
    jr nz, @+$48

    nop
    ld [bc], a
    ld [$4528], sp
    nop
    nop
    jr z, @+$48

    ld h, b
    ld [bc], a
    nop
    jr nc, jr_01e_7582

    ld h, b
    ld [$4630], sp
    nop
    inc b
    nop
    nop
    ld b, e
    nop
    nop
    ld [$2043], sp
    ld [$2200], sp
    nop
    ld [$4308], sp
    ld h, b
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    jr nc, jr_01e_755e

    jr nz, @+$08

    nop

jr_01e_755e:
    nop
    inc bc
    nop
    nop
    jr nc, @+$05

    jr nz, jr_01e_756e

    ld [$0003], sp
    ld [$0328], sp
    jr nz, jr_01e_7576

jr_01e_756e:
    nop
    inc de
    nop
    ld [$1330], sp
    jr nz, jr_01e_7582

jr_01e_7576:
    nop
    nop
    inc bc
    nop
    nop
    jr nc, @+$05

    jr nz, jr_01e_7587

    ld [$0003], sp

jr_01e_7582:
    ld [$0328], sp
    jr nz, jr_01e_758f

jr_01e_7587:
    nop
    inc de
    nop
    ld [$1330], sp
    jr nz, jr_01e_759f

jr_01e_758f:
    db $10
    inc bc
    nop
    db $10
    jr nz, @+$05

    jr nz, jr_01e_75a7

    ld [$0013], sp
    db $10
    jr z, @+$15

    jr nz, jr_01e_75af

jr_01e_759f:
    nop
    inc bc
    nop
    db $10
    jr nc, jr_01e_75a8

    jr nz, jr_01e_75ba

jr_01e_75a7:
    nop

jr_01e_75a8:
    nop
    inc bc
    nop
    ld [$1300], sp
    nop

jr_01e_75af:
    stop
    inc bc
    nop
    jr jr_01e_75b5

jr_01e_75b5:
    inc de
    nop
    ld [$0308], sp

jr_01e_75ba:
    nop
    db $10
    ld [$0013], sp
    jr jr_01e_75c9

    inc bc
    nop
    db $10
    db $10
    inc bc
    nop
    jr @+$12

jr_01e_75c9:
    inc de
    nop
    jr @+$1a

    inc bc
    nop
    db $10
    jr nz, @+$05

    jr nz, jr_01e_75ec

    jr nz, @+$15

    jr nz, jr_01e_75e0

    jr z, @+$05

    jr nz, jr_01e_75ec

    jr z, @+$15

    jr nz, jr_01e_75f8

jr_01e_75e0:
    jr z, @+$05

    jr nz, jr_01e_75e4

jr_01e_75e4:
    jr nc, @+$05

    jr nz, jr_01e_75f0

    jr nc, @+$15

    jr nz, jr_01e_75fc

jr_01e_75ec:
    jr nc, @+$05

    jr nz, jr_01e_7608

jr_01e_75f0:
    jr nc, jr_01e_7605

    jr nz, jr_01e_75f8

    nop
    nop
    ld a, [bc]
    nop

jr_01e_75f8:
    nop
    ld [$000b], sp

jr_01e_75fc:
    ld [$1a00], sp
    nop
    ld [$1b08], sp
    nop
    ld [bc], a

jr_01e_7605:
    ld [$0a00], sp

jr_01e_7608:
    nop
    ld [$0b08], sp
    nop
    inc c
    stop
    ld a, [bc]
    nop
    db $10
    ld [$000b], sp
    jr jr_01e_7618

jr_01e_7618:
    ld a, [de]
    nop
    jr @+$0a

    dec de
    nop
    nop
    db $10
    ld a, [bc]
    nop
    nop
    jr @+$0d

    nop
    ld [$1a10], sp
    nop
    ld [$1b18], sp
    nop
    ld [$0a20], sp
    nop
    ld [$0b28], sp
    nop
    db $10
    jr nz, jr_01e_7653

    nop
    db $10
    jr z, @+$1d

    nop
    inc b
    nop
    db $10
    ld b, h
    nop
    nop
    jr jr_01e_768a

    jr nz, jr_01e_7650

    db $10
    ld b, h
    ld b, b
    ld [$4418], sp
    ld h, b
    dec b

jr_01e_7650:
    ld [$4408], sp

jr_01e_7653:
    nop
    ld [$4410], sp
    jr nz, jr_01e_7669

    ld [$4044], sp
    db $10
    db $10
    ld b, h
    ld h, b
    nop
    jr @+$49

    nop
    ld b, $10
    nop
    ld b, h
    nop

jr_01e_7669:
    db $10
    ld [$2044], sp
    jr jr_01e_766f

jr_01e_766f:
    ld b, h
    ld b, b
    jr @+$0a

    ld b, h
    ld h, b
    ld [$4710], sp
    nop
    ld [bc], a
    ld d, $47
    nop
    inc b
    jr jr_01e_7680

jr_01e_7680:
    ld b, a
    nop
    ld [de], a
    ld b, $47
    nop
    inc c
    inc c
    ld b, a
    nop

jr_01e_768a:
    ld b, $12
    ld b, a
    nop
    inc b
    nop
    nop
    ld b, h
    nop
    nop
    ld [$2044], sp
    ld [$4400], sp
    ld b, b
    ld [$4408], sp
    ld h, b
    ld [bc], a
    ld b, $02
    ld b, a
    nop
    nop
    ld [$0047], sp
    ld bc, $00a0
    ld c, l
    nop
    ld [$0000], sp
    ld h, $00
    nop
    ld [$0027], sp
    ld [$3600], sp
    nop
    ld [$3708], sp
    nop
    stop
    jr z, jr_01e_76c2

jr_01e_76c2:
    db $10
    ld [$0029], sp
    jr jr_01e_76c8

jr_01e_76c8:
    jr c, jr_01e_76ca

jr_01e_76ca:
    jr jr_01e_76d4

    add hl, sp
    nop
    ld [$0000], sp
    daa
    jr nz, jr_01e_76d4

jr_01e_76d4:
    ld [$2026], sp
    ld [$3700], sp
    jr nz, jr_01e_76e4

    ld [$2036], sp
    stop
    add hl, hl
    jr nz, jr_01e_76f4

jr_01e_76e4:
    ld [$2028], sp
    jr jr_01e_76e9

jr_01e_76e9:
    add hl, sp
    jr nz, jr_01e_7704

    ld [$2038], sp
    inc b
    nop
    nop
    inc c
    nop

jr_01e_76f4:
    nop
    ld [$000d], sp
    ld [$0c00], sp
    ld b, b
    ld [$0d08], sp
    ld b, b
    inc b
    nop
    nop
    ld b, h

jr_01e_7704:
    nop
    nop
    ld [$2044], sp
    ld [$4400], sp
    ld b, b
    ld [$4408], sp
    ld h, b
    ld bc, $0000
    ld b, l
    nop
    rlca
    nop
    nop
    ld c, l
    nop
    nop
    ld [$002f], sp
    nop
    db $10
    ld c, l
    jr nz, @+$0a

    nop
    ld c, [hl]
    nop
    ld [$0708], sp
    nop
    ld [$4e10], sp
    jr nz, jr_01e_7740

    ld [$003f], sp
    rlca
    nop
    ld [$403f], sp
    ld [$4e00], sp
    ld b, b
    ld [$0708], sp
    ld b, b

jr_01e_7740:
    ld [$4e10], sp
    ld h, b
    stop
    ld c, l
    ld b, b
    db $10
    ld [$402f], sp
    db $10
    db $10
    ld c, l
    ld h, b
    ld bc, $00a0
    nop
    db $10
    ld b, $00
    nop
    ld a, [hl+]
    nop
    nop
    ld [$002b], sp
    ld [$3a00], sp
    nop
    stop
    ld a, [hl-]
    ld b, b
    jr jr_01e_7768

jr_01e_7768:
    ld a, [hl+]
    ld b, b
    jr jr_01e_7774

    dec hl
    ld b, b
    inc b
    nop
    nop
    nop
    nop
    nop

jr_01e_7774:
    ld [$0001], sp
    ld [$1000], sp
    nop
    ld [$1108], sp
    nop
    inc b
    nop
    nop
    ld bc, $00a0
    ld [$a000], sp
    ld [$1100], sp
    and b
    ld [$1008], sp
    and b
    inc b
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld [$000b], sp
    ld [$1a00], sp
    nop
    ld [$1b08], sp
    nop
    inc b
    nop
    nop
    dec bc
    jr nz, jr_01e_77a7

jr_01e_77a7:
    ld [$200a], sp
    ld [$1b00], sp
    jr nz, jr_01e_77b7

    ld [$201a], sp
    inc b
    jr nz, jr_01e_77b5

jr_01e_77b5:
    dec b
    nop

jr_01e_77b7:
    jr nz, jr_01e_77c1

    dec b
    jr nz, jr_01e_77e4

    nop
    dec d
    nop
    jr z, @+$0a

jr_01e_77c1:
    dec d
    jr nz, @+$07

    jr jr_01e_77c6

jr_01e_77c6:
    inc b
    nop
    jr jr_01e_77d2

    inc b
    jr nz, jr_01e_77ed

    nop
    inc d
    nop
    jr nz, jr_01e_77da

jr_01e_77d2:
    inc d
    jr nz, jr_01e_77fd

    inc b
    ld b, c
    nop
    ld b, $10

jr_01e_77da:
    nop
    dec b
    nop
    db $10
    ld [$2005], sp
    jr jr_01e_77e3

jr_01e_77e3:
    dec d

jr_01e_77e4:
    nop
    jr jr_01e_77ef

    dec d
    jr nz, jr_01e_780a

    inc b
    ld b, d
    nop

jr_01e_77ed:
    jr z, @+$06

jr_01e_77ef:
    ld b, d
    nop
    rlca
    ld [$0400], sp
    nop
    ld [$0408], sp
    jr nz, @+$12

    nop
    inc d

jr_01e_77fd:
    nop
    db $10
    ld [$2014], sp
    jr jr_01e_7808

    ld b, c
    nop
    jr nz, jr_01e_780c

jr_01e_7808:
    ld b, c
    nop

jr_01e_780a:
    jr z, @+$06

jr_01e_780c:
    ld b, c
    nop
    ld [$0000], sp
    dec b
    nop
    nop
    ld [$2005], sp
    ld [$1500], sp
    nop
    ld [$1508], sp
    jr nz, @+$12

    inc b
    ld b, d
    nop
    jr jr_01e_7829

    ld b, d
    nop
    jr nz, jr_01e_782d

jr_01e_7829:
    ld b, d
    nop
    jr z, @+$06

jr_01e_782d:
    ld b, d
    nop
    ld [$0000], sp
    inc b
    nop
    nop
    ld [$2004], sp
    ld [$1400], sp
    nop
    ld [$1408], sp
    jr nz, jr_01e_7851

    inc b
    ld b, c
    nop
    jr jr_01e_784a

    ld b, c
    nop
    jr nz, jr_01e_784e

jr_01e_784a:
    ld b, c
    nop
    jr z, jr_01e_7852

jr_01e_784e:
    ld b, c
    nop
    inc bc

jr_01e_7851:
    nop

jr_01e_7852:
    nop
    dec a
    nop
    nop
    ld [$003d], sp
    ld [$3d08], sp
    nop
    inc b
    nop
    nop
    ld b, $00
    nop
    ld [$2006], sp
    ld [$1600], sp
    nop
    ld [$1708], sp
    nop
    dec bc
    nop
    db $10
    ld b, d
    nop
    ld [$4200], sp
    nop
    ld [$4208], sp
    nop
    ld [$4210], sp
    nop
    ld [$4218], sp
    nop
    ld [$4220], sp
    nop
    db $10
    db $10
    ld b, d
    nop
    jr jr_01e_7895

    ld b, d
    nop
    jr @+$1a

    ld b, d
    nop
    jr nz, jr_01e_7895

jr_01e_7895:
    ld b, d
    nop
    jr nz, @+$22

    ld b, d
    nop
    dec bc
    nop
    db $10
    ld b, c
    nop
    ld [$4100], sp
    nop
    ld [$4108], sp
    nop
    ld [$4110], sp
    nop
    ld [$4118], sp
    nop
    ld [$4120], sp
    nop
    db $10
    db $10
    ld b, c
    nop
    jr jr_01e_78c2

    ld b, c
    nop
    jr @+$1a

    ld b, c
    nop
    jr nz, jr_01e_78c2

jr_01e_78c2:
    ld b, c
    nop
    jr nz, jr_01e_78e6

    ld b, c
    nop
    inc b
    nop
    nop
    ld c, c
    nop
    nop
    jr z, jr_01e_7919

    nop
    jr z, jr_01e_78d3

jr_01e_78d3:
    ld c, c
    nop
    jr z, jr_01e_78ff

    ld c, c
    nop
    inc b
    nop
    nop
    ld c, c
    nop
    nop
    jr @+$4b

    nop
    jr jr_01e_78e4

jr_01e_78e4:
    ld c, c
    nop

jr_01e_78e6:
    jr jr_01e_7900

    ld c, c
    nop
    inc b
    nop
    nop
    ld c, c
    nop
    nop
    ld [$0049], sp
    ld [$4900], sp
    nop
    ld [$4908], sp
    nop
    inc b
    nop
    nop
    ld b, e

jr_01e_78ff:
    nop

jr_01e_7900:
    nop
    ld [$2043], sp
    ld [$4300], sp
    ld b, b
    ld [$4308], sp
    ld h, b
    inc b
    ld [$3308], sp
    nop
    ld [$3310], sp
    jr nz, jr_01e_7926

    ld [$4033], sp

jr_01e_7919:
    db $10
    db $10
    inc sp
    ld h, b
    stop
    nop
    ld [hl+], a
    nop
    nop
    ld [$0023], sp

jr_01e_7926:
    nop
    db $10
    inc hl
    jr nz, jr_01e_792b

jr_01e_792b:
    jr @+$24

    jr nz, @+$0a

    nop
    ld [hl-], a
    nop
    ld [$4308], sp
    nop
    ld [$4310], sp
    jr nz, jr_01e_7943

    jr @+$34

    jr nz, @+$12

    nop
    ld [hl-], a
    ld b, b
    db $10

jr_01e_7943:
    ld [$4043], sp
    db $10
    db $10
    ld b, e
    ld h, b
    db $10
    jr @+$34

    ld h, b
    jr jr_01e_7950

jr_01e_7950:
    ld [hl+], a
    ld b, b
    jr jr_01e_795c

    inc hl
    ld b, b
    jr jr_01e_7968

    inc hl
    ld h, b
    jr @+$1a

jr_01e_795c:
    ld [hl+], a
    ld h, b
    stop
    nop
    ld [hl+], a
    nop
    nop
    ld [$003b], sp
    nop

jr_01e_7968:
    db $10
    inc hl
    jr nz, jr_01e_796c

jr_01e_796c:
    jr @+$24

    jr nz, @+$0a

    nop
    ld [hl-], a
    nop
    ld [$4308], sp
    nop
    ld [$4310], sp
    jr nz, jr_01e_7984

    jr @+$34

    jr nz, @+$12

    nop
    ld [hl-], a
    ld b, b
    db $10

jr_01e_7984:
    ld [$4043], sp
    db $10
    db $10
    ld b, e
    ld h, b
    db $10
    jr jr_01e_79c0

    ld h, b
    jr jr_01e_7991

jr_01e_7991:
    ld [hl+], a
    ld b, b
    jr jr_01e_799d

    inc hl
    ld b, b
    jr jr_01e_79a9

    inc hl
    ld h, b
    jr @+$1a

jr_01e_799d:
    ld [hl+], a
    ld h, b
    inc c
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld [$0043], sp
    nop

jr_01e_79a9:
    db $10
    ld b, e
    jr nz, jr_01e_79ad

jr_01e_79ad:
    jr jr_01e_79e1

    jr nz, @+$0a

    nop
    ld [hl-], a
    ld b, b
    ld [$4308], sp
    ld b, b
    ld [$4310], sp
    ld h, b
    ld [$3218], sp
    ld h, b

jr_01e_79c0:
    stop
    ld [hl+], a
    ld b, b
    db $10
    ld [$4023], sp
    db $10
    db $10
    inc hl
    ld h, b
    db $10
    jr jr_01e_79f1

    ld h, b
    ld [$0000], sp
    ld [hl-], a
    ld b, b
    nop
    ld [$4043], sp
    nop
    db $10
    ld b, e
    ld h, b
    nop
    jr jr_01e_7a12

    ld h, b

jr_01e_79e1:
    ld [$2200], sp
    ld b, b
    ld [$2308], sp
    ld b, b
    ld [$2310], sp
    ld h, b
    ld [$2218], sp
    ld h, b

jr_01e_79f1:
    inc b
    nop
    nop
    ld [hl+], a
    ld b, b
    nop
    ld [$4023], sp
    nop
    db $10
    inc hl
    ld h, b
    nop
    jr jr_01e_7a23

    ld h, b
    inc b
    ld [$4c18], sp
    jr nz, @+$22

    ld [$004b], sp
    jr nc, jr_01e_7a2d

    ld c, h
    nop
    jr jr_01e_7a41

    ld c, e

jr_01e_7a12:
    ld b, b
    inc b
    nop
    jr jr_01e_7a63

    nop
    jr nz, jr_01e_7a1a

jr_01e_7a1a:
    ld c, e
    ld b, b
    jr c, jr_01e_7a3e

    ld c, h
    jr nz, jr_01e_7a39

    jr c, jr_01e_7a6e

jr_01e_7a23:
    nop
    inc b
    db $10
    ld [$404a], sp
    jr nc, jr_01e_7a3b

    ld c, d
    nop

jr_01e_7a2d:
    jr z, @+$32

    ld c, d
    jr nz, @+$0a

    jr z, @+$4c

    ld h, b
    inc b
    ld [$4a00], sp

jr_01e_7a39:
    jr nz, jr_01e_7a73

jr_01e_7a3b:
    ld [$604a], sp

jr_01e_7a3e:
    jr nc, jr_01e_7a78

    ld c, d

jr_01e_7a41:
    ld b, b
    nop
    jr nc, jr_01e_7a8f

    nop
    ld [$3000], sp
    ld b, h
    nop
    nop
    jr c, jr_01e_7a92

    jr nz, @+$0a

    jr nc, @+$46

    ld b, b
    ld [$4438], sp
    ld h, b
    ld h, $0a
    ld b, h
    nop
    ld h, $12
    ld b, h
    jr nz, @+$30

    ld a, [bc]
    ld b, h
    ld b, b

jr_01e_7a63:
    ld l, $12
    ld b, h
    ld h, b
    inc c
    ld c, $22
    ld b, h
    nop
    ld c, $2a

jr_01e_7a6e:
    ld b, h
    jr nz, jr_01e_7a87

    ld [hl+], a
    ld b, h

jr_01e_7a73:
    ld b, b
    ld d, $2a
    ld b, h
    ld h, b

jr_01e_7a78:
    ld b, $32
    ld b, a
    nop
    nop
    jr c, jr_01e_7ac6

    nop
    ld a, [de]
    ld d, $44
    nop
    ld a, [de]
    ld e, $44

jr_01e_7a87:
    jr nz, jr_01e_7aab

    ld d, $44
    ld b, b
    ld [hl+], a
    ld e, $44

jr_01e_7a8f:
    ld h, b
    jr nc, @+$0a

jr_01e_7a92:
    ld b, a
    nop
    ld a, [hl+]
    ld c, $47
    nop
    ld [$3206], sp
    ld b, a
    nop
    nop
    jr c, jr_01e_7ae7

    nop
    ld [de], a
    ld h, $47
    nop
    inc c
    inc l
    ld b, a
    nop
    ld e, $1a

jr_01e_7aab:
    ld b, a
    nop
    jr @+$22

    ld b, a
    nop
    ld a, [hl+]
    ld c, $47
    nop
    inc h
    inc d
    ld b, a
    nop
    ld [$0000], sp
    dec [hl]
    jr nz, @+$0a

    nop
    dec [hl]
    ld b, b
    stop
    dec [hl]
    nop

jr_01e_7ac6:
    jr jr_01e_7ac8

jr_01e_7ac8:
    dec [hl]
    ld h, b
    nop
    ld b, b
    dec [hl]
    nop
    ld [$3540], sp
    ld h, b
    db $10
    ld b, b
    dec [hl]
    jr nz, jr_01e_7aef

    ld b, b
    dec [hl]
    ld b, b
    inc b
    nop
    nop
    ld a, [hl+]
    nop
    nop
    ld [$002b], sp
    ld [$3a00], sp
    nop

jr_01e_7ae7:
    ld [$3b08], sp
    nop
    inc bc
    nop
    nop
    ccf

jr_01e_7aef:
    nop
    nop
    ld [$003f], sp
    ld [$3f06], sp
    nop
    inc b
    nop
    nop
    ld c, $00
    nop
    ld [$200e], sp
    ld [$0f00], sp
    nop
    ld [$0f08], sp
    jr nz, jr_01e_7b0d

    stop
    inc l

jr_01e_7b0d:
    nop
    db $10
    ld [$003c], sp
    db $10
    db $10
    dec l
    nop
    ld b, $10
    db $10
    ld sp, $1000
    jr jr_01e_7b4f

    nop
    ld [$2c10], sp
    nop
    ld [$3c18], sp
    nop
    ld [$2d20], sp
    nop
    db $10
    jr nz, @+$2f

    nop
    add hl, bc
    ld [$3120], sp
    nop
    db $10
    jr nz, jr_01e_7b68

    nop
    ld [$3128], sp
    nop
    db $10
    jr z, jr_01e_7b70

    nop
    nop
    jr nz, jr_01e_7b6f

    nop
    nop
    jr z, jr_01e_7b83

    nop
    nop
    jr nc, jr_01e_7b78

    nop
    ld [$2d30], sp

jr_01e_7b4f:
    nop
    db $10
    jr nc, @+$2f

    nop
    rlca
    nop
    nop
    ld b, [hl]
    nop
    ld [$4702], sp
    nop
    db $10
    inc bc
    ld c, b
    nop
    jr jr_01e_7b67

    ld c, b
    nop
    jr nz, jr_01e_7b6c

jr_01e_7b67:
    ld c, b

jr_01e_7b68:
    nop
    jr z, jr_01e_7b70

    ld c, b

jr_01e_7b6c:
    nop
    jr nc, jr_01e_7b74

jr_01e_7b6f:
    ld c, b

jr_01e_7b70:
    nop
    ld bc, $0000

jr_01e_7b74:
    ld b, d
    nop
    inc c
    nop

jr_01e_7b78:
    nop
    inc h
    nop
    nop
    ld [$0025], sp
    ld [$3400], sp
    nop

jr_01e_7b83:
    nop
    db $10
    dec h
    jr nz, jr_01e_7b88

jr_01e_7b88:
    jr @+$26

    jr nz, @+$0a

    jr @+$36

    jr nz, @+$12

    nop
    inc [hl]
    ld b, b
    jr jr_01e_7b95

jr_01e_7b95:
    inc h
    ld b, b
    jr jr_01e_7ba1

    dec h
    ld b, b
    db $10
    jr jr_01e_7bd2

    ld h, b
    jr @+$12

jr_01e_7ba1:
    dec h
    ld h, b
    jr jr_01e_7bbd

    inc h
    ld h, b
    inc b
    nop
    nop
    ld b, e
    nop
    nop
    ld [$2043], sp
    ld [$4300], sp
    ld b, b
    ld [$4308], sp
    ld h, b
    ld [$0000], sp
    ld c, c
    nop

jr_01e_7bbd:
    ld [bc], a
    ld [$0049], sp
    jr jr_01e_7bc3

jr_01e_7bc3:
    ld c, c
    nop
    db $10
    db $10
    ld c, c
    nop
    ld [$4300], sp
    nop
    ld [$4308], sp
    jr nz, jr_01e_7be2

jr_01e_7bd2:
    nop
    ld b, e
    ld b, b
    db $10
    ld [$6043], sp
    dec bc
    nop
    nop
    ld c, c
    nop
    jr jr_01e_7be2

    ld c, c
    nop

jr_01e_7be2:
    inc d
    db $10
    ld c, c
    nop
    ld [$4300], sp
    nop
    nop
    ld [$2043], sp
    stop
    ld b, e
    ld b, b
    db $10
    ld [$6043], sp
    inc b
    ld [$0043], sp
    inc b
    db $10
    ld b, e
    jr nz, jr_01e_7c0b

    ld [$4043], sp
    inc c
    db $10
    ld b, e
    ld h, b
    rrca
    nop
    ld [$0049], sp

jr_01e_7c0b:
    ld [$4910], sp
    nop
    jr nz, jr_01e_7c11

jr_01e_7c11:
    ld c, c
    nop
    ld [$4300], sp
    nop
    ld [$4308], sp
    jr nz, jr_01e_7c2c

    nop
    ld b, e
    ld b, b
    db $10
    ld [$6043], sp
    db $10
    db $10
    ld b, e
    nop
    db $10
    jr jr_01e_7c6d

    jr nz, jr_01e_7c44

jr_01e_7c2c:
    db $10
    ld b, e
    ld b, b
    jr jr_01e_7c49

    ld b, e
    ld h, b
    jr nz, @+$0a

    ld b, e
    nop
    jr nz, jr_01e_7c49

    ld b, e
    jr nz, jr_01e_7c64

    ld [$4043], sp
    jr z, jr_01e_7c51

    ld b, e
    ld h, b
    inc b

jr_01e_7c44:
    nop
    nop
    ld c, c
    nop
    nop

jr_01e_7c49:
    db $10
    ld c, c
    nop
    nop
    jr nz, jr_01e_7c98

    nop
    nop

jr_01e_7c51:
    jr nc, jr_01e_7c9c

    nop
    ld [$0000], sp
    ld c, c
    nop
    nop
    db $10
    ld c, c
    nop
    nop
    jr nz, jr_01e_7ca9

    nop
    nop
    jr nc, jr_01e_7cad

jr_01e_7c64:
    nop
    ld [$4908], sp
    nop
    ld [$4918], sp
    nop

jr_01e_7c6d:
    ld [$4928], sp
    nop
    ld [$4938], sp
    nop
    inc c
    nop
    nop
    ld c, c
    nop
    nop
    db $10
    ld c, c
    nop
    nop
    jr nz, jr_01e_7cca

    nop
    nop
    jr nc, jr_01e_7cce

    nop
    ld [$4908], sp
    nop
    ld [$4918], sp
    nop
    ld [$4928], sp
    nop
    ld [$4938], sp
    nop
    stop

jr_01e_7c98:
    ld c, c
    nop
    db $10
    db $10

jr_01e_7c9c:
    ld c, c
    nop
    db $10
    jr nz, jr_01e_7cea

    nop
    db $10
    jr nc, @+$4b

    nop
    rrca
    nop
    nop

jr_01e_7ca9:
    ld c, c
    nop
    nop
    db $10

jr_01e_7cad:
    ld c, c
    nop
    nop
    jr nz, jr_01e_7cfb

    nop
    nop
    jr nc, jr_01e_7cff

    nop
    ld [$4908], sp
    nop
    ld [$4918], sp
    nop
    ld [$4928], sp
    nop
    ld [$4938], sp
    nop
    stop
    ld c, c

jr_01e_7cca:
    nop
    db $10
    db $10
    ld c, c

jr_01e_7cce:
    nop
    db $10
    jr nz, jr_01e_7d1b

    nop
    db $10
    jr nc, jr_01e_7d1f

    nop
    jr jr_01e_7ce1

    ld c, c
    nop
    jr @+$1a

    ld c, c
    nop
    jr jr_01e_7d09

jr_01e_7ce1:
    ld c, c
    nop
    jr jr_01e_7d1d

    ld c, c
    nop
    ld b, $10
    nop

jr_01e_7cea:
    ld h, $00
    db $10
    ld [$0027], sp
    ld [$2610], sp
    nop
    ld [$2718], sp
    nop
    nop
    jr nz, @+$28

jr_01e_7cfb:
    nop
    nop
    jr z, jr_01e_7d26

jr_01e_7cff:
    nop
    ld b, $18
    nop
    daa
    nop
    db $10
    ld [$0026], sp

jr_01e_7d09:
    db $10
    db $10
    daa
    nop
    ld [$2618], sp
    nop
    ld [$2720], sp
    nop
    nop
    jr z, jr_01e_7d3e

    nop
    ld b, $00

jr_01e_7d1b:
    nop
    inc e

jr_01e_7d1d:
    nop
    nop

jr_01e_7d1f:
    ld [$001d], sp
    stop
    inc e
    nop

jr_01e_7d26:
    db $10
    ld [$001d], sp
    jr nz, jr_01e_7d2c

jr_01e_7d2c:
    inc e
    nop
    jr nz, @+$0a

    dec e
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld [$1300], sp
    nop
    ld bc, $0000

jr_01e_7d3e:
    inc bc
    nop
    inc b
    nop
    nop
    inc bc
    nop
    nop
    ld [$2003], sp
    ld [$1300], sp
    nop
    ld [$1308], sp
    jr nz, jr_01e_7d53

    nop

jr_01e_7d53:
    nop
    ld b, $00
    ld [$0000], sp
    ld l, $00
    nop
    jr nc, jr_01e_7d8c

    jr nz, jr_01e_7d90

    nop
    ld l, $40
    jr nc, jr_01e_7d95

    ld l, $60
    nop
    jr jr_01e_7d99

    nop
    jr nc, @+$1a

    cpl
    ld b, b
    jr jr_01e_7d71

jr_01e_7d71:
    ld a, $00
    jr jr_01e_7da5

    ld a, $20
    ld [$0000], sp
    ld l, $00
    nop
    jr nz, jr_01e_7dad

    jr nz, jr_01e_7da1

    nop
    ld l, $40
    jr nz, jr_01e_7da6

    ld l, $60
    nop
    db $10
    cpl
    nop

jr_01e_7d8c:
    jr nz, jr_01e_7d9e

    cpl
    ld b, b

jr_01e_7d90:
    stop
    ld a, $00
    db $10

jr_01e_7d95:
    jr nz, jr_01e_7dd5

    jr nz, jr_01e_7da1

jr_01e_7d99:
    nop
    nop
    ld l, $00
    nop

jr_01e_7d9e:
    db $10
    ld l, $20

jr_01e_7da1:
    stop
    ld l, $40

jr_01e_7da5:
    db $10

jr_01e_7da6:
    db $10
    ld l, $60
    nop
    ld [$002f], sp

jr_01e_7dad:
    db $10
    ld [$402f], sp
    ld [$3e00], sp
    nop
    ld [$3e10], sp
    jr nz, jr_01e_7dbc

    nop
    nop

jr_01e_7dbc:
    ld e, $00
    nop
    ld [$001f], sp
    inc b
    nop
    nop
    ld c, b
    nop
    nop
    ld [$2048], sp
    ld [$1200], sp
    nop

jr_01e_7dcf:
    ld [$1208], sp
    jr nz, jr_01e_7dd8

    nop

jr_01e_7dd5:
    nop
    ld c, d
    nop

jr_01e_7dd8:
    nop
    ld [$0007], sp
    ld [$1600], sp

jr_01e_7ddf:
    nop
    ld [$1708], sp
    nop
    inc b

jr_01e_7de5:
    nop
    nop
    rlca
    jr nz, jr_01e_7dea

jr_01e_7dea:
    ld [$204a], sp
    ld [$1700], sp
    jr nz, jr_01e_7dfa

    ld [$2016], sp
    rlca
    nop
    db $10
    cpl
    nop

jr_01e_7dfa:
    ld bc, $2f08

jr_01e_7dfd:
    nop
    ld bc, $2f18
    nop
    ld [bc], a
    nop
    ld l, $00
    ld [bc], a
    jr nz, jr_01e_7e37

    jr nz, jr_01e_7e15

    nop
    ld a, $00
    ld a, [bc]
    jr nz, jr_01e_7e4f

    jr nz, jr_01e_7e17

    nop
    ld [bc], a

jr_01e_7e15:
    ld c, e
    nop

jr_01e_7e17:
    nop
    ld a, [bc]
    ld c, h
    nop
    ld [$4c00], sp
    ld h, b
    ld [$4b08], sp
    ld h, b
    ld bc, $0000
    ld c, l
    nop
    ld bc, $0000
    ld c, [hl]
    nop
    db $10
    ld l, b
    db $10
    ld [hl], b
    db $10
    ld a, b
    db $10
    add b
    db $10
    adc b

jr_01e_7e37:
    db $10
    sub b
    db $10
    sbc b
    jr jr_01e_7ea5

    jr jr_01e_7eaf

    jr @+$7a

    inc [hl]
    jr z, @+$1a

    add b
    jr jr_01e_7dcf

    jr @-$66

    jr nz, jr_01e_7eb3

    jr nz, jr_01e_7ebd

    jr nz, jr_01e_7ec7

jr_01e_7e4f:
    jr nz, @-$7e

    jr nz, @-$76

    jr nz, jr_01e_7de5

    jr nz, @-$66

    jr z, jr_01e_7ec1

    jr z, jr_01e_7ecb

    jr z, jr_01e_7ed5

    jr z, jr_01e_7ddf

    jr z, @-$76

    jr nc, jr_01e_7ecb

    jr nc, jr_01e_7ed5

    jr nc, jr_01e_7edf

    jr nc, @-$7e

    jr nc, @-$6e

    jr nc, @-$66

    jr c, jr_01e_7ed7

    jr c, jr_01e_7ee9

    jr c, @-$7e

    jr c, jr_01e_7dfd

    ld b, b
    ld l, b
    ld b, b
    ld [hl], b
    ld b, b
    ld a, b
    ld b, b
    add b
    ld b, b
    adc b
    ld b, b
    sbc b
    db $10
    ld h, b
    jr jr_01e_7ee5

    jr nz, jr_01e_7ee7

    jr z, jr_01e_7ee9

    jr nc, jr_01e_7eeb

    ld b, b
    ld h, b
    ld e, b
    jr z, jr_01e_7ed3

    jr c, jr_01e_7ec5

    ld c, b
    jr nz, jr_01e_7eed

    ld [hl-], a
    ld a, b
    ld e, b
    ld e, b
    inc l
    ld l, h
    inc [hl]
    add b
    ld c, b
    ld [hl], b
    ld b, d
    ld [hl], $38
    ld b, h
    ld b, b
    ld d, d

jr_01e_7ea5:
    ld c, b
    ld h, b
    ld a, $6e
    jr z, jr_01e_7f27

    jr z, jr_01e_7e37

    ld d, b
    inc a

jr_01e_7eaf:
    ld c, b
    ld d, b
    ld b, b
    ld h, h

jr_01e_7eb3:
    jr c, jr_01e_7eed

    ld d, b
    jr nc, jr_01e_7f08

    jr c, @+$52

    ld b, b
    ld d, b
    ld c, b

jr_01e_7ebd:
    ld d, b
    ld d, b
    ld c, b
    ld e, b

jr_01e_7ec1:
    ld d, b
    ld b, h
    ld c, b
    ld c, b

jr_01e_7ec5:
    ld c, b
    ld c, h

jr_01e_7ec7:
    ld b, b
    ld d, b
    ld b, b
    ld d, h

jr_01e_7ecb:
    jr c, jr_01e_7f25

    jr c, jr_01e_7f2b

    jr nc, jr_01e_7f35

    ld c, b
    ld b, b

jr_01e_7ed3:
    ld c, b
    add hl, sp

jr_01e_7ed5:
    inc h
    adc b

jr_01e_7ed7:
    inc h
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    adc b
    inc [hl]
    ld l, b

jr_01e_7edf:
    inc [hl]
    adc b
    ld l, b
    ld d, b
    ld h, b
    ld d, b

jr_01e_7ee5:
    ld l, b
    ld h, b

jr_01e_7ee7:
    ld e, b
    ld d, b

jr_01e_7ee9:
    ld h, b
    ld h, b

jr_01e_7eeb:
    ld l, b
    ld b, b

jr_01e_7eed:
    ld b, b
    ld b, b
    jr c, @+$42

    dec bc
    ld h, b
    ld b, h
    ld c, b
    ld b, b
    inc d
    ld c, b
    inc e
    ld d, b
    inc h
    ld c, h
    inc h
    db $10
    ld h, d
    ld [de], a

Call_01e_7f00:
    ld h, d
    ld [de], a
    ld h, b
    jr nz, jr_01e_7f77

    ld [hl+], a
    ld [hl], d
    ld [hl+], a

jr_01e_7f08:
    ld [hl], b
    jr z, jr_01e_7f6d

    ld d, b
    ld a, [bc]
    ld d, d
    ld a, [bc]
    jr c, jr_01e_7f41

    ld b, b
    ld c, b
    jr nc, jr_01e_7f5d

    ld b, b
    jr nc, @+$32

    ld b, b
    jr c, jr_01e_7f63

    ld b, b
    ld c, d
    ld c, b
    ld c, e
    ld d, b
    ld c, h
    ld e, b
    ld c, l
    ld h, b
    ld c, l

jr_01e_7f25:
    ld l, b
    ld c, l

jr_01e_7f27:
    jr c, jr_01e_7f39

    ld d, b
    db $10

jr_01e_7f2b:
    jr c, @+$2a

    ld c, b
    jr @+$42

    jr nz, jr_01e_7f7a

    jr nz, jr_01e_7f74

    inc a

jr_01e_7f35:
    jr c, jr_01e_7f87

    jr z, jr_01e_7f9d

jr_01e_7f39:
    inc e
    sub b
    inc h
    add b
    inc l
    ld [hl], b
    jr nc, jr_01e_7f79

jr_01e_7f41:
    db $10
    ld d, b
    inc a
    ld b, b
    ld b, b
    ld e, b
    jr nc, jr_01e_7fa1

    ld e, b
    ld c, b
    ld d, b
    ld e, b
    ld c, b
    ld l, b
    ld b, b
    jr jr_01e_7f7a

    ld e, b
    ld b, b
    jr c, jr_01e_7f9e

    jr c, @+$0a

    ld [hl], b
    ld b, h
    inc e
    inc a
    ld e, b

jr_01e_7f5d:
    jr c, jr_01e_7fbf

    ld [$3860], sp
    ld [hl], b

jr_01e_7f63:
    jr c, jr_01e_7fd1

    jr c, jr_01e_7fcb

    inc e
    ld [hl], h
    ld l, $74
    inc [hl]
    ld d, b

jr_01e_7f6d:
    cpl
    ld h, b
    ld sp, $4c70
    jr nc, jr_01e_7faf

jr_01e_7f74:
    ld b, b
    dec l
    ld d, b

jr_01e_7f77:
    ld h, $60

jr_01e_7f79:
    dec l

jr_01e_7f7a:
    ld [hl], b
    jr z, jr_01e_7fcd

    ld e, $60
    add hl, hl
    ld [hl], b
    ld d, $60
    inc d
    ld e, b
    ld [de], a
    ld d, h

jr_01e_7f87:
    inc d
    ld d, b
    jr jr_01e_7fd7

    inc e
    ld c, b
    ld c, b
    jr z, jr_01e_7f90

jr_01e_7f90:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_7f9d:
    nop

jr_01e_7f9e:
    nop
    nop
    nop

jr_01e_7fa1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_7faf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_7fbf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_7fcb:
    nop
    nop

jr_01e_7fcd:
    nop
    nop
    nop
    nop

jr_01e_7fd1:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_7fd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
