; disasSembly of "yell.gbc"
SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    nop
    ld [de], a
    ld a, [bc]
    ld a, c
    ld b, b
    ld h, b
    ld c, a
    ld b, a
    ld c, a
    inc c
    ld a, [bc]
    add $4b
    add sp, -$3a
    db $10
    inc d
    inc hl
    ld a, [bc]
    cp l
    ret z

    dec b
    ld c, l
    ld c, d
    db $38, $c8
    db $10
    inc d
    nop
    ld a, [bc]
    inc bc
    rst $00
    ld [hl+], a
    ld b, b
    rrca
    inc b
    ld bc, $0209
    ld c, c
    ld bc, $020a
    ld c, c
    rlca
    ld a, [bc]
    nop
    ld c, c
    dec c
    ld de, $4a00
    ld bc, $130f
    rlca
    ld b, $07
    add hl, de
    ld c, $ff
    db $d3
    ld b, c
    call $060a
    add hl, de
    rrca
    rst $38
    jp nc, $ce42

    add hl, de
    inc b
    inc de
    inc b
    rst $38
    db $d3
    ld b, e
    jp z, Jump_000_070a

    inc hl
    rrca
    rst $38
    jp nc, $cd44

    dec b
    ld b, $22
    rrca
    rst $38
    jp nc, $ce45

    inc bc
    inc b
    ld e, $17
    rst $38
    jp nc, $ca46

    dec bc
    db $fd
    add $01
    add hl, bc
    cp $c6
    ld bc, $2e0a
    rst $00
    rlca
    ld a, [bc]
    ld h, c
    rst $00
    dec c
    ld de, $7474
    ld [hl], h
    ld a, [bc]
    ld c, l
    ld c, l
    ld a, [bc]
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    jr nz, jr_016_4096

    ld hl, $5151
    ld d, c
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, [bc]
    ld l, b
    ld a, a
    ld l, c
    ld [hl], h
    ld [hl], h

jr_016_4096:
    ld [hl], h
    rlca
    cpl
    rlca
    rlca
    scf
    ld a, [hl-]
    ld a, [hl]
    rlca
    cpl
    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    rlca
    rlca
    cpl
    rlca
    rlca
    rlca
    rlca
    jr nz, @+$23

    ld sp, $3131
    ld sp, $3131
    ld sp, $7c31
    ld a, [hl]
    dec bc
    dec bc
    ld sp, $0b0b
    dec bc
    dec bc
    ld sp, $0831
    dec bc
    dec bc
    ld sp, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld sp, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld sp, $3131
    ld sp, $3131
    ld sp, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld sp, $1d0b
    rra
    rra
    rra
    rra
    rra
    ld e, $0b
    ld sp, $650b
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, h
    dec bc
    ld sp, $510b
    ld h, e
    ld a, [bc]
    ld a, [bc]
    ld sp, $3131
    ld sp, $0b31
    ld a, [bc]
    ld c, l
    ld d, d
    ld d, d
    ld sp, $0b0a
    dec bc
    dec bc
    dec bc
    rra
    rra
    rra
    ld l, d
    ld sp, $5162
    ld d, c
    ld d, c
    ld d, c
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld sp, $0a4e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    add hl, bc
    ld e, $c6
    ld b, c
    ld l, e
    ld d, b
    ld d, d
    ld d, b
    inc bc
    ld a, [bc]
    cp l
    ld c, d
    add sp, -$3a
    rrca
    inc d
    ld [$1627], sp
    rst $00
    inc b
    add l
    ld b, b
    ld [hl], l
    rst $00
    add hl, bc
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $4f
    ld b, c
    inc l
    dec b
    add hl, bc
    ld bc, $4f00
    ld a, [bc]
    ld bc, $4f00
    add hl, bc
    ld [$4f02], sp
    ld a, [bc]
    ld [$4f02], sp
    inc bc
    dec c
    nop
    ld d, b
    ld bc, $1103
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    inc c
    rst $38
    db $d3
    ld b, c
    ret nc

    inc bc
    dec bc
    dec c
    ld de, $d1ff
    ld b, d
    reti


    dec b
    inc c
    ld a, [bc]
    ld l, $ff
    pop de
    ld b, e
    ret nc

    inc b
    ld b, $07
    ld e, $ff
    jp nc, $cb44

    dec c
    inc c
    ld [$ff1e], sp
    db $d3
    ld b, l
    ret nc

    dec b
    ld b, $09
    ld e, $ff
    jp nc, $cb46

    ld c, $06
    ld a, [bc]
    ld e, $ff
    db $d3
    ld b, a
    rrc a
    dec bc
    ld de, $ff32
    ret nc

    ld c, b
    reti


    rlca
    ld b, $10
    scf
    rst $38
    jp nc, $cb49

    db $10
    sbc l
    rst $00
    add hl, bc
    ld bc, $c7c1
    ld a, [bc]
    ld bc, $c7a1
    add hl, bc
    ld [$c7c5], sp
    ld a, [bc]
    ld [$c737], sp
    inc bc
    dec c
    inc de
    inc de
    jr z, jr_016_41f6

    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    jr z, jr_016_420f

    inc de
    inc de
    inc h
    ld d, a
    ld d, a
    dec h
    ld [bc], a
    inc bc
    ld [$1a1a], sp
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_016_41f6:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    inc de
    inc de
    rrca
    rrca
    jr z, jr_016_422b

    inc de
    inc de
    ld c, [hl]
    ld bc, $0101
    ld bc, $4d01
    ld sp, $4e31
    ld a, [bc]

jr_016_420f:
    ld c, c
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    ld a, [bc]
    ld c, l
    inc de
    ld h, d
    ld [hl], h
    ld [hl], h
    jr z, @+$2b

    inc de
    inc de
    ld c, [hl]
    ld bc, $7474
    ld [hl], h
    ld bc, $1a4d
    ld a, [de]

jr_016_422b:
    ld c, [hl]
    ld a, [bc]
    daa
    ld a, [bc]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, [bc]
    daa
    ld a, [bc]
    ld c, l
    inc de
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    inc h
    dec h
    ld bc, $0d20
    ld hl, $5151
    ld [hl], h
    ld bc, $314d
    ld sp, $0a4e
    daa
    ld c, l
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld c, [hl]
    daa
    ld a, [bc]
    ld c, l
    inc de
    ld c, [hl]
    ld a, [bc]
    ld bc, $7777
    ld [hl], a
    scf
    ld a, l
    ld a, [hl]
    ld [hl], a
    ld bc, $0101
    ld c, l
    ld h, c
    ld h, c
    ld a, [bc]
    ld a, [bc]
    daa
    ld c, l
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld [hl], h
    dec [hl]
    daa
    ld a, [bc]
    ld c, l
    inc de
    ld c, [hl]
    ld a, [bc]
    ld e, l
    ld a, $3b
    inc de
    inc de
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    daa
    dec [hl]
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld c, [hl]
    daa
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    daa
    jr z, jr_016_42c1

    inc de
    inc de
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    ld c, l
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld c, [hl]
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    jr z, jr_016_42df

    inc de
    inc de
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_016_42c1:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc l
    inc l
    nop
    inc h
    ld a, [bc]
    ld d, [hl]
    ld b, e
    db $eb
    ld d, c
    jp nc, $0651

    inc b

jr_016_42df:
    add l
    ld b, b
    ld e, e
    ret


    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $14
    ld hl, $1847
    rst $00
    add hl, bc
    ld e, $00
    dec sp
    ld a, [hl+]
    rst $00
    or $42
    inc l
    inc b
    inc de
    dec bc
    nop
    ld d, c
    ld de, $0008
    ld d, d
    dec [hl]
    ld [$5202], sp
    daa
    ld b, $00
    ld d, e
    inc b
    inc de
    rlca
    rlca
    inc de
    inc c
    ld [$0937], sp
    add hl, bc
    add hl, hl
    dec b
    ld a, [bc]
    ld b, $0c
    jr nc, jr_016_4327

    rst $38
    jp nc, $cf41

    ld bc, $3d0e
    rlca
    rst $38
    pop de
    ld b, d
    pop de
    rlca
    inc c

jr_016_4327:
    ld b, h
    ld [de], a
    rst $38
    jp nc, $cf43

    ld [bc], a
    ld b, $1d
    dec bc
    rst $38
    jp nc, $ce44

    rlca
    ld c, $41
    rlca
    rst $38
    ret nc

    ld b, l
    pop de
    ld [$3a06], sp
    dec bc
    rst $38
    ret nc

    ld b, [hl]
    adc $08
    adc [hl]
    rst $00
    inc de
    dec bc
    ld a, l
    rst $00
    ld de, $9d08
    ret z

    dec [hl]
    ld [$c82c], sp
    daa
    ld b, $57
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    jr z, jr_016_43cc

    ld bc, $6161
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, l
    jr z, jr_016_4376

    ld a, [bc]

jr_016_4376:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, l
    ld h, l
    jr z, jr_016_4380

    ld a, [bc]

jr_016_4380:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, l
    ld h, l
    jr z, @+$3d

    rlca
    rlca
    rlca
    rlca
    rlca
    cpl
    ld c, a
    ld h, l
    jr z, jr_016_43bc

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, jr_016_43c9

    ccf
    ccf
    ccf
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, jr_016_43d2

    ld d, a
    ld d, a
    ld d, a
    ld [hl], b
    jr nz, @+$23

    ld c, l
    ld h, l
    jr z, jr_016_43da

    ld sp, $5677
    dec [hl]
    ld a, h
    ld [hl], d
    ld c, l
    ld h, l
    jr z, jr_016_43e4

    ld a, [bc]

jr_016_43bc:
    ld a, [bc]
    ld a, [bc]
    dec [hl]
    ld d, l
    ld d, l
    ld c, l
    ld h, l
    jr z, jr_016_43ee

    ld d, l
    ld d, l
    ld d, l
    dec [hl]

jr_016_43c9:
    ld a, [bc]
    ld a, [bc]
    ld c, l

jr_016_43cc:
    ld h, l
    jr z, jr_016_43f8

    ld d, l
    ld d, l
    ld d, l

jr_016_43d2:
    dec [hl]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, @+$2b

    ld d, l

jr_016_43da:
    ld d, l
    ld d, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, jr_016_440c

    ld a, [bc]

jr_016_43e4:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, a
    ld h, l
    jr z, jr_016_4419

    ccf

jr_016_43ee:
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld a, e
    ld h, l
    jr z, jr_016_4422

    ld d, a

jr_016_43f8:
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    add hl, hl
    ld a, e
    ld h, l
    jr z, jr_016_442a

    jr nz, @+$0f

    dec c
    ld hl, $2928
    ld a, e
    ld h, l
    jr z, jr_016_4434

    ld l, b

jr_016_440c:
    ld a, a
    ld a, a
    ld l, c
    jr z, jr_016_443a

    ld a, e
    ld h, l
    jr z, jr_016_443e

    scf
    ld a, l
    ld a, [hl-]
    ld a, [hl]

jr_016_4419:
    jr z, jr_016_4444

    ld a, e
    ld h, l
    jr z, jr_016_4448

    ld a, e
    ld a, c
    ld a, e

jr_016_4422:
    ld a, e
    jr z, jr_016_444e

    ld a, e
    ld h, l
    jr z, jr_016_4452

    ld a, e

jr_016_442a:
    ld a, e
    ld a, e
    ld a, e
    inc h
    dec h
    ld a, e
    ld h, l
    jr z, jr_016_445c

    ld a, e

jr_016_4434:
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e

jr_016_443a:
    ld h, l
    jr z, @+$2b

    rra

jr_016_443e:
    rra
    rra
    rra
    rra
    rra
    rra

jr_016_4444:
    ld l, $28
    inc l
    ccf

jr_016_4448:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_016_444e:
    ccf
    inc l
    inc l
    inc l

jr_016_4452:
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    ld d, a
    ld a, [hl+]
    dec hl
    ld d, a

jr_016_445c:
    ld d, a
    ld d, a
    ld b, $57
    dec h
    ld a, [bc]
    ld c, h
    jr z, jr_016_448e

    ld sp, $3131
    ld [$3131], sp
    ld a, [bc]
    ld a, [bc]
    jr z, jr_016_4498

    ld sp, $3131
    ld sp, $3b3e
    cpl
    rlca
    jr z, jr_016_44a2

    ld a, [de]
    ld a, $3f
    ccf
    inc l
    add hl, hl
    ld a, [bc]
    ld a, [bc]
    jr z, jr_016_44ac

    ld a, d
    inc h
    ld d, a
    ld d, a
    ld d, a
    dec h
    rlca
    cpl
    jr z, jr_016_44b6

    ld a, [bc]

jr_016_448e:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, d
    jr z, jr_016_44c3

    ccf

jr_016_4498:
    ccf
    ccf
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr z, jr_016_44cd

    inc l

jr_016_44a2:
    dec hl
    ld d, a
    dec h
    cpl
    inc c
    dec c
    ld c, $28
    inc l
    inc l

jr_016_44ac:
    add hl, hl
    ld a, d
    ld a, d
    ld a, d
    ld [hl], l
    ld [hl], c
    db $76
    jr z, jr_016_44e1

    inc l

jr_016_44b6:
    add hl, hl
    ld a, d
    ld sp, $683e
    ld a, a
    ld l, c
    inc l
    nop
    add hl, bc
    ld e, $5f
    ld b, l

jr_016_44c3:
    ld bc, $e853
    ld d, d
    inc bc
    dec b
    ld [hl], b
    ld c, d
    add sp, -$3a

jr_016_44cd:
    rrca
    inc d
    ld [$1627], sp
    rst $00
    rla
    nop
    ld c, b
    add hl, bc
    rst $00
    rrca
    ld a, [bc]
    ld [hl], $00
    ld sp, hl
    add $e0
    ld b, h
    rrca

jr_016_44e1:
    dec b
    ld [$0031], sp
    ld d, h
    add hl, bc
    ld sp, $5400
    ld [$023a], sp
    ld d, h
    add hl, bc
    ld a, [hl-]
    ld [bc], a
    ld d, h
    dec b
    inc b
    nop
    ld d, l
    ld bc, $0105
    dec bc
    ld a, [bc]
    dec bc
    ld [de], a
    ld c, $ff
    ret nc

    ld b, c
    reti


    ld bc, $0d0b
    ld e, $ff
    ret nc

    ld b, d
    reti


    ld [bc], a
    inc b
    add hl, bc
    ld de, $d2ff
    ld b, e
    ret


    add hl, bc
    inc c
    rrca
    jr z, @+$01

    ret nc

    ld b, h
    call nc, $0402
    ld [$ff1a], sp
    pop de
    ld b, l
    ret


    ld a, [bc]
    dec bc
    dec bc
    ld sp, $d0ff
    ld b, [hl]
    reti


    inc bc
    dec bc
    rlca
    dec h
    rst $38
    pop de
    ld b, a
    reti


    inc b
    inc b
    add hl, bc
    cpl
    rst $38
    db $d3
    ld c, b
    ret


    dec bc
    inc c
    inc d
    ld sp, $d2ff
    ld c, c
    call nc, $0403
    db $10
    ld a, [de]
    rst $38
    pop de
    ld c, d
    ret


    inc c
    or l
    rst $00
    ld [$b531], sp
    rst $00
    add hl, bc
    ld sp, $c7ba
    ld [$ba3a], sp
    rst $00
    add hl, bc
    ld a, [hl-]
    ld d, a
    rst $00
    dec b
    inc b
    ld sp, $3131
    ld sp, $496d
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    dec bc
    dec bc
    dec bc
    ld c, c
    inc hl
    inc hl
    inc hl
    inc hl
    ld c, b
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld sp, $3f3e
    dec sp
    ld l, l
    daa
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, [hl]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld d, [hl]
    inc h
    ld b, $25
    ld l, l
    daa
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld c, h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld sp, $3131
    ld sp, $2231
    dec bc
    dec bc
    ld c, c
    inc hl
    inc hl
    ld [hl+], a
    dec bc
    dec bc
    dec bc
    ld h, $23
    inc hl
    ld c, b
    dec bc
    dec bc
    dec bc
    dec bc
    ld l, a
    ld l, a
    jr nz, jr_016_45e1

    dec c
    ld hl, $1f0f
    rra
    rra
    ld e, $6d
    daa
    dec bc
    dec bc
    daa
    dec bc

jr_016_45e1:
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    ld bc, $0101
    scf
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, [bc]
    ld b, e
    ld b, e
    ld b, e
    ld h, h
    ld l, l
    ld b, h
    inc hl
    inc hl
    ld b, l
    dec bc
    dec bc
    ld b, h
    inc hl
    inc hl
    inc hl
    ld [hl+], a
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    dec bc
    ld e, l
    ld l, h
    ld l, h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld h, h
    ld l, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    daa
    dec bc
    dec bc
    daa
    dec bc
    dec bc

jr_016_4628:
    dec bc
    daa
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld l, l
    ld e, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld h, $23
    inc hl
    ld [hl+], a
    dec bc
    dec bc
    dec bc
    daa
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, l
    dec bc
    dec bc
    ld b, h
    inc hl
    inc hl
    inc hl
    ld b, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    nop
    ld [hl], $0a
    db $10
    ld b, a
    ld de, $8f55
    ld d, h
    ld c, $04
    pop bc
    ld b, b
    db $eb
    add $0a
    ld a, [bc]
    ld de, $7900
    rst $00
    jr jr_016_4628

    ld c, b
    ld a, b
    jp z, $1e0d

    nop
    jr z, jr_016_4699

    rst $00
    ld d, $7a
    ld b, l
    ret z

    ret z

    add hl, bc
    ld e, $ca
    dec sp
    ld a, [hl+]
    rst $00
    sbc d

jr_016_4699:
    ld b, [hl]
    ld b, e
    inc b
    rrca
    ld a, [bc]
    nop
    ld d, a
    rrca
    dec bc
    nop
    ld d, a
    dec d
    ld a, [bc]
    ld [bc], a
    ld d, a
    ld c, l
    dec bc
    nop
    cp l
    ld [bc], a
    dec c
    dec c
    dec bc
    ccf
    dec bc
    inc c
    ld a, [bc]
    ld c, l
    ld b, d
    ld c, $ff
    ret nc

    ld bc, $232f
    ld [de], a
    rst $38
    jp nc, $d642

    inc bc
    cpl
    dec hl
    add hl, bc
    rst $38
    pop de
    ld b, e
    sub $04
    rlca
    ld h, b
    rrca
    rst $38
    jp nc, $cd44

    add hl, bc
    inc c
    ld d, b
    ld [de], a
    rst $38
    pop de
    ld b, l
    call c, $2f02
    inc l
    db $10
    rst $38
    jp nc, $d646

    dec b
    cpl
    jr c, jr_016_46f2

    rst $38
    db $d3
    ld b, a
    sub $06
    cpl
    ld e, e
    ld a, [bc]
    rst $38
    ret nc

    ld c, b
    sub $0b

jr_016_46f2:
    ld b, a
    daa
    ld [de], a
    rst $38
    rst $38
    adc c
    ret c

    ld b, a
    ld e, l
    add hl, bc
    rst $38
    rst $38
    adc d
    dec h
    ld l, [hl]
    rst $00
    rrca
    ld a, [bc]
    ld l, [hl]
    rst $00
    rrca
    dec bc
    sbc [hl]
    rst $00
    dec d
    ld a, [bc]
    ld e, [hl]
    ret


    ld c, l
    dec bc
    inc l
    inc l
    inc l
    add hl, hl
    ld sp, $2c28
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld d, a
    dec h
    ld sp, $5724
    ld d, a
    ld d, a
    ld d, a
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    ld b, e
    ld b, e
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    ld l, e
    ld l, e
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld a, b
    ld a, b
    ld d, h
    ld a, c
    ld d, h
    ld d, h
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld b, e
    ld b, e
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld b, e
    jr nz, jr_016_4773

    ld hl, $4343
    add hl, de
    inc l
    add hl, hl
    ld a, b
    ld b, e
    ld l, b
    ld a, a
    ld l, c
    ld b, e
    ld b, e

jr_016_4773:
    add hl, de
    inc l
    add hl, hl
    ld l, e
    ld l, e
    scf
    ld a, [hl-]
    ld a, [hl]
    ld l, e
    ld l, e
    dec d
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld b, e
    ld b, e
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld d, h
    ld b, e
    ld b, e
    ld d, h
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    inc l
    add hl, hl
    ld a, d
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld d, h
    ld b, e
    add hl, de
    ld d, a
    dec h
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, b
    ld b, e
    add hl, de
    rrca
    rrca
    ld a, d
    ld d, h
    ld a, d
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld a, b
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    rrca
    rrca
    ld a, b
    ld b, e
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld b, e
    ld b, e
    ld a, b
    ld a, b
    ld a, d
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    ld d, h
    ld a, b
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld a, b
    ld d, h
    ld b, e
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld b, e
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld b, e
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    rrca
    rrca
    ld d, h
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    rrca
    rrca
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    ld [hl], $36
    ld l, e
    ld l, e
    ld l, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld c, h
    ld c, h
    ld h, c
    ld h, c
    ld h, c
    ld a, c
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    rrca
    rrca
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld b, e
    ld b, e
    ld b, e
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld b, e
    ld b, e
    ld b, e
    ld a, b
    ld a, b
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld sp, $0231
    inc bc
    ld sp, $1943
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld d, h
    ld d, h
    ld a, d
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld a, b
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld l, h
    ld [hl], $43
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    dec [hl]
    ld d, h
    ld d, h
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld l, h
    ld a, [bc]
    ld a, b
    ld a, d
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld a, b
    ld a, b
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld a, b
    ld a, b
    ld a, b
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld b, e
    ld b, e
    ld b, e
    ld a, b
    ld a, b
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    ld l, h
    ld l, h
    inc sp
    ld d, h
    ld a, d
    ld d, h
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld l, [hl]
    ld a, b
    ld d, h
    ld a, b
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld l, [hl]
    ld b, e
    ld d, h
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld l, [hl]
    ld d, h
    ld a, d
    ld b, e
    ld b, e
    add hl, de
    ld a, [bc]
    ld l, [hl]
    dec bc
    dec bc
    ld l, [hl]
    ld d, h
    ld a, b
    ld b, e
    ld b, e
    add hl, de
    nop
    add hl, bc
    ld e, $cc
    ld c, c
    ld h, e
    ld d, [hl]
    ld c, d
    ld d, [hl]
    inc bc
    rlca
    or a
    ld c, h
    add sp, -$3a
    rrca
    inc d
    ld [$1627], sp
    rst $00
    add hl, de
    or b
    ld c, d
    add hl, bc
    rst $00
    inc c
    ld a, [bc]
    inc h
    nop
    ld sp, hl
    add $4e
    ld c, c
    ld b, e
    inc b
    ld [$0007], sp
    cp b
    add hl, bc
    rlca
    nop
    cp b
    ld [$020e], sp
    cp b
    add hl, bc
    ld c, $02
    cp b
    ld bc, $2709
    inc c
    dec bc
    ld b, $0f
    dec l
    rst $38
    ret nc

    ld b, c
    adc $14
    ld b, $0e
    add hl, sp
    rst $38
    jp nc, $ce42

    dec d
    rlca
    ld de, $ff23
    pop de
    ld b, e
    rst $18
    ld b, $07
    ld de, $ff27
    pop de
    ld b, h
    rst $18
    rlca
    rrca
    rrca
    add hl, sp
    rst $38
    ret nc

    ld b, l
    jp c, $0f09

    ld c, $2d
    rst $38
    db $d3
    ld b, [hl]
    jp c, Jump_000_120a

    ld c, $34
    rst $38
    ret nc

    ld b, a
    jp nc, Jump_000_1203

    ld c, $32
    rst $38
    ret nc

    ld c, b
    jp nc, Jump_000_0604

    add hl, bc
    add hl, hl
    rst $38
    db $d3
    ld c, c
    adc $16
    ld b, $11
    ld d, $ff
    pop de
    ld c, d
    adc $17
    ld b, a
    add hl, bc
    ld d, $ff
    rst $38
    adc e
    call c, $c7a0
    ld [$a007], sp
    rst $00
    add hl, bc
    rlca
    and h
    rst $00
    ld [$a40e], sp
    rst $00
    add hl, bc
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc de
    inc de
    ld l, a
    ld c, h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    inc de
    inc de
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rrca
    rrca
    ld d, d
    ld d, d
    jr nz, jr_016_4a39

    ld hl, $0750
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_016_4a39:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld sp, $3131
    ld sp, $7d37
    ld a, [hl]
    ld d, l
    ld d, l
    dec bc
    dec bc
    dec bc
    ld [hl], h
    ld [hl], h
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld sp, $3108
    ld [hl], h
    ld [hl], h
    dec bc
    dec bc
    ld [hl], h
    dec bc
    dec bc
    dec bc
    ld [hl], h
    rrca
    rrca
    ld d, c
    ld d, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, [hl]
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $0a6c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    add hl, bc
    inc d
    add h
    ld c, e
    ld d, l
    ld e, b
    rst $08
    ld d, a
    dec b
    inc e
    or b
    ld c, e
    inc hl
    ret z

    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld sp, hl
    add $06
    ld hl, sp+$40
    rst $38
    add $0f
    add hl, de
    ld [$0800], sp
    rst $00
    db $fc
    ld c, d
    rrca
    add hl, bc

jr_016_4afe:
    ld a, [bc]
    ld de, $ba00
    dec bc
    ld de, $ba00
    ld a, [bc]
    jr jr_016_4b0b

    cp d
    dec bc

jr_016_4b0b:
    jr jr_016_4b0f

    cp d
    inc b

jr_016_4b0f:
    ld de, $ba04
    dec b
    ld de, $ba04
    inc b
    jr jr_016_4b1f

    cp d
    dec b
    jr jr_016_4b23

    cp d
    dec b

jr_016_4b1f:
    rlca
    nop
    cp h
    ld [bc], a

jr_016_4b23:
    dec bc
    dec de
    ld [$0511], sp
    add hl, bc
    rlca
    ld [de], a
    db $10
    dec d
    rst $38
    jp nc, $d241

    dec b
    ld [de], a
    ld de, $ff12
    db $d3
    ld b, d
    ret c

    ld bc, $1012
    rrca
    rst $38
    pop de
    ld b, e
    ret c

    ld [bc], a
    ld [de], a
    rrca
    dec c
    rst $38
    jp nc, $d244

    ld b, $12
    ld c, $0a
    rst $38
    db $d3
    ld b, l
    ret c

    inc bc
    ld [de], a
    db $10
    rlca
    rst $38
    db $d3
    ld b, [hl]
    jp nc, $4d07

    ld c, $1e
    rst $38
    ret nc

    rlca
    adc l
    rst $00
    ld a, [bc]
    ld de, $c78d
    dec bc
    ld de, $c791
    ld a, [bc]
    jr jr_016_4afe

    rst $00
    dec bc
    jr jr_016_4bb0

    rst $00
    inc b
    ld de, $c73f
    dec b
    ld de, $c743
    inc b
    jr jr_016_4bc0

    rst $00
    dec b
    jr jr_016_4bbb

    rst $00
    dec b
    rlca
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    rrca
    rrca
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_016_4bb0

    ld hl, $0a0a
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    ld c, [hl]
    ld bc, $0201

jr_016_4bb0:
    inc bc
    ld bc, $0101
    ld bc, $7d37
    ld a, [hl]
    ld bc, $0b01

jr_016_4bbb:
    dec bc
    dec bc
    dec bc
    rrca
    rrca

jr_016_4bc0:
    ld c, [hl]
    ld bc, $0101
    ld bc, $0a01
    ld a, [bc]
    ld a, [bc]
    jr nz, jr_016_4bd8

    ld hl, $010a
    ld bc, $0101
    ld bc, $0f0f
    ld d, b
    ld [hl], a
    ld [hl], a
    ld [hl], a

jr_016_4bd8:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, a
    ld l, c
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld h, b
    rrca
    rrca
    ld c, [hl]
    ld sp, $0a0a
    ld sp, $3131
    ld sp, $3731
    ld a, l
    ld a, [hl]
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld c, [hl]
    ld sp, $0a0a
    ld sp, $3131
    ld sp, $3131
    ld sp, $0f31
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, [hl]
    ld sp, $0a0a
    ld sp, $6231
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, [hl]
    ld sp, $3108
    ld sp, $4e0a
    dec e
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    add hl, bc
    add hl, de
    sbc h
    ld c, h
    ld a, h
    ld e, c
    ld h, e
    ld e, c
    add hl, bc
    inc e
    ld h, d
    ld c, [hl]
    db $eb
    add $0a
    ld a, [bc]
    adc a
    nop
    ld l, c
    rlc a
    and [hl]
    ld c, h
    inc b
    rst $00
    rrca
    inc d
    ld [$0300], sp
    rst $00
    ld e, d
    ld c, h
    ld b, e
    inc b
    ld [$0021], sp
    cp [hl]
    add hl, bc
    ld hl, $be00
    ld [$0228], sp
    cp [hl]
    add hl, bc
    jr z, jr_016_4c6d

    cp [hl]
    ld [bc], a

jr_016_4c6d:
    rlca
    dec hl
    inc b
    dec b
    ld hl, $0305
    rlca
    rrca
    jr z, @+$01

    db $d3
    ld b, c
    rst $18
    ld [$1307], sp
    inc l
    rst $38
    jp nc, $df42

    add hl, bc
    rlca
    ld de, $ff2e
    jp nc, $df43

    ld a, [bc]
    sub h
    rst $00
    ld [$9421], sp
    rst $00
    add hl, bc
    ld hl, $c798
    ld [$9828], sp
    rst $00
    add hl, bc
    jr z, @+$1a

    ld b, e
    ld h, h
    ld sp, $3131
    ld sp, $4365
    ld b, e
    inc d
    ld l, e
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $4318
    ld h, h
    ld sp, $7474
    ld sp, $4365
    ld b, e
    ld b, e
    ld h, h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $4318
    ld h, h
    ld sp, $7474
    ld sp, $4365
    ld b, e
    ld b, e
    ld h, h
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    jr nz, @+$0f

    ld hl, $3131
    ld sp, $3131
    jr jr_016_4d2c

    ld h, h
    ld sp, $7474
    ld sp, $7474
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld l, b
    ld a, a
    ld l, c
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    jr jr_016_4d45

    ld h, h
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld sp, $3731
    ld a, l
    ld a, [hl]
    ld bc, $0101
    ld bc, $1801
    ld b, e
    dec l
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld h, d
    ld d, c

jr_016_4d2c:
    ld d, c
    ld b, b
    ld c, l
    ld d, c
    ld d, c
    ld h, e
    jr jr_016_4d77

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, [hl]
    dec bc

jr_016_4d45:
    dec bc
    dec bc
    ld c, l
    ld [hl], h
    ld [hl], h
    ld c, l
    jr jr_016_4d90

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld c, [hl]
    dec bc
    dec bc
    dec bc
    ld c, l
    ld [hl], h
    ld [hl], h
    ld c, l
    inc d
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld d, b
    ld d, d

jr_016_4d77:
    ld d, d
    ld d, d
    ld c, a
    ld d, d
    ld d, d
    ld c, a
    jr nz, jr_016_4d8f

    ld bc, $0c02
    dec c
    dec c
    daa
    inc b
    dec b
    rlca
    rlca
    ld [hl+], a
    inc hl
    ld [$0f0f], sp
    rrca

jr_016_4d8f:
    rrca

jr_016_4d90:
    rrca
    dec de
    ld c, $0a
    dec bc
    ld c, $0f
    rrca
    ld c, $fa
    sub a
    rst $08
    ld [$d0b4], a
    call Call_000_132f
    ld d, $01

jr_016_4da4:
    inc d
    call Call_016_4dc0
    push hl
    ld hl, $cfa7
    ldh a, [$98]
    ld c, a
    ld a, [hl-]
    sub c
    ldh a, [$97]
    ld c, a
    ld a, [hl-]
    sbc c
    ldh a, [$96]
    ld c, a
    ld a, [hl]
    sbc c
    pop hl
    jr nc, jr_016_4da4

    dec d
    ret


Call_016_4dc0:
    ld a, [$d0ca]
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $4e73
    add hl, bc
    call Call_016_4e66
    ld a, d
    ldh [$99], a
    call Call_000_38a5
    ld a, [hl]
    and $f0
    swap a
    ldh [$99], a
    call Call_000_38a5
    ld a, [hl+]
    and $0f
    ldh [$99], a
    ld b, $04
    call Call_000_38b2
    ldh a, [$96]
    push af
    ldh a, [$97]
    push af
    ldh a, [$98]
    push af
    call Call_016_4e66
    ld a, [hl]
    and $7f
    ldh [$99], a
    call Call_000_38a5
    ldh a, [$96]
    push af
    ldh a, [$97]
    push af
    ldh a, [$98]
    push af
    ld a, [hl+]
    push af
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, d
    ldh [$98], a
    ld a, [hl+]
    ldh [$99], a
    call Call_000_38a5
    ld b, [hl]
    ldh a, [$98]
    sub b
    ldh [$98], a
    ld b, $00
    ldh a, [$97]
    sbc b
    ldh [$97], a
    ldh a, [$96]
    sbc b
    ldh [$96], a
    pop af
    and $80
    jr nz, jr_016_4e41

    pop bc
    ldh a, [$98]
    add b
    ldh [$98], a
    pop bc
    ldh a, [$97]
    adc b
    ldh [$97], a
    pop bc
    ldh a, [$96]
    adc b
    ldh [$96], a
    jr jr_016_4e53

jr_016_4e41:
    pop bc
    ldh a, [$98]
    sub b
    ldh [$98], a
    pop bc
    ldh a, [$97]
    sbc b
    ldh [$97], a
    pop bc
    ldh a, [$96]
    sbc b
    ldh [$96], a

jr_016_4e53:
    pop bc
    ldh a, [$98]
    add b
    ldh [$98], a
    pop bc
    ldh a, [$97]
    adc b
    ldh [$97], a
    pop bc
    ldh a, [$96]
    adc b
    ldh [$96], a
    ret


Call_016_4e66:
    xor a
    ldh [$96], a
    ldh [$97], a
    ld a, d
    ldh [$98], a
    ldh [$99], a
    jp Jump_000_38a5


    ld de, $0000
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld e, $34
    inc d
    nop
    ld b, [hl]
    ld h, l
    adc a
    ld h, h
    adc h
    ld b, l
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    ld a, [de]
    bit 3, a
    jr nz, jr_016_4ea8

    bit 4, a
    jr nz, jr_016_4eb1

    bit 5, a
    jr nz, jr_016_4eba

    bit 6, a
    jr nz, jr_016_4ec3

    and $07
    ret z

    ld a, $92
    ld [hl+], a
    ld a, $8b
    ld [hl+], a
    ld [hl], $8f
    ret


jr_016_4ea8:
    ld a, $8f
    ld [hl+], a
    ld a, $92
    ld [hl+], a
    ld [hl], $8d
    ret


jr_016_4eb1:
    ld a, $81
    ld [hl+], a
    ld a, $91
    ld [hl+], a
    ld [hl], $8d
    ret


jr_016_4eba:
    ld a, $85
    ld [hl+], a
    ld a, $91
    ld [hl+], a
    ld [hl], $99
    ret


jr_016_4ec3:
    ld a, $8f
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    ld [hl], $91
    ret


    ld hl, $4f28
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_016_4f1d

    ld hl, $d2f6
    ld b, $13
    call Call_000_2a81
    ld a, [$d11d]
    ldh [$dd], a
    ld b, a
    ldh a, [$db]
    cp b
    jr z, jr_016_4ef0

    jr nc, jr_016_4f13

jr_016_4ef0:
    ld hl, $4f37
    call Call_000_3c36
    ldh a, [$dc]
    ld b, a
    ld c, $01
    call Call_000_3e3f
    jr nc, jr_016_4f0a

    ld hl, $4f3c
    call Call_000_3c36
    ld a, $01
    jr jr_016_4f25

jr_016_4f0a:
    ld hl, $4f42
    call Call_000_3c36
    xor a
    jr jr_016_4f25

jr_016_4f13:
    ld hl, $4f2d
    call Call_000_3c36
    ld a, $80
    jr jr_016_4f25

jr_016_4f1d:
    ld hl, $4f32
    call Call_000_3c36
    ld a, $ff

jr_016_4f25:
    ldh [$db], a
    ret


    rla
    ld b, e
    ld b, c
    ld h, $50
    rla
    db $e4
    ld b, c
    ld h, $50
    rla
    ld d, b
    ld b, d
    ld h, $50
    rla
    adc h
    ld b, d
    ld h, $50
    rla
    reti


    ld b, d
    ld h, $0b
    ld d, b
    rla
    db $ec
    ld b, d
    ld h, $50
    call Call_000_3c29
    ld hl, $4f6e
    ld de, $4f5a
    ld a, [$d5ff]
    call Call_000_30fc
    ld [$d5ff], a
    ret


    or l
    ld sp, $31e8
    ld de, $b732
    ld c, a
    ret nc

    ld c, a
    jp hl


    ld c, a
    ld [bc], a
    ld d, b
    dec de

jr_016_4f69:
    ld d, b
    inc [hl]
    ld d, b
    ld c, l
    ld d, b
    ld bc, $c800
    rst $10
    pop bc
    ld c, a
    bit 1, a
    add $4f
    add $4f
    ld [bc], a
    nop
    ret z

    rst $10
    jp c, $e44f

    ld c, a
    rst $18
    ld c, a
    rst $18
    ld c, a
    inc bc
    ld b, b
    ret z

    rst $10
    di
    ld c, a
    db $fd
    ld c, a
    ld hl, sp+$4f
    ld hl, sp+$4f
    inc b
    jr nc, @-$36

    rst $10
    inc c
    ld d, b
    ld d, $50
    ld de, $1150
    ld d, b
    dec b
    jr nc, jr_016_4f69

    rst $10
    dec h
    ld d, b
    cpl
    ld d, b
    ld a, [hl+]
    ld d, b
    ld a, [hl+]
    ld d, b
    ld b, $30
    ret z

    rst $10
    ld a, $50
    ld c, b
    ld d, b
    ld b, e
    ld d, b
    ld b, e
    ld d, b
    rst $38
    ld [$6e21], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld c, e
    ld [hl], d
    jr z, jr_016_5016

    rla
    ld [hl], a
    ld [hl], d
    jr z, jr_016_501b

    rla
    adc h
    ld [hl], d
    jr z, @+$52

    ld [$7a21], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    xor a
    ld [hl], d
    jr z, jr_016_502f

    rla
    reti


    ld [hl], d
    jr z, jr_016_5034

    rla
    rst $28
    ld [hl], d
    jr z, @+$52

    ld [$8621], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld h, $73
    jr z, jr_016_5048

    rla
    ld b, a
    ld [hl], e
    jr z, jr_016_504d

    rla
    ld e, e
    ld [hl], e
    jr z, jr_016_5052

    ld [$9221], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    adc [hl]
    ld [hl], e
    jr z, jr_016_5061

    rla
    xor h
    ld [hl], e
    jr z, jr_016_5066

jr_016_5016:
    rla
    cp a
    ld [hl], e
    jr z, @+$52

jr_016_501b:
    ld [$9e21], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $ed
    ld [hl], e
    jr z, jr_016_507a

    rla
    ld b, $74
    jr z, @+$52

jr_016_502f:
    rla
    jr jr_016_50a6

    jr z, jr_016_5084

jr_016_5034:
    ld [$aa21], sp
    ld c, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld b, h
    ld [hl], h
    jr z, jr_016_5093

    rla
    ld l, [hl]
    ld [hl], h
    jr z, jr_016_5098

jr_016_5048:
    rla
    add c
    ld [hl], h
    jr z, jr_016_509d

jr_016_504d:
    rla
    and a
    ld [hl], h
    jr z, jr_016_50a2

jr_016_5052:
    call Call_000_3c29
    ld hl, $507f
    ld de, $5065
    ld a, [$d600]
    call Call_000_30fc

jr_016_5061:
    ld [$d600], a
    ret


    or l

jr_016_5066:
    ld sp, $31e8
    ld de, $ec32
    ld d, b
    dec b
    ld d, c
    ld e, $51
    scf

jr_016_5072:
    ld d, c
    ld d, b
    ld d, c
    ld l, c
    ld d, c
    add d
    ld d, c
    sbc e

jr_016_507a:
    ld d, c
    or h
    ld d, c
    call $0151
    ld b, b
    call z, $f6d7

jr_016_5084:
    ld d, b
    nop
    ld d, c
    ei
    ld d, b
    ei
    ld d, b
    ld [bc], a
    ld b, b
    call z, $0fd7
    ld d, c
    add hl, de
    ld d, c

jr_016_5093:
    inc d
    ld d, c
    inc d

jr_016_5096:
    ld d, c
    inc bc

jr_016_5098:
    ld b, b
    call z, $28d7
    ld d, c

jr_016_509d:
    ld [hl-], a
    ld d, c
    dec l
    ld d, c
    dec l

jr_016_50a2:
    ld d, c
    inc b
    jr nz, jr_016_5072

jr_016_50a6:
    rst $10
    ld b, c
    ld d, c
    ld c, e
    ld d, c
    ld b, [hl]
    ld d, c
    ld b, [hl]
    ld d, c
    dec b
    jr nc, @-$32

    rst $10
    ld e, d
    ld d, c
    ld h, h
    ld d, c
    ld e, a
    ld d, c
    ld e, a
    ld d, c
    ld b, $30
    call z, Call_016_73d7
    ld d, c
    ld a, l
    ld d, c
    ld a, b
    ld d, c
    ld a, b
    ld d, c
    rlca
    jr nz, jr_016_5096

    rst $10
    adc h
    ld d, c
    sub [hl]
    ld d, c
    sub c
    ld d, c
    sub c
    ld d, c
    ld [$cc20], sp
    rst $10
    and l
    ld d, c
    xor a
    ld d, c
    xor d
    ld d, c
    xor d
    ld d, c
    add hl, bc
    ld b, b
    call z, $bed7
    ld d, c
    ret z

    ld d, c
    jp $c351


    ld d, c
    rst $38
    ld [$7f21], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    rlca
    ld [hl], l
    jr z, jr_016_514b

    rla
    inc sp
    ld [hl], l
    jr z, jr_016_5150

    rla
    ld b, d
    ld [hl], l
    jr z, @+$52

    ld [$8b21], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld h, h
    ld [hl], l
    jr z, jr_016_5164

    rla
    add h
    ld [hl], l
    jr z, jr_016_5169

    rla
    sbc d
    ld [hl], l
    jr z, @+$52

    ld [$9721], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    cp c
    ld [hl], l
    jr z, jr_016_517d

    rla
    call c, Call_000_2875
    ld d, b
    rla
    xor $75
    jr z, @+$52

    ld [$a321], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld e, $76
    jr z, jr_016_5196

    rla
    ld b, d
    db $76
    jr z, jr_016_519b

jr_016_514b:
    rla
    ld c, [hl]
    db $76
    jr z, @+$52

jr_016_5150:
    ld [$af21], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add [hl]
    db $76
    jr z, jr_016_51af

    rla
    and a
    db $76
    jr z, jr_016_51b4

jr_016_5164:
    rla
    cp [hl]
    db $76
    jr z, @+$52

jr_016_5169:
    ld [$bb21], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ldh a, [rPCM12]
    jr z, jr_016_51c8

    rla
    ld d, $77
    jr z, jr_016_51cd

jr_016_517d:
    rla
    dec e
    ld [hl], a
    jr z, jr_016_51d2

    ld [$c721], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld b, a
    ld [hl], a
    jr z, jr_016_51e1

    rla
    ld [hl], h
    ld [hl], a
    jr z, jr_016_51e6

jr_016_5196:
    rla
    adc b
    ld [hl], a
    jr z, @+$52

jr_016_519b:
    ld [$d321], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    pop bc
    ld [hl], a
    jr z, @+$52

    rla
    ldh [rPCM34], a
    jr z, jr_016_51ff

jr_016_51af:
    rla
    rst $30
    ld [hl], a
    jr z, jr_016_5204

jr_016_51b4:
    ld [$df21], sp
    ld d, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc sp
    ld a, b
    jr z, jr_016_5213

    rla
    ld e, c
    ld a, b
    jr z, jr_016_5218

jr_016_51c8:
    rla
    add b
    ld a, b
    jr z, jr_016_521d

jr_016_51cd:
    rla
    pop bc
    ld a, b
    jr z, jr_016_5222

jr_016_51d2:
    call Call_000_3c29
    ld hl, $51ff
    ld de, $51e5
    ld a, [$d604]

jr_016_51de:
    call Call_000_30fc

jr_016_51e1:
    ld [$d604], a
    ret


    or l

jr_016_51e6:
    ld sp, $31e8
    ld de, $4832
    ld d, d
    ld h, c
    ld d, d
    ld a, d
    ld d, d
    sub e
    ld d, d
    xor h
    ld d, d
    push bc

jr_016_51f6:
    ld d, d
    sbc $52
    ld [$de23], a
    ld d, d
    db $e3
    ld d, d

jr_016_51ff:
    ld bc, $d040

jr_016_5202:
    rst $10
    ld d, d

jr_016_5204:
    ld d, d
    ld e, h
    ld d, d
    ld d, a
    ld d, d
    ld d, a
    ld d, d
    ld [bc], a
    jr nc, jr_016_51de

    rst $10
    ld l, e
    ld d, d
    ld [hl], l
    ld d, d

jr_016_5213:
    ld [hl], b
    ld d, d
    ld [hl], b
    ld d, d
    inc bc

jr_016_5218:
    ld b, b
    ret nc

    rst $10
    add h
    ld d, d

jr_016_521d:
    adc [hl]
    ld d, d
    adc c
    ld d, d
    adc c

jr_016_5222:
    ld d, d
    inc b
    jr nc, jr_016_51f6

    rst $10
    sbc l
    ld d, d
    and a
    ld d, d
    and d
    ld d, d
    and d
    ld d, d
    dec b
    jr nz, jr_016_5202

    rst $10
    or [hl]
    ld d, d
    ret nz

    ld d, d
    cp e
    ld d, d
    cp e
    ld d, d
    ld b, $20
    ret nc

    rst $10
    rst $08
    ld d, d
    reti


    ld d, d
    call nc, $d452
    ld d, d
    rst $38
    ld [$ff21], sp
    ld d, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], b
    ld b, b
    add hl, hl
    ld d, b
    rla
    xor b
    ld b, b
    add hl, hl
    ld d, b
    rla
    cp [hl]
    ld b, b
    add hl, hl
    ld d, b
    ld [$0b21], sp
    ld d, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sbc $40
    add hl, hl
    ld d, b
    rla
    rst $28
    ld b, b
    add hl, hl
    ld d, b
    rla
    inc hl
    ld b, c
    add hl, hl
    ld d, b
    ld [$1721], sp
    ld d, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld c, d
    ld b, c
    add hl, hl
    ld d, b
    rla
    ld l, c
    ld b, c
    add hl, hl
    ld d, b
    rla
    ld a, d
    ld b, c
    add hl, hl
    ld d, b
    ld [$2321], sp
    ld d, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    sbc e
    ld b, c
    add hl, hl
    ld d, b
    rla
    rst $10
    ld b, c
    add hl, hl
    ld d, b
    rla
    db $ec
    ld b, c
    add hl, hl
    ld d, b
    ld [$2f21], sp
    ld d, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld d, $42
    add hl, hl
    ld d, b
    rla
    dec sp
    ld b, d
    add hl, hl
    ld d, b
    rla
    ld d, d
    ld b, d
    add hl, hl
    ld d, b
    ld [$3b21], sp
    ld d, d
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], e
    ld b, d
    add hl, hl
    ld d, b
    rla
    and c
    ld b, d
    add hl, hl
    ld d, b
    rla
    or e
    ld b, d
    add hl, hl
    ld d, b
    rla
    inc bc
    ld b, e
    add hl, hl
    ld d, b
    rla
    db $10
    ld b, e
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $5317
    ld de, $52fb
    ld a, [$d622]
    call Call_000_30fc
    ld [$d622], a

jr_016_52fa:
    ret


    or l
    ld sp, $31e8
    ld de, $9032
    ld d, e
    xor c
    ld d, e
    jp nz, $db53

    ld d, e
    db $f4
    ld d, e
    dec c
    ld d, h
    ld h, $54
    ccf
    ld d, h
    ld e, b

jr_016_5312:
    ld d, h
    ld [hl], c
    ld d, h
    adc d
    ld d, h
    ld bc, $d430
    rst $10
    sbc d
    ld d, e
    and h
    ld d, e
    sbc a
    ld d, e
    sbc a
    ld d, e
    ld [bc], a
    jr nz, jr_016_52fa

    rst $10
    or e
    ld d, e
    cp l
    ld d, e
    cp b
    ld d, e
    cp b
    ld d, e
    inc bc
    jr nc, @-$2a

    rst $10
    call z, $d653

jr_016_5336:
    ld d, e
    pop de
    ld d, e
    pop de
    ld d, e
    inc b
    jr nc, jr_016_5312

    rst $10
    push hl
    ld d, e
    rst $28
    ld d, e
    ld [$ea53], a
    ld d, e
    dec b
    ld b, b
    call nc, $fed7
    ld d, e
    ld [$0354], sp
    ld d, h
    inc bc
    ld d, h
    ld b, $30
    call nc, Call_000_17d7
    ld d, h
    ld hl, $1c54
    ld d, h
    inc e
    ld d, h
    rlca
    jr nc, jr_016_5336

    rst $10
    jr nc, jr_016_53b9

    ld a, [hl-]
    ld d, h
    dec [hl]
    ld d, h
    dec [hl]
    ld d, h
    ld [$d440], sp
    rst $10
    ld c, c
    ld d, h
    ld d, e
    ld d, h
    ld c, [hl]
    ld d, h
    ld c, [hl]
    ld d, h
    add hl, bc
    jr nc, @-$2a

    rst $10
    ld h, d
    ld d, h
    ld l, h
    ld d, h
    ld h, a
    ld d, h
    ld h, a
    ld d, h
    ld a, [bc]
    ld b, b
    call nc, Call_016_7bd7
    ld d, h
    add l
    ld d, h
    add b
    ld d, h
    add b
    ld d, h
    rst $38
    ld [$1721], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec e
    ld b, e
    add hl, hl
    ld d, b
    rla
    ld sp, $2943
    ld d, b
    rla
    ld c, d
    ld b, e
    add hl, hl
    ld d, b
    ld [$2321], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl], e
    ld b, e
    add hl, hl
    ld d, b
    rla

jr_016_53b9:
    sub h
    ld b, e
    add hl, hl
    ld d, b
    rla
    and l
    ld b, e
    add hl, hl
    ld d, b
    ld [$2f21], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    pop de
    ld b, e
    add hl, hl
    ld d, b
    rla
    db $eb
    ld b, e
    add hl, hl
    ld d, b
    rla
    ld [bc], a
    ld b, h
    add hl, hl
    ld d, b
    ld [$3b21], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec h
    ld b, h
    add hl, hl
    ld d, b
    rla
    ld c, e
    ld b, h
    add hl, hl
    ld d, b
    rla
    ld e, a
    ld b, h
    add hl, hl
    ld d, b
    ld [$4721], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add b
    ld b, h
    add hl, hl
    ld d, b
    rla
    or d
    ld b, h
    add hl, hl
    ld d, b
    rla
    call nz, $2944
    ld d, b
    ld [$5321], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    rst $20
    ld b, h
    add hl, hl
    ld d, b
    rla
    inc b
    ld b, l
    add hl, hl
    ld d, b
    rla
    inc d
    ld b, l
    add hl, hl
    ld d, b
    ld [$5f21], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld [hl-], a
    ld b, l
    add hl, hl
    ld d, b
    rla
    ld c, [hl]
    ld b, l
    add hl, hl
    ld d, b
    rla
    ld h, h
    ld b, l
    add hl, hl
    ld d, b
    ld [$6b21], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add [hl]
    ld b, l
    add hl, hl
    ld d, b
    rla
    and b
    ld b, l
    add hl, hl
    ld d, b
    rla
    ret z

    ld b, l
    add hl, hl
    ld d, b
    ld [$7721], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    dec e
    ld b, [hl]
    add hl, hl
    ld d, b
    rla
    jr c, @+$48

    add hl, hl
    ld d, b
    rla
    ld c, a
    ld b, [hl]
    add hl, hl
    ld d, b
    ld [$8321], sp
    ld d, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, a
    ld b, [hl]
    add hl, hl
    ld d, b
    rla
    sub b
    ld b, [hl]
    add hl, hl
    ld d, b
    rla
    and [hl]
    ld b, [hl]
    add hl, hl
    ld d, b
    rla
    rst $00
    ld b, [hl]
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $552d
    ld de, $54ad
    ld a, [$d623]
    call Call_000_30fc
    ld [$d623], a
    ret


jr_016_54a2:
    xor a
    ld [$cd6b], a
    ld [$d623], a
    ld [$da38], a
    ret


    or l
    ld d, h
    add sp, $31
    ld de, $e832
    ld d, h
    ld hl, $d7d7
    bit 7, [hl]
    jp nz, Jump_000_31b5

    bit 6, [hl]
    res 6, [hl]
    jp z, Jump_000_31b5

    ld a, $0d
    ldh [$8c], a
    call Call_000_2817
    ld a, $84
    ld [$d058], a
    ld a, $1e
    ld [$d126], a
    ld a, $1e
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $03
    ld [$d623], a
    ld [$da38], a
    ret


    ld a, [$d056]
    cp $ff
    jr z, jr_016_54a2

    call Call_000_231c
    ld a, [$cf0b]
    cp $02
    jr z, jr_016_5500

    ld a, $0e
    ldh [$8c], a
    call Call_000_2817

jr_016_5500:
    ld hl, $d7d7
    set 7, [hl]
    call Call_000_3ddb
    ld a, $00
    ld [$d623], a
    ld [$da38], a
    ret


    add d
    ld d, l
    sub c
    ld d, l
    xor d
    ld d, l
    jp $dc55


    ld d, l
    push af
    ld d, l
    ld c, $56
    daa
    ld d, [hl]
    rst $28
    inc hl
    rst $28
    inc hl
    ld b, b
    ld d, [hl]
    ld b, l
    ld d, [hl]
    add a
    ld d, l
    adc h
    ld d, l
    ld [bc], a
    ld b, b
    sub $d7
    sbc e
    ld d, l
    and l
    ld d, l
    and b
    ld d, l
    and b
    ld d, l
    inc bc
    ld b, b
    sub $d7
    or h
    ld d, l
    cp [hl]
    ld d, l
    cp c
    ld d, l
    cp c
    ld d, l
    inc b
    ld b, b
    sub $d7
    call $d755
    ld d, l
    jp nc, $d255

    ld d, l
    dec b
    ld b, b
    sub $d7
    and $55
    ldh a, [rHDMA5]
    db $eb
    ld d, l
    db $eb
    ld d, l
    ld b, $40
    sub $d7
    rst $38
    ld d, l
    add hl, bc
    ld d, [hl]
    inc b
    ld d, [hl]
    inc b
    ld d, [hl]
    rlca
    ld b, b
    sub $d7
    jr @+$58

    ld [hl+], a
    ld d, [hl]
    dec e
    ld d, [hl]
    dec e
    ld d, [hl]
    ld [$d610], sp
    rst $10
    ld sp, $3b56
    ld d, [hl]
    ld [hl], $56
    ld [hl], $56
    rst $38
    rla
    sub $46
    add hl, hl
    ld d, b
    rla
    rst $30
    ld b, [hl]
    add hl, hl
    ld d, b
    rla
    daa
    ld b, a
    add hl, hl
    ld d, b
    ld [$2d21], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, h
    ld b, a
    add hl, hl
    ld d, b
    rla
    add a
    ld b, a
    add hl, hl
    ld d, b
    rla
    sbc a
    ld b, a
    add hl, hl
    ld d, b
    ld [$3921], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    cp e
    ld b, a
    add hl, hl
    ld d, b
    rla
    db $e3
    ld b, a
    add hl, hl
    ld d, b
    rla
    rst $30
    ld b, a
    add hl, hl
    ld d, b
    ld [$4521], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld h, $48
    add hl, hl
    ld d, b
    rla
    ld b, h
    ld c, b
    add hl, hl
    ld d, b
    rla
    ld c, d
    ld c, b
    add hl, hl
    ld d, b
    ld [$5121], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld a, l
    ld c, b
    add hl, hl
    ld d, b
    rla
    sbc e
    ld c, b
    add hl, hl
    ld d, b
    rla
    and a
    ld c, b
    add hl, hl
    ld d, b
    ld [$5d21], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ldh [rOBP0], a
    add hl, hl
    ld d, b
    rla
    nop
    ld c, c
    add hl, hl
    ld d, b
    rla
    dec bc
    ld c, c
    add hl, hl
    ld d, b
    ld [$6921], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add hl, sp
    ld c, c
    add hl, hl
    ld d, b
    rla
    ld d, b
    ld c, c
    add hl, hl
    ld d, b
    rla
    ld h, c
    ld c, c
    add hl, hl
    ld d, b
    ld [$7521], sp
    ld d, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    adc a
    ld c, c
    add hl, hl
    ld d, b
    rla
    or l
    ld c, c
    add hl, hl
    ld d, b
    rla
    cp a
    ld c, c
    add hl, hl
    ld d, b
    rla
    di
    ld c, c
    add hl, hl
    ld d, b
    rla
    db $10
    ld c, d
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $567b
    ld de, $565d
    ld a, [$d624]
    call Call_000_30fc
    ld [$d624], a
    ret


    or l
    ld sp, $31e8
    ld de, $f432
    ld d, [hl]
    ld a, [$0056]
    ld d, a
    ld b, $57
    inc c
    ld d, a
    ld [de], a
    ld d, a
    jr jr_016_56c8

    ld e, $57
    inc h
    ld d, a
    ld a, [hl+]
    ld d, a
    rst $28
    inc hl
    jp z, Jump_000_0157

    jr nz, @-$22

jr_016_567e:
    rst $10
    inc [hl]
    ld d, a
    ld a, $57
    add hl, sp
    ld d, a
    add hl, sp
    ld d, a
    ld [bc], a
    jr nc, @-$22

jr_016_568a:
    rst $10
    ld b, e
    ld d, a
    ld c, l
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    inc bc
    jr nc, @-$22

    rst $10
    ld d, d
    ld d, a
    ld e, h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    inc b
    jr nc, jr_016_567e

jr_016_56a2:
    rst $10
    ld h, c
    ld d, a
    ld l, e
    ld d, a
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld d, a
    dec b
    jr nz, jr_016_568a

    rst $10
    ld [hl], b
    ld d, a
    ld a, d
    ld d, a
    ld [hl], l
    ld d, a
    ld [hl], l
    ld d, a
    ld b, $30
    call c, Call_016_7fd7
    ld d, a
    adc c
    ld d, a
    add h
    ld d, a
    add h
    ld d, a
    rlca
    jr nc, jr_016_56a2

jr_016_56c6:
    rst $10
    adc [hl]

jr_016_56c8:
    ld d, a
    sbc b
    ld d, a
    sub e
    ld d, a
    sub e
    ld d, a
    ld [$dc30], sp
    rst $10
    sbc l
    ld d, a
    and a
    ld d, a
    and d
    ld d, a
    and d
    ld d, a
    add hl, bc
    jr nc, @-$22

    rst $10
    xor h
    ld d, a
    or [hl]
    ld d, a
    or c
    ld d, a
    or c
    ld d, a
    ld a, [bc]
    jr nc, jr_016_56c6

    rst $10
    cp e
    ld d, a
    push bc
    ld d, a
    ret nz

    ld d, a
    ret nz

    ld d, a
    rst $38
    ld [$7b21], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$8721], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$9321], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$9f21], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$ab21], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$b721], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$c321], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$cf21], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$db21], sp
    ld d, [hl]
    jr jr_016_572e

    ld [$e721], sp
    ld d, [hl]

jr_016_572e:
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $76
    ld d, d
    add hl, hl
    ld d, b
    rla
    and [hl]
    ld d, d
    add hl, hl
    ld d, b
    rla
    cp b
    ld d, d
    add hl, hl
    ld d, b
    rla
    dec d
    ld d, e
    add hl, hl
    ld d, b
    rla
    ld b, d
    ld d, e
    add hl, hl
    ld d, b
    rla
    ld c, [hl]
    ld d, e
    add hl, hl
    ld d, b
    rla
    add b
    ld d, e
    add hl, hl
    ld d, b
    rla
    xor c
    ld d, e
    add hl, hl
    ld d, b
    rla
    cp h
    ld d, e
    add hl, hl
    ld d, b
    rla
    rst $18
    ld d, e
    add hl, hl
    ld d, b
    rla
    inc d
    ld d, h
    add hl, hl
    ld d, b
    rla
    jr z, jr_016_57c2

    add hl, hl
    ld d, b
    rla
    ld l, e
    ld d, h
    add hl, hl
    ld d, b
    rla
    add [hl]
    ld d, h
    add hl, hl
    ld d, b
    rla
    sbc a
    ld d, h
    add hl, hl
    ld d, b
    rla
    cp [hl]
    ld d, h
    add hl, hl
    ld d, b
    rla
    ld [c], a
    ld d, h
    add hl, hl
    ld d, b
    rla
    ld sp, hl
    ld d, h
    add hl, hl
    ld d, b
    rla
    dec h
    ld d, l
    add hl, hl
    ld d, b
    rla
    ld b, a
    ld d, l
    add hl, hl
    ld d, b
    rla
    ld d, c
    ld d, l
    add hl, hl
    ld d, b
    rla
    sub c
    ld d, l
    add hl, hl
    ld d, b
    rla
    call nz, Call_000_2955
    ld d, b
    rla
    ret c

    ld d, l
    add hl, hl
    ld d, b
    rla
    db $fc
    ld d, l
    add hl, hl
    ld d, b
    rla
    rla
    ld d, [hl]
    add hl, hl
    ld d, b
    rla
    ld h, $56
    add hl, hl
    ld d, b
    rla
    ld b, l
    ld d, [hl]
    add hl, hl
    ld d, b
    rla
    ld h, c

jr_016_57c2:
    ld d, [hl]
    add hl, hl
    ld d, b
    rla
    ld [hl], a
    ld d, [hl]
    add hl, hl
    ld d, b
    rla
    sbc d
    ld d, [hl]
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $586b
    ld de, $57ed
    ld a, [$d625]
    call Call_000_30fc
    ld [$d625], a
    ret


Jump_016_57e2:
    xor a
    ld [$cd6b], a
    ld [$d625], a
    ld [$da38], a
    ret


    push af
    ld d, a
    add sp, $31
    ld de, $2b32
    ld e, b
    ld hl, $d7df
    bit 1, [hl]
    jp nz, Jump_000_31b5

    bit 0, [hl]
    res 0, [hl]
    jp z, Jump_000_31b5

    ld a, $0a
    ldh [$8c], a
    call Call_000_2817
    ld a, $84
    ld [$d058], a
    ld a, $1e
    ld [$d126], a
    ld a, $22
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    call Call_000_231c
    ld a, $03
    ld [$d625], a
    ld [$da38], a
    ret


    ld a, [$d056]
    cp $ff
    jp z, Jump_016_57e2

    call Call_000_231c
    ld a, [$cf0b]
    cp $02
    jr z, jr_016_5844

    ld a, $0b
    ldh [$8c], a
    call Call_000_2817

jr_016_5844:
    ld hl, $d7df
    set 1, [hl]
    call Call_000_3ddb
    ld a, $00
    ld [$d625], a
    ld [$da38], a
    ret


    or h
    ld e, b
    call $e658
    ld e, b
    rst $38
    ld e, b
    jr jr_016_58b8

    ld sp, $4a59
    ld e, c
    ld e, c

jr_016_5864:
    ld e, c
    ld e, [hl]
    ld e, c
    ld c, a
    ld e, c
    ld d, h
    ld e, c
    ld bc, $de30
    rst $10
    cp [hl]

jr_016_5870:
    ld e, b
    ret z

    ld e, b
    jp $c358


    ld e, b
    ld [bc], a
    jr nz, @-$20

    rst $10
    rst $10

jr_016_587c:
    ld e, b
    pop hl
    ld e, b
    call c, $dc58
    ld e, b
    inc bc
    jr nz, jr_016_5864

    rst $10
    ldh a, [$58]
    ld a, [$f558]
    ld e, b
    push af
    ld e, b
    inc b
    jr nz, jr_016_5870

    rst $10
    add hl, bc
    ld e, c
    inc de
    ld e, c
    ld c, $59
    ld c, $59
    dec b
    jr nz, jr_016_587c

    rst $10
    ld [hl+], a
    ld e, c
    inc l
    ld e, c
    daa
    ld e, c
    daa
    ld e, c
    ld b, $40
    sbc $d7
    dec sp
    ld e, c
    ld b, l
    ld e, c
    ld b, b
    ld e, c
    ld b, b
    ld e, c
    rst $38
    ld [$6b21], sp
    ld e, b

jr_016_58b8:
    call Call_000_3168
    jp Jump_000_23d2


    rla
    cp c
    ld d, [hl]
    add hl, hl
    ld d, b
    rla
    call z, Call_000_2956
    ld d, b
    rla
    ld [c], a
    ld d, [hl]
    add hl, hl
    ld d, b
    ld [$7721], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    rrca
    ld d, a
    add hl, hl
    ld d, b
    rla
    add hl, hl
    ld d, a
    add hl, hl
    ld d, b
    rla
    ld [hl], $57
    add hl, hl
    ld d, b
    ld [$8321], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld d, a
    ld d, a
    add hl, hl
    ld d, b
    rla
    ld a, c
    ld d, a
    add hl, hl
    ld d, b
    rla
    adc d
    ld d, a
    add hl, hl
    ld d, b
    ld [$8f21], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    xor h
    ld d, a
    add hl, hl
    ld d, b
    rla
    add $57
    add hl, hl
    ld d, b
    rla
    rst $08
    ld d, a
    add hl, hl
    ld d, b
    ld [$9b21], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld de, $2958
    ld d, b
    rla
    ld l, $58
    add hl, hl
    ld d, b
    rla
    ld a, $58
    add hl, hl
    ld d, b
    ld [$a721], sp
    ld e, b
    call Call_000_3168
    jp Jump_000_23d2


    rla
    ld l, a
    ld e, b
    add hl, hl
    ld d, b
    rla
    ld a, [hl]
    ld e, b
    add hl, hl
    ld d, b
    rla
    sub c
    ld e, b
    add hl, hl
    ld d, b
    rla
    ret nz

    ld e, b
    add hl, hl
    ld d, b
    rla
    pop hl
    ld e, b
    add hl, hl
    ld d, b
    rla
    ld de, $2959
    ld d, b
    rla
    ld b, [hl]
    ld e, c
    add hl, hl
    ld d, b
    rla
    ld h, l
    ld e, c
    add hl, hl
    ld d, b
    call Call_000_3c29
    ld hl, $5986
    ld de, $5976
    ld a, [$d626]
    call Call_000_30fc
    ld [$d626], a
    ret


    or l

jr_016_5977:
    ld sp, $31e8
    ld de, $ab32
    ld e, c
    call nz, $dd59
    ld e, c
    or $59
    ei
    ld e, c
    ld bc, $e230
    rst $10
    or l
    ld e, c
    cp a
    ld e, c
    cp d
    ld e, c
    cp d
    ld e, c
    ld [bc], a
    jr nc, jr_016_5977

    rst $10
    adc $59
    ret c

    ld e, c
    db $d3
    ld e, c
    db $d3
    ld e, c
    inc bc
    ld b, b
    ld [c], a
    rst $10
    rst $20
    ld e, c
    pop af
    ld e, c
    db $ec
    ld e, c
    db $ec
    ld e, c
    rst $38
    ld [$8621], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $db
    ld e, l
    add hl, hl
    ld d, b
    rla
    dec bc
    ld e, [hl]
    add hl, hl
    ld d, b
    rla
    ld de, $295e
    ld d, b
    ld [$9221], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    daa
    ld e, [hl]
    add hl, hl
    ld d, b
    rla
    ld d, b
    ld e, [hl]
    add hl, hl
    ld d, b
    rla
    ld h, e
    ld e, [hl]
    add hl, hl
    ld d, b
    ld [$9e21], sp
    ld e, c
    call Call_000_3168
    jp Jump_000_23d2


    rla
    adc c
    ld e, [hl]
    add hl, hl
    ld d, b
    rla
    xor h
    ld e, [hl]
    add hl, hl
    ld d, b
    rla
    or e
    ld e, [hl]
    add hl, hl
    ld d, b
    rla
    rst $10
    ld e, [hl]
    add hl, hl
    ld d, b
    rla
    db $fd
    ld e, [hl]
    add hl, hl
    ld d, b
    db $10
    inc b
    inc b
    ld [hl], b
    ld e, h
    sub e
    ld e, d
    inc c
    ld e, d
    nop
    jr c, @+$5e

    call Call_000_3c29
    ld hl, $5a19
    ld a, [$d5f9]
    call Call_000_3d93
    ret


    dec e
    ld e, d
    dec hl
    ld e, d
    ld hl, $d492
    bit 7, [hl]
    call z, Call_016_5a44
    ld hl, $d492
    set 7, [hl]
    ret


    ld hl, $d492
    bit 7, [hl]
    call z, Call_016_5a39
    ld hl, $d492
    set 7, [hl]
    ret


Call_016_5a39:
    call Call_000_3e6d
    ldh a, [$d3]
    cp $19
    call c, Call_016_5a44
    ret


Call_016_5a44:
    ld a, [$d471]
    bit 7, a
    ret z

    ld hl, $4e73
    ld b, $3f
    call Call_000_3e84
    ret c

    ld a, $01
    ld [$d5f9], a
    xor a
    ld [$d527], a
    call Call_000_231c
    call Call_000_231c
    ld a, $00
    ld [$cd50], a
    ld a, $0f
    ld [$cd4f], a
    ld a, $4c
    call Call_000_3eb4
    ld hl, $5a8c
    call Call_000_159b
    ld a, $02
    ld [$c131], a
    xor a
    ld [$c139], a
    ld hl, $4f20
    ld b, $3f
    call Call_000_3e84
    call Call_000_153a
    ret


    nop
    ld h, $20
    jr nz, jr_016_5ab1

    ld e, $3f
    sbc a
    ld e, d
    rst $10
    ld e, d
    rrca
    ld e, e
    ld h, $5b
    dec a
    ld e, e
    inc sp
    ld e, h
    ld [$7021], sp
    rst $10
    bit 2, [hl]
    jr z, jr_016_5aaf

    ld hl, $5ad2
    call Call_000_3c36
    jr jr_016_5ac5

jr_016_5aaf:
    bit 7, [hl]

jr_016_5ab1:
    jr nz, jr_016_5abd

    set 6, [hl]
    ld hl, $5ac8
    call Call_000_3c36
    jr jr_016_5ac5

jr_016_5abd:
    res 7, [hl]
    ld hl, $5acd
    call Call_000_3c36

jr_016_5ac5:
    jp Jump_000_23d2


    rla
    cp b
    ld d, c
    dec hl
    ld d, b
    rla
    push hl
    ld d, c
    dec hl
    ld d, b
    rla
    rla
    ld d, d
    dec hl
    ld d, b
    ld [$7021], sp
    rst $10
    bit 2, [hl]
    jr z, jr_016_5ae7

    ld hl, $5b0a
    call Call_000_3c36
    jr jr_016_5afd

jr_016_5ae7:
    bit 6, [hl]
    jr nz, jr_016_5af5

    set 7, [hl]
    ld hl, $5b00
    call Call_000_3c36
    jr jr_016_5afd

jr_016_5af5:
    res 6, [hl]
    ld hl, $5b05
    call Call_000_3c36

jr_016_5afd:
    jp Jump_000_23d2


    rla
    ld [hl], h
    ld d, d
    dec hl
    ld d, b
    rla
    and h
    ld d, d
    dec hl
    ld d, b
    rla
    adc $52
    dec hl
    ld d, b
    ld [$2121], sp
    ld e, e
    call Call_000_3c36
    ld a, $04
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


    rla
    ld c, $53
    dec hl
    ld d, b
    ld [$3821], sp
    ld e, e
    call Call_000_3c36
    ld a, $3a
    call Call_000_118b
    call Call_000_373e
    jp Jump_000_23d2


    rla
    ld hl, $2b53
    ld d, b
    ld [$7021], sp
    rst $10
    bit 2, [hl]
    jr z, jr_016_5b59

    ld hl, $5c1f
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr z, jr_016_5ba3

    ld hl, $5c24
    jr jr_016_5b98

jr_016_5b59:
    ld a, [$d770]
    bit 1, a
    jr nz, jr_016_5b95

    ld hl, $5bfc
    call Call_000_3c36
    call Call_000_35ef
    ld a, [$cc26]
    and a
    jr nz, jr_016_5b90

    ld hl, $5c01
    call Call_000_3c36
    ld bc, $2d01
    call Call_000_3e3f
    jr nc, jr_016_5b8b

    ld hl, $5c06
    call Call_000_3c36
    ld hl, $d770
    set 1, [hl]
    jp Jump_000_23d2


jr_016_5b8b:
    ld hl, $5c1a
    jr jr_016_5b98

jr_016_5b90:
    ld hl, $5c10
    jr jr_016_5b98

jr_016_5b95:
    ld hl, $5c15

jr_016_5b98:
    push hl
    call Call_000_1e6f
    pop hl
    call Call_000_3c36
    jp Jump_000_23d2


jr_016_5ba3:
    call Call_000_3dd8
    call Call_000_0b06
    call Call_000_36ec
    ld a, $ff
    ld [$cfca], a
    ld a, $00
    ld [$d07c], a
    call Call_000_11c8
    jp nc, Jump_016_5bc7

    call Call_000_3dd8
    call Call_000_3dc2
    ld hl, $5c24
    jr jr_016_5b98

Jump_016_5bc7:
    xor a
    ld [$cfca], a
    ld hl, $d72f
    set 6, [hl]
    ld hl, $4e24
    ld b, $3a
    call Call_000_3e84
    ld hl, $d72f
    res 6, [hl]
    call Call_000_3dd8
    call Call_000_2f83
    call Call_000_3dc2
    call Call_000_36f8
    call Call_000_3ddb
    call Call_000_3de0
    ld hl, $5c2e
    ldh a, [$db]
    and a
    jr nz, jr_016_5b98

    ld hl, $5c29
    jr jr_016_5b98

    rla
    cpl
    ld d, e
    dec hl
    ld d, b
    rla
    adc $53
    dec hl
    ld d, b
    rla
    inc e
    ld d, l
    dec hl
    ld de, $3217
    ld d, l
    dec hl
    ld d, b
    rla
    or c
    ld d, l
    dec hl
    ld d, b
    rla
    ldh [rHDMA5], a
    dec hl
    ld d, b
    rla
    ld hl, $2b56
    ld d, b
    rla
    ld [hl], $56
    dec hl
    ld d, b
    rla
    jp nz, $2b56

    ld d, b
    rla
    db $e3
    ld d, [hl]
    dec hl
    ld d, b
    rla
    pop af
    ld d, [hl]
    dec hl
    ld d, b
    rla
    db $10
    ld d, a
    dec hl
    ld d, b
    dec c
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $07ff
    inc bc
    ld bc, $00ff
    ld b, $2f
    rlca
    ld a, [bc]
    rst $38
    jp nc, Jump_000_0d01

    rlca
    dec b
    rst $38
    db $d3
    ld [bc], a
    ld b, e
    ld [$ff0a], sp
    jp nc, Jump_000_3c03

    ld [$ff05], sp
    db $d3
    inc b
    db $10
    dec b
    rlca
    rst $38
    ret nc

    dec b
    ld a, [hl+]
    dec b
    add hl, bc
    rst $38
    ret nc

    ld b, $12
    rst $00
    rlca
    ld [bc], a
    ld [de], a
    rst $00
    rlca
    inc bc
    rla
    ld [de], a
    inc de
    ld d, $19
    db $10
    ld de, $180f
    inc d
    dec d
    ld a, [de]
    inc bc
    inc c
    inc bc
    inc bc
    ld d, $09
    rrca
    ld h, e
    ld e, [hl]
    ld hl, $8c5d
    ld e, h
    nop
    ld bc, $cd5e
    and d
    ld e, h
    call Call_000_3c29
    ld hl, $5d2b
    ld de, $5d1b
    ld a, [$d642]
    call Call_000_30fc
    ld [$d642], a
    ret


    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5cd9
    call Call_016_5cde
    call Call_016_5d0a
    ld a, [$d825]
    bit 5, a
    jr nz, jr_016_5cc9

    push af
    ld a, $54
    ld [$d09e], a
    ld bc, $0202
    ld a, $17
    call Call_000_3eb4
    pop af

jr_016_5cc9:
    bit 6, a
    ret nz

    ld a, $54
    ld [$d09e], a
    ld bc, $0502
    ld a, $17
    jp Jump_000_3eb4


    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    rst $38

Call_016_5cde:
    push hl
    ld hl, $d73e
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    xor a
    ldh [$e0], a
    pop hl

jr_016_5cea:
    ld a, [hl+]
    cp $ff
    jr z, jr_016_5d06

    push hl
    ld hl, $ffe0
    inc [hl]
    pop hl
    cp b
    jr z, jr_016_5cfb

    inc hl
    jr jr_016_5cea

jr_016_5cfb:
    ld a, [hl+]
    cp c
    jr nz, jr_016_5cea

    ld hl, $d73e
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_016_5d06:
    xor a
    ldh [$e0], a
    ret


Call_016_5d0a:
    ld hl, $d825
    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_016_5d18

    set 5, [hl]
    ret


jr_016_5d18:
    set 6, [hl]
    ret


    or l
    ld sp, $31e8
    ld de, $5c32
    ld e, l
    sbc l
    ld e, l
    and a
    ld e, l
    or c
    ld e, l
    cp e
    ld e, l
    ld [bc], a
    jr nc, jr_016_5d52

    ret c

    push bc
    ld e, l
    rst $08
    ld e, l
    jp z, $ca5d

    ld e, l
    inc bc
    ld b, b
    inc h
    ret c

    call nc, $de5d
    ld e, l
    reti


    ld e, l
    reti


    ld e, l
    inc b
    jr nc, jr_016_5d6a

    ret c

    db $e3
    ld e, l
    db $ed
    ld e, l
    add sp, $5d
    add sp, $5d
    dec b
    jr nc, @+$26

jr_016_5d52:
    ret c

    ld a, [c]
    ld e, l
    db $fc
    ld e, l
    rst $30
    ld e, l
    rst $30
    ld e, l
    rst $38
    ld [$25fa], sp
    ret c

    bit 7, a
    jr nz, jr_016_5d7f

    ld hl, $5d88
    call Call_000_3c36

jr_016_5d6a:
    ld bc, $ec01
    call Call_000_3e3f
    ld hl, $5d98
    jr nc, jr_016_5d82

    ld hl, $d825
    set 7, [hl]
    ld hl, $5d8d
    jr jr_016_5d82

jr_016_5d7f:
    ld hl, $5d93

jr_016_5d82:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    ld a, [hl-]
    ld h, l
    ld h, $50
    rla
    and b
    ld h, l
    ld h, $0b
    ld d, b
    rla
    xor a
    ld h, l
    ld h, $50
    rla
    ld [bc], a
    ld h, [hl]
    ld h, $50
    ld [$2b21], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$3721], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$4321], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    ld [$4f21], sp
    ld e, l
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc h
    ld h, [hl]
    ld h, $50
    rla
    ld b, b
    ld h, [hl]
    ld h, $50
    rla
    ld h, d
    ld h, [hl]
    ld h, $50
    rla
    adc d
    ld h, [hl]
    ld h, $50
    rla
    xor c
    ld h, [hl]
    ld h, $50
    rla
    or [hl]
    ld h, [hl]
    ld h, $50
    rla
    rst $10
    ld h, [hl]
    ld h, $50
    rla
    push af
    ld h, [hl]
    ld h, $50
    rla
    db $fd
    ld h, [hl]
    ld h, $50
    rla
    ld b, l
    ld h, a
    ld h, $50
    rla
    ld l, b
    ld h, a
    ld h, $50
    rla
    ld [hl], e
    ld h, a
    ld h, $50
    ld l, $07
    nop
    jr jr_016_5e08

    or l
    nop

jr_016_5e08:
    ld a, [de]
    nop
    ret nc

    nop
    inc d
    nop
    db $ec
    inc bc
    inc bc
    ld b, $d0
    inc bc
    dec c
    inc b
    push de
    rrca
    dec de
    dec b
    push de
    rrca
    add hl, bc
    inc b
    db $d3
    nop
    dec b
    dec de
    dec b
    ld c, $ff
    pop de
    ld bc, $1020
    add hl, bc
    rst $38
    ret nc

    ld b, d
    db $e4
    ld [bc], a
    jr nz, jr_016_5e42

    inc e
    rst $38
    jp nc, $e443

    inc bc
    jr jr_016_5e48

    inc d
    rst $38
    pop de
    ld b, h
    and $17
    jr jr_016_5e4c

    inc e

jr_016_5e42:
    rst $38
    pop de
    ld b, l
    and $18
    ld a, [bc]

jr_016_5e48:
    rst $00
    nop
    jr jr_016_5e57

jr_016_5e4c:
    rst $00
    nop
    ld a, [de]
    ld [$00c7], sp
    inc d
    inc d
    rst $00
    inc bc
    inc bc

jr_016_5e57:
    add hl, de
    rst $00
    inc bc
    dec c
    sbc [hl]
    rst $00
    rrca
    dec de
    sub l
    rst $00
    rrca
    add hl, bc
    ld b, b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld b, d
    dec a
    dec a
    dec a
    dec a
    ld a, h
    dec a
    inc h
    ld a, l
    ld a, $44
    cpl
    ld c, $0e
    ld c, $46
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, b
    ld h, e
    ld c, $67
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld b, c
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $46
    ld b, h
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, e
    ld c, $7b
    add hl, bc
    ld b, b
    ld h, c
    ld h, c
    ld h, d
    ld b, b
    ld h, e
    ld c, $67
    ld b, c
    ld b, d
    ld c, $36
    ld c, $36
    add hl, bc
    ld d, l
    ld c, $0e
    ld h, [hl]
    ld b, h
    ld a, e
    ld c, $0b
    dec bc
    ld b, [hl]
    ld c, $36
    ld c, $36
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    scf
    ld c, $0e
    cpl
    ld b, [hl]
    ld c, $37
    ld c, $37
    ld c, $59
    ld b, a
    cpl
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld d, $09
    rrca
    ld b, c
    ld h, b
    ld e, a
    ld e, a
    or $5e
    nop
    ret nc

    ld e, a
    call Call_016_5f0c
    call Call_000_3c29
    ld hl, $5f67
    ld de, $5f59
    ld a, [$d643]
    call Call_000_30fc
    ld [$d643], a
    ret


Call_016_5f0c:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $5f43
    call Call_016_5cde
    call $5f48
    ld a, [$d827]
    bit 0, a
    jr nz, jr_016_5f33

    push af
    ld a, $5f
    ld [$d09e], a
    ld bc, $0404
    ld a, $17
    call Call_000_3eb4
    pop af

jr_016_5f33:
    bit 1, a
    ret nz

    ld a, $5f
    ld [$d09e], a
    ld bc, $0408
    ld a, $17
    jp Jump_000_3eb4


    inc b
    inc b
    inc b
    ld [$21ff], sp
    daa
    ret c

    ldh a, [$e0]
    and a
    ret z

    cp $01
    jr nz, jr_016_5f56

    set 0, [hl]
    ret


jr_016_5f56:
    set 1, [hl]
    ret


    or l
    ld sp, $31e8
    ld de, $8032
    ld e, a
    sbc [hl]
    ld e, a
    or a
    ld e, a
    rst $28
    inc hl
    ld [bc], a
    jr nz, @+$28

    ret c

    xor b
    ld e, a
    or d
    ld e, a
    xor l
    ld e, a
    xor l
    ld e, a
    inc bc
    jr nc, @+$28

    ret c

    pop bc
    ld e, a
    bit 3, a
    add $5f
    add $5f
    rst $38
    ld [$37fa], sp
    ret c

    bit 7, a
    ld hl, $5f99
    jr nz, jr_016_5f8e

    ld hl, $5f94

jr_016_5f8e:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    sbc a
    ld h, a
    ld h, $50
    rla
    call nz, Call_000_2667
    ld d, b
    ld [$6721], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    db $e4
    ld h, a
    ld h, $50
    rla
    nop
    ld l, b
    ld h, $50
    rla
    inc c
    ld l, b
    ld h, $50
    ld [$7321], sp
    ld e, a
    call Call_000_3168
    jp Jump_000_23d2


    rla
    add hl, sp
    ld l, b
    ld h, $50
    rla
    ld l, e
    ld l, b
    ld h, $50
    rla
    ld a, a
    ld l, b
    ld h, $50
    ld l, $0a
    nop
    ld a, [de]
    ld bc, $00cf
    jr jr_016_5fd9

jr_016_5fd9:
    pop de
    nop
    inc d
    nop
    db $ec
    dec bc
    rla
    add hl, bc
    ret nc

    inc bc
    inc bc
    dec b
    jp nc, Jump_000_030f

    ld b, $d2
    inc bc
    dec de
    inc bc
    rst $08
    dec bc
    inc bc
    inc bc
    jp hl


    dec bc
    dec bc
    inc b
    call nc, Call_000_1b0f
    inc bc
    ret nc

jr_016_5ffa:
    nop
    inc b
    inc l
    inc c
    inc e
    rst $38
    rst $38
    ld bc, $0b18
    jr @+$01

    jp nc, $e642

    add hl, de
    jr nz, jr_016_6019

    dec bc
    rst $38
    ret nc

    ld b, e
    db $e4
    inc b
    ld b, a
    add hl, bc
    inc c
    rst $38
    rst $38
    add h
    ld [de], a

jr_016_6019:
    dec bc
    rst $00
    nop
    ld a, [de]
    ld a, [bc]
    rst $00
    nop
    jr jr_016_602a

    rst $00
    nop
    inc d
    ld [hl], d
    rst $00
    dec bc
    rla
    inc d

jr_016_602a:
    rst $00
    inc bc
    inc bc
    sub d
    rst $00
    rrca
    inc bc
    jr nz, jr_016_5ffa

    inc bc
    dec de
    ld l, b
    rst $00
    dec bc
    inc bc
    ld l, h
    rst $00
    dec bc
    dec bc
    sbc [hl]
    rst $00
    rrca
    dec de
    inc a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld a, h
    dec a
    ld a, l
    inc h
    ld a, $44
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2f
    ld b, [hl]
    ld h, b
    ld h, c
    ld h, c
    ld b, c
    ld b, d
    ld h, c
    ld b, c
    ld h, c
    ld b, d
    ld c, $5a
    ld h, c
    ld h, c
    ld h, c
    ld h, d
    ld h, h
    ld c, $34
    ld c, $56
    ld c, $0e
    ld c, $56
    ld c, $56
    ld c, $0e
    ld c, $66
    ld b, h
    ld c, $36
    ld c, $0e
    ld c, $47
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, a
    ld b, [hl]
    ld b, h
    cpl
    scf
    ld c, $5a
    cpl
    ld c, $0e
    ld e, d
    ld c, $5a
    cpl
    ld b, e
    ld b, e
    ld b, [hl]
    ld d, b
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, $56
    ld c, c
    ld c, c
    ld c, c
    ld d, c
    ld b, h
    cpl
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $2f
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld d, $09
    ld [$61f5], sp
    ld hl, $d461
    ld h, b
    nop
    sub [hl]
    ld h, c
    call Call_016_60ea
    call Call_000_3c29
    ld hl, $612d
    ld de, $611b
    ld a, [$d657]
    call Call_000_30fc
    ld [$d657], a
    ret


Call_016_60ea:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld hl, $610e
    call Call_016_5cde
    call Call_016_6111
    ld a, [$d835]
    bit 0, a
    ret nz

    ld a, $54
    ld [$d09e], a
    ld bc, $0405
    ld a, $17
    jp Jump_000_3eb4


    inc b
    dec b
    rst $38

Call_016_6111:
    ldh a, [$e0]
    and a
    ret z

    ld hl, $d835
    set 0, [hl]
    ret


    or l
    ld sp, $31e8
    ld de, $4632
    ld h, c
    ld d, b
    ld h, c
    ld e, d
    ld h, c
    rst $28
    inc hl
    rst $28
    inc hl
    rst $28
    inc hl
    ld bc, $3430
    ret c

    ld a, b
    ld h, c
    add d
    ld h, c
    ld a, l
    ld h, c
    ld a, l
    ld h, c
    ld [bc], a
    ld b, b
    inc [hl]
    ret c

    add a
    ld h, c
    sub c
    ld h, c
    adc h
    ld h, c
    adc h
    ld h, c
    rst $38
    ld [$2d21], sp
    ld h, c
    call Call_000_3168
    jp Jump_000_23d2


    ld [$3921], sp
    ld h, c
    call Call_000_3168
    jp Jump_000_23d2


    ld [$37fa], sp
    ret c

    bit 7, a
    ld hl, $6173
    jr nz, jr_016_6168

    ld hl, $616e

jr_016_6168:
    call Call_000_3c36
    jp Jump_000_23d2


    rla
    jr nz, jr_016_61ea

    ld h, $50
    rla
    inc [hl]
    ld a, c
    ld h, $50
    rla
    ld e, b
    ld a, c
    ld h, $50
    rla
    adc b
    ld a, c
    ld h, $50
    rla
    sub l
    ld a, c
    ld h, $50
    rla
    ret z

    ld a, c
    ld h, $50
    rla
    push hl
    ld a, c
    ld h, $50
    rla
    ld sp, hl
    ld a, c
    ld h, $50
    ld l, $06
    nop
    ld [$e900], sp
    nop
    ld a, [bc]
    nop
    db $eb
    nop
    inc c
    nop
    db $ec
    dec bc
    add hl, bc
    inc bc
    pop de
    rrca
    dec c
    dec b
    pop de
    rlca
    dec c
    ld b, $d1
    nop
    ld b, $18
    dec c
    dec b
    rst $38
    db $d3
    ld b, c
    and $27
    jr nz, jr_016_61c2

    ld c, $ff
    jp nc, $e442

    dec bc

jr_016_61c2:
    dec de
    inc de
    dec c
    cp $00
    inc bc
    ld b, a
    db $10
    ld b, $ff
    rst $38
    add h
    ld [c], a
    ld b, a
    ld [de], a
    ld [$ffff], sp
    add l
    jr z, jr_016_621e

    rrca
    add hl, bc
    rst $38
    rst $38
    add [hl]
    ld h, $fb
    add $00
    ld [$c6fc], sp
    nop
    ld a, [bc]
    db $fd
    add $00
    inc c
    ld b, c

jr_016_61ea:
    rst $00
    dec bc
    add hl, bc
    ld e, a
    rst $00
    rrca
    dec c
    daa
    rst $00
    rlca
    dec c
    inc a
    dec a
    dec a
    dec a
    inc h
    ld a, l
    ld a, h
    ld a, $44
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, [hl]
    ld b, h
    ld c, $0e
    ld e, d
    ld h, e
    ld c, $67
    ld b, d
    ld b, h
    ld c, $0e
    ld b, [hl]
    dec c
    ld c, $2f
    ld b, [hl]
    ld b, b
    ld a, [hl+]
    dec hl
    ld b, d
    ld h, e
    ld c, $67
    ld b, d
    ld b, h

jr_016_621e:
    dec [hl]
    jr jr_016_6267

    cpl
    ld c, $7b
    ld b, [hl]
    ld b, h
    ld e, $35
    ld b, [hl]
    ld c, $7b
    scf
    ld b, [hl]
    ld b, h
    ld a, [bc]
    ld e, $46
    ld c, $37
    cpl
    ld b, [hl]
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    dec b
    dec c
    dec c
    add h
    ld h, e
    jr nc, @+$65

    ld c, c
    ld h, d
    nop
    ld h, b
    ld h, e
    call Call_016_625f
    call Call_000_3c29
    ld hl, $6332
    ld de, $6295
    ld a, [$d652]
    call Call_000_30fc
    ld [$d652], a
    ret


Call_016_625f:
Jump_016_625f:
    ld hl, $d125
    bit 5, [hl]
    res 5, [hl]
    ret z

jr_016_6267:
    ld a, [$d865]
    bit 7, a
    jr nz, jr_016_6275

    ld a, $31
    ld b, $32
    jp Jump_016_6279


jr_016_6275:
    ld a, $72
    ld b, $73

Jump_016_6279:
    push bc
    ld [$d09e], a
    ld bc, $0602
    call Call_016_628b
    pop bc
    ld a, b
    ld [$d09e], a
    ld bc, $0603

Call_016_628b:
    ld a, $17
    jp Jump_000_3eb4


Jump_016_6290:
    xor a
    ld [$d652], a
    ret


    and b
    ld h, d
    add sp, $31
    db $e4
    ld h, d
    dec e
    ld h, e
    sbc a
    ld h, d
    ret


    ld a, [$d865]
    bit 6, a
    ret nz

    ld hl, $62d9
    call Call_000_34bc
    jp nc, Jump_000_31b5

    xor a
    ldh [$b4], a
    ld a, [$cd3d]
    cp $03
    jr nc, jr_016_62c0

    ld a, $01
    ldh [$8c], a
    jp Jump_000_2817


jr_016_62c0:
    cp $05
    jr z, jr_016_62f6

    ld hl, $d865
    bit 7, [hl]
    set 7, [hl]
    ret nz

    ld hl, $d125
    set 5, [hl]
    ld a, $ad
    call Call_000_2238
    jp Jump_016_625f


    ld bc, $0205
    ld b, $0b
    dec b
    dec bc
    ld b, $10
    jr @+$01

    call Call_000_3211
    ld a, [$d056]
    cp $ff
    jp z, Jump_016_6290

    ld a, $01
    ldh [$8c], a
    jp Jump_000_2817


jr_016_62f6:
    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $6314
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld a, $03
    ld [$d652], a
    ld [$da38], a
    ret


    ld b, b
    dec c
    jr nz, @+$0e

    add b
    rlca
    jr nz, jr_016_6322

    rst $38
    ld a, [$cd38]
    and a
    ret nz

jr_016_6322:
    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    ld [$d652], a
    ld [$da38], a
    ret


    ccf
    ld h, e
    ld bc, $6500
    ret c

    ld c, c
    ld h, e
    ld d, e
    ld h, e
    ld c, [hl]
    ld h, e
    ld c, [hl]
    ld h, e
    rst $38
    ld [$3221], sp
    ld h, e
    call Call_000_3168
    jp Jump_000_23d2


    rla
    inc [hl]
    ld c, [hl]
    daa
    ld d, b
    rla
    ld e, l
    ld c, a
    daa
    ld d, b
    rla
    sub a
    ld c, a
    daa
    ld [$6521], sp
    ret c

    set 6, [hl]
    jp Jump_000_23d2


    inc bc
    inc bc
    db $10
    jr jr_016_6367

    rst $30
    nop

jr_016_6367:
    dec b
    nop
    ld a, b
    nop
    ld b, $00
    ld a, b
    nop
    ld bc, $051e
    ld a, [bc]
    rst $38
    ret nc

    ld b, c
    rst $30
    ld bc, $c7a0
    db $10

jr_016_637b:
    jr jr_016_637b

    add $00
    dec b
    rst $38
    add $00
    ld b, $49
    ld bc, $3231
    ld bc, $034a
    inc bc
    inc bc
    ld c, c
    ld sp, $4a32
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    ld d, d
    ld sp, $6f32
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, e
    ld [hl-], a
    dec b
    dec b
    ld sp, $034c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, d
    ld d, [hl]
    ld [hl], d
    ld [hl], e
    ld c, [hl]
    ld l, a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    inc bc
    inc bc
    inc bc
    ld c, c
    ld bc, $0101
    ld c, d
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    inc bc
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    dec b
    ld [hl], b
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    inc bc
    inc bc
    inc bc
    ld c, e
    ld d, e
    ld b, [hl]
    ld b, [hl]
    ld l, a
    inc bc
    ld c, e
    dec b
    dec b
    ld c, h
    inc bc
    inc bc
    inc bc
    ld c, e
    ld c, h
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, e
    dec b
    dec b
    ld d, l
    ld c, b
    ld c, b
    ld c, b
    ld e, e
    ld c, h
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, d
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld l, a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    dec b
    ld h, $65
    dec b
    ld h, l
    add hl, sp
    ld h, h
    nop
    inc c
    ld h, l
    call Call_000_3c29
    ld hl, $644d
    ld a, [$d64a]
    jp Jump_000_3d93


    xor a
    ld [$cd6b], a
    ld [$d64a], a
    ret


    xor b
    ld h, h
    add $64
    ld d, [hl]
    ld h, h
    ld d, l
    ld h, h
    ret


    call Call_000_3ddb
    ld a, [$d357]
    push af
    xor a
    ld [$cd6b], a
    ld a, $55
    call Call_000_3eb4
    pop af
    ld [$d357], a
    ld hl, $d732
    res 1, [hl]
    inc hl
    set 0, [hl]
    xor a
    ld hl, $d64c
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d652], a
    ld [$d64a], a
    ld hl, $d862
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$d64a], a
    ld a, $00
    ld [$d718], a
    ld b, $1c
    ld hl, $7b91
    call Call_000_3e84
    ld b, $05

jr_016_649a:
    ld c, $78
    call Call_000_372f
    dec b
    jr nz, jr_016_649a

    call Call_000_3852
    jp Jump_000_1d10


    ld a, $ff
    ld [$cd6b], a
    ld hl, $ccd3
    ld de, $64c3
    call Call_000_3509
    dec a
    ld [$cd38], a
    call Call_000_3415
    ld a, $01
    ld [$d64a], a
    ret


    ld b, b
    dec b
    rst $38
    ld a, [$cd38]
    and a
    ret nz

    ld a, $01
    ld [$d527], a
    ld a, $01
    ldh [$8c], a
    call Call_000_353e
    ld a, $08
    ldh [$8d], a
    call Call_000_3488
    call Call_000_3ddb
    xor a
    ld [$cd6b], a
    inc a
    ld [$d527], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2817
    ld a, $ff
    ld [$cd6b], a
    ld a, $09
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4
    ld a, $02
    ld [$d64a], a
    ret


    rlca
    ld h, l
    rla
    xor [hl]
    ld d, b
    daa
    ld d, b
    inc bc
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    ld a, b
    rlca
    dec b
    inc bc
    ld a, b
    nop
    ld bc, $0603
    add hl, bc
    rst $38
    ret nc

    ld bc, $c717
    rlca
    inc b
    rla
    rst $00
    rlca
    dec b
    inc d
    inc d
    ld h, l
    inc d
    inc d
    jr @+$1a

    scf
    jr jr_016_6548

    jr jr_016_654a

    jr jr_016_654c

    jr @+$1a

    jr jr_016_65a4

    jr jr_016_6552

    ld hl, $6552

jr_016_653d:
    ld a, [hl+]
    ldh [$db], a
    and a
    ret z

    push hl
    ld b, a
    call Call_000_3422
    pop hl

jr_016_6548:
    jr z, jr_016_653d

jr_016_654a:
    ld b, $05

jr_016_654c:
    ld hl, $7dbb
    jp Jump_000_3e84


jr_016_6552:
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_65a4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_73d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_7bd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_016_7fd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
