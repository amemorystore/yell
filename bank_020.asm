;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    rst $38
    rst $38
    rst $38
    rlca
    db $ec
    ld b, c
    rlca
    ldh a, [rSTAT]
    rlca
    db $f4
    ld b, c
    rlca
    ld hl, sp+$41
    rlca
    db $fc
    ld b, c
    rlca
    rrca
    ld b, d
    rlca
    inc de
    ld b, d
    rlca
    ld a, [de]
    ld b, d
    rlca
    ld e, $42
    rlca
    ld [hl+], a
    ld b, d
    rlca
    ld h, $42
    rlca
    ld a, [hl+]
    ld b, d
    rlca
    ld l, $42
    rlca
    ld [hl-], a
    ld b, d
    rlca
    ld [hl], $42
    rlca
    dec a
    ld b, d
    rlca
    ld b, h
    ld b, d
    rlca
    ld c, b
    ld b, d
    rlca
    ld c, h
    ld b, d
    add h
    db $db
    ld b, l
    dec b
    ld [$0745], a
    ld sp, hl
    ld b, l
    add h
    db $eb
    ld b, a
    dec b
    cp $47
    rlca
    ld de, $8448
    ld h, b
    ld b, a
    dec b
    ld l, a
    ld b, a
    rlca
    ld a, l
    ld b, a
    add h
    ld a, [$0544]
    add hl, de
    ld b, l
    rlca
    jr c, @+$47

    add h
    xor c
    ld c, b
    dec b
    ret z

    ld c, b
    rlca
    rst $20
    ld c, b
    add h
    adc c
    ld b, [hl]
    dec b
    sbc h
    ld b, [hl]
    rlca
    xor [hl]
    ld b, [hl]
    add h
    inc sp
    ld b, [hl]
    dec b
    ld c, l
    ld b, [hl]
    rlca
    ld c, [hl]
    ld b, [hl]
    add h
    ld h, c
    ld b, [hl]
    dec b
    ld [hl], b
    ld b, [hl]
    rlca
    ld a, a
    ld b, [hl]
    add h
    ld a, c
    ld c, b
    dec b
    adc h
    ld c, b
    rlca
    sbc a
    ld c, b
    add h
    add e
    ld b, e
    dec b
    and b
    ld b, e
    rlca
    pop bc
    ld b, e
    add h
    ld e, $48
    dec b
    dec a
    ld c, b
    rlca
    ld h, b
    ld c, b
    add h
    xor a
    ld b, [hl]
    dec b
    jp c, Jump_000_0746

    ld sp, hl
    ld b, [hl]
    add h
    ld [de], a
    ld b, a
    dec b
    add hl, sp
    ld b, a
    rlca
    ld e, a
    ld b, a
    add h
    ld a, [hl]
    ld b, a
    dec b
    sbc l
    ld b, a
    rlca
    call z, $8447
    inc bc
    ld b, [hl]
    dec b
    ld d, $46
    rlca
    add hl, hl
    ld b, [hl]
    add h
    ld b, l
    ld b, l
    dec b
    ld h, b
    ld b, l
    rlca
    ld a, e
    ld b, l
    add h
    adc e
    ld b, l
    dec b
    xor [hl]
    ld b, l
    rlca
    pop de
    ld b, l
    add h
    ld h, a
    ld b, h
    dec b
    add [hl]
    ld b, h
    rlca
    xor c
    ld b, h
    add h
    ld a, a
    ld c, c
    dec b
    sub d
    ld c, c
    rlca
    and l
    ld c, c
    add h
    or d
    ld c, c
    dec b
    call $0749
    add sp, $49
    add h
    ei
    ld c, c
    dec b
    ld a, [bc]
    ld c, d
    rlca
    add hl, de
    ld c, d
    add h
    adc c
    ld c, d
    dec b
    and h
    ld c, d
    rlca
    cp a
    ld c, d
    add h
    inc e
    ld c, c
    dec b
    dec hl
    ld c, c
    rlca
    ld a, [hl-]
    ld c, c
    add h
    jp nc, Jump_000_054a

    push hl
    ld c, d
    rlca
    ld hl, sp+$4a
    add h
    ld [c], a
    ld c, e
    dec b
    dec b
    ld c, h
    rlca
    jr z, jr_020_4169

    add h
    ld a, [$0548]
    add hl, bc
    ld c, c
    rlca
    dec de
    ld c, c
    add h
    ld d, e
    ld c, e
    dec b
    ld l, [hl]
    ld c, e
    rlca
    adc c
    ld c, e
    add h
    ld b, h
    ld c, c
    dec b
    ld e, e
    ld c, c
    rlca
    ld [hl], d
    ld c, c
    add h
    dec b
    ld c, e
    dec b
    jr z, jr_020_4189

    rlca
    ld b, e
    ld c, e
    add h
    sbc h
    ld c, e
    dec b
    or a
    ld c, e
    rlca
    jp nc, $844b

    inc hl
    ld c, d
    dec b
    ld b, [hl]
    ld c, d
    rlca
    ld l, l
    ld c, d
    add h
    dec sp
    ld c, h
    dec b
    ld c, [hl]
    ld c, h
    rlca
    ld h, c
    ld c, h
    add h
    ld l, [hl]
    ld c, h
    dec b
    add c
    ld c, h
    rlca
    sub h
    ld c, h
    add h
    and c
    ld c, h
    dec b

jr_020_4169:
    call nz, $074c
    and $4c
    add h
    rst $20
    ld c, h
    dec b
    ld a, [$074c]
    dec c
    ld c, l
    add h
    jp c, Jump_000_0543

jr_020_417b:
    pop af
    ld b, e
    rlca
    inc b
    ld b, h
    add h
    ld de, $0544
    inc [hl]
    ld b, h
    rlca
    ld d, a
    ld b, h

jr_020_4189:
    add h
    cp a
    ld b, h
    dec b
    sub $44
    rlca
    db $ed
    ld b, h
    add h
    ld e, d
    ld c, [hl]
    dec b
    ld [hl], c

jr_020_4197:
    ld c, [hl]
    ld b, $81
    ld c, [hl]
    add h
    ret z

jr_020_419d:
    ld c, [hl]
    dec b
    rst $20
    ld c, [hl]
    ld b, $ff

jr_020_41a3:
    ld c, [hl]
    inc b
    adc [hl]

jr_020_41a6:
    ld b, d
    inc b
    ld a, a
    ld b, d

jr_020_41aa:
    inc b
    ld l, d
    ld b, d
    rlca
    ld h, e

jr_020_41af:
    ld b, d
    inc b
    ld d, b
    ld b, d
    rlca
    sbc a
    ld b, d
    inc b
    or l
    ld b, d
    rlca
    pop hl
    ld b, d
    inc b
    call z, $0742
    rst $10
    ld b, d
    add h
    db $eb
    ld b, d
    dec b
    ld a, [bc]
    ld b, e
    ld b, $22
    ld b, e
    add b
    add sp, $6c
    ld bc, $6d9d
    ld [bc], a

jr_020_41d2:
    ld b, l
    ld l, [hl]
    add b
    ld l, l
    ld [hl], c

jr_020_41d7:
    ld bc, $71c8
    ld [bc], a
    ld a, [hl+]
    ld [hl], d
    ret nz

    cp [hl]
    ld l, a
    ld bc, $7010
    ld [bc], a
    ld l, b

jr_020_41e5:
    ld [hl], b
    inc bc
    sub d
    ld [hl], b
    ld [bc], a
    ld a, [de]
    ld c, l
    jr nz, jr_020_41af

    inc sp
    rst $38
    jr nz, jr_020_41a3

    inc sp
    rst $38
    jr nz, jr_020_4197

    inc sp
    rst $38
    jr nz, jr_020_417b

    inc sp
    rst $38
    daa
    add h
    scf
    ld h, $84
    ld [hl], $25
    add e
    dec [hl]
    inc h
    add e
    inc [hl]
    inc hl
    add d
    inc sp
    ld [hl+], a
    add c
    ld [hl-], a
    rst $38
    jr nz, jr_020_4262

    ld a, [hl+]
    rst $38
    ld hl, $2b41
    jr nz, jr_020_4279

    ld a, [hl+]
    rst $38
    jr nz, jr_020_419d

    db $10
    rst $38
    jr nz, @-$7c

    inc hl
    rst $38
    jr nz, jr_020_41a6

    dec h
    rst $38
    jr nz, jr_020_41aa

    ld h, $ff
    jr nz, @-$5d

    db $10
    rst $38
    jr nz, jr_020_41d2

    ld de, $20ff
    and d
    ld d, b
    rst $38
    jr nz, @-$5d

    jr jr_020_425a

    ld sp, $ff33
    ld [hl+], a
    sub c
    jr z, jr_020_4261

    ld [hl], c
    jr @+$01

    jr nz, jr_020_41d7

    ld [hl+], a
    rst $38
    jr nz, jr_020_42bb

    ld [hl+], a
    rst $38
    jr nz, jr_020_42af

    ld [hl+], a
    rst $38
    db $ec
    ld [bc], a
    jr nz, jr_020_41e5

    ret nz

    rlca
    jr nz, @-$7d

    ret nc

    rlca

jr_020_425a:
    jr nz, @-$6d

    ret nz

    rlca
    inc l
    and c
    ret nc

jr_020_4261:
    rlca

jr_020_4262:
    rst $38
    ld hl, $33e2
    jr z, @-$1d

    ld [hl+], a

jr_020_4269:
    rst $38
    db $ec
    ld [bc], a
    db $10
    inc d
    inc h
    ld a, [c]
    nop
    ld b, $24
    ld a, [c]
    nop

jr_020_4275:
    ld b, $10
    rla
    cpl

jr_020_4279:
    ld a, [c]
    nop
    ld b, $10
    ld [$ecff], sp
    ld [bc], a
    db $10
    rla
    cpl
    ldh a, [$f0]
    inc b
    cpl
    ld a, [c]
    ld d, b
    ld b, $10
    ld [$ecff], sp
    ld [bc], a
    db $10
    ld a, [hl-]
    inc h
    ld a, [c]
    nop
    ld [bc], a
    db $10
    ld [hl+], a
    jr z, @-$1c

jr_020_429a:
    nop
    ld [bc], a
    db $10
    ld [$26ff], sp
    pop af
    ld de, $f227
    ld [hl+], a
    jr z, jr_020_429a

    inc sp
    add hl, hl
    db $f4
    ld b, d
    ld a, [hl+]
    push af
    inc sp
    dec hl

jr_020_42af:
    or $22
    inc l
    rst $30
    ld de, $ecff
    ld [bc], a
    inc hl
    call nz, $0760

jr_020_42bb:
    jr nz, jr_020_4261

    ld b, b
    rlca
    ld [hl+], a
    call nz, $0740
    jr nz, jr_020_4269

    ld h, b
    rlca
    cpl
    pop bc
    ld h, b
    rlca
    rst $38
    db $ec
    ld [bc], a
    inc hl
    or h
    ret nz

    rlca
    jr nz, jr_020_4275

    add b
    rlca
    rst $38
    ld [hl+], a
    pop af
    ld [hl-], a
    ld [hl+], a
    nop
    nop
    inc h
    and $21
    rst $38
    inc hl
    di
    ld h, [hl]
    inc hl
    inc sp
    ld d, e
    daa
    push af
    ld d, c
    rst $38

jr_020_42eb:
    ld hl, sp-$13

jr_020_42ed:
    ld bc, $f000
    ld [hl], a
    db $ec
    ld [bc], a
    add sp, -$2b
    or h
    db $e4
    inc hl
    inc bc
    push hl
    sub a
    push de
    or d
    db $e4
    ld sp, $2131
    ld bc, $e501
    and c
    push de
    or h
    db $e4
    rlca
    rst $38
    ld hl, sp-$16
    ld [$ec27], sp
    ld [bc], a
    push de
    push bc
    db $e4
    sub e
    ld d, e
    rlca
    push de
    jp nz, $a1a1

    and c
    ld [hl], c
    ld [hl], c
    and c
    push de
    call nz, $ff97
    ld hl, sp-$2b
    db $10
    db $e3
    ld d, e
    inc sp
    rlca
    jr nc, jr_020_42eb

    jr nc, jr_020_42ed

    ld b, b
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    ld [hl], b
    ret nz

    sub a
    rst $38
    db $fc
    ldh a, [$2f]
    ldh [$80], a
    rlca
    cpl
    ldh a, [$84]
    rlca
    cpl
    jp Jump_000_05e0


    cpl
    call nz, $0600
    ld a, [hl+]
    ld l, h
    add b
    rlca
    jr z, @+$73

    add h
    rlca
    rst $38
    db $fc
    dec b
    cpl
    and b
    ld b, c
    rlca
    cpl
    or b
    ld b, e
    rlca
    cpl
    sub e
    or c
    dec b
    cpl
    sub h
    pop bc
    dec b
    ld a, [hl+]
    ld c, h
    ld b, c
    rlca
    jr z, jr_020_439b

    ld b, [hl]
    rlca
    rst $38
    ld [hl+], a
    ld a, [c]
    ld c, h
    ld h, $e0
    ld a, [hl-]
    cpl
    ret nc

    ld a, [hl-]
    jr z, @-$2e

    inc l
    ld h, $e6
    ld c, h
    inc l
    ld a, l
    ld c, h
    cpl
    db $d3
    ld c, h
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    and b

jr_020_4388:
    rlca
    ld h, $e6
    and e
    rlca
    ld a, [hl+]
    db $f4
    and b
    rlca
    db $fc
    and l
    ld a, [hl+]
    or $d8
    rlca
    inc h
    db $e3

jr_020_4399:
    rst $10
    rlca

jr_020_439b:
    cpl
    ld a, [c]
    ret c

    rlca
    rst $38
    db $fc
    dec b
    ld [hl+], a
    ld [$0000], sp
    cpl
    and a
    and c
    ld b, $26
    add [hl]
    and d
    ld b, $2a
    ld [hl], h
    and c
    ld b, $fc
    ld e, a
    ld a, [hl+]
    db $76
    sub $06
    inc h
    add e
    reti


    ld b, $2f
    and d
    rst $10
    ld b, $ff
    ld [hl+], a
    ld a, [c]
    inc a
    jr z, @-$1a

    ld a, $2f
    rst $10
    inc a
    ld h, $c5
    dec sp
    ld h, $e4
    dec a

jr_020_43d0:
    jr z, jr_020_4388

    inc a
    ld h, $d4
    dec a
    jr z, jr_020_4399

    dec sp
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    ret nz

    rlca
    ld h, $e4
    pop bc
    rlca
    ld a, [hl+]
    or $c0
    rlca
    inc h
    db $d3
    jp nz, $2807

    pop bc
    ret nz

    rlca
    rst $38
    db $fc
    ld e, a
    cpl
    sub a
    add c
    rlca
    ld h, $84
    add b
    rlca
    ld a, [hl+]
    sub [hl]
    add c
    rlca
    cpl
    add e
    add c
    rlca
    rst $38
    inc hl
    ld a, [c]
    inc a
    dec l
    and $2c
    cpl
    rst $10
    inc a
    jr z, jr_020_43d0

    inc l
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    add b
    ld b, $2a

jr_020_4418:
    and $84
    ld b, $2f
    rst $10
    sub b
    ld b, $28
    push de
    sub b
    ld b, $26
    call nz, $0688
    dec h
    db $d3
    ld [hl], b
    ld b, $24
    db $d3
    ld h, b
    ld b, $28
    pop bc
    ld b, b
    ld b, $ff

jr_020_4434:
    db $fc
    dec b
    cpl
    or a
    ld b, c
    ld b, $2a
    sub [hl]
    ld b, d
    ld b, $2f
    and a
    ld d, c
    ld b, $28
    and l
    ld d, c
    ld b, $26
    sub h
    ld b, a
    ld b, $25
    and e
    ld sp, $2406
    sub e
    ld [hl+], a
    ld b, $28
    ld [hl], c
    ld bc, $ff06
    cpl
    db $e4
    inc a
    ld a, [hl+]
    rst $00
    ld c, h
    ld a, [hl+]
    rst $00
    inc a
    inc l
    or a
    ld c, h
    cpl
    and d
    ld e, h
    rst $38
    db $fc
    ldh a, [rNR52]
    rst $30
    and b
    rlca
    jr z, @-$18

    and h
    rlca
    inc h
    sub $a0
    rlca
    cpl
    db $d3
    jr nz, @+$09

    jr z, @-$3b

    inc hl
    rlca
    ld [hl+], a
    jp nz, $0728

    jr z, jr_020_4434

    jr nc, jr_020_448c

    rst $38
    db $fc
    ld a, [bc]
    inc h

jr_020_4489:
    ld [$0000], sp

jr_020_448c:
    ld h, $a7
    ld b, c
    rlca
    jr z, jr_020_4418

    ld b, e
    rlca
    inc h
    db $76
    ld b, c
    rlca
    dec l
    add e
    jp nz, Jump_000_2706

    ld [hl], e
    pop bc
    ld b, $23
    add d
    call z, $2806
    ld [hl], c
    ret c

    ld b, $ff
    ld [hl+], a
    ld a, [c]
    ld c, h
    ld h, $e6
    ld a, [hl-]
    inc h
    rst $10
    ld a, [hl-]
    ld h, $d6
    inc l
    jr z, @-$19

    inc a
    inc l
    jp nc, Jump_000_283d

    pop de
    inc l
    rst $38
    db $fc
    and l
    ld h, $f4
    ld b, b
    rlca

jr_020_44c5:
    cpl
    db $e3
    jr nc, jr_020_44d0

    inc h
    db $f4
    ld b, b
    rlca
    dec h
    or e
    ld c, b

jr_020_44d0:
    rlca
    jr z, @-$2d

    ld d, b
    rlca
    rst $38
    db $fc
    ld [hl], a
    ld h, $c3
    ld [de], a
    rlca
    cpl
    or e
    inc b
    rlca
    inc hl
    jp Jump_000_0712


    inc h
    jp Jump_000_0721


    jr z, @-$4d

    ld [hl-], a
    rlca
    rst $38
    jr z, jr_020_44c5

    inc l
    inc l
    add $3c
    ld a, [hl+]
    or [hl]
    inc l

jr_020_44f6:
    jr z, jr_020_4489

    inc e
    rst $38
    db $fc
    ldh a, [rNR50]
    rst $30
    ld [$2606], sp
    and $00
    ld b, $26
    rst $10
    ldh a, [rTIMA]
    ld h, $c4
    ldh [rTIMA], a
    dec h
    db $d3
    ret nz

    dec b
    inc h
    db $d3
    and b
    dec b
    jr z, @-$1d

    add b
    dec b
    rst $38
    db $fc
    ld a, [bc]
    inc h
    rst $00
    inc b
    dec b
    ld h, $a6
    ld [bc], a
    dec b
    ld h, $97
    pop af
    inc b
    inc h
    or h
    pop hl
    inc b
    dec h
    and e
    jp nz, $2404

    or e
    and e
    inc b
    jr z, jr_020_44f6

    add d
    inc b
    rst $38
    inc l
    db $e4
    ld c, h
    ld a, [hl+]
    rst $00

jr_020_453d:
    ld e, h
    inc l
    or [hl]
    ld c, h
    cpl
    and d
    ld e, h
    rst $38
    db $fc
    pop af
    inc h
    rst $30
    ret nz

    rlca
    inc l
    and $c2
    rlca
    ld h, $b5
    add b
    ld b, $24
    call nz, Call_000_0670
    inc h
    or l
    ld h, b
    ld b, $28
    pop bc
    ld b, b
    ld b, $ff
    db $fc
    call z, $c723
    add c
    rlca
    inc l
    or [hl]
    add b
    rlca
    ld h, $a5
    ld b, c
    ld b, $24
    call nz, Call_000_0632
    ld h, $b5
    ld hl, $2806
    and c

jr_020_4578:
    ld [bc], a
    ld b, $ff
    inc hl
    db $e4
    inc a
    inc l
    sub $2c
    inc h

jr_020_4582:
    db $e4
    inc a
    jr z, jr_020_453d

jr_020_4586:
    ld e, h
    cpl
    jp nz, $ff5d

    db $fc
    ret


    jr z, jr_020_4586

    add b
    ld b, $22
    rst $30
    ld h, b
    ld b, $21
    rst $20
    ld b, b
    ld b, $21
    rst $20
    jr nz, jr_020_45a3

    cpl
    pop de
    nop
    ld b, $24
    rst $00

jr_020_45a3:
    ld b, b
    rlca
    inc h
    and a
    jr nc, jr_020_45b0

    cpl
    sub c
    jr nz, @+$09

    rst $38
    db $fc
    ld a, c

jr_020_45b0:
    ld a, [hl+]
    rst $20
    add d

Call_020_45b3:
    ld b, $22
    rst $20
    ld h, d
    ld b, $21
    rst $10
    ld b, d
    ld b, $21
    rst $10
    ld [hl+], a
    ld b, $2f
    pop bc

Call_020_45c2:
    ld [bc], a
    ld b, $24
    or a
    ld b, d
    rlca
    ld [hl+], a
    sub a
    ld [hl-], a
    rlca
    cpl
    add c
    ld [hl+], a
    rlca
    rst $38
    inc h
    ld [hl], h
    ld hl, $7424
    db $10
    inc h
    ld [hl], c
    jr nz, @+$01

    db $fc
    push af
    inc h
    di
    jr jr_020_45e8

    cpl
    push hl
    sbc b
    rlca
    jr z, jr_020_4578

    ld e, b

jr_020_45e8:
    rlca
    rst $38
    db $fc
    and b
    dec h
    or e
    ld [$2f07], sp
    push bc
    adc b
    rlca

jr_020_45f4:
    jr z, jr_020_4667

    ld c, b
    rlca
    rst $38
    inc hl
    and c
    inc e
    ld l, $94
    inc l
    jr z, jr_020_4582

    inc e
    rst $38
    db $fc
    and l
    inc h
    pop hl
    nop
    rlca
    inc h
    ld a, [c]
    add b
    rlca
    ld [hl+], a
    sub d
    ld b, b
    rlca
    jr z, jr_020_45f4

    nop
    ld b, $ff
    db $fc
    ld a, [bc]
    inc h
    or c
    pop hl
    ld b, $23
    jp nz, $06e1

    inc hl
    ld h, d
    add c
    ld b, $28
    or c
    pop hl
    dec b
    rst $38
    ld [hl+], a
    ld h, c
    ld [hl-], a
    ld [hl+], a

jr_020_462d:
    ld h, c
    ld hl, $6128
    ld de, $fcff
    ld a, [$8326]
    ld b, a

jr_020_4638:
    ld [bc], a
    cpl

jr_020_463a:
    ld h, d
    ld h, $02

jr_020_463d:
    inc h
    ld d, d
    ld b, l
    ld [bc], a
    add hl, hl
    ld h, e
    ld b, $02
    cpl
    add d
    dec h
    ld [bc], a
    cpl
    ld b, d
    rlca
    ld [bc], a
    rst $38
    jr z, @-$2a

    adc h
    inc h
    ld [c], a
    sbc h
    cpl
    add $8c
    jr z, jr_020_463d

    xor h
    cpl
    rst $10
    sbc h
    cpl
    ld a, [c]
    xor h
    rst $38
    db $fc
    ldh a, [rNR50]
    di
    ldh [rTMA], a

jr_020_4667:
    cpl
    db $e4
    ld b, b
    ld b, $28
    pop bc
    jr nz, @+$08

    rst $38
    db $fc
    ld a, [bc]
    inc hl
    jp $0683


    ld l, $b4
    ld [bc], a
    ld b, $28
    and c
    ld bc, $ff06
    inc h
    db $d3
    ld e, h
    cpl
    and $4c
    jr z, jr_020_4638

    ld e, h

jr_020_4688:
    rst $38
    db $fc
    ld a, [bc]
    ld h, $e2
    nop
    dec b
    ld h, $e3
    add b
    dec b
    ld h, $d3
    ld [hl], b
    dec b
    jr z, jr_020_463a

    ld h, b
    dec b
    rst $38
    db $fc
    push af
    ld h, $e2
    add d
    inc b
    ld h, $d3
    ld bc, $2605
    or d
    ld [c], a
    inc b
    jr z, jr_020_462d

    pop bc
    inc b
    rst $38
    db $fc
    call z, $f124
    nop
    rlca
    inc h
    pop hl
    add b
    rlca
    inc h
    pop de
    ld b, b
    rlca
    inc h
    pop hl
    ld b, b
    rlca
    inc h
    pop af
    add b
    rlca
    inc h
    pop de

jr_020_46c7:
    nop
    rlca
    inc h
    pop af
    ld bc, $2407
    pop de
    add d
    rlca
    inc h
    pop bc
    ld b, d
    rlca
    jr z, jr_020_4688

    ld b, c
    rlca
    rst $38
    db $fc
    ld b, h
    inc l
    ld [$0000], sp
    inc h
    pop af
    ld bc, $2407
    pop hl
    add d
    rlca
    inc h
    pop de
    ld b, c
    rlca
    inc h
    pop hl

jr_020_46ee:
    ld b, c
    rlca
    inc h
    pop af
    add d
    rlca
    jr z, jr_020_46c7

    ld bc, $ff07
    cpl
    ld [$2400], sp
    ld [$2400], sp
    pop de
    ld c, h
    inc h
    or c
    inc l
    inc h
    pop de
    inc a
    inc h
    or c
    inc a
    inc h
    pop bc
    inc l
    jr z, @-$5d

    ld c, h
    rst $38
    db $fc
    call z, $f528
    nop
    ld b, $22
    jp nc, $0638

    ld [hl+], a
    jp nz, $0630

    ld [hl+], a
    jp nz, $0628

    ld [hl+], a
    or d
    jr nz, jr_020_472e

    ld [hl+], a
    or d
    db $10
    ld b, $22
    and d

jr_020_472e:
    jr jr_020_4736

    ld [hl+], a
    or d
    db $10
    ld b, $28
    pop bc

jr_020_4736:
    jr nz, @+$08

    rst $38
    db $fc
    ld b, h
    inc l
    jp Jump_000_05c0


    inc hl
    or c
    ld sp, hl
    dec b
    ld [hl+], a
    and c
    pop af
    dec b
    ld [hl+], a
    and c
    jp hl


    dec b
    ld [hl+], a
    sub c
    pop hl
    dec b
    ld [hl+], a
    sub c
    reti


    dec b
    ld [hl+], a
    add c
    pop de
    dec b
    ld [hl+], a
    sub c

jr_020_4759:
    reti


    dec b
    jr z, jr_020_46ee

    pop hl
    dec b
    rst $38
    db $ec
    nop
    jr z, jr_020_4759

    add b
    inc b
    ld [hl+], a
    pop hl
    ldh [rTIMA], a
    jr z, @-$2d

    call c, $ff05
    db $fc
    and l
    daa
    sub l
    ld b, c
    inc b
    ld [hl+], a
    add c
    ld hl, $2805
    ld h, c
    ld a, [de]
    dec b
    rst $38
    db $fc
    adc b
    dec h
    ld a, [c]
    ld d, b
    ld b, $29
    pop de
    ld h, b
    ld b, $25
    ld [c], a
    ld [de], a
    ld b, $29
    pop bc
    ld [hl+], a
    ld b, $25
    ld a, [c]
    db $10
    ld b, $26
    pop de

jr_020_4796:
    jr nz, jr_020_479e

    cp $02
    ld a, [hl]
    ld b, a
    rst $38
    db $fc

jr_020_479e:
    ld b, b
    inc h
    ld [$0000], sp
    dec h
    ld a, [c]
    ld d, c
    ld b, $29
    pop de
    ld h, c
    ld b, $25
    ld [c], a
    inc d
    ld b, $28
    pop bc
    inc h
    ld b, $25
    ld a, [c]
    ld de, $2c06
    pop de
    ld hl, $2506
    ld [c], a
    inc d
    ld b, $28
    pop bc
    inc h
    ld b, $25
    ld a, [c]
    ld de, $2406
    pop de
    ld hl, $ff06

jr_020_47cc:
    ld h, $d2
    inc e
    add hl, hl
    or c
    inc l
    jr z, jr_020_4796

    inc l
    add hl, hl
    or c
    inc a
    ld h, $c2
    inc l
    add hl, hl
    and d
    inc a
    daa
    jp nz, $252c

    and c
    inc a
    add hl, hl
    jp nz, Jump_000_242c

    and c
    inc a
    rst $38
    db $fc

jr_020_47ec:
    and b
    inc h
    di
    nop
    ld b, $28
    push de
    ld h, b
    rlca
    inc hl
    ld [c], a
    jr nz, jr_020_4800

    jr z, jr_020_47cc

    db $10
    rlca
    rst $38
    db $fc
    ld e, d

jr_020_4800:
    dec h
    or e
    pop af
    ld b, $27
    push bc
    ld d, d
    rlca

jr_020_4808:
    inc hl
    and d
    ld de, $2807
    or c
    ld bc, $ff06
    inc hl
    and d
    inc a
    inc l
    sub h
    inc l
    inc hl
    add d
    inc e
    jr z, jr_020_488d

    inc l
    rst $38
    db $fc
    ldh a, [$28]
    rst $30
    ldh [rTMA], a
    ld h, $e6
    push hl
    ld b, $23
    db $f4
    ldh [rTMA], a
    inc hl
    or $d0
    ld b, $23
    db $e3
    ret nz

    ld b, $24
    ld a, [c]
    or b
    ld b, $2f
    and d
    ret z

    ld b, $ff
    db $fc
    dec b
    inc hl
    ld [$0000], sp
    jr z, jr_020_47ec

    and c
    ld b, $26
    add [hl]

jr_020_4849:
    and e
    ld b, $23
    ld [hl], h
    and c
    ld b, $23
    db $76
    sub c
    ld b, $23
    add e
    add d
    ld b, $24
    and d
    ld [hl], c
    ld b, $2f
    ld [hl], d
    adc c
    ld b, $ff
    ld [hl+], a
    ld a, [c]
    inc a
    jr z, jr_020_4849

    ld a, $28
    rst $10
    inc a
    dec h
    push bc
    dec sp
    inc hl
    call nc, $222c
    or [hl]
    inc a
    inc hl
    and h
    inc l
    jr z, jr_020_4808

    inc a
    rst $38
    db $fc
    ldh a, [$2f]
    or $65
    dec b
    ld a, [hl+]

jr_020_4880:
    db $e4
    ld a, h
    dec b
    inc hl
    jp nz, Jump_000_055c

    cpl
    or d
    inc a
    dec b
    rst $38
    db $fc

jr_020_488d:
    ld e, d
    ld l, $d6
    inc bc
    dec b
    add hl, hl
    or h
    dec de
    dec b
    inc h
    sub d
    ld a, [$2f04]
    and d
    db $db
    inc b
    rst $38
    inc l
    and $4c
    dec hl
    rst $10
    ld e, h
    cpl
    jp nz, $ff4c

    db $fc
    ldh a, [rNR50]
    rst $30
    and b
    ld b, $28
    and $a4
    ld b, $24
    sub $a0
    ld b, $2c
    db $d3
    jr nz, @+$08

    jr z, jr_020_4880

    inc h
    ld b, $24
    jp nz, Jump_000_0620

    jr z, @-$4d

    db $10
    ld b, $ff
    db $fc
    ld e, d
    inc h
    rst $20
    ld bc, $2806
    sub $03
    ld b, $24
    add $01
    ld b, $2c
    jp Jump_000_0581


    jr z, @-$4b

    add e
    dec b
    inc h
    or d
    add d
    dec b
    jr z, @-$5d

    ld [hl], c
    dec b
    rst $38
    daa
    sub $5c
    jr z, @-$18

    ld c, h
    inc h
    call nc, Call_000_245c
    call nc, Call_000_274c
    jp $284c


    and c
    ld e, h
    rst $38
    db $fc
    dec de
    daa
    jp nc, $0740

    cpl
    push hl
    ld h, b
    rlca
    cpl
    pop bc
    jr nc, jr_020_490f

    rst $38
    db $fc
    add c
    ld [hl+], a
    jp nz, Jump_000_0701

jr_020_490f:
    inc h
    jp nz, $0708

    cpl
    rst $10
    ld b, c
    rlca
    cpl
    and d
    ld bc, $ff07
    db $fc
    ldh a, [$2f]
    rst $10
    add b
    rlca
    inc h
    and $a0
    rlca
    cpl
    jp nc, $0740

    rst $38
    db $fc
    ld e, d
    cpl
    rst $00
    ld d, e

jr_020_4930:
    rlca
    dec h
    or [hl]
    ld [hl], d
    rlca
    cpl
    jp nz, $0711

    rst $38
    dec l
    or $4c
    inc h
    and $3c
    cpl
    ld a, [c]
    ld c, h
    rst $38
    db $fc
    ldh a, [rNR52]
    rst $30
    ret nz

    ld b, $2f
    rst $20
    nop
    rlca
    inc h
    db $f4
    ldh a, [rTMA]
    inc h

jr_020_4953:
    db $e4
    ldh [rTMA], a
    jr z, @-$2d

    ret nc

    ld b, $ff
    db $fc
    ld a, [bc]
    daa
    and $81

jr_020_4960:
    ld b, $2e
    push de
    pop bc
    ld b, $24
    call nz, Call_000_06b1
    inc h
    call nc, Call_000_06a1
    jr z, jr_020_4930

jr_020_496f:
    sub c
    ld b, $ff
    ld a, [hl+]
    and [hl]
    inc a
    ld l, $94
    inc l
    dec h
    and e
    inc a

jr_020_497b:
    jr z, @-$6d

    inc l
    rst $38
    db $fc
    and l
    inc l
    ld a, [c]
    ld b, b
    inc b
    cpl
    db $e3
    and b
    inc b
    inc h
    jp nc, $0490

    jr z, jr_020_4960

    add b
    inc b
    rst $38
    db $fc
    xor $2b
    jp nc, $0438

    ld l, $c6

jr_020_499a:
    sbc b
    inc b
    inc hl

jr_020_499d:
    or d
    adc b
    inc b
    jr z, jr_020_4953

    ld a, b
    inc b
    rst $38
    ld a, [hl+]
    and $6c
    cpl

jr_020_49a9:
    jp nc, Jump_000_235c

    jp nz, $286c

    pop de
    ld e, h
    rst $38
    db $fc
    inc sp
    cpl
    or $c0

jr_020_49b7:
    dec b
    jr z, jr_020_499d

    cp h
    dec b
    ld h, $d2
    ret nc

    dec b
    ld h, $b2
    ldh [rTIMA], a
    ld h, $c2
    ldh a, [rTIMA]
    jr z, jr_020_497b

    nop
    ld b, $ff
    db $fc
    sbc c
    ld l, $c6
    or c
    inc b
    daa
    jp Jump_000_04ad


    dec h

jr_020_49d8:
    or d
    pop bc
    inc b
    jr z, jr_020_496f

    pop de
    inc b
    ld h, $a2
    pop hl
    inc b
    jr z, @-$6d

    pop af
    inc b
    rst $38
    ld a, [hl+]
    and $5c

jr_020_49eb:
    ld a, [hl+]
    sub $6c
    inc h
    jp nz, $264c

jr_020_49f2:
    db $d3
    ld e, h
    jr z, jr_020_49a9

    ld c, h
    jr z, jr_020_499a

    ld e, h
    rst $38
    db $fc
    ldh a, [$28]
    db $e4

jr_020_49ff:
    sub b
    rlca
    cpl
    push af
    ret nz

    rlca
    jr z, jr_020_49d8

    ret c

jr_020_4a08:
    rlca
    rst $38
    db $fc
    and l
    ld a, [hl+]
    call nz, Call_000_0771
    cpl
    or [hl]
    and d
    rlca
    jr z, jr_020_49b7

    or a
    rlca
    rst $38
    jr z, jr_020_49ff

    ld c, h
    ld l, $c4
    inc a
    jr z, jr_020_49f2

    inc l
    rst $38
    db $fc
    ldh a, [rNR52]
    ld a, [c]
    nop
    ld b, $26
    ld [c], a
    ld b, b
    ld b, $26
    jp nc, $0680

    ld h, $e2
    ret nz

    ld b, $26
    jp nc, $0700

    ld h, $c2
    ld b, b
    rlca
    ld h, $b2
    add b
    rlca
    jr z, @-$5d

    ret nz

    rlca
    rst $38
    db $fc
    ld de, $0823
    ld bc, $2600
    jp nz, $05c1

    ld h, $b2
    ld [bc], a
    ld b, $26
    and d
    ld b, c
    ld b, $26
    or d
    add d
    ld b, $26
    and d
    jp nz, Jump_000_2606

    sub d

jr_020_4a62:
    ld bc, $2607
    and d
    ld b, d
    rlca

jr_020_4a68:
    jr z, jr_020_49eb

    add c
    rlca
    rst $38
    ld h, $08
    ld bc, $e225
    ld e, h
    dec h
    jp nz, Jump_000_254c

    jp nc, Jump_000_253c

    or d
    inc l
    dec h
    jp nz, $251c

    and d

jr_020_4a81:
    dec de
    dec h
    sub d
    ld a, [de]
    jr z, jr_020_4a08

    jr @+$01

    db $fc
    ldh a, [rNR50]
    di
    add b
    rlca
    cpl
    rst $20
    nop
    rlca
    jr z, jr_020_4a68

    db $10
    rlca
    inc h
    jp nz, $0700

    inc h
    jp nc, $06f0

    jr z, jr_020_4a62

    ldh [rTMA], a
    rst $38
    db $fc
    ld e, d
    ld h, $c3
    ld bc, $2e07
    or a
    add c
    ld b, $27
    or e
    sub d
    ld b, $23
    and d
    add c
    ld b, $24
    or d
    ld [hl], d
    ld b, $28
    and c
    ld h, c
    ld b, $ff
    ld h, $e3
    ld e, h
    ld l, $d6
    ld c, h
    ld h, $c6
    inc a
    inc hl
    or e
    ld c, h
    inc hl
    and d
    ld e, h
    jr z, jr_020_4a81

    ld l, h
    rst $38
    db $fc
    rrca
    cpl
    rst $30
    nop
    dec b
    cpl
    rst $20
    ld [$2805], sp
    or h
    add b
    inc b
    cpl
    and d
    ld h, b
    inc b
    rst $38
    db $fc
    ld b, h
    ld l, $d7
    add c
    inc b
    ld l, $c7
    adc c
    inc b
    ld a, [hl+]
    or h
    ld bc, $2f04
    jp nz, $03e1

    rst $38
    ld l, $f7
    ld a, h
    inc l
    or $6c
    add hl, hl
    db $e4
    ld a, h
    cpl
    ld [c], a
    ld l, h
    rst $38
    db $fc
    push af
    daa
    sub $e1
    rlca
    ld h, $c6
    ld [c], a
    rlca
    add hl, hl
    sub $e1

jr_020_4b12:
    rlca
    daa
    add $e0
    rlca

jr_020_4b17:
    dec h
    or [hl]
    ld [c], a
    rlca
    daa
    add $e1
    rlca
    ld h, $b6
    ldh [rTAC], a
    jr z, @-$5d

    rst $18
    rlca
    rst $38
    db $fc
    ld b, h
    ld h, $c3
    ret


    rlca
    ld h, $b3
    rst $00
    rlca
    ld a, [hl+]
    call nz, $07c3
    jr z, @-$4a

    rst $00
    rlca
    ld h, $c3

jr_020_4b3c:
    ret


    rlca
    cpl
    and d
    push bc
    rlca
    rst $38
    dec l
    add hl, de
    ld a, h
    dec l
    rst $30
    adc h
    inc l
    sub $7c
    jr z, jr_020_4b12

    ld l, h
    cpl
    or e
    ld e, h
    rst $38
    db $fc
    ldh a, [rNR52]
    rst $30
    ld b, b
    rlca
    inc l
    and $44
    rlca
    ld h, $d5
    ld d, b
    rlca
    inc h
    jp $0760


    inc hl
    jp $0780


    jr z, jr_020_4b3c

jr_020_4b6b:
    and b
    rlca
    rst $38
    db $fc
    ld a, [bc]
    ld h, $c7
    ld bc, $2b07
    or [hl]
    ld [bc], a
    rlca
    ld h, $a5
    ld de, $2407
    sub e
    ld hl, $2307
    and e
    ld b, c
    rlca
    jr z, jr_020_4b17

    ld h, d
    rlca
    rst $38
    inc hl
    ld [c], a
    inc a
    jr z, @-$28

    ld c, h
    dec h
    call nc, Call_000_2c3c
    rst $00
    ld c, h
    ld [hl+], a
    ld [c], a
    inc a
    jr z, jr_020_4b6b

    inc l
    rst $38
    db $fc
    db $f4
    cpl
    ldh a, [rTIMA]
    rlca
    ld a, [hl+]
    ldh [rP1], a
    rlca
    ld h, $b4
    db $10
    rlca
    inc h
    db $d3
    nop
    rlca
    ld h, $b2
    jr nz, jr_020_4bb8

    jr z, @-$5d

    inc h
    ld b, $ff
    db $fc

jr_020_4bb8:
    ld [hl+], a
    cpl
    or b
    jp Jump_000_2a06


    and b
    pop bc
    ld b, $26
    add h

jr_020_4bc3:
    jp nc, $2406

    sub e
    pop bc
    ld b, $26
    add d
    pop hl
    dec b
    jr z, @+$63

    add sp, $05
    rst $38
    ld h, $e6
    ld c, h
    cpl

jr_020_4bd6:
    sub $3c
    ld a, [hl+]
    push bc
    ld c, d
    ld hl, $5bb2
    cpl
    jp nz, $ff4c

    db $fc
    ld d, b
    ld a, [hl+]
    push af
    add b
    ld b, $23
    ld [c], a
    and b
    ld b, $23
    ld a, [c]
    ret nz

    ld b, $23
    ld [c], a
    ldh [rTMA], a
    inc hl
    jp nc, $0700

    inc hl
    jp nz, Jump_000_06e0

    inc hl
    jp nc, Jump_000_06c0

    jr z, jr_020_4bc3

    and b
    ld b, $ff
    db $fc
    rrca
    add hl, hl
    push de
    ld sp, $2306

jr_020_4c0c:
    jp nc, Jump_000_0652

    inc hl
    ld [c], a
    ld [hl], c
    ld b, $23
    or d
    sub c
    ld b, $23
    jp nz, $06b2

    inc hl
    or d

jr_020_4c1d:
    sub c
    ld b, $23
    jp nz, $0671

    jr z, jr_020_4bd6

    ld d, c
    ld b, $ff
    ld h, $e3
    ld c, h
    inc h
    jp Jump_000_253c


jr_020_4c2f:
    call nc, Call_000_243c
    call nz, $262c
    or h
    inc a
    jr z, @-$3d

    inc l
    rst $38

jr_020_4c3b:
    db $fc
    and l
    inc hl
    db $f4
    ld b, c
    ld b, $2d
    sub $21
    rlca
    jr z, jr_020_4c3b

    add hl, de
    rlca
    jr z, jr_020_4c0c

    ld a, [de]
    rlca
    rst $38
    db $fc
    call z, $f424

jr_020_4c52:
    add b
    dec b
    ld l, $e6
    ldh [rTMA], a
    jr z, jr_020_4c2f

    ret c

    ld b, $28
    pop de
    call c, $ff06
    dec h
    call nz, $2d46
    and l
    ld b, h
    jr z, @-$3a

    ld b, l
    jr z, jr_020_4c1d

    ld b, h
    rst $38
    db $fc
    ldh a, [$2d]
    pop af
    ld de, $2d05
    pop hl
    dec d
    dec b
    dec l
    pop hl
    ld de, $2805
    pop de
    ld de, $ff05
    db $fc
    dec d
    inc l
    pop hl
    inc c

jr_020_4c86:
    dec b
    inc l

jr_020_4c88:
    pop de
    db $10
    dec b
    ld l, $c1
    inc c
    dec b
    jr z, jr_020_4c52

    ld a, [bc]

jr_020_4c92:
    dec b
    rst $38
    ld l, $f2
    ld h, l
    dec l
    ld [c], a

jr_020_4c99:
    ld d, l
    ld l, $d2
    ld d, [hl]
    jr z, @-$2d

    ld h, [hl]
    rst $38
    db $fc
    dec de
    inc hl
    di

jr_020_4ca5:
    ld h, h
    dec b
    ld [hl+], a
    ld [c], a

jr_020_4ca9:
    ld b, h
    dec b
    dec h
    pop de
    ld [hl+], a
    dec b
    ld [hl+], a
    or d
    add h
    inc b
    jr z, jr_020_4c86

    and d
    inc b
    inc hl
    di
    inc h
    dec b
    inc h
    db $e4
    db $e4
    inc b
    jr z, jr_020_4c92

    ld [bc], a
    dec b
    rst $38
    db $fc
    call z, $d323
    ld h, b
    dec b
    ld [hl+], a
    jp nz, Jump_000_0540

    dec h
    pop bc
    jr nz, @+$07

    ld [hl+], a
    sub d
    add b
    inc b
    jr z, jr_020_4c99

    and b
    inc b
    inc hl
    db $d3
    jr nz, @+$07

    inc hl
    call nz, $04e0
    jr z, jr_020_4ca5

    nop
    dec b
    rst $38
    db $fc
    ld de, $3d22
    add c
    inc bc
    daa
    push af
    ld bc, $2106
    jp nz, $0481

    jr z, jr_020_4c88

    add c
    inc bc
    rst $38
    db $fc
    xor $22
    ld a, $b0
    dec b
    daa
    push de
    ld e, l
    rlca
    ld hl, $b0b2
    ld b, $28
    ld h, c
    or b
    dec b
    rst $38
    ld [hl+], a
    sub d
    ld c, c
    daa
    or l
    add hl, hl
    ld hl, $39a2
    jr z, jr_020_4ca9

    ld c, c
    rst $38
    db $ed
    ld bc, $dc00
    db $10
    db $e4
    or l
    db $e3
    db $10
    ret nz

    db $e4
    or l
    db $e3
    db $10
    ret nz

    db $e4
    or b
    ret nz

    db $e3
    ld b, b
    ret nz

    jr nc, @-$3e

    db $10
    ret nz

    db $e4
    or b
    ret nz

    sub b
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

jr_020_4d40:
    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    db $e3
    stop
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    db $e3
    ld b, b
    jr nc, jr_020_4dbc

    ret nz

    db $e4
    jr nc, jr_020_4d40

    ld b, b
    ret nz

jr_020_4d82:
    or b
    ret nz

jr_020_4d84:
    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

jr_020_4d8e:
    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    or b
    ret nz

    sub b
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    push hl
    or b

jr_020_4dbc:
    ret nz

    db $e4
    db $10
    ret nz

    jr nz, jr_020_4d82

    jr nc, jr_020_4d84

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

jr_020_4dcc:
    jr nc, jr_020_4d8e

jr_020_4dce:
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    ld b, b
    ret nz

jr_020_4dd8:
    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    or b
    and b
    or b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ret nz

    add b
    ret nz

jr_020_4e04:
    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nz, jr_020_4dcc

    jr nc, jr_020_4dce

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

jr_020_4e16:
    jr nc, jr_020_4dd8

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    jr nc, jr_020_4e04

    or b
    ret nz

    or b
    ret nz

    sub b
    ret nz

    sub b
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_020_4e16

    cp $00
    inc a
    ld c, l
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a
    ld [$2606], a
    db $ec
    ld [bc], a
    add sp, -$2c
    or c
    push hl
    add c
    add c
    add c
    call c, $e4b3
    ld b, e
    rst $38
    ld hl, sp-$16
    ld [$ec27], sp
    ld [bc], a
    call nc, $e4c1
    ld b, c
    ld b, c
    ld b, c
    call c, $b3c3
    rst $38
    ld hl, sp-$2c
    db $10
    db $e4
    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    call c, $e410
    or c
    pop bc
    rst $38
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a
    ld [$2606], a
    db $ec
    ld [bc], a
    add sp, -$2c
    or c
    push hl
    add c
    add c
    add c
    call c, $e4b3
    ld b, e
    rst $38
    ld hl, sp-$16
    ld [$ec27], sp
    ld [bc], a
    call nc, $e4c1
    ld b, c
    ld b, c
    ld b, c
    call c, $b3c3
    rst $38
    ld hl, sp-$2c
    db $10
    db $e4
    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    call c, $e410
    or c
    pop bc
    rst $38

jr_020_4ec8:
    ld hl, sp-$13

jr_020_4eca:
    ld bc, $f000
    ld [hl], a
    db $ec
    ld [bc], a
    add sp, -$2b
    or h
    db $e4
    inc hl
    inc bc
    push hl
    sub a
    push de
    or d
    db $e4
    ld sp, $2131
    ld bc, $e501
    and c
    push de
    or h
    db $e4
    rlca
    rst $38
    ld hl, sp-$16
    ld [$ec27], sp
    ld [bc], a
    push de
    push bc
    db $e4
    sub e
    ld d, e
    rlca
    push de
    jp nz, $a1a1

    and c
    ld [hl], c
    ld [hl], c
    and c
    push de
    call nz, $ff97
    ld hl, sp-$2b
    db $10
    db $e3
    ld d, e
    inc sp
    rlca
    jr nc, jr_020_4ec8

    jr nc, jr_020_4eca

    ld b, b
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    ld [hl], b
    ret nz

    sub a
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
    ld d, l
    nop
    jp $8500


    nop
    adc e
    nop
    dec b
    nop
    adc e
    nop
    nop
    nop
    add d
    nop
    db $fc
    nop
    pop hl
    nop
    push bc
    nop
    adc e
    nop
    add l
    nop
    xor a
    nop
    scf
    nop
    ld a, a
    nop
    ccf
    nop
    add a
    nop
    and e
    nop
    pop de
    nop
    and c
    nop
    push af
    nop
    db $ec
    nop
    cp $00
    db $fc
    nop
    pop hl
    nop
    push bc
    nop
    adc e
    nop
    add l
    nop
    xor a
    nop
    scf
    nop
    ld a, a
    nop
    ccf
    nop
    add a
    nop
    and e
    nop
    pop de
    nop
    and c
    nop
    push af
    nop
    db $ec
    nop
    cp $00
    db $fc
    nop
    pop hl
    nop
    push bc
    nop
    adc e
    nop
    add l
    nop
    xor a
    nop
    scf
    nop
    ld a, a
    nop
    ccf
    nop
    add a
    nop
    and e
    nop
    pop de
    nop
    and c
    nop
    push af
    nop
    db $ec
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld sp, hl
    nop
    rst $30
    nop
    rst $30
    nop
    call $bb00
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    sbc a
    nop
    rst $28
    nop
    rst $28
    nop
    di
    nop
    db $dd
    nop
    db $ed
    nop
    cp $00
    ld a, [hl]
    nop
    ei
    nop
    rst $18
    nop
    rst $38
    nop
    rst $28
    nop
    cp a
    nop
    rst $38
    nop
    db $d3
    cp $ab
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ei
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $30
    ld [$00ff], sp
    rst $38
    ld bc, $fee0
    xor $1f
    rst $38
    ld bc, $80ff
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $7e00
    nop
    rst $38
    ret nz

    ei
    ld hl, sp+$1f
    db $fc
    rlca
    ld hl, sp+$0f
    ldh [$3f], a
    ld b, b
    ld sp, hl
    db $fc
    rlca
    ldh a, [$1f]
    ret nz

    ld a, a
    add b
    rst $38
    ret nz

    ld a, e
    ldh [$3f], a
    ret nz

    rst $38
    nop
    di
    nop
    ld hl, sp+$00
    db $f4
    nop
    ret nc

    nop
    xor b
    nop
    ret nc

    nop
    cp b
    nop
    jr nc, jr_020_5033

jr_020_5033:
    ld a, b
    nop
    nop
    nop
    jr nz, jr_020_5039

jr_020_5039:
    ld e, b
    nop
    cp b
    nop
    ld d, b
    nop
    cp b
    nop
    stop
    jr z, jr_020_5045

jr_020_5045:
    ld b, $00
    dec de
    nop
    ld e, a
    nop
    cp a
    nop
    ld c, a
    nop
    cp a
    nop
    rra
    nop
    inc sp
    nop
    push af
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ret nc

    nop
    cp b
    nop
    ldh a, [rP1]
    ld a, b
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld c, $0e
    ld [bc], a
    ld [bc], a
    rra
    rra
    dec sp
    dec sp
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    add b
    add b
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    ld b, $06
    ld c, $0e
    ld c, $0e
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
    jr nc, jr_020_50c6

    db $10
    stop
    nop
    ret nz

    ret nz

    ld hl, sp-$08
    cp $fe
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
    jr jr_020_50af

jr_020_50af:
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    add $c6
    cp $ba
    cp $82
    cp $aa
    cp $82
    cp $82
    nop
    cp $00
    nop
    nop
    nop

jr_020_50c6:
    nop
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld e, $1e
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    call nc, $f0d4
    ldh a, [$c4]
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    add d
    add d
    add d
    add d
    add d
    cp $fe
    add d
    add d
    add d
    add d
    add d
    add d
    nop
    nop
    db $fc
    db $fc
    add d
    add d
    add d
    add d
    db $fc
    db $fc
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld a, [hl]
    ld a, [hl]
    ld b, b
    ld b, b
    ld a, $3e
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld [de], a
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    db $10
    ld a, h
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, b
    ld b, b
    inc a
    inc a
    ld [bc], a
    ld [bc], a
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    add d
    add d
    add d
    add d
    db $fc
    db $fc
    adc b
    adc b
    add h
    add h
    add d
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    inc b
    inc b
    inc a
    inc a
    ld b, h
    ld b, h
    ld a, $3e
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $3e
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    cp $fe
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    db $10
    stop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    add h
    add h
    add b
    add b
    ld a, h
    ld a, h
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, [hl]
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    cp $fe
    ld b, $06
    ld a, $3e
    inc a
    inc a
    ld [hl], b
    ld [hl], b
    jr nz, jr_020_52d4

    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    dec b
    dec b
    ld a, l
    ld a, l
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld a, h
    ld a, h
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    jr jr_020_52bc

    ld [bc], a
    ld [bc], a
    ld b, d
    ld b, d
    ld e, a
    ld e, a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld h, d
    ld h, d
    inc c
    inc c
    nop
    nop
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d

jr_020_52bc:
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    jr nz, jr_020_52e4

    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    db $10
    ccf
    jr nz, jr_020_530e

    inc hl
    inc a
    inc h
    inc a
    inc h

jr_020_52d4:
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    call nz, Call_000_243c
    inc a
    inc h

jr_020_52e4:
    inc a
    inc h
    inc a
    inc h
    ccf
    inc hl
    ccf
    jr nz, jr_020_530c

    db $10
    rrca
    rrca
    nop
    nop
    nop
    nop
    inc a
    inc h
    inc a
    inc h
    db $fc
    call nz, Call_000_04fc
    ld hl, sp+$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h

jr_020_530c:
    inc a
    inc h

jr_020_530e:
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    ld b, $06
    ld c, $0e
    ld c, $0a
    ld e, $12
    ccf
    ccf
    ccf
    jr nz, jr_020_5345

jr_020_5345:
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
    rra
    ld a, a
    ld h, e
    cp $82
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc e
    inc e
    inc e
    inc d
    inc a
    inc h
    ccf
    ccf
    ccf
    jr nz, jr_020_53f2

    ld b, b
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0e
    ld e, $16
    ld a, [hl]
    ld h, d
    cp $82
    db $fc
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc e
    inc e
    inc e
    inc d
    inc a
    inc h
    ccf
    ccf
    ccf
    jr nz, jr_020_5420

    ld b, b
    ld a, a
    ld h, b
    nop
    nop
    ld b, $06
    ld c, $0e
    ld e, $16
    ld a, [hl]
    ld h, d
    cp $82
    db $fc
    inc b
    db $fc
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    jr nc, jr_020_53f8

    ld [hl], b
    ld [hl], b
    ldh a, [$90]
    ld sp, hl
    ld sp, hl
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld hl, sp-$48
    ldh a, [$30]
    ldh [rNR41], a
    ldh [rNR41], a
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b

jr_020_53f2:
    rrca
    ld [$0000], sp
    add b
    add b

jr_020_53f8:
    add b
    add b
    add c
    add c
    add e
    add d
    rst $20
    db $e4
    rst $38
    jr @+$01

    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    add b
    add b
    add b
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

jr_020_5420:
    nop
    nop
    nop
    nop
    jr @+$1a

    inc h
    inc a
    ld [hl+], a
    ld a, $11
    rra
    ld de, $081f
    rrca
    ld [$040f], sp
    rlca
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, e
    rst $38
    add e
    rst $38
    jr nc, @-$10

    sbc c
    cp $81
    ld a, a
    ret nz

    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    cp $0e
    rst $38
    add hl, bc
    ld a, a
    adc c
    ld a, [hl]
    sbc d
    db $fc
    inc b
    nop
    nop
    nop
    nop
    jr nc, jr_020_548a

    ld c, l
    ld a, l
    ld b, e
    ld a, [hl]
    ld hl, $203f
    ccf
    db $10
    rra
    ld a, a
    ld h, b
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    or b
    xor $99
    cp $41
    rst $38
    add b
    ld a, a
    ret nz

    db $fc
    inc b
    ld hl, sp+$08
    cp $0e
    rst $38
    add hl, bc
    ld a, a
    adc c
    ld a, [hl]
    sbc d
    db $fc
    inc b
    cp $02
    nop
    nop
    ld bc, $0301
    ld [bc], a

jr_020_548a:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    or b
    xor $99
    cp $41
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld hl, sp+$08
    cp $0e
    rst $38
    add hl, bc
    ld a, a
    adc c
    ld a, [hl]
    sbc d
    db $fc
    inc b
    cp $02
    db $fc
    inc e
    rlca
    rlca
    rlca
    inc b
    rlca
    dec b
    rra
    inc e
    rra
    ld [de], a
    rrca
    ld [$0407], sp
    rlca
    inc b
    rst $38
    jr @+$01

    jr @+$01

    add b
    ld [hl], e
    db $ec
    di
    inc c

jr_020_54ce:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call z, $de4c
    ld d, d
    rst $38
    ld h, c
    cp $42
    db $fc
    call nz, Call_000_28f8
    db $fc
    inc d
    cp $f2
    rrca
    inc c
    rra
    inc e
    rra
    db $10
    rra
    ld d, $1d
    inc de
    ccf
    jr z, jr_020_5530

    inc h
    ccf
    inc h
    rst $38
    ld bc, $61ff
    rst $38
    ld h, c
    rst $38
    nop
    rst $08
    jr nc, jr_020_54ce

    ld sp, $00ff
    rst $38
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$78
    db $fc
    ld b, h
    ld hl, sp+$48
    ldh a, [$90]
    ldh [$a0], a
    ldh a, [$b0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000

jr_020_5530:
    nop
    nop
    nop
    nop
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp-$71
    ld sp, hl
    ld c, a
    ld a, a
    jr nc, jr_020_5574

    cp $02
    db $ec
    inc e
    db $f4
    inc a
    db $ec
    inc a
    ldh a, [rSVBK]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    add e
    rst $38
    ld b, c
    ld a, a
    jr nc, jr_020_55af

    inc c
    rrca
    inc bc
    inc bc

jr_020_5574:
    db $fc
    inc e
    xor $1e
    jp z, $fc3e

    inc e
    ld hl, sp+$18
    ld h, b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ld a, e
    ld a, d
    rst $00
    cp a
    ld b, b
    ld a, a
    jr nc, jr_020_55cb

    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rst $18
    jr nz, @+$01

    add b
    ld a, a
    ld hl, sp+$0f
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc a
    ccf
    inc bc
    inc bc
    xor $1e
    jp z, $fc3e

    inc e
    ld hl, sp+$18
    ldh [$e0], a
    db $10

jr_020_55af:
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [rTAC], a
    inc b
    rrca
    ld [$080f], sp
    ld a, a
    ld a, h
    jp Jump_020_70bf


    ld a, a
    rrca
    rrca
    nop
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38

jr_020_55cb:
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    ccf
    ld l, h
    db $fc
    ld d, b
    ldh a, [$e0]
    ld h, b
    ldh a, [rSVBK]
    adc [hl]
    cp $01
    rst $38
    ld bc, $feff
    cp $1f
    jr jr_020_5606

    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr jr_020_5656

    ld a, a
    ret nz

    cp a
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    add $ff
    ld bc, $3eff
    cp $c0
    ret nz

    ld hl, sp-$78

jr_020_5606:
    db $fc
    cp h
    jp nz, Jump_000_02fe

    cp $1c
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    dec de
    rst $38
    db $e3
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop

jr_020_5656:
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0e
    ld e, $12
    rra
    rra
    rra
    jr nz, jr_020_5665

jr_020_5665:
    nop
    jr nc, jr_020_5698

    ld a, b
    ld c, b
    ld a, h
    ld b, h
    rst $38
    adc a
    rst $38
    or a
    cp $c6
    rst $38
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
    add b
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

jr_020_5698:
    ld b, $06
    ld c, $0e
    ld c, $0a
    ld e, $12
    ccf
    ccf
    ccf
    jr nz, jr_020_56a5

jr_020_56a5:
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
    rra
    ld a, a
    ld h, e
    cp $82
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    inc e
    inc e
    inc e
    inc d
    inc a
    inc h
    ccf
    ccf
    ccf
    jr nz, @+$81

    ld b, b
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0e
    ld e, $16
    ld a, [hl]
    ld h, d
    cp $82
    db $fc
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0e
    ld e, $12
    rra
    rra
    rra
    jr nz, jr_020_5740

    ld b, b
    ld a, a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ccf
    dec sp
    rst $38
    jp $06fe


    db $fc
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_020_5766

    jr nc, jr_020_5768

    ld [hl], c
    ld a, a
    ld b, c
    ld a, a
    ld e, b
    ld a, a
    ld b, h
    ccf
    ld b, b
    ld a, a
    ld c, b
    rst $38
    ld b, $fd
    inc b
    rst $38
    add [hl]
    rst $38
    add b
    sbc a
    ld h, c
    sbc a
    ld h, e

jr_020_5740:
    rst $38
    ld bc, $01ff
    ret nz

    ld b, b
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh [$e0], a
    ret nc

    ld [hl], b
    sub b
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$3f], a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    db $e3
    rst $38
    add e
    rst $38
    or b
    rst $38
    adc b
    ld a, a
    ld b, b
    ccf
    ld b, [hl]
    db $fc
    rrca

jr_020_5766:
    ld hl, sp+$0f

jr_020_5768:
    db $fc
    rrca
    cp $03
    ld a, $c3
    dec a
    rst $00
    db $fd
    rrca
    cp $06
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    inc h
    inc a
    ld [hl+], a
    ld a, $11
    rra
    ld de, $081f
    rrca
    ld [$040f], sp
    rlca
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, e
    rst $38
    add e
    rst $38
    jr nc, @-$10

    sbc c
    cp $81
    ld a, a
    ret nz

    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    cp $0e
    rst $38
    add hl, bc
    ld a, a
    adc c
    ld a, [hl]
    sbc d
    db $fc
    inc b
    nop
    nop
    nop
    nop
    jr nc, jr_020_57ea

    ld c, l
    ld a, l
    ld b, e
    ld a, [hl]
    ld hl, $203f
    ccf
    db $10
    rra
    ld a, a
    ld h, b
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    or b
    xor $99
    cp $41
    rst $38
    add b
    ld a, a
    ret nz

    db $fc
    inc b
    ld hl, sp+$08
    cp $0e
    rst $38
    add hl, bc
    ld a, a
    adc c
    ld a, [hl]
    sbc d
    db $fc
    inc b
    cp $02
    nop
    nop
    ld bc, $0101
    ld [bc], a

jr_020_57ea:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld a, a
    db $e3
    rst $38
    add e
    rst $38
    or b
    xor $99
    cp $41
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld hl, sp+$08
    ld hl, sp+$08
    cp $0e
    ld a, a
    adc c
    ld a, a
    sbc c
    cp $06
    cp $02
    db $fc
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, h
    ld a, $25
    ccf
    jr c, jr_020_586a

    jr nz, jr_020_584c

    add hl, de
    ld h, $3f

jr_020_5830:
    jr nz, jr_020_5871

    rra
    rra
    cp $03
    db $fc
    rrca
    ld [hl], e
    cp a
    jp nz, $0cfe

    db $fc
    jr nc, jr_020_5830

    ret nz

    ret nz

    nop
    nop
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop

jr_020_584c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ccf
    ld h, $3f
    jr nz, jr_020_587c

    add hl, de
    ld d, $1f
    db $10
    rra
    rrca
    rrca
    cp $06
    db $fc
    inc e
    db $e4
    inc a

jr_020_586a:
    ret z

    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$c0], a

jr_020_5871:
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

jr_020_587c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp-$71
    ld sp, hl
    ld c, a
    ld a, a
    jr nc, jr_020_58d4

    cp $02
    db $ec
    inc e
    db $f4
    inc a
    db $ec
    inc a
    ldh a, [rSVBK]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    add e
    rst $38
    ld b, c
    ld a, a
    jr nc, jr_020_590f

    inc c
    rrca
    inc bc
    inc bc

jr_020_58d4:
    db $fc
    inc e
    xor $1e
    jp z, $fc3e

    inc e
    ld hl, sp+$18
    ld h, b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ld a, e
    ld a, d
    rst $20
    sbc a
    ret nz

    cp a
    ld h, b
    ld a, a
    inc e
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rst $18
    jr nz, @+$01

    add b
    ld a, a
    ld hl, sp+$0f
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc a
    ccf
    inc bc
    inc bc
    add sp, $18
    call z, $f43c
    inc e
    ld hl, sp+$18
    ldh [$e0], a
    db $10

jr_020_590f:
    ldh a, [rNR10]
    ldh a, [$e0]
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
    ld bc, $0201
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    jr jr_020_5952

    jr c, jr_020_5974

    ld a, b
    ld hl, sp-$01
    rlca
    rst $38
    nop
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
    db $fc
    db $fc
    db $fc
    inc e
    ld hl, sp+$18

jr_020_5952:
    ldh [rNR41], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    ld [$0000], sp
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    ld b, c
    rst $20
    and $ff
    jr @+$01

    nop

jr_020_5974:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    dec de
    rst $38
    db $e3
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0e
    ld e, $12
    rra
    rra
    rra
    jr nz, jr_020_59c5

jr_020_59c5:
    nop
    jr nc, jr_020_59f8

    ld a, b
    ld c, b
    ld a, h
    ld b, h
    rst $38
    adc a
    rst $38
    or a
    cp $c6
    rst $38
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
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ccf
    ccf
    rra
    inc e
    rrca
    inc c
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop

jr_020_59f8:
    nop
    nop
    nop
    nop
    rlca
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    inc bc
    nop
    nop
    jr nc, @+$32

    ldh a, [$f0]
    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    inc b
    rlca
    dec b
    rrca
    inc e
    rra
    ld [de], a
    rrca
    ld [$0407], sp
    rlca
    inc b
    rst $38
    jr @+$01

    jr @+$01

    add b
    ld [hl], e
    db $ec
    di
    inc c

jr_020_5a3e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ld b, b
    call z, $de4c
    ld d, d
    rst $38
    ld h, c
    rst $38
    pop bc
    cp $26
    ld hl, sp+$18
    db $fc
    db $f4
    rrca
    inc c
    rrca
    inc e
    rra
    db $10
    rra
    ld d, $1d
    inc de
    rra
    jr z, jr_020_5aa0

    inc h
    ccf
    inc h
    rst $38
    ld bc, $61ff
    rst $38
    ld h, c
    rst $38
    nop
    rst $08
    jr nc, jr_020_5a3e

    ld sp, $00ff
    rst $38
    nop
    add b
    add b
    jr jr_020_5a90

    cp h
    and h
    cp $42
    db $fc
    ld b, h
    ld hl, sp-$78
    ldh a, [$90]
    ldh [$a0], a
    rra
    jr nz, jr_020_5ac6

    jr nc, jr_020_5ac8

    ld [hl], c
    ld a, a
    ld b, c
    ld a, a
    ld e, b
    ld a, a
    ld b, h

jr_020_5a90:
    ccf
    ld b, b
    ld a, a
    ld c, b
    rst $38
    ld b, $fd
    inc b
    rst $38
    add [hl]
    rst $38
    add b
    sbc a
    ld h, c
    sbc a
    ld h, e

jr_020_5aa0:
    rst $38
    ld bc, $01ff
    ret nz

    ld b, b
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh [$e0], a
    ret nc

    ld [hl], b
    sub b
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$3f], a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    db $e3
    rst $38
    add e
    rst $38
    or b
    rst $38
    adc b
    ld a, a
    ld b, b
    ccf
    ld b, [hl]
    db $fc
    rrca

jr_020_5ac6:
    ld hl, sp+$0f

jr_020_5ac8:
    db $fc
    rrca
    cp $03
    ld a, $c3
    dec a
    rst $00
    db $fd
    rrca
    cp $06
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

jr_020_5ada:
    add b
    add b

jr_020_5adc:
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    ld b, $05
    ld b, $05
    rlca
    ld b, $0f
    add hl, bc
    rrca
    ld [$c3ff], sp
    rst $38
    ret nz

    rst $38
    ld [$be7f], sp
    ld [hl], a
    sbc h
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    ldh [rNR41], a
    ldh a, [rNR10]
    jr nc, jr_020_5ada

    jr nc, jr_020_5adc

    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp+$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rrca
    ld [$787f], sp
    rst $28
    sbc h
    ld [hl], e
    ld a, a
    rrca
    rrca
    nop
    nop
    nop
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rlca
    ld l, [hl]
    ld a, [c]
    ld e, h
    db $fc
    ldh [$60], a
    ldh [$60], a
    sbc h
    db $fc
    ld [bc], a
    cp $02
    cp $fc
    db $fc
    rra
    jr jr_020_5b76

    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr jr_020_5bc6

    ld a, a
    ldh [$9f], a
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    add $ff
    ld bc, $3eff
    cp $c0
    ret nz

    ldh a, [$90]

jr_020_5b76:
    db $fc
    sbc h
    ld [c], a
    cp $02
    cp $1c
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld a, a
    ld b, h
    ccf
    inc h
    ccf
    jr c, jr_020_5bca

    jr nz, jr_020_5bac

    add hl, de
    ld h, $3f

jr_020_5b90:
    jr nz, jr_020_5bd1

    rra
    rra
    cp $03
    db $fc
    rrca
    di
    ccf
    jp nz, $0cfe

    db $fc
    jr nc, jr_020_5b90

    ret nz

    ret nz

    nop
    nop
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop

jr_020_5bac:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ccf
    ld h, $3f
    jr nz, jr_020_5bdc

    add hl, de
    ld d, $1f
    db $10
    rra
    rrca
    rrca
    cp $06

jr_020_5bc6:
    db $fc
    inc e
    db $e4
    inc a

jr_020_5bca:
    ret z

    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$c0], a

jr_020_5bd1:
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

jr_020_5bdc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld [$0607], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    rrca
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    inc a
    jp $c33c


    rst $38
    rst $38
    ld hl, sp+$08
    ldh a, [$30]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp-$10
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
    ld a, $3e
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld a, $3e
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    call $cdcd
    call $cdcd
    call Call_020_78cd
    ld a, b
    nop
    nop
    nop
    nop
    di
    di
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    di
    di
    nop
    nop
    nop
    nop
    add $c6
    ld h, [hl]
    ld h, [hl]
    ld [hl], $36
    ld [hl], $36
    ld h, b
    ld h, b
    add $c6
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    jr jr_020_5c88

    jr jr_020_5c8a

    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ret nz

    ret nz

    pop bc
    pop bc
    ld sp, hl
    ld sp, hl
    pop bc
    pop bc
    db $fd
    db $fd
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e

jr_020_5c88:
    di
    di

jr_020_5c8a:
    sbc e
    sbc e
    sbc e
    sbc e
    ei
    ei
    sbc e
    sbc e
    nop
    nop
    nop
    nop
    jr nc, @+$32

    jr nc, @+$32

    jr nc, jr_020_5ccc

    rst $30
    rst $30
    jr nc, @+$32

    jr nc, jr_020_5cd2

    nop
    nop
    rlca
    rlca
    jr c, jr_020_5ce7

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nc, jr_020_5ced

    rrca
    rrca
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rlca
    jr nc, jr_020_5cf6

    ret z

    ld hl, sp+$4e
    cp $89
    rst $38

jr_020_5ccc:
    ld a, c
    rst $38
    ld [bc], a
    cp $0c
    db $fc

jr_020_5cd2:
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_020_5ce7:
    inc c
    rrca
    rrca
    rlca
    rlca
    rlca

jr_020_5ced:
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    rlca
    ld b, $00
    nop

jr_020_5cf6:
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    rra
    rst $38
    nop
    rst $38
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    db $fc
    db $fc
    ld hl, sp+$38
    ldh a, [$30]
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $fc
    db $fc
    ld a, a
    ld [hl], e
    ccf
    jr nc, jr_020_5d35

jr_020_5d35:
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    inc e
    rst $38
    ldh [rIE], a
    ld bc, $1010
    jr z, @+$3a

    ld b, h
    ld a, h
    ld b, h
    ld a, h
    add d
    cp $82
    cp $82
    cp $82
    cp $00
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $fc
    db $fc
    ld a, a
    ld [hl], e
    ccf
    jr nc, @+$11

    ld [$0000], sp
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    inc e
    rst $38
    ldh [rIE], a
    ld bc, $0dff
    db $10
    db $10
    jr z, jr_020_5db0

    ld b, h
    ld a, h
    call nz, $82fc
    cp $82
    cp $82
    cp $82
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
    inc c
    nop
    inc e
    nop
    inc a
    nop
    ld a, h
    nop
    ld h, b
    nop
    ldh a, [rP1]
    pop af
    nop
    ld h, e
    nop
    dec bc
    nop
    rra
    nop

jr_020_5db0:
    rra
    nop
    rrca
    nop
    inc b
    nop
    ld c, $00
    ld c, $00
    xor [hl]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
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
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    add hl, bc
    rlca
    dec b
    rlca
    inc b
    rrca
    inc c
    rra
    db $10
    rst $38
    ld h, h
    rst $38
    add h
    rst $38
    adc b
    rst $38
    ld [$86ff], sp
    rst $38
    pop af
    rst $38
    ld [de], a
    rst $38
    inc a
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$60], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0b0f], sp
    rra
    inc de
    rra
    db $10
    add hl, sp
    ld [hl], $f9
    sub $ff
    adc b
    rst $38
    adc h
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    nop
    db $fc
    inc hl
    db $fc
    ei
    rst $18
    ld [hl], c
    rst $38
    jr nz, @+$01

    nop
    add d
    cp $81
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rrca
    dec bc
    rra
    inc de
    rra
    db $10
    add hl, sp
    ld [hl], $f9
    sub $ff
    sbc b
    rst $38
    and h
    ld a, a
    ld h, b
    rst $38
    inc c
    rst $38
    nop
    db $fc
    inc hl
    db $fc
    ei
    rst $18
    ld [hl], c
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $fe82
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    stop
    dec sp
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld_long a, $ff00
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    db $10
    rrca
    inc c
    rlca
    inc b
    rlca
    inc b
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    rrca
    rrca
    rst $08
    ld a, b
    rst $20
    inc a
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $3cff
    jp $c33c


    rst $38
    rst $38
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    jr jr_020_5f30

    jr @+$1a

    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    jr jr_020_5f38

    jr jr_020_5f3a

    nop
    nop
    ld a, a
    ld c, b
    ccf
    jr z, jr_020_5fa8

    ld d, d
    rst $38
    sub c
    ld a, a
    ld d, b
    ccf
    inc a

jr_020_5f30:
    rrca
    ld [$0707], sp
    rst $38
    add c
    rst $38
    ld b, b

jr_020_5f38:
    rst $38
    ld b, b

jr_020_5f3a:
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    pop af
    ld c, $0e
    add c
    rst $38
    adc d
    cp $96
    cp $92
    cp $92
    cp $4c
    ld a, h
    ld b, h
    ld a, h
    jr c, jr_020_5f8c

    ccf
    jr nz, jr_020_5fd6

    ld e, b
    rst $38
    sub b
    ld a, a
    ld d, b
    ccf
    jr c, @+$11

    ld [$090f], sp
    ld b, $06
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7dff
    adc a
    adc c
    ld b, $06
    add c
    rst $38
    adc d
    cp $96
    cp $92
    cp $12
    ld a, [hl]
    ld c, h
    ld a, h
    ld b, h
    ld a, h
    jr c, jr_020_5fbc

    nop
    nop
    nop
    nop
    ld bc, $0300
    nop

jr_020_5f8c:
    ld h, e
    nop
    pop af
    nop
    ldh a, [rP1]
    ld h, b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_020_5fa8:
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_5fbc:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    inc hl
    ld a, h
    ld b, h
    ld a, b
    ld c, b
    ldh a, [$90]
    ld b, $06

jr_020_5fd6:
    adc a
    adc c
    rst $08
    ld c, c
    rst $28
    add hl, hl
    rst $38
    add hl, de
    rst $38
    sbc c
    ld a, a
    ld c, c
    ld a, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    pop af
    ld de, $09f9
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $fecc
    ld [hl-], a
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    ccf
    ld hl, $407f
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    jr c, jr_020_6060

    ld c, h
    ld c, h
    add $c6
    add $c6
    ld h, h
    ld h, h
    jr c, jr_020_606a

    nop
    nop
    nop
    nop
    jr jr_020_6050

    jr c, jr_020_6072

    jr jr_020_6054

    jr jr_020_6056

    jr jr_020_6058

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    ld c, $0e
    ld a, b
    ld a, b
    ldh [$e0], a

jr_020_6050:
    cp $fe
    nop
    nop

jr_020_6054:
    nop
    nop

jr_020_6056:
    ld a, [hl]
    ld a, [hl]

jr_020_6058:
    inc c
    inc c
    jr c, jr_020_6094

    ld b, $06
    add $c6

jr_020_6060:
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc a
    inc a

jr_020_606a:
    ld l, h
    ld l, h
    call z, $fecc
    cp $0c
    inc c

jr_020_6072:
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    ret nz

    ret nz

    db $fc
    db $fc
    ld b, $06
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ret nz

    ret nz

    db $fc
    db $fc
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop

jr_020_6094:
    nop
    nop
    cp $fe
    add $c6
    inc c
    inc c
    jr jr_020_60b6

    jr nc, jr_020_60d0

    jr nc, @+$32

    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    add $c6
    ld a, h
    ld a, h
    add $c6
    add $c6
    ld a, h
    ld a, h
    nop
    nop
    nop

jr_020_60b5:
    nop

jr_020_60b6:
    ld a, h
    ld a, h
    add $c6
    add $c6
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    ld a, h
    ld a, h
    nop
    nop
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, a
    ld b, a
    ld a, a
    ld b, b

jr_020_60d0:
    ccf
    jr nc, jr_020_60e2

    rrca
    ld a, a
    ld c, b
    ld a, a
    ld c, c
    ld a, a
    ld c, c
    rst $38
    adc c
    rst $38
    add hl, de
    rst $28
    add hl, hl
    rst $08
    ld c, c

jr_020_60e2:
    add a
    add a
    ld sp, hl
    ret


    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    jr nc, jr_020_6124

    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $28
    add hl, hl
    rst $28
    add hl, hl
    rst $28
    add hl, hl
    rst $28
    add hl, hl
    rst $28
    add hl, hl
    add $c6
    ld a, a
    ld c, b
    rst $30
    sub h
    rst $30
    sub h
    rst $30
    sub h
    rst $38
    adc b
    rst $38
    add b
    ld a, a
    ld b, c
    ld a, $3e
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and $e6
    rst $38
    sbc c
    rst $38
    sbc c
    ld h, [hl]
    ld h, [hl]

jr_020_6124:
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    ccf
    ld [hl+], a
    ld a, l
    ld b, l
    ld a, a
    ld c, a
    ld a, a
    ld b, b
    ccf
    jr nc, jr_020_60b5

    add b
    pop bc
    ld b, c
    jp $c342


    ld b, d
    add e
    add d
    rlca
    ld b, $cf
    ret z

    rst $38
    jr c, jr_020_6145

jr_020_6145:
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    jp $ef43


    ld l, h
    rst $38
    db $10
    rst $38
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    call $ff4d
    ld [hl-], a
    rst $38
    jr nc, jr_020_6165

jr_020_6165:
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rst $08
    call z, $30ff
    rst $38
    sub b
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$111f], sp
    ld e, $12
    inc a
    inc h
    inc a
    inc h
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$a0], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d

Call_020_61b2:
    rst $38
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    ccf
    ld sp, $407f

Call_020_61c2:
    ld a, a
    ld c, h
    jr c, jr_020_61fe

    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    db $fc
    call nz, $c4fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc e
    rra
    jr nz, @+$03

    ld e, $00
    ld bc, $0000
    nop
    nop
    nop
    ld a, c
    nop
    add [hl]
    nop
    nop
    rrca
    nop

jr_020_61fe:
    ld sp, hl
    ld b, $00
    ld sp, hl
    nop
    nop
    nop
    ccf
    nop
    ret nz

    nop
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    ccf
    nop
    ret nz

    nop
    jr c, jr_020_6219

jr_020_6219:
    inc b
    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld hl, sp+$04
    ret nz

    jr c, jr_020_6223

jr_020_6223:
    ret nz

    rrca
    rrca
    inc c
    inc c
    ld e, $12
    ld e, $12
    rra
    inc de
    rra
    db $10
    rrca
    ld [$0707], sp
    rst $38
    ld e, $fb
    adc d
    ld a, e
    ld c, d
    ld a, e
    ld c, d
    ei
    adc d
    di
    ld [de], a
    db $e3
    ld [hl+], a
    pop bc
    pop bc
    rst $38
    ld a, [hl]
    rst $08
    ld c, h
    rst $18
    ld d, c
    rst $38
    ld h, e
    rst $38
    ld h, a
    rst $38
    ld h, b
    rst $18
    ld d, b
    adc a
    adc a
    rst $38
    ld sp, $11ff
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    sbc c
    and $e6
    rst $38
    sbc h
    ld h, a
    ld h, h
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld a, b
    ld c, b
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, b
    ld c, b
    ld a, a
    ld b, a
    ccf
    jr nz, jr_020_62b0

    db $10
    rrca
    rrca
    cp $e2
    rst $38
    inc bc

jr_020_6298:
    rst $38
    and e

jr_020_629a:
    rst $38
    set 7, a
    dec de
    rst $28
    dec hl
    adc $ca
    inc b
    inc b
    rst $38
    sub c
    rst $28
    jr z, jr_020_6298

    jr z, jr_020_629a

    jr z, @+$01

    ld de, $01ff

jr_020_62b0:
    cp $82
    ld a, h
    ld a, h
    rst $38
    ld hl, sp-$41
    or b
    rst $38
    call nz, $8cff
    rst $38
    sbc h
    rst $38
    add b
    ld a, a
    ld b, d
    ccf
    ccf
    db $fc
    db $e4
    db $fc
    ld h, h
    cp $62
    cp $62
    cp $62
    cp $62
    cp $62
    sbc h
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, d
    nop
    ldh a, [rP1]
    pop af
    nop
    ld h, h
    nop
    nop
    nop
    ld b, e
    nop
    dec bc
    nop
    nop
    nop
    nop
    jr @+$1a

    jr jr_020_6314

    nop
    nop
    jr jr_020_6318

    jr jr_020_631a

    nop
    nop
    add $c6
    cp $ba
    cp $82
    cp $aa
    cp $82
    cp $82
    nop
    cp $00
    nop

jr_020_6314:
    nop
    nop
    nop
    nop

jr_020_6318:
    nop
    nop

jr_020_631a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0203
    inc bc
    inc b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    ld a, a
    ld [hl], b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ld b, b
    add c
    add c
    add e
    add d
    pop bc
    ld b, c
    nop
    nop
    nop
    nop
    jr c, jr_020_6392

    ld a, h
    ld b, h
    cp $82
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    add hl, de
    rst $38
    ldh [rIE], a
    ld bc, $07ff
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    pop bc
    pop bc
    add e
    add d
    rlca
    inc b

jr_020_6392:
    add e
    add d
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$78
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ccf
    dec sp
    rst $38
    pop bc
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8301
    add d
    add a
    add h
    rrca
    ld [$0407], sp
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
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
    rrca
    ld a, a
    ld [hl], a
    cp $82
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh [rNR41], a
    rlca
    dec b
    rlca
    dec b
    rrca
    ld [$0c0f], sp
    rrca
    ld a, [bc]
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    add b
    ldh a, [$30]
    db $fc
    inc e
    cp $1a
    rst $38
    add hl, sp
    rst $38
    inc sp
    rst $38
    rlca
    rst $38
    ld b, $ff
    nop
    ld hl, sp-$78
    ld a, h
    ld b, h
    ld a, b
    ld e, b
    or b
    ldh a, [$a0]
    ldh [$c0], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    rlca
    ld [$0a0f], sp
    rrca
    ld a, [de]
    rra
    db $10
    rra
    jr jr_020_648e

    inc d
    rrca
    ld [$0407], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    pop hl
    ld h, c
    ld hl, sp+$38
    db $fc
    inc [hl]
    rst $38
    ld [hl], e
    rst $38
    ld h, a

jr_020_648e:
    rst $38
    ld c, $ff
    inc c
    rst $38
    nop
    ldh a, [rNR10]
    ld hl, sp-$78
    ldh a, [$b0]
    ld h, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    rrca
    ld [$100f], sp
    rra
    inc d
    rra
    inc [hl]
    ccf
    jr nz, jr_020_64ed

    ld sp, $293e
    rra
    db $10
    rst $38
    dec c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    add e
    add d
    rst $30
    db $76
    ld sp, hl
    ld a, a
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    dec e
    rst $38
    jr @+$01

    nop
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$a0], a
    rlca
    inc c
    rra
    db $10
    rra
    jr nz, @+$41

    jr z, jr_020_652c

jr_020_64ed:
    ld l, b
    ld a, a
    ld b, b
    ld a, h
    ld h, e
    ld a, h
    ld d, e
    cp $06
    rst $38
    add hl, de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld [bc], a
    push hl
    rst $20
    db $fd
    ld a, a
    cp $6e
    cp $ee
    rst $38
    call Call_000_1cff
    rst $38
    add hl, de
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    rrca
    rrca
    db $10
    rra
    ld [$060f], sp
    rlca

jr_020_652c:
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    adc b
    ld a, a
    ld hl, sp+$07
    cp $81
    rst $38
    ld [hl], b
    ld a, a
    ld [$000b], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ei
    rst $38
    nop
    rst $38
    nop
    ld c, h
    nop
    nop
    ldh [$a0], a
    ldh a, [$b0]
    ldh a, [$90]
    ld [hl], b
    ld d, b
    jr nz, jr_020_657e

    add b
    add b
    ld b, b
    ret nz

    nop
    nop
    inc bc
    inc bc
    inc e
    inc e
    inc hl
    ccf
    ld de, $0c1f
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc e
    rst $20
    rst $38

jr_020_657e:
    nop
    rst $38
    or b
    cp c
    nop
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    and l
    nop
    nop
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$90]
    ldh [$e0], a
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    nop
    rrca
    ld [$0607], sp
    rra
    rra
    jr nz, jr_020_65eb

    jr @+$21

    ld b, $07
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    adc h
    di
    sbc a
    ld h, b
    rst $38
    ret nz

    db $fd
    jr nc, jr_020_65f4

    rst $38
    ld bc, $01ff
    cp $02
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $002d
    nop
    ldh a, [rNR10]
    ldh a, [$90]
    ld h, b
    ld h, b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    ccf
    jr nz, @+$21

    db $10
    rrca
    inc c
    rra

jr_020_65eb:
    rra
    jr nz, jr_020_662d

    inc e
    rra
    ld [bc], a
    ld [bc], a
    nop
    nop

jr_020_65f4:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    adc h
    ld a, a
    rst $00

jr_020_65fe:
    inc a
    rst $20

jr_020_6600:
    sbc b
    sbc b
    nop
    nop
    rst $38
    ld bc, $02fe
    cp $02
    db $fd
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld e, e
    nop
    nop
    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_65fe

    jr nz, jr_020_6600

    ret nz

    ret nz

    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    ret nz

    ei
    ld hl, sp+$1f
    db $fc

jr_020_662d:
    rlca
    ld hl, sp+$0f
    ldh [$3f], a
    ld b, b
    ld sp, hl
    ldh [$fe], a
    xor $1f
    rst $38
    ld bc, $80ff
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $d57f
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $18
    jr nz, @+$01

    inc b
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, [hl]
    nop
    rst $18
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    db $fd
    nop
    rst $38
    nop
    set 7, h
    rlca
    ldh a, [$1f]
    ret nz

    ld a, a
    add b
    rst $38
    ret nz

    ld a, e
    ldh [$3f], a
    ret nz

    rst $38
    nop
    di
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
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
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ldh [rDIV], a
    db $fc
    inc b
    cp $08
    cp $10
    db $fc
    db $10
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld a, h
    ld [$08fc], sp
    db $fc
    ld [$00fc], sp
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    db $fc
    nop
    cp $40
    cp $44
    rst $18
    ld b, h
    rst $18
    ld b, h
    cp $04
    cp $04
    rst $38
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ei
    nop
    db $fd
    inc b
    rst $38
    jr c, @+$01

    nop
    ld a, l
    ld [$04fd], sp
    db $fc
    inc b
    cp $08
    cp $08
    db $fc
    db $10
    db $fd
    db $10
    rst $38
    jr nz, @+$01

    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ret nz

    ld h, b
    rst $28
    ret nz

    rst $38
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ccf
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
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
    ld bc, $017f
    rst $38
    ld [bc], a
    rst $38
    ld [$08fc], sp
    db $fc
    ld [$08fc], sp
    db $fc
    ld [$00fc], sp
    ld a, a
    nop
    rst $38
    nop
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
    add $00
    rst $28
    ld hl, $00ff
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    dec b
    rlca
    ld [bc], a
    dec sp
    nop
    cp l
    nop
    nop
    nop
    ldh [rNR41], a
    ldh a, [rLCDC]
    ldh a, [$80]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    ld c, $fe
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc

jr_020_6794:
    jr jr_020_6794

    ld h, b
    db $fc
    ld b, b
    ldh a, [rLCDC]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [$08], a
    db $fd
    dec bc
    rst $38
    ld [$08fd], sp
    db $fc
    ld [$087c], sp
    ld a, l
    ld [$097d], sp
    ld a, l
    inc bc
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    add c
    rst $20
    nop
    rst $38
    ld b, $ff
    ld [$007c], sp
    ld a, b
    nop
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    sub b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    db $fd
    sub b
    ld hl, sp+$02
    rst $38
    inc e
    rst $38

jr_020_67e8:
    jr nz, jr_020_67e8

    nop
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    ld a, a
    ld [$087f], sp
    ld a, l
    ld [$087d], sp
    cp l
    ld [$88fd], sp
    db $fd
    ld c, b
    db $fd
    ld hl, $21ff
    rst $38
    ld hl, $20ff

jr_020_680b:
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_020_680b

    inc b
    cp a
    inc b
    cp a
    inc b
    cp a
    inc b
    cp [hl]
    inc b
    cp $04
    cp $08
    cp $10
    db $fd
    db $10
    rst $38
    nop
    ld hl, sp+$00
    cp $01
    rst $38
    ld bc, $017f
    rra
    ld [bc], a
    ccf
    ld [bc], a
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
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    ld bc, $0003
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh [rP1], a
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
    ld a, e
    ld a, a
    ld [bc], a
    ccf
    nop
    ld bc, $0000
    inc bc
    rlca
    inc e
    ccf
    ld h, b
    ld a, a
    add e
    rst $38
    inc bc
    jp $8100


    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    add h
    db $fc
    rrca
    rst $08
    nop
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld hl, sp+$00
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
    ld a, [hl]
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    cp a
    nop
    dec e
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    jp Jump_000_00f3


    pop hl
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$e0]
    ld hl, sp+$00
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
    inc b
    rst $38
    jr c, jr_020_6966

    nop
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
    nop
    adc h
    db $fd
    adc c
    ei
    ld c, [hl]
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld b, d
    ld a, [hl]
    ld [hl+], a
    ld a, [hl]
    adc b
    db $fc
    ld [$3ef8], sp
    cp $01
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld [$101f], sp
    ccf
    inc c
    ld e, $13
    ccf
    jr nz, @+$41

    jr nz, @+$81

    db $e4
    rst $38
    call nz, $c0ff
    rst $38
    pop bc
    rst $38
    nop
    nop
    inc bc
    add a
    adc h
    rst $08
    ld d, b
    rst $18
    ld d, c
    rst $18
    ld c, a
    rst $08
    ld b, e
    rst $00
    db $e4
    rst $28
    nop
    nop
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld sp, hl
    adc c
    ei
    adc d
    ei
    ld a, [bc]
    rst $38
    inc c
    rst $38
    ld [bc], a
    inc bc
    ld [hl-], a
    ld a, e
    ld c, c
    rst $38
    add l
    db $fd
    add hl, bc
    db $fd
    ld de, $21f9
    pop af
    ld hl, $10e1
    ldh a, [rNR22]
    rst $30
    jr @+$01

    db $10
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    di
    ld [de], a
    di
    nop
    nop

jr_020_6966:
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR43], a
    ld a, $23
    ccf
    jr nz, jr_020_69b9

    jr nz, jr_020_69bb

    jr nz, jr_020_69bd

    inc hl
    ccf
    inc e
    ld e, $00
    nop
    ld h, c
    rst $38
    add d
    rst $38
    inc c
    cp $30
    ld hl, sp-$40
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    add a
    rst $38
    ld b, a
    rst $38
    ld b, [hl]
    ld a, a
    jr nz, jr_020_6a1b

    jr nz, jr_020_69dd

    inc de
    ccf
    inc c
    ld e, $00
    nop
    sbc b
    rst $38
    ld de, $33ff
    rst $38
    ld h, e
    rst $38
    and b
    rst $38
    db $10
    cp a
    rrca
    rra
    nop
    nop
    adc h
    rst $38
    adc h
    rst $38
    adc h

jr_020_69b9:
    rst $38
    inc c

jr_020_69bb:
    rst $38
    ld a, [bc]

jr_020_69bd:
    rst $38
    adc c
    ei
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld b, a
    rst $20

jr_020_69c6:
    ld c, c
    rst $18

jr_020_69c8:
    ld [hl], c
    rst $38

jr_020_69ca:
    inc bc
    rst $38

jr_020_69cc:
    inc b
    cp $18
    db $fc
    ldh [$f0], a
    nop
    nop
    ld [de], a
    di
    sub d
    di
    sub d
    di
    sub d
    di
    sub d

jr_020_69dd:
    di
    sub d
    di
    ld h, c
    db $e3
    nop
    nop
    jr nz, jr_020_69c6

    jr nz, jr_020_69c8

    jr nz, jr_020_69ca

    jr nz, jr_020_69cc

    jr nz, @-$1e

    ld b, b
    ldh [$80], a
    ret nz

    nop
    nop
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    ld b, d
    ld b, d
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, b
    ld b, b
    inc a
    inc a
    ld [bc], a
    ld [bc], a
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, d

jr_020_6a1b:
    ld b, d
    ld a, [hl]
    ld a, [hl]
    ld b, b
    ld b, b
    ld a, $3e
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld a, h
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, [hl]
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc a
    inc a
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    db $fc
    db $fc
    add d
    add d
    add d
    add d
    db $fc
    db $fc
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_020_6ae2

    inc b
    inc b
    inc a
    inc a
    ld b, h
    ld b, h
    ld a, $3e
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $3e
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld a, $3e
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld a, h
    ld a, h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc a
    inc a

jr_020_6ae2:
    nop
    nop
    ld a, b
    ld a, b
    add h
    add h
    add b
    add b
    ld a, h
    ld a, h
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, [hl]
    ld d, b
    ld d, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rra
    db $10
    ccf
    jr nz, jr_020_6b6e

    inc hl
    inc a
    inc h
    inc a
    inc h
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    call nz, Call_000_243c
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    ccf
    inc hl
    ccf
    jr nz, jr_020_6b6c

    db $10
    rrca
    rrca
    nop
    nop
    nop
    nop
    inc a
    inc h
    inc a
    inc h
    db $fc
    call nz, Call_000_04fc
    ld hl, sp+$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h

jr_020_6b6c:
    inc a
    inc h

jr_020_6b6e:
    inc a
    inc h
    inc a
    inc h
    inc a
    inc h
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld [de], a
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    nop
    db $fc
    db $fc
    add d
    add d
    add d
    add d
    db $fc
    db $fc
    adc b
    adc b
    add h
    add h
    add d
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    inc b
    inc b
    inc a
    inc a
    ld b, h
    ld b, h
    ld a, $3e
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $3e
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld a, $3e
    nop
    nop
    jr @+$1a

    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    jr @+$1a

    nop
    nop
    jr @+$1a

    jr @+$1a

    ld [$c001], a
    ld a, [$c001]
    cp $ff
    jp z, Jump_020_6c55

    cp $98
    jp z, Jump_020_6bf4

    jp c, Jump_020_6bf4

    cp $a3
    jr z, jr_020_6bee

    jp nc, Jump_020_6bf4

jr_020_6bee:
    call Call_000_22aa
    jp Jump_020_6c59


Jump_020_6bf4:
    ld l, a
    ld e, a
    ld h, $00
    ld d, h
    add hl, hl
    add hl, de
    ld de, $4000
    add hl, de
    ld a, h
    ld [$c0ec], a
    ld a, l
    ld [$c0ed], a
    ld a, [hl]
    and $c0
    rlca
    rlca
    ld c, a

Jump_020_6c0d:
    ld d, c
    ld a, c
    add a
    add c
    ld c, a
    ld b, $00
    ld a, [$c0ec]
    ld h, a
    ld a, [$c0ed]
    ld l, a
    add hl, bc
    ld c, d
    ld a, [hl]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $c026
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_020_6c49

    ld a, e
    cp $07
    jr nz, jr_020_6c40

    ld a, [$c001]
    cp $14
    jr nc, jr_020_6c39

    ret


jr_020_6c39:
    ld a, [hl]
    cp $14
    jr z, jr_020_6c49

    jr c, jr_020_6c49

jr_020_6c40:
    ld a, [$c001]
    cp [hl]
    jr z, jr_020_6c49

    jr c, jr_020_6c49

    ret


jr_020_6c49:
    call Call_000_22c0
    ld a, c
    and a
    jp z, Jump_020_6c59

    dec c
    jp Jump_020_6c0d


Jump_020_6c55:
    call Call_000_22d6
    ret


Jump_020_6c59:
    ld a, [$c001]
    ld l, a
    ld e, a
    ld h, $00
    ld d, h
    add hl, hl
    add hl, de
    ld de, $4000
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c006
    ld a, [de]
    ld b, a
    rlca
    rlca
    and $03
    ld c, a
    ld a, b
    and $0f
    ld b, c
    inc b
    inc de
    ld c, $00

jr_020_6c7b:
    cp c
    jr z, jr_020_6c83

    inc c
    inc hl
    inc hl
    jr jr_020_6c7b

jr_020_6c83:
    push af
    push hl
    push bc
    ld b, $00
    ld c, a
    cp $03
    jr c, jr_020_6c93

    ld hl, $c02e
    add hl, bc
    set 2, [hl]

jr_020_6c93:
    pop bc
    pop hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    pop af
    push hl
    push bc
    ld b, $00
    ld c, a
    ld hl, $c026
    add hl, bc
    ld a, [$c001]
    ld [hl], a
    pop bc
    pop hl
    inc c
    dec b
    ld a, b
    and a
    ld a, [de]
    inc de
    jr nz, jr_020_6c7b

    ld a, [$c001]
    cp $14
    jr nc, jr_020_6cbc

    jr jr_020_6ce6

jr_020_6cbc:
    ld a, [$c001]
    cp $86
    jr z, jr_020_6ce6

    jr c, jr_020_6cc7

    jr jr_020_6ce6

jr_020_6cc7:
    ld hl, $c02a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c012
    ld de, $6ce7
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c005]
    and a
    jr nz, jr_020_6ce6

    ldh a, [rNR50]
    ld [$c005], a
    ld a, $77
    ldh [rNR50], a

jr_020_6ce6:
    ret


    rst $38
    db $ed
    nop
    ld [hl], l
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$1408], a
    call c, $e5b3
    ld b, l
    call c, Call_020_61b2
    call c, Call_020_45b3
    call c, Call_020_6fb2
    pop bc
    call c, Call_020_45b3
    call c, $91b2
    call c, Call_020_45b3
    call c, $9db2
    call c, Call_000_31b2
    db $10
    jr nc, @-$18

    or l
    push hl
    ld b, e
    ld b, e
    ld b, a
    add e
    add e
    add c
    call c, $e5b3
    add e
    ld b, e
    ld h, e
    ld b, c
    sub c
    add c
    ld h, c
    add c
    ld h, c
    ld b, c
    ld sp, $3141
    dec d
    ld h, c
    sub a
    and $b5
    push hl
    ld b, c
    add a
    add e
    ld b, e
    ld h, e
    ld b, c
    sub c
    add c
    ld h, c
    add c
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld h, l
    ld b, c
    ld h, b
    jp nz, $ec93

    nop
    call c, $80b2
    ld h, b
    add c
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld sp, $6161
    ld sp, $b161
    sub c
    add c
    ld h, c
    or b
    and b
    or c
    add c
    ld b, c
    add c
    ld [hl], c
    add c
    sub c
    db $e4
    ld de, $1201
    push hl
    ld h, b
    sub c
    add c
    ld h, c
    sub c
    ld b, d
    ld b, b
    or c
    sub c
    add l
    ld b, b
    ld d, b
    ld h, c
    ld h, c
    ld sp, $b161
    sub c
    add c
    ld h, c
    or b
    and b
    or c
    add c
    ld b, c
    add c
    ld [hl], c
    add c
    sub c
    db $e4
    ld de, $1201
    push hl
    ld h, b
    sub c
    add c
    sub c
    db $e4
    ld sp, $4041
    jr nc, @+$42

    jr nc, jr_020_6dd5

    jr nc, jr_020_6dde

    db $ec
    inc bc
    cp $00
    ld a, [de]
    ld l, l
    db $ec
    inc bc
    ld [$1506], a
    call c, $e5c4
    or l
    call c, $e4c2
    ld b, c
    call c, $e5c4
    or l
    call c, $e4c2
    ld b, c
    call c, $e5b2
    or c
    db $e4
    ld de, $1131
    push hl
    or c
    sub c
    add c
    ld h, c
    call c, $e4c4
    dec d
    call c, Call_020_61c2
    call c, $15c4
    call c, Call_020_61c2
    call c, $11b2
    ld sp, $3141
    ld de, $b1e5

jr_020_6dd5:
    sub c
    add c
    call c, Call_020_45c2
    or e
    or e
    or a
    or e

jr_020_6dde:
    or e
    or c
    call c, $e4c6
    ld b, e
    push hl
    or e
    sub e
    db $e4
    inc de
    push hl
    or l
    sub c
    add a
    ld h, l
    sub c
    db $e4
    rla
    push hl
    ld b, l
    add c
    or a
    db $e4
    ld b, e
    push hl
    or e
    sub e
    db $e4
    inc de
    push hl
    or l
    db $e4
    ld sp, $3547
    ld de, $c230
    ld h, e
    ld c, c
    call c, $ecc6
    ld [bc], a
    ld b, c
    ld sp, $e511
    or l
    db $e4
    ld de, $e533
    or e
    db $e4
    ld b, l
    ld h, c
    add a
    sub l
    add c
    sub e
    ld h, e
    adc c
    ld b, c
    ld sp, $e511
    or l
    db $e4
    ld de, $e533
    or e
    db $e4
    ld b, l
    ld h, c
    add a
    sub e
    ld h, e
    inc sp
    db $e3
    inc de
    db $e4
    or a
    call c, $e3c2
    ld b, e
    call c, $ecc6
    inc bc
    push hl
    or b
    and b
    or b
    db $e4
    db $10
    cp $00
    ldh [$6d], a
    call c, $e410
    or l
    db $e3
    db $10
    ret nz

    db $e4
    or l
    db $e3
    db $10
    ret nz

    db $e4
    or b
    ret nz

    sub b
    ret nz

    add b
    ret nz

    sub b
    ret nz

    or b
    ret nz

    db $e3
    db $10
    ret nz

    jr nc, @-$3e

    db $10
    ret nz

    db $e4
    sub l
    db $e3
    db $10
    ret nz

    db $e4
    sub l
    db $e3
    db $10
    ret nz

    db $e4
    sub b
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ret nz

    add b
    ret nz

    sub b
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, @-$3e

    ld b, b
    ret nz

    or b
    ret nz

jr_020_6ea4:
    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    db $e3
    stop
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    db $e3
    ld b, b
    jr nc, jr_020_6f20

    ret nz

    db $e4
    jr nc, jr_020_6ea4

    ld b, b
    ret nz

jr_020_6ee6:
    or b
    ret nz

jr_020_6ee8:
    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

jr_020_6ef2:
    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    or b
    ret nz

    sub b
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    push hl
    or b

jr_020_6f20:
    ret nz

    db $e4
    db $10
    ret nz

    jr nz, jr_020_6ee6

    jr nc, jr_020_6ee8

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

jr_020_6f30:
    jr nc, jr_020_6ef2

jr_020_6f32:
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    ld b, b
    ret nz

jr_020_6f3c:
    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    or b
    and b
    or b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ret nz

    add b
    ret nz

jr_020_6f68:
    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nz, jr_020_6f30

    jr nc, jr_020_6f32

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

jr_020_6f7a:
    jr nc, jr_020_6f3c

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

    ld h, b
    ret nz

    jr nc, jr_020_6f68

    or b
    ret nz

    or b
    ret nz

    sub b
    ret nz

    sub b
    ret nz

    add b
    ret nz

Call_020_6fb2:
    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_020_6f7a

    cp $00
    and b
    ld l, [hl]
    db $ed
    nop
    adc h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$1408], a
    ret c

    or d
    push hl
    sub l
    sub c
    sub c
    sub c
    and l
    and l
    ld [hl], l
    ld [hl], l
    sub l
    ld b, l
    sub l
    sub c
    sub c
    sub c
    and l
    and l
    sub l
    ld [hl], l
    sbc e
    sub l
    sub c
    sub c
    sub c
    and l
    and l
    ld [hl], l
    ld [hl], l
    sub l
    ld b, l
    sub l
    sub c
    sub c
    sub c
    and l
    and l
    ld [hl], l
    db $e4
    dec [hl]
    dec hl
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    push hl
    sub l
    sub c
    sub c
    sub c
    and l
    and l
    ld [hl], l
    ld [hl], l
    sub l
    ld b, l
    sub l
    sub c
    sub c
    sub c
    and l
    and l
    sub l
    ld [hl], l
    sbc e
    cp $00
    sbc $6f
    db $ec
    ld [bc], a
    ret c

    jp nz, $25e4

    ld hl, $2121
    dec [hl]
    dec [hl]
    dec b
    dec b
    dec h
    push hl
    sub l
    db $e4
    dec h
    ld hl, $2121
    dec [hl]
    dec [hl]
    dec h
    and l
    sbc e
    dec h
    ld hl, $2121
    dec [hl]
    dec [hl]
    dec b
    dec b
    dec h
    push hl
    sub l
    db $e4
    dec h
    ld hl, $2121
    dec [hl]
    dec [hl]
    dec b
    add l
    ld a, e
    ret c

    sub b
    push hl
    ccf
    scf
    ccf
    scf
    and $af
    and a
    push hl
    dec sp
    ld e, e
    ret c

    jp nz, $25e4

    ld hl, $2121
    dec [hl]
    dec [hl]
    dec b
    dec b
    dec h
    push hl
    sub l
    db $e4
    dec h
    ld hl, $2121
    dec [hl]
    dec [hl]
    dec h
    and l
    sbc e
    cp $00
    ld a, [hl+]
    ld [hl], b
    call c, $ea10
    ld [bc], a
    dec d
    rst $08
    set 4, h
    inc bc
    daa
    scf
    ld [hl], a
    and a
    sub a
    and a
    ld [hl], a
    sub e
    inc hl
    sub a
    and a
    db $e3
    rla
    daa
    ccf
    ccf
    db $e4
    xor a
    db $e3
    scf
    ld d, a
    db $e4
    cpl
    cpl
    db $e4
    daa
    scf
    ld [hl], a
    and a
    cp $00
    ld [hl], l
    ld [hl], b
    call c, $03b3
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    or e
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc

Jump_020_70bf:
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    or e
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    or e
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or e
    inc bc
    or c
    inc bc
    or c
    inc bc
    or e
    inc bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    or e
    inc bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    call c, $03b3
    or e
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or e
    inc bc
    or e
    inc bc
    cp $00
    jp $ed70


    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$1408], a
    call c, $e5b2
    add b
    ld [hl], b
    ld h, c
    ld d, c
    ld b, c
    ld sp, $1121
    ld bc, $b6dc
    dec sp
    inc bc
    call c, $e4b2
    cpl
    set 3, h
    or h
    push hl
    and e
    rst $08
    rst $00
    call c, $e6b2
    sub c
    push hl
    and c
    sub e
    jr nz, @+$32

    ld sp, $2131
    ld sp, $3121
    ld d, c
    jr nz, @+$32

    ld sp, $2131
    and $a3
    call c, $e5b4
    or e
    call c, Call_000_20b2
    jr nc, jr_020_71e3

    ld sp, $3121
    ld hl, $5131
    jr nz, @+$32

    ld sp, $2131
    and $a1
    push hl
    or c
    call c, $a3b4
    cp $00
    add a
    ld [hl], c
    db $ec
    inc bc
    ld [$1506], a
    call c, $e4c2
    jr nz, jr_020_71e2

    ld bc, $b1e5
    and c
    sub c
    add c
    ld [hl], c
    ld h, c
    call c, $9bc7
    db $e4
    inc de
    call c, $e5c2

jr_020_71e2:
    db $10

jr_020_71e3:
    jr nz, @+$23

    ld hl, $2111
    ld de, $4121
    db $10
    jr nz, jr_020_720f

    ld hl, $e611
    sub e
    call c, $e4c5
    inc de
    call c, $20c2
    push hl
    jr nz, jr_020_721d

    ld hl, $2111

jr_020_71ff:
    ld de, $4121
    db $10

jr_020_7203:
    jr nz, jr_020_7226

    ld hl, $dc11
    add $e4
    daa

jr_020_720b:
    call c, $35c2
    ld d, e

jr_020_720f:
    inc sp
    push hl
    and c
    db $e4
    dec [hl]
    ld d, e
    ld sp, $c5dc

jr_020_7218:
    inc hl
    call c, $35c2

jr_020_721c:
    ld d, e

jr_020_721d:
    inc sp
    push hl
    and c

jr_020_7220:
    db $e4
    inc sp
    ld d, e
    call c, $37c5

jr_020_7226:
    cp $00

jr_020_7228:
    rst $18
    ld [hl], c
    call c, $cf10
    rst $00
    db $e4
    ld hl, $91e5
    db $e4
    ld bc, $2031
    ret nz

jr_020_7237:
    sub b
    ret nz

    jr nz, @-$3e

jr_020_723b:
    sub b
    ret nz

    jr nz, jr_020_71ff

jr_020_723f:
    sub b
    ret nz

    jr nz, jr_020_7203

jr_020_7243:
    sub b
    ret nz

    jr nz, @-$3e

jr_020_7247:
    sub b
    ret nz

    jr nz, jr_020_720b

jr_020_724b:
    sub b
    ret nz

    jr nz, jr_020_720f

    and c
    sub c
    ld sp, $c020
    sub b

jr_020_7255:
    ret nz

    jr nz, jr_020_7218

    sub b

jr_020_7259:
    ret nz

    jr nz, jr_020_721c

    sub b

jr_020_725d:
    ret nz

    jr nz, jr_020_7220

    sub b

jr_020_7261:
    ret nz

    jr nz, @-$3e

    sub b

jr_020_7265:
    ret nz

    jr nz, jr_020_7228

    sub b

jr_020_7269:
    ret nz

    jr nz, @-$3e

    push hl

jr_020_726d:
    sub c
    db $e4
    ld bc, $3021
    ret nz

    and b
    ret nz

    jr nc, jr_020_7237

    and b
    ret nz

    jr nc, jr_020_723b

    and b
    ret nz

    jr nc, jr_020_723f

    and b
    ret nz

    jr nc, jr_020_7243

    and b
    ret nz

    jr nc, jr_020_7247

    and b
    ret nz

    jr nc, jr_020_724b

    push hl
    and b
    ret nz

    db $e4
    db $10
    ret nz

    ld b, b
    ret nz

    jr nc, jr_020_7255

    and b
    ret nz

    jr nc, jr_020_7259

    and b
    ret nz

    jr nc, jr_020_725d

    and b
    ret nz

    jr nc, jr_020_7261

    and b
    ret nz

    jr nc, jr_020_7265

    and b
    ret nz

    jr nc, jr_020_7269

    and b
    ret nz

    jr nc, jr_020_726d

    push hl
    and b
    ret nz

    db $e4
    db $10
    ret nz

    ld b, b
    ret nz

    cp $00
    dec [hl]
    ld [hl], d
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
    nop
    ld a, a
    nop
    rst $30
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $30
    ld h, a
    ld bc, $016f
    ld a, a
    ld bc, $007f
    ld l, a
    ld [bc], a
    ld a, a
    nop
    ld d, l
    dec b
    ld a, a
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    add hl, hl
    ld bc, $017f
    xor a
    ld bc, $006f
    rst $20
    ld bc, $004f
    ld a, a
    inc bc
    ld a, a
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
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rst $38
    nop
    ccf
    nop
    cpl
    ld [bc], a
    cpl
    ld bc, $3501
    dec b
    inc hl
    dec b
    rst $28
    nop
    rrca
    ld [de], a
    adc a
    ld de, $0573
    ld l, a
    rlca
    dec h
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

jr_020_7469:
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
    rst $28
    ld b, d
    ld l, a
    nop
    rst $30
    nop
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
    ld [bc], a
    ld l, l
    jr nz, jr_020_7469

    inc bc
    inc bc
    inc hl
    ld [c], a
    nop
    inc l
    inc b
    ld c, l
    jr nz, jr_020_74c1

    ld b, d
    ld b, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_020_74c1:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld bc, $00ef
    ld a, e
    ld bc, $017b
    ld l, a
    nop
    ld [hl], a
    nop
    ld a, a
    inc bc
    ld [hl], a
    nop
    ld bc, $054f
    cpl
    nop
    ld l, l
    inc bc
    rst $20
    nop
    ld l, e
    ld hl, $010f
    inc bc
    nop
    ld c, e
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
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld e, a
    nop
    rst $38
    nop
    ld a, e
    nop
    nop
    ld [hl], a
    ld de, $013b
    daa
    inc b
    ld b, a
    dec b
    ld [hl], e
    ld [bc], a
    ld b, e
    ld h, e
    ld h, a
    dec b
    ld c, d
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
    push af
    ld c, c
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], a
    ld bc, $017f
    or a
    nop
    ld l, a
    nop
    nop
    scf
    ld b, c
    inc de
    ld [bc], a
    ld [hl], a
    ld b, b
    rla
    inc b
    db $dd
    inc de
    push de
    ld bc, $0157
    ld d, e
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
    ld a, a
    nop
    rst $30
    ld b, b
    db $fd
    nop
    ld e, a
    ld [bc], a
    ld l, a
    nop
    ld c, a
    nop
    ld a, a
    ld bc, $0077
    nop
    ld h, a
    ld b, b
    cpl
    ld bc, $414f
    ld e, e
    ld bc, $0177
    ld h, a
    nop
    ld h, e
    inc bc
    dec b
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
    ccf
    nop
    ccf
    nop
    cpl
    nop
    ld a, a
    dec b
    ld h, l
    ld b, b
    rst $28
    inc b
    ld [hl], a
    ld bc, $017f
    nop
    ld b, a
    inc bc
    ccf
    ld de, $0067
    ld c, a
    ld bc, $036f
    ld l, a
    ld bc, $0573
    rst $08
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
    ld bc, $006b
    cp a
    nop
    rla
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $407f
    nop
    ld c, a
    inc b
    ld [hl], a
    ld bc, $06e7
    dec c
    dec h
    dec a
    inc bc
    sbc a
    ld b, h
    scf
    ld b, d
    ld hl, $ffff
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
    nop
    rst $38
    ld bc, $007f
    ld [hl], a
    nop
    ld [hl], a
    nop
    rst $38
    nop
    ld a, e
    nop
    rst $18
    nop
    ld l, a
    ld [hl], a
    inc b
    rst $38
    inc bc
    ld [hl], a
    ld b, d
    ld a, a
    nop
    ld [hl], a
    inc b
    ld [hl], a
    ld bc, $007b
    ld [hl], a
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
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    ld bc, $2a7f
    ld b, $7f
    nop
    rst $30
    ld bc, $01ff
    rst $30
    nop
    ccf
    nop
    rst $38
    ld de, $00ff
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

Call_020_78cd:
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
    nop
    ld a, a
    nop
    ld d, a
    ld bc, $01ff
    rst $08
    ld [bc], a
    rst $20
    ld b, $7f
    nop
    ld a, a
    nop
    ld l, a
    ld [hl], l
    ld b, c
    ei
    ld bc, $0077
    rst $28
    nop
    ld e, a
    ld bc, $0173
    ld h, a
    dec b
    ld a, a
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
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    ld bc, $00ff
    ld a, a
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    ld a, a
    ld bc, $0067
    rst $20
    jr nz, jr_020_7a00

    nop
    rst $38
    nop
    ld l, a
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38

jr_020_7a00:
    ld bc, $01f7
    ld a, a
    nop
    ld a, a
    ld bc, $0067
    ld a, a
    jr nz, @+$01

    nop
    rst $18
    ld bc, $7f7f
    nop
    cp a
    inc bc
    ld a, a
    ld bc, $003b
    rst $30
    nop
    ld [hl], a
    ld b, b
    cp a
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    rst $38
    db $76
    inc bc
    ld [hl], a
    inc bc
    ccf
    nop
    rst $30
    ld [bc], a
    ld [hl], a
    nop
    ld h, a
    nop
    ld [hl], a
    nop
    ccf
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
    rst $38
    rst $38
    rst $38
    ld bc, $007f
    ld a, a
    ld bc, $007f
    ccf
    nop
    ld a, a
    nop
    rst $38
    jr nz, jr_020_7b6d

    nop
    ld a, e
    ld [hl], e
    ld bc, $007f
    ld l, a
    nop
    ld a, a
    ld bc, $0067
    ld a, l
    nop
    rst $28
    ld bc, $00bb
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

jr_020_7b6d:
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
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    ld e, a
    nop
    rst $38
    nop
    ld e, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $20
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
    rst $38
    rst $38
    rst $38
    ld l, a
    nop
    ld [hl], a
    nop
    scf
    ld bc, $02f3
    ld h, a
    ld bc, $00f5
    ld a, a
    nop
    ccf
    ld bc, $5740
    ld b, h
    ld a, a
    nop
    rla
    ld bc, $0221
    ld [hl], a
    db $10
    ld [hl], a
    ld de, $457d
    dec de
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
    ld h, a
    ld [bc], a
    ld [hl], a
    nop
    ld a, a
    nop
    rst $28
    nop
    rst $28
    ld bc, $003f
    ld a, a
    nop
    ld a, a
    ld bc, $7300
    ld d, a
    rla
    ld bc, $6373
    ld [hl], a
    ld bc, $0107
    dec a
    ld bc, $2137
    dec c
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
    ld l, a
    inc b
    ld [hl], a
    nop
    ld b, a
    jr nz, jr_020_7d6e

    dec b
    ld c, e
    nop
    ld h, a
    nop
    ld b, e
    ld bc, $0153
    ld [bc], a
    scf
    ld b, d
    rst $38
    ld b, c
    ld h, e
    nop
    inc hl
    nop
    ld c, a
    ld b, l
    ld a, l
    ld bc, $036f
    ld d, [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_020_7d5d:
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

jr_020_7d6e:
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
    rst $28
    nop
    rst $20
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld [hl], a
    ld bc, $006b
    ld d, a
    ld bc, $ea00
    rlca
    scf
    jr nz, jr_020_7d5d

    inc bc
    dec hl
    dec b
    ld h, a
    ld bc, $0137
    ld h, a
    ld [bc], a
    ld h, e
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
    ld c, a
    nop
    ld [hl], a
    nop
    ld l, a
    nop
    ld [hl], a
    nop
    ld e, a
    nop
    ld h, a
    ld bc, $287f
    rst $38
    nop
    ld b, $57
    inc bc
    ld l, e
    ld bc, $0177
    ld d, l
    nop
    ld [hl], a
    ld [$024e], sp
    ld e, a
    dec b
    ld [hl], l
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
    ld a, a
    nop
    ld a, a
    nop
    db $ed
    nop
    ld [hl], a
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld [bc], a
    ld l, a
    ld de, $0127
    ld c, l
    inc bc
    ld h, a
    ld [bc], a
    ld l, e
    ld bc, $0117
    ld [hl], a
    db $10
    push hl
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
    daa
    nop
    ld l, e
    nop
    rla
    nop
    ld a, a
    ld b, c
    ld a, a
    ld bc, $417f
    ld h, a
    ld bc, $00ef
    nop
    ld d, [hl]
    ld b, h
    dec bc
    ld bc, $1057
    ld [hl], a
    ld bc, $0373
    ld a, h
    ld h, $63
    ld de, $ff3d
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
    rst $28
    ld [bc], a
    rst $30
    nop
    ld l, e
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    rst $38
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld [bc], a
    ld l, a
    ld b, b
    ld h, a
    ld bc, $023f
    di
    ld [bc], a
    ld c, a
    inc bc
    ld h, e
    ld bc, $039f
    ld b, e
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
