;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    rst $30
    dec c
    ld a, a
    ld a, a
    ld [bc], a
    ld a, a
    ld bc, $006f
    ld c, c
    sbc e
    ret z

    add h
    nop
    xor [hl]
    inc [hl]
    db $ec
    sub c
    ld h, $08
    adc l
    inc de
    inc l
    sbc [hl]
    sub l
    ld c, e
    sbc a
    ld [hl], l
    ld [hl-], a
    dec d
    ld l, e
    ld e, [hl]
    adc d
    ld b, h
    ld b, h
    ld [hl], d
    xor [hl]
    jp hl


    or h
    push de
    ld c, d
    add l
    ld [hl], l
    ld d, l
    ld [hl-], a
    xor c
    ld h, $aa
    db $eb
    ld h, $da
    xor c
    ld [hl], c
    inc sp
    ld a, [hl+]
    db $ed
    sub l
    ld e, c
    sub l
    ld e, l
    ld a, [hl+]
    adc c
    ld l, l
    ld d, a
    ld c, h
    or d
    ld c, [hl]
    ld h, a
    ld h, h
    sbc e
    cp h
    jp z, Jump_038_5555

    xor b
    xor c
    dec [hl]
    ld d, a
    dec d
    ld d, h
    sbc e
    ld h, h
    sub l
    ld a, [hl+]
    xor d
    db $db
    ld e, h
    jp nc, Jump_038_649e

    bit 2, l
    ld a, [hl+]
    ld a, [c]
    ld l, c
    ld d, d
    ld d, h
    ld d, l
    dec de
    or d
    ld a, d
    db $dd
    sbc e
    ld d, d
    xor c
    ld l, h
    xor h
    ret


    inc [hl]
    xor l
    ld d, l
    ld h, [hl]
    xor d
    xor d
    ld d, d
    ld d, h
    and [hl]
    ld c, l
    and h
    cp d
    ld d, d
    ld d, h
    xor d
    ld e, c
    xor d
    sub d
    ld c, h
    xor e
    dec l
    push bc
    ld c, e
    ld [hl], $5c
    sbc c
    and h
    push bc
    ld [hl+], a
    db $d3
    ld l, c
    inc l
    inc [hl]
    ld e, e
    ld l, c
    ld [hl], $97
    ld c, l
    dec h
    ld l, d
    ld c, c
    ld l, l
    sub d
    ld l, b
    sub l
    db $db
    dec l
    ld l, $b4
    db $db
    dec hl
    ld d, e
    ld e, c
    inc l
    xor c
    or l
    db $76
    jp c, $362a

    or [hl]
    xor e
    ld d, l
    dec l
    bit 1, c
    dec hl
    or $ca
    xor e
    ld a, d
    xor l
    ld [hl], $d2
    ld c, l
    ld d, l
    ld [hl-], a
    ld h, h
    ld c, c
    ld d, [hl]
    ld c, d
    db $d3
    ld h, $d9
    xor d
    ld d, e
    ld l, e
    inc h
    sub [hl]
    ld c, e
    inc [hl]
    db $d3
    ld h, e
    or a
    ld [hl+], a
    ld e, c
    ld c, l
    sbc l
    or [hl]
    jp c, $b4e8

    sub h
    xor e
    or h
    sub $02
    dec a
    ld de, $e5f1
    sbc e
    ld hl, $6c1a
    ld h, l
    dec de
    ldh a, [$d8]
    add [hl]
    rst $20
    sub d
    ld a, a
    ld a, a
    nop
    cp [hl]
    add b
    dec l
    rst $38
    and h
    add b
    nop
    rlca
    sub e
    ccf
    jr @+$01

    ei
    ret nz

    nop
    nop
    ld e, a
    rst $38
    ld hl, sp+$30
    ld b, b
    nop
    rlca
    rst $38
    db $fc
    nop
    ld [$0100], sp
    rst $38
    rst $38
    nop
    add hl, de
    nop
    nop
    ld a, a
    rst $38
    ldh [$03], a
    add b
    nop
    inc bc
    rst $38
    cp $00
    ld a, $00
    nop
    ld a, a
    rst $38
    ldh [$1f], a
    add b
    nop
    rlca
    rst $38
    cp $00
    cp [hl]
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rNR22]
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    add b
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$0f
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    nop
    rrca
    rst $38
    rst $38
    dec c
    ld a, h
    nop
    nop
    ccf
    rst $38
    cp $07
    ldh a, [rP1]
    ld bc, $ffff
    ld hl, sp+$0f
    ret nz

    nop
    rrca
    db $fd
    rst $38
    ldh [$1f], a
    add b
    nop
    ccf
    di
    rst $38
    add b
    ld a, [hl]
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    db $fc
    nop
    nop
    ld a, a
    rst $38
    db $fc
    rlca
    ldh a, [rDIV]
    nop
    ccf
    rst $38
    rst $38
    nop
    db $fc
    nop
    nop
    ld a, a
    rst $38
    cp $03
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    rst $38
    add c
    ld hl, sp+$00
    nop
    ccf
    rst $38
    db $fd
    ld b, b
    ld hl, sp+$00
    nop
    rra
    rst $38
    cp $07
    db $fc
    ld [bc], a
    nop
    dec b
    cp $3f
    cp $0f
    ret nz

    nop
    inc bc
    rst $38
    rra
    ldh [rIF], a
    ldh [rP1], a
    nop
    ld a, a
    rst $30
    ld hl, sp+$01
    ld hl, sp+$00
    nop
    rrca
    di
    rst $38
    nop
    ld a, [hl]
    nop
    nop
    rlca
    cp $3f
    ret nz

    ld a, a
    add b
    stop
    rst $38
    rst $38
    ld hl, sp+$7f
    ret nz

    jr jr_038_41bf

jr_038_41bf:
    rrca
    rst $38
    rst $38
    ldh [$1f], a
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    ldh [$e3], a
    ld hl, sp+$00
    nop
    ccf
    push af
    cp $00
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    inc bc
    rst $38
    ret nz

    nop
    nop
    ld a, a
    db $fc
    rra
    or a
    rst $38
    ret nz

    nop
    rlca
    rst $38
    rra
    add e
    rst $38
    ldh [rP1], a
    nop
    rst $38
    ldh a, [$f8]
    rra
    rst $38
    ld c, $00
    rlca
    rst $38
    add e
    db $fc
    rlca
    ld hl, sp+$00
    nop
    ccf
    ldh a, [$fe]
    rrca
    rst $38
    ret nz

    nop
    rlca
    rst $38
    add e
    ldh a, [$1f]
    ld hl, sp+$1c
    nop
    rra
    rst $38
    rra
    inc bc
    rst $38
    ldh [$c0], a
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    add b
    nop
    rlca
    rst $38
    db $ec
    ld sp, hl
    rst $38
    db $fc
    nop
    nop
    rra
    cp $1f
    ret nz

    rst $38
    ret nz

    nop
    nop
    rst $38
    db $fc
    ccf
    rrca
    rst $38
    ldh [rP1], a
    ld bc, $f0ff
    ccf
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    ret nz

    ld a, a
    ld c, a
    cp $00
    nop
    rrca
    rst $38
    ld bc, $bfff
    db $fc
    nop
    nop
    rrca
    rst $38
    ld bc, $1ffc
    ldh a, [rP1]
    nop
    ccf
    rst $38
    inc bc
    ld hl, sp+$3f
    ld hl, sp+$06
    nop
    rra
    cp $03
    cp $1f
    ld hl, sp+$00
    nop
    rra
    rst $38
    ld bc, $3ffc
    ld hl, sp+$03
    nop
    rrca
    rst $38
    add c
    rst $38
    rrca
    db $fc
    nop
    nop
    rlca
    rst $38
    ret nz

    ld a, a
    add e
    cp $00
    nop
    inc bc
    rst $38
    ldh [$3f], a
    pop hl
    rst $38
    add b
    nop
    nop
    rst $38
    ldh a, [$1f]
    ldh a, [rIE]
    ret nz

    nop
    nop
    ld a, a
    db $fc
    inc bc
    db $fc
    ccf
    ldh [rP1], a
    nop
    rra
    rst $38
    ld bc, $1ffe
    db $fc
    nop
    nop
    rlca
    rst $38
    ret nz

    ld a, a
    jp $00ff


    nop
    nop
    rst $38
    ldh a, [$1f]
    ldh a, [$7f]
    ret nz

    nop
    nop
    ccf
    cp $03
    cp $1f
    ldh a, [rP1]
    ret nz

    rrca
    rst $38
    ret nz

    ld a, a
    add e
    cp $00
    nop
    nop
    ld a, a
    ld hl, sp+$0f
    ld hl, sp-$01
    ret nz

    ld [bc], a
    nop
    rra
    db $fc
    inc bc
    cp $0f
    ld hl, sp+$00
    ret nz

    inc bc
    rst $38
    ldh [$3f], a
    ld sp, hl
    rst $38
    nop
    nop
    nop
    ld a, a
    ld hl, sp+$0f
    db $fc
    ccf
    ret nz

    ld bc, $0780
    rst $38
    add b
    rst $38
    adc a
    db $fc
    nop
    jr nc, jr_038_42e5

jr_038_42e5:
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$7f
    ret nz

    nop
    nop
    rlca
    rst $38
    add b
    rst $38
    rlca
    db $fc
    nop
    nop
    nop
    rst $38
    ld hl, sp+$3f
    ldh a, [rIE]
    ret nz

    nop
    nop
    rrca
    db $fc
    rrca
    rst $38
    sbc a
    ldh a, [rP1]
    nop
    nop
    ccf
    ldh a, [$3f]
    ld hl, sp-$01
    ret nz

    ld [bc], a
    nop
    rlca
    rst $38
    add b
    rst $38
    rrca
    db $fc
    nop
    nop
    nop
    rra
    db $fc
    rrca
    ld hl, sp+$3f
    ld hl, sp+$00
    nop
    ld bc, $e0ff
    rst $38
    rst $10
    cp $00
    nop
    nop
    rrca
    db $fc
    rst $00
    ld hl, sp+$3f
    db $fc
    inc bc
    nop
    nop
    rst $38
    add $ff
    add a
    db $fc
    inc e
    nop
    nop
    rlca
    cp $0f
    ld hl, sp+$3f
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $20
    rst $38
    adc a
    cp $3f
    nop
    nop
    inc bc
    rst $38
    rst $20
    cp $3f
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    db $eb
    db $fc
    ld a, a
    db $fc
    nop
    nop
    ld [bc], a
    rst $38
    rst $38
    push hl
    rst $38
    di
    ld hl, sp+$00
    nop
    rra
    rst $30
    rst $38
    adc h
    rst $38
    jp Jump_000_00c0


    nop
    ccf
    cp $7f
    rst $08
    db $fc
    add hl, de
    add b
    nop
    inc bc
    rst $38
    ld sp, hl
    cp $3f
    rst $20
    ret nz

    nop
    nop
    rra
    rst $38
    rst $20
    di
    rst $38
    ld h, [hl]
    nop
    nop
    nop
    ld a, a
    db $fc
    rst $28
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    sbc a
    ldh a, [$2f]
    cp $7e
    nop
    nop
    ld bc, $ff81
    inc bc
    rst $38
    rst $00
    ldh a, [rP1]
    nop
    ld bc, $c0ff
    rst $38
    rst $08
    cp $00
    nop
    nop
    inc bc
    rst $38
    ld bc, $cfff
    db $fc
    nop
    nop
    nop
    rst $38
    ld hl, sp+$0f
    cp $cf
    add b
    nop
    nop
    inc b
    ld a, a
    add a
    rst $38
    rst $08
    ldh a, [$38]
    nop
    nop
    ld b, e
    db $fc
    rrca
    ld sp, hl
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $38
    ret nz

    rst $38
    rrca
    ld hl, sp+$00
    jr nz, jr_038_43d5

jr_038_43d5:
    ld [hl], c
    cp $1f
    rst $38
    rra
    ldh [$60], a
    nop
    rrca
    ret nz

    rst $38
    cp e
    rst $38
    pop hl
    cp h
    ldh [rTAC], a
    nop
    rra
    ldh a, [rIE]
    jp $017f


    ret nz

    nop
    ld e, $7f
    dec e
    rst $38
    rst $38
    ldh a, [$38]
    nop
    inc bc
    ld l, b
    rra
    rst $28
    rra
    ldh [$f0], a
    jr c, @+$11

    ld bc, $7cfc
    ld a, a
    adc a
    rst $28
    pop bc
    ldh a, [rP1]
    ld hl, sp+$3f
    dec bc
    rst $38
    sbc a
    or $01
    ldh a, [rTMA]
    inc b
    ld b, a
    db $fc
    rra
    db $fc
    ld a, $41
    ldh a, [$38]
    nop
    ld a, a
    pop bc
    rst $38
    add [hl]
    adc a
    ldh [rP1], a
    ld b, b
    nop
    ld b, a
    ccf
    rst $08
    rst $38
    ldh [$7c], a
    nop
    jr nz, jr_038_4435

    ldh a, [$7f]
    reti


    rst $38
    pop hl
    ldh a, [$08]

jr_038_4435:
    ld [$7901], sp
    ccf
    ld a, $3f
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    ld a, a
    ld bc, $87ff
    ld hl, sp+$0f
    add b
    ld e, $03
    pop af
    add e
    di
    rst $38
    add b
    db $fc
    ld de, $0308
    ret nz

    ld a, a
    add b
    rst $38
    add hl, bc
    ldh a, [$3e]
    rlca
    add b
    rra
    ldh [$7f], a
    pop bc
    rst $38
    add c
    ldh a, [rP1]
    db $fc
    nop
    rrca
    pop hl
    rst $38
    ldh [$7f], a
    add e
    db $10
    inc bc
    jr @+$09

    rrca
    di
    ld sp, hl
    ldh a, [$38]
    ld [$0316], sp
    db $eb
    add hl, sp
    ld b, a
    rst $38
    ret nz

    ldh [$38], a
    rlca
    add b
    ld a, $1f
    rrca
    add e
    ld hl, sp+$3d
    inc e
    rlca
    ldh [rIF], a
    jp $e11f


    cp $3c
    nop
    jr jr_038_4498

    ld bc, $1ef8
    ccf
    rra
    pop bc

jr_038_4498:
    ldh a, [$3e]
    ld bc, $e087
    ld hl, sp+$3e
    rra
    sbc a
    add a
    ld [c], a
    ld h, b
    inc e
    rrca
    add b
    ld hl, sp+$78
    ld a, a
    add c
    rst $00
    nop
    ccf
    add b
    db $fc
    nop
    ld a, a
    sbc a
    jp $03f0


    ldh [$0e], a
    inc bc
    ccf
    rlca
    push bc
    rst $38
    ldh [$7c], a
    nop
    jr nz, jr_038_44c2

jr_038_44c2:
    ld e, h
    ld [hl], b
    ld a, a
    set 7, a
    nop
    db $76
    ld [bc], a
    nop
    ldh a, [$ee]
    ld a, a
    pop hl
    rst $38
    ret nz

    ldh [rP1], a
    rlca
    ld bc, $6388
    rst $38
    db $e3
    ldh a, [$78]
    jr @+$11

    add b
    ld a, [hl]
    rlca
    cp $7f
    rst $08
    jp Jump_000_01c1


    ldh [$5f], a
    ld [hl+], a
    ccf
    rst $08
    ldh a, [rIE]
    ld bc, $07f0
    ld hl, sp+$07
    rra
    add a
    ld hl, sp+$7e
    inc bc
    ld a, b
    inc bc
    ldh [rVBK], a
    ldh [$fe], a
    rrca
    rst $38
    rra
    ret nz

    ld a, h
    nop
    cp $00
    ld a, a
    add c
    db $fc
    ccf
    ret nz

    db $76
    ld bc, $01fc
    ldh [$3f], a
    ld hl, sp+$0f
    db $e3
    ldh [$f0], a
    jr jr_038_4525

    inc bc
    add c
    db $fc
    ccf
    adc a
    rst $28
    rlca
    ldh a, [$3c]
    nop
    jr jr_038_4542

    add c
    rst $38

jr_038_4525:
    ldh a, [$fc]
    inc bc
    ldh a, [rIF]
    ret nz

    rrca
    ldh a, [$7f]
    ldh [$7f], a
    add b
    ldh [rSB], a
    add b
    rrca
    rlca
    db $fc
    rrca
    ldh a, [rIE]
    ret nz

    ld l, b
    rrca
    ret nz

    ld h, c
    ld sp, hl
    db $fc
    ld a, a

jr_038_4542:
    ldh a, [rTAC]
    ldh [$03], a
    ld hl, sp+$0f
    ret nz

    ld a, a
    di
    cp $78
    inc c
    nop
    jr jr_038_4553

    ld [hl], c
    rst $38

jr_038_4553:
    ld hl, sp+$1f
    db $fc
    rlca
    ldh [rIF], a
    nop
    ld a, a
    pop af
    cp $1f
    rst $38
    nop
    ld a, [hl]
    nop
    ld [hl], b
    nop
    ld e, a
    cp a
    add e
    rst $38
    ldh [$1f], a
    nop
    rlca
    add b
    ld a, a
    inc hl
    rst $38
    rst $38
    ldh a, [rTAC]
    ret nz

    nop
    ldh [$1f], a
    rrca
    ccf
    rst $00
    db $fc
    ldh [$7c], a
    nop
    ld hl, sp+$03
    rst $38
    adc a
    ld hl, sp+$3f
    ld hl, sp+$3f
    nop
    nop
    ret nz

    ccf
    ld a, a
    xor a
    rst $38
    rst $30
    ldh [$7e], a
    nop
    ld l, b
    rlca
    adc a
    rst $38
    rst $18
    rst $38
    db $fc
    inc bc
    add b
    nop
    nop
    inc bc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    add e
    ldh [rTAC], a
    add b
    rrca
    ld hl, sp+$7f
    db $f4
    rst $38
    cp $01
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    rst $18
    cp $ff
    ldh [rDIV], a
    nop
    jr jr_038_45bc

    cp $0b
    db $fc

jr_038_45bc:
    ccf
    ret nz

    ld a, b
    nop
    nop
    rlca
    ldh a, [rIE]
    inc bc
    rst $38
    add e
    ldh a, [rP1]
    nop
    nop
    ld bc, $03ff
    rst $38
    rst $38
    nop
    jr jr_038_45d3

jr_038_45d3:
    nop
    inc bc
    rst $38
    ldh [$7f], a
    cp $ff
    ld bc, $0080
    nop
    rra
    rst $18
    ldh [$7f], a
    ldh [$fe], a
    nop
    nop
    nop
    nop
    ccf
    ldh a, [$7f]
    rst $00
    cp $01
    ldh [$0e], a
    nop
    rra
    rst $38
    ldh a, [$3f]
    ret nz

    ld a, a
    nop
    ret nz

    nop
    rlca
    ei
    rst $38
    add a
    rst $38
    add a
    ret nz

    ld h, b
    nop
    nop
    rrca
    rst $20
    ld hl, sp+$3f
    rst $38
    rrca
    add c
    ret nz

    nop
    nop
    rst $38
    cp $8f
    rst $38
    ld hl, sp-$20
    inc a
    nop
    nop
    rrca
    rst $38
    db $fc
    rra
    cp $0f
    add b
    nop
    nop
    nop
    rra
    db $fc
    ccf
    ld sp, hl
    rst $38
    ret nz

    stop
    nop
    inc bc
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ld a, a
    add b
    ldh [rP1], a
    nop
    rrca
    rst $38
    ldh a, [$3f]
    rst $38
    rst $38
    nop
    ldh [rP1], a
    nop
    rrca
    rst $38
    ld hl, sp+$1f
    rst $38
    rlca
    nop
    nop
    nop
    nop
    ld a, a
    cp a
    rst $18
    rst $28
    rst $38
    ldh a, [$3e]
    nop
    nop
    nop
    ld a, a
    rst $38
    rrca
    rst $38
    rst $38
    ret nz

    jr nc, jr_038_465a

jr_038_465a:
    nop
    inc bc
    rst $38
    db $fc
    rrca
    rst $38
    rst $38
    add b
    ldh [rP1], a
    nop
    ccf
    rst $38
    ld hl, sp+$7f
    rst $38
    rst $38
    ret nz

    jr nc, jr_038_466e

jr_038_466e:
    nop
    inc bc
    rst $38
    add a
    ld hl, sp-$01
    ld hl, sp+$07
    add b
    nop
    nop
    ld bc, $e0ff
    rst $38
    rst $38
    cp $01
    ldh a, [rP1]
    nop
    inc hl
    ccf
    xor $7f
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    rst $30
    cp $0f
    rst $38
    ld a, a
    add b
    jr jr_038_4696

jr_038_4696:
    nop
    rlca
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    pop hl
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    rst $18
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
    rst $38
    add b
    nop
    nop
    nop
    rrca
    rst $38
    adc a
    db $fc
    ld a, a
    ldh [rIE], a
    add b
    nop
    ld [$3f00], sp
    add c
    cp $07
    cp $07
    ret nz

    nop
    nop
    ld b, e
    or c
    cp $0f
    rst $38
    rst $38
    ldh [rIF], a
    add b
    nop
    nop
    ccf
    db $fc
    rrca
    rst $38
    rst $38
    db $fc
    ldh [rP1], a
    nop
    nop
    rrca
    ldh [$7f], a
    adc a
    rst $38
    rst $38
    ret nz

    ld hl, sp+$00
    nop
    nop
    rra
    ldh a, [$7f]
    rst $38
    rst $38
    di
    ld hl, sp+$00
    nop
    jr jr_038_4706

    rst $38
    add e
    rst $38
    rst $38
    db $fc
    rra
    nop

jr_038_4706:
    nop
    nop
    ldh [rIF], a
    ld hl, sp+$7f
    rst $38
    rst $38
    add e
    ldh a, [rP1]
    nop
    nop
    ld h, b
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $00
    jr nz, jr_038_471c

jr_038_471c:
    inc bc
    ret nz

    ld a, a
    rst $00
    rst $38
    rst $38
    rst $38
    add a
    nop
    nop
    nop
    nop
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    db $fc
    rlca
    add b
    nop
    nop
    ld bc, $03fe
    rst $38
    rst $38
    rst $38
    ldh a, [rNR41]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld bc, $00e0
    nop
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$7c]
    nop
    nop
    nop
    ld a, a
    db $fc
    rrca
    rst $38
    rst $38
    ldh a, [$7c]
    nop
    nop
    nop
    nop
    rra
    db $e3
    rst $38
    rst $38
    rst $38
    rlca
    jp c, RST_00

    nop
    rrca
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    ld [$0000], sp
    nop
    pop hl
    cp $7f
    rst $38
    rst $38
    ldh a, [$f8]
    nop
    nop
    nop
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    jr nz, jr_038_4790

jr_038_4790:
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    nop
    nop
    nop
    nop
    inc bc
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ldh [rP1], a
    nop
    nop
    cp $3f
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    add b
    nop
    nop
    inc bc
    ld hl, sp+$1f
    rst $38
    rst $38
    rst $38
    ld hl, sp+$0e
    nop
    nop
    nop
    ld bc, $07ff
    rst $38
    rst $38
    ldh a, [$3e]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$0e
    nop
    nop
    nop
    nop
    rst $38
    db $fc
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
    add b
    ld h, b
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    stop
    nop
    rlca
    rst $00
    rst $38
    rst $38
    rst $38
    ccf
    ld hl, sp+$07
    add b
    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    ld b, b
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld [$f907], sp
    rst $38
    rst $38
    rst $38
    rst $08
    ret nz

    nop
    nop
    nop
    jr jr_038_4857

    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld bc, $fff3
    rst $38
    rst $38
    rst $38

jr_038_4857:
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
    di
    add b
    nop
    nop
    nop
    nop
    db $fc
    ld a, a
    ei
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    jr nc, jr_038_48c8

    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc e
    ld bc, $ffff
    rst $38
    rst $38
    ldh a, [$f8]
    nop
    nop
    nop
    nop
    rra
    ldh a, [rIE]
    adc a
    rst $38
    rst $00
    ret nz

    nop
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    ldh [rP1], a
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    cp $7e
    nop
    ld bc, $0000
    nop
    rst $38
    rst $18
    rst $38
    ld a, a
    ldh a, [$fc]
    nop
    ld hl, sp+$00
    nop

jr_038_48c8:
    rrca
    rst $28
    rst $38
    rst $20
    rst $38
    cp a
    ld hl, sp+$06
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $28
    nop
    stop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    inc a
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ldh [rP1], a
    nop
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$7f
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc b
    rlca
    rst $38
    db $e3
    rst $38
    ei
    cp $00
    add b
    nop
    nop
    jr c, jr_038_495f

    rst $38
    rst $38
    rst $38
    pop af
    ld hl, sp+$00
    nop
    nop
    nop
    inc bc
    rst $38
    db $fd
    rst $38
    rst $38
    cp $01
    add b
    nop
    nop
    ldh [$3f], a
    cp a
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
    pop af
    ld hl, sp+$00
    nop
    nop
    inc bc
    inc bc
    push af
    rst $38
    rst $38
    rst $38
    rst $18
    nop
    nop
    nop
    nop
    nop
    rra
    ldh a, [rIE]
    rst $30
    cp $1f
    ret nz

    inc b
    nop
    nop
    inc bc

jr_038_495f:
    db $fc
    ld a, a
    di
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
    db $fc
    nop
    nop
    nop
    nop
    rlca
    ei
    rst $38
    rst $38
    rst $38
    cp a
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
    inc c
    rlca
    rst $38
    rst $38
    rst $38
    db $fd
    cp $00
    nop
    nop
    nop
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    nop
    nop
    nop
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    di
    add b
    nop
    nop
    nop
    nop
    ld a, a
    ccf
    rst $38
    rst $38
    rst $20
    ld hl, sp+$03
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_038_4a5b

    ccf
    rst $38
    rst $38
    ei
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
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
    db $fc
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
    ld e, $ff
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
    ldh a, [rP1]
    nop
    nop
    nop
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$c0], a
    nop
    nop
    nop
    rra
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rlca
    add e
    rst $38
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
    rst $38
    rst $18
    add b
    nop
    nop
    nop

jr_038_4a5b:
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$00
    nop
    nop
    nop
    ld_long a, $ff3f
    rst $38
    rst $00
    db $fc
    nop
    add b
    ld e, $00
    add b
    rst $38
    ld sp, hl
    rst $38
    rst $38
    cp $00
    nop
    ld h, b
    nop
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    add b
    nop
    ldh [rP1], a
    ld b, $07
    rst $38
    ldh [rIE], a
    rst $38
    pop hl
    add b
    ld bc, $00c0
    inc bc
    cp $07
    rst $38
    rst $38
    xor $00
    nop
    nop
    ld [hl], b
    ld [$ff7f], sp
    rst $18
    rst $38
    db $e3
    ldh a, [rP1]
    jr nc, jr_038_4aa6

    ldh a, [$3f]
    pop hl

jr_038_4aa6:
    rst $38
    rst $38
    ret nz

    ld a, b
    nop
    ret nz

    ld e, $01
    cp $3f
    ldh a, [rIE]
    rlca
    ldh a, [rP1]
    ret nz

    nop
    add b
    ld a, a
    rst $18
    rst $38
    rst $38
    cp $00
    nop
    ld b, $00
    ld b, b
    rrca
    ld sp, hl
    rst $38
    rst $38
    ld hl, sp-$02
    nop
    ld [hl], b
    nop
    nop
    rra
    db $e3
    ld hl, sp-$01
    ldh a, [$3e]
    nop
    ld b, b
    nop
    nop
    ccf
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ldh a, [rP1]
    ld [$c900], sp
    add b
    rst $38
    rst $38
    ld hl, sp+$7f
    ldh a, [rP1]
    nop
    nop
    ld [$fe23], sp
    rst $38
    rst $38
    or $1f
    nop
    ld [bc], a
    nop
    ld a, h
    rrca
    rst $38
    rst $38
    db $fd
    rst $38
    ldh a, [rP1]
    ld [bc], a
    nop
    nop
    ld a, h
    ccf
    db $fc
    ld a, a
    rst $08
    db $fc
    nop
    nop
    nop
    rrca
    call z, $ff3f
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rlca
    sbc e
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    nop
    jr jr_038_4b1b

jr_038_4b1b:
    inc bc
    adc h
    rst $38
    rst $38
    rst $38
    rst $28
    ret nz

    nop
    nop
    nop
    inc bc
    ldh a, [$3f]
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    ld bc, $fc83
    ccf
    rst $38
    cp $60
    ldh [rTMA], a
    nop
    ld b, $01
    rst $38
    rst $38
    rst $08
    rst $38
    ldh a, [rP1]
    nop
    jr nc, jr_038_4b44

jr_038_4b44:
    rrca
    rst $38
    sbc a
    ld sp, hl
    rst $38
    add b
    ret nz

    nop
    nop
    jr c, jr_038_4b8d

    rst $38
    rst $38
    rst $38
    ld hl, sp+$1f
    ldh [rTMA], a
    nop
    rrca
    jp Jump_038_7ff0


    db $fc
    rst $38
    adc a
    ret nz

    jr c, jr_038_4b61

jr_038_4b61:
    ld hl, sp+$07
    ld sp, hl
    rst $38
    pop af
    ld hl, sp+$1f
    ldh [rP1], a
    ld bc, $07f8
    add a
    rst $38
    rst $08
    rst $00
    cp $00
    stop
    nop
    ld a, a
    add e
    rst $38
    rlca
    ldh [rIF], a
    nop
    inc c
    ld [bc], a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    add b
    rst $38
    rst $18
    db $fc

jr_038_4b8d:
    rrca
    ldh a, [rP1]
    nop
    nop
    ccf
    nop
    ld a, a
    rst $38
    cp $ff
    add b
    ld h, b
    nop
    ldh a, [rDIV]
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld b, h
    ld bc, $ffdf
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
    rst $38
    db $fc
    ld bc, $0080
    inc bc
    ldh a, [$7f]
    rst $38
    rst $38
    rst $38
    ldh a, [$80]
    nop
    ld b, b
    ld hl, sp+$07
    rst $38
    rst $38
    pop hl
    ccf
    add c
    ret nz

    nop
    nop
    ld a, [hl]
    rrca
    rst $38
    rst $38
    di
    cp $30
    nop
    nop
    inc bc
    jr nz, jr_038_4bdf

    rst $38
    rst $38
    db $db
    rst $20
    ld hl, sp+$00

jr_038_4bdf:
    jr nc, jr_038_4bf0

    ld bc, $ef9f
    cp $ff
    ret nz

    ld a, a
    nop
    ld h, b
    rlca
    inc c
    ld a, a
    rst $38
    cp $ff

jr_038_4bf0:
    ld hl, sp+$00
    nop
    db $10
    inc b
    inc bc
    rst $38
    rst $38
    db $fd
    ccf
    ldh [rP1], a
    nop
    ld h, b
    inc e
    rlca
    rst $38
    adc a
    di
    cp $08
    jr jr_038_4c0a

    ld bc, $2080

jr_038_4c0a:
    rst $38
    cp a
    rst $38
    rst $28
    ldh [rP1], a
    nop
    inc b
    nop
    inc bc
    rst $38
    ei
    rst $38
    ret nz

    ld h, b
    nop
    ld bc, $00c0
    rst $38
    ld hl, sp+$7f
    ei
    ld hl, sp+$79
    nop
    ld b, $01
    ldh a, [$03]
    rst $38
    rst $38
    cp $7f
    rlca
    ret nz

    nop
    nop
    rst $38
    rrca
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    nop
    inc c
    nop
    rra
    scf
    rst $38
    rst $38
    db $e3
    db $fc
    jr nc, jr_038_4c42

jr_038_4c42:
    nop
    nop
    ret nz

    rra
    db $fc
    ld a, [hl]
    cp $fc
    nop
    nop
    nop
    inc bc
    nop
    rrca
    rst $38
    rst $38
    rst $38
    call c, Call_000_001c
    nop
    nop
    inc bc
    ccf
    cp a
    ei
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    ld b, $7f
    rst $38
    rst $38
    rst $38
    rst $18
    ldh [rP1], a
    nop
    ld a, b
    rlca
    db $fc
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    ld b, $c0
    ld hl, sp+$33
    rst $38
    sbc a
    db $e3
    ld hl, sp-$40
    stop
    nop
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    ldh [rNR10], a
    rlca
    ret nz

    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    jr nc, jr_038_4cc2

    nop
    ccf
    rst $38
    db $fc
    ccf
    ldh a, [$3c]
    nop
    nop
    inc bc
    add b
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    ld b, $00
    nop
    ld [hl], b
    inc hl
    rst $38
    ccf
    rst $38
    cp $00
    nop
    ld [bc], a
    nop
    nop
    ld a, a
    db $fc
    rst $38
    db $fc
    cp $02
    ld h, b
    ld bc, $9c00
    nop
    rst $38
    rst $38
    cp $ef
    ldh [rP1], a

jr_038_4cc2:
    nop
    ret nz

    nop
    dec e
    ld hl, sp+$7f
    rst $38
    pop af
    ldh a, [$c0]
    ld e, $03
    ld b, h
    rlca
    rst $38
    rst $38
    adc a
    cp $07
    add b
    nop
    ccf
    db $fc
    inc bc
    rst $38
    rst $38
    ldh [$7f], a
    add e
    nop
    rlca
    nop
    ldh a, [$3f]
    ei
    rst $38
    adc a
    db $fd
    db $fc
    nop
    ld a, [hl]
    ld bc, $1ff0
    rlca
    rst $38
    rra
    pop hl
    ldh a, [rP1]
    sbc b
    ld [bc], a
    jr nc, @-$2f

    rrca
    rst $38
    rra
    cp $40
    nop
    nop
    nop
    ld a, b
    nop
    ld e, a
    rst $38
    rst $38
    ldh a, [rTAC]
    add b
    nop
    inc bc
    pop af
    adc a
    jp $ffff


    cp b
    ld bc, $003c
    nop
    rst $30
    rst $38
    inc bc
    rst $38
    rst $38
    ld [c], a
    rst $38
    nop
    jr nc, jr_038_4d26

    rra
    rst $00
    rrca
    ei
    rst $38
    ldh a, [$7e]
    nop

jr_038_4d26:
    nop
    rlca
    pop bc
    rst $38
    rst $00
    db $fd
    rst $38
    ei
    nop
    nop
    ld a, b
    rlca
    add b
    rla
    rrca
    ld hl, sp+$7f
    add sp, $41
    ldh a, [rP1]
    nop
    ld sp, hl
    nop
    ccf
    rst $38
    sbc a
    add b
    ld hl, sp+$00
    nop
    rra
    add b
    ld bc, $fff3
    ldh a, [rNR32]
    add hl, de
    inc d
    nop
    nop
    inc a
    rra
    rst $38
    ei
    rst $38
    ld hl, sp+$0f
    ret nz

    ld [bc], a
    ld bc, $01f8
    rst $38
    rst $38
    ld a, a
    ld a, h
    jr nc, jr_038_4d69

    ret nz

    rlca
    ld b, b
    db $e4
    ld a, a
    ldh a, [$3f]

jr_038_4d69:
    rst $38
    nop
    ld c, l
    ldh [$80], a
    rlca
    add b
    rst $00
    rst $38
    ldh a, [$1f]
    ldh [rTAC], a
    inc bc
    ret nz

    ccf
    ret nz

    ccf
    ccf
    ldh [rDIV], a
    inc bc
    ld hl, sp+$00
    ret nz

    db $e3
    ret nz

    ld b, b
    rst $38
    db $f4
    ld a, $10
    ld a, c
    add b
    ret nz

    ld bc, $0ffe
    rlca
    db $fc
    inc bc
    ldh [$c0], a
    ld b, $70
    inc c
    db $10
    ccf
    di
    ret nz

    inc bc
    call Call_000_1083
    pop bc
    ld sp, hl
    ldh a, [rNR32]
    ld a, a
    rlca
    rlca
    rst $00
    nop
    rst $38
    ld [hl], c
    add c
    cp a
    ldh [$3c], a
    rst $18
    ld hl, sp+$0f
    ldh a, [rIE]
    add b
    db $fc
    rst $38
    add b
    ld a, a
    rst $20
    pop af
    ccf
    add c
    cp $03
    pop af
    cp $00
    cp $7f
    ld bc, $fff9
    add b
    jr c, jr_038_4de8

    add b
    daa
    jp Jump_038_7f80


    nop
    inc e
    rrca
    ret nz

    cp $01
    ld hl, sp+$1f
    add b
    nop
    rrca
    ldh [$7c], a
    dec d
    sbc [hl]
    ccf
    add b
    rrca
    cp $d0
    nop
    rst $28
    ldh [rSB], a
    rrca
    db $e3

jr_038_4de8:
    rst $08
    ldh a, [$81]
    ld sp, hl
    rlca
    inc bc
    sbc b
    dec c
    rst $00
    rst $38
    ret nz

    ld a, a
    db $fc
    nop
    ld e, $f7
    ld bc, $673f
    inc c
    ld a, a
    ld a, a
    ld [bc], a
    ld a, a
    ld bc, $016e
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
    ld c, $7f
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    ld a, a
    xor b
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    nop
    ccf
    ldh [rP1], a
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
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld a, [$00b8]
    nop
    rlca
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
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
    rst $38
    rst $38
    cp $00
    nop
    dec c
    rst $38
    rst $38
    ret nz

    nop
    nop
    rra
    rst $38
    cp $c0
    nop
    nop
    ld a, a
    rst $38
    ret nz

    nop
    nop
    ld c, a
    rst $38
    ldh [rSB], a
    add b
    rrca
    rst $38
    db $fc
    ld a, c
    nop
    rra
    rst $38
    and b
    ld b, h
    ld bc, $f8ff
    rlca
    ld h, b
    rrca
    rst $38
    ret nz

    inc de
    nop
    ld a, a
    rst $38
    nop
    ld hl, sp+$19
    rst $38
    ldh a, [$09]
    adc c
    dec e
    rst $38
    add b
    inc d
    ld h, $ff
    cp $00
    ld c, h
    ei
    xor $c8
    inc bc
    ld [hl], a
    rst $38
    rst $38
    ld b, b
    daa
    cp $ef
    ld hl, sp+$00
    rrca
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ret nz

    nop
    sbc a
    rst $38
    sbc b
    nop
    ld bc, $ffff
    ret nz

    nop
    rrca
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    add b
    nop
    rrca
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ldh [rP1], a
    rlca
    ld a, a
    rst $38
    ldh [rP1], a
    rlca
    ld a, a
    cp $20
    nop
    inc bc
    sbc a
    rst $38
    sbc b
    nop
    ld bc, $ffdf
    ret c

    nop
    nop
    rst $20
    db $fd
    db $ec
    jr nz, jr_038_4eef

jr_038_4eef:
    add hl, sp
    rst $38
    add hl, sp
    inc b
    nop
    inc bc
    rst $08
    di
    ret nz

    ret nz

    nop
    ld [hl], c
    cp $71
    sbc b
    jr nz, jr_038_4f07

    ccf
    rst $38
    ld bc, $0003
    ld [hl], e
    db $fd

jr_038_4f07:
    di
    sbc b
    nop
    ld c, $7f
    cp [hl]
    ld [hl], b
    nop
    nop
    ld [hl], e
    rst $38
    ldh [rLCDC], a
    pop hl
    rlca
    dec e
    rst $28
    add hl, sp
    add b
    nop
    inc e
    rst $38

jr_038_4f1d:
    ld a, b
    nop
    ld bc, $e3e1
    rst $00
    jp $c68f


    inc bc
    inc e
    ld a, a
    inc a
    ld b, b
    nop
    jp $ee9f


    nop
    nop
    dec sp
    ld c, $3c
    ld a, b
    ld [hl], b
    ldh [$c0], a
    jr c, jr_038_4f1d

    di
    add [hl]
    nop
    inc c

jr_038_4f3e:
    add hl, sp
    rst $38
    di
    add b
    ld b, $03
    sbc a
    ld a, $38
    ld [hl], b
    ld h, b
    jr c, jr_038_4f3e

    di
    add [hl]
    nop
    nop
    rst $20
    rst $38
    call z, $1000
    ld c, $7d
    ld hl, sp-$1f
    ld bc, $3906
    ei
    jp $0806


    rlca
    inc e
    cp $71
    add b
    nop
    add hl, de
    rst $38
    di
    nop
    inc b
    rlca
    inc a
    db $fc
    ld [hl], c
    ret nz

    add b
    ld sp, $e7cf
    jr jr_038_4f75

jr_038_4f75:
    ld b, $73
    db $fd
    add $00
    ld bc, $ff9f
    ld [hl], c
    nop
    ld bc, $ff8f
    jr c, jr_038_4f84

jr_038_4f84:
    nop
    ld h, e
    rst $38
    sbc $20
    nop
    inc e
    rst $38
    ei
    adc [hl]
    nop
    ld bc, $ff9c
    ld [hl], e
    add b
    inc bc
    adc a
    rst $38
    ld a, c
    add b
    nop
    rst $00
    ld a, a
    cp h
    ret nz

    nop
    ld sp, $ffdf
    jr nc, jr_038_4fa4

jr_038_4fa4:
    rlca
    dec sp
    cp $e6

jr_038_4fa8:
    nop
    ld bc, $ff9c
    ld [hl], c
    add b
    nop
    ld h, a
    ccf
    db $fc
    ldh [rP1], a
    inc bc
    sbc a
    rst $38
    ld [hl], c
    add b
    nop
    ld h, e
    sbc a
    sbc $70
    nop
    jr jr_038_4fa8

    rst $38
    sbc h
    nop

jr_038_4fc4:
    jr nz, jr_038_5029

    cp a
    adc $74
    nop
    inc c
    ld h, e
    rst $38
    call z, Call_000_0300
    add hl, de
    rst $38
    di
    jr nz, @+$06

    inc c
    ld h, a
    ei
    call z, $1000
    jr jr_038_4fc4

    rst $30
    sbc [hl]
    nop
    inc bc
    inc e
    rst $38
    ld [hl], e
    adc b
    nop
    inc bc
    ccf
    rst $38
    db $fc
    nop
    nop
    inc sp
    rst $38
    rst $38
    ld sp, $0600
    ld sp, $eeff
    nop
    nop
    ld b, $7f
    rst $38
    db $fc
    nop
    ld bc, $ff8f
    db $fd
    ret nz

    nop
    ld b, $77
    rst $38
    xor $40
    ld bc, $ff8c
    ei
    sub b
    nop
    inc bc
    rra
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rra
    rst $38
    di
    add b
    nop
    ld sp, $ff9f
    ld [hl], c
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ld bc, $ff9f
    ei
    add b

jr_038_5029:
    nop
    inc hl
    sbc a
    rst $38
    ld [hl], e
    nop
    nop
    ld h, a
    rst $38
    rst $38
    ldh a, [rP1]
    inc b
    ld [hl], e
    rst $38
    xor $20
    nop
    inc b
    ld a, a
    rst $38
    rst $38
    nop
    nop
    inc hl
    cp a
    rst $38
    ld [hl], e
    nop
    nop
    ld b, a
    rst $38
    cp $e0
    nop
    nop
    inc sp
    sbc a
    rst $38
    ld sp, hl
    nop
    nop
    ld h, a
    rst $38
    cp $c0
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld b, a
    ccf
    rst $38
    and $00
    nop
    rrca
    rst $38
    rst $38
    db $e4
    nop
    nop
    ld bc, $ff1f
    rst $38
    sub b
    nop
    nop
    ld a, a
    rst $38
    or $00
    nop
    ccf
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rlca
    rst $38
    db $fc
    nop
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
    rra
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    cp $00
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
    ld bc, $ffff
    ret z

    nop
    inc bc
    rst $38
    cp $00
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
    ld bc, $ffff
    add b
    nop
    rra
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    ld bc, $ffbf
    ldh [rP1], a
    ld bc, $ffff
    ldh [rP1], a
    ld bc, $ffff
    add b
    nop
    rlca
    rst $38
    cp $00
    nop
    ccf
    rst $38
    ldh a, [rP1]
    inc bc
    cp a
    rst $38
    ld b, b
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
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
    ccf
    rst $38
    ld hl, sp+$00
    ld bc, $ffff
    ret nz

    nop
    rrca
    rst $38
    rst $38
    ret nz

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
    ret nz

    nop
    rra
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
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
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    add b
    nop
    rlca
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld bc, $ffff
    add b
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
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    ld [$ff47], sp
    rst $38
    add b
    nop
    ld bc, $ffff
    cp $00
    ld hl, $df0f
    rst $38
    ldh a, [rSB]
    jr jr_038_5198

    rst $38
    rst $38
    sbc b
    inc b
    ld h, c
    sbc e
    rst $38
    cp $20
    nop
    ld b, a
    rst $38
    rst $38
    db $ec

jr_038_5198:
    nop
    ld bc, $ff8f
    rst $38
    ldh a, [rP1]
    ld b, $3f
    rst $38
    rst $28
    ret nz

    nop
    ld b, [hl]
    ld [hl], a
    rst $38
    cp $c0
    nop
    jr @+$01

    rst $38
    cp a
    nop
    nop
    ld sp, $ffff
    halt
    inc bc
    ld de, $ffff
    or e
    nop
    nop
    rst $00
    rst $38
    rst $38
    ld hl, sp+$00
    ld bc, $ff0f
    ei
    sub b
    nop
    ld b, $33
    rst $38
    rst $38
    halt
    nop
    add a
    rst $38
    rst $38
    ldh a, [rP1]
    ld b, $1f
    rst $38
    rst $38
    ret nz

    nop
    inc b
    ld h, e
    rst $38
    cp $74
    nop
    nop
    ld b, a
    rst $38
    rst $38
    ld hl, sp+$00
    inc b
    rra
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
    inc b
    ccf
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    inc c
    ld a, a
    rst $38
    xor $c0
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld hl, $ffff
    or $00
    nop
    inc hl
    ccf
    rst $38
    rst $38
    or b
    nop
    ld bc, $ff1f
    rst $38
    ldh [rP1], a
    ld [$ff3f], sp
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld [$ffff], sp
    rst $38
    add b
    nop
    ld b, e
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
    ld [$ff7f], sp
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    inc b
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    ld [bc], a
    rra
    rst $38
    rst $38
    ldh [rP1], a
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
    db $fc
    nop
    nop
    ld bc, $ffff
    cp $00
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
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    db $fc
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
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
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
    ldh [rP1], a
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
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
    ldh [rP1], a
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
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
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rrca
    rst $38
    rst $38
    cp $00
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rlca
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
    ld hl, sp+$00
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
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld a, a
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
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld de, $ffff
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
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
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
    rst $38
    sub [hl]
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
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_5555:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_5695:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld l, $2b
    ld hl, sp+$0b
    or [hl]
    rst $00
    add sp, $16
    dec bc
    add b
    cp l
    ld b, e
    rst $38
    rst $38
    ld c, c
    cp h
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
    ld bc, $ffff
    rst $38
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    db $fd
    ret nz

    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    cp b
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    db $fc
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    cp $00
    nop
    rst $38
    rst $38
    ldh [rSB], a
    ld hl, sp+$00
    nop
    rst $38
    rst $38
    ret nz

    rlca
    ldh a, [rP1]
    ld bc, $ffff
    nop
    rrca
    add b
    nop
    cpl
    rst $38
    ret nz

    nop
    ld a, a
    nop
    nop
    ccf
    rst $38
    nop
    inc bc
    db $fc
    nop
    ld bc, $f8ff
    nop
    rra
    ldh a, [rP1]
    ld bc, $e0ff
    nop
    rra
    ldh [rSC], a
    ld bc, $c0ff
    nop
    ld a, a
    ldh a, [rP1]
    ret nz

    ccf
    db $fc
    nop
    ccf
    db $fc
    nop
    rlca
    ld bc, $80ff
    dec b
    rst $38
    ldh [rTAC], a
    ldh [rTAC], a
    cp $00
    rrca
    rst $38
    ret nz

    nop
    ld a, h
    inc bc
    cp $00
    rra
    rst $38
    nop
    nop
    rra
    rra
    ld hl, sp+$01
    rst $38
    db $fc
    nop
    ccf
    ret c

    ld bc, $80ff
    nop
    rst $38
    ldh [rP1], a
    rra
    nop
    rst $38
    add b
    ld [$c0ff], sp
    nop
    inc bc
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    ldh a, [$03]
    add b
    nop
    ccf
    ldh a, [rTAC]
    rst $38
    ldh a, [rP1]
    inc bc
    cp $01
    rst $38
    add b
    nop
    rst $38
    ret nz

    rra
    sbc a
    ret nz

    ccf
    ldh a, [rTAC]
    sbc a
    ld hl, sp+$01
    ldh [$3e], a
    ld bc, $00ff
    ld a, a
    rst $38
    add b
    rra
    sbc a
    ldh [$1f], a
    ldh a, [rTAC]
    sbc a
    ld hl, sp+$03
    ldh a, [$1f]
    ld bc, $00ff
    ld a, a
    rst $38
    ldh [$1f], a
    add b
    ld hl, sp+$07
    db $fc
    inc bc
    db $e3
    rst $38
    nop
    ld a, [hl]
    inc bc
    add b
    ld a, a
    ret nz

    rra
    rst $38
    ldh [rIF], a
    ldh [$fc], a
    inc bc
    cp $01
    rst $38
    ld a, a
    ret nz

    rra
    nop
    nop
    rrca
    db $fc
    ld bc, $feff
    nop
    db $fc
    nop
    nop
    ld a, a
    ret nz

    rra
    rst $38
    ldh a, [rTAC]
    ldh a, [rP1]
    ld bc, $80ff
    ld a, a
    rst $38
    ldh [$1f], a
    ret nz

    inc e
    inc bc
    rst $38
    nop
    rst $38
    cp a
    ret nz

    ccf
    nop
    inc a
    rlca
    db $fc
    ld bc, $7ffe
    add b
    cp $00
    ld a, b
    rrca
    ld hl, sp+$03
    ld hl, sp-$01
    ld bc, $00f8
    nop
    rrca
    db $fc
    ld bc, $ffff
    add e
    ld hl, sp+$00
    nop
    rlca
    rst $38
    nop
    ld a, a
    rst $38
    ret nz

    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    ld a, a
    rst $38
    ldh [$7f], a
    nop
    nop
    nop
    rst $38
    ret nz

    rra
    rst $38
    ldh a, [$3f]
    ret nz

    rlca
    add b
    rrca
    db $fc
    nop
    rst $38
    rst $38
    inc bc
    cp $00
    nop
    nop
    ld a, a
    ldh [rIF], a
    rst $38
    ld hl, sp+$1f
    ldh a, [rSB]
    nop
    nop
    rst $38
    add b
    ccf
    rst $38
    ldh [$3f], a
    ldh [rP1], a
    rlca
    nop
    rst $38
    ret nz

    rra
    rst $38
    ldh [$3f], a
    ldh [rP1], a
    ld a, a
    add b
    ccf
    ldh a, [$03]
    rst $38
    ld hl, sp+$07
    cp $00
    rra
    ldh [$03], a
    rst $38
    nop
    ccf
    rst $38
    nop
    ld a, a
    ld hl, sp+$00
    rst $38
    nop
    rlca
    cp $00
    ld a, a
    cp $00
    rst $38
    ldh a, [$03]
    cp $00
    rlca
    cp $00
    ld a, a
    cp $00
    rst $38
    ldh [rSB], a
    rst $38
    nop
    ld bc, $c0ff
    rra
    rst $38

Jump_038_594d:
    ret nz

    rra
    ld hl, sp+$00
    ccf
    ldh [rP1], a
    rlca
    cp $00
    rst $38
    cp $00
    rst $38
    ldh [rSB], a
    cp $00
    nop
    rlca
    db $fc
    ld bc, $fcff
    ld bc, $80ff
    inc bc
    cp $00
    nop
    nop
    rst $38
    add b
    rrca
    rst $38
    ret nz

    rra
    rst $38
    ret nz

    ccf
    ldh [rP1], a
    nop
    rlca
    cp $00
    ccf
    cp $00
    ld a, a
    db $fc
    ld bc, $80ff
    inc bc
    ret nz

    ld bc, $80ff
    rrca
    rst $38
    add b
    rra
    rst $38
    nop
    ld a, a
    ldh [rP1], a
    ld hl, sp+$00
    rra
    db $fc
    nop
    ld a, a
    ld hl, sp+$01
    rst $38
    ret nz

    rrca
    cp $00
    ccf
    ldh [rP1], a
    ccf
    ld hl, sp+$01
    rst $38
    ldh a, [$03]
    rst $38
    ret nz

    rlca
    cp $00
    rra
    ldh [rP1], a
    inc bc
    rst $38
    nop
    rra
    rst $38
    nop
    ld a, a
    cp $01
    rst $38
    ret nz

    nop
    cp $00
    nop
    rlca
    rst $38
    nop
    rra
    rst $38
    nop
    rst $38
    ldh [$03], a
    rst $38
    ret nz

    inc bc
    db $fc
    nop
    nop
    ld bc, $c0ff
    rlca
    rst $38
    ret nz

    rra
    rst $38
    add b
    rst $38
    ldh [rTAC], a
    ld hl, sp+$00
    nop
    nop
    rrca
    cp $00
    ld a, a
    db $fc
    ld bc, $c0ff
    rlca
    rst $38
    nop
    rra
    ld hl, sp+$00
    nop
    nop
    rra
    db $fc
    nop
    ld a, a
    ld hl, sp+$01
    rst $38
    ldh [rTAC], a
    rst $38
    add b
    ccf
    ldh [rP1], a
    ld a, b
    nop
    rrca
    cp $00
    ccf
    ld hl, sp+$01
    rst $38
    ret nz

    rlca
    rst $38
    nop
    rra
    ldh a, [rP1]
    jr jr_038_5a0e

jr_038_5a0e:
    ld bc, $c0ff
    rlca
    rst $38
    nop
    ld a, a
    ldh a, [$03]
    rst $38
    add b
    rrca
    db $fc
    nop
    ld a, a
    add b
    nop
    rrca
    db $fc
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    add b
    rra
    db $fc
    nop
    ld a, a
    ret nz

    inc bc
    ld hl, sp+$00
    nop
    ccf
    ldh a, [$03]
    rst $38
    ldh [$1f], a
    rst $38
    nop
    ld a, a
    db $fc
    ld bc, $00ff
    inc bc
    ldh a, [rP1]
    nop
    ccf
    ld hl, sp+$01
    rst $38
    ldh [rIF], a
    cp $00
    rst $38
    ld hl, sp+$01
    rst $38
    add b
    rlca
    ret nz

    nop
    nop
    rst $38
    ret nz

    rrca
    rst $38
    add b
    ld a, a
    db $fc
    inc bc
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    inc e
    nop
    nop
    nop
    rst $38
    rrca
    rrca
    ld a, a
    ld a, a
    ld [bc], a
    ld a, [hl]
    ld bc, $006f
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, [hl]
    ld a, a
    rst $38
    db $fc
    nop
    nop
    inc b
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld hl, $7f80
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    ld b, $31
    add e
    rst $38
    rst $38
    cp $20
    nop
    inc bc
    inc e
    ld h, e
    rst $38
    rst $38
    cp a
    ldh [rP1], a
    nop
    add $39
    rst $38
    ei
    adc $70
    nop
    nop
    add hl, de
    adc $7f
    cp $f7
    sbc h
    nop
    jr nz, jr_038_5ab0

    ld sp, $ff8f
    cp h
    rst $20
    nop

jr_038_5ab0:
    adc h
    nop
    ld h, a
    ld sp, $f7fe
    sbc [hl]
    db $e4
    ld sp, $0684
    ld sp, $778f
    inc a
    rst $20
    inc hl
    inc c
    ld h, b
    add hl, de
    adc $7b
    cp l
    rst $20
    add hl, sp
    sbc b
    ld b, e
    nop
    ld h, e
    add hl, de
    adc $f3
    sbc $e6
    ld h, b
    inc b
    nop
    add $33
    dec a
    rst $28
    rst $38
    ld hl, sp-$3e
    nop

jr_038_5add:
    nop
    add $63
    ld a, l
    rst $28
    rst $38
    ld hl, sp-$80
    nop
    nop

jr_038_5ae7:
    add $33
    inc a
    rst $20
    cp h
    ld hl, sp-$40
    ld [$2300], sp
    add hl, de
    sbc [hl]
    rst $30
    rst $38
    db $fc
    ld h, b
    nop
    nop
    ld [$7fc6], sp
    cp l
    rst $38
    rst $38
    jr jr_038_5b01

jr_038_5b01:
    nop
    inc bc
    add hl, de
    adc h
    rst $30
    ccf
    rst $38
    and $00
    nop
    nop
    inc sp
    jr jr_038_5add

    ld [hl], e
    rst $38
    cp $60
    nop
    nop
    inc bc
    add hl, de
    call z, $bff7
    rst $38
    and $00
    nop
    nop
    jr jr_038_5ae7

    ld h, a
    cp l
    rst $38
    rst $38
    jr nc, jr_038_5b27

jr_038_5b27:
    nop
    nop
    ld h, e
    ld sp, $f79c
    rst $38
    ld hl, sp-$40
    nop
    nop
    ld b, b
    add $63
    ld a, e
    rst $08
    rst $38
    pop af
    add b
    nop
    ld hl, $cc00
    ld h, e
    rst $38
    rst $18
    rst $38
    db $e3
    nop
    nop
    ld b, e
    nop
    ld h, [hl]
    inc sp
    ccf
    rst $28
    rst $38
    ld hl, sp-$80
    nop
    ld sp, $1880
    adc $67
    cp l
    rst $38
    sbc $30
    nop
    inc b
    jr nc, jr_038_5b5d

    adc h

jr_038_5b5d:
    ld h, h
    ld a, e
    rst $18
    rst $38
    di
    adc b
    nop
    ld h, e
    nop
    ld b, $31
    sub c
    rst $08
    ld a, a
    rst $38
    call z, JoypadTransitionInterrupt
    nop
    nop
    ld [$27c6], sp
    db $fd
    rst $38
    rst $38
    cp b
    add b
    nop
    jr nc, jr_038_5b7c

jr_038_5b7c:
    ld sp, $cf9c
    rst $38
    rst $38
    rst $38
    ld h, e
    nop
    nop
    nop
    nop
    add $73
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    add h
    nop
    nop
    nop
    ld bc, $cd18
    rst $38
    cp a
    rst $38
    rst $20
    nop
    nop
    nop
    nop
    ld [$67c6], sp
    db $fd
    rst $38
    rst $38
    jr c, jr_038_5ba4

jr_038_5ba4:
    nop
    stop
    inc sp
    sbc b
    rst $18
    rst $38
    rst $38
    cp $60
    nop
    nop
    ld b, b
    nop
    ld b, [hl]
    ld [hl], e
    ccf
    rst $38
    rst $38
    ld sp, hl
    ret nz

    nop
    nop
    add b
    nop
    call z, Call_038_7f67
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    nop
    nop
    adc $63
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    add b
    nop
    nop
    add b
    nop
    add $63
    add hl, sp
    rst $38
    rst $38
    ld hl, sp-$80
    nop
    nop
    ld [bc], a
    nop
    ld h, e
    add hl, sp
    sbc h
    rst $30
    rst $38
    db $fc
    ld h, b
    nop
    nop
    nop
    add b
    ld sp, $ce9c
    ld a, e
    rst $38
    cp $30
    nop
    nop
    ld sp, $1c90
    add $67
    cp a
    rst $38
    rst $38
    sbc b
    nop
    nop

jr_038_5bfd:
    inc c
    db $fc
    add [hl]
    ld h, e
    ld sp, $ffcf
    rst $38
    call nz, RST_00
    ld c, $ff
    pop hl

jr_038_5c0b:
    call z, $3962
    rst $08
    rst $38
    ld hl, sp-$80
    nop
    ld de, $fcff
    ld sp, $468c
    ld a, e
    rst $38
    cp $10
    nop
    ld b, $3f
    rst $38
    pop bc
    adc h
    ld h, [hl]
    inc sp
    rst $18
    rst $38
    pop af
    add b
    nop
    inc bc
    rst $18
    db $fc
    inc c
    add $33
    sbc [hl]
    rst $38
    rst $38
    adc h
    jr nz, jr_038_5c36

jr_038_5c36:
    rrca
    ld a, a
    ret nz

    ld b, d
    ld sp, $f78c
    rst $38
    cp $61
    nop
    nop
    rst $38
    cp $01
    jr jr_038_5c0b

    ld [hl], a
    rst $38
    rst $38
    ei
    add b

jr_038_5c4c:
    nop
    add hl, bc
    rst $08
    jr nc, @+$1a

jr_038_5c51:
    call z, $ff21
    rst $38
    rst $38
    sbc b
    nop
    nop
    rra
    di
    add c
    inc c
    jp nz, $ff1f

    rst $38
    db $fc
    nop
    nop
    rlca
    rst $28
    db $10
    ld h, e
    jr jr_038_5bfd

    rst $38
    rst $38
    ld a, a
    ret nz

    nop
    nop
    rst $38
    and $08
    add $04
    rst $38
    rst $38
    rst $18
    jr nc, jr_038_5c7a

jr_038_5c7a:
    nop
    ld e, $f8
    ld b, $33
    ld [bc], a
    ccf
    db $fd
    rst $28
    sbc h
    nop
    nop
    rrca
    rst $38
    add e
    jr jr_038_5c4c

    sbc a
    rst $38
    ei
    add $00
    nop
    ld h, e
    sbc [hl]

jr_038_5c93:
    inc c
    ld h, e
    ld b, $3b
    rst $38
    rst $38
    sbc h
    jr nz, jr_038_5c9c

jr_038_5c9c:
    ld e, $78
    ld sp, $188c
    rst $20
    rst $38
    cp $30
    add b
    ld [$017c], sp
    adc h
    ld [hl], b
    rst $00
    ld a, a
    rst $38
    pop af
    add h
    db $10
    jp Jump_000_1880


    rst $00
    inc e
    rst $30
    rst $38
    rst $38
    jr jr_038_5d1c

    add [hl]
    jr c, @-$3e

    add [hl]
    jr c, @-$1b

    sbc a
    ei
    sbc b
    and c
    adc h
    ld sp, $01c3
    adc h
    jr nc, jr_038_5c93

    sbc a
    ld a, e
    rst $38
    jr jr_038_5c51

    db $10
    inc bc
    jr @-$0b

    add $00
    ld h, e
    adc a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    sbc h
    rst $38
    rst $38
    db $fd
    db $fd
    rst $28
    ld a, [hl]
    jr c, jr_038_5ce8

jr_038_5ce8:
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    nop
    nop
    ld bc, $00bf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_038_5d1c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jp $8381


    di
    ret nc

    jp nz, Jump_038_7e00

    rra
    rst $38
    nop
    ld [bc], a
    ld e, a
    and c
    adc b
    rst $20
    ld a, a
    cp a
    call c, Call_000_1f13
    rst $28
    ld [hl], e
    nop
    rst $38
    pop bc
    inc hl
    rst $18
    rst $38
    jr nz, jr_038_5ed4

    db $fc
    inc de
    rra
    rst $38
    ret nz

    ld bc, $e0ff
    sbc c
    rst $38
    ldh a, [rP1]
    ccf
    db $fc
    inc b

jr_038_5ed4:
    rst $18
    db $fc
    nop
    rra
    ld hl, sp+$00
    sbc a
    db $fc
    nop
    ld e, a
    db $fd
    nop
    rla
    ld a, [hl]
    nop
    ld e, a
    rst $30
    inc bc
    inc b
    call c, $9fc0
    ret nc

    rlca
    pop hl
    inc sp
    add hl, sp
    ld bc, $7fb6
    ldh a, [$4e]
    db $ec
    inc bc
    rst $38
    add b
    ld a, h
    scf
    inc sp
    inc de
    cp $02
    ld a, [hl]
    add hl, bc
    call c, $ffc8
    add b
    rra
    dec b
    db $ec
    ld b, h
    ld a, [hl]
    ret nz

    rst $38
    add d
    or $22
    ld a, a
    ld b, b
    ld a, a
    add d
    or $23
    ccf
    nop
    ld a, a
    add d
    or $23
    ccf
    nop
    rst $38
    add d
    cp $01
    cp a
    add b
    rst $38
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    inc bc
    ldh a, [$1f]
    ldh [$1f], a
    ldh a, [$08]
    cp $03
    ld hl, sp+$03
    cp $01
    adc a
    ldh [$7f], a
    inc bc
    di
    ldh a, [rNR10]
    ld a, [hl]
    rlca
    ldh a, [$30]
    ld a, $00
    cp $07
    ld hl, sp+$07
    ldh [rIF], a
    ldh [$7f], a
    nop
    ld a, a
    add b
    ld a, [hl]
    inc bc
    db $fc
    rlca
    ldh a, [$1f]
    ret nz

    ld a, a
    add b
    ld a, a
    add c
    db $fc
    rrca
    ldh [$3f], a
    add b
    ccf
    add b
    ccf
    ld bc, $03fc
    ld hl, sp+$07
    ldh a, [$1f]
    ldh a, [rP1]
    ccf
    ld bc, $03fc
    cp $03
    ldh a, [$7c]
    ld e, $03
    ldh a, [$3f]
    add b
    rst $38
    add b
    ld a, a
    jp Jump_038_7f80


    ld bc, $07fc
    ldh [$3f], a
    ldh [$1f], a
    ret nz

    ld a, a
    ld bc, $01fe
    cp $01
    db $fc
    rlca
    ldh a, [$1f]
    ret nz

    cp $00
    rst $38
    ld bc, $01fc
    cp $03
    ldh a, [$1f]
    ret nz

    ccf
    ret nz

    ld a, a
    inc bc
    rst $38
    add b
    cp $01
    cp $03
    ld hl, sp+$0f
    ldh [$3f], a
    ldh [$3f], a
    add b
    ld a, a
    ret nz

    ld a, a
    rlca
    ldh a, [$1f]
    rrca
    ret nz

    cp $07
    ldh a, [$1f]
    add c
    ld hl, sp+$1f
    add e
    ldh a, [$3f]
    add e
    ldh a, [$1f]
    add e
    ldh a, [$1f]
    add e
    ldh a, [$3f]
    rlca
    ldh [$7e], a
    rlca
    ret nz

    db $fc
    rra
    add c
    ld hl, sp+$1f
    add c
    ld hl, sp+$3e
    inc bc
    ldh [$7c], a
    rlca
    pop bc
    ld hl, sp+$1f
    rlca
    ldh [$7c], a
    rra
    add c
    ld hl, sp+$3e
    inc bc
    ldh [$f8], a
    rra
    add e
    ldh [$3e], a
    rrca
    add c
    ld hl, sp+$3f
    inc bc
    ldh [$f8], a
    rra
    add e
    ldh [$7e], a
    rrca
    add c
    ld hl, sp+$3e
    rlca
    pop bc
    ld hl, sp+$1f
    rlca
    ldh [$7c], a
    rra
    inc bc
    ldh [$fc], a
    rrca
    add e
    ldh a, [$3e]
    rrca
    add c
    ldh a, [$7e]
    rlca
    pop bc
    ldh a, [$3f]
    rrca
    ret nz

    ld hl, sp+$3f
    rlca
    ldh [$f8], a
    rra
    rlca
    ret nz

    ld a, h
    rra
    inc bc
    ldh a, [$fc]
    rrca
    add e
    ldh [$7c], a
    rra
    add c
    ldh a, [$fc]
    rrca
    add e
    ldh [$7c], a
    rra
    add e
    ldh [$fc], a
    rra
    add e
    ldh [$7c], a
    rra
    inc bc
    ldh [$f8], a
    rra
    rrca
    add c
    ld hl, sp+$0f
    rlca
    ret nz

    cp $1e
    rrca
    pop bc
    ld hl, sp+$1f
    rlca
    pop bc
    ld hl, sp-$08
    ld e, $0f
    add c
    ldh a, [$7c]
    rrca
    ldh a, [rIF]
    pop bc
    cp $03
    ld hl, sp+$1f
    add e
    ld hl, sp+$0e
    ccf
    rlca
    ldh a, [$3f]
    nop
    rst $38
    ldh [$7f], a
    add b
    rra
    db $fc
    rra
    inc bc
    ldh [$3e], a
    ld a, $07
    ldh [$fc], a
    rrca
    rrca
    ret nz

    ld hl, sp+$1f
    inc bc
    pop bc
    ld hl, sp+$3e
    rrca
    ret nz

    ld hl, sp+$3e
    rlca
    add c
    ldh a, [$3e]
    rrca
    add c
    ldh a, [$7c]
    rrca
    inc bc
    ldh a, [rNR34]
    rra
    add c
    ldh a, [$7c]
    rlca
    add e
    ldh [$7c], a
    rra
    nop
    ldh a, [$fc]
    rlca
    add a
    ldh [rNR32], a
    ccf
    nop
    ldh a, [$fc]
    rlca
    add a
    ldh [rNR32], a
    rra
    nop
    pop hl
    db $fc
    inc bc
    add a
    ldh [$3c], a
    ccf
    add b
    ldh a, [$fc]
    rlca
    rlca
    ldh [$3c], a
    ccf
    nop
    pop bc
    ld hl, sp+$0e
    rrca
    ret nz

    ldh [$fe], a
    inc bc
    add e
    ldh a, [$08]
    ccf
    add b
    ld [hl], b
    db $fc
    inc bc
    rlca
    ldh a, [rNR32]
    ccf
    nop
    pop hl
    db $fc
    rlca
    adc a
    ldh [rNR23], a
    ld a, a
    ld bc, $f8e1
    rlca
    rrca
    ldh [$38], a
    ld a, a
    ld bc, $f8c3
    rrca
    rrca
    ret nz

    ld h, b
    ld a, a
    ld bc, $f8c3
    inc c
    rra
    ret nz

jr_038_60f8:
    jr c, jr_038_60f8

    inc bc
    add e
    ldh a, [rP1]
    ccf
    ret nz

    ld [hl], b
    cp $00
    rrca
    ldh a, [rNR23]
    ld a, a
    nop
    inc bc
    db $fc
    nop
    rra
    ret nz

    jr c, jr_038_618e

    nop
    rla
    ld hl, sp+$01
    rra
    ret nz

    ld [$01fe], sp
    rlca
    ldh a, [rSB]
    ld a, a
    add b
    inc bc
    db $fc
    nop
    ld e, a
    ldh [rP1], a
    cp $00
    rlca
    ldh a, [rP1]
    ccf
    add b
    ld bc, $00fc
    rra
    ldh [rP1], a
    rst $38
    nop
    rlca
    ld hl, sp+$00
    ccf
    call z, $fe00
    nop
    rlca
    db $fc
    nop
    ccf
    ret nz

    nop
    rst $38
    ret nz

    rlca
    di
    nop
    rra
    db $e4
    ld bc, $e0ff
    rlca
    rst $38
    add b
    rra
    cp $00
    ld a, a
    sbc b
    ld b, $7e
    nop
    rra
    rst $38
    inc bc
    rra
    call z, $9f03
    ldh [rTAC], a
    dec sp
    call z, $f743
    ldh [$0e], a
    ld a, a
    adc b
    inc c
    rst $20
    ld bc, $fe11
    jp $e719


    ret nz

    db $10
    db $fc
    add [hl]
    dec sp
    adc $00
    rst $20
    ldh a, [$80]
    ld a, h
    ld hl, sp+$18
    ccf
    ld h, c
    adc $63
    sbc b
    add a
    cp $61
    adc $71
    add b
    sbc $fe
    inc bc
    rra
    rst $08
    inc bc
    db $e3
    rst $00

jr_038_618e:
    add a
    db $e3
    rst $00
    jp $e1c1


    ld c, $73
    dec e
    add a
    rrca
    add $1c
    rst $20
    add hl, sp
    adc a
    db $e3
    add b
    ld [hl], c
    call c, Call_038_7f20
    inc e
    rrca
    ccf
    add a
    add h
    pop hl
    sub b
    ld a, h
    ld a, b
    jr jr_038_61ee

    rst $38
    rrca
    cp e
    ret nz

    ld bc, $f0ff
    db $10
    ld a, a
    ld hl, sp+$1f
    cp [hl]
    nop
    inc bc
    rst $38
    add b
    ld [hl], c
    ld hl, sp+$30
    rra
    db $fc
    jr nz, jr_038_61e4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_038_61e4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_038_61ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fff7
    ret


    xor h
    ld h, [hl]
    ld c, b
    adc d
    ld b, h
    ld c, a
    ld [hl], a
    ld d, $49
    ld a, [de]
    adc a
    dec d
    ld d, l
    ld e, c
    ld c, e
    ld d, h
    or [hl]
    or [hl]
    ld d, d
    ld e, e
    ld d, l
    dec hl
    ld d, b
    xor l
    ld [hl], l
    xor e
    or l
    reti


    ld d, l
    ld c, d
    or d
    xor l
    ld l, b
    xor l
    ld d, [hl]
    ld c, d
    ld c, e
    ld l, e
    ld e, d
    call nc, $aaa2
    sub h
    push de
    ld h, d
    ret


    ld d, [hl]
    xor d
    xor c
    ld d, d
    jp hl


    and l
    ld a, [hl+]
    ld e, d
    ld c, d
    call nc, Call_038_5695
    or l
    dec h
    ld c, l
    db $76
    jp nc, Jump_038_594d

    ld c, d
    xor h
    ld d, d
    xor l
    add hl, hl
    ld d, l
    ld h, l
    xor d
    ld d, d
    ld d, e
    ld c, e
    ld d, [hl]
    sub h
    xor l
    ld c, h
    or d
    sub h
    call $a552
    ld l, d
    ld d, l
    inc hl
    ld l, c
    ld l, c
    dec [hl]
    sub l
    add hl, hl
    ld h, l
    sub d
    jp c, Jump_000_2969

    ld [de], a
    sub l
    inc sp
    or [hl]
    sbc d

jr_038_6361:
    dec l
    dec l
    sub e
    ld l, e
    ld c, c
    ld e, c
    dec [hl]
    ld h, l
    ld c, d
    ld l, e
    ld l, h
    sub $cc
    or [hl]
    jp hl


    add hl, de
    add l
    sub [hl]
    jp c, $adbd

    sbc c
    ld [hl], $60
    db $10
    dec h
    sub [hl]
    rst $28
    cp $c9
    inc [hl]
    ld de, $2473
    sub d
    ld c, d
    rst $38
    cp a
    ld e, a
    rst $10
    jr z, jr_038_6398

    sub b
    nop
    ld bc, $f7df
    rst $38
    rst $30
    db $db
    ld [c], a
    ld h, [hl]
    nop
    inc bc
    dec sp

jr_038_6398:
    rst $38
    rst $38
    db $fd
    db $ed
    sub h
    ld d, c
    adc b
    ld hl, $ff8d
    rst $38
    db $ed
    sbc e
    jr nz, jr_038_63c0

    add b
    nop
    rst $08
    rst $38
    rst $38
    rst $28
    ld [hl-], a
    ld h, h
    ld [hl], e
    nop
    inc bc
    rra
    rst $28
    db $fd
    db $fc
    ld b, c
    ld bc, $088c
    sbc h
    rst $38
    rst $38
    rst $38
    or e
    sub b

jr_038_63c0:
    inc c
    ld h, b
    inc h
    rst $20
    rst $38
    rst $38
    ld a, c
    sub h
    ld b, b
    ld h, [hl]
    ld [hl+], a
    ld c, [hl]
    ld a, a
    rst $38
    di
    sbc c
    add d
    ld b, $33
    ld [hl], $77
    rst $38
    rst $28
    jr jr_038_6361

    jr nc, jr_038_643e

    ld de, $3f27
    cp $f9
    ret nz

    ld bc, $1903
    sbc e
    dec sp
    rst $28
    rst $38
    adc [hl]
    nop
    nop
    ld [$d9c4], sp
    rst $08
    cp a
    sbc $30
    add b
    nop
    ld h, e
    inc de
    ld h, a
    ld a, $fe
    ld [hl], b
    jp nz, RST_00

    call z, $df4c
    ei
    sbc $21
    inc c
    ld [hl+], a
    ld bc, $598c
    rst $18
    ei
    call c, Call_000_0423
    ld h, d
    ld bc, $998c
    rst $38
    rst $38
    ret c

    ld hl, $6304
    nop
    adc h
    ld c, l
    rst $38
    rst $38
    call z, $0600
    ld [hl], e
    add b
    ld h, e
    rlca
    rst $38
    rst $38
    ld a, [c]
    nop
    inc bc
    db $fc
    ldh [$0c], a
    ld h, d
    rst $38
    rst $38
    db $fc
    ld b, b
    nop
    ld [hl], a
    db $fc
    nop
    adc h
    ld c, a
    rst $38
    rst $38
    call nz, $0f00
    rst $38
    ret nz

    inc b

jr_038_643e:
    ld h, [hl]
    ld a, a
    rst $38
    db $fc
    nop
    nop
    ld a, a
    rst $38
    nop
    ld de, $ff9b
    rst $38
    ldh a, [rP1]
    inc bc
    rst $38
    ld hl, sp+$00
    ld h, e
    scf
    rst $38
    cp $60
    nop
    ld b, a
    rst $38
    ldh a, [rP1]
    ld h, e
    ccf
    rst $38
    db $fc
    ld b, b
    nop
    rst $28
    rst $38
    ldh [rP1], a
    ld hl, $ffbf
    db $fc
    jr nz, jr_038_646b

jr_038_646b:
    ld a, a
    rst $38
    ldh a, [rP1]
    ld [$ffcf], sp
    cp $00
    ld [bc], a
    ccf
    rst $38
    ld hl, sp+$00
    inc bc
    dec de
    rst $38
    db $fd
    ret nz

    nop
    rst $28
    rst $38
    db $fc
    nop
    nop
    ld h, e
    ld a, a
    rst $38
    jr c, jr_038_6489

jr_038_6489:
    dec e
    rst $38
    rst $38
    add b
    nop
    ld b, $37
    rst $38
    di
    add b
    ld bc, $ffff
    ld hl, sp+$00
    nop
    inc sp
    ccf
    rst $38
    inc e
    ld [bc], a

Jump_038_649e:
    rra
    rst $38
    rst $38
    add b
    nop
    ld bc, $ff99
    ld hl, sp-$20
    jr @+$01

    rst $38
    db $fc
    nop
    nop
    inc b
    ld l, a
    rst $38
    db $e3
    nop
    inc bc
    rst $38
    rst $38
    jr nc, jr_038_64b8

jr_038_64b8:
    nop
    ld de, $ffbf
    adc h
    nop
    rra
    rst $38
    cp $00
    nop
    nop
    ld h, [hl]
    ld a, a
    rst $38
    stop
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    adc $ff
    cp $30
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld c, [hl]
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld b, [hl]
    ld a, a
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
    rrca
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    cp $00
    nop
    nop
    nop
    ccf
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
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
    ccf
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
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
    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rlca
    rst $38
    rst $38
    ret nz

    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    cp $00
    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
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
    ccf
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
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
    ld hl, sp+$00
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    cp $00
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
    rra
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    ld a, [c]
    nop
    rrca
    rst $38
    rst $38
    add b
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
    rra
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    cp $00
    ld bc, $ffff
    ld hl, sp+$00
    nop
    rrca
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rra
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    ld a, a
    rst $38
    ret nz

    nop
    rra
    rst $38
    cp $40
    nop
    rrca
    rst $38
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ld h, b
    nop
    ld bc, $ffff
    add b
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ret c

    nop
    ld bc, $ffdf
    nop
    nop
    rst $38
    rst $38
    or b
    nop
    inc bc
    cp a
    db $fc
    nop
    inc bc
    rst $38
    cp $60
    nop
    dec e
    rst $38
    ldh a, [rP1]
    ld c, $ff
    ld sp, hl
    nop
    inc b
    rst $20
    rst $38
    add b
    nop
    ld [hl], a
    rst $38
    ret z

    nop
    ld b, $7f
    ld hl, sp+$00
    rlca
    ld a, a
    db $fc
    add b
    nop
    rst $28
    rst $38
    nop
    ld [bc], a
    ld l, a
    rst $38
    sbc b
    nop
    add hl, sp
    rst $38
    ldh [rP1], a
    sbc l
    rst $38
    ld [c], a
    nop
    ld c, $7f
    ld hl, sp+$00
    cpl
    rst $38
    ld hl, sp+$00
    rlca
    ld a, a
    ld hl, sp+$00
    rlca
    rst $38
    ld hl, sp+$00
    rlca
    ccf
    db $fc
    nop
    rlca
    rst $38
    db $fc
    nop
    rlca
    ld [hl], a
    ld hl, sp+$00
    rlca
    rst $38
    ld hl, sp+$00
    ld c, $ff
    ldh a, [rP1]
    rrca
    rst $38
    ldh a, [rP1]
    inc sp
    rst $38
    call nz, Call_000_3f00
    rst $38
    ret nz

    ld bc, $ffcf
    jr nc, jr_038_675f

jr_038_675f:
    rst $38
    cp $00
    jr @+$01

    ld sp, hl
    nop
    rlca
    rst $38
    and b
    ld bc, $ffcf
    sbc b
    nop
    ld a, a
    ld a, [$1900]
    rst $18
    cp $00
    dec b
    rst $38
    ld b, b
    inc bc
    ccf
    rst $38
    ret nz

    ld bc, $e0bf
    nop
    rst $00
    rst $38
    ld hl, sp+$00
    ccf
    ld hl, sp+$00
    inc sp
    rst $38
    db $fc
    nop
    inc de
    rst $38
    add b
    inc c
    ld a, a
    rst $38
    add b
    nop
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    ldh [rP1], a
    ccf
    ld hl, sp+$01
    dec e
    rst $38
    ldh a, [rP1]
    ccf
    ret nz

    inc hl
    rra
    rst $38
    ldh a, [rP1]
    ccf
    ldh [rSB], a
    adc a
    rst $38
    or b
    nop
    ld a, a
    ldh [$33], a
    rra
    rst $38
    ldh a, [rP1]
    ld a, a
    ldh [rNR44], a
    rra
    rst $38
    ldh a, [rP1]
    ld a, a
    ret nz

    call z, $ff77
    ret nz

    ld h, b
    rst $38
    ld bc, $ff98
    rst $38
    nop
    rst $08
    db $fc
    inc b
    rst $20
    ei
    sbc b
    ld b, $7f
    ldh [rNR44], a
    rra
    cp $e0
    inc sp
    rst $38
    ld bc, $ff30
    rst $38
    ld bc, $f83f
    inc de
    adc a
    rst $38
    jr nc, @+$1d

    cp $81
    jr nc, @+$01

    di
    ld bc, $e0bf
    inc de
    adc a
    ei
    jr nc, @+$1d

    db $fc
    ld [bc], a
    ld [hl], e
    rst $38
    ld h, $01
    rst $38
    ret nz

    ld b, [hl]
    ccf
    db $fc
    ret nz

    scf
    ld hl, sp+$08
    rst $00
    rst $38
    sbc h
    ld b, $ff
    ld bc, $ff18
    ei
    add b
    rst $38
    ldh [$27], a
    ccf
    cp $60
    ccf
    ld hl, sp+$08
    rst $00
    rst $38
    sbc b
    rlca
    cp $02
    ld sp, $e6ff
    ld bc, $c0ff
    adc h
    ld a, a
    ld sp, hl
    add b
    ld a, a
    ldh [rNR44], a
    rra
    cp $40
    rra
    ld hl, sp+$09
    add $ff
    sub b
    rrca
    cp $06
    ld [hl], e
    rst $38
    db $fc
    inc bc
    ld a, a
    add c
    jr @+$01

    di
    nop
    rst $38
    ret nz

    call z, $ff7f
    add b
    ld l, a
    ldh [$27], a
    dec de
    cp $c0
    rra
    ld hl, sp+$19
    rst $08
    rst $38
    ld hl, sp+$0d
    cp $04
    ld h, e
    ld a, a
    call c, $ff03
    ld bc, $df39
    di
    nop
    rst $38
    ret nz

    ld c, [hl]
    ld [hl], a
    db $fc
    ret nz

    ccf
    ldh a, [rNR13]
    adc l
    db $fd
    jr nc, jr_038_6878

    db $fc
    inc b
    ld h, e
    rst $38
    call c, $ff02
    add b
    sbc b
    rst $38
    jp hl


    add b
    sbc a
    ldh a, [rNR44]

jr_038_6878:
    rra
    rst $38
    ld [hl], b
    inc de
    db $fc
    inc b
    ld h, e
    rst $38
    cp $02
    rst $38
    add b
    adc h
    ld a, a
    rst $30
    ret nz

    ld e, a
    db $fc
    ld bc, $ff8f
    cp b
    dec c
    rst $38
    ret nz

    jr @+$01

    rst $20
    add b
    sbc a
    ld hl, sp+$13
    rrca
    cp $70
    add hl, de
    rst $38
    ret nz

    jr nc, @+$01

    rst $30
    nop
    sbc a
    db $fc
    ld bc, $ff8f
    jr nc, jr_038_68b2

    rst $38
    ret nz

    ld [$fb7f], sp
    add b
    ld c, a
    cp $00

jr_038_68b2:
    ld h, e
    ld a, a
    cp h
    ld [bc], a
    ld a, a
    ldh a, [rNR13]
    dec c
    rst $38
    ldh a, [$09]
    sbc a
    ret nz

    ld c, h
    scf
    rst $38
    ldh [rNR52], a
    ld a, a
    add c
    sbc b
    rst $18
    rst $38
    add b
    add h
    rst $38
    ld bc, $ff31
    rst $38
    ld bc, $fe01
    inc bc
    ld sp, $ffbf
    ld bc, $fe01
    nop
    db $10
    rst $18
    rst $38
    jr nz, jr_038_68e1

    rst $38

jr_038_68e1:
    ret nz

    inc c
    ld h, a
    rst $38
    ret nc

    nop
    ld a, a
    ldh a, [rNR11]
    dec c
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    nop
    ld de, $ffdf
    nop
    nop
    rst $38
    db $fc
    nop
    add [hl]
    rst $38
    ld sp, hl
    nop
    ld b, $ff
    ld hl, sp+$01
    adc l
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ldh a, [rP1]
    adc $ff
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    add b
    inc c
    rst $28
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld c, $f7
    ldh a, [rP1]
    rlca
    rst $38
    ld hl, sp+$00
    scf
    ldh a, [$09]
    call z, Call_038_79fe
    nop
    adc h
    rst $38
    rst $38
    add b
    call z, $806f
    sbc b
    rst $08
    rst $38
    ldh a, [$08]
    rrca
    rst $38
    ld hl, sp+$00
    ld c, a
    rst $38
    ld sp, hl
    nop
    nop
    sbc $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld l, a
    rst $38
    ld bc, $ff81
    db $fd
    add b
    ld bc, $33e0
    inc de
    rst $38
    db $fc
    nop
    ld bc, $feff
    nop
    nop
    rst $38
    cp $00
    ld bc, $ffff
    nop
    nop
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ld [hl-], a
    db $10
    inc c
    rst $28
    or $00
    ld [$9900], sp
    sbc a
    pop bc
    jr nc, jr_038_6993

    rst $38
    rst $38
    ld a, a
    dec d
    ld a, a
    ld a, a
    ld [bc], a
    rst $38
    ld bc, $026f
    ld e, $0e
    ld [$a020], sp
    adc a
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    add sp, -$4f
    rst $38
    rst $38
    rst $38

jr_038_6993:
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
    cp $00
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $00
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
    db $fc
    ld [bc], a
    ld [hl], a
    ret nz

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
    nop
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    rlca
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
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    db $fd
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    inc e
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc [hl]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [bc], a
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
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    nop
    ld [bc], a
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
    inc bc
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
    ld [bc], a
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
    inc de
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    scf
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
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
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
    ld bc, $ffff
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
    or $00
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
    ld bc, $ffff
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
    ccf
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
    ldh [rP1], a
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
    nop
    ccf
    rst $38
    rst $38
    rst $38
    or b
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
    ret nz

    nop
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
    ld bc, $ffff
    rst $38
    cp $c0
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $80
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
    nop
    nop
    nop
    nop
    ccf
    rst $38
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
    pop af
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
    rst $38
    ldh [rP1], a
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
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $30
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
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $0000
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $28
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
    ldh [rP1], a
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    or b
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    sbc $00
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
    ccf
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $ffff
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
    add b
    rrca
    rst $38
    add b
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    ld hl, sp+$00
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
    rst $38
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
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$3c]
    rrca
    rra
    add e
    ldh [$e0], a
    ld a, h
    ld a, $06
    inc bc
    ld [c], a
    ldh a, [$b8]
    ld [$0f0f], sp
    ld e, e
    ei
    ldh a, [$5e]
    ld e, a
    ld a, a
    call z, $ddc9
    ld e, h
    cpl
    add c
    ei
    ret nz

    ld hl, sp+$3e
    ld e, $0f
    add e
    pop bc
    ldh [$f8], a
    dec a
    rrca
    db $fc
    rrca
    add a
    rst $00
    ldh [$f0], a
    ld a, b
    ld a, $1f
    rlca
    jp $fef0


    cp a
    ret nz

    ld b, $33
    db $fc
    cp a
    db $e4
    rrca
    ret nz

    add c
    ld a, [hl]
    ld hl, sp+$1f
    ldh a, [$34]
    rst $38
    ret nc

    nop
    ld a, b
    nop
    ld a, a
    rst $38
    rst $08
    and b
    ld bc, $0000
    nop
    add hl, bc
    ccf
    rst $38
    rst $38
    db $fc
    nop
    rra
    nop
    nop
    rra
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    ld hl, sp+$0f
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    adc a
    rst $38
    pop af
    nop
    nop
    nop
    rrca
    rst $38
    pop hl
    rst $38
    push af
    rst $38
    rrca
    ldh a, [rSC]
    ret nz

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$03
    ret nz

    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    ldh a, [rTAC]
    ld hl, sp+$03
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ei
    rst $38
    pop bc
    rst $38
    add b
    ld h, b
    nop
    nop
    cp a
    cp $ff
    rst $38
    rst $38
    ld hl, sp+$01
    cp $81
    ld hl, sp+$01
    ld hl, sp+$00
    inc bc
    rst $38
    rst $38
    rst $38
    rlca
    ldh a, [rP1]
    nop
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    ldh [$03], a
    ldh [$03], a
    ldh [rP1], a
    ld a, a
    rst $28
    rst $38
    ld sp, hl
    rst $38
    ldh [rP1], a
    nop
    nop
    dec de
    db $fc
    ld a, a
    rst $38
    rst $38
    db $fc
    ld bc, $00f8
    or b
    nop
    cp $00
    jr nc, @+$21

    cp $7f
    ret nz

    ccf
    add b
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$03
    ret nz

    nop
    rst $38
    db $d3
    rst $38
    ret nz

    rst $38
    ld bc, $e080
    nop
    ld bc, $97fe
    rst $38
    rst $08
    rst $38
    ret nz

    ld a, a
    ret nz

    rra
    add b
    ld [bc], a
    nop
    ccf
    db $fc
    ld a, a
    ld hl, sp+$1f
    add sp, $07
    ldh a, [rTAC]
    add b
    ccf
    cp $ff
    rst $38
    rst $38
    ldh a, [rNR34]
    nop
    nop
    ld a, h
    nop
    nop
    rst $38
    rst $18
    rst $38
    rlca
    cp $00
    stop
    jr nc, jr_038_6fed

jr_038_6fed:
    rra
    ldh a, [$7f]
    db $fd
    rst $38
    pop bc
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    ld e, $01
    ldh [rP1], a
    ccf
    db $fc
    sbc a
    pop af
    rst $38
    ld hl, sp+$10
    jr c, jr_038_700c

jr_038_700c:
    ret nz

    nop
    db $fc
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    nop
    ldh a, [$0e]
    nop
    inc bc
    rst $38
    rst $38
    cp $7f
    rst $38
    ldh [rP1], a
    nop
    ld h, b
    nop
    rra
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld [hl], b
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
    ld [bc], a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
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
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

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
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$08], a
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    db $fd
    rst $38
    add b
    nop
    nop
    ld b, $0f
    rst $38
    db $e3
    rst $38
    db $fc
    ld a, a
    add b
    nop
    nop
    nop
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld bc, $0000
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
    rra
    ei
    ld a, a
    rst $38
    rst $38
    rst $18
    add b
    nop
    nop
    nop
    ld e, b
    ccf
    db $e3
    rst $38
    rst $38
    db $fc
    sbc b
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    or $24
    nop
    nop
    nop
    nop
    rra
    rst $30
    rst $38
    rst $38
    rst $38
    dec bc
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, $00
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    inc e
    nop
    nop
    nop
    ld bc, $ff7f
    rst $38
    rst $38
    rst $38
    ldh a, [$3c]
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    cp a
    rst $38
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
    rst $38
    rst $38
    ld hl, sp+$01
    add b
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
    rrca
    ret nz

    ld bc, $0080
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    ldh a, [rP1]
    nop
    jr jr_038_7139

jr_038_7139:
    rrca
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rlca
    cp $2f
    ret nz

    rrca
    ldh [rP1], a
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ret nz

    inc bc
    ret nz

    inc b
    nop
    nop
    rra
    ld sp, hl
    cp $0f
    cp $0f
    ldh [$3f], a
    ret nz

    jr nc, jr_038_7167

jr_038_7167:
    rlca
    ld hl, sp-$01
    db $fd
    cp a
    rst $38
    rst $38
    rlca
    db $f4
    nop
    nop
    nop
    ccf
    rst $28
    cp $1f
    rst $38
    rst $38
    ret nz

    ld a, a
    ret nz

    nop
    nop
    ld bc, $ff9f
    rst $38
    rst $38
    rst $38
    db $fc
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
    jr c, jr_038_7198

    nop
    nop
    nop
    scf
    rst $38
    rst $38

jr_038_7198:
    rst $38
    rst $38
    rst $38
    ldh [rTAC], a
    add b
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp RST_00


    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$80], a
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld a, b
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
    rlca
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
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld hl, $ffff
    rst $18
    rst $38
    db $fc
    ld h, b
    jr nc, jr_038_71ed

jr_038_71ed:
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld c, $00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    add e
    ldh [rP1], a
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    add b
    nop
    nop
    nop
    ld b, a
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    adc h
    add hl, bc
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
    ld [bc], a
    inc l
    nop
    nop
    nop
    rlca
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $03
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$1b
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, a
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    ld a, [hl]
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld hl, sp+$47
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
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
    ld hl, sp-$7f
    or b
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
    ldh a, [rP1]
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rTAC]
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $20
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp+$3f
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
    jp Jump_000_00f8


    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ldh [$e0], a
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
    ld hl, sp+$00
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
    ldh [$3c], a
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
    push hl
    db $e3
    add b
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
    add b
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
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
    rst $38
    db $fd
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rlca
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
    db $fc
    sbc a
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nc

    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $0f
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    add c
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp+$02
    sub b
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
    add sp, $1f
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $5a
    stop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, [hl]
    inc a
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
    ldh a, [$36]
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
    cp $c0
    ld bc, $0000
    nop
    nop
    nop
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
    rst $00
    jp $0080


    nop
    nop
    nop
    rra
    db $fc
    ccf
    rst $38
    rst $20
    rst $38
    add c
    pop af
    ld [hl], b
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    pop hl
    ldh a, [$f2]
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$8967]
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ld b, c
    ld a, h
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
    rlca
    ldh [rIF], a
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    add hl, bc
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    ld hl, $00fe
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
    ld l, e
    rst $18
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
    rst $38
    ld hl, sp+$1f
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld hl, sp+$7c
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
    sub a
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
    rst $38
    call $809f
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rSB]
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rSVBK], a
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rNR50]
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
    rst $38
    ld hl, sp+$72
    inc a
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
    cp $4c
    inc a
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
    cp $9e
    rra
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $0f
    ld b, $00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    jp nz, $8003

    ld [hl], b
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld hl, sp+$0e
    ld c, a
    sub b
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
    cp $48
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
    ld sp, hl
    ld a, [hl-]
    rlca
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
    cp $1c
    ld bc, $0038
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
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    ccf
    ld l, b
    ld [$0000], sp
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
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ld h, b
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
    rst $38
    rst $38
    ldh [rP1], a
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
    ld [bc], a
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
    rst $38
    or $c1
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    add b
    ld [hl], $00
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
    rlca
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
    ld sp, hl
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
    rst $38
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
    cp $40
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
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld bc, $ffff
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
    rst $38
    ld h, b
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
    ld e, a
    rst $38
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
    ld [bc], a
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
    ld bc, $df7f
    rst $38
    inc [hl]
    ld b, b
    nop
    sub a
    rst $38
    rst $38
    rst $38
    ld e, l
    nop
    nop
    dec a
    rst $38
    rst $38
    rst $38
    inc l
    nop
    nop
    ld [bc], a
    cp l
    rst $38
    rst $38
    xor $00
    nop
    nop
    rla
    rst $38
    rst $38
    ret c

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
    cp $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    ld bc, $8976
    rst $38
    rst $28
    ld d, b
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    ld bc, $ffff
    cp $00
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
    cpl
    rst $38
    rst $38
    ldh a, [rP1]
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
    ld a, a
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
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    rrca
    rst $38
    ld hl, sp+$00
    nop
    inc sp
    ld e, b
    add b
    ld d, $fb
    jp c, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_79fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $ffb7
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
    rra
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
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
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    ld c, c
    add b
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
    rst $38
    ret nz

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
    rst $38
    add b
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
    ld hl, sp+$00
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
    ld a, a
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
    ld bc, $ffff
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
    nop
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
    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    ccf
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
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
    ccf
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rlca
    ld hl, sp+$00
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ccf
    ret nz

    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    nop
    inc bc
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    rra
    cp $00
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ldh a, [rP1]
    nop
    nop
    cp a
    rst $38
    rst $38
    ld hl, sp+$01
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    add b
    ccf
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rTAC]
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    cp $0f
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [$1f]
    rst $38
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rNR24], a
    ld a, $00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    jr nz, jr_038_7cf6

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
    ld bc, $ffff
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
    ld bc, $ffff
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
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38

jr_038_7cf6:
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
    ldh [rP1], a
    nop
    ld a, a
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    ld bc, $ff3f
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $04
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ld h, b
    call $f0ff
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    db $fc
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $00
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
    rst $38
    rst $18
    rst $38
    jr nz, jr_038_7d61

jr_038_7d61:
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    cp a
    db $e4
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    pop af
    ldh [$0e], a
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ld bc, $30c0
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$6f
    scf
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    ld b, $ef
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, h
    rra
    ldh [rP1], a
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    add b
    ld [hl-], a
    ld l, a
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $00
    ld c, a
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $fd
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
    pop af
    db $fc
    ld a, a
    add b
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    jp nz, $b0ff

    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    ld h, a
    add sp, $00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    cp $7f
    rst $38
    ld a, [c]
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38

Jump_038_7e00:
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
    rst $20
    db $fc
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $09
    and e
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$1a
    ld c, a
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
    cp a
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
    rst $38
    db $fd
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
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $fd
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
    db $fc
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
    ld bc, $ffff
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
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $80
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
    ld a, [$0000]
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
    nop
    ccf
    rst $38
    rst $38
    rst $38
    cp $c0
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    add sp, $00
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_7f20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_7f67:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7f80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7ff0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
