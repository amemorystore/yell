; disasSembly of "yell.gbc"
SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    ld [hl], a
    cp e
    dec e
    db $e3
    db $d3
    ld e, l
    db $db
    ld hl, sp-$0d
    ld l, b
    xor d
    ld a, b
    di
    db $28, $b4
    di
    rst $10
    ld a, [$8e61]
    push hl
    dec h
    ld b, l
    ret nc

    ld b, c
    ld b, [hl]
    ld [hl+], a

jr_009_401b:
    adc h
    sub l
    ld c, [hl]

jr_009_401e:
    dec sp
    sub c
    or h
    ld e, h
    ld d, b
    sbc b
    add l
    ld c, e
    cp d
    xor a
    ld c, c
    ld d, e
    ld a, [de]
    cp e
    ld h, h
    ld [de], a
    jr z, jr_009_4064

    ld a, $a9
    jp nc, $c228

    sub a
    adc h
    db $e4
    add hl, hl
    add sp, -$3b
    ret nc

    sub h
    add [hl]
    ld c, l
    jr nz, jr_009_4095

    pop bc
    ld d, [hl]
    dec h
    jr nc, jr_009_401e

    ld h, h
    ld a, [hl-]
    ld [hl+], a
    add hl, bc
    and l
    ld d, b
    ld b, [hl]
    ld [$eac5], sp
    ld hl, $bc32
    db $10
    sbc d
    db $30, $a5
    rst $30
    push hl
    adc h
    sbc c
    ld b, l
    ld a, [hl+]
    cp $a1
    sub c
    ld d, d
    ld [hl+], a
    sub b
    sub c

jr_009_4064:
    adc d
    ld c, h
    ld h, e

jr_009_4067:
    dec sp
    ld e, l
    add c
    jr jr_009_407c

    ld e, b
    ld h, e
    ld [$c1b4], sp
    ld [hl], l
    ld h, e
    add hl, de
    ld b, $96
    inc e
    and h
    push bc
    adc b
    ld h, d
    sbc a

jr_009_407c:
    or l
    ld d, h
    adc $42
    ld b, $08
    xor b
    sub [hl]
    jr nc, @-$72

    ld d, $8b
    adc d
    ld a, [hl]
    sbc c
    jr nc, jr_009_401b

    xor d
    xor d
    ld d, b
    ld c, d
    sbc h
    ld d, c
    adc h
    ld [hl+], a

jr_009_4095:
    sub h
    add [hl]
    ld c, [hl]
    daa
    add c
    ld c, b
    rst $30
    add l
    adc c
    ld h, b
    ld b, d
    ld b, l
    ld hl, $8a51
    sub e
    ld d, $a1
    adc b
    sbc b
    jr jr_009_40bd

    ld de, $a549
    and b
    add l
    jr nc, jr_009_4067

    ld l, $f2
    ld a, [hl+]
    xor d
    dec e
    ld hl, $9562
    scf
    ld d, [hl]
    cp a

jr_009_40bd:
    rst $38
    and b
    sub e
    adc c
    xor d
    rst $10
    pop bc
    ld b, [hl]
    sub d
    sub b
    sub b
    adc c
    add c
    inc b
    dec d
    add hl, sp
    ld l, d
    and c
    sub b
    sbc l
    dec h
    ld c, $04
    ld d, [hl]
    ld h, a
    ld e, b
    dec d
    ld a, [bc]
    jp z, Jump_000_128d

    ld d, a
    adc d
    sub d
    inc l
    ld [de], a
    xor c
    add hl, bc
    ld c, $8e
    inc h
    add h
    ld h, e
    add hl, hl
    ld b, d
    ld [hl+], a
    add hl, hl
    inc hl
    ld [hl-], a
    ld c, h
    ld e, b
    ld h, h
    inc de
    ld a, d
    sub l
    xor d
    adc c
    adc c
    ld d, l
    sbc c
    ld d, l
    and d
    inc d
    ld e, d
    jr c, @-$19

    ld hl, $aa0a
    ld l, $95
    ld d, l
    and c
    xor e
    ld c, [hl]
    ld h, [hl]
    or h
    ldh a, [$f7]
    ld h, d
    ld a, e
    ld a, [de]
    or c
    ld c, $79
    xor h
    ret nc

    rst $08
    ld e, $6e
    db $10
    and h
    and a
    sbc d
    or b
    ld a, [hl-]
    cpl
    dec e
    ret


    ld c, c
    add hl, bc
    ld a, [hl-]
    ld b, l
    ld [hl], b
    ld b, [hl]
    ld c, b
    and a
    ld d, $86
    ld [hl-], a
    add l
    ld c, d
    or c
    ld a, [bc]

jr_009_412f:
    ld h, a

jr_009_4130:
    add h
    ld c, $c5
    and [hl]

jr_009_4134:
    inc [hl]
    add d
    add d

Jump_009_4137:
    ret


    jr nc, jr_009_4134

    dec a
    add hl, hl
    jr c, jr_009_4172

    ld c, h
    and h
    ld b, [hl]
    ld [hl], a
    add a
    bit 4, h
    pop hl
    ld d, b
    jp nc, Jump_009_4212

    ld h, l
    cp h
    ld l, c
    add h
    dec d
    inc bc
    ld [de], a
    xor a
    ld [bc], a
    ld [$2024], sp
    ld [$11a6], a
    sub d
    call nc, $098c
    ld [hl], d
    add sp, -$2c
    ld e, l
    inc b
    add hl, de
    ld a, [de]
    ld l, e
    ld h, $10
    or l
    sub $0c
    adc h
    sub h
    adc d
    inc a
    adc l
    dec bc
    sbc c
    ld l, e

jr_009_4172:
    inc c
    ld b, h
    cp $54
    add d
    and h
    ld d, c
    ld de, $2015
    and [hl]
    or l
    jr @-$1f

    ld l, h
    and e
    db $10
    reti


    jr z, jr_009_412f

    add hl, bc
    sbc d
    ld a, [de]
    and [hl]
    sub a
    ld [bc], a
    jr nc, @+$25

    add hl, sp
    ld [$b044], sp
    ld b, [hl]
    jr nc, jr_009_41d8

    ldh a, [$65]
    cp [hl]
    or a
    ldh a, [$75]
    jr nz, jr_009_4130

    ld a, [bc]
    add hl, bc
    xor h
    ld d, a
    ld b, [hl]
    dec e
    jp hl


    ld l, h
    adc d
    dec bc
    ld a, [bc]
    sbc l
    add hl, bc
    ld a, b
    pop af
    dec l
    ld [bc], a
    ld h, e
    call nz, $1763
    and [hl]
    ld e, d
    xor c
    inc [hl]
    ld c, e
    add e
    ld b, h
    ld hl, $2221
    ld [c], a
    sbc b
    ret z

    ld h, $08
    or c
    adc l
    ret


    ld c, b
    jr z, jr_009_423b

    dec de
    or $61
    adc h
    add hl, hl
    inc l
    ld b, l
    inc b
    rrca
    ld b, e
    sub b
    or l
    dec c
    add d
    and h
    ld d, e
    sbc b

jr_009_41d8:
    ld [hl+], a
    jp nc, $6085

    rst $18
    ld [hl], d
    xor b
    call nc, Call_000_3530
    ld b, c
    ld d, c
    add [hl]
    sub l
    rst $08
    ld [de], a

jr_009_41e8:
    xor [hl]
    ld [hl-], a
    cp h
    jr jr_009_423f

    and h
    call nc, Call_009_6384
    ld a, h
    ld h, e
    ld h, $48
    ld d, l
    and e
    dec de
    ld c, c
    adc [hl]
    sbc d
    ld [hl], b
    ld e, b
    ld d, l
    jr jr_009_424d

    xor e

jr_009_4201:
    ld a, [bc]
    ld l, [hl]
    ld sp, hl
    or h
    inc l
    ld [de], a
    ld d, d
    ld a, [hl-]
    and h
    ld h, c
    xor c
    add d
    jp nc, $cb29

    ret nz

    or c

Jump_009_4212:
    ld [hl], c
    adc e
    ld d, l
    daa
    ld a, h
    add hl, sp
    ld [c], a
    nop
    ld b, h
    or [hl]
    ld [hl], h
    and a
    ld e, d
    adc [hl]
    ld c, e
    rst $30
    ld [hl], h
    dec d
    ld sp, $1575
    add sp, -$58
    ld [c], a
    xor d
    and c
    or l
    add c
    dec b
    dec [hl]
    or [hl]
    ld d, h
    sub h
    sbc d

jr_009_4234:
    inc d
    jr jr_009_4201

    and c
    xor d
    add l
    ld d, h

jr_009_423b:
    adc d
    inc [hl]
    ld d, c
    ld d, c

jr_009_423f:
    ld e, d
    ld h, $95
    inc sp
    ld a, d
    add l
    adc l
    and h
    or a
    add c
    ld d, $32
    ld c, l
    xor a

jr_009_424d:
    pop bc
    pop bc
    ld d, h
    add sp, $50
    adc d
    sub h
    jr @+$14

    sub e
    dec d
    ld hl, $461a
    pop de
    and l
    adc l
    rla
    ld e, e
    ld d, d
    jr nz, jr_009_41e8

    dec [hl]
    cp d
    ld a, [hl+]

jr_009_4266:
    sbc h
    ld d, $a0
    xor c
    add hl, sp
    ld l, d
    and e
    call z, $eddc
    ld d, h
    ld [hl], c
    and d
    and d
    ei
    ld d, c
    rst $00
    ld c, [hl]
    db $10
    ld d, b
    ret


    and d
    cp c
    ld [hl], $8a
    pop de
    add hl, hl
    sbc h
    ret c

    inc l
    scf
    db $e4
    add hl, hl
    jp nz, $2ad8

    db $fd
    cp $9b
    ld [hl], h
    cpl
    ld d, h
    ld e, l
    ld a, [hl]
    ld l, c
    xor a
    dec e
    ld c, l
    ld d, c
    reti


    jr nz, jr_009_4234

    ld b, a
    ld h, $3b
    sub [hl]

jr_009_429e:
    and a
    inc de
    dec c
    adc e
    sub d
    and a
    ld b, $d4
    inc [hl]
    add l
    or e
    jp z, $b29c

    ret nz

    sub a
    inc e
    ret nc

    rst $00
    sbc b
    ld [hl], a
    cp c
    ld e, a
    push de
    ld d, e
    ld h, l
    push af
    dec h
    ld d, e
    adc l
    ld l, d
    ld [hl+], a
    xor e
    db $f4
    add $a1
    jp $8ede


    ld a, [hl-]
    xor a
    db $e4
    inc d
    add [hl]
    jp nc, $1a5c

    sbc b
    and l
    jr c, jr_009_4266

    ld d, c
    ret c

    ld l, c
    add sp, $15
    add c
    push de
    adc d
    ld d, e
    ld d, l
    cpl
    ld l, d
    adc e
    ld d, l
    cp h
    ld e, d
    cp l
    dec h
    res 7, l
    ld l, d
    xor l
    ld d, b
    ld b, c
    ld b, $21
    ld a, l
    ld d, a
    ld l, d
    adc d
    cp d
    adc b
    ld d, h
    sub h
    pop bc
    add d
    pop bc
    inc c
    add [hl]
    ld a, [bc]
    pop bc
    ld a, [de]
    ld d, l
    ld [hl], $49
    ld h, e
    ld c, $42
    add d
    inc d
    ld [de], a
    ld a, $e2
    sub e
    jr z, jr_009_429e

    pop de
    ld c, e
    ld b, l
    dec h
    adc h
    ld [c], a
    db $e3
    ld c, b
    inc e
    ldh a, [$62]
    or h
    inc l
    push de
    ld c, c
    ld c, h
    inc e
    ld [de], a
    ld d, e
    inc h
    sbc [hl]
    sbc [hl]
    and e
    ld h, h
    sub $30
    sub e
    ld a, [hl+]
    ld a, [de]
    add l
    ld c, h

jr_009_4328:
    ld l, b

Jump_009_4329:
    inc de
    ld c, d
    ret


    xor h
    or h
    and a
    xor c
    ld e, a

Call_009_4331:
    ld hl, $b556
    ld hl, $af18
    and c
    xor b
    ld h, c
    adc e
    and d
    xor b
    ld e, a
    xor b
    dec d
    dec l
    inc d
    add a
    ld c, d
    add c
    ld c, e
    sub e
    ld c, d
    adc c
    or h
    add l
    ld a, [de]
    adc b
    ld h, d
    ld [de], a
    ld a, b
    ld e, d
    ld d, h
    ld l, c
    ld c, d
    ld h, b
    ld c, d
    ld d, b
    and h
    ld h, b
    and h
    inc d
    adc b
    ld d, d
    sbc b

Jump_009_435e:
    ld h, b
    ld h, c
    ld l, d
    db $fd
    ld c, c
    ld c, e
    xor b
    ld e, c
    xor b
    adc $21
    dec h
    sub l
    ld h, d
    db $e3
    adc [hl]
    ld sp, $1062
    ld hl, sp-$3e
    ld d, b
    and d
    ld [c], a
    sub a
    db $f4
    add l
    inc b
    push de
    dec bc
    ld [c], a
    ld a, [de]
    ld d, c
    and b
    jp nc, $afa2

    ld a, c
    ld c, c
    ld e, b
    ld d, h
    add [hl]
    add hl, hl
    ld d, a
    sub l
    jp z, $99a4

    ld b, l
    inc b
    call Call_009_6071
    ld c, e
    and d
    ld h, h
    ld l, d
    xor a
    ld e, $95
    ld [hl], c
    adc h
    ld [hl-], a
    ld a, $22
    adc h
    inc d
    add l
    add d
    jr nc, jr_009_4328

    inc b
    inc de
    jp nz, $a95f

    adc e
    ld e, [hl]
    add d
    ld a, [bc]
    scf
    adc [hl]

Jump_009_43b0:
    dec a
    ld hl, $6848
    adc d
    ld a, [hl+]
    dec [hl]
    adc [hl]
    dec [hl]
    rst $38
    adc h
    ld [c], a
    jp hl


    ld sp, $9663
    cp a

Jump_009_43c1:
    push af

jr_009_43c2:
    ld [hl], d
    ld d, [hl]
    ld hl, $8ae0
    ld e, b
    xor $a9
    ld e, d
    dec l
    ld e, b
    dec d
    and e
    dec a
    call $9006
    sbc e
    ld hl, $9220
    add d
    ld [hl], c
    and c
    call z, Call_000_04d5
    add $58
    ld b, e
    ld l, [hl]
    add h
    ld de, $c0c5
    or $c5
    or d
    sub d
    xor c
    ld c, $34
    or [hl]
    ld [hl], c
    ld a, h
    cp b
    ld b, [hl]
    db $10
    ld d, c
    inc d
    adc a
    call nz, Call_009_46a8
    xor c
    ld l, h
    ld b, h
    ld a, [bc]
    jr z, @+$54

    ld [$336a], sp
    jr jr_009_4434

Jump_009_4403:
    dec sp
    jr nz, jr_009_43c2

    ld [de], a
    ld [$fb36], sp
    add l
    ld hl, $85a2
    reti


    ld d, h
    sub a
    and h
    cp h
    ld d, d
    jr c, jr_009_4457

    ld hl, sp-$03
    cp [hl]
    dec bc
    add e
    reti


    add d
    ei
    ld c, h
    ld a, [hl-]
    sub a
    pop bc
    jp nz, $d08c

    call c, $a65e
    ld c, h
    db $dd
    ld h, d
    and h
    or c
    db $10
    or c
    sub h
    ld d, e
    ld d, b
    dec h
    pop de

jr_009_4434:
    inc c
    ld e, h
    ld l, d
    sbc h
    jr z, jr_009_4462

    ld l, c
    xor h
    ld d, e
    inc de
    ld l, d
    ld b, d
    ld l, e
    ld [$f8d0], a
    ld h, h
    call nz, Call_000_24a3
    ld b, h
    call z, $a890
    or c
    adc h
    ld [$472c], sp
    ld c, l
    inc de
    sub e
    db $10
    sub b
    add e

jr_009_4457:
    ld c, c
    inc de
    ld c, c
    ld de, $114f
    and c
    db $e4
    xor d
    ret


    inc d

jr_009_4462:
    adc l
    ld [de], a
    pop de
    ld d, e
    sub h
    sub e
    jr jr_009_44bb

    jr jr_009_44c2

    xor l
    sub c
    sub c
    xor b
    ld h, $2f
    ld [de], a
    or h
    add e
    ld d, d
    add d
    pop af
    ld d, h
    ld e, l
    pop hl
    sub b
    jp $2e26


    inc [hl]
    adc d
    add hl, bc
    inc sp
    push bc
    ret c

    inc l
    ld c, l
    adc e
    jr z, jr_009_44dc

    sub h
    pop af
    add hl, hl
    ld d, b
    ld h, d
    sbc d
    pop de
    inc c
    jr c, @+$4b

    db $10
    pop de
    ld sp, $a02e
    sbc b
    daa
    inc c
    inc l
    ld d, e

jr_009_449e:
    adc e
    rlca
    or c
    dec bc
    inc de
    ld h, $09
    ld c, b
    ld h, b
    sub a
    ld b, l
    or b
    and h
    ld sp, $4c0f
    sub e
    and l
    call nz, Call_000_0f56
    and h
    add hl, hl
    ld [$b170], sp
    ld l, a
    inc b
    sub b

jr_009_44bb:
    db $fc
    inc [hl]
    ld d, l
    adc d
    adc l
    ld a, c
    dec a

jr_009_44c2:
    add h
    ld [hl-], a
    push hl
    ld a, [$c44f]
    ld d, b
    ld l, l
    ld [c], a
    sub e
    ld a, b
    jr z, jr_009_454c

    cp l
    dec d
    jr jr_009_4536

    ld c, [hl]
    and [hl]
    ld c, b
    ld [hl-], a
    dec bc
    xor c
    dec d
    inc a
    add hl, hl

jr_009_44dc:
    jp Jump_009_4403


    ld h, $51
    ld [hl], l
    ld a, b
    db $fc
    ld b, a
    inc e
    ld d, d
    dec c
    ld sp, $188b
    ld l, d
    sub c
    jp $1e47


    ret c

    ld [hl], c
    sub d
    add hl, bc
    ld c, b
    ld d, h
    ld b, a
    ld sp, $35cf
    jr nz, jr_009_449e

    cp h
    call nz, $ebc5
    dec e
    ldh a, [$b6]
    ld de, $2878
    ld d, e
    ld a, [de]
    nop
    ld b, h
    cp b
    sub h
    sub a
    ret c

    ret


    db $f4
    or a
    xor d
    ld hl, sp-$2b
    ld b, [hl]
    sub a
    cp b
    ld h, c
    adc b
    sub e
    dec [hl]
    cp l
    add d
    pop bc
    adc b
    ld a, a
    adc h
    ldh [$61], a

jr_009_4523:
    ld b, l
    db $fd
    ld e, b
    sub [hl]
    ld [hl-], a
    ld d, d
    sub b
    sbc c
    ld b, c
    ld c, c
    call $aad2
    ld a, d
    xor d
    scf
    ld c, h
    ld h, d

jr_009_4535:
    ld [de], a

jr_009_4536:
    db $d3
    dec d
    adc b
    ld h, e
    ld [$a485], sp
    call Call_009_4bab
    ld a, a
    sub $8c
    sub h
    sub h
    ld [de], a
    ld l, h
    ld d, l
    jr c, jr_009_459f

    ld sp, hl
    ld h, c

jr_009_454c:
    ld h, d
    inc h
    adc $98
    db $10
    sub h
    add [hl]
    jr nc, @-$5b

    add hl, hl
    ld h, d
    xor d
    ld a, $43
    db $76
    daa
    ld a, [hl-]
    add d
    dec c
    ld e, c
    and l
    ld de, $0293
    add d
    cpl
    sbc c
    ld d, e
    db $e4
    jr nz, jr_009_4535

    sub e
    add $95
    ld a, [bc]
    ret nc

    ld c, l
    inc e
    ld [$422d], a
    and l
    and [hl]
    ld c, h
    ld b, d
    sub d
    ret nc

    ld a, [hl-]
    ld b, a
    sbc h
    xor b
    jp nz, $46a3

    ld c, b
    dec hl
    push bc
    ld d, d
    db $fc
    ld sp, $2ea4
    sbc b
    ld e, d
    sbc h
    ld d, b
    jr nz, jr_009_4523

    ld [hl], c
    ld [de], a
    ld l, h
    ret nz

    add [hl]
    ld [de], a
    inc [hl]
    ld e, l
    ld h, $a9
    ld e, h
    rst $00
    dec l
    rra
    ld [hl-], a

jr_009_459f:
    ld d, l
    or [hl]
    ld d, c
    ld d, e
    inc b
    add sp, $5b
    cp [hl]
    cp a
    ld d, b
    xor b
    and l
    ld c, h
    rst $10
    ld [$6e8c], a
    add a
    rst $30
    di
    ccf
    call Call_000_119c
    xor d
    or b
    call $522b
    jp c, $89a0

    ld e, b
    ld l, c
    ld c, l
    ld l, e
    ld c, b
    adc l
    sub d
    inc sp
    adc d
    ld hl, sp-$5b
    ld c, b
    ld e, b
    and h
    add hl, sp
    ld [hl], $75
    xor d
    xor b
    ld a, [hl+]
    ld [hl], h
    ld a, [de]
    ld b, e
    adc l
    sbc a
    dec b
    xor d
    add $7d
    inc b
    jr jr_009_4609

    adc h
    sub a
    and [hl]
    dec hl
    ld d, l
    ld d, [hl]
    add c
    ld d, $63
    ld a, [hl+]
    add c
    adc [hl]
    ld d, $58
    inc hl
    ld h, [hl]
    dec [hl]
    ld l, d
    or $22
    inc [hl]
    and h
    push de
    sub c
    ld [$cd90], a
    jr z, @-$79

    ld c, h
    jr nz, @-$7c

    ld a, [de]
    inc d
    reti


    rst $18
    db $fd
    call nc, $a197
    ld h, b
    ld c, [hl]

jr_009_4609:
    ld a, [de]
    adc b
    and c
    and $19
    ld d, l

Call_009_460f:
    adc [hl]
    ld a, d
    rlca
    and b
    sbc $4c
    inc e
    db $e3
    ld a, [hl]
    rla
    adc b
    sbc c
    ld d, l
    ld d, e
    or [hl]
    db $e3
    ld [$f6f3], sp
    ret


    add hl, bc
    adc d
    ld [hl], h
    ld hl, $2185
    ld c, h
    adc d
    add hl, de
    ld c, b
    ld h, $8b
    dec b
    add hl, de
    db $e4
    inc sp
    ld [bc], a
    add hl, sp
    sbc [hl]
    sbc e
    db $ec
    ld b, d
    jr nc, @+$7e

    ld l, e
    ld [bc], a
    ld h, h
    sbc b
    dec h
    ld d, d
    ld l, e
    inc b
    sbc h
    ret c

    ld b, a
    dec bc
    ld [hl+], a
    jp c, $b194

    add [hl]
    sbc e
    xor b
    push de

jr_009_464f:
    ld b, e
    ret nc

    call nz, $b93a
    or d
    ld b, d
    call nc, $b04c
    cp h
    dec sp
    add hl, de
    jr nz, @-$3c

    call nz, $92e9
    ld b, e
    add hl, de
    pop hl
    dec bc
    ld a, [hl+]
    ld c, e
    jp z, $93a1

    ld a, [de]
    and d
    db $ec
    ld b, l
    ld d, b
    dec l
    ld d, d
    sub c
    ld a, [de]

jr_009_4673:
    and e
    add $4f
    dec d
    ld b, e
    and [hl]
    ld sp, hl
    ld [hl-], a
    xor l
    ld b, [hl]
    or c
    and a
    ld [bc], a
    dec c
    ld h, b
    push de
    add d
    ld [hl], l
    ld b, c
    inc de
    ld a, [bc]
    rla
    ld l, c
    sub d
    ld [hl], d
    ld b, b
    ret nz

    add e
    dec b
    add d
    ld e, h
    ld [hl], c
    ld a, [c]
    ld b, a
    ld c, $1a
    dec c

Jump_009_4698:
    ld d, l
    sbc l
    or l
    ld e, $b8
    ld b, h
    cp h
    push de
    inc b
    ld [$bb7e], a
    ld d, e
    sbc a
    res 5, l

Call_009_46a8:
    ld hl, $dafc
    db $d3
    inc h
    ld a, c
    jr c, jr_009_471d

    ld b, l
    ld h, c
    cp d
    or e
    adc d
    cp l
    ld h, $25
    jr c, jr_009_4717

    db $fd
    ld c, d
    ld a, b
    db $dd
    ldh [$89], a
    ld b, [hl]
    rrca
    ld d, e
    ld l, d
    jr nc, jr_009_464f

    sbc h
    ldh [rHDMA5], a
    ld d, l
    adc b
    ld l, c
    jr c, jr_009_4673

    ld d, l
    ld l, d
    ld h, $a3
    ldh a, [$59]
    ld a, [c]
    ld l, c
    call nc, $fabf
    sub d
    sbc h
    ld [hl], a
    rst $38
    jp hl


jr_009_46de:
    ld d, d
    ld [hl], d
    ld e, a
    cp $4a
    sbc h
    push af
    ld e, d
    db $fc
    ld [hl], e
    ld a, [hl+]
    rst $38
    rst $00
    scf
    rst $38
    cp $85

jr_009_46ef:
    inc e
    dec hl
    rst $38
    ldh a, [$df]
    rst $20
    dec b
    ld d, l
    ld d, c
    ld [hl], l
    rra
    sub d
    add b
    ld d, l
    or a
    ld d, l
    ld a, [hl-]
    push de
    ld c, h
    ld [hl], $d3
    dec [hl]
    ld d, e
    ld a, d
    call nc, Call_009_5e21
    ld d, l
    ld a, a
    sbc $37
    ld l, b
    ld a, [hl+]
    sbc [hl]
    xor [hl]
    xor c
    ld c, c
    xor b
    adc $70

jr_009_4717:
    ld d, l
    xor b
    ccf
    ld h, d
    and d
    ld d, h

jr_009_471d:
    rst $18
    xor d
    or h
    ld d, [hl]
    ld [hl-], a
    call nc, $88da
    ld [hl], c
    and b
    and c
    and h
    or l
    dec [hl]
    ld d, e
    dec d
    ld l, $a3
    xor d
    cp $15
    rla
    ld [c], a
    add sp, -$2f
    ld b, c
    ld [hl-], a
    and h
    pop de
    ld [hl], $54
    rst $00
    ld sp, hl
    inc sp
    sbc l
    add hl, sp
    pop de
    ld c, l
    xor l
    ld sp, $18a2
    sub l
    jr c, jr_009_46ef

    ld sp, $18a6
    adc $33
    ld b, c
    jr nc, jr_009_46de

    ld l, d
    adc h
    ld a, [hl+]
    rst $38
    cp [hl]
    xor b
    push de
    ld b, l
    dec b
    ld b, l
    add l
    adc b
    and e
    ld d, l
    ld d, [hl]
    ld [hl+], a
    ld d, b
    rst $38
    xor d
    ld h, $8e
    ld l, e
    add c
    db $e3
    rla
    adc [hl]
    set 2, l
    ld a, a
    adc a
    ld b, $a8
    pop hl
    sbc e
    and d
    sbc l
    ld l, b
    xor c
    ld c, [hl]
    sbc e
    ld [hl+], a
    sbc h
    ld c, $08
    sbc $31
    ld [$aa44], sp
    ld h, [hl]
    add e
    adc l
    ldh [$84], a
    ld b, d
    ld b, l
    ld [hl+], a
    xor h
    ld l, e
    ld a, d
    ld [hl-], a
    ld b, h
    db $10
    ld b, l
    rst $18
    pop de
    or d
    rst $00
    dec [hl]
    dec de
    ld d, c
    ld c, $8c
    ld d, h
    ld h, e
    ld h, $ae
    ld c, e
    ld b, e
    sub a
    ld h, [hl]
    add hl, bc
    or d
    cp h
    inc de
    pop af
    ld d, b
    ld b, l
    cp h
    ld l, c
    ld e, [hl]
    ld [hl], e
    reti


    or l
    sbc c
    ld b, c
    ld b, $69
    dec de
    ld h, $68
    rst $00
    ld [bc], a
    ld h, e
    ld [hl+], a
    or [hl]
    xor [hl]
    ld h, c
    xor c
    ld c, e
    ret nz

    sbc c
    ld d, h
    scf
    jp hl


    ld c, l
    rst $38
    rst $38
    ld hl, sp+$49
    ld [hl], c
    add e
    ld sp, $aa4e
    xor d
    add h
    ld [hl], b
    inc l
    rra
    and b
    cp h
    db $db
    cp $9b
    ld b, h
    ld b, h
    scf
    inc c
    rla
    pop af
    ld sp, $0cd1
    ld a, c
    adc b
    or b
    ld b, a
    xor h
    ld b, h
    cp [hl]
    ld h, l
    ld d, h
    ld [c], a

jr_009_47ec:
    ld d, l
    dec d
    ld e, [hl]
    ld hl, sp-$1f
    add c
    cp a
    and b
    sbc [hl]
    and e
    add l
    dec bc
    adc h
    ld a, a
    jr c, jr_009_47ec

    ld e, e
    rst $38
    ld hl, sp-$1e
    xor d
    ld a, e
    dec bc
    db $fd
    ld c, [hl]
    dec [hl]
    ld [$e5a8], sp
    and h
    xor $a1
    ld c, [hl]
    reti


    ld b, c
    push de

jr_009_4810:
    dec d
    ld [hl], e
    add l
    ld d, l
    add d
    xor l
    ret c

    db $ed
    and e
    ld [c], a
    daa
    call z, $9ea2
    sbc d
    sub [hl]
    and a
    scf
    ld sp, $8b2e
    sbc h
    ld c, l
    jr jr_009_4883

    and a
    inc c
    ld d, d
    jp c, $c811

    cp $a7
    ld h, h
    pop af
    sbc [hl]
    ld [hl], b
    add $de
    ld [hl], c
    ld b, c
    ld [hl], d
    add d
    xor l
    ld b, a
    inc c
    ld l, c
    sbc a
    ld d, b
    ld d, l
    cp l
    ld d, h
    or l
    ld c, [hl]
    or l
    ld h, b
    sub l
    and d
    dec a
    ld c, h
    ld e, e
    adc e
    ld [$ac25], a
    cp d
    ld d, a
    ld c, e
    ld [hl], e
    jr jr_009_4810

    adc h
    jr jr_009_48c2

    dec [hl]
    ld hl, $d8e2
    ldh [$cb], a
    xor e
    cp b
    ld [de], a
    db $d3
    inc c
    call $812e
    ld a, [c]
    ld [de], a
    ld e, e
    daa
    call $a031
    ld b, d
    ld [hl+], a
    inc c
    or h
    ldh [rHDMA5], a
    ld l, h
    ld a, [hl-]
    pop de
    sub l
    add hl, hl
    and c
    ld c, c
    ld b, l
    and d
    add hl, hl
    add hl, bc
    ld e, b
    ld l, $14

jr_009_4883:
    ret


    inc b
    jr jr_009_48aa

    dec d
    db $e4
    ld d, l
    call nc, $c238
    ld [hl+], a
    ld h, $d4
    sbc d
    or h
    ld [hl+], a
    jp c, $eb38

    push hl
    ld d, l
    adc d
    add e
    ld c, [hl]
    ld [hl], h
    cp b
    jp nz, $b1d3

    ld h, e
    pop bc
    sub l
    adc a
    set 4, a
    cp b
    add d
    ld [hl], l

Jump_009_48a9:
    and d

jr_009_48aa:
    call nz, $0ee9
    add hl, bc
    adc e
    inc b
    ld e, h
    ld [$1f7a], sp
    pop hl
    cp a
    or [hl]
    ld e, $98
    add hl, hl
    sub a
    ld hl, sp+$3e
    rra
    ld d, d
    call nz, $084a

jr_009_48c2:
    cp c
    adc d
    rra
    db $fc
    inc d
    rst $38
    or [hl]
    and h
    ld l, a
    adc $a5
    and c
    ld c, a
    sub c
    rst $38
    ld a, a
    rst $38
    xor a
    call nc, $a530
    xor a
    cp b
    ld a, a
    ld sp, hl
    cpl
    rst $28
    ret


    ld [hl], c
    add e
    ld e, a
    db $fd
    ld a, l
    ld a, [hl+]
    di
    rst $38

jr_009_48e6:
    xor b
    call $1115
    add l
    ret z

    ld d, a
    rst $38
    cp $df
    ldh [$f8], a
    ld b, [hl]
    ld c, b
    pop de
    scf
    rst $38
    ld hl, sp+$33
    call nz, $a7d8
    dec e
    rst $38
    ld b, c
    ld [hl], d
    ld d, d
    ld de, $44d3
    ld sp, $7582
    ld a, $1f
    ld e, $0b
    ld sp, hl
    db $e3
    ld b, a
    and $40
    ld b, h
    cp [hl]
    ld l, c
    and e
    adc l
    ld c, h

jr_009_4916:
    dec e
    and e
    adc d
    xor c
    dec d
    db $e3
    sbc d
    add d
    ld l, b
    or a
    jr c, jr_009_493f

    ld [hl], c
    ld c, b
    add c
    db $e3
    add l
    ld h, e
    jr z, @-$19

    ld d, d
    jr jr_009_48e6

    ld c, [hl]
    rlca
    add c
    adc [hl]
    cp e
    ldh a, [rHDMA3]
    dec b
    ld c, [hl]
    ld c, e
    pop bc
    rlca
    ld h, e
    xor d
    ret nc

    adc a
    xor d
    sbc a

jr_009_493f:
    adc b
    ld l, c
    add e
    add hl, sp
    bit 5, c
    ld c, a
    inc e
    rst $38
    adc l
    jp $af1c


    ld hl, sp-$3f
    ld sp, hl

jr_009_494f:
    ret


    rst $38
    adc d
    scf
    sbc h
    ld [hl], a
    db $fc
    push hl
    ld b, a
    inc c
    jr nc, @+$01

    ld b, a
    ld h, h
    ld a, [hl]
    inc e
    ld d, l
    cp [hl]
    add l
    ld d, l
    ld d, e
    or l
    ld l, d
    jr nc, jr_009_4916

    ld d, e
    sub l
    sub [hl]
    xor b
    add $e6
    ld c, [hl]
    ld d, $08
    sub [hl]
    inc sp
    ld b, d
    ld h, h
    reti


    ld b, $21
    adc l
    sub c
    ld b, c
    jr c, jr_009_494f

    sbc d
    ld c, h
    db $d3
    ld e, b
    ld [hl+], a
    ld [hl+], a
    and d
    cp a
    ld b, [hl]
    ld h, $35
    ld b, [hl]
    ld l, $56
    ld a, [de]
    add hl, sp
    add sp, -$22
    ld a, [hl-]
    ld d, h
    sbc $4e
    jr c, jr_009_49f6

    adc [hl]
    ld a, b
    pop de
    inc b
    ld d, e
    adc c
    dec d
    ld [hl], $42
    adc l
    cp h
    ld d, c

jr_009_49a1:
    sub e
    add d
    ld c, l
    ld a, [de]
    push bc
    rlca
    adc [hl]
    add hl, sp
    ld c, h
    ld l, d
    rrca
    ld hl, sp-$18
    xor c
    ld d, l
    ld d, [hl]
    and e
    rst $20
    or a
    ret nc

    and l
    add hl, hl
    ret c

    add h
    and c
    ld d, l
    inc c
    ret nz

    sbc h
    ret z

    ld c, d
    sbc d
    ld e, d
    ld [hl], c
    ld hl, $0305
    dec de
    ret nz

    sbc e
    inc a
    ret nz

    add $f8
    jp c, $126b

    sbc b
    ld l, $aa
    ld b, h
    ld b, h
    ld l, c
    pop bc
    inc b
    ld h, c
    db $10
    ldh [$c3], a
    ld b, e
    ld h, [hl]
    jp z, $5063

    or h
    ld d, h
    ld [hl], l
    dec h
    pop de
    ret z

    sbc d
    ld e, d
    ld c, l
    ld b, l
    ld b, b
    sbc c
    ret nc

    pop de
    adc l
    add a
    pop af
    add l
    ld a, [de]
    ld l, b
    add hl, hl

jr_009_49f6:
    add $8f
    sbc e
    ld [hl], c
    or e
    jr c, jr_009_49a1

    ld h, a
    inc c
    sbc c
    ld a, $08
    and a
    ld b, e
    ld [bc], a
    sub c
    cp l
    inc bc
    add [hl]
    ld [hl], h
    jp nz, $52d5

    add h
    ld a, h
    ldh a, [rLY]
    cp [hl]
    ld b, c
    ld d, l
    ld d, e
    sbc l
    or d
    ld a, d
    db $f4
    ld [c], a
    ld [hl], a
    inc c
    sbc b
    adc e
    ld c, l
    call nc, $b868
    and h
    sbc $58
    push bc
    ld [hl+], a
    inc a
    inc b
    di
    ld [c], a
    call nc, Call_000_08b6
    sbc $47
    ld h, b
    adc c
    add c
    adc [hl]
    add hl, hl
    ld h, b
    sub d
    ld e, b
    rst $20

Call_009_4a39:
    xor d
    xor d
    ld a, $aa
    ld a, h
    add d
    ld d, d
    ld [hl], h
    cpl
    db $ec
    adc h
    ld [hl], c
    xor a
    cp a
    db $fc
    sub d
    sbc e
    xor b
    rst $38
    rst $38
    call nz, $bfa9
    rst $38
    rst $38
    adc $2e
    ld [hl], b
    ld a, a
    rst $38
    db $fc
    adc e
    and $ef
    rst $38
    db $fc
    db $10
    rst $38

jr_009_4a5f:
    and [hl]
    rst $28
    jp nc, Jump_009_5f09

    and a
    dec d

jr_009_4a66:
    call z, $d9c4
    rst $08
    sub [hl]
    rst $00
    pop hl
    jr nz, jr_009_4ae6

    db $ed
    jr c, jr_009_4a5f

    ld b, c
    ld d, l
    dec sp
    ld h, h
    ld [c], a
    ld l, e
    rst $38
    jp hl


    ld d, l
    ld c, [hl]
    ld a, [hl+]
    ret nc

    sub h
    push de
    ret z

Jump_009_4a81:
    ld c, h
    ld a, [de]
    add d
    jr c, jr_009_4a66

    ld d, h
    ld l, c
    ld d, l
    ld l, d
    add [hl]
    db $e3
    ld [hl], $8e
    ld e, c
    ld b, d
    inc b
    sub h
    xor d
    ld hl, $a031
    adc h
    ld d, [hl]
    and l
    ld c, h
    dec l
    ld a, [de]
    add [hl]
    xor b
    ld a, [de]
    add l
    inc sp
    sub l
    ld e, d
    adc c
    ld [hl], l
    ldh [rHDMA2], a
    ld l, e
    db $f4
    inc d
    ld d, h
    adc b
    ld h, $b0
    ld c, [hl]
    ld d, $e2
    jr z, jr_009_4adc

    ld e, a
    db $fd
    db $eb
    and b
    ld b, d
    ld b, d
    add sp, $20
    adc b

jr_009_4abc:
    ld l, c
    ld d, e
    ld [$a1c2], sp
    adc e
    and b
    and d
    ld de, $74a2
    adc $25
    inc d
    sbc c
    ld a, [hl+]
    ld l, d
    sub h
    jr nz, jr_009_4b19

    and l
    ld h, $08
    adc $14
    ld h, b
    ld b, [hl]
    ld [hl+], a
    and e
    ld d, [hl]
    xor l

Jump_009_4adb:
    ld e, b

jr_009_4adc:
    sub [hl]
    and c
    ld c, h
    ld d, d
    ld h, [hl]
    add d
    ld hl, $5c53
    add h

jr_009_4ae6:
    sub l
    adc c
    add l
    dec h
    sub e
    ld [$36ab], sp

jr_009_4aee:
    ld c, b
    and d
    ld l, e
    ld c, c
    ld [hl], a
    xor c
    ld c, b
    ld e, l
    ld h, b
    adc b
    cp h
    inc de
    sub c
    xor b
    inc de
    ld [$bd1e], sp
    ld [$ba58], sp
    inc b
    db $e3
    xor a
    jp nz, Jump_009_4c2d

    ld a, [hl+]
    adc h
    ld e, [hl]
    ld h, h
    sub [hl]
    ld b, $90
    pop bc
    ld [hl+], a
    inc c
    jr jr_009_4b3d

    inc d
    push hl
    ld [hl], c
    sbc a

jr_009_4b19:
    and c
    adc b
    ld h, a
    jr nc, jr_009_4aee

    ld d, c
    ld c, d
    adc [hl]
    rlca
    pop bc
    xor e
    jr nc, jr_009_4abc

    reti


    inc hl
    dec c
    jr @-$69

    scf
    cp c
    ld d, e
    ld l, c
    pop af
    ret


    ld c, c
    ld c, b
    ld b, c
    scf
    cp a
    call nc, $8a13
    inc d
    jr z, @-$75

    adc [hl]

jr_009_4b3d:
    ld a, h
    inc d
    ld [de], a
    jp c, Jump_000_224c

    ld d, [hl]
    ld a, [bc]
    ld b, [hl]
    scf
    ld a, a
    or l
    add e
    inc d
    ld h, e
    rlca
    add l
    sub [hl]
    sub h
    ld d, $53
    ld h, [hl]
    ret c

    ld [de], a
    dec h
    dec l
    dec b
    add c
    ld a, d
    adc d
    ld e, h
    pop hl
    ld l, d

jr_009_4b5e:
    dec l
    add c
    ld h, d
    ld l, l
    ld h, d
    dec de
    ld d, d
    call nc, $d114
    ld a, b
    dec d
    xor l
    pop hl
    ld d, d
    dec l
    ld d, l
    jr jr_009_4b9c

    rst $38
    add d
    db $d3
    ld h, l
    ld e, a
    cp $8d
    db $10
    add [hl]
    dec e
    ld a, [hl-]
    jr z, jr_009_4b5e

    and b
    adc b
    ld d, c
    ld b, a
    adc a
    ld a, [hl+]
    ld l, $fc
    inc hl
    xor e
    jp hl


    jp nc, $cb9d

    ld [bc], a
    ld [hl], b
    xor a
    dec l
    ld d, d
    sub h
    sbc h
    ld d, d
    sub $09
    xor e
    ld b, d
    and l
    ld d, b
    inc sp
    inc e

jr_009_4b9c:
    ld [hl], e
    dec [hl]
    add d
    ld e, h
    and c
    inc sp
    push bc
    and c
    inc a
    ld [hl], d
    pop bc
    dec c
    dec b
    ld l, l
    dec c

Call_009_4bab:
    ld d, c
    and a
    inc b
    ld h, d
    xor d
    adc d
    ld h, e
    ld b, b
    xor c

Call_009_4bb4:
    sub d
    ld de, $639a
    cpl
    sub c
    add h
    add hl, de
    sub [hl]
    jr nc, jr_009_4c16

    or [hl]
    jr nc, @-$5a

    ccf
    jr z, @+$2f

    ld d, a
    and h
    db $e4
    ret c

    ld c, c
    ld [de], a
    xor h
    ld b, h
    sub c
    inc de
    ld a, d
    add hl, bc
    ld a, [bc]
    ld h, e
    ld l, b
    ld b, h
    and h
    ld b, c
    or c
    ld [hl], d
    add hl, de
    ld d, a
    xor e
    and d
    add d
    add hl, bc
    sbc d
    ld a, [bc]
    ld a, [bc]
    ld c, $2b
    cpl
    ld a, [$1793]
    ld d, c
    ld a, [bc]
    db $10
    jp nc, Jump_009_435e

    ld a, [bc]
    sbc b
    ld b, h
    call z, $da36
    ld e, d
    adc l
    add hl, de
    add hl, sp
    ld e, e
    inc b
    ld c, e
    inc b
    ld e, d
    ld c, h
    add l
    dec hl
    ld a, [c]
    adc h
    ld d, d
    ld a, [hl+]
    ld h, c
    ld b, [hl]
    ld l, c
    ld d, d
    ld h, c
    ld c, e
    ld d, b
    ret z

    ld a, [hl-]
    ei
    push af
    ld c, [hl]
    ld b, h
    ld e, [hl]
    db $10
    bit 1, b
    ld b, [hl]

jr_009_4c16:
    dec l
    pop hl
    jr @-$2b

    and h
    ld [hl], d
    or c
    adc h
    xor c
    add hl, hl
    add d
    and b
    and b
    db $eb
    sub h
    reti


    add h
    ld l, [hl]
    add h
    xor c
    adc d
    add hl, hl
    inc sp

Jump_009_4c2d:
    ld e, b
    ld e, h
    add hl, hl
    add hl, bc
    push bc
    sbc $a6
    ld l, [hl]
    and c
    ld b, d
    xor d
    ld b, d
    jr nc, jr_009_4c8c

    rst $00
    adc l
    ld h, [hl]
    jr z, @+$5c

    dec l
    ld b, b
    sub e
    ld a, [bc]
    rst $20
    rrca
    ld b, [hl]
    ldh a, [$64]

Call_009_4c49:
    ld l, d
    ld a, [de]
    ld c, d
    ld b, d
    add hl, bc
    push bc
    ld c, l
    daa
    inc d
    jr z, jr_009_4c98

    ld c, b
    inc sp
    inc e
    jp hl


    and d
    ld e, h
    ld de, $d11e
    add hl, de
    call nz, $83ae
    ld d, d
    and [hl]
    dec bc
    ld b, b
    call z, $28d0
    inc [hl]

Call_009_4c69:
    sbc h
    jr c, @+$43

    ld l, d
    ld b, d
    ld [$64a1], sp
    call nc, $2035
    ld hl, sp+$49
    pop bc
    inc sp
    ld c, e
    ret z

    ld b, l
    di
    ld b, c
    sub b
    sub e
    ld [bc], a
    ld c, [hl]
    ld l, d
    ld a, [c]
    ld hl, sp+$5b
    ld b, e
    sbc b
    ld c, a
    inc b
    jr nc, @+$66

    ld b, h

jr_009_4c8c:
    and $d0
    push de
    ld c, c
    adc h
    ld [$e9e5], sp
    push hl
    jp z, $0846

jr_009_4c98:
    and c
    ld e, $5a
    sbc b
    ld d, c
    ret c

    ld b, h
    sub h
    rra
    ld d, d
    rst $18
    push de
    ld l, d
    and d
    xor e
    add c
    add hl, de
    dec b
    ld d, h
    ld h, b
    adc $04
    ld l, d
    jp Jump_009_53e4


    ld l, d
    and d
    ld de, $4148
    adc c
    ld d, [hl]
    res 2, h
    sub [hl]
    ld d, $42
    ld b, a
    push de
    adc h
    sub [hl]
    and l
    and a
    add c
    ld c, [hl]
    xor d
    ld l, c
    ld l, c
    ld [hl], $53
    dec bc
    ld l, b
    add a
    ld d, e
    daa
    sbc c
    ld c, l
    inc h
    sub [hl]
    ret


    or $6a
    inc b
    inc d
    and h
    or [hl]
    ld l, $08
    cp b
    ld l, c
    pop hl
    add l
    ld [hl-], a
    ld d, d
    and d
    db $f4
    db $10
    ld a, b
    ldh [$61], a
    ld [hl], h
    ld d, b
    call nc, Call_009_4c69
    ld l, $b4
    jr jr_009_4d21

    ld a, [$288c]
    jp nz, $2a86

    adc a
    ld c, e
    ld d, d
    sbc h
    ld a, [hl+]
    and [hl]
    or [hl]
    ld e, d
    inc l
    ld sp, hl
    ld de, $0c8b

jr_009_4d05:
    ld [hl-], a
    ld hl, sp+$31
    inc d
    add hl, hl
    or d
    add hl, bc
    inc d
    ld e, d

jr_009_4d0e:
    db $d3
    ld b, [hl]
    inc d
    and [hl]
    add hl, hl
    jr c, jr_009_4d0e

    cp h
    ld d, e
    inc h
    dec l
    ld d, a
    ld b, [hl]
    or c
    inc de
    cpl
    pop de
    rst $00
    inc de

jr_009_4d21:
    ld a, l
    db $10
    sub $c6
    ld c, h
    add hl, de
    xor d
    ld d, d
    push bc
    db $ec
    add hl, bc
    or d
    add $e9
    ld d, c
    dec c
    dec b
    ld de, $4c46
    ld d, d
    adc [hl]
    ld a, [de]
    ld [$144a], sp
    ld h, b
    sub [hl]
    add d
    ld b, h
    ld a, [bc]
    ld d, l
    ld l, c
    ld [hl], d
    db $d3
    ld de, $7c2c
    adc b
    ld [hl], a
    cp b
    ld d, l
    jr nc, jr_009_4dcc

    db $d3
    rst $00
    ld a, d
    or l
    ld d, a
    adc c
    and e
    add $51
    ld a, c
    ld b, c
    ld hl, $3c06
    adc d
    db $e3
    jr z, jr_009_4dcf

    cp l
    inc a
    dec [hl]
    ld a, [hl+]
    adc b
    jp nz, Jump_000_0a26

    dec h
    ld l, e
    adc [hl]
    or a
    db $d3
    add l
    ld l, [hl]
    xor e
    pop hl
    ld a, b
    pop hl
    and b
    and b
    ld h, d
    call nc, $b498
    sub l
    add d
    sub b
    ld c, l
    jp nc, Jump_000_2314

Call_009_4d7f:
    jr jr_009_4d05

    ld h, b
    ld d, c
    sub [hl]
    inc b
    dec d
    ld h, e
    ld h, a
    xor h
    ld l, a
    add sp, -$3b
    dec d
    add [hl]
    add c
    ld a, [bc]
    cp h
    dec d
    ld c, [hl]
    rlca
    db $f4
    sub l
    ld [hl+], a
    ld e, c
    ld a, b
    and l
    ld a, [bc]
    inc d
    db $10
    adc l
    call nc, Call_000_2513
    dec h
    add sp, -$6b
    ld b, c
    ld e, [hl]
    adc b
    ld h, e
    add c
    ld d, l
    or d
    rst $28
    ld hl, sp-$71
    ld a, [$82aa]
    jp z, $0b4e

    dec d
    sub h
    add sp, -$51
    add hl, sp
    ld h, [hl]
    add c
    db $eb
    ld c, [hl]
    ld h, h
    ld [hl-], a
    jr @-$34

    db $f4
    add hl, de
    dec c
    rrca
    pop bc
    inc b
    ldh [rRP], a
    adc c
    pop hl
    ld d, e

jr_009_4dcc:
    dec b
    rrca
    adc c

jr_009_4dcf:
    ld e, d
    add hl, hl
    dec hl
    ld d, d
    rra
    xor d
    and l
    add hl, de
    db $e3
    ld h, $4c
    inc hl
    ld [hl], h
    dec hl
    adc h
    pop hl
    ld d, l
    adc h
    inc de
    inc h
    add $2e
    ld d, e
    ld l, b
    adc b
    xor e
    ld [hl], b
    sub h
    cp a
    inc b
    ld [de], a
    ld h, e
    and l
    ld l, b
    add l
    dec h
    call z, $8670
    or b
    sub e
    and d
    ld [hl+], a
    ret nc

    adc c
    add d

jr_009_4dfd:
    add [hl]
    add c
    ld h, b
    xor b
    inc d
    inc h
    ld [c], a
    add c
    ld a, [bc]
    rra
    adc b
    and b
    and $88
    ld d, d
    ld d, b
    ret c

    db $10
    sub e
    ld [hl], h
    adc c
    dec h
    add d
    ld h, b
    sbc [hl]
    ld c, $c2
    dec h
    ld c, c
    xor $64
    call Call_009_6295
    ld h, l
    ld d, h
    xor d
    ld [hl+], a
    ld c, b
    ld c, h
    xor b
    rra
    ld d, l
    ld e, a
    and e
    add d
    sub l
    ld d, d
    xor d
    dec [hl]
    adc b
    xor d
    and e
    or d
    ld b, c
    ld d, l
    inc sp
    adc a
    dec d
    ld a, b
    xor d
    ld d, l

jr_009_4e3b:
    ld [$c713], sp
    adc l
    xor l
    ld a, [hl-]
    ld [hl], a
    ld a, [bc]
    add hl, bc
    adc h
    add hl, sp
    push hl
    ld c, [hl]
    and h
    cp h
    ld c, [hl]
    ld a, b
    ret c

    ld b, b
    call z, Call_009_4bb4
    sbc [hl]
    ld c, e
    ld a, [hl+]
    inc a
    ld d, h

jr_009_4e56:
    ld b, e
    ld e, $23
    ld b, h
    xor c
    ld e, b
    dec [hl]
    ld e, [hl]
    ld c, d
    cpl
    sbc l
    add hl, de
    ld [de], a
    sbc b
    and h
    dec h
    jr nc, @+$52

    jr nz, jr_009_4dfd

    sbc h
    jr c, @-$4d

    sub d
    ld c, h
    add d
    inc c
    ld h, c
    pop bc
    or b
    ld h, $e9
    ld de, $930a
    db $10
    jp nz, Jump_000_0abe

    xor h
    ld b, d
    pop bc
    ld a, [de]
    and c
    jr c, jr_009_4e56

    add hl, hl
    jr z, jr_009_4e3b

    pop af
    ld [hl], $85
    ld c, [hl]
    inc d
    add hl, de
    xor l
    ld c, b
    ld h, l
    reti


    rla
    ccf
    push bc
    sub $91
    inc e
    ld e, d
    ld de, $5619
    xor e
    pop hl
    inc d
    or h
    ld [hl-], a
    adc h
    ld [hl], c
    ld h, b
    xor h
    ld h, c
    rlca
    add h
    ld c, l
    cpl
    ld d, l
    ld l, b
    inc h
    add hl, sp
    pop bc
    inc bc
    ld b, c
    and [hl]
    or h
    ld c, d

jr_009_4eb3:
    ld e, d
    inc l
    add hl, bc
    jp $a8e0


    ld h, [hl]
    or h
    or h
    ld e, d
    and c
    add l
    add hl, de
    ld h, c
    sub c
    jp hl


    inc a
    inc c
    ld [hl], c
    dec hl
    or h
    ld sp, $8709

jr_009_4ecb:
    and c
    ld a, [bc]
    jr nc, jr_009_4eb3

    add $ae
    and h
    ld c, l
    dec h
    ld b, [hl]
    ld c, e
    rla
    ld b, h
    or h
    ld h, h
    db $fc

jr_009_4edb:
    dec hl
    ld d, c
    ld [$f940], sp
    add d
    call z, $6052
    and [hl]
    inc [hl]
    ld b, d
    ld l, e
    ld [bc], a
    ld b, [hl]
    dec c
    ld [hl-], a
    ld e, l
    ld b, e
    ld a, [hl+]
    add hl, bc
    add [hl]
    or h
    ld l, e
    ld a, h
    ld c, d
    jp $93a0


    adc h
    inc l

jr_009_4efa:
    ld b, d
    sbc h
    xor b
    ret z

    and b
    jp c, $e2a4

    jp $3411


    ld [hl-], a
    ld [hl], c
    inc h
    jr nc, jr_009_4ecb

    xor b
    and c
    ret z

    ld h, b
    adc d
    ld c, l
    or l
    ld l, d
    ld [hl], b
    jr nc, @-$45

    inc c
    ld a, [bc]
    ld [hl-], a
    inc d
    jr nc, jr_009_4f6c

    ld c, e
    ld e, a
    or c
    cp e
    jp nc, $c354

    cpl
    jr nz, jr_009_4edb

    sub l
    and c
    ld h, e
    ld b, c
    call nc, $a882
    inc [hl]
    ld [hl], e
    ld b, c
    and c
    jp z, $174d

    sub e
    inc de
    dec e
    cp [hl]

jr_009_4f37:
    ld b, h
    add d
    ld d, d
    pop de
    ld [c], a
    db $fc
    ld e, h
    dec c
    ld e, a
    rst $20
    xor e
    ld b, $74
    add b

Jump_009_4f45:
    ld b, h
    or h
    ld d, e
    dec b
    ld b, c
    ld a, h
    pop de
    ld b, e
    ei
    rst $30
    ld [$34aa], a
    xor e
    xor c
    ld a, a
    adc c
    ld d, h
    pop hl
    and d
    add hl, sp
    and d
    ld l, b
    ret


    ldh a, [$90]
    and d
    ld h, e
    sub l
    inc b
    inc l
    ld d, h
    add l
    jr c, jr_009_4f94

    jr nz, jr_009_4efa

    sub b
    ld d, d

jr_009_4f6c:
    sbc a
    ld l, b
    jp z, $9189

    xor d
    add e
    ret c

    and $98
    ld h, h
    dec hl
    ld h, e
    ccf

jr_009_4f7a:
    ld l, $e8
    sbc d
    or h
    call $0545
    ld c, c
    ld b, c
    ld d, h
    adc c
    ld c, h
    inc d
    jr nz, jr_009_4f37

    or e
    ld a, [de]
    ld d, l
    ld sp, $b75d
    ld hl, $4aed
    ld h, e
    ld a, [hl+]

jr_009_4f94:
    ld a, [hl+]
    ld hl, sp-$76
    cp $8e
    ld a, [$c5a3]
    sbc $6e
    sub b
    sub b
    and a
    ld [hl+], a
    db $e4
    inc [hl]
    ld a, [hl+]
    ld a, [$6370]
    jp z, Jump_000_3ab4

    add hl, hl
    sbc h
    inc d
    inc l
    ld b, h
    ld c, h
    ld l, h
    db $dd
    ld [de], a

jr_009_4fb4:
    add d
    jr z, jr_009_4fd8

    add hl, hl
    and l
    jr nc, jr_009_5025

    cpl
    dec h
    ld hl, $6a02
    add l
    ld [hl], b

jr_009_4fc2:
    ld d, b
    db $e3
    xor c
    or l
    inc de
    ccf
    sub c
    ld c, d
    rrca

jr_009_4fcb:
    add hl, de
    push bc
    ld e, h
    rla
    dec hl
    adc h
    ld l, e
    jr nz, jr_009_4f7a

    ld c, $16
    and [hl]
    or l

jr_009_4fd8:
    ld b, e
    dec [hl]
    dec b
    jr nc, jr_009_4fb4

    and $4f
    ld b, $44
    add h
    ld a, [hl+]
    ld [hl], h
    pop de
    ld [hl], l
    ld a, [hl+]
    sbc a
    ld a, [bc]
    ld h, [hl]
    cp c
    dec d
    inc a
    res 4, c
    ld d, h
    pop af
    ld e, a
    inc b
    ld e, b
    add h
    pop af
    db $e4
    sbc b
    pop af
    push de
    ld [hl+], a
    inc c
    adc h
    xor $55
    ld c, b
    cp h
    ld h, d
    ld [de], a
    sub l
    rst $38
    and l
    adc h
    ld d, [hl]
    and d
    xor e
    add a
    ld [hl+], a
    pop hl
    ld l, c
    db $f4
    rla
    ret z

    ld c, e
    sbc d
    ld d, e
    dec l
    ld [$18ae], sp
    db $10
    ld b, d
    ld c, d
    add c
    adc b
    ld l, d
    push af
    ld c, e
    ld e, l
    ld sp, $9588
    adc d

jr_009_5025:
    xor l
    ld b, [hl]
    ld l, l
    xor d
    inc c
    ld e, b
    rla
    ld d, d
    and d
    jr jr_009_5045

    ld d, h
    xor c
    ld a, [bc]
    dec c
    ld [hl-], a
    sbc d
    add hl, de
    add hl, hl
    ld [hl+], a
    and c
    and h
    jr z, jr_009_4fc2

    ld e, h
    adc d
    ld c, h
    jr nz, jr_009_4fcb

    ld d, d
    ld l, d
    xor d

jr_009_5045:
    ld a, a
    ld e, b
    adc l
    and e
    inc b
    sub l
    inc b
    xor b
    inc de
    inc h
    push bc

Call_009_5050:
    adc b
    and h
    or h
    adc b
    ld [hl], d
    ldh [$a6], a
    inc b
    adc d
    jr nc, jr_009_50a5

    sbc l
    ld d, d
    xor $04
    cp b
    sub h
    ld de, $1bc2
    inc b
    jp z, $d4af

    dec hl
    sub d
    ld [c], a
    or a
    sbc h
    adc b
    ld d, b
    adc l
    ld [$df98], a
    call z, Call_009_65d3
    rrca
    jp nc, Jump_000_38d3

    adc h
    db $e3
    ld e, e
    ld l, b
    sub $90
    xor b
    adc b
    add sp, $62
    ret nc

    ld a, [c]
    or d
    ld a, [c]
    and b
    ld c, h
    rst $18
    ret nc

    add c
    inc d
    ld d, l
    ld e, c
    sub [hl]
    dec b
    inc b
    jp $28cd


    ld l, h
    adc [hl]
    rlca
    ld b, l
    add hl, bc
    ld b, d
    ld [$537d], sp
    add d
    push de
    ld d, l
    ld l, $ad

jr_009_50a4:
    ld l, [hl]

jr_009_50a5:
    add d
    ld d, a
    ld e, l
    jr c, jr_009_50d4

    ld [$afda], sp
    ld [c], a
    ld l, d
    ret nc

    call c, $e6c9
    ld h, b
    cp c
    add hl, bc
    db $e3
    ld l, b
    ld b, h
    ld l, l
    sbc [hl]
    ld b, l
    sub b
    sbc [hl]
    ld b, [hl]
    ld [de], a
    ld h, c
    daa
    ld [hl], d
    ld b, d
    jr z, jr_009_50fe

    and e
    ld sp, $ca28
    or b
    and $28
    ld c, d
    dec d
    inc bc
    ld h, c
    rlca
    sub c
    sub e

jr_009_50d4:
    ld hl, $2b44
    ld h, $54
    ld h, a
    ld l, h
    inc [hl]
    jr nc, jr_009_50a4

    dec [hl]
    ld [hl], c
    add hl, sp
    ld [hl-], a
    add a
    ldh [$a3], a
    ld [bc], a
    jr @-$0e

    ld h, c
    jr @+$2d

    ld a, [$57aa]
    ld b, l
    ld d, a
    ld [hl], d
    ld a, [bc]
    inc d
    ld h, l
    push af
    ld a, [de]
    and $94
    add l
    cp d
    sbc h
    ret


    add hl, sp
    xor e

jr_009_50fe:
    ld b, $4a
    db $fc
    and [hl]
    ld a, [bc]
    sub b
    and e
    add d
    add hl, bc
    sub e
    ldh [$a1], a
    ld de, $3068
    ld a, [hl+]
    adc l
    rst $38
    ld b, $4c
    add h
    sbc b
    ld c, b
    jp nz, Jump_009_43c1

    dec bc
    rlca
    ldh a, [rSTAT]
    ld a, [hl-]
    sub l
    ld h, b
    jp nc, $5b8b

    ld d, c
    dec [hl]
    sub b
    or d
    ld de, $1129
    adc h
    jr c, jr_009_517c

    ld [hl], h
    db $10
    ld [hl], c
    add hl, de
    ld l, [hl]
    jp nc, Jump_000_2d47

    sbc h
    dec l
    ld [bc], a
    sub h
    sbc b
    ld b, a

Jump_009_513a:
    ld c, d
    dec de
    db $e3
    or b
    and $ea
    sbc h
    ld d, e
    inc d
    adc d
    jr z, jr_009_518c

    sub b
    and h
    ld h, $eb
    adc [hl]
    ld [$8223], sp
    ld h, [hl]
    add sp, -$2b
    ld a, [de]
    ld h, c
    ld [bc], a
    ld h, a
    dec h
    and h
    ld sp, $5408
    ld [hl], c
    and h
    ld b, e
    add l
    ret z

    inc a
    ld a, [$1d16]
    inc e
    ld d, l
    add e
    ld h, l
    jp Jump_000_0705


    add d
    jr jr_009_51ad

    or c
    push bc
    inc e
    ld l, l
    dec d
    inc d
    ld b, h
    cp b
    sub l
    ld d, e
    xor c
    ld [$5faf], a
    dec [hl]

jr_009_517c:
    ld e, a
    rst $30
    jp nc, $fd16

    inc sp
    ld a, d
    ld hl, $ec1b
    xor b
    call Call_009_5848
    xor e
    adc [hl]

jr_009_518c:
    dec [hl]
    sub [hl]
    ld c, h
    ld d, e
    db $76

jr_009_5191:
    ld b, $33
    cp a
    scf
    ld [hl], d
    sub d
    db $db
    db $d3
    ld a, e
    sub $29
    sbc c
    cp c
    jr c, jr_009_51ca

    add d
    sub b
    ld b, e
    ld a, [bc]
    and e
    sub d
    jp c, $9874

    and $aa
    and d
    ld a, b

jr_009_51ad:
    add sp, -$6b
    ld l, b
    ld a, [$ea79]
    ld a, [hl]
    and d

Jump_009_51b5:
    and [hl]
    xor b
    ld b, b
    and h
    rst $38
    ld e, a
    or c
    sbc d
    ld b, e
    ei
    ld [de], a
    adc l
    cp $66
    xor a
    db $f4
    xor b
    ld c, b
    jp c, $95b9

jr_009_51ca:
    db $f4
    add a
    ldh a, [rSCY]
    add l
    ld a, l
    add hl, de
    ld d, b
    ld [hl], b
    cp [hl]
    sub c
    jr nc, jr_009_5191

    sbc d
    ld c, d
    rst $38
    jr nc, @-$48

    adc l
    and $b0
    ld [hl], l
    ld b, d
    jp z, $a116

    inc e
    adc [hl]
    rst $38
    ld [$f59c], a
    inc hl
    ld hl, sp+$27
    ld d, e
    ld hl, sp+$47
    ldh [$e0], a
    ld [hl], a
    cp [hl]
    pop de
    inc sp
    ld a, b
    and h
    pop af
    ld a, [hl+]
    ld sp, $98a2
    pop af
    jr z, @+$16

    cp e
    inc b
    add h
    and $7f
    ld c, [hl]
    dec b
    ld h, $7c
    add h
    adc b
    rla
    and l
    inc [hl]
    ld b, e
    ld a, l
    ld c, l
    dec d
    inc d
    ld l, $30
    ld a, d
    dec e
    or h
    pop bc
    ld h, d
    xor e
    ld c, d
    and a
    ldh a, [$4c]
    ld h, d
    rra

Jump_009_5221:
    dec d
    adc b
    and d
    sub b
    ld d, e
    dec d
    add hl, hl
    cp $14
    call Call_000_1604
    ld l, $88
    xor d
    ld [hl-], a
    ld d, d
    ret c

    pop hl
    ld e, [hl]
    xor a
    ld d, c
    ld d, b
    ld e, a
    or l
    ld c, c
    ld d, h
    push bc
    scf
    ld [hl], b
    sub b
    ld d, h
    dec hl
    add e
    ld [c], a

jr_009_5244:
    inc d
    jr nz, @-$54

    ld h, e
    add hl, sp
    inc [hl]
    add e
    ld b, d
    jr jr_009_5272

    ld h, b
    ld b, [hl]
    ld [$262e], sp
    ld [hl], $73
    jr z, @+$56

    add $18
    db $10
    ld b, [hl]
    ld h, e
    ld [hl], l
    cp $73
    ld c, b
    ld d, b
    ld [hl], d
    ld [de], a
    ld a, a
    inc e
    pop bc
    ld sp, $dbaf
    ld sp, $888a
    xor b
    adc b
    ccf
    inc e
    ret


    ld d, e

jr_009_5272:
    dec hl
    ld d, h
    jp nz, $9858

    sub [hl]
    ld [hl+], a
    dec [hl]
    xor d
    db $e4
    and [hl]
    add hl, bc
    inc c
    jp z, Jump_009_56a5

    adc [hl]
    inc d
    ld h, h

Call_009_5285:
    jr c, @-$67

    jp nc, $3523

    xor d
    and l

Jump_009_528c:
    jr c, jr_009_529e

    adc b
    ld h, h
    add l
    rst $38
    dec [hl]
    sbc h
    ld d, d
    and h
    inc de
    jr c, jr_009_52b1

    sub $f3
    ld c, b
    ld [hl], c
    and d

jr_009_529e:
    sub $a5
    ld d, d
    jr z, jr_009_52f7

    ld e, b
    ld l, b
    adc b
    dec e
    inc sp
    adc b
    xor b
    sbc $95
    ld h, c
    xor l
    ld c, d
    and c
    db $fc

jr_009_52b1:
    jp nz, $d104

    ld c, [hl]
    ld c, b
    ld l, b
    jr z, jr_009_5244

    call z, $8560
    ld d, d
    ld d, h
    jp hl


    xor b
    pop bc
    inc b
    db $10
    ld c, b
    cp [hl]
    push de
    ld hl, sp-$15
    adc b
    and b
    and b
    ld e, b
    add h
    xor d
    xor b
    ldh a, [$ea]
    ld hl, $9349
    call z, Call_009_538a
    ret c

    and e

Jump_009_52d9:
    rst $00
    rst $18
    add b
    ld b, l
    and a
    adc b
    add $7a
    ld c, d
    ld de, $66e3
    inc sp
    sub b
    ret nz

    sbc [hl]
    inc hl
    add [hl]
    ld e, h
    ld d, e
    inc c
    add hl, hl
    add hl, bc
    xor d
    jp nc, Jump_009_749a

    sub d
    sub a
    rla

jr_009_52f7:
    ld de, $92a9
    ld b, d
    cp h
    sbc b
    ld h, h
    and [hl]
    ld [$2444], sp
    dec hl
    ld de, $0826
    call nz, $18c1
    inc h
    and d
    sub l
    ld a, [bc]
    dec bc
    and a
    ld a, [de]
    ld c, d
    ld h, [hl]
    sub d
    sub [hl]
    sub d
    cp b
    db $f4
    and d
    sub h
    add e
    and c
    ld d, h
    or c
    sub d
    ld c, h
    call nz, Call_009_61a3
    dec b
    inc de
    jr nz, @-$2c

    ld a, [hl+]
    db $10
    ld a, a
    dec de
    ld c, c
    ld [hl], $8c
    ld b, [hl]
    ld b, h
    ld e, h
    sub d
    pop bc
    ld l, d

jr_009_5333:
    pop af
    jp Jump_000_1729


    ld [de], a
    or h
    ld b, e
    inc b
    ld sp, $ff5a
    sbc d
    dec hl
    ld d, l
    ld e, [hl]
    xor b
    or l
    ld c, b
    ld b, d
    xor c
    sbc l
    ld d, h
    add hl, bc
    sbc l
    ld c, d
    xor l
    db $ed
    ld b, h
    and h
    or l
    ld de, $e81d
    ld b, h

Call_009_5355:
    scf
    ld l, d
    inc d
    ld h, b
    pop af
    or d
    dec [hl]
    ld h, $2c
    ld d, $0f
    ld b, b
    rst $30
    ld d, d
    xor e
    ld d, b
    add hl, hl
    inc d
    ld e, d
    add l
    and c
    sub [hl]
    call nz, Call_000_2fbc
    inc b
    ld h, c
    jp z, $289b

    ld d, c
    add hl, de
    ld d, c
    dec l
    db $10
    and e
    dec bc
    sbc b
    ret c

    ld c, e
    ld b, d
    and c
    add $39
    add hl, bc
    jr z, jr_009_53c8

    add hl, hl
    and d
    sub h
    sub e
    ld d, b
    ld l, c

Call_009_538a:
    jr z, jr_009_53e7

    sbc b
    ret nz

    sbc b
    pop bc
    jr nc, jr_009_5333

    inc e
    ld d, l
    ld b, l
    ld b, [hl]
    ld de, $5474
    rla
    add hl, de
    daa
    ld c, d
    ld de, $24c1
    dec h
    and a
    ld e, h
    ld b, d
    ld b, h
    ld de, $e138
    ld d, [hl]
    xor l
    ld e, $04
    add d
    ld b, d
    ld c, [hl]
    ld a, c
    pop de
    rst $28
    ld c, c
    db $f4
    nop
    ld b, h
    or c
    ld h, h
    ld d, [hl]
    sub c
    ld e, a
    db $fd
    inc [hl]
    ld c, b
    and d
    ld h, a
    and l
    ld d, h
    call $a0c9
    and [hl]
    ld e, a
    and h

jr_009_53c8:
    pop de
    ld d, d
    ld d, d
    ld d, c
    ld e, b
    ld e, c
    ld [hl-], a
    ld d, a

Jump_009_53d0:
    sub c
    ld a, d
    ld h, $82
    ld b, d
    adc h
    sub [hl]
    rst $18
    dec l
    ld h, $f8
    jp nc, Jump_000_39e3

    ld b, l
    ld e, h
    pop de
    ld e, e
    inc sp
    and d

Jump_009_53e4:
    inc hl
    ld a, [hl-]
    dec b

jr_009_53e7:
    ld c, h
    push de
    ld c, l
    jr z, @+$12

    ld d, b
    ld d, b
    ld d, c
    ld h, d
    ld h, h
    jp z, $aa86

    dec bc
    ld [hl], b
    and h
    ldh [$ae], a
    sbc h
    inc h
    ld sp, $1958
    dec [hl]
    ld b, e
    ld d, b
    ld a, d
    ld a, [bc]
    add l
    ld hl, $4135
    ld [hl+], a
    rst $00
    dec bc
    ld [$68a3], a
    cp d
    inc a
    ld sp, hl
    sub d
    ld e, d
    ld b, d
    ld de, $b309

Jump_009_5416:
    ldh [$e1], a

jr_009_5418:
    sub [hl]
    adc l
    ld h, [hl]
    ld l, b
    ld a, b
    ld a, b
    ld d, [hl]

jr_009_541f:
    ld b, h
    ld b, h
    sbc d
    ld [hl-], a
    ld de, $212b
    ld [hl+], a
    xor h
    ld h, a
    dec b
    and e
    ld h, c
    add [hl]
    ld d, d
    ld [hl], $68
    and c
    ld l, e
    ld b, $09
    rrca
    cp [hl]
    ld l, e
    ld d, d
    xor d
    db $10
    ld d, a
    db $fd
    dec de
    ccf
    jp nc, Jump_000_0a09

    rst $38
    and [hl]
    sub l
    call z, Call_000_3fcc

Jump_009_5447:
    rst $38
    ld sp, hl
    xor d
    inc e
    dec de
    ld l, l
    ld [hl], l
    ld e, a
    sbc d
    inc h
    ld a, b
    ld [hl], b
    jp nc, Jump_009_6693

    cp c
    ld [hl-], a
    rrca
    ld b, h
    and a
    rrca
    ld de, $9a29
    ld l, l

jr_009_5460:
    rla
    ld b, a
    rst $00
    add b
    ld [hl], a
    cp d
    push de
    rst $38
    db $fd
    ld c, a
    ld hl, $a87f
    jp nz, $c5a3

    ld a, d
    dec d
    ld d, l
    jr nc, jr_009_5418

    jp nz, Jump_009_5a78

    dec b
    xor b
    pop bc
    dec sp
    ld d, l
    ld b, c
    ld b, [hl]
    sub [hl]
    adc h
    sub [hl]
    dec d
    ld d, l
    add hl, sp
    jr jr_009_541f

    ld e, c
    adc h
    ld d, l
    and d
    ld d, $aa
    ld h, l
    rlca
    adc h
    sbc d
    ld h, d
    and l
    adc e
    ld e, d
    dec l
    ld d, l
    ld a, [hl+]
    xor d
    ld [hl-], a
    ld a, d
    add [hl]
    dec h
    ld c, d
    ld e, b
    or l
    xor b
    jr z, jr_009_54d8

    ld d, h
    ld l, l
    jr nc, jr_009_54f9

    ld a, [c]
    ld d, d
    ld e, b
    and l
    and e
    add hl, sp
    ld [hl+], a
    sbc b
    pop bc
    ld c, [hl]
    inc d
    and [hl]
    inc a
    reti


    ld h, d
    and d
    dec d
    ld hl, $4e85
    ret z

    jp nc, $e907

    ld e, e
    ld c, e
    adc h
    ld d, e
    ld b, [hl]
    push bc
    ld [hl-], a
    ld c, h
    ld h, d
    xor b
    or h
    sub h
    or l
    ld l, $22
    ld c, h
    inc de
    jr z, jr_009_5460

    ld d, $19
    ld b, $8c
    ld d, h
    adc d

jr_009_54d8:
    adc l
    and h
    ld [de], a
    pop de
    sub b
    ld c, b
    db $e3
    ld [hl], l

Call_009_54e0:
    ld [hl-], a
    ld c, [hl]
    ld b, h
    adc l
    xor d
    sub l
    dec [hl]
    or h
    and [hl]
    ld [hl-], a
    ld h, b
    adc b
    ld l, d
    ld b, [hl]
    ld [hl-], a
    or l
    inc [hl]
    cp l
    and d
    sub h
    cp b
    add h
    cp b
    pop de
    ld l, b

jr_009_54f9:
    jp c, $a8d5

    ld h, h
    ld d, d
    ld h, d
    db $d3
    inc d
    push hl
    ld d, e
    add hl, sp
    add hl, bc
    ld d, d
    ld [c], a
    sub $49
    ld c, l
    call nc, $53da
    inc d
    cp d
    adc e
    adc a
    ld [bc], a
    sub d
    db $e4
    push bc
    ld h, d
    inc hl
    pop bc
    ld c, h
    ld l, c
    ld d, l
    adc b
    ld e, b
    reti


    ld c, [hl]
    inc h
    db $dd
    ld d, [hl]
    adc [hl]
    dec h
    dec hl
    ld d, d
    sub [hl]
    ld [hl], $63
    and l
    ld c, d
    xor a
    ld l, b
    rst $18
    adc [hl]
    set 2, h
    xor d
    and l
    inc a
    jp z, $55fd

    ld a, l
    ld d, [hl]
    and l
    inc d
    pop hl
    db $dd
    ld l, b
    ld [hl-], a
    xor e
    daa
    sub h
    call z, Call_000_1f11
    ret z

    ld e, c
    db $e3
    ld sp, $916a
    ld b, e
    ld h, a
    add [hl]
    push bc
    ccf
    ld d, c
    ld [c], a
    and d
    adc h
    ld b, e
    pop hl
    ld a, [de]
    or d
    ld c, d
    ld [hl], d
    and c
    ld c, b
    inc h
    ld [hl], c
    ret nz

    and e
    ld [hl+], a
    and b
    sub c

jr_009_5563:
    sbc c
    xor h
    ld [$3924], sp
    ret nz

    cp d
    add hl, bc
    ld [de], a
    ret nz

    xor d
    ld h, h
    call nz, $b1c4
    xor d
    dec de
    call nz, $2450
    ld d, h
    ld a, [de]
    ld h, e
    rla
    sub e
    add hl, de
    ld hl, $4687
    dec d
    and $11
    ld l, h
    ld l, c
    jr @+$37

    db $10
    sbc e
    ld h, [hl]
    pop de
    sbc h
    ld h, b
    di
    ld [de], a
    and d
    sbc c
    rst $00
    ld [de], a
    ld h, c
    inc de
    ld b, l
    pop hl
    ld a, h
    ld h, e
    db $10
    sub d
    and $54

jr_009_559d:
    ret


    db $10
    ld c, d
    ld a, [bc]
    ld c, h

jr_009_55a2:
    ld d, l
    sub [hl]
    and h
    and d
    ld sp, hl
    ld a, d
    jr z, jr_009_55ca

    sub e
    jr z, jr_009_55ff

    ld l, e
    inc d
    sub c
    ld b, c
    ld b, c
    jr jr_009_559d

    ld sp, $458d
    ld h, $14
    ld e, e
    ld h, a
    ld b, $9c
    xor [hl]
    ld h, c
    jr z, jr_009_55a2

    ld d, b
    and [hl]
    ld a, [c]
    ld [hl], c
    and [hl]
    ld l, b
    xor l
    ld c, d
    ld [de], a

jr_009_55ca:
    add hl, bc
    xor e
    ld [bc], a
    ld c, d
    jr @+$29

    ld a, [de]
    dec l
    jr nz, jr_009_5563

    ld h, [hl]
    ret nc

    ld hl, sp+$44
    ld e, d
    ld l, e
    ld b, h
    add $11
    push bc
    add hl, de
    jp c, $f162

    ld d, c
    add hl, bc
    inc [hl]
    ld l, h
    add $d0
    ld h, b
    xor a
    push bc
    ld c, b
    ld d, h
    inc c
    ld [de], a
    and [hl]
    or c
    rst $00
    ld c, d
    ld h, l
    ld d, l
    inc de
    ld sp, $dae1
    sbc d
    xor l
    ld b, [hl]
    jp c, $d773

jr_009_55ff:
    add d
    xor b
    ld d, h
    sbc h
    sbc d
    ld h, b
    sbc h
    ld [hl], l
    add h
    ld [hl], h
    and $10
    ld h, b
    and [hl]
    ld c, d
    rra
    dec e
    or h
    and [hl]
    inc d
    ccf
    db $fc
    pop de
    ld [c], a
    call z, $a882
    dec [hl]
    ld c, b
    call nc, Call_009_700e
    add b
    ld b, h
    cp b
    sub a
    rst $38
    push af
    jr c, jr_009_563c

    ld e, d
    or a
    ld c, b
    and e
    dec [hl]
    db $fd
    call c, Call_009_4331
    db $f4
    inc e
    push bc
    jp hl


    ld l, b
    ld [hl+], a
    jr z, jr_009_5698

    cp e
    adc h
    jr z, jr_009_5654

jr_009_563c:
    db $eb
    cp d
    ld hl, $d25d
    dec a
    ld d, e
    ld a, [hl+]
    ld hl, $20a2
    cp l
    ld [hl+], a
    and e
    ld c, b
    inc de
    dec d
    db $f4
    db $dd
    ld b, c
    ld c, e
    ld a, d
    add [hl]
    ld c, c

jr_009_5654:
    ld c, h
    ld d, h
    inc d
    add h
    ld d, c
    ld c, b
    ld c, b
    di
    dec h
    ld e, c
    and d
    jr z, jr_009_568b

    ld hl, $39f3
    adc c
    ld b, c
    ld c, c
    rst $00
    ld a, b
    sub $90
    ld b, c
    add hl, de
    inc sp
    ld c, l
    xor d
    ld a, [hl+]
    and l
    ld e, d
    adc a
    add [hl]
    call c, $aa8a
    sbc l
    ld e, $60
    and [hl]
    xor d
    push de
    inc b
    and a
    daa
    ld a, c
    rst $10
    ld sp, $138d
    xor d
    ld h, a
    ld a, [de]
    sbc $a1

jr_009_568b:
    ld d, a
    push hl
    rst $00
    dec bc
    rst $30
    ld a, [hl+]
    ld [hl], c
    xor d
    ld b, h
    rla
    cp c
    add d
    ld h, h

jr_009_5698:
    rst $38
    jr jr_009_56f9

    ld h, d
    sub b
    sub [hl]

jr_009_569e:
    add $10
    pop de
    adc d
    db $10
    ld b, c
    ld [bc], a

Jump_009_56a5:
    sub c
    ld a, [hl+]
    xor c
    or l
    ldh a, [rLCDC]
    add l
    ld l, b
    ld h, h
    dec hl
    ld b, [hl]
    or d
    and h
    rst $08
    push de
    ld a, [hl]
    ld [hl], l
    ld d, l
    rra
    ld [de], a
    ld [hl], a
    or [hl]
    ld d, l
    dec a
    ld d, $fa
    sbc d
    ld d, e
    call z, $84a8
    ld h, h
    ld d, e
    adc c
    ld e, a
    db $fd
    ld d, e
    ld l, d
    dec l
    dec l
    ld [hl], $7e
    and d
    rst $20
    ld c, [hl]
    dec hl
    adc b
    adc l
    jp c, $e337

    add l
    add [hl]
    ld c, [hl]
    jr jr_009_569e

    ld e, l
    cp $a3
    ld a, [hl+]
    ld hl, $534c
    ld a, [hl-]
    inc d
    sbc [hl]
    ld [$4cc1], sp
    xor l
    inc d
    db $76
    ld b, c
    add hl, sp
    db $d3
    sbc d
    reti


    ld d, a
    ld h, d
    dec d
    ld d, l
    ld c, d
    ld [c], a
    ld [hl], e

jr_009_56f9:
    sub l
    ld l, e
    ld e, a
    add c
    ld a, a
    xor a
    ld h, $08
    ld l, e
    ld sp, $a856
    call $07c2
    xor $89
    adc h
    and c
    pop de
    push de
    and d
    sub e
    ld a, [hl+]
    add d
    ld [c], a
    ld [hl+], a
    ld [c], a
    call nc, $6f89
    ld [$9832], sp
    jp z, $2a76

    scf
    sbc b
    xor d
    ld d, h
    add l
    ld h, e
    ld b, l
    ld h, $18
    pop hl
    call z, $a87a
    pop hl
    ld d, h
    adc b
    or a
    inc d
    add $3b
    db $eb
    db $fc
    and l
    dec h
    inc a
    sub l
    ld d, d
    dec e
    ld l, $4d
    sub e
    sub c
    ld l, a
    xor e
    dec bc
    ld a, a
    jp nc, Jump_000_0ea9

    dec h
    inc b
    db $e3
    ld h, [hl]
    jp $98f6


    xor e
    ret


    ld a, d
    ld e, d
    sub h
    dec d
    ld c, l
    sub [hl]
    dec c
    jp hl


    ld c, b
    ld h, h
    call Call_000_16fe
    rrca
    ld d, h
    ld a, [hl+]

jr_009_575e:
    ld d, e
    dec b
    ld l, $a1
    ld b, d
    ld a, [de]
    ld d, h
    push bc
    ld a, a
    ld [hl], d
    inc h
    or h
    pop hl
    ld b, d
    or d
    xor d
    rst $38
    rst $38
    and c
    ld c, b
    ld a, d
    adc [hl]
    ld c, l
    ld h, $39
    ld h, b
    ldh [$89], a
    sub d
    ld h, e
    ld h, l
    add hl, de
    and h
    ld h, e
    adc c
    call z, $2228
    add sp, -$4c
    ld [hl+], a
    jr nz, jr_009_57cb

    jr c, jr_009_57b3

    ld de, $c845
    sub h
    cp d
    ld b, c
    ld hl, sp-$5a
    ld h, e
    adc d
    ld c, b
    cp d
    dec h
    ld c, h
    ld l, e
    ld d, l
    ldh [$fa], a
    add hl, sp
    ld l, l
    ld c, b
    ld b, c
    ld [hl], h
    jp c, Jump_000_3baa

    dec hl
    rst $20
    and e
    dec e
    or d
    add hl, hl
    jp hl


    ld h, h

jr_009_57ad:
    ld d, b
    jr z, jr_009_57d7

    sbc c
    adc e
    rla

jr_009_57b3:
    ld h, a
    ld a, [de]
    add hl, sp
    jr jr_009_575e

    ret c

    and h
    ld d, c
    ld c, d
    ld [hl], b
    add $18
    ld b, a
    inc h
    add hl, bc
    ld [hl], c
    and d
    ld b, d
    push de
    ld d, b
    or d
    add hl, bc
    sbc d
    ld d, l

jr_009_57cb:
    ld a, [bc]
    ld [hl], b
    ret nz

    push bc
    ld a, [hl+]
    rra
    rst $30
    sbc c
    ld c, b
    ld [hl+], a
    sub e
    dec bc

jr_009_57d7:
    sbc c
    ldh [$82], a
    ld d, h
    inc [hl]
    ld d, d
    sbc c
    ld b, d
    call nz, $0e74
    ld l, d
    add h
    ld h, e
    jr jr_009_57ad

    cp b
    xor d
    inc d
    ld c, d
    ld l, c
    inc b
    ld d, h
    ld h, h

jr_009_57ef:
    sbc c
    ld hl, $a18a
    ld [bc], a
    ld [de], a
    add l
    ld d, l
    ld c, e
    inc c
    and $d4
    ld h, l
    ld [hl], $4c
    ld b, h
    ld l, h
    jp Jump_000_2aa3


    sub l
    ld h, [hl]
    ld [hl], b
    ld c, h
    ld b, h
    ld de, $48a5
    ld e, d
    rst $18
    dec hl
    ld a, [bc]
    add $b6
    sub e
    ld [bc], a
    ld l, e
    ld de, $fa0c
    xor d
    dec d
    sbc d
    ld [c], a
    sub d
    sbc h
    ld [hl], $92
    sbc b
    ld b, a
    ld c, $84
    and [hl]
    add hl, de
    and l
    jp Jump_009_5447


    jr jr_009_57ef

    or [hl]
    ld a, c
    ret


    ld [$a6ce], sp
    adc c
    ld [de], a
    ld c, $72
    ld hl, $54a8
    sub c
    dec l
    add hl, hl
    ld l, e
    ld b, h
    ld c, [hl]
    ld [hl], c
    cp a
    ld l, l
    jr z, jr_009_5894

    ld [de], a
    dec d
    ld [de], a

jr_009_5846:
    ld hl, sp+$49

Call_009_5848:
    ld [$a624], sp
    xor l
    ld a, [bc]
    and d
    sub c
    inc de
    ld c, d
    sub b
    db $eb
    ld [bc], a
    ret nz

    add l
    ld d, b
    jr z, jr_009_587f

    rrca
    rla
    ld b, d

jr_009_585c:
    adc e
    jr nz, @-$6b

    ld d, l

Jump_009_5860:
    ld d, a
    ld h, e
    adc e
    ld b, h
    jp c, Jump_000_195d

    pop bc
    inc h
    jp $8497


    ld b, h
    inc sp
    ld b, l
    add $e8
    ld b, b

Jump_009_5872:
    adc d
    ld b, d
    ld [hl], b
    ldh a, [rDMA]
    dec de
    push hl
    ld hl, $2217
    sub b
    pop af
    cp d

jr_009_587f:
    ld [hl], $64
    push bc
    jp Jump_009_6524


    ld c, h
    rst $00
    inc b
    ld [de], a
    ld b, d
    push bc
    add hl, sp
    add d
    dec a
    ld [bc], a
    xor l
    ld hl, $921c
    db $e3

jr_009_5894:
    adc d
    and $50
    ret nz

    add l
    and h
    ld b, a
    ld a, [hl-]
    db $10
    ld hl, $c661
    pop af
    ld de, $11d7
    ld h, c
    add hl, de
    nop
    ld b, h
    or h
    ld d, a
    db $fd
    ld b, l
    ld e, a
    call $a29e
    ld a, a
    ld [$603a], a
    adc [hl]
    ld l, d
    jr nc, jr_009_5846

    adc e
    ld d, d
    ld d, c
    ld h, l
    jr c, jr_009_585c

    cp [hl]
    inc d
    db $10
    and b
    db $d3
    adc l
    jp c, $b0a7

    ld d, e
    ld a, e
    ld a, b
    sbc c
    xor e
    or h
    ldh [rHDMA2], a
    xor b
    xor c
    ld c, l
    ret nc

    ld b, d
    ld b, d
    adc [hl]
    ld h, a
    and [hl]
    and b
    ld d, e
    sbc c
    ld c, b
    cp l
    ld b, c
    ld a, [bc]
    ld d, e
    add l
    ld c, d

jr_009_58e2:
    and c
    rst $18
    di
    add [hl]
    push af
    ld d, l
    add [hl]
    xor a
    adc $2a
    xor b
    di
    and $88
    ret nz

    db $e4
    and e
    inc e
    add hl, bc
    add a
    pop de
    ret c

    jp hl


    pop de
    ld a, [bc]
    ld sp, hl
    reti


    rst $18
    db $e4
    ld d, b
    and a
    ld l, $b1
    ld [$6763], sp
    ld [bc], a
    or $1f
    and c
    ld [bc], a
    add hl, sp
    jp $c315


    ld c, e
    ld b, a
    inc c
    ld c, e
    rla
    ld e, c
    add $a1
    dec e
    sub d
    ld [$4f76], a

jr_009_591c:
    inc de
    ld b, h
    daa
    inc de
    rst $38
    add h
    jr jr_009_58e2

    ld [hl], c
    ld d, l
    ld b, [hl]
    ld de, $e0f0
    ld d, l
    cp b
    push de
    ld d, d
    sub a
    cp $4e
    ld b, a
    ld [$5daf], a
    ld hl, $1304
    adc d
    add c
    inc hl
    sub [hl]
    ld d, a
    dec de
    ld b, c
    jr c, jr_009_5955

    sbc c
    jr jr_009_59a8

    adc c
    ld [$4523], sp
    cp [hl]
    dec d
    ld b, [hl]
    ld b, l
    ld l, b
    ld h, b
    sub b
    ld c, h
    sbc a
    ld d, h
    ld d, c
    ld b, c

jr_009_5954:
    ld [hl+], a

jr_009_5955:
    inc b
    cp b
    jr z, jr_009_597c

    ld a, [bc]
    and b
    add sp, $50
    ld d, b
    ld d, a
    ld h, $19
    ret nc

    ld b, d
    ld c, c
    ld d, b
    or l
    ld d, d
    ld [$427d], a
    ld c, c
    ld c, l
    ld [$4c26], a
    ld a, [hl+]
    add hl, de
    jr nc, jr_009_59c0

    ld l, b
    sbc $21
    inc d
    reti


    ld h, d
    ld e, b
    pop bc
    ld [hl+], a

jr_009_597c:
    jr c, jr_009_591c

    ldh [$8c], a
    ld d, [hl]
    ld h, [hl]
    sub b
    adc e
    adc c
    and d
    ld h, d
    ld d, d
    ld a, [de]
    ld b, $08
    jr jr_009_599e

    ld d, e
    dec h
    or l
    add l
    ld a, [de]
    ld l, a
    adc h
    sub c
    add c
    adc e
    or h
    sbc [hl]
    cp a
    xor b
    jr nz, jr_009_59e3

jr_009_599d:
    ld [hl+], a

jr_009_599e:
    inc d
    inc de
    ld a, [hl-]
    ld d, c
    ld h, d
    jr jr_009_59c5

    adc b
    ld c, d
    add d

jr_009_59a8:
    jr c, jr_009_5954

    ld [$211b], sp
    adc e
    ld b, c
    add hl, sp
    xor b
    ld [de], a
    ld [hl+], a
    ld e, b
    ld e, $08
    sbc $85
    ld d, [hl]
    dec d
    pop bc
    ld hl, sp+$50
    ld b, c
    jr c, jr_009_59ef

jr_009_59c0:
    dec h
    ld h, b
    xor b
    dec h
    ld d, l

jr_009_59c5:
    inc b
    sbc l
    add $90
    sbc b
    ld c, d
    rst $00
    dec hl
    inc b
    jr z, jr_009_5a1c

    dec c
    inc h
    xor c
    push bc
    cp l
    ld a, $91
    inc hl
    ld b, h
    add hl, hl
    jp nz, Jump_009_43b0

    ld [hl], d
    dec hl
    and c
    inc c
    ld l, d
    add h

jr_009_59e3:
    or h
    inc l
    sub d
    pop hl
    sbc b
    ld b, [hl]
    adc b

jr_009_59ea:
    ld l, b
    xor d
    and b
    and b
    ld [c], a

jr_009_59ef:
    and d
    sub l
    jr jr_009_59ea

    adc l
    dec l
    and e
    ld [hl], b
    jr nz, jr_009_599d

    ld l, c
    ld [hl-], a
    sub d
    jp $c0c0


    add h
    dec d
    sub c
    inc c
    ld c, l
    sub l
    inc de
    ld [hl-], a
    ld sp, $8271
    add hl, bc
    ld [hl], c
    ld c, $52
    add hl, bc
    ret


    ld b, a
    inc d
    ld b, d
    ld e, d
    ld h, c
    rrca
    sub e
    add hl, de
    inc h
    ld l, b
    ld c, c
    add d

jr_009_5a1c:
    add hl, de
    ld d, c
    add hl, bc
    ld d, [hl]
    ld c, h
    add l
    db $10
    sub b
    add d
    call nz, Call_009_4a39
    ld e, d
    ld d, [hl]
    jp nc, $b4c2

    dec bc
    adc h
    ld d, d
    sub h
    pop de
    add h
    add hl, bc
    inc de
    inc sp
    ld c, c
    cp d
    ld l, c
    inc bc
    ld d, c
    inc c
    ld b, d
    ld h, b
    sub d
    sbc h
    or c
    dec e
    inc h
    cp c
    ld c, c
    jp nz, $b19b

    add l
    sbc e
    reti


    adc e
    add d
    add hl, hl
    add e
    sbc h
    inc de
    ld [bc], a
    add h
    adc h
    db $10
    ret nc

    ld a, [hl+]
    ld e, b
    ld b, h
    and c
    ld a, a
    call nc, Call_009_5285
    sub l
    ld a, [c]
    ld [$87e0], a
    rst $28
    rst $38
    db $fc
    add h
    jp nz, $ead1

    db $f4
    sbc h
    ld l, e
    ld d, b
    ld c, h
    ld e, $81
    ld d, l
    ld [hl], c
    ld [hl], h
    add hl, hl
    add c

jr_009_5a76:
    ld c, h
    scf

Jump_009_5a78:
    and c
    ld d, l
    ld d, [hl]
    add c
    ld d, h
    ld h, $2d
    ld [$6a1a], sp
    sub h
    ld a, [hl+]
    ld c, d
    ld h, d
    ld e, [hl]
    and [hl]
    ld b, [hl]
    sub h
    ld h, h
    ld e, h
    add h
    ld [de], a
    ld d, h
    ld e, b
    ld [de], a
    ld [c], a
    and c
    ldh a, [$4c]
    dec a
    ld [$6d55], sp
    ld h, b
    ld h, d
    inc d
    pop bc
    ld c, b
    xor [hl]
    and l
    cp $bd
    ld b, e
    ld l, b
    cp d
    rst $20
    ld d, $bc
    add hl, sp
    ld a, [de]

Jump_009_5aaa:
    ld a, [bc]
    ld d, e
    dec bc
    sub h
    ld [hl+], a
    add hl, hl
    ld [hl+], a
    sub c
    or $32
    xor a
    xor d
    ld d, b
    ld c, b
    ret z

    di
    sbc d
    cp a
    ld e, h
    adc a
    ld a, [hl-]
    ld l, d
    xor b
    pop af
    and $0a
    ld [hl], c
    add hl, hl
    add l
    rst $38
    ld d, d
    cp a
    ld [$7e45], a
    ld h, e
    ld h, e
    rst $38
    rst $18
    xor l
    ld a, e
    inc bc
    jr jr_009_5a76

    rst $38
    db $fc
    dec d
    ld a, [$143e]
    ld h, d
    db $fd
    ld c, d
    db $fd
    dec hl
    ld d, a

jr_009_5ae2:
    xor $60
    xor e
    rst $38
    xor l
    ld a, a
    ld e, [hl]
    or a
    rla
    pop hl
    ld a, a
    db $ed
    ld a, e
    ld l, d
    db $f4
    ret


    ld a, l
    rst $38
    ld a, [hl]
    adc a
    dec sp
    rst $28
    ld l, [hl]
    ld h, b
    and c
    db $fd
    ld c, d
    cp $0f
    di
    pop de
    add a
    ld [$aaee], a
    push de
    cpl
    ld c, d
    ld h, d
    rst $10
    db $fd
    inc bc
    pop hl
    ld a, a
    db $eb
    ld h, [hl]
    sbc a
    rla
    cp $17
    adc a
    sbc h
    push de
    xor $f7
    sbc l
    inc [hl]
    dec d
    rra
    ld c, $77
    cp c
    ret nc

    adc a

jr_009_5b22:
    ld d, c
    add d
    add hl, bc
    inc a
    ld [hl], l
    ld [hl-], a
    adc e
    sub e
    push bc
    sbc d
    ld d, d
    db $e3
    ld [$92f1], sp
    ld a, [hl+]
    ld d, c
    ld c, h
    inc h
    call $a153
    jr nc, jr_009_5ae2

    jp z, Jump_009_5aaa

    adc b
    and [hl]
    ld c, a
    ld de, $883c
    res 4, l
    ld a, [bc]
    inc a
    ld l, [hl]
    inc sp
    xor l
    ld b, d
    xor c
    ld c, l
    and e
    add l
    ld h, e
    ld l, b
    ld de, $4dbf
    jr @-$1e

    ld h, b
    ld c, [hl]
    adc d
    ld [hl-], a
    adc [hl]
    ld a, [hl+]
    and e
    sub a
    rst $38
    ld [hl-], a
    ld c, [hl]
    ld [hl], $3d
    ld h, h
    ld [c], a
    ld b, d
    rla
    cp $3b
    dec d
    scf
    ld a, b
    pop af
    call nc, $85d1
    ld b, c
    rst $38
    adc h
    db $e3
    sub d
    adc l
    ld a, [hl+]
    add l
    ld d, [hl]
    adc [hl]
    or $38
    or a
    jr c, @+$26

    pop hl
    adc a
    ld hl, $6336
    jp z, Jump_009_6a4d

    xor d
    inc a
    ld l, c
    jr c, jr_009_5bdc

    ld d, l
    jr c, jr_009_5b22

    add a
    jr c, jr_009_5bba

    sub [hl]
    dec [hl]
    ld h, [hl]
    push af
    inc a
    ld b, h
    ret


    ld h, d
    inc h
    jr z, jr_009_5bcd

jr_009_5b9d:
    ld e, d
    ld b, [hl]
    ld c, [hl]
    ld h, [hl]

jr_009_5ba1:
    ld sp, $6863
    xor c
    ld a, [hl-]
    add hl, hl
    add hl, hl
    adc h
    push de
    ld h, e
    call nz, Call_000_3d45
    ld c, b
    jr jr_009_5ba1

    ld h, a
    ld c, h
    ld a, d
    adc h
    ld b, h
    ld a, b
    ld a, [c]
    ld l, c
    sub l

jr_009_5bba:
    daa
    adc l
    or b
    dec h
    ret


    ld [hl], c
    db $e3
    ld l, c
    jr nc, jr_009_5be7

    and l
    ret


    sub d
    xor d
    ld [hl], e
    ld sp, hl
    add l
    ld a, [de]
    ld d, l

jr_009_5bcd:
    ld a, h
    ld d, h
    ret


    ret


    jp hl


    or d
    ld h, a
    jr jr_009_5b9d

    ld [de], a
    rla
    and l
    ld e, a
    add sp, -$4e

jr_009_5bdc:
    sbc h
    add hl, bc
    rst $00
    rst $38
    ld b, [hl]
    dec l
    adc [hl]
    ld sp, $4a8a
    ld [hl], b

jr_009_5be7:
    xor a
    ld b, [hl]
    sub $43
    ld c, h
    ld h, c
    add d
    ld [hl], b
    cp a
    xor c
    ret


    sub e
    sbc b
    ld h, a
    dec hl
    sbc h
    xor b
    ld d, b
    ld h, $16
    ld [hl], c
    pop af
    call nz, $9391
    sbc b
    rst $20
    ld d, $aa
    ld l, h
    sbc $08
    jp nc, $9c65

    dec [hl]
    ld d, c
    xor d
    cp a
    add [hl]
    ld c, h
    ld h, l
    sbc h
    sbc a
    add $2f
    rst $38
    ld [bc], a
    inc d
    add hl, bc
    sub e
    inc e
    ld [hl], e
    sbc h
    ld c, [hl]
    ld sp, $71a6
    cp h
    ld [hl], c
    ld b, e
    dec de
    ret


    ret nz

    rst $00
    sub b
    sbc d

jr_009_5c2a:
    cp a
    rst $38
    db $fc
    ld a, b
    ld c, c
    ret


    jp z, Jump_000_0c9e

    sbc h
    ccf
    ld d, [hl]
    xor c
    xor e
    ld a, d
    ld h, h
    sub b
    add $f1
    ld e, h
    add hl, de
    sbc e
    inc b
    rst $10
    xor c
    inc l
    add hl, hl
    db $d3
    sbc b
    cp h
    ld d, [hl]
    sub c
    ld [hl], l
    ld a, [bc]
    ld sp, $c6cc
    inc c
    ld h, l
    db $e3
    sbc b
    ld b, a
    ld d, h
    ld d, h
    ld l, c
    adc h
    ld a, b
    adc h
    inc c
    ld a, d

Call_009_5c5c:
    pop de
    pop hl
    nop
    ld b, h
    cp b
    push de
    xor d
    xor b
    db $e3
    ld e, d
    ld a, [hl-]
    ret c

    db $ed
    ld h, e
    cp d
    ld a, [hl-]
    push de
    ld h, e
    or c
    inc a
    add hl, de
    ld a, $06
    inc a
    jr jr_009_5c2a

    ld a, a
    adc $49
    ld c, c
    ret nc

    rst $38
    add hl, sp
    xor d
    ret c

    ccf
    adc $ba
    and l
    ld d, e
    pop bc
    xor b
    pop af
    ld h, a
    ld a, [de]
    ld sp, $84d2
    db $76
    ld sp, $aa92
    ld l, [hl]
    push bc
    xor l
    ld b, d
    reti


    or h
    ld h, c
    inc d
    call $aa98
    add $d3
    ld a, $63
    ld hl, $994a
    rst $28
    ld b, [hl]
    sub d
    ld b, l
    jr @+$7f

    ld b, [hl]
    jp hl


    ldh [$a6], a
    ld a, [hl+]
    and a
    ld a, [hl+]
    ld c, d
    add h
    xor [hl]
    sbc h
    sub b
    inc h
    ld c, b
    dec hl
    rst $20
    ld b, l
    ld h, c
    rst $38
    or e
    dec e
    ld d, l
    ld e, a
    sbc a
    ld a, [bc]
    ld d, l
    cp e
    ld d, h
    ldh a, [$d5]
    add e
    db $e3
    add c
    ld c, l
    ld l, $ea
    xor e
    adc $1f
    push de
    ld d, h
    dec e
    ld l, h
    xor h
    ld [hl], h
    ret


    rst $10
    db $76
    xor d
    cp b
    ld d, e
    dec d
    ld d, e
    dec hl
    add sp, $63
    sub d
    scf
    and h
    push bc
    ld [hl-], a
    ld a, b
    sub l
    ld d, e
    ld a, [hl+]
    db $fd
    ld d, a
    dec d
    ld a, [hl+]
    add hl, bc
    ld a, [de]
    xor d
    or h
    jp nc, Jump_009_7aae

    ld h, $f4
    ld d, h
    inc d
    rla
    inc sp
    ld d, a

jr_009_5cfb:
    jp hl


    ld l, c
    ld b, [hl]
    or b
    ld c, c
    ld d, a
    ld hl, sp-$37
    push af
    ld [$55b8], sp
    ld d, c
    ld a, [hl]
    adc h
    rst $18
    add d
    and e
    inc h
    adc e
    ld l, b
    sbc $d5
    ld [$22c5], sp
    jr jr_009_5cfb

    db $d3
    inc [hl]
    ld a, [hl+]
    ld e, b

jr_009_5d1b:
    inc d
    pop hl
    ld d, b
    adc e
    ld l, l
    db $e3
    and l
    ei
    rst $38
    add sp, $12
    ld a, [de]

jr_009_5d27:
    ld a, b
    rst $20
    add d
    ld a, d
    adc c
    ld b, l
    ld c, [hl]
    sub a
    rst $18
    ld d, l
    ld a, [$d30a]
    or d
    ld a, h
    and h
    jr c, jr_009_5d27

    xor a
    rst $38
    di
    add hl, de
    jp c, Jump_000_229e

    jr nc, jr_009_5d62

    sbc h
    add hl, hl
    and h
    add h
    ld d, a
    and a
    ld [bc], a
    ld [hl-], a
    ld c, d
    jr nc, jr_009_5d1b

    ld h, c
    ld a, [de]
    and b
    sbc c
    ld b, h
    ld b, [hl]
    inc l
    rst $00
    ld [de], a
    ld a, [$a277]
    rst $38
    cp $64
    pop de
    add hl, bc
    add hl, bc
    and h
    rla
    ld e, h

jr_009_5d62:
    adc d
    ld c, e
    inc c
    scf
    inc e
    ret c

    ld b, b
    xor b
    ldh [$c2], a
    adc d
    and c
    dec de
    ld hl, $0b0a
    add $7f
    ret c

    ld b, [hl]

jr_009_5d76:
    jp z, Jump_009_7f10

    ldh a, [$b2]
    cpl
    add h
    ld l, d
    add h
    sub c
    rrca
    cp $28
    cp e
    sbc h
    ld [hl], l
    inc b
    ld b, l
    ld hl, sp+$40
    cp a
    add [hl]
    ld [hl], d
    ld b, [hl]
    dec d
    ret nz

    adc l
    ccf
    inc e
    ld d, b
    ld b, b
    sub b
    ret nz

    add h
    ccf
    ld a, [$4171]
    inc b
    ld d, [hl]
    pop af
    rra
    pop de
    rst $10
    and [hl]
    rla
    add hl, hl
    db $d3
    inc c
    ld [de], a
    inc l
    rst $38
    reti


    db $dd
    inc h
    call nc, $83c7
    ld de, $6066
    ld b, h
    cp [hl]
    ret


    rst $30
    ld b, l
    ld d, e
    sub [hl]
    add [hl]
    ld a, [bc]
    rlca
    adc [hl]
    ld d, l
    dec hl
    cp e
    add hl, sp
    xor l
    ld e, b
    inc hl
    and l
    dec c
    ld e, b
    rla
    add hl, sp
    ld l, e
    adc c
    ld e, l
    add hl, sp
    jr z, jr_009_5d76

    ld a, [de]
    ld a, [hl-]
    sub c
    ld a, d
    add hl, sp
    dec l
    ld e, b
    ld d, c
    sub e
    sbc d
    ld d, l
    adc a
    xor d
    sbc a
    adc c
    rst $18

jr_009_5de0:
    and h
    rst $20
    dec a
    rst $38
    adc d
    ld [hl], h
    rst $18
    jp nz, Jump_009_6ee7

    ld de, $bad9
    ld de, $bfd0
    rst $18
    sbc h
    xor a
    rst $38
    ld b, e
    ld h, a
    dec [hl]
    pop af
    ld hl, sp+$60
    ld [hl], a
    or d
    ld d, b
    ld a, l
    db $fd
    ld c, [hl]
    dec d
    ld d, c
    ld d, l
    ld c, d
    ld d, h
    rst $00
    cp $f8
    adc d
    db $d3
    ld b, [hl]
    jp c, $aaee

    db $f4
    ld h, $32
    cp l
    xor d
    sub l

jr_009_5e14:
    ld h, b
    sub h
    jp nz, Jump_009_5860

    adc $9e
    adc h
    ld a, $34
    ld l, d
    cp l
    ld d, b

Call_009_5e21:
    add c
    and d
    sbc d
    and l
    dec d
    ret c

    add $cc
    push af
    dec h
    rst $10
    ld c, [hl]
    add hl, de
    ld c, l
    ld d, l
    ld c, l
    dec h
    add sp, -$66
    ld b, d
    sub h
    sub $a3
    ld a, [bc]
    add d
    jr nc, jr_009_5de0

    jp c, $a489

    db $e3
    and h
    push bc
    ld h, c
    sub c
    or l
    ld d, l
    db $e3
    rla
    sub e
    ld h, l
    inc b
    or [hl]
    inc sp
    xor d
    xor b
    sbc $19
    ld h, e
    ld e, b
    add h
    ld l, b
    call Call_009_4d7f
    and b
    ld c, h
    ld d, d
    sub b
    adc b
    and h
    sub h
    add l
    add sp, -$75

jr_009_5e62:
    ld c, l
    sub h
    sub a
    add sp, -$78
    ld [hl], $36
    and e
    dec d
    ld a, [hl+]
    adc h
    db $fc
    ld d, $82
    ld b, d
    ld b, $42
    dec h
    ld h, $36
    ld e, b
    and l
    ld a, [bc]
    ld [hl+], a
    jp nc, $a456

    jr z, jr_009_5e14

    ld h, b
    adc l
    ld l, b
    sbc c
    ld d, h
    adc $98
    inc l
    sub l
    ld d, a
    adc b
    ld d, e
    inc [hl]
    add l
    ld l, d
    xor l
    ld b, l
    ld sp, $2aa5
    add [hl]
    and l
    dec bc
    ld d, d
    ld d, [hl]
    ld d, l
    db $d3
    ld [$8c3a], sp
    cp l
    dec d
    ld h, d
    ld d, h
    inc h
    dec hl
    jp hl


    and d
    xor c
    ld c, c
    sub h
    adc $22
    ld [$a2b7], sp
    ccf
    ld d, c
    ld c, h
    ld h, c
    and [hl]
    add d
    add sp, -$3f
    jr jr_009_5eda

    ld [$8886], sp
    sub d
    add hl, hl
    ld d, l
    and d
    db $d3
    ld l, b
    db $dd
    add hl, hl
    and c
    ld d, e
    add l
    call nc, Call_000_33d5
    ld d, h
    ld h, d
    ld d, e
    adc c
    inc b
    jp nc, Jump_000_2985

    ld l, d
    xor a
    dec h
    dec d
    ld d, e
    ld h, l
    db $e3
    dec [hl]
    jr jr_009_5e62

jr_009_5eda:
    or [hl]
    adc h
    ld d, c
    and h
    pop bc
    ld h, e
    add d
    db $eb
    xor b
    ld e, d
    adc e
    add [hl]
    xor l
    inc hl
    ld a, [hl+]
    add hl, sp
    ld l, b
    inc l
    jr z, @-$34

    rlca
    adc b
    and [hl]
    dec h
    adc [hl]
    ld [hl], l
    add d
    inc sp
    ld l, [hl]
    dec h
    adc d
    ld h, e
    and l
    rst $30
    sub d
    ret c

    dec e
    ld l, d
    dec d
    ld l, b
    rst $28
    ld e, l
    ld d, [hl]
    adc d
    xor d
    xor b
    ld [c], a

Jump_009_5f09:
    db $db
    ld [hl+], a
    or d
    ld [hl], c
    ld [hl+], a
    adc d
    ld b, d
    ld d, d
    add hl, bc
    sbc [hl]
    db $db
    inc de
    ld h, $ca
    inc d
    inc e
    dec d
    inc b
    adc a
    ld sp, $1a97
    ld h, d
    sbc b
    push bc
    and [hl]
    ld [hl], $a9
    sbc a
    add hl, de
    dec a
    ld b, c
    ld [hl+], a
    adc h
    ld e, h
    ld h, a
    ld de, $e999
    add l
    and l
    or $bc
    xor e
    ld [bc], a
    ld h, a
    ld c, d
    ld h, d
    add h
    ld [$7c83], a
    ld a, [de]
    ret nc

    ld d, d
    inc [hl]
    inc d
    xor h
    ld h, [hl]
    or c
    add d
    db $10
    ld sp, $3211
    ld a, [de]
    sbc b
    or c
    ld d, a
    dec h
    ld d, c
    ret z

    sub $4a
    ld a, [hl+]

jr_009_5f54:
    ld b, d
    ld sp, $3a8d
    ret c

    and l
    or b
    ld h, e
    ld de, $9110
    ld b, h
    push de
    ld a, [de]
    pop bc
    ld l, b
    call nc, Call_009_5c5c
    ld de, $420c
    ld e, d
    add [hl]
    add hl, bc
    call nc, $2898
    ret c

    inc [hl]
    ld de, $300c
    reti


    adc d
    ld d, d
    ld e, h
    call nz, Call_000_32b4
    and c
    ld de, $9911
    ld h, l
    or b
    and [hl]
    ld e, $4a
    ld a, [bc]
    jr nc, jr_009_5f54

    sub b
    jp Jump_009_71c6


    ld c, d
    and e
    inc b
    ld d, l
    jr z, @-$54

    jr nc, jr_009_5fc5

    inc l
    inc l
    ld [hl], b
    jp z, $9ba1

    ld hl, $0475
    add d
    inc e
    ld b, h
    ld e, h
    ld c, e
    inc bc
    push af
    ld d, b
    ld h, h
    and [hl]
    ld c, d
    ld h, c
    ld b, [hl]
    inc de
    inc bc
    ld a, [bc]
    add e
    add sp, $26
    ld [hl], $16
    ld h, l
    ld [bc], a
    ld h, d
    cp a
    add sp, -$3f
    db $dd
    rla
    ld h, l
    or e
    add hl, hl
    adc h
    inc e
    inc c
    xor e
    ld d, c
    inc de
    ld [c], a
    sbc d

jr_009_5fc5:
    and h
    or b
    ld e, e
    jr jr_009_6034

    add hl, hl
    ld [hl], c
    rrca
    dec d
    ld [hl-], a
    ld l, [hl]
    sbc l
    ld sp, $690c
    and h
    xor a
    dec d
    inc c
    ld l, b
    adc l
    jp z, $82ea

    sbc b

jr_009_5fde:
    jr c, jr_009_6021

    call nc, $0bc6
    ld l, c
    sbc h
    adc h
    sub b
    or l
    ld d, b
    add sp, -$5c
    jr nc, @+$4a

    ld h, $b1

jr_009_5fef:
    and [hl]
    adc l
    inc [hl]
    ld h, l
    ld l, d
    ld b, [hl]
    sub c
    ld e, [hl]
    xor d
    pop de
    call nz, $a9f0
    and e
    ld c, $16
    sub l
    ld d, c
    rst $08
    ld b, $16
    ld h, a
    ld b, d
    call nz, Call_009_4c49
    ld [hl], l
    or h
    sbc b
    ld a, $c5
    and d
    add h
    ld [hl], l
    ld h, c
    add h
    ld a, [bc]
    ld b, d
    db $10
    ldh a, [$2a]
    and c
    ld c, b
    ld b, a
    db $76
    ld a, [de]
    inc d
    add h
    ld d, h
    ld d, h

jr_009_6021:
    ld [hl], c
    nop
    ld b, h
    and c
    ld a, a
    jp nc, $f517

    ld e, a
    ld e, a
    ld l, $a2
    ld e, $ba
    db $e4
    ld [hl], $18
    jr z, jr_009_5fde

jr_009_6034:
    ld hl, $a2d6
    jr z, jr_009_608e

    ld h, e
    dec de
    ld e, d
    ld a, [hl+]
    adc [hl]
    ld a, d

Call_009_603f:
    sub l
    inc d
    dec h
    adc h
    sub d
    xor $81
    ei
    inc sp
    ld e, d
    and d
    sub d
    ld a, c
    xor c
    ld l, b
    sbc d
    ld h, $2a
    sub $94
    ld e, $16
    ld h, $55
    adc h
    ld [hl+], a
    xor b
    dec hl
    push de
    ld a, [hl-]
    sbc b
    xor b
    add l
    ld c, h
    jp nc, Jump_009_5221

    sbc b
    jr jr_009_5fef

    jp nz, $81eb

    ld b, $87
    or e
    inc [hl]
    jp nz, Jump_009_6ddb

Call_009_6071:
    ld b, l
    rra
    ld b, l
    adc [hl]
    ld c, e
    or $82
    pop af
    ld b, c
    dec sp
    jr z, jr_009_60a5

    pop af
    ld h, [hl]
    ld a, [bc]
    ld e, d
    and [hl]
    ld a, [hl+]
    ld l, b
    ld hl, sp+$44
    or b
    ld b, h
    ld a, [hl]
    push bc
    ld a, [$f9ca]
    rrca

jr_009_608e:
    add sp, -$01
    ld h, $34
    rra
    rst $38
    add a
    rst $38
    ei
    ld [hl], c
    and d
    push af
    cp $ff
    db $fc
    sub d
    sbc b
    ld h, c
    add sp, $7f
    db $f4
    cp $10

jr_009_60a5:
    rst $38
    sbc b
    ld [hl], l
    ld a, a
    jp nz, $92bf

    rst $38
    sub l
    dec [hl]
    ld l, a
    db $10
    rst $38
    db $db
    ld d, a
    ld sp, hl
    ld d, b
    cp a
    ld a, [$afaa]
    di
    ld h, $6f
    rst $38
    db $fc
    scf

jr_009_60c0:
    db $fc
    ld l, e
    add a
    rst $38
    rlca
    cp a
    cp $4b
    add e
    sbc b
    call c, $df18
    add l
    add d
    ccf
    pop hl
    sbc h
    scf
    ret z

    ld b, e
    rst $38
    add [hl]
    db $76
    ld d, b
    ld d, c
    ldh a, [$a0]
    ld d, l
    cp b
    rra
    push de
    ld sp, $3955
    sub [hl]
    adc b
    and h
    add l
    dec bc
    jp hl


    jr c, jr_009_60c0

    ld c, e
    sbc b
    adc b
    xor b
    call Call_009_7855
    adc d
    and h
    sbc $17
    ei
    ld [$cea8], a
    ld a, [bc]
    xor c
    ld c, d
    ld b, l
    ld e, [hl]
    scf
    ld l, b
    inc h
    pop bc
    ld sp, $4a8e
    adc h
    sub b
    ld h, d
    ld d, h
    ret


    ld d, h
    adc d
    rla
    ld a, [$9153]
    adc c
    sub d
    inc e
    db $10
    adc c
    sub h
    ldh [rLYC], a
    inc d
    ld e, a
    and c
    adc h
    sub d
    xor b
    ld d, d
    ld e, a
    sbc c
    add l
    and e
    sub d
    and h
    add l
    ld d, l
    ld b, c
    ld c, d
    ld l, d
    adc h
    inc de
    ld [$57ab], sp
    or $38
    sub d
    ld l, b
    adc e
    add hl, hl
    ld hl, sp-$5c
    and h
    jp nc, $9d85

    ld hl, $2146
    adc h
    ld a, [hl+]
    ld sp, $61bf
    cp a
    adc d
    ld h, d
    ld d, l
    ld c, b
    ld c, c
    adc l
    sbc a
    db $fd
    sub l
    ld a, l
    xor e
    and d
    ld d, e
    ld l, d
    add hl, hl
    adc b
    ld c, e
    adc c
    ld h, e
    sub c
    push de
    ld h, e
    ld a, [bc]
    xor b
    pop hl
    cp a
    db $e3
    and d
    ld [hl], b
    pop bc
    adc d
    ld h, d
    adc d
    ld [hl], e
    ld d, a
    cp $e4
    and d
    adc e
    sbc h
    cp b
    ld e, l
    ld a, [hl]
    add e
    ld a, [$c6d5]
    ld l, c
    cpl
    and $17
    ld d, l
    rst $38
    rst $38
    ld de, $d110
    rla
    pop af
    ld l, [hl]
    ld a, [de]
    ld b, h
    dec d
    ld b, c
    dec c
    db $ec
    ld h, e
    ld b, h
    or e
    cp a
    db $e4
    add hl, sp
    add hl, bc
    ret nc

    rst $30
    pop af
    rrca
    pop hl
    inc d
    and $48
    and h
    db $fd
    call nz, $fe61
    ld [hl], b
    or b
    ld a, [hl+]
    and e
    ld [hl], b
    ld c, b
    ld a, a
    or h

Call_009_61a3:
    sub [hl]
    and l
    and b
    ldh a, [$cb]
    ld [de], a
    add l
    ld d, h
    and d
    sub a
    ld l, d
    ld c, a
    jr nc, @-$46

    xor e
    pop hl
    ld e, a
    cp $67
    inc de
    ld c, b
    cp a
    ld a, e
    ld sp, hl
    ld d, a
    ld a, [c]
    sbc b
    ld [hl+], a
    and h
    ld b, h
    db $f4
    rra
    sub h
    add a

jr_009_61c5:
    di
    xor c
    jr z, jr_009_61c5

    xor d
    inc l
    ld b, a
    db $f4
    ld b, a
    db $fd
    ld a, a
    sub d
    add e
    ldh a, [$57]
    pop af
    rla
    add $15
    ld hl, sp+$7e
    sub e
    inc c
    ld c, h
    ld de, $2b51
    rst $10
    cp $fc
    ld l, [hl]
    call nz, $85c0
    push bc
    ld c, e
    db $fd
    dec de
    ld b, l
    jr nc, jr_009_626a

    ld h, b
    push de
    sbc h
    ld l, $bc
    ld a, b
    sub b
    rst $00
    ld c, b
    ld b, h
    or b
    ld d, e
    dec b
    ld c, [hl]
    ld c, d
    cp l
    ld e, a
    xor e
    db $d3
    add [hl]
    ret nc

    ld e, d
    dec e
    add $90
    ld a, h
    sub $a2
    jp nc, $c515

    dec [hl]
    and e
    ld b, l
    ld h, b
    adc [hl]
    ret z

    ld [c], a
    and e
    db $76
    jr c, jr_009_628b

    daa
    sub [hl]
    ld [hl], $78
    ld a, [de]
    daa
    and l
    ld a, [bc]
    ld d, e
    ld b, l
    ld a, d
    ld [hl], h
    adc b
    inc d
    sub h
    sub $8a
    or l
    ld a, [hl]
    rla

Call_009_622c:
    adc [hl]
    ld l, d
    add l
    ld sp, hl
    adc $b5
    ld a, [bc]
    dec sp
    ld l, [hl]
    ld a, $1e
    ld a, b
    pop af
    add hl, bc
    ld d, a
    xor c
    ret


    ld a, h
    ld c, l
    rst $18
    sub h
    sbc h
    ret nc

    ldh a, [$28]
    add hl, sp
    db $d3
    or a
    db $ec
    ld l, d
    and [hl]
    ld c, a
    db $e4
    add hl, sp
    cp d
    ld h, b
    rst $38
    add e
    ld sp, hl
    or h
    ld e, $ab
    db $fd
    adc l
    ld a, c
    cp e
    ld a, a
    jp nc, $71f4

    add $2f
    and a
    ld h, a
    ld b, l
    cp c
    db $dd
    rst $00
    ld [hl], d
    ld a, l
    ld b, b
    ld [hl], a

jr_009_626a:
    cp e
    dec d
    ld d, h
    ret


    ld d, b
    ld d, h
    ldh a, [rNR30]
    ld l, $a4
    dec d
    xor e
    add sp, -$13
    ld e, d
    ld hl, $9752
    xor c
    ld h, b
    xor e
    ld c, [hl]
    add a
    ld [$4647], a
    ld l, b
    pop bc
    ld h, $b4
    and $78
    ld d, d

jr_009_628b:
    add hl, hl
    db $fd

jr_009_628d:
    ld [hl+], a
    rst $28
    and d
    xor [hl]
    add hl, sp
    ld e, h
    sbc b
    ld [hl+], a

Call_009_6295:
    xor l
    push hl
    ld e, e
    sub l
    ld c, b
    adc [hl]
    ld d, [hl]
    sub d
    rra
    push de
    ld d, h
    ld a, [hl+]
    sub a
    xor e
    ld e, b
    ld h, e
    sub [hl]
    rra
    ld a, h
    add l
    ld c, c

jr_009_62aa:
    xor c
    ld d, a
    ld e, l
    xor c
    ld [$56e0], sp
    jp c, $d0e0

    ld h, d
    ld a, [hl+]
    sub c
    ld e, d
    add sp, $2d
    ld b, d
    ld [$d7d6], sp
    push de
    ld a, a
    ld [$7a30], a
    ld d, $22
    ld a, [de]
    jr jr_009_62aa

    cp a
    db $e3
    ld a, e
    ld d, c
    sub d
    inc de
    sub l
    xor d
    ld h, $81
    push af
    ld [hl-], a
    add d
    sub a
    ld d, b
    ld e, e
    add hl, de
    ld [hl], $8c
    sbc b
    push de
    add [hl]
    xor c
    ld h, l
    sub a
    ld a, l
    dec [hl]
    sub e
    ld a, [de]
    add d
    ld d, l
    ld d, [hl]
    ld d, [hl]
    rlca
    add $6c
    ld [hl+], a
    inc d
    sbc $31

Call_009_62f0:
    xor e
    ld a, [$05aa]
    ld h, a
    sbc $08
    add hl, hl
    dec b
    add hl, sp
    and h
    sub h
    ld [de], a
    sbc [hl]
    reti


    ld e, c
    ld [$3888], sp
    ld [c], a
    sub d
    xor l
    jr jr_009_628d

    cp a
    sbc b
    cp c
    rlca
    ld [hl], h
    db $eb
    cp l
    ld e, l
    ld c, $0a
    ld l, $22
    adc b
    and e
    adc l

jr_009_6317:
    ld [hl-], a
    xor b
    ld de, $64a3
    add l
    add hl, sp
    ld h, $52
    ret c

    sub h
    pop de
    ld e, a
    db $e3
    sbc l
    xor $5a
    ld hl, $68a5
    and [hl]
    dec sp
    sub $25
    ld e, c
    ld a, b
    add l
    ld [hl+], a
    inc a
    add hl, hl
    ld d, b
    add l
    cp l
    ld d, a
    sub c
    ld h, e
    add $56
    jr nc, jr_009_6317

    ld h, l
    inc a
    ld a, c
    ld e, c
    ld d, e
    ld a, [bc]
    dec a
    add hl, bc
    ld d, a
    ld hl, sp-$0b
    ld l, d
    adc a
    adc h
    dec sp
    ld d, l
    ld c, h
    ret nc

    ld b, l
    inc a
    dec l
    ld a, a
    add a
    dec h
    ld a, [hl]
    inc c
    inc [hl]
    db $ed
    ld d, [hl]
    adc d
    xor d
    ld [hl], c
    push af
    xor [hl]
    inc c
    jp hl


    ld b, e
    rrca
    sub e

jr_009_6366:
    ld c, $1a
    add l
    add [hl]
    or b
    adc $89
    and c
    sbc c
    ld l, $2b
    add d
    jp c, $9563

    and b
    add e
    inc c
    adc d
    pop bc
    add hl, hl
    inc d

jr_009_637c:
    inc a
    rra
    adc [hl]
    ld d, a
    add hl, hl
    ld sp, $2342

Call_009_6384:
Jump_009_6384:
    inc hl
    cp l
    cp b
    and $7f
    ld c, $1a
    cp $a0
    sbc c
    inc hl
    push bc
    cp [hl]
    db $d3
    add l
    ld b, e
    or a
    daa
    ld h, d
    ld a, [hl+]
    sub h
    ccf
    dec c
    jp nz, Jump_009_5416

    push de
    cp $68
    inc e
    ld [hl], b
    or e
    ld d, $60
    ld h, c
    or d
    ld hl, $e88d
    dec h
    ld e, b
    ldh [$a4], a
    ld h, h
    ld e, h
    push hl
    ld l, a
    ret


    and d
    ld e, h
    pop de
    rst $00
    or d
    inc e
    ld a, b
    rst $18
    ld a, [de]
    sub l
    ld c, b
    call z, $1298
    inc h
    rra
    sub b
    sbc h
    inc de
    ld e, d
    ld c, d
    ld e, l
    rlca
    jr nc, jr_009_6366

    ld d, $66

jr_009_63cf:
    dec b
    inc c
    ld d, [hl]
    jr c, jr_009_637c

    ld [hl+], a
    ccf
    rst $38
    add $04
    ld a, [de]
    xor [hl]
    add hl, bc
    dec de
    add d
    jr c, jr_009_6430

    ld b, l
    ret c

jr_009_63e2:
    sub $0a
    ld d, c
    jp nz, $aa09

    jr c, jr_009_63cf

    rlca
    inc b
    call $82c5
    ld h, c
    sub c
    sub b
    ld c, [hl]
    ld c, b
    sbc d
    call z, $b9a0
    ld c, b
    add d
    dec e
    add hl, de
    jr c, jr_009_63e2

    push de
    and l
    sub l
    ld d, l
    inc b
    jr jr_009_646f

    adc [hl]
    ld e, b
    ret


jr_009_6408:
    add l
    ld l, b
    inc d
    ld h, b
    and l
    push de
    and e
    sbc l
    ld b, l
    ld a, [de]
    dec b
    adc b
    and c
    sub h
    jr jr_009_6408

    jr nc, @-$7c

    xor d
    ld [hl-], a
    ld [hl], e
    add $bf
    adc c
    ld d, d
    ld e, [hl]
    ld b, l
    ld c, a
    add hl, de
    ld d, $6a
    ld e, b
    jr c, jr_009_64a2

    pop af
    rst $20
    rst $20

jr_009_642d:
    call nc, $f494

jr_009_6430:
    xor c
    ld d, [hl]
    inc c
    push af
    xor b
    ld hl, sp-$30
    ld b, h
    or e
    ld a, c
    ld e, [hl]
    rst $28
    ld d, e
    ld h, l
    daa
    ld l, h
    jr z, jr_009_64ad

    db $fd
    ld c, e
    ld a, [hl]
    xor e
    adc b
    ld b, d
    inc b
    and a
    jr nc, jr_009_649e

    jr nz, jr_009_642d

    ld [hl+], a
    dec b
    ld h, [hl]
    ld b, d
    jr nc, jr_009_64ab

    jp c, $0781

    ld b, $38
    ld e, l
    dec h
    add d
    add c
    ld [$cda4], sp
    ld l, [hl]
    and c
    xor a
    ld b, $05
    inc b
    call $8848
    adc c
    xor a
    and e
    adc [hl]
    inc c
    inc d

jr_009_646f:
    add l
    ld d, [hl]
    ld b, $92
    add sp, -$5c
    ld d, $96
    ld a, [hl+]
    ld h, h
    add $d2
    sub b
    ld c, h
    sub d
    inc hl
    rla
    db $f4
    ld l, $30
    ld [hl], e
    ld l, a
    call nc, Call_000_3126
    adc b
    ld d, h
    jp z, Jump_009_6aa5

    ld d, d
    ld d, [hl]
    xor a
    add sp, -$1d
    xor d
    inc a
    db $fd
    xor d
    ld b, d
    ld b, d
    ld [hl], h
    ld c, l
    ld b, c
    ld d, l
    inc e
    add hl, bc

jr_009_649e:
    inc l
    dec [hl]
    inc c
    dec d

jr_009_64a2:
    ld c, [hl]
    ld h, d
    pop de
    add hl, sp
    ld de, $4a5c
    ld h, c
    ret nc

jr_009_64ab:
    xor h
    inc l

jr_009_64ad:
    ld [hl], h
    ld sp, $2730
    dec hl
    ld a, [hl-]
    ld c, h
    jp hl


    ld a, [bc]
    ld d, e
    jr @+$4a

    or d
    ld d, l
    ld d, b
    ld hl, $e6ac
    ret c

    inc h
    and e
    ld a, [bc]
    rst $10
    jr jr_009_64f7

    db $10
    ld hl, $5d93
    call nz, Call_000_12a6
    ld c, [hl]
    add hl, bc
    add d
    and b
    add e
    ld h, $56
    add h
    db $fd
    adc e
    pop bc
    ld [hl], d
    ld e, $65
    add h
    ld a, [bc]
    add l
    add sp, $2a
    jp c, $9de9

    ld b, h
    ld d, d
    ld sp, hl
    ld d, l
    rra
    ld c, $77
    or [hl]
    ld d, h
    xor $7d
    jr c, @+$59

    xor $d3
    and l
    ld a, d
    jr c, jr_009_6553

    adc b

jr_009_64f7:
    sbc b
    rst $20
    ld l, [hl]
    add c
    ld c, h
    call nc, Call_000_2d5e

jr_009_64ff:
    ld hl, $d838
    ld h, l
    ld c, l
    jr nz, jr_009_64ff

    ld a, l
    ld c, h
    ld l, l
    scf
    adc h
    jr jr_009_6535

    jp nz, $8342

    ld [hl], d
    ld h, d
    ld e, b
    and l
    ld c, b
    ld a, [hl]
    adc c
    ld d, l
    db $fc
    inc de
    inc h
    add [hl]
    add d
    dec h
    ld h, c
    ld d, c
    add e
    rst $28
    sub l
    ld e, d

Jump_009_6524:
    adc h
    dec hl
    ld c, h
    ld d, h
    adc d
    ld a, [de]
    adc c
    ld b, c
    ld d, c
    ld a, [hl]
    ld a, [$6838]
    or a
    ld [hl], d
    ld [c], a
    sub c

jr_009_6535:
    ld h, l
    ld a, d
    adc [hl]
    ld l, d
    ld hl, $55e0

jr_009_653c:
    ld l, $a9
    and e
    ret nz

    and d
    and h
    adc b
    xor c
    ld [hl], e
    call nz, Call_009_5050
    ld e, [hl]
    add hl, de
    ld c, d
    cp a
    ld d, l
    ld c, a
    ld bc, $9042
    ld l, d
    rst $38

jr_009_6553:
    db $fd
    ld a, d
    xor a
    rst $38
    push af
    ld c, [hl]
    ld l, e
    or $33
    ld [hl], c
    sub l
    ld b, a
    sub c
    xor e
    call nc, Call_009_62f0
    ld [de], a
    xor c
    and d
    dec d
    ld a, [bc]
    push de
    ld d, d
    ld d, [hl]
    ld c, [hl]
    add hl, sp
    ld b, d
    ldh [$94], a
    ld h, h
    cp b
    ld a, [hl]
    xor e
    add sp, -$16
    or h
    add hl, sp
    ld a, [bc]
    ld e, c
    ld h, h
    xor b
    jr nc, jr_009_65c5

    ld d, e
    and [hl]
    sbc b
    dec hl
    call nc, $9a29
    jr nc, jr_009_653c

    add h
    add sp, -$50
    ld h, d

jr_009_658c:
    ld e, $f4
    ld h, $42
    jr nc, @-$4a

    ld d, h
    rst $20
    and l
    xor b
    ld h, c
    or l
    add d
    add hl, bc
    jr nc, @+$55

    xor d
    call nc, Call_009_622c
    ld [hl], b
    adc d
    ld c, h
    inc d
    inc d

jr_009_65a5:
    jp hl


    cp b
    ld h, [hl]
    xor b
    jp z, Jump_000_0e4f

    ld d, b
    ld [c], a
    ld l, e
    ld d, h
    cp d
    ld d, [hl]
    inc b
    xor $95
    ld l, [hl]
    pop hl
    ld c, a
    ld c, c
    ld a, [bc]
    or h

jr_009_65bb:
    inc d
    and l
    ld h, $3c
    ld c, d
    and c
    and b
    adc e
    sub d
    inc de

jr_009_65c5:
    jp z, $86a0

    ld h, $53

jr_009_65ca:
    call z, $8cb5
    or [hl]
    ret z

    daa
    add c
    and a
    ld [de], a

Call_009_65d3:
    ld e, $2a
    ld [hl], l
    dec l
    inc b
    ld [hl], b
    scf
    ld b, c
    inc bc
    inc e
    db $ed
    inc e
    add hl, bc
    inc c
    ld h, c
    ld a, [bc]
    ld [hl], d
    ld sp, $9884
    ret nz

    or b
    jr z, jr_009_660f

    ld b, d
    pop hl
    and [hl]
    ld a, [$c664]
    ld [hl-], a
    ld c, a
    ret z

    push de
    jr nc, jr_009_65bb

    jr nz, jr_009_658c

    and c
    ld [$550d], a
    ld b, [hl]
    ld a, h
    jr nc, jr_009_65a5

    ld h, c
    and h
    jr c, @-$1d

    dec sp
    jr c, @+$23

    adc h
    ld e, e
    or d
    ld h, e
    and c
    ld d, c
    inc e

jr_009_660f:
    call nz, $3051
    ld a, a
    cp l

jr_009_6614:
    jr jr_009_65ca

    ld d, d
    ld h, b
    and $48
    cp a
    ld d, h
    xor [hl]
    inc d
    ld [hl], e
    inc h
    jr nz, jr_009_6614

    sbc c
    pop af
    ld [hl], c
    reti


    adc l
    inc bc
    sub $97
    add hl, hl
    dec hl
    inc e
    ld [hl], c
    sub h
    add [hl]
    add d
    sub d
    and l
    pop bc
    add [hl]
    ld b, d
    sbc h
    ld d, d
    ld h, e
    db $10
    add h
    ld l, $33
    ld d, l
    jr nz, jr_009_65c5

    ld b, d
    xor d
    jp nc, Jump_000_2669

    adc l
    ld h, $b3
    jp hl


    and l
    ld c, d
    ld h, e
    dec e
    ld d, h
    ld b, l
    ld l, d
    ld l, e
    add hl, hl
    ld a, [bc]
    sub l
    sbc h
    sub h
    and h
    sub $9a
    ld h, c
    dec l
    ld a, [hl+]
    ld sp, $85d3
    rlc [hl]
    add hl, bc
    xor d
    ld b, a
    daa
    ld c, d
    jr nc, jr_009_66d3

    ld c, b
    ld b, c
    and [hl]
    ld [hl], d
    ld b, [hl]
    ld [hl], h
    rst $08
    ldh a, [$d3]
    and e
    ld l, b
    ld h, $32
    ld a, [hl-]
    ld [hl], h
    ld b, c
    ld [bc], a
    adc h
    dec c
    xor b
    ld b, b
    and [hl]
    ld c, b
    rst $00
    ld b, l
    ld d, l
    ld d, l
    jp Jump_000_2c5a


    ld h, h
    add [hl]
    sbc l
    ld d, b
    ld hl, $9812
    ret


    adc l
    ld b, a
    ld d, l
    inc b
    ld b, e

Jump_009_6693:
    ld b, b
    ldh a, [$ad]
    ld l, c
    db $e3
    ld d, h
    adc a
    call nz, Call_000_3429
    ld a, c
    ld e, b
    jr z, @+$58

    ld h, c
    ld c, c
    db $e4
    ld b, e
    ld de, $9194
    dec bc
    sbc [hl]
    ld d, l
    sub c
    call nz, $e6c9
    ret nc

    ld d, c
    sub b
    ld b, h
    cp d
    call nc, $fcee
    ld [$e87f], a
    ld [$58a9], a
    and a
    rst $10
    db $fd
    ld d, d
    sub l
    call z, $e8e5
    ld d, [hl]
    xor a
    cp $bf
    ld [hl-], a
    xor b
    sbc b
    ld h, d
    ld a, [de]
    ld b, e
    cp h
    jp z, $aa8a

jr_009_66d3:
    ld hl, $8e14
    ld d, b
    ld c, [hl]
    ld c, $86
    add c
    and h
    ld h, b
    adc d
    xor d
    sub d
    xor b
    add hl, sp
    ld d, l
    ld b, [hl]
    ld [hl], d
    xor e
    ld e, l
    ld c, b
    ld b, d
    ld_long $ffff, a
    and d
    ld d, a
    rra
    ld [$6820], sp
    db $e3
    sbc a
    sub a
    ld [$ea54], sp
    cp l
    and e
    db $e4
    rst $30
    cp c
    sbc l
    ld a, c
    ld a, [bc]
    ld [hl], l
    and c
    and $2a
    add hl, sp
    ld c, c
    add d
    ldh [$84], a
    sub l
    jp nc, Jump_000_2fd5

    sub c
    xor c
    rra
    and [hl]
    add hl, sp
    sub l
    ld d, h
    ld d, h
    ld e, $60
    rst $20
    inc [hl]
    add hl, de
    ld a, h
    ld [hl], h
    ld b, [hl]
    ld e, $66
    xor d
    adc d
    xor d
    sub a
    ld a, d
    ld h, e
    ld de, $1185
    sbc b
    call nz, Call_000_3052
    ld b, a
    dec l
    ld b, h
    ld l, b
    ld d, c
    db $dd
    ld b, a
    jp z, Jump_009_7780

    cp c
    sub l

jr_009_6738:
    ld c, c
    ld e, [hl]
    dec d
    ei
    call nc, Call_009_75ea
    ld a, a
    xor d
    rst $38
    and h
    ld l, e
    ld d, a
    add [hl]
    ld d, h
    ld [c], a
    ld [hl], a
    add d
    and e
    ld l, d
    or c
    and c
    sub d
    and h
    ldh [$58], a
    push bc
    ld d, l
    ld d, l
    ld l, $05
    ld h, $67
    jr jr_009_6738

    ld c, e
    ld a, [hl]
    xor d
    xor d
    ret nc

    ld c, d
    ld c, h
    ld d, d
    inc d
    jp nc, Jump_000_238c

    ld e, e
    ld l, $54
    or h
    sub h
    adc $8e
    ld d, [hl]
    ld sp, $a1f3
    ld c, a
    ld bc, $e34c
    ld b, l
    jr c, jr_009_67d1

    sbc $4e
    ld h, l
    dec [hl]
    ld e, b
    push hl
    ld e, b
    ld [c], a
    or l
    ld c, e
    ld d, h
    db $e4
    ld b, c
    ld b, l
    ld e, b
    db $dd
    ld h, b
    db $eb
    ld a, [$7e39]
    ld a, [hl-]
    ld l, [hl]
    cp l
    ld [hl+], a
    jr c, jr_009_67ae

    add hl, sp
    rst $18
    ld sp, $4e5d
    dec b
    add hl, sp
    dec d
    ld [hl+], a
    db $fd
    ld a, [hl+]
    inc b
    call Call_009_7648
    xor c
    ld c, l
    db $eb
    adc d
    add l
    dec [hl]
    ld d, b
    ld b, d
    and c
    ld [hl], d
    and h

jr_009_67ae:
    or l
    ld e, [hl]
    ld d, l
    dec h
    sbc $81
    ld [$8aca], sp
    adc [hl]
    rlca
    and d
    ld de, $6192
    ld a, [$e352]
    jr z, @-$1e

    ld d, d
    ld a, [de]
    sub b
    xor b
    sbc b
    ld h, b
    ld c, e
    call nc, Call_000_04c6
    db $db
    or c
    ld l, d
    ld [hl], $cc

jr_009_67d1:
    xor c
    add hl, de
    ld e, b
    add hl, hl
    ld h, e
    rla
    ld h, $29
    ld sp, $9048
    ld c, e
    and d
    ld h, h
    jp c, Jump_009_528c

    ld [hl], h
    sub l
    and c
    sub l
    dec [hl]
    and h
    adc $d2
    sub [hl]
    inc b
    ldh [$86], a
    ld e, c
    inc sp
    sub e
    ld a, [hl-]
    push bc
    sbc l
    ld [hl+], a
    adc b
    adc l
    sub b
    call Call_000_2f23
    ld d, l
    jp z, Jump_000_2bb2

    ld c, l
    ld [hl], l
    ld c, [hl]
    ld e, d
    xor d
    adc d
    ldh a, [$a1]
    and c
    ld d, c
    ld [hl], l
    db $fc
    ld l, d
    ld d, e
    sbc d
    add hl, bc
    rlca
    ld hl, sp-$65
    call c, $2a14
    ld [hl-], a
    ld c, b
    ld c, [hl]
    inc l
    rra
    adc l
    dec l

jr_009_681c:
    jr c, jr_009_6848

    ld h, $73
    ld [hl+], a
    sub d
    add e
    ld a, [bc]
    dec bc
    jr c, jr_009_684e

    ld h, d
    add h
    ld de, $bf1e
    ret z

    ld e, a
    ld a, d
    jr jr_009_6873

    sbc l
    rst $28
    rst $38
    rst $38
    sbc $df
    pop hl
    ld e, a
    and a
    ld e, e
    push de
    ld d, l
    rst $38
    add a
    ld b, c
    cp $2f
    rst $18
    dec de

Call_009_6844:
    or c
    ld l, [hl]
    rst $38
    rst $38

jr_009_6848:
    db $ed
    pop af
    ld c, $14
    ld b, a
    db $ec

jr_009_684e:
    add hl, hl
    and d
    ld h, e
    call nz, $ff7f
    ld a, [$1442]
    ld a, [bc]
    ccf
    rst $38
    xor c
    and h
    ld e, [hl]
    ld e, a
    push af
    db $fd
    dec bc
    sub c
    jr z, jr_009_68a3

    rst $38
    and $b2
    ld [hl], c
    ret


    ccf
    and c
    dec a
    rst $38
    rst $18
    pop af
    xor d
    ld [hl], b
    or a
    sub c

jr_009_6873:
    ld a, [hl]
    ld b, a
    or a
    pop hl
    ld a, [hl]
    db $76
    ld hl, $e40d
    ld a, [hl]
    adc a
    rst $30
    call nz, Call_009_707a
    jr nz, jr_009_681c

    inc hl
    xor b
    sbc $df
    add e
    ei
    ret nc

    pop bc
    inc e
    sub c
    ld sp, $ff0f
    rst $38
    rst $38
    db $fc
    add h
    ld a, b
    rst $38
    rst $38
    ld d, h
    inc l
    ld [hl], h
    xor c
    add d
    and b
    adc e
    rst $38
    rst $38
    sub [hl]
    sbc h

jr_009_68a3:
    adc b
    jr nz, @-$79

    dec sp
    rst $38
    ei
    ld a, a
    ld a, a
    cp $47
    or b
    ret nz

    sbc e
    jr nc, jr_009_6903

    scf
    rst $38
    cp $1e
    ld b, l
    cp $17
    db $fd
    ld de, $5a6a
    dec hl
    dec h
    ld l, [hl]
    inc e
    rra
    rst $30
    call nz, Call_000_13a3
    add sp, -$55
    and $28
    ld b, h
    ld a, [hl]
    cp $92
    ld hl, sp+$3e
    ld c, e
    sub h
    cp a
    or l
    cp $6d
    ld e, a
    db $ec
    ld c, e
    ldh a, [$31]
    rra
    ld [$5591], a
    dec bc
    ld a, d
    ld h, d
    add h
    ld b, l
    ld d, [hl]
    ld d, h
    ld d, h
    dec c
    rst $38
    ld b, c
    dec hl
    ld b, c
    inc de
    ld a, [de]
    ld l, b
    cp [hl]
    rst $38
    sbc b
    jp nz, $c48c

    ld a, a
    rst $20
    dec de
    dec c
    pop hl
    ld d, [hl]
    ld b, h
    sub l
    inc de
    cp $ff
    cp $36
    and a

jr_009_6903:
    inc d
    ld c, a
    sub b
    adc a
    sub l
    push af
    rst $38
    rst $38
    db $e3
    ld e, [hl]
    sbc d
    or b
    jp z, $43a4

    xor $5b
    rst $38
    db $fd
    call nc, $f945
    sbc h
    sub h
    call nz, Call_009_6844
    ld b, h
    push de
    ld [de], a
    sbc b
    dec hl
    ld sp, hl
    add $96
    call nz, $22c4
    jp nz, Jump_009_6384

jr_009_692c:
    reti


    push bc
    inc b
    ld [hl-], a
    ld de, $4870
    daa
    inc b
    ld de, $83c4
    inc b
    ld a, b
    ret nz

    ld b, h
    cp b
    rst $10
    rst $38
    call nc, Call_009_7de2
    add sp, -$46
    scf
    ld d, b
    or [hl]
    add hl, sp
    rra
    ld e, a
    or a
    adc $4f
    ld a, [de]
    pop af
    and l
    jr nc, jr_009_69ac

    jr nc, @+$44

    ld h, $22
    dec b
    inc hl
    db $fc
    call Call_000_3342
    cp l
    ld e, b
    jp nc, $e004

    ld [hl], e
    ld e, d
    ld [$ecd6], sp
    jp c, Jump_009_4a81

    ld h, l
    adc d
    ld d, e
    daa
    xor h
    ld a, [hl+]
    ld h, e
    rra
    ld a, [de]
    jr nc, jr_009_692c

    and l
    ld a, [bc]
    ld d, l
    rrca
    ld a, c
    ld c, l
    db $dd
    ld [$ea17], sp
    db $dd
    ld c, h
    sub c
    ld h, c
    ld [hl], b
    ld e, b
    cp d
    di
    ld a, [hl-]
    ld a, [hl+]
    and e
    pop de
    sbc h
    ld l, b
    ld b, h
    rst $00
    inc l
    ld a, c
    ld l, b
    ld h, $5a
    ld d, d
    ld h, [hl]
    xor $9a
    ld e, d
    ld b, [hl]
    add hl, bc
    ld c, [hl]
    jp nc, $a498

    push bc
    ldh [$be], a
    cp a
    and $2c
    ld l, c
    xor l
    ld d, l
    ld b, [hl]
    ld l, c
    sbc e
    ei
    db $fc

jr_009_69ac:
    ld [de], a
    ld h, h
    sbc b
    cp a
    rst $28
    ld [$9f39], a
    ld [bc], a
    xor a
    rst $18
    pop de
    ld a, [bc]
    ld l, l
    ret nz

    or h
    inc [hl]
    ld c, l
    dec c
    sbc c
    ld hl, sp+$21
    db $e3
    ld l, d
    db $f4
    xor c
    xor [hl]

jr_009_69c7:
    add hl, de
    ld d, $1d
    rla
    jp c, Jump_000_1767

    ld e, c
    sbc h
    ld a, h
    jr nc, jr_009_6a28

    or h
    ld d, l
    ld c, a
    add hl, bc
    add e
    and a
    push hl
    dec b
    ld d, l
    jr c, jr_009_6a33

    rst $30
    xor a
    inc hl
    ld sp, hl
    rra
    db $fd
    inc [hl]
    ld a, d
    adc b
    push af
    ld c, b
    sub l
    ld a, [bc]
    sbc a
    db $fd
    ld sp, $9ea2
    ld a, [bc]
    cp a
    rst $38
    call nc, $a3aa
    dec b
    ld hl, $7be3
    add c
    ld b, l
    ld d, h
    jp nz, $34fe

    ld d, l
    ld d, [hl]
    ld a, [hl-]
    ld e, [hl]
    sub $be
    xor e
    db $f4
    ld de, $345a
    ld d, [hl]
    ldh a, [$82]
    xor b
    add [hl]
    xor [hl]
    cp l
    ld sp, $7f55
    or a
    ldh [$bf], a
    ld [hl+], a
    ld d, [hl]
    daa
    jr nc, jr_009_69c7

    sbc e
    inc c
    dec hl
    rst $00
    push af
    ld d, l
    ld e, d
    xor b
    jp nz, Jump_009_6adc

jr_009_6a28:
    dec l
    adc b
    xor d
    jp c, Jump_000_3a46

    inc de
    inc d
    sbc b
    ld d, b
    sub e

jr_009_6a33:
    ld h, l
    ld a, [hl+]
    dec b
    ld b, l
    ld d, l
    xor b
    pop de
    ld c, b
    ld h, b
    ldh [$c1], a
    ld l, d
    cp e
    xor c
    ld a, [de]
    inc d
    db $db
    pop af
    ld h, c
    or h
    ld h, l
    ld [hl+], a
    ld b, l
    adc h
    xor b
    ld l, d

Jump_009_6a4d:
    and l
    ld a, [hl+]
    ret nc

    ld a, [c]
    xor b
    jp nc, Jump_009_7f88

    adc h
    ld l, a
    adc [hl]
    dec [hl]
    ld e, [hl]
    inc a
    ld c, d
    adc a
    ld a, [bc]
    ld l, b
    sub b
    sbc [hl]
    inc de
    ld [bc], a
    dec d
    ld b, $08
    inc h
    and a
    ld a, [bc]
    inc c
    inc c
    add h
    ld b, d
    xor [hl]
    dec e
    ld e, b
    ld b, a
    dec de
    pop bc
    jp c, Jump_009_51b5

    ld [de], a
    ld de, $4ba4
    push bc
    add $10
    add hl, hl
    jr nc, jr_009_6ac6

    db $10
    ccf
    inc e
    ld l, a
    and e
    ld a, d
    ld h, e
    inc b
    ld l, d
    sub d
    rst $38
    sub l
    and a
    ld c, $c0
    pop bc
    inc h
    ld d, b
    ld a, b
    inc hl
    ld a, h
    ld l, b
    add d
    scf
    add d
    ld e, a
    cp $14
    and c
    sub [hl]
    sub b
    ret nz

    ret z

    ld hl, $8460
    ld b, l

Jump_009_6aa5:
    ld d, h
    cp a
    add [hl]
    ld d, e
    ld a, l
    ld h, b
    pop af
    inc c
    and c
    ld h, l
    ld a, [$97c3]
    ld h, $be
    sbc b
    ld b, b
    ld sp, hl
    add hl, sp
    set 7, c
    ld c, [hl]
    rst $38
    and b
    db $fc
    ld l, b
    xor d
    cp e
    rst $38
    ld a, [hl+]
    push de
    db $e4
    add hl, sp

jr_009_6ac6:
    adc h
    sub c
    jp $d678


    ld [hl-], a
    ld d, l
    rst $28
    add $2a
    inc l
    cpl
    dec d
    inc hl
    dec h
    ld d, h
    ld l, e
    sub b
    cp l
    jr jr_009_6b35

    sbc h

Jump_009_6adc:
    ld [hl], b
    dec hl
    inc c
    ld l, c
    inc e
    sub e
    ld h, a
    push bc
    nop
    ld b, h
    cp [hl]
    dec l
    ld e, a
    rst $38
    rst $10
    call nc, $eadd
    dec b
    ld d, l
    xor a
    rst $38
    jr c, jr_009_6b62

    and b
    xor a
    ld e, d
    di
    add d
    adc b
    ld d, d
    ld l, e
    call nc, $f8d6
    ld e, [hl]
    ld [hl-], a
    and e
    db $d3
    or h
    ldh a, [$28]
    ld a, [c]
    ld e, h
    and $bf
    push de
    db $e3
    or d
    and e
    ld [$c527], a
    and e
    ld a, [bc]
    cp b
    ld l, $09
    cp d
    ld b, d
    and h
    or h

jr_009_6b1a:
    or $a7
    rlca
    ld [de], a
    adc h
    ld [$9a53], sp
    xor a
    dec d
    ld b, h
    ld d, h
    add hl, bc
    pop bc
    db $10
    sbc [hl]
    ld [bc], a
    ld h, b
    and a
    ld d, d
    and c
    ld b, a
    ld e, l
    jr jr_009_6b1a

    ld [hl-], a
    ld b, d

jr_009_6b35:
    ld b, e
    sbc l
    ld [hl], b
    ld e, c
    ld hl, sp+$40
    ld [hl], a
    cp d
    sub [hl]
    ld sp, hl
    ld c, h
    inc d
    db $ec
    call nc, $0ab9
    ldh [rPCM12], a
    dec b
    ld h, $d0
    ld [hl], h
    rst $20
    sbc d
    rst $38
    xor a
    ldh [rLYC], a
    ld a, a
    and $82
    ret


    ld d, h
    ld [c], a
    ld a, b
    ld h, a
    sbc a
    add sp, $77
    xor a
    or [hl]
    add hl, bc
    ld h, b
    ld a, a
    ld c, h

jr_009_6b62:
    xor $54

jr_009_6b64:
    ld e, h
    adc l
    ld a, [bc]
    rst $38
    ld a, [$2159]
    ld c, c
    ld a, [$4ba3]
    ld [hl], b
    ld h, d
    ld a, h
    rra
    ld hl, sp-$54
    add h
    dec a
    ld [hl+], a
    add sp, $19
    scf
    reti


    ld d, d
    sbc c
    ld [hl-], a
    ld e, b
    rla
    ld h, b
    cp d
    xor h
    jr jr_009_6b64

    adc b
    adc d
    add c
    and a
    ret


    ld l, [hl]
    sub l
    db $e4
    xor d
    ld h, e
    ld c, c
    jp c, $ad4c

    rst $38
    ld a, [$af22]
    ld hl, sp-$7b
    ld b, d
    ld sp, $297e
    ld c, b
    sub [hl]
    ld a, [de]
    jr c, @+$6c

    ldh a, [$93]
    rla
    pop hl
    ld l, d
    add c
    dec h
    and c
    ld h, d
    dec d
    ld [hl-], a
    ld d, l
    ld b, d
    ld e, b
    ld [de], a
    rra
    add c
    ld [$6194], sp
    add d
    dec l
    ret z

    sub h
    xor b
    sbc $d6
    add d
    adc l
    ld d, h
    ld de, $644c
    adc c
    ld d, l
    dec d
    ld a, [hl+]
    and d
    xor c
    ld h, e
    inc a
    ld d, c
    ld d, d
    ld d, [hl]
    ld d, $d5
    push de
    ld [$5512], sp
    ld e, a
    ld e, b
    pop bc
    inc sp
    ld c, b
    ld d, [hl]
    and a
    ld hl, sp+$60
    ld h, e
    rlca
    add sp, -$7a
    dec b
    ld d, e
    ld a, l
    add hl, hl
    sbc [hl]
    dec h
    ld c, b
    ld c, e
    cp e
    ld a, [hl+]
    ld [hl+], a
    pop bc
    dec h
    inc b
    add l
    call nc, Call_000_1866
    ld d, l
    ld c, h
    sbc [hl]
    adc c
    ld c, d
    ld c, e
    adc b
    xor b
    pop bc
    ld d, b
    add e
    jp hl


    ld [hl+], a
    inc d
    ld e, $15
    ld d, h
    ld a, [hl-]
    and d
    db $d3
    inc d
    cp [hl]
    ld a, [c]
    ld d, d
    ld hl, $df82
    ld [$6a09], a
    ld c, c
    pop hl
    add l
    ld l, b
    adc a
    ld sp, hl
    add [hl]
    and c
    ld h, b
    ld h, b
    xor d
    jr nc, jr_009_6c71

    ret nc

    ld d, l
    ld [hl+], a
    ld h, $29
    ld c, c
    ret z

    jp c, $cd14

    adc d
    and b
    and [hl]
    ld [hl+], a
    ld hl, $6a81
    inc d
    or l
    and c
    adc [hl]
    ld a, d
    ret nc

    sub $94
    dec l
    ld e, d
    ld a, [de]
    and d
    add hl, de
    adc [hl]
    ld a, [hl-]
    ld e, a
    ld b, [hl]
    and h

jr_009_6c42:
    ld sp, $54ae
    jr c, jr_009_6c9f

    ld a, $8e
    ld d, a
    and c
    ld d, c
    sub h
    ld d, d
    ld d, b
    ld h, b
    db $eb
    xor b
    pop af
    add hl, hl
    ld d, d
    sbc b
    dec l
    ld [hl], h
    ldh a, [$a8]
    reti


    ld d, d
    ld h, e
    jp $6453


    ld [c], a
    db $dd
    ld a, [hl-]
    db $10
    ldh [$98], a
    daa
    ld l, [hl]
    add hl, bc
    ld a, b
    pop bc
    pop hl
    or $09
    ld [hl-], a
    ld [hl], a
    ld b, d

jr_009_6c71:
    and h
    ld l, d
    add d
    ld b, a
    add h
    jr nc, jr_009_6c42

    ld h, b
    sbc h
    ld l, d
    add h
    xor [hl]
    inc d
    xor d

jr_009_6c7f:
    jr jr_009_6ce4

    add h
    jr @+$2f

    ld b, h
    add $7a
    sub d
    xor l
    ld hl, sp+$22
    sub d
    adc d
    jp nc, Jump_000_1053

    and [hl]
    push af
    di
    xor [hl]
    jr jr_009_6c7f

    adc h
    ld e, [hl]
    add hl, bc

jr_009_6c99:
    ld a, [bc]
    rra
    sbc h
    dec bc
    ld h, h
    ld d, d

jr_009_6c9f:
    ld [hl-], a
    ld de, $0b51
    rrca
    pop bc
    jp nc, $9bb5

    ld d, h
    ld h, e
    inc bc
    dec bc
    adc d
    or d
    ld a, [hl+]
    db $ec
    ld sp, $4610
    cp e
    add hl, de
    ld [hl-], a
    inc de
    sub e
    pop hl
    dec l
    ld hl, sp+$6d
    sub b
    add d
    add hl, de
    sbc h
    dec hl
    ld c, c
    ld a, h
    ld b, l
    xor [hl]
    jr nc, jr_009_6c99

    add h
    ld [hl], $be
    sbc c
    jp nc, Jump_009_4adb

    ld d, e
    inc de
    db $dd
    jr z, @-$5a

    ldh a, [rVBK]
    ld c, b
    ld c, d
    ld d, l
    or b
    ld b, b
    sbc b
    pop af
    ld c, e
    ld [hl+], a
    add l
    sub e
    dec d
    rla
    ld a, [bc]
    inc d

jr_009_6ce4:
    ld c, [hl]
    ld l, h
    sbc d
    call c, $3b38
    db $10
    sub a
    inc b
    ld d, h
    xor c
    sub l
    ld l, d
    adc [hl]
    sub d

jr_009_6cf3:
    add [hl]
    ld c, $1b
    jr z, jr_009_6d1c

    add hl, sp
    add hl, hl
    jr c, @+$43

    ld d, d
    ld h, [hl]
    adc h
    ld [$c143], sp
    rrca
    db $dd
    ld l, b
    and l
    push bc
    dec [hl]
    sbc $c9
    sub h
    inc [hl]
    ld [$3f35], sp
    ld [de], a
    xor d

jr_009_6d11:
    add hl, de
    and [hl]
    db $10
    ld c, h
    inc d
    xor d
    ld [de], a
    add h
    ld c, h
    db $e3
    adc l

jr_009_6d1c:
    ld [hl+], a
    and h
    and [hl]
    sbc b
    jp z, $0c5d

    inc l
    xor c
    adc d
    db $10
    ld d, c
    ld [hl], h
    add $54
    ld a, [c]
    sbc c
    jr nz, jr_009_6cf3

    ld b, b

jr_009_6d30:
    sub d
    pop af
    add d
    add d
    ld [$9926], sp
    dec d
    ld l, d
    sub c
    jr jr_009_6d11

    ld de, $1769
    cpl
    or c
    add $c9
    sbc d
    sbc b
    ld b, c
    push af
    dec c
    call nc, $9767
    adc l
    or a
    ld b, l
    cpl
    and d
    cp b
    dec l
    dec b
    ld b, b
    db $fc
    ld [hl], d
    ld b, e
    ld a, h
    xor d
    pop bc
    ret c

    ld c, a
    ld [bc], a
    ld c, h
    add e
    pop af
    rst $00
    adc a
    ld d, h
    dec [hl]
    inc h
    ld b, c
    ld [hl], d
    call $84f2
    ld de, $13d1
    inc b
    adc d
    ld d, [hl]
    adc l
    ld a, [hl+]
    ld a, b
    ld l, b
    inc hl
    ld d, [hl]
    ld d, a
    dec l
    ld a, d
    ld a, b
    ld d, c
    cp [hl]
    add hl, de
    ld sp, $a6e2
    cp c
    call nz, $b144
    ld d, e
    dec h
    dec b
    ld l, d
    dec [hl]
    ld a, l
    ld hl, $a942
    ld b, $8d
    ld [$a8da], a
    ld l, [hl]
    ld [hl+], a
    scf
    and b
    adc b
    add c
    ld a, [hl]
    cp $38
    ld a, [hl+]
    ld d, $b0
    xor a
    xor h
    call $dc57
    inc h

jr_009_6da4:
    ldh [$7f], a
    ld a, [$62a0]
    jr jr_009_6d30

    ld [hl], b
    ld a, [c]
    ld l, a
    rst $38
    ld d, [hl]
    daa
    dec bc
    ld a, [de]
    xor b
    jp c, Jump_009_48a9

    rst $18
    call nc, $8e63
    and c
    adc b
    or h
    db $e4
    and [hl]
    dec h
    and c
    sub e
    add [hl]
    and [hl]
    sub b
    ld b, l
    ld h, $4d
    xor a
    adc e
    ld [hl], b
    sub d
    inc de
    ld h, [hl]
    ld l, $e0
    sub a
    ld a, b
    xor $8f
    ld e, $76
    ld h, $d2

jr_009_6dd9:
    ld l, c
    ld b, a

Jump_009_6ddb:
    ld [hl+], a
    ld h, d
    xor d
    xor c
    push bc
    and d
    cp l
    add d
    ld [$1c27], sp
    rrca
    ccf
    ei
    ld a, c
    jp nz, Jump_000_1ff1

    rst $38
    add l
    dec de
    cpl
    db $e3
    and c
    ld c, d
    dec c
    and [hl]
    sub l
    ld e, h
    jr c, @+$52

    ld e, a
    ld hl, sp+$67
    ld l, $ce

jr_009_6dff:
    or h
    ld de, $91c9
    inc c
    xor c
    ret z

    pop af
    cpl
    dec c
    jp hl


    ret nz

    push bc
    ld sp, $6f76
    add hl, de
    ret


    push af
    ld b, b
    ld d, l
    cp [hl]
    ld bc, $4e7f
    sub l
    ld c, d
    ld a, d
    inc b
    jr z, jr_009_6dff

    cp c
    ld e, h
    jr nc, jr_009_6da4

    call nc, $8e70
    ld c, d
    rst $00
    adc c
    add d
    inc e
    sub [hl]
    ld c, [hl]
    inc l
    inc hl
    dec sp
    dec b
    and [hl]
    add hl, sp
    jr z, jr_009_6dd9

    ld b, [hl]
    ld [$e398], sp
    and h
    xor b
    db $10
    add [hl]
    inc b
    sbc b
    db $e3
    xor b
    sub h
    jr nz, jr_009_6e8c

    ld b, l
    add hl, sp
    ld h, c
    adc c
    xor b
    cp b
    ld hl, $158e
    ld [hl+], a
    add hl, hl
    xor c
    dec de
    ld c, [hl]
    add a
    and h
    ld d, a
    dec h
    ld d, d
    inc h
    ldh [$a4], a
    xor d
    ld b, d
    ld h, b
    xor b
    add l
    ld h, h
    sbc $0e
    ld c, d
    adc b
    ld [c], a
    cp a
    ld d, e
    add d
    add [hl]
    pop bc
    inc b
    jp z, $e839

    sbc b
    or h
    ld h, e
    or d
    dec d
    ld a, [de]
    pop bc
    dec sp
    ld h, $bd
    adc b
    adc [hl]
    jp z, Jump_000_0a3e

    ld a, h
    ld [bc], a
    db $10
    daa
    ld d, d
    ld h, b
    sub b
    and c
    rst $00
    inc c
    and b
    add d
    pop de
    ld [$2ebc], sp

jr_009_6e8c:
    ld [hl], c
    and c
    jr nc, jr_009_6ece

    add a
    inc l
    dec bc
    db $f4
    ld [hl], c
    xor b
    rst $38
    db $f4
    ld e, $f4
    ld [hl], e
    or b
    ld a, a
    dec d
    ld hl, sp+$2b
    inc e
    ld [hl], b
    jr z, jr_009_6f14

    ld h, l
    ld e, b
    ld a, a
    pop af
    rst $00
    add [hl]
    jp Jump_000_1d26


    ld a, c
    ret


    ld b, $a6
    cp a
    or h
    ld [hl], b
    jp $90fc


    sbc b
    ld a, [$a171]
    ld l, [hl]
    rl [hl]
    cp a
    add d
    ld [hl], c
    jr nz, @+$01

    rst $38
    and h
    ccf
    rst $38
    jp hl


    jp nz, $ffdf

    ld a, [$f91f]

jr_009_6ece:
    ld [hl], c
    call nz, $ffd3
    pop hl
    ld a, h
    add hl, bc
    rst $10
    di
    ld b, d
    add e
    sbc l
    ret nc

    cp $4b
    dec e
    ld l, h
    ld a, l
    ld d, b
    ld b, h
    or [hl]
    ld d, l
    dec d
    ld c, [hl]
    add a

Jump_009_6ee7:
    xor a
    ld a, [bc]
    jp nc, $8f13

    rst $38

jr_009_6eed:
    ld [hl], h
    add hl, hl
    sub e
    add l
    ld [c], a
    xor $50
    adc [hl]
    dec d
    dec h
    ld d, l
    ld h, $38
    rst $38
    ld [$4ea1], a
    ld a, [hl-]
    ld sp, $1442
    pop hl
    ld d, d
    ld d, a
    ld [c], a
    inc [hl]
    ld [c], a
    ld d, [hl]
    cp h
    pop bc
    jr c, jr_009_6eed

    xor l
    inc d
    ld d, e
    sub c
    ldh [$b5], a
    sub [hl]

jr_009_6f14:
    add hl, bc
    jr c, @-$5f

    jp hl


    ld h, e
    ldh a, [$b9]
    add sp, -$35
    ld d, d
    ld [hl], h
    xor d
    xor b
    db $e4
    ld h, a
    inc e
    ld e, h
    inc sp
    ld h, a
    dec de
    db $fd
    ld d, h
    jr c, jr_009_6f93

    ld a, [de]
    xor a
    ld d, h
    ld c, $19
    push bc
    ld b, h
    xor a
    rlca
    add [hl]
    ld [hl], c
    xor a
    jp nc, $86c1

    sbc h
    ld [hl], h
    scf
    adc [hl]
    ld b, [hl]
    ld [hl], d
    call nc, $752e
    ld [hl+], a
    pop af
    ld sp, hl
    ld e, b
    ld d, l

jr_009_6f49:
    cp h
    or [hl]
    xor d
    sub l
    rst $38
    rst $38
    call nc, $8ce3
    ld a, [de]
    ld e, a
    rst $38
    ld a, e
    ld c, [hl]
    rla
    xor d
    or a
    jp hl


    xor d
    ld l, e
    ld l, b
    pop hl
    cp a
    ld a, [$902d]
    and h
    ld [de], a
    dec d
    ld c, l
    push de
    dec b
    inc b
    ld d, a
    ld c, d
    ld b, d
    adc b
    sub e
    ld h, $ba
    and b
    sub a
    dec d
    adc c
    add l
    sub d
    ld [de], a
    sbc $86
    xor $81
    ld l, e
    ld a, [bc]
    ret z

    ld h, l
    inc b
    call $9a65
    ld b, [hl]
    ld e, b
    ld l, b
    jp nz, Jump_009_52d9

    or [hl]
    add [hl]
    inc c
    ld h, h
    ld [de], a
    jr z, jr_009_6f49

    adc e
    ld b, c

jr_009_6f93:
    ld c, h
    jp hl


    dec e
    ld [hl+], a
    call nc, $d5d6
    dec [hl]
    xor b
    xor b
    ld d, e
    sub d
    add c
    ld l, d
    sub a
    ld e, b
    dec de
    ld c, l
    ld [$ab89], a
    dec d
    ld h, e
    jr @-$49

    dec [hl]
    add c
    add [hl]
    ld [hl+], a
    ld hl, $ac41
    cp e
    push de
    ld [$4b26], a
    ld d, l
    add l
    ld b, c
    dec h
    xor a
    rst $38
    ld a, b
    jp nz, $e89f

    or l
    ld h, $2e
    xor b
    jp hl


    ld b, l
    adc a
    ld d, $8f
    ld l, d
    ld a, c
    sbc d
    xor [hl]
    add e
    xor d
    xor e
    and a
    dec h
    ld e, a
    rst $38
    rst $30
    inc de
    db $76
    and a
    dec c
    ld a, a
    or $10
    or d
    ret


    rra
    inc e
    ld d, c
    ld de, $f887
    ret nz

    db $e4
    ld [hl+], a
    sbc e
    and b
    add d
    ld c, l
    ld [$700f], a
    ld e, a
    jp hl


    and [hl]
    cp $eb
    xor d
    rla
    and h
    ld b, b
    rst $18
    ld a, [$875a]
    di
    rst $38
    rst $08
    ei
    ld hl, sp-$1f
    ld e, a
    and $08
    ld e, e
    db $fd
    ld e, a
    rst $38
    cp a
    xor b
    and h
    ld e, a

Call_009_700e:
    sub [hl]
    rst $38
    ld hl, sp+$3e
    ld e, $f7
    ei
    ld hl, sp+$45
    ld e, [hl]
    ld e, a
    rst $38
    ld [$91ff], a
    pop hl
    cp $63
    ld a, d
    ld b, e
    rst $38
    rst $38
    rst $38
    db $e4
    ei
    ld [hl], c
    sub e
    and h
    db $dd
    db $eb
    db $db
    ld a, [hl]
    add a
    ld hl, sp+$42
    sbc b
    call c, $c142
    rst $38
    db $ec
    ld hl, sp+$6b
    ld b, b
    ld [$3a98], a
    ld c, e
    rst $38
    rst $38
    pop hl
    dec c
    cp $45
    ld a, [hl]
    and d
    pop af
    add a
    ld a, a
    ret c

    ld b, h
    ld d, a
    sub b
    jp $d605


    ld l, c
    inc c
    ld h, e
    ld h, h
    ld sp, $cbe1
    rra
    ld b, d
    ld b, h
    cp l

jr_009_705b:
    add h
    ld [$aa5a], a
    db $e4
    db $e4
    ld [hl], d
    sub h

jr_009_7063:
    ld h, h
    ld [c], a
    ld a, e
    ld d, [hl]
    ldh [$5d], a
    ld a, [hl-]
    xor e
    rst $38
    add hl, sp
    sub l
    ld hl, sp+$20
    adc [hl]
    ld b, [hl]
    adc b
    xor l
    add hl, sp
    and c
    bit 4, e
    sbc d
    ld c, h

Call_009_707a:
    db $10
    ld c, [hl]
    ld a, d
    ld b, c
    ld e, a
    ld d, e
    and e
    rst $38
    cp $4e
    adc e
    rst $38
    and e
    jp hl


    and a
    ret


    xor d
    ld b, d
    and a
    ld c, a
    ld b, c
    add a
    rst $20
    ld [de], a
    ld e, e
    rst $08
    ld sp, hl
    ret


    rst $38
    rst $38
    rst $38
    sbc h
    xor d
    or $df
    rst $20
    dec de
    db $10
    and e
    or a
    sbc h
    rst $38
    db $e3
    ld a, $73
    rst $18
    ld [bc], a
    rra
    dec e
    xor $74
    ret nz

    cp l
    sbc l
    ld d, c
    ld de, $00f5
    ld d, l
    cp l
    call nc, Call_009_5355
    pop bc
    and $aa
    push af
    ld c, [hl]
    sub [hl]
    adc b
    sub b
    ld c, b
    add [hl]
    ld c, [hl]

jr_009_70c4:
    ld h, h
    add $c8
    ld b, e
    cp b
    db $e4
    ld c, l
    ld h, $22
    add d
    jr c, jr_009_7063

    push de
    ld h, h

jr_009_70d2:
    sub h
    db $e3
    adc l
    jr jr_009_705b

    and $8c
    ret c

    ld [hl-], a
    pop de

jr_009_70dc:
    ld c, l
    sbc b
    ret


    adc h
    db $10
    db $dd
    ld [hl], $54
    add $31
    ld c, c
    adc l
    pop hl
    adc h
    ld a, [hl+]
    xor d
    and d
    jr jr_009_70d2

    adc h

Jump_009_70f0:
    dec d
    ld d, d
    ld d, $8e
    ld c, b
    dec d
    xor d
    dec h
    ld l, b
    rst $20
    add sp, -$2e
    ccf
    jr nc, jr_009_70dc

    ld c, d
    and a
    ld [hl], d
    push af
    ld b, h
    push de
    add hl, hl
    or e
    ld d, d
    dec l
    dec c
    ld [hl], l
    ld d, d
    add hl, bc
    inc [hl]
    ld h, [hl]
    sub l
    ld b, h
    inc l
    ld d, $93

Jump_009_7114:
    ld d, h
    and e
    jr jr_009_70c4

    sbc b
    ld b, l
    jp c, $0ab2

    add hl, bc
    adc e
    ld l, c
    adc h
    ld h, l
    inc l
    scf
    jr z, jr_009_716f

    add d
    add hl, bc
    ld d, c
    db $db
    ld [bc], a
    ld [hl], d
    ld a, $70
    ld [hl], b
    ld sp, $f1c0
    ld de, $1129
    ld l, c
    adc d
    ld e, e
    call nz, $f0a2
    ld b, [hl]
    ld a, [hl-]
    ld h, h
    sub b
    pop af
    ld c, c
    inc e
    db $10
    ld sp, $6784
    ld [bc], a
    ld a, [bc]
    xor l
    inc bc
    inc b
    jp nz, Jump_009_4698

    sbc h
    ld e, $aa
    ret nc

    inc l
    ld l, b
    sbc h
    ld d, l
    ld d, l
    ld b, [hl]
    add hl, bc
    ld c, d
    jp nc, $a572

    add hl, hl
    ld [hl], c
    ld sp, $4b6a
    db $10
    or h
    dec c
    ld b, [hl]
    dec d
    inc l
    ld b, d
    ret nc

    ld b, h
    ld b, c
    call nc, Call_009_460f

jr_009_716f:
    ld [hl], c
    add e
    inc de
    add hl, de
    or c
    or d
    ld e, d
    ld c, e
    xor d
    push bc
    rst $00
    inc b
    xor e
    dec d
    dec e
    ld h, b
    ld b, h
    cp l
    ld b, h
    ld d, b
    call nc, $c1e9
    ld e, a
    sub e
    sub e
    inc c
    inc d
    db $10
    add a
    add hl, sp
    ld e, e
    ldh a, [$c8]
    adc [hl]
    ld b, h
    add hl, de
    db $f4
    rst $20
    ld b, d
    ld e, l
    jp nz, $e039

    ld l, d
    db $e4
    ld [$6090], a
    sub e
    xor d
    dec b
    jp nz, Jump_009_513a

    add d
    pop de
    ld b, e
    ld c, [hl]
    jr c, @+$53

    ld b, d
    ldh a, [$f3]
    sbc d
    inc c
    ld l, b
    dec hl
    ld a, [hl-]
    db $e3
    ld [c], a
    and [hl]
    jp hl


    ld a, [bc]
    db $10
    ld b, b
    add d
    ld [hl], d
    ld hl, $372b
    and a
    inc d
    ld a, [bc]
    dec de
    rst $18
    ei

Jump_009_71c6:
    sbc e
    ld b, c
    inc b
    pop hl
    rst $18
    ld l, [hl]
    ld sp, hl
    cp h
    inc de
    ccf
    db $fd
    rst $28
    ld h, $d2
    db $10
    ld a, h
    rst $38
    ret


    ld de, $43aa
    ld e, a
    ei
    ld h, b
    add h
    ld [hl], b
    ld h, b
    add a
    dec sp
    ld a, [c]
    ld [$e826], sp
    ld hl, $ff3f
    or b
    and a
    dec d
    or e
    cp $f5
    ld b, $6f
    inc b
    ld c, $fb
    cp $b6
    ld l, l
    inc b
    db $10
    ld b, c
    cp [hl]
    sbc $f9
    pop bc
    inc c
    db $10
    ld [hl], h
    rst $28
    ld [hl], c
    rl c
    inc bc
    inc b
    ld de, $a0f0
    ld [hl], a
    cp h
    or $cd
    ld e, b
    pop af
    sbc [hl]
    ld [hl], $53
    push bc
    ld a, h
    ld d, e
    ld b, l
    inc a
    ld b, [hl]
    cp b
    inc hl
    ld b, l
    ld c, l
    sub h
    db $e4
    ld e, e
    inc b
    ldh [rKEY1], a
    sbc a
    rst $30
    push af
    ld d, l
    ld c, c
    ld d, a
    jr c, jr_009_7251

    jr c, jr_009_728f

    adc b
    and [hl]
    xor e
    db $e4
    push bc
    jr c, jr_009_7259

    ret


    sbc b
    sbc $15
    ld d, c
    ld b, [hl]
    ld a, [hl-]
    ld e, $81
    dec h
    ld a, a
    pop bc
    ld h, d
    ld [de], a
    ldh [$a3], a
    ld a, d
    ld c, b
    ld l, l
    ld l, b
    ld hl, $5aa9
    daa
    ld hl, $b551
    ld c, h

jr_009_7251:
    ld a, [hl+]
    adc b
    sub l
    ld a, [bc]
    and b
    ld b, [hl]
    add hl, de
    add [hl]

jr_009_7259:
    ld [hl-], a
    sub l
    ld c, b
    ld b, c
    ld c, h
    ld a, [hl+]
    adc c
    adc c
    ld a, c
    add hl, hl
    rra
    adc e
    ld e, b
    ld d, l
    ld c, b
    add c
    ld c, h
    ld a, [hl+]
    jp nc, Jump_009_4329

    call nc, $c984
    ld [$47d1], sp
    adc h
    jr z, jr_009_728c

    or [hl]
    or $a1
    ld b, c
    ld c, b
    push bc
    sbc $48
    ld d, l
    ld [hl], h
    ld e, $8c
    ld d, [hl]
    ld a, l
    ld a, [$56ac]
    ld b, $26
    ld h, $08

jr_009_728c:
    dec h
    ld d, h
    ld l, b

jr_009_728f:
    jp nc, $a37d

    scf
    dec c
    ld [hl+], a
    add hl, hl
    jr jr_009_72ae

    ld [hl+], a
    adc c
    ld c, d
    ld a, a
    adc h
    and b
    ld b, c
    sbc b
    call $9f22
    add sp, -$69
    add hl, hl
    ld a, b
    ret


    or $99
    dec h
    add hl, bc
    ld l, b
    sbc c

jr_009_72ae:
    cp c
    ld e, l
    push af
    dec b
    dec b
    call z, $eb17
    xor c
    sbc b
    sub h
    rst $08
    pop de
    ld d, [hl]
    dec h
    push de
    dec l
    ld a, [$da07]
    add c
    ld b, d
    dec e
    ld [hl-], a
    and h
    dec hl
    ret


    ld b, d
    jr nc, @+$70

    ld hl, $68e4
    inc d
    add h
    ld l, d
    ld [hl], $c8
    ld d, e
    rlca
    jr jr_009_732f

    adc b
    cp b
    pop bc
    ld a, [hl+]
    call z, $a812
    sbc a
    add d
    adc b
    ld a, [hl]
    adc b
    xor h
    add l
    ld a, [hl+]
    sbc a
    db $ec
    adc b
    ld [de], a
    ld a, [hl+]
    xor d
    xor d
    sbc b
    adc d
    dec l
    ld d, e
    ld a, [hl+]
    add hl, bc
    sub $25

jr_009_72f6:
    add c
    ld h, e
    or d
    ld hl, $e221
    xor c
    ld d, h
    ld a, [de]
    inc a
    dec b
    ldh [$78], a
    jp c, $173c

    and c
    ld h, e
    pop de
    adc a
    dec hl
    ld a, d
    add hl, de
    or e
    sbc [hl]
    dec sp
    ld b, [hl]
    xor a
    ld e, $2b
    ld b, [hl]
    adc $9e
    ld a, [de]
    inc de
    ld b, c
    add hl, de
    cp c
    ld [c], a
    inc a
    add d
    ld l, l
    ld [bc], a
    ld l, [hl]
    xor h
    add hl, de
    adc d
    ld c, e
    add d
    ld [hl], b
    ld l, c
    jp $b522


    ld d, d
    and b
    cp e

jr_009_732f:
    ld d, $82
    ld [hl], b
    ld b, [hl]
    adc h
    ld l, [hl]
    ret nc

    ld hl, $700a
    ld h, $ac
    ld h, b
    cp [hl]
    ld a, [hl+]
    inc d
    ld c, l
    ld hl, $1841
    and h
    ld b, e
    inc h
    inc hl
    xor c
    ld e, a
    ld b, b
    db $dd
    ld sp, $a10a
    ld a, b
    and [hl]
    ld d, $3c
    adc d
    add h
    ld b, [hl]
    push bc
    cp h
    ld b, e
    ld [de], a
    jp c, $10cb

    sbc b
    ld e, b
    rst $10
    sub [hl]
    pop bc
    ld b, h
    and b
    add e
    ld a, [bc]
    rst $38

jr_009_7366:
    ld c, $0e
    ret


    add hl, bc
    add l
    adc [hl]
    and e
    jr nz, jr_009_72f6

    sub [hl]
    sbc $2e
    add hl, bc
    add h
    ld b, h
    and h
    ld b, [hl]
    inc d
    ld a, [hl+]
    ld hl, sp+$40
    xor h

jr_009_737c:
    ld b, e
    ld a, [$300c]
    add hl, sp
    inc l
    cp d
    db $10
    inc [hl]
    ld h, e
    add e
    add h
    or h
    dec d
    jr nz, jr_009_737c

    inc hl
    ld [bc], a
    inc [hl]
    inc d
    ld a, $a4
    ld h, c
    ld a, [de]
    ld a, h
    pop de
    ld de, $382b
    ld c, c
    dec e
    dec d
    ld a, [bc]
    ret z

    ld b, c
    ld [de], a
    sub h
    or e
    ld [de], a
    push bc
    cp h
    add a
    ld a, [de]
    ld d, b
    ccf
    ld a, d
    ld d, h
    ld c, e
    or c
    ld c, c
    ld l, e
    inc a
    ld d, l
    jr jr_009_7366

    dec b
    ld c, c
    ld c, $56
    sub h
    push bc
    add sp, -$3a
    scf
    xor e
    ld c, e
    ld [bc], a
    ld c, [hl]
    ret nc

    ld h, h
    ld a, [hl+]
    ld b, d
    jp z, $e34b

    ld b, b
    sub e
    xor e
    xor d
    jr jr_009_7409

    ld [$5271], sp
    ld sp, $0c0c
    ld c, e
    jr nc, @-$3d

    dec h
    dec [hl]
    db $10
    adc l
    rla
    sub [hl]
    sub d
    ldh a, [rNR43]
    call z, $c034
    sub [hl]
    add d
    ld c, d
    ret nz

    add h
    ld c, [hl]
    xor d
    or [hl]
    ld [$0d71], sp
    pop de
    inc e
    adc d
    ld [$ab24], sp
    pop hl
    ld a, [bc]
    ld c, e
    sbc d
    ld e, h
    ld b, e
    ld b, l
    add hl, hl
    and h
    ld [de], a
    ld a, [de]
    ld b, e
    ld [bc], a
    call c, $4175
    inc c
    ld b, d
    inc c
    ld d, h
    dec c
    rlca

jr_009_7409:
    ld e, $13
    jr nc, jr_009_7459

    ld a, d
    dec de
    db $10
    sbc [hl]
    add d
    sub l
    ld e, $20
    ld b, h
    xor l
    sub c
    ld a, l
    ld sp, $cb5f
    ld d, h
    db $10
    db $f4
    dec h
    db $fd
    ld e, a
    ld [$fbc7], sp
    add $06
    adc b
    sbc d
    add hl, hl
    adc e
    sbc d
    ld a, b
    ld [hl+], a
    call nc, $2884
    or a
    push af
    ld b, c
    adc h
    ld d, l
    adc h
    rst $28
    and l
    and b
    ld c, b
    sub d
    inc h
    sbc $96
    xor l
    inc d
    xor b
    db $e3
    ld c, b
    push af
    ld [$a518], sp
    ld c, l
    ld d, d
    cpl
    jr jr_009_74a5

    jr z, @-$1d

    sbc a
    ld c, c
    ld e, d
    dec b
    ld d, h
    pop hl
    ld a, [c]
    sbc l
    ld l, d
    and e

jr_009_7459:
    add d
    ld d, c
    ld a, [hl]
    sub l
    rst $38
    jr c, @-$54

    ld d, a
    db $eb
    ld d, l
    add hl, sp
    xor a
    db $fd
    xor d
    add hl, sp
    ld l, d
    inc a
    jp hl


    add d
    ld [hl], b
    ld h, $a8
    jp c, $833a

    and e
    ld [de], a
    and [hl]
    ld a, [bc]
    ld b, l
    pop af
    rla
    db $10
    and c
    cp $65
    ld l, d
    add d
    rst $38
    and b
    rst $38
    add a
    dec de
    ld e, a
    rst $38
    ei
    ld a, [hl]
    jr z, jr_009_74b0

    dec d
    db $eb
    db $ec
    ccf
    ld a, [$c9ba]
    and l
    ld e, b
    and c
    ld a, a
    rst $38
    rst $38
    sbc d
    ld d, a
    db $ed

Jump_009_749a:
    ccf
    push af
    ld e, c
    pop bc
    dec c
    ld a, a
    ldh a, [$71]
    ret nc

    rst $38
    dec c

jr_009_74a5:
    sbc l
    db $10
    ld [hl], c
    dec hl
    push de
    inc e
    ld d, b
    ld b, d
    jp nc, $e7bf

jr_009_74b0:
    ld a, [hl+]
    rrca
    rst $38
    ld d, h
    ld [hl], e
    ld d, h
    ld b, h
    ld a, h
    ld c, b
    ld h, [hl]
    cp e
    ld a, [de]
    inc a
    call nc, $f284
    pop de
    ld d, e
    bit 1, e
    ld c, [hl]
    push bc
    ld d, h
    pop bc
    ld hl, $2f3c
    cp a
    ld d, l
    jr nc, @+$43

    ld a, [hl-]
    ld [c], a
    inc h
    ld [hl], b
    adc d
    ld d, e
    ret nz

    adc b
    ld a, d
    ld [hl+], a
    ld d, $aa

jr_009_74db:
    ld h, h
    db $eb
    ld c, c
    add d
    ld [$5618], sp
    add hl, de
    sub e
    or d
    ld b, $a4
    sbc b
    jp nz, $e864

    add c
    ld e, d
    inc d
    ld l, d
    adc h
    ld h, $4e
    ld l, d
    inc sp
    add [hl]
    xor d
    xor d
    add a
    add hl, sp
    ld l, c
    ld d, c
    or h
    ld h, c
    adc h
    sbc b
    and $a1
    ld d, l
    ld c, b
    cp b
    push bc
    adc [hl]

jr_009_7506:
    ld [hl], l
    and c
    xor b
    ld d, d
    ld [de], a
    ret c

    db $eb
    ld d, [hl]

jr_009_750e:
    ld [$9221], sp
    ret c

    ld [$22a6], a
    ld [hl+], a
    inc hl
    add sp, -$13
    cp b
    and l
    db $d3
    inc b
    inc de
    xor l
    ld d, l
    xor b
    sub h
    add h

jr_009_7523:
    di
    ld d, d
    db $d3
    jp z, Jump_009_4f45

    dec [hl]
    dec a
    inc d
    ld h, e
    adc $a3
    adc h
    db $ed
    sub e
    adc $c7
    inc a
    call z, $f288
    ldh a, [$88]
    adc $d5
    ld c, h
    or c
    ret z

    adc [hl]
    adc $42
    ld h, h
    dec d
    add [hl]
    dec hl
    dec sp
    jr nc, jr_009_74db

    jr nz, jr_009_758e

    dec h
    ld [hl+], a
    dec sp
    ld h, b
    ld d, l
    ld d, b
    ld h, l
    ld h, h
    ld sp, $c94e
    add hl, bc
    inc c
    sbc d
    ld h, h
    xor c
    ld a, [hl-]
    ret c

    sbc h
    sbc b
    jr c, jr_009_7523

    ld c, [hl]
    xor a
    ld h, d
    ld sp, $cc5a
    ld h, h
    rst $20
    ldh [$82], a
    add [hl]
    dec h
    dec h
    ld d, l
    ld b, e
    add hl, sp
    rst $30
    inc c
    ld a, [hl+]
    ld d, $21
    adc c
    ld a, b
    rst $20
    ld b, e
    and h
    jr jr_009_7506

    jr nc, jr_009_75f7

    jp hl


    jp $8850


    pop de
    add d
    rla
    adc [hl]
    xor h
    jr c, jr_009_750e

    ld a, [de]
    add hl, bc
    add hl, de
    and e

jr_009_758e:
    xor l
    add c
    sub a
    dec h
    add l
    dec sp
    ret nc

    ld h, b
    ld d, c
    cp e
    ld sp, $b9ce
    ldh a, [$a2]
    and h
    inc h
    sbc b
    ld a, [c]
    inc h
    ld [hl+], a
    inc sp
    jp z, $8898

    ld a, [c]
    push hl
    inc b
    di
    ld h, l
    inc a
    ld hl, sp-$1c
    ld b, h
    cp e
    inc de
    xor c
    ld d, l
    ld c, [hl]
    dec [hl]
    ld l, d
    rst $20
    ld c, [hl]
    ld e, d
    sub l
    ld [hl], b
    add d
    add hl, sp
    ld l, l
    inc hl
    ld a, [bc]
    and l
    ld c, [hl]
    ld c, e
    ld d, d
    di
    and d
    cp l
    ld c, b
    adc $b8
    ld a, [hl-]
    dec sp
    ld d, a
    inc d
    db $ec
    add d
    dec sp
    sub h
    adc h
    xor $9c
    db $eb
    ld d, l
    db $e3
    or d
    adc a
    adc b
    rst $18
    ld [hl+], a
    xor d
    call nc, $c9e9
    ld b, [hl]
    ld e, $c7
    inc h
    and [hl]
    ld d, h
    ld [hl], d
    or h

Call_009_75ea:
    and a
    ld h, h
    ld c, l
    sbc [hl]
    dec b
    and a
    ld a, d
    ld de, $47e0
    cp a
    ld a, [bc]
    db $76

jr_009_75f7:
    or h
    ld a, l
    jr nc, jr_009_7672

    or [hl]
    ld d, l
    dec b
    rst $38
    db $e3
    ret


    ld a, a
    rst $38
    or [hl]
    xor b
    ld a, [c]
    ld d, l
    adc c
    sub h
    xor l
    ld d, l
    ld c, a
    add hl, sp
    daa
    xor d
    cp a
    sub h
    add l
    rst $38
    call nc, Call_009_54e0
    or l
    ld c, e
    and l
    ld l, d
    ld [hl+], a
    cp d
    ld a, [hl+]
    and h
    db $dd
    ld [hl], l
    ld e, l
    ld c, c
    ld c, [hl]
    add hl, bc
    jr nc, jr_009_7674

    dec hl
    ld [$82f5], a
    ld sp, $955a
    inc d
    and h
    ld l, c
    ld [hl], $a3
    dec l
    adc e
    ld b, l
    xor d
    or c
    ld b, c
    ld h, c
    ld d, b
    or h
    adc $82
    scf
    ld l, b
    jr jr_009_7656

    ld l, $25
    ld b, l
    db $e3
    dec h
    ld h, c
    adc h

Call_009_7648:
    sub $59
    and d
    inc hl
    ld l, $22
    dec [hl]
    db $ec
    adc c
    ld c, e
    ret nc

    and h
    db $e4
    ld b, d

jr_009_7656:
    add hl, hl
    ld a, [$a2a0]
    ld [hl-], a
    inc hl
    add hl, bc
    ld b, d
    adc d
    sub l
    cpl
    adc h
    dec d
    adc [hl]
    ld [$2a3d], sp
    cp l
    ld e, d
    ld [hl+], a
    daa
    cp h
    pop bc
    add hl, hl
    ld d, d
    ld [hl+], a
    ret nc

    ld c, d

jr_009_7672:
    ret z

    ld c, b

jr_009_7674:
    adc d
    ld c, h
    ld [hl+], a
    rst $10
    rst $38
    db $d3
    ld b, [hl]
    ld a, [hl-]
    ld h, e
    dec b
    ld h, d
    ld h, l
    ld [hl-], a
    ld b, [hl]
    db $e4
    jp nz, $9518

    add hl, hl
    ld a, [hl-]
    rst $28
    inc c
    ld d, d
    ld e, b
    ld d, b
    sub [hl]
    inc d
    sbc e
    jp nc, $2d15

    ld b, l

jr_009_7694:
    adc $05
    dec d
    dec h
    ld l, b
    ld [hl+], a
    cpl
    adc c
    ld e, l
    ld d, a
    ld d, b
    push de
    ld c, d
    ld h, d
    jr nz, jr_009_7694

    ld l, [hl]
    adc b
    ld d, e
    ld [$bfc6], sp
    xor b
    ld a, [hl+]
    ld [hl+], a
    sbc d
    ret z

    add e
    add sp, -$3a
    xor d
    jp hl


    ld c, l
    ld h, [hl]
    ld h, $21
    ld e, a
    ei
    ld [hl], e
    ld d, [hl]
    or a
    call nc, $81d6
    sub [hl]
    ld hl, $aa22
    ld [hl+], a
    xor d
    sub h
    ld d, d
    inc a
    adc d
    adc h
    call nc, $a888
    push hl
    sbc d
    ld [$362d], sp
    ld c, h
    db $d3
    ld d, l
    ld [hl-], a
    sub d
    xor b
    pop de
    dec b
    ld hl, $d538
    add hl, hl
    ld h, l
    cp a
    db $e3
    dec [hl]
    ld d, $a2
    ld h, e
    add d
    cp a
    ld a, [$8953]
    jp Jump_009_5872


    db $eb
    or e
    adc l
    push de
    jp nz, $e33b

    ld a, l
    or d
    add hl, hl
    ld [de], a
    xor [hl]
    ld a, c
    ld l, $10
    pop bc
    ret nz

    xor d
    sbc [hl]
    ld b, e
    dec l
    ld h, h
    ld e, a
    ld h, c
    inc d
    sbc [hl]
    inc d
    db $10
    ld sp, $1153
    push de
    ld [bc], a
    cp b
    ld h, $59
    push bc
    adc h
    ld h, c
    ld [bc], a
    ld [$2570], sp
    ld d, [hl]
    sub d
    or l
    ld c, d
    sbc e
    jp hl


    ld l, a
    inc h
    ld b, e
    ld c, c
    ld a, [bc]
    adc h
    ld sp, $708c
    ld b, c
    ld l, $12
    adc $09
    dec d
    jr z, @-$5d

    ld a, [$3198]
    jp Jump_000_0513


    add d
    add hl, bc
    ld a, b
    ccf
    ld d, l
    jp z, $9052

    sbc d
    jp nz, $85fa

    ld b, h
    dec hl
    ld c, a
    push de
    ld d, d
    push bc
    ld sp, $681c
    xor [hl]
    jr z, @+$5c

    xor e
    cp $f6
    sbc b
    pop bc
    jr c, jr_009_7798

    ld h, $dd
    inc c
    dec c
    dec d
    xor e
    ld b, h
    ld b, l
    ld a, [hl+]
    ld a, [hl-]
    xor [hl]
    ld de, $527a
    sub b
    sbc c
    ld d, b
    sub $44
    ccf
    ld d, h
    sbc e
    ld a, [$2995]
    ld [hl], e
    inc hl
    rlca
    inc b
    adc e
    sbc b
    ld c, c
    ld de, $0d84
    ld [hl+], a
    jp hl


    adc h
    ld de, $0a7d
    ld [de], a
    ld [hl], c

Jump_009_7780:
    or c
    jr nc, jr_009_77e4

    ld b, c
    inc d
    add l
    inc h
    add hl, sp
    jr z, jr_009_77ac

    sbc b
    ld b, [hl]
    inc l
    sbc b
    ld c, c
    adc d
    add l
    adc d
    inc [hl]
    jp $ab16


    sbc b
    pop bc

jr_009_7798:
    ld c, c
    sbc h
    ld d, l
    add [hl]
    ld a, [hl+]
    ld b, l
    add d
    sbc $1b
    or h
    ld [$e2a4], sp
    add h
    sub h
    jp z, Jump_000_239a

    add d
    adc d

jr_009_77ac:
    ccf
    ld b, h
    cp b
    ld b, l
    ld l, b
    ld d, h
    ld l, $15
    ld a, [hl-]
    sub b
    call nz, $efc4
    ld [de], a
    sub d
    add $70
    ld h, h
    call $8754
    cp b
    ld [hl], d
    res 1, l
    ld a, [hl+]
    dec [hl]
    ld [hl], d
    ld a, [de]
    ld l, l
    add [hl]
    sub [hl]
    adc l
    ld b, b
    and d
    db $db
    ld d, h
    adc h
    dec [hl]
    ld [de], a
    sbc h
    ld a, [bc]
    ld c, d
    db $e4
    ld b, e
    ld b, e
    ld b, l
    pop bc
    dec b
    ld a, c
    call nz, Call_000_178a
    pop af
    cp e
    ld d, h

jr_009_77e4:
    sub c
    ld h, e
    or d
    ld l, [hl]
    ret nz

    sub a
    and $b9
    xor h
    add h
    reti


    and e
    add hl, sp
    add d
    ld [hl], b
    ld b, h
    ld [hl+], a
    xor h
    call nz, $8c26
    jr z, @+$26

    pop af

jr_009_77fc:
    pop bc
    ld b, $14
    sbc h
    ret nc

    ret z

    ld e, a
    ld sp, $27d9
    daa
    ld d, h
    ld a, b
    ld de, $44b8
    cp b
    ld d, l
    ld d, l
    ld d, a
    adc $37
    xor l
    xor l
    and b
    adc [hl]
    dec [hl]
    dec d
    dec b
    ld hl, $7b39

jr_009_781c:
    sbc b
    ld d, [hl]
    ld [hl], $7d
    ld e, [hl]
    ld h, c
    jp $6881


    reti


    xor c
    ld b, [hl]
    adc b
    ld h, e
    add d
    and e
    ld c, b
    xor b
    jp nc, $5289

    ld de, $4e49
    ld d, h
    add h
    and h
    rst $20
    ld h, c
    ld l, c
    adc l
    add sp, -$6c
    add a
    ld [hl+], a
    jr c, jr_009_7896

    dec b
    ld a, [hl+]
    and c
    ld c, [hl]
    ld l, $21
    add hl, bc
    ld b, d
    push de
    scf
    ld d, b
    ld e, c
    db $dd
    rst $28
    xor l
    di
    ld e, d
    jr nc, jr_009_77fc

    cp d

Call_009_7855:
    inc a
    ld e, l
    jp nz, $a799

    inc l
    jr c, @+$26

    ld sp, $83cf
    and b
    jp nz, $1e9d

    db $10
    inc l
    ld [hl], c
    and l
    ld b, c
    jr nc, jr_009_781c

jr_009_786b:
    or a
    add e
    dec d
    inc b
    dec c
    inc e
    ld d, c
    ld sp, $ce51
    add h
    jr z, @+$22

    sbc h
    sub c
    jr z, jr_009_78a4

    daa
    inc l
    ld c, h
    ld [$64c7], sp
    ld c, $43
    inc e
    ld c, c
    ld a, d
    ld d, l
    xor c
    cp h
    xor d
    jp Jump_009_53d0


    pop af
    xor [hl]
    sbc b
    dec a
    rra
    jr jr_009_790c

    cp d

jr_009_7896:
    ld d, h
    and $4e
    push de
    ld l, [hl]
    jp nc, Jump_000_2155

    call nc, $3498
    ld [$07ab], a

jr_009_78a4:
    pop bc
    cp [hl]
    ld sp, hl
    ld a, [de]
    or l
    adc [hl]
    or a
    ld l, a
    rra
    ld h, c
    xor b
    add h
    ld l, l
    ld [$2a14], sp
    inc [hl]
    ld [hl], l
    ld e, a
    pop af
    ld [hl], l
    ld [hl], b
    ld b, d
    ld l, d
    ld l, $9e

jr_009_78be:
    ld d, c
    xor a
    dec [hl]
    jp c, $8889

    xor l
    add d
    adc b
    ld c, b
    adc b
    ld b, c
    and e
    add l
    ret nc

    ld d, l
    ld d, c
    ld d, d
    ld l, b
    ld h, h
    dec e
    ld b, l
    ld hl, $c904
    ld d, d
    rst $28
    ld h, b
    ld l, d
    rst $30
    ld b, l
    ld l, $05
    ld c, b
    ld c, b
    add d
    xor d
    ld e, c
    add d
    adc h
    ld l, [hl]
    jr nc, jr_009_786b

    add c
    ld l, d
    xor d
    dec d
    ld b, c
    ld b, d
    inc [hl]
    ld [$1a39], a
    ld sp, $2641
    ld d, e
    ld a, [hl-]
    ld e, $38
    and h
    jr nz, jr_009_78be

    ei
    sub b
    ld d, b
    adc d
    and h
    ld e, d
    xor d
    adc [hl]
    ld a, [hl-]
    dec de
    ld [$1024], sp
    ld b, e
    inc b

jr_009_790c:
    sbc b
    or h
    jp hl


    ld d, e
    ld d, $08
    jr nz, @-$72

    ld [$ba53], a
    inc b
    inc d
    and h
    inc de
    ret


    ld a, h
    ld h, l
    ld [$5320], sp
    ret


    ld d, b
    adc d
    xor b
    inc hl
    ld c, [hl]
    ld h, e
    and [hl]
    add d
    ld hl, $93aa
    inc a
    jr z, @-$0f

    xor e
    call z, $9610
    ld a, [de]
    add hl, hl
    and [hl]
    ld d, l
    ld a, b
    push de
    ld d, h
    ld a, [de]
    add hl, de
    ld hl, $e364
    xor l
    adc [hl]
    ld c, $a3
    inc h
    push de
    ld c, b
    sub [hl]
    adc h
    ld d, l
    ld d, l
    and $ff
    dec l
    adc e
    ld c, d
    ld l, b
    ld h, d
    ld e, b
    adc e
    ld l, e
    ld [$18a4], a
    daa
    ld d, d
    ld h, d
    ld l, h
    ld [hl+], a
    sub d
    db $e4
    ld l, c
    ld c, c
    add [hl]
    push de
    ld d, b
    ld [hl], a

jr_009_7965:
    ld e, h
    inc d
    ld [hl+], a
    jr jr_009_7992

    sub [hl]
    ld [hl-], a
    sub d
    ld l, d

jr_009_796e:
    ld l, $7a
    call nc, $a152
    ld h, d
    jr @+$5a

    jp c, $2a52

    ld l, $d5
    ld h, $30
    and l
    jr jr_009_7965

    and b
    sub e
    cpl
    ld e, l

jr_009_7984:
    ld h, d
    push de
    ld [hl+], a
    jr jr_009_796e

    sub l
    jr nc, jr_009_7984

    adc h
    add l
    ld d, a
    rst $38
    dec b
    adc a

jr_009_7992:
    ld a, [bc]
    rst $38
    xor d
    ld sp, $eea8
    sbc a
    ld a, [de]
    sub b
    xor c
    ld c, b
    inc h
    jr z, @+$27

    ld l, d
    ld [hl], l
    inc hl
    add d
    cp b
    ld l, a
    ld a, [$e98f]
    rra
    and a

jr_009_79ab:
    ld e, h
    jr z, jr_009_7a24

    dec d
    ld d, l
    ld a, [bc]
    rla
    ld a, [c]
    rst $10
    dec de
    and b
    ld [c], a
    cp $a1
    rlca
    or c
    ld e, [hl]
    sub a
    ld a, a
    cp $9a
    pop hl
    jr jr_009_7a22

    ld a, [$f163]
    jr nc, @+$81

    rst $38
    and $8c
    add hl, hl
    ld [$df28], sp
    cp $90
    xor h
    ld d, d
    rst $18
    rst $38
    db $e4
    ld h, $10
    ld c, d
    ld c, h
    ld b, a
    rst $38
    push af
    dec c
    ld a, [hl]
    add hl, bc
    dec de
    ld a, a
    db $fd
    add sp, $27
    dec l
    ld l, e
    dec d
    add d
    add d
    ld c, l
    add sp, $54
    cp a
    and c
    inc e
    ld [hl], e
    ld d, a
    rst $38
    di
    ret nz

    or h
    adc l
    db $fc
    inc c
    dec d
    rst $00
    dec de
    ld [$a01f], a
    add e
    ld c, a
    ld l, b
    cpl
    ld sp, $41d9
    db $eb
    jr @-$3d

    add a
    pop hl
    xor b
    jr nz, jr_009_79ab

    ld l, $1f
    ld hl, sp-$50
    ld b, c
    inc b
    ld c, a
    add a
    ld a, [c]
    add hl, hl
    db $d3
    rst $38
    sbc $df

jr_009_7a1c:
    rst $28
    add [hl]
    ld a, $1f
    add a
    and a

jr_009_7a22:
    ld d, a
    ei

jr_009_7a24:
    ld a, a
    xor h
    ld [de], a
    ld hl, sp+$3e
    rra
    ccf
    sbc l
    cpl
    call nz, $ff7f
    add a
    ld e, b
    ld [hl], h
    ld a, [de]
    push af
    daa
    ld c, l
    rst $38
    rst $38
    rst $38
    add h
    jr c, jr_009_7aa8

    add h
    ld b, d
    rst $00
    ld c, l
    ld c, e
    rst $10
    db $fd
    dec b
    ld [hl], e
    cp $4f
    cp $28
    or c
    xor d
    ld b, e
    push af
    db $fd
    ret z

    ld e, [hl]
    adc l
    rla
    rst $38
    add a
    pop af
    ret nz

    jp z, $3f11

    add d
    cpl
    ld sp, hl
    jr z, jr_009_7aa0

    rst $38
    or a
    and b
    add sp, $25
    jr c, jr_009_7a1c

    ld de, $e14f
    rst $38
    rst $38
    add h
    ld e, a
    adc $8c
    db $e4
    ld c, d
    and h
    and b
    add h
    ld [$dc2a], sp
    cpl
    rst $18
    add h
    ld h, l
    rst $38
    cp $5d
    rst $10
    adc $d4
    rla
    xor e
    inc c
    or [hl]
    ld de, $ffb5
    add $76
    cp $de
    add l
    ld [bc], a
    ld c, a
    pop af
    rst $00
    ld c, a
    add $28
    ld c, a
    ei
    pop hl
    ld a, [$fa91]
    ld [hl], d
    sbc $64
    add [hl]
    rst $30
    db $fc

jr_009_7aa0:
    rra
    rst $38
    and c
    sbc l
    ld d, c
    and e
    pop hl
    ld h, e

jr_009_7aa8:
    dec d
    ret nc

    ld b, a
    adc c
    inc c
    ld a, c

Jump_009_7aae:
    and b
    ld b, h
    or d
    sub d
    dec e
    ld d, l
    add hl, sp
    inc l
    ccf
    add e
    xor d
    db $f4
    dec d
    ld sp, $da41
    ld h, $b4
    ld d, l
    ld [$f432], a
    sub l
    ld a, a

jr_009_7ac6:
    sbc c
    adc l
    ld d, h
    db $10
    cp [hl]
    ld b, $bd
    ld h, d
    ld d, [hl]
    jr nc, @+$61

    and c
    ld h, d
    ld d, h
    xor b
    jp nc, Jump_009_4137

    ld h, e
    or e
    di
    xor c
    dec e
    di
    ld [hl], h
    xor c
    jr jr_009_7b1f

    ld b, d
    ld [hl], $af
    call nc, Call_009_603f
    ld a, [hl]
    ld [$d1d6], sp
    xor d
    dec b
    ld b, [hl]
    ld h, [hl]
    ld [hl], $83
    push de
    ld b, c
    ld sp, hl
    ld a, [hl]
    and l
    ld d, e
    ld a, [de]
    ld a, [de]
    xor a
    ld e, d
    adc a
    adc [hl]
    sbc c
    daa
    add b
    call nz, Call_000_2a28
    ld [hl], e
    cpl
    ld hl, sp+$2d
    pop af
    ld a, [hl+]
    ld h, e
    inc bc
    ld a, a
    push de
    cpl
    db $10
    rst $38
    sbc b
    jr nz, jr_009_7ac6

    inc a
    ld d, h
    ld b, l
    rst $38
    sbc l
    ld [$f9bf], sp
    pop de
    rst $38
    rst $38

jr_009_7b1f:
    sbc l
    rra
    rst $38
    ld sp, hl
    call $5f48
    ld a, [c]
    ld l, [hl]
    sub e
    dec a
    ld b, d
    call z, $b999
    ld [de], a
    cp $82
    ld c, h
    add $d7
    ld a, a
    ld e, l
    inc e
    ld e, h
    add hl, hl
    ld l, d
    db $76
    ld b, a
    jp z, $6600

jr_009_7b3f:
    cp [hl]
    dec e
    ld d, h
    ldh a, [$9f]
    ld l, a
    ld e, a
    ld c, b
    add c
    ld d, h
    add sp, $7e
    inc b
    db $10
    cp d
    ld b, $27
    xor d
    db $d3
    sub [hl]
    add c
    add [hl]
    add d
    ld b, $89
    or $a5
    add hl, sp
    ld l, b
    ld a, b
    xor d
    ld d, $d2
    dec de
    ld h, $93
    add [hl]
    add sp, -$6c
    cp d
    ld [$8850], sp
    and d
    ld a, [hl+]
    ld sp, hl
    inc sp
    ld c, h
    inc hl
    add [hl]
    ld h, d
    add sp, $63
    ld b, $68
    ld d, d
    ld [de], a
    add hl, de
    ld h, $09
    inc b
    and $81
    ld c, b
    and d
    jr @+$5b

    ld [hl+], a
    ld b, d
    ld c, c
    ld h, d
    sbc b
    jp nz, $42ea

    dec bc
    ld l, c
    jr jr_009_7ba0

    or h
    ld hl, $aa88
    inc sp
    and b
    ld h, c
    ld c, b
    add [hl]
    ld e, b
    or l
    ld h, [hl]
    dec d
    ld [hl], $a0
    adc d
    adc h
    ld d, [hl]

jr_009_7ba0:
    and d
    dec l
    sub $8e
    rst $38
    dec d
    sbc h
    adc b
    ld l, b
    ldh [$b8], a
    and [hl]
    ld c, h
    ld l, $82
    jr nc, jr_009_7b3f

    add hl, sp
    dec b
    sbc b
    sbc [hl]
    sub b
    and h
    sbc b
    adc b
    ld a, [hl+]
    ld c, [hl]
    dec b
    jr jr_009_7c12

    adc c
    ld [$8ab8], sp
    ld a, [de]
    ld [$05d9], sp
    ldh [$4c], a
    and e
    inc c
    xor d
    inc b
    reti


    ld [hl+], a
    ld e, c
    ld c, c
    ld c, b
    ret z

    ret c

    push bc
    jr c, @+$27

    ld d, b
    sub h
    and l
    add l
    ld hl, $6825
    ld [$81c8], a
    ld e, b
    ld a, [hl+]
    ld a, [bc]
    and e
    or a
    ld d, [hl]
    and e
    xor $e7
    push bc
    daa
    add h
    db $eb
    xor b
    inc sp
    rst $38
    ld [bc], a
    add hl, hl
    db $d3
    and c
    ld a, e
    ldh [$bf], a
    ld d, h
    cp d
    ld [$b272], a
    add sp, $7b
    db $fc
    ld c, l
    ld a, l
    ld a, [hl]
    ld [hl], d
    cp a
    ei
    ld d, l
    ld b, b
    ldh a, [rOBP0]
    cp [hl]
    inc d
    cp d
    ld [hl], c
    rst $18
    ld c, [hl]
    sub l
    ld d, h
    scf

jr_009_7c12:
    ret nz

    rst $38
    add d
    xor e
    sbc d
    xor c
    ld e, c
    and e
    ld a, b
    ld a, a
    jp $d1ff


    add d
    rst $08
    add [hl]
    or [hl]
    dec l
    ld c, c
    ld [de], a
    db $fd
    jp $a6a5


    rrca
    ld [hl], b
    db $f4
    xor $56
    ld b, l
    cp $8b
    db $e4
    or c
    sub h
    cp $10
    ld c, a
    ret


    ld c, $4b
    cp $0c
    add hl, de
    jp $3bf4


    cp [hl]
    dec d
    ld b, d
    pop hl
    rst $28
    ld h, b
    ld sp, hl
    cp l
    pop af

jr_009_7c4a:
    ld d, a
    add [hl]
    adc d
    db $fd
    or l
    ei
    ld d, c
    ret nz

jr_009_7c52:
    cp $90
    add a
    add a
    cp $ac
    ld hl, sp-$02
    ld [hl], d
    rst $18
    add h
    cp $12
    jp z, Jump_009_70f0

    ld hl, $72ec
    rst $08
    db $fc
    dec [hl]
    call $8353
    add a
    ldh [$b9], a
    push bc
    rst $38
    cp [hl]
    sub c
    inc sp
    inc c
    jr jr_009_7c97

    rlca
    cp $70
    inc a
    ld b, a
    push hl
    ld h, c
    inc h
    dec sp
    adc l
    db $fc
    ld de, $7ab5
    dec d
    pop af
    rra
    cp b
    cp a
    push bc
    or c
    jp $310c


    rrca
    db $f4
    ld [$0854], sp
    and c
    dec e
    xor a
    ld c, b

jr_009_7c97:
    rst $00
    adc a
    rra
    add b
    add b
    ld b, h
    cp b
    sbc $41
    ld e, a
    add hl, sp
    sub b
    add [hl]
    ld hl, $374e
    db $ec
    rst $00
    jr c, jr_009_7d09

    ld l, b
    ld d, [hl]
    adc [hl]
    ld b, l
    ld [$0686], sp
    add a
    ld c, [hl]
    jr z, jr_009_7c4a

    ld hl, $2354
    and d
    ld hl, $385a
    jr z, jr_009_7d12

    dec sp
    jr c, jr_009_7c52

    ld c, e
    sub c
    db $e3
    add [hl]
    and h
    sub l
    ld b, c
    add hl, sp
    ld l, c
    ret z

    sub b
    ld b, d
    add hl, sp
    ld e, a
    call nc, $e810
    and $a8
    ld l, b
    adc d
    ld a, [hl-]
    xor l
    xor a
    ld c, [hl]
    sbc d
    inc a
    cp c
    jp z, $2a8a

    ld [hl], e
    jp z, $d1ad

    ret


    rlca
    pop de
    db $10
    ld sp, $83c2
    ret


    ccf
    ld b, c
    inc e
    ld [$0233], sp
    adc d
    ld c, $a7
    inc d
    inc e

jr_009_7cf8:
    ld hl, sp+$40
    adc l
    inc e
    add hl, bc
    dec l
    add h
    dec e
    ld c, d
    ld [hl], c
    ld h, b
    jp c, Jump_000_0e3a

    and a
    dec de
    ld b, h

jr_009_7d09:
    jp c, Jump_009_7114

    rst $10
    xor d
    and c
    jr nz, jr_009_7cf8

    inc l

jr_009_7d12:
    xor e
    inc hl
    xor c
    ret


    ld e, b
    ret c

    ld c, e
    ld b, a
    ld e, [hl]
    inc de
    rst $20
    ld c, d
    ld a, h
    ld h, b
    call Call_000_3ed7
    push hl
    call Call_000_132f
    pop hl
    push hl
    ld a, [$d0bd]
    call Call_009_7d3e
    ld a, [$d0bd]
    ld b, a
    ld a, [$d0be]
    cp b
    pop hl
    jr z, jr_009_7d41

    ld bc, $0028
    add hl, bc

Call_009_7d3e:
    push hl
    jr jr_009_7d54

jr_009_7d41:
    ld a, $7f
    ld bc, $0013
    add hl, bc
    ld bc, $0006
    jp Jump_000_166e


    call Call_000_3ed7
    push hl
    ld a, [$cfd4]

jr_009_7d54:
    add a
    ld hl, $7d63
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    jp Jump_000_1723


    sbc c
    ld a, l
    and b
    ld a, l
    xor c
    ld a, l
    or b
    ld a, l
    db $dd
    ld a, l
    db $e4
    ld a, l
    jp hl


    ld a, l
    xor $7d
    ld a, [c]
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    sbc c
    ld a, l
    or a
    ld a, l
    cp h
    ld a, l
    jp nz, $c87d

    ld a, l
    pop de
    ld a, l
    reti


    ld a, l
    ld hl, sp+$7d
    adc l
    adc [hl]
    sub c
    adc h
    add b
    adc e
    ld d, b
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    add l
    adc e
    sbc b
    adc b
    adc l
    add [hl]
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld d, b
    add l
    adc b
    sub c
    add h
    ld d, b
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld d, b
    add [hl]
    sub c
    add b
    sub d
    sub d
    ld d, b
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc b
    add d
    ld d, b
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    ld d, b
    adc b
    add d
    add h
    ld d, b
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l

Call_009_7de2:
    add e
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    add c
    adc b
    sub c
    add e
    ld d, b
    add c
    sub h
    add [hl]
    ld d, b
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld hl, $7e19
    ld a, [$d030]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cd6d

jr_009_7e11:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_009_7e11

    ret


    ld [hl], a
    ld a, [hl]
    add c
    ld a, [hl]
    adc l
    ld a, [hl]
    ld c, c
    ret nc

    sub d
    ld a, [hl]
    sbc [hl]
    ld a, [hl]
    xor d
    ld a, [hl]
    or l
    ld a, [hl]
    ld c, c
    ret nc

    ld c, c
    ret nc

    ret nz

    ld a, [hl]
    ret z

    ld a, [hl]
    pop de
    ld a, [hl]
    ld c, c
    ret nc

    reti


    ld a, [hl]
    ld c, c
    ret nc

    ld c, c
    ret nc

    pop hl
    ld a, [hl]
    ld c, c
    ret nc

    add sp, $7e
    rst $28
    ld a, [hl]
    ld c, c
    ret nc

    ld c, c
    ret nc

    rst $30
    ld a, [hl]
    ld c, c
    ret nc

    ld bc, $0a7f
    ld a, a
    db $10
    ld a, a
    ld c, c
    ret nc

    ld a, [de]
    ld a, a
    ld hl, $2e7f
    ld a, a
    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    ld c, c
    ret nc

    sbc b
    adc [hl]
    sub h
    adc l
    add [hl]
    sub d
    sub e
    add h
    sub c
    ld d, b
    add c
    sub h
    add [hl]
    ld a, a
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    adc e
    add b
    sub d
    sub d
    ld d, b
    adc c
    sub c
    add sp, -$6d
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    rst $28
    ld d, b
    adc c
    sub c
    add sp, -$6d
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    push af
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc l
    add h
    sub c
    add e
    ld d, b
    add c
    sub h
    sub c
    add [hl]
    adc e
    add b
    sub c
    ld d, b
    add h
    adc l
    add [hl]
    adc b
    adc l
    add h
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    sub d
    sub [hl]
    adc b
    adc h
    adc h
    add h
    sub c
    ld d, b
    add c
    add h
    add b
    sub h
    sub e
    sbc b
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub c
    ld d, b
    adc c
    sub h
    add [hl]
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    add c
    adc e
    add b
    add d
    adc d
    add c
    add h
    adc e
    sub e
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld d, b
    add d
    add a
    adc b
    add h
    add l
    ld d, b

Jump_009_7f10:
    sub d
    add d
    adc b
    add h
    adc l
    sub e
    adc b
    sub d
    sub e
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    rst $28
    ld d, b
    add d
    adc [hl]
    adc [hl]
    adc e
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    push af
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_009_7f88:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
