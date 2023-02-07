; disasSembly of "yell.gbc"
SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    rst $38
    rst $38
    rst $38
    rlca
    db $fd
    ld b, d
    rlca
    ld bc, $0743
    dec b
    ld b, e
    rlca
    add hl, bc
    ld b, e
    rlca
    dec c
    ld b, e
    rlca
    jr nz, jr_008_4058

    rlca
    inc h
    ld b, e
    rlca
    dec hl
    ld b, e
    rlca
    cpl
    ld b, e
    rlca
    inc sp
    ld b, e
    rlca
    scf
    ld b, e
    rlca
    dec sp
    ld b, e
    rlca
    ccf
    ld b, e
    rlca
    ld b, e
    ld b, e
    rlca
    ld b, a
    ld b, e
    rlca
    ld c, [hl]
    ld b, e
    rlca
    ld d, l
    ld b, e
    rlca
    ld e, c
    ld b, e
    rlca
    ld e, l
    ld b, e
    add h
    rst $18
    ld c, e
    dec b
    xor $4b
    rlca
    db $fd
    ld c, e
    add h
    rst $28
    ld c, l
    dec b
    ld [bc], a
    ld c, [hl]
    rlca
    dec d
    ld c, [hl]
    add h
    ld h, h
    ld c, l
    dec b
    ld [hl], e
    ld c, l
    rlca
    add c
    ld c, l
    add h

jr_008_4058:
    cp $4a
    dec b
    dec e
    ld c, e
    rlca
    inc a
    ld c, e

Jump_008_4060:
    add h
    xor l
    ld c, [hl]
    dec b
    call z, $074e
    db $eb
    ld c, [hl]
    add h
    adc l
    ld c, h
    dec b
    and b
    ld c, h
    rlca
    or d
    ld c, h
    add h
    scf
    ld c, h
    dec b
    ld d, c
    ld c, h
    rlca
    ld d, d
    ld c, h
    add h
    ld h, l
    ld c, h
    dec b
    ld [hl], h
    ld c, h
    rlca
    add e
    ld c, h
    add h
    ld a, l
    ld c, [hl]
    dec b
    sub b
    ld c, [hl]
    rlca
    and e
    ld c, [hl]
    add h
    add a
    ld c, c
    dec b
    and h
    ld c, c
    rlca
    push bc
    ld c, c
    add h
    ld [hl+], a
    ld c, [hl]
    dec b
    ld b, c
    ld c, [hl]
    rlca
    ld h, h
    ld c, [hl]
    add h
    or e
    ld c, h
    dec b
    sbc $4c
    rlca
    db $fd
    ld c, h
    add h
    ld d, $4d
    dec b
    dec a
    ld c, l
    rlca
    ld h, e
    ld c, l
    add h
    add d
    ld c, l
    dec b
    and c
    ld c, l
    rlca
    ret nc

    ld c, l
    add h
    rlca
    ld c, h
    dec b
    ld a, [de]
    ld c, h
    rlca

Call_008_40c1:
    dec l

Call_008_40c2:
    ld c, h
    add h

Call_008_40c4:
    ld c, c
    ld c, e
    dec b
    ld h, h
    ld c, e
    rlca
    ld a, a
    ld c, e
    add h
    adc a
    ld c, e
    dec b
    or d

Call_008_40d1:
    ld c, e

Call_008_40d2:
    rlca
    push de
    ld c, e
    add h
    ld l, e
    ld c, d
    dec b
    adc d
    ld c, d
    rlca
    xor l
    ld c, d
    add h
    add e
    ld c, a
    dec b
    sub [hl]

Jump_008_40e3:
    ld c, a
    rlca
    xor c
    ld c, a
    add h
    or [hl]
    ld c, a
    dec b
    pop de
    ld c, a
    rlca
    db $ec
    ld c, a
    add h
    rst $38
    ld c, a
    dec b
    ld c, $50
    rlca
    dec e
    ld d, b
    add h
    adc l
    ld d, b
    dec b
    xor b
    ld d, b
    rlca
    jp $8450


    jr nz, jr_008_4154

    dec b
    cpl
    ld c, a
    rlca
    ld a, $4f
    add h
    sub $50
    dec b
    jp hl


    ld d, b
    rlca
    db $fc
    ld d, b
    add h
    and $51
    dec b
    add hl, bc
    ld d, d
    rlca
    inc l
    ld d, d
    add h
    cp $4e
    dec b
    dec c
    ld c, a
    rlca
    rra
    ld c, a
    add h
    ld d, a
    ld d, c
    dec b
    ld [hl], d
    ld d, c
    rlca
    adc l
    ld d, c
    add h
    ld c, b
    ld c, a
    dec b
    ld e, a
    ld c, a
    rlca
    db $76
    ld c, a
    add h
    add hl, bc
    ld d, c
    dec b
    inc l
    ld d, c
    rlca
    ld b, a
    ld d, c
    add h
    and b
    ld d, c
    dec b
    cp e
    ld d, c
    rlca
    sub $51
    add h
    daa
    ld d, b
    dec b
    ld c, d
    ld d, b
    rlca

Jump_008_4151:
    ld [hl], c
    ld d, b
    add h

jr_008_4154:
    ccf
    ld d, d
    dec b
    ld d, d
    ld d, d
    rlca
    ld h, l
    ld d, d
    add h
    ld [hl], d
    ld d, d
    dec b
    add l
    ld d, d

Call_008_4162:
    rlca
    sbc b
    ld d, d
    add h
    and l
    ld d, d
    dec b
    ret z

    ld d, d
    rlca
    ld [$8452], a
    db $eb
    ld d, d
    dec b
    cp $52
    rlca
    ld de, $8453
    sbc $49
    dec b
    push af
    ld c, c
    rlca
    ld [$844a], sp
    dec d
    ld c, d
    dec b
    jr c, jr_008_41d0

    rlca
    ld e, e
    ld c, d
    add h
    jp Jump_000_054a


    jp c, $074a

    pop af
    ld c, d
    add h
    add sp, $71
    dec b
    inc bc
    ld [hl], d
    ld b, $1b
    ld [hl], d
    add h
    ld [hl-], a
    ld [hl], d
    dec b
    ld d, c
    ld [hl], d
    ld b, $69
    ld [hl], d
    inc b
    ld a, e
    ld b, e
    inc b
    adc h
    ld b, e
    inc b
    sbc e
    ld b, e
    rlca
    ld [hl], h
    ld b, e
    inc b
    ld h, c
    ld b, e
    ld b, h
    bit 0, e
    dec b
    call nc, Call_008_4443
    db $db
    ld b, e
    rlca
    and $43
    ld b, h
    ld [$0743], a
    pop af
    ld b, e
    rlca
    ei
    ld b, e
    ld b, h
    dec e
    ld b, h
    dec b
    ld l, $44
    add h
    ld a, [hl]

jr_008_41d0:
    ld [hl], d
    dec b
    sbc c
    ld [hl], d
    ld b, $af
    ld [hl], d
    rlca
    ld e, d
    ld b, h
    inc b
    ld e, [hl]
    ld b, h
    inc b
    ld l, c
    ld b, h
    rlca
    ld [hl], h
    ld b, h
    rlca
    ld a, b
    ld b, h
    rlca
    ld a, h
    ld b, h
    rlca
    add [hl]
    ld b, h
    rlca
    sub b
    ld b, h
    rlca
    sub a
    ld b, h
    rlca
    and h
    ld b, h
    rlca
    xor [hl]
    ld b, h
    rlca
    cp e
    ld b, h
    rlca
    ret


    ld b, h
    rlca
    sub $44
    rlca
    db $e3
    ld b, h
    rlca
    db $fc
    ld b, h
    rlca
    ld b, $45
    rlca
    inc de
    ld b, l
    rlca
    ld a, [de]
    ld b, l
    rlca
    inc h
    ld b, l
    rlca
    dec hl
    ld b, l
    rlca
    ld [hl-], a
    ld b, l
    rlca
    inc a
    ld b, l
    ld b, h
    ld b, e
    ld b, l
    rlca
    ld d, h
    ld b, l
    rlca
    ld h, c
    ld b, l
    rlca
    ld l, [hl]
    ld b, l
    rlca
    ld [hl], l
    ld b, l
    rlca
    add l
    ld b, l
    rlca
    adc h
    ld b, l
    ld b, h
    sbc h
    ld b, l
    rlca
    and a
    ld b, l
    rlca
    xor [hl]
    ld b, l
    rlca
    cp [hl]
    ld b, l
    add h
    call nc, $0545
    rst $20
    ld b, l
    rlca
    ld a, [$8445]
    dec b
    ld b, [hl]
    dec b
    inc d
    ld b, [hl]
    rlca
    inc hl
    ld b, [hl]
    ld b, h
    ld l, $46
    rlca
    ld b, l
    ld b, [hl]
    add h
    ld e, c
    ld b, [hl]
    dec b
    ld [hl], h
    ld b, [hl]
    rlca
    adc e
    ld b, [hl]
    ld b, h
    sbc h
    ld b, [hl]
    rlca
    cp e
    ld b, [hl]
    add h
    jp nc, $0546

    push hl
    ld b, [hl]
    rlca
    ld hl, sp+$46
    add h
    add hl, bc
    ld b, a
    dec b
    jr nz, @+$49

    rlca
    scf
    ld b, a
    add h
    ld b, d
    ld b, a
    dec b
    ld e, c
    ld b, a
    rlca
    ld [hl], b
    ld b, a
    add h
    add c
    ld b, a
    dec b
    sub b
    ld b, a
    rlca
    sbc a
    ld b, a
    add h
    xor d
    ld b, a
    dec b

jr_008_428c:
    ret


    ld b, a
    rlca
    db $e4
    ld b, a
    ld b, h
    rst $30
    ld b, a
    dec b
    ld c, $48
    ld b, h
    dec h
    ld c, b
    dec b
    jr nc, jr_008_42e5

    ld b, h
    scf
    ld c, b
    dec b
    ld c, [hl]
    ld c, b
    add h
    ld h, l
    ld c, b
    dec b
    ld [hl], h

jr_008_42a8:
    ld c, b
    rlca
    add e
    ld c, b
    ld b, h
    sub b

jr_008_42ae:
    ld c, b
    dec b
    and b
    ld c, b

Call_008_42b2:
    add h

jr_008_42b3:
    or d

jr_008_42b4:
    ld c, b
    dec b
    pop af

jr_008_42b7:
    ld c, b
    rlca
    jr nc, jr_008_4304

jr_008_42bb:
    inc b
    or b
    ld b, e
    add b
    db $db

jr_008_42c0:
    ld e, e
    ld bc, $5e0c
    ld [bc], a
    ld e, d
    ld e, a
    add b
    add h
    ld h, c
    ld bc, $6419
    ld [bc], a
    ld a, e
    ld h, l
    add b
    inc b
    ld l, c
    ld bc, $6a43
    ld [bc], a
    ei
    ld l, d
    add b
    ld de, $016c
    push de

jr_008_42de:
    ld l, l
    ld [bc], a
    add a
    ld l, a
    add b

jr_008_42e3:
    cp [hl]
    ld [hl], d

jr_008_42e5:
    ld bc, $732c

jr_008_42e8:
    ld [bc], a
    add b

jr_008_42ea:
    ld [hl], e
    add b
    rst $18
    ld [hl], e
    ld bc, $742c
    ld [bc], a
    ld a, c
    ld [hl], h
    add b
    jr @+$77

    ld bc, $75d8
    ld [bc], a
    cp l
    db $76
    jr nz, jr_008_42c0

    inc sp
    rst $38
    jr nz, jr_008_42b4

    inc sp

jr_008_4304:
    rst $38
    jr nz, jr_008_42a8

    inc sp
    rst $38
    jr nz, jr_008_428c

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
    jr nz, jr_008_4373

    ld a, [hl+]
    rst $38
    ld hl, $2b41
    jr nz, jr_008_438a

    ld a, [hl+]
    rst $38
    jr nz, jr_008_42ae

    db $10
    rst $38
    jr nz, jr_008_42b3

    inc hl
    rst $38
    jr nz, jr_008_42b7

    dec h
    rst $38
    jr nz, jr_008_42bb

    ld h, $ff
    jr nz, jr_008_42de

    db $10
    rst $38
    jr nz, jr_008_42e3

    ld de, $20ff
    and d
    ld d, b
    rst $38
    jr nz, jr_008_42ea

    jr jr_008_436b

    ld sp, $ff33
    ld [hl+], a
    sub c
    jr z, jr_008_4372

    ld [hl], c
    jr @+$01

    jr nz, jr_008_42e8

    ld [hl+], a
    rst $38
    jr nz, jr_008_43cc

    ld [hl+], a
    rst $38
    jr nz, jr_008_43c0

    ld [hl+], a
    rst $38
    db $ec
    ld [bc], a
    jr nz, @-$6d

    ret nz

    rlca
    jr nz, jr_008_42ea

jr_008_4369:
    ret nc

    rlca

jr_008_436b:
    jr nz, @-$6d

    ret nz

    rlca
    inc l
    and c
    ret nc

jr_008_4372:
    rlca

jr_008_4373:
    rst $38
    ld hl, $33e2
    jr z, @-$1d

    ld [hl+], a
    rst $38
    db $ec
    ld [bc], a
    db $10
    ld a, [hl-]
    inc h
    ld a, [c]
    nop
    ld [bc], a
    db $10
    ld [hl+], a
    jr z, jr_008_4369

    nop
    ld [bc], a
    db $10

jr_008_438a:
    ld [$ecff], sp
    ld [bc], a

jr_008_438e:
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
    inc d
    inc h
    ld a, [c]
    nop
    ld b, $24
    ld a, [c]
    nop
    ld b, $10
    rla
    cpl
    ld a, [c]
    nop
    ld b, $10
    ld [$ecff], sp
    nop
    jr nz, @-$2c

    nop
    rlca
    jr nz, jr_008_438a

    ld b, b
    rlca
    jr nz, jr_008_438e

    add b
    rlca
    jr nz, @-$2c

jr_008_43c0:
    ret nz

Call_008_43c1:
    rlca
    ld a, [hl+]
    pop hl
    ldh [rTAC], a
    ld hl, $0000
    nop
    rst $38
    db $ec

jr_008_43cc:
    ld [bc], a
    db $10
    cpl
    cpl
    ld a, [c]
    add b
    rlca
    rst $38
    db $ec
    ld [bc], a
    cpl
    jp nz, Jump_000_0782

    rst $38
    db $ec
    ld [bc], a
    db $10
    ld d, $2f
    ld a, [c]
    nop
    inc b
    db $10
    ld [$2fff], sp
    and d
    ld [hl+], a
    rst $38

jr_008_43ea:
    cpl
    pop de
    nop
    ld [bc], a
    db $10
    ld [$24ff], sp
    push af
    inc sp
    jr z, jr_008_43ea

    ld [hl+], a
    cpl
    ld a, [c]

jr_008_43f9:
    ld hl, $22ff
    ld h, c
    inc hl
    ld [hl+], a
    and c
    inc sp
    ld [hl+], a
    pop bc
    inc sp
    ld [hl+], a
    ld d, c
    ld de, $f122
    inc sp
    ld [hl+], a
    ld b, c
    ld de, $c122
    inc sp
    ld [hl+], a
    ld sp, $2211
    add c
    inc sp
    ld [hl+], a
    ld sp, $2811
    ld b, c
    inc sp
    rst $38
    db $ec

jr_008_441e:
    ld [bc], a
    db $10
    ld b, h
    cpl
    ldh a, [$f0]
    inc b
    db $10
    rla
    cpl
    ld a, [c]
    ld d, b
    ld b, $10
    ld [$ecff], sp
    ld [bc], a
    cpl
    sub d
    nop
    ld b, $2f
    sub d
    add d
    rlca
    rst $38
    db $ec
    ld [bc], a
    jr z, jr_008_441e

    ld b, b
    rlca
    rst $38
    db $ec
    ld [bc], a
    ld [hl+], a

Call_008_4443:
    ld [$0000], sp
    jr z, jr_008_43f9

    ld b, c
    rlca
    rst $38
    ld hl, sp-$16
    db $10
    inc d
    ret c

    db $10
    db $e3
    ld b, d
    ld d, d
    db $76
    sub d
    ld [hl], d
    ld [c], a
    inc c
    rst $38
    ld [hl+], a
    and c
    ld [de], a
    rst $38
    db $ec
    ld bc, $af10
    cpl
    ld a, [c]
    add b
    rlca
    db $10
    ld [$ecff], sp
    ld bc, $9710
    cpl
    ld a, [c]
    nop
    dec b
    db $10
    ld [$22ff], sp
    and c
    ld [hl+], a
    rst $38
    jr z, @-$0d

    ld d, h
    rst $38
    cpl

jr_008_447d:
    adc a
    ld de, $ff24
    ld [de], a
    ld a, [hl+]
    pop af
    ld d, l
    rst $38

jr_008_4486:
    cpl
    adc a
    inc [hl]
    jr z, jr_008_447d

    dec [hl]
    ld a, [hl+]
    pop af
    ld d, l
    rst $38
    cpl
    sbc a
    inc hl
    jr z, jr_008_4486

    ld hl, $22ff
    pop hl
    ld c, e
    ld a, [hl+]
    pop af
    ld b, h
    ld [hl+], a
    pop hl
    ld a, [hl-]
    ld h, $f1
    inc [hl]
    rst $38
    ld [hl+], a
    db $f4
    ld b, h
    ld [hl+], a
    db $f4
    inc d

jr_008_44aa:
    cpl
    pop af
    ld [hl-], a
    rst $38
    inc h
    adc a
    ld d, l
    ld [hl+], a
    db $f4
    ld b, h
    jr z, jr_008_44aa

    ld [hl+], a
    cpl
    ld a, [c]
    ld hl, $28ff
    ld c, a
    inc hl
    inc h
    call nz, $2622
    ld a, [c]
    inc hl
    cp $04
    cp e
    ld b, h
    rst $38
    jr z, jr_008_451a

    inc sp
    inc h
    call nz, $2622

jr_008_44d0:
    ld a, [c]
    inc hl

jr_008_44d2:
    cpl
    ld a, [c]
    ld [hl+], a
    rst $38
    jr z, @+$01

    ld [hl-], a
    jr z, @-$0a

    ld b, e
    jr z, jr_008_44d0

    ld d, h
    jr z, jr_008_44d2

    ld h, l
    rst $38
    ld hl, $33c2
    ld [hl+], a
    ld a, [c]
    ld hl, $e221
    inc sp

jr_008_44ec:
    ld hl, $32c2
    ld hl, $1292
    ld hl, $31b2

jr_008_44f5:
    inc l
    sub c
    db $10
    jr z, jr_008_44ec

    ld b, c
    rst $38
    ld hl, $2394
    ld hl, $22b4

jr_008_4502:
    jr z, jr_008_44f5

    ld b, h
    rst $38
    ld [hl+], a
    sub h
    inc sp

jr_008_4509:
    inc h
    or h
    ld [hl+], a
    inc h
    pop af
    ld b, h
    jr z, jr_008_4502

    ld d, l
    rst $38
    inc h
    rst $38
    ld d, l
    jr z, jr_008_4509

    ld h, l
    rst $38

jr_008_451a:
    ld [hl+], a
    add h
    ld b, e
    ld [hl+], a
    call nz, Call_000_2822
    ld a, [c]
    inc [hl]
    rst $38
    inc h
    pop af
    inc [hl]
    cpl
    ld a, [c]
    ld h, h
    rst $38
    ld [hl+], a
    pop af

jr_008_452d:
    ld [hl+], a
    cpl
    ld a, [c]
    ld [de], a

jr_008_4531:
    rst $38

jr_008_4532:
    ld [hl+], a
    jp nz, $2f01

    db $f4
    ld bc, $f22f
    ld bc, $28ff
    pop af
    ld [hl-], a
    jr z, jr_008_4532

    inc sp

jr_008_4542:
    rst $38
    db $ec
    nop
    db $10
    ld a, [hl-]
    inc h
    ld a, [c]
    nop
    ld [bc], a
    db $10
    ld [hl+], a
    jr z, jr_008_4531

    nop
    ld [bc], a
    db $10
    ld [$20ff], sp
    pop de
    ld b, d
    inc h
    and c
    ld [hl-], a
    jr nz, jr_008_452d

    ld [hl+], a
    ld h, $a1
    ld [hl-], a
    rst $38
    inc hl
    sub d
    ld sp, $b223
    ld [hl-], a
    inc hl
    jp nz, Jump_000_2833

    pop af
    ld d, h
    rst $38
    inc l
    pop af
    ld d, h
    jr z, @-$0d

    ld h, h

jr_008_4574:
    rst $38
    ld [hl+], a
    pop af
    inc sp
    ld [hl+], a
    pop bc
    ld [hl-], a
    ld [hl+], a
    and c
    ld sp, $822f
    ld [hl-], a
    jr z, jr_008_4574

    inc [hl]
    rst $38

jr_008_4585:
    ld [hl+], a
    jp nc, Jump_000_2f32

    ld a, [c]
    ld b, e
    rst $38
    ld [hl+], a
    ld a, [c]
    ld b, e
    inc h
    or l
    ld [hl-], a
    add hl, hl
    add [hl]
    ld sp, $6427

Call_008_4597:
    nop
    cpl
    ld a, [c]
    ld d, l
    rst $38
    db $ec
    ld bc, $9710
    cpl
    ld a, [c]
    nop
    rlca
    db $10
    ld [$2fff], sp
    ccf
    ld [hl+], a
    cpl

jr_008_45ab:
    ld a, [c]
    ld hl, $2fff
    ld c, a

Call_008_45b0:
    ld b, c
    jr z, jr_008_4542

    ld b, c
    jr z, jr_008_4585

    ld b, c
    jr z, jr_008_45ab

    ld b, d
    cpl
    ld a, [c]
    ld b, c
    rst $38
    ld a, [hl+]
    rst $38
    ld d, b
    cpl
    rst $38
    ld d, c
    jr z, @-$0c

    ld d, c
    ld h, $ff
    ld d, d
    ld h, $ff
    ld d, e
    jr z, @+$01

    ld d, h
    cpl
    ld a, [c]
    ld d, h
    rst $38
    db $ec
    ld [bc], a
    cpl
    ccf
    ret nz

    rlca
    cpl
    rst $18
    ret nz

    rlca
    cp $04
    jp c, $2f45

    pop de
    ret nz

    rlca
    rst $38
    db $fc
    or e
    cpl
    cpl
    ret z

    rlca
    cpl
    rst $08
    rst $00
    rlca
    cp $04
    db $ed
    ld b, l
    cpl
    pop bc
    ret z

    rlca

jr_008_45f9:
    rst $38

jr_008_45fa:
    inc hl
    sub a
    ld [de], a

jr_008_45fd:
    inc hl

jr_008_45fe:
    and c
    ld de, $0afe
    ld_long a, $ff45
    db $ec
    nop
    jr nz, jr_008_45fa

    ret nz

    rlca
    jr nz, jr_008_45fe

    nop
    rlca
    cp $0c
    dec b
    ld b, [hl]
    rst $38
    db $fc
    or e
    jr nz, jr_008_45f9

    pop bc
    rlca
    jr nz, jr_008_45fd

    ld bc, $fe07
    inc c
    inc d

jr_008_4621:
    ld b, [hl]
    rst $38
    ld hl, $49d1
    ld hl, $29d1
    cp $06
    inc hl
    ld b, [hl]
    rst $38
    db $fc
    ret


    dec hl
    di
    jr nz, jr_008_4635

    add hl, hl

jr_008_4635:
    db $d3
    ld d, b
    ld bc, $05fe
    ld l, $46
    jr z, jr_008_4621

    jr nc, jr_008_4641

    cpl

jr_008_4641:
    jp nz, $0110

    rst $38
    ld a, [hl+]
    di
    dec [hl]
    ld l, $f6
    ld b, l
    cp $04
    ld b, l
    ld b, [hl]
    inc l
    db $f4

jr_008_4651:
    cp h
    inc l
    push af
    sbc h
    cpl
    db $f4
    xor h
    rst $38
    db $fc
    add hl, sp
    inc h
    db $f4
    nop
    ld b, $23
    call nz, Call_000_0500
    dec h
    or l
    nop
    ld b, $2d
    ld [c], a
    ret nz

    ld b, $fe
    inc bc
    ld e, c
    ld b, [hl]
    jr z, @-$2d

    nop
    ld b, $ff
    db $fc
    adc l
    dec h
    db $e4
    ldh [rTIMA], a
    inc h
    or h
    ldh [rDIV], a
    ld h, $a5
    add sp, $05
    ld l, $d1
    and b
    ld b, $fe
    inc bc
    ld [hl], h
    ld b, [hl]
    rst $38
    dec h
    jp Jump_000_2333


    sub d
    ld b, e
    ld a, [hl+]
    or l
    inc sp
    cpl
    jp $fe32


    ld [bc], a
    adc e
    ld b, [hl]
    rst $38
    db $fc
    jp nc, $8123

    nop
    inc bc
    inc hl
    pop bc
    nop
    inc b
    inc hl
    pop af
    nop
    dec b
    inc hl
    or c
    nop
    inc b
    inc hl
    ld [hl], c
    nop
    inc bc
    cp $05
    sbc h
    ld b, [hl]
    jr z, @-$7d

    nop
    inc b
    rst $38
    inc hl
    ld h, d
    ld [hl+], a
    inc hl
    and d
    ld [hl-], a
    inc hl
    jp nc, Jump_000_2333

    sub d
    inc hl
    inc hl
    ld d, d
    ld [de], a
    cp $05
    cp e
    ld b, [hl]
    jr z, jr_008_4651

    ld [de], a
    rst $38
    db $fc
    add hl, sp
    cpl
    db $f4
    nop
    dec b
    cpl
    call nz, $0400
    cpl
    ld [c], a
    ret nz

    dec b
    cp $03
    jp nc, $ff46

    db $fc
    adc l
    daa
    db $e4
    jr nc, jr_008_46ef

    cpl
    or h
    jr nc, @+$05

jr_008_46ef:
    cpl
    and d
    jr c, jr_008_46f7

    cp $04
    push hl
    ld b, [hl]

jr_008_46f7:
    rst $38
    add hl, hl
    db $f4
    ld b, h
    add hl, hl
    ld a, [c]
    ld b, e
    cpl
    db $f4
    ld b, d
    cpl
    db $f4
    ld b, c
    cp $03
    ld hl, sp+$46
    rst $38
    db $fc
    and c
    ld a, [hl+]
    pop af
    ld b, b
    ld b, $2a
    di
    add b
    ld b, $2a
    ld a, [c]
    jr nz, jr_008_471d

    cp $04
    add hl, bc
    ld b, a
    ld a, [hl+]
    pop af

jr_008_471d:
    ld b, b
    ld b, $ff
    db $fc
    or e
    ld a, [hl+]
    di
    ld [hl], c
    dec b
    daa
    db $e3
    ld sp, $2a05
    pop af
    ld d, c
    dec b
    cp $04
    jr nz, jr_008_4779

    ld a, [hl+]
    pop af
    ld [hl], c
    dec b
    rst $38
    ld [hl+], a
    pop de
    ld c, d
    ld [hl+], a
    jp nc, $fe2a

    dec d
    scf
    ld b, a
    rst $38
    db $ec
    nop
    ld [hl+], a
    pop af
    nop
    ld [bc], a
    inc hl
    pop af
    nop
    rlca
    inc h
    pop af
    nop
    dec b
    dec h
    pop af
    ldh a, [rTAC]
    cp $08
    ld b, d
    ld b, a
    rst $38
    db $fc
    or e
    ld [hl+], a
    pop hl
    ld [bc], a
    inc bc
    inc hl
    pop hl
    ld a, [c]
    rlca
    inc h
    pop hl
    ld [bc], a
    ld b, $25
    pop hl
    ld [bc], a
    rlca
    cp $08
    ld e, c
    ld b, a
    rst $38
    ld [hl+], a
    db $d3
    db $10
    inc hl

jr_008_4774:
    db $d3
    ld de, $d222

jr_008_4778:
    db $10

jr_008_4779:
    dec h
    jp nc, $fe12

    add hl, bc
    ld [hl], b
    ld b, a

jr_008_4780:
    rst $38
    db $fc
    dec hl
    inc hl
    pop af
    ldh a, [rTAC]
    inc h
    ld a, [c]
    nop
    ld [bc], a
    cp $08
    add c
    ld b, a
    rst $38
    db $fc

jr_008_4791:
    or e
    inc h
    ld [c], a
    ld [bc], a

jr_008_4795:
    ld [bc], a
    inc h
    pop hl
    ld [c], a

jr_008_4799:
    rlca
    cp $09
    sub b

jr_008_479d:
    ld b, a
    rst $38
    inc h

Call_008_47a0:
    rst $38
    ld b, e
    inc h
    ld a, [c]
    ld b, h
    cp $09
    sbc a
    ld b, a
    rst $38
    db $ec
    ld [bc], a
    db $10
    rst $30
    jr z, jr_008_4774

Call_008_47b0:
    cp l
    rlca
    jr z, jr_008_4778

    cp [hl]
    rlca
    jr z, @-$3a

    cp a
    rlca
    jr z, jr_008_4780

    ret nz

    rlca
    cpl
    call nz, Call_000_07c1
    cpl
    ld a, [c]
    ret nz

    rlca
    db $10

Call_008_47c7:
    ld [$ecff], sp
    ld [bc], a
    jr z, jr_008_4791

    ld [hl], b
    rlca
    jr z, jr_008_4795

    ld h, c
    rlca
    jr z, jr_008_4799

    ld h, d
    rlca

Call_008_47d7:
    jr z, jr_008_479d

    ld h, e
    rlca
    cpl
    call nz, $0764
    cpl
    ld a, [c]
    ld h, h
    rlca
    rst $38
    cpl
    ccf
    inc d
    cpl
    rst $08
    inc de
    cpl
    rst $08
    ld [de], a
    cpl
    rst $08
    ld de, $cf2f
    db $10
    cpl
    jp nz, $ff10

    db $ec
    ld [bc], a
    cpl
    rst $38
    ldh [rTAC], a
    cpl
    rst $38
    ldh [rTAC], a
    cpl
    rst $38
    ldh [rTAC], a
    cpl
    rst $38
    ldh [rTAC], a
    cpl
    ld a, [c]
    ldh [rTAC], a
    rst $38
    db $ec
    inc bc
    cpl
    rst $38
    ld [c], a
    rlca
    cpl
    rst $38
    pop hl
    rlca
    cpl
    rst $38
    ld [c], a
    rlca

jr_008_481c:
    cpl
    rst $38
    pop hl
    rlca
    cpl
    ld a, [c]
    ld [c], a
    rlca
    rst $38

jr_008_4825:
    db $ec
    ld [bc], a
    db $10
    xor a
    jr z, jr_008_481c

    nop
    rlca
    db $10
    ld [$ecff], sp
    inc bc
    jr z, jr_008_4825

    ld bc, $ff07
    db $ec
    ld [bc], a
    ld h, $f1
    nop
    dec b
    ld h, $f1
    add b
    dec b
    ld h, $f1
    nop
    ld b, $26
    pop af
    add b
    ld b, $28
    pop af
    nop
    rlca
    rst $38
    db $ec
    inc bc
    ld h, $e1
    db $10
    dec b
    ld h, $e1
    sub b
    dec b
    ld h, $e1
    db $10
    ld b, $26
    pop hl
    sub b
    ld b, $28
    pop hl
    db $10
    rlca
    rst $38
    db $fc
    db $ed

jr_008_4867:
    jr z, @+$01

    ld hl, sp+$03
    cpl
    rst $38
    nop
    inc b
    cpl
    di
    nop
    inc b
    rst $38
    db $fc
    or h
    jr z, jr_008_4867

    ret nz

    inc bc
    cpl
    rst $28
    ret nz

    inc bc
    cpl
    db $e3
    ret nz

    inc bc
    rst $38
    inc h
    rst $38
    ld d, c
    jr z, @+$01

    ld d, h
    cpl
    rst $38
    ld d, l
    cpl
    di
    ld d, [hl]
    rst $38
    ld hl, sp-$16
    ld a, [bc]
    inc h
    db $ec
    ld [bc], a
    jp c, $e387

    add a
    ld [c], a
    ld h, e
    ld b, e
    db $e3
    add a
    rst $38
    ld hl, sp-$16
    ld a, [bc]
    inc hl
    db $ec
    ld [bc], a
    db $db
    ld h, a
    db $e3
    add a
    jp c, $e267

    ld h, e
    ld b, e
    db $e3
    add a
    rst $38
    db $ec
    nop
    ld [hl+], a
    pop af
    add b
    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    sub b
    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    and b
    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    or b
    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    ret nz

    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    ret nc

    rlca
    ld [hl+], a
    pop af
    nop
    rlca
    ld [hl+], a
    pop af
    ldh [rTAC], a
    cp $0c
    ldh [rOBP0], a
    cpl
    pop af
    nop
    rlca
    rst $38
    db $fc
    or e
    ld [hl+], a
    pop af
    add c
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    sub c
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    and c
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    or c
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    pop bc
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    pop de
    rlca
    ld [hl+], a
    pop af
    ld bc, $2207
    pop af
    pop hl
    rlca
    cp $0c
    ldh [rOBP0], a
    cpl
    pop af
    ld bc, $ff07
    ld hl, $49d1
    ld hl, $29d1
    cp $1a
    jr nc, jr_008_4983

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
    jr z, jr_008_499f

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

jr_008_4983:
    cpl
    db $d3
    ld c, h
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    and b

jr_008_498c:
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

jr_008_499d:
    rst $10
    rlca

jr_008_499f:
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

jr_008_49d4:
    jr z, jr_008_498c

    inc a
    ld h, $d4
    dec a
    jr z, jr_008_499d

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
    jr z, jr_008_49d4

    inc l
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    add b
    ld b, $2a

jr_008_4a1c:
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

jr_008_4a38:
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

    jr z, jr_008_4a38

    jr nc, jr_008_4a90

    rst $38
    db $fc
    ld a, [bc]
    inc h

jr_008_4a8d:
    ld [$0000], sp

jr_008_4a90:
    ld h, $a7
    ld b, c
    rlca
    jr z, jr_008_4a1c

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

jr_008_4ac9:
    cpl
    db $e3
    jr nc, jr_008_4ad4

    inc h
    db $f4
    ld b, b
    rlca
    dec h
    or e
    ld c, b

jr_008_4ad4:
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
    jr z, jr_008_4ac9

    inc l
    inc l
    add $3c
    ld a, [hl+]
    or [hl]
    inc l

jr_008_4afa:
    jr z, jr_008_4a8d

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
    jr z, jr_008_4afa

    add d
    inc b
    rst $38
    inc l
    db $e4
    ld c, h
    ld a, [hl+]
    rst $00

jr_008_4b41:
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

Call_008_4b60:
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

jr_008_4b7c:
    ld [bc], a
    ld b, $ff
    inc hl
    db $e4
    inc a
    inc l
    sub $2c
    inc h

jr_008_4b86:
    db $e4
    inc a
    jr z, jr_008_4b41

jr_008_4b8a:
    ld e, h
    cpl
    jp nz, $ff5d

    db $fc
    ret


    jr z, jr_008_4b8a

    add b
    ld b, $22
    rst $30
    ld h, b
    ld b, $21
    rst $20
    ld b, b
    ld b, $21
    rst $20
    jr nz, jr_008_4ba7

    cpl
    pop de
    nop
    ld b, $24
    rst $00

jr_008_4ba7:
    ld b, b
    rlca
    inc h
    and a
    jr nc, jr_008_4bb4

    cpl
    sub c
    jr nz, @+$09

    rst $38
    db $fc
    ld a, c

jr_008_4bb4:
    ld a, [hl+]
    rst $20
    add d
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
    jr jr_008_4bec

    cpl
    push hl
    sbc b
    rlca
    jr z, jr_008_4b7c

    ld e, b

jr_008_4bec:
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

jr_008_4bf8:
    jr z, jr_008_4c6b

    ld c, b
    rlca
    rst $38
    inc hl
    and c
    inc e
    ld l, $94
    inc l
    jr z, jr_008_4b86

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
    jr z, jr_008_4bf8

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

jr_008_4c31:
    ld h, c
    ld hl, $6128
    ld de, $fcff
    ld a, [$8326]
    ld b, a

jr_008_4c3c:
    ld [bc], a
    cpl

jr_008_4c3e:
    ld h, d
    ld h, $02

jr_008_4c41:
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
    jr z, jr_008_4c41

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

jr_008_4c6b:
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
    jr z, jr_008_4c3c

    ld e, h

jr_008_4c8c:
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
    jr z, jr_008_4c3e

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
    jr z, jr_008_4c31

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

jr_008_4ccb:
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
    jr z, jr_008_4c8c

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

jr_008_4cf2:
    ld b, c
    rlca
    inc h
    pop af
    add d
    rlca
    jr z, jr_008_4ccb

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
    jr nz, jr_008_4d32

    ld [hl+], a
    or d
    db $10
    ld b, $22
    and d

jr_008_4d32:
    jr jr_008_4d3a

    ld [hl+], a
    or d
    db $10
    ld b, $28
    pop bc

jr_008_4d3a:
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

jr_008_4d5d:
    reti


    dec b
    jr z, jr_008_4cf2

    pop hl
    dec b
    rst $38
    db $ec
    nop
    jr z, jr_008_4d5d

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

jr_008_4d9a:
    jr nz, jr_008_4da2

    cp $02
    add d
    ld c, l
    rst $38
    db $fc

jr_008_4da2:
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

jr_008_4dd0:
    ld h, $d2
    inc e
    add hl, hl
    or c
    inc l
    jr z, jr_008_4d9a

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

jr_008_4df0:
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
    jr nz, jr_008_4e04

    jr z, jr_008_4dd0

    db $10
    rlca
    rst $38
    db $fc
    ld e, d

jr_008_4e04:
    dec h
    or e
    pop af
    ld b, $27
    push bc
    ld d, d
    rlca

jr_008_4e0c:
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
    jr z, jr_008_4e91

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
    jr z, jr_008_4df0

    and c
    ld b, $26
    add [hl]

jr_008_4e4d:
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
    jr z, jr_008_4e4d

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
    jr z, jr_008_4e0c

    inc a
    rst $38
    db $fc
    ldh a, [$2f]
    or $65
    dec b
    ld a, [hl+]

jr_008_4e84:
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

jr_008_4e91:
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

    jr z, jr_008_4e84

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
    jr nc, jr_008_4f13

    rst $38
    db $fc
    add c
    ld [hl+], a
    jp nz, Jump_000_0701

jr_008_4f13:
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

jr_008_4f34:
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

Call_008_4f50:
    nop
    rlca
    inc h
    db $f4
    ldh a, [rTMA]
    inc h

jr_008_4f57:
    db $e4
    ldh [rTMA], a
    jr z, @-$2d

    ret nc

    ld b, $ff
    db $fc
    ld a, [bc]
    daa
    and $81

jr_008_4f64:
    ld b, $2e
    push de
    pop bc
    ld b, $24
    call nz, Call_000_06b1
    inc h
    call nc, Call_000_06a1
    jr z, jr_008_4f34

jr_008_4f73:
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

jr_008_4f7f:
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

    jr z, jr_008_4f64

    add b
    inc b
    rst $38
    db $fc
    xor $2b
    jp nc, $0438

    ld l, $c6

jr_008_4f9e:
    sbc b
    inc b
    inc hl

jr_008_4fa1:
    or d
    adc b
    inc b
    jr z, jr_008_4f57

    ld a, b
    inc b
    rst $38
    ld a, [hl+]
    and $6c
    cpl

jr_008_4fad:
    jp nc, Jump_000_235c

    jp nz, $286c

    pop de
    ld e, h
    rst $38
    db $fc
    inc sp
    cpl
    or $c0

jr_008_4fbb:
    dec b
    jr z, jr_008_4fa1

    cp h
    dec b

Call_008_4fc0:
    ld h, $d2
    ret nc

    dec b
    ld h, $b2
    ldh [rTIMA], a
    ld h, $c2
    ldh a, [rTIMA]
    jr z, jr_008_4f7f

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

jr_008_4fdc:
    or d
    pop bc
    inc b
    jr z, jr_008_4f73

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

jr_008_4fef:
    ld a, [hl+]
    sub $6c
    inc h
    jp nz, $264c

jr_008_4ff6:
    db $d3
    ld e, h
    jr z, jr_008_4fad

    ld c, h
    jr z, jr_008_4f9e

    ld e, h
    rst $38
    db $fc
    ldh a, [$28]
    db $e4

jr_008_5003:
    sub b
    rlca
    cpl
    push af
    ret nz

    rlca
    jr z, jr_008_4fdc

    ret c

jr_008_500c:
    rlca
    rst $38
    db $fc
    and l

Call_008_5010:
    ld a, [hl+]
    call nz, Call_000_0771
    cpl
    or [hl]
    and d
    rlca
    jr z, jr_008_4fbb

    or a
    rlca
    rst $38
    jr z, jr_008_5003

    ld c, h
    ld l, $c4
    inc a
    jr z, jr_008_4ff6

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

jr_008_5066:
    ld bc, $2607
    and d
    ld b, d
    rlca

jr_008_506c:
    jr z, jr_008_4fef

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

jr_008_5085:
    dec de
    dec h
    sub d
    ld a, [de]
    jr z, jr_008_500c

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
    jr z, jr_008_506c

    db $10
    rlca
    inc h
    jp nz, $0700

    inc h
    jp nc, $06f0

    jr z, jr_008_5066

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

Call_008_50c1:
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
    jr z, jr_008_5085

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

Jump_008_50e3:
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

jr_008_5116:
    rlca
    daa
    add $e0
    rlca

jr_008_511b:
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

jr_008_5140:
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
    jr z, jr_008_5116

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


    jr z, jr_008_5140

jr_008_516f:
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
    jr z, jr_008_511b

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
    jr z, jr_008_516f

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

Call_008_51b1:
    rlca
    ld h, $b2
    jr nz, jr_008_51bc

    jr z, @-$5d

    inc h
    ld b, $ff
    db $fc

jr_008_51bc:
    ld [hl+], a
    cpl
    or b
    jp Jump_000_2a06


    and b
    pop bc
    ld b, $26
    add h

jr_008_51c7:
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

jr_008_51da:
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

    jr z, jr_008_51c7

    and b
    ld b, $ff
    db $fc
    rrca
    add hl, hl
    push de
    ld sp, $2306

jr_008_5210:
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

jr_008_5221:
    sub c
    ld b, $23
    jp nz, $0671

    jr z, jr_008_51da

    ld d, c
    ld b, $ff
    ld h, $e3
    ld c, h
    inc h
    jp Jump_000_253c


jr_008_5233:
    call nc, Call_000_243c
    call nz, $262c
    or h
    inc a
    jr z, @-$3d

    inc l
    rst $38

jr_008_523f:
    db $fc
    and l
    inc hl
    db $f4
    ld b, c
    ld b, $2d
    sub $21
    rlca
    jr z, jr_008_523f

    add hl, de
    rlca
    jr z, jr_008_5210

    ld a, [de]
    rlca
    rst $38
    db $fc
    call z, $f424

jr_008_5256:
    add b
    dec b
    ld l, $e6
    ldh [rTMA], a
    jr z, jr_008_5233

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
    jr z, jr_008_5221

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

jr_008_528a:
    dec b
    inc l

jr_008_528c:
    pop de
    db $10
    dec b
    ld l, $c1
    inc c
    dec b
    jr z, jr_008_5256

    ld a, [bc]

jr_008_5296:
    dec b
    rst $38
    ld l, $f2
    ld h, l
    dec l
    ld [c], a

jr_008_529d:
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

jr_008_52a9:
    ld h, h
    dec b
    ld [hl+], a
    ld [c], a

jr_008_52ad:
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
    jr z, jr_008_528a

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
    jr z, jr_008_5296

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
    jr z, jr_008_529d

    and b
    inc b
    inc hl
    db $d3
    jr nz, @+$07

    inc hl
    call nz, $04e0
    jr z, jr_008_52a9

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

    jr z, jr_008_528c

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
    jr z, jr_008_52ad

    ld c, c
    rst $38
    ld a, [$d082]
    cp $ff
    jr z, jr_008_534b

    bit 7, a
    ret z

    and $7f
    jr nz, jr_008_5333

    call Call_008_5357
    ld a, $1e
    jr jr_008_5345

jr_008_5333:
    cp $14
    jr nz, jr_008_533a

    call Call_008_535c

jr_008_533a:
    ld a, $86
    ld [$c02a], a
    ld a, [$d082]
    and $7f
    dec a

jr_008_5345:
    set 7, a
    ld [$d082], a
    ret


jr_008_534b:
    xor a
    ld [$d082], a
    ld [$c02a], a
    ld de, $5374
    jr jr_008_535f

Call_008_5357:
    ld de, $536c
    jr jr_008_535f

Call_008_535c:
    ld de, $5370

jr_008_535f:
    ld hl, $ff10
    ld c, $05
    xor a

jr_008_5365:
    ld [hl+], a
    ld a, [de]
    inc de
    dec c
    jr nz, jr_008_5365

    ret


    and b
    ld [c], a
    ld d, b
    add a
    or b
    ld [c], a
    xor $86
    nop
    nop
    nop
    add b
    xor a
    ldh [$ba], a
    call Call_000_36ec
    ld a, [$d5a1]
    and a
    jr nz, jr_008_53a1

    ld a, [$d74a]
    bit 5, a
    jr z, jr_008_5399

    ld a, [$d5a1]
    and a
    jr nz, jr_008_53a1

    ld hl, $c3a0
    ld bc, $080e
    jr jr_008_53a7

jr_008_5399:
    ld hl, $c3a0
    ld bc, $060e
    jr jr_008_53a7

jr_008_53a1:
    ld hl, $c3a0
    ld bc, $0a0e

jr_008_53a7:
    call Call_000_16f0
    call Call_000_231c
    ld a, $03
    ld [$cc28], a
    ld a, [$d7f0]

Call_008_53b5:
    bit 0, a
    jr nz, jr_008_53c1

    ld hl, $c3ca
    ld de, $5438
    jr jr_008_53c7

jr_008_53c1:
    ld hl, $c3ca
    ld de, $5444

jr_008_53c7:
    call Call_000_1723
    ld hl, $c3f2
    ld de, $d157
    call Call_000_1723
    ld l, c
    ld h, b
    ld de, $544d
    call Call_000_1723
    ld a, [$d74a]
    bit 5, a
    jr z, jr_008_540f

    ld hl, $c41a
    ld de, $5452
    call Call_000_1723
    ld a, [$d5a1]
    and a
    jr z, jr_008_5407

    ld a, $04
    ld [$cc28], a
    ld hl, $c442
    ld de, $545f
    call Call_000_1723
    ld hl, $c46a
    ld de, $5467
    jr jr_008_541a

jr_008_5407:
    ld hl, $c442
    ld de, $5467
    jr jr_008_541a

jr_008_540f:
    ld a, $02
    ld [$cc28], a
    ld hl, $c41a
    ld de, $5467

jr_008_541a:
    call Call_000_1723
    ld a, $03
    ld [$cc29], a
    ld a, $02
    ld [$cc24], a
    ld a, $01
    ld [$cc25], a
    xor a
    ld [$cc26], a
    ld [$cc2a], a
    ld a, $01
    ldh [$ba], a
    ret


    sub d
    adc [hl]
    adc h
    add h
    adc [hl]
    adc l
    add h
    cp l
    ld a, a
    adc a
    add d
    ld d, b
    add c
    adc b
    adc e
    adc e
    cp l
    ld a, a
    adc a
    add d
    ld d, b
    cp l
    ld a, a
    adc a
    add d
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    cp l
    ld a, a
    adc a
    add d
    ld d, b
    ld c, d
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld d, b
    adc e
    adc [hl]
    add [hl]
    ld a, a
    adc [hl]
    add l
    add l
    ld d, b
    ld hl, $d72f
    set 6, [hl]
    xor a
    ld [$ccd3], a
    inc a
    ld [$d0b5], a
    call Call_000_36c3
    ld a, [$cc36]
    push af
    ld a, [$cd60]
    bit 3, a
    jr nz, jr_008_5495

    ld a, $99
    call Call_000_2238
    ld hl, $5826
    call Call_000_3c36

Jump_008_5495:
jr_008_5495:
    ld a, [$ccd3]
    ld [$cc26], a
    ld hl, $9780
    ld de, $6a28
    ld bc, $0e01
    call Call_000_15fe
    call Call_000_3700
    ld hl, $c490
    ld bc, $0412
    call Call_000_16f0
    ld hl, $c3a0
    ld bc, $0c0c
    call Call_000_16f0
    call Call_000_231c
    ld hl, $c3ca
    ld de, $5715
    call Call_000_1723
    ld hl, $cc24
    ld a, $02
    ld [hl+], a
    dec a
    ld [hl+], a
    inc hl
    inc hl
    ld a, $05
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld hl, $cc36
    ld [hl+], a
    ld [hl], a
    ld [$cc2f], a
    ld hl, $c4c1
    ld bc, $0209
    call Call_000_16f0
    ld a, [$d59f]
    and $7f
    cp $09
    jr c, jr_008_5500

    sub $09
    ld hl, $c4f1
    ld [hl], $f7
    add $f6
    jr jr_008_5502

jr_008_5500:
    add $f7

jr_008_5502:
    ld [$c4f2], a
    ld hl, $c4ea
    ld de, $5751
    call Call_000_1723
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    call Call_000_3aab
    bit 1, a
    jp nz, Jump_008_553e

    call Call_000_3bd9
    ld a, [$cc26]
    ld [$ccd3], a
    and a
    jp z, Jump_008_5613

    cp $01
    jp z, Jump_008_556d

    cp $02
    jp z, Jump_008_5681

    cp $03
    jp z, Jump_008_56e7

    cp $04
    jp z, Jump_008_5562

Jump_008_553e:
    ld a, [$cd60]
    bit 3, a
    jr nz, jr_008_5550

    call Call_000_36a3
    ld a, $9a
    call Call_000_2238
    call Call_000_373e

jr_008_5550:
    ld hl, $cd60
    res 5, [hl]
    call Call_000_36f8
    pop af
    ld [$cc36], a
    ld hl, $d72f
    res 6, [hl]
    ret


Jump_008_5562:
    ld hl, $4d35
    ld b, $3a
    call Call_000_3e84
    jp Jump_008_5495


Jump_008_556d:
    ld a, [$d162]
    dec a
    jr nz, jr_008_557c

    ld hl, $583a
    call Call_000_3c36
    jp Jump_008_5495


jr_008_557c:
    ld a, [$da7f]
    cp $14
    jr nz, jr_008_558c

    ld hl, $583f
    call Call_000_3c36
    jp Jump_008_5495


jr_008_558c:
    ld hl, $d162
    call Call_008_56f2
    jp c, Jump_008_5495

    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_008_55ad

    call Call_000_154a
    jr z, jr_008_55ad

    ld hl, $560e
    call Call_000_3c36
    jp Jump_008_5495


jr_008_55ad:
    call Call_008_5789
    jp nc, Jump_008_5495

    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_008_55c9

    ld e, $1b
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    jr jr_008_55cf

jr_008_55c9:
    ld a, [$cf90]
    call Call_000_118b

jr_008_55cf:
    ld hl, $430a
    ld b, $3d
    ld d, $07
    call Call_000_3e84
    ld a, $01
    ld [$cf94], a
    call Call_000_3a59
    xor a
    ld [$cf94], a
    call Call_000_3914
    call Call_000_373e
    ld hl, $cd3d
    ld a, [$d59f]
    and $7f
    cp $09
    jr c, jr_008_5600

    sub $09
    ld [hl], $f7
    inc hl
    add $f6
    jr jr_008_5602

jr_008_5600:
    add $f7

jr_008_5602:
    ld [hl+], a
    ld [hl], $50
    ld hl, $5835
    call Call_000_3c36
    jp Jump_008_5495


    rla
    sbc a
    ld b, h
    jr z, jr_008_5663

Jump_008_5613:
    ld a, [$da7f]
    and a
    jr nz, jr_008_5622

    ld hl, $5849
    call Call_000_3c36
    jp Jump_008_5495


jr_008_5622:
    ld a, [$d162]
    cp $06
    jr nz, jr_008_5632

    ld hl, $584e
    call Call_000_3c36
    jp Jump_008_5495


jr_008_5632:
    ld hl, $da7f
    call Call_008_56f2
    jp c, Jump_008_5495

    call Call_008_5789
    jp nc, Jump_008_5495

    ld a, [$cf91]
    ld hl, $de05
    call Call_000_139a
    ld hl, $4e0d
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_008_5660

    ld e, $22
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    jr jr_008_5666

jr_008_5660:
    ld a, [$cf90]

jr_008_5663:
    call Call_000_118b

jr_008_5666:
    xor a
    ld [$cf94], a
    call Call_000_3a59
    ld a, $01
    ld [$cf94], a
    call Call_000_3914
    call Call_000_373e
    ld hl, $5844
    call Call_000_3c36
    jp Jump_008_5495


Jump_008_5681:
    ld a, [$da7f]
    and a
    jr nz, jr_008_5690

    ld hl, $5849
    call Call_000_3c36
    jp Jump_008_5495


jr_008_5690:
    ld hl, $da7f
    call Call_008_56f2
    jp c, Jump_008_5495

    ld hl, $4e0d
    ld b, $3f
    call Call_000_3e84
    jr c, jr_008_56cb

    ld hl, $585d
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_008_5690

    inc a
    ld [$cf94], a
    call Call_000_3914
    call Call_000_373e
    ld a, [$cf90]
    call Call_000_118b
    ld hl, $5862
    call Call_000_3c36
    jp Jump_008_5495


jr_008_56cb:
    ld a, [$cf91]
    ld hl, $de05
    call Call_000_139a
    ld e, $27
    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ld hl, $5853
    call Call_000_3c36
    jp Jump_008_5495


Jump_008_56e7:
    ld b, $1c
    ld hl, $7bea
    call Call_000_3e84
    jp Jump_008_5495


Call_008_56f2:
    ld a, l
    ld [$cf8a], a
    ld a, h
    ld [$cf8b], a
    xor a
    ld [$cf92], a
    ld [$cf93], a
    inc a
    ld [$d0b5], a
    ld a, [$cc2b]
    ld [$cc26], a
    call Call_000_2ae0
    ld a, [$cc26]
    ld [$cc2b], a
    ret


    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld a, a
    ld c, d
    ld c, [hl]
    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld a, a
    ld c, d
    ld c, [hl]
    sub c
    add h
    adc e
    add h
    add b
    sub d
    add h
    ld a, a
    ld c, d
    ld c, [hl]
    add d
    add a
    add b
    adc l
    add [hl]
    add h
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, [hl]
    adc a
    sub c
    adc b
    adc l
    sub e
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, [hl]
    sub d
    add h
    add h
    ld a, a
    sbc b
    add b
    rst $20
    ld d, b
    add c
    adc [hl]
    sub a
    ld a, a
    adc l
    xor [hl]
    add sp, $50
    ld hl, $d172
    ld bc, $002c
    jr jr_008_5767

    ld hl, $da9d
    ld bc, $0021

jr_008_5767:
    ld a, [$cf91]
    call Call_000_3a74
    ld b, $04

jr_008_576f:
    ld a, [hl+]
    push hl
    push bc
    ld hl, $5783
    ld de, $0001
    call Call_000_3da7
    pop bc
    pop hl
    ret c

    dec b
    jr nz, jr_008_576f

    and a
    ret


    rrca
    inc de
    add hl, sp
    ld b, [hl]
    sub h
    rst $38

Call_008_5789:
    ld hl, $c471
    ld bc, $0609
    call Call_000_16f0
    ld a, [$ccd3]
    and a
    ld de, $5808
    jr nz, jr_008_579e

    ld de, $5810

jr_008_579e:
    ld hl, $c49b
    call Call_000_1723
    ld hl, $c4c3
    ld de, $5819
    call Call_000_1723
    ld hl, $cc24
    ld a, $0c
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    xor a
    ld [hl+], a
    inc hl
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    xor a

Call_008_57c0:
    ld [hl], a
    ld hl, $cc36
    ld [hl+], a
    ld [hl], a
    ld [$cc2f], a
    ld [$cc2b], a

jr_008_57cc:
    call Call_000_3aab
    bit 1, a
    jr nz, jr_008_57dc

    ld a, [$cc26]
    and a
    jr z, jr_008_57de

    dec a
    jr z, jr_008_57e0

jr_008_57dc:
    and a
    ret


jr_008_57de:
    scf
    ret


jr_008_57e0:
    call Call_000_370f
    ld a, [$ccd3]
    and a
    ld a, $00
    jr nz, jr_008_57ed

    ld a, $02

jr_008_57ed:
    ld [$cc49], a
    ld a, $36
    call Call_000_3eb4
    ld a, $37
    call Call_000_3eb4
    call Call_000_371b
    call Call_000_2f83
    call Call_000_3e03
    call Call_000_1e6f
    jr jr_008_57cc

    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld d, b
    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub d
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    rla
    cp e
    ld b, h
    jr z, jr_008_587b

    rla
    rst $00
    ld b, h
    jr z, @+$52

    rla
    adc $44
    jr z, @+$52

    rla
    db $e3
    ld b, h
    jr z, @+$52

    rla
    ld bc, $2845
    ld d, b
    rla
    ld [hl+], a
    ld b, l
    jr z, @+$52

    rla
    ld b, e
    ld b, l
    jr z, jr_008_5899

    rla
    ld h, c
    ld b, l
    jr z, @+$52

    rla
    add b
    ld b, l
    jr z, @+$52

    rla
    or d
    ld b, l
    jr z, jr_008_58a8

    rla
    rst $08
    ld b, l
    jr z, @+$52

    rla
    db $e4
    ld b, l
    jr z, jr_008_58b2

    rla
    rrca
    ld b, [hl]
    jr z, jr_008_58b7

    ldh a, [$aa]
    cp $01
    ret z

    ld a, [$c109]
    cp $0c
    ret nz

    ld a, [$d35d]
    cp $ef
    ld a, $02
    jr z, jr_008_587c

jr_008_587b:
    inc a

jr_008_587c:
    ld [$d12a], a
    call Call_000_3c29
    ld a, $24
    jp Jump_000_3f3a


    ldh a, [$aa]
    cp $02
    ret z

    ld a, [$c109]
    cp $08
    ret nz

    ld a, [$d35d]
    cp $ef
    ld a, $02

jr_008_5899:
    jr z, jr_008_589c

    inc a

jr_008_589c:
    ld [$d12a], a
    call Call_000_3c29
    ld a, $24
    jp Jump_000_3f3a


    rla

jr_008_58a8:
    sbc [hl]
    ld l, d
    daa
    ld d, b
    ld a, [$c109]
    cp $04
    ret nz

jr_008_58b2:
    call Call_000_3c29
    ld a, $25

jr_008_58b7:
    jp Jump_000_3f3a


    db $fd
    ld [$c001], a
    ld a, [$c001]
    cp $ff
    jp z, Jump_008_593c

    cp $e9
    jp z, Jump_008_58db

    jp c, Jump_008_58db

    cp $fe
    jr z, jr_008_58d5

    jp nc, Jump_008_58db

jr_008_58d5:
    call Call_000_22aa
    jp Jump_008_5940


Jump_008_58db:
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

Jump_008_58f4:
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
    jr z, jr_008_5930

    ld a, e
    cp $07
    jr nz, jr_008_5927

    ld a, [$c001]
    cp $14
    jr nc, jr_008_5920

    ret


jr_008_5920:
    ld a, [hl]
    cp $14
    jr z, jr_008_5930

    jr c, jr_008_5930

jr_008_5927:
    ld a, [$c001]
    cp [hl]
    jr z, jr_008_5930

    jr c, jr_008_5930

    ret


jr_008_5930:
    call Call_000_22c0
    ld a, c
    and a
    jp z, Jump_008_5940

    dec c
    jp Jump_008_58f4


Jump_008_593c:
    call Call_000_22d6
    ret


Jump_008_5940:
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

jr_008_5962:
    cp c
    jr z, jr_008_596a

    inc c
    inc hl
    inc hl
    jr jr_008_5962

jr_008_596a:
    push af
    push hl
    push bc
    ld b, $00
    ld c, a
    cp $03
    jr c, jr_008_597a

    ld hl, $c02e
    add hl, bc
    set 2, [hl]

jr_008_597a:
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
    jr nz, jr_008_5962

    ld a, [$c001]
    cp $14
    jr nc, jr_008_59a3

    jr jr_008_59cd

jr_008_59a3:
    ld a, [$c001]
    cp $86
    jr z, jr_008_59cd

    jr c, jr_008_59ae

    jr jr_008_59cd

jr_008_59ae:
    ld hl, $c02a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c012
    ld de, $59ce
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c005]
    and a
    jr nz, jr_008_59cd

    ldh a, [rNR50]
    ld [$c005], a
    ld a, $77
    ldh [rNR50], a

jr_008_59cd:
    ret


    rst $38
    ld a, $9a
    call Call_000_3736
    ld hl, $c00e
    ld de, $59eb
    call Call_008_59e6
    ld de, $59ee
    call Call_008_59e6
    ld de, $444b

Call_008_59e6:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


    db $ed
    ld bc, $f800
    ret c

    nop
    call nz, $c4c6
    call nz, $c4c4
    rst $38
    xor a
    ld [$c000], a
    ld [$c003], a
    ld [$c0e9], a
    ld [$c0e6], a
    ld [$c0e7], a
    ld d, $08
    ld hl, $c016
    call Call_008_5b94
    ld hl, $c006
    call Call_008_5b94
    ld d, $04
    ld hl, $c026
    call Call_008_5b94
    ld hl, $c02e
    call Call_008_5b94
    ld hl, $c03e
    call Call_008_5b94
    ld hl, $c046
    call Call_008_5b94
    ld hl, $c04e
    call Call_008_5b94
    ld hl, $c056
    call Call_008_5b94
    ld hl, $c05e
    call Call_008_5b94
    ld hl, $c066
    call Call_008_5b94
    ld hl, $c06e
    call Call_008_5b94
    ld hl, $c036
    call Call_008_5b94
    ld hl, $c076
    call Call_008_5b94
    ld hl, $c07e
    call Call_008_5b94
    ld hl, $c086
    call Call_008_5b94
    ld hl, $c08e
    call Call_008_5b94
    ld hl, $c096
    call Call_008_5b94
    ld hl, $c09e
    call Call_008_5b94
    ld hl, $c0a6
    call Call_008_5b94
    ld hl, $c0ae
    call Call_008_5b94
    ld a, $01
    ld hl, $c0be
    call Call_008_5b94
    ld hl, $c0b6
    call Call_008_5b94
    ld hl, $c0c6
    call Call_008_5b94
    ld [$c0e8], a
    ld a, $ff
    ld [$c004], a
    xor a
    ldh [rNR50], a
    ld a, $08
    ldh [rNR10], a
    ld a, $00
    ldh [rNR51], a
    xor a
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a
    ld a, $77
    ldh [rNR50], a
    ret


    xor a
    push de
    ld h, d
    ld l, e
    add hl, hl
    ld d, h
    ld e, l
    ld hl, $c016
    add hl, de
    ld [hl+], a
    ld [hl], a
    ld hl, $c006
    add hl, de
    ld [hl+], a
    ld [hl], a
    pop de
    ld hl, $c026
    add hl, de
    ld [hl], a
    ld hl, $c02e
    add hl, de
    ld [hl], a
    ld hl, $c03e
    add hl, de
    ld [hl], a
    ld hl, $c046
    add hl, de
    ld [hl], a
    ld hl, $c04e
    add hl, de
    ld [hl], a
    ld hl, $c056
    add hl, de
    ld [hl], a
    ld hl, $c05e
    add hl, de
    ld [hl], a
    ld hl, $c066
    add hl, de
    ld [hl], a
    ld hl, $c06e
    add hl, de
    ld [hl], a
    ld hl, $c076
    add hl, de
    ld [hl], a
    ld hl, $c07e
    add hl, de
    ld [hl], a
    ld hl, $c086
    add hl, de
    ld [hl], a
    ld hl, $c08e
    add hl, de
    ld [hl], a
    ld hl, $c096
    add hl, de
    ld [hl], a
    ld hl, $c09e
    add hl, de
    ld [hl], a
    ld hl, $c0a6
    add hl, de
    ld [hl], a
    ld hl, $c0ae
    add hl, de
    ld [hl], a
    ld hl, $c036
    add hl, de
    ld [hl], a
    ld a, $01
    ld hl, $c0be
    add hl, de
    ld [hl], a
    ld hl, $c0b6
    add hl, de
    ld [hl], a
    ld hl, $c0c6
    add hl, de
    ld [hl], a
    ld a, e
    cp $04
    ret nz

    ld a, $08
    ldh [rNR10], a
    ret


    ld a, $80
    ldh [rNR52], a
    ldh [rNR30], a
    xor a
    ldh [rNR51], a
    ldh [rNR32], a
    ld a, $08
    ldh [rNR10], a
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR42], a
    ld a, $40
    ldh [rNR14], a
    ldh [rNR24], a
    ldh [rNR44], a
    ld a, $77
    ldh [rNR50], a
    xor a
    ld [$c000], a
    ld [$c003], a
    ld [$c002], a
    ld [$c0e9], a
    ld [$c0eb], a
    ld [$c0e6], a
    ld [$c0e7], a
    ld d, $b0
    ld hl, $c006
    call Call_008_5b94
    ld a, $01
    ld d, $18
    ld hl, $c0b6
    call Call_008_5b94
    ld [$c0e8], a
    ld [$c0ea], a
    ld a, $ff
    ld [$c004], a
    ret


Call_008_5b94:
    ld b, d

jr_008_5b95:
    ld [hl+], a
    dec b
    jr nz, jr_008_5b95

    ret


    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a
    ld [$2606], a
    db $ec
    ld [bc], a
    add sp, -$2a
    or c
    push hl
    add c
    add c
    sub $b3
    add c
    or c
    db $e4
    ld b, a
    rst $38
    ld hl, sp-$16
    ld [$ec27], sp
    ld [bc], a
    sub $c1
    db $e4
    ld b, c
    ld b, b
    ld b, b
    sub $c3
    ld b, c
    add c
    or a
    rst $38
    ld hl, sp-$2a
    db $10
    db $e4
    or b
    ret nz

    db $d3
    db $10
    or b
    ret nz

    or b
    ret nz

    sub $10
    or b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    or e
    jp $edff


    nop
    ld l, b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3408], a
    add sp, -$24
    or e
    push bc
    push hl
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_008_5c31

    jr nc, @+$22

    jr nc, jr_008_5c15

    db $10
    jr nz, jr_008_5c08

    nop
    stop
    and $b0
    rst $20
    add b
    sub b
    and b
    sub b
    and b
    or b
    and b
    or b
    and $60

jr_008_5c08:
    adc $60
    ret z

    ld [hl], l
    ld h, b
    adc $60
    ret z

    ld d, l
    ld h, b
    adc $60
    ret z

jr_008_5c15:
    ld [hl], l
    ld h, b
    adc $60
    ret z

    sub l
    ld h, b
    push hl
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b

jr_008_5c31:
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    and $40
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    ld h, b
    push hl
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    ld h, b
    ld b, b
    db $10
    and $40
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    push hl
    db $10
    and $b0
    sub b
    pop bc
    rst $20
    or b
    ret nz

    and $23
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $43
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $23
    rst $20
    or b
    ret nz

    and $11
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $23
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $43
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $23
    rst $20
    or b
    ret nz

    or b
    ret nz

    and $11
    rst $20
    or c
    sub c
    and $11
    rst $20
    or b
    ret nz

    or b
    ret nz

    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    rst $08
    rst $20
    or b
    ret nz

    or b
    ret nz

    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    push hl
    nop
    and $b0
    sub b
    or b
    rst $20
    sub b
    ret nz

    sub b
    ret nz

    call c, $e5b5
    dec de
    call c, $e7b3
    sub b
    ret nz

    sub b
    ret nz

    call c, $e5b5
    sbc e
    call c, $33b3
    inc de
    inc sp
    ld b, c
    ld h, e
    and $b1
    push hl
    ld de, $b161
    ld h, c
    ld sp, $e761
    sub b
    ret nz

    sub b
    ret nz

    call c, $e5b5
    sbc e
    call c, Call_000_10b3
    and $b0
    push hl
    db $10
    jr nc, @+$42

    jr nc, jr_008_5e20

    ld h, b
    sub b
    add b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    jr nc, @+$12

    call c, Call_000_33b5
    ld b, e
    ld de, $6335
    ld b, c
    inc sp
    dec d
    rst $08
    ret


    ld b, l
    inc sp
    ld b, e
    ld de, $4335
    ld sp, $e613
    or l
    push hl
    inc sp
    ld b, e
    ld de, $6335
    sub c
    add e
    ld b, l
    cp $00
    dec de
    ld e, h
    db $ec
    inc bc
    ld [$2508], a
    call c, $e4c3
    ld d, b
    ld b, b
    jr nc, jr_008_5e58

    jr nc, @+$22

    jr nc, jr_008_5e3c

    db $10
    jr nz, jr_008_5e2f

    nop

jr_008_5e20:
    push hl
    or b
    call nz, $5060
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_008_5e6a

    jr nc, @+$22

    jr nc, jr_008_5e4e

    db $10

jr_008_5e2f:
    jr nz, jr_008_5e41

    or b
    adc $b0
    ret z

    db $e4
    dec b
    push hl
    or b
    adc $b0
    ret z

jr_008_5e3c:
    and l
    push hl
    or b
    adc $b0

jr_008_5e41:
    ret z

    db $e4
    dec b
    push hl
    or b
    adc $b0
    ret z

    db $e4
    dec d
    call c, Call_000_33c5

jr_008_5e4e:
    inc de
    inc sp
    ld b, c
    ld h, e
    ld b, e
    ld sp, $e511
    or c
    db $e4

jr_008_5e58:
    ld de, $dc31
    or a
    db $ec
    ld [bc], a
    push hl
    sub a
    db $e4
    rla
    ld b, a
    rla
    call c, $ecc5
    inc bc
    inc sp
    inc de

jr_008_5e6a:
    inc sp
    ld b, c
    ld h, e
    ld b, e

jr_008_5e6e:
    ld sp, $e511
    or c
    db $e4
    ld de, $dc31
    or a
    db $ec
    ld [bc], a
    rla
    push hl

jr_008_5e7b:
    or a

jr_008_5e7c:
    sub a
    call c, $e4c3
    ld b, e
    ld b, c
    ld de, $c5dc
    db $ec
    inc bc
    rst $20
    or b
    jp nz, $20e5

    db $10
    and $b0
    push hl
    jr nz, @-$3b

    ld b, b
    jr nz, jr_008_5e7b

    or b
    push hl
    ld b, b
    jp Jump_008_4060


    db $10
    ld h, b
    pop bc
    ld b, b
    db $10
    ld b, b
    ret nz

    ld d, b
    ret nz

    jr nz, jr_008_5eb6

    and $b0
    push hl
    jr nz, jr_008_5e6e

    ld b, b
    jr nz, @-$18

    or b
    push hl
    ld b, b
    jp Jump_008_4060


    db $10
    ld h, b

jr_008_5eb6:
    ld b, b
    ret nz

    db $10
    ret nz

    jr nz, jr_008_5e7c

    db $10
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    rst $20
    or b
    ret nz

    or b
    ret nz

    call c, $e5b0
    or e
    db $e4
    inc bc
    push hl
    sub e
    or e
    db $e4
    inc bc
    push hl
    sub e
    ld [hl], e
    call c, Call_008_67b0
    call c, Call_008_67b7
    call c, Call_000_00c3
    db $10
    jr nz, jr_008_5f11

    ld b, b
    jr nc, jr_008_5f04

    stop
    and $b0
    sub b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    sub b
    or b
    call c, $e5b0
    or e
    db $e4
    inc bc
    push hl
    sub e
    or e
    db $e4
    inc bc
    push hl
    sub e
    db $e4
    inc bc
    call c, $e5b0

jr_008_5f04:
    cp a
    call c, $e43f
    ld l, a
    call c, $ecc3
    inc bc
    rst $20
    sub b
    ret nz

    sub b

jr_008_5f11:
    ret nz

    call c, $e5c7
    sbc e
    call c, $e7c3
    sub b
    ret nz

    sub b
    ret nz

    call c, $e4c7
    dec de
    call c, Call_000_3fb0
    call c, Call_000_3fb7
    call c, $e7c3
    sub b
    ret nz

    sub b
    ret nz

    call c, $e4c7
    dec de
    call c, $97c0
    ld b, a
    cp a
    call c, $bfc7
    call c, $e5c4
    inc sp
    ld b, e
    ld de, $6335
    sub c
    add e
    pop bc
    or b
    db $e4
    jr nc, jr_008_5fa9

    and b
    call c, $bfc0
    ld l, a
    sbc a
    db $e3
    rla
    pop bc
    call c, $e4c3
    sub l
    cp $00
    ld c, e
    ld e, [hl]
    ld [$2000], a
    call c, $cb13
    push hl
    or b
    db $e4
    nop
    stop
    db $10
    jr nz, jr_008_5f79

    jr nz, jr_008_5f9b

    jr nz, jr_008_5f9d

    ld b, b
    jr nc, jr_008_5fb0

    ld d, b
    ld b, b
    ld d, b
    ld h, b
    ld d, b
    ld h, b
    push hl
    or b
    ret nz

jr_008_5f79:
    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl

jr_008_5f9b:
    or b
    ret nz

jr_008_5f9d:
    db $e4
    dec b
    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4

jr_008_5fa9:
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b

Call_008_5fb0:
jr_008_5fb0:
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld d, l
    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    dec b
    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    dec d
    call c, $e514
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    inc hl
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    ld b, e
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    inc hl
    push hl
    or b
    ret nz

    db $e4
    ld de, $b0e5
    ret nz

    or b
    ret nz

    db $e4
    inc hl
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    ld b, e
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    inc hl
    push hl
    or b
    ret nz

    or b
    ret nz

    db $e4
    ld de, $b1e5
    sub c
    db $e4
    ld de, $b0e5
    ret nz

    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c0b0
    or b
    call z, $c090
    sub b
    ret nz

    db $e4
    dec de
    push hl
    sub b
    ret nz

    sub b
    ret nz

    db $e4
    ld c, e
    ccf
    push hl
    cp a
    sub b
    ret nz

    sub b
    ret nz

    db $e4
    ld c, e
    rla
    ld b, a
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld b, l
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld [hl], l
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    dec b
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld [hl], l
    cp $00
    inc e
    ld h, b
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or d
    rst $00
    push hl
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_008_61d9

    jr nc, @+$22

    jr nc, @+$22

    db $10
    jr nz, jr_008_61b0

    nop
    stop
    and $b0
    push hl
    nop
    and $b0
    and b
    or b
    and b
    sub b
    and b
    push hl
    dec h

jr_008_61b0:
    ld b, l

Call_008_61b1:
    ld d, e
    ld hl, $5543
    inc bc
    dec h
    ld b, l
    ld d, e
    ld hl, $5543
    ld bc, $2511
    ld b, l
    ld d, e
    ld hl, $5543
    inc bc
    dec h
    ld b, l
    ld d, e
    ld hl, $5543
    ld bc, $dc11
    or l
    ld hl, $1143
    inc hl
    and $b3
    ld h, e
    push hl
    ld b, c
    inc hl

jr_008_61d9:
    ld de, $4121
    ld d, a
    call c, Call_000_00b2
    db $10
    jr nz, jr_008_6213

    ld b, b
    jr nc, jr_008_6206

    nop
    nop
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_6216

    nop
    call c, Call_000_21b5
    ld b, e
    ld de, $e623
    or e
    ld h, e
    push hl
    ld b, c
    inc hl
    ld de, $b1e6

jr_008_6206:
    push hl
    ld de, $a7dc
    daa
    rla
    and $b7
    push hl
    rla
    call c, Call_000_21b5

jr_008_6213:
    ld de, $b1e6

jr_008_6216:
    sub c
    ld [hl], c
    pop bc
    push hl
    ld hl, $e611
    or c
    sub c
    ld [hl], c
    pop bc

Call_008_6221:
    push hl
    ld hl, $e611
    or c
    push hl
    ld de, $e643
    ld [hl], b
    sub b
    or b
    push hl
    db $10
    inc hl
    and $60
    ld [hl], b
    sub b
    or b
    push hl
    inc de
    and $70
    sub b
    or b
    push hl
    db $10
    inc hl
    and $60
    ld [hl], b
    sub b
    or b
    push hl
    ld hl, $e611
    or c
    sub c
    ld [hl], c
    pop bc
    push hl
    ld hl, $e611
    or c
    sub c
    or c
    ld [hl], c
    push hl
    ld hl, $6141
    ld [hl], c
    sub c
    or c
    sub c
    ld [hl], c
    sub c
    pop bc
    sub c
    or c
    sub c
    ld [hl], c
    ld h, c
    ld [hl], c
    sub c
    ld b, c
    ld [hl], c
    ld h, c
    and $b0
    push hl
    nop
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    db $e4
    nop
    db $10
    jr nz, @+$32

    jr nz, jr_008_628e

    nop
    push hl
    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_62aa

    stop
    nop
    db $10

jr_008_628e:
    jr nz, jr_008_62c0

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    db $e4
    nop
    db $10
    jr nz, jr_008_62cd

    ld b, b
    jr nc, jr_008_62c0

    stop
    push hl
    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b

jr_008_62aa:
    ld b, b
    jr nc, jr_008_62cd

    db $10
    db $10
    jr nz, jr_008_62e1

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    db $e4
    nop
    db $10
    jr nz, jr_008_62ee

    ld b, b
    ld d, b

jr_008_62c0:
    ld b, b
    jr nc, jr_008_62e3

    stop
    push hl
    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b

jr_008_62cd:
    ld b, b
    jr nc, @+$22

    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    and b
    or b
    db $e4
    nop
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b

jr_008_62e1:
    ld h, b
    ld d, b

jr_008_62e3:
    ld b, b
    jr nc, @+$22

    stop
    push hl
    or b
    and b
    or b
    db $e4
    nop

jr_008_62ee:
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    push hl
    sub e
    db $e4
    inc hl
    push hl
    sub c
    jr nz, @+$42

    ld h, b
    ld [hl], b
    add b
    and b
    or c
    db $e4
    ld bc, $91e5
    db $e4
    ld bc, $71e5
    or c
    ld d, c
    ld [hl], c
    sub c
    db $e4
    ld bc, $c121
    push hl
    sub e
    db $e4
    inc bc
    ld hl, $50e5
    ld [hl], b
    sub b
    or b
    db $e4
    nop
    jr nz, @+$43

    ld d, c
    ld hl, $2151
    ld d, c
    ld hl, $2151
    ld d, c
    ld hl, $4151
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    ld d, c
    ld b, c
    push hl
    or c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld bc, $2141
    and $a1
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld hl, $0151
    and $91
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld b, c
    ld bc, $91e6
    push hl
    ld bc, $2141
    and $a1
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld d, c
    ld hl, $a1e6
    push hl
    ld hl, $2f51
    rrca
    and $af
    ld a, e
    push hl
    jr nz, @+$42

    ld [hl], b
    db $e4
    nop
    daa
    ld d, a
    push hl
    and a
    db $e4
    rlca
    daa
    ld b, a
    ld d, a
    ld [hl], a

Call_008_63b7:
jr_008_63b7:
    ld b, c
    jp $c341


    ld b, c
    pop bc
    ld b, c
    jp $c341


    ld b, c

jr_008_63c2:
    pop bc
    ld b, c
    jp $c341


Call_008_63c7:
    ld b, c
    pop bc
    ld b, c
    jp $c341


    ld b, c
    pop bc
    push hl
    ld bc, $e623
    or c
    push hl
    inc de
    pop bc

Call_008_63d7:
    db $10
    jr nz, jr_008_641a

    ret nz

    jr nz, @-$3e

    and $b0
    ret nz

    push hl
    db $10
    ret z

    jr nz, jr_008_6415

    ld b, b
    ld d, b
    ld d, b
    ld b, b
    jr nc, jr_008_640b

    db $10
    call nz, $2010
    ld b, b
    ret nz

    ld d, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_008_63b7

    ld hl, $5141
    ld [hl], c
    jr nc, jr_008_643d

    ld d, b
    ld h, b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_6424

    ret z

    ld h, c
    ld b, e
    ld sp, $6141
    add c

jr_008_640b:
    ld b, a
    ld h, a
    ld [hl], a
    db $e4
    inc bc
    push hl
    ld [hl], b
    add b
    sub b
    and b

jr_008_6415:
    cp $00
    call $ec61

jr_008_641a:
    inc bc
    ld [$250a], a
    call c, $e4c2
    sub b
    add b
    ld [hl], b

jr_008_6424:
    ld h, b
    sub b
    ld d, b
    ld h, b
    ld d, b
    sub b
    ld b, b
    ld d, b
    ld b, b
    sub b
    jr nc, @+$42

    jr nc, jr_008_63c2

    jr nz, jr_008_6464

    jr nz, @-$6e

    db $10
    jr nz, jr_008_6449

    sub b
    nop
    stop

jr_008_643d:
    sub b
    push hl
    or b
    db $e4
    nop
    push hl
    or b
    call c, $e4e1
    cp a
    rst $08

jr_008_6449:
    call c, $bfd1
    res 2, e
    call c, $e5c2
    or l
    db $e4
    dec d
    inc hl
    push hl
    or c
    db $e4
    inc de
    dec h
    sub c
    and c
    or l
    db $e3
    dec d
    inc hl
    db $e4
    or c
    db $e3
    inc de

jr_008_6464:
    dec h
    db $e4
    sub e
    call c, $e5c7
    or l
    ld l, l
    or e
    ld h, e
    or e
    call c, $e450
    rlca
    call c, $0730
    call c, $074e
    call c, Call_000_07c7
    push hl
    or l
    ld l, l
    or e
    ld h, e
    or e
    call c, $9790
    call c, $9750
    call c, $9740
    call c, $9730
    call c, Call_008_7fc7
    db $e4
    daa
    push hl
    ld [hl], a
    call c, $9780
    call c, $9750
    call c, $9740
    call c, $9760
    call c, Call_008_7fc7
    db $e4
    ld b, a
    ld h, a
    ld c, a
    call c, Call_008_73c5
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $dc41
    or a
    ld h, a
    call c, Call_008_6750
    call c, Call_008_6760
    call c, Call_008_6770
    call c, Call_008_77a0
    call c, $77a7
    call c, $73b7
    call c, $91c5
    ld [hl], c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    call c, $87a0
    call c, $8770
    call c, $8780
    call c, $8760
    call c, $9fa0
    call c, $e3b0
    rla
    ld b, a
    call c, Call_000_23c0
    db $e4
    sub e
    db $e3
    ld bc, $c7dc
    db $e4
    or a
    call c, $b760
    call c, $b569
    call c, $b596
    pop bc
    call c, $e3c0
    inc hl
    db $e4
    sub e
    and c
    call c, $e3b0
    ld e, l
    call c, Call_008_7f60
    call c, Call_008_4f50
    call c, $4f40
    call c, $e4c7
    dec b
    push hl
    sbc l
    db $e4
    inc bc
    push hl
    sub e
    db $e4
    inc bc
    push hl
    and l
    db $e4
    ld e, l
    push hl
    and e
    db $e4
    ld d, e
    inc hl
    dec b
    push hl
    sbc l
    db $e4
    inc bc
    ld b, c
    ld hl, $4101
    ld hl, $a3e5
    db $e4
    ld e, c
    ld [hl], l
    ld d, l
    inc hl
    call c, Call_008_5fb0
    ld c, a
    cpl
    ld c, a
    call c, $e3a0
    ld e, a
    ld c, a
    ld a, a
    ld e, a
    call c, $e5d1
    and l
    and l
    and e
    sub l
    sub l
    sub e
    db $e4
    dec b
    dec b
    inc bc
    push hl
    and l
    and l
    sub e
    call c, $93c7
    or e
    ld [hl], c
    sbc c
    or c
    db $e4
    ld de, $2141
    ld de, $b1e5
    xor a
    pop bc
    and c
    db $e4
    ld bc, $4151
    ld hl, $e501
    and c
    cp a
    pop bc
    or c
    db $e4
    ld de, $6171
    ld b, c
    ld hl, $b1e5
    db $e4
    rrca
    ld b, a
    ld [hl], a
    cp $00
    ld h, a
    ld h, h
    ld [$2000], a
    call c, $e514
    or b
    and b
    sub b
    add b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    ld d, b
    ld b, b
    jr nc, @+$22

    jr nc, jr_008_65b3

    stop
    stop

Call_008_6597:
    and $b0
    and b
    or b
    and b
    sub b
    add b
    sub c
    and c
    or c
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld d, c
    ld b, c
    ld hl, $b1e6
    or c
    push hl
    ld hl, $e641
    or c

jr_008_65b3:
    push hl
    ld hl, $a1e6
    push hl
    ld bc, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld d, c
    ld b, c
    ld hl, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld hl, $a1e6
    push hl
    ld bc, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld d, c
    ld b, c
    ld hl, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld hl, $a1e6
    push hl
    ld bc, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld d, c
    ld b, c
    ld hl, $b1e6
    or c
    push hl
    ld hl, $e641
    or c
    push hl
    ld hl, $a1e6
    push hl
    ld bc, $a0e6
    or b
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $e601
    or c
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld d, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    ld hl, $2111
    ld de, $91e6
    add c
    ld [hl], c
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    add c
    sub c
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $71
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    push hl
    ld hl, $71e6
    add c
    sub c
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    ld hl, $e611
    or c
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    ld hl, $6141
    ld b, c
    ld hl, $0161
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld sp, $7151
    ld d, c
    ld sp, $1171
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld b, c
    ld h, c
    add c
    ld h, c
    ld b, c
    add c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $5191
    ld [hl], c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    inc hl
    and $93
    push hl
    ld bc, $e671
    or c
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1

Call_008_6750:
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    and $b1
    push hl
    ld [hl], c
    inc hl
    and $93
    and c
    push hl
    ld d, c

Call_008_6760:
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c

Call_008_6770:
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c

Call_008_6790:
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c

Call_008_67b0:
    and $91
    push hl
    ld b, c
    and $91
    push hl

Call_008_67b7:
    ld b, c
    and $91
    push hl
    ld b, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a3
    push hl
    ld d, e
    and $a3
    push hl
    ld d, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    inc hl
    and $a3
    push hl
    inc hl
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld d, e
    and $a3
    push hl
    ld d, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    inc hl
    and $a3
    push hl
    inc hl
    and $a3
    push hl
    ld b, e
    and $a3
    push hl
    ld b, e
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $b1
    sub c
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $91
    push hl
    ld b, c
    ld b, c
    and $b1
    sub c
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $91
    push hl
    ld b, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $a1
    push hl
    ld d, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld h, c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $6171
    ld b, c
    ld h, c
    ld b, c
    ld hl, $fe01
    nop
    rlca
    ld h, [hl]
    db $ed
    nop
    ld l, b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or e
    db $e4
    nop
    push hl
    or b
    and b
    sub b
    and b
    sub b
    add b
    ld [hl], b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_6964

    jr nc, jr_008_6946

    db $10
    jr nz, @+$12

    nop
    and $b0
    push hl
    nop
    and $b0
    and b
    sub b
    and b
    or b
    push hl
    nop
    db $10
    call c, $75b1
    ld b, l
    dec sp
    dec e
    ld b, l
    add hl, sp
    call c, Call_000_194f
    call c, $75b1
    ld b, l

jr_008_6946:
    dec sp
    dec e
    ld b, l
    add hl, sp
    add hl, de
    call c, Call_000_10b3
    jr nz, jr_008_6960

    nop
    db $10
    jr nz, jr_008_6964

    nop
    db $10
    jr nz, jr_008_6988

    jr nz, jr_008_696a

    nop
    and $b0
    push hl
    nop
    db $10

jr_008_6960:
    jr nz, jr_008_6992

    jr nz, jr_008_6974

jr_008_6964:
    jr nz, jr_008_6996

    jr nz, jr_008_6978

    jr nz, @+$32

jr_008_696a:
    ld b, b
    ld d, b
    ld b, b
    jr nc, jr_008_698f

    db $10
    jr nz, jr_008_69a2

    ld b, b
    ld d, b

jr_008_6974:
    ld h, b
    ld [hl], b
    add b
    sub b

jr_008_6978:
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_699f

    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b

jr_008_6988:
    ld b, b
    jr nc, jr_008_69cb

    ld d, b
    ld h, b
    ld [hl], b
    add b

jr_008_698f:
    sub b

Call_008_6990:
    jr nz, jr_008_69c2

jr_008_6992:
    ld b, b
    jr nc, jr_008_69b5

    db $10

jr_008_6996:
    jr nz, jr_008_69c8

    ld b, b
    jr nc, jr_008_69bb

    db $10
    jr nz, jr_008_69ce

    ld b, b

jr_008_699f:
    jr nc, jr_008_69c1

    db $10

jr_008_69a2:
    jr nz, jr_008_69d4

    ld b, b
    jr nc, jr_008_69c7

    db $10
    jr nz, jr_008_69da

    ld b, b
    ld d, b
    ld h, b
    ld d, b
    ld b, b
    jr nc, @+$22

    jr nc, jr_008_69f3

    jr nc, jr_008_69d5

jr_008_69b5:
    db $10
    jr nz, jr_008_69e8

    ld b, b
    jr nc, jr_008_69db

jr_008_69bb:
    db $10
    jr nz, @+$32

    ld b, b
    jr nc, @+$22

jr_008_69c1:
    db $10

jr_008_69c2:
    jr nz, jr_008_69f4

    ld b, b
    jr nc, jr_008_69e7

jr_008_69c7:
    db $10

jr_008_69c8:
    jr nz, jr_008_69fa

    ld b, b

jr_008_69cb:
    ld d, b
    ld h, b
    ld d, b

jr_008_69ce:
    ld b, b
    db $10
    jr nz, jr_008_6a02

    ld b, b
    ld d, b

jr_008_69d4:
    ld h, b

jr_008_69d5:
    ld [hl], b
    add b
    sub b
    add b
    ld [hl], b

jr_008_69da:
    ld h, b

jr_008_69db:
    ld d, b
    ld b, b
    jr nc, jr_008_69ff

    db $10
    jr nz, jr_008_6a12

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b

jr_008_69e7:
    sub b

jr_008_69e8:
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_6a0f

    db $10
    jr nz, jr_008_6a22

    ld b, b

jr_008_69f3:
    ld d, b

jr_008_69f4:
    ld h, b
    ld [hl], b
    add b
    sub b
    add b
    ld [hl], b

jr_008_69fa:
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_6a1f

jr_008_69ff:
    db $10
    jr nz, @+$32

jr_008_6a02:
    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_008_6a4b

    ld d, b
    ld h, b
    ld [hl], b
    add b

jr_008_6a0f:
    call c, $23b5

jr_008_6a12:
    inc bc
    inc hl
    ld d, e
    ld b, l
    dec h
    ld d, e
    call c, $9fb7
    ld a, a
    call c, $23b5

jr_008_6a1f:
    inc bc
    inc hl
    ld d, e

jr_008_6a22:
    ld [hl], l
    sub l
    or e
    call c, $e4b7
    rrca
    call c, Call_008_7f3f
    call c, $e5b5
    dec bc
    ld bc, $21c1
    ld bc, $1bcb
    ld de, $51c1
    call c, Call_000_35a3
    call c, $17a7
    cp $00
    ld c, e
    ld l, c
    db $ec
    inc bc
    ld [$2508], a
    call c, $e4c3

jr_008_6a4b:
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    db $e4
    ld [hl], b
    ld h, b
    ld d, b
    db $e3
    ld [hl], b
    call c, $e4c2
    ld [hl], l
    push hl
    ld [hl], l
    ld a, e
    ld a, l
    ld [hl], l
    ld a, c
    call c, Call_008_6990
    call c, Call_008_75c2
    ld [hl], l
    ld a, e
    ld a, l
    ld [hl], l
    ld a, c
    ld a, c
    call c, $75c5
    ld h, l
    ld b, e
    ld [hl], l
    sub l
    ld [hl], e
    db $e4
    adc e
    ld [hl], c
    pop bc
    add c
    ld [hl], c
    jp $b7dc


    db $e3
    rla
    call c, $e4c5
    dec b
    push hl
    and l
    add e
    db $e4
    dec d
    dec b
    push hl
    and e
    db $e4
    ld d, l
    ld b, l
    inc hl
    call c, $e5c7
    and e
    db $e4
    inc bc
    inc hl
    ld d, e
    call c, $8fc0
    call c, $8fb0
    call c, Call_008_7f4e
    call c, Call_008_7fc7

jr_008_6ac7:
    push hl
    ld d, a
    and a
    db $e4

jr_008_6acb:
    daa
    ld d, a
    call c, Call_008_4fc0
    call c, $4fc7
    push hl
    ld d, a
    and a
    db $e4
    daa
    ld d, a
    call c, Call_008_7fc0
    call c, $e33f
    rrca
    call c, $e4c5
    ld c, e
    ld b, c
    pop bc
    ld d, c
    call c, Call_008_43c1
    call c, $c9c5
    ld e, e
    ld d, c
    pop bc
    add c
    call c, $75a3
    call c, $57c7
    cp $00
    sub b
    ld l, d
    ld [$2000], a
    call c, $e411
    db $10
    ret nz

    stop
    jr nz, jr_008_6ac7

    jr nz, jr_008_6b09

jr_008_6b09:
    jr nc, jr_008_6acb

    jr nc, jr_008_6b0d

jr_008_6b0d:
    ld b, b
    ret nz

    ld b, b
    nop
    ld d, b
    ret nz

    ld d, b
    nop
    ld h, b
    ret nz

    ld h, b
    nop
    ld [hl], b
    ret nz

    ld [hl], b
    nop
    push hl
    and c
    or c
    db $e4
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld de, $1381
    add c
    and c
    add c
    ld [hl], c
    ld de, $1381
    add c
    and c
    add c
    ld d, c
    cp $02
    jr nz, jr_008_6bae

    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    adc e
    ld [hl], c
    pop bc
    add c
    ld [hl], c
    jp Jump_008_4151


    ld hl, $0111
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c

Call_008_6b77:
    ld bc, $0171
    ld [hl], c
    ld bc, $1171
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld de, $0181
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $e571
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl

jr_008_6bae:
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    push hl
    and c
    db $e4
    ld d, c
    ld bc, $0171

Call_008_6bc0:
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0151
    ld d, c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld bc, $0171
    ld [hl], c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    ld de, $1181
    add c
    cp $00
    ld b, e
    ld l, e
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or d
    push hl
    ld h, b
    ld d, b
    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], b

jr_008_6c25:
    add b
    ld [hl], b
    call c, $80a2
    sub b
    add b
    sub b
    and b
    sub b
    and b
    or b
    call c, $a092
    or b
    db $e4
    nop
    push hl
    or b
    db $e4
    nop
    stop
    db $10
    call c, $2082
    db $10
    jr nz, jr_008_6c74

    jr nz, @+$32

    ld b, b
    jr nc, jr_008_6c25

    pop bc
    push hl
    ld b, b
    ld b, [hl]
    ld d, b
    ld d, [hl]
    ld [hl], b
    db $76
    ld d, b
    ld d, [hl]
    ld b, b
    ld b, [hl]
    ld d, b
    ld d, [hl]
    ld [hl], b
    db $76
    add b
    add d
    inc sp
    call c, Call_008_40c1
    ld b, d
    call c, $43b3
    call c, Call_008_50c1
    ld d, d
    call c, $53b3
    call c, Call_008_70c1
    ld [hl], d
    call c, Call_008_73b3
    call c, Call_008_50c1

jr_008_6c74:
    ld d, d
    call c, $53b3
    call c, Call_008_40c1
    ld b, d
    call c, $43b3
    call c, Call_008_50c1
    ld d, d
    call c, $53b3
    call c, Call_008_70c1
    ld [hl], d
    call c, Call_008_73b3
    call c, $80c1
    add d
    call c, Call_000_33b7
    call c, $e5b7
    ld b, e
    or e
    inc sp
    and e
    inc hl
    sub e
    and $b3
    push hl
    ld h, e
    ld d, e
    ld h, e
    call c, Call_008_61b1
    ld d, b
    ld h, b
    sub b
    ld h, c
    ld h, b
    call c, $e6b7
    or l
    call c, $e5a0
    dec h
    call c, Call_008_63b7
    ld b, e
    or e
    inc sp
    and e
    inc hl
    sub e
    and $b3
    push hl
    ld h, e
    ld d, e
    ld l, e
    and e
    call c, $bb5e
    call c, Call_008_42b2
    ld b, d
    ld b, c
    ld b, b
    ld h, b
    ld b, b
    or b
    ld h, b
    ld b, b
    ld h, b
    or b
    ld h, b
    ld b, b
    ld h, b
    or b
    ld h, b
    ld b, b
    ld h, b
    or b
    ld h, b
    call c, Call_008_40c2
    ld h, b
    or b
    ld h, b
    call c, Call_008_40d2
    ld h, b
    or b
    call c, Call_008_40c1
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, d
    call c, $23b5
    call c, Call_008_40c1
    ld b, d
    call c, Call_008_53b5
    call c, Call_008_40c1
    ld b, d
    call c, $23b5
    call c, Call_008_40c1
    call c, $46b7
    call c, $41c1
    or b
    sub b
    ld b, c
    or b
    sub b
    ld b, c
    or b
    sub b
    ld b, c
    or b
    sub d
    ld b, b
    ld [hl+], a
    ld b, b
    ld [hl+], a
    ld b, b
    ld [hl+], a
    ld b, b
    jr nz, @+$53

    db $e4
    nop
    push hl
    or b
    ld d, c
    db $e4
    nop
    push hl
    or b
    ld d, c
    db $e4
    nop
    push hl
    or b
    ld d, c
    db $e4
    nop
    push hl
    or d
    ld d, b
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld b, d
    ld d, b
    ld b, b
    ld h, c
    db $e4
    stop
    push hl
    ld h, c
    db $e4
    stop
    push hl
    ld h, c
    db $e4
    stop
    push hl
    ld h, c
    db $e4
    db $10
    ld [bc], a
    push hl
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    ld h, b
    ld d, d
    call c, $e4b7
    ld bc, $b0dc
    rla
    call c, Call_000_17b7
    call c, $e5a0
    ld h, a
    ld h, a
    call c, $e5b0
    sub a
    call c, $97b7
    ld [hl], e
    cp e
    call c, $97b0
    call c, $97b7
    call c, Call_008_47b0
    call c, $47b7
    call c, $a7b0
    call c, $a7b7
    db $e4
    ld d, a
    push hl
    and a
    db $e4
    inc de
    ld c, e
    push hl
    sub e
    db $e4
    dec de
    call c, $fd40
    ld a, e
    ld l, a
    db $fd
    ld a, e
    ld l, a
    call c, $e5b7
    ld b, e
    or e
    inc sp
    and e
    inc hl
    sub e
    and $b3
    push hl
    ld h, e
    ld d, e
    ld l, e
    call c, $97b0
    ld [hl], a
    call c, $43b7
    or e
    inc sp
    and e
    inc hl
    sub e
    and $b3
    push hl
    ld h, e
    ld d, e
    ld l, e
    call c, $97b0
    call c, $e4b7
    rlca
    call c, $e5b0
    or a
    call c, $b7b7
    call c, $e4b0
    ld b, a
    call c, $47b7
    cp $00

jr_008_6dd3:
    sub h
    ld l, h

jr_008_6dd5:
    db $ec
    inc bc
    ld [$2508], a
    call c, $e3c2
    nop
    db $e4
    add b
    or b
    ld h, b
    sub b
    ld b, b
    ld [hl], b
    db $e3
    nop
    db $e4
    ld d, b
    db $10
    ld b, b
    nop
    jr nc, jr_008_6dd3

    or b
    db $e4
    jr nz, jr_008_6dd5

    nop
    db $e4
    nop
    push hl
    add b
    or b
    ld h, b
    and b
    ld d, b
    sub b
    db $e3
    nop
    push hl
    add b
    jr nc, jr_008_6e72

    jr nz, jr_008_6e54

    db $10
    ld b, b
    db $e3
    nop
    call c, $e4c1
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld b, b
    ld b, d
    call c, $e3c2
    ld b, e
    call c, $e4c1
    ld b, b
    ld b, d
    call c, $e3c2
    ld b, e
    call c, $e4c1
    ld b, b
    ld b, d
    call c, $e3c2
    ld b, e
    call c, $e4c1
    ld b, b
    ld b, d
    call c, $33c2
    db $fd
    ld l, a
    ld l, a
    db $fd
    ld l, a
    ld l, a
    db $fd
    ld l, a
    ld l, a
    db $fd
    ld l, a
    ld l, a
    db $fd
    ld l, a
    ld l, a
    db $fd
    ld l, a
    ld l, a
    db $fd
    ld l, a
    ld l, a
    call c, $e4c1
    ld b, b
    ld b, d
    call c, $e54a
    add e
    call c, $e4d7

jr_008_6e54:
    ld b, a
    scf
    daa
    push hl
    or a
    call c, $a3d7
    cp e
    call c, Call_008_51b1
    ld h, d
    sub b
    or b
    sub b
    db $e4
    nop
    push hl
    or c
    sub b
    or b
    or b
    sub b
    and b
    call c, $e4d7
    ld b, a
    scf

jr_008_6e72:
    daa
    push hl
    or a
    call c, $a3d7
    cp e
    db $e4
    inc sp
    ld c, e
    call c, $e5a0
    or a
    db $e4
    daa
    ld d, a
    daa
    call c, Call_008_40d1
    ld b, d
    call c, $e5c4
    inc hl
    call c, $e4d1
    ld b, b
    ld b, d
    call c, $e5c4
    ld d, e
    call c, $e4d1
    ld b, b
    ld b, d
    call c, $e5c4
    inc hl
    call c, $e4d1
    ld b, b
    ld b, b
    call c, $e6c4
    or e
    push hl
    ld hl, $c2dc
    db $e4
    ld b, b
    ld b, b
    jr nz, jr_008_6ef0

    ld d, b
    ld b, b
    jr nz, jr_008_6f04

    ld b, b
    ld b, b
    ld h, b
    ld d, b
    ld b, b
    jr nc, @+$42

    ld h, b
    ld b, b
    ld b, b
    ld d, b
    ld b, b
    jr nz, jr_008_6ed2

    jr nz, jr_008_6ef4

    ld b, b
    ld b, b
    call c, $e6c4
    or e
    push hl
    ld hl, $d7dc
    db $e4
    ld b, e
    ld d, c
    ld l, e

jr_008_6ed2:
    call c, $e5c2
    or c
    or e
    or c
    or e
    or c
    call c, $e4d7
    ld d, e
    ld h, c
    ld a, e
    call c, $01c2
    inc bc
    ld bc, $0103
    call c, Call_008_63d7
    ld [hl], c
    adc e
    call c, $1182
    inc de

jr_008_6ef0:
    call c, $11a2
    inc de

jr_008_6ef4:
    inc de
    call c, $11d2
    inc de
    call c, $11f2
    inc de
    call c, Call_008_40c4
    ld d, b
    call c, Call_008_6bc0

jr_008_6f04:
    call c, Call_008_63c7
    call c, $e51f
    ld h, a
    call c, Call_008_6790
    call c, $e4c7
    inc de
    call c, $2bc0
    daa
    call c, $27c7
    call c, $47c0
    call c, Call_008_47c7
    call c, $e5c0
    sub a
    call c, $97c7
    call c, $e4c0
    ld d, a
    call c, $57c7
    db $e3
    rlca
    db $e4
    and a
    call c, $9fc0
    sub a
    call c, $97c7
    call c, $fdc5
    ld a, e
    ld l, a
    call c, $fdb1
    ld a, e
    ld l, a
    call c, $e4d7
    ld b, a
    scf
    daa
    push hl
    or a
    and e
    cp e
    call c, $e4c7
    daa
    call c, $074c
    call c, Call_008_47d7
    scf
    daa
    push hl
    or a
    and e
    cp e
    call c, $e45d
    daa
    call c, Call_008_57c0
    call c, $47c0
    call c, Call_008_47c7
    and e
    cp e
    cp $00
    ld d, c
    ld l, [hl]
    db $e4
    ld b, b
    ld b, b
    ld [hl], b
    db $e3
    nop
    ld b, b
    nop
    db $e4
    ld [hl], b
    ld d, b
    rst $38
    db $e4
    ld hl, $e511
    or c
    db $e4
    ld de, $1121
    ld h, c
    ld hl, $dcff
    ld de, $43e4
    db $e3
    ld b, e
    db $e4
    ld d, e
    db $e3
    inc sp
    db $e4
    ld [hl], e
    db $e3
    inc hl
    db $e4
    add e
    or e
    ld b, b
    ld b, b
    push bc
    ld b, b
    ld b, b
    push bc
    ld b, b
    ld b, b
    push bc
    ld b, b
    ld b, b
    pop bc
    inc sp
    ld b, b
    ld b, b
    pop bc
    or e
    ld b, b
    ld b, b
    pop bc
    db $e3
    inc bc
    db $e4
    ld b, b
    ld b, b
    pop bc
    db $e3
    inc hl

jr_008_6fb4:
    db $e4
    ld b, b
    ld b, b
    db $e3
    inc bc
    db $e4

jr_008_6fba:
    and c
    ld b, b
    ld b, b
    pop bc
    or e
    ld b, b
    ld b, b
    pop bc
    db $e3
    inc bc
    db $e4
    ld b, b
    ld b, b
    pop bc
    db $e3
    inc hl
    db $e4
    ld b, b
    ld b, b
    db $e3
    inc bc
    ld hl, $40e4
    ld b, b
    pop bc
    or e
    ld b, b

jr_008_6fd6:
    ld b, b
    pop bc
    db $e3
    inc bc
    db $e4
    ld b, b

jr_008_6fdc:
    ld b, b
    pop bc
    db $e3
    inc hl
    db $e4
    ld b, b
    ld b, b
    pop bc
    ld b, b
    jr nc, @+$42

    ld [hl], b
    db $e4

jr_008_6fe9:
    ld b, b
    push hl
    ld b, b
    pop bc
    db $e4
    ld h, e

jr_008_6fef:
    jr nc, jr_008_6fd6

    jr nc, jr_008_6fb4

    db $e4
    ld d, e
    jr nz, jr_008_6fdc

    jr nz, jr_008_6fba

    db $e4
    ld b, e
    ld h, b
    push hl
    ld h, b
    pop bc
    db $e4
    ld h, e
    ld d, e
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl

jr_008_700b:
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4

jr_008_7011:
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    ld b, b
    push hl
    ld b, b
    pop bc
    db $e4
    ld h, e
    jr nc, jr_008_700b

    jr nc, jr_008_6fe9

    db $e4
    ld d, e
    jr nz, jr_008_7011

    jr nz, jr_008_6fef

    db $e4
    ld b, e
    ld h, b
    push hl
    ld h, b
    pop bc
    db $e4
    ld h, e
    ld d, e
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    push hl
    or c
    db $e4
    ld h, c
    ld b, b
    jr nc, @+$42

    ld h, b
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, b
    ld b, b
    pop bc
    inc hl
    ld b, b
    ld b, b
    pop bc
    ld d, e
    ld b, b
    ld b, b
    pop bc
    inc hl
    ld b, b
    ld b, b
    push hl
    or l
    db $e4
    ld b, b
    ld b, b
    pop bc
    inc hl
    ld b, b
    ld b, b
    pop bc
    ld d, e
    ld b, b
    ld b, b
    pop bc
    inc hl
    ld b, b
    ld b, b
    push hl
    or l
    db $e4
    ld b, c
    db $e3
    ld hl, $41e4
    db $e3
    ld hl, $41e4
    db $e3
    ld hl, $41e4
    db $e3
    ld hl, $41e4
    or c
    or c
    ld b, c
    or c
    or c
    db $e3
    ld de, $b1e4
    ld d, c
    db $e3
    ld sp, $51e4
    db $e3
    ld sp, $51e4
    db $e3
    ld sp, $51e4
    db $e3
    ld sp, $51e4
    db $e3
    ld bc, $e401
    ld d, c
    db $e3
    ld bc, $2101
    ld bc, $61e4
    db $e3
    ld b, c
    db $e4
    ld h, c
    db $e3
    ld b, c
    db $e4
    ld h, c
    db $e3
    ld b, c
    db $e4

Call_008_70c1:
    ld h, c
    db $e3
    ld b, c
    db $e4
    ld h, c
    db $e3
    ld de, $e411
    ld h, c
    db $e3
    ld de, $4111
    ld de, $61e4
    db $e3
    ld de, $e411
    ld h, c
    db $e3
    ld de, $4111
    ld de, $c6fd
    ld [hl], c
    db $fd
    add $71
    db $e4
    ld [hl], c

Jump_008_70e4:
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $70e4
    ld h, b
    ld [hl], b
    add b
    db $fd
    rst $10
    ld [hl], c
    db $fd
    rst $10
    ld [hl], c
    db $e4
    and c
    db $e3
    ld d, c
    db $e4
    and c
    db $e3
    ld d, c
    db $e4
    and c
    db $e3
    ld d, c
    db $e4
    and c
    db $e3
    ld d, c
    db $e4
    and c
    db $e3
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $e411
    and c
    sub c
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    add c
    ld [hl], c
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $70e4
    ld h, b
    ld [hl], b
    add b
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    or c
    ld h, c
    ld sp, $b141
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    ld h, c
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    ld d, c
    ld b, c
    or c
    db $e3
    ld b, e
    db $e4
    ld b, c
    or c
    db $e3
    inc sp
    db $e4
    ld b, c
    or c
    db $e3
    inc hl
    db $e4
    ld b, c
    sub c
    or e
    cp $00
    add sp, $6f
    db $e4
    ld h, c
    db $e3
    ld de, $61e4
    db $e3
    ld de, $61e4
    db $e3
    ld de, $61e4
    db $e3
    ld de, $e4ff
    sub c
    db $e3
    ld b, c
    db $e4
    sub c
    db $e3
    ld b, c
    db $e4
    sub c
    db $e3
    ld b, c
    db $e4
    sub c
    db $e3
    ld b, c
    rst $38
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a

jr_008_71ee:
    db $ec
    ld [bc], a
    add sp, -$2a
    or h
    db $e4
    ld d, e
    call nc, Call_000_01b2
    ld d, c
    ld bc, $b3d6
    ld sp, $4131
    sub $b4
    ld d, a
    rst $38
    ld hl, sp-$16
    inc b
    ld [hl+], a
    db $ec
    ld [bc], a
    sub $c4
    db $e4
    sub e
    call nc, $91c2
    sub c
    sub c
    sub $c4
    and c
    and c
    and c
    sub $c4
    sub a
    rst $38
    ld hl, sp-$2a
    db $10
    db $e3
    sub e
    call nc, Call_008_5010
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    sub $10
    ld [hl], b
    ret nz

    jr nc, jr_008_71ee

    ld [hl], b
    ret nz

    sub a
    rst $38

jr_008_7232:
    ld hl, sp-$13

jr_008_7234:
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

jr_008_726c:
    db $e3
    ld d, e
    inc sp
    rlca
    jr nc, jr_008_7232

    jr nc, jr_008_7234

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
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a
    db $ec
    inc bc
    add sp, -$2a
    or d
    push hl
    ld b, c
    ld h, c
    add c
    add b
    add b
    or c
    db $e4
    ld de, $3031
    jr nc, jr_008_726c

    or l
    ld b, a
    rst $38
    ld hl, sp-$14
    ld [bc], a
    sub $c2
    db $e4
    add c
    add b
    add b
    ld b, c
    ld b, b
    ld b, b
    or c
    or b
    or b
    sub c
    sub b
    sub b
    sub $c5
    add a
    rst $38
    ld hl, sp-$2a
    db $10
    db $e4
    or c
    pop bc
    db $e3
    ld de, $31c1
    pop bc
    ld h, c
    ld [hl], c
    add e
    rst $38
    db $ed
    nop
    ldh [$f0], a
    ld [hl], a
    db $ec
    ld [bc], a
    add sp, -$13
    nop
    ldh [$d4], a
    and d
    db $e4
    ld hl, $00ed
    ldh [$d4], a
    and d
    ld hl, $2121
    push hl
    sub c
    db $e4
    ld hl, $b3d4
    ld l, e
    db $ec
    ld bc, $00ed
    ldh [$d4], a
    ld h, e
    push hl
    sub l
    ld h, d
    sub d
    or l
    add d
    or d
    db $e4
    ld [de], a
    push hl
    or d
    sub d
    ld [hl], d
    sub d
    or d
    sub d
    ld [hl], d
    sub l
    ld h, d
    sub d
    or l
    add d
    or d
    db $e4
    ld [de], a
    ld [hl+], a
    ld b, d
    ld h, d
    ld [de], a
    push hl
    or d
    sub d
    db $e4
    ld [de], a
    push hl
    sub l
    ld h, d
    sub d
    or l
    add d
    or d
    db $e4
    dec b
    push hl
    sub d
    db $e4
    ld [bc], a
    ld [hl+], a
    push hl
    or d
    db $e4
    dec h
    ld [de], a
    push hl
    or d
    sub d
    ld [hl], d
    ld h, d
    ld [hl], d
    sub d
    or d
    sub d
    ld [hl], d
    ld h, d
    ld b, d
    ld h, d
    ld [hl], d
    sub d
    or d
    cp $00
    pop hl
    ld [hl], d
    db $ec
    ld [bc], a
    call nc, $e4c3
    sub c
    call nc, $91c3
    sub c
    sub c
    or c
    db $e3
    ld de, $c4d4
    dec hl
    call nc, $e485
    dec h
    push hl
    sub d
    db $e4
    ld [hl+], a
    ld b, l
    push hl
    or d
    db $e4
    ld b, d
    ld h, d
    ld [hl], d
    sub l
    ld b, d
    ld h, d
    ld [hl], l
    dec h
    push hl
    sub d
    db $e4
    ld [hl+], a
    ld b, l
    push hl
    or d
    db $e4
    ld b, d
    ld h, d
    ld [hl], d
    sub l
    ld h, d
    ld [hl], d
    sub l
    dec h
    push hl
    sub d
    db $e4
    ld [hl+], a
    ld b, l
    push hl
    or d
    db $e4
    ld b, d
    ld d, l
    ld [bc], a
    ld d, d
    ld [hl], d
    ld [hl+], a
    ld [hl], l
    call nc, $6b70
    call nc, Call_008_6b77
    call nc, Call_008_4b60
    call nc, $4b67
    cp $00
    dec a
    ld [hl], e
    call nc, $e310
    ld hl, $10d4
    ld hl, $e421
    or c
    sub c
    ld [hl], c
    sbc e
    call nc, Call_008_6221
    jp nz, $c262

    add d
    jp nz, $c282

    sub d
    jp nz, $c292

    or d
    jp nz, $c2b2

    ld h, d
    jp nz, $c262

    add d
    jp nz, $c282

    sub d
    jp nz, $c292

    db $e3
    ld [de], a
    jp nz, $e412

    sub d
    ld h, d
    db $e3

Call_008_73b3:
    ld [hl+], a
    db $e4
    ld h, d
    jp nz, $e382

    ld b, d
    db $e4
    add d
    jp nz, $e392

    ld d, d
    db $e4
    sub d
    jp nz, $e3b2

Call_008_73c5:
    ld [hl], d
    db $e4
    or d
    and d
    sub d
    jp nz, $c292

    sub d
    jp nz, $e392

    ld [bc], a
    ld [de], a
    jp nz, $c212

    ld [de], a
    jp nz, $e412

    sub d
    cp $00
    adc a
    ld [hl], e
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    ld hl, sp-$14
    inc bc
    ld [$3406], a
    add sp, -$13
    nop
    ld [hl], b
    call c, $e5b7
    or b
    sub b
    add b
    ld h, b
    ld c, e
    call c, Call_008_4162
    ld h, c
    ld b, c
    ld h, c
    add c
    add c
    add e
    sub c
    sub c
    sub e
    add c
    add c
    add e
    ld b, c
    ld h, c
    ld b, c
    ld h, c
    add c
    add c
    add e
    sub c
    sub c
    sub e
    add a
    ld d, c
    ld [hl], c
    ld d, c
    ld [hl], c
    sub c
    sub c
    sub e
    and c
    and c
    and e
    sub c
    sub c
    sub e
    ld d, c
    ld [hl], c
    ld d, c
    ld [hl], c
    sub c
    sub c
    sub e
    and c
    and c
    and e
    sub a
    cp $00
    or $73
    ld hl, sp-$14
    ld [bc], a
    call c, $e4c3
    ld b, b
    ld h, b
    add b
    sub b
    call c, $bbc7
    call c, $e582
    or c
    sub c
    add c
    sub c
    or c
    or c
    or e
    db $e4
    ld de, $1311
    push hl

jr_008_7448:
    or c
    or c
    or e
    or c
    sub c
    add c
    sub c
    or c
    or c
    or e
    db $e4
    ld de, $1311
    push hl
    or a
    db $e4
    ld bc, $a1e5
    sub c
    and c
    db $e4
    ld bc, $0301
    ld hl, $2321
    ld bc, $0301
    ld bc, $a1e5
    sub c

jr_008_746c:
    and c
    db $e4
    ld bc, $0301
    ld hl, $2321
    rlca
    cp $00
    add hl, sp
    ld [hl], h
    ld hl, sp-$24
    jr nz, @-$1b

    ld b, b
    ret nz

    ld [c], a
    db $10
    ret nz

    db $e3
    or b
    ret nz

    ld [c], a
    jr nc, jr_008_7448

    ld b, b
    jp nz, $c240

    db $e4
    ld b, b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    ld b, b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    ld b, b
    jp nz, Jump_008_40e3

    jp nz, $60e4

    ret nz

    db $e3
    ld h, b
    ret nz

    db $e4
    ld h, b
    jp nz, $c060

    db $e3
    jr nc, jr_008_746c

    db $e4
    ld h, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    ld b, b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    ld b, b
    jp nz, Jump_008_40e3

    jp nz, $60e4

    ret nz

    db $e3
    ld h, b
    ret nz

    db $e4
    ld h, b
    jp nz, Jump_008_40e3

    jp nz, $33e4

    db $e4
    ld d, b
    ret nz

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    ret nz

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    jp nz, Jump_008_50e3

    jp nz, Jump_008_70e4

    ret nz

    db $e3
    ld [hl], b
    ret nz

    db $e4
    ld [hl], b
    jp nz, $c050

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    ret nz

    db $e3
    ld d, b
    ret nz

    db $e4
    ld d, b
    jp nz, Jump_008_50e3

    jp nz, Jump_008_70e4

    ret nz

    db $e3
    ld [hl], b
    ret nz

    db $e4
    ld [hl], b
    jp nz, Jump_008_50e3

    jp nz, $33e4

    cp $00
    adc h
    ld [hl], h
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3112], a
    add sp, -$13
    nop
    ld [hl], b
    call c, $e4a6
    dec h
    push hl
    sub b
    db $e4
    jr nz, jr_008_7594

    jr nz, jr_008_7591

    call c, $97a0
    call c, $97a7
    call c, $e5b2
    sub c
    sub c
    ld h, e
    ld [hl], c
    ld [hl], c
    ld b, e
    ld hl, $2141
    ld b, c
    inc hl
    inc hl
    sub c
    sub c
    ld h, e
    ld [hl], c
    ld [hl], c
    ld b, e
    ld hl, $2141
    ld de, $b1dc
    and $b7
    call c, $e5b2
    sub c
    sub c
    ld h, e
    ld [hl], c
    ld [hl], c
    ld b, e
    ld hl, $2141
    ld b, c
    inc hl
    inc hl
    sub c
    sub c
    ld h, e
    ld [hl], c
    ld [hl], c
    ld b, e
    ld hl, $2141
    ld de, $b1dc
    and $b7
    call c, $e597
    dec h
    and $90
    push hl
    jr nz, jr_008_75e1

    call c, $65b0
    ld b, b
    ld h, b
    sub a
    call c, Call_008_4597
    db $10
    ld b, b
    add a
    call c, $85b0
    ld b, b
    add b
    or a
    call c, Call_000_1597
    and $90

jr_008_7591:
    push hl
    db $10
    ld b, a

jr_008_7594:
    call c, Call_008_45b0
    db $10
    ld b, b
    ld b, e
    ld [hl], e
    call c, Call_008_6790
    ld b, a
    daa
    rla
    call c, $2597
    and $90
    push hl
    jr nz, jr_008_7610

    call c, $65b0
    ld b, b
    ld h, b
    sub a
    call c, Call_008_4597
    db $10
    ld b, b
    add a
    call c, $85b0
    ld b, b
    add b
    or a
    call c, Call_000_1597
    and $90
    push hl
    db $10

Call_008_75c2:
    ld b, a
    call c, Call_008_45b0

jr_008_75c6:
    db $10
    ld b, b
    ld b, e
    ld [hl], e
    call c, Call_008_6597
    ld b, b
    ld h, b
    sub a
    call c, $77a7
    ld b, a
    cp $00
    scf
    ld [hl], l
    db $ec
    ld [bc], a
    ld [$2418], a
    call c, $e4c4
    sub l

jr_008_75e1:
    ld h, b
    sub b
    db $e3
    dec h
    db $e4
    sub b
    db $e3
    jr nz, jr_008_75c6

    or b
    ld h, a
    call c, Call_008_67b7
    call c, $e4c2
    ld hl, $e511
    or e
    db $e4
    ld de, $b1e5
    sub e
    or c
    sub c
    ld [hl], c
    ld h, c
    call c, $93c4
    sub e
    call c, $e4c2
    ld hl, $e511
    or e
    db $e4
    ld de, $b1e5
    sub e
    or c

jr_008_7610:
    sub c
    ld [hl], c
    ld h, c
    call c, Call_000_25c1
    sub $c2
    ld [hl], b
    sub b
    or b
    db $e4
    db $10
    call c, Call_000_21c2
    ld de, $b3e5
    db $e4
    ld de, $b1e5
    sub e
    or c
    sub c
    ld [hl], c
    ld h, c
    call c, $93c4
    sub d
    sub $c2
    or b
    db $e4
    db $10
    call c, Call_000_21c2
    ld de, $b3e5
    db $e4
    ld de, $b1e5
    sub e
    or c
    sub c
    ld [hl], c
    ld h, c
    call c, Call_000_27c1
    call c, $95c7
    ld h, b
    sub b
    call c, $e4b0
    daa
    call c, $27a0
    call c, $2797
    call c, $e5c7
    or l
    add b
    or b
    call c, $e480
    ld b, a
    call c, Call_008_47a0
    call c, Call_008_47c7
    push hl
    ld [hl], l
    ld b, b
    ld [hl], b
    call c, $e46f
    rla
    call c, Call_000_17c7
    ld h, e
    ld b, e
    call c, $2db0
    push hl
    or c
    call c, $97a0
    call c, $97b7
    call c, $95c7
    ld h, b
    sub b
    call c, $e4b0
    daa
    call c, $27a0
    call c, $2797
    call c, $e5c7
    or l
    add b
    or b
    call c, $e44f
    ld b, a
    call c, Call_008_47b0
    call c, Call_008_47c7
    push hl
    ld [hl], l
    ld b, b
    ld [hl], b
    call c, $e4b0
    rla
    call c, Call_000_17b7
    push hl
    sub e
    db $e4
    inc de
    call c, $2db0
    ld b, c
    dec hl
    call c, $e5c2
    ld [hl], b
    sub b
    or b
    db $e4
    db $10
    cp $00
    rst $28
    ld [hl], l
    call c, $ea10
    db $10
    ld [de], a
    db $e4

jr_008_76c3:
    ld h, l
    jr nz, @+$62

    sub l

jr_008_76c7:
    ld h, b
    sub b
    db $e3
    dec h

jr_008_76cb:
    db $e4
    sub b
    db $e3
    jr nz, jr_008_7737

    db $e4
    ld h, b
    ret nz

jr_008_76d3:
    ld h, b
    ret nz

    ld h, b
    jp nz, $c070

    ld [hl], b
    ret nz

jr_008_76db:
    ld [hl], b
    jp nz, $c090

    sub b
    ret nz

    sub b
    ret nz

jr_008_76e3:
    ld [hl], b
    ret nz

    ld h, d
    ret nz

jr_008_76e7:
    ld h, d
    ret nz

    ld h, b
    ret nz

jr_008_76eb:
    ld h, b
    ret nz

    ld h, b
    jp nz, $c070

    ld [hl], b
    ret nz

jr_008_76f3:
    ld b, b
    ret nz

    ld b, b
    ret nz

jr_008_76f7:
    ld h, b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, @-$3a

    jr nz, jr_008_76c3

    ld h, b
    ret nz

    jr nz, jr_008_76c7

    ld h, b
    ret nz

    jr nz, jr_008_76cb

    ld [hl], b
    ret nz

    jr nz, @-$3e

    ld [hl], b
    ret nz

    jr nz, jr_008_76d3

    sub b
    ret nz

    jr nz, @-$3e

    sub b
    ret nz

    jr nz, jr_008_76db

    ld [hl], d
    ret nz

    ld [hl+], a
    ret nz

    ld h, b
    ret nz

    jr nz, jr_008_76e3

    ld h, b
    ret nz

    jr nz, jr_008_76e7

    ld [hl], b
    ret nz

    jr nz, jr_008_76eb

    ld [hl], b
    ret nz

    jr nz, @-$3e

    sub b
    ret nz

    jr nz, jr_008_76f3

    ld [hl], b
    ret nz

    jr nz, jr_008_76f7

jr_008_7737:
    ld h, b
    add $21
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $8191
    ld h, c
    ld b, c
    ld sp, $b141
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2111
    ld b, c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    add c
    ld h, c
    ld b, c
    ld sp, $b141
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld de, $1191
    sub c
    ld de, $1191

Call_008_77a0:
    sub c
    ld de, $1191
    sub c
    ld de, $1191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld [hl], c
    sub c
    ld [hl], c
    ld b, c
    cp $00
    ret nc

    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_7f3f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_7f4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_7f60:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_7fc0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_008_7fc7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
