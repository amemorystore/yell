; disasSembly of "yell.gbc"
SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

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

Call_002_4012:
    rlca
    jr nz, jr_002_4058

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
    dec h
    ld c, c
    dec b

Jump_002_4040:
    inc [hl]
    ld c, c
    rlca
    ld b, e
    ld c, c
    add h
    dec [hl]
    ld c, e
    dec b
    ld c, b
    ld c, e
    rlca
    ld e, e
    ld c, e
    add h
    xor d
    ld c, d
    dec b
    cp c
    ld c, d
    rlca
    rst $00
    ld c, d
    add h

jr_002_4058:
    ld b, h
    ld c, b
    dec b
    ld h, e
    ld c, b
    rlca
    add d
    ld c, b
    add h
    di
    ld c, e
    dec b
    ld [de], a
    ld c, h
    rlca
    ld sp, $844c
    db $d3
    ld c, c
    dec b
    and $49
    rlca
    ld hl, sp+$49
    add h
    ld a, l
    ld c, c
    dec b
    sub a
    ld c, c
    rlca
    sbc b
    ld c, c
    add h
    xor e
    ld c, c
    dec b
    cp d
    ld c, c

Call_002_4081:
    rlca
    ret


    ld c, c
    add h
    jp $054b


    sub $4b
    rlca
    jp hl


    ld c, e
    add h
    call $0546
    ld [$0746], a
    dec bc
    ld b, a
    add h
    ld l, b
    ld c, e
    dec b
    add a
    ld c, e
    rlca
    xor d
    ld c, e
    add h
    ld sp, hl
    ld c, c
    dec b
    inc h
    ld c, d
    rlca
    ld b, e
    ld c, d
    add h
    ld e, h
    ld c, d
    dec b
    add e
    ld c, d
    rlca
    xor c
    ld c, d
    add h
    ret z

    ld c, d
    dec b

Call_002_40b5:
    rst $20
    ld c, d

Call_002_40b7:
    rlca
    ld d, $4b
    add h
    ld c, l
    ld c, c
    dec b
    ld h, b
    ld c, c
    rlca
    ld [hl], e

Call_002_40c2:
    ld c, c
    add h
    adc a
    ld c, b
    dec b

Call_002_40c7:
    xor d
    ld c, b
    rlca
    push bc
    ld c, b
    add h
    push de
    ld c, b
    dec b
    ld hl, sp+$48
    rlca
    dec de
    ld c, c
    add h
    or c
    ld b, a
    dec b
    ret nc

    ld b, a
    rlca
    di
    ld b, a
    add h
    ret


    ld c, h
    dec b

Jump_002_40e2:
    call c, $074c
    rst $28
    ld c, h
    add h
    db $fc
    ld c, h
    dec b
    rla
    ld c, l
    rlca
    ld [hl-], a
    ld c, l
    add h
    ld b, l
    ld c, l
    dec b
    ld d, h
    ld c, l
    rlca
    ld h, e
    ld c, l
    add h
    db $d3
    ld c, l
    dec b
    xor $4d
    rlca
    add hl, bc
    ld c, [hl]
    add h
    ld h, [hl]
    ld c, h
    dec b
    ld [hl], l
    ld c, h
    rlca
    add h
    ld c, h
    add h
    inc e
    ld c, [hl]
    dec b
    cpl
    ld c, [hl]

Jump_002_4111:
    rlca
    ld b, d
    ld c, [hl]
    add h
    inc l
    ld c, a
    dec b
    ld c, a
    ld c, a
    rlca
    ld [hl], d
    ld c, a
    add h
    ld b, h
    ld c, h
    dec b
    ld d, e
    ld c, h
    rlca
    ld h, l
    ld c, h
    add h
    sbc l
    ld c, [hl]
    dec b
    cp b
    ld c, [hl]
    rlca
    db $d3
    ld c, [hl]
    add h
    adc [hl]
    ld c, h
    dec b
    and l
    ld c, h
    rlca
    cp h
    ld c, h
    add h
    ld c, a
    ld c, [hl]
    dec b
    ld [hl], d
    ld c, [hl]
    rlca
    adc l
    ld c, [hl]
    add h
    and $4e
    dec b
    ld bc, $074f
    inc e
    ld c, a
    add h
    ld l, l
    ld c, l
    dec b
    sub b
    ld c, l
    rlca
    or a
    ld c, l
    add h
    add l
    ld c, a
    dec b
    sbc b
    ld c, a
    rlca
    xor e
    ld c, a
    add h
    cp b
    ld c, a
    dec b
    bit 1, a
    rlca
    sbc $4f
    add h
    db $eb
    ld c, a
    dec b
    ld c, $50
    rlca
    jr nc, jr_002_41be

    add h
    ld sp, $0550
    ld b, h
    ld d, b
    rlca
    ld d, a
    ld d, b
    add h
    inc h
    ld b, a
    dec b
    dec sp
    ld b, a
    rlca
    ld c, [hl]
    ld b, a
    add h
    ld e, e
    ld b, a
    dec b
    ld a, [hl]
    ld b, a
    rlca
    and c
    ld b, a
    add h
    add hl, bc
    ld c, b
    dec b
    jr nz, jr_002_41d7

    rlca
    scf
    ld c, b
    add h
    ld c, d
    ld l, h
    dec b
    ld h, c
    ld l, h
    ld b, $71
    ld l, h
    add h
    jp hl


    ld [hl], c
    dec b
    ld [$0672], sp
    jr nz, jr_002_4216

    inc b
    xor b
    ld b, e
    inc b
    ld d, l
    ld b, h
    inc b
    ld [hl], a
    ld b, h
    rlca
    ld h, c
    ld b, e
    inc b
    nop
    ld b, h

Call_002_41b3:
    add h
    sbc e
    ld [hl], c
    dec b
    or h
    ld [hl], c
    ld b, $ca
    ld [hl], c
    add h
    dec [hl]

jr_002_41be:
    ld [hl], d
    dec b
    ld d, h
    ld [hl], d
    ld b, $70
    ld [hl], d
    inc b
    ld h, h
    ld b, h
    inc b
    adc h
    ld b, h
    inc b
    sbc e
    ld b, h
    inc b
    add $44
    inc b
    reti


    ld b, h
    inc b
    db $ec
    ld b, h

jr_002_41d7:
    inc b
    rlca
    ld b, l
    inc b
    ld e, $45
    inc b
    inc sp
    ld b, l
    inc b
    ld c, [hl]
    ld b, l

Jump_002_41e3:
    inc b
    ld l, c
    ld b, l
    inc b
    ld [hl], h
    ld b, l
    rlca
    ld a, a
    ld b, l
    rlca
    adc h
    ld b, l
    ld b, h
    cp l
    ld b, l
    dec b
    call nc, $0445
    rst $20
    ld b, l
    rlca
    ld a, [c]
    ld b, l
    ld b, h
    dec bc
    ld b, [hl]
    dec b
    ld a, [hl+]
    ld b, [hl]
    inc b
    ld c, c
    ld b, [hl]
    rlca
    ld a, a
    ld b, e
    rlca
    adc a
    ld b, e
    ld b, h
    sub [hl]
    ld b, e
    dec b
    sbc l
    ld b, e
    ld b, h
    cp c
    ld b, e
    dec b
    ret nz

    ld b, e

jr_002_4216:
    ld b, h
    bit 0, e
    dec b
    sub $43
    inc b
    push hl
    ld b, e
    rlca
    ldh a, [rSCX]
    ld b, h
    inc de
    ld b, h
    dec b
    ld [hl-], a
    ld b, h
    ld [bc], a
    ld l, b
    ld b, e
    inc b
    ld h, [hl]
    ld b, [hl]
    add b
    sbc b
    ld h, [hl]
    ld bc, $6732
    ld [bc], a
    or c
    ld h, a
    add b
    add hl, hl
    ld a, l
    ld bc, $7dcc
    ld [bc], a
    ld b, e
    ld a, [hl]
    add b
    adc [hl]
    ld a, e
    ld bc, $7c3e
    ld [bc], a
    call $c07c
    ld c, c
    ld l, c
    ld bc, $6a65
    ld [bc], a
    dec b
    ld l, e
    inc bc
    jp nz, $806b

    rst $10
    ld [hl], e
    ld bc, $743c
    ld [bc], a
    inc de
    ld [hl], l
    add b
    sbc d
    ld [hl], l
    ld bc, $760d
    ld [bc], a
    adc b
    db $76
    add b
    ld b, b
    ld [hl], a
    ld bc, $77a7
    ld [bc], a
    db $10
    ld a, b
    ret nz

    cp [hl]
    ld a, b
    ld bc, $7934
    ld [bc], a
    ld a, c
    ld a, c
    inc bc
    ldh [$79], a
    ret nz

    dec hl
    ld a, d
    ld bc, $7a71
    ld [bc], a
    add c
    ld a, d
    inc bc
    db $f4
    ld a, d
    add b
    ld a, d
    ld [hl], d
    ld bc, $72ec
    ld [bc], a
    sbc [hl]
    ld [hl], e
    add b
    inc l
    ld l, [hl]
    ld bc, $6e7c
    ld [bc], a
    db $10
    ld l, a
    add b
    di
    ld l, a
    ld bc, $708e
    ld [bc], a
    ld b, $71
    ret nz

    add c
    ld l, h
    ld bc, $6cc4
    ld [bc], a
    ld b, c
    ld l, l
    inc bc
    and h

jr_002_42ae:
    ld l, l
    add b
    ld bc, $017b

jr_002_42b3:
    dec a

jr_002_42b4:
    ld a, e
    ld [bc], a
    ld h, a

jr_002_42b7:
    ld a, e
    add b
    db $76
    ld e, d

jr_002_42bb:
    ld bc, $5a97
    ld [bc], a
    and l

jr_002_42c0:
    ld e, d
    ret nz

    or c
    ld e, d
    ld bc, $5b24
    ld [bc], a
    xor e
    ld e, e
    inc bc
    rst $30
    ld e, e
    ret nz

    adc h
    ld e, h
    ld bc, $5d22
    ld [bc], a
    ld l, [hl]
    ld e, l
    inc bc
    db $db
    ld e, l
    ret nz

    add b
    ld e, [hl]
    ld bc, $5edc
    ld [bc], a
    ld d, d
    ld e, a
    inc bc

jr_002_42e3:
    inc b
    ld h, b
    ret nz

    dec a
    ld h, c

jr_002_42e8:
    ld bc, $61d7
    ld [bc], a
    sub a
    ld h, d
    inc bc
    ld [hl], b
    ld h, e
    ret nz

    jp $0164


    scf
    ld h, l
    ld [bc], a
    adc l
    ld h, l
    inc bc
    ld [c], a
    ld h, l
    jr nz, jr_002_42c0

    inc sp
    rst $38
    jr nz, jr_002_42b4

    inc sp
    rst $38
    jr nz, @-$5d

    inc sp
    rst $38
    jr nz, @-$7d

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
    jr nz, jr_002_4373

    ld a, [hl+]

Jump_002_4323:
    rst $38
    ld hl, $2b41
    jr nz, jr_002_438a

    ld a, [hl+]
    rst $38
    jr nz, jr_002_42ae

    db $10
    rst $38
    jr nz, jr_002_42b3

    inc hl
    rst $38
    jr nz, jr_002_42b7

    dec h
    rst $38
    jr nz, jr_002_42bb

    ld h, $ff
    jr nz, @-$5d

    db $10
    rst $38
    jr nz, jr_002_42e3

    ld de, $20ff
    and d
    ld d, b
    rst $38

jr_002_4347:
    jr nz, @-$5d

    jr jr_002_436b

    ld sp, $ff33
    ld [hl+], a
    sub c
    jr z, jr_002_4372

    ld [hl], c
    jr @+$01

    jr nz, jr_002_42e8

    ld [hl+], a
    rst $38
    jr nz, jr_002_43cc

    ld [hl+], a
    rst $38
    jr nz, jr_002_43c0

    ld [hl+], a
    rst $38
    ld hl, $33e2
    jr z, jr_002_4347

    ld [hl+], a
    rst $38
    ld [$1410], a

jr_002_436b:
    call c, $e310
    ld b, c
    ld d, c
    ld [hl], e
    sub c

jr_002_4372:
    ld [hl], c

jr_002_4373:
    ld [c], a
    inc bc
    ld bc, $0121
    db $e3
    ld [hl], c
    sub c

jr_002_437b:
    ld d, c
    ld [hl], a
    set 7, a
    ld [hl+], a
    rst $30
    inc h
    ld [hl+], a
    rst $30
    inc [hl]
    inc h
    rst $30
    ld b, h
    jr z, @-$0a

jr_002_438a:
    ld d, l
    jr z, @-$0d

    ld b, h
    rst $38
    add hl, hl
    pop af
    ld b, h
    jr z, @-$2d

    ld b, e

jr_002_4395:
    rst $38

jr_002_4396:
    db $ec
    ld [bc], a
    jr z, jr_002_437b

    ld b, b
    rlca
    rst $38

jr_002_439d:
    db $ec
    ld [bc], a
    ld [hl+], a
    ld [$0000], sp
    jr z, @-$4d

    ld b, c
    rlca
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
    jr z, jr_002_4396

    nop

Call_002_43b5:
    ld [bc], a
    db $10
    ld [$ecff], sp
    ld [bc], a
    inc h
    pop af
    add b
    rlca
    rst $38

jr_002_43c0:
    db $ec
    ld [bc], a
    ld hl, $0008

jr_002_43c5:
    nop
    inc h
    and c
    ld h, c
    rlca
    rst $38
    db $ec

jr_002_43cc:
    ld [bc], a
    inc h
    pop hl
    nop
    rlca
    jr z, jr_002_43c5

    ldh [rTAC], a
    rst $38
    db $ec
    ld [bc], a
    ld hl, $0008
    nop
    inc h
    sub c
    pop bc
    ld b, $28
    and d
    and c

Call_002_43e3:
    rlca
    rst $38
    db $ec
    ld [bc], a
    db $10
    ld e, d
    cpl
    pop af
    nop
    inc bc
    db $10
    ld [$22ff], sp
    pop af
    ld d, h
    inc l
    ld [hl], c
    inc hl
    ld [hl+], a
    or c
    ld d, h
    inc l
    ld h, c
    inc hl
    ld h, $41
    ld d, h
    rst $38
    db $ec
    ld [bc], a
    jr nz, jr_002_4395

    ret nz

    rlca
    jr nz, @-$7d

    ret nc

    rlca
    jr nz, jr_002_439d

    ret nz

    rlca
    inc l
    and c
    ret nc

    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    db $f4
    nop
    rlca
    ld [hl+], a
    db $e4
    nop
    ld b, $22
    db $e4
    add b
    ld b, $22
    db $e4
    ret nz

    ld b, $22
    db $e4
    nop
    rlca
    ld [hl+], a
    db $e4
    and b
    rlca
    cpl
    ld a, [c]
    ldh [rTAC], a
    rst $38
    db $ec
    ld [bc], a
    inc h
    ld [$0000], sp
    ld [hl+], a
    call nc, Call_000_0701
    ld [hl+], a
    call nz, Call_000_0601
    ld [hl+], a
    call nz, $0681
    ld [hl+], a
    call nz, Call_000_06c1
    ld [hl+], a
    call nz, Call_000_0701
    ld [hl+], a
    call nz, Call_000_07a1
    cpl
    jp nc, $07e1

    rst $38
    db $ec
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
    nop
    db $10
    inc d
    inc h
    ld a, [c]
    nop
    ld b, $fe
    inc b
    ld h, h
    ld b, h
    cpl
    di
    nop
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
    ld [bc], a
    db $10
    dec d
    cpl
    ldh a, [$f0]
    inc b
    cpl
    ld a, [c]
    ld d, b
    ld b, $10
    ld [$ecff], sp
    ld [bc], a
    cpl
    ld a, [c]
    ret nz

    rlca
    cpl
    nop
    nop
    nop
    inc hl
    and c
    add b
    rlca
    inc hl
    and c
    nop
    rlca
    inc hl
    and c
    ld b, b
    rlca
    inc hl
    and c
    nop
    rlca
    inc hl
    and c
    add b
    rlca
    inc hl
    and c
    nop
    rlca
    inc hl
    and c
    ret nz

    rlca
    jr z, @-$5d

    nop
    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    ldh a, [rP1]
    ld b, $24
    ldh a, [rP1]
    inc b
    inc h
    ldh a, [rP1]
    ld [bc], a
    ld hl, $0000
    nop
    rst $38
    db $ec
    ld [bc], a
    ld h, $f0
    nop
    rlca
    inc h
    nop
    nop
    nop
    ld h, $f0
    nop
    rlca
    ld hl, $0000
    nop
    rst $38
    db $ec
    ld bc, $1710
    cpl
    rst $10
    nop
    ld b, $2f
    or a
    add b
    dec b
    cpl
    add a
    nop
    dec b
    cpl
    ld b, a
    add b
    inc b
    cpl
    rla
    nop
    inc b
    db $10
    ld [$ecff], sp
    ld [bc], a
    inc h
    nop
    nop
    nop
    ld [hl+], a
    pop af
    add b
    ld b, $21
    nop
    nop
    nop
    inc h
    pop af
    add b
    rlca
    inc h
    nop
    nop
    nop
    rst $38
    db $ec
    ld [bc], a
    db $10
    inc l
    inc h
    ld a, [c]
    nop
    dec b
    db $10
    ld [hl+], a
    ld [hl+], a
    pop af
    nop
    dec b
    db $10
    ld [$0021], sp
    nop
    nop
    rst $38
    db $ec
    ld bc, $1710
    cpl
    rst $10
    nop
    dec b
    cpl
    or a
    add b
    dec b
    cpl
    add a
    nop
    ld b, $2f
    ld b, a
    add b
    ld b, $2f
    rla
    nop
    rlca
    db $10
    ld [$ecff], sp
    ld bc, $1710
    cpl
    rst $10
    nop
    rlca
    cpl
    or a
    add b
    ld b, $2f
    add a
    nop
    ld b, $2f
    ld b, a
    add b
    dec b
    cpl
    rla
    nop
    dec b
    db $10
    ld [$ecff], sp
    ld bc, $1610
    cpl
    jp nc, Jump_000_0500

    db $10
    ld [$ecff], sp
    ld [bc], a
    db $10
    sub l
    cpl
    ld a, [c]
    nop
    inc b
    db $10
    ld [$22ff], sp
    pop af
    ld [hl-], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    pop af
    ld [hl+], a
    ld hl, $0000
    rst $38
    ld [hl+], a
    pop af
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    and c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    pop de
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    add c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    or c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    ld h, c
    ld [de], a
    ld [hl+], a
    nop
    nop
    ld [hl+], a
    sub c
    ld [de], a
    ld [hl+], a
    nop

Call_002_45b5:
    nop
    ld [hl+], a
    ld b, c
    ld [de], a
    ld [hl+], a
    nop
    nop
    rst $38
    db $ec
    inc bc
    db $10
    ld e, d
    inc h

Call_002_45c2:
    ldh a, [rP1]

Call_002_45c4:
    dec b
    db $10
    ld [$0024], sp
    nop
    nop
    cpl
    ldh a, [rP1]
    dec b
    ld hl, $0000
    nop
    rst $38
    db $ec
    inc bc
    inc h
    ldh a, [rSB]
    inc b
    inc h
    nop
    nop
    nop
    cpl
    ldh a, [rSB]
    inc b
    ld hl, $0000
    nop
    rst $38
    db $ec

jr_002_45e8:
    nop
    db $10
    rla
    cpl
    jp nc, $0700

    db $10
    ld [$24ff], sp
    and d
    inc hl
    jr z, jr_002_45e8

    inc [hl]
    cpl
    nop

jr_002_45fa:
    nop
    ld [hl+], a
    rst $30
    inc h
    ld [hl+], a
    rst $30
    inc [hl]
    inc h
    rst $30
    ld b, h
    jr z, jr_002_45fa

    ld d, l
    jr z, jr_002_45fa

    ld b, h
    rst $38
    db $ec
    ld [bc], a
    cpl
    ldh a, [rP1]
    dec b
    inc h
    nop
    nop
    nop
    cpl
    ldh a, [rP1]
    dec b
    cpl
    ldh a, [rP1]
    dec b
    cpl
    ldh a, [rP1]
    dec b
    cpl
    ldh a, [rP1]
    dec b
    cpl
    ld a, [c]
    nop
    dec b
    rst $38
    db $ec
    inc bc
    cpl
    ldh a, [$82]
    inc b
    inc h
    nop
    nop
    nop
    cpl
    ldh a, [$82]
    inc b
    cpl
    ldh a, [$82]
    inc b
    cpl
    ldh a, [$82]
    inc b
    cpl
    ldh a, [$82]
    inc b
    cpl
    ld a, [c]
    add d
    inc b
    rst $38
    db $ec
    ld bc, $3a10
    inc h
    ld a, [c]
    nop
    dec b
    db $10
    ld [hl+], a
    inc h
    ld [c], a
    nop
    dec b
    db $10
    ld a, [hl-]
    inc h
    ld a, [c]
    nop
    rlca
    db $10
    ld [hl+], a
    cpl
    ld [c], a
    nop
    rlca
    db $10
    ld [$ecff], sp
    ld [bc], a
    cpl
    di
    jr nc, jr_002_4673

    jr z, jr_002_46d3

    jr nc, jr_002_4677

    cpl
    db $f4
    nop

jr_002_4673:
    rlca
    cpl
    ld [hl], h
    nop

jr_002_4677:
    rlca
    cpl
    ld b, h
    nop
    rlca
    cpl
    inc h
    nop
    rlca
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
    jr z, jr_002_46e5

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

jr_002_46d2:
    rlca

jr_002_46d3:
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

jr_002_46e3:
    rst $10
    rlca

jr_002_46e5:
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

jr_002_471a:
    jr z, jr_002_46d2

    inc a
    ld h, $d4
    dec a
    jr z, jr_002_46e3

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
    jr z, jr_002_471a

    inc l
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    add b
    ld b, $2a

jr_002_4762:
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

jr_002_477e:
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

    jr z, jr_002_477e

    jr nc, jr_002_47d6

    rst $38
    db $fc
    ld a, [bc]
    inc h

jr_002_47d3:
    ld [$0000], sp

jr_002_47d6:
    ld h, $a7
    ld b, c
    rlca
    jr z, jr_002_4762

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

jr_002_480f:
    cpl
    db $e3
    jr nc, jr_002_481a

    inc h
    db $f4
    ld b, b
    rlca
    dec h
    or e
    ld c, b

jr_002_481a:
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
    jr z, jr_002_480f

    inc l
    inc l
    add $3c
    ld a, [hl+]
    or [hl]
    inc l

jr_002_4840:
    jr z, jr_002_47d3

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
    jr z, jr_002_4840

    add d
    inc b
    rst $38
    inc l
    db $e4
    ld c, h
    ld a, [hl+]
    rst $00

jr_002_4887:
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

jr_002_48c2:
    ld [bc], a
    ld b, $ff
    inc hl
    db $e4
    inc a
    inc l
    sub $2c
    inc h

jr_002_48cc:
    db $e4
    inc a
    jr z, jr_002_4887

jr_002_48d0:
    ld e, h
    cpl
    jp nz, $ff5d

    db $fc
    ret


    jr z, jr_002_48d0

    add b
    ld b, $22
    rst $30
    ld h, b
    ld b, $21
    rst $20
    ld b, b
    ld b, $21
    rst $20
    jr nz, jr_002_48ed

    cpl
    pop de
    nop
    ld b, $24
    rst $00

jr_002_48ed:
    ld b, b
    rlca
    inc h
    and a
    jr nc, jr_002_48fa

    cpl
    sub c
    jr nz, @+$09

    rst $38
    db $fc
    ld a, c

jr_002_48fa:
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
    jr jr_002_4932

    cpl
    push hl
    sbc b
    rlca
    jr z, jr_002_48c2

    ld e, b

jr_002_4932:
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

jr_002_493e:
    jr z, jr_002_49b1

    ld c, b
    rlca
    rst $38
    inc hl
    and c
    inc e
    ld l, $94
    inc l
    jr z, jr_002_48cc

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
    jr z, jr_002_493e

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

jr_002_4977:
    ld h, c
    ld hl, $6128
    ld de, $fcff
    ld a, [$8326]
    ld b, a

jr_002_4982:
    ld [bc], a
    cpl

jr_002_4984:
    ld h, d
    ld h, $02

jr_002_4987:
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
    jr z, jr_002_4987

    xor h
    cpl
    rst $10
    sbc h

Call_002_49a7:
    cpl
    ld a, [c]
    xor h
    rst $38
    db $fc
    ldh a, [rNR50]
    di
    ldh [rTMA], a

jr_002_49b1:
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
    jr z, jr_002_4982

    ld e, h

jr_002_49d2:
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
    jr z, jr_002_4984

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
    jr z, jr_002_4977

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

jr_002_4a11:
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
    jr z, jr_002_49d2

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

jr_002_4a38:
    ld b, c
    rlca
    inc h
    pop af
    add d
    rlca
    jr z, jr_002_4a11

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
    jr nz, jr_002_4a78

    ld [hl+], a
    or d
    db $10
    ld b, $22
    and d

jr_002_4a78:
    jr jr_002_4a80

    ld [hl+], a
    or d
    db $10
    ld b, $28
    pop bc

jr_002_4a80:
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

jr_002_4aa3:
    reti


    dec b
    jr z, jr_002_4a38

    pop hl
    dec b
    rst $38
    db $ec
    nop
    jr z, jr_002_4aa3

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

jr_002_4ae0:
    jr nz, jr_002_4ae8

    cp $02
    ret z

    ld c, d
    rst $38
    db $fc

jr_002_4ae8:
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

jr_002_4b16:
    ld h, $d2
    inc e
    add hl, hl
    or c
    inc l
    jr z, jr_002_4ae0

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

jr_002_4b36:
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
    jr nz, jr_002_4b4a

    jr z, jr_002_4b16

    db $10
    rlca
    rst $38
    db $fc
    ld e, d

jr_002_4b4a:
    dec h
    or e
    pop af
    ld b, $27
    push bc
    ld d, d
    rlca

jr_002_4b52:
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
    jr z, jr_002_4bd7

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
    jr z, jr_002_4b36

    and c

Call_002_4b90:
    ld b, $26
    add [hl]

jr_002_4b93:
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
    jr z, jr_002_4b93

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
    jr z, jr_002_4b52

    inc a
    rst $38
    db $fc
    ldh a, [$2f]
    or $65
    dec b
    ld a, [hl+]

jr_002_4bca:
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

jr_002_4bd7:
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

    jr z, jr_002_4bca

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
    jr nc, jr_002_4c59

    rst $38
    db $fc
    add c
    ld [hl+], a
    jp nz, Jump_000_0701

jr_002_4c59:
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

jr_002_4c7a:
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

jr_002_4c9d:
    db $e4
    ldh [rTMA], a
    jr z, @-$2d

    ret nc

    ld b, $ff
    db $fc
    ld a, [bc]
    daa
    and $81

jr_002_4caa:
    ld b, $2e
    push de
    pop bc
    ld b, $24
    call nz, Call_000_06b1
    inc h
    call nc, Call_000_06a1
    jr z, jr_002_4c7a

jr_002_4cb9:
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

jr_002_4cc5:
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

    jr z, jr_002_4caa

    add b
    inc b
    rst $38
    db $fc
    xor $2b
    jp nc, $0438

    ld l, $c6

jr_002_4ce4:
    sbc b
    inc b
    inc hl

jr_002_4ce7:
    or d
    adc b
    inc b
    jr z, jr_002_4c9d

    ld a, b
    inc b
    rst $38
    ld a, [hl+]
    and $6c
    cpl

jr_002_4cf3:
    jp nc, Jump_000_235c

    jp nz, $286c

    pop de
    ld e, h
    rst $38
    db $fc
    inc sp
    cpl
    or $c0

jr_002_4d01:
    dec b
    jr z, jr_002_4ce7

    cp h
    dec b
    ld h, $d2
    ret nc

    dec b
    ld h, $b2
    ldh [rTIMA], a
    ld h, $c2
    ldh a, [rTIMA]
    jr z, jr_002_4cc5

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

jr_002_4d22:
    or d
    pop bc
    inc b
    jr z, jr_002_4cb9

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

jr_002_4d35:
    ld a, [hl+]
    sub $6c
    inc h
    jp nz, $264c

jr_002_4d3c:
    db $d3
    ld e, h
    jr z, jr_002_4cf3

    ld c, h
    jr z, jr_002_4ce4

    ld e, h
    rst $38
    db $fc
    ldh a, [$28]
    db $e4

jr_002_4d49:
    sub b
    rlca
    cpl
    push af
    ret nz

    rlca
    jr z, jr_002_4d22

    ret c

jr_002_4d52:
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
    jr z, jr_002_4d01

    or a
    rlca
    rst $38
    jr z, jr_002_4d49

    ld c, h
    ld l, $c4
    inc a
    jr z, jr_002_4d3c

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

jr_002_4dac:
    ld bc, $2607
    and d
    ld b, d
    rlca

jr_002_4db2:
    jr z, jr_002_4d35

    add c
    rlca
    rst $38
    ld h, $08
    ld bc, $e225
    ld e, h
    dec h
    jp nz, Jump_000_254c

    jp nc, Jump_000_253c

Call_002_4dc4:
    or d
    inc l
    dec h
    jp nz, $251c

    and d

jr_002_4dcb:
    dec de
    dec h
    sub d
    ld a, [de]
    jr z, jr_002_4d52

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
    jr z, jr_002_4db2

    db $10
    rlca
    inc h
    jp nz, $0700

    inc h
    jp nc, $06f0

    jr z, jr_002_4dac

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
    jr z, jr_002_4dcb

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

jr_002_4e5c:
    rlca
    daa
    add $e0
    rlca

jr_002_4e61:
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

jr_002_4e86:
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
    jr z, jr_002_4e5c

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


    jr z, jr_002_4e86

jr_002_4eb5:
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
    jr z, jr_002_4e61

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
    jr z, jr_002_4eb5

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
    jr nz, jr_002_4f02

    jr z, @-$5d

    inc h
    ld b, $ff
    db $fc

jr_002_4f02:
    ld [hl+], a
    cpl
    or b
    jp Jump_000_2a06


    and b
    pop bc
    ld b, $26
    add h

jr_002_4f0d:
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

jr_002_4f20:
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

    jr z, jr_002_4f0d

    and b
    ld b, $ff
    db $fc
    rrca
    add hl, hl
    push de
    ld sp, $2306

jr_002_4f56:
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

jr_002_4f67:
    sub c
    ld b, $23
    jp nz, $0671

    jr z, jr_002_4f20

    ld d, c
    ld b, $ff
    ld h, $e3
    ld c, h
    inc h
    jp Jump_000_253c


jr_002_4f79:
    call nc, Call_000_243c
    call nz, $262c
    or h
    inc a
    jr z, @-$3d

    inc l
    rst $38

jr_002_4f85:
    db $fc
    and l
    inc hl
    db $f4
    ld b, c
    ld b, $2d
    sub $21
    rlca
    jr z, jr_002_4f85

    add hl, de
    rlca
    jr z, jr_002_4f56

    ld a, [de]
    rlca
    rst $38
    db $fc
    call z, $f424

jr_002_4f9c:
    add b
    dec b
    ld l, $e6
    ldh [rTMA], a
    jr z, jr_002_4f79

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
    jr z, jr_002_4f67

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

jr_002_4fd0:
    dec b
    inc l

jr_002_4fd2:
    pop de
    db $10
    dec b
    ld l, $c1
    inc c
    dec b
    jr z, jr_002_4f9c

    ld a, [bc]

jr_002_4fdc:
    dec b
    rst $38
    ld l, $f2
    ld h, l
    dec l
    ld [c], a

jr_002_4fe3:
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

jr_002_4fef:
    ld h, h
    dec b
    ld [hl+], a
    ld [c], a

jr_002_4ff3:
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
    jr z, jr_002_4fd0

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
    jr z, jr_002_4fdc

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
    jr z, jr_002_4fe3

    and b
    inc b
    inc hl
    db $d3
    jr nz, @+$07

    inc hl
    call nz, $04e0
    jr z, jr_002_4fef

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

    jr z, jr_002_4fd2

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
    jr z, jr_002_4ff3

    ld c, c
    rst $38
    xor a
    ld [$cfc6], a
    ld [$d082], a
    call Call_000_2233
    call Call_000_1e64
    ld c, $08
    ld a, [$d05b]
    and a
    jr z, jr_002_507d

    ld a, $ea
    jr jr_002_509a

jr_002_507d:
    ld a, [$d058]
    cp $c8
    jr c, jr_002_5098

    cp $f3
    jr z, jr_002_5094

    cp $f7
    jr nz, jr_002_5090

    ld a, $ea
    jr jr_002_509a

jr_002_5090:
    ld a, $ed
    jr jr_002_509a

jr_002_5094:
    ld a, $f3
    jr jr_002_509a

jr_002_5098:
    ld a, $f0

jr_002_509a:
    jp Jump_000_2211


    ld c, $00

jr_002_509f:
    ld b, $00
    ld hl, $c026
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_50cb

    ld a, c
    cp $04
    jr nc, jr_002_50c8

    ld a, [$c002]
    and a
    jr z, jr_002_50c8

    bit 7, a
    jr nz, jr_002_50cb

    set 7, a
    ld [$c002], a
    xor a
    ldh [rNR51], a
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a
    jr jr_002_50cb

jr_002_50c8:
    call Call_002_50d2

jr_002_50cb:
    ld a, c
    inc c
    cp $07
    jr nz, jr_002_509f

    ret


Call_002_50d2:
    ld b, $00
    ld hl, $c0b6
    add hl, bc
    ld a, [hl]
    cp $01
    jp z, Jump_002_516a

    dec a
    ld [hl], a
    ld a, c
    cp $04
    jr nc, jr_002_50ee

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_50ee

    ret


jr_002_50ee:
    ld hl, $c02e
    add hl, bc
    bit 6, [hl]
    jr z, jr_002_50f9

    call Call_002_57f4

jr_002_50f9:
    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_002_510b

    ld hl, $c02e
    add hl, bc
    bit 2, [hl]
    jr nz, jr_002_511f

jr_002_510b:
    ld hl, $c02e
    add hl, bc
    bit 4, [hl]
    jr z, jr_002_5116

    jp Jump_002_56e0


jr_002_5116:
    ld hl, $c04e
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_5120

    dec [hl]

jr_002_511f:
    ret


jr_002_5120:
    ld hl, $c056
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_5129

    ret


jr_002_5129:
    ld d, a
    ld hl, $c05e
    add hl, bc
    ld a, [hl]
    and $0f
    and a
    jr z, jr_002_5136

    dec [hl]
    ret


jr_002_5136:
    ld a, [hl]
    swap [hl]
    or [hl]
    ld [hl], a
    ld hl, $c066
    add hl, bc
    ld e, [hl]
    ld hl, $c02e
    add hl, bc
    bit 3, [hl]
    jr z, jr_002_5156

    res 3, [hl]
    ld a, d
    and $0f
    ld d, a
    ld a, e
    sub d
    jr nc, jr_002_5154

    ld a, $00

jr_002_5154:
    jr jr_002_5162

jr_002_5156:
    set 3, [hl]
    ld a, d
    and $f0
    swap a
    add e
    jr nc, jr_002_5162

    ld a, $ff

jr_002_5162:
    ld d, a
    ld b, $03
    call Call_002_5810
    ld [hl], d
    ret


Jump_002_516a:
    ld hl, $c06e
    add hl, bc
    ld a, [hl]
    ld hl, $c04e
    add hl, bc
    ld [hl], a
    ld hl, $c02e
    add hl, bc
    res 4, [hl]
    res 5, [hl]
    ld a, c
    cp $04
    jr nz, jr_002_518c

    ld a, [$d082]
    bit 7, a
    jr z, jr_002_518c

    call Call_002_55a3
    ret


jr_002_518c:
    call Call_002_5190
    ret


Call_002_5190:
Jump_002_5190:
    call Call_002_580c
    ld d, a
    cp $ff
    jp nz, Jump_002_521e

    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 1, [hl]
    jr nz, jr_002_51ce

    ld a, c
    cp $03
    jr nc, jr_002_51aa

    jr jr_002_51e9

jr_002_51aa:
    res 2, [hl]
    ld hl, $c036
    add hl, bc
    res 0, [hl]
    cp $06
    jr nz, jr_002_51be

    ld a, $00
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a

jr_002_51be:
    jr nz, jr_002_51cc

    ld a, [$c003]
    and a
    jr z, jr_002_51cc

    xor a
    ld [$c003], a
    jr jr_002_51e9

jr_002_51cc:
    jr jr_002_51f2

jr_002_51ce:
    res 1, [hl]
    ld d, $00
    ld a, c
    add a
    ld e, a
    ld hl, $c006
    add hl, de
    push hl
    ld hl, $c016
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    ld [hl+], a

Jump_002_51e3:
    inc de
    ld a, [de]
    ld [hl], a
    jp Jump_002_5190


jr_002_51e9:
    ld hl, $596a
    add hl, bc
    ldh a, [rNR51]
    and [hl]
    ldh [rNR51], a

jr_002_51f2:
    ld a, [$c02a]
    cp $14
    jr nc, jr_002_51fb

    jr jr_002_5218

jr_002_51fb:
    ld a, [$c02a]
    cp $86
    jr z, jr_002_5218

    jr c, jr_002_5206

    jr jr_002_5218

jr_002_5206:
    ld a, c
    cp $04
    jr z, jr_002_520f

    call Call_002_5692
    ret c

jr_002_520f:
    ld a, [$c005]
    ldh [rNR50], a
    xor a
    ld [$c005], a

jr_002_5218:
    ld hl, $c026
    add hl, bc
    ld [hl], b
    ret


Jump_002_521e:
    cp $fd
    jp nz, Jump_002_5253

    call Call_002_580c
    push af
    call Call_002_580c
    ld d, a
    pop af
    ld e, a
    push de
    ld d, $00
    ld a, c
    add a
    ld e, a
    ld hl, $c006
    add hl, de
    push hl
    ld hl, $c016
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl-]
    ld [de], a
    pop de
    ld [hl], e
    inc hl
    ld [hl], d
    ld b, $00
    ld hl, $c02e
    add hl, bc
    set 1, [hl]
    jp Jump_002_5190


Jump_002_5253:
    cp $fe
    jp nz, Jump_002_528e

    call Call_002_580c
    ld e, a
    and a
    jr z, jr_002_5277

    ld b, $00
    ld hl, $c0be
    add hl, bc
    ld a, [hl]
    cp e
    jr nz, jr_002_5275

    ld a, $01
    ld [hl], a
    call Call_002_580c
    call Call_002_580c
    jp Jump_002_5190


jr_002_5275:
    inc a
    ld [hl], a

jr_002_5277:
    call Call_002_580c
    push af
    call Call_002_580c
    ld b, a
    ld d, $00
    ld a, c
    add a
    ld e, a
    ld hl, $c006
    add hl, de
    pop af
    ld [hl+], a
    ld [hl], b
    jp Jump_002_5190


Jump_002_528e:
    and $f0
    cp $d0
    jp nz, Jump_002_52cd

    ld a, d
    and $0f
    ld b, $00
    ld hl, $c0c6
    add hl, bc
    ld [hl], a
    ld a, c
    cp $03
    jr z, jr_002_52ca

    call Call_002_580c
    ld d, a
    ld a, c
    cp $02
    jr z, jr_002_52b6

    cp $06
    jr nz, jr_002_52c3

    ld hl, $c0e7
    jr jr_002_52b9

jr_002_52b6:
    ld hl, $c0e6

jr_002_52b9:
    ld a, d
    and $0f
    ld [hl], a
    ld a, d
    and $30
    sla a
    ld d, a

jr_002_52c3:
    ld b, $00
    ld hl, $c0de
    add hl, bc
    ld [hl], d

jr_002_52ca:
    jp Jump_002_5190


Jump_002_52cd:
    ld a, d
    cp $e8
    jr nz, jr_002_52df

    ld b, $00
    ld hl, $c02e
    add hl, bc
    ld a, [hl]
    xor $01
    ld [hl], a
    jp Jump_002_5190


jr_002_52df:
    cp $ea
    jr nz, jr_002_5317

    call Call_002_580c
    ld b, $00
    ld hl, $c04e
    add hl, bc
    ld [hl], a
    ld hl, $c06e
    add hl, bc
    ld [hl], a
    call Call_002_580c
    ld d, a
    and $f0
    swap a
    ld b, $00
    ld hl, $c056
    add hl, bc
    srl a
    ld e, a
    adc b
    swap a
    or e
    ld [hl], a
    ld a, d
    and $0f
    ld d, a
    ld hl, $c05e
    add hl, bc
    swap a
    or d
    ld [hl], a
    jp Jump_002_5190


jr_002_5317:
    cp $eb
    jr nz, jr_002_534f

    call Call_002_580c
    ld b, $00
    ld hl, $c076
    add hl, bc
    ld [hl], a
    call Call_002_580c
    ld d, a
    and $f0
    swap a
    ld b, a
    ld a, d
    and $0f
    call Call_002_5830
    ld b, $00
    ld hl, $c0a6
    add hl, bc
    ld [hl], d
    ld hl, $c0ae
    add hl, bc
    ld [hl], e
    ld b, $00
    ld hl, $c02e
    add hl, bc
    set 4, [hl]
    call Call_002_580c
    ld d, a
    jp Jump_002_54b5


jr_002_534f:
    cp $ec
    jr nz, jr_002_5364

    call Call_002_580c
    rrca
    rrca
    and $c0
    ld b, $00
    ld hl, $c03e
    add hl, bc
    ld [hl], a
    jp Jump_002_5190


jr_002_5364:
    cp $ed
    jr nz, jr_002_53a4

    ld a, c
    cp $04
    jr nc, jr_002_5388

    call Call_002_580c
    ld [$c0e8], a
    call Call_002_580c
    ld [$c0e9], a
    xor a
    ld [$c0ce], a
    ld [$c0cf], a
    ld [$c0d0], a
    ld [$c0d1], a
    jr jr_002_53a1

jr_002_5388:
    call Call_002_580c
    ld [$c0ea], a
    call Call_002_580c
    ld [$c0eb], a
    xor a
    ld [$c0d2], a
    ld [$c0d3], a
    ld [$c0d4], a
    ld [$c0d5], a

jr_002_53a1:
    jp Jump_002_5190


jr_002_53a4:
    cp $ee
    jr nz, jr_002_53b1

    call Call_002_580c
    ld [$c004], a
    jp Jump_002_5190


jr_002_53b1:
    cp $ef
    jr nz, jr_002_53d1

    call Call_002_580c
    push bc
    ld b, a
    call Call_000_22ec
    pop bc
    ld a, [$c003]
    and a
    jr nz, jr_002_53ce

    ld a, [$c02d]

Call_002_53c7:
    ld [$c003], a
    xor a
    ld [$c02d], a

jr_002_53ce:
    jp Jump_002_5190


jr_002_53d1:
    cp $fc
    jr nz, jr_002_53ef

    call Call_002_580c
    ld b, $00
    ld hl, $c046
    add hl, bc
    ld [hl], a
    and $c0
    ld hl, $c03e
    add hl, bc
    ld [hl], a
    ld hl, $c02e
    add hl, bc
    set 6, [hl]
    jp Jump_002_5190


jr_002_53ef:
    cp $f0
    jr nz, jr_002_53fb

    call Call_002_580c
    ldh [rNR50], a
    jp Jump_002_5190


jr_002_53fb:
    cp $f8
    jr nz, jr_002_540a

    ld b, $00
    ld hl, $c036
    add hl, bc
    set 0, [hl]
    jp Jump_002_5190


jr_002_540a:
    and $f0
    cp $e0
    jr nz, jr_002_541d

    ld hl, $c0d6
    ld b, $00
    add hl, bc
    ld a, d
    and $0f
    ld [hl], a
    jp Jump_002_5190


jr_002_541d:
    cp $20
    jr nz, jr_002_546a

    ld a, c
    cp $03
    jr c, jr_002_546a

    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_002_546a

    call Call_002_54b5
    ld d, a
    ld b, $00
    ld hl, $c03e
    add hl, bc
    ld a, [hl]
    or d
    ld d, a
    ld b, $01
    call Call_002_5810
    ld [hl], d
    call Call_002_580c
    ld d, a
    ld b, $02
    call Call_002_5810
    ld [hl], d
    call Call_002_580c
    ld e, a
    ld a, c
    cp $07
    ld a, $00
    jr z, jr_002_545d

    push de
    call Call_002_580c
    pop de

jr_002_545d:
    ld d, a
    push de
    call Call_002_55d4
    call Call_002_55a3
    pop de
    call Call_002_55f6
    ret


jr_002_546a:
    ld a, c
    cp $04
    jr c, jr_002_5486

    ld a, d
    cp $10
    jr nz, jr_002_5486

    ld b, $00
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_002_5486

    call Call_002_580c
    ldh [rNR10], a
    jp Jump_002_5190


jr_002_5486:
    ld a, c
    cp $03
    jr nz, jr_002_54b5

    ld a, d
    and $f0
    cp $b0
    jr z, jr_002_54a0

    jr nc, jr_002_54b5

    swap a
    ld b, a
    ld a, d
    and $0f
    ld d, a
    ld a, b
    push de
    push bc
    jr jr_002_54a8

jr_002_54a0:
    ld a, d
    and $0f
    push af
    push bc
    call Call_002_580c

jr_002_54a8:
    ld d, a
    ld a, [$c003]
    and a
    jr nz, jr_002_54b3

    ld b, d
    call Call_000_22ec

jr_002_54b3:
    pop bc
    pop de

Call_002_54b5:
Jump_002_54b5:
jr_002_54b5:
    ld a, d
    push af
    and $0f
    inc a
    ld b, $00
    ld e, a
    ld d, b
    ld hl, $c0c6
    add hl, bc
    ld a, [hl]
    ld l, b
    call Call_002_581f
    ld a, c
    cp $04
    jr nc, jr_002_54d6

    ld a, [$c0e8]
    ld d, a
    ld a, [$c0e9]
    ld e, a
    jr jr_002_54e9

jr_002_54d6:
    ld d, $01
    ld e, $00
    cp $07
    jr z, jr_002_54e9

    call Call_002_5657
    ld a, [$c0ea]
    ld d, a
    ld a, [$c0eb]
    ld e, a

jr_002_54e9:
    ld a, l
    ld b, $00
    ld hl, $c0ce
    add hl, bc
    ld l, [hl]
    call Call_002_581f
    ld e, l
    ld d, h
    ld hl, $c0ce
    add hl, bc
    ld [hl], e
    ld a, d
    ld hl, $c0b6
    add hl, bc
    ld [hl], a
    ld hl, $c036
    add hl, bc
    bit 0, [hl]
    jr nz, jr_002_5513

    ld hl, $c02e
    add hl, bc
    bit 2, [hl]
    jr z, jr_002_5513

    pop hl
    ret


jr_002_5513:
    pop af
    and $f0
    cp $c0
    jr nz, jr_002_554a

    ld a, c
    cp $04
    jr nc, jr_002_5527

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_5549

jr_002_5527:
    ld a, c
    cp $02
    jr z, jr_002_5530

    cp $06
    jr nz, jr_002_553d

jr_002_5530:
    ld b, $00
    ld hl, $596a
    add hl, bc
    ldh a, [rNR51]
    and [hl]
    ldh [rNR51], a
    jr jr_002_5549

jr_002_553d:
    ld b, $02
    call Call_002_5810
    ld a, $08
    ld [hl+], a
    inc hl
    ld a, $80
    ld [hl], a

jr_002_5549:
    ret


jr_002_554a:
    swap a
    ld b, $00
    ld hl, $c0d6
    add hl, bc
    ld b, [hl]
    call Call_002_5830
    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 4, [hl]
    jr z, jr_002_5563

    call Call_002_5776

jr_002_5563:
    push de
    ld a, c
    cp $04
    jr nc, jr_002_5578

    ld hl, $c02a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_002_5576

    jr jr_002_5578

jr_002_5576:
    pop de
    ret


jr_002_5578:
    ld b, $00
    ld hl, $c0de
    add hl, bc
    ld d, [hl]
    ld b, $02
    call Call_002_5810
    ld [hl], d
    call Call_002_55d4
    call Call_002_55a3
    pop de
    ld b, $00
    ld hl, $c02e
    add hl, bc
    bit 0, [hl]
    jr z, jr_002_559a

    inc e
    jr nc, jr_002_559a

    inc d

jr_002_559a:
    ld hl, $c066
    add hl, bc
    ld [hl], e
    call Call_002_55f6
    ret


Call_002_55a3:
    ld b, $00
    call Call_002_5972
    add hl, bc
    ldh a, [rNR51]
    or [hl]
    ld d, a
    ld a, c
    cp $07
    jr z, jr_002_55be

    cp $04
    jr nc, jr_002_55d0

    ld hl, $c02a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_002_55d0

jr_002_55be:
    ld a, [$c004]
    call Call_002_5972
    add hl, bc
    and [hl]
    ld d, a
    ldh a, [rNR51]
    ld hl, $596a
    add hl, bc
    and [hl]
    or d
    ld d, a

jr_002_55d0:
    ld a, d
    ldh [rNR51], a
    ret


Call_002_55d4:
    ld b, $00
    ld hl, $c0b6
    add hl, bc
    ld d, [hl]
    ld a, c
    cp $02
    jr z, jr_002_55ef

    cp $06
    jr z, jr_002_55ef

    ld a, d
    and $3f
    ld d, a
    ld hl, $c03e
    add hl, bc
    ld a, [hl]
    or d
    ld d, a

jr_002_55ef:
    ld b, $01
    call Call_002_5810
    ld [hl], d
    ret


Call_002_55f6:
    ld a, c
    cp $02
    jr z, jr_002_55ff

    cp $06
    jr nz, jr_002_562c

jr_002_55ff:
    push de
    ld de, $c0e6
    cp $02
    jr z, jr_002_560a

    ld de, $c0e7

jr_002_560a:
    ld a, [de]
    add a
    ld d, $00
    ld e, a
    ld hl, $5a16
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ff30
    ld b, $0f
    ld a, $00
    ldh [rNR30], a

jr_002_561f:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, b
    dec b
    and a
    jr nz, jr_002_561f

    ld a, $80
    ldh [rNR30], a
    pop de

jr_002_562c:
    ld a, d
    or $80
    and $c7
    ld d, a
    ld b, $03
    call Call_002_5810
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, c
    cp $04
    jr c, jr_002_5642

    call Call_002_567c

jr_002_5642:
    ret


    ld a, c
    cp $04
    ret nz

    ld a, [$d082]
    bit 7, a
    ret z

    xor a
    ld [$c0f1], a
    ld a, $80
    ld [$c0f2], a
    ret


Call_002_5657:
    call Call_002_56af
    jr c, jr_002_5661

    call Call_002_56c3
    jr nc, jr_002_5673

jr_002_5661:
    ld d, $00
    ld a, [$c0f2]
    add $80
    jr nc, jr_002_566b

    inc d

jr_002_566b:
    ld [$c0eb], a
    ld a, d
    ld [$c0ea], a
    ret


jr_002_5673:
    xor a
    ld [$c0eb], a
    inc a
    ld [$c0ea], a
    ret


Call_002_567c:
    call Call_002_56af
    jr c, jr_002_5685

    call Call_002_56c3
    ret nc

jr_002_5685:
    ld a, [$c0f1]
    add e
    jr nc, jr_002_568c

    inc d

jr_002_568c:
    dec hl
    ld e, a
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_002_5692:
    call Call_002_56af
    jr nc, jr_002_56ad

    ld hl, $c006
    ld e, c
    ld d, $00
    sla e
    rl d
    add hl, de
    ld a, [hl]
    sub $01
    ld [hl], a
    inc hl
    ld a, [hl]
    sbc $00
    ld [hl], a
    scf
    ret


jr_002_56ad:
    and a
    ret


Call_002_56af:
    ld a, [$c02a]
    cp $14
    jr nc, jr_002_56b8

    jr jr_002_56be

jr_002_56b8:
    cp $86
    jr z, jr_002_56be

    jr c, jr_002_56c1

jr_002_56be:
    scf
    ccf
    ret


jr_002_56c1:
    scf
    ret


Call_002_56c3:
    ld a, [$c0ef]
    cp $08
    jr nz, jr_002_56dc

    ld a, [$c02d]
    ld b, a
    ld a, [$c02a]
    or b
    cp $9d
    jr c, jr_002_56dc

    cp $ea
    jr z, jr_002_56de

    jr c, jr_002_56de

jr_002_56dc:
    and a
    ret


jr_002_56de:
    scf
    ret


Jump_002_56e0:
    ld hl, $c02e
    add hl, bc
    bit 5, [hl]
    jp nz, Jump_002_5727

    ld hl, $c09e
    add hl, bc
    ld e, [hl]
    ld hl, $c096
    add hl, bc
    ld d, [hl]
    ld hl, $c07e
    add hl, bc
    ld l, [hl]
    ld h, b
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c08e
    add hl, bc
    push hl
    ld hl, $c086
    add hl, bc
    ld a, [hl]
    pop hl
    add [hl]
    ld [hl], a
    ld a, $00
    adc e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld hl, $c0a6
    add hl, bc
    ld a, [hl]
    cp d
    jp c, Jump_002_576d

    jr nz, jr_002_575a

    ld hl, $c0ae
    add hl, bc
    ld a, [hl]
    cp e
    jp c, Jump_002_576d

    jr jr_002_575a

Jump_002_5727:
    ld hl, $c09e
    add hl, bc
    ld a, [hl]
    ld hl, $c096
    add hl, bc
    ld d, [hl]
    ld hl, $c07e
    add hl, bc
    ld e, [hl]
    sub e
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld hl, $c086
    add hl, bc
    ld a, [hl]
    add a
    ld [hl], a
    ld a, e
    sbc b
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld hl, $c0a6
    add hl, bc
    ld a, d
    cp [hl]
    jr c, jr_002_576d

    jr nz, jr_002_575a

    ld hl, $c0ae
    add hl, bc
    ld a, e
    cp [hl]
    jr c, jr_002_576d

jr_002_575a:
    ld hl, $c09e
    add hl, bc
    ld [hl], e
    ld hl, $c096
    add hl, bc
    ld [hl], d
    ld b, $03
    call Call_002_5810
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Jump_002_576d:
jr_002_576d:
    ld hl, $c02e
    add hl, bc
    res 4, [hl]
    res 5, [hl]
    ret


Call_002_5776:
    ld hl, $c096
    add hl, bc
    ld [hl], d
    ld hl, $c09e
    add hl, bc
    ld [hl], e
    ld hl, $c0b6
    add hl, bc
    ld a, [hl]
    ld hl, $c076
    add hl, bc
    sub [hl]
    jr nc, jr_002_578e

    ld a, $01

jr_002_578e:
    ld [hl], a
    ld hl, $c0ae
    add hl, bc
    ld a, e
    sub [hl]
    ld e, a
    ld a, d
    sbc b
    ld hl, $c0a6
    add hl, bc
    sub [hl]
    jr c, jr_002_57aa

    ld d, a
    ld b, $00
    ld hl, $c02e
    add hl, bc
    set 5, [hl]
    jr jr_002_57cd

jr_002_57aa:
    ld hl, $c096
    add hl, bc
    ld d, [hl]
    ld hl, $c09e
    add hl, bc
    ld e, [hl]
    ld hl, $c0ae
    add hl, bc
    ld a, [hl]
    sub e
    ld e, a
    ld a, d
    sbc b
    ld d, a
    ld hl, $c0a6
    add hl, bc
    ld a, [hl]
    sub d
    ld d, a
    ld b, $00
    ld hl, $c02e
    add hl, bc
    res 5, [hl]

jr_002_57cd:
    ld hl, $c076
    add hl, bc

jr_002_57d1:
    inc b
    ld a, e
    sub [hl]
    ld e, a
    jr nc, jr_002_57d1

    ld a, d
    and a
    jr z, jr_002_57df

    dec a
    ld d, a
    jr jr_002_57d1

jr_002_57df:
    ld a, e
    add [hl]
    ld d, b
    ld b, $00
    ld hl, $c07e
    add hl, bc
    ld [hl], d
    ld hl, $c086
    add hl, bc
    ld [hl], a
    ld hl, $c08e
    add hl, bc
    ld [hl], a
    ret


Call_002_57f4:
    ld b, $00
    ld hl, $c046
    add hl, bc
    ld a, [hl]
    rlca
    rlca
    ld [hl], a
    and $c0
    ld d, a
    ld b, $01
    call Call_002_5810
    ld a, [hl]
    and $3f
    or d
    ld [hl], a
    ret


Call_002_580c:
    call Call_000_2288
    ret


Call_002_5810:
    ld a, c
    ld hl, $5962
    add l
    jr nc, jr_002_5818

    inc h

jr_002_5818:
    ld l, a
    ld a, [hl]
    add b
    ld l, a
    ld h, $ff
    ret


Call_002_581f:
    ld h, $00

jr_002_5821:
    srl a
    jr nc, jr_002_5826

    add hl, de

jr_002_5826:
    sla e
    rl d
    and a
    jr z, jr_002_582f

    jr jr_002_5821

jr_002_582f:
    ret


Call_002_5830:
    ld h, $00
    ld l, a
    add hl, hl
    ld d, h
    ld e, l
    ld hl, $59a5
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b

jr_002_583e:
    cp $07
    jr z, jr_002_5849

    sra d
    rr e
    inc a
    jr jr_002_583e

jr_002_5849:
    ld a, $08
    add d
    ld d, a
    ret


    ld [$c001], a
    ld a, [$c001]
    cp $ff
    jp z, Jump_002_58cf

    cp $b9
    jp z, Jump_002_586e

    jp c, Jump_002_586e

    cp $fe
    jr z, jr_002_5868

    jp nc, Jump_002_586e

jr_002_5868:
    call Call_000_22aa
    jp Jump_002_58d3


Jump_002_586e:
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

Jump_002_5887:
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
    jr z, jr_002_58c3

    ld a, e
    cp $07
    jr nz, jr_002_58ba

    ld a, [$c001]
    cp $14
    jr nc, jr_002_58b3

    ret


jr_002_58b3:
    ld a, [hl]
    cp $14
    jr z, jr_002_58c3

    jr c, jr_002_58c3

jr_002_58ba:
    ld a, [$c001]
    cp [hl]
    jr z, jr_002_58c3

    jr c, jr_002_58c3

    ret


jr_002_58c3:
    call Call_000_22c0
    ld a, c
    and a
    jp z, Jump_002_58d3

    dec c
    jp Jump_002_5887


Jump_002_58cf:
    call Call_000_22d6
    ret


Jump_002_58d3:
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

jr_002_58f5:
    cp c
    jr z, jr_002_58fd

    inc c
    inc hl
    inc hl
    jr jr_002_58f5

jr_002_58fd:
    push af
    push hl
    push bc
    ld b, $00
    ld c, a
    cp $03
    jr c, jr_002_590d

    ld hl, $c02e
    add hl, bc
    set 2, [hl]

jr_002_590d:
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
    jr nz, jr_002_58f5

    ld a, [$c001]
    cp $14
    jr nc, jr_002_5936

    jr jr_002_5960

jr_002_5936:
    ld a, [$c001]
    cp $86
    jr z, jr_002_5960

    jr c, jr_002_5941

    jr jr_002_5960

jr_002_5941:
    ld hl, $c02a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c012
    ld de, $5961
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c005]
    and a
    jr nz, jr_002_5960

    ldh a, [rNR50]
    ld [$c005], a
    ld a, $77
    ldh [rNR50], a

jr_002_5960:
    ret


    rst $38
    db $10
    dec d
    ld a, [de]
    rra
    db $10
    dec d
    ld a, [de]
    rra
    xor $dd
    cp e
    ld [hl], a
    xor $dd
    cp e
    ld [hl], a

Call_002_5972:
    push af
    push bc
    ld a, [$d354]
    and $30
    srl a
    ld c, a
    ld b, $00
    ld hl, $5985
    add hl, bc
    pop bc
    pop af
    ret


    ld de, $4422
    adc b
    ld de, $4422
    adc b
    ld bc, $4420
    adc b
    ld de, $4422
    adc b
    ld bc, $0420
    add b
    ld bc, $0420
    add b
    ld bc, $4002
    add b
    ld bc, $4002
    add b
    inc l
    ld hl, sp-$63
    ld hl, sp+$07
    ld sp, hl
    ld l, e
    ld sp, hl
    jp z, Jump_000_23f9

    ld a, [$fa77]
    rst $00
    ld a, [$fb12]
    ld e, b
    ei
    sbc e
    ei
    jp c, $0efb

    ld [bc], a
    ld a, $de
    call Call_000_2211
    ld hl, $c006
    ld de, $7075
    call Call_002_59d6
    ld de, $70f0
    call Call_002_59d6
    ld de, $7188

Call_002_59d6:
Jump_002_59d6:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


    ld c, $02
    ld a, $de
    call Call_000_2211
    ld de, $6fec
    jr jr_002_59ed

    call $59bd
    ld de, $706e

jr_002_59ed:
    ld hl, $c006
    jp Jump_002_59d6


    ret


    ld a, $0a
    ld [$cfc7], a
    ld [$cfc8], a
    ld a, $ff
    ld [$cfc6], a
    ld c, $64
    call Call_000_372f
    ld c, $02
    ld a, $c3
    call Call_000_2211
    ld hl, $c006
    ld de, $6942
    jp Jump_002_59d6


    ld h, $5a
    ld [hl], $5a
    ld b, [hl]
    ld e, d
    ld d, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    db $76
    ld e, d
    db $76
    ld e, d
    db $76
    ld e, d
    ld [bc], a
    ld b, [hl]
    adc d
    adc $ff
    cp $ed
    call c, $a9cb
    add a
    ld h, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $4602
    adc d
    adc $ef
    rst $38
    cp $ee
    db $dd
    res 5, c
    add a
    ld h, l
    ld b, e
    ld [hl+], a
    ld de, $6913
    cp l
    xor $ee
    rst $38
    rst $38
    db $ed
    sbc $ff
    rst $38
    xor $ee
    db $db
    sub [hl]
    ld sp, $4602
    adc d
    call $feef
    sbc $ff
    xor $dc
    cp d
    sbc b
    db $76
    ld d, h
    ld [hl-], a
    db $10
    ld bc, $4523
    ld h, a
    adc d
    call $f7ee
    ld a, a
    xor $dc
    xor b
    db $76
    ld d, h
    ld [hl-], a
    db $10
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    ld [bc], a
    add sp, -$24
    add c
    pop bc
    db $eb
    nop
    ld c, e
    or c
    db $eb
    nop
    ld d, h
    or c
    db $eb
    nop
    ld b, h
    ld b, c
    jp Jump_000_00eb


    dec sp
    ld b, e
    db $eb
    nop
    ld c, e
    or e
    rst $38
    db $ec
    ld [bc], a
    call c, $e4c3
    or e
    or e
    or c
    add c
    call c, $e3c4
    ld b, a
    rst $38
    call c, $e410
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    add c
    ld b, l
    pop bc
    rst $38
    db $ed
    nop
    sbc b
    ldh a, [rPCM34]
    ld [$2304], a
    db $ec
    ld [bc], a
    add sp, -$24
    and c
    jp $21e4


    dec h
    ld hl, $2125
    jr nz, jr_002_5ad7

    push hl
    or b
    db $e4
    db $10
    push hl
    sub c
    sub c
    sub l
    db $e4
    ld de, $1115
    inc de
    push hl
    sub c
    db $e4

jr_002_5ad7:
    ld de, $b1e5
    db $e4
    inc de
    push hl
    sub c
    sub l
    db $e4
    ld hl, $2125
    dec h
    ld hl, $4020
    jr nz, jr_002_5af9

    push hl
    or c
    sub c
    sub l
    db $e4
    ld de, $e515
    sub c
    db $e4
    ld b, c
    push hl
    sub c
    call c, $e4a2

jr_002_5af9:
    ld [hl], e
    ld b, e
    ld h, c
    call c, $e5a1
    sub c
    sub l
    sub c
    ld h, c
    sub e
    or c
    db $e4
    ld de, $b3e5
    sub c
    ld h, c
    sub e
    ld [hl], c
    ld b, c
    inc de
    sub c
    db $e4
    ld hl, $93e5
    or c
    ld [hl], c
    or e
    db $e4
    ld hl, $1141
    ld hl, $91e5
    sub c
    cp $00
    cp h
    ld e, d
    rst $38
    db $ec
    ld [bc], a
    call c, $fdd1
    jr c, @+$5d

    db $fd
    ld c, e
    ld e, e
    db $fd
    jr c, @+$5d

    db $fd
    ld h, b
    ld e, e
    cp $00
    ld h, $5b
    db $e4
    jr nz, jr_002_5b7b

    ld h, c
    ld h, c
    ld h, c
    jr nz, jr_002_5b80

    ld h, c
    ld h, c
    ld h, c
    jr nz, @+$42

    ld h, c
    ld h, c
    ld [hl], d
    ld h, b
    ld b, l
    rst $38
    db $10
    jr nz, jr_002_5b8f

    ld b, c
    ld b, c
    db $10
    jr nz, jr_002_5b94

    ld b, c
    ld b, c
    db $10
    jr nz, jr_002_5b99

    ld b, c
    ld h, b
    ld b, b
    ld b, b
    ld h, b
    inc hl
    ld h, c
    rst $38
    db $10
    jr nz, @+$43

    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $e511
    or c
    db $e4
    ld de, $d2dc
    or e
    sub $d1
    push hl
    or b
    db $e4
    db $10
    call c, $e5d1
    or b
    sub b
    db $e4

jr_002_5b7b:
    db $10
    dec h
    call c, Call_002_60d2

jr_002_5b80:
    ld [hl], b
    sub c
    sub c
    ld h, c
    ld hl, $21e3
    ld de, $b1e4
    db $e3
    ld de, $91e4
    ld h, c

jr_002_5b8f:
    ld [hl+], a
    ld h, b
    ld b, l
    ld h, b
    ld [hl], b

jr_002_5b94:
    sub c
    sub c
    ld h, c
    sub c
    db $e3

jr_002_5b99:
    ld hl, $e411
    or d
    ld [hl], b
    sub c
    db $e3
    ld hl, $4111
    ld hl, $d1dc
    db $e4
    ld hl, $ff21
    rst $38
    ld [$2508], a
    call c, $c113
    db $e4
    inc hl
    inc de
    push hl
    or e
    sub e
    db $e4
    inc hl
    push hl
    sub e
    or e
    sub e
    db $e4
    inc de
    push hl
    sub e
    or e
    db $e4
    inc bc
    inc de
    push hl
    sub e
    db $e4
    inc hl
    push hl
    sub e
    db $e4
    inc hl
    inc de
    push hl
    or e
    sub e
    db $e4
    inc hl
    push hl
    sub e
    or e
    sub e
    db $e4
    inc de
    push hl
    or e
    sub e
    or e
    db $e4
    inc de
    push hl
    sub e
    db $e4
    inc hl
    push hl
    sub e
    db $e4
    daa
    push hl
    ld [hl], a
    sub a
    db $e4
    rla
    daa
    push hl
    ld [hl], a
    sub a
    db $e4
    dec h
    cp $00
    or b
    ld e, e
    rst $38
    call c, $b1c3
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    jp $0fb1


    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    or c
    rrca
    or c
    rrca
    jp $0fb1


    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    jp $0fb1


    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    jp $0fb1


    or c
    rrca
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    jp $0fb1


    or c
    rrca
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    jp $0fb1


    or c
    rrca
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    or c
    rrca
    pop bc
    or c
    rrca
    or c
    rrca
    cp $00
    rst $30
    ld e, e
    rst $38
    db $ed
    nop
    sbc b
    ldh a, [rPCM34]
    ld [$2509], a
    db $ec
    ld bc, $b2dc
    and $b3
    push hl
    add l
    ld h, c
    ld b, c
    jr nc, jr_002_5d00

    ld b, c
    and $b1
    push hl
    ld b, c
    sub c
    add e
    ld h, e
    and $b3
    push hl
    add l
    ld h, c
    ld b, c
    jr nc, jr_002_5d10

    or c
    and $b1
    push hl
    ld b, c
    sub c
    add e
    or e
    ret c

    or d
    db $e4
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    ld b, c
    push hl
    sub c
    db $e4
    ld b, c
    ld sp, $81e5
    db $e4
    ld sp, $e531
    add c
    db $e4
    ld sp, $e511
    ld h, c
    db $e4
    ld de, $e511
    ld h, c
    db $e4
    ld de, $b1e5
    ld b, c
    or c
    or c
    ld b, c
    add c
    ld h, c
    add c
    sub c
    sub c
    ld h, c
    sub c
    ld h, c
    add c
    sub c
    sub c
    ld h, c
    sub c
    add c
    ld b, c
    or c
    or c
    ld b, c
    or c
    or c
    ld b, c
    or c
    or c
    ld b, c
    or c
    sub c
    or c
    sub c
    db $e4
    ld de, $b1e5
    db $e4

jr_002_5d00:
    ld de, $e521
    or c
    db $e4
    ld hl, $4161
    ld sp, $e541
    or c
    db $e4
    ld b, c
    ld b, c
    push hl

jr_002_5d10:
    or c
    db $e4
    ld b, c
    ld b, c
    push hl
    or c
    db $e4
    ld b, c
    ld b, c
    push hl
    or c
    db $e4
    ld b, c
    cp $00
    sub [hl]
    ld e, h
    rst $38
    ld [$2608], a
    db $ec
    inc bc
    call c, $e4d4
    ld b, l
    push hl
    or b
    db $e4
    ld b, b
    ld h, l
    sub c
    add d
    ld b, b
    ld h, a
    push hl
    inc sp
    db $e4
    ld b, l
    push hl
    or b
    db $e4
    ld b, b
    ld h, l
    sub c
    add d
    ld b, b
    or a
    push hl
    add e
    db $e3
    dec d
    db $e4
    or b
    sub b
    or l
    sub b
    add b
    sub l
    add b
    ld h, b
    add e
    ld h, c
    ld b, c
    ld hl, $4020
    ld h, a
    sub e
    add d
    ld h, b
    ld b, a
    ld h, c
    ld b, c
    ld hl, $4020
    ld h, c
    ld h, b
    add b
    sub e
    db $e3
    inc de
    db $e4
    or d
    sub b
    add a
    jp $00fe


    daa
    ld e, l
    rst $38
    ld [$2809], a
    call c, $e511
    ld b, c
    pop bc
    and $b5
    push hl
    jr nz, @+$12

    ld hl, $4131
    pop bc
    and $b5
    push hl
    jr nz, @+$12

    and $91
    push hl
    ld de, $c141
    and $b5
    push hl
    jr nz, @+$12

    ld hl, $4131
    pop bc
    and $b3
    push hl
    ld de, $b1e6
    push hl
    ld hl, $4161
    pop bc
    and $91
    pop bc
    push hl
    ld sp, $e6c1
    add c
    pop bc
    push hl
    ld de, $e6c1
    ld h, c
    pop bc
    or c
    pop bc
    ld b, c
    add c
    ld h, c
    pop bc
    sub c
    pop bc
    ld h, c
    pop bc
    sub c
    pop bc
    add c
    pop bc
    or c
    pop bc
    add c
    pop bc
    or c
    pop bc
    ld h, c
    pop bc
    sub c
    pop bc
    push hl
    ld de, $e6c1
    sub c
    push hl
    ld de, $b1e6
    pop bc
    push hl
    ld b, c
    pop bc
    add c
    pop bc
    ld b, c
    pop bc
    cp $00
    ld [hl], c
    ld e, l
    rst $38
    call c, Call_000_03b1
    pop bc
    or b
    inc bc
    call nz, $03b0
    or b
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    pop bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or d
    inc bc
    or d
    inc bc
    call c, $03b0
    jp nz, Jump_000_03b1

    pop bc
    or c
    inc bc
    jp $03b0


    or b
    inc bc
    or c
    inc bc
    pop bc
    or c
    inc bc
    pop bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or d
    inc bc
    or d
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or d
    inc bc
    jp nz, $b0dc

    inc bc
    call nz, $03b0
    or b
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    pop bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or d
    inc bc
    jp nz, $b0dc

    inc bc
    jp nz, Jump_000_03b1

    pop bc
    or c
    inc bc
    jp $03b0


    or b
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    pop bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or d
    inc bc
    jp nz, $03b2

    or d
    inc bc
    or d
    inc bc
    jp nz, $b0dc

    inc bc
    call nz, $03b0
    or b
    inc bc
    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    pop bc
    ret c

    or c
    inc bc
    or c
    inc bc
    or c
    inc bc
    or d
    inc bc
    jp nz, $03b2

    jp nz, $00fe

    db $db
    ld e, l
    rst $38
    db $ed
    nop
    sub h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or l
    push hl
    ld b, b
    ld h, b
    ld [hl], l
    ld d, b
    ld [hl], b
    ld b, b
    rst $08
    adc $dc
    or l
    ld b, l
    jr nz, jr_002_5edb

    inc bc
    ld b, e
    dec b
    jr nz, jr_002_5ee0

    ld d, c
    ld [hl], c
    ld [hl], c
    sub c
    call c, $a7a7
    ld d, a
    daa
    ld d, a
    call c, Call_002_45b5
    jr nz, @+$42

    inc bc
    ld b, e
    dec b
    jr nz, jr_002_5ef4

    ld d, c
    ld [hl], c
    ld [hl], c
    sub c
    call c, $a7a7
    and a
    daa
    ld d, a
    call c, Call_002_43b5
    ld b, c
    ld d, c
    ld [hl], e
    ld d, c
    ld b, c
    or c
    and $73
    push hl
    or a
    sub c
    ret c

    jp $5393


    sub e
    ret c

    ld c, a
    sbc e
    ret c

    sub b
    ld e, e
    ld a, e
    cp $00
    sub [hl]

jr_002_5edb:
    ld e, [hl]
    ld [$2308], a
    db $ec

jr_002_5ee0:
    ld [bc], a
    call c, $e5c7
    ld [hl], b
    and b
    or l
    sub b
    or b
    db $e4
    nop
    adc $cf
    call c, $ecc7
    ld [bc], a
    db $e4
    dec b
    push hl

jr_002_5ef4:
    ld [hl], b
    db $e4
    nop
    ld c, c
    push hl
    ld [hl], c
    db $e4
    ld bc, $5171
    ld b, c
    ld hl, $2701
    ld d, a
    call c, $ecc5
    inc bc
    push hl
    and a
    sub a
    call c, $ecc7
    ld [bc], a
    db $e4
    dec b
    push hl
    ld [hl], b
    db $e4
    nop
    ld c, c
    push hl
    ld [hl], c
    db $e4
    ld bc, $5171
    ld b, c
    ld hl, $2701
    ld d, a
    call c, $ecc5
    inc bc
    push hl
    and a
    db $e4
    dec h
    call c, $ecc7
    ld [bc], a
    nop
    jr nz, jr_002_5f70

    ld hl, $0741
    push hl
    or b
    db $e4
    nop
    ld hl, $73e5
    db $e4
    ld [hl], a
    ld d, b
    ld b, b
    ret c

    db $d3
    ld d, e
    ld b, e
    ret c

    call nz, $d803
    push bc
    dec bc
    call c, $eca0
    inc bc
    push hl
    sub a
    or a
    cp $00
    db $ed
    ld e, [hl]
    ld [$1004], a
    sub $12
    db $e4
    ld [hl], c
    and c
    or a
    sub a
    ld [hl], c
    pop bc
    db $76
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    ld [hl], a
    ld [hl], c
    pop bc
    db $76
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b

jr_002_5f70:
    ret nz

    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    ld [hl], a
    call c, Call_002_4012
    ret nz

    ld [hl], e
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [hl], e
    ld b, b
    ret nz

    ld [hl], e
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [hl], c
    sub c
    ld d, b
    ret nz

    and e
    ld d, b
    ld d, b
    ld d, b
    ret nz

    ld d, b
    ret nz

    and e
    ld d, b
    ret nz

    and e
    ld d, b
    ld d, b
    ld d, b
    ret nz

    ld d, b
    ret nz

    and c
    ld d, c
    ld b, b
    ret nz

    ld [hl], e
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [hl], e
    ld b, b
    ret nz

    ld [hl], e
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [hl], c
    sub c
    ld d, b
    ret nz

    and e
    ld d, b
    ld d, b
    ld d, b
    ret nz

    ld d, b
    ret nz

    and e
    ld d, b
    ret nz

    and e
    ld d, b
    ld d, b
    ld d, b
    ret nz

    ld d, b
    ret nz

    and c
    sub c
    ld [hl], b
    ret nz

    db $e3
    inc bc
    db $e4
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    db $e3
    inc bc
    db $e4
    ld [hl], b
    ret nz

    db $e3
    inc hl
    db $e4
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    db $e3
    inc hl
    db $e4
    ld d, b
    ret nz

    db $e3
    inc bc
    db $e4
    ld d, b
    ld d, b
    ld d, b
    ret nz

    ld d, b
    ret nz

    db $e3
    inc bc
    db $e4
    ld d, b
    ret nz

    sub e
    ld d, b
    ld d, b
    ld d, b
    ret nz

    ld d, b
    ret nz

    sub e
    cp $00
    db $76
    ld e, a
    sub $b0
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or a
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld [de], a
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld [de], a
    or e
    ld de, $12b3
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld [de], a
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b

Jump_002_6060:
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    or a
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld [de], a
    or e
    ld de, $11b9
    or b
    inc de
    or b
    inc de
    cp e
    ld de, $11b1
    or c
    inc de
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    or a
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    cp c
    ld de, $13b0
    or b
    inc de
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    or a
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b

Call_002_60d2:
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    or e
    ld de, $13b0
    or b
    inc de
    or b

Jump_002_60e2:
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    cp c
    ld de, $13b0
    or b
    inc de
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    or a
    ld de, $12b0
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    or a
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    cp e
    ld de, $11b1
    or c
    ld de, $11b3
    or e
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    cp $00
    ld c, l
    ld h, b
    db $ed
    nop
    sub h
    ldh a, [rPCM34]
    db $ec

Jump_002_6143:
    inc bc
    ld [$340a], a
    add sp, -$24
    and d
    and $83
    add e
    add e
    call c, $837f
    call c, $83a2
    add e
    add e
    call c, $b0b7
    push hl
    ld b, b
    ld h, b
    or b
    call c, $b5b7
    ld b, c
    ld b, e
    db $e4
    ld b, e
    inc hl
    inc de
    push hl
    or e
    sub e
    call c, $82b1
    call c, Call_002_40b7
    ld l, e
    ld b, a
    inc sp
    ld h, e
    or l
    ld b, c
    ld b, e
    db $e4
    ld b, e
    inc hl
    inc de
    push hl
    or e
    db $e4
    inc de
    call c, $42b1
    call c, Call_000_30b7
    ld c, e
    push hl
    or d
    sub b
    add a
    db $e4
    ld b, e
    push hl
    ld hl, $6141
    add c
    sub c
    or c
    db $e4
    ld de, $2121
    push hl
    sub c
    ld h, c
    ld b, c
    ld hl, $6141
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    add c

Call_002_61a3:
    sub c
    or c
    db $e4
    ld sp, $e541
    or c
    add c
    ld h, c
    ld b, c
    ld h, c
    add c
    or c
    ret c

    or l
    sub e

Call_002_61b3:
    add e
    ld h, e
    db $e4
    ld b, e
    inc sp
    inc de
    inc de
    push hl
    or e
    sub e
    or e
    db $e4
    inc de
    inc sp

Call_002_61c1:
    push hl
    ld b, d

Call_002_61c3:
    ld h, d
    add d
    sub d
    or e
    db $e4
    inc de
    inc sp
    ld b, d
    push hl
    or d
    add d
    ld h, d
    ld b, d
    ld h, d
    add d
    sub d

Call_002_61d3:
    cp $00

jr_002_61d5:
    ld e, l
    ld h, c
    ld [$240c], a
    db $ec
    ld bc, $92dc
    push hl
    ld b, d
    ld h, b
    call c, Call_002_4b90
    call c, $e692
    or d
    push hl
    nop
    call c, $e690
    or a
    db $ec
    inc bc
    call c, $e5c7
    ld b, b
    ld h, b
    or b
    db $e4
    jr nc, jr_002_61d5

    rst $00
    ld b, l
    push hl
    or c
    or e
    db $e4
    or e
    sub e
    add e
    ld h, e
    ld h, b
    sub b
    add b
    ld h, b
    call c, $82c2
    ld b, b
    call c, $e5a0
    cp e
    db $ec
    nop
    call c, $e6c2
    or d
    call c, $e5c7
    nop
    and $b7
    push hl
    inc sp
    db $ec
    inc bc
    db $e4
    ld b, l
    push hl
    or c
    or e
    db $e4
    or e
    sub e
    add e
    ld h, e
    sub b
    db $e3
    db $10
    db $e4
    or b
    sub b
    call c, $b2c2
    call c, $90c7
    call c, $85b0
    call c, $8590
    call c, $8570
    call c, $856f
    call c, $83c7
    ret c

    jp $8393


    ld h, e
    ret c

    sub b
    ld h, l
    ret c

    ld a, a
    ld h, l
    db $ec
    nop
    ret c

    sub b
    push hl
    ld h, e
    ld b, e
    ld h, e
    sub l
    db $ec
    inc bc
    ret c

    rst $00
    db $e4
    ld h, l
    add e
    ld h, e
    ret c

    call nz, $d843
    and b
    ld c, e
    db $ec
    nop
    ret c

    sub b
    push hl
    ld b, e
    inc sp
    ld b, e
    add l
    db $ec
    inc bc
    ret c

    rst $00
    db $e4
    ld b, l
    ld h, e
    inc sp
    push hl
    or e
    ret c

    and b
    db $e4
    cp a
    ret c

    and a
    or a
    ret c

    or b
    sub l
    ret c

    or a
    sub l
    call c, $80a7
    ld h, b
    call c, $4bb0
    call c, $47a0
    call c, Call_002_49a7
    cp $00
    ld hl, sp+$61
    call c, $e410
    ld b, b
    jp nz, $c240

    ld b, b
    jp nz, $c240

    ld b, b
    jp nz, $c240

    ld b, b
    jp nz, $c230

    ld b, b
    jp nz, Jump_002_4040

    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    jp nz, $c040

    ld h, b
    jp nz, Jump_002_6060

    ld h, b
    ld h, b
    ld h, b
    ret nz

    ld h, b
    jp nz, $c090

    add b
    jp nz, $8080

    add b
    add b
    add b
    ret nz

    add b
    jp nz, $c080

    add b
    jp nz, $8080

    add b
    add b
    add b
    ret nz

    add b
    jp nz, $c080

    ld b, b
    jp nz, Jump_002_4040

    ld b, b
    ld b, b

jr_002_62e0:
    ld b, b
    ret nz

    ld b, b
    jp nz, $c040

    ld h, b
    jp nz, Jump_002_6060

    ld h, b
    ld h, b
    ld h, b
    ret nz

    ld h, b
    jp nz, $c090

    or b
    jp nz, $b0b0

    or b
    or b
    or b
    ret nz

    or b
    jp nz, $c0b0

    ld b, b
    jp nz, Jump_002_4040

    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    ld h, b
    jp nz, Jump_002_6060

    ld h, b
    ld h, b
    ld h, b
    ret nz

    ld h, b
    jp nz, $c060

    jr nz, @-$3c

    jr nz, jr_002_633c

    jr nz, @+$22

    jr nz, jr_002_62e0

    jr nz, @-$3c

    jr nz, @-$3e

    ld b, b
    jp nz, Jump_002_4040

    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    jp nz, $c040

    add b
    jp nz, $8080

    add b
    add b
    add b
    ret nz

    add b
    jp nz, $c080

jr_002_633c:
    ld h, b
    jp nz, Jump_002_6060

    ld h, b
    ld h, b
    ld h, b
    ret nz

    ld h, b
    jp nz, $c060

    or b
    jp nz, $b0b0

    or b
    or b
    or b
    ret nz

    or b
    jp nz, $c0b0

    add b
    jp nz, $8080

    add b
    add b
    add b
    ret nz

    add b
    jp nz, $c080

    ld b, b
    jp nz, Jump_002_4040

    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    jp nz, $c030

    cp $00
    xor d
    ld h, d
    call c, $cbcf
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $12b1
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $11b1
    or e

Call_002_63a4:
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or c
    ld de, $13b0
    or b
    inc de
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    inc de
    or b
    inc de
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $11b1
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or c
    ld de, $13b0
    or b
    inc de
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $11b1
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or c
    ld de, $13b0
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $11b1
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or c
    ld de, $13b0
    or b
    ld [de], a
    or e
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or c
    ld de, $11b1
    cp $00
    ld a, e
    ld h, e
    db $ed
    nop
    add h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or d
    and $97
    sub a
    sub a
    sub e
    call c, $a3a4
    db $fd
    inc l
    ld h, l
    call c, $e5b4
    inc hl
    db $fd
    inc l
    ld h, l
    call c, $e5b4
    inc sp
    db $fd
    inc l
    ld h, l
    call c, $e5b4
    inc hl
    db $fd
    inc l
    ld h, l
    call c, $e6a0
    and e
    db $fd
    inc l
    ld h, l
    call c, $e5b4
    inc hl
    call c, $e5d4
    sub e
    sub e
    sub e
    sub e
    sub e
    sub e
    sub e
    call c, $e5b4
    inc sp
    call c, $e5d4
    and e
    and e
    and e
    and e
    and e
    and e
    and e
    call c, $e5b4
    ld d, c
    call c, $e5b4
    ld [hl], c
    call c, $97b0
    and $97
    call c, $e5b7
    ld d, a
    call c, $e64e
    and a
    cp $00
    ret c

    ld h, h
    call c, $e6b2
    sub e
    sub e
    sub e
    sub e
    sub e
    sub e
    sub e
    rst $38
    db $ec
    inc bc
    ld [$2508], a
    call c, $e5c2
    daa
    daa
    daa
    inc hl
    call c, $335a
    db $fd
    add d
    ld h, l
    call c, $93c5
    db $fd
    add d
    ld h, l
    call c, $a3c5
    db $fd
    add d
    ld h, l
    call c, $93c5
    db $fd
    add d
    ld h, l
    call c, $13c7
    db $fd
    add d
    ld h, l
    call c, $93c5
    db $fd
    add d
    ld h, l
    call c, $a3c5
    db $fd
    add d
    ld h, l
    call c, $e4c5
    ld bc, $c7dc
    db $e4
    ld de, $e527
    daa
    db $e4
    rlca
    call c, $e44d
    scf
    cp $00
    ld b, [hl]
    ld h, l
    call c, $e5c2
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    rst $38
    call c, $e410
    ld hl, $21c5
    push bc
    ld hl, $21c5
    pop bc
    inc sp
    db $fd
    pop de
    ld h, l
    db $fd
    pop de
    ld h, l
    db $fd
    pop de
    ld h, l
    ld hl, $21c1
    pop bc
    ld hl, $21c1
    pop bc
    ld hl, $21c1
    pop bc
    ld hl, $63c1
    db $fd
    pop de
    ld h, l
    db $fd
    pop de
    ld h, l
    ld hl, $21c1
    pop bc
    ld hl, $21c1
    pop bc
    ld hl, $21c1
    pop bc
    ld hl, $a0c1
    ret nz

    and b
    ret nz

    sub a
    daa
    and a
    scf
    cp $00
    sbc c
    ld h, l
    db $e4
    ld hl, $21c1
    pop bc
    ld hl, $21c1
    pop bc
    ld hl, $21c1
    pop bc
    ld hl, $93c1
    rst $38
    sub $bf
    ld de, $11bf
    cp a
    ld de, $11b7
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    db $fd
    ld h, h
    ld h, [hl]
    db $fd
    ld d, c
    ld h, [hl]
    db $fd
    ld h, h
    ld h, [hl]
    db $fd
    ld a, e
    ld h, [hl]
    db $fd
    ld h, h
    ld h, [hl]
    db $fd
    ld d, c
    ld h, [hl]
    db $fd
    ld h, h
    ld h, [hl]
    db $fd
    ld a, e
    ld h, [hl]
    db $fd
    ld h, h
    ld h, [hl]
    db $fd
    ld d, c
    ld h, [hl]
    db $fd
    ld h, h
    ld h, [hl]
    db $fd
    ld a, e
    ld h, [hl]
    db $fd
    ld d, c
    ld h, [hl]
    db $fd
    ld a, e
    ld h, [hl]
    cp a
    ld de, $11b7
    or a
    ld [de], a
    cp a
    ld de, $13b0
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld de, $11b0
    or b
    ld de, $11b0
    cp $00
    ei
    ld h, l
    or e
    ld de, $12b3
    or e
    inc de
    or e
    ld [de], a
    or e
    ld de, $12b3
    or e
    inc de
    or c
    inc de
    or c
    ld [de], a
    rst $38
    or e
    ld de, $12b3
    or e
    inc de
    or e
    ld [de], a
    or e
    ld de, $12b3
    or e
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    rst $38
    or e
    ld de, $12b3
    or e
    ld de, $12b3
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    or b
    ld [de], a
    rst $38
    db $ed
    nop
    and b
    ldh a, [rPCM34]
    db $ec
    ld [bc], a
    call c, $e5c3
    or e
    db $e4
    ld bc, $7123
    ld hl, $e501
    or e
    ld [hl], c
    db $e4
    inc hl
    ld hl, $e501
    or c
    pop bc
    or c
    db $e4
    ld bc, $b1e5
    db $e4
    rlca
    pop bc
    push hl
    or c
    db $e4
    ld bc, $91e5
    or c
    ld [hl], c
    sub c
    ld h, c
    or e
    db $e4
    ld bc, $7123
    ld hl, $e501
    or e
    ld [hl], c
    db $e4
    inc hl
    ld hl, $6171
    ld b, e
    ld hl, $e503
    sub c
    or c
    db $e4
    ld bc, $0121
    push hl
    or c
    sub c
    ld [hl], e
    ld h, e
    db $e4
    ld bc, $71e5
    ld b, c
    ld [hl], c
    db $e4
    ld hl, $91e5
    ld h, c
    sub c
    call c, $b1b3
    ld [hl], c
    ld hl, $b171
    ld [hl], c
    ld hl, $e471
    ld bc, $71e5
    ld b, c
    ld [hl], c
    db $e4
    ld hl, $91e5
    ld h, c
    sub c
    or c
    ld [hl], c
    ld hl, $b171
    ld [hl], c
    ld hl, $9171
    ld b, c
    ld bc, $9141
    ld b, c
    ld bc, $9141
    ld b, c
    ld bc, $9141
    ld b, c
    ld bc, $6141
    ld hl, $2101
    ld [hl], c
    ld b, c
    ld bc, $7141
    ld b, c
    ld bc, $6141
    ld hl, $2101
    cp $00
    and c
    ld h, [hl]
    rst $38
    db $ec
    ld [bc], a
    call c, $e3d3
    ld hl, $a3dc
    ld bc, $d3dc
    db $e4
    or c
    call c, $91b3
    call c, $e3d3
    ld [hl], c
    call c, Call_002_41b3
    call c, Call_002_61d3
    ld b, c
    dec h
    db $e4

Call_002_674f:
    or c
    ld [hl], c
    ld [hl], c
    sub c
    or c
    db $e3
    add hl, bc
    db $e4
    ld h, c
    ld [hl], c
    sub c
    or l
    db $e3
    nop
    db $e4
    or b
    sub a
    db $e3
    ld hl, $a3dc
    ld bc, $d3dc
    db $e4
    or c
    call c, $e3b3
    ld hl, $d3dc
    ld [hl], c
    call c, Call_002_61a3
    call c, Call_002_61b3
    call c, Call_002_71d3
    ld b, l
    ld hl, $0127
    db $e4
    or c
    sub c

jr_002_6780:
    ld [hl], c
    db $e3
    ld hl, $e401
    or c
    sub c
    ld a, c
    ld [hl], c
    sub c
    or c
    db $e3
    rlca
    dec h
    ld bc, $b7e4
    pop bc
    ld [hl], c
    sub c
    or c
    db $e3
    inc bc
    inc bc
    dec h
    nop
    jr nz, jr_002_6780

    or a
    pop bc
    or c
    sub c
    ld [hl], c
    sub a
    ld b, e
    or e
    sub a
    ld [hl], e
    ld b, e
    ld h, a
    ld [hl], e
    or e
    or a
    sub a
    cp $00
    inc [hl]
    ld h, a
    rst $38
    ld [$2818], a
    call c, $e412
    ld [hl], l
    ld b, l
    ld h, e
    ld [hl], l
    sub l
    ld [hl], e
    ld b, l
    ld h, l
    ld b, e
    ld [hl], l
    ld b, l

jr_002_67c2:
    inc hl
    ld [hl], l

Call_002_67c4:
    ld b, l
    ld h, e
    ld [hl], l
    sub l
    ld [hl], e
    ld b, l
    ld h, l
    sub e
    ld [hl], l
    ld b, l
    inc hl
    rlca
    daa

jr_002_67d1:
    ld [hl], a
    ld b, e
    inc hl

jr_002_67d4:
    rlca
    daa
    ld [hl], a
    sub e
    ld [hl], e
    ld b, a

jr_002_67da:
    sub a
    ld b, a
    ld [hl], a
    ld h, a
    ld b, a
    ld b, a
    ld h, a
    cp $00
    or [hl]
    ld h, a
    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    ld [$1605], a
    call c, $e210
    ld b, b
    ret nz

    db $e3
    or b
    ret nz

    ld [c], a
    db $10
    ret nz

jr_002_67f9:
    db $e3
    or b
    ld [c], a
    ld b, b
    jp $c141


    jr nc, jr_002_67c2

    db $e3
    or b
    ret nz

    ld [c], a
    db $10

jr_002_6807:
    ret nz

    db $e3
    or b
    ld [c], a
    jr nc, jr_002_67d4

    db $10
    ret nz

    jr nc, jr_002_67d1

    db $10
    db $e3
    or b
    pop bc

jr_002_6815:
    ld [c], a
    db $10
    ret nz

    jr nc, jr_002_67da

    db $10
    db $e3
    or b
    pop bc
    ld [c], a
    inc sp
    inc de
    jr nc, jr_002_6863

    ret nz

    ld h, b
    ret nz

    db $e3
    or c
    ret nz

    ld [c], a
    ld b, b
    ret nz

    db $e3
    or b
    ret nz

    ld [c], a
    db $10
    ret nz

    db $e3
    or b
    ld [c], a
    ld b, b
    rst $00
    jr nc, jr_002_67f9

    db $e3
    or b
    ret nz

    ld [c], a
    db $10
    ret nz

    db $e3
    or b
    ld [c], a
    jr nc, jr_002_6807

    db $e3
    or c
    pop bc
    ld [c], a
    db $10
    ret nz

    jr nc, @-$3e

    db $10
    db $e3
    or b
    pop bc
    ld [c], a
    db $10
    ret nz

    jr nc, jr_002_6815

    ld b, b
    ld h, b
    pop bc
    ld h, e
    ld b, e
    ld h, b
    add b
    ret nz

    ld h, b
    ret nz

    ld sp, $e3c2
    sub c

jr_002_6863:
    pop bc
    or c
    pop bc
    ld [c], a
    ld de, $41c1
    ld h, a
    pop bc
    ld b, c
    ld sp, $c111
    db $e3
    add c
    pop bc
    sub c
    pop bc
    or c
    pop bc
    ld [c], a
    ld sp, $c147
    ld sp, $3111
    db $e3
    sub c
    add c
    sub c
    and b
    or b
    jp $c161


    or c

jr_002_6888:
    and c
    or c
    ld [c], a
    nop
    db $10
    rst $00
    db $e3

jr_002_688f:
    ld h, c
    ld d, c
    ld h, c
    add c
    sub c
    ld [c], a
    ld b, c
    ld sp, $e311
    or c
    push bc
    or c
    push bc
    cp $00
    xor $67
    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    add sp, -$16
    ld b, $15
    call c, $e210
    ld b, b
    ret nz

    add b
    ret nz

    ld h, b

jr_002_68b3:
    ret nz

    sub b
    add b
    rst $00
    jr nc, @-$3e

    ld h, b

jr_002_68ba:
    ret nz

    ld b, b
    ret nz

    add b
    ld h, b
    jp $b1e3


    pop bc
    ld [c], a
    db $10
    ret nz

    jr nc, jr_002_6888

    ld b, b
    ld h, b
    pop bc
    db $10
    ret nz

    jr nc, jr_002_688f

    ld b, b
    ld h, b
    pop bc
    ld h, e
    ld b, e
    ld h, b
    add b
    ret nz

    ld h, b
    ret nz

    ld sp, $40c0
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    sub b
    add b
    jp $c141


    jr nc, @-$3e

    ld h, b
    ret nz

    ld b, b
    ret nz

    add b
    ld h, b
    rst $00
    db $10
    ret nz

    jr nc, jr_002_68b3

    ld b, b
    ld h, b
    pop bc
    db $10
    ret nz

    jr nc, jr_002_68ba

    ld b, b
    ld h, b
    pop bc
    ld h, e
    ld b, e
    ld h, b
    add b
    ret nz

    or b
    ret nz

    ld h, c
    ret nz

    ld de, $31c1
    pop bc
    ld b, c
    pop bc
    add c
    pop bc
    scf
    pop bc
    ld b, c
    ld sp, $e311
    or c
    pop bc
    ld [c], a
    ld de, $31c1
    pop bc
    ld h, c
    pop bc
    rla
    pop bc
    ld sp, $e311
    or c
    sub c
    add c
    sub c
    add b
    ld h, b
    rst $00
    or c
    and c
    or c
    sub b
    add b
    jp $c181


    ld h, c
    ld d, c
    ld h, c
    add c
    sub c
    ld b, c
    ld de, $6141
    push bc
    ld sp, $fec5
    nop
    xor e
    ld l, b
    rst $38
    db $ed
    nop
    add sp, -$02
    nop
    ld c, h
    ld l, c
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    ld [$2408], a
    db $ec
    inc bc
    call c, $e5c5
    add e
    ld h, e
    ld b, c
    ld b, c
    ld h, c
    ld sp, $4141
    ld sp, $3313
    ld b, c
    inc sp
    ld de, $4341
    call c, $13a5
    and $b5
    push hl
    ld de, $e613
    or e
    call c, $fdc5
    ld d, b
    ld l, d
    push hl
    dec [hl]
    ld b, c
    and $b3
    call c, $e5a5
    ld de, $b1e6
    sub e
    or e
    or c
    push hl
    ld de, $4131
    ld sp, $3111
    call c, $81c5
    ld b, c
    ld h, c
    ld b, c
    ld b, e
    ld h, c
    ld sp, $3143
    inc de
    inc sp
    ld b, c
    ld sp, $1111
    ld b, c
    ld b, e
    call c, Call_000_11a5
    and $91
    or l
    push hl
    ld de, $e611
    or c
    or e
    call c, $fdc5
    ld d, b
    ld l, d
    push hl
    inc sp
    ld sp, $e641
    or c
    push hl
    ld de, $4381
    and $b1
    push hl
    ld b, c
    call c, $13a5
    and $b1
    push hl
    inc sp
    ld de, $dc43
    or e
    db $fd
    ld e, l
    ld l, d
    sub c
    or c
    sub c
    add c
    sub e
    ld h, e
    add c
    ld b, c
    and $b1
    push hl
    ld b, e
    add c
    and $b1
    push hl
    ld b, c
    ld b, c
    ld h, c
    ld b, c
    ld sp, $3141
    ld de, $b1e6
    push hl
    ld de, $1131
    and $b3
    or c
    push hl
    ld de, $fe31
    ld [bc], a
    push hl
    ld l, c
    ld b, c
    and $b3
    push hl
    ld b, e
    and $b1
    push hl
    ld de, $8181
    and $b1
    push hl
    ld h, c
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld sp, $b1e6
    push hl
    db $fd
    ld e, l
    ld l, d
    sub c
    ld b, c
    sub c
    or c
    sub c
    add c
    sub c
    ld h, c
    add c
    ld b, c
    and $b1
    push hl
    ld b, c
    ld de, $1181
    ld sp, $41b1
    add c
    ld b, c
    ld h, c
    ld b, e
    add c
    ld h, c
    ld sp, $b1e6
    push hl
    inc sp
    ld h, c
    ld sp, $6131
    and $b1
    push hl
    ld b, c
    and $b1
    push hl
    ld sp, $b1e6
    or c
    push hl
    ld sp, $b6dc
    ld h, a
    ld h, e
    inc sp
    ld b, a
    call c, $e684
    or e
    push hl
    ld b, c
    ld h, c
    cp $00
    ld d, e
    ld l, c
    push hl
    ld h, c
    inc sp
    ld b, c
    inc sp
    inc de
    and $b3
    push hl
    ld de, $1131
    rst $38
    sub c
    ld b, c
    ld de, $9143
    ld de, $ff41
    ld [$1505], a
    db $fd
    db $d3
    ld l, d
    db $e4
    add c
    call c, Call_002_45c4
    call c, $ecc5
    inc bc
    push hl
    inc de
    inc sp
    ld b, l
    ld h, l
    add e
    db $fd
    db $d3
    ld l, d
    db $e4
    add c
    call c, Call_002_4dc4
    db $ec
    inc bc
    push hl
    ld b, l
    ld h, l
    add e
    call c, $ecb7
    ld [bc], a
    ld [$1708], a
    db $e3
    dec de
    db $e4
    sub e
    db $e3
    ld b, a
    ld h, c
    ld b, c
    ld sp, $e411
    cp e
    add e
    cp a
    ld l, e
    add c
    sub c
    or e
    sub e
    add e
    ld h, e
    adc e
    ld b, e
    cp a
    db $e3
    dec de
    ld sp, $6341
    ld b, e
    inc sp
    inc de
    db $e4
    cp e
    db $e3
    ld de, $1331
    db $e4
    or e
    sub e
    add e
    sbc e
    or c
    db $e3
    ld bc, $e403
    or e
    sub e
    ld h, e
    call c, $97b7
    db $e3
    rlca
    db $e4
    cp l
    call c, $8084
    call c, $90a4
    cp $00
    ld h, l
    ld l, d
    db $ec
    ld [bc], a
    call c, $e4c3
    or e
    sub e
    call c, $89c4
    call c, $81c3
    sub c
    or e
    or c
    sub c
    add c
    sub c
    call c, $69c4
    call c, $ecc5
    inc bc
    push hl
    ld b, e
    scf
    ld b, e
    ld h, e
    call c, $ecc3
    ld [bc], a
    db $e4
    sub e
    add e
    call c, $69c4
    call c, Call_002_61c3
    add c
    sub e
    sub c
    add c
    ld h, c
    rst $38
    call c, $e811
    ld [$0000], a
    db $e4
    db $fd
    sbc b
    ld l, e
    db $fd
    sbc b
    ld l, e
    db $fd
    and c
    ld l, e
    add c
    ld b, c
    ld h, c
    add c
    pop bc
    ld b, c
    ld h, c
    add c
    db $fd
    sbc b
    ld l, e
    or c
    ld b, c
    ld h, c
    add c
    pop bc
    ld b, c
    ld h, c
    add c
    db $fd
    sbc b
    ld l, e
    db $fd
    and c
    ld l, e
    add c
    ld b, c
    ld h, c
    add c
    pop bc
    add c
    ld b, c
    or c
    pop bc
    ld b, c
    ld h, c
    ld b, c
    add c
    ld b, c
    or c
    ld b, c
    ld [$2508], a
    sub a
    ld b, a
    sub a
    ld h, a
    add a
    ld b, a
    adc e
    ld b, e
    ld h, c
    ld h, c
    ld sp, $6143
    ld sp, $6141
    ld h, c
    or c
    sub c
    add c
    sub c
    add c
    ld h, c
    add c
    add c
    ld b, c
    add c
    pop bc
    ld b, c
    ld h, c
    add c
    pop bc
    ld b, c
    ld h, c
    add c
    or c
    sub c
    add c
    ld h, c
    sub a
    ld b, a
    sub a
    or c
    sub c
    add c
    ld h, c
    add a
    ld b, a
    or e
    ld b, e
    ld h, e
    add e
    pop bc
    ld sp, $6141
    pop bc
    ld h, c
    or c
    sub c
    sub e
    add e
    ld h, c
    ld sp, $6191
    pop bc
    ld b, c
    ld h, c
    add c
    pop bc
    ld b, c
    ld h, b
    add b
    ld b, b
    ld h, b
    add e
    or c
    sub c
    add c
    sub c
    add c
    ld h, c
    cp $00
    ld [$c16b], sp
    ld b, c
    ld h, c
    add c
    pop bc
    ld b, c
    ld h, c
    add c
    rst $38
    sub c
    ld h, c
    add c
    sub c
    pop bc
    sub c
    add c
    ld h, c
    pop bc
    ld h, c
    add c
    sub c
    pop bc
    sub c
    add c
    ld h, c
    ld sp, $4131
    ld h, c
    pop bc
    ld sp, $6141
    pop bc
    ld sp, $6141
    pop bc
    ld sp, $6141
    rst $38
    call c, Call_000_09fd
    ld l, h
    db $fd
    add hl, bc
    ld l, h
    db $fd
    jr jr_002_6c38

    db $fd
    jr jr_002_6c3b

    cp $02
    add $6b
    db $fd
    add hl, bc
    ld l, h
    db $fd
    ld [hl-], a
    ld l, h
    db $fd
    dec h
    ld l, h
    or l
    ld b, $b5
    ld b, $b3
    rlca
    db $fd
    ld b, c
    ld l, h
    db $fd
    ld [hl-], a
    ld l, h
    db $fd
    dec h
    ld l, h
    db $fd
    ld b, c
    ld l, h
    db $fd
    dec h
    ld l, h
    or l
    ld b, $b5
    ld b, $b1
    rlca
    or c
    ld b, $b5
    ld b, $b5
    ld b, $b3
    ld b, $b5
    ld b, $b5
    ld [$08b3], sp
    cp $00
    jp nz, $b56b

    ld [$08b5], sp
    or e
    ld [$08b5], sp
    or l
    ld [$08b1], sp
    or c
    ld [$b5ff], sp
    ld [$08b5], sp
    or e
    ld [$08b5], sp
    or l
    ld [$08b3], sp
    rst $38
    or l
    ld b, $b5
    ld b, $b3
    rlca
    or l
    ld b, $b5
    ld b, $b3
    rlca
    rst $38
    or l
    ld b, $b5
    ld b, $b3
    rlca

jr_002_6c38:
    or l
    ld b, $b5

jr_002_6c3b:
    ld b, $b1
    rlca
    or c
    ld b, $ff
    or l
    ld b, $b5
    ld b, $b1
    rlca
    or c
    rlca
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
    db $ed
    nop
    add b
    ldh a, [rPCM34]
    db $ec
    ld [bc], a
    add sp, -$24
    or c
    push hl
    or c
    sub c
    add c
    sub c
    add c
    ld h, c
    ld b, c
    ld sp, $b3e6
    or b
    push hl
    jr nc, jr_002_6cda

    add b
    cp c
    db $fd
    cp d
    ld l, h
    db $fd
    cp a
    ld l, h
    db $fd
    cp d
    ld l, h
    ld b, e
    ld b, e
    ld b, c
    ld b, l
    db $fd
    cp d
    ld l, h
    db $fd
    cp a
    ld l, h
    db $fd
    cp d
    ld l, h
    ld b, e
    ld b, e
    ld b, c
    ld b, l
    cp $00
    xor c
    ld l, h
    ld b, c
    ld b, l
    ld h, c
    ld h, l
    rst $38
    ld b, c
    ld b, l
    ld hl, $ff25
    db $ec
    ld [bc], a
    call c, $e4c1
    ld b, c
    ld hl, $2111
    ld de, $b1e5
    sub c
    add c
    ld b, e
    ld b, b
    add b
    or b
    db $e4
    jr nc, jr_002_6d20

    push hl

jr_002_6cda:
    sub c
    db $e4
    ld de, $2143
    ld h, c
    sub e
    push hl
    sub c
    db $e4
    ld de, $2143
    ld de, $b3e5
    sub c
    db $e4
    ld de, $2143
    ld h, c
    sub c
    sub c
    add c
    ld b, c
    ld h, c
    add c
    sub c
    sub c
    sub e
    push hl
    sub c
    db $e4
    ld de, $dc42
    add c
    ld b, b
    call c, $21c1
    ld h, c
    sub d
    call c, $9091
    call c, $e5c1
    sub c
    db $e4
    ld de, $2043
    stop
    push hl
    or b
    or d
    call c, $80a1
    call c, $91c1
    db $e4
    ld de, $dc42

jr_002_6d20:
    sub c
    ld b, b
    call c, $21c1
    ld h, c
    sub d
    call c, $9081
    call c, $81c1
    ld b, b
    call c, Call_002_4081
    call c, Call_002_61c1
    call c, $6081
    call c, $80c1
    sub c
    sub c

jr_002_6d3c:
    sub e
    cp $00
    ld sp, hl
    ld l, h
    call c, $cf10
    db $e4
    ld b, b
    jp nz, $c240

    ld b, b
    ret z

    db $fd
    adc e
    ld l, l
    sub b
    ret nz

    sub b
    call nz, $c080
    add b
    call nz, $8bfd
    ld l, l
    or b
    jp nz, $c280

    sub b
    ret nz

    sub b
    jp nz, $94fd

    ld l, l
    jp nz, Jump_002_40e2

    ret nz

    db $e3
    sub b
    ret nz

    sub b
    jp nz, $c0b0

    add b
    ret nz

    add b
    jp nz, $94fd

    ld l, l
    ret nz

    ld [c], a
    ld b, b
    ret nz

    jr nz, jr_002_6d3c

    db $e3
    or b
    ret nz

    sub b
    ret nz

    add b
    jp nz, $c090

    sub b
    jp nz, $00fe

    ld h, c
    ld l, l
    sub b
    ret nz

    sub b
    call nz, $c090
    sub b
    call nz, $e2ff
    db $10
    ret nz

    db $e3
    sub b
    ret nz

    sub b
    jp nz, Jump_002_60e2

    ret nz

    db $e3
    sub b
    ret nz

    sub b
    rst $38
    call c, $cfcf
    rst $08
    rst $08
    rst $08
    call $b0d6
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or e
    ld de, $11b5
    or c
    ld de, $11b1
    or c
    ld de, $11b3
    or c
    ld de, $13b0

Call_002_6dc4:
    or b
    inc de
    or l
    ld de, $13b0
    or b
    inc de
    or e
    ld de, $11b5
    or c
    ld de, $12b0
    or b
    ld [de], a
    or c
    ld de, $11b1
    or c
    ld de, $13b0
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or l
    ld de, $11b1
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or c
    ld de, $12b0
    or b
    ld [de], a
    or c
    ld de, $11b3
    or e
    ld de, $11b1
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or c
    ld de, $11b1
    or e
    ld de, $11b1
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    or l
    ld de, $13b0
    or b
    inc de
    or e
    ld de, $11b3
    or b
    inc de
    or b
    inc de
    or b
    ld [de], a
    or b
    ld [de], a
    cp $00
    or h
    ld l, l
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$24
    or h
    push hl
    ld h, b
    or b
    db $e4
    jr nc, jr_002_6e7c

    ld l, e
    call c, $e5a2
    ld b, l
    cp c
    ld b, l
    cp c
    ld b, l
    inc sp
    ld h, c
    ld h, e
    ld b, l
    inc sp
    ld h, c
    ld h, e
    ld b, l
    cp c
    ld b, l
    cp c
    ld b, l
    inc sp
    ld h, c
    ld h, e
    ld b, l
    inc sp
    ld h, c
    ld h, e
    ld h, l
    ld b, e
    sub c
    sub e
    ld h, l
    ld b, e
    sub c
    sub e
    ld h, l
    ld b, e
    add c
    add e
    ld h, l
    ld b, e
    add c
    add e
    ld b, l
    inc sp
    ld h, c
    ld h, e
    ld b, l
    inc sp
    ld h, c
    ld h, e
    ld h, l
    ld b, e
    add c
    add e
    ld h, l
    ld b, e
    add c
    add e
    cp $00
    ld e, b
    ld l, [hl]

jr_002_6e7c:
    ld [$1108], a
    db $ec
    ld [bc], a
    call c, $e5c4
    or b
    db $e4
    jr nc, jr_002_6ee8

    and b
    cp e
    call c, $e5b2
    or c
    db $e4
    ld de, $4331
    ld sp, $dc13
    ld h, h
    db $e4
    or c
    db $e3
    ld de, $4331
    ld sp, $dc13
    or d
    push hl
    or c
    sub c
    add c
    sub e
    or c
    or e
    call c, $e481
    or c
    sub c
    add c
    sub e
    or c
    or e
    call c, $e5b2
    or c
    db $e4
    ld de, $4331
    ld sp, $dc13
    ld h, h
    db $e4
    or c
    db $e3
    ld de, $4331
    ld sp, $dc13
    or d
    push hl
    or c
    sub c
    add c
    sub e
    or c
    or e
    call c, $e481
    or c
    sub c
    add c
    sub e
    or c
    or e
    call c, $e4b5
    dec d
    push hl
    sub b
    db $e4
    db $10
    ld b, l
    db $10
    ld b, b
    ld h, e
    ld b, e
    inc sp
    inc de
    push hl
    or l
    add b

jr_002_6ee8:
    or b
    db $e4
    ld b, a
    call c, $e465
    or l
    add b
    or b
    db $e3
    ld b, a
    call c, $e5b5
    sub l
    ld h, b
    sub b
    db $e4
    scf
    ld b, e
    inc sp
    inc de
    inc bc
    push hl
    or l
    add b
    or b
    db $e4
    ld b, l
    push hl
    or b
    db $e4
    ld b, b
    call c, $8fb7
    cp $00
    ret c

    ld l, [hl]
    call c, $c912
    db $e4
    ld h, b
    ret nz

    or b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    or b
    call nz, Call_002_43e3
    push bc
    db $e4
    or b
    call nz, Call_002_43e3
    db $e4
    ld h, b
    ret nz

    or b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
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

    ld b, b
    ret nz

    sub b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    ld h, b
    ret nz

    ld [hl], b
    ret nz

    add b
    ret nz

    db $e4
    sub b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    sub b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    sub b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    sub b
    ret nz

    db $e3
    db $10
    ret nz

    cp $02
    adc a
    ld l, a
    db $e4
    add b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    cp $02
    xor e
    ld l, a
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

    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

jr_002_6fd0:
    cp $02
    ret nz

    ld l, a

jr_002_6fd4:
    add b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    cp $02
    call nc, $fe6f
    nop
    adc a
    ld l, a
    db $ed
    nop
    ld h, h
    cp $00
    or $6f
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or e
    db $e4
    jr nz, jr_002_7013

    nop
    push hl
    or b
    and c
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, l
    jr nz, jr_002_6fd0

    jr nz, jr_002_6fd4

    sub c
    ld [hl], c
    sub c

jr_002_7013:
    or e
    and c
    sub e
    ld [hl], c
    db $e4
    inc bc
    ld hl, $23c3
    ld de, $e501
    or c
    db $e4
    inc bc
    ld b, c
    inc hl
    ld bc, $b3e5
    db $e4
    ld bc, $73c3
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $e561
    sub c
    db $e4
    ld hl, $e561
    sub c
    db $e4
    ld hl, $21e5
    db $e4
    ld hl, $e5c1
    ld hl, $03e4
    push hl
    or c
    and c
    or c
    db $e4

jr_002_7047:
    ld bc, $e551
    ld [hl], c

jr_002_704b:
    db $e4
    ld bc, $3151
    ld bc, $a1e5
    ld [hl], c
    jp $e4a3


    ld bc, $a1e5
    db $e4
    ld bc, $b7dc
    push hl
    ld [hl], e
    ld hl, $6355
    ld hl, $23c3
    call c, $91b3
    ld [hl], c
    sub c
    cp $00
    inc de
    ld [hl], b
    db $ed
    nop
    ld h, h
    cp $00
    ld a, b
    ld [hl], b
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or e
    push hl
    jr nz, jr_002_7047

    jr nz, jr_002_704b

    sub c
    ld [hl], c
    sub c
    cp $00
    inc de
    ld [hl], b
    db $ec
    inc bc
    ld [$260a], a
    call c, $e4c7
    or b
    and b
    sub b
    add b
    ld [hl], c
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_002_70c5

    push hl
    ld [hl], b
    jp nz, $c270

    jr nz, @-$3e

    db $e4
    ld hl, $6151
    call c, Call_002_73c7
    ld hl, $6355

Jump_002_70b1:
    ld [hl], c
    jp Jump_002_7173


    and c
    or c
    db $e3
    inc bc
    db $e4
    ld [hl], c
    and l
    or e
    db $e3

jr_002_70be:
    ld bc, $03c3
    ld bc, $b1e4
    db $e3

jr_002_70c5:
    ld bc, $b0dc
    cpl
    call c, Call_000_25b5
    call c, Call_002_53c7
    ld hl, $2101
    call c, $07b0
    call c, Call_000_07c7
    db $e4
    ld bc, $a3c3
    ld [hl], c
    ld d, c
    call c, Call_002_7fb0
    call c, Call_002_71b3
    push hl
    ld [hl], c
    jp $e473


    ld hl, $6151
    cp $00
    xor e
    ld [hl], b
    db $ec
    inc bc
    ld [$260a], a
    call c, $e5c7
    ld [hl], b
    jp nz, $c270

    jr nz, jr_002_70be

    db $e4
    ld hl, $6151
    cp $00
    xor e
    ld [hl], b
    call c, $e314
    ld hl, $11c1
    pop bc
    ld bc, $e4c1
    or c
    pop bc
    ld [hl], b
    jp nz, $c270

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ld [hl], c
    db $e3
    ld hl, $71e4
    pop bc
    db $e3
    ld hl, $71e4
    pop bc
    db $e3
    ld hl, $71e4
    jp Jump_000_23e3


    db $e4
    ld [hl], c
    and c
    or c
    ld [hl], c
    db $e3
    ld bc, $71e4
    pop bc
    db $e3
    ld bc, $71e4
    pop bc
    or c
    db $e3
    ld bc, $03c3
    ld bc, $b1e4
    sub c
    ld h, c
    sub c
    pop bc
    ld h, c
    sub c
    ld h, c
    pop bc
    sub c
    ld h, c
    sub c
    pop bc
    ld h, c
    sub c
    ld h, c
    db $e3
    ld hl, $91e4
    ld b, c
    db $e3
    ld bc, $e4c1
    ld b, c
    db $e3

Jump_002_7161:
    ld bc, $41e4
    ld d, c
    ld [hl], c
    ld b, c
    jp $e341


    ld bc, $b1e4
    and c
    sub c
    ld [hl], c
    and c
    pop bc
    ld [hl], c

Jump_002_7173:
    and c
    ld [hl], c
    pop bc
    and c
    ld [hl], c
    db $e3
    ld hl, $71e4
    pop bc
    db $e3
    ld hl, $71e4
    pop bc
    db $e3
    ld hl, $00fe
    ld e, $71
    call c, $e414
    ld [hl], b
    jp nz, $c270

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    cp $00
    ld e, $71
    ld hl, sp-$13
    ld bc, $f000
    ld [hl], a
    db $ec
    ld [bc], a
    push de
    or c
    push hl
    sub c
    sub c
    ld [hl], c
    ld [hl], c
    ld d, c
    ld b, c
    ld d, c
    sub c
    db $e4
    inc bc
    ld b, e
    push hl
    ld d, e

Call_002_71b3:
    rst $38
    ld hl, sp-$14
    ld [bc], a
    push de
    jp nz, Jump_002_51e3

    ld b, b
    ret nz

    ld hl, $c000
    db $e4
    and c
    db $e3

Call_002_71c3:
    ld bc, $4121
    ld d, e
    ld [hl], e
    ld d, e
    rst $38
    ld hl, sp-$2b
    db $10
    db $e3
    nop
    ret nz

    db $e4
    ld d, c
    db $e3

Call_002_71d3:
    nop
    ret nz

    db $e4
    and b
    ret nz

    sub b
    ret nz

    ld [hl], b
    ret nz

    ld d, b
    ret nz

    ld b, b
    ret nz

    db $e3
    ld d, b
    jp nz, $c200

    db $e4
    ld d, c
    pop bc
    rst $38

jr_002_71e9:
    ld hl, sp-$13

jr_002_71eb:
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
    jr nc, jr_002_71e9

    jr nc, jr_002_71eb

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
    ld [bc], a
    add sp, -$2b
    and h
    push hl
    and e
    push de
    or c
    db $e4
    ld bc, $0000
    push de
    and h
    inc sp
    push de
    or c
    ld d, c
    ld d, b
    ld d, b
    push de
    or h
    and a
    rst $38
    ld hl, sp-$16
    inc b
    inc hl
    db $ec
    ld [bc], a
    push de
    pop de
    db $e4
    ld [hl], c
    ld [hl], b
    ld [hl], b
    push de
    call nz, $d533
    pop de
    add c
    add b
    add b
    and c
    and b
    and b
    push de
    call nz, Call_000_37e3
    rst $38
    ld hl, sp-$2b
    db $10
    db $e4
    inc sp
    add e
    ld [hl], e
    ld d, e
    scf
    rst $38
    db $ed
    nop
    add b
    ldh a, [rPCM34]
    db $ec
    ld bc, $08ea
    inc [hl]
    add sp, -$24
    and h
    set 4, l
    ld b, c
    ld h, c
    ld b, e
    inc hl
    ld de, $4121
    pop bc
    ld b, e
    ld h, c
    ld hl, $6343
    add e
    jp $8343


    jp Jump_002_4111


    ld h, e
    inc hl
    ld b, e
    inc hl
    ld de, $4121
    pop bc
    ld b, e
    ld h, c
    ld hl, $6343
    add e
    ld h, e
    ld b, e
    ld h, e
    jp Jump_002_4111


    ld h, e
    inc hl
    ld b, e
    inc hl
    ld de, $4121
    pop bc
    ld b, e
    ld h, c
    ld hl, $6343
    add e
    ld h, a
    add e
    ld b, e
    jp Jump_002_6143


    ld b, c
    inc hl
    jp Jump_002_4323


    inc de
    jp $2113


    ld de, $b3e6
    ld b, e
    or e
    push hl
    ld hl, $b1e6
    sub e
    jp $b193


    sub c
    add e
    jp $8313


    sub e
    jp $b393


    or e
    jp $27e5


    cp $00
    add l
    ld [hl], d
    db $ec
    nop
    ld [$240c], a
    call c, $e5c5
    sub c
    ld b, c
    sub e
    or e
    db $e4
    inc hl
    ret c

    push bc
    ld de, $1121
    push hl
    or d
    sub d
    or l
    add l
    sub d
    or d
    db $e4
    dec d
    dec h
    ld [de], a
    push hl
    or d
    db $e4
    ld b, l
    ld [hl+], a
    ld [de], a
    push hl
    or l
    db $e4
    ld [de], a
    push hl
    or d
    sub d
    ld b, d
    sub l
    or l
    db $e4
    dec h
    ld de, $1121
    push hl
    or d
    sub d
    or l
    add l
    sub d
    or d
    db $e4
    dec d
    dec h
    ld [de], a
    push hl
    or d
    db $e4
    ld b, l
    ld [hl+], a
    ld [de], a
    push hl
    cp e
    sub d
    ld b, d
    sub l
    or l
    db $e4
    dec h
    ld de, $1121
    push hl
    or d
    sub d
    or l
    add l
    sub d
    or d
    db $e4
    dec d
    dec h
    ld [de], a
    push hl
    or d
    db $e4
    ld b, l
    ld [hl+], a
    ld [de], a
    push hl
    cp e
    jp nz, Jump_000_12e4

    push hl
    or d
    db $e4
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld b, d
    push hl
    or d
    add d
    ld h, d
    ld b, d
    ld h, d
    add d
    or d
    jp nz, $8292

    sub d
    sub d
    or d
    sub d
    or d
    db $e4
    ld [de], a
    push hl
    add d
    ld h, d
    ld b, d
    ld b, d
    ld h, d
    add d
    or d
    jp nz, $4262

    ld h, d
    ld h, d
    add d
    ld h, d
    add d
    sub d
    ld b, d
    ld [de], a
    and $b2
    sub d
    or d
    push hl
    ld [de], a
    ld b, d
    jp nz, $4262

    ld h, d
    ld h, d
    add d
    sub d
    or d
    db $e4
    ld [de], a
    ld [hl+], a
    ld [de], a
    push hl
    or d
    db $e4
    ld b, d
    ld [hl+], a
    ld [de], a
    push hl
    or d
    cp $00
    pop af
    ld [hl], d
    call c, $cf13
    set 4, h
    or c
    add c
    sub a
    ld h, a
    add e
    jp $97b7


    or a
    sub a
    add a
    sub a
    ld h, a
    add a

Call_002_73b1:
    or a

Call_002_73b2:
    sub e
    ld b, e
    or e

Call_002_73b5:
    ld b, e
    sub e
    ld b, e
    add e
    ld b, e
    sub e
    ld b, e
    ld h, e
    ld [hl], e
    add e
    sub e
    db $e3
    daa
    rla
    rla
    db $e4
    or a
    or a

Call_002_73c7:
    sub a
    sub a
    add a
    add a
    ld h, a
    ld h, a
    ld b, a
    ld b, a
    ld h, a
    ld h, a
    add a
    or a
    cp $00
    sbc [hl]
    ld [hl], e
    db $ed
    nop
    sub h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3208], a
    add sp, -$24
    or [hl]
    rst $00
    push hl
    ld b, c
    ld sp, $0111
    and $b1
    call $b3e5
    db $e4
    ld de, $2030
    inc de
    push hl
    or e
    add a
    ld b, a
    sub e
    add c
    ld h, c
    add c
    sub c
    or c
    db $e4
    ld de, $13cf
    push hl
    or c
    db $e4
    db $10
    jr nc, jr_002_741b

    push hl
    or e
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jp nz, $b387

    sub c
    add c
    ld h, c
    add c
    sub c
    or c
    ld b, c
    ld h, c
    add c

jr_002_741b:
    pop bc
    db $e4
    ld b, e
    push hl
    or e
    ld h, c
    add c
    sub c
    pop bc
    db $e4
    ld h, e
    inc sp
    push hl
    ld b, c
    jp $c361


    sub c
    pop bc
    or c
    rst $08
    rst $08
    call Call_002_674f
    add e
    ld h, e
    ld b, c
    call $00fe
    db $ed
    ld [hl], e
    db $ec
    inc bc
    ld [$2308], a
    call c, $e4c2
    ld b, c
    ld sp, $e511
    or c
    sub c
    or c
    db $e4
    ld de, $4531
    call c, $ecc2
    ld [bc], a
    db $e4
    ld b, b
    push hl
    or b
    db $e4
    ld de, $4031
    ld h, b
    add b
    sub b
    call c, $85a6
    call c, $90c2
    add b
    call c, Call_002_6dc4
    call c, Call_002_40c2
    push hl
    or b
    db $e4
    ld de, $4031
    ld h, b
    add b
    sub b
    call c, $85c4
    call c, Call_002_40c2
    add b
    call c, $bdc5
    call c, Call_002_40c2
    push hl
    or b
    db $e4
    ld de, $4031
    ld h, b
    add b
    sub b
    call c, $85a6
    call c, $90c2
    add b
    call c, Call_002_67c4
    call c, $eca1
    ld bc, $80e5
    add b
    add b
    add b
    add b
    ret nz

    call c, $ecc2
    ld [bc], a
    db $e4
    ld b, b
    push hl
    or b
    db $e4
    ld de, $4031
    ld h, b
    add b
    sub b
    call c, $85c4
    ld b, b
    add b
    call c, $b7c6
    call c, Call_000_10c2
    push hl
    or b
    db $e4
    db $10
    jr nc, jr_002_7502

    call c, $83c7
    ld b, e
    call c, $30c2
    db $10
    jr nc, jr_002_7509

    ld h, e
    call c, $b3c7
    ld h, e
    call c, Call_000_10c2
    push hl
    or b
    db $e4
    db $10
    jr nc, jr_002_7518

    ld b, b
    jr nc, jr_002_751a

    ld h, b
    add c
    add b
    sub b
    add b
    sub b
    or b
    ld h, b
    jr nc, jr_002_74f4

    push hl
    or b
    db $e4
    db $10
    jr nc, jr_002_754a

    call c, $b7c2
    call c, $e5b7
    ld b, a
    and $b3
    push hl

jr_002_74f4:
    ld h, e
    add e
    sub e
    or a
    or a
    add e
    db $e4
    inc sp
    inc de
    inc sp
    ld b, c
    ld sp, $3111

jr_002_7502:
    call c, Call_002_45c2
    ld b, b
    push hl
    or b
    db $e4

jr_002_7509:
    ld de, $4031
    ld h, b
    add b
    sub b
    cp $00
    ld e, [hl]
    ld [hl], h
    call c, $cf11
    db $e4
    ld b, c

jr_002_7518:
    add c
    ld b, c

jr_002_751a:
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld h, c
    sub c
    ld h, c
    sub c
    or c
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld h, c
    sub c
    ld h, c
    sub c
    or c
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld h, c
    sub c
    ld h, c
    sub c
    or c
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld b, c

jr_002_754a:
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld h, c
    sub c
    ld h, c
    sub c
    or c
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld b, c
    pop bc
    ld b, e
    add e
    ld h, c
    sub c
    ld h, c
    pop bc
    ld h, e
    sub e
    ld de, $41c3
    jp $9181


    or c
    rst $00
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld h, c
    sub c
    ld h, c
    sub c
    or c
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld h, c
    sub c
    ld h, c
    sub c
    or c
    sub c
    add c
    ld h, c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    cp $00
    rra
    ld [hl], l
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$24
    cpl
    rst $00
    push hl
    daa
    db $ec
    ld [bc], a
    call c, Call_002_73b2
    or e
    ld [hl], c
    or e
    ld [hl], c
    ld b, b
    ld b, b
    ld [hl], b
    ld b, b
    or c
    db $e4
    ld bc, $97e5
    ld h, e
    sub e
    ld h, c
    sub l
    sub b
    or b
    db $e4
    nop
    push hl
    or b
    sub c
    or c
    ld [hl], e
    db $e4
    ld [hl], e
    push hl
    ld [hl], e
    or e
    ld [hl], c
    or e
    ld [hl], c
    ld b, b
    ld h, b
    ld [hl], b
    sub b
    or c
    db $e4
    ld bc, $97e5
    sub c
    or c
    db $e4
    ld bc, $b1e5
    sub c
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, e
    jr nz, jr_002_7624

    ld h, b
    ld [hl], b
    sub a
    call c, $b794
    ld [hl], e
    inc hl
    ld [hl], e
    sub c
    db $e4
    ld bc, $b7e5
    sub a
    ld h, e
    ld [hl], e
    sub e
    ld [hl], e
    ld h, e
    sub e
    or a
    ld [hl], e
    inc hl
    ld [hl], e
    sub c
    db $e4
    ld bc, $b7e5
    sub a
    ld h, e
    ld [hl], e
    sub e
    ld [hl], e
    ld h, e
    sub e
    cp $00
    and a
    ld [hl], l
    db $ec
    inc bc
    call c, $e4c2
    jr nz, jr_002_7624

    jr nz, jr_002_7656

    ld h, b
    ld b, b
    ld h, b
    ld [hl], b
    call c, $97a0
    db $ec
    ld [bc], a
    call c, $e4c2
    or e
    ld [hl], e

jr_002_7624:
    or c
    ld [hl], l
    or b
    ld [hl], b
    sub b
    or b
    db $e3
    ld bc, $b1e4
    sub a
    sub e
    ld h, e
    sub c
    ld h, l
    sub b
    ld [hl], b
    ld h, b
    ld [hl], b
    sub c
    or c
    ld [hl], e
    or e
    or e
    ld [hl], e
    or c
    ld [hl], e
    push hl
    or c
    db $e4
    or b
    ld [hl], b
    sub b
    or b
    db $e3
    ld bc, $b1e4
    sub a
    sub c
    ld [hl], c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $2711
    db $e3
    daa

jr_002_7656:
    call c, $e4b4
    daa
    ld bc, $b1e5
    sub c
    or c
    db $e4
    ld b, e
    ld h, e
    daa
    rlca
    push hl
    sub c
    or c
    db $e4
    ld bc, $4121
    ld bc, $4121
    daa
    daa
    ld bc, $b1e5
    sub c
    or c
    db $e4
    ld b, e
    ld hl, $2741
    rlca
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    ld b, c
    ld hl, $2741
    cp $00
    dec e
    db $76
    call c, $c713
    db $e3
    jr nz, @+$12

    jr nz, jr_002_76d0

    ld h, b
    ld b, b
    ld h, b
    ld [hl], b
    db $e4
    ld hl, $21b1
    or c
    ld hl, $21b1
    or c
    ld hl, $21b1
    or c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $2191
    sub c
    ld hl, $21b1
    or c
    ld hl, $21b1
    or c
    ld hl, $21b1
    or c
    ld hl, $21b1
    or c
    ld hl, $2191
    sub c
    ld hl, $7191
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld de, $c521
    ld h, c

jr_002_76d0:
    jp Jump_002_7161


    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    or c
    ld [hl], c
    db $e3
    ld b, c
    ld hl, $2101
    db $e4
    or c
    ld [hl], c
    db $e3
    ld bc, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld b, c
    ld hl, $2101
    db $e4
    or c
    sub c
    db $e3
    ld bc, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    db $e3
    ld hl, $71e4
    or c
    ld [hl], c
    db $e3
    ld b, c
    ld hl, $2101
    db $e4
    or c
    ld [hl], c
    db $e3
    ld bc, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $61e4
    db $e3
    ld hl, $e401
    or c
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    cp $00
    sub h
    db $76
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$340c], a
    add sp, -$24
    or l
    jp Jump_000_23e5


    ld b, l
    ld de, $b1dc
    inc hl
    call c, $b3b5
    db $e4
    dec b
    push hl
    sub c
    call c, $b3b1
    call c, Call_002_73b5
    ld h, e
    ld b, c
    ld h, c
    call c, Call_002_73b1
    call c, Call_002_73b5
    ld h, e
    ld b, e
    inc hl
    ld b, e
    ld h, l
    sub c
    call c, Call_002_73b1
    call c, $b3b5
    db $e4
    dec b
    push hl
    sub c
    or e
    ld [hl], e
    ld h, d
    ld b, b
    ld h, c
    sub c
    call c, $73a2
    db $e4
    jr nz, @+$42

    inc hl
    call c, Call_000_2072
    ld b, b
    inc hl
    call c, $e5a7
    or l
    ld [hl], c
    ld b, a
    db $e4
    dec b
    push hl
    sub c
    ld h, a
    db $e4
    ld h, l
    ld hl, $b1e5
    sub c
    ld [hl], c
    ld h, c
    ld [hl], a
    ld h, e
    ld b, e
    cp $00
    ld c, e
    ld [hl], a
    db $ec
    inc bc
    ld [$230a], a
    call c, $e5c7
    ld [hl], l
    sub b
    or b
    db $e4
    dec b
    jr nz, jr_002_77f6

    call c, Call_000_23c1
    call c, Call_002_73c7
    sub l
    ld [hl], b
    ld h, b
    ld b, e
    inc hl
    ld [bc], a
    push hl
    or b
    db $e4
    ld bc, $4020
    call c, Call_000_23c1
    call c, $e5c7
    or a
    sub e
    ld [hl], l
    sub b
    or b
    db $e4
    dec b
    jr nz, jr_002_7817

    call c, Call_000_23c1
    call c, Call_002_73c7
    sub l
    ld [hl], b
    ld h, b
    ld b, e
    inc hl
    ld [bc], a
    push hl
    or b
    db $e4
    ld bc, $4020
    call c, Call_000_23c1
    call c, $e5c7
    sub e
    ld [hl], e
    ld h, e
    call c, $e4b0
    dec h

jr_002_77f6:
    push hl
    or c
    ld [hl], a
    db $e4
    ld b, l
    ld bc, $97e5
    db $e4
    sub l
    ld h, c
    ld hl, $e501
    or c
    sub c
    or e
    db $e4
    inc hl
    push hl
    or c
    sub l
    cp $00
    xor h
    ld [hl], a
    call c, $e410
    ld [hl], b
    jp nz, Jump_002_70b1

jr_002_7817:
    ld [hl], b
    sub b
    ret nz

    sub b
    ret nz

    db $e3
    ld bc, $60e4
    ret nz

    ld [hl], b
    jp nz, Jump_002_70b1

    ld [hl], b
    sub b
    ret nz

    sub b
    ret nz

    db $e3
    ld bc, $60e4
    ret nz

    ld [hl], b
    jp nz, Jump_002_70b1

    ld [hl], b
    sub b
    ret nz

    sub b
    ret nz

    db $e3
    ld bc, $60e4
    ret nz

    ld [hl], b
    jp nz, Jump_002_70b1

    ld [hl], b
    sub b
    ret nz

    sub b
    ret nz

    db $e3
    ld bc, $90e4
    ret nz

    ld [hl], b
    jp nz, Jump_002_70b1

    ld [hl], b
    sub b
    ret nz

    sub b
    ret nz

    db $e3
    ld bc, $60e4
    ret nz

    ld [hl], b
    jp nz, Jump_002_70b1

    ld [hl], b
    sub b
    ret nz

    sub b
    ret nz

    db $e3
    ld bc, $60e4
    ret nz

jr_002_7867:
    ld [hl], b
    jp nz, Jump_002_70b1

    ld [hl], b
    sub b
    ret nz

    sub b
    ret nz

    db $e3
    ld bc, $60e4
    ret nz

    ld [hl], b
    jp nz, $90b3

    ret nz

    sub b
    ret nz

    db $e3
    inc bc
    db $e4
    or b
    jp nz, Jump_000_21e3

    db $e4
    or b
    or b
    or b
    ret nz

    or b
    ret nz

    db $e3
    ld bc, $b0e4
    ret nz

    ld [hl], b
    jp nz, Jump_002_41e3

    nop
    nop
    nop
    ret nz

    nop
    ret nz

    ld b, c
    nop
    ret nz

    db $e4
    sub b
    jp nz, $91e3

    ld h, b
    ld h, b
    jr nz, @-$3e

    jr nz, jr_002_7867

    ld hl, $c000
    db $e4
    or b
    jp nz, Jump_000_21e3

    nop
    nop
    db $e4
    or b
    ret nz

    or b
    ret nz

    sub c
    db $e3
    nop
    ret nz

    cp $00
    ld [de], a
    ld a, b
    db $ed
    nop
    sbc h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$340c], a
    add sp, -$24
    or l
    push hl
    ld b, e
    db $10
    jr nz, @+$43

    sub e
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    sub e
    ld h, b
    add b
    sub c
    ld b, e
    ld de, $9141
    add c
    or c
    sub c
    add c
    ld b, c
    ld h, c
    add c
    ld de, $4121
    ld h, c
    ld b, e
    db $10
    jr nz, jr_002_792f

    sub e
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    sub e
    ld h, b
    add b
    sub c
    ld b, e
    db $10
    jr nz, jr_002_793e

    sub c
    add c
    ld h, c
    sub c
    add c
    ld b, c
    ld h, c
    add c
    ld h, e
    ld b, e
    ld h, c
    add c
    ld h, c
    sub c
    add c
    or c
    sub c
    db $e4
    ld de, $1121
    push hl
    or c
    sub c
    add b
    sub b
    or c
    db $e4
    ld de, $e541
    sub c
    db $e4
    ld hl, $81e5
    db $e4
    ld de, $61e5
    or c
    add c
    sub c
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    add c

jr_002_792f:
    or c
    cp $00
    ret


    ld a, b
    db $ec
    inc bc
    ld [$230a], a
    call c, $e5c7
    sub a
    db $e4

jr_002_793e:
    inc hl
    inc de
    push hl
    or l
    sub b
    or b
    db $e4
    rla
    push hl
    sub a
    db $e4
    inc hl
    inc de
    push hl
    or l
    db $e4
    db $10
    push hl
    or b
    sub a
    sub a
    db $e4
    inc hl
    inc de
    push hl
    or l
    sub b
    or b
    db $e4
    rla
    push hl
    sub a
    db $e4
    inc hl
    inc de
    push hl
    or l
    db $e4
    db $10
    push hl
    or b
    sub a
    or e
    db $e4
    inc de
    inc hl
    ld b, e
    ld h, a
    or a
    sub e
    add e
    ld h, e
    ld b, e
    ld h, a
    ld b, a
    cp $00
    add hl, sp
    ld a, c
    call c, $e410
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    sub c
    add c
    ld h, c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    sub c
    add c
    ld h, c
    add c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    add c
    ld b, c
    add c
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
    add c
    ld b, c
    add c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    or c
    ld b, c
    sub c
    ld b, c
    add c
    ld b, c
    ld h, c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    or c
    sub c
    add c
    ld h, c
    ld h, c
    ld b, c
    add c
    ld b, c
    sub c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    sub c
    ld b, c
    add c
    ld b, c
    cp $00
    ld a, e
    ld a, c
    call c, $12fd
    ld a, d
    or c
    ld b, $b0
    ld b, $b0
    ld b, $b1
    ld b, $b0
    ld b, $b0
    ld b, $b1
    ld b, $b0
    ld b, $b0
    ld b, $b0
    ld b, $b0
    ld b, $b0
    ld b, $b0
    ld b, $fe
    inc b
    pop hl
    ld a, c
    db $fd
    ld [de], a
    ld a, d
    db $fd
    ld [de], a
    ld a, d
    db $fd
    ld [de], a
    ld a, d
    db $fd
    ld [de], a
    ld a, d
    cp $00
    pop hl
    ld a, c
    or c
    ld b, $b0
    ld b, $b0
    ld b, $b1
    ld b, $b0
    ld b, $b0
    ld b, $b1
    ld b, $b0
    ld b, $b0
    ld b, $b1
    ld b, $b0
    ld b, $b0
    ld b, $ff
    db $ed
    nop
    sbc b
    ldh a, [rPCM34]
    db $ec
    ld bc, $eae8
    nop
    adc b
    call c, $cf87
    rst $08
    rst $08
    rst $08
    call c, $e5a7
    ld [hl], a
    ld [hl], a
    ld b, a
    ld b, a
    ld [hl], e
    ld h, e
    ld b, e
    or e
    rla
    rla
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    or e
    ld [hl], e
    ld h, e
    or e
    db $e4
    rlca
    rlca
    push hl
    ld [hl], a
    ld [hl], a
    ld b, a
    ld b, a
    ld [hl], e
    ld h, e
    ld b, e
    or e
    rla
    rla
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    or e
    ld [hl], e
    ld h, e
    or e
    rlca
    rlca
    rst $08
    rst $08
    rst $08
    rst $08
    cp $00
    ld a, $7a
    ld [$3400], a
    db $ec
    inc bc
    call c, $e391
    inc bc
    ld [hl], e
    or e
    ld h, e
    cp $00
    ld a, b
    ld a, d
    ld [$1104], a
    call c, $cf35
    rst $08
    rst $08
    rst $08
    call c, $e425
    ld c, a
    cpl
    rrca
    ld b, e
    inc bc
    push hl
    or e
    db $e4
    ld b, e
    ld c, a
    cpl
    rrca
    ld b, e
    inc bc
    push hl
    or e
    db $e4
    ld b, e
    ld c, a
    cpl
    rrca
    ld b, e
    inc bc
    push hl
    or e
    db $e4
    ld b, e
    call c, $e235
    or e
    ld [hl], e
    ld h, e
    or e
    call c, $b325
    ld [hl], e
    ld h, e
    or e
    pop hl
    or e
    ld [hl], e
    ld h, e
    or e
    db $e4
    ld b, e
    ld [hl], e
    ld h, e
    or e
    ld c, a
    cpl
    rrca
    ld b, e
    inc bc
    push hl
    or e
    db $e4
    ld b, e
    ld c, a
    cpl
    rrca
    ld b, e
    inc bc
    push hl
    or e
    db $e4
    ld b, e
    ld c, a
    cpl
    rrca
    ld b, e
    inc bc
    push hl
    or e
    db $e4
    ld b, e
    call c, $e225
    or e
    ld [hl], e
    ld h, e
    or e
    pop hl
    or e
    ld [hl], e
    ld h, e
    or e
    ldh [$b3], a
    ld [hl], e
    ld h, e
    or e
    db $e4
    ld b, e
    ld [hl], e
    ld h, e
    or e
    cp $00
    adc h
    ld a, d
    call c, $cfcf
    rst $08
    rst $08
    or a
    rlca
    or a
    rlca
    cp $00
    ld sp, hl
    ld a, d
    db $ed
    nop
    add h
    ldh a, [rPCM34]
    ld [$3406], a
    add sp, -$14
    ld [bc], a
    call c, $e592
    db $eb
    nop
    ld c, c
    nop
    db $eb
    nop
    ld c, c
    ld [hl], b
    db $eb
    nop
    ld c, c
    nop
    db $eb
    nop
    ld c, c
    ld [hl], b
    jp $03ec


    db $fd
    ld [hl-], a
    ld a, e
    call c, Call_002_63a4
    db $fd
    ld [hl-], a
    ld a, e
    call c, Call_002_63a4
    cp $00
    ld [hl+], a
    ld a, e
    call c, $e5a2
    inc bc
    ld [hl], e
    inc bc
    ld [hl], e
    inc bc
    ld [hl], e
    inc bc
    rst $38
    db $ec
    ld [bc], a
    ld [$2508], a
    call c, $e4a2
    ld [hl], b
    jr nz, jr_002_7bb8

    jr nz, @-$3b

    db $ec
    inc bc
    db $fd
    ld e, h
    ld a, e
    call c, $93b5
    db $fd
    ld e, h
    ld a, e
    call c, $b3b5
    cp $00
    ld c, h
    ld a, e
    call c, $e5b2
    ld [hl], e
    inc hl
    ld [hl], e
    inc hl
    ld [hl], e
    inc hl
    ld [hl], e
    rst $38
    call c, $c710
    db $fd
    ld a, b
    ld a, e
    db $e4
    sub e
    db $fd
    ld a, b
    ld a, e
    db $e4
    or e
    cp $00
    ld l, d
    ld a, e
    push hl
    sub c
    pop bc
    db $e4
    ld hl, $e5c1
    sub c
    pop bc
    db $e4
    ld hl, $e5c1
    sub c
    pop bc
    db $e4
    ld hl, $e5c1
    sub c
    pop bc
    rst $38
    db $ed
    nop
    adc d
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$2208], a
    add sp, -$24
    or l
    push hl
    ld [hl], l
    nop
    ld [hl], b
    ld d, l
    and $a0
    push hl
    ld d, b
    ld b, l
    and $90
    push hl
    ld b, b
    ld d, e
    ld [hl], e
    ld b, e
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $dc01
    or c
    ld [hl+], a
    call c, Call_002_40b5

jr_002_7bb8:
    ld d, e
    ld b, c
    ld hl, $5141
    ld b, e
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $2101
    jr nz, @+$42

    ld d, e
    ld b, c
    ld hl, $5141
    db $e4
    inc bc
    push hl
    and c
    db $e4
    ld bc, $a1e5
    sub c
    ld [hl], c
    ld d, c
    call c, $a2b1
    call c, $50b5
    ld d, e
    ld b, c
    ld hl, $5141
    db $e4
    inc bc
    push hl
    and c
    db $e4
    ld bc, $a1e5
    sub c
    ld [hl], c
    ld d, c
    ld hl, $4020
    ld d, e
    and c
    ld d, b
    and b
    db $e4
    inc hl
    push hl
    ld b, c
    ld bc, $7141
    ld d, c
    ld b, c
    ld hl, $5141
    ld hl, $0141
    ld hl, $0141
    ld hl, $0001
    jr nz, jr_002_7c4e

    ld bc, $2141
    ld bc, $0041
    ld b, b
    ld d, e
    ld b, c
    ld hl, $5141
    ld b, c
    ld bc, $7141
    ld d, c
    ld b, c
    ld hl, $2141
    ld d, c
    ld hl, $0141
    ld hl, $2101
    ld bc, $2000
    ld b, e
    ld hl, $5141
    ld d, c
    ld [hl], c
    ld b, b
    ld [hl], b
    and c
    db $e4
    ld bc, $a1e5
    sub c
    ld [hl], c
    sub c
    cp $00
    xor e
    ld a, e
    db $ec
    inc bc
    ld [$250a], a
    call c, $e4c7
    dec b
    push hl
    ld [hl], b
    db $e4
    nop
    push hl
    and l
    ld d, b

jr_002_7c4e:
    and b
    call c, $9ba0
    call c, $b3c7
    db $e4
    dec bc
    push hl
    ld [hl], c
    db $e4
    ld bc, $c2dc
    ld [hl+], a
    push hl
    and b
    call c, $abc7
    db $e4
    dec bc
    push hl
    ld [hl], c
    db $e4
    ld bc, $c4dc
    push hl
    and c
    call c, $a0c7
    db $e4
    nop
    dec hl
    ld c, e
    ld hl, $dc41
    jp nz, Jump_000_2052

    call c, Call_000_23c7
    call c, $a2c2
    ld d, b
    call c, Call_002_53c7
    ld c, e
    ld hl, $5141
    jr nz, jr_002_7cda

    xor e
    push hl
    ld [hl], l
    db $e4
    dec b
    push hl
    ld [hl], e
    and e
    sub e
    ld [hl], e
    ld d, e
    call c, $41c3
    call c, Call_002_40c7
    ld d, b
    ld [hl], l
    ld [hl], c
    db $e4
    ld bc, $71e5
    and e
    sub e
    ld [hl], e
    ld bc, $7521
    db $e4
    dec b
    push hl
    ld [hl], e
    and e
    sub e
    ld [hl], e
    ld d, e
    call c, $41c3
    call c, Call_002_40c7
    ld d, b
    ld [hl], e
    call c, Call_002_71c3
    call c, $70c7
    sub b
    and e
    call c, $e4c4
    ld bc, $c7dc
    nop
    jr nz, jr_002_7d14

    cp $00
    ld d, l
    ld a, h
    call c, $cf11
    ret


    db $e4
    ld [hl], c
    ld d, c
    ld hl, $0efd
    ld a, l
    db $fd
    rla

jr_002_7cda:
    ld a, l
    db $fd
    ld c, $7d
    db $fd
    rla
    ld a, l
    db $fd
    ld c, $7d
    db $fd
    rla
    ld a, l
    db $fd
    ld c, $7d
    db $fd
    rla
    ld a, l
    db $fd
    ld c, $7d
    db $fd
    jr nz, jr_002_7d70

    db $fd
    ld c, $7d
    db $fd
    jr nz, jr_002_7d76

    db $fd
    ld c, $7d
    db $fd
    jr nz, @+$7f

    db $fd
    ld c, $7d
    ld d, c
    and c
    ld d, c
    and c
    ld d, c
    and c
    sub c
    ld d, c
    cp $00
    push de
    ld a, h
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c

jr_002_7d14:
    ld b, c
    ld [hl], c
    rst $38
    ld hl, $2151
    ld d, c
    ld hl, $2151
    ld d, c
    rst $38
    ld d, c
    and c
    ld d, c
    and c
    ld d, c
    and c
    ld d, c
    and c
    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$220a], a
    add sp, -$24
    and e
    push hl
    ld h, c
    ld d, c
    ld h, c
    call c, $e4b5
    inc hl
    ld de, $b1e5
    sub c
    or c
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    call c, $91a3
    ld b, c
    sub c
    call c, $e4b5
    inc de
    push hl
    or c
    sub c
    ld [hl], c
    ld h, c
    sub c
    or c
    db $e4
    ld de, $1121
    push hl
    or c
    sub c
    call c, Call_002_61a3
    ld d, c
    ld h, c
    call c, $e4b5
    inc hl
    ld de, $b1e5
    sub c
    or c
    sub c

jr_002_7d70:
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    ld [hl], c
    sub c

jr_002_7d76:
    call c, $91a3
    ld b, c
    sub c
    call c, $e4b5
    inc de
    push hl
    or c
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $6141
    ld [hl], c
    sub c
    or c
    ld h, c
    ld b, c
    inc hl
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    or c
    sub c
    ld [hl], e
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    ld [hl], c
    ld h, c
    ld b, e
    ld de, $4121
    ld [hl], c
    ld h, c
    ld [hl], c
    sub c
    or c
    sub a
    db $e4
    ld hl, $e511
    or e
    sub c
    or c
    db $e4
    ld de, $4121
    ld hl, $e513
    or c
    db $e4
    ld de, $4121
    ld de, $b1e5
    sub e
    ld [hl], c
    sub c
    or c
    ld [hl], c
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $6141
    ld [hl], c
    cp $00
    inc [hl]
    ld a, l
    ld [$2508], a
    db $fd
    ld hl, $ec7e
    inc bc
    call c, $e5a5
    sub e
    ld b, e
    db $fd
    inc sp
    ld a, [hl]
    ld hl, $ec65
    inc bc
    call c, $e5a5
    sub e
    ld b, e
    db $fd
    ld hl, $ec7e
    inc bc
    call c, $e5a5
    sub e
    ld b, e
    db $fd
    inc sp
    ld a, [hl]
    daa
    db $ec
    inc bc
    call c, $e5a5
    inc hl
    ld b, e
    db $ec
    ld [bc], a
    call c, $e4c6
    ld h, a
    sub a
    ld [hl], c
    sub c
    ld [hl], c
    ld h, c
    ld b, a
    rla
    ld b, a
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    daa
    ld h, a
    sub a
    ld [hl], c
    ld h, c
    ld [hl], c
    sub c
    or a
    sub e
    ld [hl], c
    ld h, c
    ld [hl], a
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    daa
    cp $00
    rst $08
    ld a, l
    db $ec
    ld [bc], a
    call c, $e4c2
    ld hl, $91e5
    db $e4
    ld hl, $c3dc
    sub e
    ld [hl], e
    ld h, c
    ld b, c
    dec d
    rst $38
    db $ec
    ld [bc], a
    call c, $e4c2
    ld de, $91e5
    db $e4
    ld de, $c3dc
    ld h, e
    ld b, e
    ld de, $dcff
    db $10
    db $e4
    ld hl, $2161
    ld h, c
    ld hl, $7161
    ld h, c
    db $fd
    xor h
    ld a, [hl]
    db $fd
    or l
    ld a, [hl]
    ld h, c
    sub c
    ld h, c
    sub c
    ld h, c
    sub c
    ld [hl], c
    sub c
    ld hl, $2161
    ld h, c
    ld hl, $7161
    ld h, c
    db $fd
    xor h
    ld a, [hl]
    db $fd
    or l
    ld a, [hl]
    ld hl, $2161
    ld h, c
    ld hl, $91b1
    ld [hl], c
    db $fd
    cp [hl]
    ld a, [hl]
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld h, c
    sub c
    ld h, c
    sub c
    ld h, c
    sub c
    add c
    sub c
    db $fd
    cp [hl]
    ld a, [hl]
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld b, c
    ld [hl], c
    ld h, c
    sub c
    ld h, c
    sub c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    cp $00
    ld b, l
    ld a, [hl]
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    rst $38
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld [hl], c
    sub c
    rst $38
    ld h, c
    sub c
    ld h, c
    sub c
    ld h, c
    sub c
    ld h, c
    sub c
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

Call_002_7fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
