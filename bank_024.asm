;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    rra
    rlca
    ld a, a
    ld a, a
    ld [bc], a
    ld a, [hl]
    ld bc, $036f
    ret nz

    nop
    nop
    inc b
    nop
    nop
    ld b, $7f
    ret nz

    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    db $fc
    ld hl, sp+$44
    di
    ld hl, sp+$70
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ld h, b
    nop
    nop
    add hl, de
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    rra
    rst $38
    rst $38
    ret z

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
    rlca
    rst $38
    cp $00
    nop
    nop
    ld a, a

jr_024_4053:
    rst $38
    jr nz, jr_024_4056

jr_024_4056:
    nop
    rst $38
    rst $30
    nop
    nop
    rrca
    rst $38
    sbc b
    nop
    inc c
    rst $38
    db $fc
    ret nz

    nop
    daa
    rst $38
    db $fc
    nop
    inc b
    ld a, a
    rst $38
    add b
    nop
    rra
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    ld a, [c]
    nop
    inc bc
    rst $38
    db $fd
    add b
    nop
    rst $18
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ld hl, sp+$00
    rlca
    rst $28
    ld hl, sp+$00
    inc bc
    rst $28
    ld a, c
    add b
    inc bc
    rst $30
    cp h
    ret nz

    ld bc, $cefb
    nop
    nop
    db $fc
    rst $20
    nop
    nop
    ld a, [hl]
    ld [hl], e
    sub b
    nop
    ccf
    cp h
    and $00
    inc c
    adc $73
    add b
    add [hl]
    ld [hl], e
    sbc l
    ldh [rSB], a
    inc e
    rst $20
    ld [hl], c
    ld [$3107], sp
    sbc $c0
    ld bc, $77ce
    sub b
    add b
    ld [hl], e
    sbc h
    and $20
    inc e
    ld h, a
    cp c
    adc b
    inc bc
    sbc h
    xor $63
    nop
    rst $00
    dec sp
    call c, Call_000_30c0
    rst $28
    ld [hl], e
    jr jr_024_4053

    sbc h
    rst $28
    and $00
    inc de
    sbc l
    db $fc
    ld b, d
    ld [bc], a
    ld [hl], e
    cp a
    adc b
    ld b, b
    ld b, [hl]
    ld a, e
    pop af
    nop
    inc c
    rst $20
    ld a, a
    db $10
    add h
    sbc h

jr_024_40e6:
    rst $30
    ld [c], a
    nop
    ld h, c
    adc $fc
    ld h, c
    inc c
    add hl, sp
    rst $28
    add h
    ld hl, $9c93
    ldh [rP1], a
    jr @+$75

    sbc [hl]
    ld [$3f43], sp
    ld a, c
    call z, Call_024_6000
    rst $08
    add hl, sp
    add b
    inc c
    ld a, h
    rst $20
    jr nc, jr_024_4108

jr_024_4108:
    add a
    cp h
    and $00
    jr nc, @-$17

    cp h
    ret nz

jr_024_4110:
    ld b, $1c
    rst $20
    jr c, jr_024_4116

    add [hl]

jr_024_4116:
    add hl, sp

jr_024_4117:
    call z, Call_024_6100
    sbc h
    rst $20
    nop
    jr nc, jr_024_40e6

    add hl, sp
    ret nz

    inc e
    ld h, e
    inc e
    ret nz

    ld c, $31
    sbc h

jr_024_4128:
    ld h, d
    rlca
    ld sp, $71ce
    rlca
    add hl, sp

jr_024_412f:
    adc $63
    daa
    ld sp, $618c
    rra
    ld sp, $429c
    ld a, [hl-]
    ld h, e
    jr @-$3c

    inc a
    rst $20
    add hl, sp
    add h
    ld [hl], c
    adc [hl]
    ld [hl], e
    ld [$1c63], sp
    rst $20
    jr jr_024_4110

    ld sp, $61cc
    adc h
    ld h, a
    jr jr_024_4117

    ld sp, $738e
    inc e
    rst $20
    add hl, sp
    adc $73
    sbc h
    rst $20
    add hl, de
    add $33
    adc h
    ld h, a

jr_024_4160:
    jr jr_024_4128

    add hl, sp
    adc $63
    inc e
    rst $20
    jr c, jr_024_412f

    add hl, sp

jr_024_416a:
    adc $71
    adc $73
    sbc h
    ld h, c
    adc h
    ld [hl], e

jr_024_4172:
    sbc h
    ret nz

    inc bc
    dec sp
    call c, Call_000_23c0
    sbc a
    ld sp, hl
    adc h
    ld h, e
    sbc a
    di
    adc h
    inc bc
    sbc a
    and $00
    rlca
    ld a, c
    sbc h
    jp $e73c


    inc e
    inc b
    ld [hl], e
    adc h
    ld h, e
    jr jr_024_4160

    jr @-$3e

    inc hl
    inc e
    rst $28

jr_024_4196:
    ld hl, sp-$3a
    ld sp, $71ce
    adc h
    ld h, a
    inc e
    rst $20
    add hl, de
    sbc b
    rst $00
    jr c, jr_024_416a

    ld sp, $718e
    sbc h
    ld h, e
    jr jr_024_4172

    add hl, sp
    adc $63
    sbc b
    ld h, a
    add hl, sp
    adc $0c
    add $77
    ld [hl], b
    add e
    jr jr_024_4196

    and $20
    ld b, $3b
    cp b
    ret z

    nop
    adc $73
    ld h, b
    ld de, $cc89
    ret nz

    nop
    ld h, e
    add hl, sp
    ret nz

jr_024_41cb:
    nop
    add $7f
    jp nz, $9c33

    xor $38
    ld b, a
    add hl, sp
    add $31
    add hl, de
    sbc $f0
    inc bc
    add hl, de
    xor $31
    nop
    inc sp
    cp $23
    jr jr_024_41cb

    sbc h
    ld b, b
    nop
    ld a, c
    add $30
    adc h
    ld [hl], b
    add $20
    inc e
    rst $28
    ld [hl], e
    adc h
    ld [hl], a
    cp $e3
    inc e
    ld h, a
    rst $38
    db $e4
    nop
    rrca
    rst $38
    adc h
    ld h, d
    inc bc
    rst $30
    ld de, $6f8c
    rst $38
    rst $20
    ccf
    rst $38
    rst $38
    call c, $ffef
    rst $38
    ld [hl], e
    sbc h
    xor $08
    rst $00
    add hl, sp
    sbc h
    db $e3
    db $10
    inc b
    ld bc, $2004
    db $10
    adc b
    nop
    nop
    ld b, $10
    nop
    nop
    inc b
    nop
    nop
    ld bc, $e6b9
    ld [$3f43], sp
    sbc h
    adc l
    add a
    db $ec
    ld [hl], b
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld [bc], a
    ld de, $ff39
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
    adc $60
    inc bc
    ld a, a
    db $fd
    push bc
    rst $38
    adc $7f
    ldh [$03], a
    inc sp
    rst $38
    di
    rst $18
    ld a, a
    db $fd
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    jr c, @+$01

    rst $38
    ld a, [$9b11]
    rst $08
    rst $38
    add hl, hl
    rst $00
    ei
    add sp, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f09
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
    ldh a, [$cf]
    db $fd
    sub e
    db $fc
    ld b, b
    rst $00
    add b
    ld [hl], $18
    ret c

    ld a, h
    add $78
    add hl, bc
    rst $30
    call nz, Boot
    nop
    nop
    nop
    add b
    ld [$0906], sp
    ld [hl], $c8
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
    nop
    nop
    nop
    inc bc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    sbc $00
    stop
    ld [$0460], sp
    ei
    rst $38
    db $e3
    ccf
    rst $38
    rst $38
    ld [$fee6], sp
    nop
    nop
    inc bc
    db $fc
    nop
    ld bc, $c0ff
    nop
    ccf
    ld hl, sp+$00
    rlca
    cp $00
    nop
    ld a, a
    nop
    nop
    ld c, $00
    nop
    inc bc
    ret nz

    nop
    rra
    ldh [rP1], a
    rst $38
    cp $07
    rst $38
    db $fc
    ld bc, $faff
    rra
    rst $38
    ldh a, [$1f]
    rst $38
    nop
    rrca
    db $fc
    nop
    rst $38
    db $fc
    nop
    rst $38
    add b
    ld bc, $00fc
    inc bc
    cp $00
    nop
    ld a, [c]
    nop
    jr nz, jr_024_4300

jr_024_4300:
    nop
    nop
    ld a, [hl]
    jr nz, jr_024_4344

    rst $38
    rst $38
    cp $07
    cp $30
    nop
    ld [hl], c
    rst $00
    sbc a
    db $fc
    ld a, b
    pop hl
    pop bc
    add h
    inc a
    rlca
    rst $38
    rst $38
    db $fd
    and c
    jp RST_00


    nop
    db $e3
    add hl, sp
    rst $38
    rst $38
    rst $20
    adc [hl]
    ld sp, $0180
    db $e3
    adc [hl]
    ld [hl], c
    sbc a
    adc $43
    add e
    db $fc
    db $e3
    sbc b
    scf
    adc $39
    add b
    ld a, h
    db $e3
    jr jr_024_4340

    adc $31
    nop
    ei
    add $00
    rra

jr_024_4340:
    db $fc
    ret nz

    inc bc
    rst $38

jr_024_4344:
    ret c

    nop
    ld a, a
    ld sp, hl
    nop
    rrca
    cp $00
    rrca
    rst $38
    add b
    rlca
    db $fc
    ret nz

    inc hl
    cp $60
    rra
    cp $00
    rra
    cp $00
    rra
    cp $00
    rra
    db $fc
    nop
    ccf
    ld hl, sp+$06
    ld a, a
    or b
    rrca
    rst $38
    ld h, b
    rra
    db $fc
    ret nz

    ld a, a
    reti


    add b
    rst $30
    or c
    ret nz

    ld [hl], e
    add c
    pop af
    add hl, de
    db $e4
    ld [hl], b
    inc e
    ldh [$38], a
    adc $70
    ld a, $23
    inc e
    ld e, $01
    sbc [hl]
    rlca
    adc c
    add $07
    ret nz

    ld h, e
    add c
    ldh [$39], a
    ret nz

    ld hl, sp+$0c
    ldh [$7c], a
    ld b, $78
    ld e, $03
    sbc h
    rrca
    ld bc, $07ce
    ret nz

    ld [hl], e
    add c
    ldh a, [$3d]
    ldh [$78], a
    rrca
    ld a, b
    ld e, $03
    call c, $8007
    rst $38
    ld bc, $3de0
    ret nz

    ld hl, sp+$0f
    ld hl, sp+$1f
    ld bc, $07fe
    ret nz

    ld a, a
    add c
    ldh a, [$1f]
    ldh [$7c], a
    rlca
    ld hl, sp+$1f
    add b
    cp $03
    ldh a, [$1f]
    ret nz

    ld a, h
    rlca
    ld hl, sp+$1f
    add b
    cp $03
    ldh a, [$1f]
    ldh [$7e], a
    inc bc
    ld hl, sp+$0f
    ldh [$3f], a
    add b
    db $fc
    rlca
    ldh a, [$1f]
    ret nz

    ld a, a
    ld bc, $07fc
    ldh a, [$1f]
    ret nz

    ld a, a
    ld bc, $03fc
    ldh a, [$1f]
    ldh [$3f], a
    add b
    rst $38
    ld bc, $07fc
    ld hl, sp+$07
    ldh a, [$3f]
    ldh [$3f], a
    add c
    rst $38
    nop
    db $fc
    rlca
    cp $03
    ld hl, sp+$0f
    ld hl, sp+$07
    ldh a, [$1f]
    ld hl, sp+$0f
    ldh [$3f], a
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIF]
    ldh [$7f], a
    ld hl, sp+$0f
    ldh [$3f], a
    db $fc
    rlca
    ldh a, [$1f]
    rst $20
    ld bc, $0ff8
    rst $38
    ret nz

    ld a, a
    ld bc, $f0ff
    rra
    add b
    rst $38
    db $fc
    inc bc
    ldh a, [rIF]
    rst $38
    ret nz

    ld a, a
    ld bc, $f8ff
    rrca
    ldh [$3f], a
    rst $38
    add b
    db $fc
    inc bc
    rst $38
    db $fc
    inc bc
    ld hl, sp+$1f
    rst $38
    ldh [$1f], a
    add b
    rst $38
    rst $38
    nop
    cp $03
    rst $38
    cp $03
    ld hl, sp+$0f
    rst $38
    ldh [$1f], a
    ret nz

    ld a, a
    ldh a, [rP1]
    ld a, a
    inc bc
    rst $38
    pop hl
    ret nz

    ld a, a
    ld bc, $ffff
    ld bc, $03fc
    rst $38
    add a
    ld bc, $03fe
    rst $38
    add e
    ldh [$3f], a
    ret nz

    rrca
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    pop af
    ldh [$1f], a
    ret nz

    ccf
    ld hl, sp+$3f
    nop
    cp $01
    rst $38
    rst $38
    add b
    rst $38
    nop
    ld a, a
    pop bc
    ldh a, [$1f]
    ldh [rTAC], a
    ld hl, sp+$3f
    add b
    rst $38
    nop
    rst $38
    add a
    ldh a, [$1f]
    ldh [rIF], a
    ldh [$7f], a
    ldh [$1f], a
    ldh [rIF], a
    ld hl, sp+$7f
    ret nz

    ld a, a
    add b
    ld a, a
    pop bc
    cp $03
    db $fc
    ld bc, $07fe
    db $fc
    nop
    cp $01
    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    add b
    ccf
    ldh [$7f], a
    ret nz

    ccf
    add b
    ld a, a
    ldh [$7f], a
    rra
    add b
    ld a, a
    db $fc
    rra
    ret nz

    ccf
    ldh a, [rIF]
    ldh [rIF], a
    ldh a, [$1f]
    ret nz

    ldh a, [$1f]
    db $ec
    rlca
    ld hl, sp+$0f
    rst $38
    add b
    cp $01
    rst $38
    add b
    rst $38
    db $fc
    rlca
    ldh a, [rTAC]
    cp $01
    ldh a, [$3f]
    add b
    inc bc
    db $fc
    rra
    ldh a, [rTAC]
    rst $38
    ret nz

    ld a, $01
    rst $38
    nop
    ld a, a
    add a
    ld hl, sp+$07
    rst $38
    cp a
    ldh a, [rTAC]
    db $fc
    rrca
    ldh [$1f], a
    rst $38
    rlca
    ret nz

    rrca
    rst $38
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rIF]
    rst $38
    rst $00
    ldh a, [rIF]
    db $fc
    rlca
    ldh a, [rTAC]
    rst $38
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ldh [rIE], a
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ret nz

    rra
    ret nz

    rra
    ret nz

    ccf
    di
    rst $38
    ldh [$1f], a
    ret nz

    rrca
    ldh a, [rIF]
    rst $38
    ld h, c
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    add b
    rrca
    db $fc
    ccf
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    add e
    rst $38
    ldh a, [rIF]
    ldh [rTAC], a
    ld hl, sp+$01
    rst $38
    rlca
    rst $38
    ld hl, sp+$03
    ld hl, sp+$01
    db $fc
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    ld hl, sp+$1f
    ldh a, [$fc]
    inc bc
    rst $38
    nop
    cp $00
    ld a, a
    ldh [rIE], a
    add c
    cp $03
    rst $38
    nop
    ld a, a
    nop
    rra
    ldh [$3f], a
    ldh a, [$3f]
    ldh [$1f], a
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [$03]
    rst $38
    ld bc, $e1ff
    rst $38
    add b
    ld a, a
    ret nz

    rra
    ldh a, [$03]
    cp $00
    rst $38
    pop bc
    rst $38
    ret nz

    rra
    ldh a, [rTAC]
    db $fc
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    cp $00
    rst $38
    add b
    ccf
    ldh a, [rTAC]
    cp $01
    cp $01
    rst $38
    call z, $fe03
    nop
    rst $38
    ret nz

    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    rra
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$01
    cp $00
    ld a, a
    ldh [$3f], a
    rst $38
    ldh a, [rTAC]
    rst $38
    ld bc, $80ff
    rra
    ldh a, [$03]
    rst $38
    inc bc
    rst $38
    rst $38
    ret nz

    rrca
    db $fc
    ld bc, $00ff
    rra
    ldh a, [rIF]
    db $fc
    rlca
    rst $38
    rst $38
    ldh [$03], a
    cp $01
    rst $38
    add b
    rra
    ldh a, [$03]
    db $fc
    nop
    ld a, a
    rst $38
    cp $00
    ld a, a
    ldh [$1f], a
    ld hl, sp+$00
    rst $38
    nop
    rra
    ret nz

    rra
    rst $38
    rst $38
    ldh a, [rSB]
    rst $38
    nop
    ld a, a
    ret nz

    rlca
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp+$3f
    ldh [$03], a
    rst $38
    nop
    ld a, a
    add b
    rrca
    db $fc
    nop
    ld a, a
    rrca
    rst $38
    add e
    rst $38
    ldh a, [$03]
    rst $38
    ret nz

    ld a, a
    add b
    inc bc
    db $fc
    nop
    ccf
    rst $30
    rst $38
    rst $30
    rst $38
    db $fc
    nop
    ld a, a
    ret nz

    nop
    nop
    nop
    ld a, a
    nop
    sbc a
    rst $38
    rst $38
    add e
    rst $38
    rst $38
    ldh [$03], a
    cp $00
    jr c, jr_024_4627

jr_024_4627:
    rrca
    ld hl, sp+$01
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    ldh [rIF], a
    cp $00
    nop
    nop
    rrca
    db $fc
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rP1]
    cp b
    nop
    rst $38
    ldh [$7f], a
    rst $38
    rst $38
    db $fc
    rrca
    rst $38
    nop
    rra
    ldh a, [rTMA]
    ld hl, sp+$00
    ccf
    ret nz

    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    ccf
    ldh a, [rP1]
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld a, h
    nop
    nop
    nop
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    cp $e0
    nop
    rrca
    nop
    dec b
    ret nz

    nop
    ld e, $00
    rra
    rst $08
    rst $38
    rst $38
    rst $28
    cp $00
    ccf
    add b
    rrca
    ldh [rSB], a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    inc b
    db $fc
    nop
    ld a, a
    ldh [$7f], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc de
    sub b
    rrca
    ld a, a
    jp $f8f1


    db $fd
    cp a
    db $fc
    nop
    rlca
    ld hl, sp+$00
    ld a, h
    nop
    ccf
    nop
    nop
    nop
    nop
    ld a, h
    nop
    rra
    nop
    ld bc, $00f8
    ld bc, $0000
    ld [hl-], a
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    rst $38
    rlca
    rst $18
    ret nz

    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$3f
    ret nz

    rra
    cp $0f
    rst $38
    ld hl, sp-$04
    ld a, [hl]
    rrca
    rst $00
    add a
    db $fc
    nop
    inc a
    nop
    rlca
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld bc, $3ff0
    di
    ld a, $00
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    rst $38
    db $fc
    adc [hl]
    set 0, c
    ldh a, [rSB]
    rst $38
    rst $00
    rst $38
    ret nz

    inc bc
    cp $00
    ccf
    add b
    nop
    ld h, b
    ld a, a
    rst $38
    rlca
    rst $08
    ret nz

    ld bc, $00cc
    add hl, de
    sub b
    rlca
    jr nz, jr_024_4715

jr_024_4715:
    ld [$0000], sp
    nop
    ld bc, $00b0
    ld c, $80
    inc bc
    cp b
    ld [hl], c
    ld [hl], a
    ld a, a
    dec c
    ld a, a
    ld a, a
    ld [bc], a
    ld l, [hl]
    ld bc, $006e
    ld bc, $1722
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    or b
    nop
    ld bc, $ffff
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
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    db $fd
    db $fc
    sbc a
    rst $38
    ret nz

    dec de
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    rra
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    rlca
    cp $7f
    rst $38
    adc b
    nop
    nop
    inc a
    ld a, a
    rst $38
    call c, RST_00
    ld a, a
    ccf
    rst $38
    call z, Call_000_0300
    db $fc
    rst $38
    rst $38
    stop
    rrca
    db $e3
    cp l
    db $fc
    ret nz

    nop
    ccf
    adc h
    rst $38
    db $e3
    nop
    rrca
    db $fc
    ld h, a
    cp a
    stop
    ld a, a
    rst $00
    ld [hl], e
    ldh a, [rP1]
    rlca
    db $fc
    rst $20
    ld a, $00
    nop
    ld a, a
    adc $73
    ldh [rP1], a
    rlca
    db $fc
    xor $7c
    nop
    nop
    rst $38
    cp l
    add $00
    inc bc
    ccf
    rst $28
    ld sp, $0000
    rst $08
    ei
    call z, VBlankInterrupt
    ld [hl], e
    rst $38
    ld [c], a
    nop
    nop
    dec e
    rst $38
    pop af
    nop
    nop
    sbc [hl]
    rst $38
    ld hl, sp-$80
    nop
    ld h, a
    rst $38
    db $fc
    ld b, b
    nop
    scf
    rst $38
    sbc $20
    nop
    dec sp
    rst $38
    xor $20
    nop
    dec sp
    rst $38
    rst $20
    stop
    dec sp
    rst $38
    rst $30
    stop
    rra
    rst $38
    cp $20
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    ld l, a
    rst $38
    cp b
    add b
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ld [c], a
    nop
    nop
    rst $38
    db $fd
    call nz, Boot
    rst $38
    rst $30
    sbc b
    add b
    inc bc
    rst $38
    rst $28
    jr nc, jr_024_4812

    rlca
    rst $38
    sbc h
    call nz, Call_000_1f21
    rst $38
    ld a, c
    adc b
    add a
    sbc a
    db $fc
    and $23
    inc de
    rst $38

jr_024_4812:
    ei
    adc b
    inc b
    inc e
    rst $38
    xor $22
    ld de, $ff99
    cp b
    add b
    ld b, [hl]
    rst $38
    db $fc
    and $23
    inc de
    cp a
    di
    sbc b
    adc h
    ld c, [hl]
    rst $30
    call c, Call_000_23c4
    dec sp
    cp $62
    ld bc, $ff0d
    di
    db $10
    ld [$ffcf], sp
    sbc b
    add b
    ld b, [hl]
    ld a, a
    db $fd
    call z, Call_000_3302
    rst $38
    adc $60
    ld hl, $fc3f
    add $00
    ld sp, $ccff
    ld b, b
    ld bc, $fd3f
    call z, $2300
    rst $38
    cp c
    add b
    nop
    ld a, a
    cp $60
    nop
    rra
    rst $38
    sbc b
    nop
    rlca
    rst $38
    call z, Call_000_0340
    rst $38
    xor $00
    ld bc, $cefd
    ld b, b
    ld bc, $dcfb
    add b
    nop
    rst $30
    ei
    add b
    nop
    rst $28
    ld [hl], a
    nop
    inc bc
    sbc $fe
    ld b, b
    rlca
    cp c
    db $fc
    add b
    ld c, $77
    cp c
    nop
    inc e
    rst $28
    and $00
    dec sp
    sbc l
    call z, $e700
    ld a, e
    db $10
    ld bc, $eede
    nop
    rlca
    dec sp
    ld hl, sp-$80
    ld c, $ff
    ld a, [c]
    nop
    dec sp
    rst $38
    ret z

    nop
    ld c, a
    ld a, a
    ldh a, [rSB]
    dec e
    rst $38
    ret nz

    inc b
    rst $20
    rst $30
    nop
    inc sp
    cp a
    sbc b
    nop
    sbc h
    xor $e0
    ld b, $77
    di
    nop
    inc de
    cp a
    ret c

    nop
    sbc h
    xor $c0
    nop
    rst $28
    db $76

jr_024_48bd:
    ld bc, $7706
    jr nc, jr_024_48ca

    ld h, e
    cp e
    adc b
    rst $00
    dec sp
    sbc b
    adc [hl]
    ld [hl], e

jr_024_48ca:
    cp c
    adc b
    and $33
    sbc b
    adc h
    and $73
    add hl, de
    sbc h
    add $63

jr_024_48d6:
    inc sp
    sbc b
    call z, Call_024_6366
    add hl, sp
    sbc h
    call z, $2366
    inc sp
    sbc b

jr_024_48e2:
    call z, $e7e6
    inc sp
    add hl, de
    cp b
    call nz, Call_024_66c7
    ld sp, $c931
    adc [hl]
    ld c, h
    ld [hl], d
    ld h, e
    sub e
    inc c
    jr jr_024_48d6

    jp Jump_000_388e


    jr nc, @-$1b

    adc a
    adc [hl]
    jr c, jr_024_48e2

    db $e3
    adc [hl]
    add hl, sp
    sbc b
    jp $ee9c


    ld sp, $33e7
    adc h
    ld [hl], e
    sbc h
    add $38
    add $71
    adc [hl]
    ld [hl], c
    sbc b
    ld h, a
    jr @-$3a

    ld sp, $73ce
    inc c
    rst $20
    inc e
    add $73
    adc [hl]
    inc sp
    sbc b
    jp $ec08


    pop hl
    adc h
    cp $10
    add $7f
    inc c
    ld h, c
    sbc a
    add $18
    adc $e6
    nop
    ld [hl], a
    pop af
    add b
    add hl, de
    db $fc
    ld [c], a
    ld b, $7f
    jr nc, jr_024_48bd

    sbc a
    adc h
    ld h, b
    ld h, e

jr_024_4940:
    rst $20
    ld e, $18
    db $fd
    jp Jump_000_3f8e


    ldh a, [$e3]
    adc a
    db $fc
    jr nc, jr_024_4940

    rst $38
    inc c
    ld b, h
    ei
    ldh [$03], a
    ld a, $f3
    ld bc, $bc1f
    ldh [$03], a
    rst $00
    db $fc
    nop
    ld bc, $c6e7
    nop
    jr c, @-$31

jr_024_4963:
    call z, $3346
    ccf
    sub b
    ld [$f9ff], sp
    add b
    dec sp
    rst $38
    ret nz

    ld d, $ff
    ldh a, [rSC]
    ccf
    ld hl, sp+$00
    ccf
    cp $00
    ld bc, $00f7

jr_024_497c:
    ld [bc], a
    ld a, e
    ret nz

    ld bc, $f21e
    nop
    rst $08
    cp l
    add b
    daa
    adc $67
    rst $38
    rst $38
    cp e
    cp [hl]
    db $fc
    call z, $bfef
    ld [hl], e

Call_024_4992:
    scf
    rst $38
    cp c
    sbc c
    cp c
    ret nz

    ld b, b
    rlca

Call_024_499a:
    ret c

    jr jr_024_4963

    ld [hl], a
    ld b, $31
    sbc c
    pop af
    adc h
    ld a, [hl]
    nop
    nop
    ld a, e
    add b
    nop
    ld de, $80e1
    inc c
    ld [hl], h
    ld [hl], c
    add e
    ld [$601c], sp
    db $e3

jr_024_49b4:
    add a
    add hl, de
    sbc l
    db $e3
    add $26
    jr nc, jr_024_497c

    inc bc
    ld a, $38
    ld hl, $de8c
    ld [$7363], sp
    add h
    ld sp, $e3fb
    sbc b
    adc $f8
    rst $28
    rst $20
    jr jr_024_49dc

    ld sp, hl
    add $03
    ccf
    ei
    db $dd
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_024_49dc:
    rst $38
    rst $38
    cp a
    adc $ec
    ret nz

    ld hl, $0300
    jr nc, jr_024_49b4

    cp h
    call nz, Call_000_2242
    nop
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc b
    nop
    nop
    rst $00
    rst $18
    call c, $efff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    cp $fe
    ld b, b
    add b
    scf
    dec a
    call z, $8741
    ld h, a
    di
    rst $30
    sbc a
    rst $38
    or $60
    nop
    nop
    nop
    ld b, b
    nop
    add b
    jp z, VBlankInterrupt

    jr nz, jr_024_4a31

jr_024_4a31:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_024_4a38:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_024_4a4a:
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
    db $fd
    db $ec
    nop
    jr nz, @+$03

    cp $6f
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ld a, [c]
    ld bc, $00c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    adc c
    sbc a
    cp $fc
    nop
    nop
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
    db $fc
    add hl, sp
    add b
    ld hl, sp+$00
    ld h, $68
    inc b
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
    and b
    jr nz, jr_024_4a38

    rst $38
    ldh [$79], a
    sub b
    nop
    inc bc
    rst $38

jr_024_4ab0:
    rst $38
    rst $38
    ldh [$1f], a
    or b
    ld bc, $0010
    daa
    add b
    nop
    nop
    nop
    inc b
    jr nz, jr_024_4ac0

jr_024_4ac0:
    nop
    nop
    and $01
    sbc a
    rst $38
    rst $38
    rst $38
    jr nc, jr_024_4a4a

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
    rst $38
    cp $00
    ld b, $07
    nop
    nop
    nop
    nop
    ld l, a
    add b
    nop
    nop
    inc de
    ld a, [$6737]
    rst $38
    rst $38
    rst $38
    jp nc, $ffff

    rst $38
    adc c
    or a
    ld a, a
    rla
    add b
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ei
    ld b, h
    nop
    adc b
    inc e
    nop
    nop
    nop
    rst $38
    rst $38
    ld sp, hl
    or $00
    nop
    jr jr_024_4b12

    rst $38
    rst $38
    ld b, b
    nop
    jr jr_024_4ab0

    rst $38

jr_024_4b12:
    ld hl, sp+$00
    nop
    ret nz

    rra
    rst $38
    jp c, Jump_024_6f00

    inc sp
    ei
    db $fc
    nop
    rra
    sbc c
    ld a, l
    rst $18
    jr nz, jr_024_4b34

    call nz, Call_024_777f
    add b
    rlca
    and $3f
    ld a, c
    ret nz

    rla
    and $9f
    ld a, b
    add b
    ccf

jr_024_4b34:
    ret


    cp [hl]
    ldh [rP1], a
    ld a, a
    ld [hl-], a
    ei
    add b
    inc bc
    ld sp, hl
    sbc a
    call c, $1f00
    ld a, [hl-]
    db $ed
    add b
    dec bc
    di
    call z, Call_000_01b0
    ld a, $7d
    sbc d
    nop
    rlca
    rst $28
    cp e
    ld b, b
    nop
    rst $38
    rst $30
    ldh [rP1], a
    rra
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    cp $00
    ld bc, $ffff
    add b
    nop
    ccf
    rst $38
    ldh a, [rP1]
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
    ldh a, [rP1]
    rlca
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ret nz

    nop
    ccf
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    cp $00
    ld bc, $ffff
    ret nz

    nop
    ccf
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    cp $00
    ld bc, $ffff
    ret nz

    nop
    ccf
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
    rrca
    rst $38
    cp $00
    ld bc, $ffff
    ret nz

    nop
    rra
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    or b
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38

jr_024_4bdd:
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    cp $00
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    ld a, a
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
    add b
    nop
    rrca
    rst $38
    cp $00
    nop
    rrca
    rst $38
    ei
    ldh [rP1], a
    inc bc
    db $fc
    ccf
    rst $38
    jr nc, jr_024_4bdd

    jr jr_024_4c1f

    rst $38
    ld sp, hl
    rst $30

jr_024_4c1f:
    adc [hl]
    ld a, b
    nop
    nop
    scf
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
    nop
    ld a, a
    cp a
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
    call nz, RST_00
    ld h, b
    nop
    nop
    nop
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
    ldh a, [rP1]
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
    ccf
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
    rst $38
    rst $38
    ldh a, [rP1]
    nop

jr_024_4c70:
    nop
    ld bc, $ffff
    rst $38
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
    rst $38
    ret nz

    nop
    nop
    nop
    ld b, $00
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    rra
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    ccf
    cp $00
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
    ld bc, $ff7f
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
    pop af
    ld h, b
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    ei
    jr nz, jr_024_4c70

    nop
    dec de
    ld e, a
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
    rlca
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld b, $1f
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
    ldh a, [rP1]
    nop
    nop
    nop
    add b
    rlca
    ld a, a
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
    nop
    nop
    rrca
    rlca
    add a
    jp $8301


    ld b, e
    rst $20
    jp $c0e1


    pop af
    ldh a, [$f8]
    ld a, h
    ld a, b
    jr nz, jr_024_4d84

    db $eb
    db $fc
    rra
    inc c
    jr jr_024_4d67

    cpl
    rlca
    add a
    jp $e0c3


jr_024_4d5f:
    ld hl, sp+$01
    ldh [$e0], a
    ld hl, sp-$08
    jr nc, jr_024_4d5f

jr_024_4d67:
    ld l, h
    ccf
    cp b
    inc c
    ld a, [hl]
    rra
    ld e, $07
    rst $20
    rst $20
    inc bc
    ld a, $0f
    sbc a
    rst $00
    pop hl
    call nz, $8001
    dec sp
    cp [hl]
    ld a, a
    db $fc
    ldh [rP1], a
    nop
    ld sp, $ef81

jr_024_4d84:
    rst $38
    di
    ret z

    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    rst $38
    rst $38
    cp $00
    ld bc, $e0ff
    ld a, a
    rst $38
    ldh [rP1], a
    ld a, a
    db $fc
    rlca
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    ret nz

    nop
    ccf
    ldh a, [rTAC]
    rst $38
    rst $38
    add b
    nop
    rst $38
    nop
    ccf
    cp $1c
    nop
    rlca
    cp $01
    rst $38
    cp $f0
    nop
    ld a, a
    ret nz

    ccf
    cp $03
    ldh a, [rP1]
    ld a, a
    add c
    rst $38
    db $fc
    rra
    ldh [rP1], a
    rst $38
    add b
    ccf
    cp $64
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    inc bc
    rst $38
    add b
    rrca
    db $fc
    ld bc, $f3ff
    ldh [rP1], a
    rst $38
    ret nz

    rra
    rst $38
    ccf
    ret nz

    rlca
    cp $01
    rst $38
    ldh [$7f], a
    ret nz

    rlca
    cp $00
    rst $38
    ldh a, [$3f]
    add b
    rrca
    db $fc
    inc bc
    rst $38
    jp Jump_000_01f0


    rst $38
    nop
    ccf
    ldh a, [$1f]
    ld hl, sp+$01
    rst $38
    nop
    rst $38
    ldh a, [$7f]
    ldh [rTAC], a
    cp $01
    rst $38
    add b
    rst $38
    nop
    ccf
    ldh a, [rIF]
    db $fc
    rrca
    cp $00
    ld a, a
    ret nz

    rra
    ld hl, sp+$1f
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh a, [$7f]
    ldh [rTAC], a
    cp $01
    rst $38
    ld bc, $e0ff
    rra
    ld hl, sp+$03
    db $fc
    inc bc
    rst $38
    add b
    ccf
    ldh a, [rIF]
    ld hl, sp+$0f
    rst $38
    nop
    ld a, a
    ret nz

    rra
    ldh a, [$1f]
    cp $00
    rst $38
    ret nz

    rra
    ldh [$3f], a
    cp $01
    rst $38
    add b
    ccf
    ret nz

    ccf
    db $fc
    ld bc, $80ff
    ld a, a
    ret nz

    ld a, a
    db $fc
    ld bc, $80ff
    ld a, a
    add b
    ld a, a
    ld hl, sp+$01
    cp $00
    ld a, a
    add b
    rst $38
    db $fc
    ld bc, $00ff
    ld a, a
    add b
    rst $38
    db $fc
    ld bc, $00ff
    ld a, a
    add b
    ld a, a
    cp $00
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    cp $00
    rst $38
    ret nz

    rra
    ldh [$3f], a
    rst $38
    add b
    ccf
    ldh [rIF], a
    ldh a, [rIF]
    rst $38
    ret nz

    rra
    ldh a, [rTAC]
    ld hl, sp+$07
    rst $38
    ldh [rIF], a
    ld hl, sp+$03
    cp $01
    rst $38
    ldh a, [rTAC]
    cp $01
    rst $38
    nop
    rst $38
    db $fc
    ld bc, $00ff
    ld a, a
    ret nz

    ccf
    cp $00
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$03
    rst $38
    ldh [rIF], a
    db $fc
    ld bc, $00ff
    rst $38
    db $fc
    inc bc
    rst $38
    add b
    ld a, a
    ret nz

    rra
    rst $38
    nop
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    ldh [$1f], a
    ld hl, sp+$03
    cp $01
    rst $38
    ldh a, [$03]
    rst $38
    nop
    rst $38
    add b
    ccf
    cp $00
    rst $38
    ret nz

    rra
    ldh a, [rTAC]
    rst $38
    ret nz

    rra
    ld hl, sp+$03
    cp $00
    rst $38
    ld hl, sp+$03
    rst $38
    nop
    ccf
    ret nz

    rra
    rst $38
    nop
    ld a, a
    ldh [rTAC], a
    ld hl, sp+$01
    rst $38
    ldh [rIF], a
    db $fc
    nop
    rst $38
    nop
    ccf
    cp $00
    rst $38
    add b
    rrca
    ldh a, [rTAC]
    rst $38
    add b
    rra
    ldh a, [rSB]
    cp $00
    ld a, a
    ld hl, sp+$01
    rst $38
    nop
    ccf
    ldh a, [rIF]
    rst $38
    nop
    rra
    ldh a, [$03]
    rst $38
    nop
    rst $38
    ldh a, [rSB]
    rst $38
    add b
    ccf
    ldh a, [rIF]
    rst $38
    nop
    rra
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    ldh [rSB], a
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    cp $00
    rra
    db $fc
    inc bc
    cp $00
    rst $38
    ret nz

    inc bc
    rst $38
    add b
    rra
    ldh [$1f], a
    db $fc
    nop
    ccf
    ld hl, sp+$01
    db $fc
    ld bc, $80ff
    inc bc
    rst $38
    add b
    rra
    ret nz

    ccf
    ldh a, [rP1]
    ld a, a
    ldh a, [rSB]
    ld hl, sp+$07
    rst $38
    nop
    rlca
    rst $38
    add b
    ld e, $01
    rst $38
    ldh [rP1], a
    ld a, a
    db $fc
    nop
    nop
    ccf
    cp $00
    rlca
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    ldh [rP1], a
    rra
    rst $38
    add b
    nop
    ccf
    rst $38
    nop
    nop
    rst $38
    cp $00
    ld bc, $f0ff
    nop
    rlca
    rst $38
    db $fc
    nop
    rra
    rst $38
    ret nz

    nop
    ccf
    rst $38
    ldh [rSB], a
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    cp $00
    ccf
    rst $38
    nop
    nop
    rrca
    rst $38
    ldh a, [rTAC]
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    db $fd
    add b
    nop
    inc bc
    rst $38
    db $fc
    ld l, a
    db $fd
    add sp, $00
    nop
    rra
    rst $38
    rst $20
    rst $38
    rst $20
    ld hl, $0080
    rst $38
    add b
    dec c
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
    db $e4
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
    inc bc
    rst $38
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
    ldh a, [rP1]
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
    inc bc
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
    add b
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
    rra
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld [$ffff], sp
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
    rra
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
    rst $38
    db $fc
    jr nc, jr_024_508c

jr_024_508c:
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld d, $ff
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
    rst $38
    nop
    nop
    nop
    add hl, bc
    add d
    daa
    rst $38
    rst $38
    rst $38
    cp $c8
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
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    inc b
    add b
    ld bc, $2569
    or l
    xor a
    ei
    ld h, h
    db $e4
    add hl, bc
    inc h
    add h
    or a
    add l
    jp hl


    or c
    or e
    ld l, h
    or d
    ret


    ld l, b
    ld [bc], a
    or c
    ld sp, hl
    rst $38
    ld sp, hl
    rrca
    rst $38
    ld h, h
    cp l
    inc [hl]
    dec l
    db $eb
    ld l, c
    db $76
    sub [hl]
    db $db
    ld l, l
    or h
    db $db
    ld l, c
    inc h
    sub d
    jp c, $b65b

    call c, Call_024_499a
    dec h
    xor l
    or d
    ld c, b
    ld e, e
    ld c, c
    or [hl]
    db $db
    ld l, l
    sub d
    jp nc, $994d

    inc h
    sub e
    inc h
    or [hl]
    sub [hl]
    ret


    dec h
    and h
    sub e
    ld c, l
    ld h, $da
    ld c, e
    call nz, Call_024_4992
    or [hl]
    inc h
    sbc d
    ld [hl], e
    ld l, h
    and [hl]
    sub e
    ld h, d
    ld l, l
    or [hl]
    ld c, c
    ld h, $79
    sbc e
    ld l, l
    or [hl]
    sbc d
    ld a, [c]
    ld e, c
    or b
    rst $00
    ld [hl], e
    ld c, l
    or [hl]
    call z, Call_024_6d23
    sbc d
    ld c, l
    or [hl]
    db $db
    ld h, c
    call $96ad
    rst $38
    ld a, [c]
    ld c, c
    jr nz, jr_024_514c

jr_024_514c:
    db $10
    ld h, [hl]
    db $db
    rst $38
    db $fd
    or h
    ld b, b
    nop
    sub e
    ld h, a
    db $ed
    rst $38
    sub d
    ld b, b
    nop
    nop
    nop
    db $db
    rst $28
    cp [hl]
    ret c

    nop
    nop
    ld h, $ef
    cp a
    cp $00
    nop
    nop
    ld h, l
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
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld e, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $18
    rst $38
    or b
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ld sp, hl
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    call c, $ff7f
    ret nz

    nop
    rra
    rst $38
    ei
    rlca
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    cp $20
    ccf
    rst $38
    add b
    nop
    ccf
    rst $38
    ldh [rSB], a
    rst $38
    ld hl, sp+$00
    ld bc, $fcff
    nop
    rrca
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    add b
    nop
    ccf
    rst $38
    add b
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    cp $00
    inc bc
    rst $38
    cp $00
    nop
    rst $38
    db $fc
    nop
    rlca
    rst $38
    db $fc
    nop
    nop
    rst $38
    db $fc
    nop
    rlca
    rst $38
    db $fc
    nop
    nop
    ld a, a
    cp $00
    inc bc
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    rra
    rst $38
    ldh a, [rP1]
    ld bc, $fcff
    nop
    nop
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    add b
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    ld bc, $feff
    nop
    ld bc, $ffff
    ldh a, [rP1]
    ld bc, $ffff
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    add b
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ret nz

    nop
    rlca
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    cp $00
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    cp $00
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    cp $00
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    cp $00
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    rra
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
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
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rrca
    ld hl, sp+$00
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld a, a
    jr nz, jr_024_5394

jr_024_5394:
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, b
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
    ld bc, $ffff
    rst $38
    rst $38
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
    cp $00
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
    rra
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
    rst $38
    rst $38
    cp a
    rlca
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ret z

    nop
    nop
    nop
    rst $38
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
    cp a
    cp $00
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
    nop
    ld bc, $ffff
    ldh a, [rP1]
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
    ld bc, $ffff
    rst $38
    rst $38
    ret nz

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
    ld [bc], a
    ld a, a
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
    rst $38
    ld sp, hl
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    jr nz, jr_024_5458

jr_024_5458:
    nop
    add hl, bc
    db $e3
    cp $ff
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    ld b, b
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    ld bc, $ffff
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
    nop
    ld b, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $7f
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    db $10
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    adc c
    rst $38
    ld a, a
    inc de
    ld a, a
    ld a, a
    ld [bc], a
    sbc [hl]
    ld bc, $036f
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    add sp, $00
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    inc de
    ld hl, sp+$00
    nop
    nop
    add b
    nop
    nop
    nop
    rra
    rst $38
    db $fc
    daa
    rst $38
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ldh [rP1], a
    ccf
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    ldh [rP1], a
    rra
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    cp $00
    nop
    inc bc
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    add b
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
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
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
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
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rrca
    rst $38
    cp $00
    nop
    rrca
    rst $38
    db $fc
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    cp $00
    nop
    rra
    rst $38
    db $fc
    nop
    ld bc, $ffff
    ldh [rP1], a
    ld bc, $ffff
    ret nz

    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
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
    ccf
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
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
    ccf
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ret nz

    nop
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
    rra
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ldh [rP1], a
    ld bc, $ffff
    add b
    nop
    rrca
    rst $38
    cp $00
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    add b
    nop
    rra
    rst $38
    cp $00
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    add b
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
    ccf
    rst $38
    db $fc
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ldh [rP1], a
    rlca
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
    rrca
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    add b
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
    rra
    rst $38
    cp $00
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ldh [rP1], a
    ld bc, $ffff
    ret nz

    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ld b, b
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
    rlca
    rst $38
    rst $38
    nop
    nop
    rra
    rst $38
    db $fc
    nop
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
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ld bc, $ffff
    add b
    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    inc bc
    rst $38
    cp $00
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    add b
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    cp $00
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    cp $00
    nop
    rlca
    rst $38
    cp $00
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ld b, b
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    db $fd
    nop
    nop
    rrca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    add b
    nop
    ld bc, $ffff
    add b
    nop
    rlca
    rst $38
    cp $00
    nop
    rlca
    rst $38
    cp $00
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    add b
    nop
    ld bc, $ffff
    add b
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    cp $00
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    cp $00
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    add sp, $00
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    and b
    nop
    ld bc, $ffff
    ret nz

    nop
    rlca
    rst $38
    cp $80
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    db $fd
    nop
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
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ret nc

    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ldh [rP1], a
    rrca
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    rra
    rst $38
    cp $00
    nop
    rra
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ffff
    ret nz

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
    rra
    rst $38
    rst $38
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
    nop
    rra
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    ret nz

    nop
    nop
    rst $38
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    rra
    rst $38
    db $fc
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ccf
    rst $38
    db $fc
    nop
    ld bc, $ffff
    add b
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ret z

    nop
    nop
    rra
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    ret nz

    nop
    ld bc, $ffff
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
    ldh [rP1], a
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
    rst $38
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
    ldh a, [rP1]
    nop
    ccf
    rst $38
    rst $38
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
    cp $00
    nop
    nop
    nop
    nop
    dec bc
    nop
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
    ld bc, $ff4f
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
    ldh [rP1], a
    nop
    nop
    nop
    ld h, $ff
    rst $38
    rst $18
    ccf
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $d8
    ld d, b
    nop
    dec a
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
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rNR41], a
    nop
    nop
    nop
    pop af
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld a, $40
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
    ld a, a
    pop af
    db $fd
    rst $28
    db $fc
    ret c

    nop
    nop
    inc c
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
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $c3f1


    add e
    ld hl, sp-$01
    cp a
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $20
    cp $00
    adc b
    ld h, b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc de
    db $fc
    nop
    nop
    ld h, b
    ld bc, $0000
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    cpl
    rst $38
    pop af
    ldh [$60], a
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
    and $6e
    ld a, l
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ret nc

    nop
    ld [bc], a
    nop
    rlca
    rst $08
    rst $20
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
    ld hl, sp-$07
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $07a0
    rst $38
    rst $38
    rst $38
    or $00
    dec de
    cp $00
    dec l
    ccf
    jp $feff


    inc a
    adc $71
    ld hl, sp+$61
    db $fc
    ccf
    add c
    db $fc
    ld a, a
    ld a, h
    ccf
    db $fd
    ei
    rst $38
    ld [c], a
    rrca
    nop
    db $fc
    inc e
    dec de
    cp $0f
    ldh a, [$78]
    inc a
    ld a, [hl]
    rra
    rra
    jr jr_024_5c54

    inc a
    ld c, $03
    pop hl
    jp $e0e1


    nop
    rra
    rst $38
    rlca
    rst $00
    ld bc, $ff3f
    ldh a, [rP1]
    nop
    ld a, $20
    nop
    db $10
    jr jr_024_5bee

jr_024_5bee:
    nop
    nop
    nop
    ld [hl], b
    ld a, b
    inc a
    jr jr_024_5c06

    inc b
    cp $08
    inc bc
    adc a
    pop hl
    add b
    ld a, [hl]
    pop af
    adc a
    rst $38
    nop
    nop
    add c
    rst $30
    rst $30

jr_024_5c06:
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $c3bf
    rst $38
    rst $38
    db $e3
    rst $38
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ld hl, sp+$01
    rst $38
    add b
    rra
    rst $38
    ldh [rP1], a
    rst $38
    ldh a, [rSB]
    cp $00
    ccf
    rst $38
    db $fc
    nop
    rrca
    cp $00
    ccf
    ldh [$03], a
    rst $38
    rst $38
    nop
    rlca
    rst $38
    nop
    ld a, a
    ldh [$03], a
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    ldh a, [rIF]
    cp $00
    ld a, a
    rst $38
    ld hl, sp+$00
    ccf
    ld hl, sp+$07
    db $fc
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

jr_024_5c54:
    inc bc
    rst $38
    nop
    ld a, a
    ldh [rTAC], a
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    add b
    rra
    ldh a, [$03]
    rst $38
    rra
    rst $38
    add b
    rlca
    ld hl, sp+$00
    rst $38
    nop
    ccf
    rst $38
    rst $38
    ldh [rSB], a
    cp $00
    ld a, a
    add b
    rra
    ldh a, [$3f]
    cp $00
    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
    rrca
    rst $38
    nop
    rra
    ldh a, [rTAC]
    db $fc
    ld bc, $03ff
    rst $38
    ld hl, sp+$01
    rst $38
    nop
    ld a, a
    ret nz

    rrca
    ldh a, [$7f]
    db $fc
    nop
    rst $38
    add b
    ccf
    ldh [$1f], a
    ld hl, sp+$1f
    rst $38
    ret nz

    rra
    ld hl, sp+$0f
    cp $03
    rst $38
    add a
    rst $38
    ldh a, [rTAC]
    db $fc
    inc bc
    cp $00
    rst $38
    ld bc, $feff
    ld bc, $80ff
    rst $38
    ret nz

    ccf
    nop
    ld a, a
    rst $38
    add b
    ld a, a
    ldh [$3f], a
    ldh [rIF], a
    ldh [rIF], a
    rst $38
    ldh [rIF], a
    ld hl, sp+$0f
    ldh a, [rSB]
    ld hl, sp+$07
    rst $38
    ldh a, [rTAC]
    db $fc
    rlca
    db $fc
    ld bc, $01fc
    rst $38
    cp $01
    rst $38
    ld bc, $00fe
    ld a, a
    nop
    rst $38
    cp $01
    cp $01
    cp $00
    ld a, [hl]
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    ld a, a
    nop
    rra
    ret nz

    ccf
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    rra
    ret nz

    ccf
    rst $38
    add b
    ld a, a
    add b
    ccf
    add b
    rrca
    ldh [$3f], a
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh [$3f], a
    rst $38
    ret nz

    ccf
    add b
    ccf
    ret nz

    rra
    ldh [$3f], a
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rrca
    ret nz

    ccf
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    rra
    ret nz

    ccf
    rst $38
    ret nz

    ld a, a
    add b
    ccf
    add b
    rra
    ret nz

    rst $38
    rst $38
    add b
    rst $38
    nop
    ld a, a
    add b
    ccf
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld bc, $feff
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $07fc
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [$03]
    ld hl, sp+$1f
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [rTAC], a
    ldh [$1f], a
    rst $38
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    rst $38
    nop
    cp $01
    cp $00
    cp $01
    rst $38
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rrca
    rst $38
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$3f], a
    rst $38
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    cp $01
    rst $38
    cp $01
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    rst $38
    db $fc
    rlca
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh [$1f], a
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    rst $38
    rst $38
    ret nz

    ld a, a
    nop
    ld a, a
    add b
    cp $03
    rst $38
    cp $01
    db $fc
    inc bc
    db $fc
    rlca
    ldh a, [$1f]
    rst $38
    ld hl, sp+$0f
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$3f], a
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    add b
    rst $38
    ld bc, $feff
    ld bc, $01fc
    db $fc
    rlca
    db $fc
    rrca
    rst $38
    ld hl, sp+$0f
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$3f], a
    rst $38
    ret nz

    ccf
    add b
    ccf
    add b
    rst $38
    ld bc, $ffff
    ld bc, $00fe
    cp $03
    db $fc
    rlca
    rst $38
    ld hl, sp+$0f
    ldh a, [rTAC]
    ldh a, [$1f]
    ldh [$7f], a
    rst $38
    ret nz

    ccf
    add b
    ccf
    add b
    rst $38
    ld bc, $ffff
    ld bc, $01fe
    cp $03
    db $fc
    rrca
    rst $38
    ldh a, [rIF]
    ldh [rIF], a
    ldh [$3f], a
    ret nz

    rst $38
    sbc a
    ret nz

    ld a, a
    add b
    ccf
    add c
    rst $38
    ld bc, $fcff
    inc bc
    db $fc
    inc bc
    ld hl, sp+$1f
    ldh a, [$1f]
    rst $38
    ldh [$3f], a
    ret nz

    rra
    ret nz

    ld a, a
    add b
    rst $38
    cp $01
    cp $00
    cp $03
    cp $07
    rst $38
    ldh a, [$1f]
    ldh [rIF], a
    ldh [$3f], a
    ldh [$3f], a
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    inc bc
    rst $38
    ldh a, [rIF]
    ldh [rTAC], a
    ldh [rIF], a
    ldh a, [$3f]
    rst $38
    ld bc, $00ff
    cp $00
    rst $38
    inc bc
    rst $38
    ldh a, [$1f]
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [$3f]
    cp $01
    cp $00
    cp $00
    rst $38
    inc bc
    rst $38
    ldh [$1f], a
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [$3f]
    cp $01
    db $fc
    nop
    db $fc
    ld bc, $07fe
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ldh [rIF], a
    ld hl, sp+$3f
    cp $01
    rst $38
    nop
    cp $00
    cp $07
    rst $38
    ldh a, [$1f]
    ldh a, [rIF]
    ldh [rIF], a
    ldh a, [$3f]
    cp $01
    cp $01
    db $fc
    nop
    cp $0f
    rst $38
    ldh [$3f], a
    ldh [$1f], a
    ret nz

    rra
    ldh [rIE], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $07
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    add b
    rra
    pop bc
    rst $38
    ld hl, sp+$0f
    db $fc
    rlca
    ldh a, [rTAC]
    ld hl, sp+$3f
    rst $38
    ld bc, $00ff
    cp $00
    ld a, a
    add a
    rst $38
    ldh [$1f], a
    ldh a, [$1f]
    ldh [rIF], a
    ld hl, sp+$1f
    db $fc
    inc bc
    cp $01
    db $fc
    nop
    cp $0f
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    ldh [$1f], a
    ldh a, [$1f]
    ldh [rTAC], a
    ld hl, sp+$0f
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $07ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    ccf
    ret nz

    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIE]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    cpl
    db $fc
    inc bc
    cp $01
    cp $00
    rst $38
    inc bc
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIE]
    ldh a, [rIF]
    ld hl, sp+$0f
    ldh a, [$03]
    ld hl, sp+$7f
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld bc, $1ffe
    cp $01
    rst $38
    ld bc, $00fe
    ld a, a
    adc a
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    jp $c0ff


    ccf
    ldh [$3f], a
    ret nz

    rrca
    pop hl
    rst $38
    ldh [$1f], a
    ldh a, [$1f]
    ldh [rTAC], a
    ld hl, sp-$01
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [$03]
    db $fc
    ccf
    db $fc
    inc bc
    cp $03
    db $fc
    nop
    cp $0f
    cp $00
    rst $38
    nop
    cp $00
    ld a, a
    rlca
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    nop
    ccf
    add c
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    add b
    rra
    ret nz

    rst $38
    ret nz

    rra
    ldh [$1f], a
    ret nz

    rrca
    ldh [$7f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh [rTAC], a
    ldh a, [$7f]
    ld hl, sp+$07
    db $fc
    rlca
    ldh a, [$03]
    ld hl, sp+$1f
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$01
    db $fc
    rrca
    cp $01
    cp $01
    cp $00
    cp $07
    cp $01
    rst $38
    nop
    cp $00
    ld a, a
    inc bc
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    nop
    ccf
    add e
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    add b
    rra
    pop bc
    rst $38
    ret nz

    ccf
    ldh [$3f], a
    ret nz

    rrca
    pop hl
    rst $38
    ldh [$1f], a
    ldh a, [$1f]
    ldh [rTAC], a
    ldh a, [$7f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ldh a, [$03]
    ld hl, sp+$3f
    ldh a, [rTAC]
    db $fc
    rlca
    ld hl, sp+$01
    db $fc
    rra
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    nop
    cp $0f
    db $fc
    inc bc
    cp $03
    cp $00
    cp $0f
    db $fc
    ld bc, $01ff
    cp $00
    rst $38
    rrca
    cp $01
    rst $38
    add b
    rst $38
    nop
    ld a, a
    add a
    rst $38
    nop
    rst $38
    add b
    rst $38

Call_024_6000:
    add b
    ccf
    jp $00ff


    ld a, a
    ret nz

    ld a, a
    add b
    rra
    pop hl
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rra
    rst $20
    rst $38
    add b
    ld a, a
    ldh [$3f], a
    ret nz

    rra
    di
    rst $38
    add b
    ld a, a
    ldh [$3f], a
    ldh [rIF], a
    di
    rst $38
    ret nz

    ccf
    ldh a, [$1f]
    ldh [rIF], a
    rst $38
    rst $38
    ret nz

    rra
    ldh a, [$1f]
    ldh a, [rTAC]
    rst $38
    rst $38
    ldh [$1f], a
    ld hl, sp+$1f
    ldh a, [rTAC]
    ld sp, hl
    rst $38
    ret nz

    rra
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    ld a, a
    ret nz

    rrca
    ld hl, sp+$1f
    db $fc
    inc bc
    rst $38
    rst $38
    ret nz

    rra
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    rst $38
    ret nz

    rra
    ldh a, [$1f]
    ldh a, [rTAC]
    db $fd
    rst $38
    ret nz

    rrca
    ld hl, sp+$1f
    ld hl, sp+$07
    rst $38
    rst $38
    ret nz

    rra
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    rst $38
    ret nz

    rra
    ldh a, [$1f]
    ldh a, [rTAC]
    rst $38
    rst $38
    add b
    rra
    ldh a, [$3f]
    ld hl, sp+$07
    rst $38
    rst $38
    add b
    rra
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    rst $38
    add b
    rra
    ldh a, [$3f]
    ld hl, sp+$07
    rst $38
    rst $38
    add b
    rra
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    cp a
    add b
    rrca
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    ccf
    add b
    rrca
    ldh a, [$3f]
    ld hl, sp+$07
    rst $38
    rst $38
    nop
    rra
    ldh [$3f], a
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rra
    ldh [$7f], a
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rra
    ldh [$7f], a
    ldh a, [rIF]
    rst $38
    ld a, a
    nop
    rra
    ldh [$7f], a
    ldh a, [$1f]
    rst $38
    ld a, [hl]
    nop
    ccf
    ret nz

    ld a, a
    ldh a, [$1f]
    rst $38
    ld a, a
    nop
    ccf
    ldh [$7f], a
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    ldh a, [$1f]
    rst $38
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    ldh a, [$1f]
    rst $38
    ld a, [hl]
    nop
    rra
    ldh [$7f], a
    ldh a, [$1f]
    rst $38
    rst $38
    nop
    rra
    ldh [$3f], a
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    ccf
    ldh [$7f], a
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    ccf
    ldh [$3f], a

Call_024_6100:
    ld hl, sp+$0f
    rst $38
    rst $38
    nop
    rra
    ldh [$3f], a
    ld hl, sp+$0f
    rst $38
    ccf
    nop
    rra
    ldh [$3f], a
    ld hl, sp+$0f
    rst $38
    cp a
    add b
    rrca
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    sbc a
    add b
    rra
    ldh a, [$1f]
    ld hl, sp+$07
    rst $38
    rst $38
    add b
    rrca
    ldh a, [$1f]
    db $fc
    rlca
    rst $38
    rst $38
    ret nz

    rrca
    ld hl, sp+$1f
    db $fc
    rlca
    rst $38
    rst $08
    ret nz

    rlca
    ld hl, sp+$0f
    db $fc
    inc bc
    rst $38
    rst $38
    ret nz

    rrca
    ld hl, sp+$0f
    cp $03
    rst $38
    rst $38
    ret nz

    rlca
    ld hl, sp+$0f
    cp $03
    rst $38
    rst $38
    ret nz

    rlca
    ld hl, sp+$0f
    cp $03
    rst $38
    rst $38
    ldh [$03], a
    db $fc
    rrca
    cp $01
    rst $38
    rst $38
    ldh [$03], a
    db $fc
    rlca
    rst $38
    ld bc, $ffff
    ldh [$03], a
    db $fc
    rlca
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rSB]
    cp $07
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rSB]
    cp $03
    rst $38
    add b
    rst $38
    rst $38
    ld hl, sp+$00
    rst $38
    ld bc, $c0ff
    ld a, a
    rst $38
    ld hl, sp+$00
    ld a, a
    ld bc, $c0ff
    ld a, a
    rst $38
    db $fc
    nop
    ld a, a
    add c
    rst $38
    ldh [$3f], a
    rst $38
    db $fc
    nop
    ld a, a
    add b
    rst $38
    ldh [$1f], a
    rst $38
    cp $00
    rra
    ret nz

    ld a, e
    ldh a, [$1f]
    rst $38
    rst $38
    nop
    rra
    ldh [$33], a
    ld hl, sp+$0f
    rst $38
    rst $38
    nop
    rrca
    ldh [rNR13], a
    ld hl, sp+$0f
    rst $38
    rst $38
    add b
    rlca
    ldh a, [$08]
    db $fc
    rlca
    rst $38
    rst $38
    ret nz

    rlca
    ld hl, sp+$0e
    db $fc
    inc bc
    rst $38
    rst $38
    ret nz

    inc bc
    db $fc
    inc bc
    cp $03
    rst $38
    rst $38
    ldh [$03], a
    db $fc
    ld b, $7f
    ld bc, $ffff
    ldh a, [rSB]
    cp $03
    ccf
    add b
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    ld bc, $80bf
    rst $38
    rst $38
    ld hl, sp+$00
    rst $38
    ld bc, $809f
    ld a, a
    rst $38
    db $fc
    nop
    ld a, a
    add b
    rlca
    ldh [$3f], a
    rst $38
    db $fc
    nop
    ccf
    ret nz

    ld h, a
    ldh [$1f], a
    rst $38
    cp $00
    rra
    ldh [rTAC], a
    ldh a, [rIF]
    rst $38
    rst $38
    add b
    rrca
    ldh a, [rSB]
    ld hl, sp+$07
    rst $38
    rst $38
    add b
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    rst $38
    ldh [$03], a
    db $fc
    ld bc, $00ff
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rrca
    ret nz

    ccf
    rst $38
    db $fc
    nop
    ccf
    ret nz

    rlca
    ldh [$1f], a
    rst $38
    cp $00
    rra
    ldh [$3f], a
    ld hl, sp+$0f
    rst $38
    rst $38
    add b
    rlca
    ld hl, sp+$00
    ld a, [hl]
    inc bc
    rst $38
    rst $38
    ldh [$03], a
    db $fc
    nop
    ccf
    ld bc, $ffff
    ldh a, [rP1]
    rst $38
    nop
    rra
    add b
    ld a, a
    rst $38
    db $fc
    nop
    ccf
    ret nz

    inc bc
    ldh [$1f], a
    rst $38
    rst $38
    nop
    rra
    ldh [rP1], a
    ld hl, sp+$07
    rst $38
    rst $38
    ret nz

    inc bc
    db $fc
    nop
    ccf
    ld bc, $ffff
    ldh a, [rP1]
    rst $38
    nop
    rrca
    ret nz

    ld a, a
    db $fc
    cp $00
    rra
    ret nz

    inc bc
    ldh a, [$1f]
    rst $38
    rst $38
    add b
    rlca
    ld hl, sp+$00
    ld a, [hl]
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rra
    ret nz

    ld a, a
    rst $38
    cp $00
    rra
    ldh [$03], a
    ldh a, [rIF]
    rst $38
    rst $38
    add b
    rlca
    ld hl, sp+$00
    cp $03
    rst $38
    rst $30
    ldh a, [rP1]
    rst $38
    nop
    rra
    ret nz

    ld a, a
    db $fd
    cp $00
    rra
    ret nz

    rlca
    ldh a, [$1f]
    rst $38
    rst $38
    add b
    rlca
    ld hl, sp+$00
    cp $03
    rst $38
    rst $20
    ldh a, [rP1]
    rst $38
    nop
    rra
    ret nz

    ccf
    rst $38
    cp $00
    rra
    ldh [$03], a
    ld hl, sp+$07
    rst $38
    rst $38
    ldh [rSB], a
    cp $00
    ld a, a
    add b
    rst $38
    rst $38
    db $fc
    nop
    ccf
    ret nz

    rrca
    ldh a, [$1f]
    rst $38
    rst $38
    ret nz

    rlca
    db $fc
    nop
    cp $01
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, a
    add b
    rrca
    ldh [$3f], a
    rst $38
    rst $38
    add b
    rrca
    ld hl, sp+$01
    db $fc
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rra
    ret nz

    ld a, a
    rst $38
    ld a, a
    add b
    rlca
    ldh a, [rSB]
    db $fc
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, a
    nop
    rrca
    ret nz

    ccf
    cp $7f
    add b
    rlca
    ld hl, sp+$01
    db $fc
    inc bc
    rst $38
    rst $20
    ld hl, sp+$00
    ld a, a
    add b
    rrca
    ret nz

    rra
    rst $38
    rst $38
    add b
    rlca
    ld hl, sp+$00
    cp $03
    rst $38
    rst $30
    ld hl, sp+$00
    ld a, a
    add b
    rrca
    ldh [$1f], a
    rst $38
    ccf
    ret nz

    inc bc
    db $fc
    nop
    ld a, a
    ld bc, $ffff
    cp $00
    rra
    ldh [$03], a
    ld hl, sp+$07
    rst $38
    rst $38
    ldh a, [rSB]
    rst $38
    nop
    ccf
    ret nz

    rra
    rst $38
    rst $38
    add b
    rrca
    ld hl, sp+$01
    cp $00
    ld a, a
    rst $38
    db $fc
    nop
    ld a, a
    ret nz

    rrca
    ldh a, [rSB]
    rst $38
    rst $38
    ldh [rSB], a
    cp $00
    ccf
    ret nz

    rlca
    rst $38
    rst $38
    add b
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rra
    rst $38

Call_024_6366:
    cp $00
    rra
    ldh [rTAC], a
    db $fc
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, a
    add b
    rra
    ldh [$03], a
    rst $38
    rst $38
    ldh [rSB], a
    rst $38
    nop
    ccf
    ret nz

    rrca
    rst $38
    rst $38
    add b
    rlca
    db $fc
    nop
    rst $38
    nop
    ld a, a
    rst $38
    cp $00
    rra
    ldh a, [rSB]
    db $fc
    nop
    rst $38
    rst $38
    db $fc
    nop
    ccf
    ldh [rTAC], a
    ldh a, [rSB]
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, a
    ret nz

    rrca
    ldh [$03], a
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    nop
    rra
    ret nz

    rlca
    rst $38
    rst $38
    ret nz

    ld bc, $00fe
    ccf
    ret nz

    rrca
    rst $38
    rst $38
    add b
    inc bc
    cp $00
    ld a, a
    add b
    rra
    rst $38
    rst $38
    add b
    rlca
    db $fc
    nop
    ld a, a
    nop
    rrca
    rst $38
    rst $38
    nop
    rlca
    db $fc
    nop
    cp $00
    ccf
    rst $38
    rst $38
    nop
    rrca
    ld hl, sp+$00
    cp $00
    ccf
    rst $38
    cp $00
    rrca
    ld hl, sp+$00
    cp $00
    ccf
    rst $38
    cp $00
    rra
    ldh a, [rSB]
    db $fc
    nop
    ld a, a
    rst $38
    db $fc
    nop
    rra
    ldh a, [rSB]
    db $fc
    nop
    ld a, a
    rst $38
    db $fc
    nop
    rra
    ldh a, [rSB]
    db $fc
    nop
    rst $38
    rst $38
    db $fc
    nop
    rrca
    ldh a, [rSB]
    db $fc
    nop
    ld a, a
    rst $38
    cp $00
    rrca
    ldh a, [rP1]
    db $fc
    nop
    ld a, a
    rst $38
    cp $00
    rrca
    ld hl, sp+$00
    db $fc
    nop
    ld a, a
    rst $38
    rst $38
    nop
    rlca
    db $fc
    nop
    ccf
    nop
    rra
    rst $38
    rst $38
    nop
    inc bc
    cp $00
    rra
    add b
    rra
    rst $38
    rst $38
    add b
    inc bc
    cp $00
    rra
    add b
    rrca
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    nop
    rrca
    ret nz

    rrca
    rst $38
    rst $38
    add b
    ld bc, $00ff
    rrca
    ret nz

    rlca
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    nop
    rlca
    ret nz

    rlca
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    add b
    rlca
    ldh [$03], a
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ret nz

    inc bc
    ldh a, [$03]
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    ldh [$03], a
    db $fc
    add b
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    ldh a, [rP1]
    ld hl, sp+$60
    ld a, a
    rst $38
    cp $00
    rrca
    ld hl, sp+$00
    ld a, a
    db $10
    rra
    rst $38
    rst $38
    nop
    rlca
    db $fc
    nop
    ccf
    adc b
    rrca
    rst $38
    rst $38
    add b
    ld bc, $00ff
    rrca
    add [hl]
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ret nz

    rlca
    di
    add c
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    ldh [rSB], a
    cp $c0
    ld a, a
    rst $38
    db $fc
    nop
    rrca
    ld hl, sp+$00
    rst $38
    jr nc, jr_024_64e8

    rst $38
    rst $38
    nop
    inc bc
    cp $00
    ccf
    db $fc
    rlca
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    add b
    rrca
    di
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    ldh [rSB], a
    db $fc
    ld b, b
    ld a, a
    rst $38
    cp $00
    rlca
    cp $00
    ld a, a
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    add b
    rrca
    ret nz

    nop
    rst $38
    rst $38
    db $fc
    nop
    rra
    ldh a, [rSB]
    ld hl, sp+$00
    ccf
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    nop
    ccf

jr_024_64e8:
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    ld hl, sp+$03
    ldh a, [rP1]
    ld a, a
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    add b
    ld a, [hl]
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    ldh a, [rTAC]
    ldh [rP1], a
    rst $38
    rst $38
    cp $00
    rlca
    db $fc
    nop
    cp $00
    rra
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    ret nz

    rrca
    ret nz

    ld bc, $ffff
    db $fc
    nop
    rrca
    ld hl, sp+$00
    db $fc
    nop
    rra
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    add b
    rrca
    add b
    inc bc
    rst $38
    rst $38
    cp $00
    rrca
    db $fc
    nop
    db $fc
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    ret nz

    rrca
    ret nz

    inc bc
    rst $38
    rst $38
    cp $00
    rrca
    ld hl, sp+$00
    ld hl, sp+$00
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    ldh [rTAC], a
    ret nz

    ld bc, $ffff
    rst $38
    nop
    rlca
    db $fc
    nop
    ld a, h
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    ret nz

    rlca
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    nop
    rlca
    db $fc
    nop
    ld a, h
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    ldh [rTAC], a
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    nop
    rlca
    cp $00
    ld a, $00
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    ldh [$03], a
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    nop
    rlca
    cp $00
    ccf
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    ldh a, [rSB]
    ldh a, [rP1]
    ld a, a
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    nop
    rra
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    rra
    ld hl, sp+$00
    ldh a, [rP1]
    ccf
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    add b
    rlca
    ret nz

    ld bc, $ffff
    cp $00
    rrca
    db $fc
    nop
    ld a, h
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ret nz

    rlca
    ret nz

    ld bc, $ffff
    rst $38
    nop
    rlca
    db $fc
    nop
    ld a, $00
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    ldh a, [rSB]
    ldh a, [rP1]
    ld a, a
    rst $38
    rst $38
    ret nz

    ld bc, $00ff
    rrca
    add b
    inc bc
    rst $38
    rst $38
    cp $00
    rlca
    db $fc
    nop
    ld a, b
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    ldh a, [rP1]
    ret nz

    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    add b
    ld c, $00
    inc bc
    rst $38
    rst $38
    cp $00
    rlca
    db $fc
    nop
    ld a, b
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    ldh a, [rSB]
    ldh [rP1], a
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    ret nz

    rlca
    add b
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    nop
    ld a, $00
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    ld hl, sp+$00
    ret nz

    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    add b
    rrca
    nop
    ld bc, $ffff
    cp $00
    inc bc
    cp $00
    jr c, jr_024_664b

jr_024_664b:
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    ld hl, sp+$00
    ldh [rP1], a
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    ld a, a
    call z, $8007
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    nop
    jr c, jr_024_6668

jr_024_6668:
    rrca
    rst $38
    rst $38
    db $fc
    nop
    rrca
    db $fc
    nop
    ldh [rP1], a
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ldh [rTAC], a
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $a0ff
    ld e, $00
    rrca
    rst $38
    rst $38
    db $fc
    nop
    rlca
    db $fc
    nop
    jr nc, jr_024_668f

jr_024_668f:
    rra
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ldh [rTMA], a
    nop
    ld bc, $ffff
    rst $38
    nop
    ld bc, $00ff
    ld [$0f00], sp
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    db $fc
    nop
    ret nz

    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    ldh [rTAC], a
    add b
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    ldh [$3c], a
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    db $fc
    nop

Call_024_66c7:
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    nop
    rlca
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    nop
    ld h, b
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ld hl, sp+$00
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $80ff
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    rlca
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    ldh a, [rP1]
    nop
    rla
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    add b
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    cp $00
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    ret nz

    nop
    ccf
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld a, a
    db $ec
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $00fc
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    rrca
    ldh [rP1], a
    ld bc, $ffff
    rst $38
    add b
    nop
    rlca
    rst $38
    pop hl
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    ldh a, [$1f]
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    rrca
    ldh a, [rTAC]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $00f8
    ld a, a
    rrca
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
    rra
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
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
    ldh a, [rP1]
    nop
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    ld bc, $ffff
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
    ret nz

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
    ccf
    rrca
    ret nz

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
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    or b
    ret nz

    ccf
    add a
    jp $e0ff


    jr c, jr_024_681f

jr_024_681f:
    nop
    nop
    nop
    ld hl, sp+$60
    ld sp, hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_024_6d23:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_024_6f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_024_777f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
