; disasSembly of "yell.gbc"
SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    nop
    add hl, bc
    ld a, [bc]
    ld l, c
    ld b, b
    ld a, [hl+]
    ld b, e
    jp nz, Jump_000_0942

    jr nz, jr_007_402d

    ld d, d
    db $eb
    add $0a
    ld a, [bc]
    ld e, c
    nop
    cp c
    ret


    rra
    ld a, l
    ld b, c
    dec h
    rst $00
    add hl, bc
    ld [hl-], a
    nop
    nop
    ld hl, $22c7
    ld b, b
    ld b, e
    dec b
    inc bc
    ld b, $01
    and l
    inc bc
    ld [de], a
    nop
    and [hl]
    add hl, bc

jr_007_402d:
    ld b, $00
    and a
    dec bc
    dec bc
    nop
    xor e
    dec bc
    rrca
    nop
    xor h
    dec b
    dec b
    add hl, bc
    inc bc
    dec bc
    db $10
    inc b
    dec bc
    inc c
    dec b
    dec bc
    add hl, bc
    ld b, $03
    dec c
    rlca
    ld [bc], a
    dec c
    add hl, bc
    db $10
    cp $02
    ld bc, $0a0b
    ld [de], a
    rst $38
    rst $38
    ld [bc], a
    inc c
    rst $00
    inc bc
    ld b, $12
    rst $00
    inc bc
    ld [de], a
    inc a
    rst $00
    add hl, bc
    ld b, $4e
    rst $00
    dec bc
    dec bc
    ld d, b
    rst $00
    dec bc
    rrca
    jr @+$66

    jr nz, jr_007_407a

    ld hl, $7b7b
    inc c
    dec c
    ld c, $18
    ld h, h
    scf
    ld a, [hl-]
    ld a, [hl]
    ld a, e
    ld a, c

jr_007_407a:
    db $10
    ld de, $1812
    ld h, h
    ld a, e
    ld a, e
    ld a, c
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    jr jr_007_40ed

    jr nz, jr_007_4098

    ld hl, $7b7b
    ld a, e
    ld a, e
    ld a, e
    jr jr_007_40f7

    scf
    ld a, [hl-]
    ld a, [hl]
    jr nz, jr_007_40b9

jr_007_4098:
    jr nz, jr_007_40bb

    ld a, e
    jr jr_007_4101

    ld a, e
    ld a, e
    ld a, c
    ld a, h
    ld [hl], d
    ld a, h
    ld [hl], e
    ld a, e
    jr jr_007_40d4

    ld e, $7b
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    jr jr_007_40f4

    dec l
    rra
    rra
    rra
    rra
    rra
    rra
    rra

jr_007_40b9:
    inc d
    ld l, e

jr_007_40bb:
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    nop
    ld [de], a
    ld a, [bc]
    db $fc
    ld b, b
    ld e, h
    ld b, e
    ld e, b
    ld b, e
    inc c
    ld bc, $4520
    add sp, -$3a
    db $10
    inc d

jr_007_40d4:
    inc hl
    ld a, [bc]
    cp l
    ret z

    nop
    db $fd
    ld b, d
    dec sp
    ret z

    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $e5
    ld b, b
    dec bc
    nop
    ld bc, $091b
    inc bc
    ld [bc], a
    inc b

jr_007_40ed:
    inc e
    add hl, bc
    cp $01
    ld bc, $1104

jr_007_40f4:
    inc de
    cp $02

jr_007_40f7:
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld a, [bc]
    ld c, l
    ld d, d
    ld d, d
    ld c, a

jr_007_4101:
    ld sp, $5250
    ld d, d
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld sp, $0a0a
    ld [hl], h
    ld c, [hl]
    ld a, [bc]
    ld c, l
    rlca
    rlca
    ld b, d
    ld a, [de]
    ld a, [de]
    ld sp, $4e31
    ld a, [bc]
    ld l, [hl]
    ld [hl], h
    ld [hl], h
    ld l, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, l
    ld a, [bc]
    ld l, [hl]
    rlca
    rlca
    ld b, d
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld sp, $3131
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld l, a
    rlca
    rlca
    ld l, a
    inc e
    dec bc
    dec bc
    ld l, l
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld sp, $0b0b
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld sp, $3131
    ld sp, $7474
    ld c, [hl]
    ld a, [bc]
    ld c, l
    cpl
    ld a, [de]
    cpl
    rlca
    rlca
    rlca
    rlca
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld sp, $3131
    ld sp, $3131
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    dec bc
    dec bc
    ld a, [de]
    ld c, [hl]
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    dec bc
    dec bc
    ld sp, $0a4e
    ld c, l
    ld a, [de]
    ld sp, $1a08
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld c, [hl]
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    dec bc
    dec bc
    ld sp, $0b0a
    dec bc
    ld l, l
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld [hl], h
    ld sp, $0b0b
    ld [hl], h
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld d, c
    ld d, c
    ld h, e
    dec bc
    ld h, d
    ld d, c
    ld d, c
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    dec bc
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld l, l
    ld b, $03
    inc bc
    rlca
    ld de, $1415
    db $10
    ld [$0500], sp
    add hl, bc
    ld c, $0f
    inc c
    dec c
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, b
    ld l, e
    ld l, e
    dec b
    ld l, c
    ld l, d
    dec b
    dec b
    dec b
    ld l, l
    ld l, [hl]
    ld l, b
    ld l, b
    dec b
    ld l, b
    ld l, b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    inc b
    ld c, $05
    add hl, bc
    rrca
    ld bc, $0f02
    rrca
    inc c
    dec c
    rrca
    ld b, $0b
    rrca
    rlca
    dec b
    ld [de], a
    inc de
    add hl, bc
    rrca
    inc d
    dec d
    rrca
    rrca
    jr jr_007_4212

    rrca
    ld b, $0b
    rrca
    rlca
    ld a, [de]
    rra
    ld d, $17
    ld e, $1c
    dec e
    dec de
    rrca
    jr nz, jr_007_422a

    rrca
    ld b, $0b
    dec de
    ld [hl+], a
    ld a, l
    ld a, l
    ld a, l
    ld a, l

jr_007_4212:
    ld b, $01
    ld bc, $067d
    ld bc, $7d27
    ld a, [bc]
    inc h
    inc b
    ld a, l
    call Call_000_16dd
    call Call_000_3e03
    call Call_000_3683
    call Call_000_36a3

jr_007_422a:
    ld hl, $425f
    call Call_000_3c36
    ld a, $02
    ld [$cd6b], a
    ld hl, $c43a
    ld bc, $080f
    ld a, $07
    ld [$d12b], a
    ld a, $14
    ld [$d124], a
    call Call_000_3010
    ld a, $00
    ld [$cd6b], a
    ld a, [$cc26]
    and a
    jp z, Jump_000_1d10

    ld b, $1c
    ld hl, $7e80
    call Call_000_3e84
    jp Jump_000_1d10


    rla
    jp hl


    ld b, b
    jr z, @+$52

    ld hl, $d72f
    ld a, [hl]
    push af
    set 6, [hl]
    ld hl, $42bd
    call Call_000_3c36
    pop af
    ld [$d72f], a
    ld hl, $cf7a
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    ld a, [$cc36]
    push af
    xor a
    ld [$cc26], a
    ld [$cc36], a
    ld [$cf92], a
    ld a, $04
    ld [$cf93], a
    call Call_000_2ae0
    pop bc
    ld a, b
    ld [$cc36], a
    ret c

    ld hl, $d125
    set 7, [hl]
    ld hl, $cc5b
    ld a, [$cf91]
    add a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    ld hl, $d3ae
    call Call_007_42b6

Call_007_42b6:
    inc hl
    inc hl
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ret


    rla
    nop
    ld b, c
    jr z, @+$52

    call Call_000_3c29
    ld hl, $d125
    set 5, [hl]
    ld hl, $d795
    res 0, [hl]
    ld hl, $d7a2
    res 1, [hl]
    ld hl, $42dd
    ld a, [$d638]
    jp Jump_000_3d93


    pop hl
    ld b, d
    inc e
    ld b, e
    ld b, $2b
    call Call_000_3422
    ret nz

    ld a, [$d360]
    cp $04
    ret nz

    ld a, [$d361]
    cp $12
    ret nz

    ld a, $08
    ld [$d527], a
    ld a, $08
    ldh [$8c], a
    call Call_000_2817
    xor a
    ldh [$b4], a
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    call Call_000_3415
    xor a
    ld [$c109], a
    ld [$cd6b], a
    ld a, $01
    ld [$d638], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    ld a, $00
    ld [$d638], a
    ret


    ccf
    ld b, e
    ld b, h
    ld b, e
    ld c, c
    ld b, e
    push hl
    inc hl
    ld [$4e23], a
    ld b, e
    ld d, e
    ld b, e
    ld a, [hl-]
    ld b, e
    rla
    ld a, a
    ld h, h
    dec l
    ld d, b
    rla
    sub [hl]
    ld h, h
    dec l
    ld d, b
    rla
    jp c, Jump_000_2d64

    ld d, b
    rla
    ld d, $65
    dec l
    ld d, b
    rla
    ld c, b
    ld h, l
    dec l
    ld d, b
    rla
    ld d, d
    ld h, l
    dec l
    ld d, b
    call Call_000_3c29
    ret


    ld h, d
    ld b, e
    ld l, [hl]
    ld b, e
    ld a, d
    ld b, e
    ld [$3c06], sp
    ld hl, $5ad2
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5b0f
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5b1b
    call Call_000_3e84
    jp Jump_000_23d2


    dec b
    ld b, $05
    ret nz

    ld b, c
    db $10
    ld c, c
    sub d
    ld b, e
    nop
    ld [hl+], a
    ld c, h
    ld a, [$d74a]
    bit 6, a
    call nz, Call_007_4904
    ld a, $01
    ld [$cf0c], a
    xor a
    ld [$cc3c], a
    ld hl, $43ad
    ld a, [$d5ef]
    call Call_000_3d93
    ret


    db $db
    ld b, e
    ei
    ld b, e
    rrca
    ld b, h
    cpl
    ld b, h
    ld e, a
    ld b, h
    add a
    ld b, h
    jp z, $0644

    ld b, l
    inc d
    ld b, l
    add hl, hl
    ld b, l
    add [hl]
    ld b, l
    cp b
    ld b, l
    adc $45
    ld a, [de]
    ld b, [hl]
    ld d, c
    ld b, [hl]
    sub d
    ld b, [hl]
    adc $46
    dec bc
    ld b, a
    dec l
    ld b, a
    ld a, $47
    and h
    ld b, a
    ld h, [hl]
    ld c, b
    sub [hl]
    ld c, b
    ld a, [$d74a]
    bit 7, a
    ret z

    ld a, [$cf10]
    and a
    ret nz

    ld a, $30
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld hl, $d72d
    res 4, [hl]
    ld a, $01
    ld [$d5ef], a
    ret


    ld a, $06
    ldh [$8c], a
    ld de, $440b
    call Call_000_363d
    ld a, $02
    ld [$d5ef], a
    ret


    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $30
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $2d
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, $03
    ld [$d5ef], a
    ret


jr_007_442f:
    call Call_000_3ddb
    ld hl, $ccd3
    ld de, $445c
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_3488
    ld a, $03
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_3488
    ld a, $04
    ld [$d5ef], a
    ret


    ld b, b
    ld [$faff], sp
    jr c, jr_007_442f

    and a
    ret nz

    ld hl, $d746
    set 0, [hl]
    ld hl, $d74a
    set 0, [hl]
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_3488
    ld hl, $d732
    res 1, [hl]
    call Call_000_216b
    ld a, $05
    ld [$d5ef], a
    ret


    ld hl, $d74a
    set 1, [hl]
    ld a, $fc
    ld [$cd6b], a
    ld a, $0d
    ldh [$8c], a
    call Call_000_2817
    call Call_000_3ddb
    ld a, $0e
    ldh [$8c], a
    call Call_000_2817
    call Call_000_3ddb
    ld a, $02
    ld [$c111], a
    ld a, $04
    ld [$c119], a
    ld a, $0f
    ldh [$8c], a
    call Call_000_2817
    call Call_000_3ddb
    ld a, $10
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cd6b], a
    ld a, $06
    ld [$d5ef], a
    ret


    ld a, [$d360]
    cp $06
    ret nz

    ld a, $03
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_3488
    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_3488
    call Call_000_231c
    ld a, $0a
    ldh [$8c], a
    call Call_000_2817
    ld a, $01
    ld [$cd38], a
    ld a, $40
    ld [$ccd3], a
    call Call_000_3415
    ld a, $08
    ld [$d527], a
    ld a, $07
    ld [$d5ef], a
    ret


    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    ld a, $06
    ld [$d5ef], a
    ret


    ld a, $01
    ldh [$8c], a
    ld de, $4524
    call Call_000_363d
    ld a, $09
    ld [$d5ef], a
    ret


    nop
    rlca
    rlca
    rlca
    rst $38
    ld a, [$d72f]
    bit 0, a
    jr nz, jr_007_4564

    ld a, $2c
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_3488
    ld a, $01
    ld [$d714], a
    ld a, $66
    ld [$d11d], a
    call Call_000_2e93
    ld a, $fc
    ld [$cd6b], a
    ld a, $11
    ldh [$8c], a
    call Call_000_2817
    ld a, $0a
    ld [$d5ef], a
    ret


jr_007_4564:
    ld a, [$d360]
    cp $04
    ret nz

    ld a, [$cf0f]
    cp $01
    ret nz

    ld a, $02
    ld [$d527], a
    ld a, $02
    ld [$cd38], a
    ld a, $10
    ld [$ccd3], a
    ld [$ccd4], a
    call Call_000_3415
    ret


    ld a, [$d360]
    cp $04
    jr z, jr_007_4599

    ld a, $01
    ld [$cd38], a
    ld a, $20
    ld [$ccd3], a
    jr jr_007_45a6

jr_007_4599:
    ld hl, $ccd3
    ld de, $45af
    call Call_000_3509
    dec a
    ld [$cd38], a

jr_007_45a6:
    call Call_000_3415
    ld a, $0b
    ld [$d5ef], a
    ret


    ld b, b
    ld [bc], a
    jr nz, @+$05

    add b
    ld bc, $0120
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $12
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cd6b], a
    ld a, $0c
    ld [$d5ef], a
    ret


    ld a, [$d360]
    cp $06
    ret nz

    ld a, $08
    ld [$d527], a
    ld a, $01
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_3488
    ld c, $02
    ld a, $de
    call Call_000_2211
    ld a, $0b
    ldh [$8c], a
    call Call_000_2817
    ld a, $01
    ldh [$9b], a
    ld a, $01
    swap a
    ldh [$95], a
    ld a, $22
    call Call_000_3eb4
    ldh a, [$95]
    dec a
    ldh [$95], a
    ld a, $20
    call Call_000_3eb4
    ld de, $cc97
    ld a, $01
    ldh [$8c], a
    call Call_000_363d
    ld a, $0d
    ld [$d5ef], a
    ret


    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $01
    ld [$cf13], a
    call Call_000_328b
    ld a, $e1
    ld [$d058], a
    ld a, $01
    ld [$d05c], a
    ld hl, $4bae
    ld de, $4bb3
    call Call_000_32f0
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    xor a
    ld [$cd6b], a
    ld a, $08
    ld [$d527], a
    ld a, $0e
    ld [$d5ef], a
    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$cf0b]
    and a
    ld b, $03
    jr nz, jr_007_4660

    ld b, $02

jr_007_4660:
    ld a, b
    ld [$d714], a
    ld a, $fc
    ld [$cd6b], a
    ld a, $08
    ld [$d527], a
    call Call_000_231c
    ld a, $01
    ld [$cf13], a
    call Call_000_3295
    ld a, $02
    ld [$c111], a
    xor a
    ld [$c119], a
    ld a, $07
    call Call_000_3eb4
    ld hl, $d74a
    set 3, [hl]
    ld a, $0f
    ld [$d5ef], a
    ret


    ld c, $14
    call Call_000_372f
    ld a, $0c
    ldh [$8c], a
    call Call_000_2817
    ld b, $02
    ld hl, $59bd
    call Call_000_3e84
    ld a, $01
    ldh [$8c], a
    ld de, $46c6
    call Call_000_363d
    ld a, [$d361]
    cp $04
    jr nz, jr_007_46bb

    ld a, $c0
    jr jr_007_46bd

jr_007_46bb:
    ld a, $80

jr_007_46bd:
    ld [$cc5b], a
    ld a, $10
    ld [$d5ef], a
    ret


    ldh [rP1], a
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    ld a, [$d72f]
    bit 0, a
    jr nz, jr_007_46ed

    ld a, $fc
    ld [$cd6b], a
    ld a, $2b
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_216b
    ld a, $11
    ld [$d5ef], a
    ret


jr_007_46ed:
    ld a, [$cf0f]
    cp $05
    jr nz, jr_007_4703

    ld a, [$d361]
    cp $04
    jr nz, jr_007_46ff

    ld a, $0c
    jr jr_007_4707

jr_007_46ff:
    ld a, $08
    jr jr_007_4707

jr_007_4703:
    cp $04
    ret nz

    xor a

jr_007_4707:
    ld [$c109], a
    ret


    ld a, $04
    ld [$c109], a
    ld a, $02
    ld [$d430], a
    ld b, $3f
    ld hl, $44fa
    call Call_000_3e84
    call Call_000_1525
    ld a, $1a
    ldh [$8c], a
    call Call_000_2817
    ld a, $12
    ld [$d5ef], a
    ret


    ld a, $1b
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$cd6b], a
    ld a, $16
    ld [$d5ef], a
    ret


    xor a
    ldh [$b4], a
    call Call_000_3c29
    call Call_000_2233
    ld b, $02
    ld hl, $59bd
    call Call_000_3e84
    ld a, $13
    ldh [$8c], a
    call Call_000_2817
    ld hl, $5be0

Jump_007_4759:
    ld b, $3c
    call Call_000_3e84
    call Call_007_48b9
    ld a, $2b
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, [$cd37]
    ld [$d156], a
    ld b, $00
    ld c, a
    ld hl, $cc97
    ld a, $40
    call Call_000_166e
    ld [hl], $ff
    ld a, $01
    ldh [$8c], a
    ld de, $cc97
    call Call_000_363d
    ld a, $14
    ld [$d5ef], a
    ret


Call_007_478e:
    ld a, $01
    ldh [$8c], a
    ld a, $04
    ldh [$8d], a
    call Call_000_3488
    ld a, $06
    ldh [$8c], a
    xor a
    ldh [$8d], a
    call Call_000_3488
    ret


    ld a, [$d72f]
    bit 0, a
    ret nz

    call Call_000_3c29
    call Call_000_216b
    ld a, $fc
    ld [$cd6b], a
    call Call_007_478e
    ld a, $14
    ldh [$8c], a
    call Call_000_2817
    call Call_000_1e64
    call Call_007_478e
    ld a, $15
    ldh [$8c], a
    call Call_000_2817
    call Call_000_1e64
    call Call_007_478e
    ld a, $16
    ldh [$8c], a
    call Call_000_2817
    call Call_000_1e64
    ld a, $17
    ldh [$8c], a
    call Call_000_2817
    call Call_000_3ddb
    ld a, $2e
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $2f
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_007_478e
    ld a, $18
    ldh [$8c], a
    call Call_000_2817
    ld a, $01
    ldh [$8c], a
    ld a, $0c
    ldh [$8d], a
    call Call_000_3488
    call Call_000_3ddb
    ld a, $19
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d74a
    set 5, [hl]
    ld a, $01
    ld [$d5f3], a
    ld hl, $d74d
    set 0, [hl]
    ld a, $01
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $03
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld a, [$d156]
    ld b, $00
    ld c, a
    ld hl, $cc97
    xor a
    call Call_000_166e
    ld [hl], $ff
    call Call_000_2233
    ld b, $02
    ld hl, $59bd
    call Call_000_3e84
    ld a, $01
    ldh [$8c], a
    ld de, $cc97
    call Call_000_363d
    ld a, $15
    ld [$d5ef], a
    ret


    ld a, [$d72f]
    bit 0, a
    ret nz

    call Call_000_216b
    ld a, $2b
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $d7ea
    set 0, [hl]
    res 1, [hl]
    set 7, [hl]
    ld a, $23
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    xor a
    ld [$cd6b], a
    ld a, $16
    ld [$d5ef], a
    ret


    ret


Call_007_4897:
    ld hl, $d31d
    ld bc, $0000

jr_007_489d:
    ld a, [hl+]
    cp $ff
    ret z

    cp $46
    jr z, jr_007_48a9

    inc hl
    inc c
    jr jr_007_489d

jr_007_48a9:
    ld hl, $d31c
    ld a, c
    ld [$cf91], a
    ld a, $01
    ld [$cf95], a
    call Call_000_2abd
    ret


Call_007_48b9:
    ld a, $7c
    ldh [$eb], a
    ld a, $08
    ldh [$ee], a
    ld a, [$d360]
    cp $03
    jr nz, jr_007_48d3

    ld a, $04
    ld [$cd37], a
    ld a, $30
    ld b, $0b
    jr jr_007_48f6

jr_007_48d3:
    cp $01
    jr nz, jr_007_48e2

    ld a, $02
    ld [$cd37], a
    ld a, $30
    ld b, $09
    jr jr_007_48f6

jr_007_48e2:
    ld a, $03
    ld [$cd37], a
    ld b, $0a
    ld a, [$d361]
    cp $04
    jr nz, jr_007_48f4

    ld a, $40
    jr jr_007_48f6

jr_007_48f4:
    ld a, $20

jr_007_48f6:
    ldh [$ec], a
    ld a, b
    ldh [$ed], a
    ld a, $01
    ld [$cf13], a
    call Call_000_3295
    ret


Call_007_4904:
    ld hl, $4946
    ld a, l
    ld [$d36b], a
    ld a, h
    ld [$d36c], a
    ret


    ld e, b
    ld c, c
    adc h
    ld c, c
    jp nz, $a449

    ld c, d
    and h
    ld c, d
    or e
    ld c, d
    cp b
    ld c, d
    inc de
    ld c, h
    inc de
    ld c, h
    sub b
    ld c, e
    sbc a
    ld c, e
    cp b
    ld c, e
    rst $00
    ld c, d
    sub $4a
    push hl
    ld c, d
    db $f4
    ld c, d
    inc bc
    ld c, e
    ccf
    ld c, e
    rst $28
    ld c, e
    db $f4
    ld c, e
    ld sp, hl
    ld c, e
    cp $4b
    inc bc
    ld c, h
    add hl, bc
    ld c, h
    ld c, $4c
    rst $00
    ld c, e
    ldh [rWX], a
    ld e, b
    ld c, c
    adc h
    ld c, c
    jp nz, $a449

    ld c, d
    and h
    ld c, d
    or e
    ld c, d
    cp b
    ld c, d
    inc de
    ld c, h
    inc de
    ld c, h
    ld [$4afa], sp
    rst $10
    bit 0, a
    jr nz, jr_007_4968

    ld hl, $497d
    call Call_000_3c36
    jr jr_007_497a

jr_007_4968:
    bit 2, a
    jr nz, jr_007_4974

    ld hl, $4982
    call Call_000_3c36
    jr jr_007_497a

jr_007_4974:
    ld hl, $4987
    call Call_000_3c36

jr_007_497a:
    jp Jump_000_23d2


    rla
    adc a
    ld b, [hl]
    ld a, [hl+]
    ld d, b
    rla
    db $db
    ld b, [hl]
    ld a, [hl+]
    ld d, b
    rla
    ld b, $47
    ld a, [hl+]
    ld d, b
    ld [$013e], sp
    ld [$cc3c], a
    ld a, [$d74a]
    bit 1, a
    jr nz, jr_007_49ac

    ld a, $00
    ld [$cc3c], a
    ld hl, $49a7
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    dec l
    ld b, a
    ld a, [hl+]
    ld d, b

jr_007_49ac:
    ld a, $01
    ld [$cd4f], a
    xor a
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    ld a, $08
    ld [$d5ef], a
    jp Jump_000_23d2


    ld [$46fa], sp
    rst $10
    bit 6, a
    jr nz, jr_007_49d9

    ld hl, $d2f6
    ld b, $13
    call Call_000_2a81
    ld a, [$d11d]
    cp $02
    jr c, jr_007_49ec

jr_007_49d9:
    ld hl, $4a9f
    call Call_000_3c36
    ld a, $01
    ld [$cc3c], a
    ld a, $56
    call Call_000_3eb4
    jp Jump_007_4a6f


jr_007_49ec:
    ld b, $04
    call Call_000_3422
    jr nz, jr_007_4a69

    ld hl, $d2f6
    ld b, $13
    call Call_000_2a81
    ld a, [$d11d]
    cp $02
    jr nc, jr_007_4a69

    ld a, [$d7ea]
    bit 5, a
    jr nz, jr_007_4a52

    ld a, [$d74a]
    bit 5, a
    jr nz, jr_007_4a4a

    bit 3, a
    jr nz, jr_007_4a2b

    ld a, [$d72d]
    bit 3, a
    jr nz, jr_007_4a23

    ld hl, $4a72
    call Call_000_3c36
    jr jr_007_4a6f

jr_007_4a23:
    ld hl, $4a77
    call Call_000_3c36
    jr jr_007_4a6f

jr_007_4a2b:
    ld b, $46
    call Call_000_3422
    jr nz, jr_007_4a3a

    ld hl, $4a7c
    call Call_000_3c36
    jr jr_007_4a6f

jr_007_4a3a:
    ld hl, $4a81
    call Call_000_3c36
    call Call_007_4897
    ld a, $13
    ld [$d5ef], a
    jr jr_007_4a6f

jr_007_4a4a:
    ld hl, $4a8b
    call Call_000_3c36
    jr jr_007_4a6f

jr_007_4a52:
    ld hl, $d74a
    bit 4, [hl]
    set 4, [hl]
    jr nz, jr_007_4a69

    ld bc, $0405
    call Call_000_3e3f
    ld hl, $4a90
    call Call_000_3c36
    jr jr_007_4a6f

jr_007_4a69:
    ld hl, $4a9a
    call Call_000_3c36

Jump_007_4a6f:
jr_007_4a6f:
    jp Jump_000_23d2


    rla
    ld d, h
    ld b, a
    ld a, [hl+]
    ld d, b
    rla
    ld l, a
    ld b, a
    ld a, [hl+]
    ld d, b
    rla
    ret nc

    ld b, a
    ld a, [hl+]
    ld d, b
    rla
    ld [bc], a
    ld c, b
    ld a, [hl+]
    ld de, $a817
    ld c, b
    ld a, [hl+]
    ld d, b
    rla
    ld de, $2a49
    ld d, b
    rla
    add hl, sp
    ld c, c
    ld a, [hl+]
    ld de, $be17
    ld c, c
    ld a, [hl+]
    ld d, b
    rla
    ld a, l
    ld c, d
    ld a, [hl+]
    ld d, b
    rla
    ret z

    ld c, d
    ld a, [hl+]
    ld d, b
    ld [$ae21], sp
    ld c, d
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    dec d
    ld c, e
    ld a, [hl+]
    ld d, b
    rla
    ld b, a
    ld c, e
    ld a, [hl+]
    ld d, b
    ld [$c221], sp
    ld c, d
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld c, d
    ld c, e
    ld a, [hl+]
    ld d, b
    ld [$d121], sp
    ld c, d
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    sbc d
    ld c, e
    ld a, [hl+]
    ld d, b
    ld [$e021], sp
    ld c, d
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    cp [hl]
    ld c, e
    ld a, [hl+]
    ld d, b
    ld [$ef21], sp
    ld c, d
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    and d
    ld c, h
    ld a, [hl+]
    ld d, b
    ld [$fe21], sp
    ld c, d
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    jp nz, Jump_000_2a4c

    ld d, b
    ld [$2521], sp
    ld c, e
    call Call_000_3c36
    ld hl, $4b2a
    call Call_000_3c36
    ld hl, $4b30
    call Call_000_3c36
    ld hl, $4b35
    call Call_000_3c36
    ld hl, $4b3a
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    rst $28
    ld c, h
    ld a, [hl+]
    ld d, b
    rla
    db $10
    ld c, l
    ld a, [hl+]
    ld de, $1750
    daa
    ld c, l
    ld a, [hl+]
    ld d, b
    rla
    ld b, h
    ld c, l
    ld a, [hl+]
    ld d, b
    rla
    ld h, c
    ld c, l
    ld a, [hl+]
    ld d, b
    ld [$543e], sp
    ld [$d716], a
    ld [$d11d], a
    call Call_000_2e93
    ld a, $01
    ld [$cc3c], a
    ld hl, $4b85
    call Call_000_3c36
    ld hl, $4b8a
    call Call_000_3c36
    xor a
    ld [$cc49], a
    ld a, $05
    ld [$d126], a
    ld a, $54
    ld [$d11d], a
    ld [$cf90], a
    call Call_000_391c
    ld a, $a3
    ld [$d171], a
    call Call_000_152d
    ld hl, $d74a
    set 2, [hl]
    ld hl, $d72d
    set 3, [hl]
    jp Jump_000_23d2


    rla
    jp nc, $2a4d

    ld d, b
    rla
    dec a
    ld c, [hl]
    ld a, [hl+]
    ld de, $0850
    ld hl, $4b9a
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld d, e
    ld c, [hl]
    ld a, [hl+]
    ld d, b
    ld [$a921], sp
    ld c, e
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld [hl], b
    ld c, [hl]
    ld a, [hl+]
    ld d, b
    rla
    xor a
    ld c, [hl]
    ld a, [hl+]
    ld d, b
    rla
    db $dd
    ld c, [hl]
    ld a, [hl+]
    ld d, b
    ld [$c221], sp
    ld c, e
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ei
    ld c, [hl]
    ld a, [hl+]
    ld d, b
    ld [$011e], sp
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ld hl, $4bdb
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld c, d
    ld c, a
    ld a, [hl+]
    ld d, b
    ld [$ea21], sp
    ld c, e
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld d, [hl]
    ld c, a
    ld a, [hl+]
    ld d, b
    rla
    jr nz, jr_007_4c42

    ld a, [hl+]
    ld d, b
    rla
    inc l
    ld d, b
    ld a, [hl+]
    ld d, b
    rla
    ld h, d
    ld d, b
    ld a, [hl+]
    ld d, b
    rla
    or b
    ld d, b
    ld a, [hl+]
    ld d, b
    rla
    ld [hl-], a
    ld d, c
    ld a, [hl+]
    ld de, $1750
    ld l, h
    ld d, c
    ld a, [hl+]
    ld d, b
    rla
    ld c, c
    ld d, d
    ld a, [hl+]
    ld d, b
    ld [$1d21], sp
    ld c, h
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    di
    ld d, d
    ld a, [hl+]
    ld d, b
    inc bc
    ld [bc], a
    dec bc
    inc b
    ld [bc], a
    rst $38
    dec bc
    dec b
    ld [bc], a
    rst $38
    nop
    add hl, bc
    ld [bc], a
    rlca
    ld [$ffff], sp
    ld b, c
    pop hl
    ld bc, $0747
    dec bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    ld b, $09
    rst $38
    ret nc

    inc bc

jr_007_4c42:
    ld c, e
    dec b
    ld b, $ff
    rst $38
    inc b
    ld c, e
    dec b
    rlca
    rst $38
    rst $38
    dec b
    inc bc
    ld c, $09
    rst $38
    pop de
    ld b, $0d
    dec c
    dec b
    cp $01
    rlca
    jr nz, jr_007_4c6a

    ld b, $ff
    rst $38
    ld [$0e20], sp
    inc c
    rst $38
    rst $38
    add hl, bc
    dec l
    rst $00
    dec bc
    inc b

jr_007_4c6a:
    dec l
    rst $00
    dec bc
    dec b
    ld [bc], a
    inc b
    inc b
    ld e, l
    ld c, l
    dec c
    ld c, l
    ld a, d
    ld c, h
    nop
    scf
    ld c, l
    call Call_007_4c8a
    call Call_000_3c29
    ld hl, $4ca2
    ld a, [$d60c]
    call Call_000_3d93
    ret


Call_007_4c8a:
    ld a, [$d74d]
    bit 0, a
    jr nz, jr_007_4c96

    ld hl, $4d0d
    jr jr_007_4c99

jr_007_4c96:
    ld hl, $4d17

jr_007_4c99:
    ld a, l
    ld [$d36b], a
    ld a, h
    ld [$d36c], a
    ret


    xor b
    ld c, h
    call $ed4c
    ld c, h
    call Call_000_231c
    ld a, $04
    ldh [$8c], a
    call Call_000_2817
    ld hl, $ccd3
    ld de, $4cc8
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld a, $01
    ld [$d60c], a
    ret


    jr nz, jr_007_4ccb

    ld b, b

jr_007_4ccb:
    ld [bc], a
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    ld a, $05
    ldh [$8c], a
    call Call_000_2817
    ld bc, $4601
    call Call_000_3e3f
    ld hl, $d74d
    set 1, [hl]
    ld a, $02
    ld [$d60c], a
    ret


    ld hl, $d74b
    bit 5, [hl]
    ret z

    bit 4, [hl]
    set 4, [hl]
    ret nz

    ld a, $03
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $02
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ret


    dec e
    ld c, l
    dec l
    ld c, l
    ld [hl-], a
    ld c, l
    ld [hl+], a
    ld c, l
    daa
    ld c, l
    dec sp
    inc hl
    dec l
    ld c, l
    ld [hl-], a
    ld c, l
    rla
    ld a, $57
    ld a, [hl+]
    ld d, b
    rla
    ld h, b
    ld d, a
    ld a, [hl+]
    ld d, b
    rla
    add c
    ld d, a
    ld a, [hl+]
    ld de, $1750
    db $dd
    ld d, a
    ld a, [hl+]
    ld d, b
    rla
    dec b
    ld e, b
    ld a, [hl+]
    ld d, b
    nop
    ld [bc], a
    rlca
    inc bc
    ld bc, $07ff
    inc b
    ld bc, $00ff
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $0904
    add hl, bc
    cp $01
    ld [bc], a
    rlca
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld [de], a
    inc de
    inc de
    add hl, bc
    dec h
    rrca
    inc d
    inc d
    jr jr_007_4d80

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
    ld [$0404], sp
    xor $41
    ld a, l
    ld c, l
    ld a, c
    ld c, l
    nop
    and b
    ld c, l
    call Call_000_3c29
    ret


    add e
    ld c, l
    adc b

jr_007_4d80:
    ld c, l
    sub h
    ld c, l
    rla
    ld [hl-], a
    ld e, b
    ld a, [hl+]
    ld d, b
    ld [$3c06], sp
    ld hl, $5c0f
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $5c03
    call Call_000_3e84
    jp Jump_000_23d2


    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    dec e
    add hl, bc
    rlca
    rst $38
    pop de
    ld bc, $0506
    ld [$d0ff], sp
    ld [bc], a
    ld [$0809], sp
    rst $38
    pop de
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    sub $4d
    db $d3
    ld c, l
    nop
    inc b
    ld c, [hl]
    nop
    jp Jump_000_3c29


    sbc $4d
    db $e3
    ld c, l
    add sp, $4d
    rst $38
    ld c, l
    rla
    ret z

    ld e, b
    ld a, [hl+]
    ld d, b
    rla
    ld e, $59
    ld a, [hl+]
    ld d, b
    ld [$fa21], sp
    ld c, l
    call Call_000_3c36
    ld a, $05
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


    rla
    jr c, jr_007_4e56

    ld a, [hl+]
    ld d, b
    rla
    ld c, d
    ld e, c
    ld a, [hl+]
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    rst $38
    rlca
    inc bc
    inc bc
    rst $38
    nop
    inc b
    inc [hl]
    rlca
    add hl, bc
    rst $38
    rst $38
    ld bc, $0808
    dec b
    cp $01
    ld [bc], a
    add hl, bc
    add hl, bc
    add hl, bc
    cp $02
    inc bc
    ld c, h
    inc b
    ld [$ffff], sp
    inc b
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    ld b, b
    ld c, [hl]
    inc a
    ld c, [hl]
    nop
    ld h, b
    ld c, [hl]
    call Call_000_3c29
    ret


    ld b, [hl]
    ld c, [hl]
    ld d, [hl]
    ld c, [hl]
    ld e, e
    ld c, [hl]
    rla
    cp a
    ld l, e
    ld a, [hl+]
    ld [$033e], sp
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


jr_007_4e56:
    rla
    jp nc, $2a6b

    ld d, b
    rla
    ldh [rOCPD], a
    ld a, [hl+]
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    rst $38
    rlca
    inc bc
    inc bc
    rst $38
    nop
    inc bc
    dec b
    add hl, bc
    ld [$d2ff], sp
    ld bc, $0935
    rlca
    rst $38
    db $d3
    ld [bc], a
    ld a, [bc]
    ld b, $05
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
    ld [$0404], sp
    sbc $41
    sub l
    ld c, [hl]
    sub d
    ld c, [hl]
    nop
    and e
    ld c, [hl]
    jp Jump_000_3c29


    sbc c
    ld c, [hl]
    sbc [hl]
    ld c, [hl]
    rla
    ld b, [hl]
    ld l, l
    ld a, [hl+]
    ld d, b
    rla
    sbc [hl]
    ld l, l
    ld a, [hl+]
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    rst $38
    rlca
    inc bc
    dec b
    rst $38
    nop
    ld [bc], a
    dec bc
    rlca
    ld b, $ff
    db $d3
    ld bc, $0904
    ld [$ffff], sp
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    cp $41
    db $d3
    ld c, [hl]
    rst $08
    ld c, [hl]
    nop
    add hl, bc
    ld c, a
    call Call_000_3c29
    ret


    reti


    ld c, [hl]
    rst $38
    ld c, [hl]
    inc b
    ld c, a
    ld [$e406], sp
    ld a, $1c
    call Call_000_3eb4
    and b
    jr z, jr_007_4eec

    ld hl, $4efa
    call Call_000_3c36
    jr jr_007_4ef2

jr_007_4eec:
    ld hl, $4ef5
    call Call_000_3c36

jr_007_4ef2:
    jp Jump_000_23d2


    rla
    jp $2a6e


    ld d, b
    rla
    ld c, c
    ld l, a
    ld a, [hl+]
    ld d, b
    rla
    sbc e
    ld l, a
    ld a, [hl+]
    ld d, b
    rla
    sub $6f
    ld a, [hl+]
    ld d, b
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
    nop
    inc bc
    rlca
    rst $38
    ld bc, $0300
    inc bc
    ld [bc], a
    daa
    dec b
    ld b, $ff
    ret nc

    ld bc, $0a0d
    add hl, bc
    cp $02
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    db $f4
    add $00
    inc bc
    ld [$0404], sp
    sbc $41
    ld b, h
    ld c, a
    ld b, b
    ld c, a
    nop
    inc c
    ld d, b
    call Call_000_3c29
    ret


    ld c, h
    ld c, a
    push hl
    ld c, a
    ld a, [c]
    ld c, a
    rst $38
    ld c, a
    ld [$013e], sp
    ld [$cc3c], a
    ld a, [$d75b]
    bit 0, a
    jr nz, jr_007_4fbf

    ld hl, $4fc8
    call Call_000_3c36
    ld a, [$d46f]
    cp $93
    jr c, jr_007_4fb3

    ld hl, $4fce
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_007_4fb6

    ld a, $01
    ld [$cc3c], a
    ld a, $99
    ld [$d11d], a
    ld [$cf90], a
    call Call_000_2e93
    ld a, $01
    ld [$cc3c], a
    ld bc, $990a
    call Call_000_3e59
    jr nc, jr_007_4fb3

    ld a, [$ccd3]
    and a
    call z, Call_000_3852
    ld a, $01
    ld [$cc3c], a
    ld hl, $4fd3
    call Call_000_3c36
    ld a, $34
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld hl, $d75b
    set 0, [hl]

jr_007_4fb3:
    jp Jump_000_23d2


jr_007_4fb6:
    ld hl, $4fdf
    call Call_000_3c36
    jp Jump_000_23d2


jr_007_4fbf:
    ld hl, $4fd9
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    di
    ld l, a
    ld a, [hl+]
    dec c
    ld d, b
    rla
    ld l, d
    ld [hl], b
    ld a, [hl+]
    ld d, b
    rla
    sbc d
    ld [hl], b
    ld a, [hl+]
    dec c
    ld d, b
    rla
    cp e
    ld [hl], b
    ld a, [hl+]
    dec c
    ld d, b
    rla
    sub $70
    ld a, [hl+]
    dec c
    ld d, b
    rla
    rst $28
    ld [hl], b
    ld a, [hl+]
    ld [$993e], sp
    call Call_000_118b
    jp Jump_000_23d2


    rla
    add hl, bc
    ld [hl], c
    ld a, [hl+]
    ld [$b93e], sp
    call Call_000_118b
    jp Jump_000_23d2


    rla
    dec e
    ld [hl], c
    ld a, [hl+]
    ld [$603e], sp
    call Call_000_118b
    jp Jump_000_23d2


    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $00ff
    inc b
    dec c
    dec b
    rlca
    rst $38
    ret nc

    ld bc, $0541
    ld [$d0ff], sp
    ld [bc], a
    ld b, b
    ld [$ff05], sp
    rst $38
    inc bc
    ccf
    rlca
    add hl, bc
    rst $38
    jp nc, Jump_000_1204

    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    dec d
    inc b
    inc b
    sub h
    ld d, c
    ld c, b
    ld d, b
    ld b, h
    ld d, b
    nop
    ld l, [hl]
    ld d, c
    call Call_000_3c29
    ret


    ld c, [hl]
    ld d, b
    ld b, c
    ld d, c
    ld d, b
    ld d, c
    ld [$5efa], sp
    rst $10
    bit 0, a
    jr z, jr_007_505f

    ld hl, $5137
    call Call_000_3c36
    jp Jump_007_50fd


jr_007_505f:
    ld b, $2d
    call Call_000_3422
    jr z, jr_007_5095

    ld hl, $5127
    call Call_000_3c36
    ld bc, $0601
    call Call_000_3e3f
    jr nc, jr_007_508d

    ld a, $2d
    ldh [$db], a
    ld b, $05
    ld hl, $7dbb
    call Call_000_3e84
    ld hl, $d75e
    set 0, [hl]
    ld hl, $512c
    call Call_000_3c36
    jr jr_007_50fd

jr_007_508d:
    ld hl, $513c
    call Call_000_3c36
    jr jr_007_50fd

jr_007_5095:
    ld hl, $5118
    call Call_000_3c36
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $01
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    ld hl, $d72f
    set 6, [hl]
    ld hl, $c3a0
    ld bc, $040f
    call Call_000_16f0
    call Call_000_231c
    ld hl, $c3ca
    ld de, $5100
    call Call_000_1723
    ld hl, $c3e4
    ld de, $510f
    call Call_000_1723
    ld hl, $511d
    call Call_000_3c36
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3aab
    bit 1, a
    jr nz, jr_007_50f7

    ld a, [$cc26]
    and a
    jr nz, jr_007_50f7

    ld hl, $5122
    call Call_000_3c36

jr_007_50f7:
    ld hl, $5132
    call Call_000_3c36

Jump_007_50fd:
jr_007_50fd:
    jp Jump_000_23d2


    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ldh a, [$f7]
    or $f6
    or $f6
    or $f6
    ld d, b
    rla
    ld e, [hl]
    db $76
    ld a, [hl+]
    ld d, b
    rla
    and b
    db $76
    ld a, [hl+]
    ld d, b
    rla
    jp nz, $2a76

    ld d, b
    rla
    sbc $76
    ld a, [hl+]
    ld d, b
    rla
    dec c
    ld [hl], a
    ld a, [hl+]
    ld de, $1750
    dec sp
    ld [hl], a
    ld a, [hl+]
    ld d, b
    rla
    ld d, [hl]
    ld [hl], a
    ld a, [hl+]
    ld d, b
    rla
    and a
    ld [hl], a
    ld a, [hl+]
    ld d, b
    ld [$4b21], sp
    ld d, c
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    rst $00
    ld [hl], a
    ld a, [hl+]
    ld d, b
    ld [$5efa], sp
    rst $10
    bit 0, a
    ld hl, $5169
    jr nz, jr_007_515e

    ld hl, $5164

jr_007_515e:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    dec de
    ld a, b
    ld a, [hl+]
    ld d, b
    rla
    ld c, h
    ld a, b
    ld a, [hl+]
    ld d, b
    ld c, $02
    rlca
    ld [bc], a
    inc b
    rst $38
    rlca
    inc bc
    inc b
    rst $38
    nop
    inc bc
    dec d
    ld b, $0a
    rst $38
    rst $38
    ld bc, $0a1c
    add hl, bc
    cp $01
    ld [bc], a
    inc b
    rlca
    dec b
    rst $38
    pop de
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    inc b
    dec b
    ld [bc], a
    inc bc
    ld [$0608], sp
    rlca
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $090a
    ld [$0404], sp
    sbc $41
    or h
    ld d, c
    or b
    ld d, c
    nop
    ld [hl], d
    ld d, d
    call Call_000_3c29
    ret


    ret nz

    ld d, c
    db $e3
    ld d, c
    ld b, $52
    inc de
    ld d, d
    jr nz, jr_007_5210

    ld l, l
    ld d, d
    ld [$dffa], sp
    rst $10
    bit 7, a
    jr nz, jr_007_51d0

    ld hl, $51d9
    call Call_000_3c36
    jr jr_007_51d6

jr_007_51d0:
    ld hl, $51de
    call Call_000_3c36

jr_007_51d6:
    jp Jump_000_23d2


    rla
    jp nc, Jump_000_2b4a

    ld d, b
    rla
    rst $38
    ld c, d
    dec hl
    ld d, b
    ld [$dffa], sp
    rst $10
    bit 7, a
    jr nz, jr_007_51f3

    ld hl, $51fc
    call Call_000_3c36
    jr jr_007_51f9

jr_007_51f3:
    ld hl, $5201
    call Call_000_3c36

jr_007_51f9:
    jp Jump_000_23d2


    rla
    inc sp
    ld c, e
    dec hl
    ld d, b
    rla
    sub b
    ld c, e
    dec hl
    ld d, b
    rla
    or a
    ld c, e
    dec hl
    ld [$2f3e], sp
    call Call_000_118b

jr_007_5210:
    jp Jump_000_23d2


    rla
    jp z, $2b4b

    ld [$a73e], sp
    call Call_000_118b
    jp Jump_000_23d2


    ld [$6bfa], sp
    rst $10
    bit 0, a
    jr nz, jr_007_524b

    ld hl, $5254
    call Call_000_3c36
    ld bc, $4901
    call Call_000_3e3f
    jr nc, jr_007_5243

    ld hl, $5259
    call Call_000_3c36
    ld hl, $d76b
    set 0, [hl]
    jr jr_007_5251

jr_007_5243:
    ld hl, $5263
    call Call_000_3c36
    jr jr_007_5251

jr_007_524b:
    ld hl, $5268
    call Call_000_3c36

jr_007_5251:
    jp Jump_000_23d2


    rla
    call c, $2b4b
    ld d, b
    rla
    ld b, b
    ld c, h
    dec hl
    ld de, $5617
    ld c, h
    dec hl
    ld d, b
    rla
    xor [hl]
    ld c, h
    dec hl
    ld d, b
    rla
    call z, $2b4c
    ld d, b
    rla
    rst $28
    ld c, h
    dec hl
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc
    ld [bc], a
    rst $38
    nop
    ld b, $0c
    add hl, bc
    rlca
    rst $38
    rst $38
    ld bc, $0708
    ld a, [bc]
    rst $38
    ret nc

    ld [bc], a
    dec b
    ld [$ff0a], sp
    pop de
    inc bc
    dec b
    rlca
    dec b
    rst $38
    rst $38
    inc b
    ld d, $05
    rlca
    rst $38
    rst $38
    dec b
    ld c, e
    rlca
    rlca
    rst $38
    rst $38
    ld b, $12
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    cp d
    ld d, d
    or [hl]
    ld d, d
    nop
    xor $52
    call Call_000_3c29
    ret


    cp [hl]
    ld d, d
    bit 2, d
    rla
    ld a, l
    ld c, [hl]
    dec hl
    ld [$113e], sp
    call Call_000_118b
    jp Jump_000_23d2


    ld [$dffa], sp
    rst $10
    bit 7, a
    jr nz, jr_007_52db

    ld hl, $52e4
    call Call_000_3c36
    jr jr_007_52e1

jr_007_52db:
    ld hl, $52e9
    call Call_000_3c36

jr_007_52e1:
    jp Jump_000_23d2


    rla
    sub c
    ld c, [hl]
    dec hl
    ld d, b
    rla
    cp $4e
    dec hl
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    rst $38
    rlca
    inc bc
    inc b
    rst $38
    nop
    ld [bc], a
    dec b
    add hl, bc
    rlca
    rst $38
    pop de
    ld bc, $081d
    ld b, $ff
    db $d3
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    ld e, h
    ld d, e
    ld a, [de]
    ld d, e
    nop
    sbc $53
    jp Jump_000_3c29


Call_007_531d:
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    ret


Call_007_5328:
    ld hl, $d272
    ld bc, $000b
    ld a, [$cf91]
    call Call_000_3a74
    ld de, $d157
    ld c, $0b
    call Call_007_534f
    jr c, jr_007_535a

    ld hl, $d176
    ld bc, $002c
    ld a, [$cf91]
    call Call_000_3a74
    ld de, $d358
    ld c, $02

Call_007_534f:
jr_007_534f:
    ld a, [de]
    cp [hl]
    jr nz, jr_007_535a

    inc hl
    inc de
    dec c
    jr nz, jr_007_534f

    and a
    ret


jr_007_535a:
    scf
    ret


    ld e, [hl]
    ld d, e
    ld [$eccd], sp
    ld [hl], $21
    cp e
    ld d, e
    call Call_007_531d
    jr nz, jr_007_53b6

    ld hl, $53c0
    call Call_000_3c36
    xor a
    ld [$d07c], a
    ld [$cfca], a
    ld [$cc35], a
    call Call_000_11c8
    push af
    call Call_000_3dd8
    call Call_000_3dc2
    call Call_000_1e6f
    pop af
    jr c, jr_007_53b6

    call Call_000_1394
    call Call_007_5328
    ld hl, $53d9
    jr c, jr_007_53b0

    ld hl, $53c5
    call Call_007_531d
    jr nz, jr_007_53b6

    ld hl, $53ca
    call Call_000_3c36
    ld b, $01
    ld hl, $62cd
    call Call_000_3e84
    jr c, jr_007_53b6

    ld hl, $53cf

jr_007_53b0:
    call Call_000_3c36
    jp Jump_000_23d2


jr_007_53b6:
    ld hl, $53d4
    jr jr_007_53b0

    rla
    ld c, l
    ld c, a
    dec hl
    ld d, b
    rla
    and [hl]
    ld c, a
    dec hl
    ld d, b
    rla
    call nz, $2b4f
    ld d, b
    rla
    ld a, [hl+]
    ld d, b
    dec hl
    ld d, b
    rla
    ld c, c
    ld d, b
    dec hl
    ld d, b
    rla
    sub c
    ld d, b
    dec hl
    ld d, b
    rla
    or c
    ld d, b
    dec hl
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    rst $38
    rlca
    inc bc
    dec b
    rst $38
    nop
    ld bc, $072b
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
    ld [$0404], sp
    sbc $41
    ld [$0454], sp
    ld d, h
    nop
    jr z, jr_007_5458

    call Call_000_3c29
    ret


    ld c, $54
    inc de
    ld d, h
    inc hl
    ld d, h
    rla
    ld d, c
    ld e, l
    dec hl
    ld d, b
    rla
    sub b
    ld e, l
    dec hl
    ld [$243e], sp
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


    rla
    and h
    ld e, l
    dec hl
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    rst $38
    rlca
    inc bc
    inc b
    rst $38
    nop
    inc bc
    inc b
    rlca
    add hl, bc
    rst $38
    jp nc, $0901

    add hl, bc
    rlca
    cp $02
    ld [bc], a
    ld c, d
    rlca
    ld [$ffff], sp
    inc bc
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld c, $06
    ld c, $e2
    ld d, l
    rst $00
    ld d, l
    ld e, d
    ld d, h
    nop

jr_007_5458:
    adc $55
    call Call_000_3c29
    ld hl, $d802
    bit 4, [hl]
    jr nz, jr_007_5495

    bit 0, [hl]
    ret z

    ld a, [$d42e]
    cp $01
    ret nz

    bit 2, [hl]
    jp z, Jump_007_54a3

    set 4, [hl]
    call Call_000_3ddb
    ld hl, $d72f
    set 7, [hl]
    ld hl, $ccd3
    ld a, $40
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $03
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    dec a
    ld [$cd6b], a
    ret


jr_007_5495:
    bit 5, [hl]
    ret nz

    ld a, [$cd38]
    and a
    ret nz

    ld [$cd6b], a
    set 5, [hl]
    ret


Jump_007_54a3:
    set 2, [hl]
    ld a, $ff
    ld [$cd6b], a
    call Call_000_2233
    ld c, $1f
    ld a, $d6
    call Call_000_2211
    ld b, $1e
    ld hl, $616d
    call Call_000_3e84
    xor a
    ld [$c102], a
    ld c, $78
    call Call_000_372f
    ld b, $9c
    call Call_000_16a4
    ld hl, $c468
    ld bc, $0078
    ld a, $14
    call Call_000_166e
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    xor a
    ldh [$ba], a
    ld [$cd3d], a
    ldh [rOBP1], a
    call Call_000_3061
    ld a, $58
    ld [$cd3e], a
    ld hl, $d525
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    push hl
    ld a, $a9
    call Call_000_3736
    ld a, $ff
    ld [$cfca], a
    ld d, $00
    ld e, $08

jr_007_5502:
    ld hl, $0002
    add hl, bc
    ld a, l
    ld [$d525], a
    ld a, h
    ld [$d526], a
    push hl
    push de
    call Call_000_0bd7
    call Call_007_5561
    pop de
    ld b, $10

jr_007_5519:
    call Call_007_554a
    ld c, $08

jr_007_551e:
    call Call_007_5584
    dec c
    jr nz, jr_007_551e

    inc d
    dec b
    jr nz, jr_007_5519

    pop bc
    dec e
    jr nz, jr_007_5502

    xor a
    ldh [rWY], a
    ldh [$b0], a
    call Call_007_559c
    ld a, $90
    ldh [$b0], a
    ld a, $01
    ld [$cfca], a
    pop hl
    pop bc
    ld [hl], b
    dec hl
    ld [hl], c
    call Call_000_07d7
    ld hl, $d3ad
    dec [hl]
    ret


Call_007_554a:
    push bc
    push de
    ld hl, $c311
    ld a, [$cd3d]
    swap a
    ld c, a
    ld de, $0004

jr_007_5558:
    inc [hl]
    inc [hl]
    add hl, de
    dec c
    jr nz, jr_007_5558

    pop de
    pop bc
    ret


Call_007_5561:
    ld a, [$cd3e]
    sub $10
    ld [$cd3e], a
    ld c, a
    ld b, $64
    ld a, [$cd3d]
    inc a
    ld [$cd3d], a
    ld a, $01
    ld de, $557c
    call Call_000_3a84
    ret


    db $fc
    db $10
    db $fd
    db $10
    cp $10
    rst $38
    db $10

Call_007_5584:
    ld h, d
    ld l, $50
    call Call_007_558e
    ld h, $00
    ld l, $80

Call_007_558e:
jr_007_558e:
    ldh a, [rLY]
    cp l
    jr nz, jr_007_558e

    ld a, h
    ldh [rSCX], a

jr_007_5596:
    ldh a, [rLY]
    cp h
    jr z, jr_007_5596

    ret


Call_007_559c:
    ld hl, $cc5b
    ld bc, $00b4
    ld a, $14
    call Call_000_166e
    ld hl, $9940
    ld de, $cc5b
    ld bc, $000c
    call Call_000_15fe
    ld hl, $c754
    ld a, $0d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $a9
    call Call_000_2238
    ld c, $78
    call Call_000_372f
    ret


    ret


    ld d, l
    rla
    ld d, $5e
    dec hl
    ld d, b
    rrca
    ld [bc], a
    nop
    ld c, $05
    rst $38
    ld [bc], a
    ld c, $01
    ld e, a
    nop
    nop
    inc b
    rst $00
    nop
    ld c, $18
    rst $00
    ld [bc], a
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    ld d, $15
    inc c
    inc c
    inc bc
    inc c
    inc c
    ld c, $13
    ld bc, $0101
    ld bc, $0504
    ld b, $07
    ld bc, $0101
    ld bc, $110c
    dec c
    dec c
    dec c
    dec c
    ld [$0a09], sp
    dec bc
    dec c
    dec c
    dec c
    dec c
    inc c
    ld de, $0d0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    ld de, $0d0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld c, $08
    inc b
    inc b
    xor $41
    ld b, [hl]
    ld d, [hl]
    ld b, d
    ld d, [hl]
    nop
    ld h, l
    ld d, [hl]
    call Call_000_3c29
    ret


    ld c, d
    ld d, [hl]
    ld c, a
    ld d, [hl]
    rla
    jp c, $2b6d

    ld d, b
    ld [$1901], sp
    ld h, [hl]
    call Call_000_3e59
    jr nc, jr_007_5662

    ld a, $45
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4

jr_007_5662:
    jp Jump_000_23d2


    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    add e
    rlca
    inc bc
    ld [bc], a
    add e
    nop
    ld [bc], a
    ld c, $06
    ld b, $ff
    ret nc

    ld bc, $0747
    ld [$ffff], sp
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [bc], a
    inc b
    inc b
    bit 2, [hl]
    sub l
    ld d, [hl]
    sub c
    ld d, [hl]
    nop
    and l
    ld d, [hl]
    call Call_000_3c29
    ret


    and e
    inc hl
    sbc e
    ld d, [hl]
    and b
    ld d, [hl]
    rla
    ld c, h
    ld b, h
    inc l
    ld d, b
    rla
    adc h
    ld b, h
    inc l
    ld d, b
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
    inc bc
    ld h, $09
    inc b
    rst $38
    db $d3
    ld bc, $060a
    ld [$ffff], sp
    ld [bc], a
    ld b, $09
    ld a, [bc]
    cp $01
    inc bc
    ld [de], a
    rst $00
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    ld [de], a
    inc de
    inc de
    add hl, bc
    dec h
    rrca
    inc d
    inc d
    jr jr_007_56ee

    dec d
    dec d
    rla
    ld a, [de]
    dec bc
    rrca
    ld [$0404], sp
    sbc $41
    ld [$e756], a
    ld d, [hl]
    nop
    ld c, $57
    jp Jump_000_3c29


    ld a, [c]
    ld d, [hl]
    rst $30
    ld d, [hl]

jr_007_56ee:
    inc b
    ld d, a
    add hl, bc
    ld d, a
    rla
    inc bc
    ld [hl], d
    inc l
    ld d, b
    rla
    ld d, b
    ld [hl], d
    inc l
    ld [$243e], sp
    call Call_000_118b
    jp Jump_000_23d2


    rla
    ld h, h
    ld [hl], d
    inc l
    ld d, b
    rla
    sub e
    ld [hl], d
    inc l
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    rst $38
    rlca
    inc bc
    inc bc
    rst $38
    nop
    inc b
    dec e
    rlca
    ld b, $ff
    db $d3
    ld bc, $0809
    inc b
    cp $01
    ld [bc], a
    inc b
    dec b
    ld [$d0ff], sp
    inc bc
    ld c, d
    rlca
    rlca
    rst $38
    rst $38
    inc b
    ld [de], a
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    ld [$0404], sp
    sbc $41
    ld c, c
    ld d, a
    ld b, [hl]
    ld d, a
    nop
    sub h
    ld d, a
    jp Jump_000_3c29


    ld c, e
    ld d, a
    ld [$bcfa], sp
    rst $10
    bit 0, a
    jr nz, jr_007_5776

    ld hl, $577f
    call Call_000_3c36
    ld bc, $e501
    call Call_000_3e3f
    jr nc, jr_007_576e

    ld hl, $5784
    call Call_000_3c36
    ld hl, $d7bc
    set 0, [hl]
    jr jr_007_577c

jr_007_576e:
    ld hl, $578f
    call Call_000_3c36
    jr jr_007_577c

jr_007_5776:
    ld hl, $578a
    call Call_000_3c36

jr_007_577c:
    jp Jump_000_23d2


    rla
    db $fc
    ld [hl], e
    inc l
    ld d, b
    rla
    jr z, @+$76

    inc l
    dec bc
    ld d, b
    rla
    inc a
    ld [hl], h
    inc l
    ld d, b
    rla
    ld a, d
    ld [hl], h
    inc l
    ld d, b
    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rst $38
    rlca
    inc bc
    rlca
    rst $38
    nop
    ld bc, $0727
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
    ld de, $0404
    ld c, $42
    jp nz, $ba57

    ld d, a
    nop
    ret


    ld d, a
    ld a, $0d
    ld [$d364], a
    jp Jump_000_3c29


    call nz, $1757
    sub b
    ld c, h
    jr z, jr_007_5819

    ld a, l
    inc bc
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    inc b
    inc b
    nop
    push bc
    nop
    ld bc, $0727
    rlca
    rst $38
    rst $38
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    add hl, bc
    rst $00
    inc b
    inc b
    ld [$0404], sp
    sbc $41
    ld a, [$f757]
    ld d, a
    nop
    ld de, $c358
    add hl, hl
    inc a
    cp $57
    inc bc
    ld e, b
    rla
    and c
    ld c, l
    jr z, @+$52

    ld [$013e], sp
    ld [$cd3d], a
    ld a, $54
    call Call_000_3eb4
    jp Jump_000_23d2


    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    inc bc

jr_007_5819:
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    jr nz, @+$0a

    ld b, $ff
    db $d3
    ld bc, $0537
    ld [$d0ff], sp
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
    inc bc
    inc b
    cpl
    ld e, c
    xor [hl]
    ld e, b
    dec a
    ld e, b
    nop
    dec b
    ld e, c
    call Call_000_3c29
    ld a, [$d661]
    ld hl, $5849
    jp Jump_000_3d93


    ld e, d
    ld e, b
    sbc [hl]
    ld e, b

Call_007_584d:
    ld a, $40
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    jp Jump_000_3415


    ld a, [$d727]
    bit 6, a
    ret nz

    ld hl, $5899
    call Call_000_34bc
    ret nc

    ld a, $02
    ld [$d527], a
    xor a
    ldh [$b4], a
    ld b, $16
    ld hl, $653a
    call Call_000_3e84
    ldh a, [$db]
    and a
    jr nz, jr_007_588c

    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    call Call_007_584d
    ld a, $01
    ld [$d661], a
    ret


jr_007_588c:
    ld a, $03
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d727
    set 6, [hl]
    ret


    inc bc
    inc bc
    inc bc
    inc b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld [$d661], a
    ret


    or h
    ld e, b
    pop af
    ld e, b
    or $58
    ld [$27fa], sp
    rst $10
    bit 6, a
    jr nz, jr_007_58e8

    ld b, $16
    ld hl, $653a
    call Call_000_3e84
    ldh a, [$db]
    and a
    jr nz, jr_007_58da

    ld hl, $58f1
    call Call_000_3c36
    call Call_007_584d
    ld a, $01
    ld [$d661], a
    jp Jump_000_23d2


jr_007_58da:
    ld hl, $58f6
    call Call_000_3c36
    ld hl, $d727
    set 6, [hl]
    jp Jump_000_23d2


jr_007_58e8:
    ld hl, $5900
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld h, [hl]
    ld d, b
    jr z, jr_007_5946

    rla
    or h
    ld d, b
    jr z, jr_007_590c

    rla
    ld a, [$2850]
    ld d, b
    rla
    add b
    ld d, c
    jr z, jr_007_5955

    ld a, [bc]
    inc b
    dec b
    inc bc
    ld [bc], a
    rst $38
    dec b

jr_007_590c:
    inc b
    ld [bc], a
    rst $38
    nop
    inc bc
    ld bc, $00ff
    inc b
    nop
    rst $38
    nop
    ld bc, $0731
    dec b
    rst $38
    db $d3
    ld bc, $c708
    dec b
    inc bc
    add hl, bc
    rst $00
    dec b
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld d, $6b
    ld l, d
    rla
    ld [bc], a
    add hl, bc
    ld [$1801], sp
    ld l, h
    ld l, c
    add hl, de
    inc c
    inc bc
    inc b
    ld a, [c]
    ld e, c
    jp nz, Jump_007_4759

    ld e, c
    nop
    ret z

jr_007_5946:
    ld e, c
    call Call_000_3c29
    ld hl, $5954
    ld a, [$d635]
    call Call_000_3d93
    ret


    ld e, b

jr_007_5955:
    ld e, c
    sbc e
    ld e, c
    ld a, [$d727]
    bit 6, a
    ret nz

    ld hl, $5996
    call Call_000_34bc
    ret nc

    ld a, $01
    ld [$d527], a
    xor a
    ldh [$b4], a
    ld b, $16
    ld hl, $653a
    call Call_000_3e84
    ldh a, [$db]
    and a
    jr nz, jr_007_598a

    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    call Call_007_59ab
    ld a, $01
    ld [$d635], a
    ret


jr_007_598a:
    ld hl, $d727
    set 6, [hl]
    ld a, $03
    ldh [$8c], a
    jp Jump_000_2817


    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld [$d635], a
    ret


Call_007_59ab:
    ld hl, $d72f
    set 7, [hl]
    ld a, $80
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    ret


    or h
    ld e, b
    pop af
    ld e, b
    or $58
    ld a, [bc]
    inc b
    dec b
    inc bc
    ld [bc], a
    rst $38
    dec b
    inc b
    ld [bc], a
    rst $38
    nop
    inc bc
    ld bc, $00ff
    inc b
    ld bc, $00ff
    ld bc, $0631
    ld a, [bc]
    rst $38
    jp nc, $0801

    rst $00
    dec b
    inc bc
    add hl, bc
    rst $00
    dec b
    inc b
    db $f4
    add $00
    inc bc
    push af
    add $00
    inc b
    ld d, $6b
    ld l, d
    rla
    ld [bc], a
    add hl, bc
    ld [$1801], sp
    ld l, h
    ld l, c
    add hl, de
    inc c
    inc b
    inc bc
    cp c
    ld e, d
    adc c
    ld e, d
    ld a, [bc]
    ld e, d
    nop
    adc a
    ld e, d
    call Call_000_3c29
    ld a, [$d662]
    ld hl, $5a17
    call Call_000_3d93
    ret


    ld [hl-], a
    ld e, d
    db $76
    ld e, d

Call_007_5a1b:
    ld hl, $d72f
    set 7, [hl]
    ld a, $20
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    ret


    ld a, [$d727]
    bit 6, a
    ret nz

    ld hl, $5a71
    call Call_000_34bc
    ret nc

    ld a, $08
    ld [$d527], a
    xor a
    ldh [$b4], a
    ld b, $16
    ld hl, $653a
    call Call_000_3e84
    ldh a, [$db]
    and a
    jr nz, jr_007_5a64

    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    call Call_007_5a1b
    ld a, $01
    ld [$d662], a
    ret


jr_007_5a64:
    ld a, $03
    ldh [$8c], a
    call Call_000_2817
    ld hl, $d727
    set 6, [hl]
    ret


    inc bc
    inc bc
    inc b
    inc bc
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld [$d662], a
    ld [$da38], a
    ret


    or h
    ld e, b
    pop af
    ld e, b
    or $58
    ld a, [bc]
    inc b
    inc bc
    nop
    inc bc
    rst $38
    inc b
    nop
    inc bc
    rst $38
    inc bc
    dec b
    ld bc, $04ff
    dec b
    ld bc, $00ff
    ld bc, $0531
    rlca
    rst $38
    ret nc

    ld bc, $c6fb
    inc bc
    nop
    inc b
    rst $00
    inc b
    nop
    db $fd
    add $03
    dec b
    ld b, $c7
    inc b
    dec b
    inc e
    rra
    dec e
    ld [hl], b
    ld hl, $6e6f
    dec h
    ld l, l
    jr @+$20

    add hl, de
    inc c
    inc b
    inc bc
    ld a, e
    ld e, e
    ld c, e
    ld e, e
    pop de
    ld e, d
    nop
    ld d, c
    ld e, e
    call Call_000_3c29
    ld hl, $5add
    ld a, [$d636]
    jp Jump_000_3d93


    ld hl, sp+$5a
    dec sp
    ld e, e

Call_007_5ae1:
    ld hl, $d72f
    set 7, [hl]
    ld a, $10
    ld [$ccd3], a
    ld a, $01
    ld [$cd38], a
    xor a
    ld [$c206], a
    ld [$cd3b], a
    ret


    ld a, [$d727]
    bit 6, a
    ret nz

    ld hl, $5b36
    call Call_000_34bc
    ret nc

    ld a, $08
    ld [$d527], a
    xor a
    ldh [$b4], a
    ld b, $16
    ld hl, $653a
    call Call_000_3e84
    ldh a, [$db]
    and a
    jr nz, jr_007_5b2a

    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    call Call_007_5ae1
    ld a, $01
    ld [$d636], a
    ret


jr_007_5b2a:
    ld hl, $d727
    set 6, [hl]
    ld a, $03
    ldh [$8c], a
    jp Jump_000_2817


    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld [$d636], a
    ret


    or h
    ld e, b
    pop af
    ld e, b
    or $58
    ld a, [bc]
    inc b
    inc bc
    nop
    ld bc, $04ff
    nop
    ld bc, $03ff
    dec b
    inc bc
    rst $38
    inc b
    dec b
    inc bc
    rst $38
    nop
    ld bc, $0531
    ld b, $ff
    ret nc

    ld bc, $c6fb
    inc bc
    nop
    inc b
    rst $00
    inc b
    nop
    db $fd
    add $03
    dec b
    ld b, $c7
    inc b
    dec b
    inc e
    rra
    dec e
    ld [hl], b
    ld hl, $6e6f
    dec h
    ld l, l
    jr jr_007_5ba4

    add hl, de
    inc c
    inc b
    inc b
    or b
    ld b, c
    sbc e
    ld e, e
    sub e
    ld e, e
    nop
    and d
    ld e, e
    ld a, $13
    ld [$d364], a
    jp Jump_000_3c29


    sbc l
    ld e, e
    rla
    sub d
    ld d, l
    jr z, jr_007_5bf2

    ld a, [bc]
    inc bc

jr_007_5ba4:
    rlca
    inc bc
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    inc b
    inc b
    ld bc, $0079
    ld bc, $080d
    rlca
    rst $38
    rst $38
    ld bc, $c712
    rlca
    inc bc
    inc de
    rst $00
    rlca
    inc b
    add hl, bc
    rst $00
    inc b
    inc b
    ld d, $12
    inc d
    ld d, b
    ld e, l
    jp hl


    ld e, e
    ret nc

    ld e, e
    nop
    ret


    ld e, h
    call Call_000_3c29
    ld hl, $5c05
    ld de, $5be3
    ld a, [$d662]
    call Call_000_30fc
    ld [$d662], a
    ret


    or l
    ld sp, $31e8
    ld de, $7e32
    ld e, h
    add h
    ld e, h
    adc d
    ld e, h
    sub b
    ld e, h
    sub [hl]

jr_007_5bf2:
    ld e, h
    sbc h
    ld e, h
    and d
    ld e, h
    xor b
    ld e, h
    xor [hl]
    ld e, h
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
    ld bc, $d200
    rst $10
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    ld [bc], a
    nop
    jp nc, $b4d7

    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    inc bc
    nop
    jp nc, $b4d7

    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    inc b
    nop
    jp nc, $b4d7

    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    dec b
    nop
    jp nc, $b4d7

    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    ld b, $00
    jp nc, $b4d7

    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    rlca
    nop
    jp nc, $b4d7

    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    ld [$d200], sp
    rst $10
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    or h
    ld e, h
    add hl, bc
    nop
    jp nc, $b9d7

    ld e, h
    cp c
    ld e, h
    cp c
    ld e, h
    cp c
    ld e, h
    rst $38

jr_007_5c72:
    call Call_000_3168
    ld a, [$da38]
    ld [$d662], a
    jp Jump_000_23d2


    ld [$0521], sp
    ld e, h
    jr jr_007_5c72

    ld [$1121], sp
    ld e, h
    jr jr_007_5c72

    ld [$1d21], sp
    ld e, h
    jr jr_007_5c72

    ld [$2921], sp
    ld e, h
    jr jr_007_5c72

    ld [$3521], sp
    ld e, h
    jr jr_007_5c72

    ld [$4121], sp
    ld e, h
    jr jr_007_5c72

    ld [$4d21], sp
    ld e, h
    jr jr_007_5c72

    ld [$5921], sp
    ld e, h
    jr jr_007_5c72

    ld [$6521], sp
    ld e, h
    jr jr_007_5c72

    rla
    rst $20
    ld e, b
    jr z, jr_007_5d09

    rla
    rst $28
    ld e, b
    jr z, jr_007_5cc6

    ld a, $4b
    call Call_000_118b
    call Call_000_373e

jr_007_5cc6:
    jp Jump_000_23d2


    ld l, $03
    inc hl
    inc b
    inc bc
    rst $38
    inc hl
    dec b
    inc bc
    rst $38
    dec bc
    nop
    inc bc
    rst $38
    nop
    ld c, $47
    jr jr_007_5ce9

    rst $38
    rst $38
    ld b, c
    ld b, $28
    ld b, a
    ld d, $24
    rst $38
    rst $38
    ld b, d
    ld b, $28

jr_007_5ce9:
    ld b, a
    dec e
    add hl, de
    rst $38
    rst $38
    ld b, e
    ld b, $28
    ld b, a
    ld d, $1d
    rst $38
    rst $38
    ld b, h
    adc l
    dec hl
    ld b, a
    ld h, $1b
    rst $38
    rst $38
    ld b, l
    ld b, $28
    ld b, a
    jr nz, jr_007_5d22

    rst $38
    rst $38
    ld b, [hl]
    ld b, $28

jr_007_5d09:
    ld b, a
    ld [de], a
    add hl, de
    rst $38
    rst $38
    ld b, a
    adc l
    dec hl
    ld b, a
    inc h
    add hl, hl
    rst $38
    rst $38
    ld c, b
    ld b, $28
    add hl, bc
    dec c
    ld [$d1ff], sp
    ld c, c
    ld c, e
    ld [hl-], a
    ld b, a

jr_007_5d22:
    dec e
    dec bc
    rst $38
    rst $38
    adc d
    ld h, $47
    rlca
    jr nz, @+$01

    rst $38
    adc e
    inc hl
    ld b, a
    rlca
    ld h, $ff
    rst $38
    adc h
    jr z, jr_007_5d7e

    inc h
    ld e, $ff
    rst $38
    adc l
    pop hl
    ld b, a
    inc h
    jr @+$01

    rst $38
    adc [hl]
    jp hl


    cp a
    ret z

    inc hl
    inc b
    cp a
    ret z

    inc hl
    dec b
    add l
    rst $00
    dec bc
    nop
    ld b, b
    ld h, c
    ld h, c
    ld h, c
    ld l, b
    ld h, l
    ld h, l
    ld l, c
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld l, c
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld l, c
    ld b, h
    rlca
    ld b, $0e
    ld [hl], b
    rlca
    ld sp, $065d
    rlca
    rlca
    ld c, $46
    ld b, $1a
    dec [hl]
    dec [hl]
    add hl, de
    ld b, $5d
    ld b, h
    ld c, $0e
    ld c, $68
    ld a, [hl+]

jr_007_5d7e:
    ld h, a
    ld l, c
    ld h, e
    dec hl
    ld h, c
    ld e, c
    ld b, [hl]
    jr c, @+$33

    ld b, $35
    inc e
    ld c, $5d
    ld b, b
    ld h, e
    ld c, $67
    ld e, h
    jr c, @+$33

    ld e, l
    ld h, e
    ld c, $06
    ld b, h
    ld b, [hl]
    ld b, $0e
    ld b, $38
    ld c, $31
    ld e, l
    ld b, h
    ld c, $0e
    ld c, $5c
    ld b, $31
    ld e, l
    ld c, $0e
    ld sp, $4644
    jr c, @+$10

    ld b, $0e
    ld b, $06
    ld e, l
    ld [hl], b
    ld c, $0e
    ld c, $5c
    jr c, jr_007_5dc9

    ld [hl], c
    ld c, $0e
    ld c, $44
    ld b, [hl]
    ld c, $0e
    jr c, jr_007_5dd3

    ld sp, $5d06
    ld l, b

jr_007_5dc9:
    ld h, l
    ld h, l
    ld b, c
    ld b, b
    ld b, c
    ld h, l
    ld l, c
    ld h, e
    dec hl
    ld h, c

jr_007_5dd3:
    ld b, h
    ld d, [hl]
    ld c, c
    ld e, b
    ld c, $57
    ld c, c
    ld c, c
    ld d, c
    ld e, h
    rlca
    ld c, $0e
    ld [hl], b
    ld c, $31
    ld e, l
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld e, b
    ld d, d
    ld b, [hl]
    ld e, h
    ld c, $0e
    ld c, $52
    ld c, $0e
    ld e, l
    ld b, $1d
    dec e
    dec e
    ld c, $1d
    dec e
    dec e
    dec e
    ld c, $44
    ld b, [hl]
    ld h, b
    ld h, c
    ld a, [hl+]
    ld c, $5c
    ld b, $38
    ld e, l
    rlca
    ld b, $1a
    dec [hl]
    inc e
    dec [hl]
    dec [hl]
    dec [hl]
    dec e
    ld c, $44
    ld b, [hl]
    ld h, h
    ld c, $0e
    ld c, $44
    rlca
    ld c, $71
    ld c, $1d
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld c, $44
    ld b, [hl]
    ld b, h
    ld sp, $6161
    ld a, [hl+]
    dec hl
    ld h, c
    ld h, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld d, l
    ld b, [hl]
    ld b, h
    ld c, $0e
    rlca
    ld b, $38
    ld c, $66
    rlca
    ld b, $38
    ld b, $06
    ld b, $07
    ld sp, $0706
    ld c, $5d
    ld l, b
    ld h, e
    ld c, $67
    ld l, b
    ld h, l
    ld a, [hl+]
    ld d, [hl]
    ld c, $0e
    ld c, $31
    rlca
    ld c, $0e
    ld c, $07
    ld c, $31
    ld e, l
    ld e, h
    jr c, @+$10

    ld b, $6b
    ld c, $0e
    ld c, $0e
    ld b, $0e
    ld c, $0e
    ld sp, $3106
    ld b, $06
    ld b, $5d
    ld e, h
    ld c, $31
    ld b, $6b
    ld a, [hl+]
    ld h, a
    ld h, c
    ld h, c
    ld h, l
    ld h, c
    ld h, c
    ld b, b
    ld h, e
    ld b, $2b
    ld h, c
    ld h, c
    ld h, l
    ld l, c
    ld b, h
    ld c, $0e
    ld sp, $0e5c
    ld c, $07
    ld b, $0e
    ld c, $06
    ld b, h
    ld e, $0e
    dec e
    dec e
    jr nz, @+$1e

    ld b, [hl]
    ld c, b
    ld e, b
    inc l
    ld d, a
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld de, $0404
    ld c, $42
    call $c45e
    ld e, [hl]
    nop
    call nc, $cd5e
    add hl, hl
    inc a
    ld a, $16
    ld [$d364], a
    ret


    rst $08
    ld e, [hl]
    rla
    cp $5a
    jr z, @+$52

    ld a, l
    inc bc
    rlca
    ld [bc], a
    inc b
    rst $38
    rlca
    inc bc
    inc b
    rst $38
    inc b
    inc b
    ld bc, $00c5
    ld bc, $070b
    ld b, $ff
    rst $38
    ld bc, $c712
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    add hl, bc
    rst $00
    inc b
    inc b
    ld [$0404], sp
    sbc $41
    dec b
    ld e, a
    ld [bc], a
    ld e, a
    nop
    ld h, c
    ld e, a
    jp Jump_000_3c29


    add hl, bc
    ld e, a
    ld c, d
    ld e, a
    ld [$dffa], sp
    rst $10
    bit 6, a
    ld hl, $5f40
    jr nz, jr_007_5f2f

    ld hl, $5f35
    call Call_000_3c36
    ld bc, $c501
    call Call_000_3e3f
    jr nc, jr_007_5f2c

    ld hl, $d7df
    set 6, [hl]
    ld hl, $5f3a
    jr jr_007_5f2f

jr_007_5f2c:
    ld hl, $5f45

jr_007_5f2f:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld b, $61
    jr z, jr_007_5f8a

    rla
    ld l, d
    ld h, c
    jr z, @+$13

    ld d, b
    rla
    ld a, l
    ld h, c
    jr z, @+$52

    rla
    jp nz, $2861

    ld d, b
    ld [$5c21], sp
    ld e, a
    call Call_000_3c36
    ld a, $23
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


    rla
    db $e4
    ld h, c
    jr z, jr_007_5fb1

    ld a, [bc]
    ld [bc], a
    rlca
    ld [bc], a
    ld [$07ff], sp
    inc bc
    ld [$00ff], sp
    ld [bc], a
    dec e
    rlca
    ld b, $ff
    db $d3
    ld bc, $0809
    ld a, [bc]
    cp $00
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
    dec b
    ld e, d
    ld h, b
    rst $28
    ld e, a
    adc l
    ld e, a

jr_007_5f8a:
    nop
    jr nc, @+$62

    call Call_000_3c29
    ld hl, $5fa8
    ld a, [$d60d]
    call Call_000_3d93
    ld a, [$d360]
    cp $04
    ld a, $22
    jr c, jr_007_5fa4

    ld a, $21

jr_007_5fa4:
    ld [$d364], a
    ret


    xor [hl]
    ld e, a
    db $dd
    ld e, a
    xor $5f
    ld hl, $5fc5

jr_007_5fb1:
    call Call_000_34bc
    ret nc

    xor a
    ldh [$b4], a
    ld a, $08
    ld [$c119], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ret


    ld [bc], a
    inc b
    ld [bc], a
    dec b
    rst $38

Call_007_5fca:
    ld a, $01
    ld [$cd38], a
    ld a, $80
    ld [$ccd3], a
    ld [$c109], a
    ld [$cd6b], a
    jp Jump_000_3415


    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$cd6b], a
    call Call_000_3ddb
    ld a, $00
    ld [$d60d], a
    ret


    pop af
    ld e, a
    ld [$55fa], sp
    db $d3
    bit 0, a
    jr nz, jr_007_6006

    ld hl, $6014
    call Call_000_3c36
    call Call_007_5fca
    ld a, $01
    jr jr_007_600e

jr_007_6006:
    ld hl, $602a
    call Call_000_3c36
    ld a, $02

jr_007_600e:
    ld [$d60d], a
    jp Jump_000_23d2


    rla
    xor [hl]
    ld h, l
    jr z, jr_007_6021

    ld a, $a5
    call Call_000_3736
    call Call_000_373e

jr_007_6021:
    ld hl, $6025
    ret


    rla
    dec b
    ld h, [hl]
    jr z, jr_007_607a

    rla
    ld sp, $2866
    dec bc
    ld d, b
    ld a, [bc]
    inc b
    rlca
    inc b
    nop
    rst $38
    rlca
    dec b
    nop
    rst $38
    nop
    inc b
    nop
    rst $38
    nop
    dec b
    nop
    rst $38
    nop
    ld bc, $0631
    ld a, [bc]
    rst $38
    jp nc, $1701

    rst $00
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    or $c6
    nop
    inc b
    or $c6
    nop
    dec b
    inc bc
    ld l, $28
    cpl
    inc bc
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    inc l
    inc b
    dec l
    nop
    db $10
    inc b
    inc b
    sbc [hl]
    ld h, d
    ld b, a
    ld h, d
    ld a, d
    ld h, b
    nop
    ld a, b
    ld h, d

jr_007_607a:
    call Call_007_609e
    call Call_000_3c29
    ld a, [$d660]
    ld hl, $608a
    call Call_000_3d93
    ret


    cp c
    ld h, b
    call c, $dd60
    ld h, b
    ld [de], a
    ld h, c
    ld e, d
    ld h, c
    ld l, e
    ld h, c
    rst $18
    ld h, c
    push af
    ld h, c
    inc e
    ld h, d
    ld b, [hl]
    ld h, d

Call_007_609e:
    ld hl, $d492
    bit 7, [hl]
    set 7, [hl]
    ret nz

    ld hl, $d7f1
    bit 5, [hl]
    jr z, jr_007_60af

    jr jr_007_60b3

jr_007_60af:
    ld a, $00
    jr jr_007_60b5

jr_007_60b3:
    ld a, $09

jr_007_60b5:
    ld [$d660], a
    ret


    ld a, [$d471]
    bit 7, a
    jr z, jr_007_60d2

    ld hl, $4e73
    ld b, $3f
    call Call_000_3e84
    jr c, jr_007_60d2

    ld hl, $64d5
    ld b, $3c
    call Call_000_3e84

jr_007_60d2:
    xor a
    ld [$cd6b], a
    ld a, $01
    ld [$d660], a
    ret


    ret


    ld a, $ff
    ld [$cd6b], a
    ld a, [$c109]
    and a
    ld de, $6108
    jr nz, jr_007_60fb

    call Call_000_154a
    jr nz, jr_007_60f8

    ld hl, $650b
    ld b, $3c
    call Call_000_3e84

jr_007_60f8:
    ld de, $610c

jr_007_60fb:
    ld a, $01
    ldh [$8c], a
    call Call_000_363d
    ld a, $03
    ld [$d660], a
    ret


    ld b, b
    ld b, b
    ld b, b
    rst $38
    ret nz

    ld b, b
    ld b, b
    add b
    ld b, b
    rst $38
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld a, $61
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_154a
    jr z, jr_007_613e

    ld hl, $614d
    ld a, [$c109]
    and a
    jr nz, jr_007_6133

    ld hl, $6152

jr_007_6133:
    call Call_000_159b
    ld hl, $4f20
    ld b, $3f
    call Call_000_3e84

jr_007_613e:
    xor a
    ld [$cd6b], a
    ld hl, $d7f1
    set 6, [hl]
    ld a, $04
    ld [$d660], a
    ret


    nop
    ld e, $1e
    ld e, $3f
    nop
    ld e, $1f
    ld e, $1e
    jr nz, jr_007_618f

    ccf
    ld a, [$d7f1]
    bit 3, a
    ret z

    ld a, $fc
    ld [$cd6b], a
    ld a, $05
    ld [$d660], a
    ret


    ld a, $02
    ld [$cf13], a
    ld a, $0c
    ldh [$eb], a
    ld a, $40
    ldh [$ec], a
    ld a, $06
    ldh [$ed], a
    ld a, $05
    ldh [$ee], a
    call Call_000_3295
    ld a, $62
    ld [$cc4d], a
    ld a, $15
    call Call_000_3eb4
    ld c, $08

jr_007_618f:
    call Call_000_372f
    ld hl, $d471
    bit 7, [hl]
    jr z, jr_007_61c6

    call Call_000_154a
    jr z, jr_007_61c6

    ld a, $02
    ldh [$8c], a
    ld a, $00
    ldh [$8d], a
    call Call_000_3488
    ld hl, $61dc
    call Call_000_159b
    ld a, $0f
    ld [$cd4f], a
    ld a, $00
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    ld hl, $4f20
    ld b, $3f
    call Call_000_3e84

jr_007_61c6:
    ld a, $02
    ldh [$8c], a
    ld de, $61d6
    call Call_000_363d
    ld a, $06
    ld [$d660], a
    ret


    nop
    ret nz

    ret nz

    ret nz

    nop
    rst $38
    nop
    scf
    ccf
    ld a, [$d72f]
    bit 0, a
    ret nz

    ld hl, $d7f1
    set 5, [hl]
    ld hl, $d7f0
    set 0, [hl]
    ld a, $07
    ld [$d660], a
    ret


    xor a
    ld [$d527], a
    ld a, $04
    ld [$c109], a
    ld a, $fc
    ld [$cd6b], a
    ld de, $6219
    ld hl, $ccd3
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld a, $08
    ld [$d660], a
    ret


    db $10
    inc bc
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    xor a
    ld [$d527], a
    ld a, $04
    ld [$c109], a
    ld a, $02
    ldh [$8c], a
    ld a, $00
    ldh [$8d], a
    call Call_000_3488
    xor a
    ld [$cd6b], a
    ld a, $02
    ldh [$8c], a
    call Call_000_2817
    ld a, $09
    ld [$d660], a
    ret


    ret


    ld d, h
    ld h, d
    ld h, b
    ld h, d
    ld l, h
    ld h, d
    ld c, a
    ld h, d
    rla
    ld e, d
    ld l, b
    jr z, @+$52

    ld [$3c06], sp
    ld hl, $6418
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $644a
    call Call_000_3e84
    jp Jump_000_23d2


    ld [$3c06], sp
    ld hl, $64a2
    call Call_000_3e84
    jp Jump_000_23d2


    dec c
    ld [bc], a
    rlca
    ld [bc], a
    nop
    rst $38
    rlca
    inc bc
    nop
    rst $38
    nop
    inc bc
    dec b
    add hl, bc
    ld a, [bc]
    rst $38
    rst $38
    ld bc, $080c
    ld [$ffff], sp
    ld [bc], a
    inc c
    add hl, bc
    ld a, [bc]
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
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld bc, $0e02
    ld c, $03
    inc c
    inc bc
    inc bc
    call Call_000_36ec
    ld hl, $62df
    call Call_000_3c36
    ld hl, $62d4
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_007_62cb

    ld a, $56
    call Call_000_3eb4

jr_007_62cb:
    ld hl, $62d9
    call Call_000_3c36
    jp Jump_000_36f8


    rla
    inc b
    ld b, a
    jr z, @+$52

    rla
    ld [hl+], a
    ld b, a
    jr z, @+$0f

    ld d, b
    rla
    ld b, c
    ld b, a
    jr z, jr_007_6334

    call Call_000_3c29
    ld a, $3b
    jp Jump_000_3f3a


    rla
    xor a
    ld h, h
    daa
    ld d, b
    call Call_000_3c29
    ld a, $05
    jp Jump_000_3f3a


    rla
    push bc
    ld h, h
    daa
    ld d, b
    call Call_000_3c29
    ld hl, $d2f6
    ld b, $13
    call Call_000_2a81
    ld a, [$d11d]
    cp $02
    ld a, $06
    jr c, jr_007_6314

    ld a, $07

jr_007_6314:
    jp Jump_000_3f3a


    rla
    db $e3
    ld h, h
    daa
    ld d, b
    rla
    dec bc
    ld h, l
    daa
    ld d, b
    ld hl, $d78f
    bit 7, [hl]
    jr z, jr_007_6344

    ld a, [$da46]
    and a
    jr z, jr_007_6349

    jr jr_007_6344

    ld a, [$d70c]
    ld b, a

jr_007_6334:
    ld a, [$d70d]
    ld c, a
    or b
    jr z, jr_007_6349

    dec bc
    ld a, b
    ld [$d70c], a
    ld a, c
    ld [$d70d], a

jr_007_6344:
    xor a
    ld [$da45], a
    ret


jr_007_6349:
    call Call_000_3c29
    xor a
    ld [$cfc6], a
    call Call_000_2233
    ld c, $02
    ld a, $b9
    call Call_000_2211

jr_007_635a:
    ld a, [$c02a]
    cp $b9
    jr nz, jr_007_635a

    ld a, $d3
    ldh [$8c], a
    call Call_000_2817
    xor a
    ld [$d527], a
    ld a, $9c
    ldh [$8b], a
    ld a, $03
    ld [$d42e], a
    ld a, $05
    ld [$d61e], a
    ld hl, $d78f
    set 6, [hl]
    ld a, $01
    ld [$da45], a
    ret


    xor a
    ld [$cd6b], a
    ld hl, $638f
    jp Jump_000_3c36


    ld [$46fa], sp
    jp c, $28a7

    ld b, $21
    and l
    ld h, e
    call Call_000_3c36
    ld hl, $63aa
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld b, a
    ld h, l
    daa
    ld d, b
    rla
    ld h, c
    ld h, l
    daa
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c29
    ld a, $33
    jp Jump_000_3f3a


    ld [$eaaf], sp
    scf
    jp c, Jump_007_7421

    call nc, $becb
    ld a, [$cd3d]
    push af
    and $0f
    ldh [$db], a
    pop af
    and $f0
    swap a
    ldh [$dc], a
    ldh a, [$db]
    ld hl, $6406
    cp $01
    jr z, jr_007_63e2

    ld hl, $640b

jr_007_63e2:
    call Call_000_3c36
    ldh a, [$db]
    dec a
    add a
    ld d, $00
    ld e, a
    ld hl, $6410
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c36
    ld a, $01
    ld [$cc3c], a
    call Call_007_643a
    jp Jump_000_23d2


    rla
    add b
    ld h, l
    daa
    ld d, b
    rla
    ld [hl], $66
    daa
    ld d, b
    rla
    nop
    ld h, a
    daa
    ld d, b
    inc e
    ld h, h
    ld hl, $2664
    ld h, h
    dec hl
    ld h, h
    jr nc, @+$66

    dec [hl]
    ld h, h
    rla
    ld e, $67
    daa
    ld d, b
    rla
    ld b, c
    ld h, a
    daa
    ld d, b
    rla
    ld l, h
    ld h, a
    daa
    ld d, b
    rla
    add [hl]
    ld h, a
    daa
    ld d, b
    rla
    add $67
    daa
    ld d, b
    rla
    ld a, [$2767]
    ld d, b

Call_007_643a:
    call Call_000_35ef
    ldh a, [$dc]
    ld c, a
    ld a, [$cc26]
    cp c
    jr nz, jr_007_6460

    ld hl, $d125
    set 5, [hl]
    ldh a, [$db]
    ldh [$e0], a
    ld hl, $6490
    call Call_000_3c36
    ldh a, [$e0]
    ld c, a
    ld b, $01
    call Call_007_64b7
    jp Jump_007_64bf


jr_007_6460:
    call Call_000_373e
    ld a, $a5
    call Call_000_2238
    call Call_000_373e
    ld hl, $64b2
    call Call_000_3c36
    ldh a, [$db]
    add $02
    ld c, a
    ld b, $02
    ld hl, $d799
    ld a, $10
    call Call_000_3eb4
    ld a, c
    and a
    ret nz

    ldh a, [$db]
    add $02
    ld [$da37], a
    ld hl, $d474
    set 7, [hl]
    ret


    dec bc
    rla
    dec d
    ld l, b
    daa
    ld b, $08
    ldh a, [$e0]
    ld c, a
    ld b, $02
    call Call_007_64b7
    ld a, c
    and a
    jp nz, Jump_000_23d2

    call Call_000_373e
    ld a, $ad
    call Call_000_2238
    call Call_000_373e
    jp Jump_000_23d2


    rla
    ld b, b
    ld l, b
    daa
    ld d, b

Call_007_64b7:
    ld hl, $d79b
    ld a, $10
    jp Jump_000_3eb4


Jump_007_64bf:
    ld a, $06
    ldh [$db], a

jr_007_64c3:
    ldh a, [$db]
    dec a
    add a
    add a
    ld d, $00
    ld e, a
    ld hl, $6503
    add hl, de
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    inc hl
    ld a, [hl]
    ld [$d12e], a
    push bc
    ldh a, [$db]
    ldh [$e0], a
    ld c, a
    ld b, $02
    call Call_007_64b7
    ld a, c
    and a
    jr nz, jr_007_64eb

    ld a, [$d12e]
    jr jr_007_64ed

jr_007_64eb:
    ld a, $0e

jr_007_64ed:
    pop bc
    ld [$d09e], a
    call Call_007_651b
    ld hl, $ffdb
    dec [hl]
    jr nz, jr_007_64c3

    ld hl, $6d59
    ld b, $03
    call Call_000_3e84
    ret


    add hl, bc
    inc bc
    ld d, h
    nop
    ld b, $03
    ld d, h
    nop
    ld b, $06
    ld d, h
    nop
    inc bc
    ld [$005f], sp
    ld [bc], a
    ld b, $54
    nop
    ld [bc], a
    inc bc
    ld d, h
    nop

Call_007_651b:
    ld hl, $c6e8
    ld a, [$d368]
    add $06
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    add hl, de
    ld e, $03
    add hl, de
    ld e, a
    ld a, b
    and a
    jr z, jr_007_6535

jr_007_6531:
    add hl, de
    dec b
    jr nz, jr_007_6531

jr_007_6535:
    add hl, bc
    ld a, [$d09e]
    ld [hl], a
    ret


    call Call_000_3c29
    ld a, $32
    call Call_000_3f3a
    ret


    rla
    ld d, d
    ld l, b
    daa
    ld d, b
    call Call_000_3c29
    ld a, [$c109]
    cp $04
    ret nz

    ld a, [$d7f1]
    bit 7, a
    jr nz, jr_007_65ad

    bit 3, a
    jr nz, jr_007_6561

    bit 6, a
    jr nz, jr_007_6566

jr_007_6561:
    ld a, $2f
    jp Jump_000_3f3a


jr_007_6566:
    ld a, $01
    ld [$cc3c], a
    ld a, $30
    call Call_000_3f3a
    ld c, $20
    call Call_000_372f
    ld a, $8c
    call Call_000_2238
    call Call_000_373e
    ld c, $50
    call Call_000_372f
    ld a, $9c
    call Call_000_2238
    call Call_000_373e
    ld c, $30
    call Call_000_372f
    ld a, $8c
    call Call_000_2238
    call Call_000_373e
    ld c, $20
    call Call_000_372f
    ld a, $86
    call Call_000_2238
    call Call_000_373e
    call Call_000_216b
    ld hl, $d7f1
    set 3, [hl]
    ret


jr_007_65ad:
    ld a, $01
    ld [$cc3c], a
    ld a, $31
    call Call_000_3f3a
    ret


    rla
    add b
    ld l, b
    daa
    ld d, b
    rla
    xor h
    ld l, b
    daa
    ld b, $08
    call Call_000_2233
    ld c, $10
    call Call_000_372f
    ld a, $9d
    call Call_000_2238
    call Call_000_373e
    ld c, $3c
    call Call_000_372f
    jp Jump_000_23d2


    ld [$0fcd], sp
    scf
    ld hl, $6654
    call Call_000_3c36
    xor a
    ld [$d07b], a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $03
    ld [$cc29], a
    ld a, $04
    ld [$cc28], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a

jr_007_6603:
    ld hl, $d72f
    set 6, [hl]
    ld hl, $c3a0
    ld bc, $0a09
    call Call_000_16f0
    ld hl, $c3ca
    ld de, $6659
    call Call_000_1723
    ld hl, $667f
    call Call_000_3c36
    call Call_000_36ec
    call Call_000_3aab
    bit 1, a
    jr nz, jr_007_6649

    ld a, [$cc26]
    add $66
    cp $66
    jr z, jr_007_6641

    cp $67
    jr z, jr_007_6641

    cp $68
    jr z, jr_007_6641

    cp $69
    jr z, jr_007_6641

    jr jr_007_6649

jr_007_6641:
    call Call_000_347d
    call Call_000_36f8
    jr jr_007_6603

jr_007_6649:
    ld hl, $d72f
    res 6, [hl]
    call Call_000_36f8
    jp Jump_000_23d2


    rla
    sub $68
    daa
    ld d, b
    add h
    add h
    sub l
    add h
    add h
    ld c, [hl]
    add l
    adc e
    add b
    sub c
    add h
    adc [hl]
    adc l
    ld c, [hl]
    adc c
    adc [hl]
    adc e
    sub e
    add h
    adc [hl]
    adc l
    ld c, [hl]
    sub l
    add b
    adc a
    adc [hl]
    sub c
    add h
    adc [hl]
    adc l
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    rla
    pop af
    ld l, b
    daa
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

    call Call_000_3c29
    ld a, $08
    call Call_000_3f3a
    ret


    rla
    ld de, $2769
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

Jump_007_7421:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
