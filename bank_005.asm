; disasSembly of "yell.gbc"
SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

    call Call_000_36c3
    ld de, $5018
    ld hl, $9600
    ld bc, $0412
    call Call_000_15fe
    ld de, $6a28
    ld hl, $9720
    ld bc, $0e01
    jp Jump_000_15fe


    call Call_005_4029
    ret c

    call Call_005_4061
    call Call_005_40b7
    call Call_005_4150
    ret


Call_005_4029:
    ld a, [$d35d]
    cp $25
    ret nc

    call Call_005_4193
    ld b, a
    ld a, [$cfc3]
    bit 0, a
    jr nz, jr_005_4040

    ld a, [$d3a7]
    cp b
    jr z, jr_005_405c

jr_005_4040:
    ld a, b
    ld [$d3a7], a
    dec a
    ld c, a
    ld b, $00
    ld a, $0b
    ld hl, $423b
    call Call_000_3a74
    ld de, $d39c
    ld bc, $000b
    call Call_000_00b1
    call Call_005_40b7

jr_005_405c:
    call Call_005_4150
    scf
    ret


Call_005_4061:
    ld hl, $d39c
    ld bc, $000b
    xor a
    call Call_000_166e
    ld a, $3d
    ld [$d39c], a
    ld hl, $c110
    ld a, $0e

jr_005_4075:
    push af
    ld a, [hl]
    and a
    jr z, jr_005_4092

    ld c, a
    call Call_005_40ac
    jr nc, jr_005_408a

    ld de, $d3a5
    ld b, $02
    call Call_005_409b
    jr jr_005_4092

jr_005_408a:
    ld de, $d39c
    ld b, $09
    call Call_005_409b

jr_005_4092:
    ld de, $0010
    add hl, de
    pop af
    dec a
    jr nz, jr_005_4075

    ret


Call_005_409b:
jr_005_409b:
    ld a, [de]
    and a
    jr z, jr_005_40a7

    cp c
    ret z

    dec b
    jr z, jr_005_40aa

    inc de
    jr jr_005_409b

jr_005_40a7:
    ld a, c
    ld [de], a
    ret


jr_005_40aa:
    scf
    ret


Call_005_40ac:
    cp $3d
    ret z

    cp $47
    jr nc, jr_005_40b5

    and a
    ret


jr_005_40b5:
    scf
    ret


Call_005_40b7:
    ld a, $00

jr_005_40b9:
    ldh [$8d], a
    cp $09
    jr nc, jr_005_40c7

    call Call_005_40e4
    call Call_005_40f5
    jr jr_005_40ca

jr_005_40c7:
    call Call_005_40e4

jr_005_40ca:
    ldh a, [$8d]
    inc a
    cp $0b
    jr nz, jr_005_40b9

    ret


    xor a

jr_005_40d3:
    ldh [$8d], a
    cp $09
    jr nc, jr_005_40dc

    call Call_005_40f5

jr_005_40dc:
    ldh a, [$8d]
    inc a
    cp $0b
    jr nz, jr_005_40d3

    ret


Call_005_40e4:
    ld a, [$cfc3]
    bit 0, a
    ret nz

    call Call_005_412e
    ret nc

    call Call_005_4108
    call Call_000_00c8
    ret


Call_005_40f5:
    call Call_005_412e
    ret nc

    ld hl, $00c0
    add hl, de
    ld d, h
    ld e, l
    call Call_005_4108
    set 3, h
    call Call_000_00c8
    ret


Call_005_4108:
    push bc
    ldh a, [$8d]
    ld c, a
    ld b, $00
    ld hl, $4118
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    ret


    ret nz

    add b
    add b
    add c
    ld b, b
    add d
    nop
    add e
    ret nz

    add e
    add b
    add h
    ld b, b
    add l
    nop
    add [hl]
    ret nz

    add [hl]
    add b
    add a
    ret nz

    add a

Call_005_412e:
    ldh a, [$8d]
    ld e, a
    ld d, $00
    ld hl, $d39c
    add hl, de
    ld a, [hl]
    and a
    ret z

    dec a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $42a9
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    swap c
    inc hl
    ld b, [hl]
    inc hl
    scf
    ret


Call_005_4150:
    ld a, $01
    ld [$c20e], a
    ld a, $02
    ld [$c2fe], a
    ld a, $0e
    ld hl, $c110

jr_005_415f:
    ldh [$8d], a
    ld a, [hl]
    and a
    jr z, jr_005_416f

    call Call_005_4179
    push hl
    ld de, $010e
    add hl, de
    ld [hl], a
    pop hl

jr_005_416f:
    ld de, $0010
    add hl, de
    ldh a, [$8d]
    dec a
    jr nz, jr_005_415f

    ret


Call_005_4179:
    push de
    push bc
    ld c, a
    ld b, $0b
    ld de, $d39c

jr_005_4181:
    ld a, [de]
    cp c
    jr z, jr_005_418d

    inc de
    dec b
    jr nz, jr_005_4181

    ld a, $01
    jr jr_005_4190

jr_005_418d:
    ld a, $0d
    sub b

jr_005_4190:
    pop bc
    pop de
    ret


Call_005_4193:
    ld e, a
    ld d, $00
    ld hl, $41e6
    add hl, de
    ld a, [hl]
    cp $f0
    ret c

    cp $f8
    jr z, jr_005_41c4

    ld hl, $420b
    and $0f
    dec a
    add a
    add a
    add l
    ld l, a
    jr nc, jr_005_41af

    inc h

jr_005_41af:
    ld a, [hl+]
    cp $01
    ld a, [hl+]
    ld b, a
    jr z, jr_005_41bb

    ld a, [$d360]
    jr jr_005_41be

jr_005_41bb:
    ld a, [$d361]

jr_005_41be:
    cp b
    jr c, jr_005_41c2

    inc hl

jr_005_41c2:
    ld a, [hl]
    ret


jr_005_41c4:
    ld hl, $d361
    ld a, [hl]
    cp $2b
    ld a, $01
    ret c

    ld a, [hl]
    cp $3e
    ld a, $0a
    ret nc

    ld a, [hl]
    cp $37
    ld b, $08
    jr nc, jr_005_41dc

    ld b, $0d

jr_005_41dc:
    ld a, [$d360]
    cp b
    ld a, $0a
    ret c

    ld a, $01
    ret


    ld bc, $0201
    ld [bc], a
    inc bc
    inc b
    dec b
    ld a, [bc]
    ld bc, $0706
    ld bc, $f101
    ld [bc], a
    ld [bc], a
    ld sp, hl
    ld a, [$fcfb]
    ld [bc], a
    ld a, [c]
    di
    db $f4
    ld [$f508], sp
    or $09
    rst $30
    ld a, [bc]
    ld hl, sp+$01
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    dec h
    ld [bc], a
    ld bc, $3202
    ld [bc], a
    inc bc
    ld bc, $0439
    ld [$1502], sp
    inc bc
    ld [$0801], sp
    ld a, [bc]
    ld [$1801], sp
    add hl, bc
    dec b
    ld bc, $0922
    ld a, [bc]
    ld bc, $0135
    ld a, [bc]
    ld [bc], a
    ld hl, $0702
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    ld bc, $0511
    rlca
    ld bc, $0703
    inc bc
    dec a
    ld [bc], a
    inc b
    dec c
    cpl
    rlca
    dec bc
    inc bc
    ld [hl+], a
    ld b, a
    ld d, d
    dec a
    inc b
    jr @+$0e

    ld c, $02
    ld a, $06
    rlca
    ld b, a
    ld d, c
    dec a
    ld [$0c0d], sp
    ld c, $0b
    dec b
    ld b, $07
    ld b, a
    ld d, c
    dec a
    ld a, $0c
    inc b
    dec bc
    dec b
    inc de
    ld b, $07
    ld b, a
    ld d, c
    dec a
    ld [$0d35], sp
    cpl
    ld a, [bc]
    dec h
    dec b
    jr jr_005_42b8

    ld c, l
    dec a
    inc h
    dec b
    ld [bc], a
    ld b, $07
    ld [hl+], a
    ld sp, $470b

Call_005_427c:
    ld d, c
    dec a
    jr jr_005_42a0

    inc l
    dec de
    db $10
    add hl, bc
    ld hl, $4707
    ld d, c
    dec a
    ld [de], a
    inc c
    ld a, [bc]
    ld b, $07
    rrca
    cpl
    ld hl, $4d47
    dec a
    ld [de], a
    rlca
    inc l
    cpl
    ld hl, $0b0e
    ld a, [bc]
    ld b, a
    ld c, l
    dec a
    rlca

jr_005_42a0:
    ld b, h
    cpl
    dec bc
    dec b
    inc a
    ld [hl+], a
    inc b
    ld b, a
    ld c, b
    ld [hl], c
    ld b, l
    ret nz

    dec b
    pop af
    ld b, [hl]
    ret nz

    dec b
    ld [hl], c
    ld c, b
    ret nz

    dec b
    pop af
    ld c, c
    ret nz

jr_005_42b8:
    dec b
    ld [hl], c
    ld c, e
    ret nz

    dec b
    pop af
    ld c, h
    ret nz

    dec b
    ld [hl], c
    ld c, [hl]
    ret nz

    dec b
    pop af
    ld c, a
    ret nz

    dec b
    ld [hl], c
    ld d, c
    ret nz

    dec b
    pop af
    ld d, d
    ret nz

    dec b
    ld [hl], c
    ld d, h
    ret nz

    dec b
    pop af
    ld d, l
    ret nz

    dec b
    ld [hl], c
    ld d, a
    ret nz

    dec b
    pop af
    ld e, b
    ret nz

    dec b
    ld [hl], c
    ld e, d
    ret nz

    dec b
    pop af
    ld e, e
    ret nz

    dec b
    ld [hl], c
    ld e, l
    ret nz

    dec b
    pop af
    ld e, [hl]
    ret nz

    dec b
    ld [hl], c
    ld h, b
    ret nz

    dec b
    pop af
    ld h, c
    ret nz

    dec b
    ld [hl], c
    ld h, e
    ret nz

    dec b
    ld sp, $c064
    dec b
    or c
    ld h, l
    ret nz

    dec b
    ld sp, $c067
    dec b
    or c
    ld l, b
    ret nz

    dec b
    ld sp, $c06a
    dec b
    or c
    ld l, e
    ret nz

    dec b
    ld sp, $c06d
    dec b
    or c
    ld l, [hl]
    ret nz

    dec b
    ld sp, $c070
    dec b
    ld [hl], c
    ld b, l
    ret nz

    dec b
    ld h, l
    ld h, e
    ret nz

    inc b
    push hl
    ld h, h
    ret nz

    inc b
    ld h, l
    ld h, [hl]
    ret nz

    inc b
    push hl
    ld h, a
    ret nz

    inc b
    and l
    ld l, b
    ret nz

    inc b
    ld h, l
    ld l, c
    ret nz

    inc b
    dec h
    ld l, d
    ret nz

    inc b
    push hl
    ld l, d
    ret nz

    inc b
    and l
    ld l, e
    ret nz

    inc b
    ld h, l
    ld l, h
    ret nz

    inc b
    ld h, l
    ld l, l
    ret nz

    inc b
    dec h
    ld l, [hl]
    ret nz

    inc b
    push hl
    ld l, [hl]
    ret nz

    inc b
    and l
    ld l, a
    ret nz

    inc b
    ld h, l
    ld [hl], b
    ret nz

    inc b
    dec h
    ld [hl], c
    ret nz

    inc b
    and l
    ld [hl], d
    ret nz

    inc b
    dec h
    ld [hl], h
    ret nz

    inc b
    ld [hl], c
    ld b, l
    ret nz

    dec b
    or c
    ld [hl], c
    ret nz

    dec b
    ld [hl], c
    ld [hl], d
    ret nz

    dec b
    ld sp, $c073
    dec b
    ld [hl], c
    ld b, l
    ret nz

    dec b
    pop af
    ld [hl], e
    ret nz

    dec b
    or c
    ld [hl], h
    ret nz

    dec b
    ld sp, $c076
    dec b
    or c
    ld [hl], a
    ret nz

    dec b
    ld sp, $c079
    dec b
    or c
    ld a, d
    ret nz

    dec b
    rst $28
    ld h, a
    ret nz

    ccf
    ld l, a
    ld h, [hl]
    ret nz

    ccf
    ld l, a
    ld l, c
    ret nz

    ccf
    cpl
    ld l, d
    ret nz

    ccf
    rst $28
    ld l, d
    ret nz

    ccf
    xor a
    ld l, e
    ret nz

    ccf
    ld l, a
    ld l, h
    ret nz

    ccf
    cpl
    ld l, l
    ret nz

    ccf
    ld l, a
    ld l, a
    ret nz

    ccf
    rst $28
    ld [hl], b
    ret nz

    ccf
    push hl
    ld [hl], h
    ld b, b
    inc b
    dec h
    ld [hl], l
    ld b, b
    inc b
    ld h, l
    ld [hl], l
    ld b, b
    inc b
    and l
    ld [hl], l
    ld b, b
    inc b
    push hl
    ld [hl], l
    ld b, b
    inc b
    dec h
    db $76
    ld b, b
    inc b
    ld h, l
    db $76
    ld b, b
    inc b
    and l
    db $76
    ld b, b
    inc b
    and l
    db $76
    ld b, b
    inc b
    push hl
    db $76
    ld b, b
    inc b
    push hl
    db $76
    ld b, b
    inc b
    push hl
    db $76
    ld b, b
    inc b
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    dec sp
    inc a
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ccf
    ld [hl-], a
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp-$24
    inc a
    db $fc
    db $ec
    cp $0a
    cp $42
    db $fc
    ld c, h
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    ld a, $3f
    ld [de], a
    rra
    ld c, $0f
    ld [bc], a
    inc bc
    ld bc, $7c01
    sbc h
    cp $f2
    cp $f2
    ld a, h
    db $fc
    ld c, b
    ld hl, sp+$70
    ldh a, [rLCDC]
    ret nz

    add b
    add b
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    jr c, @+$41

    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ccf
    inc sp
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp+$1c
    db $fc
    db $fc
    db $fc
    cp $fa
    cp $f2
    db $fc
    call z, $2c3f
    dec sp
    ccf
    jr jr_005_4476

    inc l
    ccf
    daa
    ccf
    ld e, $1f
    ld [bc], a
    inc bc
    ld bc, $fc01
    inc [hl]
    call c, Call_000_18fc
    ld hl, sp+$34
    db $fc
    db $e4
    db $fc
    ld a, b
    ld hl, sp+$40
    ret nz

    add b
    add b
    rlca
    rlca
    ld [$0c0f], sp

jr_005_4476:
    dec bc
    ld e, $17
    rra
    add hl, de
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld [$f8f8], sp
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fe
    cp $fe
    cp $7e
    db $fc
    ld c, h
    ld hl, sp+$08
    dec e
    ld d, $1f
    rla
    rra
    add hl, de
    cpl
    add hl, sp
    ld e, a
    ld a, a
    ld e, [hl]
    ld a, a
    inc hl
    ccf
    inc e
    inc e
    db $f4
    inc a
    and $fe
    cp $fe
    ld [c], a
    cp $dd
    rst $38
    ld e, l
    rst $38
    ld [c], a
    cp $1c
    inc e
    rra
    rra
    jr nz, @+$41

    jr nz, @+$41

    ld [hl], a
    ld a, b
    ld a, a
    ld l, a
    rst $38
    and b
    rst $38
    add h
    ld a, a
    ld h, h
    ldh [$e0], a
    db $10
    ldh a, [rNR10]
    ldh a, [$b8]
    ld a, b
    ld hl, sp-$28
    db $fc
    inc d
    db $fc
    add h
    ld hl, sp-$68
    ld a, h
    ld [hl], e
    rst $38
    sbc a
    rst $38
    sbc a
    ld a, h
    ld a, a
    inc a
    ccf
    inc h
    ccf
    inc e
    rra
    inc bc
    inc bc
    ld hl, sp+$38
    db $fc
    db $e4
    db $fc
    db $e4
    sbc b
    ld hl, sp-$20
    ldh [$80], a
    add b
    add b
    add b
    nop
    nop
    rra
    rra
    jr nz, jr_005_4534

    jr nz, @+$41

    ld [hl], b
    ld a, a
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    ld a, a
    ld h, a
    ldh [$e0], a
    db $10
    ldh a, [rNR10]
    ldh a, [$38]
    ld hl, sp-$08
    ld hl, sp-$04
    db $f4
    db $fc
    db $e4
    ld hl, sp-$68
    ld a, a
    ld e, b
    ld [hl], a
    ld a, a
    jr nc, jr_005_4556

    jr c, jr_005_4558

    ld e, a
    ld a, a
    ld c, h
    ld a, a
    inc [hl]
    scf
    inc bc
    inc bc
    ld hl, sp+$68
    cp b
    ld hl, sp+$28
    ld hl, sp+$48
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    add b
    add b
    nop
    nop
    rrca
    rrca
    db $10

jr_005_4534:
    rra
    jr @+$19

    inc a
    cpl
    ccf
    inc sp
    rra
    inc d
    rra
    inc d
    rra
    db $10
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp+$1c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    ldh a, [rNR10]
    dec sp
    inc l
    ccf
    cpl
    ccf

jr_005_4556:
    inc sp
    ld e, a

jr_005_4558:
    ld [hl], e
    cp a
    rst $38
    cp e
    rst $38
    ld b, [hl]
    ld a, a
    add hl, sp
    add hl, sp
    add sp, $78
    call z, $fcfc
    db $fc
    call nz, $bafc
    cp $fa
    cp $44
    db $fc
    ld hl, sp-$08
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    dec sp
    inc a
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$24
    inc a
    db $fc
    db $ec
    cp $0a
    cp $42
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    add hl, sp
    ccf
    ld d, $1f
    ld de, $0e1f
    ld c, $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $f2
    sbc h
    db $fc
    ld l, b
    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nc, jr_005_45fa

    jr c, @+$41

    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc e
    db $fc
    cp $fa
    cp $f2
    ccf
    inc sp
    inc a
    ccf
    ld a, e
    ld e, a
    ld a, c
    ld e, [hl]
    inc a
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    call z, $fc3c
    sbc $fa
    sbc [hl]
    ld a, d
    inc a
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr c, jr_005_4630

    ld a, h

jr_005_45fa:
    ld b, e
    ld sp, $1f3f
    inc d
    rra
    inc d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra

jr_005_4612:
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc b

jr_005_461c:
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    add sp, $78
    ret z

    ld hl, sp-$18
    jr c, jr_005_4612

    jr c, jr_005_461c

    ldh a, [rNR41]
    ldh [$c0], a

jr_005_4630:
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    dec sp
    inc a
    ccf
    ccf
    ld a, a
    ld d, b
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$24
    inc a
    db $fc
    db $fc
    cp $0a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    ccf
    dec de
    rra
    ld c, $0f
    add hl, bc
    rrca
    rlca
    rlca
    cp $42
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, $c878
    or b
    or b
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nc, jr_005_46bc

    jr c, @+$41

    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc e
    db $fc
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], e
    ld a, h
    ld e, a
    dec sp
    ccf
    add hl, de
    ld e, $0c
    rrca
    dec bc
    rrca
    rlca
    rlca
    cp $f2
    db $fc
    call z, $fc3c
    sbc $f2
    sbc [hl]
    ld [hl], d
    inc a
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr c, jr_005_46f2

    ld a, h

jr_005_46bc:
    ld b, e
    ld sp, $1f3f
    inc d
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc h
    ccf
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    add sp, $78
    add sp, -$08
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_005_4709

    inc bc

jr_005_46f2:
    inc bc
    ld a, h
    ld a, a

jr_005_46f5:
    ld b, b
    ld a, a
    ld [hl+], a
    ccf
    inc [hl]
    ccf
    ld a, l
    ld e, a
    ld a, a
    ld d, b
    ld l, a
    ld d, d
    ret nz

    ret nz

    jr nc, jr_005_46f5

    ld [$44f8], sp
    db $fc

jr_005_4709:
    call nz, $fefc
    ld a, [hl-]
    cp $0a
    or $4a
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, e
    ccf
    add hl, sp
    rla
    inc e
    ld de, $0e1f
    ld c, $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $d2
    db $fc
    sbc h
    add sp, $38
    adc b
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, jr_005_4778

    jr nz, jr_005_477a

    ld [hl], h
    ld e, a
    ld a, b
    ld e, a
    ld l, a
    ld e, a
    ret nz

    ret nz

    ld a, $fe
    ld [bc], a
    cp $04
    db $fc
    inc c
    db $fc
    ld e, $fa
    ld e, $fa
    or $fa
    ld a, a
    ld [hl], h
    ccf
    dec sp
    ld a, [hl]
    ld e, c
    ld a, a
    ld e, h
    ccf
    dec sp
    rla
    inc e
    ld de, $0e1f
    ld c, $fc
    inc l
    db $fc
    call c, $9a7e
    cp $3a
    db $fc
    call c, $38e8
    adc b
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    ld a, h
    ld a, a

jr_005_4775:
    ld b, b
    ld a, a
    ld [hl+], a

jr_005_4778:
    ccf
    inc [hl]

jr_005_477a:
    ccf
    rra
    rra
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    jr nc, jr_005_4775

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    cp b
    ld a, b

jr_005_478f:
    ld hl, sp+$48
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ld hl, sp+$68
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [$f0]
    jr nz, jr_005_478f

    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld a, h
    ld a, a

jr_005_47b7:
    ld b, b
    ld a, a
    ld [hl+], a
    ccf
    inc [hl]
    ccf
    ld a, l
    ld e, a
    ld a, a
    ld d, b
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_47b7

    ld [$44f8], sp
    db $fc
    call nz, $fefc
    ld a, [hl-]
    cp $0a
    ld l, a
    ld d, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rrca
    add hl, bc
    rrca
    ld c, $09
    rrca
    rlca
    rlca
    or $4a
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $fc
    db $f4
    ld hl, sp-$38
    ld hl, sp+$48
    or b
    or b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, jr_005_483a

    jr nz, jr_005_483c

    ld [hl], h
    ld e, a
    ld a, b
    ld e, a
    nop
    nop
    ret nz

    ret nz

    ld a, $fe
    ld [bc], a
    cp $04
    db $fc
    inc c
    db $fc
    ld e, $fa
    ld e, $fa
    ld l, h
    ld e, a
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    ccf
    dec sp
    ld e, $19
    rrca
    inc c
    dec bc
    rrca
    rlca
    rlca
    ld [hl], $fa
    db $fc
    call z, Call_000_3cfc
    cp $d2
    ld a, [hl]
    sub d
    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, h
    ld a, a

jr_005_4837:
    ld b, b
    ld a, a
    ld [hl+], a

jr_005_483a:
    ccf
    inc [hl]

jr_005_483c:
    ccf
    rra
    rra
    rra
    inc d
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_4837

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    cp b
    ld a, b
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc h
    ccf
    inc de
    rra
    ld c, $0e
    ld hl, sp+$48
    ldh a, [rNR10]
    ld hl, sp+$68
    ld hl, sp-$18
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_005_4889

    rlca
    rlca
    ccf
    jr c, jr_005_4895

    ld d, $1f
    add hl, de
    ccf
    jr nc, jr_005_48f7

    ld d, h
    ld a, [hl]
    ld b, e
    ld l, a
    ld d, d
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp+$18

jr_005_4889:
    db $fc
    inc c
    sbc $2a
    ld a, [hl]
    jp nz, Jump_005_4af6

    ccf
    jr nc, jr_005_4912

    ld l, c

jr_005_4895:
    rst $38
    sub a
    rst $38
    sub e
    ld a, [hl]
    ld [hl], e
    ccf
    inc hl
    rra
    rra
    ld a, $3e
    db $fc
    inc c
    ld a, [hl]
    sub [hl]
    rst $38
    jp hl


    rst $38
    ret


    ld a, [hl]
    adc $fc
    call nz, $f8f8
    ld a, h
    ld a, h
    rlca
    rlca
    rrca
    ld [$101f], sp
    rra
    db $10
    ccf
    jr nc, jr_005_493b

    ld d, b
    ld a, a
    ld c, b
    ld l, a
    ld d, h
    ldh [$e0], a
    db $fc
    inc e
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    cp $0a
    cp $12
    or $2a
    dec a
    inc sp
    ld a, a
    ld a, b
    ei
    or a
    rst $38
    or b
    ld a, a
    ld h, b
    dec a
    inc hl
    rra
    rra
    ld a, $3e
    cp h
    call z, $1efe
    rst $18
    db $ed
    rst $38
    dec c
    cp $06
    cp h
    call nz, $f8f8
    ld a, h
    ld a, h
    rlca
    rlca
    ccf
    jr c, jr_005_4975

    ld b, b

jr_005_48f7:
    ccf

Call_005_48f8:
    cpl
    ccf
    jr nc, jr_005_4919

    ld [de], a
    rla
    inc e
    rra
    inc d
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$78
    ld hl, sp+$48
    cp b
    ld c, b
    rra

jr_005_4912:
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca

jr_005_4919:
    dec b
    rlca
    rlca
    ld b, $07
    rlca
    rrca
    rrca
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp-$38
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ccf
    jr c, jr_005_4957

    ld d, $1f
    add hl, de

jr_005_493b:
    ccf
    jr nc, jr_005_49b9

    ld d, h
    ld a, [hl]
    ld b, e
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp+$18
    db $fc
    inc c
    sbc $2a
    ld a, [hl]
    jp nz, Jump_005_526f

    ccf
    jr nc, jr_005_49d4

    ld l, c

jr_005_4957:
    ld a, a
    ld d, a
    ld a, $23
    ccf
    daa
    rra
    rra
    rlca
    rlca
    or $4a
    db $fc
    inc c
    db $76
    sbc d
    cp $fa
    ld a, h
    db $e4
    db $fc
    db $e4
    ret c

    ret c

    add b
    add b
    nop
    nop
    rlca
    rlca

jr_005_4975:
    rrca
    ld [$101f], sp
    rra
    db $10
    ccf
    jr nc, @+$81

    ld d, b
    ld a, a
    ld c, b
    nop
    nop
    ldh [$e0], a
    db $fc
    inc e
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc c
    cp $0a
    cp $12
    ld l, a
    ld d, h
    dec a
    inc sp
    ld a, a
    ld e, b
    ld a, e
    ld [hl], a
    ccf
    jr nc, jr_005_49bb

    db $10
    ld e, $1f
    rrca
    rrca
    or $2a
    cp h
    call z, $1efe
    rst $18
    jp hl


    rst $38
    add hl, bc
    cp $0e
    or b
    ld [hl], b
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ccf
    jr c, jr_005_4a37

    ld b, b

jr_005_49b9:
    ccf
    cpl

jr_005_49bb:
    ccf
    jr nc, jr_005_49db

    ld [de], a
    rla
    inc e
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$78
    ld hl, sp+$48
    rra
    inc d
    rra

jr_005_49d4:
    db $10
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca

jr_005_49db:
    inc a
    ccf
    rra
    rra
    ld c, $0e
    cp b
    ld c, b
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ld hl, sp-$18
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    db $fc
    jr c, jr_005_4a29

    inc bc
    inc bc
    inc c
    rrca

jr_005_49f5:
    db $10
    rra
    ld hl, $233f
    ld a, $2f
    ld a, $7f
    ld d, b
    ld l, a
    ld d, d
    ret nz

    ret nz

    jr nc, jr_005_49f5

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $f4
    db $fc
    cp $0a
    or $4a
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, c
    dec sp
    inc a
    rra
    rra
    dec de
    rla
    ld c, $0e
    db $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $92

jr_005_4a29:
    call c, $f83c
    ld hl, sp-$28
    add sp, $70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_005_4a35:
    db $10
    rra

jr_005_4a37:
    jr nz, @+$41

    jr nz, jr_005_4a7a

    jr nz, jr_005_4a7c

    ld h, b
    ld a, a
    ld a, b
    ld e, a
    ret nz

    ret nz

    jr nc, jr_005_4a35

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld b, $fe
    ld e, $fa
    ccf
    scf
    ccf
    jr c, jr_005_4ad5

    ld e, a
    ld a, a
    ld d, b
    dec sp
    inc a
    rra
    rra
    dec de
    rla
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    cp $fa
    cp $0a
    call c, $f83c
    ld hl, sp-$28
    add sp, $70
    ld [hl], b
    inc bc
    inc bc
    inc c
    rrca

jr_005_4a75:
    db $10
    rra
    jr z, jr_005_4ab8

    inc a

jr_005_4a7a:
    scf
    rra

jr_005_4a7c:
    inc de
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    jr nc, jr_005_4a75

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    ld hl, sp+$78
    cp b
    ld c, b
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $05
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ld h, b
    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_4ab7:
    db $10

jr_005_4ab8:
    rra
    ld hl, $233f
    ld a, $2f
    ld a, $7f
    ld d, b
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_4ab7

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $f4
    db $fc
    cp $0a
    ld l, a
    ld d, d
    ld a, a
    ld [hl], d

jr_005_4ad5:
    ld a, [hl]
    ld e, c
    ccf
    ccf
    ld c, $09
    rrca
    ld c, $0d
    dec bc
    rlca
    rlca
    or $4a
    db $fc
    ld c, h
    ld a, h
    sbc h
    db $fc
    db $f4
    ld a, b
    ret z

    ld hl, sp+$48
    or b
    or b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c

Jump_005_4af6:
    rrca

jr_005_4af7:
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_005_4b3c

    jr nz, jr_005_4b3e

    ld h, b
    ld a, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_4af7

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld b, $fe
    ld a, b
    ld e, a
    ld a, a
    ld [hl], a
    ld a, a
    ld e, b
    ccf
    scf
    rra
    jr jr_005_4b39

    ld e, $1b
    rla
    ld c, $0e
    ld e, $fa
    cp $ea
    db $fc
    inc e
    cp $f2
    cp $12
    db $fc
    ld a, h
    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_4b37:
    db $10
    rra

jr_005_4b39:
    jr z, jr_005_4b7a

    inc a

jr_005_4b3c:
    scf
    rra

jr_005_4b3e:
    inc de
    rra
    inc d
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_4b37

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    ld hl, sp+$78
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    inc e
    scf
    ld l, $13
    rra
    ld c, $0e
    cp b
    ld c, b
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $f4
    sbc h
    db $f4
    db $ec
    jr jr_005_4b89

    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, @+$31

    inc d

jr_005_4b7a:
    rra
    daa
    ld a, $20
    ccf
    dec e
    ld e, $80
    add b

jr_005_4b83:
    cp $7e
    sbc $72
    inc c
    db $f4

jr_005_4b89:
    jr z, jr_005_4b83

    db $e4
    ld a, h
    inc b
    db $fc
    cp b
    ld a, b
    cpl
    dec sp
    ld d, a
    ld a, h
    sub e
    rst $38
    ld [hl], a
    ld a, b
    rra
    jr jr_005_4bcb

    inc a
    scf
    dec hl
    inc e
    inc e
    db $f4
    call c, Call_000_3eea
    ret


    rst $38
    xor $1e
    ld hl, sp+$18
    db $f4
    inc a
    db $ec
    call nc, Call_000_3838
    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, jr_005_4be8

    ld de, $201e
    ccf
    ld hl, $1c3e
    rra
    add b
    add b
    cp $7e
    sbc $72
    inc c
    db $f4

jr_005_4bc9:
    adc b
    ld a, b

jr_005_4bcb:
    inc b
    db $fc
    add h
    ld a, h
    jr c, jr_005_4bc9

    dec hl
    ccf
    ld d, b
    ld a, a

jr_005_4bd5:
    sub c
    rst $38
    ld [hl], d
    ld a, a
    jr @+$21

    inc l
    ccf
    inc hl
    ccf
    inc e
    inc e
    call nc, Call_000_0afc
    cp $89
    rst $38
    ld c, [hl]

jr_005_4be8:
    cp $18
    ld hl, sp+$34
    db $fc
    call nz, $38fc
    jr c, @+$0e

    inc c
    rra
    inc de
    inc e
    inc de
    db $10
    rra
    jr nz, @+$41

    ld h, d
    ld a, a
    adc $bf
    add b
    rst $38
    nop
    nop
    add b
    add b
    ld a, b
    ld hl, sp+$7c
    call nz, $847c
    jr c, jr_005_4bd5

    db $10
    ldh a, [rNR41]
    ldh [$7c], a
    ld [hl], a
    ld a, $29
    rra
    rra
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld bc, $3001
    ldh a, [rOBP0]
    ld hl, sp-$7a
    cp $c5
    ld a, a
    xor c
    ld a, a
    sbc [hl]
    ld a, [c]
    inc e
    db $fc
    ldh [$e0], a
    nop
    nop
    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, @+$31

    inc d
    rra
    daa
    ld a, $e0
    rst $38
    nop
    nop
    add b
    add b

jr_005_4c45:
    cp $7e
    sbc $72
    inc c
    db $f4
    jr z, jr_005_4c45

    db $e4
    ld a, h
    rlca
    rst $38
    sbc l
    cp $8f
    ei
    ld d, a
    ld a, h
    inc sp
    ccf
    scf
    jr c, jr_005_4c8b

    inc a
    scf
    dec hl
    inc e
    inc e
    cp c
    ld a, a
    pop af
    rst $18
    ld [$cc3e], a
    db $fc
    add sp, $18
    ld hl, sp+$38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, @+$31

    ld de, $201e
    ccf
    pop hl
    cp $00
    nop
    add b
    add b
    cp $7e
    sbc $72
    inc c
    db $f4

jr_005_4c8b:
    adc b
    ld a, b
    inc b
    db $fc
    add a
    ld a, a
    sbc h
    rst $38
    adc e
    rst $38
    ld d, c
    ld a, a
    ld [hl-], a
    ccf
    jr nc, jr_005_4cda

    inc l
    ccf
    inc hl
    ccf
    inc e
    inc e
    add hl, sp
    rst $38
    pop de
    rst $38
    adc d
    cp $4c
    db $fc
    ld [$38f8], sp
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    nop
    inc c
    inc c
    rra
    inc de
    inc e
    inc de
    db $10
    rra
    jr nz, jr_005_4cfc

    ld h, d
    ld a, a
    adc $bf
    nop
    nop
    nop
    nop
    add b
    add b
    ld a, b
    ld hl, sp+$7c
    call nz, $847c
    jr c, @-$26

    jr z, @-$06

    add b
    rst $38
    ld a, h
    ld [hl], a
    ld a, $29
    rra
    rra
    rra

jr_005_4cda:
    inc e
    inc sp
    ld l, $13
    rra
    ld c, $0e
    ld c, b
    ld hl, sp+$44
    db $fc
    adc h
    db $fc
    add d
    ld a, [hl]
    adc c
    ld a, a
    dec d
    rst $38
    or $ee
    jr @+$1a

    inc bc
    inc bc
    rlca
    rlca
    ld [$1c0f], sp
    inc de
    ld h, $3b
    daa

Call_005_4cfc:
jr_005_4cfc:
    dec a
    cpl
    jr c, jr_005_4d1f

    ld [de], a
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$98]
    add sp, $64
    call c, $bce4
    db $f4
    inc e
    ld hl, sp+$48
    rra
    ld [de], a
    ld e, $19
    ccf
    daa
    ccf
    inc h
    ld a, [de]
    rra
    rrca
    ld [$0f0f], sp

jr_005_4d1f:
    ld b, $06
    ld hl, sp+$48
    ld a, b
    sbc b
    db $fc
    db $e4
    db $fc
    inc h
    ld e, b
    ld hl, sp-$10
    db $10
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld bc, $0601
    rlca
    dec c
    ld c, $16
    dec e
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    ld [hl+], a
    ccf
    add b
    add b
    ld h, b
    ldh [$b0], a
    ld [hl], b
    ld l, b
    cp b
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    ld b, h
    db $fc
    ld de, $181f
    rra
    ccf
    cpl
    ccf
    inc l
    ld a, [de]
    rra
    rrca
    ld [$0f0f], sp
    ld b, $06
    adc b
    ld hl, sp+$18
    ld hl, sp-$04
    db $f4
    db $fc
    inc [hl]
    ld e, b
    ld hl, sp-$10
    db $10
    ldh a, [$f0]
    ld h, b
    ld h, b
    rlca
    rlca
    jr jr_005_4d94

    inc a
    daa
    ld d, d
    ld l, a
    ld [hl], c
    ld a, a
    add hl, sp
    cpl
    dec a
    cpl
    ccf
    dec hl
    or b
    or b
    ld a, b
    ret z

    inc a
    db $e4
    inc e
    db $f4
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    sub h
    db $fc
    ccf
    jr nz, jr_005_4dab

jr_005_4d94:
    jr jr_005_4da1

    rrca
    rrca
    inc c
    rrca
    inc c
    rrca
    dec bc
    rrca
    rrca
    rra
    rra

jr_005_4da1:
    call nc, $e8fc
    ld l, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [$a0], a

jr_005_4dab:
    ld h, b
    and b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld bc, $0701
    rlca
    ld [$1c0f], sp
    inc de
    ld h, $3b
    daa
    dec a
    cpl
    jr c, jr_005_4dc2

jr_005_4dc2:
    nop
    ret nz

    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$98]
    add sp, $64
    call c, $bce4
    db $f4
    inc e
    rra
    ld [de], a
    rra
    ld [de], a
    ld a, $39
    ccf
    cpl
    ld a, [de]
    rra
    rrca
    inc c
    rrca
    rrca
    ld b, $06
    ld hl, sp+$48
    ld hl, sp+$48
    ld a, b
    sbc b
    ldh a, [$f8]
    ld a, b
    ret z

    ld hl, sp+$48
    or b
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    inc c
    inc e
    dec de
    jr z, jr_005_4e3c

    jr nc, jr_005_4e3e

    ld sp, $003f
    nop
    add b
    add b
    ld h, b
    ldh [$50], a
    ldh a, [$c8]
    ld a, b
    ld b, h
    db $fc
    add h
    db $fc
    inc b
    db $fc
    ld [hl+], a
    ccf
    inc e
    rra
    jr c, jr_005_4e46

    ccf
    cpl
    ld e, $19
    rrca
    ld c, $0f
    rrca
    ld b, $06
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [$f8]
    ld hl, sp+$7c
    db $e4
    db $fc
    inc h
    ret c

    ld hl, sp+$00
    nop
    nop
    nop
    rlca
    rlca
    jr jr_005_4e56

    inc a
    daa
    ld d, d
    ld l, a
    ld [hl], c

jr_005_4e3c:
    ld a, a
    add hl, sp

jr_005_4e3e:
    cpl
    dec a
    cpl
    nop
    nop
    cp b
    cp b
    ld e, h

jr_005_4e46:
    db $e4
    ld l, $f2
    ld d, $fa
    add hl, de
    rst $38
    add hl, de
    rst $38
    dec d
    rst $30
    ccf
    dec hl
    ccf
    jr nz, jr_005_4e6d

jr_005_4e56:
    jr jr_005_4e65

    rrca
    rrca
    ld a, [bc]
    ccf
    ld a, [hl-]
    dec a
    ccf
    rra
    rra
    sub l
    rst $30
    push de
    rst $30

jr_005_4e65:
    ld [c], a
    ld h, d
    add b
    ret nz

    ret nz

    ld b, b
    ldh a, [rSVBK]

jr_005_4e6d:
    or b
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    add hl, sp
    ld a, a
    ld d, c
    ld a, a
    ld b, b
    ld l, a
    ld d, d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    sbc h
    cp $0a
    cp $02
    or $4a
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, c
    ccf
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $92
    db $fc
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld e, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $fa
    dec sp
    scf
    inc a
    cpl
    ld a, a
    ld c, e
    ld a, a
    ld e, b
    ccf
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $dc
    db $ec
    inc a
    db $f4
    cp $d2
    cp $1a
    db $fc
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    add hl, sp
    rra
    db $10
    rra
    db $10
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    ld a, h
    sbc h
    rra
    db $10
    dec bc
    inc c
    rrca
    rrca
    rrca
    ld a, [bc]
    rrca
    ld c, $07
    ld b, $05
    rlca
    inc bc
    inc bc
    ld hl, sp+$18
    ldh [$30], a
    ldh a, [$d0]
    ldh a, [$50]
    ldh a, [rSVBK]
    ldh [$60], a
    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    add hl, sp
    ld a, a
    ld d, c
    ld a, a
    ld b, b
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    sbc h
    cp $0a
    cp $02
    ld l, a
    ld d, d
    rst $38
    or d
    ld a, [hl]
    ld c, c
    ccf
    scf
    rra
    add hl, de
    rla
    rra
    ld de, $0e1f
    ld c, $f6
    ld c, d
    db $fc
    ld c, h
    ld a, h
    sub h
    cp $e2
    cp $92
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    ld l, a
    ld e, a
    ei
    or a
    ld a, h
    ld c, a
    ccf
    inc sp
    rra
    rra
    rla
    rra
    ld de, $0e1f
    ld c, $f6
    ld a, [$ecdc]
    inc a
    db $f4
    cp $d2
    cp $f2
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    add hl, sp
    rra
    db $10
    rra
    inc d
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rrca
    rrca
    rra
    dec e
    daa
    ccf
    inc de
    rra
    inc c

jr_005_4fe0:
    inc c
    ld a, h

jr_005_4fe2:
    sbc h
    ld hl, sp+$18
    ld h, b
    ldh [$e0], a
    jr nz, jr_005_4fe2

    jr jr_005_4fe0

    sbc h
    db $e4
    db $fc
    jr jr_005_5009

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    dec a
    ccf
    jr nc, jr_005_5002

jr_005_5002:
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]

jr_005_5009:
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    cp h
    db $fc
    inc c
    ccf
    ld [hl+], a
    ccf
    ld [hl-], a
    ld c, [hl]
    ld c, c
    dec e
    sub a
    cp l
    and a
    db $10
    rra
    rrca
    add hl, bc
    ld b, $06
    db $fc
    ld b, h
    db $fc
    ld c, h
    ld [hl], d
    sub d
    cp b
    jp hl


    cp l
    push hl
    ld [$f0f8], sp
    sub b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ccf
    cpl
    ccf
    inc sp
    ld c, a
    ld c, b
    dec e
    sub a
    cp l
    and a
    jr jr_005_507c

    rrca
    add hl, bc
    ld b, $06
    db $fc
    db $e4
    db $fc
    call z, Call_000_12f2
    cp b
    jp hl


    cp l
    push hl
    jr @-$06

    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf

jr_005_507c:
    ccf
    ccf
    dec sp
    rra
    stop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    inc d
    rrca
    ld [$0707], sp
    dec b
    ld b, $03
    ld [bc], a
    rlca
    dec b
    inc bc
    inc bc
    db $fc
    sbc h
    ld hl, sp+$18
    ld hl, sp+$38
    ret z

    ret z

    and b
    ld h, h
    sub h
    ld [hl], h
    ldh [$a0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    cp h
    ccf
    jr nc, jr_005_5113

    ld [hl+], a
    ccf
    ld [hl-], a
    ld c, [hl]
    ld c, c
    add hl, de
    sub a
    adc b
    adc a
    rrca
    add hl, bc
    ld b, $06
    db $fc
    inc c
    db $fc
    ld b, h
    db $fc
    ld c, h
    ld [hl], d
    sub d
    sbc b
    jp hl


    ld a, c
    ret


    ldh a, [$f0]
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
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ccf
    ccf

jr_005_5113:
    ccf
    cpl
    ccf
    inc sp
    ld a, a
    ld l, b
    dec de
    sub a
    adc b
    adc a
    rrca
    add hl, bc
    ld b, $06
    db $fc
    db $fc
    db $fc
    db $f4
    db $fc
    call z, Call_000_12f2
    ret c

    jp hl


    dec a
    push hl
    ld hl, sp-$08
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
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    rra
    db $10
    rra
    inc d
    rra
    inc d
    rrca
    ld [$0f0f], sp

jr_005_515b:
    dec e
    ld d, $0f
    ld a, [bc]
    dec b
    dec b
    db $fc
    db $fc
    db $fc
    sbc h
    ld hl, sp+$18
    ld hl, sp+$38

jr_005_5169:
    ret z

    ret z

    or b
    ld d, h
    db $f4

jr_005_516e:
    ld d, h
    and b
    and b
    nop
    nop
    nop
    ld bc, $0303
    inc b
    rlca
    inc b
    dec bc
    inc c
    rrca

jr_005_517d:
    add hl, bc
    rrca
    inc bc
    ld c, $20
    ld h, b
    ret nz

    ret nz

    ret nz

    ret nz

    jr nz, jr_005_5169

    jr nz, jr_005_515b

    jr nc, jr_005_517d

    sub b
    ldh a, [rLCDC]
    ldh a, [rIF]
    add hl, de
    rra
    db $10
    cpl
    jr nc, jr_005_51c7

    jr nc, jr_005_51b1

    jr @+$07

    ld b, $03
    inc bc
    inc b
    ld b, $f0
    sbc b
    ld hl, sp+$08
    db $f4
    inc c
    db $f4
    inc c
    add sp, $18
    and b
    ld h, b
    ret nz

    ret nz

    jr nz, @+$62

jr_005_51b1:
    nop
    nop
    nop
    ld bc, $0303
    dec b
    rlca
    nop
    rrca
    ld [$080f], sp
    rrca
    inc bc
    dec c
    jr nz, jr_005_5223

    ret nz

    ret nz

    ret nz

    ret nz

jr_005_51c7:
    and b
    ldh [rP1], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$c0]
    or b
    rra
    ld a, [de]
    cpl
    inc a
    daa
    jr c, jr_005_51ff

    jr c, @+$15

    inc e
    rrca

jr_005_51dc:
    inc c
    ld bc, $0403
    ld b, $f8
    ld e, b
    db $f4
    inc a
    db $e4
    inc e
    db $e4
    inc e
    ret z

    jr c, jr_005_51dc

    jr nc, jr_005_516e

    ret nz

    jr nz, jr_005_5251

    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc l
    dec sp
    inc l
    ccf
    ld h, b
    ld a, a
    ret nc

    cp a

jr_005_51ff:
    ld l, b
    ld [hl], a
    ld h, b
    ldh a, [$c0]
    ret nz

    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    call nz, $36c4
    ld a, [$273c]
    ld a, $23
    ld e, $23
    rra
    ld de, $0c0b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    ld b, $0f
    db $fd

jr_005_5223:
    ld [bc], a
    cp $04
    db $fc

jr_005_5227:
    adc b
    ld hl, sp+$70
    ldh a, [$80]
    add b
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc b
    rlca
    inc b
    dec bc
    ld c, h
    ld c, a
    xor c
    rst $28
    sub e
    cp $8f
    ld sp, hl
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_005_5227

    jr nz, @-$2e

    ld [hl-], a
    ld a, [c]
    sub l
    rst $30
    ret


    ld a, a
    pop af
    sbc a

jr_005_5251:
    adc a
    ldh a, [rVBK]
    ld [hl], b
    ccf
    jr nc, jr_005_5267

    ld [$0605], sp
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    pop af
    rrca
    ld a, [c]
    ld c, $fc
    inc c

jr_005_5267:
    ldh a, [rNR10]
    and b
    ld h, b
    ret nz

    ret nz

    ld b, b
    ld b, b

Jump_005_526f:
    nop
    ld b, b
    ld bc, $0301
    inc bc
    dec b
    rlca
    nop
    rrca
    ld c, b
    ld c, a
    xor e
    db $ed
    sub a
    ld a, [$fc8f]
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [rP1], a
    ldh a, [rNR12]
    ld a, [c]
    push de
    or a
    jp hl


    ld e, a
    pop af
    ccf
    add a
    ld hl, sp+$4f
    ld [hl], b
    scf
    jr c, jr_005_52a7

    ld [$0605], sp
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    pop hl
    rra
    ld a, [c]
    ld c, $ec
    inc e

jr_005_52a7:
    ldh a, [rNR10]
    and b
    ld h, b
    ret nz

    ret nz

    ld b, b
    ld b, b
    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc l
    dec sp
    inc l
    ccf
    ld h, c
    ld a, a
    jp nc, Jump_005_6abf

    ld [hl], a
    ld a, $21
    ld h, b
    ldh a, [$f8]
    ld hl, sp+$44
    db $fc
    add d
    cp $02
    cp $00
    cp $04
    db $fc

jr_005_52cf:
    inc e
    db $f4
    ccf
    jr nz, jr_005_52f3

    db $10
    dec bc
    inc c
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr c, jr_005_52cf

    ldh a, [rNR10]
    and b
    ld h, b
    add b
    add b
    nop
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    rlca
    rlca

jr_005_52f3:
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_005_5379

    ld [hl], b
    ld a, a
    ld d, b
    ld a, a
    ld b, [hl]
    ccf
    jr nc, @-$1e

    ldh [$f0], a
    db $10
    ld hl, sp+$08
    db $fc
    inc c
    cp $0e
    cp $0a
    cp $62
    db $fc
    inc c
    ld a, [hl]
    ld c, l
    rst $38
    sub e
    rst $38
    and c
    ld a, a
    ld [hl], b
    daa
    jr c, jr_005_533d

    ccf
    ld [hl+], a
    ld a, $1e
    ld e, $7e

jr_005_5322:
    or d
    rst $38
    ret


    rst $38
    add l
    cp $0e
    db $e4
    inc e
    add h
    db $fc
    ld b, h
    ld a, h
    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a

jr_005_533d:
    ld a, a
    ld c, a
    ccf
    jr nc, jr_005_5322

    ldh [$f0], a
    db $10
    ld hl, sp+$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    db $fc
    inc c
    ld a, a
    ld c, b
    rst $38
    sub a
    rst $38
    and b
    ld a, a
    ld [hl], b
    jr nz, @+$41

    ld hl, $223f
    ld a, $1e
    ld e, $fe
    ld [de], a
    rst $38
    jp hl


    rst $38
    dec b
    cp $0e
    inc b
    db $fc
    add h
    db $fc
    ld b, h
    ld a, h
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp

jr_005_5379:
    rra
    db $10
    rra
    db $10
    rra
    ld d, $1f
    db $10
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    inc a
    db $fc
    inc d
    db $fc
    inc d
    dec bc
    inc c
    rlca
    rlca
    rrca
    dec c
    rra
    ld de, $111f
    dec c
    dec bc
    ld [$070f], sp
    rlca
    ld hl, sp+$08
    ldh a, [$f0]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [$30]
    ldh [$e0], a
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_005_543b

    ld [hl], b
    ld a, a
    ld d, b
    ld a, a
    ld b, [hl]
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    cp $0e
    cp $0a
    cp $62
    ccf
    jr nc, jr_005_5412

    dec l
    ld a, a
    ld d, e
    ccf
    jr nc, jr_005_5401

    jr c, jr_005_53fd

    ccf
    ld de, $1e1f
    ld e, $fc
    inc c
    ld a, h
    or h
    db $fc
    call nz, Call_005_4cfc
    or h
    db $fc
    add h
    db $fc
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    ccf
    ld a, a
    ld a, a

jr_005_53fd:
    ld a, a
    ld e, a
    ld a, a
    ld c, a

jr_005_5401:
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    db $fc
    cp $fe
    cp $fa
    cp $f2
    ccf

jr_005_5412:
    jr nc, jr_005_5453

    inc l
    rra
    inc de
    cpl
    jr nc, @+$29

    jr c, jr_005_543d

    ccf
    ld [hl+], a
    ld a, $1e
    ld e, $fc
    inc c
    db $fc
    inc a
    db $fc
    db $e4
    db $fc
    inc h
    db $fc
    inc e
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp

jr_005_543b:
    rra
    db $10

jr_005_543d:
    rra
    db $10
    rra
    ld d, $00

jr_005_5442:
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    inc a
    db $fc
    inc d
    rra
    db $10

jr_005_5453:
    dec bc
    inc c
    rlca
    rlca
    rrca
    add hl, bc
    ccf
    jr nc, jr_005_54a3

    ld a, b
    inc hl
    ccf
    inc e
    inc e
    db $fc
    inc d
    ld hl, sp+$08
    ld hl, sp-$08
    db $fc
    add h
    db $fc
    ld c, h
    ld a, [c]
    ld a, [hl]
    ld a, [c]
    cp $0c
    inc c
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_005_54eb

    ld d, b
    ld a, a
    ld b, [hl]
    ccf
    jr nc, jr_005_5442

jr_005_5482:
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    or $0a
    cp $62
    db $fc
    inc c
    ld e, $19
    ccf
    inc a
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    jr c, @+$41

    rra
    rra
    rra
    rra
    rrca
    rrca
    ld a, b
    sbc b

jr_005_54a3:
    db $fc
    inc a
    cp $f2
    cp $f2
    inc e
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_005_552b

    ld d, b
    ld a, a
    ld b, b
    ccf
    jr nc, jr_005_5482

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    or $0a
    cp $02
    db $fc
    inc c
    rra
    jr jr_005_5513

    ccf
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    jr c, jr_005_551a

    rra
    rra
    rra
    rra
    rrca
    rrca
    ld hl, sp+$18
    db $fc
    db $fc
    cp $fa
    cp $fa
    inc e
    db $fc

jr_005_54eb:
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ld bc, $0701
    ld b, $0b
    inc c
    rrca
    ld [$101f], sp
    rra
    db $10
    rra
    ld d, $1f
    db $10
    ret nz

    ret nz

    ldh a, [$30]
    add sp, $18
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    ld h, h
    db $fc
    inc d
    db $fc
    inc d
    rra
    db $10

jr_005_5513:
    dec bc
    inc c
    rlca
    rlca
    rlca
    rlca
    rrca

jr_005_551a:
    rrca
    ld [$0f0f], sp
    rrca
    rlca
    rlca
    db $fc
    ld h, h
    ld hl, sp+$08

jr_005_5525:
    ldh a, [$f0]
    ld hl, sp-$68
    ld hl, sp-$68

jr_005_552b:
    jr c, jr_005_5525

    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_005_55ad

    ld d, b
    ld a, a
    ld b, [hl]
    nop

jr_005_5542:
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    or $0a
    cp $62
    ccf
    jr nc, jr_005_5572

    add hl, de
    ccf
    inc a
    ld a, a
    ld e, a
    ld a, b
    ld e, a
    ccf
    ccf
    dec d
    dec de
    rrca
    rrca
    db $fc
    inc c
    ld a, b
    sbc b
    db $fc
    inc a
    cp $f2
    ld e, $f2
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    nop

jr_005_5572:
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_005_55ed

    ld d, b
    ld a, a
    ld b, b
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc c
    or $0a
    cp $02
    ccf
    jr nc, jr_005_55b3

    jr @+$41

    inc a
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    db $fc
    inc c
    ld hl, sp+$18
    db $fc
    inc a
    cp $fa
    ld e, $fa
    db $fc
    db $fc

jr_005_55ad:
    xor b
    ret c

    ldh a, [$f0]
    inc bc
    inc bc

jr_005_55b3:
    rrca
    inc c
    rla
    jr jr_005_55d7

jr_005_55b8:
    db $10
    ccf
    jr nz, jr_005_55fb

    jr nz, jr_005_55fd

    inc l
    ccf
    jr nz, jr_005_5542

    add b
    ldh [$60], a
    ret nc

    jr nc, jr_005_55b8

    db $10
    ld hl, sp+$08
    ld hl, sp-$38
    ld hl, sp+$28
    ld hl, sp+$28
    ccf
    jr nz, jr_005_55eb

    jr jr_005_55e5

    rrca

jr_005_55d7:
    rrca
    ld c, $0f
    ld c, $08
    rrca

jr_005_55dd:
    rrca
    rrca
    rlca
    rlca
    ld hl, sp-$38
    ldh a, [rNR10]

jr_005_55e5:
    ldh [$e0], a
    ldh a, [rSVBK]
    ldh a, [rSVBK]

jr_005_55eb:
    jr nc, jr_005_55dd

jr_005_55ed:
    ldh a, [$f0]
    ldh a, [$f0]
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    scf

jr_005_55fb:
    ld a, a
    ld d, d

jr_005_55fd:
    ld a, a
    ld b, b
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $ec
    cp $4a
    cp $02
    or $4a
    ccf
    jr nc, jr_005_5652

    add hl, sp
    ld a, a
    ld c, a
    ld a, c
    ld c, a
    inc a
    ccf
    rla
    rra
    ld de, $0e1f
    ld c, $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    sbc [hl]
    ld a, [c]
    inc a
    db $fc
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld d, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $ea
    ccf

jr_005_5652:
    ld sp, $2c3f
    ld [hl], e
    ld c, a
    ld [hl], b
    ld e, a
    jr c, jr_005_569a

    ld d, $1f
    ld de, $0e1f
    ld c, $fc
    adc h
    db $fc
    inc [hl]
    adc $f2
    ld c, $fa
    inc e
    db $fc
    ld l, b
    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rra
    inc d
    rra
    db $10
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    db $fc
    inc e
    rra
    db $10
    rrca
    ld [$0f0f], sp
    dec c
    ld c, $0d

jr_005_569a:
    ld c, $07
    ld b, $05
    rlca
    inc bc
    inc bc
    ld hl, sp+$18
    ldh [$30], a
    ret nc

    ldh a, [$d0]
    ld [hl], b
    ret nc

    ld [hl], b
    ldh [$60], a
    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    scf
    ld a, a
    ld d, d
    ld a, a
    ld b, b
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $ec
    cp $4a
    cp $02
    ld l, a
    ld d, d
    rst $38
    or b
    ld a, [hl]
    ld c, c
    scf
    ccf
    dec de
    dec e
    rla
    rra
    ld de, $0e1f
    ld c, $f6
    ld c, d
    db $fc
    inc c
    ld a, h
    sub h
    cp $e2
    sbc $b2
    cp h
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fa
    cp $f2
    ld l, a
    ld d, a
    rst $38
    or c
    ld a, a
    ld c, h
    inc sp
    ccf
    jr jr_005_573a

    ld d, $1f
    ld de, $0e1f
    ld c, $f6
    ld [$8cfc], a
    db $fc
    inc [hl]
    sbc $e2
    ld e, $f2
    inc a
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf

jr_005_573a:
    ccf
    ccf
    ccf
    rra
    inc d
    rra
    stop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    rra
    inc d
    rra
    db $10
    rrca
    ld [$0f0f], sp
    dec e
    rra
    inc h
    ccf
    inc de
    rra
    inc c
    inc c
    db $fc
    inc e
    ld hl, sp+$18
    ldh [$60], a
    ldh [rNR41], a
    ld hl, sp+$18
    db $f4
    sbc h
    db $e4
    db $fc
    jr @+$1a

    rlca
    rlca
    ld [$100f], sp
    rra
    ld [de], a
    rra
    daa
    dec a
    cpl
    jr c, jr_005_57bd

    ld [hl-], a
    ccf
    ld [hl-], a
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$48
    ld hl, sp-$1c
    cp h
    db $f4
    inc e
    db $fc
    ld c, h
    db $fc
    ld c, h
    ld l, $39
    scf
    ccf
    ld a, a
    ld l, e
    ld a, a
    ld c, b
    ccf
    jr nc, jr_005_57bb

    db $10
    rrca
    ld [$0707], sp
    ld [hl], h
    sbc h
    db $ec
    db $fc
    cp $d6
    cp $12
    db $fc
    inc c
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_005_57fa

jr_005_57bb:
    jr nz, jr_005_57fc

jr_005_57bd:
    jr nz, jr_005_57fe

    jr nz, jr_005_5800

    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    jr nz, jr_005_5812

    jr nc, jr_005_5814

    ld a, h
    ld l, a
    ld a, a
    ld c, e
    ccf
    jr nc, jr_005_57fb

    db $10
    rrca
    ld [$0707], sp
    inc b
    db $fc
    inc c
    db $fc
    ld a, $f6
    cp $d2
    db $fc
    inc c
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca

jr_005_57f5:
    db $10
    rra
    jr z, jr_005_5838

    inc a

jr_005_57fa:
    scf

jr_005_57fb:
    rra

jr_005_57fc:
    inc de
    rra

jr_005_57fe:
    inc d
    rra

jr_005_5800:
    inc d
    ret nz

    ret nz

    jr nc, jr_005_57f5

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    add h
    db $fc
    add h
    db $fc
    rra

jr_005_5812:
    db $10
    dec bc

jr_005_5814:
    dec c
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rrca
    ld [$080f], sp
    rlca
    rlca
    add h
    db $fc
    add h
    db $fc
    call nz, $e4fc
    inc a
    add sp, $38
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    ld [$100f], sp

jr_005_5838:
    rra
    ld [de], a
    rra
    daa
    dec a
    cpl
    jr c, @+$61

    ld [hl], d
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$48
    ld hl, sp-$1c
    cp h
    db $f4
    inc e
    db $fc
    ld c, h
    ld e, a
    ld [hl], d
    sbc [hl]
    ld sp, hl
    cp a
    rst $28
    ld a, a
    ld l, e
    rra
    db $10
    rra
    db $10
    rrca
    ld [$0707], sp
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $e4
    db $fc
    ld hl, sp-$48
    ld hl, sp+$48
    ld hl, sp+$48
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_005_58bc

    jr nz, jr_005_58be

    jr nz, jr_005_58c0

    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr c, jr_005_58d8

    ld a, a
    ld b, a
    ld a, a
    ld b, b
    ccf
    jr nz, jr_005_58bf

    rra
    inc b
    db $fc
    ld [$18f8], sp
    ld hl, sp+$38
    ld hl, sp-$08
    ret z

    ld hl, sp+$48
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_58b7:
    db $10
    rra
    jr z, jr_005_58fa

    inc a

jr_005_58bc:
    scf
    rra

jr_005_58be:
    inc de

jr_005_58bf:
    rra

jr_005_58c0:
    inc d
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_58b7

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $81
    rst $38
    rra
    inc d
    rra
    db $10
    dec bc
    dec c
    rlca

jr_005_58d8:
    rlca
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    inc bc
    inc bc
    pop bc
    ld a, a
    ld b, c
    rst $38
    pop hl
    rst $38
    cp $fe
    ld hl, sp-$68
    db $fc
    sub h
    db $fc
    ld h, h
    ld hl, sp-$08
    rlca
    rlca
    rrca
    rrca
    rra
    ld a, [de]
    rra
    db $10
    ccf

jr_005_58fa:
    inc [hl]
    ld l, a
    ld d, d
    ld a, a
    ld b, b
    ld a, $31
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$48
    ld hl, sp+$08
    db $fc
    inc l
    or $4a
    cp $02
    ld a, h
    adc h
    ld a, a
    ld c, b
    rst $38
    sub a
    cp $91
    rst $38
    adc b
    ld a, a
    ld l, a
    rra
    rra
    rra
    rra
    ld a, $3e
    cp $12
    rst $38
    jp hl


    ld a, a
    adc c
    rst $38
    ld de, $f6fe
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, h
    ld a, h
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld l, a
    ld e, a
    ld a, a
    ld b, a
    ccf
    jr nc, @-$1e

    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    or $fa
    cp $e2
    db $fc
    inc c
    ld a, a
    ld c, b
    rst $38
    sub a
    db $fc
    sub e
    rst $38
    sub b
    ld a, a
    ld l, a
    rra
    rra
    rra
    rra
    ld a, $3e
    cp $12
    rst $38
    jp hl


    ccf
    ret


    rst $38
    add hl, bc
    cp $f6
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, h
    ld a, h
    rlca
    rlca
    rrca
    rrca
    rrca
    ld a, [bc]
    rra
    db $10
    rra
    ld [de], a
    rra
    inc d
    rra
    db $10
    rla
    jr @-$1e

    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
    ld a, h
    db $fc
    ld a, h
    cp h
    ld e, h
    db $fc
    inc e
    db $fc
    inc a
    rrca
    ld [$0707], sp
    dec bc
    inc c
    rrca
    ld [$0507], sp
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld hl, sp-$08
    ldh a, [$30]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    ld a, [de]
    rra
    db $10
    ccf
    inc [hl]
    ld l, a
    ld d, d
    ld a, a
    ld b, b
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$48
    ld hl, sp+$08
    db $fc
    inc l
    or $4a
    cp $02
    ld a, $31
    ccf
    jr z, @+$81

    ld d, a
    ld a, [hl]
    ld d, c
    ld a, a
    ld c, [hl]
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    ld a, h
    adc h
    db $fc
    inc e
    ld a, [$5ee6]
    ld [c], a
    db $fc
    add h
    ld hl, sp-$38
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld l, a
    ld e, a
    ld a, a
    ld b, a
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    or $fa
    cp $e2
    ccf
    jr nc, @+$41

    jr z, jr_005_5a75

    ld [hl], a
    ld a, h
    ld c, e
    ld a, a
    ld c, b
    ccf
    ccf
    rlca
    rlca
    nop
    nop
    db $fc
    inc c
    db $fc
    inc e
    ld a, [$3eee]
    jp z, Jump_000_0afe

    db $fc
    db $f4
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rrca
    ld a, [bc]
    rra
    db $10
    rra
    ld [de], a
    rra
    inc d
    rra
    stop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    ld a, h
    db $fc
    ld a, h
    cp h
    ld e, h
    db $fc
    inc e
    rla
    jr jr_005_5a63

    ld [$0707], sp
    dec bc
    inc c
    rrca
    ld [$1c1f], sp
    rra
    rra
    rrca
    rrca
    db $fc
    ld a, h

jr_005_5a63:
    add sp, -$68
    ld hl, sp+$48
    ld hl, sp+$48
    ld hl, sp-$68
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    rlca
    rlca

jr_005_5a75:
    ld [$130f], sp
    rra
    daa
    ccf
    dec l
    ld a, $6f
    ld a, b
    rst $28
    or d
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$c8]
    ld hl, sp-$1c
    db $fc
    or h
    ld a, h
    or $1e
    rst $30
    ld c, l
    adc a
    ld a, [c]
    ld c, [hl]
    ld a, c
    ccf
    scf
    ccf
    daa
    rra
    rra
    rra
    rla
    rra
    jr jr_005_5aaf

    rrca
    pop af
    ld c, a
    ld [hl], d
    sbc [hl]
    db $fc
    db $ec
    db $fc
    db $e4
    ld hl, sp-$08
    ld hl, sp-$18
    ld hl, sp+$18

jr_005_5aaf:
    ldh a, [$f0]
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_005_5afa

    jr nz, jr_005_5afc

    ld h, b
    ld a, a
    ldh [$bf], a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld b, $fe
    rlca
    db $fd
    add b
    rst $38
    ld c, b
    ld a, a
    inc a
    ccf
    ccf
    cpl
    rra
    rra
    rra
    rla
    rra
    jr jr_005_5aef

    rrca
    ld bc, $12ff
    cp $3c
    db $fc
    db $fc
    db $f4
    ld hl, sp-$08
    ld hl, sp-$18
    ld hl, sp+$18

jr_005_5aef:
    ldh a, [$f0]
    nop
    nop
    rlca
    rlca
    ld [$1e0f], sp
    rra
    cpl

jr_005_5afa:
    ccf
    dec a

jr_005_5afc:
    inc sp
    rra
    db $10
    rra
    inc d
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    add h
    db $fc
    add [hl]
    cp $87
    ld a, l
    rra
    inc d
    rrca
    ld [$0707], sp
    rlca
    ld b, $07
    ld b, $07
    rlca
    rlca
    inc b
    inc bc
    inc bc
    pop bc
    ld a, a
    add d
    cp $8c
    db $fc
    ld hl, sp+$78
    db $fc
    ld [hl], h
    db $fc
    db $ec
    ld hl, sp+$18
    ldh a, [$f0]
    nop
    nop
    rlca
    rlca
    ld [$130f], sp
    rra
    daa
    ccf
    dec l
    ld a, $6f
    ld a, b
    rst $28
    or d
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$c8]
    ld hl, sp-$1c
    db $fc
    or h
    ld a, h
    or $1e
    rst $30
    ld c, l
    adc a
    ld a, [c]
    ld c, [hl]
    ld a, c
    ccf
    scf
    ccf
    cpl
    rra
    rra
    rra
    rla
    rra
    jr jr_005_5b6f

    rrca
    pop af
    ld c, a
    ld [hl], d
    sbc [hl]
    db $fc
    db $ec
    db $fc
    call z, $f4fc
    ld hl, sp-$78
    ldh a, [rSVBK]

jr_005_5b6f:
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_005_5bba

    jr nz, jr_005_5bbc

    ld h, b
    ld a, a
    ldh [$bf], a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld b, $fe
    rlca
    db $fd
    add b
    rst $38
    ld c, b
    ld a, a
    inc a
    ccf
    ccf
    cpl
    rra
    rra
    rra
    rla
    rra
    jr jr_005_5baf

    rrca
    ld bc, $12ff
    cp $3c
    db $fc
    db $fc
    call z, $f4fc
    ld hl, sp-$78
    ldh a, [rSVBK]

jr_005_5baf:
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$1e0f], sp
    rra
    cpl

jr_005_5bba:
    ccf
    dec a

jr_005_5bbc:
    inc sp
    rra
    db $10
    rra
    inc d
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    add h
    db $fc
    add [hl]
    cp $87
    ld a, l
    rra
    inc d
    rrca
    ld [$0707], sp
    rlca
    inc b
    ld c, $09
    dec c
    dec bc
    rlca
    ld b, $03
    inc bc
    pop bc
    ld a, a
    add d
    cp $8c
    db $fc
    cp $fe
    cp $fa
    cp $f6
    db $fc
    inc c
    ld hl, sp-$08
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    db $76
    ld e, c
    ld a, a
    ld b, d
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld l, [hl]
    sbc d
    cp $42
    ccf
    ld [hl-], a
    ld a, $39
    ld a, l
    ld c, [hl]
    ld a, a
    ld c, a
    ld a, $3f
    rra
    rra
    rra
    rla
    ld c, $0e
    db $fc
    ld c, h
    ld a, h
    sbc h
    cp [hl]
    ld [hl], d
    cp $f2
    ld a, h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld [hl], b
    ld e, a
    ld [hl], b
    ld c, a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld c, $fa
    ld c, $f2
    jr c, jr_005_5c8a

    ccf
    jr c, jr_005_5cd5

    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    rra
    rra
    rla
    ld c, $0e
    inc e
    db $ec
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld d, $19
    rra
    inc d
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp

jr_005_5c8a:
    cp $fc
    db $fc
    ld [$08f8], sp
    ld hl, sp+$1f
    inc d
    add hl, bc
    ld c, $06
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    dec bc
    rrca
    rrca
    ld l, b
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    db $76
    ld e, c
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld l, [hl]
    sbc d
    ld a, a
    ld b, d
    ld a, a
    ld [hl], d

jr_005_5cd5:
    ld a, [hl]
    ld e, c
    dec a
    ld a, $1f
    rra
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    cp $42
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    cp h
    ld [hl], h
    db $fc
    call z, $c8f8
    or b
    or b
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld [hl], b
    ld e, a
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld c, $fa
    ld [hl], b
    ld c, a
    ld a, b
    ld [hl], a
    ld a, a
    ld e, b
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ld c, $f2
    inc e
    db $ec
    db $fc
    inc e
    ld hl, sp-$08
    db $fc
    db $e4
    db $fc
    db $e4
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld a, a
    ccf
    ccf
    ld d, $19
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [$fef8], sp
    cp $fc
    db $fc
    ld [$1ff8], sp
    inc d
    rra
    inc d
    add hl, bc
    ld c, $06
    dec b
    dec de
    rra
    dec a
    cpl
    rra
    rra
    ld c, $0e
    ld [$68f8], sp
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr @+$1a

    inc bc
    inc bc
    inc c
    rrca

jr_005_5d75:
    inc de
    rra
    rla
    rra
    inc l
    ccf
    ld a, [hl+]
    dec a
    ccf
    jr nc, jr_005_5dbf

    ld [hl+], a
    ret nz

    ret nz

    jr nc, jr_005_5d75

    ret z

    ld hl, sp-$18
    ld hl, sp+$34
    db $fc
    or h
    ld e, h
    db $fc
    inc c
    db $fc
    ld b, h
    ccf
    ld [hl-], a
    ld l, $39
    cpl
    ccf
    ld a, $37
    dec a
    cpl
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $f4
    db $fc
    ld a, h
    db $ec
    cp h
    db $f4
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca

jr_005_5db5:
    db $10
    rra
    db $10
    rra
    jr nz, jr_005_5dfa

    jr nz, jr_005_5dfc

    jr nz, @+$41

jr_005_5dbf:
    jr nz, jr_005_5e00

    ret nz

    ret nz

    jr nc, jr_005_5db5

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    jr nz, jr_005_5e12

    jr nz, jr_005_5e14

    jr nz, jr_005_5e16

    jr nc, jr_005_5e18

    inc a
    cpl
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc a
    db $f4
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca

jr_005_5df5:
    ld e, $1f
    daa
    ccf
    dec hl

jr_005_5dfa:
    scf
    rra

jr_005_5dfc:
    ld de, $141f
    rra

jr_005_5e00:
    inc d
    ret nz

    ret nz

    jr nc, jr_005_5df5

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    add h
    db $fc
    call nz, Call_000_1f7c

jr_005_5e12:
    db $10
    dec bc

jr_005_5e14:
    inc c
    rlca

jr_005_5e16:
    rlca
    inc bc

jr_005_5e18:
    inc bc
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc b
    db $fc
    add h
    db $fc
    add h
    db $fc
    call nz, $e47c
    ld a, h
    ld hl, sp-$48
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_5e37:
    inc de
    rra
    rla
    rra
    inc l
    ccf
    ld a, [hl+]
    dec a
    ccf
    jr nc, jr_005_5e42

jr_005_5e42:
    nop
    ret nz

    ret nz

    jr nc, jr_005_5e37

    ret z

    ld hl, sp-$18
    ld hl, sp+$34
    db $fc
    or h
    ld e, h
    db $fc
    inc c
    ccf
    ld [hl+], a
    ccf
    ld [hl-], a
    ld c, [hl]
    ld a, c
    ld c, a
    ld [hl], a
    ld e, [hl]
    ld [hl], e
    ccf
    add hl, sp
    rra
    rra
    rrca
    rrca
    db $fc
    ld b, h
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $e4
    db $fc
    ld a, b
    add sp, -$48
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_5e77:
    db $10
    rra
    db $10
    rra
    jr nz, jr_005_5ebc

    jr nz, jr_005_5ebe

    jr nz, @+$41

    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_5e77

    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    jr nz, jr_005_5ed2

    jr nz, jr_005_5ed4

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_005_5eda

    jr jr_005_5ebc

    rra
    rra
    rrca
    rrca
    inc b
    db $fc
    inc b
    db $fc
    ld [$18f8], sp
    ld hl, sp+$38
    add sp, -$10
    ret nc

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_5eb7:
    ld e, $1f
    daa
    ccf
    dec hl

jr_005_5ebc:
    scf
    rra

jr_005_5ebe:
    ld de, $141f
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_5eb7

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    add h
    db $fc
    rra

jr_005_5ed2:
    inc d
    rra

jr_005_5ed4:
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc

jr_005_5eda:
    inc bc
    rlca
    inc b
    rrca
    rrca
    rlca
    rlca
    call nz, Call_005_427c
    cp $82
    cp $82
    cp $c2
    ld a, [hl]
    ld [c], a
    cp $fc
    db $fc
    ldh a, [$f0]
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ld a, [hl-]
    ccf
    jr nc, jr_005_5f7d

    ld d, h
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    ld e, h
    db $fc
    inc c
    cp $2a
    or $4a
    ccf
    jr nc, jr_005_5f32

    add hl, de
    ccf
    daa
    inc a
    daa
    dec de
    ld e, $13
    rra
    rrca
    rrca
    ld bc, $fc01
    inc c
    ld a, b
    sbc b
    db $fc
    db $e4
    inc a
    db $e4
    ret c

    ld a, b
    ret z

    ld hl, sp-$10
    ldh a, [$80]
    add b
    inc bc

jr_005_5f32:
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    ld l, a
    ld e, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    or $fa
    ccf
    jr nc, jr_005_5f73

    jr jr_005_5f95

    cpl
    inc a
    cpl
    dec de
    rra
    rra
    rra
    rrca
    rrca
    ld bc, $fc01
    inc c
    ld hl, sp+$18
    db $fc
    db $f4
    inc a
    db $f4
    ret c

    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$80]
    add b
    inc bc
    inc bc

jr_005_5f73:
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    dec de
    rra
    ld a, [de]

jr_005_5f7d:
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $7e
    db $fc
    inc a
    call c, $0f24
    ld [$1e15], sp

jr_005_5f95:
    rla
    add hl, de
    ccf
    add hl, sp
    ld h, a
    ld a, a
    ld h, e
    ld a, a
    ccf
    ccf
    inc e
    inc e
    ld hl, sp+$08
    ldh a, [$30]
    db $fc
    db $fc
    cp $fe
    db $e3
    rst $38
    ld h, e
    rst $38
    cp $fe
    inc e
    inc e
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld [hl], h
    ld a, a
    ld h, b
    rst $38
    xor b
    rst $18
    and h
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$48
    ld hl, sp+$18
    db $fc
    ld d, h
    db $ec
    sub h
    ld a, a
    ld h, b
    inc a
    inc sp
    ld a, a
    ld c, a
    ld a, b
    ld c, a
    ccf
    inc a
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    ld hl, sp+$18
    ldh a, [$30]
    ld hl, sp-$38
    ld a, b
    ret z

    or b
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $18
    cp a
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $f4
    db $ec
    db $f4
    ld a, a
    ld h, b
    ccf
    jr nc, jr_005_6095

    ld e, a
    ld a, b
    ld e, a
    scf
    ccf
    ccf
    ccf
    rra
    rra
    inc bc
    inc bc
    ld hl, sp+$18
    ldh a, [$30]
    ld hl, sp-$18
    ld a, b
    add sp, -$50
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    scf
    ccf
    inc [hl]
    rra
    ld [de], a
    rra
    inc d
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp+$78
    cp b
    ld c, b
    rra
    db $10
    dec hl
    inc a
    cpl
    inc sp
    ld a, a
    ld [hl], e
    rst $08
    rst $38
    rst $00
    rst $38
    ld a, [hl]
    ld a, a
    add hl, sp
    add hl, sp
    ldh a, [rNR10]
    ldh [$60], a
    ld hl, sp-$08
    db $fc
    db $fc
    add $fe
    add $fe
    ld a, h
    db $fc
    cp b
    cp b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr c, @+$41

    ccf
    jr nc, @+$81

    ld d, h
    ld a, a
    ld b, d
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    inc c
    cp $2a
    cp $42
    ccf
    jr nc, jr_005_6112

    ld a, c

jr_005_6095:
    rst $30
    sbc a
    ld hl, sp-$61
    ld a, a
    ld [hl], a
    rra
    jr jr_005_60bd

    rra
    ld c, $0e
    db $fc
    inc c
    ld a, [hl]
    sbc [hl]
    rst $28
    ld sp, hl
    rra
    ld sp, hl
    cp $ee
    ld hl, sp+$18
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr c, @+$41

    ld a, $3f

jr_005_60bd:
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    ld a, h
    db $fc
    cp $fa
    cp $f2
    dec sp
    scf
    ld a, a
    ld a, b
    rst $30
    cp a
    ld hl, sp-$41
    ld a, a
    ld [hl], a
    rra
    jr @+$21

    rra
    ld c, $0e
    call c, $feec
    ld e, $ef
    db $fd
    rra
    db $fd
    cp $ee
    ld hl, sp+$18
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_005_6138

    jr nz, jr_005_613a

    ccf
    ld hl, $141f
    rra
    jr @-$1e

    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra

jr_005_6112:
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc

jr_005_611a:
    inc bc
    rlca

jr_005_611c:
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ret nc

    ldh a, [$f0]
    jr nc, jr_005_611a

    jr nc, jr_005_611c

    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp

jr_005_6138:
    rra
    db $10

jr_005_613a:
    rra
    jr c, @+$41

    ccf
    jr nc, @+$81

    ld d, h
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    inc c
    cp $2a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rra
    inc e
    dec bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    cp $42
    db $fc
    inc c
    ld a, h
    sbc h
    db $fc
    db $fc
    db $fc
    inc h
    db $fc
    db $e4
    ret c

    ret c

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nc, @+$41

    jr c, jr_005_61be

    ld a, [hl]
    ld e, a
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    inc e
    db $fc
    ld a, [hl]
    ld a, [$4f7f]
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    ccf
    dec sp
    rra
    inc e
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    cp $f2
    db $fc
    call z, Call_000_3cfc
    cp $d2
    cp $32
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_005_61fa

    jr nz, jr_005_61fc

    ccf

jr_005_61be:
    ld hl, $141f
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    jr jr_005_61f3

    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc h
    ccf
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_005_6209

    dec de
    dec de

jr_005_61f3:
    ccf
    inc h
    rrca
    db $10
    rra
    db $10
    ccf

jr_005_61fa:
    jr nc, @+$41

jr_005_61fc:
    ccf
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ret c

    ret c

    db $fc
    inc h
    ldh a, [$08]
    ld hl, sp+$08

jr_005_6209:
    db $fc
    inc c
    db $fc
    db $fc
    cp $0a
    cp $42
    ccf
    jr nc, jr_005_6252

    add hl, sp
    ld a, a
    ld c, a
    ld a, a
    ld c, c
    ccf
    jr nc, @+$21

    db $10
    rra
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    cp $92
    db $fc
    inc c
    ld hl, sp+$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    dec de
    dec de
    ccf
    inc h
    rrca
    db $10
    rra
    db $10
    ccf
    jr nc, jr_005_627b

    jr c, @+$81

    ld e, a
    ld a, a
    ld c, a
    ret c

    ret c

    db $fc
    inc h
    ldh a, [$08]
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    inc e
    cp $fa
    cp $f2
    ccf

jr_005_6252:
    scf
    ccf
    jr c, jr_005_62d5

    ld e, a
    ld a, a
    ld d, b
    ccf
    jr nc, jr_005_627b

    ld e, $1f
    rra
    ld c, $0e
    db $fc
    db $ec
    db $fc
    inc e
    cp $fa
    cp $0a
    db $fc
    inc c
    ld hl, sp+$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    dec de
    dec de
    ccf
    inc h
    rrca
    db $10
    rra
    db $10
    rra
    db $10

jr_005_627b:
    rra
    rra
    rra
    db $10
    rra
    inc d
    db $ec
    db $ec
    cp $12
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    dec de
    dec de
    ccf
    inc h
    rrca
    db $10
    rra
    db $10
    ccf
    jr nc, @+$41

    ccf
    ld a, a
    ld d, b
    nop
    nop
    ret c

    ret c

    db $fc
    inc h
    ldh a, [$08]
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    db $fc
    cp $0a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], b

jr_005_62d5:
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rra
    add hl, de
    rrca
    ld c, $0f
    rrca
    rlca
    rlca
    cp $42
    db $fc
    inc c
    ld [hl], h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, Call_005_48f8
    or b
    or b
    nop
    nop
    nop
    nop
    dec de
    dec de
    ccf
    inc h
    rrca
    db $10
    rra
    db $10
    ccf
    jr nc, jr_005_633d

    jr c, jr_005_637f

    ld e, a
    nop
    nop
    ret c

    ret c

    db $fc
    inc h
    ldh a, [$08]
    ld hl, sp+$08
    db $fc
    inc c
    db $fc
    inc e
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    ccf
    dec sp
    rra
    jr jr_005_632b

    inc c
    rrca
    rrca
    rlca
    rlca
    cp $f2
    db $fc
    call z, Call_000_3cfc
    cp $d2
    cp $12

jr_005_632b:
    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    dec de
    dec de
    ccf
    inc h
    rrca
    db $10
    rra
    db $10
    rra
    db $10

jr_005_633d:
    rra
    rra
    rra
    stop
    nop
    db $ec
    db $ec
    cp $12
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    ccf
    inc a
    rra
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_005_6389

    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, e
    ld a, a
    ld [hl], c
    ld a, a
    ld e, [hl]

jr_005_637f:
    ld a, [hl]
    ld e, a
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc

jr_005_6389:
    cp $de
    cp $8e
    cp $7a
    ld a, [hl]
    ld a, [c]
    cpl
    ld a, $3e
    ld sp, $4f7f
    ld a, a
    ld c, e
    ccf
    jr c, jr_005_63bb

    jr jr_005_63bd

    rra
    ld c, $0e
    db $f4
    ld a, h
    ld a, h
    adc h
    cp $f2
    cp $d2
    db $fc
    inc e
    ld hl, sp+$18
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a

jr_005_63bb:
    ld a, a
    ld a, a

jr_005_63bd:
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fa
    cp $fa
    ccf
    inc sp
    ccf
    inc a
    ld a, a
    ld e, e
    ld a, a
    ld d, c
    ccf
    jr nc, jr_005_63fb

    ld de, $1f1f
    ld c, $0e
    db $fc
    call z, Call_000_3cfc
    cp $da
    cp $8a
    db $fc
    inc c
    ld hl, sp-$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    dec de

jr_005_63fb:
    rra
    ld de, $1d1f
    inc e
    rra
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    rra
    inc e
    dec bc
    inc c
    rlca
    rlca

jr_005_6417:
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp+$28
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ld bc, $0701
    ld b, $0c
    dec bc
    rra
    db $10
    jr z, @+$39

    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ld l, a
    ld d, d
    add b
    add b
    ldh [$60], a
    jr nc, jr_005_6417

    ld hl, sp+$08
    inc d
    db $ec
    cp $0a
    cp $02
    or $4a
    ccf
    jr nc, jr_005_6483

    add hl, sp
    ld c, l
    ld a, [hl]

jr_005_6457:
    ld e, [hl]
    ld a, a
    ccf
    ccf
    db $10
    rra
    add hl, sp
    ccf
    ccf
    ccf
    db $fc
    inc c
    db $f4
    sbc h
    or d
    ld a, [hl]
    ld a, d
    cp $fc
    db $fc
    ld [$9cf8], sp
    db $fc
    db $fc
    db $fc
    ld bc, $0701
    ld b, $0c
    dec bc
    rra
    db $10
    cpl
    jr nc, jr_005_64fb

    ld d, b
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    add b

jr_005_6482:
    add b

jr_005_6483:
    ldh [$60], a
    jr nc, jr_005_6457

    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $0a
    cp $02
    ccf
    jr nc, @+$61

    ld a, b
    ld d, a
    ld a, [hl]
    ld c, a
    ld [hl], e
    ccf
    inc sp
    inc e
    rra
    add hl, sp
    ccf
    ld a, $3e
    db $fc
    inc c
    ld a, [$ea1e]
    ld a, [hl]
    ld a, [c]
    adc $fc
    call z, $f838
    sbc h
    db $fc
    ld a, h
    ld a, h
    inc bc
    inc bc
    inc b
    rlca
    rrca
    ld [$1e11], sp
    ld a, $21
    ccf
    jr nz, jr_005_64fd

    jr nz, jr_005_64ff

    jr z, jr_005_6482

    ret nz

    ldh [rNR41], a
    ld [hl], b
    sub b
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld h, h
    db $fc
    inc d
    ccf
    jr nz, @+$21

    jr @+$20

    ld de, $0f0f
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    db $fc
    inc d
    ld a, b
    add sp, -$48
    ld hl, sp+$1c
    db $e4
    sbc h
    db $e4
    db $fc
    db $fc
    ld [$f0f8], sp
    ldh a, [rSB]
    ld bc, $0607
    inc c
    dec bc
    rra
    db $10
    jr z, @+$39

jr_005_64fb:
    ld a, a

Call_005_64fc:
    ld d, b

jr_005_64fd:
    ld a, a
    ld b, b

jr_005_64ff:
    ld l, a
    ld d, d
    add b
    add b
    ldh [$60], a
    jr nc, @-$2e

    ld hl, sp+$08
    inc d
    db $ec
    cp $0a
    cp $02
    or $4a
    ccf
    jr nc, jr_005_6563

    ld a, c
    ld e, a
    ld a, [hl]

jr_005_6517:
    ccf
    ccf
    rra
    rra
    db $10
    rra
    ld e, $1f

jr_005_651f:
    rrca
    rrca
    db $fc
    inc c
    ld a, [c]
    sbc [hl]

jr_005_6525:
    ld a, [$fc7e]
    db $fc
    ld hl, sp-$08
    jr c, jr_005_6525

    jr nc, jr_005_651f

    ret nz

    ret nz

    ld bc, $0701
    ld b, $0c
    dec bc
    rra
    db $10
    cpl
    jr nc, jr_005_65bb

    ld d, b
    ld a, a
    ld b, b
    ld l, a
    ld d, b
    add b
    add b
    ldh [$60], a
    jr nc, jr_005_6517

    ld hl, sp+$08
    db $f4
    inc c
    cp $0a
    cp $02
    or $0a
    ccf
    jr nc, jr_005_65b3

    ld a, b
    ld e, a
    ld a, [hl]
    ld c, a
    ld [hl], e
    ccf
    inc sp
    inc e
    rra
    ld e, $1f

jr_005_655f:
    rrca
    rrca
    db $fc
    inc c

jr_005_6563:
    ld a, [$fa1e]
    ld a, [hl]
    ld a, [c]
    adc $fc
    call z, $f838
    jr nc, jr_005_655f

    ret nz

    ret nz

    rlca
    rlca
    add hl, bc
    ld c, $1e
    ld de, $3c23
    ld a, l
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld d, b
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$38
    ld hl, sp+$28
    ld a, a
    ld b, b
    ld a, $31
    dec a
    inc hl
    ld e, $1f
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ld hl, sp+$28
    ldh a, [$d0]
    ld [hl], b
    ldh a, [rNR41]
    ldh [rSVBK], a
    sub b
    ldh a, [$90]
    ld [hl], b
    ldh a, [$e0]
    ldh [rP1], a
    nop

jr_005_65b3:
    rlca
    rlca
    rrca
    rrca
    rra
    add hl, de
    rra
    db $10

jr_005_65bb:
    ccf
    jr nc, jr_005_663d

    ld d, [hl]
    ld a, a
    ld b, d
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$68
    ld hl, sp+$08
    db $fc
    inc c
    cp $6a
    cp $42
    ccf
    jr nc, @+$3e

    dec sp
    ld a, a
    ld c, h
    ld a, a
    ld c, a
    ld a, $3f
    rra
    rra
    rra
    rla
    ld c, $0e
    db $fc
    inc c
    inc a
    call c, Call_000_32fe
    cp $f2
    ld a, h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld d, a
    ld a, a
    ld b, e
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $ea
    cp $c2
    ccf
    jr nc, jr_005_6653

    jr c, jr_005_6695

    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    rra
    rra
    rla
    ld c, $0e
    db $fc
    inc c
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    dec e
    rra
    rra
    jr jr_005_665b

    db $10

jr_005_663d:
    rra
    db $10
    rra
    ld d, $00
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08

jr_005_6649:
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp+$78
    jr jr_005_6649

    rra
    inc d

jr_005_6653:
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    inc bc
    inc bc

jr_005_665b:
    rlca
    rlca
    rrca
    dec bc
    rrca
    rrca
    ld l, b
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    add hl, de
    rra
    db $10
    ccf
    jr nc, jr_005_66ff

    ld d, [hl]
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$68
    ld hl, sp+$08
    db $fc
    inc c
    cp $6a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], b

jr_005_6695:
    ld a, h
    ld e, e
    ccf
    inc a
    rra
    rra
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    cp $42
    db $fc
    inc c
    inc [hl]
    call c, $34fc
    db $fc
    call z, $c8f8
    or b
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld d, a
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $ea
    ld a, a
    ld b, e
    ld a, a
    ld [hl], b
    ld a, a
    ld e, b
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    cp $c2
    db $fc
    inc c
    db $fc
    inc e
    ld hl, sp-$08
    db $fc
    db $e4
    db $fc
    db $e4
    sbc b
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    dec e
    rra
    rra
    jr jr_005_671d

    db $10

jr_005_66ff:
    rra
    stop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp+$78
    rra
    ld d, $1f
    inc d
    rrca
    ld [$0407], sp
    dec de
    rra

jr_005_671b:
    dec a
    cpl

jr_005_671d:
    rra
    rra
    ld c, $0e
    jr jr_005_671b

    ld l, b
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_005_6749

    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    scf
    ld a, a
    ld d, b
    ld a, a
    ld b, d
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe

jr_005_6749:
    db $fc
    db $fc
    db $fc
    db $ec
    cp $0a
    cp $42
    ccf
    ld [hl-], a
    ld a, $39
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    ld c, h
    ld a, h
    sbc h
    cp $f2
    cp $f2
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    cp $fa
    cp $f2
    ccf
    jr nc, jr_005_67cf

    inc a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    inc c
    call c, $fe3c
    ld a, [$fafe]
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    inc d
    rra
    inc d
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc

jr_005_67cf:
    ld hl, sp-$68
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    scf
    ld a, a
    ld d, b
    nop
    nop
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $ec
    cp $0a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    cp $42
    db $fc
    ld c, h
    ld [hl], h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, $c8f8
    or b
    or b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], b
    ld a, e
    ld e, h
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    cp $f2
    db $fc
    inc c
    call c, $fe3c
    ld a, [c]
    cp $f2
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    inc d
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    rra
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    sbc h
    db $fc
    db $fc
    jr jr_005_68c9

    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, @+$41

    daa
    ld a, a
    ld c, b
    ld a, a
    ld d, [hl]
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08

jr_005_68c9:
    db $fc
    inc b
    db $fc
    db $e4
    cp $12
    cp $6a
    ld a, a
    ld c, b
    ld l, [hl]
    ld e, l
    ld e, a
    ld [hl], e
    ld e, a
    ld [hl], h
    ld a, a
    ld [hl], h
    rra
    inc de
    jr nz, @+$41

    rra
    rra
    cp $12
    db $76
    cp d
    ld a, [$face]
    xor [hl]
    cp $ae
    ld hl, sp-$38
    inc b
    db $fc
    ld hl, sp-$08
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_005_693b

    jr nz, @+$81

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    cp $02
    ld a, a
    ld b, b
    ld [hl], b
    ld c, a
    ld h, b
    ld e, a
    ld c, a
    ld a, a
    ld a, a
    ld [hl], b
    rra
    db $10
    jr nz, @+$41

    rra
    rra
    cp $02
    ld c, $f2
    ld b, $fa
    ld a, [c]
    cp $fe
    ld c, $f8
    ld [$fc04], sp
    ld hl, sp-$08
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rra
    db $10

jr_005_693b:
    rra
    ld e, $1f
    ld de, $161f
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    add h
    rra
    db $10
    dec bc
    inc c
    rrca
    rrca
    rra
    ld [de], a
    rra
    ld [de], a
    rrca
    inc c
    ld [$070f], sp
    rlca
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    db $fc
    ldh a, [rNR10]
    ld [$f0f8], sp
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, @+$41

    daa
    ld a, a
    ld c, b
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    db $e4
    cp $12
    ld a, a
    ld d, [hl]
    ld a, a
    ld c, b
    ld l, a
    ld e, a
    ld e, a
    ld [hl], h
    ld e, a
    ld [hl], h
    ld a, a
    ld [hl], e
    jr nz, @+$41

    rra
    rra
    cp $6a
    cp $12
    or $fa
    ld a, [$faae]
    xor [hl]
    cp $ce
    inc b
    db $fc
    ld hl, sp-$08
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_005_69fd

    jr nz, jr_005_6a3f

    ld b, b
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld [hl], b
    ld c, a
    ld h, b
    ld e, a
    ld b, a
    ld a, a
    ld a, a
    ld a, b
    jr nz, jr_005_6a1e

    rra
    rra
    cp $02
    cp $02
    ld c, $f2
    ld b, $fa
    ld [c], a
    cp $fe
    ld e, $04
    db $fc
    ld hl, sp-$08
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rra
    db $10

jr_005_69fd:
    rra
    ld e, $1f
    ld de, $0000
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    rra
    ld d, $1f
    db $10
    dec bc
    inc c
    rrca
    rrca
    rra
    ld [de], a
    rra
    ld [de], a
    inc c

jr_005_6a1e:
    rrca
    rlca
    rlca
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    add h
    db $fc
    db $fc
    ld [$f0f8], sp
    ldh a, [rIF]
    rrca
    db $10
    rra
    rra
    db $10
    db $10
    rra
    rra
    rra
    ccf
    scf
    ld a, a
    ld d, b

jr_005_6a3f:
    ld a, a
    ld b, d
    ldh a, [$f0]
    ld [$f8f8], sp
    ld [$f808], sp
    ld hl, sp-$08
    db $fc
    db $ec
    cp $0a
    cp $42
    ccf
    ld [hl-], a
    ld e, $19
    ccf
    ccf
    ld a, l
    ld c, [hl]
    ld a, a
    ld c, e
    jr c, jr_005_6a9c

    rra
    rla
    ld c, $0e
    db $fc
    ld c, h
    ld a, b
    sbc b
    db $fc
    db $fc
    cp [hl]
    ld [hl], d
    cp $d2
    inc e
    db $fc
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    db $10
    rra
    rra
    db $10
    db $10
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ldh a, [$f0]
    ld [$f8f8], sp
    ld [$f808], sp
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    cp $f2
    ccf
    inc sp
    ccf
    inc a
    ld [hl], e
    ld e, a
    ld [hl], b
    ld e, a
    inc a
    ccf
    rra

jr_005_6a9c:
    rra
    rra
    rla
    ld c, $0e
    db $fc
    call z, Call_000_3cfc
    adc $fa
    ld c, $fa
    inc a
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    db $10
    rra
    rra
    db $10
    db $10
    rra
    rra
    rra
    rra
    ld de, $141f

Jump_005_6abf:
    rra
    inc d
    ldh a, [$f0]
    ld [$f8f8], sp
    ld [$f808], sp
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$68
    rra

jr_005_6ad2:
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc b

jr_005_6adc:
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    add sp, $78
    ret z

    ld hl, sp-$18
    jr c, jr_005_6ad2

    jr c, jr_005_6adc

    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    nop
    nop
    rrca
    rrca
    db $10
    rra
    rra
    db $10
    db $10
    rra
    ccf
    ccf
    ccf
    scf
    ld a, a
    ld d, b
    nop
    nop
    ldh a, [$f0]
    ld [$f8f8], sp
    ld [$f808], sp
    db $fc
    db $fc
    db $fc
    db $ec
    cp $0a
    ld a, a
    ld b, d
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld e, c
    ccf
    ccf
    dec de
    rra
    dec c
    ld c, $0f
    dec bc
    rlca
    rlca
    cp $42
    db $fc
    ld c, h
    ld a, h
    sbc h
    db $fc
    db $f4
    db $fc
    call z, Call_005_48f8
    or b
    or b
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    rra
    db $10
    db $10
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    nop
    nop
    ldh a, [$f0]
    ld [$f8f8], sp
    ld [$f808], sp
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    ld a, a
    ld c, a
    ld a, a
    ld [hl], e
    ld a, a
    ld e, h
    dec sp
    ccf
    jr jr_005_6b7a

    inc c
    rrca
    rrca
    dec bc
    rlca
    rlca
    cp $f2
    db $fc
    call z, Call_000_3cfc
    sbc $f2
    ld e, $f2
    inc a
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    rra
    db $10
    db $10

jr_005_6b7a:
    rra
    rra
    rra
    rra
    ld de, $141f
    nop
    nop
    ldh a, [$f0]
    ld [$f8f8], sp
    ld [$f808], sp
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rra
    rra
    inc h
    ccf
    inc de
    rra
    ld c, $0e
    ld hl, sp-$68
    ldh a, [rNR10]
    add sp, $78
    add sp, -$08
    ld hl, sp-$68
    db $f4
    sbc h
    db $e4
    db $fc
    jr jr_005_6bc9

    rlca
    rlca
    rrca
    rrca
    rra
    rra

jr_005_6bb7:
    rra
    rra
    ccf
    ld a, $3f
    jr c, jr_005_6bfd

    ld [hl+], a
    ccf
    ld [hl-], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08

jr_005_6bc9:
    db $fc
    ld a, h
    db $fc
    inc e
    db $fc
    ld b, h
    db $fc
    ld c, h
    ld a, $39
    rlca
    rlca
    inc c
    dec bc
    ld e, $13
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld a, h
    sbc h
    ldh [$e0], a
    jr nc, jr_005_6bb7

    ld a, b
    ret z

    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    rlca
    rlca
    rrca
    rrca
    rra
    rra

jr_005_6bf7:
    dec e
    ld e, $3e
    ccf
    ccf
    ccf

jr_005_6bfd:
    ccf
    ccf
    ccf
    ccf

jr_005_6c01:
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    jr c, jr_005_6c01

    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ccf
    ccf
    rlca
    rlca
    inc c
    dec bc
    ld e, $13
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    db $fc
    ldh [$e0], a
    jr nc, jr_005_6bf7

    ld a, b
    ret z

    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    scf
    rra
    inc de
    rra
    dec d
    rra
    inc d
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    add sp, -$10
    db $f4
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp h
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    inc a
    db $fc
    ld a, h
    add b
    add b
    ret nz

    ret nz

    ret nz

    ld b, b
    ld h, b
    ldh [$e0], a
    ldh [$80], a
    add b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ld a, $3f
    jr c, jr_005_6cbf

    ld [hl+], a
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld a, h
    db $fc
    inc e
    db $fc
    ld b, h
    ccf
    ld [hl-], a
    ld a, $39
    ccf
    daa
    inc e
    rra
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    ld c, h
    ld a, h
    sbc h
    ld hl, sp-$18
    inc a
    db $e4
    ld hl, sp-$38
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    dec e
    ld e, $3e
    ccf
    ccf
    ccf

jr_005_6cbf:
    ccf
    ccf
    nop
    nop

jr_005_6cc3:
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    jr c, jr_005_6cc3

    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ccf
    ccf
    ccf
    ccf
    ccf
    daa
    inc e
    rra
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$18
    inc a
    db $e4
    ld hl, sp-$18
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    scf
    rra
    inc de
    rra
    dec d
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    db $f4
    ld hl, sp-$08
    db $fc

jr_005_6d0b:
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    rrca
    dec bc
    rra
    rla
    rrca
    rrca
    ld e, $1e
    db $fc
    cp h
    db $fc
    inc a
    db $fc
    ld a, h
    ret nz

    ret nz

    jr nz, jr_005_6d0b

    ld hl, sp-$08
    ld hl, sp-$08
    jr nc, jr_005_6d61

    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rla
    rra
    dec sp
    ld a, $3f
    jr c, jr_005_6d5d

    ld [de], a
    rra
    ld [de], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    add sp, -$08
    call c, $fc7c
    inc e
    ld hl, sp+$48
    ld hl, sp+$48
    ld c, $09
    rrca
    rrca
    rra
    rla
    ccf
    cpl
    ccf
    jr z, jr_005_6d9b

    inc a

jr_005_6d5d:
    rra
    inc e
    rra
    rra

jr_005_6d61:
    ld [hl], b
    sub b
    ldh a, [$f0]
    ld hl, sp-$18
    db $fc
    db $f4
    db $fc
    inc d
    db $fc
    inc a
    ld hl, sp+$38
    ld hl, sp-$08
    rlca
    rlca
    ld c, $0f
    dec e
    rra
    dec de
    rra
    dec sp
    ccf
    dec a
    ccf
    ld e, $1f
    rra
    rla
    ldh [$e0], a
    ld [hl], b
    ldh a, [$b8]
    ld hl, sp-$28
    ld hl, sp-$24
    db $fc
    cp h
    db $fc
    ld a, b
    ld hl, sp-$08
    add sp, $0f
    ld [$1f1f], sp
    ccf
    cpl
    ld a, a
    ld e, a
    ld a, a
    ld e, b

jr_005_6d9b:
    ld a, a
    ld a, [hl]
    rra
    dec e
    rra
    rra
    ldh a, [rNR10]
    ld hl, sp-$08
    db $fc
    db $f4
    cp $fa
    cp $1a
    cp $7e
    ld hl, sp-$48
    ld hl, sp-$08
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld a, $3f
    dec a
    inc sp
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    ldh [$f8], a
    add sp, -$04
    db $ec
    cp $ec
    cp $ec
    cp $f0
    db $fc
    db $fc
    db $fc
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    dec b
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    rlca
    inc bc
    inc bc
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$90]
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rla
    rra
    dec sp
    ld a, $3f
    jr c, jr_005_6e1d

    ld [de], a
    rra
    ld [de], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    add sp, -$08
    call c, $fc7c
    inc e
    ld hl, sp+$48
    ld hl, sp+$48
    ld c, $09
    rrca
    rrca
    rra
    rla
    ccf
    cpl
    ccf
    jr z, jr_005_6e5b

    inc a

jr_005_6e1d:
    rra
    inc e
    rra
    rra
    ld [hl], b
    sub b
    ldh a, [$f0]
    ld hl, sp-$18
    db $fc
    db $f4
    db $fc
    inc d
    db $fc
    inc a
    ld hl, sp+$38
    ldh [$e0], a
    rlca
    rlca
    ld c, $0f
    dec e
    rra
    dec de
    rra
    dec sp
    ccf
    dec a
    ccf
    ld e, $1f
    rra
    rla
    ldh [$e0], a
    ld [hl], b
    ldh a, [$b8]
    ld hl, sp-$28
    ld hl, sp-$24
    db $fc
    cp h
    db $fc
    ld a, b
    ld hl, sp-$08
    add sp, $0f
    ld [$1f1f], sp
    ccf
    cpl
    ld a, a
    ld e, a
    ld a, a
    ld e, b

jr_005_6e5b:
    ld a, a
    ld a, [hl]
    rra
    dec e
    rra
    rra
    ldh a, [rNR10]
    ld hl, sp-$18
    db $fc
    db $f4
    db $fc
    db $fc
    ld hl, sp+$18
    ld hl, sp+$78
    ldh a, [$b0]
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld a, $3f
    dec a
    inc sp
    rra
    inc d
    nop
    nop
    ret nz

    ret nz

    ldh [$f8], a
    add sp, -$04
    db $ec
    cp $ec
    cp $ec
    cp $f0
    db $fc
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    ld b, $07
    rlca
    ld b, $07
    ld b, $03
    inc bc
    db $fc
    db $fc
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh a, [rSVBK]
    ld hl, sp+$58
    ld hl, sp+$78
    ldh a, [$f0]
    inc bc
    inc bc
    rrca
    ld c, $1f
    rra
    rra
    rra
    ccf
    ccf
    scf
    dec a
    ccf
    jr z, jr_005_6eff

    ld [hl+], a
    ret nz

    ret nz

    ldh a, [rSVBK]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $ec
    cp h
    db $fc
    inc d
    db $fc
    ld b, h
    rra
    ld [de], a
    ld c, $09
    rra
    rla
    inc a
    daa
    inc de
    rra
    inc c
    rrca
    rrca
    rrca
    ld b, $06
    ld hl, sp+$48
    ld [hl], b
    sub b
    ld hl, sp-$18
    inc a
    db $e4
    ret z

    ld hl, sp+$30
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    inc bc
    ld [bc], a
    dec c
    rrca
    dec de
    rra
    dec de
    rra
    dec sp
    ccf
    dec sp
    ccf
    dec sp
    ccf

jr_005_6eff:
    inc a
    ccf
    ret nz

    ld b, b
    or b
    ldh a, [$d8]
    ld hl, sp-$28
    ld hl, sp-$24
    db $fc
    call c, $dcfc
    db $fc
    inc a
    db $fc
    rra
    rla
    rrca
    ld [$373f], sp
    inc a
    daa
    inc de
    rra
    ld [$0f0f], sp
    rrca
    ld b, $06
    ld hl, sp-$18
    ldh a, [rNR10]
    db $fc
    db $ec
    inc a
    db $e4
    ret z

    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    scf
    ccf
    dec a
    scf
    ccf
    ld sp, $141f
    db $fc
    call z, $fef6
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    sbc a
    rra
    inc d
    rrca
    ld [$0707], sp
    rlca
    ld b, $03
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    cp $1e
    ldh a, [$30]
    ldh [$e0], a
    ld h, b
    ldh [$d0], a
    ld [hl], b
    sub b
    ldh a, [$e0]
    ldh [$e0], a
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rrca
    ld c, $1f
    rra
    rra
    rra
    ccf
    ccf
    scf
    dec a
    ccf
    jr z, jr_005_6f82

jr_005_6f82:
    nop
    ret nz

    ret nz

    ldh a, [rSVBK]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $ec
    cp h
    db $fc
    inc d
    ccf
    ld [hl+], a
    rra
    ld [de], a
    ld a, $39
    ccf
    daa
    inc e
    rra
    inc de
    rra
    rrca
    rrca
    rlca
    rlca
    db $fc
    ld b, h
    ld hl, sp+$48
    ld [hl], b
    sub b
    ld hl, sp-$18
    inc a
    db $e4
    ld hl, sp-$38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    dec c
    rrca
    dec de
    rra
    dec de
    rra
    dec sp
    ccf
    dec sp
    ccf
    dec sp
    ccf
    nop
    nop
    ret nz

    ld b, b
    or b
    ldh a, [$d8]
    ld hl, sp-$28
    ld hl, sp-$24
    db $fc
    call c, $dcfc
    db $fc
    inc a
    ccf

jr_005_6fd3:
    rra
    rla
    rrca
    ld [$171f], sp
    jr c, @+$31

    inc de
    rra
    rrca
    rrca
    ld b, $06
    inc a
    db $fc
    ld hl, sp-$18
    ldh a, [rNR10]
    ld hl, sp-$18
    jr c, jr_005_6fd3

    ret c

    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld a, e
    ld l, a
    ld a, a
    ld h, e
    nop
    nop
    ld hl, sp-$68
    db $ec
    db $fc
    or $fe
    or $fe

jr_005_700b:
    or $fe
    rst $30
    rst $38
    rst $28
    rst $38
    ccf
    add hl, hl
    ccf
    jr z, jr_005_7035

    db $10
    rrca
    rrca
    rrca
    dec bc
    inc e
    rla
    rrca
    rrca
    ld e, $1e
    rst $38
    ccf
    rst $38
    ccf

jr_005_7025:
    ldh [$60], a
    ret nz

    ret nz

    jr nz, jr_005_700b

    jr c, jr_005_7025

    ld hl, sp-$08
    jr nc, jr_005_7061

    inc bc
    inc bc
    rrca
    rrca

jr_005_7035:
    rra
    rra
    rra
    rra
    ccf
    dec sp
    ld a, a
    ld d, c
    ld a, a
    ld b, h
    ld l, a
    ld d, d
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    db $fc
    call c, $8afe
    cp $22
    or $4a
    ccf
    jr nc, jr_005_7092

    add hl, sp
    ld a, a
    ld c, a
    ld a, [hl]
    ld c, l
    cp $f9
    ld hl, sp-$01
    ld a, a
    ld a, a
    ld c, $0e

jr_005_7061:
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    ld a, [hl]
    or d
    ld a, a
    sbc a
    rra
    rst $38
    cp $fe
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fa
    ccf

jr_005_7092:
    scf
    rra
    jr jr_005_70d5

    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld c, $0e
    db $fc
    db $ec
    ld hl, sp+$18
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    scf
    rra
    ld de, $121f
    rra
    inc d
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp+$78
    cp b
    ld c, b
    rra
    db $10
    dec bc
    inc c

jr_005_70d5:
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ld hl, sp-$28
    db $fc
    inc a
    cp $3e
    call c, $f0fc
    ldh a, [$c0]
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    dec sp
    ccf
    ld sp, $547f
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    db $fc
    call c, $8cfc
    cp $2a
    ld l, a
    ld d, d
    ld a, a
    ld [hl], b
    ld a, [hl]
    ld e, c
    rst $38
    rst $38
    cp $fd
    ld a, [hl]
    ld a, c
    rra
    rra
    rlca
    rlca
    or $4a
    cp $0a
    ld a, h
    sbc h
    rst $38
    rst $30
    ld a, a
    rst $08
    ld a, [hl]
    adc $b8
    cp b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    ld a, a
    ld e, a
    ccf
    scf
    rst $38
    ld hl, sp-$01
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rra
    rra
    ld c, $0e
    cp $fa
    db $fc
    db $ec
    db $fc
    inc e
    cp $fa
    cp $fa
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    scf
    rra
    ld de, $121f
    nop
    nop
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp+$78
    rra
    inc d
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    dec e
    ld e, $3f
    ld a, $1f
    rra
    ld c, $0e
    cp b
    ld c, b
    ldh a, [rNR10]
    rst $38
    ld a, a
    cp $de
    cp $9e
    db $fc
    sbc h
    db $fc
    db $fc
    jr @+$1a

    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    dec sp
    inc a
    scf

jr_005_71be:
    jr c, jr_005_723f

    ld h, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    cp b
    ld hl, sp+$7c
    cp h
    call c, $ec3c
    inc e
    cp $46
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld a, c
    ld a, a
    ld [hl], a
    inc a
    daa
    ccf
    jr z, @+$15

    inc e
    dec bc
    inc c
    rlca
    rlca
    cp $4e
    ld a, [hl]
    sbc [hl]
    cp $ee
    inc a
    db $e4
    db $fc
    inc d
    ret z

    jr c, jr_005_71be

    jr nc, @-$1e

    ldh [$03], a
    inc bc
    rrca
    rrca
    rra
    ld e, $1f
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp+$78
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, [hl-]
    dec l
    ld de, $121e
    dec e
    ld [$070f], sp
    rlca
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld e, h
    or h
    adc b
    ld a, b
    ld c, b
    cp b
    db $10
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    scf
    dec sp
    dec a
    inc sp
    ccf
    inc [hl]

jr_005_723f:
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    rra
    ld de, $0d0b
    rlca
    rlca
    rlca
    ld b, $07
    inc b
    rlca
    rlca
    rlca
    inc b
    inc bc
    inc bc
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc

jr_005_7267:
    ld hl, sp-$38
    call nc, Call_000_04ac
    db $fc
    jr jr_005_7267

    ldh [$e0], a
    rlca
    rlca
    rrca
    rrca
    dec de
    inc e
    rla
    jr jr_005_72b9

    jr nc, jr_005_72fb

    ld d, b
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, d
    ldh [$e0], a
    ldh a, [$f0]
    ret c

jr_005_7286:
    jr c, @-$16

    jr jr_005_7286

    inc c
    cp $0a
    cp $62
    cp $42
    ccf
    jr nc, jr_005_72d2

    add hl, sp
    ld a, a
    ld c, a
    ld a, c
    ld c, [hl]
    jr nc, @+$41

    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    inc c
    ld a, h
    sbc h
    cp $f2
    sbc [hl]
    ld [hl], d
    inc c
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf

jr_005_72b9:
    ccf
    ccf
    ld a, a
    ld d, a
    ld a, a
    ld d, e
    ld l, a
    ld d, b
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $ea
    cp $ca
    or $0a
    ld a, a

jr_005_72d2:
    ld [hl], b
    ccf
    jr c, jr_005_734d

    ld e, a
    ld [hl], b
    ld e, a
    jr c, jr_005_731a

    rra
    rra
    rra
    rra
    ld c, $0e
    db $fc
    inc c
    db $fc
    inc e
    xor $fa
    ld c, $fa
    inc e
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rlca
    rlca
    ld c, $09
    rra
    db $10
    rra
    db $10

jr_005_72fb:
    rra
    db $10
    rra
    ld d, $1f
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld a, h
    db $fc
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld c, h
    ld hl, sp+$48
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    inc bc
    inc bc
    inc bc

jr_005_731a:
    inc bc
    rlca

jr_005_731c:
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ldh a, [rNR10]
    ldh [$60], a
    ret nc

    ldh a, [$f0]
    jr nc, jr_005_731a

    jr nc, jr_005_731c

    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    dec a
    ccf
    jr nc, jr_005_7342

jr_005_7342:
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08

jr_005_734d:
    db $fc
    cp h
    db $fc
    inc c
    ccf
    ld [hl+], a
    rra
    ld [de], a
    ld c, $09
    dec de
    rla
    jr c, jr_005_7382

    jr jr_005_737c

    rrca
    add hl, bc
    ld b, $06
    db $fc
    ld b, h
    ld hl, sp+$48

jr_005_7365:
    ld [hl], b
    sub b
    ret c

    add sp, $1c
    db $e4
    jr jr_005_7365

    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra

jr_005_737c:
    rra
    ccf
    ccf
    ccf
    ccf
    nop

jr_005_7382:
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ccf
    cpl
    rra
    inc de
    rrca
    ld [$171b], sp
    jr c, jr_005_73c2

    jr jr_005_73bc

    rrca
    add hl, bc
    ld b, $06
    db $fc
    db $f4
    ld hl, sp-$38

jr_005_73a5:
    ldh a, [rNR10]
    ret c

    add sp, $1c
    db $e4
    jr jr_005_73a5

    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ccf

jr_005_73bc:
    ccf
    ccf
    dec sp
    rra
    stop

jr_005_73c2:
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    rra
    inc d
    rra
    inc d
    rrca
    ld [$0707], sp
    dec b
    ld b, $03
    ld [bc], a
    rlca
    dec b
    inc bc
    inc bc
    db $fc
    sbc h
    ld hl, sp+$18
    ldh a, [$30]
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ld h, b
    ldh [$a0], a
    ret nz

    ret nz

    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    scf
    ld a, a
    ld d, e
    ld a, a
    ld b, b
    ld l, a
    ld d, d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $ec
    cp $ca
    cp $02
    or $4a
    ccf
    inc sp
    ld c, $0d
    rra
    dec d
    rra
    inc d
    dec c
    ld c, $13
    rra
    ld de, $0e1f
    ld c, $fc
    call z, $b070
    ld hl, sp-$58
    ld hl, sp+$28
    ldh a, [$30]
    ret z

    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld l, a
    ld e, a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fa
    cp $f2
    or $fa
    dec sp
    scf
    inc a
    cpl
    ccf
    dec hl
    rra
    jr jr_005_7469

    rrca
    rla
    rra
    ld de, $0e1f
    ld c, $dc
    db $ec
    inc a
    db $f4
    db $fc
    call nc, $18f8

jr_005_7469:
    ldh a, [$f0]
    add sp, -$08
    adc b
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    add hl, sp
    rra
    db $10
    rra
    inc d
    rra
    inc d
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    sbc h
    ld a, h
    sbc h
    rra
    inc de
    ld c, $0d
    rra
    dec d
    rra
    inc d
    dec c
    ld c, $13
    rra
    ld de, $0e1f
    ld c, $f8
    ret z

    ld [hl], b
    or b
    ld hl, sp-$58
    ld hl, sp+$28
    ldh a, [$30]
    ret z

    ld hl, sp-$78
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, l
    ld l, [hl]
    ld a, $33
    rra
    ld de, $243f
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e
    cp [hl]
    db $76
    ld a, h
    call z, $88f8
    db $fc
    inc h
    ccf
    jr nz, jr_005_754b

    ld c, c
    rst $18
    and b
    ld a, a
    ld h, b
    cpl
    jr nc, jr_005_74f3

    jr jr_005_74e7

    rrca
    ld b, $06
    db $fc
    inc b
    xor $92
    ei
    dec b

jr_005_74e7:
    cp $06
    db $f4
    inc c
    add sp, $18
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop

jr_005_74f3:
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, a
    ld l, [hl]
    dec a
    inc sp
    rra
    db $10
    dec a
    inc hl
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e
    cp $76
    cp h
    call z, $08f8
    cp h
    call nz, $243f
    db $76
    ld c, c
    db $dd
    xor d
    ld a, l
    ld l, d
    ld l, $35
    rla
    dec de
    add hl, bc
    rrca
    ld b, $06
    db $fc
    inc h
    ld l, [hl]
    sub d
    cp e
    ld d, l
    cp [hl]
    ld d, [hl]
    ld [hl], h
    xor h
    add sp, -$28
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    ld c, $0e
    dec e
    inc de
    ccf
    ld h, $2f
    jr c, @+$21

    db $10
    rra
    inc d
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    db $fc
    db $fc
    db $fc
    adc h

jr_005_754b:
    ld hl, sp+$08
    add sp, $18
    db $fc
    inc b
    rra
    jr nz, jr_005_7591

    inc sp
    ccf
    jr nz, jr_005_7597

    jr nz, jr_005_7589

    jr nc, jr_005_7573

    jr jr_005_756a

    rrca
    inc bc
    inc bc
    cp $06
    rst $38
    dec h
    rst $38
    and l
    rst $38
    ld h, l
    push af

jr_005_756a:
    rrca
    ld [$3c1e], a
    db $fc
    ret nz

    ret nz

    nop
    nop

jr_005_7573:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, l
    ld l, [hl]
    ld a, $33
    rra
    ld de, $0000
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_005_7589:
    cp $3e
    cp [hl]
    db $76
    ld a, h
    call z, $88f8

jr_005_7591:
    ld a, a
    ld h, h
    rst $18
    and b
    ld [hl], a
    ld c, c

jr_005_7597:
    ld e, a
    ld h, b
    ccf
    jr nz, jr_005_75cb

    ld a, $11
    rra
    ld c, $0e
    cp $26
    ei
    dec b
    xor $92
    ld a, [$fc06]
    inc b
    ld hl, sp+$08
    ld h, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, a
    ld l, [hl]
    dec a
    inc sp
    rra
    stop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e

jr_005_75cb:
    cp $76
    cp h
    call z, $08f8
    ld a, l
    ld h, e
    rst $18
    and h
    db $76
    ld c, c
    ld e, l
    ld l, d
    dec a
    ld a, [hl+]
    ld l, $3f
    ld de, $0e1f
    ld c, $be
    add $fb
    dec h
    ld l, [hl]
    sub d
    cp d
    ld d, [hl]
    cp h
    ld d, h
    ld a, b
    and h
    ret c

    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    dec e
    inc de
    ccf
    ld h, $2f
    jr c, jr_005_761f

    stop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    db $fc
    db $fc
    db $fc
    adc h
    ld hl, sp+$08
    add sp, $18
    rra
    inc d
    rra
    jr nz, @+$3f

    inc sp
    ccf
    jr nz, jr_005_7659

    jr nz, jr_005_7673

    ld a, b
    inc l
    ccf

jr_005_761f:
    rra
    rra
    cp $06
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    push bc
    db $fd
    rlca
    or $0e
    inc c
    db $fc
    ldh a, [$f0]
    inc bc
    inc bc
    inc c
    rrca

jr_005_7635:
    db $10
    rra
    jr nz, @+$41

    ld h, $3f
    cpl
    add hl, sp
    ccf
    jr nc, @+$61

    db $76
    ret nz

    ret nz

    jr nc, jr_005_7635

    ld [$04f8], sp
    db $fc
    db $e4
    db $fc
    db $f4
    inc e
    db $fc
    inc c
    ld a, [$9f6e]
    ldh a, [$5e]
    ld a, c
    cp a
    rst $28
    ld a, l
    ld l, d

jr_005_7659:
    jr nc, @+$41

    jr c, @+$29

    rra
    jr jr_005_7667

    rlca
    ld sp, hl
    rrca
    ld a, d
    sbc [hl]
    db $fd
    rst $30

jr_005_7667:
    ld e, [hl]
    or [hl]
    inc c
    db $fc
    inc e
    db $e4
    ld hl, sp+$18
    ldh [$e0], a
    inc bc
    inc bc

jr_005_7673:
    inc c
    rrca

jr_005_7675:
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_005_76ba

    jr nz, jr_005_76bc

    jr nc, jr_005_76be

    ld b, b
    ld a, a
    ret nz

    ret nz

    jr nc, jr_005_7675

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    ld [bc], a
    cp $80
    rst $38
    ld b, b
    ld a, a
    ld h, h
    ld a, a
    ld a, d
    ld e, a
    ld hl, $383f
    daa
    rra
    jr @+$09

    rlca
    ld bc, $02ff
    cp $26
    cp $5e
    ld a, [$fc94]
    inc e
    db $e4
    ld hl, sp+$18
    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca

jr_005_76b5:
    db $10
    rra
    jr z, jr_005_76f8

    inc a

jr_005_76ba:
    scf
    rra

jr_005_76bc:
    inc de
    rra

jr_005_76be:
    db $10
    rra
    ld d, $c0
    ret nz

    jr nc, jr_005_76b5

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    ld [c], a
    ld a, [hl]
    and c
    ld e, a
    rra
    db $10
    dec bc
    inc c
    rlca
    rlca
    ld [bc], a
    inc bc
    dec b
    rlca
    inc c
    dec bc
    dec bc
    inc c
    rlca
    rlca
    push hl
    rra
    and $7e
    ld hl, sp-$28
    ldh a, [$b0]
    add sp, $38
    db $ec
    db $f4
    db $f4
    inc c
    ld hl, sp-$08
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_76f7:
    db $10

jr_005_76f8:
    rra
    jr nz, @+$41

    ld h, $3f
    cpl
    add hl, sp
    ccf
    jr nc, jr_005_7702

jr_005_7702:
    nop
    ret nz

    ret nz

    jr nc, jr_005_76f7

    ld [$04f8], sp
    db $fc
    db $e4
    db $fc
    db $f4
    inc e
    db $fc
    inc c
    ld e, a
    db $76
    sbc a
    ldh a, [$4e]
    ld a, c
    sbc a
    rst $38
    ld a, l
    ld l, d
    jr nc, jr_005_775c

    rra
    db $10
    rrca
    rrca
    ld a, [$f96e]
    rrca
    ld a, d
    sbc [hl]
    db $fd
    rst $30
    ld a, [hl]
    and [hl]
    ld a, h
    call z, $34fc
    ld hl, sp-$08
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_7737:
    db $10
    rra
    jr nz, @+$41

    jr nz, jr_005_777c

    jr nz, jr_005_777e

    jr nc, jr_005_7780

    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_7737

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    ld b, b
    ld a, a
    add b
    rst $38
    ld b, b
    ld a, a
    inc h
    ccf
    ld a, d
    ld e, a
    ld [hl], c

jr_005_775c:
    ld c, a
    ccf
    jr nz, jr_005_777f

    rra
    ld [bc], a
    cp $01
    rst $38
    ld [bc], a
    cp $24
    db $fc
    ld e, [hl]
    ld a, [$f28e]
    db $fc
    inc b
    ld hl, sp-$08
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_005_7777:
    db $10
    rra
    jr z, jr_005_77ba

    inc a

jr_005_777c:
    scf
    rra

jr_005_777e:
    inc de

jr_005_777f:
    rra

jr_005_7780:
    stop
    nop
    ret nz

    ret nz

    jr nc, jr_005_7777

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    add h
    db $fc
    ld [c], a
    ld a, [hl]
    rra
    ld d, $1f
    db $10
    dec bc
    inc c
    rlca
    rlca
    ld [bc], a
    inc bc
    inc c
    rrca
    dec bc
    inc c
    rlca
    rlca
    and c
    ld e, a
    push hl
    rra

jr_005_77a5:
    and $7e
    ld hl, sp-$28
    ld a, b
    ret z

    jr c, jr_005_77a5

    db $fc
    inc b
    db $fc
    db $fc
    inc de
    inc de
    inc l
    ccf

jr_005_77b5:
    jr nz, @+$41

    ld sp, $473f

jr_005_77ba:
    ld a, [hl]
    cpl
    jr c, @+$81

    ld d, b
    ld l, a
    ld d, [hl]
    ret nz

    ret nz

    jr nc, jr_005_77b5

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $f4
    ld a, h
    cp $0a
    or $6a
    ccf
    jr nc, jr_005_7852

    ld c, c
    ld a, a
    ld b, a
    rst $38
    sub b
    rst $38
    sbc a
    ld a, a
    ld a, a
    rra
    ld de, $3e3e
    db $fc
    ld c, $7e
    sub d
    cp $e2
    rst $38
    add hl, bc
    rst $38
    db $fd
    cp $fe
    ld hl, sp-$78
    ld a, h
    ld a, h
    inc de
    inc de
    inc l
    ccf

jr_005_77f5:
    jr nz, @+$41

    jr nc, @+$41

    ld b, b
    ld a, a
    jr nz, jr_005_783c

    ld [hl], b
    ld e, a
    ld h, b
    ld e, a
    ret nz

    ret nz

    jr nc, jr_005_77f5

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld b, $fa
    jr nc, jr_005_7852

    ld a, d
    ld c, a
    ld l, a
    ld d, l
    rst $38
    sub b
    rst $38
    sbc a
    ld a, a
    ld a, a
    rra
    ld de, $3e3e
    inc c
    db $fc
    ld e, [hl]
    ld a, [c]
    or $aa
    rst $38
    add hl, bc
    rst $38
    db $fd
    cp $fe
    ld hl, sp-$78
    ld a, h
    ld a, h
    inc de
    inc de
    inc l
    ccf

jr_005_7835:
    jr nz, jr_005_7876

    ld [hl], $3f
    ld c, a
    ld a, c
    ccf

jr_005_783c:
    jr nc, jr_005_785d

    ld d, $1f
    db $10
    ret nz

    ret nz

    jr nc, jr_005_7835

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $e4
    ld a, h
    db $f4
    inc e
    ld hl, sp+$18
    rra

jr_005_7852:
    db $10
    dec bc
    inc c
    rra
    rla
    rra
    ld de, $0f0f
    ld b, $07

jr_005_785d:
    rrca
    ld [$0f0f], sp
    ldh [rSVBK], a
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [$e0], a
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    inc de
    inc de
    inc l

jr_005_7876:
    ccf

jr_005_7877:
    jr nz, @+$41

    ld sp, $473f
    ld a, [hl]
    cpl
    jr c, @+$81

    ld d, b
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_7877

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $f4
    ld a, h
    cp $0a
    ld l, a
    ld d, [hl]
    ccf
    jr nc, jr_005_7914

    ld c, c
    ld a, a
    ld d, a
    ccf
    inc a
    rra
    rra
    rra
    db $10
    rrca
    rrca
    or $6a
    db $fc
    inc c
    ld a, b
    sbc b
    db $fc
    db $e4
    db $fc
    add h
    db $fc
    call nz, $f8f8
    nop
    nop
    nop
    nop
    inc de
    inc de
    inc l
    ccf

jr_005_78b7:
    jr nz, @+$41

    jr nc, @+$41

    ld b, b
    ld a, a
    jr nz, jr_005_78fe

    ld [hl], b
    ld e, a
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_005_78b7

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld h, b
    ld e, a
    jr nc, jr_005_7914

    ld a, [hl-]
    cpl
    ld a, a
    ld d, l
    ccf
    jr c, jr_005_78fb

    rra
    rra

jr_005_78de:
    db $10
    rrca
    rrca
    ld b, $fa
    inc c
    db $fc
    ld e, b
    ld hl, sp-$04
    and h
    db $fc
    inc h
    db $fc
    call nz, $f8f8
    nop
    nop
    nop
    nop
    inc de
    inc de
    inc l
    ccf

jr_005_78f7:
    jr nz, jr_005_7938

    ld [hl], $3f

jr_005_78fb:
    ld c, a
    ld a, c
    ccf

jr_005_78fe:
    jr nc, jr_005_791f

    ld d, $00
    nop
    ret nz

    ret nz

    jr nc, jr_005_78f7

    ld [$04f8], sp
    db $fc
    add h
    db $fc
    db $e4
    ld a, h
    db $f4
    inc e
    rra
    db $10
    rra

jr_005_7914:
    db $10
    dec bc
    inc c
    rra
    rla
    ccf
    inc a
    ccf
    daa
    rra
    inc de

jr_005_791f:
    ld c, $0e
    ld hl, sp+$18
    ret nc

    jr nc, jr_005_78de

    ld c, b
    ld hl, sp-$38
    db $fc
    ld b, h
    db $fc
    db $e4
    db $fc
    db $fc
    jr jr_005_7949

    rlca
    rlca
    ld [$100f], sp
    rra
    ld [hl+], a

jr_005_7938:
    ccf
    daa
    dec a
    cpl
    ld a, $1f
    add hl, de
    rra
    ld d, $60
    ld h, b
    sub b
    ldh a, [$88]
    ld hl, sp+$44
    db $fc

jr_005_7949:
    db $e4
    cp h
    db $f4
    ld a, h
    ld hl, sp-$68
    ld hl, sp+$68
    ld c, $09
    rra
    rra
    ccf
    daa
    dec a
    ld h, $1f
    rra
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    ld [hl], b
    sub b
    ld hl, sp-$08
    db $fc
    db $e4
    cp h
    ld h, h
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_005_79b8

    jr nz, jr_005_79ba

    jr nz, jr_005_79bc

    db $10
    rra
    db $10
    rra
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$09
    ld c, $1e
    rra
    inc a
    cpl
    ld a, $2f
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    sub b
    ld [hl], b
    ld a, b
    ld hl, sp+$3c
    db $f4

jr_005_79a7:
    ld a, h
    db $f4
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ld h, b
    rlca
    rlca
    jr jr_005_79d4

    inc h
    ccf
    ld b, d

jr_005_79b8:
    ld a, a
    ld [hl], c

jr_005_79ba:
    ld a, a
    add hl, sp

jr_005_79bc:
    ccf
    dec a
    daa
    ccf
    dec sp
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_005_79a7

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$3f]
    jr nz, jr_005_79eb

jr_005_79d4:
    jr jr_005_79e1

    rrca
    dec c
    ld c, $0f
    ld c, $0b
    ld c, $0f
    rrca
    rra
    rra

jr_005_79e1:
    ret nc

    ldh a, [$f8]
    ld l, b
    call nz, Call_005_64fc
    db $fc
    ret c

    ld e, b

jr_005_79eb:
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    ld [hl+], a
    ccf
    daa
    dec a
    cpl
    ld a, $1f
    add hl, de
    nop
    nop
    ld h, b
    ld h, b
    sub b
    ldh a, [$88]
    ld hl, sp+$44
    db $fc
    db $e4
    cp h
    db $f4
    ld a, h
    ld hl, sp-$68
    rra
    ld d, $3e
    add hl, sp
    ccf
    cpl
    rra
    rra
    dec e
    ld e, $0f
    rrca
    rrca
    rrca
    ld b, $06
    ld hl, sp+$68
    ld a, b
    sbc b
    ld hl, sp-$08
    ld hl, sp-$38
    ld a, b
    ret z

    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_005_7a7a

    jr nz, jr_005_7a7c

    jr nz, jr_005_7a7e

    jr nz, jr_005_7a80

    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $10
    rra
    jr c, jr_005_7a84

    ccf
    ld l, $1e
    rra
    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    ld b, $06
    ld [$10f8], sp
    ldh a, [$f8]
    ld a, b
    ld a, h
    db $e4

jr_005_7a69:
    inc a
    db $e4
    ld a, b
    ld hl, sp-$40
    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_005_7a96

    inc h
    ccf
    ld b, d

jr_005_7a7a:
    ld a, a
    ld [hl], c

jr_005_7a7c:
    ld a, a
    add hl, sp

jr_005_7a7e:
    ccf
    dec a

jr_005_7a80:
    daa
    nop
    nop
    add b

jr_005_7a84:
    add b
    ld b, b
    ret nz

    jr nz, jr_005_7a69

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$3f]
    dec sp
    ccf
    jr nz, jr_005_7aad

jr_005_7a96:
    jr @+$0d

    rrca
    inc c
    rrca
    ccf
    ccf
    dec a
    ccf
    rra
    rra
    sub b
    ldh a, [$d0]
    ldh a, [$f8]
    ld l, b
    call nz, $e4fc
    ld a, h
    ld hl, sp+$38

jr_005_7aad:
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    stop
    dec h
    inc bc
    cpl
    inc b
    ld c, a
    jr jr_005_7b1d

jr_005_7abe:
    ld [de], a
    ld c, a
    ld [de], a
    nop
    nop
    nop
    nop
    ld [$a400], sp

jr_005_7ac8:
    ret nz

    db $f4
    jr nz, jr_005_7abe

    jr jr_005_7ac8

    ld c, b
    ld a, [c]
    ld c, b
    ld e, a
    ld h, b
    di
    adc l
    ld l, a
    ldh a, [$33]
    inc c
    inc e
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    ld a, [$cf06]
    or c
    or $0f
    call z, $3830
    ret nz

    ldh [rP1], a
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
    cpl
    jr jr_005_7b5b

    db $10
    ld c, a
    db $10
    ld e, a

jr_005_7b00:
    ld h, b
    nop
    nop
    nop
    nop
    add b

jr_005_7b06:
    ret nz

    ldh [rNR41], a
    db $f4
    jr jr_005_7b06

    ld [$08f2], sp
    ld_long a, $ff06
    add b
    ld l, e
    rst $30
    scf
    inc b
    dec de
    ld b, $44
    ld bc, $0020

jr_005_7b1d:
    jr jr_005_7b1f

jr_005_7b1f:
    nop
    nop
    rst $38
    ld bc, $efd6
    db $ec
    jr nz, jr_005_7b00

    ld h, b
    ld [hl+], a
    add b
    inc b
    nop
    jr jr_005_7b2f

jr_005_7b2f:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $0f
    rra
    db $10
    ccf
    jr nz, jr_005_7bbb

    ld d, b
    ld a, a
    ld d, b
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ld [c], a
    inc hl
    rst $30
    dec d
    ei
    dec c
    ld d, [hl]
    xor c
    ld [hl], $49
    sub [hl]
    add hl, sp
    ld b, b
    ld b, $1f
    nop

jr_005_7b5b:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0dff

jr_005_7b65:
    ld h, d
    di
    ld a, [hl]
    nop
    add b
    nop
    nop
    nop

jr_005_7b6d:
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_7b73:
    nop
    nop
    ld [$1000], sp
    nop
    ld de, $4703
    inc b
    rrca

jr_005_7b7e:
    ld [$125f], sp
    nop
    nop
    nop
    nop
    stop
    ld [$8800], sp
    ret nz

    ld [c], a
    jr nz, jr_005_7b7e

    db $10
    ld a, [$0f48]
    ld [de], a
    rra
    jr nz, jr_005_7bc9

    dec l
    cpl
    db $10
    inc de
    inc c
    inc b
    inc bc
    nop
    nop
    nop
    nop
    ldh a, [rOBP0]
    ld hl, sp+$04
    call z, $f4b4
    ld [$30c8], sp
    jr nz, jr_005_7b6d

    nop

jr_005_7bae:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    inc b
    cpl
    ld [$105f], sp

jr_005_7bbb:
    rrca
    db $10
    rra
    jr nz, jr_005_7bff

    jr nz, jr_005_7bc2

jr_005_7bc2:
    nop
    add b
    ret nz

    ldh [rNR41], a
    db $f4
    db $10

jr_005_7bc9:
    ld a, [$f008]
    ld [$04f8], sp
    db $fc
    inc b
    ccf
    jr nz, jr_005_7b73

    jr nz, jr_005_7b65

    nop
    and e
    rlca
    ld b, a
    inc b
    ld b, e
    ld b, $10
    nop
    nop
    nop
    db $fc
    inc b
    ld sp, hl
    inc b
    pop af
    nop
    push bc
    ldh [$e2], a
    jr nz, jr_005_7bae

    ld h, b
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $0f
    rra
    db $10
    ccf
    jr nz, @+$81

    ld d, b

jr_005_7bff:
    ld a, a
    ld d, b
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
    ret nz

    ld b, b
    db $e4
    ld h, $fe
    ld a, [de]
    rst $38
    add b
    ld a, a
    and b
    ld c, e
    inc b
    ld sp, $1f02
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or $0a
    cp $02
    sbc b
    ld b, b
    add $00
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $32
    call Call_000_372f
    ld hl, $d022
    ld de, $ccd7
    ld bc, $d062
    ldh a, [$f3]
    and a
    jr z, jr_005_7c4d

    ld hl, $cff3
    ld de, $ccd8
    ld bc, $d067

jr_005_7c4d:
    ld a, [bc]
    bit 4, a
    jr nz, jr_005_7c96

    push bc
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    push de
    ld de, $fff2
    add hl, de
    pop de
    ld a, b
    ld [de], a
    ld a, [hl-]
    sub b
    ld d, a
    ld a, [hl]
    sbc $00
    pop bc
    jr c, jr_005_7c9b

    ld [hl+], a
    ld [hl], d
    ld h, b
    ld l, c
    set 4, [hl]
    ld a, [$d354]
    bit 7, a
    ld hl, $7b83
    ld b, $0f
    jr z, jr_005_7c85

    ld hl, $57af
    ld b, $1e

jr_005_7c85:
    call Call_000_3e84
    ld hl, $7ca1
    call Call_000_3c36
    ld hl, $4e1f
    ld b, $0f
    jp Jump_000_3e84


jr_005_7c96:
    ld hl, $7ca6
    jr jr_005_7c9e

jr_005_7c9b:
    ld hl, $7cab

jr_005_7c9e:
    jp Jump_000_3c36


    rla
    inc [hl]
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    ld c, [hl]
    ld b, d
    ld a, [hl+]
    ld d, b
    rla
    ld h, e
    ld b, d
    ld a, [hl+]
    ld d, b
    call Call_000_36ec
    ld a, $99
    call Call_000_2238
    ld hl, $7da7
    call Call_000_3c36
    call Call_000_373e
    ld hl, $cd60
    set 3, [hl]
    call Call_000_36f8
    call Call_000_3ddb

Jump_005_7ccc:
    ld b, $08
    ld hl, $5378
    call Call_000_3e84
    ld hl, $cd60
    set 5, [hl]
    call Call_000_3aab
    bit 1, a
    jp nz, Jump_005_7d97

    ld a, [$cc28]
    cp $02
    jr nz, jr_005_7cf6

    ld a, [$cc26]
    and a
    jp z, Jump_005_7d68

    cp $01
    jr z, jr_005_7d25

    jp Jump_005_7d97


jr_005_7cf6:
    cp $03
    jr nz, jr_005_7d0d

    ld a, [$cc26]
    and a
    jp z, Jump_005_7d68

    cp $01
    jr z, jr_005_7d25

    cp $02
    jp z, Jump_005_7d44

    jp Jump_005_7d97


jr_005_7d0d:
    ld a, [$cc26]
    and a
    jp z, Jump_005_7d68

    cp $01
    jr z, jr_005_7d25

    cp $02
    jp z, Jump_005_7d44

    cp $03
    jp z, Jump_005_7d56

    jp Jump_005_7d97


jr_005_7d25:
    ld hl, $cd60
    res 5, [hl]
    set 3, [hl]
    ld a, $9b
    call Call_000_2238
    call Call_000_373e
    ld hl, $7db6
    call Call_000_3c36
    ld b, $01
    ld hl, $778e
    call Call_000_3e84
    jr jr_005_7d8a

Jump_005_7d44:
    ld a, $9b
    call Call_000_2238
    call Call_000_373e
    ld b, $07
    ld hl, $62ae
    call Call_000_3e84
    jr jr_005_7d8a

Jump_005_7d56:
    ld a, $9b
    call Call_000_2238
    call Call_000_373e
    ld b, $1d
    ld hl, $5dfe
    call Call_000_3e84
    jr jr_005_7d8a

Jump_005_7d68:
    ld a, $9b
    call Call_000_2238
    call Call_000_373e
    ld a, [$d7f0]
    bit 0, a
    jr nz, jr_005_7d7c

    ld hl, $7db1
    jr jr_005_7d7f

jr_005_7d7c:
    ld hl, $7dac

jr_005_7d7f:
    call Call_000_3c36
    ld b, $08
    ld hl, $546f
    call Call_000_3e84

jr_005_7d8a:
    xor a
    ld [$cc3c], a
    call Call_000_2f66
    call Call_000_231c
    jp Jump_005_7ccc


Jump_005_7d97:
    ld a, $9a
    call Call_000_2238
    call Call_000_373e
    ld hl, $cd60
    res 3, [hl]
    res 5, [hl]
    ret


    rla
    ld l, h
    ld b, d
    jr z, jr_005_7dfc

    rla
    add c
    ld b, d
    jr z, jr_005_7e01

    rla
    or e
    ld b, d
    jr z, jr_005_7e06

    rla
    add sp, $42
    jr z, jr_005_7e0b

    ld hl, $d31d
    ldh a, [$db]
    ld b, a
    xor a
    ldh [$dc], a

jr_005_7dc4:
    ld a, [hl+]
    cp $ff
    ret z

    cp b
    jr z, jr_005_7dd3

    inc hl
    ldh a, [$dc]
    inc a
    ldh [$dc], a
    jr jr_005_7dc4

jr_005_7dd3:
    ld a, $01
    ld [$cf95], a
    ldh a, [$dc]
    ld [$cf91], a
    ld hl, $d31c
    jp Jump_000_2abd


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_005_7dfc:
    nop
    nop
    nop
    nop
    nop

jr_005_7e01:
    nop
    nop
    nop
    nop
    nop

jr_005_7e06:
    nop
    nop
    nop
    nop
    nop

jr_005_7e0b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop