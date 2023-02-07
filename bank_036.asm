;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    add a
    dec b
    ld a, a
    ld a, a
    ld [bc], a
    ccf
    ld bc, $016f
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $f4
    nop
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    jr c, jr_036_4025

jr_036_4025:
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
    db $fc
    nop
    dec b
    rst $38
    rst $38
    cp $00
    nop
    nop
    dec bc
    rst $38
    db $fc
    sbc d
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    db $e4
    nop
    dec b
    rla
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rrca
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
    rlca
    rst $38
    ldh a, [rP1]
    ld bc, $ffd9
    rst $38
    rst $38
    rst $38
    stop
    nop
    ld bc, $f0ff
    nop
    inc bc
    rst $38
    rst $38
    ret z

    jr jr_036_40a3

    nop
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    scf
    ld a, a
    rst $38
    nop
    nop
    rla
    rst $38
    ld hl, sp+$07
    add b
    call z, $9973
    rst $38
    ld a, a
    rst $38
    ld a, [$0000]
    rra
    rst $38
    rst $38
    ret nz

    nop

jr_036_40a3:
    ld bc, $ffff
    ret c

    nop
    ld bc, $0f80
    rst $38
    db $e3
    call nz, JoypadTransitionInterrupt
    rrca
    rst $38
    db $fd
    ret nz

    nop
    nop
    inc bc
    rst $38
    ldh a, [rP1]
    nop
    ld c, a
    rst $38
    di
    ld c, $ff
    rst $18
    ei
    add b
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld [hl], a
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    db $fd
    ldh a, [rP1]
    ld a, a
    db $fc
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    ld h, e
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffef
    and $00
    scf
    db $fc
    ld h, b
    nop
    ld a, a
    rst $38
    ei
    nop
    nop
    ld b, a
    rst $38
    rst $38
    add b
    nop
    ld bc, $ff9f
    ei
    nop
    nop
    inc sp
    nop
    inc hl
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
    rst $38
    rst $38
    cp $00
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    ld b, $60
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld [$ff11], sp
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld b, b
    nop
    nop
    inc bc
    ccf
    rst $38
    cp $e0
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    sbc a
    rst $38
    rst $38
    ret nz

    nop
    nop
    adc a
    ld a, a
    rst $38
    rst $30
    nop
    nop
    nop
    nop
    jr @+$01

    rst $38
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    rla
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld de, $00fc
    dec de
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    or b
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    dec bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld de, $ffff
    db $fc
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
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
    ld b, a
    rst $38
    rst $38
    ldh a, [rP1]
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
    nop
    ld bc, $ffff
    rst $38
    nop
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
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld c, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
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
    ret nz

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
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    di
    jr nz, jr_036_4227

jr_036_4227:
    nop
    nop
    rrca
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
    db $f4
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
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    ld c, $24
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [$00c2], sp
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
    jr jr_036_4277

jr_036_4277:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f3c1
    inc hl
    add c
    pop de
    cp h
    ld l, b
    ldh a, [$78]
    rst $38
    push af
    rst $38
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ei
    ld a, a
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    add b
    ccf
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    add b
    inc bc
    rst $38
    cp $00
    nop
    rlca
    rst $38
    ld hl, sp+$00
    ccf
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ld bc, $0000
    ld bc, $f8ff
    nop
    rst $38
    cp $7f
    ldh [rP1], a
    nop
    ccf
    cp $00
    ld a, a
    cp $0f
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ret nz

    rra
    rst $38
    add b
    cp $00
    nop
    nop
    rst $38
    ld hl, sp+$03
    rst $38
    ldh [$3f], a
    ret nz

    nop
    nop
    rrca
    rst $38
    nop
    ccf
    cp $07
    db $fc
    nop
    nop
    nop
    rst $38
    ldh a, [$03]
    rst $38
    ret nz

    ld a, a
    ret nz

    nop
    nop
    rlca
    rst $38
    nop
    ccf
    ld hl, sp+$07
    db $fc
    nop
    nop
    nop
    ccf
    ldh a, [$03]
    rst $38
    nop
    rst $38
    ret nz

    rlca
    ret nz

    nop
    rst $38
    ret nz

    rrca
    cp $03
    cp $00
    ccf
    nop
    nop
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    nop
    nop
    rra
    ldh a, [rTAC]
    rst $38
    add b
    rst $38
    ldh [rIF], a
    ldh a, [rP1]
    ld bc, $00ff
    ld a, a
    ldh a, [rIF]
    rst $38
    nop
    ld a, a
    add b
    nop
    rlca
    db $fc
    nop
    ld a, a
    ldh [$7f], a
    db $fc
    nop
    rst $38
    nop
    nop
    rlca
    db $fc
    ld bc, $c0ff
    ld a, a
    ld hl, sp+$00
    rst $38
    nop
    nop
    rlca
    cp $01
    rst $38
    ldh [$3f], a
    db $fc
    nop
    ld a, a
    nop
    nop
    ld bc, $80ff
    ld a, a
    ld hl, sp+$0f
    rst $38
    nop
    rra
    ret nz

    nop
    nop
    rra
    ld hl, sp+$03
    rst $38
    ret nz

    ccf
    ldh a, [rTAC]
    ldh a, [rP1]
    nop
    ld bc, $c0ff
    ccf
    ld hl, sp+$07
    cp $00
    ld a, a
    add b
    inc a
    nop
    rlca
    cp $00
    rst $38
    ret nz

    rra
    ld hl, sp+$03
    cp $01
    ldh a, [rP1]
    rrca
    rst $38
    nop
    ld a, a
    add b
    ccf
    ld hl, sp+$0f
    cp $00
    ld a, b
    nop
    rrca
    rst $38
    add b
    ld a, a
    ldh [$7f], a
    db $fc
    rrca
    rst $38
    nop
    ld a, [hl]
    nop
    ld bc, $e0ff
    rra
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    ld a, a
    cp $01
    rst $38
    rst $38
    rst $38
    ldh a, [$3f]
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $08
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    rst $38
    ldh [rIE], a
    rst $38
    pop bc
    rst $38
    or b
    nop
    ld a, a
    nop
    nop
    nop
    rlca
    db $fc
    inc bc
    rst $38
    ldh [$3f], a
    ldh [$7f], a
    ldh a, [$3f]
    nop
    nop
    jr c, jr_036_44c6

jr_036_44c6:
    ld c, a
    ldh a, [$3f]
    rst $38
    pop bc
    rst $38
    db $fc
    rrca
    ldh [rP1], a
    nop
    nop
    nop
    rra
    rst $38
    db $fc
    ccf
    rst $38
    ldh a, [rIE]
    ld bc, $00fe
    nop
    ld a, $00
    rst $38
    cp $07
    rst $38
    rst $38
    rst $38
    ret nz

    ld a, a
    cp $00
    ld bc, $00f8
    ld a, a
    ret nz

    rlca
    rst $38
    rst $00
    pop af
    rst $38
    rst $38
    pop hl
    ldh [rP1], a
    inc bc
    db $fc
    nop
    ld a, a
    add sp, $1f
    cp $01
    rst $38
    ldh [$3f], a
    ldh [rP1], a
    nop
    ld a, h
    ld bc, $01fe
    rst $38
    add b
    ld a, a
    ldh a, [rTAC]
    cp $00
    inc a
    nop
    ccf
    ret nz

    rrca
    ldh a, [$03]
    rst $38
    pop bc
    rst $38
    cp $1f
    ldh [rSB], a
    ldh a, [rTAC]
    ld hl, sp+$00
    ld a, a
    nop
    ld bc, $07fc
    rst $38
    add b
    rst $38
    rst $20
    ret nz

    jr nc, jr_036_452f

jr_036_452f:
    rst $38
    nop
    inc a
    nop
    rra
    ldh a, [$3f]
    rst $38
    rlca
    rst $38
    add b
    ld a, a
    ret nz

    inc bc
    ldh a, [rP1]
    rlca
    nop
    ld a, a
    ret nz

    ld bc, $fcff
    rrca
    ldh a, [$1f]
    db $fc
    nop
    ret nz

    nop
    rra
    nop
    nop
    ldh a, [rSB]
    rst $38
    add b
    ld a, a
    cp $07
    db $fc
    ld bc, $80ff
    ld c, $c0
    ld bc, $01f8
    rst $38
    inc bc
    dec sp
    db $fc
    ld bc, $00ff
    ld a, a
    ldh a, [rTAC]
    ldh a, [rSB]
    ldh [$08], a
    inc bc
    db $fc
    nop
    ld h, a
    inc bc
    rst $38
    ret nz

    rra
    db $fc
    inc bc
    ldh a, [rP1]
    rrca
    add b
    ld bc, $3fe0
    rst $38
    nop
    rra
    cp $01
    rst $38
    nop
    rst $38
    add b
    ld bc, $afff
    inc c
    ld a, a
    ld a, a
    ld [bc], a
    ld h, a
    ld bc, $016e
    rst $28
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $bd
    nop
    ld l, $9c
    cp h
    ld a, [$7454]
    ld l, $02
    add e

Call_036_45a9:
    ld e, c
    ld [hl], $f6
    ld [hl], b
    jp hl


    jp hl


    dec a
    sub $2f
    adc a
    db $e3
    inc e
    dec [hl]
    ld e, [hl]
    ld a, [c]
    ld [$0004], sp
    nop
    ld d, b
    ld d, c
    ld [c], a
    and b
    ldh [rLCDC], a
    pop bc
    inc b
    nop
    ld [$ff7f], sp
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
    ld bc, $ffff
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
    add b
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
    ld bc, $ffff
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
    ret nz

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
    rrca
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
    add b
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
    rrca
    rst $38
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
    rlca
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
    nop
    nop
    nop
    nop
    nop
    ld b, $ff
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
    ldh [rP1], a
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
    rst $18
    rst $38
    rst $38
    cp $00
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
    dec bc
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
    ret nz

    nop
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
    nop
    rra
    rst $38
    rst $38
    cp $c0
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

Jump_036_46db:
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
    ld bc, $ff1f
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
    rst $38
    ld hl, sp-$40
    ld c, $18
    nop
    nop
    nop
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    or $20
    nop
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    nop
    nop
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    sub h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    inc a
    cp a
    rst $38
    add c
    jp nz, $f8a1

    dec d
    add sp, $54
    inc a
    ld a, [de]
    ld [bc], a
    jp nc, Jump_036_5cab

    cp [hl]
    dec a
    rla
    pop bc
    dec c
    ld e, b
    inc a
    ld a, $0f
    cp [hl]
    stop
    nop
    nop
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    nop
    ld a, a
    ldh a, [rP1]
    inc bc
    rst $38
    ldh [rSB], a
    rst $38
    ldh a, [rNR34]
    nop
    rra
    rst $38
    nop
    rrca
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ret nz

    rlca
    rst $38
    add b
    ccf
    ld hl, sp+$07
    db $fc
    nop
    ccf
    ldh [rTAC], a
    rst $38
    nop
    rst $38
    add b
    inc bc
    db $fc
    nop
    ld a, a
    ret nz

    ccf
    ldh [rP1], a
    ld a, a
    add b
    rra
    ldh a, [rTAC]
    db $fc
    nop
    rlca
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    add b
    nop
    cp $00
    ld a, a
    add b
    ccf
    ldh a, [rP1]
    rrca
    ret nz

    rrca
    ldh a, [rTAC]
    cp $00
    inc bc
    ldh a, [rSB]
    db $fc
    ld bc, $80ff
    jr nz, jr_036_4a67

    nop
    ld a, a
    add b
    ld a, a
    ldh [$38], a
    ccf
    nop
    ld a, a
    ret nz

    ccf
    ldh a, [rNR32]
    rra
    ld bc, $80ff
    ld a, a
    ldh [rNR23], a
    ld a, h
    inc bc
    rst $38
    inc bc
    db $fc
    nop
    rlca
    ret nz

    ld a, a
    ldh [$3f], a
    ret nz

    rra
    ldh [$3f], a
    ldh a, [rNR34]
    rrca
    ret nz

    rra
    ldh [$3f], a
    add b
    ccf
    add b
    ccf
    add c
    cp $01
    cp $00
    ld a, a
    add b
    ld bc, $e0ff
    ld a, [hl]
    rlca
    db $fc
    rlca
    ldh [rIF], a
    ldh a, [rIF]
    inc a
    ld a, $07
    pop hl
    ld sp, hl
    add c
    ld hl, sp+$01
    db $fc
    ld b, $0f
    add a
    rlca
    ret nz

    rst $38
    ld bc, $01fc
    db $fc
    ld bc, $00ff
    rra
    add e
    pop bc
    ldh a, [$78]
    rra
    call c, $c10f
    ret nz

    cp $00
    ld a, [hl]
    rrca
    pop bc
    rst $38
    inc bc
    ldh a, [rSVBK]
    rra
    ret nz

    ccf
    add e
    add c
    ldh a, [rSB]
    ld hl, sp+$38
    ccf
    nop
    ccf
    rlca
    inc bc
    ldh [rTAC], a
    ldh a, [$60]
    db $fc
    nop
    db $fc

jr_036_4a67:
    inc e
    rra
    add b
    rra
    add e
    rlca
    ldh [rTAC], a
    ldh a, [rSB]
    ld hl, sp+$00
    db $fc
    nop
    ld a, [hl]
    nop
    ccf
    nop
    ccf
    add b
    rra
    ret nz

    rrca
    ret nz

    rlca
    ldh [rTAC], a
    ldh a, [$03]
    ldh a, [$03]
    ld hl, sp+$01
    db $fc
    ld bc, $01fc
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $03ff
    cp $03
    cp $0f
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh a, [$7f]
    ldh [$7f], a
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rlca
    cp $07
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [rNR31]
    ldh [$f7], a
    add c
    rst $08
    dec c
    sbc [hl]
    dec de
    inc a
    ld a, [hl]
    ld [hl], b
    ld hl, sp-$1f
    di
    jp Jump_000_0fe7


    sbc $1f
    ld hl, sp+$7e
    ldh a, [$db]
    jp $8737


    sbc $1b
    inc a
    ld a, $f1
    ret


    jp $8ce7


    sbc $3b
    jr c, jr_036_4b5b

    pop hl
    sub e
    rst $00
    ld c, a
    add hl, de
    cp h
    ld h, h
    pop af
    db $d3
    rst $00
    ld c, a
    dec e
    inc e
    db $76
    pop af
    pop de
    rst $00
    ld c, a
    dec e
    inc a
    ld [hl], h
    pop af
    sub e
    add [hl]
    ld c, [hl]
    dec de
    ld a, b
    ret


    db $e3
    daa
    inc c
    sbc h
    db $76
    pop af
    sub e
    add $4e
    ld [hl-], a
    ld a, b
    ret


    rst $00
    rrca
    jr jr_036_4b53

    pop hl
    db $e3
    rlca
    inc e
    inc a
    ld h, h
    db $e3
    sub e
    adc h
    sbc h
    ld h, b
    db $e3
    sub a
    adc h
    inc e
    ld h, d
    ld h, c
    sub e
    adc h
    call c, $e363
    sbc a
    adc h
    call c, $e360
    sub e
    inc e
    sbc h
    ld h, h
    db $e3
    scf
    add hl, de
    sbc b
    rst $08
    rst $00
    ld h, $31
    cp c

jr_036_4b43:
    call Call_036_6ece
    inc sp
    ld [hl], e
    sbc c
    adc h
    call z, $e367
    ccf
    add hl, sp
    ld sp, hl

jr_036_4b50:
    rst $08
    adc $7c

jr_036_4b53:
    ld [hl], e
    db $e3
    sbc a
    jr jr_036_4b50

    rst $00
    adc $3c

jr_036_4b5b:
    inc sp
    db $e3
    sbc h
    jr c, jr_036_4b43

    add a
    inc e
    ld h, c
    rst $20
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_036_4c2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $7932
    ld d, l
    ld [hl], $4e
    reti


    ld a, [hl-]
    ld l, a
    ld [hl], l
    ld d, h
    xor d
    rst $30
    add b
    xor d
    add h
    cp $75
    ld [hl], d
    dec h
    ld c, d
    xor l
    ld d, l
    ld d, l
    ld c, e
    ld d, l
    ld d, h
    xor d
    xor d
    ld d, l
    ld d, l
    ld d, l
    ld [hl], l
    ld d, l
    ld c, d
    ld d, l
    ld d, [hl]
    or l
    ld c, a
    cpl
    inc [hl]
    xor e
    ld d, l
    or l
    ld l, c
    ld d, [hl]
    and h
    xor c
    db $eb
    ld l, a
    xor d
    call Call_036_52ea
    xor c
    ld a, [hl+]
    xor c
    ld [hl], $d6
    or l
    ld c, d
    push de
    ld c, e
    ld d, h
    and h
    xor e
    and l
    ld c, d
    ld d, l
    ld l, d
    sbc d
    xor l
    ld [de], a
    xor c
    ld a, [hl+]
    sub $8a
    xor d
    cp d
    ld d, l
    ld h, l
    ld d, d
    db $ed
    xor d
    call nc, $caa6
    and [hl]
    sub h
    sub l
    ld d, [hl]
    ld [$aad6], a
    sub d
    sbc e
    and l
    add hl, hl
    ld c, e
    ld h, l
    or [hl]
    db $dd
    ld d, [hl]
    or h
    ld c, e
    ld e, d
    ld l, c
    ld c, c
    ld l, d
    db $eb
    ld e, d
    dec l
    or l
    dec h
    jp c, $b6da

    ld c, h
    or h
    db $d3
    dec l
    ld l, l
    ld c, e
    ld l, d
    ld c, d
    and h

jr_036_4d71:
    or l
    xor l
    ld l, h
    sbc d
    ld c, d
    jp c, $9694

    adc c
    xor e
    ld l, d
    ld l, d
    ld c, e
    ld e, c
    ld c, d
    jp c, Jump_000_164d

    db $d3
    dec l
    or [hl]
    ld d, [hl]
    ld c, h
    sub d
    sub $93
    ld d, l
    xor d
    and [hl]
    sbc e
    ld l, c
    dec h
    sbc d
    ld c, b
    or h
    ld e, c
    sub d
    sub $4a
    ld e, c
    dec h
    ld [hl-], a
    and d
    ld c, d
    db $db
    xor d
    sub d
    ld d, c
    inc [hl]
    or h
    ld c, l
    add hl, hl
    ld l, l
    dec h
    ld c, e
    sub h
    and $92
    ret


    and [hl]
    reti


    or d
    ld e, l
    or [hl]
    ld e, c
    dec h
    or d
    ld c, l
    inc h
    sub d
    ld a, l
    or [hl]
    ld l, a
    dec sp
    dec l
    sub d
    and b
    or e
    rst $28
    db $eb
    xor l
    sub b
    adc c
    inc h
    or a
    rst $18
    rst $38
    ld l, l
    stop
    add d
    ld e, a
    rst $38
    cp a
    ld sp, hl
    ld h, h
    add d
    ld [$ff97], sp
    rst $28
    or [hl]
    ld b, c
    inc b
    ld de, $ff27
    rst $38
    cp $48
    nop
    jr nz, jr_036_4d71

    rst $38
    rst $38
    or [hl]
    jr nc, jr_036_4de7

jr_036_4de7:
    nop
    ld a, a
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    inc b
    rst $38
    rst $38
    cp $d0
    nop
    nop
    rlca
    rst $38
    rst $38
    or $80
    nop
    add hl, bc
    ccf
    rst $38
    rst $38
    ret c

    nop
    nop
    ld bc, $ffff
    db $fc
    stop
    nop
    rra
    rst $38
    rst $38
    pop hl
    nop
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld [bc], a
    rst $38
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    rst $18
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
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
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
    ccf
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
    ldh [rP1], a
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
    rrca
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
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
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
    ld bc, $ffff
    cp $00
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
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc bc
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
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
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
    ld bc, $ffff
    cp $00
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
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ff7f
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
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
    ldh [rP1], a
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
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
    rra
    rst $38
    rst $38
    ldh a, [rP1]
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
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
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
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld bc, $ffff
    ld a, [c]
    nop
    rla
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    inc bc
    ld h, h
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    scf
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    ld a, a
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    ccf
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    cp $00
    nop
    ld bc, $ffff
    db $fc
    nop
    rra
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    ld bc, $e0ff
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    rlca
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, a
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    ccf
    cp $00
    nop
    ld bc, $ffff
    db $fc
    nop
    inc bc
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    rra
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    ld bc, $ff7f
    nop
    nop
    nop
    ld a, a
    rst $38
    cp $00
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    rrca
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rTAC]
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$03
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    cp $01
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [$7f], a
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    ldh [rP1], a
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
    ld bc, $ffff
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
    ld a, a
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
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ei
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    di
    rst $38
    cp $00
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rIF], a
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
    nop
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld a, l
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
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    inc bc
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
    db $fc
    ld a, l
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
    inc a
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [$03]
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    cp a
    rst $38
    rst $38
    cp $80
    nop
    ccf
    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    ld e, a
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
    db $fc
    nop
    rrca
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
    ldh [rP1], a
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rra
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
    ld hl, sp+$00
    ccf
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
    inc bc
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
    add b
    nop
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
    db $fc
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
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
    db $fc
    nop
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
    db $fc
    jr z, jr_036_5267

    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ei
    pop bc
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rra
    rlca
    dec d
    ld a, a
    ld a, a
    ld [bc], a
    cp a
    ld bc, $036f
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    ld bc, $e545
    and $50
    nop
    ld a, h
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
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38

jr_036_5267:
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
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
    ld bc, $ff1f
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld b, $7f
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld [$ffff], sp
    cp $00
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc de
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

Call_036_52ea:
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld de, $ffff
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld [$ffff], sp
    rst $38
    ret nz

    nop
    nop
    ld [$ff7f], sp
    rst $38
    ldh [rP1], a
    nop
    inc b
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ff1f
    rst $38
    db $fc
    nop
    nop
    nop
    adc a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld b, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc hl
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld [$ffff], sp
    rst $38
    ldh [rP1], a
    nop
    inc b
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ff1f
    rst $38
    db $fc
    nop
    nop
    nop
    ld b, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld de, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
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
    ld bc, $ff3f
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
    cpl
    rst $38
    rst $38
    ld hl, sp+$00
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
    inc bc
    rst $38
    rst $38
    cp $40
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
    db $fc
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
    ld bc, $ffff
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
    cpl
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    call nz, RST_00
    nop
    dec b
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
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
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
    ccf
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
    ld bc, $ff3f
    rst $38
    ldh [rP1], a
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
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
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
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    dec bc
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
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
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
    nop
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
    add b
    nop
    nop
    nop
    ld [bc], a
    ccf
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
    add b
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
    ld hl, sp+$00
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
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
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    or $00
    nop
    nop
    nop
    nop
    rlca
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_036_5682

    ldh a, [$78]
    db $fc
    ld a, l
    inc e
    rst $38
    ld a, [hl]
    nop
    nop
    dec d
    nop
    ld b, b
    ld hl, sp-$58
    ld a, a
    pop hl
    ld b, b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld bc, $00d0
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    inc e
    nop
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$01
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    db $fc
    nop
    ccf
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rSB]
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    ret nz

    inc bc
    rst $38
    ldh a, [$03]
    nop

jr_036_5682:
    nop
    rrca
    rst $38
    ret nz

    rlca
    rst $38
    ldh [$3f], a
    nop
    nop
    rra
    rst $38
    ret nz

    rrca
    rst $38
    ldh [$3f], a
    nop
    nop
    rrca
    rst $38
    add b
    rrca
    rst $38
    ld bc, $80ff
    nop
    rrca
    rst $38
    ret nz

    rrca
    rst $38
    ld bc, $80ff
    nop
    rrca
    rst $38
    ret nz

    rrca
    rst $38
    ld bc, $80ff
    nop
    rlca
    rst $38
    ret nz

    rrca
    rst $38
    ld bc, $80ff
    nop
    rlca
    rst $38
    ldh [rIF], a
    rst $38
    ld bc, $80ff
    nop
    rlca
    rst $38
    ldh [rIF], a
    rst $38
    ld bc, $80ff
    nop
    inc bc
    rst $38
    ldh [rIF], a
    rst $38
    add b
    rst $38
    ret nz

    nop
    ld bc, $e0ff
    rrca
    rst $38
    add b
    rst $38
    add b
    nop
    ld bc, $e0ff
    rlca
    rst $38
    add b
    rst $38
    ret nz

    nop
    nop
    rst $38
    ldh [rTAC], a
    rst $38
    add b
    rst $38
    ret nz

    nop
    nop
    rst $38
    ldh a, [rTAC]
    rst $38
    add b
    rst $38
    ret nz

    nop
    nop
    rst $38
    ldh [$03], a
    rst $38
    nop
    ld a, a
    ret nz

    nop
    nop
    rst $38
    ldh a, [$03]
    rst $38
    nop
    ld a, a
    ret nz

    nop
    nop
    rst $38
    ldh [$03], a
    rst $38
    nop
    ld a, a
    ldh [rP1], a
    nop
    ld a, a
    ldh [$03], a
    rst $38
    nop
    ld a, a
    ldh [rP1], a
    nop
    ld a, a
    ldh a, [$03]
    rst $38
    nop
    ld a, a
    ldh [rP1], a
    nop
    ld a, a
    ldh a, [rSB]
    rst $38
    nop
    ld a, a
    ldh [rP1], a
    nop
    ccf
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh a, [rP1]
    nop
    ccf
    ld hl, sp+$00
    rst $38
    add b
    ld a, a
    ldh a, [rP1]
    nop
    rra
    ld hl, sp+$00
    rst $38
    ret nz

    ccf
    ld hl, sp+$00
    nop
    rra
    ld hl, sp+$00
    rst $38
    ret nz

    ccf
    ld hl, sp+$00
    nop
    rra
    ld hl, sp+$00
    rst $38
    ret nz

    ccf
    ld hl, sp+$00
    nop
    rra
    db $fc
    nop
    ld a, a
    ret nz

    ccf
    db $fc
    nop
    nop
    rra
    db $fc
    nop
    ld a, a
    ret nz

    ccf
    db $fc
    nop
    nop
    rra
    ld hl, sp+$00
    ld a, a
    ret nz

    rra
    db $fc
    nop
    nop
    rra
    ld hl, sp+$00
    ld a, a
    ret nz

    ccf
    db $fc
    nop
    nop
    rra
    ld hl, sp+$00
    ld a, a
    ret nz

    rra
    db $fc
    nop
    nop
    ccf
    ld hl, sp+$00
    rst $38
    ret nz

    rrca
    db $fc
    nop
    nop
    ccf
    ldh a, [rP1]
    rst $38
    ret nz

    rra
    db $fc
    nop
    nop
    ld a, a
    ldh a, [rP1]
    rst $38
    add b
    rra
    ld hl, sp+$00
    nop
    ld a, a
    ldh [rP1], a
    rst $38
    add b
    rrca
    ld hl, sp+$00
    nop
    ld a, a
    ldh [rP1], a
    rst $38
    ret nz

    rrca
    ld hl, sp+$00
    nop
    rst $38
    ldh [rSB], a
    rst $38
    add b
    rlca
    ld hl, sp+$00
    ld bc, $c0ff
    ld bc, $80ff
    rlca
    ld hl, sp+$00
    ld bc, $c0ff
    ld bc, $c0ff
    inc bc
    db $fc
    nop
    ld bc, $e0ff
    ld bc, $e0ff
    ld bc, $00f8
    inc bc
    rst $38
    ldh a, [rSB]
    rst $38
    db $fc
    ld bc, $00f8
    inc bc
    rst $38
    ld hl, sp+$01
    rst $38
    ld hl, sp+$03
    ldh a, [rP1]
    inc bc
    rst $38
    cp $03
    rst $38
    rra
    rst $38
    ldh a, [rP1]
    nop
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
    ld a, a
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
    ldh a, [rIE]
    ldh a, [rP1]
    nop
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
    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    rrca
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
    rrca
    rst $38
    rst $38
    ld b, b
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
    ld bc, $ffff
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
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
    rlca
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    xor $00
    nop
    nop
    ld b, c
    rst $18
    rst $38
    rst $38

jr_036_593d:
    call c, RST_00
    nop
    add a
    cp a
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    inc bc
    ld c, $ff
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc b
    add hl, sp
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    jr jr_036_593d

    rst $38
    rst $38
    cp $00
    nop
    nop
    ld hl, $ff8f
    rst $38
    ld hl, sp+$40
    nop
    nop
    rst $00
    rra
    rst $38
    rst $38
    pop af
    nop
    nop
    ld bc, $7f0c
    rst $38
    rst $38
    call nz, RST_00
    ld b, $31
    rst $38
    rst $38
    rst $38
    adc b
    nop
    nop
    ld [$ff63], sp
    rst $38
    rst $38
    jr nc, jr_036_5986

jr_036_5986:
    nop
    db $10
    rst $00
    rst $38
    rst $38
    db $fc
    ld b, b
    nop
    nop
    ld h, e
    adc a
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    add [hl]
    ccf
    rst $38
    rst $38
    pop af
    nop
    nop

jr_036_599e:
    ld bc, $7f0c
    rst $38
    rst $38
    call nz, RST_00
    inc b
    ld sp, $ffff
    rst $38
    adc b
    nop
    nop
    ld [$ff63], sp
    rst $38
    cp $20
    nop
    nop
    ld hl, $ff8f
    rst $38
    ld hl, sp-$80
    nop
    nop
    add [hl]
    ccf
    rst $38
    rst $38
    di
    nop
    nop
    ld [bc], a
    jr jr_036_5a47

    rst $38
    rst $38
    call z, RST_00
    ld [$ff23], sp
    rst $38
    rst $38
    jr nc, jr_036_59d4

jr_036_59d4:
    nop
    jr nz, jr_036_599e

    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    add d
    rra
    rst $38
    rst $38
    di
    nop
    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    call z, RST_00
    inc b
    ld sp, $ffff
    rst $38
    jr nc, jr_036_59f3

jr_036_59f3:
    nop
    db $10
    rst $00
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    ld b, e
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $7f04
    rst $38
    rst $38
    cp $00
    nop
    inc b
    db $10
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld b, e
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ff0f
    rst $38
    rst $38
    add b
    nop
    nop
    ld b, $3f
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld [$ffff], sp
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    db $10
    ld b, e
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

jr_036_5a47:
    add b
    nop
    nop
    ld [bc], a
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc b
    ccf
    rst $38
    rst $38
    cp $00
    nop
    ld [bc], a
    jr @+$01

    rst $38
    rst $38
    call z, RST_00
    nop
    db $10
    rst $38
    rst $38
    rst $38
    sbc b
    nop
    nop
    nop
    inc hl
    rst $38
    rst $38
    rst $38
    jr nz, jr_036_5a70

jr_036_5a70:
    nop
    nop
    rst $00
    rst $38
    rst $38
    cp $40
    nop
    nop
    ld bc, $ff0f
    rst $38
    db $fc
    add b
    nop
    nop
    ld [bc], a
    rra
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    inc b
    ccf
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    nop
    inc c
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    jr @+$01

    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc hl
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $00
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld bc, $ff0f
    rst $38
    db $fc
    nop
    nop
    nop
    ld b, $3f
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld [$ff7f], sp
    rst $38
    ret nz

    nop
    nop
    nop
    ld sp, $ffff
    rst $38
    add b
    nop
    nop
    nop
    rst $00
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld b, $7f
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    jr @+$01

    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld h, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld b, $7f
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    jr @+$01

    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld b, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld bc, $ff9f
    rst $38
    db $fc
    nop
    nop
    nop
    ld b, $3f
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    jr @+$01

    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld h, e
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffaf
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    jr @+$01

    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld h, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld bc, $ff8f
    rst $38
    ldh a, [rP1]
    nop
    nop
    rlca
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    nop
    ld sp, $ffff
    db $fc
    add b
    nop
    nop
    nop
    rst $00
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    inc bc
    sbc a
    rst $38
    rst $38
    and $00
    nop
    nop
    ld b, $3f
    rst $38
    rst $38
    adc b
    nop
    nop
    nop
    inc e
    rst $38
    rst $38
    rst $38
    jr nc, jr_036_5b90

jr_036_5b90:
    nop
    nop
    ld sp, $ffff
    cp $60
    nop
    nop
    nop
    ld h, e
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    nop
    rst $00
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    ld bc, $ff8f
    rst $38
    di
    nop
    nop
    nop
    inc bc
    rrca
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    inc bc
    rra
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    nop
    inc bc
    rrca
    rst $38
    rst $38
    di
    nop
    nop
    nop
    nop
    add a
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    nop
    nop
    dec sp
    rst $38
    rst $38
    rst $38
    cp h
    nop
    nop
    nop
    nop
    db $10
    ld a, a
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

Jump_036_5cab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld e, $1f
    rst $28
    ldh [rSCX], a
    pop hl
    add b
    and c
    call nz, Call_036_70e3
    ld l, l
    rst $38
    sbc b
    ld c, d
    ld b, a
    cp a
    rst $38
    db $eb
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    add hl, bc
    rst $38
    rst $38
    add b
    inc bc
    rst $30
    add b
    ld bc, $ff3f
    ldh a, [rP1]
    ld a, a
    rst $38
    ret nz

    nop
    rra
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    add b
    nop
    rst $38
    rst $38
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    rrca
    rst $38
    sbc $00
    nop
    ld a, a
    rst $38
    nop
    rrca
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    nop
    rrca
    rst $38
    ret nz

    ld [hl-], a
    nop
    ccf
    rst $38
    nop
    rrca
    rst $38
    add b
    rst $38
    add b
    rra
    rst $38
    nop
    rlca
    rst $38
    add b
    ccf
    add b
    rrca
    rst $38
    add b
    rlca
    rst $38
    add b
    ld a, a
    ret nz

    rrca
    rst $38
    add b
    rlca
    rst $38
    add b
    ld a, a
    ldh [rTAC], a
    rst $38
    ret nz

    inc bc
    rst $38
    ret nz

    ccf
    ldh a, [$03]
    rst $38
    ret nz

    inc bc
    rst $38
    ret nz

    ccf
    ldh a, [$03]
    rst $38
    ret nz

    inc bc
    rst $38
    ldh [$1f], a
    ldh a, [$03]
    rst $38
    ldh [rSB], a
    rst $38
    ldh [$1f], a
    ldh a, [$03]
    rst $38
    ldh [rSB], a
    rst $38
    ldh [rNR13], a
    ldh a, [$03]
    rst $38
    ldh [rSB], a
    rst $38
    ldh [$03], a
    ldh a, [$03]
    rst $38
    ldh [rSB], a
    rst $38
    ldh [$03], a
    ldh a, [rTAC]
    rst $38
    ret nz

    inc bc
    rst $38
    ldh [$03], a
    ldh [rTAC], a
    rst $38
    add b
    inc bc
    rst $38
    ldh [rSB], a
    ret nz

    rrca
    rst $38
    sub b
    rlca
    rst $38
    ldh [$80], a
    nop
    rra
    rst $38
    jr nz, jr_036_5d7f

    rst $38
    di
    nop

jr_036_5d7f:
    nop
    ccf
    cp $e0
    ld bc, $ffff
    nop
    nop
    ld a, a
    rst $38
    ldh [rSB], a
    rst $38
    cp $00
    nop
    rst $28
    rst $38
    ld hl, sp+$00
    ccf
    rst $38
    nop
    nop
    adc a
    rst $38
    ld hl, sp+$00
    ccf
    ld a, $00
    inc b
    rlca
    rst $38
    rst $20
    ld h, c
    ld hl, sp+$60
    nop
    jr nc, jr_036_5dc8

    rst $38
    rst $38
    adc a
    rst $20
    add b
    nop
    ld b, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, RST_00

    nop
    rlca
    ccf
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
    ret nz

jr_036_5dc8:
    inc de
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
    rst $38
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
    db $fc
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_5ec9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_5ed5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_5ee3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld d, l
    ld a, [hl+]
    and h
    xor d
    ld b, [hl]
    or h
    add d
    and l
    ld d, d
    xor d
    ld d, l
    ld [hl], e
    ld e, d
    xor c
    ld d, d
    xor l
    dec l
    or h
    ld e, d
    xor d
    or c
    ld c, [hl]
    and h
    and l
    ld e, d
    and d
    or [hl]
    xor e
    ld d, d
    push de
    ld [hl], l
    dec hl
    ld e, d
    ld d, l
    ld c, d
    and l
    xor l
    ld a, [hl+]
    ld d, c
    add hl, hl
    ld e, d
    jp nc, Jump_000_2dd6

    ld c, d
    pop de
    ld d, [hl]
    and h
    and c
    ld c, l
    cp [hl]
    sub [hl]
    adc c
    nop
    ld [$bf2e], sp
    db $fd
    xor c
    ld l, d
    jp nz, TimerOverflowInterrupt

    inc hl
    ld l, a
    rst $38
    add e
    jr jr_036_5ec9

    jr jr_036_5ee3

    rst $38
    ld a, l
    or b
    rst $20
    ld h, b
    add e
    inc sp
    adc a
    rst $38
    inc l
    ld h, [hl]
    jr nc, jr_036_5ed5

    inc sp
    cp a
    cp $61
    adc $41
    ld b, $67
    ccf
    db $fc
    ld b, $72
    nop
    inc sp
    cp c
    cp $e0
    ld [hl], e
    sub c
    add e
    sbc a
    rst $18
    rst $38
    inc bc
    add hl, sp
    inc e
    add hl, sp
    cp h
    rst $38
    ldh [$63], a
    sub c
    jp $9f9b


    cp $06
    ld [hl], c
    db $10
    ld a, c

jr_036_5f7a:
    cp c
    rst $38
    ldh [$c7], a
    inc hl
    rrca
    scf
    ccf
    ld hl, sp+$18
    db $e4
    ld h, c
    rst $20
    rst $20
    sbc a
    inc bc
    inc e
    call z, $fc3c
    di
    ldh [$67], a
    inc de
    add a
    rra
    inc a
    sbc b
    jr jr_036_5f7a

    ld h, c
    rst $00
    rst $28
    sub [hl]
    ld b, $38
    sbc h
    ld [hl], c
    ld sp, hl
    rst $20

jr_036_5fa2:
    add b
    adc $27
    ld e, $7e
    ld a, c
    ldh a, [$33]
    adc h
    rst $00
    sbc a
    sbc [hl]
    ld l, h
    inc c

jr_036_5fb0:
    ld h, e
    ld sp, $e7e7
    adc l
    inc bc
    inc a
    call z, $f979
    db $e3
    add c
    adc $37
    ld e, $7e
    jr c, jr_036_5fa2

    ld h, e
    adc c
    rst $00

jr_036_5fc5:
    rra
    ld c, $38
    jr jr_036_5fb0

    ld [hl], c
    rst $08
    jp $0c06


    ld a, c
    jr c, jr_036_5fc5

    pop hl
    jp Jump_000_1c07


    adc $39
    ld hl, sp+$61
    add c
    adc [hl]
    ld h, a
    inc e
    db $fc
    jr c, @+$62

    rst $00
    inc sp
    rst $08
    ccf
    inc e
    jr nc, jr_036_601b

    call z, $9fe3
    add a
    db $10
    jr @-$18

    ld a, c

jr_036_5ff0:
    rst $00
    db $e3
    adc h
    inc c
    ld [hl], e
    inc a
    di
    ld sp, $06c4
    add hl, sp
    sbc [hl]
    ld a, c
    ret c

    di
    inc bc
    inc e
    rst $28
    inc e
    ld h, [hl]
    add hl, sp
    add c
    adc [hl]
    ld h, a
    sbc [hl]
    ld [hl], e
    inc e
    ret nz

    rst $00
    dec sp
    rst $00
    add hl, sp
    adc [hl]
    ld h, b
    ld h, e
    sbc l
    db $e3
    adc b
    rst $00
    jr nc, jr_036_6052

    adc $79

jr_036_601b:
    add $63
    sbc b
    inc e
    ld h, e
    inc a
    db $e3
    jr nc, jr_036_5ff0

    ld b, $39
    sbc [hl]
    ld a, c
    sbc h
    db $76
    inc bc
    inc e
    rst $08
    inc a
    add $39
    add c
    adc [hl]

jr_036_6032:
    ld h, e
    sbc [hl]
    ld h, e
    ld e, $c0
    db $e3
    add hl, sp
    rst $00
    sbc c
    add a
    ld [hl], b
    ld sp, $f3cc
    call z, $9863
    jr jr_036_60ac

    add hl, sp
    and $38
    call z, Call_000_3b0e
    sbc [hl]
    ld [hl], e
    inc c
    ld h, a
    inc bc
    inc e

jr_036_6051:
    rst $00

jr_036_6052:
    dec a
    rst $00
    add hl, sp
    add c
    add $73
    or $61
    sbc h
    ldh [$63], a
    cp b
    ei
    jr c, @-$30

    ld [hl], b
    jr c, jr_036_6032

    ld a, a
    call z, $9c07
    inc c
    daa
    rra
    db $e3
    ld bc, $07e6
    add hl, de
    rst $08
    ld sp, hl
    ret nz

    ld [hl], e
    add c
    call nz, $fc73
    ld h, b
    inc a
    ret nz

    ld h, e
    add hl, sp
    rst $38
    jr jr_036_608e

    ld [hl], b
    jr jr_036_6051

    ld a, a
    adc $03
    sbc b
    inc c
    ld h, a
    ccf
    db $e3
    ld bc, $03ee

jr_036_608e:
    add hl, de
    rst $08
    ld sp, hl
    ret nz

    ld [hl], e
    ld bc, $f78c
    db $fc
    ld h, b
    add hl, sp
    add b
    ld h, e
    add hl, sp
    rst $38
    jr nc, @+$10

    ldh [$31], a
    sbc h
    rst $38
    sbc b
    rlca
    ld [hl], b
    jr @-$2f

    ld a, a
    add $03
    ret c

jr_036_60ac:
    ld c, $67
    sbc a
    db $e3
    nop
    xor $03
    add hl, de
    rst $28
    ld sp, hl
    add b
    ld [hl], a
    ld bc, $f78c
    db $fc
    ld b, b
    ccf
    add b
    add $7b
    cp $30
    rra
    ret nz

    ld [hl], e
    ccf
    rst $38
    jr jr_036_6051

    ldh [rNR24], a
    adc a
    ld a, a
    call z, $b843
    inc c
    rst $00
    rst $38
    ld [c], a
    ld hl, $06fc
    inc hl
    rst $38
    pop af
    db $10
    cp $03
    ld de, $f8ff
    adc h
    ld [hl], a
    ld bc, $ff88
    db $fc
    ld b, [hl]
    ccf
    add b
    and $7f
    cp $23
    dec e
    ret nz

    ld [hl], e
    ccf
    rst $38
    ld bc, $e086
    add hl, sp
    sbc a
    rst $38
    ret nz

    db $e3
    ld a, b
    inc e
    rst $08
    rst $38
    ldh [$71], a
    cp h
    ld b, $67
    rst $38
    ldh a, [$38]
    sbc [hl]
    inc bc
    inc sp
    rst $38
    ld hl, sp+$0c
    ld h, a
    ld bc, $ff99
    db $fc
    ld b, $23
    add b
    call z, $feff
    inc bc
    inc sp
    add b
    xor $7f
    rst $38
    inc bc
    sub c
    ret nz

    db $76
    ccf
    rst $28
    ld bc, $e098
    inc sp
    rra
    rst $30
    add b
    call z, Call_000_1970
    sbc a
    rst $38
    ret nz

    ld h, [hl]
    jr nc, jr_036_6141

    rst $08
    ei
    ldh [$33], a
    jr @+$10

    rst $20
    db $fd
    ldh a, [$33]
    inc e
    ld b, $63

jr_036_6141:
    cp $f6
    add hl, de
    adc h
    inc bc
    ld [hl], e
    cp $7e
    inc c
    add $01
    cp c
    rst $38
    ld a, l
    ld b, $63
    nop
    call c, $bfff
    add d
    ld [hl], c
    add b
    xor $7f
    rst $18
    jp $8031


    ld [hl], a
    ccf
    rst $28
    ldh [$98], a
    ret nz

    inc sp
    sbc a
    rst $30
    ldh a, [$cc]
    ld h, b
    add hl, de
    rst $08
    ei
    ldh a, [$66]
    jr nc, jr_036_617d

    rst $20
    db $fd
    ld hl, sp+$33
    jr jr_036_617d

    ld [hl], e
    cp $fc
    add hl, de
    adc b
    inc bc

jr_036_617d:
    add hl, sp
    rst $38
    cp $09
    call nz, $bd01
    rst $38
    rst $38
    inc b
    ldh [rP1], a
    call c, $ffff
    ld [bc], a
    ld h, b
    nop
    xor $7f
    cp $82
    jr nc, jr_036_6195

jr_036_6195:
    ld h, a
    ld a, a
    cp $c1
    jr jr_036_619b

jr_036_619b:
    scf
    ccf
    rst $38
    ld b, b
    jr jr_036_61a1

jr_036_61a1:
    scf
    cp a
    rst $38
    jr nz, jr_036_61ae

    nop
    dec sp
    cp a
    rst $38
    jr nz, jr_036_61b8

    nop
    dec de

jr_036_61ae:
    rst $18
    rst $38
    jr nz, jr_036_61be

    nop
    dec de
    rst $18
    rst $38
    or b
    inc b

jr_036_61b8:
    nop
    dec de
    rst $38
    rst $38
    jr nc, jr_036_61c2

jr_036_61be:
    nop
    add hl, de
    rst $18
    rst $38

jr_036_61c2:
    or b
    inc b
    nop
    dec c
    rst $38
    rst $38
    sbc b
    ld b, $00
    dec c
    rst $38
    rst $38
    sbc b
    inc b
    nop
    dec c
    rst $38
    rst $38
    sbc b
    ld [bc], a
    nop
    ld b, $ff
    rst $38
    call c, Call_000_0002
    ld b, $ff
    rst $38
    call z, Call_000_0003
    ld [bc], a
    ld a, a
    rst $38
    xor $01
    nop
    inc bc
    ld a, a
    rst $38
    and $00
    add b
    ld bc, $ffbf
    di
    nop
    ret nz

    nop
    rst $18
    rst $38
    ld sp, hl
    add b
    ld h, b
    nop
    ld l, a
    rst $38
    db $fc
    add b
    jr nc, jr_036_6202

jr_036_6202:
    rla
    rst $38
    cp $60
    ld [$0b00], sp
    rst $18
    rst $38
    or b
    inc b
    ld b, b
    ld b, $ff
    rst $38
    ret z

    nop
    nop
    ld bc, $ff7f
    db $f4
    nop
    ld [$5f00], sp
    rst $38
    ld sp, hl
    nop
    ld [bc], a
    nop
    rla
    rst $38
    cp $40
    nop
    add b
    add hl, bc
    rst $38
    rst $38
    add b
    inc b
    ld h, b
    ld [bc], a
    ld a, a
    rst $38
    db $e4
    ld bc, $0010
    cp a
    rst $38
    ldh a, [rP1]
    call z, $0f00
    rst $38
    db $fc
    add b
    ld de, $0300
    rst $38
    rst $38
    jr nz, jr_036_624d

    nop
    ld bc, $ffff
    add b
    nop
    nop
    nop

jr_036_624d:
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    nop
    cpl
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    cp $00
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
    ccf
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    add b
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
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
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
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
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
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    db $fc
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
    ld a, a
    rst $38
    ldh a, [rP1]
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
    ccf
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    db $fc
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
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    adc b
    nop
    nop
    ld bc, $ffff
    db $fc
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
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    call z, RST_00
    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    db $e4
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
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
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
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
    ld bc, $ffff
    ldh a, [rP1]
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    ret nc

    nop
    nop
    nop
    rra
    rst $38
    rst $38
    jr nz, jr_036_6484

jr_036_6484:
    nop
    nop
    ccf
    rst $38
    rst $38
    jr nz, jr_036_648b

jr_036_648b:
    nop
    nop
    ccf
    rst $38
    rst $38
    nop
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
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $18
    rst $38
    db $fc
    nop
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
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    jr jr_036_64e3

jr_036_64e3:
    nop
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    add b
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    ld [hl], b
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld a, $00
    nop
    ccf
    rst $38
    cp $00
    rlca
    ret nz

    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    ld a, b
    nop
    nop
    rst $38
    rst $38
    cp $00
    rrca
    add b
    nop
    rrca
    rst $38
    rst $38
    call c, $f001
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    inc d
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    jr nz, jr_036_6535

jr_036_6535:
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
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
    ld bc, $ffff
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
    ldh [rP1], a
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
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    jr nz, jr_036_6579

jr_036_6579:
    nop
    rra
    rst $38
    rst $38
    ret nz

    ld bc, $0000
    nop
    rst $38
    rst $38
    cp $00
    ld [$0080], sp
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    jr nz, jr_036_6590

jr_036_6590:
    nop
    rra
    rst $38
    rst $38
    ret nz

    ld bc, $0000
    nop
    ld a, a
    rst $38
    rst $38
    nop
    inc b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
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
    rst $38
    nop
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
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
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
    cp $00
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
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
    rst $38
    nop
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
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
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
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
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
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
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
    nop
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
    db $fc
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
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
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
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
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
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
    ccf
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
    nop
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
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

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
    ldh a, [rP1]
    nop
    nop
    rst $38
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
    dec c
    add b
    nop
    nop
    rst $38
    rst $38
    db $fc
    add b
    jr nz, jr_036_6703

jr_036_6703:
    nop
    rra
    rst $38
    rst $38
    ret nz

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
    inc bc
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
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop

jr_036_672c:
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

jr_036_673d:
    nop
    nop
    rrca
    rst $30
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $1817
    ld a, a
    ld a, a
    ld [bc], a
    and $01
    ld l, [hl]
    ld bc, $ffff
    rst $38
    cp $80
    ld bc, $ffff
    ld a, [c]
    nop
    nop
    ld c, b
    inc bc
    nop
    inc bc
    or d
    jr c, jr_036_6761

jr_036_6761:
    or b
    ld a, $11
    ld b, [hl]
    ld [hl], e
    adc [hl]
    ld [hl], b
    db $e3
    add d
    pop bc
    rst $00
    add hl, de
    add hl, sp
    ldh [$0c], a
    add d
    call z, $9865
    or b
    ld [hl-], a
    inc l
    pop hl
    jp nz, $e754

    ld e, $25
    adc [hl]
    inc [hl]
    rst $20
    db $fd
    ld h, a
    jr @-$2f

    add hl, sp
    rst $00
    ret c

    di
    adc $75
    rst $00
    add hl, sp
    xor l
    cp [hl]
    ld [hl], c
    adc $30
    rst $08
    inc sp
    add [hl]
    inc e
    ld [hl], e
    ld l, l
    inc [hl]
    jp $8301


    ld a, $71
    rst $00
    nop
    ld [bc], a
    ld [de], a
    call nz, Call_036_739e
    and c
    adc d
    ld hl, $ce91
    ld b, d
    jr c, jr_036_672c

    add [hl]
    add hl, de
    jp z, $8471

    ld hl, $618c
    adc [hl]
    jr nz, jr_036_67b7

jr_036_67b7:
    ld bc, $ffe7
    ld a, [hl]
    jr c, jr_036_673d

    ld bc, $ff8e
    cp $c0
    nop
    rst $00
    sbc a
    rst $38
    ei
    cp [hl]
    db $e3
    ld [$ff16], sp
    rst $30
    sbc [hl]
    ld a, l
    cp h
    db $e3
    sbc h
    rst $18
    ld a, c
    add b
    ld bc, $0008
    ld [$9ce3], sp
    rst $38
    rst $38
    rst $38
    rst $38
    or $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
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
    rst $38
    rst $38
    cp $00
    rra
    rst $38
    rst $38
    db $fc
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
    rst $38
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
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
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
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
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
    nop
    rst $38
    rst $38
    rst $38
    cp $00
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
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $00
    ld bc, $ffff
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
    db $fc
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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $00
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
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

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
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $ffff
    rst $38
    db $fc
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
    ret nz

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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    inc bc
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
    rlca
    rst $38
    rst $38
    rst $38
    cp $00
    inc bc
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
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rra
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
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    ld bc, $ffff
    rst $38
    rst $38
    ret nz

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
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec b
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
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
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
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    add b
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
    nop
    ld bc, $ffff
    rst $38
    rst $38
    add b
    inc bc
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    cp $00
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
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    ld bc, $ffff
    rst $38
    rst $38
    ret nz

    ld bc, $ffff
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
    ret nz

    rrca
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$01
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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $80
    inc bc
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
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
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    nop
    ld b, $ff
    rst $38
    rst $38
    cp $80
    ld bc, $ffff
    rst $38
    db $fc
    nop
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
    ld hl, sp+$00
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
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

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
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
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
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
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
    cp $00
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
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    rra
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
    ld e, a
    rst $38
    rst $38
    rst $38
    ret nz

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
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
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
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
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
    dec b
    rst $38
    rst $38
    rst $38
    db $fc
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
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
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
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

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
    rst $38
    ldh [rP1], a
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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $00
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
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    inc b
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    db $fd
    ldh a, [$80]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    and [hl]
    reti


    add d
    inc h
    nop
    nop
    nop
    nop
    ld de, $2200
    ld b, b
    db $10
    ld h, h
    ld b, b
    ld bc, $e701
    cp $07
    pop bc
    ldh [$f8], a
    inc a
    rlca
    db $fd
    ldh a, [rNR34]
    inc b
    rlca
    ld hl, sp+$3e
    nop
    rlca
    ld hl, sp+$1f
    ret nz

    ld a, [hl]
    rrca
    ldh a, [$fc]
    rrca
    adc a
    inc bc
    ld b, c
    add b
    ld d, b
    ld a, a
    rla
    jp hl


    cp $1c
    rlca
    ld bc, $f895
    nop
    ld b, e
    rst $38
    ld hl, sp+$3e
    ccf
    rst $38
    ldh a, [rP1]
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
    add b
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    ldh [$3f], a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $fcff
    ld bc, $ffff
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
    add b
    rra

Call_036_6ece:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    ld [bc], a
    nop
    nop
    nop
    ld a, a
    db $fd
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ldh [rP1], a
    ld b, $00
    nop
    nop
    rst $38
    ld hl, sp+$03
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    ldh [rP1], a
    nop
    nop
    rst $38
    ldh a, [$03]
    rst $38
    db $fc
    rst $38
    db $fc
    rra
    rst $38
    add b
    inc bc
    ldh [rP1], a
    nop
    nop
    ccf
    ld_long a, $ff01
    ei
    rst $38
    cp $0d
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld hl, sp+$0f
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    cp $00
    ld b, b
    nop
    nop
    nop
    nop
    rlca
    rst $38
    ret nz

    rst $38
    rst $38
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
    ccf
    cp $03
    rst $38
    pop hl
    rst $38
    cp $3f
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld hl, sp+$1f
    rst $38
    add e
    rst $38
    ld hl, sp+$7f
    rst $38
    rrca
    ldh [rSB], a
    ldh [rP1], a
    nop
    ld bc, $f0ff
    ccf
    rst $38
    ccf
    rst $38
    jp $ffff


    ldh a, [$e0]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    rra
    cp $03
    rst $38
    ldh a, [$7f]
    rst $38
    rlca
    ldh [$03], a
    ldh [rP1], a
    nop
    ld bc, $e0ff
    ccf
    cp $03
    rst $38
    ldh [rIE], a
    rst $38
    ld a, a
    ldh [rSB], a
    add b
    nop
    nop
    inc bc
    rst $38
    ret nz

    ccf
    db $fc
    rlca
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $c0ff
    ccf
    db $fc
    rlca
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ret nz

    rlca
    add b
    nop
    nop
    inc bc
    rst $38
    add b
    ccf
    db $fc
    rlca
    rst $38
    add c
    rst $38
    ld hl, sp-$01
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    cp $00
    rst $38
    ldh [$1f], a
    cp $0f
    rst $38
    pop af
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ccf
    db $fc
    inc bc
    rst $38
    ret nz

    rst $38
    ld hl, sp+$3f
    rst $38
    rst $38
    rst $38
    nop
    ld a, h
    nop
    nop
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ld bc, $f1ff
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    db $fc
    nop
    nop
    inc bc
    rst $38
    ret nz

    ld a, a
    db $fc
    rlca
    rst $38
    ret nz

    rst $38
    db $fc
    rra
    ldh [rTAC], a
    ldh a, [rP1]
    nop
    rla
    rst $38
    nop
    rst $38
    ldh a, [$1f]
    cp $07
    rst $38
    cp $7f
    add b
    ld bc, $00e0
    nop
    ld a, a
    ld hl, sp+$07
    rst $38
    add c
    rst $38
    ldh a, [$7f]
    rst $38
    rst $38
    cp $00
    ld a, [hl]
    nop
    nop
    nop
    ld a, a
    ld hl, sp+$07
    rst $38
    add b
    rst $38
    ldh a, [$3f]
    rst $38
    rlca
    db $fc
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    add b
    rst $38
    rst $38
    rst $28
    ld hl, sp+$00
    ld h, b
    nop
    nop
    ld bc, $e0ff
    ccf
    cp $07
    rst $38
    ret nz

    rst $38
    cp $1f
    ldh a, [$03]
    ldh [rP1], a
    nop
    inc bc
    rst $38
    add b
    ccf
    ld hl, sp+$0f
    rst $38
    ld bc, $f8ff
    rrca
    ldh [rTAC], a
    ldh a, [rP1]
    nop
    rlca
    rst $38
    nop
    ld a, a
    ld hl, sp+$0f
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    add b
    rra
    add b
    nop
    nop
    rlca
    rst $38
    nop
    rst $38
    ldh a, [$1f]
    cp $07
    rst $38
    ldh a, [$1f]
    add b
    jr c, jr_036_707f

jr_036_707f:
    nop
    nop
    ccf
    db $fc
    inc bc
    rst $38
    ret nz

    ld a, a
    ldh a, [$1f]
    rst $38
    pop bc
    rst $38
    nop
    rrca
    add b
    nop
    nop
    ccf
    db $fc
    rlca
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    rst $38
    rst $08
    cp $00
    ld [hl], $00
    nop
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    ldh [$7f], a
    rst $38
    cp b
    ld a, $00
    ld a, $00
    nop
    nop
    rst $38
    ldh a, [rIF]
    cp $00
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    db $fc
    nop
    ld hl, sp+$00
    nop
    nop
    ccf
    ld hl, sp+$03
    rst $38
    ret nz

    rst $38
    ld hl, sp+$3f
    rst $38
    adc a
    cp $00
    rst $38
    nop
    nop
    nop
    ccf
    db $fc
    rlca
    rst $38
    ret nz

    ld a, a
    ld hl, sp+$1f
    rst $38
    ld bc, $00ff
    inc bc
    ldh [rP1], a
    nop
    ccf
    db $fc

Call_036_70e3:
    inc bc
    rst $38
    add b
    ccf
    ld hl, sp+$0f
    rst $38
    add b
    ld a, a
    nop
    ccf
    add b
    nop
    nop
    ld a, a
    ldh a, [rTAC]
    rst $38
    nop
    rst $38
    ldh [$3f], a
    cp $03
    cp $00
    ld a, a
    nop
    nop
    nop
    ld a, a
    ldh [rIF], a
    cp $01
    rst $38
    ret nz

    ld a, a
    db $fc
    rra
    ld hl, sp+$00
    add b
    nop
    nop
    ld bc, $c0ff
    rra
    db $fc
    inc bc
    rst $38
    add b
    rst $38
    ld hl, sp+$7f
    ldh a, [rSB]
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    add b
    ld a, a
    ld hl, sp+$0f
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    stop
    nop
    nop
    nop
    rlca
    rst $38
    add b
    rst $38
    ldh a, [$1f]
    cp $03
    rst $38
    ldh [rIE], a
    add b
    ld [bc], a
    nop
    nop
    nop
    rrca
    cp $01
    rst $38
    ldh a, [$1f]
    cp $07
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ldh [rP1], a
    nop
    rrca
    cp $01
    rst $38
    ldh [$1f], a
    db $fc
    rlca
    rst $38
    db $fc
    rst $38
    nop
    inc bc
    add b
    nop
    nop
    rra
    db $fc
    ld bc, $e0ff
    ccf
    db $fc
    rrca
    rst $38
    pop bc
    rst $38
    ret nz

    rra
    nop
    nop
    nop
    rrca
    cp $01
    rst $38
    ldh [$3f], a
    db $fc
    rlca
    rst $38
    add b
    rst $38
    add b
    ld a, $00
    nop
    nop
    rrca
    cp $03
    rst $38
    ldh [$1f], a
    db $fc
    rrca
    rst $38
    db $fc
    ccf
    nop
    rrca
    nop
    nop
    nop
    inc bc
    rst $38
    add b
    ld a, a
    ld hl, sp+$0f
    cp $03
    rst $38
    ldh a, [$3f]
    ldh [rIF], a
    nop
    nop
    nop
    inc bc
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    add b
    rst $38
    db $fc
    rrca
    ld hl, sp+$07
    ldh [rP1], a
    nop
    nop
    rst $38
    ldh a, [rIF]
    cp $02
    rst $38
    ret nz

    ccf
    db $fc
    rlca
    ld hl, sp+$00
    ld a, h
    nop
    nop
    nop
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    ldh a, [$3f]
    rst $38
    inc bc
    cp $00
    db $fc
    nop
    nop
    nop
    ccf
    ld hl, sp+$0f
    rst $38
    add b
    rst $38
    ldh [$3f], a
    rst $38
    inc bc
    db $fc
    nop
    ld a, h
    nop
    nop
    nop
    ccf
    ld hl, sp+$07
    rst $38
    add b
    rst $38
    ldh a, [$1f]
    rst $38
    ret nz

    rst $38
    nop
    ccf
    nop
    nop
    nop
    rra
    db $fc
    inc bc
    rst $38
    add b
    ld a, a
    ld hl, sp+$0f
    rst $38
    ret nz

    rst $38
    nop
    jr jr_036_71ff

jr_036_71ff:
    nop
    nop
    rra
    db $fc
    ld bc, $c0ff
    ld a, a
    ld hl, sp+$0f
    rst $38
    pop af
    ld a, a
    nop
    ld a, $00
    nop
    nop
    rra
    ld hl, sp+$03
    rst $38
    add b
    ld a, a
    ld hl, sp+$0f
    rst $38
    pop hl
    cp $00
    rra
    nop
    nop
    nop
    rra
    db $fc
    rlca
    rst $38
    ret nz

    ld a, a
    ldh a, [$1f]
    rst $38
    ldh [$7f], a
    nop
    ld a, $00
    nop
    nop
    ld a, a
    ldh a, [rIF]
    rst $38
    add b
    rst $38
    ldh [$1f], a
    rst $38
    ldh [$fe], a
    nop
    jr nz, jr_036_723f

jr_036_723f:
    nop
    nop
    ld a, a
    ld hl, sp+$07
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    ldh [$3f], a
    add b
    jr jr_036_724f

jr_036_724f:
    nop
    nop
    ld a, a
    ld hl, sp+$03
    rst $38
    ret nz

    ld a, a
    ld hl, sp+$0f
    rst $38
    ldh a, [$0c]
    nop
    nop
    nop
    nop
    nop
    rra
    db $fc
    inc bc
    rst $38
    add b
    ccf
    ld hl, sp+$07
    rst $38
    ld hl, sp+$1f
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    db $fc
    dec b
    rst $38
    ret nz

    rra
    db $fc
    inc bc
    rst $38
    ldh a, [rIF]
    ret nz

    ld bc, $0080
    nop
    scf
    cp $01
    rst $38
    ldh a, [$3f]
    cp $07
    rst $38
    ld hl, sp+$07
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    cp $01
    rst $38
    ret nz

    rra
    rst $38
    inc bc
    rst $38
    ldh a, [$03]
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    db $fc
    nop
    rst $38
    ldh [rIF], a
    rst $38
    add c
    rst $38
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    cp $00
    rst $38
    ldh a, [rTAC]
    rst $38
    ret nz

    ld a, a
    db $fc
    nop
    ld a, a
    add b
    nop
    nop
    nop
    ccf
    cp $00
    ld a, a
    ld hl, sp+$07
    rst $38
    ldh [$3f], a
    rst $38
    nop
    ld [hl], e
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    nop
    ccf
    db $fc
    inc bc
    rst $38
    ldh a, [$3f]
    cp $00
    ccf
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    nop
    ccf
    db $fc
    ld bc, $f0ff
    rra
    rst $38
    nop
    rrca
    ret nz

    nop
    nop
    nop
    ld a, a
    cp $00
    ld a, a
    db $fc
    inc bc
    rst $38
    ldh a, [$3f]
    cp $00
    rra
    ldh [rP1], a
    nop
    nop
    ld a, a
    cp $00
    ld a, a
    ld hl, sp+$03
    rst $38
    ld hl, sp+$7f
    cp $00
    rrca
    ret nz

    nop
    nop
    nop
    ld a, a
    ld a, [$7f01]
    ld hl, sp+$03
    rst $38
    ldh [$1f], a
    cp $00
    rrca
    ret nz

    nop
    nop
    nop
    rst $38
    db $fc
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    cp $1f
    cp $00
    rra
    ret nz

    nop
    nop
    ld bc, $fcff
    nop
    rst $38
    db $fc
    rlca
    rst $38
    db $fd
    ld a, a
    cp $00
    rrca
    add b
    nop
    nop
    dec de
    rst $38
    ldh [rTAC], a
    rst $38
    ldh a, [rTAC]
    rst $38
    di
    rst $38
    ldh [rP1], a
    ld a, a
    nop
    nop
    nop
    ld a, a
    rst $38
    add b
    rra
    rst $38
    ret nz

    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $fcff
    nop
    ld a, a
    rst $38
    add b
    ld a, a
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
    ldh [$03], a
    rst $38
    db $fc
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
    cp $00
    ccf
    rst $38
    ldh [$03], a
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
    ld hl, sp+$00
    rst $38
    rst $38
    add b
    rrca
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop

Call_036_739e:
    rst $38
    rst $38
    nop
    rlca
    rst $38
    db $fc
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [$03]
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
    nop
    rrca
    rst $38
    cp $00
    ccf
    rst $38
    add b
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    rst $38
    ldh a, [$03]
    rst $38
    add b
    nop
    nop
    nop
    nop
    ld bc, $ffff
    ldh a, [rSB]
    rst $38
    rst $38
    rst $38
    jp nc, $0074

    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    cpl
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
    cp $bf
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    or $bf
    rst $38
    ldh a, [rP1]
    ld [bc], a
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
    rst $38
    rst $38
    nop
    nop
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
    di
    rst $38
    rst $38
    cp $00
    cpl
    rst $38
    add b
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld h, h
    ld [bc], a
    inc h
    nop
    ld b, b
    ld [bc], a
    ld hl, $517d
    ld d, d
    nop
    ld d, a
    rst $38
    cp $fb
    db $eb
    rst $30
    db $fd
    ld b, [hl]
    xor d
    xor d
    xor e
    xor d
    sub [hl]
    sub $4a
    or l
    ld d, d
    xor c
    xor l
    dec [hl]
    ld d, l
    push de
    ld d, h
    ld d, l
    ld l, d
    xor l
    dec d
    ld d, l
    xor e
    ld d, d
    dec h
    add hl, hl
    ld d, l
    ld d, h
    xor l
    ld d, l
    dec hl
    xor d
    ld d, d
    xor c
    ld c, l
    ld l, c
    ld d, l
    dec d
    inc [hl]
    or l
    dec h
    ld b, d
    call nc, Call_036_45a9
    ld l, e
    ld d, d
    or l
    xor c
    ld d, d
    xor l
    ld l, d
    jp nc, Jump_000_2b4d

    ld d, d
    and l
    ld e, d
    ld c, d
    xor d
    ld c, l
    ld l, c
    dec l
    ld d, d
    sub $ad
    ld l, e
    ld h, [hl]
    ld e, e
    ld d, e
    ld d, h
    xor d
    jp c, $b594

    ld l, d
    and l
    ld l, e
    ld e, d
    sub l
    and h
    sub h
    sub h
    xor c
    add hl, hl
    and l
    dec h
    sub h
    or l
    inc h
    and l
    xor d
    sub d
    jp c, Jump_036_46db

    sbc c
    add hl, hl
    ld h, l
    dec l
    ld b, [hl]
    ld a, [de]
    and h
    xor l
    xor e
    ld [hl], d
    ld l, e
    ld e, c
    or h
    db $d3
    dec h
    xor l
    or [hl]
    dec h
    ld l, d
    ld l, c
    or [hl]
    and l
    inc [hl]
    jp c, $c596

    or [hl]
    sub d
    ld c, c
    dec h
    sbc d
    ld e, [hl]
    sub d
    db $db
    dec h
    ld l, l
    sub d
    jp c, Jump_036_4c2a

    jp nc, $b669

    db $d3
    ld l, l
    inc sp
    ld c, c
    ld l, h
    ld [hl], d
    dec [hl]
    and h
    sbc c
    ld l, l
    and e
    sbc c
    db $db
    ld d, $2d
    cp l

jr_036_75dc:
    or e
    ld h, l
    call $aa93
    ld b, [hl]
    sbc e
    ld l, h
    and [hl]
    ld e, d
    call Call_000_26a7
    ld e, [hl]
    pop de
    or c
    inc h
    bit 2, e
    ld l, h
    and e
    dec de
    ld l, h
    sub [hl]
    ld h, l
    jp nc, $69b3

    sbc d
    daa
    sub d
    sbc $65
    sbc h
    di
    ld sp, $ce64
    ret z

    sbc d
    ld d, [hl]
    adc h
    add $4b

jr_036_7608:
    inc l
    ld h, [hl]
    sbc c
    xor h
    db $d3
    jr nc, jr_036_75dc

    ld c, c
    adc l
    or e
    ld h, $cc
    ld e, l
    sub l
    add [hl]
    sub c
    ld [hl], $72
    ld c, c
    and l
    sbc c
    ld h, [hl]
    inc [hl]
    sub l
    dec h
    sbc c
    ld [de], a
    and $d3
    ld h, $6e
    ld l, h
    db $d3
    ld h, d
    call nz, $b695
    ld l, h
    ret


    ld h, e
    ld h, $4d
    sbc b
    ld [hl], $68
    ld d, [hl]
    ld e, c
    and c
    or l
    ret


    sbc d
    ld l, l
    sbc c
    or d
    or [hl]
    push hl
    dec [hl]
    adc h
    and a
    add hl, sp
    xor [hl]
    ld h, a
    ld [hl-], a
    ret z

    ld a, [c]
    ld l, l
    xor c
    add $5b
    ld h, h
    push hl
    ld [hl], d
    call z, Call_000_18d3
    sbc c
    ld h, e
    ld l, l
    adc e
    inc l
    sub c
    ld h, [hl]
    jp Jump_000_1e8e


    ld a, h
    reti


    ld h, e
    ld l, h
    ret


    sbc b
    or d
    ld [hl], b
    ldh [$cb], a
    sbc h
    sbc e
    ld [hl], l
    inc sp
    ld l, a
    di
    ld e, c
    inc de
    ld d, d
    add hl, bc
    inc h
    ld h, h
    jr jr_036_7608

    ld [hl], $df
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc $a0
    sub d
    ld d, b
    jr nz, jr_036_7681

jr_036_7681:
    nop
    db $10
    sbc l
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    call $8ae1
    stop
    nop
    nop
    dec bc
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc e
    xor a
    ld e, c
    add h
    inc b
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ei
    add [hl]
    ld a, a
    db $dd
    ld [c], a
    nop
    nop
    nop
    nop
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    call nz, $b7a7
    cp b
    ld h, b
    nop
    nop
    nop
    nop
    ld l, a
    rst $38
    rst $38
    rst $38
    ldh [rLYC], a
    rst $18
    rst $18
    jr nc, jr_036_76c3

jr_036_76c3:
    nop
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    ld hl, sp+$24
    ld a, a
    rst $38
    or d
    jr nz, jr_036_76d1

jr_036_76d1:
    nop
    nop
    ld b, $7f
    rst $38
    rst $38
    rst $38
    sub c
    ccf
    rst $38
    rst $30
    add b
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
    rst $38
    rst $38
    db $ec
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    or $00
    ld a, a
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld [hl], a
    rst $38
    rst $38
    rst $38
    ret nz

    inc b
    ccf
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    rla
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    cpl
    rst $38
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    nop
    ld c, $ff
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    inc c
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
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
    db $fc
    nop
    inc bc
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    nop
    rrca
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
    ldh [rP1], a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ld h, a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    db $fc
    nop
    rrca
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
    ret nz

    nop
    ld a, a
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
    inc bc
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
    ret nz

    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    inc bc
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
    rrca
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
    rst $38
    add b
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    rlca
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
    nop
    nop
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
    ldh a, [rP1]
    rrca
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
    add b
    nop
    ld a, a
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
    ldh a, [rP1]
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
    rst $38
    ret nz

    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
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
    rst $38
    ret nz

    nop
    ld a, a
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
    rlca
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    dec bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld a, a
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
    rlca
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
    ld b, b
    nop
    ld a, a
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
    db $fc
    nop
    rlca
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
    add b
    nop
    ld a, a
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ccf
    rst $38
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
    ld bc, $ffff
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
    rlca
    rst $38
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
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
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
    ld a, a
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
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    ld a, a
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
    nop
    nop
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
    cp $00
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    nop
    rlca
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
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    nop
    rrca
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
    ld hl, sp+$00
    rrca
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
    ldh a, [rP1]
    rra
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
    ldh a, [rP1]
    rra
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
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    inc bc
    rst $38
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
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    ld a, a
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
    nop
    nop
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
    add b
    ld bc, $ffff
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
    add b
    nop
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
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
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
    add b
    nop
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
    add b
    nop
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
    add b
    ld bc, $ffff
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
    add b
    ld bc, $ffff
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
    add b
    nop
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
    ret nz

    nop
    ld a, a
    rst $38
    db $fc
    nop
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
    ld a, a
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
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    rrca
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
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
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
    ccf
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
    ldh a, [rP1]
    rra
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
    db $fc
    nop
    rrca
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
    cp $00
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
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
    ret nz

    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ccf
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
    nop
    inc bc
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
    ldh [rP1], a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
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
    ccf
    rst $38
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
    ldh [$03], a
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
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
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
    rst $38
    rst $38
    rst $38
    ldh a, [rSB]
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
    add b
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    rrca
    rst $38
    rst $38
    ldh [rP1], a
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
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ret nz

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
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rlca
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
    ret nz

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
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
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
    rrca
    rst $38
    rst $38
    rst $38
    add b
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    rst $38
    nop
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
    add b
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
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
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
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
    ccf
    rst $38
    rst $38
    cp $00
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
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
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    rst $38
    add b
    nop
    rlca
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
    ld a, a
    rst $38
    cp $00
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
    ld bc, $ffff
    cp $00
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
    inc bc
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
    rrca
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $ffff
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
    nop
    ld bc, $ffff
    rst $38
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
    ret nz

    inc bc
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
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    rst $38
    rst $38
    rst $38
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$02
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
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
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
    nop
    rra
    rst $38
    rst $38
    rst $38
    add b
    rst $28
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
    inc bc
    rst $38
    rst $38
    rst $38
    ldh a, [$15]
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
    ccf
    rst $38
    rst $38
    rst $38
    nop
    ld e, a
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
    inc bc
    rst $38
    rst $38
    rst $38
    db $f4
    ld b, c
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rLYC], a
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
    rra
    rst $38
    rst $38
    rst $38
    ld [c], a
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
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    jr z, @+$11

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
    ld a, a
    rst $38
    rst $38
    cp $02
    daa
    rst $38
    rst $38
    ld hl, sp+$08
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
    cp $00
    scf
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
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    ld a, a
    rst $38
    rst $38
    rst $38
    add d
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
    add c
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
    ccf
    rst $38
    rst $38
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    ldh [rNR22], a
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
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
    rlca
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add a
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
    inc bc
    rst $38
    rst $38
    rst $38
    cp $7f
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
    rra
    rst $38
    rst $38
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
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
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
    nop
    ccf
    rst $38
    rst $38
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
    rlca
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
