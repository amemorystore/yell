;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    sub a
    jr jr_025_4082

    ld a, a
    ld [bc], a
    and $01
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fcef
    add b
    nop
    nop
    nop
    nop
    ld bc, $ffbf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
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
    rst $38
    rst $38
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
    inc bc
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
    ld sp, hl
    add b
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
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    nop
    ld bc, $ffff
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
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf

jr_025_4082:
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
    sbc $00
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $08
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ei
    rst $00
    nop
    nop
    nop
    inc sp
    rst $38
    rst $38
    di
    rst $00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    di
    rst $00
    nop
    nop
    nop
    ld [hl], a
    rst $38
    rst $38
    rst $30
    adc [hl]
    nop
    nop
    nop
    daa
    rst $38
    rst $38
    rst $08
    inc c
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    sbc h
    jr jr_025_40c7

jr_025_40c7:
    nop
    ld bc, $ffff
    cp $78
    ld h, b
    nop
    nop
    ld c, a
    rst $38
    rst $38
    ld sp, hl
    ldh [$80], a
    nop
    inc bc
    ccf
    rst $38
    rst $38
    rst $20
    add [hl]
    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    sbc h
    stop
    nop
    ld [hl], a
    rst $38
    rst $38
    db $fc
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $20
    inc b
    nop
    nop
    rra
    rst $38
    rst $38
    cp $30
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    pop af
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    sbc h
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$40
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    adc h
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    jr jr_025_4129

jr_025_4129:
    nop
    nop
    ld a, a
    rst $38
    rst $38
    pop af
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $30
    nop
    nop
    ld bc, $ffff
    rst $38
    add $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp-$40
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $30
    nop
    nop
    ld bc, $ffff
    rst $38
    adc h
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $e3
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp-$40
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $60
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    jr jr_025_4172

jr_025_4172:
    nop
    ld bc, $ffff
    rst $38
    adc h
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    call z, RST_00
    nop
    ld a, a
    rst $38
    rst $38
    and $00
    nop
    nop
    ccf
    rst $38
    rst $38
    and $00
    nop
    nop
    ccf
    rst $38
    rst $38
    di
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    di
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    di
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    or $00
    nop
    nop
    ccf
    rst $38
    rst $38
    and $00
    nop
    nop
    ccf
    rst $38
    rst $38
    db $ec
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
    rst $38
    rst $38
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
    rlca
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
    ld h, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    sbc a
    rst $38
    rst $38
    add b
    nop
    nop
    inc e
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rst $30
    rst $38
    rst $38
    ldh [rP1], a
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
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    ld bc, $ffff
    rst $30
    nop
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
    cp $08
    nop
    nop
    dec sp
    rst $38
    rst $38
    pop bc
    nop
    nop
    rlca
    ccf
    rst $38
    db $fc
    jr nc, jr_025_426c

jr_025_426c:
    nop
    rst $20
    rst $38
    rst $38
    add [hl]
    nop
    nop
    inc c
    rst $38
    rst $38
    ldh a, [$c0]
    nop
    ld bc, $ff9f
    cp $18
    nop
    nop
    inc sp
    rst $38
    db $fd
    jp RST_00


    rlca
    ld a, a
    rst $38
    ld hl, sp+$60
    nop
    nop
    rst $08
    rst $38
    rst $28
    inc c
    nop
    nop
    add hl, de
    rst $38
    db $fd
    pop hl
    add b
    nop
    rlca
    ccf
    rst $38
    cp h
    jr nc, jr_025_429f

jr_025_429f:
    nop
    rst $20
    rst $38
    rst $30
    add [hl]
    nop
    nop
    inc e
    rst $38
    cp $f0
    ret nz

    nop
    inc bc
    sbc a
    rst $38
    db $fc
    jr nc, jr_025_42b2

jr_025_42b2:
    nop
    rst $30
    rst $38
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [$80]
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    ld [hl], b
    nop
    nop
    rra
    rst $38
    rst $30
    add b
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    sub b
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rra
    rst $38
    rst $38
    nop
    ld bc, $ffff
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    rst $38
    nop
    ld bc, $ffff
    ldh a, [rP1]
    ccf
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    rst $38
    rst $38
    ret nz

    ld bc, $ffff
    rst $38
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    ccf
    rst $38
    ld a, a
    ldh a, [rSB]
    rst $38
    ld hl, sp+$7f
    ret nz

    rlca
    rst $38
    jp $00ff


    rrca
    cp c
    ccf
    cp $00
    ld a, c
    nop
    rlca
    rst $38
    ld h, c
    cp $00
    rra
    db $fc
    nop
    ret z

    nop
    ccf
    rst $30
    nop
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

jr_025_4380:
    db $fc
    nop
    nop
    ld b, $ff
    ldh a, [rP1]
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    inc de
    rst $38
    rst $38
    add b
    ld bc, $7c80
    rst $38
    rst $38
    db $fc
    nop
    ld bc, $ff1f
    rst $38
    nop
    nop
    dec c
    rst $30
    rst $38
    rst $38
    ret nz

    nop
    rlca
    db $fd
    cp [hl]
    rra
    rst $38
    cp $00
    nop
    pop af
    ld sp, hl
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ccf
    db $fc
    ld a, a
    rst $38
    cp $00
    nop
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    ld [$e6ff], sp
    jr @+$01

    rst $38
    ret nz

    nop
    scf
    ld hl, sp+$70
    jr nc, jr_025_440d

    rst $38
    db $fc
    nop
    ld bc, $c1c8
    rst $28
    rst $38
    cp $00
    ld [bc], a
    ld [hl], a
    sub b
    nop
    ret


    rst $38
    rst $38
    sub b
    nop
    ld bc, $0080
    set 7, a
    rst $38
    db $fc
    ld b, b
    call z, RST_10
    ld b, a
    rst $38
    rst $38
    ret nz

    nop
    ld b, h
    jr nc, jr_025_4380

    rlca
    rst $38
    rst $38
    pop bc
    nop
    nop
    ld [$0706], sp
    rst $38
    rst $38
    sbc b
    nop
    inc bc
    db $10
    ld [bc], a
    nop
    ccf
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    nop
    nop

jr_025_440d:
    adc c
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38

jr_025_441a:
    ret nz

    nop
    nop
    nop
    nop
    sub c
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    add e
    inc b
    db $10
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    ld [bc], a
    ld b, $11
    rst $00
    rst $20
    rst $38
    jp $0700


    jp Jump_000_0483


    daa
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    ld [hl], b
    ld sp, $cef0
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    jr nc, jr_025_444c

jr_025_444c:
    jr nc, jr_025_441a

    ld a, a
    rst $38
    ei
    jr nz, jr_025_4453

jr_025_4453:
    inc bc
    add b
    ld [c], a
    ld sp, $ffff
    ld a, [c]
    nop
    nop
    nop
    jr nc, jr_025_446d

    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    db $10
    dec c
    sbc a
    ccf
    rst $38
    db $dd
    stop

jr_025_446d:
    nop
    nop
    ld a, e
    rst $38
    rst $38
    cp $00
    nop
    ld [$bf1b], sp
    rst $38
    xor $00
    inc bc
    cpl
    rst $10
    ld h, a
    rst $00
    ld h, b
    ret nz

    nop
    rst $38
    rst $38
    di
    ld [c], a
    ld h, b
    add b
    ld bc, $ffbf
    rst $18
    or b
    add b
    nop
    rrca
    rst $38
    cp $f8
    jr jr_025_4496

jr_025_4496:
    inc b
    rst $18
    rst $38
    sbc a
    ld [bc], a
    nop
    ld bc, $ffff
    rst $28
    add b
    nop
    nop
    rst $38
    rst $38
    db $ec
    nop
    nop
    ld hl, $ffff
    sbc b
    nop
    nop
    ld c, a
    rst $38
    rst $38
    ld h, b
    nop
    ld bc, $ff9f
    db $fc
    add b
    nop
    rlca
    ld a, a
    rst $38
    ld a, [c]
    nop
    nop
    inc e
    rst $38
    rst $38
    ret z

    nop
    nop
    ld [hl], e
    rst $38
    rst $38
    jr nz, jr_025_44ca

jr_025_44ca:
    ld bc, $ffef
    db $fc
    nop
    nop
    rlca
    ld a, a
    rst $38
    db $e4
    nop
    nop
    dec a
    rst $38
    rst $38
    add b
    nop
    ld bc, $ff73
    db $fc
    nop
    nop
    ld b, a
    jp $e4ff


    nop
    inc bc
    ld l, [hl]
    rst $38
    rst $38
    nop
    nop
    dec de
    di
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    ccf
    rst $38
    nop
    nop
    ld a, a
    ld hl, sp-$01
    db $fc
    nop
    inc bc
    ei
    rst $20
    rst $38
    ldh [rP1], a
    rrca
    cp $7f
    rst $38
    nop
    nop
    ld a, a
    db $e3
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rlca
    rst $38
    ret nz

    nop
    cpl
    sub b
    rst $18
    cp $00
    ld bc, $87ff
    rst $38
    ldh [rP1], a
    rrca
    db $fc
    ccf
    rst $38
    nop
    ld bc, $e07f
    rst $38
    db $fc
    nop
    rlca
    ld hl, sp+$0b
    rst $38
    ret nz

    nop
    ccf
    or b
    rra
    cp $00
    nop
    rst $38
    add c
    rst $38
    ldh a, [rP1]
    rra
    db $fc
    rlca
    rst $38
    add b
    nop
    rst $38
    nop
    ccf
    db $fc
    nop
    rlca
    ei
    ld bc, $e0ff
    nop
    ccf
    ldh a, [$1f]
    cp $00
    ld bc, $c0ff
    ld a, a
    ldh a, [rP1]
    rrca
    ldh a, [$03]
    rst $38
    add b
    nop
    ld a, a
    or b
    rrca
    db $fc
    nop
    rlca
    ld sp, hl
    nop
    rst $38
    ldh [rP1], a
    ccf
    db $ec
    rlca
    rst $38
    nop
    ld bc, $c0ff
    ld a, a
    ldh a, [rP1]
    rrca
    or $03
    rst $38
    add b
    nop
    rst $38
    ldh a, [$1f]
    db $fc
    nop
    rlca
    ei
    nop
    rst $38
    ldh [rP1], a
    ccf
    ld hl, sp+$07
    cp $00
    inc bc
    rst $38
    ret nz

    ccf
    ldh a, [rP1]
    rra
    cp $03
    rst $38
    add b
    nop
    rst $38
    ldh a, [$1f]
    db $fc
    nop
    rrca
    ei
    nop
    rst $38
    ret nz

    nop
    ld a, a
    ld hl, sp+$07
    cp $00
    inc bc
    db $fd
    add b
    ld a, a
    ldh [rP1], a
    ccf
    db $fc
    inc bc
    rst $38
    nop
    ld bc, $c0ff
    ccf
    ldh a, [rP1]
    rra
    cp $03
    rst $38
    add b
    nop
    rst $38
    ldh a, [$1f]
    db $fc
    nop
    rlca
    rst $38
    ld bc, $c0ff
    nop
    ld a, a
    ld hl, sp+$0f
    cp $00
    inc bc
    rst $38
    add b
    rst $38
    ldh [rP1], a
    ccf
    db $fc
    rlca
    rst $38
    nop
    ld bc, $c0ff
    ld a, a
    ldh a, [rP1]
    rra
    cp $03
    rst $38
    add b
    nop
    rst $38
    ldh [$3f], a
    ld hl, sp+$00
    rrca
    rst $38
    inc bc
    rst $38
    add b
    nop
    ld a, a
    ldh a, [$1f]
    db $fc
    nop
    rlca
    rst $38
    add c
    rst $38
    ret nz

    nop
    ld a, a
    ld hl, sp+$1f
    db $fc
    nop
    inc bc
    rst $38
    add c
    rst $38
    ret nz

    nop
    ccf
    ld hl, sp+$1f
    db $fc
    nop
    inc bc
    rst $38
    add e
    rst $38
    ret nz

    nop
    ccf
    db $fc
    ccf
    db $fc
    nop
    inc bc
    rst $38
    add e
    rst $38
    ret nz

    nop
    rra
    db $fc
    ld a, a
    db $fc
    nop
    ld bc, $f3ff
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    cp $80
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    db $fd
    rst $38
    add sp, $00
    inc bc
    rst $38
    rst $38
    rst $38
    ld h, b
    nop
    ccf
    rst $38
    rst $38
    db $f4
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    ccf
    cp $ff
    ld a, [c]
    nop
    ld bc, $ff3f
    rst $38
    or b
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    sbc a
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    cp $7f
    db $fc
    ret nz

    nop
    ld bc, $ffc3
    rst $38
    nop
    nop
    inc e
    rra
    rst $38
    ld hl, sp+$00
    nop
    pop hl
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    add e
    ccf
    rst $38
    nop
    nop
    inc b
    add hl, de
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    nop
    ld [hl], a
    rst $38
    ld a, [$0000]
    nop
    rra
    rst $38
    cp $60
    nop
    ld bc, $ffdf
    cp d
    ld h, b
    nop
    inc bc

jr_025_46b9:
    rst $08
    rst $38
    sbc h
    stop
    ld bc, $dfe7
    xor $18
    nop
    jr nz, jr_025_46b9

    rst $38
    rst $30
    adc h
    inc b
    jr jr_025_4744

    rst $30
    db $fd
    push bc
    add c
    inc b
    inc c
    ccf
    rst $38
    ld [hl], e
    db $e4
    ld b, b
    inc bc
    rrca
    ld a, a
    adc $e9
    stop
    ld b, c
    rst $18
    rst $38
    sbc a
    ld b, [hl]
    nop
    db $10
    ld [hl], e
    rst $38
    rst $20
    ret z

    add b
    nop
    ld e, $ff
    db $fd
    ei
    jr nc, jr_025_46f1

jr_025_46f1:
    add e
    sbc a
    rst $38
    cp a
    ld h, [hl]
    nop
    nop
    ld a, e
    rst $38
    ld [hl], a
    db $ec
    ret nz

    nop
    rrca
    ccf
    cp $fd
    sbc b
    nop
    nop
    rst $20
    db $fd
    rst $38
    ld sp, hl
    nop
    nop
    inc e
    rst $38
    rst $18
    rst $38
    jr nc, jr_025_4711

jr_025_4711:
    ld bc, $ff8f
    rst $38
    rst $30
    nop
    nop
    ld bc, $bfff
    rst $38
    ld [hl], b
    nop
    ld bc, $f91f
    rst $38
    rst $38
    nop
    nop
    ld bc, $fff7
    rst $38
    ld a, b
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $30
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $18
    cp a
    db $fd
    ret nz

    nop
    nop
    ld [hl], a
    rst $38
    rst $38
    db $db

jr_025_4744:
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $f8
    nop
    nop
    rra
    rst $38
    rst $38
    ei
    ld h, b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    pop bc
    nop
    nop
    rst $30
    cp $ff
    ld sp, hl
    add d
    nop
    ld bc, $fdff
    rst $38
    di
    add b
    nop
    ld bc, $fccf
    ei
    rst $38
    adc [hl]
    db $10
    ld hl, $bedb
    ld a, h
    rst $28
    rst $18
    inc c
    nop
    rst $20
    rst $38
    inc e
    rst $38
    rst $38
    add d
    nop
    add hl, de
    rst $30
    rst $08
    ccf
    ei
    ldh [rP1], a
    ld [bc], a
    ld a, a
    rst $20
    rst $08
    sbc a
    ld a, b
    nop
    nop
    ld a, a
    call c, $fff9
    rst $28
    add b
    nop
    daa
    cp $77
    rst $00
    ld a, h
    ldh a, [rP1]
    inc bc
    ld a, a
    db $ed
    sub e
    dec de
    ld a, a
    nop
    nop
    cpl
    db $fc
    ld h, e
    inc bc
    rst $18
    ld hl, sp+$00
    inc bc
    ld a, [hl]
    ret c

    db $10
    scf
    rst $38
    sbc b
    nop
    sub a
    ld a, a
    ld de, $0f87
    db $fc
    ldh a, [rP1]
    ld a, a
    ld hl, sp+$00
    sbc c
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    adc b
    ld b, $cf
    rst $38
    db $f4
    nop
    dec e
    jp $3e00


    ld a, a
    rst $38
    add b
    nop
    ld h, a
    ret c

    inc de
    rst $28
    rst $38
    cp b
    nop
    ld b, $ff
    ld h, e
    sbc a
    rst $38
    ld hl, sp+$00
    nop
    ld h, a
    cp [hl]
    ld a, h
    rst $38
    rst $38
    nop

jr_025_47e6:
    nop
    rla
    rst $38
    rst $00
    rra
    inc a
    pop af
    nop
    ld bc, $fe7f
    jr jr_025_47e6

    rst $38
    and h
    nop
    daa
    ei
    ld [c], a
    add $3f
    ld hl, sp+$00
    ld bc, $7eff
    inc l
    pop af
    rst $28
    sbc b
    nop
    rrca
    di
    and $0d
    ccf
    ld a, [c]
    ret nz

    nop
    ld a, a
    or e
    ld [hl-], a
    rst $28
    rst $38
    ld hl, sp+$00
    rrca
    ei
    ld h, c
    adc [hl]
    ld a, a
    ei
    ret nz

    ld bc, $d07f
    nop
    or a
    rst $38
    call c, $0700
    ei
    ld h, e
    rlca
    ld a, a
    ld sp, hl
    ret nz

    nop
    ccf
    sbc b
    inc bc
    rst $18
    rst $30
    ret c

    nop
    inc bc
    cp l
    pop hl
    inc c
    rst $18
    db $fd
    ret nz

    nop
    ccf
    ld sp, hl
    sub c
    rst $18
    rst $38
    ret nc

    nop
    rlca
    db $fd
    add b
    rrca
    cp l
    ei
    nop
    nop
    rst $38
    ld hl, sp-$3f
    rst $28
    sbc [hl]
    ld h, b
    nop
    rrca
    ei
    add h
    ccf
    di
    call z, $0380
    rst $38
    pop af
    add a
    ld a, a
    ld hl, sp+$00
    nop
    ld a, a
    db $ec
    ld sp, $dfcf
    jr jr_025_4866

jr_025_4866:
    ccf
    cp $c9
    cp e
    ld [hl], a
    ret nz

    nop
    rlca
    rst $38
    di
    ld e, $7d
    ldh a, [rP1]
    ld bc, $f2ff
    pop bc

jr_025_4878:
    sbc [hl]
    inc a
    ld b, b
    nop
    ccf
    cp $60
    push hl

jr_025_4880:
    sbc a
    stop
    ld e, a
    rst $38
    jr jr_025_4878

    rst $20
    add c
    nop
    rlca
    rst $38
    adc h
    jr jr_025_4880

    ldh [rLCDC], a
    rlca
    rst $38
    di
    add $2c
    ld e, b
    ld b, b
    inc bc
    rst $38
    db $fd
    rst $30
    xor [hl]
    ld a, b
    nop
    ld bc, $fcff
    di
    add a
    inc b
    nop
    nop
    ld a, a
    db $fc
    rst $20
    jp hl


    add [hl]
    nop
    nop
    ld a, a
    cp $e7
    call z, $0080
    nop
    ld a, e
    rst $38
    or $ec
    add b
    nop
    nop
    ld a, a
    rst $38
    cp [hl]
    ld [hl], e
    add b
    nop
    nop
    ccf
    rst $38
    ccf
    rst $30
    add b
    nop
    ld [$ff7b], sp
    rst $38
    rst $20
    nop
    nop
    nop
    ld l, a
    rst $38
    rst $38
    sbc $00
    nop
    ld bc, $ffff
    rst $38
    cp h
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld a, [hl]
    ldh [rP1], a
    nop
    ld c, $ff
    rst $38
    di
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $28
    adc $00
    nop
    inc bc
    rst $38
    rst $38
    cp [hl]
    ld [hl], b
    nop
    nop
    ccf
    rst $38
    ei
    db $e3
    nop
    nop
    inc bc
    rst $38
    rst $38
    adc [hl]
    jr nc, jr_025_4905

jr_025_4905:
    nop
    ld a, a
    rst $38
    ld hl, sp-$40
    nop
    nop
    rra
    rst $38
    cp $38
    nop
    nop
    inc bc
    rst $38
    db $fd
    jp RST_00


    inc b
    rst $38
    rst $38
    cp b
    ld h, b
    nop
    ld bc, $ff8f
    rst $38
    inc c
    nop
    nop
    inc sp
    rst $38
    db $fd
    jp RST_00


    inc c
    ld a, a
    rst $38
    ld a, b
    ldh [rP1], a
    ld bc, $ff1f
    sbc $38
    nop
    nop
    ld b, a
    cp a
    di
    sbc [hl]
    jr nz, jr_025_493e

jr_025_493e:
    add hl, de
    rst $38
    db $fc
    pop hl
    adc b
    nop
    ld b, $39
    rst $38
    jr c, jr_025_49ab

    nop
    inc bc
    sbc a
    rst $38
    sbc $18
    nop
    nop
    rst $20
    rst $38
    rst $20
    inc c
    nop
    nop
    add hl, sp
    rst $38
    ld sp, hl
    jp RST_00


    inc e
    rst $38
    cp $f0
    ret nz

    nop
    rlca
    ccf
    rst $38
    jr c, jr_025_49c8

    nop
    inc bc
    rst $18
    rst $38
    sbc h
    jr nc, jr_025_496f

jr_025_496f:
    ld bc, $ffef
    adc $18
    nop
    nop
    rst $30
    rst $38
    rst $20
    inc c
    nop
    nop
    ld a, e
    rst $38
    di
    add d
    nop
    nop
    dec a
    rst $38
    ld sp, hl
    jp RST_00


    ld e, $ff
    db $fd
    pop hl
    nop
    nop
    rra
    rst $38
    db $fc
    ldh [$80], a
    nop
    rrca
    rst $38
    db $fc
    ldh [$80], a
    nop
    rrca
    ld a, a
    cp $f0
    add b
    nop
    rlca
    rst $38
    cp $f0
    nop
    nop
    rrca
    rst $38
    cp $e0
    add b

jr_025_49ab:
    nop
    rrca
    rst $38
    db $fd
    ldh [rP1], a
    nop
    rra
    rst $38
    db $fd
    pop bc
    nop
    nop
    rra
    rst $38
    rst $38
    pop bc
    nop
    nop
    rra
    rst $38
    ei
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    add b

jr_025_49c8:
    nop
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    rst $38
    cp $00
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    rrca
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
    nop
    ccf
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
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
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
    rra
    rst $38
    rst $38
    and b
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
    ld bc, $ffff
    db $fc
    nop
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
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
    nop
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp b
    nop
    nop
    rlca
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    rrca
    rst $38
    cp $e0
    nop
    nop
    rra
    rst $38
    db $fd
    ret nz

    nop
    nop
    ccf
    rst $38
    ei
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $30
    nop
    nop
    nop
    rst $38
    rst $38
    xor $00
    nop
    ld bc, $ffff
    call c, RST_00
    inc bc
    rst $38
    rst $38
    cp b
    nop
    nop
    rlca
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    rrca
    rst $38
    cp $e0
    nop
    nop
    rra
    rst $38
    db $fd
    ret nz

    nop
    nop
    ccf
    rst $38
    ei
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $30
    nop
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret c

    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rra
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
    ccf
    rst $38
    rst $38
    add b
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
    cp $00
    nop
    ld bc, $ffff
    xor $00
    nop
    ld bc, $ffff
    cp $00
    nop
    ld bc, $ffff
    cp $00
    nop
    ld bc, $ffff
    cp $00
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
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
    ei
    add b
    nop
    nop
    ld a, a
    rst $38
    db $fd
    add b
    nop
    nop
    ccf
    rst $38
    db $fd
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    cp b
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    xor $00
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld a, a
    rst $38
    db $fd
    ret nz

    nop
    nop
    ccf
    rst $38
    cp $e0
    nop
    nop
    rra
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    rrca
    rst $38
    rst $38
    or b
    nop
    nop
    rlca
    rst $38
    rst $38
    ret c

    nop
    nop
    inc bc
    rst $38
    rst $38
    xor $00
    nop
    ld bc, $ffff
    rst $30
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
    ret nz

    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    db $ec
    nop
    nop
    ld bc, $ffff
    rst $30
    nop
    nop
    nop
    rst $38
    rst $38
    db $fd
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    cp b
    nop
    nop
    inc bc
    rst $38
    rst $38
    xor $00
    nop
    nop
    rst $38
    rst $38
    ei
    add b
    nop
    nop
    ld a, a
    rst $38
    cp $e0
    nop
    nop
    rrca
    rst $38
    rst $38
    cp b
    nop
    nop
    inc bc
    rst $38
    rst $38
    xor $00
    nop
    nop
    rst $18
    rst $38
    ei
    add b
    nop
    nop
    scf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc c
    rst $38
    rst $38
    call c, RST_00
    ld bc, $ffbf
    rst $38
    jr nz, jr_025_4c27

jr_025_4c27:
    nop
    ld h, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    add hl, bc
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    ld b, b
    nop
    nop
    ld c, a
    rst $38
    rst $38
    ret z

    nop
    nop
    inc de
    rst $38
    rst $38
    ld a, [$0000]
    nop
    ld a, a
    rst $38
    rst $38
    ld b, b
    nop
    nop
    ld c, a
    rst $38
    rst $38
    add sp, $00
    nop
    ld bc, $ffff
    db $fd
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    and b
    nop
    nop
    rlca
    rst $38
    rst $38
    db $ec
    nop
    nop
    ld bc, $ffff
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
    ld hl, sp+$00
    nop
    ld bc, $ffff
    rst $38
    nop
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
    db $fc
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
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
    rlca
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
    nop
    ld a, a
    rst $38
    rst $38
    ld b, b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    cp $80
    nop
    nop
    rrca
    rst $38
    rst $38
    db $f4
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    and b
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
    add sp, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    jr nz, jr_025_4d7e

jr_025_4d7e:
    nop
    rlca
    rst $38
    rst $38
    db $fc
    add b
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
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $40
    nop
    nop
    rrca
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $e4
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
    cp $00
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
    cp $00
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
    dec bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    cp $40
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    and b
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
    rrca
    rst $38
    rst $38
    xor $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $fd
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    jr nc, jr_025_4e40

jr_025_4e40:
    nop
    ld bc, $ffff
    rst $38
    ld [c], a
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    ld h, b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    call nz, RST_00
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$40
    nop
    ld [bc], a
    inc c
    ld a, [hl]
    rst $38
    rst $38
    adc h
    nop
    jr jr_025_4e67

jr_025_4e67:
    add e
    rrca
    rst $38
    ld hl, sp-$3d
    add hl, de
    add b
    nop
    jr nz, @+$01

    rst $38
    adc [hl]
    add hl, sp

jr_025_4e74:
    add b
    nop
    inc bc
    inc bc
    rst $38
    db $fc
    pop hl
    adc b
    nop
    nop
    nop
    ld a, a
    rst $38
    add $1c
    ld b, b
    nop

jr_025_4e85:
    ld bc, $ff87
    cp $70
    call nz, RST_00
    inc c
    ccf
    rst $38
    di
    add [hl]
    nop
    nop
    nop
    db $e3
    rst $38
    rst $38
    jr jr_025_4efa

    nop
    ld bc, $1f06
    rst $38
    ld hl, sp-$40
    adc b
    nop
    ld [$ff3c], sp
    rst $38
    add $0c
    ld c, h
    db $10
    ld b, c
    add e
    rst $38
    rst $38
    jr jr_025_4ee1

    jr nz, jr_025_4e74

    ld b, $1f

jr_025_4eb5:
    ld a, a
    ld hl, sp-$3f
    add c
    add d
    ld [$6318], sp
    rst $38
    db $e3
    ld b, $06
    nop
    jr nz, jr_025_4e85

    cpl
    rst $38
    adc h
    jr c, jr_025_4f39

    ld b, b
    add d
    rrca
    cp a
    ld a, h
    ld [hl], b
    pop hl
    ret nz

    nop
    db $10
    ld l, l
    rst $38
    db $e3
    adc [hl]
    ld b, $00
    nop
    pop bc
    rst $38
    rst $38
    sbc h
    ld [hl], c
    stop

jr_025_4ee1:
    ld b, $0f
    rst $38
    ld hl, sp-$1d
    add c
    nop
    nop
    jr nc, jr_025_4f66

    rst $38
    rst $20
    inc b
    nop
    nop
    ld bc, $dfc3
    rst $38
    jr c, jr_025_4f56

    ld h, b
    nop
    ld b, $1f

jr_025_4efa:
    rst $38
    ld hl, sp-$3f
    add c
    nop
    ld [$ff30], sp
    rst $38
    add $1c
    ld c, b
    nop
    ld b, c
    add a
    rst $18
    cp $38

jr_025_4f0c:
    ld h, e
    jr nz, @+$04

    inc c
    ld a, $ff
    ld sp, hl
    jp $8099


    nop
    nop
    ei
    rst $38
    add $1c
    ld l, h
    db $10
    ld bc, $cf83
    rst $38
    jr jr_025_4eb5

    jr nz, jr_025_4f26

jr_025_4f26:
    ld b, $0d
    ld a, a
    db $fc
    db $e3
    add $80
    nop
    db $10
    ld a, a
    rst $38
    di
    adc [hl]
    ld [hl], $00
    nop
    ld b, c
    sbc a
    rst $38

jr_025_4f39:
    adc h
    jr z, jr_025_4f0c

    nop
    inc bc
    ld b, $ff
    cp $30
    ld h, e
    call nz, $0400
    dec sp
    rst $38
    db $fc
    pop bc
    adc a
    jr jr_025_4f4d

jr_025_4f4d:
    db $10
    ld l, l
    rst $38
    di
    adc a
    ld a, $60
    nop

jr_025_4f55:
    ld b, c

jr_025_4f56:
    sbc a
    rst $38
    add $1c
    ld a, b
    add b
    nop
    rlca
    ccf
    rst $38
    jr @+$73

    or d

jr_025_4f63:
    nop
    inc b
    dec c

jr_025_4f66:
    rst $38
    db $fc
    ld [hl], c

jr_025_4f69:
    rst $00
    add b
    nop

jr_025_4f6c:
    ld [$ff37], sp
    ld sp, hl
    rst $00
    sbc [hl]
    jr nz, jr_025_4f74

jr_025_4f74:
    jr nz, jr_025_4f55

    rst $38
    rst $20
    ld c, $38
    ld b, b
    nop
    jp $ff3f


    adc [hl]
    jr c, jr_025_4f63

    nop
    ld bc, $7f06
    rst $38
    jr c, jr_025_4ffc

    and d
    nop
    ld b, $19
    rst $38
    db $fc
    ld [hl], c

jr_025_4f90:
    rst $00
    ld [$0800], sp
    ld [hl], $ff
    ld sp, hl
    jp Jump_000_301c


    nop
    jr nz, jr_025_4f6c

    rst $38
    rst $20
    inc e
    ld h, b
    nop
    nop

jr_025_4fa3:
    add e
    ccf
    rst $38
    sbc h
    jr c, jr_025_4f69

    nop
    inc bc
    ld c, $ff
    rst $38
    jr nc, @-$1b

    ld [bc], a
    nop
    inc b
    add hl, de
    rst $38
    db $fc
    pop hl
    rst $00
    add h
    nop
    ld [$ff77], sp
    ld sp, hl
    rst $00
    jr jr_025_4fd1

    nop
    jr nz, jr_025_4fa3

    rst $38
    rst $20
    ld c, $30
    nop
    nop
    add e
    ccf
    rst $38
    adc h
    jr c, jr_025_4f90

    nop

jr_025_4fd1:
    ld bc, $ff0c
    rst $38
    jr c, jr_025_504a

    nop
    nop
    nop
    add hl, de
    cp a
    cp $70
    add $00
    nop
    ld [$ff33], sp
    db $fc
    db $e3
    adc l
    stop
    db $10
    ld l, l
    rst $38
    ld sp, hl
    jp Jump_000_201e


    nop
    jr nz, @-$35

    rst $38
    di
    add a
    ccf
    jr nz, jr_025_4ff9

jr_025_4ff9:
    nop
    sbc e
    rst $38

jr_025_4ffc:
    di
    ld c, $79
    and b
    nop
    ld bc, $ff07
    rst $20
    ld c, $7f
    ret nz

    nop
    ld bc, $ff0f
    rst $20
    inc e
    ld [hl], c
    ret z

    nop
    inc bc
    scf
    rst $38
    and $1c
    ld a, e
    ret z

    nop
    nop
    ld b, $ff
    rst $20
    ld c, $7f
    ret z

    nop
    nop
    ld [bc], a
    rst $38
    di
    adc [hl]
    ccf
    db $e4
    nop
    nop
    add hl, bc
    rst $38
    di
    add a
    ccf
    db $f4
    nop
    nop
    ld bc, $f93f
    rst $00
    rra
    di
    nop
    nop
    inc b
    ld a, a
    db $fc
    db $e3
    rst $08
    ld hl, sp+$00
    nop
    nop
    rra
    cp $30
    rst $20
    cp $40
    nop

jr_025_504a:
    nop
    adc a
    rst $38
    sbc h
    ld a, c
    rst $38
    and b
    nop
    nop
    ld h, a
    rst $38
    rst $00
    inc e
    rst $38
    ret z

    nop
    nop
    add hl, de
    rst $38
    di
    adc a
    ld a, a
    and $00
    nop
    ld b, $6f
    db $fc
    db $e3
    rst $18
    ld sp, hl
    nop
    nop
    ld bc, $fe1f
    ld [hl], c
    rst $28
    cp $00
    nop
    nop
    rst $08
    rst $38
    sbc h
    ld a, e
    rst $38
    nop
    nop
    nop
    ld [hl], e
    rst $38
    adc $3c
    rst $38
    add b
    nop
    nop
    add hl, de
    rst $38
    di
    adc a
    ld a, a
    ldh a, [rP1]
    nop
    ld b, $7f
    ld sp, hl
    db $e3
    rst $18
    ldh a, [rP1]
    nop
    ld b, c
    sbc a
    cp $71
    rst $28
    db $fc
    nop
    nop
    nop
    adc a
    rst $38
    inc a
    ei
    cp $00
    nop
    nop
    scf
    rst $38
    adc $3c
    rst $38
    add b
    nop
    nop
    add hl, de
    rst $38
    di
    adc a
    ld a, a
    ret nz

    nop
    ld bc, $7f06
    ld sp, hl
    rst $20
    sbc a
    ld [hl], b
    nop
    nop
    ld b, c
    cp a
    cp $79
    rst $20
    call c, RST_00
    db $10
    rst $08
    rst $38
    sbc h
    ld a, e
    rst $30
    nop
    nop
    ld [$ff33], sp
    rst $08
    inc a
    ei
    add b
    nop
    ld [bc], a
    add hl, de
    rst $38
    rst $30
    adc a
    ld a, a
    ret nz

    nop
    nop
    ld b, $7f
    ld sp, hl
    rst $20
    rst $18
    jr nc, jr_025_50e5

jr_025_50e5:
    nop
    inc bc
    cp a
    cp $79
    rst $20
    call c, RST_00
    nop
    rst $08
    rst $38
    sbc [hl]
    ld a, e
    rst $38
    nop
    nop
    nop
    inc sp
    rst $38
    rst $28
    sbc a
    rst $38
    ret nz

    nop
    nop
    ld bc, $f9ff
    rst $20
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    ld a, h
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $20
    sbc a
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf
    cp $7d
    rst $38
    cp $00
    nop
    nop
    nop
    rst $38
    rst $30
    rst $08
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    ld a, $ff
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    db $fd
    di
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    di
    rst $08
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $08
    cp a
    rst $38
    ld hl, sp+$00
    nop
    ld b, $1f
    rst $38
    sbc a
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    ld b, $3f
    ld a, a
    ccf
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    ld [$ffbf], sp
    ld a, $ff
    rst $38
    ldh [rP1], a
    nop
    ld bc, $fc3f
    ld sp, hl
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    cp c
    rst $30
    rst $38
    db $fd
    nop
    nop
    nop
    add c
    rst $30
    rst $20
    rst $18
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, a
    rst $38
    sbc [hl]
    ld a, a
    rst $38
    and b
    nop
    nop
    ld bc, $fcff
    di
    rst $38
    ld hl, sp+$00
    nop
    nop
    rlca
    rst $38
    rst $08
    sbc a
    rst $38
    nop
    nop
    nop
    ld bc, $fdff
    di
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    cp [hl]
    ld a, h
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $30
    rst $08
    sbc c
    nop
    nop
    nop
    nop
    scf
    cp $f9
    db $e3
    nop
    nop
    inc bc
    inc sp
    rrca
    rst $38
    sbc [hl]
    jr c, jr_025_5202

    nop
    ld bc, $c304
    rst $38
    rst $20
    adc [hl]
    stop
    nop
    ld c, e
    ld [hl-], a
    rst $38
    ei
    rst $20
    ret nz

    nop
    nop
    ld h, $4e
    ccf
    cp $f9
    ldh a, [rNR41]
    nop
    add hl, bc
    or e
    rlca
    rst $38
    cp [hl]
    ld [hl], b
    nop
    nop
    ld [bc], a
    ld l, h
    di
    rst $38
    rst $08
    jr jr_025_51eb

jr_025_51eb:
    nop
    add hl, bc
    or [hl]
    ld a, h
    rst $38
    rst $20
    adc h
    nop
    nop
    inc b
    db $db
    sbc a
    ld a, a
    di
    add $00
    nop
    ld [bc], a
    ld l, a
    sbc a
    ccf
    ld sp, hl
    db $e3

jr_025_5202:
    nop
    nop
    nop
    ld [hl], $e7
    rst $18
    db $fc
    pop af
    add b
    nop
    nop
    dec de
    di
    rst $38
    rst $38
    ld a, h
    ldh [rP1], a
    nop
    inc c
    cp c
    rst $38
    rst $38
    cp [hl]
    jr nc, jr_025_521c

jr_025_521c:
    nop
    inc bc
    ld l, h
    ld c, l
    rst $38
    rst $28
    sbc h
    nop
    nop
    nop
    sub e
    ld [hl], $ff
    rst $38
    rst $20
    nop
    nop
    nop
    ld h, h
    call $ffbf
    ld sp, hl
    ret nz

    nop
    nop
    jr @+$35

    ld h, a
    rst $38
    cp a
    ld [hl], b
    nop
    nop
    inc bc
    inc c
    ld a, c
    rst $38
    rst $38
    rst $28
    add b
    nop
    nop
    ld c, c
    adc c
    ccf
    rst $38
    ld sp, hl
    ldh [rP1], a
    nop
    add hl, bc
    ld sp, $ff07
    rst $38
    cp h
    nop
    nop
    ld bc, $24a7
    rst $38
    rst $38
    rst $30
    add b
    nop
    nop
    ld [hl-], a
    ldh [$8f], a
    rst $38
    rst $38
    ld a, b
    nop
    nop
    inc bc
    ld c, [hl]
    ld de, $ffff
    xor $00
    nop
    nop
    ld [hl], h
    pop bc
    rra
    rst $38
    cp $f8
    nop
    nop
    inc bc
    xor $19
    rst $38
    rst $38
    rst $30
    add b
    nop
    nop
    ld a, $60
    adc a

jr_025_5285:
    rst $38
    rst $38
    inc a
    nop
    nop
    ld bc, $04c7
    rst $38
    rst $38
    ei
    add b
    nop
    nop
    inc c
    jr nc, jr_025_52bd

    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    ld h, c
    add c
    ccf
    rst $38
    cp $70
    add b
    nop
    inc bc
    ld b, $0d
    rst $38
    rst $38
    ei
    ret nz

    nop
    nop
    ld [$6711], sp
    rst $38
    rst $38
    rst $38
    sub b
    nop
    nop
    jr nz, jr_025_5285

    cp a
    rst $38
    rst $38
    cp $60

jr_025_52bd:
    nop
    nop
    inc bc
    ld [hl], $ff
    rst $38
    rst $38
    db $fd
    add b
    nop
    nop
    ld b, $7f
    rst $38
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    or $00
    nop
    nop
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    nop
    nop
    nop
    dec de
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
    db $fc
    nop
    nop
    nop
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    rst $38
    db $fd
    sbc a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc b
    rst $38
    rst $38
    sbc b
    ccf
    rst $38
    cp $c0
    nop
    nop
    rra
    rst $38
    rst $38
    ld h, b
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    ld bc, $f6ff
    inc b
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    ret nz

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
    rst $38
    db $fc
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
    inc bc
    rst $38
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
    db $fc
    nop
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$80]
    nop
    inc bc
    ld b, b
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    add b
    nop
    nop
    nop
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    dec bc
    rst $38
    rst $20
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    nop
    rst $00
    rst $38
    rst $38
    ret z

    rst $38
    ld a, [c]
    nop
    ld b, $0c
    add c
    db $e4
    ld sp, hl
    cp $7f
    rst $38
    jp $fffc


    sbc h
    rrca
    ldh [$63], a
    rst $38
    rst $38
    rra
    di
    rst $20
    rst $38
    ldh a, [rP1]
    rra
    db $e3
    rst $08
    db $fd
    rra
    cp a
    cp $00
    ldh [rP1], a
    ld e, $08
    rlca
    pop bc
    add e
    ei
    db $f4
    rlca
    pop bc

jr_025_53e9:
    ret nz

    nop
    ld a, [hl]
    inc bc
    inc bc
    ld h, a
    pop hl
    ld hl, sp+$32
    inc b
    rra
    add b
    ret nz

    jr jr_025_53e9

    inc a
    inc c
    add e
    db $fc
    di
    ld a, [hl]
    ld b, b
    ld bc, $80ff
    di
    cp $00
    ccf
    ret nz

    ret nz

    cp h
    ldh a, [$1f]
    rst $30
    ld b, b
    db $fc
    ld a, [hl]
    ld c, $7f
    rlca
    ldh [rP1], a
    daa
    ei
    ld hl, $00fc
    add e
    rst $38
    add c
    ld sp, hl
    rst $38
    nop
    sbc a
    rst $08
    ret nz

    rrca
    ldh [$f0], a
    db $10
    ld [hl], b
    rra
    db $e3
    db $fd
    ret nz

    nop
    ccf
    rst $18
    pop bc
    ld a, [c]
    rra
    rst $08
    ld hl, sp-$02
    nop
    ld [bc], a
    rra
    ldh [$d8], a
    rlca
    ldh a, [$7e]
    rrca
    inc b
    inc bc
    ldh a, [rPCM12]
    ld a, [hl]
    ld c, e
    inc sp
    db $fc
    rlca
    nop
    nop
    ld bc, $d8e4
    rlca
    rst $18
    ld [hl], e
    rra
    ret nz

    nop
    rlca
    ret nz

    inc de
    rst $18
    ei
    rlca
    ei
    db $fc
    nop
    ldh a, [rTMA]
    rra
    cp $01
    rst $08
    ldh a, [$78]
    inc a
    ld c, c
    nop
    ld a, a
    sbc e
    ld h, h
    rrca
    jp Jump_025_78f8


    nop
    inc b
    rst $38
    ei
    add $11
    add a
    ld hl, sp+$3e
    inc bc
    add b
    rst $38
    and $cf
    ld hl, sp-$80
    jr jr_025_548e

    inc c
    inc hl
    call z, $9ff1
    ldh a, [rNR23]
    nop
    nop
    adc d
    rlca
    db $d3
    db $76
    rst $38
    ld l, a
    pop bc

jr_025_548e:
    add b
    ld bc, $0900
    rst $38
    ld a, a
    rst $00
    ld hl, sp+$01
    ld [hl], b
    ld h, b
    dec b
    add b
    or $5e
    rst $20
    rst $38
    ld hl, sp+$01
    ld h, $f9
    rst $38
    sbc a
    sub e
    rst $38
    cp $1c
    rst $08
    pop af
    ccf
    ld c, $f1
    ld a, a
    db $fd
    db $f4
    ld b, $c9
    ld [bc], a
    daa
    db $fc
    rra
    rst $38
    ret nz

    jr c, jr_025_5537

    inc bc
    ld b, c
    ldh a, [rNR33]
    adc a
    sbc a
    jp Jump_000_18e0


    ld a, a
    rra
    add e
    db $e4
    ld a, h
    rlca
    ldh [rP1], a
    nop
    jr c, jr_025_54d6

    add c
    db $fc
    inc de
    ret nz

    ld h, b
    nop
    sub e

jr_025_54d6:
    inc [hl]
    rst $18
    cpl
    ret nz

    ld hl, sp+$0e
    ret nz

    nop
    ld a, [hl]
    rra
    add e
    db $ed
    or $04
    reti


    nop
    nop
    ld a, a
    ccf
    rst $08
    ei
    ldh [$3e], a
    ld a, h
    rlca
    rlca
    ldh [$f8], a
    ccf
    ld a, a
    ld bc, $00c0
    inc bc
    ld [hl], c
    rst $38
    rra
    ldh a, [$3e]
    ccf
    add b
    nop
    ld a, e
    cp $63
    rst $38
    ld a, [c]
    inc c
    db $fc
    nop
    rlca
    sbc a
    ldh [$7f], a
    db $fc
    inc e
    rrca
    ldh [rP1], a
    reti


    cp $3f
    rst $38
    rst $30
    rlca
    rst $20
    ret nz

    nop
    ld a, a
    rst $38
    di
    db $fc
    ccf
    ld b, $03
    nop
    rrca
    rst $38
    adc a
    rst $38
    ldh a, [$7f]
    sbc b
    nop
    nop
    ld l, a
    ld sp, hl
    ld hl, sp+$3e
    inc bc
    add b
    cp $00
    rra
    rst $38
    rst $28
    db $f4

jr_025_5537:
    ld hl, sp+$32
    ld a, a
    add b
    nop
    rra
    ldh a, [$7f]
    rst $38
    add c
    add b
    pop bc
    nop
    ld bc, $fdff
    rst $38
    cp $00
    jp Jump_000_0300


    daa
    ei
    ld a, h
    rst $38
    adc h
    inc bc
    ld l, h
    nop
    rlca
    rra
    rst $20
    rst $38
    ldh a, [$30]
    cp $00
    nop
    ret nz

    ld a, a
    rra
    rst $08
    and b
    ret nz

    db $fc
    nop
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    add c
    db $fc
    jr nz, jr_025_556f

jr_025_556f:
    rst $30
    db $fd
    sbc a
    push hl
    ret nc

    jr c, jr_025_55d6

    nop
    inc bc
    rst $38
    jp $f8ff


    dec e
    rst $38
    add b
    nop
    ld e, $3f
    adc a
    ei
    ret nz

    db $fd
    call c, RST_00
    ccf
    rst $38
    rst $38
    rst $08
    reti


    rst $38
    ret nz

    nop
    db $fd
    cp $6f
    rst $38
    ld [hl], a
    rst $38
    ldh a, [rP1]
    ld bc, $f8f7
    daa
    ei
    inc bc
    jp Jump_000_00c0


    ld bc, $fffe
    rst $38
    jr nc, @+$45

    rst $38
    ld b, b
    nop
    scf
    rst $38
    rst $38
    ldh [$03], a
    rst $38
    ldh [rP1], a
    ld bc, $7ff8
    rra
    rst $20
    jp $00f0


    ld bc, $f9bf
    inc de
    rst $38
    ld [hl], e
    cp $40
    db $10
    rra
    sbc c
    rst $38
    ldh a, [$3f]
    rst $38
    db $10
    inc b
    nop
    rlca
    rst $08
    pop bc
    add b
    add c
    cp e
    pop bc
    nop
    nop

jr_025_55d6:
    ld [bc], a
    ld a, h
    cp $0d
    rra
    db $fd
    ret nz

    inc c
    nop
    ld e, $3f
    ret nz

    ld hl, sp+$64
    cp $ce
    ret nz

    ld c, b
    rra
    rst $30
    cp $0f
    rst $20
    or $39
    ldh [rSC], a
    inc bc
    rst $38
    rst $38
    ld a, a
    ret nc

    rlca
    ld h, b
    nop
    ld d, $1f
    or $3f
    db $fd
    db $fc
    rra
    add b
    db $10
    rrca
    ld hl, sp-$02
    ld e, a
    rst $08
    cp $00
    adc b
    nop
    ld bc, $f081
    ld sp, hl
    rst $38
    ld hl, sp+$1f
    dec de
    nop
    nop
    nop
    rra
    ldh a, [$36]
    rst $38
    ld a, a
    add a
    ret nz

    ret nz

    ld [hl-], a
    ld a, a
    rst $38
    ei
    rst $38
    di
    jr c, jr_025_5635

    add b
    nop
    ld [hl], e
    ld a, [hl]
    ld a, a
    and a
    or $03
    ld bc, $00f0
    nop
    ld a, [hl]
    ld a, a
    rst $38

jr_025_5635:
    ld sp, hl
    sub c
    sbc a
    pop bc
    ldh a, [rP1]
    nop
    rst $38
    adc a
    add c
    db $fc
    ld h, b
    ld a, h
    nop
    ld bc, $00c0
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    dec c
    cp $00
    nop
    nop
    rlca
    rst $18
    ret nz

    ret nz

    ret nz

    jr nz, @-$11

    db $fd
    add b
    nop
    rra
    adc a
    rst $38
    db $fc
    ld hl, sp+$1f
    ld h, a
    ret nz

    ld de, $0700
    rst $08
    db $fc
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    add e
    rst $38
    rst $00
    scf
    db $ed
    add b
    ld a, [hl]
    nop
    nop
    nop
    nop
    rra
    adc a
    rst $38
    cp $67
    pop af
    ldh a, [$0e]
    nop
    nop
    nop
    inc de
    rst $38
    db $fc
    ld a, a
    ld l, $00
    rra
    nop
    nop
    jr nz, jr_025_56de

    rst $18
    rst $38
    rst $38
    pop af
    di
    ld sp, hl
    cp b
    nop
    nop
    scf
    rla
    rst $38
    rst $38
    rst $38
    cp $cf
    rst $30
    call nz, Call_000_0660
    inc bc
    and $ff
    cp $7f
    rst $38
    nop
    ld h, b
    ld b, b
    nop
    ld b, $09
    inc bc
    rst $38
    db $fd
    rst $38
    rst $38
    inc bc
    pop bc
    ret nz

    nop
    db $fc
    rrca
    rrca
    jp $f9ef


    ld [hl], b
    ld b, d
    nop
    nop
    ccf
    ldh [rTMA], a
    ld b, b

jr_025_56c7:
    rla
    rst $38
    ld sp, hl
    inc de
    ldh a, [rNR32]
    inc bc
    ret nc

    ld a, a
    ld a, [c]
    inc a
    rlca
    add b
    ld a, a
    ret nz

    ret nc

    ccf
    add h
    rra
    rst $38
    add c
    ccf
    add b

jr_025_56de:
    nop
    dec sp
    nop
    rra
    reti


    cp c
    rst $38
    add hl, de
    scf
    ld bc, $e0c8
    nop
    ld c, $0f
    rst $38
    cp $f9
    rst $38
    rst $38
    rst $38
    ld hl, sp+$04
    add b
    nop
    ccf
    or $5f
    rst $18
    ld [hl-], a
    rst $38
    rst $30
    db $fc
    ret z

    nop
    rlca
    ldh a, [$71]
    ccf
    ld h, d
    ld a, $f9
    add b
    inc sp
    db $fc
    rrca
    ld [bc], a
    nop
    ld bc, $3f00
    rlca
    ret nz

    ret


    nop
    ld a, b
    rra
    scf
    rst $00
    ldh [$80], a
    nop
    nop
    ld de, $1ffe
    pop bc
    or b
    inc bc
    rst $38
    rst $38
    and d
    nop
    ld b, b
    nop
    jr nc, @+$08

    ld h, a
    call $fffd
    rst $38
    ld hl, sp-$20
    nop
    jr c, jr_025_5754

    jr nz, jr_025_56c7

    ld b, b
    ld h, a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $28
    ei
    ret nz

    rst $08
    ld hl, sp-$01
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    nop
    ld b, b
    inc b
    db $db
    cp $7c
    nop
    rla
    ld h, b
    sub b
    nop

jr_025_5754:
    nop
    nop
    ld a, [hl]
    ld l, a
    sub e
    ldh [$66], a
    rst $28
    cp $44
    inc c
    nop
    nop
    ld [hl], d
    ld b, b
    nop
    nop
    db $10
    rst $38
    cp e
    ccf
    rst $08
    pop hl
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rrca
    ld sp, hl
    rst $38
    ld a, $7f
    rst $30
    rst $18
    rst $38
    ld hl, sp+$38
    ld c, a
    add e
    rst $20
    sub b
    ld b, a
    cp $7d
    and $64
    ld [bc], a
    ld l, b
    jr c, jr_025_5788

jr_025_5788:
    nop
    sub a
    inc bc
    sub a
    ret z

    nop
    rst $20
    pop af
    add b
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
    nop
    nop
    ld c, $66
    rrca
    ld sp, hl
    cp c
    rst $38
    ld sp, hl
    cp a
    ld [hl], a
    set 7, e
    ret nz

    rla
    rst $38
    rst $38
    adc h
    cp e
    ld a, b
    ld a, a
    db $fc
    ccf
    rst $38
    ld [hl], a
    rst $38
    rst $38
    add c
    rst $28
    ldh [$67], a
    rst $38
    ld [bc], a
    ld e, $18
    rlca
    rst $38
    and d
    ld b, b
    nop
    nop
    ld b, b
    ld [hl], c
    ldh a, [$d8]
    rst $38
    cp $2f
    cp a
    add b
    ld bc, $808c
    nop
    nop
    nop
    jr jr_025_57d5

jr_025_57d5:
    inc bc
    add b
    inc bc
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    ld a, a
    add [hl]
    inc bc
    add a
    inc bc
    and b
    ld h, c
    ld sp, hl
    nop
    ld a, h
    ld a, h
    jr nz, @+$0a

    rst $08
    cp $73
    cp $79
    add [hl]
    ld [$0000], sp
    nop
    nop
    stop
    nop
    inc h
    rlca
    scf
    jp $ff87


    cp $07
    ld c, $07
    rrca
    nop
    ld bc, $6df2
    ld hl, sp-$06
    ld [$ffff], sp
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $28
    ret nz

    ld h, b
    nop
    ld a, [hl]
    ld a, [hl]
    dec sp
    rst $18
    ld a, a
    cp $40
    inc sp
    ei
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    call z, $ff00
    nop
    nop
    nop
    ld [$c03f], sp
    nop
    nop
    jr c, jr_025_5874

    inc e
    add [hl]
    ld [hl], e
    add $00
    nop
    jr nc, jr_025_584e

    cp [hl]
    xor $00
    nop
    ld e, $30
    ld [$ff03], sp
    rst $38
    di
    pop hl
    db $e3
    di

jr_025_584e:
    rst $30
    ld sp, hl
    db $e3
    ld h, [hl]
    rst $30
    jr nz, jr_025_5855

jr_025_5855:
    add hl, bc
    jr nz, jr_025_5858

jr_025_5858:
    add hl, de
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    add $03
    rst $08
    dec c
    nop
    ld [$cf1c], sp
    ld l, h
    sbc $00
    db $fd
    cp $ff
    rst $38
    cp c
    db $fc
    rst $38
    rst $38
    db $fd
    di

jr_025_5874:
    db $fc
    ld bc, $60c4
    ld [bc], a
    ld bc, $fffb
    rst $18
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
    db $e3
    db $fd
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    ld hl, sp+$26
    db $fc
    ld a, a
    inc d
    ld a, a
    ld a, a
    ld [bc], a
    rst $20
    ld bc, $036e
    rst $38
    rst $38
    rst $28
    rst $38
    scf
    cp a
    ei
    rst $38
    rst $38
    add c
    ld bc, $04cc
    ld l, h
    ccf
    add a
    ei
    rst $38
    ld a, a
    db $ec
    ld h, b
    nop
    nop
    nop
    nop
    inc b
    rlca
    ei
    cp $3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$26fe]
    ccf
    ld b, a
    rst $38
    or $70
    rst $38
    sbc [hl]
    rst $38
    ret


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
    add b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld a, a
    rst $38
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
    nop
    nop
    nop
    nop
    rra
    add b
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    add b
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    rst $38
    ld h, b
    add b
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    ret c

    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    db $fc
    nop
    nop
    nop
    rst $18
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ccf
    db $ec
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
    rra
    rst $38
    nop
    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ret nz

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
    ld [hl], $c0
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$0000]
    nop
    nop
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
    add b
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
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, [c]
    nop
    nop
    inc c
    nop
    nop
    nop
    inc bc
    rra
    rst $38
    rst $38
    rst $38
    db $e4
    cp a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $7f
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp+$03
    db $fc
    ccf
    rra
    adc a
    cp $70
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    ld bc, $ff1f
    adc b
    nop
    nop
    sbc $ff
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    nop
    rra
    ccf
    cp $fe
    add hl, de
    ld [hl], $5b
    ldh a, [rP1]
    ld bc, $3f11
    adc e
    add [hl]
    ret nz

    rla
    rlca
    ret nz

    ld a, a
    pop af
    db $fc
    sbc a
    nop
    ld bc, $0f0c
    di
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    nop
    nop
    rrca
    rst $38
    db $e3
    ldh a, [$f8]
    ccf
    rst $38
    and $c0
    nop
    nop
    nop
    inc b
    rlca
    inc sp
    rst $38
    rst $38
    rst $38
    db $ec
    nop
    nop
    nop
    nop
    nop
    adc h
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc c
    nop
    ld c, a
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    inc b
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld [bc], a
    ld a, b
    ld c, c
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    cp $4d
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rlca
    db $fd
    rst $38
    ei
    cp $60
    nop
    nop
    ld bc, $ff7f
    cp $7e
    call z, RST_00
    nop
    rst $08
    rst $38
    rst $38
    cp a
    and d
    nop
    ld bc, $0100
    db $fc
    rst $38
    rst $18
    sbc c
    ld [bc], a
    ld bc, $00c0
    rst $28
    ld a, a
    rst $28
    reti


    add d
    dec b
    rst $38
    add b
    rst $38
    rst $38
    rst $08
    sub c
    nop
    dec c
    rst $38
    cp a
    cp $7f
    sbc a
    ld [bc], a
    nop
    inc bc
    rst $18
    rst $30
    rst $38
    cp $64
    nop
    ld bc, $f97f
    sbc a
    rst $38
    di
    nop
    nop
    rra
    rst $38
    call $ffff
    jr nc, jr_025_5aab

jr_025_5aab:
    ld bc, $ffff
    rst $18
    rst $38
    di
    nop
    nop
    rra
    rst $38
    db $fc
    rst $38
    cp $60
    nop
    ld bc, $ffff
    rst $38
    rst $38
    adc h
    stop
    ld a, a
    rst $38
    rst $38
    rst $38
    db $e3
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    pop af
    add b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    pop af
    add b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [$80]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    pop af
    add b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    pop af
    add d
    nop
    rlca
    cp a
    rst $38
    rst $38
    pop af
    ld [bc], a
    nop
    rlca
    ccf
    rst $38
    rst $38
    db $e3
    inc b
    nop
    add [hl]
    ld a, a
    rst $38
    rst $38
    db $e3
    inc b
    nop
    ld [bc], a
    ccf
    rst $38
    rst $38
    db $e3
    inc c
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    rst $20
    inc c
    ld [$3100], sp
    rst $38
    rst $38
    rst $20
    inc c
    jr jr_025_5b17

jr_025_5b17:
    ld h, c
    rst $38
    rst $38
    db $e3
    ld b, $08
    nop
    inc h
    rst $38
    rst $38
    di
    add [hl]
    inc c
    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    jp Jump_000_0006


    nop
    ld a, a
    db $fd
    db $fc
    pop bc
    add e
    jr nz, jr_025_5b34

jr_025_5b34:
    rra
    or $66
    ld [hl], h
    push hl
    adc b
    nop
    rrca
    di
    ccf
    inc e
    add hl, sp
    and $00
    inc bc
    ld sp, hl
    cp c
    rst $30
    ld c, $f9
    and d
    inc b
    rst $38
    add hl, sp
    inc a
    ret


    sbc a
    inc [hl]
    nop
    rrca
    pop af
    add [hl]
    add hl, de
    ccf
    rst $20
    add b
    inc b
    cp $18
    ld [hl], c
    rst $20
    rst $38
    ld hl, sp+$00
    ld c, a
    db $e3
    add [hl]
    ld [hl-], a
    ld a, a
    rst $38
    nop
    ld bc, $c8fc
    adc a
    rrca
    rst $38
    ldh a, [rP1]
    rra
    adc b
    db $10
    ld [hl], c
    rst $38
    db $fc
    nop
    inc bc
    ld hl, sp-$79
    ld l, $7f
    rst $38
    add b
    nop
    ld a, a

jr_025_5b7f:
    db $10
    add a
    ld l, a
    rst $38
    ld [c], a

jr_025_5b84:
    nop
    rrca
    ld a, c
    jr nc, jr_025_5b84

    cp $f8
    add b
    rlca
    xor $c8
    db $e3
    rst $38
    inc a
    ld b, b
    ld [bc], a
    rst $38
    and $ef
    rst $18
    jr c, @+$42

    inc bc
    rst $38
    cp h
    rst $28
    cp [hl]
    ld a, h
    add b
    nop
    scf
    db $db
    cp [hl]
    ld a, h
    pop af
    nop
    db $10
    rst $28
    sbc [hl]
    ei
    rst $20
    ld c, h
    db $10
    rlca
    ld a, [hl]
    ld [hl], l
    rst $08
    jr c, @+$62

    ld b, $79
    and $5c
    ei
    and [hl]
    nop
    ld b, a
    ld a, $65
    db $db
    ld [hl-], a
    ld b, b
    ld b, $0d
    adc h
    di
    and $18
    ld bc, $f38f
    ld c, $79
    and e
    ld [$d937], sp
    db $d3
    ld [hl], $68
    add d
    rra
    db $fc
    jp hl


    sbc e
    jr nc, @+$43

    rrca
    cp [hl]
    ld h, l
    db $db
    jr nc, jr_025_5c22

    inc c
    ld a, d
    ld h, l
    db $db
    jr nc, jr_025_5be8

    rrca

jr_025_5be8:
    db $fc
    push hl
    sbc e
    jr nz, jr_025_5c00

    inc c
    ei
    rst $18
    ld h, h
    nop
    rlca
    di
    ld h, $f8
    jr nz, jr_025_5b7f

    ccf
    ld a, e
    rst $30
    ld b, b
    nop
    inc bc
    rst $38
    rst $08

jr_025_5c00:
    jr nc, jr_025_5c02

jr_025_5c02:
    rlca
    sbc a
    ld a, e
    rst $28
    sbc a
    ld [hl], b
    add $08
    ld bc, $9eff
    ld sp, hl
    add b
    inc bc
    ld a, h
    rst $20
    sbc h
    nop
    ld bc, $9ce7
    ld h, b
    jp Jump_025_793e


    ldh [rP1], a
    ld e, $f3
    sbc [hl]
    jr nz, jr_025_5c22

jr_025_5c22:
    rst $08
    sbc a
    ld hl, sp-$40
    rlca
    inc a
    rst $20
    adc b
    nop
    rst $38
    inc a
    pop hl
    nop
    inc e
    ld a, a
    ei
    and b
    nop
    dec sp
    rst $30
    cp h
    nop
    rrca
    rst $38
    rst $38
    add b
    ld bc, $deff
    ld [hl], c
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    ccf
    rst $30
    adc $00
    nop
    rst $38
    rst $18
    db $f4
    nop
    rlca
    rst $38
    call c, $0720
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    db $fc
    ld b, b
    nop
    rst $18
    rst $38
    add b
    ld bc, $fd1f
    ldh a, [rP1]
    rra
    di
    adc $00
    ld bc, $cfff
    ld hl, sp+$00
    inc bc
    rst $38
    cp $00
    inc bc
    rst $38
    rst $38
    add b
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    add b
    ld bc, $ffbf
    ld hl, sp+$00
    ccf
    ei
    adc $00
    nop
    rst $38
    rst $18
    ld hl, sp+$00
    inc bc
    rst $38
    db $fc
    nop
    rrca
    rst $38
    rst $38
    ret nz

    ld bc, $fbff
    xor $00
    nop
    rst $38
    rst $38
    nop
    ld bc, $ffff
    ld a, b
    nop
    ld a, a
    ei
    adc $00
    inc b
    ld a, a
    rst $38
    nop
    nop
    scf
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    rst $30
    nop
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    cp $20
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    rst $38
    db $fd
    add b
    nop
    rra
    rst $38
    adc b
    nop
    ccf
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    db $fc
    add b
    nop
    rrca
    rst $38
    ret nz

    nop
    rra
    rst $38
    cp $00
    rlca
    rst $38
    db $fc
    ret nz

    nop
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ret nz

    nop

jr_025_5cee:
    rra
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    ld [c], a
    nop
    ld c, $7f
    rst $38
    xor $30
    ld [$ff67], sp
    rst $20
    jr @+$06

    ccf
    rst $38
    rst $30
    add $01
    adc h
    rst $38
    ld a, a
    db $fc
    jp $8c11


    rst $38
    cp $70
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp-$40
    ld bc, $ffcf
    rst $38
    adc h
    ld h, e
    jr jr_025_5cee

    rst $38
    xor $00
    nop
    rst $38
    rst $38
    rst $38
    adc h
    ld [bc], a
    dec e
    cp $ff
    pop af
    add b
    inc hl
    dec de
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    db $fd
    ret nz

    nop
    rra
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ret nz

    nop
    rrca
    rst $38
    db $fc
    nop
    ld bc, $ffff
    nop
    nop
    rrca
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    di
    add b
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rst $38
    pop af
    add b
    ld bc, $ff9f
    ld sp, hl
    add b
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    ld hl, sp+$40
    nop
    rst $28
    rst $38
    cp $30
    inc b
    inc bc
    ccf
    rst $38
    sbc h
    nop
    nop
    rst $18
    rst $38
    cp $60
    ld [$ff23], sp
    rst $38
    call z, RST_00
    ld l, a
    rst $38
    ei
    add b
    nop
    dec de
    rst $38
    rst $38
    jr nc, jr_025_5dac

jr_025_5dac:
    ld de, $ffff
    cp $60
    nop
    inc sp
    ld a, a
    rst $38
    sbc b
    nop
    nop
    rst $18
    rst $38
    rst $30
    nop
    nop
    rra
    rst $38
    rst $38
    db $e3
    nop
    ld bc, $ff33
    db $fc
    ldh [$08], a
    ld [bc], a
    ld a, a
    rst $38
    call c, RST_00
    ld e, a
    rst $38
    rst $38
    jr @+$04

    ld [$ff9f], sp
    di
    add b
    nop
    add hl, de
    rst $38
    cp $60
    nop
    ld [bc], a
    ld a, a
    rst $38
    ei
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $20
    nop
    nop
    inc de
    rst $38
    db $fd
    ret nz

    nop
    inc b
    rst $38
    rst $38
    call c, $0080
    ld c, a
    rst $38
    rst $38
    and $00
    nop
    scf
    rst $38
    db $fd
    call nz, $0400
    ld a, a
    rst $38
    xor $08
    ld [bc], a
    dec h
    rst $18
    rst $38
    call z, RST_00
    rlca
    rst $38
    db $fd
    ret nz

    nop
    nop
    ccf
    rst $38
    call c, $0080
    ld bc, $ffbf
    cp b
    nop
    nop
    rlca
    rst $38
    db $fd
    ret nz

    nop
    nop
    rra
    rst $38
    call c, Call_000_0081
    ld bc, $ffbf
    ld [hl], b
    nop
    nop
    rrca
    rst $38
    db $fd
    ret nz

    nop
    nop
    rra
    rst $38
    xor $40
    nop
    nop
    rst $18
    rst $38
    cp $00
    nop
    rrca
    rst $38
    db $fd
    ret nz

    nop
    nop
    rra
    rst $38
    ei
    add b
    nop
    nop
    ccf
    rst $38
    cp c
    ld [bc], a
    nop
    inc bc
    ld a, a
    rst $38
    add sp, $00
    nop
    dec c
    rst $38
    db $fd
    ret nz

    nop
    nop
    ccf
    rst $38
    sbc $80
    nop
    ld bc, $ffdf
    ld [hl], d
    inc b
    nop
    ld b, $7f
    db $fd
    add sp, $00
    nop
    rra
    rst $38
    rst $30
    jr nz, jr_025_5e72

jr_025_5e72:
    nop
    ld a, a
    rst $38
    db $dd
    add b
    nop
    ld bc, $ffbf
    halt
    nop
    ld b, $ff
    rst $38
    ret nc

    nop
    nop
    rra
    rst $38
    rst $38
    ld b, b
    nop
    nop
    rst $38
    rst $38
    cp l
    nop
    nop
    inc bc
    rst $38
    cp $e4
    nop
    nop
    rrca
    rst $38
    ei
    sub b
    nop
    nop
    ccf
    rst $38
    cp $40
    nop
    nop
    rst $38
    rst $38
    cp e
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret z

    nop
    nop
    rra
    rst $38
    rst $30
    jr nz, jr_025_5eb1

jr_025_5eb1:
    nop
    ld a, a
    rst $38
    db $fc
    add b
    nop
    nop
    rst $18
    rst $38
    ld a, [c]
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $ec
    nop
    nop
    rrca
    rst $38
    rst $38
    or b
    nop
    nop
    ccf
    rst $38
    xor $c0
    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    ld bc, $ffff
    or $00
    nop
    rlca
    rst $38
    db $fd
    ret z

    nop
    nop
    rrca
    rst $38
    ei
    sub b
    nop
    nop
    rra
    rst $38
    rst $30
    jr nz, jr_025_5eeb

jr_025_5eeb:
    nop
    ld a, a
    rst $38
    xor $c0
    nop
    nop
    rst $38
    rst $38
    db $fd
    add b
    nop
    ld bc, $ffff
    cp e
    nop
    nop
    inc bc
    rst $38
    rst $38
    or $00
    nop
    rlca
    rst $38
    cp $ec
    nop
    nop
    rrca
    rst $38
    db $fd
    ret z

    nop
    nop
    rra
    rst $38
    ei
    sub b
    nop
    nop
    ccf
    rst $38
    di
    jr nc, jr_025_5f1a

jr_025_5f1a:
    nop
    ccf
    rst $38
    rst $30
    ld h, b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld h, b
    nop
    nop
    ld a, a
    rst $38
    xor $c0
    nop
    nop
    ld a, a
    rst $38
    xor $c0
    nop
    nop
    rst $38
    rst $38
    call c, $0080
    nop
    rst $38
    rst $38
    db $dd
    sub b
    nop
    ld bc, $ffff
    db $dd
    sub b
    nop
    ld bc, $ffdf
    db $dd
    sub b
    nop
    nop
    rst $18
    rst $38
    call c, $0080
    nop
    rst $18
    rst $38
    call z, Call_000_0088
    inc b
    rst $08
    rst $38
    xor $c8
    nop
    nop
    ld l, a
    rst $38
    and $40
    nop
    nop
    ld l, a
    rst $38
    rst $30
    ld h, h
    nop
    nop
    scf
    rst $38
    di
    ld [hl+], a
    nop
    nop
    ccf
    rst $38
    ei
    sub d
    nop
    nop
    sbc e
    rst $38
    db $fd
    ret c

    nop
    nop
    ld c, l
    rst $38
    cp $e4
    ret z

    nop
    ld h, $ff
    rst $38
    ld [hl-], a
    jr nz, jr_025_5f87

jr_025_5f87:
    inc de
    cp a
    rst $38
    db $dd
    sub b
    ld [bc], a
    nop
    rst $18
    rst $38
    xor $40
    nop
    nop
    ld a, a
    rst $38
    di
    ld [hl+], a
    nop
    nop
    dec sp
    rst $38
    db $fd
    reti


    stop
    dec c
    rst $38
    cp $64
    ld b, b
    nop
    rlca
    ld a, a
    rst $38
    sbc c
    stop
    ld bc, $ffdf
    and $44
    nop
    nop
    ld a, a
    rst $38
    ld sp, hl
    sub c
    nop
    nop
    rra
    rst $38
    cp $e4
    nop
    nop
    rlca
    rst $38
    rst $38
    sbc c
    ld de, $0100
    rst $18
    rst $38
    and $40
    nop
    nop
    ld [hl], a
    rst $38
    ld sp, hl
    sub c
    stop
    dec e
    rst $38
    cp $64
    nop
    nop
    rlca
    ld a, a
    rst $38
    sbc l
    sub c
    ld [bc], a
    ld bc, $ffdf
    rst $20
    ld h, b
    ld b, b
    add b
    inc sp
    rst $38
    db $fc
    ret z

    sbc b
    nop
    ld c, $ff
    rst $38
    dec sp
    ld [hl+], a
    nop
    inc bc
    cp a
    rst $38
    xor $40
    add c
    nop
    ld l, a
    rst $38
    ld sp, hl
    sub b
    jr nz, jr_025_5ffe

jr_025_5ffe:
    add hl, de
    rst $38
    cp $76
    ld b, h
    ld [$7f07], sp
    rst $38
    call c, Call_000_0081
    nop
    rst $08
    rst $38
    di
    or d
    jr nz, jr_025_6011

jr_025_6011:
    dec de
    rst $38
    cp $64
    ld b, h
    nop
    rlca
    ccf
    rst $38
    call z, $80c8
    nop
    ld h, a
    rst $38
    ei
    sub b
    nop
    nop
    inc e
    rst $38
    rst $38
    dec sp
    ld [hl+], a
    nop
    ld bc, $ff9f
    rst $30
    ld h, b
    nop
    nop
    inc sp
    rst $38
    cp $ec
    ret z

    nop
    inc b
    ld e, a
    rst $38
    db $dd
    add b
    nop
    nop
    ld b, a
    rst $38
    rst $38
    reti


    stop
    nop
    rst $38
    rst $38
    rst $38
    ld [de], a
    nop
    nop
    rrca
    rst $38
    rst $38
    ld sp, hl
    jr nz, jr_025_6051

jr_025_6051:
    nop
    ld a, a
    rst $38
    rst $38
    sub b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    ret z

    nop
    nop
    ld bc, $ffff
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
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    xor $00
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    jp nz, RST_00

    nop
    ld a, a
    rst $38
    rst $38
    ld [c], a
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    di
    nop
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
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld a, [$0000]
    nop
    ld c, a
    rst $38
    rst $38
    ei
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
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    cp $c0
    nop
    nop
    ld bc, $ffff
    rst $38
    ld h, b
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
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    rst $38
    sub b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    di
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $30
    add b
    nop
    nop
    ld bc, $ffff
    db $fd
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $48
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    jr nz, jr_025_6159

jr_025_6159:
    nop
    nop
    adc a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc sp
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    inc c
    ld a, a
    rst $38
    cp $00
    nop
    nop
    inc bc
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld b, a
    rst $38
    rst $38
    ldh a, [rLCDC]
    nop
    nop
    jr jr_025_6200

    rst $38
    cp $20
    ld [$0200], sp
    rra
    rst $38
    rst $38
    sub e
    ld [bc], a
    nop
    nop
    add e
    ld a, a
    rst $38
    and $40
    ld b, b
    nop
    db $10
    ld a, a
    rst $38
    db $fd
    ret z

    stop
    inc b
    ld e, a
    rst $38
    rst $38
    or d
    inc b
    nop
    nop
    rlca
    rst $38
    rst $38
    jp hl


    add b
    nop
    nop
    dec b
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
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    call nz, RST_00
    nop
    ld a, a
    rst $38
    rst $38
    ld [c], a
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
    db $fd
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    db $fc
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $40
    nop
    nop
    rlca
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
    add b
    nop
    nop

jr_025_6200:
    ld bc, $ffff
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
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
    rst $38
    rst $38
    rst $38
    ret z

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
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
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
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    add b
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
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
    cp $00
    nop
    nop
    rlca
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
    rlca
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
    inc bc
    rst $38
    rst $38
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
    add b
    nop
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
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld [bc], a
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
    or $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $c0
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ld h, b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ret c

    nop
    nop
    ld bc, $ffff
    rst $38
    db $ec
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
    ccf
    rst $38
    rst $38
    db $fd
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    jr nz, jr_025_6304

jr_025_6304:
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    sbc b
    nop
    nop
    ld bc, $ffff
    rst $38
    ld a, [c]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    sub b
    nop
    nop
    ld bc, $ffff
    rst $38
    db $e4
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    rlca
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
    di
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $60
    nop
    nop
    inc bc
    ccf
    rst $38
    rst $38
    call z, RST_00
    nop
    daa
    rst $38
    rst $38
    db $fd
    ret nc

    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    cp $60
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    xor $00
    nop
    nop
    daa
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    call z, RST_00
    nop
    ld l, a
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    call z, RST_00
    nop
    ld c, a
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    call z, RST_00
    nop
    ld c, a
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    inc b
    ld a, l
    rst $38
    rst $38
    and $08
    add b
    nop
    ld hl, $ffde
    cp $70
    ld b, b
    nop
    ld [bc], a
    ld e, $ef
    rst $38
    di
    inc h
    ld b, b
    nop
    ld de, $7fff
    rst $38
    sbc l
    inc hl
    nop
    nop
    adc a
    ld sp, $fcff
    db $ed
    sbc b
    nop
    inc b
    add hl, de
    sbc a
    rst $38
    rst $30
    inc h
    ld b, b
    nop
    ld [hl+], a
    ld c, h
    rrca
    rst $38
    reti


    sub c
    ld [hl+], a
    ld b, b
    add b
    db $10
    ld l, a
    rst $38
    db $76
    ld b, h
    adc b
    nop
    nop
    ld b, b
    ld a, a
    cp $6c
    adc a
    sub e
    nop
    nop
    nop
    cp a
    db $fc
    ret


    sbc a
    or $00
    nop
    nop
    rst $38
    db $fc
    ret


    cp a
    cp $00
    nop
    nop
    ld a, a
    cp $4d
    rst $18
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    scf
    rst $38
    rst $38
    and b
    nop
    nop
    ld bc, $c932
    cp a
    rst $38
    ld hl, sp+$00
    nop
    nop
    add hl, bc
    di
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    ld [bc], a
    ld c, h
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld bc, $ff8f
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld a, h
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $28
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $7fff
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    dec bc
    db $fd
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
    rst $30
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [hl], $cf
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    db $76
    sbc a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $7fc3
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $7f86
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
    ldh [rP1], a
    nop
    nop
    ld [bc], a
    add hl, bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    dec l
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld b, $5b
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc c
    cp a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld [$ff37], sp
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [$ff27], sp
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [$ff27], sp
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld de, $ff3f
    rst $38
    cp $00
    nop
    nop
    nop
    add hl, de
    ld e, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    inc sp
    sbc a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld c, l
    cp a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld c, a
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    jp nc, $ff7f

    rst $38
    ldh a, [rP1]
    nop
    nop
    ld [bc], a
    inc e
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld bc, $ffb3
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc bc
    rst $20
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    daa
    rst $08
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld bc, $9f37
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld [bc], a
    rst $18
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld d, $f9
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    rst $30
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $dfff
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    add hl, bc
    cp $ff
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld l, l
    di
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $9fff
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    ld sp, hl
    rst $38
    rst $38
    db $fc
    add b
    nop
    nop
    add hl, bc
    rst $38
    rst $18
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    ld c, a
    db $fd
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $18
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    ei
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    cp $7f
    rst $38
    ld sp, hl
    nop
    nop
    nop
    inc bc
    ld a, a
    rst $18
    rst $38
    rst $38
    ld b, b
    nop
    nop
    nop
    ld a, a
    rst $30
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
    db $fd
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    nop
    rrca
    cp $7f
    rst $38
    ld hl, sp+$00
    nop
    nop
    add e
    rst $38
    cp a
    rst $38
    cp $00
    nop
    nop
    inc sp
    rst $38
    rst $08
    rst $38
    ei
    nop
    nop
    nop
    nop
    rst $38
    rst $20
    rst $28
    db $fd
    add b
    nop
    nop
    ld [$f9bf], sp
    rst $38
    cp $60
    nop
    nop
    ld [bc], a
    ld e, a
    db $fc
    db $fd
    rst $38
    cp b
    nop
    nop
    ld bc, $ff9f
    ld a, $ff
    db $fc
    nop
    nop
    nop
    ld c, a
    rst $38
    sbc a
    cp a
    or $00
    nop
    nop
    inc hl
    rst $38
    rst $08
    rst $18
    rst $38
    add b
    nop
    nop
    add hl, bc
    rst $38
    di
    rst $30
    cp $c0
    nop
    nop
    inc b
    rra
    db $fd
    ei
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ff2f
    ld a, [hl]
    rst $38
    call c, RST_00
    nop
    ld c, e
    rst $38
    sbc a
    cp a
    or $00
    nop
    nop
    ld h, $ff
    rst $30
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld [$fd1f], sp
    rst $38
    rst $38
    ld h, b
    nop
    nop
    inc bc
    cpl
    rst $38
    ld a, a
    rst $38
    call c, RST_00
    nop
    inc bc
    rst $38
    rst $18
    rst $38
    rst $30
    nop
    nop
    nop
    ld [hl-], a
    ld a, a
    rst $30
    rst $38
    cp $c0
    nop
    nop
    inc b
    rra
    cp $ff
    rst $38
    cp b
    nop
    nop
    ld bc, $ff83
    cp a
    rst $38
    or $00
    nop
    nop
    ld h, $ff
    rst $38
    rst $38
    db $fd
    add b
    nop
    nop
    inc c
    ccf
    db $fd
    rst $38
    rst $38
    jr nc, jr_025_6665

jr_025_6665:
    nop
    ld bc, $ff07
    cp a
    rst $38
    db $ec
    nop
    nop
    nop
    ld h, c
    rst $38
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    inc c
    rra
    db $fd
    rst $38
    rst $38
    or b
    nop
    nop
    ld bc, $ff13
    rst $38
    rst $38
    and $00
    nop
    nop
    inc h
    rst $38
    rst $30
    rst $38
    db $fc
    ret nz

    nop
    nop
    inc b
    rra
    rst $38
    rst $38
    rst $38
    sbc b
    nop
    nop
    nop
    add e
    rst $38
    rst $08
    rst $18
    di
    nop
    nop
    nop
    db $10
    ccf
    db $fd
    ei
    rst $38
    ld h, b
    nop
    nop
    nop
    rlca
    rst $38
    cp a
    ld a, a
    and $00
    nop
    nop
    jr nz, @+$01

    ei
    rst $30
    cp $c0
    nop
    nop
    nop
    dec bc
    rst $38
    ld a, a
    rst $38
    call z, RST_00
    nop
    ld b, c
    rst $38
    rst $38
    rst $38
    db $fd
    add b
    nop
    nop
    ld [$fe3f], sp
    rst $38
    rst $38
    sbc b
    nop
    nop
    nop
    add e
    rst $38
    rst $30
    rst $38
    db $fd
    add b
    nop
    nop
    nop
    rra
    rst $38
    ld a, a
    rst $38
    ret c

    nop
    nop
    nop
    ld bc, $f7ff
    rst $28
    db $fd
    add b
    nop
    nop
    nop
    rra
    cp $7f
    rst $38
    sbc b
    nop
    nop
    nop
    ld bc, $e7ff
    rst $28
    db $fd
    add b
    nop
    nop
    nop
    rra
    rst $38
    ld a, a
    rst $38
    sbc b
    nop
    nop
    nop
    inc bc
    rst $38
    rst $20
    rst $38
    db $fd
    add b
    nop
    nop
    ld [$fe3f], sp
    ld a, [hl]
    rst $38
    ret c

    nop
    nop
    nop
    ld bc, $f7ff
    rst $28
    db $fd
    ret nz

    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    rst $38
    db $ec
    nop
    nop
    nop
    ld bc, $fbff
    rst $30
    cp $e0
    nop
    nop
    ld [bc], a
    rra
    rst $38
    cp a
    ld a, a
    xor $00
    nop
    nop
    jr nz, @+$01

    db $fd
    di
    rst $38
    ld [hl], b
    nop
    nop
    nop
    rrca
    rst $38
    rst $18
    cp a
    rst $38
    nop
    nop
    nop
    nop
    ld l, a
    cp $fd
    rst $38
    cp b
    nop
    nop
    nop
    inc bc
    ld a, a
    rst $30
    rst $38
    db $fd
    ret nz

    nop
    nop
    nop
    dec de
    rst $38
    ccf
    rst $38
    db $ec
    nop
    nop
    nop
    ld bc, $fbff
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $28
    rst $38
    ei
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    ld a, a
    rst $38
    call c, RST_00
    nop
    ld bc, $f9ff
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $28
    rst $38
    rst $38
    add b
    nop
    nop
    ld [$ff7f], sp
    cp a
    rst $38
    xor $00
    nop
    nop
    nop
    rst $38
    cp $ff
    rst $38
    ld hl, sp+$00
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
    rrca
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
    ei
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld sp, $ffff
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    dec c
    rst $38
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
    rst $38
    ret z

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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $40
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
    ld bc, $ffff
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
    rst $38
    ldh [rP1], a
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    ret nz

    nop
    nop
    dec b
    rst $38
    rst $38
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
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    cp $7f
    rst $28
    rst $38
    db $fc
    nop
    nop
    ld bc, $ffff
    ret nz

    ld a, a
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    db $fc
    nop
    ld a, l
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    add b
    ld bc, $ffff
    rst $38
    add b
    nop
    ld bc, $f4ff
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    ld [bc], a
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld a, [$0000]
    ccf
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld h, b
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld h, b
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
    inc bc
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
    ldh a, [rP1]
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
    ret nz

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
    rrca
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    inc de
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
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $ff3f
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
    add b
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    ld e, a
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
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    db $f4
    nop
    nop
    nop
    ld bc, $ffff
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
    rst $38
    rst $38
    rst $38
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
    ret nz

    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $41
    or a
    and b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rlca
    sub d
    ld h, b
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    cp [hl]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    dec b
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    inc bc
    rst $38
    rst $38
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
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    add b
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    cp $80
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
    ldh a, [rP1]
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld bc, $feff
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
    ld h, b
    nop
    nop
    ld bc, $ffff
    rst $38
    cp $00
    nop
    nop
    ld bc, $40be
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld l, b
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    add sp, $00
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld [hl], e
    jr nz, jr_025_6b3e

jr_025_6b3e:
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
    dec l
    jr nz, jr_025_6b4b

jr_025_6b4b:
    rra
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
    cp $06
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    ldh [rP1], a
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
    db $ed
    add b
    nop
    ccf
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
    add b
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    cp $40
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
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
    ccf
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $fcff
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    ret nz

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
    rrca
    rst $38
    add b
    nop
    nop
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
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
    ld a, [$0000]
    nop
    ld b, $ff
    call z, Call_000_0300
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    ret c

    nop
    nop
    nop
    dec c
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
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, $00
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
    ld a, a
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_025_6c7d

jr_025_6c7d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
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
    dec e
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
    rra
    jr nz, jr_025_6d00

    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
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
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld l, a
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
    nop
    rra
    ld l, a
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
    inc b
    ld a, a
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    nop
    nop
    ld c, h
    nop
    nop
    ld bc, $0000
    ld b, b
    ccf
    ld hl, sp+$44
    ld [hl], b
    nop
    nop
    nop

jr_025_6d00:
    nop
    add hl, bc
    cp a
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
    inc bc
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld hl, sp+$60
    ld bc, $0077
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_025_78f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_025_793e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
