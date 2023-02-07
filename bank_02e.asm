;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    nop
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and e
    and b
    cp b
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, [hl]
    or d
    xor b
    xor l
    and [hl]
    xor e
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    or d
    and h
    xor e
    add sp, $49
    adc b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    xor e
    and c
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    or h
    xor e
    and c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    and c
    cp b
    ld c, [hl]
    and e
    or c
    and b
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    add sp, $49
    adc b
    or e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    or d
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    and b
    xor l
    ld c, [hl]
    and b
    or c
    xor [hl]
    xor h
    and b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    xor e
    xor [hl]
    xor [hl]
    xor h
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    and d
    and b
    or e
    and d
    and a
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    or h
    xor l
    cp l
    ld a, a
    or c
    and b
    cp b
    or d
    add sp, $49
    sub e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or e
    and a
    and h
    xor l
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or h
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or e
    xor b
    xor a
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld c, [hl]
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    and b
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    or d
    ld c, c
    xor b
    or e
    ld a, a
    and c
    or h
    or c
    xor l
    or d
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or b
    or h
    xor b
    and h
    or e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    or d
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, [hl]
    and h
    or a
    and d
    xor b
    or e
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    sub [hl]
    and a
    and h
    xor l
    ld c, c
    and h
    or a
    and d
    xor b
    or e
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    and c
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and c
    xor e
    or h
    xor b
    or d
    and a
    db $e3
    ld c, [hl]
    or [hl]
    and a
    xor b
    or e
    and h
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and h
    or a
    xor a
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, [hl]
    and c
    xor e
    and b
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    ld c, [hl]
    and a
    xor [hl]
    or e
    ld a, a
    and l
    xor b
    or c
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and e
    ld c, c
    and l
    xor e
    and b
    xor h
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor a
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld a, a
    and c
    or h
    or c
    xor l
    or d
    ld c, [hl]
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    xor l
    or e
    and h
    xor l
    or d
    and h
    xor e
    cp b
    ld e, a
    ld d, b
    nop
    sub d
    and a
    xor [hl]
    xor [hl]
    or e
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and b
    or e
    ld c, [hl]
    xor a
    or c
    and h
    cp b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $49
    sub [hl]
    xor b
    or e
    and a
    and e
    or c
    and b
    or [hl]
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and b
    xor a
    xor a
    and h
    and e
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor a
    or h
    xor e
    xor e
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, c
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or d
    or e
    xor b
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld c, [hl]
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    xor b
    or e
    ld e, a
    ld d, b
    nop
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    and b
    xor b
    xor h
    ld c, [hl]
    and b
    or e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and c
    xor e
    and b
    or d
    or e
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    and l
    xor [hl]
    or c
    and d
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    and b
    ld a, a
    and l
    xor b
    or c
    and h
    ld c, [hl]
    and a
    xor [hl]
    or d
    and h
    ld e, a
    ld d, b
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and l
    and h
    and h
    xor e
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, c
    or c
    and h
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    or c
    or c
    xor b
    and c
    xor e
    and h
    ld c, [hl]
    or d
    or e
    xor b
    xor l
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld c, [hl]
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld e, a
    ld d, b
    nop
    add a
    and b
    or c
    and e
    and h
    xor l
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    add sp, $4e
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    and b
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    ld c, c
    xor b
    xor h
    xor a
    and b
    and d
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld c, [hl]
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    db $f4
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and e
    and h
    or c
    or d
    db $f4
    ld a, a
    or c
    and h
    xor a
    and h
    xor e
    ld c, c
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld c, [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor e
    cp b
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    xor b
    xor l
    ld e, a
    ld d, b
    nop
    add c
    and h
    or [hl]
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    and a
    and b
    or c
    xor a
    ld a, a
    or d
    or e
    xor b
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    add sp, $7f
    adc b
    or e
    ld c, c
    and a
    xor b
    and e
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and c
    or h
    or d
    and a
    and h
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, [hl]
    xor b
    or e
    ld a, a
    and h
    and b
    or e
    or d
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    or d
    ld e, a
    ld d, b
    nop
    add b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, [hl]
    or d
    xor e
    xor b
    and [hl]
    and a
    or e
    xor e
    cp b
    add sp, $7f
    sub [hl]
    and a
    and h
    xor l
    ld c, [hl]
    and h
    xor l
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld c, c
    xor h
    and b
    cp b
    ld a, a
    or d
    or e
    xor b
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    or e
    xor b
    xor l
    and [hl]
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    ld sp, hl
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld c, [hl]
    or d
    or e
    xor b
    xor l
    and [hl]
    and h
    or c
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    xor [hl]
    or c
    and h
    xor e
    and h
    and [hl]
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or e
    and b
    xor b
    xor e
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor c
    and b
    and c
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and h
    xor l
    and h
    xor h
    cp b
    ld a, a
    or c
    and h
    xor a
    and h
    and b
    or e
    and h
    and e
    xor e
    cp b
    ld e, a
    ld d, b
    nop
    sub l
    and h
    or c
    cp b
    ld a, a
    and e
    xor [hl]
    and d
    xor b
    xor e
    and h
    add sp, $7f
    adc b
    and l
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    xor d
    xor b
    and d
    xor d
    ld a, a
    or h
    xor a
    ld c, c
    or d
    and b
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld c, [hl]
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    or c
    and b
    or e
    and a
    and h
    or c
    ld c, [hl]
    or e
    and a
    and b
    xor l
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, [hl]
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or l
    xor b
    or e
    and b
    xor e
    xor b
    or e
    cp b
    add sp, $4e
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    ld c, c
    and l
    xor e
    xor b
    and h
    or d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor e
    and b
    or c
    and [hl]
    and h
    ld a, a
    or e
    and h
    or c
    or c
    xor b
    or e
    xor [hl]
    or c
    cp b
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    or c
    and h
    cp b
    ld e, a
    ld d, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor e
    xor b
    and h
    or d
    ld c, [hl]
    and b
    or e
    ld a, a
    adc h
    and b
    and d
    and a
    ld a, a
    ld hl, sp+$7f
    or d
    xor a
    and h
    and h
    and e
    db $f4
    ld c, [hl]
    or d
    and h
    and h
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    or c
    and h
    cp b
    add sp, $49
    adc b
    or e
    or d
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    ld a, a
    or e
    and b
    xor e
    xor [hl]
    xor l
    or d
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    and l
    and h
    and b
    or c
    and h
    and e
    ld a, a
    and b
    or d
    ld c, [hl]
    or [hl]
    xor b
    and d
    xor d
    and h
    and e
    ld a, a
    or [hl]
    and h
    and b
    xor a
    xor [hl]
    xor l
    or d
    ld e, a
    ld d, b
    nop
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    and a
    and h
    or [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld c, [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    and b
    xor l
    and [hl]
    or d
    add sp, $7f
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld c, c
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    ld a, [$7ff6]
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor e
    xor b
    or l
    and h
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or c
    and h
    and b
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and a
    xor b
    xor l
    and e
    ld a, a
    and l
    and h
    and h
    or e
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    or [hl]
    and h
    and c
    and c
    and h
    and e
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    and d
    or e
    ld c, [hl]
    and b
    or d
    ld a, a
    and l
    xor e
    xor b
    xor a
    xor a
    and h
    or c
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, c
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or c
    xor b
    or l
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and a
    or h
    xor l
    or e
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    or c
    and h
    cp b
    ld e, a
    ld d, b
    nop
    adc b
    xor l
    and h
    xor a
    or e
    ld a, a
    and b
    or e
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and a
    xor b
    and [hl]
    and a
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    and l
    xor e
    cp b
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, c
    or l
    and h
    or c
    cp b
    ld a, a
    and l
    and b
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and h
    or c
    db $e3
    ld c, [hl]
    or c
    xor b
    or e
    xor [hl]
    or c
    cp b
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and e
    and b
    or e
    and h
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, [hl]
    cp b
    and h
    and b
    or c
    or d
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld c, c
    or d
    and h
    xor l
    or d
    and h
    or d
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor e
    xor b
    and h
    or d
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    xor b
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor b
    or e
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    add sp, $7f
    add b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld c, c
    xor b
    or e
    ld a, a
    or [hl]
    or c
    and b
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    or c
    and h
    and h
    ld c, [hl]
    and c
    or c
    and b
    xor l
    and d
    and a
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    or d
    or e
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    or c
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and h
    xor e
    xor e
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, c
    or d
    or e
    or h
    and e
    xor b
    and h
    and e
    add sp, $7f
    sub d
    xor b
    or a
    ld c, [hl]
    or l
    and b
    or c
    xor b
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld c, [hl]
    and c
    and h
    and h
    xor l
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor b
    or c
    xor h
    and h
    and e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor d
    and h
    and h
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld c, [hl]
    or c
    and b
    xor b
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    xor l
    xor b
    or e
    xor [hl]
    or c
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or d
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    xor b
    xor l
    and [hl]
    or d
    add sp, $49
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    cp b
    and b
    xor l
    xor d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or e
    and b
    xor b
    xor e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    or c
    cp b
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and c
    xor b
    or e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    xor b
    or e
    cp b
    ld c, [hl]
    and c
    or h
    xor b
    xor e
    and e
    or d
    ld a, a
    or h
    xor a
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld c, c
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and l
    and h
    xor b
    or d
    or e
    cp b
    add sp, $4e
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and e
    and b
    or c
    xor d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    and e
    or c
    cp b
    add sp, $4e
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and d
    xor [hl]
    xor e
    and e
    ld c, [hl]
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, c
    and a
    xor b
    and e
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    and b
    or e
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    and b
    ld a, a
    and l
    xor b
    xor l
    and h
    ld a, a
    and e
    and h
    or [hl]
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    and b
    or e
    ld c, [hl]
    or d
    xor e
    and b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and d
    xor e
    and b
    or [hl]
    or d
    add sp, $49
    adc b
    and l
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    xor l
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, [hl]
    or d
    or e
    and b
    or c
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and e
    and b
    cp b
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    xor h
    xor b
    xor e
    and e
    db $e3
    xor h
    and b
    xor l
    xor l
    and h
    or c
    and h
    and e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld c, [hl]
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, c
    and l
    xor b
    and [hl]
    and a
    or e
    add sp, $7f
    add c
    and h
    or [hl]
    and b
    or c
    and h
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    or d
    ld c, [hl]
    or d
    and h
    and d
    or c
    and h
    or e
    and h
    ld a, a
    or l
    and h
    xor l
    xor [hl]
    xor h
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or c
    and h
    or d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and h
    and h
    xor a
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or e
    and a
    xor [hl]
    or c
    xor l
    or d
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, c
    or c
    and h
    or e
    or c
    and b
    and d
    or e
    add sp, $4e
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or c
    and h
    xor e
    and b
    or a
    and h
    and e
    ld e, a
    ld d, b
    nop
    sub e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or d
    and d
    and b
    xor e
    and h
    or d
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or h
    or c
    and e
    cp b
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $49
    adc b
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    and d
    and b
    xor e
    and h
    or d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld c, [hl]
    xor b
    xor l
    ld a, a
    and d
    cp b
    and d
    xor e
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    ld a, a
    and h
    and b
    or c
    or d
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor d
    and h
    xor a
    or e
    ld c, [hl]
    or h
    xor a
    or c
    xor b
    and [hl]
    and a
    or e
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld c, c
    or d
    and h
    xor l
    or d
    and h
    or d
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld a, a
    or d
    or e
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    ld c, [hl]
    or l
    and h
    xor l
    xor [hl]
    xor h
    add sp, $7f
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    or d
    or e
    and b
    and c
    and c
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, c
    and b
    xor l
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor b
    xor h
    xor a
    and b
    and d
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    xor e
    and h
    and b
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or d
    or e
    and h
    and h
    xor e
    db $e3
    xor e
    xor b
    xor d
    and h
    ld c, [hl]
    and a
    xor b
    and e
    and h
    ld a, a
    and b
    and e
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    or e
    and b
    and d
    xor d
    xor e
    and h
    add sp, $49
    adc b
    or e
    or d
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    ld c, [hl]
    and a
    and b
    or c
    and e
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    xor a
    xor b
    and h
    or c
    and d
    and h
    ld a, a
    and b
    ld a, a
    and e
    xor b
    and b
    xor h
    xor [hl]
    xor l
    and e
    ld e, a
    ld d, b
    nop
    add b
    and e
    xor [hl]
    or c
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, [hl]
    and d
    or h
    or e
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor a
    xor e
    and b
    cp b
    and l
    or h
    xor e
    xor l
    and h
    or d
    or d
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld c, c
    and b
    or c
    and h
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, [hl]
    or c
    and b
    or c
    and h
    db $f4
    ld a, a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and e
    xor [hl]
    ld c, [hl]
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    or l
    and h
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    add sp, $49
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and l
    and b
    xor b
    or c
    cp b
    db $f4
    ld a, a
    or c
    and b
    or c
    and h
    xor e
    cp b
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, [hl]
    and c
    cp b
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld e, a
    ld d, b
    nop
    add c
    xor [hl]
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    or h
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    add sp, $7f
    add b
    or d
    ld a, a
    xor b
    or e
    ld c, c
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
    ld c, [hl]
    or d
    xor a
    xor e
    xor b
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    ld c, [hl]
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
    ld e, a
    ld d, b
    nop
    add b
    and d
    and d
    xor [hl]
    or c
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    ld c, [hl]
    and h
    xor l
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    db $f4
    ld c, [hl]
    rst $38
    ld a, a
    xor l
    xor [hl]
    and c
    xor e
    and h
    ld a, a
    or d
    and b
    xor b
    xor l
    or e
    or d
    ld c, c
    or [hl]
    and h
    or c
    and h
    ld a, a
    or h
    xor l
    xor b
    or e
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or c
    and h
    xor b
    xor l
    and d
    and b
    or c
    xor l
    and b
    or e
    and h
    and e
    ld a, a
    and b
    or d
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld e, a
    ld d, b
    nop
    sub h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and b
    xor e
    xor e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and h
    cp b
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    xor l
    or c
    and b
    xor a
    or e
    or h
    or c
    and h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    or e
    and a
    and h
    xor l
    ld c, c
    or d
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor h
    and h
    xor e
    xor [hl]
    and e
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    or h
    xor e
    xor e
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and h
    xor e
    and b
    or d
    or e
    xor b
    and d
    xor b
    or e
    cp b
    add sp, $7f
    add c
    cp b
    ld c, [hl]
    xor b
    xor l
    and a
    and b
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and h
    and h
    xor a
    xor e
    cp b
    db $f4
    ld c, c
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    xor b
    xor l
    and l
    xor e
    and b
    or e
    and h
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    xor e
    xor b
    xor h
    xor b
    or e
    ld e, a
    ld d, b
    nop
    add h
    xor h
    xor b
    or e
    or d
    ld a, a
    or h
    xor e
    or e
    or c
    and b
    or d
    xor [hl]
    xor l
    xor b
    and d
    ld c, [hl]
    and d
    or c
    xor b
    and h
    or d
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor e
    xor b
    and h
    or d
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    and d
    or e
    ld c, c
    and b
    or d
    ld a, a
    and b
    ld a, a
    or d
    xor [hl]
    xor l
    and b
    or c
    ld a, a
    or h
    or d
    and h
    and e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    and c
    db $e3
    ld c, [hl]
    xor c
    and h
    and d
    or e
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    and b
    cp b
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, [hl]
    or d
    or e
    and h
    and b
    xor e
    or e
    and a
    cp b
    ld a, a
    xor h
    and b
    xor l
    xor l
    and h
    or c
    db $f4
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $49
    adc b
    or e
    or d
    ld a, a
    or d
    and a
    and b
    or c
    xor a
    ld a, a
    and l
    and b
    xor l
    and [hl]
    or d
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    xor b
    or e
    and h
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or d
    or h
    and d
    xor d
    ld a, a
    and c
    xor e
    xor [hl]
    xor [hl]
    and e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    xor l
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    and d
    xor e
    or h
    xor h
    xor a
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or [hl]
    and h
    and h
    and e
    or d
    add sp, $7f
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    cp b
    ld c, c
    or e
    xor [hl]
    ld a, a
    cp b
    and b
    xor l
    xor d
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    and a
    or c
    xor b
    and h
    xor d
    or d
    ld a, a
    and a
    xor [hl]
    or c
    or c
    xor b
    and c
    xor e
    cp b
    ld e, a
    ld d, b
    nop
    sub d
    xor h
    and h
    xor e
    xor e
    or d
    ld a, a
    xor b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    cp b
    ld c, [hl]
    and l
    xor [hl]
    or h
    xor e
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld c, [hl]
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    rst $30
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, c
    rst $30
    db $f4
    or $f6
    or $7f
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    ld c, [hl]
    or d
    xor l
    xor b
    and l
    and l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor l
    xor [hl]
    or d
    and h
    db $e3
    ld c, [hl]
    and c
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    xor b
    xor l
    xor d
    ld e, a
    ld d, b
    nop
    add l
    xor e
    and b
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    or c
    xor [hl]
    and b
    and e
    ld c, [hl]
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor a
    and h
    or e
    and b
    xor e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    and d
    and b
    or e
    or e
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, c
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld a, a
    xor a
    xor [hl]
    xor e
    xor e
    and h
    xor l
    add sp, $4e
    sub e
    and a
    and h
    ld a, a
    and l
    xor e
    and b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor e
    xor [hl]
    or h
    and e
    ld e, a
    ld d, b
    nop
    add c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor l
    and b
    or [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    or e
    or c
    and h
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    or e
    or d
    add sp, $7f
    sub e
    and a
    and h
    ld c, c
    xor h
    or h
    or d
    and a
    or c
    xor [hl]
    xor [hl]
    xor h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    or h
    or e
    or c
    xor b
    or e
    xor b
    xor [hl]
    xor l
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    and a
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    and e
    or c
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld c, [hl]
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    or h
    or d
    and a
    or c
    xor [hl]
    xor [hl]
    xor h
    or d
    ld c, c
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld c, [hl]
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    and b
    xor e
    xor e
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    ld a, a
    and h
    cp b
    and h
    or d
    ld a, a
    and b
    and d
    or e
    ld c, [hl]
    and b
    or d
    ld a, a
    or c
    and b
    and e
    and b
    or c
    or d
    add sp, $7f
    adc b
    xor l
    ld a, a
    and b
    ld c, [hl]
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, c
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    and d
    xor e
    or h
    or d
    or e
    and h
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor h
    and b
    xor l
    cp b
    ld a, a
    or e
    xor b
    xor l
    cp b
    ld a, a
    and h
    cp b
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and e
    and h
    or c
    cp b
    ld a, a
    or d
    and d
    and b
    xor e
    and h
    or d
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    xor h
    xor [hl]
    or l
    and h
    add sp, $49
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    and h
    and b
    xor d
    or d
    ld c, [hl]
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor a
    or c
    and h
    and l
    and h
    or c
    or d
    ld a, a
    and e
    and b
    or c
    xor d
    ld c, [hl]
    xor a
    xor e
    and b
    and d
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    or d
    xor a
    and h
    xor l
    and e
    or d
    ld c, [hl]
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, c
    or h
    xor l
    and e
    and h
    or c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    db $f4
    ld c, [hl]
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor a
    xor [hl]
    xor a
    ld c, [hl]
    or h
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    and d
    and b
    or l
    and h
    or d
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or e
    and h
    and b
    xor h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    or c
    xor b
    xor a
    xor e
    and h
    or e
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    ld c, [hl]
    xor [hl]
    or l
    and h
    or c
    ld a, a
    db $fc
    or $7f
    adc h
    adc a
    add a
    add sp, $49
    add e
    or h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, [hl]
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor b
    or e
    cp l
    ld c, [hl]
    and b
    xor l
    ld a, a
    and h
    and b
    or c
    or e
    and a
    or b
    or h
    and b
    xor d
    and h
    ld e, a
    ld d, b
    nop
    add b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    and b
    and d
    or e
    xor b
    or l
    and h
    ld a, a
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    add sp, $4e
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, c
    and b
    xor l
    and e
    ld a, a
    or d
    and a
    xor b
    xor l
    cp b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    add sp, $4e
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    xor a
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or h
    xor a
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and [hl]
    and h
    xor h
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    xor [hl]
    or c
    and h
    and a
    and h
    and b
    and e
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld a, a
    adc b
    or e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    or d
    ld c, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    and d
    and h
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and h
    xor e
    and h
    and [hl]
    and b
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, [hl]
    xor a
    or c
    xor [hl]
    or h
    and e
    ld a, a
    or b
    or h
    and h
    and h
    xor l
    ld e, a
    ld d, b
    nop
    add b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or e
    xor [hl]
    or c
    xor h
    and h
    xor l
    or e
    and h
    and e
    ld c, [hl]
    and c
    cp b
    ld a, a
    and a
    and h
    and b
    and e
    and b
    and d
    and a
    and h
    or d
    add sp, $4e
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld c, c
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor l
    xor [hl]
    or e
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor b
    xor l
    or e
    and h
    xor l
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or d
    xor e
    xor b
    xor h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    xor e
    xor b
    xor h
    and c
    or d
    ld a, a
    and h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and c
    or c
    xor [hl]
    and b
    and e
    ld c, [hl]
    and l
    xor e
    xor b
    xor a
    xor a
    and h
    or c
    or d
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld c, c
    and b
    or c
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    db $e3
    ld c, [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or c
    and b
    and d
    and h
    and l
    or h
    xor e
    xor e
    cp b
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor e
    and b
    xor d
    and h
    or d
    ld e, a
    ld d, b
    nop
    add b
    xor l
    ld a, a
    and b
    and [hl]
    xor b
    xor e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    or c
    and h
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    and b
    xor l
    and [hl]
    and h
    or c
    or d
    ld c, c
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    xor l
    xor [hl]
    or e
    ld a, a
    and a
    and h
    or d
    xor b
    or e
    and b
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    or d
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and b
    xor l
    and [hl]
    or c
    cp b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, [hl]
    xor l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and h
    xor e
    or d
    and h
    ld a, a
    xor b
    or d
    ld c, c
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $7f
    sub e
    xor [hl]
    ld a, a
    or l
    xor b
    and h
    or [hl]
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    and e
    xor b
    and l
    and l
    xor b
    and d
    or h
    xor e
    or e
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld c, [hl]
    and l
    or c
    xor b
    and h
    xor l
    and e
    xor e
    cp b
    ld a, a
    xor l
    and b
    or e
    or h
    or c
    and h
    add sp, $4e
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, c
    and c
    and b
    or c
    xor d
    ld a, a
    and l
    xor b
    and h
    or c
    and d
    and h
    xor e
    cp b
    ld a, a
    and b
    or e
    ld c, [hl]
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    or l
    and b
    and e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or e
    and h
    or c
    or c
    xor b
    or e
    xor [hl]
    or c
    cp b
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld a, a
    ld d, h
    db $e3
    ld c, [hl]
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld a, a
    add d
    and a
    xor b
    xor l
    and b
    add sp, $4e
    adc h
    and b
    xor l
    cp b
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    or c
    and h
    ld c, c
    and d
    and a
    and b
    or c
    xor h
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and [hl]
    or c
    and b
    and d
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    and h
    and b
    or h
    or e
    cp b
    ld c, [hl]
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor b
    or c
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    xor a
    xor b
    or c
    and b
    xor e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and c
    and h
    xor e
    xor e
    cp b
    ld a, a
    and e
    xor b
    and l
    and l
    and h
    or c
    or d
    ld a, a
    and c
    cp b
    ld c, c
    and b
    or c
    and h
    and b
    add sp, $7f
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    and b
    and e
    and h
    xor a
    or e
    ld a, a
    and b
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    and a
    and b
    xor l
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    sub h
    xor l
    and e
    and h
    or c
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and h
    xor e
    xor e
    cp b
    ld a, a
    ld c, [hl]
    or d
    xor a
    xor b
    or c
    and b
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, c
    and l
    xor [hl]
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    or e
    and a
    and h
    xor l
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and h
    or d
    and d
    and b
    xor a
    and h
    ld e, a
    ld d, b
    nop
    sub d
    or [hl]
    xor b
    xor h
    or d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    xor e
    cp b
    ld c, [hl]
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor h
    or h
    or d
    and d
    xor e
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, c
    and c
    xor [hl]
    and e
    cp b
    add sp, $7f
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, [hl]
    xor [hl]
    or l
    and h
    or c
    or e
    and b
    xor d
    and h
    ld a, a
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    ld c, [hl]
    or d
    or [hl]
    xor b
    xor h
    xor h
    and h
    or c
    or d
    ld e, a
    ld d, b
    nop
    sub d
    xor e
    and h
    and h
    xor a
    or d
    ld a, a
    rst $30
    cp $7f
    and a
    xor [hl]
    or h
    or c
    or d
    ld a, a
    and b
    ld c, [hl]
    and e
    and b
    cp b
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and h
    xor l
    or d
    and h
    or d
    ld c, [hl]
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, c
    or e
    and h
    xor e
    and h
    xor a
    xor [hl]
    or c
    or e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    and b
    and l
    and h
    or e
    cp b
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    xor e
    and h
    and h
    xor a
    or d
    ld e, a
    ld d, b
    nop
    adc h
    and b
    xor l
    cp b
    ld a, a
    xor [hl]
    and e
    and e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    and a
    and b
    xor a
    xor a
    and h
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld c, c
    and c
    cp b
    add sp, $7f
    add l
    xor [hl]
    or c
    ld a, a
    and h
    or a
    and b
    xor h
    xor a
    xor e
    and h
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    and d
    xor d
    or d
    ld c, [hl]
    or c
    or h
    xor l
    ld a, a
    and c
    and b
    and d
    xor d
    or [hl]
    and b
    or c
    and e
    or d
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    xor h
    and h
    xor h
    xor [hl]
    or c
    xor b
    cp c
    and h
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $4e
    adc b
    or e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    or d
    ld c, c
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    or d
    db $e3
    db $e3
    ld c, [hl]
    or e
    and a
    and b
    or e
    cp l
    ld a, a
    or [hl]
    and a
    cp b
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor h
    and b
    or c
    or e
    ld e, a
    ld d, b
    nop
    sub l
    and h
    or c
    cp b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or d
    xor a
    xor b
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    ld c, [hl]
    or d
    xor b
    cp c
    and h
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
    cp b
    ld c, c
    xor [hl]
    and l
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor h
    and b
    or c
    or e
    xor b
    and b
    xor e
    ld a, a
    and b
    or c
    or e
    or d
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    and h
    xor e
    or e
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or [hl]
    and b
    xor b
    or d
    or e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    add sp, $49
    sub [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, [hl]
    or h
    xor l
    or d
    or e
    xor [hl]
    xor a
    xor a
    and b
    and c
    xor e
    and h
    ld e, a
    ld d, b
    nop
    adc [hl]
    xor l
    and h
    ld a, a
    and b
    or c
    xor h
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    add sp, $4e
    sub h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and l
    xor [hl]
    or h
    or c
    ld c, c
    and b
    or c
    xor h
    or d
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    and l
    xor b
    or c
    and h
    or d
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    ld c, [hl]
    xor a
    or h
    xor l
    and d
    and a
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc a
    or c
    and h
    and l
    and h
    or c
    or d
    ld a, a
    and a
    xor [hl]
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and a
    or h
    xor h
    xor b
    and e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    add sp, $4e
    adc b
    or e
    ld a, a
    and h
    xor l
    or d
    xor l
    and b
    or c
    and h
    or d
    ld a, a
    or e
    xor b
    xor l
    cp b
    ld c, c
    xor b
    xor l
    or d
    and h
    and d
    or e
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or l
    xor b
    xor l
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and e
    and h
    or l
    xor [hl]
    or h
    or c
    or d
    ld c, [hl]
    or e
    and a
    and h
    xor h
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and a
    or h
    xor l
    and [hl]
    or c
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    or [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $7f
    adc b
    or e
    or d
    ld c, c
    and a
    and b
    xor a
    xor e
    and h
    or d
    or d
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor h
    and h
    xor e
    or e
    and h
    and e
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    and c
    cp b
    ld c, [hl]
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    and d
    xor b
    and e
    or d
    ld e, a
    ld d, b
    nop
    adc e
    or h
    or c
    and h
    or d
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    or [hl]
    and h
    and h
    or e
    ld a, a
    and b
    or c
    xor [hl]
    xor h
    and b
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and a
    xor [hl]
    xor l
    and h
    cp b
    add sp, $7f
    sub d
    or [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld c, c
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor h
    and h
    xor e
    or e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld c, [hl]
    and c
    xor [hl]
    xor l
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    xor e
    xor e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    ld c, [hl]
    and c
    and h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and e
    or c
    cp b
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or d
    and a
    or c
    xor b
    or l
    and h
    xor e
    and h
    and e
    ld a, a
    or h
    xor a
    ld c, c
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    and c
    and h
    and b
    and d
    and a
    add sp, $7f
    sub e
    xor [hl]
    or d
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    and h
    and b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    or l
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    cp $f6
    ld a, a
    or e
    and h
    xor l
    or e
    and b
    and d
    xor e
    and h
    or d
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    or d
    or e
    or c
    and h
    or e
    and d
    and a
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or e
    or c
    and b
    and d
    or e
    ld a, a
    and l
    or c
    and h
    and h
    xor e
    cp b
    add sp, $49
    sub e
    and a
    and h
    cp b
    ld a, a
    or [hl]
    or c
    and b
    xor a
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor a
    or c
    and h
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    and b
    xor d
    and h
    xor l
    ld c, [hl]
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld e, a
    ld d, b
    nop
    add d
    xor [hl]
    xor h
    xor h
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor l
    and h
    and b
    or c
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    ld c, [hl]
    or e
    or c
    and b
    xor b
    xor e
    or d
    db $f4
    ld a, a
    and h
    or e
    and d
    add sp, $49
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    and h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    cp b
    ld a, a
    and b
    and d
    and d
    xor b
    and e
    and h
    xor l
    or e
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
    ld e, a
    ld d, b
    nop
    adc [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    ld c, [hl]
    or e
    or c
    and b
    xor b
    xor e
    or d
    add sp, $7f
    adc [hl]
    and c
    or d
    or e
    and b
    and d
    xor e
    and h
    or d
    ld c, c
    and b
    or c
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or c
    xor [hl]
    xor e
    xor e
    ld a, a
    or d
    or e
    or c
    and b
    xor b
    and [hl]
    and a
    or e
    ld c, [hl]
    xor [hl]
    or l
    and h
    or c
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    or l
    xor [hl]
    xor b
    and e
    ld e, a
    ld d, b
    nop
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and a
    and h
    and e
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    xor d
    xor b
    xor l
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    or e
    and h
    xor l
    and e
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, c
    or [hl]
    and a
    xor b
    or e
    xor b
    or d
    and a
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    and a
    xor b
    and e
    and h
    ld c, [hl]
    and a
    and b
    or c
    and e
    and h
    xor l
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    cp l
    ld c, [hl]
    and h
    or a
    xor a
    xor [hl]
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor b
    or c
    ld e, a
    ld d, b
    nop
    add d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor c
    or h
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    cp b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    add sp, $4e
    adc b
    or e
    or d
    ld a, a
    and a
    xor [hl]
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, c
    or d
    or e
    or h
    or c
    and e
    cp b
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor b
    xor h
    xor a
    and b
    and d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, [hl]
    and a
    and b
    or c
    and e
    ld a, a
    xor e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    or h
    xor l
    add sp, $4e
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and h
    and h
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld c, [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    and b
    or d
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, c
    xor b
    or e
    or d
    and h
    xor e
    and l
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    and [hl]
    xor b
    or l
    and h
    ld a, a
    and d
    and a
    and b
    or d
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    xor a
    ld c, [hl]
    or d
    xor a
    and h
    and h
    and e
    ld e, a
    ld d, b
    nop
    adc b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    cp b
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or d
    xor e
    or h
    and [hl]
    and [hl]
    xor b
    or d
    and a
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and h
    xor l
    or e
    ld c, c
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor e
    xor e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld e, a
    ld d, b
    nop
    adc e
    xor b
    or l
    and h
    or d
    ld a, a
    xor e
    and b
    cp c
    xor b
    xor e
    cp b
    ld a, a
    and c
    cp b
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    add sp, $7f
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or e
    and b
    xor b
    xor e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    xor [hl]
    and l
    and l
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and b
    ld c, [hl]
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and c
    xor [hl]
    or c
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and e
    and h
    and l
    cp b
    ld a, a
    and [hl]
    or c
    and b
    or l
    xor b
    or e
    cp b
    add sp, $7f
    adc b
    or e
    ld c, c
    and l
    xor e
    xor [hl]
    and b
    or e
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor b
    or c
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor [hl]
    db $e3
    ld c, [hl]
    xor h
    and b
    and [hl]
    xor l
    and h
    or e
    xor b
    and d
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld e, a
    ld d, b
    nop
    add [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    and h
    or d
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld c, [hl]
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    or d
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    or c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and h
    xor h
    db $e3
    ld c, c
    xor a
    and h
    or c
    and b
    or e
    or h
    or c
    and h
    ld a, a
    and c
    cp b
    ld a, a
    ld sp, hl
    add sp, -$04
    add l
    ld c, [hl]
    and e
    and h
    and [hl]
    or c
    and h
    and h
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor b
    xor l
    ld c, [hl]
    ld sp, hl
    db $f4
    ld sp, hl
    or $f6
    ld a, a
    and l
    and h
    and h
    or e
    ld e, a
    ld d, b
    nop
    adc e
    xor b
    or l
    and h
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or c
    and h
    and h
    and e
    cp b
    ld c, [hl]
    xor a
    xor e
    and b
    xor l
    or e
    or d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    or c
    and b
    or c
    and h
    xor e
    cp b
    ld a, a
    or d
    and h
    and h
    xor l
    db $f4
    ld c, c
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld c, [hl]
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    and e
    and h
    and d
    or c
    and h
    and b
    or d
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    xor h
    and b
    xor d
    and h
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor b
    and l
    db $e3
    ld c, [hl]
    and l
    xor b
    and d
    or h
    xor e
    or e
    add sp, $7f
    adc b
    xor l
    or d
    or e
    and h
    and b
    and e
    db $f4
    ld c, c
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or c
    or h
    xor l
    or d
    ld c, [hl]
    and b
    or e
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    and e
    and h
    or l
    and h
    xor e
    xor [hl]
    xor a
    and h
    and e
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld e, a
    ld d, b
    nop
    adc [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    add e
    adc [hl]
    add e
    sub h
    adc [hl]
    cp l
    ld a, a
    ld hl, sp+$4e
    and a
    and h
    and b
    and e
    or d
    ld a, a
    or d
    xor a
    xor e
    xor b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and l
    xor [hl]
    or c
    xor h
    ld a, a
    and b
    ld a, a
    or h
    xor l
    xor b
    or b
    or h
    and h
    ld c, c
    or d
    xor a
    and h
    and d
    xor b
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    or c
    or h
    xor l
    or d
    ld c, [hl]
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    ld a, [$7ff6]
    adc h
    adc a
    add a
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor a
    or c
    and b
    xor b
    or c
    xor b
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and l
    or c
    and h
    and h
    cp c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and d
    xor [hl]
    xor e
    and e
    ld a, a
    and d
    xor [hl]
    xor l
    and e
    xor b
    or e
    xor b
    xor [hl]
    xor l
    or d
    add sp, $4e
    sub c
    and h
    xor e
    xor b
    or d
    and a
    and h
    or d
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld c, c
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and l
    or c
    xor b
    and [hl]
    xor b
    and e
    ld a, a
    and d
    xor e
    xor b
    db $e3
    ld c, [hl]
    xor h
    and b
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    rst $30
    ld a, [$4e85]
    and e
    and h
    and [hl]
    or c
    and h
    and h
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and h
    xor l
    or e
    xor b
    or c
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    or d
    ld c, [hl]
    and b
    ld a, a
    or d
    xor l
    xor [hl]
    or [hl]
    cp b
    db $e3
    or [hl]
    and a
    xor b
    or e
    and h
    add sp, $4e
    sub h
    xor l
    and a
    and b
    or c
    xor h
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, c
    xor b
    xor l
    or e
    and h
    xor l
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    or [hl]
    xor b
    xor h
    or d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    xor e
    cp b
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor b
    and d
    cp b
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    or d
    ld e, a
    ld d, b
    nop
    adc h
    and b
    and e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and a
    and b
    or c
    and e
    and h
    xor l
    and h
    and e
    ld c, [hl]
    or d
    xor e
    or h
    and e
    and [hl]
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    or d
    xor h
    and h
    xor e
    xor e
    or d
    ld c, [hl]
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor a
    or h
    or e
    or c
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, c
    or e
    xor [hl]
    or h
    and d
    and a
    add sp, $4e
    add h
    or l
    and h
    xor l
    ld a, a
    or [hl]
    and h
    and h
    and e
    or d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    and b
    or e
    and a
    ld e, a
    ld d, b
    nop
    sub d
    xor h
    and h
    xor e
    xor e
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and b
    or [hl]
    and l
    or h
    xor e
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld c, [hl]
    and l
    and b
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    add sp, $7f
    sub e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, c
    and e
    and h
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and h
    xor l
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or d
    xor h
    and h
    xor e
    xor e
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    and b
    xor l
    cp b
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld c, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or e
    and h
    xor l
    and e
    and h
    or c
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    xor b
    or d
    ld a, a
    and h
    or a
    xor a
    xor [hl]
    or d
    and h
    and e
    ld e, a
    ld d, b
    nop
    add l
    xor [hl]
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and b
    or c
    and e
    and h
    or c
    db $e3
    ld c, [hl]
    or e
    and a
    and b
    xor l
    db $e3
    and e
    xor b
    and b
    xor h
    xor [hl]
    xor l
    and e
    or d
    ld c, c
    or d
    and a
    and h
    xor e
    xor e
    add sp, $7f
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld c, [hl]
    or d
    and a
    xor [hl]
    xor [hl]
    or e
    or d
    ld a, a
    or d
    xor a
    xor b
    xor d
    and h
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld e, a
    ld d, b
    nop
    sub d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and e
    and h
    and d
    or c
    and h
    xor a
    xor b
    or e
    db $f4
    ld a, a
    and e
    and h
    or d
    and h
    or c
    or e
    and h
    and e
    ld c, [hl]
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld c, c
    xor l
    xor [hl]
    ld a, a
    or c
    and h
    and b
    xor e
    ld a, a
    or d
    and a
    and b
    xor a
    and h
    ld a, a
    and b
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, [hl]
    xor h
    and b
    and e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    and [hl]
    and b
    or d
    ld e, a
    ld d, b
    nop
    add c
    cp b
    ld a, a
    xor e
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    and b
    xor a
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or l
    xor b
    and d
    or e
    xor b
    xor h
    cp l
    ld c, [hl]
    xor e
    xor b
    and l
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld c, c
    or d
    and a
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld c, [hl]
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or l
    xor b
    and d
    or e
    xor b
    xor h
    cp l
    ld a, a
    and e
    and h
    xor h
    xor b
    or d
    and h
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    add [hl]
    add h
    adc l
    add [hl]
    add b
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld c, [hl]
    and c
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    and b
    ld c, [hl]
    or d
    or h
    and e
    and e
    and h
    xor l
    ld a, a
    and d
    and a
    xor b
    xor e
    xor e
    add sp, $49
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    xor e
    and b
    cp b
    ld a, a
    and b
    ld a, a
    and d
    or h
    or c
    or d
    and h
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld e, a
    ld d, b
    nop
    add c
    or h
    or c
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    and b
    or e
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld c, [hl]
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    and h
    and b
    or c
    and d
    and a
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    add sp, $7f
    sub e
    and a
    and h
    ld c, c
    or e
    or h
    xor l
    xor l
    and h
    xor e
    or d
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    or d
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    and b
    or d
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    or d
    ld c, [hl]
    and c
    cp b
    ld a, a
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    or d
    ld e, a
    ld d, b
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    and c
    cp b
    ld c, [hl]
    xor b
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    ld c, c
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and h
    and b
    or e
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    ld e, a
    ld d, b
    nop
    add b
    or l
    xor [hl]
    xor b
    and e
    ld a, a
    and h
    cp b
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
    ld c, [hl]
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld c, [hl]
    xor [hl]
    xor l
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    or c
    cp b
    ld c, c
    or e
    xor [hl]
    ld a, a
    xor a
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    and c
    cp b
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor a
    and h
    xor l
    and e
    or h
    xor e
    or h
    xor h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor a
    xor b
    xor l
    and d
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    or d
    or h
    xor a
    and h
    or c
    and c
    ld a, a
    or [hl]
    and h
    and b
    xor a
    xor [hl]
    xor l
    or d
    add sp, $4e
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    ld c, c
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and l
    and b
    or d
    or e
    ld e, a
    ld d, b
    nop
    adc [hl]
    xor l
    and h
    ld a, a
    and d
    xor e
    and b
    or [hl]
    ld a, a
    and [hl]
    or c
    and h
    or [hl]
    ld c, [hl]
    xor h
    and b
    or d
    or d
    xor b
    or l
    and h
    xor e
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    or d
    ld c, [hl]
    and a
    and b
    or c
    and e
    ld a, a
    and b
    or d
    ld a, a
    or d
    or e
    and h
    and h
    xor e
    add sp, $49
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    rst $30
    or $f4
    or $f6
    or $e3
    add a
    adc a
    ld c, [hl]
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and a
    and h
    and b
    or l
    cp b
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and d
    and b
    xor h
    xor [hl]
    or h
    and l
    xor e
    and b
    and [hl]
    and h
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld c, [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $7f
    adc b
    or e
    ld c, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    and h
    xor e
    and l
    db $e3
    and e
    and h
    or d
    or e
    or c
    or h
    and d
    or e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld c, [hl]
    or d
    or e
    xor b
    xor h
    or h
    xor e
    or h
    or d
    ld e, a
    ld d, b
    nop
    sub d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    and b
    xor e
    ld c, [hl]
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    add sp, $7f
    add h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, c
    or d
    xor e
    xor b
    and [hl]
    and a
    or e
    and h
    or d
    or e
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    ld c, [hl]
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    or c
    xor b
    and [hl]
    and [hl]
    and h
    or c
    ld a, a
    and b
    ld c, [hl]
    and a
    or h
    and [hl]
    and h
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or d
    xor b
    xor [hl]
    xor l
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and a
    and h
    and b
    and e
    or d
    ld a, a
    and b
    or e
    or e
    or c
    and b
    and d
    or e
    ld c, [hl]
    and h
    and b
    and d
    and a
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or d
    xor a
    xor b
    xor l
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $49
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    db $fc
    ld c, [hl]
    and a
    and h
    and b
    and e
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor h
    and b
    xor b
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    and c
    and b
    xor e
    and b
    xor l
    and d
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and d
    or c
    xor b
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, [hl]
    xor l
    xor [hl]
    xor b
    or d
    cp b
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, [hl]
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld c, c
    or e
    and a
    and h
    ld a, a
    ld sp, hl
    ld a, a
    and a
    and h
    and b
    and e
    or d
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    or d
    ld c, [hl]
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    and h
    or l
    and h
    or c
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor e
    xor b
    xor d
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub [hl]
    and h
    and b
    or c
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor d
    or h
    xor e
    xor e
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and e
    and h
    and d
    and h
    and b
    or d
    and h
    and e
    ld c, [hl]
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    and d
    or c
    xor b
    and h
    or d
    ld c, c
    and h
    and d
    and a
    xor [hl]
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    xor d
    or h
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld c, [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    or d
    and b
    and e
    ld a, a
    xor h
    and h
    xor e
    xor [hl]
    and e
    cp b
    ld e, a
    ld d, b
    nop
    sub d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    and b
    xor d
    db $f4
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, [hl]
    and b
    and e
    and h
    xor a
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, c
    and c
    xor [hl]
    xor l
    and h
    ld a, a
    and d
    xor e
    or h
    and c
    add sp, $7f
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or l
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld c, [hl]
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    and [hl]
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor d
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    xor [hl]
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    xor [hl]
    or e
    ld c, [hl]
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    and b
    or d
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    and b
    or d
    ld c, c
    and b
    ld a, a
    and e
    xor b
    and b
    xor h
    xor [hl]
    xor l
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    xor h
    db $e3
    ld c, [hl]
    xor a
    and b
    and d
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and e
    and h
    or d
    or e
    or c
    xor [hl]
    cp b
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    ld e, a
    ld d, b
    nop
    adc a
    or h
    xor l
    and d
    and a
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and d
    xor [hl]
    or c
    xor d
    db $e3
    ld c, [hl]
    or d
    and d
    or c
    and h
    or [hl]
    ld a, a
    and l
    and b
    or d
    and a
    xor b
    xor [hl]
    xor l
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    and b
    cp b
    ld c, c
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor l
    and d
    or c
    and h
    or e
    and h
    ld c, [hl]
    or [hl]
    and b
    xor e
    xor e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld c, [hl]
    or [hl]
    and b
    cp b
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and e
    or c
    xor b
    xor e
    xor e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    xor l
    and [hl]
    or h
    and h
    ld a, a
    or d
    xor a
    and b
    xor l
    or d
    ld c, [hl]
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    db $fd
    ld a, a
    and l
    and h
    and h
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and l
    or c
    and h
    and h
    xor e
    cp b
    ld c, c
    or e
    and a
    and b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    or c
    and h
    xor e
    and h
    and [hl]
    or d
    add sp, $4e
    adc b
    or e
    or d
    ld a, a
    xor e
    xor b
    and d
    xor d
    or d
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    ld e, a
    ld d, b
    nop
    adc b
    xor l
    ld a, a
    and a
    xor [hl]
    or e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor b
    xor l
    or e
    and h
    or c
    xor l
    and b
    xor e
    ld a, a
    and [hl]
    and b
    or d
    and h
    or d
    ld c, [hl]
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and h
    or a
    xor a
    and b
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld c, c
    and h
    or a
    xor a
    xor e
    xor [hl]
    and e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld c, [hl]
    and b
    xor l
    cp b
    ld a, a
    or [hl]
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $7f
    add c
    and h
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    rst $20
    ld d, b
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld c, [hl]
    and c
    cp b
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    or h
    or d
    or e
    db $f4
    ld c, [hl]
    and [hl]
    and h
    or c
    xor h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld c, c
    and [hl]
    and b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    or a
    xor b
    and d
    ld c, [hl]
    or [hl]
    and b
    or d
    or e
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    and b
    or c
    and c
    and b
    and [hl]
    and h
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld c, [hl]
    xor [hl]
    xor l
    and h
    db $e3
    or e
    or c
    and b
    and d
    xor d
    ld a, a
    xor h
    xor b
    xor l
    and e
    add sp, $4e
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    or d
    db $f4
    ld a, a
    ld c, c
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    ld c, [hl]
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    and b
    xor e
    xor e
    or d
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    ld e, a
    ld d, b
    nop
    sub [hl]
    and b
    xor e
    xor d
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    xor b
    xor l
    and e
    ld c, [hl]
    xor e
    and h
    and [hl]
    or d
    add sp, $7f
    sub d
    and a
    xor [hl]
    or [hl]
    or d
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor b
    xor l
    or e
    and h
    xor e
    xor e
    xor b
    and [hl]
    and h
    xor l
    and d
    and h
    add sp, $49
    adc b
    or e
    or d
    ld a, a
    and b
    or c
    xor h
    xor [hl]
    or c
    db $e3
    xor e
    xor b
    xor d
    and h
    ld c, [hl]
    and a
    xor b
    and e
    and h
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or c
    and h
    xor a
    and h
    xor e
    or d
    ld c, [hl]
    xor h
    xor [hl]
    xor e
    or e
    and h
    xor l
    ld a, a
    xor e
    and b
    or l
    and b
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    and [hl]
    and h
    xor l
    or e
    xor e
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor d
    xor b
    xor l
    and e
    db $e3
    ld c, [hl]
    and a
    and h
    and b
    or c
    or e
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    or d
    and a
    and b
    or c
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, c
    xor l
    or h
    or e
    or c
    xor b
    or e
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    and h
    and [hl]
    and [hl]
    or d
    ld c, [hl]
    xor b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and h
    and h
    or d
    ld a, a
    and b
    xor l
    ld c, [hl]
    xor b
    xor l
    xor c
    or h
    or c
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    or e
    cp b
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor [hl]
    and c
    or d
    and d
    or h
    or c
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    xor h
    and b
    or d
    or d
    and h
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    or e
    and a
    xor b
    and d
    xor d
    db $f4
    ld a, a
    and c
    xor e
    or h
    and h
    ld c, c
    or l
    xor b
    xor l
    and h
    or d
    add sp, $7f
    sub e
    and a
    and h
    ld a, a
    or l
    xor b
    xor l
    and h
    or d
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld c, [hl]
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    sub c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and h
    xor e
    xor e
    cp b
    ld c, [hl]
    xor a
    xor [hl]
    or h
    and d
    and a
    add sp, $7f
    sub [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or c
    or h
    xor l
    ld c, c
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld c, [hl]
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    and h
    and e
    ld e, a
    ld d, b
    nop
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and h
    xor l
    or d
    and h
    or d
    ld a, a
    and b
    xor l
    cp b
    ld c, [hl]
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    or l
    xor b
    and [hl]
    xor [hl]
    or c
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld a, a
    or d
    xor a
    or c
    and b
    cp b
    ld c, c
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld c, [hl]
    or e
    cp b
    xor a
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    xor l
    xor d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    or e
    and a
    ld e, a
    ld d, b
    nop
    sub e
    xor [hl]
    or h
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, [hl]
    and l
    xor b
    xor l
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    xor l
    or h
    xor h
    and c
    db $e3
    ld c, [hl]
    xor l
    and h
    or d
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    and a
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, c
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    or c
    and b
    xor e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld c, [hl]
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    and b
    cp b
    ld c, [hl]
    and h
    and [hl]
    and [hl]
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld c, c
    or d
    and h
    and h
    xor l
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld c, [hl]
    or c
    xor b
    or l
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and l
    and b
    xor e
    xor e
    or d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor a
    or d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    and b
    xor e
    and h
    cp l
    ld c, [hl]
    xor c
    xor [hl]
    and c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld c, [hl]
    xor l
    and h
    or d
    or e
    ld a, a
    and c
    cp b
    ld a, a
    and d
    and b
    or c
    or l
    xor b
    xor l
    and [hl]
    ld c, c
    xor [hl]
    or h
    or e
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, [hl]
    or d
    or e
    or c
    and h
    and b
    xor h
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and a
    xor [hl]
    or c
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    ld e, a
    ld d, b
    nop
    add b
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and d
    and h
    xor l
    or e
    and h
    or c
    ld a, a
    or d
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    or d
    ld c, [hl]
    or h
    xor l
    and a
    and b
    or c
    xor h
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, c
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and l
    or h
    xor e
    xor e
    cp b
    ld c, [hl]
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    and d
    and a
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    xor b
    or e
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    and h
    xor l
    or e
    and h
    or c
    ld a, a
    or d
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or d
    ld a, a
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    or c
    and h
    add sp, $4e
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor b
    or e
    ld c, c
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    or h
    xor l
    xor b
    and d
    and b
    or e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    db $fd
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    or d
    ld e, a
    ld d, b
    nop
    add b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor a
    and b
    xor l
    or e
    xor [hl]
    xor h
    xor b
    xor h
    and h
    ld a, a
    and b
    and d
    or e
    add sp, $4e
    adc b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld c, c
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and h
    or a
    xor b
    or d
    or e
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld e, a
    ld d, b
    nop
    adc e
    and h
    and b
    xor a
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and b
    xor e
    xor e
    ld c, [hl]
    and [hl]
    or c
    and b
    or d
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor e
    xor b
    and d
    and h
    or d
    ld c, [hl]
    xor a
    or c
    and h
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or d
    and d
    cp b
    or e
    and a
    and h
    or d
    add sp, $7f
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    db $e3
    ld c, [hl]
    xor h
    and h
    xor l
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    xor l
    xor b
    xor l
    xor c
    and b
    ld e, a
    ld d, b
    nop
    add b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or c
    and a
    cp b
    or e
    and a
    xor h
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    or [hl]
    xor l
    db $f4
    ld a, a
    and b
    or d
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    ld c, c
    or [hl]
    and h
    or c
    and h
    ld a, a
    and e
    and b
    xor l
    and d
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    or [hl]
    xor b
    and [hl]
    and [hl]
    xor e
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    xor b
    xor a
    or d
    ld c, [hl]
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    or d
    ld e, a
    ld d, b
    nop
    adc b
    and l
    ld a, a
    and b
    ld a, a
    xor h
    and b
    xor c
    xor [hl]
    or c
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld c, [hl]
    xor [hl]
    or h
    or e
    and b
    and [hl]
    and h
    ld a, a
    xor [hl]
    and d
    and d
    or h
    or c
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, c
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    and h
    and b
    or e
    and h
    xor l
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    xor b
    or e
    cp b
    ld c, [hl]
    and b
    or e
    ld a, a
    and b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor a
    xor e
    and b
    xor l
    or e
    ld e, a
    ld d, b
    nop
    add c
    xor [hl]
    or c
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    and b
    and d
    or e
    xor b
    or l
    and h
    ld c, [hl]
    or l
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor [hl]
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    xor b
    or d
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    and b
    xor d
    and h
    and e
    ld c, c
    xor b
    xor l
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld c, [hl]
    and c
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    xor b
    or c
    and h
    ld e, a
    ld d, b
    nop
    add [hl]
    or c
    xor b
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor a
    xor b
    xor l
    and d
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or d
    or b
    or h
    and h
    and h
    cp c
    and h
    or d
    ld a, a
    and a
    and b
    or c
    and e
    rst $20
    ld a, a
    adc b
    or e
    ld c, c
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    cp l
    ld c, [hl]
    and d
    xor [hl]
    xor e
    and e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or [hl]
    and b
    or c
    xor h
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or c
    xor [hl]
    or [hl]
    and e
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or d
    or e
    and b
    xor h
    xor b
    xor l
    and b
    add sp, $7f
    adc [hl]
    xor l
    and d
    and h
    ld c, c
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld c, [hl]
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    xor b
    or e
    ld a, a
    and a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld e, a
    ld d, b
    nop
    add l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    or h
    xor l
    or c
    and h
    xor e
    xor b
    and b
    and c
    xor e
    and h
    add sp, $4e
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, c
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    and h
    and b
    or d
    db $f4
    ld c, [hl]
    xor e
    and b
    xor d
    and h
    or d
    db $f4
    ld a, a
    or c
    xor b
    or l
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or d
    and a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor a
    or h
    and e
    and e
    xor e
    and h
    or d
    ld e, a
    ld d, b
    nop
    add c
    or c
    or h
    or e
    and b
    xor e
    xor e
    cp b
    ld a, a
    or l
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and h
    xor l
    xor [hl]
    or c
    xor h
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld c, [hl]
    and e
    and h
    or d
    or e
    or c
    or h
    and d
    or e
    xor b
    or l
    and h
    add sp, $49
    adc d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld c, [hl]
    and e
    and h
    or d
    or e
    or c
    xor [hl]
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    xor b
    or e
    xor b
    and h
    or d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    and [hl]
    and h
    xor l
    or e
    xor e
    and h
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor b
    xor l
    and e
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, c
    and l
    and h
    or c
    or c
    cp b
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, [hl]
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or d
    xor a
    xor [hl]
    or e
    or d
    ld a, a
    and b
    xor l
    ld c, [hl]
    and h
    xor l
    and h
    xor h
    cp b
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    or e
    or c
    and b
    xor l
    or d
    and l
    xor b
    and [hl]
    or h
    or c
    and h
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, c
    and b
    xor l
    ld a, a
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld c, [hl]
    and d
    xor [hl]
    xor a
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    db $e3
    ld c, [hl]
    xor l
    and h
    xor l
    or e
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or e
    xor b
    and d
    ld a, a
    and d
    xor [hl]
    and e
    and h
    ld c, [hl]
    xor b
    or d
    ld a, a
    or h
    xor l
    or d
    or e
    and b
    and c
    xor e
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld a, a
    xor b
    xor l
    ld c, c
    and b
    ld a, a
    or l
    and b
    or c
    xor b
    and h
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    and b
    cp b
    or d
    add sp, $4e
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    ld c, [hl]
    and l
    and h
    or [hl]
    ld a, a
    and b
    xor e
    xor b
    or l
    and h
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    and d
    and h
    xor e
    xor e
    ld a, a
    or d
    or e
    or c
    or h
    and d
    or e
    or h
    or c
    and h
    ld c, [hl]
    xor b
    or d
    ld a, a
    or d
    xor b
    xor h
    xor b
    xor e
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor h
    xor [hl]
    xor e
    and h
    and d
    or h
    xor e
    and h
    or d
    add sp, $49
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor h
    and h
    xor e
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor b
    xor l
    or l
    xor b
    or d
    db $e3
    ld c, [hl]
    xor b
    and c
    xor e
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or d
    and h
    xor l
    or d
    xor b
    or e
    xor b
    or l
    and h
    ld a, a
    ld d, h
    db $e3
    ld c, [hl]
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld c, [hl]
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or d
    and b
    and e
    ld a, a
    xor [hl]
    or c
    ld c, c
    and b
    xor l
    and [hl]
    or c
    cp b
    add sp, $7f
    add h
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    or d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    ld c, [hl]
    and d
    and a
    and b
    xor h
    and c
    and h
    or c
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    add sp, $7f
    adc b
    or e
    ld a, a
    xor b
    xor l
    and a
    and b
    xor e
    and h
    or d
    db $f4
    ld c, c
    or e
    and a
    and h
    xor l
    ld a, a
    and c
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld c, [hl]
    and l
    xor b
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, [hl]
    ld sp, hl
    db $f4
    or $f6
    or $85
    ld a, a
    and e
    and h
    and [hl]
    or c
    and h
    and h
    or d
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    xor l
    or e
    xor b
    and d
    xor b
    xor a
    and b
    or e
    and h
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    and l
    xor e
    cp b
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, c
    or d
    xor a
    and b
    and d
    and h
    add sp, $7f
    adc l
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    xor h
    and b
    xor l
    and b
    and [hl]
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    and h
    and b
    or e
    ld c, [hl]
    cp b
    and h
    or e
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    ld e, a
    ld d, b
    nop
    add b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld a, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    add sp, $7f
    adc b
    or e
    ld c, c
    or d
    or [hl]
    xor b
    xor h
    or d
    ld a, a
    and c
    cp b
    ld a, a
    and d
    xor e
    and h
    or l
    and h
    or c
    xor e
    cp b
    ld c, [hl]
    or e
    or [hl]
    xor b
    or d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    rst $30
    or $4e
    or e
    and h
    xor l
    or e
    and b
    and d
    xor e
    and h
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld e, a
    ld d, b
    nop
    sub d
    and a
    and b
    or c
    xor a
    ld a, a
    and c
    and h
    and b
    xor d
    or d
    ld a, a
    or c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    or e
    and a
    add sp, $7f
    adc b
    or e
    or d
    ld c, [hl]
    or d
    and a
    and h
    xor e
    xor e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    xor b
    and [hl]
    ld c, c
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, [hl]
    and l
    or c
    and h
    and h
    xor e
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    and c
    and h
    and d
    and b
    xor h
    and h
    ld a, a
    and h
    or a
    or e
    xor b
    xor l
    and d
    or e
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, [hl]
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld c, [hl]
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    add sp, $7f
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld c, c
    or e
    and a
    and h
    ld a, a
    and h
    cp b
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and a
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or d
    xor e
    xor b
    xor h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and l
    and b
    or d
    or e
    ld c, [hl]
    or d
    or [hl]
    xor b
    xor h
    xor h
    and h
    or c
    add sp, $7f
    adc b
    or e
    ld a, a
    or d
    xor e
    xor b
    and d
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, c
    or d
    and a
    and b
    or c
    xor a
    ld a, a
    or d
    xor b
    and d
    xor d
    xor e
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and e
    or c
    xor b
    xor l
    xor d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    and l
    xor e
    or h
    xor b
    and e
    or d
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    or d
    and b
    or l
    and b
    and [hl]
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and e
    xor b
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld c, c
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    or d
    or h
    or c
    or c
    and h
    and d
    or e
    and h
    and e
    ld c, [hl]
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    add e
    adc l
    add b
    ld a, a
    or e
    and b
    xor d
    and h
    xor l
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    xor h
    and c
    and h
    or c
    ld e, a
    ld d, b
    nop
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    and h
    and b
    or e
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld c, [hl]
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld c, [hl]
    and a
    and b
    xor a
    xor a
    and h
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld c, c
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    xor h
    xor [hl]
    xor e
    and e
    cp b
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and b
    xor l
    ld c, [hl]
    or h
    xor a
    or d
    and h
    or e
    ld a, a
    or d
    or e
    xor [hl]
    xor h
    and b
    and d
    and a
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    and l
    or c
    and h
    and h
    cp c
    and h
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, c
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    and h
    and e
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    and b
    xor b
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or d
    xor l
    xor [hl]
    or [hl]
    ld e, a
    ld d, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld c, [hl]
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, [hl]
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld c, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor d
    cp b
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld c, [hl]
    and e
    and b
    or c
    xor d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or d
    and a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld e, a
    ld d, b
    nop
    add b
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    add b
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor e
    and b
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    xor e
    and b
    xor h
    xor b
    xor l
    and [hl]
    ld c, c
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or d
    xor d
    cp b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    or e
    or h
    or c
    xor l
    ld a, a
    or c
    and h
    and e
    ld e, a
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    and h
    or a
    xor b
    or d
    or e
    and h
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    cp b
    or e
    and a
    xor b
    and d
    and b
    xor e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, c
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor b
    or c
    xor h
    and h
    and e
    ld c, [hl]
    and c
    cp b
    ld a, a
    and b
    ld a, a
    and l
    xor b
    or d
    and a
    and h
    or c
    xor h
    and b
    xor l
    ld c, [hl]
    or [hl]
    and a
    xor [hl]
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld e, a
    ld d, b
    nop
    add b
    and d
    and d
    xor [hl]
    or c
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld c, [hl]
    or [hl]
    xor b
    or e
    xor l
    and h
    or d
    or d
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    or [hl]
    and b
    or d
    ld a, a
    or d
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, c
    and b
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    and b
    or h
    or c
    and b
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and b
    ld c, [hl]
    xor h
    cp b
    or d
    or e
    xor b
    and d
    and b
    xor e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld e, a
    ld d, b
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld c, [hl]
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, c
    or d
    and h
    and b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor e
    xor b
    and h
    or d
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    ld e, a
    ld d, b
    nop
    adc b
    or e
    or d
    ld a, a
    add e
    adc l
    add b
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    and b
    or d
    ld a, a
    adc h
    add h
    sub [hl]
    cp l
    add sp, $4e
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    xor b
    cp c
    and h
    ld c, c
    and b
    xor l
    and e
    ld a, a
    and e
    xor b
    or d
    xor a
    xor [hl]
    or d
    xor b
    or e
    xor b
    xor [hl]
    xor l
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    or l
    and b
    or d
    or e
    xor e
    cp b
    ld a, a
    and e
    xor b
    and l
    db $e3
    ld c, [hl]
    and l
    and h
    or c
    and h
    xor l
    or e
    ld e, a
    ld d, b
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or l
    xor b
    and h
    or [hl]
    and h
    and e
    ld c, [hl]
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and b
    ld a, a
    xor h
    xor b
    and d
    or c
    xor [hl]
    db $e3
    ld c, [hl]
    or d
    and d
    xor [hl]
    xor a
    and h
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, c
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    db $f4
    ld c, [hl]
    and l
    xor b
    xor l
    and h
    db $f4
    ld a, a
    and e
    and h
    xor e
    xor b
    and d
    and b
    or e
    and h
    ld c, [hl]
    and a
    and b
    xor b
    or c
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    ld e, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
