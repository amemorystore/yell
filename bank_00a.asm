;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld d, l
    or c
    ld l, d
    ld c, [hl]
    ld h, l
    or h
    pop bc
    adc d
    sub l

jr_00a_4009:
    dec h
    ld a, e
    push de
    ld l, d
    ld [hl+], a
    ld sp, $4149
    and b
    rst $30
    xor [hl]
    add hl, de
    ld c, h
    ld [hl-], a
    ld d, a
    ld a, [c]
    ld h, d
    jr z, jr_00a_4070

    jp z, Jump_00a_414b

    ld hl, sp-$78
    adc l
    add hl, sp
    jr nc, jr_00a_407b

    ld a, [de]
    adc b
    ld h, e
    ld a, [bc]
    jr c, jr_00a_4056

    ld b, c
    ld b, d
    add l
    adc e
    ld c, [hl]
    ld b, l
    ld b, d
    ld b, $a0
    add sp, -$43
    ld c, $1a
    ld [hl-], a
    ld h, d
    pop hl
    ld h, h
    ld h, d
    ld a, [hl-]
    ld d, c
    ld l, h
    push bc
    di
    inc b
    adc c
    call nc, $829a
    adc b
    sub c
    pop de
    sub e
    jr jr_00a_4009

    pop hl
    and a
    xor b
    push bc
    ld h, e
    add c
    dec [hl]
    ld d, d
    db $d3

jr_00a_4056:
    add hl, de
    jr nc, jr_00a_40cc

    ld c, h
    ld d, $aa
    inc [hl]
    adc c
    ld h, e
    ld a, b
    inc d
    ldh [$aa], a
    adc c
    adc [hl]
    ld a, [bc]
    ld e, d
    ld c, h
    jr z, @-$35

    dec sp
    ld d, h
    adc $4e
    push bc
    daa

jr_00a_4070:
    ld c, d
    xor l
    ld d, h
    and $54
    adc e
    push de
    ld a, b
    sbc d
    sub e
    inc b

jr_00a_407b:
    adc $bf
    ld d, a
    ld l, b
    adc $aa
    and c
    sbc c
    ld a, [hl+]
    ld [hl], h
    xor d
    ld h, d
    sub c
    ld [bc], a
    ld h, b
    add [hl]
    add h
    ld c, d
    ccf
    and $52
    adc h
    add e
    add [hl]
    inc c
    ld de, $2430
    ld a, a
    sub d
    add h
    dec c
    ld sp, hl
    inc e
    ld b, a
    sbc c
    pop bc
    rst $38
    ld b, b
    add d
    ccf
    add a
    sub c
    and d
    pop hl
    ld a, [$1269]
    adc e
    rst $08
    db $e4
    ret nc

    ld a, b
    ld a, a
    and h
    ld d, a
    jp hl


    ld c, c
    inc e
    rra
    pop bc
    db $10
    add l
    cp a
    cp $57
    ld c, e
    ldh a, [rSTAT]
    ld a, e
    pop af
    jr @+$45

    cp a
    db $fc
    ld d, h
    rla
    cp $34
    cp $1b

jr_00a_40cc:
    db $10
    cp h
    call c, $c460
    ld a, a
    push hl
    ld d, l
    ld a, $fe
    cp a
    or d
    db $10
    ccf
    dec bc
    rst $38
    jp hl


    ld l, h
    dec [hl]
    ld [hl], l
    rst $38
    ei
    ld e, d
    adc e
    ld d, c
    sbc e
    sub a
    sub a
    ld e, a
    cp $a5
    ld sp, $909c
    pop bc
    ld [bc], a
    ld c, d
    rst $38
    db $f4
    ld [hl], c
    dec [hl]
    sub d
    rst $10
    rst $38
    cp $a0
    sbc h
    add hl, bc
    or l
    ld e, a
    rst $38
    ld [$9844], a
    ld b, [hl]
    ld a, b
    dec hl
    rst $38
    ldh a, [$7f]
    ei
    sbc b
    push bc
    inc h
    ld a, $a2
    db $fc
    cpl
    rlca
    db $f4
    ld h, l
    inc de
    and c
    ld a, a
    db $fc
    ld c, d
    ld de, $f91f
    sbc h
    sub c
    ld l, e
    sub $66
    add l
    ld d, a
    ld a, [de]
    jp $73d6


    add b
    ld b, h
    cp l
    and l
    ld d, e
    add c
    db $d3
    rla
    xor d
    scf
    and b
    ld d, d
    add sp, -$1e
    ld a, b
    and l
    ld d, a
    sub e
    sub l
    ld b, d
    ld sp, $3495
    and c
    sbc b
    add [hl]
    sub e
    and c
    ld c, c
    ld l, b
    db $e3
    ld d, [hl]
    cpl
    ld b, l
    xor d
    sub e

jr_00a_414a:
    ld e, c

Jump_00a_414b:
    ld d, c
    ld b, d
    ld e, $3a
    ld a, [hl+]
    add [hl]
    sbc l
    ld a, [hl-]
    dec d
    ld e, $0b
    ld c, [hl]
    ld [hl], l
    ld [c], a
    xor a
    rst $08
    and h
    rst $18
    dec sp
    inc e
    ld c, c
    and e
    dec de
    xor e
    add hl, de
    pop af
    jp z, Jump_00a_5583

    inc hl
    xor d
    ld l, e
    dec bc
    inc [hl]
    ld c, $44
    jp nc, Jump_00a_4471

    call nz, $29a8
    or d
    ld d, a
    ld [de], a
    call nz, $b5e9
    inc b
    db $db
    ld c, c
    call c, $9283
    rst $00
    dec hl
    adc h
    ld c, [hl]
    ld [hl], h
    add $15
    rra
    ld c, b
    ld [hl], a
    cp a
    ld b, l
    ld l, a
    ld d, c
    ld d, h
    pop af
    sub l
    ld b, l
    add l
    dec bc
    ldh [$af], a
    ld d, e
    pop bc
    add e
    cp $29
    ldh [$82], a
    sub a
    ld h, e
    adc l
    db $f4
    push bc
    ld l, d
    add d

jr_00a_41a5:
    dec l
    ld d, a
    inc hl
    add $53
    ld a, d

jr_00a_41ab:
    ld [hl+], a
    ld a, [de]
    db $f4
    inc d
    and h
    ldh [$87], a
    and e
    add l
    jp c, Jump_000_2f18

    add hl, bc
    ld e, d
    add hl, sp
    ld a, [de]
    inc [hl]
    add l
    dec bc
    and d
    inc h
    push de
    dec h
    inc [hl]
    ld c, [hl]
    jr z, jr_00a_414a

    ldh [$82], a
    xor b
    add hl, hl
    inc sp
    sub e
    inc h
    ld d, e
    sub [hl]
    inc sp
    xor d
    ret z

    ld e, d
    sub e
    jr z, jr_00a_4234

    jr jr_00a_41a5

    ld h, e
    ld a, b
    sub h
    jr jr_00a_41ab

    ld hl, $60d8
    sub d
    and e
    adc c
    ld a, [hl+]
    ld [hl], $a1
    ld b, [hl]
    ld d, a
    ld a, [c]
    inc de
    adc l
    call z, Call_00a_4d63
    ld [$5184], sp
    and e
    adc [hl]
    add hl, sp
    ld d, [hl]
    adc c
    ld d, l
    ld e, b
    rst $28

jr_00a_41f9:
    ld c, h
    sub l
    adc b
    ld e, [hl]
    and e
    or c
    ld d, h
    inc de
    dec h
    ld b, l
    ld h, e
    cp e

Jump_00a_4205:
    dec e
    ld e, d
    ld [hl-], a
    cp b
    jr jr_00a_41f9

    ld d, h
    add $32

jr_00a_420e:
    ld d, [hl]
    jr nc, jr_00a_4265

    ld a, [de]
    sub [hl]
    and h
    ld a, [de]
    ret nc

    ld l, b
    jp nc, $2a39

    and d
    jp nc, Jump_000_1b12

    inc [hl]
    ld l, b
    db $e4
    ld b, d
    ld h, e
    dec bc
    ld c, e
    and e
    jr c, jr_00a_420e

    adc b
    ld d, [hl]
    and d
    sub h
    pop bc
    ld c, h
    inc de
    sbc a
    ld b, $2e
    sub [hl]
    add d

jr_00a_4234:
    ld d, l
    ld h, c
    xor c
    ld e, b
    add sp, $53
    pop af
    ret


    ld a, [$e034]
    adc d
    add hl, bc

Jump_00a_4241:
    db $e3
    ld [hl+], a
    sub b
    db $ed
    cp $1f
    cp b
    daa
    add e
    ld a, a
    xor l
    ld a, a
    ld a, a
    add a
    rst $30
    rst $00
    ld h, $99
    ccf
    rst $38
    add sp, -$5f
    ld d, l
    inc b
    rra
    add h
    add hl, bc
    cp l
    cp $44
    ld c, $85
    rst $38
    rst $38
    pop hl
    db $fc

jr_00a_4265:
    ldh [rIE], a
    adc a
    add $ff
    cp $8d
    cp $15
    db $fd
    ld d, b
    ld [hl], h
    ret nc

    ld b, e
    inc de
    pop af
    and h
    ld e, $1f
    ld hl, sp-$21
    pop hl
    xor b
    ld a, [hl]
    jr z, jr_00a_42d7

    inc h
    ccf
    ld hl, sp+$46
    ld hl, sp+$6f
    ld a, [$e145]
    ld a, b
    ld a, h
    ld h, l
    dec [hl]
    ld d, l
    ld [bc], a
    sbc c
    pop bc
    or a
    rst $38
    sub e
    pop hl
    and e
    daa
    ld a, [bc]
    rrca
    ld sp, hl
    sbc e

Jump_00a_429a:
    ld h, h
    ld e, a
    ldh [$a8], a
    ld a, [hl+]

jr_00a_429f:
    ld sp, $c0c3
    call c, Call_00a_6fe6
    db $e3
    ld a, [hl]
    rra
    pop hl
    inc e
    sub [hl]
    ld [hl], $0f
    and [hl]
    ld [hl], a
    ld l, d
    rla
    cp l
    inc bc
    inc e
    ld l, c

jr_00a_42b5:
    ld d, l
    dec de
    ld c, b

jr_00a_42b8:
    cpl
    rst $38
    jp hl


    sla h
    ld a, [hl+]
    ld l, a
    db $ed
    ld a, a
    call c, Call_00a_6874
    ld a, a
    adc h
    ld h, a
    rst $38
    ld de, $6f1d

jr_00a_42cb:
    ld [bc], a
    xor e
    add hl, de
    rst $38
    ld e, $0a
    dec [hl]
    ld d, c
    sbc l
    pop af
    ldh [rNR50], a

jr_00a_42d7:
    ld [c], a
    ld sp, hl
    sub $a8
    pop bc
    jr nz, jr_00a_429f

    adc e
    dec b
    ld a, [bc]

Jump_00a_42e1:
    ld [$cd09], a
    ld a, [$0e1f]
    sub a
    ld hl, sp-$55
    xor c
    db $db
    db $fc
    ld d, a
    ld [c], a
    pop hl
    ld sp, hl
    dec [hl]
    ld sp, hl
    db $d3
    add $08
    or h
    rrca
    pop hl
    ld b, d
    sub h
    rst $00
    add a
    dec d
    ld de, $0417
    ld a, [hl]
    ld l, h
    ld b, h
    cp l
    sub l
    ld d, e
    xor c
    ld a, [$81d3]
    ld d, l
    ld c, b
    and d
    jr z, jr_00a_42b5

    jr nc, jr_00a_4386

    xor c
    add d
    sbc d
    jr nc, jr_00a_42cb

    add a
    sbc [hl]
    sub e
    add hl, sp
    ld c, c
    or [hl]
    jp c, $8a7c

    xor b
    ldh [$b6], a
    ld l, c
    ld h, h
    cp c
    jr c, jr_00a_4350

    ld a, [hl]
    jr @-$46

    pop hl
    and b
    adc e
    sub l
    adc e
    ld d, e
    jr c, jr_00a_42b8

    dec [hl]
    db $d3
    ld l, c
    add $7d
    ld [hl+], a
    ld b, [hl]
    jr c, @+$71

    db $dd
    jp nc, $e718

    and d
    dec hl
    ld a, b
    ld hl, sp-$63
    db $ec
    and d
    sbc l
    or b
    rst $20
    ld [bc], a
    ld c, d
    ld h, l
    inc e
    jr nc, jr_00a_43c4

jr_00a_4350:
    ld [$8c6a], sp
    ld h, c
    and [hl]
    ld c, a
    xor e
    sub e
    ld e, d
    sub a
    ld l, c
    jr z, jr_00a_43da

    ld d, l
    ld d, $b1
    adc l
    and c
    inc b
    and l
    jp c, Jump_000_1a0f

    push bc
    ld e, c
    ld [hl], l
    jp hl


    cp l
    and h
    ld l, $ad

Call_00a_436f:
    and c
    ld d, l
    ld a, [de]
    ld b, c
    db $fd
    and c
    ld d, d
    ld [hl-], a
    sbc h
    ld d, $32
    inc d
    inc [hl]
    sbc h
    xor h
    ret c

    jp z, $9d0e

    sub h
    inc e
    ld a, h
    ld c, b

jr_00a_4386:
    ld [hl], a
    cp e
    ld d, [hl]
    rst $08
    dec c
    ld c, l

jr_00a_438c:
    ld d, a
    or $38
    inc d
    reti


    ld d, l
    ld a, l
    ld c, e
    ld e, [hl]
    sbc [hl]
    jr c, jr_00a_43b6

    ld [hl], $fe
    xor l

jr_00a_439b:
    db $eb
    sub a
    add sp, $1e
    jr c, jr_00a_439b

    ld a, l
    jr nc, jr_00a_4401

    push af
    dec h
    inc b
    add l
    add d
    call $a19f
    rst $20
    adc e
    rst $38
    ld b, [hl]
    or b
    ld [hl], a
    ld a, [de]
    ld hl, $ff97

jr_00a_43b6:
    sub d
    ld h, l
    adc b
    add c
    inc sp
    or l
    push bc
    ld h, b
    ld e, l
    daa
    ld [$ec9f], a
    inc h

jr_00a_43c4:
    xor d
    sub d
    inc hl
    dec l
    rst $38
    adc [hl]
    ld c, $9e
    cp h
    adc c
    ld b, $08
    adc c
    ld c, [hl]
    ld [$99e3], sp
    ld [hl-], a
    sub b
    ld h, b
    add d
    sub l

jr_00a_43da:
    ld a, [hl-]
    sub d
    and $30
    ld d, b
    add c
    cp $f6
    inc [hl]
    sub e

jr_00a_43e4:
    dec h
    db $e3
    jr @-$46

    jr nz, jr_00a_438c

    ld l, d
    dec [hl]
    and b
    sub l
    ld l, d
    ret c

    ld [c], a
    and d
    ld h, e
    adc d
    add hl, bc
    ld c, c
    ld e, b
    db $e3
    ld d, h
    sub h
    pop hl
    ld h, d

jr_00a_43fc:
    ld [hl], h
    jr jr_00a_43e4

    adc h

Call_00a_4400:
Jump_00a_4400:
    inc de

jr_00a_4401:
    add c
    ld sp, $648e
    ld d, $2a
    dec [hl]
    ld h, e
    ret nz

    ld a, [$a4a2]
    jp z, $3b25

    ld [de], a
    sub e
    add hl, bc
    ld c, e
    xor d
    sub d
    inc de
    and e
    rst $38

Jump_00a_4419:
    and h
    jp z, Jump_00a_4453

    rst $20
    ld h, d
    ld d, h
    ld d, e
    inc [hl]
    add $a0
    adc [hl]
    ld d, a
    ld d, l
    ld d, d
    ld d, e
    jr z, jr_00a_43fc

    add hl, sp
    ld [hl], c
    xor d
    jr nc, jr_00a_447c

    ld d, e
    add c
    ld d, e
    inc [hl]
    add hl, de
    sub l
    ld a, b
    pop bc
    dec l
    inc [hl]
    add l
    adc b

jr_00a_443c:
    add c
    dec d
    jr jr_00a_4454

    ld h, a
    and e
    inc [hl]
    adc d

Call_00a_4444:
    scf
    ld c, c
    ld l, b
    inc de
    dec d
    ld [hl+], a
    adc l
    ld d, b
    ld c, [hl]
    inc b
    sub l
    add c
    adc c
    and d
    add hl, de

Jump_00a_4453:
    ld a, b

jr_00a_4454:
    jp c, $a237

    ld l, b
    ld d, h
    ld [hl+], a
    ld d, h
    ld h, [hl]
    adc [hl]
    push hl
    ld hl, $a2a1
    ld d, h
    ld l, a
    adc a
    add hl, bc
    ld e, [hl]
    dec b
    pop hl
    cp [hl]
    inc a
    dec l
    jp c, Jump_00a_7886

    adc c

Call_00a_446f:
    or d
    ld [de], a

Jump_00a_4471:
    sbc h
    ld l, c
    or d
    ld b, e
    db $10
    sub [hl]
    adc a
    ld sp, $83c2
    sbc e

jr_00a_447c:
    jr nz, jr_00a_443c

    dec de
    ld b, $33
    ret nc

    ld b, a
    ld e, $b0
    ld l, c
    adc d
    add a
    dec l
    ld b, c
    inc c
    sub b
    cp b
    ld h, [hl]
    ld a, [$3310]

Jump_00a_4491:
    ld h, $18
    dec a
    ld c, [hl]
    ld l, $1c
    scf
    ldh a, [rNR42]
    ld a, [hl+]
    push bc
    ld [hl], a
    xor b
    inc hl
    sbc c
    ld b, c
    ld h, h
    cp l
    xor d
    inc l
    ld a, [hl-]
    db $10
    cp $e5
    and d
    add h
    inc d
    ld h, l
    add l
    ld d, l
    ld h, $0c
    dec c
    jr @-$2e

    inc hl
    sub b
    add [hl]
    inc c
    sbc h
    bit 0, b
    add $7a
    ld b, h
    or h
    or b
    jp nz, Jump_00a_718a

    ld d, l
    ld b, d
    ld a, [c]
    ld h, c
    ld d, b

Call_00a_44c8:
    cp d
    and h
    dec [hl]
    xor b
    ld b, [hl]
    sbc h
    sub h
    and c
    db $fc
    ld a, [hl-]
    ld c, d
    and h
    ld b, l
    ld [hl], c
    db $10
    ld b, [hl]
    cp h
    rla
    db $e3
    ld c, e
    or l
    dec b
    ld b, e
    ld b, [hl]
    ld [hl], c
    rst $00
    cp d
    ld d, d
    db $f4
    push hl
    ld d, c
    ld a, [hl+]
    jp nc, Jump_00a_7142

    inc l
    ld sp, $400f
    pop af
    xor l
    ld b, d
    pop bc
    and a
    ld d, $4a
    inc [hl]
    ld b, a
    ld a, [de]
    call nz, Call_00a_4eba
    ld l, [hl]
    call nz, $143c
    add hl, bc
    cp d
    cp a
    pop de
    inc de
    ret


    and d
    ld a, [bc]
    inc d
    adc d
    sbc h
    ld d, c
    ld c, d
    cp c
    ld d, h
    sbc b
    call nz, $0341
    ld de, $9a46
    xor a
    push de
    ld c, b
    ld h, l
    or d
    ld l, b
    and c
    sbc d
    inc h
    ld b, e
    inc b
    add hl, hl
    ld e, c
    ld [$7e3b], sp
    ld h, a
    inc b
    jr nc, jr_00a_4553

Call_00a_452a:
    sbc a
    ld e, h
    dec e
    ld a, a
    ld h, l
    dec [hl]
    ld l, b
    ld d, c
    or d
    ld a, [bc]
    ld b, h
    ld a, [hl+]
    cp e
    ld b, b
    sub c
    ld de, $3498
    jp c, $b79c

    pop bc
    ld b, h
    ld b, c
    pop bc
    ei
    add $2c
    xor c

Call_00a_4547:
    cp h
    db $fd
    inc c
    ld e, d

jr_00a_454b:
    ld de, $1131
    and d
    ld [hl], b
    or l
    inc de
    ret z

jr_00a_4553:
    ld b, c
    add hl, hl
    ld d, $91
    sbc e
    daa
    dec b
    ld b, h
    ld a, e
    ld a, [hl+]
    ld b, h
    sub c
    ld a, [$1c78]
    dec hl
    jp Jump_00a_470c


    and c
    pop bc
    dec e
    call z, $8a4c
    add hl, hl
    add hl, de
    add hl, bc
    pop hl
    ldh a, [rNR43]
    add d
    db $10
    pop de
    ld [c], a
    nop
    ld b, h
    cp b
    ld d, l
    ld l, a
    ld [$158e], a
    or $a8
    jr jr_00a_454b

    ld d, d
    sbc $96
    xor d
    adc h
    ld a, [c]
    inc h
    ld e, [hl]
    ld b, $5a
    xor d
    xor d
    ld d, d
    and l
    add hl, de
    ld c, b
    ld [hl], h
    ld [c], a
    ld l, d
    inc [hl]
    sub e
    add d
    ld d, d
    sub d
    ld [de], a
    ld h, e
    add a
    ld c, d
    ld e, b
    rst $20
    ld h, e
    ld e, $c1
    or h
    sbc $55
    ld l, $55
    dec bc
    ld d, e

Jump_00a_45aa:
    add [hl]
    or d
    ld de, $6b9e
    ld c, [hl]
    add hl, de
    ld h, d
    db $eb
    and b
    sub e
    or d
    sub h
    inc hl
    cp [hl]
    adc a
    add l
    sbc h
    xor d
    xor d
    and a
    ld a, [de]
    rst $38
    rst $38
    rst $38
    sbc h
    rrca
    db $fd
    dec l
    ld d, l
    ld a, c
    ld d, a
    and h
    cp a
    rst $00
    dec a
    and b
    cp $9c
    xor d
    xor h
    ld b, a
    cp $9c
    sub h
    pop hl
    rst $38
    rst $38
    sbc h
    ld [hl], l
    jr c, jr_00a_463d

    rst $10
    sbc h
    ld l, e
    di

jr_00a_45e2:
    xor h
    sub c
    daa
    dec l
    ld c, l
    ret nz

    sub c
    daa
    inc sp
    call nz, $85c0
    and a
    ld a, l
    ld l, c
    ldh [$c7], a
    db $d3
    nop
    ld d, l
    cp [hl]
    ld h, c
    push af
    ld l, d
    and l
    ld e, a
    cp $30
    ld c, h
    ldh a, [$9c]
    inc a
    sub l
    xor a
    rst $38
    adc d
    cp b
    ret


    dec hl
    ld b, $82
    jp nc, Jump_000_397c

    dec h
    db $e3
    inc c
    push bc
    ld h, c
    sub d
    ldh [$98], a
    sbc l
    jr nc, jr_00a_45e2

    ld [hl], c
    ld c, b
    ld h, d
    sub h
    sbc d
    jr jr_00a_4654

    cp b
    ld e, c
    inc c
    ld a, [hl+]
    sub d
    ld d, b
    xor a
    ld hl, $cc88
    dec l
    inc hl
    ldh a, [$98]
    dec h
    dec bc
    push de
    ld sp, $2d41
    ld b, d
    dec [hl]
    xor c
    ld [c], a
    ccf
    daa
    ld sp, $94b6

jr_00a_463d:
    call Call_00a_51af
    ret z

    db $f4
    sbc $8c
    ld h, h
    adc b
    jr z, jr_00a_465b

    sbc d
    add hl, hl
    ld l, b
    sbc b
    jp nz, $e438

    adc h
    xor c
    inc b
    adc b
    inc d

jr_00a_4654:
    push hl
    sub b
    ld b, l
    ld b, d
    ld h, h
    sbc e
    adc [hl]

jr_00a_465b:
    ld a, b
    dec hl
    jp hl


    pop bc
    adc [hl]
    or [hl]
    ld l, $a8
    db $eb
    ld h, e
    ld [$e3f1], sp
    ret nz

    ld d, l
    xor d
    scf
    sbc a
    inc sp
    ld a, [bc]
    db $10
    ld l, $43
    ld a, [bc]
    rst $00
    dec h
    ld e, c
    ld c, b
    inc l
    ld de, $5c1e
    add hl, bc
    sbc e
    jp hl


    rra
    ldh [$95], a
    ld [bc], a
    add hl, bc
    ld c, b
    ld b, [hl]
    scf
    ld sp, hl
    rra
    add e
    db $10
    xor b
    sub $4f
    ld b, [hl]
    scf
    pop bc
    adc e
    ld a, [bc]
    ld d, l
    jp c, Jump_000_1e31

    add hl, bc
    ld l, l
    ld [hl], $44
    adc d
    sub d
    sub c
    ld de, $09b6
    sub h
    ld [$5c44], sp
    rra

Jump_00a_46a5:
    or h
    ld [$ed6b], sp
    add [hl]
    and [hl]
    ld d, b
    ld c, d
    ld b, e
    cp $b8
    ld a, a
    db $eb
    ld h, c
    daa
    dec c
    ld a, a
    rst $38
    ldh a, [$b7]
    ld a, [$71fc]
    ccf
    rst $38
    ld a, [$dc16]
    rla
    and a
    dec de
    rst $38

Jump_00a_46c5:
    pop af
    ld e, e
    dec bc
    rst $00
    dec [hl]
    cp $90
    add a
    or b
    ret nz

    sbc h
    rst $30
    ld hl, sp+$21
    inc [hl]
    ld c, h
    ld [hl], l
    dec [hl]
    dec c
    ld h, a
    ld [hl], e
    rst $08
    and a
    add b
    db $fc
    ld sp, hl
    pop hl
    ld a, [hl]
    inc d
    sbc [hl]
    inc c
    ld [hl], e
    nop
    ld b, h
    cp [hl]
    ld [hl], c
    add hl, sp
    ld d, h
    sub l

jr_00a_46ec:
    ld l, b
    push hl
    and b
    sbc d
    ld a, [hl-]
    inc e
    inc d
    dec de
    ld a, [hl-]
    rla
    ld h, b
    and e
    xor l
    or e
    or [hl]
    di
    ret nz

    sub b
    ld b, c
    dec d
    ld a, [hl-]
    ld l, a
    cp l
    ld a, h
    add sp, -$0a
    ld l, d
    adc [hl]
    sbc b
    ld a, [$f7cd]

Jump_00a_470c:
    ld c, e
    inc e
    or h
    dec hl
    ld d, c
    call z, $d9a8
    push de
    dec [hl]
    jr jr_00a_4751

    ret


    ld a, c
    adc h
    ld [hl], d
    ret z

    xor d
    db $76
    call nz, $6a68
    ld [hl], l
    ld l, e
    ld b, b
    sbc l
    jr c, jr_00a_46ec

    ld b, a
    ldh [$a0], a
    ld d, l
    ccf
    ld c, $54
    ld a, a
    pop af
    ld c, [hl]
    ld [hl], l
    sub a
    pop bc
    ld hl, $b451
    db $e3
    ld h, e
    ld a, [hl+]
    adc b
    and l
    or h
    ldh [$ce], a
    ld l, c
    adc d
    ld e, b
    ld [de], a
    ld a, [de]
    jr c, jr_00a_4758

    ld c, c
    or d
    ld [hl+], a
    dec l
    xor h
    ldh [$c1], a
    ld h, b
    sub d
    inc h

jr_00a_4751:
    ld d, e
    or d
    ld c, b
    sub d
    db $fc
    and h
    add hl, de

jr_00a_4758:
    add hl, sp
    and $23
    ld hl, $c665
    ld c, [hl]
    ld l, h
    adc b
    sbc c
    dec bc
    ld hl, $430a
    ld c, [hl]
    ld b, h
    cp e
    inc hl
    add a
    ld [$0723], sp
    ld [hl-], a
    and d
    jp nc, $d021

    sbc c
    sub d
    xor b
    jp z, $c54a

    inc c
    and [hl]
    ld hl, $a386
    ld e, d

Call_00a_477f:
    ld a, h
    ld e, b
    dec d
    sub d
    xor $8e
    ld a, [hl-]
    add e
    ld [hl], b
    sbc b
    ldh a, [$a8]
    ld hl, sp+$5d
    ld hl, sp+$6a
    ld b, e
    sub l
    and a
    ld c, h

Jump_00a_4793:
    jp c, $0ab9

    add h
    ld [hl], e
    or c
    adc l
    ld b, h
    ld d, d
    sbc h
    ld l, h
    ld [hl], d
    adc $95
    add hl, sp
    ld c, c
    call nz, Call_00a_59a5

jr_00a_47a6:
    jr nc, jr_00a_47db

    xor h
    sbc h

Jump_00a_47aa:
    jr jr_00a_47cd

    ld [hl-], a
    ld b, [hl]
    ld b, d
    rla
    call nz, $1e47
    ld c, h
    sbc b
    ld h, h
    inc h
    ld [hl-], a
    ld [hl], e
    ld h, c
    adc e
    inc de
    dec b
    ld h, h
    ld c, c
    res 2, c
    inc de
    sub b
    jp Jump_00a_7286


    call nz, Call_00a_4b25
    dec c
    ld hl, $a60f

jr_00a_47cd:
    ld de, $57a4
    dec c
    add a
    add h
    add l
    sub h
    pop af
    sub [hl]
    ld e, $ab
    db $10
    sub h

jr_00a_47db:
    add h
    inc sp
    ret z

    ld b, [hl]
    sub b
    ld b, [hl]
    inc l
    rst $08
    inc de
    add d
    ld [hl], e
    ld l, b
    or [hl]
    inc e
    ld a, b
    db $10
    rst $00
    jp nz, Jump_00a_4400

    cp l
    and l
    ld c, [hl]
    ld d, l
    ld d, l
    ld a, [hl]

jr_00a_47f5:
    and e
    adc c
    ld a, [$a949]
    ld c, [hl]
    rlca
    adc c
    ld c, [hl]
    adc d
    dec h
    add c
    ld d, l
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ret c

    jp nz, Jump_00a_4793

    add l
    db $e3
    and d
    sub l
    bit 2, e
    adc [hl]
    ld [$8c30], a
    jr jr_00a_47f5

    ld d, d
    inc e
    ld h, l
    ld e, b
    pop hl
    and c
    ld a, [hl]
    ld hl, $6839
    jr nz, jr_00a_47a6

    ld h, b
    add c
    jr c, @-$0f

    jp c, $e0f5

    xor b
    ld [c], a
    and d
    xor b
    ld a, [c]
    rst $30
    adc $27
    ld a, [de]
    push de
    ld d, h
    xor a
    inc e
    ld e, c
    sbc e
    jp hl


    call z, Call_00a_73b5
    inc b
    ld [hl], c
    ld c, l
    inc h
    ld a, h
    inc d
    sbc h
    inc a
    pop af
    inc c
    ld [hl], h
    ldh a, [$ce]
    ld [hl], h
    and l
    ld b, a
    ld c, d
    and h
    reti


    rst $08
    adc $4b
    jp hl


    call z, $bcd6
    db $dd
    ld a, [hl+]
    ld [hl], b
    db $db
    dec c
    rra
    ld a, [de]
    ld h, [hl]
    cp d
    sub l
    ld d, e
    add hl, hl
    dec sp
    sbc e
    xor d
    cp a
    ld d, d
    inc d
    inc hl
    sbc d
    add hl, hl
    ld h, e
    ld a, [hl+]
    cp $4a
    ld c, [hl]
    dec de
    adc b
    ld d, d
    push de
    ld d, h
    add l
    jr jr_00a_4893

    pop hl
    and e
    ld [hl], $8b
    xor b
    ld d, $05
    adc e
    ld d, l
    ld d, c
    ld l, d
    ld [$35c2], sp
    ret z

    ld d, e
    add hl, de
    jp nz, $d1bf

    sub l
    and b
    adc c
    ld l, d

jr_00a_488f:
    sub d
    ld d, l
    dec h
    ret nc

jr_00a_4893:
    ld d, h
    dec hl
    add sp, -$36
    ld [$8498], sp
    ld h, d
    ld d, $d8
    ld a, $07
    cp a
    ld e, c
    jp nc, Jump_000_3059

    ld e, d
    add c
    ld b, [hl]
    ld b, $22
    add hl, hl
    ld b, e
    add e
    and l
    ld h, $d3
    jr c, jr_00a_48d6

    ld a, [de]
    ld d, $4c
    jr jr_00a_48da

    add h
    ld a, [de]
    ld b, d
    jp z, $a389

    jr jr_00a_488f

    add [hl]
    ld b, d
    add hl, hl
    cpl
    add c
    ld d, l
    ld e, b

Call_00a_48c5:
    db $e3
    ld h, d
    ld l, $ec
    ld [de], a
    ld [hl], l
    and l
    ld d, l
    ld a, [c]
    ld h, e
    sbc l
    ld [hl], d
    and b
    ld l, b
    rla
    rst $20
    ld [hl+], a

jr_00a_48d6:
    inc b
    pop de
    ld d, d
    sub c

jr_00a_48da:
    ld d, c
    add d
    ld h, d
    ld l, l
    ret c

    ld a, [de]
    dec bc
    adc h
    rra
    and d
    sub b
    or b
    sub b
    add d
    ld hl, $a422
    ld l, c
    adc h
    rst $28
    rst $38
    rst $30
    rlca
    rla
    rst $38
    inc b
    ld [hl], $94
    ld e, c
    ld l, b
    db $e3
    and a
    ld e, c
    ld b, c
    rst $20
    or l
    ld b, l
    dec h
    xor b
    inc hl
    ld h, l
    ld b, d
    ld l, d
    dec de
    db $fd
    ld sp, hl
    ld a, e
    ld a, a
    add d
    and e
    ld l, c
    ld b, d
    ld a, [bc]
    ld c, d

Call_00a_4910:
    xor b
    ld a, a
    ldh a, [$8a]
    ld d, b
    call Call_000_2894
    dec l
    and l
    ld a, d
    inc d

jr_00a_491c:
    push de
    di
    ld [hl], a
    ld d, l
    dec bc
    inc c
    ld h, [hl]
    ld h, e
    ld a, b
    inc hl
    add [hl]
    inc b
    dec a
    add c
    jr jr_00a_491c

    rst $28
    ld l, b
    dec d
    cp $3a
    ld h, a
    ld d, d
    ld b, d
    ld h, l
    daa
    ld a, d
    dec hl
    db $eb
    add d
    ld c, e
    rst $00
    inc [hl]
    ld d, d
    cpl
    rst $38
    rst $38
    xor a
    ld a, [$7342]
    and d
    rst $38
    push af
    ld e, a
    rst $38
    ld [hl+], a
    sbc h
    ld a, [hl]
    ld h, c
    di
    rst $38
    add sp, $54
    db $10
    and c
    ld a, [de]
    inc h
    ld sp, hl
    ld c, b
    ld a, e
    rst $38
    rst $10
    inc c
    sub b
    add a
    sbc b
    and c
    db $eb
    rst $38
    sub b
    add e
    cp a
    rst $08
    cp $a5
    cp b
    ld h, h
    ld h, $17
    rst $38
    ldh [$ab], a
    ld e, a
    ld a, a
    rst $18
    ldh a, [$ef]
    pop af
    ld d, a
    xor c

Jump_00a_4977:
    scf
    db $fc
    rst $38
    ldh [$a1], a
    ld c, a
    push af
    cpl
    ld sp, hl
    adc h
    rla
    ld a, d
    rrca
    ld c, d
    dec c
    ld c, b
    ld a, [$8517]
    add a
    db $f4
    ld sp, $1684
    jp $f84f


    ld [hl], c
    ccf
    and h
    ld l, a
    and a
    inc b
    ld a, $b3
    rst $38
    and l
    ld a, l
    jp Jump_00a_4205


    sbc e
    push de
    ei
    push af
    ld hl, sp+$2d
    cpl
    push de
    ld d, [hl]

Call_00a_49a9:
    add hl, hl
    jp nz, $ff87

    add sp, $7b
    ld l, a
    inc sp
    rst $38
    or e
    ld h, $e8
    cp a
    rst $38
    or a
    db $eb
    rlca
    add a
    db $fd
    dec h
    add $2c
    ld b, e
    rst $38
    rst $38
    rst $28
    ld e, l

jr_00a_49c4:
    add a
    adc d
    rra
    add d
    add e
    and $51
    add a
    ld d, a
    db $fd
    ld d, l
    inc [hl]
    ld b, h
    rra
    rst $38
    ld sp, hl
    ret


Jump_00a_49d5:
    inc bc
    ld h, h
    dec l
    ld a, [hl+]
    ld c, d
    dec [hl]
    dec bc
    pop af
    ret nz

    sbc d
    ld c, [hl]
    dec d
    ld d, a
    pop de
    jr c, jr_00a_4a4b

    rst $30
    adc [hl]
    ld h, d
    xor d
    db $10
    add $11
    jp $850d


    ld a, [bc]
    ld c, e
    db $f4
    ld l, e
    inc e
    jr nc, jr_00a_49c4

    add h
    ld b, [hl]
    pop af
    pop hl
    and c
    jp Jump_000_3138


    db $e4
    ld b, d
    adc h
    ld b, d
    ld [hl], h
    add b
    ld b, h
    or c
    ld d, h
    call $cd25
    ld d, b
    db $f4
    or a
    ld h, h
    jr z, @-$20

    ld l, a
    ld e, e
    pop hl
    sbc b
    inc e
    ldh [$96], a
    rst $18
    sub l
    add hl, bc
    ld [$68e2], sp
    adc h
    adc b
    ld d, e
    sbc l
    add c
    ld l, b
    ld d, e
    adc l
    ld a, [bc]
    ld e, b
    and h
    db $e3
    ld e, b
    ld h, h
    sub [hl]
    ld b, $37
    ld a, c
    add c
    ld b, d
    xor b
    ld h, e
    ld [hl], a
    sbc c
    and c
    and l
    add hl, de

jr_00a_4a38:
    db $d3
    ld d, a
    ret c

    add l

jr_00a_4a3c:
    ld h, $0b
    adc l
    rst $18
    or $0e
    cp $ce
    rra
    daa
    add $17
    and e
    add [hl]
    rst $38

jr_00a_4a4b:
    xor d
    jp hl


    ld e, b
    jr jr_00a_4a38

    and c
    xor b
    pop af
    or $69
    jp $fe9a


    ld h, h
    ret z

    db $ec
    ld l, [hl]
    jp hl


    dec bc
    ld [hl], d
    ld [de], a
    ld [hl], d
    ld d, l
    scf
    ld a, c
    ld [de], a
    ld [hl], c
    pop bc
    jr nc, jr_00a_4a3c

    adc h
    sbc h
    sub c
    rrca
    rst $00
    dec sp
    xor a
    push bc
    pop de
    jp nz, $18c1

    cp a
    sbc h
    inc [hl]
    pop bc
    add hl, hl
    dec bc
    rst $00
    ld [bc], a
    pop af
    ld [hl], h
    sbc h
    ld e, b
    ld sp, $2cdf
    ld [hl-], a
    ld a, [bc]
    and c
    daa
    dec c
    ld d, a
    ret nc

    ld b, b
    cp l
    ld [hl], c
    cp [hl]
    add hl, sp
    ld d, d
    ld a, [hl+]
    rst $00
    ld c, h
    ld b, h
    ld a, c
    jr nz, jr_00a_4afe

    and [hl]
    jp hl


    ld hl, $c653

Jump_00a_4a9d:
    ld e, b
    ld l, d
    ld b, [hl]
    db $e4
    pop bc
    ld d, h
    jp hl


    ld c, c
    pop bc
    ld l, h

jr_00a_4aa7:
    ld d, d
    ld d, $c8
    ld c, [hl]
    dec sp
    and c
    jp z, $9458

    ld h, $d1
    add d
    add hl, sp
    dec h
    dec l
    ld e, c
    ld d, c
    add c
    db $e4
    ld h, c
    add c
    ld d, e
    ld e, e
    rst $30
    dec b
    ld [hl+], a
    or b
    ld d, d
    sbc c
    adc d
    adc b
    sub l
    dec [hl]
    and l
    inc b
    ld l, b
    inc a
    jp Jump_000_1463


    sbc c
    ld [hl], $54
    db $10
    ld [hl], h
    sub h
    inc d
    add h
    jp nz, $362e

    xor b
    add h
    dec h
    ld c, $c2
    dec bc
    cpl
    ld sp, $068e
    jr jr_00a_4b3e

    ld a, d
    cp [hl]
    jp nc, $aa13

    ld b, d
    ld h, b
    pop af
    add d
    ld [hl+], a
    inc b
    ld h, b
    db $fc
    db $e4
    adc b
    add d
    sub h
    ld [hl-], a
    ld h, b

jr_00a_4af9:
    ld b, l
    inc [hl]
    ld c, [hl]
    dec d
    ld c, c

jr_00a_4afe:
    ld d, c
    adc b
    xor c
    dec b
    adc $8a
    inc d
    adc [hl]
    inc c
    call Call_000_120c
    db $e3
    add d
    ld d, d
    ld e, a
    ld c, h
    ld d, c
    or h
    inc sp
    sbc l
    ld l, h
    ld h, b
    ld [hl], d

jr_00a_4b16:
    sub d
    ld hl, $a6f8
    ld sp, $226d
    ld b, d
    inc b
    inc d
    jr nz, jr_00a_4aa7

    ld c, $60
    ld a, l

Call_00a_4b25:
    ld a, [hl+]
    ld c, h
    and h
    or a
    sub c
    or c
    reti


    ld c, $ef
    ld b, $21
    ld b, [hl]
    ld sp, $9546
    dec de
    add e
    ld [hl], c
    ld l, d
    daa
    add a
    ld [hl], b
    and e
    inc h
    inc de

jr_00a_4b3e:
    add hl, bc
    ld [hl], d

jr_00a_4b40:
    ld l, d
    jr jr_00a_4b63

    ld [c], a
    add hl, de
    dec l
    dec d
    ld hl, sp+$22
    ld e, d
    ld h, $15
    jp $9692


    and h
    and h
    sbc b
    jr jr_00a_4b16

    sbc h
    jr z, jr_00a_4b67

    add e
    ld h, d
    dec e
    ld [hl+], a
    ld d, d
    jr jr_00a_4af9

    jp c, $8b74

    ld [hl], d
    ld [hl+], a

jr_00a_4b63:
    dec sp
    sub c
    sub d
    push hl

jr_00a_4b67:
    adc l
    sub h

Jump_00a_4b69:
    ld a, b
    ld d, [hl]
    adc b
    sbc a
    jp c, Jump_000_2d8e

    ld a, [hl-]
    and l

Jump_00a_4b72:
    and a
    adc a
    ld a, [bc]
    dec bc
    ld d, b
    add hl, hl
    adc d
    add hl, hl
    ret nc

    and b
    or c
    inc c
    ld a, [hl+]
    ld e, e
    pop de
    ret


    xor e
    add e
    inc bc
    db $10
    sub c
    ld c, $0f
    ld d, l
    inc e
    sub c
    db $10
    xor d
    rra
    ld hl, $f4b0
    inc [hl]
    add [hl]
    ld a, [bc]
    sbc e
    ld [hl], l
    cp b
    ld d, h
    or h
    ld de, $ee10
    jr nc, jr_00a_4b40

    ld d, [hl]
    add hl, hl
    xor h
    ld a, [hl+]
    ld de, $864c
    call nz, $70b3
    jp nc, $c0f9

    xor c
    dec c
    add d
    ld c, h
    db $fd
    jr z, jr_00a_4c2e

    and h
    ld c, [hl]
    ld l, l
    dec d
    ld hl, $4818
    call nc, Call_000_1c2b
    add sp, $2a
    ld h, c
    or e
    sub c
    ld b, c
    ld b, a
    ld b, l
    dec d
    ld [hl], d
    inc [hl]
    ld d, [hl]
    cp $aa
    pop bc
    dec de
    and c
    inc h
    ret


    jr z, jr_00a_4bf8

    ld d, b
    inc h
    add hl, hl
    ret nz

    adc [hl]
    ld c, l
    sub e
    ld a, [hl+]
    ld b, a
    rrca
    ld a, c
    add $86
    sub e
    cp d
    ld e, d
    adc d
    ld d, a
    adc l
    inc e
    ld d, $a4
    reti


    ld [hl-], a
    ld d, l
    ld [de], a
    sbc l
    add hl, bc
    ld d, h
    ld d, [hl]
    ld de, $8b86
    add $28
    dec h
    ld b, c
    ld c, b

jr_00a_4bf8:
    pop af
    ld [$0d51], sp
    ld [de], a
    and c
    ld h, [hl]
    ld d, c
    add h
    ld b, [hl]
    inc d
    jp $edc8


    ld de, $283f
    ld h, [hl]
    ld sp, $8419
    scf
    ld hl, $a262
    or [hl]
    call nz, $5fc6
    dec bc
    ld b, l
    ld d, h
    adc d
    cp l
    xor b
    ld h, b
    push bc
    cp b
    and d
    call nc, $3229
    ret nc

    ld d, c
    add hl, de
    ld [$6121], sp
    cp c
    ld l, $44
    db $10
    jr z, jr_00a_4ca8

jr_00a_4c2e:
    add d
    ld [c], a
    add d
    dec sp
    reti


    dec bc
    sub c
    ld [bc], a
    db $ec
    ld h, c
    ld b, h
    ld hl, $244d

jr_00a_4c3c:
    ld h, h
    sbc $2d
    sbc c
    ld b, a
    inc b
    adc d
    add l
    inc b
    ld c, [hl]
    inc d
    adc h
    ld [hl], c

Jump_00a_4c49:
    nop
    ld b, h
    xor l
    and l
    ld d, h
    add l
    xor d
    sub h
    call $5d70
    ld a, [de]
    adc h
    and h
    jp nz, $c170

    inc c
    adc h
    ld [hl], l
    daa
    ld [hl-], a

Jump_00a_4c5f:
    cp d
    inc c
    jr nz, jr_00a_4c3c

    push bc
    ld h, h
    pop hl
    cp b
    dec d
    rrca
    ld b, a
    ld [hl], b
    ldh [$4e], a
    dec d
    ld d, $a4
    inc l
    db $10
    ld c, [hl]
    ld [$90be], sp
    ld b, l
    jr c, jr_00a_4ce3

    rra
    sbc e
    or [hl]
    adc $1a
    add c
    jp nz, $ba19

    ld [hl], $7d
    cp a
    add d
    and c
    db $e3
    ld b, l
    dec d
    add c
    jr jr_00a_4cdd

    sub d
    sub e
    rrca
    ld l, [hl]
    db $dd
    xor b
    ld h, b
    push hl
    ld e, b
    jp z, $0cc2

    jr z, jr_00a_4cf4

    sbc $38
    ld [hl-], a
    ccf
    xor e
    ld hl, sp-$1c
    xor d
    dec a
    ld a, c
    add d
    sub d
    sub b

Jump_00a_4ca8:
jr_00a_4ca8:
    jp nc, Jump_00a_6a82

    adc e
    ld a, a
    jr nc, jr_00a_4ce1

    inc c
    adc $98
    db $dd
    ld a, [hl]
    jr nc, jr_00a_4ce9

    ret c

    ld [hl], e
    or $68
    ret z

    xor l
    jp c, Jump_000_3b17

    ld h, a
    ld [bc], a
    dec c
    db $ed
    cp $ff
    sbc h
    ld a, [bc]
    ld [de], a

Call_00a_4cc8:
    dec [hl]
    or l
    adc $70
    and c

jr_00a_4ccd:
    inc a
    cp a
    ld a, [$04e7]
    dec bc
    dec a
    db $fd
    rst $38
    sbc h
    dec hl
    ld e, b
    ld hl, $f9f7
    cp d

jr_00a_4cdd:
    adc h
    inc de
    ld l, $17

jr_00a_4ce1:
    rst $00
    dec b

jr_00a_4ce3:
    and l
    ld e, l
    ld [hl], h
    inc l
    ld h, e
    ld a, d

jr_00a_4ce9:
    rst $38
    xor e
    db $eb
    sub e
    dec de
    db $db
    push de
    or b
    rst $00
    dec d
    ld d, c

jr_00a_4cf4:
    ld d, b
    ld b, a
    rst $00
    add b
    ld h, [hl]
    cp c
    add hl, de
    dec d
    inc a
    add [hl]
    ld hl, $3c86
    ld h, l
    sub b

jr_00a_4d03:
    ld l, b
    sub a
    db $d3
    ret nz

    ld d, c
    ld d, d
    jr nc, jr_00a_4d03

    ldh a, [$94]
    ld a, c
    ld e, l
    ld e, a
    push af
    ld b, l
    db $fd
    add hl, sp
    dec d

jr_00a_4d15:
    inc hl
    ld [$af32], a
    dec h
    ld c, [hl]
    rla
    and e
    adc c
    ld d, h
    inc d
    add l
    ld [hl], $78
    jr nc, @-$0b

    dec [hl]
    db $fd
    ld b, c
    db $db
    ld b, c
    inc b
    pop de
    ld c, h
    ld d, e
    ld a, [bc]
    adc d
    and b

Call_00a_4d31:
    or l
    adc l
    sub h
    ret


    jp z, Jump_00a_65a3

    jr c, @-$2e

    ld d, e
    sub l
    ld h, d
    jr nz, jr_00a_4ccd

    ld [$ca28], sp
    adc h
    inc de
    ret z

    or h
    sub h
    cp b
    db $dd
    ld c, [hl]
    ld c, e
    add sp, -$6b
    adc a
    ld [hl+], a
    xor d
    adc [hl]
    ld c, d

Jump_00a_4d52:
    add hl, hl
    ld sp, $86d3
    adc l
    and h
    sbc e
    ld c, h
    dec l
    inc a
    dec c
    ld [$146d], sp
    sbc d
    dec [hl]
    and e

Call_00a_4d63:
    adc c
    ld l, b
    adc d
    ld l, l
    ld c, l
    call c, $a1e6
    add l
    ld a, [bc]
    ld hl, sp-$33
    add hl, de
    jr c, jr_00a_4d9a

    ld hl, $53a2
    ld d, l
    adc d
    sub e
    ld d, h
    ld d, b
    add c
    add hl, hl
    push af
    ld d, l
    ld a, a
    and l
    add hl, sp
    jr z, @+$14

    inc h
    jr jr_00a_4d15

    ld e, d
    adc h
    dec h
    ld e, b
    ld [c], a
    and d
    cpl
    cp $8e
    ld l, l
    rl d
    sbc [hl]
    ld b, d
    jp nz, Jump_00a_67b0

    adc a
    inc h
    ld c, b

jr_00a_4d9a:
    and d
    ret


    ldh [$e3], a
    call nz, $c334
    ld e, $06
    inc a
    add e
    sub c
    ld d, l
    and h
    inc sp
    daa
    dec l
    adc a
    add h
    ld de, $3494
    ld b, [hl]
    sbc h
    sub c
    call nz, Call_00a_698b
    ld a, [de]
    ld l, h
    sub c
    sbc e
    ld hl, $c18d
    ld b, $4e
    sbc d
    ld sp, $c5c3
    ret z

    ld c, b

jr_00a_4dc5:
    ld h, h
    ld b, [hl]
    ld l, h
    ld h, l
    sub a
    sbc b
    ld sp, $6a38
    sbc c
    call nz, $aaa6
    or l
    ld b, [hl]
    db $10
    ld e, h
    ld [hl], b
    ld b, [hl]
    or [hl]
    ld h, b
    call nz, $85a7
    ld c, c
    ld a, [hl+]
    ld c, [hl]
    ld [hl], b

Jump_00a_4de1:
    ld l, c
    bit 0, c
    ld l, d
    add hl, sp
    push bc
    and [hl]
    ret


    add h
    ld b, d

jr_00a_4deb:
    ld h, b
    sbc d
    ret


    ld a, [hl-]
    ld h, c
    ld h, [hl]
    ld c, c
    add e
    dec de
    ld [c], a
    add l
    sbc h
    inc c
    ld h, d
    sbc h
    jr jr_00a_4dc5

    add d
    dec l
    ld l, l
    add hl, de
    ld [hl], c
    push bc
    ld [hl], $42
    cp e
    ld [hl+], a
    sbc d
    rst $00
    inc d
    jr jr_00a_4deb

    adc [hl]
    ld b, h
    add hl, de
    and e
    ret


    jp z, Jump_00a_46c5

    rst $28
    ld de, $ae29
    inc c
    jr z, jr_00a_4e3e

    ret nc

    xor d
    and b
    call z, Call_00a_540c
    ld l, l
    ld c, $a3
    jr nc, jr_00a_4e55

    ld [hl], $44
    ld h, c
    inc [hl]
    sbc h
    sub c
    jr c, jr_00a_4e7f

    ld de, $44cc
    cp b
    ld e, a
    ld c, d
    ld d, h
    db $e4
    and d
    rla
    ld a, [$278e]
    add c
    jp Jump_00a_678e


jr_00a_4e3e:
    add e
    ldh [$81], a
    add hl, sp
    ld l, b
    or a
    sbc b
    db $e3
    and d
    cp [hl]
    dec d
    dec sp
    ld e, [hl]
    ld a, [hl-]
    cp a
    db $e3
    ret nz

    ld c, [hl]
    ld l, d
    ld hl, $b448
    ld h, e

jr_00a_4e55:
    adc d
    rst $20
    add c
    dec d
    inc b
    push hl
    sub a
    add d
    ld d, $16
    adc $5a
    or a
    daa
    ld a, [hl-]
    ld [$3ca6], a
    ld [$67f1], sp
    and h
    and $16
    ld [hl], c
    and b
    ret z

    daa
    ld [hl], e
    add d
    db $76
    ld [hl], b
    ld l, h

jr_00a_4e76:
    db $76
    cp h
    ld [hl], l
    cp a
    ld e, $ba
    ld l, h
    sbc h
    ld l, c

jr_00a_4e7f:
    add [hl]
    adc d
    ld l, $70
    jp c, $cfb7

    add a
    rst $20
    inc l
    dec sp
    ld [hl], e
    rst $00
    ld e, h
    inc d
    ld a, [de]
    ld a, b
    ld de, $a0f0
    ld [hl], a
    cp a
    adc c
    dec d
    dec b
    ld c, a

jr_00a_4e99:
    dec a
    ld a, [$ebb7]
    jp nc, Jump_00a_4fd5

    add hl, bc
    xor d
    cp l
    ld [$9b2f], sp
    xor d
    db $d3
    cp c
    ld d, l

jr_00a_4eaa:
    ld d, d
    jr nz, jr_00a_4e76

    ld d, e
    dec d
    ld c, e
    ld d, l
    jr c, jr_00a_4ed1

    ld e, d
    cp l
    ld d, h
    add h
    jr nz, jr_00a_4f03

    ld l, d

Call_00a_4eba:
    rst $10
    ld a, [$53af]
    ld b, l
    adc c
    ld l, b
    dec d
    ld b, [hl]
    adc b
    sub c
    sub b
    and $53
    ld a, [de]
    adc l
    ld [de], a
    jr jr_00a_4f39

    ld a, b
    ld h, [hl]
    ld h, $ea

jr_00a_4ed1:
    ld h, [hl]
    inc d
    ret


    ld d, e
    inc h
    add h
    add l
    and h
    ld h, l

jr_00a_4eda:
    adc d
    xor d
    ld d, b
    ld d, h
    inc h
    pop bc
    jr jr_00a_4e99

    ld d, h
    ld l, c
    ld [hl], h
    ccf
    db $e3
    dec h
    ld b, $2d
    dec h
    add c
    adc e
    ld d, d
    ld d, e
    ld a, [bc]
    ld h, e
    dec h
    ld b, $60
    sub d
    ld d, b
    ld h, c
    add e
    ld [hl], $4c
    sub $92
    dec h
    jp Jump_00a_7282


    jr jr_00a_4f24

    dec h

jr_00a_4f03:
    ld c, l
    jr jr_00a_4f1b

    ld hl, $76a2
    add d
    sbc c
    jr jr_00a_4eaa

    ld l, b
    cp b
    and [hl]
    ld b, d
    and $1a
    jr jr_00a_4eda

    ld hl, $6860
    ldh [rWX], a
    xor h

jr_00a_4f1b:
    ld [hl-], a
    db $10
    ld e, b
    jp z, Jump_00a_6604

    adc h
    ld d, l
    dec h

jr_00a_4f24:
    ld h, e
    dec [hl]
    ld [$1996], sp
    ld d, [hl]
    adc b
    sub a
    inc sp
    ld b, [hl]
    xor b
    db $dd
    ld l, [hl]
    dec c
    dec b
    ld d, l
    ld c, h
    dec d
    inc a
    dec b
    inc hl

jr_00a_4f39:
    or l
    db $fd
    ld c, d
    ld h, d
    daa
    sub e

jr_00a_4f3f:
    pop bc
    ld [$3706], a
    cp h
    sbc b
    add sp, -$5b
    ld d, [hl]
    adc h
    and h
    add $14
    add sp, -$6d
    ld d, $a5
    ld d, h
    ld h, e
    jr z, jr_00a_4f3f

    xor c
    ld e, d
    ld [hl-], a
    sub b
    sub h
    sub l
    inc a
    ld a, [$f85f]
    ld hl, sp+$7d
    db $fc
    ld c, b
    add d
    ld [$9e27], sp
    ret z

    ld b, b
    ei
    ld c, $60
    adc d
    ld a, b
    ld de, $7a85
    add [hl]
    ret nz

    ret z

    xor c
    rst $18
    and c
    cp $a2
    and c
    ld b, c
    sub $ac
    ld [$a2a5], sp
    sbc h
    inc l
    ld d, a
    rst $38
    db $10
    sbc c
    ret nc

    inc hl
    jr nc, jr_00a_4fe4

    xor c
    xor [hl]

jr_00a_4f8b:
    ld b, e
    pop hl
    ld b, b
    sub $30
    ld c, c
    ld l, b
    and c
    inc h
    add sp, -$23
    sbc d
    ld c, d
    sub d
    add sp, $58
    cp l
    rla
    ld l, l
    and c
    dec d
    ld d, b
    ret


    or d
    ld c, l
    adc $2a
    jr jr_00a_4ff2

    ld d, h
    add h
    ld [de], a
    ld h, a
    ld a, c
    ld l, e
    ld d, d
    sub l
    rrca
    call $cd34

jr_00a_4fb4:
    and c
    ld hl, $549a
    ld e, e
    add e
    dec c
    xor c
    ld l, d
    xor [hl]
    add e
    xor b
    ld d, e
    ld a, [bc]
    ld a, [hl+]

jr_00a_4fc3:
    ld b, d
    ldh a, [$79]
    ld d, c
    add hl, bc
    inc sp
    ld d, l
    ld l, h
    ld c, l
    jr nc, jr_00a_4ff1

    call nz, Call_00a_446f
    ld h, h
    and [hl]
    ld d, c
    cpl

Jump_00a_4fd5:
    jp nc, $8711

    ld de, $4d3c
    db $10
    or b
    inc hl
    push bc
    jp hl


    ld e, h
    jr z, jr_00a_4f8b

    ld [hl-], a

jr_00a_4fe4:
    ld h, l
    dec bc
    inc c
    dec c
    ld [de], a
    sub b
    and $14
    push hl
    ld c, c
    jr z, jr_00a_4fb4

    ld b, h

jr_00a_4ff1:
    xor [hl]

jr_00a_4ff2:
    call z, Call_000_1842
    inc hl
    ret


    and [hl]
    add d
    jr jr_00a_4fc3

    jr z, jr_00a_5051

    jr z, jr_00a_5051

    ei
    ld b, d
    xor [hl]
    adc h
    ld sp, $d9be
    dec bc
    rst $30
    db $fd
    ld a, [bc]
    jp nc, $48b5

    ld a, h
    ld [hl], e
    ld h, h
    ldh a, [rNR44]
    sub c
    ld hl, $6918
    ld a, [hl+]
    sbc h
    pop af
    jr c, jr_00a_505f

    jr c, jr_00a_4fc3

    ld [hl], b
    ld [hl], e
    ld [hl], c
    jp c, $86a1

    or b
    add hl, hl
    adc a
    inc hl
    rst $20
    ld c, h
    xor b
    ld d, d
    ld de, $4118
    ld h, $12
    ld sp, $48dd
    ld b, [hl]
    ld [hl], d
    sub [hl]
    rst $20
    and d
    push de
    daa
    call nz, Call_00a_4400
    cp b
    rla
    cp $53
    sbc c
    rst $38
    db $fd
    ld a, [de]
    ld d, e
    add [hl]
    ld a, [$4e2a]
    daa
    push bc
    rst $38
    ld c, [hl]
    ld b, [hl]
    rst $38
    rst $38

jr_00a_5051:
    db $fc
    db $e3
    rst $38
    rst $38
    rst $38
    di
    adc a
    rst $38
    rst $38
    rst $38
    adc b
    adc l
    rst $38
    db $fc

jr_00a_505f:
    ld [hl], d
    ret c

    reti


    ld e, l
    ld b, $22
    xor d
    adc l
    ld [$50aa], a
    ld l, b
    ld [hl+], a
    call nc, Call_00a_7dda
    ld b, c
    db $fd
    ld d, $86
    adc h
    ld a, [de]
    rlca
    rst $30
    cp $60
    adc [hl]
    add hl, bc
    xor a
    rst $38
    add sp, $18
    db $e3
    sbc a
    xor d
    ld d, $3a

jr_00a_5084:
    ld l, d
    xor b
    db $f4
    ld [hl], a
    ld [hl-], a
    ld [hl], h
    cp [hl]
    dec hl
    ld a, [$9c9c]
    inc l
    ld b, l
    ld l, a
    sbc e
    xor d
    ld c, l
    and a
    scf
    ld [hl], b
    ld h, h
    ld a, c
    call Call_000_3986
    ld e, $73
    ld h, c
    adc [hl]
    xor a
    inc e
    db $db
    and c
    inc e
    ret z

    and c
    adc e
    jp z, Jump_00a_46a5

    ld a, h
    pop bc
    add l
    db $10
    ret nz

    ret z

    and d
    sbc c
    ld b, c

Jump_00a_50b5:
    ld d, $af
    add h
    inc c
    ld b, h
    ld h, e
    and b
    cp a
    di
    db $fc
    ld de, $37c5
    ei
    ld [hl], b
    ld sp, $07cb
    ld a, [$7784]
    rst $00
    and d

jr_00a_50cc:
    ld h, [hl]
    or c
    ld d, l

jr_00a_50cf:
    ld c, d
    ld d, d
    sbc a
    ld c, [hl]
    ld [hl], l
    xor b
    add [hl]
    ld hl, $46ff
    xor d
    adc l
    ld d, l
    ld c, b
    ld h, d
    ret c

    and l
    ld d, b
    ld d, b
    xor d
    ld d, e
    ld [hl], $25
    ld [hl-], a
    call z, Call_00a_576d
    ld d, e
    dec d
    cp l
    ld c, e
    ld b, d
    jr nc, jr_00a_5084

    jr jr_00a_5104

    adc b
    or l
    ld h, b
    ld [hl], d
    ld h, h
    jp nz, Jump_000_244c

    ld d, l
    jr c, jr_00a_5116

    dec sp
    ld d, b
    ld c, h
    and e
    rla
    ei

jr_00a_5104:
    db $e3
    ld c, l
    ld h, [hl]
    db $db
    add hl, sp
    sub h
    sub $35
    adc c
    adc d
    sub d
    db $dd
    ld e, c
    dec b
    dec h

jr_00a_5113:
    adc h
    rst $28
    adc l

jr_00a_5116:
    push de
    adc b
    adc b
    xor b
    rra
    and h
    sub a
    ld c, d
    ld c, l
    and d
    ld de, $6abc
    jr nc, jr_00a_50cf

    add hl, bc
    ld c, d
    sub [hl]
    jr nc, jr_00a_50cc

    jr z, jr_00a_515d

    push hl
    cp $25
    rst $38
    ld c, [hl]
    sbc e
    ld a, [c]
    xor b
    cp d
    daa
    sub h
    ld d, [hl]
    sub e
    push bc
    adc c
    ld h, e
    ld a, [hl]
    dec h
    inc b
    ld d, h
    jp z, $22da

    inc b

jr_00a_5144:
    xor h
    push bc
    inc d
    ld a, l
    adc b
    ld b, [hl]
    add hl, bc
    ld a, [hl+]
    ret z

    sbc a
    ld h, d
    ld h, h
    and h
    sbc c
    ld a, b
    ld a, [de]
    sbc b
    sbc c
    ld e, d
    inc b
    ld [hl+], a
    ld e, h
    ret


    adc h
    rla

jr_00a_515d:
    jp nc, $fa12

    sub b
    ld a, [hl]
    add c
    ld b, e
    jr nc, @-$72

    jr jr_00a_5113

    jp c, $ad90

    dec h
    ld a, [bc]
    and d
    ld [hl], c
    ld b, l
    add hl, hl

jr_00a_5171:
    ld c, e
    ld l, d
    or l
    ld a, c
    ld d, c
    sub l
    ld e, b
    add h
    add h
    sbc c
    ld hl, $952e
    ld a, d
    ld b, l
    adc d
    xor b
    cp d
    adc h
    ld a, [hl+]
    adc h
    ld a, e
    ld d, h
    ld d, $3c
    ld e, e
    ld b, c
    ld a, [bc]
    and e
    ret


    cp a
    ld hl, sp-$16
    sbc b
    and h
    ld h, $d1
    jp nc, $0884

    or c
    ld d, d
    call nz, $e141
    ld a, [de]
    and d
    sub b
    pop bc
    db $fc
    add $37
    db $e4
    ld e, a
    add $6c
    ld c, d
    jr z, jr_00a_522b

    ld [bc], a
    ld h, l
    rlca

Call_00a_51af:
    ldh [$d4], a
    sub h
    adc e
    jr nz, jr_00a_5144

    xor b
    or a
    add sp, $49
    sub a
    push bc
    jp z, $cac0

    ld b, h
    rrca
    sub e
    scf
    add sp, $48
    and b
    adc d
    ld c, d
    xor [hl]
    ld b, e
    db $fc
    ld [c], a
    add a
    and $1f
    db $e4
    jr nz, jr_00a_5171

    db $e4
    ld a, a
    rst $38
    scf
    db $e4
    ld e, d
    db $fc
    add hl, bc
    ld c, a
    ld sp, hl
    ld d, h
    inc e
    ld b, a
    rst $38
    rst $18
    xor c
    ld e, a
    sbc d
    call nz, Call_000_22a8
    sub b
    cp a
    rst $30
    rst $38
    and l
    add $b2
    add l
    dec bc
    ld a, [$7185]
    dec [hl]
    ld c, b
    dec h
    ld c, b
    and [hl]
    inc l
    ld b, d
    and e
    jp $99e0


    ld e, d
    sbc b
    ld b, [hl]
    ld [hl], $46
    ld b, [hl]
    ld [$9649], sp
    cp b
    ld a, c
    rst $00
    and h
    ld d, c
    adc h
    ld d, l
    rst $38
    rst $38
    ld a, [bc]
    db $10
    ld h, $4f
    sbc e
    ld_long $ff2f, a
    add sp, $2e
    adc d
    ld h, h
    rst $18
    xor d
    ld b, h
    dec hl
    rst $38
    ei
    push de
    inc h

jr_00a_5223:
    ld d, a
    and [hl]
    ld c, b
    rst $38
    xor b
    dec hl
    db $fd
    rst $38

jr_00a_522b:
    rst $38
    ld a, [$be82]
    rra
    add d
    ld e, e
    adc l
    ld e, a
    set 6, b
    ccf
    ld d, l
    ld e, d
    adc e
    ldh a, [$5f]
    sub [hl]
    cp $42
    inc d
    dec a
    add l
    call nc, $dea4
    rla
    ret nc

    inc hl
    inc de

jr_00a_5249:
    ld a, l
    ld de, $2018
    sub e
    ld a, [hl]
    ld b, e
    adc e
    ld h, $30
    reti


    ld [$1246], sp
    ld c, d
    cpl
    ld b, h
    or a
    inc de
    jr nz, jr_00a_5223

    ld c, b
    ld c, c
    ld [hl], b

Call_00a_5261:
    ld e, l
    adc d
    db $f4
    ld a, b
    adc d
    ld c, e
    ld [hl], c
    db $e4
    jp z, $e6a9

    ld b, e
    dec e
    add b
    ld b, h
    or h
    ld a, l
    dec sp
    dec d
    dec bc
    ld b, c
    ld d, h
    ld [c], a
    ld l, b
    ld a, [hl-]
    ld b, e
    db $e4
    ld h, h
    db $e4
    cp d
    jp nz, Jump_000_1f62

    db $d3
    dec d
    ld d, d
    ld h, a
    push de
    ld d, $26
    jr nc, jr_00a_5249

    add hl, bc
    ld b, c
    adc d
    sub h
    jp c, $0409

    jr z, @-$35

    ld c, l
    xor h
    add h
    db $ed
    ld a, d
    dec d
    jr nc, jr_00a_52ef

    adc l
    ld [c], a
    ld e, [hl]
    and b
    ld c, c
    ld c, l
    jr @-$67

    or b
    ret


    cp a
    ld c, [hl]
    ld b, $26
    dec l
    ld d, h
    pop de
    inc e
    sub h
    pop bc
    xor d
    dec [hl]
    sub a
    ld h, $55
    ld h, e
    ld [c], a
    and a
    sbc e
    add hl, hl
    ldh [$58], a
    scf
    jp hl


    rst $10
    rst $38
    rst $00
    ld [de], a
    ld h, a
    ld b, l
    add $be
    sbc c
    rst $00
    rla
    ld h, [hl]
    adc h
    ld [hl], b
    pop hl
    add hl, de
    cp c
    ld e, c
    adc $fc
    db $eb
    rst $20
    ld [hl-], a
    xor e
    ld a, a
    rst $00
    ld l, $ff
    rst $20
    ld d, a
    rst $38
    pop hl
    ld d, h
    ld l, c
    ld h, $17
    rst $38
    inc e
    ld [hl], c
    ld a, [c]
    ldh [rPCM34], a
    cp [hl]
    ld sp, $4fae
    ld b, l
    pop af
    add [hl]

jr_00a_52ef:
    ld c, a
    dec [hl]
    db $f4
    xor d
    ld h, h
    sbc $91
    ld a, b
    db $e3
    ld l, h
    jr nc, jr_00a_5363

    ld d, b
    ld b, l
    ld [hl], $76
    ld c, [hl]

jr_00a_5300:
    ld d, l
    ld b, d
    ld h, d
    ld l, b
    inc h
    ld d, e
    ld l, d
    add c
    ld c, [hl]
    dec de
    adc h
    sub h
    jp nz, Jump_00a_54aa

    xor c
    add hl, bc
    ld [$89de], sp
    ld e, d
    and d
    inc [hl]
    inc hl
    ld c, d
    ld c, b
    xor b
    inc de
    ld a, d
    ld h, $9f
    ret nc

    and b
    add d
    xor c
    ld d, e
    ld a, [de]
    dec h
    scf
    ld d, b
    or h
    adc d
    and b
    ld d, e

jr_00a_532c:
    ld c, d
    ld c, h
    sbc b
    db $dd
    ld b, d
    ld d, $99
    dec l
    ld c, l
    inc hl
    inc d
    and h
    inc d
    adc $1b

jr_00a_533b:
    ld [hl], e
    cpl
    ld c, h
    sub l
    inc sp
    sbc a
    jr nc, jr_00a_5300

    ld a, [hl+]
    and d
    jr z, jr_00a_5357

    sub e
    dec b
    sub $2e
    ld b, $d4
    jp hl


    and [hl]
    ld d, h
    ld e, a
    and [hl]
    inc sp
    add [hl]
    dec sp
    daa
    ld d, a

jr_00a_5357:
    pop bc
    ld b, $0c
    jp c, Jump_000_3a22

    ld e, l
    ld b, c
    add hl, bc
    ld b, [hl]
    ld l, $8c

jr_00a_5363:
    sub e
    sbc l
    ld l, l
    ld a, [de]
    add c
    ld [$a915], sp
    or [hl]
    add hl, hl
    cpl
    sub h
    jp c, $a86a

    adc b
    ld l, b
    jp nz, Jump_000_21be

    call z, $e41e
    pop bc
    or a
    call nc, $9020
    ld l, b
    adc $e9
    ld l, d
    adc h
    inc d
    jr nz, jr_00a_532c

    dec b
    dec c
    ld hl, $9404
    ldh [$af], a
    add sp, -$72
    cp $0f
    ld d, d
    ld hl, $92eb
    jr nz, jr_00a_53fb

    or d
    ret nc

    adc d
    and h
    ld d, b
    sub b
    add c

jr_00a_539f:
    dec d
    dec sp
    ld e, a
    ld l, [hl]
    jr nc, jr_00a_533b

    jr jr_00a_533b

    rst $28
    cp c
    ld sp, $4250
    ld [hl+], a
    jr jr_00a_539f

    xor c
    sub d
    dec e
    ld [$8fc1], sp
    ld a, [de]
    ld [hl], l
    ld [hl+], a
    dec a
    add hl, sp
    ld h, l
    dec l
    adc a
    ld a, [hl-]
    and l

jr_00a_53bf:
    ld e, d
    inc a
    ld e, l
    pop af
    cp b
    add hl, sp
    jp hl


    cp h
    call nc, $959e
    inc h
    ret


    pop bc
    and h
    cp c
    add $8d
    ld d, c
    ld a, [de]
    ld b, d
    ld [hl], b
    ld [hl-], a
    ld [hl], e
    ld a, [c]
    push bc
    ld sp, $c129
    inc c
    add hl, bc
    pop bc
    sub d
    sub a
    add d
    ld h, d
    or b
    and l
    ld l, b
    ld b, c
    ld b, [hl]
    ld hl, sp-$3d
    ld c, d
    sub d
    and d
    db $ed
    ld de, $c640
    ld c, $6f
    add e
    ld de, $462a
    jr nc, jr_00a_53bf

    or d
    dec [hl]

jr_00a_53fb:
    inc e
    ld [$a54c], sp
    ld b, b
    add h
    ld [hl], d
    ld c, c
    call nz, $b2c5
    ld c, h
    jr z, jr_00a_5430

    ld [hl+], a

Call_00a_540a:
    ld h, d
    sub a

Call_00a_540c:
    dec b
    dec d
    add hl, hl
    ld [$7141], sp
    push bc
    ld b, l
    ld l, b
    ld b, [hl]
    ld [hl], $61
    ld de, $9321
    inc d
    cp c
    sub [hl]
    ld [$1de1], sp
    ld [de], a
    jr c, @+$43

Call_00a_5424:
    scf
    inc c
    ld e, d
    ld b, a
    dec b
    ld b, b
    sbc l
    ld d, $09
    ld a, h
    inc d
    sub b

jr_00a_5430:
    or b

Call_00a_5431:
    ld b, h
    db $dd
    ld b, a
    ld e, h
    adc e
    jr z, jr_00a_548a

    rrca
    inc b
    ld a, [hl+]
    rra
    or $73
    and l
    ld [hl], l
    db $10
    and e
    add h
    dec e
    ld d, d

jr_00a_5445:
    add a
    and $19
    pop bc
    jp $34cc


    and [hl]
    ld l, b
    ld d, b
    ld h, c
    ld l, c
    adc [hl]
    and $2e
    ld a, [hl+]
    ld c, l
    ld [bc], a
    ld sp, $359c
    ld [hl], a
    add hl, de
    ld d, b
    add hl, hl
    ld d, c
    db $10
    ld c, d
    ld b, l
    sbc h
    ld [hl], b
    call nz, Call_000_2264
    add h
    inc [hl]
    and h
    ld l, d
    sub d
    sbc [hl]
    dec c
    inc [hl]
    ld e, d
    xor [hl]
    ld a, [hl+]
    ld [hl], $78
    dec bc
    ld b, c
    rla
    ld b, h
    ld b, h
    ld e, c
    ldh [$ac], a
    ld l, c
    ld b, $84
    ld a, b
    or b
    ld l, b
    ret z

    ld h, e
    and l
    rst $00
    adc a
    ld h, h
    ld d, c
    add d

jr_00a_548a:
    ld de, $61e6
    jr z, jr_00a_54d1

    and c
    ld e, $74
    dec de
    ld d, b
    ld b, a
    adc d
    ld b, h
    or a
    ld e, e
    push de
    dec b
    ld d, e
    adc c
    ld [$b71a], a
    db $ec
    ldh [$a3], a
    ld c, d
    di
    ld h, a
    adc a
    db $76
    adc a
    ld a, l

Jump_00a_54aa:
    ld c, a
    ld b, l
    adc l
    xor b
    rst $00
    xor d
    and e
    add [hl]
    push af
    ld d, d
    dec h
    dec b
    add hl, sp
    ld a, [hl+]
    cp a
    db $fd

jr_00a_54ba:
    rst $30
    inc a
    ld [$5dfa], sp
    cp d

jr_00a_54c0:
    inc de
    jr nz, jr_00a_5445

    add hl, hl
    ret


    inc bc
    and c
    dec b
    ret c

    daa
    ld b, $55
    jp hl


    jr nc, jr_00a_5535

    ret


    adc a

jr_00a_54d1:
    rst $20
    ld l, $60
    cp $72
    ld [hl], c
    ld c, a
    db $fc
    ld [hl], h
    cp a
    pop af
    call $f7bb
    dec e
    inc a

jr_00a_54e1:
    ld de, $66db
    ld e, a
    add l
    add d
    ld l, a
    jr nc, jr_00a_5513

    add d
    add d
    sbc h
    ld d, b
    jp z, $15aa

    and a
    ldh [$a0], a
    ld h, [hl]
    cp [hl]
    jp hl


    ld c, a
    dec [hl]
    add $3c
    and [hl]
    add d
    jr @+$57

    ld c, a
    add hl, bc

jr_00a_5501:
    ld [$6b88], sp
    ldh a, [$94]
    rst $20
    ld d, h
    cp b
    sub h
    jp nc, Jump_00a_7693

    sub c
    add d
    ld [hl+], a
    adc a
    ld a, [bc]
    and h

jr_00a_5513:
    ld hl, $5242
    ld d, [hl]
    dec h
    ld d, e
    jr jr_00a_54e1

    and a
    add [hl]
    ld d, e
    ld a, [bc]
    adc d
    ld h, d
    jr z, jr_00a_5501

    xor c
    jr jr_00a_54ba

    add hl, hl
    inc sp
    ld c, e
    adc l
    jp nc, $2529

    cp b
    ld [hl+], a
    sub l
    inc d
    jp nc, $ba30

    ld c, h

jr_00a_5535:
    ld e, d
    jr jr_00a_54c0

    adc b
    ld h, l
    ld b, $21
    adc h
    jp hl


    call z, $cd6c
    ld hl, $aa62
    sub h
    xor d
    call nc, Call_00a_74d5
    add h
    ld e, l
    ld b, l
    and l
    dec hl
    ld c, c
    ld a, e
    ld d, d
    ld e, d
    xor b
    jr nz, @-$75

    ld d, b
    sub b
    db $ed
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    xor e
    db $ec
    adc $ec
    dec [hl]
    add [hl]
    ld l, a
    ld e, l
    ld a, [hl]
    inc [hl]
    ld e, b
    adc $a6
    db $e4
    add $a3
    adc [hl]
    and h
    jp $8586


    ld d, $39
    call nc, $a494
    xor d
    inc d
    inc hl
    and l
    ld c, h
    ld d, e
    dec bc
    ld d, b
    ld c, [hl]
    xor e
    rst $10
    ld e, b
    adc $a3

Jump_00a_5583:
    cp d
    and e

Call_00a_5585:
    db $e3
    rst $30
    db $dd
    daa
    and e
    ld e, $5b
    add h
    ld [hl], $28
    and a
    add h
    ret nz

    sub [hl]
    add a
    and d
    sbc h
    jp hl


    add h
    add hl, bc
    add a
    db $d3
    or b
    ld l, c
    ret nz

    and e
    ld d, c
    add hl, sp
    sub h
    ld d, h
    ld a, [de]
    ld de, $2ebe
    ld b, h
    ld a, [bc]
    ld sp, $6354
    ld a, b
    ld h, [hl]
    ld a, [hl-]
    sub b
    adc h
    sub c
    ld [hl], b
    ld h, l
    ld [hl+], a
    call nc, $e693
    ld a, b
    jp nc, Jump_00a_4d52

    dec b
    ld a, [hl+]
    ld h, e
    inc de

jr_00a_55c0:
    add d
    ld h, b
    add h
    sub c
    inc de
    ld e, d
    adc h
    dec l
    ld c, h
    sbc c
    ld l, h
    ld h, c
    ld [bc], a

jr_00a_55cd:
    ld de, $648d
    push bc
    sub $0b
    dec bc
    ld [hl], c
    sub d
    sub $98
    ld d, h
    ld l, $0d
    ld a, [bc]
    dec bc
    push de
    jp nc, $8429

    rla
    ld [bc], a
    ld h, [hl]
    call z, $084c

jr_00a_55e7:
    jr nc, jr_00a_55cd

    bit 1, c
    ld e, b
    jr z, jr_00a_55c0

    inc l
    xor e
    add d
    or h
    di
    ld [bc], a
    ld [hl-], a
    sub d
    sbc c
    jp $aa8d


    jr z, @+$43

    ld d, b
    jr z, jr_00a_55c0

    inc h
    ld a, [c]
    ld [hl-], a
    ld l, d
    add h
    ld c, h
    dec c
    inc b
    add [hl]
    dec d
    ld b, c
    dec d
    inc e
    ld [hl], b
    ld a, [hl+]
    ld b, l
    db $e3
    ld b, h
    jr z, jr_00a_55e7

    ld [hl], h
    ld h, h
    call nz, $6578
    ld c, d
    ld sp, $98d5
    ld hl, $4198
    cp [hl]
    ld [hl], l
    ldh [$cd], a
    sbc d
    ld b, c
    dec e
    pop de
    ld a, [c]
    jr nz, jr_00a_566e

    or a
    cp l
    ld d, e
    xor l
    ld b, d
    xor a
    ld d, l
    ld d, e
    ld a, e
    db $d3
    ld a, [de]
    ld a, a
    inc sp
    cp a
    ld d, b
    or b

jr_00a_563a:
    sub e
    ld [$48d5], sp
    adc b
    ld c, [hl]
    ld b, a
    db $f4
    push bc
    jr c, @-$29

    inc sp
    ld c, h
    ld d, e
    dec sp
    di
    inc b
    push bc
    inc [hl]
    or d
    sub $14
    ld d, [hl]
    adc l
    ld l, e
    cp $8a
    xor b
    rst $20
    and b
    call $85b3
    inc [hl]
    ld d, h
    db $e3
    sub d
    push de
    and a
    add hl, sp
    inc e
    ld d, $22
    xor b
    push hl
    and e
    rst $08
    sbc $7e
    ld a, b
    adc l
    ld d, h

jr_00a_566e:
    db $f4
    ld l, [hl]
    add d
    and e
    sbc b
    ld e, d
    ld l, d
    add sp, $7e
    ld [hl], l
    ld b, b
    call nz, $cd49

jr_00a_567c:
    ld b, b
    sbc l
    or h
    sbc l
    call z, $a662
    ld sp, $52a5

jr_00a_5686:
    xor e
    jr jr_00a_563a

    ret


    ld b, [hl]
    inc c
    and a
    ld [hl+], a
    ld sp, $1a0c
    inc d
    ld [hl], c
    call nz, Call_00a_5431
    sbc h
    or h
    ld a, h
    ld a, b
    ld [hl], a
    cp [hl]
    ld a, l
    ld a, a
    call nc, $1df2
    ld d, l
    cp c
    ld b, l
    ld l, c
    inc a

jr_00a_56a6:
    ld h, l
    and b
    and l
    dec h
    ld b, [hl]
    add hl, bc
    add hl, sp
    ld d, a
    rst $38
    call nc, $c1bb
    ld d, b
    or a
    pop bc
    ld a, c
    ld [$7ee1], sp
    push de
    ld [hl+], a
    or h
    jp nz, $88aa

    cp [hl]
    ld a, [hl+]
    dec [hl]
    ld e, [hl]
    ld b, $26
    sub h
    ld l, l
    jr c, @+$57

    ld d, d
    inc de
    daa
    and b
    ld h, e
    inc [hl]
    add l
    jr c, jr_00a_567c

    dec [hl]
    ld d, d
    inc hl
    ld l, c
    dec d
    ld [hl], $68
    inc d
    ld [c], a
    adc h
    sub d
    and l
    inc b
    pop de
    ld l, l
    add hl, hl
    jr nc, jr_00a_5686

    and e
    dec de
    sub e
    ld [$41c9], sp
    adc [hl]
    inc h
    adc [hl]
    or h
    cp c
    ld sp, $5595
    add d
    adc h
    inc de
    ld a, [bc]
    ld a, [bc]
    dec c
    ld h, [hl]
    ld sp, hl
    add hl, sp
    sbc d
    xor b
    ld [de], a
    inc de
    dec h
    ld [hl+], a
    ld d, h
    ld a, [de]
    inc b
    ld [c], a
    ld b, d
    ld a, [hl+]
    add d
    sub b
    adc d
    and e

jr_00a_570b:
    ld c, b
    db $e3
    ld l, b
    jp nz, $828a

    jr c, jr_00a_56a6

    adc [hl]
    ld b, d
    adc c
    and d
    jp nc, $c1d4

    ld d, b
    adc b
    adc [hl]
    jr jr_00a_5732

    scf
    and b
    adc e
    and c
    ld [hl], h
    ld de, $3942
    ld h, h
    pop bc
    ld c, h
    sub h
    inc d
    ld hl, $8e81
    ld h, $a0
    sub b

jr_00a_5732:
    sub b
    ld b, l
    ld c, l
    ld [c], a
    dec [hl]
    ld sp, $1463
    sub l
    ld [$b494], sp
    pop bc
    ld c, c
    ld h, e
    rla
    ld h, e
    inc b
    jp $8ae4


    dec sp
    ld h, d
    sbc h
    ld h, e
    ld a, [bc]
    ld [hl+], a
    ld b, l

jr_00a_574e:
    ld b, [hl]
    jr jr_00a_570b

    ld hl, $6236
    inc hl
    ld a, [hl+]
    ld h, $6e
    add [hl]
    ld sp, $09b5
    inc sp
    adc c
    adc l
    dec l

jr_00a_5760:
    ld hl, $6388
    ld c, d
    ret nc

    sub d
    ld d, [hl]
    add l
    db $e3
    ld a, e
    ld [c], a
    jr jr_00a_574e

Call_00a_576d:
    cp l
    ld [$7821], a
    db $e4
    xor d
    add hl, sp
    xor e
    rst $38
    add sp, -$07
    sbc l
    db $f4
    ld [hl-], a
    ret nz

    sbc [hl]
    ld c, d
    sub d
    jp nc, $8242

    ld a, b
    ld hl, sp-$03
    adc a
    jp c, $a790

    ld [hl-], a
    ld [de], a
    xor h
    add hl, bc
    ld [hl], l
    xor [hl]
    jp c, $ae0f

    ld [hl-], a
    ld [hl], c
    jr nc, jr_00a_57fb

    ret nz

    sbc b
    call nz, $d2c4
    sub e
    sbc e
    inc l
    rrca
    add hl, de
    ld c, c
    push bc
    ld a, [bc]
    cp h
    sbc c
    ret nc

jr_00a_57a6:
    cp h
    add hl, hl
    sbc h
    ld [hl], c
    ld [hl], l

Jump_00a_57ab:
    ld b, e
    jr jr_00a_5760

    inc [hl]
    ld c, e
    ld d, l
    add hl, hl
    ld sp, $f1e0
    inc d
    ld d, h
    dec e
    inc l
    add d
    ld de, $6ab5
    ld c, [hl]
    ld h, c
    and b
    sub c
    ld l, d
    ld b, h
    add hl, bc
    db $10
    db $d3
    ld a, [de]
    ld b, h
    ld d, a
    pop af
    adc d
    add hl, bc
    ld [hl], l
    xor b
    ld b, b
    sub e
    inc b
    inc c
    sbc b
    ld c, a
    ld [c], a
    xor b
    ld h, [hl]
    inc e
    and e
    call nc, Call_00a_763f
    call nc, $a1a4
    ld d, l
    ld c, c
    ld l, e
    ld e, c
    adc d
    add h
    ld b, l
    jr c, jr_00a_581a

    db $10
    ld e, l
    db $10
    sub b
    sub l
    rla
    ld b, h
    ret


    ld e, b
    add $51
    add d
    inc [hl]
    ld d, d
    ld c, h
    ld d, a
    jr jr_00a_5861

    ld [de], a

jr_00a_57fb:
    ld [hl], e
    ld b, l
    ld h, [hl]
    ld c, c
    jr c, jr_00a_57a6

    xor b
    ld b, [hl]
    db $10
    xor c
    inc l
    ld b, h
    ld d, h
    ld d, e
    sub c
    sub e
    ld a, [bc]
    dec l
    inc b
    inc l
    ld [$913a], sp
    ld a, [bc]

Call_00a_5813:
    ld a, [hl+]
    or c
    ld l, b
    xor c
    sub [hl]
    inc d
    dec [hl]

jr_00a_581a:
    ld b, e
    xor $f2
    or h
    ld b, d
    inc c
    ld c, h
    add hl, de
    ld [hl], $11
    and h
    ld h, d
    cp l
    ld [bc], a
    ld de, $2828
    dec h
    ld h, e
    xor e
    and c
    and [hl]
    sbc l
    ld [de], a
    db $f4
    ld b, d
    ld de, $1009
    add hl, sp
    ld a, a
    ldh a, [$da]
    ld de, $7a29
    adc d
    sub h
    add [hl]
    or h
    call nz, Call_000_3666
    inc d
    adc h
    ld sp, $5d1c
    and d
    and h
    jp z, Jump_000_13ad

    add $56
    inc de

Jump_00a_5852:
    pop bc
    ld e, d
    inc e
    ld h, e
    ld b, b
    add l
    and e
    add hl, de
    pop af
    and l
    ld de, $7444
    ld l, c
    inc b

jr_00a_5861:
    add l
    and [hl]
    ld c, l
    dec de
    call z, Call_000_110a
    add $c1
    sub [hl]
    add h
    ld [hl], d
    jp $d01c


    dec [hl]
    ld c, b
    ld b, a
    call z, $4480
    ld sp, $f55b
    add hl, sp

jr_00a_587a:
    sbc [hl]
    ld [hl+], a
    xor a
    push de
    cp $54
    ret


    add d
    ld sp, $5497
    ld a, [hl+]
    adc h
    jr @-$76

    push bc
    sub b
    ld d, b
    and h
    push bc
    dec h
    inc sp
    sub h
    add hl, hl
    ld sp, $4d8a
    jr nc, jr_00a_58df

    sub e
    ld b, [hl]
    inc sp
    cp h
    ld [de], a
    inc de
    jr c, jr_00a_587a

    rst $00
    cp b
    pop bc
    ld h, e
    ld b, [hl]
    jr c, jr_00a_58ba

    sub $21
    ld b, $34
    or h
    push bc
    add l
    or $55
    adc h
    cpl
    jp $a006


    ld e, [hl]
    dec bc
    ld d, b
    adc h
    ldh [$5a], a

jr_00a_58ba:
    rst $38
    add sp, -$3e
    xor b
    ld a, [$8259]
    ld a, [de]
    xor c
    push de
    rst $38
    ld a, a
    and h
    ld a, [hl+]
    ld l, l
    inc de
    ld a, d
    rla
    dec b
    cp $1f
    sbc b
    push bc
    ld hl, $2a79
    ld b, l
    ld a, c
    add d
    ld h, b
    pop af
    rrca
    jp hl


    ld d, [hl]
    ld l, a
    ld l, c
    rla

jr_00a_58df:
    jp hl


    add $fa
    ld d, $8d
    db $ec
    ld [hl], b
    rst $38
    db $e3
    ld sp, hl
    dec de
    ld a, [bc]
    ld c, $60
    cp a
    ldh a, [$3f]
    dec bc
    ld sp, hl
    jr jr_00a_596d

    ld l, l
    cp $0f
    jp nz, $c0ff

    ld hl, sp+$79
    sbc l
    cp $bf
    db $fc
    scf
    rst $08
    sbc b
    ld d, b
    dec l
    ld a, a
    db $f4
    ld h, c
    ld d, h
    ld h, l
    rra
    db $76
    ld [hl], a
    cp [hl]
    ld a, c
    ld a, d
    xor d
    ld d, e
    ret nz

    ld e, a
    rst $38
    push af
    cp e
    ld [hl], l
    ld d, l
    ld [$a8ee], sp
    add $ae
    ld l, b
    cp d
    dec sp
    ld l, b
    sbc $d5
    ld d, e
    pop bc
    ld e, c
    jr c, jr_00a_593b

    ld l, c
    ld c, [hl]
    push bc
    ld d, [hl]
    sub l
    ld d, l
    ld l, d
    and [hl]
    ld a, [bc]
    and l
    adc $a5
    ld d, d
    inc de
    ld a, b
    inc hl
    or l
    ld [hl], l

jr_00a_593b:
    ld d, a
    and d
    sbc c
    ld hl, $ec94
    ld a, c
    adc c
    and d
    sbc c
    ld b, c
    rlca
    ld h, $8e
    ld h, l
    cp b
    inc d
    ld l, b
    add h
    sub h
    cp d
    adc [hl]
    add l
    db $fd
    ld h, $f8
    adc d
    adc c

jr_00a_5957:
    xor b
    sbc d
    adc [hl]
    ld d, a
    and b
    and e
    ld c, d
    ld [$53d1], sp
    sub c

Jump_00a_5962:
    ld c, [hl]
    and l
    ret c

    rst $28
    ld d, d
    ld e, a
    ld c, b
    ld d, b
    and e
    jr @+$25

jr_00a_596d:
    add c
    dec l
    ld [hl+], a
    xor b
    jp nc, Jump_00a_66e2

    add c
    jr jr_00a_598c

    ld d, l
    ld d, h
    ld e, $89
    add d
    sub e
    ld c, $81
    ld d, e
    ld c, d
    inc hl
    ld [$f7af], a
    adc h
    ld h, l
    add hl, de
    ld a, [bc]
    adc d
    ld e, c
    ld [hl+], a

jr_00a_598c:
    jr nc, jr_00a_59e6

    jp nz, $95a8

    ld sp, $d594
    ld [$38ca], sp
    sub e
    ld l, d
    ld d, h
    call Call_00a_4d31
    sub $63
    adc d
    sub h
    dec h
    add hl, hl
    dec l
    ld c, h

Call_00a_59a5:
    ld d, l
    add l
    ld a, [hl-]
    add hl, hl
    ld h, $42
    jr nc, jr_00a_5957

    xor d
    dec h
    sub e
    xor [hl]
    ld d, d
    db $10

jr_00a_59b3:
    ld c, [hl]
    inc h
    inc de
    cp [hl]
    ld b, [hl]
    ld c, h
    sub d
    sbc l
    adc a
    ld a, [bc]
    ld c, h
    sub [hl]
    db $eb
    ld [c], a
    jr jr_00a_59b3

    xor c
    ld l, d
    sbc l
    rst $28
    ld c, b
    ld h, e
    adc $af
    ld h, l
    adc a
    ld d, d
    adc l
    ld [hl], a
    rst $08
    ld hl, $b02a
    daa
    add b
    add h
    xor d
    or d
    ld a, [de]
    ld [de], a
    or l
    ld b, c
    rst $00
    db $76
    ld de, $0695
    sbc b
    pop de
    db $db
    rst $00

jr_00a_59e6:
    ld [bc], a

jr_00a_59e7:
    sub b
    and a
    add b
    xor c
    jp Jump_00a_5e91


    and a
    ld e, e
    cp h
    sbc h
    ld d, $47
    ret


    rst $10
    cp b
    and c
    jp nc, $aaaa

    adc h
    ld [hl], a
    inc hl
    add h
    add h
    ld [$5464], sp
    add e
    add l

Jump_00a_5a05:
    daa
    ld h, h
    ld de, $c518
    ld e, h
    ld b, d
    rst $20
    ld h, d
    dec de
    inc b
    ld b, d
    ld h, l
    cp [hl]
    db $10

jr_00a_5a14:
    ld h, c
    sbc l
    dec hl
    ld sp, $9334
    reti


    ld [de], a

jr_00a_5a1c:
    sub c
    dec b
    ld h, a
    ld a, [hl+]
    jp $b01a


    ld b, [hl]
    jr z, jr_00a_59e7

    sbc h
    adc [hl]
    ld [hl], e
    inc l
    reti


    jr jr_00a_5a14

    inc l
    ld d, d
    ld d, d
    call nz, Call_00a_64c8
    rst $08
    adc l
    inc e
    add hl, bc
    ld c, c
    jr z, jr_00a_5a83

    ld [$51c5], sp
    ld e, $a4
    ret nc

    ld h, $28
    pop bc
    sub e
    ld h, h
    and l
    or h
    ld h, d
    sub h
    or b
    ld l, h
    dec d
    ld d, a
    db $dd
    jr jr_00a_5a1c

    dec de
    add $5a
    ld d, h
    ld d, e
    ld b, [hl]
    ld d, h
    ld e, [hl]
    ld h, e
    ld h, b
    ret


    ld [hl], b
    ret


    ld [hl], c
    rst $08
    sbc d
    pop bc
    ret nc

    ld [hl+], a
    sbc b
    xor b
    daa
    inc hl
    ld b, a
    inc d
    inc c
    add hl, bc
    or h
    ld [hl], b
    add hl, sp
    pop de
    dec b
    push hl
    ld d, b
    ld b, d
    sbc d
    or b
    daa
    ld e, l
    ret


    ld a, [hl+]
    ld [$aad2], sp
    cp h
    ld c, h
    ld [hl], a
    ret


    dec bc
    dec b
    adc d

jr_00a_5a83:
    add hl, bc
    rra
    inc bc
    daa
    add e
    ld [bc], a
    db $10
    pop bc
    ld b, c
    ld [c], a
    call Call_00a_7834
    ld d, b
    ld sp, $182c
    ld c, b
    ld b, b
    rst $00
    sbc a
    inc bc
    inc bc
    ld b, a
    xor e
    dec de
    nop
    ld b, h
    cp d
    rla
    db $e3
    adc l
    ld d, h
    ld e, [hl]
    ld h, l
    ld c, [hl]
    rlca
    ld [$60ae], a
    add [hl]
    scf
    and d
    sub b
    db $ec
    ld h, l
    adc l
    xor b
    add [hl]
    db $eb
    ld h, d
    sub e
    adc d
    jr nc, jr_00a_5b0e

    push hl
    adc b
    ld c, b
    adc b
    add [hl]
    ld [hl], $52
    add hl, hl

jr_00a_5ac2:
    sub b
    ld c, b
    ld c, [hl]
    dec hl
    pop bc
    ld hl, $a142
    ld h, e
    add [hl]
    cp [hl]
    ld b, $8e
    sbc d
    ld [$456a], sp
    sub e
    sbc d
    ld b, d
    ret nc

    add d
    jr c, jr_00a_5ac2

    sbc d
    ld h, a
    ld c, $38
    rst $28
    ld d, l
    ld e, d
    ld d, h
    and $aa
    adc a
    cpl
    db $76
    daa
    ld a, [de]
    ld h, b
    ldh [$c7], a
    inc d
    rrca
    ret nz

    adc h
    ld de, $d2c5
    jp nc, $c7cc

    rla
    pop af
    jr @+$5b

    reti


    ld b, a
    ld d, h
    ld b, d
    ld [de], a
    rst $00
    ld a, [hl-]
    jr nc, @-$30

    ld [hl], h
    ret


    ld e, d
    db $76
    ld c, e
    ld h, a
    ld d, a
    sub c
    inc b
    ld [hl], l
    add hl, hl

jr_00a_5b0e:
    inc de
    dec e
    dec sp
    ld a, [hl+]
    ld d, $a7
    dec [hl]
    dec b
    db $eb
    dec c
    ld b, a
    inc [hl]
    ld a, c
    ldh [rHDMA5], a
    cp l
    ld h, l
    ld c, l
    ld l, a
    ld d, e
    add l
    cp $af
    ld b, l
    ld a, [hl]
    or a
    ld a, [bc]
    db $d3
    ld b, l
    db $e3
    rra
    add sp, $11
    ld c, e
    and e
    rla
    and b
    ld d, l
    xor c
    or b
    ld e, a
    ld d, c
    call $afd0
    push de
    call nc, $898e
    ld [hl], d
    sbc c
    ld [hl-], a
    ld h, b
    and d
    and l
    adc h
    ld l, [hl]
    xor b
    rst $08
    ld c, d
    jp nz, $ddac

    and h
    rla
    adc h
    sub l
    ld [$388e], a
    dec d
    add [hl]
    adc d
    and d
    ld d, e
    ld d, l
    dec l
    adc [hl]
    dec b
    adc l
    inc d
    jp z, $d58c

    ld a, [bc]
    jr nc, jr_00a_5bbc

    adc e
    ld b, a
    ret z

    ld d, d
    xor d
    or l
    ld e, d
    cp $a3
    inc b
    add h
    sub h
    rst $00
    dec d
    push bc
    dec hl
    push hl
    ld e, b
    add l
    add c
    add c
    sub h
    ld l, b
    add h

jr_00a_5b7d:
    sub h
    jp nz, Jump_00a_5852

    sub h
    jr z, jr_00a_5b0e

jr_00a_5b84:
    ld a, d
    adc b
    ld h, [hl]
    ld c, h
    ld l, l
    adc h
    jr z, jr_00a_5b9d

    and l
    ld d, l
    and d
    scf
    ld c, h
    inc d
    ret


    inc d
    pop hl
    ld b, d
    call nc, Call_000_329a
    ld b, l
    ld [hl], $60
    ld h, b

jr_00a_5b9d:
    xor a
    cp $3b
    jr z, jr_00a_5b84

    sbc $b2
    add hl, bc
    xor [hl]
    ld a, [de]
    ld [hl], c
    call z, Call_00a_4910
    inc l
    cp b
    pop hl
    inc e
    dec bc
    jr jr_00a_5b7d

    ld [de], a
    sbc b
    ld e, c
    sub e
    db $10
    xor d
    sub [hl]
    add l
    ld l, $54

jr_00a_5bbc:
    ld h, h
    and b
    db $e4
    push de
    and b
    ret nc

    ld b, h
    xor d
    ret nc

    add hl, sp
    add [hl]
    ld hl, sp+$28

jr_00a_5bc9:
    ret c

    ld e, h
    ld h, l
    scf
    ld sp, hl
    sub a
    ld d, b
    and d

Call_00a_5bd1:
    add [hl]
    ld [hl], d
    ld c, b
    db $e4
    db $f4
    jr nc, jr_00a_5c40

    ld [hl], $72
    ld c, b
    db $e3
    add h
    ld d, h
    ld [hl], c
    ld d, c
    ld d, c
    add hl, bc
    or l
    add $6d
    sbc b
    ld c, a
    ld a, [de]
    inc hl
    ld d, d
    xor d
    call c, $a469
    ld h, l
    xor b
    ld b, b
    ret nz

    rst $28
    adc h
    ld l, l
    sub b
    push bc
    jr z, jr_00a_5bc9

    call z, $985e
    dec a
    rrca
    add d
    ld d, d
    or b
    ld h, b
    sbc b
    rst $38
    xor d
    push bc
    ld l, l
    add h
    ld [$fac1], sp
    adc h
    sub a
    ld a, l
    sbc c
    ld e, b
    ld h, b
    add h
    push de
    dec h
    jr c, jr_00a_5c3c

    ld de, $399e
    cp h
    inc sp
    ld [bc], a
    ld c, h
    sbc c
    ld h, a
    ld c, $0a
    jr nc, jr_00a_5c58

    ld sp, $1cd9
    ld h, b
    ld b, h
    cp l
    dec [hl]
    ld d, e
    and c
    ld l, d
    ld [$54d0], a
    push de
    rlca
    ld a, [$d1ab]
    ld [$f035], a
    ld c, h
    sbc d
    jr c, jr_00a_5c50

jr_00a_5c3c:
    daa
    ld c, h
    and h
    pop hl

jr_00a_5c40:
    db $fc
    ld a, [c]
    and e
    adc c
    ld c, h
    ld e, a
    adc b
    add l
    dec [hl]
    ld d, h
    jp z, $1441

    sbc $79
    ld d, h

jr_00a_5c50:
    ld [hl+], a
    ld de, $3a4e
    adc c
    sub b

jr_00a_5c56:
    ld e, b
    inc de

jr_00a_5c58:
    sub d
    and c
    ld l, l
    ld e, b
    inc hl
    adc [hl]
    ld a, [$3b3e]
    ld a, h
    ld [hl], d
    ld c, d
    ld a, [hl+]
    add hl, hl
    ret


    ld [bc], a
    ret nz

    xor c
    db $10
    ld h, $fa
    ld sp, $8a74
    ld l, d
    sub c
    ld d, c
    adc l
    ld d, c
    or h
    ld a, [bc]
    sbc d
    daa
    inc c
    ld [hl], a
    jp hl


    adc e
    ld c, c
    jp z, $a898

    ld c, [hl]
    ld [hl], c
    ret nc

    jr z, jr_00a_5c56

    ld c, d

jr_00a_5c87:
    ld [hl], e
    ld b, e
    xor a
    inc h
    or d
    ld [hl], d
    ld b, e
    adc l
    ld d, c
    push af
    nop
    ld h, [hl]
    cp b
    rst $28
    ld d, d
    ld d, l
    inc a
    ld h, h
    dec hl
    cp $bc
    pop af
    jr nz, @-$6e

    and l
    xor b
    pop af
    dec e
    and h
    xor b
    ld d, l
    ld c, [hl]
    add hl, hl
    dec [hl]
    ld e, d
    dec hl
    ld l, [hl]
    cp [hl]
    db $d3
    add d
    sub d
    ld d, l
    db $76
    xor b
    add $a2
    jr nz, jr_00a_5cfc

    ld c, l
    xor e
    ld [$8e8a], a
    ld h, $b8
    ret


    sub l
    inc [hl]
    xor d
    ld c, [hl]
    ld c, $31
    sbc e
    inc sp
    ld c, [hl]
    add h
    add $8c
    dec e
    ld [hl+], a

jr_00a_5ccd:
    adc e
    adc [hl]
    ld a, [de]
    ld a, [hl+]
    adc e
    ld b, a
    ld hl, $3906
    db $e3
    ld [hl], l
    ld d, h
    adc b
    ld h, d
    ld h, h
    jp c, Jump_000_188e

    inc l
    ld h, b
    add l
    jr c, jr_00a_5c87

    dec h
    scf
    ld c, h
    ld h, e
    sbc l
    inc sp
    add l
    add hl, de
    ld a, [hl+]
    ld [hl], $8c
    jp hl


    ld l, $81
    add c

jr_00a_5cf3:
    add hl, sp
    jp hl


    ld c, c
    xor b
    ld h, l
    ld c, b
    ld d, b
    ld d, b
    ld h, [hl]

jr_00a_5cfc:
    ld [hl+], a
    jr c, jr_00a_5cf3

    add l
    ld e, d
    ld e, d
    dec bc
    ld hl, $9362
    adc d
    dec b
    ld a, [bc]
    jr nc, jr_00a_5ccd

    adc b
    ret nc

    jp hl


    and d
    ld d, e
    ld e, c
    ld sp, $ee5f
    ld hl, $aaa2
    and l
    ld c, h
    sub c
    cp h
    xor a
    jp $28a3


    ld d, d
    rst $18
    ret


    ld e, b
    jr jr_00a_5d8d

    xor d
    ldh a, [$ca]
    sub [hl]
    inc d
    jp z, $8aaa

    cp [hl]
    inc sp
    sbc [hl]
    ld c, d
    ld d, h
    pop af
    sbc l
    ldh a, [$e3]
    cp a
    ld [hl], c
    ldh [$82], a
    ld c, d
    ld a, b
    add sp, $30
    ld a, [hl+]
    xor $78
    or [hl]
    add hl, bc
    ld [hl], c
    db $e4
    ld sp, $422e
    add hl, hl
    push bc
    sbc d
    cp [hl]
    xor b
    pop hl
    ld [bc], a
    add l
    inc bc
    dec e
    add hl, bc
    dec sp
    ld d, h
    ld sp, $a414
    call nz, $9226
    ld d, [hl]
    xor h
    ld d, d
    db $ec
    ret z

    ld hl, $7e49
    ld h, e
    bit 2, h
    ld h, a
    ld b, l
    sbc $8d
    dec c
    add $38
    and a
    ld d, l
    and $29
    ld a, b
    push bc
    push bc
    ld h, $fe
    sub e
    inc a
    ld d, [hl]
    ld sp, $6971
    pop bc
    ld sp, hl
    inc l
    ld h, e
    jr jr_00a_5dc2

    adc [hl]
    add h
    ld l, a
    db $e4
    ld hl, $741c
    ld [hl], d
    cp $31
    sub [hl]

jr_00a_5d8d:
    ld [hl], b
    ld d, b
    ld h, $6d
    inc b
    add hl, hl
    reti


    ld c, h
    ld h, l
    ld l, b
    inc hl
    ld h, [hl]
    ld [hl], h
    db $76
    rst $18
    db $e4
    ldh [$95], a
    ld b, c
    add hl, hl
    ld c, d
    ld c, d
    pop af
    xor l
    add sp, -$4c
    add hl, bc
    jr nc, jr_00a_5d8d

    ld b, b
    call Call_00a_477f
    dec c
    add d
    ld d, d
    sbc c
    ldh [$90], a
    and h
    ld l, d
    xor d
    add $3e
    ld [$14a3], sp
    add [hl]
    ld [$b442], sp
    ld c, h
    ld h, b

jr_00a_5dc2:
    sbc b
    ldh a, [rNR42]
    ld a, c

jr_00a_5dc6:
    ld e, h
    inc d
    ld l, h
    sbc b
    ld [hl], b
    ld a, [hl+]
    add l
    sub b
    adc d
    ld h, d
    jp c, Jump_000_2530

    ld h, $71
    ld sp, $6972
    inc b
    ret z

    ld a, [hl+]
    reti


    db $e3
    ld h, c
    cp b
    daa

jr_00a_5de0:
    add b
    ld b, h
    cp c
    dec d
    ld a, [hl]
    and e
    ld d, l
    dec h
    ld a, a
    xor d
    jr jr_00a_5dc6

    cp c
    ld a, [$6331]
    ld h, [hl]
    jr jr_00a_5de0

jr_00a_5df3:
    ld b, d
    ld [hl], $4e
    ld a, [bc]
    jr c, jr_00a_5e0c

    cp l
    adc [hl]
    inc b
    db $ed
    ld a, d
    ld hl, $7331
    adc l
    xor b
    and l
    ld hl, sp-$22
    db $fd
    ld d, l
    inc hl
    jr jr_00a_5df3

    sbc l

jr_00a_5e0c:
    ld d, d
    ld d, e
    and [hl]
    sub l
    ld [$ec2c], sp
    ld d, [hl]
    dec b
    ld a, [hl-]
    ld [$1f8f], a
    ld [hl], d
    ld [hl+], a
    ret


    adc $cc
    inc d
    ld b, h
    sbc e
    ld d, d
    inc a
    ld h, [hl]
    add $c8
    ld h, h
    ld b, [hl]
    ld d, c
    jp $d2c6


    ld l, a
    add d
    inc l
    ld l, c
    daa
    dec b
    dec de
    add hl, hl
    or d
    ld l, a
    ld b, a
    ld [bc], a
    ld l, a
    ld h, $f0
    cp c
    or h
    ld l, l
    ld d, b
    add hl, hl
    ld e, [hl]
    and d
    and a
    dec h
    add hl, hl
    jr @+$73

    push de
    ld d, b
    ld b, c
    ld c, d
    ld [hl], l
    xor d
    pop de
    ldh a, [$a0]
    ld h, [hl]
    cp b
    dec d
    ld d, h
    call $937f
    sub c
    ld d, b
    ld a, a
    ld h, $b9
    ld b, c
    ld h, [hl]
    ld d, a
    db $f4
    ldh [$74], a
    ld h, b
    db $db
    ld c, c
    adc b
    ret nc

    ld a, b
    adc d
    add c
    dec [hl]
    ld a, c
    adc b
    or a
    ld [c], a

jr_00a_5e6f:
    ret c

    add hl, hl
    adc d
    sub h
    inc d
    ret


    ld b, c

Jump_00a_5e76:
    cpl
    di
    ld b, a
    inc e
    adc b
    ld hl, $29ae
    ld b, c
    adc e
    xor [hl]
    ld sp, $f295
    xor c
    ld d, d
    ld h, h
    ld d, [hl]
    dec h
    call c, Call_000_2fc9
    adc h
    and d

jr_00a_5e8e:
    ld hl, $32d2

Jump_00a_5e91:
    cpl
    call z, $cd5f
    sub h
    add [hl]
    ld hl, $32a8
    ld a, [hl]
    jr nc, jr_00a_5ee0

    adc [hl]
    ld a, [de]
    adc d
    or d
    ld [hl-], a
    ld a, h
    set 1, [hl]
    ld h, l
    ld l, b
    sbc b
    add a
    call z, Call_000_395f
    jr z, jr_00a_5e6f

    adc d
    adc h
    db $e3
    or [hl]
    ld hl, $0729
    ld [hl], e
    jp nz, $f242

    cp a
    adc [hl]
    sub h
    rst $10
    jp z, $e9fc

    ld c, l
    jr z, jr_00a_5ef7

    add a
    call $c514
    inc b
    sbc $b8
    sbc a
    inc sp
    add l
    ld b, $26
    ld a, [bc]
    ld [hl], $45
    jp nc, $7723

    ld c, h
    inc de
    ld d, l
    add a
    call z, Call_00a_5813
    push bc
    dec [hl]
    ld e, d
    db $ec

jr_00a_5ee0:
    xor e
    jp z, $cda4

    inc d

jr_00a_5ee5:
    res 4, b
    adc h
    ld d, a
    ld sp, $417d
    dec hl
    ld b, c
    jr nc, jr_00a_5e8e

    ld h, c
    ld b, d
    xor b
    dec l
    ld d, l
    ld h, a
    ld b, d

jr_00a_5ef7:
    and d

jr_00a_5ef8:
    ld h, a
    or e
    ld d, $17
    ld d, a
    sub e
    ld [hl], a
    ld d, [hl]
    inc b
    jr nc, @-$3c

    adc h
    ret c

    adc d
    and e
    add [hl]
    xor d
    dec bc
    xor b
    bit 6, b
    daa
    ld [bc], a
    jr jr_00a_5ef8

    ld a, [hl+]
    ld [$ffa1], sp
    ld h, b
    xor b
    and c
    db $ed
    ld e, [hl]
    and a
    dec bc
    or [hl]
    rra
    ld d, l
    adc l
    ld c, b
    ld b, h
    jr nz, jr_00a_5ee5

    ld d, d
    ld l, d
    or c
    ld d, c
    sbc e
    ld l, [hl]
    add d
    db $10
    jp nc, $ac11

    ld c, h
    ld h, h
    sbc b
    ld a, $14
    jr nc, jr_00a_5f58

    xor c
    ld l, b
    ldh [$b0], a
    inc l
    sbc c

jr_00a_5f3c:
    ld b, d
    cp l
    ld [hl], b
    dec [hl]
    ld l, c
    ld de, $212d
    inc bc
    ld b, e
    ld [hl-], a
    ret nc

    ld [hl-], a
    ret nc

    ld b, d
    push bc
    add $08
    ld d, c
    ld sp, $13a3
    ld hl, $8c52
    ld h, d
    adc l
    sbc h

jr_00a_5f58:
    ld c, c
    add d
    ld b, h
    ld e, $32
    sub d
    adc d
    ld [hl], b
    ld h, $99
    ld e, [hl]
    jr nc, jr_00a_5f3c

    ld b, $10
    and e
    ld a, [bc]
    ld d, d
    ld l, e
    sub c
    ld a, $46
    adc h
    ld e, d
    inc c
    ld c, h
    or h
    add hl, bc
    ld [de], a
    ld d, a
    sub l
    db $10
    ld sp, hl

jr_00a_5f79:
    sub l
    inc bc
    ld d, d
    dec hl
    ld b, c
    inc h
    ld c, d
    pop de
    xor h
    ld h, a
    sbc h
    ld de, $d482
    and d
    call nz, Call_00a_6a66
    ld l, a
    sub d
    ret


    dec sp
    cp $39
    and h
    sub b
    adc d
    ld h, c
    sub c
    dec c
    ld e, d
    ld c, l
    ld b, [hl]
    db $f4
    call nz, Call_00a_79a5
    add h
    ld e, $11
    inc d
    ld [hl], b
    jr nz, jr_00a_5f79

    add h
    adc e
    and $36
    ld de, $7032
    ld h, l
    ret z

    ld d, e
    jp nc, $a416

    ld c, d
    inc l
    add hl, bc
    pop bc
    ld l, c
    add h
    ld c, a
    add l
    add h
    sub d
    pop bc
    ld a, [bc]
    ld l, e
    ld c, h
    inc d
    xor b
    and h
    ld a, $4e
    ld [$8a94], a
    ld h, e
    add h
    db $10
    cp c
    ld [hl], l
    inc b
    jr jr_00a_6032

    add l
    ld de, $c141
    jr @+$66

    ret c

    ld a, b
    ld h, $f8
    ld l, d
    or b
    ld d, b
    ld h, $b9
    jr nc, @-$37

    inc c
    ld h, l
    add hl, de
    nop
    ld b, h
    or [hl]
    ld d, l
    dec h
    ld a, a
    di
    add c
    ld [$8369], a
    ld hl, $288e
    scf
    ld e, l
    ld l, d
    ld h, e
    add d
    rst $30
    add hl, bc
    pop hl
    adc [hl]
    ld l, d
    xor d
    dec a
    add sp, -$4c
    ld e, b
    push hl
    ld l, l
    ld e, b
    ld d, h
    push hl
    ld d, c
    sub c
    ld h, c
    adc [hl]
    ld e, e
    ld e, b
    inc hl
    and c
    or [hl]
    ld hl, $8e21
    ld a, [hl+]
    ld b, c
    ret c

    ld a, d
    add hl, sp
    inc d
    sub [hl]
    inc b
    ld a, [hl+]
    adc [hl]
    dec sp

jr_00a_601d:
    cp $a3
    ld [c], a
    rst $30
    ld b, d
    ld b, d
    ld [hl], c
    ld a, l
    jr z, jr_00a_601d

    jp nc, Jump_00a_4b72

    ld b, b
    db $fc
    ld sp, hl
    call z, $8cfe
    ld [de], a
    ld [hl], d

jr_00a_6032:
    ld h, b
    ret nc

    call nz, $3247
    jr z, jr_00a_606a

    sub $8c
    db $76
    ld l, h
    sub b
    adc $9c
    sbc h
    rst $10
    ld c, a
    inc b
    ld [hl], e
    ld c, c
    ld d, $c7
    ld d, h

Call_00a_6049:
    rst $20
    ld a, l
    ld d, b
    ld a, [hl+]
    ld [hl], e
    ld l, $a3
    dec e
    inc [hl]
    ld a, h
    ld [hl], b
    ld h, [hl]
    cp [hl]
    ld de, $a506
    dec d
    ld c, [hl]
    adc c
    inc sp
    add d
    ret


    and d
    add hl, hl
    ld c, [hl]
    dec b
    ld b, [hl]
    call nc, $e155
    jp nc, Jump_00a_429a

jr_00a_606a:
    xor l
    ld [hl], $7b
    ld l, b
    ld l, a
    add hl, de
    pop hl
    ld l, c
    ld c, c
    or h
    ld e, b
    pop de
    ld a, c
    ld c, d
    add c
    ld b, d
    add d
    ld [hl-], a
    ld d, h
    sub [hl]
    inc sp
    sbc a
    or e
    ld a, [bc]
    dec d
    ld h, l
    rst $38
    xor $af
    ld b, [hl]
    ld d, l
    ld [c], a
    xor d
    ld c, e
    sub b
    ld h, a
    or c
    or d
    dec hl
    sub c
    and c
    rst $20
    and d
    rra
    add c
    sub d
    ld [hl+], a

Jump_00a_6099:
    ld l, [hl]
    daa
    and h
    sbc b
    ld [hl+], a
    pop hl
    adc b
    ld b, [hl]

Call_00a_60a1:
    add sp, $61
    sub h
    inc l

Jump_00a_60a5:
    ret


    ret


    ld b, d
    adc d
    ld e, a
    ld d, h
    add hl, de
    ld a, [hl+]
    inc [hl]
    ld a, c
    adc [hl]
    rla
    ldh [rDMA], a
    ld d, d
    ld d, e
    ld c, b
    add hl, hl
    ld c, b
    ld d, h
    jp nz, Jump_000_37a2

    jr @-$1a

    ld d, [hl]
    ld a, [hl]
    and h
    and h
    jp nc, Jump_00a_4de1

    ld a, [hl]
    ld b, c
    ld c, e
    adc b
    ld c, l
    or b
    sub d
    sub e
    inc b
    ld d, d
    push de
    ld b, c
    adc h
    ld l, e
    inc [hl]
    ld h, [hl]
    and l
    dec bc
    add l
    ld b, [hl]
    add hl, hl
    inc sp
    adc h
    jp c, $868b

    and h
    jr z, jr_00a_60fc

    and [hl]
    inc sp
    ld c, c
    ld b, c
    sub c
    ld e, d
    ld d, c
    add l
    ld d, a
    push de
    xor d
    ld l, b
    call $d099
    or [hl]
    jp Jump_000_1516


    ld a, [hl]
    and h
    cp b
    ldh [$7b], a
    inc d
    adc h

jr_00a_60fc:
    sub l
    ld a, [bc]
    cp $32
    adc l
    sub l
    rst $20
    add sp, $15
    ld c, h
    and b
    jp z, Jump_00a_6f63

    push de
    ld b, $a0
    sbc a
    adc h
    ld d, [hl]
    add c
    and e
    add [hl]
    add c
    and d
    ld e, d
    dec [hl]
    ld a, [hl]
    add hl, sp
    dec de
    ld d, l
    xor b
    sbc $8e
    dec e
    cp d
    adc d
    or l
    ld a, [hl+]
    ld a, b
    ld [$46f3], sp
    ld d, l
    ld [bc], a
    ld [hl], h
    ld h, e
    inc a
    add $48
    dec hl
    ld [bc], a
    add d
    ld [hl], c
    inc h
    ld hl, $cf04
    ld h, l
    ld b, c
    ld h, c
    ld c, d
    add hl, hl
    jp nz, $1c82

    add e
    ld b, d
    push af
    dec b
    add hl, hl
    ld l, h
    ld d, $68
    sub d
    call nz, Call_00a_6a50
    and c
    add h
    ld h, b
    adc h
    adc l
    sbc c
    ret nz

    add a
    ld b, c
    add sp, $2a
    ld a, [de]
    cp b
    jp z, $90a0

    add sp, $42
    sub c
    sub l
    inc bc
    ld [$3882], a
    and c
    call nc, $850a
    jr z, @-$29

    ld [hl], b
    dec h
    or e
    pop bc
    ld b, h
    ld b, h
    pop af
    ld [hl], h
    ret


    db $10
    ld b, c
    inc c
    ld h, e
    ld d, l
    ld de, $4c32
    ld h, h
    push hl
    ld d, b
    ld [hl+], a
    add d
    add [hl]
    ld a, [bc]
    add a
    sbc b
    ld e, [hl]
    ld de, $c47c
    ld b, h
    ret nc

    ld [hl], b
    ld a, [hl+]
    ld b, h
    and e
    inc e
    sub h
    and d
    add d

jr_00a_6190:
    sub d
    ldh a, [rLY]
    xor h
    adc a
    inc hl
    inc b
    ld l, b
    xor h
    add h
    or $28
    add hl, sp
    ld [hl], c
    db $10
    ld c, b
    or b
    ret z

    ld b, l
    ld a, [c]
    inc c
    ld c, d
    jr z, @+$3b

    add d
    ld d, d
    dec bc
    db $10
    ret nc

    add hl, hl
    ld l, b
    ld b, l
    and e
    add hl, de
    ld d, c
    add hl, bc
    ld de, $e170
    and c
    and $72
    sbc d
    ld c, b
    xor b
    and c
    add hl, sp
    add h
    adc l
    ld l, $0b
    ld d, l
    and $55
    rlca
    ld d, l
    sub h
    adc [hl]
    ld b, l
    ld d, l
    ld b, b
    push hl
    reti


    adc d

jr_00a_61d0:
    ld d, d
    ld [$5744], sp
    jr z, jr_00a_6190

    ld b, e
    ld b, [hl]
    add hl, hl
    sub h
    inc a
    ld [hl-], a
    cpl
    dec [hl]
    add e
    ld h, c
    ld de, $8329
    add hl, de
    ld l, l
    ld c, $14
    push af
    ld h, c
    ld b, $65
    jr z, @-$44

    ld h, a
    sub a
    jp hl


    ld d, l
    ld b, $64
    add e
    ld d, b
    ld b, a
    ld e, $08
    xor a
    inc b
    ld l, c
    ld [hl], d
    ld [hl], d
    and e
    add h
    adc h
    ld a, b
    jr nz, jr_00a_6247

    or c
    or h
    add l
    ld c, h
    sub h
    push de
    ld l, l
    ld a, [de]
    pop de
    cp a
    adc h
    inc hl
    dec b
    dec bc
    pop hl
    and [hl]
    sub b
    adc e
    xor b
    ld e, a
    push de
    inc hl
    adc c
    sub b
    sub d
    ld [$88f8], a
    rla
    ld [hl+], a
    ld h, h
    ld [hl+], a
    jr jr_00a_61d0

    ld c, h
    sbc b
    sbc c
    daa
    ld [hl-], a
    ld d, b
    ld e, a
    jp nz, Jump_000_330b

    bit 0, a
    add sp, -$57
    ld [hl-], a
    ld [hl], d
    push de
    dec [hl]
    add l
    xor d
    ld h, b
    sub d
    sbc $35
    adc e
    add e
    ret


    and e
    ld h, h
    or l
    add c
    ld c, d
    cp a
    ld c, e

jr_00a_6247:
    ld e, c
    add hl, bc
    rra
    ld [hl+], a
    ld c, h
    sub h
    add a
    and c
    add d
    cp $a4
    sub $fe
    ld [hl+], a
    ld hl, sp-$3a
    ld c, a
    add l
    sbc c
    and h
    daa
    ld d, h
    ld l, e
    ld a, [bc]
    inc e
    ld d, h
    ld h, c

Jump_00a_6262:
    ld c, $93
    and l
    ld l, c
    ld [hl], h
    ld b, h
    db $10
    ld c, a
    and h
    ld a, [hl]
    or b
    ld a, $53
    pop de
    ld d, d
    rra
    and e
    ld a, a
    rst $38
    jr @+$47

    cp d
    rla
    ld [$fa0f], a
    ld h, e
    ld c, e

jr_00a_627e:
    push de
    ld l, b
    ld d, h
    rrca
    rst $38
    pop af
    ld c, b
    or c
    add l
    and l
    ld d, a
    jp hl


    sub h
    ld h, l
    db $eb
    dec c
    or a
    push hl
    ld sp, $c5a7
    ld hl, sp+$66
    ld a, [de]
    sbc b
    cp $1a
    ld b, e
    daa
    dec de
    ld c, b
    ld hl, $417b
    and [hl]
    ld [hl], h
    xor l
    inc de
    sbc c
    ld e, c
    or h
    ld d, h
    ld a, h
    adc b
    ld h, [hl]
    cp e
    dec de
    xor d
    sub h
    and $57
    ld [$c254], a
    dec bc
    dec b
    ld b, d
    sub e
    ld d, l
    rst $38
    xor c
    ld [$297c], sp
    ld [hl+], a
    db $fd
    ld a, d
    dec b
    inc b
    push bc
    cp d
    ld [hl+], a
    sub h
    jr z, jr_00a_627e

    call z, Call_000_24a4
    ret


    ld h, d
    ld [hl], a
    inc [hl]
    ld [hl], e
    ld [hl], h
    ldh [$d4], a
    rst $00
    add hl, sp
    ld d, c
    adc h
    inc d
    add a
    dec l
    add l
    dec l
    ld d, l
    ld d, l
    ld b, $45
    rlca
    ld h, d
    ld d, h
    ld [hl], d
    ld d, d
    cp b
    adc e
    add l
    xor d
    db $ed
    ld [$681d], sp
    cp e
    push de
    ld c, $59
    daa
    xor b
    jr jr_00a_630c

    and d
    ld h, $56
    ld h, d
    sub h
    xor d
    ld [hl+], a
    ld b, c
    ld [hl], b
    ld b, c
    add c
    adc h
    sbc b
    ld h, b
    ld b, c
    ld [hl+], a
    cp b
    and h
    ld [hl-], a
    ld d, $22
    sbc b

jr_00a_630c:
    xor b
    ld e, d
    ld c, l
    jr jr_00a_6376

    ld h, [hl]
    ld b, $fe
    ld c, l
    ld a, [de]
    dec d
    ld l, $2a
    and a
    ld b, d
    ld [hl+], a
    ld a, e
    dec c
    scf
    adc e
    sub e
    ld [hl], $be
    xor c
    pop hl
    ret


    adc h
    ld h, b
    adc l
    sub l
    ld d, b
    ld b, [hl]
    or b
    ld h, b
    sub d
    and d
    ld [hl], c
    ld b, d
    add hl, hl
    ld sp, $f99f
    inc d
    ld de, $27b3
    dec d
    adc e
    ld b, l
    ld c, e
    or c
    ldh [rOBP1], a
    cp l
    ld [$c23e], sp
    ld [hl+], a
    jr nc, jr_00a_638a

    add [hl]
    ld c, b
    ld h, [hl]
    push hl
    inc e
    ld l, d
    ld h, b
    sub b
    adc c
    adc h
    and b
    xor b
    dec d
    dec b
    reti


    ld c, d
    xor d
    adc [hl]
    ld [hl], $96
    dec d
    ld b, c
    dec c
    and c
    sub b
    adc h
    ld d, b
    ld c, c
    ld b, d
    ld a, [hl+]
    ld a, [hl+]
    adc c
    sbc b
    jp nc, Jump_00a_45aa

    ld d, $e3
    inc b
    cp d
    sub e
    ld l, d
    ld l, $48
    ld d, e
    inc [hl]

jr_00a_6376:
    cp b
    push de
    ret nc

    ld c, h
    ld l, c
    inc c
    inc h
    ld d, d
    inc [hl]
    jp nz, $d5cc

    inc b
    jp nc, Jump_000_175f

    ld l, b
    adc $09
    ret c

jr_00a_638a:
    jp z, $748c

    inc h
    inc hl
    ld a, [bc]
    ld e, d
    rla
    rrca
    pop bc
    dec de
    ld hl, $af02
    ld a, b
    cp $e5
    ld b, l
    inc h
    ld l, c
    sub e
    dec bc
    ei
    ld a, [hl]
    ld d, $1f
    and e
    add hl, de
    ret z

    ld d, c
    and e
    rst $38
    ld a, b
    ld a, b
    rst $08
    add h
    ld l, a
    ld [bc], a
    add hl, bc
    sub e
    db $fd
    add sp, $39
    db $10
    and a
    dec d
    add hl, de
    ld b, c
    db $fd
    jp hl


    ld sp, $121d
    and [hl]
    ld d, d
    ld sp, $3031
    ld a, a
    and b
    pop af
    inc c
    ld b, h
    and d
    jp nc, Jump_00a_47aa

    db $10
    add d
    ld h, c
    inc de
    ld b, c
    add sp, $43
    ld b, b
    rst $08
    db $fd
    rlca
    ld a, [$cabe]
    ld [hl], b
    rst $18
    ld c, $17
    rst $38
    db $10
    rst $38
    rst $38
    ld a, e
    pop de
    ld l, $67
    db $ed
    dec b
    dec c
    dec d
    rst $38
    inc bc
    pop hl
    ld d, d
    ld d, l
    add hl, hl
    inc d
    dec c
    ld d, a
    and d
    ret


    ld e, a
    db $10
    cp $9b
    ld e, d
    rrca
    ld a, [$e187]
    ld a, [c]
    ld h, d
    rst $38
    ld hl, sp-$3a
    ld [hl], h
    ld a, [de]
    adc l
    ld e, a
    cp b
    ld h, c
    sub d
    sub c
    rst $38
    ld a, c
    sub d
    ld e, a
    cp $0f
    cp a
    add [hl]
    add hl, de
    inc c
    ccf
    pop bc
    ld sp, hl
    or a
    rst $38
    ldh [$f8], a
    cp [hl]
    ld b, h
    rrca
    adc a
    ldh a, [$3e]
    ld l, h
    add d
    cp $0f
    add d
    cp $ca
    ld c, $47
    dec bc
    or $0b

jr_00a_642f:
    jp hl


    inc l
    rrca
    ld hl, sp+$3f
    rst $38
    cp $a8
    ld e, b
    db $e4
    inc a
    db $10
    rst $38
    ld [bc], a
    ld b, d
    ret nc

    db $dd
    db $fd
    rst $38
    rst $38
    sub l
    jp hl


    inc c
    jr nc, @-$24

    ld [de], a
    add $5e
    dec [hl]
    rst $38
    ldh a, [$cb]
    cp $99
    ld hl, sp-$3a
    ld a, d
    ld e, l
    ldh a, [rIE]
    rst $38
    jp hl


    adc d
    add hl, bc
    or h
    ld h, l
    jr nz, jr_00a_642f

    ccf
    ld a, [$a698]
    jp z, Jump_000_056d

    pop bc
    pop hl
    ld b, [hl]
    ld l, c
    sbc l
    ld b, [hl]
    ret nc

    xor d
    ld de, $44c0
    or [hl]
    ld e, [hl]
    ld c, [hl]
    and a
    ld c, $19
    ld a, a
    xor c
    ld c, l
    ld d, $08
    adc d
    dec b
    ld d, h
    ld l, b
    inc hl
    rla
    and h
    db $10
    ld h, c
    and b
    ld c, c
    sub e
    ld h, [hl]
    ld c, $2a
    add d
    ld b, d
    sub b
    adc h
    ld l, [hl]
    inc d
    pop bc
    ld h, c
    ld c, b
    and e
    dec sp
    ld d, b
    ld c, d
    ld [c], a
    ld e, l
    call z, $d09f
    cp l
    rst $18
    dec b
    xor a
    db $e3
    ld a, [hl+]
    ret nc

    ret nc

    cp e
    add [hl]
    ret z

    adc l
    jr z, jr_00a_6505

    sub e
    and c
    sub l
    add c
    ld [hl], h
    ld [hl], e
    sub d
    ld d, d
    ld h, b
    cp h
    add [hl]
    ld d, l
    ld h, e
    ld e, d
    sbc c
    inc hl
    ld h, e
    and [hl]
    pop af
    ld c, [hl]
    jp c, Jump_000_3b8f

    ld [hl], b
    add hl, hl
    ret c

    add [hl]
    ld d, $92

Call_00a_64c8:
    adc [hl]
    add hl, bc
    or d
    ret c

    ld d, l
    jr z, jr_00a_6538

    dec c
    sbc d
    ld e, h
    inc l
    inc [hl]
    ld [de], a
    ld b, d
    sbc d
    ld [hl-], a
    ld c, h
    ld c, l
    inc c
    db $10
    ld c, h
    ld h, l
    dec a
    ld a, [bc]
    ld d, l
    ld a, [bc]
    ld c, h
    ld l, [hl]
    rst $00
    ld [bc], a
    ld h, [hl]
    add [hl]
    sbc b
    xor b
    call nz, Call_00a_71a6
    ld [de], a
    ld d, d
    adc h
    ld [hl], b
    ld c, d
    jp $ac24


    ld de, $9a11
    ld b, d
    sub c
    ld l, $96
    sbc d
    push de
    call z, $b83e
    call nc, $d471
    xor h

jr_00a_6505:
    db $76
    ld c, d
    sbc a
    inc e
    ld h, [hl]
    cp b
    dec d
    ld b, d
    cp l
    inc a
    dec d
    ld c, c
    xor e
    add hl, de
    add c
    dec sp
    ld d, $50
    ld b, [hl]
    reti


    sub c
    sbc [hl]
    ld d, h
    pop bc
    or h
    call Call_00a_4cc8
    inc h
    daa
    ld e, d
    add d
    ld [hl], l
    ld d, $65
    sub e
    dec d
    adc c
    add d
    ld a, [hl+]
    ld b, $2a
    rst $10
    ld b, $67
    db $e4
    inc de
    inc [hl]
    ld h, h
    rra
    ld sp, hl

jr_00a_6538:
    ld hl, $aa4a

jr_00a_653b:
    ld [hl+], a
    and $58
    add $85
    ld l, b
    rra
    ld sp, hl
    sub b

jr_00a_6544:
    db $e4
    and [hl]
    ld hl, $2364
    ld h, $09
    ld h, $87
    and b
    sbc h
    inc d
    add [hl]
    ld [hl], c
    sbc e
    adc h
    pop hl
    add c
    and c
    ld d, d
    inc d
    and l
    ld l, b
    ld h, c
    xor d
    dec [hl]
    ld a, [hl]
    ld hl, $fe22
    dec d
    inc [hl]
    adc [hl]
    ld a, [hl+]
    ld a, [bc]
    adc h
    rst $20
    ld sp, $e568
    ld h, e
    ld a, [hl-]
    ld [$9516], sp
    ld a, [bc]
    ld d, e
    sub l
    ld d, l
    ld d, d
    ld [hl+], a
    jr jr_00a_653b

    sub c
    sub b
    ld e, a
    rst $38
    db $e3
    dec b
    cp d
    add hl, bc
    ld d, c
    adc l
    ld h, d
    ld a, [hl+]
    ld d, l
    ld d, h
    or a
    sbc c
    inc b
    ld d, a
    ld [$ffc1], sp
    ld b, d
    ld [hl+], a
    ld hl, $4855
    ld a, h
    ld h, $04
    ld h, e
    ld c, d
    inc d
    jr z, jr_00a_6544

    ld a, a
    xor b
    add [hl]
    rrca
    ld b, $06
    jr c, jr_00a_6605

Jump_00a_65a3:
    sbc h
    ld h, l
    ld d, e
    add hl, bc
    add d
    ld b, $25
    ld a, c
    ld a, [hl+]
    push de
    ld a, b
    ld h, c
    ld d, l
    ld d, l
    ld c, e
    sub [hl]
    dec h
    add c
    ld d, [hl]
    sub d

jr_00a_65b7:
    ld l, e
    push bc
    ld a, [bc]
    adc [hl]
    ld h, [hl]
    ld b, $54
    ld hl, $6488
    dec l
    adc [hl]
    adc b
    add hl, de
    db $ec
    sbc d
    db $fc
    jr c, jr_00a_65b7

    sub a
    sbc b
    db $10
    and d
    and l
    ld h, e
    or [hl]
    ld h, b
    ld h, a
    adc a
    ld h, $77
    adc [hl]

jr_00a_65d7:
    db $dd
    call z, $95a7
    inc h
    ld hl, $e039
    ld [hl-], a
    ld c, h
    jp z, Jump_000_1112

    ld a, [bc]
    ld h, d
    and [hl]
    jp nc, $8c11

    add h
    ld [hl], $cd
    ld a, [bc]
    ld b, e
    ld sp, $42b2
    ld de, $1887
    jr z, jr_00a_65d7

    call z, $9a2c
    jp nz, $aba0

    add [hl]
    dec bc
    sub a
    ld b, b
    db $e4
    inc sp
    ld b, [hl]

Jump_00a_6604:
    adc d

jr_00a_6605:
    xor l
    inc [hl]
    or $b7
    and l
    jr z, jr_00a_664d

    ld c, l
    sbc d
    ld hl, $9594
    dec bc
    add a
    inc de
    inc a
    jp z, $846a

    add [hl]
    ld c, d
    ld d, h
    ld b, e
    sub [hl]
    ret c

    ld b, a
    inc b
    inc e
    ld e, $4d
    inc l
    ld a, [hl+]
    ld h, l
    and a
    ld b, l
    add hl, de
    ld b, c
    pop hl
    ld a, [hl+]
    ldh a, [rBGP]
    ld l, $6d
    inc a
    push de
    ld b, b
    and b
    sbc h
    cp d
    ld a, [de]
    sbc b
    dec [hl]
    add hl, de
    ld e, [hl]
    ld h, h
    and [hl]
    ld d, l
    ld d, [hl]
    sub e
    ld sp, $0bb4
    ld d, l
    ld b, [hl]
    ld e, b
    ld c, h
    ld c, e
    ld c, c
    adc e
    ld d, d
    sub c
    inc hl

jr_00a_664d:
    ld [hl], l
    ld d, c
    ld c, d
    di
    inc c
    ld e, l
    inc h
    dec h
    jp nz, Jump_00a_4491

    add hl, hl
    ld c, e
    or b
    or c
    ld c, c
    add hl, hl
    sub d
    db $10
    ld a, h
    dec d
    ld b, [hl]
    ld c, b
    or c
    ld c, b
    ld b, [hl]
    ld [de], a
    sub b
    adc d
    rra
    push de
    ld d, h
    ld h, e
    ld b, l
    and c
    db $f4
    inc d
    ld d, l
    ld b, d
    db $e3
    inc e
    db $ec
    cp $85
    add hl, hl
    dec c
    xor l
    rst $00
    ld c, h
    db $fc
    ld h, d
    jp nc, $9d1e

    sub a
    db $10
    pop bc
    rla
    ld [hl], a
    ld e, $03
    add e
    ld e, $65
    rst $00
    ld [hl], b
    ld b, h
    cp c
    sbc [hl]
    ld e, a
    ld a, [hl-]
    jr jr_00a_66a8

    inc hl
    add l
    db $e4
    adc a
    adc $56
    rlca
    add hl, bc
    ld e, h
    sub l
    adc l
    cp [hl]
    ld c, c
    ld l, d
    sub c

jr_00a_66a5:
    ld c, [hl]
    ld b, $e1

jr_00a_66a8:
    ld h, d
    pop hl
    sub e
    ld d, l
    call c, Call_00a_6823
    rst $10
    jr c, jr_00a_66a5

    ld c, d
    db $ec
    inc d
    pop bc
    dec h
    dec [hl]
    sbc h
    sbc c

Jump_00a_66ba:
    dec d
    add a
    ld h, e
    ld l, a
    ld c, e
    and d
    db $d3
    add d
    ld b, d
    ld b, $90
    ld d, e
    sbc [hl]
    ld [c], a
    ld l, [hl]
    inc b
    ld d, e
    xor [hl]
    ld d, [hl]

jr_00a_66cd:
    call nc, $88eb
    and e
    push bc
    call c, $ace8
    ld [hl], l
    db $d3
    ld sp, $97c2
    xor b
    ld h, d
    rst $00
    inc c
    and l
    ld c, [hl]
    inc e
    ld [hl], b

Jump_00a_66e2:
    ld h, h
    ld h, d
    push de
    ld d, [hl]
    sbc h
    ld a, [hl]
    ld a, [c]
    ld h, c
    ld h, [hl]
    adc $91
    ld d, h
    ld h, l
    ld h, $99
    jr @-$2d

    pop de
    ld [hl], c
    ld a, [bc]
    ld l, b
    rst $00
    dec b
    call z, $e062
    sbc e
    ld h, c
    ld b, $62
    ldh [$82], a
    ld [hl], b
    xor h
    inc de
    ld [hl], a
    add h
    ld [hl], d
    ld b, l

jr_00a_6709:
    pop bc
    ld b, $c7
    ld l, a
    inc b
    sbc [hl]
    inc c
    ld a, b
    and b
    ld h, [hl]
    cp [hl]
    add hl, de
    ld d, e
    ret nz

    ld d, c
    ld c, h
    ld e, $c2
    ld c, [hl]
    add hl, hl
    inc sp
    add d
    ld [c], a
    rla
    call c, Call_00a_5424
    db $ed
    ld h, l
    ld e, [hl]
    add c
    push hl
    ld a, [bc]
    xor a
    ld a, l
    add hl, hl
    ld e, b
    inc de
    ld b, a
    xor e
    dec c
    ld [$ca11], sp
    and $2e
    sub [hl]
    dec [hl]
    ld d, b
    ld a, [hl]
    add hl, de
    ld a, [de]
    jr nc, jr_00a_66cd

    xor d
    ld [hl+], a

jr_00a_6741:
    inc hl
    db $e3
    ld a, [hl-]
    inc d
    push hl
    ld d, c
    or h
    sub [hl]
    adc l
    ld de, $a693
    adc [hl]
    ld d, $39
    ld e, [hl]
    dec sp
    ld h, e
    sub c
    ld hl, $54e2
    adc $16
    jr c, jr_00a_6709

    ld [hl+], a
    or d
    inc e
    ret


    ld d, d
    inc h
    db $e4
    ld [hl], e
    rla
    adc h
    ld [de], a
    inc hl
    and l
    ld b, d
    call nc, $c514
    ld sp, $658e
    jr @-$39

    ld b, $31
    adc [hl]
    ld [hl], l
    inc sp
    ld b, d
    ld [hl-], a
    ld c, [hl]
    add l
    and l
    and h
    jp c, $938b

    adc d
    ld e, d
    ld d, d
    inc e

jr_00a_6783:
    and h
    ld d, d
    ret c

    inc de
    and l
    ld d, h
    ld d, [hl]
    add d
    adc h
    ld h, $39

Jump_00a_678e:
    ld d, d
    xor b
    jr z, jr_00a_6783

    db $e4
    di
    ld h, c
    ld c, a
    inc sp
    ld e, b
    ldh a, [$f7]
    xor h
    call nc, Call_000_209a
    sbc e
    or h
    and [hl]
    ld d, c
    ld d, d
    ld h, d
    add h
    add hl, bc
    ld l, c
    ld d, c
    ld d, h
    ld h, b
    sub [hl]
    sub b
    add h
    and l
    jr nz, jr_00a_6741

Jump_00a_67b0:
    inc d
    sbc h
    inc d
    or [hl]
    inc l
    db $10
    ld a, $93
    inc b
    or d
    ld d, h
    ld [hl], c
    and c
    ld b, l
    ld b, e
    inc e
    ld d, d
    xor h
    ld l, c
    sub c
    ld c, b
    ld c, c
    add d
    sub l
    rst $20
    ld a, $39
    db $76
    ld h, b
    adc d
    add d
    ld [hl], e
    ld sp, $2208
    ret nz

    add e
    ld e, h
    ld [$29a3], sp
    rst $00
    sub l
    add hl, de
    ld d, b
    pop bc
    inc hl
    ld c, $70
    or c
    ret nc

    adc h
    inc d
    ld [hl], b
    push bc
    or d
    ld c, e
    inc bc
    ld c, b
    ld c, h
    ld [$c931], sp
    inc h
    dec h
    ld d, [hl]
    ld b, l
    ld d, h
    ld [hl-], a
    ld [de], a
    sbc h
    sbc c
    add hl, bc
    ld l, h
    ld d, d
    sub d
    sub c
    sbc h
    or d
    dec hl
    dec b
    dec de
    inc hl
    ld b, d
    sbc d
    pop de
    ld a, [hl-]
    ld l, b
    sub h
    sub d
    sub e
    ld a, [de]
    pop de
    ld d, c
    sbc d
    adc d
    xor b
    and c
    adc e
    ld c, c
    push bc
    and d
    and l
    call nz, Call_000_3054
    ld b, e
    inc de
    inc e
    ld [hl], h
    inc [hl]
    sbc b
    ld hl, $9303

Call_00a_6823:
    inc e
    ld c, l
    ld d, h
    sub l
    and b
    xor l
    inc b
    ld de, $ac84
    ld l, b
    sbc b
    ld c, c
    ld d, c
    push hl
    rst $00
    adc l
    daa
    and e
    ld d, d
    xor e
    ld e, $10
    ld b, h
    cp b
    ld [de], a
    rst $18
    db $d3
    ld b, h
    ld [de], a
    ld [c], a
    ld d, h
    adc b
    inc hl
    dec sp
    ld a, [c]
    dec d
    rlca
    ld [$4d16], a
    ld h, d
    dec hl
    ld c, $31
    ld [hl], e
    add [hl]
    pop bc
    dec l
    ld [hl+], a
    call z, $13f2
    ld h, $f1
    ld [hl], e
    ld a, b
    ld l, b
    and h
    ld [hl], d

jr_00a_685f:
    ld [hl+], a
    db $f4
    pop bc
    add e
    ld l, $86
    ld [hl-], a
    adc e
    xor e
    add c
    db $e4
    sbc b
    ld [c], a
    cp e
    ld l, a
    ld h, b
    ld e, b
    ldh [$dc], a
    ld l, b
    db $10

Call_00a_6874:
    xor d
    add hl, sp
    inc hl
    ld [$cce2], sp
    or d
    dec d
    dec sp
    sub [hl]
    ld b, $a5
    ld a, [hl-]
    ld a, [hl+]
    ld l, $8f
    rla
    ld l, a
    ld b, l
    or b
    ld c, c
    sbc e
    ld c, c
    ld d, h
    ld e, a
    rst $08
    sbc e
    ld c, c
    jr z, jr_00a_685f

    ld b, $10
    ld h, $52
    jp z, $4b18

    sbc l
    xor l
    inc b
    ld [hl], c
    call nc, Call_00a_540a
    jp nz, $159c

    ld [bc], a
    adc a
    dec d
    ld sp, hl
    sbc l
    ld c, c
    ld l, [hl]
    push hl
    call nz, Call_00a_6a39
    push bc
    inc a
    ld d, [hl]
    sub l
    ld h, [hl]
    adc d
    inc [hl]
    add h
    adc a
    jr jr_00a_68df

    ld d, b
    pop de
    db $10
    ld l, c
    adc e
    and $52
    or c
    add a
    inc sp
    cp a
    sub a
    ld b, [hl]
    inc [hl]
    ld b, e
    ld c, b
    jr nc, jr_00a_6927

jr_00a_68cb:
    ld e, l
    jr @-$2d

    inc d
    adc h
    ld e, $31
    call $6104
    ld e, $28
    ld h, [hl]
    and l
    ld d, d
    sub h

jr_00a_68db:
    jp hl


    ld h, h
    ret


    adc b

jr_00a_68df:
    add l
    db $eb
    ld d, h
    db $e4
    add l
    inc b
    or h
    cp e
    add l
    ld a, [bc]
    cp l
    add hl, sp
    jr jr_00a_6910

    ld h, l
    ei
    ld c, c
    or l
    ld e, [hl]
    inc b
    rra
    ld b, c
    dec l
    ld [hl], $a7
    xor $27
    ld l, d
    xor $92
    ld [hl+], a
    ld d, [hl]
    ld l, $49
    ld h, c
    and b
    sub b
    call Call_00a_5261
    jr z, jr_00a_68db

    ld e, b
    xor d
    jr @-$76

    dec a
    cpl
    ld l, b

jr_00a_6910:
    ld d, e
    and d
    adc d
    cp e
    rlca
    ld c, c
    xor c
    adc [hl]
    sbc d
    jr nc, jr_00a_68cb

    or [hl]
    ld h, $8e
    sub a
    adc l
    ld d, h
    and l
    ld a, [hl-]
    ld l, e
    jr nc, @-$0a

    inc e

jr_00a_6927:
    ld [de], a
    ld l, b
    jp hl


    di
    ld d, $c2
    ld h, d
    xor b
    ld [$a4b4], a
    inc d
    push bc
    ld c, [hl]
    push bc
    inc b
    add [hl]
    ld c, $30
    ld d, e
    xor [hl]
    add d
    add hl, bc
    rst $08
    ld [hl+], a
    ret c

    adc b
    add a
    ld [hl-], a
    and d
    sbc c
    jr c, jr_00a_69b2

    xor l
    ld [hl+], a
    ld [hl], l
    dec d
    adc b
    and e
    sub c
    ld d, h
    sub l
    ld [hl+], a
    add [hl]
    xor [hl]
    dec bc
    ld b, [hl]
    sub $21
    ld sp, $9a68
    ld d, h
    ld e, [hl]
    dec h
    ld b, c
    ld b, [hl]
    pop de
    adc e
    ld c, e
    adc l
    db $10
    ld d, e
    dec d
    ld a, [hl+]
    db $fc
    jp nz, Jump_00a_4c49

    sub l
    add d
    ld c, b
    ld a, c
    ld c, h
    add sp, -$78
    push bc
    jr nc, @-$78

    inc hl
    ld e, e
    dec b
    ld [hl], $46
    sub h
    cp c
    ld d, l
    adc b
    ld c, h
    ld e, $37
    adc b
    adc [hl]
    ld c, c
    ld d, l
    adc [hl]
    add hl, hl
    ld e, b
    adc c
    xor d

Call_00a_698b:
    ld [hl], l
    and [hl]
    adc a
    ld b, l
    ret nz

    add d
    ld [hl], d
    ld e, a
    add hl, de
    ccf
    ld e, b
    inc h
    and c
    ld a, d
    sbc h
    ld e, b
    cp h
    ld e, a
    db $f4
    rst $30
    jr jr_00a_6a1f

    ld b, e
    ld h, $4e
    push af
    rla
    db $eb
    call nz, $e120
    ld de, $c144
    inc bc
    inc bc
    cp a
    ld h, c
    add hl, de

jr_00a_69b2:
    ld e, a
    inc d
    add l
    or c
    cp e
    dec b
    rst $00
    ld b, d
    ld e, d
    ld b, h
    ld h, c
    rrca
    dec e
    ld d, c
    adc d
    ld a, [hl+]
    ld d, d
    db $76
    ld b, [hl]
    db $76
    or c
    rrca
    dec e
    add hl, hl
    sbc d
    add a
    ld b, e
    ld a, [hl]
    ld [hl], l
    pop de
    add h
    dec e
    ld [hl], h
    ld b, a
    and a
    ld d, d
    ld h, d
    add h
    ld h, e
    rst $00

jr_00a_69da:
    ld h, h
    ld h, b
    pop de
    ld l, a
    ld b, a
    ld a, d
    ld b, h
    inc [hl]
    ld c, a
    ld a, [$a075]
    pop bc
    sub d
    and h
    inc h
    ld e, d
    ld [hl], l
    ld hl, $f345
    cp [hl]
    sub e
    push bc
    ld a, [hl+]
    ld [hl], e
    jr nc, jr_00a_69da

    ld e, a
    ld a, [c]
    ld b, a
    ld [de], a
    and $c8
    and a
    inc b
    push hl
    ld e, d
    cpl
    and $7a
    xor d
    ret nz

    and $4f
    pop de
    add a
    rst $38
    and $17
    rst $38
    ld d, e
    ld a, [$6811]
    ld d, c
    ld [hl], b
    ld e, l
    db $fd
    xor c
    dec [hl]
    rst $38
    ld sp, hl
    ld c, d
    ld h, e
    dec de
    ld h, h
    ld h, [hl]
    rla

jr_00a_6a1f:
    xor d
    ld c, l
    jp hl


    ld a, [bc]
    ld sp, $e4b5
    ld b, [hl]
    ld de, $3511
    rst $38
    reti


    push bc
    ld sp, hl
    call $1c11
    sub b
    ld b, h
    add b
    ld b, h
    ld a, $39
    ld d, d
    sbc a

Call_00a_6a39:
    rst $10
    jr c, jr_00a_6a5a

    ld sp, hl
    ld [hl], l
    call c, $8163
    ld e, [hl]
    rst $38
    ld a, [$7773]
    sbc l
    ld a, d
    sbc $08
    ldh [$a0], a
    ld b, [hl]
    ld a, a
    ldh a, [$4e]

Call_00a_6a50:
    dec hl
    ld e, a
    rst $38
    ld [$8e53], a
    push af
    ld d, h
    adc a
    ld d, e

jr_00a_6a5a:
    add l
    rst $28
    db $f4
    inc h
    ld l, a
    ld hl, $6035
    ld d, l
    ld [$b81a], sp

Call_00a_6a66:
    dec e
    ld [hl], $b4
    adc b
    cpl
    inc hl
    ld b, d
    adc [hl]
    add hl, bc
    ld e, b
    adc d
    xor b
    ld a, [$f299]
    ld [$718a], a
    ld hl, $c310
    ld e, a

jr_00a_6a7c:
    sbc h
    ld c, e
    call nc, Call_00a_452a
    dec de

Jump_00a_6a82:
    and [hl]
    ld l, d
    push de
    dec de
    db $f4
    ld h, c
    dec bc
    cp $75
    cp a
    ld sp, hl
    jp nz, $c098

    rst $38
    sbc e
    ld sp, $9434
    rst $38
    sbc e
    ld c, c
    add [hl]
    xor a
    db $fd
    inc e
    rla
    db $e4
    push de
    ld b, a
    pop hl
    jr nz, jr_00a_6b09

    or [hl]
    ld d, l
    jp hl


    inc a
    ld d, l
    ei
    ld l, a
    cp d
    xor c
    dec sp
    ld e, h
    ld a, [hl+]
    ld c, c
    and b
    ld l, a
    jp nz, $983a

    dec de
    xor d
    jp nc, $a968

    add hl, sp
    ld e, a
    xor d
    ld l, $4d
    dec hl
    db $d3
    adc d
    call nc, Call_00a_48c5
    ld c, h
    ld [hl+], a
    ld l, l
    ld d, l
    db $fd
    ld [hl-], a
    xor e
    rlca
    ld d, d
    call nc, $8c86
    jr nz, jr_00a_6a7c

    ld e, d
    inc sp
    ld d, d
    and b
    ld b, c
    ldh [$cd], a
    xor b
    ld l, d
    call Call_000_2a98
    add d
    ld a, [bc]
    adc [hl]
    ld a, [bc]
    scf
    ld a, [hl]
    dec b
    dec h
    dec l
    adc l
    sub h
    sub $81
    db $eb
    push af
    ld [hl], l
    ld e, b
    push bc
    ld d, d
    push de
    ld [c], a
    add sp, $52
    ld de, $8d9e
    ld a, [hl-]
    cp l
    ld b, l
    and e
    dec d
    ld [hl], $a3
    add [hl]
    or l
    ld c, h
    call nc, $86ca
    adc h
    ld d, e
    add hl, sp

jr_00a_6b09:
    adc h
    db $ed
    ld c, e
    or l
    ret c

    pop bc
    ld c, d
    ld c, d
    and e
    ld c, e
    ld a, [c]
    add sp, -$2f
    ld c, c
    ld d, e
    add l
    db $e3
    ld e, b
    push de
    dec de
    ld b, l
    ld c, h
    sub h
    push bc
    push af
    inc [hl]
    and b
    and d
    ld l, $4e
    adc d
    push af
    ld c, d
    ld d, d
    dec l
    dec d
    inc sp
    and e
    ld a, [hl+]
    ld a, [hl+]
    xor a
    cp $ad
    ld a, [de]
    db $e3
    ld a, b
    add h
    sbc d
    jr c, jr_00a_6baa

    db $e3
    add l
    ld c, h
    ld l, b
    ldh a, [$ad]
    ld c, b
    and e
    jp z, Jump_00a_57ab

    ld e, a
    adc [hl]
    ld sp, hl
    or d
    ld l, $c7
    adc h
    add h
    cpl
    ld [hl-], a
    ld c, $b9
    call c, Call_00a_44c8
    ld h, e
    cp a
    rst $30
    rst $00
    ld d, e
    ld [bc], a
    ld e, l
    ld a, b
    ld c, e
    cp $29
    jp z, Jump_00a_66ba

    ld hl, sp+$7f
    cp $8c
    ld [hl], e
    ld e, a
    sub [hl]
    rst $38
    rst $30
    cp $9a
    jr nc, jr_00a_6bb6

    ret nc

    jr nz, @-$6d

    rst $38
    ld d, b
    ld d, c
    sbc e
    and b
    add d
    ld de, $289c
    ld [hl+], a
    db $fc
    ld l, $6e
    jp hl


    inc c
    ld l, c
    cpl
    rst $38
    ld a, d
    cp [hl]
    sbc e
    ld e, a
    ld sp, hl
    sbc h
    ld b, l
    rst $38
    rst $30
    db $fc
    ld l, a
    rst $38
    ld a, [$9860]
    db $dd
    ld [hl], b
    add $8a
    cp $1d
    sbc b
    call nz, Call_00a_4444

jr_00a_6b9e:
    and c
    inc e
    db $10
    ld e, [hl]
    ld l, e
    rlca
    jp hl


    add d
    ld sp, $29c7
    and l

jr_00a_6baa:
    ld a, a
    sub h
    sub e
    inc e
    sub [hl]
    sbc d
    rst $30
    sub [hl]
    adc l
    jr jr_00a_6c26

    and a

jr_00a_6bb6:
    dec de
    add $69
    ld e, a
    ld hl, sp+$23
    dec d
    sbc l
    ld c, d
    xor a
    rst $38
    cp b
    ld b, l
    ccf
    add hl, de
    ld sp, $158a
    rst $38

jr_00a_6bc9:
    rst $38
    rst $38
    ret z

    ld b, h
    add hl, sp
    xor d
    ld [hl], b
    ld e, l
    rst $38
    db $fc
    ld a, [$d117]
    sbc h
    ld l, c
    jr jr_00a_6b9e

    ld b, h
    rst $18
    rst $00
    inc c
    ld b, d
    ld c, a
    inc e
    ld d, b
    ld b, [hl]
    xor $e8
    and h
    ccf
    ld e, $27
    dec hl
    rst $08
    ld a, [$1d79]
    dec b
    ld b, a
    add d
    ld b, h
    cp l
    ld d, l
    ld d, a
    di
    sub l
    ld a, [hl]
    xor d
    add hl, sp
    sbc [hl]
    adc [hl]
    adc e
    ei
    ld a, [hl-]
    db $ed
    ld [$55ee], sp
    dec sp
    db $e4
    xor $68
    rst $28
    ld e, [hl]
    ld b, c
    db $f4
    add sp, -$50
    ld b, c
    db $d3
    xor l
    sub d
    dec [hl]
    ld a, [hl-]
    ld h, a
    add a
    cp a
    ld a, [hl-]
    ld h, l

jr_00a_6c18:
    adc a
    adc c
    sbc [hl]
    xor d
    ld b, e
    cp c
    jp z, $6184

    ld h, a
    sbc l
    ld [de], a
    sbc l
    xor b

jr_00a_6c26:
    ld h, a
    ld a, a
    ld b, a
    cp l
    ld e, $0c
    ld d, e
    ld c, c
    add hl, hl
    call $2904
    ld c, $72
    ret nz

    ld sp, hl
    rrca
    rst $20
    ld d, [hl]
    adc h
    ld a, l
    jr c, jr_00a_6c92

    cp d
    push de
    ld c, a
    dec c
    adc c
    adc a
    ld bc, $1d8f
    jr nc, jr_00a_6bc9

    ld c, [hl]
    dec [hl]
    ld a, a
    rst $38
    jp nc, $e2e8

    ld a, [hl]
    and e
    jr z, jr_00a_6c18

    scf
    and c
    ld d, b
    ld l, c
    dec l
    add hl, hl
    adc l
    add sp, -$76

jr_00a_6c5c:
    inc e
    jp z, Jump_000_3c25

    sbc b
    db $e4
    ldh a, [$96]
    jr nc, jr_00a_6cb1

    adc l
    xor c
    ld [hl], $58
    or [hl]
    scf
    sbc c
    ld d, d
    dec d
    ld l, b
    rst $00
    jr c, jr_00a_6c5c

    ld a, d
    jr c, jr_00a_6c89

    sbc [hl]
    xor d
    xor b
    adc $3c
    db $76
    dec sp
    sub e
    ret


    and h
    sbc b
    pop af
    inc h
    inc hl
    rst $00
    adc a
    ld c, a
    ld a, h
    ld [de], a

jr_00a_6c89:
    dec d
    sbc [hl]
    inc de
    ld d, e
    rst $00
    add h
    add d
    xor $8a

jr_00a_6c92:
    ld [hl], c
    and b
    jp z, $c8aa

    ld d, h
    ld b, l
    inc e
    ld [hl-], a
    ld de, $159d
    ld [hl], c
    cp e
    ld [bc], a
    and e
    sbc b
    xor c
    ld c, h
    ld l, l
    sub c
    ld d, b
    ld b, e
    jr jr_00a_6cfc

    add hl, hl
    adc $8a
    ld h, h
    cp $a6

jr_00a_6cb1:
    ret


    rra
    adc [hl]
    ld l, c
    ld b, a
    inc d
    sbc h
    ld l, d
    cp h
    sbc h
    db $10
    daa
    dec b
    ret nc

    ld b, a
    inc d
    inc c
    add d
    xor d
    xor d
    call nz, $9c4c
    pop de
    adc d
    sub a
    sbc [hl]
    rlca
    jp nc, Jump_00a_774a

    xor c
    dec l
    ld e, $14
    add h
    add hl, bc
    ld [c], a
    jp z, $d07c

    ld b, h
    cp c
    ld d, b
    ld c, [hl]
    call $d306
    xor d
    ld d, b
    sbc b
    db $e3
    ld d, l
    ld d, a
    cp h
    jr nc, jr_00a_6d37

    rst $18
    xor d
    xor c
    inc b
    jr nc, @-$1b

    ld l, d
    inc sp
    add a
    rlca
    dec [hl]
    and e
    ld l, [hl]
    inc b
    inc sp
    or d
    jr c, jr_00a_6d24

jr_00a_6cfc:
    jp nc, Jump_00a_7c0c

    jp c, $14d4

    ld d, [hl]
    inc hl
    rst $00
    scf
    sbc l
    ld a, [bc]
    ret z

    or b
    ld [hl], h
    db $e4
    xor d
    add [hl]
    rlca
    ld [$45e9], sp
    inc c
    db $eb
    db $eb
    ld a, $2f
    ld [hl], h
    daa
    ld h, [hl]
    ld b, h
    ld [hl], l
    add sp, $27
    ld [hl-], a
    ld e, a
    add hl, hl
    ret z

    pop bc
    ld d, l

jr_00a_6d24:
    ld d, b
    ld sp, $e9c4
    sub h
    ld d, $70
    ld [hl], b
    add $7a
    add hl, bc
    or e
    inc l
    ld h, l
    sub c
    sbc e
    ld c, c
    or [hl]
    add h

jr_00a_6d37:
    ld [hl], b
    ld c, b
    add hl, hl
    ld [$e7a0], sp
    ld [hl+], a
    dec sp
    inc b
    add l
    ld h, a
    inc a
    ld e, h
    ld [hl], a
    ld h, c
    sbc a
    ld e, b
    ld [hl], a
    or [hl]
    ld d, h
    db $f4
    rst $18
    xor e
    jp c, $94aa

    pop af
    xor $92
    inc sp
    ld a, [hl+]
    ld b, l
    rst $38
    ld c, [hl]
    add $23
    rra
    call z, $26da
    adc [hl]
    sub [hl]
    add hl, hl
    ld a, [$53f9]
    inc b
    sbc b
    inc [hl]
    and $4c
    jr nz, jr_00a_6dae

    xor b
    adc d
    ld l, $94
    ld e, d
    sub e
    adc c
    ld sp, $2fb8
    adc [hl]
    jr c, @-$76

    ld [$5b8b], a
    and e
    call z, Call_00a_6049
    ld d, e
    inc c
    or l
    ld hl, $bf8e
    ld a, [c]
    ld a, [hl+]
    dec [hl]
    ld b, [hl]
    and e
    ld a, b
    sub $26
    inc a
    ld e, d
    db $d3
    ccf
    add $3b
    ld d, $a4
    ld d, h
    ld d, [hl]
    dec l
    adc c
    ld c, [hl]
    jr z, @+$17

    dec d
    di
    add d
    ld a, d
    adc c
    ld h, e
    adc c
    ld [c], a
    ld l, $8c
    add sp, -$3f
    sub l
    ld l, b
    db $e3
    adc h
    ld [de], a

jr_00a_6dae:
    inc de
    dec hl
    ld l, b
    xor $42
    dec l
    ld h, d
    jp nc, $8960

    ld c, [hl]
    cp b
    ld [de], a
    ld a, [de]
    xor d
    xor d
    ld h, $32
    ld l, d
    ld c, h
    dec d
    ld c, e
    ld e, d
    add d
    and e
    add c
    jr nc, jr_00a_6e15

    xor d
    xor b
    sbc b
    dec d
    adc [hl]
    and h
    dec h
    jr jr_00a_6df6

    add d
    inc a
    dec b
    ld a, [de]
    inc hl
    ld c, h
    sub $3c
    dec sp
    inc d
    adc e
    push de
    ld d, [hl]
    adc d
    adc a
    ld c, $04
    ld [hl+], a
    add hl, hl
    ld d, h
    rst $00
    ld c, [hl]
    ld hl, sp+$24
    db $10
    sub l
    ld d, h
    ld l, d
    ld hl, $9382
    cp d
    ld b, d
    ld h, h
    adc a

jr_00a_6df6:
    dec d
    rst $30
    ld [hl], l
    add [hl]
    dec sp
    db $e4
    ld a, [hl+]
    sub h
    ld h, [hl]
    ld [hl+], a
    push de
    ld hl, $1a3c
    ld a, a
    jp hl


    push af
    ld d, l
    jp nz, $cea3

    xor d
    adc [hl]
    db $d3
    ld [hl], h
    push af
    ld h, h
    inc l
    ld hl, $c1ff

jr_00a_6e15:
    ld c, a
    ld [hl+], a
    add hl, de
    ld a, [bc]
    sub d
    xor e
    add hl, hl
    and l
    dec sp
    ld e, $0c
    add hl, de
    ld c, $31
    sub $29
    ld a, [hl-]
    cp b
    add h
    ld a, b
    adc c
    and b
    ld e, [hl]
    inc d
    sbc d
    sub e
    sbc a
    ld a, [hl+]
    ld a, [hl+]
    ret


    adc b
    xor d
    ld [hl], c
    ld b, c
    dec c
    add hl, sp
    ld [hl-], a
    rst $30
    ld [hl+], a
    ld [hl-], a
    ld d, d
    ld a, [hl+]
    or a
    add d
    ld c, [hl]
    jr @-$38

    dec l
    ld [hl], b
    db $eb
    ld a, [$8a25]
    ld c, [hl]
    sub l
    dec h
    sbc c
    sub c
    ld [hl], l
    adc b
    add d
    ld d, b
    ld h, e
    xor c
    dec b
    ld [hl], h
    rla
    dec d
    jp Jump_00a_42e1


    ld [hl+], a
    jr c, jr_00a_6e92

    adc a
    ld d, [hl]
    adc b
    ld c, c
    adc [hl]
    ld h, h
    inc [hl]
    inc de
    inc c
    jr nc, jr_00a_6eac

    ld sp, $4549
    inc sp
    ld e, a
    ld c, c
    add a
    inc e
    dec d
    ld c, $14
    dec de
    dec d
    ld l, b
    sbc b
    and l
    dec h
    ld h, b
    add c
    ld [$8271], sp
    rra
    and c
    ld e, c
    ld hl, sp+$28
    or [hl]
    add l
    xor $83
    and d
    ld e, b
    or [hl]
    inc d
    adc d
    xor b
    scf
    adc e
    ld e, d

jr_00a_6e92:
    adc c
    ld h, e
    inc b
    add [hl]
    ld sp, $4aa0
    jp nz, $c1a8

    adc h
    ld d, b
    ld b, d
    add hl, hl
    dec e
    ld c, b
    ld h, d
    ld d, b
    jp z, Jump_00a_4a9d

    ld e, b
    or l
    and c
    ld [hl], b
    rst $10

jr_00a_6eac:
    ld [$a2aa], a
    sub e
    ld [$6e18], sp
    and b
    pop de
    ld a, [$f00a]
    and c
    and e
    add [hl]
    inc d
    sbc c
    ld a, [hl+]
    ld a, [hl+]
    ld h, $76
    ld a, [hl-]
    ldh [$e2], a
    db $10
    adc $0c
    ldh a, [rNR51]
    and h
    adc c
    inc sp

jr_00a_6ecc:
    ld b, e
    inc b
    ldh a, [$a0]
    ld [hl], c
    ld b, c
    add c
    ld d, l
    sbc [hl]
    and b
    ld c, a
    rlca
    dec de
    inc c

jr_00a_6eda:
    adc b
    ld a, h
    ld d, d
    sub l
    dec sp
    push af
    ld a, [bc]
    ld d, h
    dec d
    ld h, $14
    jr jr_00a_6f3a

    ret nz

    or h
    add hl, de
    or b
    and c
    ld e, e
    pop bc
    ld h, $8f
    ld [bc], a
    pop bc
    add e
    inc c
    jr z, jr_00a_6f66

    or [hl]
    ld d, b
    ld h, e
    jp nz, Jump_00a_60a5

    and [hl]
    ld b, d
    or h
    adc b
    db $f4
    ld a, [hl+]
    dec sp
    add b
    ld b, h
    or e
    ld a, a
    call nc, $ff15
    ld d, e
    ld h, a
    sbc $7b
    ld a, [bc]
    ld h, $8d
    ld d, l
    ld a, [hl]
    add d
    dec b
    scf
    ld b, l
    ld b, c
    ld d, h
    ld d, b
    ld h, b
    ld e, a
    ld c, h
    jp c, $4125

    add c
    ld a, l

jr_00a_6f22:
    sub [hl]
    adc h
    push hl
    ld e, b
    ld h, c
    sbc $d7
    ld c, [hl]
    rla
    jr nc, jr_00a_6eda

    rst $30
    adc l
    xor a
    jr jr_00a_6ecc

    xor d
    adc [hl]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld hl, $4eb9

jr_00a_6f3a:
    ld c, d
    rrca
    ld b, [hl]
    ld h, h
    db $10
    ld h, e
    adc e
    ld l, b
    sbc d
    jr jr_00a_6f22

    ld b, [hl]
    sbc e
    ld l, $38
    ld e, a
    ld sp, hl
    add hl, de
    ld b, l
    sub $8d
    xor [hl]
    and b
    ld l, l
    ld e, b
    and $aa
    ld [hl+], a
    adc a
    ld a, [hl-]
    ld l, [hl]
    sbc l
    or c
    ld [hl-], a
    jr z, @+$22

    sbc h
    xor l
    adc e
    inc sp
    or d

Jump_00a_6f63:
    ld [hl], c
    cp h
    ld b, e

jr_00a_6f66:
    inc bc
    ld a, [hl]
    ld [hl], b
    or l
    inc c
    ret c

    jr c, jr_00a_6fe7

    rst $08
    inc bc
    ld b, c
    add a
    sbc e
    dec h
    ld h, [hl]
    inc de
    ld sp, hl
    ret nz

    db $e3
    db $e4
    ld a, a
    rst $38
    sbc h
    ld l, $ba
    dec hl
    ld e, a
    rst $20
    inc de
    rst $38
    and c
    ld l, l
    ld sp, hl
    call nz, $85de
    ld hl, $9c3f
    or h
    sub d
    db $dd
    inc e
    ld c, a
    add [hl]
    xor c
    rst $08
    ld d, h
    ld b, l
    rra
    inc e
    ld h, [hl]
    or d
    ld a, a
    push af
    ld a, a
    call nc, $9af0
    ld b, [hl]
    sbc e
    jp c, $f4f7

    db $ec
    add [hl]
    ld d, l
    ld b, [hl]
    sub c
    ld d, c
    or h
    ld [c], a
    ld d, l
    rst $38
    ld [$14a3], a
    ld l, l
    dec d
    jr c, @+$60

    sub l
    ld d, c
    ld e, b
    and h
    adc b
    add h
    and $bf
    ld l, e
    ld h, e
    ld l, b
    or l
    add hl, sp
    dec d
    adc [hl]
    dec h
    dec h
    add hl, sp
    dec e
    inc sp
    add c
    ld h, $41
    or $30
    and h
    jp nc, $d492

    ld h, c
    ld d, b
    ld b, c
    ld b, [hl]
    and [hl]
    dec l
    ld [c], a
    db $db
    ld hl, sp-$66
    db $f4
    adc l
    adc c
    ld d, d
    xor b
    ld d, b
    ld c, h
    and d

Call_00a_6fe6:
    db $10

jr_00a_6fe7:
    ld c, b
    sub l
    ld c, d
    ld l, d
    ld [hl-], a
    and c
    add [hl]
    adc h
    ld a, [hl+]
    cp b
    inc hl
    ld c, c
    ld a, [bc]
    ld a, [bc]
    dec l
    add d

jr_00a_6ff7:
    call nc, $58d2
    dec h
    inc sp
    add c
    ld b, c
    ld c, h
    ld a, [hl]
    add hl, sp
    inc de
    inc [hl]
    reti


    adc [hl]
    dec [hl]
    adc c
    ld d, l
    ld e, b
    sub l
    add hl, hl
    ld d, e
    adc l
    pop af
    ld l, d
    inc [hl]
    and d
    jr jr_00a_6ff7

    ld l, [hl]
    ld b, $14
    jp nc, Jump_000_22e8

    ld h, e
    db $76
    dec d
    adc b
    rst $20
    inc sp
    ld d, d
    dec d
    xor b
    pop de
    add c
    ld h, d
    ld d, c
    rst $20
    ld hl, $a232
    ld a, l
    jr nc, jr_00a_70a7

    adc d
    ld a, b
    sub a
    pop bc
    ld c, c
    add d
    ld h, $21
    cp b
    reti


    ld [hl], d
    jp nc, Jump_00a_6262

    ld h, $a8
    db $10
    add d
    ld l, $ff
    ld a, [$54a2]
    adc b
    sbc d
    ld a, [hl+]
    dec d
    dec c
    jr c, @+$6a

    ld d, a
    ret z

    and c
    ld a, b
    sub [hl]
    ld h, $82
    adc [hl]
    rlca
    ld a, [$a915]
    ld d, d
    ld d, $38
    and [hl]
    ld a, d
    add h
    add e
    xor h
    add hl, bc
    pop hl
    rst $18
    xor d
    jp Jump_00a_4ca8


    add hl, de
    call c, Call_00a_5585
    rrca
    ld a, c
    ld d, d
    ld [hl], c
    and d
    call nz, $fc4b
    cpl
    add l
    ld l, c
    ld e, d
    ld [hl], c
    xor e
    ld d, a
    rst $38
    ldh [$fe], a
    dec a
    xor h
    add hl, sp
    ret


    db $10
    cp a
    ld b, h
    ccf
    sub c
    ld [hl], a
    rst $38
    jp hl


    ret


    ld a, a
    dec b
    ld a, b
    ld a, a
    adc a
    and c
    ld a, a
    ld sp, hl
    ret z

    ld [$1f82], a
    pop hl
    ld a, [$023f]
    rla
    ld h, l
    jp z, Jump_00a_4b69

    add a
    inc hl
    ld b, $1b
    add [hl]
    jp nc, $a544

    ld a, e

jr_00a_70a7:
    jr @+$41

    rst $30
    add [hl]
    db $10
    and e
    ld a, h
    dec de
    ld a, d
    ld b, l
    ld a, [bc]
    cp $62
    ret nc

    xor l
    or b
    ccf
    add sp, $3e
    ldh [$f9], a
    inc [hl]
    rrca
    and $de
    scf
    rst $38
    rst $38
    or a
    add [hl]
    ld de, $fc7f
    ld [hl], d
    push de
    ld c, a
    ld hl, sp+$7e
    reti


    ld a, $1e
    ld [hl], h
    cpl
    rst $38
    rst $18
    add [hl]
    ld e, a
    sbc l
    rrca
    ld e, [hl]
    xor e
    rst $38
    jr nc, jr_00a_7105

    db $fd
    inc e
    adc a
    rst $08
    rst $38
    rst $38
    ld [c], a
    add d
    rst $38
    jp hl


    add $fc
    rst $38
    ld a, a
    rst $38
    ld [de], a
    rst $18
    ccf
    and a
    inc bc
    ld l, a
    db $f4
    inc d
    rst $38
    rla
    cp $ff
    jp hl


    xor h
    or l
    ld b, b
    add $49
    dec sp
    cp $ff
    ret


    adc e
    pop de
    ld c, h

jr_00a_7105:
    sub l
    inc b
    add hl, bc
    dec sp
    rst $38
    add l
    db $ec
    ld a, [de]
    ld e, d
    ld d, d
    jr @+$26

    and $4b
    rst $38
    and h
    db $76
    ld h, a
    inc de
    dec c

jr_00a_7119:
    adc e
    ret c

    pop af
    ld a, [bc]
    rla
    jp hl


    dec d
    add [hl]
    sbc h
    rla
    rst $30
    ld l, b
    ld [hl], $31
    inc a
    ld [hl], l
    jp $d210


    dec c
    call nz, $2047
    ld b, h
    or d
    ld a, l
    dec sp
    jr z, jr_00a_7160

    ld b, l
    ld b, c
    ld a, d
    and h
    sub $da
    ld a, [de]
    cp $97
    ld c, l
    sbc a
    ld l, l

Jump_00a_7142:
    ld d, $88
    cp a
    inc [hl]
    ld a, b
    adc c
    add e
    dec l
    db $fc
    pop bc
    ld e, l
    call z, $07bd
    cp $30
    ld a, a
    bit 1, b
    ld b, e
    add d
    db $e3
    dec hl
    xor c
    ld hl, $8e8a
    dec bc
    sbc h
    ld a, [hl+]

jr_00a_7160:
    ld sp, $1ea8
    ld c, h
    ld e, l
    ld d, e
    ld a, [hl-]
    ld sp, hl
    add hl, bc
    ld [hl-], a
    and c
    sub b
    ld c, c
    ld b, [hl]
    db $ed
    jr c, jr_00a_7119

    jr nc, jr_00a_71d3

    or h
    inc l
    inc de
    add [hl]
    ld a, [$f52a]
    add hl, bc
    dec sp
    dec hl
    push af
    ld a, $17
    ld a, c
    ld [hl], h
    add hl, bc
    adc h
    xor h
    ld [hl], b
    ld e, h
    ld [$293e], sp

Jump_00a_718a:
    ld d, c
    xor [hl]
    ld a, [hl-]
    inc a
    cpl
    sbc h
    or b
    ld e, [hl]
    ld b, a
    ld sp, hl
    and d
    ld b, d
    xor h
    ld d, [hl]
    and c
    add $b0
    ld h, c
    sbc c
    inc hl
    ld a, c

jr_00a_719f:
    cp e
    and [hl]
    ld [hl], b
    ld a, [hl+]
    ld a, [hl+]
    ld h, a
    ld [hl-], a

Call_00a_71a6:
    ld h, l
    ld d, a
    or $16
    sbc b
    or b
    ld h, $35
    ld a, h
    ret z

    add $b5

jr_00a_71b2:
    ld a, [hl+]
    pop bc
    and c
    call nz, Call_00a_4547
    ld [hl], $77
    jr nc, @+$29

    ld a, h
    dec c
    ld d, c
    ldh a, [$a0]
    ld d, l
    cp l
    sub $90
    ld l, c
    ld c, [hl]
    sub l
    ld [$2a26], a
    ld c, [hl]
    ld d, a
    and b
    adc h
    inc h
    xor c
    jr c, jr_00a_722b

jr_00a_71d3:
    xor b
    jp nz, $a864

    rst $10
    and d
    dec h
    adc b
    ld [hl], b
    pop af
    sbc [hl]
    ld d, c
    adc l
    ld h, e
    ld c, b
    jp z, Jump_00a_4c5f

    rst $10
    ld d, h
    pop de
    ld c, h
    ld l, b
    ret


    xor $a8
    jp nc, $638c

    rlca
    rst $38
    dec d
    ld hl, $e154
    adc d
    ld d, d
    ld d, a
    and c
    adc b
    ld a, [c]
    reti


    jr nc, @-$74

    ld e, b
    ccf
    ld sp, $c37c
    di
    ld c, d
    pop bc
    and h
    xor c
    ld hl, sp-$3f
    db $fc
    cp b
    and l
    adc l
    inc hl
    ld a, [hl-]
    jr nc, jr_00a_719f

    db $d3
    or l
    jp nc, $88d4

    db $eb
    ld b, c
    dec de
    ld [c], a
    jr nz, @-$65

    jr c, jr_00a_71b2

    inc l
    ret


    adc e
    adc l
    ld [de], a
    xor d
    ld d, [hl]
    jr c, @+$66

    inc h
    dec h

jr_00a_722b:
    ld b, d
    ld [$e13a], a
    adc c
    xor b
    sub $7b
    jp z, $9d42

    cp d
    dec c
    and e
    or a
    and a
    dec sp
    dec b
    call z, $1f1e
    rst $38
    and a
    ld a, [de]
    ld a, [de]
    db $fc
    ld b, l
    ld c, l
    rst $38
    ld sp, hl
    or l
    cpl
    push af
    ld [bc], a
    ld c, $8b
    or a
    rst $38
    sbc e
    rst $18
    rst $38
    ld hl, sp+$7c
    rra
    ld a, [$c6d5]
    ld l, b
    ld b, h
    ld a, a
    cp $19
    scf
    cp $9b
    or [hl]
    xor a
    rst $38
    ld a, [$f02b]
    ret nc

    ld b, [hl]
    inc c
    inc c
    ld [hl-], a
    rrca
    ld l, d
    and c
    ld a, a
    pop af
    add h
    ld d, d
    ld c, $43
    dec hl
    ld [hl], b
    db $fc
    add l
    rst $28
    and l
    call nz, Call_00a_60a1
    jp $affb


Jump_00a_7282:
    di
    inc b
    ld e, $c5

Jump_00a_7286:
    ld l, c
    ld l, b
    ld [hl+], a
    rst $38
    db $ed
    ei
    ld sp, $e61e
    xor b
    call nz, $fe77
    ret nc

    ld b, [hl]
    ret z

    ld b, [hl]
    jr c, jr_00a_72ba

    dec b
    rst $20
    cpl
    ld [$1f42], a
    ld a, [bc]
    rrca
    ld h, a
    ld [bc], a
    ld b, a
    ldh a, [rNR50]
    call nz, $a725
    rlca
    dec [hl]
    ld a, [$1861]
    and b
    sbc b
    ret z

    and h
    pop bc
    inc e

jr_00a_72b4:
    ld [hl], d
    ld [de], a
    db $10
    or d
    ld a, d
    and b

jr_00a_72ba:
    ld b, h
    cp b
    sub h
    ld d, l
    ld d, h
    ldh [$74], a
    ld e, e
    add sp, -$61
    ld c, [hl]
    jr c, jr_00a_72b4

    ld b, d
    dec sp
    ld h, e
    cp a
    or e
    cp [hl]
    ld c, [hl]
    or $3b
    call c, $93ef
    cp d
    and [hl]
    dec sp
    dec l
    add hl, de
    db $e4
    and l
    ld c, [hl]
    ld l, b
    ld l, c
    ld e, h
    ld h, e
    jp hl


    ld h, a

jr_00a_72e1:
    ld a, [de]
    ld a, [bc]
    ld c, d
    ld [hl], b
    ld b, c
    dec bc
    ld [hl], h
    ld c, l
    ld [bc], a
    ld [hl], c
    rst $00
    ld h, l

jr_00a_72ed:
    add h
    ld a, [hl+]
    ld [hl], l
    ld [hl+], a
    pop af
    push de
    inc hl
    ld e, $ea

jr_00a_72f6:
    ld [hl], a
    jp z, $4277

    sbc l
    adc b
    ld a, [c]
    add hl, bc
    rst $10
    dec c
    ld a, [hl]
    sub b
    and c
    daa
    ld c, l
    dec c
    rra
    ld c, [hl]
    ld [hl], a
    and l
    rst $38
    ld c, a
    ld c, d
    adc c
    push hl
    ld e, a
    rst $38
    push af
    ld d, e
    call $aa6a
    cp $d3
    cp c
    ld d, b
    call z, $1793
    ld sp, hl
    ld l, d
    and l
    jr c, jr_00a_72f6

    inc d
    adc c
    scf
    sub b
    or e
    dec l
    dec [hl]
    ld d, [hl]
    daa
    sub d
    dec h
    xor b
    inc d
    or a
    sub [hl]
    xor b
    dec d
    pop bc
    ld d, h
    jp nz, Jump_00a_50b5

    add a
    ld c, e
    ld c, c
    xor l
    and b
    and d
    ld e, [hl]

jr_00a_733f:
    ld h, $48
    and h
    add h
    ld h, $15
    sbc a
    adc c
    ld h, c
    adc b
    ld d, d
    jr z, jr_00a_72e1

    ld [hl-], a
    sub b
    sbc l
    inc b
    ld [hl+], a
    dec e
    ld e, d
    dec d
    adc c
    ld c, h
    jr z, jr_00a_72ed

    ld sp, $a251
    ld e, $ec
    inc d
    ld e, [hl]
    and e
    dec b
    ld l, b
    ld l, b
    sub l
    ld sp, $6952
    and c
    and d
    cpl
    jp c, Jump_00a_5e76

    ld a, [bc]
    cp [hl]
    ld c, c
    ld e, c
    ld c, d
    ld d, d
    sub l
    and l
    inc b
    xor d
    and c
    adc c
    or h
    xor e
    db $eb
    ld [hl], a
    dec c
    dec d
    add hl, hl
    ld c, h
    ld h, d
    xor d
    adc h
    ld l, c
    dec h
    ld b, d
    ld h, $65
    ld [c], a
    sub h
    adc b
    push de
    ld l, b
    jp nz, $261b

    ld sp, $55a5
    and d
    jr @+$58

    ld [hl-], a
    ld d, d
    ld d, [hl]
    jr nc, jr_00a_733f

    dec a
    xor d
    xor a
    and e
    ld [hl], l
    ld d, l
    push af
    ld a, [hl+]
    ld c, h
    db $e3
    ld e, c
    dec h
    db $f4
    and l
    ld e, [hl]
    sub [hl]
    adc h
    dec h
    add hl, hl
    adc [hl]
    add hl, bc
    dec b
    ld d, h
    sbc d
    ld c, b

Call_00a_73b5:
    and e
    ld a, d
    xor b
    db $e3
    sub b

jr_00a_73ba:
    ld e, d
    ld [hl+], a
    and e
    sub c
    ld d, e
    add hl, de
    inc [hl]
    add l
    ld d, h
    ld d, l
    jr c, jr_00a_7420

jr_00a_73c6:
    add l
    inc sp
    sub l
    add hl, hl
    ld h, $a8
    push hl
    adc c
    ld h, e
    add d
    xor d
    add hl, bc
    rla
    ld d, b
    xor b
    ldh [$89], a
    ld b, l
    and l
    ld c, [hl]
    dec b
    sub l
    ld b, c
    ld d, d
    call nc, $dad1
    ld l, $29
    ld c, e
    ld b, [hl]
    xor b
    and l
    ld b, l
    rst $18
    ld d, d
    ld e, e
    adc h
    jp nc, $ac59

    jr jr_00a_73ba

    and d
    ld h, $0a
    cp l
    ld d, c
    adc h
    sub [hl]
    add hl, hl
    sbc d
    ld h, e
    ld e, b
    cp e
    ld d, d
    add sp, -$3f
    ld h, e
    dec hl
    ld h, e
    and d
    cp a
    ld d, l
    ld d, l
    ld l, d
    ld sp, $8f56
    ld [bc], a
    xor d
    sub l

jr_00a_740e:
    ld d, l
    xor d
    xor b
    and $d5
    inc l

jr_00a_7414:
    ld a, d

jr_00a_7415:
    ld a, h
    ld c, h
    add hl, bc
    ld [de], a
    xor d
    ret z

    and a
    adc a
    dec b
    xor d
    push de

jr_00a_7420:
    ld d, e
    ret nz

    sbc [hl]
    inc b
    jr c, jr_00a_73c6

    call nz, $ad44
    db $d3
    ld [bc], a
    ld a, [bc]
    or c
    call $9206
    add d
    pop af
    cpl
    ld [$1684], a
    xor b
    reti


    cp d
    ld c, $4c
    sub l
    inc h
    xor d
    xor d
    db $e4
    ld h, h
    or h
    ld a, [de]
    ld b, d
    ld h, c
    db $fd
    ld [c], a
    pop bc
    jr jr_00a_740e

    ld h, h
    ld h, c
    ld h, $b6
    db $10
    ld c, c
    ld e, [hl]
    jr jr_00a_7414

    ld sp, $108e
    ld b, b
    db $e4
    ld sp, $e8c0
    ld c, b
    rst $28
    inc hl
    ld l, b
    add $2a
    ld [$7164], sp
    push bc
    ret z

    ret nz

    adc [hl]
    inc a
    or d
    ld a, [bc]
    xor c
    jr z, jr_00a_74a6

    add hl, hl
    jp nz, Jump_000_328a

    jr nc, jr_00a_7415

    inc de
    inc bc
    ld c, $34
    ld c, l
    rlca
    or h
    db $e3
    ld a, [c]
    ld c, e
    ld [bc], a
    ld c, l
    sub e
    ld [bc], a
    ld d, a
    and $12
    ld h, e
    or d
    or e
    ld d, d
    ld c, $c4
    jr c, @-$1a

    pop de
    ld l, b
    ld h, [hl]
    ld [hl-], a
    ld h, e
    dec d
    ld a, b
    ld b, l
    or c
    add hl, hl
    add hl, bc
    add a
    ld e, c
    adc e
    inc de
    ld d, c
    adc [hl]
    ld a, [hl+]
    xor a
    inc de
    ld e, h
    add $30
    ld h, h
    and b

jr_00a_74a6:
    adc $91
    ld b, [hl]
    ld c, a
    push de
    ld b, e
    rst $28
    inc b
    ld h, [hl]
    jp c, $f30c

    ld [bc], a
    ld l, [hl]
    and [hl]
    sub [hl]
    ld l, l
    add d
    db $10
    xor h
    inc c
    inc d
    ld l, c
    inc e
    inc e

jr_00a_74bf:
    rst $08
    sub e
    pop bc
    dec b
    ld sp, $a98d
    ld c, e
    rst $00
    rlca
    inc bc
    ld b, $47
    jr nc, jr_00a_74f3

    pop de
    dec hl
    push de
    ld e, a
    inc e
    or e
    ld [c], a

Call_00a_74d5:
    and d
    pop bc
    inc de
    dec d
    db $e3
    db $10

jr_00a_74db:
    add l
    and a
    inc hl
    cp b
    pop hl
    inc h
    call nz, $f144
    ld c, h
    ld c, l
    xor c
    jp $186e


    ld h, $12
    jr nc, jr_00a_74bf

    ld d, c
    adc l
    ld a, d
    and l
    or h

jr_00a_74f3:
    ld a, [bc]
    jr jr_00a_7528

    ld [$b2d4], a
    ld de, $6d6c
    ld d, a
    rst $38
    db $e3
    inc c
    jr nc, @-$3c

    add e
    jr nz, jr_00a_74db

    db $10
    or h
    ld [hl], e
    inc [hl]
    ld h, l
    call nz, $8cc0
    ld [de], a
    xor e
    sbc h
    db $ec
    ld [hl], e
    ld b, [hl]
    ld d, c
    add $84
    sbc l
    inc [hl]
    ret z

    ld a, [hl+]
    sbc b
    xor d
    xor b
    ld d, h
    ld de, $44e0
    call $e554
    ld b, a
    jr nc, jr_00a_756b

    sbc e

jr_00a_7528:
    ld c, d
    ld h, e

jr_00a_752a:
    ld h, [hl]
    adc e
    cp a
    xor d
    ld b, c
    ld b, c
    jr nc, jr_00a_7599

    call z, Call_00a_436f
    add c
    ldh [$a5], a
    ld e, c
    ld a, [$5233]
    ld h, d
    dec d
    rla
    db $e3
    ld a, d
    xor d
    pop bc
    rst $38
    cp $8d
    dec d
    dec h
    sbc a
    ei
    pop hl
    ld c, l
    daa
    cp l
    ld c, $de
    dec h
    adc [hl]
    ld b, $ff
    cp $21
    adc c
    ld h, e
    ld l, c
    inc hl
    ld a, [hl+]
    xor [hl]
    adc l
    ld a, [hl+]
    dec de
    ld b, c
    xor c
    ld c, b
    or l
    ld c, h
    ld d, [hl]
    dec b
    jr jr_00a_752a

    ld c, b
    ld c, h
    sub a

jr_00a_756b:
    and a
    ld a, c
    ld sp, $8c88
    ld h, l
    ld a, a
    db $ed
    inc b
    add hl, hl
    inc d
    rst $10
    db $fd
    ld c, c
    or a
    and [hl]
    adc b
    ld h, e
    ld a, [hl+]
    and e
    ld e, d
    xor b
    ld a, [c]
    inc h
    daa
    ld a, [hl-]
    sbc c
    jr nz, @-$52

    sbc d
    or d
    sbc d
    db $d3
    ldh [$aa], a
    adc d
    inc de
    ld sp, hl
    and a
    ld [de], a
    add d
    ld c, d
    rrca
    cp $71
    and h

jr_00a_7599:
    xor a
    rst $18
    rst $20
    dec bc
    ccf
    push de
    inc bc
    cp $6a
    add sp, -$2a
    or d
    rrca
    rst $38
    sbc d
    jr nz, @-$71

    ld d, d
    rst $08
    rst $38
    ld sp, hl
    and [hl]
    pop hl
    ld a, e
    ld b, [hl]
    rla
    and $78
    ld a, [hl]
    or e
    rst $38
    and h
    add $d1
    inc d
    rra
    rst $38
    ld [$b671], a
    rst $38
    rst $38
    rst $38
    add $48
    dec h

jr_00a_75c7:
    rst $18
    ld d, a
    rst $38
    jp hl


    sub [hl]
    inc l
    ld d, h
    ld de, $711d
    pop af
    nop
    ld h, [hl]
    cp [hl]
    ld de, $cc53
    ld a, d
    inc a
    or a
    add c
    db $e3
    ret z

    ld a, b
    ld e, $39
    ld d, d
    inc d
    or l
    jp hl


    ld a, [hl]
    rlca
    adc e
    ld c, l
    xor $7d
    dec h
    db $eb
    ld h, b

jr_00a_75ee:
    add l
    ld [c], a
    dec l
    ld a, [$3395]
    add d
    cpl
    res 4, [hl]
    ld c, b
    ld [hl], h
    ld [hl+], a
    inc d
    adc b
    call $250a
    ld c, d
    ld e, b
    ld l, d
    add d
    ld d, d
    jp hl


    ld [$83c3], sp
    ld a, e
    ld b, d
    sub d
    ld hl, $a085
    ld d, c
    and d
    cp b
    ld h, l
    rst $38
    or h
    rla
    pop hl
    xor l
    rrca
    ld d, $07
    add [hl]
    sub h
    sub $bf
    xor e
    ld [$eac3], sp
    adc b
    and d
    inc h
    adc a
    jr jr_00a_75c7

    and d
    ld d, a
    ld c, c
    ld [hl], a
    ld l, c
    ld l, $98
    xor h
    jr jr_00a_75ee

    push de
    ld sp, $8150
    and b
    sub l
    xor b
    add [hl]
    inc e
    push bc
    ld e, c
    db $eb

Call_00a_763f:
    ld b, d
    db $fd
    ld h, $08
    ld [hl+], a
    ld d, l
    and c
    ld c, c
    ld c, b
    ld e, b
    adc d
    cp a
    ld b, l
    ld hl, sp-$66
    add c
    ld a, [de]
    ld a, [hl+]
    rst $28
    pop af
    ld h, e
    ld [hl], l
    ld b, [hl]
    sub c
    ld a, l
    add hl, de
    ld c, l
    jr z, @-$24

    sub l

jr_00a_765d:
    ld d, c
    xor a
    ld d, c
    sub c
    db $fd
    ld c, [hl]
    ld a, e
    ld b, d
    db $d3

jr_00a_7666:
    dec bc
    ret nc

    sub b
    call c, $c723
    or h
    cpl
    xor b
    ld a, [c]
    ld l, l
    dec bc
    ld c, a
    ld [hl-], a
    rst $30
    adc a
    ld a, [hl-]
    and e
    db $e3
    and a
    jp nz, $9e20

    ld a, d
    sbc [hl]
    ld l, e
    ld e, $6b
    ld e, $1a
    db $10
    ld h, e
    dec bc
    dec e
    ld [$3148], sp
    dec hl
    rst $08
    and b
    or c
    ld c, [hl]
    xor $e2
    sbc c

Jump_00a_7693:
    and b
    jp hl


    ld e, [hl]
    rst $08
    db $ed
    dec d
    cp h
    rst $08
    rst $38
    jr jr_00a_765d

    push bc
    cp a
    push af
    ld a, [hl]
    ld d, l
    ld a, e
    ccf
    rst $38
    jr jr_00a_7666

    ld b, h
    ld b, l
    ld a, [hl]
    add e
    ret


    ld [de], a
    and e
    ld a, a
    rst $38
    ldh a, [$3a]
    db $fd
    db $fd
    sbc b
    ld a, a
    ld [hl], c
    ccf
    cp $ff
    rst $38
    ld hl, sp+$55
    pop bc
    dec bc
    daa
    dec de
    db $fd
    rst $38
    rst $38
    cp $09
    add d
    ld sp, $3a48
    ld h, d
    or h
    rrca
    rst $38
    rst $38
    add a
    xor $28
    xor c
    cpl
    rst $30
    ld a, [$4b44]
    rst $38
    rst $38
    ld a, [$df45]
    cp a
    ld c, c
    rra
    and b
    cp $2a
    inc d
    rla
    ld a, a
    rst $38
    inc b
    ld h, c
    dec b
    rst $30
    dec bc
    rst $38
    rst $38
    sbc d
    ld b, h
    ld [hl], h
    ld l, h
    ld a, [$df90]
    ret nz

    xor h
    add hl, bc
    sub $f0
    ld b, l
    push bc
    ld c, b
    ld e, e
    ld [bc], a
    ld [hl], h
    jp Jump_00a_4419


    ld c, b
    db $e3
    ld e, $4a
    ld [de], a
    ld a, c
    add sp, $49
    rst $20
    ld b, b
    ret


    rst $30
    ret nz

    ld b, h
    ld a, [hl-]
    ld d, [hl]
    adc [hl]
    or [hl]
    ld c, [hl]
    ret c

    inc h
    pop hl
    ld d, l
    ld c, c
    ld d, a
    inc b
    add h
    pop de
    adc d
    sbc d
    ld sp, $234d
    ld [hl], $a9
    ld b, $34
    xor b
    ret


    ld c, b
    ld b, d
    ld c, l
    ld a, [hl+]
    dec b
    ld sp, $5998
    ld c, h
    rst $20
    db $e3
    ld b, [hl]
    ld a, [de]
    dec [hl]
    or b
    and e

jr_00a_773b:
    cp d
    and b
    ld d, d
    and e
    sbc d
    ld a, [hl]
    adc b
    ld h, h
    rst $20
    or a
    ld l, e
    reti


    dec sp
    ld l, a
    db $e3

Jump_00a_774a:
    cp d
    and e
    rst $00
    db $dd
    ld l, d
    db $76
    inc a
    db $76
    jp nc, Jump_00a_4977

    jp nz, Jump_00a_49d5

    db $d3
    jr jr_00a_77a1

    add hl, bc
    pop bc
    ld d, $a6
    ld [hl-], a
    ld l, l
    db $10
    db $fd
    ld d, h
    sub l
    xor c
    and h
    jp nc, $9c62

    db $f4
    ld a, b
    ld de, $7484
    ld c, l
    ld a, [bc]
    add d
    ld [hl], l
    pop de
    ld d, $9e
    inc b
    ld a, h
    ld c, b
    ld d, l
    cp d
    sbc [hl]
    xor c
    ld a, [hl-]
    sub h
    ld a, [hl-]
    and b
    ld d, d
    ld h, h
    db $e4
    ld e, e
    ld c, $95
    ld d, [hl]
    jp z, $284e

    ld h, h
    ld e, c
    rst $38
    db $f4
    rst $20
    cp a
    add c
    ld a, [$fe7f]
    ld hl, $0a8e
    call z, $f669
    adc [hl]
    ld [hl], h
    and [hl]
    ld c, b
    ld [hl], e
    ld d, l

jr_00a_77a1:
    add hl, sp
    dec h
    push af
    ld [$a129], a
    adc h
    ret nc

    db $fd
    ld b, l
    dec bc
    rst $30
    add d
    ld [hl+], a
    add hl, sp
    jr nc, jr_00a_773b

    sub b
    xor c
    ld h, e
    inc [hl]
    pop de
    ld hl, $aa4a
    dec l
    ld hl, $6963
    ld [$42e0], sp
    and e
    adc [hl]
    sub h
    sub $3a
    rst $18
    ld d, l
    ld hl, $958e
    ld a, [$9685]
    ld a, [bc]
    add hl, sp
    ld e, a
    and d
    sbc c

jr_00a_77d3:
    adc b
    and e
    sub [hl]
    adc d
    ld e, a
    and d
    ld e, $39
    ld l, b
    cp d
    add hl, hl
    db $e3
    jp nz, $8e57

    sbc e

jr_00a_77e3:
    ld d, l
    ld e, a
    ld [$f738], a
    ld d, e
    xor e
    dec e
    ld l, b
    ld d, d
    xor l
    sub e
    daa
    ld a, [hl+]
    dec de
    ld b, b
    add l
    ld b, b
    ret


    add hl, hl
    rst $00
    adc $af
    reti


    ld c, $ca
    ld [hl], d
    ld a, b
    ld l, a
    ld a, [hl]
    jr c, jr_00a_77e3

    db $e3
    ld b, a
    ld c, $d1
    ld de, $1a19
    jr jr_00a_77d3

    ld e, h
    jr z, jr_00a_7872

    add d
    ld [hl], h
    ld a, [hl+]
    ld d, $dd
    and e
    inc [hl]
    ld d, d
    sub $67
    ld hl, sp+$30
    cp d
    add hl, sp
    dec e
    call nz, $0c27
    scf
    ld b, c
    ld a, l
    xor [hl]
    ld [c], a
    adc d
    ld b, e
    sbc d
    ld l, b
    ldh [$91], a
    rlca
    db $f4
    ld h, c
    pop de
    cp l
    and c
    sbc e
    ld a, c

Call_00a_7834:
    ld de, $07c7
    ld l, d
    ld e, d
    pop de
    sub $c1
    ld a, a
    pop hl
    ld c, c
    ret nc

    add h
    ld [$3c46], sp
    ld [hl], e
    ld h, c
    inc b
    inc c
    ld h, e
    rst $00
    ld e, d
    sbc b
    or h
    db $76
    ld d, l
    ld a, [hl+]
    or c
    ret nc

    sbc c
    jr z, jr_00a_78ae

    push de
    ld [bc], a
    ld c, e
    add e
    inc b
    ld [hl], c
    add b
    ld b, h
    cp l
    ld d, l
    ld l, d
    and e
    sub c
    ld l, d
    ld a, [hl-]
    sbc b
    db $ed
    ld h, e
    cp c
    ld a, $81
    inc a
    inc d
    inc de
    ld d, l
    jr c, jr_00a_78d6

    jr nc, @+$5d

jr_00a_7872:
    ld d, e
    adc d
    dec b
    ld d, $df
    db $fc
    and $af
    db $76
    db $fc
    db $eb
    xor d
    and e
    pop hl
    ld h, a
    xor b
    and c
    ld d, l
    ld b, a
    ld a, [de]

Jump_00a_7886:
    pop de
    sub $d1
    db $db
    sbc l
    ld sp, hl
    ldh [$67], a
    add c
    sbc [hl]
    ld b, $78
    ld [hl-], a

jr_00a_7893:
    sbc d
    ld a, [hl+]
    ld [hl], c
    push bc
    xor l
    daa
    dec l
    ld [bc], a
    inc d
    ld [$d549], sp
    ld a, [bc]
    ld de, $00f5
    ld h, [hl]
    xor [hl]
    sub b
    and h
    db $ec
    ld h, d
    ld d, d
    ld d, h
    ld de, $4d48

jr_00a_78ae:
    ld d, l
    ld d, h
    or [hl]
    ld hl, $0a63
    res 7, a
    push de
    ld l, d
    rst $38
    rst $28
    sub $26
    ld hl, $5326
    inc h

jr_00a_78c0:
    adc d
    ld [hl], d
    ld l, d
    cp d
    adc l
    ld [de], a
    rst $18
    ld sp, $f5bf
    ld d, [hl]
    xor d
    jr c, jr_00a_78f0

    ld h, d
    ld de, $a25a
    push de
    ld a, h
    add sp, -$53

jr_00a_78d6:
    add sp, -$2a
    xor d
    ld d, e
    adc d
    dec h
    db $e3
    dec d
    xor d
    xor d
    ld d, l
    ld [hl], e
    add l
    ld hl, $5a4b
    add hl, hl
    inc e
    and h
    push hl

jr_00a_78ea:
    ld d, d
    sbc b
    ld a, [de]
    ld c, c
    or h
    sub [hl]

jr_00a_78f0:
    adc [hl]
    cp b
    add h
    dec [hl]
    add hl, hl
    xor d
    ld h, e
    sbc d
    jp nc, $6822

    inc hl
    inc [hl]
    rst $20
    ld a, b

jr_00a_78ff:
    adc b
    sub l
    dec l
    ld [$3a99], a
    ld [c], a
    jr nz, jr_00a_78ea

    ld d, h
    jr z, jr_00a_7893

    add l
    ld [hl], $85
    ld c, d
    sub b
    ld b, l
    jr nc, @-$5c

    ld e, $99
    inc sp
    ld h, d
    ld d, h
    cp d
    ld a, [c]
    xor l
    ld e, d
    add l
    sbc [hl]
    inc sp
    ld c, e
    ld d, b
    ld d, h
    xor d
    xor d
    adc b
    ld e, a
    ld [$4b36], a
    and e
    adc [hl]
    add l
    ld h, e
    adc l
    ld d, [hl]
    ld [hl+], a
    ld c, l
    ld a, a
    di
    adc d
    jr nc, jr_00a_78c0

    and l
    jr nc, jr_00a_798f

    and e
    adc d
    ld [hl+], a
    cp h
    rst $08
    rst $38
    ld [c], a
    ld a, [hl]
    xor d
    sub e
    ld c, b
    ld a, b
    db $d3
    ld d, a
    db $f4
    adc d
    cp a
    cp $04
    sub h
    add $b2
    ld e, h
    ld e, d
    and d
    ld l, d
    rst $38
    rst $38
    add sp, $24
    adc c
    jr jr_00a_78ff

    ld e, b
    rst $28
    sub d
    inc h
    dec bc
    ld d, c
    ld d, e
    or l
    ld c, l
    ld h, [hl]
    inc b
    inc hl

jr_00a_7966:
    ld [hl], l
    ld d, e
    rlca
    adc b
    ld e, b
    sbc [hl]
    sub l
    and c
    xor d
    push bc
    ld e, a
    dec c
    ld d, $68
    ld e, $04
    ld [hl-], a
    ld [hl+], a
    and b
    ld b, d
    dec bc
    add hl, de
    ld a, [bc]
    ld l, c
    db $fc
    ld hl, $0eb5
    ld e, l
    adc l
    daa
    jp nz, Jump_00a_5a05

    ld e, a
    ld [$a06f], a
    and a

jr_00a_798d:
    and d
    and b

jr_00a_798f:
    sub d
    ld e, b
    dec d
    ld a, [$2519]
    ld c, b
    sbc e
    db $ec
    inc hl
    ld b, h
    sbc d
    jp $310a


    ld h, b
    adc c
    ld l, a
    ld b, d
    ld c, h
    jr jr_00a_7966

Call_00a_79a5:
    ld [c], a
    and c
    ld e, l
    ld a, a

jr_00a_79a9:
    ldh a, [rHDMA5]
    add $94
    add a
    di
    ld b, $25
    ld a, a
    ld a, [bc]
    daa
    sbc d

jr_00a_79b5:
    xor [hl]
    sub l
    ld e, [hl]
    cp b
    cp b
    adc h
    sbc c
    ldh [$a8], a
    ld a, [de]
    db $ec
    add hl, de
    db $ec
    add l
    ld l, d
    ld h, $4a
    jp nz, $b296

    jr nc, jr_00a_798d

    ld h, a
    add [hl]
    ld [hl], c
    ld h, e
    adc l
    ld c, b
    and c
    xor d
    adc d
    ret


    ld d, d
    sub l
    scf
    and l
    xor a
    dec b
    ld d, d
    db $10
    sub l
    db $76
    jp nz, $afa6

    ld d, l
    ld b, l
    ld a, [de]
    adc b
    db $fc
    adc h
    ld h, $0a
    ld l, b
    ld l, h
    ld d, b
    pop bc
    ld d, c
    xor e
    inc d
    adc b
    cp a
    ld d, d
    xor b
    db $10
    and h
    db $10
    jp nz, Jump_000_2e7a

    jr jr_00a_79a9

    cp e
    ld b, $c9
    ld a, [$eb41]
    sub [hl]
    ld [hl], d
    sub e
    cpl
    ld b, c
    inc d
    adc b
    dec d
    db $76
    or b
    db $e4
    add hl, hl
    db $f4
    cp b
    inc hl
    ld a, [de]
    ld a, [bc]
    dec h
    adc e
    ld d, b
    and b
    ld b, e
    cp $31
    jp $4125


    add a
    ld d, [hl]
    ld sp, $70b2
    ld a, c
    ld c, l
    pop af
    add d
    ldh a, [$a5]
    ld sp, $98c1
    ld [hl], $0e
    call nc, Call_00a_49a9
    rst $28
    jr nc, jr_00a_79b5

    xor a
    db $dd
    dec b
    dec c
    ld b, d
    add hl, bc
    sbc d
    ld c, d
    ld b, l
    ld h, c
    ld [hl], d
    xor b
    jr c, @+$40

    inc b
    adc c
    and d
    rra
    ld d, c
    or $04
    ld h, b
    sbc [hl]
    ld b, $47
    xor b
    cp b
    dec h
    ld d, l
    ld h, b
    add d
    ld a, [c]
    inc h
    push bc
    ld h, c
    pop bc
    adc [hl]
    xor d
    ld h, $00
    ld b, h
    cp l
    ld d, l
    ld d, l
    ld d, e
    add l
    ld e, a
    ldh a, [$aa]
    xor d
    dec [hl]
    ld a, a
    xor b
    add sp, $78
    db $dd
    ld d, l
    ld sp, $e078
    adc a
    ld [bc], a
    ld d, e
    pop bc
    xor b
    ld a, [c]
    sub b
    adc [hl]
    reti


    cp c
    xor d
    xor c
    ld d, h
    ld [c], a
    xor c

jr_00a_7a7f:
    ld b, $90
    ld l, c
    dec bc
    push hl
    ld c, l
    db $ec
    ld [hl-], a
    add hl, hl
    ld h, c
    xor d
    add hl, sp
    dec l
    and e

jr_00a_7a8d:
    db $e3
    ld h, a
    xor d
    sbc l
    ld [$d138], sp
    add [hl]
    ld l, l
    add l
    dec de
    ld a, c
    ret c

    add l
    ld b, [hl]
    ld l, $70
    and $f9
    dec hl
    ld d, c
    adc h
    and [hl]
    sbc b
    or c
    jp $5f66


    adc d
    or l
    ld b, [hl]
    ld c, [hl]
    ld h, d
    rst $38
    ld [$f96c], a
    sbc l
    db $f4
    ld d, l
    ld a, [bc]
    xor a
    ld sp, hl
    or [hl]
    or c
    db $10
    jr c, @+$25

    ld d, [hl]
    ld l, a
    ld d, b
    ld c, a
    ld sp, $47dd
    rst $00
    nop
    ld [hl], a
    or d
    ld e, a
    rst $38
    ld c, [hl]
    daa
    adc [hl]
    cp e
    res 7, a
    ld c, h
    rst $18
    db $e4
    rst $20
    ld e, d
    ei
    ld c, h
    ld l, d
    ld d, d
    rra
    sbc b
    inc hl
    sbc [hl]
    or d
    ld hl, $55ab
    ld d, d
    ld l, a
    add c
    add c
    adc [hl]
    ld a, b
    ld [hl+], a

jr_00a_7ae8:
    jr nc, jr_00a_7b42

    ld d, d
    jp c, Jump_00a_6099

    ld h, e
    and l
    add hl, hl
    ldh [$6f], a
    ld h, $a2
    jr jr_00a_7a7f

    db $ec
    xor d
    adc b
    add d
    ld d, $a0
    ld d, b
    db $76
    add e
    ld c, a
    add hl, bc
    ld e, b
    pop de
    jr jr_00a_7a8d

    call nc, $8bed
    ld b, c
    push af
    push af
    ld b, [hl]
    or c
    xor l
    ld d, e
    and [hl]
    ld hl, $a2a2
    inc h
    jr nc, jr_00a_7b63

    daa
    db $d3
    sub c
    ld l, b
    jp nz, Jump_000_104c

    and b
    call z, Call_000_1354
    adc [hl]
    ld d, l
    dec c
    ld d, l
    dec l
    ld c, c
    ld c, h
    sub d
    inc de
    sbc [hl]
    xor d
    adc d
    ld h, d
    ld e, b
    add h
    ld a, a
    adc d
    sub e
    cp [hl]
    xor d
    and d
    sub h
    sbc b
    ld e, c
    ld a, [de]
    xor d
    ld d, e
    sub l
    db $e3
    dec [hl]
    add hl, bc
    ld d, b

jr_00a_7b42:
    ld b, c
    ld b, d
    ld c, h
    ld h, e
    add l
    ld d, h
    jp nc, $a8a2

    adc c
    inc b
    ld h, d
    and e
    ld h, a
    xor b
    ret


    ld d, h
    dec d
    ld c, l
    db $10
    and l
    ld e, b
    push de
    ld c, h
    rst $10
    jr jr_00a_7b71

    add l
    add hl, de
    ld [hl+], a
    ld e, [hl]
    dec sp
    xor d

jr_00a_7b63:
    add l
    jr nc, jr_00a_7ae8

    add hl, de
    ld a, [hl+]
    sub e
    ld b, l
    ld a, [hl]
    ld sp, $ba78
    ld h, $19
    ld [hl+], a

jr_00a_7b71:
    jr nc, @-$6c

    rst $18
    xor b
    jp nz, Jump_00a_4241

    and d
    ld h, e
    dec d
    ld h, $37
    ld d, l
    add hl, hl
    ld hl, sp+$7e
    jr nc, jr_00a_7bce

    sub b
    ld d, h
    sbc c
    ld h, h
    ld d, d
    sbc b
    dec hl
    rst $38
    add c
    ld b, $08
    ld hl, $4c70
    and l
    dec b
    ld b, $87
    ld [c], a
    sub e
    ld [hl], $08
    ld d, h
    ld e, b
    jr z, @-$24

    ld b, d
    ld l, $8c
    ld h, d
    db $10
    ld h, d
    inc e
    ld [$a989], a
    ld c, d
    ld b, [hl]
    ld e, [hl]
    adc c
    jp nc, $95a3

    add hl, hl
    and e
    add hl, bc
    xor b
    ld [hl-], a
    ld d, h
    add [hl]
    adc [hl]
    ld h, h
    and h
    pop hl
    sub [hl]
    dec sp
    jp hl


    ld l, b
    cp l
    and h
    xor e
    inc e
    sub c
    ret c

    pop af
    ld [hl], h
    add $b3
    add hl, sp
    adc $83
    inc b
    ld a, [de]
    ld h, e
    ld [hl-], a

jr_00a_7bce:
    ld d, h
    jp nz, Jump_000_089d

    ld b, l
    pop bc
    sbc c
    ld a, [hl-]
    pop de
    inc c
    ld [hl], h
    ld h, [hl]
    ld l, $2d
    ld [c], a
    adc l
    ld h, h
    or c
    push de
    ld d, $84
    ld a, [bc]
    call nz, Call_00a_5bd1
    sbc l
    xor d
    or h
    dec c
    pop af
    add h
    ld b, h
    adc h
    sbc l
    ld [hl], c
    ld l, b
    ld h, c
    jr jr_00a_7c38

    db $ec
    ld c, $12
    add hl, bc
    jp c, Jump_000_1685

    ret z

    ld [hl-], a
    sub e
    ld de, $8202
    ld [hl], h
    pop af
    add h
    ld h, d
    adc d
    ld h, e
    add hl, hl
    jp z, $16f7

Jump_00a_7c0c:
    and $0f
    pop af
    sub h
    ret


    rst $00
    ld l, b
    xor d
    and c
    sbc b
    inc a
    ld l, l
    ld d, c
    call $4545
    or c
    xor [hl]
    add hl, bc
    inc e
    sbc [hl]
    inc bc
    add hl, de
    push hl
    ld c, b
    ld h, c
    ld [hl-], a
    xor e
    ld [bc], a
    ld [hl], e
    ld h, $ac
    ld d, l
    ld [bc], a
    ld [hl-], a
    ld a, [bc]
    ld e, $19
    jp nz, Jump_000_1a83

    ld hl, $e118

jr_00a_7c38:
    ld hl, $4dd8
    add d
    ld l, h
    and c
    ld a, [de]
    or b
    inc a
    add d
    jr @+$5d

    ld c, $08
    ld [hl], l
    add $ae
    ld l, b
    add [hl]
    db $10
    db $e4
    ld d, b
    db $db
    ld c, b
    or c
    rst $00
    sbc c
    pop bc
    dec d
    sub d
    sub l
    ld l, b
    ld d, b
    ld sp, $0caa
    sbc d
    ld b, [hl]
    add hl, bc
    xor l
    cp [hl]
    or d
    ld h, b
    ret z

    ld b, [hl]
    ld [hl-], a
    ld c, $74
    cp e
    add h
    push hl
    ret nz

    sub [hl]
    add [hl]
    dec d
    rst $00
    ld [bc], a
    ld l, b
    set 4, l
    and c
    rrca
    pop hl
    inc e
    inc c
    ld e, h
    xor c
    sub a
    rla
    ld b, a
    dec hl
    inc c
    ld l, e
    ld h, $36
    ld c, l
    dec de
    add hl, sp
    ld d, c
    ld de, $96c0
    add [hl]
    ld c, e
    db $10
    add e
    sub h
    push hl
    inc h
    ld b, a
    inc c
    ld c, e
    inc b
    ld e, h
    jr z, jr_00a_7cdd

    ld [hl], $90
    rst $00
    ld e, h
    ld h, [hl]
    call nz, $e3a2
    inc [hl]
    ld [hl], h
    ld d, d
    xor c
    add b
    ld b, h
    cp d
    ld d, [hl]
    adc $06
    ld [hl-], a
    ld h, [hl]
    and e
    ld c, b
    ld d, b
    add c
    push bc
    ld b, $a7
    jp nc, Jump_00a_5962

    ld h, b
    ld [$995a], a
    db $e3
    ld a, [bc]
    ld b, c
    ld c, $75
    jp Jump_000_0506


    ld d, d
    ld d, d
    call nc, $9920
    sbc $09
    ld d, [hl]
    ld hl, $9ab2
    ld b, $60
    ld b, c
    res 2, b
    ld [hl], h
    ld [de], a
    sbc e
    pop de
    ld b, d
    adc e
    ld d, h
    jr c, @+$7e

    xor e
    add e

jr_00a_7cdd:
    ld d, b
    sbc d
    ld [hl], b
    ld h, c
    ld c, b
    ld a, b
    add $82
    db $db
    ld sp, hl
    ld h, c

jr_00a_7ce8:
    add d
    jr jr_00a_7cff

    ld [c], a
    or l
    adc h
    ld l, b
    db $e4
    cp [hl]
    xor l
    ld d, l
    ld c, [hl]
    ld l, c
    add [hl]
    xor d
    adc [hl]
    adc b
    ld hl, sp-$27
    or d
    ld l, d
    and [hl]
    xor b

jr_00a_7cff:
    or c
    add hl, bc
    ld l, a
    ld d, c
    ld c, h
    sub c
    inc d
    add h
    jr c, jr_00a_7d6a

    ld a, [bc]
    db $e4
    push bc
    jr z, jr_00a_7d36

    add hl, hl
    ld [$374c], sp
    and $4c
    rlc e
    call nz, $2f7c
    push hl
    db $e4
    jr nz, jr_00a_7ce8

    ld [bc], a
    and h
    ccf
    di
    dec d
    ld d, d
    inc de
    inc b
    inc c
    cp $17
    di
    ld sp, $3532
    sub $13
    ld a, [hl]
    ld d, e
    ld b, $e6
    inc d
    ld d, $8b
    ld a, h

jr_00a_7d36:
    ld c, h
    adc a
    add $b1
    add [hl]
    ld b, h
    pop hl
    ld c, e
    sbc h
    or b
    or [hl]
    add l
    ld d, c
    adc $91
    pop bc
    ld d, c
    pop de
    sbc [hl]
    inc c
    ld a, h
    ld h, b
    call Call_000_3ed7
    ldh a, [rBGP]
    xor $ff
    ldh [rBGP], a
    call Call_000_3021
    ld c, $04
    call Call_000_372f
    ldh a, [rBGP]
    xor $ff
    ldh [rBGP], a
    call Call_000_3021
    ret


    call Call_000_3ed7

jr_00a_7d6a:
    ld a, $01
    ld [$d09f], a
    xor a

jr_00a_7d70:
    ldh [$96], a
    call Call_00a_7d81
    call Call_00a_7d81
    dec b
    ld a, b
    jr nz, jr_00a_7d70

    xor a
    ld [$d09f], a
    ret


Call_00a_7d81:
    ldh a, [$96]
    xor b
    ldh [$96], a
    ldh [rWY], a
    ld c, $03
    jp Jump_000_372f


    call Call_000_3ed7
    xor a

jr_00a_7d91:
    ldh [$97], a
    call Call_00a_7da7
    ld c, $01
    call Call_000_372f
    call Call_00a_7da7
    dec b
    ld a, b
    jr nz, jr_00a_7d91

    ld a, $07
    ldh [rWX], a
    ret


Call_00a_7da7:
    ldh a, [$97]
    xor b
    ldh [$97], a
    bit 7, a
    jr z, jr_00a_7db1

    xor a

jr_00a_7db1:
    add $07
    ldh [rWX], a
    ld c, $04
    jp Jump_000_372f


    ld hl, $66f1
    ld b, $0f
    call Call_000_3e84
    ld a, [$d05e]
    and a
    jr nz, jr_00a_7df8

    ld hl, $d067
    ld de, $cfe9
    ldh a, [$f3]
    and a
    jr z, jr_00a_7dd9

    ld hl, $d062
    ld de, $d018

jr_00a_7dd9:
    ld a, [de]

Call_00a_7dda:
    cp $16
    jr z, jr_00a_7df8

    inc de
    ld a, [de]
    cp $16
    jr z, jr_00a_7df8

    bit 7, [hl]
    jr nz, jr_00a_7df8

    set 7, [hl]
    ld hl, $7b83
    ld b, $0f
    call Call_000_3e84
    ld hl, $7e03
    jp Jump_000_3c36


jr_00a_7df8:
    ld c, $32
    call Call_000_372f
    ld hl, $7e08
    jp Jump_000_3c36


    rla
    add e
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    sub d
    ld b, d
    ld a, [hl+]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
