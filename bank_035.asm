; disasSembly of "yell.gbc"
SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    ld d, a
    dec bc
    ld a, a
    ld a, a
    ld [bc], a
    ld a, [hl]
    ld bc, $016f
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
    cp $00
    nop
    nop
    nop
    db $28, $8c
    call $c4ec
    ld [hl], b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    inc b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld a, [$0010]
    nop
    rra
    rst $38
    rst $38
    ld a, [$00e0]
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ff3f
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    cp $80
    nop
    nop
    cpl
    rst $38
    rst $38
    ldh a, [rP1]
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
    rst $38
    ldh a, [rP1]
    nop
    dec b
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    or b
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld b, b
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    ld l, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    dec b
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc c
    rst $38
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    dec b
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
    ld b, $7f
    rst $38
    rst $38
    add b
    nop
    nop
    ld b, e
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld e, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    daa
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    dec hl
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ff1f
    rst $38
    and b
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rla
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ff7f
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $fd
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld l, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld e, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld l, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $18
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc b
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    dec c
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ff7f
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rla
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ff7f
    rst $38
    nop
    nop
    nop
    inc de
    rst $38
    rst $38
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    inc hl
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld [$ffff], sp
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    dec b
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ff3f
    rst $38
    ret nz

    nop
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ff3f
    rst $38
    ret nz

    nop
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    ld bc, $ff9f
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ff0f
    rst $38
    ldh a, [rP1]
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
    cp $00
    nop
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    cp a
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    adc a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld [$0b00], sp
    rst $38
    rst $38
    ret z

    ld sp, $080f
    nop
    dec b
    rst $38
    rst $38
    rst $38
    db $fc
    db $e3
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    pop hl
    nop
    nop
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    rst $38
    jr c, jr_035_42cf

jr_035_42cf:
    nop
    nop
    nop
    ld bc, $ffaf
    rst $38
    rst $38
    db $e4
    add b
    nop
    nop
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_44c5:
    nop
    nop
    ldh a, [$78]
    jr c, jr_035_44c5

    ld e, $1f
    rlca
    add a
    ret nz

    nop
    add hl, hl
    ccf
    cp $81
    rst $08
    ret nz

    nop
    nop
    ld a, a
    rst $38
    cp $03
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ret nz

    rra
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    cp $00
    rra
    rst $38
    add b
    nop
    nop
    rst $38
    db $fc
    nop
    ccf
    rst $38
    add b
    nop
    nop
    ld a, a
    db $fc
    nop
    ccf
    rst $38
    cp a
    add b
    nop
    ccf
    cp $00
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    add b
    ccf
    rst $38
    cp a
    ldh a, [rP1]
    ld bc, $c0ff
    rra
    rst $38
    rst $28
    db $fc
    nop
    nop
    ccf
    ldh a, [$03]
    rst $38
    db $e3
    rst $38
    nop
    nop
    rlca
    cp $00
    rst $38
    ldh a, [rIE]
    ret nz

    nop
    nop
    rst $38
    add b
    rra
    ld hl, sp+$1f
    ldh a, [rP1]
    nop
    rra
    ldh a, [$03]
    cp $07
    cp $00
    db $10
    inc bc
    cp $00
    ld a, a
    ret nz

    rst $38
    ret nz

    nop
    nop
    ld a, a
    ret nz

    rra
    ldh a, [$3f]
    ldh a, [rP1]
    nop
    rra
    ldh a, [rTAC]
    ld hl, sp+$0f
    cp $00
    nop
    inc bc
    cp $01
    rst $38
    inc bc
    rst $38
    add b
    nop
    nop
    rst $38
    add b
    ccf
    ret nz

    ld a, a
    ldh [rP1], a
    nop
    rra
    ldh a, [rIF]
    ldh a, [$1f]
    ld hl, sp+$00
    nop
    rrca
    ld hl, sp+$07
    db $fc
    rlca
    cp $00
    nop
    inc bc
    cp $01
    cp $03
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    nop
    nop
    ld a, a
    ret nz

    ccf
    ldh [$7f], a
    ldh [rP1], a
    nop
    rra
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rP1]
    nop
    rrca
    ldh a, [rIF]
    ld hl, sp+$1f
    db $fc
    nop
    add b
    rlca
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    nop
    nop
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    cp $00
    nop
    inc bc
    db $fc
    ld bc, $03fe
    cp $00
    nop
    ld bc, $00fe
    rst $38
    ld bc, $00ff
    nop
    ld bc, $00ff
    rst $38
    add b
    rst $38
    add b
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    nop
    nop
    rst $38
    nop
    ld a, a
    ret nz

    ccf
    ret nz

    nop
    nop
    rst $38
    add b
    ccf
    ret nz

    ccf
    ldh [rP1], a
    nop
    rst $38
    ret nz

    rra
    ldh [$1f], a
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    rra
    ldh a, [$1f]
    ldh a, [rP1]
    nop
    ld a, a
    ldh [rIF], a
    db $fc
    rrca
    ld hl, sp+$00
    nop
    ccf
    ldh a, [rIF]
    cp $07
    db $fc
    nop
    nop
    ccf
    ldh a, [rTAC]
    rst $38
    inc bc
    cp $00
    nop
    ccf
    ld hl, sp+$03
    rst $38
    add e
    rst $38
    nop
    nop
    rra
    ld hl, sp+$01
    rst $38
    pop bc
    rst $38
    add b
    nop
    rrca
    cp $01
    rst $38
    ldh [rIE], a
    ldh [rP1], a
    rlca
    rst $38
    nop
    ccf
    ld hl, sp+$7f
    ldh a, [rP1]
    inc bc
    rst $38
    ret nz

    ccf
    db $fc
    rra
    db $fc
    nop
    nop
    rst $38
    ldh [rIF], a
    rst $38
    cp $ff
    nop
    nop
    ld a, a
    ld hl, sp+$01
    rst $38
    rst $38
    rrca
    add b
    nop
    ccf
    cp $00
    rra
    rst $38
    rst $00
    ret nz

    nop
    rrca
    rst $38
    add b
    rlca
    rst $38
    pop af
    ret nz

    nop
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    cp $00
    rra
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    db $fc
    ld bc, $ffff
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rra
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    sbc $c2
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
    ld a, a
    ret nz

    ccf
    rst $38
    rst $38
    rst $38
    ldh [rSB], a
    rst $38
    ret nz

    nop
    nop
    nop
    dec c
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
    add a
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [$fe]
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $bf
    rst $38
    rst $38
    rst $38
    cp $5b
    ld d, d
    ld d, l
    ld a, [hl+]
    sub d
    or l
    ld l, e
    ld d, a
    db $f4
    jp nc, $9156

    ld l, c
    ld e, d
    sub $b5
    add hl, hl
    ld e, d
    or l
    xor h
    sub h
    db $ed
    add hl, hl
    ld c, c
    ld e, d
    ld e, d
    ld d, d
    sub $a5
    dec h
    ld c, c
    dec d
    xor l
    xor e
    ld l, e
    ld d, h
    and h
    xor c
    ld c, d
    ld e, c
    and l
    and h
    or l
    or h
    jp c, $d856

    xor c
    ld l, c
    ld e, d
    dec h
    inc l
    ld d, [hl]
    sub e
    ld l, [hl]
    or l
    ld d, d
    sub d
    db $dd
    dec l
    and l
    xor e
    ld c, e
    ld h, [hl]
    sub $96
    or h
    dec l
    and l
    and l
    sub [hl]
    sbc d
    sub d
    or h
    or [hl]
    db $ed
    or [hl]
    sub h
    or [hl]
    sub $5b
    inc h
    jp nc, $d546

    and h
    sub d
    ld e, e
    ld c, d
    ld c, e
    ld [hl-], a
    bit 1, c
    dec h
    or h
    sub [hl]
    ld b, h
    ld l, c
    ld [hl], $da
    ld c, c
    inc h
    sbc c
    or [hl]
    sub [hl]
    or h
    or c
    ld l, c
    ld e, d
    ld d, [hl]
    db $db
    dec l
    ld [hl+], a
    db $db
    ld c, l
    ld e, d
    ld c, l
    or [hl]
    jp c, Jump_000_324b

    ld c, e
    ld c, c
    ld l, c
    inc h
    sbc e
    dec h
    ld l, l
    ld e, d
    ld c, l
    sub d
    ld d, h
    or [hl]
    ld c, l
    xor d
    add $9b
    ld l, c
    ld [hl+], a
    ld c, h
    sub [hl]
    bit 6, [hl]
    rst $38
    or $d9
    or l
    db $ed
    add d
    ld c, h
    ld [de], a
    ld e, c
    or c
    rst $38
    rst $38
    db $ed
    and [hl]
    dec hl
    jr z, jr_035_49a0

    db $10
    ld b, h
    and a
    rst $38
    rst $38
    scf
    reti


    ld [hl], $49
    jr nz, jr_035_496c

    rra

jr_035_496c:
    rst $38
    rst $38
    rst $38
    ld [$0084], a
    nop
    nop
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, d
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $41
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
    rlca
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    nop
    rrca
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rlca
    rst $38
    rst $38

jr_035_49a0:
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ret nc

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
    ldh [rP1], a
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
    rrca
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
    cp $60
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
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
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
    inc b
    rst $38
    rst $38
    rst $38
    ret nz

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
    ld bc, $ffff
    rst $38
    and b
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
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
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
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $ffff
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
    ret nz

    nop
    nop
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
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc e
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    dec bc
    cp $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rrca
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $01
    ld e, a
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    ld e, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, RST_00
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
    nop
    rrca
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
    ret nz

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
    ldh [rP1], a
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
    ret nz

    nop
    ld bc, $00fc
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    ld b, e
    rst $38
    rst $38
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
    db $fc
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
    rst $28
    db $e3
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    ret nz

    db $10
    sbc [hl]
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ld e, $0f
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    ld [de], a
    ld a, a
    ld a, a

jr_035_4b5e:
    ld [bc], a
    sbc [hl]
    ld bc, $016f
    rst $38
    rst $38
    rst $38
    rst $28
    ld hl, sp+$02
    inc b
    sub l
    rst $38
    rst $38
    call c, RST_10
    nop
    rra
    rst $38
    rst $38
    ret nz

jr_035_4b75:
    nop
    db $10
    rrca
    rst $38
    rst $38
    ldh [$38], a
    add $00
    ld a, a

jr_035_4b7f:
    rst $38
    rst $38
    ret nz

    ld sp, $208c
    rst $30
    rst $38
    rst $38
    nop
    rst $00
    jr jr_035_4b7f

    rst $38
    rst $38
    db $f4
    inc bc
    jr jr_035_4b75

    rst $38
    rst $38
    rst $38
    nop
    jr c, jr_035_4b5e

    ccf
    rst $38
    rst $38
    ldh a, [rSB]
    adc h
    ld [hl], e
    rst $38
    rst $38
    cp $00
    ld hl, $ff8c
    rst $38
    ld sp, hl
    add b
    ld b, $31
    sbc a
    rst $38
    rst $38
    ldh a, [rSB]
    adc [hl]
    ld [hl], a
    rst $38
    rst $38
    call z, $3100
    adc h
    rst $30
    cp $73
    nop
    inc b
    ld [hl], e
    sbc l
    rst $38
    sbc h
    ldh [rSB], a
    adc [hl]
    ld [hl], e
    cp a
    di
    sbc b
    nop
    ld sp, $77ce
    cp $e3
    db $10
    rlca
    add hl, sp
    adc $f3
    call c, $00e2
    ld h, a
    add hl, sp
    adc $79
    sbc h
    ldh [$0c], a
    ld h, a
    add hl, sp
    rst $08
    inc sp
    sbc h
    ld bc, $638c
    inc a
    rst $20
    ld sp, $3180
    adc [hl]
    ld h, a
    sbc h
    and $30
    ld b, $39

jr_035_4bf1:
    call z, $9cf3
    add $20
    rst $00
    add hl, sp
    sbc [hl]
    ld [hl], e
    ret c

    call nz, $e718
    inc sp
    adc $7f
    jr @-$7d

    inc e
    ld h, a
    add hl, sp
    rst $08
    ld h, e
    db $10
    inc sp
    adc h
    rst $20
    add hl, sp
    db $fc
    ld h, d
    ld b, $31
    sbc b
    rst $20
    ccf
    sbc h
    ld b, b
    add $33
    inc a
    rst $20
    db $e3
    adc b
    jr @-$38

    ld h, a
    sbc h
    db $fc
    ld [hl], c
    inc bc
    jr jr_035_4bf1

    di
    sbc a
    adc [hl]
    jr nz, jr_035_4c8d

    add hl, de
    adc $7b
    pop af
    call nz, Call_035_730c
    cp c
    rst $20
    ld a, $38
    ret nz

    add $37
    inc a
    rst $20
    db $e3
    ld [$c618], sp
    rst $20
    sbc [hl]
    db $fc
    ld [hl], c
    inc bc
    inc e
    xor $71
    rst $08
    adc [hl]
    jr nc, jr_035_4c7b

    adc l
    rst $08
    add hl, sp
    ld sp, hl
    jp nz, Jump_000_3803

    call c, $9fe3

jr_035_4c54:
    inc e
    ld h, b
    ld h, e
    rra
    sbc $79
    pop af
    add [hl]
    ld b, $31
    db $fd
    rst $20
    cp a
    jr c, jr_035_4cc3

    ld h, e
    rra
    sbc $73
    di
    add h
    ld b, $31

jr_035_4c6b:
    db $fd
    rst $20
    ccf
    jr c, @-$3e

    ld h, e
    dec e
    sbc $73
    di
    adc h
    ld b, $31
    call Call_000_3fe7

jr_035_4c7b:
    jr c, jr_035_4cbd

    inc hl
    sbc h
    cp $79
    pop af
    add [hl]
    inc bc
    jr c, jr_035_4c54

    rst $20
    sbc l
    sbc h
    ld h, b
    ld sp, $6f8e

jr_035_4c8d:
    add hl, sp
    reti


    add $01
    sbc h
    rst $20
    ld [hl], e
    adc $ce
    jr nc, jr_035_4cb0

    rst $00
    ccf
    sbc h

jr_035_4c9b:
    xor $61
    add b
    add $39
    cp h
    rst $20
    ld h, a
    jr jr_035_4cab

    ld [hl], e
    sbc l
    rst $08
    dec sp
    jr c, jr_035_4c6b

jr_035_4cab:
    inc hl
    sbc h
    xor $79
    reti


jr_035_4cb0:
    add $03
    jr jr_035_4c9b

    ld [hl], e
    sbc h
    call z, Call_000_1830
    rst $00
    ccf
    sbc h

jr_035_4cbc:
    db $ec

jr_035_4cbd:
    ld h, e
    nop
    adc $3b
    ld sp, hl
    rst $20

jr_035_4cc3:
    rst $00
    jr jr_035_4cca

    ld h, e
    sbc a
    rst $08
    ld a, [hl]

jr_035_4cca:
    jr nc, @-$3e

    ld h, e
    inc e
    cp $73
    db $e3
    adc h
    inc bc
    jr c, jr_035_4cbc

    rst $30
    sbc a
    jr jr_035_4d39

    ld sp, $7f8f
    dec a
    ld hl, sp-$3d
    ld bc, $7b8c
    ld sp, hl
    rst $08
    adc [hl]
    db $10
    inc c
    ld h, e
    rst $18
    sbc $7c
    ld [hl], c
    add b
    ld b, a
    rra

jr_035_4cef:
    db $fc
    di
    db $e3
    inc c
    ld b, $31
    rst $28
    rst $20
    cp [hl]

jr_035_4cf8:
    jr jr_035_4d5a

    ld sp, $7f8f
    add hl, sp
    pop af
    jp $8c01


    ld a, e
    ld sp, hl
    rst $08
    adc [hl]
    db $10
    inc c
    ld h, e
    rst $18
    adc $7c
    ld [hl], b
    add b

jr_035_4d0e:
    ld h, e
    ld e, $fe
    ld [hl], e
    db $e3
    add h
    inc bc
    jr jr_035_4d0e

    di
    sbc a
    inc e
    jr nz, jr_035_4d35

    rst $00
    ccf
    cp h
    ldh a, [$c3]
    nop
    adc [hl]
    dec sp
    ld sp, hl
    rst $20
    add [hl]
    jr jr_035_4d35

    ld [hl], e
    rst $18
    rst $08
    inc a
    jr nc, jr_035_4cef

jr_035_4d2f:
    ld h, e
    ld e, $fe
    ld a, c
    pop hl
    add [hl]

jr_035_4d35:
    inc bc
    jr jr_035_4d2f

    di

jr_035_4d39:
    adc a
    inc c
    jr nc, jr_035_4d55

    rst $00
    ccf
    sbc h
    ld hl, sp-$1f
    add b
    add $39
    db $fc
    rst $20
    add a
    inc c
    ld b, $31
    rst $08
    rst $20
    inc e
    jr jr_035_4db0

    ld sp, $778e
    jr c, jr_035_4d35

jr_035_4d55:
    jp $8c01


    ld [hl], e
    cp c

jr_035_4d5a:
    rst $20
    ld b, $18
    inc c
    ld h, e
    sbc l
    rst $08
    jr c, jr_035_4d73

    ret nz

    ld h, e
    inc e
    xor $79

jr_035_4d68:
    pop bc
    add [hl]
    ld bc, $e79c
    ld a, e
    adc $04
    jr nc, jr_035_4d7e

    db $e3

jr_035_4d73:
    sbc a
    adc $70
    jr nz, jr_035_4cf8

    ld h, a
    inc e
    cp $73
    add b
    inc b

jr_035_4d7e:
    inc bc
    jr c, jr_035_4d68

    di
    sbc h

jr_035_4d83:
    ld [$1820], sp
    rst $00
    ccf
    sbc h
    ld [c], a
    ld bc, $c600
    add hl, sp
    db $fc
    rst $20
    db $10
    ld [$3106], sp
    rst $08
    rst $20
    jr c, jr_035_4d98

jr_035_4d98:
    ld b, b
    ld sp, $7f8e
    cp c

jr_035_4d9d:
    jp $0102


    adc h
    ld [hl], e
    db $fd
    adc $18
    db $10
    inc c
    ld h, e
    sbc a
    xor $70
    ret nz

    add b

jr_035_4dad:
    ld h, e
    inc e
    rst $38

jr_035_4db0:
    ld [hl], e
    add [hl]
    inc b
    inc bc
    jr jr_035_4d9d

    rst $38
    sbc h
    ld [hl], b
    nop
    jr jr_035_4d83

jr_035_4dbc:
    ccf
    db $fc

jr_035_4dbe:
    db $e3
    add b
    nop
    adc $39
    rst $38
    rst $20

jr_035_4dc5:
    inc e
    nop
    ld b, $71
    rst $08
    rst $38
    jr c, jr_035_4dad

    nop
    inc hl
    sbc [hl]
    rst $38
    ld sp, hl
    add $00
    inc bc
    jr jr_035_4dbe

jr_035_4dd7:
    rst $38
    sbc $30
    nop

jr_035_4ddb:
    jr @-$37

    ccf
    cp $f1
    add h
    nop
    add $39
    rst $38
    rst $38
    adc h
    ld h, b
    inc b
    ld [hl], c
    rst $08
    ld a, a
    db $fc
    db $e3
    nop

jr_035_4def:
    ld h, e
    ld e, $7b
    rst $38
    rst $20
    jr jr_035_4df9

    jr jr_035_4ddb

    rst $18

jr_035_4df9:
    rst $38
    jr c, jr_035_4dbc

    jr jr_035_4dc5

    inc e
    rst $38
    ld sp, hl
    add $00
    add $38
    rst $30
    rst $38
    adc $30
    ld [bc], a
    jr jr_035_4def

    sbc a
    rst $38
    ld hl, sp-$80
    inc b
    ld [hl], c
    rst $00
    ccf
    rst $38
    jr nc, jr_035_4dd7

    inc bc
    jr jr_035_4e7b

    rst $08
    rst $38
    rst $20
    inc sp
    ccf
    pop af
    add d
    db $10
    rst $00
    add hl, sp
    rst $08
    rst $38
    rst $38
    ld hl, sp-$80
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    inc sp
    rst $28
    rst $38
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    ld c, $ff
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_4e7b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    rra
    db $fc
    push hl
    and l
    ld hl, $015f
    jr z, jr_035_4ff9

    rrca
    rlca
    adc a
    add a
    adc a
    ld b, $0e
    ld c, $1f
    dec c
    rrca
    rrca
    adc e
    call nz, Call_000_2960
    ld e, [hl]
    ccf
    rrca
    rst $38
    ld [$c400], a
    ld h, b
    rst $28
    rst $38
    rst $38
    ld hl, sp+$00
    ld [$ffff], sp
    di
    inc b
    cp $00
    adc [hl]
    ei
    rst $38
    ld [hl], c
    inc b
    cp $01
    dec c
    rst $30
    cp $e0
    dec e
    db $fc
    ld bc, $ff1b
    db $fc
    ret nz

    ccf
    db $fc
    nop
    dec de
    rst $38
    ldh a, [rP1]
    ld a, a
    ld hl, sp+$00
    dec de
    rst $38
    ldh [rP1], a
    ld a, a
    ld hl, sp+$00
    rra
    rst $38
    jr nz, jr_035_4fca

jr_035_4fca:
    ld a, a
    ld hl, sp+$00
    rst $08
    rst $38
    add b
    inc bc
    rst $38
    ldh [rP1], a
    ld a, a
    db $fc
    add b
    rlca
    rst $38
    ldh [rP1], a
    ld a, a
    db $fc
    nop
    rra
    rst $38
    nop
    nop
    ld [hl], a
    db $fc
    ld b, $3f
    db $fc
    nop
    ldh [$3b], a
    ld a, $02
    ccf
    ld hl, sp+$01
    add b
    scf
    ld a, $02
    ccf
    ld hl, sp+$01
    add b
    xor $70

jr_035_4ff9:
    inc c
    rst $38
    ldh a, [rTAC]
    nop
    call c, Call_000_19e0
    rst $38
    ldh [$0e], a
    ld bc, $c099
    inc sp
    cp $c0
    ld a, $03
    inc sp
    add b
    ld h, a
    db $fd
    add b
    db $fc
    rlca
    ld [hl], a
    nop
    rst $08
    ei
    ld bc, $0ef8
    xor $01
    sbc a
    ld a, [c]
    inc bc
    ldh a, [rNR33]
    call c, $3f01
    db $e4
    rrca
    ldh [$3b], a
    cp b
    ld [bc], a
    ld a, a
    ret nz

    rra
    ret nz

    scf
    jr c, @+$08

    rst $38
    add b
    ccf
    ret nz

    scf
    jr c, jr_035_503e

    rst $38
    add b
    ccf
    ret nz

    scf
    cp b

jr_035_503e:
    ld b, $ff
    add b
    ccf
    ret nz

    ccf
    cp b
    inc bc
    rst $38
    add b
    ccf
    ret nz

    rra
    call c, $ff03
    add b
    ccf
    ldh [$1f], a
    db $ec
    ld bc, $80ff
    ccf
    ldh [$1f], a
    db $ec
    ld bc, $80ff
    ccf
    ldh [rIF], a
    or $01
    rst $38
    ret nz

    rra
    ldh a, [rTAC]
    di
    nop
    rst $38
    ret nz

    rra
    ldh a, [$03]
    ld sp, hl
    nop
    ld a, a
    ret nz

    rrca
    ld hl, sp+$01
    db $fc
    nop
    ccf
    ret nz

    rrca
    ld hl, sp+$00
    cp $00
    ccf
    ldh [rTAC], a
    db $fc
    nop
    ld a, a
    nop
    rra
    ldh a, [rTAC]
    cp $00
    ccf
    add b
    rrca
    ldh a, [$03]
    rst $38
    nop
    rra
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    add b
    rrca
    ldh a, [$0d]
    cp $01
    rst $38
    ret nz

    inc bc
    ld hl, sp+$07
    rst $38
    add b
    ld a, a
    ldh [rSB], a
    cp $01
    rst $38
    ret nz

    ccf
    ld hl, sp+$00
    ld a, a
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    nop
    ccf
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    rrca
    ldh [$1f], a
    cp $01
    rst $38
    add b
    rrca
    ldh a, [rIF]
    cp $00
    rst $38
    ret nz

    rlca
    ld hl, sp+$07
    rst $38
    add b
    ld a, a
    ldh [$03], a
    ld hl, sp+$03
    rst $38
    add b
    ld a, a
    ldh [$03], a
    ld hl, sp+$03
    rst $38
    add b
    ld a, a
    ldh [$03], a
    db $fc
    inc bc
    rst $38
    add b
    ld a, a
    ldh [$03], a
    ld hl, sp+$03
    ld a, a
    add b
    ld a, a
    ldh [rTAC], a
    ld hl, sp+$07
    ld a, a
    add b
    ld a, a
    ldh [rIF], a
    ldh a, [rTMA]
    rst $38
    nop
    rst $38
    ret nz

    rrca
    ldh [$0d], a
    rst $38
    ld bc, $80ff
    rra
    ret nz

    add hl, de
    cp $03
    rst $38
    nop
    ccf
    add b
    inc sp
    db $fc
    rlca
    cp $00
    ld a, a
    nop
    ld h, a
    ld hl, sp+$0f
    db $fc
    nop
    cp $00
    rst $18
    ldh a, [$1f]
    ld hl, sp+$03
    db $fc
    ld bc, $c03f
    ccf
    ldh a, [rTAC]
    ldh a, [rP1]
    ld a, a
    add b
    ld a, a
    ldh [rIF], a
    ldh [rDIV], a
    rst $38
    nop
    rst $38
    ret nz

    rra
    ret nz

    ld bc, $03fe
    rst $38
    add b
    ld a, a
    add b
    rlca
    ld hl, sp+$07
    cp $00
    cp $00
    rrca
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    nop
    rra
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$00
    ld a, a
    ret nz

    ld a, a
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ret nz

    rra
    ret nz

    ld bc, $01fe
    rst $38
    add b
    ld a, a
    add b
    inc bc
    db $fc
    rlca
    rst $38
    nop
    cp $00
    rrca
    ldh a, [rIF]
    db $fc
    ld bc, $00fe
    rra
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$00
    ccf
    ret nz

    ld a, a
    ldh a, [rIF]
    ldh a, [rP1]
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    ld bc, $01fe
    rst $38
    ret nz

    ccf
    add b
    inc bc
    cp $03
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$07
    cp $01
    cp $00
    rrca
    ldh a, [rIF]
    db $fc
    inc bc
    ld hl, sp+$00
    ccf
    ldh [$3f], a
    ld hl, sp+$07
    ldh a, [rP1]
    ld a, a
    ret nz

    ld a, a
    ldh [$1f], a
    ldh [rNR11], a
    rst $38
    ld bc, $c0ff
    ccf
    add b
    inc bc
    cp $03
    rst $38
    nop
    rst $38
    nop
    rlca
    db $fc
    rlca
    cp $01
    db $fc
    ld bc, $f01f
    dec bc
    db $fc
    rlca
    ld hl, sp+$04
    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [$08]
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    ld de, $01ff
    cp a
    add b
    ld a, a
    add b
    ld b, e
    cp $07
    rst $38
    nop
    rst $38
    nop
    adc a
    db $fc
    ld bc, $01fe
    db $fc
    ld [bc], a
    rra
    ldh a, [rNR13]
    ld hl, sp+$07
    ld sp, hl
    inc b
    ld a, a
    ldh [rIF], a
    ldh a, [rIF]
    ldh [rNR23], a
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    ret z

    ld hl, $c0ff
    ccf
    add b
    ld a, a
    nop
    rst $00
    rst $38
    nop
    cp $01
    cp $41
    dec c
    cp $01
    db $ec
    inc bc
    ld hl, sp-$7a
    ccf
    db $fc
    rlca
    or b
    rrca
    ld a, [c]
    ld [$f06f], sp
    ld c, $60
    rra
    call z, $bf21
    ldh [$3d], a
    add b
    ld a, a
    sub b
    ld b, e
    ld a, a
    add b
    ld [hl], d
    nop
    cp $21
    adc h
    rst $38
    ld bc, $03e4
    db $fc
    add d
    dec de
    db $fc
    inc bc
    sbc b
    rlca
    di
    inc c
    ld h, a
    ld hl, sp+$07
    jr nz, jr_035_5263

    db $e4
    db $10
    rst $18
    ldh [rNR32], a
    nop
    ccf
    sbc b
    ld h, e
    ccf
    ret nz

    jr c, jr_035_5251

jr_035_5251:
    rst $38
    jr nz, @-$78

    rst $38
    add b
    ldh [rSB], a
    db $fc
    jp $fe19


    ld bc, $07c0
    ld sp, hl
    add h
    daa
    db $fc

jr_035_5263:
    inc bc
    nop
    rrca
    and $18
    rst $08
    ldh a, [$0c]
    nop
    ccf
    call z, Call_000_1f21
    ldh [rNR23], a
    nop
    ld a, a
    jr nc, @-$7e

    ld a, a
    add b
    ld h, b
    ld bc, $c3fe
    nop
    rst $38
    db $10
    add b
    inc bc
    ld sp, hl
    add h
    inc hl
    db $fc
    daa
    nop
    rrca
    and $10
    rst $08
    pop af
    sbc h
    nop
    ccf
    ret c

    ld h, e
    ccf
    jp RST_30


    rst $38
    ld h, c
    adc h
    rst $38
    inc e
    ret nz

    inc bc
    rst $38
    add $03
    cp $73
    nop
    rrca
    rst $38
    jr jr_035_52ad

    ld sp, hl
    call z, $1f00
    db $fc
    ld h, b
    rra

jr_035_52ad:
    rst $38
    sub b
    nop
    ld a, a
    pop af
    add b
    ld a, a
    cp $c0
    ld bc, $c6ff
    nop
    adc a
    rst $38
    nop
    rlca
    rst $38
    cp b
    nop
    ccf
    cp $00
    rlca
    rst $38
    ld [c], a
    nop
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    ld hl, sp+$00
    ld a, a
    add b
    inc bc
    rst $38
    rst $38
    adc h
    ld b, e
    ld hl, sp+$00
    ccf
    rst $38
    ld hl, sp+$46
    ccf
    ret nz

    ld bc, $ffff
    add $79
    call z, Call_000_2f00
    sub c
    rst $38
    ccf
    xor $10
    nop
    db $fc
    ld bc, $7ffe
    ldh a, [rIE]
    db $fd
    ld [c], a
    nop
    nop
    rrca
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rrca
    ei
    rst $38
    rst $38
    rst $38
    ret c

    nop
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
    cp a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    jr nz, jr_035_5328

jr_035_5328:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1e04], sp
    pop hl
    ei
    ld e, $20
    nop
    inc sp
    adc b
    adc h
    rst $38
    rst $38
    ld hl, sp+$0c
    ld [c], a

Call_035_549b:
    inc sp
    add hl, sp
    rst $18
    rst $38
    rst $38
    ld bc, $62cc
    inc hl
    ccf
    rst $38
    cp $03
    sbc b
    call z, Call_035_7fee
    rst $38
    ldh a, [$0c]
    ld h, e
    inc sp
    ld sp, hl
    rst $38
    rst $38
    add b
    ld h, e
    add hl, sp
    cp a
    rst $18

jr_035_54b9:
    db $e3
    ret nz

    ld b, $33
    sbc a

jr_035_54be:
    db $fd
    and $1c
    nop
    ld h, e
    add hl, sp
    rst $38
    sbc $61
    add h
    inc bc
    ld sp, $fd9f
    and $18
    ret nz

    ld sp, $ff9c
    xor $70
    call z, $1903
    rst $08
    cp $e7
    inc c
    ret nz

    ld sp, $ff8c
    xor $71
    call z, $9c03
    rst $08
    cp $e3
    inc e
    ld h, b
    jr jr_035_54b9

    ld a, l
    rst $20
    ld sp, $01c6
    adc h
    rst $20
    sbc $73
    inc e
    ld h, b
    jr jr_035_54be

    ld a, c

jr_035_54f9:
    rst $20
    ld sp, $01c6
    adc [hl]
    ld h, a
    sbc [hl]
    ld [hl], e
    jr @-$1e

    jr @-$38

    ld a, e
    rst $00
    ld sp, $018e
    adc h
    ld l, a
    db $fc
    di
    ld sp, $39c0
    adc $ff
    adc $33
    inc e
    ld b, e
    jr @+$01

    ld sp, hl
    and $63
    add b
    ld h, e
    sbc l
    rst $38

jr_035_5520:
    sbc h
    db $e4

jr_035_5522:
    ld a, b
    adc [hl]
    ld [hl], e

jr_035_5525:
    cp a
    di
    adc h
    ld [hl], a
    db $10
    adc $7f
    cp $71
    add a
    ld h, d
    jr jr_035_54f9

    ld a, l
    rst $00
    jr c, jr_035_5522

    inc bc
    jr jr_035_5520

    cp b
    rst $20
    add hl, de
    add b
    ld h, e
    inc e
    rst $30
    jr jr_035_5525

    jr nc, jr_035_5550

    rst $20

jr_035_5545:
    rst $18
    rst $20

jr_035_5547:
    jr jr_035_55af

    inc bc
    sbc h
    db $e3
    cp h
    rst $20
    inc e
    ret nz

jr_035_5550:
    ld h, e
    inc e
    rst $30
    inc e
    db $e3

jr_035_5555:
    sbc b
    inc c
    ld h, e
    sbc h

jr_035_5559:
    rst $20
    jr jr_035_55d2

    inc bc
    sbc h
    db $e3
    cp b
    rst $20
    ld c, $c0
    ld h, e
    inc e
    rst $20
    jr c, @-$39

    or c
    inc e
    rst $20
    dec e
    rst $00
    jr c, jr_035_5555

    inc bc
    jr jr_035_5559

    add hl, sp
    add $3d
    adc b
    rst $20
    jr c, jr_035_5547

    add hl, sp
    rst $08
    ld [hl], e
    jr jr_035_5545

    add hl, sp
    adc $71
    call z, $3146
    add $73
    adc h

jr_035_5587:
    ld a, e
    db $10
    adc $39
    call c, $8e73
    ld h, d
    ld sp, $738e
    sbc h
    ld [c], a
    ret c

    adc h
    ld [hl], e
    adc h
    rst $20
    jr jr_035_55d1

    ld hl, $739c
    cp b
    rst $20
    inc a
    call nz, Call_000_1c63
    rst $20
    add hl, sp
    rst $00
    or c
    jr @-$37

    add hl, sp
    adc $71
    ld l, h
    ld b, [hl]

jr_035_55af:
    ld sp, $73ce
    sbc h
    dec sp
    ld de, $738c
    sbc h
    db $e3
    ld b, $c4

jr_035_55bb:
    ld h, e
    inc e
    rst $20
    jr c, jr_035_5587

    or c
    jr @-$37

    add hl, sp
    adc $30
    ld l, h
    ld b, [hl]
    ld sp, $73ce
    adc h

jr_035_55cc:
    ld a, e
    ld de, $738c
    sbc h

jr_035_55d1:
    db $e3

jr_035_55d2:
    ld b, $c4
    ld h, e
    inc e
    rst $20
    add hl, sp
    rst $00
    or c
    jr @-$37

    dec sp
    adc [hl]
    ld [hl], d
    db $ec
    ld b, [hl]
    ld [hl], c
    call z, $9ce7
    ld [c], a
    inc bc
    jr jr_035_55cc

    add hl, sp
    add $1d
    add b

jr_035_55ed:
    adc $39
    call c, $97f3
    nop
    ld h, e
    inc e
    ld h, a
    jr c, jr_035_55bb

    sub c
    add hl, de
    rst $00
    dec sp
    sbc [hl]
    ld [hl], b
    ld h, b
    ld c, h
    ld h, e
    sbc h
    rst $20
    jr @+$34

    inc hl
    add hl, sp
    and $73
    call z, $014c
    sbc h
    ld [hl], e
    cp c
    rst $20
    ld h, $00
    add $39
    call c, $93f3
    nop

jr_035_5618:
    ld h, e
    inc e
    ld h, [hl]
    add hl, sp
    pop bc
    add b
    ld sp, $338f
    sbc h
    ld h, e
    ld b, b

jr_035_5624:
    jr jr_035_55ed

    sbc c
    adc $31
    ld h, b
    inc c
    ld h, e
    call z, Call_000_18e7
    jr nc, @+$08

    ld sp, $73e6
    sbc h
    ld [$1803], sp
    di
    ld sp, $0cce
    ld bc, $718c
    cp c
    rst $20
    ld b, $00
    adc $79
    call c, $93f3
    nop
    ld h, a
    inc a
    xor $79
    adc c
    add b
    inc sp
    ld e, $77
    jr c, jr_035_5618

    ret nz

    ld sp, $338f
    sbc h
    ld h, c
    ret nz

    jr jr_035_5624

    sbc c
    adc $71
    jr nz, jr_035_566e

    ld h, e
    call z, Call_000_39cf
    jr nc, jr_035_566e

    ld [hl], e
    and $e7
    sbc h
    jr c, jr_035_5671

jr_035_566e:
    add hl, sp
    rst $30
    ld [hl], e

jr_035_5671:
    adc $4c
    ld bc, $fb98
    cp c
    and $06
    nop
    call z, $dc79
    db $e3
    inc de
    nop
    add $3c
    xor $71
    add e
    nop
    ld h, e
    ld e, $67
    add hl, sp
    ret nz

    add b
    inc sp
    sbc a
    scf
    inc a
    db $e4
    ret nz

    ld de, $3b8f
    sbc h
    ld h, b

jr_035_5697:
    ld b, b
    add hl, de
    rst $08
    sbc e
    sbc [hl]
    ld [hl], b

jr_035_569d:
    ld h, b
    jr @-$37

    sbc l
    adc $70
    ld h, b
    ld [$ddc7], sp
    adc $30
    ld [hl], b
    inc c
    rst $20
    call z, $38cf
    jr nc, jr_035_56b9

    rst $20
    call z, $38cf
    jr nc, jr_035_56bf

    rst $20
    rst $08

jr_035_56b9:
    rst $08
    jr c, jr_035_56ec

    ld [$cfe7], sp

jr_035_56bf:
    rst $08
    jr c, jr_035_56f2

    ld [$dde7], sp
    adc $30
    jr nc, jr_035_56e1

    rst $00
    db $dd
    adc $30
    ld h, b
    jr jr_035_5697

    sbc l
    adc $30
    ld h, b
    jr jr_035_569d

    sbc l
    adc $70
    ldh [rNR10], a
    rst $00
    sbc a
    adc [hl]
    ld [hl], b
    ldh [rNR11], a

jr_035_56e1:
    rst $08
    sbc c
    sbc [hl]
    ld [hl], b
    ret nz

    ld sp, $3b8f
    sbc h
    ld h, c
    ret nz

jr_035_56ec:
    ld sp, $3b8f
    sbc h
    db $e3
    add b

jr_035_56f2:
    ld sp, $3b8f
    sbc h
    pop hl
    add b
    inc hl
    sbc [hl]
    dec sp
    cp h
    db $e3
    add b
    ld h, e
    ld e, $73
    jr c, @-$3b

    add b
    ld h, e
    inc e
    ld [hl], a
    add hl, sp
    rst $00
    nop
    rst $00
    inc e
    rst $20
    ld a, c
    rst $00
    nop
    add $3c
    rst $20
    ld [hl], e
    add [hl]
    ld bc, $398e
    rst $28
    di
    adc [hl]
    ld bc, $710c
    rst $08
    rst $20
    inc c
    ld [bc], a
    jr @-$0b

    sbc a
    sbc $18
    inc b

jr_035_5728:
    ld [hl], c
    rst $00
    ccf
    cp b
    jr nc, @+$1a

    db $e3
    sbc [hl]
    ld a, a
    ld [hl], h
    ld h, b
    ld hl, $3cc7
    rst $38
    ld hl, sp-$40
    ld b, e
    ld c, $7b
    rst $38
    or c
    nop
    add [hl]
    inc a
    rst $30
    rst $38
    ld h, d
    ld bc, $711c
    rst $08
    rst $38
    call nz, $1802
    ld [hl], e
    rst $18
    db $fd
    call z, $3802
    db $e3
    sbc a
    rst $38
    sbc b
    inc bc
    inc e
    ld [hl], c
    rst $08
    db $fc
    rst $20
    sbc b
    db $e3
    adc [hl]
    jr nc, jr_035_5728

    ccf
    rst $38
    rst $38
    sbc h
    jr nz, jr_035_5767

jr_035_5767:
    ld bc, $effd
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    db $db
    add a
    rst $00
    add d
    add e
    inc bc
    add $1e
    sub a
    rst $18
    jp nc, Jump_000_2517

    jr z, jr_035_5978

    ld a, a
    rst $38
    cp a
    or a
    jp hl


    ld a, a
    rst $38
    ldh a, [rNR52]
    nop
    rrca
    cp a
    rst $38
    rst $38
    ld [bc], a
    jr nz, @+$5f

    rst $38
    rst $38
    rst $38
    ret nz

    ld b, b
    cp c
    rst $18
    rst $38
    ccf
    db $fc
    ld [$7797], sp
    cp $c7
    db $fc
    nop
    ld h, e
    db $dd
    rst $38
    ld sp, $c1de
    inc de

jr_035_5978:
    xor $f7
    sbc b
    rst $18
    pop hl
    jr @-$07

    ld [hl], e
    adc h
    ld l, a
    ldh a, [$0c]
    ei
    cp c
    ld b, h
    ccf
    ld hl, sp+$22
    ld a, l
    call c, $1f00
    db $fc
    ld de, $e6bf
    nop
    rrca
    cp $00
    rst $08

jr_035_5997:
    ei
    add b
    rlca
    cp $00
    scf
    cp $c0
    rra
    rst $38
    nop
    sbc a
    rst $38
    nop
    rrca
    rst $38
    nop
    ld l, a
    db $fc
    add b
    rrca
    cp $00
    ccf
    cp $00
    ccf
    db $fc
    nop
    ccf
    db $fc
    ld [bc], a
    ld a, a
    ld hl, sp+$00
    ccf
    cp b
    ld b, $7f
    add b
    ld c, $77
    nop
    ld c, a
    rst $38
    nop
    db $fc
    ld h, [hl]
    jr nc, jr_035_5997

    ld [c], a
    rra
    ldh a, [$67]
    ld a, b
    adc h
    rst $38
    jr nc, jr_035_59d2

jr_035_59d2:
    ld l, [hl]
    ld [hl], b
    ld c, $ee
    ld bc, $ce98
    ld h, e
    dec e
    call z, $d003
    sbc $63
    dec e
    call z, $8043
    call c, Call_000_3be6
    ret c

    ld b, a
    add c
    cp h
    call nz, $983b
    rst $08
    inc bc
    ld sp, hl
    adc h
    ld a, a
    or b
    adc a
    rlca
    pop af
    sbc b
    rst $38
    ld h, c
    cp $07
    db $e3
    ld de, $41fe
    inc a
    rrca
    add $23
    db $fc
    add a
    ldh a, [$1f]
    adc h
    ld b, a
    ld sp, hl
    rrca
    ldh a, [$7f]
    db $10
    adc a
    ldh [$3f], a
    ret nz

    cp $21
    rra
    ldh [$3f], a
    add c
    ld hl, sp-$3a
    ld a, a
    ld bc, $03fe
    ld sp, hl
    add b
    rst $38
    nop
    cp $1f
    call nz, $f873
    rrca
    ldh a, [$3f]
    db $10
    adc a
    ldh [$1f], a
    ret nz

    db $fc
    ld b, d
    ccf
    ret nz

    ld a, a
    rlca
    pop af

jr_035_5a37:
    jr jr_035_5a37

    ld bc, $1ffc
    call nz, $f867
    rrca
    ldh [$7f], a
    ld sp, $e09f
    rra
    add e
    ld hl, sp-$74
    rst $38
    ld bc, $0ffc
    and $13
    db $fc
    inc bc
    ldh a, [$7e]
    ld sp, $e09e
    ccf
    add c
    ld hl, sp-$7a
    ld a, a
    add b
    ld a, [hl]
    rra
    call nz, $fc33
    rrca
    ldh [$fe], a
    ld hl, $e09f
    ccf
    add a
    pop af
    inc c
    rst $38
    ld bc, $3ff8
    adc b
    ld h, a
    ld hl, sp+$0f
    jp $86f8


    ld a, a
    add c
    db $fc
    rra
    call nz, $f823
    rlca
    pop hl
    db $fc
    ld b, e
    rra
    ret nz

    ld a, [hl]
    rrca
    jp nz, $fc31

    rlca
    ldh [$fe], a
    inc hl
    sbc l
    ret nz

    ld a, [hl]
    rrca
    ldh [$39], a
    call c, $e007
    cp $23
    sbc l
    ret nz

    ld a, [hl]
    rrca
    ldh [$39], a
    db $fc
    rlca
    ldh [$fe], a
    ld hl, $c09f
    ld a, $0f
    ld [c], a
    add hl, sp
    db $fc
    inc bc
    pop hl
    db $fc
    ld b, e
    cp l
    ret nz

    ld a, h
    rra
    ret nz

    ld [hl], e
    ld hl, sp+$0f
    pop bc
    db $fc
    jp $803f


    ld a, b
    ccf
    adc b
    ld h, a
    ld hl, sp+$0f
    add a
    pop af
    inc c
    rst $30
    ld bc, $fee0
    ld hl, $e0cf
    ld a, $1f
    call nz, $dc31
    rlca
    add e
    ld hl, sp+$06
    ld a, a
    add b
    ldh a, [$7f]
    ld de, $70ce
    ld e, $0f
    ld [c], a
    add hl, sp
    xor $03
    add e
    ld hl, sp+$07
    dec sp
    add b
    ldh a, [$7f]
    ld bc, $70e7
    inc e
    rrca
    ldh [$39], a
    db $ec
    inc bc
    add e
    ld hl, sp+$07
    dec sp
    add b
    ldh a, [$7f]
    nop
    rst $20
    ld [hl], b
    ld e, $1f
    ret nz

    add hl, sp
    adc $03
    add e
    ld hl, sp+$07
    dec sp
    add b
    ld [hl], b
    ld a, a
    nop
    rst $20
    ld [hl], b
    ld e, $0f
    ldh [$3c], a
    xor $03
    pop bc
    db $fc
    inc bc
    sbc l
    ret nz

    ld a, b
    ccf
    add b
    rst $30
    cp b
    ld c, $0f
    ldh [rNR34], a
    rst $30
    ld bc, $fcc1
    inc bc
    sbc [hl]
    ldh [$38], a
    ccf
    ret nz

    inc sp
    db $fc
    rlca
    rlca
    ldh a, [$0e]
    ld a, e
    add b
    ldh [$fe], a
    ld bc, $70cf
    inc e
    rra
    ret nz

    ld a, c
    call c, Call_000_0707
    ldh a, [rIF]
    ld a, e
    add b
    ldh [$fe], a
    ld bc, $e0ce
    jr jr_035_5b86

    call nz, $dc7b
    inc bc
    rlca
    ldh a, [rIF]
    rst $30
    nop
    ldh [$fe], a
    inc bc
    adc $e0
    jr c, jr_035_5b96

    add b
    ld a, e
    call c, Call_000_0707
    ldh a, [$0e]
    ld a, a
    nop
    pop bc
    cp $21
    sbc $e0
    jr jr_035_5ba6

    call nz, $dc7b
    rlca
    rlca
    ld hl, sp+$0f
    ld a, e
    add b
    ldh [rIE], a
    ld de, $f0e7
    inc e
    rra
    ld [c], a
    add hl, sp
    cp $01
    add e
    db $fc
    ld b, a
    sbc l
    ret nz

    jr nc, jr_035_5bc1

    adc b
    ld [hl], e
    ld hl, sp+$06

jr_035_5b86:
    rlca
    ldh a, [$0e]
    ld a, a
    add b
    ldh [$fe], a
    ld bc, $f0ef
    inc e
    rrca
    ldh [$3d], a
    cp $01

jr_035_5b96:
    add c
    db $fc
    inc bc
    sbc a
    ldh [$38], a
    rra
    call nz, $fc39
    inc bc
    add e
    ld hl, sp+$07
    ccf
    ret nz

jr_035_5ba6:
    ld [hl], b
    ccf
    add b
    ld [hl], e
    db $fc
    rlca
    inc bc
    ld hl, sp+$07
    ccf
    ret nz

    ld [hl], b
    ccf
    add b
    ld [hl], e
    db $fc
    rlca
    inc bc
    ld hl, sp+$07
    cp a
    ret nz

    ld [hl], b
    ccf
    ret nz

    dec sp
    db $fc

jr_035_5bc1:
    inc bc
    add c
    db $fc
    inc bc
    sbc a
    ldh [$38], a
    rrca
    ldh [$3d], a
    cp $03
    ret nz

    cp $01
    rst $08
    ldh a, [rNR32]
    rlca
    ldh a, [$8e]
    ld a, e
    adc b
    ldh [$3f], a
    add h
    ld [hl], e
    db $fc
    rlca
    ld bc, $23fe
    adc a
    db $e3
    jr c, jr_035_5bec

    pop af
    adc [hl]
    ld a, a
    adc b
    ldh [$3f], a
    add h

jr_035_5bec:
    ld [hl], e
    db $fc
    ld b, a
    nop
    cp $31
    adc a
    pop af
    jr @+$09

    pop af
    adc [hl]
    ld a, e
    adc b
    ldh [$1f], a
    add $39
    xor $33
    add b
    rst $38
    ld de, $31c7
    adc h
    inc bc
    db $fc
    ld b, a
    inc a
    add $70
    rrca
    pop af
    inc e
    ld [hl], e
    add hl, de
    ret nz

    ccf
    call nz, $cc71
    ld h, a
    nop
    ld a, a
    add hl, de
    rst $20
    add hl, sp
    adc $00
    cp $33
    adc $73
    sbc h
    inc bc
    db $fc
    ld b, a
    inc e
    add $70
    rlca
    pop af
    sbc a
    ld [hl], e
    adc h
    ldh [rIF], a
    db $e3
    ld a, $63
    dec sp
    ret nz

    rra
    jp nz, $c67d

    inc sp

jr_035_5c3a:
    add b
    rra
    add $79
    call z, Call_000_0077
    ccf
    adc h
    di
    adc h
    xor $00
    dec sp
    adc h
    di
    jr jr_035_5c3a

    nop
    ccf
    adc b
    di
    jr @-$10

    nop
    ccf
    add h
    pop af
    adc h
    rst $28
    jr nz, jr_035_5c79

    add $78
    adc $77
    add b
    rrca
    ld [c], a
    inc a
    add $3b
    adc b
    rlca
    pop af
    ld e, $63
    dec e
    db $e4
    inc bc
    ld hl, sp-$71
    ld sp, $f28e
    ld bc, $27fc
    call c, Call_035_7967
    nop
    ld a, a

jr_035_5c79:
    ld de, $31ee
    cp $00
    rra
    call nz, $8c7f
    ld [hl], a
    or b
    rlca
    ldh a, [$9f]
    ld h, c
    sbc l
    or $00
    ld a, a
    inc de
    and $33
    cp h
    ret nz

    rrca
    ld [c], a
    inc a
    add $33
    ret c

    nop
    cp $13
    call z, $bd63
    add b
    rlca
    ldh [$3e], a
    ld b, a
    dec sp
    call z, Call_035_7f00
    add hl, bc
    and $31
    sbc $c0
    inc bc
    ld hl, sp+$4f
    ld sp, $f38e
    db $10
    rrca
    ldh [$7d], a
    add [hl]
    ld [hl], e
    sbc b
    ret nz

    ccf
    add c
    or $19
    adc $63
    nop
    cp $03
    call z, Call_000_3c63
    adc $01
    db $fc
    ld b, a
    cp b
    adc $73
    cp h
    inc bc
    ld hl, sp+$0f
    ld sp, $e38c
    ld a, h
    inc bc
    ld hl, sp+$1f
    ld [hl], e
    sbc h
    db $e3
    db $fc
    inc bc
    ld hl, sp+$1f
    ld h, e
    sbc c
    and $78
    inc bc
    ld hl, sp+$0f
    ld [hl], c
    adc h
    and $3f
    nop
    db $fc
    daa
    sbc b
    add $7b
    sbc a
    ret nz

    ccf
    adc c
    cp $31
    sbc h
    rst $20
    ldh a, [rTAC]
    ldh [$3f], a
    add $63
    ret c

    rst $38
    nop
    cp $23
    call c, Call_000_3be6
    adc a
    ldh a, [rTAC]
    ld [c], a
    ccf
    add $63
    sbc b
    rst $38
    ldh [$3f], a
    adc c
    cp $31
    sbc h
    rst $20
    rst $38
    add b
    ld a, [hl]
    inc hl
    ld hl, sp-$3a
    ld [hl], e
    sbc l
    rst $28
    ld b, b
    cp $07
    ld hl, sp-$34
    ld [hl], e
    rra
    rst $38
    ret nz

    ld a, a
    inc de
    call c, $3966
    adc a
    rst $38
    ldh a, [$1f]
    ret nz

    rst $38
    add hl, de
    adc [hl]
    db $e3
    rst $38
    db $fc
    ld bc, $0ff8
    db $e3
    add hl, de
    call z, $fb37
    ret nz

    rlca
    ldh [$7f], a
    adc h
    add $31
    sbc a
    rst $08
    ldh a, [rTAC]
    ld [c], a
    ccf
    adc h
    rst $00
    ld [hl], c
    sbc l
    rst $38
    ld [c], a
    nop
    call c, $f147
    sbc b
    adc $33
    cp e
    db $fc
    nop
    ld bc, $8ffc
    db $e3
    add hl, sp
    sbc h
    ld h, a
    inc sp
    db $fc
    rst $00
    ldh a, [rIF]
    ldh [$7f], a
    add hl, bc
    call z, Call_000_3963
    sbc [hl]
    db $e3
    ld a, e
    rra
    ld h, b
    scf
    ld de, $66fc
    inc sp
    sbc c
    call z, $017f
    rst $38
    ld a, a
    ret nz

    jr nc, jr_035_5d90

    db $e4
    ld a, a
    add hl, de
    call z, Call_035_73e3
    add hl, de
    call z, $3167
    cp $cc
    xor $3f
    add b

jr_035_5d90:
    ld bc, $8fbc
    db $e3
    ld sp, $ce1c
    ld h, a
    ld sp, hl
    adc h
    db $e3
    dec a
    ret nz

    ld [hl], e
    rra
    add $71
    rra
    ldh [rNR31], a
    daa
    inc c
    ld a, a
    ld a, a
    ld [bc], a
    ld [hl], a
    ld bc, $016f
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    nop
    nop
    nop
    nop
    nop

jr_035_5dba:
    nop
    nop
    ld [$0000], sp
    ld hl, $f0ff
    ld d, b
    jr nc, jr_035_5dba

    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    cp $00
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    db $fc
    nop
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
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    rra
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
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    cp $00
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    cp $00
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    cp $00
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    ret nz

    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    add b
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
    ldh a, [rP1]
    nop
    ld b, $bf
    rst $38
    rst $00
    jr c, jr_035_5edd

jr_035_5edd:
    ld bc, $ff9f
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $30
    jr c, jr_035_5eea

jr_035_5eea:
    ld bc, $0000
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    rra
    dec bc
    ret nz

    ld h, c
    ld h, b
    dec [hl]
    ld d, l
    dec b
    add b
    rra
    inc b
    ret nz

    ld [$973e], a
    and c
    pop bc
    xor b
    ld [hl], $2f
    rst $18
    add a
    ret nz

    cp $1e
    inc bc
    ld hl, sp+$01
    ld a, h
    rlca
    ldh a, [$32]
    ld b, b
    rlca
    rst $38
    add b
    nop
    nop
    ld [hl], b
    dec bc
    db $ed
    ld e, a
    rst $38
    rst $38
    rst $38
    push af
    nop
    nop
    nop
    rra
    rst $38
    cp $ff
    ei
    ccf
    nop
    nop
    ld bc, $ffff
    ld bc, $f0ff
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    ret nz

    ld a, a
    ldh a, [rIE]
    ldh [rP1], a
    nop
    rra
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rP1]
    nop
    rrca
    rst $38
    ret nz

    ccf
    ldh a, [$1f]
    ld hl, sp+$00
    nop
    rlca
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    ret nz

    rra
    ld hl, sp+$0f
    db $fc
    nop
    nop
    ld bc, $c0ff
    rra
    ld hl, sp+$0f
    db $fc
    nop
    stop
    rst $38
    ldh [rIF], a
    db $fc
    rlca
    cp $00
    nop
    nop
    ccf
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    ld c, $00
    rrca
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    ld b, $00
    ld bc, $80ff
    rst $38
    ret nz

    ld a, a
    ldh a, [rP1]
    nop
    nop
    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    cp $00
    nop
    nop
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ldh [rTAC], a
    nop
    nop
    ccf
    ldh a, [$1f]
    ld hl, sp+$0f
    cp $00
    stop
    inc bc
    rst $38
    add b
    ld a, a
    add b
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    ld hl, sp+$07
    cp $01
    rst $38
    add b
    inc c
    nop
    nop
    ccf
    ldh a, [$1f]
    ldh a, [rTAC]
    rst $38
    nop
    ld [hl], b
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh [$3f], a
    db $fc
    ld bc, $00e0
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    cp $01
    ldh [rP1], a
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    cp $01
    ldh a, [rP1]
    nop
    ld a, a
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    nop
    ld hl, sp+$00
    nop
    rrca
    ld hl, sp+$07
    cp $01
    rst $38
    ret nz

    ccf
    nop
    nop
    ld bc, $80ff
    ld a, a
    ret nz

    ccf
    ld hl, sp+$0f
    ldh [rP1], a
    nop
    rra
    ld hl, sp+$07
    cp $01
    rst $38
    add b
    ld a, a
    nop
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [$03]
    nop
    rlca
    cp $03
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ldh [rP1], a
    nop
    rrca
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ldh [rP1], a
    nop
    rrca
    cp $03
    rst $38
    add b
    ld a, a
    ldh [rIF], a
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ld bc, $c0ff
    ccf
    ldh a, [rTAC]
    ld hl, sp+$00
    add b
    inc bc
    rst $38
    add b
    ld a, a
    ldh a, [$1f]
    ld hl, sp+$03
    db $fc
    nop
    nop
    nop
    rst $38
    ret nz

    rra
    db $fc
    inc bc
    rst $38
    add b
    ccf
    ret nz

    nop
    nop
    rrca
    db $fc
    inc bc
    rst $38
    ret nz

    ccf
    ldh a, [$03]
    db $fc
    nop
    nop
    nop
    rst $38
    ret nz

    rra
    db $fc
    inc bc
    rst $38
    nop
    rra
    ldh [rP1], a
    nop
    rrca
    db $fc
    inc bc
    rst $38
    ret nz

    ccf
    ld hl, sp+$01
    cp $00
    nop
    nop
    ld a, a
    ldh [rIF], a
    db $fc
    ld bc, $c0ff
    rrca
    ldh a, [rP1]
    nop
    inc bc
    cp $00
    ld a, a
    ldh a, [rIF]
    cp $00
    ld a, a
    ret nz

    nop
    nop
    rrca
    db $fc
    ld bc, $c0ff
    ccf
    db $fc
    ld bc, $80ff
    nop
    nop
    rra
    ld hl, sp+$01
    rst $38
    ret nz

    ld a, a
    db $fc
    inc bc
    cp $00
    nop
    nop
    rra
    ld hl, sp+$01
    rst $38
    ret nz

    ccf
    db $fc
    rrca
    cp $00
    nop
    nop
    rlca
    rst $38
    nop
    ld a, a
    ld hl, sp+$0f
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $e0ff
    rlca
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp+$00
    nop
    nop
    rra
    cp $00
    ld a, a
    ld hl, sp+$03
    rst $38
    pop bc
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    ldh a, [rSB]
    rst $38
    ret nz

    rra
    rst $38
    rst $08
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    nop
    rrca
    cp $01
    rst $38
    rst $38
    nop
    inc e
    nop
    nop
    ld bc, $f8ff
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    ldh [rTAC], a
    rst $38
    db $fc
    ld bc, $f0ff
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    add b
    rrca
    rst $38
    db $fc
    ld bc, $e0ff
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    ret nz

    ld a, a
    rst $38
    add b
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
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    cp $fb
    dec b
    add b
    add $80
    nop
    nop
    cpl
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
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ccf
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
    ret nz

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
    rra
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
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ff3f
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    sbc b
    nop
    nop
    ld bc, $ff3f
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    jr nz, jr_035_6496

jr_035_6496:
    nop
    ld bc, $ff3f
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    daa
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld [bc], a
    ld a, a
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
    ld bc, $ffff
    rst $38
    adc b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    daa
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ff7f
    rst $38
    ret nz

    nop
    nop
    nop
    rst $18
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
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
    rrca
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
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
    rrca
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    ld a, [$0000]
    nop
    rrca
    rst $38
    rst $38
    db $fc
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
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
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
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
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
    ld a, a
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
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
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
    rlca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    nop
    ld e, a
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
    add b
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
    add b
    nop
    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    ld b, $3f
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
    jr nz, jr_035_6615

jr_035_6615:
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
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld a, [hl+]
    ccf
    rst $38
    jr jr_035_662b

jr_035_662b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    ld [bc], a
    nop
    ld [$0703], sp
    rst $38
    cp $07
    ldh [rTAC], a
    pop hl
    db $fc
    inc bc
    db $fd
    rrca
    ret nz

    rlca
    ld hl, sp+$1e
    rlca
    add c
    ldh a, [$38]
    ld [bc], a
    rra
    add e
    ldh a, [$3c]
    rrca
    add e
    ldh [$30], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    nop
    nop
    inc bc
    rst $38
    cp $ff
    rst $38
    rst $30
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    ld hl, sp-$01
    rst $38
    add e
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    ld hl, sp+$3f
    rst $38
    rlca
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rra
    ei
    rst $38
    cp $00
    nop
    nop
    nop
    ccf
    rst $38
    pop hl
    cp $3f
    rst $38
    ldh [rP1], a
    jr c, jr_035_684a

jr_035_684a:
    nop
    rst $38
    rst $38
    rrca
    ld hl, sp-$01
    rst $38
    nop
    nop
    nop
    nop
    rlca
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rrca
    db $fd
    rst $38
    rst $38
    adc a
    rst $38
    ldh [$3c], a
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    rrca
    db $fd
    rst $38
    rst $38
    rst $20
    rst $38
    ret nz

    rlca
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    pop af
    rst $38
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    ccf
    ei
    db $fd
    rst $38
    inc bc
    db $fc
    nop
    ld a, $00
    nop
    nop
    nop
    rst $38
    adc a
    rst $28
    ld hl, sp+$3f
    add b
    inc bc
    ld hl, sp+$00
    nop
    nop
    inc bc
    cp $3f
    adc a
    ldh [rIE], a
    ld e, h
    inc bc
    ld hl, sp+$02
    nop
    nop
    inc bc
    db $fc
    ccf
    rrca
    pop bc
    rst $38
    ldh a, [rIF]
    db $fc
    nop
    jr jr_035_68bc

jr_035_68bc:
    nop
    rst $38
    rra
    add a
    ldh a, [rIE]
    rst $38
    rlca
    db $fc
    nop
    nop
    nop
    nop
    rra
    pop hl
    db $fc
    ld a, a
    adc a
    rst $38
    nop
    cp $0e
    nop
    nop
    nop
    ld bc, $1fff
    rst $38
    ld hl, sp-$01
    ld hl, sp+$07
    ldh a, [rSVBK]
    nop
    nop
    nop
    inc bc
    cp $3e
    rra
    pop hl
    rst $38
    ld b, b
    rrca
    ret nz

    ld a, b
    nop
    nop
    nop
    ld bc, $3fff
    rlca
    ldh a, [$7f]
    cp [hl]
    rlca
    ld hl, sp+$7e
    nop
    nop
    nop
    nop
    ld a, a
    add a
    di
    db $fc
    ccf
    rst $38
    inc bc
    ld hl, sp+$0f
    ldh [rP1], a
    nop
    nop
    inc bc
    db $fc
    ld a, a
    rra
    pop hl
    rst $38
    db $fc
    rra
    ret nz

    cp $00
    nop
    nop
    nop
    ccf
    jp $fefc


    rrca
    rst $38
    ldh [$fe], a
    rrca
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    add a
    ei
    db $fc
    rra
    rst $38
    add e
    db $fc
    rra
    add b
    ldh [rP1], a
    nop
    nop
    ccf
    jp $fefc


    rra
    rst $38
    pop bc
    cp $07
    ldh [rP1], a
    nop
    nop
    nop
    rra
    pop af
    cp $7f
    add a
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $1ffe
    rst $28
    ldh a, [rIE]
    rst $38
    adc a
    ld hl, sp+$1f
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    cp $ff
    add a
    rst $38
    ld hl, sp+$1f
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc a
    pop af
    db $fc
    ld a, a
    rst $38
    pop hl
    db $fc
    rrca
    add b
    nop
    nop
    nop
    nop
    inc bc
    db $fc
    rra
    rst $28
    ld sp, hl
    rst $38
    rst $38
    rst $00
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rlca
    cp $7f
    rst $28
    rst $38
    rst $38
    cp $1f
    ldh [$08], a
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    cp $0f
    add b
    ld h, b
    inc e
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
    add b
    rlca
    ret nz

    inc e
    ld b, $81
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    pop hl
    rst $38
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
    nop
    nop
    rst $38
    add a
    xor a
    inc b
    ld a, a
    ld a, a
    ld [bc], a
    daa
    ld bc, $006e
    nop
    call nz, $0cf8
    db $e4
    adc $73
    rst $38
    ld bc, $458c
    rst $08
    rst $38
    ret nz

    inc sp
    add hl, de
    ld a, e
    rst $38
    ret nz

    db $10
    adc l
    rst $38
    rst $38
    ret nz

    db $10
    adc l
    rst $38
    rst $38
    ret nz

    ld bc, $ff19
    rst $38
    add b
    ld [bc], a
    inc hl
    rst $38
    rst $38
    nop
    nop
    daa
    rst $38
    cp $00
    nop
    ld c, a
    rst $38
    db $fc
    nop
    inc b
    ld l, a
    rst $38
    db $fc
    nop
    inc c
    ld a, a
    rst $38
    db $fc
    nop
    ld b, $7f
    rst $38
    ldh a, [rP1]
    ld b, $7f
    rst $38
    ldh a, [rP1]
    inc hl
    cp a
    rst $38
    ld hl, sp+$00
    inc hl
    ccf
    rst $38
    ld sp, hl
    nop
    ld de, $ffdf
    db $fc
    nop
    ld de, $ff9f
    db $fc
    nop
    ld [$ffcf], sp
    cp $00
    ld [$ffcf], sp
    db $fc
    ld b, b
    ld [$ffc7], sp
    rst $38
    nop
    nop
    rst $08
    rst $38
    db $fc
    ret nz

    ld [$ffcf], sp
    cp $00
    nop
    adc a

jr_035_6a4b:
    rst $38
    rst $38
    nop
    nop
    adc a
    rst $38
    cp $00
    ld de, $ff8f
    cp $00
    ld bc, $ff1d
    cp $00
    inc hl
    rra
    rst $38
    cp $00

jr_035_6a62:
    inc hl
    dec sp
    rst $38
    xor $00
    ld b, [hl]
    scf
    rst $38

jr_035_6a6a:
    db $fc
    nop
    inc b
    ld a, a
    rst $38
    db $fc
    ld bc, $cf18
    rst $38
    ld hl, sp+$00
    inc hl
    cp a
    rst $38
    ldh [rNR11], a
    adc h
    rst $38
    rst $38
    add c
    jr @-$37

    rst $38
    ld hl, sp+$63
    db $10
    cp a
    rst $38
    jr jr_035_6a4b

    inc bc
    rst $38
    db $e3
    jr jr_035_6ace

    rra
    cp $b1
    adc h
    ld hl, $e7ff
    jr c, @-$3c

    ccf
    db $fd
    di
    adc h
    ld h, e
    rst $38
    ei
    jr jr_035_6a62

    rra
    db $fc
    jr jr_035_6a6a

    db $10
    rst $38
    db $fc
    rst $20
    jr @+$05

    rrca
    cp l
    cp $00
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    pop af
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rst $20
    cp a
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    nop

jr_035_6ace:
    nop
    inc hl
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $20
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fd03
    nop
    inc bc
    rst $28
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    ld de, $c09f
    nop
    rrca
    rst $38
    cp $01
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    cp $00
    rrca
    rst $38
    nop
    nop
    nop
    rst $38
    db $fc
    nop
    ccf
    rst $38
    nop
    nop
    nop
    rst $38
    db $fc
    nop
    ccf
    cp $03
    ldh [rP1], a
    ld a, a
    db $fc
    nop
    ld a, a
    db $fc
    ld bc, $00f8
    rra
    cp $00
    ld a, a
    ld hl, sp+$03
    db $fc
    nop
    rlca
    rst $38
    nop
    rra
    db $fc
    inc bc
    cp $00
    inc bc
    rst $38
    add b
    rra
    db $fc
    inc bc
    rst $38
    nop
    nop
    ccf
    ldh [$03], a
    rst $38
    nop
    rst $38
    ret nz

    nop
    inc bc
    cp $00
    ccf
    ldh [rIF], a
    ld hl, sp+$00
    ldh [$1f], a
    ldh a, [$03]
    cp $00
    rst $38
    add b
    rra
    nop
    rst $38
    add b
    rra
    ldh a, [rIF]
    db $fc
    nop
    ldh a, [$03]
    cp $00
    rst $38
    ret nz

    ccf
    ldh [rTAC], a
    ret nz

    rrca
    ld hl, sp+$03
    rst $38
    ld bc, $00ff
    ccf
    nop
    rra
    ldh [rIF], a
    db $fc
    rlca
    db $fc
    ld bc, $00f8
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$03
    ldh [rP1], a
    ld a, a
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [$03]
    ldh [rP1], a
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rP1]
    rlca
    ld hl, sp+$07
    cp $03
    cp $01
    ld hl, sp+$00
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    nop
    nop
    rra
    ldh a, [rIF]
    ld hl, sp+$0f
    db $fc
    rlca
    ldh a, [rP1]
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ldh [$1f], a
    ret nz

    nop
    inc bc
    db $fc
    inc bc
    rst $38
    ld bc, $00ff
    cp $00
    nop
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
    ld hl, sp+$00
    nop
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$7f], a
    add b
    nop
    nop
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    ld bc, $00c0
    ccf
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [rIF], a
    nop
    nop
    ld a, a
    add b
    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh [rIF], a
    add b
    nop
    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [$1f]
    ldh a, [rTAC]
    ldh [rP1], a
    rlca
    db $fc
    rlca
    cp $03
    cp $03
    rst $38
    add b
    nop
    nop
    nop
    ccf
    ldh [$3f], a
    ld hl, sp+$0f
    ldh a, [rIF]
    cp $01
    ld hl, sp+$00
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh a, [$1f]
    ret nz

    nop
    nop
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    cp $1f
    ret nz

    ld a, b
    nop
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    inc bc
    db $fc
    ld bc, $00e0
    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh [rIF], a
    add b
    nop
    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh [$3f], a
    ldh a, [rIF]
    ldh [$3e], a
    nop
    nop
    rlca
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $00
    cp $00
    nop
    ccf
    ret nz

    ld a, a
    ret nz

    rra
    ldh [$3f], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rP1], a
    nop
    ccf
    ret nz

    ld a, a
    ret nz

    rra
    ldh [$3f], a
    ldh [$7f], a
    ldh [rIF], a
    ret nz

    nop
    nop
    rrca
    ld hl, sp+$0f
    ld hl, sp+$07
    ld hl, sp+$0f
    db $fc
    rlca
    db $fc
    ld bc, $00fc
    nop
    nop
    rst $38
    add b
    rst $38
    add b
    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    nop
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ld c, $00
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$7f], a
    ldh [rNR34], a
    nop
    nop
    nop
    nop
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$00
    ld e, $00
    nop
    nop
    inc bc
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    nop
    ld a, a
    nop
    inc c
    nop
    nop
    ccf
    ret nz

    ccf
    ldh [$3f], a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh a, [rTAC]
    ldh [rP1], a
    nop
    nop
    ld bc, $01ff
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, a
    add b
    nop
    nop
    nop
    rrca
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    cp $07
    rst $38
    ret nz

    ld h, b
    nop
    nop
    nop
    nop
    ld a, a
    ldh a, [$1f]
    ldh a, [$3f]
    ld hl, sp+$0f
    ldh a, [rIF]
    ld hl, sp+$1f
    ret z

    nop
    nop
    nop
    nop
    rst $38
    ret nz

    rst $38
    ldh [$3f], a
    ldh a, [$3f]
    ldh [$3f], a
    ldh a, [$3e]
    nop
    inc a
    nop
    nop
    nop
    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ld hl, sp+$0f
    ldh a, [rIF]
    cp $00
    ld a, b
    ld b, $00
    nop
    nop
    rra
    ldh a, [$1f]
    ld hl, sp+$1f
    cp $07
    ld hl, sp+$0f
    cp $00
    rst $38
    nop
    ld a, b
    nop
    nop
    ld bc, $03fe
    rst $38
    add c
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    pop bc
    cp $00
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $80ff
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    add c
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rlca
    ld a, a
    ld a, a
    ld [bc], a
    ld a, a
    ld bc, $026f
    rst $38
    cp $f9
    nop
    nop
    ld bc, $ffdf
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
    and b
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    inc bc
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
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $ffff
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    rra
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    rra
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    rra
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    rrca
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ab0e
    ld h, d
    ld l, d
    inc d
    ld b, b
    ld hl, sp+$1e
    dec b
    ret nz

    db $fc
    ld e, $be
    rra
    rlca
    add e
    ldh [$f0], a
    inc a
    rra
    rlca
    pop bc
    ldh [$60], a
    ld e, $7f
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    ld hl, sp+$00
    inc bc
    ld a, a
    cp $20
    rlca
    rst $38
    ldh [rP1], a
    ld b, $ff
    db $fc
    nop
    ccf
    rst $38
    add b
    nop
    ld c, $ef
    ret nz

    nop
    ld a, a
    rst $38
    nop
    nop
    dec c
    rst $28
    ret nz

    inc bc
    rst $38
    di
    add b
    nop
    ld c, $ef
    ld b, b
    rra
    rst $38
    ld bc, $00fe
    ld c, $ff
    nop
    rra
    cp $01
    rst $38
    nop
    rrca
    rst $38
    nop
    ccf
    cp $03
    cp $00
    rrca
    di
    nop
    ccf
    db $e4
    inc bc
    db $fc
    nop
    rrca
    pop af
    nop
    ld a, a
    ret nz

    rlca
    ld hl, sp+$00
    rrca
    ldh a, [rP1]
    ld a, a
    add b
    rlca
    ldh a, [rP1]
    rra
    ldh [rP1], a
    rst $38
    nop
    ld c, a
    ldh [$0c], a
    rra
    ret nz

    ld bc, $01fe
    cp a
    ret nz

    db $10
    ld a, a
    adc b
    ld b, e
    ld hl, sp+$07
    ld a, a
    add b
    ld h, b
    cp $01
    rrca
    ldh [$1f], a
    cp $01
    add a
    ld hl, sp-$7a
    ld a, a
    add b
    ld a, a
    ldh a, [rTMA]
    rra
    ret nz

    ld sp, $03fc
    rst $38
    add b
    ld bc, $21fe
    sbc a
    ldh [$1f], a
    db $fc
    nop
    rrca
    ldh [$08], a
    rst $38
    nop
    rst $38
    ldh [rP1], a
    rst $38
    nop
    ld c, a
    ldh a, [rIF]
    cp $00
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ldh [rP1], a
    rst $38
    nop
    rrca
    ldh a, [rIF]
    db $fc
    nop
    rrca
    ldh [rP1], a
    cp $00
    rst $38
    ret nz

    ld bc, $00fe
    rra
    ldh [rIF], a
    ld hl, sp+$00
    rra
    ret nz

    inc bc
    db $fc
    ld bc, $00ff
    inc bc
    ld hl, sp+$00
    ld a, a
    add b
    rra
    ldh [rP1], a
    ld a, a
    nop
    rrca
    ldh a, [$03]
    db $fc
    nop
    rrca
    ldh [rSB], a
    cp $00
    ld a, a
    ret nz

    inc bc
    db $fc
    nop
    ccf
    ret nz

    rrca
    ld hl, sp+$00
    ld a, a
    add b
    rlca
    ld hl, sp+$01
    rst $38
    nop
    rra
    ldh a, [rSB]
    rst $38
    nop
    ccf
    ldh [$03], a
    cp $80
    ccf
    ldh a, [rTAC]
    db $fc
    nop
    ld a, a
    ldh a, [rTAC]
    rst $38
    nop
    rst $38
    add b
    rra
    cp $00
    rst $38
    ldh [rIF], a
    ldh a, [$03]
    rst $38
    ret nz

    rra
    db $fc
    ld bc, $00fe
    ld a, a
    ld hl, sp+$03
    rst $38
    ret nz

    rrca
    ret nz

    rrca
    rst $38
    nop
    ld c, a
    db $fd
    ret nz

    ldh a, [$03]
    rst $38
    ldh [rSB], a
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    db $fc
    nop
    ccf
    rst $38
    nop
    nop
    rrca
    rst $38
    add b
    inc bc
    rst $38
    ldh [rP1], a
    ld bc, $f0ff
    nop
    ld a, a
    cp $00
    nop
    ccf
    cp $00
    rlca
    rst $38
    or $00
    inc bc
    rst $38
    db $e3
    nop
    ld bc, $f0ff
    nop
    inc sp
    rst $38
    db $fc
    nop
    rra
    rst $38
    add b
    inc b
    ccf
    rst $38
    ldh a, [$7f]
    ld hl, sp-$08
    nop
    nop
    nop
    inc bc
    rra
    rst $38
    rst $38
    rst $20
    pop hl
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_035_71f7

jr_035_71f7:
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
    ld de, $ffff
    rst $38
    db $fc
    nop
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
    ld [$7f7c], sp
    rst $38
    rst $38
    nop
    nop
    ccf
    nop
    nop
    rlca
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_035_730c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    ld a, [hl+]
    ld d, l
    ld [hl+], a
    ld [$5454], sp
    ld b, d
    xor d
    jr z, jr_035_7356

    xor d
    xor c
    ld d, l
    sub [hl]
    xor d
    sub [hl]
    call nc, $a8da
    sub l
    ld d, h
    xor d
    sbc d
    ld d, d
    xor c
    ld d, h
    or l
    dec h
    xor c
    ld d, l
    ld d, [hl]
    xor d
    xor c
    sub l
    dec [hl]
    and d
    xor c
    ld d, l
    ld d, l
    ld c, d
    or l
    ld d, l
    ld h, d
    xor c
    ld d, l
    dec l
    ld d, l
    ld c, c
    ld d, l
    ld e, d
    ld c, e
    ld c, l
    ld l, c
    ld d, [hl]
    xor e
    ld d, h
    xor l
    ld d, d
    sub l
    dec h
    ld l, d
    ld l, e
    ld l, l
    ld h, h

jr_035_7356:
    or l
    ld d, l
    ld d, h
    xor c
    ld l, e
    dec l
    ld l, h
    xor d
    xor d
    sub $b2
    dec l
    sub $ad
    or [hl]
    call nc, Call_035_549b
    sub l
    ld l, d
    sub [hl]
    xor c
    ld l, d
    sub d
    db $d3
    ld c, d
    sub e
    ld c, e
    ld l, c
    xor d
    and h
    or c
    ld c, d
    ld d, e
    ld [hl], d
    ld l, l
    ld b, l
    dec l
    ld d, [hl]
    ld d, c
    ld [hl-], a
    ld d, e
    dec l
    ld a, [hl+]
    ld d, d
    ld l, [hl]
    ret


    ld d, l
    xor c
    ld l, l
    inc [hl]
    sbc e
    dec h
    ld h, [hl]
    sub [hl]
    sub $49
    ld h, a
    ld [hl], l
    inc hl
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld e, d
    dec sp
    ld e, a
    cp $eb
    ld c, e
    ld de, $40a4
    sub b
    ld c, c
    dec l
    cp a
    cp a
    ld l, l
    ld l, [hl]
    sub [hl]
    ld c, d
    ld bc, $0001
    ld b, $db
    rst $38
    rst $38
    cp e
    reti


    ld b, h
    db $10
    jr nz, jr_035_73bc

    nop
    sub [hl]
    rst $30
    rst $38
    rst $38
    cp $6c
    sbc c

jr_035_73bc:
    adc b
    nop
    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    rst $28
    db $ed
    jr nz, jr_035_73cc

    nop
    nop
    nop
    ld a, a

jr_035_73cc:
    rst $38
    rst $38
    rst $38
    or a
    inc d
    ld h, h
    nop
    nop
    nop
    ld d, $ff
    rst $38
    rst $38
    db $fd
    call z, Call_000_00d9
    add b
    nop
    ld bc, $ff0f
    rst $38

Call_035_73e3:
    rst $38
    rst $38
    db $f4
    sbc c
    ld [hl+], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    or $e4
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ld l, a
    ld h, [hl]
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    jr nc, jr_035_7441

    ld a, h
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    ld l, a
    ldh [rP1], a
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    sbc a
    ldh a, [rP1]
    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    ret nz

    ld bc, $e8ff
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    ld bc, $e0ff
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rst $38
    ldh [rP1], a
    nop
    nop

jr_035_7441:
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $f8ff
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $f8ff
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $fcff
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld a, a
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
    rra
    rst $38
    db $fc
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ld hl, sp+$00
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
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    rst $38
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    ldh [rP1], a
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rra
    rst $38
    cp $00
    ld bc, $ffff
    ldh [rP1], a
    ld a, a
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$03
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    rst $28
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    rst $38
    nop
    ccf
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    ld a, a
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    rst $38
    nop
    ccf
    rst $38
    add b
    nop
    nop
    nop
    rra
    rst $38
    cp $00
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    cp $00
    rlca
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    cp $00
    ld bc, $ffff
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ccf
    rst $38
    cp $00
    rra
    rst $38
    db $fc
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
    ld a, a
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    rra
    rst $38
    db $fc
    nop
    rrca
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    rra
    rst $38
    cp $00
    inc bc
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    ccf
    rst $38
    ld hl, sp+$00
    ld a, a
    rst $38
    db $fc
    nop
    ld bc, $7e77
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_035_7967:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_035_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_035_7fee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
