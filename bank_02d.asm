;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    add sp, $50
    ld d, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor b
    xor l
    and b
    and d
    or e
    xor b
    or l
    xor b
    or e
    cp b
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    add sp, $55
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    add sp, $57
    nop
    add b
    ld a, a
    and c
    xor e
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    add l
    adc e
    add b
    sub d
    add a
    ld c, a
    xor e
    xor b
    and [hl]
    and a
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or c
    and h
    and b
    rst $20
    ld e, b
    nop
    sub [hl]
    and b
    or c
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $57
    ld bc, $cd6d
    nop
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    or h
    or d
    and h
    ld a, a
    sub e
    add h
    adc e
    add h
    adc a
    adc [hl]
    sub c
    sub e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $58
    ld bc, $cd6d
    nop
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld c, a
    add l
    adc e
    sbc b
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $58
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    add b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    ld c, a
    xor b
    or d
    ld a, a
    or c
    and h
    or b
    or h
    xor b
    or c
    and h
    and e
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $58
    ld bc, $cd6d
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    add sp, $50
    ld d, b
    ld bc, $cd6d
    nop
    ld a, a
    and d
    and b
    xor l
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    or h
    or c
    or c
    and h
    xor l
    or e
    ld a, a
    xor b
    or d
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and l
    and b
    or d
    or e
    rst $20
    ld e, b
    nop
    add d
    cp b
    and d
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor l
    rst $20
    ld c, a
    add l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    sub d
    sub h
    sub c
    add l
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, l
    ld d, b
    ld bc, $de05
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    or d
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add c
    adc [hl]
    sub a
    ld a, a
    ld d, b
    ld bc, $cf4a
    nop
    ld a, a
    xor [hl]
    xor l
    ld a, a
    adc a
    add d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld d, l
    and b
    and d
    and d
    and h
    xor a
    or e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld d, c
    add d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    adc [hl]
    sub a
    ld a, a
    and b
    or e
    ld c, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld c, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, b
    ld d, b
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    rst $20
    ld d, c
    sub [hl]
    xor b
    xor e
    and e
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
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and b
    xor e
    xor e
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    sub [hl]
    and a
    and h
    or [hl]
    add sp, -$18
    add sp, $57
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and b
    xor e
    xor e
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
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
    add sp, $55
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    or c
    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
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
    ld d, l
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and h
    and d
    and a
    xor l
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    cp b
    ld a, a
    xor b
    or d
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or c
    and h
    and d
    and b
    xor e
    xor e
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld d, l
    and b
    xor l
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or d
    ld d, l
    and e
    and b
    or e
    and b
    ld a, a
    or l
    xor b
    and b
    ld a, a
    adc a
    add d
    rst $20
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub c
    add h
    sub d
    add h
    add b
    sub c
    add d
    add a
    ld a, a
    adc e
    add b
    add c
    ld d, a
    nop
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld c, a
    sub d
    and a
    and b
    and e
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    ld a, a
    and b
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld d, a
    nop
    ld d, d
    cp l
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld a, a
    ld d, a
    nop
    ld d, e
    cp l
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld a, a
    ld d, a
    nop
    add l
    xor b
    or c
    or d
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add b
    and a
    and a
    db $f4
    ld a, a
    adc b
    cp a
    and h
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    and d
    xor [hl]
    and l
    and l
    and h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld d, l
    and l
    and h
    and h
    xor e
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, c
    sub d
    or h
    or c
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, c
    adc b
    push hl
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or d
    xor [hl]
    ld a, a
    or c
    or h
    and e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    adc b
    cp h
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    and b
    xor a
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    cp b
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    and e
    xor b
    and e
    xor l
    cp [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    rst $20
    ld c, a
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld d, l
    xor h
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    add sp, $51
    adc b
    cp a
    and h
    ld a, a
    or c
    or h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    sub c
    sub e
    add sp, $57
    nop
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    or d
    ld c, a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    and b
    xor b
    or d
    or e
    rst $20
    ld d, l
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
    or e
    cp l
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    or c
    or c
    cp b
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or h
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld d, l
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
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
    add [hl]
    sbc b
    adc h
    ld c, a
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
    or d
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    xor b
    or d
    and $57
    nop
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    cp l
    ld c, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
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
    ld hl, sp+$7f
    xor d
    xor b
    xor l
    and e
    or d
    ld d, l
    xor [hl]
    and l
    ld a, a
    and d
    and b
    or e
    and h
    or c
    xor a
    xor b
    xor e
    xor e
    and b
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc [hl]
    adc d
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld d, a
    nop
    add d
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld c, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    sub [hl]
    add h
    add h
    add e
    adc e
    add h
    ld a, a
    and e
    xor [hl]
    and h
    or d
    add sp, $51
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, a
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc b
    adc l
    add [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld c, a
    and c
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    and h
    and b
    xor l
    rst $20
    ld d, l
    add a
    and h
    ld a, a
    and a
    and b
    or d
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    and e
    ld a, a
    and a
    xor b
    or d
    ld d, l
    and d
    xor [hl]
    and l
    and l
    and h
    and h
    ld a, a
    cp b
    and h
    or e
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    ld a, a
    xor b
    xor l
    ld c, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    db $f4
    ld a, a
    adc b
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor e
    ld a, a
    xor b
    xor l
    ld d, l
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
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
    xor b
    or l
    and b
    or e
    and h
    ld c, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    or e
    cp b
    rst $20
    ld d, a
    nop
    sbc b
    and b
    or [hl]
    xor l
    rst $20
    ld c, a
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and e
    xor [hl]
    cp c
    and h
    and e
    ld d, l
    xor [hl]
    and l
    and l
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    add e
    sub c
    adc [hl]
    sub [hl]
    sbc c
    add h
    add h
    ld d, l
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    add sp, $55
    sub [hl]
    and a
    and b
    or e
    cp l
    ld a, a
    or e
    and a
    xor b
    or d
    and $55
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    sub e
    adc h
    ld d, l
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor a
    xor [hl]
    xor [hl]
    xor d
    cp b
    rst $20
    ld c, a
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    sub e
    adc h
    add sp, $58
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    sub e
    adc h
    ld a, [$e7f8]
    ld d, b
    ld d, b
    nop
    sub e
    adc h
    ld a, [$7ff8]
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    add e
    sub c
    add h
    add b
    adc h
    ld a, a
    add h
    add b
    sub e
    add h
    sub c
    add sp, -$18
    add sp, $55
    add sp, -$18
    add sp, -$6e
    xor l
    xor [hl]
    or c
    and h
    add sp, -$18
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    or d
    or e
    or h
    and l
    and l
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    add sp, $57
    nop
    add a
    xor h
    xor h
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    and [hl]
    and b
    xor b
    xor l
    and $57
    nop
    add e
    and b
    xor l
    and e
    cp b
    rst $20
    ld a, a
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld c, a
    adc b
    ld a, a
    and e
    xor [hl]
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    xor e
    cp b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    add sp, -$18
    add sp, $7f
    adc b
    push hl
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    ld c, a
    sub e
    and a
    and h
    ld a, a
    add h
    or e
    and h
    or c
    xor l
    and b
    xor e
    xor e
    cp b
    ld d, l
    add [hl]
    or c
    and h
    and h
    xor l
    ld a, a
    adc a
    and b
    or c
    and b
    and e
    xor b
    or d
    and h
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    add d
    and b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and h
    or a
    xor a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    db $f4
    ld c, a
    or e
    and a
    and h
    ld a, a
    and h
    and b
    or d
    xor b
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld d, l
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld d, l
    xor e
    xor b
    xor h
    xor b
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld d, l
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc [hl]
    adc b
    adc l
    sub e
    or d
    db $f4
    ld a, a
    adc a
    adc a
    add sp, $51
    sub e
    xor [hl]
    ld a, a
    or c
    and h
    xor a
    xor e
    and h
    xor l
    xor b
    or d
    and a
    ld a, a
    adc a
    adc a
    db $f4
    ld c, a
    or c
    and h
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    rst $20
    ld d, a
    nop
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    cp l
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    add sp, -$18
    add sp, $57
    nop
    adc b
    or e
    cp l
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    or d
    ld a, a
    and d
    and b
    xor h
    and h
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    xor l
    rst $20
    ld d, c
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
    and h
    and e
    ld a, a
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    adc h
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld d, l
    and l
    and h
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    xor l
    cp [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    db $e4
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    add c
    sub h
    add [hl]
    ld a, a
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    or d
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add [hl]
    sbc b
    adc h
    cp l
    ld d, l
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc h
    sub h
    sub d
    add h
    sub h
    adc h
    and $57
    nop
    sub [hl]
    and h
    or c
    and h
    xor l
    cp [hl]
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld c, a
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc h
    sub e
    add sp, $55
    adc h
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    and $57
    nop
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    and $4f
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    and c
    or d
    xor [hl]
    xor e
    or h
    or e
    and h
    xor e
    cp b
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc b
    or e
    cp l
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    and b
    cp b
    ld d, l
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    xor b
    or e
    cp l
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    ld a, a
    xor b
    or e
    rst $20
    ld d, l
    sub d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    rst $20
    ld d, a
    nop
    adc a
    or d
    or d
    or d
    or d
    or e
    rst $20
    ld c, a
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld d, l
    adc b
    push hl
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    rst $20
    ld d, a
    nop
    adc b
    push hl
    ld a, a
    or d
    xor a
    or c
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    and b
    or c
    and e
    and h
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $7f
    add c
    sub c
    adc [hl]
    add d
    adc d
    cp l
    ld d, l
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor l
    and h
    or [hl]
    ld d, l
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    or c
    or d
    rst $20
    ld d, l
    add l
    xor [hl]
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or d
    or e
    or h
    and l
    and l
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or e
    and b
    xor d
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    add c
    sub c
    adc [hl]
    add d
    adc d
    rst $20
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    add b
    xor l
    cp b
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
    ld c, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor b
    xor l
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    ld d, l
    or d
    and a
    xor [hl]
    or c
    or e
    db $f4
    ld a, a
    and h
    and b
    or c
    xor l
    or d
    ld a, a
    add h
    sub a
    adc a
    rst $20
    ld d, a
    nop
    adc l
    adc [hl]
    sub e
    adc b
    add d
    add h
    rst $20
    ld d, c
    sub e
    and a
    xor b
    and h
    or l
    and h
    or d
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
    ld c, a
    or d
    or e
    and h
    and b
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and l
    xor [hl]
    or d
    or d
    xor b
    xor e
    or d
    ld a, a
    and b
    or e
    ld a, a
    adc h
    sub e
    add sp, $55
    adc h
    adc [hl]
    adc [hl]
    adc l
    rst $20
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    ld d, l
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
    rst $20
    ld d, a
    nop
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    adc h
    sub h
    sub d
    add h
    sub h
    adc h
    ld c, a
    adc [hl]
    add l
    ld a, a
    sub d
    add d
    adc b
    add h
    adc l
    add d
    add h
    ld d, a
    nop
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub c
    xor [hl]
    and d
    xor d
    ld a, a
    sub d
    xor [hl]
    xor e
    xor b
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, a
    nop
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add b
    ld a, a
    sub d
    or e
    xor [hl]
    xor l
    and h
    ld a, a
    add [hl]
    or c
    and b
    cp b
    ld d, l
    add d
    xor b
    or e
    cp b
    ld d, a
    nop
    ld d, e
    sbc h
    ld a, a
    sbc b
    xor [hl]
    rst $20
    ld c, a
    ld d, d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld c, a
    or d
    or e
    or c
    or h
    and [hl]
    and [hl]
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld d, l
    and c
    and b
    and d
    xor d
    ld a, a
    and a
    and h
    or c
    and h
    and $51
    adc b
    push hl
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld c, a
    adc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld a, a
    and c
    or h
    xor l
    and d
    and a
    ld d, l
    xor [hl]
    and l
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or d
    xor h
    and b
    or c
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    xor e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    db $f4
    ld d, l
    ld d, d
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld c, a
    sub e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and h
    and b
    or d
    cp b
    rst $20
    ld d, l
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    rst $20
    ld e, b
    nop
    add a
    and h
    and a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    and h
    xor l
    xor b
    or h
    or d
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    and h
    cp b
    db $f4
    ld c, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $51
    adc b
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    add c
    adc b
    adc e
    adc e
    cp l
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    ld a, a
    and a
    xor b
    or d
    ld a, a
    or c
    and b
    or c
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    and b
    and e
    and e
    and h
    and e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor a
    and b
    and [hl]
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld d, c
    add b
    and l
    or e
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    db $f4
    ld a, a
    add c
    adc b
    adc e
    adc e
    cp l
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    xor b
    xor l
    or l
    and h
    xor l
    or e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld d, l
    sub d
    cp b
    or d
    or e
    and h
    xor h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    adc a
    add d
    rst $20
    ld d, c
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    xor b
    or d
    ld a, a
    or d
    cp b
    or d
    or e
    and h
    xor h
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or e
    and a
    and b
    xor l
    xor d
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, c
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, l
    sub d
    xor h
    and h
    xor e
    xor e
    ld a, a
    cp b
    and b
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub d
    or e
    and b
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld c, a
    adc b
    or e
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    cp b
    and b
    or c
    and e
    rst $20
    ld a, a
    add a
    or h
    and a
    and $7f
    adc h
    and h
    and $51
    adc b
    push hl
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    xor l
    xor l
    xor [hl]
    and d
    and h
    xor l
    or e
    ld c, a
    and c
    cp b
    or d
    or e
    and b
    xor l
    and e
    and h
    or c
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    cp [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor h
    and h
    and $57
    nop
    ld d, d
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
    ld c, a
    sub e
    adc h
    ld hl, sp-$02
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    adc b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    rst $20
    ld a, a
    add c
    cp b
    and h
    rst $20
    ld d, b
    ld d, b
    nop
    adc h
    and b
    xor d
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    or c
    or h
    xor l
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld c, a
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sub d
    or e
    xor [hl]
    xor a
    rst $20
    ld c, a
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld a, a
    adc b
    cp h
    xor e
    ld d, l
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    or b
    or h
    xor b
    and h
    or e
    xor e
    cp b
    rst $20
    ld e, b
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    adc b
    cp h
    xor e
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc h
    ld a, a
    adc b
    ld a, a
    or d
    or e
    xor [hl]
    xor e
    and h
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld c, a
    or e
    xor [hl]
    xor [hl]
    and $7f
    add d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    db $f4
    ld d, l
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    cp l
    ld a, a
    and b
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor e
    xor b
    and l
    and h
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    and c
    or h
    or d
    and a
    ld a, a
    xor b
    xor l
    ld c, a
    and l
    or c
    xor [hl]
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    ld d, l
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld c, a
    or [hl]
    and b
    cp b
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    ld c, a
    and h
    xor l
    and d
    cp b
    and d
    xor e
    xor [hl]
    xor a
    and h
    and e
    xor b
    and b
    ld a, a
    xor [hl]
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $7f
    sub e
    and a
    and b
    or e
    ld d, l
    or d
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    and b
    xor h
    or h
    or d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub e
    and a
    and h
    or d
    and h
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or c
    xor [hl]
    and c
    and c
    and h
    and e
    add sp, $51
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    xor a
    xor [hl]
    or d
    xor b
    or e
    xor b
    or l
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld d, l
    xor b
    or d
    ld a, a
    and c
    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    or e
    and h
    or c
    or c
    xor b
    and c
    xor e
    and h
    ld a, a
    and e
    and h
    and h
    and e
    add sp, $51
    add h
    or l
    and h
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld c, a
    add l
    adc [hl]
    sub c
    add d
    add h
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    rst $20
    ld c, a
    sub h
    or d
    and h
    ld a, a
    sub d
    adc [hl]
    adc l
    adc b
    add d
    add c
    adc [hl]
    adc [hl]
    adc h
    rst $20
    ld d, l
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    db $f4
    ld d, l
    xor a
    and b
    cp b
    ld a, a
    and b
    or e
    or e
    and h
    xor l
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    db $f4
    ld a, a
    sub e
    add b
    add d
    adc d
    adc e
    add h
    rst $20
    ld c, a
    adc l
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    xor e
    and h
    or [hl]
    ld a, a
    xor b
    or e
    ld d, l
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    db $f4
    ld a, a
    sub d
    sub [hl]
    adc b
    add l
    sub e
    rst $20
    ld c, a
    adc l
    xor [hl]
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    sub e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor b
    or d
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
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    cp l
    ld c, a
    xor [hl]
    and c
    and h
    and e
    xor b
    and h
    xor l
    and d
    and h
    ld a, a
    and e
    and h
    xor a
    and h
    xor l
    and e
    or d
    ld d, l
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    xor b
    and h
    or d
    ld d, l
    and b
    or d
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, a
    nop
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    ld c, a
    or d
    xor l
    xor [hl]
    xor [hl]
    cp c
    and h
    add sp, -$18
    add sp, $57
    nop
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    ld a, a
    xor b
    or d
    ld c, a
    xor e
    xor [hl]
    and b
    and l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, -$18
    add sp, $57
    nop
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    and b
    or [hl]
    and b
    cp b
    add sp, -$18
    add sp, $57
    nop
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    ld c, a
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    and h
    and e
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    or d
    add sp, -$18
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    or c
    and h
    and e
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    rst $20
    ld d, c
    adc b
    cp h
    xor e
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    ld a, a
    and b
    or e
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    and e
    xor b
    or c
    or e
    cp b
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld c, a
    add d
    add b
    sub l
    add h
    rst $20
    ld a, a
    add a
    xor [hl]
    or c
    or c
    xor b
    and c
    xor e
    cp b
    ld d, l
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor e
    xor b
    or l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld c, a
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, l
    xor b
    or d
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add b
    ld a, a
    adc h
    cp b
    or d
    or e
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    db $f4
    ld d, l
    add c
    xor e
    or h
    and h
    ld a, a
    add b
    or h
    or c
    and b
    ld d, l
    sub d
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    adc b
    or e
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    adc a
    or c
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    add c
    ld a, a
    add c
    or h
    or e
    or e
    xor [hl]
    xor l
    ld c, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    ld d, l
    and d
    and b
    xor l
    and d
    and h
    xor e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld d, l
    xor a
    or c
    xor [hl]
    and d
    and h
    or d
    or d
    add sp, $57
    nop
    add [hl]
    or c
    and b
    or d
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or l
    and h
    or d
    ld c, a
    and a
    and b
    xor l
    and e
    xor e
    and h
    and e
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    rst $20
    ld d, l
    add c
    adc b
    adc d
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld d, a
    nop
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub e
    xor [hl]
    xor h
    and c
    xor [hl]
    cp b
    xor b
    or d
    and a
    ld c, a
    adc h
    and h
    or c
    xor h
    and b
    xor b
    and e
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    or d
    and $57
    nop
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    and $7f
    sub d
    xor [hl]
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    or c
    or d
    add sp, -$18
    add sp, $57
    nop
    add a
    and b
    and a
    and b
    and a
    and b
    db $f4
    ld a, a
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld c, a
    xor l
    xor [hl]
    or e
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and a
    xor b
    or e
    and h
    ld a, a
    and a
    and b
    xor l
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    db $f4
    ld d, l
    xor b
    or e
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or c
    and h
    and b
    xor e
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor b
    or d
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld c, a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or l
    and h
    ld a, a
    or d
    xor b
    or e
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc h
    and h
    xor h
    xor [hl]
    or c
    xor b
    and b
    xor e
    ld a, a
    or d
    and h
    or c
    or l
    xor b
    and d
    and h
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    and a
    and h
    xor e
    and e
    ld a, a
    xor b
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $57
    nop
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or e
    and a
    and h
    cp b
    db $e4
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
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
    or e
    and a
    and h
    ld d, l
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    or d
    ld a, a
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    add sp, $57
    nop
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld c, a
    sub e
    and a
    and h
    ld a, a
    adc l
    xor [hl]
    and c
    xor e
    and h
    ld a, a
    adc a
    or h
    or c
    xor a
    xor e
    and h
    ld d, l
    sub e
    xor [hl]
    or [hl]
    xor l
    ld d, a
    nop
    adc l
    and h
    or [hl]
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    sub d
    add d
    adc [hl]
    adc a
    add h
    rst $20
    ld d, c
    adc h
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc b
    xor l
    or l
    xor b
    or d
    xor b
    and c
    xor e
    and h
    ld c, a
    adc a
    xor e
    and b
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub d
    and h
    and h
    rst $20
    ld d, c
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, $57
    nop
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub l
    adc [hl]
    adc e
    sub h
    adc l
    sub e
    add h
    add h
    sub c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    adc h
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    xor [hl]
    or h
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub c
    and h
    or d
    or e
    ld a, a
    add h
    and b
    or d
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, a
    nop
    sub [hl]
    and h
    db $e4
    and h
    ld a, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor a
    xor [hl]
    xor e
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    sub [hl]
    and h
    cp a
    and h
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    add [hl]
    sub c
    adc b
    adc h
    add h
    sub c
    ld c, a
    xor h
    or h
    xor e
    or e
    xor b
    xor a
    xor e
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    xor [hl]
    or a
    xor b
    and d
    ld a, a
    or d
    xor e
    or h
    and e
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld a, a
    sub d
    add sp, -$6e
    add sp, $4f
    add b
    adc l
    adc l
    add h
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    or c
    and h
    and e
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and a
    and b
    or c
    and c
    xor [hl]
    or c
    and $57
    nop
    sub d
    xor [hl]
    db $f4
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    ld a, a
    and a
    and b
    or d
    ld c, a
    and e
    and h
    xor a
    and b
    or c
    or e
    and h
    and e
    rst $20
    ld d, c
    sub d
    and a
    and h
    cp h
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    cp b
    and h
    and b
    or c
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub d
    add sp, -$6e
    add sp, $4f
    add b
    adc l
    adc l
    add h
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub d
    add sp, -$6e
    add sp, $4f
    add b
    adc l
    adc l
    add h
    rst $20
    ld d, c
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    or e
    xor b
    and d
    xor d
    and h
    or e
    and $58
    nop
    ld d, d
    ld a, a
    and l
    xor e
    and b
    or d
    and a
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    rst $20
    ld d, c
    add [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld a, a
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    cp [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    and h
    and e
    and h
    and e
    ld d, l
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    add sp, $51
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    and b
    ld a, a
    or e
    xor b
    and d
    xor d
    and h
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    and c
    xor [hl]
    and b
    or c
    and e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    ld a, a
    or d
    and h
    or e
    ld a, a
    or d
    and b
    xor b
    xor e
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    xor a
    or h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld c, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    xor a
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    and b
    xor l
    and e
    add sp, $51
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and b
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    xor l
    and e
    add sp, $57
    nop
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    sbc h
    ld a, a
    add [hl]
    or h
    xor [hl]
    and a
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    and [hl]
    xor [hl]
    and [hl]
    xor [hl]
    and a
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    add b
    ld a, a
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    ld a, a
    xor b
    or d
    ld c, a
    or d
    or e
    xor [hl]
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    xor l
    and e
    ld d, l
    and l
    xor e
    and b
    or e
    add sp, $57
    nop
    sub d
    add sp, -$6e
    add sp, -$80
    adc l
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    xor e
    or h
    or a
    or h
    or c
    cp b
    ld d, l
    and d
    or c
    or h
    xor b
    or d
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    add sp, $51
    sub [hl]
    and h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld c, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    and b
    ld a, a
    cp b
    and h
    and b
    or c
    add sp, $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld c, a
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    or d
    and d
    and a
    xor b
    and h
    and l
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    and b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or e
    or c
    and b
    xor b
    and [hl]
    and a
    or e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, c
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld c, a
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    or d
    and d
    and a
    xor b
    and h
    and l
    add sp, $51
    sub [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    and $57
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or c
    and h
    and b
    or e
    ld c, a
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, b
    ld d, b
    nop
    adc [hl]
    and a
    add sp, -$18
    add sp, $7f
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    xor h
    ld a, a
    adc b
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or d
    ld a, a
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    ld c, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    sub e
    and a
    and h
    ld a, a
    adc a
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
    add h
    or a
    or b
    or h
    xor b
    or d
    xor b
    or e
    and h
    ld a, a
    sub d
    or h
    xor l
    or d
    and h
    or e
    or d
    ld d, a
    nop
    adc l
    adc [hl]
    sub e
    adc b
    add d
    add h
    rst $20
    ld d, c
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld hl, sp+$7f
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld d, l
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add e
    and h
    or e
    xor [hl]
    or h
    or c
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    ld a, a
    or e
    xor [hl]
    ld d, l
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    add sp, $51
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add l
    add b
    adc l
    ld a, a
    add d
    adc e
    sub h
    add c
    ld c, a
    add b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    and b
    xor l
    or d
    ld d, l
    or [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    ld c, a
    add b
    xor h
    and h
    or c
    xor b
    and d
    and b
    xor l
    rst $20
    ld d, a
    nop
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    add a
    add b
    sub c
    add c
    adc [hl]
    sub c
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    adc d
    adc [hl]
    add l
    add l
    adc b
    adc l
    add [hl]
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld c, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    or l
    and h
    or c
    cp b
    ld a, a
    xor l
    xor b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add a
    and h
    and a
    and h
    and a
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld a, a
    adc b
    or e
    cp l
    ld d, l
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    xor [hl]
    xor h
    and h
    xor l
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld c, a
    xor b
    or d
    ld a, a
    and c
    and b
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    and d
    xor b
    or e
    cp b
    cp l
    ld a, a
    xor b
    xor h
    and b
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    adc h
    xor [hl]
    and b
    xor l
    rst $20
    ld a, a
    adc b
    ld a, a
    and c
    xor e
    and h
    or [hl]
    ld a, a
    xor b
    or e
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    or d
    rst $20
    ld d, c
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and d
    and b
    or d
    and a
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld d, l
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc b
    cp a
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld d, l
    and d
    and a
    and b
    xor l
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor e
    xor d
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    cp l
    ld a, a
    and b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and e
    or c
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    cp b
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cf4a
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    sub e
    adc h
    ld a, [$7ff7]
    or e
    and h
    and b
    and d
    and a
    and h
    or d
    ld c, a
    sub d
    adc [hl]
    add l
    sub e
    add c
    adc [hl]
    adc b
    adc e
    add h
    add e
    rst $20
    ld d, c
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and d
    and b
    xor l
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    and d
    xor d
    ld a, a
    xor b
    or d
    ld c, a
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    or c
    or h
    or d
    or e
    and h
    and e
    ld c, a
    xor a
    and b
    xor e
    db $f4
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld d, l
    or h
    or d
    and h
    and e
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    rst $20
    ld d, a
    nop
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    sbc h
    ld a, a
    sub c
    xor b
    and c
    xor b
    ld c, a
    or c
    xor b
    and c
    xor b
    or e
    rst $20
    ld d, b
    ld d, b
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    or e
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    and $57
    nop
    adc d
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub e
    add h
    add b
    adc h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    cp l
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    sub e
    and a
    and h
    ld a, a
    add d
    xor b
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld d, l
    sub c
    and b
    xor b
    xor l
    and c
    xor [hl]
    or [hl]
    ld a, a
    add e
    or c
    and h
    and b
    xor h
    or d
    ld d, a
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    add h
    sub c
    adc b
    adc d
    add b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc l
    and b
    or e
    or h
    or c
    and h
    db $e3
    adc e
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    adc a
    or c
    xor b
    xor l
    and d
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    adc l
    sub d
    adc b
    adc [hl]
    adc l
    ld d, a
    nop
    add l
    xor b
    xor l
    and e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor l
    and h
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld d, l
    add e
    add h
    adc a
    sub e
    add sp, $7f
    sub d
    sub e
    adc [hl]
    sub c
    add h
    rst $20
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    add [hl]
    sub h
    add b
    sub c
    add e
    ld a, a
    sub d
    adc a
    add h
    add d
    add sp, $4f
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, l
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    or d
    ld d, l
    and l
    xor b
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and b
    or e
    ld c, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, $55
    sub d
    sub e
    adc [hl]
    sub c
    add h
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    and h
    or a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    rst $20
    ld d, l
    adc a
    sub c
    adc b
    sbc c
    add h
    ld a, a
    add h
    sub a
    add d
    add a
    add b
    adc l
    add [hl]
    add h
    ld d, a
    nop
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld c, a
    sub e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    cp b
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    or h
    xor a
    or d
    rst $20
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    sub a
    ld a, a
    add b
    add d
    add d
    sub h
    sub c
    add b
    add d
    sbc b
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or d
    or e
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and b
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and h
    and d
    and a
    xor l
    xor b
    or b
    or h
    and h
    or d
    rst $20
    ld d, c
    add e
    adc b
    sub c
    add h
    ld a, a
    add a
    adc b
    sub e
    ld a, a
    xor c
    and b
    and d
    xor d
    or d
    ld a, a
    or h
    xor a
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    xor e
    xor b
    and a
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    and l
    ld d, l
    and d
    or c
    xor b
    or e
    xor b
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    or d
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and b
    or e
    ld c, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, $55
    sub d
    sub e
    adc [hl]
    sub c
    add h
    rst $20
    ld d, a
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    add [hl]
    add b
    adc h
    add h
    and $7f
    sub d
    xor [hl]
    xor h
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    and c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld c, a
    cp c
    xor [hl]
    xor [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    or e
    or c
    and b
    xor l
    and d
    and h
    add sp, $51
    adc [hl]
    or h
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add h
    sub c
    adc b
    adc d
    sbc h
    ld a, a
    sub [hl]
    and a
    and h
    or c
    and h
    cp l
    ld c, a
    sub d
    add b
    sub c
    add b
    and $7f
    adc b
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    adc b
    cp e
    ld d, l
    xor h
    and h
    and h
    or e
    ld a, a
    and a
    and h
    or c
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    and c
    and b
    xor e
    xor e
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    rst $20
    ld d, a
    nop
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add c
    and h
    and a
    xor [hl]
    xor e
    and e
    rst $20
    ld a, a
    adc b
    or e
    cp l
    ld d, l
    adc a
    and b
    or d
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    adc a
    xor b
    xor l
    xor d
    rst $20
    ld d, a
    nop
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $e3
    sub h
    db $e3
    add d
    add b
    sub e
    add d
    add a
    rst $20
    ld d, a
    nop
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld c, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    cp l
    ld a, a
    add a
    adc [hl]
    adc h
    add h
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc a
    add b
    sub c
    add b
    add e
    adc b
    sub d
    add h
    ld c, a
    sub d
    add b
    add l
    add b
    sub c
    adc b
    ld a, a
    sbc c
    adc [hl]
    adc l
    add h
    ld d, a
    nop
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    adc d
    adc [hl]
    add [hl]
    add b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld c, a
    adc l
    xor b
    xor l
    xor c
    and b
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    ld d, c
    add d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    xor l
    and d
    and h
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    sub l
    adc [hl]
    adc e
    sub e
    adc [hl]
    sub c
    add c
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    adc d
    add b
    adc l
    add [hl]
    add b
    sub d
    adc d
    add a
    add b
    adc l
    ld d, c
    add b
    ld a, a
    xor h
    and b
    or e
    and h
    or c
    xor l
    and b
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld d, l
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    xor a
    xor [hl]
    or h
    and d
    and a
    ld d, l
    xor [hl]
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
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld d, c
    add l
    or c
    xor b
    and h
    xor l
    and e
    xor e
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    or d
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    ld d, c
    add b
    add sp, -$76
    add sp, -$80
    add sp, $7f
    or e
    and a
    and h
    ld a, a
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    or d
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    adc [hl]
    adc h
    add b
    adc l
    sbc b
    sub e
    add h
    ld d, c
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
    ld c, a
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
    ld d, l
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
    add sp, $58
    nop
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    ld d, c
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
    ld c, a
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
    ld d, l
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
    add sp, $58
    nop
    add sp, -$18
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor b
    or d
    ld c, a
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    add sp, -$18
    add sp, $57
    nop
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    add [hl]
    sbc b
    adc h
    cp l
    ld c, a
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor l
    ld a, a
    xor [hl]
    and e
    and e
    ld d, l
    xor h
    and b
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor e
    xor b
    or l
    and h
    and e
    ld d, l
    and a
    and h
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and e
    and h
    and d
    and b
    and e
    and h
    or d
    add sp, $57
    nop
    sub d
    and d
    xor b
    and h
    xor l
    or e
    xor b
    or d
    or e
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and e
    or h
    and d
    or e
    ld c, a
    and h
    or a
    xor a
    and h
    or c
    xor b
    xor h
    and h
    xor l
    or e
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and c
    or h
    or c
    xor l
    and h
    and e
    db $e3
    xor [hl]
    or h
    or e
    ld d, l
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    ld c, a
    sub e
    and a
    and h
    ld a, a
    add l
    xor b
    and h
    or c
    cp b
    ld a, a
    sub e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld d, l
    add c
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    add e
    and h
    or d
    xor b
    or c
    and h
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add b
    add c
    ld d, a
    nop
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add a
    xor [hl]
    or e
    db $e3
    add a
    and h
    and b
    and e
    and h
    and e
    ld c, a
    sub b
    or h
    xor b
    cp c
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and $4f
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    and a
    and h
    cp h
    xor e
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld d, a
    nop
    add [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    and c
    and h
    xor e
    xor [hl]
    xor l
    and [hl]
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    rst $20
    ld d, a
    nop
    add c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or l
    xor b
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, a
    xor h
    and h
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    or d
    xor [hl]
    ld a, a
    and b
    xor e
    xor b
    or l
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    or [hl]
    rst $20
    ld a, a
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    db $e4
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld c, a
    and d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    db $f4
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and h
    or a
    xor a
    xor e
    xor [hl]
    xor b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    sub e
    add h
    add b
    adc h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    and $55
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    rst $20
    ld a, a
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    rst $20
    ld d, l
    adc b
    or e
    cp l
    ld a, a
    or d
    and b
    and l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    and l
    xor e
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld d, l
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    and l
    xor e
    and h
    or [hl]
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld c, a
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld d, l
    or c
    and h
    and b
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    add sp, $51
    adc b
    or e
    cp l
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and $4f
    adc b
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor h
    and h
    and e
    xor b
    and b
    ld a, a
    and b
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    sbc h
    ld a, a
    add c
    xor b
    ld a, a
    and c
    xor b
    and c
    xor b
    xor b
    rst $20
    ld d, b
    ld d, b
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld c, a
    add c
    adc [hl]
    sub d
    sub d
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    xor b
    xor l
    and [hl]
    ld d, l
    sub d
    adc b
    adc e
    adc a
    add a
    cp l
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    push hl
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    or h
    or c
    xor b
    or e
    cp b
    ld c, a
    and [hl]
    or h
    and b
    or c
    and e
    add sp, $51
    sub d
    or h
    or d
    xor a
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    xor d
    xor b
    and e
    or d
    ld a, a
    adc b
    ld c, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add sp, -$18
    add sp, $4f
    sub d
    xor l
    xor [hl]
    or c
    and h
    add sp, -$18
    add sp, $51
    add a
    and b
    and a
    rst $20
    ld a, a
    add a
    and h
    cp l
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    or d
    xor l
    xor [hl]
    xor [hl]
    cp c
    and h
    rst $20
    ld d, a
    nop
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    sub d
    and a
    xor b
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    add [hl]
    xor [hl]
    xor e
    and e
    and h
    xor l
    ld d, l
    adc e
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    add d
    xor [hl]
    xor h
    xor h
    and h
    or c
    and d
    and h
    ld d, a
    nop
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld a, a
    add e
    adc [hl]
    adc c
    adc [hl]
    ld d, a
    nop
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    add l
    sub h
    adc e
    adc e
    ld a, a
    add a
    add h
    add b
    adc e
    ld a, a
    and d
    or h
    or c
    and h
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and b
    xor b
    xor e
    xor h
    and h
    xor l
    or e
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    or h
    or c
    xor l
    or d
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    or d
    or e
    or d
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    cp l
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or l
    and h
    xor l
    xor b
    and h
    xor l
    or e
    add sp, $57
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    adc l
    and h
    or [hl]
    ld a, a
    add [hl]
    sub c
    add h
    add b
    sub e
    ld a, a
    add c
    add b
    adc e
    adc e
    ld c, a
    xor [hl]
    and l
    and l
    and h
    or c
    or d
    ld a, a
    xor b
    xor h
    xor a
    or c
    xor [hl]
    or l
    and h
    and e
    ld d, l
    and d
    and b
    xor a
    or e
    or h
    or c
    and h
    ld a, a
    or c
    and b
    or e
    and h
    or d
    add sp, $51
    sub e
    or c
    cp b
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld c, a
    and a
    and b
    or c
    and e
    db $e3
    or e
    xor [hl]
    db $e3
    and d
    and b
    or e
    and d
    and a
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, $4f
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld a, a
    add c
    sub h
    adc b
    adc e
    add e
    adc b
    adc l
    add [hl]
    ld d, a
    nop
    adc h
    sub c
    add sp, -$71
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    cp l
    ld c, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    sub d
    adc b
    adc e
    adc a
    add a
    cp l
    ld a, a
    xor e
    and b
    or e
    and h
    or d
    or e
    ld c, a
    xor a
    or c
    xor [hl]
    and e
    or h
    and d
    or e
    rst $20
    ld d, c
    sub c
    and h
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and e
    and h
    or e
    and h
    or c
    xor h
    xor b
    xor l
    and h
    and e
    add sp, -$18
    add sp, $57
    nop
    adc b
    or e
    ld a, a
    and e
    xor [hl]
    and e
    and [hl]
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    add c
    add b
    adc e
    adc e
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    or c
    xor [hl]
    xor d
    and h
    ld a, a
    and l
    or c
    and h
    and h
    rst $20
    ld e, b
    nop
    add b
    or [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld a, a
    ld e, b
    nop
    sub d
    and a
    xor [hl]
    xor [hl]
    or e
    rst $20
    ld a, a
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    xor [hl]
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    add b
    xor e
    xor e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld c, a
    ld d, b
    ld bc, $cfd9
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld d, b
    ld d, b
    ld bc, $de05
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or e
    or c
    and b
    xor l
    or d
    and l
    and h
    or c
    or c
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    add c
    adc b
    adc e
    adc e
    cp l
    ld a, a
    adc a
    add d
    rst $20
    ld e, b
    ld bc, $de05
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or e
    or c
    and b
    xor l
    or d
    and l
    and h
    or c
    or c
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    cp l
    ld a, a
    adc a
    add d
    rst $20
    ld e, b
    nop
    adc l
    and h
    or [hl]
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    and e
    and b
    or e
    and b
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    and e
    and e
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld d, b
    ld bc, $cfd9
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    or c
    and h
    cp l
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    rst $20
    ld e, b
    ld bc, $cd6d
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or c
    and h
    and l
    or h
    or d
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    ld bc, $cd6d
    nop
    cp l
    ld c, a
    ld d, b
    ld bc, $cf4a
    nop
    ld a, a
    or c
    xor [hl]
    or d
    and h
    add sp, $58
    nop
    adc b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    add sp, $58
    nop
    ld d, d
    ld a, a
    or e
    and a
    or c
    and h
    or [hl]
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    add c
    add b
    adc b
    sub e
    add sp, $57
    nop
    ld d, d
    ld a, a
    or e
    and a
    or c
    and h
    or [hl]
    ld a, a
    and b
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add sp, $57
    nop
    adc a
    xor e
    and b
    cp b
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    ld c, a
    add l
    adc e
    sub h
    sub e
    add h
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    cp l
    ld a, a
    and b
    ld c, a
    and d
    and b
    or e
    and d
    and a
    cp b
    ld a, a
    or e
    or h
    xor l
    and h
    rst $20
    ld e, b
    nop
    add b
    xor e
    xor e
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    add sp, $58
    nop
    ld d, d
    ld a, a
    xor a
    xor e
    and b
    cp b
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    add sp, $50
    ld d, b
    nop
    add d
    xor [hl]
    xor b
    xor l
    or d
    ld c, a
    ld d, b
    ld [bc], a
    and e
    push de
    jp nz, Jump_02d_7f00

    ld e, b
    nop
    sbc b
    and h
    or d
    rst $20
    ld a, a
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld c, a
    xor b
    xor l
    and e
    xor b
    and d
    and b
    or e
    and h
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    cp l
    ld d, l
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    xor l
    and h
    and b
    or c
    and c
    cp b
    add sp, $58
    nop
    adc l
    xor [hl]
    xor a
    and h
    rst $20
    ld a, a
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld c, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    or c
    and h
    or d
    xor a
    xor [hl]
    xor l
    and e
    xor b
    xor l
    and [hl]
    add sp, $58
    nop
    sub c
    and b
    xor b
    or d
    and h
    ld a, a
    adc a
    adc a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    or e
    and h
    and d
    and a
    xor l
    xor b
    or b
    or h
    and h
    and $57
    nop
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    adc a
    adc a
    ld a, a
    xor [hl]
    and l
    ld c, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or e
    and h
    and d
    and a
    xor l
    xor b
    or b
    or h
    and h
    and $57
    ld bc, $cf4a
    nop
    cp l
    ld a, a
    adc a
    adc a
    ld c, a
    xor b
    or d
    ld a, a
    xor h
    and b
    or a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $58
    ld bc, $cf4a
    nop
    cp l
    ld a, a
    adc a
    adc a
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    and e
    add sp, $58
    nop
    adc a
    adc a
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    add sp, $58
    nop
    add c
    xor [hl]
    xor [hl]
    or e
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld a, a
    sub e
    adc h
    rst $20
    ld e, b
    nop
    add c
    xor [hl]
    xor [hl]
    or e
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    xor l
    ld a, a
    add a
    adc h
    rst $20
    ld e, b
    nop
    adc b
    or e
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
    ld c, a
    ld d, b
    ld bc, $cf4a
    nop
    rst $20
    ld d, c
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    ld d, b
    ld bc, $cf4a
    nop
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    ld bc, $cd6d
    nop
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    or e
    xor b
    and c
    xor e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    ld d, b
    ld bc, $cf4a
    nop
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    cp [hl]
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld c, a
    ld d, b
    ld bc, $cf4a
    nop
    add sp, $58
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld a, a
    ld e, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld c, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    rst $20
    ld e, b
    nop
    add e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    and h
    and l
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    ld a, a
    and d
    cp b
    and d
    xor e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    adc l
    xor [hl]
    ld a, a
    sub d
    sub h
    sub c
    add l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    rst $20
    ld a, a
    add d
    and b
    xor l
    cp [hl]
    ld d, l
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    and h
    xor h
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    or h
    or d
    and h
    and e
    ld d, b
    ld d, b
    ld bc, $cf4a
    nop
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, b
    ld d, b
    ld bc, $cf4a
    nop
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld d, b
    ld d, b
    nop
    or e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $cf4a
    nop
    add sp, $58
    nop
    sub e
    and a
    or c
    and h
    or [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld c, a
    ld d, b
    ld bc, $cd6d
    nop
    add sp, $58
    nop
    adc b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    adc [hl]
    adc d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or d
    or d
    ld c, a
    ld d, b
    ld bc, $cf4a
    nop
    and $58
    nop
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    db $e3
    ld c, a
    or e
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or d
    or d
    rst $20
    ld e, b
    ld bc, $cd6d
    nop
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld c, a
    ld d, b
    ld bc, $cf4a
    nop
    rst $20
    ld e, b
    nop
    adc [hl]
    xor d
    and b
    cp b
    db $f4
    ld a, a
    and d
    xor [hl]
    xor l
    xor l
    and h
    and d
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and d
    and b
    and c
    xor e
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or d
    xor [hl]
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $cd13
    nop
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld d, b
    ld bc, $cd1e
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    adc b
    push hl
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    ld d, b
    ld bc, $cd13
    nop
    rst $20
    ld a, a
    sub [hl]
    and b
    xor l
    xor l
    and b
    ld d, c
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    ld d, b
    ld bc, $cd1e
    nop
    and $7f
    ld d, a
    nop
    add b
    or [hl]
    or [hl]
    or [hl]
    rst $20
    ld c, a
    adc [hl]
    and a
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    add sp, -$18
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $cd13
    nop
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    db $f4
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
    ld d, a
    nop
    adc b
    or d
    xor l
    cp [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $cd1e
    nop
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld a, a
    add e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $cd13
    nop
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $cd1e
    nop
    and $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    xor l
    cp [hl]
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    add sp, -$18
    add sp, $57
    nop
    add a
    xor h
    xor h
    xor h
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld c, a
    ld d, b
    ld bc, $cd13
    nop
    add sp, $51
    sub e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    and h
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld c, a
    xor [hl]
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $cd13
    nop
    ld a, a
    xor b
    or d
    ld d, l
    xor h
    and b
    and [hl]
    xor l
    xor b
    and l
    xor b
    and d
    and h
    xor l
    or e
    rst $20
    ld d, a
    nop
    add a
    xor b
    rst $20
    ld a, a
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    ld d, b
    ld bc, $cd13
    nop
    and $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $cd1e
    nop
    and $57
    nop
    sub e
    and a
    and b
    or e
    cp l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    add sp, $57
    nop
    add sp, -$18
    add sp, -$6d
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    ld c, a
    ld d, b
    ld bc, $cd13
    nop
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    db $f4
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld a, a
    xor a
    and b
    xor e
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $cd1e
    nop
    and $51
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $cd13
    nop
    ld a, a
    xor b
    or d
    ld c, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    xor l
    cp [hl]
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    add d
    sub h
    sub e
    rst $20
    ld e, b
    ld bc, $cd6d
    nop
    ld a, a
    and a
    and b
    and d
    xor d
    and h
    and e
    ld c, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    add d
    sub h
    sub e
    rst $20
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $005e
    call Call_000_3c36
    xor a
    call Call_02d_7316

Jump_02d_71ba:
    ld a, [$c21a]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $734b
    add hl, bc
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld h, d
    ld l, e
    ld bc, $71ba
    push bc
    ld bc, $0003
    ldh a, [$f5]
    and $40
    jp nz, Jump_02d_7215

    add hl, bc
    ldh a, [$f5]
    and $80
    jp nz, Jump_02d_7215

    add hl, bc
    ldh a, [$f5]
    and $20
    jp nz, Jump_02d_7215

    add hl, bc
    ldh a, [$f5]
    and $10
    jp nz, Jump_02d_7215

    add hl, bc
    ldh a, [$f5]
    and $02
    jp nz, Jump_02d_7215

    add hl, bc
    ldh a, [$f5]
    and $01
    jp nz, Jump_02d_7215

    pop bc
    db $76
    jp Jump_02d_71ba


    ld hl, $ffa6
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $18
    inc hl
    ld [hl], $fe
    ret


Jump_02d_7215:
    push af
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    ld bc, $7220
    push bc
    jp hl


    pop af
    ld b, a

Jump_02d_7222:
    ldh a, [$f5]
    and b
    cp $00
    jp nz, Jump_02d_7222

    ret


Jump_02d_722b:
    pop bc
    pop bc
    pop bc
    ld a, $b6
    call Call_000_2238
    call Call_000_373e
    ld a, $03
    jp Jump_000_3ffa


Jump_02d_723b:
    xor a
    call Call_02d_7316
    ret


Call_02d_7240:
    ld a, $b2
    call Call_000_2238
    call Call_000_373e
    ret


Call_02d_7249:
    ld a, $79
    ld de, $0014
    dec b
    push bc
    push hl
    ld [hl+], a
    inc a
    dec c
    dec c
    call Call_02d_727d
    inc a
    ld [hl+], a

jr_02d_725a:
    ld a, $7c
    pop hl
    add hl, de
    pop bc
    dec b
    jr z, jr_02d_7270

    push bc
    push hl
    ld [hl+], a
    dec c
    dec c
    ld a, $7f
    call Call_02d_727d
    ld [hl], $7c
    jr jr_02d_725a

jr_02d_7270:
    ld a, $7d
    ld [hl+], a
    ld a, $7a
    dec c
    dec c
    call Call_02d_727d
    ld [hl], $7e
    ret


Call_02d_727d:
jr_02d_727d:
    ld [hl+], a
    dec c
    jr nz, jr_02d_727d

    ret


Call_02d_7282:
Jump_02d_7282:
    push de
    ld a, [hl]
    cp $0d
    jr nz, jr_02d_728e

    inc hl
    pop de
    ld de, $c4a5
    push de

jr_02d_728e:
    call Call_02d_72a4
    dec hl
    ld a, [hl]
    inc hl
    cp $00
    jr z, jr_02d_72a2

    pop de
    ld c, $14

jr_02d_729b:
    inc de
    dec c
    jr nz, jr_02d_729b

    push de
    jr jr_02d_728e

jr_02d_72a2:
    pop de
    ret


Call_02d_72a4:
jr_02d_72a4:
    ld a, [hl+]
    cp $00
    ret z

    cp $0a
    ret z

    push hl
    ld hl, $72bb
    ld b, $00
    sub $20
    ld c, a
    add hl, bc
    ld a, [hl]
    pop hl
    ld [de], a
    inc de
    jr jr_02d_72a4

    ld a, a
    rst $20
    nop
    nop
    nop
    nop
    nop
    ldh [$e1], a
    ld [c], a
    nop
    nop
    db $f4
    db $e3
    add sp, -$0d
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    sbc h
    sbc l
    nop
    nop
    nop
    and $00
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc [hl]
    di
    sbc a
    nop
    nop
    nop
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c

Call_02d_7316:
    push af

Jump_02d_7317:
    ldh a, [$f5]
    cp $00
    jp nz, Jump_02d_7317

    pop af
    ld [$c21a], a
    ld b, $00
    ld c, a
    add a
    add c
    inc a
    ld c, a
    ld hl, $734b
    add hl, bc
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld h, e
    ld l, d
    ld c, $13
    add hl, bc
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld h, e
    ld l, d
    push hl
    ld hl, $c3de
    ld bc, $0912
    call Call_02d_7249
    pop hl
    ld bc, $734a
    push bc
    jp hl


    ret


    ld bc, $7360
    ld bc, $751c
    ld bc, $7670
    ld bc, $7772
    ld bc, $78d1
    ld bc, $7a4a
    ld bc, $7ba3
    ld bc, $7e04
    ld bc, $7e10
    ld bc, $734a
    ld bc, $734a
    ld bc, $722b
    ld bc, $74bf
    ld bc, $74ae
    ld bc, $73dc
    ld bc, $7400
    ld bc, $7421
    ld bc, $7443
    ld bc, $745d
    ld bc, $747d
    ld bc, $749f
    ld d, a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_02d_73fe

    ld h, l
    ld l, l
    ld l, a
    ld [hl], d
    ld a, c
    ld a, [bc]
    ld c, b
    ld h, l
    ld a, b
    jr nz, jr_02d_7412

    ld l, c
    ld h, l
    ld [hl], a
    ld h, l
    ld [hl], d
    ld a, [bc]
    ld b, c
    ld l, [hl]
    ld [hl], h
    ld l, c
    dec l
    ld h, e
    ld [hl], d
    ld h, c
    ld [hl], e
    ld l, b
    ld h, l
    ld [hl], d
    ld a, [bc]
    ld c, l
    ld h, l
    ld l, l
    ld b, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], l
    ld [hl], b
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, [bc]
    ld c, l
    ld l, c
    ld [hl], e
    ld h, e
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, l
    ld l, a
    ld [hl], l
    ld [hl], e
    ld a, [bc]
    ld b, c
    ld h, h
    ld h, h
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_02d_743f

    ld l, c
    ld [hl], e
    ld [hl], h
    ld a, [bc]
    ld b, l
    ld a, b
    ld l, c
    ld [hl], h
    nop
    ld d, a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, @+$75

    ld l, c
    ld l, [hl]
    ld h, a
    ld l, h
    ld h, l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    ld a, [bc]
    ld a, [bc]
    ld l, l
    ld [hl], l
    ld l, h
    ld [hl], h
    ld l, c
    dec l
    ld h, d
    ld a, c
    ld [hl], h
    ld h, l
    jr nz, jr_02d_7470

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l

jr_02d_73fe:
    ld [hl], e
    nop
    ld d, [hl]
    ld l, c
    ld h, l
    ld [hl], a
    jr nz, jr_02d_7469

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_02d_747e

    ld h, [hl]
    ld a, [bc]
    ld a, [bc]

jr_02d_7412:
    ld d, d
    ld c, a
    ld c, l
    inc l
    jr nz, jr_02d_746a

    ld b, c
    ld c, l
    inc l
    jr nz, @+$67

    ld [hl], h
    ld h, e
    ld l, $00
    ld c, b
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_02d_7479

    ld d, e
    ld d, h
    jr nz, jr_02d_74a1

    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld [hl], e
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld l, a
    jr nz, jr_02d_74aa

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_02d_749f

    ld [hl], d
    ld h, c
    ld [hl], e

jr_02d_743f:
    ld l, b
    ld h, l
    ld [hl], e
    nop
    ld b, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], l
    ld [hl], b
    ld [hl], h
    jr nz, jr_02d_74ae

    ld l, h
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    ld a, [bc]
    ld a, [bc]
    ld l, a
    ld h, [hl]
    jr nz, jr_02d_74c4

    ld h, l
    ld l, l
    ld l, a
    ld [hl], d
    ld a, c
    nop
    ld d, b
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    jr nz, @+$65

    ld l, a
    ld l, l
    ld l, l

jr_02d_7469:
    ld l, a

jr_02d_746a:
    ld l, [hl]
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld h, c
    ld [hl], e

jr_02d_7470:
    ld l, e
    ld [hl], e
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, @+$6a

    ld h, c

jr_02d_7479:
    ld h, e
    ld l, e
    ld [hl], e
    nop
    ld c, l

jr_02d_747e:
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_02d_74ec

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld a, [bc]
    ld a, [bc]
    ld h, c
    ld h, h
    ld h, h
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], e
    jr nz, jr_02d_750c

    ld l, a
    jr nz, jr_02d_7506

    ld l, [hl]
    ld l, a
    ld [hl], a
    nop

jr_02d_749f:
    ld d, c
    ld [hl], l

jr_02d_74a1:
    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6f

jr_02d_74aa:
    ld h, l
    ld l, [hl]
    ld [hl], l
    nop

jr_02d_74ae:
    xor a
    ld [$c21b], a
    ld hl, $738a
    ld de, $c3f4
    call Call_02d_7282
    call Call_02d_7e27
    ret


    ld a, [$c21b]
    cp $06

jr_02d_74c4:
    jp z, Jump_02d_722b

    inc a
    call Call_02d_7316
    ret


    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    add b
    add c
    add d
    add e
    add h
    add l

Call_02d_74dc:
    ld a, [hl]
    ld c, $00
    ld de, $74cc

jr_02d_74e2:
    ld a, [de]
    cp [hl]
    jr z, jr_02d_74ea

    inc c
    inc de
    jr jr_02d_74e2

jr_02d_74ea:
    ld a, c
    ret


Call_02d_74ec:
jr_02d_74ec:
    xor a
    call Call_02d_74dc
    swap a
    inc hl
    push af
    call Call_02d_74dc
    ld c, a
    pop af
    add c
    ret


Call_02d_74fb:
    push de
    push hl
    ld hl, $74cc
    ld b, $00
    ld c, a
    add hl, bc
    ld d, h
    ld e, l

jr_02d_7506:
    ld a, [hl]
    pop hl
    ld [hl+], a
    pop de
    ret


Call_02d_750b:
    ld b, a

jr_02d_750c:
    push bc
    swap a
    and $0f
    call Call_02d_74fb
    pop bc
    ld a, b
    and $0f
    call Call_02d_74fb
    ret


    ld bc, $7637
    ld bc, $7655
    ld bc, $7605
    ld bc, $760f
    ld bc, $723b
    ld bc, $75d5
    ld bc, $7534
    ld bc, $7583
    xor a
    ld [$c21b], a
    inc a
    ld [$c21c], a
    call Call_02d_7e27
    ld hl, $7563
    ld de, $c3f3
    call Call_02d_7282
    ld a, $f6
    ld c, $0f
    ld hl, $c42f
    call Call_02d_727d
    ld hl, $c433
    ld [hl], $9c
    ld hl, $7573
    ld de, $c46b
    call Call_02d_7282
    jp Jump_02d_7619


    jr nz, jr_02d_7592

    ld d, a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_02d_75d9

    ld h, l
    ld l, l
    ld l, a
    ld [hl], d
    ld a, c
    dec l
    nop
    ld b, l
    ld a, b
    ld [hl], b
    ld [hl], d
    ld l, $20
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld [hl], h
    ld l, b
    ld a, [hl-]
    jr nz, jr_02d_75b3

    nop
    dec c
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, @+$43

    ld a, [hl-]
    jr nz, @+$4e

jr_02d_7592:
    ld h, l
    ld l, [hl]
    ld a, [bc]
    ld b, h
    dec l
    ld d, b
    ld b, c
    ld b, h
    ld a, [hl-]
    jr nz, jr_02d_75ea

    ld l, a
    ld h, h
    ld l, c
    ld h, [hl]
    ld a, c
    ld a, [bc]
    ld b, c
    jr nz, @+$44

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_02d_75fd

    ld c, e
    ld a, [bc]
    ld b, d
    jr nz, @+$44

jr_02d_75b3:
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, @+$45

    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, h
    nop

jr_02d_75c1:
    ld hl, $c21c
    ld a, [hl]
    inc a
    ld [hl], a
    cp $06
    jr nz, jr_02d_75cd

    ld [hl], $01

jr_02d_75cd:
    ld a, [hl]
    ld hl, $c479
    add $f6
    ld [hl], a
    ret


    ldh a, [$f5]
    and $08

jr_02d_75d9:
    cp $00
    jr nz, jr_02d_75c1

    ld hl, $c42f
    call Call_02d_74ec
    ld d, a
    push de
    inc hl
    call Call_02d_74ec
    pop de

jr_02d_75ea:
    ld e, a
    ld a, [$c21c]
    ld c, a
    ld hl, $c434

jr_02d_75f2:
    push bc
    push de
    call Call_02d_74ec
    inc hl
    pop de
    ld [de], a
    inc de
    pop bc
    dec c

jr_02d_75fd:
    jr nz, jr_02d_75f2

    call Call_02d_7240
    jp Jump_02d_723b


    ld hl, $c21b
    ld a, [hl]
    cp $00
    ret z

    dec [hl]
    jr jr_02d_7619

    ld hl, $c21b
    ld a, [hl]
    cp $0e
    ret z

    inc [hl]
    jr jr_02d_7619

Jump_02d_7619:
jr_02d_7619:
    ld hl, $c41b
    ld a, $7f
    ld c, $10
    push hl
    call Call_02d_727d
    pop hl
    ld a, [$c21b]
    add l
    ld l, a
    ld [hl], $ee
    ret


Call_02d_762d:
    ld hl, $c490
    ld bc, $0614
    call Call_02d_7249
    ret


    ld hl, $c42f
    ld a, [$c21b]
    add l
    ld l, a
    inc [hl]
    ld a, [hl]
    cp $9d
    jr z, jr_02d_7652

    cp $00
    jr z, jr_02d_764f

    cp $86
    ret nz

    ld [hl], $f6
    ret


jr_02d_764f:
    ld [hl], $80
    ret


jr_02d_7652:
    ld [hl], $9c
    ret


    ld hl, $c42f
    ld a, [$c21b]
    add l
    ld l, a
    dec [hl]
    ld a, [hl]
    cp $9b
    jr z, jr_02d_7652

    cp $f5
    jr z, jr_02d_766d

    cp $7f
    ret nz

    ld [hl], $ff
    ret


jr_02d_766d:
    ld [hl], $85
    ret


    ld bc, $7724
    ld bc, $7735
    ld bc, $7746
    ld bc, $7757
    ld bc, $723b
    ld bc, $7768
    ld bc, $7688
    ld bc, $7699
    xor a
    ld [$c21b], a
    ld [$c21c], a
    call Call_02d_7e27
    ld hl, $c3f3
    ld [hl], $7f
    jr jr_02d_76e3

    dec c
    ld d, l
    ld d, b
    cpl
    ld b, h
    ld c, a
    ld d, a
    ld c, [hl]
    ld a, [hl-]
    jr nz, jr_02d_76f1

    ld l, a
    db $76
    ld h, l
    jr nz, jr_02d_76da

    jr nc, jr_02d_76db

    ld a, [bc]
    ld c, h
    ld b, l
    ld b, [hl]
    ld d, h
    cpl
    ld d, d
    ld c, c
    ld b, a
    ld c, b
    ld d, h
    ld a, [hl-]
    jr nz, jr_02d_7706

    ld l, a
    db $76
    ld l, $31
    jr nc, jr_02d_76c9

    ld c, b
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_02d_7706

    ld a, [hl-]
    jr nz, jr_02d_7709

    ld [hl], l

jr_02d_76c9:
    ld [hl], h
    ld l, a
    ld [hl], l
    ld [hl], b
    ld h, h
    ld h, c
    ld [hl], h
    ld h, l
    ld a, [bc]
    ld b, d
    jr nz, @+$44

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]

jr_02d_76da:
    ld a, [hl-]

jr_02d_76db:
    jr nz, jr_02d_7720

    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, h
    nop

Jump_02d_76e3:
jr_02d_76e3:
    ld hl, $c3f3
    ld c, $07
    ld a, [$c21b]
    ld d, a
    ld a, [$c21c]
    ld e, a

jr_02d_76f0:
    push bc

jr_02d_76f1:
    push hl
    ld a, d
    call Call_02d_750b
    ld a, e
    call Call_02d_750b
    ld [hl], $9c
    inc hl
    ld a, [de]
    call Call_02d_750b
    inc de
    ld [hl], $7f
    inc hl
    ld a, [de]

jr_02d_7706:
    call Call_02d_750b

jr_02d_7709:
    inc de
    ld [hl], $7f
    inc hl
    ld a, [de]
    call Call_02d_750b
    inc de
    ld [hl], $7f
    inc hl
    ld a, [de]
    call Call_02d_750b
    inc de
    pop hl
    ld bc, $0014
    add hl, bc
    pop bc

jr_02d_7720:
    dec c
    jr nz, jr_02d_76f0

    ret


    ld hl, $c21b
    ldh a, [$f5]
    and $08
    jr z, jr_02d_7731

    ld a, [hl]
    sub $0f
    ld [hl], a

jr_02d_7731:
    dec [hl]
    jp Jump_02d_76e3


    ld hl, $c21b
    ldh a, [$f5]
    and $08
    jr z, jr_02d_7742

    ld a, [hl]
    add $0f
    ld [hl], a

jr_02d_7742:
    inc [hl]
    jp Jump_02d_76e3


    ld hl, $c21c
    ld a, [hl]
    cp $00
    jr nz, jr_02d_7751

    dec hl
    dec [hl]
    inc hl

jr_02d_7751:
    sub $10
    ld [hl], a
    jp Jump_02d_76e3


    ld hl, $c21c
    ld a, [hl]
    cp $f0
    jr nz, jr_02d_7762

    dec hl
    inc [hl]
    inc hl

jr_02d_7762:
    add $10
    ld [hl], a
    jp Jump_02d_76e3


    pop hl
    pop de
    ld de, $0000
    push de
    pop hl
    jp Jump_02d_76e3


    ld bc, $7e04
    ld bc, $7e10
    ld bc, $734a
    ld bc, $734a
    ld bc, $723b
    ld bc, $78b4
    ld bc, $7796
    ld bc, $77a7
    ld bc, $77c6
    ld bc, $7800
    ld bc, $7800
    ld bc, $7834
    xor a
    ld [$c21b], a
    call Call_02d_7e27
    ld hl, $786a
    ld de, $c3f4
    call Call_02d_7282
    ret


    ld d, h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_02d_781c

    ld h, [hl]
    ld h, [hl]
    jr nz, jr_02d_7803

    ld d, e
    ld d, h
    ld a, [bc]
    ld a, [bc]
    ld h, e
    ld [hl], d
    ld h, c
    ld [hl], e
    ld l, b
    jr nz, jr_02d_782c

    ld [hl], d
    ld h, l
    db $76
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    dec c
    ld b, [hl]
    ld l, c
    ld a, b
    ld h, l
    ld [hl], e
    jr nz, jr_02d_7842

    ld l, b
    ld h, l
    jr nz, @+$54

    ld d, e
    ld d, h
    ld a, [bc]
    db $76
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld [hl], e
    jr nz, jr_02d_7855

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_02d_7844

    ld l, [hl]
    ld a, [bc]
    ld h, c
    ld h, d
    ld [hl], e
    ld l, a
    ld l, h
    ld [hl], l
    ld [hl], h
    ld h, l
    jr nz, @+$6c

    ld [hl], l
    ld l, l
    ld [hl], b
    ld a, [bc]
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $00
    dec c
    ld b, [hl]
    ld l, c

jr_02d_7803:
    ld a, b
    ld h, l
    ld [hl], e
    jr nz, jr_02d_787c

    ld l, b
    ld h, l
    jr nz, jr_02d_785e

    ld d, e
    ld d, h
    ld a, [bc]
    db $76
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld [hl], e
    jr nz, jr_02d_788d

    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a

jr_02d_781c:
    ld a, [bc]
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_02d_788e

    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    dec l
    ld a, [bc]

jr_02d_782c:
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $00
    dec c
    ld b, [hl]
    ld l, c
    ld a, b
    ld h, l
    ld [hl], e
    jr nz, jr_02d_78b0

    ld l, b
    ld h, l
    jr nz, @+$54

    ld d, e
    ld d, h

jr_02d_7842:
    ld a, [bc]
    db $76

jr_02d_7844:
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld [hl], e
    jr nz, jr_02d_78c0

    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld a, [bc]
    ld [hl], e
    ld [hl], h

jr_02d_7855:
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_02d_78c7

    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], b

jr_02d_785e:
    ld [hl], l
    ld l, h
    ld h, c
    dec l
    ld a, [bc]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $00
    ld d, h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, @+$71

    ld h, [hl]
    ld h, [hl]
    ld a, [bc]
    ld c, d
    ld [hl], l
    ld l, l
    ld [hl], b
    jr nz, @+$68

    ld l, c
    ld a, b
    ld a, [bc]

jr_02d_787c:
    ld d, d
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_02d_78ea

    ld l, c
    ld a, b
    ld a, [bc]
    ld b, h
    ld h, d
    ld l, h
    dec l
    ld [hl], d
    ld h, l

jr_02d_788d:
    ld [hl], h

jr_02d_788e:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_02d_78f9

    ld l, c
    ld a, b
    ld a, [bc]
    ld d, e
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_02d_7903

    ld l, c
    ld a, b
    nop
    nop
    nop

jr_02d_78a2:
    jr jr_02d_78a2

    pop bc
    jp Jump_000_01b9


    ret


    sbc $ad
    nop
    pop hl
    pop hl
    pop hl
    jp hl


jr_02d_78b0:
    pop hl
    pop hl
    jp hl


    nop
    ld a, [$c21b]
    add a
    add a
    ld b, $00
    ld c, a
    ld hl, $78a0
    add hl, bc

jr_02d_78c0:
    ld de, $ffa6
    ld c, $04

jr_02d_78c5:
    ld a, [hl+]
    ld [de], a

jr_02d_78c7:
    inc de
    dec c
    jr nz, jr_02d_78c5

    call Call_02d_7240
    jp Jump_02d_723b


    ld bc, $798f
    ld bc, $79ad
    ld bc, $79c8
    ld bc, $79d2
    ld bc, $723b
    ld bc, $7a13
    ld bc, $78e9
    ld bc, $790b
    xor a

jr_02d_78ea:
    ld [$c21b], a
    call Call_02d_7e27
    ld hl, $794f
    ld de, $c3f3
    call Call_02d_7282

jr_02d_78f9:
    ld a, $f6
    ld c, $09
    ld hl, $c45a
    call Call_02d_727d

jr_02d_7903:
    ld hl, $c45e
    ld [hl], $e3
    jp Jump_02d_79da


    dec c
    ld b, h
    dec l
    ld d, b
    ld b, c
    ld b, h
    ld a, [hl-]
    jr nz, jr_02d_7961

    ld l, a
    ld h, h
    ld l, c
    ld h, [hl]
    ld a, c
    ld a, [bc]
    ld b, c
    jr nz, jr_02d_795f

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_02d_7968

    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], l
    ld [hl], b
    ld [hl], h
    ld a, [bc]
    ld b, d
    jr nz, jr_02d_7971

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_02d_797a

    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, h
    ld a, [bc]
    ld e, e
    ld [hl], e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_02d_7998

    ld b, c
    ld c, l
    jr nz, jr_02d_79b9

    ld l, [hl]
    ld l, h
    ld a, c
    ld e, l
    nop
    jr nz, jr_02d_797e

    ld c, l
    ld h, l
    ld l, l
    ld b, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], l
    ld [hl], b
    ld [hl], h
    ld l, a
    ld [hl], d
    dec l
    ld a, [bc]

jr_02d_795f:
    ld c, b
    ld l, a

jr_02d_7961:
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_02d_79d5

    db $76
    ld h, l

jr_02d_7968:
    ld [hl], d
    jr nz, jr_02d_79df

    ld l, b
    ld h, l
    ld a, [bc]
    ld h, h
    ld h, c
    ld [hl], e

jr_02d_7971:
    ld l, b
    jr nz, jr_02d_79d5

    ld l, [hl]
    ld h, h
    jr nz, @+$6a

    ld l, a
    ld l, h

jr_02d_797a:
    ld h, h
    jr nz, @+$43

    ld a, [bc]

jr_02d_797e:
    ld [hl], h
    ld l, a
    jr nz, @+$68

    ld [hl], l
    ld a, d
    ld a, d
    jr nz, jr_02d_79f9

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, a
    ld l, l
    ld l, h
    ld a, c
    nop
    ld hl, $c45a
    ld a, [$c21b]
    add l
    ld l, a
    inc [hl]

jr_02d_7998:
    ld a, [hl]
    cp $e4
    jr z, jr_02d_79aa

    cp $00
    jr z, jr_02d_79a7

    cp $86
    ret nz

    ld [hl], $f6
    ret


jr_02d_79a7:
    ld [hl], $80
    ret


jr_02d_79aa:
    ld [hl], $e3
    ret


    ld hl, $c45a
    ld a, [$c21b]
    add l
    ld l, a
    dec [hl]
    ld a, [hl]
    cp $e2

jr_02d_79b9:
    jr z, jr_02d_79aa

    cp $f5
    jr z, jr_02d_79c5

    cp $7f
    ret nz

    ld [hl], $ff
    ret


jr_02d_79c5:
    ld [hl], $85
    ret


    ld hl, $c21b
    ld a, [hl]
    cp $00
    ret z

    dec [hl]
    jr jr_02d_79da

    ld hl, $c21b

jr_02d_79d5:
    ld a, [hl]
    cp $08
    ret z

    inc [hl]

Jump_02d_79da:
jr_02d_79da:
    ld hl, $c446
    ld a, $7f

jr_02d_79df:
    ld c, $09
    push hl
    call Call_02d_727d
    pop hl
    ld a, [$c21b]
    add l
    ld l, a
    ld [hl], $ee
    ret


jr_02d_79ee:
    pop hl
    pop de
    ld de, $0000
    push de
    pop hl
    call Call_000_3e6d
    ld l, a

jr_02d_79f9:
    call Call_000_3e6d
    and $1f
    add $c0
    ld h, a
    call Call_000_3e6d
    ld [hl], a
    ld hl, $c44a
    ld a, [hl]
    cp $7f
    jr z, jr_02d_7a10

    ld [hl], $7f
    ret


jr_02d_7a10:
    ld [hl], $ee
    ret


    ld a, [$c21b]
    cp $04
    jr z, jr_02d_79ee

    ld hl, $c45a
    call Call_02d_74ec
    ld d, a
    push de
    inc hl
    call Call_02d_74ec
    pop de
    ld e, a
    inc hl
    inc hl
    push de
    call Call_02d_74ec
    ld d, a
    push de
    inc hl
    call Call_02d_74ec
    pop de
    ld e, a
    pop hl
    inc de

jr_02d_7a38:
    call Call_000_3e6d
    ld [hl+], a
    ld a, h
    cp d
    jr nz, jr_02d_7a38

    ld a, l
    cp e
    jr nz, jr_02d_7a38

    call Call_02d_7240
    jp Jump_02d_723b


    ld bc, $7b37
    ld bc, $7b3e
    ld bc, $7b28
    ld bc, $7b31
    ld bc, $723b
    ld bc, $7b59
    ld bc, $7a74
    ld bc, $7a8a
    ld bc, $7a8a
    ld bc, $7a8a
    ld bc, $7a8a
    ld bc, $7a8a
    ld bc, $7a8a
    ld bc, $7a8a
    xor a
    ld [$c21b], a
    ld [$c21c], a
    call Call_02d_7e27
    ld hl, $7ac7
    ld de, $c3f4
    call Call_02d_7282
    jp Jump_02d_7b1e


    dec c
    ld c, h
    cpl
    ld d, d
    ld a, [hl-]
    jr nz, jr_02d_7ade

    ld l, a
    ld h, h
    ld l, $70
    ld h, c
    ld [hl], d
    ld h, c
    ld l, l
    ld a, [bc]
    ld b, c
    jr nz, @+$44

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_02d_7ae6

    ld h, e
    ld h, e
    ld h, l
    ld [hl], b
    ld [hl], h
    ld a, [bc]
    ld b, d
    jr nz, jr_02d_7af0

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_02d_7af9

    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, h
    ld a, [bc]
    ld d, b
    ld h, c
    ld [hl], d
    ld h, c
    ld l, l
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld a, [hl-]
    nop
    ld b, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_02d_7af5

    add hl, hl
    ld a, [bc]
    ld b, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_02d_7b3e

    ld [hl], h
    ld h, l
    ld l, l
    ld a, [bc]
    ld b, e
    ld l, h
    ld h, l
    ld h, c
    ld [hl], d

jr_02d_7ade:
    jr nz, @+$2a

    add hl, hl
    jr nz, jr_02d_7b45

    ld l, a
    ld a, b
    ld a, [bc]

jr_02d_7ae6:
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_02d_7b51

    ld l, h
    ld a, c
    jr nz, @+$6e

    ld l, a

jr_02d_7af0:
    ld h, e
    ld [hl], e
    ld l, $0a
    ld d, b

jr_02d_7af5:
    ld [hl], d
    ld h, l
    ld h, h
    ld h, l

jr_02d_7af9:
    ld h, [hl]
    jr nz, jr_02d_7b57

    scf
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld l, h
    ld e, l
    ld a, [bc]
    ld c, l
    ld h, c
    ld a, b
    jr nz, jr_02d_7b76

    ld l, a
    ld l, [hl]
    ld h, l
    ld a, c
    ld a, [bc]
    ld b, h
    ld l, c
    ld [hl], e
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_02d_7b78

    ld [hl], d
    ld h, l
    ld h, c
    jr nz, jr_02d_7b70

    ld e, b
    nop

Jump_02d_7b1e:
jr_02d_7b1e:
    ld a, [$c21c]
    ld hl, $c4ec
    call Call_02d_750b
    ret


    ld hl, $c21c
    ld a, [hl]
    add $10
    ld [hl], a
    jr jr_02d_7b1e

    ld hl, $c21c
    inc [hl]
    jr jr_02d_7b1e

    ld bc, $7b1e
    push bc
    jp Jump_02d_7e04


jr_02d_7b3e:
    ld bc, $7b1e
    push bc
    jp Jump_02d_7e10


jr_02d_7b45:
    ld c, $05
    call Call_000_3e59
    jr jr_02d_7b7a

jr_02d_7b4c:
    ld c, $01
    call Call_000_3e3f

jr_02d_7b51:
    jr jr_02d_7b7a

jr_02d_7b53:
    xor a
    ld [$da7f], a

jr_02d_7b57:
    jr jr_02d_7b7a

    ld a, [$c21c]
    ld b, a
    ld a, [$c21b]
    cp $00
    jr z, jr_02d_7b45

    cp $01
    jr z, jr_02d_7b4c

    cp $02
    jr z, jr_02d_7b53

    cp $03
    jr z, jr_02d_7b80

jr_02d_7b70:
    cp $04
    jr z, jr_02d_7b89

    cp $05

jr_02d_7b76:
    jr z, jr_02d_7b8f

jr_02d_7b78:
    jr jr_02d_7b99

jr_02d_7b7a:
    call Call_02d_7240
    jp Jump_02d_723b


jr_02d_7b80:
    xor a
    dec a
    ld hl, $d70a
    ld [hl+], a
    ld [hl], a
    jr jr_02d_7b7a

jr_02d_7b89:
    ld a, b
    call Call_000_3eb4
    jr jr_02d_7b7a

jr_02d_7b8f:
    ld hl, $d346
    ld a, $99
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_02d_7b7a

jr_02d_7b99:
    ld a, b
    ldh [$8c], a
    call Call_000_2817
    pop bc
    jp Jump_02d_722b


    ld bc, $734a
    ld bc, $734a
    ld bc, $7dd8
    ld bc, $7de2
    ld bc, $723b
    ld bc, $734a
    ld bc, $7bbb
    ld bc, $7bcc
    xor a
    ld [$c21b], a
    call Call_02d_7e27
    ld hl, $7bfc
    ld de, $c3f3
    call Call_02d_7282
    ret


    ld c, h
    ld h, l
    ld h, [hl]
    ld [hl], h
    cpl
    ld d, d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_02d_7c05

    jr nz, jr_02d_7c4a

    ld h, c
    ld h, a
    ld h, l
    ld a, [bc]
    ld a, [bc]
    ld b, d
    jr nz, @+$44

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_02d_7c2d

    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, h
    nop
    ld bc, $7bfc
    ld bc, $7c73
    ld bc, $7cea
    ld bc, $7d61
    ld b, e
    jr nc, jr_02d_7c2f

    jr nc, jr_02d_7c3b

    jr nz, jr_02d_7c56

    ld l, a
    ld [hl], l

jr_02d_7c05:
    ld l, [hl]
    ld h, h
    jr nz, jr_02d_7c52

    cpl
    ld c, a
    jr nz, jr_02d_7c17

    ld b, e
    ld sp, $3030
    ld a, [hl-]
    jr nz, jr_02d_7c67

    ld [hl], b
    ld [hl], d
    ld l, c

jr_02d_7c17:
    ld [hl], h
    ld h, l
    ld b, h
    ld h, c
    ld [hl], h
    ld h, c
    ld a, [bc]
    ld b, e
    ld b, e
    ld [hl-], a
    jr c, jr_02d_7c5d

    jr nz, jr_02d_7c72

    ld h, l
    ld l, [hl]
    ld [hl], l
    jr nz, jr_02d_7c95

    ld h, l
    ld a, c
    ld [hl], e

jr_02d_7c2d:
    jr nz, jr_02d_7c39

jr_02d_7c2f:
    ld b, e
    ld b, [hl]
    ld b, e
    ld [hl], $3a
    jr nz, jr_02d_7c78

    ld h, c
    ld [hl], h
    ld [hl], h

jr_02d_7c39:
    ld l, h
    ld h, l

jr_02d_7c3b:
    jr nz, jr_02d_7cab

    ld h, [hl]
    ld l, a
    ld a, [bc]
    ld b, e
    ld b, [hl]
    scf
    ld b, c
    ld a, [hl-]
    jr nz, jr_02d_7c94

    ld h, c
    ld [hl], d
    ld [hl], h

jr_02d_7c4a:
    jr nz, jr_02d_7cb5

    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], e
    ld a, [bc]
    ld b, h

jr_02d_7c52:
    jr nc, jr_02d_7c89

    jr c, jr_02d_7c90

jr_02d_7c56:
    jr nz, jr_02d_7c9d

    ld l, [hl]
    ld h, e
    ld l, a
    ld [hl], l
    ld l, [hl]

jr_02d_7c5d:
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_02d_7c6c

    ld b, h
    ld sp, $3236
    ld a, [hl-]

jr_02d_7c67:
    jr nz, jr_02d_7cb9

    ld h, c
    ld [hl], d
    ld [hl], h

jr_02d_7c6c:
    ld a, c
    jr nz, jr_02d_7c97

    add hl, hl
    jr nz, jr_02d_7c92

jr_02d_7c72:
    nop
    ld b, h
    inc sp
    ld sp, $3a43

jr_02d_7c78:
    jr nz, @+$4b

    ld [hl], h
    ld h, l
    ld l, l
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld a, [bc]
    ld b, h
    inc sp
    dec [hl]
    dec [hl]
    ld a, [hl-]

jr_02d_7c89:
    jr nz, @+$45

    ld [hl], l
    ld [hl], d
    jr nz, @+$64

    ld h, c

jr_02d_7c90:
    ld h, h
    ld h, a

jr_02d_7c92:
    ld h, l
    ld [hl], e

jr_02d_7c94:
    ld a, [bc]

jr_02d_7c95:
    ld b, h
    inc sp

jr_02d_7c97:
    ld [hl], $31
    ld a, [hl-]
    jr nz, jr_02d_7cf4

    cpl

jr_02d_7c9d:
    ld e, c
    jr nz, jr_02d_7d03

    ld l, a
    ld l, a
    ld [hl], d
    ld h, h
    ld [hl], e
    ld a, [bc]
    ld b, h
    inc sp
    ld [hl], $45
    ld a, [hl-]

jr_02d_7cab:
    jr nz, jr_02d_7cfa

    ld h, c
    ld [hl], b
    jr nz, jr_02d_7d24

    ld h, e
    ld [hl], d
    ld l, c
    ld [hl], b

jr_02d_7cb5:
    ld [hl], h
    ld a, [bc]
    ld b, h
    dec [hl]

jr_02d_7cb9:
    inc sp
    ld b, c
    ld a, [hl-]
    jr nz, @+$4b

    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, @+$64

    ld l, a
    ld a, b
    jr nz, jr_02d_7cd2

    ld b, h
    jr c, jr_02d_7d03

    jr c, @+$3c

    jr nz, @+$59

    ld l, c
    ld l, h
    ld h, h

jr_02d_7cd2:
    jr nz, jr_02d_7d38

    ld h, c
    ld [hl], h
    ld h, c
    jr nz, jr_02d_7ce3

    ld b, h
    ld b, c
    jr c, jr_02d_7d0d

    ld a, [hl-]
    jr nz, jr_02d_7d08

    add hl, hl
    jr nz, jr_02d_7d4c

jr_02d_7ce3:
    ld l, [hl]
    jr nz, jr_02d_7d48

    ld l, a
    ld a, b
    jr nz, jr_02d_7cea

jr_02d_7cea:
    ld sp, $7473
    jr nz, jr_02d_7d17

    add hl, hl
    jr nz, @+$75

    ld h, l
    ld [hl], h

jr_02d_7cf4:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld a, [hl-]

jr_02d_7cfa:
    ld a, [bc]
    ld b, h
    ld sp, $4238
    ld a, [hl-]
    jr nz, jr_02d_7d4e

    ld h, l

jr_02d_7d03:
    db $76
    ld h, l
    ld l, h
    jr nz, @+$22

jr_02d_7d08:
    jr nz, @+$22

    jr nz, jr_02d_7d16

    ld b, h

jr_02d_7d0d:
    ld sp, $3237
    ld a, [hl-]
    jr nz, @+$4f

    ld l, a
    db $76
    ld h, l

jr_02d_7d16:
    ld [hl], e

jr_02d_7d17:
    ld h, l
    ld [hl], h
    jr nz, jr_02d_7d3b

    jr nz, jr_02d_7d27

    ld b, h
    ld sp, $3838
    ld a, [hl-]
    jr nz, jr_02d_7d74

jr_02d_7d24:
    ld d, b
    jr nz, jr_02d_7d47

jr_02d_7d27:
    jr nz, jr_02d_7d49

    jr nz, jr_02d_7d4b

    jr nz, jr_02d_7d4d

    ld a, [bc]
    ld b, h
    ld sp, $4638
    ld a, [hl-]
    jr nz, jr_02d_7d88

    ld [hl], h
    ld h, c
    ld [hl], h

jr_02d_7d38:
    ld [hl], e
    jr nz, jr_02d_7d5b

jr_02d_7d3b:
    jr nz, jr_02d_7d5d

    jr nz, jr_02d_7d49

    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l

jr_02d_7d47:
    dec l

jr_02d_7d48:
    dec l

jr_02d_7d49:
    dec l
    dec l

jr_02d_7d4b:
    dec l

jr_02d_7d4c:
    dec l

jr_02d_7d4d:
    dec l

jr_02d_7d4e:
    dec l
    ld a, [bc]
    ld b, h
    dec [hl]
    ld b, c
    ld b, d
    ld a, [hl-]
    jr nz, jr_02d_7d9c

    db $76
    ld [hl], h
    jr nz, jr_02d_7dc1

jr_02d_7d5b:
    ld l, h
    ld h, c

jr_02d_7d5d:
    ld h, a
    ld [hl], e
    jr nz, jr_02d_7d61

jr_02d_7d61:
    ld b, e
    inc sp
    ld b, c
    jr nc, jr_02d_7da0

    jr nz, jr_02d_7dbb

    ld h, e
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld b, h
    ld h, c
    ld [hl], h
    ld h, c
    ld a, [bc]
    ld b, e
    ld b, h

jr_02d_7d74:
    jr c, jr_02d_7da6

    ld a, [hl-]
    jr nz, jr_02d_7dcc

    ld h, e
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_02d_7de2

    ld [hl], l
    ld h, [hl]
    ld a, [bc]
    ld b, e
    ld b, [hl]
    inc [hl]
    ld b, d
    ld a, [hl-]

jr_02d_7d88:
    jr nz, jr_02d_7dd6

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_02d_7dfd

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_02d_7d9e

    ld b, h
    jr nc, jr_02d_7dcc

    ld b, e
    ld a, [hl-]
    jr nz, @+$56

    ld h, l

jr_02d_7d9c:
    ld h, c
    ld l, l

jr_02d_7d9e:
    jr nz, jr_02d_7de9

jr_02d_7da0:
    ld b, h
    jr nz, jr_02d_7dc3

    jr nz, jr_02d_7daf

    ld b, h

jr_02d_7da6:
    ld sp, $4232
    ld a, [hl-]
    jr nz, @+$56

    ld h, l
    ld a, b
    ld [hl], h

jr_02d_7daf:
    ld h, d
    ld l, a
    ld a, b
    jr nz, jr_02d_7dfd

    ld b, h
    ld a, [bc]
    ld b, h
    ld sp, $3735
    ld a, [hl-]

jr_02d_7dbb:
    jr nz, @+$52

    ld l, h
    ld h, c
    ld a, c
    ld h, l

jr_02d_7dc1:
    ld [hl], d
    ld c, [hl]

jr_02d_7dc3:
    ld h, c
    ld l, l
    ld h, l
    ld a, [bc]
    ld b, h
    inc sp
    inc [hl]
    add hl, sp
    ld a, [hl-]

jr_02d_7dcc:
    jr nz, @+$54

    ld l, c
    db $76
    ld h, c
    ld l, h
    jr nz, jr_02d_7e42

    ld h, c
    ld l, l

jr_02d_7dd6:
    ld h, l
    nop
    ld hl, $c21b
    ld a, [hl]
    cp $00
    ret z

    dec [hl]
    jr jr_02d_7dec

jr_02d_7de2:
    ld hl, $c21b
    ld a, [hl]
    cp $03
    ret z

jr_02d_7de9:
    inc [hl]
    jr jr_02d_7dec

jr_02d_7dec:
    ld a, [hl]
    ld hl, $7bf0
    ld e, a
    add a
    add e
    inc a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld e, a
    inc hl
    ld a, [hl]
    ld h, a

jr_02d_7dfd:
    ld l, e
    ld de, $c3f3
    jp Jump_02d_7282


Jump_02d_7e04:
    ld hl, $c21b
    ld a, [hl]
    cp $00
    ret z

    dec [hl]
    call Call_02d_7e27
    ret


Jump_02d_7e10:
    ld hl, $c21b
    ld a, [$c21a]
    swap a
    xor [hl]
    cp $06
    ret z

    cp $34
    ret z

    cp $56
    ret z

    inc [hl]
    call Call_02d_7e27
    ret


Call_02d_7e27:
    call Call_02d_762d
    ld hl, $c3f3
    ld d, h
    ld e, l
    push hl
    ld bc, $0014
    push bc
    ld hl, $7e73
    call Call_02d_7282
    pop bc
    pop hl
    ld a, [$c21b]
    push af

jr_02d_7e40:
    cp $00

jr_02d_7e42:
    jr z, jr_02d_7e48

    add hl, bc
    dec a
    jr nz, jr_02d_7e40

jr_02d_7e48:
    ld [hl], $ed
    ld a, [$c21a]
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $734b
    add hl, bc
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    ld bc, $0016
    pop af
    ld d, a
    add a
    add d
    add c
    ld c, a
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    ld de, $c4b9
    call Call_02d_7282
    ret


    jr nz, jr_02d_7e7f

    jr nz, jr_02d_7e81

    jr nz, jr_02d_7e83

    jr nz, jr_02d_7e85

    jr nz, jr_02d_7e87

    jr nz, jr_02d_7e89

jr_02d_7e7f:
    jr nz, jr_02d_7e81

jr_02d_7e81:
    nop
    nop

jr_02d_7e83:
    nop
    nop

jr_02d_7e85:
    nop
    nop

jr_02d_7e87:
    nop
    nop

jr_02d_7e89:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02d_7f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
