; disasSembly of "yell.gbc"
SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

    ccf
    db $10
    rst $20
    ld a, a
    db $fd
    rst $38

jr_022_4006:
    nop
    jr c, jr_022_4021

    nop

jr_022_400a:
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_022_4021:
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $3f

jr_022_4029:
    xor $dc
    jr nc, jr_022_4029

jr_022_402d:
    nop
    nop
    nop
    ret nz

    nop
    ld c, $03
    rst $38
    rst $38
    add b
    inc bc
    cp a
    rst $38
    ld sp, hl
    rst $08
    rst $38

jr_022_403d:
    rst $18
    dec sp
    sbc h
    ld [hl], b
    inc a
    jr jr_022_4006

    nop
    nop
    ld [$0002], sp
    ret nz

    inc c
    ld h, b
    ld b, e
    add e
    inc c
    ld [hl], c
    add [hl]
    ld c, $3f
    db $e3
    sbc h
    jr nc, jr_022_400a

    rst $20
    jr jr_022_403d

    add e
    inc e
    ld [hl], c
    sbc h
    db $e3
    inc e
    db $e3
    adc $38
    rst $20
    inc e
    ld h, [hl]
    inc [hl]
    add a
    jr jr_022_402d

    db $10
    db $e3
    adc h
    ld [hl], c
    adc [hl]
    ld sp, $0690
    ld hl, $71ce
    add [hl]
    ld [hl], e
    sub a
    adc h
    ld h, e
    call z, Call_000_39dd
    rst $20
    add e
    adc $31
    sbc h
    rst $08
    inc sp
    db $ec
    rst $28
    inc e
    rst $00
    add hl, sp
    rst $38
    cp a
    db $76
    ld [hl], e
    dec sp
    cp c
    or $f9
    or d
    nop
    ld h, a
    sbc h
    ld [hl], e
    jr z, jr_022_40ca

    ld c, [hl]
    ld b, b
    rst $08
    ret c

    adc b
    sbc c
    inc hl
    inc sp
    ld b, [hl]
    ld h, a
    sbc h
    and $4c
    pop hl
    adc h
    ld sp, hl
    sub e
    jr nc, @+$15

    ld [hl-], a
    db $76
    ld h, [hl]
    sbc b
    ld b, e
    jr jr_022_4113

    sbc h
    ld h, c
    adc [hl]
    ld c, b
    add $31
    ld h, [hl]
    ld [hl], e
    inc c
    reti


    call c, $9c31
    ld c, h
    pop af
    adc h
    and $64
    ld c, h
    call z, $3367
    add hl, de
    adc c

jr_022_40ca:
    inc sp
    sbc [hl]
    ld a, c
    or [hl]
    inc [hl]
    call z, $bfbb
    ld sp, $4720
    ld a, c
    call z, Call_022_6688
    ld a, [hl]
    ld h, e
    jr jr_022_4140

    add b
    scf
    ld b, b
    ld c, [hl]
    di
    add hl, sp
    db $e4
    ld [hl], a
    adc $31
    db $e3
    ld [hl], d
    ld [hl], e
    ld e, $70
    rst $08
    sbc h
    pop bc
    ld hl, sp-$01
    sbc h
    ld a, h

jr_022_40f3:
    ld b, e
    ld hl, sp+$3f
    ldh a, [$78]
    rst $00
    jr c, jr_022_40f3

    rst $00
    db $10
    ld [hl], $30
    ldh a, [rP1]
    ld b, b
    nop
    pop bc
    add b
    nop
    nop
    nop
    nop
    ld [bc], a
    jr nc, jr_022_410c

jr_022_410c:
    ld h, h
    nop

Call_022_410e:
    ld c, h
    ld b, b
    sub b
    nop
    nop

jr_022_4113:
    inc b
    ld c, h
    ld b, $40
    inc c
    sub b
    inc sp
    rst $08
    cp $c0
    inc c
    nop
    jr nc, jr_022_4121

jr_022_4121:
    ld h, a
    db $e3
    ldh a, [$73]
    cp $7f
    sbc h
    add b
    inc bc
    cp a
    rst $20
    rst $38
    rst $38
    db $f4
    ld [hl], c
    rrca
    ccf
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    sbc h
    jr nz, jr_022_4121

    nop
    nop
    nop
    nop
    nop

jr_022_4140:
    add b
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    inc h
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp e
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    or d
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
    rst $30
    ld sp, hl
    rst $38
    cp $7f
    rst $28
    sbc a
    adc c
    inc c
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $e39f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld a, b
    nop
    jr nz, jr_022_41fd

    ld h, b
    nop
    nop
    ld h, c
    add b
    jr c, jr_022_41a4

    ld bc, $e4dc
    nop
    inc bc
    ld [hl], b
    or c
    add b
    nop

jr_022_419d:
    pop bc
    rst $18
    rst $38
    db $fd
    ldh [rIF], a
    add a

jr_022_41a4:
    ld [c], a
    ld e, $00
    nop
    jr nz, @+$3e

    rst $38
    ld a, b
    nop
    nop
    nop
    dec c
    sub b
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld [bc], a
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $0f
    ld hl, sp+$28
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc c
    ld [hl], b
    rst $38
    rst $38
    ei
    ld bc, $ff7f
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    jr nc, jr_022_419d

    rst $28
    rst $38
    ei
    nop
    ccf
    add a
    db $fd
    rst $38
    rst $38
    cp $7f
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld [$0000], sp
    nop
    inc b
    rst $38
    rst $38
    rlca
    or e
    ret nz

    nop
    nop
    dec de
    di
    add c
    add b

jr_022_41fd:
    ccf
    ld [hl], b
    nop
    stop
    nop
    nop
    nop
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $3f
    pop af
    ret z

    nop
    ld b, a
    rst $38
    rst $38
    ld hl, sp+$0f
    rrca
    call c, Call_022_410e
    db $fc
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    stop
    jr nz, jr_022_422b

jr_022_422b:
    nop
    ld b, e
    db $e4
    nop
    nop
    rrca
    rst $38
    ccf
    db $f4
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
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
    jr nc, @+$01

    pop af
    ccf
    rst $38
    cp $7f
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    add [hl]
    rrca
    ret c

    inc bc
    rst $38
    cp $ff
    rst $38
    rst $38
    db $db
    or $e6
    rst $38
    rst $18
    rst $38
    pop bc
    rst $38
    rst $18
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $37fe
    rst $38
    ldh a, [rNR11]
    add c
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    cp b
    nop
    nop
    rst $38
    cpl
    add b
    ld h, b
    nop
    nop
    nop
    nop
    rlca
    ld l, h
    rst $38
    rst $28
    rst $38
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld [bc], a
    inc sp
    rlca
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    rst $18
    add a
    or $7f
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ldh [rIF], a
    pop bc
    cp $0f
    ret nz

    ld a, h
    rrca
    ldh [$fe], a
    rlca
    ldh [$1f], a
    add c
    ret nz

    cp $07
    ldh a, [$08]
    inc bc
    ld hl, sp+$3f
    add b
    ldh a, [$1f]
    add c
    ld hl, sp+$0e
    ld bc, $3ffe
    add b
    nop
    ld a, b
    ld a, [hl]
    rrca
    ldh [$7c], a
    rra
    add c

Call_022_42e6:
    ld hl, sp+$1f
    add c
    ld hl, sp+$1f
    add e
    ld hl, sp+$0e
    ld bc, $f0c1
    ld hl, sp+$1f
    add b
    ei
    ld a, h
    rrca
    ret nz

    rrca
    add c
    ld a, a
    ldh [rIF], a
    rst $38
    add e
    ldh [$7c], a
    rra
    inc bc
    ldh a, [$3f]
    add e
    cp $0f
    ret nz

    ccf
    rlca
    ldh a, [$78]
    rra
    add e
    di
    ldh a, [$1f]
    add c
    pop hl
    db $fc
    ld b, $c7
    sub b
    cp $0f
    add e
    ldh a, [$f8]
    rra
    inc bc
    db $fc
    ld hl, sp+$03
    ldh [$3f], a
    ret nz

    db $fc
    rrca
    add c
    db $fc
    ld b, $05
    ldh a, [$fc]
    rra
    ld bc, $c0bf
    db $fc
    rlca
    rst $00
    ldh a, [rNR23]
    nop
    rra
    add c
    ld sp, hl
    ld hl, sp+$1f
    rst $20
    add a
    ld a, [c]
    ld l, a
    inc bc
    ldh a, [$1f]
    jp $f081


    rra
    rst $38
    add c
    ld hl, sp+$1f
    add e
    ldh a, [$7c]
    db $fc
    rra
    inc bc
    ldh [$7f], a
    ld a, $07
    ret nz

    ld a, [hl]
    cp $06
    adc a
    pop af
    rst $20
    add b
    scf
    ret nz

    ld hl, sp+$1f
    add e
    ldh [$f0], a
    ccf
    ccf
    rlca
    ldh [$78], a
    ld a, a
    rlca
    ldh [$61], a
    ld hl, sp+$1f
    add b
    dec bc
    ret nz

    ld a, h
    dec b
    adc a
    jp $fcc0


    rrca
    ldh a, [$63]
    db $fc
    ld c, l
    adc a
    ret nz

    jr nc, jr_022_43f9

    rrca
    add b
    rrca
    ldh a, [$3e]
    rlca
    ret nz

    ld hl, sp+$3f
    rrca
    jp $3ff8


    ld bc, $0ff8
    add b
    ldh [$fe], a
    rlca
    ld [c], a
    inc de
    db $fc
    ld e, $0f
    pop bc
    cp $07
    jp $f8f3


    dec e
    add c
    ld hl, sp+$0f
    ret nz

    rst $38
    add b
    ld a, a
    inc bc
    sub e
    rlca
    sub b
    ccf
    add h
    jp Jump_000_3ef0


    rrca
    add b
    sbc b
    sbc a
    add e
    ldh a, [$37]
    add e
    ldh a, [$1f]
    rlca
    and b
    ld hl, sp+$1f
    add e
    ldh [$3f], a
    ld b, $6d
    add b
    ld a, [hl]
    ld c, $07
    ret nz

    ret


    db $fc
    ld c, $ee
    nop
    ccf
    rlca
    rst $20
    di
    ld hl, $2cfa
    rra
    nop
    inc bc
    ldh [$fe], a
    inc bc
    ldh a, [$78]
    rra
    add e
    pop af
    ld a, h
    rlca
    sbc c
    sbc b
    cp $07
    ld [hl], e
    ld bc, $07fc
    and $60
    ld a, a
    ld bc, $809b
    cp $03
    db $fc
    nop
    rst $38
    ldh a, [$37]
    ldh [$1f], a

jr_022_43f9:
    ldh a, [$1f]
    cp $03
    inc de
    ld [hl], $42
    ld h, [hl]
    ld [hl], e
    pop af
    ccf
    or b
    rra
    ret


    add c
    rst $38
    ld de, $889f
    db $e4
    ld a, e
    inc bc
    add [hl]
    ld h, h
    db $fc
    ld l, a
    nop
    ld hl, sp+$1f
    ret nz

    nop
    ld a, [hl]
    sbc a
    db $fc
    inc bc
    di
    adc h
    ld b, h
    xor $3f
    ldh a, [$1f]
    ldh [rSB], a
    ld hl, sp+$0c
    rst $38
    pop bc
    dec sp
    ld hl, sp+$0e
    rlca
    ld h, e
    rst $38
    db $fc
    add b
    inc bc
    or b
    inc c
    add b
    ld h, a
    ld hl, sp+$0e
    adc $01
    ld hl, sp+$0c
    rst $38
    ldh [$08], a
    ret c

    ld [hl+], a
    ld a, [hl]
    inc b
    rst $30
    ld hl, sp+$0f
    ldh a, [$1f]
    adc b
    add b
    rst $38
    db $fc
    ld e, $01
    ret nz

    ld h, e
    jr nc, jr_022_4491

    ldh [rSVBK], a
    jr c, jr_022_4457

    rst $38

jr_022_4457:
    ld bc, $c03f
    rlca
    add sp, $03
    db $e4
    inc bc
    rst $38
    ld bc, $40b2
    cpl
    ret z

    rra
    ld hl, sp+$03
    ld h, b
    ld b, $e0
    inc bc
    rst $38
    ret nz

    sub c
    db $10
    rra
    ld b, b
    ccf
    cp $00
    rrca
    add b
    rrca
    ldh a, [$3f]
    ld hl, sp+$01
    ccf
    add b
    dec sp
    dec sp
    rst $38
    add b
    rlca
    ldh [$08], a
    rst $38
    sbc a
    ld hl, sp+$00
    ccf
    ret nz

    rrca
    rst $38
    cp $64
    inc bc
    ret nz

jr_022_4491:
    ld bc, $fffd
    rst $38
    nop
    ld de, $3710
    rst $38
    rst $38
    add b
    nop
    ld hl, sp+$01
    cp a
    rst $38
    ret nz

    nop
    ld [$5f00], sp
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    jr nz, jr_022_44b0

jr_022_44b0:
    ld b, $00
    ld a, a
    rst $38
    pop bc
    nop
    stop
    rra
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ccf
    rst $38
    add b
    nop
    add c
    cp $1b
    rst $38
    ld hl, sp+$00
    rra
    db $fc
    rlca
    rst $38
    rst $38
    ldh [rIF], a
    cp $00
    rra
    rst $38
    add b
    nop
    ld a, a
    ldh a, [$03]
    rst $38
    ld sp, hl
    nop
    inc bc
    rst $38
    add b
    rrca
    rst $38
    ret nz

    nop
    ccf

Call_022_44e4:
    ld hl, sp+$0f
    rst $38
    ld hl, sp+$00
    inc bc
    rst $08
    add b
    ccf
    rst $38
    ret nz

    nop
    ld [$031f], sp
    rst $38
    ldh a, [rP1]
    rrca
    ret nz

    rlca
    rst $38
    rst $38
    nop
    nop
    jr nc, jr_022_44ff

jr_022_44ff:
    rra
    rst $38
    ldh a, [rP1]
    nop
    add b
    rrca
    ld a, a
    rst $38
    db $e3
    rst $38
    cp $00
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    add b
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
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
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld c, a
    rst $38
    jp Jump_022_707f


    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    add hl, sp
    ccf
    inc hl
    ld hl, sp+$37
    ldh [$03], a
    rst $38
    rst $30
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld sp, $00f0
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    jr jr_022_4585

    rrca
    call z, $ff07
    rst $38
    ei
    nop
    nop
    nop
    rra
    rst $38
    ld bc, $ffc9
    rst $20
    ei

jr_022_4585:
    inc bc
    ld hl, sp+$1f
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $30
    rst $38
    nop
    db $10
    inc b
    pop bc
    nop
    nop
    nop
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    nop
    nop
    inc sp
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    ld b, b
    adc b
    db $10
    db $10
    inc bc
    nop
    nop
    nop
    nop
    db $10
    jr nz, jr_022_45b9

jr_022_45b9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    jr nc, jr_022_45cd

jr_022_45cd:
    nop
    nop
    nop
    nop
    ld e, e
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    inc b
    cp $0f
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
    rst $38
    rst $38
    rst $38
    adc a
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
    nop
    nop
    dec c
    inc h
    add b
    nop
    nop
    nop
    inc bc
    ld hl, sp+$00
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
    sub d
    ld b, a
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    nop
    nop
    ld a, a
    rst $38
    ret nz

    nop
    nop
    ld bc, $3b03
    ld h, d
    nop
    nop
    nop
    ld [hl-], a
    ccf
    ldh [rP1], a
    nop
    nop
    ld h, h
    ret nz

    ld c, b
    nop
    nop
    ld c, c
    db $fd
    pop hl
    add b
    nop
    nop
    sbc e
    db $fc
    ld a, [$7f82]
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    dec de
    ld a, a
    db $fc
    nop
    ld de, $ff81
    db $10
    dec de
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $e00c
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    cp $7f
    ldh [$f1], a
    ld c, $ff
    rst $38
    rst $38
    ldh [rLCDC], a
    nop
    rlca
    cp a
    rst $30
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $ffff
    rst $38
    add b
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffbf
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ff7f
    cp $00
    nop
    ld bc, $ffff
    cp $00
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    ei
    rst $38
    rst $38
    add b
    nop
    inc bc
    cp a
    rst $38
    db $fc
    nop
    nop
    daa
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    sbc a
    rst $38
    rst $38
    or b
    nop
    nop
    ld l, a
    rst $38
    ld sp, hl
    adc b
    nop
    inc c
    rst $38
    rst $38
    ld [hl], d
    nop
    add b
    ld h, $ff
    rst $38
    inc sp
    nop
    nop
    rst $08
    rst $38
    db $dd
    jr nc, jr_022_472d

jr_022_472d:
    ld b, $7f
    rst $30
    ei
    jr nz, jr_022_4733

jr_022_4733:
    ld h, $df
    db $fd
    reti


    add b
    add hl, bc
    ld b, $7f
    cp $f9
    jr nz, jr_022_4747

jr_022_473f:
    rst $08
    cp a
    rst $38
    ld h, h
    add c
    jr nz, jr_022_473f

    rst $28

jr_022_4747:
    ld sp, hl
    add b
    inc bc
    inc bc
    sbc c
    or $7d
    add b
    adc c
    ld h, $9e
    sbc $67
    di
    ld [$6f00], sp
    sbc a
    rst $08
    add [hl]
    ld [hl], c

jr_022_475c:
    adc h
    rst $28
    inc hl
    sbc b
    jp nz, $817d

    sbc $c3
    inc a
    ret z

    jr nc, jr_022_475c

    rra
    inc h
    jr c, @+$73

    rst $20
    add hl, bc
    rst $38

jr_022_4770:
    ld b, $19

Call_022_4772:
    db $e4
    rlca
    sbc [hl]
    ld [hl], e
    rst $00
    sub b
    ld a, $18
    rst $20

jr_022_477b:
    reti


    add $38
    db $ec
    ldh [rTAC], a
    inc e
    ld [hl], e
    adc [hl]
    ld hl, $63fe
    rst $08
    pop af
    add $31
    rst $28
    adc [hl]
    inc sp
    add $07
    inc sp
    inc a
    db $e3
    sbc h
    rst $00
    inc e
    ld h, e
    adc [hl]
    jr c, jr_022_477b

    and $18
    inc a
    pop hl
    rst $00
    ld e, $30
    db $e3
    sbc h
    rst $00
    rst $38
    and $00
    inc bc
    sbc h
    ld h, c
    adc a
    jr c, jr_022_4770

    db $10
    inc bc
    adc $3c
    db $10
    jp $dd13


    cp $c9
    and a
    call c, $ef6f
    rst $38
    call z, $3802
    rst $00
    rst $00
    dec sp
    rst $00
    jr jr_022_4805

    db $e3
    ld c, $79
    jp Jump_022_711c


    cp $06
    ld hl, $c686
    ld [hl], h
    rst $08
    ld a, a
    db $e3
    rst $18
    ld a, b
    db $e3
    rst $38
    rst $38
    db $fd
    rst $20
    adc h
    rst $38
    jr c, @+$01

    cp h
    pop af
    rst $08
    jr @-$1e

    ld [$303c], sp
    nop
    ld [$df73], sp
    db $fc
    ld c, b
    nop
    ld c, $1e
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add hl, bc
    add b
    ld [$0800], sp
    ld [bc], a
    db $10
    ld [$3000], sp
    ld h, b
    nop
    nop

jr_022_4805:
    ld bc, $20ce
    jr nc, jr_022_480a

jr_022_480a:
    nop
    inc bc
    rst $38
    ld a, b
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$dd]
    db $fd
    rst $38
    rst $18
    call c, $ffd8
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    add $00
    nop
    jr nz, jr_022_482c

jr_022_482c:
    nop
    nop
    rlca
    rra
    ld a, a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    db $10
    jr nz, jr_022_48b6

    add hl, sp
    ld hl, sp+$40
    nop
    ld bc, $000c
    nop
    nop
    nop
    ld h, c
    db $e3
    add b
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
    add b
    nop
    nop
    inc e
    dec sp
    cp b
    rst $08
    sbc a
    rst $38
    ld h, b
    nop
    nop
    db $10
    ld bc, $bf81
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    rst $18
    or $3e
    cp $ff
    rst $38
    ret c

    call $f0bf
    inc b
    ld b, b
    nop
    dec c
    rst $38
    adc l
    add d
    ld a, a
    rst $38
    di
    or $ff
    cp $ce
    ld hl, sp-$77
    nop
    adc h
    add hl, de
    inc b
    ld a, $e4
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec b
    call c, $0680
    ld b, $68
    nop
    nop
    nop
    nop
    nop
    dec de

Call_022_489e:
    ld bc, $0004
    nop
    ld b, $00
    nop
    nop
    nop
    jr nz, jr_022_48a9

jr_022_48a9:
    nop
    nop
    nop
    nop
    stop
    ld a, a
    rst $20
    add sp, $03
    rst $38
    db $fd
    rst $38

jr_022_48b6:
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ei
    ldh a, [$f8]
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    add e
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $fe
    ldh [rTAC], a
    inc c
    di
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$03], a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    or $4f
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    di
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$7f]
    cp $5b
    ld b, $0f
    rst $38
    cp [hl]
    ccf
    scf
    rst $38
    rst $38
    ldh [$80], a
    rra
    ld a, a
    db $e3
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
    ld a, b
    nop
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    jp RST_00


    ld a, a
    cp $00
    nop
    inc bc
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$01
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_022_499e

    rst $38
    rst $38
    ld a, [c]
    ld [hl], d
    rra
    rst $38
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    rst $20
    rst $38
    ldh a, [rIE]
    rst $38
    ret nz

    nop
    inc bc
    jp $e1e3


    ldh [rP1], a
    ld hl, sp-$01
    add hl, sp
    inc a
    ld a, [hl]
    rrca
    rrca
    add a
    jp Jump_022_61fe


    jp $f0c0


    ld a, $7b
    and $38
    ld a, $1e
    rrca
    ldh a, [$4e]
    ld a, b
    ld a, b
    ld a, $0f
    rst $38
    ldh a, [$7c]
    ld h, b
    rrca
    inc a
    ld [hl], c
    db $fc
    ld a, h
    inc e
    inc c
    nop

jr_022_499e:
    ld bc, $ff3f
    add a
    add b
    nop
    rst $28
    rst $38
    db $fc
    nop
    nop
    adc a
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, a
    ei
    rst $38
    ldh a, [rP1]
    ld a, a
    cp $ff
    ldh a, [rSB]
    rst $38
    sbc a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    ldh a, [$03]
    rst $38
    rrca
    rst $38
    ldh [rTAC], a
    cp $0f
    rst $38
    ldh [$03], a
    cp $07
    rst $38
    add b
    rlca
    db $fc
    rrca
    rst $38
    ret nz

    rrca
    ld hl, sp+$1f
    rst $38
    ret nz

    rrca
    ld hl, sp+$1f
    rst $38
    ret nz

    rra
    ld hl, sp+$3f
    rst $38
    nop
    ccf
    ldh [$7f], a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $30
    nop
    ld a, a
    add c
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    cp $00
    ld a, a
    inc bc
    rst $38
    cp $00
    rst $38
    ld bc, $ffff
    nop
    cp $01
    rst $38
    cp $01
    db $fc
    inc bc
    rst $38
    cp $00
    rst $38
    rlca
    rst $38
    cp $00
    cp $01
    rst $38
    cp $00
    ld a, a
    ld bc, $ffff
    nop
    cp $01
    rst $38
    adc $00
    cp $03
    rst $38
    rst $38
    nop
    ld a, a
    ld bc, $ffff
    nop
    rst $38
    ld bc, $ffff
    add b
    ccf
    add c
    rst $38
    rst $38
    add b
    rra
    ret nz

    ld a, a
    rst $38
    ret nz

    rrca
    ret nz

    ld a, a
    rst $18
    ldh [rTAC], a
    ldh a, [rIE]
    rst $20
    ld hl, sp+$03
    ld hl, sp+$1f
    ei
    db $fc
    ld bc, $0ffc
    di
    cp $00
    cp $07
    db $fd
    rst $38
    nop
    ld a, a
    inc bc
    db $fc
    ld a, a
    nop
    rra
    ret nz

    rst $38
    rst $38
    ldh [rIF], a
    ldh [$3f], a
    rst $38
    ldh a, [$03]
    ld hl, sp+$3f
    rst $38
    ldh a, [rP1]
    cp $07
    rst $38
    cp $00
    ld a, a
    add c
    rst $38
    rst $38
    nop
    ccf
    ret nz

    rst $38
    rst $38
    ldh [rIF], a
    ldh a, [$3f]
    rst $38
    ldh a, [$03]
    ld hl, sp+$1f
    ei
    db $fc
    nop
    ld a, a
    inc bc
    rst $38
    rst $38
    nop
    ld a, a
    ld bc, $7fff
    ret nz

    rrca
    ldh a, [$3f]
    rst $38
    ldh [rTAC], a
    ld hl, sp+$1f
    rst $38
    db $fc
    ld bc, $03fe
    rst $38
    cp $00
    ld a, a
    inc bc
    rst $28
    rst $38
    add b
    ccf
    add b
    ld a, a
    cp a
    ret nz

    rra
    ldh [$3f], a
    rst $38
    ldh a, [rTAC]
    ld hl, sp+$1f
    rst $20
    db $fc
    ld bc, $07fc
    rst $38
    cp $00
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    ret nz

    ccf
    ret nz

    ld a, a
    rst $18
    ldh [rIF], a
    ldh [rIE], a
    rst $38
    ldh a, [rTAC]
    ld hl, sp+$1f
    rst $38
    ld hl, sp+$01
    db $fc
    rrca
    di
    db $fc
    nop
    cp $03
    rst $38
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    add b
    ccf
    ret nz

    ccf
    rst $38
    ret nz

    rra
    ldh [$7f], a
    rst $38
    ldh [rIF], a
    ldh a, [$3f]
    rst $38
    ldh a, [rTAC]
    db $fc
    rrca
    rst $38
    db $fc
    ld bc, $03fe
    rst $38
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    ret nz

    rra
    ldh a, [$3f]
    rst $38
    ldh [rIF], a
    ld hl, sp+$0f
    rst $38
    ldh a, [rTAC]
    db $fc
    rlca
    rst $30
    ld hl, sp+$01
    db $fc
    rlca
    rst $38
    cp $01
    rst $38
    ld bc, $feff
    nop
    ld a, a
    add h
    ld a, a
    rst $38
    add b
    ccf
    ldh [$3f], a
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    ldh a, [rTAC]
    db $fc
    rrca
    rst $38
    ld hl, sp+$03
    cp $03
    rst $38
    cp $00
    rst $38
    ld bc, $ffff
    nop
    rst $38
    add b
    rst $38
    rst $38
    nop
    ld a, a
    ret nz

    rst $38
    rst $38
    add b
    ccf
    ret nz

    ld a, a
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    rst $28
    ldh [$1f], a
    ldh [$1f], a
    di
    ldh a, [rTAC]
    ldh a, [$1f]
    rst $38
    ldh a, [rTAC]
    ld hl, sp+$0f
    db $fd
    ld hl, sp+$07
    ld hl, sp+$0f
    rst $38
    ld a, b
    inc bc
    ld hl, sp+$0f
    rst $38
    ld a, h
    inc bc
    ld hl, sp+$0f
    cp $38
    rlca
    ld hl, sp+$07
    rst $38
    ld hl, sp+$07
    ld hl, sp+$0f
    rst $38
    ldh a, [rTAC]
    ldh a, [rIF]
    rst $38
    ldh a, [rIF]
    ld hl, sp+$0f
    cp $f0
    rrca
    ldh a, [rIF]
    db $fd
    ldh a, [rIF]
    ldh [$1f], a
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    nop
    ccf
    ldh [$3f], a
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    cp $00
    rst $38
    nop
    rst $38
    db $fc
    ld bc, $01ff
    rst $38
    ldh a, [$03]
    db $fc
    inc bc
    rst $38
    ldh [rTAC], a
    ld hl, sp+$07
    rst $38
    ret nz

    rra
    ldh a, [rIF]
    rst $38
    add b
    ccf
    ldh [$1f], a
    cp $00
    rst $38
    ret nz

    ld a, a
    db $fc
    ld bc, $00ff
    rst $38
    ldh a, [rTAC]
    cp $01
    rst $38
    ldh [rIF], a
    db $fc
    rlca
    rst $38
    ret nz

    rra
    ldh a, [rIF]
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    cp $00
    rst $38
    add b
    ld a, a
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    ldh [rTAC], a
    db $fc
    ld bc, $e0ff
    rra
    ld hl, sp+$07
    rst $38
    nop
    ccf
    ret nz

    rrca
    db $fc
    nop
    rst $38
    add b
    ccf
    cp $01
    rst $38
    nop
    ld a, a
    ld hl, sp+$07
    db $fc
    ld bc, $e0ff
    rra
    ld hl, sp+$07
    rst $38
    ret nz

    ccf
    ldh [rIF], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    db $fc
    inc bc
    cp $00
    rst $38
    ldh a, [rIF]
    ld hl, sp+$03
    rst $38
    ldh [$3f], a
    ldh [rIF], a
    rst $38
    add b
    rst $38
    ret nz

    ccf
    cp $03
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    db $fc
    inc bc
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    rst $38
    add b
    rst $38
    ret nz

    ccf
    db $fc
    ld bc, $00ff
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    ldh [$1f], a
    ldh [rIF], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    db $fc
    inc bc
    ld hl, sp+$01
    rst $38
    ldh a, [rIF]
    ldh a, [rTAC]
    rst $38
    nop
    ccf
    ret nz

    rra
    ld hl, sp+$00
    cp $00
    ld a, a
    ldh [$03], a
    ld hl, sp+$01
    rst $38
    add b
    rrca
    ldh [rTAC], a
    db $fc
    nop
    ld a, a
    nop
    ccf
    ldh a, [rSB]
    db $fc
    nop
    rst $38
    add b
    rrca
    ldh a, [rTAC]
    cp $00
    ccf
    ret nz

    rra
    ld hl, sp+$00
    cp $00
    ld a, a
    ld hl, sp+$03
    db $fc
    ld bc, $c0ff
    rrca
    ldh [rTAC], a
    rst $38
    nop
    ccf
    add b
    rra
    db $fc
    ld bc, $00fe
    rst $38
    ldh a, [rTAC]
    ld hl, sp+$03
    rst $38
    add b
    ccf
    ret nz

    rrca
    rst $38
    nop
    rst $38
    add b
    ccf
    ld hl, sp+$03
    db $fc
    ld bc, $c0ff
    rrca
    ldh a, [rTAC]
    rst $38
    add b
    ld a, a
    ret nz

    rra
    db $fc
    ld bc, $00ff
    ld a, a
    ld hl, sp+$07
    db $fc
    ld bc, $c0ff
    rra
    ldh a, [rTAC]
    rst $38
    nop
    ld a, a
    ret nz

    rra
    cp $00
    rst $38
    nop
    ld a, a
    ldh a, [$03]
    db $fc
    ld bc, $c0ff
    rrca
    ld hl, sp+$03
    rst $38
    add b
    ccf
    ldh [rIF], a
    cp $00
    rst $38
    add b
    ccf
    db $fc
    ld bc, $00fe
    rst $38
    ldh [rTAC], a
    db $fc
    inc bc
    rst $38
    ret nz

    rra
    ldh a, [rIF]
    rst $38
    nop
    ld a, a
    ret nz

    ccf
    cp $01
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$03
    rst $38
    ret nz

    rra
    ldh [rIF], a
    rst $38
    nop
    ld a, a
    add b
    ccf
    db $fc
    ld bc, $00fe
    rst $38
    ldh a, [rTAC]
    ld hl, sp+$03
    rst $38
    ret nz

    ccf
    ldh [rIF], a
    rst $38
    nop
    rst $38
    add b
    ccf
    ld hl, sp+$03
    cp $01
    rst $38
    ldh [rIF], a
    ldh a, [rTAC]
    rst $38
    add b
    ccf
    ret nz

    rra
    db $fc
    ld bc, $00ff
    rst $38
    ldh a, [rTAC]
    ld hl, sp+$03
    rst $38
    add b
    ccf
    ret nz

    rra
    db $fc
    ld bc, $00ff
    rst $38
    ldh a, [rIF]
    ld hl, sp+$03
    rst $38
    add b
    ccf
    ret nz

    rra
    db $fc
    ld bc, $00ff
    rst $38
    ldh [rIF], a
    ldh a, [rTAC]
    rst $38
    nop
    ld a, a
    ret nz

    ccf
    db $fc
    inc bc
    cp $01
    rst $38
    ret nz

    rra
    ldh [rIF], a
    cp $01
    rst $38
    nop
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    ret nz

    ccf
    ld hl, sp+$03
    db $fc
    ld bc, $c0ff
    rra
    ldh [rIF], a
    cp $00
    rst $38
    nop
    ld a, a
    ldh a, [rTAC]
    db $fc
    inc bc
    rst $38
    add b
    ccf
    ret nz

    rra
    ld hl, sp+$03
    cp $00
    rst $38
    ret nz

    rra
    ldh a, [rIF]
    cp $00
    rst $38
    add b
    ld a, a
    ldh a, [rTAC]
    db $fc
    inc bc
    rst $38
    nop
    ccf
    ldh [$1f], a
    ld hl, sp+$01
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    add b
    ccf
    ldh [$03], a
    db $fc
    ld bc, $80ff
    rra
    ldh [rIF], a
    db $fc
    nop
    rst $38
    nop
    ld a, a
    ret nz

    rrca
    ld hl, sp+$03
    cp $00
    ld a, a
    ret nz

    ccf
    ld hl, sp+$03
    cp $01
    rst $38
    add b
    rra
    ldh [rIF], a
    db $fc
    nop
    rst $38
    add b
    ccf
    ldh a, [$03]
    db $fc
    ld bc, $c0ff
    rra
    ldh a, [rTAC]
    cp $00
    ld a, a
    ret nz

    rra
    db $fc
    ld bc, $00ff
    rst $38
    ldh a, [rTAC]
    db $fc
    inc bc
    rst $38
    add b
    rra
    ldh [rIF], a
    cp $00
    ld a, a
    add b
    ccf
    db $fc
    ld bc, $00fe
    ld a, a
    ldh [rTAC], a
    db $fc
    ld bc, $c0ff
    rra
    ldh a, [rTAC]
    rst $38
    nop
    ccf
    ldh [rIF], a
    cp $00
    ld a, a
    add b
    rra
    ld hl, sp+$00
    rst $38
    nop
    ccf
    ldh a, [rSB]
    cp $00
    ld a, a
    ldh [rSB], a
    db $fc
    nop
    rst $38
    ldh [$03], a
    db $fc
    nop
    rst $38
    ldh [rSB], a
    db $fc
    nop
    rst $38
    ldh [rSB], a
    cp $00
    ld a, a
    ldh [rP1], a
    cp $00
    ccf
    ldh [rLCDC], a
    ld a, h
    nop
    ccf
    ldh a, [$30]
    rrca
    ld [bc], a
    rlca
    cp $3e
    inc bc
    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    ldh [$3f], a
    ld hl, sp+$60
    ccf
    call z, $fe03
    ld e, $03
    rst $28
    ret nz

    ld a, a
    pop hl
    ldh a, [$3e]
    ld a, [hl]
    inc bc
    rst $38
    rra
    nop
    jp Jump_000_0ff0


    ld hl, sp-$04
    nop
    ccf
    ret nz

    rrca
    rst $38
    ldh a, [rSB]
    rst $38
    nop
    ccf
    jp $01e0


    rst $38
    nop
    ccf
    rst $18
    ret nz

    inc bc
    db $fc
    nop
    ld a, a
    adc a
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    sbc a
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    sbc a
    ldh [rSB], a
    cp $00
    ld a, a
    rst $08
    ldh a, [rSB]
    rst $38
    nop
    ccf
    rst $08
    ld hl, sp+$00
    rst $38
    add b
    rra
    jp Jump_000_00fc


    rra
    ldh a, [rTAC]
    rst $38
    rst $38
    add b
    rrca
    ld hl, sp+$01
    db $fc
    rra
    ldh a, [rP1]
    rst $38
    add b
    ld a, a
    rst $00
    cp $00
    rra
    ldh a, [$03]
    ld hl, sp+$7f
    ldh [$03], a
    cp $00
    ccf
    add a
    cp $00
    rra
    ldh [$03], a
    db $fc
    ld a, a
    ldh a, [rSB]
    rst $38
    nop
    rra
    rst $38
    rst $38
    nop
    rrca
    ld hl, sp+$01
    cp $0f
    db $fc
    nop
    ld a, a
    ret nz

    rrca
    db $fc
    rra
    ld hl, sp+$01
    rst $38
    nop
    ccf
    ldh a, [$3f]
    ldh a, [rSB]
    cp $00
    rst $38
    add b
    ccf
    ld hl, sp+$00
    cp $01
    rst $38
    nop
    ld a, a
    ld hl, sp+$00
    rst $38
    ld bc, $00ff
    rst $38
    ld hl, sp+$00
    ld bc, $c09f
    inc bc
    rst $38
    db $fc
    nop
    ccf
    ret nz

    inc bc
    cp $3f
    rst $38
    rra
    ret nz

    nop
    rst $38
    ret nz

    ld a, a
    rst $38
    sub b
    nop
    rlca
    ldh a, [rTAC]
    rst $38
    ldh a, [rTMA]
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rra
    ld [c], a
    ld bc, $f7ef
    rst $38
    add b
    ldh a, [$80]
    ld bc, $fff8
    ret nz

    rrca
    cp $00
    ld h, b
    inc b
    rlca
    rst $38
    rst $08
    ret nz

    rrca
    jr c, jr_022_4f4d

    rst $38
    rst $28
    rst $38

jr_022_4f4d:
    call c, Call_000_001c
    rlca
    rst $38
    cp $0c
    db $ec
    nop
    nop
    ccf
    rst $38
    add b
    stop
    nop
    ld bc, $7f00
    ldh a, [rIF]
    ldh a, [rP1]
    ld a, h
    rst $00
    rst $38
    nop
    rst $38
    nop
    inc bc
    di
    db $dd
    rst $38
    db $fc
    ld [$0000], sp
    ld [$ff07], sp
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    pop bc
    rst $38
    ldh [rSB], a
    ldh a, [rIF]
    cp $00
    ld a, a
    add b
    nop
    nop
    inc bc
    db $fc
    ld a, a
    db $fc
    nop
    rra
    ldh [rTAC], a
    db $fc
    rlca
    db $fc
    nop
    ld a, a
    inc bc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ldh a, [$3f]
    cp $7f
    call z, $fc07
    rst $08
    ret nz

    nop
    nop
    ccf
    rst $38
    add b
    ld bc, $80ff
    ccf
    ldh [rIF], a
    ldh a, [rSB]
    db $fc
    nop
    ld a, a
    nop
    rlca
    ret nz

    rlca
    db $fc
    inc bc
    db $fc
    nop
    ld b, $20
    ld a, [hl]
    nop
    inc bc
    nop
    inc bc
    ldh a, [rDIV]
    call c, $ff07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    adc [hl]
    rra
    rst $38
    ld e, $00
    ld a, a
    rst $38
    ret nz

    jr jr_022_5015

    rst $38
    pop af
    ld a, $d8
    jr nc, jr_022_4ff4

    ld bc, $c3ff
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_022_4ff0:
    nop
    nop
    nop
    rst $38

jr_022_4ff4:
    nop
    nop
    ld bc, $cce1
    ld e, e
    rst $38
    ret nz

    jr nc, @-$19

    sbc a
    ret nz

    dec c
    rst $18
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
    db $db
    jr nz, jr_022_5030

    inc a
    nop
    nop
    nop
    nop

jr_022_5015:
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
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
    inc e
    db $76
    rst $08
    rst $38
    jr nc, jr_022_5030

    add hl, sp
    jr nz, jr_022_5030

jr_022_5030:
    nop
    dec sp
    ld b, b
    nop
    nop
    ld bc, $1800
    nop
    jr nc, jr_022_5043

    ld [bc], a
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $fd
    ld [hl], a
    rrca

jr_022_5043:
    ld [de], a
    ld a, a
    ld a, a
    ld [bc], a
    or [hl]
    ld bc, $036f
    rst $38
    rst $38
    rst $38
    db $fc
    ldh [$ed], a
    rst $38
    add a
    rst $20
    ld sp, hl
    or $7d
    add c
    add b
    nop
    nop
    ld bc, $f8fd
    ld [hl-], a
    ld bc, $8081
    nop
    nop
    nop
    nop
    nop
    inc b
    add b
    ld b, b
    ld a, [hl]
    ld e, a
    rst $38
    ldh a, [$30]
    ld e, $1f
    pop bc
    ldh a, [$3c]
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    dec c
    nop
    ld [de], a
    nop
    nop
    rra
    rst $28
    rst $38
    rst $38
    nop
    rlca
    db $e4
    ret c

    ld a, c
    inc h
    jp Jump_000_0978


    rlca
    rst $38
    ld a, a
    db $fc
    nop
    inc de
    rst $38
    rst $38
    cp $60
    ld bc, $c000
    nop
    inc bc
    rst $38
    rst $38
    cp $42
    ld [bc], a
    ld bc, $c608
    rst $18
    rst $38
    rst $38
    cp c
    sbc b
    db $e3
    add [hl]
    nop
    ld bc, $e787
    rst $38
    rst $18
    rra
    ld h, a
    adc e
    add b
    nop
    ld [bc], a
    inc sp
    rst $30
    sbc l
    inc a
    and $e3
    inc sp
    ldh [rSC], a
    ld bc, $cf83
    scf
    dec de
    rst $18
    ld a, $4d
    adc [hl]
    jr jr_022_5151

    ld [hl], h
    inc c

jr_022_50d7:
    and $39
    sub c
    and $61
    db $e4
    rst $00
    rla
    ld [de], a
    ld c, h
    ld a, c
    jr nc, @+$7e

    jr nc, jr_022_50d7

    ld c, c
    add [hl]

jr_022_50e8:
    inc a
    and $e7
    dec a
    inc e
    ld [hl], e
    sbc c
    adc $60
    pop bc
    add [hl]
    rst $08
    rra
    jr nc, @-$12

jr_022_50f7:
    ld c, l
    inc sp
    ld [hl], $e3
    ld h, c

jr_022_50fc:
    adc h
    ld l, h
    inc a
    ei
    ld a, c
    db $76
    db $e3
    pop bc
    rst $00
    ld c, $34
    sub [hl]
    rst $08
    jr nc, jr_022_50fc

    rst $00
    adc [hl]
    ld c, h
    ld l, h

jr_022_510f:
    db $ec
    db $e3
    jr nc, jr_022_50f7

    db $e3
    sbc e
    inc e
    cp $78
    sbc h
    ld a, h
    inc e
    rst $20
    ld de, $cf8f
    adc [hl]
    inc e
    jr jr_022_510f

    cp h

jr_022_5124:
    ld l, h
    ld a, b
    ld [hl], e

jr_022_5127:
    ld h, e
    jr @+$3e

    ret c

    db $e3
    jp Jump_000_128e


    ld [hl], c
    db $e3
    ld h, a
    sbc e
    rra
    jr jr_022_50e8

    ld a, c
    db $e3
    dec sp
    adc h
    rst $18
    inc e

jr_022_513c:
    sbc e
    ld h, e
    inc sp
    jr c, jr_022_5124

    add a

jr_022_5142:
    dec de
    jr c, @+$7a

    jp Jump_000_1c0f


    ld l, h
    ld b, e
    jr c, jr_022_513c

    ld h, [hl]
    ld [hl], e
    add $18
    ld h, h

jr_022_5151:
    inc sp
    call z, Call_022_73e6
    sbc h

jr_022_5156:
    ld d, e
    pop af
    adc $1e
    ld sp, $91f1
    add [hl]
    ld [hl], a
    jr jr_022_5127

    add $78
    rst $00
    add a
    jr c, @-$1e

    inc bc
    inc c
    adc $70
    sub c
    sbc $61
    jp Jump_000_374c


    or c
    inc e
    call z, $ffce
    inc a
    ld [hl], e
    ld e, $de
    ld h, c
    sbc [hl]
    rst $08
    daa
    ld h, h
    db $eb
    ld h, a
    jr jr_022_5156

    inc e
    inc h
    add hl, de

jr_022_5186:
    sbc c
    call z, $f361
    ld l, c
    and $da
    inc sp
    sbc h
    ld l, c
    call z, Call_000_1432
    add $c9
    ld l, h
    rst $00
    ld sp, $ce91
    ld [hl], $99
    inc sp
    sbc h
    ld h, l
    or [hl]
    sbc c
    dec a
    call z, Call_022_4772
    inc h
    db $e3
    jr jr_022_5142

    rst $28
    daa
    db $eb
    add hl, de
    sbc c
    call z, $d332
    jr c, jr_022_5186

    ld a, h

jr_022_51b4:
    ld [hl], e
    adc h
    ld h, c
    add $39
    adc $73
    sbc c
    add $38
    adc $71
    db $d3
    jr nc, jr_022_523c

    inc [hl]
    ld [hl], c
    rst $00
    add hl, sp
    adc h
    db $e3
    inc c
    db $e3
    jr jr_022_51b4

    jr @-$1d

    adc a
    adc [hl]
    ld [hl], e
    sbc h
    ld [hl], c
    add $33
    adc h
    ld [hl], d
    add $61
    adc a
    ld a, b
    rst $20
    sbc h
    di
    call z, Call_000_1862
    ld h, c
    adc b
    jr jr_022_51e6

jr_022_51e6:
    ld c, c
    inc sp
    xor $73
    db $ec
    and l
    adc c
    adc h
    ld hl, sp-$25
    dec sp
    add hl, sp
    db $ec
    rst $20
    sub e
    ld [hl-], a
    inc sp
    inc a
    ld [hl], c
    ret z

    ld [hl-], a
    ld [hl], a
    ccf
    push hl
    sbc h
    rst $20
    adc $19
    db $d3
    jr c, jr_022_526c

    sbc h
    di
    dec e
    or c
    add $34
    ret nz

    ld [$cf93], sp
    inc a
    rst $08
    ld [$4cf7], sp
    ld h, b
    ld de, $0018
    nop
    ld bc, $0100
    ld [bc], a
    ld b, e
    jr jr_022_5224

    inc de
    ld b, $31
    adc l

jr_022_5224:
    and [hl]
    call z, Call_022_7338
    inc c
    ld bc, $4010
    add [hl]
    dec a
    or $67
    rla
    sbc d
    ld h, e
    ld [bc], a
    nop
    ld a, a
    ld [hl], e
    adc h
    call z, $fbde
    rst $38

jr_022_523c:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ei
    rst $38
    reti


    adc $dc
    ei
    rst $38
    and $6e
    rst $38
    sbc h
    add hl, de
    adc d
    jr nc, jr_022_52b0

    add hl, de
    add c
    ld h, [hl]
    inc b
    ld h, h
    add $00
    nop
    ld bc, $f2ff
    nop
    nop
    dec sp
    ret nz

    nop
    nop
    adc $e0
    nop
    rra
    rst $38

Call_022_5266:
    ldh [rP1], a
    rra
    cp $00
    rlca

jr_022_526c:
    rst $38
    cp $00
    rst $38
    cp $20
    ccf
    rst $38
    ret nz

    rrca
    rst $38
    add b
    rlca
    rst $38
    ei
    rrca
    rst $38
    db $fc
    rst $08
    rst $38
    db $e4
    pop hl
    rst $38
    sub e
    rst $38
    rst $38
    rst $38
    reti


    add b
    scf
    ldh a, [rP1]
    nop
    rst $38
    xor $00
    ld a, a
    db $ec
    sbc h
    ld b, $f0
    db $10
    ld [hl], b
    nop
    ld a, [hl]
    ld b, d
    jr nz, jr_022_529f

    cp $07
    add c

jr_022_529f:
    rst $38
    jp nz, $00e8

    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    nop
    nop
    dec a
    db $fc
    ld hl, sp-$10
    ld [hl], b

jr_022_52b0:
    pop af
    pop hl
    add b
    ld c, $3e
    ld e, $7e

jr_022_52b7:
    jr nc, jr_022_52bc

    add a
    add a
    add e

jr_022_52bc:
    pop bc
    ld a, c
    rst $08
    ld [$2de3], sp
    ldh a, [$7c]
    jr c, jr_022_52b7

    add a
    sbc [hl]
    jr c, @+$42

    jr jr_022_534b

    ei
    ldh a, [rSB]
    adc a
    db $fd
    ld sp, hl
    nop
    rrca
    rst $38
    db $fc
    nop
    rra
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    ret nz

    ld bc, $fcff
    nop
    rra
    rst $38
    add b
    inc bc
    rst $38
    ldh [rSB], a
    rst $38
    ld hl, sp+$00
    rst $38
    db $fc
    nop
    rst $38
    cp $00
    rst $38
    ld a, a
    nop
    ld a, a
    add e
    ret nz

    ccf
    pop bc
    ld hl, sp+$07
    ldh a, [$1f]
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rra
    rst $38
    ldh [$1f], a
    cp $3f
    ld bc, $00fe
    ld a, a
    add b
    ld a, a
    add c
    ld hl, sp+$00
    rst $38
    rra
    ret nz

    rst $38
    ld bc, $c0ff
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, b
    adc h
    ldh a, [$1f]
    ldh [$1f], a
    ret nz

    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rTAC], a
    ldh a, [rIF]
    pop af
    inc bc
    ld hl, sp+$07
    ldh a, [$03]
    ld hl, sp+$07
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$01
    db $fc
    rlca

jr_022_534b:
    ld hl, sp+$01
    db $fc
    rlca
    ld sp, hl
    inc bc
    ld hl, sp+$0f
    ldh a, [$03]
    ld hl, sp+$0f
    ldh [rTAC], a
    ldh a, [$1f]
    ldh [$03], a
    ld hl, sp+$0f
    ldh a, [rSTAT]
    db $fc
    rlca
    ldh a, [$03]
    ld hl, sp+$0f
    ldh [rTAC], a
    ldh a, [rIF]
    ldh [rTAC], a
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$1f]
    ret nz

    rlca
    ldh a, [$1f]
    ret nz

    rrca
    ldh [$3f], a
    add b
    rra
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ccf
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ccf
    add b
    rst $38
    nop
    ccf
    add b
    ld a, a
    nop
    ld a, a
    nop
    cp $00
    cp $03
    db $fc
    ld bc, $03fe
    db $fc
    nop
    cp $03
    db $fc
    nop
    cp $03
    ld hl, sp+$01
    db $fc
    rlca
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [rIF], a
    ldh [$3f], a
    ret nz

    rrca
    ldh [$3f], a
    ret nz

    rlca
    ldh a, [rIF]
    ldh [rTAC], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    add b
    rst $38
    nop
    ccf
    add c
    rst $38
    nop
    rra
    ret nz

    rra
    pop hl
    rlca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$3f], a
    ldh [$3f], a
    add b
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    add b
    rst $38
    add b
    rra
    ret nz

    ccf
    add b
    rra
    ret nz

    ld a, a
    ret nz

    ld a, a
    nop
    rst $38
    add c
    cp $01
    db $fc
    nop
    cp $03
    cp $00
    ld a, a
    nop
    ld a, a
    add b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $00
    cp $01
    cp $00
    cp $01
    cp $01
    cp $01
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    rst $38
    ld bc, $00fe
    rst $38
    nop
    cp $00
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [$1f]
    db $fc
    rrca
    ld hl, sp+$07
    cp $03
    cp $01
    rst $38
    nop
    cp $00
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld hl, sp+$1f
    ld hl, sp+$07
    cp $03
    cp $01
    rst $38
    nop
    ld a, a
    ret nz

    ccf
    ret nz

    rlca
    ldh a, [rTAC]
    inc a
    adc h
    rra
    cp $11
    cp $03
    rst $38
    nop
    rst $38
    ret nz

    rra
    ldh a, [$87]
    ld hl, sp+$01
    db $fc
    jr nz, @+$41

    ret nz

    ld hl, sp+$60
    ld a, b
    ld hl, sp-$04
    ld [hl], c
    dec a
    ret z

    rra
    sbc h
    rlca
    db $fc
    rrca
    rst $00
    inc bc
    rst $18
    rra
    add [hl]
    rlca
    adc [hl]
    rra
    call c, Call_022_7f42
    inc bc
    ld a, a
    jr jr_022_549a

    ld a, [hl]
    ccf
    inc c
    rrca
    ccf
    ccf
    inc c
    ld c, $1f
    cp a
    jp $9d13


    rst $18

jr_022_549a:
    db $e3
    add b
    add a
    rst $38
    pop af
    add b
    rst $00
    rst $38
    pop hl
    add b
    rst $00
    rst $20
    pop af
    add c
    rst $20
    db $e3
    ldh [rIE], a
    db $e3
    ld de, $ffc0
    pop hl
    ld hl, sp-$80
    rst $38
    db $e3
    pop af
    ld sp, hl
    pop bc
    inc e
    rst $00
    rst $38
    nop
    inc hl
    db $fc
    ld a, [c]
    jr nc, jr_022_54c1

jr_022_54c1:
    rst $38
    ldh a, [$30]
    ld bc, $e0ff
    nop
    rra
    rst $38
    ret nz

    nop
    dec c
    rst $38
    ld sp, hl
    inc bc
    nop
    inc bc
    sbc a
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    rra
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    jr c, jr_022_5501

    adc $00
    nop
    rst $38
    cp $00
    nop
    ld a, e
    adc b
    rst $38
    db $fc
    jr nz, jr_022_54f2

jr_022_54f2:
    rra
    ld hl, sp+$1f
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    inc e
    ld a, a

jr_022_5501:
    rst $38
    rst $38
    ret nz

    inc bc
    inc sp
    add hl, de
    rst $08
    rst $38
    ldh a, [rP1]
    inc bc
    cp $00
    ccf
    rst $38
    call c, $0400
    inc hl
    sbc a
    rst $38
    call z, $3300
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    rla
    jr c, jr_022_5523

    rst $38

jr_022_5523:
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    or $00
    nop
    ld bc, $df89
    rst $38
    ret nz

    nop
    inc bc
    di
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $20
    rst $38
    rst $08
    cp $02
    nop
    inc bc
    nop
    inc bc
    rst $38
    db $dd
    db $e4
    nop
    ld b, b
    ld b, e
    ccf
    rst $38
    rst $38
    db $e4
    nop
    nop
    rra
    rst $38
    rst $38
    add a
    di
    nop
    ld bc, $e1c7
    pop bc
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $fffc
    db $fc
    ld h, b
    ld sp, $3d38
    ld hl, sp-$1a
    ld [bc], a
    ld [bc], a
    ld de, $f7df
    ld b, $20
    nop
    jp nz, $ff6f

    rst $38
    ld hl, sp-$34
    nop
    ccf
    rst $38
    rst $38
    db $fc
    inc c
    nop
    ld [$1f1e], sp
    sbc [hl]
    ld c, $1c
    inc bc
    rra
    pop bc
    ld [$ff9f], sp
    rst $38
    nop
    ld b, $00
    inc bc
    add hl, de
    sbc a
    add a
    nop
    add b
    ld bc, $cf01
    pop hl
    sbc l
    pop bc
    inc bc
    add c
    add hl, sp
    call $60c7
    inc sp
    sbc b
    rlca
    add b
    rra
    db $fc
    rrca
    or $3f
    dec sp
    ld [$ffff], sp
    rst $38
    pop af
    add hl, sp
    sbc $ff
    ldh [rIE], a
    rst $38
    rst $38
    ldh a, [rNR42]
    ld hl, sp-$37
    cp $73
    rst $38
    rst $30
    ld [hl], b
    nop
    db $ec
    rra
    cp $77
    or $00
    inc c
    ld [bc], a
    dec sp
    ld de, $c49f
    ld c, $00
    ccf
    ld e, $1f
    rst $38
    scf
    nop
    inc c
    nop
    ld b, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    rra
    and $00
    ld [$f302], sp
    inc e
    rst $38
    rst $38
    xor $00
    rst $18
    ld a, a
    ld a, a
    and $27
    nop
    nop
    nop
    inc bc
    cp l
    adc a
    ld a, [$f807]
    nop
    ld e, b
    add c
    ld hl, sp-$40
    ld c, b
    nop
    nop
    nop
    jr c, jr_022_5621

    scf
    or c
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    and $f1
    ld b, $0b
    add b
    nop
    nop
    nop
    inc b
    jr nc, jr_022_5614

jr_022_5614:
    nop
    ld c, c
    ld l, c
    cp l
    or h
    sub c
    or [hl]
    sub a
    reti


    ld l, a
    ld l, l
    dec l
    dec h

jr_022_5621:
    dec bc
    ld e, d
    jp nc, $a0d1

    ld [hl+], a
    ld l, c
    sub d
    sub [hl]
    ld h, d
    ld e, [hl]
    jp nz, $d949

    push bc
    xor l
    and [hl]
    ret c

    pop af
    cp b
    xor $5c
    inc l
    ld l, $2f
    ld [hl], $0e
    rla
    rla
    rlca
    inc hl
    dec de
    ld b, a
    inc bc
    ld b, e
    ret z

    ldh [$72], a
    dec de
    sbc h
    rst $00
    ld h, e
    pop bc
    reti


    ld [c], a
    ld [hl], d
    ld a, d
    ret c

    ld c, a
    ld h, $c6
    sub [hl]
    db $d3
    add c
    or l
    cp c
    call z, Call_022_5266
    ld e, [hl]
    ld h, [hl]
    ld [hl-], a
    inc sp
    inc sp
    add hl, de
    reti


    sub d
    add h
    call nz, Call_022_42e6
    ld h, c
    add hl, de
    dec hl
    ld [hl], h
    call c, $d364
    or e
    add hl, hl
    add $c4
    sbc h
    or [hl]
    ld [hl], c
    jp hl


    dec hl
    ld l, c
    inc c
    jp hl


    or b
    sub h
    sbc c
    jp nz, $e3d9

    ld [hl], e
    add hl, de
    add e
    or b
    sub [hl]
    ld d, [hl]
    call Call_022_6299
    ld d, d
    ld c, c
    or e
    and [hl]
    ld h, [hl]
    ld a, c
    ld [hl], $59
    jp hl


    ld [hl], $b6
    ret


    ld b, $de
    ld a, d
    ld e, c
    ld [hl], e
    nop
    ret c

    call Call_022_6c93
    call Call_022_623b
    ld c, d
    and $96
    adc h
    sub [hl]
    ld b, b
    sub e
    ld h, h
    push hl
    sbc [hl]
    ld c, h
    dec c
    dec a
    or b
    ld b, b
    call z, $dbc8
    inc sp
    ld h, l
    inc [hl]
    inc h
    call z, Call_022_44e4
    sbc c
    sub d
    ld c, c
    ld e, c
    adc l
    sbc b
    sbc $4c
    sbc l
    db $ec
    pop bc
    ld [hl], $9c
    sbc c
    dec a
    ret z

    and $91
    add d
    ld h, [hl]
    ld hl, $c99c
    cp c
    ld c, e
    reti


    add c
    sbc e
    ld c, c
    ld h, h
    rst $08
    reti


    and $4c
    ld [hl], c
    inc c
    ld e, $c4
    ret nz

    ld l, c
    cp b
    rst $20
    adc e
    or e
    add c
    sub e
    ld h, [hl]
    ld l, e
    add hl, sp
    sbc l
    adc l
    ld l, h
    ld l, l
    ld a, [hl-]
    call nz, Call_022_489e
    ld l, h
    ld [hl], $63
    or $12
    ld c, c
    add [hl]
    ld [hl], $63
    add hl, bc
    sbc c
    inc [hl]
    ld h, [hl]
    ld e, b
    sbc e
    ld d, $72
    ld h, a
    ld [hl-], a
    sub $b3
    or [hl]
    ld c, c
    sbc c
    sbc l
    add h
    jp Jump_000_3633


    sub e
    ld h, $6c
    cp e
    ld c, [hl]
    ld h, h
    db $d3
    sub e
    ld h, $f3
    dec de
    ld c, h
    call z, $5de6
    or e
    ld [hl], d
    ld b, h
    adc [hl]
    or $66
    call z, Call_022_6e46
    rst $28
    ld [hl], e
    ld [hl-], a
    ld b, a
    ld l, l
    sbc h
    db $10
    ld [bc], a
    db $ed
    cp c
    ret nz

    inc de
    cp a
    db $ec
    nop
    inc de
    sbc a
    db $fd
    jr nz, jr_022_5747

    xor a
    cp [hl]
    add b
    inc de
    ld a, l
    db $fc
    add b
    ld b, [hl]
    ld a, e

jr_022_5747:
    di
    nop
    ld b, c
    rst $38
    or b
    nop
    sbc a
    db $fd
    ret nz

    ld [de], a
    ld [hl], a
    db $fc
    ld [hl+], a
    daa
    ld a, a
    ld b, d
    ld [hl+], a
    ld h, a
    and $24
    ld h, d
    xor $62
    ld h, $0f
    cp $64
    ld h, d
    ld a, a
    add $00
    rst $08
    ld hl, sp-$40
    add a
    cp a
    inc e
    ld h, b
    inc de
    di
    sbc c
    db $10
    db $76

jr_022_5772:
    inc sp
    add e
    ld c, $c6
    jr nc, jr_022_57a9

    ld sp, hl
    rst $00
    add [hl]
    dec sp
    sbc h
    ldh a, [rSCX]
    ld h, e
    sbc [hl]
    inc c
    ld a, h
    ld [hl], c
    pop hl
    adc a
    adc a
    inc a
    jr c, jr_022_5772

    rst $20
    add $3b
    sbc h
    ld [hl], b
    ld h, e
    ld sp, hl
    adc $0c
    ld a, $38
    pop hl
    add a
    add a
    ld e, $30
    db $fc
    ld [hl], c
    jp $e70e


    inc e
    db $10
    ld a, b
    rst $20
    rst $00
    dec e
    sbc h
    ld [hl], b
    db $e3
    cp c

jr_022_57a9:
    rst $00
    inc c
    dec sp
    inc a
    ldh a, [$c3]
    di
    adc a
    jr @+$1d

    inc e
    ld hl, sp-$3d
    rst $20
    ld e, $18
    ld a, h
    pop af
    jp $9e07


    db $fc
    ld h, b
    pop af
    rst $08
    inc b
    add hl, de
    adc $78
    nop
    ld e, h
    rst $20
    add d
    rlca

jr_022_57cb:
    adc [hl]
    ld a, h
    jr nz, jr_022_57cb

    db $e3
    ret nz

    rlca
    rst $28
    jr c, jr_022_57d5

jr_022_57d5:
    ccf
    rst $38
    ldh [$03], a
    rst $20
    sbc [hl]
    nop
    ccf
    cp h
    ldh a, [rSTAT]
    rst $38
    rst $28
    nop
    rra
    rst $38
    ld a, b
    ld b, b
    rst $38
    ei
    add b
    rrca
    rst $28
    inc e
    nop
    ld a, a
    ld a, b
    ret nz

    inc bc
    rst $38
    db $e3
    nop
    rra
    cp $30
    ld bc, $e3ff
    nop
    rrca
    rst $38
    jr jr_022_5800

jr_022_5800:
    ld a, a
    cp $00
    dec b
    rst $38
    ldh [rP1], a
    ccf
    cp $00
    ld bc, $e1fd
    nop
    rra
    rst $38
    add b
    nop
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ld [$ff00], sp
    db $fc
    nop
    rlca
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    add b
    inc bc
    rst $38
    ld hl, sp+$00
    ccf
    rst $30
    add b
    ld b, $7f
    db $fc
    nop
    rrca
    rst $38
    ret nz

    inc bc
    ld a, a
    db $fc
    nop
    daa
    rst $38
    ret nz

    ld [bc], a
    ld a, a
    db $fc
    nop
    rrca
    rst $38
    ret nz

    ld bc, $fcff
    nop
    ccf
    rst $38
    ldh [rSB], a
    rst $38
    cp $00
    rra
    rst $38
    jr nz, jr_022_584f

    rst $38

jr_022_584f:
    ld hl, sp+$00
    ccf
    rst $38
    add b
    rlca
    rst $38
    ld hl, sp+$00
    ld a, a
    db $fc
    nop
    rrca
    rst $38
    ret nz

    ld bc, $ccff
    nop
    ld a, a
    di
    add b
    rrca
    cp $20
    inc bc
    rst $38
    ldh a, [rSB]
    rst $38
    ldh a, [rP1]
    ld a, a
    db $fc
    ld b, b
    rrca
    rst $38
    db $10
    rlca
    rst $38
    ldh [rSB], a
    rst $38
    ldh a, [rP1]
    ccf
    cp $00
    rra
    rst $38
    ret nz

    rlca
    rst $38
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rrca
    rst $38
    add b
    nop
    rst $38
    ld hl, sp+$18
    ld [hl], c
    pop hl
    db $e3
    db $fc
    ld h, b
    ei
    di
    db $fc
    jr c, @+$7e

    ld a, c
    ei
    jp $ff0f


    adc a
    db $e3
    rlca
    adc a
    sbc a
    add [hl]
    rlca
    sbc a
    cp $10
    ld a, $fc
    inc a
    inc e
    ld a, h
    ld a, b
    rst $38
    inc c
    ld e, $3e
    ld a, [hl]
    jr nc, @+$40

    rst $38
    ldh [rTAC], a
    rst $38
    ld bc, $bf83
    add e
    add a
    pop bc
    add e
    jp $e1e3


    add e
    rst $00
    rst $38
    nop
    inc c
    rst $38
    ld hl, sp+$40
    ld a, c
    db $fc
    ld [hl], b
    ld [hl], b
    ld hl, sp+$38
    ld a, [hl]
    inc e
    ld a, $1c
    ccf
    inc c
    ld e, $1f
    ld a, $18
    ld a, $7f
    ld hl, sp+$06
    ld [hl], b
    jr c, @-$06

    jr nc, jr_022_5961

    ld b, $ff
    nop
    rra
    rlca
    adc a
    add e
    add a
    pop bc
    rst $38
    add b
    rlca
    rst $08
    rst $38
    ld bc, $079f
    ccf
    ld [bc], a
    rrca
    add c
    rst $38
    add b
    rrca
    ldh [rBGP], a
    ldh a, [rSB]
    ld hl, sp+$7d
    ldh a, [rP1]
    ld hl, sp+$39
    ldh [$39], a
    ldh a, [$33]
    ldh [$71], a
    ld hl, sp+$3e
    ld hl, sp+$18
    ld a, [hl]
    rrca
    db $fc
    ld bc, $073f
    ld hl, sp+$07
    ld a, a
    adc h
    ld a, b
    inc e
    ccf
    ld b, $3f
    ld b, $1f
    add e
    rst $38
    nop
    ld e, a
    add e
    cp $07
    sbc [hl]
    ld b, a
    cp h
    rlca
    rst $38
    nop
    ld a, a
    inc bc
    rra
    ret nz

    rst $38
    add b
    rst $38
    add c
    db $fc
    inc bc
    cp h
    rrca
    jr c, @+$11

    db $fc
    rrca
    rst $08
    inc bc
    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    ldh [$7f], a
    add b
    ccf
    pop bc
    cp $03
    cp $07
    db $fc
    rlca
    cp $07
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$7f], a
    add b
    ld a, a
    pop bc
    ld hl, sp+$0f

jr_022_5961:
    ldh a, [$1f]
    ldh [$1f], a
    ldh a, [$1f]
    db $fc
    rlca
    cp $01
    cp $01
    rst $38
    inc bc
    ld hl, sp+$07
    db $fc
    rra
    ret nz

    ld a, a
    nop
    rst $38
    ld bc, $81ff
    cp $01
    rst $38
    ld bc, $03fe
    rst $38
    inc bc
    ld hl, sp+$0f
    ld hl, sp+$1f
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    add b
    ld a, a
    ret nz

    ld a, [hl]
    inc bc
    rst $38
    add a
    ldh [$3f], a
    call z, $803f
    rst $38
    ldh [$7f], a
    add b
    ld a, a
    ldh [$7f], a
    add b
    rst $38
    add b
    ld hl, sp+$0f
    ld hl, sp+$1f
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    ldh [$3e], a
    rlca
    rst $38
    add a
    cp $03
    cp $01
    cp $01
    rst $38
    ld bc, $07f8
    rst $38
    rra
    add b
    cp $03
    db $fc
    rlca
    ei
    ld bc, $07fc
    rst $38
    ld bc, $03fc
    cp $07
    ldh a, [$1f]
    db $fc
    ccf
    ld bc, $07fc
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$7f], a
    add b
    rst $38
    nop
    db $fc
    rlca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [rIF], a
    ldh [$3f], a
    ldh [$1f], a
    nop
    cp $03
    ld hl, sp+$07
    ld [c], a
    inc de
    ldh a, [$1f]
    ld hl, sp+$07
    ldh a, [$1f]
    ld hl, sp+$1f
    ret nz

    ccf
    ret nz

    ld a, [hl]
    inc bc
    ld hl, sp+$1f
    ldh a, [rIF]
    ldh [$3f], a
    add b
    ld a, a
    ccf
    ld e, $03
    ldh a, [$3f]
    ld hl, sp+$07
    ld hl, sp+$00
    db $fc
    inc bc
    rst $38
    inc bc
    ldh a, [rIF]
    ldh a, [$3e]
    ld bc, $0ffc
    ldh [$1f], a
    ret nz

    ld a, a
    add b
    ld a, a
    ldh [$7f], a
    add b
    ld a, a
    ldh [$3f], a
    add b
    ld a, a
    ret nz

    cp $01
    db $fc
    rlca
    ldh a, [$1f]
    ret nz

    rst $38
    add b
    cp $03
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    ld bc, $07fc
    db $fc
    rlca
    ldh [$1f], a
    ldh a, [$fe]
    ld bc, $0ff8
    ldh a, [rIF]
    ld hl, sp+$1f
    ldh [$1f], a
    ldh a, [$1f]
    ret nz

    ccf
    ldh [$7e], a
    ld bc, $0ffc
    ldh a, [$1f]
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    rlca
    ldh [$3f], a
    ldh [rIE], a
    ld bc, $0fff
    ret nz

    ld a, a
    add hl, bc
    db $fc
    rlca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rIE], a
    ldh [$1f], a
    pop bc
    rst $38
    nop
    rst $38
    add e
    ldh a, [rIF]
    ldh [$7f], a
    add b
    ld a, a
    ld bc, $01fe
    rst $38
    add e
    db $fc
    rlca
    ld hl, sp+$27
    ld hl, sp+$07
    ld hl, sp+$1f
    ret nz

    ld a, a
    ld sp, hl
    ld hl, sp+$0f
    ldh [rIE], a
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    rra
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$7e], a
    ld bc, $6fff
    add b
    cp $03
    ld hl, sp+$07
    db $e3
    cp $60
    rra
    ldh [$3f], a
    ldh a, [$03]
    db $fc
    rlca
    db $fc
    inc bc
    cp $0f
    ret nz

    ld a, a
    rrca
    ldh a, [rIF]
    ldh a, [$3f]
    ld bc, $7ffc
    ld hl, sp+$07
    ldh a, [$1f]
    db $fc
    inc bc
    cp $07
    db $fc
    inc bc
    db $fc
    rrca
    ret nz

    ccf
    rst $28
    ld hl, sp+$07
    ldh a, [$3f]
    add b
    ld a, [hl]
    rra
    db $fc
    inc bc
    ld hl, sp+$1f
    ld hl, sp+$03
    db $fc
    ccf
    ld hl, sp+$07
    ld hl, sp+$0f
    ret nz

    ccf
    rst $38
    ld hl, sp+$07
    ldh a, [$3f]
    add b
    db $fc
    rra
    ld hl, sp+$0f
    pop af
    rst $38
    ret nz

    ld a, a
    rlca
    rst $38
    nop
    rst $38
    rlca
    db $fc
    inc bc
    ld hl, sp+$3f
    ldh [$1f], a
    ld [c], a
    cp $03
    ld hl, sp+$1f
    ret nz

    ccf
    add c
    cp $01
    rst $38
    rrca
    sbc h
    ld bc, $1ffc
    ret z

    ld bc, $07fe
    ld hl, sp+$07
    rst $38
    rst $38
    nop
    rst $38
    adc a
    ret nz

    ccf
    add c
    cp $01
    ld a, [$f03f]
    rrca
    ld hl, sp+$7f
    ret nz

    rra
    db $e3
    ei
    add b
    ccf
    pop bc
    cp $01
    rst $38
    rst $38
    ret nz

    ccf
    pop hl
    ld hl, sp+$0f
    ldh [$7f], a
    add b
    ld a, a
    rst $38
    ld hl, sp+$03
    ld hl, sp+$7f
    add b
    ld a, a
    adc a
    db $fc
    nop
    rst $38
    rlca
    ldh a, [rTAC]
    ld hl, sp-$01
    add b
    ld a, a
    jp $07f8


    ld hl, sp-$01
    nop
    ld a, l
    sbc a
    ldh [rIF], a
    pop af
    rst $38
    nop
    cp $07
    db $fc
    ld bc, $7fff
    ldh a, [rTAC]
    ld hl, sp+$1f
    ret nz

    rra
    rst $28
    ld hl, sp+$01
    cp $ff
    add b
    ld a, a
    adc a
    ldh a, [rTAC]
    pop af
    cp $00
    cp $3f
    ldh [rIF], a
    db $e3
    rst $38
    add b
    ccf
    rst $00
    cp $00
    cp $ff
    ldh [rIF], a
    rst $30
    cp $00
    cp $3f
    ret nz

    rrca
    rst $00
    db $fc
    nop
    cp $7f
    ldh a, [rTAC]
    ldh a, [$7f]
    ret nz

    rrca
    rst $28
    cp $00
    ld a, a
    ccf
    ldh a, [rTAC]
    ld sp, hl
    rst $38
    add b
    rra
    rst $08
    rst $38
    nop
    ccf
    pop bc
    cp $00
    ld a, a
    sbc a
    db $fc
    nop
    cp $4f
    ldh a, [rTAC]
    ld sp, hl
    ccf
    ret z

    rrca
    push hl
    rst $38
    nop
    rra
    ret nz

    rst $38
    nop
    ccf
    ld hl, sp+$3f
    ldh [rTAC], a
    db $fc
    rrca
    ld hl, sp+$03
    ld hl, sp+$3f
    ldh a, [$03]
    cp $3f
    ret nz

    rra
    ldh [$fe], a
    nop
    ld a, a
    scf
    ld hl, sp+$09
    db $fc
    rst $18
    ld a, [c]
    inc bc
    ld sp, hl
    rst $38
    ldh [rTAC], a
    di
    ld a, a
    ld h, b
    rlca
    db $fc
    inc bc
    ld hl, sp+$01
    db $fc
    rra
    ld a, [c]
    inc bc
    ld sp, hl
    rst $38
    ret z

    rrca
    call nz, $00ff
    ld a, a
    rla
    db $fc
    nop
    db $ec
    ld a, a
    ld hl, sp+$01
    rst $38
    rst $18
    db $fc
    nop
    cp $c2
    rst $38
    nop
    ccf
    add c
    cp $00
    ld a, a
    ccf
    ld hl, sp+$01
    call c, $c0ff
    rlca
    ld h, a
    rst $38
    add b
    rrca
    rst $00
    rst $38
    add b
    rra
    rst $08
    rst $38
    ret nz

    rrca
    db $fc
    rrca
    ldh a, [rTAC]
    ldh a, [$3f]
    ldh [rTMA], a
    rst $00
    rst $38
    adc b
    dec c
    rst $08
    rst $38
    ld bc, $993b
    rst $38
    jr nz, jr_022_5c5e

    sbc c
    rst $38
    add b
    dec de
    ld sp, hl
    rst $38
    ldh [$03], a
    cp $03
    db $fd
    nop
    db $fc
    rrca
    db $fd
    add b
    sbc b
    sbc a
    ld sp, hl
    ld bc, $ff99
    ldh a, [rSB]
    cp l
    rst $38
    ld hl, sp+$00
    rst $38
    adc a
    cp $00
    ccf
    ld [hl], a
    rst $38
    ldh [rTAC], a
    db $fc
    rlca
    ld a, [c]
    inc bc
    ld [hl], b
    ld a, a
    ld a, [c]
    inc bc
    inc sp
    rst $38
    ld a, [c]
    inc bc
    scf
    rst $38

jr_022_5c5e:
    ld a, [c]
    inc bc
    ld a, e
    ccf
    ld sp, hl
    nop
    rst $38
    add e
    rst $38
    nop
    ccf
    ldh a, [$3f]
    ldh [rTAC], a
    db $f4
    ld l, a
    ld sp, hl
    ld bc, $9fb9
    db $fd
    add b
    ld c, l
    sbc a
    db $fc
    add b
    ld c, [hl]
    rst $38
    cp $40
    daa
    ld h, a
    rst $38
    sub b
    add hl, bc
    ei
    rst $38
    ld hl, sp+$00
    ld a, a
    sbc e
    rst $38
    nop
    daa
    di
    ccf
    ret c

    dec c
    ret z

    rst $18
    db $fc
    ld [bc], a
    db $76
    ld a, a
    rst $38
    nop
    rra
    ccf
    rst $38
    add b
    rlca
    rst $38
    rst $38
    ret nz

    dec c
    db $fc
    rra
    ld hl, sp+$00
    sbc l
    sbc a
    rst $38
    add b
    inc bc
    ld sp, hl
    rst $38
    ld hl, sp+$00
    db $ec
    rst $38
    ld a, [c]
    nop
    dec sp
    ld a, a
    rst $38
    add b
    rrca
    rst $38
    rst $38
    add b
    add hl, bc
    reti


    rst $38
    ldh a, [rP1]
    scf
    ld a, a
    cp $00
    rlca
    or $7f
    ldh [$03], a
    cp $7f
    db $fd
    add b
    ld c, a
    call $a0ff
    inc de
    rst $38
    rst $38
    ldh a, [rSC]
    ld a, a
    rst $38
    db $fc
    nop
    ld l, a
    db $e4
    rst $38
    ret z

    ld b, $ec
    rst $38
    db $fc
    add b
    rrca
    cp $ff
    ret nz

    ld bc, $dffc
    ld hl, sp+$00
    sbc a
    cp a
    rst $38
    ld h, b
    inc de
    di
    ld a, a
    db $fc
    ld [bc], a
    db $76
    ld a, a
    cp $80
    ld c, a
    push hl
    rst $38
    ret z

    inc b
    cp $cf
    db $fc
    add b
    ld c, [hl]
    rst $08
    rst $38
    ret nz

    nop
    cp $ef
    db $fc
    nop
    ld e, a
    adc l
    rst $38
    ret c

    add hl, bc
    reti


    rst $38
    ld sp, hl
    nop
    sbc a
    sbc e
    rst $38
    sub b
    add hl, bc
    reti


    cp a
    ei
    nop
    sbc l
    sbc e
    rst $38
    sub b
    add hl, bc
    ld sp, hl
    cp a
    ld sp, hl
    nop
    sbc a
    sbc c
    rst $38
    ret z

    ld bc, $fff9
    db $fc
    add b
    ld c, a
    call $c8ff
    inc b
    call z, $fddf
    add b
    call z, $ffc9
    ret z

    inc b
    db $fc
    rst $18
    db $fc
    add b
    ld c, a
    call z, $ecff
    ld [bc], a
    ld h, [hl]
    ld l, a
    cp $60
    daa
    ld h, [hl]
    rst $38
    ld a, [c]
    ld bc, $373f
    rst $38
    or b
    add hl, bc
    sbc c
    cp a
    ld sp, hl
    add b
    sbc l
    sbc c
    rst $38
    ret c

    nop
    db $fd
    rst $18
    cp $40
    daa
    rst $38
    rst $38
    or $01
    dec sp
    scf
    rst $38
    or b
    add hl, bc
    sbc c
    cp a
    db $fd
    add b
    rrca
    db $dd
    rst $38
    db $ec
    ld [bc], a
    ld h, [hl]
    ld l, a
    rst $38
    ld h, b
    inc bc
    rst $20
    ld a, a
    ei
    nop
    rrca
    rst $38
    rst $38
    db $ec
    ld [bc], a
    ld a, [hl]
    ld l, a
    rst $38
    ldh a, [rSB]
    di
    rst $38
    db $fd
    add b
    rrca
    rst $38
    rst $38
    db $ec
    ld [bc], a
    ld a, [hl]
    rst $38
    rst $38
    ldh a, [$03]
    or a
    rst $38
    rst $38
    add b
    rrca
    rst $38
    rst $38
    cp $00
    ccf
    rst $38
    or a
    ld hl, sp+$04
    ld sp, hl
    rst $38
    rst $18
    ldh [rTAC], a
    and $ff
    rst $38
    nop
    rra
    cp e
    rst $38
    db $ec
    nop
    ld a, a
    cp $ff
    ld hl, sp+$04
    ei
    db $fd
    sbc a
    ldh [rTAC], a
    add $ff
    ld a, a
    add b
    rra
    cp e
    rst $38
    db $fc
    nop
    ccf
    rst $28
    rst $38
    ldh a, [rP1]
    ei
    cp c
    rst $38
    ldh [rNR13], a
    rst $08
    cp $7f
    add b
    ld c, a
    rst $38
    db $fd
    cp $01
    ld a, $3f
    rst $30
    ld hl, sp+$00
    ld sp, hl
    rst $38
    rst $18
    ldh a, [$03]
    rst $30
    rst $38
    ccf
    ret nz

    rlca
    rst $18
    cp $ff
    nop
    sbc a
    ccf
    ld sp, hl
    cp $01
    ld a, $ff
    rst $20
    db $fc
    ld b, $f8
    rst $38
    rst $08
    ldh a, [rSB]
    di
    rst $38
    cp a
    ldh [rTAC], a
    rst $08
    cp $7f
    add b
    ld c, l
    sbc e
    ld sp, hl
    rst $38
    nop
    ld a, $3f
    di
    cp $00
    ld a, h
    ld a, a
    rst $20
    db $fc
    ld [bc], a
    ld a, b
    rst $38
    rst $20
    ld hl, sp+$00
    ldh [rIE], a
    rst $08
    ld hl, sp+$01
    pop af
    rst $38
    sbc a
    ldh a, [$03]
    rst $00
    rst $38
    ld a, a
    ret nz

    ld c, $8d
    db $fc
    rst $38
    add b
    ld e, [hl]
    ccf
    ld sp, hl
    rst $38
    nop
    cp b
    ccf
    di
    cp $03
    ld [hl], b
    ld a, a
    rst $20
    db $fc
    inc bc
    ldh a, [rIE]
    rst $00
    db $fc
    inc bc
    ldh a, [rIE]
    rst $00
    db $fc
    inc bc
    ldh [rIE], a
    rst $00
    db $fc
    inc bc
    ldh [rIE], a
    rst $08
    ld hl, sp+$07
    pop bc
    rst $38
    adc a
    ld hl, sp+$0e
    pop bc
    rst $38
    adc a
    ldh a, [$0e]
    add c
    rst $38
    rrca
    ldh a, [rIF]
    ld bc, $0ffe
    ld hl, sp+$07
    add b
    rst $38
    adc a
    ld hl, sp+$03
    nop
    rst $38
    rlca
    db $fc
    inc bc
    add b
    ld a, a
    inc bc
    cp $01
    ret nz

    ccf
    and e
    rst $38
    nop
    ret nz

    ccf
    add c
    rst $38
    nop
    ldh [$3f], a
    add c
    cp $80
    ld h, b
    rra
    ret nz

    rst $38
    nop
    jr nc, jr_022_5e92

    ldh [$7f], a
    add b
    jr jr_022_5e8f

    ldh a, [$3f]
    ret z

    inc b
    ld bc, $9ffc

jr_022_5e8f:
    db $e4
    nop
    nop

jr_022_5e92:
    cp $4f
    ld sp, hl
    nop
    nop
    ld a, a
    sub e
    db $fc
    add b
    nop
    rra
    ret c

    rst $38
    ld b, b
    db $10
    rlca
    db $e4
    ld a, a
    sub b
    ld [$f903], sp
    rra
    db $e4
    nop
    nop
    cp $47
    db $fd
    nop
    nop
    ccf
    sbc c
    rst $38
    jr nz, jr_022_5eb6

jr_022_5eb6:
    rlca
    or $3f
    ret z

    nop
    ld bc, $8ffc
    ld sp, hl
    nop
    nop
    ld a, a
    add e
    cp $40
    nop
    rrca
    rst $20
    ld a, a
    ret c

    nop
    inc bc
    db $fd
    rst $18
    ld a, [c]
    nop
    nop
    ld a, a
    add hl, sp
    cp $40
    nop
    rrca
    xor $7f
    ret c

    nop
    ld bc, $cffd
    ld sp, hl
    nop
    nop
    ccf
    cp c
    rst $38
    jr nz, jr_022_5ee6

jr_022_5ee6:
    rlca
    ei
    cp a
    or $00
    nop
    ld a, a
    di
    cp $40
    nop
    rrca
    rst $38
    ld a, a
    db $e4
    nop
    nop
    cp $77
    cp $c0
    nop
    rrca
    rst $38
    ld a, a
    db $e4
    nop
    nop
    cp $e7
    cp $40
    nop
    rrca
    rst $28
    ld a, a
    or $00
    nop
    ld a, a
    rst $30
    rst $38
    jr nz, jr_022_5f12

jr_022_5f12:
    rlca
    rst $30
    rst $38
    ei
    nop
    nop
    ccf
    ei
    rst $38
    ret c

    nop
    ld bc, $ffff
    cp $c0
    nop
    dec c
    rst $38
    rst $38
    or $00
    nop
    ld l, a
    rst $38
    rst $38
    ret c

    nop
    ld bc, $bfbf
    cp $c0
    nop
    inc c
    cp $bf
    ei
    nop
    nop
    ccf
    ei
    rst $38
    db $e4
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret c

    nop
    ld bc, $ffdf
    rst $38
    or b
    nop
    inc bc
    ccf
    rst $38
    rst $38
    ld h, b
    nop
    ld b, $7f
    rst $38
    cp $40
    nop
    inc b
    rst $38
    rst $38
    cp $c0
    nop
    dec c
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    add hl, bc
    rst $38
    rst $38
    db $fc
    add b
    nop
    add hl, bc
    rst $38
    rst $38
    cp $c0
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    ld h, b
    nop
    inc b
    rst $38
    rst $38
    rst $38
    or b
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    ret c

    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    rst $38
    db $fd
    nop
    nop
    ld bc, $ffff
    rst $38
    jr nz, jr_022_5f94

jr_022_5f94:
    nop
    ld a, a
    db $fd
    rst $38
    db $ec
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fd
    add b
    jr nz, jr_022_5fa3

    rst $38

jr_022_5fa3:
    rst $30
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    ei
    rst $38
    rst $38
    nop
    nop
    ld bc, $efff
    rst $38
    ld hl, sp+$01
    db $10
    rrca
    rst $38
    ld a, a
    rst $38
    ld hl, sp+$02
    ld h, b
    rrca
    db $fc
    ld a, a
    rst $38
    ldh a, [rTMA]
    ld b, b
    rra
    db $fc
    rst $38
    cp a
    db $fc
    ld bc, $0730
    ld hl, sp+$3f
    rst $38
    cp $00
    adc b
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    ret nz

    ld [de], a
    nop
    ld a, a
    rst $20
    rst $38
    rst $38
    ldh a, [rTMA]
    ld b, b
    rra
    db $fc
    rst $38
    inc bc
    rst $38
    add b
    ld [hl], $00
    db $fc
    rlca
    ld sp, hl
    cp a
    ld hl, sp+$07
    ld h, b
    rrca
    ret nz

    ld a, a
    sub c
    rst $38
    ldh [$7f], a
    add b
    rra
    ld bc, $67ff
    rst $38
    add c
    ldh a, [rP1]
    db $fc
    rlca
    db $fc
    rra
    rst $38
    ld bc, $00b0
    db $fc
    rrca
    db $fc
    rra
    cp $44
    ret c

    nop
    daa
    ld a, a
    cp $4f
    rst $38
    jr nz, jr_022_6096

    nop
    rra
    cp a
    rst $38
    nop
    ld a, a
    or $66
    ret nz

    ld bc, $ff7f
    ldh a, [rTAC]
    rst $38
    ld a, [c]
    inc h
    nop
    rrca
    db $fd
    rst $38
    ldh [rIF], a
    cp $cc
    ret c

    nop
    inc bc
    scf
    cp $40
    rrca
    rst $38
    call z, $00d8
    rlca
    rst $30
    cp $40
    rrca
    rst $38
    ei
    ld [hl-], a
    nop
    ld b, $cc
    rst $38
    sub b
    ld bc, $ff7f
    ld h, [hl]
    ret nz

    nop
    add hl, de
    sbc a
    or $00
    ld c, a
    rst $38
    ld sp, hl
    inc de
    nop
    ld [bc], a
    db $ec
    rst $38
    ld sp, hl
    nop
    scf
    rst $38
    and $4c
    nop
    dec c
    sbc c
    cp a
    ld a, [c]
    jr nz, jr_022_6081

    rst $38
    ld sp, hl
    sub e
    nop
    ld [bc], a
    ld h, [hl]
    rst $38

jr_022_6081:
    ld sp, hl
    sub b
    nop
    ld a, a
    rst $38
    inc sp
    jr nz, jr_022_6089

jr_022_6089:
    ld b, h
    rst $18
    rst $38
    sub c
    nop
    inc bc
    rst $38
    cp $64
    nop
    nop
    sbc c
    cp a

jr_022_6096:
    rst $38
    ld h, [hl]
    nop
    ld bc, $ffff
    inc sp
    jr nz, jr_022_609f

jr_022_609f:
    ld c, [hl]
    rst $38
    rst $38
    cp c
    nop
    nop
    ccf
    rst $38
    ei
    ld [de], a
    jr nz, jr_022_60ab

jr_022_60ab:
    ld l, a
    rst $38
    ld sp, hl
    add b
    nop
    ld [bc], a
    rst $38
    rst $38
    db $fd
    add b
    nop
    ld [bc], a
    ld a, a
    rst $38
    db $fc
    add b
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $e4
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    or $20
    ld b, h
    nop
    add hl, bc
    cp a
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ei
    ccf
    rst $38
    db $fd
    add c
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
    ret nz

    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc b
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $e4
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    add hl, bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $c0
    nop
    rst $38
    rst $38
    or $00
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rNR41], a
    ld a, a
    rst $38
    db $fc
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ccf
    or $13
    jr nc, jr_022_617a

    rst $38
    sub c
    rst $38
    ld hl, sp+$00
    nop
    nop

jr_022_617a:
    nop
    inc b
    add hl, de
    ei
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    and d
    ret c

    nop
    ld a, $00
    rrca
    rst $38
    cp a
    rst $38
    sbc a
    dec de
    nop
    ld [hl], e
    db $fc
    nop
    nop
    nop
    inc bc
    db $fc
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$5f00], sp
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    db $fd
    add b
    inc c
    ld h, b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    db $f4
    nop
    nop
    ld a, a
    rst $38
    rst $38
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
    db $fd
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
    inc bc
    call nz, RST_00
    nop
    nop
    nop
    dec c
    add b
    nop
    ld [$7f02], sp
    ld a, [c]
    ld l, c
    rst $38
    db $fd
    rst $38
    pop af
    ld [de], a
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
    di
    rst $38
    db $fd
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    sbc b

Jump_022_61fe:
    nop
    nop
    nop
    ld a, [bc]
    nop
    inc sp
    add b
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38
    ldh a, [$80]

jr_022_620c:
    nop
    nop
    nop
    ld b, b
    nop
    rst $08
    sub b
    rst $38
    ldh [rSB], a
    ld a, a
    cp $62
    rst $08
    rst $38
    cp $f8
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$3f66], sp
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    call z, Call_000_0092
    nop
    nop
    nop
    nop
    nop
    pop hl

Call_022_623b:
    ret nz

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
    inc bc
    ld a, l
    rst $28
    db $fd
    add a
    rst $18
    add $40
    dec h
    ld [hl], a
    and a
    dec c
    ld a, a
    ld a, a
    ld [bc], a
    ld l, a
    ld bc, $006e
    rst $28
    pop hl
    db $e3
    sbc a
    rst $38
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    nop
    nop
    db $10
    inc b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld sp, $71ce
    adc h
    ld h, e
    sbc h
    di
    ld [$38cf], sp
    ret nz

    inc bc
    db $fc
    ld [hl], e
    adc h
    inc bc
    jr nc, jr_022_62c7

    db $fc
    rst $20
    jr c, jr_022_620c

    nop
    ld l, c
    add [hl]
    ld a, e
    adc $23
    jp nz, $ef31

    dec a
    ld hl, sp-$30
    jr jr_022_62f9

    sbc [hl]
    ld a, c
    rst $20

Call_022_6299:
    inc h
    sub e
    inc l
    ld [c], a
    ld c, b
    rst $08
    add hl, sp
    call $b833
    db $e3
    ld [hl], $e3
    inc [hl]
    and $cd
    xor h
    db $d3
    ld c, a
    ld [hl-], a
    ld sp, $268c
    ld [hl], c
    add c
    sbc b
    jp $8c28


    add $6b
    xor h
    rst $00
    sbc [hl]
    ld h, h
    db $d3
    ld c, h
    db $76
    ld c, c
    rst $20
    sbc h
    add $39
    adc $71
    adc a

jr_022_62c7:
    or e
    call c, Call_022_71d6
    adc c
    adc h
    sbc b
    rst $08
    ld [hl-], a
    call z, $1867
    sub e
    ld h, l
    jr @+$69

    inc e
    ld h, [hl]
    ld sp, $3384
    sbc b

jr_022_62dd:
    and $98
    add $98
    rst $00
    jr nc, @-$2b

    ld d, $69
    or [hl]

jr_022_62e7:
    jp $9639


    ld [hl], c
    inc sp
    bit 6, c
    add $30
    and $1b
    ld a, b
    call z, $9a65
    ld b, e
    dec [hl]
    or e

jr_022_62f9:
    inc sp
    inc hl
    inc h
    sbc c
    ld sp, hl
    inc l

jr_022_62ff:
    di
    adc [hl]
    jr nc, jr_022_62dd

    ld l, c
    cp h
    sbc c
    rst $00
    add hl, sp
    adc [hl]
    ld a, b
    jp $a66c


    ld a, c
    jp $2d4b


jr_022_6311:
    inc sp
    inc c
    ld h, l
    sbc c
    pop hl
    sub [hl]
    jr nc, jr_022_62e7

    ld [hl-], a
    ld e, c
    and $6d
    sbc c
    sbc h
    sbc c
    ld c, h
    ld h, e
    ld [hl-], a
    ld h, [hl]
    ld e, c
    rst $20
    sbc c
    and h
    sbc e

jr_022_6329:
    inc sp
    rst $08
    inc a
    call nz, $2673
    ld sp, $638c
    add hl, sp
    call $cb38
    jr nc, jr_022_62ff

    adc [hl]
    ld h, e
    ld a, [hl-]
    reti


    and a
    jr nc, jr_022_6311

    ld l, l
    ld h, a
    jr c, jr_022_6329

    inc sp
    sbc h
    ld sp, $e996
    sbc e
    ld h, l
    sbc a
    add hl, sp
    and l
    ld l, c
    adc [hl]
    ld [hl], e
    ld c, l
    adc a
    ld sp, $6996
    add [hl]

jr_022_6356:
    ld h, a
    jr jr_022_63ca

    rst $20
    inc hl
    ld a, [bc]
    ld [hl], c
    bit 4, a
    inc c
    inc sp
    add hl, sp
    rst $20
    sbc d
    ld b, b

jr_022_6365:
    rst $20
    ld a, c
    sbc h
    pop af
    sbc h
    ret


    sbc h
    db $e3
    jr jr_022_6356

    ld l, $73
    jr nc, jr_022_6356

    add hl, de
    add a
    jr c, jr_022_6365

    sub c
    and $30
    adc h
    jr nc, @-$4d

    call $969d
    ld c, c
    ld l, h
    db $e4

jr_022_6383:
    adc [hl]
    ld h, h
    or [hl]
    ld c, l
    ld c, c
    ld l, h
    sub [hl]
    sbc h
    and $78
    rst $00
    ld sp, $31c7
    and a
    sbc $3c
    ret nc

    add hl, sp
    add [hl]
    ld [hl], e
    adc [hl]
    ld h, e
    ld c, $67
    inc c
    ld h, b
    pop af
    pop hl
    rst $00
    bit 1, [hl]
    inc c
    reti


    ld [hl], h
    srl [hl]
    ld l, $38
    pop af
    db $db
    ld [hl], c
    rst $20
    rst $08
    inc c
    adc $78
    jp nz, $c771

    dec sp
    add a
    scf
    jr nz, jr_022_63d5

    dec sp
    ld a, [hl-]
    ld h, c
    add e
    dec de
    ld l, l
    jr jr_022_6383

    ld h, c
    inc bc
    inc sp
    ld [hl], e
    ld a, c
    ld a, b
    adc $67

jr_022_63ca:
    adc $63
    jr @-$1b

    adc h
    ld h, a
    inc e
    jp $cd3e


    inc e

jr_022_63d5:
    pop hl
    cp b
    db $f4
    ld a, [hl]
    ld a, [hl-]
    ld [hl], d
    pop af
    call nz, $1fc1
    di
    add [hl]
    rra
    call nz, Call_022_4ff0
    add a
    add c
    ld hl, sp+$3c
    inc bc
    call z, $fff0
    rlca
    inc bc
    di
    rst $30
    ld h, b
    nop
    ret nz

    jr @+$10

    sbc h
    inc bc
    cp h
    di
    or e
    rst $30
    db $fc
    ld b, $07
    ret nz

    nop
    rlca
    pop bc
    ld hl, sp-$01
    inc de
    rst $20
    ld hl, sp+$7e
    nop
    ldh [rP1], a
    rlca
    ld sp, hl
    inc sp
    ccf
    ld [hl], b
    ld a, $ff
    rst $08
    ldh [rP1], a
    inc bc
    nop
    scf
    db $fc
    inc e
    adc c
    rst $38
    ld bc, $ff93
    add b
    nop
    nop
    rrca
    rst $38
    cp $00
    add hl, bc
    rst $38
    ldh [rIE], a
    ret nz

    nop
    inc c
    nop
    rra
    rst $38
    ret nz

    ccf
    db $fc
    ld a, a
    call nz, $0fe0
    ret nz

    db $10
    ccf
    pop af
    ld hl, sp+$3f
    ldh [$f8], a
    rrca
    ldh [rP1], a
    nop
    ccf
    add d
    add e
    rst $38
    cp $18
    ld a, a
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    add b
    inc bc
    rst $38
    ld hl, sp+$3f
    jr nz, jr_022_6458

jr_022_6458:
    ld bc, $0020
    rrca
    rst $38
    rst $38
    rst $38
    cp $01
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $93ff
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    ld hl, sp+$00
    nop
    nop
    ccf
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
    ld hl, sp+$00
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rlca
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
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld hl, sp+$7f
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
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $07fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rrca
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    ret


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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $03f8
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc c
    nop
    nop
    ccf
    rst $38
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
    ld hl, sp+$00
    ld bc, $00fc
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $00fc
    rrca
    ldh [rIF], a
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    db $fc
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    ccf
    ld hl, sp+$00
    ret nz

    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    cp $01
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    ccf
    ldh [$7f], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop

Call_022_6688:
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rra
    ret nz

    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    ld hl, sp+$03
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    ld bc, $00ff
    ccf
    ld hl, sp+$7f
    rst $38
    rst $38
    ldh [rP1], a
    rra
    ldh a, [$03]
    rst $38
    pop hl
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    cp $00
    ld a, a
    ld hl, sp+$07
    rst $38
    rst $38
    add b
    nop
    ld a, a
    ret nz

    ccf
    rst $38
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    ld hl, sp+$07
    rst $38
    ldh [$1f], a
    rst $38
    cp $00
    ld bc, $80ff
    ld a, a
    cp $0f
    rst $38
    rst $38
    add b
    nop
    ccf
    ldh [$3f], a
    cp $0f
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    db $fc
    rlca
    rst $38
    pop af
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    cp $01
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld a, a
    add b
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ccf
    ret nz

    rrca
    rst $38
    rst $30
    rst $38
    rst $38
    ldh [rP1], a
    rra
    ldh a, [rTAC]
    rst $38
    db $e3
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    ldh a, [$03]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    ld hl, sp+$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    ld hl, sp+$01
    rst $38
    ld hl, sp-$01
    rst $38
    ld hl, sp+$00
    rrca
    db $fc
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    ld hl, sp+$00
    rrca
    ld hl, sp+$01
    rst $38
    pop bc
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    ld hl, sp+$01
    rst $38
    db $fc
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    ldh a, [$03]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ldh a, [$03]
    rst $38
    add c
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    ldh [rTAC], a
    rst $38
    nop
    ld a, a
    rst $38
    add b
    ld bc, $80ff
    rra
    db $fc
    inc bc
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    nop
    ccf
    ld hl, sp+$03
    rst $38
    db $fc
    nop
    rlca
    cp $00
    rst $38
    ldh a, [rIF]
    rst $38
    ld hl, sp+$00
    rra
    db $fc
    ld bc, $c0ff
    rrca
    rst $38
    ldh [rP1], a
    ld a, a
    ldh [rTAC], a
    rst $38
    nop
    rra
    rst $38
    add b
    ld bc, $c0ff
    rra
    rst $38
    nop
    ccf
    cp $00
    rlca
    rst $38
    nop
    ld a, a
    ld hl, sp+$01
    rst $38
    ldh a, [rP1]
    ccf
    ld hl, sp+$01
    rst $38
    ldh [rTAC], a
    rst $38
    ret nz

    nop
    rst $38
    ldh [rIF], a
    rst $38
    nop
    ccf
    cp $00
    rlca
    rst $38
    nop
    ccf
    db $fc
    nop
    rst $38
    ldh a, [rP1]
    ccf
    ld hl, sp+$01
    rst $38
    ldh [rIF], a
    rst $38
    add b
    ld bc, $c0ff
    rrca
    rst $38
    nop
    ld a, a
    db $fc
    nop
    rrca
    cp $00
    rst $38
    ld hl, sp+$01
    rst $38
    ldh [rP1], a
    rst $38
    ldh a, [rTAC]
    rst $38
    ldh [$1f], a
    cp $00
    rlca
    rst $38
    nop
    ccf
    cp $01
    rst $38
    ldh [rP1], a
    ld a, a
    ldh a, [rTAC]
    rst $38
    ldh [$3f], a
    cp $00
    rrca
    rst $38
    nop
    ld a, a
    rst $38
    rst $18
    rst $38
    add b
    nop
    rst $38
    ldh [rIF], a
    rst $38
    ldh a, [rIE]
    ld hl, sp+$00
    ccf
    db $fc
    ld bc, $f8ff
    rra
    cp $00
    rlca
    rst $38
    nop
    ccf
    rst $38
    rst $38
    rst $38
    add b
    nop
    rst $38
    ldh [rTAC], a
    rst $38
    pop bc
    rst $38
    ldh a, [rP1]
    ccf
    ld hl, sp+$01
    rst $38
    ld hl, sp+$3f
    db $fc
    nop
    rlca
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $c0ff
    rra
    rst $38
    adc a
    rst $38
    ret nz

    nop
    rst $38
    ldh [rIF], a
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    ld a, a
    ld hl, sp+$03
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    cp $03
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    cp $01
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    cp $01
    rst $38
    db $fc
    ccf
    db $fc
    nop
    rrca
    cp $01
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ld hl, sp+$03
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ldh a, [$03]
    rst $38
    rst $30
    rst $38
    ret nz

    nop
    ld a, a
    ldh a, [rTAC]
    rst $38
    rst $28
    rst $38
    add b
    ld bc, $c0ff
    rrca
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    add b
    ccf
    rst $38
    rra
    ld hl, sp+$00
    rrca
    cp $00
    rst $38
    db $fc
    ld a, a
    ldh [rP1], a
    ld a, a
    ld hl, sp+$03
    rst $38
    di
    rst $38
    nop
    ld bc, $e0ff
    rra
    rst $38
    rst $08
    ld hl, sp+$00
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    ld hl, sp+$07
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    ret nz

    nop
    ccf
    db $fc
    inc bc
    rst $38
    rst $38
    cp $00
    ld bc, $e0ff
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    nop
    rst $38
    rst $38
    cp $00
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    add b
    nop
    ccf
    cp $01
    rst $38
    rst $38
    cp $00
    ld bc, $f0ff
    rra
    rst $38
    rst $38
    ldh [rP1], a
    rra
    cp $00
    rst $38
    rst $38
    rst $38
    add b
    nop
    rst $38
    ldh a, [rTAC]
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    add b
    ccf
    rst $38
    rst $38
    ret nz

    nop
    ccf
    db $fc
    ld bc, $ffff
    db $fc
    nop
    ld bc, $e0ff
    rra
    rst $38
    rst $38
    ldh [rP1], a
    rra
    cp $00
    rst $38
    rst $38
    cp $00
    ld bc, $e0ff
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    nop
    ld a, a
    rst $38
    cp $00
    ld bc, $f0ff
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    cp $00
    rst $38
    rst $38
    cp $00
    ld bc, $e0ff
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    rra
    cp $00
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    ldh [rIF], a
    rst $38
    rst $38
    ret nz

    nop
    ccf
    db $fc
    ld bc, $ffff
    db $fc
    nop
    rlca
    rst $38
    add b
    ccf
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh a, [rTAC]
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    nop
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    ret nz

    rrca
    rst $38
    rst $38
    add b
    nop
    ld a, a
    ld hl, sp+$03
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    ret nz

    rra
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    ldh a, [rTAC]
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    db $fc
    inc bc
    rst $38
    ldh a, [$f8]
    nop
    rrca
    rst $38
    nop
    rst $38
    db $fc
    ld a, [hl]
    nop
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    inc bc
    add b
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ret nz

    ldh [rP1], a
    ccf
    db $fc
    inc bc
    rst $38
    ldh a, [rSVBK]
    nop
    rrca
    rst $38
    nop
    rst $38
    cp $00
    nop
    rlca
    rst $38
    add b
    ld a, a
    cp $00
    nop
    ld bc, $e0ff
    rra
    rst $38
    add b
    nop
    nop
    rst $38
    ldh a, [rTAC]
    rst $38
    ret nz

    ret nz

    nop
    ccf
    db $fc
    inc bc
    rst $38
    ldh a, [rP1]
    nop
    rra
    cp $01
    rst $38
    ldh a, [rNR10]
    nop
    rrca
    rst $38
    nop
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    sbc a
    nop
    ld bc, $e0ff
    rra
    rst $38
    rst $08
    add b
    nop
    ld a, a
    ld hl, sp+$07
    rst $38
    rst $30
    ret nz

    nop
    ccf
    db $fc
    inc bc
    rst $38
    ld sp, hl
    nop
    nop
    rra
    cp $00
    rst $38
    db $fc
    ret nz

    nop
    rlca
    rst $38
    add b
    ld a, a
    cp $00
    nop
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    ldh [$3f], a
    rst $38
    call c, RST_00
    rst $38
    ldh a, [$1f]
    rst $38
    add b
    nop
    nop
    ld a, a
    ld hl, sp+$07
    rst $38
    ret nz

    nop
    nop
    ccf
    cp $03
    rst $38
    ret nz

    ld hl, sp+$00
    rrca
    rst $38
    add c
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    ret nz

    ld a, a
    db $fc
    rra
    nop
    ld bc, $e0ff
    rra
    rst $38
    rra
    ret nz

    nop
    ld a, a
    ld hl, sp+$03
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    cp $01
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    ret nz

    rra
    rst $38
    cp $00
    ld bc, $e0ff
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    db $fc
    ld bc, $ffff
    ldh a, [rP1]
    rra
    rst $38
    nop
    ld a, a
    rst $38
    cp $00
    inc bc
    rst $38
    ret nz

    rra
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh a, [rTAC]
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    db $fc
    ld bc, $ffff
    db $fc
    nop
    rrca
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    nop
    ld bc, $e0ff
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    db $fc
    ld bc, $ffff
    cp $00
    rlca
    rst $38
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    ldh [rTAC], a
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    ret nz

    rra
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    ld hl, sp+$03
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    add b
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ld hl, sp+$03
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    db $fc
    inc bc
    rst $38
    rst $38
    cp $00
    rlca
    rst $38
    add b
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ld hl, sp+$03
    rst $38
    rst $38
    cp $00
    rlca
    rst $38
    add b
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ld hl, sp+$03
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    ret nz

    rra
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    cp $00
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld a, a
    ldh a, [rTAC]
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    rra
    db $fc
    ld bc, $ffff
    rst $38
    add b
    nop
    rst $38
    ldh [rIF], a
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    di
    ld hl, sp+$00
    rrca
    cp $00
    rst $38
    rst $38
    rlca
    ld hl, sp+$00
    rrca
    cp $00
    rst $38
    db $fc
    rrca
    ldh a, [rP1]
    ccf
    db $fc
    inc bc
    rst $38
    ldh a, [$3f]
    ldh [rP1], a
    ld a, a
    ldh a, [rIF]
    rst $38
    ret nz

    ld a, a
    ret nz

    nop
    rst $38
    ldh [$1f], a
    rst $38
    add a
    cp $00
    inc bc
    rst $38
    add b
    ld a, a
    cp $1f
    ld hl, sp+$00
    rra
    cp $01
    rst $38
    ld hl, sp+$3f
    ldh [rP1], a
    ccf
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    add b
    nop
    rst $38
    ldh a, [$1f]
    rst $38
    rst $20
    rst $38
    nop
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    cp $01
    rst $38
    ld hl, sp+$7f
    ldh a, [rP1]
    ccf
    ld hl, sp+$07
    rst $38
    ld hl, sp-$01
    ldh [rP1], a
    ld a, a
    ld hl, sp+$0f
    rst $38
    db $fd
    rst $38
    ret nz

    nop
    ld a, a
    ldh a, [rIF]
    rst $38
    pop hl
    rst $38
    ret nz

    nop
    rst $38
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    add b
    nop
    rst $38
    ld hl, sp+$3f
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $e0ff
    rra
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $e0ff
    ccf
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $e0ff
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    rst $38
    ldh a, [$1f]
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    cp $01
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    nop
    ccf
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $c0ff
    rrca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    ld hl, sp+$03
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    cp $01
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    db $fc
    ccf
    rst $38
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00

Call_022_6c93:
    inc bc
    rst $38
    jp $ffff


    rst $38
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    ldh a, [$7f]
    rst $38
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    db $fc
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    ldh a, [$1f]
    rst $38
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ret nz

    rra
    ld hl, sp+$07
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ret nz

    ccf
    ret nz

    rra
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    add b
    ccf
    ret nz

    rra
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    ldh [rIF], a
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
    ld hl, sp+$00
    nop
    ccf
    rst $38
    rst $38
    cp $00
    inc bc
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    cp $00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rra
    ldh a, [rP1]
    ld bc, $ffff
    rst $38
    cp $00
    inc bc
    db $fc
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld e, $00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    inc b
    nop
    ccf
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld bc, $0092
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    dec c
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld b, $00
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $f0ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ccf
    add b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $00ff
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld c, $03
    ldh a, [rSB]
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $f0ff
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    db $fc
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    rlca
    jr nz, jr_022_6e17

    nop
    rst $38
    rst $38
    rst $38
    cp $00
    ld bc, $07f8
    ldh a, [$03]
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $00ff
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    ld l, l
    ld hl, sp+$00
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    add b
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    rrca
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    add b
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld [hl], a
    db $fc
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rrca
    ldh a, [$7e]
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    rra
    ret z

    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    add b
    nop
    ld bc, $ffff
    rst $38
    db $fc
    nop
    nop
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop

jr_022_6e17:
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $00ff
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    rra
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38

Call_022_6e46:
    rst $38
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
    ret nz

    nop
    ld bc, $00f0
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
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
    nop
    nop
    rrca
    rst $38
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
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
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    db $fc
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    ccf
    ldh a, [$03]
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $feff
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rra
    db $fc
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add b
    rrca
    cp $00
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add b
    rlca
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [$3f], a
    ret nz

    inc bc
    rst $38
    ldh [rP1], a
    nop
    ccf
    rst $38
    cp $00
    rrca
    ld hl, sp+$01
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    rst $38
    nop
    rrca
    db $fc
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ldh a, [rP1]
    inc bc
    db $fc
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    ld bc, $f8ff
    ld b, b
    nop
    ld a, a
    ldh a, [rIE]
    rst $38
    db $fc
    nop
    nop
    ld a, a
    db $fc
    ld hl, sp+$00
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rrca
    ld sp, hl
    rst $38
    ret nz

    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $80ff
    ldh [rSB], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    ccf
    rst $38
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    cp $07
    rst $38
    sbc e
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    rst $28
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    rlca
    db $ec
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rra
    add b
    ld a, a
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld b, $e7
    rst $38
    ret nz

    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    ld a, [c]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $20
    add b
    nop
    nop
    nop
    ld a, a
    add b
    ccf
    db $fd
    add b
    nop
    rra
    rst $38
    or $00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    rst $38
    ret nz

    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    cp $33
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    or b
    pop hl
    rst $38
    rst $38
    db $dd
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_022_707f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_022_711c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_022_71d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_022_7338:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_022_73e6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_022_7f42:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
