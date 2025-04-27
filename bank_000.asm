;#.         #
;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    rst $38

Call_000_0001:
    nop

Call_000_0002:
    nop

Call_000_0003:
    nop
    nop
    nop

Jump_000_0006:
    nop
    nop

RST_08::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_10::
    rst $38

Call_000_0011:
    nop

Call_000_0012:
    nop

Call_000_0013:
    nop
    nop
    nop

Jump_000_0016:
    nop
    nop

RST_18::
    rst $38
    nop
    nop
    nop

Call_000_001c:
Jump_000_001c:
    nop
    nop
    nop
    nop

RST_20::
    rst $38

Call_000_0021:
    nop
    nop

Jump_000_0023:
    nop
    nop
    nop

Call_000_0026:
    nop
    nop

RST_28::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

RST_30::
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

Jump_000_0037:
    nop

RST_38::
    jp Jump_000_00fd


    nop

Jump_000_003c:
    nop

Jump_000_003d:
    nop
    nop
    nop

VBlankInterrupt::
    jp Jump_000_1de5


    nop
    nop
    nop
    nop
    nop

LCDCInterrupt::
    jp Jump_000_15ac


Call_000_004b:
    nop
    nop
    nop
    nop
    nop

TimerOverflowInterrupt::
    jp Jump_000_216a


    nop
    nop
    nop

Call_000_0056:
    nop
    nop

SerialTransferCompleteInterrupt::
    jp Jump_000_1f79


    nop
    nop
    nop
    nop
    ld d, a

JoypadTransitionInterrupt::
    reti


Call_000_0061:
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    ld b, a
    db $cb

    add a
    ldh [rIE], a

jr_000_006b:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_006b

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a

Call_000_0077:
    ld a, b
    ldh [rIE], a
    ret


Call_000_007b:
Jump_000_007b:
    ldh a, [rLCDC]
    set 7, a
    ldh [rLCDC], a

Call_000_0081:
    ret


Call_000_0082:
Jump_000_0082:
    xor a
    ld hl, $c300
    ld b, $a0

Call_000_0088:
jr_000_0088:
    ld [hl+], a
    dec b
    jr nz, jr_000_0088

    ret


Call_000_008d:
Jump_000_008d:
    ld a, $a0
    ld hl, $c300

Call_000_0092:
    ld de, $0004
    ld b, $28

jr_000_0097:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_0097

    ret


Call_000_009d:
Jump_000_009d:
    ld [$d122], a
    ldh a, [$b8]
    push af
    ld a, [$d122]
    call Call_000_3e7e
    call Call_000_00b1
    pop af
    call Call_000_3e7e
    ret


Call_000_00b1:
Jump_000_00b1:
    ld a, b

Call_000_00b2:
    and a
    jr z, jr_000_00c1

    ld a, c
    and a
    jr z, jr_000_00ba

    inc b

jr_000_00ba:
    call Call_000_00c1
    dec b
    jr nz, jr_000_00ba

Call_000_00c0:
Jump_000_00c0:
    ret


Call_000_00c1:
jr_000_00c1:
    ld a, [hl+]

Call_000_00c2:
    ld [de], a

Call_000_00c3:
    inc de
    dec c
    jr nz, jr_000_00c1

    ret


Call_000_00c8:
    ldh a, [rLCDC]
    bit 7, a
    jp nz, Jump_000_15fe

    push hl
    ld h, d
    ld l, e

Jump_000_00d2:
    pop de
    ld a, b
    push af
    swap c
    ld a, $0f

Call_000_00d9:
    and c
    ld b, a
    ld a, $f0
    and c
    ld c, a
    pop af

Call_000_00e0:
Jump_000_00e0:
    jp Jump_000_009d


Jump_000_00e3:
    ldh a, [rLCDC]
    bit 7, a
    jp nz, Jump_000_1636

    push de

Jump_000_00eb:
    ld d, h

Call_000_00ec:
    ld e, l

Jump_000_00ed:
    ld a, b
    push af

Call_000_00ef:
    ld h, $00
    ld l, c

Jump_000_00f2:
    add hl, hl

Jump_000_00f3:
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    pop af

Call_000_00f8:
Jump_000_00f8:
    pop hl
    jp Jump_000_15d4


Jump_000_00fc:
    nop

Jump_000_00fd:
    jp $ffa6


Boot::
    nop

Jump_000_0101:
    jp Jump_000_01ab


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "POKEMON YEL"

HeaderManufacturerCode::
    db "LOW", $00

HeaderCGBFlag::
    db $80

HeaderNewLicenseeCode::
    db $30, $31

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $03

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $97

HeaderGlobalChecksum::
    db $04, $7c

Call_000_0150:
    ldh a, [$b8]
    push af
    ld a, b
    call Call_000_3e7e

Jump_000_0157:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_000_015b:
    ld a, [hl+]
    ld d, a
    ld a, $03

Jump_000_015f:
jr_000_015f:
    dec a
    jr nz, jr_000_015f

    call Call_000_0199
    call Call_000_01a5
    call Call_000_0199
    call Call_000_01a5
    call Call_000_0199
    call Call_000_01a5
    call Call_000_0199
    call Call_000_01a5
    call Call_000_0199
    call Call_000_01a5
    call Call_000_0199
    call Call_000_01a5
    call Call_000_0199
    call Call_000_01a5
    call Call_000_0199
    dec bc
    ld a, c
    or b
    jr nz, jr_000_015b

    pop af
    call Call_000_3e7e
    ret


Call_000_0199:
    ld a, d
    and $80

Jump_000_019c:
    srl a
    srl a
    ldh [rNR32], a
    sla d
    ret


Call_000_01a5:
    ld a, $03

jr_000_01a7:
    dec a
    jr nz, jr_000_01a7

    ret


Jump_000_01ab:
    cp $11
    jr z, jr_000_01b2

    xor a

Call_000_01b0:
    jr jr_000_01b4

Call_000_01b2:
jr_000_01b2:
    ld a, $01

jr_000_01b4:
    ldh [$fe], a
    jp Jump_000_1d10


Call_000_01b9:
Jump_000_01b9:
    ldh a, [$b8]
    push af
    ld a, $03
    call Call_000_3e7e

Jump_000_01c1:
    call $402d
    pop af
    jp Jump_000_3e7e


Call_000_01c8:
    ldh a, [$b8]
    push af
    ld a, $03
    call Call_000_3e7e
    call $4000
    pop af
    jp Jump_000_3e7e


Jump_000_01d7:
    ld a, $ff
    ld [$cd6b], a
    call Call_000_0ecb
    ld b, $03
    ld hl, $407c
    call Call_000_3e84
    ld hl, $d72b
    bit 0, [hl]
    jr z, jr_000_01f3

    ld a, $03

Jump_000_01f0:
    ld [$d13b], a

jr_000_01f3:
    ld hl, $d72d
    bit 5, [hl]
    res 5, [hl]
    call z, Call_000_0fd0
    call nz, Call_000_0750

Call_000_0200:
Jump_000_0200:
    ld hl, $d731
    ld a, [hl]
    and $18
    jr z, jr_000_021d

Jump_000_0208:
    ld b, $1c
    ld hl, $4567
    call Call_000_3e84
    call Call_000_231c
    ld hl, $d731
    res 3, [hl]
    ld hl, $d72d
    res 4, [hl]

jr_000_021d:
    call Call_000_342a
    ld b, $03
    ld hl, $40d2
    call Call_000_3e84
    ld hl, $d731
    bit 4, [hl]
    res 4, [hl]

Call_000_022f:
    ld hl, $d72c
    res 5, [hl]
    call Call_000_231c
    ld hl, $d125
    set 5, [hl]
    set 6, [hl]
    xor a

Call_000_023f:
    ld [$cd6b], a

Jump_000_0242:
    call Call_000_1e64

Jump_000_0245:
    call Call_000_1e64
    call Call_000_342a
    call Call_000_1e6f
    call Call_000_0fe1
    ld a, [$cfc4]
    and a
    jp nz, Jump_000_03c3

    call Call_000_0c51
    ld b, $07
    ld hl, $6321
    call Call_000_3e84
    ld a, [$da45]

Jump_000_0266:
    and a
    jp nz, Jump_000_054a

    ld hl, $d72c
    bit 3, [hl]
    res 3, [hl]
    jp nz, Jump_000_054a

    ld a, [$d731]
    and $18
    jp nz, Jump_000_0794

    ld a, [$d058]
    and a
    jp nz, Jump_000_040b

    ld a, [$d72f]
    bit 7, a
    jr z, jr_000_028e

    ldh a, [$b4]
    jr jr_000_0290

jr_000_028e:
    ldh a, [$b3]

jr_000_0290:
    bit 3, a
    jr z, jr_000_029a

    xor a
    ldh [$8c], a
    jp Jump_000_02c5


jr_000_029a:
    bit 0, a
    jp z, Jump_000_0319

    ld a, [$d72f]
    bit 2, a
    jp nz, Jump_000_02f8

    call Call_000_309d
    jr nz, jr_000_02ee

    call Call_000_3ef9
    ldh a, [$eb]
    and a
    jp z, Jump_000_0242

    xor a
    ld [$d435], a
    call Call_000_095e
    call Call_000_0ffe
    ldh a, [$8c]
    and a
    jp z, Jump_000_0242

Jump_000_02c5:
    ld a, $35
    call Call_000_3eb4

Call_000_02ca:
    call Call_000_231c
    ld a, [$cd60]
    bit 2, a
    jr nz, jr_000_02ee

    bit 0, a
    jr nz, jr_000_02ee

    ld a, [$c45c]
    ld [$cf0e], a
    call Call_000_2817
    ld a, [$cc47]
    and a
    jr z, jr_000_02ee

    xor a
    ld [$cc47], a
    jp Jump_000_01d7


jr_000_02ee:
    ld a, [$d058]
    and a
    jp nz, Jump_000_040b

    jp Jump_000_0242


Jump_000_02f8:
jr_000_02f8:
    call Call_000_231c
    ld hl, $cd60

Jump_000_02fe:
    res 2, [hl]

Call_000_0300:
Jump_000_0300:
    xor a
    ld [$d434], a
    ld a, $01
    ld [$cc4b], a
    ld a, [$d527]
    and a
    jr z, jr_000_0316

Jump_000_030f:
    ld [$d528], a
    xor a
    ld [$d527], a

jr_000_0316:
    jp Jump_000_0242


Jump_000_0319:
    ldh a, [$b4]
    bit 7, a
    jr z, jr_000_0328

    ld a, $01
    ld [$c103], a
    ld a, $04
    jr jr_000_034d

jr_000_0328:
    bit 6, a
    jr z, jr_000_0335

    ld a, $ff
    ld [$c103], a
    ld a, $08
    jr jr_000_034d

jr_000_0335:
    bit 5, a
    jr z, jr_000_0342

    ld a, $ff
    ld [$c105], a
    ld a, $02

Call_000_0340:
    jr jr_000_034d

jr_000_0342:
    bit 4, a
    jr z, jr_000_02f8

    ld a, $01
    ld [$c105], a
    ld a, $01

jr_000_034d:
    ld [$d529], a
    ld a, [$d72f]
    bit 7, a
    jr nz, jr_000_0384

    ld a, [$cc4b]
    and a
    jr z, jr_000_0384

    ld a, [$d529]
    ld b, a
    ld a, [$d528]
    cp b
    jr z, jr_000_0384

    ld a, $08
    ld [$d434], a
    ld hl, $cd60
    set 2, [hl]
    xor a
    ld [$cc4b], a
    ld a, [$d529]
    ld [$d527], a
    call Call_000_0480
    jp c, Jump_000_0416

Jump_000_0381:
    jp Jump_000_0242


jr_000_0384:
    ld a, [$d529]
    ld [$d527], a
    call Call_000_231c
    ld a, [$d6ff]
    cp $02
    jr z, jr_000_03ae

    call Call_000_0a1c
    jr nc, jr_000_03b4

    push hl
    ld hl, $d735
    bit 2, [hl]
    pop hl
    jp z, Jump_000_0242

    push hl
    call Call_000_071a
    pop hl
    jp c, Jump_000_051a

    jp Jump_000_0242


jr_000_03ae:
    call Call_000_0cca

Call_000_03b1:
Jump_000_03b1:
    jp c, Jump_000_0242

jr_000_03b4:
    ld a, $08
    ld [$cfc4], a
    ld hl, $4c08
    ld b, $3f
    call Call_000_3e84
    jr jr_000_03c9

Jump_000_03c3:
    call Call_000_0ff0
    call Call_000_231c

jr_000_03c9:
    ld hl, $cd60
    res 2, [hl]
    xor a
    ld [$d434], a
    call Call_000_049d
    call Call_000_0b7f
    ld a, [$cfc4]
    and a
    jp nz, Jump_000_05db

    call Call_000_0457
    ld a, [$d78f]
    bit 7, a
    jr z, jr_000_03f8

    ld b, $07
    ld hl, $6330
    call Call_000_3e84
    ld a, [$da45]
    and a
    jp nz, Jump_000_054a

Jump_000_03f8:
jr_000_03f8:
    ld a, [$d056]
    and a

Jump_000_03fc:
    jp nz, Jump_000_04bd

Call_000_03ff:
    ld a, $13

Jump_000_0401:
    call Call_000_3eb4

Jump_000_0404:
    ld a, [$d12c]

Jump_000_0407:
    and a
    jp nz, Jump_000_0762

Jump_000_040b:
    call Call_000_0480
    ld hl, $d735
    res 2, [hl]
    jp nc, Jump_000_04bd

Jump_000_0416:
    ld hl, $d72c
    res 6, [hl]
    ld hl, $d732
    res 3, [hl]
    ld hl, $d125

Call_000_0423:
    set 5, [hl]
    set 6, [hl]
    xor a
    ldh [$b4], a
    ld a, [$d35d]
    cp $a6
    jr nz, jr_000_0436

    ld hl, $d79a
    set 7, [hl]

jr_000_0436:
    ld hl, $d72d
    set 5, [hl]
    ld a, [$d35d]
    cp $28
    jp z, Jump_000_044f

    ld hl, $4ae8
    ld b, $0f
    call Call_000_3e84
    ld a, d
    and a
    jr z, jr_000_0475

Jump_000_044f:
    ld c, $0a
    call Call_000_372f

Call_000_0454:
    jp Jump_000_01d7


Call_000_0457:
    ld a, [$d72f]

Jump_000_045a:
    bit 7, a
    jr nz, jr_000_0474

    ld hl, $d13a
    dec [hl]
    ld a, [$d72b]
    bit 0, a
    jr z, jr_000_0474

    ld hl, $d13b
    dec [hl]
    jr nz, jr_000_0474

    ld hl, $d72b
    res 0, [hl]

jr_000_0474:
    ret


jr_000_0475:
    ld a, $ff
    ld [$d056], a
    call Call_000_0d2c
    jp Jump_000_0762


Call_000_0480:
    ld a, [$d72c]

Jump_000_0483:
    bit 4, a
    jr nz, jr_000_049b

    call Call_000_309d
    jr nz, jr_000_049b

    ld a, [$d72d]
    bit 4, a
    jr nz, jr_000_049b

    ld b, $3d
    ld hl, $5ff2
    jp Jump_000_3e84


jr_000_049b:
    and a
    ret


Call_000_049d:
    ld a, [$d6ff]
    dec a
    ret nz

    ld a, [$d735]
    bit 6, a
    ret nz

    ld a, [$cc57]
    and a

Call_000_04ac:
    ret nz

Jump_000_04ad:
    ld a, [$d35d]
    cp $1c
    jr nz, jr_000_04b9

    ldh a, [$b4]
    and $70
    ret nz

jr_000_04b9:
    call Call_000_0b7f
    ret


Jump_000_04bd:
    ld a, [$d3ad]
    and a
    jp z, Jump_000_05db

    ld b, $00

Call_000_04c6:
    ld a, [$d3ad]
    ld c, a
    ld a, [$d360]
    ld d, a
    ld a, [$d361]
    ld e, a
    ld hl, $d3ae

Call_000_04d5:
Jump_000_04d5:
    ld a, [hl+]
    cp d
    jr nz, jr_000_050f

    ld a, [hl+]
    cp e
    jr nz, jr_000_0510

    push hl
    push bc
    ld hl, $d735
    set 2, [hl]
    ld b, $03
    ld hl, $41e6
    call Call_000_3e84
    pop bc

Jump_000_04ed:
    pop hl
    jr c, jr_000_0543

    push hl
    push bc
    call Call_000_071a
    pop bc
    pop hl
    jr nc, jr_000_0510

    ld a, [$d732]

Call_000_04fc:
Jump_000_04fc:
    bit 2, a

Jump_000_04fe:
    jr nz, jr_000_0543

Call_000_0500:
Jump_000_0500:
    push de
    push bc
    call Call_000_01b9

Jump_000_0505:
    pop bc

Jump_000_0506:
    pop de
    ldh a, [$b4]
    and $f0
    jr z, jr_000_0510

    jr jr_000_0543

jr_000_050f:
    inc hl

jr_000_0510:
    inc hl
    inc hl
    inc b

Jump_000_0513:
    dec c
    jp nz, Jump_000_04d5

    jp Jump_000_05db


Jump_000_051a:
    ld a, [$d3ad]
    ld c, a
    ld hl, $d3ae

jr_000_0521:
    ld a, [hl+]
    ld b, a
    ld a, [$d360]
    cp b
    jr nz, jr_000_053a

    ld a, [hl+]
    ld b, a
    ld a, [$d361]
    cp b
    jr nz, jr_000_053b

    ld a, [hl+]
    ld [$d42e], a
    ld a, [hl]
    ldh [$8b], a
    jr jr_000_054a

jr_000_053a:
    inc hl

jr_000_053b:
    inc hl
    inc hl
    dec c
    jr nz, jr_000_0521

Jump_000_0540:
    jp Jump_000_0242


Jump_000_0543:
jr_000_0543:
    ld a, [hl+]
    ld [$d42e], a

Call_000_0547:
    ld a, [hl+]
    ldh [$8b], a

Jump_000_054a:
jr_000_054a:
    ld a, [$d3ad]
    sub c
    ld [$d73a], a
    ld a, [$d35d]
    ld [$d73b], a
    call Call_000_0712
    jr nz, jr_000_0586

Jump_000_055c:
    ld a, [$d35d]
    ld [$d364], a
    ld a, [$d368]
    ld [$d365], a
    ldh a, [$8b]
    ld [$d35d], a

Jump_000_056d:
    cp $52
    jr nz, jr_000_0579

    ld a, $06
    ld [$d35c], a
    call Call_000_1eb6

jr_000_0579:
    ld hl, $45fa
    ld b, $3f
    call Call_000_3e84

Jump_000_0581:
    call Call_000_06ef
    jr jr_000_05d0

jr_000_0586:
    ldh a, [$8b]
    cp $ff
    jr z, jr_000_05bb

    ld [$d35d], a
    ld b, $1c
    ld hl, $47e7
    call Call_000_3e84
    ld a, [$cd5b]
    dec a
    jr nz, jr_000_05a7

    call Call_000_07bc
    ld hl, $d731
    set 3, [hl]
    jr jr_000_05aa

jr_000_05a7:
    call Call_000_06ef

jr_000_05aa:
    ld hl, $d735
    res 0, [hl]
    res 1, [hl]
    ld hl, $465b
    ld b, $3f
    call Call_000_3e84
    jr jr_000_05d0

jr_000_05bb:
    ld hl, $469a
    ld b, $3f

Jump_000_05c0:
    call Call_000_3e84
    ld a, [$d364]
    ld [$d35d], a
    call Call_000_06ef
    xor a
    ld [$d35c], a

jr_000_05d0:
    ld hl, $d735
    set 0, [hl]
    call Call_000_0fc3
    jp Jump_000_01d7


Jump_000_05db:
    ld a, [$d361]
    cp $ff

Jump_000_05e0:
    jr nz, jr_000_061f

    ld a, [$d386]
    ld [$d35d], a
    ld a, [$d38e]
    ld [$d361], a
    ld a, [$d360]
    ld c, a
    ld a, [$d38d]
    add c
    ld c, a
    ld [$d360], a
    ld a, [$d38f]
    ld l, a
    ld a, [$d390]

Call_000_0601:
    ld h, a

Call_000_0602:
Jump_000_0602:
    srl c

Jump_000_0604:
    jr z, jr_000_0614

Jump_000_0606:
jr_000_0606:
    ld a, [$d38c]
    add $06
    ld e, a
    ld d, $00
    ld b, $00
    add hl, de
    dec c
    jr nz, jr_000_0606

jr_000_0614:
    ld a, l
    ld [$d35e], a
    ld a, h
    ld [$d35f], a
    jp Jump_000_06ce


jr_000_061f:
    ld b, a

Jump_000_0620:
    ld a, [$d524]

Jump_000_0623:
    cp b
    jr nz, jr_000_0663

    ld a, [$d391]
    ld [$d35d], a
    ld a, [$d399]
    ld [$d361], a

Call_000_0632:
    ld a, [$d360]
    ld c, a
    ld a, [$d398]
    add c
    ld c, a
    ld [$d360], a
    ld a, [$d39a]
    ld l, a
    ld a, [$d39b]
    ld h, a
    srl c
    jr z, jr_000_0658

jr_000_064a:
    ld a, [$d397]
    add $06
    ld e, a
    ld d, $00

Jump_000_0652:
    ld b, $00
    add hl, de
    dec c
    jr nz, jr_000_064a

jr_000_0658:
    ld a, l
    ld [$d35e], a
    ld a, h
    ld [$d35f], a

Call_000_0660:
    jp Jump_000_06ce


Call_000_0663:
jr_000_0663:
    ld a, [$d360]
    cp $ff
    jr nz, jr_000_069a

    ld a, [$d370]
    ld [$d35d], a

Call_000_0670:
    ld a, [$d377]
    ld [$d360], a
    ld a, [$d361]
    ld c, a
    ld a, [$d378]
    add c
    ld c, a
    ld [$d361], a
    ld a, [$d379]

Jump_000_0685:
    ld l, a
    ld a, [$d37a]
    ld h, a
    ld b, $00
    srl c
    add hl, bc
    ld a, l
    ld [$d35e], a
    ld a, h
    ld [$d35f], a
    jp Jump_000_06ce


jr_000_069a:
    ld b, a
    ld a, [$d523]
    cp b
    jr nz, jr_000_06ec

Call_000_06a1:
    ld a, [$d37b]
    ld [$d35d], a
    ld a, [$d382]
    ld [$d360], a
    ld a, [$d361]
    ld c, a

Call_000_06b1:
    ld a, [$d383]
    add c
    ld c, a
    ld [$d361], a
    ld a, [$d384]
    ld l, a
    ld a, [$d385]

Jump_000_06c0:
    ld h, a

Call_000_06c1:
    ld b, $00
    srl c
    add hl, bc
    ld a, l
    ld [$d35e], a
    ld a, h
    ld [$d35f], a

Jump_000_06ce:
    ld hl, $d42f
    set 4, [hl]
    ld a, $02
    ld [$d430], a
    call Call_000_0dab
    call Call_000_2176
    ld b, $09

Jump_000_06e0:
    call Call_000_3e05
    call Call_000_3dba
    call Call_000_083c
    jp Jump_000_0245


jr_000_06ec:
    jp Jump_000_0242


Call_000_06ef:
    ld a, [$d366]
    cp $16
    jr z, jr_000_0705

    cp $0f
    jr z, jr_000_0705

    ld a, [$c448]
    cp $0b
    jr nz, jr_000_0705

Call_000_0701:
Jump_000_0701:
    ld a, $ad

Call_000_0703:
    jr jr_000_0707

Jump_000_0705:
jr_000_0705:
    ld a, $b5

Call_000_0707:
jr_000_0707:
    call Call_000_2238

Jump_000_070a:
    ld a, [$d35c]
    and a
    ret nz

    jp Jump_000_1eb6


Call_000_0712:
Jump_000_0712:
    ld a, [$d366]
    and a
    ret z

    cp $17
    ret


Call_000_071a:
    ld a, [$d35d]
    cp $61

Call_000_071f:
    jr z, jr_000_0743

Jump_000_0721:
    cp $c7
    jr z, jr_000_0748

    cp $c8
    jr z, jr_000_0748

    cp $ca
    jr z, jr_000_0748

    cp $52
    jr z, jr_000_0748

    ld a, [$d366]
    and a
    jr z, jr_000_0748

    cp $0d
    jr z, jr_000_0748

    cp $0e
    jr z, jr_000_0748

    cp $17
    jr z, jr_000_0748

Call_000_0743:
jr_000_0743:
    ld hl, $4148

Jump_000_0746:
    jr jr_000_074b

jr_000_0748:
    ld hl, $4197

jr_000_074b:
    ld b, $03
    jp Jump_000_3e84


Call_000_0750:
    ld b, $03
    ld hl, $40a6
    call Call_000_3e84
    ld a, [$d35c]
    and a
    jp z, Jump_000_1ebd

    jp Jump_000_1e6f


Jump_000_0762:
    call Call_000_1eb6
    ld a, $08

Call_000_0767:
    call Call_000_0785
    ld hl, $d72d
    res 5, [hl]

Jump_000_076f:
    ld a, $01

Call_000_0771:
    call Call_000_3e7e
    ld hl, $4274
    ld b, $3c
    call Call_000_3e84
    call $6042
    call Call_000_2176

Jump_000_0782:
    jp $5ce4


Call_000_0785:
    ld [$cfc6], a
    call Call_000_2233

jr_000_078b:
    ld a, [$cfc6]
    and a
    jr nz, jr_000_078b

    jp Jump_000_1dd0


Jump_000_0794:
    call Call_000_231c
    call Call_000_3ddb
    xor a
    ld [$cf0b], a
    ld [$d056], a

Call_000_07a1:
    ld [$d35c], a
    ld hl, $d731
    set 2, [hl]
    res 5, [hl]
    call Call_000_07bc
    call Call_000_07c4
    ld a, $01
    call Call_000_3e7e
    call $6042
    jp $5ce4


Call_000_07bc:
    ld b, $1c
    ld hl, $4615

Call_000_07c1:
    jp Jump_000_3e84


Call_000_07c4:
    ld a, [$d6ff]

Call_000_07c7:
    and a
    ret z

    xor a
    ld [$d6ff], a
    ld hl, $d731
    bit 4, [hl]
    ret z

    call Call_000_216b
    ret


Call_000_07d7:
Jump_000_07d7:
    ld a, [$d6ff]
    dec a
    jr z, jr_000_07e4

    ldh a, [$d7]
    and a
    jr nz, jr_000_07f3

    jr jr_000_07e9

jr_000_07e4:
    call Call_000_0805
    jr c, jr_000_07f3

jr_000_07e9:
    xor a
    ld [$d6ff], a
    ld [$d119], a

Jump_000_07f0:
    jp Jump_000_0d5e


jr_000_07f3:
    ld a, [$d6ff]
    and a
    jp z, Jump_000_0d5e

    dec a
    jp z, Jump_000_0d8a

    dec a
    jp z, Jump_000_0d69

    jp Jump_000_0d5e


Call_000_0805:
    ld a, [$d35d]
    cp $22
    jr z, jr_000_0820

Call_000_080c:
    cp $09
    jr z, jr_000_0820

    ld a, [$d366]
    ld b, a
    ld hl, $0822

jr_000_0817:
    ld a, [hl+]
    cp b
    jr z, jr_000_0820

    inc a
    jr nz, jr_000_0817

    and a
    ret


jr_000_0820:
    scf
    ret


    nop
    inc bc
    dec bc
    ld c, $11
    rst $38

Call_000_0828:
    ld a, [$d52d]
    ld l, a
    ld a, [$d52e]
    ld h, a
    ld de, $9000
    ld bc, $0600
    ld a, [$d52a]
    jp Jump_000_009d


Call_000_083c:
    ld hl, $c6e8
    ld bc, $0514
    ld a, [$d3ac]
    call Call_000_166e
    ld hl, $c6e8
    ld a, [$d368]
    ldh [$8c], a
    add $06
    ldh [$8b], a
    ld b, $00
    ld c, a
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $03
    add hl, bc
    ld a, [$d369]
    ld e, a
    ld a, [$d36a]

Call_000_0864:
    ld d, a
    ld a, [$d367]
    ld b, a

jr_000_0869:
    push hl
    ldh a, [$8c]
    ld c, a

jr_000_086d:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_086d

    pop hl
    ldh a, [$8b]
    add l

Jump_000_0877:
    ld l, a
    jr nc, jr_000_087b

    inc h

jr_000_087b:
    dec b
    jr nz, jr_000_0869

    ld a, [$d370]
    cp $ff
    jr z, jr_000_08a5

    call Call_000_0f8b
    ld a, [$d371]
    ld l, a

Call_000_088c:
    ld a, [$d372]
    ld h, a
    ld a, [$d373]
    ld e, a
    ld a, [$d374]
    ld d, a

Call_000_0898:
    ld a, [$d375]
    ldh [$8b], a

Jump_000_089d:
    ld a, [$d376]
    ldh [$8c], a
    call Call_000_0919

jr_000_08a5:
    ld a, [$d37b]
    cp $ff
    jr z, jr_000_08cc

    call Call_000_0f8b
    ld a, [$d37c]
    ld l, a
    ld a, [$d37d]

Call_000_08b6:
    ld h, a
    ld a, [$d37e]
    ld e, a
    ld a, [$d37f]
    ld d, a
    ld a, [$d380]
    ldh [$8b], a
    ld a, [$d381]
    ldh [$8c], a
    call Call_000_0919

jr_000_08cc:
    ld a, [$d386]
    cp $ff
    jr z, jr_000_08f2

    call Call_000_0f8b
    ld a, [$d387]
    ld l, a
    ld a, [$d388]
    ld h, a
    ld a, [$d389]
    ld e, a
    ld a, [$d38a]
    ld d, a
    ld a, [$d38b]
    ld b, a
    ld a, [$d38c]
    ldh [$8b], a
    call Call_000_093d

jr_000_08f2:
    ld a, [$d391]
    cp $ff
    jr z, jr_000_0918

    call Call_000_0f8b
    ld a, [$d392]
    ld l, a
    ld a, [$d393]
    ld h, a
    ld a, [$d394]
    ld e, a
    ld a, [$d395]
    ld d, a
    ld a, [$d396]

Call_000_090f:
    ld b, a
    ld a, [$d397]

Jump_000_0913:
    ldh [$8b], a
    call Call_000_093d

jr_000_0918:
    ret


Call_000_0919:
Jump_000_0919:
    ld c, $03

jr_000_091b:
    push de
    push hl
    ldh a, [$8b]
    ld b, a

jr_000_0920:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0920

    pop hl
    pop de
    ldh a, [$8c]
    add l
    ld l, a
    jr nc, jr_000_092f

    inc h

jr_000_092f:
    ld a, [$d368]
    add $06
    add e
    ld e, a
    jr nc, jr_000_0939

    inc d

jr_000_0939:
    dec c
    jr nz, jr_000_091b

    ret


Call_000_093d:
jr_000_093d:
    push hl
    push de
    ld c, $03

jr_000_0941:
    ld a, [hl+]

Jump_000_0942:
    ld [de], a
    inc de

Call_000_0944:
    dec c
    jr nz, jr_000_0941

    pop de
    pop hl
    ldh a, [$8b]
    add l
    ld l, a
    jr nc, jr_000_0950

    inc h

jr_000_0950:
    ld a, [$d368]
    add $06
    add e
    ld e, a
    jr nc, jr_000_095a

    inc d

jr_000_095a:
    dec b
    jr nz, jr_000_093d

    ret


Call_000_095e:
    xor a
    ldh [$8c], a
    ld a, [$d4af]
    and a
    jr z, jr_000_0970

    ld a, $35
    call Call_000_3eb4
    call Call_000_09f2
    ret c

jr_000_0970:
    ld a, $35
    call Call_000_3eb4
    ld hl, $d531

Jump_000_0978:
    ld b, $03
    ld d, $20

jr_000_097c:
    ld a, [hl+]
    cp c
    jr z, jr_000_0985

    dec b
    jr nz, jr_000_097c

Call_000_0983:
    ld d, $10

Call_000_0985:
jr_000_0985:
    ld bc, $3c40
    ld a, [$c109]
    cp $04
    jr nz, jr_000_0996

    ld a, b
    sub d
    ld b, a
    ld a, $08
    jr jr_000_09b1

jr_000_0996:
    cp $00
    jr nz, jr_000_09a1

    ld a, b
    add d
    ld b, a
    ld a, $04

Jump_000_099f:
    jr jr_000_09b1

jr_000_09a1:
    cp $0c
    jr nz, jr_000_09ac

    ld a, c
    add d
    ld c, a
    ld a, $01
    jr jr_000_09b1

jr_000_09ac:
    ld a, c
    sub d
    ld c, a
    ld a, $02

jr_000_09b1:
    ld [$d529], a
    ld hl, $c110
    ld e, $01

Call_000_09b9:
    ld d, $0f

jr_000_09bb:
    push hl
    ld a, [hl+]
    and a
    jr z, jr_000_09cf

    inc l
    ld a, [hl+]
    inc a
    jr z, jr_000_09cf

    inc l
    ld a, [hl+]
    cp b
    jr nz, jr_000_09cf

    inc l
    ld a, [hl]
    cp c
    jr z, jr_000_09da

jr_000_09cf:
    pop hl
    ld a, l
    add $10
    ld l, a
    inc e
    dec d
    jr nz, jr_000_09bb

    xor a
    ret


jr_000_09da:
    pop hl
    ld a, l
    and $f0
    inc a
    ld l, a
    set 7, [hl]
    ld a, e
    ldh [$8c], a
    ldh a, [$8c]
    cp $0f
    jr nz, jr_000_09f0

    ld a, $ff
    ld [$d435], a

Jump_000_09f0:
jr_000_09f0:
    scf
    ret


Call_000_09f2:
    ld hl, $d4b0
    ld a, [$d4af]
    ld b, a
    ld c, $00

jr_000_09fb:
    inc c
    ld a, [hl+]

Call_000_09fd:
    cp d
    jr z, jr_000_0a03

    inc hl
    jr jr_000_0a17

jr_000_0a03:
    ld a, [hl+]
    cp e
    jr nz, jr_000_0a17

    push hl
    push bc

Jump_000_0a09:
    ld hl, $d4d0
    ld b, $00
    dec c
    add hl, bc
    ld a, [hl]
    ldh [$8c], a
    pop bc
    pop hl
    scf
    ret


jr_000_0a17:
    dec b
    jr nz, jr_000_09fb

    xor a
    ret


Call_000_0a1c:
    ld a, [$d735]
    bit 6, a
    jr nz, jr_000_0a77

    ld a, [$cd38]

Jump_000_0a26:
    and a
    jr nz, jr_000_0a77

    ld a, [$d529]
    ld d, a
    ld a, [$c10c]
    and d
    nop
    jr nz, jr_000_0a69

    xor a
    ldh [$8c], a
    call Call_000_0983
    jr nc, jr_000_0a5c

Jump_000_0a3c:
    res 7, [hl]

Call_000_0a3e:
Jump_000_0a3e:
    ldh a, [$8c]
    and a
    jr z, jr_000_0a5c

    cp $0f
    jr nz, jr_000_0a69

    call Call_000_154a
    jr nz, jr_000_0a69

    ldh a, [$b4]
    and $02
    jr nz, jr_000_0a5c

    ld hl, $d434
    ld a, [hl]
    and a

Jump_000_0a57:
    jr z, jr_000_0a5c

    dec [hl]
    jr nz, jr_000_0a69

jr_000_0a5c:
    ld hl, $0ada
    call Call_000_0a86

Call_000_0a62:
    jr c, jr_000_0a69

Jump_000_0a64:
    call Call_000_0a79

Call_000_0a67:
    jr nc, jr_000_0a77

jr_000_0a69:
    ld a, [$c02a]

Jump_000_0a6c:
    cp $b4
    jr z, jr_000_0a75

    ld a, $b4
    call Call_000_2238

jr_000_0a75:
    scf
    ret


jr_000_0a77:
    and a
    ret


Call_000_0a79:
    ld a, $35
    call Call_000_3eb4
    ld a, [$cfc5]
    ld c, a
    call Call_000_15c3
    ret


Call_000_0a86:
    push hl
    ld a, $35
    call Call_000_3eb4
    push de
    push bc
    ld b, $06
    ld hl, $67f4
    call Call_000_3e84
    pop bc
    pop de
    pop hl
    and a
    ld a, [$d735]
    bit 6, a
    ret nz

Call_000_0aa0:
    ld a, [$c45c]
    ld [$cf0e], a

Call_000_0aa6:
    ld a, [$cfc5]
    ld c, a

jr_000_0aaa:
    ld a, [$d366]
    ld b, a
    ld a, [hl+]
    cp $ff
    jr z, jr_000_0ad8

    cp b
    jr z, jr_000_0aba

    inc hl

jr_000_0ab7:
    inc hl
    jr jr_000_0aaa

jr_000_0aba:
    ld a, [$cf0e]
    ld b, a

Jump_000_0abe:
    ld a, [hl]
    cp b
    jr z, jr_000_0ac9

Call_000_0ac2:
    inc hl
    ld a, [hl]
    cp b
    jr z, jr_000_0ad0

    jr jr_000_0ab7

jr_000_0ac9:
    inc hl
    ld a, [hl]
    cp c
    jr z, jr_000_0ad6

    jr jr_000_0aaa

jr_000_0ad0:
    dec hl
    ld a, [hl+]
    cp c
    inc hl
    jr nz, jr_000_0aaa

jr_000_0ad6:
    scf
    ret


jr_000_0ad8:
    and a
    ret


    ld de, $0520
    ld de, $0541
    inc bc
    jr nc, @+$30

Call_000_0ae3:
    ld de, $052a
    ld de, $2105
    inc bc
    ld d, d
    ld l, $03
    ld d, l
    ld l, $03
    ld d, [hl]
    ld l, $03
    jr nz, jr_000_0b23

    inc bc
    ld e, [hl]
    ld l, $03
    ld e, a
    ld l, $ff

Call_000_0afc:
    inc bc
    inc d

Jump_000_0afe:
    ld l, $03

Jump_000_0b00:
    ld c, b

Jump_000_0b01:
    ld l, $11
    inc d
    dec b
    rst $38

Call_000_0b06:
    ldh a, [$b8]
    push af
    ld a, [$d52a]
    call Call_000_3e7e
    ld a, [$d35e]
    ld e, a
    ld a, [$d35f]
    ld d, a
    ld hl, $c508
    ld b, $05

jr_000_0b1c:
    push hl
    push de
    ld c, $06

jr_000_0b20:
    push bc
    push de
    push hl

jr_000_0b23:
    ld a, [de]
    ld c, a
    call Call_000_0c21
    pop hl
    pop de
    pop bc
    inc hl
    inc hl
    inc hl
    inc hl
    inc de
    dec c
    jr nz, jr_000_0b20

    pop de
    ld a, [$d368]
    add $06
    add e
    ld e, a
    jr nc, jr_000_0b3e

    inc d

jr_000_0b3e:
    pop hl
    ld a, $60
    add l
    ld l, a
    jr nc, jr_000_0b46

    inc h

jr_000_0b46:
    dec b
    jr nz, jr_000_0b1c

    ld hl, $c508
    ld bc, $0000
    ld a, [$d362]
    and a

Jump_000_0b53:
    jr z, jr_000_0b59

    ld bc, $0030
    add hl, bc

jr_000_0b59:
    ld a, [$d363]
    and a
    jr z, jr_000_0b63

    ld bc, $0002
    add hl, bc

jr_000_0b63:
    ld de, $c3a0
    ld b, $12

jr_000_0b68:
    ld c, $14

jr_000_0b6a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0b6a

    ld a, $04
    add l
    ld l, a
    jr nc, jr_000_0b77

    inc h

jr_000_0b77:
    dec b
    jr nz, jr_000_0b68

    pop af
    call Call_000_3e7e
    ret


Call_000_0b7f:
    ld a, [$cfca]
    push af
    ld a, $ff
    ld [$cfca], a
    ld hl, $410c
    ld b, $3c
    call Call_000_3e84
    pop af
    ld [$cfca], a
    ret


Call_000_0b95:
    ld hl, $c3a0
    call Call_000_0baa
    ld a, [$d525]
    ldh [$d1], a
    ld a, [$d526]
    ldh [$d2], a
    ld a, $02
    ldh [$d0], a
    ret


Call_000_0baa:
    ld de, $cbfc
    ld c, $28

jr_000_0baf:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0baf

    ret


Call_000_0bb6:
    ld hl, $c4e0
    call Call_000_0baa
    ld a, [$d525]
    ld l, a
    ld a, [$d526]
    ld h, a
    ld bc, $0200
    add hl, bc
    ld a, h
    and $03
    or $98
    ldh [$d2], a
    ld a, l
    ldh [$d1], a
    ld a, $02
    ldh [$d0], a
    ret


Call_000_0bd7:
    ld hl, $c3b2
    call Call_000_0bf6
    ld a, [$d525]
    ld c, a
    and $e0
    ld b, a
    ld a, c
    add $12
    and $1f

Jump_000_0be9:
    or b
    ldh [$d1], a
    ld a, [$d526]
    ldh [$d2], a
    ld a, $01
    ldh [$d0], a
    ret


Call_000_0bf6:
    ld de, $cbfc
    ld c, $12

jr_000_0bfb:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a

Call_000_0c00:
    inc de
    ld a, $13

Jump_000_0c03:
    add l
    ld l, a
    jr nc, jr_000_0c08

    inc h

jr_000_0c08:
    dec c
    jr nz, jr_000_0bfb

    ret


Call_000_0c0c:
    ld hl, $c3a0

Jump_000_0c0f:
    call Call_000_0bf6
    ld a, [$d525]
    ldh [$d1], a
    ld a, [$d526]
    ldh [$d2], a
    ld a, $01
    ldh [$d0], a
    ret


Call_000_0c21:
    push hl
    ld a, [$d52b]
    ld l, a
    ld a, [$d52c]
    ld h, a
    ld a, c
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld c, $04

jr_000_0c3b:
    push bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de

Call_000_0c48:
    ld bc, $0015
    add hl, bc
    pop bc
    dec c
    jr nz, jr_000_0c3b

    ret


Call_000_0c51:
    xor a
    ld [$c103], a
    ld [$c105], a
    call Call_000_0d2c
    call Call_000_01b9
    call Call_000_0c65
    call Call_000_0c7b
    ret


Call_000_0c65:
    ld a, [$d732]
    bit 3, a
    ret nz

    ld a, [$d35d]
    cp $1c
    ret nz

    ldh a, [$b4]
    and $f3

Call_000_0c75:
    ret nz

    ld a, $80
    ldh [$b4], a
    ret


Call_000_0c7b:
    ld a, [$d72f]
    bit 7, a
    ret z

    ldh a, [$b4]
    ld b, a
    ld a, [$cd3b]
    and b
    ret nz

    call Call_000_0cb3
    jr nc, jr_000_0c97

Jump_000_0c8e:
    ldh [$b4], a
    and a
    ret nz

    ldh [$b3], a
    ldh [$b2], a
    ret


jr_000_0c97:
    xor a

Call_000_0c98:
    ld [$cd3a], a
    ld [$cd38], a

Jump_000_0c9e:
    ld [$ccd3], a
    ld [$cd6b], a
    ldh [$b4], a
    ld hl, $d735
    ld a, [hl]
    and $f8
    ld [hl], a
    ld hl, $d72f
    res 7, [hl]
    ret


Call_000_0cb3:
    ld hl, $cd38
    dec [hl]
    ld a, [hl]
    cp $ff
    jr z, jr_000_0cc8

    push de
    ld e, a
    ld d, $00
    ld hl, $ccd3
    add hl, de
    ld a, [hl]
    pop de
    scf
    ret


jr_000_0cc8:
    and a
    ret


Call_000_0cca:
    ld a, [$d72f]
    bit 7, a
    jp nz, Jump_000_0d2a

    ld a, [$d529]
    ld d, a
    ld a, [$c10c]
    and d
    jr nz, jr_000_0cfc

    ld hl, $0afc
    call Call_000_0a86
    jr c, jr_000_0cfc

    ld a, $35
    call Call_000_3eb4
    ld hl, $6808
    ld b, $03
    call Call_000_3e84
    jr c, jr_000_0d2a

    ld a, [$cfc5]
    ld c, a
    call Call_000_15c3
    jr nc, jr_000_0d14

jr_000_0cfc:
    ld a, [$c02a]
    cp $b4

Jump_000_0d01:
    jr z, jr_000_0d08

    ld a, $b4
    call Call_000_2238

jr_000_0d08:
    scf
    jr jr_000_0d2b

    ld a, [$d366]
    cp $0e
    jr nz, jr_000_0d2a

    jr jr_000_0d14

jr_000_0d14:
    ld a, $03
    ld [$d430], a
    ld hl, $d42f
    set 5, [hl]
    xor a
    ld [$d6ff], a
    call Call_000_07d7
    call Call_000_216b
    jr jr_000_0d2a

Jump_000_0d2a:
jr_000_0d2a:
    and a

jr_000_0d2b:
    ret


Call_000_0d2c:
    push hl
    push de
    push bc
    ld b, $03
    ld hl, $70a1
    call Call_000_3e84
    ld a, [$cd60]
    bit 1, a
    jr z, jr_000_0d46

    ld b, $03
    ld hl, $7131
    call Call_000_3e84

jr_000_0d46:
    pop bc
    pop de
    pop hl
    call Call_000_30ae
    ld a, [$d35d]
    call Call_000_0f8b
    ld hl, $d36d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0d5d
    push de
    jp hl


    ret


Jump_000_0d5e:
    xor a
    ld [$d472], a
    ld b, $05
    ld de, $4571

Call_000_0d67:
    jr jr_000_0d8f

Jump_000_0d69:
    ld a, [$d472]
    and a
    jr z, jr_000_0d75

    dec a
    jr z, jr_000_0d83

    dec a
    jr z, jr_000_0d7c

jr_000_0d75:
    ld a, [$d471]
    bit 6, a
    jr z, jr_000_0d83

jr_000_0d7c:
    ld b, $3f
    ld de, $6def
    jr jr_000_0d8f

jr_000_0d83:
    ld b, $05
    ld de, $7ab1
    jr jr_000_0d8f

Jump_000_0d8a:
    ld b, $05
    ld de, $43f1

jr_000_0d8f:
    ld hl, $8000
    push de
    push hl
    push bc

Jump_000_0d95:
    ld c, $0c
    call Call_000_15fe
    pop bc
    pop hl
    pop de
    ld a, $c0
    add e
    ld e, a
    jr nc, jr_000_0da4

    inc d

jr_000_0da4:
    set 3, h
    ld c, $0c
    jp Jump_000_15fe


Call_000_0dab:
    ld b, $03
    ld hl, $6f93
    call Call_000_3e84
    jr jr_000_0dbd

    ld b, $3c
    ld hl, $4a55
    call Call_000_3e84

jr_000_0dbd:
    ld a, [$d366]
    ld [$d118], a
    ld a, [$d35d]
    call Call_000_0f8b
    ld a, [$d366]
    ld b, a
    res 7, a
    ld [$d366], a
    ldh [$8b], a
    bit 7, b
    ret nz

Jump_000_0dd7:
    call Call_000_0fa7
    ld de, $d366
    ld c, $0a

jr_000_0ddf:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0ddf

    ld a, $ff
    ld [$d370], a
    ld [$d37b], a
    ld [$d386], a
    ld [$d391], a
    ld a, [$d36f]
    ld b, a
    bit 3, b
    jr z, jr_000_0e01

Jump_000_0dfb:
    ld de, $d370

Call_000_0dfe:
    call Call_000_0eaa

jr_000_0e01:
    bit 2, b
    jr z, jr_000_0e0b

    ld de, $d37b
    call Call_000_0eaa

jr_000_0e0b:
    bit 1, b

Jump_000_0e0d:
    jr z, jr_000_0e15

    ld de, $d386
    call Call_000_0eaa

jr_000_0e15:
    bit 0, b
    jr z, jr_000_0e1f

    ld de, $d391
    call Call_000_0eaa

jr_000_0e1f:
    ld a, [hl+]
    ld [$d3a8], a
    ld a, [hl+]
    ld [$d3a9], a
    push hl
    ld a, [$d3a8]
    ld l, a
    ld a, [$d3a9]
    ld h, a
    ld de, $d3ac
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld [$d3ad], a
    and a

Jump_000_0e3a:
    jr z, jr_000_0e4b

    ld c, a
    ld de, $d3ae

jr_000_0e40:
    ld b, $04

jr_000_0e42:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0e42

    dec c
    jr nz, jr_000_0e40

jr_000_0e4b:
    ld a, [hl+]
    ld [$d4af], a

Call_000_0e4f:
Jump_000_0e4f:
    and a
    jr z, jr_000_0e55

    call Call_000_0eb3

jr_000_0e55:
    ld a, [$d72d]
    bit 5, a
    jr nz, jr_000_0e5f

    call Call_000_1006

jr_000_0e5f:
    ld a, $19
    call Call_000_3eb4
    ld a, [$d72d]
    bit 5, a
    jr nz, jr_000_0e73

    ld hl, $44fa
    ld b, $3f
    call Call_000_3e84

jr_000_0e73:
    ld hl, $4b62
    ld b, $03
    call Call_000_3e84
    pop hl
    ld a, [$d367]
    add a
    ld [$d523], a

Jump_000_0e83:
    ld a, [$d368]
    add a
    ld [$d524], a
    ld a, [$d35d]
    ld c, a
    ld b, $00
    ldh a, [$b8]
    push af
    ld a, $3f
    call Call_000_3e7e
    ld hl, $4000
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$d35a], a
    ld a, [hl]
    ld [$d35b], a
    pop af
    call Call_000_3e7e

Jump_000_0ea9:
    ret


Call_000_0eaa:
    ld c, $0b

jr_000_0eac:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0eac

    ret


Call_000_0eb3:
    ld de, $d4b0
    ld bc, $d4d0
    ld a, [$d4af]

jr_000_0ebc:
    push af
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    jr nz, jr_000_0ebc

    ret


Call_000_0ecb:
    ldh a, [$b8]
    push af
    call Call_000_0061
    call Call_000_0f56
    call Call_000_36a3
    call Call_000_0dab
    call Call_000_3dba
    call Call_000_0f0c
    call Call_000_0f70
    ld a, $01
    ld [$cfca], a
    call Call_000_007b
    ld b, $09
    call Call_000_3e05
    call Call_000_07d7
    ld a, [$d731]
    and $18

Jump_000_0ef8:
    jr nz, jr_000_0f07

    ld a, [$d732]
    bit 1, a
    jr nz, jr_000_0f07

    call Call_000_21e3

Jump_000_0f04:
    call Call_000_2176

jr_000_0f07:
    pop af
    call Call_000_3e7e
    ret


Call_000_0f0c:
Jump_000_0f0c:
    call Call_000_083c
    call Call_000_0828
    call Call_000_0b06
    ret


Call_000_0f16:
    ldh a, [$b8]
    push af
    call Call_000_0061
    call Call_000_0f56
    ld a, [$d35d]
    call Call_000_0f8b
    call Call_000_0f0c
    call Call_000_0f70
    ld de, $9c00
    call Call_000_0f73
    call Call_000_007b
    call Call_000_3e1e
    pop af
    call Call_000_3e7e
    jr jr_000_0f4d

Call_000_0f3d:
    ldh a, [$b8]
    push af
    ld a, [$d35d]
    call Call_000_0f8b
    call Call_000_083c
    pop af
    call Call_000_3e7e

jr_000_0f4d:
    ld hl, $42da
    ld b, $3c
    jp Jump_000_3e84


    ret


Call_000_0f56:
    ld a, $98
    ld [$d526], a
    xor a
    ld [$d525], a
    ldh [$af], a
    ldh [$ae], a
    ld [$cfc4], a
    ld [$d118], a
    ld [$d3a7], a
    ld [$d119], a
    ret


Call_000_0f70:
    ld de, $9800

Call_000_0f73:
    ld hl, $c3a0
    ld b, $12

jr_000_0f78:
    ld c, $14

jr_000_0f7a:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_000_0f7a

    ld a, $0c
    add e
    ld e, a

Call_000_0f84:
    jr nc, jr_000_0f87

    inc d

jr_000_0f87:
    dec b
    jr nz, jr_000_0f78

    ret


Call_000_0f8b:
    push hl
    push bc
    ld c, a
    ld b, $00
    ld a, $3f
    call Call_000_35d9
    ld hl, $43e4
    add hl, bc
    ld a, [hl]
    ldh [$e8], a
    call Call_000_35e8
    ldh a, [$e8]
    call Call_000_3e7e
    pop bc
    pop hl
    ret


Call_000_0fa7:
    ldh a, [$b8]
    push af
    ld a, $3f
    call Call_000_3e7e
    push de
    ld a, [$d35d]
    ld e, a
    ld d, $00
    ld hl, $41f2
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    pop af
    jp Jump_000_3e7e


Call_000_0fc3:
Jump_000_0fc3:
    ld a, $1e
    ld [$d139], a
    ld hl, $d72f
    ld a, [hl]
    or $26

Jump_000_0fce:
    ld [hl], a
    ret


Call_000_0fd0:
    ld hl, $d727
    res 0, [hl]

Call_000_0fd5:
    ret


Call_000_0fd6:
Jump_000_0fd6:
    ld b, $05
    ld hl, $07d7
    call Call_000_3e84
    jp Jump_000_216b


Call_000_0fe1:
    ld a, [$d735]
    bit 6, a
    ret z

Jump_000_0fe7:
    ld b, $1c
    ld hl, $48df
    call Call_000_3e84
    ret


Call_000_0ff0:
Jump_000_0ff0:
    ld a, [$d735]
    bit 7, a
    ret z

    ld b, $11

Jump_000_0ff8:
    ld hl, $5077
    jp Jump_000_3e84


Call_000_0ffe:
Jump_000_0ffe:
    ld hl, $4f0c

Call_000_1001:
    ld b, $3f

Call_000_1003:
    jp Jump_000_3e84


Call_000_1006:
    ld a, [hl+]
    ld [$d4e0], a

Call_000_100a:
    push hl
    push de
    push bc
    call Call_000_1050
    call Call_000_1060
    ld hl, $d4e3
    ld bc, $0020
    xor a
    call Call_000_166e
    pop bc
    pop de
    pop hl
    ld a, [$d4e0]
    and a
    ret z

    ld b, a
    ld c, $00

Call_000_1028:
    ld de, $c110

jr_000_102b:
    ld a, [hl+]
    ld [de], a
    inc d
    ld a, e
    add $04
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl+]
    ldh [$8e], a
    push bc
    call Call_000_106f
    pop bc
    dec d
    ld a, e
    add $0a
    ld e, a
    inc c
    inc c

Jump_000_104c:
    dec b
    jr nz, jr_000_102b

    ret


Call_000_1050:
    ld hl, $c110

Jump_000_1053:
    ld de, $c210
    xor a
    ld b, $e0

jr_000_1059:
    ld [hl+], a
    ld [de], a

Call_000_105b:
    inc e
    dec b
    jr nz, jr_000_1059

    ret


Call_000_1060:
    ld hl, $c112
    ld de, $0010
    ld c, $0e

jr_000_1068:
    ld [hl], $ff
    add hl, de

Call_000_106b:
    dec c
    jr nz, jr_000_1068

    ret


Call_000_106f:
    push hl
    ld b, $00
    ld hl, $d4e3
    add hl, bc
    ldh a, [$8d]
    ld [hl+], a
    ldh a, [$8e]
    ld [hl], a
    ldh a, [$8e]
    ldh [$8d], a

Call_000_1080:
    and $3f
    ld [hl], a

Call_000_1083:
    pop hl

Jump_000_1084:
    ldh a, [$8d]
    bit 6, a
    jr nz, jr_000_1098

    bit 7, a
    jr nz, jr_000_10ab

    push hl
    ld hl, $d503
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    pop hl

Call_000_1097:
    ret


jr_000_1098:
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl+]
    ldh [$8e], a
    push hl
    ld hl, $d503

Jump_000_10a2:
    add hl, bc
    ldh a, [$8d]
    ld [hl+], a

Call_000_10a6:
    ldh a, [$8e]
    ld [hl], a
    pop hl
    ret


jr_000_10ab:
    ld a, [hl+]
    ldh [$8d], a
    push hl
    ld hl, $d503
    add hl, bc

Call_000_10b3:
    ldh a, [$8d]
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ret


Call_000_10ba:
jr_000_10ba:
    call Call_000_1e64
    push bc
    call Call_000_381e
    pop bc

Call_000_10c2:
    ldh a, [$b4]
    cp $46
    jr z, jr_000_10d3

    ldh a, [$b5]
    and $09
    jr nz, jr_000_10d3

    dec c
    jr nz, jr_000_10ba

    and a
    ret


jr_000_10d3:
    scf
    ret


Call_000_10d5:
    ld b, a
    ldh a, [$b8]

Jump_000_10d8:
    push af
    ld a, [$cf12]
    ldh [$b8], a
    ld [$2000], a
    ld a, b
    add a
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld bc, $0004
    ld de, $d35e
    call Call_000_00b1
    pop af
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_10f8:
    push hl
    push de
    ld a, $71
    ld [hl+], a
    ld a, $62

Call_000_10ff:
Jump_000_10ff:
    ld [hl+], a

Call_000_1100:
    push hl
    ld a, $63

Jump_000_1103:
jr_000_1103:
    ld [hl+], a

Jump_000_1104:
    dec d
    jr nz, jr_000_1103

    ld a, [$cf93]

Call_000_110a:
    dec a
    ld a, $6d
    jr z, jr_000_1110

    dec a

jr_000_1110:
    ld [hl], a
    pop hl

Jump_000_1112:
    ld a, e
    and a
    jr nz, jr_000_111c

    ld a, c
    and a
    jr z, jr_000_112f

    ld e, $01

jr_000_111c:
    ld a, e
    sub $08
    jr c, jr_000_112b

    ld e, a
    ld a, $6b
    ld [hl+], a
    ld a, e
    and a
    jr z, jr_000_112f

    jr jr_000_111c

jr_000_112b:
    ld a, $63
    add e
    ld [hl], a

jr_000_112f:
    pop de
    pop hl
    ret


Call_000_1132:
    ld hl, $442b
    ld b, $01
    jp Jump_000_3e84


    ld hl, $d0db
    ld e, b
    ld d, $00

Call_000_1140:
    add hl, de
    ld a, c
    ld [hl], a
    ret


Call_000_1144:
Jump_000_1144:
    ld a, $01
    ld [$d0a9], a

Call_000_1149:
    push hl
    ld a, [$d11d]
    push af
    ld a, [$cf90]
    ld [$d11d], a
    ld a, $3a
    call Call_000_3eb4
    ld hl, $d11d
    ld a, [hl]
    pop bc
    ld [hl], b
    and a
    pop hl
    jr z, jr_000_1167

    cp $98
    jr c, jr_000_116d

jr_000_1167:
    ld a, $01
    ld [$cf90], a
    ret


jr_000_116d:
    push hl
    ld de, $9000
    call Call_000_143e
    pop hl
    ldh a, [$b8]
    push af
    ld a, $3d
    call Call_000_3e7e
    xor a
    ldh [$e1], a
    call $6203
    xor a

Call_000_1184:
    ld [$d0a9], a
    pop af
    jp Jump_000_3e7e


Call_000_118b:
Jump_000_118b:
    push bc
    ld b, a
    ld a, [$d082]
    push af
    xor a
    ld [$d082], a
    ld a, b
    call Call_000_11a5
    call Call_000_2238

Call_000_119c:
    call Call_000_373e
    pop af
    ld [$d082], a
    pop bc

Jump_000_11a4:
    ret


Call_000_11a5:
    dec a
    ld c, a
    ld b, $00
    ld hl, $5462
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, $0e
    call Call_000_35d9
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [$c0f1], a
    ld a, [hl]
    ld [$c0f2], a
    call Call_000_35e8
    ld a, b
    ld c, $14
    rlca
    add b
    add c

Call_000_11c7:
    ret


Call_000_11c8:
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    call Call_000_3dd8
    call Call_000_0082
    call Call_000_11ec
    call Call_000_12d1
    jp Jump_000_1226


Call_000_11dd:
    ldh a, [$d7]
    push af
    xor a
    ldh [$d7], a
    call Call_000_11ec
    call Call_000_12d6
    jp Jump_000_1226


Call_000_11ec:
    ld a, $01
    call Call_000_35d9
    call Call_000_36c3
    ld hl, $d72f
    set 6, [hl]
    xor a
    ld [$cc49], a
    ld [$cc37], a

Call_000_1200:
Jump_000_1200:
    ld hl, $cc24

Jump_000_1203:
    inc a

Jump_000_1204:
    ld [hl+], a

Jump_000_1205:
    xor a
    ld [hl+], a
    ld a, [$cc2b]

Call_000_120a:
Jump_000_120a:
    push af
    ld [hl+], a

Call_000_120c:
    inc hl

Jump_000_120d:
    ld a, [$d162]
    and a
    jr z, jr_000_1214

    dec a

jr_000_1214:
    ld [hl+], a
    ld a, [$d11e]
    and a
    ld a, $03
    jr z, jr_000_1222

    xor a
    ld [$d11e], a
    inc a

jr_000_1222:
    ld [hl+], a
    pop af
    ld [hl], a
    ret


Jump_000_1226:
    ld a, $01
    ld [$cc4a], a
    ld a, $40
    ld [$d09a], a
    call Call_000_3aaf
    push af
    bit 1, a
    ld a, $00
    ld [$d09a], a
    ld a, [$cc26]
    ld [$cc2b], a
    jr nz, jr_000_1258

Call_000_1243:
    ld a, [$cc26]
    ld [$cf91], a
    ld hl, $4e18
    ld b, $3f
    call Call_000_3e84
    jr nc, jr_000_1258

    call Call_000_154a

Call_000_1256:
    jr nz, jr_000_128f

jr_000_1258:
    pop af
    call Call_000_3bd9
    ld b, a
    ld hl, $d72f
    res 6, [hl]
    ld a, [$cc35]
    and a
    jp nz, Jump_000_12a2

    pop af
    ldh [$d7], a
    bit 1, b
    jr nz, jr_000_129d

    ld a, [$d162]
    and a
    jr z, jr_000_129d

    ld a, [$cc26]
    ld [$cf91], a
    ld hl, $d163
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$cf90], a
    ld [$cfd8], a
    call Call_000_35e8

Jump_000_128d:
    and a

Jump_000_128e:
    ret


jr_000_128f:
    pop af
    ld hl, $12cc
    call Call_000_3c36
    xor a
    ld [$cc35], a
    pop af
    ldh [$d7], a

jr_000_129d:
    call Call_000_35e8
    scf
    ret


Jump_000_12a2:
    bit 1, b
    jr z, jr_000_12bb

Call_000_12a6:
    ld b, $04
    ld hl, $5e98
    call Call_000_3e84
    xor a
    ld [$cc35], a
    ld [$d07c], a
    call Call_000_12d6
    jp Jump_000_1226


jr_000_12bb:
    ld a, [$cc26]

Call_000_12be:
    ld [$cf91], a
    ld b, $04
    ld hl, $61c5
    call Call_000_3e84
    jp Jump_000_1226


    rla
    dec de
    ld b, c
    jr z, jr_000_1321

Call_000_12d1:
    ld hl, $5875
    jr jr_000_12d9

Call_000_12d6:
    ld hl, $5886

Call_000_12d9:
jr_000_12d9:
    ld b, $04
    jp Jump_000_3e84


Call_000_12de:
    push de
    dec de
    dec de
    ld a, [de]
    ld b, a
    dec de

Jump_000_12e4:
    ld a, [de]
    or b
    pop de
    jr nz, jr_000_12f3

    ld a, $85
    ld [hl+], a
    ld a, $8d
    ld [hl+], a
    ld [hl], $93
    and a

Call_000_12f2:
    ret


Call_000_12f3:
jr_000_12f3:
    ldh a, [$b8]
    push af
    ld a, $16
    call Call_000_3e7e
    call $4e8b

Call_000_12fe:
    pop bc
    ld a, b
    jp Jump_000_3e7e


Call_000_1303:
    ld a, $6e
    ld [hl+], a

Call_000_1306:
    ld c, $02
    ld a, [$cfb8]
    cp $64
    jr c, jr_000_131b

    dec hl
    inc c
    jr jr_000_131b

Call_000_1313:
    ld a, $6e
    ld [hl+], a
    ld c, $03
    ld a, [$cfb8]

Call_000_131b:
jr_000_131b:
    ld [$d11d], a
    ld de, $d11d

jr_000_1321:
    ld b, $41
    jp Jump_000_3c5b


    ld hl, $d0db
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ret


Call_000_132f:
    ldh a, [$b8]
    push af
    ld a, $0e
    call Call_000_3e7e
    push bc
    push de
    push hl
    ld a, [$d11d]
    push af
    ld a, [$d0b4]
    ld [$d11d], a

Jump_000_1344:
    ld de, $7b92
    ld b, $66
    cp $b6
    jr z, jr_000_137a

    ld de, $6920
    cp $b8
    jr z, jr_000_137a

Call_000_1354:
Jump_000_1354:
    ld de, $67a1
    ld b, $77
    cp $b7
    jr z, jr_000_137a

    ld a, $3a
    call Call_000_3eb4
    ld a, [$d11d]
    dec a
    ld bc, $001c
    ld hl, $43de
    call Call_000_3a74
    ld de, $d0b7
    ld bc, $001c
    call Call_000_00b1
    jr jr_000_1382

jr_000_137a:
    ld hl, $d0c1
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d

jr_000_1382:
    ld a, [$d0b4]
    ld [$d0b7], a
    pop af
    ld [$d11d], a
    pop hl
    pop de
    pop bc
    pop af
    call Call_000_3e7e
    ret


Call_000_1394:
    ld a, [$cf91]
    ld hl, $d2b4

Call_000_139a:
    push hl
    push bc
    call Call_000_3a6a
    ld de, $cd6d
    push de

Call_000_13a3:
    ld bc, $000b
    call Call_000_00b1
    pop de
    pop bc
    pop hl
    ret


Call_000_13ad:
Jump_000_13ad:
    ld b, c
    res 7, c
    res 6, c
    res 5, c
    bit 5, b
    jr z, jr_000_13bf

    bit 7, b
    jr nz, jr_000_13bf

    ld [hl], $f0
    inc hl

jr_000_13bf:
    ld a, [de]
    swap a
    call Call_000_13e4
    ld a, [de]
    call Call_000_13e4
    inc de
    dec c
    jr nz, jr_000_13bf

    bit 7, b
    jr z, jr_000_13e3

    bit 6, b
    jr nz, jr_000_13d6

    dec hl

jr_000_13d6:
    bit 5, b
    jr z, jr_000_13dd

    ld [hl], $f0
    inc hl

jr_000_13dd:
    ld [hl], $f6
    call Call_000_38c8
    inc hl

jr_000_13e3:
    ret


Call_000_13e4:
    and $0f
    and a
    jr z, jr_000_13fe

    bit 7, b
    jr z, jr_000_13f8

    bit 5, b
    jr z, jr_000_13f6

    ld [hl], $f0
    inc hl
    res 5, b

jr_000_13f6:
    res 7, b

jr_000_13f8:
    add $f6
    ld [hl+], a

Call_000_13fb:
    jp Jump_000_38c8


jr_000_13fe:
    bit 7, b
    jr z, jr_000_13f8

    bit 6, b
    ret nz

    inc hl
    ret


Call_000_1407:
    ld bc, $d0b7
    add hl, bc
    ld a, [hl+]
    ld [$d0aa], a
    ld a, [hl]
    ld [$d0ab], a
    ld a, [$cf90]
    ld b, a
    cp $b6
    ld a, $0b
    jr z, jr_000_143b

    ld a, b
    cp $1f
    ld a, $09
    jr c, jr_000_143b

    ld a, b
    cp $4a
    ld a, $0a
    jr c, jr_000_143b

    ld a, b
    cp $74
    ld a, $0b
    jr c, jr_000_143b

Call_000_1432:
    ld a, b
    cp $99
    ld a, $0c
    jr c, jr_000_143b

    ld a, $0d

jr_000_143b:
    jp Jump_000_23f8


Call_000_143e:
Jump_000_143e:
    push de
    ld hl, $000b
    call Call_000_1407
    ld hl, $d0c1
    ld a, [hl+]
    ld c, a
    pop de

Jump_000_144b:
    push de
    and $0f
    ldh [$8b], a
    ld b, a
    ld a, $07
    sub b

Call_000_1454:
    inc a
    srl a
    ld b, a
    add a
    add a
    add a
    sub b
    ldh [$8d], a
    ld a, c
    swap a
    and $0f

Jump_000_1463:
    ld b, a
    add a

Call_000_1465:
    add a
    add a
    ldh [$8c], a
    ld a, $07
    sub b
    ld b, a
    ldh a, [$8d]
    add b
    add a
    add a
    add a
    ldh [$8d], a
    ld a, $00
    call Call_000_3e99
    ld hl, $a000
    call Call_000_14bc
    ld de, $a188
    ld hl, $a000
    call Call_000_149f
    ld hl, $a188

Jump_000_148c:
    call Call_000_14bc
    ld de, $a310
    ld hl, $a188
    call Call_000_149f
    call Call_000_3ea9
    pop de
    jp Jump_000_14c7


Call_000_149f:
    ldh a, [$8d]
    ld b, $00
    ld c, a
    add hl, bc
    ldh a, [$8b]

jr_000_14a7:
    push af
    push hl
    ldh a, [$8c]
    ld c, a

jr_000_14ac:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_000_14ac

    pop hl
    ld bc, $0038
    add hl, bc
    pop af
    dec a
    jr nz, jr_000_14a7

    ret


Call_000_14bc:
    ld bc, $0188

jr_000_14bf:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_14bf

    ret


Call_000_14c7:
Jump_000_14c7:
    ld a, $00
    call Call_000_3e99

Jump_000_14cc:
    push de
    ld hl, $a497
    ld de, $a30f
    ld bc, $a187
    ld a, $c4
    ldh [$8b], a

jr_000_14da:
    ld a, [de]
    dec de
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ld a, [de]
    dec de
    ld [hl-], a
    ld a, [bc]
    dec bc
    ld [hl-], a
    ldh a, [$8b]
    dec a
    ldh [$8b], a
    jr nz, jr_000_14da

    ld a, [$d0a9]
    and a
    jr z, jr_000_1501

    ld bc, $0310
    ld hl, $a188

jr_000_14f9:
    swap [hl]
    inc hl

Jump_000_14fc:
    dec bc

Jump_000_14fd:
    ld a, b
    or c
    jr nz, jr_000_14f9

Call_000_1501:
Jump_000_1501:
jr_000_1501:
    pop hl

Jump_000_1502:
    ld de, $a188

Call_000_1505:
Jump_000_1505:
    ld c, $31

Call_000_1507:
Jump_000_1507:
    ldh a, [$b8]

Call_000_1509:
Jump_000_1509:
    ld b, a

Call_000_150a:
Jump_000_150a:
    call Call_000_15fe

Jump_000_150d:
    jp Jump_000_3ea9


Call_000_1510:
    push hl
    ld hl, $d42f
    set 7, [hl]

Jump_000_1516:
    ld hl, $c1f2
    ld [hl], $ff
    pop hl
    ret


Call_000_151d:
    push hl
    ld hl, $d42f
    res 7, [hl]

Call_000_1523:
Jump_000_1523:
    pop hl
    ret


Call_000_1525:
    push hl

Call_000_1526:
    ld hl, $d42f
    res 3, [hl]
    pop hl
    ret


Call_000_152d:
    push hl
    ld hl, $d42f
    set 3, [hl]
    ld hl, $c1f2
    ld [hl], $ff
    pop hl

Call_000_1539:
    ret


Call_000_153a:
    push hl
    ld hl, $d42f
    set 1, [hl]
    pop hl
    ret


Call_000_1542:
    push hl
    ld hl, $d42f
    res 1, [hl]
    pop hl
    ret


Call_000_154a:
    push hl
    ld hl, $d42f
    bit 1, [hl]
    pop hl
    ret


Jump_000_1552:
    ld a, [hl]
    dec a

Call_000_1554:
    swap a
    ldh [$93], a
    ldh a, [$b8]
    push af
    ld a, $3f
    call Call_000_3e7e
    call $46d5
    pop af
    call Call_000_3e7e
    ret


Call_000_1568:
    ld b, $00
    ld c, a

jr_000_156b:
    inc b
    ld a, [hl+]
    cp $ff
    jr z, jr_000_1578

    cp c
    jr nz, jr_000_156b

    dec b
    dec hl
    scf
    ret


jr_000_1578:
    dec b
    dec hl
    and a
    ret


Call_000_157c:
    push hl
    push bc
    ldh a, [$b8]
    push af
    ld a, [$d449]
    call Call_000_3e7e
    ld hl, $d44a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    inc bc
    ld [hl], b
    dec hl
    ld [hl], c
    ld c, a
    pop af
    call Call_000_3e7e

Call_000_1597:
    ld a, c
    pop bc
    pop hl
    ret


Call_000_159b:
    ldh a, [$b8]
    ld b, a
    push af
    ld a, $3f

Call_000_15a1:
    call Call_000_3e7e

Call_000_15a4:
    call $52a1

Call_000_15a7:
    pop af
    call Call_000_3e7e
    ret


Jump_000_15ac:
    push af

Jump_000_15ad:
    ldh a, [$f4]
    and a
    jr z, jr_000_15c1

    push hl
    ldh a, [rLY]
    ld l, a
    ld h, $c7
    ld h, [hl]
    ldh a, [$f4]
    ld l, a

Call_000_15bc:
    ld a, h
    ld h, $ff
    ld [hl], a
    pop hl

jr_000_15c1:
    pop af
    reti


Call_000_15c3:
    ldh a, [$b8]
    push af
    ld a, $01
    call Call_000_3e7e
    call $4aaa
    pop bc
    ld a, b
    call Call_000_3e7e

Jump_000_15d3:
    ret


Call_000_15d4:
Jump_000_15d4:
    ld [$d122], a
    ldh a, [$b8]
    push af
    ld a, [$d122]
    call Call_000_3e7e
    ld a, h
    ld h, d
    ld d, a

Call_000_15e3:
    ld a, l
    ld l, e
    ld e, a
    ld a, b
    and a
    jr z, jr_000_15ee

    ld a, c
    and a
    jr z, jr_000_15ef

jr_000_15ee:
    inc b

jr_000_15ef:
    ld a, [de]
    inc de
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_000_15ef

    dec b
    jr nz, jr_000_15ef

Call_000_15f9:
    pop af
    call Call_000_3e7e
    ret


Call_000_15fe:
Jump_000_15fe:
    ldh a, [$ba]

Jump_000_1600:
    push af

Call_000_1601:
    xor a
    ldh [$ba], a

Call_000_1604:
    ldh a, [$b8]
    push af
    ld a, b
    call Call_000_3e7e
    ld a, e
    ldh [$c7], a
    ld a, d
    ldh [$c8], a
    ld a, l
    ldh [$c9], a
    ld a, h
    ldh [$ca], a

jr_000_1617:
    ld a, c
    cp $08
    jr nc, jr_000_1629

    ldh [$c6], a
    call Call_000_1e64
    pop af

Jump_000_1622:
    call Call_000_3e7e
    pop af
    ldh [$ba], a
    ret


jr_000_1629:
    ld a, $08
    ldh [$c6], a
    call Call_000_1e64
    ld a, c
    sub $08
    ld c, a
    jr jr_000_1617

Call_000_1636:
Jump_000_1636:
    ldh a, [$ba]
    push af
    xor a
    ldh [$ba], a
    ldh a, [$b8]
    push af
    ld a, b
    call Call_000_3e7e
    ld a, e
    ldh [$cc], a
    ld a, d
    ldh [$cd], a
    ld a, l
    ldh [$ce], a
    ld a, h

Jump_000_164d:
    ldh [$cf], a

jr_000_164f:
    ld a, c
    cp $08
    jr nc, jr_000_1661

    ldh [$cb], a
    call Call_000_1e64
    pop af
    call Call_000_3e7e
    pop af
    ldh [$ba], a
    ret


jr_000_1661:
    ld a, $08
    ldh [$cb], a
    call Call_000_1e64
    ld a, c
    sub $08
    ld c, a
    jr jr_000_164f

Call_000_166e:
Jump_000_166e:
    push af
    ld a, b
    and a
    jr z, jr_000_1677

    ld a, c
    and a
    jr z, jr_000_1678

jr_000_1677:
    inc b

jr_000_1678:
    pop af

jr_000_1679:
    ld [hl+], a
    dec c
    jr nz, jr_000_1679

    dec b
    jr nz, jr_000_1679

    ret


Call_000_1681:
    push bc
    ld b, a
    ldh a, [$b8]

Jump_000_1685:
    push af
    ld a, b
    call Call_000_3e7e
    ld b, [hl]
    pop af
    call Call_000_3e7e
    ld a, b
    pop bc
    ret


Call_000_1692:
    ld a, $7f
    ld de, $0014

jr_000_1697:
    push hl
    push bc

jr_000_1699:
    ld [hl+], a
    dec c
    jr nz, jr_000_1699

    pop bc
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_1697

    ret


Call_000_16a4:
    ld c, $06
    ld hl, $0000
    ld de, $c3a0
    call Call_000_16ca
    call Call_000_1e64
    ld hl, $0600
    ld de, $c418
    call Call_000_16ca
    call Call_000_1e64
    ld hl, $0c00
    ld de, $c490
    call Call_000_16ca
    jp Jump_000_1e64


Call_000_16ca:
    ld a, d
    ldh [$c2], a
    call Call_000_1ab6

Call_000_16d0:
    ld a, l
    ldh [$c3], a
    ld a, h
    ldh [$c4], a
    ld a, c

Jump_000_16d7:
    ldh [$c5], a
    ld a, e
    ldh [$c1], a
    ret


Call_000_16dd:
Jump_000_16dd:
    ld bc, $0168
    inc b
    ld hl, $c3a0
    ld a, $7f

jr_000_16e6:
    ld [hl+], a
    dec c
    jr nz, jr_000_16e6

    dec b
    jr nz, jr_000_16e6

    jp Jump_000_3ddb


Call_000_16f0:
    push hl
    ld a, $79
    ld [hl+], a
    inc a
    call Call_000_171d
    inc a
    ld [hl], a
    pop hl
    ld de, $0014

Call_000_16fe:
    add hl, de

jr_000_16ff:
    push hl

Call_000_1700:
Jump_000_1700:
    ld a, $7c

Jump_000_1702:
    ld [hl+], a

Call_000_1703:
    ld a, $7f
    call Call_000_171d
    ld [hl], $7c
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_000_16ff

    ld a, $7d
    ld [hl+], a
    ld a, $7a
    call Call_000_171d
    ld [hl], $7e
    ret


Call_000_171d:
    ld d, c

jr_000_171e:
    ld [hl+], a
    dec d
    jr nz, jr_000_171e

    ret


Call_000_1723:
Jump_000_1723:
    push hl

Jump_000_1724:
    ld a, [de]
    cp $50
    jr nz, jr_000_172d

Jump_000_1729:
    ld b, h
    ld c, l
    pop hl
    ret


Jump_000_172d:
jr_000_172d:
    cp $4e
    jr nz, jr_000_1743

    ld bc, $0028
    ldh a, [$fa]
    bit 2, a
    jr z, jr_000_173d

    ld bc, $0014

jr_000_173d:
    pop hl
    add hl, bc
    push hl
    jp Jump_000_17b6


jr_000_1743:
    cp $4f
    jr nz, jr_000_174f

    pop hl
    ld hl, $c4e1
    push hl
    jp Jump_000_17b6


jr_000_174f:
    and a
    jp z, Jump_000_17ba

    cp $4c
    jp z, Jump_000_18e3

    cp $4b

Jump_000_175a:
    jp z, Jump_000_18d1

    cp $51

Jump_000_175f:
    jp z, Jump_000_1882

    cp $49
    jp z, Jump_000_18a3

Jump_000_1767:
    cp $52
    jp z, Jump_000_17c7

    cp $53
    jp z, Jump_000_17cd

    cp $54
    jp z, Jump_000_17eb

    cp $5b
    jp z, Jump_000_17df

    cp $5e
    jp z, Jump_000_17e5

    cp $5c
    jp z, Jump_000_17d9

    cp $5d
    jp z, Jump_000_17d3

Call_000_178a:
    cp $55
    jp z, Jump_000_184a

    cp $56
    jp z, Jump_000_17f1

    cp $57
    jp z, Jump_000_187b

    cp $58
    jp z, Jump_000_1863

    cp $4a

Call_000_17a0:
    jp z, Jump_000_17f7

    cp $5f
    jp z, Jump_000_185f

    cp $59
    jp z, Jump_000_17fd

    cp $5a
    jp z, Jump_000_1803

    ld [hl+], a
    call Call_000_38c8

Jump_000_17b6:
    inc de

Call_000_17b7:
    jp Jump_000_1724


Jump_000_17ba:
    ld b, h
    ld c, l
    pop hl
    ld de, $17c2
    dec de
    ret


    rla
    ld h, [hl]
    ld c, h
    jr z, @+$52

Call_000_17c7:
Jump_000_17c7:
    push de
    ld de, $d157
    jr jr_000_1819

Jump_000_17cd:
    push de
    ld de, $d349
    jr jr_000_1819

Jump_000_17d3:
    push de
    ld de, $1826

Call_000_17d7:
    jr jr_000_1819

Jump_000_17d9:
    push de
    ld de, $1823
    jr jr_000_1819

Jump_000_17df:
    push de
    ld de, $182e
    jr jr_000_1819

Jump_000_17e5:
    push de
    ld de, $1831
    jr jr_000_1819

Jump_000_17eb:
    push de
    ld de, $1838
    jr jr_000_1819

Jump_000_17f1:
    push de
    ld de, $183d
    jr jr_000_1819

Jump_000_17f7:
    push de
    ld de, $1847
    jr jr_000_1819

Jump_000_17fd:
    ldh a, [$f3]
    xor $01
    jr jr_000_1805

Call_000_1803:
Jump_000_1803:
    ldh a, [$f3]

jr_000_1805:
    push de
    and a
    jr nz, jr_000_180e

    ld de, $d008

Jump_000_180c:
    jr jr_000_1819

jr_000_180e:
    ld de, $1840
    call Call_000_1723
    ld h, b
    ld l, c
    ld de, $cfd9

jr_000_1819:
    call Call_000_1723
    ld h, b
    ld l, c
    pop de
    inc de
    jp Jump_000_1724


    sub e
    adc h
    ld d, b

Jump_000_1826:
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld d, b
    adc a
    add d

Call_000_1830:
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, b
    adc a
    adc [hl]
    adc d
    cp d
    ld d, b
    ld [hl], l
    ld [hl], l
    ld d, b
    add h

Jump_000_1841:
    xor l

Call_000_1842:
    and h
    xor h
    cp b
    ld a, a
    ld d, b

Jump_000_1847:
    pop hl
    ld [c], a
    ld d, b

Jump_000_184a:
    push de

Jump_000_184b:
    ld b, h
    ld c, l
    ld hl, $185a
    call Call_000_1919
    ld h, b
    ld l, c
    pop de
    inc de

Call_000_1857:
    jp Jump_000_1724


    rla
    ld [hl], e
    ld c, h
    jr z, jr_000_18af

Jump_000_185f:
    ld [hl], $e8
    pop hl

Call_000_1862:
    ret


Jump_000_1863:
    ld a, [$d12a]

Call_000_1866:
    cp $04
    jp z, Jump_000_1870

    ld a, $ee
    ld [$c4f2], a

Jump_000_1870:
    call Call_000_1913
    call Call_000_388e
    ld a, $7f
    ld [$c4f2], a

Jump_000_187b:
    pop hl
    ld de, $1881
    dec de

Call_000_1880:
Jump_000_1880:
    ret


    ld d, b

Jump_000_1882:
    push de
    ld a, $ee
    ld [$c4f2], a
    call Call_000_1913
    call Call_000_388e

Jump_000_188e:
    ld hl, $c4a5
    ld bc, $0412
    call Call_000_1692
    ld c, $14
    call Call_000_372f
    pop de
    ld hl, $c4b9
    jp Jump_000_17b6


Jump_000_18a3:
    ldh a, [$fa]
    bit 3, a
    jr z, jr_000_18ae

    ld a, $4e
    jp Jump_000_172d


jr_000_18ae:
    push de

jr_000_18af:
    ld a, $ee
    ld [$c4f2], a
    call Call_000_1913
    call Call_000_388e
    ld hl, $c469
    ld bc, $0712

Call_000_18c0:
    call Call_000_1692
    ld c, $14
    call Call_000_372f
    pop de
    pop hl
    ld hl, $c47d
    push hl
    jp Jump_000_17b6


Jump_000_18d1:
    ld a, $ee

Call_000_18d3:
    ld [$c4f2], a
    call Call_000_1913
    push de
    call Call_000_388e
    pop de
    ld a, $7f

Jump_000_18e0:
    ld [$c4f2], a

Jump_000_18e3:
    push de
    call Call_000_18f1

Call_000_18e7:
    call Call_000_18f1
    ld hl, $c4e1
    pop de
    jp Jump_000_17b6


Call_000_18f1:
    ld hl, $c4b8
    ld de, $c4a4
    ld b, $3c

jr_000_18f9:
    ld a, [hl+]
    ld [de], a
    inc de

Call_000_18fc:
    dec b
    jr nz, jr_000_18f9

    ld hl, $c4e1
    ld a, $7f
    ld b, $12

jr_000_1906:
    ld [hl+], a
    dec b
    jr nz, jr_000_1906

    ld b, $05

jr_000_190c:
    call Call_000_1e64
    dec b
    jr nz, jr_000_190c

    ret


Call_000_1913:
    push bc
    call Call_000_3ddb
    pop bc
    ret


Call_000_1919:
Jump_000_1919:
    ld a, [$d357]
    push af
    set 1, a
    ld e, a
    ldh a, [$f9]
    xor e
    ld [$d357], a
    ld a, c
    ld [$cc3a], a
    ld a, b
    ld [$cc3b], a

Jump_000_192e:
jr_000_192e:
    ld a, [hl+]
    cp $50
    jr nz, jr_000_1938

    pop af
    ld [$d357], a
    ret


jr_000_1938:
    push hl
    cp $17
    jp z, Jump_000_1a7c

    cp $0e
    jp nc, Jump_000_1a0a

    ld hl, $1a9a
    push bc
    add a
    ld b, $00

Call_000_194a:
    ld c, a
    add hl, bc
    pop bc
    ld a, [hl+]
    ld h, [hl]

Call_000_194f:
    ld l, a
    jp hl


    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]

Call_000_1955:
Jump_000_1955:
    ld d, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a

Call_000_195a:
    push hl
    ld h, d
    ld l, e

Jump_000_195d:
    call Call_000_16f0
    pop hl
    jr jr_000_192e

Call_000_1963:
Jump_000_1963:
    pop hl
    ld d, h
    ld e, l
    ld h, b

Call_000_1967:
    ld l, c
    call Call_000_1723
    ld h, d
    ld l, e

Call_000_196d:
    inc hl
    jr jr_000_192e

Call_000_1970:
Jump_000_1970:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld h, b
    ld l, c
    call Call_000_1723
    pop hl
    jr jr_000_192e

    pop hl
    ld a, [hl+]

Call_000_1980:
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, b
    ld l, c
    ld c, a
    call Call_000_13ad
    ld b, h
    ld c, l
    pop hl
    jr jr_000_192e

    pop hl
    ld a, [hl+]
    ld [$cc3a], a
    ld c, a
    ld a, [hl+]
    ld [$cc3b], a
    ld b, a
    jp Jump_000_192e


    pop hl
    ld bc, $c4e1
    jp Jump_000_192e


    ld a, [$d12a]
    cp $04
    jp z, Jump_000_1a73

    ld a, $ee
    ld [$c4f2], a
    push bc
    call Call_000_388e
    pop bc
    ld a, $7f
    ld [$c4f2], a
    pop hl
    jp Jump_000_192e


    ld a, $7f
    ld [$c4f2], a
    call Call_000_18f1
    call Call_000_18f1
    pop hl
    ld bc, $c4e1
    jp Jump_000_192e


    pop hl
    ld de, $192e
    push de
    jp hl


Call_000_19d8:
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    push hl
    ld h, b

Call_000_19e0:
    ld l, c

Jump_000_19e1:
    ld b, a
    and $0f
    ld c, a
    ld a, b

Call_000_19e6:
    and $f0
    swap a
    set 6, a
    ld b, a
    call Call_000_3c5b
    ld b, h
    ld c, l
    pop hl
    jp Jump_000_192e


    push bc
    call Call_000_01b9
    ldh a, [$b4]
    and $03
    jr nz, jr_000_1a05

    ld c, $1e
    call Call_000_372f

jr_000_1a05:
    pop bc
    pop hl

Jump_000_1a07:
    jp Jump_000_192e


Jump_000_1a0a:
    pop hl
    push bc
    dec hl
    ld a, [hl+]
    ld b, a

Jump_000_1a0f:
    push hl
    ld hl, $1a3d

jr_000_1a13:
    ld a, [hl+]
    cp b

Jump_000_1a15:
    jr z, jr_000_1a1a

    inc hl
    jr jr_000_1a13

jr_000_1a1a:
    cp $14
    jr z, jr_000_1a32

    cp $15
    jr z, jr_000_1a32

    cp $16
    jr z, jr_000_1a32

    ld a, [hl]
    call Call_000_2238
    call Call_000_373e
    pop hl
    pop bc
    jp Jump_000_192e


jr_000_1a32:
    push de
    ld a, [hl]
    call Call_000_118b
    pop de
    pop hl
    pop bc
    jp Jump_000_192e


    dec bc
    add [hl]
    ld [de], a
    sbc d
    ld c, $91
    rrca
    add [hl]
    db $10
    adc c
    ld de, $1394
    sbc b
    inc d
    ld d, h
    dec d
    sub a
    ld d, $78
    pop hl
    ld a, [hl+]
    ld d, a

Call_000_1a54:
    push hl
    ld h, b
    ld l, c

jr_000_1a57:
    ld a, $75
    ld [hl+], a
    push de
    call Call_000_01b9
    pop de
    ldh a, [$b4]
    and $03
    jr nz, jr_000_1a6a

    ld c, $0a
    call Call_000_372f

jr_000_1a6a:
    dec d
    jr nz, jr_000_1a57

    ld b, h
    ld c, l
    pop hl
    jp Jump_000_192e


Jump_000_1a73:
    push bc
    call Call_000_388e
    pop bc
    pop hl
    jp Jump_000_192e


Jump_000_1a7c:
    pop hl
    ldh a, [$b8]
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]

Jump_000_1a83:
    ld d, a
    ld a, [hl+]
    ldh [$b8], a
    ld [$2000], a
    push hl
    ld l, e
    ld h, d
    call Call_000_1919
    pop hl
    pop af
    ldh [$b8], a
    ld [$2000], a
    jp Jump_000_192e


    ld h, e
    add hl, de
    ld [hl], b
    add hl, de
    ld a, [hl]
    add hl, de
    sub b
    add hl, de
    ld d, c

Jump_000_1aa3:
    add hl, de
    sbc [hl]
    add hl, de
    and l
    add hl, de
    ret nz

    add hl, de

Call_000_1aaa:
    jp nc, $d819

    add hl, de
    or $19
    ld a, [bc]
    ld a, [de]
    ld d, c
    ld a, [de]
    ld [hl], e
    ld a, [de]

Call_000_1ab6:
    xor a
    srl h
    rr a
    srl h
    rr a
    srl h
    rr a
    or l
    ld l, a
    ld a, b
    or h
    ld h, a
    ret


Call_000_1ac9:
    ld a, $7f
    jr jr_000_1ace

    ld a, l

Jump_000_1ace:
jr_000_1ace:
    ld de, $0400
    ld l, e

jr_000_1ad2:
    ld [hl+], a
    dec e
    jr nz, jr_000_1ad2

    dec d
    jr nz, jr_000_1ad2

    ret


Call_000_1ada:
    ldh a, [$d0]
    and a
    ret z

    ld b, a
    xor a
    ldh [$d0], a
    dec b
    jr nz, jr_000_1b09

Call_000_1ae5:
    ld hl, $cbfc
    ldh a, [$d1]
    ld e, a
    ldh a, [$d2]
    ld d, a

Jump_000_1aee:
    ld c, $12

jr_000_1af0:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $1f
    add e
    ld e, a
    jr nc, jr_000_1afc

    inc d

jr_000_1afc:
    ld a, d
    and $03
    or $98

Call_000_1b01:
    ld d, a
    dec c
    jr nz, jr_000_1af0

    xor a
    ldh [$d0], a
    ret


jr_000_1b09:
    ld hl, $cbfc
    ldh a, [$d1]
    ld e, a

Call_000_1b0f:
Jump_000_1b0f:
    ldh a, [$d2]
    ld d, a

Jump_000_1b12:
    push de
    call Call_000_1b1b
    pop de
    ld a, $20
    add e
    ld e, a

Call_000_1b1b:
    ld c, $0a

jr_000_1b1d:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, e
    inc a
    and $1f
    ld b, a

Call_000_1b27:
    ld a, e
    and $e0
    or b
    ld e, a
    dec c
    jr nz, jr_000_1b1d

    ret


Call_000_1b30:
    ldh a, [$ba]
    and a
    ret z

    ld [$ffbf], sp
    ldh a, [$bb]
    and a
    jr z, jr_000_1b50

    dec a
    jr z, jr_000_1b5e

    ld hl, $c490
    ld sp, hl
    ldh a, [$bd]
    ld h, a
    ldh a, [$bc]
    ld l, a
    ld de, $0180
    add hl, de
    xor a
    jr jr_000_1b6e

jr_000_1b50:
    ld hl, $c3a0
    ld sp, hl
    ldh a, [$bd]
    ld h, a
    ldh a, [$bc]
    ld l, a
    ld a, $01
    jr jr_000_1b6e

jr_000_1b5e:
    ld hl, $c418
    ld sp, hl
    ldh a, [$bd]
    ld h, a
    ldh a, [$bc]
    ld l, a
    ld de, $00c0
    add hl, de
    ld a, $02

jr_000_1b6e:
    ldh [$bb], a
    ld b, $06

Jump_000_1b72:
jr_000_1b72:
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    ld a, $0d
    add l
    ld l, a
    jr nc, jr_000_1baa

    inc h

jr_000_1baa:
    dec b
    jr nz, jr_000_1b72

    ldh a, [$bf]
    ld l, a
    ldh a, [$c0]
    ld h, a
    ld sp, hl
    ret


Call_000_1bb5:
    ldh a, [$c1]
    and a
    ret z

    ld [$ffbf], sp
    ldh a, [$c1]
    ld l, a
    ldh a, [$c2]
    ld h, a
    ld sp, hl
    ldh a, [$c3]
    ld l, a
    ldh a, [$c4]
    ld h, a
    ldh a, [$c5]
    ld b, a
    xor a
    ldh [$c1], a
    jr jr_000_1b72

Call_000_1bd1:
    ldh a, [$cb]
    and a
    ret z

    ld [$ffbf], sp
    ldh a, [$cc]
    ld l, a
    ldh a, [$cd]
    ld h, a
    ld sp, hl
    ldh a, [$ce]
    ld l, a
    ldh a, [$cf]
    ld h, a
    ldh a, [$cb]
    ld b, a
    xor a
    ldh [$cb], a

jr_000_1beb:
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l

Call_000_1c00:
Jump_000_1c00:
    ld [hl], e
    inc l
    ld [hl], d
    inc l

Jump_000_1c04:
    ld [hl], d
    inc l
    pop de

Jump_000_1c07:
    ld [hl], e
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], d
    inc hl

Jump_000_1c0f:
    dec b
    jr nz, jr_000_1beb

Jump_000_1c12:
    ld [$ffcc], sp

Jump_000_1c15:
    ld sp, hl
    ld [$ffce], sp
    ldh a, [$bf]
    ld l, a
    ldh a, [$c0]
    ld h, a
    ld sp, hl
    ret


Call_000_1c21:
    ldh a, [$c6]
    and a
    ret z

    ld [$ffbf], sp
    ldh a, [$c7]
    ld l, a

Call_000_1c2b:
    ldh a, [$c8]
    ld h, a
    ld sp, hl
    ldh a, [$c9]
    ld l, a
    ldh a, [$ca]
    ld h, a
    ldh a, [$c6]
    ld b, a
    xor a
    ldh [$c6], a

jr_000_1c3b:
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d

Jump_000_1c49:
    inc l
    pop de
    ld [hl], e

Call_000_1c4c:
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    pop de
    ld [hl], e
    inc l
    ld [hl], d
    inc hl

Call_000_1c63:
    dec b
    jr nz, jr_000_1c3b

    ld [$ffc7], sp
    ld sp, hl

Call_000_1c6a:
    ld [$ffc9], sp
    ldh a, [$bf]
    ld l, a
    ldh a, [$c0]
    ld h, a
    ld sp, hl
    ret


Call_000_1c75:
    ldh a, [$d7]

jr_000_1c77:
    and a
    ret z

    ldh a, [rLY]
    cp $90
    ret c

    ldh a, [$d8]
    inc a
    ldh [$d8], a
    cp $14
    ret c

jr_000_1c86:
    cp $15
    jr z, jr_000_1cb2

    ld hl, $9140
    ld c, $10
    ld a, [$d084]
    inc a

Jump_000_1c93:
    and $07
    ld [$d084], a
    and $04
    jr nz, jr_000_1ca4

jr_000_1c9c:
    ld a, [hl]
    rrca
    ld [hl+], a
    dec c
    jr nz, jr_000_1c9c

    jr jr_000_1caa

jr_000_1ca4:
    ld a, [hl]
    rlca
    ld [hl+], a
    dec c

Jump_000_1ca8:
    jr nz, jr_000_1ca4

jr_000_1caa:
    ldh a, [$d7]
    rrca
    ret nc

    xor a

Call_000_1caf:
    ldh [$d8], a
    ret


jr_000_1cb2:
    xor a
    ldh [$d8], a
    ld a, [$d084]
    and $03
    cp $02
    ld hl, $1cd5
    jr c, jr_000_1cc9

    ld hl, $1ce5
    jr z, jr_000_1cc9

    ld hl, $1cf5

jr_000_1cc9:
    ld de, $9030
    ld c, $10

jr_000_1cce:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_1cce

    ret


    add c
    nop
    nop
    jr jr_000_1cda

jr_000_1cda:
    inc h
    add l
    ld e, d
    inc e
    ld b, d
    jr jr_000_1c86

    nop
    ld a, [hl]
    add c
    jr @-$7d

    nop
    nop
    inc c
    nop
    ld [de], a
    add d
    dec l
    ld c, $e1
    inc c
    ld [hl], e
    nop
    ld a, $81
    jr jr_000_1c77

    jr jr_000_1cf8

jr_000_1cf8:
    inc h
    inc b
    ld e, d
    sbc l

Call_000_1cfc:
    ld b, d
    jr @+$26

Call_000_1cff:
    nop

Jump_000_1d00:
    db $db
    nop
    ld a, [hl]
    add c
    jr @-$31

    ret nc

    dec e
    call Call_000_3df2
    ld c, $20

Call_000_1d0d:
    call Call_000_372f

Jump_000_1d10:
    di
    xor a
    ldh [rIF], a
    ldh [rIE], a

Jump_000_1d16:
    ldh [rSCX], a
    ldh [rSCY], a
    ldh [rSB], a
    ldh [rSC], a
    ldh [rWX], a
    ldh [rWY], a
    ldh [rTMA], a
    ldh [rTAC], a

Jump_000_1d26:
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld a, $80
    ldh [rLCDC], a
    call Call_000_0061
    ld sp, $dfff
    ld hl, $c000
    ld bc, $2000

jr_000_1d3c:
    ld [hl], $00
    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_000_1d3c

    call Call_000_1dc6
    ld hl, $ff80
    ld bc, $007e
    call Call_000_166e
    call Call_000_0082
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $4a92
    xor a
    ldh [$d7], a
    ldh [rSTAT], a
    ldh [$ae], a
    ldh [$af], a
    ldh [rIF], a
    ld [$c0f3], a
    ld [$c0f4], a
    ld a, $0d
    ldh [rIE], a
    ld a, $90
    ldh [$b0], a
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld a, $ff
    ldh [$aa], a
    ld h, $98
    call Call_000_1ac9
    ld h, $9c
    call Call_000_1ac9
    ld a, $e3
    ldh [rLCDC], a
    ld a, $10
    ldh [$8a], a
    call Call_000_1dd0
    ei
    ld a, $40
    call Call_000_3eb4
    ld a, $1f
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, $9c
    ldh [$bd], a
    xor a
    ldh [$bc], a
    dec a
    ld [$cfca], a
    ld a, $32
    call Call_000_3eb4
    call Call_000_0061
    call Call_000_1dc6
    call Call_000_3de0
    call Call_000_0082
    ld a, $e3
    ldh [rLCDC], a
    jp $414b


Call_000_1dc6:
    ld hl, $8000
    ld bc, $2000
    xor a
    jp Jump_000_166e


Call_000_1dd0:
Jump_000_1dd0:
    ld a, $02
    ld [$c0ef], a
    ld [$c0f0], a

Jump_000_1dd8:
    xor a
    ld [$cfc6], a
    ld [$c0ee], a
    ld [$cfc9], a
    jp Jump_000_2233


Jump_000_1de5:
    push af
    push bc
    push de
    push hl
    ldh a, [rVBK]
    push af
    xor a
    ldh [rVBK], a
    ldh a, [$b8]
    ld [$d121], a
    ldh a, [$ae]
    ldh [rSCX], a
    ldh a, [$af]
    ldh [rSCY], a
    ld a, [$d09f]
    and a
    jr nz, jr_000_1e06

    ldh a, [$b0]
    ldh [rWY], a

jr_000_1e06:
    call Call_000_1b30
    call Call_000_1bb5
    call Call_000_1ada
    call Call_000_1c21
    call Call_000_1bd1
    call Call_000_1c75
    call $ff80
    ld a, $01
    ldh [$b8], a
    ld [$2000], a
    call $499b
    call Call_000_1ef5
    call Call_000_3e6d
    call Call_000_01c8
    ldh a, [$d6]
    and a

Jump_000_1e31:
    jr z, jr_000_1e36

    xor a
    ldh [$d6], a

jr_000_1e36:
    ldh a, [$d5]
    and a
    jr z, jr_000_1e3e

    dec a
    ldh [$d5], a

jr_000_1e3e:
    call Call_000_27c2
    ld a, $08
    call Call_000_3e7e
    call $531e
    ld a, $02
    call Call_000_3e7e
    call $509d
    call Call_000_2fb7
    ld a, [$d121]
    ldh [$b8], a
    ld [$2000], a
    pop af
    ldh [rVBK], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_1e64:
Jump_000_1e64:
    ld a, $01
    ldh [$d6], a

jr_000_1e68:
    db $76
    ldh a, [$d6]
    and a
    jr nz, jr_000_1e68

    ret


Call_000_1e6f:
Jump_000_1e6f:
    ld a, [$d35c]
    ld b, a
    ld hl, $1ee6
    ld a, l
    sub b
    ld l, a
    jr nc, jr_000_1e7c

    dec h

jr_000_1e7c:
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl+]
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061

Jump_000_1e8e:
    ret


Call_000_1e8f:
    ld hl, $1edd
    ld b, $04
    jr jr_000_1e9b

Call_000_1e96:
Jump_000_1e96:
    ld hl, $1eec
    ld b, $03

jr_000_1e9b:
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a

Call_000_1ea1:
    ld a, [hl+]
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ld c, $08
    call Call_000_372f
    dec b
    jr nz, jr_000_1e9b

    ret


Call_000_1eb6:
Jump_000_1eb6:
    ld hl, $1ee8
    ld b, $04
    jr jr_000_1ec2

Call_000_1ebd:
Jump_000_1ebd:
    ld hl, $1ef1
    ld b, $03

jr_000_1ec2:
    ld a, [hl-]
    ldh [rOBP1], a
    ld a, [hl-]
    ldh [rOBP0], a
    ld a, [hl-]
    ldh [rBGP], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ld c, $08

Call_000_1ed6:
    call Call_000_372f
    dec b
    jr nz, jr_000_1ec2

    ret


    rst $38
    rst $38
    rst $38

Jump_000_1ee0:
    cp $fe
    ld hl, sp-$07
    db $e4
    db $e4
    db $e4
    ret nc

    ldh [$e4], a
    ret nc

    ldh [$90], a
    add b
    sub b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop

Call_000_1ef5:
    call Call_000_1f54
    ld hl, $d479
    bit 0, [hl]
    jr nz, jr_000_1f43

    ld a, [$d731]
    bit 0, a

Jump_000_1f04:
    ret z

    ld a, [$da41]
    and a
    ret nz

    ld a, [$da44]
    inc a
    ld [$da44], a

Call_000_1f11:
    cp $3c

Call_000_1f13:
    ret nz

    xor a
    ld [$da44], a
    ld a, [$da43]
    inc a
    ld [$da43], a
    cp $3c

Call_000_1f21:
    ret nz

    xor a
    ld [$da43], a
    ld a, [$da42]
    inc a
    ld [$da42], a
    cp $3c
    ret nz

    xor a
    ld [$da42], a
    ld a, [$da40]

Jump_000_1f37:
    inc a
    ld [$da40], a
    cp $ff
    ret nz

    ld hl, $d479
    set 0, [hl]

jr_000_1f43:
    ld a, $3b
    ld [$da43], a
    ld [$da42], a
    ld a, $ff
    ld [$da40], a
    ld [$da41], a
    ret


Call_000_1f54:
    ld a, [$d139]
    and a
    jr nz, jr_000_1f5e

    ld a, $ff
    jr jr_000_1f5f

jr_000_1f5e:
    dec a

jr_000_1f5f:
    ld [$d139], a

Jump_000_1f62:
    and a
    ret nz

    ld a, [$d72f]
    res 1, a
    res 2, a
    bit 5, a
    res 5, a
    ld [$d72f], a
    ret z

    xor a
    ldh [$b3], a
    ldh [$b4], a
    ret


Jump_000_1f79:
    push af
    push bc
    push de

Call_000_1f7c:
    push hl
    ld a, [$d499]
    bit 0, a
    jp nz, Jump_000_2162

    ldh a, [$aa]
    inc a

Call_000_1f88:
    jr z, jr_000_1f9e

    ldh a, [rSB]
    ldh [$ad], a
    ldh a, [$ac]
    ldh [rSB], a
    ldh a, [$aa]
    cp $02
    jr z, jr_000_1fbe

    ld a, $80
    ldh [rSC], a
    jr jr_000_1fbe

jr_000_1f9e:
    ldh a, [rSB]
    ldh [$ad], a
    ldh [$aa], a
    cp $02
    jr z, jr_000_1fbb

    xor a
    ldh [rSB], a
    ld a, $03
    ldh [rDIV], a

jr_000_1faf:
    ldh a, [rDIV]
    bit 7, a
    jr nz, jr_000_1faf

    ld a, $80
    ldh [rSC], a
    jr jr_000_1fbe

jr_000_1fbb:
    xor a
    ldh [rSB], a

jr_000_1fbe:
    ld a, $01
    ldh [$a9], a
    ld a, $fe
    ldh [$ac], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_1fcb:
    ld a, $01
    ldh [$ab], a

jr_000_1fcf:
    ld a, [hl]
    ldh [$ac], a
    call Call_000_1ff6
    push bc
    ld b, a
    inc hl
    ld a, $30

jr_000_1fda:
    dec a
    jr nz, jr_000_1fda

    ldh a, [$ab]
    and a
    ld a, b
    pop bc
    jr z, jr_000_1fee

    dec hl
    cp $fd
    jr nz, jr_000_1fcf

    xor a
    ldh [$ab], a
    jr jr_000_1fcf

jr_000_1fee:
    ld [de], a
    inc de

Jump_000_1ff0:
    dec bc

Jump_000_1ff1:
    ld a, b
    or c
    jr nz, jr_000_1fcf

    ret


Call_000_1ff6:
Jump_000_1ff6:
    xor a
    ldh [$a9], a
    ldh a, [$aa]
    cp $02
    jr nz, jr_000_2003

Jump_000_1fff:
    ld a, $81
    ldh [rSC], a

jr_000_2003:
    ldh a, [$a9]
    and a
    jr nz, jr_000_204d

    ldh a, [$aa]
    cp $01
    jr nz, jr_000_2028

    call Call_000_2093
    jr z, jr_000_2028

    call Call_000_208d
    push hl
    ld hl, $cc48
    inc [hl]
    jr nz, jr_000_201f

    dec hl

Jump_000_201e:
    inc [hl]

jr_000_201f:
    pop hl
    call Call_000_2093
    jr nz, jr_000_2003

    jp Jump_000_209b


jr_000_2028:
    ldh a, [rIE]
    and $0f
    cp $08
    jr nz, jr_000_2003

    ld a, [$d073]
    dec a
    ld [$d073], a
    jr nz, jr_000_2003

    ld a, [$d074]
    dec a
    ld [$d074], a
    jr nz, jr_000_2003

    ldh a, [$aa]
    cp $01
    jr z, jr_000_204d

    ld a, $ff

jr_000_204a:
    dec a
    jr nz, jr_000_204a

jr_000_204d:
    xor a
    ldh [$a9], a
    ldh a, [rIE]

Jump_000_2052:
    and $0f
    sub $08
    jr nz, jr_000_2060

    ld [$d073], a
    ld a, $50
    ld [$d074], a

jr_000_2060:
    ldh a, [$ad]
    cp $fe
    ret nz

    call Call_000_2093
    jr z, jr_000_207b

    push hl
    ld hl, $cc48
    ld a, [hl]
    dec a

Call_000_2070:
    ld [hl-], a
    inc a

Call_000_2072:
    jr nz, jr_000_2075

    dec [hl]

jr_000_2075:
    pop hl
    call Call_000_2093
    jr z, jr_000_209b

jr_000_207b:
    ldh a, [rIE]
    and $0f
    cp $08
    ld a, $fe
    ret z

    ld a, [hl]
    ldh [$ac], a
    call Call_000_1e64
    jp Jump_000_1ff6


Call_000_208d:
    ld a, $0f

jr_000_208f:
    dec a
    jr nz, jr_000_208f

    ret


Call_000_2093:
    push hl
    ld hl, $cc47
    ld a, [hl+]
    or [hl]
    pop hl

Call_000_209a:
    ret


Jump_000_209b:
jr_000_209b:
    dec a
    ld [$cc47], a
    ld [$cc48], a
    ret


Call_000_20a3:
    ld hl, $cc42
    ld de, $cc3d
    ld c, $02
    ld a, $01
    ldh [$ab], a

jr_000_20af:
    call Call_000_1e64

Call_000_20b2:
    ld a, [hl]
    ldh [$ac], a
    call Call_000_1ff6
    ld b, a
    inc hl
    ldh a, [$ab]
    and a
    ld a, $00
    ldh [$ab], a

Call_000_20c1:
    jr nz, jr_000_20af

    ld a, b
    ld [de], a
    inc de

Call_000_20c6:
    dec c
    jr nz, jr_000_20af

    ret


Call_000_20ca:
    call Call_000_370f
    ld hl, $4b89
    ld b, $01
    call Call_000_3e84
    call Call_000_20db

Call_000_20d8:
    jp Jump_000_371b


Call_000_20db:
    ld a, $ff
    ld [$cc3e], a

jr_000_20e0:
    call Call_000_211f
    call Call_000_1e64
    call Call_000_2093
    jr z, jr_000_20fc

    push hl
    ld hl, $cc48
    dec [hl]
    jr nz, jr_000_20fb

    dec hl
    dec [hl]
    jr nz, jr_000_20fb

    pop hl
    xor a
    jp Jump_000_209b


jr_000_20fb:
    pop hl

jr_000_20fc:
    ld a, [$cc3e]
    inc a
    jr z, jr_000_20e0

    ld b, $0a

jr_000_2104:
    call Call_000_1e64
    call Call_000_211f
    dec b
    jr nz, jr_000_2104

    ld b, $0a

jr_000_210f:
    call Call_000_1e64
    call Call_000_2149
    dec b
    jr nz, jr_000_210f

    ld a, [$cc3e]
    ld [$cc3d], a
    ret


Call_000_211f:
    call Call_000_2133
    ld a, [$cc42]

Jump_000_2125:
    add $60
    ldh [$ac], a
    ldh a, [$aa]
    cp $02
    jr nz, jr_000_2133

    ld a, $81
    ldh [rSC], a

Call_000_2133:
jr_000_2133:
    ldh a, [$ad]
    ld [$cc3d], a
    and $f0
    cp $60
    ret nz

    xor a
    ldh [$ad], a
    ld a, [$cc3d]
    and $0f
    ld [$cc3e], a
    ret


Call_000_2149:
    xor a
    ldh [$ac], a
    ldh a, [$aa]
    cp $02
    ret nz

    ld a, $81
    ldh [rSC], a

Jump_000_2155:
    ret


Call_000_2156:
    ld a, $02
    ldh [rSB], a
    xor a
    ldh [$ad], a
    ld a, $80
    ldh [rSC], a
    ret


Jump_000_2162:
    call Call_000_2fa7
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_216a:
    reti


Call_000_216b:
Jump_000_216b:
    call Call_000_373e
    xor a
    ld c, a
    ld d, a
    ld [$cfc9], a
    jr jr_000_2188

Call_000_2176:
    ld c, $0a
    ld d, $00
    ld a, [$d72d]
    bit 5, a
    jr z, jr_000_2188

    xor a
    ld [$cfc9], a
    ld c, $08
    ld d, c

jr_000_2188:
    ld a, [$d6ff]
    and a
    jr z, jr_000_21ac

    cp $02
    jr z, jr_000_219b

    call Call_000_21c8

Call_000_2195:
    jr c, jr_000_21ac

    ld a, $d2

Call_000_2199:
    jr jr_000_219d

Call_000_219b:
jr_000_219b:
    ld a, $d6

jr_000_219d:
    ld b, a
    ld a, d
    and a
    ld a, $1f
    jr nz, jr_000_21a7

Call_000_21a4:
    ld [$c0ef], a

jr_000_21a7:
    ld [$c0f0], a

Call_000_21aa:
    jr jr_000_21b5

jr_000_21ac:
    ld a, [$d35a]
    ld b, a
    call Call_000_21f5

Call_000_21b3:
    jr c, jr_000_21ba

Call_000_21b5:
jr_000_21b5:
    ld a, [$cfc9]
    cp b
    ret z

jr_000_21ba:
    ld a, c
    ld [$cfc6], a

Jump_000_21be:
    ld a, b
    ld [$cfc9], a

Call_000_21c2:
    ld [$c0ee], a
    jp Jump_000_2238


Call_000_21c8:
    ld a, [$d35d]
    cp $22
    jr z, jr_000_21e1

    cp $6c
    jr z, jr_000_21e1

    cp $c2
    jr z, jr_000_21e1

    cp $c6
    jr z, jr_000_21e1

    cp $09
    jr z, jr_000_21e1

    and a
    ret


jr_000_21e1:
    scf
    ret


Call_000_21e3:
Jump_000_21e3:
    ld c, $06

Call_000_21e5:
Jump_000_21e5:
jr_000_21e5:
    push bc
    push hl
    ld b, $02
    ld hl, $509d
    call Call_000_3e84
    pop hl
    pop bc
    dec c
    jr nz, jr_000_21e5

    ret


Call_000_21f5:
    ld a, [$d35b]
    ld e, a
    ld a, [$c0ef]
    cp e

Call_000_21fd:
    jr nz, jr_000_2204

    ld [$c0f0], a
    and a
    ret


jr_000_2204:
    ld a, c
    and a

Jump_000_2206:
    ld a, e

Jump_000_2207:
    jr nz, jr_000_220c

    ld [$c0ef], a

jr_000_220c:
    ld [$c0f0], a

Jump_000_220f:
    scf
    ret


Call_000_2211:
Jump_000_2211:
    ld b, a
    ld [$c0ee], a
    xor a
    ld [$cfc6], a
    ld a, c
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, b
    jr jr_000_2238

    xor a
    ld [$c02a], a
    ld [$c02b], a
    ld [$c02c], a
    ld [$c02d], a
    ldh [rNR10], a
    ret


Call_000_2233:
Jump_000_2233:
    ld a, $ff
    ld [$c0ee], a

Call_000_2238:
Jump_000_2238:
jr_000_2238:
    push hl
    push de

Call_000_223a:
    push bc
    ld b, a
    ld a, [$c0ee]
    and a
    jr z, jr_000_224f

Call_000_2242:
Jump_000_2242:
    xor a
    ld [$c02a], a
    ld [$c02b], a
    ld [$c02c], a

Jump_000_224c:
    ld [$c02d], a

jr_000_224f:
    ld a, [$cfc6]
    and a
    jr z, jr_000_226a

Jump_000_2255:
    ld a, [$c0ee]
    and a
    jr z, jr_000_2284

    xor a
    ld [$c0ee], a
    ld a, [$cfc9]
    cp $ff

Call_000_2264:
    jr nz, jr_000_2273

    xor a
    ld [$cfc6], a

jr_000_226a:
    xor a
    ld [$c0ee], a
    call Call_000_22ec
    jr jr_000_2284

jr_000_2273:
    ld a, b
    ld [$cfc9], a
    ld a, [$cfc6]
    ld [$cfc7], a
    ld [$cfc8], a
    ld a, b
    ld [$cfc6], a

jr_000_2284:
    pop bc
    pop de
    pop hl
    ret


Call_000_2288:
    ldh a, [$b8]
    push af
    ld a, [$c0ef]
    call Call_000_3e7e
    ld d, $00
    ld a, c
    add a
    ld e, a
    ld hl, $c006
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a

Jump_000_229e:
    ld a, [de]
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    ld e, a
    pop af
    call Call_000_3e7e

Call_000_22a8:
    ld a, e
    ret


Call_000_22aa:
    push hl
    push de
    push bc
    ldh a, [$b8]
    push af
    ld a, $08

Call_000_22b2:
    call Call_000_3e7e
    call $59f8
    pop af
    call Call_000_3e7e
    pop bc
    pop de
    pop hl
    ret


Call_000_22c0:
    push hl
    push de
    push bc
    ldh a, [$b8]
    push af
    ld a, $08
    call Call_000_3e7e
    call $5ab7
    pop af
    call Call_000_3e7e
    pop bc
    pop de
    pop hl
    ret


Call_000_22d6:
    push hl
    push de
    push bc
    ldh a, [$b8]
    push af
    ld a, $08
    call Call_000_3e7e
    call $5b3f
    pop af
    call Call_000_3e7e

Jump_000_22e8:
    pop bc
    pop de
    pop hl
    ret


Call_000_22ec:
    ldh a, [$b8]
    push af
    ld a, [$c0ef]
    call Call_000_3e7e
    cp $02
    jr nz, jr_000_22ff

    ld a, b
    call $584e

Jump_000_22fd:
    jr jr_000_2317

jr_000_22ff:
    cp $08

Jump_000_2301:
    jr nz, jr_000_2309

    ld a, b
    call $58bb
    jr jr_000_2317

jr_000_2309:
    cp $1f
    jr nz, jr_000_2313

    ld a, b
    call $510d
    jr jr_000_2317

jr_000_2313:
    ld a, b

Jump_000_2314:
    call $6bd4

jr_000_2317:
    pop af
    call Call_000_3e7e

Jump_000_231b:
    ret


Call_000_231c:
Jump_000_231c:
    ld a, [$cfca]
    dec a
    ret nz

    ldh a, [$b8]
    push af
    ld a, $01
    call Call_000_3e7e
    ld a, $ff
    ld [$cfca], a
    call $4bb7
    ld a, $01

Jump_000_2333:
    ld [$cfca], a
    pop af
    call Call_000_3e7e
    ret


    cp $05
    inc b
    inc d
    dec bc
    rrca
    inc c
    rst $38
    cp $07
    inc b
    inc d
    dec e
    dec bc
    inc c
    ld c, $0f
    rst $38
    cp $08
    inc b

Jump_000_2350:
    inc d
    dec e

Jump_000_2352:
    ld e, $0b
    inc c
    ld c, $0f
    rst $38
    cp $01
    ld b, $ff

Jump_000_235c:
    cp $06

Call_000_235e:
    inc b
    inc de
    dec c
    ld c, $0f
    ld e, $ff
    cp $09
    inc bc

Jump_000_2368:
    inc de
    dec [hl]
    dec e
    jr c, jr_000_2378

    inc c
    dec c
    rrca

Call_000_2370:
    rst $38
    cp $09
    inc bc
    inc de
    dec [hl]
    jr c, @+$0d

jr_000_2378:
    inc c
    dec c
    ld c, $0f
    rst $38
    cp $09
    add sp, -$17
    jp z, $edcf

    ret


    call $d9d1
    rst $38
    cp $05
    inc sp

Jump_000_238c:
    jr nz, jr_000_23af

    ld [hl+], a
    cpl
    rst $38
    cp $07
    ld l, $37
    ld a, [hl-]
    ld b, c
    ld b, d
    ld b, e
    ld b, h

Jump_000_239a:
    rst $38
    cp $05
    inc hl
    inc h
    dec h
    ld h, $27
    rst $38
    cp $06
    ld [bc], a
    inc bc
    ld [de], a
    dec [hl]
    inc [hl]
    jr c, @+$01

    cp $05
    inc bc

jr_000_23af:
    ld [de], a

Call_000_23b0:
    inc de
    inc [hl]
    dec [hl]
    rst $38
    cp $07
    ld [bc], a

Call_000_23b7:
    inc bc
    ld [de], a
    add hl, sp
    dec e
    inc [hl]
    dec [hl]
    rst $38
    cp $06

Call_000_23c0:
    inc bc

Call_000_23c1:
Jump_000_23c1:
    ld [de], a
    add hl, sp

Jump_000_23c3:
    dec e

Call_000_23c4:
    inc [hl]
    dec [hl]
    rst $38

Call_000_23c7:
    cp $07
    ld [bc], a
    inc bc
    db $10
    ld de, $3534
    add hl, sp
    rst $38
    ld d, b

Jump_000_23d2:
    ld hl, $23d1
    ret


    rla
    sub e
    ld b, b
    ld h, $50
    rla
    sub [hl]
    ld b, b

Jump_000_23de:
    ld h, $50
    rla
    or c
    ld b, b

Jump_000_23e3:
    ld h, $50

Jump_000_23e5:
    rla
    jp nc, $2640

    ld d, b
    rla
    db $fc
    ld b, b
    ld h, $50
    ld [$5c3e], sp
    call Call_000_3eb4
    jp Jump_000_23d2


Jump_000_23f8:
    ld b, a

Jump_000_23f9:
    ldh a, [$b8]
    push af
    ld a, b
    call Call_000_3e7e
    ld a, $00
    call Call_000_3e99
    call Call_000_2410

Call_000_2408:
    call Call_000_3ea9
    pop af
    call Call_000_3e7e
    ret


Call_000_2410:
    ld hl, $a188
    ld c, $10
    ld b, $03

Call_000_2417:
    xor a
    call Call_000_166e
    ld a, $01
    ld [$d0a5], a
    ld a, $03
    ld [$d0a6], a
    xor a
    ld [$d0a0], a
    ld [$d0a1], a

Jump_000_242c:
    ld [$d0a7], a
    call Call_000_2581
    ld b, a
    and $0f
    add a
    add a
    add a
    ld [$d0a3], a
    ld a, b

Call_000_243c:
    swap a
    and $0f
    add a
    add a
    add a
    ld [$d0a2], a
    call Call_000_2566
    ld [$d0a7], a

Jump_000_244c:
    ld hl, $a188
    ld a, [$d0a7]
    bit 0, a
    jr z, jr_000_2459

    ld hl, $a310

jr_000_2459:
    call Call_000_278d

Call_000_245c:
    ld a, [$d0a7]
    bit 1, a
    jr z, jr_000_2470

    call Call_000_2566
    and a
    jr z, jr_000_246d

Jump_000_2469:
    call Call_000_2566
    inc a

jr_000_246d:
    ld [$d0a8], a

jr_000_2470:
    call Call_000_2566
    and a

Call_000_2474:
    jr z, jr_000_248b

jr_000_2476:
    call Call_000_2566
    ld c, a
    call Call_000_2566
    sla c
    or c
    and a
    jr z, jr_000_248b

    call Call_000_253f
    call Call_000_24ce
    jr jr_000_2476

jr_000_248b:
    ld c, $00

jr_000_248d:
    call Call_000_2566
    and a
    jr z, jr_000_2496

    inc c
    jr jr_000_248d

jr_000_2496:
    ld a, c
    add a
    ld hl, $2595
    add l
    ld l, a
    jr nc, jr_000_24a0

    inc h

jr_000_24a0:
    ld a, [hl+]
    ld e, a
    ld d, [hl]

Call_000_24a3:
    push de

Call_000_24a4:
    inc c
    ld e, $00
    ld d, e

jr_000_24a8:
    call Call_000_2566
    or e
    ld e, a
    dec c
    jr z, jr_000_24b6

    sla e
    rl d
    jr jr_000_24a8

jr_000_24b6:
    pop hl
    add hl, de
    ld e, l
    ld d, h

jr_000_24ba:
    ld b, e
    xor a
    call Call_000_253f
    ld e, b
    call Call_000_24ce
    dec de
    ld a, d
    and a
    jr nz, jr_000_24ca

Jump_000_24c8:
    ld a, e
    and a

jr_000_24ca:
    jr nz, jr_000_24ba

    jr jr_000_2476

Call_000_24ce:
    ld a, [$d0a3]
    ld b, a
    ld a, [$d0a1]
    inc a
    cp b
    jr z, jr_000_24ec

    ld [$d0a1], a
    ld a, [$d0ac]
    inc a
    ld [$d0ac], a
    ret nz

    ld a, [$d0ad]
    inc a

Jump_000_24e8:
    ld [$d0ad], a
    ret


jr_000_24ec:
    xor a
    ld [$d0a1], a
    ld a, [$d0a6]
    and a
    jr z, jr_000_2506

    dec a
    ld [$d0a6], a
    ld hl, $d0ae
    ld a, [hl+]
    ld [$d0ac], a
    ld a, [hl]
    ld [$d0ad], a
    ret


jr_000_2506:
    ld a, $03
    ld [$d0a6], a
    ld a, [$d0a0]
    add $08
    ld [$d0a0], a

Call_000_2513:
    ld b, a
    ld a, [$d0a2]

Jump_000_2517:
    cp b
    jr z, jr_000_2526

    ld a, [$d0ac]
    ld l, a

Jump_000_251e:
    ld a, [$d0ad]
    ld h, a
    inc hl
    jp Jump_000_278d


jr_000_2526:
    pop hl
    xor a
    ld [$d0a0], a
    ld a, [$d0a7]
    bit 1, a

Jump_000_2530:
    jr nz, jr_000_253c

    xor $01
    set 1, a
    ld [$d0a7], a
    jp Jump_000_244c


Jump_000_253c:
jr_000_253c:
    jp Jump_000_25b5


Call_000_253f:
    ld e, a
    ld a, [$d0a6]
    and a
    jr z, jr_000_255a

    cp $02
    jr c, jr_000_2552

    jr z, jr_000_2558

Jump_000_254c:
    rrc e
    rrc e
    jr jr_000_255a

jr_000_2552:
    sla e
    sla e
    jr jr_000_255a

jr_000_2558:
    swap e

jr_000_255a:
    ld a, [$d0ac]
    ld l, a
    ld a, [$d0ad]
    ld h, a
    ld a, [hl]
    or e

Call_000_2564:
    ld [hl], a

Jump_000_2565:
    ret


Call_000_2566:
    ld a, [$d0a5]
    dec a
    jr nz, jr_000_2574

    call Call_000_2581
    ld [$d0a4], a
    ld a, $08

jr_000_2574:
    ld [$d0a5], a
    ld a, [$d0a4]
    rlca
    ld [$d0a4], a
    and $01
    ret


Call_000_2581:
    ld a, [$d0aa]
    ld l, a
    ld a, [$d0ab]
    ld h, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$d0aa], a
    ld a, h
    ld [$d0ab], a
    ld a, b
    ret


    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38

Call_000_25b2:
    ld a, a
    rst $38
    rst $38

Call_000_25b5:
Jump_000_25b5:
    ld a, [$d0a8]
    cp $02
    jp z, Jump_000_276d

    and a
    jp nz, Jump_000_26bd

Call_000_25c1:
    ld hl, $a188
    call Call_000_25ca

Call_000_25c7:
    ld hl, $a310

Call_000_25ca:
    xor a
    ld [$d0a0], a
    ld [$d0a1], a
    call Call_000_278d
    ld a, [$d0a9]
    and a
    jr z, jr_000_25e2

    ld hl, $26ad
    ld de, $26b5
    jr jr_000_25e8

jr_000_25e2:
    ld hl, $269d
    ld de, $26a5

jr_000_25e8:
    ld a, l
    ld [$d0b0], a
    ld a, h
    ld [$d0b1], a
    ld a, e
    ld [$d0b2], a
    ld a, d
    ld [$d0b3], a
    ld e, $00

jr_000_25fa:
    ld a, [$d0ac]
    ld l, a
    ld a, [$d0ad]
    ld h, a
    ld a, [hl]
    ld b, a

Jump_000_2604:
    swap a

Jump_000_2606:
    and $0f
    call Call_000_2663
    swap a
    ld d, a
    ld a, b
    and $0f
    call Call_000_2663
    or d
    ld b, a
    ld a, [$d0ac]
    ld l, a
    ld a, [$d0ad]
    ld h, a
    ld a, b
    ld [hl], a
    ld a, [$d0a3]
    add l

Call_000_2624:
    jr nc, jr_000_2627

    inc h

jr_000_2627:
    ld [$d0ac], a

Jump_000_262a:
    ld a, h
    ld [$d0ad], a
    ld a, [$d0a0]
    add $08
    ld [$d0a0], a
    ld b, a
    ld a, [$d0a2]
    cp b
    jr nz, jr_000_25fa

    xor a
    ld e, a
    ld [$d0a0], a
    ld a, [$d0a1]
    inc a
    ld [$d0a1], a

Jump_000_2649:
    ld b, a
    ld a, [$d0a3]
    cp b
    jr z, jr_000_265e

    ld a, [$d0ae]
    ld l, a
    ld a, [$d0af]
    ld h, a
    inc hl
    call Call_000_278d
    jr jr_000_25fa

Jump_000_265e:
jr_000_265e:
    xor a
    ld [$d0a1], a
    ret


Call_000_2663:
    srl a
    ld c, $00

Call_000_2667:
    jr nc, jr_000_266b

Jump_000_2669:
    ld c, $01

jr_000_266b:
    ld l, a
    ld a, [$d0a9]
    and a
    jr z, jr_000_2676

    bit 3, e
    jr jr_000_2678

jr_000_2676:
    bit 0, e

jr_000_2678:
    ld e, l
    jr nz, jr_000_2684

    ld a, [$d0b0]
    ld l, a
    ld a, [$d0b1]
    jr jr_000_268b

jr_000_2684:
    ld a, [$d0b2]
    ld l, a
    ld a, [$d0b3]

jr_000_268b:
    ld h, a
    ld a, e
    add l
    ld l, a
    jr nc, jr_000_2692

    inc h

jr_000_2692:
    ld a, [hl]
    bit 0, c
    jr nz, jr_000_2699

    swap a

jr_000_2699:
    and $0f
    ld e, a
    ret


    ld bc, $7632
    ld b, l
    cp $cd
    adc c
    cp d

Jump_000_26a5:
    cp $cd

Call_000_26a7:
    adc c

Call_000_26a8:
    cp d
    ld bc, $7632
    ld b, l

Call_000_26ad:
    ld [$e6c4], sp
    ld a, [hl+]
    rst $30
    dec sp
    add hl, de
    push de
    rst $30
    dec sp
    add hl, de
    push de
    ld [$e6c4], sp
    ld a, [hl+]

Jump_000_26bd:
    xor a
    ld [$d0a0], a
    ld [$d0a1], a
    call Call_000_2737
    ld a, [$d0ac]
    ld l, a
    ld a, [$d0ad]
    ld h, a
    call Call_000_25ca
    call Call_000_2737
    ld a, [$d0ac]
    ld l, a
    ld a, [$d0ad]
    ld h, a
    ld a, [$d0ae]
    ld e, a
    ld a, [$d0af]
    ld d, a

jr_000_26e5:
    ld a, [$d0a9]
    and a
    jr z, jr_000_2701

    push de
    ld a, [de]
    ld b, a
    swap a
    and $0f
    call Call_000_272d
    swap a
    ld c, a
    ld a, b
    and $0f
    call Call_000_272d
    or c
    pop de
    ld [de], a

jr_000_2701:
    ld a, [hl+]
    ld b, a
    ld a, [de]

Jump_000_2704:
    xor b
    ld [de], a

Jump_000_2706:
    inc de
    ld a, [$d0a1]
    inc a
    ld [$d0a1], a
    ld b, a
    ld a, [$d0a3]
    cp b

Call_000_2713:
    jr nz, jr_000_26e5

    xor a
    ld [$d0a1], a
    ld a, [$d0a0]
    add $08

Call_000_271e:
    ld [$d0a0], a
    ld b, a
    ld a, [$d0a2]
    cp b
    jr nz, jr_000_26e5

    xor a
    ld [$d0a0], a
    ret


Call_000_272d:
    ld de, $275d
    add e
    ld e, a
    jr nc, jr_000_2735

    inc d

jr_000_2735:
    ld a, [de]
    ret


Call_000_2737:
    ld a, [$d0a7]
    bit 0, a
    jr nz, jr_000_2746

    ld de, $a188

Jump_000_2741:
    ld hl, $a310
    jr jr_000_274c

jr_000_2746:
    ld de, $a310
    ld hl, $a188

Call_000_274c:
jr_000_274c:
    ld a, l
    ld [$d0ac], a

Jump_000_2750:
    ld a, h
    ld [$d0ad], a

Call_000_2754:
    ld a, e
    ld [$d0ae], a
    ld a, d
    ld [$d0af], a

Call_000_275c:
    ret


Call_000_275d:
    nop

Call_000_275e:
    ld [$0c04], sp
    ld [bc], a
    ld a, [bc]
    ld b, $0e
    ld bc, $0509
    dec c
    inc bc
    dec bc
    rlca
    rrca

Jump_000_276d:
    call Call_000_2737
    ld a, [$d0a9]
    push af
    xor a
    ld [$d0a9], a

Jump_000_2778:
    ld a, [$d0ae]
    ld l, a
    ld a, [$d0af]
    ld h, a
    call Call_000_25ca
    call Call_000_2737
    pop af
    ld [$d0a9], a
    jp Jump_000_26bd


Call_000_278d:
Jump_000_278d:
    ld a, l
    ld [$d0ac], a
    ld [$d0ae], a
    ld a, h
    ld [$d0ad], a
    ld [$d0af], a
    ret


Call_000_279c:
    ld hl, $c100
    call Call_000_27ba
    ld hl, $c200
    call Call_000_27ba
    ld a, $01
    ld [$c100], a
    ld [$c20e], a

Call_000_27b0:
    ld hl, $c104
    ld [hl], $3c
    inc hl
    inc hl

Call_000_27b7:
    ld [hl], $40
    ret


Call_000_27ba:
    ld bc, $0010
    xor a
    call Call_000_166e

Call_000_27c1:
    ret


Call_000_27c2:
    ld a, [$cfc6]
    and a
    jr nz, jr_000_27d3

    ld a, [$d72b]
    bit 1, a
    ret nz

    ld a, $77
    ldh [rNR50], a

Call_000_27d2:
    ret


jr_000_27d3:
    ld a, [$cfc8]
    and a
    jr z, jr_000_27de

    dec a
    ld [$cfc8], a
    ret


jr_000_27de:
    ld a, [$cfc7]
    ld [$cfc8], a
    ldh a, [rNR50]
    and a

Call_000_27e7:
    jr z, jr_000_27fa

    ld b, a
    and $0f
    dec a
    ld c, a
    ld a, b
    and $f0
    swap a
    dec a
    swap a
    or c
    ldh [rNR50], a
    ret


jr_000_27fa:
    ld a, [$cfc6]
    ld b, a
    xor a
    ld [$cfc6], a
    call Call_000_2233
    ld a, [$c0f0]

Jump_000_2808:
    ld [$c0ef], a
    ld a, b
    ld [$c0ee], a
    jp Jump_000_2238


    rla
    sbc d
    ld [hl], h
    inc l
    ld d, b

Call_000_2817:
Jump_000_2817:
    ldh a, [$b8]
    push af
    ld b, $01
    ld hl, $6f0e
    call Call_000_3e84

Call_000_2822:
    ld hl, $cf11
    bit 0, [hl]
    res 0, [hl]
    jr nz, jr_000_2831

    ld a, [$d35d]
    call Call_000_0f8b

jr_000_2831:
    ld a, $1e

Jump_000_2833:
    ldh [$d5], a
    ld hl, $d36b

Call_000_2838:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $00

Jump_000_283d:
    ldh a, [$8c]
    ld [$cf13], a
    and a

Jump_000_2843:
    jp z, Jump_000_29d1

    cp $d4
    jp z, Jump_000_29c6

Call_000_284b:
    cp $d3
    jp z, Jump_000_296f

    cp $d0

Call_000_2852:
    jp z, Jump_000_297a

    cp $d1
    jp z, Jump_000_2988

    cp $d2
    jp z, Jump_000_29b8

    ld a, [$d4e0]
    ld e, a
    ldh a, [$8c]
    cp e

Call_000_2866:
    jr z, jr_000_286a

    jr nc, jr_000_2879

Jump_000_286a:
jr_000_286a:
    push hl
    ld hl, $d4e3
    ldh a, [$8c]
    dec a
    add a
    ld e, a
    ld d, $00

Call_000_2875:
    add hl, de
    inc hl
    ld a, [hl]

Jump_000_2878:
    pop hl

Call_000_2879:
jr_000_2879:
    dec a
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jp z, Jump_000_2915

    cp $ff
    jp z, Jump_000_2955

    cp $fc
    jp z, Jump_000_33ef

    cp $fd

Call_000_2894:
    jp z, Jump_000_33f9

    cp $f9
    jp z, Jump_000_340e

    cp $f5
    jr nz, jr_000_28aa

    ld b, $1d

Jump_000_28a2:
    ld hl, $4726
    call Call_000_3e84
    jr jr_000_28c6

jr_000_28aa:
    cp $f7
    jp z, Jump_000_3403

    cp $f6
    jr nz, jr_000_28bd

    ld hl, $7035
    ld b, $01
    call Call_000_3e84
    jr jr_000_28c6

jr_000_28bd:
    call Call_000_3c46
    ld a, [$cc3c]
    and a
    jr nz, jr_000_28cf

Call_000_28c6:
Jump_000_28c6:
jr_000_28c6:
    ld a, [$cc47]
    and a
    jr nz, jr_000_28cf

    call Call_000_3852

Jump_000_28cf:
jr_000_28cf:
    call Call_000_01b9
    ldh a, [$b4]
    bit 0, a
    jr nz, jr_000_28cf

Jump_000_28d8:
    ld a, [$d35d]
    call Call_000_0f8b
    ld a, $90
    ldh [$b0], a
    call Call_000_1e64
    call Call_000_1e6f
    xor a
    ldh [$ba], a
    ld hl, $c219
    ld c, $0f
    ld de, $0010

jr_000_28f3:
    ld a, [hl]
    dec h
    ld [hl], a
    inc h
    add hl, de

Call_000_28f8:
    dec c
    jr nz, jr_000_28f3

    call Call_000_3dba
    ld hl, $cfc3
    res 0, [hl]
    ld a, [$d731]
    bit 3, a

Jump_000_2908:
    call z, Call_000_07d7
    call Call_000_0b06
    pop af
    call Call_000_3e7e
    jp Jump_000_231c


Jump_000_2915:
    push hl
    ld hl, $2938
    call Call_000_3c36
    pop hl
    inc hl
    call Call_000_293d
    ld a, $02
    ld [$cf93], a
    ldh a, [$b8]
    push af
    ld a, $01
    call Call_000_3e7e
    call $69a5
    pop af
    call Call_000_3e7e
    jp Jump_000_28c6


    rla
    and c
    ld [hl], h
    inc l
    ld d, b

Call_000_293d:
    ld a, $01
    ld [$cfca], a
    ld a, h
    ld [$d127], a
    ld a, l
    ld [$d128], a
    ld de, $cf7a

jr_000_294d:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $ff
    jr nz, jr_000_294d

    ret


Call_000_2955:
Jump_000_2955:
    xor a

Call_000_2956:
    ldh [$8b], a

Jump_000_2958:
    ldh [$8c], a
    ldh [$8d], a
    inc hl
    ldh a, [$b8]
    push af

Call_000_2960:
    ld a, $01
    call Call_000_3e7e
    call $6d97
    pop af

Jump_000_2969:
    call Call_000_3e7e
    jp Jump_000_28c6


Jump_000_296f:
    ld hl, $6385
    ld b, $07
    call Call_000_3e84
    jp Jump_000_28c6


Jump_000_297a:
    ld hl, $2983
    call Call_000_3c36
    jp Jump_000_28c6


    rla
    cp h

Jump_000_2985:
    ld [hl], h
    inc l
    ld d, b

Jump_000_2988:
    ld hl, $29b3
    call Call_000_3c36
    ld a, [$d731]
    res 5, a

Jump_000_2993:
    ld [$d731], a
    ld a, [$d78f]

Call_000_2999:
    bit 7, a
    jr z, jr_000_29b0

Jump_000_299d:
    xor a
    ld [$da46], a
    ld [$d70c], a
    ld [$d70d], a
    ld [$d78f], a
    ld [$cf0d], a
    ld [$d61e], a

jr_000_29b0:
    jp Jump_000_28cf


    rla
    jp z, Jump_000_2c74

    ld d, b

Jump_000_29b8:
    ld hl, $29c1
    call Call_000_3c36
    jp Jump_000_28c6


    rla

Jump_000_29c2:
    db $f4
    ld [hl], h
    inc l
    ld d, b

Jump_000_29c6:
    ld hl, $5004
    ld b, $3f
    call Call_000_3e84
    jp Jump_000_28d8


Jump_000_29d1:
    ld a, $04
    call Call_000_3e7e
    ld a, [$d6ff]
    ld [$d119], a
    ld a, $8f
    call Call_000_2238

Jump_000_29e1:
    ld b, $01
    ld hl, $6f80
    call Call_000_3e84

Jump_000_29e9:
    ld b, $03
    ld hl, $427b
    call Call_000_3e84
    call Call_000_231c

jr_000_29f4:
    call Call_000_3aab
    ld b, a
    bit 6, a
    jr z, jr_000_2a1a

    ld a, [$cc26]
    and a
    jr nz, jr_000_29f4

    ld a, [$cc2a]
    and a

Jump_000_2a06:
    jr nz, jr_000_29f4

    ld a, [$d74a]
    bit 5, a
    ld a, $06
    jr nz, jr_000_2a12

    dec a

jr_000_2a12:
    ld [$cc26], a
    call Call_000_3be6
    jr jr_000_29f4

jr_000_2a1a:
    bit 7, a
    jr z, jr_000_2a37

    ld a, [$d74a]
    bit 5, a
    ld a, [$cc26]
    ld c, $07

Call_000_2a28:
    jr nz, jr_000_2a2b

    dec c

jr_000_2a2b:
    cp c

Jump_000_2a2c:
    jr nz, jr_000_29f4

    xor a
    ld [$cc26], a
    call Call_000_3be6
    jr jr_000_29f4

jr_000_2a37:
    call Call_000_3bd9
    ld a, [$cc26]
    ld [$cc2d], a

Jump_000_2a40:
    ld a, b

Jump_000_2a41:
    and $0a

Jump_000_2a43:
    jp nz, Jump_000_2a72

    call Call_000_36ec
    ld a, [$d74a]

Jump_000_2a4c:
    bit 5, a
    ld a, [$cc26]
    jr nz, jr_000_2a54

Call_000_2a53:
    inc a

jr_000_2a54:
    cp $00
    jp z, $5c22

    cp $01
    jp z, $5c36

    cp $02
    jp z, $5ead

    cp $03
    jp z, $600a

    cp $04
    jp z, $6195

    cp $05
    jp z, $61a8

Jump_000_2a72:
jr_000_2a72:
    call Call_000_01b9
    ldh a, [$b3]
    bit 0, a

Jump_000_2a79:
    jr nz, jr_000_2a72

    call Call_000_36a3
    jp Jump_000_28d8


Call_000_2a81:
    ld c, $00

jr_000_2a83:
    ld a, [hl+]
    ld e, a
    ld d, $08

jr_000_2a87:
    srl e
    ld a, $00
    adc c
    ld c, a
    dec d
    jr nz, jr_000_2a87

    dec b
    jr nz, jr_000_2a83

    ld a, c
    ld [$d11d], a
    ret


Call_000_2a98:
    ld b, $01
    ld hl, $68a6
    jp Jump_000_3e84


Call_000_2aa0:
    ld de, $d348

Jump_000_2aa3:
    ld hl, $ffa1
    ld c, $03

Jump_000_2aa8:
    ld a, $0b
    call Call_000_3eb4
    ld a, $13
    ld [$d124], a
    call Call_000_3010
    ld a, $b2
    call Call_000_3736

Jump_000_2aba:
    jp Jump_000_373e


Call_000_2abd:
Jump_000_2abd:
    ldh a, [$b8]
    push af
    ld a, $3d
    call Call_000_3e7e
    call $5be1
    pop af
    call Call_000_3e7e
    ret


Call_000_2acd:
    push bc
    ldh a, [$b8]
    push af
    ld a, $3d
    call Call_000_3e7e
    call $5b71
    pop bc
    ld a, b
    call Call_000_3e7e
    pop bc
    ret


Call_000_2ae0:
    xor a
    ldh [$ba], a
    ld a, $01
    ldh [$b7], a
    ld a, [$d059]
    and a
    jr nz, jr_000_2af1

    ld a, $01
    jr jr_000_2af3

jr_000_2af1:
    ld a, $0f

jr_000_2af3:
    call Call_000_35d9
    ld hl, $d72f
    set 6, [hl]
    xor a
    ld [$cc35], a
    ld [$d129], a
    ld a, [$cf8a]
    ld l, a
    ld a, [$cf8b]

Call_000_2b09:
    ld h, a
    ld a, [hl]
    ld [$d129], a
    ld a, $0d
    ld [$d124], a
    call Call_000_3010
    call Call_000_231c
    ld hl, $c3cc
    ld de, $090e
    ld a, [$cf93]
    and a
    jr nz, jr_000_2b28

    call Call_000_231c

jr_000_2b28:
    ld a, $01
    ld [$cc37], a
    ld a, [$d129]
    cp $02
    jr c, jr_000_2b36

    ld a, $02

jr_000_2b36:
    ld [$cc28], a
    ld a, $04
    ld [$cc24], a
    ld a, $05
    ld [$cc25], a
    ld a, $07

Call_000_2b45:
    ld [$cc29], a
    ld c, $0a

Jump_000_2b4a:
    call Call_000_372f

Jump_000_2b4d:
    xor a
    ldh [$ba], a
    call Call_000_2d52
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    ld a, [$d059]
    and a
    jr z, jr_000_2b7b

    ld a, $ed
    ld [$c3f5], a

Jump_000_2b65:
    ld c, $14
    call Call_000_372f
    xor a
    ld [$cc26], a
    ld hl, $c3f5
    ld a, l
    ld [$cc30], a
    ld a, h
    ld [$cc31], a
    jr jr_000_2b8b

jr_000_2b7b:
    call Call_000_1e6f
    call Call_000_3aab
    push af
    call Call_000_3b6d
    pop af
    bit 0, a
    jp z, Jump_000_2c27

jr_000_2b8b:
    ld a, [$cc26]
    call Call_000_3bd9
    ld a, $01
    ld [$d12d], a
    ld [$d12c], a
    xor a
    ld [$cc37], a
    ld a, [$cc26]
    ld c, a
    ld a, [$cc36]
    add c
    ld c, a
    ld a, [$d129]
    and a
    jp z, Jump_000_2d33

    dec a
    cp c
    jp c, Jump_000_2d33

Jump_000_2bb2:
    ld a, c
    ld [$cf91], a
    ld a, [$cf93]
    cp $03
    jr nz, jr_000_2bbf

    sla c

Jump_000_2bbf:
jr_000_2bbf:
    ld a, [$cf8a]
    ld l, a
    ld a, [$cf8b]
    ld h, a

Call_000_2bc7:
    inc hl
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$cf90], a
    ld a, [$cf93]
    and a
    jr z, jr_000_2bf6

    push hl
    call Call_000_37d2
    pop hl
    ld a, [$cf93]
    cp $03
    jr nz, jr_000_2be6

    inc hl
    ld a, [hl]
    ld [$cf96], a

jr_000_2be6:
    ld a, [$cf90]
    ld [$d0b4], a
    ld a, $01
    ld [$d0b6], a
    call Call_000_3762
    jr jr_000_2c0b

jr_000_2bf6:
    ld hl, $d162
    ld a, [$cf8a]
    cp l
    ld hl, $d2b4
    jr z, jr_000_2c05

    ld hl, $de05

jr_000_2c05:
    ld a, [$cf91]
    call Call_000_139a

jr_000_2c0b:
    ld de, $cd6d
    call Call_000_3813
    ld a, $01
    ld [$d12d], a
    ld a, [$cc26]
    ld [$d12c], a
    xor a
    ldh [$b7], a
    ld hl, $d72f
    res 6, [hl]
    jp Jump_000_35e8


Jump_000_2c27:
    bit 1, a
    jp nz, Jump_000_2d33

    bit 2, a
    jp nz, $68c9

    ld b, a
    bit 7, b
    ld hl, $cc36
    jr z, jr_000_2c48

    ld a, [hl]
    add $03

Call_000_2c3c:
    ld b, a
    ld a, [$d129]
    cp b
    jp c, Jump_000_2b4d

    inc [hl]
    jp Jump_000_2b4d


jr_000_2c48:
    ld a, [hl]
    and a
    jp z, Jump_000_2b4d

    dec [hl]
    jp Jump_000_2b4d


Call_000_2c51:
    ld hl, $c463

Call_000_2c54:
Jump_000_2c54:
    ld bc, $0103
    ld a, [$cf93]

Jump_000_2c5a:
    cp $02
    jr nz, jr_000_2c64

    ld hl, $c45b
    ld bc, $010b

jr_000_2c64:
    call Call_000_16f0

Jump_000_2c67:
    ld hl, $c478
    ld a, [$cf93]
    cp $02
    jr nz, jr_000_2c74

    ld hl, $c470

Jump_000_2c74:
jr_000_2c74:
    ld de, $2d28

Call_000_2c77:
    call Call_000_1723
    xor a
    ld [$cf95], a
    jp Jump_000_2c9a


Jump_000_2c81:
jr_000_2c81:
    call Call_000_381e
    ldh a, [$b3]
    bit 0, a
    jp nz, Jump_000_2d1c

    bit 1, a
    jp nz, Jump_000_2d21

    bit 6, a
    jr nz, jr_000_2c9a

    bit 7, a
    jr nz, jr_000_2cac

    jr jr_000_2c81

Jump_000_2c9a:
jr_000_2c9a:
    ld a, [$cf96]
    inc a
    ld b, a
    ld hl, $cf95
    inc [hl]
    ld a, [hl]
    cp b
    jr nz, jr_000_2cb6

    ld a, $01
    ld [hl], a
    jr jr_000_2cb6

jr_000_2cac:
    ld hl, $cf95
    dec [hl]
    jr nz, jr_000_2cb6

    ld a, [$cf96]
    ld [hl], a

jr_000_2cb6:
    ld hl, $c479
    ld a, [$cf93]
    cp $02
    jr nz, jr_000_2d10

    ld c, $03
    ld a, [$cf95]
    ld b, a
    ld hl, $ff9f
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_000_2ccd:
    ld de, $ffa1
    ld hl, $ff8d
    push bc
    ld a, $0b
    call Call_000_3eb4
    pop bc
    dec b
    jr nz, jr_000_2ccd

    ldh a, [$8e]
    and a
    jr z, jr_000_2cfc

    xor a
    ldh [$a2], a
    ldh [$a3], a

Jump_000_2ce7:
    ld a, $02
    ldh [$a4], a
    ld a, $0d
    call Call_000_3eb4
    ldh a, [$a2]
    ldh [$9f], a
    ldh a, [$a3]
    ldh [$a0], a
    ldh a, [$a4]
    ldh [$a1], a

jr_000_2cfc:
    ld hl, $c474
    ld de, $2d2c
    call Call_000_1723
    ld de, $ff9f
    ld c, $a3
    call Call_000_13ad
    ld hl, $c471

jr_000_2d10:
    ld de, $cf95
    ld bc, $8102
    call Call_000_3c5b
    jp Jump_000_2c81


Jump_000_2d1c:
    xor a
    ld [$cc35], a
    ret


Jump_000_2d21:
    xor a
    ld [$cc35], a
    ld a, $ff
    ret


    pop af
    or $f7
    ld d, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Jump_000_2d33:
    ld a, [$cc26]
    ld [$d12c], a
    ld a, $02
    ld [$d12d], a
    ld [$cc37], a

Jump_000_2d41:
    xor a
    ldh [$b7], a
    ld hl, $d72f

Call_000_2d47:
Jump_000_2d47:
    res 6, [hl]
    call Call_000_35e8
    xor a
    ld [$cc35], a

Call_000_2d50:
    scf
    ret


Call_000_2d52:
Jump_000_2d52:
    ld hl, $c3e1

Jump_000_2d55:
    ld bc, $090e
    call Call_000_1692
    ld a, [$cf8a]

Call_000_2d5e:
    ld e, a
    ld a, [$cf8b]
    ld d, a

Call_000_2d63:
    inc de

Jump_000_2d64:
    ld a, [$cc36]
    ld c, a
    ld a, [$cf93]
    cp $03
    ld a, c
    jr nz, jr_000_2d73

    add a
    sla c

jr_000_2d73:
    add e
    ld e, a
    jr nc, jr_000_2d78

    inc d

jr_000_2d78:
    ld hl, $c3f6
    ld b, $04

Jump_000_2d7d:
    ld a, b
    ld [$cf91], a
    ld a, [de]
    ld [$d11d], a
    cp $ff
    jp z, Jump_000_2e86

    push bc
    push de
    push hl
    push hl

Jump_000_2d8e:
    push de
    ld a, [$cf93]
    and a
    jr z, jr_000_2d9e

    cp $01
    jr z, jr_000_2dc0

    call Call_000_2ec4
    jr jr_000_2dc3

jr_000_2d9e:
    push hl
    ld hl, $d162
    ld a, [$cf8a]
    cp l
    ld hl, $d2b4

Call_000_2da9:
    jr z, jr_000_2dae

    ld hl, $de05

jr_000_2dae:
    ld a, [$cf91]
    ld b, a
    ld a, $04
    sub b
    ld b, a
    ld a, [$cc36]
    add b
    call Call_000_139a
    pop hl
    jr jr_000_2dc3

jr_000_2dc0:
    call Call_000_2f4d

jr_000_2dc3:
    call Call_000_1723

Jump_000_2dc6:
    pop de
    pop hl
    ld a, [$cf92]
    and a
    jr z, jr_000_2de3

    push hl
    ld a, [de]
    ld de, $4494
    ld [$cf90], a

Jump_000_2dd6:
    call Call_000_37d2
    pop hl

Jump_000_2dda:
    ld bc, $0019
    add hl, bc
    ld c, $a3
    call Call_000_13ad

jr_000_2de3:
    ld a, [$cf93]
    and a
    jr nz, jr_000_2e27

    ld a, [$d11d]
    push af
    push hl
    ld hl, $d162

Call_000_2df1:
    ld a, [$cf8a]
    cp l
    ld a, $00
    jr z, jr_000_2dfb

    ld a, $02

jr_000_2dfb:
    ld [$cc49], a
    ld hl, $cf91
    ld a, [hl]
    ld b, a
    ld a, $04
    sub b
    ld b, a
    ld a, [$cc36]
    add b
    ld [hl], a
    call Call_000_1132
    ld a, [$cc49]
    and a
    jr z, jr_000_2e1b

    ld a, [$cf9a]
    ld [$cfb8], a

jr_000_2e1b:
    pop hl
    ld bc, $001c
    add hl, bc
    call Call_000_1303
    pop af

Call_000_2e24:
    ld [$d11d], a

jr_000_2e27:
    pop hl
    pop de
    inc de
    ld a, [$cf93]
    cp $03
    jr nz, jr_000_2e74

    ld a, [$d11d]
    ld [$cf90], a
    call Call_000_3001
    ld a, [$d123]
    and a
    jr nz, jr_000_2e61

    push hl
    ld bc, $001c
    add hl, bc
    ld a, $f1
    ld [hl+], a
    ld a, [$d11d]
    push af
    ld a, [de]
    ld [$cf96], a

Call_000_2e50:
    push de
    ld de, $d11d
    ld [de], a
    ld bc, $0102
    call Call_000_3c5b
    pop de
    pop af
    ld [$d11d], a
    pop hl

jr_000_2e61:
    inc de
    pop bc
    inc c
    push bc
    inc c

Jump_000_2e66:
    ld a, [$cc35]
    and a
    jr z, jr_000_2e74

    add a
    cp c
    jr nz, jr_000_2e74

    dec hl
    ld a, $ec
    ld [hl+], a

jr_000_2e74:
    ld bc, $0028

Call_000_2e77:
    add hl, bc
    pop bc
    inc c

Jump_000_2e7a:
    dec b
    jp nz, Jump_000_2d7d

    ld bc, $fff8
    add hl, bc
    ld a, $ee
    ld [hl], a
    ret


Jump_000_2e86:
    ld de, $2e8c
    jp Jump_000_1723


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_000_2e93:
Jump_000_2e93:
    push hl
    ldh a, [$b8]
    push af
    ld a, $3a
    ldh [$b8], a
    ld [$2000], a
    ld a, [$d11d]
    dec a
    ld hl, $4000
    ld c, $0a
    ld b, $00
    call Call_000_3a74
    ld de, $cd6d
    push de
    ld bc, $000a
    call Call_000_00b1
    ld hl, $cd77
    ld [hl], $50
    pop de
    pop af
    ldh [$b8], a
    ld [$2000], a
    pop hl
    ret


Call_000_2ec4:
    push hl
    push bc
    ld a, [$d11d]
    cp $c4
    jr nc, jr_000_2edf

    ld [$d0b4], a
    ld a, $04
    ld [$d0b5], a
    ld a, $01
    ld [$d0b6], a
    call Call_000_3762
    jr jr_000_2ee2

jr_000_2edf:
    call Call_000_2ee8

jr_000_2ee2:
    ld de, $cd6d
    pop bc
    pop hl
    ret


Call_000_2ee8:
Jump_000_2ee8:
    push hl
    push de
    push bc
    ld a, [$d11d]
    push af
    cp $c9
    jr nc, jr_000_2f00

    add $05
    ld [$d11d], a
    ld hl, $2f33
    ld bc, $0002
    jr jr_000_2f06

Call_000_2f00:
jr_000_2f00:
    ld hl, $2f31
    ld bc, $0002

jr_000_2f06:
    ld de, $cd6d
    call Call_000_00b1
    ld a, [$d11d]
    sub $c8
    ld b, $f6

jr_000_2f13:
    sub $0a
    jr c, jr_000_2f1a

    inc b

Jump_000_2f18:
    jr jr_000_2f13

jr_000_2f1a:
    add $0a
    push af
    ld a, b
    ld [de], a
    inc de
    pop af
    ld b, $f6

Call_000_2f23:
    add b
    ld [de], a
    inc de
    ld a, $50
    ld [de], a
    pop af
    ld [$d11d], a
    pop bc
    pop de

Call_000_2f2f:
    pop hl
    ret


    sub e

Jump_000_2f32:
    adc h
    add a
    adc h

Call_000_2f35:
    cp $c4
    jr c, jr_000_2f3c

    cp $c9
    ret


jr_000_2f3c:
    and a
    ret


Call_000_2f3e:
    ld hl, $2f47
    ld de, $0001
    jp Jump_000_3da7


    rrca
    inc de
    add hl, sp
    ld b, [hl]
    sub h
    rst $38

Call_000_2f4d:
    push hl
    ld a, $02
    ld [$d0b5], a
    ld a, [$d11d]
    ld [$d0b4], a
    ld a, $2f
    ld [$d0b6], a
    call Call_000_3762
    ld de, $cd6d
    pop hl

Jump_000_2f65:
    ret


Call_000_2f66:
Jump_000_2f66:
    ldh a, [$b8]
    push af

Call_000_2f69:
Jump_000_2f69:
    ld a, [$d35d]
    call Call_000_0f8b
    call Call_000_0061
    call Call_000_36a3
    call Call_000_0b06
    call Call_000_0828
    call Call_000_007b
    pop af
    call Call_000_3e7e
    ret


Call_000_2f83:
Jump_000_2f83:
    ldh a, [$b8]
    push af
    ld a, [$d35d]
    call Call_000_0f8b
    call Call_000_0061
    call Call_000_0828
    call Call_000_007b
    pop af
    call Call_000_3e7e
    ret


Call_000_2f9a:
    ld hl, $d72d
    res 4, [hl]
    ld b, $1c
    ld hl, $5014
    jp Jump_000_3e84


Call_000_2fa7:
    ldh a, [$b8]
    push af
    ld a, $3a
    call Call_000_3e7e
    call $4a5e
    pop af
    call Call_000_3e7e
    ret


Call_000_2fb7:
    ld a, [$d499]
    bit 0, a

Call_000_2fbc:
    ret z

    ld a, [$d49a]
    and a
    ret nz

    ld hl, $c972
    inc [hl]
    ld a, [hl]
    cp $06

Call_000_2fc9:
    ret c

    xor a
    ld [hl], a
    ld a, $0c
    ld [$d49a], a
    ld a, $88
    ldh [rSB], a

Jump_000_2fd5:
    ld a, $01

Jump_000_2fd7:
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


Call_000_2fde:
    ld a, $01
    ld [$cc3c], a
    ret


Call_000_2fe4:
    ld b, $03
    ld hl, $52ed
    jp Jump_000_3e84


Call_000_2fec:
    ldh a, [$b8]
    push af
    ld a, $03
    ldh [$b8], a
    ld [$2000], a
    call $6635
    pop de
    ld a, d
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_3001:
    push hl
    push de

Jump_000_3003:
    push bc
    ld b, $03
    ld hl, $66a8
    call Call_000_3e84

Jump_000_300c:
    pop bc
    pop de
    pop hl
    ret


Call_000_3010:
Jump_000_3010:
    ldh a, [$b8]
    push af
    ld a, $01

Jump_000_3015:
    call Call_000_3e7e
    call $71bf
    pop bc

Call_000_301c:
Jump_000_301c:
    ld a, b
    call Call_000_3e7e
    ret


Call_000_3021:
    push af
    ldh a, [$fe]
    and a
    jr z, jr_000_303e

    push bc
    push de
    push hl
    ldh a, [rBGP]
    ld b, a
    ld a, [$def1]
    cp b
    jr z, jr_000_303b

    ld b, $1c
    ld hl, $6524

Call_000_3038:
    call Call_000_3e84

jr_000_303b:
    pop hl

Call_000_303c:
    pop de
    pop bc

jr_000_303e:
    pop af
    ret


Call_000_3040:
Jump_000_3040:
    push af
    ldh a, [$fe]
    and a
    jr z, jr_000_305f

    push bc
    push de
    push hl
    ldh a, [rOBP0]
    ld b, a
    ld a, [$def2]
    cp b
    jr z, jr_000_305c

Call_000_3052:
    ld b, $1c

Call_000_3054:
    ld hl, $656c
    ld c, $01

Jump_000_3059:
    call Call_000_3e84

jr_000_305c:
    pop hl
    pop de
    pop bc

jr_000_305f:
    pop af
    ret


Call_000_3061:
Jump_000_3061:
    push af
    ldh a, [$fe]
    and a
    jr z, jr_000_3080

    push bc
    push de
    push hl
    ldh a, [rOBP1]
    ld b, a
    ld a, [$def3]
    cp b
    jr z, jr_000_307d

    ld b, $1c
    ld hl, $656c
    ld c, $02

Jump_000_307a:
    call Call_000_3e84

jr_000_307d:
    pop hl
    pop de
    pop bc

jr_000_3080:
    pop af
    ret


Call_000_3082:
Jump_000_3082:
    ldh a, [$b8]
    push af
    call Call_000_27c2
    ld a, $08
    call Call_000_3e7e
    call $531e
    ld a, $02
    call Call_000_3e7e
    call $509d
    pop af

Call_000_3099:
    call Call_000_3e7e
    ret


Call_000_309d:
    ld a, [$cc57]
    and a
    ret nz

    ld a, [$d735]
    bit 1, a
    ret nz

    ld a, [$d72f]
    and $80
    ret


Call_000_30ae:
    ld hl, $d735
    bit 0, [hl]
    res 0, [hl]
    jr nz, jr_000_30e2

Call_000_30b7:
    ld a, [$cc57]
    and a
    ret z

    dec a
    add a
    ld d, $00

Call_000_30c0:
    ld e, a
    ld hl, $30dc
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$b8]
    push af
    ld a, [$cc58]
    call Call_000_3e7e
    ld a, [$cf10]
    call Call_000_3d93
    pop af
    call Call_000_3e7e
    ret


    ld c, h
    ld h, l
    ld [hl+], a
    ld h, [hl]

Call_000_30e0:
    add l
    ld h, [hl]

jr_000_30e2:
    ld b, $06
    ld hl, $64ea

Call_000_30e7:
    jp Jump_000_3e84


Jump_000_30ea:
    ld b, $06
    ld hl, $6527
    jp Jump_000_3e84


    ret


Call_000_30f3:
    ld a, h
    ld [$da2f], a
    ld a, l
    ld [$da30], a
    ret


Call_000_30fc:
    push af
    push de
    call Call_000_30f3
    pop hl
    pop af
    push hl
    ld hl, $d732

Call_000_3107:
    bit 4, [hl]
    res 4, [hl]
    jr z, jr_000_3110

    ld a, [$da38]

Call_000_3110:
jr_000_3110:
    pop hl
    ld [$da38], a
    call Call_000_3d93
    ld a, [$da38]
    ret


Call_000_311b:
Jump_000_311b:
    push de

Call_000_311c:
    ld de, $cf5e
    ld bc, $0011
    call Call_000_00b1
    pop hl

Call_000_3126:
    ld de, $cf6f
    ld bc, $000b
    jp Jump_000_00b1


Call_000_312f:
    push de
    push af
    ld d, $00
    ld e, a
    ld hl, $da2f
    ld a, [hl+]

Jump_000_3138:
    ld l, [hl]

Jump_000_3139:
    ld h, a
    add hl, de
    pop af
    and a
    jr nz, jr_000_3145

    ld a, [hl]
    ld [$cc55], a
    jr jr_000_3161

jr_000_3145:
    cp $02
    jr z, jr_000_315e

    cp $04
    jr z, jr_000_315e

    cp $06
    jr z, jr_000_315e

    cp $08
    jr z, jr_000_315e

    cp $0a
    jr nz, jr_000_3161

    ld a, [hl+]
    ld d, [hl]
    ld e, a
    jr jr_000_3161

jr_000_315e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_3161:
    pop de
    ret


Call_000_3163:
    ld a, $10
    jp Jump_000_3eb4


Call_000_3168:
    call Call_000_30f3
    xor a
    call Call_000_312f
    ld a, $02
    call Call_000_312f
    ld a, [$cc55]
    ld c, a
    ld b, $02
    call Call_000_3163
    ld a, c
    and a
    jr z, jr_000_3189

    ld a, $06
    call Call_000_312f

Call_000_3186:
    jp Jump_000_3c36


jr_000_3189:
    ld a, $04
    call Call_000_312f
    call Call_000_3c36
    ld a, $0a
    call Call_000_312f
    push de
    ld a, $08
    call Call_000_312f
    pop de
    call Call_000_32f0
    ld hl, $d732
    set 4, [hl]
    ld hl, $cd60
    bit 0, [hl]
    ret nz

    call Call_000_3306
    ld hl, $da38
    inc [hl]

Call_000_31b2:
    jp Jump_000_31f9


Call_000_31b5:
Jump_000_31b5:
    call Call_000_32a2
    ld a, [$cf13]
    cp $ff
    jr nz, jr_000_31c7

    xor a
    ld [$cf13], a
    ld [$cc55], a
    ret


jr_000_31c7:
    ld hl, $d732
    set 3, [hl]
    ld [$cd4f], a
    xor a
    ld [$cd50], a
    ld a, $4c
    call Call_000_3eb4
    ld a, $f0
    ld [$cd6b], a
    xor a
    ldh [$b4], a
    call Call_000_326b
    ld hl, $da38
    inc [hl]

Call_000_31e7:
    ret


    ld a, [$d72f]
    and $01
    ret nz

    ld [$cd6b], a
    ld a, [$cf13]
    ldh [$8c], a
    call Call_000_2817

Jump_000_31f9:
    xor a
    ld [$cd6b], a
    call Call_000_3273
    ld hl, $d72c
    set 6, [hl]
    set 7, [hl]
    ld hl, $d72d
    set 1, [hl]
    ld hl, $da38
    inc [hl]
    ret


Call_000_3211:
    ld hl, $d125
    set 5, [hl]
    set 6, [hl]

Jump_000_3218:
    ld hl, $d72c
    res 7, [hl]
    ld hl, $cd60
    res 0, [hl]
    ld a, [$d056]
    cp $ff
    jp z, Jump_000_325d

Jump_000_322a:
    ld a, $02
    call Call_000_312f
    ld a, [$cc55]
    ld c, a
    ld b, $01
    call Call_000_3163
    ld a, [$d712]
    cp $c8
    jr nc, jr_000_3255

    ld hl, $d5cd
    ld de, $0002
    ld a, [$cf13]
    call Call_000_3da7

Jump_000_324b:
    inc hl
    ld a, [hl]
    ld [$cc4d], a
    ld a, $11
    call Call_000_3eb4

jr_000_3255:
    ld hl, $d72f
    bit 4, [hl]
    res 4, [hl]
    ret nz

Jump_000_325d:
    xor a
    ld [$cd6b], a
    ldh [$b4], a
    ldh [$b3], a
    ldh [$b2], a
    ld [$da38], a
    ret


Call_000_326b:
    ld b, $15
    ld hl, $67cd
    jp Jump_000_3e84


Call_000_3273:
    ld a, [$cd2d]
    ld [$d058], a
    ld [$d712], a
    cp $c8
    ld a, [$cd2e]
    jr c, jr_000_3287

    ld [$d05c], a
    ret


jr_000_3287:
    ld [$d126], a

Jump_000_328a:
    ret


Call_000_328b:
    ld hl, $6745
    jr jr_000_329d

Call_000_3290:
    ld hl, $6765
    jr jr_000_329d

Call_000_3295:
    ld hl, $6789
    jr jr_000_329d

Call_000_329a:
    ld hl, $67a9

jr_000_329d:
    ld b, $15
    jp Jump_000_3e84


Call_000_32a2:
    xor a
    call Call_000_312f
    ld d, h
    ld e, l

jr_000_32a8:
    call Call_000_30f3
    ld a, [de]
    ld [$cf13], a
    ld [$cc55], a
    cp $ff

Call_000_32b4:
    ret z

    ld a, $02

Call_000_32b7:
    call Call_000_312f
    ld b, $02
    ld a, [$cc55]
    ld c, a
    call Call_000_3163

Call_000_32c3:
    ld a, c
    and a
    jr nz, jr_000_32e8

    push hl
    push de
    push hl
    xor a
    call Call_000_312f
    inc hl
    ld a, [hl]
    pop hl
    ld [$cd3e], a
    ld a, [$cf13]
    swap a
    ld [$cd3d], a
    ld a, $39
    call Call_000_3eb4
    pop de
    pop hl
    ld a, [$cd3d]
    and a
    ret nz

jr_000_32e8:
    ld hl, $000c
    add hl, de
    ld d, h
    ld e, l
    jr jr_000_32a8

Call_000_32f0:
    ldh a, [$b8]
    ld [$d091], a
    ld a, h
    ld [$d08b], a
    ld a, l
    ld [$d08c], a
    ld a, d

Call_000_32fe:
    ld [$d08d], a
    ld a, e

Call_000_3302:
    ld [$d08e], a
    ret


Call_000_3306:
    ld hl, $d503
    ld d, $00

Jump_000_330b:
    ld a, [$cf13]
    dec a
    add a
    ld e, a
    add hl, de
    ld a, [hl+]
    ld [$cd2d], a
    ld a, [hl]
    ld [$cd2e], a
    jp Jump_000_3379


Call_000_331d:
    push hl
    ld hl, $d72c
    bit 7, [hl]
    res 7, [hl]
    pop hl

Jump_000_3326:
    ret z

Call_000_3327:
    ldh a, [$b8]
    push af
    ld a, [$d091]
    ldh [$b8], a
    ld [$2000], a
    push hl
    ld b, $09
    ld hl, $7dff
    call Call_000_3e84
    ld hl, $336b
    call Call_000_3c36
    pop hl

Call_000_3342:
    pop af

Call_000_3343:
    ldh [$b8], a

Jump_000_3345:
    ld [$2000], a
    ld b, $3a
    ld hl, $6a02
    call Call_000_3e84
    jp Jump_000_373e


Call_000_3353:
    ld a, [$cf0b]
    and a
    jr nz, jr_000_3362

    ld a, [$d08b]
    ld h, a
    ld a, [$d08c]
    ld l, a
    ret


jr_000_3362:
    ld a, [$d08d]
    ld h, a
    ld a, [$d08e]
    ld l, a

Call_000_336a:
    ret


    rla
    ld b, l
    ld b, b
    ld h, $08
    call Call_000_3353
    call Call_000_1919
    jp Jump_000_23d2


Jump_000_3379:
    ld a, [$cd2d]
    cp $e1
    ret z

    cp $f2
    ret z

    cp $f3
    ret z

Jump_000_3385:
    ld a, [$d05b]
    and a
    ret nz

    xor a
    ld [$cfc6], a
    call Call_000_2233
    ld a, $1f

Call_000_3393:
    ld [$c0ef], a
    ld [$c0f0], a
    ld a, [$cd2d]
    ld b, a
    ld hl, $33c8

jr_000_33a0:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_33ac

    cp b
    jr nz, jr_000_33a0

    ld a, $f5
    jr jr_000_33bd

jr_000_33ac:
    ld hl, $33c3

jr_000_33af:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_33bb

    cp b

Call_000_33b5:
    jr nz, jr_000_33af

Call_000_33b7:
    ld a, $f8
    jr jr_000_33bd

jr_000_33bb:
    ld a, $fb

jr_000_33bd:
    ld [$c0ee], a
    jp Jump_000_2238


Call_000_33c3:
    set 1, [hl]

Call_000_33c5:
    jp c, $ffe8

    push de
    reti


    call c, $e3dd
    db $e4
    push hl
    and $ff

Call_000_33d1:
jr_000_33d1:
    ld a, [hl+]
    cp $ff
    ret z

Call_000_33d5:
    cp b
    jr nz, jr_000_33ea

    ld a, [hl+]
    cp c
    jr nz, jr_000_33eb

Call_000_33dc:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ccd3
    call Call_000_3509
    dec a
    ld [$cd38], a
    ret


jr_000_33ea:
    inc hl

jr_000_33eb:
    inc hl
    inc hl
    jr jr_000_33d1

Jump_000_33ef:
    call Call_000_36ec
    ld b, $01
    ld hl, $778e
    jr jr_000_3408

Jump_000_33f9:
    call Call_000_36ec
    ld b, $08
    ld hl, $546f
    jr jr_000_3408

Jump_000_3403:
    ld b, $14
    ld hl, $667d

Call_000_3408:
jr_000_3408:
    call Call_000_3e84
    jp Jump_000_28cf


Jump_000_340e:
    ld b, $05
    ld hl, $7cb0
    jr jr_000_3408

Call_000_3415:
Jump_000_3415:
    xor a
    ld [$cd3b], a

Jump_000_3419:
    ld [$c206], a
    ld hl, $d72f
    set 7, [hl]
    ret


Call_000_3422:
Jump_000_3422:
    ld a, $1c
    call Call_000_3eb4
    ld a, b
    and a

Call_000_3429:
    ret


Call_000_342a:
    ld a, [$d471]
    and $3f
    ld [$d471], a
    ld hl, $d16a
    ld c, $06
    ld b, $39

jr_000_3439:
    ld a, [hl]
    cp $54
    jr nz, jr_000_345c

    push hl
    ld de, $0008
    add hl, de
    ld a, [hl+]
    cp b
    jr z, jr_000_3453

    ld a, [hl+]
    cp b
    jr z, jr_000_3453

    ld a, [hl+]
    cp b
    jr z, jr_000_3453

    ld a, [hl+]
    cp b
    jr nz, jr_000_345b

jr_000_3453:
    ld a, [$d471]
    set 6, a
    ld [$d471], a

jr_000_345b:
    pop hl

jr_000_345c:
    ld de, $002c
    add hl, de
    dec c
    jr nz, jr_000_3439

    call Call_000_3467
    ret


Call_000_3467:
    push hl
    push bc

Call_000_3469:
    ld hl, $4db8
    ld b, $3f
    call Call_000_3e84
    pop bc
    pop hl
    ret nc

    ld a, [$d471]
    set 7, a
    ld [$d471], a
    ret


Call_000_347d:
    ld [$d11d], a
    ld b, $01
    ld hl, $7abf
    jp Jump_000_3e84


Call_000_3488:
Jump_000_3488:
    call Call_000_3490
    ld c, $06
    jp Jump_000_372f


Call_000_3490:
    ld a, $09
    ldh [$8b], a
    call Call_000_34f9
    ldh a, [$8d]
    ld [hl], a
    ret


    ld de, $fff9
    add hl, de
    ld [hl], a
    ret


Call_000_34a1:
    ldh a, [$8c]
    swap a
    add $0e
    ld l, a
    ld h, $c2
    ld c, [hl]
    dec c
    swap c
    ldh a, [$8d]

Call_000_34b0:
    add c
    ld c, a
    ldh a, [$8c]
    swap a
    add $02
    ld l, a
    dec h
    ld [hl], c
    ret


Call_000_34bc:
    ld a, [$d360]
    ld b, a
    ld a, [$d361]
    ld c, a

Jump_000_34c4:
    xor a

Call_000_34c5:
    ld [$cd3d], a

jr_000_34c8:
    ld a, [hl+]
    cp $ff
    jr z, jr_000_34df

    push hl
    ld hl, $cd3d
    inc [hl]
    pop hl
    cp b
    jr z, jr_000_34d9

Call_000_34d6:
    inc hl
    jr jr_000_34c8

jr_000_34d9:
    ld a, [hl+]
    cp c
    jr nz, jr_000_34c8

    scf
    ret


jr_000_34df:
    and a
    ret


Call_000_34e1:
    push hl
    ld hl, $c204
    ldh a, [$8c]
    swap a
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl+]
    sub $04
    ld b, a
    ld a, [hl]
    sub $04
    ld c, a
    pop hl
    jp Jump_000_34c4


Call_000_34f9:
    ld h, $c1
    jr jr_000_34ff

Call_000_34fd:
    ld h, $c2

jr_000_34ff:
    ldh a, [$8b]
    ld b, a
    ldh a, [$8c]
    swap a
    add b
    ld l, a
    ret


Call_000_3509:
    xor a

Jump_000_350a:
    ld [$ccd2], a

jr_000_350d:
    ld a, [de]

Jump_000_350e:
    cp $ff
    jr z, jr_000_3528

    ldh [$8b], a
    inc de
    ld a, [de]
    ld b, $00
    ld c, a
    ld a, [$ccd2]
    add c
    ld [$ccd2], a
    ldh a, [$8b]
    call Call_000_166e
    inc de
    jr jr_000_350d

jr_000_3528:
    ld a, $ff
    ld [hl], a
    ld a, [$ccd2]
    inc a
    ret


Call_000_3530:
    push hl
    call Call_000_354b
    ld [hl], $fe
    call Call_000_3555
    ldh a, [$8d]
    ld [hl], a
    pop hl
    ret


Call_000_353e:
Jump_000_353e:
    push hl
    call Call_000_354b
    ld [hl], $ff
    call Call_000_3555
    ld [hl], $ff
    pop hl
    ret


Call_000_354b:
    ld h, $c2
    ldh a, [$8c]
    swap a
    add $06
    ld l, a
    ret


Call_000_3555:
    push de
    ld hl, $d4e3
    ldh a, [$8c]
    dec a
    add a
    ld e, a
    ld d, $00
    add hl, de
    pop de
    ret


Call_000_3563:
    call Call_000_35bb
    ld a, [$d12a]
    and a
    jr nz, jr_000_3594

    ld a, $0e
    call Call_000_35d9
    ld a, [$d030]
    dec a
    ld hl, $5893
    ld bc, $0005
    call Call_000_3a74
    ld de, $d032
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld de, $d045
    ld a, [hl+]
    ld [de], a

Jump_000_358b:
    inc de
    ld a, [hl+]
    ld [de], a
    call Call_000_359e
    jp Jump_000_35e8


jr_000_3594:
    ld hl, $d032
    ld de, $5a97
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_000_359e:
    ld a, [$d030]
    cp $1e

Call_000_35a3:
    ret nz

    ld a, [$d05c]
    cp $2a
    ret c

    ld de, $7c81
    cp $2e
    jr c, jr_000_35b4

    ld de, $7c81

jr_000_35b4:
    ld hl, $d032

Jump_000_35b7:
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Call_000_35bb:
    ld b, $3d
    ld hl, $67a5
    jp Jump_000_3e84


Call_000_35c3:
    ld de, $d346
    ld hl, $ff9f
    ld c, $03
    jp Jump_000_3a7b


Call_000_35ce:
Jump_000_35ce:
    ld de, $d5a3
    ld hl, $ffa0
    ld c, $02
    jp Jump_000_3a7b


Call_000_35d9:
    ld [$cf09], a
    ldh a, [$b8]
    ld [$cf08], a
    ld a, [$cf09]
    call Call_000_3e7e
    ret


Call_000_35e8:
Jump_000_35e8:
    ld a, [$cf08]
    call Call_000_3e7e
    ret


Call_000_35ef:
    call Call_000_370f
    call Call_000_3602
    jr jr_000_362b

    ld a, $14
    ld [$d124], a
    call Call_000_3602
    jp Jump_000_3010


Call_000_3602:
    xor a
    ld [$d12b], a
    ld hl, $c43a
    ld bc, $080f
    ret


Call_000_360d:
    call Call_000_370f
    ld a, $06
    ld [$d12b], a
    ld hl, $c423
    ld bc, $080c
    jr jr_000_362b

    call Call_000_370f
    ld a, $03
    ld [$d12b], a
    ld hl, $c438
    ld bc, $080d

jr_000_362b:
    ld a, $14
    ld [$d124], a
    call Call_000_3010

Jump_000_3633:
    jp Jump_000_371b


Call_000_3636:
    sub b
    ret nc

    cpl
    add $01
    scf
    ret


Call_000_363d:
Jump_000_363d:
    call Call_000_353e

Jump_000_3640:
    push hl
    push bc
    call Call_000_354b
    xor a
    ld [hl], a
    ld hl, $cc5b
    ld c, $00

jr_000_364c:
    ld a, [de]

Jump_000_364d:
    ld [hl+], a
    inc de
    inc c
    cp $ff

Jump_000_3652:
    jr nz, jr_000_364c

    ld a, c
    ld [$cf0f], a
    pop bc
    ld hl, $d72f
    set 0, [hl]
    pop hl
    xor a
    ld [$cd3b], a
    ld [$ccd3], a

Call_000_3666:
    dec a
    ld [$cd6b], a
    ld [$cd3a], a
    ret


Call_000_366e:
    push hl
    ld hl, $ffe7
    xor a
    ld [hl-], a
    ld a, [hl-]
    and a
    jr z, jr_000_3681

    ld a, [hl+]

jr_000_3679:
    sub [hl]
    jr c, jr_000_3681

    inc hl
    inc [hl]
    dec hl
    jr jr_000_3679

jr_000_3681:
    pop hl
    ret


Call_000_3683:
    ldh a, [rLCDC]
    bit 7, a
    jr nz, jr_000_3697

    ld hl, $4600
    ld de, $8800
    ld bc, $0400

Call_000_3692:
    ld a, $04
    jp Jump_000_15d4


jr_000_3697:
    ld de, $4600
    ld hl, $8800
    ld bc, $0480
    jp Jump_000_1636


Call_000_36a3:
Jump_000_36a3:
    ldh a, [rLCDC]
    bit 7, a
    jr nz, jr_000_36b7

    ld hl, $4e18
    ld de, $9600
    ld bc, $0200
    ld a, $04
    jp Jump_000_009d


jr_000_36b7:
    ld de, $4e18
    ld hl, $9600
    ld bc, $0420
    jp Jump_000_15fe


Call_000_36c3:
    ldh a, [rLCDC]
    bit 7, a
    jr nz, jr_000_36d7

    ld hl, $4a20
    ld de, $9620
    ld bc, $01e0
    ld a, $04
    jp Jump_000_009d


jr_000_36d7:
    ld de, $4a20
    ld hl, $9620
    ld bc, $041e
    jp Jump_000_15fe


Call_000_36e3:
    ld hl, $d0aa
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_000_23f8


Call_000_36ec:
    ld hl, $c3a0
    ld de, $cd81
    ld bc, $0168
    jp Jump_000_00b1


Call_000_36f8:
Jump_000_36f8:
    call Call_000_3700
    ld a, $01
    ldh [$ba], a
    ret


Call_000_3700:
    xor a
    ldh [$ba], a
    ld hl, $cd81
    ld de, $c3a0
    ld bc, $0168
    jp Jump_000_00b1


Call_000_370f:
Jump_000_370f:
    ld hl, $c3a0
    ld de, $c508
    ld bc, $0168
    jp Jump_000_00b1


Call_000_371b:
Jump_000_371b:
    xor a
    ldh [$ba], a
    ld hl, $c508
    ld de, $c3a0
    ld bc, $0168
    call Call_000_00b1
    ld a, $01
    ldh [$ba], a
    ret


Call_000_372f:
Jump_000_372f:
jr_000_372f:
    call Call_000_1e64
    dec c
    jr nz, jr_000_372f

    ret


Call_000_3736:
Jump_000_3736:
    push af
    call Call_000_373e
    pop af
    jp Jump_000_2238


Call_000_373e:
Jump_000_373e:
    ld a, [$d082]
    and $80
    ret nz

    push hl

jr_000_3745:
    ld hl, $c02a
    xor a
    or [hl]
    inc hl
    or [hl]

Jump_000_374c:
    inc hl
    inc hl
    or [hl]
    and a
    jr nz, jr_000_3745

    pop hl
    ret


    nop
    ld b, b
    nop
    ld b, b
    ld e, $49
    or a
    ld b, l

Call_000_375c:
    ld [hl], d
    jp nc, $d9ab

    ld a, [hl]
    ld e, c

Call_000_3762:
    ld a, [$d0b4]
    ld [$d11d], a
    cp $c4
    jp nc, Jump_000_2ee8

    ldh a, [$b8]
    push af
    push hl
    push bc
    push de
    ld a, [$d0b5]
    dec a
    jr nz, jr_000_3784

    call Call_000_2e93
    ld hl, $000b
    add hl, de
    ld e, l
    ld d, h
    jr jr_000_37c2

jr_000_3784:
    ld a, [$d0b6]
    call Call_000_3e7e
    ld a, [$d0b5]
    dec a
    add a
    ld d, $00
    ld e, a
    jr nc, jr_000_3795

    inc d

jr_000_3795:
    ld hl, $3754
    add hl, de
    ld a, [hl+]
    ldh [$96], a
    ld a, [hl]
    ldh [$95], a
    ldh a, [$95]
    ld h, a

Jump_000_37a2:
    ldh a, [$96]
    ld l, a
    ld a, [$d0b4]
    ld b, a
    ld c, $00

jr_000_37ab:
    ld d, h
    ld e, l

jr_000_37ad:
    ld a, [hl+]
    cp $50
    jr nz, jr_000_37ad

    inc c
    ld a, b
    cp c

Call_000_37b5:
    jr nz, jr_000_37ab

    ld h, d
    ld l, e
    ld de, $cd6d
    ld bc, $0014
    call Call_000_00b1

jr_000_37c2:
    ld a, e
    ld [$cf8c], a
    ld a, d
    ld [$cf8d], a
    pop de
    pop bc
    pop hl
    pop af
    call Call_000_3e7e
    ret


Call_000_37d2:
    ldh a, [$b8]
    push af
    ld a, [$cf93]
    cp $01
    ld a, $01
    jr nz, jr_000_37e0

    ld a, $0f

jr_000_37e0:
    call Call_000_3e7e

Call_000_37e3:
    ld hl, $cf8e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf90]
    cp $c4
    jr nc, jr_000_3803

    ld bc, $0003

jr_000_37f3:
    add hl, bc
    dec a
    jr nz, jr_000_37f3

    dec hl
    ld a, [hl-]
    ldh [$8d], a
    ld a, [hl-]
    ldh [$8c], a
    ld a, [hl]
    ldh [$8b], a
    jr jr_000_380b

Jump_000_3803:
jr_000_3803:
    ld a, $3d
    call Call_000_3e7e
    call $65d4

jr_000_380b:
    ld de, $ff8b
    pop af
    call Call_000_3e7e
    ret


Call_000_3813:
Jump_000_3813:
    ld hl, $cf4a

Call_000_3816:
jr_000_3816:
    ld a, [de]
    inc de

Call_000_3818:
    ld [hl+], a

Jump_000_3819:
    cp $50
    jr nz, jr_000_3816

    ret


Call_000_381e:
    call Call_000_01b9
    ldh a, [$b7]
    and a
    ldh a, [$b3]
    jr z, jr_000_382a

    ldh a, [$b4]

jr_000_382a:
    ldh [$b5], a
    ldh a, [$b3]
    and a
    jr z, jr_000_3836

    ld a, $1e
    ldh [$d5], a
    ret


jr_000_3836:
    ldh a, [$d5]

Call_000_3838:
    and a

Jump_000_3839:
    jr z, jr_000_383f

    xor a
    ldh [$b5], a
    ret


jr_000_383f:
    ldh a, [$b4]
    and $03
    jr z, jr_000_384d

    ldh a, [$b6]
    and a
    jr nz, jr_000_384d

    xor a
    ldh [$b5], a

jr_000_384d:
    ld a, $05
    ldh [$d5], a
    ret


Call_000_3852:
Jump_000_3852:
    ldh a, [$8b]
    push af
    ldh a, [$8c]
    push af
    xor a
    ldh [$8b], a
    ld a, $06
    ldh [$8c], a

jr_000_385f:
    push hl
    ld a, [$d09a]
    and a
    jr z, jr_000_3872

    push de
    push bc
    ld hl, $5753
    ld b, $1c
    call Call_000_3e84
    pop bc
    pop de

jr_000_3872:
    ld hl, $c4f2
    call Call_000_3bf1
    pop hl
    call Call_000_381e
    ld a, $2d
    call Call_000_3eb4
    ldh a, [$b5]
    and $03
    jr z, jr_000_385f

    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    ret


Call_000_388e:
Jump_000_388e:
    ld a, [$d12a]
    cp $04
    jr z, jr_000_38a0

    call Call_000_3852
    call Call_000_373e
    ld a, $90

Jump_000_389d:
    jp Jump_000_2238


jr_000_38a0:
    ld c, $41
    jp Jump_000_372f


Call_000_38a5:
Jump_000_38a5:
    push hl
    push bc
    ld hl, $660e

Jump_000_38aa:
    ld b, $3d
    call Call_000_3e84
    pop bc
    pop hl
    ret


Call_000_38b2:
    push hl
    push de
    push bc
    ldh a, [$b8]
    push af
    ld a, $3d
    call Call_000_3e7e
    call $6672
    pop af
    call Call_000_3e7e
    pop bc
    pop de

Call_000_38c6:
    pop hl
    ret


Call_000_38c8:
Jump_000_38c8:
    ld a, [$d72f]
    bit 6, a
    ret nz

    ld a, [$d357]
    bit 1, a

Jump_000_38d3:
    ret z

    push hl
    push de
    push bc
    ld a, [$d357]
    bit 0, a
    jr z, jr_000_38e7

    ld a, [$d354]
    and $0f
    ldh [$d5], a

Jump_000_38e5:
    jr jr_000_38eb

jr_000_38e7:
    ld a, $01
    ldh [$d5], a

jr_000_38eb:
    call Call_000_01b9
    ldh a, [$b4]
    bit 0, a
    jr z, jr_000_38f6

    jr jr_000_38fa

jr_000_38f6:
    bit 1, a
    jr z, jr_000_38ff

jr_000_38fa:
    call Call_000_1e64
    jr jr_000_3904

jr_000_38ff:
    ldh a, [$d5]
    and a
    jr nz, jr_000_38eb

jr_000_3904:
    pop bc

Call_000_3905:
    pop de
    pop hl
    ret


Call_000_3908:
Jump_000_3908:
jr_000_3908:
    ld a, [hl+]
    ld [de], a

Jump_000_390a:
    inc de
    ld a, h
    cp b
    jr nz, jr_000_3908

    ld a, l
    cp c
    jr nz, jr_000_3908

    ret


Call_000_3914:
    ld hl, $7a0f
    ld b, $01
    jp Jump_000_3e84


Call_000_391c:
    push hl
    push de
    push bc
    ld b, $03
    ld hl, $7161
    call Call_000_3e84
    pop bc
    pop de
    pop hl
    ret


Call_000_392b:
Jump_000_392b:
    ld c, $00

jr_000_392d:
    inc c
    call Call_000_393f
    ldh a, [$97]
    ld [de], a
    inc de
    ldh a, [$98]
    ld [de], a
    inc de
    ld a, c
    cp $05

Jump_000_393c:
    jr nz, jr_000_392d

    ret


Call_000_393f:
    push hl
    push de
    push bc
    ld a, b
    ld d, a
    push hl
    ld hl, $d0b7
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld e, a
    pop hl
    push hl
    sla c
    ld a, d
    and a
    jr z, jr_000_3974

    add hl, bc

jr_000_3956:
    xor a
    ldh [$96], a
    ldh [$97], a
    inc b
    ld a, b
    cp $ff

Call_000_395f:
    jr z, jr_000_3974

    ldh [$98], a

Call_000_3963:
    ldh [$99], a
    call Call_000_38a5
    ld a, [hl-]
    ld d, a
    ldh a, [$98]
    sub d
    ld a, [hl+]
    ld d, a
    ldh a, [$97]
    sbc d
    jr c, jr_000_3956

jr_000_3974:
    srl c
    pop hl
    push bc
    ld bc, $000b
    add hl, bc

Jump_000_397c:
    pop bc
    ld a, c
    cp $02
    jr z, jr_000_39b4

    cp $03
    jr z, jr_000_39bb

Call_000_3986:
    cp $04
    jr z, jr_000_39c0

    cp $05
    jr z, jr_000_39c8

    push bc
    ld a, [hl]
    swap a
    and $01
    sla a
    sla a
    sla a
    ld b, a
    ld a, [hl+]
    and $01
    sla a
    sla a
    add b
    ld b, a
    ld a, [hl]
    swap a
    and $01
    sla a
    add b
    ld b, a
    ld a, [hl]
    and $01
    add b
    pop bc
    jr jr_000_39cc

jr_000_39b4:
    ld a, [hl]
    swap a
    and $0f
    jr jr_000_39cc

jr_000_39bb:
    ld a, [hl]
    and $0f
    jr jr_000_39cc

jr_000_39c0:
    inc hl
    ld a, [hl]
    swap a
    and $0f
    jr jr_000_39cc

jr_000_39c8:
    inc hl
    ld a, [hl]
    and $0f

jr_000_39cc:
    ld d, $00
    add e

Call_000_39cf:
    ld e, a
    jr nc, jr_000_39d3

    inc d

jr_000_39d3:
    sla e
    rl d
    srl b
    srl b
    ld a, b
    add e

Call_000_39dd:
    jr nc, jr_000_39e0

    inc d

Call_000_39e0:
jr_000_39e0:
    ldh [$98], a
    ld a, d

Jump_000_39e3:
    ldh [$97], a
    xor a
    ldh [$96], a
    ld a, [$d126]
    ldh [$99], a
    call Call_000_38a5
    ldh a, [$96]
    ldh [$95], a
    ldh a, [$97]
    ldh [$96], a
    ldh a, [$98]
    ldh [$97], a
    ld a, $64
    ldh [$99], a
    ld a, $03
    ld b, a
    call Call_000_38b2
    ld a, c
    cp $01
    ld a, $05
    jr nz, jr_000_3a1f

    ld a, [$d126]
    ld b, a
    ldh a, [$98]
    add b
    ldh [$98], a
    jr nc, jr_000_3a1d

    ldh a, [$97]
    inc a
    ldh [$97], a

jr_000_3a1d:
    ld a, $0a

jr_000_3a1f:
    ld b, a
    ldh a, [$98]

Jump_000_3a22:
    add b

Jump_000_3a23:
    ldh [$98], a
    jr nc, jr_000_3a2c

    ldh a, [$97]
    inc a
    ldh [$97], a

jr_000_3a2c:
    ldh a, [$97]
    cp $04
    jr nc, jr_000_3a3c

    cp $03
    jr c, jr_000_3a44

    ldh a, [$98]
    cp $e8
    jr c, jr_000_3a44

jr_000_3a3c:
    ld a, $03
    ldh [$97], a
    ld a, $e7
    ldh [$98], a

jr_000_3a44:
    pop bc
    pop de

Jump_000_3a46:
    pop hl
    ret


Call_000_3a48:
    ldh a, [$b8]
    push af
    ld a, $03
    call Call_000_3e7e
    call $7323
    pop bc
    ld a, b
    call Call_000_3e7e
    ret


Call_000_3a59:
    ldh a, [$b8]
    push af
    ld a, $03
    call Call_000_3e7e
    call $73a4
    pop bc
    ld a, b
    call Call_000_3e7e
    ret


Call_000_3a6a:
Jump_000_3a6a:
    and a
    ret z

    ld bc, $000b

jr_000_3a6f:
    add hl, bc
    dec a
    jr nz, jr_000_3a6f

    ret


Call_000_3a74:
    and a
    ret z

jr_000_3a76:
    add hl, bc
    dec a
    jr nz, jr_000_3a76

    ret


Call_000_3a7b:
Jump_000_3a7b:
jr_000_3a7b:
    ld a, [de]
    cp [hl]
    ret nz

    inc de
    inc hl
    dec c
    jr nz, jr_000_3a7b

    ret


Call_000_3a84:
Jump_000_3a84:
    ld h, $c3
    swap a
    ld l, a
    call Call_000_3aa0
    push bc
    ld a, $08

Jump_000_3a8f:
    add c
    ld c, a
    call Call_000_3aa0
    pop bc

Call_000_3a95:
    ld a, $08
    add b
    ld b, a
    call Call_000_3aa0
    ld a, $08
    add c
    ld c, a

Call_000_3aa0:
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld a, [de]

Call_000_3aa5:
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ret


Call_000_3aab:
Jump_000_3aab:
    xor a
    ld [$d09a], a

Call_000_3aaf:
    ldh a, [$8b]
    push af
    ldh a, [$8c]

Jump_000_3ab4:
    push af

Jump_000_3ab5:
    xor a
    ldh [$8b], a
    ld a, $06
    ldh [$8c], a

Jump_000_3abc:
    xor a
    ld [$d08a], a
    call Call_000_3b6d
    call Call_000_3ddb

jr_000_3ac6:
    push hl

Jump_000_3ac7:
    ld a, [$d09a]
    and a
    jr z, jr_000_3ad5

    ld b, $1c
    ld hl, $578c
    call Call_000_3e84

jr_000_3ad5:
    pop hl
    call Call_000_381e
    ldh a, [$b5]
    and a
    jr nz, jr_000_3af9

    push hl
    ld hl, $c48e
    call Call_000_3bf1
    pop hl
    ld a, [$cc34]
    dec a
    jr z, jr_000_3aee

    jr jr_000_3ac6

jr_000_3aee:
    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    xor a
    ld [$cc4a], a
    ret


jr_000_3af9:
    xor a
    ld [$cc4b], a
    ldh a, [$b5]
    ld b, a
    bit 0, a
    jr nz, jr_000_3b3d

    bit 6, a
    jr z, jr_000_3b22

    ld a, [$cc26]
    and a
    jr z, jr_000_3b14

Call_000_3b0e:
Jump_000_3b0e:
    dec a
    ld [$cc26], a
    jr jr_000_3b3d

jr_000_3b14:
    ld a, [$cc4a]

Jump_000_3b17:
    and a
    jr z, jr_000_3b65

    ld a, [$cc28]
    ld [$cc26], a
    jr jr_000_3b3d

jr_000_3b22:
    bit 7, a
    jr z, jr_000_3b3d

    ld a, [$cc26]
    inc a
    ld c, a
    ld a, [$cc28]
    cp c
    jr nc, jr_000_3b39

    ld a, [$cc4a]
    and a
    jr z, jr_000_3b65

    ld c, $00

jr_000_3b39:
    ld a, c
    ld [$cc26], a

jr_000_3b3d:
    ld a, [$cc29]
    and b
    jp z, Jump_000_3abc

jr_000_3b44:
    ldh a, [$b5]
    and $03
    jr z, jr_000_3b58

    push hl
    ld hl, $cd60
    bit 5, [hl]
    pop hl
    jr nz, jr_000_3b58

    ld a, $90
    call Call_000_2238

jr_000_3b58:
    pop af
    ldh [$8c], a
    pop af
    ldh [$8b], a
    xor a
    ld [$cc4a], a
    ldh a, [$b5]
    ret


jr_000_3b65:
    ld a, [$cc37]
    and a
    jr z, jr_000_3b3d

    jr jr_000_3b44

Call_000_3b6d:
    ld a, [$cc24]
    and a
    jr z, jr_000_3b7d

    ld hl, $c3a0
    ld bc, $0014

jr_000_3b79:
    add hl, bc
    dec a
    jr nz, jr_000_3b79

jr_000_3b7d:
    ld a, [$cc25]
    ld b, $00
    ld c, a
    add hl, bc
    push hl
    ld a, [$cc2a]
    and a
    jr z, jr_000_3b9d

    ld bc, $0028
    push af

Jump_000_3b8f:
    ldh a, [$fa]
    bit 1, a
    jr z, jr_000_3b98

    ld bc, $0014

jr_000_3b98:
    pop af

jr_000_3b99:
    add hl, bc
    dec a
    jr nz, jr_000_3b99

jr_000_3b9d:
    ld a, [hl]
    cp $ed
    jr nz, jr_000_3ba6

    ld a, [$cc27]
    ld [hl], a

jr_000_3ba6:
    pop hl
    ld a, [$cc26]

Jump_000_3baa:
    and a
    jr z, jr_000_3bbf

    ld bc, $0028
    push af
    ldh a, [$fa]
    bit 1, a
    jr z, jr_000_3bba

    ld bc, $0014

jr_000_3bba:
    pop af

jr_000_3bbb:
    add hl, bc
    dec a

Call_000_3bbd:
    jr nz, jr_000_3bbb

jr_000_3bbf:
    ld a, [hl]
    cp $ed
    jr z, jr_000_3bc7

    ld [$cc27], a

jr_000_3bc7:
    ld a, $ed
    ld [hl], a
    ld a, l
    ld [$cc30], a
    ld a, h
    ld [$cc31], a
    ld a, [$cc26]
    ld [$cc2a], a
    ret


Call_000_3bd9:
    ld b, a
    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld [hl], $ec
    ld a, b
    ret


Call_000_3be6:
Jump_000_3be6:
    ld a, [$cc30]
    ld l, a
    ld a, [$cc31]
    ld h, a
    ld [hl], $7f
    ret


Call_000_3bf1:
    ld a, [hl]
    ld b, a
    ld a, $ee
    cp b
    jr nz, jr_000_3c10

    ldh a, [$8b]
    dec a
    ldh [$8b], a
    ret nz

    ldh a, [$8c]

Call_000_3c00:
    dec a
    ldh [$8c], a

Jump_000_3c03:
    ret nz

    ld a, $7f
    ld [hl], a
    ld a, $ff
    ldh [$8b], a
    ld a, $06
    ldh [$8c], a
    ret


jr_000_3c10:
    ldh a, [$8b]
    and a
    ret z

    dec a
    ldh [$8b], a
    ret nz

    dec a
    ldh [$8b], a
    ldh a, [$8c]
    dec a
    ldh [$8c], a
    ret nz

    ld a, $06
    ldh [$8c], a

Call_000_3c25:
Jump_000_3c25:
    ld a, $ee
    ld [hl], a
    ret


Call_000_3c29:
Jump_000_3c29:
    xor a
    jr jr_000_3c2e

Call_000_3c2c:
Jump_000_3c2c:
    ld a, $01

jr_000_3c2e:
    ld [$cf0c], a
    xor a
    ld [$cc3c], a
    ret


Call_000_3c36:
Jump_000_3c36:
    push hl
    ld a, $01
    ld [$d124], a

Jump_000_3c3c:
    call Call_000_3010

Jump_000_3c3f:
    call Call_000_231c
    call Call_000_3ddb
    pop hl

Call_000_3c46:
    ld bc, $c4b9
    jp Jump_000_1919


    ldh a, [$b8]
    push af
    ld a, b
    call Call_000_3e7e
    call Call_000_3c36
    pop af
    call Call_000_3e7e
    ret


Call_000_3c5b:
Jump_000_3c5b:
    push bc
    xor a
    ldh [$95], a
    ldh [$96], a
    ldh [$97], a

Call_000_3c63:
    ld a, b
    and $0f
    cp $01
    jr z, jr_000_3c84

Jump_000_3c6a:
    cp $02
    jr z, jr_000_3c7b

    ld a, [de]
    ldh [$96], a
    inc de
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    jr jr_000_3c87

jr_000_3c7b:
    ld a, [de]
    ldh [$97], a
    inc de
    ld a, [de]
    ldh [$98], a
    jr jr_000_3c87

jr_000_3c84:
    ld a, [de]
    ldh [$98], a

jr_000_3c87:
    push de
    ld d, b
    ld a, c
    ld b, a
    xor a
    ld c, a
    ld a, b
    cp $02
    jr z, jr_000_3cf8

    cp $03
    jr z, jr_000_3ce8

    cp $04
    jr z, jr_000_3cd7

    cp $05
    jr z, jr_000_3cc6

Call_000_3c9e:
    cp $06
    jr z, jr_000_3cb4

    ld a, $0f
    ldh [$99], a
    ld a, $42
    ldh [$9a], a
    ld a, $40
    ldh [$9b], a
    call Call_000_3d21
    call Call_000_3d85

jr_000_3cb4:
    ld a, $01
    ldh [$99], a
    ld a, $86
    ldh [$9a], a
    ld a, $a0
    ldh [$9b], a
    call Call_000_3d21
    call Call_000_3d85

jr_000_3cc6:
    xor a
    ldh [$99], a

Call_000_3cc9:
    ld a, $27
    ldh [$9a], a
    ld a, $10
    ldh [$9b], a
    call Call_000_3d21

Jump_000_3cd4:
    call Call_000_3d85

jr_000_3cd7:
    xor a
    ldh [$99], a
    ld a, $03
    ldh [$9a], a
    ld a, $e8
    ldh [$9b], a
    call Call_000_3d21
    call Call_000_3d85

jr_000_3ce8:
    xor a
    ldh [$99], a
    xor a
    ldh [$9a], a
    ld a, $64
    ldh [$9b], a
    call Call_000_3d21
    call Call_000_3d85

jr_000_3cf8:
    ld c, $00
    ldh a, [$98]

Call_000_3cfc:
jr_000_3cfc:
    cp $0a
    jr c, jr_000_3d05

    sub $0a
    inc c
    jr jr_000_3cfc

jr_000_3d05:
    ld b, a
    ldh a, [$95]
    or c
    ldh [$95], a
    jr nz, jr_000_3d12

    call Call_000_3d7f
    jr jr_000_3d16

jr_000_3d12:
    ld a, $f6
    add c
    ld [hl], a

jr_000_3d16:
    call Call_000_3d85
    ld a, $f6
    add b
    ld [hl+], a
    pop de
    dec de
    pop bc
    ret


Call_000_3d21:
Jump_000_3d21:
    ld c, $00

jr_000_3d23:
    ldh a, [$99]
    ld b, a
    ldh a, [$96]
    ldh [$9c], a
    cp b
    jr c, jr_000_3d73

    sub b
    ldh [$96], a
    ldh a, [$9a]
    ld b, a
    ldh a, [$97]
    ldh [$9d], a
    cp b
    jr nc, jr_000_3d45

    ldh a, [$96]
    or $00
    jr z, jr_000_3d6f

    dec a
    ldh [$96], a
    ldh a, [$97]

Call_000_3d45:
jr_000_3d45:
    sub b
    ldh [$97], a
    ldh a, [$9b]
    ld b, a
    ldh a, [$98]
    ldh [$9e], a
    cp b
    jr nc, jr_000_3d65

    ldh a, [$97]
    and a
    jr nz, jr_000_3d60

    ldh a, [$96]
    and a
    jr z, jr_000_3d6b

    dec a
    ldh [$96], a
    xor a

jr_000_3d60:
    dec a
    ldh [$97], a
    ldh a, [$98]

jr_000_3d65:
    sub b
    ldh [$98], a
    inc c
    jr jr_000_3d23

jr_000_3d6b:
    ldh a, [$9d]
    ldh [$97], a

jr_000_3d6f:
    ldh a, [$9c]
    ldh [$96], a

jr_000_3d73:
    ldh a, [$95]
    or c
    jr z, jr_000_3d7f

    ld a, $f6
    add c
    ld [hl], a
    ldh [$95], a
    ret


Call_000_3d7f:
jr_000_3d7f:
    bit 7, d
    ret z

    ld [hl], $f6
    ret


Call_000_3d85:
    bit 7, d
    jr nz, jr_000_3d91

    bit 6, d
    jr z, jr_000_3d91

    ldh a, [$95]
    and a
    ret z

jr_000_3d91:
    inc hl
    ret


Call_000_3d93:
Jump_000_3d93:
    push hl
    push de
    push bc
    add a
    ld d, $00
    ld e, a

Call_000_3d9a:
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $3da3
    push de
    jp hl


    pop bc
    pop de

Call_000_3da5:
    pop hl
    ret


Call_000_3da7:
Jump_000_3da7:
    ld b, $00

Call_000_3da9:
    ld c, a

Jump_000_3daa:
jr_000_3daa:
    ld a, [hl]
    cp $ff
    jr z, jr_000_3db6

    cp c
    jr z, jr_000_3db8

    inc b
    add hl, de
    jr jr_000_3daa

jr_000_3db6:
    and a
    ret


jr_000_3db8:
    scf
    ret


Call_000_3dba:
    ld hl, $401b
    ld b, $05

Jump_000_3dbf:
    jp Jump_000_3e84


Call_000_3dc2:
    call Call_000_0082
    ld a, $01
    ld [$cfca], a
    call Call_000_3e1e
    call Call_000_36f8
    call Call_000_36a3
    call Call_000_3e03
    jr jr_000_3ddb

Call_000_3dd8:
    call Call_000_3df2

Call_000_3ddb:
Jump_000_3ddb:
jr_000_3ddb:
    ld c, $03
    jp Jump_000_372f


Call_000_3de0:
Jump_000_3de0:
    ld a, $e4
    ldh [rBGP], a
    ld a, $d0
    ldh [rOBP0], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ret


Call_000_3df2:
Jump_000_3df2:
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    call Call_000_3021
    call Call_000_3040
    call Call_000_3061
    ret


Call_000_3e03:
Jump_000_3e03:
    ld b, $ff

Call_000_3e05:
Jump_000_3e05:
    ld a, [$cf1a]
    and a
    ret z

    ld a, $45

Jump_000_3e0c:
    jp Jump_000_3eb4


Call_000_3e0f:
    ld a, e
    cp $1b
    ld d, $00
    jr nc, jr_000_3e1c

    cp $0a
    inc d
    jr nc, jr_000_3e1c

    inc d

jr_000_3e1c:
    ld [hl], d
    ret


Call_000_3e1e:
    ld hl, $cfc3
    ld a, [hl]
    push af
    res 0, [hl]
    push hl
    xor a
    ld [$d3a7], a
    call Call_000_0061
    call Call_000_3dba
    call Call_000_007b
    pop hl
    pop af
    ld [hl], a
    call Call_000_07d7
    call Call_000_3683
    jp Jump_000_231c


Call_000_3e3f:
    ld a, b
    ld [$d11d], a
    ld [$cf90], a
    ld a, c
    ld [$cf95], a
    ld hl, $d31c
    call Call_000_2acd
    ret nc

    call Call_000_2ec4
    call Call_000_3813
    scf
    ret


Call_000_3e59:
    ld a, b
    ld [$cf90], a
    ld a, c
    ld [$d126], a
    xor a
    ld [$cc49], a
    ld b, $3d
    ld hl, $66fa
    jp Jump_000_3e84


Call_000_3e6d:
Jump_000_3e6d:
    push hl
    push de
    push bc
    ld b, $3d
    ld hl, $67dc
    call Call_000_3e84
    ldh a, [$d3]

Call_000_3e7a:
    pop bc
    pop de
    pop hl
    ret


Call_000_3e7e:
Jump_000_3e7e:
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_3e84:
Jump_000_3e84:
    ldh a, [$b8]
    push af
    ld a, b
    ldh [$b8], a
    ld [$2000], a
    call Call_000_3e98
    pop bc
    ld a, b
    ldh [$b8], a
    ld [$2000], a
    ret


Call_000_3e98:
    jp hl


Call_000_3e99:
    push af
    ld a, $01
    ld [$6000], a
    ld a, $0a
    ld [$0000], a
    pop af
    ld [$4000], a
    ret


Call_000_3ea9:
Jump_000_3ea9:
    push af

Jump_000_3eaa:
    ld a, $00
    ld [$6000], a
    ld [$0000], a
    pop af
    ret


Call_000_3eb4:
Jump_000_3eb4:
    ld [$cc4e], a
    ldh a, [$b8]
    ld [$cf12], a
    push af
    ld a, $3d
    ldh [$b8], a
    ld [$2000], a
    call $67ed
    ld a, [$d0b6]
    call Call_000_3e7e
    ld de, $3ed2

Call_000_3ed0:
    push de
    jp hl


    pop af
    call Call_000_3e7e
    ret


Call_000_3ed7:
    ld a, [$cc4f]
    ld h, a
    ld a, [$cc50]
    ld l, a
    ld a, [$cc51]
    ld d, a
    ld a, [$cc52]
    ld e, a
    ld a, [$cc53]

Call_000_3eea:
    ld b, a
    ld a, [$cc54]
    ld c, a
    ret


Call_000_3ef0:
Jump_000_3ef0:
    ld b, $07
    ld hl, $64bf
    call Call_000_3e84
    ret


Call_000_3ef9:
    ldh a, [$b8]
    push af
    ldh a, [$b4]
    bit 0, a

Call_000_3f00:
    jr z, jr_000_3f31

    ld a, $3c
    call Call_000_3e7e
    call $65f8
    ldh a, [$ee]
    and a
    jr nz, jr_000_3f1f

    xor a
    ldh [$eb], a
    ld a, [$cd3e]
    call Call_000_3e7e
    call Call_000_3e98
    ldh a, [$eb]
    jr jr_000_3f33

jr_000_3f1f:
    ld a, $35
    call Call_000_3eb4
    ld b, $03
    ld hl, $79de
    call Call_000_3e84
    ldh a, [$db]
    and a
    jr z, jr_000_3f33

jr_000_3f31:
    ld a, $ff

jr_000_3f33:
    ldh [$eb], a
    pop af
    call Call_000_3e7e
    ret


Call_000_3f3a:
Jump_000_3f3a:
    ldh [$8c], a
    ld hl, $3f67
    call Call_000_3f54
    ld hl, $cf11
    set 0, [hl]
    call Call_000_2817

Call_000_3f4a:
    ld hl, $d36b
    ldh a, [$ec]
    ld [hl+], a
    ldh a, [$ed]
    ld [hl], a
    ret


Call_000_3f54:
    ld a, [$d36b]
    ldh [$ec], a
    ld a, [$d36c]
    ldh [$ed], a
    ld a, l
    ld [$d36b], a
    ld a, h
    ld [$d36c], a

Call_000_3f66:
    ret


    ld d, b
    ld h, [hl]
    ld e, d
    ld h, [hl]
    jp $b65b


    ld e, e
    ld sp, hl
    ld h, d
    rla
    ld h, e
    inc e
    ld h, e
    sub e
    ld h, [hl]
    rst $30
    ld e, e
    pop hl
    ld e, e
    dec c

Jump_000_3f7c:
    ld e, h
    inc hl
    ld e, h
    add hl, sp
    ld e, h
    ld [hl+], a
    ld h, [hl]
    daa
    ld h, [hl]
    jp hl


    ld h, [hl]
    ld a, e
    ld h, [hl]
    add b
    ld h, [hl]
    add l
    ld h, [hl]
    adc d

Jump_000_3f8e:
    ld h, [hl]
    xor b
    ld h, [hl]
    xor l
    ld h, [hl]
    jp c, $b266

    ld h, [hl]
    or a
    ld h, [hl]
    cp h
    ld h, [hl]
    adc a
    ld h, [hl]

Jump_000_3f9d:
    sub h
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc [hl]
    ld h, [hl]
    and e
    ld h, [hl]
    ldh [$66], a
    ld bc, $0a67
    ld l, c
    ld d, c
    ld e, l
    and a
    ld e, b
    cp d

Call_000_3fb0:
    ld e, b
    ld d, b
    ld h, b
    adc c
    ld h, b
    ld e, e
    ld e, [hl]

Call_000_3fb7:
    sbc l
    ld l, c
    dec e
    ld a, a
    ld [hl+], a
    ld a, a
    daa
    ld a, a
    ld b, e

Jump_000_3fc0:
    ld h, c
    ld c, c
    ld h, c
    cp b
    ld h, l
    cp l
    ld h, l
    db $db
    ld h, l
    ld b, h
    ld h, l
    cp l

Call_000_3fcc:
    ld h, e
    dec hl
    ld a, [hl]
    ld h, $7e
    adc [hl]
    ld e, h
    inc b
    ld l, c
    adc d
    ld l, c
    ld [hl], b
    ld l, c
    ld a, l
    ld l, c
    db $ec
    ld h, d
    ld c, l
    ld a, d
    inc de

Jump_000_3fe0:
    ld e, a
    ld h, $5f
    ld a, [hl-]
    ld e, a

Jump_000_3fe5:
    ld c, l
    ld e, a

Call_000_3fe7:
    and b
    ld a, d
    db $76
    ld a, d
    sbc e
    ld a, d
    db $d3
    ld a, d
    nop

Jump_000_3ff0:
    ld a, $2d
    ldh [$b8], a
    ld [$2000], a
    jp $71b0


Jump_000_3ffa:
    ldh [$b8], a
    ld [$2000], a
    ret
;. end