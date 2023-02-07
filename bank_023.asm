; disasSembly of "yell.gbc"
SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    rst $00
    db $10
    ld a, a
    ld a, a
    ld [bc], a
    and [hl]
    ld bc, $036e
    ld h, c
    inc c
    ret nz

    inc b
    ld a, a
    rst $38
    rst $38
    ei
    inc sp
    ld a, a
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ec9e
    call z, $029e
    rst $00
    ld [de], a
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
    dec b
    ei
    cp $ff
    rst $38
    rst $38
    sbc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    add c
    or c
    ei
    rst $38
    add b
    nop
    inc bc
    rst $30
    ret nz

    nop
    nop
    cp a
    ld a, [$0000]
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    cp $60
    nop
    rlca
    rst $38
    ld hl, sp+$00
    nop
    ld [$0080], sp
    nop
    rlca
    ld a, [$0000]
    rrca
    rst $38
    ldh a, [$03]
    ccf
    ccf
    cp $03
    cp $1f
    rst $38
    add b
    dec bc
    rst $08
    rst $38
    ld hl, sp+$07
    rst $38
    rst $38
    ldh a, [rSB]
    db $fd
    ldh a, [$9f]
    ret z

Call_023_4080:
    ld bc, $8fff
    ldh [$0c], a
    add hl, sp
    ei
    ld a, h
    ld bc, $f8fb
    rrca
    call nz, Call_023_5f00
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    ldh [rNR41], a
    rlca
    rst $38
    add h
    nop
    ld sp, $ffff
    ret nz

    rra
    rst $18
    rst $38
    jr nc, jr_023_40e2

    cp e
    rra
    rst $38
    add b
    nop
    rra
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    db $fc
    add b
    nop
    ccf
    rst $38
    add sp, $00
    rlca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    db $fc
    nop
    ld bc, $ffff
    nop
    nop
    ld a, a

jr_023_40ce:
    rst $38
    ret nz

    nop
    rra
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    cp $00
    ld bc, $ffff
    add b
    nop
    ld a, a
    rst $38
    ret nz

    nop

jr_023_40e2:
    rra
    rst $38
    ldh a, [rP1]
    ld h, a
    rst $38
    db $fc
    nop
    dec de
    rst $38
    ld sp, hl
    nop
    ld b, $ff
    cp $00
    ld bc, $ffff
    jr nz, jr_023_40f7

jr_023_40f7:
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    ldh [rP1], a
    rra
    rst $38
    ret c

    nop
    ld e, $f7
    ldh a, [rP1]
    ccf
    rst $38
    and $00
    di
    rst $18
    call z, $cf40
    ccf
    ldh a, [rSB]
    rst $08
    rst $38
    ldh [$0c], a
    ld a, l
    rst $28
    nop
    ld sp, $def7

jr_023_4125:
    nop
    rst $20
    sbc a
    ld a, b

jr_023_4129:
    inc bc
    sbc a
    db $fd
    ret nz

    ld c, $7b
    rst $38
    nop
    ld sp, $3ccf
    ld bc, $3d8e

jr_023_4137:
    ldh [$0e], a
    ld [hl], e
    adc $00
    ld [hl], e
    sbc h
    ldh [rTAC], a
    jr c, jr_023_4129

    nop
    ld a, c
    rst $08
    jr c, jr_023_40ce

jr_023_4147:
    inc e
    rst $20
    add b
    ld [hl], c
    adc $70

jr_023_414d:
    rlca
    jr c, jr_023_4137

    inc c
    inc c
    ld h, e
    sbc c

jr_023_4154:
    add $39
    add $73
    inc e
    and $7f
    ld a, b
    db $e3
    jr c, jr_023_4125

    jr c, jr_023_4194

    adc h
    ld [hl], c
    inc e
    db $e3
    jr jr_023_417f

    rst $00
    jr c, jr_023_414d

    inc bc
    jr jr_023_4154

    jr jr_023_41d2

    di

jr_023_4170:
    adc h
    ld h, a
    add hl, sp
    adc $39
    pop af
    adc [hl]
    ld [hl], c
    adc $31
    adc $71
    rst $00
    inc e
    ld a, c

jr_023_417f:
    rst $00
    sbc h
    ld [hl], b
    rst $20
    add hl, de
    sbc h
    rst $20
    inc a
    db $e3
    inc e
    add $66
    jr c, jr_023_4170

    add hl, de
    db $fc
    ld [hl], e
    adc [hl]
    ld sp, $7bce

jr_023_4194:
    jr @-$1b

    sbc h
    and $30
    adc $73
    call nz, $4e00
    ld a, c
    pop hl
    nop
    add hl, sp
    rst $08
    jr c, @-$37

    add hl, sp
    adc $63
    inc e
    rst $20
    sbc [hl]
    ld a, [hl]
    ld [hl], c
    add b
    ccf
    db $fd
    call z, Call_000_3186
    call c, Call_000_30e7
    ld [hl], e
    adc $70
    ld h, e
    sbc [hl]
    pop af
    add $3b
    sbc b
    rst $20
    sbc h
    nop
    jr nz, jr_023_4147

    ld [$711c], sp
    adc [hl]
    ld a, c
    rst $20
    add a
    inc e
    pop hl
    adc h
    ld sp, $1887
    ret nz

jr_023_41d2:
    nop
    inc b
    ld [hl], b
    ret nz

    nop
    sbc a
    ld [hl], c
    ret nz

    inc bc
    inc a
    db $e3
    nop
    jr @-$1b

    adc h
    jr nz, jr_023_4226

    inc c
    ld h, b
    nop
    rst $00
    jr c, jr_023_41e9

jr_023_41e9:
    rst $08
    cp l
    ldh a, [$0d]
    rst $38
    rst $38
    ld sp, hl
    rst $08
    ld a, a
    rst $38

jr_023_41f3:
    rst $18
    rst $38

jr_023_41f5:
    rst $38
    cp $73
    adc [hl]
    ld [hl], c
    adc $79
    rst $38
    rst $38
    db $e3
    sbc a
    rst $38
    rst $00
    jr jr_023_41f3

    cp h

jr_023_4205:
    jr nc, @+$43

    inc c
    ld h, c
    nop
    nop
    inc b
    jr nz, jr_023_420e

jr_023_420e:
    nop
    ld b, a
    jr c, jr_023_41f5

    adc [hl]
    ccf
    pop af
    rst $38
    rst $38
    rst $20
    sub b
    nop
    jr nz, jr_023_421c

jr_023_421c:
    inc b
    nop
    ld b, c
    nop
    nop
    inc hl
    add $18
    ld h, a
    rst $38

jr_023_4226:
    db $fd
    rst $38
    ld a, a
    rst $08
    cp $7f
    rst $38
    db $fc
    rst $38
    rst $28
    ld e, $79
    di
    rst $38
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    db $fd
    add a
    sbc a
    ld [hl], a
    di
    sbc b
    call nz, RST_00
    nop
    jr c, jr_023_4205

    nop
    nop
    jp nz, RST_00

    nop
    nop
    nop
    nop
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
    nop
    rra
    or c
    rst $18
    cp $ff
    rst $38
    ld a, l
    rst $38

jr_023_4261:
    jp nc, $8c7f

    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    rlca
    rst $38
    ld l, h
    di
    add b
    inc h
    add h
    rrca
    add hl, sp
    ret z

    add b
    nop
    ld b, c
    or b

jr_023_427b:
    nop
    jr nc, jr_023_4261

    cp [hl]
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ldh [$d3], a
    db $ec
    adc c
    add h
    jr nc, jr_023_4290

    ld de, $f70d

jr_023_4290:
    cp $e7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    jr nz, @+$22

    nop
    inc bc
    nop
    ld [hl], e

jr_023_42a2:
    db $ec
    ld sp, hl
    rst $00
    inc e
    ld hl, $710c
    jp Jump_023_600c


    adc h
    ld hl, sp+$19
    jp RST_08


    nop
    ld a, b
    ld [hl], e
    ld a, a
    rst $38
    rst $38
    cp [hl]
    jr nc, jr_023_427b

    add b
    nop
    jr nc, @-$0d

    ld bc, $688c
    jr c, jr_023_42a2

    ei
    rst $08
    add $71
    pop af
    sbc $77
    sbc a
    adc [hl]
    db $e3
    sbc h
    ld h, a
    sbc [hl]
    ld c, c
    add $ee
    add hl, sp
    rst $00
    inc a
    rst $20
    add hl, sp
    adc [hl]
    ldh [$e3], a
    jr c, @+$21

    add [hl]
    inc a
    inc bc
    db $fc
    rra
    nop
    ld e, $00
    ld a, a
    ld bc, $cc83
    inc hl
    cp $00
    cp $01
    rrca
    or c
    ld bc, $009f
    sbc a
    nop
    ld a, a
    add b
    ld a, c
    add h
    ld a, c
    rrca
    jr jr_023_4305

    ret c

    ld a, b
    add [hl]
    ld a, b
    rlca
    db $fc
    rrca

jr_023_4305:
    nop
    ld a, [hl]
    nop
    ld a, h
    inc bc
    cp $01
    cp $03
    ldh a, [rTAC]
    ldh [$3f], a
    ret nz

    ccf
    nop
    rst $18
    ldh [$3f], a
    add b
    ccf
    ret nz

    ld a, a
    add b
    cp $00
    rst $38
    add b
    rst $38
    add c
    ld hl, sp+$00
    cp $03
    db $fc
    rlca
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    add b
    rst $38
    nop
    ccf
    add b
    rra
    ld hl, sp+$0f
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rSB]
    db $fc
    rlca
    db $fc
    nop
    rst $38
    ret nz

    ld a, a
    add b
    ld a, a
    ret nz

    rrca
    ldh a, [$1f]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$07
    ld hl, sp+$03
    rst $38
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add e
    ld bc, $0ff8
    rst $38
    ld bc, $0ff8
    ldh [$03], a
    db $fc
    jr nc, jr_023_4397

    ldh [$7f], a
    ld a, h
    rra
    add c
    db $fc
    nop
    ccf
    jp Jump_023_7fe0


    nop
    rst $38
    ldh a, [$7e]

jr_023_4397:
    rlca
    ldh a, [rTAC]
    cp $0f
    ret nz

    cp $00
    ccf
    ret nz

    db $fc
    rrca
    ldh [rTAC], a
    db $fc
    rra
    add b
    cp $00
    ccf
    ret nz

    ld hl, sp+$0f
    ldh [rSB], a
    cp $0f
    ret nz

    ccf
    add b
    rrca
    ldh a, [$3f]
    ld bc, $00fe
    ccf
    ret nz

    cp $03
    ld hl, sp+$00
    ld a, a
    ld bc, $07f8
    ldh a, [rP1]
    cp $03
    ld hl, sp+$0f
    cp $01
    cp $07
    ld hl, sp+$07
    ld hl, sp+$01
    cp $03
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $01fe
    cp $00
    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [c]
    ld bc, $01fe
    rst $38
    ld bc, $00fe
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$03]
    db $fc
    inc bc
    cp $01
    cp $00
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$03]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$1f], a
    db $fc
    rlca
    ld hl, sp+$00
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh [$03], a
    cp $01
    rst $38
    ret nz

    ld a, a
    add b
    rlca
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rra
    ldh a, [rIF]
    rst $38
    ld bc, $00fe
    rra
    ldh [rIF], a
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rTAC]
    rst $38
    add b
    rst $38
    add b
    rrca
    ld hl, sp+$07
    rst $38
    ret nz

    ccf
    ret nz

    rlca
    db $fc
    inc bc
    rst $38
    ldh a, [$1f]
    ldh [rSB], a
    cp $01
    rst $38
    db $fc
    inc bc
    db $fc
    ld b, $3f
    ret nz

    ccf
    rst $38
    add b
    rst $38
    ld de, $f887
    rrca
    rst $38
    ldh a, [rIF]
    ld [c], a
    ld sp, $01fe
    rst $38
    rst $38
    ld bc, $23fe
    rra
    ldh [rNR33], a
    rst $38
    ldh a, [$1f]
    ld [c], a
    ld hl, $01fe
    sbc a
    rst $38
    nop
    cp $21
    rra
    ldh [$03], a
    rst $38
    ld hl, sp+$0f
    pop af
    jr @+$01

    nop
    sbc a
    rst $38
    ret nz

    ld a, a
    sbc b
    add a
    ld hl, sp+$00
    rst $38
    cp $03
    db $fc
    call nz, $c03f
    rlca
    rst $38
    ldh a, [$1f]
    and $21
    cp $00
    ccf
    rst $38
    add b
    rst $38
    ld hl, $f00f
    ld bc, $fcff
    rlca
    ld sp, hl
    add b
    ld a, a
    ret nz

    rrca
    rst $38
    ret nz

    ccf
    ret z

    ld bc, $00fe
    ccf
    cp $01
    cp $c0
    rrca
    ldh a, [$03]
    rst $38
    ldh a, [$1f]
    cp $00
    ccf
    add b
    rrca
    rst $38
    nop
    rst $38
    ldh a, [$03]
    db $fc
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ret nz

    rra
    ldh [rTAC], a
    rst $38
    nop
    sbc a
    cp $00
    or $00
    ccf
    ldh a, [$09]
    rst $38
    ldh [rIF], a
    ld sp, $ff01
    nop
    rrca
    cp $00
    di
    jr @+$21

    ldh a, [rP1]
    rst $38
    ldh a, [rTAC]
    ld de, $ff81
    add b
    rlca
    rst $38
    nop
    ld [hl], c
    inc e
    rra
    ld hl, sp+$00
    ld a, a
    ld hl, sp+$07
    ld bc, $ffc1
    add b
    rlca
    rst $38
    add b
    ld h, b
    inc a
    rra
    ldh a, [rP1]
    ccf
    ld hl, sp+$02
    inc bc
    rst $00
    rst $38
    nop
    ld bc, $80ff
    nop
    ccf
    rst $38
    ldh a, [rP1]
    rra
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    nop
    nop
    rst $38
    ret nz

    nop
    ccf
    rst $38
    ldh a, [rP1]
    rrca
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    call z, Call_000_1c00
    ld a, a
    ldh a, [rP1]
    inc bc
    db $fc
    nop
    inc bc
    rst $00
    rst $38
    ld bc, $3ffc
    ret nz

    nop
    ld e, $3f
    ld hl, sp+$07
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    db $fc
    ld [$ff1f], sp
    ret z

    nop
    nop
    rra
    ret nz

    nop
    rlca
    rst $38
    rst $38
    inc bc
    ld a, a
    rst $38
    nop
    nop
    ld b, $c0

jr_023_4561:
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    rlca
    rst $38
    ld a, a
    rrca
    ret nz

    ld a, a
    adc a
    ret nz

    rra
    ld bc, $0e20
    rlca
    cp $fc
    nop
    nop
    ccf
    rst $38
    ldh [rNR34], a
    inc bc
    ldh [rTAC], a
    ld bc, $ffff
    rlca
    ldh a, [$7f]
    add e
    db $fc
    rra
    inc bc
    ld h, b
    rra
    rst $38
    cp $ff
    di
    add b
    ld [bc], a
    rlca
    ld hl, sp+$7e
    ld bc, $ff7f
    rst $38
    ldh [$fe], a
    nop
    nop
    nop
    rrca
    add b
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ld bc, $00fe
    ld a, a
    rst $38
    add b
    rra
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    db $fc
    nop
    rst $08
    rst $38
    ret nz

    rra
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    cp $3f
    rst $38
    ret nz

    ld e, $67
    rst $38
    db $fc
    nop
    ld bc, $ffff
    cp $76
    nop
    rra
    ccf
    add a
    ret nz

    nop
    rlca
    rst $38
    rst $38
    inc sp
    jr nc, jr_023_4561

    ld bc, $ffff
    call c, RST_20
    nop
    rlca
    rst $20
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    rst $38
    ld a, b
    nop
    nop
    sbc a
    rst $38
    ldh a, [$80]
    ret nz

    nop
    jr nz, jr_023_4638

    rst $38
    db $fc
    rst $38
    cp $c0
    nop
    ld [hl], c
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rra
    db $fc
    rra
    rst $38
    jr nz, jr_023_460f

jr_023_460f:
    nop
    ld a, a
    pop af
    cp $38
    inc b
    nop
    rlca
    rst $38
    add hl, de
    add c
    nop
    inc b
    nop
    rst $38
    add $00
    nop
    inc bc
    pop bc
    rst $38
    and $00
    nop
    rst $20
    jp $88ff


    nop
    rlca
    rst $38
    sbc a
    db $fc
    ld b, b
    nop
    ld a, a
    pop af
    rst $38
    ld [c], a
    nop
    inc bc

jr_023_4638:
    rst $38
    rst $30
    cp $20
    nop
    inc sp
    ld a, [$e6ff]
    nop
    rlca
    ld a, a
    ccf
    db $fc
    ld b, b
    nop
    rst $28
    rst $38
    rst $38
    jr jr_023_464d

jr_023_464d:
    add hl, sp
    ei
    rst $38
    ld a, [c]
    nop
    rlca
    rst $38
    rst $38
    db $e3
    nop
    rlca
    rst $38
    rst $38
    ld sp, hl
    add b
    ld bc, $bf9f
    ld sp, hl
    ret nz

    inc bc
    rst $38
    rst $28
    ld hl, sp-$40
    ld bc, $efdf
    ld hl, sp-$40
    inc bc
    rst $18
    rst $38
    pop af
    add b
    rlca
    ccf
    rst $38
    adc $00
    add hl, de
    rst $38
    rst $38
    jr nc, jr_023_467a

jr_023_467a:
    ld h, a
    rst $38
    pop af
    adc b
    ld b, $3d
    cp $30
    nop
    ld b, a
    ccf
    sbc h
    nop
    inc sp
    rst $38
    adc $00
    dec e
    rst $38
    xor $00
    rra
    rst $38
    sbc h
    nop
    dec sp
    db $fc
    ldh [rSB], a
    rra
    rst $38
    nop
    ld bc, $dcff
    nop
    rrca
    rst $38
    ret nz

    nop
    ccf
    cp $00
    ld bc, $e6ff
    nop
    rrca
    rst $38
    ldh [rSB], a
    ei
    call z, $1f00
    rst $38
    sub b
    ld bc, $fedf
    nop
    rlca
    rst $38

jr_023_46b9:
    db $10
    ld bc, $30cf
    nop

jr_023_46be:
    rrca
    rst $38
    ret nz

    ld c, $73
    sbc b
    add h
    ccf
    ld hl, sp+$01
    di
    adc [hl]
    ld [$ff67], sp
    nop
    cpl
    di
    ld [$9c1f], sp
    ld h, b
    inc hl
    rst $38
    cp b
    nop
    ccf
    db $fc
    ld bc, $71fe
    add b
    inc e
    rst $38
    ret nz

    rlca
    rst $38
    adc h
    ld e, $71
    rst $00
    inc c
    ccf
    di
    nop
    ccf
    ei
    ldh a, [rTMA]
    add hl, sp
    rst $08
    jr jr_023_46b9

    jr c, jr_023_4771

    db $e3
    inc e
    ccf
    sbc h
    ld h, e
    inc bc
    sbc a
    jr c, jr_023_46be

    rlca
    dec a
    pop hl
    rst $00
    ld [$dc3f], sp
    jr nz, @+$23

    rst $08
    db $fc
    nop
    ld e, $7f
    sub b
    adc b
    rst $00
    rst $38
    ret c

    ld h, e
    adc a
    jr c, @-$38

    ld e, $38
    db $e3
    ld c, $3f
    ld hl, sp-$40
    ld b, $7f
    xor $00
    ei
    rst $38
    inc c
    ccf
    ld sp, hl
    ret nz

    ld bc, $80e7
    inc b
    ccf
    ld sp, hl
    jp nz, $7d0e

    ldh [rP1], a
    inc b
    ld h, c
    nop
    inc bc
    sbc h
    sbc b
    nop
    rst $08
    ld [hl], c
    nop
    ld b, d

jr_023_473c:
    nop
    nop
    ld h, e
    sbc b
    inc c
    rlca
    add hl, sp
    add b
    nop
    ld b, e
    sbc b
    nop
    nop
    rst $38
    ldh a, [rP1]
    rlca
    ld [hl-], a
    nop
    ld b, $7e
    nop
    nop
    adc a
    rst $38
    db $fc
    nop
    rst $38
    rst $38
    add b
    ld [$d8ff], sp
    nop
    ld a, a
    rst $38
    add b
    ccf
    rst $38
    ret nz

    dec sp
    rst $38
    db $fc
    inc c
    rst $38
    rst $38
    ret z

    ccf
    rst $38
    nop
    nop
    ld e, $70

jr_023_4771:
    nop
    adc a
    rst $38
    inc e
    inc a
    di
    di
    sbc h
    ld e, b
    jr nz, jr_023_473c

    nop
    dec sp
    sbc c
    add b
    ld [$0080], sp
    nop

jr_023_4784:
    jr jr_023_4786

jr_023_4786:
    nop
    ld a, a
    cp $39
    rst $20
    rst $38
    ldh a, [$0c]
    ld a, a
    ldh [rP1], a
    rst $00
    cp $98
    ld h, a
    rst $38
    db $fc
    ld hl, $b9df
    add c
    rst $18
    rst $18

jr_023_479d:
    ccf
    rst $38
    rst $20
    nop
    nop
    nop
    jr nz, jr_023_47a5

jr_023_47a5:
    adc [hl]
    ld c, $1c
    ld a, c
    rst $20
    di
    dec de
    sbc a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    cp $71
    db $e3
    adc [hl]
    nop
    nop
    ld h, [hl]
    stop
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $7f
    rst $38
    rst $30
    ld c, a
    rst $38
    rst $38
    cp $7f
    rst $38
    xor $01
    nop
    jr jr_023_4810

    dec de
    nop
    nop
    jr nc, jr_023_479d

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    or b
    ld h, b
    nop
    nop
    nop
    nop
    dec de
    nop
    jr jr_023_4784

    sbc a
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    nop
    db $fd
    db $ec
    nop

jr_023_4810:
    nop
    nop
    nop
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

    add c
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
    dec c
    sub d
    ld a, a
    rrca
    ld a, e
    rst $38
    rst $38
    dec a
    cp a
    db $fc
    ret nz

    ld h, b
    cp a
    ei
    ld b, h
    add b
    nop
    inc de
    rst $38
    cp $00
    nop
    dec sp
    jp hl


    cp e
    ld de, $2482
    nop
    ld e, e
    add b
    nop
    nop
    nop
    ld l, h
    ccf
    rst $38
    rst $38
    rst $38
    ei

jr_023_4853:
    rst $30
    sub [hl]
    ld a, c
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
    ld a, a
    adc c
    add b
    ret c

    nop
    nop
    ld b, $3f
    inc e
    inc a
    ldh a, [$0e]
    db $e3
    rst $30
    sbc e
    ret nz

    ld b, a
    ld [$83e3], sp
    ld [$9ccc], sp
    db $ec
    ld a, d
    pop hl
    ld a, b
    inc a
    nop
    nop
    rlca
    rlca
    rst $38
    rst $38
    db $fc
    ld sp, hl
    add h
    ld h, e
    sbc h
    rst $00

jr_023_488a:
    jr jr_023_4853

    inc a
    pop af
    rst $00
    adc [hl]
    jr c, jr_023_488a

    jp $c319


    add a
    ld c, $3f
    ccf
    jr c, @-$0e

    ld hl, sp-$08
    ld c, [hl]
    ld [hl], a
    or e
    adc a
    adc $e3
    ccf
    inc a
    ld a, $3b
    inc e
    ldh a, [$f1]
    jr c, @+$75

    sbc c
    rst $08
    rra
    rlca
    ld c, $c7
    ld de, $f081
    ld [hl], c
    adc b
    ld e, $0f
    ld c, $38
    ldh [$fc], a
    jr c, jr_023_48fe

    jp $388f


    ld [hl], b
    ccf
    ld c, $61

jr_023_48c6:
    pop hl
    ret c

    ld [hl], b
    ld c, $78
    rrca
    inc sp
    add e
    ld hl, sp+$67
    inc e
    ret nz

    ld a, h
    ld b, $3f
    jp $e7f0


    rra
    jp $0f1e


    ldh [$de], a
    add hl, de
    pop hl
    cp $0f
    ldh [$de], a
    jr jr_023_48c6

    rst $38
    ld c, $f0
    rst $38
    inc bc
    db $fc
    inc bc
    adc $1c
    daa
    pop hl
    ld hl, sp+$73
    ld hl, sp+$1f
    add c
    db $e3
    ldh [rTAC], a
    pop bc
    cp $0f
    ldh [$bc], a

jr_023_48fe:
    rra
    jp $1ffc


    add e
    db $fc
    add hl, bc
    pop hl
    rst $38
    dec b
    ldh a, [rIF]
    inc b
    ld a, h
    rlca
    ret nz

    ccf
    pop bc
    ldh [$fe], a
    rlca
    ldh [$1f], a
    add c
    ld hl, sp+$0f
    ld b, $3e
    inc e
    rrca
    db $fc
    rra
    ldh [$7f], a
    ld bc, $1ff0
    ld bc, $3ff0
    add e
    ldh [$7f], a
    ldh [$7c], a
    rrca
    adc a
    add a
    rst $00
    add e
    ldh [$7f], a
    ldh a, [$78]
    ld a, $1f
    ldh [$7f], a
    rlca
    ldh [$7e], a
    rlca
    ldh a, [$3e]
    rlca
    ldh a, [$7f]
    add e
    ld hl, sp+$3f
    pop bc
    rst $38
    inc bc
    rrca
    ret nz

    rlca
    ldh [$3f], a
    nop
    ld hl, sp+$1f
    nop
    db $fc
    rrca
    add b
    db $fc
    rlca
    ldh [$7f], a
    nop
    ld hl, sp+$1f
    add e
    cp $03
    rst $38
    nop
    cp $00
    db $fc
    rlca
    db $fc
    rrca
    ldh a, [$3f]
    rra
    ret nz

    rst $28
    add e
    pop bc
    pop af
    ldh [$f8], a
    ld a, $0f
    add a
    jp $f8f0


    ld a, b
    rra
    rrca
    add a
    ldh a, [$31]
    ldh a, [$3e]
    rlca
    add e
    rst $00
    ret nz

    ld a, a
    ret nc

    rra
    ret nz

    ld [hl], b
    db $fc
    ccf
    rlca
    ldh [$f8], a
    ld a, a
    rlca
    pop hl
    ldh [$7c], a
    rlca
    ld hl, sp+$0f
    cp $07
    ret nz

    ld hl, sp+$03
    ldh a, [$7c]
    ld e, $0f
    add c
    db $e3
    db $e3
    ldh [$7f], a
    ldh a, [$60]
    db $fc
    ld e, $1f
    add e
    rst $08
    ret nz

    rst $38
    ld bc, $0ff8
    ldh a, [rIF]
    ld hl, sp+$30
    db $fc
    rrca
    rst $38
    inc bc
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    jp $018e


    cp $03
    rst $38
    ld bc, $00f0
    db $fc
    rlca
    db $fc
    rlca
    ldh [$3f], a
    ldh a, [$1f]
    nop
    rra
    ldh [$30], a
    db $fc
    ccf
    inc bc
    cp $01
    db $fc
    nop
    cp $03
    rst $38
    nop
    rst $38
    ld bc, $1cf0
    rra
    ret nz

    ccf
    rst $38
    ld bc, $03fc
    db $fc
    ld bc, $03fe
    rst $38
    nop
    rst $38
    ret nz

    rra
    adc $f8
    rrca
    ldh [rIF], a
    ldh a, [rIF]
    ldh [rTAC], a
    ld hl, sp+$1f
    ldh a, [rIF]
    rst $38
    add b
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    rra
    ret nz

    ld a, a
    ld bc, $00fe
    rst $38
    nop
    ld a, a
    ret nz

    rra
    ldh [$3f], a
    ld hl, sp+$0f
    ldh a, [$03]
    db $fc
    nop
    rst $38
    add b
    ccf
    add b
    ld a, a
    pop bc
    ldh a, [$1f]
    add a
    ldh [$7f], a
    ldh a, [$1f]
    ret nz

    rra
    rst $38
    ret nz

    ld a, a
    nop
    ld a, a
    rst $00
    ldh [$3f], a
    add b
    ccf
    rst $38
    ldh [$7f], a
    nop
    ccf
    jp Jump_000_1ff0


    adc [hl]
    rlca
    jp $07fc


    ldh [rTAC], a
    ldh a, [$7f]
    ret nz

    ld a, [hl]
    rlca
    di
    rlca
    cp $07

jr_023_4a4a:
    ret nz

    cp $00
    ld a, a
    ld hl, sp+$0f
    ret nz

    add a
    ldh [$7f], a
    ldh a, [$3f]
    ld bc, $81ff
    rst $38
    ldh [$3e], a
    ld b, $1f
    ret nz

    rra
    ldh a, [$1f]
    nop
    ccf
    add c
    rst $08
    db $fc
    rrca
    add b
    rra
    ldh [rTAC], a
    cp $03
    ldh [$3f], a
    ldh a, [rP1]
    rst $38
    ret nz

    ld hl, sp+$0f
    db $fc
    nop
    ccf
    ld hl, sp+$0f
    inc bc
    rst $38
    ret nz

    nop
    rst $38
    add c
    ldh a, [$37]
    db $fc
    nop
    rra
    ld hl, sp+$1f
    inc bc
    rst $38
    add c
    add b
    rst $38
    ret nz

    ldh a, [$3f]
    db $fc
    inc e
    rrca
    cp $07
    add c
    rst $38
    ldh [$e0], a
    ld a, a
    ld hl, sp+$1e
    rlca
    db $e3
    rst $20
    add b
    rst $38
    ldh [$78], a
    ld e, $4f
    rla
    inc bc
    rst $38
    ret nz

    ldh a, [$3c]
    cp $3e
    rlca
    cp a
    add c
    ldh [rPCM34], a
    ld hl, sp+$7c
    ld c, $7f
    inc bc
    ret nz

    ldh [$f8], a
    jr c, jr_023_4a4a

    rst $38
    inc bc
    ret nz

    db $e4
    ldh a, [$78]
    ld c, $ff
    inc de
    add b
    ldh [$f8], a
    ld hl, sp+$1f
    rst $38
    inc bc
    ret nz

    ldh [$f8], a
    ld hl, sp+$0f
    rst $38
    adc c
    ret nz

    ld h, b
    ld a, h
    ld hl, sp+$0f
    rst $38
    call nz, Call_000_30e0
    ccf
    inc e
    rlca
    sbc a
    ldh [rSVBK], a
    inc e
    rra
    adc [hl]
    inc bc
    adc a
    ld hl, sp-$64
    ld b, $0f
    db $e3
    nop
    rst $38
    cp $27
    ld bc, $f1c3
    or b
    dec a
    rst $38
    adc c
    ret nz

    ld [hl], b
    db $fc
    ld l, h
    rlca
    ld a, a
    ld [c], a
    ld [hl], b
    inc e
    rst $38
    rrca
    inc bc
    adc a
    db $fc
    ld c, [hl]
    inc bc
    sbc a
    and $02
    ld h, c
    rst $38
    adc c
    ret nz

    ld [hl], e
    rst $38
    ret nz

    call z, $f17f
    jr c, jr_023_4b24

    ld a, a
    ret c

    jr jr_023_4b29

    cp $23
    nop
    call Call_000_13fb
    inc bc
    rst $38
    ld [c], a
    ld [hl], b

jr_023_4b24:
    inc e
    sbc a
    and d
    jr nz, jr_023_4b68

jr_023_4b29:
    cp $27
    ld bc, $f099
    ld [hl+], a
    ld bc, $e2ff
    ld [hl], b
    inc e
    sbc a
    add d
    jr nz, @+$41

    cp $03
    add c
    ret


    ld hl, sp+$30
    dec de
    rst $38
    pop af
    jr c, jr_023_4b51

    ld l, a
    add c
    nop
    rst $18
    rst $38
    adc b
    ret nz

    ld [hl], e
    ld a, $00
    inc b
    ld a, a
    cp $07

jr_023_4b51:
    ld bc, $f0d9
    nop
    daa
    rst $38
    ldh a, [$38]
    ld c, $4f
    pop bc
    add b
    cp $ff
    call nz, Call_000_39e0
    ld a, $06
    rlca
    rst $38
    rst $38
    inc de

jr_023_4b68:
    add b
    db $ed
    ld hl, sp+$08
    rra
    rst $38
    db $fc
    rlca
    ld bc, $e0df
    jr nz, jr_023_4bb3

    rst $38
    ld hl, sp+$0e
    inc bc
    or e
    ret nz

    ret nz

    ld a, c
    rst $38
    ld hl, sp+$1c
    rlca
    ld h, a
    add c
    add b
    db $e3
    rst $38
    ldh a, [$3c]
    ld c, $6f
    add c
    ld bc, $ffc7
    ldh a, [$38]
    ld c, $7f
    add c
    ld bc, $ffdf
    ldh [$38], a
    inc c
    rst $18
    inc bc
    inc bc
    adc a
    rst $38
    ldh a, [$38]
    ld c, $7f
    ld [bc], a
    ld bc, $ff8f
    ldh a, [$3c]
    ld c, $7f
    add c
    nop
    rst $20
    rst $38
    ld hl, sp+$1c
    rlca
    ccf
    ret nz

jr_023_4bb3:
    nop
    jp $fcff


    rrca
    inc bc
    sbc a
    ldh [rP1], a
    ld [hl], c
    rst $38
    cp $07
    add c
    rst $08
    ldh [rP1], a
    ld sp, $ffff
    ld bc, $67c0
    ld hl, sp+$00
    inc e
    rst $38
    rst $38
    ret nz

    ldh a, [$38]
    cp $00
    rlca
    rra
    rst $38
    ldh a, [rNR32]
    ld b, $3f
    add b
    ld bc, $ff83
    db $fc
    rlca
    add c
    adc a
    ldh a, [rP1]
    ld [hl], b
    rst $38
    rst $38
    ld bc, $63f8
    db $fc
    nop
    inc e
    ccf
    rst $38
    ldh [$3f], a
    inc b
    ld a, a
    add b
    inc bc
    db $e3
    rst $38
    cp $07
    ldh a, [$8f]
    ldh a, [rP1]
    ld a, h
    rst $18
    rst $38
    ret nz

    rst $38
    db $10
    cp $00
    rra
    add c
    rst $38
    ld hl, sp+$0f
    ldh [$1f], a
    ret nz

    ld bc, $3ff0
    rst $38
    add c
    cp $01
    cp $00
    rra
    rlca
    rst $38
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$03], a
    ldh a, [rIE]
    rst $38
    ld bc, $01fe
    cp $00
    ccf
    rrca
    rst $38
    ld hl, sp+$0f
    ldh [$1f], a
    ldh a, [rTAC]
    ldh a, [$7f]
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    rrca
    rst $38
    db $fc
    rlca
    ldh a, [$03]
    ld hl, sp+$00
    rst $38
    cp a
    rst $38
    ret nz

    ld a, a
    add b
    rra
    ret nz

    rlca
    rst $38
    sbc a
    rst $38
    ld bc, $00fe
    cp $00
    rra
    ld hl, sp-$01
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    jp $c0ff


    ld a, a
    add b
    rra
    ret nz

    inc bc
    cp $0f
    cp $03
    db $fc
    nop
    rst $38
    nop
    rra
    ldh a, [$7f]
    ld hl, sp+$0f
    ldh a, [$03]
    db $fc
    nop
    ld a, a
    add c
    rst $38
    ldh [$3f], a
    ret c

    rrca
    ldh a, [rSB]
    cp $03
    rst $38
    add b
    rst $38
    ldh a, [$3f]
    ldh [rTAC], a
    db $fc
    rrca
    cp $01
    rst $38
    ret nz

    ld a, a
    ret nz

    rra
    ld hl, sp+$1f
    db $fc
    rlca
    rst $38
    nop
    rst $38
    nop
    rra
    ldh a, [$7f]
    ld hl, sp+$0f
    cp $01
    cp $00
    ccf
    ldh [rIE], a
    ldh a, [rIF]
    cp $03
    cp $00
    ld a, a
    pop bc
    rst $38
    ldh [$1f], a
    db $fc
    rlca
    db $fc
    nop
    rst $38
    pop bc
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    db $fc
    nop
    rst $38
    add e
    rst $38
    ret nz

    ccf
    ld hl, sp+$0f
    ld hl, sp+$01
    rst $38
    add e
    rst $38
    add b
    ld a, a
    ldh a, [$1f]
    ld hl, sp+$03
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ldh [$3f], a
    ldh a, [rTAC]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ldh [$3f], a
    ldh a, [rTAC]
    cp $0f
    cp $00
    rst $38
    ret nz

    ld a, a
    ldh [rTAC], a
    cp $1f
    cp $01
    rst $38
    ret nz

    ld a, a
    ret nz

    rrca
    db $fc
    ccf
    db $fc
    ld bc, $80ff
    rst $38
    ret nz

    rra
    db $fc
    ccf
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    add b
    rra
    ld hl, sp+$7f
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    add b
    rra
    ld hl, sp+$7f
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    add b
    rra
    ld hl, sp+$7f
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    add b
    rra
    db $fc
    ld a, a
    ld hl, sp+$01
    rst $38
    nop
    rst $38
    add b
    rra
    db $fc
    rst $38
    ld hl, sp+$01
    rst $38
    nop
    ld a, a
    add b
    rlca
    db $fc
    ld a, a
    db $fc
    nop
    rst $38
    add b
    rra
    ret nz

    inc bc
    cp $ff
    db $fc
    nop
    ld a, a
    add b
    rrca
    ret nz

    inc bc
    rst $38
    ld a, a
    cp $00
    ccf
    ret nz

    inc bc
    ldh a, [rSB]
    rst $38
    rst $38
    rst $38
    nop
    rra
    ldh a, [rSB]
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    add b
    rrca
    ld hl, sp+$00
    db $fc
    nop
    ccf
    rst $38
    rst $38
    ldh [$03], a
    db $fc
    nop
    ccf
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    rst $38
    add b
    rrca
    ldh [$03], a
    cp $1f
    cp $00
    ccf
    ldh [$03], a
    ld hl, sp+$00
    rst $38
    pop bc
    rst $38
    ret nz

    rrca
    db $fc
    nop
    rst $38
    nop
    ccf
    ldh a, [$7f]
    ld hl, sp+$01
    rst $38
    nop
    rra
    ret nz

    rlca
    cp $1f
    rst $38
    nop
    ccf
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    pop bc
    rst $38
    ldh [$03], a
    cp $00
    ld a, a
    nop
    rra
    ld hl, sp+$3f
    cp $00
    ccf
    ret nz

    rrca
    ldh a, [rSB]
    rst $38
    add c
    rst $38
    ldh [$03], a
    cp $00
    ld a, a
    nop
    rrca
    db $fc
    rra
    cp $00
    ccf
    ldh [rTAC], a
    ldh a, [rP1]
    rst $38
    pop bc
    rst $38
    ldh a, [rSB]
    rst $38
    nop
    ccf
    add b
    rlca
    cp $0f
    rst $38
    add b
    rra
    ld hl, sp+$01
    ld hl, sp+$00
    ccf
    ldh a, [$3f]
    cp $00
    ld a, a
    ldh [rIF], a
    ldh [rSB], a
    rst $38
    rst $28
    rst $38
    ld hl, sp+$00
    rst $38
    add b
    rrca
    add b
    inc bc
    rst $38
    add e
    rst $38

Call_023_4de7:
    ldh [$03], a
    cp $00
    ld a, $00
    rrca
    rst $38
    rlca
    rst $38
    ret nz

    rlca
    db $fc
    nop
    ld a, h
    nop
    rra
    db $fc
    rra
    rst $38
    add b
    rra
    ld hl, sp+$00
    ldh a, [rP1]
    ccf
    ld hl, sp+$3f
    rst $38
    nop
    rrca
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, a
    ldh a, [$3f]
    rst $38
    nop
    rra
    ldh a, [rSB]
    ldh [rP1], a
    ld a, a
    ldh [$3f], a
    rst $38
    nop
    rra
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, a
    ldh a, [$3f]
    rst $38
    nop
    rrca
    ldh a, [rP1]
    ldh a, [rP1]
    ccf
    ldh a, [$3f]
    rst $38
    add b
    rrca
    ld hl, sp+$00
    ld [hl], b
    nop
    ccf
    ld hl, sp+$1f
    rst $38
    ret nz

    rlca
    db $fc
    nop
    jr c, jr_023_4e3d

jr_023_4e3d:
    rra
    db $fc
    rrca
    rst $38
    ldh [$03], a
    cp $00
    ld e, $00
    rrca
    cp $07
    rst $38
    ldh a, [rSB]
    cp $00
    ld e, $00
    rlca
    rst $38
    rlca
    rst $38
    ld hl, sp+$00
    rst $38
    nop
    rrca
    nop
    inc bc
    rst $38
    jp $fcff


    nop
    ld a, a
    add b
    rlca
    nop
    ld bc, $c1ff
    rst $38
    cp $00
    ccf
    ret nz

    inc bc
    add b
    nop
    rst $38
    pop hl
    rst $38
    rst $38
    nop
    rrca
    ldh [rP1], a
    ret nz

    nop
    ld a, a
    ld hl, sp+$7f
    rst $38
    ret nz

    inc bc
    ld hl, sp+$00
    jr nz, jr_023_4e84

jr_023_4e84:
    rra
    db $fc
    ccf
    rst $38
    ldh a, [rP1]
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $00
    rra
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    inc bc
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld b, $00
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    jr nc, jr_023_4ecb

jr_023_4ecb:
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$7f
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    ldh [$3f], a
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    nop
    ld bc, $ffff
    ld hl, sp+$07
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    nop
    ld bc, $feff
    nop
    inc bc
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    ldh a, [$08]
    ld a, a
    rst $38
    ldh [rP1], a
    rra
    db $fc
    nop
    nop
    rra
    db $fc
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ldh [rP1], a
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, $00
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld h, b
    nop
    ccf
    rst $38
    rst $38
    ld sp, hl
    adc a
    cp $00
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    cp $0b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $feff
    inc bc
    rst $38
    rst $38
    rst $38
    or $ff
    ret nz

    nop
    nop
    inc bc
    or $00
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    db $f4
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc bc
    db $fc
    inc b
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    jr nc, jr_023_4ff9

jr_023_4ff9:
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    nop
    nop
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    di
    inc [hl]
    nop
    nop
    nop
    nop
    dec b
    sbc a
    rst $38
    rst $38
    db $fc
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_023_5047:
    ld a, a
    dec de
    nop
    nop
    nop
    nop
    ld bc, $ff3f
    rst $38
    rst $38
    rst $38
    cp $7f
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    or b
    ei
    cp h
    rst $28
    ldh [$60], a
    stop
    nop
    ld h, b
    nop
    nop
    ld h, b
    ld c, h
    jr nz, jr_023_5072

jr_023_5072:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_023_509a

    nop
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
    cp c
    add b
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $847f
    ret z

    rra
    rst $30
    rst $18
    nop
    ld [bc], a
    rra
    rst $38
    rst $38
    rst $38

jr_023_509a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    db $fd
    rst $38
    ld h, b
    ld b, c
    sub b
    nop
    nop
    nop
    db $10
    ld b, c
    jr nc, jr_023_5047

    ld b, b
    ld [bc], a
    inc b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    call z, $0880
    ret c

    ld a, a
    rst $30
    ccf
    dec c
    ld a, a
    ld a, a
    ld [bc], a
    ld l, [hl]
    ld bc, $006e
    nop
    nop
    nop
    nop
    nop
    ld bc, $3fa3
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    inc a

jr_023_50e8:
    rst $20
    rst $38
    rst $38
    rst $38
    ld hl, sp+$2f
    ld h, [hl]
    ld a, a
    or $ff
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    inc de
    rst $38
    rst $38
    rst $28
    rst $30
    rst $18
    rst $18
    rst $38
    sbc [hl]
    ld a, [hl-]
    jr c, jr_023_50e8

    jr nc, jr_023_5108

jr_023_5108:
    inc c
    ld c, $1c
    inc e
    db $10
    inc bc
    ld bc, $1c3e
    jr c, jr_023_511f

    ld [hl], d
    ld h, b
    ret nz

jr_023_5116:
    db $e3
    jp $e3c3


    rst $00
    rst $00
    adc [hl]
    ld c, $1c

jr_023_511f:
    ld [hl], b
    rst $20
    rst $38
    rst $08
    inc a
    ld a, e
    ld e, $1c
    inc a
    ld c, $71
    rst $00
    rst $20
    rst $00
    adc a
    ld e, $1c
    jr c, jr_023_516a

    dec sp
    rst $08
    db $fd
    di
    db $fc
    db $e3
    db $10
    ld b, $1c
    jr @+$21

    di
    rst $38
    rst $38
    call c, Call_000_2070
    nop
    add c
    rra
    sbc a
    ccf
    rst $38
    db $fc
    ld [hl], c
    add b
    nop
    nop
    inc e
    di
    rst $18
    rst $38
    cp $ec
    stop
    nop
    adc a
    rst $38
    rst $38
    rst $30
    cp $c0
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    inc bc
    rst $38

jr_023_516a:
    rst $38
    rst $38
    cp $30
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    call z, RST_00
    nop
    rrca
    rst $38
    rst $38
    rst $38
    db $ec
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ret c

    nop
    nop
    ld bc, $ffdf
    rst $38
    rst $38
    add b
    nop
    ld [$ff7b], sp
    rst $38
    rst $38
    jr c, jr_023_5116

    nop
    ld b, $3f
    rst $38
    rst $38
    rst $38
    stop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ret nc

    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    sbc b
    nop
    nop
    inc sp
    rst $38
    rst $38
    rst $38
    db $ec
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ret z

    nop
    nop
    dec e
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ff1f
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    dec c
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    add b
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
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $28
    add b
    nop
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rrca
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
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    db $fc
    jr nz, jr_023_52d8

jr_023_52d8:
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $e4
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    nop
    db $10
    ld [$0000], sp
    ld a, a
    rst $38
    rst $38
    db $f4
    jr nc, jr_023_530b

jr_023_530b:
    rst $08
    ld sp, hl
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ff7f
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    db $fd
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $08
    rst $38
    ei
    ret nz

    nop
    nop
    ld b, $ff
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    ei
    ret nz

    nop
    nop
    rlca
    rst $38
    db $fd
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    cp $e0
    nop
    nop
    rra
    rst $38
    db $fc
    ldh [rP1], a
    nop
    ccf
    rst $38
    ld sp, hl
    jp nz, RST_00

    ld a, a
    rst $38
    di
    add h
    nop
    nop
    rst $38
    rst $38
    rst $20
    jr jr_023_5394

jr_023_5394:
    ld bc, $ffff
    sbc h
    jr nz, jr_023_539a

jr_023_539a:
    rlca
    rst $38
    cp $70

jr_023_539e:
    ret nz

    nop
    rra
    rst $38
    ld sp, hl
    jp RST_00


    ld a, a
    rst $38
    rst $20
    jr jr_023_53ab

jr_023_53ab:
    inc bc
    rst $18
    rst $38
    cp b
    ld h, b
    nop

jr_023_53b1:
    rrca
    rst $38
    db $fc
    db $e3
    nop
    nop
    ld [hl], a
    rst $38
    rst $20
    jr jr_023_53bc

jr_023_53bc:
    inc bc
    rst $38
    rst $38
    jr c, @-$3e

    nop
    ccf
    rst $38
    di
    adc h
    nop
    ld bc, $ffff
    sbc b
    ret nz

    nop
    rra
    rst $38
    ld sp, hl
    add $00
    nop
    rst $28
    rst $38
    sbc h
    ld h, b
    nop
    ld c, $ff
    ld sp, hl
    add $00
    nop
    rst $28
    rst $38
    sbc h
    ldh [rP1], a
    inc e
    rst $38
    ei
    adc h
    jr nz, jr_023_53ea

    rst $18

jr_023_53ea:
    rst $38
    jr c, jr_023_53b1

    nop
    add hl, sp
    rst $38
    rst $30
    jr jr_023_5433

    inc bc
    cp a

jr_023_53f5:
    cp $63
    adc b
    nop
    ld [hl], e
    rst $38
    adc $30
    nop
    rlca
    ld a, a
    db $fd
    add $10
    nop
    rst $28
    rst $38
    cp b
    jp nz, Jump_000_1d00

    rst $38
    rst $30
    jr jr_023_544e

    inc bc
    cp a
    cp $e3
    stop
    ld [hl], a
    rst $38
    cp b
    jp nz, Jump_000_1c00

    rst $38
    rst $28
    jr c, jr_023_539e

    rlca
    ccf
    ei
    adc $20
    ld bc, $fecf
    db $e3
    ld [$7704], sp
    rst $38
    ld a, c
    ret nz

    nop
    dec e
    rst $38
    sbc h
    ld h, b
    nop

jr_023_5433:
    ld e, $ff
    adc $30
    nop
    rlca
    rst $38
    rst $20
    jr jr_023_543d

jr_023_543d:
    inc bc
    rst $38
    di
    adc h
    nop
    ld bc, $f9ff
    add $00
    ld bc, $fdff
    add $00
    nop
    rst $38

jr_023_544e:
    db $fc
    db $e3
    nop
    nop
    ld a, a
    cp $e3
    nop
    nop
    ccf
    cp $71
    add b
    nop
    ccf
    rst $38
    ld a, c
    ret nz

    nop

jr_023_5461:
    rra
    rst $38
    cp b
    ret nz

    nop
    rrca
    rst $38
    db $fc
    ld h, b
    nop
    rlca
    rst $38
    sbc $70
    nop
    inc bc
    rst $38
    rst $28
    jr c, jr_023_53f5

    inc bc
    cp a
    rst $30
    sbc h
    ld b, b
    nop
    rst $08
    ld sp, hl
    adc $30
    nop
    ld h, a
    cp h
    di
    sbc h
    ld b, b
    nop
    adc [hl]
    cp $73
    adc h
    nop
    ld bc, $f3dc
    sbc [hl]
    ld [c], a
    nop
    inc b
    ld [hl], c
    rst $08
    rst $38
    ldh [rP1], a
    nop
    jr nz, jr_023_5461

    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    rlca
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    inc c
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    ei
    rst $18
    ld a, c
    ret nz

    nop
    add hl, de
    rst $28
    ld a, b
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld hl, $78ce
    add d
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ei
    nop
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    add hl, bc
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    daa
    rst $38
    cp $00
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $ffff
    ld hl, sp+$00
    nop
    rrca
    rst $38
    db $fc
    ret nz

    nop
    rst $28
    rst $38
    cp $e0
    nop
    rra
    rst $38
    rst $38
    cp b
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [$0d]
    rst $38
    rst $38
    db $fc

jr_023_5546:
    ret nz

    ld bc, $ff9f
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $709f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fe3f
    add b
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $0033
    nop
    nop
    ld bc, $ffff
    ldh a, [rSB]
    ld a, a
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_023_5590

    rst $38
    rst $38
    rst $38
    cp $0f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    or a
    rst $38
    rst $38
    and $00
    nop
    ret nz

jr_023_5590:
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    ei
    or e

jr_023_55af:
    ld sp, $ff31
    rst $38
    rst $38
    ret nz

    scf
    rla
    rst $38
    db $fd
    jr c, jr_023_55c2

    db $fd
    sub e
    ldh a, [rSB]
    sbc a
    db $fc
    sbc a

jr_023_55c2:
    ld c, h
    nop
    jr nz, jr_023_5546

    nop
    ld a, $1c
    inc a
    ld a, b
    ld a, h
    ld h, b
    ldh [$e0], a
    nop
    call c, $0f3e
    sbc a
    rra
    db $ec
    ld a, b
    ld [hl], b
    ld b, b
    pop bc
    rst $20
    jp $e387


    rst $38
    ldh [rNR23], a
    ld c, $0f
    rst $00
    rst $38
    ret nz

    nop
    ld hl, sp+$1d
    rst $38
    ret c

    ld b, b
    nop
    rst $38
    sbc h
    rst $20
    adc b
    nop
    inc bc
    cp $f7
    jr jr_023_55f7

jr_023_55f7:
    ld bc, $dcff
    ret nz

    nop
    rlca
    rst $38
    call c, Call_000_00c0
    ld b, $ff
    call c, Call_000_1140
    adc [hl]
    rst $38
    sbc b
    add b
    inc hl
    cp a
    rst $38
    ld sp, $6700
    rst $38
    cp $22
    nop
    rst $08
    rst $30
    db $fc
    call nz, $3f01
    rst $28
    ld sp, hl
    adc b
    ld b, $7f
    rst $38
    di
    jr nc, jr_023_55af

    rst $38
    ld a, a
    call nz, Call_000_3343
    cp h
    rst $38
    add hl, de
    adc h
    and $67
    cp $62
    add hl, de
    sbc l
    adc a
    ld hl, sp-$34
    ld h, a
    ld a, d
    ccf
    di
    db $10
    adc $f4
    ld a, a
    add $21
    cp c
    pop de
    rst $38
    sbc b
    add [hl]
    ld h, a
    inc hl
    cp $20
    add hl, de
    sbc h
    rrca
    ld hl, sp-$40
    ld [hl], a
    ld [hl], b
    rra
    db $e3
    ld bc, $c0dd
    rst $38
    adc h
    rlca
    ld [hl], e
    ld bc, $20fe
    dec e
    call c, $f80f
    add b
    ld [hl], a
    ld [hl], b
    ccf
    and $01
    db $fd
    ret nz

    rst $38
    jr jr_023_5678

    xor $03
    db $fc
    ret nz

    scf
    jr c, jr_023_5690

    ld [c], a
    ld bc, $c0dd
    rst $38
    jr jr_023_567f

jr_023_5678:
    ld a, a
    inc bc
    db $fc
    ret nz

    ccf
    ld hl, sp+$1f

jr_023_567f:
    ld [c], a
    ld bc, $c0ff
    rst $38
    jr jr_023_5694

    cp $07
    pop af
    add b
    ld a, a
    ldh a, [$3f]
    adc h
    rlca
    ld [hl], a

jr_023_5690:
    ld bc, $60fc
    dec sp

jr_023_5694:
    cp b
    rra
    and $01
    db $dd
    ret nz

    cp $30
    dec e
    call c, $f30f
    nop
    adc $e0
    ld a, a
    jr jr_023_56b4

    ld a, [hl]
    rlca
    pop af
    add b
    and $71
    ld a, a
    sbc b
    ld b, $67
    rla
    pop af
    add b
    ld h, e

jr_023_56b4:
    ld [hl], c
    rst $38
    jr @+$10

    daa
    ccf
    pop af
    add b
    db $e4
    ld [hl], e
    cp $38
    inc c
    rrca
    ccf
    db $e3
    ld bc, $f7c0
    db $fc
    ld [hl], b
    jr jr_023_56e9

    rst $38
    add $03

jr_023_56ce:
    ld bc, $f8cf
    ldh [$30], a
    inc e
    rst $38
    adc a
    jp $8301


    ld hl, sp-$04
    ld [hl], b
    ld bc, $8f3f
    rst $00
    pop bc
    ld de, $eef8
    ld a, [hl]
    dec de
    ld e, $86
    ld h, e

jr_023_56e9:
    pop hl
    pop af
    ldh [$30], a
    ccf
    rra
    adc [hl]
    nop
    rlca
    rst $38
    cp $e0
    nop
    dec de
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    db $e4
    nop
    nop
    rst $38
    rst $38
    ld a, [c]
    nop
    ld bc, $ffff
    ldh a, [rP1]
    inc c
    and $ff
    cp c
    sbc h
    jp nz, Boot

    adc a
    rst $38
    ld h, b
    nop
    nop
    rra
    rst $38
    di
    jr nc, jr_023_571b

jr_023_571b:
    inc c
    ld a, a
    rst $38
    adc b
    nop
    nop
    ld [hl], e
    rst $38
    rst $38
    ldh a, [rP1]
    ld c, $01
    rst $38
    rst $38
    db $fc
    ldh [rP1], a
    ret c

    rrca
    rst $38
    rst $38
    sbc h
    nop
    rlca
    db $e3
    rst $38
    rst $38
    xor $70
    nop
    add hl, bc
    inc c
    ld l, a
    rst $38
    ldh a, [rP1]
    nop
    ld l, [hl]
    rst $30
    ccf
    rst $38
    call nz, Call_000_0002
    jr @-$02

    ld a, h
    ld a, a
    jr jr_023_56ce

    ld bc, $f18f
    add b
    nop
    add hl, de
    sbc $c4
    nop
    rra
    rst $38
    db $ec
    nop
    nop
    ld bc, $ee9c
    ld h, d
    jr c, jr_023_576a

    adc [hl]
    rst $20
    rst $38
    ld sp, hl
    call c, Call_000_33dc
    inc a

jr_023_576a:
    rra
    rst $38
    rst $20
    ldh a, [rP1]
    nop
    nop
    add hl, sp
    db $fc
    rst $20
    inc sp
    or c
    rst $38
    add $3b
    sbc l
    rst $18
    db $fc
    ld h, e
    nop
    inc c
    rst $38
    cp $00
    nop
    rra
    rst $38
    call nz, Boot
    rra
    xor $67
    nop
    ld [$66c4], sp
    ld [hl], b
    nop
    nop
    nop
    ld b, [hl]
    ld b, b
    nop
    call z, Call_023_4080
    ld b, b
    nop
    nop
    rra
    adc $7f
    rst $38
    ret c

    ret nz

    ld h, e
    sbc a
    cp $ec
    nop
    ld sp, $dffd
    rst $38
    di
    sbc c
    call z, Call_023_60ce
    nop
    sbc h
    rst $28
    rst $38
    ccf
    jp nz, RST_00

    ld de, $0008
    nop
    ld bc, $ee1c
    ld a, e
    inc a
    inc c
    xor $63
    add hl, de
    nop
    ld [hl], $f7
    ei
    cp $60
    ld [bc], a
    ld bc, $ff8f
    rst $30
    pop af
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    db $fd
    adc h
    ld h, l
    rst $38
    di
    ld sp, hl
    cp $ef
    inc sp
    ccf
    nop
    cpl
    db $e4
    jr nz, jr_023_57ee

jr_023_57ee:
    nop
    nop
    rra
    rst $28
    ld a, l
    add b
    add hl, de
    ld b, b
    inc sp
    add hl, de
    cp a
    rst $28
    rst $38
    db $fc
    dec b
    add b
    ld c, $f2
    nop
    ld sp, hl
    ld [$1646], sp
    dec e
    rst $38
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
    pop hl
    sub e
    ld [de], a
    ld e, a
    db $fd
    ld h, [hl]
    and b
    ld [bc], a
    ld b, h
    ld a, [c]
    ld [hl], c
    call z, $e723
    and [hl]
    ld h, h
    db $10
    ld b, h
    inc h
    and h
    jp c, $c909

    ld l, h
    dec b
    or l
    rst $20
    ld hl, sp-$67
    ld hl, $0f4c
    ld e, d
    ld e, e
    ld c, c
    ld b, d
    ld b, b
    or $50
    ldh [$92], a
    ret c

    ld [hl], d
    ld c, l
    dec h
    or [hl]
    adc c
    or a
    and h
    jp c, Jump_023_794a

    inc hl
    ld l, [hl]
    ld h, a
    or [hl]
    sub b
    ld h, h
    db $db
    dec h
    adc c
    ld h, l
    and l
    adc c
    dec de
    ld l, [hl]
    ret


    cp l
    db $db
    ld c, e
    ld l, c
    inc h
    add c
    ld [hl], $df
    ld h, l
    and b
    dec bc
    ld l, b
    ret z

    ei
    ld l, b
    jp nz, $9804

    db $ed
    or a
    or $c8
    inc h
    or d
    db $db
    rst $38
    and e
    ld bc, $362d
    ld a, l
    or h
    inc c
    sub [hl]
    jp nz, Jump_023_6d4b

    sub h
    db $db
    ld b, [hl]
    ld l, a
    rst $38
    inc h
    dec h
    call z, Call_023_7f67
    inc h
    ld e, l
    sbc c
    cp [hl]
    ld a, [hl]
    nop
    ld a, [$7966]
    ld hl, sp+$60
    pop af
    sbc c
    rst $20
    jp $8607


    adc a
    ccf
    inc c
    ld e, h
    ld [hl], $78
    ld hl, sp+$62
    db $e3
    and c
    rst $00
    add a
    rra
    ld [hl], $1c
    jr c, @+$7b

    di
    ld h, c
    jp $fe47


    ld h, [hl]
    ld [hl-], a
    ld b, c
    cp a
    add hl, de
    adc h
    add b
    ld l, a
    call Call_000_0026
    rra
    call z, $0093
    sbc a
    call z, $0093
    rra
    call z, Call_000_0092
    ccf
    db $dd
    and [hl]
    nop
    ccf
    sbc e
    inc c
    nop
    ld a, a
    cp d
    ld c, b
    nop
    ld a, a
    db $76
    sub b
    nop
    cp $f9
    jr nz, jr_023_58d6

    ld sp, hl

jr_023_58d6:
    or $40
    rlca
    di
    jp hl


    add b
    rrca
    rst $28
    ld [de], a
    nop
    ccf
    sbc h
    ld c, h
    nop
    ld a, [hl]
    ld [hl], b
    db $10
    ld bc, $e0fd
    ld b, c
    rlca
    rst $30
    add c
    add [hl]
    rra
    sbc [hl]
    inc b
    inc e
    ld a, [hl]
    ld a, b
    db $10
    ld [hl], c
    ld sp, hl
    ldh [rSTAT], a
    rst $28
    rst $20
    ld bc, $ff07
    inc e
    inc c
    ccf
    ld a, h
    ldh a, [$30]
    db $fd
    di
    add b
    jp $ceff


    inc bc
    rra
    cp a
    jr c, jr_023_592c

    ld a, [hl]
    db $fc
    ldh [rSVBK], a
    ld sp, hl
    pop af
    add b
    jp $e7f7


    ld bc, $ef87
    add $03
    adc a
    rst $28
    add $03
    sbc a
    rst $08
    add $03
    sbc a
    rst $08
    add $03
    sbc a

jr_023_592c:
    rst $08
    add $03
    adc a
    rst $08
    add $03
    adc a
    rst $08
    jp nz, $8f03

    rst $08
    jp nz, $cf03

    rst $08
    jp nz, $8d03

    rst $08
    jp $c103


    rst $08
    ld [c], a
    ld bc, $efd9
    ld [c], a
    ld bc, $efd9
    ld [c], a
    ld bc, $efd8
    ldh [rSB], a
    ld hl, sp-$01
    ldh [rNR11], a
    db $fc
    rst $38
    ldh a, [rP1]
    db $fc
    rst $38
    ldh a, [$08]
    cp $7f
    ld hl, sp+$08
    ld a, [hl]
    ld a, a
    ld a, b
    inc b
    ld a, a
    ccf
    cp h
    ld [bc], a
    ccf
    rra
    sbc $01
    rra
    rst $08
    rst $28
    nop
    adc a
    rst $20
    rst $30
    ret nz

    ld b, e
    di
    ei
    ldh [$31], a
    ld hl, sp-$04
    ld hl, sp+$0c
    ld a, [hl]
    ccf
    inc a
    ld b, $3f
    dec e
    rst $18
    ld bc, $c78f
    ld h, a
    ret nz

    ld h, e
    pop af
    reti


    ldh a, [rNR23]
    db $fc
    ld h, a
    ld a, h
    ld b, $3f
    dec bc
    sbc a
    ld bc, $e087
    rst $20
    ldh [$61], a
    ld hl, sp+$3d
    ld hl, sp-$74
    ccf
    rlca
    sbc a
    ld bc, $c18d
    db $e3
    ldh [$31], a
    ld hl, sp+$2e
    ld a, h
    ld b, [hl]
    rla
    add c
    rst $08
    ret nz

    jp nz, Jump_000_1970

    ld hl, sp+$0c
    ld c, $07
    ccf
    add c
    add l
    pop hl
    inc sp
    ldh a, [rNR23]
    ld e, $27
    ccf
    sub c
    add h
    ld [c], a
    ld [hl], e
    ld hl, sp+$08
    ld c, [hl]
    inc hl
    ccf
    ret z

    jp nz, $3973

    db $fc
    ld b, $07
    sbc c
    rst $08
    ldh [rNR41], a
    inc a
    adc $7f
    ld bc, $cc01
    rst $20
    ldh a, [rNR10]
    ld e, $e7
    ld a, a
    add b
    add b
    and $7b
    ld hl, sp+$08
    rrca
    ld h, e
    cp a
    add b
    add b
    ld [hl], a
    ccf
    db $fc
    adc b
    rlca
    ld [hl], e
    rst $38
    adc b
    add b
    ld [hl], a
    ccf
    ld hl, sp-$78
    ld b, a
    ld h, e
    rst $38
    sub b
    add b
    and $7f
    ld sp, hl
    db $10
    ld c, $c7
    rst $38
    jr nz, @+$03

    call c, $e4ff
    jr nz, jr_023_5a2e

    sbc a
    db $fc
    ld b, h
    inc bc
    or e
    rst $38
    ret z

    nop
    db $76
    ld a, a
    ld sp, hl
    nop
    ld c, $c7
    rst $38
    ld hl, $d800
    rst $38
    and $00
    dec de
    sbc a
    db $fc
    call nz, Call_023_7303
    rst $38
    ret z

    add b
    ld h, [hl]

jr_023_5a2e:
    ld a, a
    ld sp, hl
    db $10
    inc c
    rst $00
    rst $38
    ld [hl+], a
    ld bc, $ffd8
    db $e4
    ld b, b
    dec sp
    rra
    db $fc
    adc b
    rlca
    ld h, e
    rst $38
    sub c
    nop
    db $ec
    ld a, a
    di
    nop
    dec c
    adc a
    rst $38
    ld h, d
    ld bc, $ffb9
    db $ec
    ld b, b
    inc sp
    rra
    db $fc
    adc b
    rlca
    ld h, e
    rst $38
    sbc b
    nop
    ld l, [hl]
    ld a, a
    ld sp, hl
    db $10
    inc c
    rst $00
    rst $38
    jr nc, jr_023_5a62

jr_023_5a62:
    call c, $f2ff
    nop
    dec c
    adc a
    rst $38
    ld h, b
    ld bc, $7fb9
    db $e4
    nop
    rra
    ccf
    db $fc
    add b
    inc bc
    rst $20
    rst $38
    ret c

    nop
    ld l, [hl]
    ld a, a
    ld sp, hl
    db $10
    dec b
    rst $08
    rst $38
    jr nz, jr_023_5a81

jr_023_5a81:
    ret c

    rst $38
    ld a, [c]
    nop
    dec bc
    add a
    cp $40
    ld bc, $fff0
    db $ec
    nop
    rra
    rrca
    cp $80
    ld bc, $fff9
    add sp, $00
    rla
    rra
    cp $c0
    ld bc, $ff3b
    db $e4
    nop
    inc bc
    rst $38
    rst $38
    ld b, b
    nop
    ccf
    rst $38
    ld a, [c]
    nop
    ld bc, $ffff
    sub b
    nop
    rrca
    rst $38
    db $fc
    add b
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ld sp, hl
    nop
    nop
    rst $38
    rst $38
    ld a, [c]
    nop
    ld bc, $ffff
    db $e4
    nop
    inc bc
    rst $38
    rst $38
    add sp, $00
    inc bc
    rst $38
    rst $38
    add sp, $00
    inc bc
    rst $38
    rst $38
    db $e4
    nop
    inc bc
    rst $38
    rst $38
    ld a, [c]
    nop
    ld bc, $ffff
    ld sp, hl
    nop
    nop
    rst $38
    rst $38
    rst $38
    jr nz, jr_023_5af3

jr_023_5af3:
    rra
    rst $28
    rst $38
    db $e4
    nop
    nop
    cp $ff
    rst $38
    ret nz

    jr nz, jr_023_5b1e

    and $ff
    cp $00
    nop
    ld a, [hl]
    rst $38
    rst $38
    ld [hl], b
    db $10
    inc bc
    rst $30
    rst $38
    ei
    nop
    nop
    ccf
    ei
    rst $38
    db $ec
    ld [bc], a
    nop
    rst $38
    rst $08
    rst $38
    ldh a, [rNR10]
    inc bc
    or $7f
    rst $38

jr_023_5b1e:
    ret nz

    nop
    rrca
    rst $38
    rst $38
    ei
    nop
    nop
    ccf
    cp a
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    ccf
    rst $38
    rst $38
    ei
    ld bc, $3f80
    ei
    ret


    rst $38
    add b
    ret nz

    rrca
    ld sp, hl
    cp $ff
    ret nz

    ld h, b
    rlca
    rst $38
    ei
    cp a
    ldh a, [rNR10]
    ld bc, $7cff
    rst $08
    db $fc
    inc c
    nop
    ld e, a
    sbc e
    rst $30
    rst $38
    ld bc, $1700
    rst $38
    call z, $e0ff
    nop
    ld [bc], a
    ld a, a
    sbc c
    sbc a
    cp $42
    nop
    ld c, $e1
    sbc e
    rst $38
    db $e4
    nop
    nop
    ld a, a
    rra
    rst $38
    cp $00
    nop
    rlca
    ld [hl], a
    rst $38
    rst $38
    ldh a, [$0c]
    nop
    ccf
    sbc a
    and $7f
    ret nz

    nop
    nop
    cp $ff
    ei
    rst $38
    nop
    nop
    inc bc
    ei
    rst $38
    rst $38
    cp $00
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    add b
    nop
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    add e
    cp $00
    nop
    rlca
    rst $38
    rst $38
    ret nz

    ld a, a
    add b
    inc a
    nop
    rst $38
    rst $38
    ldh a, [$1f]
    ldh a, [rNR32]
    nop
    ccf
    rst $38
    db $fc
    ld bc, $13ff
    ld hl, sp+$03
    rst $38
    scf
    ld b, b
    ccf
    pop af
    rra
    add b
    rra
    rst $38
    halt
    ld a, a
    and $7e
    nop
    ld a, a
    nop
    ret nz

    inc bc
    rst $38
    call z, Call_000_00f8
    ld c, a
    ld sp, hl
    sbc b
    inc bc
    rst $38
    call z, Call_000_00ec
    ld c, a
    pop bc
    ld hl, sp+$03
    rst $38
    and $60
    nop
    daa
    db $fc
    db $fc
    nop
    rst $38
    ld sp, hl
    sbc e
    add b
    ld bc, $37fb
    and b
    rrca
    rst $38
    or e
    jr nz, jr_023_5bf8

    ccf

jr_023_5bf8:
    rst $20
    ld [hl], b
    nop
    rst $38
    ld sp, hl
    sbc c
    nop
    ld bc, $13d0
    and b
    rlca
    rst $38
    and $7f
    ret nz

    nop
    nop
    rrca
    ldh a, [$1f]
    rst $38
    db $dd
    rst $38
    nop
    nop
    ld bc, $e0ff
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    ldh [rTAC], a
    rst $38
    rst $38
    db $fd
    nop
    nop
    ld bc, $f0ff
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    ccf
    cp $00
    rra
    rst $38
    rst $38
    or b
    nop
    inc bc
    ld [hl], e
    ld a, a
    ldh [rP1], a
    rst $38
    rst $38
    reti


    add b
    nop
    nop
    inc de
    rst $38
    nop
    rlca
    rst $38
    rst $38
    or $00
    nop
    ld b, $ff
    rst $38
    add b
    ld bc, $ffff
    cp $40
    nop
    ld c, h
    rst $38
    rst $38
    nop
    ld bc, $ffff
    or $00
    nop
    ld l, a
    rst $38
    db $fc
    add b
    nop
    ld a, a
    rst $38
    db $fc
    ret z

    nop
    add hl, de
    sbc e
    ccf
    nop
    nop
    rrca
    rst $38
    rst $38
    db $dd
    add b
    nop
    nop
    scf
    or $00
    nop
    ccf
    rst $38
    rst $38
    db $ec
    nop
    nop
    sbc c
    cp a
    ldh a, [rP1]
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    inc hl
    ld a, a
    db $fc
    nop
    dec de
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    sbc e
    rst $38
    rst $38
    ld h, h
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret c

    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    cp $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld bc, $fd3f
    inc d
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    jr c, jr_023_5dad

jr_023_5dad:
    nop
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
    rst $38
    rst $38
    rst $38
    db $e4
    nop
    db $10
    inc bc
    cp $3f
    ret nz

    ld bc, $f7df
    rst $38
    rst $38
    xor $d8
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
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
    cp $00

jr_023_5de7:
    jr jr_023_5de7

    ld h, a
    ld hl, sp+$00
    inc b
    ld a, $d1
    nop
    nop
    nop
    nop
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
    jr nz, jr_023_5e00

    db $f4

jr_023_5e00:
    ld e, a
    rst $28
    rst $38
    rst $38
    call nz, RST_00
    rlca
    rst $38
    db $e3
    inc sp
    di
    rst $38
    rra
    ld a, a
    ld a, a
    ld [bc], a
    ld e, a
    ld bc, $006f
    nop
    nop
    ret c

    xor $7f
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $db
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
    cp $00
    nop
    nop
    rst $38
    rst $38
    cp $00
    daa
    rst $38
    rst $38
    ei
    rst $00
    cp l
    rst $38
    cp $38
    rst $00
    rlca
    add e
    ld b, $00
    rlca
    inc c
    inc a
    jr c, @+$72

    ldh [$31], a
    ld h, c
    adc h
    ld c, [hl]

jr_023_5e52:
    jr c, jr_023_5ed0

    jr c, jr_023_5ec7

    adc l
    db $e3
    adc $38
    rst $08
    inc c
    jr c, @+$7a

jr_023_5e5e:
    di
    and e
    adc a
    ld e, $7c
    jr c, @+$72

    pop hl
    rst $00
    adc $3e
    jr c, jr_023_5e5e

    pop af
    add c
    rst $00
    inc sp
    adc h
    inc a
    ld [hl], b
    pop af
    rst $00
    adc a
    ld e, $1c
    ld a, b
    db $e3
    rra
    sbc [hl]
    ld a, b
    pop af
    rst $08
    sbc [hl]
    ld e, b
    ld [hl], c
    add [hl]
    inc e
    ld a, b
    pop hl
    add h
    ld [hl], c
    rst $00
    inc e
    ld [hl], c
    add h
    sub e
    adc $18
    jr nc, jr_023_5e52

    ld l, a
    rst $08
    nop
    ld [c], a
    add hl, bc
    inc b
    inc sp
    adc a
    jr nc, jr_023_5eca

    adc [hl]
    jr nc, @-$31

    ld [hl], $d9
    dec h
    call z, $1802
    di
    rst $28
    and [hl]
    db $dd
    db $f4
    ret z

    ld bc, $0d23
    sbc [hl]
    ld a, a
    rst $38
    cp $c8
    jr nc, jr_023_5eb3

jr_023_5eb3:
    nop
    rst $28
    rst $38
    ld a, l
    rst $38
    db $e4
    nop
    nop
    nop
    ld sp, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc de
    rst $28
    rst $38

jr_023_5ec7:
    rst $38
    rst $38
    ret nz

jr_023_5eca:
    nop
    nop
    inc bc
    ccf
    rst $38
    rst $38

jr_023_5ed0:
    rst $38
    or b
    nop
    nop
    ld bc, $ffef
    rst $38
    rst $38
    db $ec
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld h, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38

Call_023_5f00:
    db $fc
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fd
    or $00
    nop
    nop

jr_023_5f0c:
    ld a, a
    rst $38
    rst $38
    rst $30
    sbc b
    nop
    nop
    ld bc, $ffff
    rst $38
    sbc h
    ldh [rP1], a
    nop
    ld bc, $ffff
    xor $71

jr_023_5f20:
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp c
    and $00
    nop
    nop

jr_023_5f2b:
    rra
    rst $38
    cp $e7
    sbc b
    nop
    nop
    ld [$ff3f], sp
    ld sp, hl
    adc $70
    nop
    nop
    jr nz, jr_023_5f2b

    rst $38
    di
    sbc h
    call nz, Call_000_0021
    ld b, l
    rst $38
    rst $38
    rst $30
    jr c, jr_023_5f0c

    ld b, d
    db $10
    add c
    rst $38
    rst $38
    rst $20
    add hl, sp
    call z, $1042
    add c
    rst $18
    rst $38
    rst $20
    add hl, sp
    ret z

    ld b, d
    db $10
    add c
    sbc a
    rst $38
    di
    jr c, jr_023_5f20

    ld [bc], a
    db $10
    pop bc

jr_023_5f63:
    sbc a
    rst $38
    di
    sbc h
    and $01
    ld [$df61], sp

jr_023_5f6c:
    cp a
    ld sp, hl
    adc $72
    nop
    add h
    jr nc, jr_023_5f63

    rst $18
    cp $e7
    add hl, sp
    adc b
    ld h, d
    jr jr_023_5fef

    rst $38
    rst $38
    ld sp, $408e
    ld sp, $1984
    rst $38
    rst $38
    call c, $20e7
    inc c
    ld b, c
    ld c, $7f
    rst $38
    rst $30
    add hl, sp
    call z, Call_000_1003
    add c
    rra
    rst $38
    ld sp, hl
    adc $73
    nop
    add h
    jr nz, jr_023_5f6c

    rst $18
    cp $73
    sbc h
    add b
    ld hl, $3308
    rst $38
    rst $38
    cp c
    adc $60
    nop
    ld [bc], a

jr_023_5fac:
    inc c
    rst $38
    rst $38
    xor $73
    sbc b
    inc b
    nop
    ld b, $3f
    rst $38
    ei
    sbc h
    and $01
    nop
    ld b, c
    sbc a
    rst $38
    db $fc
    adc $31
    add b
    ld b, b
    db $10
    ld h, a
    rst $38
    rst $38
    ld [hl], e
    sbc h
    ret nz

    jr nz, jr_023_5fd5

    ld sp, $ffff
    sbc h
    rst $00
    jr nc, jr_023_5fdc

    ld [bc], a

jr_023_5fd5:
    inc c
    rst $38
    rst $38
    xor $71
    adc h
    ld [bc], a

jr_023_5fdc:
    nop
    add e
    ccf
    rst $38
    ei
    sbc h
    db $e3
    nop
    add b
    jr nz, @-$30

    rst $38
    cp $e7
    jr c, jr_023_5fac

    jr nz, jr_023_5ff6

jr_023_5fee:
    inc sp

jr_023_5fef:
    cp a
    rst $38
    sbc c
    adc $30
    nop
    ld [bc], a

jr_023_5ff6:
    inc c
    rst $38
    rst $38
    xor $73
    adc h
    nop
    ld bc, $3b03
    rst $38
    ei
    sbc h
    rst $20
    nop
    nop
    ld b, b

jr_023_6007:
    adc [hl]
    rst $38
    cp $e7
    add hl, sp

Jump_023_600c:
    ret nz

    ld b, b
    db $10
    inc hl
    ccf
    rst $38
    cp c
    adc $70
    nop
    inc b
    ld [$ffef], sp
    xor $73
    sbc h
    nop
    ld bc, $3902
    rst $38
    ei
    sbc h
    db $e3
    nop
    nop
    ld b, b
    ld c, $7f
    cp $67
    jr c, jr_023_5fee

    nop
    nop
    sub e
    sbc a
    rst $38
    sbc c
    rst $08
    jr nc, jr_023_6037

jr_023_6037:
    ld [bc], a
    jr nz, jr_023_60a1

jr_023_603a:
    rst $38
    rst $30
    add hl, sp
    ret z

    nop
    nop
    adc h
    inc e
    rst $38
    db $fc
    rst $20
    jr c, jr_023_6007

    nop
    ld de, $3f03
    rst $38
    sbc c
    rst $08
    jr jr_023_6050

jr_023_6050:
    ld [bc], a
    jr nz, jr_023_603a

    rst $38
    rst $30
    add hl, sp
    and $00
    nop
    adc h
    inc e
    rst $38
    db $fd
    adc $78
    ret nz

    nop
    ld hl, $3f07
    rst $38
    add hl, sp
    sbc [hl]
    jr nc, jr_023_6069

jr_023_6069:
    inc b
    ld b, b
    rst $28
    rst $38
    xor $73
    adc h
    nop
    ld bc, $3910
    rst $38
    ei
    sbc h
    di
    add b
    nop
    ld h, d
    ld c, [hl]
    ld a, a
    cp $73
    inc a
    ld h, b
    nop
    ld [$cfc1], sp
    ld a, a
    call c, $98e7
    nop
    inc bc
    db $10
    ld [hl], c
    rst $38
    di
    add hl, sp
    db $e3
    nop
    nop
    ld b, h
    ld c, $7b
    cp $e7
    inc a
    ret nz

    nop
    jr @-$7b

    sbc [hl]
    rst $38
    sbc b
    rst $08

jr_023_60a1:
    sbc b
    nop
    ld [bc], a
    jr nc, jr_023_6119

jr_023_60a6:
    rst $18
    di
    add hl, sp
    db $e3
    nop
    nop
    ld b, [hl]
    ld c, $7f
    db $fc
    add $7c
    ret nz

    nop
    ld de, $9e83
    rst $38
    add hl, sp
    sbc a
    jr nc, jr_023_60bc

jr_023_60bc:
    inc b
    jr nz, jr_023_60a6

    rst $18
    adc $67
    adc h
    ld [$0801], sp
    add hl, sp
    rst $20
    di
    sbc c
    db $e3
    ld [bc], a
    nop
    ld b, [hl]

Call_023_60ce:
    ld c, $79
    db $fd
    adc $71
    add b
    add b
    ld sp, $9e87
    ld a, a
    ld [hl], e
    inc e
    ld h, b
    ld b, b
    ld [$c761], sp
    cp a
    cp c
    rst $08
    jr nc, jr_023_60f5

    ld b, $38
    ld [hl], e

jr_023_60e8:
    rst $08
    call z, $8ce3
    ld [$8e41], sp
    jr c, jr_023_60e8

    rst $20
    inc sp

jr_023_60f3:
    and $06

jr_023_60f5:
    jr nz, @-$37

    ld e, $7b
    di
    add hl, sp
    di
    ld [bc], a
    db $10
    ld h, e
    rst $08
    ccf
    ei
    sbc h
    ld sp, hl
    ld bc, $2108
    rst $20
    ccf

jr_023_6109:
    ld sp, hl
    call z, $90f8
    add b
    jr nc, jr_023_60f3

    sbc a
    db $fc
    adc $7c
    ret nz

    ret nz

    jr jr_023_6109

jr_023_6118:
    rst $08

jr_023_6119:
    cp $e7
    ld a, $60
    ld b, b
    ld [$c731], sp
    cp $63
    ld [hl], $00
    ld b, b
    ld [$e718], sp
    cp $73
    ld a, [hl-]
    jr nz, jr_023_614e

    inc b
    jr nc, jr_023_6118

    rst $38
    ld [hl], e
    sbc e
    jr nz, @+$22

    inc b
    jr c, @-$07

    rst $38
    ld [hl], e
    sbc e
    nop
    jr nz, jr_023_6143

    jr jr_023_61b8

    rst $38
    inc sp

jr_023_6143:
    sbc e
    nop
    jr nc, jr_023_614d

    inc e
    ld [hl], e
    rst $38
    add hl, sp
    sbc c
    add b

jr_023_614d:
    db $10

jr_023_614e:
    ld [bc], a
    inc c
    ld [hl], e
    rst $38
    add hl, sp
    sbc c
    add b
    stop
    jr @+$75

    rst $38
    add hl, sp
    sbc c
    nop
    db $10
    ld [bc], a
    jr @+$75

    rst $38
    add hl, sp
    sbc c
    sub b
    db $10
    ld [bc], a
    jr jr_023_61dc

    rst $38
    add hl, sp
    sbc l
    add b
    db $10
    ld [bc], a
    inc e
    ld a, c
    rst $38
    add hl, sp
    call Call_000_1080
    ld [bc], a
    inc e
    add hl, sp
    rst $38
    sbc c
    call z, Call_000_1880
    add c
    ld c, $39
    rst $38
    sbc c
    call z, $08c0
    add b
    inc c
    dec a
    rst $38
    sbc c
    call z, Call_000_18c0
    add b
    dec e
    cp c
    rst $38
    sbc c
    call z, Call_000_1880
    add d
    dec e
    cp c
    rst $38
    cp c
    call z, Call_000_1880
    add d
    rra
    add hl, sp
    rst $38
    cp c
    call z, Call_000_1880
    add d
    dec e
    cp c
    rst $38
    add hl, sp
    call z, Call_000_1880
    add d
    add hl, de
    cp c
    rst $38
    add hl, sp
    call z, Call_000_1880
    add d
    add hl, de

jr_023_61b8:
    add hl, sp
    rst $38
    add hl, sp
    sbc h
    add d
    ld de, $3b86
    add hl, sp
    rst $38
    inc sp
    sbc c
    ld [bc], a
    ld sp, $338c
    ld [hl], e
    cp $63
    jr nc, jr_023_61d1

    inc hl

jr_023_61ce:
    inc c
    db $76
    ld [hl], e

jr_023_61d1:
    db $fc
    rst $20
    jr nc, jr_023_61d9

    ld h, e
    inc e
    ld h, [hl]
    ld [hl], a

jr_023_61d9:
    db $fc
    adc $60

jr_023_61dc:
    adc b
    ld b, [hl]
    jr jr_023_61ce

    rst $20
    ld sp, hl
    adc h
    ldh [rP1], a

jr_023_61e5:
    add h
    ld sp, $efcd
    di
    sbc c
    ret nz

    ld sp, $6308
    sbc e
    sbc a
    and $73
    nop
    ld b, d
    jr nc, @-$37

    ld h, a
    ld a, a
    call z, $00e6
    add h
    ld h, c
    adc [hl]
    adc $ff
    add hl, sp
    adc h
    db $10
    db $10
    add [hl]
    add hl, sp
    cp c
    cp $e6
    jr nc, @+$42

    ld b, d
    inc e
    and $ef
    ei
    sbc h
    ret


    ld bc, $3188
    rst $18
    sbc a
    and $73
    ld [bc], a
    ld [bc], a
    jr nc, jr_023_61e5

    ccf
    ld a, a
    sbc b
    adc $00

jr_023_6223:
    ld [$1cc3], sp
    call c, $73fe
    jr jr_023_622b

jr_023_622b:
    ld hl, $730c
    ld [hl], e
    db $fd
    adc $60
    nop
    add h
    jr @-$0f

    rst $08
    rst $30
    ld sp, $0280
    db $10
    ld h, e
    or a
    ccf
    call c, $00e6
    inc c
    ld b, e
    adc a
    cp $ff
    ld [hl], e
    sbc b
    nop
    ld sp, $3f06
    ld a, e
    ld sp, hl
    call z, Call_000_00e0
    adc h
    add hl, sp
    db $fd
    rst $08
    adc $63
    jr nz, jr_023_6260

    jr nc, jr_023_6223

    xor $7e
    ld [hl], e
    sbc c

jr_023_6260:
    nop
    ld sp, $3f87
    dec sp
    di
    sbc h
    ret z

    ld de, $198c
    ld sp, hl
    rst $08
    sbc h
    and $60
    adc h
    ld h, b
    ld h, a
    adc $7e
    ld [hl], e
    inc sp
    inc b
    ld sp, $3713
    dec sp
    di
    sbc h
    ret z

    ld de, $1d8c
    ld sp, hl
    rst $08
    sbc h
    and $60

jr_023_6287:
    adc h
    ld h, b
    ld h, a
    adc $7c
    rst $20
    inc sp
    inc b
    inc hl
    inc de
    ld a, $73

Call_023_6293:
    db $e3
    add hl, de
    sbc b
    ld hl, $9998
    cp e
    sbc a
    sbc b
    call z, $8c41
    ld b, [hl]
    ld l, a
    adc $fc
    add $62
    inc c
    ld h, [hl]
    inc sp
    xor $67
    and $33
    db $10
    ld h, e
    ld sp, $679e
    ccf
    inc sp
    sbc c
    add d
    ld de, $f388
    add hl, sp
    di
    sbc c
    call z, $8c31
    rst $08
    cp c
    rst $08
    sbc b
    call z, $8cc1
    add $7d
    adc $f9
    call z, Call_000_1866
    add $63
    call z, $cce7
    ld h, [hl]
    ld h, b
    add $63
    ld [hl], $e7
    ld a, h
    and $33
    inc c
    ld h, e
    ld sp, $77e6
    and $33
    db $10
    inc hl
    ld de, $339b
    cp [hl]
    ld [hl], e
    add hl, de
    add d
    ld sp, $f399
    dec sp
    di
    add hl, de
    adc b
    ld de, $cd98
    cp c
    sbc a
    ld sp, $c398
    jr jr_023_6287

    ei
    sbc l
    di
    sbc b
    call z, $8c11
    adc $39
    rst $18
    add hl, sp
    adc h
    jp $cc18


    ld [hl], e

jr_023_630b:
    sbc l
    di
    sbc h
    call z, $8c30
    ld h, a
    sbc c
    rst $08
    add hl, sp
    adc h
    jp $ce18


    ld [hl], e
    sbc l
    di
    sbc b
    call z, $8c31
    rst $08
    sbc c
    sbc $33
    sbc c
    add d
    ld sp, $df8c
    dec sp
    rst $20
    ld sp, $6398
    add hl, de
    sbc l
    di
    cp h
    ld h, a
    inc sp
    inc c
    ld h, e
    add hl, de
    sbc [hl]
    ld [hl], a
    adc $63
    jr nc, @-$38

    inc sp
    jr c, @-$17

    ld a, c
    adc $66
    jr jr_023_630b

    inc sp
    inc a
    rst $28
    sbc h
    add $61
    adc h
    ld h, [hl]
    ld [hl], e
    adc $f3
    sbc h
    call z, $8c31
    and $79
    rst $18
    ld sp, $c698
    add hl, de
    adc h
    rst $08
    add hl, sp
    add $33

jr_023_6360:
    jr @-$38

    ld sp, $e79c
    inc a
    and $33
    inc c
    ld h, e
    ld sp, $779e
    sbc h
    and $61
    adc h
    ld h, a
    ld sp, $f9ce
    adc h
    add $18
    adc $67
    add hl, sp
    rst $08
    add hl, sp
    sbc h
    jp $cc18


    rst $20
    add hl, de
    rst $20
    inc sp
    sbc b
    ld h, e
    add hl, de
    adc h
    db $e3
    inc a
    and $73
    inc c
    ld h, e
    inc sp
    sbc h
    ld h, a
    jr jr_023_6360

    ld h, e
    inc e
    add $73

Call_023_6398:
    sbc h
    rst $20
    add hl, sp
    sbc b
    ld h, e
    add hl, de
    adc $73
    cp h

jr_023_63a1:
    add $63
    inc c
    ld h, a
    inc sp
    sbc h
    ld h, a
    add hl, sp
    adc h
    jp $c618


    ld [hl], e
    sbc l
    add $33
    db $10

Call_023_63b2:
    ld h, e
    add hl, sp
    sbc [hl]
    ld h, a
    add hl, sp
    adc h
    call nz, $ce18
    ld [hl], e
    sbc c
    adc $73
    add hl, sp
    ld b, $31

jr_023_63c2:
    sbc h
    rst $30
    dec sp
    sbc h
    add $61
    adc h
    ld h, a
    cp l
    adc $e7
    ld sp, $2398
    jr jr_023_63a1

    ld [hl], e
    cp c
    call z, $0866
    add $3c
    call c, Call_023_73ee
    add hl, de
    ld [bc], a
    ld sp, $339f
    dec sp
    sbc h
    call z, $8c40
    ld h, a
    call z, $e6ce
    inc sp
    ld sp, $3923
    di
    ld [hl], a
    ld [hl], e
    sbc b
    ret z

    add c
    adc h
    db $fd
    ld sp, hl
    ld hl, sp-$32
    ld h, [hl]
    jr nz, jr_023_63c2

    ld a, $7c
    xor $67
    inc sp
    db $10
    ld [hl], e
    scf
    ld a, $7f
    ld sp, $8998
    jr @-$31

    rst $18
    sbc l
    sbc h
    add $66
    inc c
    ld h, [hl]
    and $cf
    and $33
    ld sp, $3923
    cp e
    rst $30
    ld [hl], e
    add hl, de
    adc b
    add c
    sbc h
    db $dd
    ei
    ld sp, hl
    adc h
    call nz, $c660
    ld l, [hl]
    ld a, h
    db $ec
    add $22
    db $10
    ld h, e
    scf
    ld a, $76
    ld [hl], e
    sbc c
    adc d
    add hl, sp
    sbc c
    sbc a
    dec sp
    add hl, sp
    adc h
    call nz, $cc1c
    rst $28
    sbc a
    sbc h
    add $62
    inc c
    ld h, [hl]
    ld h, a
    adc $cc
    ld h, d
    ld hl, $3386
    ld [hl], e
    rst $20
    and $33
    ld de, $3923
    cp e
    rst $30
    rst $20
    ld sp, $8398
    sbc c
    sbc l
    ei
    di
    sbc c
    adc b
    pop bc
    adc h
    call z, $f3f9
    sbc h
    call z, $cc41
    xor $fd
    ld sp, hl
    adc h
    call nz, $c660
    ld h, a
    db $fc
    ld sp, hl
    call z, $3066
    and $77
    cp $fc
    add $62
    jr nc, jr_023_64df

    dec sp
    db $76
    ld a, h
    and $33
    db $10
    inc sp
    cp e
    rst $30
    ld a, [hl]
    ld h, e
    ld de, $3100
    sbc a
    or e
    cp [hl]
    ld h, e
    jr jr_023_6490

jr_023_6490:
    ld sp, $fb9d
    cp [hl]
    ld [hl], e
    jr jr_023_6498

    add hl, de

jr_023_6498:
    adc a
    ei
    cp [hl]
    ld [hl], e
    jr jr_023_649e

jr_023_649e:
    add hl, de
    adc $79
    cp $73
    jr jr_023_64d6

    add hl, de
    adc $39
    cp $73
    jr @+$23

    add hl, de
    adc $39
    cp $63

jr_023_64b1:
    jr jr_023_64e4

    add hl, de
    adc $39

Call_023_64b6:
    db $fc
    ld h, a
    inc e
    ld h, e
    ld de, $73ce
    call c, $34e6
    ld h, e
    inc sp
    xor $73

jr_023_64c4:
    call c, Call_000_28c6
    ld h, d
    inc de
    ld a, [hl]
    ld [hl], a
    call c, $08c6
    ld h, d
    ld [hl-], a
    ld a, [hl]
    di
    call c, $08c6
    ld h, e

jr_023_64d6:
    ld [de], a
    ld a, a
    rst $38
    call c, Call_000_0663
    ld sp, $3b87

jr_023_64df:
    rst $38
    rst $20
    jr jr_023_64c4

    adc h

jr_023_64e4:
    ld [hl], e
    adc [hl]
    and $18
    add c
    adc h
    ld a, c
    rst $28
    cp h
    ld h, b
    nop
    ld [$9f01], sp
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp-$80
    nop
    nop
    ld h, e
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ld b, $31
    nop
    nop
    rlca
    ccf
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    add h
    jr nz, jr_023_64b1

    adc $ff
    call z, $0600
    ld a, a
    rst $38
    xor $60
    nop
    nop
    nop
    nop
    call $ffef
    ldh a, [rP1]
    nop
    inc sp
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld h, a
    rst $38
    rst $38
    cp c
    add b
    nop
    nop
    ld a, a
    rst $28
    rst $38
    add hl, sp
    ret nz

    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $28
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    sbc l
    adc $30
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $20
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, [$0000]
    nop
    inc de
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ff7f
    rst $38
    rst $38
    db $e4
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc de
    ld a, a
    rst $38
    db $f4
    ret nz

    add [hl]
    nop
    inc de
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ff7f
    jr nz, jr_023_65d6

jr_023_65d6:
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ret


    add b
    nop
    dec e
    rst $38
    ld [hl], a
    db $fc
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    add b
    nop
    db $10
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    sub d
    add hl, de
    rst $38
    db $fd
    adc b
    nop
    nop
    nop
    ld bc, $7fdc
    db $fc
    nop
    nop

jr_023_6601:
    nop
    nop
    ld [hl], a
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld h, a
    jr c, jr_023_660d

jr_023_660d:
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop bc
    nop
    nop
    nop
    nop
    ccf
    rst $38
    db $e3
    add b
    nop
    nop
    nop
    jr nc, jr_023_6621

jr_023_6621:
    ld c, b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, h
    ld bc, $ffff
    rst $38
    rst $38
    sub b
    nop
    nop
    ld b, $e7
    ccf
    cp a
    ret z

    jr jr_023_6601

    adc [hl]
    ld a, a
    rst $38
    ldh [rLCDC], a
    nop
    nop
    add b
    ld b, b
    nop
    nop
    nop
    nop
    inc b
    rra
    rst $38
    rst $38
    cp $90
    nop
    inc b
    inc bc
    rst $38
    sbc d
    ld b, b
    nop
    nop
    nop
    nop
    db $10
    rst $18
    rst $38
    ld [hl-], a
    nop
    ccf
    db $fc
    ccf
    rst $38
    add b
    dec c
    ccf
    sbc b
    daa
    cp a
    ei
    db $fd
    add [hl]
    ld [$0301], sp
    rst $38
    rst $38
    db $fd
    stop
    ld b, c
    rst $28
    rst $38
    rst $38
    sub d
    nop
    ld h, b
    nop
    nop
    add hl, de
    jr jr_023_667d

jr_023_667d:
    nop
    nop
    ld b, $c0
    rst $18
    ei
    rst $38
    nop
    ld [bc], a
    ld b, $d0
    add b
    res 0, b
    nop
    nop
    ei
    ld l, a
    rst $38
    rst $38
    nop
    db $10
    ld h, [hl]
    rst $38
    ldh a, [$7f]
    rst $38
    rst $38
    add $c0
    nop
    ld e, $1f
    call c, $82c0
    ret nz

    ld [$7b40], sp
    rst $38
    db $f4
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $7f
    cp $fe
    ei
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    add b
    ld a, e
    jp hl


    cp $40
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    di
    ld [hl], c
    sbc h
    ld [bc], a
    ld a, a
    db $fc
    ld a, a
    rst $38
    rst $18
    rst $38
    jp $ffff


    adc $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    ld bc, $e09c
    add a
    ldh [$09], a
    di
    ret nz

    rra
    add e
    ldh [$7f], a
    ld e, $07
    pop hl
    ld hl, sp+$3e
    rlca
    pop bc
    db $fd
    db $fc
    rrca
    add a
    ldh a, [$7f]
    rrca
    ret nz

    rrca
    rst $00
    add a
    ret nz

    ei
    ld hl, sp+$3f
    rrca
    add c
    cp $0f
    ld bc, $ff87
    rst $08
    rlca
    ret nz

    ei
    add b
    rrca
    ldh [$fc], a
    jr nc, jr_023_6733

    jp hl


    cp a
    db $fc
    rrca
    or $c0
    ld a, [hl]

jr_023_6733:
    rlca
    rst $08
    ld [bc], a
    nop
    ldh [$3c], a
    ld e, $01
    ret nz

    nop
    db $fc
    nop
    db $fc
    pop bc
    ldh a, [$df]
    db $f4
    rra
    sbc a
    rrca
    di
    ldh a, [$ec]
    ld a, a
    ldh [$fc], a
    rrca
    ldh [$f8], a
    db $fc
    ccf
    add a
    ldh a, [$7f]
    add a
    ld hl, sp-$41
    rlca
    db $fc
    rlca
    ldh a, [$3c]
    ld c, a
    rlca
    jp Jump_023_7ec0


    inc b
    rst $18
    add b
    db $fc
    rlca
    ldh [$7c], a
    ld a, b
    rra
    add b
    ld hl, sp+$0e
    ccf
    add e
    ldh [$0c], a
    ldh [$73], a
    ld b, b
    ld hl, sp+$31
    ld hl, sp+$1f
    ld bc, $6ff0
    add e
    add a
    ld hl, sp+$1f
    ldh [$7f], a
    ld hl, sp+$1f
    add e
    ret c

    ld a, h
    dec c
    add sp, $1f
    ld bc, $03ff
    ldh a, [$3f]
    ldh a, [$3f]
    inc bc
    pop bc
    ret nz

    rlca
    pop bc
    cp $07
    add e
    ld [hl], h
    rrca
    ldh a, [rNR43]
    ld hl, sp+$1f
    rlca
    inc bc
    ld hl, sp+$0e
    db $fc
    rlca
    pop bc
    ldh [$79], a
    adc b
    ld a, [hl]
    dec b
    ld hl, sp-$3f
    db $fc
    rra
    dec de
    add b
    db $fc
    dec de
    jp $f870


    ccf
    ld a, $90
    ccf
    rlca
    ldh [$3e], a
    ld a, b
    rrca
    pop bc
    rra
    ret z

    ld [hl], e
    ld a, $81
    ld hl, sp-$20
    db $fc
    rrca
    add e
    add e
    ldh a, [$33]
    db $ec
    rrca
    add e
    ld a, a
    rlca
    rst $00
    pop bc
    rst $28
    ldh [$3f], a
    add c
    ld a, [c]
    jr c, jr_023_67ea

    rst $00
    ldh a, [$f0]
    cp $1f
    inc bc
    ldh [$71], a
    ret nz

    rst $38
    add c
    pop af
    ldh a, [$7e]
    inc bc

jr_023_67ea:
    rst $30
    rra
    add c
    ld hl, sp+$0f
    ldh [$f8], a
    ret nz

    ld a, [hl]
    rrca
    pop bc
    ld hl, sp+$0d
    add c
    ld sp, hl
    ldh [rSVBK], a
    add hl, sp
    adc a
    and $39
    ret nz

    db $fc
    rra
    inc bc
    ret nz

    ld a, a
    add c
    ldh a, [$7f]
    ld bc, $00bc
    ld hl, sp+$26
    jr nc, jr_023_684b

    ld e, $06
    inc bc
    inc c
    db $fc
    rra
    ret nz

    db $fc
    ld e, $07
    rst $00
    pop bc
    ret c

    inc a
    inc bc
    ld hl, sp+$1c
    ld a, a
    rrca
    ret nz

    ld a, [hl]
    rlca
    adc a
    add a
    pop bc
    db $fc
    rra
    ld a, [c]
    cpl
    ld hl, sp+$1f
    inc bc
    ret nz

    ld a, a
    ld bc, $1ff0
    ret nz

    ld c, a
    rlca
    ld hl, sp+$0f
    ldh [$fc], a
    sbc a
    ldh a, [$3f]
    ld [bc], a
    rlca
    nop
    inc bc
    ldh [$7c], a
    ld bc, $07ff
    pop af
    cp e
    ld hl, sp+$1e

jr_023_684b:
    add a
    add e
    ret nz

    ld e, h
    rlca
    sub e
    rst $00
    ld hl, sp+$1f
    ret nz

    db $ec
    ld h, a
    db $fd
    ret nz

    ldh [rIF], a
    ret nz

    db $fc
    add b
    ld a, a
    rst $38
    db $f4
    ld a, a
    db $fc
    ccf
    nop
    rrca
    nop
    rrca
    ret nz

    pop hl
    ldh a, [$7f]
    db $fc
    rst $38
    db $fc
    rra
    ret nz

    rrca
    ret nz

    rra
    ldh [$3f], a
    ld hl, sp-$01
    rst $38
    ld a, a
    ret nz

    ld hl, sp+$00
    ld a, [hl]
    ld bc, $03fe
    cp $0f
    rst $38
    rst $38
    ret nz

    ld a, b
    inc b
    jr nz, jr_023_6895

    ret nz

    cp $47
    db $fc
    ccf
    rst $38
    ldh [rSB], a
    ld hl, sp+$0f
    add b

jr_023_6895:
    ccf
    ret nz

    ld a, a
    set 7, a
    rst $38
    ret nz

    inc a
    nop
    rrca
    add b
    rra
    di
    rst $38
    pop bc
    rst $38
    cp $01
    ld hl, sp+$00
    db $fc
    nop
    rra
    db $fc
    rst $38
    db $ed
    rst $38
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    nop
    ld a, a
    add b
    rra
    ret nz

    rlca
    db $fc
    ccf
    ld hl, sp+$3f
    db $fc
    ld bc, $00fe
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh a, [$1f]
    ldh a, [rTAC]
    db $fc
    ld bc, $03fe
    rst $38
    ld bc, $80ff
    rst $38
    add b
    ccf
    ret nz

    rrca
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    ld bc, $00fe
    ld a, a
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    inc bc
    rst $38
    inc bc
    cp $03
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$3f], a
    ldh a, [$1f]
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$01
    cp $01
    rst $38
    add c
    cp $03
    rst $38
    nop
    rst $38
    add b
    rra
    ldh [$1f], a
    ld hl, sp+$3f
    ret nz

    ld a, a
    ldh a, [rIF]
    ld hl, sp+$03
    cp $03
    rst $38
    add e
    ld hl, sp+$0f
    cp $01
    rst $38
    nop
    ld a, a
    ret nz

    ld a, a
    ld hl, sp-$01
    ld bc, $80ff
    ld a, a
    ret nz

    rrca
    ldh a, [$1f]
    rst $38
    rst $38
    ret nz

    ld a, a
    ldh [$1f], a
    ldh [rTAC], a
    db $fc
    rrca
    rst $38
    ld a, a
    ldh [$3f], a
    ldh a, [rIF]
    ld hl, sp+$01
    cp $07
    cp $5f
    ld hl, sp+$0f
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $8fff
    ld hl, sp+$0f
    cp $01
    cp $00
    ld a, a
    add b
    rst $38
    rst $20
    db $fc
    rlca
    cp $01
    cp $00
    ccf
    ret nz

    ld a, a
    rst $28
    db $fc
    rrca
    cp $01
    cp $00
    ld a, a
    add b
    rst $38
    rst $38
    ldh a, [$1f]
    db $fc
    inc bc
    db $fc
    nop
    cp $01
    rst $38
    rst $08
    ldh [$3f], a
    ld hl, sp+$07
    ld hl, sp+$01
    cp $03
    rst $38
    ccf
    ret nz

    ld a, a
    ldh a, [$1f]
    ldh a, [$03]
    db $fc
    rlca
    cp $7f
    inc bc
    rst $38
    ret nz

    ld a, a
    add b
    rra
    ret nz

    rra
    ei
    ld hl, sp+$0f
    cp $03
    cp $00
    ld a, [hl]
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    ldh [$3f], a
    ldh [rIF], a
    ldh [rIF], a
    db $fd
    db $fc
    rlca
    rst $38
    ld bc, $00fe
    ccf
    add b
    ld a, a
    rst $38
    add b
    rst $38
    ldh [$3f], a
    ret nz

    rlca
    ldh a, [rIF]
    rst $38
    ldh [$3f], a
    ldh [rIF], a
    ld hl, sp+$03
    db $fc
    inc bc
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$03
    cp $01
    cp $01
    rst $38
    cp $07
    db $fc
    ld bc, $00ff
    ld a, a
    add b
    rst $38
    cp $03
    db $fc
    nop
    rst $38
    nop
    ccf
    add b
    ld a, a
    cp $03
    db $fc
    nop
    rst $38
    nop
    ccf
    add b
    ld a, a
    cp $03
    db $fc
    nop
    rst $38
    nop
    ccf
    add b
    ld a, a
    cp $03
    db $fc
    ld bc, $00fe
    ld a, a
    add b
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    rst $38
    ldh [$3f], a
    ldh [rIF], a
    ld hl, sp+$07
    db $fc
    rlca
    rst $38
    add b
    rst $38
    add b
    ccf
    ldh [$1f], a
    ldh a, [$1f]
    cp $03
    rst $38
    nop
    rst $38
    add b
    ccf
    ret nz

    ccf
    ld hl, sp+$0f
    db $fc
    inc bc
    cp $01
    rst $38
    ld bc, $c0ff
    ld a, a
    ldh [$1f], a
    ldh a, [rTAC]
    ld hl, sp+$0f
    cp $03
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh [$3f], a
    ldh a, [rIF]
    ld hl, sp+$03
    ld hl, sp+$07
    cp $03
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, a
    ldh a, [$1f]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$0f
    cp $03
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    ld bc, $c0ff
    ccf
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$7f], a
    ldh a, [rIF]
    ld hl, sp+$03
    cp $0f
    ldh a, [$1f]
    db $fc
    rlca
    db $fc
    ld bc, $07ff
    db $fc
    rrca
    cp $03
    cp $00
    rst $38
    add c
    db $fc
    rlca
    rst $38
    ld bc, $00ff
    ld a, a
    ret nz

    cp $03
    rst $38
    add b
    rst $38
    add b
    ccf
    ldh [$7f], a
    ld bc, $c0ff
    ld a, a
    ret nz

    rra
    ldh a, [$7f]
    inc bc
    rst $18
    add b
    rst $38
    ret nz

    rra
    ldh a, [$fe]
    inc bc
    sbc a
    add c
    rst $38
    add b
    ld a, a
    ld sp, hl
    db $fc
    rlca
    cp a
    inc bc
    rst $38
    nop
    rst $38
    jp Jump_000_0ef8


    ld a, [hl]
    rlca
    cp $01
    rst $38
    add a
    ldh a, [$3c]
    db $fc
    rrca
    db $fc
    inc bc
    cp $0f
    ret nz

    di
    ldh a, [$3f]
    ldh a, [rIF]
    cp $3f
    inc bc
    adc $c0
    rst $38
    ret nz

    ccf
    pop af
    ld hl, sp+$1e
    db $76
    rlca
    cp $01
    rst $38
    rst $00
    ret nz

    ld [hl], e
    or b
    ccf
    ldh a, [rIF]
    rst $38
    inc a
    rlca
    sbc l
    add c
    rst $38
    add b
    ld a, a
    ei
    ldh [$79], a
    ret c

    rra
    ld hl, sp+$07
    rst $38
    cp $03
    call c, $ff80
    add b
    ccf
    rst $38
    ldh [$3d], a
    ret z

    rra
    ld hl, sp+$07
    rst $38
    cp $03
    sbc h
    add c
    rst $38
    add b
    ld a, a
    rst $38
    jp nz, $d07b

    rra
    ldh a, [rTAC]
    rst $38
    ld hl, sp+$0f
    ld a, b
    inc bc
    cp $00
    rst $38
    rst $38
    add hl, bc
    rst $28
    nop
    rst $38
    ldh [$1f], a
    rst $38
    ldh [$3d], a
    ret nz

    rra
    db $fc
    rlca
    rst $38
    ld hl, sp+$47
    jr c, jr_023_6b28

    ei
    nop
    rst $38

jr_023_6b28:
    rst $38
    ld bc, $00ce
    rst $38
    ld b, b
    ccf
    rst $38
    add b
    ld [hl], e
    add b
    ld a, a
    add b
    rrca
    rst $38
    pop hl
    inc a
    ldh [$1f], a
    ldh [$03], a
    rst $38
    ld hl, sp+$4f
    ld [hl], b
    rrca
    ld hl, sp+$01
    rst $38
    db $fc
    daa
    cp h
    inc bc
    db $fc
    nop
    rst $38
    cp $13
    sbc $01
    cp $00
    ccf
    rst $38
    add hl, bc
    xor $00
    rst $38
    nop
    ccf
    rst $38
    ld [$00e7], sp
    rst $38
    add b
    rra
    rst $38
    inc b
    rst $30
    nop
    ld a, a
    ret nz

    rra
    rst $38
    inc b
    rst $30
    nop
    rst $38
    ret nz

    rra
    rst $38
    nop
    rst $30
    nop
    rst $38
    ret nz

    rra
    rst $38
    ld [$00ef], sp
    rst $38
    ret nz

    rra
    cp $01
    xor $01
    rst $38
    add b
    ccf
    db $fc
    inc bc
    call c, $ff03
    nop
    ld a, a
    ld hl, sp+$07
    ld hl, sp+$07
    cp $00
    rst $38
    ldh a, [$1f]
    ldh a, [rIF]
    db $fc
    ld bc, $c0ff
    ccf
    ret nz

    ccf
    ldh a, [rTAC]
    rst $38
    ld bc, $00ff
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ret nz

    rrca
    db $fc
    rlca
    db $fc
    ld bc, $00fe
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$03]
    cp $03
    db $fc
    inc bc
    cp $00
    ld a, a
    ret nz

    ccf
    ret nz

    dec sp
    add sp, $07
    db $fc
    rlca
    ld hl, sp+$07
    cp $00
    rst $38
    add b
    cp $11
    sbc a
    ld h, b
    rra
    ldh [$3f], a
    ret nz

    inc sp
    db $ec
    rlca
    db $fc
    rlca
    pop af
    inc e
    ld a, [c]
    ld de, $03fe
    db $fc
    ld b, e
    dec a
    add b
    ld a, a
    add b
    cp $31
    adc [hl]
    ld h, e
    rra
    ldh [$3f], a
    ld [$b0e7], sp
    add a
    ld hl, sp+$1f
    adc h
    ld [hl], e
    sbc b
    rst $28
    ldh [$3f], a
    add $7b
    ret nz

    ld a, a
    ldh [$1f], a
    jp nz, $c439

    scf
    ldh a, [rIF]
    ld [c], a
    add hl, sp
    db $e4
    inc sp
    ld hl, sp+$0f
    jp nz, $c439

    scf
    ldh a, [rIF]
    jp nz, $e439

    inc sp
    ld hl, sp+$1f
    add [hl]
    ld [hl], e
    ret z

    ld a, a
    ldh a, [$1f]
    add h
    ld [hl], e
    ret z

    ld [hl], a
    ldh a, [$3f]
    ld [$98e7], sp
    rst $38
    ret nz

    ld a, a
    ld [$10e7], sp
    rst $18
    ret nz

    ld a, [hl]
    inc sp
    adc [hl]
    inc hl
    rst $38
    add b
    db $fc
    ld h, a
    sbc h
    inc bc
    rst $38
    ld bc, $8ef0
    ld a, c
    rrca
    db $fc
    rlca
    pop hl
    inc e
    ldh a, [$1f]

Jump_023_6c4a:
    db $fc
    rrca
    add $79
    call nz, $f07f
    rra
    ld [$90e7], sp
    rst $28
    ldh [$7c], a
    inc sp
    adc [hl]
    inc hl
    rst $38
    ld bc, $c7f8
    jr c, @+$09

    db $fc
    rlca
    db $e3
    inc a
    ldh [$3f], a
    ldh a, [$1f]
    inc c
    di
    add b
    rst $28
    ldh [$7c], a
    inc sp
    sbc [hl]
    inc bc
    rst $38
    inc bc
    pop hl
    sbc h
    ld [hl], b
    inc e
    rst $38
    rra
    adc h
    di
    adc b
    ld h, a
    ldh [$78], a
    ld h, e
    sbc h
    rlca
    rra
    rst $20
    db $e3
    inc e
    ldh [rNR32], a
    ld hl, sp+$1e
    add hl, de
    rst $20
    ld bc, $b9ef
    ldh a, [$9e]
    ld a, b
    rrca
    db $fc
    rrca
    inc c
    db $e3
    add b
    rst $38
    add b
    ldh a, [$ce]
    jr c, jr_023_6cae

    db $fc
    ld c, a
    inc c
    db $e3
    add b
    rst $38
    ret nz

    pop af
    adc $78
    rrca
    db $fc
    adc $18
    rst $20

jr_023_6cae:
    nop
    rst $28
    adc h
    pop hl
    sbc [hl]
    ld [hl], b
    rra
    ld hl, sp-$22
    add hl, sp
    rst $00
    ld bc, $0fff
    jp $e03c


    ccf
    ldh a, [$38]
    ld [hl], a
    sbc h
    inc bc
    cp $33
    adc [hl]
    ld [hl], e
    add b
    ld a, a
    rst $00
    ld h, c
    adc $70
    rrca
    db $fc
    ld a, h
    dec sp
    adc $01
    rst $38
    rlca
    add a
    ld a, c
    ret nz

    ld a, a
    ld [c], a
    ld [hl], b
    rst $08
    jr c, @+$11

    db $fc
    db $fc
    add hl, sp
    adc $01
    rst $38
    sbc a
    add a
    add hl, sp
    ret nz

    ccf
    db $e3
    ldh a, [$ef]
    jr c, jr_023_6cff

    db $fc
    ld a, h
    dec a
    adc $01
    rst $38
    adc a
    add a
    add hl, sp
    ret nz

    ccf
    db $e3
    pop hl
    rst $28
    ld [hl], b

jr_023_6cff:
    rrca
    db $fc
    ld a, b
    add hl, sp
    adc $03
    rst $38
    rra
    rrca
    ld [hl], e
    add b
    ld a, a
    rst $20
    jp $e0de


    rra
    ld hl, sp+$38
    ld a, e
    sbc h
    rrca
    cp $0e
    ld e, $e7
    nop
    rst $38
    rst $08
    add a
    dec a
    ret nz

    ccf
    rst $30
    pop hl
    rst $28
    ld [hl], b
    rrca
    ld hl, sp+$08
    dec a
    call z, $ff0f
    rrca
    rrca
    dec sp
    add c
    sbc a
    jp $9ec3


    ldh [rIF], a
    rst $38
    ldh a, [$e7]
    cp b
    rlca
    db $fc
    nop
    dec a
    xor $07
    rst $38
    ld bc, $3d0f
    add c
    rst $38
    pop bc
    pop hl
    db $e3
    ldh a, [$71]
    db $fc

Jump_023_6d4b:
    ld hl, sp+$63
    db $fc
    nop
    ld a, a
    db $fc
    inc e
    rst $38
    nop
    ld a, a
    ret nz

    inc bc
    sbc $c0
    rst $18
    ldh [rNR41], a
    di
    ret c

    inc hl
    db $fc
    ld a, h
    inc e
    ld a, a
    nop
    ccf
    sbc a
    rlca
    rra
    ret nz

    rrca
    rst $38
    pop bc
    rst $08
    ldh a, [$03]
    rst $38
    ret nz

    ld a, c
    db $fc
    nop
    rst $38
    or b
    ld c, $7f
    add b
    rra
    cp $01
    rst $08
    ldh [$03], a
    rst $38
    ldh [$71], a
    db $fc
    nop
    rst $38
    db $fc
    inc e
    ld a, a
    nop
    rra
    rst $38
    inc bc
    rra
    ldh [$03], a
    rst $38
    ret nz

    ld h, e
    db $fc
    nop
    rst $38
    ldh a, [rTMA]
    ld a, a
    ret nz

    rrca
    rst $38
    ret nz

    add a
    ld hl, sp+$00
    rst $38
    ld hl, sp+$01
    rst $38
    ldh [rTAC], a
    rst $38
    add b
    rra
    cp $00
    ld a, a
    ldh a, [$03]
    rst $38
    ret nz

    rlca
    rst $38
    nop
    ccf

Call_023_6db3:
    cp $00
    ccf
    ldh a, [rSB]
    rst $38
    ldh [$03], a
    cp $30
    rlca
    db $fc
    nop
    ld a, a
    sbc h
    add hl, de
    cp $00
    ccf
    db $e3
    add [hl]
    ld a, a
    add b
    rlca
    ld hl, sp+$61
    rst $08
    ldh a, [rSB]
    rst $38
    jr jr_023_6e06

    db $fc
    nop
    ld a, a
    adc h
    jr @-$20

    db $10
    rra
    rst $00
    inc b
    scf
    adc [hl]
    rlca
    ld hl, sp-$3f
    adc h
    db $e3

jr_023_6de4:
    add c
    rst $38
    inc e
    inc hl
    inc e
    ld a, [hl]
    ccf
    adc [hl]
    jr @-$30

    ld e, $3f
    rst $00
    inc b
    inc bc
    adc a
    rst $08
    ld hl, sp-$3d
    nop
    db $e3
    ei
    cp $30
    and $30
    inc c
    rst $38
    rst $00
    inc e
    rst $00
    nop
    inc c
    db $fc

jr_023_6e06:
    di
    sbc h
    ld [hl], b
    nop
    add hl, de
    rst $28
    sbc l
    rst $20
    add b
    nop
    ccf
    db $fc
    db $e3
    db $fc
    ld b, b
    rrca
    cp $18
    ld a, a
    ld hl, sp+$00
    ccf
    add b
    rrca
    rst $38
    ld hl, sp+$0c
    ldh a, [rP1]
    rrca
    rst $38
    di
    sbc h
    nop
    nop
    rst $20
    ld sp, hl
    rst $38
    ldh a, [rP1]
    nop
    call nz, $ff33
    rst $38
    ldh [rP1], a
    nop
    rst $38
    ld [hl], c
    rst $38
    rst $38
    ret nz

    nop
    ld a, h
    ret nz

    rlca
    rst $38
    rst $38
    ld a, [c]
    nop
    ld bc, $00ff
    rra
    rst $38
    ret nz

    nop
    ld e, $ff
    ldh a, [$c0]
    rrca
    rst $38
    ret nz

    nop
    rst $38
    jr nc, jr_023_6e55

jr_023_6e55:
    nop
    ld a, a
    rst $38
    ret nz

    ld bc, $90ff
    nop
    ld bc, $ffff
    ld hl, sp+$00
    jr c, jr_023_6de4

    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    ld bc, $00e7
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    scf
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld [bc], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    inc sp
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $00ee
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $30
    jr nc, jr_023_6eea

jr_023_6eea:
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add hl, de
    ldh [$89], a
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $80
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $30
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $20
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $f4
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $28
    rst $38
    jp nz, RST_00

    nop
    nop
    rlca
    ld bc, $00f0
    nop
    nop
    jr nc, jr_023_6f39

jr_023_6f39:
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    cp $38
    nop
    nop
    nop
    jp $ffff


    ld hl, sp-$68
    add hl, de
    db $dd
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    call z, $ef47
    ldh a, [$80]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld b, h
    add hl, bc
    or b
    or b
    inc h
    nop
    ld [bc], a
    daa
    ret nz

    ldh [rTAC], a
    db $ed
    and b
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0040
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    ld bc, $fbe7
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    call c, $ffc3
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    db $ec
    db $fc
    di
    ld l, a
    ld hl, sp-$34
    daa
    sub c
    ld [hl], $c9
    ld [de], a
    ld c, b
    call c, $b281
    nop
    inc b
    ld [bc], a
    add hl, de
    inc b
    ld [hl], b
    sbc [hl]
    db $db
    ld l, h
    rrc h
    ld a, [c]
    ld e, [hl]
    jp $c7e9


    rra

jr_023_6fcf:
    inc a
    add l
    sbc $d9
    dec l
    db $ed
    inc h
    db $db
    ld a, a
    ld l, l
    sub d
    ld e, c
    sbc c
    or l
    adc h
    bit 7, b
    bit 5, h
    db $d3
    scf
    ld a, [c]
    ret


    ld h, $cd
    or h
    xor h
    or [hl]
    ld [hl], e
    ld h, [hl]
    ld e, e
    inc sp
    sub d
    ld [hl], d
    sbc b
    jp c, $9b5a

    ld [hl], d
    ld c, d
    ld l, c
    sub d
    inc sp
    call $6489
    or d
    ld h, l
    sub a
    ld l, c
    ld [hl], $c9
    and e
    jr jr_023_6fcf

    ld h, $59
    or d
    ld h, [hl]
    ld c, e
    ld [hl], $66
    sub c
    ld [$66db], sp
    ld l, c
    or [hl]
    ld [hl], $cc
    sub e
    ld h, [hl]
    db $db
    ld h, e
    ld l, l
    or [hl]
    or $db
    ld l, c
    or [hl]
    or d
    ld l, h
    sbc c
    inc sp
    inc h
    or [hl]
    db $db
    ld h, [hl]
    ld c, l
    or [hl]
    jp nc, $9b4d

    ld h, h
    sbc e
    dec l
    inc h
    call z, Call_023_6293
    ld e, c
    or [hl]
    sbc h
    or l
    adc [hl]
    ld c, l
    ld [hl], $c9
    sbc e
    ld h, [hl]
    ld l, h
    sub e
    ld h, [hl]
    db $ed
    sub d
    ld e, e
    ld l, a
    ld a, e
    ld l, e
    ld h, h
    sbc e
    ld e, c
    ld c, h
    ret


    or e
    ld l, l
    or [hl]
    swap [hl]
    ld c, l
    ld l, l
    add hl, hl
    ld [hl-], a
    ld c, d
    db $76
    ld e, e
    ld [hl], $35
    or d
    sbc d
    ld l, h
    ret


    ld l, l
    or [hl]
    jp nz, $365b

    or [hl]
    add $31
    sub [hl]
    ld e, e
    ld c, c
    sub [hl]
    inc h
    call Call_023_7216
    ld e, d
    ld c, c
    dec h
    sbc e
    inc l
    sbc e
    ld c, e
    dec h
    or d
    reti


    or [hl]
    ld c, c
    dec h
    or [hl]
    ld [hl], e
    ld sp, $3369
    ld c, l
    ld b, l
    sbc b
    or $c8
    call $6d26
    or d
    ld c, c
    or [hl]
    bit 5, l
    or [hl]
    call z, Call_023_6db3
    inc sp
    ld sp, $ddd9
    and h
    ret


    ld l, h
    or [hl]
    ret


    db $db
    ld l, h
    rst $20
    ld h, d
    sub d
    ld e, c
    adc l
    and [hl]
    sbc e
    ld e, e
    ld l, l
    or h
    sbc d
    jp c, $b46c

    jp nc, Jump_023_6c4a

    ld a, [c]
    ld [hl], d
    ld c, e
    ld l, c
    inc sp
    sub h
    sbc e
    ld h, [hl]
    db $e4
    reti


    or e
    ld l, c
    sbc c
    sbc e
    ld d, h
    or $5b
    ld l, h
    inc h
    or [hl]
    reti


    ld h, l
    sub e
    ld e, b
    call Call_023_72e3
    ld c, c
    and [hl]
    db $d3
    ld [hl], $49
    or [hl]
    ld c, [hl]
    reti


    sbc c
    ld h, h
    call Call_023_63b2
    ld h, c
    inc sp
    sub e
    reti


    adc h
    sub e
    call z, $cbcc
    ld l, c
    inc h
    sub d
    ret


    sbc c
    add hl, sp
    ld h, d
    db $db
    sub [hl]
    sub [hl]
    reti


    db $db
    dec de
    dec de
    sbc c
    adc e
    ld h, h
    sub d
    call z, Call_023_74d6
    call Call_023_64b6
    sub d
    ld d, e
    ld e, c
    adc h
    ld c, h
    adc $36
    scf
    ld hl, $3421
    sbc b
    ld l, l
    ld h, h
    sub e
    ld h, [hl]
    ld h, [hl]
    db $db
    sbc e
    inc h
    ld a, [c]
    ld e, e
    ld [hl], $64
    db $d3
    sbc b
    ld [hl], c
    adc c
    xor h
    or [hl]
    swap e
    or [hl]
    ld [hl], e
    dec sp
    call z, $39cd
    adc l
    ret


    dec h
    sbc c
    or [hl]
    ld c, l
    call Call_023_73b6
    dec h
    ret z

    ld c, l
    sbc c
    ret


    and [hl]
    sbc $48
    ld h, [hl]
    ld h, [hl]
    sub d
    ret c

    ld h, [hl]
    and $4d
    sbc c
    ld h, [hl]
    ld c, h
    jp nc, $331b

    sbc d
    ld c, c
    dec h
    and h
    sub d
    ld c, d
    ld h, [hl]
    ld sp, $3392
    inc sp
    inc sp
    adc c
    ld h, $64
    sub c
    sub e
    ld l, c
    and [hl]
    sub e
    jr jr_023_71b6

    inc sp
    sbc h
    call z, Call_023_4de7
    sbc h
    ld h, h
    and h
    call c, $c6cc
    ld [hl], e
    inc de
    sbc b
    jp nz, $2c63

    or d
    call $cc6e
    and $92
    ld l, l
    cp h
    or d
    ld c, c
    ld l, c
    add [hl]
    ld h, [hl]
    db $d3
    sub [hl]
    call z, $3363
    ld [hl-], a
    ld e, d
    ld c, c
    ld sp, $b298
    ld h, e
    inc l
    sub h
    db $e4
    ret


    adc c
    add [hl]
    ld [hl], e
    inc sp
    sbc b
    ld l, h
    and $d9
    adc b
    ld l, b
    add $7b
    dec [hl]
    sub [hl]

jr_023_718b:
    ld c, e
    ld hl, $cc8c
    and [hl]
    ld [hl-], a
    ld e, c
    add hl, de
    ld h, [hl]
    ld h, [hl]
    ld [hl], e
    sbc d
    call z, $c676

jr_023_719a:
    ld h, [hl]
    ld h, e
    daa
    sbc [hl]
    call $e531
    sbc b
    jp $9835


    ld h, l
    or e
    ld c, e
    ld l, l
    or e
    ld e, e
    ld h, h
    ld [hl], $99
    and [hl]
    inc de
    jr jr_023_718b

    ld h, $cd
    sbc d
    db $db

jr_023_71b6:
    ld l, c
    call Call_023_788c
    call z, $e6cc
    ld h, d
    ld h, e
    call z, Call_000_33c3
    sbc c
    db $ed
    ld sp, $c6b9
    ld h, [hl]
    or c
    ret


    sub [hl]
    and $73
    add hl, sp
    and [hl]
    ld c, l
    ld sp, $ce98
    ld h, a
    inc [hl]
    add [hl]
    and $63
    sbc b
    adc $79
    inc [hl]
    sub [hl]
    ld c, h
    ld [c], a
    ld d, e
    db $db
    add hl, de
    ld sp, $63d2
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld l, h
    call $b41c
    sbc e
    ld h, c
    sbc h
    call z, $29c7
    sbc h
    add $d3
    add hl, de
    adc h
    call z, Call_000_1967
    adc c
    sub d
    ld h, a
    ld [hl-], a
    ld [hl], b
    sbc h
    ret


    inc sp
    add hl, de
    sub [hl]
    sbc [hl]
    ld h, c
    add [hl]
    adc $32
    ld [hl], d
    adc $da
    add hl, sp
    xor l
    inc [hl]
    jp nz, $9b65

    jr c, jr_023_719a

    ld e, h
    sub e

Call_023_7216:
    db $e4
    ld [hl], $33
    ret c

    ld h, [hl]
    ld h, a
    inc e
    jp Jump_000_3326


    inc c
    call z, Call_000_3963
    or h
    db $db
    ld h, c
    sbc h
    add $53
    inc h
    or [hl]
    ld c, l
    sbc h
    db $e4
    and $19
    ret z

    ld h, [hl]
    ld h, l
    sbc e
    ld h, h
    sub h
    sbc h
    jp nc, $cc66

    or h
    db $db
    ld c, a
    inc sp
    sbc c
    and $33
    add hl, sp
    sbc d
    ld l, h
    swap l
    or h
    call z, Call_023_7332
    call z, $b264
    ld e, e
    dec l
    inc sp
    cp b
    ret


    call z, Call_023_736c
    inc de
    ld d, $73
    sbc c
    ld h, [hl]
    reti


    call $8c25
    add $db
    ld [hl-], a
    ld e, d
    ld b, e
    add hl, sp
    ld [hl-], a
    call Call_023_73cc
    adc h
    ld h, [hl]
    inc sp
    inc [hl]
    or d
    ld l, a
    add hl, sp
    ld l, a
    jr c, @-$24

    ld b, e
    sub e
    ld [hl], $c9
    db $ec
    add $59
    call z, Call_000_31e7
    jp c, $3166

    add hl, sp
    add [hl]
    ld l, h
    sbc b
    ld a, c
    add [hl]
    db $db
    ld l, l
    sbc e
    ld [hl], $9b
    ld l, l
    sbc [hl]
    db $d3
    ld [hl], e
    inc a
    add $69
    dec h
    sub [hl]
    ld l, h
    and $39
    sbc c
    ld h, l
    ld [hl-], a
    sbc b
    call z, $3167
    call Call_000_3327
    ld l, l
    sub e
    adc h
    jp nz, $9869

    adc $31
    adc h
    adc $69
    inc [hl]
    adc $73
    inc sp
    ld [de], a
    sra l
    add $9a
    ld c, h
    and $b3
    ld c, c
    sbc h
    db $d3
    ld l, c
    inc l
    or $69
    adc h
    add [hl]
    ld e, c
    ld hl, $ce94
    ld h, c
    adc h
    add $4c
    or e
    ret


    adc h
    sub [hl]
    ld [hl], e
    call z, $1676
    ret


    ld l, h
    inc sp
    add hl, sp
    sbc c
    add [hl]
    ld l, c
    inc c
    or d
    rst $00
    inc l
    or $d3
    dec de
    ld c, [hl]
    ld h, e
    ld c, e
    ld h, l

Call_023_72e3:
    sbc [hl]
    add $59
    dec h
    sub [hl]
    ld l, c
    or e
    inc c
    ld e, c
    call nz, $cc98
    ld hl, $66b6
    ld c, c
    ld h, $dc
    call z, $33c4
    ld sp, $649c
    sbc h
    or e
    sbc b
    ld h, e
    add hl, sp
    add [hl]
    ld c, c

jr_023_7302:
    ld l, l

Call_023_7303:
    or [hl]
    db $d3
    ld c, l
    and a
    ld sp, $e398
    add [hl]
    ld a, [de]
    ld c, e
    ld l, h
    inc sp
    add hl, sp
    db $e4
    sub e
    sbc h
    call nz, $4992
    inc a
    adc $73
    call Call_023_6398
    call z, $9e31
    ret


    push hl
    add [hl]
    ld d, d
    ld c, a
    ld sp, $c76c
    add hl, sp
    adc h
    add $79
    ld sp, $64ce
    sub d
    ld e, c
    and h
    adc [hl]

Call_023_7332:
    ld [hl-], a
    ld c, c
    sub [hl]
    ld c, e
    ld h, a
    call nz, $19a7
    adc h
    db $e3
    add [hl]
    and $18
    ld h, e
    add hl, sp
    ld h, a
    inc a
    sub [hl]
    ld [hl], e
    adc b
    adc $71
    db $e4
    sub d
    ld h, e
    inc sp
    add hl, bc
    and $93
    add hl, de
    adc l
    inc sp
    inc l
    sbc h
    db $db
    add hl, sp
    add h
    sbc d
    ld l, b
    ld l, h
    and $59
    ld l, h
    or d
    jp Jump_000_3139


    sbc b
    rst $08
    ld c, h
    and $73
    jr nz, jr_023_738e

    ld sp, $f39c
    sbc h

Call_023_736c:
    add $67
    ld sp, $f34c
    inc e
    di
    adc b
    ld b, e
    ld [$e6c6], sp

jr_023_7378:
    ld [hl], e
    jr c, jr_023_7302

    jr @-$72

    ld a, c
    rst $30
    ld h, a
    inc c
    ld hl, $c718
    cp a
    cp $e2
    nop
    inc b
    inc sp
    rst $18
    cp $f2
    add b

jr_023_738e:
    nop
    ld [bc], a
    ld a, l
    rst $38
    ld hl, sp-$40
    nop
    inc bc
    dec a
    rst $38
    cp h
    ret nz

jr_023_739a:
    nop
    ld bc, $ff9f
    xor $30
    nop
    nop
    ld a, a
    rst $38
    db $fc
    ret nz

    nop
    nop
    rst $38
    db $fd
    rst $20
    nop
    nop
    dec a
    rst $38
    ei
    adc $30
    nop
    rst $28
    rst $38
    rst $38

Call_023_73b6:
    jr jr_023_7378

    ld b, $7f
    cp $73
    adc h
    nop
    add hl, sp
    rst $38
    rst $38
    adc h
    jr nz, jr_023_73c7

    rst $18

jr_023_73c5:
    rst $38
    rst $20

jr_023_73c7:
    jr jr_023_740a

    rrca
    rst $38
    rst $38

Call_023_73cc:
    call z, $8261
    ld e, $7f
    ld sp, hl
    db $e3
    inc c
    db $10
    db $e3
    rst $38
    rst $08
    jr c, jr_023_739a

    inc bc
    sbc a
    rst $38
    adc $31
    add b
    rlca
    cp a
    rst $38
    ret c

jr_023_73e4:
    ld h, e
    ld [$ff39], sp
    ld sp, hl
    rst $00
    ld [$e720], sp
    rst $38

Call_023_73ee:
    ld sp, hl
    add $10
    ld b, c
    adc a
    rst $38
    adc $38
    jp Jump_000_3e0c


    rst $38
    adc $30

jr_023_73fc:
    add b
    ld bc, $79df
    db $e3
    inc c

jr_023_7402:
    jr nc, jr_023_73c5

    rst $08
    cp [hl]

jr_023_7406:
    rst $20
    jr @-$1b

    inc c

jr_023_740a:
    ld a, a
    inc a

jr_023_740c:
    db $e3
    adc h
    ld hl, $ef81
    cp h
    di
    adc h
    jr nc, jr_023_73e4

    rst $38
    sbc $78
    jp Jump_000_1c04


    ld a, l
    rst $20
    cp c
    add $38
    ldh [$e3], a
    rst $08
    inc a
    db $e3
    inc c
    ld h, e
    add hl, sp
    rst $20
    sbc h
    db $e3
    inc c
    ld sp, $f3df
    adc $38
    pop bc
    nop
    rrca
    ld a, a
    rst $38
    jr c, jr_023_73fc

    inc c
    ld [hl], a
    rst $38
    rst $30
    jr nc, jr_023_7402

    inc c
    ld a, e
    rst $38
    rst $20
    jr jr_023_7406

    rlca
    ld e, $ff
    rst $38
    jr c, jr_023_740c

    inc b
    rra
    db $fd
    pop af
    jp $0108


    inc e
    di
    call c, $0ce3
    jr nc, @-$07

    rst $38
    rst $00
    add [hl]
    nop
    ld hl, $ffff
    jp Jump_000_300c


    db $e3

jr_023_7464:
    rst $38
    rst $38
    ld h, e
    inc c
    ld sp, $ffcf
    rst $18
    inc e
    jr nc, @+$43

    add a
    rst $38
    db $fc
    ld [hl], c
    jp $1e0e


    ld a, c

jr_023_7477:
    pop af
    rst $00
    inc c
    jr c, jr_023_7477

    rst $20
    add a
    inc e
    jr nc, jr_023_7464

    rst $28
    sbc [hl]
    jr c, jr_023_74e6

    add a
    rra
    cp $f8
    ld h, c
    add a
    inc e
    inc a
    ld sp, hl
    db $e3
    adc [hl]
    jr jr_023_74ca

    di
    rst $08
    inc e
    ld h, b
    add c
    rst $08
    cp $78
    pop hl
    add [hl]
    rra
    cp a
    ei
    rst $00
    ld [$3920], sp
    rst $30
    sbc $30
    ld b, b
    inc bc
    adc a
    cp $f3
    add h
    nop
    rrca
    rst $38
    cp $38
    jp Jump_023_7f08


    rst $38
    rst $20
    jr @+$22

    add a
    rst $38
    db $fc
    ld [hl], b
    jp Jump_023_7f0e


    rst $38
    rst $00
    ld [$7f30], sp
    rst $38
    ld hl, sp-$1f
    inc b
    inc bc
    rst $38

jr_023_74ca:
    db $fc
    pop hl
    add [hl]
    db $10
    rra
    db $fd
    adc $00
    nop
    rst $38
    rst $38
    pop af

Call_023_74d6:
    add b
    jr jr_023_7558

    rst $38
    ld hl, sp-$1d
    adc [hl]
    inc e
    rst $38
    ld sp, hl
    ldh [rP1], a
    nop
    ld a, a
    cp $38

jr_023_74e6:
    jp Jump_023_7f0c


    rst $38
    ld hl, sp+$00
    ld b, e
    cp a
    rst $38
    db $e3
    nop
    ld bc, $ffbf
    rst $00
    inc e
    ld sp, $ff9f
    rst $00
    inc c
    ld sp, $ffdf
    jp Jump_000_180c


    rst $38
    rst $38
    pop af
    add d
    inc e
    ld [hl], e
    rst $38
    pop af
    add [hl]
    inc e
    ld a, a
    rst $38
    db $e3
    adc h
    jr @+$01

    rst $38
    rst $00
    inc c
    ld sp, $ffff
    jp Jump_000_1d00


    rst $38
    rst $38
    add [hl]
    jr jr_023_7592

    rst $38
    rst $38
    inc c
    db $10
    db $e3
    rst $38
    cp $30
    ld b, c
    sbc a
    rst $38
    db $fc
    jr nc, jr_023_7570

    cp a
    rst $38
    ld hl, sp+$60
    add a
    rst $38
    rst $38
    db $e3
    add [hl]
    add hl, de
    rst $38
    rst $38
    add [hl]
    jr jr_023_75b3

    rst $38
    cp $08
    db $10
    rst $38
    rst $38
    cp $18
    ld h, c
    rst $38
    rst $38
    ld hl, sp+$61
    rst $00
    rst $30
    rst $28
    pop hl
    add d
    rlca
    rst $38
    rst $38
    jr jr_023_7554

    sbc a

jr_023_7554:
    rst $38
    db $fc
    jr nc, jr_023_7599

jr_023_7558:
    ld a, a
    rst $38
    ld hl, sp+$20
    jr nc, @+$01

    rst $38
    pop hl
    add d
    ld sp, $ffe7
    adc h
    nop
    rrca
    ld a, a
    cp $10
    ld hl, $ff7f
    ld hl, sp+$20
    ld a, a

jr_023_7570:
    rst $38
    rst $38
    ldh a, [$c1]

jr_023_7574:
    db $e3
    db $e3
    rst $38
    jr jr_023_757a

    sbc [hl]

jr_023_757a:
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    rst $38
    inc c
    ld bc, $3dcf
    cp $18
    ld l, [hl]
    inc e
    ld a, a
    ld hl, sp-$40
    jr jr_023_7574

    rst $38
    add h
    ld bc, $ffff

jr_023_7592:
    db $fc
    db $10
    ld a, a
    db $fd
    rst $38
    ld hl, sp+$60

jr_023_7599:
    ld a, b
    rst $38
    rst $38
    adc h
    ld bc, $3fcf
    pop af
    add b
    ld de, $ffe7
    nop
    rlca
    sbc a
    ld a, a
    adc h
    jr jr_023_762a

    inc e
    ld l, a
    jr c, jr_023_7610

    ld a, h
    ld a, a
    rst $38

jr_023_75b3:
    adc [hl]
    ld [$bfcf], sp
    db $e3
    nop
    ld [hl], e
    rst $38
    ld hl, sp-$40
    inc e
    di
    db $fc
    ld [hl], b
    nop
    rst $38
    ldh a, [$f9]
    ld hl, sp-$20
    db $fc
    ld a, b
    rst $38
    add [hl]
    ld bc, $dfcf
    jp $e301


    rst $30
    ld hl, sp-$40
    inc a
    db $fd
    db $fd
    jp nz, $e701

    pop af
    cp $18
    ccf
    ld e, $1f
    db $e3
    nop
    di
    rst $28
    db $fc
    jr nc, @+$40

    ld a, $7f
    jr jr_023_75f2

    sbc a
    rst $38
    ld hl, sp+$60
    ld a, h
    rst $30
    cp a

jr_023_75f2:
    ldh [rP1], a
    di
    ldh a, [$fc]
    jr nc, jr_023_7608

    ccf
    cp $30
    rlca
    ccf
    rst $38
    ld [$df07], sp
    pop bc
    ld hl, sp+$60
    ld a, h
    ld a, $3f

jr_023_7608:
    ret nz

    inc bc
    rst $38
    pop hl
    ld hl, sp+$18
    ld a, $1f

jr_023_7610:
    cp $20
    rrca
    ccf
    rst $38
    db $10
    rlca
    cp a
    db $e3
    add b
    ret nz

    ld hl, sp-$04
    rst $38
    ld b, $07
    jp $f8e3


    ld h, b
    ld e, $1f
    cp $10
    rlca
    rst $38

jr_023_762a:
    cp $10
    rlca
    sbc a
    rst $38
    db $10
    rrca
    sbc h
    rst $38
    ldh [rP1], a
    ld a, l
    xor $1f
    rlca
    rlca
    add c
    rst $38
    ldh a, [rP1]
    ld a, h
    ld a, a
    ld hl, sp-$40
    ld a, $7f
    pop af
    add b
    jr c, @-$0f

    ld hl, sp-$40
    inc a
    inc bc
    rst $38
    ldh [$03], a
    ld hl, sp+$18
    ld a, a
    nop
    rlca
    add e
    rst $38
    ret nz

    ld bc, $ffff
    ld bc, $8f03
    cp $60
    rrca
    dec sp
    rst $18
    nop
    inc bc
    ld hl, sp+$30
    ld a, $06
    rra
    ld bc, $e0ff
    nop
    ld hl, sp+$1f
    db $e3
    nop
    ld [hl], c
    rst $38
    call nz, $e305
    ccf
    db $e3
    ld de, $0cf3
    rst $30
    add b
    rrca
    ldh a, [$33]
    db $fc
    inc b
    rrca
    rlca
    rst $38
    nop
    rlca
    rst $08
    cp $22
    rrca
    inc de
    db $fc
    ld b, b
    ld e, $27
    rst $38
    add b
    inc bc
    ld hl, sp+$30
    cp $01
    adc a
    ret nz

    rst $38
    ldh [rTIMA], a
    ld hl, sp+$1f
    ld [c], a
    nop
    ldh a, [$3f]
    call nz, $e207
    ccf
    ld a, [c]
    ld bc, $8cfd
    rst $38
    nop
    rlca
    ret nz

    ld h, a
    ld hl, sp+$00
    ld a, [hl]
    rrca
    cp $00
    ld e, a
    ret


    cp $00
    rlca
    ld sp, $20fe
    rrca
    sub c
    rst $18
    ret nz

    ld bc, $0ffe
    cp $00
    cp a
    pop bc
    rst $38
    ret nz

    rra
    ldh a, [$3f]
    ldh a, [rP1]
    ld a, l
    rst $38
    ldh [rDIV], a
    ld [hl], e
    rra
    db $e3
    nop
    ei
    rra
    rst $38
    nop
    rst $38
    ret nz

    rst $08
    ldh a, [rTAC]
    cp $0f
    cp $00
    rst $38
    add hl, de
    cp $00
    rrca
    pop hl
    ld hl, sp+$08
    ld e, $63
    cp $00
    rra
    ldh a, [$78]
    ld a, h
    inc bc
    rst $38
    ld bc, $c0ff
    ccf
    ldh a, [$3f]
    ret nz

    nop
    cp $7f
    ld bc, $e81b
    ld a, a
    adc b
    add e
    ld hl, sp+$7f
    sbc h
    inc bc
    cp $01
    rst $38
    ret nz

    rra
    ld hl, sp+$0f
    ldh [rP1], a
    ld a, a
    adc a
    ret nz

    ld a, e
    ldh a, [$1f]
    call nz, $fc43
    rrca
    ld hl, sp+$00
    rst $38
    add b
    ccf
    ldh [rTAC], a
    cp b
    rrca
    ld hl, sp+$03
    rst $38
    ld bc, $0cf8
    rra
    db $e3
    ldh a, [rNR34]
    cp $03
    ld hl, sp+$0c
    ld a, a
    add c
    rst $38
    nop
    ccf
    ret nz

    rst $38
    ld hl, sp+$07
    rst $38
    ld bc, $00ff
    ccf
    ldh [$fe], a
    ld bc, $f0c7
    cp $03
    adc l
    ldh [$7f], a
    nop
    adc a
    ldh a, [$1f]
    ldh a, [rP1]
    cp $00
    ld a, a
    nop
    rst $38
    ldh [$3f], a
    add b
    rra
    ldh a, [rIF]
    ret nz

    ld h, e
    inc a
    rrca
    ret nz

    ld [hl], e
    ld a, $47
    ld hl, sp+$03
    sbc [hl]
    ld h, e
    rst $38
    ret nz

    rrca
    ld hl, sp+$07
    db $fc
    ld bc, $07ff
    db $fc
    inc bc
    cp a
    add $78
    adc a
    ld [hl], e
    adc l
    cp $00
    ld a, a
    ldh [$3f], a
    ldh a, [$03]
    ldh a, [rNR31]
    cp $00
    rst $38
    ret nz

    ld a, a
    add b
    ccf
    db $fc
    rst $08
    ld bc, $01fc
    rst $38
    nop
    rst $18
    ldh a, [$1f]
    ldh [rIF], a
    cp $01
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    cp c
    ccf
    ret nz

    ccf
    cp [hl]
    rlca
    ret nz

    ld a, l
    ld e, $0f
    ldh a, [$1f]
    rst $38
    ld bc, $00ff
    ld a, a
    ret nz

    ccf
    ldh [rIF], a
    ld hl, sp+$0f
    ldh [$1f], a
    rst $38
    inc bc
    ldh [$1f], a
    inc bc
    rra
    ldh a, [rIF]
    rst $38
    add b
    db $fc
    inc bc
    pop bc
    cp $3f
    add b
    rst $38
    ld [hl+], a
    rrca
    ldh [$1f], a
    rst $38
    inc bc
    ldh [$1f], a
    rst $08
    ld hl, $0ff8
    di
    nop
    rst $38
    nop
    ld a, a
    ldh a, [$1f]
    ldh a, [rTAC]
    db $fc
    rst $00
    ldh a, [rIF]
    jp $e03f


    rra
    rst $20
    ld bc, $0ff8
    rst $38
    add b
    ld a, a
    add b
    ccf
    add b
    ccf
    ldh a, [rTAC]
    cp $01
    db $fc
    nop
    ei
    dec de
    db $fc
    ld bc, $e0f9
    ld hl, sp+$03
    ldh a, [$cf]
    db $fc
    inc bc
    ld a, h
    ret nz

    ccf
    ret nz

    ccf
    call nz, $f807
    rlca
    di
    nop
    cp $00
    ld hl, sp+$19
    cp $01
    ld hl, sp+$70
    ld a, h
    ld bc, $67f8
    rst $38
    nop
    cp $11
    rra
    ret z

    ld l, a
    cp a
    add e
    ldh a, [rTAC]
    ret nz

    ld hl, sp+$7c
    inc bc
    ld hl, sp+$01
    ld a, [hl]
    ld bc, $38fe
    adc a
    nop
    cp $18
    rra
    ret nz

    ld a, a
    adc [hl]
    inc bc
    ldh a, [rIF]
    add c
    ldh [$fc], a
    inc bc
    ld hl, sp+$40
    ld a, $43
    db $fc
    ld a, [hl]
    ld a, $01
    cp $30
    rra
    ldh [$1f], a
    ldh [rTAC], a
    ld hl, sp+$07
    ld sp, hl
    db $e4
    ld a, b
    adc a
    ldh [$fe], a
    db $fc
    inc bc
    ld hl, sp+$64
    ld a, [hl]
    nop
    cp $78
    rra
    add b
    ld a, [hl]
    rrca
    rst $00
    ldh [$3f], a
    add e
    pop af
    ld hl, sp+$07
    pop hl
    db $fc
    ld a, [hl]
    ld bc, $10fc
    ccf
    nop
    cp $1f
    cp [hl]
    ld bc, $3ffe
    rra
    nop
    rst $38
    dec e
    adc a
    ldh [$1f], a
    ret nz

    inc bc
    ld hl, sp+$07
    ldh a, [$f8]
    ld a, h
    ld b, e
    ld hl, sp+$7e
    ld a, $01
    db $fc
    inc sp
    rra

Call_023_788c:
    add b
    ld a, a
    dec b
    rst $08
    ldh [rIF], a
    ret nz

    ld bc, $03fc
    ld hl, sp-$1a
    ld a, [hl]
    ld bc, $1ff8
    cp [hl]
    ld bc, $07fc
    cp h
    inc bc
    db $fc
    ld h, [hl]
    ccf
    add b
    ld a, a
    add b
    rrca
    ldh a, [rTAC]
    di
    ld bc, $03fc
    db $fc
    ld h, d
    ld a, [hl]
    inc bc
    db $fc
    ld h, a
    ld a, $03
    db $fc
    ld [hl], a
    rra
    ret nz

    ld a, a
    add b
    rrca
    ldh a, [rTAC]
    ei
    nop
    db $fc
    inc bc
    add sp, -$02
    ld a, h
    inc bc
    ld hl, sp+$2f
    ld a, $01
    db $fc
    inc hl
    ccf
    nop
    rst $38
    ld sp, $e09f
    ccf
    ret nz

    ld b, e
    db $fc
    rlca
    ld hl, sp-$20
    ld a, [hl]
    ld bc, $7ffc
    ld a, $03
    db $fc
    inc hl
    ccf
    nop
    rst $38
    add hl, sp
    adc a
    ldh [$7e], a
    rlca
    db $e3
    ldh a, [rIF]
    ldh [$f8], a
    db $fc
    rlca
    ld hl, sp+$6e
    ld a, h
    inc bc
    ld hl, sp+$47
    ld a, $01
    cp $33
    rra
    ret nz

    ld a, a
    add e
    rlca
    ldh a, [$1f]
    pop af
    or b
    db $fc
    rlca
    ld hl, sp+$06
    ld a, h
    inc bc
    db $fc
    ld h, a
    ld a, h
    inc bc
    ld hl, sp-$1a
    ccf
    ld bc, $31fe
    rra
    ldh [$1f], a
    ldh [rNR11], a
    db $fc
    inc bc
    ld hl, sp+$00
    ld a, [hl]
    inc bc
    db $fc
    ld h, e
    ld a, $03
    db $fc
    ld [hl], e
    ccf
    nop
    cp $19
    adc a
    ldh [$1f], a
    ldh [rIF], a
    db $fc
    rlca
    ld hl, sp+$46
    ld a, [hl]
    inc bc
    ld hl, sp+$3f
    ld a, $03
    ld hl, sp+$67
    ld a, $03
    db $fc
    ld h, e
    ccf
    add b
    rst $38
    nop
    rst $08
    ldh a, [$1f]
    ldh a, [rNR33]
    cp $03

Jump_023_794a:
    db $fc
    rlca
    ld a, [hl]
    inc bc
    db $fc
    inc hl
    cp [hl]
    inc bc
    ld hl, sp+$67
    ld a, $01
    db $fc
    inc sp
    sbc a
    ret nz

    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$06
    ld a, [hl]
    ld bc, $13fc
    cp $03
    ld hl, sp+$67
    ld a, h
    inc bc
    db $fc
    ld h, a
    ccf
    ld bc, $01fe
    rra
    ldh [$3f], a
    ldh [$1f], a
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $19
    db $fc
    inc bc
    ld hl, sp+$67
    ld a, [hl]
    inc bc
    db $fc
    inc hl
    ccf
    add b
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    ld hl, sp+$07
    cp $01
    cp $03
    cp $03
    db $fc
    inc hl
    cp $03
    db $fc
    inc hl
    cp a
    nop
    rst $38
    nop
    rst $38
    ldh a, [$1f]
    ldh a, [$1f]
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld h, a
    ld a, h
    inc bc
    ld hl, sp+$47
    db $fc
    inc bc
    ld hl, sp+$47
    ccf
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    db $fc
    inc bc
    rst $38
    ld bc, $01fe
    rst $38
    add b
    ld a, a
    adc b
    ld l, a
    ldh [$3f], a
    ldh [$37], a
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    ld bc, $01fe
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh [rNR31], a
    ld hl, sp+$0f
    ld hl, sp+$07
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh a, [$1f]
    ldh a, [rIF]
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    db $fc
    inc bc
    cp $01
    db $fc
    inc hl
    sbc a
    add b
    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh a, [rNR13]
    ld hl, sp+$07
    ld hl, sp+$0f
    ld hl, sp+$07
    ldh a, [$c7]
    ld hl, sp+$0f
    ldh a, [$8f]
    db $fc
    rlca
    cp $03
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$8f]
    ldh [$1f], a
    pop hl
    cp a
    ldh [$1f], a
    ldh [rNR24], a
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $28
    ldh [$1f], a
    ldh [$3f], a
    ldh [$3f], a
    add e
    ccf
    ret nz

    ccf
    add b
    rst $38
    ret nz

    ccf
    ret nz

    inc sp
    ldh a, [rIF]
    ld hl, sp+$0d
    cp $01
    rst $38
    ld bc, $80df
    ld a, a
    add b
    rst $38
    add b
    ld a, [hl]
    ld c, $7f
    nop
    rst $38
    ld bc, $80ff
    ld a, a
    adc b
    rst $00
    ldh [$1f], a
    ldh [$3b], a
    db $fc
    inc bc
    db $fc
    rlca
    cp $01
    cp $09
    cp $01
    db $fc
    rlca
    rst $38
    nop
    cp $01
    rst $38
    add b
    rst $38
    nop
    rst $08
    ret nz

    ccf
    ret nz

    ld [hl], e
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    db $fc
    inc bc
    ld hl, sp+$07
    cp $01
    db $fc
    ld [bc], a
    ccf
    nop
    rst $38
    ld bc, $80df
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [$0d]
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $03fe
    cp a
    nop
    rst $38
    inc bc
    rst $18
    ret nz

    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    add b
    scf
    ldh [$1f], a
    jp nz, $f839

    rlca
    ld hl, sp+$08
    ld a, a
    ld bc, $01fe
    cp a
    nop
    cp $03
    rst $38
    ld bc, $19fe
    rst $38
    nop
    rst $38
    add hl, bc
    rst $08
    ldh [$1f], a
    ldh [rIF], a
    ld hl, sp+$07
    ld hl, sp+$00
    db $fc
    inc bc
    db $fc
    rrca
    db $fc
    inc bc
    ld hl, sp+$63
    db $fc
    inc bc
    ld hl, sp+$47
    ld a, a
    nop
    rst $38
    nop
    sbc a
    ldh [$1f], a
    ldh [rSB], a
    ld hl, sp+$07
    ld hl, sp+$31
    db $fc
    rlca
    ldh a, [$7e]
    ld a, b
    rlca
    ldh a, [$3f]
    ld hl, sp+$07
    ld hl, sp-$7c
    db $fc
    ld bc, $03fc
    ccf
    add b
    ld a, a
    add b
    rlca
    ldh [rIF], a
    ldh [$87], a
    ldh a, [rIF]
    pop hl
    db $dd
    ld hl, sp+$07
    ldh a, [$3f]
    db $fc
    inc bc
    ld hl, sp+$06
    cp $01
    db $fc
    inc bc
    ccf
    add b
    ld a, a
    ld bc, $e08f
    rrca
    ldh [rTAC], a
    ldh a, [rIF]
    ldh [$98], a
    ld hl, sp+$07
    ldh a, [$1f]
    db $fc
    inc bc
    db $fc
    nop
    ld a, [hl]
    nop
    cp $03
    rra
    nop
    ld a, a
    ld bc, $c0cf
    ccf
    add b
    ld h, a
    ldh [$1f], a
    ldh [rNR13], a
    ldh a, [rTAC]
    pop af
    ld bc, $03fc
    db $fc
    nop
    rst $38
    ld bc, $31fe
    rra
    add b
    ld a, a
    ld [$c0ff], sp
    ccf
    add h
    scf
    ldh [$1f], a
    add $33
    ldh a, [rIF]
    di
    ld [$03fc], sp
    db $fc
    inc b
    ld a, a
    nop
    cp $01
    cp a
    nop
    cp $11
    cp $01
    cp $11
    rst $38
    add b
    ld a, a
    sbc b
    ld h, a
    ldh a, [rIF]
    ld hl, sp+$01
    db $fc
    inc bc
    db $fc
    nop
    ld a, [hl]
    ld bc, $01fc
    cp $03
    db $fc
    inc hl
    ld a, h
    inc bc
    db $fc
    ld h, e
    ccf
    add b
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$07
    ld sp, hl
    nop
    cp $01
    db $fc
    nop
    ld a, [hl]
    ld bc, $01fc
    cp $01
    db $fc
    ld sp, $013e
    cp $31
    sbc a
    ret nz

    ccf
    ldh a, [$03]
    db $fc
    inc bc
    db $fc
    ret nz

    ccf
    nop
    cp $30
    ld a, a
    nop
    cp $18
    rst $38
    nop
    cp $10
    sbc a
    add b
    ld a, a
    sbc h
    ld b, a
    ldh a, [rTAC]
    ei
    ret nz

    ld a, [hl]
    nop
    cp $30
    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh [$1f], a
    add $07
    ldh a, [rIF]
    db $e3
    ld bc, $03fc
    ld sp, hl
    ret nz

    ld a, a
    add b
    ld a, a
    cp b
    rlca
    ldh [rIF], a
    rst $20
    inc bc
    ld hl, sp+$07
    ld hl, sp+$01
    db $fc
    inc bc
    db $fc
    ld b, c
    ld a, a
    nop
    cp $31
    sbc a
    ret nz

    ccf
    call c, $f807
    rlca
    db $fd
    add b
    rst $38
    nop
    rst $38
    ret nz

    rra
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ld [c], a
    rrca
    ld hl, sp+$06
    ei
    add b
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ld hl, sp+$07
    db $fc
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    and $1b
    db $fc
    ld bc, $00fe
    rst $38
    ret nz

    ccf
    cp $07
    ld hl, sp+$03
    db $fc
    jp $01fe


    cp $11
    rst $38
    add b
    ccf
    ret nz

    rra
    ldh a, [rTAC]
    db $fc
    inc bc
    cp $00
    rst $38
    ld sp, $c0bf
    ccf
    and $17
    ld hl, sp+$03
    db $fc
    ret nz

    rst $38
    nop
    rst $38
    jr c, @+$01

    ret nz

    rra
    ldh a, [rIF]
    db $fc
    ld bc, $20ff
    ccf
    add b
    dec sp
    adc $1f
    ld hl, sp+$07
    ld hl, sp-$79
    cp $01
    rst $38
    jr nc, jr_023_7ce0

    ldh [rIF], a
    rst $38
    add a
    rst $38
    nop
    ccf
    ldh [$1f], a
    ldh a, [rTAC]
    db $fc
    inc bc
    db $fc
    ld bc, $60fe
    ccf
    add b
    ccf
    call c, $e01f
    rrca
    di
    adc h
    rst $38
    nop
    ld a, a
    ld hl, sp+$3f
    ld hl, sp+$03
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    and $1b
    ld hl, sp+$01
    rst $38
    ld hl, $e0fe
    rrca
    ld hl, sp+$03
    rst $38
    nop
    ld a, a
    ldh [rTAC], a
    ld hl, sp+$07
    rst $38
    add b
    cp $01
    cp $70
    ccf
    nop
    ld a, a
    sbc h
    rrca
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    ldh [rTAC], a
    db $fc
    inc bc
    rst $38
    add b
    ld a, a
    ret nz

    rlca
    ldh a, [rTAC]
    rst $38
    ret nz

    db $fc
    ld bc, $38fe
    ld a, a
    add b
    ccf
    and $0f
    cp $00
    rst $38
    add b
    rra
    ldh a, [rTAC]
    db $fc
    nop
    rst $38
    nop
    rst $38
    jr c, jr_023_7d10

    ret nz

    ccf
    rst $08
    ld bc, $07f8
    db $fc
    ld h, e
    rst $38
    nop
    ld a, a
    ret c

    rlca
    ldh a, [$03]

jr_023_7ce0:
    rst $38
    ret nz

    ld a, a
    add b
    ld a, a
    ld e, $1f
    ldh [rIF], a
    db $e3
    add $fc
    ld bc, $70fe
    rst $38
    add b
    ccf
    adc $07
    db $fc
    inc bc
    rst $38
    ldh [$3f], a
    add b
    ld a, a
    adc h
    ld a, a
    ldh a, [rIF]
    pop af
    rst $00
    db $fc
    inc bc
    db $fc
    ld [hl], b
    rst $38
    ret nz

    ccf
    and $07
    ld hl, sp+$03
    db $fc
    ldh [rIE], a
    add b

jr_023_7d10:
    ld a, a
    adc h
    ld l, a
    ldh a, [rTAC]
    pop af
    jp $00fe


    rst $38
    nop
    ld a, a
    ret nz

    rra
    db $e3
    rra
    cp $00
    rst $38
    ccf
    rst $38
    ldh [$1f], a
    and $31
    cp $01
    db $fc
    jr nz, jr_023_7dad

    add b
    ccf
    adc a
    rlca
    ldh [$1f], a
    pop af
    adc a
    db $fc
    inc bc
    cp $71
    sbc a
    ldh [$1f], a
    rst $38
    rst $28
    cp $01
    cp $03
    rst $38
    ldh [$1f], a
    ret nz

    inc bc
    ld hl, sp+$03
    db $fc
    ld h, e
    cp $00
    rst $38
    ld sp, $c0df
    rrca
    rst $38
    add hl, sp
    cp $00
    rst $38
    call z, $f81f
    rlca
    ld hl, sp+$0f
    rst $38
    add b
    ld a, a
    sbc [hl]
    rlca
    ldh a, [rIF]
    pop hl
    db $fc
    db $fc
    inc bc
    db $fc
    rlca
    rst $38
    ret nz

    rra
    call nz, $fc73
    ld bc, $3ffc
    rst $38
    ret nz

    rra
    ldh [$7f], a
    db $fc
    ld bc, $1ffc
    rst $38
    add b
    ld a, a
    adc a
    rst $38
    ldh a, [rTAC]
    ldh a, [$1f]
    rst $38
    nop
    ld a, a
    ld sp, hl
    rst $08
    ldh a, [rTAC]
    ld hl, sp+$7f
    rst $08
    add b
    ccf
    pop bc
    rst $38
    ldh a, [$03]
    ld hl, sp+$0f
    db $fc
    ld b, b
    ld a, $63
    cp a
    add b
    rrca
    call c, $fcf7
    nop
    rst $38
    pop hl
    cp l
    ldh [rTAC], a
    db $fc
    ld a, a
    rst $38
    add b
    ccf

jr_023_7dad:
    rst $08
    rst $38
    ld hl, sp+$03
    cp $ef
    cp $00
    ccf
    ld [hl], e
    rst $38
    ret nz

    inc bc
    cp $73
    adc $00
    sbc a
    ld sp, hl
    adc $7c
    ld bc, $07ff
    rst $38
    ldh [rTAC], a
    rst $38
    rst $38
    db $fc
    nop
    rst $38
    jp Jump_000_10ff


    rrca
    sbc h
    rst $28
    and $01
    rst $38
    dec e
    rst $20
    add b
    rlca
    db $fc
    ld [hl], a
    cp [hl]
    nop
    ccf
    ret nz

    rst $38
    ldh a, [rSB]
    rst $38
    add c
    rst $38
    nop
    rra
    db $fd
    rst $38
    ldh [$03], a
    rst $30
    ccf
    db $fc
    nop
    ccf
    rst $20
    ccf
    ldh [rSB], a
    rst $38
    rra
    rst $38
    add b
    rrca
    ld hl, sp+$1f
    db $fc
    nop
    ld a, a
    ei
    ld a, a
    ret nz

    rlca
    cp $7f
    ldh a, [rP1]
    rst $38
    rst $08
    rst $38
    nop
    rrca
    ld sp, hl
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

Jump_023_7ec0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_023_7f08:
    nop
    nop
    nop
    nop

Jump_023_7f0c:
    nop
    nop

Jump_023_7f0e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_023_7f67:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_023_7fe0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
