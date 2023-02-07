; disasSembly of "yell.gbc"
SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    daa
    ld [de], a
    ld a, a
    ld a, a
    ld [bc], a
    cp a
    ld bc, $016f
    cp $68
    nop
    nop
    ld a, [de]
    ld b, $07
    rst $38

jr_037_4011:
    rst $38
    cp $e4
    ld bc, $0000
    inc bc
    rst $38
    rst $38
    ldh a, [$38]
    nop
    dec c
    rst $38
    ld b, $30
    ret nz

    ld c, $7f
    ret nz

    adc $38
    ld b, c
    rst $18
    pop hl
    adc h
    ld [hl], b
    ld [hl], e
    sbc a
    inc bc
    jr jr_037_4011

    rst $20
    ld a, [hl]
    inc c
    ld h, e
    add e
    sbc l
    ldh [$73], a
    adc h
    ld a, h
    rst $38
    ld bc, $638c

jr_037_403f:
    rst $20
    db $fd
    inc c
    ld h, c
    sbc a
    cp a
    ld hl, sp+$31
    adc h
    ld a, a
    rst $38
    pop bc
    adc h
    ld h, e
    rst $38
    rst $38
    ld b, $31
    sbc [hl]
    rst $38
    ld hl, sp+$31
    adc [hl]
    di
    rst $38
    ret nz

    add $3b
    rst $18
    or $06
    ld sp, $f7de
    sub b
    ld sp, $f78e
    sbc h
    add c
    adc h
    ld [hl], a
    add hl, sp
    call z, Call_037_670c
    cp e
    adc $60
    ld h, e
    dec a
    sbc $72
    inc bc
    add hl, sp
    call c, $10f3
    add hl, de
    adc [hl]
    rst $20
    sbc b
    add c
    adc h
    ld [hl], a
    ld a, h
    call z, Call_037_630c
    cp e
    add $60
    ld h, e
    add hl, de
    sbc $33
    inc bc
    add hl, de
    call z, $98f3
    add hl, de
    adc $e7
    sbc b
    add b
    call z, $3877
    call z, Call_037_670c

jr_037_409b:
    inc sp

jr_037_409c:
    adc $40
    ld h, [hl]
    dec sp
    sbc h
    ld h, d
    ld b, $33
    cp c
    and $20
    inc sp
    add hl, de
    sbc $32
    inc bc
    add hl, sp
    call c, $30e3
    ld sp, $cf9d
    ld sp, $1803
    call z, $90f3
    add hl, de
    adc h
    rst $20
    jr jr_037_403f

    sbc h
    xor $71
    sub b
    add hl, de
    adc $e7
    sbc c
    add c
    adc h
    xor $79
    sbc b
    jr jr_037_409b

    rst $20
    sbc c
    ld bc, $ee8c
    ld a, c
    adc b
    jr jr_037_409c

    rst $20
    sbc h
    ld bc, $6f8c
    ld a, c
    ret nz

    ld [$f7c6], sp
    sbc h
    nop
    adc h
    ld l, a
    ld a, c
    ret nc

    inc c
    add $77
    sbc h
    add b
    call z, Call_037_7c77
    ret z

    inc c
    rst $20
    ld [hl], a
    call z, $ce80
    ld [hl], a
    ld a, h
    ret z

    inc c
    rst $20
    ld [hl], a
    call z, $ce80
    ld [hl], a
    ld a, h
    ret z

    inc c
    ld h, a
    ld [hl], a
    call z, $c680
    ld [hl], a
    ld a, h
    ret z

    inc b
    ld h, a
    ld [hl], a
    call z, Call_037_4680
    ld [hl], a
    ld a, h
    ret z

    ld b, $67
    inc sp
    db $ec
    ret nz

    ld h, [hl]
    ld a, a
    ld a, [hl]
    ld c, h
    ld [bc], a
    scf
    cp a
    and $40
    inc hl
    ld a, e
    cp [hl]
    ld h, h
    inc bc
    inc sp
    rst $18
    ld a, [c]
    ld h, b
    ld sp, $ffbd
    ld h, $01
    dec de
    db $dd
    di
    ld h, b
    ld de, $dfbd
    ld [hl], $01
    sbc c
    db $ed
    cp e
    jr nz, jr_037_4156

    sbc a
    db $db
    or [hl]
    ld bc, $fd99
    cp e
    jr nz, jr_037_415f

    sbc a
    db $db
    or d
    ld bc, $fd99
    or e
    ld h, b
    ld de, $fbbf
    ld h, $03
    dec de
    rst $38
    ld a, [c]

jr_037_4156:
    ld h, b
    inc sp
    ccf
    cp a
    ld h, [hl]
    ld [bc], a
    scf
    rst $38
    db $e4

jr_037_415f:
    ld b, b
    ld h, a
    ld a, a
    ld a, [hl]
    ret z

    inc c
    ld l, a
    db $fd
    call z, $cc80
    rst $38
    reti


    sub b
    add hl, de
    sbc a
    db $db
    cp b
    inc bc
    dec sp
    rst $38
    or $00
    ld h, a
    ld a, a
    ld l, [hl]
    ld h, b
    inc c
    set 5, a
    call c, Call_000_1b01
    ld a, h
    di
    and b
    ld h, e
    ld a, a
    sbc [hl]
    ld h, h
    inc c
    db $db
    db $e3
    sbc l
    inc bc
    ld a, [de]
    db $fc
    ld [hl], e
    jr nz, jr_037_41d7

    rst $18
    inc a
    add sp, $11
    or a
    rst $08
    ld a, [hl-]
    ld b, $6d
    ld sp, hl
    adc $01
    dec de
    ld a, [hl]
    ld [hl], c
    add b
    ld b, [hl]
    rst $18
    inc e
    ret nz

    ld sp, $ceb7
    inc e
    ld [$f3fb], sp

jr_037_41ac:
    add e
    ld b, $3e
    db $fc
    pop bc
    add c
    rra
    ld a, [hl]
    ld [hl], b
    ld h, b
    rst $00
    rst $18
    jr jr_037_41ea

    inc sp
    rst $20
    adc $0c
    ld [$f3fb], sp
    add e
    inc bc
    ld [hl], $f8
    ld [c], a
    pop bc
    adc l
    cp a
    jr c, jr_037_41eb

    inc hl
    ld l, a
    adc $0c
    jr jr_037_41ac

    di
    add d
    ld b, $3e
    ld hl, sp-$1f

jr_037_41d7:
    pop bc
    sbc a
    ld a, $70
    ld h, b
    rst $00
    rst $18
    sbc h
    db $10
    ld h, e
    rst $28
    adc $0c
    ld de, $e7f3
    ld [bc], a
    inc c
    ld a, l

jr_037_41ea:
    ld sp, hl

jr_037_41eb:
    add e
    ld b, $3e
    db $fc
    ldh [$c1], a
    sbc a
    ld a, $30
    jr nz, @-$37

    rst $18
    sbc h
    jr jr_037_422b

jr_037_41fa:
    rst $20
    adc $04
    jr jr_037_41fa

    di
    add e
    ld b, $3c
    ld hl, sp-$40
    add e
    dec de
    ld a, $70
    ld h, b
    rst $00
    rst $18
    jr jr_037_423e

    ld h, e

jr_037_420f:
    rst $20
    adc $0c
    jr jr_037_420f

    db $e3
    ld [bc], a
    inc c
    ld a, l
    ld sp, hl
    pop bc
    add e
    rra
    ld a, [hl]
    ld [hl], h
    ld b, b
    rst $00
    sbc a
    jr @+$32

    inc hl
    ld h, a
    adc $0c
    jr @-$05

    di
    add e

jr_037_422b:
    ld b, $3e
    db $fc
    jp hl


    pop bc
    adc a
    ld a, $38
    ld h, b
    ld h, e
    rst $08
    adc h
    jr jr_037_4251

    di
    db $e3
    ld b, $06
    inc a

jr_037_423e:
    ld hl, sp-$3f
    add c
    adc a
    ld a, $70
    ld h, b
    ld h, e
    rst $08
    sbc [hl]
    jr jr_037_4262

    di
    db $e3
    add [hl]
    ld b, $36
    ld hl, sp-$1f

jr_037_4251:
    ret nz

    call Call_000_3c9e
    jr nc, jr_037_4288

    and a
    rst $00
    inc c
    ld b, $6c
    ld sp, hl
    pop hl
    add c
    adc l
    cp [hl]
    add hl, sp

jr_037_4262:
    ld [hl], b
    ld sp, $cfb7
    ld l, $04
    ld l, h
    db $fd
    jp hl


    add b
    adc l
    sbc a
    cp c
    jr nc, jr_037_4282

    or a
    rst $20
    ld l, $06
    ld [hl], $fc
    db $e4
    ret nz

    adc $df
    inc e
    sbc b
    add hl, de
    db $db
    rst $38
    sub e
    inc bc

jr_037_4282:
    ld [hl-], a
    ld a, [hl]
    ld [hl], d
    ld h, b
    ld h, [hl]
    ld l, a

jr_037_4288:
    sbc $4c
    inc c
    ret


    pop af
    ret


    add c
    sbc c
    ld a, $f9
    ld [hl], b
    inc sp
    daa
    rst $30
    ld h, $06
    ld h, [hl]
    rst $38
    db $e4
    ret nz

jr_037_429c:
    add $df
    call c, Call_000_0898
    db $db
    ei
    sub e
    ld bc, $3f9b
    dec sp
    ld [hl], b
    inc sp
    or a
    rst $38
    ld h, $02
    ld [hl], $7e
    ld h, h
    ret nz

    ld h, [hl]
    ld c, a
    adc $4c
    inc b
    ld l, l
    db $fc
    ret


    add b
    call $9c9f
    sbc b
    jr jr_037_429c

    ei
    sub e
    ld bc, $3f1b
    cp e
    jr nc, jr_037_42fc

    or a
    rst $30
    ld h, $02
    ld [hl], $7e
    ld h, h
    ret nz

    ld h, [hl]
    rst $08
    adc $4c
    inc c
    db $ed
    db $fd
    ret


    add b
    adc l
    cp a
    sbc c
    jr nc, jr_037_42f0

    or e
    di
    add e
    inc bc
    ld [hl], $7e
    ld [hl], d
    ld h, b
    ld h, e
    ld l, a
    xor $4c
    inc b
    ld l, h
    db $fc
    ret nz

    add b

jr_037_42f0:
    adc l
    sbc a
    sbc h
    jr jr_037_430e

    or e
    ei
    add e
    inc bc
    dec de
    ld a, a
    ld [hl], d

jr_037_42fc:
    ld h, b
    inc hl
    ld l, a
    and $0c
    inc b
    ld l, h
    cp $e0
    ret nz

    adc $9f
    call z, Call_000_0898
    db $db
    ld sp, hl
    sub c

jr_037_430e:
    ld bc, $3f9b
    cp c
    jr nc, jr_037_4345

    and a
    rst $30
    ld h, $02
    ld [hl], $7e
    ld h, b
    ld h, b
    ld h, [hl]
    rst $08
    ld l, [hl]
    ld c, h
    inc c
    ld l, l
    db $fc
    ret


    add b
    adc l
    sbc [hl]
    reti


    jr jr_037_4343

    or e
    ei
    sub e
    inc bc
    dec de
    ld a, l
    ld [hl-], a
    ld h, b
    inc hl
    ld h, a
    or a
    ld h, $06
    ld h, h
    or $e4
    ret nz

    ld b, [hl]
    rst $08
    call z, $0c18
    reti


    db $ed
    ret


jr_037_4343:
    add c
    adc l

jr_037_4345:
    ccf
    sbc c
    jr nc, jr_037_435a

    or a
    ei
    ld b, $03
    ld [hl], $7f
    ld [hl], b
    ld h, b
    ld h, e
    ld c, a
    xor $4c
    inc b
    ld l, l
    db $fc
    pop bc
    add b

jr_037_435a:
    adc l
    sbc [hl]
    call c, $1898
    db $db
    ld sp, hl
    sub e
    ld bc, $3d1b
    cp b
    ld [hl], b
    inc sp
    and a
    di
    ld h, $02
    ld [hl], $7b
    ld [hl], b
    ld h, b
    ld h, a
    ld l, a
    and $4c
    ld b, $6c
    or $e4
    ret nz

    ld b, [hl]
    rst $18
    call z, $0c9c
    db $ed
    db $ec
    ret


    add b
    call $dc9f
    sbc b
    ld [$fdd9], sp
    jp $9d80


    cp a
    sbc c
    jr nc, jr_037_4399

    db $db
    reti


    sub e
    ld bc, $bf99
    sbc c
    jr nc, jr_037_43a2

jr_037_4399:
    db $db
    reti


    sub e
    nop
    sbc l
    cp a
    sbc c
    cp b
    inc c

jr_037_43a2:
    db $db
    db $fd
    reti


    add b
    call z, $dc9f
    sbc b
    inc b
    db $ed
    db $ec
    ret


    ret nz

    ld h, [hl]
    rst $08
    xor $cc
    ld b, $76
    cp $64
    ret nz

    inc sp
    ld h, a
    di
    ld h, $01
    dec de
    ld a, a
    inc sp
    ld [hl], b
    add hl, de
    sub e
    ld sp, hl
    sub e
    nop
    adc l
    cp a
    sbc c
    sbc b
    inc c
    db $ed
    db $fc
    ret


    add b
    ld h, [hl]
    rst $08
    xor $cc
    ld [bc], a
    db $76
    cp $64
    ret nz

    inc sp
    daa
    rst $30
    ld h, [hl]
    ld bc, $7f3b
    ld [hl-], a
    ld [hl], b
    add hl, de
    sub e
    ei
    or e
    nop
    adc l
    cp a
    sbc l
    jr c, jr_037_43f7

    jp hl


    db $fc
    ret


    add b
    ld h, [hl]
    rst $08
    xor $cc
    ld [bc], a
    db $76
    cp $64

jr_037_43f7:
    ret nz

    inc sp
    ld h, a
    rst $30
    ld h, $01
    dec sp
    ld a, a
    ld [hl-], a
    ld [hl], b
    add hl, de
    sbc e
    ld sp, hl
    sub e
    nop
    call $9d9f
    sbc b
    inc b
    db $ed
    db $fc
    ret


    ret nz

    ld h, a
    ld c, a
    and $4c
    ld [bc], a
    ld [hl], $7e
    db $76
    ld h, b
    inc sp
    or a
    di
    ld h, $01
    sbc e
    ccf
    cp c
    jr nc, jr_037_442b

    db $db
    ld sp, hl
    sub e
    add b
    call $dc9f
    sbc b
    inc b

jr_037_442b:
    db $ed
    db $fc
    ret


    ret nz

    ld h, [hl]
    rst $08
    xor $4c
    ld b, $76
    cp $64
    ret nz

    inc hl
    ld h, a
    rst $20
    ld h, [hl]
    inc bc
    ld [hl-], a
    ld a, a
    ld [hl], d
    ld h, b
    inc sp
    or a
    di
    ld h, $03
    dec sp
    ld a, a
    ld [hl-], a
    ld [hl], b
    inc de
    or a
    di
    daa
    ld bc, $7f1b
    dec sp
    ld [hl], b
    ld de, $fbb3
    sub e
    ld bc, $3f9b
    cp c
    jr nc, jr_037_4476

    sub e
    ei
    sub e
    ld bc, $3f99
    cp c
    jr nc, jr_037_447f

    sub e
    ei
    sub e
    ld bc, $3f99
    cp c
    jr nc, jr_037_4488

    sub e
    ei
    sub e
    ld bc, $3f99
    cp c

jr_037_4476:
    jr nc, jr_037_4491

    sbc e
    ld sp, hl
    sub e
    ld bc, $bf99
    cp c

jr_037_447f:
    jr nc, jr_037_449a

    sub e
    ei
    sub e
    ld bc, $3f99
    cp c

jr_037_4488:
    jr nc, jr_037_44a3

    sub e
    ei
    sub e
    ld bc, $3d99
    cp e

jr_037_4491:
    jr nc, jr_037_44a4

    or e
    ei
    sub e
    ld bc, $3f1b
    cp e

jr_037_449a:
    ld [hl], b
    inc de
    or a
    di
    ld h, $03
    dec sp
    ld a, e
    ld [hl], d

jr_037_44a3:
    ld h, b

jr_037_44a4:
    inc sp
    daa
    or a
    ld h, $02
    ld [hl], $7e
    ld [hl], d
    ldh [$67], a
    ld l, a
    ld l, [hl]
    ld c, h
    ld b, $64
    or $e4
    ret nz

    ld c, [hl]
    rst $08
    call z, $0c5c
    db $ed
    db $ed
    ret


    add b
    call z, $dc9e
    cp b
    ld [$f9d9], sp
    jp $9d01


    cp a
    cp c
    jr nc, jr_037_44e6

    sub e
    db $db
    sub a
    ld bc, $3f3b
    jr c, jr_037_4535

    inc sp
    or a
    or e
    ld h, $03
    ld [hl-], a
    ld a, e
    ld [hl], d
    ldh [rNR44], a
    ld h, a
    and a
    ld l, $06
    db $76
    cp $64

jr_037_44e6:
    ret nz

    ld h, a
    ld l, a
    ld l, [hl]
    ld c, h
    ld b, $64
    or $e5
    ret nz

    ld b, [hl]
    rst $08
    ld c, [hl]
    ld e, b
    inc b
    db $ed
    db $fc
    call Call_037_4e80
    rst $18
    call z, Call_000_0c98
    db $ed
    db $ec
    ret


    add b
    adc $de
    call z, Call_000_0c98
    call $c9ed
    add b
    call z, $dc9e
    sbc b
    inc c
    ret


    db $ed
    ret


    add b
    adc l
    sbc [hl]
    sbc c
    sbc b
    add hl, bc
    reti


    ld sp, hl
    sbc e
    add b
    sbc l
    cp [hl]
    sbc c
    or b
    add hl, bc
    db $db
    reti


    sub e
    nop
    sbc l
    cp a
    sbc c
    jr nc, jr_037_4534

    db $db
    reti


    sub e
    ld bc, $bd9d
    sbc c
    jr nc, jr_037_454d

jr_037_4534:
    db $db

jr_037_4535:
    db $db
    sub e
    ld bc, $3d9d
    cp c
    jr nc, jr_037_4556

    sub e
    db $db
    sub e
    ld bc, $7d3b
    inc sp
    ld h, b
    inc de
    or a
    or e
    ld [hl], $03
    dec sp
    ld a, e
    ld [hl], d

jr_037_454d:
    ld h, b
    inc hl
    ld h, a
    and a
    inc l
    ld b, $76
    or $e4

jr_037_4556:
    ret nz

    ld b, [hl]
    rst $08
    ld c, [hl]
    ld e, b
    inc c
    db $ed
    db $ed
    ret


    add b
    adc l
    sbc [hl]
    sbc h
    jr nc, @+$1b

    db $d3
    db $db
    sub e
    ld bc, $3f1b
    jr nc, jr_037_45cd

    inc sp
    and a
    or a
    ld l, $06
    db $76
    or $e4
    ret nz

    ld b, [hl]
    rst $18
    adc $58
    inc c
    jp hl


    db $ed
    res 0, c
    adc l
    dec a
    cp c
    jr nc, jr_037_45b5

    or a
    or a
    ld [hl], $02
    ld [hl], $72
    ld h, d
    ret nz

    ld b, [hl]
    rst $08
    ld l, [hl]
    ld a, b
    ld [$edd9], sp
    rst $08
    ld bc, $3d1b
    cp c
    ldh [rNR44], a
    daa
    cp a
    ld a, $04
    ld h, h
    rst $30
    rst $20
    add b
    adc h
    sbc [hl]
    db $fc
    ldh a, [rNR11]
    or e
    rst $18
    sbc [hl]

jr_037_45aa:
    ld [bc], a
    ld [hl-], a
    ld a, e
    di
    ret nz

    ld b, [hl]
    rst $18
    ld a, h
    ld hl, sp+$18
    db $db

jr_037_45b5:
    rst $18
    sbc a
    inc bc
    ld a, [de]
    ld a, e
    di
    ldh [$63], a
    ld c, a
    ld a, [hl]
    ld a, h
    ld [$efc9], sp
    rst $08
    inc bc
    dec de
    ld a, e
    di
    ldh [rSCX], a
    ld c, a
    ld a, [hl]
    ld a, b

jr_037_45cd:
    jr jr_037_45aa

    rst $28
    adc a
    inc bc
    ld a, [de]
    ld a, a
    di
    ret nz

    add $9f
    db $fc
    ld a, b
    db $10
    db $d3
    rst $30
    sbc [hl]
    ld b, $34
    rst $38
    db $e3
    add c
    adc a
    ccf
    cp b
    ldh a, [rNR42]
    rst $20
    rst $38
    inc e
    inc c
    ld l, c
    rst $28
    rst $00
    inc bc
    ld a, [de]
    ld a, e
    pop af
    ret nz

    ld b, a
    sbc [hl]
    db $fc
    ld a, b
    db $10
    di
    rst $18
    sbc [hl]
    inc b
    inc a
    rst $30
    db $e3
    add c
    adc l
    dec a
    ld hl, sp-$20
    ld h, e
    ld c, a
    ld a, [hl]
    inc a
    ld [$cf71], sp
    adc a
    ld [bc], a
    ld e, $7b
    di
    ret nz

    add $9e
    db $fc
    ldh a, [$31]
    and a
    cp a
    ld e, $04
    inc a
    rst $20
    rst $20
    add c
    adc l
    dec a
    ld sp, hl
    ldh [rNR42], a
    ld c, a
    ld a, $7c
    ld [$ef69], sp
    rst $08
    inc bc
    ld a, [de]
    ld a, e
    di
    ret nz

    ld b, e
    ld c, $7e
    ld hl, sp+$08
    ld d, e
    rst $18
    rst $38
    ld [bc], a
    jr jr_037_46b6

    rst $38
    ret nz

    ld b, e
    ld c, $7f
    ld hl, sp+$08
    ld b, c
    rst $08
    rst $38
    ld bc, $3908
    rst $38
    ldh a, [rNR42]
    rlca
    ccf
    cp $00
    nop
    ld [hl], a
    rst $38
    db $e4
    ld b, b
    ld c, $7f
    cp $42
    db $10
    ld h, a
    rst $38
    db $f4
    jr nz, jr_037_4665

    ccf
    rst $38
    and c
    add h
    jr c, @+$01

    db $fd

jr_037_4665:
    ld [bc], a
    jr jr_037_46db

    sbc a
    or $06
    inc a
    db $e3
    inc c
    ld h, [hl]
    sbc a
    cp $30
    nop
    sbc a
    rst $38
    rst $30
    nop
    nop
    ld a, e
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop

Call_037_4680:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_46b6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_46db:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_4921:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $10
    ld [$9ee0], sp
    ld b, $0f
    add a
    ld e, $e1
    ret nc

    sub [hl]
    ld h, e
    adc b
    ld a, a
    cp a
    cp $18
    call $ffb7
    jr jr_037_4921

    rst $30
    ei

Jump_037_4956:
    nop
    rlca
    ld a, a
    cp $01
    dec de
    rst $38
    cp $03
    dec de
    rst $38
    sbc b
    inc b
    ld a, a
    cp $10
    inc e
    rst $38
    call z, Call_000_19e6
    db $db
    sbc c
    sbc h
    jr @+$01

    sbc b
    call z, Call_037_6f0e
    call z, $0366
    ccf
    di
    inc de
    pop bc
    sbc l
    reti


    call z, Call_037_67e0
    cp $23
    ld a, [hl]
    inc c
    cp $c4
    ld h, a
    ret nz

    rst $18
    db $ec
    ld b, [hl]
    ld hl, sp+$19
    db $fd
    adc b
    rst $38
    ret nz

    rst $18
    ret nz

    ld b, a
    ld hl, sp+$1f
    db $fc
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [rIF], a
    ldh a, [rTAC]
    rst $38
    add b
    ld a, a
    nop
    ccf
    ret nz

    rlca
    ldh a, [rIF]
    ld hl, sp+$01
    ld hl, sp+$00
    rst $38
    ld bc, $c0e7
    ld a, a
    ld hl, sp+$0f
    ld b, $ff
    inc bc
    ei
    inc b
    rrca
    ret nz

    ld a, a
    add b
    db $fc
    dec sp
    sbc b
    rst $38
    add b
    ld [hl], b
    cp $3b
    ld hl, sp+$0f
    pop bc
    call c, $7cc7
    inc bc
    add a
    pop hl
    rst $38
    add b
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    inc a
    ld a, d
    rra
    add sp, $0f
    add c
    cp $03
    db $fc
    inc bc
    rst $00
    and c
    cp $00
    ld hl, sp+$1f
    ret nz

    ccf
    ret nz

    ld a, h
    ld a, [hl]
    rra
    ldh [rIF], a
    add c
    db $fc
    inc hl
    ld hl, sp+$0f
    jp $fef1


    nop
    ld hl, sp+$1f
    jp $813f


    ld hl, sp+$7f
    rra
    ldh [rIF], a
    ld bc, $37fc
    ld hl, sp+$1f
    rlca
    pop hl
    cp $01
    ldh a, [$3f]
    add a
    rst $38
    ld bc, $fcf0
    ccf
    add b
    ld a, [hl]
    rlca
    ldh [rIE], a
    nop
    db $fc
    ccf
    rlca
    ld hl, sp+$0f
    pop bc
    db $fc
    rra
    ldh [rNR34], a
    inc e
    rlca
    ldh a, [rIF]
    ldh [$7e], a
    rlca
    ldh a, [$1f]
    add a
    ldh [$7f], a
    inc bc
    ldh a, [$3e]
    rlca
    ld hl, sp+$0f
    pop bc
    ld hl, sp+$3f
    ret nz

    ld a, h
    rra
    inc bc
    ld hl, sp+$1f
    add e
    ldh a, [$3f]
    add b
    ld a, h
    rra
    add e
    ld hl, sp+$1f
    add e
    ldh a, [$3f]
    add b
    db $fc
    ccf
    add e
    ldh a, [$3f]
    rlca
    ldh [$7f], a
    nop
    ld hl, sp+$3f
    rlca
    ldh a, [$7e]
    rlca
    ldh a, [rIE]
    nop
    ld a, h
    ccf
    add a
    ldh a, [$3f]
    rlca
    ldh a, [$7f]
    nop
    ld a, $3f
    add a
    ldh a, [$fe]
    rlca
    ldh [rIE], a
    nop
    ldh a, [$fc]
    rra
    ret nz

    db $fc
    rrca
    pop bc
    db $fc
    nop
    ld hl, sp-$02
    rra
    add c
    db $fc
    rrca
    pop bc
    db $fc
    nop
    ld hl, sp-$04
    rra
    add c
    db $fc
    rra
    pop bc
    db $fc
    ld bc, $f8e3
    ld a, a
    inc bc
    ld hl, sp+$7f
    rlca
    ldh a, [rIF]
    rrca
    pop bc
    db $fc
    rlca
    jp Jump_037_7ff8


    nop
    ld hl, sp-$02
    rra
    ret nz

    ld a, $3f
    add a
    ldh a, [rIF]
    adc a
    pop hl
    db $fc
    rlca
    db $e3
    ld hl, sp+$3f
    ld bc, $fef0
    rrca
    ret nz

    ld a, $3f
    add a
    ldh a, [$1f]
    adc a
    pop hl
    db $fc
    inc bc
    jp Jump_037_7ff8


    inc bc
    ldh a, [$fc]
    rra
    add b
    db $fc
    ld a, a
    rrca
    ldh [rNR34], a
    rra
    add e
    ldh a, [rIF]
    adc a
    pop hl
    db $fc
    rlca
    jp Jump_037_7ef0


    ld bc, $fce1
    ccf
    add b
    ld hl, sp+$7e
    rra
    ret nz

    ld a, [hl]
    ccf
    add a
    ldh a, [rIF]
    rra
    jp Jump_000_03f8


    rst $00
    pop hl
    cp $80
    ld h, e
    ld hl, sp+$7f
    ld h, b
    jr c, @-$02

    ccf
    sbc b
    inc c
    ld a, a
    rrca
    xor $03
    rra
    add a
    di
    ld bc, $e187
    ld a, h
    ret nz

    ld h, e
    ld hl, sp+$5e
    ld [hl], b

jr_037_4aff:
    jr jr_037_4aff

    daa
    cp h
    ld b, $3f
    dec bc
    xor $01
    adc a
    jp nz, $807b

    ld h, e
    ldh a, [$9e]
    ldh a, [rNR23]
    db $fc
    daa
    cp h
    ld b, $3f
    add c
    rst $28
    ld bc, $e08f
    ld a, e
    ret nz

    ld h, c
    ld hl, sp+$0e
    ldh a, [$08]
    ld a, a
    inc bc
    sbc $03
    rra
    ret nz

    rst $38
    add b
    ld b, e
    ldh a, [$1f]
    ld hl, sp+$08
    cp $07
    cp $02
    rra
    ret nz

    rst $38
    ret nz

    ld b, e
    ldh a, [$1f]
    ld hl, sp+$18
    ld a, [hl]
    inc bc
    rst $38
    nop
    rra
    ret nz

    ld a, a
    ret nz

    inc bc
    ld hl, sp+$0f
    ld hl, sp+$04
    ccf
    ld bc, $80ff
    add a
    ldh a, [$3f]
    ldh a, [rNR10]
    ld a, [hl]
    inc bc
    rst $38
    ld bc, $e00f
    ld a, a
    ldh a, [rNR41]
    cp $07
    ei
    ld [bc], a
    rrca
    ldh [$7f], a
    or b
    nop
    cp $07
    rst $38
    nop
    rlca
    ldh [$3f], a
    ld hl, sp+$00
    ld a, a
    inc bc
    rst $38
    add b
    rlca
    ldh a, [$1f]
    ld hl, sp+$00
    ccf
    ld bc, $80ff
    inc bc
    ld hl, sp+$0f
    db $fc
    nop
    rra
    add b
    rst $38
    ret nz

    nop
    db $fc
    rlca
    cp $01
    rlca
    ldh [$3f], a
    ldh a, [rDIV]
    ccf
    add c
    rst $38
    ret nz

    ld sp, $07fc
    rst $38
    ld bc, $f0c3
    rra
    ld hl, sp+$07
    rrca
    ret nz

    ld a, a
    ldh a, [rNR32]
    ccf
    add b
    rst $38
    ldh [$78], a
    ld a, a
    inc bc
    rst $38
    add b
    ldh a, [$fe]
    inc bc
    rst $38
    nop
    pop hl
    db $fc
    rlca
    rst $38
    ld bc, $f8c1
    rrca
    rst $38
    inc bc
    pop bc
    ld hl, sp+$4f
    cp $03
    pop bc
    db $fc
    ld b, $ff
    inc bc
    pop bc
    db $fc
    ld b, $ff
    ld bc, $fee0
    inc bc
    ld a, a
    add b
    ldh a, [$7e]
    inc de
    cp a
    ret nz

    ld a, b
    ccf
    add b
    rst $18
    ldh [$3e], a
    rra
    ret nz

    ld l, a
    ldh a, [$1f]
    rlca
    ldh [$1f], a
    db $fc
    rrca
    jp Jump_037_4cf8


    cp $07
    ldh [$fe], a
    inc bc
    ccf
    add b
    ld hl, sp+$3f
    adc b
    rst $08
    ldh [$3e], a
    rrca
    ldh [$33], a
    ld hl, sp+$0f
    add e
    ld hl, sp+$0c
    cp $03
    ldh [$fe], a
    inc de
    ccf
    add b
    ld hl, sp+$1f
    add b
    rst $08
    ldh [$3e], a
    rlca
    pop hl
    dec de
    ld hl, sp+$0f
    pop bc
    db $fc
    ld b, $7f
    inc bc
    ldh a, [$3f]
    add hl, bc
    sbc a
    ret nz

    ld a, [hl]
    rrca
    ldh [$33], a
    ld hl, sp+$1f
    add c
    ld hl, sp+$44
    cp $03
    ldh a, [$3f]
    ld [$c09f], sp
    ld a, h
    rrca
    pop hl
    inc sp
    ld hl, sp+$1f
    add c
    db $fc
    inc b
    rst $38
    ld bc, $3fb0
    ld [$c09f], sp
    ld a, [hl]
    rlca
    pop hl
    inc de
    ld hl, sp+$0e
    pop bc
    db $fc
    ld [hl+], a
    ld a, a
    ld bc, $1ff8
    add h
    ld c, a
    ldh [$33], a
    inc bc
    ldh a, [$0d]
    db $fc
    ld b, $e0
    ld a, a
    nop
    cp a
    ret nz

    ld e, $07
    ldh [rNR31], a
    ld hl, sp+$09
    ret nz

    cp $03
    ld a, a
    add b
    ld a, h
    rrca
    ret nz

    scf
    ldh a, [$1f]
    add c
    db $fc
    ld [bc], a
    ld a, a
    add b
    ld hl, sp+$1f
    ret nz

    ld h, a
    ld hl, sp+$17
    ld bc, $06f8
    cp $03
    ld hl, sp+$1f
    jp nz, $f827

    scf
    add c
    db $fc
    inc bc
    ld a, a
    inc bc
    ld hl, sp+$0f
    jp nz, $fc33

    inc sp
    add b
    cp $03
    cp a
    pop bc
    cp h
    rrca
    pop hl
    inc de
    db $fc
    ld de, $7ec0
    ld bc, $e1bf
    sbc h
    rlca
    ldh a, [$89]
    cp $09
    ret nz

    ld a, a
    nop
    rst $18
    ldh [$de], a
    inc bc
    ld hl, sp+$44
    rst $38
    inc b
    ldh [$3f], a
    add h
    ld h, a
    ld hl, sp+$6f
    ld bc, $22fc
    ld a, a
    add [hl]
    ld [hl], b
    rrca
    ret nz

    inc sp
    db $fc
    daa
    add b
    cp $11
    sbc a
    pop bc
    jr c, jr_037_4cc2

    ldh a, [$8d]
    cp $09
    ldh [$3f], a
    adc h

jr_037_4cc2:
    ld c, a
    ldh a, [$4e]
    ld bc, $23fc
    ld a, a
    add d
    ld a, h
    rrca
    pop hl
    ld de, $13fc
    add b
    ld a, a
    ld [$e0cf], sp
    sbc h
    inc bc
    ld hl, sp+$46
    ld a, a
    inc b
    ldh [$1f], a
    jp nz, $fc33

    inc hl
    ldh [$7f], a
    jr @-$6f

    pop hl

jr_037_4ce6:
    sbc b
    inc bc
    ld hl, sp+$44
    ld a, a
    inc b
    cp $0f
    db $e3
    ld de, $23fe
    db $10
    ld a, a
    ld [$e0cf], sp
    sbc a

Jump_037_4cf8:
    pop bc
    db $fc
    ld [hl+], a
    ccf
    add b
    ld [hl], a
    rlca
    ldh a, [$88]
    cp $19
    sbc b
    rra
    add [hl]
    daa
    ld hl, sp+$46
    ld h, b
    ld a, [hl]
    nop
    rra
    ldh [rNR31], a
    pop bc
    db $fc
    jr nz, jr_037_4d92

    add h
    ld l, a
    rlca
    ldh a, [$81]
    cp $11
    cp h

jr_037_4d1b:
    rra
    jp nz, $f803

    inc bc
    ldh a, [$3f]
    inc c
    rrca
    ldh a, [rIF]
    ldh [$fe], a
    ld sp, $c03f
    ccf
    add e
    ld hl, sp+$40
    ld a, a
    add b
    ld l, [hl]
    rlca
    pop hl
    adc c
    cp $11
    db $fc
    rrca
    jp nz, $fc03

    inc bc
    ld a, b
    ccf
    adc h
    ld b, a
    ldh a, [$8f]
    ldh [$7f], a
    jr jr_037_4ce6

    ldh [rIF], a
    ret nz

    cp $31
    ccf
    jp nz, $8337

    ld hl, sp+$42
    ld a, a
    add b
    ld a, a
    inc bc
    ldh a, [$84]
    rst $38
    nop
    cp $07
    pop hl
    adc c
    rst $38
    ld sp, $0f3c
    jp nz, $fc13

    inc bc
    ld hl, sp+$1f
    jp nz, $fc03

    nop
    ld hl, sp+$3f
    add h
    ld b, a
    ld hl, sp+$05
    ldh a, [$3f]
    ld [$f04f], sp
    dec bc
    ldh [$7f], a
    jr jr_037_4d1b

    ldh a, [rIF]
    ret nz

    cp $11
    rra
    ldh [$1f], a
    ret nz

    db $fc
    jr nc, jr_037_4dc7

    ldh [rIF], a
    add c
    db $fc
    ld h, b
    ccf
    ret nz

    ccf
    add c
    db $fc

jr_037_4d92:
    ld h, b
    ld a, a
    ret nz

    rrca
    inc bc
    ld hl, sp+$40
    ld a, a
    add b
    rra
    inc bc
    ld hl, sp-$40
    ld a, a
    add b
    rra
    inc bc
    ld hl, sp-$40
    ld a, a
    add b
    rra
    inc bc
    ld hl, sp-$40
    ld a, a
    add b
    rra
    inc bc
    ld hl, sp-$40
    ld a, a
    add b
    ccf
    ld bc, $60fc
    ccf
    ret nz

    rra
    add c
    db $fc
    ld h, b
    ccf
    ret nz

    rra
    add b
    cp $30
    ccf
    ldh [$1f], a
    ret nz

jr_037_4dc7:
    cp $30
    rra
    ldh [$1f], a
    ret nz

    ld a, a
    jr @+$11

    ldh a, [rIF]
    ldh [$3f], a
    adc h
    rrca
    ld hl, sp+$07
    ldh a, [$1f]
    add $03
    db $fc
    inc bc
    ld hl, sp+$0f
    ld [c], a
    inc bc
    cp $01
    db $fc
    rlca
    pop af
    add b
    rst $38
    nop
    cp $03
    ld hl, sp-$40
    ld a, a
    add b
    ld a, a
    add b
    cp $30
    rra
    ldh [$1f], a
    ret nz

    ld a, a
    jr jr_037_4e0a

    ldh a, [rTAC]
    ldh a, [$1f]
    add $03
    cp $01
    db $fc
    rlca
    pop af
    add b
    rst $38
    nop
    ld a, a

jr_037_4e0a:
    ld bc, $60fc
    ccf
    ldh [$1f], a
    ret nz

    ld a, a
    jr jr_037_4e23

    ldh a, [$03]
    ldh a, [$1f]
    and $03
    cp $40
    cp $03
    ld sp, hl
    add b
    ld a, a
    sub b
    rra

jr_037_4e23:
    add b
    rst $38
    jr nc, jr_037_4e46

    cp $07
    ldh [$1f], a
    call z, $ff03
    add c
    db $fc
    inc bc
    ld sp, hl
    add b
    ld a, a
    ldh a, [$1f]
    add b
    cp $70
    rra
    db $fc
    rlca
    ldh a, [$1f]
    adc $03
    rst $38
    add b
    ld a, [hl]
    inc bc
    ld sp, hl
    add b

jr_037_4e46:
    ld a, a
    ldh a, [$1f]
    ret nz

    ld a, a
    jr nc, jr_037_4e5c

    cp $03
    ldh a, [$1f]
    adc $03
    rst $38
    add b
    ld a, [hl]
    inc bc
    db $fc
    ret nz

    ccf
    ld hl, sp+$0f

jr_037_4e5c:
    ret nz

    ld a, a
    jr c, jr_037_4e6f

    cp $01
    ld hl, sp+$0f
    rst $30
    ld bc, $c0ff
    ccf
    ld bc, $e0fc
    ccf
    ld hl, sp+$0f

jr_037_4e6f:
    ldh [$1f], a
    call z, $ff03
    nop
    cp $07
    ld sp, hl
    add b
    ld a, a
    ldh a, [$1f]
    ret nz

    ld a, a
    jr nc, jr_037_4e8f

Call_037_4e80:
    db $fc
    inc bc
    ld hl, sp+$0f
    rst $20
    ld bc, $c0ff
    ld a, a
    add b
    cp $60
    rra
    ldh a, [rTAC]

jr_037_4e8f:
    ldh a, [$1f]
    adc $03
    rst $38
    nop
    rst $38
    ld bc, $c0fc
    ccf
    ldh [rIF], a
    ldh [$3f], a
    call z, $fe03
    nop
    cp $03
    db $fc
    ret nz

    ccf
    ldh [rIF], a
    ldh [$3f], a
    sbc h
    rlca
    db $fc
    nop
    cp $03
    db $fd
    ret nz

    ld a, a
    ret nz

    rra
    ldh [$3f], a
    call c, $fc07
    nop
    cp $03
    db $fd
    ret nz

    ccf
    ldh [rIF], a
    ldh [$1f], a
    call z, $fe03
    nop
    rst $38
    ld bc, $c0fe
    ccf
    ldh [rIF], a
    ldh a, [rIF]
    and $01
    rst $38
    nop
    ld a, a
    add b
    rst $38
    jr nz, jr_037_4efa

    ld hl, sp+$03
    ld hl, sp+$07
    ld sp, hl
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret z

    rlca
    cp $00
    cp $01
    cp $c0
    ccf
    ldh a, [rTAC]
    ldh a, [rIF]
    di
    nop
    rst $38
    add b
    ccf
    ret nz

    ccf

jr_037_4efa:
    ret c

    rlca
    cp $01
    cp $01
    rst $38
    ret nz

    rra
    ldh a, [rTAC]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ld hl, sp+$03
    cp $00
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ld hl, sp+$03
    db $fc
    inc bc
    rst $38
    add b
    ccf
    ldh [rIF], a
    ldh a, [rIF]
    cp $00
    rst $38
    add b
    ccf
    ret nz

    rra
    ld hl, sp+$03
    cp $00
    rst $38
    nop
    ld a, a
    ldh [rIF], a
    ld hl, sp+$03
    cp $01
    rst $38
    add b
    rra
    ldh a, [rTAC]
    ld hl, sp+$03
    rst $38
    nop
    ld a, a
    ret nz

    rra
    ldh a, [rTAC]
    db $fc
    nop
    rst $38
    add b
    ccf
    ret nz

    rrca
    ld hl, sp+$01
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$03], a
    cp $00
    rst $38
    add b
    ccf
    ldh [rTAC], a
    db $fc
    ld bc, $00ff
    ld a, a
    ret nz

    rlca
    db $fc
    inc bc
    cp $00
    ld a, a
    add b
    rrca
    ld hl, sp+$03
    cp $00
    ld a, a
    add b
    rrca
    ld hl, sp+$03
    cp $00
    rst $38
    add b
    rrca
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    add b
    rrca
    ld hl, sp+$03
    db $fc
    nop
    ld a, a
    add b
    rrca
    ld hl, sp+$03
    cp $00
    ld a, a
    add b
    rrca
    ld hl, sp+$03
    cp $00
    ld a, a
    ret nz

    rrca
    db $fc
    ld bc, $00ff
    ccf
    ret nz

    rlca
    db $fc
    ld bc, $00ff
    rra
    ldh [$03], a
    cp $00
    rst $38
    add b
    rrca
    ldh a, [rSB]
    rst $38
    nop
    ld a, a
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    add b
    ccf
    ldh [$03], a
    db $fc
    nop
    ld a, a
    ret nz

    rra
    ldh a, [rSB]
    rst $38
    nop
    rra
    ldh a, [rTAC]
    db $fc
    nop
    ld a, a
    ret nz

    rrca
    ld hl, sp+$03
    cp $00
    rra
    ldh [$03], a
    cp $00
    rst $38
    add b
    rrca
    ld hl, sp+$00
    rst $38
    add b
    ccf
    ldh [$03], a
    cp $00
    ccf
    ldh [rIF], a
    ld hl, sp+$00
    ld a, a
    add b
    rrca
    ld hl, sp+$03
    cp $00
    rra
    ldh a, [$03]
    cp $00
    rst $38
    ret nz

    rlca
    db $fc
    nop
    ld a, a
    ret nz

    rra
    ldh a, [rP1]
    rst $38
    add b
    rrca
    ld hl, sp+$03
    cp $00
    rra
    ldh a, [rSB]
    rst $38
    nop
    ld a, a
    ret nz

    inc bc
    cp $00
    ccf
    ldh [rIF], a
    db $fc
    nop
    ccf
    ldh [$03], a
    cp $00
    rst $38
    add b
    rlca
    db $fc
    nop
    ld a, a
    ldh [rIF], a
    ld hl, sp+$00
    ld a, a
    ret nz

    rlca
    cp $00
    rst $38
    add b
    rlca
    db $fc
    nop
    ld a, a
    ldh [rIF], a
    ld hl, sp+$00
    ld a, a
    ret nz

    rlca
    cp $00
    rst $38
    add b
    rlca
    db $fc
    nop
    ld a, a
    ldh [rIF], a
    db $fc
    nop
    ccf
    ldh [$03], a
    rst $38
    nop
    ld a, a
    ret nz

    inc bc
    rst $38
    nop
    ccf
    ld hl, sp+$07
    cp $00
    rra
    ld hl, sp+$01
    rst $38
    ret nz

    ccf
    ldh a, [rP1]
    rst $38
    ret nz

    rrca
    cp $01
    rst $38
    add b
    rlca
    cp $00
    ld a, a
    ldh a, [rIF]
    db $fc
    nop
    rra
    ld hl, sp+$01
    rst $38
    ret nz

    ccf
    ldh a, [rP1]
    ld a, a
    ldh [rTAC], a
    rst $38
    nop
    rst $38
    ret nz

    ld bc, $80ff
    rrca
    cp $01
    rst $38
    nop
    inc bc
    rst $38
    nop
    ccf
    db $fc
    rlca
    cp $00
    inc bc
    rst $38
    nop
    ccf
    ld hl, sp+$07
    cp $00
    rlca
    cp $00
    ld a, a
    ld hl, sp+$07
    cp $00
    inc bc
    rst $38
    nop
    ccf
    db $fc
    rlca
    rst $38
    nop
    inc bc
    rst $38
    ret nz

    ccf
    cp $03
    rst $38
    nop
    ld bc, $e0ff
    rra
    rst $38
    ld bc, $80ff
    nop
    rst $38
    ldh [rTAC], a
    rst $38
    add b
    rst $38
    ldh [rP1], a
    ccf
    ldh a, [$03]
    rst $38
    ret nz

    ld a, a
    ldh a, [rP1]
    rra
    db $fc
    nop
    rst $38
    ldh a, [$1f]
    db $fc
    nop
    rlca
    rst $38
    nop
    ccf
    db $fc
    rlca
    rst $38
    nop
    nop
    rst $38
    ldh a, [rTAC]
    rst $38
    add b
    rst $38
    ldh [rP1], a
    rra
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    db $fc
    nop
    ld bc, $e0ff
    rra
    rst $38
    ld bc, $c0ff
    nop
    ccf
    db $fc
    ld bc, $e0ff
    rra
    ld hl, sp+$00
    ld bc, $e0ff
    rra
    rst $38
    ld bc, $c0ff
    nop
    rra
    cp $01
    rst $38
    ldh a, [rIF]
    db $fc
    nop
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    add b
    ld a, a
    ldh [rP1], a
    rlca
    rst $38
    add b
    ld a, a
    db $fc
    inc bc
    rst $38
    nop
    nop
    ccf
    cp $01
    rst $38
    ldh [$1f], a
    db $fc
    nop
    nop
    ld a, a
    ld hl, sp+$07
    rst $38
    ret nz

    ld a, a
    ldh a, [rP1]
    ld bc, $f0ff
    rrca
    rst $38
    nop
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    ldh [$1f], a
    cp $0f
    rst $38
    add b
    nop
    inc bc
    rst $38
    ldh [rSB], a
    rst $38
    rra
    rst $38
    nop
    nop
    ld bc, $f0ff
    ld bc, $1dff
    rst $38
    add b
    nop
    ld bc, $f0ff
    ld bc, $80ff
    rst $38
    ret nz

    nop
    nop
    rst $38
    ld hl, sp+$00
    ld a, a
    ret nz

    rra
    ldh [rP1], a
    nop
    ccf
    cp $00
    ccf
    db $e3
    sbc a
    ld hl, sp+$00
    nop
    rrca
    rst $38
    add b
    rlca
    db $fc
    rst $30
    db $fc
    nop
    nop
    ld bc, $f0ff
    nop
    rst $38
    adc a
    rst $38
    add b
    nop
    nop
    ccf
    cp $00
    rra
    di
    rst $08
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    ldh [rSB], a
    rst $38
    cp l
    rst $38
    nop
    nop
    nop
    ccf
    rst $38
    nop
    rra
    rst $38
    rst $08
    ld hl, sp+$00
    nop
    ld bc, $f0ff
    ld bc, $faff
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    add b
    rlca
    rst $38
    ldh [$7e], a
    nop
    nop
    nop
    ccf
    cp $00
    rra
    rst $38
    adc a
    ld hl, sp+$00
    nop
    ld bc, $f8ff
    nop
    ld a, a
    db $fc
    rrca
    ldh [rP1], a
    nop
    inc bc
    rst $38
    ldh [rSB], a
    rst $38
    ldh a, [$7f]
    add b
    nop
    nop
    rlca
    rst $38
    ldh [$03], a
    rst $38
    db $e3
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    ret nz

    inc bc
    rst $38
    rst $20
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    ret nz

    inc bc
    rst $38
    rst $28
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    ret nz

    rlca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    ret nz

    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    ret nz

    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rlca
    rst $38
    ldh [$03], a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    ldh [$03], a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld bc, $f8ff
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    nop
    ccf
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
    rst $38
    ldh [rIF], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $18
    dec de
    ld a, a
    ld a, a
    ld [bc], a
    cp $01
    ld l, a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $03
    nop
    add c
    cp a
    ret z

    nop
    nop
    nop
    nop
    inc b
    ld b, h
    inc hl
    dec [hl]
    ld c, a
    ld b, l
    rst $10
    ld [hl], a
    jp $8393


    rst $28
    rst $38
    rst $38
    rst $38
    call c, RST_00
    nop
    nop
    rla
    rst $38
    rst $38
    rst $38
    sbc [hl]
    ld a, h
    ret nz

    nop
    nop
    ld [$ff37], sp
    rst $38
    rst $38
    db $f4
    ld b, b
    nop
    nop
    nop
    ld h, a
    rst $38
    rst $38
    rst $38
    db $fc
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    sbc a
    ld [de], a
    nop
    nop
    nop
    rla
    rst $38
    rst $38
    rst $38
    xor $18
    nop
    nop
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
    sbc a
    rst $38
    rst $38
    or $30
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    call z, RST_00
    nop
    nop
    rlca
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    call z, RST_00
    nop
    nop
    inc de
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
    cp $00
    ld [$0000], sp
    nop
    sbc a
    rst $38
    rst $38
    ld a, [$0000]
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    stop
    rlca
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
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    rra
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
    db $fc
    nop
    nop
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
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld b, b
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    rrca
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
    db $f4
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
    nop
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $ffff
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
    nop
    nop
    nop
    jr nz, jr_037_536a

jr_037_536a:
    rrca
    rst $38
    rst $38
    db $fd
    add b
    nop
    nop
    nop
    nop
    rra
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
    db $fc
    nop
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ccf
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
    ldh [rP1], a
    nop
    ld bc, $0000
    ld a, a
    rst $38

Call_037_53ab:
    rst $38
    ldh a, [rP1]
    nop
    ld [bc], a
    nop
    ld bc, $ff3f
    rst $38
    ldh [rP1], a
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
    add b
    nop
    rra
    rst $38
    rst $38
    db $e4
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    inc sp
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
    nop
    nop
    nop
    add b
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld [$0200], sp
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
    ret nz

    nop
    nop
    ld bc, $0000
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld b, $00
    nop
    rrca
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fd
    add b
    nop
    nop
    nop
    nop
    ld bc, $ffff
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
    ld hl, sp+$00
    nop
    ld b, b
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rla
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld bc, $ffff
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
    ret nc

    nop
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
    nop
    rla
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    ld b, b
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
    ld c, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
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
    ld bc, $ffff
    rst $38
    or b
    nop
    nop
    nop
    nop
    nop
    scf
    rst $38
    rst $38
    ld hl, sp+$00
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
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld [$0000], sp
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    inc bc
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
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld [$0000], sp
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    jr nz, jr_037_54e4

jr_037_54e4:
    ld bc, $ffff
    cp $00
    nop
    nop
    ld [$0000], sp
    ld [hl], a
    rst $38
    rst $38
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
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
    db $ec
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld b, b
    nop
    rlca
    rst $38
    rst $38
    di
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ret c

    nop
    nop
    nop
    ld b, $00
    nop
    ld e, a
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
    cp $00
    nop
    nop
    inc bc
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [bc], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    stop
    nop
    ld [$0000], sp
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    jp nz, RST_00

    inc sp
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rst $18
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $0018
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    ld b, b
    nop
    inc bc
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    ld [$0000], sp
    nop
    rlca

Jump_037_558a:
    rst $38
    rst $38
    ld hl, sp+$00
    dec c
    add b
    nop
    nop
    nop
    daa
    rst $38
    rst $38
    ld hl, sp+$00
    ld hl, $80c8
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rDIV]
    inc sp
    jr jr_037_55a5

jr_037_55a5:
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$20
    db $dd
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rSC], a
    inc e
    jr nc, jr_037_55b9

jr_037_55b9:
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rTMA]
    sbc a
    sbc h
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    ld b, c
    cp [hl]
    sbc b
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp-$7f
    rst $08
    sbc $00
    nop
    nop
    ld b, $ff
    rst $38
    cp $01
    cp a
    cp $00
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    rst $28
    nop
    ld b, b
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    pop bc
    sbc a
    sbc a
    nop
    nop
    nop
    ld bc, $ffbf
    rst $38
    db $e4
    dec c
    ld sp, hl
    ret nz

    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    ldh a, [$27]
    rst $38
    ret nz

    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    rra
    cp $60
    nop
    nop
    nop
    rla
    rst $38
    rst $38
    ldh a, [$83]
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$0f
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $cd
    rst $38
    rst $38
    nop
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffbf
    rst $38
    ldh [$7b], a
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    rst $38
    call nz, $ff3f
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rIF], a
    rst $38
    jr c, jr_037_565b

jr_037_565b:
    nop
    nop
    ld de, $ffff
    cp $0f
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
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [$1f]
    rst $38
    ret nz

    nop
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld a, a
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    pop af
    rst $20
    rst $38
    ld hl, sp+$00
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    sbc $7f
    ld hl, sp+$00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ret nz

    nop
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    pop af
    rst $38
    ld a, [c]
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ei
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fd
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
    rst $18
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
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
    rst $18
    rst $38
    or b
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_037_572b

jr_037_572b:
    nop
    nop
    ld bc, $ffff
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
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    add b
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    rrca
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
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    rst $38
    rst $38
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
    rst $38
    nop
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
    ld bc, $ffff
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
    add b
    nop
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    nop
    ld bc, $ffff
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
    rst $38
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
    ld [c], a
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
    db $fd
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
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
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
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_037_585e

jr_037_585e:
    nop
    nop
    nop
    dec de
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    xor $00
    nop
    nop
    nop
    inc c
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    db $fc
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
    sbc h
    nop
    nop
    nop
    nop
    ld bc, $3f8f
    rst $38
    rst $38
    rst $38
    call z, RST_00
    nop
    ld bc, $ffe7
    rst $38
    rst $38
    cp $20
    nop
    nop
    nop
    nop
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
    ld hl, sp+$00
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
    ld bc, $ffff
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
    ld bc, $ffff
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

Call_037_5a2b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld l, l
    rst $18
    or [hl]
    ld l, [hl]
    rst $38
    cp e
    or $fd
    rst $38
    or $67
    ld sp, hl

Jump_037_5bd2:
    ld d, $7e
    ret


    ld sp, hl
    rst $38
    rst $38
    add e
    adc a
    pop bc
    ldh [$7f], a
    nop
    ldh a, [$7c]
    jr c, jr_037_5c00

    rrca
    rlca
    inc bc
    ldh [$e0], a
    ld hl, sp+$50
    inc l
    rst $38
    add sp, $00
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld b, a
    ldh a, [rP1]
    nop
    rra
    rst $38
    rst $38
    ld h, a
    rst $38
    cp $00
    nop
    inc bc
    rst $38

jr_037_5c00:
    cp $00
    rrca
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rst $38
    ld hl, sp+$00
    ccf
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $fcff
    nop
    rra
    rst $38
    cp $00
    nop
    nop
    ld a, a
    cp $00
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    add b
    inc bc
    rst $38
    cp $fc
    nop
    nop
    inc bc
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld a, a
    db $fc
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    ld bc, $f0ff
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    rra
    cp $00
    ccf
    db $fc
    ld a, a
    db $fc
    nop
    nop
    inc bc
    rst $38
    ldh [rTAC], a
    rst $38
    add a
    rst $38
    add b
    nop
    nop
    ccf
    db $fc
    nop
    rst $38
    ldh a, [$3f]
    ld hl, sp+$00
    nop
    ld bc, $c0ff
    rrca
    rst $38
    inc bc
    rst $38
    add b
    ld [bc], a
    nop
    rra
    db $fc
    nop
    rst $38
    ldh [$3f], a
    ld hl, sp+$00
    ldh a, [rSB]
    rst $38
    ret nz

    rrca
    cp $03
    rst $38
    add b
    rrca
    nop
    rra
    db $fc
    nop
    rst $38
    ldh a, [$3f]
    ld hl, sp+$01
    ldh a, [rSB]
    rst $38
    ret nz

    rrca
    rst $38
    inc bc
    rst $38
    add b
    rra
    nop
    rra
    db $fc
    nop
    rst $38
    ldh [$3f], a
    ld hl, sp+$01
    ldh a, [rSB]
    rst $38
    ret nz

    rrca
    cp $03
    rst $38
    nop
    ccf
    nop
    rra
    db $fc
    nop
    rst $38
    ldh [$3f], a
    ldh a, [$03]
    ldh a, [rSB]
    rst $38
    ret nz

    rra
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    rra
    db $fc
    ld bc, $c0ff
    ccf
    ldh a, [rTAC]
    ldh a, [rSB]
    rst $38
    ret nz

    rra
    db $fc
    rlca
    rst $38
    nop
    ld a, a
    nop
    rra
    db $fc
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rTAC]
    ldh a, [rSB]
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    rra
    db $fc
    nop
    rst $38
    ret nz

    ccf
    ldh a, [$03]
    ldh a, [rSB]
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    nop
    rra
    db $fc
    ld bc, $c0ff
    ccf
    ldh a, [rTAC]
    ldh a, [rSB]
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    nop
    rra
    db $fc
    nop
    rst $38
    ret nz

    ccf
    ldh a, [$03]
    ldh a, [rSB]
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    rrca
    db $fc
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rTAC]
    ldh a, [rP1]
    rst $38
    ldh [rIF], a
    cp $03
    rst $38
    nop
    ccf
    add b
    rrca
    cp $00
    rst $38
    ldh [$3f], a
    ld hl, sp+$03
    ld hl, sp+$00
    rst $38
    ldh [rTAC], a
    cp $01
    rst $38
    add b
    ccf
    add b
    rlca
    cp $00
    ld a, a
    ldh [$1f], a
    ld hl, sp+$01
    ld hl, sp+$00
    ccf
    ldh a, [$03]
    rst $38
    nop
    rst $38
    ret nz

    rra
    ret nz

    inc bc
    rst $38
    nop
    ccf
    ldh a, [rIF]
    cp $00
    cp $00
    rra
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh a, [rTAC]
    ldh a, [rP1]
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    nop
    rlca
    cp $00
    ld a, a
    ldh [$1f], a
    db $fc
    ld bc, $00fc
    ccf
    ldh a, [$03]
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ldh [rP1], a
    rst $38
    ret nz

    rra
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    nop
    rlca
    cp $00
    ld a, a
    ldh [$1f], a
    db $fc
    ld bc, $00f8
    rra
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ldh [rP1], a
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    rst $38
    add b
    ccf
    nop
    inc bc
    rst $38
    nop
    ccf
    ldh a, [rIF]
    cp $00
    db $fc
    nop
    rrca
    db $fc
    ld bc, $80ff
    ccf
    ldh a, [rTAC]
    ldh a, [rP1]
    ld a, a
    ldh [rTAC], a
    cp $01
    rst $38
    add b
    ccf
    add b
    inc bc
    cp $00
    ld a, a
    ldh [$1f], a
    db $fc
    ld bc, $00fc
    rra
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh a, [rTAC]
    ldh a, [rP1]
    ld a, a
    ldh a, [rTAC]
    cp $01
    rst $38
    ret nz

    rra
    ret nz

    nop
    rst $38
    ret nz

    rrca
    ld hl, sp+$03
    rst $38
    nop
    ccf
    nop
    inc bc
    rst $38
    nop
    ld a, a
    ldh [rIF], a
    cp $00
    db $fc
    nop
    rrca
    db $fc
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$03
    ld hl, sp+$00
    ccf
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ldh [rP1], a
    ld a, a
    ldh [rIF], a
    db $fc
    ld bc, $c0ff
    rra
    add b
    ld bc, $80ff
    rra
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    nop
    inc bc
    rst $38
    nop
    ccf
    ldh [$1f], a
    cp $01
    db $fc
    nop
    rrca
    db $fc
    nop
    rst $38
    add b
    ccf
    ld hl, sp+$03
    ld hl, sp+$00
    ccf
    ldh a, [$03]
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ldh [rP1], a
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    rst $38
    add b
    ccf
    add b
    inc bc
    rst $38
    nop
    ccf
    ldh a, [rIF]
    cp $00
    cp $00
    rlca
    cp $00
    ld a, a
    ret nz

    rra
    db $fc
    ld bc, $00fc
    rra
    db $fc
    ld bc, $80ff
    ld a, a
    ldh a, [rTAC]
    ldh a, [rP1]
    ccf
    ldh a, [$03]
    rst $38
    nop
    rst $38
    ldh [rIF], a
    ldh [rP1], a
    rst $38
    ret nz

    rrca
    cp $01
    rst $38
    add b
    rra
    ret nz

    ld bc, $80ff
    rra
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    nop
    rlca
    rst $38
    nop
    ld a, a
    ldh a, [rIF]
    cp $00
    cp $00
    rrca
    db $fc
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$03
    db $fc
    nop
    rra
    ld hl, sp+$01
    rst $38
    add b
    ld a, a
    ldh a, [rTAC]
    ldh a, [rP1]
    rst $38
    ldh [rTAC], a
    cp $01
    rst $38
    add b
    rra
    ret nz

    inc bc
    rst $38
    nop
    ccf
    ld hl, sp+$07
    cp $00
    ld a, a
    nop
    rrca
    db $fc
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$01
    db $fc
    nop
    ccf
    ld hl, sp+$03
    rst $38
    add b
    ld a, a
    ldh [rTAC], a
    ldh a, [rP1]
    rst $38
    ldh [rIF], a
    cp $01
    rst $38
    add b
    rra
    ret nz

    inc bc
    rst $38
    add b
    rra
    ld hl, sp+$07
    rst $38
    nop
    ccf
    add b
    rrca
    cp $00
    ld a, a
    ldh a, [rIF]
    db $fc
    nop
    cp $00
    rra
    db $fc
    nop
    rst $38
    ret nz

    rra
    ld hl, sp+$01
    db $fc
    nop
    ld a, a
    ldh a, [$03]
    rst $38
    add b
    ld a, a
    ldh a, [$03]
    ldh a, [rP1]
    rst $38
    ldh [rTAC], a
    rst $38
    nop
    ld a, a
    ldh [rTAC], a
    ldh [rSB], a
    rst $38
    ret nz

    rlca
    cp $00
    rst $38
    ret nz

    rrca
    ret nz

    inc bc
    rst $38
    add b
    rrca
    cp $01
    rst $38
    add b
    rrca
    add b
    rlca
    rst $38
    nop
    rra
    db $fc
    inc bc
    rst $38
    nop
    rra
    nop
    rrca
    rst $38
    nop
    rra
    ld hl, sp+$03
    rst $38
    nop
    rra
    nop
    rrca
    cp $00
    ccf
    ld hl, sp+$07
    rst $38
    nop
    rra
    nop
    rra
    cp $00
    ccf
    ld hl, sp+$07
    cp $00
    ld a, $00
    rra
    db $fc
    nop
    ld a, a
    ldh a, [rIF]
    cp $00
    ld a, $00
    rra
    db $fc
    nop
    ld a, a
    ldh a, [rIF]
    cp $00
    rra
    nop
    ccf
    db $fc
    nop
    ld a, a
    ldh a, [rIF]
    cp $00
    ld e, $00
    ccf
    db $fc
    nop
    ld a, a
    ldh a, [rIF]
    cp $00
    ld e, $00
    ccf
    db $fc
    nop
    ld a, a
    ldh a, [rIF]
    cp $00
    ld e, $00
    ccf
    db $fc
    nop
    ld a, a
    ldh a, [rIF]
    cp $00
    ld e, $00
    ccf
    db $fc
    nop
    ld a, a
    ldh a, [rIF]
    cp $00
    ld e, $00
    ccf
    db $fc
    nop
    ld a, a
    ld hl, sp+$0f
    cp $00
    ld e, $00
    ccf
    db $fc
    nop
    ld a, a
    ld hl, sp+$0f
    cp $00
    ld e, $00
    ccf
    db $fc
    nop
    ld a, a
    ld hl, sp+$0f
    cp $00
    ld c, $00
    ccf
    db $fc
    nop
    ld a, a
    ld hl, sp+$0f
    cp $00
    ld c, $00
    ccf
    cp $00
    ccf
    db $fc
    rrca
    rst $38
    nop
    rrca
    nop
    rra
    cp $00
    ccf
    db $fc
    rlca
    rst $38
    nop
    rlca
    nop
    rra
    cp $00
    rra
    db $fc
    rlca
    rst $38
    nop
    rlca
    nop
    rrca
    rst $38
    nop
    rra
    cp $03
    rst $38
    add b
    inc bc
    add b
    rrca
    rst $38
    add b
    rrca
    rst $38
    ld bc, $c0ff
    ld bc, $07c0
    rst $38
    add b
    rlca
    rst $38
    pop bc
    rst $38
    ldh [rP1], a
    ret nz

    inc bc
    rst $38
    ldh [$03], a
    rst $38
    ldh [$7f], a
    ldh a, [rP1]
    nop
    ld bc, $f0ff
    ld bc, $f0ff
    ccf
    db $fc
    nop
    nop
    nop
    ld a, a
    ld hl, sp+$00
    ld a, a
    db $fc
    rra
    cp $00
    nop
    nop
    ccf
    db $fc
    nop
    ccf
    cp $0f
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    nop
    rrca
    rst $38
    add a
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    add b
    rlca
    rst $38
    ret nz

    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    ldh [rSB], a
    rst $38
    ldh a, [$7f]
    ld hl, sp+$00
    nop
    nop
    rst $38
    ld hl, sp+$00
    rst $38
    db $fc
    ccf
    cp $00
    nop
    nop
    ccf
    cp $00
    ccf
    rst $38
    rlca
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    nop
    rrca
    rst $38
    jp $e0ff


    nop
    nop
    inc bc
    rst $38
    ldh [$03], a
    rst $38
    ld hl, sp-$01
    db $fc
    nop
    nop
    nop
    rst $38
    ld hl, sp+$00
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    rra
    cp $00
    rra
    rst $38
    rst $08
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    ret nz

    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ccf
    cp $00
    rra
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    ret nz

    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    ld hl, sp+$00
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    nop
    rra
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    ldh [$03], a
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    db $fc
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rra
    rst $38
    add b
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    ld bc, $f0ff
    ld bc, $ffff
    rst $38
    cp $00
    nop
    nop
    ld a, a
    cp $00
    rra
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    rlca
    rst $38
    ret nz

    inc bc
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    db $fc
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ccf
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    ld a, a
    rst $38
    nop
    rra
    rst $38
    rst $38
    rst $28
    ret nz

    nop
    nop
    rlca
    rst $38
    ldh a, [rSB]
    rst $38
    rst $38
    db $fc
    ret nc

    nop
    nop
    ld bc, $feff
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
    ldh [rSB], a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $feff
    nop
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rra
    rst $38
    ldh [rSB], a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [$1f], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    cp $00
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp-$71
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
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    rst $38
    rst $38
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
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $ffff
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
    ldh a, [rP1]
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
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
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
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
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

Call_037_630c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    call nc, RST_00
    nop
    nop
    inc l
    xor d
    dec c
    ret z

    dec l
    push bc
    ld d, e
    and d
    and b
    stop
    ld d, c
    ld d, l
    ld [hl], e
    rst $28
    cp a
    ld a, a
    jp c, $85c9

    ld d, h
    ld e, h
    sub a
    ld b, l
    db $ed
    ld l, l
    ld d, l
    ld a, [hl-]
    db $d3
    ld l, d
    xor d
    sub [hl]
    and d
    xor e
    ld l, d
    cp d
    ld d, d
    ld d, l
    ld e, c
    ld d, l
    ld a, [hl-]
    or l
    ld d, h
    db $ed
    ld d, d
    xor d
    db $ed
    sbc l
    ld d, l
    ld e, d
    ld d, [hl]
    xor b
    and l
    ld l, c
    xor l
    ld d, l
    ld d, l
    ld [hl], $ca
    sbc c
    dec h
    ld l, h
    or l
    ld d, l
    ld l, b
    db $db
    ld d, [hl]
    sub l
    ld c, d
    adc d
    or h
    xor d
    push de
    xor d
    xor d
    sub l
    ld c, l
    ld e, d
    push de
    dec l
    ld e, d
    or l
    sub [hl]
    jp nc, Jump_037_558a

    xor l
    ld e, d
    sub d
    and [hl]
    sbc e
    dec l
    ld c, b
    call z, Call_037_5a2b
    and [hl]
    xor l
    dec [hl]
    ld e, d
    ld d, l
    xor l
    ld b, a
    ld d, d
    ld e, d
    ld d, [hl]
    sbc d
    ld c, d
    sub h
    sub [hl]
    push de
    ld l, c
    dec l
    ld h, d
    ld d, d
    call nc, $69a5
    ld h, $96
    or l
    ld c, e
    ld e, d
    or [hl]
    sub l
    xor e
    ld d, d
    db $ed
    xor e
    ld c, c
    or h
    sbc d
    ld e, d
    call z, Call_037_53ab
    ld b, [hl]
    sub $96
    sub $9a
    ld h, l
    and l
    dec l
    or d
    ret


    ld l, l
    inc h
    sub c
    sub d
    jp c, $a46a

    sub e
    ld d, $da
    ld l, l
    add hl, sp
    ld c, c
    ld h, [hl]
    jp nc, Jump_000_364d

    jp c, Jump_037_5bd2

    ld l, l
    and h
    sub e
    ld l, c
    bit 5, l
    sbc d
    push bc
    ld e, c
    ld a, [de]
    ld d, [hl]
    ld e, e
    ld l, l
    or d
    db $dd
    or h
    db $db
    ld c, c
    inc [hl]
    sub d
    ld c, c
    ld l, [hl]
    jp c, Jump_037_4956

    inc h
    or [hl]
    jp nc, Jump_037_6d49

    dec h
    or d
    ld c, c
    ld l, c
    ld l, d
    sub d
    sub l
    or l
    ld e, c
    add hl, sp
    inc l
    and d
    ld e, e
    ld e, d
    ld h, h
    sbc c
    ld h, h
    db $d3
    adc h
    jp nc, $2549

    or d
    ld c, d
    adc l
    ld h, $1a
    ld c, l
    or [hl]
    sub l
    ld l, c
    ld a, [hl+]
    ld c, b
    or [hl]
    push de
    ld l, c
    add hl, hl
    dec [hl]
    or [hl]
    and $db
    ld l, l
    ld h, $92
    ld c, c
    dec h
    and h
    xor a
    or [hl]
    db $db
    ld l, l
    ld b, $38
    db $e4
    sub d
    ld c, c
    xor l
    or [hl]
    db $db
    dec h
    sub $9a
    ld l, h
    sub b
    inc h
    sub d
    ld c, c
    ld [hl], $ef
    or [hl]
    rst $30
    ld c, l
    and e
    ld c, c
    nop
    inc b
    sub d
    ld c, h
    ccf
    sbc $ff
    rst $38
    ld l, l
    ld [hl-], a
    ret z

    nop
    nop
    nop
    nop
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    ld [hl], h
    add b
    ld [$0000], sp
    ld b, $df
    rst $38
    rst $38
    rst $38
    db $db
    inc h
    reti


    inc h
    sub d
    nop
    ld [de], a
    ld l, a
    rst $38
    rst $38
    rst $38
    db $fd
    xor [hl]
    and b
    jr nz, jr_037_64a6

    nop
    add hl, bc
    daa
    rst $38
    rst $38
    rst $38
    cp $e5
    add b
    ret nz

    nop
    nop
    nop
    inc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    ld a, [de]
    nop
    jr nz, jr_037_647d

jr_037_647d:
    nop
    dec b
    rst $38
    rst $38
    rst $38
    cp $fb
    and h
    adc b
    nop
    nop
    nop
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, d
    sub d

jr_037_6490:
    add b
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    rst $38
    jp nz, Jump_000_1600

    jr nz, jr_037_649d

jr_037_649d:
    nop
    ld bc, $ffbf
    rst $38
    rst $38
    nop
    nop
    ld [hl+], a

jr_037_64a6:
    ld b, b
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ld a, [c]
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
    sbc b
    nop
    stop
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
    rst $38
    or b
    jr nz, jr_037_6490

    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    add b
    rra
    db $fc
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rBGP]
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    ld [bc], a
    ld a, a
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$03
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    rst $38
    nop
    rra
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    ret nz

    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [$03], a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$01
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    cp $00
    ccf
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    rst $38
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
    ldh [$03], a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    ld bc, $ffff
    ldh a, [rSB]
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    ccf
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    rlca
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld bc, $ffff
    ldh [rP1], a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    ccf
    rst $38
    cp $00
    nop
    nop
    rra
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    ret nz

    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    rra
    rst $38
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    ld bc, $ffff
    ret nz

    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    cp $00
    nop
    nop
    rlca
    rst $38
    cp $00
    rrca
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
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    db $fc
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    add b
    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    cp $00
    rrca
    rst $38
    cp $00
    nop
    nop
    rlca
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    ldh [rP1], a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    db $fc
    nop
    rra
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    nop
    rlca
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf
    rst $38
    ld hl, sp+$00
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    ret nz

    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rSB], a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    db $fc
    nop

Call_037_670c:
    ccf
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    add b
    rlca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rSB], a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    cp $00
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rSB]
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    rrca
    rst $38
    cp $00
    rra
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    ldh [rSB], a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rSB]
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [$1f]
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [$7f], a
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    rlca

Call_037_67e0:
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ld hl, sp+$0f
    rst $38
    cp $00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [$3f], a
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    db $fc
    ld bc, $ffff
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$01
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [$03]
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [$03]
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rSB], a
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    cp $00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    cp $00
    inc bc
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ccf
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
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    cp $00
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rSB], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc bc
    rst $38
    rst $38
    db $fc
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    add b
    ld bc, $ffff
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    rra
    rst $38
    cp $00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    ld bc, $ffff
    ldh a, [rP1]
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    cp $00
    rlca
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
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    cp $00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
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
    nop
    ld bc, $ffff
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld a, a
    rst $38
    cp $00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    db $fc
    nop
    rlca
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
    add b
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    rra
    rst $38
    cp $00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ccf
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    rlca
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
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
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
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
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    cp $00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, a
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
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
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
    add b
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    inc bc
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
    ldh [rP1], a
    rra
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
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    db $fc
    nop
    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rrca
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
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
    add b
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    inc bc
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
    ldh a, [rP1]
    rrca
    rst $38
    cp $00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    ccf
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
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
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rra
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
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
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
    ret nz

    nop
    ccf
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
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    rrca
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
    ret nz

    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    cp $00
    ld bc, $ffff
    ret nz

    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    rra
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
    add b
    nop
    ld a, a
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    cp $00
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
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
    ld h, b
    rlca
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
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ld hl, sp+$00
    ld a, a
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    db $fc
    ld bc, $ffff
    ld hl, sp+$00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    db $e4
    dec de
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
    or c
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
    ld b, a
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    db $fd
    cp a
    cp a
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ei
    cp a
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
    rst $38
    ld sp, hl
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
    db $fc
    nop
    nop

Jump_037_6d49:
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
    ret nc

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
    ld hl, sp+$00
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
    ldh a, [rP1]
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
    rlca
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
    ret z

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
    db $eb
    db $eb
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld hl, $ffdf
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    jp Jump_000_00e0


    nop
    nop
    nop
    db $10
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp Jump_000_00c0


    ld bc, $1187
    ld a, a
    ld a, a
    ld [bc], a
    xor [hl]
    ld bc, $036e
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
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
    rra
    rst $38
    rst $38
    cp $00
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
    db $fc
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld a, a
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
    ldh [rP1], a
    nop
    ld bc, $ffff
    rst $38
    ret nz

    nop
    nop
    ld de, $ffff
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
    inc bc
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
    ret nz

    nop
    nop
    inc bc
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
    ldh [rP1], a
    nop
    ld bc, $ffdf
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $18
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld [hl], a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld l, a
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $18
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    scf
    rst $38
    rst $38
    cp $00
    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    inc bc
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld l, a
    rst $38
    rst $38
    cp $00
    nop
    nop
    dec c
    rst $38
    rst $38
    rst $38
    sub b
    nop
    nop
    ld bc, $ff3f
    rst $38
    rst $38
    nop
    nop
    nop
    ld hl, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    cp $00

Call_037_6f0e:
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rlca
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
    ldh a, [rP1]
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
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
    ld bc, $ffff
    rst $38
    ret nz

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
    ld a, a
    rst $38
    rst $38
    ldh a, [rP1]
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
    rrca
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
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc bc
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
    ret nz

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
    nop
    rrca
    rst $38
    rst $38
    cp $00
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
    ccf
    rst $38
    rst $38
    ld hl, sp+$00
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
    ldh a, [rP1]
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
    ld hl, sp+$00
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
    ccf
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
    cp $00
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
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
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
    cp $00
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
    nop
    nop
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
    ld hl, sp+$00
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
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
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
    dec b
    rst $38
    rst $38
    rst $38
    add b
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
    rra
    rst $38
    rst $38
    cp $00
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
    nop
    rra
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
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
    inc bc
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
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
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
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ld bc, $ffff
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
    nop
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
    ld bc, $ffff
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
    add b
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
    ld hl, sp+$00
    nop
    nop
    nop
    ld bc, $ff7f
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    dec b
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $ff7f
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    inc bc
    ccf
    rst $38
    rst $38
    cp $30
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4880
    scf
    rst $38
    cp $7f
    or b
    ld c, a
    inc bc
    pop hl
    ldh [$e0], a
    ld h, b
    ld a, b
    inc a
    cp $7f
    ld c, $02
    nop
    nop
    nop
    ld a, a
    rst $38
    ldh [$3f], a
    rst $38
    rst $38
    ret nz

    nop
    inc bc
    rst $38
    ld hl, sp+$00
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    rra
    rst $38
    add b
    rlca
    rst $38
    pop hl
    rst $38
    ldh [rP1], a
    nop
    rra
    rst $38
    nop
    rrca
    rst $38
    ld bc, $c0ff
    nop
    nop
    rrca
    rst $38
    add b
    rrca
    db $fc
    ld bc, $c0ff
    inc bc
    add b
    rlca
    rst $38
    ret nz

    rrca
    cp $01
    rst $38
    ldh [$03], a
    ldh [rSB], a
    rst $38
    ldh [$03], a
    rst $38
    nop
    ld a, a
    ldh a, [rSB]
    ldh a, [rP1]
    rst $38
    ldh a, [$03]
    rst $38
    add b
    ccf
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, a
    ld hl, sp+$01
    rst $38
    ret nz

    rra
    db $fc
    nop
    db $fc
    nop
    ccf
    db $fc
    nop
    rst $38
    ldh [rIF], a
    db $fc
    nop
    ld a, [hl]
    nop
    rra
    cp $00
    ld a, a
    ldh [rTAC], a
    cp $00
    ld a, $00
    rrca
    cp $00
    ccf
    ldh a, [rTAC]
    rst $38
    nop
    rra
    nop
    rrca
    rst $38
    nop
    rra
    ldh a, [$03]
    rst $38
    add b
    rrca
    nop
    rrca
    rst $38
    nop
    rrca
    ld hl, sp+$03
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    nop
    rrca
    rst $38
    inc bc
    rst $38
    ret nz

    nop
    nop
    rrca
    rst $38
    nop
    rrca
    rst $38
    inc bc
    rst $38
    ret nz

    nop
    nop
    rra
    cp $00
    rra
    rst $38
    inc bc
    rst $38
    ret nz

    nop
    nop
    ccf
    cp $00
    rra
    rst $38
    rlca
    rst $38
    ret nz

    nop
    nop
    ld a, a
    cp $00
    rra
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    nop
    ld c, $7f
    rst $38
    cp $00
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    rst $38
    cp $00
    nop
    ld bc, $ffff
    ld sp, hl
    ldh a, [rP1]
    ld a, a
    cp $00
    nop
    nop
    inc bc
    pop hl
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
    ldh a, [rP1]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_7754:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    xor d
    ld a, [hl+]
    ld a, [de]
    sbc l
    ld d, [hl]
    xor e
    ld [$abaa], a
    add l
    ld b, $ea
    and [hl]
    sub l
    xor d
    xor d
    xor e
    rst $08
    ld d, l
    dec l
    sbc d
    xor d
    xor d
    ld h, l
    ld c, d
    ld d, [hl]
    xor l
    dec h
    ld c, c
    ld e, c
    and h
    or [hl]
    ld d, c
    ld d, c
    add hl, bc
    ld h, [hl]
    ld c, e
    dec h
    or [hl]
    jp c, $ada8

    ld h, l
    ld l, c
    sub h
    push de
    ld c, e
    ld l, d
    sbc e
    ld d, $5d
    db $d3
    dec h
    and l
    and l
    ld c, c
    ld [hl-], a
    ld c, l
    inc sp
    ld l, c
    ld c, d
    jp c, $a46d

    sub [hl]
    ld [hl+], a
    ld d, b
    or b
    sub e
    ld e, c
    dec l
    and [hl]
    ret nz

    rst $08
    or a
    rst $38
    xor $db
    ld b, e
    jr nc, jr_037_7754

    add hl, de
    sbc l
    rst $38
    cp a
    inc c
    ld h, d
    ld h, b
    and $77
    ld a, [hl]
    db $fc
    add hl, de
    call z, $8c83
    call c, $f1fb
    call z, Call_000_1c4c
    adc $e7
    sbc b
    add hl, de
    adc b
    add e
    sbc c
    db $dd
    rst $30
    ld b, $62
    ld [hl+], a
    rst $20
    ld [hl], a
    db $fc
    jp $9830


    ld [hl], e
    cp a
    rst $38
    ld h, b
    adc h
    ld h, [hl]
    ld e, h
    rst $28
    rst $38
    sbc b
    ld b, [hl]
    inc sp
    ld c, $77
    rst $38
    call z, Call_000_1963
    add a

jr_037_7804:
    dec sp
    rst $38
    ldh [$33], a
    add hl, bc
    or a
    dec sp
    rst $38
    ldh [$33], a
    add hl, bc
    cp a
    dec sp
    db $fc
    ldh [rNR44], a
    inc de
    ccf
    ld a, a
    ld sp, hl
    ret nz

    ld b, [hl]
    inc de
    ld a, $7f
    ldh a, [$c0]
    adc h
    ld h, $7c
    rst $38
    ldh [$83], a
    jr jr_037_7804

    ld sp, hl
    rst $30
    pop bc
    inc b
    ld h, e
    dec a
    rst $20
    db $db
    inc b
    ld de, $fb8c
    sbc a
    ld h, [hl]
    db $10
    add $37
    cp $79
    jr nc, jr_037_783f

    ld sp, $7b9f

jr_037_783f:
    call nz, Call_000_1980
    adc $ff
    rst $08
    jr nz, jr_037_7847

jr_037_7847:
    add $37
    xor $79
    nop
    ld b, $39
    rst $38
    ld a, c
    call nz, Call_000_1100
    rst $08
    ei
    adc $00
    nop
    adc $7f
    sbc $71
    ld [$7306], sp
    cp $f3
    add b
    ld b, b
    inc sp
    rst $18
    di
    adc [hl]
    inc bc
    ld bc, $7f9e
    sbc [hl]
    ld [hl], b
    jr @+$0e

    ld [hl], e
    cp $f1
    add b

jr_037_7873:
    ld h, b
    inc sp
    rst $18
    di
    add [hl]
    inc bc
    ld bc, $7f8f
    adc $10
    inc c
    ld b, $3f
    cp $78
    add b
    ld h, b
    jr @+$01

    ld sp, hl
    ld [c], a
    ld hl, $6380
    rst $38
    rst $30
    adc b
    jp nz, $8f01

    rst $38
    sbc $03
    ld [$3f07], sp
    rst $38
    inc a
    ld b, $20
    inc c
    ld a, a
    cp $79
    jr jr_037_78a2

jr_037_78a2:
    jr @+$01

    db $fd
    and $30
    nop
    ld sp, $fbff
    ret z

    ld h, b
    nop
    ld h, e
    rst $38
    rst $38
    jr c, jr_037_7873

    nop
    rst $00
    rst $38
    db $fc
    ld [hl], b
    add b
    ld bc, $ffcf
    db $fc
    ld h, c
    db $10
    ld bc, $ff9f
    ld hl, sp+$60
    nop
    ld bc, $ff9f
    ldh a, [$60]
    nop
    inc bc
    rra
    rst $38
    ldh a, [rLCDC]
    nop
    inc bc
    rra
    rst $38
    ldh a, [rLCDC]
    jr nc, jr_037_78d9

    rra

jr_037_78d9:
    rst $38
    ldh a, [rP1]
    jr nc, jr_037_78df

    rra

jr_037_78df:
    rst $38
    ldh a, [rP1]
    jr nc, jr_037_78e5

    sbc a

jr_037_78e5:
    rst $38
    ld hl, sp+$00
    jr c, jr_037_78ea

jr_037_78ea:
    adc a
    rst $38
    ld hl, sp+$00
    jr c, jr_037_78f0

jr_037_78f0:
    ld c, a
    rst $38
    db $fc
    nop
    inc e
    nop
    ld h, a
    rst $38
    cp $00
    ld c, $00
    inc de
    rst $38
    rst $38
    nop
    inc bc
    nop
    add hl, bc
    rst $38
    rst $38
    ret nz

    nop
    ret nz

    ld b, $7f
    rst $38
    ldh [rP1], a
    ld h, b
    ld bc, $ff9f
    ld hl, sp+$00
    jr jr_037_7915

jr_037_7915:
    daa
    rst $38
    cp $00
    inc bc
    nop
    ld bc, $ffff
    add b
    inc bc
    ret nz

    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ld a, b
    nop
    rrca
    rst $38
    db $fc
    nop
    ld c, $00
    inc bc
    rst $38
    rst $38
    nop
    inc bc
    ret nz

    nop
    ld a, a
    rst $38
    ldh [rP1], a
    ld hl, sp+$00
    rra
    rst $38
    db $fc
    nop
    rrca
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    ld bc, $00e0
    ccf
    rst $38
    db $fc
    nop
    ld c, $00
    inc bc
    rst $38
    rst $38
    add b
    nop
    ret nz

    nop
    ccf
    rst $38
    db $fc
    nop
    inc c
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    ret nz

    nop
    ccf
    rst $38
    db $fc
    nop
    ld [bc], a
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rra
    rst $38
    cp $00
    nop
    nop
    ld bc, $ffff
    ldh a, [rP1]
    stop
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    rrca
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ccf
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    ldh [rP1], a
    nop
    nop
    inc bc
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    add b
    nop
    jr nc, jr_037_79cd

jr_037_79cd:
    rrca
    rst $38
    rst $38
    nop
    nop
    ldh [rP1], a
    rra
    rst $38
    cp $00
    ld bc, $00e0
    rra
    rst $38
    db $fc
    nop
    inc bc
    ldh [rP1], a
    ccf
    rst $38
    db $fc
    nop
    rlca
    ldh [rP1], a
    rra
    rst $38
    db $fc
    nop
    rlca
    ldh [rP1], a
    rra
    rst $38
    db $fc
    nop
    inc bc
    ldh a, [rP1]
    rra
    rst $38
    cp $00
    ld bc, $00f8
    rrca
    rst $38
    cp $00
    nop
    ld hl, sp+$00
    rlca
    rst $38
    rst $38
    nop
    nop
    cp $00
    inc bc
    rst $38
    rst $38
    add b
    nop
    ld a, a
    nop
    ld bc, $ffff
    ret nz

    nop
    ccf
    add b
    nop
    rst $38
    rst $38
    ldh [rP1], a
    ccf
    ldh [rP1], a
    ccf
    rst $38
    ld hl, sp+$00
    rrca
    ldh a, [rP1]
    rrca
    rst $38
    db $fc
    nop
    rlca
    db $fc
    nop
    inc bc
    rst $38
    rst $38
    nop
    ld bc, $00ff
    ld bc, $ffff
    ret nz

    nop
    ld a, a
    ret nz

    nop
    ccf
    rst $38
    ldh a, [rP1]
    rra
    ldh a, [rP1]
    rrca
    rst $38
    cp $00
    rlca
    cp $00
    ld bc, $ffff
    add b
    nop
    rst $38
    ret nz

    nop
    ld a, a
    rst $38
    ldh a, [rP1]
    ccf
    ld hl, sp+$00
    rlca
    rst $38
    cp $00
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    ldh [rP1], a
    rra
    rst $38
    db $fc
    nop
    rra
    db $fc
    nop
    ld bc, $ffff
    ret nz

    ld bc, $c0ff
    nop
    rra
    rst $38
    db $fc
    nop
    rra
    db $fc
    nop
    ld bc, $ffff
    ld hl, sp+$01
    rst $38
    ret nz

    nop
    rrca
    rst $38
    rst $38
    ret nz

    inc bc
    db $fc
    nop
    nop
    rst $38
    rst $38
    db $fc
    nop
    ccf
    ldh [rP1], a
    ld b, $ff
    rst $38
    ldh [rSB], a
    rst $38
    nop
    nop
    ccf
    rst $38
    cp $00
    rrca
    ldh a, [rP1]
    inc bc
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    add b
    nop
    rra
    rst $38
    rst $38
    add b
    rlca
    db $fc
    nop
    nop
    rst $38
    rst $38
    ld hl, sp+$00
    ccf
    ldh [rP1], a
    rlca
    rst $38
    rst $38
    ret nz

    ld bc, $00ff
    nop
    ccf
    rst $38
    cp $00
    rrca
    ld hl, sp+$00
    ld bc, $ffff
    ld hl, sp+$00
    ccf
    ret nz

    nop
    rrca
    rst $38
    rst $38
    ret nz

    ld bc, $00fe
    nop
    ccf
    rst $38
    rst $38
    nop
    rlca
    ldh a, [rP1]
    ld bc, $ffff
    db $fc
    nop
    rla
    ret nz

    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    ld d, a
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
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
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
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
    ld bc, $ffff
    rst $38
    nop
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
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    dec de
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    scf
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
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
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
    ld bc, $ffff
    rst $38
    add b
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
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
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
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
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
    ld bc, $ffff
    rst $38
    add b
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
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
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
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ldh [rP1], a
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
    ld bc, $ffff
    rst $38
    add b
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
    nop
    rlca
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rrca
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
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, a
    rst $38

Call_037_7c77:
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    rrca
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
    db $fc
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
    add b
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
    ccf
    rst $38
    rst $38
    db $fc
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
    inc bc
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
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    inc bc
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
    add b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
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
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
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
    rrca
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
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
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
    rra
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
    db $fc
    nop
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
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
    rra
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
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rP1], a
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
    rrca
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
    db $fc
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
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    inc bc
    ld a, a
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    dec bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    rla
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    cpl
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ccf
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
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    dec bc
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
    ld hl, sp+$00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rra
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
    add b
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $ffff
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    rra
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
    add b
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
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $ffff
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    rlca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ccf
    rst $38
    rst $38
    add b
    nop
    nop
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

Jump_037_7ef0:
    ld hl, sp+$00
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc bc
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
    db $f4
    nop
    nop
    nop
    ld [bc], a
    ld a, a
    rst $38
    rst $38
    and b
    nop
    nop
    nop
    scf
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
    ret nc

    nop
    nop
    nop
    rra
    rst $38
    rst $38
    db $fd
    ret nz

    nop
    nop
    ld bc, $ffff
    rst $38
    rst $08
    ret nz

    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $30
    ldh a, [rP1]
    nop
    ld a, a
    rst $38
    rst $38
    ldh a, [$7c]
    nop
    nop
    rlca
    rst $38
    rst $38
    rst $38
    inc bc
    ld hl, sp+$00
    nop
    ccf
    rst $38
    rst $38
    add d
    rrca
    nop
    nop
    inc bc
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld bc, $ffff
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    cp $00
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_037_7ff8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
