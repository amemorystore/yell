; disasSembly of "yell.gbc"
SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    nop
    add hl, bc
    ld a, [bc]
    ld d, c
    ld b, b
    rst $28
    ld b, b
    db $eb
    ld b, b
    inc bc
    ld b, $0e
    ld b, c
    add sp, -$3a
    rrca
    add hl, de
    ld [$2031], sp
    rst $00
    ld a, [bc]
    xor h
    ld c, d
    push af
    add $0f
    inc d
    ld [$0300], sp
    rst $00
    ld [hl+], a
    ld b, b
    rrca
    dec b
    add hl, bc
    ld [de], a
    ld [bc], a
    ld c, h
    ld a, [bc]
    ld [de], a
    ld [bc], a
    ld c, h
    add hl, bc
    dec bc
    nop
    ld c, h
    ld a, [bc]
    dec bc
    nop
    ld c, h
    dec c
    dec b
    nop
    ld c, l
    ld bc, $030d
    ld bc, $4200
    rst $00
    add hl, bc
    ld [de], a
    ld d, d
    rst $00
    ld a, [bc]
    ld [de], a
    ld a, $c7
    add hl, bc
    dec bc
    ld c, [hl]
    rst $00
    ld a, [bc]
    dec bc
    ld e, e
    rst $00
    dec c
    dec b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld sp, $3131
    ld b, a
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, a
    ld a, e
    rrca
    ld sp, $4731
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld e, a
    ld a, e
    rrca
    ld a, [de]
    ld e, h
    ld c, e
    ld [hl], h
    ld sp, $3131
    ld e, a
    ld a, e
    rrca
    ld sp, $3131
    ld sp, $205f
    dec c
    ld hl, $0f01
    ld a, [de]
    jr nz, jr_012_40a8

    ld e, h
    ld a, [de]
    scf
    ld a, l
    ld a, [hl]
    ld [hl], a
    rrca
    ld [$7e7c], sp
    ld sp, $3131
    ld sp, $7b5f
    rrca
    ld sp, $3131
    ld sp, $3131
    ld sp, $7b5f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca

jr_012_40a8:
    rrca
    rrca
    rrca
    jr nz, jr_012_40bd

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

jr_012_40bd:
    rrca
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $1c
    rra
    rra
    dec e
    ld [hl-], a
    ld hl, $3121
    ld h, [hl]
    nop
    nop
    ld h, a
    add hl, hl
    dec h
    ld h, $1e
    jr @+$20

    jr nc, jr_012_40fe

    inc [hl]
    inc sp
    inc sp
    dec [hl]
    ld [hl], $00
    nop
    scf
    jr c, @+$3d

    jr c, jr_012_4122

    ld a, [hl-]
    nop
    nop
    add hl, sp
    call Call_000_3c29
    ret


    pop af
    ld b, b
    rla
    ret c

    ld [hl], h
    jr z, @+$52

    ld bc, $0404
    ld b, a
    ld b, c
    ld b, $41
    ld [bc], a

jr_012_40fe:
    ld b, c
    nop
    ld [hl+], a
    ld b, c
    call Call_000_3c29
    ret


    ld a, [bc]
    ld b, c
    ld d, $41
    ld [$7321], sp
    ld e, e
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$c421], sp
    ld e, e
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


jr_012_4122:
    ld a, [bc]
    inc bc
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    ld bc, $0007
    ld h, $01
    ld bc, $0203
    ld bc, $0833
    add hl, bc
    rst $38
    jp nc, $1201

    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    or $c6
    ld bc, $0407
    add hl, bc
    dec b
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0f02
    rrca
    dec bc
    rrca
    rrca
    ld [de], a
    inc b
    ld a, [bc]
    add hl, hl
    ld b, d
    ld h, [hl]
    ld b, c
    ld h, e
    ld b, c
    nop
    bit 0, c
    jp Jump_000_3c29


    adc b
    ld b, c
    sub h
    ld b, c
    sbc c
    ld b, c
    sbc [hl]
    ld b, c
    and e
    ld b, c
    xor b
    ld b, c
    xor l
    ld b, c
    xor b
    ld b, c
    or d
    ld b, c
    xor b
    ld b, c
    or a
    ld b, c
    xor b
    ld b, c
    cp h
    ld b, c
    pop bc
    ld b, c
    add $41
    add $41
    add $41
    ld [$3021], sp
    ld e, [hl]
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    rla
    adc e
    ld h, c
    dec hl
    ld d, b
    rla
    pop af
    ld h, c
    dec hl
    ld d, b
    rla
    add hl, sp
    ld h, d
    dec hl
    ld d, b
    rla
    sbc c
    ld h, d
    dec hl
    ld d, b
    rla
    rst $10
    ld h, d
    dec hl
    ld d, b
    rla
    push hl
    ld h, d
    dec hl
    ld d, b
    rla
    rlca
    ld h, e
    dec hl
    ld d, b
    rla
    jr z, jr_012_421d

    dec hl
    ld d, b
    rla
    ld c, c
    ld h, e
    dec hl
    ld d, b
    rla
    ld l, b
    ld h, e
    dec hl
    ld d, b
    rla
    ld a, d
    ld h, e
    dec hl
    ld d, b
    rrca
    inc bc
    ld bc, $000c
    ld a, l
    ld bc, $0110
    ld a, e
    ld bc, $0001
    ld a, a
    inc c
    inc b
    ld [bc], a
    ld b, $04
    inc bc
    rlca
    inc b
    dec b
    ld [$0604], sp
    add hl, bc
    ld b, $02
    ld a, [bc]
    ld b, $03
    dec bc
    ld b, $05
    inc c
    ld b, $06
    dec c
    ld bc, $0e0e
    ld bc, $0f04
    ld bc, $1006
    ld bc, $110a
    dec b
    ld h, $09
    inc d
    rst $38
    rst $38
    ld bc, $0a37
    rrca
    rst $38
    db $d3
    ld [bc], a
    scf
    ld b, $0b
    rst $38
    ret nc

    inc bc
    scf
    ld b, $0c
    rst $38
    ret nc

    inc b
    dec [hl]
    add hl, bc
    ld b, $ff
    pop de
    dec b

jr_012_421d:
    rst $38
    add $01
    inc c
    ld bc, $01c7
    db $10
    ld sp, hl
    add $01
    ld bc, $0d0c
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    dec h
    inc bc
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [de], a
    dec bc
    inc b
    dec b
    ld b, $0b
    dec bc
    db $10
    ld de, $1111
    dec bc
    inc b
    dec b
    ld b, $0b
    dec bc
    inc d
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    inc b
    ld a, [bc]
    xor b
    ld b, d
    ld h, b
    ld b, d
    ld e, l
    ld b, d
    nop
    ld [hl], a
    ld b, d
    jp Jump_000_3c29


    adc c
    inc hl
    ld l, b
    ld b, d
    ld l, l
    ld b, d
    ld [hl], d
    ld b, d
    rla
    ld c, e
    ld h, h
    dec hl
    ld d, b
    rla
    and l
    ld h, h
    dec hl
    ld d, b
    rla
    cp $64
    dec hl
    ld d, b
    rrca
    inc bc
    ld bc, $000c
    ld a, h
    ld bc, $0110
    adc b
    ld bc, $0001
    ld a, a
    ld bc, $0e01
    inc b
    inc bc
    ld h, $0b
    add hl, bc
    rst $38
    rst $38
    ld bc, $090c
    inc de
    cp $02
    ld [bc], a
    inc b
    ld b, $09
    cp $02
    inc bc
    rst $38
    add $01
    inc c
    ld bc, $01c7
    db $10
    ld sp, hl
    add $01
    ld bc, $0d0c
    ld bc, $0101
    ld bc, $2503
    ld [bc], a
    ld bc, $1a0b
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec bc
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec bc
    dec bc
    ld e, $1e
    ld e, $1e
    dec bc
    ld e, $1e
    ld e, $0b
    ld de, $1111
    ld de, $0b27
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [de], a
    inc b
    ld a, [bc]
    rst $10
    ld b, h
    ld h, [hl]
    ld b, h
    call c, $0042
    or e
    ld b, h
    call Call_000_3c29
    ret


    xor a
    ld [$cd37], a
    ld de, $cc5b
    ld hl, $4310

jr_012_42ea:
    ld a, [hl+]
    and a
    jr z, jr_012_430c

    push hl
    push de
    ld [$d11d], a
    ld b, a
    ld a, $1c
    call Call_000_3eb4
    pop de
    pop hl
    ld a, b
    and a
    jr z, jr_012_42ea

    ld a, [$d11d]
    ld [de], a
    inc de
    push hl
    ld hl, $cd37
    inc [hl]
    pop hl
    jr jr_012_42ea

jr_012_430c:
    ld a, $ff
    ld [de], a
    ret


    inc a
    dec a
    ld a, $00

Call_012_4314:
    ld hl, $d72f
    set 6, [hl]
    ld hl, $43f9
    call Call_000_3c36
    xor a
    ld [$cc26], a
    ld a, $03
    ld [$cc29], a
    ld a, [$cd37]
    dec a
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld a, [$cd37]
    dec a
    ld bc, $0002
    ld hl, $0003
    call Call_000_3a74
    dec l
    ld b, l
    ld c, $0c
    ld hl, $c3a0
    call Call_000_16f0
    call Call_000_231c
    call Call_012_443d
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3aab
    bit 1, a
    ret nz

    ld hl, $cc5b
    ld a, [$cc26]
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    ldh [$db], a
    cp $3c
    jr z, jr_012_43be

    cp $3d
    jr z, jr_012_439a

    ld a, [$d777]
    bit 6, a
    jr nz, jr_012_43e9

    ld hl, $4420
    call Call_000_3c36
    call Call_012_43f0
    ld bc, $f901
    call Call_000_3e3f
    jr nc, jr_012_43e2

    ld hl, $4426
    call Call_000_3c36
    ld hl, $d777
    set 6, [hl]
    ret


jr_012_439a:
    ld a, [$d777]
    bit 5, a
    jr nz, jr_012_43e9

    ld hl, $440f
    call Call_000_3c36
    call Call_012_43f0
    ld bc, $f801
    call Call_000_3e3f
    jr nc, jr_012_43e2

    ld hl, $4415
    call Call_000_3c36
    ld hl, $d777
    set 5, [hl]
    ret


jr_012_43be:
    ld a, [$d777]
    bit 4, a
    jr nz, jr_012_43e9

    ld hl, $43fe
    call Call_000_3c36
    call Call_012_43f0
    ld bc, $d501
    call Call_000_3e3f
    jr nc, jr_012_43e2

    ld hl, $4404
    call Call_000_3c36
    ld hl, $d777
    set 4, [hl]
    ret


jr_012_43e2:
    ld hl, $4431
    call Call_000_3c36
    ret


jr_012_43e9:
    ld hl, $4437
    call Call_000_3c36
    ret


Call_012_43f0:
    ld b, $05
    ld hl, $7dbb
    call Call_000_3e84
    ret


    rla
    ld e, l
    ld h, l
    dec hl
    ld d, b
    rla
    ld [hl], h
    ld h, l
    dec hl
    dec c
    ld d, b
    rla
    xor [hl]
    ld h, l
    dec hl
    dec bc
    rla
    jp nz, Jump_000_2b65

    dec c
    ld d, b
    rla
    ld [bc], a
    ld h, [hl]
    dec hl
    dec c
    ld d, b
    rla
    add hl, sp
    ld h, [hl]
    dec hl
    dec bc
    rla
    ld c, l
    ld h, [hl]
    dec hl
    dec c
    ld d, b
    rla
    ld l, e
    ld h, [hl]
    dec hl
    dec c
    ld d, b
    rla
    and d
    ld h, [hl]
    dec hl
    dec bc
    rla
    or l
    ld h, [hl]
    dec hl
    dec c
    ld d, b
    rla
    jp nc, $2b66

    dec c
    ld d, b
    rla
    ld a, [c]
    ld h, [hl]
    dec hl
    dec c
    ld d, b

Call_012_443d:
    ld hl, $cc5b
    xor a
    ldh [$db], a

jr_012_4443:
    ld a, [hl+]
    cp $ff
    ret z

    push hl
    ld [$d11d], a
    call Call_000_2ec4
    ld hl, $c3ca
    ldh a, [$db]
    ld bc, $0028
    call Call_000_3a74
    ld de, $cd6d
    call Call_000_1723
    ld hl, $ffdb
    inc [hl]
    pop hl
    jr jr_012_4443

    ld [hl], d
    ld b, h
    ld [hl], a
    ld b, h
    xor l
    ld b, h
    xor l
    ld b, h
    xor l
    ld b, h
    xor [hl]
    ld b, h
    rla
    inc e
    ld h, a
    dec hl
    ld d, b
    ld [$e0cd], sp
    ld b, d
    ld a, [$cd37]
    and a
    jr z, jr_012_449a

    ld a, $01
    ld [$cc3c], a
    ld hl, $44a8
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_012_44a0

    call Call_012_4314
    jr jr_012_44a0

jr_012_449a:
    ld hl, $44a3
    call Call_000_3c36

jr_012_44a0:
    jp Jump_000_23d2


    rla
    ld [hl], e
    ld h, a
    dec hl
    ld d, b
    rla
    sbc e
    ld h, a
    dec hl
    ld d, b
    push af
    rla
    push de
    ld h, a
    dec hl
    ld d, b
    ld b, d
    ld bc, $0f02
    nop
    adc b
    inc b
    ld bc, $030a
    ld bc, $040b
    ld [bc], a
    inc c
    dec b
    ld [bc], a
    dec c
    ld b, $02
    inc c
    ld [$ff0e], sp
    jp nc, $0801

    add hl, bc
    add hl, bc
    cp $00
    ld [bc], a
    db $10
    rst $00
    ld [bc], a
    rrca
    ld [hl], $1c
    inc e
    inc e
    inc e
    dec de
    dec sp
    ccf
    ccf
    ld b, c
    ld [hl], $21
    dec e
    rra
    jr nz, jr_012_4507

    inc a
    ld b, e
    ld a, [hl+]
    ld b, c
    ld [hl], $20
    jr nz, jr_012_4510

    dec e
    rra
    jr nz, jr_012_4513

    jr nz, jr_012_4536

    ld [hl], $37
    scf
    scf
    scf
    scf
    scf
    scf
    scf
    ld b, c
    ld [de], a
    ld [bc], a
    ld [bc], a
    adc a
    ld b, l
    ld h, a
    ld b, l
    dec bc

jr_012_4507:
    ld b, l
    nop
    ld a, b
    ld b, l
    ld hl, $d125
    bit 5, [hl]

jr_012_4510:
    res 5, [hl]
    push hl

jr_012_4513:
    call nz, Call_012_4527
    pop hl
    bit 7, [hl]
    res 7, [hl]
    call nz, Call_012_455f
    xor a
    ld [$cf0c], a
    inc a
    ld [$cc3c], a
    ret


Call_012_4527:
    ld hl, $d3ae
    ld a, [$d73a]
    ld b, a
    ld a, [$d73b]
    ld c, a
    call Call_012_4535

Call_012_4535:
    inc hl

jr_012_4536:
    inc hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


    ld hl, $454e
    call Call_000_293d
    ld hl, $4555
    ld de, $cc5b
    ld bc, $000a
    jp Jump_000_00b1


    dec b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rst $38
    dec b
    ld a, d
    ld [bc], a
    ld a, e
    ld [bc], a
    ld a, h
    ld [bc], a
    ld a, l
    ld [bc], a
    adc b

Call_012_455f:
    ld b, $1d
    ld hl, $5f07
    jp Jump_000_3e84


    ld l, c
    ld b, l
    ld [$3ccd], sp
    ld b, l
    ld hl, $4555
    ld a, $61
    call Call_000_3eb4
    jp Jump_000_23d2


    rrca
    ld [bc], a
    inc bc
    ld bc, $7a05
    inc bc
    ld [bc], a
    dec b
    ld a, d
    ld bc, $0300
    ld bc, $f900
    add $03
    ld bc, $c6fa
    inc bc
    ld [bc], a
    ld a, [hl+]
    dec hl
    jr z, @+$2b

    inc de
    ld b, $04
    ld b, d
    ld b, [hl]
    and e
    ld b, l
    sbc a
    ld b, l
    nop
    ei
    ld b, l
    call Call_000_3c29
    ret


    xor l
    ld b, l
    cp d
    ld b, l
    call c, $e945
    ld b, l
    or $45
    rla
    ld [hl], e
    ld l, b
    dec hl
    ld [$4d3e], sp
    call Call_000_118b
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5e70
    call Call_000_3e84
    ld a, [$d46f]
    cp $fb
    jr c, jr_012_45d9

    ld c, $32
    call Call_000_372f
    ld e, $16
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84

jr_012_45d9:
    jp Jump_000_23d2


    rla
    add e
    ld l, b
    dec hl
    ld [$043e], sp
    call Call_000_118b
    jp Jump_000_23d2


    rla
    sbc h
    ld l, b
    dec hl
    ld [$0f3e], sp
    call Call_000_118b
    jp Jump_000_23d2


    rla
    or d
    ld l, b
    dec hl
    ld d, b
    rrca
    dec b
    dec bc
    inc b
    ld [bc], a
    rst $38
    dec bc
    dec b
    ld [bc], a
    rst $38
    nop
    inc b
    inc b
    rst $38
    ld bc, $0107
    add c
    ld bc, $0202
    add c
    ld bc, $0409
    dec b
    inc b
    dec b
    add hl, bc
    inc b
    rst $38
    db $d3
    ld bc, $0928
    dec b
    rst $38
    ret nc

    ld [bc], a
    jr c, jr_012_4630

    dec b
    cp $02
    inc bc
    dec b
    ld [$fe08], sp
    ld bc, $2704
    rst $00

jr_012_4630:
    dec bc
    inc b
    daa
    rst $00
    dec bc
    dec b
    push af
    add $00
    inc b
    or $c6
    ld bc, $f407
    add $01
    ld [bc], a
    rrca
    ld bc, $0302
    inc h
    ld a, [hl+]
    ld b, $07
    dec bc
    dec bc
    inc b
    rlca
    db $10
    dec bc
    ld [$0c07], sp
    inc c
    dec c
    rlca
    rlca
    rlca
    ld a, $07
    inc de
    ld b, $04
    sbc b
    ld b, [hl]
    ld l, d
    ld b, [hl]
    ld h, [hl]
    ld b, [hl]
    nop
    ld [hl], c
    ld b, [hl]
    call Call_000_3c29
    ret


    ld l, h
    ld b, [hl]
    rla
    jr c, jr_012_46d9

    dec hl
    ld d, b
    rrca
    inc b
    ld bc, $0006
    add d
    ld bc, $0307
    add b
    ld bc, $0402
    add b
    ld bc, $0304
    add d
    ld bc, $0409
    ld bc, $f600
    add $01
    ld b, $f6
    add $01
    rlca
    db $f4
    add $01
    ld [bc], a
    push af
    add $01
    inc b
    rrca
    inc d
    dec d
    add hl, de
    ld de, $1a11
    rlca
    daa
    dec bc
    inc b
    rlca
    dec hl
    ld [de], a
    inc de
    rlca
    cpl
    inc c
    dec c
    rlca
    rlca
    rlca
    rlca
    rlca
    inc de
    ld b, $04
    ld c, c
    ld c, b
    call z, $bc46
    ld b, [hl]
    nop
    ld bc, $cd48
    add hl, hl
    inc a
    ret


    ld hl, $d2f6
    ld b, $13
    call Call_000_2a81
    ld a, [$d11d]
    ret


    call c, $fa46
    ld b, [hl]
    ld [hl], b
    ld b, a
    adc [hl]
    ld b, a
    pop de
    ld b, a
    db $dd
    ld b, a
    jp hl


jr_012_46d9:
    ld b, a
    push af
    ld b, a
    ld [$c0cd], sp
    ld b, [hl]
    cp $96
    ld hl, $46f5
    jr nc, jr_012_46ea

    ld hl, $46f0

jr_012_46ea:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld d, c
    ld l, d
    dec hl
    ld d, b
    rla
    ld l, c
    ld l, d
    dec hl
    ld d, b
    ld [$c0cd], sp
    ld b, [hl]
    cp $96
    jr nc, jr_012_4707

    ld hl, $4757
    jr jr_012_4751

jr_012_4707:
    ld hl, $475c
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_012_474e

    call Call_000_36ec
    xor a
    ld [$cfca], a
    ld hl, $d72f
    set 6, [hl]
    ld hl, $4cb1
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
    ld hl, $476b
    ldh a, [$db]
    and a
    jr nz, jr_012_4751

    ld hl, $4766
    jr jr_012_4751

jr_012_474e:
    ld hl, $4761

jr_012_4751:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    cp d
    ld l, d
    dec hl
    ld d, b
    rla
    sbc $6a
    dec hl
    ld d, b
    rla
    inc a
    ld l, e
    dec hl
    ld d, b
    rla
    ld l, [hl]
    ld l, e
    dec hl
    ld d, b
    rla
    ld a, c
    ld l, e
    dec hl
    ld d, b
    ld [$c0cd], sp
    ld b, [hl]
    cp $96
    ld hl, $4789
    jr nc, jr_012_477e

    ld hl, $4784

jr_012_477e:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    adc [hl]
    ld l, e
    dec hl
    ld d, b
    rla
    add sp, $6b
    dec hl
    ld d, b
    ld [$c0cd], sp
    ld b, [hl]
    cp $96
    jr nc, jr_012_479b

    ld hl, $47b1
    jr jr_012_47ab

jr_012_479b:
    ld hl, $47b6
    call Call_000_3c36
    call Call_000_3ddb
    xor a
    ld [$cc3c], a
    ld hl, $47cc

jr_012_47ab:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    daa
    ld l, h
    dec hl
    ld d, b
    rla
    sbc d
    ld l, h
    dec hl
    ld b, $08
    ld hl, $6714
    ld b, $15
    call Call_000_3e84
    ld a, $01
    ld [$cc3c], a
    jp Jump_000_23d2


    rla
    jp c, $2b6c

    ld d, b
    ld [$3c06], sp
    ld hl, $5ef3
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5eff
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5f0b
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5f17
    call Call_000_3e84
    jp Jump_000_23d2


    rrca
    inc b
    ld bc, $0006

Jump_012_4806:
    add c
    ld bc, $0007
    add e
    ld bc, $0102
    add e
    ld bc, $0304
    add c
    inc b
    inc bc
    ld bc, $0305
    inc b
    ld b, $06
    ld bc, $0907
    inc b
    ld [$1504], sp
    ld [$ff04], sp
    pop de
    ld bc, $0826
    rlca
    rst $38
    pop de
    ld [bc], a
    inc c
    dec bc
    inc b
    rst $38
    pop de
    inc bc
    inc l
    rlca
    ld b, $ff
    rst $38
    inc b
    or $c6
    ld bc, $f606
    add $01
    rlca
    db $f4
    add $01
    ld [bc], a
    push af
    add $01
    inc b
    rrca
    ld d, $17
    jr jr_012_485c

    jr z, jr_012_4879

    rlca
    inc hl
    inc l
    dec l
    rlca
    ld a, [bc]
    dec bc
    ld [$0c07], sp
    inc c
    dec c

jr_012_485c:
    rlca
    rlca
    rlca
    rlca
    rlca
    inc de
    ld b, $04
    sub a
    ld c, b
    ld [hl], c
    ld c, b
    ld l, l
    ld c, b
    nop
    ld a, b
    ld c, b
    call Call_000_3c29
    ret


    ld [hl], e
    ld c, b
    rla
    add $6d
    dec hl
    ld d, b
    add hl, bc

jr_012_4879:
    inc bc
    ld bc, $0106
    add d
    ld bc, $0202
    add d
    rlca
    ld [bc], a
    nop
    add h
    ld bc, $0307
    ld bc, $f600
    add $01
    ld b, $f4
    add $01
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld b, l
    dec sp
    inc e
    dec de
    dec a
    rlca
    dec e
    dec e
    ld hl, $1d22
    dec e
    dec h
    ld h, $1d
    dec e
    inc sp
    rra
    ld e, $1d
    jr nz, @+$21

    rra
    ld e, $06
    inc b
    rlca
    xor e
    ld b, b
    pop bc
    ld c, b
    cp e
    ld c, b
    nop
    db $e3
    ld c, b
    call Call_000_2156
    jp Jump_000_3c29


    call z, $cd48
    ld c, b
    jp nc, $cb48

    ld c, b
    rst $10
    ld c, b
    or $ff
    rla
    ld b, [hl]
    ld l, [hl]
    dec hl
    ld d, b
    rla
    add d
    ld l, [hl]
    dec hl
    ld d, b
    ld [$1221], sp
    ld c, a
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    nop
    ld [bc], a
    rlca
    inc bc
    dec b
    rst $38
    rlca
    inc b
    dec b
    rst $38
    nop
    dec b
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0710
    dec bc
    rst $38
    ret nc

    ld [bc], a
    rrca
    add hl, bc
    ld c, $fe
    nop
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
    rlca
    add hl, bc
    dec b
    sbc e
    ld c, e
    cp l
    ld c, c
    ld hl, $0049
    ld b, a
    ld c, e
    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_012_493e
    call Call_000_3c29
    ld hl, $49d3
    ld de, $4965
    ld a, [$d5fe]
    call Call_000_30fc
    ld [$d5fe], a
    ret


Call_012_493e:
    ld hl, $4947
    ld de, $4954
    jp Jump_000_311b


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
    add h
    sub c
    adc b
    adc d
    add b
    ld d, b

Jump_012_495a:
    xor a
    ld [$cd6b], a
    ld [$d5fe], a
    ld [$da38], a
    ret


    or l
    ld sp, $31e8
    ld de, $6d32
    ld c, c
    ld a, [$d056]
    cp $ff
    jp z, Jump_012_495a

    ld a, $f0
    ld [$cd6b], a

Call_012_497a:
    ld a, $09
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d77b
    set 1, [hl]
    ld bc, $dd01
    call Call_000_3e3f
    jr nc, jr_012_499c

    ld a, $0a
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d77b
    set 0, [hl]
    jr jr_012_49a3

jr_012_499c:
    ld a, $0b
    ldh [$8c], a
    call Call_000_2817

jr_012_49a3:
    ld hl, $d355
    set 3, [hl]
    ld hl, $d729
    set 3, [hl]
    ld a, [$d77b]
    or $fc
    ld [$d77b], a
    ld hl, $d77c
    set 0, [hl]
    jp Jump_012_495a


    jr z, jr_012_4a09

    sbc b
    ld c, d
    or c
    ld c, d
    jp z, $e34a

    ld c, d
    db $fc
    ld c, d
    dec d
    ld c, e
    ld l, $4b
    add h
    ld c, d
    adc c
    ld c, d
    sub e
    ld c, d
    ld [bc], a
    jr nz, jr_012_4a51

    rst $10
    and d
    ld c, d
    xor h
    ld c, d
    and a
    ld c, d
    and a
    ld c, d
    inc bc
    jr nz, @+$7d

    rst $10
    cp e
    ld c, d
    push bc
    ld c, d
    ret nz

    ld c, d
    ret nz

    ld c, d
    inc b
    ld b, b
    ld a, e
    rst $10
    call nc, $de4a
    ld c, d
    reti


    ld c, d
    reti


    ld c, d
    dec b
    ld b, b
    ld a, e
    rst $10
    db $ed
    ld c, d
    rst $30
    ld c, d
    ld a, [c]
    ld c, d
    ld a, [c]
    ld c, d
    ld b, $20
    ld a, e
    rst $10
    ld b, $4b

jr_012_4a09:
    db $10
    ld c, e
    dec bc
    ld c, e
    dec bc
    ld c, e
    rlca
    jr nz, jr_012_4a8d

    rst $10
    rra
    ld c, e
    add hl, hl
    ld c, e
    inc h
    ld c, e
    inc h
    ld c, e
    ld [$7b30], sp
    rst $10
    jr c, jr_012_4a6c

    ld b, d
    ld c, e
    dec a
    ld c, e
    dec a
    ld c, e
    rst $38
    ld [$7bfa], sp
    rst $10
    bit 1, a
    jr z, jr_012_4a44

    bit 0, a
    jr nz, jr_012_4a3c

    call z, Call_012_497a
    call Call_000_2fde
    jr jr_012_4a72

jr_012_4a3c:
    ld hl, $4a7f
    call Call_000_3c36
    jr jr_012_4a72

jr_012_4a44:
    ld hl, $4a75
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]

jr_012_4a51:
    ld hl, $4a7a
    ld de, $4a7a
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $04
    ld [$d05b], a
    ld a, $03

jr_012_4a6c:
    ld [$d5fe], a
    ld [$da38], a

jr_012_4a72:
    jp Jump_000_23d2


    rla
    xor a
    ld l, [hl]
    dec hl
    ld d, b
    rla
    ld [c], a
    ld l, a
    dec hl
    ld d, b
    rla
    jr c, jr_012_4af2

    dec hl
    ld d, b
    rla
    and c
    ld [hl], b
    dec hl
    ld d, b
    rla
    inc l
    ld [hl], c
    dec hl

jr_012_4a8d:
    dec bc
    rla
    ld b, b
    ld [hl], c
    dec hl
    ld d, b
    rla
    sub [hl]
    ld [hl], c
    dec hl
    ld d, b
    ld [$d321], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    or [hl]
    ld [hl], c
    dec hl
    ld d, b
    rla
    reti


    ld [hl], c
    dec hl
    ld d, b
    rla
    db $eb
    ld [hl], c
    dec hl
    ld d, b
    ld [$df21], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $10
    ld [hl], d
    dec hl
    ld d, b
    rla
    ld h, $72
    dec hl
    ld d, b
    rla
    ld [hl-], a
    ld [hl], d
    dec hl
    ld d, b
    ld [$eb21], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sub l
    ld [hl], d
    dec hl
    ld d, b
    rla
    or c
    ld [hl], d
    dec hl
    ld d, b
    rla
    cp a
    ld [hl], d
    dec hl
    ld d, b
    ld [$f721], sp
    ld c, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    pop af
    ld [hl], d
    dec hl
    ld d, b

jr_012_4af2:
    rla
    ld [hl+], a
    ld [hl], e
    dec hl
    ld d, b
    rla
    daa
    ld [hl], e
    dec hl
    ld d, b
    ld [$0321], sp
    ld c, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add d
    ld [hl], e
    dec hl
    ld d, b
    rla
    xor l
    ld [hl], e
    dec hl
    ld d, b
    rla
    or a
    ld [hl], e
    dec hl
    ld d, b
    ld [$0f21], sp
    ld c, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    rst $30
    ld [hl], e
    dec hl
    ld d, b
    rla
    jr z, @+$76

    dec hl
    ld d, b
    rla
    scf
    ld [hl], h
    dec hl
    ld d, b
    ld [$1b21], sp
    ld c, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], l
    ld [hl], h
    dec hl
    ld d, b
    rla
    or a
    ld [hl], h
    dec hl
    ld d, b
    rla
    call nz, $2b74
    ld d, b
    inc bc
    ld [bc], a
    ld de, $0604
    rst $38
    ld de, $0605
    rst $38
    nop
    ld [$071b], sp
    ld [$d0ff], sp
    ld b, c
    db $ed
    ld bc, $0f06
    ld b, $ff
    db $d3
    ld b, d
    rl c
    rrca
    ld c, $0b
    rst $38
    jp nc, $da43

    ld bc, $0906
    dec c
    rst $38
    ret nc

    ld b, h
    adc $0b
    rrca
    add hl, bc
    dec b
    rst $38
    ret nc

    ld b, l
    jp c, Jump_000_0602

    rlca
    ld a, [bc]
    rst $38
    ret nc

    ld b, [hl]
    rl d
    rrca
    rlca
    rlca
    rst $38
    ret nc

    ld b, a
    jp c, $0603

    rlca
    add hl, bc
    rst $38
    ret nc

    ld c, b
    add sp, $01
    ld c, [hl]
    rst $00
    ld de, $4e04
    rst $00
    ld de, $0105
    ld bc, $0101
    ld bc, $3835
    ld a, [hl-]
    add hl, sp
    ld [hl], $33
    inc a
    inc sp
    dec a
    inc sp
    inc sp
    dec sp
    ccf
    ld a, $33
    inc sp
    inc [hl]
    dec b
    inc [hl]
    inc sp
    dec [hl]
    dec b
    dec b
    dec b
    ld [hl], $33
    inc [hl]
    dec b
    inc [hl]
    inc sp
    dec b
    ld [hl-], a
    dec b
    ld sp, $0505
    dec b
    inc b
    dec b
    dec b
    ld [de], a
    add hl, bc
    ld a, [bc]
    dec h
    ld d, b
    xor [hl]
    ld c, h
    call nc, Call_000_004b
    jp nz, $cd4f

    and $4b
    call Call_012_4c03
    call Call_000_3c29
    ld hl, $4c29
    ld a, [$d65e]
    jp Jump_000_3d93


    ld hl, $d125
    bit 6, [hl]
    res 6, [hl]
    ret z

    call Call_000_3e6d
    ldh a, [$d3]
    cp $07
    jr nc, jr_012_4bf9

    ld a, $08

jr_012_4bf9:
    srl a
    srl a
    srl a
    ld [$cd05], a
    ret


Call_012_4c03:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, [$d77d]
    bit 1, a
    ret nz

    ld a, $2a
    ld [$d09e], a
    ld bc, $0208
    ld a, $17
    jp Jump_000_3eb4


Jump_012_4c1e:
    xor a
    ld [$cd6b], a
    ld [$d65e], a
    ld [$da38], a
    ret


    cpl
    ld c, h
    jr nc, @+$4e

    adc l
    ld c, h
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_012_4c1e

    ld a, $f0
    ld [$cd6b], a
    ld a, $0d
    ldh [$8c], a
    call Call_000_2817
    ld a, $0b
    ldh [$8c], a
    call Call_000_353e
    ld de, $4c7e
    ld a, [$d360]
    cp $06
    jr nz, jr_012_4c5a

    ld de, $4c87
    jr jr_012_4c71

jr_012_4c5a:
    ld a, [$d361]
    cp $08
    jr nz, jr_012_4c66

    ld de, $4c87
    jr jr_012_4c71

jr_012_4c66:
    ld hl, $5f23
    ld b, $3c
    call Call_000_3e84
    ld de, $4c7e

jr_012_4c71:
    ld a, $0b
    ldh [$8c], a
    call Call_000_363d
    ld a, $02
    ld [$d65e], a
    ret


    nop
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    xor a
    ld [$cd6b], a
    ld a, $46
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $d125
    set 5, [hl]
    set 6, [hl]
    ld a, $00
    ld [$d65e], a
    ret


    ret z

    ld c, h
    call Call_012_644c
    ld c, l
    ld l, c
    ld c, l
    ld l, [hl]
    ld c, l
    push de
    ld c, l
    jp c, $f84d

    ld c, l
    db $fd
    ld c, l
    ld e, a
    ld c, [hl]
    pop bc
    ld c, [hl]
    ld bc, $fc4f
    ld c, [hl]
    rla
    push af
    ld [hl], h
    dec hl
    ld d, b
    ld [$42cd], sp
    ld c, a
    ld hl, $4d46
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_012_4d33

    ld b, $45
    call Call_000_3422
    jr z, jr_012_4d3d

    call Call_012_4fb7
    jr nc, jr_012_4d38

    xor a
    ldh [$9f], a
    ldh [$a1], a
    ld a, $10
    ldh [$a0], a
    call Call_000_35c3
    jr nc, jr_012_4cff

    ld hl, $4d55
    jr jr_012_4d40

jr_012_4cff:
    xor a
    ldh [$9f], a
    ldh [$a1], a
    ld a, $10
    ldh [$a0], a
    ld hl, $ffa1
    ld de, $d348
    ld c, $03
    ld a, $0c
    call Call_000_3eb4
    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $50
    ldh [$a1], a
    ld de, $d5a4
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3eb4
    call Call_012_4f42
    ld hl, $4d4b
    jr jr_012_4d40

jr_012_4d33:
    ld hl, $4d50
    jr jr_012_4d40

jr_012_4d38:
    ld hl, $4d5a
    jr jr_012_4d40

jr_012_4d3d:
    ld hl, $4d5f

jr_012_4d40:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld a, [hl-]
    ld [hl], l
    dec hl
    ld d, b
    rla
    and h
    ld [hl], l
    dec hl
    ld d, b
    rla
    push bc
    ld [hl], l
    dec hl
    ld d, b
    rla
    push hl
    ld [hl], l
    dec hl
    ld d, b
    rla
    ld bc, $2b76
    ld d, b
    rla
    jr nz, jr_012_4dd8

    dec hl
    ld d, b
    rla
    inc a
    db $76
    dec hl
    ld d, b
    rla
    add c
    db $76
    dec hl
    ld d, b
    ld [$7dfa], sp
    rst $10
    bit 2, a
    jr nz, jr_012_4dad

    ld hl, $4dc0
    call Call_000_3c36
    ld b, $45
    call Call_000_3422
    jr z, jr_012_4db7

    call Call_012_4fb7
    jr nc, jr_012_4db2

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $10
    ldh [$a1], a
    ld de, $d5a4
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3eb4
    ld hl, $d77d
    set 2, [hl]
    ld a, $01
    ld [$cc3c], a
    ld hl, $4dc5
    jr jr_012_4dba

jr_012_4dad:
    ld hl, $4dd0
    jr jr_012_4dba

jr_012_4db2:
    ld hl, $4dcb
    jr jr_012_4dba

jr_012_4db7:
    ld hl, $4f3d

jr_012_4dba:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    xor [hl]
    db $76
    dec hl
    ld d, b
    rla
    ret


    db $76
    dec hl
    dec bc
    ld d, b
    rla
    ldh [rPCM12], a
    dec hl
    ld d, b
    rla
    ld sp, hl
    db $76
    dec hl
    ld d, b
    rla
    inc d
    ld [hl], a

jr_012_4dd8:
    dec hl
    ld d, b
    ld [$7bfa], sp
    rst $10
    bit 1, a
    ld hl, $4dee
    jr z, jr_012_4de8

    ld hl, $4df3

jr_012_4de8:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld sp, $2b77
    ld d, b
    rla
    call z, $2b77
    ld d, b
    rla
    ld h, $78
    dec hl
    ld d, b
    ld [$7dfa], sp
    rst $10
    bit 4, a
    jr nz, jr_012_4e37

    ld hl, $4e4a
    call Call_000_3c36
    ld b, $45
    call Call_000_3422
    jr z, jr_012_4e41

    call Call_012_4fb7
    jr nc, jr_012_4e3c

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $20
    ldh [$a1], a
    ld de, $d5a4
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3eb4
    ld hl, $d77d
    set 4, [hl]
    ld hl, $4e4f
    jr jr_012_4e44

jr_012_4e37:
    ld hl, $4e5a
    jr jr_012_4e44

jr_012_4e3c:
    ld hl, $4e55
    jr jr_012_4e44

jr_012_4e41:
    ld hl, $4f3d

jr_012_4e44:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld d, e
    ld a, b
    dec hl
    ld d, b
    rla
    ld l, a
    ld a, b
    dec hl
    dec bc
    ld d, b
    rla
    add [hl]
    ld a, b
    dec hl
    ld d, b
    rla
    sbc a
    ld a, b
    dec hl
    ld d, b
    ld [$7dfa], sp
    rst $10
    bit 3, a
    jr nz, jr_012_4e99

    ld hl, $4eac
    call Call_000_3c36
    ld b, $45
    call Call_000_3422
    jr z, jr_012_4ea3

    call Call_012_4fb7
    jr z, jr_012_4e9e

    xor a
    ldh [$9f], a
    ldh [$a0], a
    ld a, $20
    ldh [$a1], a
    ld de, $d5a4
    ld hl, $ffa1
    ld c, $02
    ld a, $0b
    call Call_000_3eb4
    ld hl, $d77d
    set 3, [hl]
    ld hl, $4eb1
    jr jr_012_4ea6

jr_012_4e99:
    ld hl, $4ebc
    jr jr_012_4ea6

jr_012_4e9e:
    ld hl, $4eb7
    jr jr_012_4ea6

jr_012_4ea3:
    ld hl, $4f3d

jr_012_4ea6:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    call $2b78
    ld d, b
    rla
    dec bc
    ld a, c
    dec hl
    dec bc
    ld d, b
    rla
    ld [hl+], a
    ld a, c
    dec hl
    ld d, b
    rla
    dec a
    ld a, c
    dec hl
    ld d, b
    ld [$f221], sp
    ld c, [hl]
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $4ef7
    ld de, $4ef7
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    xor a
    ldh [$b4], a
    ldh [$b3], a
    ldh [$b2], a
    ld a, $01
    ld [$d65e], a
    jp Jump_000_23d2


    rla
    ld h, a
    ld a, c
    dec hl
    ld d, b
    rla
    sub e
    ld a, c
    dec hl
    ld d, b
    rla
    sbc d
    ld a, c
    dec hl
    ld d, b
    ld [$013e], sp
    ld [$cc3c], a
    ld hl, $4f2d
    call Call_000_3c36
    call Call_000_373e
    ld a, $ad
    call Call_000_2238
    call Call_000_373e
    ld hl, $d77d
    set 1, [hl]
    ld a, $43
    ld [$d09e], a
    ld bc, $0208
    ld a, $17
    call Call_000_3eb4
    jp Jump_000_23d2


    rla
    ret nc

    ld a, c
    dec hl
    ld [$9d3e], sp
    call Call_000_2238
    call Call_000_373e
    jp Jump_000_23d2


    rla
    nop
    ld b, b
    inc l
    ld d, b

Call_012_4f42:
    ld hl, $d72f
    set 6, [hl]
    ld hl, $c3ab
    ld bc, $0507
    call Call_000_16f0
    call Call_000_231c
    ld hl, $c3c0
    ld bc, $0407
    call Call_000_1692
    ld hl, $c3d4
    ld de, $4f9c
    call Call_000_1723
    ld hl, $c3e8
    ld de, $4fa7
    call Call_000_1723
    ld hl, $c3e8
    ld de, $d346
    ld c, $a3
    call Call_000_13ad
    ld hl, $c3fc
    ld de, $4fa2
    call Call_000_1723
    ld hl, $c410
    ld de, $4faf
    call Call_000_1723
    ld hl, $c413
    ld de, $d5a3
    ld c, $82
    call Call_000_13ad
    ld hl, $d72f
    res 6, [hl]
    ret


    adc h
    adc [hl]
    adc l
    add h
    sbc b
    ld d, b
    add d
    adc [hl]
    adc b
    adc l
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Call_012_4fb7:
    ld a, $99
    ldh [$a0], a
    ld a, $90
    ldh [$a1], a
    jp Jump_000_35ce


    rrca
    inc bc
    ld de, $070f
    rst $38
    ld de, $0710
    rst $38
    inc b
    ld de, $c701
    ld bc, $0904
    inc c
    dec bc
    rrca
    ld a, [bc]
    ld b, $ff
    ret nc

    ld bc, $0a26
    add hl, bc
    rst $38
    ret nc

    ld [bc], a
    ld a, [bc]
    ld c, $06
    rst $38
    jp nc, $0f03

    ld de, $ff06
    jp nc, Jump_000_2704

    rrca
    add hl, bc
    rst $38
    db $d3
    dec b
    inc e
    rrca
    inc c
    rst $38
    jp nc, $2406

    ld [de], a
    inc c
    rst $38
    jp nc, $0b07

    inc de
    rrca
    rst $38
    db $d3
    ld [$0f0a], sp
    ld [de], a
    rst $38
    jp nc, $2709

    ld de, $ff15
    db $d3
    ld a, [bc]
    jr @+$0b

    dec c
    rst $38
    pop de
    ld c, e
    and $07
    add b
    rst $00
    ld de, $810f
    rst $00
    ld de, $2110
    rst $00
    inc b
    ld de, $0f0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld b, e
    ld a, [hl+]
    cpl
    cpl
    cpl
    inc sp
    jr nz, jr_012_5069

    jr nz, jr_012_5066

    dec de
    dec de
    ld a, [hl-]
    jr nz, jr_012_5070

    ld a, [hl-]
    jr nz, jr_012_5073

    ld a, [hl-]
    jr nz, jr_012_5076

    ld a, [hl-]
    add hl, sp
    rra
    ld hl, $1f39
    ld hl, $1f39
    ld hl, $3939
    rra
    ld hl, $1f39

jr_012_5066:
    ld hl, $1f39

jr_012_5069:
    ld hl, $3839
    rra
    ld hl, $1f38

jr_012_5070:
    ld hl, $1f38

jr_012_5073:
    ld hl, $2038

jr_012_5076:
    jr nz, jr_012_5098

    jr nz, jr_012_509a

    jr nz, jr_012_509c

    jr z, jr_012_50a7

    jr nz, jr_012_5092

    inc b
    ld a, [bc]
    rst $18
    ld d, b
    adc a
    ld d, b
    adc e
    ld d, b
    nop
    xor b
    ld d, b
    call Call_000_3c29
    ret


    sbc c
    ld d, b
    sbc [hl]

jr_012_5092:
    ld d, b
    sub c
    inc hl
    sbc e
    inc hl
    and e

jr_012_5098:
    ld d, b
    rla

jr_012_509a:
    dec e
    ld b, b

jr_012_509c:
    inc l
    ld d, b
    rla
    sub a
    ld b, b
    inc l
    ld d, b
    rla
    db $f4
    ld b, b
    inc l

jr_012_50a7:
    ld d, b
    rrca
    inc bc
    ld bc, $000c
    ld a, [hl]
    ld bc, $0110
    ld a, l
    ld bc, $0001
    ld a, a
    ld bc, $0e01
    dec b
    inc b
    db $10
    add hl, bc
    ld [de], a
    cp $01
    ld bc, $0a13
    ld b, $ff
    rst $38
    ld [bc], a
    ld h, $07
    add hl, bc
    rst $38
    ret nc

    inc bc
    ld h, $07
    ld a, [bc]
    rst $38
    ret nc

    inc b
    rst $38
    add $01
    inc c
    ld bc, $01c7
    db $10
    ld sp, hl
    add $01
    ld bc, $0d0c
    jr @+$1b

    ld bc, $0201
    dec h
    inc bc
    ld bc, $0b0b
    inc d
    rla
    dec bc
    ld a, [de]
    ld a, [de]
    dec bc
    ld a, [de]
    ld a, [de]
    dec bc
    dec bc
    dec d
    ld d, $0b
    ld e, $1e
    dec bc
    ld e, $1e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    inc b
    dec b
    ld d, h
    ld d, c
    ld d, $51
    inc de
    ld d, c
    nop
    dec hl
    ld d, c
    jp Jump_000_3c29


    jr nz, jr_012_5169

    dec h
    ld d, c
    ld a, [hl+]
    ld d, c
    ld a, [hl+]
    ld d, c
    ld a, [hl+]
    ld d, c
    rla
    inc b
    ld b, c
    inc l
    ld d, b
    rla
    ld b, d
    ld b, c
    inc l
    ld d, b
    rst $30
    rrca
    ld [bc], a
    rlca
    inc b
    add hl, bc
    rst $38
    rlca
    dec b
    add hl, bc
    rst $38
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld b, $05
    ld [bc], a
    inc [hl]
    ld [$ff05], sp
    rst $38
    ld bc, $070b
    dec bc
    cp $02
    ld [bc], a
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    ccf
    ld b, b
    ld b, b
    ld b, b
    ccf
    ld a, $3e
    ld a, $3e
    ld a, $20
    jr nz, jr_012_5181

    jr nz, jr_012_5183

    dec de
    dec de
    dec a
    dec de
    dec de
    ld [de], a

jr_012_5169:
    inc b
    dec b
    call nc, Call_012_7851
    ld d, c
    ld [hl], h
    ld d, c
    nop
    and d
    ld d, c
    call Call_000_3c29
    ret


    add d
    ld d, c
    add a
    ld d, c
    adc h
    ld d, c
    sub c
    ld d, c
    sub [hl]

jr_012_5181:
    ld d, c
    rla

jr_012_5183:
    ld e, l
    ld b, c
    inc l
    ld d, b
    rla
    ld a, e
    ld b, c
    inc l
    ld d, b
    rla
    or a
    ld b, c
    inc l
    ld d, b
    rla
    rst $20
    ld b, c
    inc l
    ld d, b
    ld [$3121], sp
    ld e, a
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    rrca
    ld [bc], a
    rlca
    inc bc
    ld a, [bc]
    rst $38
    rlca
    inc b
    ld a, [bc]
    rst $38
    nop
    dec b
    inc d
    add hl, bc
    inc c
    cp $02
    ld bc, $061c
    dec bc
    rst $38
    rst $38
    ld [bc], a
    ld a, [bc]
    ld [$ff05], sp
    ret nc

    inc bc
    cpl
    rlca
    add hl, bc
    rst $38
    db $d3
    inc b
    inc h
    dec b
    inc b
    rst $38
    ret nc

    dec b
    ld d, $c7
    rlca
    inc bc
    rla
    rst $00
    rlca
    inc b
    inc l
    ld a, [hl+]
    ld l, $32
    jr nc, jr_012_51f7

    jr nz, @+$23

    inc d
    dec bc
    dec l
    jr nz, jr_012_5202

    inc d
    dec bc
    ld sp, $2928
    dec d
    ld de, $0413
    inc b
    inc sp
    ld d, d
    ld hl, sp+$51
    db $f4
    ld d, c
    nop
    dec c
    ld d, d
    call Call_000_3c29

jr_012_51f7:
    ret


    cp $51
    inc bc
    ld d, d
    ld [$1752], sp
    di
    ld b, d
    inc l

jr_012_5202:
    ld d, b
    rla
    jr z, jr_012_5249

    inc l
    ld d, b
    rla
    ld e, d
    ld b, e
    inc l
    ld d, b
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    dec bc
    rst $38
    rlca
    inc bc
    dec bc
    rst $38
    nop
    inc bc
    dec h
    ld b, $08
    rst $38
    ret nc

    ld bc, $0818
    dec b
    cp $00
    ld [bc], a
    inc de
    ld a, [bc]
    add hl, bc
    rst $38
    jp nc, Jump_000_1203

    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld b, h
    ld b, b
    ccf
    ld b, h
    dec bc
    ld b, d
    ld b, e
    dec bc
    dec bc
    ld b, [hl]
    ld b, a
    dec bc
    ld [hl], $41
    dec bc
    ld [hl], $06
    inc b
    rlca
    adc l
    ld d, d
    ld d, d

jr_012_5249:
    ld d, d
    ld c, a
    ld d, d
    nop
    ld h, a
    ld d, d
    jp Jump_000_3c29


    ld e, b
    ld d, d
    ld e, l
    ld d, d
    ld h, d
    ld d, d
    rla
    xor b
    ld b, e
    inc l
    ld d, b
    rla
    db $dd
    ld b, e
    inc l
    ld d, b
    rla
    inc l
    ld b, h
    inc l
    ld d, b
    nop
    ld [bc], a
    rlca
    inc bc
    inc c
    rst $38
    rlca
    inc b
    inc c
    rst $38
    nop
    inc bc
    jr z, @+$07

    rlca
    rst $38
    ret nc

    ld bc, $080f
    ld b, $ff
    rst $38
    ld [bc], a
    inc c
    ld [$fe0c], sp
    ld [bc], a
    inc bc
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $26
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rrca
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $06
    inc b
    rlca
    xor e
    ld b, b
    cp e
    ld d, d
    or l
    ld d, d
    nop
    ld a, [c]
    ld d, d
    call Call_000_2156
    jp Jump_000_3c29


    ret


    ld d, d
    jp z, $cf52

    ld d, d
    call nc, $e052
    ld d, d
    push hl
    ld d, d
    and $52
    rst $38
    rla
    push af
    ld c, [hl]
    jr z, jr_012_531f

    rla
    inc sp
    ld c, a
    jr z, jr_012_5324

    ld [$8c21], sp
    ld h, c
    ld b, $3c
    call Call_000_3e84
    jp Jump_000_23d2


    rla
    add b
    ld c, a
    jr z, jr_012_5335

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
    rlca
    add hl, hl
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0704
    ld [$d1ff], sp
    ld [bc], a
    db $10
    rlca
    dec bc
    rst $38
    pop de
    inc bc
    ld a, [bc]
    ld a, [bc]
    ld c, $fe
    ld [bc], a
    inc b
    ld c, h
    ld b, $0b
    rst $38
    rst $38
    dec b
    ld a, [hl+]
    ld b, $0f

jr_012_531f:
    rst $38
    ret nc

    ld b, $44
    dec b

jr_012_5324:
    ld [$d0ff], sp
    rlca
    ld e, $c7
    rlca
    inc bc
    rra
    rst $00
    rlca
    inc b
    ld b, $04
    rlca
    xor e
    ld b, b

jr_012_5335:
    ld b, d
    ld d, e
    inc a
    ld d, e
    nop
    ld h, h
    ld d, e
    call Call_000_2156
    jp Jump_000_3c29


    ld c, h
    ld d, e
    ld c, l
    ld d, e
    ld d, d
    ld d, e
    ld d, a
    ld d, e
    ld e, b
    ld d, e
    rst $38
    rla
    push bc
    ld d, l
    jr z, jr_012_53a2

    rla
    dec de
    ld d, [hl]
    jr z, jr_012_53a7

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

    ld bc, $0710
    dec bc
    rst $38
    ret nc

    ld [bc], a
    cpl
    add hl, bc
    ld b, $ff
    rst $38
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
    inc c
    dec b
    inc b
    rst $00
    ld b, b
    and l
    ld d, e
    and d
    ld d, e
    nop
    xor h
    ld d, e

jr_012_53a2:
    jp Jump_000_3c29


    and a
    ld d, e

jr_012_53a7:
    rla
    ld hl, sp+$58
    jr z, @+$52

    ld a, [bc]
    dec b
    inc b
    nop
    nop
    rst $38
    dec b
    nop
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    dec b
    rlca
    inc bc
    rst $38
    ld [$0006], sp
    ld d, [hl]
    nop
    ld bc, $0531
    ld [$ffff], sp
    ld bc, $c707
    inc b
    nop
    rlca
    rst $00
    dec b
    nop
    ld a, [bc]
    rst $00
    inc b
    rlca
    ld a, [bc]
    rst $00
    dec b
    rlca
    ld e, $c7
    ld [$0c06], sp
    inc b
    inc b
    db $db
    ld b, b
    db $ed
    ld d, e
    ld [$0053], a
    ld [hl], c
    ld d, h
    jp Jump_000_3c2c


    push af
    ld d, e
    inc bc
    ld d, h
    ccf
    ld d, h
    ld h, l
    ld d, h
    ld [$003e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3eb4

jr_012_5400:
    jp Jump_000_23d2


    ld [$d5fa], sp
    rst $10
    add a
    jr c, jr_012_5432

    ld a, $1e
    ldh [$db], a
    ld a, $47
    ldh [$dc], a
    ld [$d11d], a
    call Call_000_2ec4
    ld h, d
    ld l, e
    ld de, $cc5b
    ld bc, $000d
    call Call_000_00b1
    ld a, $62
    call Call_000_3eb4
    ldh a, [$db]
    dec a
    jr nz, jr_012_5438

    ld hl, $d7d5
    set 7, [hl]

jr_012_5432:
    ld hl, $543a
    call Call_000_3c36

jr_012_5438:
    jr jr_012_5400

    rla
    adc [hl]
    ld e, c
    jr z, jr_012_548f

    ld [$09fa], sp
    pop bc
    cp $04
    jp nz, Jump_012_5560

    ld a, [$d7d7]
    bit 7, a
    ld hl, $545b
    jr z, jr_012_5455

    ld hl, $5460

jr_012_5455:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    jr nz, @+$5c

    jr z, jr_012_54b0

    rla
    ld e, l
    ld e, d
    jr z, jr_012_54b5

    ld [$6c21], sp
    ld d, h
    jp Jump_012_5560


    rla
    sub b
    ld e, d
    jr z, jr_012_54c1

    ld a, [bc]
    ld bc, $0707
    inc b
    ld d, h
    ld [bc], a
    ld [bc], a
    ld bc, $0203
    ld b, $04
    ld [bc], a
    inc b
    ld b, $08
    cp $02
    ld bc, $0a20
    ld b, $ff
    rst $38
    ld [bc], a
    inc d
    rst $00
    rlca
    rlca

jr_012_548f:
    inc c
    inc b
    dec b
    rst $10
    ld d, h
    sbc [hl]
    ld d, h
    sbc e
    ld d, h
    nop
    and l
    ld d, h
    jp Jump_000_3c29


    and b
    ld d, h
    rla
    ld c, a
    ld e, e
    jr z, jr_012_54f5

    ld a, [bc]
    dec b
    nop
    inc b
    nop
    rst $38
    nop
    dec b
    ld bc, $07ff

jr_012_54b0:
    inc b
    ld [bc], a
    rst $38
    rlca
    dec b

jr_012_54b5:
    ld [bc], a
    rst $38
    ld b, $08
    nop
    jp Boot


    ld sp, $0507
    rst $38

jr_012_54c1:
    rst $38
    ld bc, $c6f6
    nop
    inc b
    or $c6
    nop
    dec b
    rla
    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    add hl, de
    rst $00
    ld b, $08
    ld d, $27
    ld [hl], c
    dec hl
    rla
    ld [bc], a
    add hl, bc
    nop
    ld c, h
    ld bc, $0902
    nop
    inc d
    dec e
    jr @+$2c

    ld [hl], d
    ld bc, $0c23
    inc b
    inc b
    db $db
    ld b, b
    ld a, [$f754]
    ld d, h
    nop

jr_012_54f5:
    ld [hl], l
    ld d, l
    jp Jump_000_3c2c


    nop
    ld d, l
    ld c, b
    ld d, l
    ld d, h
    ld d, l
    ld [$d6fa], sp
    rst $10
    rrca
    jr c, jr_012_552a

    ld hl, $5533
    call Call_000_3c36
    ld bc, $ef01
    call Call_000_3e3f
    jr nc, jr_012_5522

    ld hl, $5538
    call Call_000_3c36
    ld hl, $d7d6
    set 0, [hl]
    jr jr_012_5530

jr_012_5522:
    ld hl, $5543
    call Call_000_3c36
    jr jr_012_5530

jr_012_552a:
    ld hl, $553e
    call Call_000_3c36

jr_012_5530:
    jp Jump_000_23d2


    rla
    ld [hl], b
    ld e, e
    jr z, jr_012_5588

    rla
    jp z, $285b

    dec bc
    ld d, b
    rla
    db $dd
    ld e, e
    jr z, jr_012_5593

    rla
    ld b, b
    ld e, h
    jr z, jr_012_5598

    ld [$4f21], sp
    ld d, l
    jp Jump_012_5560


    rla
    ld e, [hl]
    ld e, h
    jr z, jr_012_55a4

    ld [$5b21], sp
    ld d, l
    jp Jump_012_5560


    rla
    adc d
    ld e, h
    jr z, jr_012_55b0

Jump_012_5560:
    ld a, [$c109]
    cp $04
    jr z, jr_012_556b

    ld a, $01
    jr jr_012_556f

jr_012_556b:
    call Call_000_3c36
    xor a

jr_012_556f:
    ld [$cc3c], a
    jp Jump_000_23d2


    ld a, [bc]
    ld bc, $0707
    inc b
    ld d, a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld b, $03
    ld bc, $081d
    rlca
    cp $01

jr_012_5588:
    ld bc, $c714
    rlca
    rlca
    inc c
    dec b
    inc b
    rst $00
    ld b, b
    sbc h

jr_012_5593:
    ld d, l
    sbc c
    ld d, l
    nop
    and e

jr_012_5598:
    ld d, l
    jp Jump_000_3c29


    sbc [hl]
    ld d, l
    rla
    ld [hl], a
    ld e, [hl]
    jr z, @+$52

    ld a, [bc]

jr_012_55a4:
    dec b
    inc b
    nop
    nop
    rst $38
    dec b
    nop
    ld bc, $04ff
    rlca
    ld [bc], a

jr_012_55b0:
    rst $38
    dec b
    rlca
    inc bc
    rst $38
    ld [$0006], sp
    cp c
    nop
    ld bc, $0531
    ld [$ffff], sp
    ld bc, $c707
    inc b
    nop
    rlca
    rst $00
    dec b
    nop
    ld a, [bc]
    rst $00
    inc b
    rlca
    ld a, [bc]
    rst $00
    dec b
    rlca
    ld e, $c7
    ld [$0c06], sp
    inc b
    inc b
    db $db
    ld b, b
    db $e4
    ld d, l
    pop hl
    ld d, l
    nop
    inc [hl]
    ld d, [hl]
    jp Jump_000_3c2c


    add sp, $55
    jr z, jr_012_563e

    ld [$dcfa], sp
    rst $10
    bit 0, a
    jr nz, jr_012_561a

    ld a, $32
    ldh [$db], a
    ld a, $4b
    ldh [$dc], a
    ld [$d11d], a
    call Call_000_2ec4
    ld hl, $cd6d
    ld de, $cc5b
    ld bc, $000d
    call Call_000_00b1
    ld a, $62
    call Call_000_3eb4
    ldh a, [$db]
    cp $01
    jr nz, jr_012_5620

    ld hl, $d7dc
    set 0, [hl]

jr_012_561a:
    ld hl, $5623
    call Call_000_3c36

jr_012_5620:
    jp Jump_000_23d2


    rla
    or b
    ld e, [hl]
    jr z, jr_012_5678

    ld [$2f21], sp
    ld d, [hl]
    jp Jump_012_5560


    rla
    ld l, c
    ld e, a
    jr z, @+$52

    ld a, [bc]
    ld bc, $0707
    inc b
    cp b
    ld bc, $0602
    ld [bc], a

jr_012_563e:
    ld bc, $0620
    ld [$d0ff], sp
    ld bc, $c714
    rlca
    rlca
    inc c
    rlca
    inc b
    ld a, d
    ld d, a
    pop af
    ld d, [hl]
    ld d, l
    ld d, [hl]
    nop
    ld [hl+], a
    ld d, a
    ld hl, $d731
    res 5, [hl]
    call Call_000_3c29
    ld a, [$d65f]
    ld hl, $5666
    jp Jump_000_3d93


    ld l, [hl]
    ld d, [hl]
    or h
    ld d, [hl]
    cp [hl]
    ld d, [hl]
    ret c

    ld d, [hl]
    call Call_012_56ec
    ret nz

    ld hl, $56ab
    call Call_000_34bc

jr_012_5678:
    ret nc

    ld a, $03
    ldh [$8c], a
    call Call_000_2817
    xor a
    ldh [$b4], a
    ld a, [$cd3d]
    cp $01
    jr z, jr_012_56a5

    ld a, [$cd3d]
    dec a
    ld [$cd38], a
    ld b, $00
    ld c, a
    ld a, $40
    ld hl, $ccd3
    call Call_000_166e
    call Call_000_3415
    ld a, $01
    ld [$d65f], a
    ret


jr_012_56a5:
    ld a, $02
    ld [$d65f], a
    ret


    rlca
    inc b
    ld [$0904], sp
    inc b
    ld a, [bc]
    inc b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld a, $01
    ld [$cd38], a
    ld a, $10
    ld [$ccd3], a
    call Call_000_3415
    ld a, $03
    ld [$d65f], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld hl, $d72f
    res 7, [hl]
    ld a, $00
    ld [$d65f], a
    ret


Call_012_56ec:
    ld b, $06
    jp Jump_000_3422


    rst $30
    ld d, [hl]
    dec e
    ld d, a
    jr jr_012_574e

    ld [$eccd], sp
    ld d, [hl]
    jr z, jr_012_5705

    ld hl, $5713
    call Call_000_3c36
    jr jr_012_570b

jr_012_5705:
    ld hl, $570e
    call Call_000_3c36

jr_012_570b:
    jp Jump_000_23d2


    rla
    and h
    ld e, a
    jr z, jr_012_5763

    rla
    pop de
    ld e, a
    jr z, @+$52

    rla
    ld [de], a
    ld h, b
    jr z, jr_012_576d

    rla
    ld l, $60
    jr z, jr_012_5772

    ld a, [bc]
    add hl, bc
    ld [$0000], sp
    rst $38
    add hl, bc
    nop
    ld bc, $08ff
    rlca
    ld [bc], a
    rst $38
    add hl, bc
    rlca
    ld [bc], a
    rst $38
    ld [bc], a
    nop
    inc b
    rst $38
    inc bc
    nop
    dec b
    rst $38
    ld [bc], a
    rlca
    ld b, $ff
    inc bc
    rlca
    rlca
    rst $38
    inc c
    ld b, $00
    cp e
    nop
    ld [bc], a
    ld sp, $0809
    rst $38

jr_012_574e:
    ret nc

    ld bc, $070b
    ld [$ffff], sp
    ld [bc], a
    dec de
    rst $00
    ld [$1b00], sp
    rst $00
    add hl, bc
    nop
    ld e, $c7
    ld [$1e07], sp

jr_012_5763:
    rst $00
    add hl, bc
    rlca
    db $fd
    add $02
    nop
    db $fd
    add $03

jr_012_576d:
    nop
    nop
    rst $00
    ld [bc], a
    rlca

jr_012_5772:
    nop
    rst $00
    inc bc
    rlca
    ld [hl-], a
    rst $00
    inc c
    ld b, $68
    ld l, b
    ld l, b
    ld l, b
    ld h, [hl]
    nop
    nop
    ld h, a
    inc e
    rra
    rra
    dec e
    ld [hl-], a
    ld hl, $3121
    ld h, [hl]
    nop
    nop
    ld h, a
    add hl, hl
    dec h
    ld h, $1e
    jr @+$20

    jr nc, jr_012_57b9

    inc c
    inc b
    inc b
    db $db
    ld b, b
    and l
    ld d, a
    and d
    ld d, a
    nop
    db $e3
    ld d, a
    jp Jump_000_3c2c


    xor l
    ld d, a
    cp h
    ld d, a
    bit 2, a
    rst $10
    ld d, a
    ld [$b721], sp
    ld d, a
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld c, l

jr_012_57b9:
    ld h, b
    jr z, @+$52

    ld [$c621], sp
    ld d, a
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld [hl], a
    ld h, b
    jr z, jr_012_581b

    ld [$d221], sp
    ld d, a
    jp Jump_012_5560


    rla
    sub h
    ld h, b
    jr z, @+$52

    ld [$de21], sp
    ld d, a
    jp Jump_012_5560


    rla
    jp z, $2860

    ld d, b
    ld a, [bc]
    ld bc, $0707
    ld [$02ba], sp
    ld [bc], a
    ld bc, $0203
    ld b, $04
    ld [bc], a
    dec [hl]
    ld b, $08
    rst $38
    rst $38
    ld bc, $0908
    ld b, $fe
    ld [bc], a
    ld [bc], a
    inc d
    rst $00
    rlca
    rlca
    inc c
    dec b
    inc b
    rst $00
    ld b, b
    and h
    ld e, b
    dec c
    ld e, b
    nop
    adc $58
    ld hl, $d731
    res 5, [hl]
    call Call_000_3c29
    ld a, [$d668]
    ld hl, $581e

jr_012_581b:
    jp Jump_000_3d93


    ld h, $58
    ld l, h
    ld e, b
    db $76
    ld e, b
    sub b
    ld e, b
    call Call_012_56ec
    ret nz

    ld hl, $5863
    call Call_000_34bc
    ret nc

    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    xor a
    ldh [$b4], a
    ld a, [$cd3d]
    cp $01
    jr z, jr_012_585d

    ld a, [$cd3d]
    dec a
    ld [$cd38], a
    ld b, $00
    ld c, a
    ld a, $40
    ld hl, $ccd3
    call Call_000_166e
    call Call_000_3415
    ld a, $01
    ld [$d668], a
    ret


jr_012_585d:
    ld a, $02
    ld [$d668], a
    ret


    inc bc
    inc b
    inc b
    inc b
    dec b
    inc b
    ld b, $04
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld a, $01
    ld [$cd38], a
    ld a, $10
    ld [$ccd3], a
    call Call_000_3415
    ld a, $03
    ld [$d668], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    ld hl, $d72f
    res 7, [hl]
    ld a, $00
    ld [$d668], a
    ret


    xor b
    ld e, b
    ret


    ld e, b
    ld [$eccd], sp
    ld d, [hl]
    jr z, jr_012_58b6

    ld hl, $58c4
    call Call_000_3c36
    jr jr_012_58bc

jr_012_58b6:
    ld hl, $58bf
    call Call_000_3c36

jr_012_58bc:
    jp Jump_000_23d2


    rla
    push af
    ld h, c
    jr z, jr_012_5914

    rla
    dec de
    ld h, d
    jr z, @+$52

    rla
    ld b, d
    ld h, d
    jr z, @+$52

    ld a, [bc]
    dec b
    inc b
    nop
    nop
    rst $38
    dec b
    nop
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    dec b
    rlca
    inc bc
    rst $38
    ld [$0006], sp
    cp a
    nop
    ld bc, $0531
    ld [$d0ff], sp
    ld bc, $c707
    inc b
    nop
    rlca
    rst $00
    dec b
    nop
    ld a, [bc]
    rst $00
    inc b
    rlca
    ld a, [bc]
    rst $00
    dec b
    rlca
    ld e, $c7
    ld [$0c06], sp
    inc b
    inc b
    db $db
    ld b, b
    rrca
    ld e, c
    inc c
    ld e, c
    nop
    dec sp
    ld e, c
    jp Jump_000_3c2c


    dec d
    ld e, c
    inc hl
    ld e, c
    cpl

jr_012_5914:
    ld e, c
    ld [$053e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3eb4
    jp Jump_000_23d2


    ld [$2a21], sp
    ld e, c
    jp Jump_012_5560


    rla
    ld c, [hl]
    ld h, d
    jr z, jr_012_597f

    ld [$3621], sp
    ld e, c
    jp Jump_012_5560


    rla
    add a
    ld h, d
    jr z, jr_012_598b

    ld a, [bc]
    ld bc, $0707
    inc b
    cp [hl]
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld b, $03
    ld bc, $0614
    ld [$02fe], sp
    ld bc, $c714
    rlca
    rlca
    ld de, $1412
    ld d, $5b
    ld a, b
    ld e, c
    ld e, a
    ld e, c
    nop
    add l
    ld e, d
    call Call_000_3c29
    ld hl, $5994
    ld de, $5972
    ld a, [$d605]
    call Call_000_30fc
    ld [$d605], a
    ret


    or l
    ld sp, $31e8
    ld de, $e932
    ld e, c
    rst $28
    ld e, c
    push af
    ld e, c
    ei

jr_012_597f:
    ld e, c
    ld bc, $075a
    ld e, d
    dec c
    ld e, d
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28

jr_012_598b:
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    add b
    ld e, d
    ld bc, $f420

jr_012_5997:
    rst $10
    rla
    ld e, d
    ld hl, $1c5a
    ld e, d
    inc e
    ld e, d
    ld [bc], a
    jr nc, jr_012_5997

jr_012_59a3:
    rst $10
    ld h, $5a
    jr nc, @+$5c

    dec hl
    ld e, d
    dec hl
    ld e, d
    inc bc
    jr nc, jr_012_59a3

jr_012_59af:
    rst $10
    dec [hl]
    ld e, d
    ccf
    ld e, d
    ld a, [hl-]
    ld e, d
    ld a, [hl-]
    ld e, d
    inc b
    jr nc, jr_012_59af

jr_012_59bb:
    rst $10
    ld b, h
    ld e, d
    ld c, [hl]
    ld e, d
    ld c, c
    ld e, d
    ld c, c
    ld e, d
    dec b
    jr nc, jr_012_59bb

    rst $10
    ld d, e
    ld e, d
    ld e, l
    ld e, d
    ld e, b
    ld e, d
    ld e, b
    ld e, d
    ld b, $30
    db $f4

jr_012_59d3:
    rst $10
    ld h, d
    ld e, d
    ld l, h
    ld e, d
    ld h, a
    ld e, d
    ld h, a
    ld e, d
    rlca
    jr nc, jr_012_59d3

    rst $10
    ld [hl], c
    ld e, d
    ld a, e
    ld e, d
    db $76
    ld e, d
    db $76
    ld e, d
    rst $38
    ld [$9421], sp
    ld e, c
    jr jr_012_5a11

    ld [$a021], sp
    ld e, c
    jr jr_012_5a11

    ld [$ac21], sp
    ld e, c
    jr jr_012_5a11

    ld [$b821], sp
    ld e, c
    jr jr_012_5a11

    ld [$c421], sp
    ld e, c
    jr jr_012_5a11

    ld [$d021], sp
    ld e, c
    jr jr_012_5a11

    ld [$dc21], sp
    ld e, c

jr_012_5a11:
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add d
    ld b, a
    ld h, $50
    rla
    xor a
    ld b, a
    ld h, $50
    rla
    call nz, $2647
    ld d, b
    rla
    push hl
    ld b, a
    ld h, $50
    rla
    inc bc
    ld c, b
    ld h, $50
    rla
    inc de
    ld c, b
    ld h, $50
    rla
    dec sp
    ld c, b
    ld h, $50
    rla
    ld l, b
    ld c, b
    ld h, $50
    rla
    ld a, b
    ld c, b
    ld h, $50
    rla
    sub l
    ld c, b
    ld h, $50
    rla
    or c
    ld c, b
    ld h, $50
    rla
    jp $2648


    ld d, b
    rla
    ld [c], a
    ld c, b
    ld h, $50
    rla
    inc d
    ld c, c
    ld h, $50
    rla
    dec e
    ld c, c
    ld h, $50
    rla
    ld c, l
    ld c, c
    ld h, $50
    rla
    ld a, [hl]
    ld c, c
    ld h, $50
    rla
    adc e
    ld c, c
    ld h, $50
    rla
    cp c
    ld c, c
    ld h, $50
    rla
    add sp, $49
    ld h, $50
    rla
    pop af
    ld c, c
    ld h, $50
    rla
    ld a, [hl+]
    ld c, d
    ld h, $50
    inc bc
    dec b
    inc hl
    ld c, $01
    rst $38
    inc hl
    rrca
    ld bc, $05ff
    dec b
    nop
    inc a
    dec bc
    ld de, $3c02
    rrca
    add hl, de
    inc bc
    inc a
    ld bc, $0f17
    ld c, $0d
    ld c, $0a
    add hl, bc
    rst $38
    ret nc

    ld b, c
    pop de
    ld bc, $1404
    db $10
    rst $38
    db $d3
    ld b, d
    ret


    inc bc
    ld b, $08
    ld [hl+], a
    rst $38
    ret nc

    ld b, e
    rlc l
    inc c
    inc hl
    inc e
    rst $38
    pop de
    ld b, h
    ret nc

    ld bc, $1b06
    inc d
    rst $38
    ret nc

    ld b, l
    rlc [hl]
    inc b
    ld a, [de]
    dec bc
    rst $38
    ret nc

    ld b, [hl]
    jp z, Jump_000_0407

    rra
    ld [hl+], a
    rst $38
    db $d3
    ld b, a
    jp z, $4708

    jr @+$08

    rst $38
    rst $38
    adc b
    inc d
    ld b, a
    ld b, $06
    rst $38
    rst $38
    adc c
    ld a, [bc]
    ld b, a
    inc hl
    daa
    rst $38
    rst $38
    adc d
    jr z, @+$49

    dec de
    jr z, @+$01

    rst $38
    adc e
    dec e
    ld b, a
    dec h
    jr @+$01

    rst $38
    adc h
    inc d
    ld b, a
    inc h
    add hl, bc
    rst $38
    rst $38
    adc l
    call nc, $c8c4
    inc hl
    ld c, $c4
    ret z

    inc hl
    rrca
    add hl, sp
    rst $00
    dec b
    dec b
    adc l
    rst $00
    dec bc
    ld de, $c7c5
    rrca
    add hl, de
    rla
    jr nz, jr_012_5b3a

    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $1b22
    ld bc, $0101
    ld bc, $1701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_012_5b3a:
    ld bc, $0101
    rla
    dec de
    ld bc, $0128
    ld bc, $1b01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec de
    dec de
    ld bc, $0101
    ld bc, $1b01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec de
    dec de
    ld bc, $0101
    ld bc, $1b01
    ld bc, $2001
    ld [hl+], a
    jr nz, jr_012_5b95

    jr nz, @+$24

    ld bc, $0101
    ld bc, $1b1b
    ld bc, $0101
    ld bc, $1b01
    ld bc, $1728
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec de
    dec de
    ld bc, $0101
    ld bc, $1b01

jr_012_5b95:
    ld bc, $1f01
    ld bc, $0101
    ld bc, $0101
    rla
    ld bc, $1b01
    dec de
    ld bc, $0101
    ld bc, $1f01
    ld bc, $1701
    ld bc, $2801
    ld bc, $0101
    rra
    ld bc, $1b01
    dec de
    ld bc, $0101
    ld bc, $0101
    ld bc, $1f01
    ld bc, $0117
    ld bc, $0101
    rla
    ld bc, $1b01
    dec de
    jr nz, jr_012_5bee

    ld [hl+], a
    rla
    ld bc, $0101
    ld bc, $0117
    rra
    ld bc, $0101
    ld bc, $011f
    ld bc, $1b1b
    ld bc, $0101
    dec de
    jr nz, @+$23

    ld hl, $1f22
    ld bc, $0117
    ld bc, $0101

jr_012_5bee:
    rla
    ld bc, $1b01
    dec de
    ld bc, $0101
    rra
    ld bc, $2a01
    ld bc, $0101
    rra
    ld bc, $0101
    ld bc, $011f
    ld bc, $1b1b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0101
    rla
    ld bc, $1b01
    dec de
    ld bc, $0101
    ld bc, $0101
    ld bc, $1614
    jr nz, @+$24

    ld bc, $1614
    ld bc, $011f
    ld bc, $1b1b
    ld bc, $0101
    ld bc, $0101
    ld bc, $1a18
    ld bc, $0101
    jr jr_012_5c57

    ld bc, $0101
    ld bc, $1b1b
    ld bc, $0101
    ld bc, $1614
    ld bc, $1a18
    ld bc, $0101
    inc e
    ld e, $01
    ld bc, $0101
    dec de
    dec de

jr_012_5c57:
    ld bc, $0101
    ld bc, $1a18
    ld bc, $1a18
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rra
    rra
    jr nz, @+$23

    ld hl, $1c22
    ld e, $24
    inc e
    ld e, $20
    ld hl, $2121
    ld hl, $2121
    ld hl, $2221
    ld de, $1412
    cp l
    ld h, c
    sbc h
    ld e, a
    adc d
    ld e, h
    nop
    ld d, e
    ld h, c
    call Call_000_3c29
    ld hl, $5fb8
    ld de, $5cf7
    ld a, [$d606]
    call Call_000_30fc
    ld [$d606], a
    ld a, [$d7f5]
    bit 1, a
    ret z

    ld hl, $5cb6
    call Call_000_34bc
    jr nc, jr_012_5cb0

    ld hl, $d72d
    set 4, [hl]
    ret


jr_012_5cb0:
    ld hl, $d72d
    res 4, [hl]
    ret


    dec b
    dec bc
    dec b
    inc c
    dec b
    dec c
    dec b
    ld c, $06
    dec bc
    ld b, $0c
    ld b, $0d
    ld b, $0e
    rlca
    dec bc
    rlca
    inc c
    rlca
    dec c
    rlca
    ld c, $08
    dec bc
    ld [$080c], sp
    dec c
    ld [$ff0e], sp

Jump_012_5cd7:
    ld hl, $d7f5
    bit 6, [hl]
    res 6, [hl]
    call nz, Call_012_5cec
    xor a
    ld [$cd6b], a

Call_012_5ce5:
    ld [$d606], a
    ld [$da38], a
    ret


Call_012_5cec:
    ld a, $6d
    call Call_012_5f93
    ld a, $6e
    call Call_012_5f93
    ret


    rla
    ld e, l
    add sp, $31
    ld de, $5432
    ld e, l
    ld [hl], c
    ld e, l
    rst $18
    ld e, l
    ld l, h
    ld e, [hl]
    adc [hl]
    ld e, [hl]
    sbc c
    ld e, [hl]
    and e
    ld e, [hl]
    cp b
    ld e, [hl]
    jp $dc5e


    ld e, [hl]
    rlca
    ld e, a
    ld c, l
    ld e, a
    ld l, [hl]
    ld e, a
    ld a, [$d7f5]
    and $81
    call z, Call_012_5d28
    ld a, [$d7f5]
    bit 2, a
    call z, Call_012_5e15
    ret


Call_012_5d28:
    ld a, [$d7f5]
    bit 1, a
    jp nz, Jump_012_5d4b

    ld a, [$d360]
    cp $08
    jp nz, Jump_012_5d4b

    ld a, [$d361]
    cp $0d
    jp nz, Jump_012_5d4b

    xor a
    ldh [$b4], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ret


Jump_012_5d4b:
    ld a, [$d7f5]
    and $81
    jp z, Jump_000_31b5

    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_012_5cd7

    call Call_000_231c
    call Call_000_3ddb
    ld hl, $d7f5
    set 1, [hl]
    xor a
    ld [$cd6b], a
    ld a, $00
    call Call_012_5ce5
    ret


    ld a, $01
    ldh [$8c], a
    call Call_000_353e
    ld hl, $5dc7
    call Call_000_34bc
    jr c, jr_012_5da8

    ld hl, $5dc0
    call Call_000_34bc
    jr c, jr_012_5db0

    ld hl, $5dd5
    call Call_000_34bc
    jr c, jr_012_5d9b

    ld hl, $5dce
    call Call_000_34bc
    jr c, jr_012_5da3

    jp Jump_000_31b5


jr_012_5d9b:
    ld b, $08
    ld hl, $5dd8
    call Call_012_6325

jr_012_5da3:
    ld de, $5ddd
    jr jr_012_5db3

jr_012_5da8:
    ld b, $0c
    ld hl, $5dca
    call Call_012_6325

jr_012_5db0:
    ld de, $5ddc

jr_012_5db3:
    ld a, $01
    ldh [$8c], a
    call Call_000_363d
    ld a, $05
    call Call_012_5ce5
    ret


    rlca
    inc c
    ld b, $0b
    dec b
    inc c
    rst $38
    rlca
    inc c
    rst $38
    nop
    dec [hl]
    inc sp
    ccf
    rlca
    dec c
    ld b, $0e
    dec b
    ld c, $ff
    rlca
    dec c
    rst $38
    nop
    dec [hl]
    inc [hl]
    ccf
    ret nz

    ld b, b
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $f0
    ld [$cd6b], a
    ld a, $01
    ld [$cc3c], a
    ld a, $0b
    ldh [$8c], a
    call Call_000_2817
    ld a, [$d7f5]
    bit 7, a
    jr z, jr_012_5e01

    ld a, $6f
    jr jr_012_5e03

jr_012_5e01:
    ld a, $70

jr_012_5e03:
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    xor a
    ld [$cd6b], a
    ld a, $00
    call Call_012_5ce5
    ret


Call_012_5e15:
    ld a, [$d361]
    cp $03
    ret nz

    ld a, [$d360]
    cp $05
    ret nz

    call Call_000_2233
    ld c, $20
    ld a, $9c
    call Call_000_2211
    xor a
    ldh [$b4], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $6d
    call Call_012_5f84
    ld a, $6e
    call Call_012_5f84
    ld a, $01
    ld [$cc3c], a
    ld a, $0c
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cc3c], a
    ld a, $01
    ld [$cd38], a
    ld a, $40
    ld [$ccd3], a
    call Call_000_3415
    ld a, $ff
    ld [$cd6b], a
    ld a, $06
    call Call_012_5ce5
    ret


    ld b, $06
    ld b, $06
    ld b, $06
    rst $38
    ld a, $ff
    ld [$cd6b], a
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    ld a, $02
    ldh [$8c], a
    ld de, $5e65
    call Call_000_363d
    ld a, $ff
    ld [$cd6b], a
    ld a, $07
    call Call_012_5ce5
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $02
    ld [$c121], a
    ld a, $00
    ld [$c129], a
    ld a, $06
    ldh [$8c], a
    ld de, $5e66
    call Call_000_363d
    ld a, $ff
    ld [$cd6b], a
    ld a, $0a
    call Call_012_5ce5
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $02
    ld [$c161], a
    ld a, $08
    ld [$c169], a
    call Call_000_3ddb
    ld a, $fc
    ld [$cd6b], a
    ld a, $0d
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $6009
    ld de, $6009
    call Call_000_32f0
    ld a, $e6
    ld [$d058], a
    ld a, $2a
    ld [$d05c], a
    xor a
    ldh [$b4], a
    ld [$cd6b], a
    ld hl, $d7f5
    set 6, [hl]
    ld a, $0d
    call Call_012_5ce5
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$d056]
    cp $ff
    jp z, Jump_012_5cd7

    ld a, $02
    ld [$c121], a
    ld [$c161], a
    xor a
    ld [$c129], a
    ld [$c169], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $01
    ld [$cc3c], a
    ld a, $0e
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
    ld a, $0e
    call Call_012_5ce5
    ret


    ld a, $ff
    ld [$cd6b], a
    call Call_000_1eb6
    ld a, $6d
    call Call_012_5f93
    ld a, $6e
    call Call_012_5f93
    call Call_000_231c
    call Call_000_3ddb
    call Call_000_1e8f
    ld a, $0f
    call Call_012_5ce5
    ret


    call Call_000_216b
    xor a
    ldh [$b4], a
    ld [$cd6b], a
    ld hl, $d7f5
    set 2, [hl]
    res 6, [hl]
    ld a, $00
    call Call_012_5ce5
    ret


Call_012_5f84:
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    call Call_000_231c
    call Call_000_3ddb
    ret


Call_012_5f93:
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ret


    dec de
    ld h, b
    db $dd
    ld e, a
    ld h, b
    ld h, b
    ld h, [hl]
    ld h, b
    ld l, h
    ld h, b
    db $dd
    ld e, a
    db $76
    ld h, b
    or e
    ld h, b
    rst $28
    inc hl
    rst $28
    inc hl
    jr nz, jr_012_6013

    sbc $5f
    inc b
    ld h, b
    ld c, $60
    inc bc
    ld b, b
    push af
    rst $10
    ld h, $61
    jr nc, jr_012_6021

    dec hl
    ld h, c
    dec hl
    ld h, c
    inc b
    ld b, b
    push af
    rst $10
    dec [hl]
    ld h, c
    ccf
    ld h, c
    ld a, [hl-]
    ld h, c
    ld a, [hl-]
    ld h, c
    dec b
    ld b, b
    push af
    rst $10
    ld b, h
    ld h, c
    ld c, [hl]
    ld h, c
    ld c, c
    ld h, c
    ld c, c
    ld h, c
    rst $38
    ld d, b
    rla
    ld c, l
    ld c, d
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
    ld h, c
    ld c, d
    ld h, $50
    rla
    and h
    ld c, d
    ld h, $50
    rla
    or l
    ld c, d
    ld h, $08

jr_012_6013:
    ld c, $40
    call Call_000_372f
    jp Jump_000_23d2


    ld [$f5fa], sp
    rst $10
    bit 1, a

jr_012_6021:
    jr z, jr_012_602f

    and $81
    jr nz, jr_012_6057

    ld hl, $6116
    call Call_000_3c36
    jr jr_012_605d

jr_012_602f:
    ld hl, $610c
    call Call_000_3c36
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $6111
    ld de, $6111
    call Call_000_32f0
    ldh a, [$8c]
    ld [$cf13], a
    call Call_000_3306
    call Call_000_3273
    ld a, $03
    call Call_012_5ce5
    jr jr_012_605d

jr_012_6057:
    ld hl, $611b
    call Call_000_3c36

jr_012_605d:
    jp Jump_000_23d2


    ld [$b821], sp
    ld e, a
    jr jr_012_6070

    ld [$c421], sp
    ld e, a
    jr jr_012_6070

    ld [$d021], sp
    ld e, a

jr_012_6070:
    call Call_000_3168
    jp Jump_000_23d2


    ld [$013e], sp
    ld [$cc3c], a
    ld hl, $60ae
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_012_60ab

    ld bc, $2901
    call Call_000_3e3f
    jp nc, Jump_012_60fd

    call Call_012_60f0
    ld a, $6f
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $d7f5
    set 0, [hl]
    ld a, $04
    call Call_012_5ce5

jr_012_60ab:
    jp Jump_000_23d2


    rla
    push hl
    ld c, d
    ld h, $50
    ld [$013e], sp
    ld [$cc3c], a
    ld hl, $60eb
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_012_60e8

    ld bc, $2a01
    call Call_000_3e3f
    jp nc, Jump_012_60fd

    call Call_012_60f0
    ld a, $70
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $d7f5
    set 7, [hl]
    ld a, $04
    call Call_012_5ce5

jr_012_60e8:
    jp Jump_000_23d2


    rla
    nop
    ld c, e
    ld h, $50

Call_012_60f0:
    ld hl, $60f6
    jp Jump_000_3c36


    rla
    inc e
    ld c, e
    ld h, $11
    dec c
    ld d, b

Jump_012_60fd:
    ld hl, $6106
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    cpl
    ld c, e
    ld h, $0d
    ld d, b
    rla
    ld d, e
    ld c, e
    ld h, $50
    rla
    adc b
    ld c, e
    ld h, $50
    rla
    sbc b
    ld c, e
    ld h, $50
    rla
    cp [hl]
    ld c, e
    ld h, $50
    rla
    ld a, [de]
    ld c, h
    ld h, $11
    ld d, b
    rla
    ld a, [hl-]
    ld c, h
    ld h, $50
    rla
    ld h, b
    ld c, h
    ld h, $50
    rla
    ld l, h
    ld c, h
    ld h, $50
    rla
    sbc l
    ld c, h
    ld h, $50
    rla
    jp z, $264c

    ld d, b
    rla
    db $dd
    ld c, h
    ld h, $50
    rla
    dec c
    ld c, l
    ld h, $50
    rla
    jr c, jr_012_6199

    ld h, $50
    rla
    ld b, l
    ld c, l
    ld h, $50
    inc bc
    inc b
    add hl, bc
    add hl, de
    ld bc, $113c
    dec d
    inc b
    inc a
    dec de
    rrca
    dec b
    inc a
    rlca
    dec b
    ld b, $3c
    nop
    ld a, [bc]
    inc c
    inc c
    db $10
    rst $38
    db $d3
    ld b, c
    ret nc

    ld [bc], a
    ld b, l
    rlca
    dec c
    rst $38
    jp nc, $1802

    ld a, [de]
    inc de
    rst $38
    ret nc

    ld b, e
    and $02
    jr jr_012_618e

    ld hl, $d1ff
    ld b, h
    and $03
    jr @+$17

    ld hl, $d2ff
    ld b, l
    and $01
    ld b, [hl]

jr_012_618e:
    ld [$ff0d], sp
    jp nc, Jump_012_4806

    ld a, [bc]
    db $10
    rst $38
    rst $38
    rlca

jr_012_6199:
    ld c, b
    ld a, [bc]
    ld de, $ffff
    ld [$1947], sp
    dec e
    rst $38
    rst $38
    adc c
    inc hl
    ld b, a
    add hl, bc
    ld hl, $ffff
    adc d
    ret


    ld [hl], a
    rst $00
    add hl, bc
    add hl, de
    db $dd
    rst $00
    ld de, $5c15
    ret z

    dec de
    rrca
    ld d, e
    rst $00
    rlca
    dec b
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    dec d
    dec d
    cpl
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $2f
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    add hl, de
    add hl, de
    cpl
    ld h, [hl]
    dec e
    dec e
    dec e
    ld b, l
    add hl, de
    ld b, h
    ld e, $2f
    ld b, c
    ld b, d
    ld l, $40
    ld b, c
    ld b, d
    ld l, $2e
    add hl, de
    add hl, de
    cpl
    add hl, de
    dec a
    add hl, de
    inc d
    dec d
    add hl, de
    dec d
    ld d, $2f
    add hl, de
    ld a, [de]
    ld bc, $291c
    ld e, $01
    ld bc, $1919
    cpl
    inc sp
    inc sp
    inc sp
    inc e
    dec e
    add hl, hl
    dec hl
    ld a, [de]
    cpl
    add hl, de
    ld a, [de]
    ld a, $01
    ld bc, $0d01
    ld bc, $2e2e
    ld l, $2e
    ld l, $2f
    add hl, de
    add hl, de
    add hl, de
    inc e
    ld e, $2f
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $0101
    ld l, $2e
    ld bc, $0101
    cpl
    inc sp
    inc sp
    add hl, de
    inc sp
    inc sp
    cpl
    add hl, de
    add hl, de
    dec d
    dec d
    ld d, $14
    dec d
    dec d
    add hl, de
    jr nc, @+$03

    ld bc, $2e01
    ld l, $2e
    add hl, de
    ld l, $2e
    cpl
    add hl, de
    add hl, de
    ld b, h
    add hl, hl
    ld e, $1c
    add hl, hl
    ld b, l
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_012_627b

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    cpl
    dec a
    add hl, de
    ld c, b
    ld bc, $0101
    ld bc, $1949
    ld a, [de]
    ld bc, $0101
    jr @+$1b

    add hl, de
    inc sp
    inc sp
    inc sp
    cpl

jr_012_627b:
    inc sp
    inc sp
    ld c, d
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld c, e
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_012_62a3

    add hl, de
    cpl
    ld l, $2e
    ld l, $2e
    ld b, b
    ld b, c
    ld b, d
    ld l, $2f
    ld l, $2e
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_012_62b7

    add hl, de
    cpl
    add hl, de
    add hl, de
    add hl, de

jr_012_62a3:
    add hl, de
    inc e
    add hl, hl
    ld e, $19
    cpl
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    ld bc, $0101
    jr jr_012_62cb

    add hl, de
    cpl
    add hl, de
    add hl, de
    add hl, de

jr_012_62b7:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    cpl
    add hl, de
    inc l
    dec e
    ld e, $01
    ld bc, $1801
    add hl, de
    add hl, de
    cpl
    dec a
    add hl, de
    add hl, de

jr_012_62cb:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    cpl
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $1801
    add hl, de
    add hl, de
    jr c, @+$3a

    jr c, @+$3a

    jr c, jr_012_6319

    jr c, @+$3a

    jr c, @+$3a

    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $1801
    add hl, de
    add hl, de
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, de
    ld a, [de]
    ld bc, $0101
    ld bc, $1c01
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_012_6319:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

Call_012_6325:
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
    ret


    inc bc
    dec c
    rrca
    ld sp, hl
    ld h, e
    ld l, c
    ld h, e
    ld h, [hl]
    ld h, e
    nop
    adc l
    ld h, e
    jp Jump_000_3c29


    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld a, c
    ld h, e
    ld a, [hl]
    ld h, e
    add e
    ld h, e
    adc b
    ld h, e
    rla
    ld de, $2748
    ld d, b
    rla
    dec e
    ld c, b
    daa
    ld d, b
    rla
    sbc e
    ld c, b
    daa
    ld d, b
    rla
    push hl
    ld c, b
    daa
    ld d, b
    nop
    ld [$1400], sp
    nop
    jp c, $1500

    ld bc, $00da
    ld a, [de]
    ld [bc], a
    jp c, $1b00

    inc bc
    jp c, Jump_000_1d16

    ld [bc], a
    call c, $1d17
    inc bc
    call c, $0303
    nop
    sbc $0b
    dec bc
    nop
    rst $18
    inc b
    inc c
    inc c
    dec b
    inc bc
    ld de, $0406
    ld a, [de]
    rlca
    ld d, $18
    ld [$4704], sp
    jr jr_012_63cc

    rst $38
    rst $38
    add c
    ld de, $0b47
    dec c
    rst $38
    rst $38
    add d
    add sp, $47

jr_012_63cc:
    ld d, $16
    rst $38
    rst $38
    add e
    ld [hl], $47
    dec bc
    rla
    rst $38
    rst $38
    add h
    ld b, b
    ld [$00c7], sp
    inc d
    ld [$00c7], sp
    dec d
    dec bc
    rst $00
    nop
    ld a, [de]
    dec bc
    rst $00
    nop
    dec de
    di
    rst $00
    ld d, $1d
    di
    rst $00
    rla
    dec e
    inc d
    rst $00
    inc bc
    inc bc
    ld l, h
    rst $00
    dec bc
    dec bc
    ld [bc], a
    dec de
    dec de
    ld [bc], a
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld [bc], a
    ld e, b
    ld [bc], a
    ld [bc], a
    ld e, b
    ld [bc], a
    dec hl
    add hl, de
    inc e
    ld a, [hl+]
    dec de
    dec de
    dec de
    dec de
    inc sp
    dec de
    dec de
    dec de
    ld a, a
    add hl, hl
    ld a, [hl]
    dec hl
    dec de
    dec de
    ld a, [hl+]
    dec de
    ld l, $1b
    dec de
    dec de
    add hl, hl
    dec de
    dec de
    ld a, a
    ld hl, $2b7e
    dec de
    dec de
    dec de
    dec de
    inc a
    dec a
    dec a
    ld a, $29
    dec de
    dec de
    ld a, a
    add hl, hl
    ld a, [hl]
    dec hl
    ld l, $1b
    dec de
    dec de
    ld b, h
    ld b, l
    ccf
    ld b, d
    dec de
    add hl, hl
    add hl, hl
    ld a, a
    dec de
    ld a, [hl]
    ld a, [hl]
    ld e, h
    ld d, c
    ld d, c
    ld d, d
    add hl, de
    inc e
    ld b, b

Call_012_644c:
    ld b, d
    dec de
    dec de
    dec de
    ld a, a
    dec de
    ld a, [hl]
    ld a, [hl]
    ld e, d
    dec l
    dec l
    ld e, e
    dec de
    ld hl, $4240
    dec de
    dec de
    dec de
    ld a, a
    add hl, hl
    ld a, [hl]
    ld [bc], a
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld b, b
    ld c, e
    dec a
    dec a
    ld a, $1b
    dec de
    ld a, [hl]
    ld a, a
    dec de
    inc a
    dec a
    dec a
    dec a
    dec a
    ld c, d
    ld b, e
    ld b, l
    ld d, e
    ld b, [hl]
    dec de
    inc l
    ld a, [hl]
    ld a, a
    inc hl
    ld b, h
    ld b, a
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, [hl]
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, [hl]
    ld a, a
    ld bc, $0101
    ld bc, $0101
    ld bc, $7f01
    inc l
    dec de
    inc l
    dec de
    ld a, [hl]
    ld a, a
    dec de
    dec h
    ld bc, $2401
    dec h
    inc h
    dec de
    ld a, a
    dec de
    dec de
    ld hl, $571b
    ld [bc], a
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    ld a, h
    ld a, l
    ld a, h
    ld a, h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    inc d
    inc b
    inc b
    jr nc, jr_012_6526

    bit 4, h
    ret z

    ld h, h
    nop
    ld d, $65
    jp Jump_000_3c29


    call Call_000_0864
    ld a, [$d856]
    bit 0, a
    jr nz, jr_012_64f8

    ld hl, $6501
    call Call_000_3c36
    ld bc, $c601
    call Call_000_3e3f
    jr nc, jr_012_64f0

    ld hl, $6506
    call Call_000_3c36
    ld hl, $d856
    set 0, [hl]
    jr jr_012_64fe

jr_012_64f0:
    ld hl, $6511
    call Call_000_3c36
    jr jr_012_64fe

jr_012_64f8:
    ld hl, $650c
    call Call_000_3c36

jr_012_64fe:
    jp Jump_000_23d2


    rla
    sbc h
    ld c, c
    daa
    ld d, b
    rla
    dec sp
    ld c, d
    daa
    dec bc
    ld d, b
    rla
    ld c, a
    ld c, d
    daa
    ld d, b
    rla
    ld a, [$274a]
    ld d, b
    rla
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $db
    rlca
    inc bc
    ld b, $db
    nop
    ld bc, $0727
    rlca
    rst $38

jr_012_6526:
    ret nc

    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld d, $12
    inc de
    ld d, $02
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    inc c
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_012_7851:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
