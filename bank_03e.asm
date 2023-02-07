;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    call Call_03e_5254
    call Call_000_1e64
    call Call_000_1e64
    call Call_000_1e64
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    ld a, $08
    ldh [rSTAT], a
    ldh a, [$bd]
    push af
    ld a, $98
    ldh [$bd], a
    call Call_03e_4fb3
    call Call_03e_407a
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    call Call_03e_7b5a
    call Call_000_0082
    xor a
    ldh [$f4], a
    ldh [$ae], a
    ldh [$af], a
    ld a, $90
    ldh [$b0], a
    call Call_000_1e64
    pop af
    ldh [$bd], a
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    xor a
    ldh [rSTAT], a
    call Call_000_3e03
    call Call_000_0f16
    call Call_000_216b
    call Call_000_3de0
    pop af
    ld [$cfca], a
    pop af
    ldh [$d7], a
    ret


Call_03e_407a:
    call Call_03e_4116
    call Call_000_1e64
    ld b, $0e
    call Call_000_3e05

jr_03e_4085:
    ld a, [$c5d1]
    bit 7, a
    ret nz

    call Call_03e_523f
    call Call_03e_40ac
    ret nz

    call Call_03e_4282
    ld a, $3c
    ld [$c5bd], a
    call Call_03e_7b65
    call Call_03e_4848
    call Call_03e_40a8
    call Call_03e_40c4
    jr jr_03e_4085

Call_03e_40a8:
    call Call_000_1e64
    ret


Call_03e_40ac:
    ld hl, $d492
    bit 1, [hl]
    ret z

    ldh a, [$b3]
    and $04
    ret


    ldh a, [$b3]
    and $08
    ret z

    ld hl, $c5e2
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


Call_03e_40c4:
    ld a, [$c634]
    and a
    ret z

    ld hl, $c0b6
    ld a, $01
    cp [hl]
    ret nz

    inc hl
    cp [hl]
    ret nz

    inc hl
    cp [hl]
    ret nz

    ld a, [$c5e3]
    ld e, a
    ld a, [$c5e4]
    and $03
    ld d, a
    sla e
    rl d
    ld e, d
    ld d, $00
    ld hl, $40f5
    add hl, de
    add hl, de
    ld a, [hl+]
    ld [$c0e9], a
    ld a, [hl]
    ld [$c0e8], a
    ret


    ld [hl], l
    nop
    ld l, l
    nop
    ld h, l
    nop
    ld e, l
    nop
    ld d, l
    nop

Call_03e_40ff:
    ld hl, $c0b6
    ld a, $01
    cp [hl]
    ret nz

    inc hl
    cp [hl]
    ret nz

    inc hl
    cp [hl]
    ret nz

    ld a, $75
    ld [$c0e9], a
    xor a
    ld [$c0e8], a
    ret


Call_03e_4116:
    call Call_03e_5279
    call Call_000_0082
    call Call_000_0061
    ld hl, $c5d0
    ld bc, $0067
    xor a
    call Call_000_166e
    ld hl, $c700
    ld bc, $0200
    xor a
    call Call_000_166e
    xor a
    ldh [$ba], a
    call Call_03e_7b5a
    ld hl, $4f14
    ld de, $9000
    ld bc, $0500
    ld a, $20
    call Call_000_009d
    ld hl, $5324
    ld de, $8000
    ld bc, $1000
    ld a, $20
    call Call_000_009d
    ld a, $d3
    ld [$c5c0], a
    ld a, $53
    ld [$c5c1], a
    ld a, $fa
    ld [$c5c4], a
    ld a, $53
    ld [$c5c5], a
    ld a, $07
    ld [$c5c6], a
    ld a, $55
    ld [$c5c7], a
    ld a, $05
    ld [$c5c2], a
    ld a, $54
    ld [$c5c3], a
    ld hl, $9800
    ld bc, $0800
    ld a, $00
    call Call_000_166e
    ld hl, $98c0
    ld bc, $0180
    ld a, $0b
    call Call_000_166e
    ld a, $01
    ld de, $7458
    call Call_03e_7b93
    ld a, $74
    ld [$c5ea], a
    call Call_03e_5223
    xor a
    ldh [$ae], a
    ldh [$af], a
    ld a, $7e
    ldh [$b0], a
    ld a, $42
    ldh [$f4], a
    ld a, $40
    ld [$c5e3], a
    xor a
    ld [$c5e4], a
    xor a
    ld [$c5d6], a
    ld a, $60
    ld [$c5d7], a
    ld hl, $c61a
    ld bc, $0014
    ld a, $74
    call Call_000_166e
    call Call_03e_41ff
    call Call_03e_4256
    ld a, $e3
    ldh [rLCDC], a
    call Call_03e_41e9
    ld a, $e4
    ldh [rOBP0], a
    ld a, $e0
    ldh [rOBP1], a
    call Call_000_3040
    call Call_000_3061
    ret


Call_03e_41e9:
    ld a, [$cf1a]
    and a
    jr nz, jr_03e_41f7

    ld a, $d0
    ldh [rBGP], a
    call Call_000_3021
    ret


jr_03e_41f7:
    ld a, $e4
    ldh [rBGP], a
    call Call_000_3021
    ret


Call_03e_41ff:
    ld hl, $c300
    ld de, $4249
    ld b, $97
    ld c, $80
    ld a, $04
    call Call_03e_4233
    ld de, $4248
    ld b, $96
    ld c, $50
    ld a, $01
    call Call_03e_4233
    ld de, $424d
    ld b, $14
    ld c, $20
    ld a, $05
    call Call_03e_4233
    ld de, $4252
    ld b, $20
    ld c, $80
    ld a, $04
    call Call_03e_4233
    ret


Call_03e_4233:
jr_03e_4233:
    push af
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld a, [de]
    ld [hl], a
    inc hl
    ld [hl], $00
    inc hl
    ld a, c
    add $08
    ld c, a
    inc de
    pop af
    dec a
    jr nz, jr_03e_4233

    ret


    cp $d0
    ret nc

    ret nc

    ret nc

    db $ec
    db $ed
    db $ed
    xor $ef
    db $ec
    db $ed
    xor $ef

Call_03e_4256:
    ld de, $9c21
    ld hl, $4279
    ld c, $09

jr_03e_425e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_03e_425e

    ld hl, $9c01
    ld [hl], $15
    ld hl, $9c02
    ld [hl], $16
    ld hl, $9c2c
    ld [hl], $1b
    ld hl, $9c2d
    ld [hl], $1c
    ret


    rla
    jr jr_03e_4295

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

Call_03e_4282:
    ld a, [$c5d1]
    ld e, a
    ld d, $00
    ld hl, $4291
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor e
    ld b, d
    cp l
    ld b, d

jr_03e_4295:
    inc h
    ld b, e
    ld e, h
    ld b, e
    adc h
    ld b, e
    sbc c
    ld b, e
    xor d
    ld b, e
    cp e
    ld b, e
    call z, $e343
    ld b, e
    ld b, $44
    rrca
    ld b, h
    dec e
    ld b, h
    ld a, $02
    ld de, $48e0
    call Call_03e_7b93
    ld hl, $c5d1
    inc [hl]
    ld a, $01
    ld [$c634], a
    ret


    ld a, [$c5e5]
    cp $18
    jr nc, jr_03e_42e8

    ld hl, $c5d6
    ld a, [hl+]
    or [hl]
    and a
    jr z, jr_03e_42f6

    call Call_000_3e6d
    ld [$c5d5], a
    call Call_03e_5210
    call Call_03e_48ae
    call Call_03e_486b
    call Call_03e_4cb0
    call Call_03e_444c
    call Call_03e_48e4
    call Call_03e_48fd
    ret


jr_03e_42e8:
    ld hl, $c5d1
    inc [hl]
    xor a
    ld [$c634], a
    ld a, $c0
    ld [$c632], a
    ret


jr_03e_42f6:
    ld a, $01
    ld [$c630], a
    ld a, $0c
    ld [$c5d1], a
    ld a, $80
    ld [$c631], a
    ld a, $0b
    ld de, $8858
    call Call_03e_7b93
    ld hl, $0007
    add hl, bc
    ld [hl], $80
    ld hl, $000b
    add hl, bc
    ld [hl], $80
    ld hl, $000c
    add hl, bc
    ld [hl], $30
    xor a
    ld [$c634], a
    ret


    call Call_03e_4440
    jr c, jr_03e_433d

    xor a
    ld [$c5d5], a
    call Call_03e_5210
    call Call_03e_48ae
    call Call_03e_486b
    call Call_03e_4c97
    call Call_03e_40ff
    ret


jr_03e_433d:
    ld hl, $c5d1
    inc [hl]
    ld a, $90
    ldh [$ae], a
    ld a, $72
    ld [$c5d3], a
    ld a, $04
    ld [$c5d2], a
    xor a
    ldh [$f4], a
    ld [$c617], a
    ld [$c618], a
    ld [$c619], a
    ret


    ldh a, [$ae]
    and a
    jr z, jr_03e_437b

    call Call_03e_5210
    call Call_03e_48ae
    call Call_03e_486b
    ldh a, [$ae]
    dec a
    dec a
    dec a
    dec a
    ldh [$ae], a
    ld a, $e0
    ld [$c62e], a
    call Call_03e_4cc7
    ret


jr_03e_437b:
    xor a
    ld [$c5e3], a
    ld [$c5e4], a
    ld hl, $c5d1
    inc [hl]
    ld a, $05
    ld [$c5d2], a
    ret


    call Call_03e_491e
    ld a, $20
    ld [$c632], a
    ld hl, $c5d1
    inc [hl]
    ret


    call Call_03e_4440
    ret nc

    call Call_03e_4a92
    ld a, $40
    ld [$c632], a
    ld hl, $c5d1
    inc [hl]
    ret


    call Call_03e_4440
    ret nc

    call Call_03e_4ae4
    ld a, $40
    ld [$c632], a
    ld hl, $c5d1
    inc [hl]
    ret


    call Call_03e_4440
    ret nc

    call Call_03e_4b7a
    ld a, $40
    ld [$c632], a
    ld hl, $c5d1
    inc [hl]
    ret


    call Call_03e_4440
    ret nc

    call Call_03e_4aa9
    push af
    call Call_03e_4b5d
    pop af
    ret nc

    ld a, $40
    ld [$c632], a
    ld hl, $c5d1
    inc [hl]
    ret


    call Call_03e_4440
    ret nc

    call Call_03e_4afb
    push af
    call Call_03e_4b5d
    pop af
    ret nc

    ld a, $80
    ld [$c632], a
    ld hl, $c5d1
    inc [hl]
    call Call_03e_4b92
    ret nc

    call Call_03e_4a7c
    ld a, $06
    ld [$c5d2], a
    ret


    call Call_03e_4440
    ret nc

    ld hl, $c5d1
    inc [hl]
    ret


    call Call_03e_5210
    ldh a, [$b3]
    and $01
    ret z

    ld hl, $c5d1
    set 7, [hl]
    ret


    call Call_03e_5210
    call Call_03e_48ae
    call Call_03e_486b
    call Call_03e_4cb0
    call Call_03e_40ff
    ld hl, $c631
    ld a, [hl]
    and a
    jr z, jr_03e_4435

    dec [hl]
    ret


jr_03e_4435:
    ldh a, [$b3]
    and $01
    ret z

    ld hl, $c5d1
    set 7, [hl]
    ret


Call_03e_4440:
    ld hl, $c632
    ld a, [hl]
    and a
    jr z, jr_03e_444a

    dec [hl]
    and a
    ret


jr_03e_444a:
    scf
    ret


Call_03e_444c:
    ld a, [$c5e6]
    ld h, a
    ld a, [$c5e7]
    ld l, a
    ld a, [$c5e3]
    ld e, a
    ld a, [$c5e4]
    ld d, a
    add hl, de
    ld a, h
    ld [$c5e6], a
    ld a, l
    ld [$c5e7], a
    ret nc

    ld hl, $c5e5
    inc [hl]
    ld hl, $c311
    dec [hl]
    dec [hl]
    ret


    ld a, [$c5d2]
    ld e, a
    ld d, $00
    ld hl, $447f
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    adc l
    ld b, h
    ld [c], a
    ld b, h
    ld d, $45
    ld b, l
    ld b, l
    ld h, c
    ld b, l
    ld l, l
    ld b, l
    ld a, c
    ld b, l
    ld a, [$c630]
    and a
    jr nz, jr_03e_44d2

    call Call_03e_47b5
    ld a, [$c5ea]
    ld hl, $0005
    add hl, bc
    ld [hl], a
    call Call_03e_471e
    jr c, jr_03e_44aa

    call Call_03e_4742
    call Call_03e_46b8
    ret


jr_03e_44aa:
    call Call_03e_4742
    ld a, $01
    ld [$c5d2], a
    xor a
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld [$c5d9], a
    ld [$c62f], a
    xor a
    ld [$c02d], a
    ld a, $91
    call Call_000_2238
    ret


jr_03e_44d2:
    xor a
    ld [$c5e3], a
    ld [$c5e4], a
    ld a, $04
    ld [$c5d2], a
    call Call_03e_4742
    ret


    call Call_03e_4598
    call Call_03e_528c
    ret nc

    call Call_03e_4606
    jr c, jr_03e_44fd

    call Call_03e_4bed
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ld a, $02
    ld [$c5d2], a
    ret


jr_03e_44fd:
    ld a, $03
    ld [$c5d2], a
    ld a, $60
    ld [$c5e1], a
    ld a, $10
    call Call_03e_7cd4
    xor a
    ld [$c02d], a
    ld a, $93
    call Call_000_2238
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    cp $20
    jr nc, jr_03e_4539

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, $04
    call Call_03e_5362
    ld hl, $0007
    add hl, bc
    ld [hl], a
    call Call_03e_47b5
    ld a, [$c5ea]
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ret


jr_03e_4539:
    ld hl, $0007
    add hl, bc
    ld [hl], $00
    ld a, $00
    ld [$c5d2], a
    ret


    ld hl, $c5e1
    ld a, [hl]
    and a
    jr z, jr_03e_4556

    dec [hl]
    ld a, [$c5ea]
    ld hl, $0005
    add hl, bc
    ld [hl], a
    ret


jr_03e_4556:
    ld a, $00
    ld [$c5d2], a
    ld a, $04
    call Call_03e_7cd4
    ret


    ld a, [$c5ea]
    ld hl, $0005
    add hl, bc
    ld [hl], a
    call Call_03e_4742
    ret


    ld a, $0f
    call Call_03e_7cd4
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    and $3f
    cp $20
    jr c, jr_03e_4591

    ld d, $10
    call Call_03e_5362
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


jr_03e_4591:
    ld hl, $0007
    add hl, bc
    ld [hl], $00
    ret


Call_03e_4598:
    ld de, $ffb5
    ld a, [de]
    and $20
    jr nz, jr_03e_45a6

    ld a, [de]
    and $10
    jr nz, jr_03e_45cc

    ret


jr_03e_45a6:
    ld hl, $000e
    add hl, bc
    ld [hl], $00
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    inc [hl]
    cp $0b
    jr c, jr_03e_45be

    call Call_03e_45f2
    ld hl, $c62f
    set 0, [hl]

jr_03e_45be:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    cp $0e
    jr nc, jr_03e_45c9

    inc [hl]
    ret


jr_03e_45c9:
    ld [hl], $01
    ret


jr_03e_45cc:
    ld hl, $000d
    add hl, bc
    ld [hl], $00
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    inc [hl]
    cp $0d
    jr c, jr_03e_45e4

    call Call_03e_45f2
    ld hl, $c62f
    set 1, [hl]

jr_03e_45e4:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    cp $01
    jr z, jr_03e_45ef

    dec [hl]
    ret


jr_03e_45ef:
    ld [hl], $0e
    ret


Call_03e_45f2:
    call Call_03e_4bdf
    xor a
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld a, $92
    call Call_000_2238
    ret


Call_03e_4606:
    ld hl, $0001
    add hl, bc
    ld a, [$c5ef]
    cp $06
    jr z, jr_03e_463d

    cp $14
    jr z, jr_03e_467b

    cp $12
    jr z, jr_03e_467b

    cp $07
    jr z, jr_03e_465c

    ld a, [hl]
    cp $01
    jp z, Jump_03e_46ad

    cp $02
    jr z, jr_03e_469a

    cp $03
    jr z, jr_03e_469f

    cp $04
    jr z, jr_03e_46a2

    cp $05
    jr z, jr_03e_469f

    cp $06
    jr z, jr_03e_469a

    cp $07
    jr z, jr_03e_46ad

    jr jr_03e_46ad

jr_03e_463d:
    ld a, [hl]
    cp $01
    jr z, jr_03e_46ad

    cp $02
    jr z, jr_03e_46ad

    cp $03
    jr z, jr_03e_46ad

    cp $04
    jr z, jr_03e_469a

    cp $05
    jr z, jr_03e_469f

    cp $06
    jr z, jr_03e_46a2

    cp $07
    jr z, jr_03e_469f

    jr jr_03e_46ad

jr_03e_465c:
    ld a, [hl]
    cp $01
    jr z, jr_03e_469f

    cp $02
    jr z, jr_03e_46a2

    cp $03
    jr z, jr_03e_469f

    cp $04
    jr z, jr_03e_469a

    cp $05
    jr z, jr_03e_46ad

    cp $06
    jr z, jr_03e_46ad

    cp $07
    jr z, jr_03e_46ad

    jr jr_03e_46ad

jr_03e_467b:
    ld a, [hl]
    cp $01
    jr z, jr_03e_46ad

    cp $02
    jr z, jr_03e_469a

    cp $03
    jr z, jr_03e_469f

    cp $04
    jr z, jr_03e_46a2

    cp $05
    jr z, jr_03e_46a2

    cp $06
    jr z, jr_03e_469f

    cp $07
    jr z, jr_03e_469a

    jr jr_03e_46ad

jr_03e_469a:
    call Call_03e_46f7
    jr jr_03e_46a2

jr_03e_469f:
    call Call_03e_46d0

jr_03e_46a2:
    xor a
    ld [$c02d], a
    ld a, $95
    call Call_000_2238
    and a
    ret


Jump_03e_46ad:
jr_03e_46ad:
    ld a, $40
    ld [$c5e3], a
    xor a
    ld [$c5e4], a
    scf
    ret


Call_03e_46b8:
    ld a, [$c5e4]
    cp $02
    ret nc

    ld h, a
    ld a, [$c5e3]
    ld l, a
    ld de, $0002
    add hl, de
    ld a, h
    ld [$c5e4], a
    ld a, l
    ld [$c5e3], a
    ret


Call_03e_46d0:
    ld a, [$c5e4]
    and a
    jr nz, jr_03e_46e2

    ld a, [$c5e3]
    cp $40
    jr nc, jr_03e_46e2

    xor a
    ld [$c5e3], a
    ret


jr_03e_46e2:
    ld a, [$c5e4]
    ld h, a
    ld a, [$c5e3]
    ld l, a
    ld de, $ffc0
    add hl, de
    ld a, h
    ld [$c5e4], a
    ld a, l
    ld [$c5e3], a
    ret


Call_03e_46f7:
    ld a, [$c5e4]
    and a
    jr nz, jr_03e_4709

    ld a, [$c5e3]
    cp $80
    jr nc, jr_03e_4709

    xor a
    ld [$c5e3], a
    ret


jr_03e_4709:
    ld a, [$c5e4]
    ld h, a
    ld a, [$c5e3]
    ld l, a
    ld de, $ff80
    add hl, de
    ld a, h
    ld [$c5e4], a
    ld a, l
    ld [$c5e3], a
    ret


Call_03e_471e:
    ldh a, [$ae]
    and $07
    cp $03
    jr c, jr_03e_4740

    cp $05
    jr nc, jr_03e_4740

    ld a, [$c5ef]
    cp $14
    jr nz, jr_03e_4740

    call Call_03e_47a8
    cp $0a
    jr c, jr_03e_4740

    ld [$c5ec], a
    call Call_03e_5284
    scf
    ret


jr_03e_4740:
    and a
    ret


Call_03e_4742:
    ldh a, [$ae]
    and $07
    cp $03
    ret c

    cp $05
    ret nc

    ld a, [$c5ef]
    cp $06
    jr z, jr_03e_4766

    cp $14
    jr z, jr_03e_4766

    cp $07
    jr z, jr_03e_476a

    call Call_03e_4778
    ld a, $04
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ret


jr_03e_4766:
    ld a, $06
    jr jr_03e_476c

jr_03e_476a:
    ld a, $02

jr_03e_476c:
    ld e, a
    ld a, [$c5de]
    dec a
    add e
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ret


Call_03e_4778:
    ld hl, $c5e0
    ld a, [hl]
    inc [hl]
    and $07
    ret nz

    ld a, [$c5df]
    and a
    jr z, jr_03e_4796

    ld a, [$c5de]
    and a
    jr z, jr_03e_4791

    dec a
    ld [$c5de], a
    ret


jr_03e_4791:
    xor a
    ld [$c5df], a
    ret


jr_03e_4796:
    ld a, [$c5de]
    cp $02
    jr z, jr_03e_47a2

    inc a
    ld [$c5de], a
    ret


jr_03e_47a2:
    ld a, $01
    ld [$c5df], a
    ret


Call_03e_47a8:
    ld a, [$c5e3]
    ld l, a
    ld a, [$c5e4]
    ld h, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, h
    ret


Call_03e_47b5:
    ld hl, $c5eb
    ld a, [hl]
    inc [hl]
    and $03
    ret nz

    call Call_03e_47ce
    ld d, a
    ld hl, $0004
    add hl, bc
    ld e, [hl]
    ld a, $0a
    push bc
    call Call_03e_7b93
    pop bc
    ret


Call_03e_47ce:
    ldh a, [$ae]
    and $08
    jr nz, jr_03e_47d9

    ld hl, $c622
    jr jr_03e_47dc

jr_03e_47d9:
    ld hl, $c623

jr_03e_47dc:
    ld a, [$c5f0]
    cp $06
    jr z, jr_03e_47ed

    cp $14
    jr z, jr_03e_47ed

    cp $07
    jr z, jr_03e_47f5

    ld a, [hl]
    ret


jr_03e_47ed:
    ldh a, [$ae]
    and $07
    ld e, a
    ld a, [hl]
    sub e
    ret


jr_03e_47f5:
    ldh a, [$ae]
    and $07
    add [hl]
    ret


    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $58
    ret z

    add $04
    ld [hl], a
    ret


    call Call_03e_7be8
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and a
    ret z

    dec [hl]
    dec [hl]
    ld d, a
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc [hl]
    call Call_03e_5362
    cp $80
    jr nc, jr_03e_4825

    xor $ff
    inc a

jr_03e_4825:
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    inc [hl]
    and $01
    ret z

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $c0
    jr z, jr_03e_483f

    inc [hl]
    ret


jr_03e_483f:
    ld a, $01
    ld [$c633], a
    call Call_03e_7be8
    ret


Call_03e_4848:
    ld a, [$c635]
    ld e, a
    ld d, $00
    ld a, [$c5e3]
    ld l, a
    ld a, [$c5e4]
    ld h, a
    add hl, de
    ld a, l
    ld [$c635], a
    ld d, h
    ld hl, $c315
    ld e, $09

jr_03e_4861:
    ld a, [hl]
    add d
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec e
    jr nz, jr_03e_4861

    ret


Call_03e_486b:
    ld a, [$c5ef]
    ldh a, [$ae]
    add $48
    ld e, a
    srl e
    srl e
    srl e
    ld d, $00
    ld hl, $9800
    add hl, de
    ld a, [$c5ea]
    srl a
    srl a
    srl a
    ld c, a

jr_03e_4889:
    ld a, c
    and a
    jr z, jr_03e_489a

    dec c
    ld de, $0020
    add hl, de
    ld a, h
    and $03
    or $98
    ld h, a
    jr jr_03e_4889

jr_03e_489a:
    ld de, $c5ef
    ld a, e
    ldh [$c9], a
    ld a, d
    ldh [$ca], a
    ld a, l
    ldh [$c7], a
    ld a, h
    ldh [$c8], a
    ld a, $01
    ldh [$c6], a
    ret


Call_03e_48ae:
    ldh a, [$ae]
    and $08
    jr nz, jr_03e_48b9

    ld hl, $c621
    jr jr_03e_48bc

jr_03e_48b9:
    ld hl, $c622

jr_03e_48bc:
    ld a, [$c5ef]
    cp $06
    jr z, jr_03e_48d0

    cp $14
    jr z, jr_03e_48d0

    cp $07
    jr z, jr_03e_48db

    ld a, [hl]
    ld [$c5ea], a
    ret


jr_03e_48d0:
    ldh a, [$ae]
    and $07
    ld e, a
    ld a, [hl]
    sub e
    ld [$c5ea], a
    ret


jr_03e_48db:
    ldh a, [$ae]
    and $07
    add [hl]
    ld [$c5ea], a
    ret


Call_03e_48e4:
    ld hl, $c5d6
    ld e, $99
    call Call_03e_48f0
    ret nc

    inc hl
    ld e, $99

Call_03e_48f0:
    ld a, [hl]
    and a
    jr z, jr_03e_48fa

    sub $01
    daa
    ld [hl], a
    and a
    ret


jr_03e_48fa:
    ld [hl], e
    scf
    ret


Call_03e_48fd:
    ld de, $c5d7
    ld hl, $c302
    ld a, [de]
    call Call_03e_490b
    ld hl, $c30a
    ld a, [de]

Call_03e_490b:
    ld c, a
    swap a
    and $0f
    add $d0
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    ld a, c
    and $0f
    add $d0
    ld [hl], a
    dec de
    ret


Call_03e_491e:
    ld hl, $c3a0
    ld bc, $0168
    xor a
    call Call_000_166e
    ld hl, $4946
    ld de, $c418
    ld bc, $00c8
    call Call_000_00b1
    call Call_03e_4a0e
    ld hl, $c315
    ld bc, $0024
    xor a
    call Call_000_166e
    ld a, $01
    ldh [$ba], a
    ret


    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    db $10
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    db $10
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    db $10
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    db $10
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    db $10
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

Call_03e_4a0e:
    ld hl, $c3b5
    ld de, $3b3c
    ld a, $40
    call Call_03e_4a72
    ld hl, $c3c9
    ld de, $3f3f
    ld a, $ff
    call Call_03e_4a72
    ld hl, $c3dd
    ld de, $3f3f
    ld a, $ff
    call Call_03e_4a72
    ld hl, $c3f1
    ld de, $3f3f
    ld a, $ff
    call Call_03e_4a72
    ld hl, $c405
    ld de, $3f3f
    ld a, $ff
    call Call_03e_4a72
    ld hl, $c419
    ld de, $3f3f
    ld a, $ff
    call Call_03e_4a72
    ld hl, $c42d
    ld de, $3f3f
    ld a, $ff
    call Call_03e_4a72
    ld hl, $c441
    ld de, $3f3f
    ld a, $ff
    call Call_03e_4a72
    ld hl, $c455
    ld de, $3d3e
    ld a, $40
    call Call_03e_4a72
    ret


Call_03e_4a72:
    ld [hl], d
    inc hl
    ld c, $10

jr_03e_4a76:
    ld [hl+], a
    dec c
    jr nz, jr_03e_4a76

    ld [hl], e
    ret


Call_03e_4a7c:
    ld hl, $4a89
    ld de, $c446
    ld bc, $0009
    call Call_000_00b1
    ret


    jr nz, jr_03e_4ab9

    cpl
    jr nc, @+$33

    inc l
    ld [hl-], a
    inc hl
    inc sp

Call_03e_4a92:
    ld hl, $4aa2
    ld de, $c3ca
    ld bc, $0007
    call Call_000_00b1
    call Call_03e_4aca
    ret


    jr nz, jr_03e_4ac5

    rst $38
    ld [hl+], a
    inc hl
    inc h
    dec h

Call_03e_4aa9:
    ld c, $63

jr_03e_4aab:
    push bc
    ld hl, $c5d6
    ld a, [hl+]
    or [hl]
    and a
    jr z, jr_03e_4ac7

    call Call_03e_48e4
    ld e, $01

jr_03e_4ab9:
    call Call_03e_4b42
    pop bc
    dec c
    jr nz, jr_03e_4aab

    ld a, $90
    call Call_000_2238

jr_03e_4ac5:
    and a
    ret


jr_03e_4ac7:
    pop bc
    scf
    ret


Call_03e_4aca:
    ld hl, $c3d2
    ld de, $c5d7
    ld a, [de]
    call Call_03e_5350
    inc hl
    ld a, [de]
    call Call_03e_5350
    inc hl
    inc hl
    ld [hl], $21
    inc hl
    ld [hl], $25
    inc hl
    ld [hl], $26
    ret


Call_03e_4ae4:
    ld hl, $4af4
    ld de, $c3f2
    ld bc, $0007
    call Call_000_00b1
    call Call_03e_4b25
    ret


    daa
    jr z, jr_03e_4b20

    ld a, [hl+]
    inc hl
    ld h, $26

Call_03e_4afb:
    ld c, $63

jr_03e_4afd:
    push bc
    ld hl, $c5da
    ld a, [hl+]
    ld e, a
    or [hl]
    jr z, jr_03e_4b22

    ld d, [hl]
    ld a, e
    sub $01
    daa
    ld e, a
    ld a, d
    sbc $00
    daa
    ld [hl-], a
    ld [hl], e
    ld e, $01
    call Call_03e_4b42
    pop bc
    dec c
    jr nz, jr_03e_4afd

    ld a, $90
    call Call_000_2238

jr_03e_4b20:
    and a
    ret


jr_03e_4b22:
    pop bc
    scf
    ret


Call_03e_4b25:
    ld a, [$c5db]
    ld hl, $c3fa
    call Call_03e_5350
    ld a, [$c5da]
    ld hl, $c3fc
    call Call_03e_5350
    inc hl
    inc hl
    ld [hl], $21
    inc hl
    ld [hl], $25
    inc hl
    ld [hl], $26
    ret


Call_03e_4b42:
    ld a, [$c5dc]
    add e
    daa
    ld [$c5dc], a
    ld a, [$c5dd]
    adc $00
    daa
    ld [$c5dd], a
    ret nc

    ld a, $99
    ld [$c5dc], a
    ld [$c5dd], a
    ret


Call_03e_4b5d:
    ld a, [$c5dd]
    ld hl, $c422
    call Call_03e_5350
    ld a, [$c5dc]
    ld hl, $c424
    call Call_03e_5350
    inc hl
    inc hl
    ld [hl], $21
    inc hl
    ld [hl], $25
    inc hl
    ld [hl], $26
    ret


Call_03e_4b7a:
    ld hl, $4b8d
    ld de, $c41a
    ld bc, $0005
    call Call_000_00b1
    call Call_03e_4b25
    call Call_03e_4b5d
    ret


    dec hl
    inc l
    dec h
    jr z, jr_03e_4bbf

Call_03e_4b92:
    ld hl, $d495
    ld a, [$c5dd]
    cp [hl]
    jr c, jr_03e_4ba6

    jr nz, jr_03e_4bb0

    dec hl
    ld a, [$c5dc]
    cp [hl]
    jr c, jr_03e_4ba6

    jr nz, jr_03e_4bb0

jr_03e_4ba6:
    call Call_000_373e
    ld e, $1b
    call Call_03e_4bcb
    and a
    ret


jr_03e_4bb0:
    ld a, [$c5dc]
    ld [$d494], a
    ld a, [$c5dd]
    ld [$d495], a
    call Call_000_373e

jr_03e_4bbf:
    ld e, $21
    call Call_03e_4bcb
    ld a, $96
    call Call_000_2238
    scf
    ret


Call_03e_4bcb:
    push de
    ld hl, $4eab
    ld b, $3f
    call Call_000_3e84
    pop de
    ret nc

    ld hl, $4000
    ld b, $3c
    call Call_000_3e84
    ret


Call_03e_4bdf:
    ld a, [$c5d9]
    inc a
    cp $04
    jr c, jr_03e_4be9

    ld a, $03

jr_03e_4be9:
    ld [$c5d9], a
    ret


Call_03e_4bed:
    ld a, [$c5d9]
    and a
    ret z

    ld a, [$c62f]
    and $03
    cp $03
    jr z, jr_03e_4c2b

    ld a, [$c5d9]
    ld d, a
    ld e, $01
    ld a, $00

jr_03e_4c03:
    add e
    sla e
    dec d
    jr nz, jr_03e_4c03

jr_03e_4c09:
    push af
    ld e, $50
    call Call_03e_4c7c
    pop af
    dec a
    jr nz, jr_03e_4c09

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld d, a
    ld hl, $0004
    add hl, bc
    ld e, [hl]
    ld a, [$c5d9]
    add $03
    push bc
    call Call_03e_7b93
    pop bc
    ret


jr_03e_4c2b:
    ld a, [$c5d9]
    cp $03
    jr c, jr_03e_4c53

    ld a, $0a

jr_03e_4c34:
    push af
    ld e, $50
    call Call_03e_4c7c
    pop af
    dec a
    jr nz, jr_03e_4c34

    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld d, a
    ld hl, $0004
    add hl, bc
    ld e, [hl]
    ld a, $09
    push bc
    call Call_03e_7b93
    pop bc
    ret


jr_03e_4c53:
    ld e, $50
    call Call_03e_4c7c
    ld e, $50
    call Call_03e_4c7c
    ld e, $50
    call Call_03e_4c7c
    ld e, $30
    call Call_03e_4c7c
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $10
    ld d, a
    ld hl, $0004
    add hl, bc
    ld e, [hl]
    ld a, $08
    push bc
    call Call_03e_7b93
    pop bc
    ret


Call_03e_4c7c:
    ld a, [$c5da]
    add e
    daa
    ld [$c5da], a
    ld a, [$c5db]
    adc $00
    daa
    ld [$c5db], a
    ret nc

    ld a, $99
    ld [$c5da], a
    ld [$c5db], a
    ret


Call_03e_4c97:
    ld a, $a0
    ld [$c62e], a
    ldh a, [$ae]
    ld h, a
    ld a, [$c617]
    ld l, a
    ld de, $0900
    add hl, de
    ld a, l
    ld [$c617], a
    ld a, h
    ldh [$ae], a
    jr jr_03e_4cc7

Call_03e_4cb0:
    ld a, $a0
    ld [$c62e], a
    ldh a, [$ae]
    ld h, a
    ld a, [$c617]
    ld l, a
    ld de, $0180
    add hl, de
    ld a, l
    ld [$c617], a
    ld a, h
    ldh [$ae], a

Call_03e_4cc7:
jr_03e_4cc7:
    ld hl, $c618
    ldh a, [$ae]
    cp [hl]
    ret z

    ld [hl], a
    and $f0
    ld hl, $c619
    cp [hl]
    ret z

    ld [hl], a
    call Call_03e_4d44
    ld a, b
    ld [$c5e8], a
    ld a, c
    ld [$c5e9], a
    push de
    ld hl, $c61a
    ld de, $c61c
    ld c, $12

jr_03e_4ceb:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_03e_4ceb

    ld a, [$c5e8]
    ld [hl+], a
    ld a, [$c5e9]
    ld [hl], a
    pop de
    ld hl, $cbfc
    ld c, $08

jr_03e_4cff:
    ld a, [de]
    call Call_03e_4d28
    inc de
    dec c
    jr nz, jr_03e_4cff

    ld a, [$c62e]
    ld e, a
    ldh a, [$ae]
    add e
    and $f0
    srl a
    srl a
    srl a
    ld e, a
    ld d, $00
    ld hl, $9800
    add hl, de
    ld a, l
    ldh [$d1], a
    ld a, h
    ldh [$d2], a
    ld a, $01
    ldh [$d0], a
    ret


Call_03e_4d28:
    push de
    push hl
    ld l, a
    ld h, $00
    ld de, $56e5
    add hl, hl
    add hl, hl
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    pop de
    ret


Call_03e_4d44:
    ld a, [$c5d3]
    ld e, a
    ld d, $00
    ld hl, $4d53
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld c, e
    ld c, [hl]
    jr z, @+$51

    ld sp, $3a4f
    ld c, a
    ld b, e
    ld c, a
    ld a, l
    ld c, [hl]
    ld c, h
    ld c, a
    ld d, l
    ld c, a
    ld e, [hl]
    ld c, a
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sub h
    ld c, a
    push bc
    ld c, [hl]
    adc $4e
    rst $10
    ld c, [hl]
    ldh [$4e], a
    jp hl


    ld c, [hl]
    ld a, [c]
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sub h
    ld c, a
    ei
    ld c, [hl]
    inc b
    ld c, a
    dec c
    ld c, a
    ld d, $4f
    rra
    ld c, a
    ei
    ld c, [hl]
    inc b
    ld c, a
    dec c
    ld c, a
    ld d, $4f
    rra
    ld c, a
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sub h
    ld c, a
    jr z, jr_03e_4df6

    ld sp, $3a4f
    ld c, a
    ld b, e
    ld c, a
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sub h
    ld c, a
    ld c, h
    ld c, a
    ld d, l
    ld c, a
    ld e, [hl]
    ld c, a
    ld c, h
    ld c, a
    ld d, l
    ld c, a
    ld e, [hl]
    ld c, a
    ld c, h
    ld c, a
    ld d, l
    ld c, a
    ld e, [hl]
    ld c, a
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sub h
    ld c, a
    ld h, a
    ld c, a
    ld [hl], b
    ld c, a
    ei
    ld c, [hl]
    inc b
    ld c, a
    dec c
    ld c, a
    ld d, $4f
    rra
    ld c, a
    ld h, a
    ld c, a
    ld [hl], b
    ld c, a
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sub h
    ld c, a
    push bc
    ld c, [hl]
    adc $4e
    rst $10
    ld c, [hl]
    ldh [$4e], a
    jp hl


jr_03e_4df6:
    ld c, [hl]
    ld a, [c]
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld h, a
    ld c, a
    ld [hl], b
    ld c, a
    ld h, a
    ld c, a
    ld [hl], b
    ld c, a
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sub h
    ld c, a
    ei
    ld c, [hl]
    inc b
    ld c, a
    dec c
    ld c, a
    ld d, $4f
    rra
    ld c, a
    jr z, jr_03e_4e66

    ld sp, $3a4f
    ld c, a
    ld b, e
    ld c, a
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    ld a, l
    ld c, [hl]
    sub h
    ld c, a
    add [hl]
    ld c, [hl]
    adc a
    ld c, [hl]
    sbc b
    ld c, [hl]
    and c
    ld c, [hl]
    xor d
    ld c, [hl]
    or e
    ld c, [hl]
    cp h
    ld c, [hl]
    sbc l
    ld c, a
    ld a, l
    ld c, [hl]
    ld a, c
    ld c, a
    add d
    ld c, a
    add d
    ld c, a
    add d
    ld c, a
    add d
    ld c, a
    add d
    ld c, a
    add d
    ld c, a
    add d
    ld c, a
    adc e
    ld c, a
    ld a, [$c5e5]
    cp $16
    jr c, jr_03e_4e5a

    jr z, jr_03e_4e56

    jr nc, jr_03e_4e6e

jr_03e_4e56:
    ld a, $6a
    jr jr_03e_4e6b

jr_03e_4e5a:
    ld a, [$c5d5]
    and a
    jr z, jr_03e_4e6e

    dec a
    and $07
    ld e, a
    ld d, $00

jr_03e_4e66:
    ld hl, $4e75
    add hl, de
    ld a, [hl]

jr_03e_4e6b:
    ld [$c5d3], a

jr_03e_4e6e:
    ld bc, $7474
    ld de, $573d
    ret


    ld bc, $1a0e
    add hl, hl
    ld [hl-], a
    ld b, b
    ld c, l
    ld e, h
    ld bc, $7474
    ld de, $573d
    jp Jump_03e_4fa9


    ld bc, $746c
    ld de, $5745
    jp Jump_03e_4fa9


    ld bc, $645c
    ld de, $574d
    jp Jump_03e_4fa9


    ld bc, $544c
    ld de, $5755
    jp Jump_03e_4fa9


    ld bc, $4444
    ld de, $575d
    jp Jump_03e_4fa9


    ld bc, $444c
    ld de, $5765
    jp Jump_03e_4fa9


    ld bc, $545c
    ld de, $576d
    jp Jump_03e_4fa9


    ld bc, $646c
    ld de, $5775
    jp Jump_03e_4fa9


    ld bc, $746c
    ld de, $577d
    jp Jump_03e_4fa9


    ld bc, $645c
    ld de, $5785
    jp Jump_03e_4fa9


    ld bc, $544c
    ld de, $578d
    jp Jump_03e_4fa9


    ld bc, $4c4c
    ld de, $5795
    jp Jump_03e_4fa9


    ld bc, $545c
    ld de, $579d
    jp Jump_03e_4fa9


    ld bc, $646c
    ld de, $57a5
    jp Jump_03e_4fa9


    ld bc, $746c
    ld de, $57ad
    jp Jump_03e_4fa9


    ld bc, $645c
    ld de, $57b5
    jp Jump_03e_4fa9


    ld bc, $5454
    ld de, $57bd
    jp Jump_03e_4fa9


    ld bc, $545c
    ld de, $57c5
    jp Jump_03e_4fa9


    ld bc, $646c
    ld de, $57cd
    jp Jump_03e_4fa9


    ld bc, $746c
    ld de, $57d5
    jp Jump_03e_4fa9


    ld bc, $645c
    ld de, $57dd
    jp Jump_03e_4fa9


    ld bc, $5c5c
    ld de, $57e5
    jp Jump_03e_4fa9


    ld bc, $646c
    ld de, $57ed
    jp Jump_03e_4fa9


    ld bc, $746c
    ld de, $57f5
    jp Jump_03e_4fa9


    ld bc, $6464
    ld de, $57fd
    jp Jump_03e_4fa9


    ld bc, $646c
    ld de, $5805
    jp Jump_03e_4fa9


    ld bc, $746c
    ld de, $580d
    jp Jump_03e_4fa9


    ld bc, $6c6c
    ld de, $5815
    jp Jump_03e_4fa9


    ld bc, $7474
    ld de, $581d
    jp Jump_03e_4fa9


    ld bc, $7474
    ld de, $5825
    jp Jump_03e_4fa9


    ld bc, $7474
    ld de, $5825
    jp Jump_03e_4fae


    ld bc, $7474
    ld de, $573d
    jp Jump_03e_4fae


    ld bc, $7474
    ld de, $573d
    ret


    inc a
    ld [$c5d3], a
    ret


Jump_03e_4fa9:
    ld hl, $c5d3
    inc [hl]
    ret


Jump_03e_4fae:
    xor a
    ld [$c5d3], a
    ret


Call_03e_4fb3:
    call Call_03e_5279
    call Call_000_0082
    call Call_000_0061
    xor a
    ldh [$ba], a
    call Call_03e_7b5a
    ld hl, $6324
    ld de, $8800
    ld bc, $0900
    ld a, $20
    call Call_000_009d
    ld a, $d3
    ld [$c5c0], a
    ld a, $53
    ld [$c5c1], a
    ld a, $fa
    ld [$c5c4], a
    ld a, $53
    ld [$c5c5], a
    ld a, $07
    ld [$c5c6], a
    ld a, $55
    ld [$c5c7], a
    ld a, $05
    ld [$c5c2], a
    ld a, $54
    ld [$c5c3], a
    ld a, $0c
    ld de, $7458
    call Call_03e_7b93
    call Call_03e_5053
    xor a
    ldh [$ae], a
    ldh [$af], a
    ld a, $90
    ldh [$b0], a
    ld b, $0f
    call Call_000_3e05
    ld a, $e3
    ldh [rLCDC], a
    ld a, $01
    ldh [$ba], a
    call Call_000_1e64
    call Call_000_1e64
    call Call_000_1e64
    call Call_03e_41e9
    ld a, $e4
    ldh [rOBP0], a
    ld a, $e0
    ldh [rOBP1], a
    call Call_000_3040
    call Call_000_3061
    call Call_000_1e64
    ld a, $99
    ld c, $20
    call Call_000_2211
    xor a
    ld [$c633], a

jr_03e_5041:
    ld a, [$c633]
    and a
    ret nz

    ld a, $00
    ld [$c5bd], a
    call Call_03e_7b65
    call Call_000_1e64
    jr jr_03e_5041

Call_03e_5053:
    ld hl, $c3a0
    ld bc, $0168
    ld a, $ff
    call Call_000_166e
    ld hl, $50bc
    ld de, $c418
    ld bc, $00f0
    call Call_000_00b1
    ld de, $51c8
    ld hl, $c3a4
    ld bc, $060c
    call Call_03e_5098
    ld hl, $c42f
    ld bc, $030f
    call Call_03e_50aa
    ld hl, $51ac
    ld de, $c42f
    ld bc, $000f
    call Call_000_00b1
    ld hl, $51bb
    ld de, $c458
    ld bc, $000d
    call Call_000_00b1
    ret


Call_03e_5098:
jr_03e_5098:
    push bc
    push hl

jr_03e_509a:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_03e_509a

    ld bc, $0014
    pop hl
    add hl, bc
    pop bc
    dec b
    jr nz, jr_03e_5098

    ret


Call_03e_50aa:
jr_03e_50aa:
    push bc
    push hl

jr_03e_50ac:
    ld [hl], $ff
    inc hl
    dec c
    jr nz, jr_03e_50ac

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_03e_50aa

    ret


    or d
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $b5b3
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    or e
    or l
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    or e
    or l
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    or e
    or l
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    or e
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or h
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or c
    or b
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or h
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or c
    or b
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or h
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or c
    or b
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or h
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    or e
    db $ed
    xor $ef
    rst $38
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $ff
    rst $30
    ld hl, sp-$07
    ld_long a, $fffb
    db $fc
    db $fd
    cp $06
    rst $38
    rlca
    ld [$0a09], sp
    rst $38
    or [hl]
    or a
    cp b
    cp c
    rst $38
    rst $38
    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    rst $38
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    rst $38
    rst $38
    rst $38
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    rst $38
    rst $38

Call_03e_5210:
    ld hl, $c710
    ld de, $c711
    ld c, $80
    ld a, [hl]
    push af

jr_03e_521a:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_03e_521a

    pop af
    ld [hl], a
    ret


Call_03e_5223:
    ld hl, $c700
    ld bc, $0100
    ld de, $0000

jr_03e_522c:
    ld a, e
    and $1f
    ld e, a
    push hl
    ld hl, $56c5
    add hl, de
    ld a, [hl]
    pop hl
    ld [hl+], a
    inc e
    dec bc
    ld a, c
    or b
    jr nz, jr_03e_522c

    ret


Call_03e_523f:
    call Call_000_01b9
    ldh a, [$d5]
    and a
    jr nz, jr_03e_5250

    ldh a, [$b4]
    ldh [$b5], a
    ld a, $02
    ldh [$d5], a
    ret


jr_03e_5250:
    xor a
    ldh [$b5], a
    ret


Call_03e_5254:
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ret


    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $e0
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ret


Call_03e_5279:
    ld hl, $c3a0
    ld bc, $0168
    xor a
    call Call_000_166e
    ret


Call_03e_5284:
    xor a
    ld [$c5ed], a
    ld [$c5ee], a
    ret


Call_03e_528c:
    ld a, [$c5ed]
    and a
    jr nz, jr_03e_52e4

    ld a, [$c5ec]
    ld d, a
    ld a, [$c5ee]
    or d
    jr z, jr_03e_52dd

    ld a, [$c5ee]
    ld e, a
    ld hl, $ff80
    add hl, de
    ld a, l
    ld [$c5ee], a
    ld a, h
    ld [$c5ec], a
    ld e, a
    ld d, $00
    call Call_03e_5340
    ld e, l
    ld d, h
    ld a, $04
    call Call_03e_5340
    ld a, l
    xor $ff
    inc a
    ld l, a
    ld a, h
    xor $ff
    ld h, a
    push hl
    ld hl, $0005
    add hl, bc
    ld d, [hl]
    ld hl, $000c
    add hl, bc
    ld e, [hl]
    pop hl
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0005
    add hl, bc
    ld [hl], d
    ld hl, $000c
    add hl, bc
    ld [hl], e
    and a
    ret


jr_03e_52dd:
    ld a, $01
    ld [$c5ed], a
    and a
    ret


jr_03e_52e4:
    ld a, [$c5ea]
    ld e, a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $90
    jr nc, jr_03e_52f4

    cp e
    jr nc, jr_03e_5330

jr_03e_52f4:
    ld a, [$c5ec]
    ld d, a
    ld a, [$c5ee]
    ld e, a
    ld hl, $0080
    add hl, de
    ld a, l
    ld [$c5ee], a
    ld a, h
    ld [$c5ec], a
    ld e, a
    ld d, $00
    call Call_03e_5340
    ld e, l
    ld d, h
    ld a, $04
    call Call_03e_5340
    push hl
    ld hl, $0005
    add hl, bc
    ld d, [hl]
    ld hl, $000c
    add hl, bc
    ld e, [hl]
    pop hl
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0005
    add hl, bc
    ld [hl], d
    ld hl, $000c
    add hl, bc
    ld [hl], e
    and a
    ret


jr_03e_5330:
    ld hl, $0005
    add hl, bc
    ld a, [$c5ea]
    ld [hl], a
    ld hl, $000c
    add hl, bc
    ld [hl], $00
    scf
    ret


Call_03e_5340:
    ld hl, $0000

jr_03e_5343:
    srl a
    jr nc, jr_03e_5348

    add hl, de

jr_03e_5348:
    sla e
    rl d
    and a
    jr nz, jr_03e_5343

    ret


Call_03e_5350:
    ld c, a
    swap a
    and $0f
    add $d0
    ld [hl+], a
    ld a, c
    and $0f
    add $d0
    ld [hl], a
    dec de
    ret


    add $10

Call_03e_5362:
    and $3f
    cp $20
    jr nc, jr_03e_536d

    call Call_03e_5377
    ld a, h
    ret


jr_03e_536d:
    and $1f
    call Call_03e_5377
    ld a, h
    xor $ff
    inc a
    ret


Call_03e_5377:
    ld e, a
    ld a, d
    ld d, $00
    ld hl, $5393
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000

jr_03e_5386:
    srl a
    jr nc, jr_03e_538b

    add hl, de

jr_03e_538b:
    sla e
    rl d
    and a
    jr nz, jr_03e_5386

    ret


    nop
    nop
    add hl, de
    nop
    ld [hl-], a
    nop
    ld c, d
    nop
    ld h, d
    nop
    ld a, c
    nop
    adc [hl]
    nop
    and d
    nop
    or l
    nop
    add $00
    push de
    nop
    ld [c], a
    nop
    db $ed
    nop
    push af
    nop
    ei
    nop
    rst $38
    nop
    nop
    ld bc, $00ff
    ei
    nop
    push af
    nop
    db $ed
    nop
    ld [c], a
    nop
    push de
    nop
    add $00
    or l
    nop
    and d
    nop
    adc [hl]
    nop
    ld a, c
    nop
    ld h, d
    nop
    ld c, d
    nop
    ld [hl-], a
    nop
    add hl, de
    nop
    nop
    nop
    nop
    inc b
    ld bc, $1100
    ld [bc], a
    nop
    ld [de], a
    ld [bc], a
    nop
    dec d
    nop
    nop
    ld d, $00
    nop
    rla
    nop
    nop
    jr jr_03e_53ea

jr_03e_53ea:
    nop
    add hl, de
    nop
    nop
    ld a, [de]
    nop
    nop
    inc d
    nop
    nop
    inc de
    inc bc
    nop
    dec de
    inc b
    nop
    inc b
    ld d, h
    ld [hl], b
    ld b, h
    ei
    ld b, a
    dec bc
    ld c, b
    dec hl
    ld c, b
    ret


    dec a
    ld d, h
    ld b, b
    ld d, h
    ld b, l
    ld d, h
    ld c, d
    ld d, h
    ld c, a
    ld d, h
    ld d, h
    ld d, h
    ld e, c
    ld d, h
    ld e, [hl]
    ld d, h
    ld h, e
    ld d, h
    ld l, b
    ld d, h
    ld l, l
    ld d, h
    ld [hl], d
    ld d, h
    ld [hl], a
    ld d, h
    ld a, h
    ld d, h
    add c
    ld d, h
    add [hl]
    ld d, h
    adc e
    ld d, h
    sub h
    ld d, h
    sbc c
    ld d, h
    sbc [hl]
    ld d, h
    ei
    ld d, h
    and c
    ld d, h
    or b
    ld d, h
    cp a
    ld d, h
    adc $54
    db $dd
    ld d, h
    db $ec
    ld d, h
    cp $54
    nop
    jr nz, @+$01

    ld bc, $0208
    ld [$03fe], sp
    ld [$0804], sp
    cp $05
    ld [$0806], sp
    cp $07
    ld [$0808], sp
    cp $09
    ld [$080a], sp
    cp $0b
    ld [$080c], sp
    cp $0d
    ld [$080e], sp
    cp $01
    ret z

    ld [bc], a
    ret z

    cp $03
    ret z

    inc b
    ret z

    cp $05
    ret z

    ld b, $c8
    cp $07
    ret z

    ld [$fec8], sp
    add hl, bc
    ret z

    ld a, [bc]
    ret z

    cp $0b
    ret z

    inc c
    ret z

    cp $0d
    ret z

    ld c, $c8
    cp $11
    rlca
    ld [de], a
    rlca
    cp $13
    ld [bc], a
    inc d
    ld [bc], a
    db $fd
    ld [$0215], sp
    rst $38
    ld d, $20
    ld d, $20
    db $fc
    rla

jr_03e_549a:
    jr nz, jr_03e_54b3

    jr nz, jr_03e_549a

    jr jr_03e_54c0

    rst $38
    ld a, [de]
    inc b
    db $fd
    ld bc, $031a
    db $fd
    ld bc, $021a
    db $fd
    ld bc, $011a
    db $fc
    dec de
    inc b
    db $fd

jr_03e_54b3:
    ld bc, $031b
    db $fd
    ld bc, $021b
    db $fd
    ld bc, $011b
    db $fc
    inc e

jr_03e_54c0:
    inc b
    db $fd
    ld bc, $031c
    db $fd
    ld bc, $021c
    db $fd
    ld bc, $011c
    db $fc
    dec e
    inc b
    db $fd
    ld bc, $031d
    db $fd
    ld bc, $021d
    db $fd
    ld bc, $011d
    db $fc
    ld e, $04
    db $fd
    ld bc, $031e
    db $fd
    ld bc, $021e
    db $fd
    ld bc, $011e
    db $fc
    rra
    inc b
    db $fd
    ld bc, $031f
    db $fd
    ld bc, $021f
    db $fd
    ld bc, $011f
    db $fc
    add hl, de
    ld bc, $20fc
    rlca
    ld hl, $2207
    rlca
    inc hl
    rlca
    cp $00
    ld [hl], e
    ld d, l
    nop
    ld a, b
    ld d, l
    ld [hl], $78
    ld d, l
    inc bc
    ld a, b
    ld d, l
    add hl, sp
    ld a, b
    ld d, l
    ld b, $78
    ld d, l
    inc a
    ld a, b
    ld d, l
    add hl, bc
    ld a, b
    ld d, l
    ld h, b
    ld a, b
    ld d, l
    inc c
    ld a, b
    ld d, l
    ld h, e
    ld a, b
    ld d, l
    jr nc, jr_03e_55a2

    ld d, l
    ld h, [hl]
    ld a, b
    ld d, l
    inc sp
    ld a, b
    ld d, l
    ld l, c
    ld a, b
    ld d, l
    ld l, h
    ld a, b
    ld d, l
    sbc h
    ld a, b
    ld d, l
    and b
    ld a, b
    ld d, l
    and e
    ld a, b
    ld d, l
    and a
    db $db
    ld d, l
    xor b
    db $f4
    ld d, l
    sbc b
    dec h
    ld d, [hl]
    ldh [$9d], a
    ld d, l
    and $9d
    ld d, l
    jp z, Jump_03e_559d

    and a
    adc $55
    nop
    ld [hl-], a
    ld d, [hl]
    nop
    ccf
    ld d, [hl]
    nop
    ld d, b
    ld d, [hl]
    nop
    ld h, c
    ld d, [hl]
    nop
    ld [hl], d
    ld d, [hl]
    nop
    add e
    ld d, [hl]
    add b
    sub h
    ld d, [hl]
    add h
    sub h
    ld d, [hl]
    adc b
    sub h
    ld d, [hl]
    adc h
    sub h
    ld d, [hl]
    ld bc, $fcfc
    nop
    nop
    add hl, bc
    db $f4
    db $f4
    nop
    nop
    db $f4
    db $fc
    ld bc, $f400
    inc b
    ld [bc], a
    nop
    db $fc
    db $f4
    stop
    db $fc
    db $fc
    ld de, $fc00
    inc b
    ld [de], a
    nop
    inc b
    db $f4
    jr nz, jr_03e_5595

jr_03e_5595:
    inc b
    db $fc
    ld hl, $0400
    inc b
    ld [hl+], a
    nop

Jump_03e_559d:
    inc c
    ld hl, sp-$18
    nop
    nop

jr_03e_55a2:
    ld hl, sp-$10
    ld bc, $f800
    ld hl, sp+$02
    nop
    ld hl, sp+$00
    inc bc
    nop
    ld hl, sp+$08
    inc b
    nop
    ld hl, sp+$10
    dec b
    nop
    nop
    add sp, $10
    nop
    nop
    ldh a, [rNR11]
    nop
    nop
    ld hl, sp+$12
    nop
    nop
    nop
    inc de
    nop
    nop
    ld [$0014], sp
    nop
    db $10
    dec d
    nop
    inc bc
    db $fc
    dec bc
    nop
    db $10
    inc b
    inc bc
    rrca
    db $10
    inc b
    dec bc
    db $10
    db $10
    ld b, $fc

jr_03e_55dd:
    ldh a, [rP1]
    jr nc, jr_03e_55dd

    ld [$1000], sp
    inc b
    ldh a, [rNR10]
    jr nc, jr_03e_55ed

    ld hl, sp+$0f
    jr nc, jr_03e_55f1

jr_03e_55ed:
    nop
    rrca
    db $10
    inc b

jr_03e_55f1:
    ld [$1010], sp
    inc c
    db $f4
    ldh a, [rP1]
    db $10
    db $f4
    ld hl, sp+$01
    db $10
    db $f4
    nop
    ld bc, $f430
    ld [$3000], sp
    db $fc
    ldh a, [rNR10]
    db $10
    db $fc
    ld hl, sp+$11
    db $10
    db $fc
    nop
    ld de, $fc30
    ld [$3010], sp
    inc b
    ldh a, [rNR41]
    db $10
    inc b
    ld hl, sp+$21
    db $10
    inc b
    nop
    ld hl, $0430
    ld [$3020], sp
    inc bc
    inc b
    db $f4
    nop
    nop
    inc b
    db $fc
    ld bc, $0400
    inc b
    ld [bc], a
    nop
    inc bc
    db $fc
    db $f4
    cp a
    nop
    db $fc
    db $fc
    push de
    nop
    db $fc
    inc b
    ret nc

    nop
    inc b
    db $fc
    ldh a, [$bf]
    nop
    db $fc
    ld hl, sp-$2f
    nop
    db $fc
    nop
    push de
    nop
    db $fc
    ld [$00d0], sp
    inc b
    db $fc
    ldh a, [$bf]
    nop
    db $fc
    ld hl, sp-$2d
    nop
    db $fc
    nop
    push de
    nop
    db $fc
    ld [$00d0], sp
    inc b
    db $fc
    ldh a, [$bf]
    nop
    db $fc
    ld hl, sp-$29
    nop
    db $fc
    nop
    push de
    nop
    db $fc
    ld [$00d0], sp
    inc b
    db $fc
    ldh a, [$bf]
    nop
    db $fc
    ld hl, sp-$2f
    nop
    db $fc
    nop
    ret c

    nop
    db $fc
    ld [$00d0], sp
    inc b
    db $fc
    ldh a, [$bf]
    nop
    db $fc
    ld hl, sp-$2b
    nop
    db $fc
    nop

jr_03e_568e:
    ret nc

    nop
    db $fc
    ld [$00d0], sp
    inc c
    db $f4
    ldh a, [$03]
    jr nz, jr_03e_568e

    ld hl, sp+$02
    jr nz, @-$0a

    nop
    ld bc, $f420
    ld [$2000], sp
    db $fc

jr_03e_56a6:
    ldh a, [rNR13]
    jr nz, jr_03e_56a6

jr_03e_56aa:
    ld hl, sp+$12
    jr nz, jr_03e_56aa

    nop
    ld de, $fc20
    ld [$2010], sp
    inc b
    ldh a, [rNR44]
    jr nz, jr_03e_56be

    ld hl, sp+$22
    jr nz, jr_03e_56c2

jr_03e_56be:
    nop
    ld hl, $0420

jr_03e_56c2:
    ld [$2020], sp
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [bc], a
    ld [bc], a
    ld b, $03
    dec bc
    rlca
    inc bc
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    ld b, $04
    inc b
    ld [$0705], sp
    ld [$0b05], sp
    dec bc
    ld de, $0b12
    dec bc
    inc de
    inc bc
    inc d
    ld [de], a
    inc b
    ld [$0713], sp
    ld [$0605], sp
    inc d
    ld b, $14
    inc de
    rlca
    inc de
    rlca
    ld [$0808], sp
    ld [$1214], sp
    inc d
    ld [de], a
    dec bc
    ld de, $1402
    ld b, $14
    ld b, $14
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    db $10
    dec bc
    ld [de], a
    inc de
    ld [de], a
    inc de
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0201
    inc b
    ld b, $00
    nop
    nop
    ld bc, $0402
    ld b, $0e
    nop
    nop
    nop
    db $10
    ld de, $0e06
    ld c, $00
    nop
    nop
    dec d
    dec d
    ld c, $0e
    ld c, $00
    nop
    nop
    inc bc
    dec b
    rlca
    ld c, $0e
    nop
    nop
    nop
    ld bc, $0503
    rlca
    ld c, $00
    nop
    nop
    ld bc, $0301
    dec b
    rlca
    nop
    nop
    nop
    ld bc, $0201
    inc b
    ld b, $00
    nop
    nop
    ld bc, $0402
    ld b, $0e
    nop
    nop
    nop
    ld [$0a0f], sp
    ld c, $0e
    nop
    nop
    nop
    add hl, bc
    dec c
    dec bc
    ld c, $0e
    nop
    nop
    nop
    ld bc, $0503
    rlca
    ld c, $00
    nop
    nop
    ld bc, $0301
    dec b
    rlca
    nop
    nop
    nop
    ld bc, $0201
    inc b
    ld b, $00
    nop
    nop
    ld bc, $1110
    ld b, $0e
    nop
    nop
    nop
    ld bc, $1515
    ld c, $0e
    nop
    nop
    nop
    ld bc, $0503
    rlca
    ld c, $00
    nop
    nop
    ld bc, $0301
    dec b
    rlca
    nop
    nop
    nop
    ld bc, $0201
    inc b
    ld b, $00
    nop
    nop
    ld bc, $0f08
    ld a, [bc]
    ld c, $00
    nop
    nop
    ld bc, $0d09
    dec bc
    ld c, $00
    nop
    nop
    ld bc, $0301
    dec b
    rlca
    nop
    nop
    nop
    ld bc, $1001
    ld de, $0006
    nop
    nop
    ld bc, $1501
    dec d
    ld c, $00
    nop
    nop
    ld bc, $0301
    dec b
    rlca
    nop
    nop
    nop
    ld bc, $0801
    rrca
    ld a, [bc]
    nop
    nop
    nop
    ld bc, $0901
    dec c
    dec bc
    nop
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    ld [de], a
    inc de
    inc de
    inc de
    inc de
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    ld a, $08
    ldh [rSTAT], a
    call Call_03e_5f0d
    call Call_000_1e64

jr_03e_5841:
    ld a, [$c634]
    bit 7, a
    jr nz, jr_03e_586e

    call Call_000_381e
    ldh a, [$b3]
    and $0b
    jr nz, jr_03e_586e

    call Call_03e_58fc
    ld a, $00
    ld [$c5bd], a
    call Call_03e_7b65
    ld a, [$c634]
    cp $07
    call z, Call_03e_58a2
    cp $0b
    call z, Call_03e_58cb
    call Call_000_1e64
    jr jr_03e_5841

jr_03e_586e:
    call Call_03e_5fc9
    xor a
    ldh [$f4], a
    call Call_000_1e64
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    ld a, $90
    ldh [$b0], a
    call Call_03e_7b5a
    ld hl, $c3a0
    ld bc, $0168
    xor a
    call Call_03e_5fb3
    call Call_03e_5fbe
    ld a, $01
    ldh [$ba], a
    call Call_000_1e64
    call Call_000_1e64
    call Call_000_1e64
    xor a
    ldh [$ba], a
    ret


Call_03e_58a2:
    ld a, [$c323]
    or $01
    ld [$c323], a
    ld a, [$c33b]
    or $01
    ld [$c33b], a
    ld a, [$c343]
    or $01
    ld [$c343], a
    ld a, [$c34b]
    or $01
    ld [$c34b], a
    ld a, [$c34f]
    or $01
    ld [$c34f], a
    ret


Call_03e_58cb:
    ld a, [$c34b]
    or $01
    ld [$c34b], a
    ld a, [$c34f]
    or $01
    ld [$c34f], a
    ld a, [$c353]
    or $01
    ld [$c353], a
    ld a, [$c367]
    or $01
    ld [$c367], a
    ld a, [$c36b]
    or $01
    ld [$c36b], a
    ld a, [$c373]
    or $01
    ld [$c373], a
    ret


Call_03e_58fc:
    ld a, [$c634]
    ld hl, $5906
    call Call_03e_606e
    jp hl


    cpl
    ld e, c
    ld e, a
    ld e, c
    ld l, d
    ld e, c
    ld [$1e5a], sp
    ld e, d
    ld h, b
    ld e, d
    ld l, e
    ld e, d
    or c
    ld e, d
    ret c

    ld e, d
    ld sp, hl
    ld e, d
    inc b
    ld e, e
    or $5b
    xor h
    ld e, h
    ld [de], a
    ld e, l
    ld [hl+], a
    ld e, l
    adc a
    ld e, l
    cp a
    ld e, l
    ld [de], a
    ld e, [hl]

Call_03e_592a:
    ld hl, $c634
    inc [hl]
    ret


    xor a
    ldh [$f4], a
    ld de, $5858
    ld a, $01
    call Call_03e_5e1d
    xor a
    ldh [$ae], a
    ldh [$af], a
    ld a, $90
    ldh [$b0], a
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $c4
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ld a, $82
    ld [$c635], a
    call Call_03e_592a
    ret


    call Call_03e_5e41
    ret nc

    call Call_03e_5e29
    call Call_03e_592a
    ret


    call Call_03e_5e80
    ld c, $08
    call Call_000_21e5
    xor a
    ldh [$f4], a
    ld hl, $9800
    ld bc, $0400
    xor a
    call Call_03e_5fb3
    call Call_03e_5996
    ld de, $58b8
    ld a, $04
    call Call_03e_59d2
    ld a, $01
    call Call_03e_5e9a
    call Call_03e_5e35
    call Call_03e_592a
    ret


Call_03e_5996:
    ld hl, $98d4
    ld de, $0020
    ld b, $06
    ld a, $90

jr_03e_59a0:
    ld c, $06
    push af
    push hl

jr_03e_59a4:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_03e_59a4

    pop hl
    add hl, de
    pop af
    add $10
    dec b
    jr nz, jr_03e_59a0

    ldh a, [$fe]
    and a
    jr z, jr_03e_59d1

    ld hl, $98d4
    ld de, $0020
    ld b, $06
    ld a, $01
    ldh [rVBK], a

jr_03e_59c2:
    ld c, $06
    push hl

jr_03e_59c5:
    ld [hl+], a
    dec c
    jr nz, jr_03e_59c5

    pop hl
    add hl, de
    dec b
    jr nz, jr_03e_59c2

    xor a
    ldh [rVBK], a

jr_03e_59d1:
    ret


Call_03e_59d2:
    ld hl, $59f0
    ld a, $08

jr_03e_59d7:
    push af
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    push hl
    push af
    ld a, $08
    call Call_03e_7b93
    pop af
    ld hl, $000b
    add hl, bc
    ld [hl], a
    pop hl
    pop af
    dec a
    jr nz, jr_03e_59d7

    ret


    ret nc

    jr nz, jr_03e_59f5

    ldh a, [$30]

jr_03e_59f5:
    inc b
    ret nc

    ld b, b
    ld b, $c0
    ld d, b
    ld [$60e0], sp
    ld [$70c0], sp
    ld b, $e0
    add b
    inc b
    ldh a, [$90]
    ld [bc], a
    call Call_03e_5e41
    jr c, jr_03e_5a17

    ldh a, [$ae]
    cp $68
    ret z

    add $04
    ldh [$ae], a
    ret


jr_03e_5a17:
    call Call_03e_7bef
    call Call_03e_592a
    ret


    call Call_03e_5e80
    ld c, $05
    call Call_000_21e5
    ldh a, [$fe]
    and a
    jr z, jr_03e_5a47

    ld hl, $98d4
    ld de, $0020
    ld b, $06
    ld a, $01
    ldh [rVBK], a
    xor a

jr_03e_5a38:
    ld c, $06
    push hl

jr_03e_5a3b:
    ld [hl+], a
    dec c
    jr nz, jr_03e_5a3b

    pop hl
    add hl, de
    dec b
    jr nz, jr_03e_5a38

    xor a
    ldh [rVBK], a

jr_03e_5a47:
    xor a
    ldh [$f4], a
    call Call_03e_5e5f
    ld de, $5858
    ld a, $02
    call Call_03e_5e1d
    xor a
    call Call_03e_5e9a
    call Call_03e_5e35
    call Call_03e_592a
    ret


    call Call_03e_5e41
    ret nc

    call Call_03e_5e29
    call Call_03e_592a
    ret


    call Call_03e_5e80
    ld c, $05
    call Call_000_21e5
    ld a, $42
    ldh [$f4], a
    call Call_03e_5ec4
    ld hl, $9800
    ld bc, $0060
    xor a
    call Call_03e_5fb3
    ld hl, $9860
    ld c, $10
    ld a, $20

jr_03e_5a8b:
    ld [hl+], a
    inc a
    ld [hl+], a
    dec a
    dec c
    jr nz, jr_03e_5a8b

    ld hl, $9880
    ld bc, $0300
    ld a, $10
    call Call_03e_5fb3
    ld de, $40f8
    ld a, $05
    call Call_03e_5e1d
    ld a, $01
    call Call_03e_5e9a
    call Call_03e_5e3b
    call Call_03e_592a
    ret


    call Call_03e_5e41
    jr c, jr_03e_5ad1

    ld hl, $ffae
    inc [hl]
    inc [hl]
    ld hl, $c800
    ld de, $c801
    ld a, [hl]
    push af
    ld c, $ff

jr_03e_5ac5:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_03e_5ac5

    pop af
    ld [hl], a
    call Call_03e_5ef8
    ret


jr_03e_5ad1:
    call Call_03e_5e29
    call Call_03e_592a
    ret


    call Call_03e_5e80
    ld c, $05
    call Call_000_21e5
    xor a
    ldh [$f4], a
    call Call_03e_5e5f
    ld de, $5858
    ld a, $03
    call Call_03e_5e1d
    xor a
    call Call_03e_5e9a
    call Call_03e_5e35
    call Call_03e_592a
    ret


    call Call_03e_5e41
    ret nc

    call Call_03e_5e29
    call Call_03e_592a
    ret


    call Call_03e_5e80
    ld c, $05
    call Call_000_21e5
    xor a
    ldh [$f4], a
    ld hl, $9800
    ld bc, $0400
    xor a
    call Call_03e_5fb3
    ld hl, $9800
    ld bc, $0100
    ld a, $02
    call Call_03e_5fb3
    ld hl, $9900
    ld de, $5b6e
    ld bc, $0614
    call Call_03e_5b5c
    ld hl, $988c
    ld de, $5be6
    ld bc, $0304
    call Call_03e_5b5c
    ld hl, $98e3
    ld de, $5bf2
    ld bc, $0202
    call Call_03e_5b5c
    ld de, $9858
    ld a, $06
    call Call_03e_5e1d
    ld a, $01
    call Call_03e_5e9a
    call Call_03e_5e35
    call Call_03e_592a
    ret


Call_03e_5b5c:
jr_03e_5b5c:
    push bc
    push hl

jr_03e_5b5e:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_03e_5b5e

    pop hl
    ld bc, $0020
    add hl, bc
    pop bc
    dec b
    jr nz, jr_03e_5b5c

    ret


    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, c
    ld h, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, d
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, d
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, c
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, d
    ld h, e
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03e_5c19

    ld [hl-], a
    inc sp
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld [de], a
    inc de
    ld [hl+], a
    inc hl
    call Call_03e_5e41
    jr c, jr_03e_5c25

    ld a, [$c635]
    and $07
    ret nz

    ld a, [$c635]
    and $08
    sla a
    sla a
    sla a
    ld e, a
    ld d, $00
    ld hl, $5c2c
    add hl, de
    ld a, l
    ldh [$c7], a
    ld a, h
    ldh [$c8], a

jr_03e_5c19:
    xor a
    ldh [$c9], a
    ld a, $96
    ldh [$ca], a
    ld a, $04
    ldh [$c6], a
    ret


jr_03e_5c25:
    call Call_03e_5e29
    call Call_03e_592a
    ret


    nop
    rst $38
    nop
    rst $38

jr_03e_5c30:
    nop
    rst $38
    nop
    rst $38

jr_03e_5c34:
    rlca
    rst $38
    jr jr_03e_5c30

    ld h, b
    ldh [$80], a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03e_5c42:
    nop
    rst $38
    ldh [rIE], a
    jr jr_03e_5c67

    ld b, $07
    ld bc, $0301
    rst $38
    inc c
    db $fc
    jr nc, jr_03e_5c42

    jr nz, jr_03e_5c34

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ret nz

    rst $38
    jr nc, jr_03e_5c9f

    inc c
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a

jr_03e_5c67:
    inc bc
    ld bc, $0101
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld sp, $40f1
    ret nz

    add b
    add b
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    adc h
    adc a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $ff01
    ld [bc], a
    cp $0c
    db $fc
    db $10
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
    add b
    rst $38
    ld b, b

jr_03e_5c9f:
    ld a, a
    jr nc, jr_03e_5ce1

    ld [$040f], sp
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $cd01
    add b
    ld e, [hl]
    ld c, $05
    call Call_000_21e5
    xor a
    ldh [$f4], a
    ld hl, $9800
    ld bc, $0080
    ld a, $01
    call Call_03e_5fb3
    ld hl, $9880
    ld bc, $0140
    xor a
    call Call_03e_5fb3
    ld hl, $99c0
    ld bc, $0080
    ld a, $01
    call Call_03e_5fb3
    ld hl, $98c5
    ld de, $0020
    ld a, $04
    ld b, $08

jr_03e_5ce1:
    ld c, $0c
    push hl

jr_03e_5ce4:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_03e_5ce4

    pop hl
    add hl, de
    add $04
    dec b
    jr nz, jr_03e_5ce1

    ld hl, $98c4
    ld [hl], $03
    ld hl, $98e4
    ld [hl], $74
    ld hl, $99a5
    ld [hl], $00
    ld de, $6058
    ld a, $09
    call Call_03e_5e1d
    xor a
    call Call_03e_5e9a
    call Call_03e_5e35
    call Call_03e_592a
    ret


    call Call_03e_5e41
    ret nc

    ld de, $6858
    ld a, $0a
    call Call_03e_7b93
    call Call_03e_592a
    ret


    ld de, $5dd6
    call Call_03e_5e4d
    jr c, jr_03e_5d3c

    ldh [rBGP], a
    ldh [rOBP0], a
    and $f0
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ret


jr_03e_5d3c:
    call Call_03e_7bef
    call Call_03e_5fbe
    ld hl, $c3a0
    ld bc, $0050
    ld a, $01
    call Call_03e_5fb3
    ld hl, $c3f0
    ld bc, $00c8
    xor a
    call Call_03e_5fb3
    ld hl, $c4b8
    ld bc, $0050
    ld a, $01
    call Call_03e_5fb3
    ld a, $01
    ldh [$ba], a
    call Call_000_1e64
    call Call_000_1e64
    call Call_000_1e64
    xor a
    ldh [$ba], a
    ld a, $e4
    ldh [rOBP0], a
    ldh [rBGP], a
    call Call_000_3021
    call Call_000_3040
    ld de, $5858
    ld a, $07
    call Call_03e_5e1d
    call Call_03e_592a
    ld a, $28
    ld [$c635], a
    ret


    call Call_03e_5e41
    jr c, jr_03e_5dad

    ld a, [$c635]
    and $03
    ret nz

    ldh a, [rOBP0]
    xor $ff
    ldh [rOBP0], a
    ldh a, [rBGP]
    xor $03
    ldh [rBGP], a
    call Call_000_3021
    call Call_000_3040
    ret


jr_03e_5dad:
    xor a
    ldh [$f4], a
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    call Call_000_3021
    call Call_000_3040
    call Call_03e_592a
    ld de, $5e0a
    call Call_03e_5e4d
    jr c, jr_03e_5dd2

    ldh [rOBP0], a
    ldh [rBGP], a
    call Call_000_3021
    call Call_000_3040
    ret


jr_03e_5dd2:
    call Call_03e_592a
    ret


    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    db $e4
    db $e4
    ret nz

    ret nz

    rst $38
    db $e4
    sub b
    sub b
    ld b, b
    ld b, b
    nop
    nop
    rst $38
    ld c, $40
    call Call_000_372f
    ld hl, $c634
    set 7, [hl]
    ret


Call_03e_5e1d:
    call Call_03e_7b93
    ld a, c
    ld [$c636], a
    ld a, b
    ld [$c637], a
    ret


Call_03e_5e29:
    ld a, [$c636]
    ld c, a
    ld a, [$c637]
    ld b, a
    call Call_03e_7be8
    ret


Call_03e_5e35:
    ld a, $80
    ld [$c635], a
    ret


Call_03e_5e3b:
    ld a, $58
    ld [$c635], a
    ret


Call_03e_5e41:
    ld hl, $c635
    ld a, [hl]
    and a
    jr z, jr_03e_5e4b

    dec [hl]
    and a
    ret


jr_03e_5e4b:
    scf
    ret


Call_03e_5e4d:
    ld hl, $c635
    ld a, [hl]
    inc [hl]
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_03e_5e5d

    and a
    ret


jr_03e_5e5d:
    scf
    ret


Call_03e_5e5f:
    ld hl, $9800
    ld bc, $0080
    ld a, $01
    call Call_03e_5fb3
    ld hl, $9880
    ld bc, $0140
    xor a
    call Call_03e_5fb3
    ld hl, $99c0
    ld bc, $0080
    ld a, $01
    call Call_03e_5fb3
    ret


Call_03e_5e80:
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    call Call_000_1e64
    call Call_000_1e64
    call Call_000_0061
    ret


Call_03e_5e9a:
    ld e, a
    ld hl, $60ad
    ld b, $1c
    call Call_000_3e84
    xor a
    ldh [$ae], a
    ldh [$af], a
    ld a, $90
    ldh [$b0], a
    ld a, $e3
    ldh [rLCDC], a
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $e0
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ret


Call_03e_5ec4:
    ld de, $c800
    ld a, $08

jr_03e_5ec9:
    push af
    ld hl, $5ed8
    ld bc, $0020
    call Call_03e_5faa
    pop af
    dec a
    jr nz, jr_03e_5ec9

    ret


    nop
    nop
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    rst $38
    cp $fe
    db $fd
    db $fd
    db $fd
    db $fc
    db $fd
    db $fd
    db $fd
    cp $fe
    rst $38
    nop

Call_03e_5ef8:
    ld a, $10
    ldh [$c7], a
    ld a, $c8
    ldh [$c8], a
    ld a, $10
    ldh [$c9], a
    ld a, $c7
    ldh [$ca], a
    ld a, $07
    ldh [$c6], a
    ret


Call_03e_5f0d:
    xor a
    ldh [$ba], a
    ldh [$ae], a
    ldh [$af], a
    ldh [$bc], a
    ld a, $98
    ldh [$bd], a
    call Call_03e_5f9e
    ld hl, $c3a0
    ld bc, $0168
    ld a, $01
    call Call_03e_5fb3
    ld hl, $c3f0
    ld bc, $00c8
    xor a
    call Call_03e_5fb3
    ld a, $01
    ldh [$ba], a
    call Call_000_1e64
    call Call_000_1e64
    call Call_000_1e64
    xor a
    ldh [$ba], a
    ld de, $6b5a
    ld hl, $8000
    ld bc, $3eff
    call Call_000_15fe
    ld de, $635a
    ld hl, $9000
    ld bc, $3e80
    call Call_000_15fe
    call Call_03e_7b5a
    call Call_03e_5f75
    ld b, $08
    call Call_000_3e05
    xor a
    ld hl, $c634
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $dc
    ld c, $1f
    call Call_000_2211
    ret


Call_03e_5f75:
    ld a, $da
    ld [$c5c0], a
    ld a, $5f
    ld [$c5c1], a
    ld a, $fb
    ld [$c5c4], a
    ld a, $5f
    ld [$c5c5], a
    ld a, $3d
    ld [$c5c6], a
    ld a, $61
    ld [$c5c7], a
    ld a, $ea
    ld [$c5c2], a
    ld a, $60
    ld [$c5c3], a
    ret


Call_03e_5f9e:
    ld hl, $c3a0
    ld bc, $0168
    ld a, $7f
    call Call_03e_5fb3
    ret


Call_03e_5faa:
jr_03e_5faa:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_03e_5faa

    ret


Call_03e_5fb3:
    push de
    ld e, a

jr_03e_5fb5:
    ld a, e
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_03e_5fb5

    pop de
    ret


Call_03e_5fbe:
    ld hl, $c300
    ld bc, $00a0
    xor a
    call Call_03e_5fb3
    ret


Call_03e_5fc9:
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ret


    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    ld bc, $0300
    ld bc, $0400
    ld [bc], a
    nop
    dec b
    inc bc
    nop
    ld b, $04
    nop
    rlca
    ld bc, $0800
    dec b
    nop
    add hl, bc
    ld bc, $0a00
    ld bc, $0700
    ld h, b
    rlca
    ld h, b
    ld [$1460], sp
    ld h, b
    dec hl
    ld h, b
    ld h, d
    ld h, b
    ret


    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $58
    ret z

    sub $04
    ld [hl], a
    ret


    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $58
    jr z, jr_03e_6020

    add $04
    ld [hl], a

jr_03e_6020:
    ld hl, $0005
    add hl, bc
    cp $58
    ret z

    add $01
    ld [hl], a
    ret


    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $603b
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ccf
    ld h, b
    ld d, c
    ld h, b
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $58
    jr z, jr_03e_604c

    sub $02
    ld [hl], a
    ret


jr_03e_604c:
    ld hl, $000b
    add hl, bc
    inc [hl]
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc [hl]
    ld d, $08
    call Call_03e_6079
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, bc
    add [hl]
    ld [hl], a
    ret


Call_03e_606e:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    add $10

Call_03e_6079:
    and $3f
    cp $20
    jr nc, jr_03e_6084

    call Call_03e_608e
    ld a, h
    ret


jr_03e_6084:
    and $1f
    call Call_03e_608e
    ld a, h
    xor $ff
    inc a
    ret


Call_03e_608e:
    ld e, a
    ld a, d
    ld d, $00
    ld hl, $60aa
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000

jr_03e_609d:
    srl a
    jr nc, jr_03e_60a2

    add hl, de

jr_03e_60a2:
    sla e
    rl d
    and a
    jr nz, jr_03e_609d

    ret


    nop
    nop
    add hl, de
    nop
    ld [hl-], a
    nop
    ld c, d
    nop
    ld h, d
    nop
    ld a, c
    nop
    adc [hl]
    nop
    and d
    nop
    or l
    nop
    add $00
    push de
    nop
    ld [c], a
    nop
    db $ed
    nop
    push af
    nop
    ei
    nop
    rst $38
    nop
    nop
    ld bc, $00ff
    ei
    nop
    push af
    nop
    db $ed
    nop
    ld [c], a
    nop
    push de
    nop
    add $00
    or l
    nop
    and d
    nop
    adc [hl]
    nop
    ld a, c
    nop
    ld h, d
    nop
    ld c, d
    nop
    ld [hl-], a
    nop
    add hl, de
    nop
    nop
    ld h, c
    inc bc
    ld h, c
    ld a, [bc]
    ld h, c
    ld de, $1861
    ld h, c
    dec de
    ld h, c
    ld e, $61
    ld hl, $2461
    ld h, c
    daa
    ld h, c
    jr c, @+$63

    nop
    jr nz, @+$01

    ld bc, $0204
    inc b
    inc bc
    inc b
    cp $04
    inc b
    dec b
    inc b
    ld b, $04
    cp $07
    inc b
    ld [$0904], sp
    inc b
    cp $0a
    jr nz, @+$01

    dec bc
    jr nz, @+$01

    inc c
    jr nz, @+$01

    dec c
    jr nz, @+$01

    ld c, $20
    rst $38
    rrca
    rra
    ld de, $0f02
    ld [bc], a
    ld de, $0f02
    rra
    ld de, $0f02
    rla
    db $10
    jr nz, @+$01

    ld [de], a
    inc b
    inc de
    inc b
    cp $00
    ld a, c
    ld h, c
    sub [hl]
    ld a, [hl]
    ld h, c
    sbc b
    ld a, [hl]
    ld h, c
    sbc d
    ld a, [hl]
    ld h, c
    inc c
    adc a
    ld h, c
    ld c, $8f
    ld h, c
    inc a
    adc a
    ld h, c
    ld h, b
    or b
    ld h, c
    ld [hl], b
    or b
    ld h, c
    add b
    or b
    ld h, c
    sub b
    ld bc, $0062
    ld bc, $0662
    ld bc, $c662
    sub d
    ld h, d
    ld l, l
    rst $30
    ld h, d
    ldh a, [$08]
    ld h, e
    db $f4
    ld [$f863], sp
    ld [$9c63], sp
    add hl, hl
    ld h, e
    db $ec
    add hl, hl
    ld h, e
    ld bc, $fcfc
    nop
    nop
    inc b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$10
    nop
    nop
    nop
    ld de, $0800
    ldh a, [$f8]
    nop
    nop
    ldh a, [rP1]
    ld bc, $f800
    ld hl, sp+$10
    nop
    ld hl, sp+$00
    ld de, $0000
    ld hl, sp+$20
    nop
    nop
    nop
    jr nz, jr_03e_61c8

    ld [$21f8], sp
    nop
    ld [$2100], sp
    jr nz, jr_03e_61c5

    add sp, -$08
    nop
    nop
    add sp, $00
    ld bc, $f000
    ld hl, sp+$02
    nop
    ldh a, [rP1]
    inc bc
    nop
    ld hl, sp-$10
    inc b
    nop

jr_03e_61c5:
    ld hl, sp-$08
    dec b

jr_03e_61c8:
    nop
    ld hl, sp+$00
    ld b, $00
    ld hl, sp+$08
    inc b
    jr nz, jr_03e_61d2

jr_03e_61d2:
    ldh a, [rTAC]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    nop
    ld [$0020], sp
    ld [$2007], sp
    ld [$09f0], sp
    nop
    ld [$0af8], sp
    nop
    ld [$0a00], sp
    jr nz, jr_03e_61f6

    ld [$2009], sp
    db $10
    ldh a, [$0b]
    nop
    db $10

jr_03e_61f6:
    ld hl, sp+$0c
    nop
    stop
    inc c
    jr nz, jr_03e_620e

    ld [$200b], sp
    inc h
    add sp, -$18
    nop
    nop
    add sp, -$10
    ld bc, $e800
    ld hl, sp+$02
    nop

jr_03e_620e:
    add sp, $00
    inc bc
    nop
    add sp, $08
    inc b
    nop
    add sp, $10
    dec b
    nop
    ldh a, [$e8]
    stop
    ldh a, [$f0]
    ld de, $f000
    ld hl, sp+$12
    nop
    ldh a, [rP1]
    inc de
    nop
    ldh a, [$08]
    inc d
    nop
    ldh a, [rNR10]
    dec d
    nop
    ld hl, sp-$18
    jr nz, jr_03e_6236

jr_03e_6236:
    ld hl, sp-$10
    ld hl, $f800
    ld hl, sp+$22
    nop
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp+$08
    inc h
    nop
    ld hl, sp+$10
    dec h
    nop
    nop
    add sp, $30
    nop
    nop
    ldh a, [$31]
    nop
    nop
    ld hl, sp+$32
    nop
    nop
    nop
    inc sp
    nop
    nop
    ld [$0034], sp
    nop
    db $10
    dec [hl]
    nop
    ld [$40e8], sp
    nop
    ld [$41f0], sp
    nop
    ld [$42f8], sp
    nop
    ld [$4300], sp
    nop
    ld [$4408], sp
    nop
    ld [$4510], sp
    nop
    db $10
    add sp, $50
    nop
    db $10
    ldh a, [rHDMA1]
    nop
    db $10
    ld hl, sp+$52
    nop
    stop
    ld d, e
    nop
    db $10
    ld [$0054], sp
    db $10
    db $10
    ld d, l
    nop
    add hl, de
    db $ec
    ldh a, [rP1]
    nop
    db $ec
    ld hl, sp+$01
    nop
    db $ec
    nop
    ld [bc], a
    nop
    db $ec
    ld [$0003], sp
    db $ec
    db $10
    inc b
    nop
    db $f4
    ldh a, [rTIMA]
    nop
    db $f4
    ld hl, sp+$06
    nop
    db $f4
    nop
    rlca
    nop
    db $f4
    ld [$0008], sp
    db $f4
    db $10
    add hl, bc
    nop
    db $fc
    ldh a, [rNR10]
    nop
    db $fc
    ld hl, sp+$11
    nop
    db $fc
    nop
    ld [de], a
    nop
    db $fc
    ld [$0013], sp
    db $fc
    db $10
    inc d
    nop
    inc b
    ldh a, [$15]
    nop
    inc b
    ld hl, sp+$16
    nop
    inc b
    nop
    rla
    nop
    inc b
    ld [$0018], sp
    inc b
    db $10
    add hl, de
    nop
    inc c
    ldh a, [rNR41]
    nop
    inc c
    ld hl, sp+$21
    nop
    inc c
    nop
    ld [hl+], a
    nop
    inc c
    ld [$0023], sp
    inc c
    db $10
    inc h
    nop
    inc b
    db $fc
    ldh a, [rP1]
    nop
    db $fc
    ld hl, sp+$01
    nop
    db $fc
    nop
    ld bc, $fc20
    ld [$2000], sp
    ld [$e8f8], sp
    nop
    db $10
    ld hl, sp-$10
    ld bc, $0010
    add sp, $02
    stop
    ldh a, [$03]
    db $10
    ld hl, sp+$08
    ld bc, $f830
    stop
    jr nc, jr_03e_6322

jr_03e_6322:
    ld [$3003], sp
    nop
    db $10
    ld [bc], a
    jr nc, @+$0e

    ld hl, sp-$28
    nop
    db $10
    ld hl, sp-$20
    ld bc, $f810
    add sp, $02
    stop
    ret c

    db $10
    stop
    ldh [rNR11], a
    stop

jr_03e_633f:
    add sp, $12
    db $10
    ld hl, sp+$10
    ld [bc], a
    jr nc, jr_03e_633f

    jr @+$03

    jr nc, @-$06

    jr nz, jr_03e_634d

jr_03e_634d:
    jr nc, jr_03e_634f

jr_03e_634f:
    db $10
    ld [de], a
    jr nc, jr_03e_6353

jr_03e_6353:
    jr jr_03e_6366

    jr nc, jr_03e_6357

jr_03e_6357:
    jr nz, jr_03e_6369

    jr nc, jr_03e_635b

jr_03e_635b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_6366:
    nop
    nop
    nop

jr_03e_6369:
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
    db $fc
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    add b
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
    add b
    add b
    ld hl, sp-$08
    rst $38
    ccf
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
    ret nz

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
    ld bc, $1f01
    rra
    rst $38
    db $fc
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ld bc, $03ff
    nop
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    ld d, l
    nop
    xor a
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
    rst $38
    nop
    rst $38
    ld c, $ff
    ld sp, $40f1
    ret nz

    ld b, b
    ret nz

    add b
    add b
    ret nz

    add b
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    call z, $02cf
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0301
    ld bc, $c0ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$7f]
    ld [hl], b
    ccf
    jr c, @+$01

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
    ld hl, sp-$08
    cp $1e
    rst $38
    rlca
    rst $38
    ld bc, $00ff
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
    adc a
    adc a
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    rra
    ld a, a
    ld a, b
    rst $38
    ldh [rIE], a
    add b
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
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    cp $0e
    db $fc
    inc e
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld sp, $4000
    nop
    adc b
    nop
    dec d
    nop
    xor d
    nop
    ld e, a
    nop
    rst $38
    nop
    ld h, b
    nop
    sbc b
    nop
    ld b, $00
    ld bc, $5000
    nop
    xor d
    nop
    push de
    nop
    rst $38
    ldh a, [$80]
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    ld bc, $03fe
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    inc e
    rrca
    ld c, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    dec a
    rrca
    rrca
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    db $fc
    cp h
    ldh a, [$f0]
    ldh [$e0], a
    ld hl, sp+$38
    ldh a, [rSVBK]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03e_666e

    inc a
    inc a
    ld a, h
    ld l, h
    nop
    rst $38
    ld [hl], $ff
    ld c, c
    ret


    ld c, c
    pop bc
    adc [hl]
    add e
    sbc [hl]
    add e
    db $fc
    adc a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03e_666e:
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    db $fc
    db $10
    ldh a, [rNR10]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    add hl, de
    rra
    ld b, $06
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    inc c
    rrca
    ld [bc], a
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $0f
    inc c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh a, [$30]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    inc c
    rra
    jr jr_03e_67c4

    ld [hl], b
    rst $38
    ldh [rIE], a
    add b
    db $fc
    call z, $8cfc
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    cp $06
    cp $06
    cp $06
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [rNR23], a
    nop
    rra
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rlca
    nop
    inc bc
    ld bc, $0003
    ld bc, $0101
    ld bc, $0103
    rlca
    ld bc, $031e
    cp $03
    db $fc
    rrca
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rra
    jr jr_03e_67d4

    jr jr_03e_67d6

    jr jr_03e_67d8

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03e_67c4:
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

jr_03e_67d4:
    rst $38
    nop

jr_03e_67d6:
    rst $38
    nop

jr_03e_67d8:
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
    inc bc
    rst $38
    ld bc, $00ff
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
    ret nz

    rst $38
    add b
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
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp+$18
    ld sp, hl
    add hl, de
    rst $38
    rra
    rst $38
    ld e, $07
    rlca
    rrca
    ld c, $1f
    jr jr_03e_6870

    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03e_683c:
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
    cp $06
    cp $06
    cp $06
    cp $06
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    jr nz, jr_03e_683c

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ret nz

    ld a, $e8
    rra
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_6870:
    rlca
    nop
    rra
    ld [bc], a
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    inc bc
    ld bc, $0207
    rlca
    ld [bc], a
    rra
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIE]
    nop
    rst $38
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
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
    rra
    jr jr_03e_68cc

    jr jr_03e_68be

    inc c
    rrca
    inc c
    rrca
    inc c
    rlca
    ld b, $07
    ld b, $03
    inc bc
    add b
    ld a, a
    nop
    rst $38

jr_03e_68be:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    db $e3
    inc e
    rst $38
    nop

jr_03e_68cc:
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $e7ff


    rst $38
    ld a, h
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $e7ff


    rst $38
    ld a, $ff
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $c7
    jr c, @+$01

    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    cp $1e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    cp $1e
    ld hl, sp+$78
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38

jr_03e_695e:
    nop
    rst $38
    nop
    rst $38

jr_03e_6962:
    rlca
    rst $38
    jr jr_03e_695e

    ld h, b
    ldh [$80], a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03e_6970:
    nop
    rst $38
    ldh [rIE], a
    jr jr_03e_6995

    ld b, $07
    ld bc, $0301
    rst $38
    inc c
    db $fc
    jr nc, jr_03e_6970

    jr nz, jr_03e_6962

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    ret nz

    rst $38
    jr nc, jr_03e_69cd

    inc c
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a

jr_03e_6995:
    inc bc
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

jr_03e_69c6:
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_03e_69cd:
    nop
    rst $38
    rlca
    rst $38
    ld c, $ff
    jr @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp b
    rst $38
    jr @+$01

    inc a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    jr @+$01

    inc a
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    jr @+$01

    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ld h, b
    ld a, a
    ld [hl], b
    ccf
    jr nc, @+$41

    jr c, jr_03e_69c6

    sbc b
    sbc a
    sbc h
    rst $38
    nop
    rst $38
    ld bc, $07ff
    cp $1e
    ld hl, sp+$38
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp+$18
    ld hl, sp+$78
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld sp, $40f1
    ret nz

    add b
    add b
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    adc h
    adc a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $ff01
    ld [bc], a
    cp $0c
    db $fc
    db $10
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
    add b
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_03e_6acf

    ld [$040f], sp
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $1f01
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    inc bc
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
    ret nz

    rst $38
    add b
    rst $38

jr_03e_6acf:
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
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    pop bc
    rst $38
    add c
    rst $38
    ret nz

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
    adc a
    adc h
    adc a
    adc h
    rst $00
    add $c7
    add $c7
    rst $00
    rst $00
    rst $00
    rst $08
    adc $df
    call c, $18f8
    db $fc
    inc c
    db $fc
    inc c
    cp $06
    cp $06
    rst $38
    inc bc
    rst $38
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld b, $06
    rlca
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    ldh a, [$7f]
    ld [hl], b
    ccf
    jr c, jr_03e_6b7b

jr_03e_6b7b:
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
    ld hl, sp+$18
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
    ld a, a
    ld a, a
    rst $38
    add b
    jr nz, jr_03e_6bbc

    jr nc, jr_03e_6bce

    ld [hl], b

jr_03e_6b9f:
    ld [hl], b
    ld a, b
    ld a, b
    ld hl, sp-$48
    ld hl, sp-$68
    ld hl, sp+$08
    ld hl, sp-$38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_6bbc:
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    ccf
    ccf
    ret nz

    rst $38

jr_03e_6bce:
    jr nc, jr_03e_6b9f

    ld a, b
    add a
    ld a, b
    add a
    jr nc, @-$2f

    nop

jr_03e_6bd7:
    rst $38
    nop
    rst $38
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
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
    ld bc, $0201
    inc bc

jr_03e_6bf8:
    ld a, [c]
    di

jr_03e_6bfa:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    pop bc
    rst $38
    nop
    rst $38
    jr nc, jr_03e_6bd7

    ld a, b
    add a
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
    ld b, b
    ret nz

jr_03e_6c16:
    jr nz, jr_03e_6bf8

    jr nz, jr_03e_6bfa

    nop
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
    inc b
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_03e_6c16

    db $10
    ldh a, [rNR10]
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
    ld bc, $0201
    inc bc
    inc b
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    sub b
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$30
    ldh a, [rIF]
    ld [$080f], sp
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, jr_03e_6ca4

    jr nz, jr_03e_6ca6

    jr nz, jr_03e_6c88

    db $10
    sbc a
    sbc b
    add a
    add h
    jp $c043


    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    pop af
    ld de, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add b
    ld sp, hl
    add [hl]

jr_03e_6c88:
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $00ff
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp+$68
    ld hl, sp+$58

jr_03e_6ca4:
    db $fc
    ld [hl], h

jr_03e_6ca6:
    db $fc
    inc h
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
    ld [$080f], sp
    rrca
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    dec de
    rra
    cpl
    inc sp
    ld e, a
    ld h, e
    nop
    rst $38
    nop

jr_03e_6ccd:
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $ec
    ccf
    ei
    ccf
    rlca
    rst $38
    inc b
    rst $38
    add hl, bc
    cp $09
    cp $10
    rst $38
    jr nc, @+$01

    ret nc

    rst $18
    ld [$0c0f], sp
    rst $38
    call nz, $e43f
    rra
    db $e4
    rra
    call nz, Call_000_023f
    rst $38
    ld [bc], a
    rst $38
    ld bc, $78ff
    add a
    jr nc, jr_03e_6ccd

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
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    db $e4
    rst $20
    ei
    ei
    call z, $60ff
    ldh [$80], a
    add b

jr_03e_6d2e:
    ld b, b
    ret nz

    jr nz, @-$1e

    ld b, b
    ret nz

    add a
    add a
    rst $08
    rst $08
    inc sp
    rst $38
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld bc, $0201
    inc bc
    ld bc, $e301
    db $e3
    db $fc
    rst $38
    ld b, b
    ret nz

    jr nz, jr_03e_6d2e

    sub b
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    rst $00
    rst $00
    ccf
    rst $38
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$080f], sp
    rlca
    inc b
    ld sp, hl

jr_03e_6d6b:
    add hl, bc
    ei
    ld a, [bc]
    di
    ld [de], a
    rst $20
    inc h
    rst $00
    ld b, [hl]
    adc a
    adc a
    rst $08
    ld c, h
    rst $38
    jr nc, jr_03e_6d6b

    rrca
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $13ff
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    ld a, [c]
    ld c, [hl]
    ld [c], a
    sbc [hl]
    ld [c], a
    ld e, $f4
    inc c
    ld hl, sp+$08
    ldh a, [$30]
    ldh a, [$d0]
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
    ld e, a
    ld h, d
    adc a
    ld a, [c]
    add e
    cp $81
    rst $38
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    jr nz, @+$41

    jr jr_03e_6de9

    pop af
    rra
    cp $1e
    db $fd
    dec c
    rst $38
    ld c, $ff
    jr nz, @+$01

    ret nz

    rst $38
    add b
    rst $38
    and b
    ld [$040f], sp
    rlca
    ei
    ei
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_03e_6de9:
    nop
    ld bc, $03ff
    rst $38
    rra
    db $fc
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    pop bc
    rst $38
    ld a, [c]
    cp $fe
    ld a, $fc
    inc a
    ld hl, sp+$78
    ldh [$60], a
    jp Jump_000_0fc3


    inc c
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_03e_6e4c

    ld hl, sp-$38
    ld hl, sp+$08
    ld hl, sp+$08
    ld b, e
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_03e_6e5f

    jr nz, @+$41

    ld c, h
    ld a, a
    ld c, h
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    jr nz, jr_03e_6e6b

    ld e, b
    ld a, a
    ld b, a
    ld a, a
    ld c, b
    ld a, a
    jr nc, jr_03e_6e73

    daa
    ccf
    jr jr_03e_6e50

    nop
    nop
    call z, $43ff
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_03e_6e81

    jr nz, jr_03e_6e83

    ld c, h
    ld a, a
    ld c, h
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a

jr_03e_6e4c:
    jr nz, jr_03e_6e8d

    ld e, b
    ld a, a

jr_03e_6e50:
    ld b, a
    ld a, a
    ld b, h
    ld a, a
    dec sp
    ccf
    inc e
    inc e
    nop
    nop
    inc bc
    ld [bc], a
    ld bc, $0101

jr_03e_6e5f:
    ld bc, $0101
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rst $38

jr_03e_6e6b:
    db $10
    rst $38
    jr nz, @+$01

    jr c, @+$81

    db $fc
    ccf

jr_03e_6e73:
    ld hl, sp-$41
    ldh [$7f], a
    ld h, b
    rra
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03e_6e81:
    nop
    rst $38

jr_03e_6e83:
    inc e
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38

jr_03e_6e8d:
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
    cp $12
    rst $38
    ld de, $11ff
    cp $22
    db $fc
    inc a
    ldh [rNR41], a
    ret nz

    ld b, b
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
    rlca
    rlca
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ccf
    dec a
    rst $38
    ld d, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld [$00ff], sp
    ld a, a
    xor b
    ld a, a
    sbc h
    rst $38
    rrca
    rst $38
    nop
    rst $38
    jr @+$01

    inc l
    rst $38
    inc a
    rst $38
    jr @+$01

    nop
    ld sp, hl
    add [hl]
    ldh a, [rIF]
    db $fd
    dec c
    ei
    dec sp
    ld a, [$fa0a]
    ld a, [bc]
    cp $06
    db $fc
    inc b
    db $fc
    inc b
    rst $38
    inc bc
    ccf
    jr nc, @+$01

    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, $26
    cp h
    and h
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ret nz

    ret nz

    nop
    nop
    nop
    nop

jr_03e_6f1a:
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    jr nc, jr_03e_6f60

jr_03e_6f30:
    ld c, b
    ld a, b
    add h
    db $fc
    inc b
    db $fc
    jr jr_03e_6f30

    jr nz, jr_03e_6f1a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_6f60:
    nop
    nop
    ld bc, $0601
    rlca
    ld [$080f], sp
    rrca
    rra
    db $10
    rrca
    inc c
    rrca
    rrca
    ld a, a
    ld [hl], b
    ld hl, sp-$79
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $7eff
    rst $38
    add b
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3eff
    rst $38
    cp $fe
    rst $38
    ld bc, $f10f
    ld bc, $02ff
    rst $38
    inc c
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    nop
    ldh [$e0], a
    ld hl, sp+$18
    cp $06
    ld a, a
    add c
    rrca
    pop af
    ld b, $fa
    inc c
    db $fc
    ld a, a
    ld d, c
    ld a, a
    ld b, b
    ccf
    jr nz, jr_03e_6fe0

    jr jr_03e_6fca

    ld b, $01
    ld bc, $0000
    nop
    nop

jr_03e_6fca:
    db $fd
    rlca
    db $fd
    add a
    rst $38
    ld b, d
    rst $38
    or b
    rst $38
    adc h
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ldh a, [rIF]
    ld sp, hl
    ld b, $ff
    nop

jr_03e_6fe0:
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
    ld c, $ff
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
    rrca
    push af
    dec bc
    cp $f2
    rst $38
    ld d, c
    cp $0e
    ld hl, sp+$08
    db $fc
    inc [hl]
    ld [c], a
    cp $cc
    db $fc
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
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    call z, $f0cf
    rst $38
    sub b
    ldh a, [rOBP0]
    ld a, b
    sub b
    ldh a, [rNR41]
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    inc sp
    di
    rrca
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
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_7064:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [c]
    rst $38
    ld c, $0f
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    rst $38
    inc b
    rst $38
    ld [$1fff], sp
    rst $38
    jr nz, jr_03e_7064

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ret nz

    rst $38
    nop
    rst $38
    rrca
    rst $38
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
    rst $38
    rra
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_03e_70de

    ld e, $0e
    add hl, bc
    rrca
    ld c, $0f
    add hl, bc
    rrca
    dec c
    ld b, $06
    nop
    nop
    rst $38
    nop
    db $fc
    inc bc

jr_03e_70de:
    inc bc
    db $fc
    cp $3f
    pop bc
    pop bc
    add b
    add b
    nop
    nop
    nop
    nop
    swap h
    scf
    ret z

    rst $08
    jr nc, @+$41

    pop bc
    rst $38
    jp nz, Jump_000_3c3f

    rlca
    inc b
    inc bc
    inc bc
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    call z, $43ff
    ld a, a
    and b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ld b, b
    ld a, a
    ld c, h
    ld a, a
    ld c, h
    ld a, a
    ld b, b
    ld a, a
    ld hl, $183f
    rra
    rla
    rra
    ld [de], a
    ld e, $0c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    rlca
    inc b
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
    ret nz

    ld b, b
    ldh [rNR41], a
    rlca
    inc b
    rrca
    ld [$080f], sp
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, jr_03e_71c6

    ld hl, $181f
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, a
    ld [hl], a
    ccf
    jr nc, jr_03e_71e6

    jr c, jr_03e_71c8

    jr @+$09

    inc b
    inc bc
    inc bc
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rst $00
    push bc
    rst $38
    ld a, $ff
    db $10
    ldh [rNR41], a
    ld hl, sp+$18
    db $fc
    add h
    ld hl, sp+$18
    ldh [$60], a
    add e
    add e

jr_03e_71c6:
    rst $38
    ld a, h

jr_03e_71c8:
    rst $38
    ld [$0c0f], sp
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $18
    ld d, b
    rst $38
    ld [hl], b

jr_03e_71e6:
    rst $38
    ld bc, $c03f
    ld b, $05
    ld b, $05
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$080f], sp
    rra
    pop hl
    rra
    and $3f
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    nop
    rrca
    ld [$080f], sp
    rlca
    inc b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0201
    inc bc
    ld bc, $ff01
    ld b, b
    rst $08
    ld [hl], b
    ret nz

    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    ld c, b
    ld hl, sp-$50
    or b
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_03e_7231

jr_03e_7231:
    ld b, b
    ccf
    ld b, b
    rrca
    jr nc, jr_03e_7237

jr_03e_7237:
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    rlca
    inc b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp+$08
    rlca
    inc b
    rrca
    ld [$080f], sp
    rra
    db $10
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    db $fc
    adc h
    nop
    nop
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld a, h
    ld [hl], h
    ld a, a
    ld [hl], e
    ccf
    jr nc, jr_03e_72e6

    jr nc, @+$21

    db $10
    inc bc
    inc bc
    rrca
    inc c
    rra
    db $10
    rrca
    add hl, bc
    rlca
    inc b
    add e
    add d
    db $e3
    ld h, e
    rst $38
    inc e
    cp $02
    db $fc
    inc e
    ldh [$60], a
    add b
    add b
    add b
    add b
    add c
    add c
    rst $00
    add $ff
    jr c, @+$21

    db $10
    rrca
    ld [$0507], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
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
    ld h, b

jr_03e_72e6:
    cp a
    or b
    rst $38
    ldh a, [rTAC]
    inc b
    ld c, $09
    inc c
    dec bc
    inc c
    dec bc
    ld e, $15
    rra
    ld d, $1f
    inc de
    rra
    ld [de], a
    rst $38
    ld h, c
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret


    ld a, a
    add [hl]
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    or b
    rrca
    ld c, $0f
    ld [$0c0f], sp
    rlca
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ccf
    ldh [$3f], a
    ldh a, [$1f]
    rst $38
    ld a, a
    adc b
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    rlca
    inc b
    ld h, b
    ld h, b
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    rlca
    inc b
    rrca
    ld [$080f], sp
    rlca
    ld b, $01
    ld bc, $0000
    nop
    nop
    rlca
    rlca
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh a, [$30]
    ld hl, sp-$78
    ld a, [hl]
    ld b, [hl]
    rst $38
    db $e3
    db $fc
    inc c
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $f2
    ld a, a
    ld h, c
    ld a, a
    ld h, b
    ccf
    jr nz, @+$05

    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    cp a
    or b
    rst $38
    ld b, a
    ldh a, [$30]
    ldh [rNR41], a
    ldh a, [$90]
    ldh a, [$90]
    ldh [$a0], a
    ldh a, [$f0]
    db $fd
    dec c
    rst $38
    db $e3
    ccf
    jr nz, jr_03e_73ec

    db $10
    rra
    db $10
    rrca
    ld [$1a1f], sp
    rra
    inc d
    rra
    inc d
    ccf
    jr c, @+$01

    ld a, b
    rst $38
    ret nz

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
    ld a, a
    ld l, b

jr_03e_73ec:
    rst $28
    cp b
    rst $08
    cp b
    ld e, a
    ld [hl], b
    ld e, h
    ld [hl], e
    jr c, jr_03e_742d

    ld [$0c0f], sp
    dec bc
    rst $38
    ld h, b
    cp a
    or b
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ld bc, $807f
    ld a, a
    adc c
    rst $38
    ld b, $07
    inc b
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rrca
    db $fc
    inc b
    ld hl, sp-$78
    ld hl, sp-$58
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop

jr_03e_742d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    jr jr_03e_74a6

    db $10
    ccf
    jr nc, jr_03e_748b

jr_03e_748b:
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

jr_03e_74a6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    ld sp, $3f31
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    add b
    add b
    call z, $fccc
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    scf
    scf
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    db $ec
    db $ec
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0301
    inc bc
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ret nz

    ret nz

jr_03e_7512:
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ldh [$e0], a
    nop
    ldh a, [$60]
    sub c
    db $10
    jp hl


    db $10
    inc l
    ld [$0834], sp
    inc d
    ld [$0814], sp
    or $00
    add b
    add b
    ld b, b
    add b
    ld b, b
    ld b, b
    and b
    nop
    ld c, a
    ld b, $19
    add hl, bc
    db $76
    ld sp, $004a
    nop
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
    or b
    jr nc, jr_03e_7512

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ldh a, [$b0]
    ld hl, sp-$78
    ccf
    jr nz, jr_03e_75bc

    jr nz, jr_03e_75be

    ld hl, $417f
    ld a, a
    ld b, a
    ld a, a
    ld b, b
    rst $38
    and b
    rst $38
    and b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp+$38
    cp $06
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    ld c, $3f
    jr nc, @+$01

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    cp $de
    db $fc
    inc e
    db $fc
    inc a
    ld hl, sp+$38
    rra
    rra

jr_03e_75bc:
    rrca
    rrca

jr_03e_75be:
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rra
    rra
    inc e
    inc e
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$08
    jr c, jr_03e_7612

    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    inc c
    inc c
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    jr nc, jr_03e_762a

    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rra

jr_03e_7603:
    rra

jr_03e_7604:
    rra
    rra
    rrca
    rrca
    ld b, $06
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]

jr_03e_7612:
    ld hl, sp-$08
    ld hl, sp-$08

jr_03e_7616:
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld a, h
    add d
    inc d
    ld [$1a04], a
    inc b
    dec bc
    inc bc
    inc c
    nop
    rlca
    nop
    nop
    nop
    nop

jr_03e_762a:
    ld hl, $215a
    ld d, d
    jr nz, jr_03e_7603

    ld b, b
    or c
    add b
    ld h, b
    nop
    ret nz

    nop
    nop
    nop
    nop
    jr nc, jr_03e_7604

    jr nz, jr_03e_7616

    ret nz

    jr nc, jr_03e_7641

jr_03e_7641:
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    add hl, de
    rst $38
    ld b, $ff
    inc b
    ld sp, hl
    adc [hl]
    ld hl, sp-$71
    ld hl, sp-$71
    ld a, c
    ld c, [hl]
    ld a, a
    ld b, h
    rst $38
    ld h, b
    rst $18
    ld d, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nc, @+$01

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
    db $fc
    rst $18
    ld e, b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc c
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh [$60], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    inc b
    rrca
    ld [$080f], sp
    rra
    db $10
    ld a, a
    ld b, h
    rst $38
    add b
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
    ld d, b
    rst $38
    ld [$08ff], sp
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
    jr nc, @+$01

    nop
    di
    inc c
    pop hl
    ld e, $e1
    ld e, $f3
    inc c
    rst $38
    nop
    rst $38
    nop
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    pop hl
    ld hl, $46c7
    rst $38
    ld hl, sp-$01
    inc b
    rst $38
    ld a, [bc]
    ld b, $06
    rra
    add hl, de
    ld a, a
    ld h, c
    cp $82

jr_03e_77b2:
    cp $02
    cp $02
    cp $02
    db $fc
    inc b
    ldh a, [$f0]
    ld a, a
    ld a, a
    ld a, a
    ld a, b
    ccf
    jr c, jr_03e_77e2

    inc e
    rrca
    inc c
    rlca
    inc b
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$30]
    ei
    dec bc
    rst $38
    inc b
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
    ld a, h
    ld a, h

jr_03e_77e2:
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0701
    ld b, $1f
    jr jr_03e_77b2

    and b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld e, $1e
    db $fc
    db $fc
    db $fc
    inc a
    ld hl, sp+$38
    ldh a, [rSVBK]
    ldh [$60], a
    ret nz

    ld b, b
    add b
    add b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    jr nz, @+$01

    and b
    ld a, a
    ld c, h
    ld a, a
    ld b, d
    ld a, a
    ld b, c
    rst $38
    add b
    rst $00
    cp b
    add e
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add hl, bc
    cp $0a
    db $fc
    ld h, h
    db $fc
    add h
    db $fc
    inc b
    cp $02
    add $3a
    add e
    ld a, l
    nop
    nop
    nop
    nop

jr_03e_784e:
    ld b, $06
    ld c, $0a
    ld e, $12
    ld a, $22
    ld a, [hl]
    ld b, d
    rst $38
    add c
    rra
    db $10
    ccf
    jr nz, jr_03e_789e

    jr nz, jr_03e_78e0

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    jp $8cfc


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
    add b
    ld a, a
    ld h, b
    rst $38
    nop
    rst $38
    ld b, $ff
    add hl, de
    rst $38
    jr nz, @+$01

    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld hl, $21ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, e
    db $fc
    inc h
    ei
    dec hl
    ei
    ld a, [bc]
    cp $1f
    rst $38
    ld [bc], a
    rst $38
    inc b

jr_03e_789e:
    rst $38
    jr c, @+$01

    rst $00
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp+$08
    ld hl, sp-$08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0404
    rra
    dec de
    ccf
    jr nz, @+$21

    db $10
    ccf
    jr nz, jr_03e_78e8

    jr jr_03e_784e

    ld a, h

jr_03e_78cc:
    add e
    ld a, h
    rst $00
    cp b
    rst $38
    add b

jr_03e_78d2:
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr @+$01

    ld b, $ff
    jr c, jr_03e_78cc

    ld a, h
    rst $00
    ld a, h

jr_03e_78e0:
    rst $00
    jr c, jr_03e_78d2

    jr c, @+$01

    db $10
    rst $38
    nop

jr_03e_78e8:
    rst $38
    nop
    add e
    ld a, l
    add e
    ld a, l
    rst $00
    ld a, [hl-]
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    ret nz

    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    or c
    cp $0e
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$30]
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $c0c0
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$30]
    ret nz

    ret nz

    ld b, b
    ret nz

    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [de], a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    add e
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$1f], a
    rst $38
    ccf
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr c, jr_03e_7a14

    inc hl
    ccf
    add hl, hl
    ld d, $16
    rst $38
    nop

jr_03e_79dc:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    add e
    ld bc, $0001
    nop
    rst $38
    ld bc, $03fe
    rst $38
    inc bc
    db $fc
    inc b
    ld hl, sp+$38
    ld hl, sp-$78
    ld hl, sp+$28
    ret nc

    ret nc

    jr nz, jr_03e_79dc

    ret nz

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

jr_03e_7a14:
    nop
    nop
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
    inc bc
    inc c
    inc b
    dec bc
    inc c
    ld [de], a
    ld [$7e76], sp
    add c
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ld h, b
    ld b, b
    or c
    jr nz, jr_03e_7a95

    rra
    jr nz, jr_03e_7a4a

    ld l, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$c0], a
    jr nc, jr_03e_7a67

    ret c

    ldh a, [$08]

jr_03e_7a4a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rlca
    rlca
    rlca

jr_03e_7a67:
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$68
    db $fc
    inc c
    cp $0e
    cp $9e
    cp $fe
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop

jr_03e_7a95:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$b0]
    db $fc
    inc c
    cp $0e
    rst $38
    sbc a
    cp $fe
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_7b04:
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    cp $fe
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld bc, $0601
    ld b, $19
    jr jr_03e_7b4c

    nop
    jr jr_03e_7b29

jr_03e_7b29:
    nop
    nop
    dec sp
    nop
    nop
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
    jr nc, jr_03e_7b04

    nop
    jr nc, jr_03e_7b3f

jr_03e_7b3f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03e_7b4c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_03e_7b5a:
    ld hl, $c508
    ld bc, $00c8
    xor a
    call Call_000_166e
    ret


Call_03e_7b65:
    ld hl, $c51c
    ld e, $0a

jr_03e_7b6a:
    ld a, [hl]
    and a
    jr z, jr_03e_7b7c

    ld c, l
    ld b, h
    push hl
    push de
    call Call_03e_7d61
    call Call_03e_7bfe
    pop de
    pop hl
    jr c, jr_03e_7b92

jr_03e_7b7c:
    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_03e_7b6a

    ld a, [$c5bd]
    ld l, a
    ld h, $c3

jr_03e_7b89:
    ld a, l
    cp $a0
    jr nc, jr_03e_7b92

    xor a
    ld [hl+], a
    jr jr_03e_7b89

jr_03e_7b92:
    ret


Call_03e_7b93:
    push de
    push af
    ld hl, $c51c
    ld e, $0a

jr_03e_7b9a:
    ld a, [hl]
    and a
    jr z, jr_03e_7ba9

    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_03e_7b9a

    pop af
    pop de
    scf
    ret


jr_03e_7ba9:
    pop af
    ld c, l
    ld b, h
    ld hl, $c5bc
    inc [hl]
    ld e, a
    ld d, $00
    ld a, [$c5c0]
    ld l, a
    ld a, [$c5c1]
    ld h, a
    add hl, de
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0000
    add hl, bc
    ld a, [$c5bc]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    xor a
    ld [hl+], a
    pop de
    ld hl, $0004
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    dec a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_03e_7be8:
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


Call_03e_7bef:
    ld hl, $c51c
    ld e, $0a

jr_03e_7bf4:
    ld [hl], $00
    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_03e_7bf4

    ret


Call_03e_7bfe:
    xor a
    ld [$c5c8], a
    ld hl, $0003
    add hl, bc
    ld a, [hl+]
    ld [$c5c9], a
    ld a, [hl+]
    ld [$c5ca], a
    ld a, [hl+]
    ld [$c5cb], a
    ld a, [hl+]
    ld [$c5cc], a
    ld a, [hl]
    ld [$c5cd], a
    call Call_03e_7cec
    cp $fd
    jr z, jr_03e_7c8d

    cp $fc
    jr z, jr_03e_7c8a

    call Call_03e_7cc5
    ld a, [$c5c9]
    add [hl]
    ld [$c5c9], a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    ld a, [$c5bd]
    ld e, a
    ld d, $c3
    ld a, [hl+]
    ld c, a

jr_03e_7c3c:
    ld a, [$c5cb]
    ld b, a
    ld a, [$c5cd]
    add b
    ld b, a
    ld a, [$c5ce]
    add b
    ld b, a
    call Call_03e_7c92
    add b
    ld [de], a
    inc hl
    inc de
    ld a, [$c5ca]
    ld b, a
    ld a, [$c5cc]
    add b
    ld b, a
    ld a, [$c5cf]
    add b
    ld b, a
    call Call_03e_7ca2
    add b
    ld [de], a
    inc hl
    inc de
    ld a, [$c5c9]
    add [hl]
    ld [de], a
    inc hl
    inc de
    call Call_03e_7cb2
    ld b, a
    ld a, [$c634]
    cp $07
    ld a, b
    jr z, jr_03e_7c7a

    ld [de], a

jr_03e_7c7a:
    inc hl
    inc de
    ld a, e
    ld [$c5bd], a
    cp $a0
    jr nc, jr_03e_7c8f

    dec c
    jr nz, jr_03e_7c3c

    pop bc
    jr jr_03e_7c8d

jr_03e_7c8a:
    call Call_03e_7be8

jr_03e_7c8d:
    and a
    ret


jr_03e_7c8f:
    pop bc
    scf
    ret


Call_03e_7c92:
    push hl
    ld a, [hl]
    ld hl, $c5c8
    bit 6, [hl]
    jr z, jr_03e_7ca0

    add $08
    xor $ff
    inc a

jr_03e_7ca0:
    pop hl
    ret


Call_03e_7ca2:
    push hl
    ld a, [hl]
    ld hl, $c5c8
    bit 5, [hl]
    jr z, jr_03e_7cb0

    add $08
    xor $ff
    inc a

jr_03e_7cb0:
    pop hl
    ret


Call_03e_7cb2:
    ld a, [$c5c8]
    ld b, a
    ld a, [hl]
    xor b
    and $e0
    ld b, a
    ld a, [hl]
    and $10
    or b
    bit 4, a
    ret z

    or $04
    ret


Call_03e_7cc5:
    ld e, a
    ld d, $00
    ld a, [$c5c6]
    ld l, a
    ld a, [$c5c7]
    ld h, a
    add hl, de
    add hl, de
    add hl, de
    ret


Call_03e_7cd4:
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ld hl, $0008
    add hl, bc
    ld [hl], $00
    ld hl, $0009
    add hl, bc
    ld [hl], $00
    ld hl, $000a
    add hl, bc
    ld [hl], $ff
    ret


Call_03e_7cec:
jr_03e_7cec:
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_03e_7cfc

    dec [hl]
    call Call_03e_7d43
    ld a, [hl+]
    push af
    jr jr_03e_7d1d

jr_03e_7cfc:
    ld hl, $000a
    add hl, bc
    inc [hl]
    call Call_03e_7d43
    ld a, [hl+]
    cp $fe
    jr z, jr_03e_7d35

    cp $ff
    jr z, jr_03e_7d27

    push af
    ld a, [hl]
    push hl
    and $3f
    ld hl, $0009
    add hl, bc
    add [hl]
    ld hl, $0008
    add hl, bc
    ld [hl], a
    pop hl

jr_03e_7d1d:
    ld a, [hl]
    and $c0
    srl a
    ld [$c5c8], a
    pop af
    ret


jr_03e_7d27:
    xor a
    ld hl, $0008
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    dec [hl]
    dec [hl]
    jr jr_03e_7cec

jr_03e_7d35:
    xor a
    ld hl, $0008
    add hl, bc
    ld [hl], a
    dec a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    jr jr_03e_7cec

Call_03e_7d43:
    ld hl, $0001
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld a, [$c5c2]
    ld l, a
    ld a, [$c5c3]
    ld h, a
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, de
    ret


Call_03e_7d61:
    ld hl, $0002
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld a, [$c5c4]
    ld l, a
    ld a, [$c5c5]
    ld h, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
