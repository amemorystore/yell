; disasSembly of "yell.gbc"
SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    sub a
    inc d
    ld a, a
    ld a, a
    ld [bc], a
    and $01
    ld l, [hl]
    nop
    inc d
    cp e
    rst $38
    rst $38
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    sbc $00
    nop
    nop
    rra
    rst $30
    ldh a, [rNR33]
    nop
    nop
    inc bc
    add hl, de
    cp e
    rst $38
    rst $08
    adc a
    dec c
    jr jr_031_4026

jr_031_4026:
    nop
    inc b
    ld [hl], l
    rst $38
    rst $38
    sbc [hl]
    ei
    and b
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
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    rla
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
    rra
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
    ret nz

    nop
    nop
    nop
    nop
    inc de
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
    ldh a, [rP1]
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
    cp $00
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    rrca
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
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $ffff
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
    add b
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
    nop
    rlca
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    ld [hl], a
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld c, a
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $ff5d
    rst $38
    rst $38
    rst $38
    rst $20
    db $db
    adc b
    add d
    nop
    ld b, d
    nop
    inc b
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
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
    push af
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
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
    cp $00
    nop
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    and b
    inc c
    cp c
    ld h, d
    ld b, h
    add c
    rlca
    ld h, b
    rrca
    cp a
    rst $38
    ldh a, [$f0]
    ld a, b
    rra
    rrca
    add l
    ldh [rNR21], a
    dec bc
    rlca
    add d
    ldh [rIE], a
    ldh a, [$79]
    ld a, b
    daa
    add b
    and b
    ld [hl], h
    xor h
    ld a, a
    ld a, a
    ld e, a
    ld [hl], $e0
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    dec h
    ldh a, [rP1]
    nop
    rrca
    rst $38
    ld hl, sp+$01
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    ret nz

    inc bc
    rst $38
    ldh a, [$03]
    ret nz

    nop
    inc bc
    rst $38
    ldh [$03], a
    rst $38
    db $fc
    rlca
    ret nz

    nop
    nop
    rst $38
    ld hl, sp+$01
    rst $38
    cp $3f
    ldh a, [rP1]
    nop
    rlca
    rst $38
    add b
    rra
    rst $38
    rlca
    cp $00
    nop
    nop
    ld a, a
    ld hl, sp+$03
    rst $38
    ret nz

    ld a, a
    ret nz

    inc bc
    ret nz

    rlca
    rst $38
    add b
    ccf
    ld hl, sp+$07
    cp $00
    ld a, $00
    rra
    ld hl, sp+$01
    rst $38
    ret nz

    ccf
    ldh a, [$03]
    ldh a, [rP1]
    rst $38
    ldh [rTAC], a
    db $fc
    ld bc, $80ff
    rra
    add b
    inc bc
    rst $38
    nop
    ccf
    ldh a, [rIF]
    db $fc
    nop
    cp $00
    rrca
    cp $00
    rst $38
    add b
    ccf
    ldh a, [$03]
    ldh a, [rP1]
    rrca
    db $fc
    ld bc, $00ff
    ld a, a
    ldh [rTAC], a
    ldh [rP1], a
    rrca
    ld hl, sp+$01
    rst $38
    nop
    rst $38
    ret nz

    rrca
    ret nz

    nop
    rlca
    ld hl, sp+$01
    rst $38
    nop
    rst $38
    ret nz

    rra
    ret nz

    nop
    rrca
    db $fc
    ld bc, $00ff
    rst $38
    ret nz

    rra
    add b
    nop
    rlca
    ld hl, sp+$01
    rst $38
    ld bc, $c0ff
    ccf
    nop
    nop
    rlca
    db $fc
    ld bc, $00ff
    rst $38
    ldh [$3f], a
    nop
    nop
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    ldh [$1f], a
    add b
    nop
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    ldh [rIF], a
    ret nz

    nop
    ld bc, $00ff
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    nop
    nop
    rst $38
    nop
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    nop
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld hl, sp+$0f
    ldh [rP1], a
    nop
    ld a, a
    add b
    ccf
    ldh [$3f], a
    ld hl, sp+$07
    ldh [rP1], a
    nop
    ld a, a
    add b
    ccf
    ldh [$3f], a
    ld hl, sp+$0f
    ldh [rP1], a
    nop
    ld a, a
    add b
    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ldh [rP1], a
    nop
    ccf
    ret nz

    rra
    ldh [$1f], a
    ld hl, sp+$07
    ldh a, [rP1]
    nop
    ccf
    ret nz

    rra
    ldh [$1f], a
    ld hl, sp+$07
    ldh a, [rP1]
    nop
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ld hl, sp+$07
    ldh [rP1], a
    nop
    rst $38
    nop
    ld a, a
    ret nz

    ld a, a
    ldh a, [rIF]
    ret nz

    nop
    ld bc, $01fe
    rst $38
    nop
    rst $38
    ldh [$1f], a
    add b
    nop
    rrca
    ld hl, sp+$03
    db $fc
    inc bc
    rst $38
    add b
    db $fc
    nop
    nop
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    rst $38
    nop
    ld hl, sp+$00
    nop
    rra
    ldh [$1f], a
    ldh a, [rIF]
    cp $01
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ld hl, sp+$07
    add b
    nop
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    nop
    nop
    inc bc
    cp $03
    cp $01
    rst $38
    add b
    ld a, h
    nop
    nop
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    ld hl, sp+$00
    nop
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    ld bc, $00f0
    nop
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    rlca
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ret nz

    nop
    nop
    rst $38
    add b
    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    nop
    nop
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    ret nz

    ld a, $00
    nop
    inc bc
    cp $01
    rst $38
    ld bc, $80ff
    ld a, a
    nop
    nop
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    add b
    ld a, [hl]
    nop
    nop
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    nop
    nop
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    ld hl, sp+$00
    nop
    rra
    ldh [rIF], a
    ld hl, sp+$0f
    db $fc
    inc bc
    ldh a, [rP1]
    nop
    ccf
    ret nz

    rra
    ldh a, [$1f]
    db $fc
    rlca
    ldh a, [rP1]
    nop
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ldh [rP1], a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ldh a, [$1f]
    add b
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ret nz

    rra
    nop
    nop
    inc bc
    db $fc
    inc bc
    rst $38
    ld bc, $c0ff
    ld a, h
    nop
    nop
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    add b
    ld hl, sp+$00
    nop
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    cp $03
    ldh a, [rP1]
    nop
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    cp $03
    ldh a, [rP1]
    nop
    rra
    ldh a, [rIF]
    ld hl, sp+$0f
    db $fc
    inc bc
    ldh a, [rP1]
    nop
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    ldh a, [rP1]
    nop
    ccf
    ret nz

    rra
    ldh [$1f], a
    ld hl, sp+$07
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$0f
    ldh [rP1], a
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh [rP1], a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [$1f]
    ret nz

    nop
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [$1f]
    ret nz

    nop
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    nop
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    nop
    ld bc, $80ff
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    nop
    ld bc, $00ff
    ld a, a
    add b
    ccf
    ldh [$1f], a
    ret nz

    nop
    ld bc, $80ff
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    nop
    ld bc, $00ff
    ld a, a
    ret nz

    ld a, a
    ldh [$1f], a
    ret nz

    nop
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    nop
    ld bc, $80ff
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    nop
    nop
    rst $38
    add b
    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh [rP1], a
    nop
    rst $38
    ret nz

    rra
    ldh [$1f], a
    ld hl, sp+$03
    ldh a, [rP1]
    nop
    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    db $fc
    nop
    nop
    rrca
    db $fc
    inc bc
    rst $38
    inc bc
    rst $38
    add b
    ld a, [hl]
    nop
    jr nc, jr_031_462c

    rst $38
    add b
    ld a, a

jr_031_462c:
    ldh [$7f], a
    ldh [rTAC], a
    ret nz

    inc c
    nop
    ld a, a
    ldh a, [rIF]
    db $fc
    rrca
    cp $00
    ld hl, sp+$00
    ld b, b
    rlca
    rst $38
    nop
    rst $38
    ld sp, hl
    rst $38
    ldh [rTAC], a
    nop
    inc c
    nop
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    db $fc
    nop
    ld a, b
    ld bc, $00c0
    rst $38
    add $ff
    db $fc
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
    db $fc
    nop
    nop
    ld [$0f00], sp
    di
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [hl], b
    nop
    ld a, h
    nop
    ccf
    pop bc
    rst $38
    cp $ff
    db $fc
    nop
    nop
    nop
    nop
    rrca
    db $fc
    ld a, a
    rst $38
    rst $38
    ldh a, [$3f]
    nop
    nop
    nop
    nop
    rst $38
    rst $20
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
    ld hl, sp+$00
    nop
    nop
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_031_49b5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld sp, hl
    ld hl, sp+$01
    add b
    rst $38
    rla
    add b
    nop
    nop
    ld sp, $08fe
    nop
    ld bc, $7fd2
    sbc a
    rst $30
    rst $28
    rst $30
    rst $30
    rst $20
    adc h
    add [hl]
    jr nz, jr_031_4bf6

jr_031_4bf6:
    inc hl
    rst $38
    rst $38
    rst $38
    db $ec
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
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
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
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld bc, $ff7f
    rst $38
    cp $00
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
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    stop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld l, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld h, a
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    dec de
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld [bc], a
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ccf
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
    ld d, $ff
    rst $38
    rst $38
    rst $38
    rst $20
    ld [hl+], a
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
    ld a, [$00c0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    add h
    nop
    ld c, d
    nop
    ld de, $070a
    xor [hl]
    add e
    rst $38
    rst $38
    ldh a, [$f0]
    ld [hl], b
    ld e, $3e
    rlca
    add c
    ret nz

    ld a, e
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    pop bc
    ld [hl], b
    ld [$ff7f], sp
    rst $38
    push hl
    pop hl
    db $f4
    ld e, b
    ld hl, sp+$3e
    rst $38
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    cp $13
    rst $38
    nop
    ld [bc], a
    nop
    nop
    rlca
    rst $38
    ldh [rIF], a
    cp $00
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ld hl, sp+$00
    nop
    ld bc, $f0ff
    rlca
    cp $01
    rst $38
    ret nz

    ld c, $00
    rrca
    rst $38
    nop
    ld a, a
    ldh a, [rIF]
    db $fc
    nop
    ld [hl], b
    nop
    ld a, a
    ldh a, [rTAC]
    cp $00
    rst $38
    add b
    rra
    nop
    rlca
    rst $38
    nop
    rst $38
    ret nz

    rra
    ld hl, sp+$03
    ldh a, [rP1]
    rst $38
    ret nz

    ccf
    ldh a, [rTAC]
    db $fc
    nop
    db $fc
    nop
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$03
    cp $00
    ld a, [hl]
    nop
    ld a, a
    ldh a, [rIF]
    db $fc
    inc bc
    cp $00
    ld a, h
    nop
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    nop
    ldh a, [rSB]
    rst $38
    ret nz

    ld a, a
    ldh [$1f], a
    ldh a, [$03]
    ret nz

    rrca
    db $fc
    inc bc
    cp $00
    rst $38
    add b
    inc e
    ld bc, $c0ff
    ld a, a
    ldh [$1f], a
    ldh a, [rP1]
    nop
    ld a, a
    ldh a, [$1f]
    db $fc
    inc bc
    db $fc
    nop
    nop
    rra
    db $fc
    rlca
    cp $01
    rst $38
    nop
    nop
    rra
    db $ec
    rlca
    cp $01
    rst $38
    nop
    nop
    ccf
    ld hl, sp+$0f
    db $fc
    inc bc
    rst $38
    nop
    nop
    rst $38
    ldh [$3f], a
    ld hl, sp+$0f
    db $fc
    nop
    inc bc
    rst $38
    add b
    rst $38
    ldh [rIF], a
    ldh a, [rP1]
    ccf
    db $fc
    rlca
    rst $38
    nop
    ld a, a
    add b
    inc bc
    rst $38
    add b
    ld a, a
    ldh [rTAC], a
    db $fc
    nop
    ld a, a
    ld hl, sp+$01
    rst $38
    nop
    ld a, a
    add b
    rrca
    rst $38
    nop
    ccf
    ldh a, [rIF]
    ldh a, [$03]
    rst $38
    add b
    rrca
    cp $00
    ld a, h
    inc bc
    rst $38
    ret nz

    inc bc
    rst $38
    add b
    nop
    inc bc
    rst $38
    ret nz

    rlca
    rst $38
    nop
    nop
    rlca
    rst $38
    add b
    rlca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    rrca
    db $fc
    nop
    nop
    ccf
    db $fc
    nop
    daa
    ld hl, sp+$00
    ld bc, $ffff
    nop
    rrca
    db $ec
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    ret nz

    inc bc
    nop
    nop
    rst $28
    rst $38
    ld sp, hl
    add b
    nop
    nop
    ld de, $ffff
    ld [hl], b
    nop
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    rst $00
    nop
    nop
    ld h, a
    rst $38
    rst $38
    rst $38
    cp $20
    nop
    ld [$0780], sp
    rst $38
    cp $00
    nop
    ld b, b
    nop
    ld bc, $ffff
    add b
    ld [hl], b
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    add b
    rrca
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
    ccf
    ret c

    inc bc
    rst $38
    ldh a, [rP1]
    rst $28
    db $e3
    add b
    ld bc, $feff
    nop
    ld a, a
    ret nz

    rlca
    rst $38
    rst $38
    db $fc
    nop
    rlca
    ldh [$03], a
    rst $38
    ldh a, [rP1]
    ld a, a
    ldh a, [$e0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jp z, $0142

    ld b, d
    push de
    ld l, e
    ld l, e
    ld d, d
    xor e
    ld d, h
    sub l
    ld c, l
    add hl, hl
    ld d, [hl]
    xor d
    or h
    xor c
    ld c, d
    xor d
    and c
    ld l, l
    ld h, l
    ld d, h
    and h
    and l
    ld a, [hl+]
    xor d
    xor c
    xor d
    ld d, l
    xor d
    ld c, d
    or h
    and h
    cp d
    xor d
    and l
    sub h
    ld d, l
    ld d, d
    xor l
    ld [hl], h
    sub l
    ld c, e
    ld d, l
    ld d, h
    sub [hl]
    sub [hl]
    ld d, d
    and l
    ld l, l
    ld l, c
    ld d, d
    sub [hl]
    xor l
    ld l, c
    ld a, [hl+]
    sub h
    xor d
    ld l, e
    ld e, d
    ld e, e
    ld l, l
    ld c, d
    dec hl
    dec l
    dec l
    or [hl]
    sbc d
    ld e, e
    ld l, d
    ld c, e
    ld d, h
    and l
    or d
    jp nc, $b596

    add hl, hl
    ld c, c
    dec hl
    ld c, d
    sbc d
    ld d, [hl]
    or l
    ld l, c
    inc [hl]
    or h
    or [hl]
    ld e, d
    ld h, a
    dec h
    sub d
    res 6, [hl]
    xor e
    dec h
    or h
    xor e
    ld e, d
    ld c, c
    ld c, d
    jp nc, $b5d2

    or h
    ld l, c
    inc h
    db $db
    ld c, c
    ld h, $db
    ld h, h
    sub [hl]
    or h
    or [hl]
    ret


    inc h
    ld l, c
    or d
    ld h, l
    or d
    push bc
    add l
    dec l
    inc h
    ld c, c
    dec l
    or [hl]
    sub d
    ld c, c
    dec h
    ld d, d
    call $db36
    ld h, h
    or h
    and l
    ld l, l
    ld [hl-], a
    ld d, d
    ld d, [hl]
    sub e
    ld l, l
    or d
    ld e, c
    or [hl]
    reti


    ld [hl], $d3
    inc h
    sbc e
    inc l
    db $db
    ld l, b
    rst $10
    add hl, hl
    and [hl]
    db $db
    ld [hl], $49
    sub d
    ld h, [hl]
    ret nc

    sub e
    ld h, h
    rst $18
    ld [hl], l
    jr jr_031_51ef

    ld c, l
    and h
    ld c, l
    or [hl]
    ld h, [hl]
    sub b
    ld [de], a
    db $fd
    and b
    ld [bc], a
    rst $38
    cp d
    add c
    add a
    call z, Call_031_783e
    pop af
    add e
    adc a
    ld e, $20
    ld b, c
    rst $30
    ret nz

    inc c
    ld a, [hl]
    ld [hl], a
    rst $30
    add b
    ld b, $ff
    rst $38
    add [hl]
    ld [$ff39], sp
    or $00
    inc bc
    rst $38
    cp $18
    nop
    rst $20
    rst $38
    sub b
    nop
    dec e
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    nop
    inc b
    rst $38
    rst $38
    ldh [rP1], a
    sbc a
    rst $38
    db $fc
    nop
    rra
    rst $38
    ld hl, sp-$80
    inc bc
    rst $38
    rst $38
    nop

jr_031_51ef:
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    ld hl, sp+$00
    ld b, $3f
    rst $38
    sub b
    nop
    ld h, e
    rst $38
    ldh a, [rP1]
    inc bc
    ccf
    rst $38
    add b
    nop
    jr @+$01

    cp $00
    nop
    ld h, a
    rst $38
    ldh [rP1], a
    inc bc
    ccf
    rst $38
    add b
    nop

Jump_031_522a:
    dec e
    rst $38
    ld hl, sp+$00
    nop
    ld [hl], a
    rst $38
    ld hl, sp+$00
    nop
    rst $18
    rst $38
    ldh [rP1], a
    inc bc
    cp a
    rst $38
    nop
    nop
    ld c, $ff
    rst $38
    nop
    nop
    dec c
    rst $38
    cp $00
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
    ccf
    rst $38
    db $fc
    nop
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
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    scf
    rst $38
    db $fc
    nop
    nop
    ld bc, $ffff
    ret nz

    nop
    nop
    rrca
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    add b
    nop
    rra
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
    ldh [rP1], a
    ld [$0000], sp
    rra
    rst $38
    db $fc
    nop
    rlca
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ld a, a
    ldh a, [rP1]
    ld bc, $ffff
    add b
    rlca
    rst $38
    add b
    nop
    ld bc, $ffff
    ldh [rDIV], a
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    ccf
    cp $00
    nop
    rlca
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    nop
    rlca
    rst $28
    add b
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    rrca
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    db $fc
    nop
    rra
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
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    rlca
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rSB], a
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
    ld a, a
    db $fc
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    ld [$0060], sp
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    adc b
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    and $00
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$0f
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    ld hl, sp+$00
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
    rla
    ld b, b
    nop
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
    ld a, [hl]
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
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    ld bc, $ffff
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
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rIF], a
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
    ldh [rP1], a
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
    cp $00
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
    rst $38
    ldh [rP1], a
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
    rst $38
    rst $38
    rst $20
    rlca
    rrca
    ld a, a
    ld a, a
    ld [bc], a
    ld a, a
    ld bc, $006f
    ccf
    cp $08
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
    rra
    rst $38
    db $fd
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    jr nc, jr_031_54c2

jr_031_54c2:
    nop
    rra
    rst $38
    rst $38
    ld bc, $0080
    inc bc
    rst $38
    rst $38
    pop hl
    call z, Boot
    rst $38
    rst $38
    ldh a, [$e7]
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$73

jr_031_54da:
    add b
    ld [$ff7f], sp
    ldh a, [$63]
    ld [$ff08], sp
    rst $38
    add b
    add $30
    add hl, sp
    rst $38
    db $fc
    inc bc
    inc e
    ld h, e
    rst $38
    rst $38
    add b
    inc c
    ld [hl], c
    adc a
    rst $38
    adc $00
    ld [hl], c
    adc [hl]
    ld a, a
    rst $38
    ldh a, [rSB]
    adc h
    ld [hl], e
    rst $38
    rst $38
    add b
    inc c
    ld h, e
    rra
    rst $38
    ld hl, sp-$80
    ld h, e
    jr @+$01

    ei
    call z, Call_000_1803
    rst $00
    rst $30
    sbc $40
    jr jr_031_54da

    ld a, a
    cp [hl]
    ld a, [c]
    nop
    add $39
    db $fc
    rst $30
    sub b
    ld b, $31
    rst $08
    rst $20
    cp h
    add b
    ld sp, $77ce
    dec a
    db $e4
    ld bc, $738e
    cp c
    rst $28
    jr nz, jr_031_5533

    ld sp, $ef9d
    ld a, c

jr_031_5533:
    nop
    ld hl, $6f8e
    ld a, c
    db $ec
    ld bc, $738c
    add hl, sp
    rst $28
    ld h, b
    inc b
    ld sp, $cf9d
    ld a, c
    db $10
    ld hl, $6f8e
    ld a, c
    db $ec
    nop
    adc [hl]
    ld [hl], e
    cp c
    rst $08
    ld h, d
    inc b
    ld sp, $cf9d
    ld a, e

jr_031_5555:
    db $10
    ld bc, $6f8e
    ld a, c
    ret z

    add b
    adc h
    ld [hl], e
    ld a, c
    rst $08
    ld b, [hl]
    inc b

jr_031_5562:
    ld [hl], e
    sbc a
    adc $7b
    jr nc, jr_031_558b

    sbc h

jr_031_5569:
    sbc $73
    pop de
    add e

jr_031_556d:
    jr jr_031_5555

    rst $30
    sbc [hl]
    adc b
    db $10
    add $77
    dec a
    db $e4
    ld b, c

jr_031_5578:
    adc h
    ld [hl], e
    ld a, c
    rst $08
    inc b
    jr jr_031_5562

    scf
    sbc h
    ld hl, sp+$61
    add [hl]
    inc sp
    ld a, c
    rst $28
    add [hl]
    jr jr_031_556d

    inc sp

jr_031_558b:
    sbc h
    db $f4
    ld h, c
    adc h
    ld [hl], a
    ld a, e
    rst $08
    ret nz

    ld sp, $67c6
    dec a
    db $ec
    ld [bc], a
    jr jr_031_5569

    rst $30
    rst $38
    nop
    ld b, d
    add hl, de
    rst $18
    rst $38
    ldh a, [rNR23]
    add $37
    rst $38
    xor $06
    ld sp, $efcf
    db $fd
    add c
    adc h
    ld h, e
    ld a, a
    cp $60
    ld h, e
    jr @-$1f

    rst $38
    sbc b

jr_031_55b8:
    ld de, $7f8c
    rst $38
    db $ec
    ld [$1f43], sp
    cp $f2
    inc b
    ld h, e
    rra
    rst $38
    ld a, b
    inc b
    ld sp, $ff8f
    ld a, b
    add h
    ld sp, $ff8f
    cp b
    inc b
    ld h, c
    adc a
    rst $38
    jr c, jr_031_55d7

jr_031_55d7:
    ld h, e
    rrca
    rst $38
    ld a, b
    nop
    rst $00
    rra
    rst $38
    ldh a, [$61]
    add h
    ccf
    rst $38
    ldh a, [$c2]
    ld [$ffff], sp
    db $e3
    ld [$ff21], sp
    rst $38
    adc h
    jr nz, jr_031_55b8

    rst $38
    db $e4
    jr nz, jr_031_5578

    rra
    rst $38
    add b
    nop
    inc c
    rst $38
    cp $00
    nop
    inc sp
    rst $38
    ld hl, sp+$08
    nop
    rlca
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    rst $38
    rst $38
    or $00
    nop
    rst $38
    rst $38
    ei
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    ld de, $ffff
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $18
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    or $00
    nop
    ccf
    rst $38
    rst $38
    sbc b
    nop
    nop
    rla
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $20
    add b
    nop
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $09
    inc bc
    stop
    rra
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    inc c
    ccf
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
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ff7f
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffff
    ld a, [$0000]
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc bc
    cp a
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    cp $40
    nop
    nop
    nop
    ld bc, $ff9f
    db $fc
    nop
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    nop
    inc bc
    cp a
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld [bc], a
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ff07
    rst $38
    ldh [rP1], a
    nop
    nop
    ld de, $ffff
    ret nz

    nop
    nop
    inc bc
    cp a
    rst $38
    ld hl, sp+$00
    nop
    nop
    dec a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld h, a
    rst $38
    rst $38
    jr nz, jr_031_5a94

jr_031_5a94:
    nop
    ld c, $7f
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, e
    rst $38
    rst $38
    jr jr_031_5aa1

jr_031_5aa1:
    nop
    ld bc, $ff9f
    db $fd
    ret nz

    nop
    nop
    add hl, de
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rst $00
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [bc], a
    ccf
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
    nop
    ld c, a
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
    ld [bc], a
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffbf
    rst $38
    ret nz

    nop
    nop
    nop
    rst $20
    inc e
    ld a, a
    rst $38
    rst $38
    and $be
    ret nc

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    cp $00
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
    add sp, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_5b94:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_031_5bb5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    xor a
    add e
    jp $e1e3


    ldh a, [$f8]
    ld [hl], b
    jr c, jr_031_5b94

    pop bc
    di
    add c
    ret nz

    ret


    ld hl, sp-$66
    dec de
    ld c, $47
    or c
    and $a1
    add c
    add sp, $1f
    inc e
    ld a, [hl]
    ld a, a
    scf
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    db $fc
    ld [bc], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    ret nz

    ld bc, $00ff
    nop
    rra
    rst $38
    ld hl, sp+$00
    ccf
    ld hl, sp+$00
    ld bc, $feff
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    ldh [rP1], a
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    add b
    inc bc
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    ret nz

    inc bc
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    ldh [rSB], a
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    cp $00
    ccf
    ld hl, sp+$00
    rra
    ldh [rP1], a
    rst $38
    ld hl, sp+$01
    rst $38
    ldh [rP1], a
    rst $38
    nop
    nop
    rst $38
    ldh a, [$03]
    rst $38
    ldh [rSB], a
    ldh a, [$60]
    nop
    rst $38
    ldh a, [rTAC]
    rst $38
    ret nz

    rlca
    cp $00
    ld bc, $f0ff
    inc bc
    rst $38
    ldh a, [rSB]
    ldh [rP1], a
    nop
    ld a, a
    ldh a, [rTAC]
    rst $38
    ret nz

    nop
    ld hl, sp+$00
    nop
    rra
    cp $00
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rra
    rst $38
    nop
    ld a, a
    db $fc
    nop
    jr nz, jr_031_5caa

jr_031_5caa:
    ld a, $07
    rst $38
    add b
    ccf
    cp $00
    nop
    nop
    nop
    ld bc, $c0ff
    rrca
    rst $38
    nop
    rra
    ret nz

    nop
    inc bc
    rst $38
    ret nz

    rra
    cp $00
    ld a, a
    nop
    nop
    rrca
    rst $38
    add b
    ld a, a
    ld hl, sp+$01
    db $fc
    nop
    nop
    rra
    rst $38
    nop
    ld a, a
    ld hl, sp+$01
    ld hl, sp+$00
    nop
    ccf
    db $fc
    nop
    rst $38
    ld hl, sp+$07
    ldh a, [rP1]
    nop
    rst $38
    ldh a, [rSB]
    rst $38
    ldh [rIF], a
    ldh [rP1], a
    inc bc
    rst $38
    ret nz

    inc bc
    rst $38
    ldh [$3f], a
    add b
    nop
    rrca
    rst $38
    add b
    rrca
    rst $38
    add b
    ld a, a
    add b
    nop
    ccf
    cp $00
    ccf
    rst $38
    nop
    db $fc
    nop
    nop
    ld a, a
    ld hl, sp+$00
    ld a, a
    cp $00
    nop
    nop
    ld bc, $f0ff
    nop
    rst $38
    cp $00
    nop
    nop
    ld bc, $f0ff
    nop
    rst $38
    cp $00
    nop
    nop
    ld bc, $f0ff
    nop
    ld a, a
    rst $38
    add b
    nop
    nop
    ld bc, $f8ff
    nop
    ld a, a
    rst $38
    ret nz

    nop
    nop
    ld bc, $fcff
    nop
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    cp $00
    rrca
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    add b
    ld bc, $ffff
    nop
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    cp $00
    rlca
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [$c3]
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ld bc, $0040
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
    nop
    nop
    rra
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
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    push de
    ld [hl], l
    ld d, b
    add sp, $02
    dec d
    ld e, c
    ld d, [hl]
    dec [hl]
    ld d, l
    inc [hl]
    xor c
    ld c, d
    xor d
    xor l
    ld l, d
    xor d
    and c
    ld d, l
    ld e, e
    ld d, l
    ld a, $a5
    ld c, d
    xor d
    ld l, c
    ld d, d
    xor c
    ld d, [hl]
    and l
    ld l, d
    or l
    sub [hl]
    sbc d
    ld d, l
    ld c, b
    jp nc, Jump_031_5bb5

    dec l
    ld c, c
    or l
    ld l, e
    ld d, l
    xor c
    ld d, d
    or l
    xor d
    ld c, d
    sub d
    sub [hl]
    push de
    ld d, l
    add hl, hl
    ld l, e
    dec l
    xor d
    jp nc, $d392

    xor c
    ld c, l
    ld l, [hl]
    sub l
    or d
    jp nc, Jump_031_6bb5

    ld l, c
    ld l, e
    ld c, e
    ld l, l
    ld a, [hl+]
    dec l
    and l
    or l
    and l
    dec h
    xor l
    add hl, hl
    ld e, d
    ld c, e
    ld c, c
    ld c, d
    ld e, d
    ld e, d
    xor c
    ld e, e
    sub h
    and l
    inc [hl]
    and l
    and l
    add hl, hl
    ld l, e
    ld c, c
    inc h
    or h
    sbc d
    ld e, e
    ld c, l
    or h
    sub d
    ld e, c
    ld d, d
    sub [hl]
    or l
    add hl, hl
    sub [hl]
    or h
    and l
    ld l, e
    dec h
    or [hl]
    sub l
    xor l
    or h
    ld c, l
    and h
    or d
    sbc e
    ld l, $a9
    xor h
    xor l
    ld [hl], $9a
    xor l
    ld c, d
    jp c, $b45a

    sub d
    ld e, l
    dec h
    sbc d
    xor d
    sbc e
    ld c, d
    ld d, d
    ld e, e
    inc h
    or h
    ld [hl], l
    db $d3
    ld l, l
    or e
    ld e, l
    ld l, c
    ld h, $00
    ld de, $9f6d
    rst $38
    ei
    rst $28
    or h
    add h
    ld bc, $9f04
    rst $38
    rst $38
    rst $38
    push bc
    jr nz, jr_031_5f86

jr_031_5f86:
    nop
    inc b
    cp a
    rst $38
    rst $38
    rst $38
    jr nz, jr_031_5f92

    nop
    nop
    rrca
    rst $38

jr_031_5f92:
    rst $38
    rst $38
    xor b
    nop
    ld bc, $4f00
    rst $38
    rst $38
    rst $38
    reti


    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    sub b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    daa
    rst $38
    rst $38
    cp $20
    nop
    nop
    rlca
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
    rrca
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
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    rst $38
    or $00
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
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
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
    nop
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
    db $fc
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
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
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
    nop
    rra
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
    ret nz

    nop
    nop
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $ffff
    ld hl, sp+$00
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
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rrca
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
    ldh [rP1], a
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    inc c
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    rlca
    ldh [rP1], a
    ld bc, $ffff
    ld hl, sp+$00
    inc bc
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    db $fc
    nop
    ld b, $fe
    nop
    nop
    rra
    rst $38
    rst $38
    add b
    ld bc, $80bf
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    ld c, [hl]
    ld [hl], b
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    ld bc, $008e
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    ld a, e
    ret nz

    nop
    ld bc, $ffff
    ldh a, [rP1]
    rrca
    ld hl, sp+$00
    nop
    ccf
    rst $38
    rst $38
    nop
    ld bc, $80ff
    nop
    ld bc, $ffff
    ldh a, [rP1]
    rra
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    rlca
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    inc e
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    jr nc, jr_031_611f

jr_031_611f:
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    jr nz, jr_031_6128

jr_031_6128:
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    inc hl
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ld hl, sp+$00
    ld bc, $c0ff
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $c0ff
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $c0ff
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
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
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    rrca
    cp $00
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    ret nz

    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    ld a, a
    ld hl, sp+$00
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $f0ff
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ccf
    db $fc
    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $f0ff
    nop
    ld bc, $ffff
    cp $00
    nop
    rra
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    cp $00
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    cp $00
    nop
    ld bc, $ffff
    cp $00
    nop
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
    rra
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    ld bc, $fcff
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    rra
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
    ccf
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    ccf
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    rlca
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, h
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
    rra
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    cp $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rrca
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
    inc bc
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
    ld bc, $ffff
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rrca
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
    ld bc, $ffff
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
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
    inc bc
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    cp $00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld bc, $fcff
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
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ret nz

jr_031_636f:
    nop
    ld bc, $00ff
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
    ld a, a
    ld a, b
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
    rst $38
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
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
    nop
    rra
    add hl, de
    ld a, a
    ld a, a
    ld [bc], a
    rst $18
    ld bc, $016f
    rst $38
    rst $38
    db $fd
    and l
    ld l, h
    sub l
    sbc e
    ld a, e
    ld h, e
    add hl, hl
    ld h, l
    inc h
    ld a, [hl+]
    and d
    ld c, d
    adc c
    inc c
    add hl, hl
    ld b, l
    add hl, hl
    ld b, h
    xor l
    ld d, h
    and l
    and h
    ld c, e
    ld c, d
    sub [hl]
    jr z, jr_031_636f

    sub [hl]
    sbc b
    sub d
    sub h
    sub e
    dec hl
    ld h, l
    or [hl]
    sub d
    ld a, [hl+]
    jp c, Jump_031_522a

    bit 5, e
    inc l
    sbc e
    ld l, c
    ld l, e
    ld e, e
    ld l, c
    call z, Call_031_49b5
    add hl, hl
    dec l
    ld d, d
    or d
    ret


    ld e, c
    ld d, h
    xor c
    ld l, h
    or h
    xor d
    ld e, c
    db $d3
    ld e, d
    db $db
    ld c, c
    ld a, e
    ld c, [hl]
    jp c, Jump_031_6855

    jp c, Jump_000_2649

    ld c, c
    or [hl]
    xor l
    ld h, h
    sub d
    add hl, hl
    ld [hl], $59
    inc h
    adc d
    reti


    sub d
    ld b, [hl]
    and a
    ld c, c
    sub [hl]
    ld c, l
    or d
    ld l, d
    ld e, c
    ld [hl-], a
    ld c, c
    ld [hl], $89
    inc h
    ld h, l
    or e
    ld [hl], $a6
    sbc e
    ld d, d
    sub $c9
    or h
    ret


    ld h, $89
    sub $a4
    sub e
    ld h, [hl]
    reti


    inc sp
    ld [hl], $cd
    and l
    and h
    adc c
    ld l, h
    reti


    ld [hl], $6d
    or d
    ld c, l
    sbc l
    or h
    reti


    or d
    ld c, c
    or d
    ld h, d
    ld h, h
    call z, Call_031_6995
    ld h, [hl]
    db $76
    ld h, [hl]
    ld l, l
    sub e
    ld l, [hl]
    ret


    sbc d
    ld e, [hl]
    adc h
    ret


    ld [hl-], a
    ld h, h
    ld c, d
    ld b, [hl]
    jp nc, $986d

    db $db
    ld [hl], $69
    or h
    db $db
    ld [hl], $4d
    sub d
    ld h, [hl]
    ld h, h
    adc $4a
    reti


    ld c, [hl]
    ld h, [hl]
    jp z, $63d9

    ld [hl-], a
    call Call_000_3692
    call $3693
    ld l, l
    sbc c
    ld d, d
    ld c, h
    or d
    ld h, l
    sbc e
    dec h
    ld c, h
    reti


    or e
    ld a, [hl+]
    sub e
    inc l
    sub e
    daa
    dec de
    inc h
    reti


    inc [hl]
    call z, $339b
    inc c
    call nc, $c69a
    ld e, b
    ld [hl], e
    ld d, $d9
    sbc d
    ld c, l
    call z, $a4dc
    and $64
    add $46
    ld h, [hl]
    call Call_000_3393
    ld h, [hl]
    ld h, a
    inc l
    call c, $74b3
    pop de
    add hl, hl
    sub $cd
    dec de
    db $ed
    ld l, a
    db $fc
    ei
    ld a, b
    ld hl, sp-$08
    ldh a, [$e1]
    ld sp, hl
    sub c
    jp $c7c4


    rlca
    adc h
    ld c, a
    dec b
    ld hl, sp+$1f
    ret nz

    call z, $78c7
    add hl, sp
    ld hl, sp-$19
    db $e3
    sub e
    adc [hl]
    adc $3b
    jr c, @-$32

    jp $0c33


    call z, Call_031_7173
    call $27c7
    inc e
    sbc h
    db $76
    ld [hl], c
    sbc c
    adc [hl]
    ld l, [hl]
    add hl, sp
    cp b
    db $e4
    db $e3
    or e
    adc h
    call z, Call_031_7173
    call Call_031_67c7
    add hl, de
    cp b
    ld h, [hl]
    db $e3
    or e
    adc [hl]
    adc $33
    ld sp, $c7cd
    ld h, a
    dec e
    sbc b
    and $e3
    cp e
    adc [hl]
    call z, Call_031_7173
    db $dd
    add a
    ld l, [hl]
    dec sp
    cp b
    db $ed
    rst $00
    rst $30
    rra
    cp b
    cp $e3
    di
    rra
    call c, $e37e
    ei
    adc a
    call c, $e17f
    rst $38
    adc a
    db $fc
    ccf
    pop af
    rst $38
    add a
    db $fc
    ccf
    pop af
    rst $38
    add a
    cp $3f
    ldh a, [rIE]
    add a
    cp $1f
    ldh a, [rIE]
    rst $00
    cp $1f
    ldh a, [rIE]
    jp $1ffe


    ld hl, sp+$7f
    jp $1ffe


    ld hl, sp+$7f
    jp Jump_000_0ffe


    ld hl, sp+$7f
    pop bc
    rst $38
    rrca
    ld hl, sp+$3f
    pop bc
    rst $38
    rlca
    ld hl, sp+$3f
    ret nz

    rst $38
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    inc bc
    db $fc
    rra
    ldh [$7f], a
    add e
    db $fc
    rrca
    ldh a, [$7f]
    add c
    cp $07
    ldh a, [$3f]
    ret nz

    cp $07
    ld hl, sp+$1f
    ldh [rIE], a
    inc bc
    db $fc
    rrca
    ldh [$7f], a
    add c
    db $fc
    rrca
    ldh a, [$3f]
    add c
    cp $07
    ldh a, [$3f]
    ret nz

    cp $07
    ld hl, sp+$1f
    ret nz

    rst $38
    inc bc
    ld hl, sp+$1f
    ldh [$7f], a
    inc bc
    db $fc
    rrca
    ldh [$7f], a
    add c
    db $fc
    rrca
    ldh [$3f], a
    add c
    db $fc
    rlca
    ldh a, [$3f]
    add b
    cp $07
    ldh a, [$3f]
    ret nz

    cp $07
    ldh a, [$1f]
    ret nz

    cp $03
    ld hl, sp+$1f
    ret nz

    cp $03
    ld hl, sp+$1f
    ret nz

    rst $38
    inc bc
    ld hl, sp+$1f
    ret nz

    ld a, a
    inc bc
    ld hl, sp+$1f
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ldh [$7f], a
    inc bc
    ld hl, sp+$0f
    ldh [$7f], a
    inc bc
    ld hl, sp+$0f
    ldh [$7f], a
    inc bc
    ld hl, sp+$0f
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    ld a, a
    inc bc
    ld hl, sp+$1f
    ret nz

    rst $38
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $03
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$1f]
    ret nz

    cp $07
    ldh a, [$3f]
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
    ldh [$3f], a
    add c
    db $fc
    rrca
    ldh [$7f], a
    inc bc
    ld hl, sp+$0f
    ldh [$7f], a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $03
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$3f], a
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
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$1f]
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

    ld a, a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$3f], a
    add c
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

    cp $03
    ldh a, [$1f]
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
    ldh a, [$3f]
    add b
    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rrca
    ldh [$3f], a
    add c
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

    cp $07
    ldh a, [$1f]
    add b
    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ldh [$3f], a
    add c
    db $fc
    rrca
    ldh [$7f], a
    ld bc, $0ff8
    ret nz

    ld a, a
    inc bc
    ld hl, sp+$1f
    ret nz

    cp $03
    ldh a, [$1f]
    ret nz

    cp $07
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ldh [$3f], a
    add c
    db $fc
    rrca
    ldh [$7f], a
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
    db $fc
    rlca
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ldh [$3f], a
    add c
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
    ldh [$7f], a
    ld bc, $0ffc
    ldh [$3f], a
    ld bc, $0ffc
    ldh [$3f], a
    add c
    db $fc
    rlca
    ldh a, [$3f]
    add b
    db $fc
    rlca
    ldh a, [$1f]
    add b
    cp $03
    ldh a, [$1f]
    ret nz

    ld a, [hl]
    inc bc
    ld hl, sp+$1f
    ret nz

    ld a, a
    ld bc, $0ff8
    ldh [$3f], a
    add c
    db $fc
    rlca
    ldh a, [$1f]
    ret nz

    ld a, [hl]
    inc bc
    ld hl, sp+$0f
    ldh [$3f], a
    ld bc, $07fc
    ldh a, [$1f]
    ret nz

    ld a, [hl]
    ld bc, $0ff8
    ldh [$3f], a
    add b
    db $fc
    rlca
    ldh a, [$1f]
    add b
    cp $03
    ld hl, sp+$0f
    ret nz

    ld a, a
    ld bc, $07fc
    ldh [$1f], a
    add b
    ld a, [hl]
    inc bc
    ld hl, sp+$0f
    ldh [$3f], a
    add b
    db $fc
    inc bc
    ldh a, [$1f]
    ret nz

    ld a, a
    ld bc, $07fc
    ldh a, [$1f]
    ret nz

    ld a, [hl]
    ld bc, $0ff8
    ldh [$3f], a
    add b
    cp $03
    ldh a, [rIF]
    ret nz

    ccf
    ld bc, $07fc
    ldh a, [$1f]
    ret nz

    ld a, a
    ld bc, $03fc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    add b
    ld a, [hl]
    ld bc, $03fc
    ldh a, [rIF]
    ret nz

    ccf
    add b
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    nop
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    nop
    ld a, [hl]
    ld bc, $03f8
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ccf
    nop
    db $fc
    ld bc, $07f8
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop
    db $fc
    ld bc, $07f8
    ldh a, [rIF]
    ret nz

    rra
    add b
    ccf
    nop
    cp $01
    ld hl, sp+$03
    ldh a, [rTAC]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a

Call_031_67c7:
    nop
    cp $01
    ld hl, sp+$03
    ldh a, [$1f]
    ldh [rIF], a
    ret nz

    ld a, a
    add b
    rst $38
    inc bc
    cp $02
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR31]
    ldh a, [rTAC]
    ldh [$2f], a
    ret nz

    rrca
    ret nz

    rra
    add b
    ccf
    ld bc, $02fe
    ld a, [hl]
    nop
    cp $00
    db $fc
    ld bc, $03fc
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh [rIF], a
    ldh [$1f], a
    ret nz

    rra
    ret nz

    ld a, a
    nop
    ccf
    add c
    db $fc
    nop
    ld a, [hl]
    inc bc
    ld hl, sp+$01
    db $fc
    rlca
    ldh a, [rTAC]
    ldh a, [$3f]
    add b
    ccf
    ld bc, $00fc
    ld a, a
    inc bc
    ld hl, sp+$03
    ldh a, [$3f]
    add b
    adc a
    ret nz

    ld sp, hl
    db $fc
    rlca
    ldh a, [$3f]
    add c
    db $fc
    rlca
    ld hl, sp+$0f
    add c
    ld hl, sp+$3f
    add c
    db $fc
    rrca
    ret nz

    rra
    add b
    ld hl, sp+$1f
    ld bc, $1ff8
    ret nz

    db $fc
    ld c, $1f
    add b
    ccf
    ld bc, $00fe
    cp $07
    ld hl, sp+$00
    db $fc
    inc bc
    ldh a, [$1f]
    ldh [rTAC], a
    ldh [$3f], a
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop

Jump_031_6855:
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    ld bc, $01f8
    ld hl, sp+$03
    ld hl, sp+$03
    ldh a, [rTAC]
    ldh [rTAC], a
    ldh [rIF], a
    ret nz

    rrca
    ret nz

    rra
    add b
    rst $38
    add b
    cp a
    ld bc, $003f
    ccf
    nop
    ld a, [hl]
    ld [bc], a
    db $fc
    ld b, $fc
    inc b
    db $fc
    ld bc, $01f8
    ld hl, sp+$0b
    ldh a, [rNR13]
    ldh a, [rNR13]
    ldh a, [$33]
    ldh a, [rTAC]
    ldh [rIF], a
    ldh [$6f], a
    ret nz

    ld l, a
    ret nz

    rrca
    ret nz

    ld a, a
    add c
    adc a
    ret nz

    rra
    add b
    ccf
    add c
    rst $38
    ld bc, $80bf
    ccf
    ld bc, $01bf
    ccf
    ld bc, $033e
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    ld b, $3f
    inc bc
    ld a, [hl]
    nop
    ld a, [hl]
    inc bc
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    add b
    ccf
    nop
    ccf
    add b
    ccf
    add b
    ccf
    add b
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rrca
    ldh [rIF], a
    ldh [rIF], a
    ldh [rTAC], a
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rNR13]
    ld hl, sp+$11
    db $fc
    add hl, bc
    db $fc
    inc c
    cp $04
    rst $38
    ld b, $7f
    inc bc
    ccf
    add e
    rra
    ret nz

    rrca
    ldh [$cf], a
    ldh a, [$e7]
    ld hl, sp+$71
    db $fc

jr_031_6904:
    jr c, jr_031_6904

jr_031_6906:
    jr jr_031_6906

    inc c
    ld a, a
    rlca
    rra
    jp $c11f


    adc a
    ldh [$e3], a
    ld hl, sp+$71
    db $fc

jr_031_6915:
    jr c, jr_031_6915

    inc e
    ccf
    ld c, $1f
    add e
    add a
    pop hl
    rst $00
    ldh a, [$f1]
    ld hl, sp+$38
    ld a, [hl]
    inc e
    ccf
    rlca
    rlca
    jp $f087


    db $e3
    ld hl, sp+$78
    ld a, [hl]
    inc e
    ccf
    rlca
    rrca
    jp $f0c3


    pop hl
    ld hl, sp+$3c
    ld a, $1e
    rrca
    add e
    adc a
    pop bc
    pop hl
    ld hl, sp+$78
    ld a, [hl]
    inc e
    ccf
    rrca
    add a
    db $e3
    jp $f0f0


    db $fc
    inc a
    rra
    adc [hl]
    rra
    add e
    ldh [$f8], a
    ldh a, [$f8]
    inc a
    ld a, $0f
    add c
    ld hl, sp+$07
    ldh [$fc], a
    rrca
    ldh [$7e], a
    rlca
    ret nz

    ld a, a
    add e
    ldh a, [$3e]
    rlca
    cp $07
    ldh a, [$1f]
    add c
    ld hl, sp+$0f
    add e
    ld hl, sp+$3e
    ld c, $07
    ldh a, [$7e]
    rrca
    pop hl
    ld hl, sp+$3f
    inc bc
    ld hl, sp+$1f
    add c
    ldh [$f8], a
    rra
    rlca
    pop hl
    ldh [$7e], a
    rrca
    ret nz

    db $fc
    rlca
    ldh a, [$1f]
    ret nz

    ccf
    inc bc
    ldh a, [$1f]
    add e
    ldh a, [$3f]
    ret nz

    ld a, [hl]
    inc bc

Call_031_6995:
    ldh a, [$3f]
    ld bc, $07fc
    ld hl, sp+$07
    ldh [$7e], a
    rrca
    ldh a, [$7f]
    rlca
    add e
    ld hl, sp+$0f
    ret nz

    ldh a, [$3f]
    ld bc, $1ff8
    rlca
    ldh [$3f], a
    inc bc
    ldh [$fe], a
    rlca
    ldh [$fc], a
    rrca
    ldh [$7e], a
    rlca
    ret nz

    cp $0f
    ret nz

    db $fc
    rra
    ret nz

    ld hl, sp+$1f
    add c
    ld hl, sp+$1f
    inc bc
    ldh a, [$1f]
    add b
    db $fc
    rrca
    add e
    rst $00
    add e
    ldh a, [rIF]
    ret nz

    ld hl, sp+$1f
    add c
    ld hl, sp+$1f
    inc bc
    ldh a, [$3f]
    inc bc
    ldh [$fc], a
    inc bc
    ldh a, [$3c]
    rra
    add b
    ld a, [hl]
    rlca
    add e
    ldh a, [$1f]
    add c
    ldh a, [$7e]
    inc bc
    ldh [$7c], a
    rrca
    ret nz

    db $fc
    rrca
    add e
    ldh [$3f], a
    inc bc
    ldh [$fc], a
    rlca
    ret nz

    ld hl, sp+$3f
    ld bc, $3ef8
    rrca
    ret nz

    ld a, [hl]
    rrca
    pop bc
    ld hl, sp+$1f
    add c
    ldh a, [$fc]
    inc bc
    ldh a, [$3c]
    db $fc
    jr @-$02

    ld c, $3f
    ld b, $3f
    inc bc
    rra
    add e
    adc a
    ret nz

    add a
    ldh [$e3], a
    ldh a, [$61]
    ld hl, sp+$38
    db $fc
    ld [$0efc], sp
    ccf
    ld b, $3f
    rlca
    rra
    add c
    rst $08
    ret nz

    rst $08
    ret nz

    db $e3
    ldh a, [$73]
    ld hl, sp+$31
    ld hl, sp+$19
    db $fc
    inc c
    ld a, [hl]
    inc b
    ld a, a
    rlca
    ccf
    ld b, $0f
    ret nz

    rst $18
    ret nz

    rst $08
    ldh [$63], a
    ldh a, [rNR42]
    ld hl, sp+$03
    ld hl, sp+$18
    db $fc
    nop
    cp $0e
    ld a, a
    ld [bc], a
    ccf
    inc bc
    rra
    add b
    rra
    add c
    rst $18
    ret nz

    rrca
    ldh [$6f], a
    ldh [$03], a
    ldh a, [$37]
    ldh a, [$33]
    ld hl, sp+$19
    ld hl, sp+$08
    db $fc
    nop
    db $fc
    inc c
    cp $06
    ld a, [hl]
    ld [bc], a
    ld a, a
    inc bc
    ccf
    inc bc
    cp a
    add c
    sbc a
    add c
    sbc a
    add c
    rst $38
    ret nz

    rst $08
    ret nz

    rrca
    ldh [$7f], a
    ldh [$67], a
    ldh [$67], a
    ldh [rNR44], a
    ldh a, [$3f]
    ldh a, [$33]
    ldh a, [rNR31]
    ld hl, sp+$19
    ld hl, sp+$19
    ld hl, sp+$1f
    ld hl, sp+$09
    ld hl, sp+$0f
    ld hl, sp+$0d
    ld hl, sp+$09
    ld hl, sp+$0d
    ld hl, sp+$0d
    ld hl, sp+$09
    ld hl, sp+$0d
    ld hl, sp+$01
    ld hl, sp+$0d
    ld hl, sp+$0d
    ld hl, sp+$09
    ld hl, sp+$1f
    ld hl, sp+$13
    ldh a, [rNR31]
    ldh a, [rNR13]
    ldh a, [$03]
    ldh [$3f], a
    ldh [rTAC], a
    ldh [$7f], a
    ret nz

    rlca
    ret nz

    ld l, a
    ret nz

    rst $08
    add b
    rst $08
    add b
    rst $38
    add c
    sbc a
    ld bc, $01ff
    ccf
    inc bc
    cp $02
    ld a, [hl]
    rlca
    db $fc
    inc b
    db $fc
    rrca
    ld hl, sp+$0d
    ld hl, sp+$1f
    ldh a, [rNR31]
    ldh a, [$3f]
    ldh [$37], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    ld bc, $01ff
    ld a, [hl]
    inc bc
    db $fc
    ld b, $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [rNR31]
    ldh a, [rNR22]
    ldh [$37], a
    ldh [$7f], a
    ret nz

    ld e, a
    add b
    rst $38
    ld bc, $01bf
    ld a, [hl]
    inc bc
    db $fc
    inc b
    db $fc
    dec b
    ld hl, sp+$0f
    ldh a, [rNR22]
    ldh [$3f], a
    ldh [$2f], a
    ret nz

    ld e, a
    add b
    cp a
    ld bc, $00fe
    db $fc
    nop
    db $fc
    ld bc, $03f8
    ldh a, [rTAC]
    ldh [$2f], a
    ret nz

    ld e, a
    add b
    cp a
    ld bc, $027e
    ld a, h
    rlca
    ld hl, sp+$0f
    ldh a, [rNR31]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $03fe
    cp $07
    db $fc
    rrca
    ldh a, [rNR31]
    ldh a, [$3f]
    ldh [$3f], a
    ret nz

    rst $38
    add b
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ldh a, [rIF]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    cp $01
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $03fc
    ld hl, sp+$0f
    ldh a, [$1f]
    ret nz

    ccf
    add b
    rst $38
    ld bc, $03fc
    ld hl, sp+$0f
    ldh [$1f], a
    ret nz

    ld a, a
    add b
    cp $01
    db $fc
    rlca
    ldh a, [rIF]
    ldh [$3f], a
    add b
    ld a, a
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ld a, a
    nop
    cp $03
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    nop
    ld a, [hl]
    ld bc, $07f8
    ldh [$1f], a
    ret nz

    ccf
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf

Jump_031_6bb5:
    nop
    cp $03
    ld hl, sp+$0f
    ldh [$1f], a
    ret nz

    ld a, a
    nop
    db $fc
    inc bc
    ld hl, sp+$0f
    ldh [$1f], a
    add b
    ld a, [hl]
    ld bc, $03fc
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, [hl]
    ld bc, $07f8
    ldh a, [rIF]
    ret nz

    ccf
    nop
    cp $03
    ld hl, sp+$0f
    ldh [$1f], a
    add b
    ld a, a
    ld bc, $03fc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    db $fc
    inc bc
    ld hl, sp+$0f
    ldh [$3f], a
    add b
    ld a, [hl]
    ld bc, $07f8
    ldh [$1f], a
    add b
    ccf
    ld bc, $07f8
    ldh [$3f], a
    add b
    db $fc
    rlca
    ld hl, sp+$0f
    ldh [$3f], a
    ld bc, $07fc
    ldh a, [$1f]
    ret nz

    rst $38
    add b
    ld a, $03
    ld hl, sp+$07
    ret nz

    ld a, a
    nop
    db $fc
    rlca
    ldh [$67], a
    ldh [$3f], a
    nop
    db $fc
    rlca
    ldh [rIF], a
    add b
    cp $07
    ld hl, sp+$0f
    ldh [$3e], a
    rlca
    ldh [$3f], a
    ret nz

    cp $07
    ldh a, [$7c]
    ccf
    inc bc
    ldh a, [rIF]
    ret nz

    ld a, a
    nop
    db $fc
    rlca
    ldh [$7e], a
    rlca
    ld hl, sp+$07
    ldh [$fc], a
    rra
    rlca
    ldh [$7e], a
    ld bc, $0ff8
    ldh [$3f], a
    add b
    db $fc
    rlca
    ldh a, [$3f]
    ret nz

    ld a, a
    ret nz

    ccf
    nop
    ld hl, sp+$0f
    ret nz

    rst $38
    ld bc, $1ef8
    rrca
    ret nz

    ld hl, sp+$07
    ldh [$7f], a
    inc bc
    cp $03
    ldh [$78], a
    rrca
    ret nz

    ld a, [hl]
    rlca
    ldh [$1f], a
    ld bc, $1ff8
    ret nz

    ccf
    ld bc, $c7e3
    ld bc, $07fc
    ldh [$7f], a
    nop
    db $fc
    rrca
    ldh [$f0], a
    db $fc
    rrca
    ldh [rIF], a
    add b
    cp $03
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh [$1f], a
    ld bc, $1ff8
    ldh [$7e], a
    rra
    add c
    db $fc
    ld bc, $0ff8
    ret nz

    rrca
    add b
    cp $00
    ld a, h
    rlca
    ld hl, sp+$0f
    ldh [$7f], a
    add b
    rst $08
    ret nz

    ld a, [hl]
    nop
    db $fc
    ld bc, $0ff8
    ret nz

    ld a, a
    ld bc, $80ef
    db $fc
    nop
    ld a, h
    ld bc, $0ff8
    ret nz

    ld a, a
    ld bc, $80ef
    db $fc
    nop
    ld a, h
    inc bc
    ld hl, sp+$0f
    ret nz

    ld a, a
    add c
    rst $20
    ldh [$7e], a
    nop
    ld a, h
    nop
    db $fc
    rlca
    ldh [$3f], a
    ret nz

    di
    ldh [$3f], a
    ld bc, $037e
    ccf
    inc bc
    ldh a, [$1f]
    ldh [$3c], a
    ld hl, sp+$1f
    add b
    rst $38
    add c
    rst $20
    ret nz

    db $fc
    rlca
    db $fc
    rrca
    ld a, $03
    ldh a, [$3f]
    ldh [$78], a
    ld hl, sp+$1f
    add b
    rst $38
    add c
    db $e3
    ldh [$7e], a
    rlca
    db $fc
    rrca
    adc a
    add c
    ld hl, sp+$1f
    ldh a, [$3c]
    ld a, $07
    ldh [$7f], a
    ret nz

    ldh a, [$f8]
    rra
    add b
    rst $38
    ld bc, $f0c3
    ccf
    inc bc
    cp $0f
    add a
    ret nz

    db $fc
    rlca
    ld hl, sp+$1e
    rra
    add c
    ld hl, sp+$0f
    ldh a, [$38]
    db $fc
    rrca
    ret nz

    rst $38
    ret nz

    ldh a, [$fc]
    rra
    add b
    cp $00
    db $fc
    rlca
    ldh [$7f], a
    ret nz

    ld hl, sp+$1f
    ld bc, $00fe
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ldh [$61], a
    ldh a, [$3f]
    add b
    ld hl, sp-$04
    inc bc
    ldh a, [$3f]
    add b
    rst $38
    ret nz

    rlca
    ret nz

    ld a, [hl]
    inc bc
    rst $38
    add b
    rrca
    add c
    db $fc
    rlca
    cp $06
    rra
    ld bc, $0cf8
    ld hl, sp+$1f
    rrca
    add c
    rst $38
    ret nz

    ld a, [hl]
    rlca
    cp $07
    rst $00
    ldh [$7c], a
    rlca
    ret nz

    ld hl, sp+$1f
    inc bc
    ld a, $07
    rst $00
    ldh [$7e], a
    rlca
    jp Jump_000_1ff0


    inc bc
    sbc a
    inc bc
    adc a
    add c
    adc a
    add c
    rst $00
    pop bc
    rst $00
    ret nz

    rst $00
    ldh [$e3], a
    ldh [$73], a
    ldh [$71], a
    ldh a, [$31]
    ldh a, [$38]
    ld hl, sp+$18
    ld hl, sp+$1c
    ld a, h
    inc e
    ld a, h
    ld c, $3e
    ld b, $3e
    rlca
    rra
    rlca
    adc a
    add e
    add a
    add c
    rst $00
    pop bc
    db $e3
    ldh [$e1], a
    ldh a, [$71]
    ldh a, [$38]
    ld hl, sp+$38
    ld a, h
    ld c, $7c
    ld e, $1e
    rrca
    rrca
    add e
    rrca
    add c
    add a
    pop bc
    rst $00
    ret nz

    pop hl
    ldh [$f0], a
    ldh a, [rSVBK]
    ld hl, sp+$38
    ld a, h
    inc e
    ld a, $0e
    rra
    ld b, $1f
    add e
    adc a
    add e
    jp $c3c1


    ldh [$e1], a
    ldh a, [rSVBK]
    ld hl, sp+$38
    ld a, h
    inc e
    inc a
    ld e, $1f
    rlca
    rra
    inc bc
    adc a
    add e
    add a
    pop bc
    jp $e3e0


    ldh a, [$71]
    ldh a, [$38]
    ld hl, sp+$18
    ld a, h
    inc c
    ld a, $07
    rra
    ld [bc], a
    rrca
    add c
    rst $00
    ret nz

    inc bc
    ldh [$61], a
    ldh a, [rP1]
    ld hl, sp+$38
    ld a, h
    nop
    ld a, [hl]
    ld c, $1f
    nop
    rrca
    add e
    rlca
    ret nz

    rlca
    ldh [$e1], a
    ldh a, [$60]
    ld hl, sp+$30
    ld a, h
    jr jr_031_6e3a

    inc c
    rra
    nop
    rrca
    add e
    rlca
    pop bc
    add e
    ldh [$e1], a
    ldh a, [$60]
    ld hl, sp+$38
    ld a, h
    jr jr_031_6e4b

    ld c, $1f
    rlca
    rrca
    add e
    add a
    pop bc
    jp $e1e0


    ldh a, [rSVBK]
    db $fc
    jr @+$80

    inc e
    rra
    ld b, $0f
    add e
    rlca
    pop bc
    jp $e1e0


    ldh a, [$30]
    ld hl, sp+$38
    ld a, $0c
    rra
    rlca
    rrca
    add e
    add a
    pop bc
    pop bc
    ldh [$e0], a
    ld hl, sp+$38
    ld a, h
    jr jr_031_6e78

jr_031_6e3a:
    ld b, $1f
    add e
    rlca
    pop bc
    add e
    ldh [$e0], a
    ld hl, sp+$70
    ld a, h
    nop
    ld a, $06
    rrca
    add e
    rlca

jr_031_6e4b:
    ldh [$81], a
    ld hl, sp+$20
    db $fc
    nop
    ccf
    nop
    ccf
    inc bc
    add a
    ldh [rTAC], a
    ldh [$03], a
    ldh a, [$f0]
    db $fc
    jr c, jr_031_6edd

    ld c, $0f
    ret nz

    rrca
    pop bc
    pop hl
    ld hl, sp+$01
    ldh a, [$78]
    ld a, h
    nop
    ld a, [hl]
    ld e, $0f
    add b
    rra
    add e
    pop bc
    ldh a, [$03]
    ldh a, [rSVBK]
    ld a, a
    nop

jr_031_6e78:
    db $fc
    ld c, $1f
    add b
    rra
    add e
    jp Jump_000_07f0


    ldh [$f8], a
    ld a, a
    nop
    db $fc
    ld e, $1f
    add b
    ccf
    inc bc
    jp Jump_000_0ff0


    ret nz

    ldh a, [$fc]
    ld bc, $3cf8
    rra
    ldh [$3f], a
    rlca
    add a
    ldh [rIF], a
    ret nz

    ldh [$fc], a
    ld bc, $3cf8
    ccf
    nop
    ld a, [hl]
    rrca
    add e
    db $fc
    rrca
    pop bc
    pop hl
    ldh a, [rSB]
    ld hl, sp+$3c
    ccf
    nop
    ld a, [hl]
    rrca
    add a
    ld hl, sp+$0f
    ret nz

    pop hl
    ldh a, [rSB]
    ld hl, sp+$38
    ld a, h
    nop
    ld a, [hl]
    rrca
    rrca
    ret nz

    rrca
    add c
    pop hl
    ldh a, [rSB]
    ld hl, sp+$38
    db $fc
    nop
    ld a, [hl]
    ld c, $1f
    add b
    rra
    add e
    pop hl
    ld hl, sp+$01
    ldh a, [$38]
    ld a, h
    nop
    ld a, [hl]
    rrca
    rra
    add b
    rrca
    add c

jr_031_6edd:
    pop hl
    ldh a, [rSB]
    ldh a, [rNR23]
    db $fc
    jr jr_031_6f23

    nop
    ccf
    rlca
    add a
    ldh [rTAC], a
    ldh [rSVBK], a
    ld hl, sp+$00
    db $fc
    ld c, $3e
    nop
    rra
    inc bc
    add a
    ret nz

    rlca
    ldh [rSVBK], a
    ld hl, sp+$00
    db $fc
    inc c
    ccf
    nop
    rra
    add e
    add a
    ldh [$03], a
    ldh [$78], a
    db $fc
    nop
    ld a, [hl]
    ld b, $3f
    nop
    rra
    add e
    jp $03f0


    ldh a, [$38]
    db $fc
    nop
    ld a, [hl]
    rlca
    rra
    add b
    rrca
    pop bc
    pop hl
    ldh a, [rSB]
    ld hl, sp+$3c
    ld a, [hl]
    nop

jr_031_6f23:
    ccf
    rlca
    rrca
    ret nz

    rlca
    ret nz

    pop af
    ld hl, sp+$00
    db $fc
    ld e, $3f
    nop
    rra
    add e
    add a
    ret nz

    inc bc
    ldh [$78], a
    ld a, h
    nop
    ld a, [hl]
    rrca
    rra
    add b
    rrca
    pop bc
    jp Jump_000_01f0


    ld hl, sp+$3c
    ld a, [hl]
    nop
    ccf
    rlca
    adc a
    add b
    rlca
    ldh [$e1], a
    ld hl, sp+$00
    db $fc
    ld e, $3f
    nop
    rra
    add e
    jp $03e0


    ldh a, [$38]
    ld a, h
    nop
    ld a, $07
    rrca
    ret nz

    rlca
    ret nz

    pop af
    ld hl, sp+$00
    db $fc
    ld e, $1f
    nop
    rra
    add c
    jp Jump_000_01f0


    ldh a, [$3c]
    ccf
    nop
    ccf
    rlca
    add a
    ldh [$03], a
    ldh [rSVBK], a
    db $fc
    nop
    ld a, [hl]
    rrca
    rrca
    ret nz

    rlca
    ret nz

    ldh a, [$fc]
    nop
    db $fc
    ld e, $1f
    ret nz

    rrca
    add c
    pop hl
    ld hl, sp+$00
    ld hl, sp+$1c
    rra
    add b
    rra
    add c
    jp Jump_000_01f0


    ld hl, sp+$38
    ld a, $00
    rra
    inc bc
    add e
    ldh a, [$03]
    ldh a, [rSVBK]
    ld a, [hl]
    nop
    ccf
    rlca
    rlca
    ldh [$03], a
    ldh a, [rSVBK]
    ld a, [hl]
    nop
    ccf
    ld b, $07
    ret nz

    inc bc
    ldh [$60], a
    db $fc
    nop
    ld a, $00
    rrca
    ret nz

    inc bc
    ldh a, [rSVBK]
    ld hl, sp+$70
    ccf
    nop
    rrca
    add e
    add c
    ldh a, [rP1]
    ld hl, sp+$3c
    rrca
    ldh [rIF], a
    add c
    ldh [rIE], a
    ret nz

    db $fc
    ld e, $0f
    adc h
    rlca
    pop bc
    ldh [$f9], a
    ldh [$7c], a
    ld e, $0f
    adc [hl]
    rlca
    pop hl
    ldh [$fc], a
    ld [hl], b
    ld a, $0e
    rlca
    rst $00
    inc bc
    ldh [$e0], a
    ld a, h
    jr c, jr_031_7029

    ld c, $07
    jp $f081


    ldh [$7e], a
    jr jr_031_7012

    rlca
    rlca
    pop hl
    pop bc
    ld hl, sp+$70
    ld a, [hl]
    inc e
    rrca
    jp nz, $f003

    nop
    ld hl, sp+$30
    ccf
    inc c
    rrca
    jp $f003


    nop
    db $fc
    jr jr_031_702b

    nop
    rrca
    pop bc
    add c
    ld hl, sp+$00

jr_031_7012:
    ld a, h
    jr jr_031_7034

    add d
    rlca
    ldh [rSB], a
    ldh a, [rSVBK]
    ld a, [hl]
    nop
    rra
    add e
    rlca
    ldh [$c1], a
    ld hl, sp+$30
    ld a, $08
    rra
    add e
    inc bc

jr_031_7029:
    ldh a, [$80]

jr_031_702b:
    db $fc
    db $10
    ccf
    inc c
    rrca
    pop bc
    inc bc
    ldh a, [$c0]

jr_031_7034:
    db $fc
    nop
    ccf
    ld b, $0f
    ret nz

    inc bc
    ldh a, [rP1]
    db $fc
    db $10
    ccf
    nop
    rrca
    pop bc
    ld bc, $00f0
    db $fc
    nop
    rra
    add h
    rlca
    ldh [rSB], a
    ld hl, sp+$00
    ld a, [hl]
    jr jr_031_7071

    add b
    rlca
    ldh [rP1], a
    cp $00
    ld a, a
    nop
    rrca
    jp nz, $f003

    nop
    db $fc
    nop
    ccf
    add b
    rrca
    ldh [rSB], a
    cp $00
    ld a, a
    nop
    rra
    add a
    inc bc
    ld sp, hl
    ret nz

    db $fc
    ld a, b

jr_031_7071:
    rra
    sbc [hl]
    rlca
    db $e3
    add c
    ld sp, hl
    ldh a, [$3f]
    inc a
    rrca
    rst $08
    inc bc
    pop af
    ldh [$7e], a
    jr c, jr_031_70a1

    adc a
    inc bc
    di
    ret nz

    db $fc
    ld hl, sp+$1f
    ld e, $07
    db $e3
    ret nz

    ld hl, sp-$10
    ccf
    ld e, $07
    rst $30
    add b
    ld hl, sp-$10
    ccf
    ld a, $0f
    rst $00
    add c
    pop af
    ldh a, [$3f]
    inc a
    rrca
    add a

jr_031_70a1:
    add c
    ldh a, [$f0]
    ld a, h
    inc a
    rrca
    rst $08
    inc bc
    pop hl
    ldh a, [$7c]
    ld a, h
    rra
    rrca
    add e
    pop hl
    ldh [$78], a
    ld a, h
    rrca
    adc a
    add e
    pop bc
    ldh a, [$78]
    inc a
    rrca
    rrca
    add e
    pop bc
    ldh a, [$78]
    ld a, h
    ld e, $07
    pop bc
    pop hl
    ldh a, [$3c]
    ld a, $0f
    rlca
    ldh [$3f], a
    add b
    ld hl, sp+$1f
    ret nz

    ld a, h
    rrca
    ret nz

    cp $03
    pop hl
    db $fc
    ld e, $03
    ld bc, $1ff8
    add b
    rra
    add c
    db $fc
    ld bc, $83ff
    add b
    ccf
    add b
    db $fc
    nop
    ld e, $1f
    ret nz

    ccf
    add c
    ld hl, sp+$1f
    ret nz

    ld a, h
    ccf
    inc bc
    ld hl, sp+$0f
    rrca
    pop bc
    ld hl, sp+$03
    db $e3
    di
    ret nz

    ld a, $0f
    db $fc
    nop
    rlca
    ldh [rNR10], a
    ccf
    add b
    ld hl, sp+$0c
    rlca
    adc a
    ret nz

    ccf
    ld bc, $1ff8
    nop
    cp $07
    ldh a, [rP1]
    ld a, b
    rra
    add b
    cp $07
    ldh [$fc], a
    rlca
    db $fc
    rra
    inc e
    inc bc
    ldh [$7f], a
    ld bc, $0ffc
    ret nz

    rrca
    db $fc
    inc bc
    ret nz

    rra
    db $fc
    nop
    rlca
    pop hl
    ldh a, [rIF]
    ret nz

    db $fc
    rra
    ld bc, $0ffc
    add e
    ldh [$7e], a
    rrca
    ret nz

    ld a, a
    ld bc, $00fc
    rra
    rlca
    ldh [$3f], a
    ret nz

    cp $00
    rra
    rlca
    ldh [$3f], a
    ld bc, $3ef0
    ld bc, $0ffc
    db $e3
    add b
    ld a, [hl]
    nop
    rlca
    jp $fe80


    nop
    ld a, h
    rrca
    ld bc, $03fe
    ldh a, [$30]
    ld a, [hl]
    ld e, $07
    db $fc
    inc bc
    ldh [$78], a
    rra
    ldh [$1f], a
    add e
    pop bc
    ld hl, sp+$00
    db $fc
    inc e
    rrca
    ret nz

Call_031_7173:
    rlca
    ldh [$f0], a
    ccf
    ldh [$1f], a
    add e
    add e
    pop af
    ret nz

    ld a, [hl]
    nop
    rra
    rlca
    inc bc
    ld hl, sp+$00
    db $fc
    jr jr_031_71a6

    nop
    rlca
    ldh [rP1], a
    ld hl, sp+$00
    ld a, $00
    rlca
    ldh [rSB], a
    ld hl, sp+$00
    ccf
    nop
    rrca
    ret nz

    ld bc, $00f0
    ld a, [hl]
    nop
    rrca
    add b
    inc bc
    ldh a, [rP1]
    ld a, [hl]
    nop
    rra
    add b

jr_031_71a6:
    inc bc
    ldh a, [rP1]
    ld a, [hl]
    nop
    rra
    add b
    inc bc
    ldh a, [rP1]
    db $fc
    nop
    rra
    add b
    inc bc
    ldh a, [rP1]
    db $fc
    nop
    rra
    add b
    rlca
    ldh [rP1], a
    db $fc
    nop
    rra
    add b
    rlca
    ldh [rP1], a
    db $fc
    nop
    ccf
    add b
    rlca
    ldh [rSB], a
    db $fc
    nop
    ccf
    add b
    rlca
    ldh [rSB], a
    db $fc
    nop
    ccf
    add b
    rrca
    ldh [rSB], a
    db $fc
    nop
    ld a, a
    nop
    rrca
    ldh [rSB], a
    ldh a, [$f0]
    ccf
    add b
    rrca
    jp $ff03


    add b
    ld a, [hl]
    jr @+$11

    db $fc
    inc bc
    ldh a, [$c0]
    ld a, a
    and b
    rra
    rst $00
    inc bc
    ld hl, sp-$40
    ld a, a
    add b
    rra
    xor $03
    db $fd
    nop
    ld a, [hl]
    nop
    rra
    adc $03
    pop af
    ret nz

    ld a, a
    ldh a, [$1f]
    db $e4
    inc bc
    rst $30
    ret nz

    cp $10
    rra
    db $fc
    rlca
    ldh a, [$e0]
    ld a, a
    ldh [$1f], a
    add [hl]
    inc bc
    rst $38
    nop
    db $fc
    jr c, @+$11

    db $fc
    rlca
    pop hl
    ret nz

    ld a, a
    ldh [$3f], a
    rlca
    ld bc, $00ff
    db $fc
    inc a
    rrca
    ld hl, sp+$07
    pop bc
    ldh a, [$1f]
    ldh [$3f], a
    rlca
    ret nz

    rst $38
    nop
    db $fc
    ld e, $07
    db $fc
    inc bc
    ldh a, [$f0]
    ccf
    ldh a, [$1f]
    add e
    add c
    rst $38
    add b
    ld a, h
    inc e
    rrca
    cp $03
    ldh a, [$60]
    ccf
    jr c, @+$11

    jp $f881


    ldh [$3e], a
    inc c
    rrca
    jp $f801


    ld h, b
    ccf
    inc e
    rrca
    jp $f880


    ld h, b
    ld a, $0c
    rlca
    jp $fc80


    jr nc, jr_031_72a8

    ld c, $07
    pop hl
    add b
    db $fc
    jr c, jr_031_728f

    add $03
    ldh a, [$e0]
    ld a, [hl]
    jr @+$11

    jp $f801


    ld b, b
    ld a, $0e
    rlca
    pop hl
    nop
    db $fc
    jr c, jr_031_72a2

    add h
    inc bc
    ldh a, [$c0]
    ld a, [hl]
    nop
    rrca
    jp $f801


    ld h, b
    ccf

jr_031_728f:
    inc c
    rlca
    pop hl
    add b
    db $fc
    jr nc, jr_031_72b5

    add d
    inc bc
    ldh a, [$80]
    ld a, [hl]
    db $10
    rrca
    ret nz

    ld bc, $20f8
    ccf

jr_031_72a2:
    nop
    rlca
    pop bc
    add b
    db $fc
    nop

jr_031_72a8:
    ccf
    nop
    rlca
    ldh [$80], a
    db $fc
    nop
    rra
    add b
    inc bc
    ldh a, [rP1]
    ld a, h

jr_031_72b5:
    nop
    rra
    add d
    inc bc
    ldh a, [$c0]
    ld a, [hl]
    nop
    rrca
    ret nz

    ld bc, $00f0
    ld a, [hl]
    nop
    rrca
    ret nz

    ld bc, $00f8
    ld a, $00
    rrca
    ret nz

    ld bc, $00f8
    ld a, $00
    rrca
    ret nz

    ld bc, $00f8
    ccf
    nop
    rlca
    ret nz

    ld bc, $00f8
    ccf
    nop
    rlca
    ret nz

    ld bc, $00f8
    ccf
    nop
    rlca
    ldh [rP1], a
    ld hl, sp+$00
    ccf
    nop
    rlca
    ldh [rP1], a
    db $fc
    nop
    rra
    add b
    rlca
    ldh [rP1], a
    db $fc
    nop
    rra
    add b
    inc bc
    ldh a, [rP1]
    ld a, [hl]
    nop
    rrca
    ret nz

    inc bc
    ldh a, [rP1]
    ld a, [hl]
    nop
    rrca
    ret nz

    ld bc, $00f8
    ccf
    nop
    rlca
    ldh [rP1], a
    db $fc
    nop
    rra
    add b
    inc bc
    ldh a, [rP1]
    ld a, [hl]
    nop
    rrca
    ret nz

    ld bc, $00f8
    ccf
    nop
    inc bc
    ldh a, [rP1]
    ld a, [hl]
    nop
    rrca
    ret nz

    ld bc, $00fc
    rra
    add b
    inc bc
    ldh a, [rP1]
    ccf
    nop
    rlca
    ldh [rP1], a
    ld a, [hl]
    nop
    rrca
    ret nz

    nop
    db $fc
    nop
    rra
    add b
    ld bc, $00fc
    rra
    add b
    ld bc, $00f8
    ccf
    add b
    inc bc
    ldh a, [rP1]
    ccf
    nop
    inc bc
    ldh a, [rP1]
    ccf
    nop
    inc bc
    ld hl, sp+$00
    ccf
    add b
    inc bc
    ld hl, sp+$00
    rra
    ret nz

    ld bc, $00fc
    rra
    ret nz

    ld hl, $00fc
    rrca
    ldh [rP1], a
    cp $00
    rrca
    ldh [rP1], a
    ld a, [hl]
    nop
    rlca
    ldh a, [rP1]
    ld a, a
    nop
    inc bc
    ld hl, sp+$00
    ccf
    add b
    ld bc, $00f8
    rra
    ret nz

    nop
    cp $00
    rrca
    ldh [rP1], a
    ld a, [hl]
    nop
    rlca
    ldh a, [rP1]
    ccf
    add b
    inc bc
    ld hl, sp+$00
    rra
    ret nz

    nop
    cp $00
    rrca
    ldh [rP1], a
    ld a, a
    nop
    rlca
    ld hl, sp+$00
    ccf
    ret nz

    ld sp, $01fe
    rrca
    ldh a, [rNR23]
    ld a, a
    add b
    jp Jump_000_0ef8


    rra
    ret nz

jr_031_73aa:
    jr nc, jr_031_73aa

    ld bc, $f08f
    inc e
    ld a, a
    add b
    ld h, e
    db $fc
    inc bc
    rrca
    ldh [rNR32], a
    ld a, a
    add b
    ld b, e
    db $fc
    rlca
    rra
    ldh [$38], a
    rst $38
    nop
    rst $00
    ld hl, sp+$0e
    rra
    ldh [$38], a
    db $fc
    inc bc
    rlca
    ld hl, sp+$04
    rra
    ret nz

    ld [hl], b
    cp $01
    add a
    ld hl, sp+$0e
    rra
    ret nz

    jr nc, @+$01

    ld bc, $f8c7
    ld b, $0f
    ret nz

    ld a, b
    rst $38
    add b
    pop bc
    db $fc
    rlca
    rra
    ldh a, [rNR23]
    ld a, [hl]
    nop
    jp $07fc


    rrca
    ldh a, [rNR32]
    ccf
    ret nz

    pop af
    cp $01
    add a
    ld hl, sp+$0e
    ccf
    ret nz

    jr nc, @+$01

    ld bc, $f8c7
    ld c, $1f
    ldh [$38], a
    rst $38
    ld bc, $fcc3
    rlca
    rrca
    ldh a, [rNR32]
    ccf
    add b
    pop af
    cp $03
    rst $00
    ld hl, sp+$0f
    rra
    ldh a, [rNR32]
    ld a, a
    ret nz

    ld h, c
    rst $38
    nop
    add a
    cp $00
    rrca
    db $fc
    nop
    rra
    ldh a, [$60]
    ld a, a
    ldh [$1f], a
    add a
    ldh [$1f], a
    sbc c
    ret nz

    rrca
    rst $18
    inc bc
    rst $30
    xor $01
    rst $38
    pop bc
    add b
    ld a, a
    ret nz

    rst $38
    ld a, e
    ldh a, [$7f]
    db $fc
    jr nc, jr_031_74bb

    rst $38
    ld bc, $02fe
    rra
    di
    ldh a, [$7e]
    rrca
    ret nz

    rst $38
    rrca
    ret nz

    db $fc
    rlca
    pop af
    db $e3
    jp $1ff8


    pop bc
    ld hl, sp+$1f
    add c
    ldh a, [$03]
    ldh a, [rTAC]
    ret nz

    ld hl, sp+$07
    ret nz

    ldh [$f0], a
    ld a, $03
    ret nz

    inc a
    rrca
    add e
    cp $03
    ldh [$1f], a
    add h
    ld a, h
    rra
    add c
    ldh a, [$3f]
    add c
    ldh a, [$3f]
    add e
    rra
    rst $08
    cp h
    ld a, a
    xor a
    cp [hl]
    ccf
    db $fc
    ld a, a
    jp $fee1


    rlca
    cp h
    rrca
    ldh [$7c], a
    ccf
    add a
    sbc [hl]
    rra
    add b
    rst $30
    rrca
    rst $08
    rra
    rlca
    rrca
    rst $38
    ld bc, $1ff8
    add c
    ld hl, sp+$1f
    rlca
    ldh a, [rTAC]
    ret nz

    ld a, h
    rrca
    ret nz

    ld a, [hl]
    ld bc, $1ff0
    jp $c50f


    ld [hl], b
    ld a, a
    inc bc
    ldh [$7f], a
    rlca
    ldh [$7e], a
    inc bc
    ldh [$e0], a
    cp $07
    ldh a, [$fc]
    rlca
    call nz, Call_000_1f7c
    ret nz

    ld a, [hl]
    rlca

jr_031_74bb:
    ld hl, sp+$70
    ld bc, $efff
    db $e3
    ret nz

    nop
    rra
    db $fc
    nop
    nop
    inc bc
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    ret nz

    db $fc
    inc bc
    ldh a, [$7f]
    inc bc
    db $fc
    rra
    cp $01
    rst $38
    rst $38
    add b
    inc bc
    ld hl, sp+$0f
    db $fd
    ld a, a
    ldh a, [rIE]
    ld hl, sp+$03
    rst $20
    nop
    ld [hl], b
    ccf
    ret nz

    ret nz

    nop
    inc bc
    db $fc
    rrca
    add b
    ld bc, $1ff8
    ret nz

    ld a, h
    rrca
    ldh [$7e], a
    ld bc, $3ff0
    add b
    db $fc
    nop
    jr nc, jr_031_7501

    ldh a, [rNR10]
    ld h, b

jr_031_7501:
    nop
    cp $07
    ret nz

    ld a, h
    ld bc, $7ff0
    inc bc
    db $fc
    ld a, b
    rlca
    inc bc
    cp $0f
    add b
    nop
    rrca
    ldh a, [$3e]
    nop
    nop
    db $fc
    rrca
    ret nz

    ld a, h
    rrca
    ldh a, [$3f]
    nop
    ld hl, sp+$3f
    add e
    ldh a, [rIF]
    add c
    cp $07
    ret nz

    nop
    rlca
    ld hl, sp+$3f
    add b
    nop
    db $fc
    rrca
    ldh [$7c], a
    rlca
    ldh a, [$3f]
    nop
    cp $07
    ldh [$c3], a
    rrca
    ret nz

    ld a, h
    ccf
    ldh a, [$60]
    nop
    nop
    rst $38
    jp $00f0


    rlca
    ldh a, [$3f]
    ld bc, $1ff8
    add b
    db $fc
    inc bc
    rst $28
    ret nz

    jr nc, jr_031_7572

    ldh a, [$f8]
    nop
    nop
    ccf
    ret nz

    db $fc
    nop
    inc bc
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    ret nz

    ld a, h
    inc bc
    ldh [$3f], a
    ld bc, $20cc
    ld a, h
    rlca
    add b
    ld a, h
    ld a, a
    jp Jump_000_18e0


    inc bc

jr_031_7572:
    rst $38
    rst $38
    add b
    nop
    rlca
    ldh a, [$3f]
    ld bc, $1ff0
    ld bc, $0ffc
    add d
    ld a, b
    rlca
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $0fff
    ldh [rP1], a
    rlca
    ldh [$7f], a
    inc bc
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    add b
    ldh a, [rIF]
    pop bc
    db $fc
    nop
    ld h, b
    rrca
    db $fc
    ld a, $00
    nop
    rra
    ret nz

    db $fc
    rlca
    ret nz

    db $fc
    rlca
    ldh a, [$7f]
    nop
    ld h, b
    dec bc
    rst $38
    pop bc
    ldh a, [rP1]
    rlca
    ldh a, [$3f]
    ld bc, $3ff0
    add b
    ld a, a
    add a
    db $fc
    inc c
    nop
    ld a, a
    rst $38
    add a
    nop
    nop
    rrca
    ld hl, sp+$3f
    nop
    nop
    ccf
    inc bc
    ldh a, [$1f]
    add c
    ld hl, sp+$0f
    rst $38
    db $fc
    nop
    nop
    inc bc
    ld hl, sp+$1f
    add c
    ld hl, sp+$00
    ccf
    add c
    db $fc
    rrca
    ret nz

    jr c, jr_031_765d

    add e
    ld hl, sp+$1f
    add b
    ccf
    ldh [$fc], a
    rlca
    ldh a, [rP1]
    rlca
    rst $38
    rra
    ret nz

    db $10
    rlca
    ldh a, [$3f]
    add c
    ld hl, sp+$1f
    add b
    ccf
    pop bc
    ld hl, sp+$00
    nop
    ld a, a
    add e
    ld hl, sp+$1f
    nop
    rrca
    ldh a, [$7f]
    rlca
    ldh a, [rP1]
    rst $38
    jp $3ff8


    nop
    rrca
    ldh a, [$7f]
    ld bc, $00f8
    rlca
    db $fc
    rra
    ret nz

    nop
    inc bc
    ld hl, sp+$3f
    add b
    ld hl, sp+$00
    nop
    ld a, a
    pop bc
    ld hl, sp+$00
    inc bc
    ld hl, sp+$3f
    add b
    ld hl, sp+$0f
    ld bc, $ffff
    add b
    nop
    ld bc, $c7ff
    ldh a, [rP1]
    inc bc
    ld hl, sp+$1f
    add c
    ld hl, sp+$0f
    add b
    rst $38
    add a
    ldh a, [rSC]
    nop
    rst $38
    add a
    ldh [rP1], a
    ld bc, $1ff8
    add b
    db $fc
    rrca
    add b
    cp $3f
    pop bc
    add b
    nop
    ld a, a
    rst $38
    xor $00
    nop
    ld a, a
    inc bc
    ldh [$3f], a
    nop
    rst $38
    ld hl, sp-$04
    rlca
    nop
    rlca
    ldh a, [$3f]

jr_031_765d:
    inc bc
    ldh a, [$3e]
    inc bc
    rst $38
    ld a, b
    ld hl, sp+$00
    ld bc, $0ffc
    ldh [$7c], a
    nop
    ld a, a
    pop bc
    ld hl, sp+$1f
    nop
    rlca
    ldh a, [$3f]
    add c
    ld hl, sp+$00
    rrca
    rst $38
    rrca
    ldh [rP1], a
    rrca
    ret nz

    cp $07
    ldh [$7c], a
    inc bc
    rst $38
    db $fc
    inc a
    nop
    nop
    rst $38
    add e
    ldh [rNR32], a
    inc bc
    ld hl, sp+$1f
    add c
    ld hl, sp+$0f
    ld bc, $07fe
    ret nz

    nop
    inc bc
    ldh a, [$3f]
    add c
    ld hl, sp+$00
    nop
    rst $38
    rlca
    ldh a, [rP1]
    inc bc
    ld hl, sp+$3f
    add c
    ld hl, sp+$07
    add c
    cp $07
    ldh [$08], a
    inc bc
    ldh a, [$3f]
    ld bc, $07f8
    ret nz

    rst $38
    inc bc
    ldh a, [rDIV]
    rlca
    ldh a, [$3f]
    ld bc, $07f8
    ld bc, $07fe
    ret nz

    nop
    rlca
    ldh a, [$7f]
    inc bc
    ldh a, [$0c]
    inc bc
    rst $38
    ccf
    ldh [rP1], a
    rlca
    ldh a, [$3f]
    add c
    ld hl, sp+$07
    add e
    db $fc
    rra
    ret nz

    nop
    rrca
    ret nz

    db $fc
    rlca
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    ld hl, sp+$3f
    add c
    ld hl, sp+$00
    rrca
    ldh a, [$7f]
    nop
    nop
    rrca
    ldh [$7e], a
    inc bc
    ldh [rNR32], a
    inc bc
    cp $1f
    ldh [rP1], a
    rlca
    ldh a, [$3f]
    ld bc, $07f8
    add b
    ld a, a
    add a
    ldh [rP1], a
    ld bc, $0ffc
    ret nz

    ld a, [hl]
    nop
    inc bc
    db $fc
    rra
    ldh [$38], a
    inc bc
    ldh a, [$3f]
    add c
    ld hl, sp+$07
    nop
    ld a, a
    inc bc
    ldh a, [rP1]
    ld bc, $1ffc
    ret nz

    ld a, [hl]
    nop
    nop
    ccf
    pop hl
    ld hl, sp+$00
    nop
    cp $07
    ldh [$3f], a
    nop
    ldh [$3f], a
    ldh [$fc], a
    ld [bc], a
    nop
    ccf
    add e
    ldh a, [$1f]
    add b
    ld bc, $3ffc
    ldh [rSVBK], a
    nop
    cp $07
    ldh [$3f], a
    nop
    ld h, b
    ccf
    pop bc
    db $fc
    rlca
    nop
    ld a, [hl]
    rlca
    ldh [$3f], a
    nop
    ldh [rIF], a
    ld hl, sp+$7e
    nop
    nop
    rra
    pop hl
    db $fc
    rrca
    nop
    rrca
    ldh [$7e], a
    inc bc
    ldh a, [rSC]
    rrca
    db $fc
    ccf
    add b
    nop
    rrca
    ret nz

    cp $07
    ldh [$7c], a
    rlca
    ld sp, hl
    rst $38
    ldh [rP1], a
    ld bc, $1ffe
    ret nz

    jr @+$03

    ld hl, sp+$1f
    pop bc
    db $fc
    rlca
    add b
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    cp $0f
    ldh [$7e], a
    ld bc, $fc81
    rrca
    ldh [rP1], a
    ld bc, $1ff8
    add b
    ld hl, sp+$07
    nop
    rst $38
    rlca
    ldh a, [rSC]
    nop
    ld a, [hl]
    rlca
    ldh [$3e], a
    ld bc, $ffc0
    rlca
    ldh a, [rP1]
    ld bc, $1ff8
    ret nz

    db $fc
    rlca
    add b
    ccf
    jp Jump_000_00fc


    nop
    ccf
    add e
    ld hl, sp+$1f
    add b
    nop
    ld a, a
    adc a
    ldh a, [$3c]
    nop
    rrca
    ldh [$fe], a
    rlca
    ldh [$08], a
    rlca
    ldh a, [$7f]
    ld bc, $01c0
    db $fc
    rra
    ldh [$7e], a
    nop
    nop
    rst $38
    rra
    ldh a, [$38]
    nop
    rrca
    ret nz

    cp $07
    ldh [rP1], a
    rrca
    pop af
    rst $38
    inc bc
    add b
    ld bc, $1ffc
    ret nz

    ld a, h
    inc bc
    nop
    ld a, a
    inc bc
    ldh a, [rNR34]
    nop
    rra
    pop bc
    db $fc
    rlca
    ret nz

    jr c, jr_031_77f1

    ldh a, [$3f]
    add c
    ldh a, [$03]
    ld hl, sp+$1f

jr_031_77f1:
    add b
    db $fc
    rlca
    nop
    ld a, a
    rlca
    ld hl, sp+$0e
    nop
    ccf
    add c
    ld hl, sp+$0f
    ret nz

    ld [hl], b
    rrca
    ldh a, [$7f]
    ld bc, $03e0
    ldh a, [$3f]
    add c
    ld hl, sp+$07
    nop
    rst $38
    rrca
    ldh [$0c], a
    nop
    ld a, a
    inc bc
    ld hl, sp+$1f
    add b
    ldh a, [$1f]
    ldh [$fe], a
    ld bc, $07c0
    ldh a, [$7f]
    ld bc, $00f8
    nop
    cp $0f
    ldh [$3c], a
    nop
    ld a, a
    rlca
    ld hl, sp+$1f
    add b
    ld h, b
    rra
    ldh [$fe], a
    rlca
    add b
    inc bc
    ld hl, sp+$3f
    add c
    ld hl, sp+$06
    ld bc, $3ffc
    ldh [rSVBK], a

Call_031_783e:
    nop
    rra
    pop bc
    db $fc
    rrca
    ret nz

    jr c, jr_031_7855

    pop hl
    cp $07
    ret nz

    nop
    ld a, a
    rlca
    ldh a, [$7e]
    nop
    add b
    cp $0f
    ldh [$7e], a

jr_031_7855:
    ld bc, $fc01
    rra
    pop bc
    ld hl, sp+$03
    inc bc
    ld hl, sp+$3f
    add c
    ldh a, [rP1]
    rlca
    ldh a, [$fe]
    inc bc
    ldh [rP1], a
    rrca
    ldh [$fe], a
    rlca
    ret nz

    nop
    ccf
    add e
    ldh a, [$1f]
    add b
    nop
    ccf
    inc bc
    ldh a, [$1f]
    nop
    nop
    ld a, a
    rrca
    ldh a, [$3e]
    nop
    add b
    cp $1f
    ldh [$7c], a
    nop
    inc bc
    db $fc
    ccf
    add c
    ld hl, sp+$02
    inc bc
    ld hl, sp+$3f
    inc bc
    ldh a, [$0e]
    rlca
    ldh a, [$7f]
    inc bc
    ldh [rP1], a
    rrca
    ldh [$fe], a
    rlca
    ldh [rP1], a
    rrca
    pop hl
    db $fc
    rrca
    ret nz

    nop
    rra
    jp $1ff8


    add b
    jr nz, @+$41

    add e
    ldh a, [$1f]
    nop
    ld b, b
    ccf
    add a
    ldh a, [$3f]
    nop
    nop
    ld a, a
    rrca
    ldh a, [$3e]
    nop
    nop
    cp $0f
    ldh [$7e], a
    nop
    nop
    rst $38
    rrca
    ldh [$7e], a
    nop
    ld bc, $1ffc
    add c
    ld hl, sp+$00
    ld bc, $3ffc
    add c
    ld hl, sp+$00
    ld bc, $1ffc
    add c
    ld hl, sp+$00
    inc bc
    ld hl, sp+$3f
    add c
    ldh a, [rP1]
    inc bc
    ld hl, sp+$3f
    add c
    ld hl, sp+$00
    inc bc
    ld hl, sp+$3f
    add c
    ldh a, [rP1]
    inc bc
    ld hl, sp+$3f
    inc bc
    ldh a, [$0c]
    inc bc
    ld hl, sp+$3f
    add c
    ld hl, sp+$02
    ld bc, $1ffc
    ret nz

    ld hl, sp+$02
    ld bc, $1ffc
    ret nz

    ld hl, sp+$00
    ld bc, $1ffc
    ret nz

    ld hl, sp+$02
    ld bc, $1ffc
    ret nz

    ld hl, sp+$00
    ld bc, $1ffc
    ret nz

    ld hl, sp+$00
    ld bc, $1ffc
    ret nz

    ld hl, sp+$03
    ld bc, $1ffc
    ret nz

    db $fc
    ld bc, $fe01
    rra
    ret nz

    ld hl, sp+$00
    nop
    cp $0f
    ldh [$7c], a
    inc bc
    nop
    cp $1f
    pop bc
    ld hl, sp+$00
    nop
    cp $0f
    ldh [$7c], a
    nop
    nop
    cp $0f
    ldh [$7c], a
    nop
    nop
    cp $1f
    ldh [$7c], a
    ld bc, $ff00
    rrca
    ldh [$3e], a
    nop
    ret nz

    ld a, a
    add a
    ld hl, sp+$1e
    nop
    nop
    ld a, a
    add a
    ldh a, [rNR34]
    nop
    nop
    ccf
    add a
    ld hl, sp+$1f
    nop
    nop
    ccf
    rst $00
    db $fc
    rrca
    add b
    nop
    ccf
    rst $00
    ld hl, sp+$1f
    nop
    nop
    rra
    pop bc
    db $fc
    rrca
    add b
    nop
    rra
    pop hl
    db $fc
    rlca
    ret nz

    nop
    rlca
    ldh a, [$fe]
    rlca
    ldh [rP1], a
    inc bc
    ld hl, sp+$7f
    inc bc
    ldh a, [rP1]
    ld bc, $1ffc
    ret nz

    ld hl, sp+$02
    nop
    rst $38
    rrca
    ldh [$3e], a
    nop
    nop
    ccf
    rst $00
    ldh a, [$1f]
    add b
    nop
    rrca
    pop hl
    cp $07
    ldh [rP1], a
    inc bc
    ld hl, sp+$7f
    ld bc, $00f0
    ld bc, $1ffc
    ret nz

    db $fc
    ld bc, $7f00
    add a
    ldh a, [$3f]
    nop
    ld b, b
    rra
    pop hl
    db $fc
    rrca
    ret nz

    jr @+$09

    ld hl, sp+$7f
    ld bc, $0ef8
    nop
    cp $0f
    ldh [$7e], a
    ld bc, $3f80
    add e
    ld hl, sp+$1f
    add b
    jr nz, @+$11

    ldh a, [$fe]
    rlca
    ldh [rP1], a
    inc bc
    ld hl, sp+$3f
    add c
    ld hl, sp+$06
    nop
    cp $0f
    ldh [$7e], a
    ld bc, $3fc0
    add e
    ld hl, sp+$1f
    add b
    ld h, b
    rra
    ldh [$fc], a
    rlca
    ldh [rP1], a
    rlca
    ldh a, [$7f]
    inc bc
    ldh a, [rP1]
    inc bc
    db $fc
    ccf
    add c
    ld hl, sp+$00
    ld bc, $1ffe
    ret nz

    db $fc
    nop
    nop
    rst $38
    rrca
    ldh a, [$3e]
    nop
    nop
    ld a, a
    rst $00
    add sp, $3e
    nop
    nop
    ld a, a
    add a
    ld hl, sp+$1e
    nop
    nop
    ld a, a
    rst $10
    ld hl, sp+$1f
    nop
    nop
    ld a, a
    sub a
    ldh a, [$3e]
    nop
    nop
    rst $38
    rst $18
    ldh a, [$7e]
    nop
    nop
    rst $38
    ccf
    ldh [$78], a
    nop
    ld bc, $3fff
    pop bc
    ld hl, sp+$00
    inc bc
    db $fc
    ld a, a
    add c
    ldh a, [rP1]
    rlca
    ld sp, hl
    rst $38
    inc bc
    ldh [rP1], a
    rra
    rst $38
    cp $0f
    add b
    nop
    ccf
    rst $38
    db $fc
    ld e, $00
    ld bc, $ffff
    pop bc
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    add c
    ldh [rP1], a
    rra
    rst $38
    db $fc
    rra
    nop
    nop
    rst $38
    rst $38
    ldh a, [rSVBK]
    nop
    rlca
    ei
    rst $38
    inc bc
    ret nz

    nop
    ccf
    rst $38
    db $fc
    ld b, $00
    rlca
    db $fd
    rst $38
    add e
    ldh [rP1], a
    ccf
    rst $38
    ld hl, sp+$1e
    nop
    inc bc
    rst $38
    rst $38
    add c
    ldh [rP1], a
    ccf
    rst $38
    ld hl, sp+$1e
    nop
    inc bc
    rst $38
    db $fc
    rlca
    add b
    nop
    ccf
    rst $10
    ld hl, sp+$0e
    nop
    rrca
    rst $38
    cp $00
    nop
    nop
    rst $38
    rst $38
    ldh a, [$0c]
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    cp $07
    add b
    rlca
    rst $38
    rst $38
    db $ec
    nop
    nop
    ccf
    rst $38
    cp $04
    nop
    rra
    rst $38
    rst $38
    add e
    ret nz

    ld c, $3f
    ei
    cp $00
    add b
    rrca
    rst $38
    rst $38
    nop
    add b
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $28
    cp $01
    add b
    rrca
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    ld hl, sp+$07
    add b
    dec sp
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    and b
    nop
    nop
    rst $38
    rst $20
    ldh [$0a], a
    nop
    ld [hl], e
    rst $38
    rst $38
    sbc h
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    jp nc, VBlankInterrupt

    dec de
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    inc bc
    rst $38
    rst $38
    adc b
    stop
    db $fd
    rst $38
    db $fc
    inc b
    nop
    ld b, $df
    rst $38
    ld [hl], e
    ret nz

    nop
    nop
    ld a, a
    db $db
    ld a, [c]
    add hl, bc
    ld bc, $cbc3
    db $ed
    db $db
    add b
    ld [bc], a
    ld hl, $bb3f
    db $fc
    rrca
    add b
    ld hl, sp+$1f
    ret nz

    db $fd
    inc bc
    pop bc
    and b
    rra
    ld bc, $1ff6
    ldh [$b4], a
    ld a, h
    rrca
    ld hl, sp+$2f
    add b
    jr nc, jr_031_7b40

    inc de
    ldh [$3f], a
    add b
    ld hl, sp+$0f
    jp $01ff


    ld hl, sp+$3e
    rst $00
    ld c, $f3

jr_031_7b40:
    rrca
    ld h, b
    ret c

    scf
    pop bc
    cp $0f
    and b
    ld a, a
    rrca
    ret z

    dec [hl]
    ret nz

    inc e
    or d
    db $fc
    rra
    and b
    ld hl, sp+$0d
    add b
    ld a, d
    add hl, bc
    ldh [$cf], a
    ld bc, $3ef8
    ld b, b
    ld a, h
    rlca
    ldh [$be], a
    inc bc
    ldh a, [rBGP]
    add b
    ld [hl], b
    adc [hl]
    pop af
    ld c, $10
    db $ec
    ccf
    ret z

    ld a, d
    rlca
    ret nz

    ccf
    add b
    db $fc
    rlca
    or h
    ld a, c
    ld c, a
    pop bc
    db $fc
    rlca
    ldh [$df], a
    rrca
    ldh [rIE], a
    ld bc, $1bf8
    ret nz

    cp [hl]
    rlca
    ldh a, [$1f]
    and b
    ld hl, sp+$27
    ret nz

    ld a, e
    push bc
    pop af
    rst $00
    pop hl
    db $fc
    rra
    inc c
    ldh a, [$87]
    ld h, b
    db $fc
    rrca
    ret


    inc a
    dec de
    ld b, b
    sbc a
    and b
    xor $01
    ld a, [c]
    dec c
    or b
    ld a, b
    ld l, [hl]
    ld l, h
    sbc c
    ld hl, $a98c
    sbc b
    ld a, b
    ld a, b
    ld [hl+], a
    jp hl


    cp b
    ld l, a
    add b
    db $fc
    dec b
    ldh [$78], a
    ld c, a
    jr nz, @+$01

    add hl, bc
    ld hl, sp+$59
    ld e, b
    di
    inc c
    ret nz

    or d
    ld a, $09
    rst $30
    ld sp, $1fe0
    ret nz

    cp h
    ccf
    nop
    cp $13
    call nz, $813e
    or $cd
    ld [hl], $6d
    sub a
    db $fc
    adc a
    ld [hl], c
    ld c, b
    ld a, c
    ld [bc], a
    ld a, b
    ld h, [hl]
    jr c, @+$14

    ld a, [hl]
    ld d, a
    adc b
    ld [hl], e
    adc a
    pop bc
    adc [hl]
    inc bc
    ldh a, [$0c]
    ld bc, $03fe
    ret nz

    ccf
    inc b
    cp b
    ld a, $c9
    or b
    ld e, $00
    ld a, h
    rlca
    ld a, h
    ccf
    ld bc, $06f6
    ldh [$82], a

jr_031_7bfe:
    jr nz, jr_031_7bfe

    add hl, bc
    ldh a, [rNR34]
    rlca
    ret z

    ccf
    add b
    ei
    rlca
    ld hl, sp+$79
    ld h, b
    ld hl, sp+$78
    inc c
    ld hl, sp+$64
    inc e
    ldh [$7f], a
    ret nz

    ld [hl], b
    ld e, $08
    db $fc
    rra
    rlca
    add e
    ld a, $07
    ret nz

    cp a
    add e
    call nc, Call_000_071f
    ret nz

    ccf
    ld bc, $0cfe
    rlca
    add b
    rra
    db $ec
    rrca
    add c
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    jp $07c3


    ldh [$fc], a
    daa
    ld hl, sp+$7e
    rrca
    ld e, b
    ccf
    add b
    ld a, [hl]
    ld a, [bc]
    ld h, b
    inc e
    rrca
    ld hl, sp+$3e
    inc c
    ld bc, $83ff
    ret nz

    inc bc
    ldh [$6c], a
    add sp, $38
    ld a, a
    rlca
    db $10
    ccf
    inc b
    ldh [rNR34], a
    inc bc
    ld hl, sp+$2e
    add b
    rlca
    ret z

    inc hl
    ldh [$e1], a
    ret nz

    db $e3
    add c
    pop bc
    sbc a
    db $e3
    add [hl]
    rrca
    adc a
    ret nc

    rlca
    and h
    rra
    inc e
    rrca
    adc l
    rra
    adc a
    inc bc
    and $83
    ldh a, [$f0]
    ld b, a
    ld a, [c]
    rra
    add b
    inc hl
    db $fc
    ld a, [hl]
    nop
    ld a, b
    ld a, $78
    jr c, jr_031_7cb0

    ld hl, sp+$7f
    jr c, jr_031_7cf1

    ld a, [$c0fb]
    dec sp
    and e
    ld [c], a
    rrca
    pop bc
    rst $38
    ldh a, [$03]
    rst $38
    ldh a, [$61]
    pop hl
    db $fc
    daa
    ldh a, [rIE]
    pop hl
    ld e, a
    ld a, a
    ret nz

    ld a, a
    add b
    ld sp, hl
    cp $03
    cp $1f
    db $e3
    ld hl, sp-$75
    and b
    db $fc
    add e
    db $fc
    ldh a, [rNR23]

jr_031_7cb0:
    jr nc, jr_031_7cf1

    db $f4
    nop
    ld e, $00
    ld [$cc00], sp
    ld c, $02
    nop
    rlca
    nop
    nop
    nop
    sbc a
    inc bc
    nop
    ld a, c
    ld [hl], a
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_031_7cf1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
