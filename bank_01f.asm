;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    rst $38
    rst $38
    rst $38
    rlca
    ld a, [$0742]
    cp $42
    rlca
    ld [bc], a
    ld b, e
    rlca
    ld b, $43
    rlca
    ld a, [bc]
    ld b, e
    rlca
    dec e
    ld b, e
    rlca
    ld hl, $0743
    jr z, jr_01f_405e

    rlca
    inc l
    ld b, e
    rlca
    jr nc, jr_01f_4064

    rlca
    inc [hl]
    ld b, e
    rlca
    jr c, jr_01f_406a

    rlca
    inc a
    ld b, e
    rlca
    ld b, b
    ld b, e
    rlca
    ld b, h
    ld b, e
    rlca
    ld c, e
    ld b, e
    rlca
    ld d, d
    ld b, e
    rlca
    ld d, [hl]
    ld b, e
    rlca
    ld e, d
    ld b, e
    add h
    sub a
    ld c, c
    dec b

Jump_01f_4040:
    and [hl]
    ld c, c
    rlca
    or l
    ld c, c
    add h
    and a
    ld c, e
    dec b
    cp d
    ld c, e
    rlca
    call $844b
    inc e
    ld c, e
    dec b
    dec hl
    ld c, e
    rlca
    add hl, sp
    ld c, e
    add h
    or [hl]
    ld c, b
    dec b
    push de
    ld c, b
    rlca

jr_01f_405e:
    db $f4
    ld c, b
    add h
    ld h, l
    ld c, h
    dec b

jr_01f_4064:
    add h
    ld c, h
    rlca
    and e
    ld c, h
    add h

jr_01f_406a:
    ld b, l
    ld c, d
    dec b
    ld e, b
    ld c, d
    rlca
    ld l, d
    ld c, d
    add h
    rst $28
    ld c, c
    dec b
    add hl, bc
    ld c, d
    rlca
    ld a, [bc]
    ld c, d
    add h
    dec e
    ld c, d
    dec b
    inc l
    ld c, d
    rlca
    dec sp
    ld c, d
    add h
    dec [hl]
    ld c, h
    dec b
    ld c, b
    ld c, h
    rlca
    ld e, e
    ld c, h
    add h
    ccf
    ld b, a
    dec b
    ld e, h
    ld b, a
    rlca
    ld a, l
    ld b, a
    add h
    jp c, $054b

    ld sp, hl
    ld c, e
    rlca
    inc e
    ld c, h
    add h
    ld l, e

Call_01f_40a1:
    ld c, d
    dec b
    sub [hl]
    ld c, d
    rlca
    or l
    ld c, d
    add h
    adc $4a
    dec b
    push af
    ld c, d
    rlca
    dec de
    ld c, e
    add h
    ld a, [hl-]
    ld c, e
    dec b
    ld e, c
    ld c, e
    rlca
    adc b
    ld c, e
    add h
    cp a
    ld c, c
    dec b
    jp nc, $0749

    push hl
    ld c, c

Call_01f_40c3:
    add h
    ld bc, $0549
    inc e
    ld c, c
    rlca
    scf
    ld c, c
    add h
    ld b, a
    ld c, c
    dec b
    ld l, d
    ld c, c
    rlca
    adc l
    ld c, c
    add h
    inc hl
    ld c, b
    dec b
    ld b, d
    ld c, b
    rlca
    ld h, l
    ld c, b
    add h
    dec sp
    ld c, l
    dec b
    ld c, [hl]
    ld c, l

Jump_01f_40e4:
    rlca

Jump_01f_40e5:
    ld h, c
    ld c, l

Jump_01f_40e7:
    add h
    ld l, [hl]
    ld c, l
    dec b
    adc c
    ld c, l
    rlca
    and h
    ld c, l
    add h
    or a
    ld c, l
    dec b
    add $4d
    rlca
    push de
    ld c, l
    add h
    ld b, l
    ld c, [hl]
    dec b
    ld h, b
    ld c, [hl]
    rlca
    ld a, e
    ld c, [hl]
    add h
    ret c

    ld c, h
    dec b
    rst $20
    ld c, h
    rlca
    or $4c
    add h
    adc [hl]
    ld c, [hl]
    dec b
    and c
    ld c, [hl]
    rlca
    or h
    ld c, [hl]
    add h
    sbc [hl]
    ld c, a
    dec b
    pop bc
    ld c, a
    rlca
    db $e4
    ld c, a
    add h
    or [hl]
    ld c, h
    dec b
    push bc
    ld c, h
    rlca
    rst $10
    ld c, h
    add h
    rrca
    ld c, a
    dec b
    ld a, [hl+]
    ld c, a
    rlca
    ld b, l
    ld c, a
    add h
    nop
    ld c, l
    dec b
    rla
    ld c, l
    rlca
    ld l, $4d
    add h
    pop bc
    ld c, [hl]
    dec b
    db $e4
    ld c, [hl]
    rlca
    rst $38
    ld c, [hl]
    add h
    ld e, b
    ld c, a
    dec b
    ld [hl], e
    ld c, a
    rlca
    adc [hl]
    ld c, a
    add h
    rst $18
    ld c, l
    dec b
    ld [bc], a
    ld c, [hl]
    rlca
    add hl, hl
    ld c, [hl]
    add h
    rst $30
    ld c, a
    dec b
    ld a, [bc]
    ld d, b
    rlca
    dec e
    ld d, b
    add h
    ld a, [hl+]
    ld d, b
    dec b
    dec a
    ld d, b
    rlca
    ld d, b
    ld d, b
    add h
    ld e, l
    ld d, b
    dec b
    add b
    ld d, b
    rlca
    and d
    ld d, b
    add h
    and e
    ld d, b
    dec b
    or [hl]
    ld d, b
    rlca
    ret


    ld d, b
    add h
    sub [hl]
    ld b, a
    dec b
    xor l
    ld b, a
    rlca
    ret nz

    ld b, a
    add h
    call Call_000_0547
    ldh a, [rBGP]
    rlca
    inc de
    ld c, b
    add h
    ld a, e
    ld c, b
    dec b
    sub d
    ld c, b
    rlca
    xor c
    ld c, b
    add h
    or d
    ld e, [hl]
    dec b
    ret


    ld e, [hl]
    ld b, $d9
    ld e, [hl]
    add h
    adc d
    ld h, h
    dec b
    xor c
    ld h, h
    ld b, $c1
    ld h, h

Call_01f_41a4:
    inc b
    adc [hl]
    ld b, e
    inc b
    dec hl
    ld b, h
    inc b
    ld c, l
    ld b, h
    rlca
    ld e, [hl]
    ld b, e
    inc b
    and $43
    add h
    inc a
    ld h, h
    dec b
    ld d, l
    ld h, h
    ld b, $6b
    ld h, h
    add h
    sub $64
    dec b
    push af

Call_01f_41c1:
    ld h, h
    ld b, $11
    ld h, l
    inc b
    ld a, [hl-]
    ld b, h
    inc b
    ld h, d
    ld b, h
    inc b
    ld [hl], c
    ld b, h
    inc b
    and b
    ld b, h
    inc b
    or e
    ld b, h
    inc b
    add $44
    inc b
    pop hl
    ld b, h
    inc b
    ld hl, sp+$44
    inc b
    dec c
    ld b, l
    inc b
    jr z, jr_01f_4228

    inc b
    ld b, e
    ld b, l
    inc b
    ld c, [hl]
    ld b, l
    rlca
    ld e, c
    ld b, l
    rlca
    ld h, [hl]
    ld b, l
    ld b, h
    sub a
    ld b, l
    dec b
    xor [hl]
    ld b, l
    inc b
    pop bc
    ld b, l
    rlca
    call z, Call_01f_4445
    push hl
    ld b, l
    dec b
    inc b
    ld b, [hl]
    inc b
    inc hl
    ld b, [hl]
    rlca
    ld h, l
    ld b, e
    rlca
    ld [hl], l
    ld b, e
    ld b, h
    ld a, h
    ld b, e
    dec b
    add e
    ld b, e
    ld b, h
    sbc a
    ld b, e
    dec b
    and [hl]
    ld b, e
    ld b, h
    or c
    ld b, e
    dec b
    cp h
    ld b, e
    inc b
    bit 0, e
    rlca
    sub $43
    ld b, h
    ld sp, hl
    ld b, e
    dec b
    db $10
    ld b, h

jr_01f_4228:
    rlca
    ld b, b
    ld b, [hl]
    inc b
    ld e, c
    ld b, [hl]
    inc b
    ld h, h
    ld b, [hl]
    rlca
    ld l, a
    ld b, [hl]
    rlca
    ld a, c
    ld b, [hl]
    rlca
    add b
    ld b, [hl]
    inc b
    sub b
    ld b, [hl]
    inc b
    sbc a
    ld b, [hl]
    ld b, h
    xor d
    ld b, [hl]
    dec b
    cp c
    ld b, [hl]
    inc b
    ret z

    ld b, [hl]
    ret nz

    ld [hl+], a
    ld e, e
    ld bc, $5bda
    ld [bc], a
    and l
    ld e, h
    inc bc
    ld c, l
    ld e, l
    add b
    add c
    ld [hl], d
    ld bc, $73c1
    ld [bc], a
    inc h
    ld [hl], l
    add b
    ld de, $0172
    inc a
    ld [hl], d
    ld [bc], a
    ld e, [hl]
    ld [hl], d
    add b
    dec de
    ld h, l
    ld bc, $6567
    ld [bc], a
    or h
    ld h, l
    ld b, b
    rst $18
    ld [hl], c
    ld bc, $71fc
    ret nz

    ld hl, $0152
    jp nc, $0252

    ld a, d
    ld d, e
    inc bc
    adc $54
    add b
    ld a, e
    ld [hl], b
    ld bc, $70fe
    ld [bc], a

jr_01f_4289:
    ld e, h
    ld [hl], c
    add b
    ld l, l
    ld e, b
    ld bc, $5941
    ld [bc], a
    db $ed
    ld e, c
    add b
    ld e, h
    db $76
    ld bc, $76d3
    ld [bc], a
    ld c, c
    ld [hl], a
    ret nz

    scf
    ld d, l
    ld bc, $5640
    ld [bc], a
    ld a, $57
    inc bc
    db $ec
    ld d, a
    ret nz

    jp hl


jr_01f_42ab:
    ld e, [hl]
    ld bc, $5f3a
    ld [bc], a

jr_01f_42b0:
    sbc l

jr_01f_42b1:
    ld e, a
    inc bc
    ld a, $60
    ret nz

    ld d, e

Call_01f_42b7:
    ld h, b

jr_01f_42b8:
    ld bc, $61ca
    ld [bc], a
    call c, $0362
    ld b, [hl]
    ld h, e
    ret nz

    ld [hl], c
    ld h, e
    ld bc, $63a2
    ld [bc], a
    ldh [$63], a
    inc bc
    ld [de], a
    ld h, h
    add b
    xor h
    ld h, [hl]
    ld bc, $6745
    ld [bc], a
    db $fc
    ld h, a
    add b
    and l
    ld l, b
    ld bc, $6a6b
    ld [bc], a
    jr nz, jr_01f_434b

    add b

jr_01f_42e0:
    rst $38
    ld l, h
    ld bc, $6d1c

jr_01f_42e5:
    ld [bc], a
    ld c, b

jr_01f_42e7:
    ld l, l
    add b
    ld e, e
    ld l, l
    ld bc, $6d7e
    ld [bc], a
    xor l
    ld l, l
    add b
    db $dd
    ld l, l
    ld bc, $6e04
    ld [bc], a
    inc [hl]
    ld l, [hl]
    jr nz, @-$3d

    inc sp
    rst $38
    jr nz, jr_01f_42b1

    inc sp
    rst $38
    jr nz, @-$5d

    inc sp
    rst $38
    jr nz, jr_01f_4289

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
    jr nz, jr_01f_4370

    ld a, [hl+]
    rst $38
    ld hl, $2b41
    jr nz, @+$63

    ld a, [hl+]
    rst $38
    jr nz, jr_01f_42ab

    db $10
    rst $38
    jr nz, jr_01f_42b0

    inc hl
    rst $38
    jr nz, @-$7c

    dec h
    rst $38
    jr nz, jr_01f_42b8

    ld h, $ff
    jr nz, @-$5d

    db $10
    rst $38

jr_01f_433c:
    jr nz, jr_01f_42e0

    ld de, $20ff
    and d
    ld d, b
    rst $38

jr_01f_4344:
    jr nz, jr_01f_42e7

    jr jr_01f_4368

    ld sp, $ff33

jr_01f_434b:
    ld [hl+], a
    sub c
    jr z, @+$22

    ld [hl], c
    jr @+$01

    jr nz, jr_01f_42e5

    ld [hl+], a
    rst $38
    jr nz, jr_01f_43c9

    ld [hl+], a
    rst $38
    jr nz, jr_01f_43bd

    ld [hl+], a
    rst $38
    ld hl, $33e2

jr_01f_4361:
    jr z, jr_01f_4344

    ld [hl+], a

jr_01f_4364:
    rst $38
    ld [hl+], a
    rst $30

Jump_01f_4367:
    inc h

jr_01f_4368:
    ld [hl+], a
    rst $30
    inc [hl]
    inc h
    rst $30
    ld b, h
    jr z, jr_01f_4364

jr_01f_4370:
    ld d, l
    jr z, jr_01f_4364

    ld b, h
    rst $38
    add hl, hl
    pop af
    ld b, h
    jr z, jr_01f_434b

    ld b, e

jr_01f_437b:
    rst $38

jr_01f_437c:
    db $ec
    ld [bc], a
    jr z, jr_01f_4361

    ld b, b
    rlca
    rst $38

jr_01f_4383:
    db $ec
    ld [bc], a
    ld [hl+], a
    ld [$0000], sp
    jr z, jr_01f_433c

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
    jr z, jr_01f_437c

    nop
    ld [bc], a
    db $10
    ld [$ecff], sp
    ld [bc], a
    inc h
    pop af

Jump_01f_43a3:
    add b
    rlca
    rst $38
    db $ec
    ld [bc], a
    ld hl, $0008

jr_01f_43ab:
    nop
    inc h
    and c
    ld h, c
    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    pop hl
    nop
    rlca
    jr z, jr_01f_43ab

    ldh [rTAC], a
    rst $38
    db $ec

jr_01f_43bd:
    ld [bc], a
    ld hl, $0008
    nop

Call_01f_43c2:
    inc h

Jump_01f_43c3:
    sub c
    pop bc
    ld b, $28
    and d
    and c

jr_01f_43c9:
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
    jr nz, jr_01f_437b

    ret nz

    rlca
    jr nz, @-$7d

    ret nc

    rlca
    jr nz, jr_01f_4383

    ret nz

    rlca
    inc l
    and c
    ret nc

    rlca
    rst $38
    db $ec
    ld [bc], a
    inc hl
    db $e4
    nop
    ld b, $23
    db $e4
    add b
    ld b, $23
    db $e4
    ret nz

    ld b, $23
    db $e4
    nop
    rlca
    cpl
    ld a, [c]
    ldh [rTAC], a
    rst $38
    db $ec
    ld [bc], a
    inc hl
    ld [$0000], sp
    inc hl
    call nz, Call_000_0601
    inc hl
    call nz, $0681
    inc hl
    call nz, Call_000_06c1
    inc hl
    call nz, Call_000_0701
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
    ld a, [hl-]

Call_01f_4445:
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
    cpl
    nop
    nop
    nop
    inc hl
    add c
    add b
    rlca
    inc hl
    add c
    nop
    rlca
    inc hl
    add c
    ld b, b
    rlca
    inc hl
    add c
    nop
    rlca
    inc hl
    add c
    add b
    rlca
    inc hl
    add c
    nop
    rlca
    inc hl
    add c
    ret nz

    rlca
    inc hl
    add c
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
    inc h
    ldh a, [rP1]
    rlca
    inc h
    nop
    nop
    nop
    inc h
    ldh a, [rP1]
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
    ldh a, [rP1]
    dec b
    db $10

Call_01f_45a0:
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

Call_01f_45b6:
    nop

Call_01f_45b7:
    nop
    cpl
    ldh a, [rSB]
    inc b
    ld hl, $0000
    nop
    rst $38
    db $ec

jr_01f_45c2:
    nop
    db $10
    rla
    cpl
    jp nc, $0700

    db $10
    ld [$24ff], sp
    and d
    inc hl
    jr z, jr_01f_45c2

    inc [hl]
    cpl
    nop

jr_01f_45d4:
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
    jr z, jr_01f_45d4

    ld d, l
    jr z, jr_01f_45d4

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

jr_01f_4628:
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
    ld [$26ff], sp
    jr nz, jr_01f_4653

    ld h, $2f
    ld b, b
    ld h, $4f
    ld b, c
    ld h, $8f
    ld b, c
    ld h, $cf
    ld b, d
    jr z, jr_01f_4628

    ld b, d
    cpl

jr_01f_4653:
    rst $20
    ld b, e
    cpl
    ld a, [c]
    ld b, e
    rst $38
    db $ec
    ld [bc], a
    db $10
    ld h, $2c
    jp nz, $0740

    db $10

jr_01f_4662:
    ld [$ecff], sp
    ld [bc], a
    db $10
    ld h, $2c
    jp nz, $0680

    db $10
    ld [$22ff], sp
    ld l, a
    ld hl, $af22
    ld sp, $f22f
    ld b, c
    rst $38
    ld [hl+], a

jr_01f_467a:
    jp nc, Jump_000_2f32

    ld a, [c]

jr_01f_467e:
    ld b, e
    rst $38
    inc h
    inc l
    jr nz, jr_01f_46a7

    and b
    jr nz, jr_01f_46aa

    or b
    ld hl, $c023
    ld [hl+], a
    cpl

jr_01f_468d:
    jp nc, $ff24

    db $ec
    ld [bc], a
    ld hl, $a0f2
    ld b, $21
    ld a, [c]
    ldh [rTMA], a
    jr z, jr_01f_468d

    nop
    rlca
    rst $38
    db $ec
    ld [bc], a
    ld [hl+], a
    pop af
    nop
    rlca
    jr z, jr_01f_4628

jr_01f_46a7:
    ldh [rTAC], a
    rst $38

jr_01f_46aa:
    db $ec
    inc bc
    dec h
    pop hl
    nop
    rlca
    ld [hl+], a
    pop hl
    add b
    rlca
    cpl
    pop af
    ret nz

Call_01f_46b7:
    rlca
    rst $38
    db $ec
    ld [bc], a
    inc h
    pop bc
    pop bc
    ld b, $22
    pop bc
    ld b, c
    rlca
    cpl
    pop de
    add c
    rlca
    rst $38
    db $fc
    adc b
    db $10
    cpl
    inc h
    ld b, b
    ldh [rTAC], a
    inc h
    ld h, b
    ldh [rTAC], a
    inc h
    add b
    ldh [rTAC], a
    jr z, jr_01f_467a

    ldh [rTAC], a
    jr z, jr_01f_467e

    ldh [rTAC], a
    jr z, jr_01f_4662

    ldh [rTAC], a
    jr z, @+$62

    ldh [rTAC], a
    jr z, jr_01f_471a

    ldh [rTAC], a
    cpl
    ld [de], a
    ldh [rTAC], a
    db $10
    ld [$fcff], sp
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

jr_01f_471a:
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
    jr z, jr_01f_4757

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

jr_01f_4744:
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

jr_01f_4755:
    rst $10
    rlca

jr_01f_4757:
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

jr_01f_478c:
    jr z, jr_01f_4744

    inc a
    ld h, $d4
    dec a
    jr z, jr_01f_4755

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

Call_01f_47a0:
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

Call_01f_47b0:
    sub a
    add c
    rlca
    ld h, $84
    add b
    rlca

Call_01f_47b7:
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
    jr z, jr_01f_478c

    inc l
    rst $38
    db $fc
    ldh a, [$2f]
    rst $30
    add b
    ld b, $2a

jr_01f_47d4:
    and $84

Call_01f_47d6:
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

jr_01f_47f0:
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

    jr z, jr_01f_47f0

    jr nc, jr_01f_4848

    rst $38
    db $fc
    ld a, [bc]
    inc h

jr_01f_4845:
    ld [$0000], sp

jr_01f_4848:
    ld h, $a7
    ld b, c
    rlca
    jr z, jr_01f_47d4

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

jr_01f_4881:
    cpl
    db $e3
    jr nc, jr_01f_488c

    inc h
    db $f4
    ld b, b
    rlca
    dec h
    or e
    ld c, b

jr_01f_488c:
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
    jr z, jr_01f_4881

    inc l
    inc l
    add $3c
    ld a, [hl+]
    or [hl]
    inc l

jr_01f_48b2:
    jr z, jr_01f_4845

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
    jr z, jr_01f_48b2

    add d
    inc b
    rst $38
    inc l
    db $e4
    ld c, h
    ld a, [hl+]
    rst $00

jr_01f_48f9:
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

jr_01f_4934:
    ld [bc], a
    ld b, $ff
    inc hl
    db $e4
    inc a
    inc l
    sub $2c
    inc h

jr_01f_493e:
    db $e4
    inc a
    jr z, jr_01f_48f9

jr_01f_4942:
    ld e, h
    cpl
    jp nz, $ff5d

    db $fc
    ret


    jr z, jr_01f_4942

    add b
    ld b, $22
    rst $30
    ld h, b
    ld b, $21
    rst $20
    ld b, b
    ld b, $21
    rst $20
    jr nz, jr_01f_495f

    cpl
    pop de
    nop
    ld b, $24
    rst $00

jr_01f_495f:
    ld b, b
    rlca
    inc h
    and a
    jr nc, jr_01f_496c

    cpl
    sub c
    jr nz, @+$09

    rst $38
    db $fc
    ld a, c

jr_01f_496c:
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
    jr jr_01f_49a4

    cpl
    push hl
    sbc b
    rlca
    jr z, jr_01f_4934

    ld e, b

jr_01f_49a4:
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

jr_01f_49b0:
    jr z, jr_01f_4a23

    ld c, b
    rlca
    rst $38
    inc hl
    and c
    inc e
    ld l, $94
    inc l
    jr z, jr_01f_493e

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
    jr z, jr_01f_49b0

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

jr_01f_49e9:
    ld h, c
    ld hl, $6128
    ld de, $fcff
    ld a, [$8326]
    ld b, a

jr_01f_49f4:
    ld [bc], a
    cpl

jr_01f_49f6:
    ld h, d
    ld h, $02

jr_01f_49f9:
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
    jr z, jr_01f_49f9

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

jr_01f_4a23:
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
    jr z, jr_01f_49f4

    ld e, h

jr_01f_4a44:
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
    jr z, jr_01f_49f6

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
    jr z, jr_01f_49e9

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

jr_01f_4a83:
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
    jr z, jr_01f_4a44

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

jr_01f_4aaa:
    ld b, c
    rlca
    inc h
    pop af
    add d
    rlca
    jr z, jr_01f_4a83

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
    jr nz, jr_01f_4aea

    ld [hl+], a
    or d
    db $10
    ld b, $22
    and d

jr_01f_4aea:
    jr jr_01f_4af2

    ld [hl+], a
    or d
    db $10
    ld b, $28
    pop bc

jr_01f_4af2:
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

jr_01f_4b15:
    reti


    dec b
    jr z, jr_01f_4aaa

    pop hl
    dec b
    rst $38
    db $ec
    nop
    jr z, jr_01f_4b15

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

jr_01f_4b52:
    jr nz, jr_01f_4b5a

    cp $02
    ld a, [hl-]
    ld c, e
    rst $38
    db $fc

jr_01f_4b5a:
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

jr_01f_4b88:
    ld h, $d2
    inc e
    add hl, hl
    or c
    inc l
    jr z, jr_01f_4b52

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

jr_01f_4ba8:
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
    jr nz, jr_01f_4bbc

    jr z, jr_01f_4b88

Call_01f_4bb7:
    db $10
    rlca
    rst $38
    db $fc
    ld e, d

jr_01f_4bbc:
    dec h
    or e
    pop af
    ld b, $27
    push bc
    ld d, d
    rlca

jr_01f_4bc4:
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
    jr z, jr_01f_4c49

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
    jr z, jr_01f_4ba8

    and c
    ld b, $26
    add [hl]

jr_01f_4c05:
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
    jr z, jr_01f_4c05

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
    jr z, jr_01f_4bc4

    inc a
    rst $38
    db $fc
    ldh a, [$2f]
    or $65
    dec b
    ld a, [hl+]

jr_01f_4c3c:
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

jr_01f_4c49:
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

    jr z, jr_01f_4c3c

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
    jr nc, jr_01f_4ccb

    rst $38
    db $fc
    add c
    ld [hl+], a
    jp nz, Jump_000_0701

jr_01f_4ccb:
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

jr_01f_4cec:
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

jr_01f_4d0f:
    db $e4
    ldh [rTMA], a
    jr z, @-$2d

    ret nc

    ld b, $ff
    db $fc
    ld a, [bc]
    daa
    and $81

jr_01f_4d1c:
    ld b, $2e
    push de
    pop bc
    ld b, $24
    call nz, Call_000_06b1
    inc h
    call nc, Call_000_06a1
    jr z, jr_01f_4cec

jr_01f_4d2b:
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

jr_01f_4d37:
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

    jr z, jr_01f_4d1c

    add b
    inc b
    rst $38
    db $fc
    xor $2b
    jp nc, $0438

    ld l, $c6

jr_01f_4d56:
    sbc b
    inc b
    inc hl

jr_01f_4d59:
    or d
    adc b
    inc b
    jr z, jr_01f_4d0f

    ld a, b
    inc b
    rst $38
    ld a, [hl+]
    and $6c
    cpl

jr_01f_4d65:
    jp nc, Jump_000_235c

    jp nz, $286c

    pop de
    ld e, h
    rst $38
    db $fc
    inc sp
    cpl
    or $c0

jr_01f_4d73:
    dec b
    jr z, jr_01f_4d59

    cp h
    dec b
    ld h, $d2
    ret nc

    dec b
    ld h, $b2
    ldh [rTIMA], a
    ld h, $c2
    ldh a, [rTIMA]
    jr z, jr_01f_4d37

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

jr_01f_4d94:
    or d
    pop bc
    inc b
    jr z, jr_01f_4d2b

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

jr_01f_4da7:
    ld a, [hl+]
    sub $6c
    inc h
    jp nz, $264c

jr_01f_4dae:
    db $d3
    ld e, h
    jr z, jr_01f_4d65

    ld c, h
    jr z, jr_01f_4d56

    ld e, h
    rst $38
    db $fc
    ldh a, [$28]
    db $e4

jr_01f_4dbb:
    sub b
    rlca
    cpl
    push af
    ret nz

    rlca
    jr z, jr_01f_4d94

    ret c

jr_01f_4dc4:
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
    jr z, jr_01f_4d73

    or a
    rlca
    rst $38
    jr z, jr_01f_4dbb

    ld c, h
    ld l, $c4
    inc a
    jr z, jr_01f_4dae

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

jr_01f_4e1e:
    ld bc, $2607
    and d
    ld b, d
    rlca

jr_01f_4e24:
    jr z, jr_01f_4da7

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

jr_01f_4e3d:
    dec de
    dec h
    sub d
    ld a, [de]
    jr z, jr_01f_4dc4

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
    jr z, jr_01f_4e24

    db $10
    rlca
    inc h
    jp nz, $0700

    inc h
    jp nc, $06f0

    jr z, jr_01f_4e1e

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
    jr z, jr_01f_4e3d

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

jr_01f_4ece:
    rlca
    daa
    add $e0
    rlca

jr_01f_4ed3:
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

jr_01f_4ef8:
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
    jr z, jr_01f_4ece

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


    jr z, jr_01f_4ef8

jr_01f_4f27:
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
    jr z, jr_01f_4ed3

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
    jr z, jr_01f_4f27

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
    jr nz, jr_01f_4f74

    jr z, @-$5d

    inc h
    ld b, $ff
    db $fc

jr_01f_4f74:
    ld [hl+], a
    cpl
    or b
    jp Jump_000_2a06


    and b
    pop bc
    ld b, $26
    add h

jr_01f_4f7f:
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

jr_01f_4f92:
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

    jr z, jr_01f_4f7f

    and b
    ld b, $ff
    db $fc

Call_01f_4fc2:
    rrca
    add hl, hl
    push de
    ld sp, $2306

jr_01f_4fc8:
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

jr_01f_4fd9:
    sub c
    ld b, $23
    jp nz, $0671

    jr z, jr_01f_4f92

    ld d, c
    ld b, $ff
    ld h, $e3
    ld c, h
    inc h
    jp Jump_000_253c


jr_01f_4feb:
    call nc, Call_000_243c
    call nz, $262c
    or h
    inc a
    jr z, @-$3d

    inc l
    rst $38

jr_01f_4ff7:
    db $fc
    and l
    inc hl
    db $f4
    ld b, c
    ld b, $2d
    sub $21
    rlca
    jr z, jr_01f_4ff7

    add hl, de
    rlca
    jr z, jr_01f_4fc8

    ld a, [de]
    rlca
    rst $38
    db $fc
    call z, $f424

jr_01f_500e:
    add b
    dec b
    ld l, $e6
    ldh [rTMA], a
    jr z, jr_01f_4feb

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
    jr z, jr_01f_4fd9

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

jr_01f_5042:
    dec b
    inc l

jr_01f_5044:
    pop de
    db $10
    dec b
    ld l, $c1
    inc c
    dec b
    jr z, jr_01f_500e

    ld a, [bc]

jr_01f_504e:
    dec b
    rst $38
    ld l, $f2
    ld h, l
    dec l
    ld [c], a

jr_01f_5055:
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

jr_01f_5061:
    ld h, h
    dec b
    ld [hl+], a
    ld [c], a

jr_01f_5065:
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
    jr z, jr_01f_5042

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
    jr z, jr_01f_504e

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
    jr z, jr_01f_5055

    and b
    inc b
    inc hl
    db $d3
    jr nz, @+$07

    inc hl
    call nz, $04e0
    jr z, jr_01f_5061

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

    jr z, jr_01f_5044

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
    jr z, jr_01f_5065

    ld c, c
    rst $38
    ldh a, [$dc]
    ld c, $00
    ld hl, $5106

jr_01f_50dd:
    cp [hl]
    jr c, jr_01f_50e4

    inc c
    inc hl
    jr jr_01f_50dd

jr_01f_50e4:
    push bc
    call Call_000_2233
    pop bc
    ld b, $00
    ld hl, $50f8
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, [hl]
    call Call_000_2211
    jp Jump_000_216b


    and l
    rra
    sub c
    ld [bc], a
    add [hl]
    ld [bc], a
    sbc d
    ld [$0886], sp
    sub h
    ld [bc], a
    adc c
    ld [bc], a
    ld a, [bc]
    jr z, jr_01f_5145

    ld e, d
    ld a, b
    sub [hl]
    rst $38
    ld [$c001], a
    ld a, [$c001]
    cp $ff
    jp z, Jump_01f_518e

    cp $c2
    jp z, Jump_01f_512d

    jp c, Jump_01f_512d

    cp $fd
    jr z, jr_01f_5127

    jp nc, Jump_01f_512d

jr_01f_5127:
    call Call_000_22aa
    jp Jump_01f_5192


Jump_01f_512d:
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

jr_01f_5145:
    ld c, a

Jump_01f_5146:
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
    jr z, jr_01f_5182

    ld a, e
    cp $07
    jr nz, jr_01f_5179

    ld a, [$c001]
    cp $14
    jr nc, jr_01f_5172

    ret


jr_01f_5172:
    ld a, [hl]
    cp $14
    jr z, jr_01f_5182

    jr c, jr_01f_5182

jr_01f_5179:
    ld a, [$c001]
    cp [hl]
    jr z, jr_01f_5182

    jr c, jr_01f_5182

    ret


jr_01f_5182:
    call Call_000_22c0
    ld a, c
    and a
    jp z, Jump_01f_5192

    dec c
    jp Jump_01f_5146


Jump_01f_518e:
    call Call_000_22d6
    ret


Jump_01f_5192:
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

Call_01f_51a6:
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

jr_01f_51b4:
    cp c
    jr z, jr_01f_51bc

    inc c
    inc hl
    inc hl
    jr jr_01f_51b4

jr_01f_51bc:
    push af
    push hl
    push bc
    ld b, $00
    ld c, a
    cp $03
    jr c, jr_01f_51cc

    ld hl, $c02e
    add hl, bc
    set 2, [hl]

jr_01f_51cc:
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

Jump_01f_51e3:
    pop hl
    inc c
    dec b
    ld a, b
    and a
    ld a, [de]
    inc de
    jr nz, jr_01f_51b4

    ld a, [$c001]
    cp $14
    jr nc, jr_01f_51f5

    jr jr_01f_521f

jr_01f_51f5:
    ld a, [$c001]
    cp $86
    jr z, jr_01f_521f

    jr c, jr_01f_5200

    jr jr_01f_521f

jr_01f_5200:
    ld hl, $c02a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c012
    ld de, $5220
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$c005]
    and a
    jr nz, jr_01f_521f

    ldh a, [rNR50]
    ld [$c005], a
    ld a, $77
    ldh [rNR50], a

jr_01f_521f:
    ret


    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$1408], a
    call c, $e5b5
    ld [hl], c
    db $e4
    inc bc
    inc hl
    ld b, c
    ld bc, $7141
    ld [hl], c
    ld d, c
    ld b, c
    ld d, e
    ld b, c
    ld hl, $2353
    push hl
    or c
    db $e4
    ld d, e
    inc hl
    ld b, c
    ld d, c
    ld [hl], c
    ld bc, $0141
    ld hl, $dc41
    or [hl]
    ld e, c
    call c, Call_01f_51a6
    ld b, c
    ld d, c
    ld a, c
    ld b, c
    ld hl, $5541
    add sp, -$24
    or e
    ld b, c
    ld hl, $4020
    ld d, c
    ld b, b
    ld d, b
    add sp, -$24
    or l
    ld [hl], l
    ld [hl], l
    sub c
    ld d, c
    ld [hl], l
    call c, Call_01f_71b4
    ld d, e
    call c, Call_01f_41a4
    ld hl, $93dc
    push hl
    sub c
    db $e4
    inc bc
    ld bc, $b1e5
    sub b
    or b
    sub c
    or c
    db $e4
    ld bc, $0103
    push hl
    sub c
    or c
    or c
    sub c
    db $e4
    inc bc
    push hl
    sub c
    or b
    db $e4
    nop
    push hl
    or c
    db $e4
    inc hl
    push hl
    or c
    db $e4
    inc bc
    push hl
    or b
    db $e4
    nop
    jr nz, @-$19

    or b
    db $e4
    inc bc
    call c, $033d
    call c, $55b4
    ld [hl], e
    ld d, b
    ld [hl], b
    ld d, e
    ld b, l
    ld d, c
    ld b, c
    jr nz, jr_01f_52ef

    ld hl, $dc01
    or l
    push hl
    sub e
    db $e4
    inc hl
    push hl
    or e
    db $e4
    ld b, e
    inc bc
    ld d, e
    inc hl
    ld h, e
    ld [$260a], a
    call c, Call_01f_7f80
    ld [hl], e
    call c, Call_01f_7b87
    call c, $eab5
    ld [$fe14], sp
    nop
    cpl
    ld d, d
    db $ec
    ld [bc], a
    ld [$1506], a
    call c, $e4c3
    ld bc, $5343
    ld [hl], e
    db $e3
    inc bc
    db $e4
    or l
    sub b
    or b
    sbc c
    ld d, c
    ld [hl], c
    sub c
    db $e3
    ld hl, $e401
    or c
    sub b
    or b

jr_01f_52ef:
    db $e3
    dec b
    db $e4
    sub c
    ld [hl], e
    db $ec
    inc bc
    call c, $a584
    db $ec
    ld [bc], a
    call c, $e3c5
    ld bc, $b1e4
    db $e3
    ld bc, $99e4
    db $e3
    ld bc, $b1e4
    db $e3
    ld bc, $79e4
    call c, $e3c3
    inc bc
    ld b, c
    ld hl, $e401
    or c
    db $e3
    ld bc, $b0dc
    inc hl
    call c, $29c7
    jr nz, jr_01f_5320

jr_01f_5320:
    call c, $e4b0
    or e
    call c, $bbc7
    call c, Call_01f_55c4
    ld d, c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $4145
    ld d, c
    ld b, c
    ld hl, $5101
    ld b, c
    ld hl, $7351
    sub c
    ld d, c
    ld b, c
    ld [hl], e
    ld d, c
    ld b, l
    sub $c2
    ld d, b
    ld [hl], b
    sub b
    or b
    call c, $e3c3
    ld bc, $b1e4
    sub c
    db $e3
    ld bc, $b3e4
    sub e
    ld [hl], c
    and e
    sub c
    ld [hl], e
    ld d, c
    ld b, c
    ret c

    call nz, $7393
    ld d, e
    or e
    sub e
    ld [hl], e
    db $e3
    inc bc

jr_01f_5362:
    db $e4
    or e
    sub e
    db $e3
    inc hl
    ld b, e
    inc bc
    call c, Call_000_2bc7

jr_01f_536c:
    inc bc
    call c, $e4b0
    or e
    call c, $bbc7
    call c, $fec3
    nop
    db $db
    ld d, d
    call c, $c113
    db $e4
    nop
    ret nz

    ld b, b
    ret nz

    push hl
    ld [hl], b
    ret nz

    db $e4
    ld b, b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    nop
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    jr nz, jr_01f_5362

    ld d, b
    ret nz

jr_01f_53a4:
    push hl
    sub b
    ret nz

    db $e4
    ld d, b
    ret nz

    jr nz, jr_01f_536c

    ld d, b
    ret nz

jr_01f_53ae:
    ld b, b
    ret nz

    ld d, b
    ret nz

jr_01f_53b2:
    ld b, b
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

jr_01f_53ba:
    ld b, b
    ret nz

    ld [hl], b
    ret nz

jr_01f_53be:
    ld b, b
    ret nz

    ld [hl], b
    ret nz

jr_01f_53c2:
    ld d, b
    ret nz

    sub b
    ret nz

jr_01f_53c6:
    nop
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

jr_01f_53cc:
    ld [hl], b
    ret nz

    sub b
    ret nz

jr_01f_53d0:
    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

jr_01f_53da:
    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    jr nz, jr_01f_53a4

jr_01f_53e4:
    ld d, b
    ret nz

    push hl
    sub b

jr_01f_53e8:
    ret nz

    db $e4
    ld d, b
    ret nz

    jr nz, jr_01f_53ae

    ld d, b
    ret nz

    jr nz, jr_01f_53b2

    ld d, b
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    jr nz, jr_01f_53ba

    ld [hl], b
    ret nz

jr_01f_53fc:
    jr nz, jr_01f_53be

    ld [hl], b
    ret nz

    jr nz, jr_01f_53c2

    ld [hl], b
    ret nz

    jr nz, jr_01f_53c6

    push hl
    or b
    ret nz

    db $e4

jr_01f_540a:
    jr nz, jr_01f_53cc

    ld [hl], b
    ret nz

    jr nz, jr_01f_53d0

    ld [hl], b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld [hl], b
    ret nz

    jr nz, jr_01f_53da

    ld d, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld d, b
    ret nz

    jr nz, jr_01f_53e4

    ld d, b
    ret nz

    jr nz, jr_01f_53e8

    ld d, b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    jr nz, jr_01f_53fc

    ld d, b
    ret nz

    push hl
    sub b

jr_01f_5440:
    ret nz

    db $e4
    ld d, b
    ret nz

    ld d, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_01f_540a

    ld d, b
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    ld [hl], b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    nop
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

    ld [hl], b
    ret nz

    and b
    ret nz

    ld b, b
    ret nz

    and b
    ret nz

    ld [hl], b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld [hl], b
    ret nz

    ld d, b
    ret nz

    jr nz, jr_01f_5440

    ld d, b
    ret nz

    sub b
    ret nz

    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    or b
    ret nz

    sub b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    or b
    ret nz

    sub b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    sub b
    ret nz

    ld [hl], b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    ld [hl], b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    ld [hl], b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    ld [hl], b
    ret nz

    db $e3
    nop
    ret nz

    db $e4
    ld [hl], b
    ret nz

    or b
    ret nz

    ld [hl], b
    ret nz

    or b
    ret nz

    ld d, b
    ret nz

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld d, b
    ret nz

    cp $00
    ld a, l
    ld d, e
    call c, $fdc1
    dec c
    ld d, l
    db $fd
    ld a, [de]
    ld d, l
    db $fd
    dec c
    ld d, l
    db $fd
    jr z, jr_01f_5531

    db $fd
    ld a, [de]
    ld d, l
    db $fd
    ld a, [de]
    ld d, l
    db $fd
    dec c
    ld d, l
    db $fd
    dec c
    ld d, l
    db $fd
    dec c
    ld d, l
    db $fd
    dec c
    ld d, l
    db $fd
    ld a, [de]
    ld d, l
    db $fd
    dec c
    ld d, l
    db $fd
    jr z, jr_01f_554c

    db $fd
    dec c
    ld d, l
    db $fd
    ld a, [de]
    ld d, l
    db $fd
    dec c
    ld d, l
    db $fd
    dec c
    ld d, l
    db $fd

jr_01f_5504:
    dec c
    ld d, l
    db $fd
    dec c
    ld d, l
    cp $00
    ret nc

jr_01f_550c:
    ld d, h
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    rst $38
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    or c
    db $10
    or c
    db $10
    rst $38
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10
    pop bc
    or c
    db $10

jr_01f_5531:
    pop bc
    or b
    db $10
    or b
    db $10
    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    ld a, [bc]
    inc d
    call c, $c74d
    db $e4
    ld h, a
    call c, $e5b2
    db $fd
    inc c

jr_01f_554c:
    ld d, [hl]
    cp $03
    ld c, d
    ld d, l
    ld b, b
    jr nc, jr_01f_5504

    and b
    ld [hl], b
    add b
    ret nz

    and b
    ld b, b
    jr nc, jr_01f_550c

    and b
    ld [hl], b
    add b
    sub b
    and b
    db $fd
    inc c
    ld d, [hl]
    cp $04
    ld h, c
    ld d, l
    db $fd
    scf
    ld d, [hl]
    push hl
    ld [hl], b
    ld h, b
    ld b, b
    ld [hl], b
    db $fd
    scf
    ld d, [hl]
    push hl
    sub b
    ld [hl], b
    ld b, b
    sub b
    db $fd
    scf
    ld d, [hl]
    push hl
    or b
    sub b
    ld [hl], b
    ld h, b
    call c, Call_01f_73c3
    ld h, e
    ld b, e
    inc sp
    call c, $fdc2
    daa
    ld d, [hl]
    push hl
    or d
    db $fd
    daa
    ld d, [hl]
    ld [bc], a
    db $fd
    daa
    ld d, [hl]
    ld [de], a
    call c, $e5c3
    ld [hl], e
    ld h, e
    ld b, e
    inc sp
    ld b, e
    inc sp
    inc bc
    and $b3
    call c, $b0c2
    and b
    ld [hl], b
    and b
    or b
    and b
    ld [hl], b
    and b
    push hl
    nop
    and $b0
    add b
    or b
    push hl
    nop
    and $b0
    add b
    or b
    push hl
    stop
    and $90
    push hl
    nop
    stop
    and $90
    push hl
    nop

Call_01f_55c4:
    jr nz, @+$12

    and $a0
    push hl
    db $10
    jr nz, jr_01f_55dc

    and $a0
    push hl
    db $10
    rst $08
    cp $08
    ret nc

    ld d, l
    call c, $fdc3
    dec e
    ld d, [hl]
    or c
    ld [hl], c

jr_01f_55dc:
    push hl
    inc de
    and $71
    sub e
    ld h, c
    db $fd
    dec e
    ld d, [hl]
    and c
    ld [hl], c

Call_01f_55e7:
    or e
    ld [hl], c
    ld h, c
    ld [hl], c
    ld sp, $c2dc
    db $fd
    daa
    ld d, [hl]
    push hl
    or d
    db $fd
    daa
    ld d, [hl]
    ld [bc], a
    db $fd
    daa
    ld d, [hl]
    ld [de], a
    call c, $e5c7
    ld h, a
    scf
    call c, $fdc2
    inc c
    ld d, [hl]
    db $fd
    inc c
    ld d, [hl]
    cp $00
    ld b, a
    ld d, l
    ld b, b
    jr nc, @-$4e

    and b
    ld [hl], b
    add b
    ret nz

    and b
    ld b, b
    jr nc, @-$4e

    and b
    ld [hl], b
    add b
    ret nz

    and b
    rst $38
    and $71
    and e
    ld [hl], c
    push hl
    inc de
    and $71
    and c
    rst $38
    push hl
    ld b, b
    ld b, b
    ld d, b
    ld b, b
    ld [hl], b
    ld b, b
    sub b
    ld b, b
    and b
    ld b, b
    or b
    ld b, b
    db $e4
    nop
    rst $38
    ld b, b
    ld b, b
    jp Jump_01f_40e7


    jp nz, $c040

    rst $38
    ld [$150b], a
    db $ec
    inc bc
    call c, $e40f
    add a
    call c, $e34d
    daa
    call c, $fdc2
    ld sp, hl
    ld d, [hl]
    cp $03
    ld c, a
    ld d, [hl]
    and $40
    ld b, b
    or b
    push hl
    nop
    pop bc
    nop
    and $b0
    ld b, b
    ld b, b
    sub b
    ld [hl], b
    ld d, b
    ld h, b

jr_01f_5666:
    ld [hl], b
    jr nc, jr_01f_5666

    ld sp, hl
    ld d, [hl]
    cp $04
    ld l, b
    ld d, [hl]
    pop bc
    db $fd
    dec c
    ld d, a
    push hl
    inc bc
    db $fd
    dec c
    ld d, a
    push hl
    inc de
    db $fd
    dec c
    ld d, a
    push hl
    inc sp
    call c, $e4d3
    ld b, e
    inc sp
    inc bc
    push hl
    or e
    call c, $fdd2
    rla
    ld d, a
    push hl
    ld h, e
    db $fd
    rla
    ld d, a
    push hl
    ld [hl], e
    db $fd
    rla
    ld d, a
    push hl
    and e
    call c, $e4d3
    ld b, e
    inc sp
    inc bc
    push hl
    or e
    db $e4
    inc bc
    push hl
    or e
    ld [hl], e
    ld h, c
    call c, Call_01f_47d6
    ld d, a
    ld h, a
    ld [hl], a
    call c, $fdd2
    inc e
    ld d, a
    ret


    ld b, b
    ret nz

    db $fd
    inc e
    ld d, a
    set 7, l
    inc e
    ld d, a
    set 7, l
    inc e
    ld d, a
    call $d3dc
    db $fd
    cpl
    ld d, a
    inc sp
    db $fd
    cpl
    ld d, a
    ld sp, $dcc1
    jp nc, Jump_000_22fd

    ld d, a
    pop bc
    push hl
    ld h, e
    and $40
    ld b, b
    push hl
    or b
    ret nz

    db $e4
    nop
    ret nz

    db $10
    ret nz

    jr nz, jr_01f_56f0

    pop bc
    push hl
    ld [hl], e
    db $fd
    ld [hl+], a
    ld d, a
    push hl
    and e
    call c, $b7d6
    db $e4

jr_01f_56ec:
    scf
    call c, $fdd2

jr_01f_56f0:
    ld sp, hl
    ld d, [hl]
    db $fd
    ld sp, hl
    ld d, [hl]
    cp $00
    ld c, l
    ld d, [hl]
    and $40
    ld b, b
    or b
    push hl
    nop
    pop bc
    nop
    and $b0
    ld b, b
    ld b, b
    or b
    push hl
    nop
    pop bc
    nop
    and $b0
    rst $38
    and $40
    ld b, b
    pop bc
    rst $20
    ld b, b
    jp nz, $c240

    rst $38
    and $40
    ld b, b
    ret


    rst $38
    rst $20
    ld b, b
    ld [hl], b
    ld b, b
    jr nc, @+$01

    and $40
    ld b, b
    db $e4
    ld b, b
    ret nz

    jr nc, @-$3e

    jr nz, jr_01f_56ec

    stop
    rst $38
    push hl
    ld b, l
    ld [hl], l
    ld b, e
    sub l
    db $e4
    dec b
    push hl
    or e
    ld [hl], l
    and l
    ld h, e
    ld b, l
    ld h, l
    rst $38
    call c, $ea11
    ld [$cd26], sp
    db $e4
    jr nz, jr_01f_5777

    db $fd
    and d
    ld d, a
    db $fd
    and d
    ld d, a
    db $e3
    ld b, c
    jp Jump_01f_40e5


    jp nz, $c040

    db $e4
    ld h, e
    db $fd
    or [hl]
    ld d, a
    db $e4
    ld [hl], e
    db $fd
    or [hl]
    ld d, a
    db $e4
    sub e
    or e
    and e
    ld [hl], e
    ld h, e
    push bc
    db $fd
    reti


    ld d, a
    or e
    and e
    ld [hl], e
    ld h, e
    ld [hl], e
    ld h, e
    ld b, e
    inc sp
    db $fd
    ret nz

    ld d, a
    set 7, l
    ret nz

jr_01f_5777:
    ld d, a
    set 7, l
    ret nz

    ld d, a
    ret


    ld b, b
    ret nz

    db $fd
    ret nz

    ld d, a
    set 7, l
    ret nz

    ld d, a
    set 7, l
    ret nz

    ld d, a
    ret


    jr nz, @+$32

    db $fd
    add $57
    db $fd
    add $57
    ld b, c
    jp $d9fd


    ld d, a
    or a
    ld h, l
    jr nz, jr_01f_57cc

    rst $08
    rst $08
    cp $00
    ld b, a
    ld d, a
    db $e3
    ld b, e
    or e
    and e
    ld [c], a
    inc hl
    inc de
    db $e3
    add e
    ld [hl], e
    or e
    and e
    ld b, e
    inc sp
    sub e
    add e
    ld b, e
    ld h, e
    inc sp
    rst $38
    ld [c], a
    ld b, b
    ld b, b
    jp Jump_01f_40e5


    jp nz, $c040

    rst $38
    push hl
    ld b, b
    ld [hl], b
    ld b, b
    jr nc, @+$01

    ld b, e
    or e
    and e
    db $e4
    inc hl
    inc de

jr_01f_57cc:
    push hl
    add e
    ld [hl], e
    or e
    and e
    ld b, e
    inc sp
    sub e
    add e
    ld b, e
    ld h, e
    inc sp
    rst $38
    db $e4
    ld b, b
    jp nz, $c040

    ld h, e
    push bc
    ld b, b
    jp nz, $c040

    ld [hl], e
    push bc
    ld b, b
    jp nz, Jump_01f_4040

    and e
    rst $38
    call c, $b0cd
    inc c
    or b
    inc c
    db $fd
    ld d, e
    ld e, b
    cp $03
    ld a, [c]
    ld d, a
    or e
    dec c
    or e
    inc c
    or e
    dec c
    or c
    inc c
    or c
    inc c
    db $fd
    ld d, e
    ld e, b
    cp $03
    inc bc
    ld e, b
    or e
    dec c
    or e
    inc c
    or e
    dec c
    or e
    dec c
    db $fd
    ld e, h
    ld e, b
    cp $03
    ld [de], a
    ld e, b
    db $fd
    ld h, h
    ld e, b
    db $fd
    ld e, h
    ld e, b
    cp $03
    inc e
    ld e, b
    db $fd
    ld h, h
    ld e, b
    or e
    add hl, bc
    or e
    ld a, [bc]
    or e
    ld a, [bc]
    pop bc
    or c
    add hl, bc
    or e
    dec c
    rst $08
    cp $0d
    ld sp, $cb58
    db $fd
    ld e, h
    ld e, b
    cp $03
    scf
    ld e, b
    or e
    inc c
    or e
    inc c
    or e
    inc c
    pop bc
    or b
    inc c
    or b
    inc c
    db $fd
    ld d, e
    ld e, b
    db $fd
    ld d, e
    ld e, b
    cp $00
    ld a, [c]
    ld d, a
    or e
    dec c
    or e
    inc c
    or e
    dec c
    or e
    inc c
    rst $38
    or b
    inc c
    or b
    inc c
    ret


    or e
    ld c, $ff
    or e
    add hl, bc
    or e
    ld a, [bc]
    or e
    ld a, [bc]
    or e
    dec bc
    rst $38
    db $ed
    nop
    ld a, b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$340c], a
    add sp, -$24
    or l
    push hl
    sub l
    call c, $81b1
    ld h, c
    ld b, c
    ld sp, $3f11
    call c, $e5b5
    inc de
    and $83
    push hl
    ld b, e
    and $b3
    push hl
    sub c
    add a
    call c, $81a7
    sub c
    or c
    call c, $85b5
    ld b, c
    ld h, c
    ld b, c
    ld sp, $dc41
    and a
    ld h, a
    scf
    call c, Call_000_33b5
    and $b3
    push hl
    ld h, e
    inc sp
    or c
    sub a
    call c, $e4b7
    ld b, c
    ld sp, $3541
    ld de, $31e5
    ld b, c
    ld h, c
    ld [hl], c
    add c
    call c, $8097
    ld [hl], b
    add b
    ld [hl], b
    add c
    call c, Call_01f_67b7
    call c, $13b5
    and $83
    push hl
    ld b, e
    and $b3
    push hl
    sub c
    add a
    call c, $81b7
    sub c
    or c
    add l
    ld b, c
    ld h, c
    ld b, c
    ld sp, $6741
    call c, $3397
    inc de
    call c, Call_000_33b5
    and $b3
    push hl
    ld h, e
    inc sp
    or c
    sub a
    call c, $61b7
    add c
    sub c
    or e
    sub e
    or c
    sub c
    add c
    ld h, c

jr_01f_58f5:
    call c, Call_01f_43c2
    and $b3
    push hl
    ld b, c
    ld b, e
    ld b, e
    call c, $e6b7
    or c
    push hl
    ld de, $3921
    and $b1
    push hl
    ld de, $4731
    call c, $e4b5
    inc sp
    push hl
    or e
    ld h, e
    inc sp
    call c, Call_01f_42b7
    jr nc, jr_01f_58f5

    or d
    ld de, $4931
    call c, $e6b7
    or c
    push hl
    ld de, $3921
    and $b1
    push hl
    ld de, $4731
    call c, $e4b5
    inc sp
    push hl
    or e
    ld h, e
    sub e
    call c, $81b7
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add a
    cp $00
    add h
    ld e, b
    db $ec
    ld [bc], a
    ld [$230a], a
    call c, $e4c6
    dec d
    call c, $e5c1
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    db $ec
    inc bc
    or b
    and b
    or b
    and b
    or b
    and b
    or a
    db $ec
    ld [bc], a
    call c, $e5c7
    ld b, e
    and $b3
    push hl
    add e
    ld b, e
    db $e4
    ld de, $bde5
    db $e4
    ld b, l
    ld sp, $e511
    or c
    sub c
    add c
    sbc a
    ld h, e
    inc sp
    sub e
    ld h, e
    db $e4
    ld sp, $651d
    ld b, c
    ld sp, $e511
    or c
    and c
    cp a
    ld b, e
    and $b3
    push hl
    add e
    ld b, e
    db $e4
    ld de, $bde5
    db $e4
    ld b, l
    ld sp, $e511
    or c
    sub c
    add c
    sbc a
    ld h, e
    inc sp
    sub e
    ld h, e
    db $e4
    ld sp, $651d
    ld b, c
    ld sp, $6141
    add c
    call c, Call_01f_41c1
    call c, Call_01f_40a1
    jr nc, jr_01f_59eb

    jr nc, jr_01f_59ed

    jr nc, jr_01f_59f0

    call c, $e5c7
    or c
    db $e4
    ld de, $3921
    push hl
    or c
    db $e4
    ld de, $4931
    push hl
    or c
    db $e4
    ld de, $dc31
    push bc
    ld h, e
    inc sp
    push hl

jr_01f_59c7:
    or e
    db $e4
    sub e
    add d
    sub b
    call c, $81c2
    ld h, c
    ld b, c
    call c, $e5c7
    or c
    db $e4
    ld de, $3921
    push hl
    or c
    db $e4
    ld de, $4931
    push hl
    or c
    db $e4
    ld de, $6331
    inc sp
    sub e
    ld h, e

jr_01f_59e8:
    cp a
    cp $00

jr_01f_59eb:
    ld e, h
    ld e, c

jr_01f_59ed:
    call c, $e313

jr_01f_59f0:
    db $10
    call nz, Call_01f_60e4
    ret nz

    add b
    ret nz

    sub b
    ret nz

    and b
    ret nz

    and b
    ret nz

    or b
    ret z

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_01f_59c7

    db $fd
    ld a, d
    ld e, d
    db $fd
    adc a
    ld e, d
    db $fd
    and h
    ld e, d
    db $fd
    cp c
    ld e, d
    db $fd
    adc $5a
    db $fd
    db $e3
    ld e, d
    db $fd
    ld hl, sp+$5a
    jr nc, @-$3e

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    jr nc, jr_01f_59e8

    sub b
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    db $fd
    ld a, d
    ld e, d
    db $fd
    adc a
    ld e, d
    db $fd
    and h
    ld e, d
    db $fd
    cp c
    ld e, d
    db $fd
    adc $5a
    db $fd
    db $e3
    ld e, d
    db $fd
    ld hl, sp+$5a
    ld b, b
    jp nz, $b0e5

    jp nz, Jump_01f_40e4

    ret nz

    ld b, b
    jp nz, $c0b0

    db $fd
    adc $5a
    db $fd
    ld a, d
    ld e, d
    db $fd
    dec c
    ld e, e
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

jr_01f_5a63:
    ret nz

    add b
    ret nz

    ld h, b
    ret nz

    ld b, b
    ret nz

    db $fd
    adc $5a
    db $fd
    ld a, d
    ld e, d
    db $fd
    dec c
    ld e, e
    db $fd
    adc a
    ld e, d
    cp $00
    rlca
    ld e, d
    ld b, b

jr_01f_5a7b:
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

jr_01f_5a85:
    ret nz

    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    rst $38
    ld b, b

jr_01f_5a90:
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

jr_01f_5a9a:
    ret nz

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_01f_5a63

    rst $38
    ld b, b

jr_01f_5aa5:
    ret nz

    or b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    or b
    ret nz

    ld b, b

jr_01f_5aaf:
    ret nz

    or b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    or b

jr_01f_5ab7:
    ret nz

    rst $38
    jr nc, jr_01f_5a7b

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    jr nc, jr_01f_5a85

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    rst $38
    jr nc, jr_01f_5a90

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    jr nc, jr_01f_5a9a

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    rst $38
    jr nc, jr_01f_5aa5

    ld h, b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    ld h, b
    ret nz

    jr nc, jr_01f_5aaf

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_01f_5ab7

    rst $38
    ld h, b
    ret nz

    or b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    or b
    ret nz

    ld h, b
    ret nz

    or b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    or b
    ret nz

    rst $38
    ld h, b
    ret nz

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    ld h, b
    ret nz

    sub b
    ret nz

jr_01f_5b1b:
    push hl
    or b
    ret nz

    db $e4
    sub b
    ret nz

    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    ld [$3409], a
    db $ec
    inc bc
    call c, $e6c1
    ld b, b
    ld [hl], b
    or b
    push hl
    jr nz, jr_01f_5b1b

    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ret c

    pop bc
    sub c
    sub c
    sub c
    sub c
    sub c
    ld h, c
    db $fd
    and e
    ld e, e
    db $fd
    xor h
    ld e, e
    db $fd
    and e
    ld e, e
    push hl
    rlca
    ret c

    add $43
    ld b, e
    inc bc
    call c, $e6c6
    or a
    ret c

    rst $20
    push hl
    ld d, e
    ld b, e
    inc bc
    call c, $29e7
    call c, $e6c6
    or c
    push hl
    ld bc, $fd21
    and e
    ld e, e
    db $fd
    xor h
    ld e, e
    db $fd
    and e
    ld e, e
    dec b
    dec b
    ld b, e
    dec h
    ld d, c
    ld [hl], c
    inc hl
    ld [hl], c
    ld [hl], l
    sub e
    ld d, c
    sub c
    db $e4
    ld bc, $2be5
    ld b, e
    ld d, a
    ld [hl], e
    ld d, e
    ld c, e
    ld d, e
    ld [hl], a
    call c, $e4b6

jr_01f_5b8b:
    inc bc
    inc de
    db $fd
    cp [hl]

jr_01f_5b8f:
    ld e, e
    ret c

    or h
    db $e4

jr_01f_5b93:
    inc bc
    inc bc
    inc de
    db $fd

jr_01f_5b97:
    cp [hl]
    ld e, e
    ret c

    or d
    push hl
    ld b, e
    ld b, e
    inc de
    cp $00
    ld b, h
    ld e, e
    call c, $e5c6
    dec h
    and $b1
    push hl
    daa
    rst $38
    dec b
    ld d, l
    inc bc
    daa
    call c, Call_01f_55e7
    ld b, b
    jr nc, jr_01f_5bdd

    ret c

    add $03
    and $b3
    push hl
    inc bc
    rst $38
    call c, Call_000_20c1
    ret nz

    and $20
    jr nz, @+$22

    ret nz

    jr nz, jr_01f_5be9

    jr nz, jr_01f_5b8b

    jr nz, jr_01f_5bed

    jr nz, jr_01f_5b8f

    jr nz, jr_01f_5bf1

    jr nz, jr_01f_5b93

    jr nz, jr_01f_5bf5

    jr nz, jr_01f_5b97

    jr nz, jr_01f_5bf9

    rst $38
    ld [$4610], a

jr_01f_5bdd:
    db $ec
    ld bc, $e1dc
    and $70
    or b
    push hl
    jr nz, @+$62

    ld [hl], e
    ld [hl], l

jr_01f_5be9:
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], e

jr_01f_5bed:
    ld [hl], e
    ret c

    pop hl
    ld d, c

jr_01f_5bf1:
    ld d, c
    ld d, c
    ld d, c
    ld d, c

jr_01f_5bf5:
    ld h, c
    ld [$4610], a

jr_01f_5bf9:
    db $fd
    add h
    ld e, h
    and $93
    ld d, e
    db $fd
    adc [hl]
    ld e, h
    and $97
    cp a
    db $fd
    add h
    ld e, h
    and $95
    ld d, c
    ret c

    rst $20
    db $e4
    inc bc
    push hl
    or e
    db $e4
    inc bc
    call c, Call_000_27e7
    call c, $e695
    dec h
    jr nz, jr_01f_5c7c

    ld a, a
    db $fd
    add h
    ld e, h
    and $91
    ld d, l
    db $fd
    adc [hl]
    ld e, h
    push hl
    ld bc, $95e6
    or l
    ld [hl], c
    ld d, a
    db $fd
    add h
    ld e, h
    ret c

    sub l
    and $73
    ld d, h
    sub d
    ret c

jr_01f_5c37:
    and $e4
    ld d, e

jr_01f_5c3a:
    ld b, e
    ld d, e
    call c, Call_01f_75e7
    and c
    ld [hl], a
    ld [$2610], a

jr_01f_5c44:
    db $ec
    inc bc
    call c, $770b
    call c, $97e7
    db $ec
    ld bc, $e7dc
    and l
    ld d, c

jr_01f_5c52:
    ld d, a
    push hl
    daa
    db $e4
    and e
    or e
    db $e3
    dec b
    db $e4
    ld [hl], c
    ld [hl], a
    push hl
    ld b, a
    call c, $e3d7
    inc bc

jr_01f_5c63:
    inc de
    db $fd

jr_01f_5c65:
    sbc b
    ld e, h
    jp nz, $c220

    jr nz, jr_01f_5c44

jr_01f_5c6c:
    push hl
    db $e3
    inc bc
    inc bc
    inc de
    db $fd
    sbc b
    ld e, h
    jr nz, jr_01f_5c37

    jr nz, jr_01f_5c3a

    jr nz, jr_01f_5c52

    db $e3
    db $e3

jr_01f_5c7c:
    inc bc
    inc bc
    db $e4
    or e
    cp $00
    or $5b
    call c, $e5e7
    ld [hl], l
    or c
    db $e4
    daa
    call c, $ff95
    call c, $e4e7
    ld d, l
    ld b, b
    jr nc, jr_01f_5cbc

    call c, $ff95
    call c, $20e1
    pop bc
    db $e4
    jr nz, @-$3c

    jr nz, jr_01f_5c63

    jr nz, jr_01f_5c65

    jr nz, @+$01

    call c, $e510
    ld [hl], b
    ret nz

    jr nz, jr_01f_5c6c

    ld [hl], b
    jp nz, $c470

    ld [hl], b
    ld [hl], b
    ld [hl], b
    jp nz, $c270

    ld [hl], b
    jp nz, Jump_000_10d8

    ld d, c
    ld d, c

jr_01f_5cbc:
    ld d, c
    ld d, c
    ld d, c
    sub c
    db $fd
    dec hl
    ld e, l
    db $fd
    ld [hl-], a
    ld e, l
    db $fd
    dec hl
    ld e, l
    db $fd
    dec hl
    ld e, l
    db $fd
    dec hl
    ld e, l
    db $fd
    ld [hl-], a
    ld e, l
    cp $03
    add $5c
    db $fd
    dec hl
    ld e, l
    ld [hl], l
    ld [hl+], a
    sub l
    ld d, d
    sub d
    ld d, d
    db $fd
    add hl, sp
    ld e, l
    and d
    ld d, d
    db $fd
    add hl, sp
    ld e, l
    or d
    ld [hl], d
    db $fd
    ld a, $5d
    db $e4
    ld [bc], a
    push hl
    ld [hl], d
    db $fd
    ld a, $5d
    db $e4
    ld [de], a
    push hl
    sub d
    db $fd
    ld b, a
    ld e, l
    db $e3
    db $eb
    nop
    ld b, d
    inc hl
    jp $ebe2


    nop
    ld [hl-], a
    inc hl
    db $e3
    db $eb
    nop
    ld b, d
    inc hl
    pop bc
    ret c

    db $10
    db $e4
    inc bc
    inc bc

jr_01f_5d10:
    inc de
    db $fd
    ld b, a
    ld e, l
    ld [c], a
    db $eb
    nop
    ld [hl-], a
    inc hl
    jp $ebe3


    nop
    ld b, d
    inc hl
    push bc
    ret c

    db $10
    db $e4
    inc bc
    inc bc
    push hl
    or e
    cp $00
    ret nz

    ld e, h
    ld [hl], l
    ld [hl+], a
    ld [hl], l
    ld [hl+], a
    ld [hl], d
    ld [hl+], a
    rst $38
    ld d, l
    ld [bc], a
    ld d, l
    ld [bc], a
    ld d, d
    ld [bc], a
    rst $38
    and l
    ld d, d
    and l
    ld d, d
    rst $38
    db $e4
    dec b
    push hl
    ld [hl], d
    db $e4
    dec b
    push hl
    ld [hl], d
    rst $38
    call c, $e410
    jr nz, jr_01f_5d10

    rst $38
    sub $c3
    or b
    inc bc
    or b
    inc bc
    or b
    inc b
    or b
    inc b
    call c, $02b0
    jp nz, $02b0

    call nz, $02b0
    or b
    ld [bc], a
    or b
    ld [bc], a
    jp nz, $02b0

    jp nz, $02b0

    jp nz, $b1d8

    inc bc
    or c
    inc b
    or c
    ld [bc], a
    or c
    inc bc
    or c
    ld [bc], a
    or c
    ld bc, $b0dc
    ld [bc], a
    jp nz, $02b0

    call nz, $02b0
    or b
    ld [bc], a
    or b
    inc bc
    jp nz, $96fd

    ld e, [hl]
    db $fd
    sub [hl]
    ld e, [hl]
    or b
    ld [bc], a
    jp nz, $02b0

    call nz, $02b0
    or b
    ld [bc], a
    or b
    inc bc
    ret nz

    or b
    inc bc
    or b
    ld [bc], a
    db $fd
    and h
    ld e, [hl]
    or b
    ld [bc], a
    jp nz, $02b0

    call nz, $02b0
    or b
    inc bc
    or b
    ld [bc], a
    ret nz

    or b
    ld [bc], a
    ret nz

    db $fd
    and h
    ld e, [hl]
    or b
    ld [bc], a
    jp nz, $02b0

    call nz, $02b0
    or b
    inc bc
    or b
    ld [bc], a
    ret nz

    sub $b0
    inc bc
    or b
    inc bc
    or b
    inc b
    or b
    inc b
    call c, $96fd
    ld e, [hl]
    db $fd
    and h
    ld e, [hl]
    or b
    ld [bc], a
    jp nz, $02b0

    call nz, $02b0
    or b
    inc bc
    or b
    ld [bc], a
    jp nz, $02b0

    jp nz, $02b0

    call nz, $03b0
    or b
    ld [bc], a
    or b
    ld [bc], a
    ret nz

    or b
    inc bc
    or b
    ld [bc], a
    db $fd
    sub [hl]
    ld e, [hl]
    db $fd
    and h
    ld e, [hl]
    or b
    ld [bc], a
    jp nz, $02b0

    call nz, $03b0
    or b
    ld [bc], a
    or b
    ld [bc], a
    ret nz

    or b
    inc b
    or b
    inc bc
    or b
    ld [bc], a
    jp nz, $03b0

    call nz, $02b0
    or b
    inc b
    or b
    ld [bc], a
    ret nz

    sub $b0
    inc bc
    or b
    inc bc
    or b
    inc b
    or b
    inc b
    call c, Call_000_01b0
    jp nz, $02b0

    call nz, $03b0
    or b
    ld [bc], a
    or b
    ld bc, $b0c2
    ld [bc], a
    jp nz, $03b0

    call nz, $03b0
    or b
    ld [bc], a
    or b
    inc bc
    jp nz, $02b0

    jp nz, $03b0

    call nz, $02b0
    or b
    inc bc
    or b
    inc b
    ret nz

    or b
    inc bc
    or b
    ld [bc], a
    or b
    ld [bc], a
    jp nz, $03b0

    call nz, $02b0
    or b
    inc bc
    or b
    ld [bc], a
    jp nz, $05b0

    call nz, $02b0
    jp nz, $03b0

    or b
    ld [bc], a
    or b
    ld bc, $b0c4
    ld [bc], a
    or b
    inc bc
    or b
    ld [bc], a
    ret nz

    or b
    ld bc, $d8c0
    or e
    ld [bc], a
    or e
    inc bc
    or e
    ld bc, $b0dc
    dec b
    call nz, $02b0
    jp nz, $03b0

    or b
    ld [bc], a
    or b
    inc bc
    call nz, $02b0
    or b
    inc bc
    or b
    ld bc, $b0c0
    inc bc
    or b
    ld [bc], a
    ret c

    or e
    ld [bc], a
    or e
    inc bc
    or e
    ld [bc], a
    cp $00
    ld a, b
    ld e, l
    or b
    ld [bc], a
    jp nz, $02b0

    call nz, $02b0
    or b
    inc bc
    or b
    ld [bc], a
    jp nz, $b0ff

    ld [bc], a
    jp nz, $02b0

    call nz, $03b0
    or b
    ld [bc], a
    or b
    ld [bc], a
    jp nz, $f8ff

    db $ed
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
    sub b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    ld a, [bc]
    inc d
    call c, $e4b2
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    and e
    and e
    and e
    and e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    db $e3
    inc de
    inc de
    inc de
    inc de
    push hl
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    and e
    and e
    and e
    and e
    and $71
    and e
    ld [hl], c
    push hl
    inc de
    and $71
    and c
    or c
    ld [hl], c
    push hl
    inc de
    and $71
    sub e
    ld h, c
    cp $02
    db $f4
    ld e, [hl]
    call c, $e51f
    ld c, a
    rrca
    cpl
    and $af
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    cp $00
    db $f4
    ld e, [hl]
    ld [$150b], a
    db $ec
    inc bc
    call c, $e5c2
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    or e
    or e
    or e
    or e
    db $e4
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], e

Call_01f_5f60:
    ld [hl], e
    ld [hl], e
    ld h, e
    cp $02
    dec a
    ld e, a
    push hl
    ld b, c
    ld [hl], c
    ld b, c
    ld sp, $4141
    db $e3
    ld b, c
    pop bc
    ld sp, $21c1
    pop bc
    ld de, $e401
    ld b, c
    ld [hl], c
    push hl
    and c
    ld de, $91a1
    and c
    ld [hl], c
    db $e3
    ld [hl], c
    pop bc
    ld h, c
    pop bc
    ld d, c
    pop bc
    ld b, c
    ld sp, $1121
    rst $08
    rst $08
    rst $08
    rst $08
    call c, $ecc7
    ld bc, $4fe4
    cpl
    rrca
    cpl
    cp $00
    dec a
    ld e, a
    call c, $ea13
    ld [$fd26], sp
    inc sp
    ld h, b
    cp $10
    and d
    ld e, a
    ld b, e
    jp Jump_01f_43c3


    inc bc
    jp Jump_000_03c3


    inc hl
    jp Jump_000_23c3


    push hl
    and e
    jp $a3c3


    db $e3
    ld b, c
    pop bc
    or c
    pop bc
    and c
    pop bc
    ld [c], a
    ld hl, $11c1
    pop bc
    db $e3
    add c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    and c
    pop bc
    ld b, c
    pop bc
    ld sp, $91c1
    pop bc
    add c
    pop bc
    ld b, c
    pop bc
    ld h, c
    pop bc
    ld sp, $fec1
    inc bc
    cp d
    ld e, a
    db $e4
    ld b, e
    or e
    and e
    db $e3
    inc hl
    inc de
    db $e4
    add e
    ld [hl], e
    or e
    and e
    ld b, e
    inc sp
    sub e
    add e
    ld b, e
    ld h, e
    inc sp
    push hl
    ld c, a
    rrca
    cpl
    and $af
    push hl
    ld c, a
    ld e, a
    ld a, a
    push hl
    cp a
    rst $08
    rst $08
    rst $08
    rst $08
    db $fd
    inc sp
    ld h, b
    db $fd
    inc sp
    ld h, b
    db $fd
    inc sp
    ld h, b
    db $fd
    inc sp
    ld h, b
    db $fd
    inc sp
    ld h, b
    db $fd
    inc sp
    ld h, b
    db $fd
    inc sp
    ld h, b
    db $fd
    inc sp
    ld h, b
    cp $00
    and d
    ld e, a
    and $71
    and e
    ld [hl], c
    push hl
    inc de
    and $71
    sub c
    and c
    ld [hl], c
    push hl
    inc de
    and $71
    and c
    ld [hl], c
    pop bc
    rst $38
    db $e4
    ld b, c
    jp Jump_01f_40e5


    jp nz, $c040

    db $e4
    ld h, e
    rst $38
    call c, Call_000_0cb3
    or e
    dec c
    or e
    inc c
    or e
    ld a, [bc]
    or e
    inc c
    or e
    dec c
    or e
    dec bc
    or e
    add hl, bc
    cp $00
    ccf
    ld h, b
    db $ed
    nop
    and b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    ld [$dc14], sp
    jp Jump_000_14fd


    ld h, c
    cp $03
    ld h, b
    ld h, b
    and $b1
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $3171
    ld b, c
    db $fd
    inc hl
    ld h, c
    cp $04
    ld [hl], e
    ld h, b
    db $fd
    inc d
    ld h, c
    cp $04
    ld a, d
    ld h, b
    db $e4
    ld d, c
    ld d, c
    pop bc
    ld d, c
    ld b, c
    ld b, c
    ld sp, $c131
    ld sp, $2121
    db $fd
    ld e, [hl]
    ld h, c
    db $e4
    ld hl, $c121
    ld hl, $3131
    ld b, c
    ld b, c
    pop bc
    ld b, c
    ld d, c
    ld d, c
    db $fd
    jr nc, jr_01f_6102

    cp $04
    sbc [hl]
    ld h, b
    db $fd
    ccf
    ld h, c
    cp $03
    and l
    ld h, b
    push hl
    ld de, $91e6
    ld d, c
    push hl
    ld de, $91e6
    ld d, c

Call_01f_60b6:
    push hl
    sub c
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    sub c
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    db $e4
    ld de, $91e5
    ld d, c
    add c

Call_01f_60e4:
    ld b, c
    db $e4
    ld bc, $81e5
    ld b, c
    db $e4
    ld bc, $4cfd
    ld h, c
    db $fd
    ld c, h
    ld h, c
    push hl
    add c
    ld b, c
    db $e4
    ld bc, $81e5
    ld b, c
    db $e4
    ld bc, $81e5
    ld b, c
    rst $08
    rst $00
    db $fd

jr_01f_6102:
    ld e, c
    ld h, c
    db $fd
    ld e, c
    ld h, c
    db $fd
    ld e, c
    ld h, c
    db $fd
    ld e, c
    ld h, c
    ld sp, $cfcf
    cp $00
    ld e, [hl]
    ld h, b
    and $b1
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $41ff
    add c
    db $e4
    ld bc, $41e5
    add c
    db $e4
    ld bc, $41e5
    add c
    rst $38
    push hl
    ld sp, $b1e6
    push hl
    ld [hl], c
    ld sp, $b1e6
    push hl
    ld [hl], c
    ld sp, $b1e6
    rst $38
    sub c
    ld d, c
    push hl
    ld de, $91e6
    ld d, c
    push hl
    ld de, $91e6
    ld d, c
    rst $38
    push hl
    add c
    ld b, c
    add c
    ld b, c
    db $e4
    ld bc, $81e5
    ld b, c
    db $e4
    ld bc, $31ff
    ld [hl], c
    ld sp, $ff15
    db $ed
    nop
    xor b
    rst $20
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_6199

    ld b, b
    ld d, b
    db $ed
    nop
    or b
    rst $20
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_61a6

    ld b, b
    ld d, b
    db $ed
    nop
    cp b
    rst $20
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_61b3

    ld b, b
    ld d, b
    db $ed
    nop
    ret nz

    rst $20
    sub b
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_61c1

    ld b, b
    db $ed
    nop
    ret z

    rst $20
    add b
    sub b
    and b

jr_01f_6199:
    or b

jr_01f_619a:
    and $00
    db $10
    jr nz, jr_01f_61cf

    db $ed
    nop
    ret nc

    rst $20
    ld [hl], b
    add b
    sub b

jr_01f_61a6:
    and b
    or b
    and $00
    db $10
    jr nz, jr_01f_619a

    nop
    ret c

    rst $20
    ld h, b
    ld [hl], b
    add b

jr_01f_61b3:
    sub b
    and b
    or b
    and $00
    db $10
    db $ed
    nop
    ldh [$e7], a
    ld d, b
    ld h, b
    ld [hl], b
    add b

jr_01f_61c1:
    sub b
    and b
    or b
    and $00
    db $ed
    nop
    and b
    rst $38
    ld [$150b], a
    db $ec
    inc bc

jr_01f_61cf:
    call c, $e4d3
    dec [hl]
    dec d
    push hl
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    and c
    or l
    db $e4
    rla
    pop bc
    add l
    ld h, l
    ld b, c
    ld h, c
    add c
    db $e3
    ld bc, $81e4
    ld h, l
    ld b, c
    ld h, c
    add c
    db $e3
    ld bc, $81e4
    ld h, l
    ld b, c
    ld sp, $6545
    ld b, e
    dec [hl]
    dec d
    push hl
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    and c
    or l
    db $e4
    rla
    pop bc
    add c
    add c
    pop bc
    add c
    sub c
    sub c
    and c
    and c
    pop bc
    and c
    or c
    or c
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    db $e4
    or c
    or c
    pop bc
    or c
    and c
    and c
    sub c
    sub c
    pop bc
    sub c
    add c
    add c
    rla
    pop bc
    push hl
    or l
    and c
    or c
    db $e4
    ld sp, $3171
    dec d
    push hl
    or c
    db $e4
    ld de, $7131
    ld sp, $e515
    or c
    db $e4
    ld de, $7535
    push hl
    ld [hl], a
    pop bc
    ld d, l
    ld b, c
    ld d, c
    sub c
    db $e4
    ld de, $91e5
    ld [hl], l
    ld d, c
    ld [hl], c
    sub c
    db $e4
    ld de, $91e5
    ld [hl], l
    sub l
    db $e4
    dec d
    ld [hl], a
    pop bc
    ld d, l
    ld b, c
    ld d, c
    sub c
    db $e3
    ld de, $91e4
    ld [hl], l
    sub c
    db $e3
    ld de, $91e4
    ld [hl], l
    sub l
    db $e3
    dec d
    db $e4
    ld h, a
    pop bc
    ld b, l
    ld sp, $8141
    db $e3
    ld bc, $81e4
    ld h, l
    ld b, c
    ld h, c
    add c
    db $e3
    ld bc, $81e4
    ld h, l
    add l
    db $e3
    dec b
    push hl
    ld sp, $3171
    dec d
    ld sp, $3171
    dec d
    and $41
    add c
    push hl
    ld bc, $8141
    db $e4
    ld bc, $8141
    ld bc, $8141
    ld bc, $8141

Call_01f_62b1:
    ld bc, $8141
    ld bc, $8141
    ld bc, $8141
    ld bc, $e631
    or c
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $b1e6
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $e671
    or c
    push hl
    ld sp, $00fe
    rst $08
    ld h, c
    call c, $cf12
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    set 2, [hl]
    db $10
    push hl
    or b
    db $e4
    nop
    db $10
    jr nz, jr_01f_6323

    ld b, b
    pop bc
    nop
    db $10
    jr nz, jr_01f_6329

    ld b, b
    ld d, b
    rst $08
    rst $08
    ret


    db $e3
    ld b, a
    db $e4
    or a
    db $e3
    scf
    db $e4
    and a
    db $e3
    daa
    db $e4
    sub a
    db $e3
    rla
    db $e4
    add a
    db $e3
    rlca
    db $e4
    ld [hl], a
    or a
    ld h, a
    and a
    ld d, a
    sub a
    ld b, a
    rst $08
    rst $08
    rst $00
    ld d, b
    ld b, b
    jr nc, jr_01f_633f

    stop
    pop bc
    ld b, b

jr_01f_6323:
    jr nc, @+$22

    stop
    push hl
    or b

jr_01f_6329:
    ret


    rst $08
    call c, $cf10
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08

jr_01f_633f:
    rst $08
    rst $08
    ret


    cp $00
    call c, $dc62
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    ret


    rst $38
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    ld [$250b], a
    db $ec
    ld [bc], a
    call c, $e362
    ld b, b
    ld b, b
    db $e4
    or b
    or b
    nop
    pop bc
    db $e3
    or c
    ld b, c
    db $e4
    ld bc, $41b1
    nop
    db $e3
    or b
    pop bc
    cp $0e
    ld a, e
    ld h, e
    call c, $cfa5
    rst $08
    adc $e4
    nop
    db $e3
    or b
    or c
    cp $00
    ld a, e
    ld h, e
    db $ec
    ld [bc], a
    add sp, -$16
    ld a, [bc]
    inc h
    call c, $cfc2
    rst $08
    cp $04
    xor d
    ld h, e
    call c, $fdc2
    adc $63
    cp $03
    or d
    ld h, e
    push hl
    ld b, e
    inc sp
    or e
    and e
    ld [hl], e
    add e
    jp Jump_01f_43a3


    inc sp
    or e
    and e
    ld [hl], e
    add e
    ld [hl], e
    inc sp
    cp $00
    or b
    ld h, e
    push hl
    ld b, e
    inc sp
    or e
    and e
    ld [hl], e
    add e
    sub e
    and e
    ld b, e
    inc sp
    or e
    and e
    ld [hl], e
    add e
    jp $ffa3


    call c, $e611
    or c
    pop bc
    push hl
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc
    ld bc, $e5c1
    ld sp, $31c1
    pop bc
    ld sp, $31c1
    pop bc
    ld sp, $31c1
    pop bc
    ld sp, $fec1
    ld [$63e2], sp
    ld c, a
    ccf
    ld a, a
    add a
    scf
    cp $00
    ld [c], a
    ld h, e
    sub $cf
    rst $08
    rst $08
    rst $08
    or c
    inc c
    or c
    inc c
    or e
    dec c
    or c
    inc c
    or c
    inc c
    or e
    dec c
    or c
    inc c
    or c
    inc c
    or e
    dec c
    or c
    inc c
    or c
    inc c
    or e
    ld c, $b1
    inc c
    or c
    inc c
    pop bc
    ret


    rst $00
    or a
    ld c, $fe
    nop
    rla
    ld h, h
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
    rst $38
    ld hl, sp-$14
    ld [bc], a
    push de
    jp nz, Jump_01f_51e3

    ld b, b
    ret nz

    ld hl, $c000
    db $e4
    and c
    db $e3
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

jr_01f_648a:
    ld hl, sp-$13

jr_01f_648c:
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
    jr nc, jr_01f_648a

    jr nc, jr_01f_648c

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
    adc h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$1210], a
    add sp, -$24
    or e
    and $b0
    push hl
    db $10
    jr nz, @+$42

    ld h, b
    add b
    sub b
    or b
    db $e4
    inc de
    push hl
    or c
    db $e4
    ld de, $93e5
    add c
    sub c
    or b
    jp nz, $8095

    or b
    db $e4
    inc de
    push hl
    sub e
    add c
    sub c
    ld h, e
    ld b, c
    ld h, c
    add b
    jp nz, Jump_01f_4367

jr_01f_654e:
    sub l
    ld b, b
    sub b
    db $e4
    daa
    dec d
    push hl
    sub b
    db $e4
    db $10
    ld b, a
    inc hl
    inc de
    push hl
    or e
    sub e
    add b
    jp nz, $6343

    add e
    cp $00
    ld [hl-], a
    ld h, l
    db $ec
    inc bc
    ld [$250a], a

jr_01f_656c:
    call c, $e5c4
    add b
    sub b
    or b
    db $e4
    db $10
    jr nz, @+$42

    ld h, b
    add b
    sub l
    add b
    ld h, b
    ld b, l
    jr nc, jr_01f_65be

    ld h, b
    jp nz, $4347

    ld h, l
    ld b, b
    jr nz, jr_01f_659b

    push hl
    or b
    db $e4
    db $10
    jr nz, jr_01f_654e

    rla
    inc de
    dec h
    push hl
    sub b
    db $e4
    jr nz, @+$69

    ld b, l
    db $10
    ld b, b
    sub a
    add e
    sub c
    add c

jr_01f_659b:
    ld h, e
    add c
    ld h, c
    ld b, b
    ret nz

    push hl
    add b
    ret nz

    sub b
    ret nz

    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nz, jr_01f_656c

    ld b, b
    ret nz

    ld h, b
    ret nz

Call_01f_65b0:
    cp $00
    ld a, b
    ld h, l

jr_01f_65b4:
    call c, $c111

Call_01f_65b7:
    db $e4
    add b
    ret nz

    ld h, b
    ret nz

jr_01f_65bc:
    ld b, b
    ret nz

jr_01f_65be:
    db $10
    ret nz

    sub b
    jp nz, $c290

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    jp nz, $c290

    sub b
    ret nz

    ld b, b
    ret nz

jr_01f_65d4:
    sub b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    jp nz, $c260

    ld h, b
    ret nz

    db $10
    ret nz

    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    jp nz, $c260

    ld h, b
    ret nz

    db $10
    ret nz

    ld h, b
    ret nz

    jr nz, jr_01f_65b4

    ld h, b
    jp nz, $c260

    ld h, b
    ret nz

    jr nz, jr_01f_65bc

    ld h, b
    ret nz

    ld b, b
    ret nz

    sub b
    jp nz, $c290

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    jp nz, $c080

    jr nz, jr_01f_65d4

    ld h, b
    jp nz, $c060

    ld b, b
    call nz, $c280
    ld h, b
    jp nz, $c040

    db $10
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

jr_01f_662e:
    sub b
    ret nz

    db $10
    ret nz

jr_01f_6632:
    sub b
    ret nz

    db $10
    ret nz

jr_01f_6636:
    sub b
    ret nz

    db $10
    ret nz

jr_01f_663a:
    sub b
    ret nz

    db $10
    ret nz

    sub b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    ret nz

    db $10
    ret nz

    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4

jr_01f_665a:
    ld h, b
    ret nz

    push hl
    sub b

jr_01f_665e:
    ret nz

    db $e4
    ld h, b
    ret nz

    push hl
    sub b
    ret nz

    db $e4
    ld h, b
    ret nz

    db $10
    ret nz

    ld h, b
    ret nz

    jr nz, jr_01f_662e

    ld h, b
    ret nz

    jr nz, jr_01f_6632

    ld h, b
    ret nz

    jr nz, jr_01f_6636

    ld h, b
    ret nz

    jr nz, jr_01f_663a

    ld h, b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    ld b, b
    ret nz

    sub b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    push hl
    or b
    ret nz

    db $e4
    add b
    ret nz

    jr nz, jr_01f_665a

    ld h, b
    ret nz

    jr nz, jr_01f_665e

    ld h, b
    ret nz

    ld b, b
    jp nz, $c280

    ld h, b
    jp nz, $c240

    cp $00
    cp [hl]
    ld h, l
    db $ed
    nop
    sbc b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    inc c
    inc hl
    call c, $c380
    db $e4
    cp e
    call c, $e4b4
    ld [hl], b
    add $70
    add $e5
    or b
    add $b0
    jp nz, $c2b0

    or b
    add $b0
    add $b0
    add $e4
    ld h, b
    add $00
    push hl

jr_01f_66d5:
    or b
    ld [hl], b

jr_01f_66d7:
    call nz, $c640
    ld b, b
    add $60
    add $40
    add $70
    add $70
    add $60
    add $60
    add $70
    add $40
    add $20
    add $40
    add $70
    add $70
    add $60
    add $b0
    add $b0
    add $e4
    nop
    add $00
    add $10
    add $10
    add $00
    add $00
    jp nz, $84dc

    nop
    jp nz, $b4dc

    jr nz, jr_01f_66d5

    jr nz, jr_01f_66d7

    push hl
    sub b
    add $90
    add $dc
    and a
    or a
    or a
    db $e4
    rlca
    rlca
    rla
    rla
    call c, $2fa6
    rst $08
    rst $08
    rst $08
    rst $08
    call c, $b392
    db $e3
    ld b, e
    inc hl
    inc bc
    db $e4
    or e
    db $e3
    ld b, e
    inc hl
    inc bc
    db $e4
    or e
    db $e3
    ld b, e
    inc hl
    inc bc

jr_01f_6739:
    db $e4
    or e
    ld [hl], e
    ld h, e
    ld b, e
    db $e3
    rrca
    rrca
    cp $00
    cp h
    ld h, [hl]
    ld [$3414], a
    db $ec
    inc bc
    call c, $e3a0
    dec bc
    db $e4
    ld b, e
    call c, $e3c1
    rlca
    db $e4
    or e
    call c, Call_01f_70c4
    ld h, b
    ld b, b
    jr nc, jr_01f_6739

    or b
    ld [hl], a
    db $e3
    rlca
    db $e4
    or e
    ld [hl], e
    ld b, e
    ld [hl], e
    db $e3
    rlca
    call c, $07b7
    call c, $e4c2
    ld [hl], b
    ld h, b
    ld b, b
    ret nz

    call c, $e596
    ld [hl], e
    call c, $73c7
    or e
    ld [hl], e
    or e
    db $e4
    inc bc
    push hl
    or e
    call c, $e4b0
    rrca
    ld b, a
    call c, Call_01f_4bb7
    call c, $e3c5
    inc bc
    db $e4
    or e
    ld [hl], e
    or e
    ld [hl], e
    ld h, e
    ld b, e
    call c, Call_01f_6bb0
    ld [hl], e
    call c, Call_01f_67b0
    call c, Call_01f_67b7
    call c, $b3b0
    ld [hl], e
    ld h, e
    ld b, e
    cp a
    call c, $e3b0
    inc bc
    db $e4
    ld [hl], e
    ld h, e
    ld b, e
    call c, $e390
    rrca

Call_01f_67b0:
    call c, Call_000_23b0
    db $e4
    sub e
    add e
    ld h, e

Call_01f_67b7:
    call c, $e32f
    cpl
    call c, $43c0
    db $e4
    or e
    sub e
    ld [hl], e
    db $e3
    ld d, e
    inc bc
    db $e4
    and e
    add e
    db $e3
    ld h, e
    inc hl
    inc bc
    db $e4
    and e
    add e
    ld h, e
    ld b, e
    inc hl
    call c, $07b0
    call c, $0790
    call c, $0780
    call c, $0770
    call c, $0760
    call c, Call_000_0767
    rst $08
    call c, $e3a0
    ld a, a
    ld [c], a
    rrca
    db $e3
    or a
    ld [hl], a
    ld b, a
    ld [hl], a
    ld [c], a
    rrca
    ld [$3400], a
    call c, Call_000_0fa7
    cp $00
    ld d, b
    ld h, a
    ld [$1104], a

jr_01f_67ff:
    call c, $c713
    db $e3
    ld [hl], a
    ld b, b
    add $40
    add $40
    add $40
    jp nz, Jump_000_3040

    ld h, b
    jr nc, jr_01f_6851

    add $70
    add $40
    add $b0
    add $40
    jr nc, jr_01f_67ff

    or b

jr_01f_681c:
    call nz, $c6b0
    or b
    add $b0
    add $e3
    nop
    add $00
    add $00
    add $00
    add $e4
    or b
    add $b0
    add $b0
    add $b0
    add $e3
    nop
    add $00
    add $00
    add $00
    add $40
    add $40
    add $40
    add $40
    add $40
    add $40
    add $40
    add $40
    jp nz, $c270

    ld h, b

jr_01f_6851:
    add $60
    add $20
    add $20
    jp nz, $c020

    jr nc, jr_01f_681c

    ld b, b

jr_01f_685d:
    add $40
    add $50

jr_01f_6861:
    add $50
    add $60
    add $60
    add $70
    adc $dc
    dec d
    db $e4
    ld h, b
    jp nz, $c260

    ld [hl], b
    jp nz, $c260

    ld h, b
    adc $60
    jp nz, $c260

    ld [hl], b
    jp nz, $c260

    ld h, b
    add $dc
    inc de
    ld [c], a
    ld b, b
    ret nz

    jr nc, @-$3e

    ld h, b
    ret nz

    jr nc, @-$3e

    ld b, b
    adc $40
    adc $40
    adc $40
    adc $40
    adc $40
    add $e3
    ld b, b
    ret nz

    jr nc, jr_01f_685d

    ld h, b
    ret nz

    jr nc, jr_01f_6861

    cp $00
    inc b
    ld l, b
    db $ed
    nop
    and b
    ldh a, [rPCM34]
    db $ec
    inc bc
    add sp, -$16
    ld [$d622], sp
    or e
    and $40
    ld h, b
    add b
    and b
    push hl
    nop
    sub $a0
    dec bc
    sub $b3
    ld bc, $b0e6
    and b
    add b
    ld h, b
    ld b, b
    ld b, c
    pop bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    push bc
    or c
    push bc
    and c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    pop bc
    push hl
    ld bc, $01c1
    push bc
    ld bc, $01c5
    push bc
    ld bc, $e6c5
    and c
    push bc
    or c
    pop bc
    ld [hl], c
    ret


    ld b, b
    ld h, b
    add b
    sub b
    sub $a0
    cp e
    sub $b3
    or b
    sub b
    ld [hl], b
    ld d, b
    ld b, b
    jp z, $8050

    and b
    or b
    sub $a0
    push hl
    dec bc
    sub $b3
    nop
    and $b0
    sub b
    ld [hl], b
    ld d, b
    jp z, $b060

    push hl
    nop
    db $10
    sub $a0
    dec hl
    sub $b3
    jr nz, jr_01f_691b

jr_01f_691b:
    and $a0
    ld [hl], b
    ld d, b
    jp z, $8050

    and b
    or b
    sub $a0
    push hl
    dec bc
    sub $b3
    nop
    and $b0
    add b
    ld d, b
    ld b, b
    add $d6
    add b
    cp a
    sub $b0
    push hl
    ld b, a
    db $ed
    nop
    ld a, h
    sub $b3
    and $b1
    ret


    or c
    ret


    or c
    push bc
    or c
    rst $08
    push bc
    sub c
    push bc
    or c
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    and c
    sub c
    and c
    or c
    and c
    db $fd
    ld d, d
    ld l, d
    db $fd
    ld d, d
    ld l, d
    db $fd
    ld d, d
    ld l, d
    jp $c501


    ld bc, $01c5
    push bc
    and $b1
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    and c
    push bc
    sub c
    push bc
    sub c
    push bc
    sub c
    push bc
    sub c
    push bc
    sub c
    push bc
    sub c
    push bc
    and c
    push bc
    and c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    push hl
    ld bc, $01c5
    push bc
    and $b1
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    push hl
    or c
    push bc
    or c
    push bc
    db $e4
    ld bc, $01c5
    push bc
    and $b1
    push bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    db $e4
    ld b, c
    push bc
    ld b, c
    push bc
    ld sp, $31c5
    pop bc
    and $b0
    and b
    add b
    ld h, b

jr_01f_69d9:
    ld b, b
    sub $60
    ld c, a
    ld c, d
    sub $b3
    ld b, b
    ld h, b
    add b
    and b
    push hl
    nop
    sub $3f
    rrca
    sub $a0
    ld a, [bc]
    sub $93
    and $b0
    and b
    add b
    ld h, b
    ld b, b
    sub $3f
    ld c, a
    sub $90
    ld c, d
    sub $b3
    ld d, b
    ld [hl], b
    and b
    push hl
    nop
    jr nz, jr_01f_69d9

    ccf
    cpl
    sub $a7
    ld a, [hl+]
    jp $edc3


    nop
    add b
    jp $edc3


    nop
    adc b
    jp $edc3


    nop
    sub b
    jp $edc3


    nop
    and b
    jp $edc3


    nop
    ret nz

    jp $edc3


    ld bc, $c320
    jp $01ed


    and b
    jp Jump_000_04ed


    nop
    jp Jump_000_00ed


    and b
    jp $43d6


    and $b1
    push bc
    sub $63
    or c
    push bc
    sub $83
    or c
    push bc
    sub $50
    or a
    sub $b3
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    pop bc
    cp $00
    rst $08
    ld l, b
    and $b1
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $b1e6
    and c
    or c
    push hl
    ld bc, $eaff
    ld a, [bc]
    ld [hl-], a
    db $ec
    inc bc
    sub $c3
    push hl
    ld b, b
    ld h, b
    add b
    and b
    db $e4
    nop
    sub $b0
    dec bc
    sub $c3
    ld bc, $b0e5
    and b
    add b
    ld h, b
    ld b, b
    ld b, c
    pop bc
    and $71
    push bc
    ld h, c
    push bc
    ld [hl], c
    push bc
    add c
    pop bc
    ld b, c
    pop bc
    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld h, c
    push bc
    ld [hl], c
    push bc
    add c
    pop bc
    ld b, c
    pop bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    add c
    pop bc
    sub $b7
    db $ec
    ld [bc], a
    db $e4
    ld b, a
    scf
    ld b, a
    ld d, a
    ld b, a
    scf
    daa
    scf
    ld b, a
    ld d, a
    ld h, a
    ld [hl], a
    add a
    scf
    daa
    scf
    db $ec
    inc bc
    sub $6f
    ld c, a
    sub $c0
    cp a
    sub $c4
    push hl
    ld b, e
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    add e
    inc sp
    inc hl
    inc sp
    sub $c2
    db $ec
    ld bc, $43e4
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    sub $c4
    db $ec
    inc bc
    push hl
    ld d, e
    ld h, e
    ld [hl], e
    add e
    inc sp
    inc hl
    inc sp
    ld b, e
    inc sp
    ld b, e
    sub $c0
    ld d, a
    sub $b7
    ld d, a
    sub $8a
    ld d, e
    sub $c4
    db $ec
    inc bc
    ld d, e
    ld b, e
    ld d, e
    sub $a0
    ld h, a
    sub $b0
    ld h, a
    sub $99
    ld h, e
    sub $c4
    ld h, e
    ld d, e
    ld h, e
    sub $90
    ld a, e
    sub $59
    ld [hl], a
    sub $c4
    ld [hl], e
    ld h, e
    ld [hl], e
    ld h, e
    ld d, e
    ld h, e
    ld d, e
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc de
    inc hl
    inc sp
    inc hl
    sub $c2
    db $ec
    ld bc, $6353
    ld [hl], e
    add e
    sub e
    sub $b4
    db $ec
    inc bc
    inc sp
    inc hl
    inc sp
    sub $c2
    db $ec
    ld bc, $6353
    ld [hl], e
    add e
    and e
    sub $b4
    db $ec
    inc bc
    inc sp
    inc hl
    inc sp
    sub $c2
    db $ec
    ld bc, $6353
    ld [hl], e
    add e
    or e
    sub $b4
    db $ec
    inc bc
    inc sp
    inc hl
    inc sp
    sub $c2
    db $ec
    ld bc, $6353
    ld [hl], e
    add e
    db $e4
    inc bc
    sub $b4
    db $ec
    inc bc
    push hl
    inc sp
    inc hl
    inc sp
    jp $c571


    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld [hl], c
    pop bc
    db $ec
    nop
    db $e4
    ld b, c
    pop bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    add c
    push bc
    db $ec
    inc bc
    push hl
    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld [hl], c
    push bc
    ld [hl], c
    pop bc
    db $ec
    nop
    db $e4
    ld b, c
    pop bc
    or c
    push bc
    or c
    push bc
    or c
    push bc
    or c
    pop bc
    db $ec
    inc bc
    push hl
    ld [hl], c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc

Call_01f_6bb0:
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    ld b, c
    pop bc
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    ld b, c
    pop bc
    ld [hl], c
    pop bc
    or c
    pop bc
    ld [hl], c
    pop bc
    db $e4
    ld bc, $e5c1
    ld [hl], c
    pop bc
    sub $87
    db $e3
    ld b, e
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    add e
    inc sp
    inc hl
    inc sp
    jp $43d6


    and $71
    push bc
    sub $63
    ld h, c
    push bc
    sub $83
    ld [hl], c
    push bc
    sub $4f
    add a
    sub $b4
    ld [hl], c
    push bc
    ld h, c
    push bc
    ld [hl], c
    push bc
    add c
    pop bc
    cp $00
    sub b
    ld l, d
    ld [$1108], a
    call c, $cb11
    db $e3
    ld b, e
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    add e

jr_01f_6c34:
    inc sp
    inc hl
    inc sp
    ld b, b
    ret nz

    ld [hl], b
    jp nz, $c260

    ld [hl], b

jr_01f_6c3e:
    jp nz, $c080

    ld b, b
    ret nz

    ld [hl], b
    jp nz, $c280

    ld [hl], b
    jp nz, $c260

    ld [hl], b
    jp nz, $c080

    ld d, b
    ret nz

    add b
    jp nz, $c280

    ld [hl], b
    jp nz, $c080

    ld b, b
    ret nz

    add b
    jp nz, $c270

    ld [hl], b
    jp nz, $c270

    ld [hl], b
    jp nz, $c070

    db $e4
    ld b, b
    call nz, $c450
    ld d, b
    jp nz, $ca40

    jr nc, jr_01f_6c34

    ld b, b
    call nz, $c450
    ld d, b
    jp nz, $ca40

    jr nc, jr_01f_6c3e

    ld b, b
    ret nz

    ld d, b
    jp nz, $c250

    ld d, b
    jp nz, $c050

    ld d, b
    ret nz

    ld h, b
    jp nz, $c260

    ld h, b
    jp nz, $c060

    ld h, b
    ret nz

    ld [hl], b
    jp nz, $c270

    ld [hl], b
    jp nz, $c270

    ld [hl], b
    jp nz, $c260

    ld d, b
    jp nz, $c240

    ld d, b
    jp nz, $c240

    jr nc, @-$3c

    jr nz, @-$3e

    daa
    ld d, a
    daa
    ld h, a
    daa
    ld [hl], a
    daa
    sub a
    ld b, e
    inc sp
    ld b, e
    ld d, e
    db $e3
    ld b, c
    ld sp, $5141
    ld b, c
    ld sp, $3121
    db $e4
    ld b, e
    inc sp
    ld b, e
    ld d, e
    db $e3
    ld b, c
    ld d, c
    ld h, c
    ld [hl], c
    add c
    ld sp, $3121
    ld [c], a
    ld b, e
    inc sp
    ld b, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc sp
    ld b, e
    ld d, e
    ld h, e
    ld [hl], e
    add e
    inc sp
    inc hl
    inc sp
    sub $11
    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $11dc


    jp $c3c3


    jp $43e3


    inc sp
    ld b, e
    ld d, e
    cp $00
    dec hl
    ld l, h
    db $ed
    nop
    ld a, h
    ldh a, [rPCM34]
    db $ec
    ld [bc], a
    add sp, -$24
    or c
    jp Jump_000_21e5


    ld de, $4fdc
    inc hl
    call c, $23a1
    inc hl
    inc hl
    call c, Call_000_2370
    cp $00
    db $10
    ld l, l
    db $ec
    ld bc, $b6dc
    push hl
    or c
    and c
    or a
    call c, $e4c2
    ld sp, $1121
    ld bc, $b3e5
    or e
    or e
    or e
    or e
    call c, $a34f
    call c, Call_01f_71c2
    add c
    sub c
    and c
    or e
    or e
    or e
    or e
    or e
    call c, $a33f
    call c, $fec2
    nop
    inc h
    ld l, l
    call c, $c710
    db $e4
    ld h, b
    ret nz

    ld d, b
    ret nz

    ld h, b
    jp nz, $c260

    ld h, b
    jp nz, $fea3

    nop
    ld d, b
    ld l, l
    db $ed
    nop
    ld a, h
    ldh a, [rPCM34]
    db $ec
    ld bc, $dce8
    or d
    push hl
    add l
    db $e4
    ld b, c
    ld sp, $0111
    call c, $e581
    ld b, e
    cp $0c
    ld l, [hl]
    ld l, l
    ld b, e
    and $b3
    or e
    push hl
    ld b, e
    cp $00
    ld l, [hl]
    ld l, l
    db $ec
    ld [bc], a
    call c, $e5c2
    or c
    call c, $e4c7
    cp e
    call c, $e5c2
    or e
    db $e4
    inc sp
    ld b, e
    inc sp
    ld de, $e501
    or c
    sub c
    add c
    sub c
    and c
    db $e4
    ld de, $b3e5
    db $e4
    inc de
    push hl
    or e
    sub e
    add c
    ld h, c
    ld b, c
    ld sp, $6141
    add c
    sub c
    cp $00
    adc b
    ld l, l
    call c, $c710
    db $e3
    db $10
    ret nz

    db $e4
    or b
    ret nz

    sub b
    ret nz

    db $fd
    jp nc, $806d

    jp nz, $c240

    add b
    jp nz, $c240

    db $fd
    jp nc, $806d

    jp nz, $c240

    add b
    jp nz, $c2b0

    cp $00
    cp b
    ld l, l
    add b
    jp nz, $c240

    add b
    jp nz, $c040

    ld h, b
    ret nz

    rst $38
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3314], a
    add sp, -$24
    or h
    push hl
    db $10
    jr nz, jr_01f_6e1e

    ld b, b
    ld e, e
    rst $08
    push hl
    or e
    sub e
    add c
    ld h, c
    ld b, c
    ld sp, $4563
    ld d, c
    ld h, e
    ld [hl], a
    db $e4
    daa
    ld c, a
    cp $00
    pop af
    ld l, l
    db $ec
    inc bc
    ld [$2218], a
    call c, $e4c4
    ld b, b
    jr nc, jr_01f_6e2f

    db $10
    push hl
    cp e
    pop bc
    ld b, b
    jp nz, $c840

    call c, $e4c4
    ld b, l
    dec [hl]
    inc de
    push hl

jr_01f_6e1e:
    or c
    sub c
    add c
    ld h, c
    add c
    sub c
    or c
    db $e4
    ld de, $c7dc
    ld e, a
    call c, $e5c5
    ld h, a
    db $e4

jr_01f_6e2f:
    rla
    cp $00
    rla
    ld l, [hl]
    call c, $c510
    db $e4
    or b

jr_01f_6e39:
    ret nz

    ld b, b
    ret nz

    or b
    jp nz, $c0b0

    ld b, b
    ret nz

    or b
    jp nz, $c2b0

    ld b, b
    ret nz

    ld d, b
    ret nz

    ld h, b

jr_01f_6e4b:
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

    db $e3
    db $10
    ret nz

    db $e4

jr_01f_6e62:
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld [hl], b
    ret nz

    db $e3
    jr nz, jr_01f_6e39

    db $e4
    ld [hl], b
    ret nz

    db $e3
    jr nz, @-$3e

    db $e4
    ld [hl], b
    ret nz

    db $e3
    jr nz, @-$3e

    db $e4
    ld [hl], b
    ret nz

    db $e3
    jr nz, jr_01f_6e4b

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
    ret nz

    jr nc, jr_01f_6e62

    cp $00
    ld c, h
    ld l, [hl]
    db $ed
    nop
    ld h, d
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3406], a
    add sp, -$24
    or c
    rst $00
    and $91
    sub c
    call c, $e5b4
    inc hl
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    inc sp
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    inc hl
    call c, $e6b1
    sub c
    sub c
    call c, $a3a0
    call c, $91b1
    sub c
    call c, $e5b4
    inc hl
    call c, $e6b1
    sub c
    sub c
    call c, $e529
    ld [hl], e
    call c, $97b0
    and $97
    call c, $e5b7
    ld d, a
    call c, $e64f
    ld d, a
    call c, $91b1
    sub c
    call c, $e5b4
    inc hl
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    inc sp
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    ld d, e
    call c, $e6b1
    sub c
    sub c
    call c, $e5b4
    ld [hl], e
    call c, $6fb0
    call c, $e4b1
    cpl
    rst $38
    db $ec
    inc bc
    ld [$2508], a
    call c, $c7c2
    push hl
    ld hl, $dc21
    push bc
    sub e
    call c, Call_000_21c2
    ld hl, $c5dc
    and e
    call c, Call_000_21c2
    ld hl, $c5dc
    sub e
    call c, Call_000_21c2
    ld hl, $b7dc
    inc de
    call c, Call_000_21c2
    ld hl, $c5dc

jr_01f_6f47:
    sub e
    call c, $e5c2
    ld hl, $dc21
    rst $00

jr_01f_6f4f:
    db $e4
    inc de

jr_01f_6f51:
    daa
    push hl
    daa

jr_01f_6f54:
    db $e4
    rlca

jr_01f_6f56:
    push hl
    rlca
    call c, Call_000_21c2

jr_01f_6f5b:
    ld hl, $c5dc

jr_01f_6f5e:
    sub e
    call c, Call_000_21c2
    ld hl, $c5dc
    and e
    call c, Call_000_21c2

jr_01f_6f69:
    ld hl, $c5dc

jr_01f_6f6c:
    db $e4
    inc bc

jr_01f_6f6e:
    call c, $e5c2

jr_01f_6f71:
    ld hl, $dc21
    push bc
    db $e4

jr_01f_6f76:
    inc de
    call c, Call_000_2f2f
    call c, $e3c1
    cpl
    rst $38
    call c, $c710
    db $e4
    jr nz, @-$3e

    jr nz, jr_01f_6f47

    sub e
    jr nz, @-$3e

jr_01f_6f8a:
    jr nz, @-$3e

    sub e
    jr nz, jr_01f_6f4f

    jr nz, jr_01f_6f51

    sub e
    jr nz, jr_01f_6f54

    jr nz, jr_01f_6f56

    ld h, e
    jr nz, @-$3e

    jr nz, jr_01f_6f5b

    sub e
    jr nz, jr_01f_6f5e

    jr nz, @-$3e

    and e
    sub a
    daa
    and a
    daa
    jr nz, @-$3e

    jr nz, jr_01f_6f69

    sub e
    jr nz, jr_01f_6f6c

    jr nz, jr_01f_6f6e

    sub e
    jr nz, jr_01f_6f71

    jr nz, @-$3e

    and e
    jr nz, jr_01f_6f76

    jr nz, @-$3e

    and e
    sbc a
    jr nz, jr_01f_6f8a

    rst $38
    sub $b0
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
    or e
    ld de, $11b3
    or a
    ld de, $11b3
    or e
    ld de, $11b7
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
    or e
    ld de, $11b3
    or a
    ld de, $11b3
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
    cp a
    ld de, $11bf
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
    or e
    ld de, $11b3
    or a
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
    or e
    ld de, $11b3
    or a
    ld de, $11b3
    or a
    ld de, $11b3
    cp a
    ld de, $11bf
    or c
    ld de, $cdcf
    rst $38
    db $ed
    nop
    and b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$340c], a
    add sp, -$24
    or l
    push bc
    and $91
    add d
    ld h, b
    ld b, l
    push hl
    add c
    ld h, c
    add e
    call c, $41b2
    ld b, e
    ld b, c
    ld b, e
    ld hl, $2123
    inc hl
    ld hl, $dc23
    or c
    ld h, d
    call c, Call_000_22b2
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    sub c
    sub e
    add c
    add e
    ld h, c
    ld h, e
    ld b, c
    ld b, e
    add c
    add e
    call c, Call_01f_62b1
    call c, $80b2
    call c, $91b4
    or c
    db $e4
    ld bc, $b7dc
    dec d
    call c, Call_000_21b3

Call_01f_70c4:
    ld de, $b1e5
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    add c
    sub c
    add c
    ld h, c
    add c
    ld h, c
    ld b, c
    add c
    ld h, c
    add c
    sub c
    add c
    ld h, c
    add c
    sub c
    or c
    db $e4
    ld hl, $e511
    or c
    sub c
    add c
    ld h, c
    ld b, c
    ld h, c
    add c
    sub c
    add c
    sub c
    ld b, c
    add c
    or c
    db $e4
    ld hl, $e511
    or c
    db $e4
    ld de, $b1e5
    sub c
    add c
    ld h, c
    ld b, e
    cp $00
    sub d
    ld [hl], b
    db $ec
    inc bc
    ld [$2510], a
    call c, $e5c6
    sub c
    add d
    ld h, b
    ld b, l
    add l
    db $e4
    ld b, c
    ld hl, $b1e5
    call c, $e4c6
    ld b, l
    inc d
    ld b, b
    dec h
    push hl
    or l
    db $e4
    dec h
    push hl
    or c
    call c, $e4c1
    ld h, d
    call c, Call_000_20c6
    ld b, l
    dec d
    ld b, l
    inc d
    ld b, b
    ld h, l
    dec h
    ld h, l
    ld b, c
    call c, $62c1
    call c, $40c6
    sub l
    sub l
    or c
    sub d
    jr nz, jr_01f_719e

    ld b, c
    ld h, d
    ld b, b
    dec d
    ld hl, $e512
    or b
    db $e4
    ld h, l
    ld b, c
    ld [hl-], a
    ld b, b
    sub l
    or c
    sub d
    jr nz, jr_01f_71b0

    ld b, c
    ld h, d
    add b
    sub l
    add c
    ld h, d
    ld b, b
    add l
    sub c
    add d
    sub b
    db $e3
    dec d
    cp $00
    db $10
    ld [hl], c
    call c, $cb10
    db $e3
    ld b, l
    db $e4
    ld b, c
    ld h, c
    add c
    push hl
    sub c
    db $e4
    sub c
    sub c
    ld b, c
    sub c
    sub c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    add c
    add c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    add b
    pop bc
    ld b, b
    ld de, $9191
    ld b, c
    sub c
    sub c
    ld de, $9191
    ld b, c
    sub c
    sub c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    add c
    add c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    add b
    pop bc
    ld b, b
    ld de, $9191

jr_01f_719e:
    ld b, c
    sub c
    sub c
    ld hl, $6161
    push hl
    sub c
    db $e4
    ld h, c
    ld h, c
    ld b, c
    sub c
    sub c
    ld de, $9191
    ld b, c

jr_01f_71b0:
    add c
    add c
    push hl
    or c

Call_01f_71b4:
    db $e4
    add c
    add c
    ld b, c
    sub c
    sub c
    push hl
    sub c
    db $e4
    sub c
    sub c
    ld hl, $6161

Call_01f_71c2:
    push hl
    sub c
    db $e4
    ld h, c
    ld h, c
    ld b, c
    sub c
    sub c
    ld de, $9191
    ld b, c
    add c
    add c
    push hl
    or c
    db $e4
    add c
    add c
    ld b, c
    sub c
    sub c
    ld de, $4121
    cp $00
    ld h, l
    ld [hl], c
    db $ed
    nop
    sub b
    ldh a, [rPCM34]
    ld [$2408], a
    db $ec
    ld [bc], a
    db $fc
    and l
    add sp, -$23
    ld h, a
    db $e4
    ld b, a
    call c, $b167
    add l
    ld h, a
    add c
    sub l
    add a
    ld h, e
    add e
    ld c, c
    rst $38
    ld [$1505], a
    db $ec
    ld [bc], a
    db $fc
    ld a, [bc]
    call c, $e4a7
    ld b, a
    or c
    add l
    ld h, a
    add c
    sub l
    add a
    ld h, e
    add e
    ld c, c
    rst $38
    db $ed
    nop
    ld [hl], b
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$220c], a
    add sp, -$24
    or e
    rst $08
    rst $08
    rst $08
    set 4, l
    jr nz, jr_01f_7265

    ld d, b
    ld h, b
    call c, $e480
    rrca
    ld c, a
    ld l, a
    call c, Call_01f_5f60
    cp $03
    daa
    ld [hl], d
    rst $08
    rst $08
    rst $08
    rst $08
    cp $00
    daa
    ld [hl], d
    ld [$2508], a
    db $ec
    inc bc
    call c, $e5c4
    ld [hl], c
    ld hl, $9971
    ld [hl], c
    ld hl, $e471
    inc bc
    push hl
    or e
    sub c
    ld [hl], c
    ld hl, $9971
    ld d, c
    ld bc, $a351
    sub e
    ld d, c
    cp $00
    ld b, c
    ld [hl], d
    call c, $e412
    ld hl, $2171
    ld [hl], c

jr_01f_7265:
    ld hl, $2171
    ld [hl], c
    cp $0c
    ld h, b
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], e
    ld b, e
    ld [hl], e
    ld b, e
    ld [hl], e
    ld h, e
    sub e
    ld h, e
    sub e
    ld b, e
    ld [hl], e
    ld b, e
    ld [hl], e
    cp $00
    ld e, [hl]
    ld [hl], d
    db $ed
    nop
    adc h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$3408], a
    add sp, -$24
    or l
    db $e4
    ld b, l
    push hl
    sub b
    db $e4
    ld b, b
    dec h
    push hl
    ld [hl], b
    db $e4
    jr nz, @+$17

    push hl
    ld h, b
    db $e4
    db $10
    inc hl
    ld b, c
    db $10
    ld b, b
    db $10
    ret nz

    push hl
    ld b, b
    jp nz, Jump_01f_4040

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    jp nz, $c040

    ld b, b
    jp nz, Jump_01f_4040

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ld h, b
    ld [hl], b
    call c, $93b6
    ld b, c
    sub c
    ld [hl], e
    sub c
    ld [hl], c
    or e
    sub e
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $4115
    sub e
    inc de
    ld b, e
    ld hl, $4111
    ld h, c
    ld [hl], c
    ld h, c
    sub e
    ld b, c
    sub c
    ld [hl], e
    sub c
    ld [hl], c
    or e
    sub e
    ld [hl], c
    sub c
    ld h, c
    ld hl, $1145
    sub e
    inc de
    ld b, e
    ld hl, $4111
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], e
    ld hl, $b171
    sub c
    ld [hl], c
    sub c
    inc hl
    ld b, c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $9145
    ld [hl], e
    ld h, e
    ld [hl], e
    ld h, e
    ld b, e
    inc hl
    ld [hl], e
    ld hl, $b171
    db $e4
    ld de, $b1e5
    sub c
    inc hl
    ld b, c
    ld h, c
    ld [hl], c
    ld h, c
    ld b, c
    ld hl, $b7dc
    ld b, l
    sub c
    ld [hl], e
    ld h, e
    call c, $93c7
    or e
    db $e4
    inc de
    inc hl
    push hl
    or c
    sub c
    ld [hl], c
    ld h, c
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    call c, Call_01f_7790
    ld h, a
    ld b, a
    daa
    rst $08
    rst $08
    rst $00
    call c, Call_01f_45b6
    jr nc, jr_01f_7357

    call c, Call_000_17a0
    call c, $17a7
    rst $08
    rst $08
    rst $00
    ld b, l
    db $10
    ld b, b
    call c, $97a0
    call c, $97a7
    call c, Call_01f_75b6
    inc hl
    ld [hl], c
    or e
    call c, Call_01f_77b7
    ld h, e
    add e
    call c, $9790

jr_01f_7357:
    ld h, a
    ld b, a
    rla
    call c, Call_000_27b7
    rla
    and $b7
    push hl
    daa
    call c, $4790
    daa
    ld h, a
    ld b, a
    call c, $27a0
    ld b, a
    daa
    rlca
    ld [hl], a
    ld d, a
    ld b, a
    daa
    call c, $15a0
    call c, Call_000_15a7
    call c, Call_000_23b7
    ld b, a
    ld [hl], l
    ld h, b
    ld d, b
    call c, Call_01f_45a0
    call c, $45a7
    call c, Call_000_23b7
    call c, Call_000_17a0
    call c, $17a7
    call c, Call_01f_45b7
    ld hl, $6373
    ld b, e
    ld h, e
    ld b, e
    inc hl
    ld b, e
    inc hl
    inc de
    inc hl
    inc de
    inc de
    ld b, e
    ld h, e
    call c, Call_01f_45a0
    call c, $21b7
    ld [hl], e
    ld h, e
    ld b, e
    ld h, e
    sub e
    or e
    call c, $e4a0
    rra
    rla
    call c, $17a7
    call c, $e5b5
    sub b
    ret nz

    sub b
    jp nz, $9090

    call c, $97b1
    rst $38
    db $ec
    inc bc

Call_01f_73c3:
    ld [$250a], a

Call_01f_73c6:
    call c, $e4c5
    sub l
    ld b, b
    sub b
    ld [hl], l
    jr nz, jr_01f_743f

    call c, $6bc7
    add c
    ld b, b
    add b
    call c, $91c2
    call c, $e5c1
    sub e
    sub b
    sub b
    sub c
    sub c
    sub e
    sub c
    sub e
    sub b
    sub b
    sub c
    sub c
    call c, $90c4
    ld h, b
    sub b
    or b
    call c, $e4c7
    dec d
    db $10
    jr nz, jr_01f_7437

    inc de
    ld [hl], e
    ld h, e
    ld b, e
    inc hl
    dec d
    push hl
    sub c
    db $e4
    ld b, a
    push hl
    sub l
    ld b, c
    db $e4
    rla
    dec d
    db $10
    jr nz, jr_01f_744a

    inc de
    ld [hl], e
    ld h, e
    ld b, e
    inc hl
    dec d
    push hl
    sub c
    db $e4
    ld b, a
    push hl
    sub l
    ld b, c
    call c, $e4b0
    rla
    call c, Call_000_25c7
    push hl
    or c
    db $e4
    ld [hl], a
    push hl
    ld [hl], l
    ld hl, $dcb7
    or b
    db $e4
    dec d
    call c, $15b7
    inc hl
    call c, Call_01f_47a0
    call c, $47a7
    call c, Call_000_25c7
    push hl
    or c
    db $e4

jr_01f_7437:
    ld [hl], a
    push hl
    ld [hl], l
    ld hl, $dcb7
    or b
    db $e4

jr_01f_743f:
    ld b, [hl]
    call c, Call_01f_46b7
    call c, Call_01f_40c3
    add b
    call c, $97b0

jr_01f_744a:
    call c, $97b7
    call c, Call_01f_73c6
    ld h, e
    ld b, e
    inc hl
    call c, Call_000_17a0
    call c, $17a7
    call c, $e590
    sub a
    call c, $9797
    call c, Call_01f_47b0
    call c, Call_01f_47b7
    call c, $27c7
    ld [hl], l
    ld h, b
    ld d, b
    ld b, a
    call c, Call_01f_75b7
    ld h, b
    ld d, b
    call c, Call_01f_47b0
    call c, Call_01f_47b7
    call c, Call_000_27b0
    call c, Call_000_27b7

jr_01f_747e:
    call c, $e6c7
    or a
    push hl
    ld h, l
    jr nz, jr_01f_74e6

    ld b, a
    or l
    ld [hl], b
    or b
    call c, $e4b0
    rla
    call c, Call_000_17b7
    call c, Call_000_27b0
    call c, Call_000_27b7
    call c, $e5c7
    or a
    db $e4
    dec h
    push hl
    or b
    db $e4
    jr nz, jr_01f_747e

    or b
    dec d
    call c, $15b7
    call c, $e5c7
    or e
    call c, $97b0
    call c, $97b7
    call c, Call_01f_65b0
    call c, Call_01f_65b7
    call c, $83c7
    sub a
    ld h, a
    call c, $85b0
    call c, $85b7
    call c, $93c7
    or a
    add a
    call c, $95b0
    call c, $95b7
    call c, $b3c7
    db $e4
    rlca
    push hl
    sub a
    call c, $b5b0
    call c, $b5b7
    call c, $e4c7
    inc bc
    call c, Call_000_27b0
    push hl
    or a
    call c, $e4b0

jr_01f_74e6:
    rra
    rla
    call c, Call_000_17b7
    call c, $e5b0
    sbc a
    sub a
    call c, $97b7
    call c, Call_01f_75c7
    or c
    db $e4
    daa
    push hl
    or l
    db $e4
    ld hl, $6075
    ld d, b
    ld b, a
    push hl
    ld [hl], l
    ld h, b
    ld d, b
    ld b, a
    inc de
    inc hl
    ld [hl], l
    or c
    db $e4
    daa
    push hl
    or l
    db $e4
    ld hl, $dc77
    or b
    sbc a
    call c, $97a0
    call c, $97a7
    call c, $91c1
    sub e
    sub b
    sub b
    call c, $97c1
    rst $38
    call c, $e310
    dec d
    db $e4
    sub b
    db $e3
    db $10
    dec h
    db $e4
    or b
    db $e3
    jr nz, jr_01f_7597

    jr nz, @+$62

    sub e
    add c
    ld b, b
    add b
    sub b
    adc $cf
    db $fd
    ld b, $76
    db $fd
    db $10
    db $76
    db $fd
    ld b, $76
    db $e4
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    ld h, c
    ld [hl], c
    sub c
    db $fd
    ld b, $76
    db $fd
    db $10
    db $76
    db $fd
    ld b, $76
    db $fd
    ld b, $76
    db $fd
    ld a, [de]
    db $76
    db $fd
    ld a, [de]
    db $76
    db $fd
    inc hl
    db $76
    db $e4
    sub c
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $b1e4
    sub c
    db $fd
    ld a, [de]
    db $76
    db $fd
    ld a, [de]
    db $76
    db $fd
    inc hl
    db $76
    db $fd
    inc hl
    db $76
    db $e4
    ld [hl], e
    sub e
    or e
    db $e3
    inc hl
    db $fd
    ld b, $76
    db $fd
    ld b, $76
    db $fd
    ld b, $76
    db $fd
    ld b, $76
    db $fd
    ld b, $76
    db $fd
    ld b, $76
    db $fd
    db $10

jr_01f_7597:
    db $76
    db $fd
    db $10
    db $76
    db $fd
    ld b, $76
    ld b, e
    sub c
    ld b, e
    sub c
    ld b, c
    sub c
    db $fd
    db $10
    db $76
    db $fd
    db $10
    db $76
    db $fd
    ld b, $76
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    add c
    sub c
    db $fd

Call_01f_75b6:
    inc [hl]

Call_01f_75b7:
    db $76
    db $fd
    inc [hl]
    db $76
    db $fd
    dec a
    db $76
    db $fd
    dec a
    db $76
    ld d, c
    sub c
    ld d, c
    sub c
    ld d, c
    sub c

Call_01f_75c7:
    ld d, c
    sub c
    ld d, c
    sub c
    ld [hl], c
    ld d, c
    ld b, c
    ld hl, $5141
    db $fd
    ld a, [de]
    db $76
    db $fd
    ld a, [de]
    db $76
    ld b, e
    sub e
    ld b, e
    sub e
    ld b, e
    sub e
    ld b, e
    sub e
    db $fd
    ld b, $76
    db $fd
    ld b, $76
    db $fd
    ld b, [hl]

Call_01f_75e7:
    db $76
    db $fd
    ld b, [hl]
    db $76
    db $fd
    ld b, $76
    db $fd
    ld b, $76
    db $fd
    ld a, [de]
    db $76
    db $fd
    ld a, [de]
    db $76
    db $fd
    ld c, a
    db $76
    db $fd
    ld c, a
    db $76
    sub b
    ret nz

    sub b
    jp nz, $9090

    sub b
    add $ff
    db $e4
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    ld b, c
    sub c
    rst $38
    db $e4
    ld hl, $2171
    ld [hl], c
    ld hl, $2171
    ld [hl], c
    rst $38
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    ld [hl], c
    or c
    rst $38
    db $e4
    sub c
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $91e4
    db $e3
    ld de, $21ff
    sub c
    ld hl, $2191
    sub c
    ld hl, $ff91
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    rst $38
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    ld b, c
    or c
    rst $38
    sub b
    ret nz

    sub b
    jp nz, $9090

    sub b
    ret nz

    sub b
    ret nz

    sub b
    jp nz, $edff

    nop
    ld [hl], h
    ldh a, [rPCM34]
    db $ec
    inc bc
    ld [$1408], a
    call c, $e5b2
    add c
    or e
    or e
    or e
    or e
    or e
    or d
    and b
    or c
    cp c
    call c, $e4b6
    stop
    add hl, de
    push hl
    add b
    ld [hl], b
    add e
    or e
    db $e4
    ld b, e
    ld h, a
    ld b, a
    push hl
    sub e
    or e
    db $e4
    inc de
    push hl
    or e
    add l
    call c, $b1b2
    call c, $85b6
    call c, $b1b2
    call c, $e4b6
    ld b, l
    call c, $81b2
    call c, Call_01f_45b6
    call c, $81b2
    call c, $e5b6
    sub e
    ld h, e
    sub e
    or e
    ld h, e
    add e
    sub c
    add c
    ld h, c
    ld sp, $b3dc
    or c
    db $e4
    ld b, e
    ld b, e
    ld b, e
    ld b, c
    ld de, $6263
    jr nc, jr_01f_771b

    ld h, a
    call c, Call_01f_60b6
    ld d, b
    ld h, a
    push hl
    or b
    and b
    or a
    db $e4
    ld h, b
    ld d, b
    ld h, c
    call c, $60b3
    ld b, b
    jr nc, jr_01f_76de

    call c, $e5b2
    cp a
    rst $38
    db $ec
    ld [bc], a
    ld [$1506], a
    call c, $e5c2
    or c
    db $e4
    ld b, e

jr_01f_76de:
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, d
    jr nc, jr_01f_7726

    ld b, e
    call c, $80c5
    ld [hl], b
    adc c
    push hl
    or b
    and b
    or l
    call c, $e4c7
    ld b, e
    add e
    or e
    db $e3
    rra
    db $e4
    sub e
    add e
    ld h, e
    ld b, e
    push hl
    or l
    call c, $e4c2
    ld b, c
    call c, $e5c7
    or l
    call c, $e4c2
    ld b, c
    call c, $85c7
    call c, $b1c2
    call c, $85c7
    call c, $b1c2
    call c, $13c7
    push hl
    sub e

jr_01f_771b:
    db $e4
    inc de
    inc sp
    ld b, c
    ld sp, $3311
    ld sp, $e511
    or c

jr_01f_7726:
    call c, $e4c3
    ld b, c
    add e
    add e
    add e
    add c
    ld h, c
    sub e
    sub d
    ld h, b
    sub c
    sub e

jr_01f_7734:
    call c, $b0c7
    and b
    or a
    or b
    and b
    or a
    or b
    and b
    or l
    call c, $b0c3
    sub b
    add b
    ld h, b
    call c, Call_01f_4fc2
    rst $38
    call c, $e410
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

    push hl
    or b
    ret nz

    db $e4
    db $10
    ret nz

    jr nc, jr_01f_7734

    add b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

Call_01f_7790:
    ld b, b
    ret nz

    or b
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

    sub b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
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
    ld h, b

Call_01f_77b7:
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    or b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    add b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    or b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    add b
    ret nz

    db $e3
    ld b, b
    ret nz

    db $e4
    add b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    or b
    ret nz

    sub b
    ret nz

    db $e3
    db $10
    ret nz

    db $e4
    ld h, b
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
    ld h, b
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
    ld h, b
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
    or b
    ret nz

    sub b
    ret nz

    add b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    add b
    ret nz

    or b
    ret nz

    ld b, b
    ret nz

    or b
    ret nz

    sub b
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
    sub b
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
    sub b
    ret nz

    db $e3
    ld h, b
    ret nz

    db $e4
    ld h, b
    ret nz

    db $e3
    db $10
    jp nz, $c060

    db $e4
    ld h, b
    add b
    sub b
    db $e3
    db $10
    ld b, b
    adc $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01f_7b87:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01f_7f80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
