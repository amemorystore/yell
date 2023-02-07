; disasSembly of "yell.gbc"
SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    rla
    add hl, bc
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
    db $fd
    ld h, $3b
    rst $38
    rst $38
    rst $38
    rst $38
    cp $78
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld h, [hl]
    ld c, b
    ld e, $7f
    sub b
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
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ldh a, [rIE]
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$ff07], sp
    rst $38
    rst $38
    rst $38
    sbc [hl]
    ld a, a
    rst $38
    rst $38
    cp $ef
    inc sp
    ret nz

    pop hl
    ld a, $06
    db $18, $80
    pop bc
    adc [hl]
    nop
    nop
    jr nz, jr_021_4058

jr_021_4058:
    nop
    nop
    ld bc, $f9df
    call z, RST_10
    ld b, $3f
    call c, $ff3f
    rst $20
    jr c, @-$17

    rst $38
    sbc h
    nop
    ld b, b
    nop
    ccf
    rst $38
    rst $38
    rst $38
    cp $60
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ei
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    call c, RST_00
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    xor $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $30
    add b
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
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    nop
    nop
    nop
    rlca
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
    ldh a, [rP1]
    nop
    nop
    nop
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    cp $20
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
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
    ldh [rP1], a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
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
    or $00
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rrca
    cp $10
    nop
    nop
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
    nop
    ld c, a
    rst $38
    rst $38
    db $fc
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
    rst $38
    ld hl, sp+$00
    nop
    ld c, l
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
    db $ec
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    db $fc
    ld [hl], e
    rst $38
    or a
    ld sp, hl
    ld h, h
    nop
    inc c
    ld h, b
    scf
    rst $38
    rst $38
    rst $38
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rLCDC], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    dec b
    rst $18
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    cp b
    inc h
    adc h
    add hl, sp
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ldh a, [rNR22]
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    sbc c
    rst $28
    rra
    or [hl]
    rst $38
    db $fd
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    db $e3
    inc e
    jr jr_021_4266

    nop
    nop
    nop
    nop
    nop
    jr nc, jr_021_422d

jr_021_422d:
    inc h
    nop
    nop
    inc bc
    rst $38
    di
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    and $7f
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$27]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00f0
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop

jr_021_4266:
    nop
    nop
    ld bc, $002c
    nop
    rla
    rst $38
    ld a, a
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    db $fc
    jr nz, jr_021_42e7

    ld [hl], b
    ld a, h
    ld a, b
    ld a, c
    adc h
    rra
    db $fd
    rst $20
    add e
    adc a
    adc a
    rst $28
    di
    inc bc
    rst $18
    adc $38
    jr nz, jr_021_42a7

    cp $c0
    nop
    ld bc, $0000
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    ei
    di
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    rst $38
    rst $38
    ret nz

    nop

jr_021_42a7:
    ld a, a
    di
    rst $38
    rst $38
    add b
    ld bc, $80ff
    rst $38
    rst $38
    ret nz

    ld bc, $c0ff
    ld a, a
    rst $38
    ldh a, [rP1]
    rst $38
    ldh [$3f], a
    rst $38
    ld hl, sp+$00
    ld a, a
    ldh a, [$1f]
    rst $38
    ld hl, sp+$00
    ld a, a
    ldh a, [$1f]
    rst $38
    ld hl, sp+$00
    ld a, a
    ldh a, [$1f]
    rst $38
    ld hl, sp+$00
    ld a, a
    jr nc, jr_021_42f3

    rst $38
    db $fc
    nop
    ccf
    nop
    rra
    or $fc
    nop
    ccf
    db $10
    rra
    rst $38
    ld hl, sp+$00
    ld a, [hl]
    nop
    ccf
    rst $38

jr_021_42e7:
    ld hl, sp+$00
    cp $00
    ccf
    rst $38
    ldh a, [rP1]
    db $fc
    nop
    ld a, a
    rst $38

jr_021_42f3:
    ret nz

    inc bc
    ldh a, [rSB]
    rst $38
    rst $38
    add b
    rlca
    ldh [rTAC], a
    rst $38
    cp $00
    rra
    add b
    rra
    rst $38
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    rst $38
    nop
    rra
    ret nz

    ld a, a
    rst $38
    ldh [rSB], a
    ldh a, [$7f]
    rst $38
    ldh [$0b], a
    ld hl, sp+$1f
    rst $38
    add b
    rrca
    ldh [$7f], a
    db $fc
    nop
    ccf
    add b
    ld a, a
    ld hl, sp+$00
    cp $01
    rst $38
    ldh [rTAC], a
    db $fc
    rlca
    rst $38
    ret nz

    rlca
    ld hl, sp+$0f
    cp $00
    ccf
    ret nz

    ld a, a
    ldh [rSB], a
    cp $43
    rst $38
    nop
    rrca
    db $fc
    rra
    ld hl, sp+$00
    ld a, a
    ld hl, sp+$7f
    add b
    rlca
    rst $38
    jp Jump_000_00f8


    ld a, a
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh [rSB], a
    rst $38
    rst $38
    db $fc
    nop
    ccf
    rst $38
    cp a
    nop
    rlca
    rst $38
    rst $38
    ret nz

    ld bc, $ffff
    ld hl, sp+$00
    ld a, a
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    add b
    ld bc, $ffff
    ldh a, [rP1]
    ld a, a
    rst $38
    cp $00
    rra
    ld b, $7f
    ldh [$03], a
    ldh a, [rSB]
    ld hl, sp+$01
    rst $38
    ldh [$7f], a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    ccf
    ldh [rIF], a
    ld hl, sp+$00
    db $fc
    ld b, b
    ld a, a
    ldh [rIF], a
    cp $0f
    rst $38
    nop
    ccf
    rst $30
    rst $38
    add b
    nop
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $c0ff
    nop
    rrca
    rst $08
    adc $00
    rra
    rst $38
    rst $38
    add b
    rlca
    rst $38
    add b
    ld [hl], b
    nop
    rst $38
    add e
    rra
    add b
    ccf
    ld hl, sp+$00
    ld a, b
    inc bc
    rst $38
    add b
    rra
    add c
    rst $38
    ldh [rSB], a
    ldh [$e3], a
    ldh a, [rP1]
    nop
    rrca
    cp $00
    rra
    ldh a, [$7f]
    ldh [rTAC], a
    cp $0f
    ld hl, sp+$00
    ld a, a
    ld hl, sp+$3e
    ld [hl], b
    ld bc, $00ff
    nop
    nop
    ccf
    rst $38
    add b
    ld b, a
    ld a, a
    ccf
    db $fc
    ld bc, $00fc
    ld a, [hl]
    nop
    rrca
    ldh a, [rIF]
    ret z

    rlca
    rst $38
    ret nz

    db $fc
    nop
    ccf
    ld hl, sp+$1f
    rst $38
    ccf
    rst $38
    add b
    rst $38
    ret z

    rst $38
    ldh [rP1], a
    ld a, [hl]
    dec de
    sbc a
    nop
    ccf
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    ld hl, sp-$38
    sbc e
    db $ec
    ld b, $00
    nop
    ld [$0000], sp
    nop
    nop
    ld [$0010], sp
    ld a, a
    rst $38
    db $fc
    nop
    nop
    daa
    cp $40
    inc b
    rst $38
    adc b
    nop
    nop
    nop
    ld h, $f8
    nop
    dec b
    sbc h
    rst $38
    ldh [rNR11], a
    ei
    rst $38
    ld a, [c]
    ld c, h
    rst $18
    cp a
    ld b, a
    ldh a, [rIF]
    ld a, [c]
    ld b, b
    stop
    and a
    rst $00
    db $fc
    rst $30
    rra
    rst $38
    rst $38
    rst $38
    nop
    inc c
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
    nop
    inc b
    inc de
    ld h, a
    ld sp, hl
    ld b, b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $3f26
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
    rst $38
    reti


    ld a, a
    or a
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
    sub e
    push hl
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    jr nz, @+$6e

    ld h, e
    ld [hl], b
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
    ld sp, hl
    nop
    ld [de], a
    ld bc, $fffd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $30
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    nop
    ld [$4e82], sp
    ld l, h
    ld [hl], e
    ld b, $92
    nop
    jr jr_021_44ad

jr_021_44ad:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld h, b
    nop
    nop
    nop
    add hl, bc
    add b
    nop
    ld b, $20
    inc de
    inc bc
    ld bc, $0000
    dec a
    ld hl, sp-$01
    ld_long a, $ff7f
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
    db $fc
    add b
    nop
    ld [bc], a
    ld [hl], b
    inc b
    sbc c
    jr z, jr_021_451c

    ld c, h
    add hl, de
    rst $38
    cp $f2
    nop
    nop
    dec b
    adc e
    ld l, l
    sub b
    ld hl, $04e1
    ld b, b
    ld de, $a484
    adc b
    nop
    dec h
    add hl, bc
    stop
    jr jr_021_44fa

    nop
    inc h

jr_021_44fa:
    sub d
    pop bc
    jr nz, jr_021_4546

    sub d
    ld c, c
    ld [hl], e
    or [hl]
    or $db
    ld e, e
    ld l, l
    daa
    rst $28
    ld l, a
    or $de
    sub d
    sub $93
    ld a, [hl]
    rst $10
    sbc e
    ld l, l
    dec l
    or [hl]
    di
    or h
    sub d
    ld c, c
    dec c
    ld l, d
    ld c, d
    or d

jr_021_451c:
    ld c, e
    inc h
    adc c
    dec h
    or l
    inc h
    add b
    inc [hl]
    sub d
    and h
    and h
    sbc d
    ld c, c
    ld c, e
    ld h, h
    sub [hl]
    ld h, $b6
    jp nc, Jump_021_5b5a

    ld l, c
    and a
    add hl, bc
    ld l, d
    ld c, b
    call Call_000_2da9
    or [hl]
    or l
    or [hl]
    or h
    db $e4
    sub d
    ld e, e
    dec h
    and h
    sub [hl]
    sbc e
    ld l, l
    inc [hl]

jr_021_4546:
    sub d
    ld d, d
    ld c, c
    ld l, c
    bit 4, h
    sbc e
    ld l, l
    or [hl]
    call $de96
    ld e, c
    dec h
    ld [hl], $b6
    sub d
    ld h, d
    sbc c
    ld h, $da
    ld c, c
    dec l
    db $ed
    add hl, hl
    ld h, a
    ld [hl], $d9
    ld h, h
    sbc c
    bit 5, e
    reti


    inc sp
    ld l, h
    sbc e
    sub d
    ld h, d
    ld l, l
    sbc d
    ld c, c
    dec [hl]
    or h
    or [hl]
    adc $5b
    inc l
    inc h
    reti


    or e
    ld e, e
    ld c, c
    sub d
    ld l, h
    ld c, c
    cp l
    ld h, $db
    ld l, l
    inc h
    sbc d
    ld c, e
    ld l, l
    or [hl]
    call $5b92
    daa
    sbc l
    sbc c
    or d
    ld c, l
    or [hl]
    ld e, e
    inc [hl]
    db $db
    ld h, h
    add c
    ld hl, $db36
    ld l, h
    db $d3
    ld h, h
    sub b
    ld b, $df
    rst $38
    rst $38
    add b
    nop
    ld bc, $db24
    rst $38
    or $40
    nop
    ld bc, $ff3f
    rst $38
    ldh a, [rLCDC]
    nop
    nop
    rst $18
    rst $38
    cp a
    ld h, h
    nop
    nop
    inc bc
    ccf
    rst $38
    xor $d9
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $30
    db $ec
    nop
    nop
    ld bc, $ffff
    ei
    add [hl]
    nop
    nop
    ld bc, $ffff
    db $fd
    pop bc
    nop
    nop
    nop
    rst $38
    rst $38
    db $fc
    pop hl
    add b
    nop
    nop
    rst $38
    rst $38
    cp $e1
    nop
    nop
    nop
    rst $38
    rst $38
    cp $e1
    add b
    nop
    nop
    rst $38
    rst $38
    cp $60
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp b
    ld b, b
    nop
    ld bc, $ff3f
    rst $38
    call c, RST_00
    inc bc
    rst $38
    rst $38
    rst $38
    and $00
    nop
    ld bc, $ffff
    rst $38
    di
    add h
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    jr nc, jr_021_461f

jr_021_461f:
    nop
    rrca
    rst $38
    rst $38
    rst $38
    call z, RST_00
    inc bc
    rst $38
    rst $38
    rst $38
    di
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $70
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    adc $00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    call c, RST_00
    inc bc
    rst $38
    rst $18
    rst $38
    db $fd
    ldh [rP1], a
    nop
    rra
    ld a, h
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    ei
    db $e3
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $08
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    rra
    ld a, h
    ccf
    rst $38
    rst $38
    nop
    nop
    inc b
    ld a, c
    ld hl, sp-$01
    rst $38
    db $fc
    nop
    nop
    add hl, de
    rst $20
    db $e3
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [hl], a
    di
    rst $00
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $e7ef
    adc a
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $80cf
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $00e3
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $00c3
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [hl], b
    nop
    ld c, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, h
    sub b
    ld [bc], a
    rst $38
    rst $38
    cp $00
    nop
    rra
    db $e4
    ld bc, $ffbf
    rst $38
    add b
    nop
    inc de
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld [bc], a
    ld a, h
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    inc bc
    ret nz

    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rra
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    ld hl, sp+$00
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    ret nz

    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $00ff
    ld bc, $ffff
    rst $38
    ret nz

    nop
    ld bc, $00ce
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $80ff
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $c0ff
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    rst $38
    db $fc
    nop
    nop
    rra
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    rlca
    ld hl, sp+$00
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    ld a, l
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    inc bc
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rra
    add b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, [c]
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $00f0
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $00f0
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    db $fc
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, $00
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld b, b
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    dec b
    ret c

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    cp $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    inc bc
    ret nz

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
    nop
    nop
    rrca
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    add $03
    ei
    rst $38
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
    nop
    inc bc
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
    nop
    nop
    inc bc
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
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    nop
    nop
    dec c
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_021_4883

jr_021_4883:
    nop
    nop
    nop
    add hl, bc
    cp a
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
    nop
    nop
    ccf
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
    ld sp, hl
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
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    nop
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
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    nop
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
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $c500
    add b
    rra
    rst $38
    rst $38
    ldh [$e8], a
    nop
    nop
    nop
    nop
    nop
    ccf
    ld hl, sp-$0d
    db $fd
    and b
    nop
    nop
    ld b, b
    nop
    nop
    ld b, b
    db $db
    ld a, a
    ld b, b
    add [hl]
    ret nz

    nop
    nop
    inc c
    rra
    rst $38
    cp $9f
    rst $28
    db $fd
    ld [hl], a
    cp a
    ld b, $c7
    call $30cf
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
    ld bc, $ffff
    ei
    rst $38
    rst $38
    cp $df
    rst $30
    rst $18
    ld e, $5b
    nop
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
    rst $38
    ldh [$3f], a
    pop hl
    ld a, a
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    rrca
    rst $38

jr_021_494e:
    rst $38
    rst $38
    db $fc
    ld [hl], e
    rst $20
    rst $38
    ld a, $cd
    inc a
    inc [hl]

jr_021_4958:
    ld a, b
    db $e3
    nop
    ld [$0300], sp
    ld bc, $1890
    ld bc, $3184
    sbc h
    ld [hl], e
    adc h
    ld [hl], c
    adc h
    ld [hl], e
    adc [hl]
    jr c, jr_021_494e

    sbc c
    rst $08
    jr c, jr_021_4958

    ld sp, $393f
    ret c

    di
    sbc a
    adc h
    call c, $0ee7
    ld [hl], e
    and $73
    ld e, $33
    ld [c], a
    ld [hl], e
    jr jr_021_49f0

    rst $00
    ld sp, $73cc
    adc h
    rst $20
    inc e
    db $e3
    call $9ce1
    rst $00

jr_021_4990:
    add hl, bc
    sbc b
    db $ec

jr_021_4993:
    call z, Call_000_3107
    sbc e
    scf
    jr c, @-$3b

    add hl, de
    call nz, $9863
    adc $73
    inc c
    db $e3
    add hl, sp
    ld h, a
    add hl, sp
    or c
    ld hl, $1c8c
    add e
    ld h, e
    sbc h
    and $20
    call z, Call_000_2663
    ld h, a
    dec sp
    cp c
    ld h, [hl]
    add hl, bc
    ret


    cp a
    cp $d8
    rst $00
    ld sp, $339e
    cp e
    add hl, sp
    rst $08
    inc sp
    add hl, sp
    rst $20
    add hl, sp
    sbc [hl]
    ld h, a
    jr c, jr_021_4990

    dec bc
    inc sp
    sbc h
    ld b, c
    jr jr_021_4993

    ld b, a
    sbc l
    or b
    rst $20
    ld hl, $ee98
    ld h, a
    ld c, $30
    ld c, h
    ld h, [hl]
    ld sp, $20c6
    sbc b
    adc $67
    ld sp, $3883
    call Call_000_32c3
    db $e4
    sbc c
    inc sp
    ld [hl], a
    rst $38
    inc sp
    ld [hl], a
    ld a, a
    rst $28

jr_021_49f0:
    inc sp
    ld [$0000], sp
    ld de, $ffcf
    rst $38
    xor $73
    ld [hl], e
    cp a
    ld [hl], e
    ld h, b
    nop
    nop
    nop
    nop
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    sbc h
    nop
    nop
    nop
    ld bc, $ff9c
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    ld sp, hl
    rst $18
    rst $38
    rst $38
    rst $38
    cp $c0
    nop
    nop
    nop
    inc bc
    ei
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    nop
    ld bc, $f76c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    cp $30
    nop
    nop
    nop
    nop
    nop
    inc c
    rst $18
    rst $38
    rst $38
    rst $38
    db $fd
    ret nz

    nop
    nop
    nop
    inc bc
    ld a, a
    rst $38
    cp h
    ld b, b
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    adc a
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    ld bc, $ffff
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
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $d9
    adc b
    nop
    nop
    nop
    nop
    inc bc
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    nop
    nop
    nop
    nop
    add b
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], $03
    nop
    add b
    inc b
    sbc a
    rst $38
    ret nz

    nop
    nop
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
    ei
    ld a, h
    ret nz

    ld bc, $1900
    ret z

    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    sbc $00
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $28
    call c, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1300], sp
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
    db $fd
    or b
    ld h, a
    di
    rst $30
    ld a, b
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    nop
    add hl, bc
    nop
    nop
    nop
    inc bc
    add b
    ld b, b
    nop
    jr nz, jr_021_4b1f

jr_021_4b1f:
    nop
    rst $28
    db $e4
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_021_4b2f

    sbc b

jr_021_4b2f:
    inc c
    ld a, e
    rst $08
    rst $20
    or e
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp [hl]
    nop
    jr nc, jr_021_4b3f

jr_021_4b3f:
    nop
    ld b, $ff
    rst $38
    rst $38
    db $fc
    ld e, $00
    nop
    rrca
    rst $38
    ld a, [c]
    nop
    nop
    cp a
    rst $38
    add b
    jr nc, jr_021_4b52

jr_021_4b52:
    nop
    nop
    nop
    rst $30
    ret nz

    inc c
    ld a, a
    rst $38
    ld h, [hl]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld [bc], a
    nop
    ld h, b
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
    cp $b0
    ccf
    rst $38
    db $fc
    inc b
    ld a, b
    jr jr_021_4b88

jr_021_4b88:
    nop
    jr nz, jr_021_4b8b

jr_021_4b8b:
    nop
    ld bc, $c0ff
    nop
    nop
    nop
    nop
    jr nc, @+$81

    ldh [$3f], a
    rlca
    ldh [$fc], a
    rlca
    ldh [$7e], a
    rlca
    ldh [$7f], a
    inc bc
    ldh a, [$3f]
    add e
    ld hl, sp+$1e
    ld bc, $7ff0
    rlca
    ldh a, [rIE]
    rlca
    ldh [$7f], a
    rlca
    ldh a, [$7c]
    inc bc
    ldh [rP1], a
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    db $fc
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rrca
    cp $00
    inc bc
    rst $38
    cp $03
    rst $38
    rst $38
    db $fc
    nop
    nop
    rst $38
    add b
    nop
    ccf
    rst $38
    ret nz

    ld a, a
    rst $38
    rst $38
    nop
    ld bc, $e0ff
    nop
    rrca
    cp $78
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    cp $00
    rlca
    rst $38
    add e
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rra
    rst $38
    ret nz

    rrca
    rst $38
    ldh [$7e], a
    rlca
    rst $38
    rst $38
    ldh a, [$03]
    rst $38
    ld hl, sp+$03
    rst $38
    cp $0f
    ldh [$7f], a
    rst $38
    cp $00
    ccf
    rst $38
    nop
    ld a, a
    adc a
    ret nz

    cp $0f
    rst $38
    rst $38
    ldh [rTAC], a
    rst $38
    ldh a, [rTAC]
    ldh a, [$7e]
    ccf
    add b
    rst $38
    rst $38
    cp $00
    ld a, a
    cp $00
    cp $07
    db $e3
    ld hl, sp+$1f
    ld sp, hl
    rst $38
    ldh a, [$03]
    db $fc
    ld h, b
    rrca
    ldh [$3f], a
    rst $38
    add b
    rst $38
    rst $28
    db $fc
    nop
    rst $38
    adc h
    ld bc, $0ff8
    rst $38
    ldh [$7f], a
    db $e3
    rst $38
    add b
    rra
    ldh [rP1], a
    ccf
    add b
    rst $38
    db $fc
    rrca
    db $fc
    rra
    ldh a, [$03]
    db $fc
    nop
    rrca
    ldh [$1f], a
    rst $38
    add c
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    inc bc
    db $fc
    rlca
    rst $38
    ret nz

    ccf
    ldh [$7f], a
    add b
    ccf
    ret nz

    nop
    ld a, a
    nop
    rst $38
    jr nc, jr_021_4c8c

    ld hl, sp+$3f
    ret nz

    rrca
    ldh a, [rP1]
    ccf
    add b
    ld a, a
    ret z

    rlca
    db $fc
    rrca
    ldh a, [$03]

jr_021_4c8c:
    db $fc
    nop
    rra
    ldh [$1f], a
    ldh [$03], a
    rst $38
    inc bc
    db $fc
    ld bc, $00fe
    inc bc
    ld hl, sp+$0f
    ldh a, [rP1]
    ld a, a
    ret nz

    rst $38
    nop
    ld a, a
    add b
    ld bc, $03fc
    cp $00
    ccf
    ldh [$7f], a
    add b
    rra
    ldh [rP1], a
    ld a, a
    nop
    rst $38
    nop
    rra
    ld hl, sp+$1f
    ldh [rIF], a
    ldh a, [rP1]
    ccf
    ret nz

    ld a, a
    ret nz

    rlca
    db $fc
    rlca
    ldh a, [$03]
    ld hl, sp+$00
    rrca
    ldh [$1f], a
    ldh [$03], a
    rst $38
    inc bc
    ld hl, sp+$03
    db $fc
    ld [bc], a
    rlca
    ldh a, [rIF]
    ldh a, [rSB]
    rst $38
    add c
    db $fc
    nop
    cp $01
    inc bc
    db $fc
    rlca
    ld hl, sp+$00
    ld a, a
    ldh [$7e], a
    nop
    cp $01
    add e
    db $fc
    inc bc
    ld hl, sp+$04
    rst $38
    ldh [$7e], a
    nop
    cp $01
    add c
    db $fc
    inc bc
    db $fc
    nop
    ld a, a
    ldh a, [$7c]
    ld bc, $01fe
    add c
    db $fc
    rlca
    ld hl, sp+$40
    ld a, a
    ldh [$fc], a
    inc bc
    db $fc
    inc bc
    add a
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    pop hl
    ld hl, sp+$03
    db $fc
    rlca
    rra
    ldh [rIF], a
    ldh [rNR24], a
    rst $38
    jp Jump_000_0ff0


    ld hl, sp+$06
    rra
    ret nz

    ccf
    ldh [rNR13], a
    rst $38
    add a
    ldh [$1f], a
    ldh [rNR32], a
    ld a, a
    add b
    ld a, a
    add b
    ld h, a
    cp $0f
    add b
    ld a, a
    add b
    ld [hl], c
    cp $01
    cp $00
    ccf
    ld hl, sp+$78
    inc bc
    db $fc
    inc bc
    sbc a
    ldh [rIF], a
    ldh a, [$0b]
    rst $38
    jp Jump_000_3fc0


    ret nz

    inc e
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    cp $f8
    rlca
    db $fc
    inc bc
    sbc a
    ldh [$1f], a
    ldh a, [$1f]
    rst $38
    rst $08
    nop
    ld a, a
    add b
    ld [hl], e
    db $fc
    ld bc, $01fe
    rst $38
    rst $38
    ldh [$1f], a
    ldh a, [$0e]
    ld a, a
    add b
    ccf
    ret nz

    ccf
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    sbc a
    ldh [$1f], a
    ldh a, [rIF]
    rst $38
    cp $01
    cp $00
    rst $28
    ldh a, [rTAC]
    db $fc
    rlca
    rst $38
    rst $08
    nop
    ld a, a
    add b
    ld [hl], e
    db $fc
    ld bc, $01ff
    rst $38
    ei
    ret nz

    ccf
    ldh [rNR32], a
    rst $38
    nop
    rst $38
    add b
    ld a, a
    cp $f0
    rrca
    ld hl, sp+$07
    ccf
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    cp [hl]
    ld bc, $00ff
    rst $28
    ldh a, [rTAC]
    ld hl, sp+$07
    rst $38
    rst $38
    ret nz

    ccf
    ret nz

jr_021_4daf:
    jr jr_021_4daf

    ld bc, $00ff
    rst $38
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    adc a
    ldh [$1f], a
    ldh a, [rIF]
    rst $38
    rst $08
    ldh [$1f], a
    ldh [$0c], a
    ld a, a
    nop
    rst $38
    add b
    rra
    db $fc
    rra
    ldh [$3f], a
    and b
    ld [$007f], sp
    rst $38
    add h
    rlca
    db $fc
    rrca
    ldh [$1f], a
    ret c

    add b
    ccf
    add b
    ccf
    ldh [$03], a
    cp $07
    rst $38
    ret nz

    rra
    ldh [rNR11], a
    rst $38
    nop
    rst $38
    add b
    rrca
    ldh a, [rIF]
    cp $98
    rlca
    db $fc
    inc bc
    rst $38
    ldh [$1f], a
    ldh a, [rP1]
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    rst $38
    sbc a
    ldh a, [rIF]
    ret nz

    nop
    rra
    add b
    ld a, [hl]
    ccf
    rst $38
    rst $38
    inc bc
    ld hl, sp+$00
    rrca
    ret nz

    ld a, a
    add a
    rst $38
    ret nz

    rra
    ldh [rNR11], a
    rst $38
    add b
    ld a, a
    nop
    nop
    cp $01
    rst $38
    db $fc
    rlca
    db $fc
    ld bc, $c0ff
    rra
    ld hl, sp+$01
    rst $38
    ret nz

    rst $38
    ld hl, sp+$00
    ld a, a
    nop
    nop
    nop
    ldh [$3f], a
    rst $38
    rst $38
    add e
    rst $08
    db $fc
    nop
    nop
    nop
    rrca
    add b
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    stop
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
    rrca
    add b
    rra
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld [$0000], sp
    inc e
    inc bc
    rst $38
    rst $38
    rst $08
    cp $00
    nop
    nop
    nop
    nop
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    ld h, e
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, h
    nop
    nop
    ld h, b
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld bc, $0080
    inc bc
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    rlca
    ei
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ret nz

    ld a, a
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
    ld a, a
    rst $38
    rst $38
    rst $38
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
    and b
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    nop
    ld bc, $ff8f
    rst $38
    cp $c8
    nop
    nop
    nop
    nop
    nop
    daa
    cp a
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
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
    pop hl
    nop
    nop
    add hl, bc
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
    ld a, a
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    ret


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
    jr nc, jr_021_4f41

jr_021_4f41:
    nop
    nop
    ld [$0000], sp
    jr nz, jr_021_4f51

    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $40
    dec a

jr_021_4f51:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    jr nz, jr_021_4f92

    nop
    add e
    inc c
    sbc a
    rst $38
    rst $38
    rst $38
    ld bc, $0020
    nop
    nop
    inc [hl]
    call c, $07f8
    rst $38
    ret nz

    stop
    inc b
    ld b, $4f
    ldh a, [rIE]
    rst $38
    jr nz, jr_021_4f76

jr_021_4f76:
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld a, [hl]
    rst $38

jr_021_4f7e:
    rst $38
    rst $38
    rst $18
    db $fd
    add hl, sp
    inc de
    rra
    ld h, b
    rra
    ccf
    rst $38
    rst $38
    rst $08
    add b
    nop
    nop
    nop
    rra
    rst $38
    sbc a

jr_021_4f92:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    ld b, b
    ld bc, $0460
    nop
    nop
    jr nz, jr_021_4fa2

jr_021_4fa2:
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
    ld h, $04
    rst $28
    rst $38
    cp [hl]
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
    rst $28
    db $fc
    rst $08
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    ld hl, sp+$40
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$7719], sp
    rrca
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld de, $ff3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    adc c
    nop
    nop
    nop
    ld c, b
    ld l, b
    ld c, a
    jp nz, $ff7f

    add $40
    inc bc
    jr c, jr_021_4f7e

    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $06
    inc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    ld [hl], b
    ret nz

    adc b
    nop
    ld a, b
    ld [hl], b
    ld b, c
    add [hl]
    inc e
    jr nc, jr_021_5078

    ldh [$c1], a
    ld sp, $7018
    ld [hl], c
    pop hl
    pop hl
    pop bc
    rst $00
    adc a
    inc bc
    adc a
    inc e
    ld a, b
    pop af
    db $e3
    sbc h

jr_021_502a:
    db $fc
    ld sp, hl
    sub e
    di
    inc sp
    inc a
    ld [hl], c
    pop hl
    rst $08
    inc a
    ld a, b
    rst $20
    rst $00
    jr jr_021_502a

    db $e3
    rst $00
    ld e, $7b
    ld sp, hl
    rst $00
    inc hl
    rst $20
    db $e3
    adc a
    add hl, de
    sbc [hl]
    inc a
    add hl, sp
    db $e3
    adc $79
    adc b
    ld h, e
    ld de, $1cc7
    ld a, c
    and [hl]
    ld [hl], a
    db $dd
    call nz, $f398
    sbc e
    jr c, jr_021_508a

    add a
    ld c, $38
    db $e3
    sbc c
    sbc h
    db $10
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    sbc [hl]
    push af
    di
    cp [hl]
    ld [hl], e
    ld b, $18
    ld b, c
    ld [$330e], sp
    rst $08
    inc a
    db $fc
    jp Jump_000_1084


    jp nz, Jump_021_7b04

jr_021_5078:
    rst $38
    rst $38
    cp $e7
    cp c
    add b
    nop
    nop
    ld bc, $ff3b
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop

jr_021_508a:
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $70
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $e0
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    add b
    nop
    nop
    nop
    rrca
    rst $38
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
    ei
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    nop
    rlca
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
    ld sp, hl
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    call z, RST_00
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_021_510f

jr_021_510f:
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    ld [hl], c
    adc b
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    stop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    di
    sub b
    nop
    ld b, $71
    call nz, RST_00
    dec sp
    rst $38
    sbc h
    ld h, b
    inc b
    ld [$bfdb], sp
    rst $38
    rst $38
    cp $c0
    nop
    nop
    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $00
    nop
    nop
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
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
    rrca
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
    ld a, a
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
    ld a, [$0000]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    rra
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
    db $fc
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
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38

jr_021_5243:
    rst $38
    add $c0
    nop
    nop
    nop
    rlca
    cp a
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    nop
    rrca
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    nop
    ld e, $3f
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc d
    inc hl
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $928e
    jr c, jr_021_5243

    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $a4
    db $10
    inc hl
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rP1]
    nop
    ld de, $ff39
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
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
    rst $38
    rst $38
    ret nc

    add b
    nop
    dec de
    rra
    ld a, a
    rst $38
    pop bc
    jr nz, jr_021_52c2

jr_021_52c2:
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
    ldh [rP1], a
    nop
    nop
    rla
    rst $38
    rst $30
    rst $38
    ldh a, [rTAC]
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    db $fd
    add b
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    cp $00
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    nop
    ld a, a
    ret nz

    ld hl, sp+$07
    ldh [$1f], a
    rst $38
    db $fc
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$0c
    inc bc
    ld hl, sp+$1e
    rlca
    ld hl, sp+$06
    inc bc
    db $fc
    ld [bc], a
    nop
    ld a, a
    ret nz

    nop
    nop
    nop
    nop
    nop
    rlca
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    db $fc
    nop
    ld bc, $ffff
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld a, a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    ld hl, sp+$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    inc bc
    cp $00
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    inc b
    ld [hl], b
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    ei
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    ldh [rP1], a
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    ldh a, [rP1]
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    ldh [rP1], a
    inc bc
    db $fc
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    ldh a, [rP1]
    inc bc
    cp $3f
    rst $38
    rst $38
    rst $38
    cp $00
    inc bc
    db $fc
    nop
    ld bc, $0fff
    rst $38
    rst $38
    rst $38
    cp $00
    ld bc, $00fe
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    ld a, a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    ldh [rP1], a
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    add b
    nop
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    add b
    nop
    ccf
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    ldh [rP1], a
    rra
    ldh a, [$3f]
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rrca
    ldh [rP1], a
    inc bc
    ld hl, sp+$0f
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ld bc, $00fc
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    nop
    nop
    rrca
    ld hl, sp+$3f
    rst $38
    rst $38
    rst $38
    cp $00
    rra
    ret nz

    nop
    inc bc
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    rrca
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, a
    add b
    nop
    nop
    ccf
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $00fe
    nop
    nop
    ld a, a
    ldh a, [$7f]
    rst $38
    rst $38
    rst $38
    ret nz

    rlca
    ld hl, sp+$00
    nop
    nop
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rrca
    ret nz

    nop
    ld [$ff00], sp
    add b
    rra
    rst $38
    rst $38
    rst $38
    add b
    inc bc
    db $fc
    nop
    nop
    ld bc, $80ff
    cp a
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    add sp, $00
    nop
    nop
    rst $38
    ldh [rIF], a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    ret nz

    nop
    nop
    ccf
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    ret nz

    nop
    nop
    inc bc
    db $fc
    ld bc, $ffff
    rst $38
    rst $38
    nop
    inc b
    ret c

    nop
    nop
    nop
    ld a, a
    add b
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld a, $00
    nop
    nop
    rrca
    ldh [rTAC], a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    ldh [rP1], a
    nop
    ld bc, $f8ff
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    jr jr_021_54c3

jr_021_54c3:
    nop
    nop
    ccf
    db $fc
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    ld hl, sp+$00
    nop
    ld bc, $f0ff
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    rra
    ret nz

    nop
    nop
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    jr nc, jr_021_54e9

jr_021_54e9:
    nop
    nop
    ld a, a
    di
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rrca
    ldh [rP1], a
    nop
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    sbc a
    rst $20
    rst $38

jr_021_5507:
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    db $fc
    nop
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
    rrca
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    ret nz

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
    nop
    nop
    dec c
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
    nop
    ccf
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp b
    ld a, $00
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
    ld a, a
    rst $38
    ret nz

    nop
    ld bc, $ffff
    dec sp
    rst $38
    rst $38
    rst $38
    ret nz

    ld bc, $ffff
    ldh [rP1], a
    rra
    rst $38
    ret nz

    inc bc
    ld a, a
    rst $38
    ldh [rP1], a
    inc bc
    cp $00
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    sbc [hl]
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_021_5507

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    cp $d0
    nop
    nop
    sbc e
    nop
    nop
    nop
    sbc a
    ldh [rP1], a
    rlca
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
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fc
    nop
    nop
    nop
    jr nc, @+$4e

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    add [hl]
    jr nc, jr_021_55ba

jr_021_55ba:
    nop
    nop
    nop
    ret


    add b
    inc b
    scf
    db $f4
    nop
    nop
    nop
    nop
    nop
    ld bc, $fff7
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    jr nc, jr_021_55dd

jr_021_55dd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $ef3f
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    and b
    add b
    nop
    nop
    ld [hl], b
    inc b
    ld b, b
    adc $7f
    ccf
    rst $38
    rst $18
    rst $38
    rst $38
    ret nz

    nop
    inc e
    inc b
    ld h, c
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    or b
    rlca
    db $fc
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
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
    rst $38
    ei
    sbc c
    ld a, [c]
    ld h, b
    nop
    dec de
    ld a, a
    sbc a
    and $78
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00e0
    nop
    nop
    db $10
    ld a, a
    rst $38
    ccf
    rst $38
    jr nc, jr_021_5667

jr_021_5667:
    nop
    inc c
    jr nz, jr_021_567d

    ld c, a
    db $fc
    call z, $fe21
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
    db $fc

jr_021_567d:
    or [hl]
    ld l, a
    rst $30
    ld l, h
    rst $38
    rst $30
    db $fc
    cp $36
    nop
    nop
    ld b, d
    db $10
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    rrca
    ld [hl], b
    jr @+$81

    rst $38
    ld a, [c]
    ld l, [hl]
    cp $d8
    scf
    ld [hl], a
    ld l, a
    db $fc
    add [hl]
    ld a, a
    ld a, [hl]

jr_021_56c0:
    ld [hl], a
    ld [hl], h
    call Call_000_21fd
    sub d
    nop

jr_021_56c7:
    inc h
    ld b, l
    ei
    ld h, [hl]
    ld [hl], e
    ld a, c
    sub e
    inc c
    db $10
    jr nz, @+$45

    dec c
    xor h
    ret z

    ld h, c
    sub d
    inc h
    add hl, bc
    ld sp, $cc0c
    ld e, c
    reti


    or a
    ld a, [hl]
    call z, $ccc3
    cp $dd
    sbc h
    sub b
    or [hl]
    inc hl
    and a
    ld [hl], $dd
    ld sp, hl
    sub l
    or d
    ld l, b
    inc b
    ld h, [hl]
    ld l, l
    dec sp
    sbc [hl]
    rst $20
    ld [hl], $66
    ld l, l
    jr jr_021_56c7

    call Call_021_61b3
    rst $38
    ld [hl], d
    ld l, h
    db $e3
    ld h, d
    ld h, d
    ret


    inc sp
    jp nc, Jump_021_6673

    ld h, [hl]
    ld h, [hl]
    inc sp
    sub b
    adc c
    sub e
    inc de
    and h
    or [hl]
    ret


    adc l
    call z, Call_021_69e7
    ld c, h
    call $cb94
    add hl, sp
    sbc c
    sbc c
    inc sp
    ld [hl], $58
    ld e, c
    or e
    inc sp
    ld [hl-], a
    ld h, h
    di
    inc h
    sub [hl]
    ld h, [hl]
    ld h, d
    ld c, l
    call z, Call_000_32b7
    ld h, h
    ld h, [hl]
    ld h, e
    jr nc, jr_021_56c0

    sub e
    ld h, $66
    call z, $33e3
    sbc c
    dec c
    sbc c
    or a
    and $66
    ld c, h
    sub d
    ld [hl+], a
    ld h, h
    call $fe9b
    ld a, e
    cp b
    call z, $0486
    ld l, l
    cp e
    cp h
    rst $08
    inc sp
    ld hl, $ce0c
    ld a, a
    xor $cc
    reti


    add d
    nop
    add hl, de
    add hl, de
    or e
    ld [hl], a
    ld a, [hl]
    sub b
    nop
    ld [bc], a
    inc hl
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld b, $7e
    db $fd
    rst $28
    rst $38
    ld [$0000], sp
    inc bc
    add hl, de
    rst $38
    ld sp, hl
    rst $08
    cp $10
    nop
    nop
    inc bc
    dec a
    rst $38
    ld [hl], e
    sbc c
    add b
    nop
    nop
    ld b, h
    rst $28
    rst $38
    ld [hl], e
    cp c
    add h
    nop
    nop
    push bc
    rst $28
    cp $73
    inc sp
    add b
    nop
    ld bc, $ff9f
    db $fc
    adc $62
    nop
    nop
    inc bc
    ccf
    rst $38
    rst $30
    sbc c
    adc b
    nop
    ld bc, $ff1d
    rst $38
    sbc h
    call nz, RST_00
    inc c
    ld a, a
    rst $38
    ld sp, hl
    adc $40
    nop
    nop
    rst $00
    rst $38
    rst $38
    adc $60
    nop
    nop
    ld b, $7f
    rst $38
    di
    sbc b
    nop
    nop
    ld bc, $ffcf
    cp $63
    nop
    nop
    nop
    dec sp
    rst $38
    rst $38
    rst $30
    jr jr_021_57cd

jr_021_57cd:
    ld [hl+], a
    inc bc
    rst $18
    rst $38
    db $fc
    add $00
    ld [$f70c], sp
    rst $38
    cp $e3
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    add hl, sp
    add b
    nop
    ld bc, $ffdf
    rst $38
    cp b
    add b
    nop
    ld bc, $ffdf
    rst $38
    call c, Call_000_00c0
    ld bc, $ffff
    rst $38
    sbc h
    ld b, b
    nop
    ld bc, $ffff
    rst $38
    jr nc, jr_021_57fe

jr_021_57fe:
    nop
    inc bc
    rst $38
    rst $38
    cp $60
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fd
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    call c, RST_00
    nop
    rst $38
    rst $38
    cp $60
    nop
    nop
    rlca
    rst $38
    rst $38
    di
    add b
    nop
    ld bc, $ff3f
    rst $38
    sbc b
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    db $fd
    ret nz

    nop
    nop
    rst $18
    rst $38
    rst $38
    call c, RST_00
    ld bc, $ffff
    db $fd
    ret nz

    nop
    ld bc, $ffdf
    rst $38
    or b
    nop
    nop
    ccf
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $ffff
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    cp $00
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    ld bc, $ffff
    add b
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    cp $00
    ld bc, $ffff
    nop
    nop
    ld bc, $c8e0
    dec bc
    ld a, a
    or b
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    nop
    nop
    scf
    rst $38
    rst $38
    add b
    nop
    cp a
    cp a
    rst $38
    ldh [rP1], a
    inc b
    rst $38
    ld [c], a
    nop
    nop
    ld [bc], a
    ld [hl], a
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    cp $40
    inc de
    inc [hl]
    and $4e
    dec bc
    rst $38
    cp $48
    nop
    inc bc
    rst $38
    rst $38
    ld h, h
    ld d, $ff
    rst $38
    ret c

    nop
    rrca
    rst $38
    rst $38
    ld a, [c]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    ld [bc], a
    rlca
    rst $38
    rst $28
    db $ed
    rst $38
    rst $38
    ldh [rP1], a
    nop
    cpl
    rst $38
    rst $38
    di
    ld h, b
    nop
    ld [bc], a
    nop
    ld a, h
    db $dd
    sub b
    db $10
    db $10
    ld b, b
    jp nc, $ef60

    rst $38
    ld h, h
    add b
    ld [bc], a
    ld b, e
    ld sp, hl
    or a
    ld h, b
    nop
    nop
    ld de, $ffbf
    db $fd
    or e
    or h
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    add sp, $01
    jr nz, jr_021_594e

    ei
    rst $38
    rst $38
    sbc c
    ld [hl-], a
    nop
    ld [hl], b

jr_021_594e:
    cpl
    db $fd
    db $fc
    nop
    nop
    nop
    ld a, h
    add c
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    nop
    nop
    nop
    add b
    dec de
    ld sp, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    ret nz

    nop
    nop
    ld h, [hl]
    rrca
    rst $38
    rst $38
    or $7e
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    ei
    nop
    jr z, jr_021_597f

    add hl, de

jr_021_597f:
    inc b
    rst $38
    rst $18
    and b
    sub e
    inc bc
    ld a, a
    rst $38
    rst $38
    and $fc
    rst $18
    db $fc
    inc de
    inc sp
    ld a, a
    add b
    nop
    nop
    nop
    rrca
    ld a, [$ddff]
    db $fd
    sub b
    db $10
    ld l, a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, h
    inc b
    nop
    add hl, de
    add b
    rra
    cp $6f
    pop af
    ld bc, $0030
    ld bc, $ffff
    ret nz

    ld c, l
    ld hl, sp-$07
    ld bc, $66ff
    call z, $c100
    ldh [rTAC], a
    add b
    rra
    ccf
    call c, Call_000_00ef
    inc b
    ld bc, $04f0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    db $fd
    rst $38
    or $6f
    cp a
    rst $38
    db $fc
    ld c, a
    add b
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    or $7f
    ldh a, [rIE]
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
    db $fc
    ld b, b
    nop
    inc bc
    rst $30
    rrca
    db $fc
    nop
    add hl, de
    inc l
    rlca
    ld b, a
    jr nc, jr_021_59f8

jr_021_59f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e09e
    nop
    ld b, c
    rst $18
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $d3
    ld a, a
    db $ed
    db $db
    ld [hl], a
    db $e4
    db $db
    dec c
    rst $38
    sbc c
    rst $38
    rst $08
    rst $30
    add h
    ld hl, $ff84
    push hl
    or a
    sbc a
    cp a
    ld h, [hl]
    pop bc
    ld [hl-], a
    ld c, l
    inc h
    or d
    adc c
    inc a
    add l
    or b
    ld c, b
    ld e, c
    add hl, bc
    or c
    ld c, d
    inc l
    sbc d
    ld e, e
    ld h, h
    call $b399
    inc h
    and [hl]
    dec c
    sub d
    ld c, c
    dec sp
    dec de
    ld h, e
    ld hl, $9289
    ld l, h
    ld h, h
    reti


    cpl
    dec l
    sub e
    sub e
    and l
    and a
    ld h, c
    inc h
    sub e
    ld l, h
    or [hl]
    sub d
    ld [hl], $c6
    or d
    call c, $b2cd
    or [hl]
    ld a, [de]
    ld c, c
    sbc d
    sub [hl]
    ld c, l
    sbc c
    or [hl]
    or d
    ld [hl-], a
    ld c, l
    ld [hl], $cb
    ld l, h
    sub e
    ld h, h
    sub d
    ld l, l
    sbc e
    ld l, e
    ld [hl-], a
    ld h, e
    add hl, hl
    sbc e
    dec [hl]
    ld [hl-], a
    ld c, h
    sub d
    rst $08
    ld c, c
    and $36
    call z, $c964
    ld l, c
    and l
    sbc e
    ret


    rst $08
    ld l, h
    or [hl]
    ret


    db $db
    add hl, de
    inc sp
    ld [hl], e
    jr c, @+$7b

    sbc c
    and h
    ret


    ld h, $db
    sub e
    ld [hl], $9b
    daa
    inc sp
    ld [hl], e
    add hl, bc
    dec de
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc sp
    ld c, [hl]
    ld b, h
    add [hl]
    call z, $3999
    or e
    dec de
    ld h, e
    inc sp
    ld [hl], $63
    inc hl
    inc sp
    ld [hl], e
    scf
    ld [de], a
    ld h, [hl]
    adc $e9
    sbc [hl]
    ld l, h
    ld c, l
    call c, $fe8c
    ld [hl], e
    call z, $cf64
    rst $38
    push hl
    adc h
    scf
    sbc $cc
    call z, $ff23
    ret c

    nop
    ld h, $df
    ld sp, hl
    add b
    inc b
    rst $38
    cp $00
    dec b
    rst $38
    cp $00
    inc bc
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    nop
    ld bc, $ffff
    nop
    ld bc, $ffff
    nop
    ld bc, $f6ff
    nop
    inc bc
    rst $38
    and $00
    ccf
    rst $38
    call nz, Call_021_7f00
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    add b
    ld bc, $ffff
    add b
    nop
    rst $38
    rst $38
    add b
    ld bc, $ffff
    nop
    inc bc
    rst $38
    db $fc
    nop
    ld h, a
    rst $38
    db $fc
    nop
    rrca
    rst $38
    db $fc
    nop
    rrca
    rst $38
    ldh a, [rSB]
    rst $38
    rst $38
    ret nz

    inc b
    rst $38
    rst $38
    add b
    rrca
    rst $38
    rst $38
    nop
    ccf
    rst $38
    ret nz

    rlca
    cp $1f
    add b
    rra
    rst $38
    ldh [rTAC], a
    rst $38
    rlca
    ret nz

    rrca
    rst $38
    ld hl, sp+$01
    rst $38
    add a
    ldh a, [$03]
    rst $38
    cp $00
    ld a, a
    rst $38
    db $fc
    nop
    rst $38
    rst $38
    add b
    jr nz, jr_021_5b9e

    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00ff
    ld a, a
    ldh [$1f], a

Jump_021_5b5a:
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    ldh a, [rIF]
    ld hl, sp+$0f
    ret nz

    ld a, a
    rlca
    ldh [$1f], a
    ret nz

    ld a, a
    nop
    db $fc
    rlca
    ldh a, [$1f]
    add b
    cp $03
    ldh a, [$1f]
    ret nz

    ld a, [hl]
    inc bc
    ld hl, sp+$0f
    ret nz

    ccf
    ld bc, $07fc
    ldh [$3f], a
    add b
    db $fc
    inc bc
    ldh a, [$1f]
    add b
    ld a, [hl]
    inc bc
    ld hl, sp+$0f
    ret nz

    ld a, a
    ld bc, $07f8
    ldh [$3f], a
    nop
    db $fc
    rlca
    ldh [$3f], a
    add b
    db $fc
    rlca

jr_021_5b9e:
    ldh [$3f], a
    add b
    db $fc
    rlca
    ldh a, [$3f]
    add b
    db $fc
    rlca
    ldh [$3f], a
    add b
    db $fc
    rlca
    ldh a, [$1f]
    add b
    cp $03
    ldh a, [$1f]
    add b
    cp $03
    ldh a, [$1f]
    add b
    cp $03
    ldh a, [$1f]
    add b
    db $fc
    rlca
    ldh a, [$3f]
    add b
    db $fc
    rlca
    ldh [$3f], a
    ld bc, $0ffc
    ldh [$7f], a
    ld bc, $0ff8
    ret nz

    ld a, [hl]
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $03
    ldh a, [$1f]
    add b
    db $fc
    rlca
    ldh [$3f], a
    add c
    db $fc
    rrca
    ldh [$3f], a
    ld bc, $0ffc
    ldh [$3f], a
    ld bc, $0ffc
    ldh [$3f], a
    ld bc, $0ff8
    ret nz

    ld a, [hl]
    inc bc
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$1f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $03
    ldh a, [$3f]
    add b
    db $fc
    rlca
    ldh [$3f], a
    add c
    db $fc
    rrca
    ldh [$3f], a
    add c
    db $fc
    rrca
    ldh [$7f], a
    ld bc, $0ffc
    ldh [$3f], a
    ld bc, $0ffc
    ldh [$7f], a
    ld bc, $0ffc
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    ld a, [hl]
    inc bc
    ldh a, [$1f]
    add b
    cp $07
    ldh [$3f], a
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$1f]
    add c
    db $fc
    rrca
    ldh [$3f], a
    ld bc, $0ff8
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ldh [$3f], a
    ld bc, $0ff8
    ldh [$7f], a
    inc bc
    ld hl, sp+$0f
    ret nz

    ld a, a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $03
    ldh a, [$1f]
    ret nz

    cp $07
    ldh a, [$1f]
    add b
    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add b
    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    add c
    db $fc
    rrca
    ldh [$7e], a
    rlca
    ldh a, [$3f]
    inc bc
    ld hl, sp+$1f
    pop bc
    db $fc
    rrca
    ret nz

    cp $07
    ldh [$7f], a
    rlca
    ldh a, [$3f]
    inc bc
    ld hl, sp+$1f
    add c
    db $fc
    rrca
    ret nz

    db $fc
    rrca
    ldh [$7e], a
    rlca
    ldh a, [$7f]
    inc bc
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    add c
    ld hl, sp+$1f
    ret nz

    db $fc
    rrca
    ret nz

    cp $07
    ldh [$7f], a
    rlca
    ldh a, [$3f]
    inc bc
    ld hl, sp+$1f
    add c
    db $fc
    rra
    ret nz

    db $fc
    rrca
    ldh [$fe], a
    rlca
    ldh [$7e], a
    rlca
    ldh a, [$3f]
    inc bc
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    add c
    db $fc
    rrca
    ret nz

    db $fc
    rrca
    ldh [$7e], a
    rlca
    ldh a, [$3f]
    inc bc
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    ret nz

    db $fc
    rrca
    ldh [$7f], a
    rlca
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    ret nz

    db $fc
    rrca
    ldh [$7f], a
    rlca
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ret nz

    cp $07
    ldh a, [$3f]
    ld bc, $1ff8
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$7f], a
    ld bc, $0ffc
    ldh [$7f], a
    inc bc
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    ld a, a
    inc bc
    ld hl, sp+$1f
    ret nz

    ld a, a
    inc bc
    ld hl, sp+$1f
    ldh [$7f], a
    inc bc
    ld hl, sp+$0f
    ldh [$7f], a
    ld bc, $0ffc
    ldh [$3f], a
    add c
    db $fc
    rlca
    ldh a, [$3f]
    add b
    cp $03
    ld hl, sp+$1f
    ret nz

    ld a, a
    ld bc, $0ffc
    ldh [$3f], a
    add b
    cp $07
    ld hl, sp+$1f
    ret nz

    ld a, a
    ld bc, $07fc
    ldh a, [$3f]
    ret nz

    rst $38
    inc bc
    db $fc
    rrca
    ldh [$3f], a
    add b
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    ld bc, $07fc
    ldh a, [$1f]
    ret nz

    ld a, a
    add b
    cp $03
    ld hl, sp+$0f
    ldh a, [$1f]
    ret nz

    ld a, a
    add b
    cp $03
    db $fc
    rlca
    ldh a, [rIF]
    ldh [$3f], a
    ret nz

    ld a, a
    nop
    cp $03
    db $fc
    rlca
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $03fc
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld hl, sp+$03
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    nop
    cp $00
    ld a, a
    nop
    ccf
    ret nz

    rrca
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    ld hl, sp+$07
    ld hl, sp+$00
    ld a, a
    add b
    ld a, a
    add b
    rrca
    ldh a, [rTAC]
    ldh a, [rP1]
    cp $00
    ld a, a
    ld c, $03
    ld hl, sp+$01
    db $fc
    ldh a, [$1f]
    ret nz

    rrca
    rst $38
    add b
    cp $00
    rra
    db $fc
    rlca
    ldh a, [rP1]
    ld a, a
    ret nz

    rra
    ret nz

    inc bc
    rst $38
    nop
    cp $0c
    rlca
    rst $38
    ld bc, $70fc
    ccf
    ret z

    rlca
    pop af
    ret nz

    ld a, a
    nop
    rra
    rst $20
    add c
    db $fc
    jr jr_021_5ecc

    rst $38
    ld bc, $38fc
    rrca
    ld hl, sp+$03
    ld hl, sp+$78
    rra
    db $e3
    add c
    rst $38
    ld hl, sp+$1f

jr_021_5ecc:
    jp $ffc0


    ld hl, sp+$1f
    rst $00
    ret nz

    rst $38
    ldh a, [$1f]
    rst $38
    add b
    rst $38
    ldh a, [$1f]
    rst $38
    add b
    rst $38
    cp b
    rrca
    rst $28
    ret nz

    ld a, a
    ld e, $07
    rst $38
    ret nz

    ld a, a
    rrca
    inc bc
    rst $38
    ldh [$3f], a
    rst $08
    nop
    rst $38
    ldh a, [$1f]
    rst $00
    add b
    ld a, a
    jr c, jr_021_5f06

    rst $20
    ldh [$3f], a
    sbc [hl]
    inc bc
    rst $38
    ldh a, [$1f]
    rst $20
    add b
    rst $38
    ld hl, sp+$07
    ldh a, [$e0]

jr_021_5f06:
    ccf
    cp $03
    ld hl, sp-$08
    rrca
    rst $38
    nop
    db $fc
    ld a, $01
    rst $38
    ret nz

    ccf
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    rst $20
    ldh a, [$1f]
    rst $38
    add b
    rst $38
    cp $01
    rst $38
    add b
    rrca
    rst $38
    ret nz

    ld a, a
    rra
    nop
    rst $38
    ld hl, sp+$07
    pop hl
    ldh a, [$1f]
    rst $38
    nop
    cp $1f
    ld bc, $f8f9
    rra
    rst $00
    ldh a, [rIF]
    rst $18
    ret nz

    cp $3f
    ret nz

    ld a, a
    adc [hl]
    rlca
    pop hl
    db $fc
    inc bc
    ldh a, [$7c]
    rrca
    rst $38
    ldh [$3f], a
    add e
    ldh a, [$1f]
    rst $38
    ld bc, $3ff8
    add b
    ld hl, sp-$08
    rrca
    ldh [$fc], a
    inc bc
    ld a, [c]
    nop
    ld a, a
    rra
    ldh a, [rIF]
    ret nz

    ld a, a
    pop hl
    rst $38
    add b
    db $fc
    rrca
    ldh a, [$3f]
    ldh a, [$1f]
    ret nz

    rst $38
    rlca
    ldh a, [$03]
    ld hl, sp+$7f
    rst $38
    ldh [$3f], a
    ld bc, $0ffe
    ldh a, [$3f]
    ld bc, $0ffc
    rst $38
    inc bc
    ldh a, [$1f]
    ret nz

    ld a, a
    ld hl, sp+$1f
    add b
    cp $07
    rst $38
    ret nz

    db $fc
    rlca
    ldh a, [$1f]
    db $fc
    rlca
    ldh [$7f], a
    add c
    rst $38
    ldh [$7e], a
    inc bc
    ld hl, sp+$0f
    cp $07
    ldh [$3f], a
    add c
    rst $38
    ldh a, [$3f]
    inc bc
    db $fc
    rrca
    rst $38
    inc bc
    ldh a, [$1f]
    ret nz

    rst $38
    ldh a, [$3f]
    ld bc, $0ffc
    rst $38
    inc bc
    ldh a, [$1f]
    ret nz

    rst $38
    ld hl, sp+$1f
    add c
    cp $07
    rst $38
    add c
    ld hl, sp+$0f
    ldh [$7f], a
    ld hl, sp+$1f
    add b
    cp $03
    rst $38
    add c
    ld hl, sp+$0f
    ldh [$7f], a
    ld hl, sp+$1f
    add b
    cp $07
    rst $38
    ld bc, $1ff8
    ldh [$7f], a
    ldh a, [$3f]
    ld bc, $07fc
    cp $07
    ldh [$3f], a
    ret nz

    rst $38
    ldh [$7e], a
    inc bc
    ld hl, sp+$1f
    db $fc
    rrca
    ret nz

    rst $38
    inc bc
    rst $38
    add c
    ld hl, sp+$0f
    ldh [$7f], a
    ldh a, [$3f]
    inc bc
    db $fc
    rrca
    cp $07
    ldh [$7f], a
    add e
    rst $38
    add c
    ld hl, sp+$0f
    ldh a, [$3f]
    ldh a, [$3f]
    inc bc
    db $fc
    rra
    db $fc
    rrca
    ret nz

    ld a, a
    inc bc
    cp $03
    ldh a, [$1f]
    ret nz

    rst $38
    add b
    db $fc
    rlca
    ld hl, sp+$3f
    ret nz

    ld a, [hl]
    rlca
    ld hl, sp+$3f
    ldh a, [$1f]
    add c
    cp $0f
    db $fc
    rrca
    ret nz

    rst $38
    add a
    db $fc
    rlca
    ret nz

    rst $38
    add e
    cp $07
    ldh [$7f], a
    add e
    rst $38
    inc bc
    ldh a, [$3f]
    ldh [rIE], a
    add c
    ld hl, sp+$1f
    ldh a, [$7f]
    inc bc
    ldh a, [$1f]
    ldh [rIE], a
    ld bc, $0ff8
    ldh a, [$fe]
    inc bc
    ldh a, [$1f]
    pop hl
    db $fc
    rrca
    ldh [$3f], a
    jp $1ff8


    add b
    ld a, a
    rlca
    ldh [$3f], a
    nop
    cp $0f
    ret nz

    db $fc
    rlca
    ld hl, sp+$7f
    ld bc, $1ff8
    ldh a, [$fc]
    rrca
    ret nz

    rst $38
    jp Jump_000_3ff0


    add c
    cp $0f
    ld bc, $07fe
    ld hl, sp+$3c
    rlca
    ldh a, [$7f]
    ldh [$38], a
    rrca
    db $e3
    cp $03
    ldh a, [$1f]
    rst $00
    ldh a, [rIF]
    ret nz

    ccf
    rrca
    ldh a, [$1f]
    add e
    cp $07
    ldh a, [$1f]
    add e
    cp $03
    ldh a, [$1f]
    rst $28
    ld hl, sp+$03
    db $fc
    rrca
    rst $38
    ld hl, sp+$0f
    jp $e3e3


    ld hl, sp+$07
    pop hl
    rst $38
    add c
    cp $03
    ld hl, sp+$7f
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    ld bc, $3ef8
    jr @+$41

    ret nz

    db $fc
    rrca
    ldh [$1f], a
    ldh a, [$3f]
    add a
    ldh a, [$1f]
    cp $07
    rst $38
    ldh a, [$1f]
    add c
    ld hl, sp+$07
    db $fc
    rlca
    ldh [$fc], a
    inc bc
    rst $38
    ld bc, $fefc
    inc bc
    ldh a, [$f0]
    ld a, a
    rst $38
    ld bc, $3ff8
    nop
    ld a, a
    add b
    cp $1f
    ret nz

    ld a, a
    ldh a, [$1f]
    rst $38
    ret nz

    ld a, [hl]
    rrca
    rlca
    sbc a
    ldh [$3f], a
    inc bc
    ldh a, [rIF]
    ld hl, sp+$0f
    pop hl
    ld hl, sp+$07
    rst $38
    ld bc, $fef9
    rlca
    ldh a, [$f8]
    rrca
    rst $38
    ld bc, $3ffc
    nop
    rst $38
    ldh a, [$3f]
    rrca
    ret nz

    ld a, a
    cp $07
    rst $38
    ldh a, [$1f]
    add e
    ldh [$1f], a
    cp $07
    ldh a, [$fc]
    rlca
    ei
    ret nz

    cp $3f
    add c
    ld hl, sp+$7c
    inc bc
    rst $38
    ldh [$7e], a
    rrca
    ret nz

    ld a, a
    db $fc
    rrca
    jp Jump_000_0ff8


    db $e3
    ret nz

    db $fc
    ld a, a
    inc bc
    ldh a, [$7e]
    ld bc, $e0ff
    ld a, a
    rrca
    ldh [$3f], a
    cp $07
    pop hl
    ld hl, sp+$0f
    jp Jump_000_3fe0


    cp $03
    ldh a, [$7f]
    nop
    rst $38
    ret nz

    ld a, a
    rrca
    ldh [$7e], a
    ld c, $0f
    rst $38
    ldh a, [$1f]
    add e
    ldh a, [$1f]
    cp $07
    ldh a, [$7f]
    ld bc, $00fe
    ld a, [hl]
    rra
    ret nz

    ld a, [hl]
    rrca
    ret nz

    ld a, a
    ldh a, [$1f]
    add c
    db $fc
    rlca
    rst $38
    ld bc, $3ff8
    add c
    ld hl, sp+$3c
    rra
    rst $38
    ret nz

    ld a, [hl]
    rlca
    ldh a, [rIF]
    ld hl, sp+$0f
    pop bc
    cp $03
    db $fc
    ld bc, $7ff8
    ld bc, $1ff8
    ret nz

    ld a, a
    ret nz

    ld a, [hl]
    rlca
    ldh a, [rIF]
    ld hl, sp+$0f
    ldh [$fe], a
    inc bc
    ldh a, [$3f]
    ldh [rIE], a
    ld bc, $1ff8
    ret nz

    ccf
    ldh [$3f], a
    inc bc
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh [$fe], a
    inc bc
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    db $fc
    rrca
    ldh a, [rIF]
    ld hl, sp+$0f
    pop bc
    db $fc
    inc bc
    ldh a, [$1f]
    ldh [rIE], a
    inc bc
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    rlca
    db $fc
    inc bc
    ld hl, sp+$03
    ldh a, [$7f]
    ld bc, $0ff8
    ldh a, [$3f]
    ret nz

Call_021_61b3:
    ld a, [hl]
    rlca
    ld hl, sp+$00
    ld a, a
    add c
    db $fc
    rra
    ret nz

    ld a, [hl]
    inc bc
    cp $0f
    ldh a, [$3f]
    inc bc
    cp $03
    sbc a
    ld bc, $1ff8
    ldh [rIF], a
    ldh a, [rIF]
    ldh [$fc], a
    rrca
    ldh [$7f], a
    ret nz

    rst $38
    inc bc
    ldh a, [$3f]
    ret nz

    inc bc
    ldh a, [$3f]
    add c
    db $fc
    inc bc
    ldh a, [rTAC]
    ld hl, sp+$7f
    inc bc
    ldh a, [$1f]
    ldh [$3f], a
    add b
    db $fc
    rrca
    ld hl, sp+$07
    db $fc
    rrca
    ldh [$7f], a
    nop
    db $fc
    nop
    rst $38
    rra
    ret nz

    db $fc
    rlca
    db $fc
    rrca
    ldh a, [$1f]
    add c
    rst $38
    nop
    rlca
    rst $38
    inc bc
    rst $38
    ldh a, [$1f]
    add c
    rst $38
    pop bc
    db $fc
    rrca
    ldh [$7f], a
    add b
    ld bc, $0ffc
    ldh [rIE], a
    ld bc, $01fc
    cp $1f
    ret nz

    db $fc
    rrca
    cp $03
    db $fc
    rrca
    ldh [$3f], a
    ret nz

    rlca
    pop af
    add c
    cp $3e
    rlca
    ldh [$3f], a
    ldh [$7f], a
    add c
    db $fc
    rrca
    ldh a, [rP1]
    rra
    db $fc
    rrca
    pop af
    ldh [$7e], a
    inc bc
    cp $03
    ld hl, sp+$1f
    ret nz

    rst $38
    add b
    ret nz

    ld a, a
    ld bc, $0ffc
    ret nz

    ld a, [hl]
    ld b, $1f
    add e
    ldh a, [$3f]
    ld bc, $83ff
    ret nz

    rra
    ldh [$1f], a
    pop bc
    ld hl, sp+$0f
    ldh [$e1], a
    db $fc
    ccf
    inc bc
    ldh a, [$1f]
    ld hl, sp+$1e
    ld bc, $00fe
    ld a, a
    cp $01
    ld hl, sp+$1f
    rrca
    jp Jump_000_3ff0


    ld bc, $03fe
    rst $38
    ret nz

    db $fc
    rlca
    db $fc
    nop
    ld a, a
    nop
    rra
    jp $1ff8


    add c
    rst $38
    rst $38
    ret nz

    ld bc, $01fc
    rst $38
    inc e
    inc bc
    ld hl, sp+$18
    ld a, a
    rrca
    ret nz

    db $fc
    rrca
    ld hl, sp+$0c
    ld bc, $c0ff
    ld a, a
    rst $38
    add c
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    add b
    rst $38
    rlca
    ld bc, $08fe
    rra
    rst $20
    ret nz

    db $fc
    rrca
    jp $80ff


    ld a, a
    rlca
    jp $f8ff


    rra
    add b
    rst $38
    db $fc
    inc a
    inc bc
    ld hl, sp+$3f
    rra
    rst $38
    ld bc, $0ffc
    db $fc
    rrca
    ldh a, [$1f]
    ret nz

    rst $38
    add b
    nop
    rst $38
    ldh [$1f], a
    jp Jump_000_3fe0


    inc bc
    db $fc
    ld bc, $03ff
    ldh a, [$3f]
    adc a
    ld hl, sp+$0f
    ldh [$f0], a
    ld a, a
    rra
    add c
    ldh a, [$3f]
    add e
    ldh a, [$3e]
    rlca
    ldh [$7f], a
    rst $38
    add b
    ld a, a
    inc bc
    pop bc
    db $fc
    ld a, h
    rrca
    pop bc
    db $fc
    ccf
    ld bc, $1ff0
    ret nz

    rst $38
    ret nz

    ld bc, $10fe
    rra
    jp Jump_021_7ee0


    rrca
    ldh a, [rSB]
    rst $38
    add c
    ld hl, sp+$1f
    ld hl, sp+$00
    ld a, a
    ret nz

    ld a, a
    inc bc
    db $fc
    rlca
    ldh [$7c], a
    rrca
    rst $38
    ldh [$7c], a
    rrca
    rst $38
    add b
    ccf
    ret nz

    db $fc
    rrca
    rst $38
    nop
    ccf
    add b
    ccf
    rlca
    db $fc
    rlca
    ldh [$3f], a
    add b
    rst $38
    ldh [$7e], a
    rlca
    pop af
    ldh a, [$03]
    ld hl, sp+$0f
    ret nz

    rst $38
    add b
    cp $06
    ld a, [hl]
    rrca
    db $fc
    rrca
    ret nz

    rst $38
    nop
    ccf
    ldh [$7e], a
    rlca
    rst $38
    nop
    rra
    ldh [$7f], a
    rlca
    db $fc
    inc bc
    ld hl, sp+$19
    cp $3f
    ldh [$7e], a
    inc bc
    db $fc
    rlca
    rst $38
    inc bc
    ldh a, [$3f]
    ldh a, [rTAC]
    cp $07
    ldh a, [$3f]
    ret nz

    ld a, a
    ld [bc], a
    rrca
    jp $0ffc


    ret nz

    rst $38
    ld hl, sp+$1f
    ldh [$7e], a
    rlca
    rst $38
    add b
    rlca
    ld hl, sp+$0f
    ldh [$7f], a
    ld bc, $0ff8
    ldh [$7f], a
    ret nz

    db $fc
    rrca
    rst $38
    add b
    ld a, a
    inc bc
    ldh a, [$3f]
    ldh a, [rSB]
    cp $00
    db $fc
    rrca
    ldh [$3f], a
    ld bc, $0ff8
    db $fc
    rrca
    ret nz

    rst $38
    ldh a, [rIF]
    ld hl, sp+$1f
    add c
    rst $38
    add b
    ld a, a
    nop
    rra
    add e
    db $fc
    rlca
    ldh [$3f], a
    inc bc
    rst $38
    pop bc
    ld hl, sp+$1f
    rst $38
    nop
    ccf
    ldh [$7e], a
    rlca
    ld hl, sp+$07
    ldh a, [$61]
    db $fc
    ld a, a
    ret nz

    db $fc
    inc bc
    db $fc
    inc bc
    cp $07
    ldh [$7e], a
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $0ff8
    ret nz

    ld hl, sp+$1f
    rst $38
    add e
    ldh a, [$3e]
    ld a, a
    nop
    rst $38
    add c
    ld hl, sp+$1f
    db $fc
    inc bc
    ldh a, [$03]
    ldh a, [$7f]
    ret nz

    db $fc
    rlca
    ld hl, sp+$1f
    ldh a, [rIF]
    pop bc
    rst $38
    rst $38
    nop
    ld a, a
    nop
    cp $03
    ldh a, [$1f]
    ret nz

    cp $07
    rst $38
    rlca
    ldh [$7d], a
    ld hl, sp+$03
    cp $0f
    ret nz

    rst $38
    ldh [rIF], a
    ldh a, [rTAC]
    ldh a, [rIE]
    add b
    db $fc
    rlca
    ldh a, [$3f]
    ld hl, sp+$1f
    add c
    rst $38
    ret nz

    ccf
    ld hl, sp+$0f
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    rra
    jp Jump_000_3ff0


    nop
    db $fc
    rlca
    cp $01
    ld hl, sp+$3f
    ldh [$1f], a
    db $fc
    rlca
    ldh [$7f], a
    ld bc, $1cfc
    rra
    rst $38
    ldh a, [$3f]
    add c
    ldh a, [$1f]
    rst $20
    add c
    ld hl, sp+$1f
    ld bc, $f8ff
    rra
    add e
    ldh a, [$1f]
    add a
    ret nz

    db $fc
    rra
    inc bc
    ld hl, sp+$7c
    rrca
    pop hl
    ldh a, [$3f]
    add e
    ret nz

    db $fc
    ld e, $07
    ldh a, [$78]
    rra
    rst $08
    ldh [$7e], a
    rrca
    add e
    ld hl, sp+$3c
    rrca
    jp Jump_000_3ff0


    rrca
    add c
    db $fc
    ld a, $07
    pop hl
    ld hl, sp+$3f
    add a
    ret nz

    db $fc
    ld a, $07
    ldh a, [$78]
    rra
    add e
    ret nz

    cp $1f
    inc bc
    ldh a, [$78]
    rra
    jp $fec0


    ld e, $07
    ldh a, [rSVBK]
    ccf
    add e
    add c
    db $fc
    jr c, jr_021_6473

    pop bc
    ret nz

    ld a, a
    ld c, $07
    ldh a, [$f0]
    ccf
    adc a
    inc bc
    ld hl, sp+$78
    rra
    rst $00
    add c

jr_021_6473:
    db $fc
    ld a, h
    rrca
    jp $fec0


    inc a
    rrca
    pop hl
    ret nz

    cp $3c
    rrca
    db $e3
    ret nz

    cp $1c
    rrca
    db $e3
    ret nz

    cp $1c
    rrca
    db $e3
    ret nz

    cp $3c
    rrca
    db $e3
    ret nz

    cp $38
    rra
    rst $00
    add c
    db $fc
    ld [hl], b
    ccf
    add a
    inc bc
    ld hl, sp-$20
    ccf
    adc [hl]
    rlca
    pop af
    ret nz

    ld a, a
    inc a
    rrca
    db $e3
    add c
    db $fc
    ld a, b
    rra
    adc a
    inc bc
    ld hl, sp-$10
    ccf
    ld e, $07
    pop af
    ret nz

    cp $38
    rra
    rst $00
    inc bc
    ld hl, sp+$60
    ld a, a
    inc c
    rrca
    pop hl
    add c
    db $fc
    jr nc, jr_021_6501

    adc h
    rlca
    pop af
    ret nz

    cp $38
    rra
    jp $f803


    ld b, b
    ld a, a
    ld [$e00f], sp
    ld bc, $40fc
    ld a, a
    nop
    rrca
    db $e3
    ld bc, $00fc
    ccf
    adc h
    rrca
    pop hl
    ld bc, $20fc
    ccf
    adc b
    rrca
    pop af
    ld bc, $00fc
    ccf
    adc h
    rrca
    pop af
    ld bc, $40fe
    ccf
    sbc b
    rrca
    di
    ld bc, $40fc
    ld a, a
    jr @+$11

    ld [c], a
    inc bc
    db $fc
    ret nz

    ld a, a
    nop
    rrca

jr_021_6501:
    ld [c], a
    inc bc
    ld hl, sp+$00
    rst $38
    db $10
    rra
    call nz, $f007
    add b
    cp $20
    ccf
    add h
    rlca
    pop af
    ld bc, $00fc
    ld a, a
    ld [$e30f], sp
    inc bc
    ld hl, sp+$40
    ld a, a
    jr jr_021_653e

    add $03
    ld hl, sp-$40
    cp $38
    rra
    add [hl]
    rlca
    pop af
    add b
    db $fc
    jr nc, jr_021_656c

    inc c
    rrca
    pop hl
    add e
    ld hl, sp+$60
    ld a, a
    jr jr_021_6555

    rst $00
    inc bc
    ldh a, [$c0]
    cp $38
    ccf
    add [hl]

jr_021_653e:
    rlca
    pop af
    pop bc
    db $fc
    jr nc, jr_021_6583

    adc [hl]
    rlca
    pop hl
    pop bc
    db $fc
    jr nc, jr_021_658a

    adc [hl]
    rlca
    pop hl
    pop bc
    db $fc
    ld a, b
    ccf
    add [hl]
    rlca
    pop hl

jr_021_6555:
    ret nz

    db $fc
    jr c, jr_021_6598

    adc [hl]
    rlca
    pop hl
    pop bc
    db $fc
    jr c, jr_021_659f

    adc a
    rlca
    ldh a, [$c0]
    db $fc
    jr c, jr_021_6586

    add [hl]
    rlca
    ldh a, [$c0]
    db $fc

jr_021_656c:
    jr c, @+$21

    add d
    rlca
    pop af
    ret nz

    cp $18
    rra
    jp $f007


    ret nz

    ld a, [hl]
    inc c
    rra
    jp $f883


    jr nc, jr_021_6600

    ld c, $0f

jr_021_6583:
    pop hl
    add c
    db $fc

jr_021_6586:
    db $10
    ccf
    add [hl]
    rlca

jr_021_658a:
    ldh a, [rLCDC]
    cp $18
    rra
    pop bc
    inc bc
    ldh a, [$60]
    ld a, a
    inc b
    rra
    pop bc
    add c

jr_021_6598:
    ld hl, sp+$30
    ccf
    ld b, $07
    ldh [$c0], a

jr_021_659f:
    db $fc
    jr jr_021_65c1

    add e
    add e
    ld hl, sp+$70
    ld a, a
    ld c, $0f
    pop hl
    ret nz

    db $fc
    inc e
    rra
    add e
    add e
    ld hl, sp+$70
    ld a, a
    rlca
    rrca
    pop hl
    ldh [$fc], a
    inc e
    rrca
    jp $f8c1


    ld a, b
    rra
    add a
    inc bc

jr_021_65c1:
    ldh a, [$f0]
    ld a, a
    rrca
    rlca
    ldh [$e0], a
    cp $1e
    rrca
    pop bc
    pop bc
    db $fc
    inc a
    rra
    jp $f8c1


    jr c, jr_021_6614

    add a
    add e
    ld hl, sp+$78
    ccf
    rrca
    add e
    ldh a, [$78]
    ccf
    rrca
    add e
    ldh a, [$78]
    ccf
    rrca
    add e
    ld hl, sp+$78
    ccf
    adc a
    add c
    ld hl, sp+$78
    rra
    add a
    pop bc
    db $fc
    ld a, h
    rra
    jp $fcc0


    ld a, $0f
    pop hl
    ldh [$7e], a
    rra
    rlca
    ldh a, [$f0]
    rra

jr_021_6600:
    add a
    add c
    db $fc
    inc a
    rrca
    jp Jump_021_7ee0


    rra
    inc bc
    ldh a, [$f8]
    rra
    adc a
    ret nz

    cp $3e
    rlca
    ldh a, [$f0]

jr_021_6614:
    ccf
    adc a
    add c
    db $fc
    ld a, [hl]
    rrca
    db $e3
    ldh a, [$7f]
    rra
    add c
    ld hl, sp-$04
    rrca
    rst $20
    ldh [$7f], a
    ld a, a
    add c
    rst $38
    db $fc
    rlca
    pop af
    ldh a, [$3f]
    cp a
    add c
    db $fc
    ld a, [hl]
    rrca
    db $e3
    ldh a, [$3f]
    sbc a
    ret nz

    cp $f3
    inc bc
    rst $38
    adc h
    rrca
    db $ec
    ld [hl], b
    ccf
    adc a
    ret nz

    db $fc
    ld a, a
    inc bc
    pop af
    db $fc
    rrca
    rst $28
    jr c, jr_021_666a

    sbc a
    ldh [$7e], a
    ld a, a
    add c
    ld sp, hl
    ld hl, sp+$07
    di
    db $fc
    rlca
    rst $38
    ld hl, sp+$1f
    db $fc
    ldh a, [$1f]
    rst $38
    ret nz

    cp $e7
    add b
    rst $38
    cp $03
    rst $38
    adc [hl]
    ld bc, $f8ff
    rrca

jr_021_666a:
    db $fc
    rra
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$1f
    nop

Jump_021_6673:
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, [hl]
    ld bc, $80ff
    ld a, a
    add b
    db $fc
    ld bc, $00ff
    cp $03
    ld hl, sp+$01
    rst $38
    add b
    cp $01
    ldh a, [rTAC]
    rst $38
    ld bc, $01fe
    ldh a, [rTAC]
    rst $38
    inc bc
    cp $03
    ldh [rIF], a
    cp $03
    cp $07
    ret nz

    rra
    cp $03
    cp $07
    ldh [$1f], a
    cp $03
    cp $07
    ldh [$1f], a
    ld hl, sp+$01
    rst $38
    inc bc
    ldh a, [rIF]
    ei
    add c
    rst $38
    add c
    ldh a, [rIF]
    rst $38
    ld bc, $c1ff
    ld hl, sp+$07
    db $fc
    nop
    ld a, a
    ret nz

    db $fc
    inc bc
    cp $00
    ld a, a
    ret nz

    db $fc
    inc bc
    rst $38
    ret nz

    rra
    ldh a, [$7e]
    ld bc, $80ff
    rra
    ldh a, [$3f]
    nop
    ld a, a
    adc b
    rrca
    db $fc
    rrca
    add b
    ld a, a
    ret nz

    rlca
    cp $07
    ret nz

    ccf
    ret nz

    ld bc, $83ff
    ret nz

    rrca
    ldh [rSB], a
    rst $38
    add c
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    ldh [$f0], a
    inc bc
    ld hl, sp+$00
    rrca
    ldh a, [$78]
    ld bc, $20fc
    ccf
    ld hl, sp+$3e
    nop
    cp $00
    rrca
    db $fc
    rra
    nop
    ld a, a
    nop
    rrca
    cp $0f
    add b
    ccf
    ret nz

    nop
    rst $38
    inc bc
    ldh [rIF], a
    ldh a, [rSB]
    rst $38
    pop bc
    ldh a, [$03]
    db $fc
    nop
    ld a, a
    ld hl, sp+$3c
    ld bc, $00fc
    nop
    cp $00
    nop
    ld a, a
    ld c, $00
    ld a, a
    rlca
    add b
    ccf
    add c
    nop
    ccf
    pop bc
    ldh [rIF], a
    ldh a, [rP1]
    rrca
    ldh [$7c], a
    ld bc, $00fc
    inc bc
    db $fc
    rra
    nop
    ld a, a
    add b
    nop
    ld a, a
    add e
    ldh [rIF], a
    ldh [rLCDC], a
    rrca
    ldh [$7c], a
    inc bc
    db $fc
    nop
    inc bc
    db $fc
    rrca
    ret nz

    ccf
    ret nz

    nop
    rst $38
    add c
    ldh a, [rTAC]
    ld hl, sp+$00
    rlca
    ld hl, sp+$3f
    nop
    ld a, a
    nop
    nop
    ld a, a
    inc bc
    ldh a, [rTAC]
    ldh a, [rP1]
    rrca
    ldh [$7f], a
    nop
    rst $38
    nop
    rrca
    rst $38
    rlca
    ldh [rIF], a
    ldh [$f0], a
    rlca
    ldh a, [$7e]
    ld bc, $1cfe
    ld bc, $0ffc
    ldh [rIF], a
    rst $38
    nop
    rst $38
    pop bc
    db $fc
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    rrca
    ret nz

    rrca
    ldh a, [rP1]
    rlca
    ldh a, [$7e]
    nop
    cp $06
    nop
    ld a, a
    rlca
    ret nz

    rra
    pop bc
    ldh [rIF], a
    ldh [$fc], a
    ld bc, $00fe
    ld bc, $07fe
    ldh a, [rTAC]
    ld hl, sp+$00
    ccf
    ldh [rIE], a
    nop
    ccf
    ld hl, sp+$07
    rst $28
    pop bc
    db $fc
    inc bc
    db $fc
    inc e
    ld bc, $1ffc
    ret nz

    rra
    db $e3
    ret nz

    rra
    ret nz

    rst $38
    nop
    ld a, a
    ld hl, sp+$03
    cp $07
    ld hl, sp+$00
    ld a, a
    ldh [$1f], a
    ld hl, sp+$1f
    ldh a, [rTAC]
    rst $38
    add b
    ccf
    ldh [rIE], a
    nop
    rrca
    db $fc
    ld bc, $c1ff
    cp $00
    ld a, a
    ldh [rIF], a
    cp $0f
    ldh a, [rP1]
    rst $38
    ret nz

    ccf
    ld hl, sp+$3f
    ldh [rTAC], a
    rst $38
    nop
    ld a, a
    ldh [rIE], a
    add b
    rrca
    ld hl, sp+$01
    rst $38
    add a
    ld hl, sp+$00
    ld a, a
    ret nz

    rrca
    sbc a
    add a
    ldh a, [$03]
    ld hl, sp+$78
    ld bc, $1ffe
    add b
    rra
    db $e3
    ldh a, [rTAC]
    ld hl, sp+$7f
    nop
    ld a, a
    add a
    ret nz

    rlca
    ldh [$fc], a
    nop
    rst $38
    ccf
    nop
    ccf
    add e
    db $fc
    ld bc, $3cfe
    nop
    cp $07
    ld hl, sp+$03
    rst $38
    ldh a, [$1f]
    ld hl, sp+$1f
    ldh [$03], a
    rst $38
    ldh [$3f], a
    ldh a, [$3f]
    ldh [rTAC], a
    rst $38
    add b
    ld a, a
    ldh a, [$7f]
    add b
    rra
    pop bc
    ldh [rTAC], a
    ldh [$7f], a
    nop
    ld a, a
    rrca
    ret nz

    rra
    pop bc
    cp $00
    cp $1f
    nop
    ccf
    inc bc
    db $fc
    nop
    rst $38
    inc c
    nop
    ld a, [hl]
    rlca
    ld hl, sp+$00
    ld a, a
    db $fc
    nop
    cp $07
    ld hl, sp+$00
    rst $38
    rst $18
    add b
    ccf
    add e
    db $fc
    ld bc, $3ffe
    add b
    ld a, a
    rlca
    ld hl, sp+$01
    db $fc
    ccf
    add b
    ccf
    inc bc
    ld hl, sp+$00
    db $fc
    ccf
    nop
    ld a, a
    inc bc
    ld hl, sp+$00
    rst $38
    db $fc
    nop
    cp $07
    ld hl, sp+$01
    rst $38
    rst $38
    nop
    ld a, a
    inc bc
    ld hl, sp+$01
    db $fc
    ccf
    add b
    ld a, a
    add e
    ld hl, sp+$03
    ld hl, sp-$01
    nop
    ld a, a
    inc bc
    ldh a, [$03]
    db $fc
    cp $00
    cp $07
    ldh a, [rTAC]
    ldh a, [$fe]
    nop
    cp $0f
    ldh [rIF], a
    ldh [$fc], a
    ld bc, $1ffc
    ret nz

    rra
    jp Jump_000_03fc


    ld hl, sp+$1f
    ret nz

    ccf
    add e
    ld hl, sp+$03
    ld hl, sp+$3f
    nop
    ld a, a
    rlca
    ldh [rTAC], a
    ldh [$fe], a
    nop
    cp $0f
    ldh [$1f], a
    ldh [$fc], a
    inc bc
    db $fc
    rra
    add b
    ccf
    pop bc
    ldh a, [rTAC]
    ldh a, [$7e]
    nop
    ld a, [hl]
    rlca
    ldh [rIF], a
    ldh [$fc], a
    ld bc, $1ffc
    ret nz

    ccf
    ret nz

    ld hl, sp+$03
    ld hl, sp+$1f
    nop
    ccf
    rlca
    ldh a, [rTAC]
    ldh a, [rIE]
    nop
    cp $0f
    ldh a, [$1f]
    ldh [$fe], a
    ld bc, $0ffe
    ret nz

    rrca
    ldh [$fc], a
    ld bc, $1ffc
    ldh [$3f], a
    pop hl
    cp $03
    db $fc
    rra
    ret nz

    rra
    pop bc
    ld hl, sp+$01
    ld hl, sp+$3f
    add b
    ccf
    add a
    db $fc
    rlca
    ld hl, sp+$3f
    add b
    ld a, a
    add e
    ldh a, [rTAC]
    ld hl, sp+$3e
    nop
    ccf
    rlca
    ldh a, [rTAC]
    ldh a, [$7f]
    add b
    rst $38
    add e
    ldh a, [rIF]
    ld hl, sp+$3f
    nop
    ccf
    add a
    ldh [rTAC], a
    ldh a, [$fe]
    nop
    rst $38
    rlca
    ldh a, [$1f]
    ldh a, [$7e]
    nop
    rst $38
    rlca
    ldh [rIF], a
    ldh a, [$fe]
    nop
    cp $1f
    ldh [rIF], a
    pop hl
    cp $01
    rst $38
    rrca
    ldh [$1f], a
    ldh a, [$fe]
    inc bc
    cp $1f
    ret nz

    rra
    pop hl
    db $fc
    ld bc, $1ffc
    ldh [$3f], a
    add c
    db $fc
    rlca
    ld hl, sp+$1f
    add b
    rst $38
    add c
    ldh a, [rIF]
    ld hl, sp+$1f
    nop
    rst $38
    inc bc
    ldh [$1f], a
    ldh [$7c], a
    ld bc, $0ffc
    add b
    ld a, a
    pop bc
    ld hl, sp+$0f
    ld hl, sp+$0f
    nop
    rst $38
    add c
    ldh [$1f], a
    ldh a, [$3c]
    rlca
    cp $03
    nop
    rst $38
    add b
    ret nz

    ccf
    ldh a, [rP1]
    inc bc
    ldh a, [rP1]
    nop
    ld a, [hl]
    nop
    nop
    ld e, $00
    nop
    rra
    rst $08
    ldh [rIF], a
    rst $38
    nop
    ld [hl], b
    ccf
    add b
    ld a, h
    ccf
    ret nz

    rra
    add e
    ld hl, sp+$0b
    ldh [$7c], a
    dec c
    rst $30
    rst $38
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
    rst $28
    rst $38
    ei
    ldh [$30], a
    ret nz

    db $10
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_021_69bf

jr_021_69bf:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    inc de
    db $fd
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
    ld hl, sp+$07

Call_021_69e7:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_021_7b04:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_021_7ee0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_021_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
