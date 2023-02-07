; disasSembly of "yell.gbc"
SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

Call_033_4000:
    cpl
    ld d, $7f
    ld a, a
    ld [bc], a
    cp a
    ld bc, $006f
    pop hl
    sbc $79
    inc c
    jr c, jr_033_4072

    inc e
    jr nc, jr_033_404a

    ld [hl], c
    rst $08
    ld b, $3c
    ld [hl], b
    pop hl
    db $e3
    add h
    inc a
    jr c, @-$06

    db $e3
    add a
    stop
    ld bc, $ffc7
    rst $38
    cp $30
    nop
    nop
    ld hl, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, e
    rst $38
    rst $38
    db $fc
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
    add hl, de
    rst $38
    rst $38
    rst $38

jr_033_404a:
    nop
    nop
    nop
    rlca
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    dec b
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
    rrca
    rst $38

jr_033_4072:
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
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffff
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
    ld [bc], a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    rla
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    inc de
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld c, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld h, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $7f1e
    rst $38
    ld a, [$0000]
    inc bc
    rst $38
    cp $00
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_033_4200:
    nop
    nop
    nop
    nop
    nop
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
    ld de, $7f09
    rst $38
    rst $38
    ld hl, sp+$7e
    ld e, $07
    pop bc
    pop bc
    pop hl
    ldh a, [$f0]
    ldh a, [$e1]
    ld h, c
    or l
    ldh [$f0], a
    add c
    ldh a, [$fc]
    ld h, d
    ld [hl], d
    ccf
    adc b
    call $8001
    ld bc, $e703
    rst $38
    pop hl
    pop hl
    nop
    nop
    dec bc
    rst $38
    rst $38
    ld sp, hl
    ret nz

    nop
    ld [bc], a
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld a, a
    rst $38
    ldh [rSB], a
    jr nc, jr_033_4249

jr_033_4249:
    ld bc, $feff
    nop
    ccf
    ret nz

    nop
    rrca
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    nop
    rrca
    rst $38
    ldh [rSB], a
    cp $00
    nop
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    nop
    nop
    rst $38
    db $fc
    nop
    ld a, a
    ret nz

    ld e, $00
    ccf
    cp $00
    ccf
    ldh [rIF], a
    ret nz

    rrca
    rst $38
    add b
    rrca
    db $fc
    inc bc
    ld hl, sp+$01
    rst $38
    ldh a, [$03]
    rst $38
    nop
    cp $00
    ccf
    db $fc
    nop
    rst $38
    ret nz

    ld a, a
    add b
    rlca
    rst $38
    add b
    ccf
    ldh a, [rTAC]
    ldh a, [rP1]
    rst $38
    ldh a, [rTAC]
    cp $01
    cp $00
    rrca
    rst $38
    nop
    ld a, a
    ldh a, [$1f]
    ldh [rP1], a
    rst $38
    ret nz

    rrca
    ld hl, sp+$03
    db $fc
    nop
    rrca
    db $fc
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    ret nz

    rrca
    ldh a, [rTAC]
    db $fc
    nop
    rrca
    db $fc
    ld bc, $00ff
    rst $38
    ret nz

    nop
    ld a, a
    ret nz

    rrca
    ldh a, [rIF]
    db $fc
    nop
    inc bc
    cp $00
    ld a, a
    add b
    rst $38
    ldh [rP1], a
    rra
    ldh a, [rTAC]
    db $fc
    inc bc
    rst $38
    nop
    nop
    ld a, a
    add b
    rra
    ldh a, [$1f]
    ld hl, sp+$00
    inc bc
    cp $00
    rst $38
    add b
    rst $38
    ldh [rP1], a
    rrca
    ld hl, sp+$03
    rst $38
    inc bc
    rst $38
    add b
    nop
    ccf
    ldh [$1f], a
    db $fc
    rrca
    db $fc
    nop
    nop
    ld a, a
    add b
    ld a, a
    ldh a, [$1f]
    ldh [rP1], a
    ld bc, $00ff
    rst $38
    ldh [$7f], a
    ldh [rP1], a
    rlca
    db $fc
    inc bc
    rst $38
    add b
    rst $38
    add b
    nop
    rlca
    ld hl, sp+$0f
    rst $38
    add c
    cp $80
    nop
    rra
    ldh a, [$1f]
    cp $03
    db $fc
    nop
    nop
    ccf
    ldh [$3f], a
    db $fc
    rlca
    cp $00
    nop
    ld a, a
    ret nz

    ld a, a
    ld hl, sp+$0f
    ldh a, [rP1]
    nop
    ld a, a
    ret nz

    ld a, a
    ld hl, sp+$1f
    db $fc
    nop
    nop
    rst $38
    add b
    rst $38
    ldh a, [$1f]
    ldh a, [rP1]
    nop
    rst $38
    add b
    rst $38
    ld hl, sp+$1f
    db $fc
    nop
    nop
    rst $38
    add b
    rst $38
    ldh a, [$1f]
    ld hl, sp+$00
    nop
    rst $38
    add b
    rra
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    ld a, a
    ret nz

    rrca
    ld hl, sp+$0f
    db $fc
    nop
    nop
    rst $38
    add b
    ccf
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    ld a, a
    ret nz

    rrca
    db $fc
    rrca
    cp $00
    db $10
    ccf
    ldh [rIF], a
    db $fc
    rlca
    rst $38
    nop
    nop
    rra
    ldh [$03], a
    cp $03
    rst $38
    add b
    nop
    rrca
    ld hl, sp+$03
    rst $38
    ld bc, $c0ff
    nop
    rlca
    db $fc
    nop
    rst $38
    ret nz

    ld a, a
    ldh a, [rP1]
    ld bc, $00fe
    ccf
    ldh [$3f], a
    ld hl, sp+$00
    nop
    rst $38
    add b
    rrca
    ld hl, sp+$0f
    cp $00
    nop
    ccf
    ldh [$03], a
    cp $03
    rst $38
    ret nz

    nop
    rrca
    ld hl, sp+$00
    rst $38
    ret nz

    rst $38
    ldh a, [rP1]
    ld bc, $00ff
    rra
    ld hl, sp+$1f
    db $fc
    nop
    nop
    ld a, a
    ldh [$03], a
    rst $38
    rlca
    rst $38
    add b
    nop
    rrca
    ld hl, sp+$00
    ld a, a
    ret nz

    ccf
    ldh a, [rP1]
    inc bc
    rst $38
    nop
    rrca
    db $fc
    inc bc
    cp $00
    nop
    ld a, a
    ldh a, [rSB]
    rst $38
    ret nz

    rrca
    ldh [rP1], a
    rrca
    rst $38
    nop
    rra
    rst $38
    add b
    cp $00
    ld bc, $f0ff
    inc bc
    rst $38
    ldh [$1f], a
    ret nz

    nop
    rra
    rst $38
    add b
    rra
    rst $38
    add b
    inc a
    nop
    nop
    rst $38
    db $fc
    nop
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    ldh a, [rTAC]
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    nop
    ld a, a
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    ld hl, sp+$01
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    ret nz

    ld bc, $f0ff
    nop
    nop
    ld bc, $ffff
    rst $20
    di
    ld hl, sp+$0f
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
    rst $38
    ldh a, [rP1]
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
    nop
    inc bc
    rst $38
    rst $38
    ldh [$7e], a
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
    rrca
    add b
    nop
    ld bc, $00fc
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rlca
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
    inc bc
    sbc l
    ei
    ldh a, [rIE]
    rrca
    ei
    sbc h
    jr nz, jr_033_45c5

jr_033_45c5:
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
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
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
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $00
    nop
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
    nop
    nop
    ld e, a
    rst $38
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
    rst $38
    ld hl, sp+$00
    nop
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
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
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
    nop
    nop
    rst $18
    rst $38
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
    nop
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
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
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
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    daa
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld [$ffff], sp
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff1f
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld a, a
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
    ccf
    rst $38
    rst $38
    rst $38
    ei
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
    cp $c0
    nop
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    nop
    ld bc, $ff6f
    rst $38
    rst $38
    rst $38
    db $f4
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    add c
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    rlca
    add e
    ldh [$f8], a
    inc a
    inc a
    rra
    pop bc
    db $fc
    rrca
    add a
    add e
    pop bc
    ld hl, sp+$11
    ld hl, sp+$7c
    ld e, $0c
    rlca
    adc a
    jp Jump_000_019c


    push hl
    dec a
    ldh [$78], a
    ld a, a
    ldh [$3c], a
    ld e, $7f
    adc b
    nop
    add sp, $7e
    ld a, [hl]
    ld bc, $a0c3
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$0c
    nop
    nop
    nop
    ld bc, $ffff
    ret nz

    ccf
    rst $38
    add b
    nop
    nop
    nop
    inc bc
    rst $38
    cp $00
    ld a, a
    db $f4
    nop
    jr nz, jr_033_48e4

jr_033_48e4:
    nop
    nop
    rst $38
    rst $38
    ret nz

    ccf
    cp $00
    ld l, [hl]
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [$27]
    rst $38
    pop bc
    rst $38
    nop
    nop
    nop
    nop
    ccf
    rst $38
    add b
    cp a
    db $fd
    inc e
    ret nz

    nop
    nop
    nop
    nop
    ld a, a
    cp $0f
    rst $38
    ret nz

    rst $38
    add b
    inc b
    nop
    nop
    inc bc
    rst $38
    db $fc
    ccf
    cp $07
    ld hl, sp+$00
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    di
    ccf
    add b
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $20
    rst $38
    ld [c], a
    ld a, [hl]
    nop
    jr jr_033_493a

jr_033_493a:
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $00
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    nop
    ld c, $00
    nop
    nop
    ccf
    rst $38
    rst $30
    rst $38
    rra
    ldh a, [rP1]
    inc a
    nop
    nop
    nop
    rra
    rst $38
    ei
    rst $38
    rlca
    add b
    nop
    ccf
    add b
    inc e
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rra
    ldh a, [rTAC]
    add b
    ld bc, $ffff
    cp a
    ldh [$1f], a
    ldh a, [rSB]
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    jp $00fe


    rst $38
    nop
    ccf
    ldh [$1f], a
    nop
    inc bc
    rst $38
    cp $1f
    ldh [$3f], a
    ldh a, [$03]
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    ld hl, sp+$7f
    rlca
    rst $38
    add b
    ccf
    ldh [rP1], a
    nop
    nop
    ld a, a
    adc a
    rst $38
    ld hl, sp+$7f
    cp $01
    rst $38
    nop
    nop
    nop
    ld bc, $fffe
    ccf
    db $e3
    rst $38
    ld hl, sp+$07
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    db $fc
    rst $38
    rrca
    rst $38
    add b
    ccf
    ldh [rP1], a
    nop
    nop
    rra
    rst $28
    ld sp, hl
    db $fc
    ccf
    rst $38
    nop
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    sbc a
    rst $38
    ld hl, sp-$01
    ldh a, [rSB]
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    ld a, a
    db $e3
    rst $38
    ldh [$03], a
    ld hl, sp+$00
    nop
    nop
    rlca
    ld sp, hl
    rst $38
    cp a
    rst $00
    db $fc
    nop
    rrca
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    ei
    cp $3f
    cp $00
    ld a, a
    nop
    nop
    nop
    nop
    ld a, a
    cp a
    rst $00
    ld hl, sp-$01
    db $fc
    nop
    cp $00
    inc e
    nop
    inc bc
    db $fc
    ld a, a
    sbc a
    rst $00
    rst $38
    ld hl, sp+$07
    ldh [rP1], a
    nop
    nop
    rlca
    ld sp, hl
    cp $7f
    rst $38
    rst $38
    ldh [rTAC], a
    db $fc
    nop
    nop
    nop
    rra
    rst $00
    db $fd
    cp $3f
    cp $00
    rrca
    add b
    nop
    nop
    nop
    ccf
    adc a
    rst $38
    rst $30
    rst $38
    cp a
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    adc a
    rst $38
    db $dd
    rst $38
    nop
    inc bc
    ld hl, sp+$00
    nop
    nop
    ld bc, $7ffe
    rst $38
    rst $38
    rst $38
    ldh [rTAC], a
    ld hl, sp+$00
    nop
    nop
    inc bc
    db $fc
    ld a, a
    rst $38
    rst $28
    rst $38
    ld h, b
    inc bc
    ld hl, sp+$00
    nop
    nop
    rlca
    db $fd
    rst $38
    rst $30
    rst $28
    cp $00
    dec b
    db $fc
    nop
    nop
    nop
    rrca
    ld hl, sp+$3f
    rst $38
    rrca
    cp $00
    ccf
    ret nz

    nop
    nop
    nop
    rlca
    db $fd
    rst $38
    rst $38
    rst $18
    rst $38
    nop
    rra
    add b
    jr c, jr_033_4a81

jr_033_4a81:
    nop
    rrca
    ld sp, hl
    rst $38
    rst $38
    rst $08
    rst $38
    nop
    ccf
    add b
    ret nz

    nop
    nop
    rrca
    ld sp, hl
    rst $38
    db $fc
    rst $38
    rst $38
    add b
    ccf
    add b
    ld hl, sp+$00
    nop
    rlca
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rra
    ret nz

    nop
    nop
    nop
    rlca
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rra
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rra
    ret nz

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
    ccf
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
    rlca
    jr nz, jr_033_4ad3

jr_033_4ad3:
    nop
    nop
    nop
    nop
    rst $38
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    jr jr_033_4aec

jr_033_4aec:
    nop
    nop
    nop
    rrca
    ei
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
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    db $fc
    cp $00
    nop
    nop
    nop
    nop
    inc bc
    nop
    ccf
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
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_4e6c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_4e77:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_4e89:
    nop
    nop
    nop
    nop
    nop
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
    rst $00
    dec e
    adc a
    adc a
    rra
    rra
    ld a, $7c
    cp $79
    push bc
    pop de
    rst $38
    sbc $de
    jr nc, jr_033_4e6c

    adc $73
    add $03
    adc a
    inc c
    db $76
    jr c, jr_033_4f23

Call_033_4eb2:
    add h
    ld h, e
    adc [hl]
    jr nc, jr_033_4e77

    ld [hl], c
    rst $00
    jr nz, jr_033_4efb

    jp nz, $9e33

    inc a
    ld h, b
    ld b, e
    adc a
    sbc h
    ld [hl], d
    jr nc, jr_033_4e89

    rst $08
    rst $20
    cp c
    rst $28
    rst $38
    sbc [hl]
    jr nc, jr_033_4f0e

    nop
    inc bc
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
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
    ldh a, [rP1]
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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop

jr_033_4efb:
    nop
    dec e
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a

jr_033_4f0e:
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
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    add b

jr_033_4f23:
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
    add b
    nop
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
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    inc b
    ld [hl+], a
    ld e, $7f
    rst $38
    rst $38
    call z, RST_00
    nop
    jr nc, jr_033_4f8d

    ld [hl], c
    di
    adc $5f
    ld c, b
    nop
    nop
    nop
    ld b, c
    ld a, e
    rst $38
    rst $38
    rst $28
    rst $20
    jp RST_00


    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

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
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_4f8d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    nop
    ccf
    jp c, $0f14

    adc a
    add c
    ldh [$7f], a
    ldh [$7e], a
    ld a, $0f
    ret nz

    ldh a, [$3e]
    ccf
    call nc, $0ffa
    inc hl
    cp $90
    dec bc
    or $c0
    ld bc, $faff
    rra
    rst $08
    add b
    cp h
    rlca
    nop
    nop
    nop
    inc b
    scf
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
    add b
    nop
    nop
    nop
    ld bc, $feff
    inc bc
    rst $38
    db $fc
    ccf
    nop
    nop
    nop
    ld bc, $feff
    ld bc, $f0ff
    rra
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    ld bc, $f8ff
    rra
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    inc bc
    rst $38
    ldh a, [$7f]
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    add b
    rst $38
    ldh a, [$7f]
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    add b
    ld a, a
    ld hl, sp+$1f
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    ret nz

    rst $38
    cp $3f
    ld hl, sp+$00
    ld [hl], b
    nop
    rrca
    rst $38
    add b
    ld a, a
    ld hl, sp+$1f
    db $fc
    nop
    ld a, b
    nop
    rlca
    rst $38
    add b
    ld a, a
    ld hl, sp+$1f
    cp $00
    ld hl, sp+$00
    rlca
    rst $38
    ret nz

    ccf
    db $fc
    rrca
    cp $00
    nop
    nop
    inc bc
    rst $38
    ret nz

    ccf
    ld hl, sp+$0f
    rst $38
    nop
    inc a
    nop
    inc bc
    rst $38
    ret nz

    ccf
    db $fc
    rrca
    rst $38
    nop
    ld a, h
    nop
    inc bc
    rst $38
    ret nz

    ld a, a
    ld hl, sp+$0f
    cp $01
    db $fc
    nop
    inc bc
    rst $38
    ret nz

    ld a, a
    ld hl, sp+$0f
    rst $38
    nop
    ld a, [hl]
    nop
    rlca
    rst $38
    ret nz

    ld a, a
    ld hl, sp+$0f
    cp $00
    jr nc, jr_033_51ac

jr_033_51ac:
    inc bc
    rst $38
    ldh [$3f], a
    ld hl, sp+$0f
    cp $00
    inc a
    nop
    rlca
    rst $38
    ret nz

    ld a, a
    ld hl, sp+$1f
    cp $00
    inc e
    nop
    rlca
    rst $38
    ret nz

    ccf
    ld hl, sp+$0f
    cp $00
    jr jr_033_51ca

jr_033_51ca:
    rrca
    rst $38
    add b
    rst $38
    ldh a, [$1f]
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    add b
    rra
    ldh a, [rTAC]
    db $fc
    nop
    nop
    nop
    ccf
    rst $38
    ld bc, $f23f
    rlca
    ld hl, sp+$00
    nop
    nop
    ld a, a
    cp $00
    ld a, a
    db $fc
    rra
    ldh a, [rP1]
    nop
    nop
    rst $38
    db $fc
    nop
    ld a, a
    ld hl, sp+$1f
    db $fc
    nop
    nop
    ld bc, $feff
    nop
    rst $38
    ld hl, sp+$19
    jr nc, jr_033_5204

jr_033_5204:
    nop
    inc bc
    rst $38
    cp $01
    rst $38
    db $fc
    nop
    jr nz, jr_033_520e

jr_033_520e:
    nop
    rrca
    rst $38
    db $fc
    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    db $fc
    ld bc, $ffff
    nop
    nop
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    ld a, a
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    ccf
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    ld a, a
    rst $38
    sub b
    nop
    nop
    nop
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc [hl]
    nop
    nop
    nop
    db $10
    dec e
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    and b
    nop
    nop
    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$0000]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $d4
    or [hl]
    and h
    and l
    dec h
    add d
    or l
    dec hl
    dec hl
    ld e, c
    ld d, l
    sub h
    xor l

jr_033_53d0:
    or l
    ld d, d
    db $d3
    ld d, l
    add hl, hl
    dec h
    sub [hl]
    xor l
    dec l
    xor e
    ld c, c
    inc d
    rst $10
    dec l
    dec h
    ld h, d
    sub [hl]
    ld d, l
    jp z, Jump_033_6c49

    and l
    or h
    and e
    ld a, [de]
    push de
    sbc c
    ld l, c
    ld d, l
    and h
    sub d
    res 6, c
    xor c
    dec l
    ld [hl-], a
    pop de
    inc l
    sub e
    ld l, l
    add hl, hl
    ld [hl], $bb
    dec l
    ld c, d
    ld l, d
    db $db
    ld l, d
    sub [hl]
    bit 1, h
    and h
    sub d
    adc h
    call nc, Call_033_4eb2
    sub [hl]
    ld d, e
    inc h
    or [hl]
    or l
    ld l, $34
    and d
    ld h, l
    dec h
    xor c
    sbc c
    dec l
    or e
    xor d
    ld l, l
    ld e, d
    and [hl]
    or d
    sub $6a
    ld l, h
    reti


    xor b
    jp nc, $c96c

    ld d, b
    reti


    ld h, $b2
    ld [hl], e
    ld l, c
    ld [hl+], a
    ld e, c
    ld h, a
    ld l, d
    jp c, $a975

    ld h, e
    ld d, d
    sub e
    or [hl]
    adc e
    ld e, c
    add hl, de
    ld d, l
    sub d
    add hl, hl
    ld c, d
    ld [hl], e
    ld a, [hl+]
    rst $28
    xor h
    or $7e
    call c, Call_000_25b2
    ld l, b
    sbc b
    add c
    ret


    ld d, a
    rst $18
    db $fd
    ei
    inc [hl]
    jr nz, jr_033_53d0

    ld b, b
    ld bc, $ffcf
    rst $38
    rst $38
    sbc $c2
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
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
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld h, $00
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    inc bc
    ret c

    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
    ldh [rP1], a
    ld bc, $ff7f
    rst $38
    add b
    nop
    inc bc
    db $fc
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, [hl]
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rrca
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
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    jr nz, jr_033_54e9

jr_033_54e9:
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, h
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    rrca
    add b
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, [hl]
    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    inc bc
    ret nz

    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    jr c, jr_033_5526

jr_033_5526:
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    stop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    inc e
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    ld [hl], b
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    ld b, b
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    sbc a
    rst $38
    cp $00
    nop
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    ccf
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
    ld a, a
    rst $38
    cp $00
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    ldh a, [rP1]
    ld bc, $ffff
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $38
    ld h, b
    nop
    rra
    rst $38
    ld hl, sp+$40
    nop
    ld a, a
    rst $38
    add b
    nop
    inc bc
    rst $38
    cp $00
    nop
    rra
    rst $38
    ei
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    rra
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    add b
    nop
    rst $38
    cp $00
    inc bc
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    ret nz

    nop
    ld a, a
    rst $38
    nop
    rlca
    rst $38
    ldh [rP1], a
    ld a, a
    cp $00
    rrca
    rst $38
    ldh [rP1], a
    ld a, a
    cp $00
    rra
    rst $38
    nop
    ld bc, $f8ff
    nop
    ld a, a
    db $fc
    nop
    rrca
    rst $38
    ldh [rP1], a
    rst $38
    add b
    inc h
    rst $38
    ld b, $27
    inc e
    ld a, a
    ld a, a
    ld [bc], a
    rst $30
    ld bc, $016f
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    ld b, $00
    nop
    rst $38
    rst $38
    rst $38
    jp hl


    nop
    nop
    dec hl
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
    ld bc, $ffff
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    db $fc
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld [$1f2a], sp
    rst $38
    rst $38
    rst $38
    add [hl]
    nop
    nop
    nop
    ld bc, $10ff
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    stop
    nop
    ld bc, $feff
    ld b, b
    nop
    dec b
    rst $38
    rst $38
    rst $38
    cp h

jr_033_5693:
    nop
    nop
    nop
    ld e, a
    rst $38
    db $fc
    nop
    nop
    ld bc, $ffff
    rst $38
    cp a
    add b
    nop
    nop
    dec sp
    rst $38
    db $fc
    ld b, b
    nop
    nop
    inc sp
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    ld a, [c]
    nop
    nop
    ld c, h
    rst $28
    ei
    ld de, $ff1d
    rst $38
    ei
    nop
    nop
    inc c
    adc $01
    ld c, $67
    ld a, c
    ld hl, sp+$10
    nop
    nop
    rst $18
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ff1f
    call nz, Call_033_4200
    ld [hl], e
    rst $38
    adc l
    ld [$0e00], sp
    and $f7
    rst $38
    cp h
    db $10
    ld [$7b73], sp
    rst $38
    call z, VBlankInterrupt
    ld de, $f3ff
    ret nz

    ld b, b
    nop
    ld sp, $f7e7
    cp h
    nop
    inc b
    inc d
    rst $38
    rst $38
    cp $60
    nop
    ld b, $39
    cp l
    jp hl


    adc h
    nop
    inc e
    db $ed
    rst $28
    call $0120
    inc bc
    rra
    ccf
    ld h, [hl]
    ld h, h
    nop
    ld bc, $ffc6
    ld a, [hl]
    jr nc, jr_033_5693

    nop
    call c, $ffe7
    xor $00
    ld b, b
    ld sp, $f7b3
    rst $20
    jr nz, @+$04

    inc sp
    ld a, $7e
    db $ed
    call z, RST_00
    db $e3
    ei
    rst $30
    db $fd
    call z, Call_000_1303
    dec sp
    ei
    rst $38
    ld [hl], d
    nop
    ld b, h
    ld [hl], e
    rst $38
    rst $38
    db $fc
    add b
    jr nz, jr_033_5747

    ld e, [hl]
    rst $28
    rst $38
    add $08
    add b
    ld b, c
    sbc l
    rst $38
    di
    adc b
    add b

jr_033_5747:
    inc bc
    add hl, de
    rst $38
    ei
    or $20
    nop
    ld b, [hl]
    inc sp
    rst $38
    rst $38
    sbc b
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc de
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $ff9f
    rst $38
    ld [c], a
    nop
    nop
    inc c
    cp a
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc hl
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc c
    rst $28
    rst $38
    rst $38
    ld h, c
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    db $e4
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    add sp, $00
    ld bc, $ffff
    db $fc
    nop
    nop
    rla
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    or $00
    nop
    ld e, a
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    ld [bc], a
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    add hl, bc
    rst $38
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    add b
    ld bc, $ff3f
    cp $00
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    cp $00
    ld [bc], a
    ld a, a
    rst $38
    ld hl, sp+$00
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
    ld a, a
    rst $38
    ld a, [c]
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    ld h, b
    nop
    rrca
    rst $38
    db $fc
    add b
    nop
    rst $28
    rst $38
    or $00
    ld bc, $ffff
    jr jr_033_584c

jr_033_584c:
    inc bc
    rst $38
    rst $38
    stop
    rrca
    rst $38
    cp $00
    nop
    scf
    rst $38
    db $fc
    nop
    nop
    sbc a
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    ret c

    nop
    nop
    ld a, a
    rst $38
    ret nz

    nop
    inc b
    rst $38
    rst $38
    add b
    nop
    nop
    rst $18
    rst $38
    ld h, b
    nop
    dec bc
    ld a, a
    cp $e0
    nop
    rlca
    ld a, a
    db $fc
    ret nz

    nop
    ld b, $7f
    rst $38
    ret z

    add b
    inc bc
    ld c, $fb
    di
    add b
    ld [$df38], sp
    rst $28
    adc b
    add hl, de
    ld sp, $f733
    rst $38
    reti


    stop
    rlca
    ccf
    rst $38
    db $ed
    nop
    nop
    inc bc
    sbc a
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    rlca
    ld a, a
    rst $38
    ei
    nop
    nop
    inc b
    ld a, $ff
    ei
    add d
    nop
    nop
    ld c, a
    rst $38
    ei
    ld h, b
    nop
    ld [$ff3b], sp
    ld a, [$0000]
    nop
    ld h, a
    rst $38
    sbc c
    stop
    add hl, bc
    rst $38
    rst $38
    ld [hl], h
    nop
    nop
    rrca
    rst $38
    cp $00
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    inc bc
    ld a, a
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ldh [rP1], a
    ld bc, $feff
    nop
    nop
    rra
    rst $38
    ldh a, [rP1]
    ld bc, $feff
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    rra
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ld hl, sp+$00
    ld bc, $feff
    nop
    nop
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rra
    rst $38
    ldh [rP1], a
    rra
    rst $38
    ldh a, [rSB]
    rlca
    rst $38
    ld hl, sp+$00
    ld bc, $feff
    nop
    ld bc, $feff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    ret nz

    nop
    rra
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    db $fc
    nop
    ld bc, $feff
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    ccf
    rst $38
    ldh [rP1], a
    rra
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    db $fc
    nop
    ld bc, $feff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    ret nz

    nop
    rrca
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ld hl, sp+$00
    ld bc, $feff
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    rra
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ld hl, sp+$00
    ld bc, $feff
    nop
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rra
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
    rst $38
    ret nz

    nop
    rrca
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    db $fc
    nop
    ld bc, $ffff
    nop
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rrca
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    db $fc
    nop
    ld bc, $ffff
    nop
    nop
    ccf
    rst $38
    ret nz

    nop
    rrca
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
    rst $38
    ret nz

    nop
    rra
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    rra
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ld hl, sp+$00
    ld bc, $fcff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    ccf
    rst $38
    ret nz

    nop
    rra
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ld hl, sp+$00
    ld bc, $fcff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ret nz

    nop
    ccf
    rst $38
    ldh [rP1], a
    rra
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    db $fc
    nop
    ld bc, $feff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    ccf
    rst $38
    ret nz

    nop
    rra
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    db $fc
    nop
    ld bc, $feff
    nop
    nop
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    ccf
    rst $38
    add b
    nop
    ccf
    rst $38
    ret nz

    nop
    rra
    rst $38
    ret nz

    nop
    rrca
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    db $fc
    nop
    ld bc, $feff
    nop
    nop
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    ccf
    rst $38
    ret nz

    nop
    rra
    rst $38
    ret nz

    nop
    rlca
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    ld a, [$0000]
    ccf
    rst $38
    nop
    nop
    rra
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    ret nz

    nop
    nop
    rst $38
    cp $00
    nop
    dec de
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ret nz

    nop
    ld bc, $ffff
    add b
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rra
    ld hl, sp+$00
    dec de
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    ld h, b
    nop
    add e
    ld b, b
    nop
    dec c
    rst $38
    cp $c0
    nop
    ld b, $ff
    db $fd
    db $10
    inc bc
    rst $38
    db $fd
    nop
    nop
    rra
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
    inc bc
    rst $38
    rst $38
    jp nc, RST_00

    ld bc, $ffff
    db $ec
    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    cp $00
    nop
    ld bc, $feff
    nop
    nop
    inc bc
    rst $38
    cp $00
    nop
    rlca
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    add b
    nop
    rlca
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    ret nz

    nop
    rrca
    rst $38
    ldh a, [rP1]
    ld bc, $fcff
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    rra
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    db $fc
    nop
    ld bc, $ffff
    add b
    nop
    ccf
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    db $fc
    nop
    ld bc, $ffff
    add b
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    add b
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rlca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    add b
    nop
    rlca
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ret nz

    nop
    nop
    rst $38
    cp $00
    nop
    ld bc, $fcff
    nop
    nop
    inc bc
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    ld hl, sp+$07
    or b
    nop
    jr nc, jr_033_5ca0

jr_033_5ca0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_5db2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld h, [hl]
    ld c, a
    cp h
    jr c, jr_033_5db2

    ld hl, sp+$74
    ld h, b
    nop
    ld a, $3f
    rst $38
    ccf
    ld [bc], a
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fd
    ret nc

    nop
    ld bc, $ff1f
    rst $38
    cp $60
    nop
    rrca
    rst $38
    ei
    cp $c0
    nop
    rrca
    rst $38
    ldh a, [$0c]
    nop
    rlca
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld bc, $f8ff
    nop
    nop
    rrca
    rst $38
    add b
    nop
    nop
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    ret nz

    nop
    nop
    ccf
    cp $00
    jr jr_033_5e28

jr_033_5e28:
    rst $38
    ld hl, sp+$00
    ldh [rTAC], a
    rst $38
    ret nz

    inc bc
    nop
    rra
    rst $38
    nop
    inc c
    nop
    ccf
    db $fc
    ld bc, $0190
    rst $38
    ldh [rIF], a
    ret nz

    inc bc
    rst $38
    ret nz

    ld e, $00
    rlca
    rst $38
    nop
    ld a, b
    nop
    rrca
    rst $38
    nop
    ldh a, [rP1]
    adc a
    rst $38
    ld bc, $00f0
    rrca
    rst $38
    add b
    ld hl, sp+$04
    rlca
    rst $38
    add b
    ld hl, sp+$02
    ld h, b
    rst $38
    ldh [$78], a
    nop
    inc c
    rst $18
    cp $03
    ret nc

    inc l
    rlca
    cp $01
    or b
    inc c
    sub e
    ld [hl], a
    ldh [$3e], a
    inc b
    sub e
    and b
    rra
    ret nz

    ld h, a
    add b
    ld bc, $feeb
    rlca
    add sp, $3c
    rrca
    pop bc
    rst $38
    rlca
    ldh a, [$f0]
    rlca
    add b
    rra
    rst $38
    ld l, [hl]
    jr c, jr_033_5e8c

    pop hl

jr_033_5e8c:
    ld c, d
    rst $38
    jp Jump_000_01f0


    ldh a, [rNR23]
    ld a, a
    db $fd
    rst $38
    daa
    ret nz

    db $10
    rlca
    pop bc
    rst $38
    rst $38
    rst $18
    adc c
    add b
    jr nz, @+$2a

    cp a
    db $ed
    cp $00
    ld [bc], a
    nop
    dec a
    ccf
    ret nz

    rst $38
    rst $30
    db $fc
    db $10
    ld [$ff00], sp
    db $ec
    rst $38
    rst $20
    ldh a, [rIF]
    add b
    jr c, jr_033_5ec5

    ldh [$7f], a
    rst $38
    rrca
    add b
    nop
    nop
    cpl
    jp $ffff


jr_033_5ec5:
    ld hl, sp+$70
    jr nz, jr_033_5ed0

    ldh a, [rIF]
    ldh a, [$7f]
    ret nz

    sbc a
    add b

jr_033_5ed0:
    jr c, jr_033_5ed2

jr_033_5ed2:
    ld a, a
    adc e
    rst $38
    pop af
    cp [hl]
    nop
    nop
    ldh a, [$7f]
    rst $18
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ldh a, [$3f]
    rst $38
    sbc a
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    pop bc
    db $fc
    nop
    nop
    ldh [$7f], a
    cp a
    rst $38
    rrca
    ret nz

    nop
    nop
    ld a, a
    pop hl
    rst $38
    rrca
    ret nz

    nop
    nop
    ld a, a
    sbc a
    rst $38
    or $00
    nop
    rlca
    cp $1f
    rst $38
    ld [c], a
    nop
    nop
    ld a, a
    ld sp, hl
    ccf
    cp $00
    nop
    rrca
    rst $38
    cp $7f
    ldh [rP1], a
    inc bc
    rst $38
    ld sp, hl
    ld a, a
    ldh [rP1], a
    rlca
    rst $38
    ret nz

    ld a, a
    ldh [rP1], a
    rrca
    rst $38
    ret nz

    rst $38
    add b
    nop
    ccf
    db $fc
    inc bc
    db $fc
    nop
    ld bc, $c0ff
    ld a, a
    ret nz

    nop
    rra
    db $fc
    inc bc
    db $fc
    nop
    inc bc
    rst $38
    nop
    rst $38
    add b
    nop
    ld a, a
    ldh [$1f], a
    ldh a, [rP1]
    rra
    ld hl, sp+$07
    db $fc
    nop
    inc bc
    cp $00
    rst $38
    nop
    ld bc, $00ff
    ld a, a
    ret nz

    nop
    ld a, a
    ret nz

    ccf
    ldh [rP1], a
    ccf
    ldh [$1f], a
    ldh a, [rP1]
    rra
    ldh a, [rTAC]
    db $fc
    nop
    rra
    ldh a, [rTAC]
    db $fc
    ld bc, $f807
    inc bc
    db $fc
    nop
    rrca
    db $fc
    inc bc
    cp $00
    inc bc
    cp $00
    rst $38
    add b
    inc bc
    cp $00
    rst $38
    nop
    nop
    ld a, a
    ret nz

    rra
    ldh [rP1], a
    ld a, a
    ret nz

    ccf
    ldh [rP1], a
    ccf
    ldh [rIF], a
    ld hl, sp+$00
    rra
    ldh a, [rTAC]
    db $fc
    nop
    rra
    ldh a, [rTAC]
    db $fc
    nop
    inc bc
    cp $00
    rst $38
    add b
    ld bc, $00fe
    rst $38
    nop
    nop
    rst $38
    nop
    ld a, a
    ret nz

    nop
    ccf
    ret nz

    rrca
    ldh [rP1], a
    rra
    ldh [rIF], a
    ldh a, [rP1]
    rrca
    ldh a, [$0b]
    db $fc
    nop
    rlca
    ld hl, sp+$01
    cp $00
    ld bc, $00fe
    ccf
    add b
    nop
    rst $38
    nop
    rst $38
    ret nz

    nop
    ccf
    ldh [rTAC], a
    ldh a, [rP1]
    rrca
    ldh a, [rIF]
    db $fc
    nop
    inc bc
    ld hl, sp+$03
    cp $00
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    ccf
    ret nz

    ccf
    ldh [rP1], a
    rra
    ldh [$1f], a
    ld hl, sp+$00
    rlca
    ld hl, sp+$07
    cp $00
    ld bc, $01fe
    rst $38
    add b
    nop
    ccf
    add b
    rst $38
    ldh [rP1], a
    rra
    ldh [$1f], a
    ld hl, sp+$00
    inc bc
    db $fc
    rlca
    cp $00
    nop
    rst $38
    ld bc, $80ff
    nop
    ccf
    ret nz

    ld a, a
    ldh [rP1], a
    rlca
    ldh a, [$1f]
    db $fc
    nop
    inc bc
    db $fc
    inc bc
    cp $00
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    nop
    rra
    ldh [$3f], a
    ldh a, [rP1]
    rlca
    ld hl, sp+$07
    db $fc
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    ccf
    ret nz

    ccf
    ldh [rP1], a
    rrca
    ldh a, [$1f]
    db $fc
    nop
    ld bc, $01fe
    rst $38
    nop
    nop
    ld a, a
    add b
    rst $38
    ret nz

    nop
    rra
    ldh [rIF], a
    ld hl, sp+$00
    rlca
    ld hl, sp+$03
    cp $00
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    ccf
    ret nz

    ccf
    ldh [rP1], a
    rrca
    ldh a, [rIF]
    ld hl, sp+$00
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    nop
    rst $38
    nop
    ld a, a
    ret nz

    nop
    ccf
    ret nz

    rra
    ldh a, [rP1]
    rlca
    ld hl, sp+$07
    db $fc
    nop
    ld bc, $01fe
    rst $38
    add b
    nop
    ld a, a
    add b
    ld a, a
    ldh [rP1], a
    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rlca
    ld hl, sp+$03
    cp $00
    ld bc, $00ff
    ld a, a
    ret nz

    nop
    ld a, a
    ret nz

    rra
    ldh a, [rP1]
    rra
    ldh a, [rTAC]
    db $fc
    nop
    inc bc
    db $fc
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    ccf
    ldh [rP1], a
    ccf
    ldh [rIF], a
    ld hl, sp+$00
    rlca
    ld hl, sp+$01
    rst $38
    nop
    ld bc, $00fe
    ld a, a
    ret nz

    nop
    ccf
    ret nz

    rrca
    ldh a, [rP1]
    rrca
    ldh a, [$03]
    cp $00
    inc bc
    cp $00
    ld a, a
    add b
    nop
    ld a, a
    add b
    rra
    ldh a, [rP1]
    rra
    ldh a, [$03]
    db $fc
    nop
    rlca
    db $fc
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    rra
    ldh [rP1], a
    rra
    ldh [$03], a
    db $fc
    nop
    rlca
    db $fc
    nop
    rst $38
    add b
    ld bc, $00ff
    rra
    ldh [rP1], a
    ccf
    ldh [$03], a
    db $fc
    nop
    rlca
    db $fc
    nop
    rst $38
    add b
    nop
    rst $38
    add b
    rra
    ldh [rP1], a
    ccf
    ldh [$03], a
    db $fc
    nop
    rlca
    db $fc
    nop
    ld a, a
    add b
    nop
    rst $38
    add b
    rrca
    ldh a, [rP1]
    rra
    ldh a, [$03]
    cp $00
    inc bc
    cp $00
    ccf
    ret nz

    nop
    ld a, a
    ret nz

    rlca
    db $fc
    nop
    rrca
    ld hl, sp+$00
    rst $38
    add b
    ld bc, $00ff
    rra
    ldh a, [rP1]
    ccf
    ldh [$03], a
    cp $00
    rlca
    cp $00
    ld a, a
    ret nz

    nop
    rst $38
    ret nz

    rlca
    db $fc
    nop
    rra
    db $fc
    nop
    rst $38
    add b
    inc bc
    rst $38
    add b
    rra
    ldh a, [rP1]
    ld a, a
    ldh a, [$03]
    rst $38
    nop
    rrca
    cp $00
    ld a, a
    ldh [rSB], a
    rst $38
    ret nz

    rrca
    db $fc
    nop
    ccf
    ld hl, sp+$01
    rst $38
    add b
    rrca
    rst $38
    nop
    ccf
    ldh a, [rSB]
    rst $38
    ldh [rTAC], a
    cp $00
    ld a, a
    ld hl, sp+$00
    rst $38
    add b
    rrca
    rst $38
    nop
    ccf
    ldh a, [$03]
    rst $38
    ret nz

    rlca
    db $fc
    nop
    ld a, a
    ld hl, sp+$01
    rst $38
    add b
    rra
    cp $00
    ccf
    ldh [rTAC], a
    rst $38
    ret nz

    rrca
    db $fc
    nop
    rst $38
    ldh a, [rSB]
    rst $38
    nop
    ccf
    cp $00
    ccf
    ldh [rTAC], a
    rst $38
    ret nz

    rlca
    ld hl, sp+$01
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    ccf
    cp $00
    rra
    ret nz

    rrca
    rst $38
    ret nz

    rlca
    ld hl, sp+$01
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    ld a, a
    cp $00
    rrca
    ret nz

    rrca
    rst $38
    ret nz

    ld bc, $03f8
    rst $38
    ld hl, sp+$00
    ccf
    nop
    ld a, a
    rst $38
    nop
    rlca
    ldh [rIF], a
    rst $38
    ldh [rP1], a
    db $fc
    ld bc, $fcff
    nop
    rra
    nop
    ccf
    rst $38
    add b
    ld bc, $07e0
    rst $38
    ldh a, [rP1]
    jr c, jr_033_61c9

jr_033_61c9:
    rst $38
    rst $38
    nop
    ld b, $00
    rra
    rst $38
    ldh [rP1], a
    ret nz

    ld bc, $feff
    nop
    ld a, h
    nop
    rra
    rst $38
    ldh [$1f], a
    ldh a, [rP1]
    cp $0f
    adc a
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $00
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
    nop
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
    ldh [rP1], a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $ff
    rst $38
    db $fd
    push de
    nop
    nop
    rla
    rst $38
    rst $38
    db $fc
    nop
    rlca
    ei
    nop
    nop
    nop
    ld [hl], a
    rst $38
    rst $38
    ld a, [$0000]
    rlca
    rst $30
    ld h, b
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $feff
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [$03], a
    ldh [rSB], a
    ld d, d
    add [hl]
    sbc a
    ldh [rIE], a
    cp $64
    add b
    nop
    rra
    ld a, [$0d0a]
    ld bc, $ffff
    rst $38
    nop
    cp a
    ret nz

    nop
    add b
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    inc b
    nop
    nop
    ld bc, $ff8f
    rst $38
    cp $00
    ld a, [de]
    dec b
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    nop
    call z, $00b8
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    rlca
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    cp $0c
    add a
    add b
    nop
    ld a, a
    ret nz

    nop
    inc bc
    rst $38
    rst $38

jr_033_6374:
    rst $38
    db $fc
    nop
    nop
    nop
    jr nz, jr_033_6374

    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    jr nc, jr_033_6386

jr_033_6386:
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
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
    nop
    ld a, b
    nop
    jr nc, jr_033_640c

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    cp $00
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    cp $00
    nop
    rlca

jr_033_640c:
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    add b
    nop
    rrca
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
    ldh a, [rP1]
    ld bc, $ffff
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ld bc, $ffff
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    rrca
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
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffbf
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ld b, $ff
    rst $38
    ret nz

    nop
    ld c, $ff
    rst $38
    add b
    nop
    dec c
    rst $38
    rst $38
    add b
    nop
    dec e
    rst $38
    rst $38
    nop
    nop
    dec sp
    rst $38
    cp $00
    nop
    inc sp
    rst $38
    cp $00
    nop
    ld [hl], a
    rst $38
    db $fc
    nop
    nop
    rst $20
    rst $38
    db $fc
    nop
    nop
    rst $28
    rst $38
    ld hl, sp+$00
    ld bc, $ffef
    ldh a, [rP1]
    ld bc, $ffdf
    ldh a, [rSB]
    ld bc, $ffdf
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ldh [rSC], a
    inc bc
    cp a
    rst $38
    ret nz

    nop
    rlca
    ld a, a
    rst $38
    ret nz

    nop
    rrca
    ld a, a
    rst $38
    add b
    nop
    ld c, $ff
    rst $38
    add b
    nop
    rra
    rst $38
    rst $38
    nop
    db $10
    dec e
    rst $38
    cp $00
    jr nz, jr_033_6576

    rst $38
    cp $00
    jr nz, jr_033_65bf

    rst $38
    call c, Call_033_4000
    rst $30
    rst $38
    ld hl, sp+$08
    add b
    rst $28
    rst $38
    cp b
    nop
    add c
    rst $38
    rst $38
    ld [hl], b
    ld bc, $ff03
    cp $e0
    ld [bc], a
    rlca
    rst $38
    db $fc
    ret nz

    inc b
    rrca
    rst $38
    ld sp, hl
    add b
    adc b
    rra
    rst $38
    di
    ld bc, $3f10
    rst $38
    and $02
    jr nz, @+$81

    rst $38
    call z, $0400
    rst $38
    rst $38
    sub b
    nop
    add hl, bc
    rst $38

jr_033_6576:
    rst $38
    jr nz, jr_033_6599

    inc de
    rst $38
    cp $00
    ld b, b
    daa
    rst $38
    db $fc
    nop
    nop
    sbc a
    rst $38
    ldh a, [rP1]
    ld bc, $ff3f
    ldh [rP1], a
    inc b
    rst $38
    rst $38
    ret nz

    nop
    inc de
    rst $38
    rst $38
    nop
    nop
    ld c, a
    rst $38
    db $fc

jr_033_6599:
    nop
    nop
    sbc a
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ret nz

jr_033_65bf:
    nop
    rlca
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rlca
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    nop
    nop
    ccf
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    nop
    nop
    rra
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    ld hl, sp+$00
    ld bc, $feff
    nop
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rrca
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    add b
    nop
    rra
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ret nz

    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld [bc], a
    cp a
    rst $38
    rst $38
    rst $08
    adc h
    nop
    ld h, e
    rst $38
    ld a, [c]
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ld a, a
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

jr_033_679f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_67c4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_033_679f

    adc [hl]
    ld d, e
    inc c
    ld a, c
    sbc [hl]
    rst $38
    jr jr_033_67c4

    ld [$de23], sp
    ld a, h
    ld sp, hl
    and $0c
    ld h, d
    inc e
    ld sp, $35cf
    rst $20
    ld e, $39
    pop hl
    cp c
    dec b
    ld c, $71
    rst $00
    or l
    rst $00
    add hl, de
    add [hl]
    inc c
    add hl, sp
    pop hl
    rst $38
    adc [hl]
    ld sp, $f1f0
    adc e
    sbc [hl]
    rra
    db $fc
    jr @+$01

    ldh [rSB], a
    rst $00
    cp a
    rst $38
    call c, $3806
    rst $30
    cp b
    db $e3
    sbc h
    inc c
    ld [hl], e
    xor $71
    rst $00
    ld a, b
    ld sp, $b9cf
    jp nz, $f81f

    ld sp, $f1df
    add b
    ccf
    ldh a, [rNR42]
    rst $18
    pop af
    nop
    ld a, a
    ldh a, [rNR23]
    rst $38
    ld hl, sp+$00
    rst $38
    ld hl, sp+$06
    ld a, a
    ldh [rSB], a
    rst $38
    ldh [rSB], a
    sbc a
    ret nz

    dec b
    rst $38
    ret nz

    nop
    rst $28
    ld h, b
    rlca
    cp $00
    ld a, a
    call nz, $fe27
    nop
    ccf
    db $fc
    ld bc, $c09f
    rrca
    db $fc
    ld bc, $08fe
    rst $38
    nop
    rrca
    ldh a, [rTAC]
    jp $c09d


    rrca
    ldh [rIF], a
    ld hl, sp+$0e
    rst $30
    nop
    rst $38
    add b
    ccf
    ret nz

    ccf
    ret c

    rlca
    db $fc
    ld bc, $00ff
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh a, [rSB]
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    pop af
    call z, Call_000_3c63
    ldh a, [$1f]
    cp $01
    db $fc
    ld h, e
    db $fc
    nop
    rst $38
    add b
    ld bc, $63fc
    ld hl, sp+$01
    cp $07
    ldh [$fe], a
    ld hl, $01fc
    cp $07
    ldh [$7f], a
    db $10
    cp $01
    rst $38
    rlca
    ldh [$7f], a
    ld [$017f], sp
    rst $38
    inc bc
    ldh a, [$3f]
    add h
    ld a, a
    ld bc, $03ff
    ld hl, sp+$1f
    jp nz, $803f

    rst $38
    ld bc, $1ff0
    ret nz

    ccf
    add c
    rst $38
    inc bc
    ldh a, [$1f]
    pop bc
    ld a, a
    add c
    cp $03
    ldh a, [$1f]
    pop bc
    rst $38
    add c
    cp $07
    ldh [$1f], a
    add e
    rst $38
    inc bc
    db $fc
    rrca
    ldh [$3f], a
    rlca
    cp $07
    ldh a, [$1f]
    add b
    db $fc
    rra
    db $fc
    rra
    ret nz

    ld a, [hl]
    inc bc
    ldh a, [$7f]
    ldh a, [$7f]
    inc bc
    ld hl, sp+$1f
    pop bc
    cp $83
    ld hl, sp+$1f
    ret nz

    ld a, [hl]
    rrca
    and $0f
    ldh [$fe], a
    rlca
    ldh [$fe], a
    ld hl, $03fe
    ret nz

    cp $1f
    add $1f
    ret nz

    ld [hl], b
    rra
    add e
    ld hl, sp-$79
    ldh a, [rP1]
    rrca
    pop hl
    cp $61
    cp $00
    rlca
    ldh [$fe], a
    ld hl, $00fc
    rra
    add c
    db $fc
    rlca
    ldh [rSB], a
    ld hl, sp+$1f
    add b
    db $fc
    nop
    db $fc
    rrca
    ldh a, [rNR34]
    ld bc, $1ff8
    ldh a, [rNR34]
    inc bc
    ld hl, sp+$1f
    ldh a, [rNR32]
    inc bc
    ld hl, sp+$1f
    ldh a, [rNR32]
    rlca
    ldh a, [$1f]
    ldh [$38], a
    rrca
    ldh [$7f], a
    ret nz

    ldh a, [$1f]
    ret nz

    rst $38
    nop
    nop
    ld a, a
    add e
    db $fc
    nop
    nop
    cp $1f
    ldh a, [rNR32]
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    add b
    nop
    rrca
    sbc a
    rst $38
    ld bc, $3f80
    ccf
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    ccf
    cp $00
    nop
    ld a, a
    sbc a
    rst $38
    inc bc
    ret nz

    cpl
    rst $08
    db $e3
    di
    add b
    ld a, [hl]
    pop af
    db $fc
    cp a
    inc bc
    ldh [$7e], a
    inc bc
    db $fc
    ccf
    ld [c], a
    ld [hl], b
    ld c, $01
    rst $18
    jp $02fc


    nop
    inc b
    ldh [$7f], a
    rst $20
    rst $38
    ldh a, [rP1]
    ld hl, sp-$04
    ld a, a
    rst $38
    pop af
    jp nz, Jump_033_787e

    rra
    ld [c], a
    rrca
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
    jr nz, jr_033_6b12

    nop
    ld a, [hl]
    nop
    ld a, $07
    ldh [$3f], a
    pop bc
    ldh a, [rIF]
    ret nz

    db $fc
    rlca
    ld hl, sp+$7c
    inc bc
    ldh [$7f], a
    ld bc, $1ffc
    nop
    ld hl, sp+$1f
    ret nz

    rra
    add a
    add b
    ld a, b
    rrca
    add b
    rst $18
    adc a
    add b
    ld a, h
    rrca
    ret nz

    rrca
    add a
    add b
    ld a, h
    rrca
    ret nz

    rrca
    jp $3ec0


    rlca
    ret nz

    inc bc
    pop hl
    ldh [$1f], a
    inc bc
    ldh a, [rTAC]
    add e
    ldh [rTAC], a
    ret nz

    ld hl, sp+$0f
    ld hl, sp+$3e
    ld bc, $3ff0
    ld bc, $073e
    ret nz

    ld a, $07
    ldh [rBGP], a
    ret nz

    db $fc
    inc bc
    ldh [$7e], a
    ld bc, $1ffc
    add b
    rra
    inc bc
    ldh [$1f], a
    pop bc
    ld hl, sp+$01
    ldh a, [$3f]
    inc bc
    db $fc
    rrca
    ret nz

    rrca
    add c
    ldh a, [$3f]
    ldh a, [$7c]
    nop
    ld a, h
    rrca
    add b
    rst $38
    inc bc
    ldh [$03], a
    ldh [$7c], a
    rrca
    db $fc
    rra
    ld [bc], a
    rra
    inc bc
    ldh [rIE], a
    ret nz

    ld hl, sp+$10
    ld hl, sp+$1f
    rlca

jr_033_6b12:
    cp $07
    ret nz

    rlca
    add c
    ldh a, [$7f]
    ldh a, [$3e]
    nop
    ld a, h
    rrca
    add e
    rst $38
    inc bc
    ldh [$c3], a
    ret nz

    ld hl, sp+$3f
    ld hl, sp+$3e
    nop
    ld a, h
    rrca
    add b
    rst $38
    add e
    ldh [rTAC], a
    ret nz

    ld hl, sp+$0f
    ldh a, [$7e]
    nop
    ld a, b
    rrca
    add b
    rst $38
    rlca
    ret nz

    rlca
    ret nz

    ld hl, sp+$0f
    ldh a, [$7e]
    nop
    ld a, h
    rrca
    add b
    ld a, a
    add e
    ldh [$c3], a
    ret nz

    ld a, h
    rlca
    ld hl, sp+$3f
    ld b, $1e
    rlca
    ret nz

    ccf
    pop bc
    ldh a, [$60]
    ldh a, [$3e]
    inc bc
    db $fc
    rrca
    add e
    rrca
    ld bc, $3fe0
    ldh [$7c], a
    jr c, @+$7a

    rra
    ld bc, $07cf
    ret nz

    add a
    ret nz

    ld hl, sp+$1f
    ldh a, [$3e]
    ld e, $0f
    inc bc
    jp $e0f1


    ld hl, sp+$20
    ldh a, [$3e]
    inc bc
    db $fc
    rrca
    add e
    pop bc
    ldh [$78], a
    ld a, h
    ld a, b
    ld a, $0c
    ld e, $07
    add b
    ld a, a
    add c
    ld hl, sp+$3c
    ld a, $07
    adc [hl]
    rlca
    add e
    ldh a, [$61]
    ldh [$7c], a
    ld h, e
    ld hl, sp+$1f
    add e
    ldh [$f0], a
    inc a
    ld [hl], b
    inc a
    rra
    ld b, $1e
    rlca
    ret nz

    ld [hl], a
    pop bc
    ld hl, sp+$1e
    rrca
    inc bc
    rst $00
    inc de
    pop bc
    ldh a, [$30]
    ldh a, [$3c]
    dec sp
    sbc h
    rrca
    add c
    pop bc
    ldh [$78], a
    db $e3
    ld hl, sp+$7e
    ld c, $0f
    inc bc
    jp $c13b


    ld hl, sp+$38
    ld a, b
    rra
    inc e
    ld c, a
    rlca
    pop bc
    jp $f0c0


    rst $00
    ld hl, sp+$7e
    ld c, $1e
    rlca
    jp $c13f


    ldh a, [$71]
    ldh [$3c], a
    inc hl
    db $fc
    rra
    ld bc, $030f
    ldh [$1f], a
    pop bc
    ld hl, sp+$18
    ldh a, [rNR34]
    ld bc, $1ffe
    add b
    rlca
    add c
    ldh [rNR24], a
    ldh [$fc], a
    ld [$0f78], sp
    ld bc, $07cf
    ret nz

    add e
    ret nz

    ld hl, sp+$0c
    ld hl, sp+$3e
    inc b
    ld e, $07
    ret nz

    ld [hl], a
    pop bc
    ldh a, [rP1]
    ldh a, [$3e]
    inc bc
    ld e, $0f
    add b
    rlca
    add b
    ldh a, [rNR32]
    ldh a, [$7e]
    nop
    ld e, $07
    add b
    ld h, e
    pop bc
    ldh a, [rP1]
    ld hl, sp+$1e
    inc bc
    ld e, $0f
    ret nz

    inc bc
    ret nz

    ldh a, [$0c]
    ld hl, sp+$3e
    nop
    rra
    inc bc
    ret nz

    ld [hl], e
    ret nz

    ld hl, sp+$00
    ld a, b
    rra
    ld bc, $078f
    ret nz

    inc bc
    ret nz

    ld a, b
    ld c, $78
    rra
    nop
    ld e, $03
    ret nz

    ld [hl], e
    ret nz

    ld hl, sp+$01
    ldh [$3c], a
    rlca
    inc a
    rrca
    add b
    ld e, $07
    ret nz

Jump_033_6c49:
    ld h, a
    ret nz

    ld hl, sp+$01
    ldh [$7c], a
    ld b, $7c
    rrca
    add b
    ld e, $07
    ret nz

    ld h, a
    ret nz

    ld hl, sp+$01
    ldh [$7e], a
    rlca
    ld a, h
    rrca
    ret nz

    ld a, $07
    ret nz

    ld l, a
    ret nz

    db $fc
    inc bc
    ret nz

    ld a, h
    ld b, $f8
    rra
    add b
    inc a
    rrca
    add b
    rst $08
    add c
    ldh [rTAC], a
    ret nz

    ldh a, [$08]
    ldh a, [$3e]
    nop
    ld hl, sp+$1f
    ld bc, $039f
    ret nz

    rrca
    ld bc, $31e0
    ldh [$78], a
    ld bc, $3ef0
    inc bc
    ld a, $07
    add b
    ld e, $07
    ret nz

    daa
    ret nz

    ldh a, [$03]
    ldh [$7c], a
    nop
    ld a, h
    rra
    nop
    inc a
    rlca
    add b
    ld b, a
    add c
    ldh [$03], a
    ret nz

    ld hl, sp+$04
    ld hl, sp+$1e
    nop
    ld a, h
    rrca
    add b
    ld c, a
    add e
    ldh [rTAC], a
    add b
    pop af
    ld bc, $3cf0
    nop
    ld a, b
    rra
    db $10
    rra
    rlca
    ret nz

jr_033_6cba:
    rlca
    add c
    pop af
    ld bc, $78f0
    jr nz, jr_033_6cba

    ld e, $30
    ld e, $07
    adc [hl]
    rrca
    ld bc, $03e3
    ldh [$f8], a
    ld h, b
    ld hl, sp+$1e
    db $10
    ld a, $0f
    add a
    rlca
    add c
    pop af
    add e
    ldh a, [$78]
    ld [hl], b
    ld a, b
    rra
    ld [$071f], sp
    add e
    add e
    ret nz

    ld hl, sp-$3f
    ld hl, sp+$7c
    jr c, jr_033_6d07

    rlca
    add $0f
    add e
    pop hl
    ret nz

    ldh a, [$3e]
    jr nc, jr_033_6d31

    rra
    add [hl]
    rlca
    pop bc
    ldh a, [$c0]
    ldh a, [$7c]
    jr c, @+$21

    rlca
    rst $00
    rlca
    pop bc
    ldh [$e0], a
    ld a, h
    rra
    inc e
    rra

jr_033_6d07:
    rrca
    pop bc
    add b
    ldh a, [$3e]
    jr c, jr_033_6d4c

    rra
    add e
    add c
    ldh [$7c], a
    ldh [$7c], a
    ld a, $0f
    inc bc
    ret nz

    ld a, c
    ret nz

    ld hl, sp+$7c
    ld e, $07
    ret nz

    di
    add c
    ldh a, [$78]
    inc a
    rlca
    add c
    di
    add e
    ldh [$f8], a
    inc a
    rrca
    inc bc
    rst $20
    inc bc
    pop hl

jr_033_6d31:
    ldh [$f0], a
    ld a, $07
    sbc [hl]
    rrca
    add a
    jp $f0c0


    ld a, $70
    ld a, $1f
    ld c, $07
    ret nz

    pop af
    ret nz

    ldh a, [$7c]
    ld [hl], b
    inc a
    rrca
    inc e
    rrca
    add e

jr_033_6d4c:
    ldh a, [rTAC]
    ret nz

    pop af
    add c
    ldh a, [$7f]
    nop
    ldh a, [rNR34]
    ld [hl], b
    ld a, $0f
    add b
    inc a
    rrca
    sbc [hl]
    rrca
    add e
    ldh [rNR34], a
    rlca
    adc $07
    jp Jump_000_1ee0


    rlca
    adc $07
    add e
    ret nz

    ld a, b
    ld e, $38
    ld a, $07
    rlca
    add c
    ldh a, [$c7]
    ret nz

    inc bc
    ret nz

    db $fc
    inc bc
    ldh [$31], a
    ldh a, [$3e]
    inc bc
    ldh a, [rSB]
    ldh a, [$3f]
    ld bc, $03f8
    ldh a, [$3f]
    add b
    db $fc
    inc bc
    ldh [$7f], a
    add b
    ld a, b
    rlca
    ldh [$7f], a
    add b
    ldh a, [$1f]
    ret nz

    rst $38
    inc bc
    ret nz

    ccf
    add c
    cp $07
    nop
    ld a, a
    rlca
    ldh a, [$08]
    ld bc, $1ffe
    ldh [rP1], a
    rlca
    db $fc
    ccf
    ret nz

    jr c, jr_033_6dbc

    db $fc
    rst $38
    nop
    inc a
    rrca
    rst $28
    rst $38
    add c
    xor $0f
    sub c
    db $fc
    ld h, b
    ld b, c
    add c

jr_033_6dbc:
    sbc a
    rst $38
    cp $10
    nop
    db $fc
    rst $18
    reti


    jr jr_033_6dc6

jr_033_6dc6:
    ld h, b
    ld a, a
    cp $00
    nop
    ld hl, sp+$7e
    cp $c1
    ld b, c
    db $fc
    ld a, [hl]
    or $b8
    ld [hl], a
    db $e3
    rrca
    add e
    ret nz

    cp a
    add $78
    inc bc
    ldh [$79], a
    ld b, b
    ld hl, sp-$19
    nop
    nop
    rrca
    inc e
    rst $18
    rst $10
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
    rrca
    add b
    nop
    nop
    rst $38
    pop bc
    ldh [rP1], a
    ccf
    add c
    rst $38
    ld bc, $1ffc
    rst $00
    ret nz

    nop
    ld a, a
    ldh [rSB], a
    add b
    ld a, a
    ldh [rIF], a
    ret nz

    rlca
    ldh a, [$3f]
    add b
    ld a, [hl]
    rlca
    ldh [rIF], a
    ret nz

    cp $03
    db $fc
    rrca
    ldh [$3f], a
    add e
    ldh a, [rIF]
    ldh a, [$3f]
    nop
    ccf
    rlca
    ldh [$03], a
    ldh a, [$7f]
    nop
    ld a, a
    rlca
    ldh [$37], a
    ldh [$fe], a
    nop
    db $fc
    rrca
    ret nz

    ld c, a
    pop bc
    ld hl, sp+$03
    ld hl, sp+$3f
    ld bc, $073f
    ldh a, [rSB]
    ld hl, sp+$3f
    ld bc, $039f
    ldh a, [rP1]
    db $fc
    ccf
    add c
    rst $08
    pop bc
    ld hl, sp+$00
    ld a, [hl]
    rrca
    ret nz

    ld h, a
    ldh [$fc], a
    inc c
    rra
    add a
    ldh [$39], a
    ldh a, [$7e]
    rlca
    rrca
    pop bc
    ld hl, sp+$1c
    db $fc
    rra
    inc bc
    add e
    ldh a, [$fe]
    rlca
    rra
    rlca
    ldh [$f0], a
    db $fc
    rra
    add l
    rst $00
    pop bc
    ld hl, sp+$1e
    rra
    jp Jump_000_09f0


    ld hl, sp+$3f
    inc bc
    pop bc
    ld hl, sp+$7e
    db $10
    rra
    rlca
    ldh [$38], a
    ccf
    rrca
    ldh [rTAC], a
    ret nz

    db $fc
    rrca
    add e
    ldh a, [$fc]
    jr nz, jr_033_6fb1

    rrca
    add b
    ld [hl], b
    ld a, [hl]
    rra
    add b
    ld c, a
    add c
    ld hl, sp+$0f
    rlca
    pop bc
    ld hl, sp+$0e
    ld a, b
    rra
    add c
    pop bc
    ldh a, [$7e]
    inc bc
    cp [hl]
    rrca
    ret nz

    ld a, b
    ld a, $0f
    jp $c0e3


    db $fc
    ld e, $0f
    add c
    ld hl, sp+$78
    ld hl, sp+$3f
    add b
    pop bc
    ldh a, [$3f]
    rrca
    sbc a
    rlca
    ldh [$78], a
    inc a
    rrca
    jp $c017


    db $fc
    ld c, $0f
    inc bc
    ldh a, [$e1]
    ldh a, [$3e]
    rlca
    rlca
    ret nz

    ld hl, sp+$3c
    ld a, h
    rra
    add e
    pop bc
    ldh [$7e], a
    rrca
    rra
    rlca
    ldh [$60], a
    ld hl, sp+$1f
    add a
    rst $00
    add c
    ldh a, [$78]
    inc a
    rrca
    jp $c193


    ld hl, sp+$1c
    ld e, $07
    pop hl
    ret


    ldh [$7e], a
    ld b, $0f
    add c
    ldh a, [$73]
    ld hl, sp+$3f
    inc bc
    add e
    ret nz

    ld hl, sp+$38
    db $fc
    rra
    add c
    pop bc
    ldh a, [$3e]
    inc c
    ccf
    rlca
    ret nz

    ldh a, [$78]
    rra
    rlca
    rra
    add e

jr_033_6fb1:
    ldh a, [$38]
    ld a, $07
    add c
    rst $00
    ldh [$fc], a
    ld c, $07
    add c
    ldh a, [$71]
    ld hl, sp+$3f
    inc bc
    add c
    ldh [$78], a
    inc e
    ld a, [hl]
    rrca
    ret nz

    ldh a, [$78]
    rra
    inc bc
    rrca
    pop bc
    ldh a, [$3c]
    rra
    inc bc
    ret nz

    db $e3
    ldh a, [$7c]
    rlca
    add c
    ldh [$78], a
    inc e
    ld a, [hl]
    rrca
    pop bc
    ldh [$78], a
    rra
    rlca
    rrca
    add e
    ldh a, [$1f]
    rlca
    ret nz

    ldh a, [rNR41]
    ld hl, sp+$3f
    inc bc
    ldh [$78], a
    ld e, $00
    rra
    rlca
    ldh [$3f], a
    rlca
    add c
    db $e3
    ld hl, $3ff8
    ld bc, $78f0
    rra
    inc bc
    rrca
    add e
    ldh a, [$1f]
    add e
    ldh [$78], a
    ldh a, [$7c]
    rra
    add c
    ldh a, [$3c]
    rlca
    adc l
    rlca
    pop bc
    ld hl, sp+$07
    ret nz

    ld hl, sp+$1e
    jr nc, jr_033_7037

    rlca
    ldh a, [$f0]
    ld e, $07
    ret nz

    rlca
    ldh [$fc], a
    inc bc
    ldh a, [$3e]
    rlca
    add b
    rrca
    pop bc
    ld hl, sp+$78
    rrca
    ld bc, $03e0
    ldh a, [$7e]
    ld bc, $3cf8
    rrca
    ld c, $0f
    add c

jr_033_7037:
    ldh a, [$f8]
    rra
    inc bc
    ret nz

Jump_033_703c:
    inc bc
    ldh [$fc], a
    inc bc
    ldh a, [$78]
    ld e, $3e
    rra
    add e
    ldh [$f0], a
    inc a
    rrca
    add b
    rrca
    pop bc
    ld hl, sp+$1f
    add a
    ret nz

    ldh a, [$30]
    db $fc
    ccf
    rlca
    add c
    ldh [$7c], a
    inc e
    ld a, [hl]
    rrca
    ret nz

    ld a, b
    ld a, h
    rrca
    inc bc
    rrca
    add e
    ld hl, sp+$1c
    rra
    inc bc
    ret nz

    db $e3
    ldh [$fc], a
    ld b, $0f
    inc bc
    ldh [$61], a
    ldh a, [$7e]
    ld b, $0f
    inc bc
    ldh [$e3], a
    ldh a, [$7c]
    nop
    ld e, $07
    ret nz

    rst $00
    ldh [$f8], a
    nop
    ld a, b
    rra
    ld [bc], a
    rra
    add e
    ldh a, [rTAC]
    add c
    db $fc
    ld bc, $3ff8
    inc bc
    ldh [$7f], a
    nop
    db $fc
    rlca
    rlca
    add c
    ld hl, sp+$03
    ldh a, [$3c]
    ccf
    rlca
    ldh a, [rIF]
    add b
    rrca
    ret nz

    db $fc
    rlca
    ldh [rTAC], a
    ldh [$7f], a
    nop
    ld hl, sp+$01
    ld hl, sp+$1f
    add b
    jr c, jr_033_70ae

jr_033_70ae:
    db $fc
    rrca
    ldh [rNR34], a
    nop
    ld a, a
    rlca
    cp $07
    nop
    ccf
    rst $38
    rst $38
    rlca
    add b
    cp $7f
    rst $38
    ldh [$58], a
    rra
    adc $fe
    ld e, b
    inc b
    inc bc
    db $e3
    rst $38
    rra
    ld bc, $0180
    ld sp, hl
    rst $38
    pop bc
    ld hl, sp+$07
    rrca
    ld c, a
    ldh a, [$78]
    ld bc, $3cf0
    ld h, e
    ldh [$f0], a
    di
    add $3c
    add a
    jp $b4e0


    dec sp
    ld c, $79
    rst $00
    pop af
    call z, Call_033_730c
    add hl, de
    rst $00
    ld sp, $848f
    jr c, jr_033_7111

    ld [$0ef3], sp
    ld a, b
    inc a
    pop hl
    rst $00
    add a
    add hl, de
    rst $00
    di
    add $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_7111:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld hl, sp+$1f
    ld bc, $3ff0
    ld hl, sp+$00
    ld d, b
    rlca
    ldh [$7f], a
    ret nz

    cp $00
    rlca
    ldh [$7f], a
    ldh [$3f], a
    nop
    ccf
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $00fc
    nop
    rrca
    ret nz

    rst $38
    ldh [$7f], a
    nop
    rra
    nop
    ccf
    inc bc
    rst $38
    inc bc
    ld hl, sp+$0f
    ldh a, [$1f]
    inc bc
    ret nz

    nop
    db $fc
    rrca
    db $fc
    rlca
    ldh a, [$7f]
    ld bc, $07e0
    ldh [$7f], a
    ret nz

    ld a, a
    inc bc
    cp $03
    ld a, [c]
    nop
    rrca
    ret nz

    rst $38
    ret nz

    cp $07
    cp $07
    ldh [rP1], a
    ld a, [hl]
    rlca
    cp $07
    ldh [$3f], a
    ldh [$1f], a
    add hl, bc
    ret nz

    rrca
    ldh [$7f], a
    ret nz

    ld a, [hl]
    inc bc
    db $fc
    rlca
    ret nz

    inc bc
    ld hl, sp+$3f
    ldh a, [$1f]
    add c
    rst $38
    add c
    ldh a, [$3f]
    ld hl, sp+$3f
    nop
    ld hl, sp+$00
    ld bc, $1ff8
    ld hl, sp+$1f
    add b
    rst $38
    add b
    cp $01
    db $fc
    rrca
    ldh [rNR34], a
    inc bc
    ldh a, [rIF]
    pop bc
    ccf
    add c
    ld hl, sp+$3f
    add e
    rst $38
    add c
    ld hl, sp+$1f
    ld hl, sp+$1f
    ret nz

    ccf
    ret nz

    rst $38
    nop
    cp $03
    db $fc
    rlca
    ldh [rTAC], a
    ldh a, [$3f]
    db $fc
    rra
    ldh [$97], a
    dec c
    ld a, a
    ld a, a
    ld [bc], a
    ld l, [hl]
    ld bc, $006e
    nop
    nop
    ld e, a
    rst $38
    rst $38
    cp $00
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    cp a
    rst $38
    and e
    nop
    nop
    ccf
    jp $c000


    nop
    db $10
    ld b, b
    nop
    ld h, b
    ld h, b
    ld b, c
    jp Jump_033_703c


    rst $20
    ld [hl], l
    di
    adc $f8
    ld a, [hl]
    add hl, sp
    ldh [$fa], a
    rst $28
    rst $18
    rst $38
    rlca
    ld e, $3f
    cp $38
    add b
    ld h, e
    rst $38
    rst $18
    ld e, $1c
    jr c, @+$01

    ld sp, hl
    rst $20
    ret nz

    ld [bc], a
    ld [$7f28], sp
    rst $38
    db $fd
    db $e3
    adc a
    rst $38
    jr c, jr_033_72b1

jr_033_72b1:
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
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
    ld [hl], b
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
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
    ld a, a
    rst $38
    rst $38
    rst $38
    sub b
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
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop

Call_033_730c:
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
    nop
    rlca
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
    ldh [rP1], a
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
    db $fc
    nop
    nop
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
    dec b
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    nop
    ld a, a
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
    ret nz

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
    cp a
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
    ldh a, [rP1]
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
    rrca
    rst $38
    rst $38
    cp $00
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
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    dec hl
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc sp
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
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
    nop
    rst $38
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
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ccf
    rst $38
    cp $00
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    rst $38
    nop
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
    rrca
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    cp $00
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ld bc, $ffff
    add b
    nop
    rrca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    add b
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rrca
    rst $38
    db $fc
    nop
    ld bc, $ffff
    add b
    nop
    ccf
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    db $fc
    nop
    ld bc, $ffff
    add b
    nop
    ccf
    rst $38
    ldh [rP1], a
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
    ccf
    rst $38
    ldh [rP1], a
    rra
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    db $fc
    nop
    rlca
    rst $38
    db $fc
    nop
    rlca
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    nop
    rlca
    rst $38
    db $fc
    nop
    rlca
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    add b
    nop
    rst $38
    rst $38
    nop
    ld bc, $feff
    nop
    rlca
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    add b
    ld bc, $feff
    nop
    rlca
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    add b
    ld bc, $fcff
    nop
    rlca
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ret nz

    nop
    ld a, a
    rst $38
    nop
    ld bc, $fcff
    nop
    rlca
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    add b
    nop
    ld a, a
    cp $00
    ld bc, $feff
    nop
    rlca
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    db $fc
    nop
    rrca
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    add b
    ld bc, $feff
    nop
    rlca
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    add b
    nop
    rst $38
    cp $00
    ld bc, $feff
    nop
    rlca
    rst $38
    add $00
    nop
    jr nz, jr_033_75ad

jr_033_75ad:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $0f
    ld hl, sp+$37
    db $76
    dec b
    ld hl, sp+$16
    nop
    add b
    cp a
    dec hl
    nop
    ld b, b
    rra
    ld bc, $3d20
    rst $18
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    sbc a
    ld sp, hl
    jr c, jr_033_77ae

jr_033_77ae:
    nop
    rlca
    rst $38
    db $fc
    rrca
    cp $0f
    db $fc
    nop
    nop
    rra
    rst $38
    adc c
    rst $38
    db $fc
    rra
    ldh a, [rP1]
    nop
    ld a, a
    db $fc
    rlca
    rst $38
    ret nz

    rst $38
    ret nz

    nop
    nop
    rst $38
    ldh a, [$1f]
    rst $38
    add b
    rst $38
    nop
    nop
    ld bc, $e0ff
    ccf
    rst $38
    ld bc, $00ff
    nop
    ld bc, $c0ff
    rst $38
    cp $03
    db $fc
    nop
    nop
    inc bc
    rst $38
    add c
    rst $38
    db $fc
    rlca
    db $fc
    nop
    nop
    inc bc
    rst $38
    add c
    rst $38
    ld hl, sp+$07
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    inc bc
    rst $38
    ldh a, [rIF]
    ldh a, [rP1]
    nop
    rlca
    rst $38
    inc bc
    rst $38
    ldh a, [$1f]
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ld bc, $f0ff
    ccf
    ldh a, [rP1]
    nop
    rlca
    rst $38
    inc bc
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    rlca
    rst $38
    ld bc, $f8ff
    rra
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    ld bc, $f8ff
    rrca
    ld hl, sp+$00
    nop
    ld bc, $00ff
    rst $38
    ldh a, [rIF]
    db $fc
    nop
    nop
    nop
    ld a, a
    ldh [$1f], a
    cp $03
    rst $38
    nop
    nop
    nop
    ccf
    ldh [$1f], a
    rst $38
    add c
    rst $38
    add b
    nop
    nop
    rrca
    cp $07
    rst $38
    ret nz

    ld a, a
    ldh [rP1], a
    nop
    inc bc
    rst $38
    nop
    ld a, a
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    nop
    ld a, a
    ldh [$1f], a
    cp $03
    rst $38
    nop
    nop
    nop
    rra
    db $fc
    inc bc
    rst $38
    ldh [$7f], a
    ret nz

    nop
    nop
    ld bc, $80ff
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$00
    nop
    nop
    ccf
    ldh a, [$1f]
    rst $38
    add b
    rst $38
    add b

Jump_033_787e:
    nop
    nop
    inc bc
    rst $38
    nop
    rst $38
    ldh a, [$1f]
    ldh a, [rP1]
    nop
    nop
    ccf
    ldh a, [rIF]
    cp $01
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    ld bc, $f0ff
    rrca
    ld hl, sp+$00
    nop
    nop
    rrca
    db $fc
    rlca
    rst $38
    add b
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    ret nz

    ld a, a
    ld hl, sp+$03
    rst $38
    nop
    nop
    nop
    inc bc
    cp $03
    rst $38
    ret nz

    ccf
    ldh a, [rP1]
    nop
    nop
    rra
    ldh a, [$1f]
    ld hl, sp+$38
    rst $38
    ret nz

    nop
    nop
    nop
    rst $38
    ret nz

    ld a, a
    ldh [rBGP], a
    rst $38
    nop
    nop
    nop
    ld bc, $80ff
    rst $38
    ldh [rIF], a
    db $fc
    ld bc, $00c0
    inc bc
    rst $38
    ld bc, $e1ff
    rst $38
    ld hl, sp+$07
    add b
    nop
    rlca
    cp $03
    rst $38
    db $fc
    ccf
    ldh [$0c], a
    nop
    nop
    rrca
    db $fc
    rlca
    rst $38
    rst $38
    ld a, a
    ldh [rNR34], a
    nop
    nop
    rra
    ldh a, [rIF]
    rst $38
    db $fc
    rrca
    ldh a, [rP1]
    nop
    nop
    rra
    ld hl, sp+$0f
    rst $38
    rst $38
    rst $38
    ret nz

    ld hl, sp+$00
    db $10
    rrca
    db $fc
    rlca
    rst $38
    ldh [$3f], a
    ldh [rDIV], a
    nop
    nop
    ccf
    db $fc
    rrca
    rst $38
    ei
    rst $38
    ldh [$38], a
    nop
    nop
    rra
    ldh a, [$3f]
    rst $38
    ldh a, [rIE]
    cp $00
    nop
    inc bc
    rla
    cp $07
    rst $38
    cp $1f
    ldh a, [rNR41]
    nop
    nop
    rrca
    db $fc
    rrca
    rst $38
    rst $38
    rst $38
    ldh [$3e], a
    nop
    nop
    inc bc
    rst $38
    ld bc, $ffff
    rst $28
    db $fc
    nop
    nop
    nop
    ld bc, $80ff
    rst $38
    di
    rst $38
    cp $07
    add b
    nop
    add b
    ld a, a
    ret nz

    rst $38
    rst $38
    pop bc
    rst $38
    add c
    ret nz

    nop
    nop
    ld a, a
    ldh [$7f], a
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    rra
    ldh a, [$3f]
    rst $38
    rst $38
    rst $38
    ld bc, $00fc
    nop
    rlca
    db $fc
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$0c
    nop
    nop
    ld bc, $80ff
    rst $38
    rst $38
    cp a
    rst $38
    ld [bc], a
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    db $fc
    rrca
    ret nz

    nop
    nop
    ccf
    ldh [$7f], a
    rst $38
    rst $20
    rst $38
    ret nz

    ld b, b
    nop
    nop
    rra
    ldh a, [$1f]
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    db $fc
    rrca
    rst $38
    rst $38
    rst $38
    cp $ec
    nop
    nop
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    db $fc
    inc de
    nop
    nop
    nop
    ccf
    ldh [$3f], a
    rst $38
    rlca
    rst $38
    nop
    ld hl, sp+$00
    nop
    rra
    ldh [$3f], a
    rst $38
    rst $38
    db $fc
    rra
    db $fc
    nop
    inc b
    ld bc, $03fe
    rst $38
    rst $38
    rst $38
    ldh a, [$7f]
    nop
    nop
    nop
    ccf
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $38
    inc bc
    ld hl, sp+$00
    nop
    rlca
    db $fc
    rrca
    rst $38
    rst $38
    rst $38
    inc bc
    cp $00
    nop
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    ldh [$7f], a
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    cp $03
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    ldh [rP1], a
    nop
    ccf
    db $fc
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    nop
    nop
    nop
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$1e
    nop
    nop
    nop
    rst $38
    call $ffff
    rst $38
    rst $38
    jp RST_00


    ld bc, $d97f
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    ld hl, sp+$00
    nop
    inc bc
    cp $07
    rst $38
    rst $38
    rst $38
    ldh [$3f], a
    nop
    nop
    nop
    ld a, a
    ldh [$7f], a
    rst $38
    rst $38
    db $fc
    inc bc
    ldh [rP1], a
    nop
    inc bc
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    reti


    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    rra
    add b
    nop
    nop
    ld a, a
    ldh [$3f], a
    rst $38
    rst $38
    rst $38
    ld a, a
    ldh [rP1], a
    nop
    rrca
    cp $0f
    rst $38
    rst $38
    rst $38
    ldh [$7f], a
    nop
    nop
    inc bc
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    ldh [rP1], a
    nop
    ccf
    push af
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rrca
    ld hl, sp+$03
    rst $38
    rst $08
    rst $38
    ret nz

    ccf
    nop
    nop
    nop
    ld a, a
    ret nz

    ld a, a
    rst $38
    rst $38
    cp $03
    ldh a, [rP1]
    nop
    rrca
    cp $3f
    rst $38
    rst $38
    rst $38
    db $fc
    ld c, $00
    nop
    ld bc, $e0ff
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    nop
    rra
    ldh a, [$7f]
    rst $38
    rst $38
    cp $07
    db $fc
    nop
    nop
    nop
    ld a, a
    ldh [rIE], a
    rst $38
    rst $38
    ld hl, sp+$01
    ldh [rP1], a
    nop
    inc bc
    rst $38
    pop bc
    rst $38
    rst $28
    rst $38
    ld hl, sp+$07
    add b
    nop
    ld [bc], a
    rst $38
    ld bc, $ffff
    rst $38
    ld hl, sp+$03
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ret nz

    rlca
    ret nz

    nop
    nop
    rra
    ld hl, sp+$1f
    rst $38
    rst $38
    cp $00
    ccf
    nop
    nop
    ld bc, $c7ff
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rrca
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $0080
    ld bc, $fe7f
    rrca
    rst $38
    rst $38
    rst $38
    nop
    inc c
    nop
    nop
    rrca
    cp $0f
    rst $38
    rst $38
    rst $38
    ldh [$03], a
    ldh a, [rP1]
    nop
    rrca
    db $fc
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    rra
    ei
    rst $38
    rst $38
    rst $38
    cp $00
    rlca
    nop
    nop
    inc bc
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rlca
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ldh [rSB], a
    ret nz

    nop
    nop
    ld e, a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    jr c, jr_033_7b58

jr_033_7b58:
    nop
    inc bc
    rst $38
    jp $ffff


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
    ei
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    pop bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$03
    nop
    nop
    nop
    rrca
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ldh [$03], a
    nop
    nop
    nop
    ccf
    cp $7f
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $e1ff
    rst $38
    rst $38
    rst $38
    ldh a, [rSB]
    ldh a, [rP1]
    nop
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    ld sp, hl
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rlca
    cp $3f
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    jp hl


    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    daa
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ret nz

    inc e
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $18
    rst $38
    rst $38
    rst $38
    cp $01
    ldh [rP1], a
    nop
    nop
    ccf
    db $e4
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rlca
    rst $38
    ld a, a
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
    db $fc
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
    ld hl, sp+$00
    nop
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rra
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
    daa
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    add b
    ld [bc], a
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
    ld bc, $e07f
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld [hl], b
    nop
    nop
    ld b, $ff
    di
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    rst $38
    ld sp, hl
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    inc a
    nop
    nop
    inc bc
    rst $38
    reti


    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    jr nc, jr_033_7caf

jr_033_7caf:
    nop
    ld bc, $e0ff
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    add b
    nop
    nop
    rst $38
    db $f4
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    db $fc
    nop
    nop
    nop
    daa
    cp $0f
    rst $38
    db $fd
    rst $38
    nop
    ccf
    nop
    nop
    nop
    rlca
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    ret nz

    nop
    nop
    ld bc, $c9fe
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    nop
    nop
    nop
    ccf
    ld hl, sp+$3f
    rst $08
    rst $38
    rst $38
    add b
    rst $38
    ld a, $00
    nop
    inc bc
    db $fd
    sub a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$1a
    rra
    ret nz

    nop
    nop
    rra
    ldh a, [$7f]
    rst $38
    rst $38
    rst $38
    add b
    rra
    ret nz

    nop
    nop
    add hl, bc
    rst $38
    ccf
    rst $30
    rst $38
    rst $38
    ldh a, [rIF]
    ret nz

    nop
    nop
    nop
    rrca
    di
    cp $ff
    rst $38
    rst $38
    ldh a, [rIF]
    add b
    nop
    nop
    nop
    ld a, a
    add e
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
    ldh a, [rP1]
    nop
    nop
    rrca
    ld hl, sp+$3f
    rst $30
    rst $38
    rst $38
    ret nz

    rrca
    ldh a, [$03]
    nop
    nop
    rla
    ld hl, sp+$3f
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    ret nz

    nop
    nop
    nop
    ccf
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    add b
    ccf
    ret nz

    nop
    nop
    nop
    ld a, a
    add e
    rst $38
    rst $38
    rst $38
    db $fc
    rlca
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    ld bc, $00fc
    nop
    nop
    inc bc
    cp $17
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
    ld hl, sp+$00
    nop
    nop
    rlca
    db $fc
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    ldh a, [rP1]
    nop
    nop
    ccf
    ld hl, sp+$3f
    rst $38
    rst $38
    rst $38
    ret nz

    rrca
    add b
    inc c
    nop
    nop
    ld e, a
    pop af
    rst $38
    adc a
    rst $38
    rst $38
    add b
    ld a, $00
    nop
    nop
    nop
    ccf
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rra
    ret nz

    nop
    nop
    nop
    ld a, a
    pop bc
    rst $38
    rst $38
    rst $38
    cp $00
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $07ff
    db $fd
    rst $38
    rst $38
    db $fc
    nop
    ld a, h
    nop
    nop
    nop
    ld bc, $07ff
    rst $38
    rst $38
    rst $38
    cp $00
    ld a, a
    nop
    nop
    nop
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$01
    cp $00
    nop
    nop
    inc bc
    db $fc
    rra
    db $fd
    rst $38
    rst $38
    ld hl, sp+$00
    cp $01
    add b
    nop
    ld bc, $07ff
    db $fd
    rst $38
    rst $38
    ld hl, sp+$00
    cp $01
    add b
    nop
    nop
    ld a, a
    inc bc
    ld hl, sp-$01
    rst $38
    cp $00
    ld a, [hl]
    ld bc, $00c0
    nop
    ld a, a
    add e
    rst $38
    rst $38
    rst $38
    cp $80
    ccf
    add b
    nop
    nop
    nop
    ld a, a
    pop bc
    rst $38
    rst $38
    rst $38
    cp $00
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    push hl
    db $fc
    ccf
    ei
    rst $38
    jp nc, $f007

    nop
    nop
    nop
    inc bc
    rst $38
    ccf
    add e
    rst $38
    rst $38
    di
    ret nz

    ld a, a
    nop
    nop
    nop
    nop
    ld a, a
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ccf
    ldh a, [rP1]
    nop
    nop
    rlca
    rst $38
    cp [hl]
    rra
    rst $38
    rst $38
    cp $81
    cp $00
    nop
    nop
    nop
    rra
    pop af
    db $fc
    rra
    rst $38
    rst $38
    rst $38
    sbc a
    ldh [rP1], a
    nop
    nop
    nop
    rrca
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ldh [rP1], a
    nop
    nop
    nop
    ccf
    pop bc
    ld sp, hl
    rst $38
    rst $00
    rst $38
    db $fc
    rra
    ldh [rP1], a
    nop
    nop
    nop
    rra
    ldh a, [$f4]
    rst $38
    ldh [rIE], a
    ldh a, [$1f]
    ldh [$08], a
    nop
    nop
    nop
    inc bc
    db $fc
    rra
    sbc a
    db $fc
    ccf
    rst $38
    ldh [$7f], a
    ld bc, $00e0
    nop
    nop
    rra
    rst $38
    pop hl
    ld a, a
    rst $38
    rst $38
    cp $0f
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [$7f]
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $03fe
    rst $38
    cp $0f
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    ld bc, $07ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    jr c, jr_033_7ec6

jr_033_7ec6:
    nop
    nop
    nop
    ld a, a
    add c
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
    rlca
    ld hl, sp+$1f
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
    ld a, a
    add e
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
    nop
    inc bc
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $18
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
    rst $38
    rst $38
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    cp $ff
    cp a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add b
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
    rst $38
    add a
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
    ld h, b
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
    ld [$0f00], sp
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
    ld e, $07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ret nz

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
    nop
    add hl, de
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$1f]
    add b
    nop
    nop
    nop
    nop
    inc bc
    ldh a, [$1f]
    ccf
    cp $ff
    rst $38
    rst $38
    rst $38
    ret nz

    ld a, $00
    nop
    nop
    nop
    nop
    ld a, h
    inc bc
    db $fc
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
    ret nz

    ld a, [hl]
    inc bc
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    ld hl, sp+$3f
    ld bc, $9fff
    rst $38
    rst $38
    add a
    rst $38
    db $fc
    inc bc
    add b
    nop
    nop
    stop
    ld bc, $00fe
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
    nop
    inc bc
    ldh a, [$3e]
    rlca
    ld hl, sp+$3f
    rst $30
    rst $38
    rst $38
    rst $38
    cp $01
    nop
    nop
    nop
    nop
    nop
    ld bc, $04f0
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
    nop
    nop
    nop
    nop
    nop
