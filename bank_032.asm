;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    rst $38
    rra
    ld a, a
    ld a, a
    ld [bc], a
    cpl
    ld bc, $016e
    db $10
    rst $38
    rst $38
    db $fc
    inc bc
    ld [c], a
    inc e
    nop
    ld h, b
    ld bc, $69be
    ld a, a
    rst $38
    ld b, b
    nop
    nop
    nop
    nop
    adc d
    inc h
    rlca
    ld c, a
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
    ld a, a
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
    inc bc
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
    add b
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
    ret nz

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
    ld a, a
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
    rrca
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
    add b
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
    rlca
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    nop
    ld l, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add sp, $00
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
    scf
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rst $18
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
    ld a, a
    rst $38
    rst $38
    ld a, [$0000]
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
    ld bc, $ff3f
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
    rra
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld a, a
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
    rlca
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
    add b
    nop
    nop
    nop
    cpl
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
    ld bc, $ffff
    rst $38
    ldh [rP1], a
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
    rra
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
    add b
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
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld b, $ff
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
    ld a, a
    rst $38
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
    add b
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
    rra
    rst $38
    rst $38
    cp $00
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
    ldh [rP1], a
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
    rla
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
    ccf
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
    inc bc
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
    add b
    nop
    nop
    nop
    rlca
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
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    ldh a, [rP1]
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
    add b
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
    cp $00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
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
    ld e, a
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
    cp a
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
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ff3f
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffdf
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rst $08
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld de, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_032_432e

jr_032_432e:
    nop
    nop
    nop
    inc c
    rst $38
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
    nop
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
    ld bc, $0002
    add $90
    rrca
    cp $05
    ret nz

    ret nz

    ld a, b
    ld a, b
    ld a, b
    ld d, c
    ldh [$63], a
    ld [hl], b
    call nz, $e363
    adc a
    ld c, a
    inc a
    ld a, $17
    rlca
    add a
    add b
    cp a
    and [hl]
    or b
    ld a, h
    ld a, a
    xor a
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    ld a, h
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    ccf
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    add b
    rlca
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    ldh a, [rSB]
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    add b
    rra
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    ld hl, sp+$01
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    add b
    rrca
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    db $fc
    nop
    rst $38
    cp $01
    ldh a, [rP1]
    rlca
    rst $38
    ldh [rTAC], a
    rst $38
    ldh [$3f], a
    nop
    nop
    rra
    cp $00
    rst $38
    cp $03
    ld hl, sp+$00
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    ldh [$1f], a
    ret nz

    nop
    inc bc
    rst $38
    ret nz

    rra
    cp $01
    rst $38
    nop
    nop
    rra
    cp $00
    rst $38
    ldh [$1f], a
    ldh a, [rP1]
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    add b
    nop
    rlca
    rst $38
    add b
    ccf
    db $fc
    rlca
    db $fc
    nop
    nop
    ccf
    db $fc
    ld bc, $e0ff
    ccf
    ldh [rP1], a
    nop
    rst $38
    ldh [rIF], a
    cp $01
    rst $38
    nop
    nop
    rlca
    rst $38
    add b
    ccf
    db $fc
    rlca
    db $fc
    nop
    nop
    rrca
    cp $00
    rst $38
    ldh [$1f], a
    ldh a, [rP1]
    nop
    ccf
    ld hl, sp+$03
    rst $38
    nop
    ld a, a
    ret nz

    nop
    nop
    ld a, a
    ldh a, [rTAC]
    rst $38
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    ldh [rIF], a
    db $fc
    inc bc
    cp $00
    nop
    ld bc, $c0ff
    rra
    ld hl, sp+$0f
    db $fc
    nop
    nop
    inc bc
    rst $38
    add b
    rra
    ldh a, [rIF]
    ld hl, sp+$00
    nop
    rlca
    rst $38
    nop
    ccf
    ldh [$1f], a
    ld hl, sp+$00
    nop
    rrca
    rst $38
    nop
    ld a, a
    ldh [$3f], a
    ldh a, [rP1]
    nop
    rrca
    cp $00
    rst $38
    ret nz

    ld a, a
    ldh [rP1], a
    nop
    rrca
    db $fc
    nop
    rst $38
    ret nz

    ld a, a
    ldh [rP1], a
    nop
    rra
    db $fc
    ld bc, $80ff
    ld a, a
    ldh [rP1], a
    nop
    rra
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh [rP1], a
    nop
    rra
    ld hl, sp+$01
    rst $38
    add b
    rst $38
    ldh [rP1], a
    nop
    rra
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    ret nz

    rlca
    nop
    rra
    ld hl, sp+$01
    rst $38
    nop
    rst $38
    ret nz

    rlca
    nop
    rra
    ld hl, sp+$01
    rst $38
    add b
    rst $38
    ldh [rTMA], a
    nop
    rra
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh [rTAC], a
    add b
    rrca
    db $fc
    ld bc, $80ff
    ld a, a
    ldh [$03], a
    ret nz

    rrca
    db $fc
    nop
    rst $38
    add b
    ld a, a
    ldh a, [$03]
    ret nz

    rlca
    cp $00
    rst $38
    ret nz

    ccf
    ldh a, [$03]
    ldh [rTAC], a
    cp $00
    ld a, a
    ret nz

    rra
    ld hl, sp+$01
    ldh a, [$03]
    rst $38
    nop
    ccf
    ldh [$1f], a
    db $fc
    nop
    ld hl, sp+$01
    rst $38
    add b
    rra
    ldh a, [rIF]
    db $fc
    nop
    ld hl, sp+$01
    rst $38
    ret nz

    rra
    ld hl, sp+$07
    cp $00
    ld a, h
    nop
    ld a, a
    ldh [rIF], a
    db $fc
    rlca
    rst $38
    nop
    ld a, $00
    ld a, a
    ldh a, [rTAC]
    cp $03
    rst $38
    add b
    rra
    nop
    ccf
    ldh a, [$03]
    cp $01
    rst $38
    add b
    rrca
    add b
    rra
    ld hl, sp+$01
    rst $38
    add b
    rst $38
    ldh [rTAC], a
    ret nz

    rlca
    cp $00
    rst $38
    ret nz

    ccf
    ldh a, [rSB]
    ldh [$03], a
    rst $38
    nop
    ccf
    ldh [$1f], a
    ld hl, sp+$01
    ldh a, [rSB]
    rst $38
    add b
    rra
    ldh a, [rIF]
    db $fc
    nop
    ld a, h
    nop
    rst $38
    ret nz

    rrca
    ld hl, sp+$07
    cp $00
    ld a, $00
    ld a, a
    ldh [rTAC], a
    cp $01
    rst $38
    add b
    rra
    nop
    rra
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    ret nz

    rrca
    add b
    rrca
    db $fc
    nop
    rst $38
    add b
    ld a, a
    ldh a, [$03]
    ldh [$03], a
    rst $38
    nop
    ccf
    ldh [$1f], a
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    add b
    rra
    ld hl, sp+$07
    cp $00
    inc a
    nop
    ld a, a
    ldh [rTAC], a
    cp $01
    rst $38
    add b
    rra
    nop
    rra
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh [rTAC], a
    ret nz

    rlca
    cp $00
    ld a, a
    ldh [$1f], a
    ld hl, sp+$01
    ldh a, [rSB]
    rst $38
    add b
    rra
    ld hl, sp+$07
    cp $00
    ld a, h
    nop
    ld a, a
    ldh [rTAC], a
    cp $01
    rst $38
    nop
    rra
    nop
    rra
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh [$03], a
    ret nz

    rlca
    rst $38
    nop
    ccf
    ldh a, [rIF]
    ld hl, sp+$00
    ldh a, [rP1]
    rst $38
    ret nz

    rrca
    db $fc
    ld bc, $00ff
    ld c, $00
    ccf
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ret nz

    ld bc, $0780
    rst $38
    nop
    ld a, a
    ldh [rIF], a
    ld hl, sp+$00
    ld [hl], b
    ld bc, $c0ff
    rrca
    db $fc
    inc bc
    rst $38
    nop
    inc c
    nop
    ccf
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh [rP1], a
    nop
    rlca
    rst $38
    nop
    ld a, a
    ldh [rIF], a
    ld hl, sp+$00
    jr nz, jr_032_46d7

jr_032_46d7:
    rst $38
    ldh [rIF], a
    cp $01
    rst $38
    add b
    nop
    nop
    ccf
    ld hl, sp+$01
    rst $38
    add b
    ccf
    ldh [rP1], a
    nop
    rlca
    rst $38
    add b
    ccf
    ldh a, [rTAC]
    db $fc
    nop
    nop
    nop
    rst $38
    ldh a, [rTAC]
    cp $00
    rst $38
    add b
    nop
    nop
    rra
    cp $00
    rst $38
    ldh [$1f], a
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    ret nz

    rrca
    db $fc
    ld bc, $00ff
    nop
    nop
    ld a, a
    ld hl, sp+$01
    rst $38
    ret nz

    ccf
    ldh [rP1], a
    nop
    rrca
    rst $38
    nop
    ccf
    ld hl, sp+$07
    db $fc
    nop
    nop
    ld bc, $e0ff
    rlca
    rst $38
    add b
    rst $38
    ret nz

    nop
    nop
    ccf
    cp $00
    rst $38
    ld hl, sp+$0f
    db $fc
    nop
    nop
    inc bc
    rst $38
    ldh [rIF], a
    rst $38
    add b
    rst $38
    add b
    nop
    nop
    ld a, a
    db $fc
    nop
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    rlca
    rst $38
    ldh [rIF], a
    rst $38
    add b
    rst $38
    ret nz

    nop
    nop
    ld a, a
    db $fc
    nop
    ld a, a
    ld hl, sp+$0f
    db $fc
    nop
    nop
    rlca
    rst $38
    ldh [rTAC], a
    rst $38
    ret nz

    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    nop
    ld a, a
    rst $38
    rlca
    cp $00
    nop
    rlca
    rst $38
    ldh a, [rSB]
    rst $38
    ld hl, sp+$1f
    ldh [rP1], a
    nop
    rra
    rst $38
    add b
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $fcff
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    add b
    inc bc
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
    db $fc
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
    dec b
    ld bc, $1ff9
    push bc
    pop af
    rst $38
    ld c, $0c
    ld c, $00
    ld [$0ffc], sp
    add a
    pop bc
    db $f4
    ld [hl], b
    db $10
    jr nz, @+$22

    ld c, $07
    adc a
    cp $ff
    rst $38
    db $ec
    and b
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
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
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
    rlca
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    jr nc, jr_032_495d

jr_032_495d:
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    add b
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    ld bc, $00ff
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld bc, $00fc
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    ld bc, $00fc
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    ld bc, $00fc
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    ld bc, $00fc
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    ld bc, $00fc
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    ld hl, sp+$00
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    xor b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld c, h
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
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [hl-], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld e, $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    add hl, de
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    dec b
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
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
    jr nz, jr_032_4a2f

jr_032_4a2f:
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    jr jr_032_4a39

jr_032_4a39:
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
    ccf
    rst $38
    rst $38
    db $fc
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
    ldh [rP1], a
    nop
    nop
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
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
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
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
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
    inc bc
    rst $38
    rst $38
    rst $38
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
    nop
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
    ld a, a
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
    ret nz

    nop
    nop
    nop
    ld [bc], a
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
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $1e
    ld sp, $c0c3
    jp nc, $f8e0

    ld hl, sp+$01
    db $fc
    ld a, [bc]
    ld d, h
    ld l, $7e
    xor a
    add hl, de
    dec a
    ret nc

    xor h
    ld b, e
    rst $38
    db $fd
    adc [hl]
    inc e
    db $76
    ccf
    rst $20
    jp $d1b3


    adc $e3
    cpl
    ld sp, hl
    add b
    ld h, c
    add c
    rst $20
    adc d
    jr nc, @+$01

    rst $38
    jr z, jr_032_4d77

    ldh a, [rP1]
    ld a, b
    nop
    jr z, @+$21

    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    rrca
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rra
    rst $38
    ldh a, [rSB]
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ccf
    rst $38
    ret nz

    rrca
    rst $38
    ldh [$03], a
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    nop
    ccf
    rst $38
    nop

jr_032_4d77:
    ld a, a
    add b
    nop
    nop
    nop
    ld a, a
    cp $00
    ld a, a
    db $fc
    inc bc
    cp $00
    rlca
    ret nz

    nop
    ccf
    rst $38
    nop
    ld a, a
    db $fc
    inc bc
    cp $00
    rra
    ldh [rP1], a
    rra
    rst $38
    ret nz

    ccf
    db $fc
    nop
    cp $00
    rra
    ldh [rP1], a
    rlca
    rst $38
    ret nz

    rra
    cp $00
    rst $38
    add b
    rlca
    ldh a, [rP1]
    ld bc, $f8ff
    rlca
    rst $38
    nop
    ccf
    ldh [$03], a
    db $fc
    nop
    nop
    ld a, a
    db $fc
    inc bc
    rst $38
    add b
    ccf
    ldh [$03], a
    ld hl, sp+$00
    nop
    rra
    rst $38
    nop
    ld a, a
    ldh [rIF], a
    db $fc
    nop
    rst $38
    add b
    nop
    inc bc
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    cp $00
    ld a, a
    ldh [rP1], a
    nop
    ld a, a
    ld hl, sp+$07
    cp $01
    rst $38
    add b
    rra
    db $fc
    nop
    nop
    rra
    cp $00
    rst $38
    add b
    ccf
    ldh [rTAC], a
    cp $00
    nop
    inc bc
    rst $38
    add b
    rra
    ld hl, sp+$0f
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    ldh a, [rTAC]
    cp $01
    rst $38
    add b
    rra
    ret nz

    nop
    nop
    rlca
    cp $00
    rst $38
    add b
    ld a, a
    ldh [rTAC], a
    ldh a, [rP1]
    nop
    ld bc, $80ff
    ccf
    ldh a, [rIF]
    db $fc
    ld bc, $00fe
    nop
    nop
    ccf
    ldh a, [rTAC]
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    nop
    nop
    rrca
    cp $01
    rst $38
    add b
    ld a, a
    ldh [rIF], a
    ldh a, [rP1]
    nop
    ld bc, $80ff
    ld a, a
    ldh [$1f], a
    ld hl, sp+$03
    ld hl, sp+$00
    nop
    nop
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    nop
    nop
    rra
    ld hl, sp+$01
    rst $38
    nop
    rst $38
    ret nz

    rra
    ldh [rP1], a
    nop
    rlca
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [rIF], a
    ldh a, [rP1]
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$01
    cp $00
    nop
    nop
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    ret nz

    nop
    nop
    rlca
    cp $01
    rst $38
    add b
    ld a, a
    ldh [rIF], a
    ldh [rP1], a
    nop
    ld bc, $c0ff
    ld a, a
    ldh [$1f], a
    ld hl, sp+$03
    db $fc
    nop
    nop
    nop
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    nop
    nop
    inc bc
    cp $00
    rst $38
    add b
    ld a, a
    ldh [rIF], a
    ld hl, sp+$00
    nop
    nop
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $00
    rst $38
    add b
    nop
    nop
    rlca
    db $fc
    ld bc, $00ff
    rst $38
    ret nz

    rra
    ldh [$03], a
    nop
    nop
    ccf
    ldh [rIF], a
    ld hl, sp+$07
    cp $00
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rTAC]
    ld hl, sp+$00
    nop
    nop
    rrca
    ld hl, sp+$03
    cp $01
    rst $38
    add b
    ccf
    ret nz

    ld [$0000], sp
    ld a, a
    ret nz

    ccf
    ld hl, sp+$07
    db $fc
    ld bc, $00fe
    nop
    nop
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ldh a, [$03]
    db $fc
    nop
    ldh [rP1], a
    rrca
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rra
    ldh [$03], a
    add b
    nop
    rra
    ldh a, [rTAC]
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    ld [bc], a
    nop
    nop
    ccf
    ldh a, [rIF]
    ldh a, [$03]
    cp $00
    rst $38
    nop
    rra
    nop
    nop
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    nop
    cp $00
    ld a, b
    nop
    nop
    rst $38
    ldh a, [$1f]
    ldh a, [rIF]
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ldh [$3f], a
    ld hl, sp+$0f
    db $fc
    ld bc, $00fe
    nop
    nop
    ld bc, $c0ff
    ld a, a
    ldh a, [$1f]
    ld hl, sp+$01
    cp $00
    jr c, jr_032_4f46

jr_032_4f46:
    ld bc, $80ff
    ccf
    ldh [$1f], a
    ld hl, sp+$01
    db $fc
    nop
    ldh a, [rP1]
    ld bc, $c0ff
    ccf
    ldh [rIF], a
    ld hl, sp+$01
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    ld bc, $00fe
    ld h, b
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$01
    cp $00
    nop
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$01
    cp $00
    nop
    nop
    nop
    rst $38
    ret nz

    rra
    ldh a, [rIF]
    db $fc
    ld bc, $00fe
    ld a, h
    nop
    nop
    ld a, a
    ldh [$1f], a
    ldh a, [rTAC]
    db $fc
    ld bc, $00fe
    stop
    nop
    ccf
    ldh a, [rTAC]
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    ld e, $00
    nop
    rra
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    ret nz

    ld a, $00
    nop
    rlca
    cp $01
    rst $38
    nop
    rst $38
    ret nz

    rra
    ldh a, [rTAC]
    ret nz

    nop
    inc bc
    rst $38
    nop
    ld a, a
    ret nz

    ld a, a
    ldh [rTAC], a
    ld hl, sp+$03
    ret nz

    nop
    nop
    rst $38
    ldh [$3f], a
    ldh [$1f], a
    ld hl, sp+$03
    cp $00
    ld a, b
    nop
    nop
    rra
    ld hl, sp+$07
    db $fc
    rlca
    rst $38
    nop
    rst $38
    add b
    ld a, $00
    nop
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [rIF], a
    ld hl, sp+$07
    ret nz

    nop
    nop
    ld a, a
    ldh [$1f], a
    ld hl, sp+$0f
    db $fc
    ld bc, $00ff
    ld a, [hl]
    nop
    nop
    rrca
    cp $03
    rst $38
    ld bc, $80ff
    rra
    ldh [$1f], a
    add b
    nop
    nop
    rst $38
    ldh [$3f], a
    ld hl, sp+$1f
    ldh a, [$03]
    db $fc
    ld bc, $00f0
    nop
    rra
    ld hl, sp+$07
    rst $38
    ld bc, $00ff
    ld a, a
    ret nz

    rrca
    add b
    nop
    ld bc, $80ff
    ld a, a
    ret nz

    ccf
    ldh [rIF], a
    ld hl, sp+$03
    ldh a, [rP1]
    nop
    ccf
    ldh a, [rTAC]
    cp $03
    cp $00
    ld a, a
    add b
    ld a, a
    nop
    nop
    rlca
    rst $38
    add b
    rst $38
    ldh [$7f], a
    ldh [rIF], a
    ld hl, sp+$03
    ldh a, [rP1]
    nop
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    add b
    ccf
    nop
    nop
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ldh [rIF], a
    db $fc
    ld bc, $00f8
    nop
    rra
    ld hl, sp+$07
    rst $38
    add e
    rst $38
    nop
    ld a, a
    ret nz

    nop
    nop
    nop
    ld bc, $c0ff
    ccf
    ld hl, sp+$1f
    ldh a, [$03]
    cp $00
    cp $00
    nop
    rrca
    db $fc
    ld bc, $01ff
    rst $38
    add b
    ccf
    ldh [rTAC], a
    ret nz

    nop
    nop
    ld a, a
    ldh [$1f], a
    ld hl, sp+$0f
    ld hl, sp+$01
    rst $38
    nop
    ld a, a
    nop
    nop
    inc bc
    rst $38
    nop
    rst $38
    ldh a, [$3f]
    ret nz

    rlca
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    ccf
    ld hl, sp+$0f
    rst $38
    ld bc, $00ff
    ld a, a
    add b
    rra
    add b
    nop
    ld bc, $80ff
    ccf
    ldh a, [$1f]
    ldh a, [rTAC]
    cp $00
    cp $00
    nop
    rlca
    cp $01
    rst $38
    ldh [rIE], a
    add b
    rra
    ldh a, [rTAC]
    ldh a, [rP1]
    nop
    ld a, a
    ldh a, [$1f]
    db $fc
    rrca
    db $fc
    ld bc, $80ff
    ccf
    nop
    inc bc
    ld bc, $c0ff
    ld a, a
    db $fc
    rra
    ldh a, [$03]
    cp $00
    ld hl, sp+$00
    nop
    rrca
    db $fc
    inc bc
    rst $38
    add b
    rst $38
    add b
    rra
    ldh [rIF], a
    ret nz

    nop
    nop
    ld a, a
    ldh [$1f], a
    db $fc
    rlca
    db $fc
    ld bc, $80ff
    ccf
    nop
    nop
    ld bc, $80ff
    rst $38
    ld hl, sp+$3f
    ldh [rIF], a
    ld hl, sp+$03
    ld hl, sp+$00
    nop
    rrca
    db $fc
    rlca
    rst $38
    add c
    rst $38
    nop
    ld a, a
    ret nz

    rra
    add b
    nop
    nop
    ld a, a
    ldh [$1f], a
    cp $07
    ld hl, sp+$01
    rst $38
    nop
    ccf
    nop
    nop
    inc bc
    rst $38
    jr nz, @+$01

    ldh a, [$7f]
    ldh [rTAC], a
    db $fc
    inc bc
    ldh [rP1], a
    nop
    rra
    ldh a, [rIF]
    db $fc
    rlca
    cp $00
    ld a, a
    add b
    rra
    nop
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [rSB]
    cp $00
    ld hl, sp+$00
    nop
    rlca
    cp $81
    rst $38
    ld [hl], a
    rst $38
    add b
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    ld hl, sp+$0f
    rst $38
    inc bc
    cp $00
    ld a, a
    ldh [rIF], a
    add b
    nop
    ld bc, $e2ff
    ld a, a
    ei
    ccf
    ldh a, [$03]
    cp $00
    db $fc
    nop
    nop
    rra
    rst $38
    rrca
    rst $38
    pop bc
    cp $00
    ccf
    ret nz

    rlca
    ldh [rP1], a
    nop
    ccf
    ld hl, sp+$0f
    ei
    rlca
    db $fc
    nop
    cp $00
    ld c, $00
    nop
    nop
    rst $38
    ret nz

    ccf
    cp $0f
    ldh a, [rSB]
    db $fc
    nop
    inc a
    nop
    nop
    ld bc, $80ff
    ld a, a
    ldh a, [$1f]
    ldh a, [$03]
    ld hl, sp+$01
    cp h
    nop
    nop
    inc bc
    rst $38
    add b
    rst $38
    db $fc
    ld a, a
    ldh [$03], a
    db $fc
    ldh [rNR10], a
    nop
    nop
    ld bc, $93ff
    rst $38
    ret c

    ld a, a
    ldh a, [rTAC]
    db $fc
    dec de
    ld a, h
    nop
    nop
    ld bc, $f0ff
    rst $38
    ld hl, sp+$1f
    ldh [$03], a
    db $fc
    inc bc
    add sp, $00
    nop
    nop
    rst $38
    call z, $c8ff
    sbc a
    ldh a, [$03]
    db $fc
    rlca
    ldh [rP1], a
    nop
    nop
    ld a, a
    ldh [$7f], a
    ldh [$1f], a
    ld hl, sp+$00
    rst $38
    jr z, jr_032_51e3

    add b
    nop
    nop
    ld a, a
    ld hl, sp-$41
    db $ec

jr_032_51e3:
    adc a
    ld hl, sp+$01
    cp $07
    ld a, a
    add b
    nop
    nop
    ccf
    add sp, $4f
    ld hl, sp+$07
    cp $00
    rst $38
    nop
    rlca
    ret nz

    nop
    nop
    rra
    cp $ff
    ld hl, sp+$27
    rst $38
    nop
    ccf
    add b
    inc bc
    ret nz

    nop
    nop
    ld a, a
    jp hl


    rst $38
    ld hl, sp+$4f
    db $fc
    nop
    rst $38
    add c
    call nz, RST_00
    nop
    ld a, a
    rst $38
    rst $38
    db $e3
    sbc a
    db $fc
    nop
    rst $38
    ld bc, $00be
    nop
    nop
    rst $38
    ldh [$3f], a
    ld hl, sp+$07
    db $fc
    nop
    cp $00
    rra
    nop
    nop
    ld bc, $f9ff
    rst $38
    db $fc
    rst $18
    ldh a, [$03]
    ld hl, sp+$00
    jr nc, jr_032_5238

jr_032_5238:
    nop
    inc bc
    cp $0f
    rst $38
    inc bc
    rst $38
    ldh [rTAC], a
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    rlca
    rst $38
    adc a
    rst $38
    add c
    ld a, a
    ldh [rTAC], a
    db $fc
    nop
    db $fc
    nop
    nop
    rra
    rst $38
    add a
    rst $38
    pop bc
    cp $00
    rra
    ret nz

    add c
    ret nz

    nop
    nop
    ld a, a
    add sp, -$21
    cp $07
    cp $00
    ld a, a
    add b
    rrca
    add b
    nop
    ld bc, $e0ff
    rst $38
    cp $0f
    ldh a, [rSB]
    cp $04
    ld b, b
    nop
    nop
    rlca
    rst $38
    ret nz

    rst $38
    ld hl, sp+$1f
    ld hl, sp+$03
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    ld hl, sp+$1f
    rst $38
    jp $00fe


    ld a, a
    add b
    rra
    ret nz

    nop
    nop
    rst $38
    ldh a, [$1f]
    rst $38
    rrca
    rst $38
    nop
    ccf
    ldh [rTMA], a
    nop
    nop
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld hl, sp+$3f
    ld hl, sp+$03
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    cp $03
    rst $38
    ldh [rIE], a
    add b
    rrca
    cp $00
    nop
    nop
    nop
    rst $38
    ldh a, [$1f]
    cp $0f
    rst $38
    nop
    ccf
    ret nz

    nop
    ld b, b
    nop
    nop
    rst $38
    ld hl, sp+$1f
    rst $38
    add e
    rst $38
    ret nz

    rra
    ld hl, sp+$00
    inc b
    nop
    ld bc, $f0ff
    ccf
    cp $0f
    rst $38
    nop
    rra
    ei
    add b
    nop
    nop
    nop
    rst $38
    ldh a, [$1f]
    cp $03
    rst $38
    add b
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    db $fc
    rrca
    rst $38
    add b
    rst $38
    ldh a, [rSC]
    rst $38
    and b
    nop
    nop
    nop
    ld a, a
    cp $07
    rst $38
    ret nz

    ld a, a
    ldh a, [rSB]
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    ldh [rIE], a
    db $fc
    rlca
    rst $38
    add b
    rlca
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    ldh a, [$3f]
    cp $03
    rst $38
    ret nz

    rrca
    db $fc
    nop
    nop
    nop
    nop
    ccf
    rst $38
    inc bc
    rst $38
    ldh [$3f], a
    db $fc
    ld bc, $807f
    nop
    nop
    nop
    rlca
    rst $38
    ldh [rIE], a
    db $fc
    rlca
    rst $38
    add b
    ccf
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    db $fc
    rrca
    rst $38
    ret nz

    rst $38
    ld hl, sp+$01
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ret nz

    rst $38
    db $fc
    rra
    rst $38
    add b
    rra
    ldh a, [rP1]
    nop
    nop
    inc bc
    rst $38
    ldh [$3f], a
    rst $38
    rlca
    rst $38
    ldh [$1f], a
    cp $00
    nop
    nop
    nop
    ccf
    rst $38
    inc hl
    rst $38
    ldh a, [$3f]
    cp $00
    ld a, a
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    ldh [$7f], a
    db $fc
    rlca
    rst $38
    add b
    ccf
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    db $fc
    rrca
    rst $38
    pop bc
    rst $38
    ldh a, [rSB]
    rst $38
    add b
    nop
    nop
    nop
    rrca
    rst $38
    ret nz

    rst $38
    ld hl, sp+$1f
    rst $38
    nop
    rra
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    cp $0f
    rst $38
    pop bc
    rst $38
    db $fc
    ld bc, $80ff
    nop
    nop
    nop
    rrca
    rst $38
    pop hl
    rst $38
    db $fc
    rrca
    rst $38
    add b
    rra
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    cp $0f
    rst $38
    ldh [rIE], a
    db $fc
    inc bc
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    ldh a, [rIE]
    rst $38
    cpl
    rst $38
    add b
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ccf
    rst $38
    jp $fcff


    rra
    cp $00
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rlca
    rst $38
    ldh a, [$7f]
    db $fc
    nop
    rst $38
    ret nz

    nop
    nop
    nop
    inc bc
    rst $38
    db $fc
    ccf
    rst $38
    ei
    rst $38
    ldh [rIF], a
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    ldh a, [$7f]
    rst $38
    rst $00
    rst $38
    ldh [$03], a
    rst $38
    nop
    nop
    nop
    nop
    rra
    rst $38
    ldh a, [$7f]
    rst $38
    rrca
    rst $38
    ldh [$3f], a
    db $fc
    nop
    nop
    nop
    nop
    ccf
    rst $38
    jp $ff7f


    rst $38
    rst $38
    add b
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    ret nz

    rst $38
    cp $7f
    rst $38
    nop
    ld bc, $00fc
    nop
    nop
    nop
    rra
    rst $38
    ldh a, [$5f]
    rst $38
    rst $38
    rst $38
    ret nc

    ld bc, $00b8
    nop
    nop
    nop
    rra
    rst $38
    ldh a, [$7f]
    rst $38
    cp a
    rst $38
    ldh a, [rP1]
    ld a, [hl-]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ld hl, sp+$1f
    rst $38
    rst $38
    ld a, a
    ldh [rP1], a
    inc a
    nop
    nop
    nop
    nop
    rlca
    rst $38
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
    rrca
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    ld_long a, $ffdf
    rst $38
    di
    ld hl, sp+$00
    inc l
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    rlca
    ret nz

    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    add a
    rst $38
    rst $38
    pop de
    ldh a, [rP1]
    inc b
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
    db $fc
    ld hl, sp+$00
    rlca
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    db $f4
    rra
    rst $38
    rst $38
    ret nz

    nop
    ld c, h
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld e, $80
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    or a
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    cp $00
    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rPCM34], a
    rst $38
    rst $38
    ret nz

    nop
    ccf
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    db $fc
    dec c
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    pop bc
    ccf
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    add d
    rlca
    rst $38
    rst $38
    add b
    nop
    ccf
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    rlca
    rst $38
    db $fc
    nop
    nop
    ld [$0000], sp
    nop
    rst $38
    rst $38
    cp $c0
    ccf
    rst $38
    ld hl, sp+$00
    nop
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [$7f], a
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    pop bc
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
    rst $38
    ldh a, [rNR34]
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    or $c0
    nop
    nop
    ld bc, $ff7f
    db $dd
    rst $38
    rst $38
    db $f4
    ld [$1f00], sp
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld [bc], a
    ld l, a
    add b
    jr nz, jr_032_5991

jr_032_5991:
    rst $08
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
    nop
    nop
    nop
    inc bc
    rst $38
    cp $bf
    ld sp, hl
    ld hl, sp+$00
    nop
    ld a, h
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    ldh a, [rP1]
    nop
    ld bc, $ffff
    jp c, $ff3f

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
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    add hl, hl
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    rst $38
    db $fc
    nop
    inc l
    nop
    rra
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
    nop
    ld c, a
    rst $38
    rst $38
    ret c

    call nz, Call_000_0200
    nop
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    nop
    ld h, a
    rst $38
    rst $38
    xor b
    nop
    ld bc, $ff3f
    rst $38
    ret nz

    nop
    ld b, $3f
    rst $38
    rst $38
    sbc h
    ld h, b
    nop
    nop
    add b
    ld bc, $ffff
    ld hl, sp+$00
    nop
    ld b, $ff
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    ld b, $ff
    rst $38
    cp $00
    nop
    rlca
    rst $38
    cp $e0
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    nop
    cp a
    rst $38
    cp $00
    nop
    add hl, bc
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
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    dec c
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    add sp, $00
    ld bc, $f3ae
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    sbc a
    rst $38
    cp $00
    nop
    ld b, $7f
    rst $38
    db $e4
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    di
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    call nz, RST_00
    ld b, $7f
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    inc bc
    ld a, a
    rst $38
    ld a, [c]
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rlca
    ld a, a
    rst $38
    and $00
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    ld b, $ff
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    ld bc, $ff9f
    ei
    adc h
    ld b, b
    nop
    nop
    ld [$ffff], sp
    db $fc
    nop
    nop
    inc b
    ld a, a
    rst $38
    ret nz

    nop
    nop
    dec c
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    inc hl
    cp e
    rst $38
    rst $38
    or c
    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    jr nz, jr_032_5af3

jr_032_5af3:
    nop
    dec de
    rst $38
    rst $38
    jr nz, jr_032_5af9

jr_032_5af9:
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    dec de
    rst $38
    rst $38
    or b
    nop
    nop
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    nop
    dec c
    rst $38
    rst $38
    sub b
    nop
    nop
    inc sp
    rst $38
    cp $60
    nop
    nop
    ccf
    rst $38
    and $00
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
    nop
    add b
    ld bc, $ff7f
    db $fc
    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
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
    dec c
    rst $38
    rst $38
    sub b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    cp a
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffbf
    ei
    or l
    nop
    nop
    ld h, e
    cp a
    rst $38
    db $fd
    pop bc
    inc b
    nop
    ld [hl], e
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    dec c
    ld a, a
    rst $38
    db $fc
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld h, a
    rst $38
    rst $38
    rst $38
    sbc h
    nop
    nop
    nop
    jr @+$01

    rst $38
    rst $38
    rst $38
    ld [hl], b
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
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    ret z

    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sub b
    ld [hl], b
    ld [bc], a
    nop
    ld e, h
    ld a, a
    ldh a, [$71]
    add h
    ld b, $02
    add [hl]
    ei
    add hl, bc
    ld b, a
    db $10
    pop de
    pop af
    ldh a, [$f1]
    and e
    dec hl
    cp e
    db $dd
    xor $ff
    jp Jump_000_0023


    ld bc, $ff03
    rst $38
    rst $38
    pop bc
    add b
    nop
    nop
    sbc a
    rst $38
    rst $38
    ld hl, sp+$50
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    ld [hl], h
    nop
    nop
    rst $38
    rst $38
    ldh [rSB], a
    ldh a, [rP1]
    rlca
    rst $38
    ld hl, sp+$00
    ld a, [hl]
    nop
    ld bc, $fcff
    nop
    ld a, a
    add b
    ld bc, $fcff
    nop
    ccf
    ldh [rP1], a
    ccf
    cp $00
    ccf
    ldh a, [rP1]
    rrca
    rst $38
    add b
    rrca
    cp $00
    nop
    rst $38
    ldh a, [rSB]
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    ret nz

    ccf
    db $fc
    nop
    nop
    rra
    cp $01
    rst $38
    ldh [rP1], a
    nop
    ccf
    db $fc
    rlca
    rst $38
    nop
    ld [bc], a
    nop
    ld a, a
    ld hl, sp+$0f
    cp $00
    inc c
    nop
    rst $38
    ldh a, [$1f]
    ld hl, sp+$00
    ret nz

    ld bc, $c0ff
    ccf
    ldh [$03], a
    ldh [$03], a
    rst $38
    add b
    ld a, a
    ret nz

    rrca
    ldh [$03], a
    rst $38
    nop
    ld a, a
    add b
    ccf
    add b
    inc bc
    cp $00
    rst $38
    add b
    ld a, a
    add b
    inc bc
    cp $00
    rst $38
    add b
    ld a, a
    add b
    inc bc
    cp $00
    rst $38
    add b
    ld a, a
    add b
    inc bc
    rst $38
    nop
    ld a, a
    ret nz

    ld a, a
    add b
    ld bc, $00ff
    ld a, a
    ret nz

    ccf
    ret nz

    ld bc, $c0ff
    rra
    ldh a, [$1f]
    ldh a, [rSC]
    sbc a
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$00
    rst $28
    ld hl, sp+$07
    cp $03
    db $fc
    nop
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    add b
    nop
    rst $38
    add b
    ccf
    ldh [$3f], a
    ldh [rP1], a
    sbc a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$00
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, a
    ret nz

    ccf
    ldh a, [$3f]
    ldh [rP1], a
    rrca
    ld hl, sp+$03
    cp $03
    cp $00
    nop
    rst $38
    add b
    ccf
    ldh [$3f], a
    ret nz

    nop
    rlca
    ld hl, sp+$07
    cp $03
    cp $00
    nop
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [rP1], a
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    nop
    rra
    ldh [rIF], a
    ldh a, [$1f]
    ld hl, sp+$00
    nop
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    nop
    inc bc
    db $fc
    ld bc, $03fe
    rst $38
    nop
    nop
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ld hl, sp+$00
    nop
    ccf
    ldh [$1f], a
    ldh a, [$3f]
    ldh a, [rP1]
    nop
    ld a, a
    ret nz

    ccf
    ldh [$7f], a
    ldh a, [rP1]
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    nop
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    nop
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add b
    nop
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    nop
    inc bc
    rst $38
    inc bc
    cp $03
    rst $38
    add b
    nop
    inc bc
    cp $03
    rst $38
    rlca
    rst $38
    add b
    nop
    inc bc
    cp $01
    rst $38
    inc bc
    rst $38
    add b
    nop
    rlca
    cp $01
    rst $38
    inc bc
    rst $38
    add b
    nop
    inc bc
    rst $38
    ld bc, $83ff
    rst $38
    nop
    nop
    rlca
    cp $00
    rst $38
    add e
    rst $38
    nop
    nop
    inc bc
    cp $01
    rst $38
    add e
    rst $38
    nop
    nop
    inc bc
    cp $01
    rst $38
    add c
    rst $38
    add b
    nop
    inc bc
    cp $00
    rst $38
    pop bc
    rst $38
    add b
    nop
    inc bc
    cp $03
    rst $38
    add c
    rst $38
    nop
    nop
    inc bc
    cp $01
    rst $38
    add e
    rst $38
    add b
    nop
    rlca
    cp $01
    rst $38
    ld bc, $80ff
    nop
    inc bc
    cp $01
    rst $38
    add c
    rst $38
    add b
    nop
    inc bc
    cp $00
    rst $38
    add c
    rst $38
    add b
    nop
    rlca
    cp $02
    rst $38
    add c
    rst $38
    add b
    nop
    db $e3
    rst $38
    nop
    ld a, a
    add c
    rst $38
    add b
    nop
    rlca
    cp $00
    ld a, a
    inc de
    rst $38
    nop
    nop
    rlca
    db $fc
    rlca
    cp $03
    cp $00
    nop
    rlca
    db $fc
    inc bc
    rst $38
    inc bc
    cp $00
    nop
    rrca
    ld hl, sp+$0f
    db $fc
    rlca
    db $fc
    nop
    nop
    rra
    ldh a, [$3f]
    ld hl, sp+$1f
    ld hl, sp+$00
    nop
    rra
    ldh a, [$3f]
    ld hl, sp+$1f
    db $fc
    nop
    nop
    rra
    ldh a, [$3f]
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    ccf
    ldh [$7f], a
    ldh a, [$7f]
    ldh a, [rP1]
    nop
    ccf
    ldh [$3f], a
    ldh a, [$3f]
    ldh a, [rP1]
    nop
    ccf
    ldh [$7f], a
    ldh a, [$1f]
    ld hl, sp+$00
    nop
    ccf
    ldh [$7f], a
    ldh a, [$7f]
    ld hl, sp+$00
    ld b, $3f
    ldh [$7f], a
    ldh [$3f], a
    ldh a, [rP1]
    nop
    ccf
    ldh [$7f], a
    ldh [$3f], a
    ldh a, [rP1]
    nop
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [rP1], a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    nop
    ld bc, $03ff
    rst $38
    ld bc, $80ff
    nop
    inc bc
    cp $03
    cp $03
    rst $38
    nop
    nop
    rlca
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    nop
    nop
    rrca
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$00
    nop
    ccf
    ldh [$7f], a
    ldh [$3f], a
    ldh a, [rP1]
    nop
    ld a, a
    ldh [$7f], a
    ret nz

    ld a, a
    ldh [rP1], a
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    nop
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    nop
    nop
    inc bc
    cp $03
    db $fc
    rlca
    cp $00
    nop
    rrca
    db $fc
    rrca
    ld hl, sp+$0f
    db $fc
    nop
    nop
    rra
    ld hl, sp+$3f
    ldh a, [$1f]
    ldh a, [rP1]
    nop
    ccf
    ldh [$7f], a
    ret nz

    ld a, a
    ldh [rP1], a
    nop
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    add b
    nop
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    nop
    inc bc
    cp $07
    db $fc
    rlca
    cp $00
    nop
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    rra
    ldh a, [$1f]
    ldh a, [$3f]
    ldh a, [rP1]
    nop
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    nop
    nop
    rst $38
    add c
    rst $38
    ld bc, $80ff
    nop
    inc bc
    rst $38
    inc bc
    cp $03
    rst $38
    nop
    nop
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$00
    nop
    rra
    ldh a, [$3f]
    ldh [$3f], a
    ldh a, [rP1]
    nop
    ccf
    ldh [$7f], a
    ret nz

    ld a, a
    ldh [rP1], a
    nop
    rst $38
    add c
    rst $38
    ld bc, $80ff
    nop
    inc bc
    rst $38
    rlca
    cp $03
    cp $00
    nop
    rlca
    ei
    rra
    ld a, a
    ld a, a
    ld [bc], a
    ld d, $01
    ld l, a
    inc bc
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    cp $76
    nop
    ld b, b
    nop
    ld bc, $ff1f
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
    rrca
    rst $38
    rst $38
    rst $38
    ret nc

    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    rlca
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
    rrca
    rst $38
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
    nop
    ccf
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
    nop
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
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
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
    ld bc, $ffff
    cp $00
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
    rst $38
    add b
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
    ld bc, $ffff
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
    ccf
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
    inc bc
    rst $38
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
    nop
    ccf
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
    ld a, a
    rst $38
    rst $38
    db $f4
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
    db $fc
    nop
    nop
    ld bc, $ffbf
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc b
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
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ff9f
    rst $38
    db $fc
    nop
    nop
    nop
    ld c, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld l, a
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
    add b
    nop
    nop
    inc hl
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld de, $ffff
    rst $38
    ret nz

    nop
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc b
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ff1f
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
    ld h, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
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
    db $fc
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    cp $00
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
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
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
    ldh a, [rP1]
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
    add b
    nop
    nop
    ld bc, $ffff
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    db $fc
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    cp a
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
    add b
    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ff7f
    rst $38
    cp $00
    nop
    nop
    inc sp
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld b, $7f
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
    ret nz

    nop
    nop
    ld bc, $ffff
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
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld de, $ffff
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
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
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc b
    ld a, a
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
    jr nc, jr_032_62f5

jr_032_62f5:
    nop
    nop
    nop
    ld a, e
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
    ld a, [$0000]
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
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
    ldh [rP1], a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    inc bc
    ldh a, [$fd]
    ccf
    call $eda2
    or [hl]
    adc d
    jp z, $afaa

    ld h, [hl]
    ld l, l
    ld d, l
    inc h
    reti


    dec de
    ld a, [hl+]
    ld h, l
    sbc $fc
    sbc d
    ld l, $0b
    add sp, -$78
    add c
    dec b
    rst $38
    db $fd
    ld a, [$000a]
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    ccf
    cp $00
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    cp $00
    nop
    rrca
    rst $38
    db $fc
    nop
    rlca
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    ldh [rP1], a
    rra
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    ld a, a
    rst $38
    add b
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    rst $38
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    ret nz

    nop
    ld a, a
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    ld hl, sp+$00
    ld a, a
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    db $fc
    nop
    ccf
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    cp $00
    rra
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    add b
    rlca
    rst $38
    ldh a, [rTAC]
    ldh [rP1], a
    nop
    rst $38
    ldh [rP1], a
    rst $38
    db $fc
    ld bc, $00fc
    nop
    rrca
    cp $00
    rra
    rst $38
    ret nz

    ld a, a
    nop
    nop
    nop
    ld a, a
    ldh a, [rP1]
    rst $38
    db $fc
    inc bc
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    nop
    rlca
    cp $00
    rra
    ret nz

    nop
    ld a, b
    rlca
    cp $00
    rrca
    db $fc
    nop
    ld a, a
    add b
    nop
    ld hl, sp+$07
    rst $38
    add b
    rrca
    db $fc
    nop
    rst $38
    nop
    ld bc, $01fe
    rst $38
    ldh [$03], a
    rst $38
    add b
    rra
    ldh [rSB], a
    rst $38
    nop
    rra
    db $fc
    nop
    rst $38
    ldh [rTAC], a
    db $fc
    nop
    ld a, a
    ldh [$03], a
    rst $38
    add b
    rrca
    cp $00
    rst $38
    add b
    inc bc
    db $fc
    nop
    ccf
    ldh a, [rSB]
    rst $38
    ret nz

    rra
    ld hl, sp+$01
    db $fd
    nop
    rrca
    cp $00
    ccf
    ld hl, sp+$07
    cp $00
    ccf
    ret nz

    inc bc
    rst $38
    nop
    rra
    db $fc
    ld bc, $80ff
    rrca
    ldh a, [rSB]
    rst $38
    add b
    rrca
    db $fc
    ld bc, $80ff
    rrca
    ldh a, [$03]
    rst $38
    nop
    rrca
    db $fc
    ld bc, $80ff
    rrca
    ldh [rTAC], a
    cp $00
    ccf
    ldh a, [rTAC]
    rst $38
    nop
    rra
    ret nz

    rrca
    ld hl, sp+$00
    ld a, a
    ldh [rIF], a
    db $fc
    nop
    ld a, a
    nop
    ld a, a
    ldh [$03], a
    rst $38
    add b
    ccf
    ldh a, [rSB]
    db $fc
    ld bc, $80ff
    rrca
    cp $00
    rst $38
    ret nz

    rlca
    ldh [rTAC], a
    cp $00
    ccf
    ldh a, [$03]
    rst $38
    nop
    rra
    ret nz

    rra
    ld hl, sp+$00
    ld a, a
    ret nz

    rrca
    db $fc
    nop
    ld a, a
    nop
    ccf
    ldh a, [rSB]
    rst $38
    add b
    ccf
    ld hl, sp+$00
    cp $00
    ld a, a
    ldh [$03], a
    rst $38
    nop
    ld a, a
    ldh a, [$03]
    ld hl, sp+$00
    rst $38
    ret nz

    rlca
    cp $00
    rst $38
    ldh [rTAC], a
    ld hl, sp+$01
    rst $38
    add b
    rrca
    db $fc
    nop
    rst $38
    ldh [rTAC], a
    ldh a, [rSB]
    rst $38
    add b
    rrca
    db $fc
    nop
    rst $38
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    ret nz

    rrca
    cp $00
    rst $38
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    ret nz

    rlca
    cp $00
    rst $38
    ldh a, [$03]
    db $fc
    nop
    ld a, a
    ldh [$03], a
    rst $38
    nop
    ccf
    ld hl, sp+$01
    cp $00
    rra
    ld hl, sp+$01
    rst $38
    ret nz

    rra
    db $fc
    nop
    rst $38
    nop
    rlca
    cp $00
    ld a, a
    ldh a, [rTAC]
    rst $38
    nop
    ccf
    ret nz

    ld bc, $c0ff
    rrca
    db $fc
    nop
    rst $38
    ldh [rTAC], a
    ld hl, sp+$00
    ccf
    ldh a, [rSB]
    rst $38
    add b
    ccf
    db $fc
    nop
    cp $00
    rlca
    rst $38
    nop
    ccf
    ld hl, sp+$07
    rst $38
    add b
    rra
    ldh [rP1], a
    ld a, a
    ldh a, [$03]
    rst $38
    add b
    ld a, a
    ld hl, sp+$01
    db $fc
    nop
    rlca
    rst $38
    nop
    ccf
    ld hl, sp+$07
    rst $38
    add b
    rra
    ret nz

    nop
    rra
    ldh a, [rSB]
    rst $38
    ret nz

    ccf
    db $fc
    nop
    cp $00
    nop
    rst $38
    ret nz

    rrca
    cp $00
    rst $38
    ldh a, [$03]
    ld hl, sp+$00
    rlca
    cp $00
    ccf
    ld hl, sp+$07
    rst $38
    add b
    rrca
    ret nz

    nop
    rra
    db $fc
    nop
    rst $38
    ldh [$1f], a
    cp $00
    ld a, a
    nop
    nop
    ld a, a
    ldh a, [$03]
    rst $38
    add b
    ld a, a
    ld hl, sp+$00
    db $fc
    nop
    nop
    rst $38
    ret nz

    rrca
    cp $00
    rst $38
    ldh [$03], a
    ld hl, sp+$00
    ld bc, $80ff
    rra
    db $fc
    inc bc
    rst $38
    ret nz

    rlca
    ldh a, [rP1]
    inc bc
    rst $38
    nop
    rra
    db $fc
    inc bc
    rst $38
    ret nz

    rlca
    ldh [rP1], a
    ld bc, $00ff
    rra
    db $fc
    ld bc, $c0ff
    inc bc
    ldh [rP1], a
    add c
    rst $38
    add b
    rrca
    db $fc
    nop
    ccf
    ret nz

    ld bc, $00f0
    ldh [rIE], a
    ret nz

    rrca
    cp $00
    rra
    ret nz

    inc bc
    ldh [rSB], a
    ldh [rIE], a
    ret nc

    rlca
    cp $00
    rrca
    ldh [rSB], a
    ldh a, [rP1]
    ldh a, [$7f]
    add sp, $03
    cp $00
    rlca
    ldh [rP1], a
    ld a, b
    nop
    cp $3f
    rst $38
    ld hl, sp-$01
    ret nz

    nop
    ld [hl], b
    nop
    ldh [rP1], a
    rra
    db $e3
    rst $38
    or $01
    ld hl, sp+$00
    rrca
    ret nz

    rlca
    db $fc
    nop
    rst $38
    rst $20
    rst $38
    ret nz

    nop
    inc a
    nop
    ccf
    db $fc
    rrca
    ld hl, sp+$07
    cp $00
    rst $38
    nop
    ld bc, $81ff
    rst $38
    rst $38
    rst $38
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    jr nz, jr_032_74f5

    adc c
    rrca
    jr c, jr_032_74a4

jr_032_74a4:
    nop
    nop
    ld [$ff87], sp
    ret nc

    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $f4
    inc b
    nop
    nop
    inc b
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $00
    ld a, [hl]
    nop
    nop
    ld b, b
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    inc bc
    add sp, $00
    ld bc, $ff3f
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
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
    ccf
    rst $38
    db $fd
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $38

jr_032_74f5:
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld [bc], a
    rst $38
    db $fc
    set 7, a
    cp $40
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
    nop
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    ldh [$7f], a
    ldh [rNR41], a
    nop
    rra
    rst $38
    rst $38
    cp $80
    nop
    nop
    ld bc, $ffff
    nop
    nop
    rlca
    nop
    rra
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
    ccf
    rst $38
    rst $38
    rst $38
    ld b, d
    nop
    nop
    rst $38
    rst $38
    rst $38
    adc b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    db $f4
    nop
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    ret c

    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    or $00
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    cp $00
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
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rlca
    cp a
    rst $38
    db $fc
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    db $10
    rst $30
    rst $38
    rst $38
    add b
    nop
    ld [bc], a
    dec a
    rst $38
    rst $38
    ld [c], a
    nop
    nop
    inc e
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc hl
    rst $28
    rst $38
    cp $00
    nop
    nop
    rst $30
    rst $38
    rst $38
    add b
    nop
    ld [bc], a
    jr c, @+$01

    rst $38
    db $e4
    nop
    nop
    add a
    ccf
    rst $38
    ld sp, hl
    nop
    nop
    inc hl
    adc a
    rst $38
    cp $c0
    nop
    nop
    ld [hl], e
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc e
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $ffc7
    rst $38
    ldh [rP1], a
    inc b
    add hl, sp
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $7f0c
    rst $38
    ei
    nop
    nop
    ld bc, $ff8f
    rst $38
    ldh [rP1], a
    nop
    ld sp, $ffff
    db $fc
    nop
    nop
    ld c, $3f
    rst $38
    rst $38
    nop
    nop
    nop
    rst $20
    rst $38
    rst $38
    ldh a, [rP1]
    ld [bc], a
    jr nc, @+$01

    rst $38
    db $fc
    nop
    nop
    ld b, $1f
    rst $38
    rst $38
    add b
    nop
    nop
    ld b, e
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    jr jr_032_76fb

    rst $38
    cp $00
    nop
    ld bc, $ff0f
    rst $38
    ret nz

    nop
    nop
    db $10
    rst $38
    rst $38
    cp $00
    nop
    inc bc
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld b, e
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc b
    ld e, a
    rst $38
    rst $38
    add b
    nop
    nop
    add e
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld de, $fff7
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc b
    rra
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
    inc b
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld [hl], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    db $10
    rst $38
    rst $38
    cp $40
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    dec c
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    dec b
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    scf
    rst $38
    rst $38
    db $fc
    nop

jr_032_76fb:
    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    jr nc, @+$01

    rst $38
    db $fc
    ld b, b
    nop
    nop
    rst $28
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
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    scf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    rst $38
    ret nc

    nop
    nop
    dec b
    rst $38
    rst $38
    cp $00
    nop
    nop
    add a
    rst $38
    rst $38
    or $00
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    add b
    nop
    nop
    dec bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    sbc a
    rst $38
    rst $38
    ret c

    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    ret c

    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    rra
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
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffbf
    rst $38
    ret nz

    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    nop
    rla
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
    scf
    rst $38
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $80
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld e, e
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    db $e4
    nop
    nop
    nop
    rst $18
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    cp a
    rst $38
    rst $38
    ret nc

    nop
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
    rst $38
    db $fc
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
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
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
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld [bc], a
    rst $18
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
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
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    rst $38
    add b
    nop
    nop
    rrca
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
    rra
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
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld [bc], a
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
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld c, l
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
    rra
    rst $38
    rst $38
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
    rlca
    rst $38
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
    ld b, $ff
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
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    dec bc
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
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    scf
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
    cp $00
    nop
    nop
    rrca
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
    rra
    rst $38
    rst $38
    db $fc
    nop
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
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $f4
    nop
    nop
    ld bc, $ffbf
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    rst $38
    ret nc

    nop
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    and b
    nop
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    ld h, b
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld [$ffff], sp
    rst $38
    ret nz

    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    dec de
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc sp
    rst $38
    rst $38
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
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
    ld l, a
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
    ld e, a
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
    ld bc, $ff3f
    rst $38
    db $f4
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
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    inc bc
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
    ret nz

    nop
    nop
    inc bc
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
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
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
    rst $38
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
    rlca
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
    rlca
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
    rlca
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
    rlca
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
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
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
    ret nz

    nop
    nop
    inc bc
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
    ret nz

    nop
    nop
    inc bc
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
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffbf
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
    ld a, a
    rst $38
    rst $38
    db $fc
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
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld e, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
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
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
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
    ld hl, sp+$00
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
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
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
    inc bc
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
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
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
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00
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
    nop
    ccf
    rst $38
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
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
    inc bc
    rst $38
    rst $38
    rst $38
    add b
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
    cp $00
    nop
    nop
    rrca
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
    ld bc, $ff7f
    rst $38
    ldh a, [rP1]
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld [bc], a
    ld a, a
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
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    ld [bc], a
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
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    scf
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
    ld l, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ff3f
    rst $38
    db $fc
    nop
    nop
    nop
    rst $18
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    or b
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    jr nz, jr_032_7e93

jr_032_7e93:
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
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
    ld [hl], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld l, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $18
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffdf
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
    rlca
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
    ld c, $ff
    rst $38
    cp $00
    nop
    nop
    rrca
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
    cpl
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
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
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
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
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
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
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
    rla
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc bc
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
    nop
    rlca
    rst $38
    rst $38
    ret nc

    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cp $80
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $ffff
    db $f4
    ccf
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
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
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    di
    nop
    nop
    nop
    nop
    rlca
    rst $38
