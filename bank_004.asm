; disasSembly of "yell.gbc"
SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld a, [hl]
    ld b, b
    ld b, b
    db $fc
    db $fc
    ld bc, $fb01

jr_004_4015:
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rra
    rra
    ret nz

    ret nz

    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $08
    ldh [$e0], a
    ld h, b
    jr nz, jr_004_4015

    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    rst $38
    cp a
    ret nz

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
    ldh [$e0], a
    db $10
    db $10
    rst $38
    rst $38
    add c
    add b
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    adc a
    adc a
    adc b
    adc b
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld a, a
    ld a, a
    add b
    add b
    cp a
    ccf
    cp a
    cp a
    cp a
    ccf
    cp a
    cp a
    rlca
    rlca
    inc b
    inc b
    push hl
    push hl
    dec a
    dec e
    db $fd
    db $ed
    db $fd
    db $dd
    db $fd
    db $ed
    db $fd
    db $dd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    jr c, jr_004_40ec

    ei
    db $db
    ei
    db $eb
    ei
    di
    ei
    di
    ei
    di
    ei
    di
    ldh a, [$f0]
    rra
    rra
    ret nz

    ret nz

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
    ret nz

    ret nz

    jr nz, jr_004_40f6

    sub b
    sub b
    ret z

    ret z

    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_40ec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_40f6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld a, a
    ld b, b
    ld a, [hl]
    ld a, [hl]
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
    ld hl, sp-$02
    ld a, [$8fef]
    rst $28
    rst $08
    rst $18
    sbc a
    rst $18
    rst $18
    cp a
    ccf
    cp a
    cp a
    ld a, a
    ld a, h
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$04
    ld hl, sp-$08
    ret z

    ldh a, [$90]
    ldh [rNR41], a
    ldh a, [$90]
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld hl, sp-$08
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    adc b
    adc b
    adc a
    adc a
    add c
    add c
    rst $38
    rst $38
    ld [$fb08], sp
    db $e3
    ei
    di
    ei
    db $e3
    ld a, a
    ld a, h
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ccf
    cp a
    cp a
    ccf
    nop
    rst $38
    rst $38
    jr nz, jr_004_41aa

    ldh a, [$90]
    ldh [rNR41], a
    ldh a, [$90]
    rst $38
    db $ec
    rst $30
    rst $10
    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld [de], a
    dec l
    dec l
    rst $38
    inc bc
    ei
    ei
    dec bc
    dec bc
    dec bc
    dec bc
    rla
    rla

jr_004_41aa:
    rla
    rla
    rla
    rla
    cpl
    cpl
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $38
    rst $28
    rst $28
    rst $08
    rst $28
    rst $08
    rst $30
    rst $10
    rst $38
    db $e3
    ei
    db $eb
    ei
    db $eb
    rst $30
    rst $10
    rst $30
    rst $10
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$18
    rst $38
    rst $28
    ldh [$c0], a
    rst $28
    rst $08
    rst $28
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_004_420c

    sub b
    sub b
    ldh a, [$30]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    db $10
    ld d, $16
    rla
    rla
    cpl
    cpl
    cpl
    cpl

jr_004_420c:
    cpl
    cpl
    ld e, a
    ld e, [hl]
    cp $fa
    db $fc
    ld hl, sp-$01
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    cp $fa
    cp $7a
    cp $16
    ld a, [$f24a]
    or d
    ld [c], a
    and d
    ld a, [c]
    jp nc, $d4f4

    db $fc
    ld hl, sp-$01
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp+$04
    inc b
    db $76
    ld [hl-], a
    cp $ba
    cp $ba
    cp $ba
    db $fd
    cp c
    cp $ba
    rst $38
    rlca
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    ccf
    ld a, $fb
    di
    ei
    db $e3
    ei
    ldh a, [rIE]
    rst $20
    db $fd
    dec c
    ld sp, hl
    ld sp, hl
    add c
    add c
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, a
    ld a, l
    ld a, a
    ld a, l

Jump_004_427e:
    ld a, [hl]
    ld a, h
    ldh [rNR41], a
    ldh a, [$90]
    ldh [rNR41], a
    pop bc
    pop bc
    ld [bc], a
    ld [bc], a
    add l
    add l
    db $db
    db $db
    daa
    daa
    ld e, d
    ld e, d
    ld e, [hl]
    ld e, [hl]
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    cp $fc
    xor a
    xor a
    rst $28
    rst $28
    rst $18
    ld e, a
    rst $18
    ld e, a
    cp a
    ccf
    cp a
    ccf
    ld a, a
    ld a, a
    db $fd
    db $fd
    db $db
    db $db
    rst $20
    and h
    db $e3
    and e
    ldh a, [$d0]
    ld hl, sp-$18
    ld hl, sp-$18
    db $fc
    db $f4
    rst $38
    di
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    cp a
    cp a
    cp a
    cp a
    ld h, b
    ld h, b
    rst $28
    rst $08
    rst $28
    xor a
    rst $28
    xor a
    rst $38
    and b
    rst $38
    ld a, a
    ret nz

    ld b, b
    ret nz

    ld b, b
    nop
    nop
    ldh [$a0], a
    ldh a, [$30]
    ldh a, [$90]
    ldh [rNR41], a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp h
    ld e, [hl]
    ld e, h
    ld a, $20
    ld e, $1e
    inc bc
    inc bc
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld a, [$fbff]
    rst $38
    inc bc
    cp $fe
    ld sp, hl
    jp hl


    di
    db $e3
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    ld e, l
    db $e3
    ld [hl+], a
    pop bc
    pop bc
    rst $38
    ei
    db $fc
    db $f4
    db $fc
    db $f4
    ld sp, hl
    jp hl


    ldh a, [$d0]
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    add b
    rst $28
    rst $28
    ld e, a
    ld e, a
    cp a
    cp a
    ld a, a
    ld a, [hl]
    cp a
    xor l
    sbc [hl]
    sbc d
    ld a, h
    ld h, h
    jr jr_004_4368

    cp a
    cp [hl]
    cp a
    cp [hl]
    cp a
    ld a, $bf
    cp [hl]
    cp a
    cp [hl]
    cp a
    cp [hl]
    rst $38
    add b
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    add b

jr_004_4368:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    cp a
    cp a
    cp a
    ld c, a
    ld c, a
    ccf
    jr nc, jr_004_438e

    rrca
    rst $28
    rst $08
    rst $30
    sub a
    rst $30
    scf
    ei
    cp e
    ei
    dec sp
    rst $30
    sub l
    rst $20
    ld h, h

jr_004_438e:
    add e
    add e
    cp $f8
    db $fd
    push af
    ei
    db $eb
    ei
    db $db
    push hl
    and l
    push bc
    ld b, l
    add e
    add d
    ld bc, $fe01
    ld hl, sp-$02
    ld a, [$f5fd]
    db $fc
    db $f4
    ld sp, hl
    db $eb
    rst $30
    ld e, a
    rst $28
    ld a, $df
    db $fc
    db $fc
    ld hl, sp-$1d
    rst $20
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    pop af
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld sp, $7f1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld hl, sp-$02
    rst $38
    jp $87ff


    rst $38
    rrca
    rst $38
    ld bc, $c3ff
    rst $38
    add a
    rst $38
    rrca
    nop
    nop
    ret nz

    ldh [$f8], a
    db $fc
    cp $ff
    rst $38
    rst $30
    rst $38
    di
    rst $38
    pop af
    rst $38
    add b
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

    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp+$3c
    nop
    nop
    nop
    nop
    nop
    pop af
    nop
    db $db
    nop
    db $db
    nop
    di
    nop
    jp $c100


    nop
    nop
    nop
    nop
    nop
    rst $00
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    rst $00
    nop
    nop
    nop
    nop
    nop
    ld l, e
    nop
    ld l, e
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    ld l, e
    nop
    ld l, e
    nop
    nop
    nop
    nop
    nop
    sbc $00
    inc c
    nop
    call z, Call_000_0c00
    nop
    inc c
    nop
    call z, RST_00
    nop
    nop
    nop
    jr nz, jr_004_4447

jr_004_4447:
    ld sp, $3b00
    nop
    ccf
    nop
    dec [hl]
    nop
    ld sp, $0000
    nop
    nop
    nop
    sbc h
    nop
    or [hl]
    nop
    or [hl]
    nop
    or [hl]
    nop
    or [hl]
    nop
    sbc h
    nop
    nop
    nop
    nop
    nop
    adc h
    nop
    call $ed00
    nop
    call c, $cc00
    nop
    push bc
    nop
    nop
    nop
    nop
    nop
    rst $28
    nop
    add [hl]
    nop
    add $00
    and $00
    ld h, [hl]
    nop
    add $00
    nop
    nop
    nop
    nop
    ld a, e
    nop
    ld h, e
    nop
    ld a, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, e
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    nop
    ld e, b
    nop
    ld e, h
    nop
    adc [hl]
    nop
    ld b, [hl]
    nop
    ld e, h
    ccf
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld a, b
    ccf
    ld a, h
    rst $38
    ccf
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld h, e
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    adc b
    rst $38
    adc h
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, h
    db $fc
    ld e, $fe
    ld e, $fe
    rra
    rst $38
    rra
    rst $38
    rra
    cp $1f
    cp $1e
    db $fc
    ld a, $d8
    ret c

    reti


    reti


    ei
    ei
    ld [hl], e
    ld [hl], e
    ld [hl], c
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    dec de
    db $db
    db $db
    ld e, e
    ld e, e
    sbc e
    sbc e
    db $db
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    jr c, jr_004_4562

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $cccc
    call z, $cdcd
    ld a, c
    ld a, c
    jr nc, jr_004_457a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $28
    xor h
    xor h
    call z, $eccc
    db $ec
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_004_4562:
    ld a, b
    ld a, b
    db $e3
    db $e3
    dec sp
    dec sp
    di
    di
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    add hl, sp
    add hl, sp

jr_004_457a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    and b
    and b
    and b
    and b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    inc a
    rrca
    ld e, $07
    rrca
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $00
    ld a, a
    rst $38
    rra
    ccf
    inc bc
    rlca
    nop
    nop
    rst $38
    db $e3
    rst $38
    jp nz, $86ff

    rst $38
    rrca
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rra
    ld a, a
    rst $38
    ld c, $ff
    inc e
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$02
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    ld [hl], e
    cp $ff
    ld hl, sp-$04
    ret nz

    ldh [rP1], a
    nop
    ld hl, sp+$3c
    ldh a, [$78]
    ldh [$f0], a
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr z, jr_004_462b

    ld b, h
    ld a, h
    add d
    add d
    nop
    ld hl, sp-$7c
    add h
    db $fc
    add d
    add d
    db $fc
    nop
    inc a
    ld b, d
    add b
    add b
    add b
    ld b, d
    inc a
    nop
    ld hl, sp-$7c
    add d
    add d
    add d
    add h
    ld hl, sp+$00
    cp $80
    add b
    db $fc
    add b
    add b
    cp $00
    cp $80
    add b

jr_004_462b:
    db $fc
    add b
    add b
    add b
    nop
    inc a
    ld b, d
    add b
    sbc [hl]
    add d
    ld b, d
    inc a
    nop
    add d
    add d
    add d
    cp $82
    add d
    add d
    nop
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    ld a, h
    nop
    ld a, [hl]
    ld [$0808], sp
    adc b
    adc b
    ld [hl], b
    nop
    add h
    adc b
    sub b
    or b
    ret z

    add h
    add d
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    cp $00
    add d
    add $aa
    sub d
    add d
    add d
    add d
    nop
    add d
    jp nz, $92a2

    adc d
    add [hl]
    add d
    nop
    jr c, jr_004_46b6

    add d
    add d
    add d
    ld b, h
    jr c, jr_004_4678

jr_004_4678:
    db $fc
    add d
    add d
    db $fc
    add b
    add b
    add b
    nop
    jr c, jr_004_46c6

    add d
    add d
    adc d
    ld b, h
    ld a, [hl-]
    nop
    db $fc
    add d
    add d
    db $fc
    adc b
    add h
    add d
    nop
    ld a, b
    add h
    add b
    ld a, h
    ld [bc], a
    add d
    ld a, h
    nop
    cp $10
    db $10
    db $10
    db $10
    db $10
    stop
    add d
    add d
    add d
    add d
    add d
    ld b, d
    ld a, $00
    add d
    add d
    ld b, h
    ld b, h
    jr z, @+$2a

    stop
    add d
    sub d
    xor d
    xor d
    add $c6

jr_004_46b6:
    add d
    nop
    add $44
    jr z, @+$12

    jr z, jr_004_4702

    add $00
    add d
    ld b, h
    jr z, jr_004_46d4

    db $10
    db $10

jr_004_46c6:
    stop
    cp $04
    ld [$2010], sp
    ld b, b
    cp $00
    ld b, $08
    db $10
    db $10

jr_004_46d4:
    db $10
    ld [$0006], sp
    ret nz

    jr nz, jr_004_46eb

    db $10
    db $10
    jr nz, @-$3e

    nop
    nop
    jr @+$1a

    nop
    nop
    jr @+$1a

    nop
    nop
    jr @+$1a

jr_004_46eb:
    nop
    jr jr_004_4706

    ld [$0710], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    nop
    ldh [rNR41], a
    jr nz, @+$22

    jr nz, jr_004_471e

    ldh [rP1], a
    nop
    nop

jr_004_4702:
    jr c, jr_004_4708

    inc a
    ld b, h

jr_004_4706:
    ld a, $00

jr_004_4708:
    ld b, b
    ld b, b
    ld b, b
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    nop
    nop
    nop
    inc a
    ld b, d
    ld b, b
    ld b, d
    inc a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $42
    ld b, d

jr_004_471e:
    ld a, $00
    nop
    nop
    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    inc c
    ld [de], a
    db $10
    ld a, [hl]
    db $10
    db $10
    stop
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld a, h
    ld b, b
    ld b, b
    ld b, b
    ld a, b
    ld b, h
    ld b, h
    ld b, h
    nop
    nop
    stop
    db $10
    db $10
    db $10
    stop
    nop
    ld [$0800], sp
    ld [$0808], sp
    jr nc, jr_004_4791

    ld b, b
    ld b, [hl]
    ld e, b
    ld h, b
    ld e, b
    ld b, [hl]
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    db $ec
    sub d
    sub d
    sub d
    sub d
    nop
    nop
    nop
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    inc a
    ld b, d
    ld b, d
    ld b, d
    inc a
    nop
    nop
    nop
    ld a, h
    ld b, d
    ld b, d
    ld a, h
    ld b, b
    ld b, b
    nop
    nop
    ld a, $42
    ld b, d
    ld a, $02
    ld [bc], a
    nop
    nop
    ld c, [hl]
    ld d, b
    ld h, b
    ld b, b
    ld b, b
    nop
    nop

jr_004_4791:
    nop

jr_004_4792:
    inc a
    ld b, b
    inc a
    ld [bc], a
    ld a, h
    nop
    nop
    db $10
    ld a, h
    db $10
    db $10
    db $10
    inc c
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    jr z, jr_004_47bf

    nop
    nop
    nop
    add d
    sub d
    sub d
    xor d
    ld b, h
    nop
    nop
    nop
    call nz, Call_000_1028
    jr z, jr_004_4805

jr_004_47bf:
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc b
    ld a, b
    nop
    nop
    ld a, [hl]
    inc b
    jr @+$22

    ld a, [hl]
    nop
    jr nc, jr_004_4792

    inc a
    ld b, d
    ld a, [hl]
    ld b, b
    ld a, $00
    jp nz, $8242

    ld a, $42
    ld b, d
    ld a, $00
    ret z

    ld c, b
    adc b
    ld [$0808], sp
    ld [$c000], sp
    ld b, b
    sbc [hl]
    jr nz, jr_004_480b

    ld bc, $003e
    ret nz

    ld c, b
    cp [hl]
    ld [$0808], sp
    ld b, $00
    ret nz

    ld b, b
    and d
    ld [hl+], a
    ld [hl+], a
    inc d
    ld [$0000], sp
    nop
    nop
    nop
    nop

jr_004_4805:
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_480b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_48f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_004_4944

    nop
    nop
    nop
    nop
    ldh [$a0], a
    ldh [$8a], a
    adc d
    inc c
    ld a, [bc]
    ld a, [bc]
    ret c

    xor b
    adc b
    adc b
    sub d
    ld a, [de]
    ld d, $12
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ret nz

    ld b, b
    sub e
    inc d
    jr jr_004_4936

    stop
    ret nz

    ld b, b
    sub [hl]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    nop
    ld a, [hl]
    rst $20
    adc $18
    nop

jr_004_4936:
    jr jr_004_4950

    jr jr_004_4976

    inc a
    inc a
    jr jr_004_493e

jr_004_493e:
    jr jr_004_4958

    nop
    nop
    nop
    nop

jr_004_4944:
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld hl, sp+$08

jr_004_494d:
    jr z, jr_004_497f

    ld b, b

jr_004_4950:
    nop
    nop
    nop
    jr nz, jr_004_494d

    adc b
    db $10
    ld h, b

jr_004_4958:
    nop
    nop
    nop
    nop
    ld [hl], b
    jr nz, jr_004_497f

    ld hl, sp+$00
    ld h, b
    ld d, b
    ld c, b
    ld b, h
    ld c, b
    ld d, b
    ld h, b
    nop
    ld h, b
    ld [hl], b
    ld a, b
    ld a, h
    ld a, b
    ld [hl], b
    ld h, b
    nop
    cp $fe
    ld a, h
    jr c, @+$12

jr_004_4976:
    nop
    nop
    db $10
    jr c, jr_004_49cf

    sub d
    jr c, jr_004_49c2

    ld b, h

jr_004_497f:
    jr c, jr_004_49bd

    inc h
    inc a
    jr nz, @+$72

    jr nz, jr_004_49f7

    jr nz, jr_004_4989

jr_004_4989:
    nop
    ld b, h
    jr z, @+$12

    jr z, jr_004_49d3

    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_49c7

    nop
    nop
    ld [bc], a
    inc b
    ld [$2010], sp
    ld b, b
    add b
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    jr nz, jr_004_49e8

    jr c, jr_004_49ee

    ld b, h
    jr c, jr_004_49bd

    ld a, h
    db $10
    stop
    jr c, jr_004_49ff

    add $c6
    ld h, h
    jr c, jr_004_49b8

jr_004_49b8:
    nop
    jr @+$3a

    jr @+$1a

jr_004_49bd:
    jr jr_004_4a3d

    nop
    nop
    ld a, h

jr_004_49c2:
    add $0e
    ld a, b
    ldh [$fe], a

jr_004_49c7:
    nop
    nop
    ld a, [hl]
    inc c
    jr c, jr_004_49d3

    add $7c

jr_004_49cf:
    nop
    nop
    inc e
    inc a

jr_004_49d3:
    ld l, h
    call z, $0cfe
    nop
    nop
    db $fc
    ret nz

    db $fc
    ld b, $c6
    ld a, h
    nop
    nop
    ld a, h
    ret nz

    db $fc
    add $c6
    ld a, h
    nop

jr_004_49e8:
    nop
    cp $c6
    inc c
    jr jr_004_4a1e

jr_004_49ee:
    jr nc, jr_004_49f0

jr_004_49f0:
    nop
    ld a, h
    add $7c
    add $c6
    ld a, h

jr_004_49f7:
    nop
    nop
    ld a, h
    add $c6
    ld a, [hl]
    ld b, $7c

jr_004_49ff:
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_004_4a1e:
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld d, c
    ld d, c
    pop bc
    pop bc
    db $10
    stop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop

jr_004_4a3d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    add b
    nop
    add b
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
    nop
    ret nz

    nop
    ret nz

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
    nop
    ldh [rP1], a
    ldh [rIE], a
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
    nop
    ldh a, [rP1]
    ldh a, [rIE]
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
    nop
    ld hl, sp+$00
    ld hl, sp-$01
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
    nop
    db $fc
    nop
    db $fc
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
    nop
    cp $00
    cp $ff
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
    nop
    rst $38
    nop
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
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_004_4afa

    jr z, jr_004_4afc

    jr z, jr_004_4afe

    xor b
    xor b
    xor b
    xor b
    jr z, jr_004_4b04

    jr z, jr_004_4b06

    jr z, jr_004_4b08

    nop
    nop
    nop
    nop
    jr jr_004_4afe

    ld e, b
    ld e, b
    jr jr_004_4b02

    ld e, b
    ld e, b
    ld e, $1e
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38

jr_004_4afa:
    nop
    nop

jr_004_4afc:
    nop
    nop

jr_004_4afe:
    nop
    nop
    nop
    nop

jr_004_4b02:
    jr nz, jr_004_4b24

jr_004_4b04:
    db $76
    db $76

jr_004_4b06:
    add hl, hl
    add hl, hl

jr_004_4b08:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, $16
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld a, e
    ld a, e
    ld l, e
    ld l, e
    nop
    nop
    nop
    nop
    ld a, $3e
    ld [hl+], a
    ld [hl+], a

jr_004_4b24:
    ld l, $2e
    jr z, jr_004_4b50

    jr z, jr_004_4b52

    jr c, jr_004_4b64

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, h
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld e, h
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    sub b
    rst $10
    rst $10
    push af
    push af
    or l
    or l
    sub a
    sub a
    nop
    nop

jr_004_4b50:
    nop
    nop

jr_004_4b52:
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4b64:
    nop
    nop
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    cp $fe
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
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
    jr jr_004_4bac

    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h

jr_004_4b9c:
    ld a, [de]
    ld a, [de]
    inc d
    inc d
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_004_4bac:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_4bcc

    xor h
    xor h
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    and h
    and h
    ld e, b
    ld e, b
    jr z, jr_004_4be8

    jr z, jr_004_4bea

    jr z, jr_004_4bec

    jr z, jr_004_4bee

    jr z, jr_004_4bf0

    jr z, jr_004_4bf2

    jr z, jr_004_4bf4

jr_004_4bcc:
    jr z, jr_004_4bf6

    jr z, jr_004_4bf8

    inc d
    inc d
    ld a, [de]
    ld a, [de]
    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h
    jr jr_004_4bf6

    nop
    nop
    jr z, jr_004_4c0a

    ld e, b
    ld e, b
    xor h
    xor h
    ld a, [hl]
    ld a, [hl]

jr_004_4be8:
    ld b, d
    ld b, d

jr_004_4bea:
    and h
    and h

jr_004_4bec:
    jr @+$1a

jr_004_4bee:
    nop
    nop

jr_004_4bf0:
    nop
    nop

jr_004_4bf2:
    nop
    nop

jr_004_4bf4:
    nop
    nop

jr_004_4bf6:
    nop
    nop

jr_004_4bf8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_4c1a

    jr jr_004_4b9c

    sbc b
    jr @+$1a

    jr jr_004_4c09

jr_004_4c09:
    nop

jr_004_4c0a:
    jr jr_004_4c64

    jr jr_004_4c66

    ld e, $00
    nop

jr_004_4c11:
    inc bc
    rrca
    ccf
    rst $38
    nop
    nop
    nop
    jr jr_004_4c32

jr_004_4c1a:
    jr jr_004_4c34

    jr jr_004_4c36

    jr jr_004_4c38

    jr jr_004_4c3a

    jr @+$21

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    nop
    nop

jr_004_4c32:
    nop
    rst $38

jr_004_4c34:
    rst $38
    nop

jr_004_4c36:
    nop
    nop

jr_004_4c38:
    jr jr_004_4c52

jr_004_4c3a:
    jr jr_004_4c34

    ldh a, [rP1]
    nop
    nop
    nop
    ret nz

    ldh a, [$fc]
    rst $38
    nop
    nop
    nop
    ld a, h
    jr c, jr_004_4c11

    ld b, h
    cp d
    sbc d
    and d
    and d
    cp d
    sbc d

jr_004_4c52:
    add $44
    ld a, h
    jr c, jr_004_4c57

jr_004_4c57:
    nop
    nop
    nop
    rst $28
    rst $20
    ld l, l
    ld l, l
    ld l, a
    ld l, a
    ld h, c
    ld h, c
    ld l, a
    ld l, a

jr_004_4c64:
    nop
    nop

jr_004_4c66:
    nop
    nop
    nop
    nop
    cp [hl]
    inc e
    or [hl]
    or [hl]
    cp [hl]
    cp [hl]
    add [hl]
    add [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$10
    ret nz

    ret nz

    ei
    ei
    jr jr_004_4c9a

    ld hl, sp+$70
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $1c
    ld [hl], $36
    cp [hl]
    cp [hl]
    ld b, $06
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4c9a:
    call $eccd
    db $ec
    db $dd
    db $dd
    db $dd
    db $dd
    call $00cd
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    dec a
    dec a
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    xor $ee
    jp c, $dcda

    call c, $cece
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    pop af
    db $db
    db $db
    db $db
    db $db
    reti


    reti


    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rst $20
    rst $20
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    rst $20
    rst $20
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $e3
    jp $c3e3


    db $e3
    jp Jump_004_7b7b


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $bddc
    dec [hl]
    add hl, sp
    add hl, sp
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rst $30
    rst $30
    or e
    or e
    di
    or e
    ei
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or [hl]
    or [hl]
    ld [hl], $36
    ld a, $36
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    rst $30
    rst $28
    call $cece
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
    inc a
    inc a
    ld a, b
    ld [hl], b
    inc a
    inc e
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rrca
    ld c, $6d
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    jr c, jr_004_4dcf

    ld h, b
    ld h, e
    ld h, e
    ld a, e
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld a, c
    jp $dbc3


    db $db
    db $db
    db $db
    ld a, e
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$38
    ld l, h
    ld l, h
    rst $28
    xor $6d
    ld l, l
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    cpl
    ld l, h
    ld l, h
    rst $28
    rst $28
    ld l, h
    ld l, h
    ld l, a
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    jr jr_004_4dc6

    ld e, $1e
    jr jr_004_4dca

    jr @+$1a

    nop
    nop
    nop
    nop
    nop
    nop
    ei
    di
    db $db
    db $db
    ei
    di
    db $db
    db $db
    db $db
    db $db
    nop
    nop

jr_004_4dc6:
    nop
    nop
    nop
    nop

jr_004_4dca:
    rst $18
    adc $1b
    dec de
    rst $18

jr_004_4dcf:
    rst $18
    dec de
    dec de
    db $db
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    ld a, b
    ld a, b
    ld a, b
    ld [hl], b
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rrca
    ld c, $6d
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    jr c, jr_004_4e5f

    ld h, b
    ld h, e
    ld h, e
    ld a, e
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$70
    ret c

    ret c

    ld hl, sp-$08
    jr jr_004_4e2a

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    ld l, h
    ld l, h
    add $c6
    add $c6
    cp $fe
    add $c6
    nop
    nop
    nop
    nop

jr_004_4e2a:
    db $fc
    db $fc
    add $c6
    db $fc
    db $fc
    add $c6
    add $c6
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    and $e6
    ret nz

    ret nz

    ret nz

    ret nz

    and $e6
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    call z, $c6cc
    add $c6
    add $cc
    call z, $f8f8
    nop
    nop
    nop
    nop
    cp $fe
    ret nz

    ret nz

    db $fc

jr_004_4e5f:
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    cp $fe
    nop
    nop
    nop
    nop
    cp $fe
    ret nz

    ret nz

    ret nz

    ret nz

    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ldh [$e0], a
    adc $ce
    add $c6
    and $e6
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    cp $fe
    add $c6
    add $c6
    add $c6
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr @+$1a

    jr jr_004_4eb8

    jr jr_004_4eba

    jr jr_004_4ebc

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add $c6
    add $c6
    xor $ee
    ld a, h
    ld a, h
    jr c, jr_004_4eec

    db $10
    stop
    nop

jr_004_4eb8:
    nop
    nop

jr_004_4eba:
    ld a, h
    ld a, h

jr_004_4ebc:
    ldh [$e0], a
    ld a, h
    ld a, h
    ld c, $0e
    adc $ce
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add d
    add d
    add $c6
    xor $ee
    cp $fe
    sub $d6
    add $c6
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4eec:
    db $10
    stop
    nop
    nop
    nop
    db $10
    stop
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
    add h
    add h
    add h
    add h
    add h
    add h
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    ldh a, [$f0]
    ld [$0808], sp
    ld [$7070], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_004_4f4e

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld [de], a
    inc h
    inc h
    ld [hl], $36
    ld [hl], $36
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    inc h
    inc h

jr_004_4f4e:
    ld c, b
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
    jr jr_004_4f78

    jr jr_004_4f7a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub d
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_4f78:
    nop
    nop

jr_004_4f7a:
    nop
    nop
    jr nz, jr_004_4f9e

    ld hl, sp-$08
    inc h
    inc h
    ld a, b
    ld a, b
    xor h
    xor h
    ld [hl], h
    ld [hl], h
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    db $10
    db $10
    ld h, h
    ld h, h
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    jr nz, jr_004_4fbe

jr_004_4f9e:
    db $f4
    db $f4
    inc h
    inc h
    ld [hl], b
    ld [hl], b
    xor b
    xor b
    ld c, b
    ld c, b
    nop
    nop
    jr jr_004_4fc4

    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h
    ld a, [de]
    ld a, [de]
    inc d
    inc d
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_004_4fbe:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_004_4fc4:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_004_4fe4

    xor h
    xor h
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    and h
    and h
    ld e, b
    ld e, b
    jr z, jr_004_5000

    jr z, jr_004_5002

    jr z, jr_004_5004

    jr z, jr_004_5006

    jr z, jr_004_5008

    jr z, jr_004_500a

    jr z, jr_004_500c

jr_004_4fe4:
    jr z, jr_004_500e

    jr z, jr_004_5010

    inc d
    inc d
    ld a, [de]
    ld a, [de]
    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h
    jr jr_004_500e

    nop
    nop
    jr z, jr_004_5022

    ld e, b
    ld e, b
    xor h
    xor h
    ld a, [hl]
    ld a, [hl]

jr_004_5000:
    ld b, d
    ld b, d

jr_004_5002:
    and h
    and h

jr_004_5004:
    jr jr_004_501e

jr_004_5006:
    nop
    nop

jr_004_5008:
    nop
    nop

jr_004_500a:
    nop
    nop

jr_004_500c:
    nop
    nop

jr_004_500e:
    nop
    nop

jr_004_5010:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_504a

    ld h, b
    ld h, b
    add b
    add b

jr_004_501e:
    nop
    nop
    nop
    nop

jr_004_5022:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_004_505a

    ld h, [hl]
    ld h, [hl]
    adc h
    adc h
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    call z, $cccc
    call z, Call_004_7c7c
    inc c
    inc c
    ld hl, sp-$08
    nop
    rst $38

jr_004_504a:
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    rst $38

jr_004_505a:
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$08]
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$100f], sp
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$1f]
    rst $38
    rra
    rst $38
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, d
    jp $c3c3


    jp Jump_004_427e


    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld [$080f], sp
    rrca
    ld [$f80f], sp
    rst $38
    ld hl, sp-$01
    ld [$080f], sp
    rrca
    ld [$000f], sp
    nop
    nop
    nop
    nop
    nop
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
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$1f]
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
    inc a
    inc a
    inc a
    inc a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$080f], sp
    rrca
    ld [$f80f], sp
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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_004_5132

    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld b, d
    ld h, [hl]
    ld b, d
    ld h, [hl]
    ld b, d
    ld h, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    jr jr_004_5140

    jr jr_004_5142

    jr jr_004_5144

    jr jr_004_5146

    jr jr_004_5148

    jr jr_004_514a

jr_004_5132:
    jr jr_004_514c

    jr jr_004_514e

    jr jr_004_5150

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_5140:
    nop
    nop

jr_004_5142:
    nop
    nop

jr_004_5144:
    nop
    nop

jr_004_5146:
    nop
    nop

jr_004_5148:
    inc l
    rst $20

jr_004_514a:
    inc l
    rst $20

jr_004_514c:
    inc l
    rst $20

jr_004_514e:
    inc l
    rst $20

jr_004_5150:
    inc l
    rst $20
    inc l
    rst $20
    inc l
    rst $20
    inc l
    rst $20
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld a, [hl]
    jp $81c3


    jp $c381


    add c
    jp Jump_004_7e81


    jp $ff3c


    inc a
    nop
    adc c
    nop
    ld h, b
    nop
    rst $30
    nop
    rst $20
    nop
    rst $20
    nop
    sbc e
    nop
    call c, $ff00
    rst $38
    add c
    add c
    cp l
    add c
    and l
    add c
    and l
    add c
    cp l
    add c
    add c
    add c
    rst $38
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
    inc a
    add b
    add hl, bc
    ret nz

    nop
    ldh [rTAC], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    inc a
    ld bc, $0388
    ld h, b
    rlca
    ldh a, [rIF]

jr_004_51d0:
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    ldh [$1f], a
    ldh [rIF], a
    ldh [rTAC], a
    sbc b
    inc bc
    call c, Call_000_0001
    rst $38
    ld bc, $00fe
    db $fc
    rlca
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh [rNR31], a
    ret nz

    ld e, h
    add b
    nop
    nop

jr_004_51fa:
    nop
    nop
    jr jr_004_5216

    inc h
    inc h
    inc h
    inc h
    jr jr_004_521c

    nop
    nop
    nop
    nop
    inc a
    nop
    adc c
    nop
    ld h, b
    nop
    rst $38
    jr @+$01

    jr jr_004_51fa

jr_004_5213:
    nop
    sbc e
    nop

jr_004_5216:
    call c, Call_000_3c00
    nop
    adc c
    nop

jr_004_521c:
    ld h, b
    nop
    rst $30
    ld h, [hl]
    rst $20
    ld h, [hl]
    rst $20
    nop
    sbc e
    nop

jr_004_5226:
    call c, Call_000_3c00
    nop
    sbc c
    jr jr_004_52a5

    jr jr_004_5226

    nop
    rst $20
    nop
    rst $38
    jr jr_004_51d0

    jr jr_004_5213

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0203
    nop
    nop
    nop
    nop
    inc bc
    rlca
    jr @+$41

    ld b, b
    db $fc
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ld [hl], b
    or b
    jr c, @+$4a

    jr jr_004_52d8

    inc l
    ld d, h
    inc d
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc bc

jr_004_52a5:
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    jr c, jr_004_52d2

    rst $00
    ld a, a
    ccf
    db $fd
    cp $57
    ldh a, [$f7]
    ret nc

    ld a, [bc]
    ld [hl], $16
    ld [$760a], a
    di
    rst $38
    rst $38
    rst $38
    adc c
    cp e
    and l
    add c
    pop hl
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_52d2:
    add b
    add b
    nop
    nop
    nop
    nop

jr_004_52d8:
    inc e
    inc e
    ld a, [hl+]
    ld [hl-], a
    ld c, l
    ld [hl], e
    ld b, c
    ld a, a
    ld hl, $225d
    ld [hl+], a
    inc c
    inc e
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld a, e
    ld b, h
    ld a, a
    ld b, b
    dec l
    inc sp
    dec de
    inc e
    ccf
    daa
    ld [hl], e
    ld b, a
    and e
    ld [c], a
    ld de, $ca33
    ld a, [bc]
    call z, $900c
    db $10
    ldh [rSVBK], a
    ld c, b
    ret z

    add $46
    rst $20
    inc l
    db $fd
    ld a, [c]
    nop
    nop
    nop
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
    ret nz

    ld b, b
    jr nz, jr_004_535a

    ld c, b
    ld c, h
    db $d3
    sub e
    db $fd
    push de
    ld [$70b5], a
    ld a, a
    rrca
    rrca
    ld bc, $0001
    ld [bc], a
    inc b
    inc b
    add [hl]
    add [hl]
    ld [hl], e
    ld sp, hl
    or e
    ldh [$bf], a
    pop hl
    ld a, a
    db $e3
    ret c

    call c, Call_000_1d0d
    ld e, $13
    rra
    inc bc
    ld a, [bc]
    scf
    or l
    xor e
    db $eb
    push af
    add c
    rst $38
    ld b, c
    ld a, a
    ld a, [hl]
    pop hl

jr_004_535a:
    cp a
    pop hl
    ld [hl], a
    ld sp, hl
    cp d
    push af
    ld [hl], l
    ld_long a, $fff8
    ld hl, sp-$01
    ld hl, sp-$01
    ret nz

    ld b, b
    jr nz, jr_004_538c

    jr nz, jr_004_538e

    db $10
    sub b
    sub b
    sub b
    and b
    and b
    sub b
    ldh a, [$d0]
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_538c:
    nop
    nop

jr_004_538e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld e, a
    ld b, c
    ld b, c
    ld a, $3f
    db $10
    rra
    db $10
    rra
    db $10
    rra
    nop
    rra
    jr nz, jr_004_53e7

    ld sp, hl
    ld sp, hl
    sbc [hl]
    sbc [hl]
    inc [hl]
    db $fc
    ld [hl+], a
    cp $22
    cp $02
    cp $c2
    cp $40
    rst $38
    ret nz

    adc b
    add sp, -$78
    ld a, h
    ld e, h
    ld h, $7e
    ld a, [hl-]
    ld a, $21
    ccf
    ld b, c
    ld e, a
    ld d, d
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_004_53e7:
    nop
    ld hl, $213f
    ccf
    dec d
    ld l, e
    ld c, d
    db $76
    ld d, [hl]
    ld l, d
    adc b
    db $f4
    xor h
    call nc, $fc84
    ld hl, $213f
    ccf
    dec hl
    dec [hl]
    dec h
    dec sp
    ld [bc], a
    dec a
    dec d
    ld a, [de]
    db $10
    rra
    db $10
    rra
    ld [hl-], a
    ld [hl-], a
    inc c
    inc c
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld c, b
    ld a, b
    call nz, $c484
    add h
    call c, Call_004_64fc
    db $fc
    inc c
    sbc h
    ld hl, sp+$08
    ldh a, [$f0]
    dec de
    rra
    add hl, sp
    ld hl, $2139
    dec de
    rra
    dec d
    rra
    ld [de], a
    rra
    dec c
    ld c, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_004_5484

    ldh [rNR41], a
    ret nz

    ret nz

    call Call_000_3ed7
    ld a, $01
    jr jr_004_5474

    call Call_000_3ed7
    ld a, $02

jr_004_5474:
    ld [$cf93], a
    push hl
    ld a, [$cf98]
    ld b, a
    ld a, [$cf99]
    ld c, a
    or b
    jr nz, jr_004_548c

    xor a

jr_004_5484:
    ld c, a
    ld e, a
    ld a, $06
    ld d, a
    jp Jump_004_549d


jr_004_548c:
    ld a, [$cfb9]
    ld d, a
    ld a, [$cfba]
    ld e, a
    ld a, $26
    call Call_000_3eb4
    ld a, $06
    ld d, a
    ld c, a

Jump_004_549d:
    pop hl
    push de
    push hl
    push hl
    call Call_000_10f8
    pop hl
    ldh a, [$fa]
    bit 0, a
    jr z, jr_004_54b0

    ld bc, $0009
    jr jr_004_54b3

jr_004_54b0:
    ld bc, $0015

jr_004_54b3:
    add hl, bc
    ld de, $cf98
    ld bc, $0203
    call Call_000_3c5b
    ld a, $f3
    ld [hl+], a
    ld de, $cfb9
    ld bc, $0203
    call Call_000_3c5b
    pop hl
    pop de
    ret


    call Call_000_1132
    ld a, [$cc49]
    cp $02
    jr c, jr_004_54ea

    ld a, [$cf9a]
    ld [$cfb8], a
    ld [$d126], a
    ld hl, $cfa7
    ld de, $cfb9
    ld b, $01
    call Call_000_392b

jr_004_54ea:
    ld hl, $d72b
    set 1, [hl]
    ld a, $33
    ldh [rNR50], a
    call Call_000_3dd8
    call Call_000_16dd
    call Call_000_231c
    call Call_000_36c3
    ld de, $4c00
    ld hl, $96d0
    ld bc, $0403
    call Call_000_1636
    ld de, $4c18
    ld hl, $9780
    ld bc, $0401
    call Call_000_1636
    ld de, $4c30
    ld hl, $9760
    ld bc, $0402
    call Call_000_1636
    ld de, $5682
    ld hl, $9720
    ld bc, $0401
    call Call_000_1636
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ld hl, $c3c7
    ld bc, $060a
    call Call_004_566d
    ld de, $fffa
    add hl, de
    ld [hl], $f2
    dec hl
    ld [hl], $74
    ld hl, $c467
    ld bc, $0806
    call Call_004_566d
    ld hl, $c45e
    ld de, $564b
    call Call_000_1723
    ld hl, $c3e7
    ld a, $5f
    call Call_000_3eb4
    ld hl, $cf24
    call Call_000_3e0f
    ld b, $03
    call Call_000_3e05
    ld hl, $c428
    ld de, $cf9b
    call Call_000_12de
    jr nz, jr_004_5580

    ld hl, $c428
    ld de, $566a
    call Call_000_1723

jr_004_5580:
    ld hl, $c421
    ld de, $5662
    call Call_000_1723
    ld hl, $c3d6
    call Call_000_1303
    ld a, [$d0b7]
    ld [$d11d], a
    ld [$d0b4], a
    ld a, $3a
    call Call_000_3eb4
    ld hl, $c42f
    ld de, $d11d
    ld bc, $8103
    call Call_000_3c5b
    ld hl, $c473
    ld a, $4b
    call Call_000_3eb4
    ld hl, $5643
    call Call_004_5624
    ld d, h
    ld e, l
    ld hl, $c3bd
    call Call_000_1723
    ld hl, $563b
    call Call_004_5624
    ld d, h
    ld e, l
    ld hl, $c4ec
    call Call_000_1723
    ld hl, $c4c4
    ld de, $cfa3
    ld bc, $8205
    call Call_000_3c5b
    ld d, $00
    call Call_004_568a
    call Call_000_3ddb
    call Call_000_3de0
    ld hl, $c3a1
    call Call_000_1144
    ld a, [$cc49]
    cp $01
    jr z, jr_004_5617

    cp $02
    jr z, jr_004_5601

    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_004_5617

    jr jr_004_560b

jr_004_5601:
    ld hl, $4e0d
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_004_5617

jr_004_560b:
    ld e, $10
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    jr jr_004_561d

jr_004_5617:
    ld a, [$cf90]
    call Call_000_118b

jr_004_561d:
    call Call_000_3852
    pop af
    ldh [$d7], a
    ret


Call_004_5624:
    ld a, [$cc49]
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc49]
    cp $03
    ret z

    ld a, [$cf91]
    jp Jump_000_3a6a


    ld [hl], d
    jp nc, $d9ab

    add hl, hl
    db $dd
    ld d, e
    jp c, $d2b4

    db $ed
    reti


    dec b
    sbc $48
    jp c, $9893

    adc a
    add h
    rst $30
    di
    ld c, [hl]
    sub e
    sbc b
    adc a
    add h
    ld hl, sp-$0d
    ld c, [hl]
    ld [hl], e
    ld [hl], h
    di
    ld c, [hl]
    adc [hl]
    sub e
    di
    ld c, [hl]
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub h
    sub d
    di
    ld d, b
    adc [hl]
    adc d
    ld d, b

Call_004_566d:
    ld de, $0014

jr_004_5670:
    ld [hl], $78
    add hl, de
    dec b
    jr nz, jr_004_5670

    ld [hl], $77
    dec hl

jr_004_5679:
    ld [hl], $76
    dec hl
    dec c
    jr nz, jr_004_5679

    ld [hl], $6f
    ret


    nop
    db $fc
    add $c6
    add $fc
    ret nz

    ret nz

Call_004_568a:
    ld a, d
    and a
    jr nz, jr_004_569f

    ld hl, $c440
    ld bc, $0808
    call Call_000_16f0
    ld hl, $c455
    ld bc, $0019
    jr jr_004_56ae

jr_004_569f:
    ld hl, $c3d1
    ld bc, $0809
    call Call_000_16f0
    ld hl, $c3e7
    ld bc, $0018

jr_004_56ae:
    push bc
    push hl
    ld de, $56de
    call Call_000_1723
    pop hl
    pop bc
    add hl, bc
    ld de, $cfbb
    ld bc, $0203
    call Call_004_56d4
    ld de, $cfbd
    call Call_004_56d4
    ld de, $cfbf
    call Call_004_56d4
    ld de, $cfc1
    jp Jump_000_3c5b


Call_004_56d4:
    push hl
    call Call_000_3c5b
    pop hl
    ld de, $0028
    add hl, de
    ret


    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld c, [hl]
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld c, [hl]
    sub d
    adc a
    add h
    add h
    add e
    ld c, [hl]
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ldh [$ba], a
    ld bc, $0005
    ld hl, $d0db
    call Call_000_166e
    ld hl, $cf9f
    ld de, $d0db
    ld bc, $0004
    call Call_000_00b1
    ld hl, $5b06
    ld b, $0e
    call Call_000_3e84
    ld hl, $c3d1
    ld bc, $050a
    call Call_000_1692
    ld hl, $c3ef
    ld [hl], $78
    ld hl, $c440
    ld bc, $0812
    call Call_000_16f0
    ld hl, $c456
    ld de, $d0e0
    call Call_000_1723
    ld a, [$cd6c]
    inc a
    ld c, a
    ld a, $04
    sub c
    ld b, a
    ld hl, $c473
    ld de, $0028
    ld a, $72
    call Call_004_586e
    ld a, b
    and a
    jr z, jr_004_575e

    ld c, a
    ld a, $e3
    call Call_004_586e

jr_004_575e:
    ld hl, $cf9f
    ld de, $c476
    ld b, $00

jr_004_5766:
    ld a, [hl+]
    and a
    jr z, jr_004_57b4

    push bc
    push hl
    push de
    ld hl, $cc26
    ld a, [hl]
    push af
    ld a, b
    ld [hl], a
    push hl
    ld hl, $65bb
    ld b, $03
    call Call_000_3e84
    pop hl
    pop af
    ld [hl], a
    pop de
    pop hl
    push hl
    ld bc, $0014
    add hl, bc
    ld a, [hl]
    and $3f
    ld [$cd71], a
    ld h, d
    ld l, e
    push hl
    ld de, $cd71
    ld bc, $0102
    call Call_000_3c5b
    ld a, $f3
    ld [hl+], a
    ld de, $d11d
    ld bc, $0102
    call Call_000_3c5b
    pop hl
    ld de, $0028
    add hl, de
    ld d, h
    ld e, l
    pop hl
    pop bc
    inc b
    ld a, b
    cp $04
    jr nz, jr_004_5766

jr_004_57b4:
    ld hl, $c3e5
    ld de, $5852
    call Call_000_1723
    ld a, [$cfb8]
    push af
    cp $64
    jr z, jr_004_57c9

    inc a
    ld [$cfb8], a

jr_004_57c9:
    ld hl, $c426
    ld [hl], $70
    inc hl
    inc hl
    call Call_000_1303
    pop af
    ld [$cfb8], a
    ld de, $cfa5
    ld hl, $c3fc
    ld bc, $0307
    call Call_000_3c5b
    call Call_004_5829
    ld de, $cfa5
    ld hl, $c41f
    ld bc, $0307
    call Call_000_3c5b
    ld hl, $c3a9
    call Call_004_5866
    ld hl, $c3bd
    call Call_004_5866
    ld a, [$d0b7]
    ld [$d11d], a
    call Call_000_2e93
    ld hl, $c3bd
    call Call_000_1723
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    call Call_000_3852
    pop af
    ldh [$d7], a
    ld hl, $d72b
    res 1, [hl]
    ld a, $77
    ldh [rNR50], a
    call Call_000_3df2
    jp Jump_000_16dd


Call_004_5829:
    ld a, [$cfb8]
    cp $64
    jr z, jr_004_584a

    inc a
    ld d, a
    ld hl, $4dc0
    ld b, $16
    call Call_000_3e84
    ld hl, $cfa7
    ldh a, [$98]
    sub [hl]
    ld [hl-], a
    ldh a, [$97]
    sbc [hl]
    ld [hl-], a
    ldh a, [$96]
    sbc [hl]
    ld [hl-], a
    ret


jr_004_584a:
    ld hl, $cfa5
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    add h
    sub a
    adc a
    ld a, a
    adc a
    adc [hl]
    adc b
    adc l
    sub e
    sub d
    ld c, [hl]
    adc e
    add h
    sub l
    add h
    adc e
    ld a, a
    sub h
    adc a
    ld d, b

Call_004_5866:
    ld bc, $000a
    ld a, $7f
    jp Jump_000_166e


Call_004_586e:
jr_004_586e:
    ld [hl+], a
    ld [hl-], a
    add hl, de
    dec c
    jr nz, jr_004_586e

    ret


    xor a
    ldh [$ba], a
    call Call_000_16dd
    call Call_000_231c
    ld b, $1c
    ld hl, $581e
    call Call_000_3e84

Jump_004_5886:
    ld a, [$d07c]
    cp $04
    jp z, Jump_004_59d3

    call Call_004_5e98
    ld b, $1c
    ld hl, $617f
    call Call_000_3e84
    ld hl, $c3a3
    ld de, $d163
    xor a
    ld c, a
    ldh [$8c], a
    ld [$cf2c], a

Jump_004_58a6:
    ld a, [de]
    cp $ff
    jp z, Jump_004_59ce

    push bc
    push de
    push hl
    ld a, c
    push hl
    ld hl, $d2b4
    call Call_000_139a
    pop hl
    call Call_000_1723
    ldh a, [$8c]
    ld [$cf91], a
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_004_58d3

    call Call_000_154a
    jr z, jr_004_58d3

    ld a, $ff
    ldh [$8c], a

jr_004_58d3:
    ld b, $1c
    ld hl, $5901
    call Call_000_3e84
    ld a, [$cf91]
    inc a
    ldh [$8c], a
    call Call_000_1132
    pop hl
    push hl
    ld a, [$cc35]
    and a
    jr z, jr_004_58fc

    dec a
    ld b, a
    ld a, [$cf91]
    cp b
    jr nz, jr_004_58fc

    dec hl
    dec hl
    dec hl
    ld a, $ec
    ld [hl+], a
    inc hl
    inc hl

jr_004_58fc:
    ld a, [$d07c]
    cp $03
    jr z, jr_004_592f

    cp $05
    jr z, jr_004_596a

    push hl
    ld bc, $000e
    add hl, bc
    ld de, $cf9b
    call Call_000_12de
    pop hl
    push hl
    ld bc, $0015
    ldh a, [$fa]
    set 0, a
    ldh [$fa], a
    add hl, bc
    ld a, $60
    call Call_000_3eb4
    ldh a, [$fa]
    res 0, a
    ldh [$fa], a
    call Call_004_5a80
    pop hl
    jr jr_004_5949

jr_004_592f:
    push hl
    ld a, $43
    call Call_000_3eb4
    pop hl
    ld de, $595c
    ld a, c
    and a
    jr nz, jr_004_5940

    ld de, $5961

jr_004_5940:
    push hl
    ld bc, $001d
    add hl, bc
    call Call_000_1723
    pop hl

jr_004_5949:
    ld bc, $000a
    add hl, bc
    call Call_000_1303
    pop hl
    pop de
    inc de
    ld bc, $0028
    add hl, bc
    pop bc
    inc c
    jp Jump_004_58a6


    add b
    add c
    adc e
    add h
    ld d, b
    adc l
    adc [hl]
    sub e
    ld a, a
    add b
    add c
    adc e
    add h
    ld d, b

jr_004_596a:
    push hl
    ld hl, $71e5
    ld b, $00
    ld a, [$cf97]
    dec a
    add a
    rl b
    ld c, a
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
    ld de, $59c5

jr_004_599b:
    ld a, [hl+]
    and a
    jr z, jr_004_59b4

    inc hl
    inc hl
    cp $02
    jr nz, jr_004_599b

    dec hl
    dec hl
    ld b, [hl]
    ld a, [$d155]
    inc hl
    inc hl
    inc hl
    cp b
    jr nz, jr_004_599b

    ld de, $59c0

jr_004_59b4:
    pop hl
    push hl
    ld bc, $001d
    add hl, bc
    call Call_000_1723
    pop hl
    jr jr_004_5949

    add b
    add c
    adc e
    add h
    ld d, b
    adc l
    adc [hl]
    sub e
    ld a, a
    add b
    add c
    adc e
    add h
    ld d, b

Jump_004_59ce:
    ld b, $0a
    call Call_000_3e05

Jump_004_59d3:
    ld hl, $d72f
    ld a, [hl]
    push af
    push hl
    set 6, [hl]
    ld a, [$d07c]
    cp $f0
    jr nc, jr_004_59fd

    add a
    ld hl, $5a2c
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_3c36

jr_004_59f0:
    pop hl
    pop af
    ld [hl], a
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    jp Jump_000_3de0


jr_004_59fd:
    and $0f
    ld hl, $5a1a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [$cf06]
    ld hl, $d2b4
    call Call_000_139a
    pop hl
    call Call_000_3c36
    jr jr_004_59f0

    ld d, [hl]
    ld e, d
    ld h, b
    ld e, d
    ld h, l
    ld e, d
    ld l, d
    ld e, d
    ld e, e
    ld e, d
    ld d, c
    ld e, d
    ld l, a
    ld e, d
    ld [hl], h
    ld e, d
    ld a, c
    ld e, d
    jr c, @+$5c

    dec a
    ld e, d
    ld b, d
    ld e, d
    ld b, a
    ld e, d
    ld c, h
    ld e, d
    dec a
    ld e, d
    rla
    scf
    ld b, c
    jr z, jr_004_5a8d

    rla
    ld b, a
    ld b, c
    jr z, jr_004_5a92

    rla
    ld h, b
    ld b, c
    jr z, jr_004_5a97

    rla
    ld [hl], a
    ld b, c
    jr z, jr_004_5a9c

    rla
    adc l
    ld b, c
    jr z, jr_004_5aa1

    rla
    sbc a
    ld b, c
    jr z, jr_004_5aa6

    rla
    cp c
    ld b, c
    jr z, jr_004_5aab

    rla
    db $d3
    ld b, c
    jr z, jr_004_5ab0

    rla
    db $eb
    ld b, c
    jr z, @+$52

    rla
    ld [bc], a
    ld b, d
    jr z, jr_004_5aba

    rla
    ld d, $42
    jr z, jr_004_5abf

    rla
    inc h
    ld b, d
    jr z, @+$52

    rla
    dec sp
    ld b, d
    jr z, jr_004_5ac9

    rla
    ld d, b
    ld b, d
    jr z, jr_004_5a89

jr_004_5a7e:
    ld b, $50

Call_004_5a80:
    ld hl, $cf1e
    ld a, [$cf2c]
    ld c, a
    ld b, $00

jr_004_5a89:
    add hl, bc
    call Call_000_3e0f

jr_004_5a8d:
    ld b, $fc
    call Call_000_3e05

jr_004_5a92:
    ld hl, $cf2c
    inc [hl]
    ret


jr_004_5a97:
    ld [hl], a
    cp a
    sbc e
    ld d, h
    push af

jr_004_5a9c:
    ld l, [hl]
    or h
    db $f4
    rra
    ret


jr_004_5aa1:
    and h
    db $e4
    ld d, d
    sub $f5

jr_004_5aa6:
    ld a, l
    add hl, hl
    pop hl
    xor d
    ld d, c

jr_004_5aab:
    xor l
    jr nc, jr_004_5b03

    ld d, $a8

jr_004_5ab0:
    sbc c
    and c
    add d
    ld hl, $4145
    ld l, b
    xor l
    jr jr_004_5ae4

jr_004_5aba:
    cp e
    ret z

    xor b
    inc h
    sbc c

jr_004_5abf:
    ld a, [hl+]
    adc c
    xor c
    ld a, b
    call $fb31
    ld a, [hl+]
    ld [hl+], a
    inc d

jr_004_5ac9:
    or l
    ld [hl+], a
    inc b
    jr nz, jr_004_5b11

    add hl, sp
    ld hl, $a555
    ld h, e
    add l
    add d
    add e
    sub e
    jr c, @-$4f

    ld hl, sp-$23
    ld c, c
    ld d, c
    sub d
    inc h
    add h
    rst $08
    jr nc, @+$80

    push hl

jr_004_5ae4:
    ld l, d
    ld c, b
    xor e
    sub l
    ld b, $0f
    dec d
    cp [hl]
    jr c, @+$01

    ld a, [c]
    ld hl, $8b68
    ld a, d
    ld c, b
    ld b, c
    db $eb
    ld b, c
    adc h
    ret nc

    ld d, c
    ld e, h
    jr nz, jr_004_5a7e

    ld h, c
    ld c, h
    dec hl
    push af
    ld h, a
    sub c

jr_004_5b03:
    or h
    dec d
    xor d
    add hl, bc
    ld d, [hl]
    rrca
    ld b, d
    xor d
    ld a, [de]
    ld e, [hl]
    ld [hl], $90
    adc e
    cp l

jr_004_5b11:
    ld b, [hl]
    call nc, $3bb9
    and e
    ld a, [hl-]
    or $af
    ld d, l
    adc a
    db $ed
    add hl, bc
    db $fc
    jp c, $b69e

    ld a, d
    ret


    ld c, [hl]
    sbc l
    jp hl


    ld l, c
    ld l, e
    or d
    pop bc
    ld c, d
    ld a, [bc]
    ld [hl], c
    ld h, l
    ld d, c
    ld e, b
    push hl
    cpl
    ld c, d
    rst $38
    and c
    ld d, b
    ld [$fabf], a
    inc de
    ld h, h
    jp c, $91a3

    add a
    and b
    and c
    rst $38
    db $fd
    ld b, e
    rst $38
    rst $38
    rst $38
    ldh a, [$6e]
    ld c, d
    sub e
    ld [hl], b
    pop hl
    cp $dc
    inc d
    ld h, c
    add l
    ld a, a
    ld d, l
    sbc e
    push hl
    ld h, h
    ld l, a
    db $76
    ld c, $9a
    ld a, [hl]
    add hl, bc
    add $e9
    ld [hl-], a
    jr jr_004_5bb9

    push de
    ld d, c
    ld a, [hl+]
    xor e
    ld e, a
    rst $38
    ld [$29a4], a
    add a
    ld [$66f8], a
    sbc a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld [c], a
    sub $5f
    ld a, a
    ld [c], a
    and [hl]
    rrca
    db $fd
    ld d, l
    ld [bc], a
    ld h, c
    push de
    ld de, $632e
    inc d
    sbc c
    ld b, [hl]
    add hl, sp
    ld [$e079], sp
    ld h, $30
    inc h
    call nc, $87a1

jr_004_5b91:
    sbc [hl]
    ld h, h
    ld a, a
    ld l, [hl]
    nop
    ld [hl], a
    ccf
    sbc l
    inc d
    db $f4
    sub a
    ld a, [$df8c]
    ld c, a
    ld bc, $05fa
    inc b
    ld d, l
    ld a, a
    ld d, h
    and $5f
    db $fd
    ld b, l
    pop hl
    ld l, a
    push af
    ld [$a388], a
    sbc d
    and d
    xor d
    ld d, d
    ld l, e
    ld h, e
    dec [hl]
    push af

jr_004_5bb9:
    ld c, [hl]
    ld a, [de]
    ld [hl-], a
    and e
    ld h, l
    ld e, a
    add sp, $68
    di
    dec d
    ld d, l
    ld a, [hl-]
    jr z, jr_004_5b91

    jp nc, $c6d4

    xor a
    ld e, a
    ld c, [hl]
    dec hl
    push de
    ld e, a
    add c
    ld c, b
    db $ed
    push de
    ld c, h
    ld l, b
    add sp, -$56
    adc d
    or l
    ld a, [bc]
    ld sp, hl
    dec bc
    db $fd
    ld e, a
    ld c, a
    ld [de], a
    cp l
    ld d, e
    ld a, [de]
    add l
    ld d, h
    pop af
    ld l, d
    ld hl, sp-$2e
    adc a
    ldh a, [$da]
    ld a, a
    pop de
    ld [$3f77], sp
    cp b
    sub h
    di
    rla
    push af
    rlca
    ld [$7d05], a
    inc a
    ld a, [hl-]
    adc b
    xor l
    inc hl
    ld a, d
    adc a
    ld d, $8e
    dec d
    ld hl, sp-$0b
    dec d
    ld c, a
    ld c, $8c
    inc d
    add l
    ld c, b
    xor b
    ldh a, [$ef]
    ld d, a
    push hl
    ld b, d
    dec bc
    push af
    ld c, a
    ld a, [de]
    and d
    ld l, e
    ld [c], a
    ld l, b
    rst $38
    dec hl
    rst $20
    db $fd
    db $10
    add b
    ld a, $29
    call Call_000_3eb4
    call Call_000_36f8
    call Call_000_3ddb
    call Call_000_1e6f
    call Call_000_231c
    jp Jump_000_29e1


Jump_004_5c36:
    ld a, [$d162]
    and a
    jp z, Jump_000_29e1

    xor a
    ld [$cc35], a
    ld [$d07c], a
    ld [$cfca], a
    call Call_000_11c8
    jr jr_004_5c56

Jump_004_5c4c:
    xor a
    ld [$cc35], a
    ld [$d07c], a
    call Call_000_11dd

Jump_004_5c56:
jr_004_5c56:
    jr nc, jr_004_5c64

Jump_004_5c58:
    call Call_000_3dd8
    call Call_000_3dc2
    call Call_000_1e6f
    jp Jump_000_29e1


jr_004_5c64:
    call Call_000_370f
    ld a, $04
    ld [$d124], a
    call Call_000_3010
    ld hl, $cd3d
    ld bc, $020c
    ld e, $05

jr_004_5c77:
    dec e
    jr z, jr_004_5c83

    ld a, [hl+]
    and a
    jr z, jr_004_5c83

    inc b
    dec c
    dec c
    jr jr_004_5c77

jr_004_5c83:
    ld hl, $cc24
    ld a, c
    ld [hl+], a
    ldh a, [$fb]
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, b
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_000_3aab
    push af
    call Call_000_371b
    pop af
    bit 1, a
    jp nz, Jump_004_5c4c

    ld a, [$cc28]
    ld b, a
    ld a, [$cc26]
    cp b
    jp z, Jump_004_5c58

    dec b
    cp b
    jr z, jr_004_5cc0

    dec b
    cp b
    jp z, Jump_004_5cd6

    ld c, a
    ld b, $00
    ld hl, $cd3d
    add hl, bc
    jp Jump_004_5ced


jr_004_5cc0:
    ld a, [$d162]
    cp $02
    jp c, Jump_004_5c36

    call Call_004_6205
    ld a, $04
    ld [$d07c], a
    call Call_000_11dd
    jp Jump_004_5c56


Jump_004_5cd6:
    call Call_000_0082
    xor a
    ld [$cc49], a
    ld a, $36
    call Call_000_3eb4
    ld a, $37
    call Call_000_3eb4
    call Call_000_2f66
    jp Jump_004_5c36


Jump_004_5ced:
    push hl
    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    pop hl
    ld a, [hl]
    dec a
    add a
    ld b, $00
    ld c, a
    ld hl, $5d09
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d355]
    jp hl


    ld d, d
    ld e, l
    dec de
    ld e, l
    ld h, [hl]
    ld e, l
    ld h, [hl]
    ld e, l
    xor e
    ld e, l
    cp e
    ld e, l
    push de
    ld e, l
    db $ed
    ld e, l
    dec [hl]
    ld e, [hl]
    bit 2, a
    jp z, Jump_004_5e8a

    call Call_000_0712
    jr z, jr_004_5d37

    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    ld hl, $5e30
    call Call_000_3c36
    jp Jump_004_5c4c


jr_004_5d37:
    call Call_000_2f9a
    ld a, [$d731]
    bit 3, a
    jr nz, jr_004_5d4c

    call Call_000_3683
    ld hl, $d72d
    set 1, [hl]
    jp Jump_004_5c36


jr_004_5d4c:
    call Call_000_1510
    jp Jump_004_5e84


    bit 1, a
    jp z, Jump_004_5e8a

    ld a, $3c
    call Call_000_3eb4
    ld a, [$cd6a]
    and a
    jp z, Jump_004_5c4c

    jp Jump_000_28d8


    bit 4, a
    jp z, Jump_004_5e8a

    ld b, $3d
    ld hl, $5b2d
    call Call_000_3e84
    ld hl, $d727
    bit 1, [hl]
    res 1, [hl]
    jp z, Jump_004_5c4c

    ld a, [$cf90]
    cp $54
    jr z, jr_004_5d88

    ld a, $01
    jr jr_004_5d8a

jr_004_5d88:
    ld a, $02

jr_004_5d8a:
    ld [$d472], a
    ld a, $07
    ld [$cf90], a
    ld [$d151], a
    call Call_000_2fe4
    ld a, [$cd6a]
    and a
    jr z, jr_004_5da4

    call Call_000_3dd8
    jp Jump_004_5e84


jr_004_5da4:
    xor a
    ld [$d472], a
    jp Jump_004_5c4c


    bit 3, a
    jp z, Jump_004_5e8a

    ld a, $5b
    call Call_000_3eb4
    call Call_000_3dd8
    jp Jump_004_5e84


    bit 0, a
    jp z, Jump_004_5e8a

    xor a
    ld [$d35c], a
    ld hl, $5dd0
    call Call_000_3c36
    call Call_000_3dd8
    jp Jump_004_5e84


    rla
    and a
    ld b, b
    dec l
    ld d, b
    ld a, $1d
    ld [$cf90], a
    ld [$d151], a
    call Call_000_2fe4
    ld a, [$cd6a]
    and a
    jp z, Jump_004_5c4c

    call Call_000_3dd8
    jp Jump_004_5e84


    call Call_000_0712
    jr z, jr_004_5e04

    ld a, [$cf91]
    ld hl, $d2b4
    call Call_000_139a
    ld hl, $5e2b
    call Call_000_3c36
    jp Jump_004_5c4c


jr_004_5e04:
    ld hl, $5e26
    call Call_000_3c36
    ld hl, $d731
    set 3, [hl]
    set 6, [hl]
    call Call_000_1510
    ld hl, $d72d
    set 1, [hl]
    res 4, [hl]
    ld c, $3c
    call Call_000_372f
    call Call_000_3dd8
    jp Jump_004_5e84


    rla
    jp z, $2d40

    ld d, b
    rla
    jp hl


    ld b, b
    dec l
    ld d, b
    rla
    dec b
    ld b, c
    dec l
    ld d, b
    ld hl, $d18c
    ld a, [$cf91]
    ld bc, $002c
    call Call_000_3a74
    ld a, [hl+]
    ldh [$95], a
    ld a, [hl]
    ldh [$96], a
    ld a, $05
    ldh [$99], a
    ld b, $02
    call Call_000_38b2
    ld bc, $ffdf
    add hl, bc
    ld a, [hl-]
    ld b, a
    ldh a, [$98]
    sub b
    ld b, [hl]
    ldh a, [$97]
    sbc b
    jp nc, Jump_004_5e76

    ld a, [$cc2b]
    push af
    ld a, $14
    ld [$cf90], a
    ld [$d151], a
    call Call_000_2fe4
    pop af
    ld [$cc2b], a
    jp Jump_004_5c4c


Jump_004_5e76:
    ld hl, $5e7f
    call Call_000_3c36
    jp Jump_004_5c4c


    rla
    add hl, de
    ld b, c
    dec l
    ld d, b

Jump_004_5e84:
    call Call_000_3dc2
    jp Jump_000_28d8


Jump_004_5e8a:
    ld hl, $5e93
    call Call_000_3c36
    jp Jump_004_5c4c


    rla
    ld l, $41
    dec l
    ld d, b

Call_004_5e98:
    ld hl, $c3b4
    ld bc, $0028
    ld a, $06

jr_004_5ea0:
    ld [hl], $7f
    add hl, bc
    dec a
    jr nz, jr_004_5ea0

    ret


Jump_004_5ea7:
    call Call_000_3700
    call Call_000_3e03

Jump_004_5ead:
    ld a, [$d12a]
    dec a
    jr nz, jr_004_5ebb

    ld hl, $5fd4
    call Call_000_3c36
    jr jr_004_5edd

jr_004_5ebb:
    ld hl, $cf8a
    ld [hl], $1c
    inc hl
    ld [hl], $d3
    xor a
    ld [$cf92], a
    ld a, $03
    ld [$cf93], a
    ld a, [$cc2c]
    ld [$cc26], a
    call Call_000_2ae0
    ld a, [$cc26]
    ld [$cc2c], a
    jr nc, jr_004_5ee9

jr_004_5edd:
    call Call_000_36f8
    call Call_000_36a3
    call Call_000_231c
    jp Jump_000_29e1


jr_004_5ee9:
    ld a, $7f
    ld [$c3f5], a
    ld [$c41d], a
    ld [$c445], a
    ld [$c46d], a
    call Call_000_3bd9
    xor a
    ld [$cc35], a
    ld a, [$cf90]
    cp $06
    jp z, Jump_004_5f2e

    ld a, $06
    ld [$d124], a
    call Call_000_3010
    ld hl, $cc24
    ld a, $0b
    ld [hl+], a
    ld a, $0e
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    inc a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl], a
    call Call_000_3aab
    call Call_000_3bd9
    bit 1, a
    jr z, jr_004_5f2e

    jp Jump_004_5ea7


Jump_004_5f2e:
jr_004_5f2e:
    ld a, [$cf90]
    ld [$d11d], a
    call Call_000_2ec4
    call Call_000_3813
    ld a, [$cf90]
    cp $06
    jr nz, jr_004_5f51

    ld a, [$d731]
    bit 5, a
    jr z, jr_004_5f80

    ld hl, $5fd9
    call Call_000_3c36
    jp Jump_004_5ea7


jr_004_5f51:
    ld a, [$cc26]
    and a
    jr nz, jr_004_5fb4

    ld [$d151], a
    ld a, [$cf90]
    cp $c4
    jr nc, jr_004_5f91

    ld hl, $6003
    ld de, $0001
    call Call_000_3da7
    jr c, jr_004_5f80

    ld a, [$cf90]
    ld hl, $5fde
    ld de, $0001
    call Call_000_3da7
    jr c, jr_004_5f91

    call Call_000_2fe4
    jp Jump_004_5ea7


jr_004_5f80:
    xor a
    ld [$d151], a
    call Call_000_2fe4
    ld a, [$cd6a]
    and a
    jp z, Jump_004_5ea7

    jp Jump_000_2a72


jr_004_5f91:
    ld a, [$cfca]
    push af
    call Call_000_2fe4
    ld a, [$cd6a]
    cp $02
    jp z, Jump_004_5fad

    call Call_000_3dd8
    call Call_000_3dc2
    pop af
    ld [$cfca], a
    jp Jump_004_5ead


Jump_004_5fad:
    pop af
    ld [$cfca], a
    jp Jump_004_5ea7


jr_004_5fb4:
    call Call_000_3001
    ld a, [$d123]
    and a
    jr nz, jr_004_5fcb

    ld a, [$cf90]
    call Call_000_2f35
    jr c, jr_004_5fcb

    call Call_000_2c51
    inc a
    jr z, jr_004_5fd1

jr_004_5fcb:
    ld hl, $d31c
    call Call_000_2fec

jr_004_5fd1:
    jp Jump_004_5ea7


    rla
    ld c, h
    ld b, c
    dec l
    ld d, b
    rla
    ld h, [hl]
    ld b, c
    dec l
    ld d, b
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$31

    inc [hl]
    dec [hl]
    ld [hl], $3c
    dec a
    ld a, $41
    ld b, d
    ld b, e
    ld b, h
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    rst $38
    dec e
    ld b, a
    ld c, c
    ld c, h
    ld c, l
    ld c, [hl]
    rst $38
    call Call_000_3df2
    call Call_000_16dd
    call Call_000_231c
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    call Call_004_604c
    ld a, $2e
    call Call_000_3eb4
    ld b, $0d
    call Call_000_3e05
    call Call_000_3de0
    call Call_000_3852
    call Call_000_3df2
    call Call_000_3683
    call Call_000_36f8
    call Call_000_3e03
    call Call_000_2f66
    ld b, $01
    ld hl, $6f80
    call Call_000_3e84
    call Call_000_1e6f
    pop af
    ldh [$d7], a
    jp Jump_000_29e9


Call_004_604c:
    ld de, $5a97
    ld bc, $0401
    ld a, $3b
    call Call_000_3eb4
    call Call_000_0061
    ld hl, $c3c8
    ld a, $7f
    call Call_004_618a
    ld hl, $c3c9
    call Call_004_618a
    ld hl, $9070
    ld de, $9000
    ld bc, $01c0
    call Call_000_00b1
    ld hl, $5c24
    ld de, $9770
    ld bc, $0080
    push bc
    call Call_004_6131
    ld hl, $5cb4
    ld de, $9600
    ld bc, $0170
    call Call_004_6131
    pop bc
    ld hl, $5e24
    ld de, $8d80
    call Call_004_6131
    ld hl, $691b
    ld de, $9200
    ld bc, $0400
    ld a, $03
    call Call_000_009d
    ld hl, $4e18
    ld de, $00d0
    add hl, de
    ld de, $8d60
    ld bc, $0010
    ld a, $04
    push bc
    call Call_000_009d
    pop bc
    ld hl, $5ca4
    ld de, $8d70
    call Call_004_6131
    call Call_000_007b
    ld hl, $cd3d
    ld a, $13
    ld [hl+], a
    dec a
    ld [hl+], a
    ld [hl], $01
    ld hl, $c3a0
    call Call_004_6152
    ld hl, $cd3d
    ld a, $11
    ld [hl+], a
    dec a
    ld [hl+], a
    ld [hl], $03
    ld hl, $c469
    call Call_004_6152
    ld hl, $c468
    ld a, $d7
    call Call_004_618a
    ld hl, $c47b
    call Call_004_618a
    ld hl, $c45a
    ld de, $6149
    call Call_000_1723
    ld hl, $c3ca
    ld de, $6136
    call Call_000_1723
    ld hl, $c3cf
    ld de, $d157
    call Call_000_1723
    ld hl, $c3f8
    ld de, $d346
    ld c, $e3
    call Call_000_13ad
    ld hl, $c421
    ld de, $da40
    ld bc, $4103
    call Call_000_3c5b
    ld [hl], $d6
    inc hl
    ld de, $da42
    ld bc, $8102
    jp Jump_000_3c5b


Call_004_6131:
    ld a, $3d
    jp Jump_000_009d


    adc l
    add b
    adc h
    add h
    di
    ld c, [hl]
    adc h
    adc [hl]
    adc l
    add h
    sbc b
    di
    ld c, [hl]
    sub e
    adc b
    adc h
    add h
    di
    ld d, b
    db $76
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    db $76
    ld d, b

Call_004_6152:
    ld a, $79
    ld de, $7a7b
    call Call_004_6175
    call Call_004_6182
    ld a, [$cd3d]
    ld e, a
    ld d, $00
    ld c, $06

jr_004_6165:
    ld [hl], $7c
    add hl, de
    ld [hl], $78
    call Call_004_6182
    dec c
    jr nz, jr_004_6165

    ld a, $7d
    ld de, $777e

Call_004_6175:
    ld [hl+], a
    ld a, [$cd3e]
    ld c, a
    ld a, d

jr_004_617b:
    ld [hl+], a
    dec c
    jr nz, jr_004_617b

    ld a, e
    ld [hl], a
    ret


Call_004_6182:
    ld a, [$cd3f]

jr_004_6185:
    inc hl
    dec a
    jr nz, jr_004_6185

    ret


Call_004_618a:
    ld de, $0014
    ld c, $08

jr_004_618f:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_004_618f

    ret


    ld a, [$d72d]
    bit 6, a
    jp nz, Jump_000_1d10

    ld a, $3f
    call Call_000_3eb4
    call Call_000_36f8
    jp Jump_000_28cf


    xor a
    ldh [$ba], a
    call Call_000_16dd
    call Call_000_231c
    ld hl, $5df2
    ld b, $01
    call Call_000_3e84
    call Call_000_36f8
    call Call_000_36a3
    call Call_000_231c
    jp Jump_000_29e1


    call Call_004_6205
    ld a, [$cd3d]
    call Call_004_61d7
    ld a, [$cc26]
    call Call_004_61d7
    jp Jump_004_5886


Call_004_61d7:
    push af
    ld hl, $c3a0
    ld bc, $0028
    call Call_000_3a74
    ld c, $28
    ld a, $7f

jr_004_61e5:
    ld [hl+], a
    dec c
    jr nz, jr_004_61e5

    pop af
    ld hl, $c300
    ld bc, $0010
    call Call_000_3a74
    ld de, $0004
    ld c, e

jr_004_61f7:
    ld [hl], $a0
    add hl, de
    dec c
    jr nz, jr_004_61f7

    call Call_000_373e
    ld a, $ae
    jp Jump_000_2238


Call_004_6205:
    ld a, [$cc35]
    and a
    jr nz, jr_004_6213

    ld a, [$cf91]
    inc a
    ld [$cc35], a
    ret


jr_004_6213:
    xor a
    ld [$d07c], a
    ld a, [$cc35]
    dec a
    ld b, a
    ld a, [$cc26]
    ld [$cd3d], a
    cp b
    jr nz, jr_004_622d

    xor a
    ld [$cc35], a
    ld [$d07c], a
    ret


jr_004_622d:
    ld a, b
    ld [$cc35], a
    push hl
    push de
    ld hl, $d163
    ld d, h
    ld e, l
    ld a, [$cc26]
    add l
    ld l, a
    jr nc, jr_004_6240

    inc h

jr_004_6240:
    ld a, [$cc35]
    add e
    ld e, a
    jr nc, jr_004_6248

    inc d

jr_004_6248:
    ld a, [hl]
    ldh [$95], a
    ld a, [de]
    ld [hl], a
    ldh a, [$95]
    ld [de], a
    ld hl, $d16a
    ld bc, $002c
    ld a, [$cc26]
    call Call_000_3a74
    push hl
    ld de, $cc97
    ld bc, $002c
    call Call_000_00b1
    ld hl, $d16a
    ld bc, $002c
    ld a, [$cc35]
    call Call_000_3a74
    pop de
    push hl
    ld bc, $002c
    call Call_000_00b1
    pop de
    ld hl, $cc97
    ld bc, $002c
    call Call_000_00b1
    ld hl, $d272
    ld a, [$cc26]
    call Call_000_3a6a
    push hl
    ld de, $cc97
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d272
    ld a, [$cc35]
    call Call_000_3a6a
    pop de
    push hl
    ld bc, $000b
    call Call_000_00b1
    pop de
    ld hl, $cc97
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d2b4
    ld a, [$cc26]
    call Call_000_3a6a
    push hl
    ld de, $cc97
    ld bc, $000b
    call Call_000_00b1
    ld hl, $d2b4
    ld a, [$cc35]
    call Call_000_3a6a
    pop de
    push hl
    ld bc, $000b
    call Call_000_00b1
    pop de
    ld hl, $cc97
    ld bc, $000b
    call Call_000_00b1
    ld a, [$cc35]
    ld [$cd3d], a
    xor a
    ld [$cc35], a
    ld [$d07c], a
    pop de
    pop hl
    ret


    ld a, [$cf90]
    ld [$d0b4], a
    call Call_000_132f
    ld hl, $d0cb
    push hl
    ld a, [$d0df]
    ld b, a
    ld c, $00
    ld hl, $632d

jr_004_6306:
    ld a, [hl+]
    cp $ff
    jr z, jr_004_6319

    cp b
    jr z, jr_004_6311

    inc c
    jr jr_004_6306

jr_004_6311:
    pop hl
    ld b, $02
    ld a, $10
    jp Jump_000_3eb4


jr_004_6319:
    pop hl
    ld c, $00
    ret


    ld a, [$d11d]
    dec a
    ld hl, $632d
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$d11d], a
    ret


    dec b
    dec c
    ld c, $12
    add hl, de
    ld e, h
    jr nz, jr_004_6357

    inc h
    ld h, $3d
    scf
    ld a, [hl-]
    dec sp
    ccf
    ld b, $42
    ld b, h
    ld b, l
    ld h, e
    ld c, b
    ld c, h
    ld d, d
    ld d, l
    ld d, a
    ld e, c
    ld e, d
    ld e, e
    ld e, [hl]
    ld h, h
    ld h, [hl]
    ld l, b
    ld [hl], e
    ld [hl], l
    db $76
    ld a, b
    ld a, c
    ld a, [hl]
    add c
    add d
    add a
    adc d

jr_004_6357:
    adc a
    sbc h
    ld d, [hl]
    sub l
    sbc c
    sbc l
    and c
    and h
    rrca
    inc de
    add hl, sp
    ld b, [hl]
    sub h
    rst $38
    inc bc
    inc bc
    rrca
    rrca
    rra
    ld e, $1f
    jr jr_004_63ad

    jr nc, @+$81

    ld d, [hl]
    ld a, a
    ld c, c
    ld l, a
    ld e, c
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$18
    db $fc
    inc c
    cp $6a
    cp $92
    or $9a
    ccf
    ld [hl], $3e
    add hl, sp
    ld a, e
    ld c, a
    ld a, a
    ld c, c
    ccf
    jr nc, jr_004_63af

    db $10
    rra
    rra
    ld c, $0e
    db $fc
    ld l, h
    ld a, h
    sbc h
    sbc $f2
    cp $92
    db $fc
    inc c
    ld hl, sp+$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra

jr_004_63ad:
    ccf
    ccf

jr_004_63af:
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $fa
    cp $fa
    ccf
    scf
    ccf
    jr c, jr_004_6445

    ld e, a
    ld a, a
    ld d, b
    ccf
    jr nc, @+$21

    ld de, $1f1f
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    sbc $fa
    cp $0a
    db $fc
    inc c
    ld hl, sp-$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    inc de
    rra
    ld de, $181f
    rra
    rla
    rra
    inc d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra
    jr jr_004_6413

    inc c
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    inc b
    rlca
    rlca

jr_004_6413:
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$d0]
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    ld e, $1f
    jr jr_004_646f

    jr nc, @+$81

    ld d, [hl]
    ld a, a
    ld c, c
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$18
    db $fc
    inc c
    cp $6a
    cp $92

jr_004_6445:
    ld l, a
    ld e, c
    ld a, a
    db $76
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rra
    dec de
    rrca
    inc c
    rrca
    rrca
    rlca
    rlca
    or $9a
    db $fc
    ld l, h
    ld a, h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, Call_004_48f8
    or b
    or b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra

jr_004_646f:
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $fa
    ld a, a
    ld e, e
    ld a, a
    ld [hl], c
    ld a, a
    ld e, h
    ccf
    dec sp
    rra
    jr jr_004_649f

    inc c
    rrca
    rrca
    rlca
    rlca
    cp $da
    db $fc
    adc h
    db $fc
    inc a
    cp $d2
    cp $12

jr_004_649f:
    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    inc de
    rra
    ld de, $181f
    rra
    rla
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    jr jr_004_64d5

    inc c
    rlca
    rlca
    rra
    inc e
    ccf
    jr c, jr_004_64f1

    rra
    ld c, $0e

jr_004_64d5:
    ld hl, sp-$68
    ldh a, [rNR10]
    ld hl, sp+$68
    ld hl, sp-$18
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_004_64fd

    nop
    inc bc
    nop
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $11
    ccf
    inc [hl]

jr_004_64f1:
    ld a, a
    ld d, d
    ld a, l
    ld b, d
    nop
    ret nz

    nop
    ldh [rNR10], a
    ldh a, [$38]

Call_004_64fc:
    ret z

jr_004_64fd:
    ld a, b
    adc b
    db $fc
    inc l
    cp $4a
    cp [hl]
    ld b, d
    ccf
    jr nc, jr_004_6546

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    add hl, sp
    ccf
    ld d, $1f
    ld de, $0e1f
    ld c, $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $f2
    sbc h
    db $fc
    ld l, b
    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    nop
    inc bc
    nop
    rlca
    inc c
    dec bc
    rra
    db $10
    rra
    db $10
    ccf
    jr nc, jr_004_65b1

    ld d, b
    ld a, a
    ld b, b
    nop
    ret nz

    nop
    ldh [$30], a
    ret nc

    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    cp $0a
    cp $02
    ccf

jr_004_6546:
    jr nc, jr_004_6587

    jr c, jr_004_65c9

    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    inc c
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    nop
    rlca
    nop
    rrca
    nop
    rra
    inc bc
    inc e
    rlca
    jr jr_004_658f

    ld [de], a
    dec de
    inc d
    rra
    inc d
    nop
    ldh [rP1], a
    ldh a, [$60]
    sbc b
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$68

jr_004_6583:
    ld hl, sp-$68
    rra
    db $10

jr_004_6587:
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc

jr_004_658f:
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld hl, sp+$18
    ld hl, sp+$78
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh [$e0], a
    jr nz, jr_004_6583

    ret nz

    ret nz

    nop
    nop
    nop
    inc bc
    nop
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $11

jr_004_65b1:
    ccf
    inc [hl]
    ld a, a
    ld d, d
    nop
    nop
    nop
    ret nz

    nop
    ldh [rNR10], a
    ldh a, [$38]
    ret z

    ld a, b
    adc b
    db $fc
    inc l
    cp $4a
    ld a, l
    ld b, d
    ld a, a
    ld [hl], b

jr_004_65c9:
    ld a, [hl]
    ld e, c
    ccf
    ccf
    dec de
    rra
    ld c, $0f
    add hl, bc
    rrca
    rlca
    rlca
    cp [hl]
    ld b, d
    db $fc
    inc c
    ld [hl], h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, $c878
    or b
    or b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc c
    dec bc
    rra
    db $10
    rra
    db $10
    ccf
    jr nc, @+$81

    ld d, b
    nop
    nop
    nop
    ret nz

    nop
    ldh [$30], a
    ret nc

    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    cp $0a
    ld a, a
    ld b, b
    ld a, a
    ld [hl], b
    ld a, a
    ld e, b
    ccf
    ccf
    rra
    rra
    inc c
    rrca
    dec bc
    rrca
    rlca
    rlca
    cp $02
    db $fc
    inc c
    db $fc
    inc e
    cp $f2
    cp $f2
    inc a
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
    ld bc, $071e
    jr jr_004_6651

    ld [de], a
    dec de
    inc d
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [$60]
    sbc b
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$68
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc h
    ccf

jr_004_6651:
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_004_667d

    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    nop
    nop
    ld b, $00
    ld b, $00
    nop
    nop

jr_004_667d:
    nop
    nop
    ldh [$e0], a
    ld [de], a
    ldh a, [$08]
    ld hl, sp+$12
    rra
    daa
    dec a
    cpl
    jr c, jr_004_670b

    ld d, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld c, c
    ld a, a
    ld c, a
    jr nc, @+$32

    ld c, b
    ld hl, sp-$1c
    cp h
    db $f4
    inc e
    cp $4a
    cp $4e
    ld a, [hl]
    sub d
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    rlca
    rlca
    ld [$100f], sp
    rra
    nop
    nop
    nop
    nop
    jr jr_004_66bb

jr_004_66bb:
    jr jr_004_66bd

jr_004_66bd:
    nop
    nop
    ldh [$e0], a
    inc d
    ldh a, [$08]
    ld hl, sp+$20
    ccf
    jr nz, jr_004_6708

    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ccf
    scf
    ld a, a
    ld e, b
    ld a, a
    ld c, a
    jr nc, jr_004_6705

    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld e, $f2
    db $fc
    db $ec
    cp $1a
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $c403


    rlca
    ld [$0c0f], sp
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc

jr_004_6705:
    rra
    rla
    ld e, a

jr_004_6708:
    db $10
    rra
    inc d

jr_004_670b:
    rra
    inc d
    rra
    jr jr_004_674f

    inc h
    ccf
    daa
    jr jr_004_672d

    inc b
    db $fc
    add h
    db $fc
    db $e4
    db $fc
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop

jr_004_672d:
    rlca
    rlca
    ld [$100f], sp
    rra
    ld [de], a
    rra
    nop
    nop
    ld b, $00
    ld b, $00
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$0a]
    ld hl, sp+$48
    ld hl, sp+$27
    dec a
    cpl
    jr c, jr_004_67c9

    ld d, d
    ld a, a
    ld b, d
    ld a, $31

jr_004_674f:
    ld a, [hl]
    ld c, c
    ld a, a
    ld c, a
    jr nc, @+$32

    db $e4
    cp h
    db $f4
    inc e
    cp $4a
    cp $42
    ld a, h
    adc h
    ld [hl], b
    sub b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    rlca
    rlca
    ld [$500f], sp
    rra
    db $10
    rra
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$20
    ccf
    jr nz, @+$41

    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ccf
    scf
    rrca
    ld [$0707], sp
    nop
    nop
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld e, $f2
    db $fc
    db $ec
    cp $1a
    cp $f2
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld h, h
    rlca
    ld l, b
    rrca
    inc c
    rrca
    rrca
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add d
    cp $0f
    ld [$0a2f], sp

jr_004_67c9:
    rrca
    ld a, [bc]
    rrca
    ld [$0704], sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    jp nz, $f27e

    ld a, [hl]
    db $fc
    ld c, h
    ld hl, sp+$08
    ldh a, [rSVBK]
    ldh a, [$90]
    ldh a, [$90]
    ld h, b
    ld h, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    inc e
    inc de
    dec sp
    inc a
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    jr c, @-$36

    call c, $fc3c
    db $ec
    cp $0a
    cp $42
    ccf
    jr nc, jr_004_6846

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, c
    ccf
    jr c, jr_004_6827

    ld e, $11
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $92
    db $fc
    inc e
    add sp, $78
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca

jr_004_6827:
    rrca
    ld [$101f], sp
    rra
    db $10
    ccf
    jr nc, jr_004_686f

    jr c, jr_004_68b1

    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    inc e
    cp $fa
    cp $f2
    ccf

jr_004_6846:
    scf
    ccf
    jr c, @+$81

    ld e, a
    ld a, a
    ld d, b
    ccf
    jr c, jr_004_6867

    ld e, $11
    rra
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    cp $fa
    cp $0a
    db $fc
    inc e
    add sp, $78
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca

jr_004_6867:
    rrca
    ld [$1817], sp
    dec sp
    inc [hl]
    ld a, l
    ld b, d

jr_004_686f:
    ccf
    ccf
    rra
    db $10
    rra
    inc d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc e
    db $fc
    db $fc
    db $fc
    db $fc

jr_004_6883:
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    jr nz, jr_004_6883

    ret nz

    ret nz

    rlca
    rlca
    rrca
    rrca
    rra
    dec e
    rra
    jr jr_004_68ed

    ld h, $3f
    add hl, sp

jr_004_68b1:
    ld a, a
    ld d, [hl]
    ld a, a
    ld b, b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$48
    ld hl, sp+$18
    db $fc
    ld h, h
    db $fc
    sbc h
    cp $6a
    cp $02
    ld l, $31
    rra
    jr @+$3f

    ld h, $3f
    daa
    dec de
    ld e, $1f
    rra
    rrca
    rrca
    ld c, $0e
    ld [hl], h
    adc h
    ld hl, sp+$18
    cp h
    ld h, h
    db $fc
    db $e4
    ld e, b
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [rSVBK]
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra

jr_004_68ed:
    ccf
    ccf
    ccf
    ccf
    ld l, a
    ld e, a
    ld [hl], l
    ld c, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    or $fa
    ld e, [hl]
    ld a, [c]
    ccf
    jr nc, jr_004_6923

    inc e
    ccf
    ccf
    ccf
    ccf
    inc d
    rra
    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc

jr_004_6916:
    inc c

jr_004_6917:
    ret c

    jr c, jr_004_6916

    db $fc
    db $fc
    db $fc
    jr z, jr_004_6917

    ld hl, sp-$08
    ld hl, sp-$08

jr_004_6923:
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rla
    ld e, $11
    rra
    inc e
    rra
    inc de
    rra
    inc e
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp h
    ld a, h
    db $fc
    db $fc

jr_004_6943:
    ld hl, sp+$58
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    inc bc
    inc bc
    rrca
    inc c
    inc e
    inc de
    rra
    db $10
    jr z, jr_004_69a6

    ld l, a
    ld d, [hl]
    ld a, a
    ld c, c
    ld l, a
    ld e, c
    ret nz

    ret nz

    ldh a, [$30]
    jr c, jr_004_6943

    ld hl, sp+$08
    inc d
    db $ec
    or $6a
    cp $92

jr_004_6983:
    or $9a
    ccf
    ld [hl], $3f
    add hl, sp
    ld e, a
    ld a, [hl]
    ld e, a
    ld a, a
    ccf
    ccf
    db $10
    rra
    add hl, sp
    ccf
    ld a, $3e
    db $fc
    ld l, h
    db $fc
    sbc h
    ld a, [$fa7e]
    cp $fc
    db $fc
    ld [$9cf8], sp
    db $fc
    ld a, h
    ld a, h
    inc bc

jr_004_69a6:
    inc bc
    rrca
    inc c
    inc e
    inc de
    rra
    db $10
    cpl
    jr nc, @+$81

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ret nz

    ret nz

    ldh a, [$30]
    jr c, jr_004_6983

    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $0a
    cp $02
    ccf
    jr nc, jr_004_6a27

    ld a, b
    ld d, a
    ld a, [hl]
    ld c, a
    ld [hl], e
    ccf
    inc sp
    inc e
    rra
    add hl, sp
    ccf
    ld a, $3e
    db $fc
    inc c
    ld a, [$ea1e]
    ld a, [hl]
    ld a, [c]
    adc $fc
    call z, $f838
    sbc h
    db $fc
    ld a, h
    ld a, h
    inc bc
    inc bc
    inc c
    rrca
    rra
    db $10
    ld de, $3e1e
    ld hl, $383f
    inc a
    daa
    ccf
    inc h
    ret nz

    ret nz

    ldh a, [$30]
    ld a, b
    adc b
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld h, h
    ld a, h
    sub h
    ccf
    jr c, jr_004_6a27

    db $10
    ld e, $19
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    db $fc
    inc d
    ld a, b
    add sp, -$48
    ld hl, sp+$1c
    db $e4
    sbc h
    db $e4
    db $fc
    db $fc
    ld [$f0f8], sp
    ldh a, [$03]
    inc bc

jr_004_6a27:
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    jr nc, jr_004_6aaf

    ld d, [hl]
    ld a, a
    ld c, c
    ld l, a
    ld e, c
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$28
    ld hl, sp-$68
    db $fc
    inc c
    cp $6a
    cp $92
    or $9a
    ccf
    ld [hl], $3e
    add hl, sp
    ld a, a
    ld c, a
    ld a, c
    ld c, a
    inc a
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    ld l, h
    ld a, h
    sbc h
    cp $f2
    sbc [hl]
    ld a, [c]
    inc a
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld d, e
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $ca
    ccf
    jr nc, jr_004_6ac7

    jr c, jr_004_6b09

    ld e, a
    ld [hl], b
    ld e, a
    jr nc, jr_004_6ace

    inc de
    rra
    ld de, $0e1f
    ld c, $fc
    inc c
    db $fc
    inc e
    cp $fa
    ld c, $fa
    inc c
    db $fc
    ret z

    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    inc sp

jr_004_6aaf:
    ccf
    inc a
    rra
    ld [de], a
    rra
    ld [de], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc

jr_004_6ac0:
    db $fc
    db $fc

jr_004_6ac2:
    inc a
    db $fc
    inc a
    rra
    inc e

jr_004_6ac7:
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    inc bc

jr_004_6ace:
    inc bc
    dec b
    rlca
    ld [$070f], sp
    rlca
    ld hl, sp+$38
    ldh a, [rSVBK]
    ret nc

    ldh a, [$50]
    ldh a, [$f0]
    jr nc, jr_004_6ac0

    jr nz, jr_004_6ac2

    ldh [$c0], a
    ret nz

    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ld a, a
    ld [hl], b
    ldh a, [$8f]
    ld a, a
    ld [hl], b
    ld a, a
    ld c, a
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    cp $0e
    rrca
    pop af
    cp $0e
    cp $f2
    or $4a
    ccf
    jr nc, jr_004_6b46

    add hl, sp

jr_004_6b09:
    ld [hl], a
    ld c, a
    ld a, [hl]
    ld c, c
    ld [hl], $3f
    jr jr_004_6b30

    rra
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h

jr_004_6b19:
    xor $f2
    ld a, [hl]
    sub d
    ld l, h
    db $fc
    jr jr_004_6b19

    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ld a, a
    ld [hl], b
    ldh a, [$8f]
    ld a, a

jr_004_6b30:
    ld [hl], b
    ld a, a
    ld c, a
    ld l, a
    ld d, a
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    cp $0e
    rrca
    pop af
    cp $0e
    cp $f2
    or $ea
    ccf

jr_004_6b46:
    inc sp
    ccf
    jr c, jr_004_6bc9

    ld d, a
    ld [hl], a
    ld e, b
    jr nc, jr_004_6b8e

    jr jr_004_6b70

    rra
    rra
    ld c, $0e
    db $fc
    call z, Call_000_1cfc

jr_004_6b59:
    cp $ea
    xor $1a
    inc c
    db $fc
    jr jr_004_6b59

    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_004_6bde

    ld c, a
    ccf

jr_004_6b70:
    jr nc, jr_004_6b91

    rra
    rra
    inc d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    ld c, $f2
    db $fc

jr_004_6b80:
    inc c
    db $fc

jr_004_6b82:
    db $fc

jr_004_6b83:
    call c, $1f2c
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    inc b
    inc bc

jr_004_6b8e:
    inc bc
    rlca
    rlca

jr_004_6b91:
    rrca
    rrca
    rlca
    rlca
    ld hl, sp+$08
    ldh a, [rSVBK]
    ret nc

    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, jr_004_6b80

    jr nz, jr_004_6b82

    ldh [$c0], a
    ret nz

    inc bc
    inc bc
    rrca
    inc c
    inc e
    inc de
    ccf
    jr nz, @+$41

    ld hl, $263f
    ld e, a
    ld a, b
    ccf
    ld h, $c0

jr_004_6bb6:
    ret nz

    ldh a, [$30]
    jr c, jr_004_6b83

    db $fc
    inc b
    db $fc
    add h
    db $fc
    ld h, h
    ld a, [$fc1e]
    ld h, h
    rra
    db $10
    ld c, $0d

jr_004_6bc9:
    dec bc
    rrca
    add hl, bc
    rrca
    dec de
    ld e, $3c
    cpl
    ccf
    daa
    rra
    rra
    ld hl, sp+$08
    ld [hl], b
    or b
    ret nc

    ldh a, [$90]
    ldh a, [$d8]

jr_004_6bde:
    ld a, b
    inc a
    db $f4
    db $fc
    db $e4
    ld hl, sp-$08
    inc bc
    inc bc
    rrca
    inc c
    inc e
    inc de
    ccf
    jr nz, @+$41

    jr nz, jr_004_6c2f

    jr nz, jr_004_6c51

    ld h, b
    ccf
    jr nz, jr_004_6bb6

    ret nz

    ldh a, [$30]
    jr c, @-$36

    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, [$fc06]
    inc b
    rra
    db $10
    rrca
    inc c
    dec bc
    rrca
    ld a, [bc]
    rrca
    ld a, [de]
    rra
    inc a
    cpl
    ccf
    daa
    rra
    rra
    ld hl, sp+$08
    ldh a, [$30]
    ret nc

    ldh a, [$50]
    ldh a, [$58]
    ld hl, sp+$3c
    db $f4
    db $fc
    db $e4
    ld hl, sp-$08
    inc bc
    inc bc
    rrca
    inc c
    inc e
    inc de
    ccf
    jr nz, jr_004_6c6d

    inc l

jr_004_6c2f:
    ccf
    inc sp
    ccf
    jr nc, jr_004_6c53

    inc e
    ret nz

    ret nz

    ldh a, [$30]
    jr c, @-$36

    db $fc
    inc b

jr_004_6c3d:
    db $fc
    inc b
    db $fc
    inc b
    db $ec
    db $f4
    db $fc
    sub h
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    dec b
    rlca
    ld b, $03
    inc e
    rra

jr_004_6c51:
    ccf
    inc hl

jr_004_6c53:
    rra
    rra
    ld hl, sp+$18
    ldh a, [$30]

jr_004_6c59:
    ldh [$e0], a
    jr nz, jr_004_6c3d

    ldh [$e0], a
    jr c, jr_004_6c59

    db $fc
    call nz, $f8f8
    inc bc
    rlca
    rrca
    add hl, bc
    rrca
    dec bc
    rra
    rra

jr_004_6c6d:
    ld [de], a
    rra
    daa
    ld a, b
    ld a, a
    ld a, [c]
    rst $18
    jp nc, $e0c0

    ldh a, [$90]
    ldh a, [$d0]
    ld hl, sp-$08
    ld c, b
    ld hl, sp-$1c
    ld e, $fe
    ld c, a
    ei
    ld c, e
    ld a, [hl]
    ld sp, hl
    ccf
    ld a, a
    rla
    dec e
    ccf
    jr z, jr_004_6cad

    db $10
    rrca
    inc c
    inc bc
    inc bc
    inc bc
    rlca
    ld a, [hl]
    sbc a
    db $fc
    cp $e8
    cp b
    db $fc
    inc d
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    ret nz

    ldh [$03], a
    rlca
    rrca
    ld [$080f], sp
    rra
    inc e

jr_004_6cad:
    rla
    rra
    jr nz, jr_004_6d30

    ld h, b
    rst $38
    ret nz

    rst $18
    ret nz

    ldh [$f0], a
    db $10
    ldh a, [rNR10]
    ld hl, sp+$38
    add sp, -$08
    inc b
    cp $06
    rst $38
    inc bc
    ei
    ld [hl], h
    ei
    cpl
    ld a, h
    inc de
    rra
    dec sp
    ld l, $17
    dec e
    ld c, $0f
    inc bc
    inc bc
    inc bc
    rlca
    ld l, $df
    db $f4
    ld a, $c8
    ld hl, sp-$24
    ld [hl], h
    add sp, -$48
    ld [hl], b
    ldh a, [$c0]
    ret nz

    ret nz

    ldh [rIF], a
    rrca
    rrca
    ld [$080f], sp
    rla
    rra
    jr nz, jr_004_6d2e

    add hl, hl
    ccf
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    db $10
    ldh a, [rNR10]
    ldh a, [$dc]
    db $fc
    and $66
    rra
    db $10
    rrca
    ld [$1f1f], sp
    ccf
    daa
    rra

jr_004_6d0e:
    ld e, $07
    inc b
    inc bc
    inc bc
    inc bc
    rlca
    and $66
    cp $be
    call c, $e0dc
    jr nz, jr_004_6d0e

    db $10
    ldh a, [$30]
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    inc bc
    rlca
    dec b
    rrca
    rrca
    dec bc
    rra

jr_004_6d2e:
    add hl, de
    rla

jr_004_6d30:
    rra
    ld [hl+], a
    ld a, a
    ld [hl], a
    ld hl, sp+$00
    nop
    ret nz

    ldh [$a0], a
    ldh a, [$f0]
    ret nc

    ld hl, sp-$68
    add sp, -$08
    ld b, h
    cp $ee
    rra
    rst $18
    sub $7e
    ld sp, hl
    ccf
    ld a, a
    rla
    dec e
    rra
    ld d, $0f
    inc c
    inc bc
    inc bc
    inc bc
    rlca
    ei
    ld l, e
    ld a, [hl]
    sbc a
    db $fc
    cp $e8
    cp b
    ld hl, sp+$68
    ldh a, [$30]
    ret nz

    ret nz

    ret nz

    ldh [$03], a
    inc bc
    inc c
    rrca

jr_004_6d69:
    db $10
    rra
    jr nz, @+$41

    ld [hl+], a
    ccf
    daa
    dec a
    ld c, a
    ld a, b
    sbc a
    ld [c], a
    ret nz

    ret nz

    jr nc, jr_004_6d69

    ld [$04f8], sp
    db $fc
    ld b, h
    db $fc
    db $e4
    cp h
    ld a, [c]
    ld e, $f9
    ld b, a
    adc a
    ld a, [c]
    ld l, [hl]
    ld a, c
    rra
    rla
    rra
    inc d
    rra
    dec de
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    pop af
    ld c, a
    db $76
    sbc [hl]
    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$28
    ldh a, [$f0]
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc c
    rrca

jr_004_6da9:
    db $10
    rra
    jr nz, jr_004_6dec

    jr nz, @+$41

    jr nz, @+$41

    ld b, b
    ld a, a
    add b
    rst $38
    ret nz

    ret nz

    jr nc, jr_004_6da9

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $01
    rst $38
    add b
    rst $38
    ld l, b
    ld a, a
    inc e
    rla
    rra
    rla
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ld bc, $16ff
    cp $38
    add sp, -$08
    add sp, -$08
    ld hl, sp-$10
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10

jr_004_6dec:
    rra
    jr z, jr_004_6e2e

    ld a, $33
    rra
    dec d
    rra
    inc d
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $c2
    ld a, $1f
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    ld [$070f], sp
    rlca
    jp nz, $c47e

    db $fc
    ld hl, sp-$08
    ldh [$60], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    rlca
    rlca
    rrca
    ld [$1817], sp
    ccf
    ld [hl], $7f

jr_004_6e2e:
    ld a, c
    ld l, a
    ld e, c
    ld a, a
    ld b, [hl]
    ld a, $31
    ldh [$e0], a
    ldh a, [rNR10]
    add sp, $18
    db $fc
    ld l, h
    cp $9e
    or $9a
    cp $62
    ld a, h
    adc h
    ld a, a
    ld a, b
    rst $38
    sbc a
    cp $9f
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    ld e, $1e
    cp $1e
    rst $38
    ld sp, hl
    ld a, a
    ld sp, hl
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ccf
    jr nc, @-$1e

    ldh [$f0], a
    db $10
    ld hl, sp+$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    db $fc
    inc c
    ld [hl], a
    ld a, b
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    cpl
    ld e, $1e
    xor $1e
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$1c1f], sp
    rra
    ld [de], a
    rra
    inc de
    rra
    inc e
    rra
    db $10
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    inc d
    db $fc
    inc d
    dec bc
    inc c
    rlca
    rlca
    dec bc
    rrca
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ld hl, sp+$08
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$38
    ld hl, sp+$38
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ld l, a
    ld d, [hl]
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    inc e
    cp $0a
    cp $02
    or $6a
    ccf
    jr nc, jr_004_6f46

    add hl, sp
    ld a, a
    ld c, a
    ld a, c
    ld c, a
    inc a
    ccf
    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    sbc [hl]
    ld a, [c]
    inc a
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $fa
    ccf

jr_004_6f46:
    scf
    ccf
    jr c, jr_004_6fc9

    ld e, a
    ld [hl], b
    ld e, a
    jr c, jr_004_6f8e

    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    cp $fa
    ld c, $fa
    inc e
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    dec e
    inc de
    rra
    db $10
    rra
    db $10
    rra
    ld d, $80
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    cp b
    ld a, b
    ld hl, sp+$18
    ldh a, [rNR10]
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc b
    rlca
    dec b

jr_004_6f8e:
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ldh a, [$50]
    and b
    ld h, b
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    rlca
    rlca
    rrca
    ld [$1817], sp
    ccf
    ld [hl], $7f
    ld [hl], b
    ld l, a
    ld d, d
    ld a, a
    ld b, b
    ld a, $31
    ldh [$e0], a
    ldh a, [rNR10]
    add sp, $18
    db $fc
    ld l, h
    cp $0e
    or $4a
    cp $02
    ld a, h
    adc h
    ld a, a
    ld a, b
    rst $38
    sub a

jr_004_6fc9:
    rst $38
    sub c
    ld a, a
    ld a, h
    inc sp
    ccf
    inc l
    ccf
    inc sp
    cpl
    ld e, $1e
    cp $1e
    rst $38
    jp hl


    rst $38
    adc c
    cp $3e
    call z, $34fc
    db $fc
    call z, Call_004_78f4
    ld a, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ccf
    jr nc, @-$1e

    ldh [$f0], a
    db $10
    ld hl, sp+$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    db $fc
    inc c
    ld [hl], a
    ld a, b
    rst $38
    xor a
    rst $38
    and b
    ld a, a
    ld a, h
    inc sp
    ccf
    ld a, $3f
    inc sp
    cpl
    ld e, $1e
    xor $1e
    rst $38
    push af
    rst $38
    dec b
    cp $3e
    call z, Call_004_7cfc
    db $fc
    sbc h
    db $f4
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$161f], sp
    rra
    db $10
    rra
    inc d
    rra
    db $10
    rra
    db $10
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    inc d
    db $fc
    inc d
    dec bc
    inc c
    rlca
    rlca
    rrca
    ld [$111f], sp
    rra
    ld de, $0f0e
    rrca
    dec bc
    inc b
    rlca
    ld hl, sp+$08
    ldh a, [$f0]
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp+$28
    ret nc

    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rIF], a
    rrca
    rra
    ld e, $1e
    rra
    jr jr_004_708c

    scf
    ccf
    ccf
    ccf
    ld [hl], a
    ld e, b
    ld a, a
    ld b, [hl]
    ldh a, [$f0]
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$18
    ld hl, sp-$14
    db $fc
    db $fc
    db $fc
    xor $1a
    cp $62
    ld a, $31
    dec a
    ld a, [hl-]
    ld a, a
    ld c, h
    ld a, a

jr_004_708c:
    ld c, h
    ccf
    ld a, [hl-]
    rra
    inc de
    rra
    rra
    ld c, $0e
    ld a, h
    adc h
    cp h
    ld e, h
    cp $32
    cp $32
    db $fc
    ld e, h
    ld hl, sp-$38
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    jr nc, jr_004_70ee

    ccf
    ccf
    ld [hl], b
    ld e, a
    ld [hl], b
    ld c, a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    inc c
    db $fc
    db $fc
    db $fc
    ld c, $fa
    ld c, $f2
    jr c, jr_004_70fe

    ccf
    jr c, jr_004_7149

    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    ld de, $1f1f
    ld c, $0e
    inc e
    db $ec
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rlca
    rlca
    rrca
    db $10
    rra
    ccf

jr_004_70ee:
    ccf
    ccf
    ccf
    ld d, $19
    rra
    ld d, $f0
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp-$08

jr_004_70fe:
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$1f
    db $10
    add hl, bc
    ld c, $06
    add hl, bc
    rlca
    add hl, bc
    inc bc
    rlca
    rlca
    dec b
    rrca
    rrca
    rrca
    rrca
    ld l, b
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    dec de
    inc e
    ccf
    jr nc, jr_004_71af

    db $76
    ld l, a
    ld d, b
    ld a, [hl]

jr_004_7134:
    ld b, c
    ret nz

    ret nz

    ldh a, [$f0]
    ret c

    jr c, jr_004_7134

    ld [$0cfc], sp
    cp $6e
    or $0a
    ld a, [hl]
    add d
    cpl
    jr nc, @+$81

    ld e, b

jr_004_7149:
    rst $30
    sbc a
    add sp, -$49
    ld h, b
    ld a, a
    jr c, @+$41

    ccf
    ccf
    ld e, $1e
    db $f4
    inc c
    cp $1a
    rst $28
    ld sp, hl
    rla
    db $ed
    ld b, $fe
    inc e
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    ccf
    inc sp
    ld a, a
    ld e, b
    db $e3
    cp a
    db $ec
    or e
    ld h, b
    ld a, a
    jr nc, @+$41

    ccf
    ccf
    ld e, $1e
    db $fc
    call z, $1afe
    rst $00
    db $fd
    scf
    call $fe06
    inc c
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0b0f], sp
    rra
    db $10

jr_004_71af:
    rla
    jr @+$21

    db $10
    rra
    db $10
    ldh a, [$f0]
    ld a, b
    ld hl, sp-$04
    ld a, h
    cp $7e
    cp [hl]
    ld a, [hl]
    cp $1e
    cp $1e
    cp $1e
    rrca
    ld [$1f17], sp
    jr z, @+$39

    ld hl, $213f
    ccf
    ld de, $1f1f
    rra
    rrca
    rrca
    cp h
    ld a, h
    ld hl, sp-$08
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ld e, $1f
    dec de
    inc e
    ccf
    jr nc, jr_004_7271

    db $76
    ld l, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld a, b

jr_004_71fc:
    ld hl, sp-$28
    jr c, jr_004_71fc

    inc c
    cp $6e
    or $0a
    ld a, [hl]
    ld b, c
    ld l, a
    ld [hl], b
    rst $38
    sbc b
    rst $30
    cp a
    add sp, -$09
    inc a
    ccf
    ccf
    ccf
    ld e, $1e
    ld a, [hl]
    add d
    db $f4
    inc c
    cp $1a
    rst $28
    ld sp, hl
    rra
    pop af
    ld e, $f2
    db $ec
    db $ec
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    ld a, a
    ld c, a
    ccf
    inc sp
    ld a, a
    ld e, b
    rst $20
    cp a
    ld hl, sp-$59
    ld h, b
    ld a, a
    ld a, $3f
    rra
    rra
    cp $f2
    db $fc
    call z, Call_000_12fe
    sbc a
    pop af
    ld a, a
    sub c
    ld c, $fe
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0b0f], sp
    rra
    db $10

jr_004_7271:
    rla
    jr jr_004_7293

    stop
    nop
    ldh a, [$f0]
    ld a, b
    ld hl, sp-$04
    ld a, h
    cp $7e
    cp [hl]
    ld a, [hl]
    cp $1e
    cp $1e
    rra
    db $10
    rrca
    ld [$1f17], sp
    jr z, @+$39

    ldh a, [rIE]
    ld hl, sp-$01
    ld a, a
    ld a, a

jr_004_7293:
    ld e, $1e
    cp $1e
    cp h
    ld a, h
    ld hl, sp-$08
    ld a, b
    ret z

    ld a, h
    call nz, $c47c
    ld hl, sp-$08
    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    db $10
    ccf
    jr nz, @+$41

    ccf
    ld a, a
    ld d, [hl]
    ld a, a
    ld b, d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    db $fc
    cp $6a
    cp $42
    ccf
    jr nc, jr_004_7306

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, b
    jr nc, @+$41

    rra
    rra
    ccf
    ccf
    inc a
    inc a
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $12
    inc c
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    inc a
    inc a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    db $10
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $fa
    cp $f2
    ccf

jr_004_7306:
    inc sp
    ccf
    inc a
    ld a, a
    ld h, a
    ld a, a
    ld d, b
    jr nc, @+$41

    rra
    rra
    ccf
    ccf
    inc a
    inc a
    db $fc
    call z, Call_000_3cfc
    cp $e6
    cp $0a
    inc c
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    inc a
    inc a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    jr nz, jr_004_736d

    jr nz, jr_004_736f

    ccf
    rra
    ld d, $1f
    inc d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0703
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra

jr_004_736d:
    rra
    db $10

jr_004_736f:
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld d, [hl]
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $6a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    ccf
    ccf
    add hl, bc
    ld c, $0e
    rrca
    rrca
    rrca
    ld b, $06
    cp $42
    db $fc
    inc c
    ld a, b
    sbc b
    ldh a, [$f8]
    ld hl, sp+$48
    ld a, b
    ret z

    or b
    or b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    db $10
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    scf
    dec sp
    jr jr_004_73ee

    rra
    rra
    rra
    rra
    ld c, $0e
    cp $f2
    db $fc
    call z, Call_000_3cfc
    cp $d2
    ld e, $f2
    db $ec
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf

jr_004_73ee:
    jr nz, jr_004_742f

    jr nz, jr_004_7431

    ccf
    rra
    ld d, $00
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    ccf
    dec a
    rra
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    db $fc
    inc a
    db $fc
    db $fc
    jr @+$1a

    rrca
    rrca
    rra
    ld e, $1f
    ld e, $10
    rra
    jr c, jr_004_746e

jr_004_742f:
    ccf
    scf

jr_004_7431:
    ld a, a
    ld d, d
    ld a, a
    ld b, d
    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$78
    ld [$1cf8], sp
    db $fc
    db $fc
    db $ec
    cp $4a
    cp $42
    ccf
    jr nc, jr_004_7466

    add hl, de
    ccf
    ccf
    ld h, a
    ld a, a
    ld a, c
    ld c, [hl]
    ccf
    rrca
    rra
    rra
    ld e, $1e
    db $fc
    inc c
    ld a, b
    sbc b
    db $fc
    db $fc
    and $fe
    sbc [hl]
    ld [hl], d
    db $fc
    ldh a, [$f8]
    ld hl, sp+$78
    ld a, b
    rrca

jr_004_7466:
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf

jr_004_746e:
    ccf
    ccf
    ccf
    ld a, b
    ld d, a
    ld a, a
    ld b, b
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld e, $ea
    cp $02
    ccf
    jr nc, jr_004_74a7

    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, b
    ld a, a
    ccf
    rra
    rra
    rra
    ld e, $1e
    db $fc
    inc c
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ld e, $fe
    db $fc
    ld hl, sp-$08
    ld hl, sp+$78
    ld a, b
    rrca
    rrca

jr_004_74a7:
    rra
    rla
    rra
    rla
    inc hl
    ccf
    ld b, a
    ld a, a
    ld a, $31
    rra
    inc d
    rra
    inc d
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld [$c8f8], sp
    ld hl, sp-$18
    jr c, jr_004_74e5

    db $10
    dec bc
    inc c
    rrca
    rrca
    rrca
    ld c, $0d
    ld a, [bc]
    rlca
    ld b, $0f
    rrca
    rra
    rra
    ldh a, [$30]
    ret nz

    ld b, b
    ldh [$e0], a
    ldh [$60], a
    and b
    ld h, b
    ldh [$60], a
    ret nz

    ret nz

    add b
    add b

jr_004_74e5:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_004_74ed:
    ld de, $111e
    ld e, $20
    ccf
    jr nz, jr_004_7534

    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_004_74ed

    adc b
    ld a, b
    adc b
    ld a, b
    inc b
    db $fc
    inc b
    db $fc
    jr c, @+$29

    ccf
    jr nz, jr_004_7529

    db $10
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc e
    db $e4
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca

jr_004_7529:
    rra
    jr jr_004_756a

    ld hl, $370b
    ld [hl], l
    ld c, [hl]
    ld a, d
    ld c, l
    ld c, a

jr_004_7534:
    ld a, c
    nop
    nop
    ret nz

    ret nz

    ld [hl], b
    or b
    ld hl, sp+$08
    ld b, b
    cp h
    sbc h
    db $e4
    cp h
    ld b, h
    db $fc
    ld b, h
    ld h, a
    ld e, [hl]
    ld a, [hl]
    ld b, c
    rra
    inc hl
    ccf
    inc h
    ld e, $1d
    dec b
    ld c, $03
    rlca
    nop
    nop
    call z, $a474
    call c, $8870
    cp b
    ld c, b
    ld d, b
    or b
    ldh [$60], a
    add b
    add b
    nop
    nop
    rlca
    rlca
    rra
    jr jr_004_75a9

jr_004_756a:
    jr nz, jr_004_75eb

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    cp $81
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp $02
    cp $02
    rst $28
    ld de, $01ff
    db $fd
    inc bc
    cp a
    ret nz

    rst $18
    and b
    xor d
    push de
    ld d, l
    ld l, d
    ld b, d
    ld a, l
    dec h
    ccf
    ld a, [de]
    rra
    rlca
    rlca
    ld sp, hl
    rlca
    push af
    dec bc
    pop hl
    rra
    ld d, [hl]
    xor [hl]
    ld a, [bc]
    cp $54
    db $fc
    cp b
    ld hl, sp-$20
    ldh [rP1], a
    nop
    ccf
    ccf

jr_004_75a9:
    ccf
    jr nz, @+$32

    cpl
    ccf
    jr nz, @+$34

    dec l
    ccf
    jr nz, jr_004_75e6

    dec l
    nop
    nop
    ld hl, sp-$08
    ld hl, sp+$08
    jr @-$16

    ld hl, sp+$08
    sbc b
    ld l, b
    ld hl, sp+$08
    sbc b
    ld l, b
    ccf
    jr nz, jr_004_75f9

    ld l, $3f
    jr nz, jr_004_75ef

    inc a
    ld a, [hl-]
    dec h
    dec de
    inc d
    rrca
    rrca
    nop
    nop
    ld hl, sp+$08
    ld e, b
    xor b
    ld hl, sp+$08
    ld hl, sp+$08
    sbc b
    ld l, b
    ld hl, sp+$08
    ld hl, sp-$08
    nop
    nop
    nop

jr_004_75e6:
    nop
    nop
    nop
    nop
    nop

jr_004_75eb:
    ld a, $3e
    ld e, a
    ld h, c

jr_004_75ef:
    ld d, c
    ld l, [hl]
    ld e, [hl]
    ld h, c
    ld d, l
    ld l, d
    nop
    nop
    nop
    nop

jr_004_75f9:
    nop
    nop
    ld a, $3e
    db $fd
    jp $bb45


    ld b, l
    cp e
    ld b, l
    cp e
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld d, c
    ld l, [hl]
    ld e, a
    ld h, b
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld a, l
    add e
    ld d, l
    xor e
    ld a, l
    add e
    ld a, l
    add e
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld c, b
    ld a, a
    ld e, a
    ld h, a
    ld e, a
    ld h, b
    ld d, d
    ld l, l
    ld e, a
    ld h, b
    ld d, d
    ld l, l

jr_004_7635:
    nop
    nop
    ld hl, sp-$08
    ld c, b
    ld hl, sp-$18
    sbc b
    add sp, $18
    xor b
    ld e, b
    add sp, $18
    xor b
    ld e, b
    ld e, a
    ld h, b
    ld d, c

jr_004_7648:
    ld l, [hl]
    ld e, a
    ld h, b
    ld e, [hl]
    ld h, c
    ld e, a
    ld h, b
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    add sp, $18
    ld l, b
    sbc b
    add sp, $18
    jr z, jr_004_7635

    add sp, $18
    ld [$f8f8], sp
    ld hl, sp+$00
    nop
    jr nz, @+$32

    scf
    ccf
    dec sp
    ccf
    rla
    jr c, jr_004_769d

    inc a
    ld a, a
    ld h, c
    ret nc

    cp a
    xor a
    ldh a, [rDIV]
    inc c
    db $ec
    db $fc
    call c, $e8fc
    inc e
    db $f4
    inc a
    cp $86
    dec bc
    db $fd
    push af
    rrca
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld l, a
    ld [hl], b
    ld a, b
    sbc a
    rst $28
    sbc a
    adc a
    rst $38
    ld [hl], b
    ld a, a
    nop
    nop
    ld a, [c]
    ld c, $e2
    ld e, $86
    ld a, [hl]
    ld e, $f9

jr_004_769d:
    rst $30
    ld sp, hl
    pop af
    rst $38
    ld c, $fe
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
    add hl, bc
    ld c, $13
    inc e
    rla
    jr jr_004_76cb

    jr jr_004_76b6

jr_004_76b6:
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_004_769d

    ret nc

    jr nc, jr_004_7648

    ld a, b
    adc b
    ld a, b
    jr z, jr_004_769d

    inc d
    dec de
    inc d
    dec de
    jr jr_004_76ea

jr_004_76cb:
    inc c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    jr z, @-$26

    ld l, b
    sbc b
    ret c

    jr c, @+$32

    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca

jr_004_76ea:
    ld [$1d1b], sp
    ld a, $21
    ld a, [hl]
    ld b, e
    rst $38
    add d
    rst $38
    add b
    ret nz

    ret nz

    db $e3
    inc hl
    rst $20
    push hl
    rst $38
    ld sp, hl
    ld a, a
    db $fd
    db $76
    cp [hl]
    or $3e
    or $5e
    rst $38
    add b
    rst $38
    add d
    ld a, [hl]
    ld b, e
    ld a, $21
    dec de
    inc e
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    or $5e
    or $3e
    db $76
    cp [hl]
    ld a, a
    db $fd
    rst $38
    ld sp, hl
    rst $20
    push hl
    db $e3
    inc hl
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdff


    rst $38
    cp l
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
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
    ld a, [$d12a]
    cp $04
    jr nz, jr_004_77ab

    ld a, [$cfe7]
    ld hl, $d8a7
    ld bc, $002c
    call Call_000_3a74
    ld a, [$cfe8]
    ld [hl], a
    call Call_000_16dd
    ld b, $09
    call Call_000_3e05
    ld hl, $41cf
    ld b, $3d
    call Call_000_3e84
    ld a, [$cf0b]
    cp $01
    ld de, $781d
    jr c, jr_004_779e

    ld de, $7825
    jr z, jr_004_779e

    ld de, $782e

jr_004_779e:
    ld hl, $c446
    call Call_000_1723
    ld c, $c8
    call Call_000_372f
    jr jr_004_77ca

jr_004_77ab:
    ld a, [$cf0b]
    and a
    jr nz, jr_004_77dd

    ld hl, $cce5
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr z, jr_004_77ca

    ld de, $d348
    ld c, $03
    ld a, $0b
    call Call_000_3eb4
    ld hl, $7835
    call Call_000_3c36

jr_004_77ca:
    xor a
    ld [$ccd4], a
    ld a, $2a
    call Call_000_3eb4
    ld d, $82
    ld hl, $4e5a
    ld b, $3f
    call Call_000_3e84

jr_004_77dd:
    xor a
    ld [$d082], a
    ld [$c02a], a
    ld [$d056], a
    ld [$d059], a
    ld [$d05e], a
    ld [$d058], a
    ld [$d11e], a
    ld [$d11f], a
    ld [$d077], a
    ld hl, $cc2b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$cc36], a
    ld hl, $d05f
    ld b, $18

jr_004_7808:
    ld [hl+], a
    dec b
    jr nz, jr_004_7808

    ld hl, $d72b
    set 0, [hl]
    call Call_000_373e
    call Call_000_3df2
    ld a, $ff
    ld [$d42e], a
    ret


    sbc b
    adc [hl]
    sub h
    ld a, a
    sub [hl]
    adc b
    adc l
    ld d, b
    sbc b
    adc [hl]
    sub h
    ld a, a
    adc e
    adc [hl]
    sub d
    add h
    ld d, b
    ld a, a
    ld a, a
    add e
    sub c
    add b
    sub [hl]
    ld d, b
    rla
    db $d3
    ld b, b
    jr z, @+$52

    ld a, [$cc57]
    and a
    ret nz

    ld a, [$d735]
    and a
    ret nz

    ld hl, $41e6
    ld b, $03
    call Call_000_3e84
    jr nc, jr_004_7852

jr_004_784e:
    ld a, $01
    and a
    ret


jr_004_7852:
    ld hl, $476c
    ld b, $3a
    call Call_000_3e84
    jr z, jr_004_784e

    ld a, [$d0da]
    and a
    jr z, jr_004_7868

    dec a
    jr z, jr_004_78cf

    ld [$d0da], a

jr_004_7868:
    ld hl, $c45c
    ld c, [hl]
    ld a, [$d534]
    cp c
    ld a, [$d886]
    jr z, jr_004_788e

    ld a, $14
    cp c
    ld a, [$d8a3]
    jr z, jr_004_788e

    ld a, [$d35d]
    cp $25
    jr c, jr_004_78dc

    ld a, [$d366]
    cp $03
    jr z, jr_004_78dc

    ld a, [$d886]

jr_004_788e:
    ld b, a
    ldh a, [$d3]
    cp b
    jr nc, jr_004_78dc

    ldh a, [$d4]
    ld b, a
    ld hl, $78e2

jr_004_789a:
    ld a, [hl+]
    cp b
    jr nc, jr_004_78a1

    inc hl
    jr jr_004_789a

jr_004_78a1:
    ld c, [hl]
    ld hl, $d887
    ld a, [$c45c]
    cp $14
    jr nz, jr_004_78af

    ld hl, $d8a4

jr_004_78af:
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$d126], a
    ld a, [hl]
    ld [$cf90], a
    ld [$cfd7], a
    ld a, [$d0da]
    and a
    jr z, jr_004_78e0

    ld a, [$d18b]
    ld b, a
    ld a, [$d126]
    cp b
    jr c, jr_004_78dc

    jr jr_004_78e0

jr_004_78cf:
    ld [$d0da], a
    ld a, $d2
    ldh [$8c], a
    call Call_000_3c29
    call Call_000_2817

jr_004_78dc:
    ld a, $01
    and a
    ret


jr_004_78e0:
    xor a
    ret


    ld [hl-], a
    nop
    ld h, l
    ld [bc], a
    adc h
    inc b
    and l
    ld b, $be
    ld [$0ad7], sp
    db $e4
    inc c
    pop af
    ld c, $fc
    db $10

Call_004_78f4:
    rst $38
    ld [de], a
    ldh a, [$f3]
    and a
    ld a, [$cfd1]
    ld hl, $d022
    jr z, jr_004_7907

    ld a, [$cfcb]
    ld hl, $cff3

jr_004_7907:
    ld d, a
    ld a, [$d0d6]
    ld b, a
    ld a, [$d0d7]
    ld c, a
    srl b
    rr c
    ld a, d
    cp $a5
    jr z, jr_004_791d

    srl b
    rr c

jr_004_791d:
    ld a, b
    or c
    jr nz, jr_004_7922

    inc c

jr_004_7922:
    ld a, [hl+]
    ld [$ceea], a
    ld a, [hl]
    ld [$cee9], a
    push bc
    ld bc, $fff2
    add hl, bc
    pop bc
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
    jr nc, jr_004_794c

    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $ceed
    ld [hl+], a
    ld [hl], a

jr_004_794c:
    ld hl, $c45e
    ldh a, [$f3]
    and a
    ld a, $01
    jr z, jr_004_795a

    ld hl, $c3ca
    xor a

jr_004_795a:
    ld [$cf93], a
    ld a, $48
    call Call_000_3eb4
    ld hl, $7968
    jp Jump_000_3c36


    rla
    and h
    ld b, d
    ld a, [hl+]
    ld d, b
    ld hl, $cfe9
    ld de, $d018
    ldh a, [$f3]
    and a
    ld a, [$d066]
    jr z, jr_004_7982

    push hl
    ld h, d
    ld l, e
    pop de
    ld a, [$d061]

jr_004_7982:
    bit 6, a
    jr nz, jr_004_799c

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $7b83
    call Call_004_799f
    ld hl, $7997
    jp Jump_000_3c36


    rla
    cp c
    ld b, d
    ld a, [hl+]
    ld d, b

jr_004_799c:
    ld hl, $7b2e

Call_004_799f:
    ld b, $0f
    jp Jump_000_3e84


    ld a, $07
    ld hl, $cd1a
    call Call_004_7a0d
    ld hl, $cd2e
    call Call_004_7a0d
    ld hl, $cd12
    ld de, $d024
    call Call_004_7a14
    ld hl, $cd26
    ld de, $cff5
    call Call_004_7a14
    ld hl, $cfe8
    ld de, $ccdd
    ldh a, [$f3]
    and a
    jr z, jr_004_79d3

    ld hl, $d017
    dec de

jr_004_79d3:
    ld a, [hl]
    ld [hl], $00
    and $27
    jr z, jr_004_79dd

    ld a, $ff
    ld [de], a

jr_004_79dd:
    xor a
    ld [$d06c], a
    ld [$d071], a
    ld hl, $ccee
    ld [hl+], a
    ld [hl], a
    ld hl, $d061
    call Call_004_7a01
    ld hl, $d066
    call Call_004_7a01
    ld hl, $7b83
    call Call_004_799f
    ld hl, $7a1d
    jp Jump_000_3c36


Call_004_7a01:
    res 7, [hl]
    inc hl
    ld a, [hl]
    and $78
    ld [hl+], a
    ld a, [hl]
    and $f8
    ld [hl], a
    ret


Call_004_7a0d:
    ld b, $08

jr_004_7a0f:
    ld [hl+], a
    dec b
    jr nz, jr_004_7a0f

    ret


Call_004_7a14:
    ld b, $08

jr_004_7a16:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_004_7a16

    ret


    rla
    ret nc

    ld b, d
    ld a, [hl+]
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

Jump_004_7b7b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_7c7c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_7cfc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_004_7e81:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
