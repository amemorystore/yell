; disasSembly of "yell.gbc"
SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

    ld e, a
    ld [$7f7f], sp
    ld [bc], a
    ld a, [hl]
    ld bc, $036f
    db $f4
    nop
    nop
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
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ff7f
    rst $38
    rst $38
    add b
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
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    inc bc
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    add b
    nop
    nop
    nop
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    add b
    nop
    nop
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
    ld c, $ff
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    rla
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
    add b
    nop
    nop
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $40
    nop
    nop
    nop
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp a
    ldh [$7d], a
    or e
    ldh [$d3], a
    ldh [$7c], a
    inc e
    inc b
    ld [bc], a
    nop
    rlca
    sub a
    rst $38
    rst $38
    ld hl, sp+$44
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $30
    ld l, h
    call nz, RST_00
    nop
    ccf
    rst $38
    ldh [rTAC], a
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    add b
    rrca

Call_034_4305:
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    nop
    rrca
    rst $38
    pop hl
    ld hl, sp+$00
    nop
    rlca
    rst $38
    ret nz

    rra
    cp $0f
    cp $00
    nop
    ld bc, $f0ff
    rlca
    rst $38
    inc bc
    rst $38
    nop
    nop
    nop
    rra
    cp $00
    ld a, a
    ldh [$3f], a
    ldh [rSB], a
    ldh [rSB], a
    rst $38
    ldh [rIF], a
    db $fc
    inc bc
    cp $00
    ld a, $00
    rrca
    rst $38
    nop
    ld a, a
    ldh [$1f], a
    ldh a, [rSB]
    ldh a, [rP1]
    ccf
    ld hl, sp+$03
    rst $38
    nop
    ld a, a
    ret nz

    rlca
    add b
    nop
    rst $38
    ldh [rIF], a
    ld hl, sp+$03
    rst $38
    nop
    ld a, $00
    inc bc
    rst $38
    add b
    ccf
    ret nz

    rra
    db $fc
    ld bc, $00f8
    rrca
    cp $01
    rst $38
    nop
    rst $38
    ret nz

    rrca
    ret nz

    nop
    ld a, a
    ldh a, [rTAC]
    ld hl, sp+$07
    cp $00
    ld a, $00
    ld bc, $80ff
    ccf
    ret nz

    rra
    ld hl, sp+$01
    ld hl, sp+$00
    rrca
    db $fc
    ld bc, $00fe
    rst $38
    ret nz

    rra
    add b
    nop
    ld a, a
    ldh [rIF], a
    ldh a, [rTAC]
    cp $00
    cp $00
    ld bc, $00ff
    ld a, a
    add b
    ccf
    ldh [rTAC], a
    ldh [rP1], a
    rrca
    db $fc
    inc bc
    cp $01
    rst $38
    add b
    rra
    nop
    nop
    ld a, a
    ldh [rIF], a
    ldh a, [rTAC]
    db $fc
    nop
    db $fc
    nop
    inc bc
    rst $38
    nop
    ld a, a
    add b
    ccf
    ldh [rTAC], a
    ldh [rP1], a
    rra
    db $fc
    inc bc
    db $fc
    ld bc, $80ff
    rra
    add b
    nop
    rst $38
    ret nz

    rra
    ldh a, [rIF]
    cp $00
    cp $00
    inc bc
    rst $38
    nop
    ld a, a
    add b
    ccf
    ldh a, [$03]
    ldh a, [rP1]
    rra
    ld hl, sp+$03
    cp $00
    rst $38
    ret nz

    rrca
    ret nz

    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    ccf
    add b
    rlca
    rst $38
    nop
    ld a, a
    ldh [$1f], a
    db $fc
    nop
    db $fc
    nop
    rra
    cp $01
    rst $38
    ret nz

    ccf
    ldh a, [rSB]
    ld hl, sp+$00
    ld a, a
    ld hl, sp+$03
    rst $38
    nop
    ld a, a
    ret nz

    rlca
    ldh [rSB], a
    rst $38
    ldh [rTAC], a
    db $fc
    ld bc, $80ff
    rlca
    add b
    rlca
    rst $38
    add b
    rrca
    db $fc
    inc bc
    rst $38
    add b
    nop
    nop
    rra
    cp $00
    ccf
    db $fc
    rlca
    rst $38
    nop
    nop
    nop
    ld a, a
    db $fc
    nop
    ld a, a
    ld hl, sp+$1f
    db $fc
    nop
    nop
    ld bc, $f8ff
    nop
    rst $38
    ld hl, sp-$1d
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ld hl, sp+$00
    ld a, a
    rst $38
    ret nz

    ret nz

    nop
    nop
    rra
    rst $38
    cp $00
    rrca
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    rlca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, c
    cpl
    add h
    or a
    nop
    ld c, c
    db $ed
    and l
    xor c
    ld l, c
    ld d, d
    db $d3
    ld l, h
    and h
    sub [hl]
    jp nc, $a9d4

    ld l, l
    and l
    sbc c
    ld e, d
    ld e, c
    inc h
    or d
    ret


    ld c, d
    jp c, Jump_000_2469

    or l
    db $eb
    ld d, [hl]
    sub e
    ld l, c
    ld c, e
    dec l
    or [hl]
    ld c, e
    ld l, [hl]
    sub e
    ld e, e
    ld l, l
    add hl, hl
    ld a, [hl+]
    ld c, e
    ld h, $b9
    inc h
    db $d3
    ld l, l
    sub d
    ld e, c
    or [hl]
    db $d3
    ld c, h
    sub l
    ld l, h
    sub e
    ld c, l
    push de
    sub h
    db $e3
    dec l
    or d
    ld c, h
    or d
    xor c
    inc h
    sub e
    and l
    ld l, l
    and h
    sub [hl]
    ld c, c
    or [hl]
    swap [hl]
    ld c, c
    ld h, $9a
    ld c, c
    ld [hl], $d9
    or d
    ld c, h
    jp nc, $d796

    sub d
    db $dd
    inc h
    cp l
    jp nc, Jump_000_15ad

    sub e
    inc a
    sub h
    inc [hl]
    sub e
    ld l, c
    and e
    ld h, l
    sub e
    inc h
    sbc [hl]
    ld a, l
    ld a, [hl]
    ei
    ld l, h
    and c
    add l
    inc bc
    add hl, bc
    rst $38
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    dec c
    cp a
    rst $38
    rst $38
    xor h
    add h
    nop
    jr nz, jr_034_466f

    rst $38
    rst $38
    rst $38
    db $f4
    sub b
    nop
    nop
    inc hl
    rst $38

jr_034_466f:
    rst $38
    db $fc
    add c
    nop
    inc b
    db $10
    ld l, a
    rst $38
    rst $38
    pop af
    nop
    nop
    ld h, c
    rst $08
    rst $38
    rst $38
    cp $10
    nop
    ld [$ff73], sp
    rst $38
    rst $38
    add b
    nop
    ld b, $3d
    rst $38
    rst $38
    db $ec
    ret nz

    nop
    inc bc
    inc e
    rst $38
    rst $38
    db $fc
    ld b, b
    nop
    rlca
    inc e
    rst $38
    rst $38
    db $ec
    ld b, b
    nop
    ld b, $3d
    rst $38
    rst $38
    ld hl, sp+$40
    nop
    inc c
    ld a, a
    rst $38
    rst $38
    or b
    nop
    nop
    ld sp, $ffef
    cp $40
    nop
    nop
    rst $00
    cp a
    rst $38
    ld sp, hl
    nop
    nop
    inc bc
    rra
    rst $38
    rst $38
    add sp, $00
    nop
    jr @+$01

    rst $38
    rst $38
    ld h, b
    nop
    nop
    rst $00
    rst $38
    rst $38
    di
    nop
    nop
    ld b, $3f
    rst $38
    rst $38
    sbc b
    nop
    nop
    ld h, e
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    rlca
    ccf
    rst $38
    rst $38
    adc h
    nop
    nop
    ld [hl], c
    rst $38
    rst $38
    ld hl, sp-$40
    nop
    rlca
    ccf
    rst $38
    rst $38
    adc h
    nop
    nop
    ld h, e
    rst $38
    rst $38
    ld hl, sp-$80
    nop
    ld b, $7f
    rst $38
    rst $30
    jr jr_034_46fa

jr_034_46fa:
    nop
    rst $00
    rst $38
    cp $e1
    nop
    nop
    inc e
    rst $38
    ld a, a
    xor $20
    nop
    ld bc, $ff8f
    db $fd
    add $00
    nop
    add hl, sp
    cp $ff
    db $fc
    ld b, b
    nop
    inc bc
    rra
    rst $38
    rst $38
    adc h
    nop
    nop
    ld [hl], e
    db $fd
    rst $38
    ld a, b
    add b
    nop
    ld b, $3f
    rst $38
    rst $28
    nop
    nop
    nop
    ld [hl], e
    rst $38
    rst $38
    ld a, b
    nop
    nop
    rlca
    ccf
    rst $38
    di
    add b
    nop
    nop
    add hl, sp
    rst $38
    rst $38
    jr c, jr_034_473e

    nop
    ld bc, $ffcf

jr_034_473e:
    ld sp, hl
    ret nz

    jr nz, jr_034_4742

jr_034_4742:
    ld c, $7f
    rst $38
    adc $00
    nop
    nop
    inc sp
    rst $38
    rst $38
    jr nc, jr_034_474e

jr_034_474e:
    nop
    nop
    rst $08
    rst $38
    ld hl, sp-$40
    nop
    ld [$3f03], sp
    rst $38
    di
    nop
    nop
    jr nz, jr_034_4765

    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld b, b
    rrca

jr_034_4765:
    rst $38
    rst $38
    ret nz

    nop
    nop
    add b
    rrca
    rst $38
    rst $38
    add b
    nop
    ld bc, $0fc8
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $07ec
    ld [hl], a
    rst $38

jr_034_477c:
    ret nz

    nop
    jr jr_034_477c

    rlca
    ld a, a
    rst $38
    ldh [rP1], a
    inc c
    cp $01
    sbc l
    rst $38
    ldh a, [rP1]
    ld b, $33
    nop
    ld h, a
    ld a, a
    db $fc
    nop
    ld bc, $c09d
    nop
    rst $28
    rst $38
    ldh a, [rP1]
    ld bc, $009c
    sbc l
    rst $38
    cp $00
    nop
    ld a, a
    add b
    ld bc, $ffff
    ldh [rP1], a
    rlca
    db $fc
    nop
    dec e
    rst $38
    cp $00
    nop
    rst $38
    add b
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    cp l
    add b
    rlca
    ld a, a
    rst $38
    ret nz

    nop
    rra
    ldh [rP1], a
    dec e
    rst $38
    cp $00
    nop
    rst $38
    ldh a, [rP1]
    ld [hl], a
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    ret nz

    ld bc, $ffff
    ldh a, [rP1]
    rlca
    rst $38
    nop
    ld bc, $ffff
    ldh a, [rP1]
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ccf
    ldh [rP1], a
    ccf
    rst $38
    cp $00
    nop
    rra
    cp $00
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ldh [rP1], a
    ld bc, $feff
    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    add b
    nop
    rst $38
    rst $38
    ret z

    nop
    inc bc
    rst $38
    cp $00
    ld bc, $ffff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    add b
    nop
    rrca
    rst $38
    cp $00
    nop
    nop
    ld b, $64
    ld a, a
    pop af
    sub b
    nop
    nop
    rra
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    db $fc
    nop
    nop
    rst $10
    ld c, $7f
    ld a, a
    ld [bc], a
    ld [hl], a
    ld bc, $006f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    ld [$0000], sp
    ld b, c
    add b
    nop
    nop
    ld [de], a
    jr z, @+$42

    ld hl, $4013
    nop
    db $10
    dec sp
    rst $38
    rst $38
    rst $38
    push de
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
    inc bc
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
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
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
    ret nz

    nop
    nop
    nop
    cp a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
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
    ld a, a
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
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    rlca
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
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc bc
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
    ldh [rP1], a
    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
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
    ldh a, [rP1]
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    rst $28
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    cp $00
    nop
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
    dec de
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
    cp $00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld e, a
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
    ld hl, sp+$00
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
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    cp $00
    nop
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
    ld bc, $ffff
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
    add b
    nop
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    cp a
    rst $38
    rst $38
    cp $00
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
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld l, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rla
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    cp $00
    nop
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
    rrca
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
    ld hl, sp+$00
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
    cpl
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
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
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

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
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld a, a
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
    nop
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
    cpl
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
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    cp $00
    nop
    nop
    ld bc, $ff3f
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    ret nz

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
    inc bc
    rst $38
    rst $38
    rst $38
    or $00
    nop
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
    rra
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
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fd
    add b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    rrca
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
    add b
    nop
    nop
    nop
    dec sp
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    ld a, a
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
    ret nz

    nop
    nop
    nop
    inc bc
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
    ldh a, [rP1]
    nop
    nop
    nop
    ld c, a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    stop
    nop
    nop
    nop
    jr @+$01

    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ld [bc], a
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
    db $fd
    jr nc, jr_034_4bf7

jr_034_4bf7:
    nop
    nop
    nop
    db $10
    ei
    rst $38
    rst $38
    rst $38
    ld l, l
    db $10
    db $10
    ld b, c
    nop
    ld [$fb38], sp
    rst $38
    rst $38
    ei
    rst $38
    ret c

    stop
    ld [bc], a
    add hl, bc
    jr jr_034_4c73

    rst $08
    cp $ff
    ld hl, sp-$1e
    ld [c], a
    nop
    nop
    nop
    ld [$1f27], sp
    ld a, [hl]
    ei
    rst $28
    call z, Call_000_3038
    ld b, b
    ld bc, $1f87
    ccf
    ld a, a
    rst $28
    rst $38
    ld a, b
    ret nz

    nop
    inc d
    db $10
    ld [hl], c
    rst $28
    rst $38
    rst $38
    db $fc
    ldh a, [rP1]
    add b
    ld bc, $1f02
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    nop
    nop
    rst $18
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_034_4c73:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e1e1
    ld a, [c]
    cp a
    nop
    ld d, b
    pop bc
    nop
    ld hl, sp+$3c
    ld a, h
    call z, $a362
    jp nz, $8fe3

    call z, Call_034_4305
    and e
    add a
    add a
    add e
    db $e3
    jp $fc81


    ld e, l
    ldh [$87], a
    rst $38
    rst $00
    ld c, $3f
    adc a
    adc d
    nop
    rrca
    ld c, a
    ccf
    rst $28
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ff7f
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    ld hl, sp+$00
    nop
    ld [$ff2f], sp
    rst $38
    rst $38
    db $f4
    rst $38
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    cp $40
    nop
    nop
    ld [de], a
    ld bc, $ffff
    rst $38
    rst $38
    inc bc
    add b
    nop
    ld b, b
    ld [hl], d
    rra
    rst $38
    rst $38
    rst $38
    ld a, a
    ld hl, sp+$00
    nop
    ld bc, $3f80
    rst $38
    rst $38
    rst $38
    db $e3
    ldh a, [rP1]
    nop
    ld bc, $3f60
    pop af
    rst $38
    cp $78
    ld a, h
    inc b
    inc b
    ld bc, $3fc0
    ld hl, sp-$01
    cp $1f
    ld a, h
    ld [bc], a
    ld [$4004], sp
    rlca
    cp $1f
    rst $38
    add e
    ldh a, [$e0]
    jr nc, @+$05

    sbc [hl]
    ld bc, $9bff
    rst $28
    ldh [rIE], a
    jr nc, @+$04

    nop
    ld bc, $07a0
    ldh a, [$7f]
    ldh a, [$7f]
    adc h
    ld l, b
    ld b, $81
    rlca
    nop
    ld a, a
    add l
    rst $38
    pop bc
    cp $ec
    dec b
    nop
    ld e, $04
    inc bc
    ei
    cp e
    rst $38
    db $fc
    rst $38
    ld [bc], a
    and d
    nop
    jr nz, jr_034_4f45

jr_034_4f45:
    rlca
    ldh a, [rIE]
    rrca
    ld hl, sp+$3f
    ret nz

    jr jr_034_4f4e

jr_034_4f4e:
    ldh a, [$3e]
    ld bc, $07fe
    db $fc
    ccf
    cp $00
    ld c, $01
    ldh a, [$1f]
    add c

jr_034_4f5c:
    db $fc
    ld a, a
    rst $38
    ld a, [hl]
    rrca
    add b
    ld a, $00
    db $fc
    rrca
    add b
    rst $38
    rrca
    rst $30
    ld hl, sp+$3f
    sub b
    rrca
    nop
    ld h, e
    ld bc, $0ffc
    pop af
    ld a, a
    ldh a, [$fc]
    rrca
    ld b, $07
    jr nz, jr_034_4f5c

    db $fd
    db $fc
    rrca
    di
    rst $38
    add c
    cp $07
    add b
    ld e, $01
    ldh a, [$7e]
    rrca
    rst $00
    rst $00
    pop hl
    ld hl, sp+$3e
    ldh [$1f], a
    ld bc, $3ff0
    add b
    ld a, [hl]
    rlca
    ldh [$3f], a
    jp Jump_034_7ce0


    rlca
    ldh a, [$1f]
    rlca
    ret z

    ld a, a
    ret nz

    db $fc
    sbc a
    cp l
    pop bc
    ldh [$f0], a
    ld a, b
    ld b, $47
    add b
    cp a
    inc bc
    db $fc
    xor a
    db $fc
    rlca
    ldh [rNR34], a
    ld [bc], a
    ld bc, $3f80
    rlca
    rst $20
    or a
    db $e3
    ld hl, sp+$30
    ret c

    nop
    rra
    add b
    ldh a, [$1f]
    rst $30
    pop bc
    ld hl, sp-$11
    ldh [$7c], a
    nop
    db $fc
    nop
    ld a, h
    rrca
    ret z

    rst $38
    ld c, a
    ldh [$3f], a
    add b
    ld a, h
    ld bc, $1ff8
    add b
    ld a, [hl]
    ld h, a
    ld a, a
    or a
    adc a
    ldh [$7e], a
    rlca
    ldh a, [$03]
    ldh [rNR32], a
    rrca
    rlca
    jp Jump_034_7fe0


    add b
    db $fc
    rlca
    ldh [rIF], a
    inc bc
    ldh a, [rIE]
    inc bc
    db $fc
    rra
    add e
    db $fc
    rlca
    ldh a, [$1f]
    add e
    xor $03
    ld hl, sp+$0f
    ldh [$7f], a
    ld bc, $0ff8
    ldh [$1f], a
    ld bc, $f8c1
    rlca
    cp $0f
    ldh [$c7], a
    add b
    ldh a, [$3e]
    inc bc
    ldh [$7f], a
    add b
    db $fc
    rlca
    ldh a, [rIF]
    ldh [$3e], a
    inc bc
    add sp, $3f
    nop
    cp $07
    rst $08
    rlca
    rst $38
    add c
    ld hl, sp+$3f
    nop
    ld a, $07
    ldh [$f0], a
    rra
    ldh [$7e], a
    rlca
    ld hl, sp+$3f
    add c
    ld hl, sp+$0f
    nop
    ld a, [hl]
    rlca
    rst $20
    add a
    ldh [$fe], a
    pop bc
    ld hl, sp+$7c
    inc e
    db $fc
    rrca
    ld b, $4e
    ld l, $3f
    ld bc, $1ffc
    rra
    add e
    add c
    ret nc

    inc a
    add b
    ld a, [hl]
    rrca
    sbc a
    ldh [$7f], a
    add b
    db $fc
    rra
    add b
    rrca
    ldh [rNR34], a
    ld b, $7f
    rlca
    ld hl, sp+$1f
    add [hl]
    rlca
    ret nz

    rrca
    ret nz

    rrca
    add b
    rrca
    ldh a, [rIF]
    pop bc
    ld hl, sp+$0f
    ret nz

    ccf
    ld bc, $0ff0
    ldh [$7e], a
    rrca
    ldh a, [$3f]
    inc bc
    ldh a, [$7e]
    inc bc
    jr c, @+$34

    inc bc
    ldh a, [$1f]
    add c
    rst $38
    inc bc
    ld hl, sp+$0f
    ret nz

    jr c, @+$09

    ret nz

    ld a, $07
    ldh a, [rTAC]
    rst $00
    ldh a, [$7f]
    ld bc, $c0ff
    ld [hl], b
    ld [hl], b
    ld a, $00
    rra
    jp $1ff8


    ldh a, [$7c]
    rra
    ld b, $0f
    ret nz

    cp $01
    cp $07
    pop af
    ld hl, sp-$42
    ld bc, $03fe
    ret nz

    ld a, h
    rrca
    ld [$800f], sp
    rst $00
    ld hl, sp+$0f
    ldh [$7e], a
    nop
    ld [hl], h
    ld a, $07
    ldh a, [$3f]
    ret nz

    db $fc
    ld a, $0b
    ld hl, sp+$0f
    cp b
    rlca
    ld hl, sp+$0d
    add e
    ldh [$fa], a
    ld hl, sp+$7e
    inc bc
    ldh [$e0], a
    inc a
    rlca
    ld a, [hl]
    rlca
    ldh [$1f], a
    ret nz

    ld a, [hl]
    rlca
    ldh [$1f], a
    ret nz

    ld a, h
    rlca
    ldh [$1f], a
    add e
    ldh [$7f], a
    ldh [$fe], a
    rra
    ld [bc], a
    db $fc
    ld bc, $1ff0
    ld [bc], a
    inc bc
    pop bc
    pop hl
    pop af
    cp a
    add c
    rst $38
    add c
    ldh [$78], a
    ld a, b
    db $10
    ld a, $07
    pop hl
    sbc a
    rst $38
    ld [c], a
    ld a, h
    dec b
    ldh a, [$1f]
    nop
    ccf
    nop
    db $fc
    rlca
    ldh [rIE], a
    add c
    ld hl, sp+$2c
    cp [hl]
    inc bc
    jr c, @+$05

    sbc a
    ld bc, $07fe
    ldh a, [$1f]
    adc a
    rlca
    jp nz, $f001

    rra
    add b
    cp $07
    ldh [$7f], a
    add e
    ld hl, sp+$7e
    ld b, b
    ldh a, [rP1]
    ld a, h
    rlca
    ret nz

    ld a, h
    rrca
    db $fc
    ccf
    add c
    db $fc
    ld bc, $3ff0

jr_034_5133:
    nop
    ld a, h
    rrca
    ldh [$1f], a
    rlca
    db $e3
    rst $38
    pop bc
    or $01
    db $f4
    ld c, $00
    ld [hl], d
    ld h, b
    rra
    add c
    rst $38
    add a
    pop hl
    rst $38
    ret nz

    cp b
    ld c, $00
    ld a, [hl]
    inc bc
    ldh a, [$3f]
    db $fc
    rst $38
    ld hl, sp+$1f
    ldh [rIF], a
    add b
    or b
    nop
    ld [$fe01], sp
    rra
    rst $38
    ret nz

    rst $38
    add e
    ret nc

    inc bc
    ret nz

    inc b
    add b
    rlca
    ld hl, sp+$3f
    rst $38
    cp $3f
    ret nz

    ldh a, [rTAC]
    ret nz

    ld e, $03
    ld hl, sp+$07
    ld sp, hl
    ccf
    ld hl, sp+$1f
    ldh a, [rNR34]
    ld bc, $08c0
    nop
    rra
    rst $00
    rst $38
    sbc a
    ldh a, [$7f]
    nop
    ldh a, [$03]
    nop
    ld [$ff0f], sp
    rst $38
    rst $38
    rst $38
    cp $0f
    add b
    jr c, jr_034_5194

jr_034_5194:
    ret nz

    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ldh a, [rP1]
    nop
    nop
    inc bc
    rst $38
    rra
    db $fd
    rst $38
    di
    db $fc
    nop
    nop
    nop
    nop
    rlca
    cp $1f
    rst $38
    rst $38
    db $fc
    jr nc, jr_034_5133

    nop
    nop
    nop
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    ld [$0000], sp
    nop
    rlca
    ldh a, [$7f]
    db $fd
    rst $38
    db $fd
    nop
    nop
    nop
    nop
    nop
    rra
    db $fc
    rst $38
    rst $38
    rst $38
    ldh a, [$37]
    nop
    nop
    nop
    nop
    rrca
    ld hl, sp+$3f
    rst $38
    rst $38
    db $fc
    rlca
    nop
    nop
    nop
    nop
    rlca
    db $fc
    rra
    rst $38
    rst $38
    cp $03
    ldh [$03], a
    nop
    nop
    ld bc, $07ff
    rst $38
    ld e, a
    rst $38
    ld bc, $01fc
    ldh [rP1], a
    nop
    ccf
    ret nz

    rst $38
    di
    rst $38
    ret nz

    ccf
    nop
    ld a, h
    nop
    nop
    rlca
    db $fc
    rrca
    db $fc
    rra
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    nop
    nop
    ld a, a
    add c
    rst $38
    add c
    rst $38
    nop
    ld a, a
    ld bc, $00fc
    nop
    rlca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ld hl, sp+$0f
    ldh a, [$1f]
    ret nz

    nop
    nop
    ccf
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    nop
    ld bc, $03fe
    cp $07
    cp $03
    cp $07
    ldh a, [rP1]
    nop
    rlca
    ldh a, [$1f]
    ld hl, sp+$3f
    ldh a, [$1f]
    ld hl, sp+$3f
    ret nz

    nop
    nop
    rra
    ret nz

    ccf
    ldh [rIE], a
    ldh [$3f], a
    ret nc

    ccf
    nop
    nop
    nop
    ld a, a
    add b
    rst $38
    add e
    rst $38
    add c
    rst $38
    add e
    ld hl, sp+$00
    nop
    nop
    rst $38
    inc bc
    rst $38
    rlca
    cp $03
    db $fc
    rrca
    ldh a, [rP1]
    nop
    ld bc, $07fe
    cp $0f
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [rP1], a
    nop
    ld bc, $07fe
    db $fc
    rrca
    ld hl, sp+$07
    db $e3
    ld a, a
    ret nc

    nop
    nop
    ld bc, $07fc
    cp $0f
    db $fc
    rlca
    rst $38
    cpl
    ldh a, [rP1]
    nop
    ld bc, $03fe
    cp $0f
    ld hl, sp+$07
    rst $38
    rra
    ldh [rP1], a
    nop
    nop
    rst $38
    inc bc
    cp $07
    cp $03
    ld hl, sp-$21
    ret nc

    nop
    nop
    nop
    ld a, a
    ld bc, $83ff
    rst $38
    ld bc, $6ffc
    ldh a, [rP1]
    nop
    nop
    ccf
    ret nz

    rst $38
    add c
    rst $38
    nop
    cp $97
    cp $00
    nop
    nop
    rra
    ldh [$7f], a
    ldh [rIE], a
    add b
    ld a, a
    rrca
    rst $38
    ret nz

    nop
    nop
    rlca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$1f], a
    jp nz, $00ff

    nop
    nop
    ld bc, $07fc
    db $fc
    rra
    ldh a, [rIF]
    ldh [$fe], a
    db $f4
    nop
    nop
    nop
    ld a, a
    add c
    rst $38
    inc bc
    cp $01
    db $fc
    ld a, a
    db $fc
    nop
    nop
    nop
    rra
    ldh [$3f], a
    ldh [rIE], a
    add b
    db $fc
    rla
    rst $38
    ld b, b
    nop
    nop
    inc bc
    db $fc
    rrca
    ld hl, sp+$1f
    ldh [$1f], a
    add a
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    add c
    rst $38
    add e
    cp $03
    ld hl, sp+$3e
    xor a
    nop
    nop
    nop
    rrca
    ldh a, [$1f]
    ldh a, [$7f]
    ldh [$3f], a
    rlca
    call nc, $007c
    nop
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld bc, $f8ff
    cp $00
    nop
    nop
    rrca
    ldh a, [$1f]
    ldh a, [$7f]
    ldh a, [rNR23]
    rst $38
    xor e
    ld hl, sp+$02
    nop
    nop
    ld a, a
    add c
    rst $38
    add e
    rst $38
    ld bc, $f0fb
    cp $00
    nop
    nop
    inc bc
    db $fc
    rrca
    db $fc
    rra
    db $fc
    rrca
    cp $db
    db $fc
    nop
    nop
    nop
    rrca
    ldh a, [$3f]
    ldh [rIE], a
    ldh [rNR22], a
    ld a, [$c01f]
    nop
    nop
    nop
    ccf
    ret nz

    rst $38
    pop bc
    rst $38
    add b
    cp $d0
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    nop
    rst $38
    and b
    cp $00
    nop
    nop
    nop
    cp $03
    cp $0f
    db $fc
    ld bc, $83fc
    db $fc
    nop
    nop
    nop
    ld bc, $07fe
    cp $0f
    db $fc
    inc bc
    db $fd
    dec bc
    db $fc
    nop
    nop
    nop
    ld bc, $07fe
    cp $0f
    cp $03
    cp $8f
    rst $38
    ld b, b
    nop
    nop
    inc bc
    db $fc
    rrca
    cp $1f
    db $fc
    rlca
    rst $38
    add e
    cp $00
    nop
    nop
    rlca
    ld hl, sp+$0f
    db $fc
    ccf
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    nop
    nop
    nop
    rlca
    ldh a, [$1f]
    ld hl, sp+$3f
    ld hl, sp+$07
    cp $8f
    ld hl, sp+$00
    nop
    nop
    rrca
    ldh a, [$1f]
    ld hl, sp+$7f
    ldh a, [rIF]
    ei
    rra
    ld hl, sp+$00
    nop
    nop
    rrca
    ldh a, [$3f]
    ldh a, [$7f]
    ldh a, [$1f]
    cp $bf
    ld hl, sp+$00
    nop
    nop
    rlca
    ld hl, sp+$1f
    ld hl, sp+$7f
    ld hl, sp+$0f
    rst $38
    set 7, h
    nop
    nop
    nop
    inc bc
    db $fc
    rlca
    rst $38
    rra
    cp $01
    rst $38
    di
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    add c
    rst $38
    add e
    rst $38
    ret nz

    ccf
    ldh [rIE], a
    ret nz

    nop
    nop
    nop
    rrca
    ldh a, [$1f]
    ld hl, sp+$7f
    ld hl, sp+$07
    db $fc
    rrca
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    ld bc, $c1ff
    rst $38
    add b
    rst $38
    rst $30
    rst $38
    ret nz

    nop
    nop
    nop
    rrca
    ldh a, [$1f]
    ld hl, sp+$3f
    db $fc
    rlca
    cp $df
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    add b
    rst $38
    pop bc
    rst $38
    ldh [$1f], a
    db $fc
    ld a, a
    ldh [rP1], a
    nop
    nop
    inc bc
    db $fc
    rlca
    cp $1f
    cp $02
    rst $38
    rst $18
    rst $38
    nop
    nop
    nop
    nop
    ccf
    ret nz

    ld a, a
    ldh a, [$7f]
    ld hl, sp+$1f
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc bc
    db $fc
    rlca
    cp $0f
    rst $38
    ld bc, $dfff
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    add b
    rst $38
    pop bc
    rst $38
    ldh [$3f], a
    ld hl, sp+$7f
    ldh a, [rP1]
    nop
    nop
    ccf
    ret nz

    ccf
    di
    jp $1ff8


    cp $2f
    ld hl, sp+$00
    nop
    nop
    rrca
    ldh a, [rIF]
    db $fc
    ld sp, $07fc
    rst $38
    add c
    cp $00
    nop
    nop
    rlca
    ld hl, sp+$07
    rst $38
    ldh a, [rIE]
    ld b, $ff
    ret nz

    rst $38
    nop
    nop
    nop
    rlca
    ld hl, sp+$03
    rst $38
    ldh [rIE], a
    nop
    ld a, a
    ret nz

    ld a, a
    nop
    nop
    nop
    rlca
    ld hl, sp+$03
    rst $38
    ldh a, [$7f]
    nop
    ld a, a
    ret nc

    ccf
    nop
    nop
    nop
    rlca
    ld_long a, $ff03
    ldh [rIE], a
    nop
    rst $38
    add b
    ld a, a
    nop
    nop
    nop
    rrca
    db $fc
    inc bc
    rst $38
    pop af
    cp $00
    rst $38
    and b
    ccf
    nop
    nop
    nop
    rra
    ldh a, [rTAC]
    rst $38
    pop bc
    db $fc
    nop
    rst $38
    ldh [$3e], a
    nop
    nop
    nop
    rra
    ldh a, [rTAC]
    rst $38
    pop bc
    db $fc
    nop
    rst $38
    ld b, b
    ld a, $00
    nop
    nop
    rra
    ldh a, [rIF]
    rst $38
    add c
    db $fc
    nop
    rst $38
    and b
    ld a, [hl]
    nop
    nop
    nop
    rra
    ld hl, sp+$07
    rst $38
    pop bc
    db $fc
    ld bc, $c0ff
    ld a, [hl]
    nop
    nop
    nop
    rrca
    db $f4
    rlca
    rst $38
    ldh [$fe], a
    nop
    rst $38
    ldh a, [$7f]
    nop
    nop
    nop
    rlca
    cp $03
    rst $38
    ldh a, [$7f]
    nop
    ld a, a
    ldh a, [$7f]
    nop
    nop
    nop
    inc bc
    rst $38
    add c
    rst $38
    ld hl, sp+$1f
    add b
    rra
    ld hl, sp+$1f
    ret nz

    nop
    nop
    nop
    rst $38
    ldh a, [$3f]
    cp $07
    db $f4
    add a
    rst $38
    inc bc
    ld hl, sp+$00
    nop
    nop
    rra
    db $fc
    rlca
    rst $38
    pop bc
    db $fc
    db $10
    rst $38
    ld hl, sp+$7f
    nop
    nop
    nop
    inc bc
    rst $38
    ret nz

    rst $38
    ld hl, sp+$1f
    ret nz

    ld a, a
    ld sp, hl
    sbc a
    ret nz

    nop
    nop
    nop
    ccf
    ld hl, sp+$1f
    rst $38
    add e
    ei
    cp a
    rst $38
    ei
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    add c
    rst $38
    ld hl, sp+$3f
    ld hl, sp-$01
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    ldh a, [$1f]
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    pop hl
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    ld bc, $f8ff
    ccf
    ld hl, sp+$3f
    rst $38
    adc a
    ret nz

    nop
    nop
    nop
    ccf
    cp $0f
    rst $38
    add e
    rst $38
    jp $fcff


    ld a, b
    nop
    nop
    nop
    inc bc
    rst $38
    add b
    rst $38
    ld hl, sp+$3f
    ld hl, sp+$1f
    rst $38
    adc a
    ret nz

    nop
    nop
    nop
    ccf
    db $fc
    rrca
    rst $38
    add e
    rst $38
    add c
    rst $38
    cp h
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    add b
    rst $38
    ld hl, sp+$3f
    ld hl, sp+$3f
    rst $38
    adc a
    ret nz

    nop
    nop
    nop
    ccf
    db $f4
    rra
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ldh a, [$fc]
    nop
    nop
    nop
    rlca
    rst $38
    ld bc, $f0ff
    ld a, a
    ldh a, [$3f]
    rst $38
    sbc a
    add b
    nop
    nop
    nop
    rst $38
    ldh [$7f], a
    cp $0f
    cp $0f
    rst $38
    jp $00f0


    nop
    nop
    ccf
    cp $0f
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld hl, sp-$04
    nop
    nop
    nop
    rlca
    rst $38
    pop bc
    rst $38
    ld hl, sp+$7f
    ld hl, sp+$7f
    rst $38
    ccf
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [$7f]
    cp $0f
    cp $0f
    rst $38
    rst $08
    ldh [rP1], a
    nop
    nop
    ccf
    ld hl, sp+$1f
    rst $38
    add a
    rst $38
    rlca
    rst $38
    pop hl
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    add a
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    db $fc
    rst $38
    nop
    nop
    nop
    ld bc, $e0ff
    rst $38
    db $fc
    ccf
    db $fc
    ccf
    rst $38
    adc a
    add b
    nop
    nop
    nop
    ld a, a
    ld hl, sp+$7f
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $20
    ld hl, sp+$00
    nop
    nop
    rra
    cp $07
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    ld sp, hl
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    add e
    rst $38
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld a, [$803f]
    nop
    nop
    nop
    rst $38
    ldh [rIE], a
    cp $1f
    db $fc
    rra
    rst $38
    rra
    add b
    nop
    nop
    nop
    ld a, a
    ldh a, [$7f]
    rst $38
    add a
    rst $38
    rlca
    rst $38
    add e
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rra
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    di
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    rst $28
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    pop hl
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    pop hl
    rst $38
    ld hl, sp+$7f
    db $fd
    rst $38
    push af
    sbc a
    add b
    nop
    nop
    inc bc
    rst $38
    rst $10
    rst $38
    cp $7f
    ei
    adc a
    rst $38
    nop
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    cp $1f
    rst $38
    rra
    xor $0f
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ccf
    rst $18
    rra
    adc $07
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    db $fc
    rlca
    cp $00
    nop
    nop
    nop
    rlca
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    ccf
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    nop
    nop
    ld [$ff3f], sp
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
    rra
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    ldh a, [rP1]
    nop
    nop
    nop
    ld c, $01
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    sbc [hl]
    inc b
    nop
    nop
    nop
    stop
    ld a, h
    rra
    add c
    cp $ff
    add b
    nop
    nop
    add b
    nop
    scf
    ld c, $7f
    ld a, a
    ld [bc], a
    ld [hl], a
    ld bc, $016f
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    cp $fc
    nop
    nop
    nop
    inc bc
    rst $38
    ei
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
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
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
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
    scf
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    add a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    dec sp
    rst $38
    rst $38
    call c, RST_00
    nop
    inc bc
    cp a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    dec sp
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffbf
    rst $38
    ldh [rP1], a
    nop
    nop
    add hl, de
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc c
    ld a, a
    rst $38
    rst $38
    add b
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
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc sp
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ff1f
    rst $38
    ldh [rP1], a
    nop
    nop
    ld c, $ff
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld b, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld b, $7f
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc sp
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    ccf
    rst $38
    rst $38
    sbc b
    nop
    nop
    nop
    inc sp
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ff1f
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld [$ffff], sp
    rst $38
    ret nz

    nop
    nop
    nop
    rst $08
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
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rst $18
    rst $38
    rst $38
    ld [c], a
    nop
    nop
    nop
    db $10
    rst $38
    rst $38
    rst $38
    sub b
    nop
    nop
    nop
    ld c, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    call z, RST_00
    nop
    add hl, de
    rst $38
    rst $38
    cp $60
    nop
    nop
    ld bc, $ff9f
    rst $38
    di
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    adc b
    nop
    nop
    nop
    scf
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    jr nc, jr_034_58a4

jr_034_58a4:
    nop
    nop
    ld e, a
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ret z

    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $40
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    di
    nop
    nop
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    adc b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    cp a
    rst $38
    rst $38
    db $e4
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    jr nz, jr_034_58e1

jr_034_58e1:
    nop
    nop
    ccf
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret z

    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    cp $40
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    nop
    scf
    rst $38
    rst $38
    db $fc
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $f4
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld [hl], b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    add b
    nop
    nop
    ld bc, $ff7f
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    jr nc, jr_034_5935

jr_034_5935:
    nop
    nop
    rra
    rst $38
    rst $38
    db $fd
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $ec
    nop
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
    ld c, a
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
    db $ec
    nop
    nop
    nop
    inc bc
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
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $ec
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    or b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    or $00
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
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
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $ec
    nop
    nop
    nop
    inc bc
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
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
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
    ldh [rP1], a
    nop
    nop
    cpl
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
    cp $00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
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
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
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
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    dec de
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
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
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00
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
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
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
    add b
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
    rra
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
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
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $c0
    nop
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $80
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
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
    ret nz

    nop
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
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
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
    db $fc
    nop
    nop
    nop
    nop
    rra
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
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc bc
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
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
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
    cp $00
    nop
    nop
    nop
    rra
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
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
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
    db $fc
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
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
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    dec sp
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld h, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc bc
    ccf
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
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld a, h
    ld b, [hl]
    sbc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fee0
    rrca
    add e
    ldh a, [$7c]
    ld e, $0f
    add c
    db $fc
    rrca
    add a
    rst $38
    ld bc, $f8e0
    ld a, $0f
    inc bc
    nop
    nop
    ld hl, $ffff
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    db $fc
    nop
    rra
    rst $38
    db $d3
    ld hl, sp+$00
    nop
    rra
    rst $38
    add b
    rra
    rst $38
    di
    rst $38
    nop
    nop
    ld bc, $f0ff
    inc bc
    rst $38
    ldh [$7f], a
    ldh a, [rP1]
    nop
    rrca
    rst $38
    nop
    ccf
    db $fc
    rlca
    cp $00
    inc e
    nop
    ld a, a
    ldh a, [rSB]
    rst $38
    add b
    ld a, a
    ldh a, [rSB]
    ldh a, [$03]
    rst $38
    add b
    rra
    ld hl, sp+$07
    rst $38
    nop
    rra
    nop
    rrca
    db $fc
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$01
    ld hl, sp+$00
    ccf
    ldh [rTAC], a
    cp $01
    rst $38
    add b
    rrca
    ldh [rP1], a
    rst $38
    add b
    ccf
    ldh a, [rIF]
    db $fc
    nop
    db $fc
    nop
    rlca
    db $fc
    ld bc, $c0ff
    ccf
    ldh a, [rTAC]
    ldh a, [rP1]
    rrca
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    add b
    rrca
    ret nz

    nop
    ccf
    ldh [$1f], a
    ld hl, sp+$03
    cp $00
    ld a, a
    nop
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$03
    ld hl, sp+$00
    inc bc
    cp $01
    rst $38
    add b
    ld a, a
    ldh [rIF], a
    ldh [rP1], a
    rlca
    ld hl, sp+$07
    db $fc
    ld bc, $80ff
    ld a, a
    add b
    nop
    ccf
    ldh [$1f], a
    ldh a, [rTAC]
    cp $01
    cp $00
    nop
    rst $38
    add b
    ld a, a
    add b
    rra
    ld hl, sp+$07
    ldh a, [rP1]
    inc bc
    cp $03
    cp $00
    ld a, a
    ret nz

    ccf
    add b
    nop
    rrca
    ld hl, sp+$0f
    ld hl, sp+$01
    rst $38
    nop
    db $fc
    nop
    nop
    ccf
    ret nz

    ccf
    ldh [rTAC], a
    db $fc
    ld bc, $00fc
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ldh a, [rIF]
    ldh [rP1], a
    rlca
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rra
    ret nz

    nop
    rra
    ldh a, [rIF]
    ldh a, [$03]
    rst $38
    nop
    ld a, a
    add b
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    rra
    db $fc
    inc bc
    db $fc
    nop
    ld bc, $01ff
    rst $38
    nop
    ld a, a
    ldh a, [rTAC]
    ldh a, [rP1]
    rlca
    ld hl, sp+$07
    db $fc
    ld bc, $80ff
    rra
    ret nz

    nop
    rra
    ldh a, [$1f]
    ldh a, [rTAC]
    cp $00
    rst $38
    nop
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    rra
    db $fc
    inc bc
    db $fc
    nop
    nop
    rst $38
    add b
    rst $38
    nop
    ld a, a
    ld hl, sp+$07
    ldh a, [rP1]
    ld bc, $01fe
    cp $00
    rst $38
    ldh [$1f], a
    ldh [rP1], a
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $c0ff
    ccf
    ret nz

    nop
    rlca
    ld hl, sp+$0f
    ldh a, [$03]
    rst $38
    add b
    rst $38
    nop
    nop
    rrca
    ldh a, [$1f]
    ldh a, [$03]
    rst $38
    ld bc, $00ff
    nop
    rra
    ldh [$3f], a
    ldh [rTAC], a
    cp $01
    cp $00
    nop
    ccf
    ret nz

    ccf
    ret nz

    rrca
    cp $03
    ld hl, sp+$00
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    rra
    db $fc
    rlca
    ldh a, [rP1]
    nop
    ld a, a
    add b
    rst $38
    add b
    rra
    ld hl, sp+$07
    ldh a, [rP1]
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ld hl, sp+$1f
    ret nz

    nop
    nop
    rst $38
    ld bc, $00ff
    ccf
    ldh a, [rIF]
    ldh [rP1], a
    ld bc, $01fe
    rst $38
    nop
    ccf
    ldh a, [$1f]
    ret nz

    nop
    ld bc, $01fe
    rst $38
    nop
    ld a, a
    ldh [rIF], a
    ldh [rP1], a
    ld bc, $01fe
    rst $38
    nop
    ld a, a
    ldh [$3f], a
    ret nz

    nop
    ld bc, $01fe
    cp $00
    ld a, a
    ldh [$3f], a
    nop
    nop
    ld bc, $01fe
    rst $38
    nop
    ld a, a
    ret nz

    ld a, [hl]
    nop
    nop
    ld bc, $01fe
    rst $38
    nop
    ld a, a
    ret nz

    ld a, [hl]
    nop
    nop
    ld bc, $01ff
    rst $38
    nop
    ld a, a
    ldh [$7f], a
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ccf
    ldh [$3f], a
    ret nz

    nop
    nop
    ld a, a
    add b
    rst $38
    ret nz

    ccf
    ldh a, [$3f]
    ldh [rP1], a
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    rra
    ldh a, [$1f]
    db $fc
    nop
    nop
    ccf
    ret nz

    ccf
    ldh [rIF], a
    ld hl, sp+$0f
    ldh a, [rP1]
    nop
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    rrca
    ldh a, [rIF]
    ld hl, sp+$03
    cp $07
    db $fc
    nop
    nop
    rlca
    ld hl, sp+$07
    db $fc
    ld bc, $03ff
    cp $00
    nop
    inc bc
    db $fc
    inc bc
    cp $00
    rst $38
    ld bc, $00fc
    nop
    ld bc, $01fe
    rst $38
    nop
    rst $38
    add c
    db $fc
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    nop
    nop
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$7f], a
    add b
    nop
    nop
    ccf
    ret nz

    ccf
    ldh [rIF], a
    ld hl, sp+$1f
    ldh a, [rP1]
    nop
    rra
    ldh [$1f], a
    ldh a, [rTAC]
    ld hl, sp+$1f
    ret nz

    nop
    nop
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $07
    ld hl, sp+$00
    nop
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    inc bc
    cp $00
    nop
    ld bc, $01fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ccf
    ret nz

    rst $38
    nop
    nop
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    rra
    ldh a, [$3f]
    ret nz

    nop
    nop
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$1f
    ld hl, sp+$00
    nop
    rrca
    ldh a, [rIF]
    ld hl, sp+$03
    db $fc
    rlca
    ldh a, [rP1]
    nop
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    inc bc
    rst $38
    nop
    nop
    ld bc, $01fe
    rst $38
    nop
    rst $38
    add c
    rst $38
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ccf
    ldh [$7f], a
    add b
    nop
    nop
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$3f]
    ret nz

    nop
    nop
    rra
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh [rSB], a
    add b
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $07
    db $fc
    nop
    nop
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    inc bc
    cp $00
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop bc
    rst $38
    add b
    nop
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [rIE], a
    ret nz

    nop
    nop
    ld a, a
    add b
    ccf
    ldh [$1f], a
    ldh a, [$3f]
    ldh [rP1], a
    nop
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$1f
    ld hl, sp+$00
    nop
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    rrca
    ld hl, sp+$00
    add b
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
    cp $00
    nop
    inc bc
    db $fc
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    nop
    nop
    ld bc, $01fe
    rst $38
    add b
    rst $38
    add c
    rst $38
    add b
    stop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ldh [rIE], a
    ret nz

    nop
    nop
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [$3f]
    ldh [rP1], a
    nop
    ccf
    ret nz

    rra
    ldh a, [rIF]
    ld hl, sp+$1f
    ldh a, [rP1]
    nop
    rrca
    ldh a, [rIF]
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$00
    nop
    rlca
    ld hl, sp+$03
    cp $01
    rst $38
    inc bc
    cp $00
    nop
    ld bc, $01fe
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    ret nz

    ccf
    ldh [$7f], a
    ret nz

    nop
    nop
    ccf
    ret nz

    rra
    ldh a, [rIF]
    ld hl, sp+$1f
    ld hl, sp+$00
    nop
    rrca
    ldh a, [rTAC]
    db $fc
    inc bc
    cp $03
    cp $00
    nop
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [rP1], a
    nop
    ccf
    ret nz

    rra
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    rlca
    ld hl, sp+$07
    cp $03
    cp $03
    cp $00
    nop
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    nop
    nop
    ccf
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rP1]
    nop
    rrca
    ldh a, [rTAC]
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    nop
    nop
    ld bc, $01fe
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    jr nz, jr_034_636e

jr_034_636e:
    ccf
    add b
    ccf
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rDIV]
    nop
    rrca
    ldh a, [rTAC]
    db $fc
    rlca
    cp $07
    cp $00
    nop
    ld bc, $01fe
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    nop
    nop
    ccf
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [rIF]
    ldh a, [rP1]
    nop
    rrca
    ldh a, [rTAC]
    db $fc
    rlca
    cp $07
    db $fc
    nop
    nop
    ld bc, $00fe
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    jr nc, jr_034_63ac

jr_034_63ac:
    ccf
    ret nz

    ccf
    ldh a, [$1f]
    ld hl, sp+$1f
    ldh [rP1], a
    nop
    rrca
    ldh a, [rTAC]
    db $fc
    rlca
    cp $03
    db $fc
    nop
    nop
    ld bc, $01fe
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    nop
    nop
    ld a, a
    add b
    ccf
    ldh [$3f], a
    ldh a, [$1f]
    ldh [rP1], a
    nop
    rrca
    ldh a, [rIF]
    db $fc
    rlca
    cp $07
    db $fc
    nop
    nop
    inc bc
    db $fc
    ld bc, $00ff
    rst $38
    pop bc
    rst $38
    add b
    nop
    nop
    ld a, a
    add b
    ccf
    ldh [$3f], a
    ld hl, sp+$1f
    ldh [rP1], a
    nop
    rrca
    ldh a, [rTAC]
    db $fc
    rlca
    cp $03
    db $fc
    nop
    nop
    inc bc
    db $fc
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    nop
    nop
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ldh a, [rP1]
    nop
    rrca
    ld hl, sp+$07
    db $fc
    rlca
    rst $38
    ld bc, $00fe
    nop
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    ldh a, [$3f]
    ldh [rP1], a
    nop
    ccf
    ret nz

    rra
    ldh a, [$1f]
    cp $07
    ld hl, sp+$00
    nop
    rrca
    ld hl, sp+$03
    cp $03
    rst $38
    add b
    rst $38
    nop
    nop
    ld bc, $00ff
    ld a, a
    ret nz

    ld a, a
    ld hl, sp+$0f
    ldh [rP1], a
    nop
    ccf
    ldh [rIF], a
    ld hl, sp+$0f
    cp $03
    db $fc
    nop
    nop
    rlca
    ld hl, sp+$03
    cp $03
    rst $38
    ret nz

    rst $38
    nop
    nop
    ld bc, $00fe
    ld a, a
    ret nz

    ld a, a
    ldh a, [$1f]
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    rra
    ldh a, [$1f]
    db $fc
    rlca
    ld hl, sp+$00
    nop
    rrca
    ldh a, [rTAC]
    db $fc
    rlca
    rst $38
    add b
    rst $38
    nop
    nop
    inc bc
    cp $00
    rst $38
    add b
    rst $38
    ldh a, [$3f]
    ret nz

    nop
    nop
    ld a, a
    add b
    rra
    ldh [$3f], a
    db $fc
    rlca
    ld hl, sp+$00
    nop
    rra
    ldh a, [rTAC]
    db $fc
    rlca
    rst $38
    add c
    cp $00
    nop
    inc bc
    cp $01
    rst $38
    add c
    rst $38
    ldh a, [$3f]
    ret nz

    nop
    nop
    rst $38
    add b
    ccf
    ldh [$3f], a
    db $fc
    rlca
    ld hl, sp+$00
    nop
    rra
    ldh [rTAC], a
    db $fc
    rlca
    rst $38
    add b
    rst $38
    nop
    nop
    inc bc
    cp $00
    rst $38
    add b
    rst $38
    ldh a, [$3f]
    ret nz

    nop
    nop
    rst $38
    add b
    ccf
    ldh [$3f], a
    db $fc
    rrca
    ldh a, [rP1]
    nop
    rra
    ldh a, [rTAC]
    db $fc
    rlca
    rst $38
    nop
    cp $00
    nop
    rlca
    db $fc
    ld bc, $81ff
    rst $38
    ldh a, [$3f]
    ret nz

    nop
    ld bc, $00ff
    ld a, a
    ldh [$7f], a
    db $fc
    rlca
    ldh a, [rP1]
    nop
    ccf
    ldh [rIF], a
    db $fc
    rra
    rst $38
    add c
    cp $00
    nop
    rlca
    cp $00
    rst $38
    pop bc
    rst $38
    ldh a, [$1f]
    ret nz

    nop
    ld bc, $c0ff
    ld a, a
    db $fc
    rst $38
    db $fc
    rrca
    ld hl, sp+$00
    nop
    ccf
    ldh [$1f], a
    cp $1f
    rst $38
    add c
    rst $38
    nop
    nop
    rlca
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add b
    nop
    nop
    ccf
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    add hl, de
    adc a
    ei
    rst $38
    rst $38
    rst $38
    pop hl
    db $fc
    nop
    nop
    nop
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$7e
    nop
    nop
    nop
    add hl, bc
    add e
    cp $3f
    rst $38
    adc a
    ldh a, [rP1]
    nop
    nop
    ld b, $e0
    rst $38
    jp $ffff


    rst $38
    ldh [rP1], a
    nop
    rrca
    ld h, b
    rrca
    db $fc
    rlca
    rst $38
    ld hl, sp-$02
    nop
    nop
    rrca
    add b
    ld bc, $8f9f
    cp $8f
    rst $38
    rra
    add b
    ld b, $00
    nop
    nop
    rst $38
    add a
    rst $38
    rst $38
    ldh [$7f], a
    nop
    jr jr_034_6577

    ldh [$03], a
    nop

jr_034_6577:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_7ce0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_034_7fe0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
