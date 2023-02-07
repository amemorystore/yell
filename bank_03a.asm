;......_ ......*
; disasSembly of "yell.gbc"
;. . . . . . . . . . . . . . . .*
SECTION "ROM Bank $03a", ROMX[$4000], BANK[$3a]

    sub c
    add a
    sbc b
    add e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
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
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    rst $28
    ld d, b
    ld d, b
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    ld d, b
    sub d
    adc a
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    sub l
    adc [hl]
    adc e
    sub e
    adc [hl]
    sub c
    add c
    ld d, b
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    adc b
    sub l
    sbc b
    sub d
    add b
    sub h
    sub c
    ld d, b
    ld d, b
    ld d, b
    add h
    sub a
    add h
    add [hl]
    add [hl]
    sub h
    sub e
    adc [hl]
    sub c
    ld d, b
    adc e
    adc b
    add d
    adc d
    adc b
    sub e
    sub h
    adc l
    add [hl]
    ld d, b
    add h
    sub a
    add h
    add [hl]
    add [hl]
    add d
    sub h
    sub e
    add h
    ld d, b
    add [hl]
    sub c
    adc b
    adc h
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    add h
    adc l
    add [hl]
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    push af
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub b
    sub h
    add h
    add h
    adc l
    ld d, b
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add a
    sbc b
    add a
    adc [hl]
    sub c
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    sub c
    add d
    add b
    adc l
    adc b
    adc l
    add h
    ld d, b
    ld d, b
    adc h
    add h
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld d, b
    ld d, b
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    ld d, b
    ld d, b
    sub e
    add h
    adc l
    sub e
    add b
    add d
    adc [hl]
    adc [hl]
    adc e
    ld d, b
    add [hl]
    add b
    sub d
    sub e
    adc e
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add d
    sbc b
    sub e
    add a
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub e
    add b
    sub c
    sbc b
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add c
    adc e
    add b
    sub d
    sub e
    adc [hl]
    adc b
    sub d
    add h
    ld d, b
    adc a
    adc b
    adc l
    sub d
    adc b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub e
    add b
    adc l
    add [hl]
    add h
    adc e
    add b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7a
    sub c
    adc [hl]
    sub [hl]
    adc e
    adc b
    sub e
    add a
    add h
    ld d, b
    adc [hl]
    adc l
    adc b
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add l
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld d, b
    ld d, b
    adc d
    add b
    add e
    add b
    add c
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    ld d, b
    ld d, b
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add d
    add a
    adc [hl]
    adc d
    add h
    ld d, b
    ld d, b
    ld d, b
    adc h
    sub c
    add sp, -$74
    adc b
    adc h
    add h
    ld d, b
    ld d, b
    ld d, b
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    adc e
    add h
    add h
    ld d, b
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    add d
    add a
    add b
    adc l
    add b
    sub c
    add c
    adc [hl]
    adc d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    add b
    sub c
    add b
    sub d
    add h
    add d
    sub e
    ld d, b
    ld d, b
    adc a
    sub d
    sbc b
    add e
    sub h
    add d
    adc d
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    adc [hl]
    sub [hl]
    sbc c
    add h
    add h
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add h
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    add b
    add [hl]
    adc h
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7c
    adc e
    add h
    add d
    sub e
    add b
    add c
    sub h
    sbc c
    sbc c
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    adc d
    adc [hl]
    add l
    add l
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    add b
    adc l
    adc d
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add h
    adc e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    ld d, b
    ld d, b
    ld d, b
    sub e
    add b
    sub h
    sub c
    adc [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7b
    add b
    sub c
    add l
    add h
    sub e
    add d
    add a
    ldh [$83], a
    sub l
    add h
    adc l
    adc [hl]
    adc l
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    adc b
    sub e
    add h
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7d
    adc [hl]
    add e
    sub h
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add b
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc c
    sbc b
    adc l
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc [hl]
    adc e
    sub e
    sub c
    add h
    sub d
    ld d, b
    ld d, b
    ld d, b
    add b
    sub c
    sub e
    adc b
    add d
    sub h
    adc l
    adc [hl]
    ld d, b
    ld d, b
    sbc c
    add b
    adc a
    add e
    adc [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    adc b
    sub e
    sub e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    sub c
    add b
    add c
    add c
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$6b
    sub h
    adc e
    adc a
    adc b
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc l
    adc b
    adc l
    add h
    sub e
    add b
    adc e
    add h
    sub d
    ld d, b
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    adc b
    add d
    add a
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7d
    sub c
    add b
    sub e
    adc b
    adc l
    adc b
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    add b
    adc b
    sub c
    ld d, b
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    adc a
    sub d
    ld d, b
    ld d, b
    add a
    adc [hl]
    sub c
    sub d
    add h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add b
    add e
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$6e
    add b
    adc l
    add e
    sub d
    add a
    sub c
    add h
    sub [hl]
    ld d, b
    sub d
    add b
    adc l
    add e
    sub d
    adc e
    add b
    sub d
    add a
    ld d, b
    adc [hl]
    adc h
    add b
    adc l
    sbc b
    sub e
    add h
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    adc h
    add b
    sub d
    sub e
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    adc c
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    adc a
    sub h
    add l
    add l
    sub [hl]
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    sub e
    sub h
    add l
    add l
    add h
    add h
    sub l
    add h
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add l
    adc e
    add b
    sub c
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc c
    adc [hl]
    adc e
    sub e
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    sub l
    add b
    adc a
    adc [hl]
    sub c
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sbc c
    sub h
    add c
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add h
    adc d
    add b
    adc l
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    add b
    sub c
    add b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    ld d, b
    sub [hl]
    add h
    add h
    add e
    adc e
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    adc d
    sub h
    adc l
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add c
    add h
    add h
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7d
    adc [hl]
    add e
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    sub c
    adc b
    adc h
    add h
    add b
    adc a
    add h
    ld d, b
    ld d, b
    add e
    sub h
    add [hl]
    sub e
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    sub l
    add h
    adc l
    adc [hl]
    adc h
    adc [hl]
    sub e
    add a
    ld d, b
    ld d, b
    add e
    add h
    sub [hl]
    add [hl]
    adc [hl]
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7e
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    ld d, b
    ld d, b
    adc h
    add h
    sub e
    add b
    adc a
    adc [hl]
    add e
    ld d, b
    ld d, b
    ld d, b
    add c
    sub h
    sub e
    sub e
    add h
    sub c
    add l
    sub c
    add h
    add h
    adc h
    add b
    add d
    add a
    add b
    adc h
    adc a
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7a
    adc [hl]
    adc e
    add e
    sub h
    add d
    adc d
    ld d, b
    ld d, b
    ld d, b
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add c
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add h
    sub [hl]
    sub e
    sub [hl]
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    sub h
    adc d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$76
    adc b
    adc l
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    add d
    adc e
    adc [hl]
    sbc b
    sub d
    sub e
    add h
    sub c
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7c
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    ld d, b
    add d
    adc e
    add h
    add l
    add b
    add c
    adc e
    add h
    ld d, b
    ld d, b
    sub [hl]
    add h
    add h
    sbc c
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc a
    add h
    sub c
    sub d
    adc b
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    sub c
    adc [hl]
    sub [hl]
    add b
    adc d
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$79
    add b
    sub h
    adc l
    sub e
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    add b
    add c
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    adc e
    add b
    adc d
    add b
    sbc c
    add b
    adc h
    ld d, b
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    sub e
    adc [hl]
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub e
    add b
    sub c
    adc h
    adc b
    add h
    ld d, b
    ld d, b
    ld d, b
    add c
    sub h
    adc e
    add c
    add b
    sub d
    add b
    sub h
    sub c
    ld d, b
    sub l
    add h
    adc l
    sub h
    sub d
    add b
    sub h
    sub c
    ld d, b
    ld d, b
    sub e
    add h
    adc l
    sub e
    add b
    add d
    sub c
    sub h
    add h
    adc e
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7a
    adc [hl]
    adc e
    add e
    add h
    add h
    adc l
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add b
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$71
    adc [hl]
    adc l
    sbc b
    sub e
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    adc a
    adc b
    add e
    add b
    sub d
    add a
    ld d, b
    ld d, b
    sub c
    add b
    sub e
    sub e
    add b
    sub e
    add b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    sub e
    adc b
    add d
    add b
    sub e
    add h
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    adc l
    adc [hl]
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    adc l
    add b
    ld d, b
    ld d, b
    add [hl]
    add h
    adc [hl]
    add e
    sub h
    add e
    add h
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    add b
    add h
    sub c
    adc [hl]
    add e
    add b
    add d
    sub e
    sbc b
    adc e
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    add b
    add [hl]
    adc l
    add h
    adc h
    adc b
    sub e
    add h
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$7e
    add a
    add b
    sub c
    adc h
    add b
    adc l
    add e
    add h
    sub c
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    ld d, b
    ld d, b
    add d
    add a
    add b
    sub c
    adc h
    add h
    adc e
    add h
    adc [hl]
    adc l
    sub [hl]
    add b
    sub c
    sub e
    adc [hl]
    sub c
    sub e
    adc e
    add h
    ld d, b
    add d
    add a
    add b
    sub c
    adc b
    sbc c
    add b
    sub c
    add e
    ld d, b
    adc h
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$74
    adc b
    sub d
    sub d
    adc b
    adc l
    add [hl]
    adc l
    adc [hl]
    add sp, -$72
    add e
    add e
    adc b
    sub d
    add a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc e
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub l
    adc b
    adc e
    add h
    adc a
    adc e
    sub h
    adc h
    add h
    ld d, b
    add c
    add h
    adc e
    adc e
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    sub [hl]
    add h
    add h
    adc a
    adc b
    adc l
    add c
    add h
    adc e
    adc e
    sub l
    adc b
    add d
    sub e
    sub c
    add h
    add h
    add c
    add h
    adc e
    ld a, [$d360]
    ld b, a
    ld a, [$d367]
    call Call_03a_477e
    ret z

    ld a, [$d361]
    ld b, a
    ld a, [$d368]

Call_03a_477e:
    add a
    cp b
    ret z

    inc b
    ret


Call_03a_4783:
    ld a, $09

Call_03a_4785:
    push af
    ld hl, $c6e8
    ld bc, $040d
    xor a
    call Call_03a_4a2e
    xor a
    ldh [rSB], a
    ldh [rSC], a
    ld [$d49a], a
    ld hl, $d499
    set 0, [hl]
    ld a, [$d497]
    ld [$cae3], a
    pop af
    ld [$caf4], a
    ret


Call_03a_47a8:
    ld a, [$c6e8]
    ld e, a
    ld d, $00
    ld hl, $47b7
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $fd
    ld b, a
    ret


    ld c, b
    and [hl]
    ld c, b
    rra
    ld c, b
    ld b, $49
    or h
    ld c, b
    ld c, e
    ld c, b
    ld b, $49
    and [hl]
    ld c, b
    ld h, h
    ld c, b
    ld b, $49
    and [hl]
    ld c, b
    daa
    ld c, c
    jp hl


    ld b, a
    di
    ld b, a
    and [hl]
    ld c, b
    adc c
    ld c, b
    rst $30
    ld b, a
    ld [hl], $49
    add hl, sp
    ld c, c

Call_03a_47df:
    ld hl, $c6e8
    inc [hl]
    ret


Call_03a_47e4:
    ld hl, $c6e8
    dec [hl]
    ret


    xor a
    ld [$c971], a
    ld hl, $c6e8
    set 7, [hl]
    ret


    call Call_03a_47df
    ret


    ld a, $01
    ld [$c6e8], a
    ret


    call Call_03a_4981
    ld hl, $4a3a
    call Call_03a_4968
    xor a
    ld [$c976], a
    ld [$c977], a
    ld a, [$caf4]
    ld [$c6e9], a
    call Call_03a_47df
    call Call_03a_4949
    ld a, $01
    ld [$cae0], a
    ret


    call Call_03a_4981
    ld hl, $c6e9
    ld a, [hl]
    and a
    jr z, jr_03a_484b

    ld hl, $4a46
    call Call_03a_4968
    call Call_03a_49e6
    ld a, $80
    ld [$c976], a
    ld a, $02
    ld [$c977], a
    call Call_03a_499f
    call Call_03a_47df
    call Call_03a_4949
    ld a, $02
    ld [$cae0], a
    ret


jr_03a_484b:
    ld a, $06
    ld [$c6e8], a
    ld hl, $4a4c
    call Call_03a_4968
    xor a
    ld [$c976], a
    ld [$c977], a
    call Call_03a_47df
    call Call_03a_4949
    ret


    call Call_03a_4981
    ld hl, $4a40
    call Call_03a_4968
    call Call_03a_49cf
    ld a, $04
    ld [$c976], a
    ld a, $00
    ld [$c977], a
    call Call_03a_499f
    call Call_03a_47df
    call Call_03a_4949
    ld a, $03
    ld [$cae0], a
    ret


    call Call_03a_4981
    ld hl, $4a3a
    call Call_03a_4968
    xor a
    ld [$c976], a
    ld [$c977], a
    ld a, [$caf4]
    ld [$c6e9], a
    call Call_03a_47df
    call Call_03a_4949
    ret


    ld hl, $c973
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    xor a
    ld [hl], a
    call Call_03a_47df
    ret


    ld hl, $c973
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    xor a
    ld [hl], a
    ld hl, $c6e9
    dec [hl]
    call Call_03a_47e4
    call Call_03a_47e4
    ret


    ld a, [$d49a]
    and a
    ret nz

    ld a, [$c970]
    cp $ff
    jr nz, jr_03a_48dc

    ld a, [$c971]
    cp $ff
    jr z, jr_03a_48f8

jr_03a_48dc:
    ld a, [$c970]
    cp $81
    jr nz, jr_03a_48f8

    ld a, [$c971]
    cp $00
    jr nz, jr_03a_48f8

    ld hl, $d499
    set 1, [hl]
    ld a, $05
    ld [$c972], a
    call Call_03a_47df
    ret


jr_03a_48f8:
    ld a, $ff
    ld [$c970], a
    ld [$c971], a
    ld a, $0e
    ld [$c6e8], a
    ret


    ld a, [$d49a]
    and a
    ret nz

    ld a, [$c971]
    and $f0
    jr nz, jr_03a_4921

    ld a, [$c971]
    and $01
    jr nz, jr_03a_491d

    call Call_03a_47df
    ret


jr_03a_491d:
    call Call_03a_47e4
    ret


jr_03a_4921:
    ld a, $12
    ld [$c6e8], a
    ret


    ld a, [$d49a]
    and a
    ret nz

    ld a, [$c971]
    and $f3
    ret nz

    call Call_03a_47df
    ret


    call Call_03a_47df
    ld a, [$d49a]
    and a
    ret nz

    ld a, [$c971]
    and $f0
    ret nz

    xor a
    ld [$c6e8], a
    ret


Call_03a_4949:
jr_03a_4949:
    ld a, [$d49a]
    and a
    jr nz, jr_03a_4949

    xor a
    ld [$c974], a
    ld [$c975], a
    ld a, $01
    ld [$d49a], a
    ld a, $88
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


Call_03a_4968:
    ld a, [hl+]
    ld [$c6ea], a
    ld a, [hl+]
    ld [$c6eb], a
    ld a, [hl+]
    ld [$c6ec], a
    ld a, [hl+]
    ld [$c6ed], a
    ld a, [hl+]
    ld [$c6ee], a
    ld a, [hl]
    ld [$c6ef], a
    ret


Call_03a_4981:
    xor a
    ld hl, $c6ea
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c6ee
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c976], a
    ld [$c977], a
    ld hl, $c6f0
    ld bc, $0280
    call Call_03a_4a2e
    ret


Call_03a_499f:
    ld hl, $0000
    ld bc, $0004
    ld de, $c6ea
    call Call_03a_49c2
    ld a, [$c976]
    ld c, a
    ld a, [$c977]
    ld b, a
    ld de, $c6f0
    call Call_03a_49c2
    ld a, l
    ld [$c6ee], a
    ld a, h
    ld [$c6ef], a
    ret


Call_03a_49c2:
jr_03a_49c2:
    ld a, [de]
    inc de
    add l
    jr nc, jr_03a_49c8

    inc h

jr_03a_49c8:
    ld l, a
    dec bc
    ld a, c
    or b
    jr nz, jr_03a_49c2

    ret


Call_03a_49cf:
    ld a, $01
    ld [$c6f0], a
    ld a, [$cae2]
    ld [$c6f1], a
    ld a, $e4
    ld [$c6f2], a
    ld a, [$cae3]
    ld [$c6f3], a
    ret


Call_03a_49e6:
    ld a, [$c6e9]
    ld b, a
    ld a, [$caf4]
    sub b
    ld hl, $c978
    ld de, $0028

jr_03a_49f4:
    and a
    jr z, jr_03a_49fb

    add hl, de
    dec a
    jr jr_03a_49f4

jr_03a_49fb:
    ld e, l
    ld d, h
    ld hl, $c6f0
    ld c, $28

jr_03a_4a02:
    ld a, [de]
    inc de
    push bc
    push de
    push hl
    swap a
    ld d, a
    and $f0
    ld e, a
    ld a, d
    and $0f
    ld d, a
    and $08
    ld a, d
    jr nz, jr_03a_4a1a

    or $90
    jr jr_03a_4a1c

jr_03a_4a1a:
    or $80

jr_03a_4a1c:
    ld d, a
    ld bc, $3a01
    call Call_000_15fe
    pop hl
    ld de, $0010
    add hl, de
    pop de
    pop bc
    dec c
    jr nz, jr_03a_4a02

    ret


Call_03a_4a2e:
    push de
    ld e, a

jr_03a_4a30:
    ld [hl], e
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_03a_4a30

    ld a, e
    pop de
    ret


    ld bc, $0000
    nop
    ld bc, $0200
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    add b
    ld [bc], a
    nop
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    ld [$0000], sp
    nop
    ld [$0f00], sp
    nop
    nop
    nop
    rrca
    nop
    ld a, [$d49a]
    ld e, a
    ld d, $00
    ld hl, $4a6d
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or d
    ld c, d
    or e
    ld c, d
    cp h
    ld c, d
    add $4a
    ret nc

    ld c, d
    jp c, $e44a

    ld c, d
    rrca
    ld c, e
    add hl, de
    ld c, e
    inc hl
    ld c, e
    inc l
    ld c, e
    ld a, [hl-]
    ld c, e
    or e
    ld c, d
    ld b, h
    ld c, e
    ld c, l
    ld c, e
    ld c, l
    ld c, e
    ld c, l
    ld c, e
    ld b, h
    ld c, e
    ld c, l
    ld c, e
    inc hl
    ld c, e
    inc l
    ld c, e
    ld l, d
    ld c, e
    or e
    ld c, d
    ld d, [hl]
    ld c, e
    ld c, l
    ld c, e
    ld c, l
    ld c, e
    ld c, l
    ld c, e
    ld d, [hl]
    ld c, e
    ld c, l
    ld c, e
    inc hl
    ld c, e
    inc l
    ld c, e
    ld a, [hl-]
    ld c, e

Call_03a_4aad:
    ld hl, $d49a
    inc [hl]
    ret


    ret


    ld a, $33
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld a, [$c6ea]
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld a, [$c6eb]
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld a, [$c6ec]
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld a, [$c6ed]
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld hl, $c976
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    or d
    jr z, jr_03a_4b0c

    dec de
    ld [hl], d
    dec hl
    ld [hl], e
    ld a, [$c974]
    ld e, a
    ld a, [$c975]
    ld d, a
    ld hl, $c6f0
    add hl, de
    inc de
    ld a, e
    ld [$c974], a
    ld a, d
    ld [$c975], a
    ld a, [hl]
    call Call_03a_4b5f
    ret


jr_03a_4b0c:
    call Call_03a_4aad
    ld a, [$c6ee]
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld a, [$c6ef]
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld a, $00
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ldh a, [rSB]
    ld [$c970], a
    ld a, $00
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ldh a, [rSB]
    ld [$c971], a
    xor a
    ld [$d49a], a
    ret


    ld a, $0f
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld a, $00
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


    ld a, $08
    call Call_03a_4b5f
    call Call_03a_4aad
    ret


Call_03a_4b5f:
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


    ldh a, [rSB]
    ld [$c971], a
    xor a
    ld [$d49a], a
    ret


    ld a, [$cfca]
    push af
    xor a
    ld [$cfca], a
    ldh [$db], a
    call Call_03a_4f24
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    xor a
    ldh [$ba], a
    call Call_03a_4c30
    call Call_03a_4785
    ld a, [$caf9]
    and a
    jr z, jr_03a_4b9e

    ld a, $10
    jr jr_03a_4ba0

jr_03a_4b9e:
    ld a, $13

jr_03a_4ba0:
    ld [$cae2], a
    call Call_03a_4efc
    call Call_000_16dd
    ld hl, $41c2
    ld b, $10
    call Call_000_3e84
    ld hl, $427c
    ld b, $10
    call Call_000_3e84
    ld a, $01
    ldh [$ba], a
    call Call_03a_4c0c
    jr c, jr_03a_4bf4

    ld a, [$caf9]
    and a
    jr z, jr_03a_4bf4

    xor a
    ld [$d499], a
    ld [$d49a], a
    ld c, $0c
    call Call_000_372f
    call Call_000_370f
    xor a
    ldh [$ba], a
    call Call_03a_4c50
    ld a, $07
    call Call_03a_4785
    ld a, $03
    ld [$cae2], a
    call Call_03a_4efc
    call Call_000_371b
    ld a, $01
    ldh [$ba], a
    call Call_03a_4c0c

jr_03a_4bf4:
    xor a
    ld [$d499], a
    ld [$d49a], a
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_000_0f3d
    call Call_03a_4f3b
    pop af
    ld [$cfca], a
    ret


Call_03a_4c0c:
    call Call_03a_4f16

jr_03a_4c0f:
    call Call_000_381e
    call Call_03a_4eca
    jr c, jr_03a_4c2e

    ld a, [$c6e8]
    bit 7, a
    jr nz, jr_03a_4c2c

    call Call_03a_47a8
    call Call_03a_4f51
    call Call_03a_4f82
    call Call_000_1e64
    jr jr_03a_4c0f

jr_03a_4c2c:
    and a
    ret


jr_03a_4c2e:
    scf
    ret


Call_03a_4c30:
    ld hl, $439c
    ld b, $10
    call Call_000_3e84
    ld a, l
    ld [$caf5], a
    ld a, h
    ld [$caf6], a
    ld a, $00
    rla
    ld [$caf9], a
    and a
    jr z, jr_03a_4c4d

    ld a, $05
    jr jr_03a_4c4f

jr_03a_4c4d:
    ld a, $09

jr_03a_4c4f:
    ret


Call_03a_4c50:
    call Call_000_16dd
    ld hl, $44bc
    ld b, $10
    call Call_000_3e84
    ret


    xor a
    ldh [$db], a
    call Call_03a_4f24
    call Call_03a_510a
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    call Call_03a_4783
    ld a, $13
    ld [$cae2], a
    call Call_03a_4efc
    call Call_03a_4f16

jr_03a_4c7d:
    call Call_000_381e
    call Call_03a_4eca
    jr c, jr_03a_4c9a

    ld a, [$c6e8]
    bit 7, a
    jr nz, jr_03a_4c9a

    call Call_03a_47a8
    call Call_03a_4f51
    call Call_03a_4f82
    call Call_000_1e64
    jr jr_03a_4c7d

jr_03a_4c9a:
    xor a
    ld [$d499], a
    ld [$d49a], a
    call Call_03a_4f09
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_000_0f3d
    call Call_03a_4f3b
    ret


    xor a
    ldh [$db], a
    call Call_03a_4f24
    call Call_03a_5a08
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    call Call_03a_4783
    ld a, $10
    ld [$cae2], a
    call Call_03a_4efc
    call Call_03a_4d11
    jr c, jr_03a_4cfa

    xor a
    ld [$d499], a
    ld [$d49a], a
    ld c, $0c
    call Call_000_372f
    call Call_000_370f
    xor a
    ldh [$ba], a
    call Call_03a_5ad3
    call Call_03a_4783
    ld a, $03
    ld [$cae2], a
    call Call_03a_4efc
    call Call_000_371b
    call Call_03a_4d11

jr_03a_4cfa:
    xor a
    ld [$d499], a
    ld [$d49a], a
    call Call_03a_4f09
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_000_0f3d
    call Call_03a_4f3b
    ret


Call_03a_4d11:
    call Call_03a_4f16

jr_03a_4d14:
    call Call_000_381e
    call Call_03a_4eca
    jr c, jr_03a_4d33

    ld a, [$c6e8]
    bit 7, a
    jr nz, jr_03a_4d31

    call Call_03a_47a8
    call Call_03a_4f51
    call Call_03a_4f82
    call Call_000_1e64
    jr jr_03a_4d14

jr_03a_4d31:
    and a
    ret


jr_03a_4d33:
    scf
    ret


    ld a, [$da7f]
    and a
    jp z, Jump_03a_4df4

    ld a, [$cfca]
    push af
    xor a
    ld [$cfca], a
    ldh [$db], a
    call Call_03a_4f24
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    call Call_000_370f
    xor a
    ldh [$ba], a
    call Call_03a_588a
    call Call_03a_4783
    ld a, $10
    ld [$cae2], a
    call Call_03a_4efc
    call Call_000_371b
    call Call_03a_4dfb
    jr c, jr_03a_4ddc

    xor a
    ld [$d499], a
    ld [$d49a], a
    ld c, $0c
    call Call_000_372f
    xor a
    ldh [$ba], a
    call Call_03a_58ec
    call Call_03a_4783
    ld a, $00
    ld [$cae2], a
    call Call_03a_4efc
    call Call_000_371b
    call Call_03a_4dfb
    jr c, jr_03a_4ddc

    xor a
    ld [$d499], a
    ld [$d49a], a
    ld c, $0c
    call Call_000_372f
    xor a
    ldh [$ba], a
    call Call_03a_5907
    call Call_03a_4783
    ld a, $00
    ld [$cae2], a
    call Call_03a_4efc
    call Call_000_371b
    call Call_03a_4dfb
    jr c, jr_03a_4ddc

    xor a
    ld [$d499], a
    ld [$d49a], a
    ld c, $0c
    call Call_000_372f
    xor a
    ldh [$ba], a
    call Call_03a_5922
    call Call_03a_4783
    ld a, $03
    ld [$cae2], a
    call Call_03a_4efc
    call Call_000_371b
    call Call_03a_4dfb

jr_03a_4ddc:
    xor a
    ld [$d499], a
    ld [$d49a], a
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_000_0f3d
    call Call_03a_4f3b
    pop af
    ld [$cfca], a
    ret


Jump_03a_4df4:
    ld hl, $4e1f
    call Call_000_3c36
    ret


Call_03a_4dfb:
    call Call_03a_4f16

jr_03a_4dfe:
    call Call_000_381e
    call Call_03a_4eca
    jr c, jr_03a_4e1d

    ld a, [$c6e8]
    bit 7, a
    jr nz, jr_03a_4e1b

    call Call_03a_47a8
    call Call_03a_4f51
    call Call_03a_4f82
    call Call_000_1e64
    jr jr_03a_4dfe

jr_03a_4e1b:
    and a
    ret


jr_03a_4e1d:
    scf
    ret


    rla
    ld [hl], a
    ld c, h
    jr z, @+$52

    xor a
    ldh [$db], a
    call Call_03a_4f24
    call Call_03a_63ea
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    call Call_03a_4783
    ld a, $13
    ld [$cae2], a
    call Call_03a_4efc
    call Call_03a_4f16

jr_03a_4e45:
    call Call_000_381e
    call Call_03a_4eca
    jr c, jr_03a_4e62

    ld a, [$c6e8]
    bit 7, a
    jr nz, jr_03a_4e62

    call Call_03a_47a8
    call Call_03a_4f51
    call Call_03a_4f82
    call Call_000_1e64
    jr jr_03a_4e45

jr_03a_4e62:
    xor a
    ld [$d499], a
    ld [$d49a], a
    call Call_03a_4f09
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    call Call_000_0f3d
    call Call_03a_4f3b
    ret


    push af
    push bc
    push de
    push hl
    call Call_000_2233
    ldh a, [rIE]
    push af
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    call Call_03a_4783
    ld a, $13
    ld [$cae2], a
    ld a, $01
    ldh [$ba], a
    call Call_03a_4efc
    call Call_03a_6573

jr_03a_4e9c:
    ld a, [$c6e8]
    bit 7, a
    jr nz, jr_03a_4eae

    call Call_03a_65d1
    call Call_03a_65b7
    call Call_000_1e64
    jr jr_03a_4e9c

jr_03a_4eae:
    xor a
    ld [$d499], a
    ld [$d49a], a
    ld hl, $c380
    ld bc, $0020
    xor a
    call Call_000_166e
    xor a
    ldh [rIF], a
    pop af
    ldh [rIE], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03a_4eca:
    ldh a, [$b4]
    and $02
    jr nz, jr_03a_4ed2

    and a
    ret


jr_03a_4ed2:
    ld a, [$c6e8]
    cp $0c
    jr nz, jr_03a_4ef6

jr_03a_4ed9:
    ld a, [$d49a]
    and a
    jr nz, jr_03a_4ed9

    ld a, $16
    ld [$d49a], a
    ld a, $88
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a

jr_03a_4ef0:
    ld a, [$d49a]
    and a
    jr nz, jr_03a_4ef0

jr_03a_4ef6:
    ld a, $01
    ldh [$db], a
    scf
    ret


Call_03a_4efc:
    ld hl, $c3a0
    ld de, $c978
    ld bc, $0168
    call Call_000_00b1
    ret


Call_03a_4f09:
    ld hl, $c978
    ld de, $c3a0
    ld bc, $0168
    call Call_000_00b1
    ret


Call_03a_4f16:
    xor a
    ldh [$b1], a
    ldh [$b2], a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    ldh [$b6], a
    ret


Call_03a_4f24:
    call Call_03a_4f42
    ld a, [$c0ef]
    ld [$c0f0], a
    ld a, $20
    ld [$c0ef], a
    ld a, $a3
    ld [$c0ee], a
    call Call_000_2238
    ret


Call_03a_4f3b:
    call Call_03a_4f42
    call Call_000_216b
    ret


Call_03a_4f42:
    ld a, $04
    ld [$cfc6], a
    call Call_000_2233

jr_03a_4f4a:
    ld a, [$cfc6]
    and a
    jr nz, jr_03a_4f4a

    ret


Call_03a_4f51:
    ld a, [$c970]
    cp $81
    jr z, jr_03a_4f62

    ld a, [$c971]
    cp $ff
    jr z, jr_03a_4f7c

    xor a
    jr jr_03a_4f7e

jr_03a_4f62:
    ld a, [$c971]
    and $e0
    ret z

    bit 7, a
    jr nz, jr_03a_4f78

    bit 6, a
    jr nz, jr_03a_4f74

    ld a, $06
    jr jr_03a_4f7e

jr_03a_4f74:
    ld a, $07
    jr jr_03a_4f7e

jr_03a_4f78:
    ld a, $04
    jr jr_03a_4f7e

jr_03a_4f7c:
    ld a, $05

jr_03a_4f7e:
    ld [$cae0], a
    ret


Call_03a_4f82:
    ld a, [$cae0]
    and a
    ret z

    push af
    xor a
    ldh [$ba], a
    ld hl, $c404
    ld bc, $0a12
    call Call_000_16f0
    pop af
    ld e, a
    ld d, $00
    ld hl, $4fca
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c42d
    call Call_000_1723
    ld hl, $c4ce
    ld de, $4fb8
    call Call_000_1723
    ld a, $01
    ldh [$ba], a
    xor a
    ld [$cae0], a
    ret


    adc a
    or c
    and h
    or d
    or d
    ld a, a
    add c
    ld a, a
    or e
    xor [hl]
    ld a, a
    add d
    and b
    xor l
    and d
    and h
    xor e
    ld d, b
    call c, $dd4f
    ld c, a
    ldh a, [rVBK]
    inc bc
    ld d, b
    inc d
    ld d, b
    ld c, c
    ld d, b
    ld a, [hl]
    ld d, b
    or e
    ld d, b
    add sp, $50
    ld d, b
    ld c, [hl]
    ld a, a
    add d
    add a
    add h
    add d
    adc d
    adc b
    adc l
    add [hl]
    ld a, a
    adc e
    adc b
    adc l
    adc d
    add sp, -$18
    add sp, $50
    ld c, [hl]
    ld a, a
    ld a, a
    sub e
    sub c
    add b
    adc l
    sub d
    adc h
    adc b
    sub e
    sub e
    adc b
    adc l
    add [hl]
    add sp, -$18
    add sp, $50
    ld c, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc a
    sub c
    adc b
    adc l
    sub e
    adc b
    adc l
    add [hl]
    add sp, -$18
    add sp, $50
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    add h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    rst $30
    ld c, [hl]
    ld c, [hl]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld c, [hl]
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    adc h
    and b
    xor l
    or h
    and b
    xor e
    add sp, $50
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    add h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    ld hl, sp+$4e
    ld c, [hl]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld c, [hl]
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    adc h
    and b
    xor l
    or h
    and b
    xor e
    add sp, $50
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    add h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    ld sp, hl
    ld c, [hl]
    ld c, [hl]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld c, [hl]
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    adc h
    and b
    xor l
    or h
    and b
    xor e
    add sp, $50
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    add h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    ld a, [$4e4e]
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld c, [hl]
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    adc h
    and b
    xor l
    or h
    and b
    xor e
    add sp, $50
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld a, a
    adc a
    or c
    xor b
    xor l
    or e
    and h
    or c
    rst $20
    ld d, b

Call_03a_510a:
    call Call_000_3dd8
    call Call_000_16dd
    ld de, $528a
    ld hl, $9000
    ld bc, $3a60
    call Call_000_15fe
    ld hl, $c3a0
    call Call_03a_51a9
    ld hl, $c4f4
    call Call_03a_51a9
    ld hl, $c3a0
    call Call_03a_51b5
    ld hl, $c3b3
    call Call_03a_51b5
    ld a, $04
    ld hl, $c3a0
    ld [hl], a
    ld hl, $c4f4
    ld [hl], a
    ld hl, $c3b3
    ld [hl], a
    ld hl, $c507
    ld [hl], a
    ld de, $51c4
    ld hl, $c44a
    ld bc, $0308
    call Call_03a_525d
    ld de, $51dc
    ld hl, $c47e
    ld bc, $0610
    call Call_03a_525d
    ld de, $523c
    ld hl, $c3cb
    call Call_000_1723
    ld de, $524b
    ld hl, $c3f9
    call Call_000_1723
    ld de, $5256
    ld hl, $c424
    call Call_000_1723
    ld de, $d157
    ld hl, $d157
    ld bc, $0000

jr_03a_5182:
    ld a, [hl+]
    inc c
    cp $50
    jr nz, jr_03a_5182

    ld a, $08
    sub c
    jr nc, jr_03a_518e

    xor a

jr_03a_518e:
    ld c, a
    ld hl, $c3f2
    add hl, bc
    call Call_000_1723
    call Call_03a_526f
    ld b, $08
    call Call_000_3e05
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    call Call_000_3de0
    ret


Call_03a_51a9:
    ld c, $0a

jr_03a_51ab:
    ld [hl], $00
    inc hl
    ld [hl], $01
    inc hl
    dec c
    jr nz, jr_03a_51ab

    ret


Call_03a_51b5:
    ld c, $09
    ld de, $0014

jr_03a_51ba:
    ld [hl], $02
    add hl, de
    ld [hl], $03
    add hl, de
    dec c
    jr nz, jr_03a_51ba

    ret


    ld a, a
    ld a, a
    db $10
    ld de, $1312
    inc d
    dec d
    rrca
    inc a
    dec a
    ld a, $20
    ld hl, $3130
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, b
    inc [hl]
    ld a, [de]
    ld d, c
    dec l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, $17
    jr jr_03a_51ff

    ld a, a
    dec de
    inc e
    dec e
    ld e, $1f
    ld a, a
    ld a, a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03a_521f

    ld a, [hl+]
    dec hl
    inc l
    ld a, a
    ld l, $2f
    ld a, a
    ld a, a
    ld [hl-], a

jr_03a_51ff:
    inc sp
    inc sp
    dec [hl]
    ld [hl], $37
    jr c, jr_03a_523f

    ld a, [hl-]
    dec sp
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld b, b
    ld b, b
    ld b, b
    ld c, a
    ld d, d
    ld d, d
    ld d, d

jr_03a_521f:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, l
    ld e, [hl]
    ld a, a
    ld a, a
    ld a, a
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $7f
    ld a, a
    ld a, a
    adc a
    xor b
    xor d

jr_03a_523f:
    and b
    and d
    and a
    or h
    cp l
    ld a, a
    add c
    and h
    and b
    and d
    and a
    ld d, b
    cp l
    ld a, a
    add a
    xor b
    db $e3
    sub d
    and d
    xor [hl]
    or c
    and h
    ld d, b
    adc a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld d, b

Call_03a_525d:
jr_03a_525d:
    push bc
    push hl

jr_03a_525f:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_03a_525f

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_03a_525d

    ret


Call_03a_526f:
    ld de, $d495
    ld hl, $c41f
    ld a, [de]
    call Call_03a_527a
    ld a, [de]

Call_03a_527a:
    ld c, a
    swap a
    and $0f
    add $f6
    ld [hl+], a
    ld a, c
    and $0f
    add $f6
    ld [hl+], a
    dec de
    ret


    nop
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    nop
    rlca
    nop
    rra
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    nop
    ld [hl], b
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ld h, b
    ld b, $60
    ld b, $40
    ld c, $40
    ld c, $40
    ld c, $40
    ld c, $40
    ld c, $40
    ld c, $60
    ld b, $60
    ld b, $70
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ld [hl], b
    ld [bc], a
    nop
    nop
    nop
    ld a, [hl]
    jr jr_03a_5336

    inc a
    ld b, d
    inc a
    ld b, d
    jr jr_03a_533c

    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    dec de
    nop
    dec de
    nop
    ld e, $00
    jr jr_03a_5309

jr_03a_5309:
    jr jr_03a_530b

jr_03a_530b:
    nop
    nop
    nop
    nop
    add hl, sp
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    add hl, sp
    nop
    inc bc
    nop
    rlca
    nop
    xor b
    nop
    and [hl]
    nop
    ret


    nop
    jp z, $ac00

    nop
    and a
    nop
    add b
    nop
    nop
    nop
    ld b, c
    nop
    ld h, e
    nop
    ld [hl], a
    nop
    ld a, a

jr_03a_5336:
    nop
    ld l, e
    nop
    ld h, e
    nop
    nop

jr_03a_533c:
    nop
    nop
    nop
    add hl, sp
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    jr jr_03a_5351

jr_03a_5351:
    sbc b
    nop
    ret c

    nop
    cp b
    nop
    sbc b
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld bc, $1701
    rla
    ccf
    ccf
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld bc, $3701
    scf
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $28
    rst $28
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
    db $eb
    db $eb
    rst $08
    rst $08
    ccf
    ccf

jr_03a_53ba:
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    cp $fe
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
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    nop
    inc c
    inc c
    rst $18
    rst $18
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0c01
    inc c
    ld [de], a
    ld [de], a
    ld hl, $402d
    ld e, [hl]
    ld b, b
    ld e, [hl]
    add b
    cp a
    add b
    cp a
    nop
    ld a, a
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
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_03a_53ba

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_03a_545c

    ld a, b
    ld a, b
    ld hl, sp-$08
    ret z

    ret z

    ld [hl], c
    ld [hl], c
    or c
    or c
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    and b
    and b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    db $fd
    db $fd
    cp $fe
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
    cp $fe
    ldh [$e0], a

jr_03a_545c:
    ldh [$e0], a
    ld b, b
    ld b, b
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
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
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    jp $e3c3


    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$101f], sp
    nop
    rlca
    rra
    jr c, jr_03a_553e

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03a_54c7:
    nop
    rst $38
    nop
    nop
    ldh [$f8], a
    inc e
    cp $03
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
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_03a_54c7

    db $10
    ld hl, sp+$08
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld c, $f1
    rra
    ldh [$1f], a
    ldh [$0e], a
    pop af
    nop
    rst $38
    ld hl, $22a1
    and d
    ld [hl+], a
    and d
    inc d
    call nc, $d414
    add hl, de
    ret c

    inc de
    ret nc

    rla
    ldh a, [rNR23]
    ld [$0878], sp
    ld [hl], b
    db $10
    ldh a, [rNR10]
    rst $38
    rra
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    inc bc
    inc bc
    rrca
    rrca
    inc sp
    inc sp
    rst $00
    jp $021e


    inc a
    inc b
    ld hl, sp+$18
    ldh a, [rNR10]
    pop bc
    pop bc
    pop bc
    pop bc

jr_03a_553e:
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
    cp $fe
    rst $38
    rst $38
    cp e
    cp e
    ld a, [hl-]
    ld a, [hl-]
    jr jr_03a_556c

    db $10
    stop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    inc bc
    inc bc

jr_03a_556c:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
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
    rst $38
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    db $dd
    db $dd
    ld c, [hl]
    ld c, [hl]
    ld c, $0e
    ld b, $06
    ld b, $06
    add b
    add b
    rra
    jr nz, jr_03a_55ec

    jr nz, jr_03a_55ce

    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
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
    rst $38
    rst $38
    rst $38

jr_03a_55ce:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0504

jr_03a_55ec:
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
    inc b
    dec b
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
    cp $02
    cp $27
    ldh [$27], a
    ldh [rVBK], a
    ret nz

    ld c, a
    ret nz

    ld e, a
    ret nz

    rst $38
    ldh [$1f], a
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
    rlca
    rst $38
    ccf
    rst $38
    ld a, a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    pop af
    ld de, $fafa
    ei
    ld a, [$fcff]
    jr nc, jr_03a_566c

    ld c, b
    ld c, b
    or [hl]
    add [hl]
    rst $38
    add c
    ld a, a
    ld bc, $02fe
    db $fc
    inc c
    ldh a, [rNR10]
    inc bc
    inc bc
    rra
    rra
    rrca
    rrca
    ccf
    ccf
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
    xor $ee
    xor $ee
    xor $ee
    cp $fe
    cp $fe

jr_03a_566c:
    cp $fe

jr_03a_566e:
    db $fd
    db $fd
    db $ed
    db $ed
    add sp, -$18
    pop hl
    pop hl
    pop hl
    pop hl
    ldh [$e0], a
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
    jp nz, Jump_000_003d

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    jr c, jr_03a_566e

    nop
    rst $38
    nop
    rst $38
    ld c, b
    add a
    nop
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp-$01
    rst $38
    nop
    nop
    ld c, $f0
    ld h, b
    add b
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $18fe
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc e
    inc bc
    add b
    nop
    ld b, $01
    nop
    rst $38
    db $fc
    db $fd
    add h
    ld a, l
    ld [hl], h
    dec c
    inc c
    dec b
    ld [bc], a
    cp $06
    ld [bc], a
    ld [bc], a
    cp $02
    cp $01
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
    rst $38
    nop
    rst $38
    ldh [$5f], a
    ret nz

    ld e, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    cpl
    ldh [$27], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$06ff], sp
    db $fd
    rlca
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc bc
    rst $38
    ccf
    ld hl, sp+$0f
    db $fc
    add a
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rrca
    rrca
    rra
    rra
    rla
    rla
    rrca
    rrca
    dec e
    dec e
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    or $f6
    or $f6
    and [hl]
    and [hl]
    ld h, h
    ld h, h
    ld b, b
    ld b, b
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    db $f4
    db $f4
    and b
    and b
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld b, e
    ld b, e
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    add hl, bc
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $01ff
    rst $38
    ld bc, $07ff
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    inc bc
    ld a, a
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    daa
    ldh [rNR13], a
    di
    db $fc
    db $fc
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [hl+], a
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    nop
    ld [$0000], sp
    nop
    ld [hl+], a
    nop
    nop
    db $fd
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    ld bc, $0001
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ldh a, [rIE]
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    ld [$8080], sp
    ldh [$e2], a
    ld hl, sp-$08
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [hl+], a
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    jr @+$1a

    jr jr_03a_589a

    nop
    nop
    nop
    nop
    jr @+$1a

    jr jr_03a_58a2

Call_03a_588a:
    xor a
    ld [$cd3d], a
    call Call_000_16dd
    call Call_03a_59de
    ld hl, $c3a0
    ld bc, $00dc

jr_03a_589a:
    ld a, $7f
    call Call_000_166e
    call Call_03a_59b9

jr_03a_58a2:
    call Call_03a_59a7
    ld hl, $c3f4
    ld de, $58db
    call Call_000_1723
    ld hl, $c41f
    ld de, $58e8
    call Call_000_1723
    ld hl, $c423
    ld a, [$d59f]
    and $7f
    cp $09
    jr c, jr_03a_58cc

    sub $09
    ld [hl], $f7
    inc hl
    add $f6
    jr jr_03a_58ce

jr_03a_58cc:
    add $f7

jr_03a_58ce:
    ld [hl], a
    ld hl, $c458
    ld de, $da80
    ld c, $03
    call Call_03a_594e
    ret


    adc a
    adc [hl]
    adc d
    cp d
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    adc b
    sub d
    sub e
    ld d, b
    add c
    adc [hl]
    sub a
    ld d, b

Call_03a_58ec:
    call Call_000_16dd
    call Call_03a_59de
    call Call_03a_59b9
    ld a, [$da7f]
    cp $04
    ret c

    ld hl, $c3a4
    ld de, $da83
    ld c, $06
    call Call_03a_594e
    ret


Call_03a_5907:
    call Call_000_16dd
    call Call_03a_59de
    call Call_03a_59b9
    ld a, [$da7f]
    cp $0a
    ret c

    ld hl, $c3a4
    ld de, $da89
    ld c, $06
    call Call_03a_594e
    ret


Call_03a_5922:
    call Call_000_16dd
    call Call_03a_59de
    call Call_03a_59b9
    ld hl, $c4cc
    call Call_03a_59cf
    ld hl, $c4e0
    ld bc, $0028
    ld a, $7f
    call Call_000_166e
    ld a, [$da7f]
    cp $10
    ret c

    ld hl, $c3a4
    ld de, $da8f
    ld c, $05
    call Call_03a_594e
    ret


Call_03a_594e:
jr_03a_594e:
    ld a, c
    and a
    jr z, jr_03a_59a6

    dec c
    ld a, [de]
    cp $ff
    jr z, jr_03a_59a6

    ld [$d11d], a
    push bc
    push hl
    push de
    push hl
    ld bc, $000c
    ld a, $7f
    call Call_000_166e
    pop hl
    push hl
    ld de, $0014
    add hl, de
    ld bc, $000c
    ld a, $7f
    call Call_000_166e
    pop hl
    push hl
    call Call_000_2e93
    pop hl
    call Call_000_1723
    push hl
    ld hl, $de05
    ld bc, $000b
    ld a, [$cd3d]
    call Call_000_3a74
    ld e, l
    ld d, h
    pop hl
    ld bc, $0015
    add hl, bc
    ld [hl], $7f
    inc hl
    call Call_000_1723
    ld hl, $cd3d
    inc [hl]
    pop de
    pop hl
    ld bc, $003c
    add hl, bc
    pop bc
    inc de
    jr jr_03a_594e

jr_03a_59a6:
    ret


Call_03a_59a7:
    ld hl, $c3a0
    ld a, $79
    ld [hl+], a
    ld a, $7a
    ld c, $12

jr_03a_59b1:
    ld [hl+], a
    dec c
    jr nz, jr_03a_59b1

    ld a, $7b
    ld [hl], a
    ret


Call_03a_59b9:
    ld hl, $c3a0
    ld de, $0013
    ld c, $12

jr_03a_59c1:
    ld a, $7c
    ld [hl], a
    add hl, de
    ld a, $7c
    ld [hl+], a
    dec c
    jr nz, jr_03a_59c1

    ret


    ld hl, $c4f4

Call_03a_59cf:
    ld a, $7d
    ld [hl+], a
    ld a, $7a
    ld c, $12

jr_03a_59d6:
    ld [hl+], a
    dec c
    jr nz, jr_03a_59d6

    ld a, $7e
    ld [hl], a
    ret


Call_03a_59de:
    ld hl, $c3a4
    ld c, $06
    call Call_03a_59eb
    ld hl, $c3ba
    ld c, $06

Call_03a_59eb:
jr_03a_59eb:
    push bc
    push hl
    ld de, $59fd
    call Call_000_1723
    pop hl
    ld bc, $003c
    add hl, bc
    pop bc
    dec c
    jr nz, jr_03a_59eb

    ret


    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b

Call_03a_5a08:
    call Call_000_3dd8
    call Call_000_16dd
    ld de, $5bfa
    ld hl, $9000
    ld bc, $3a7f
    call Call_000_15fe
    ld hl, $c3a0
    call Call_03a_5bdf
    ld hl, $c3a0
    call Call_03a_5beb
    ld hl, $c3b3
    call Call_03a_5beb
    ld a, $00
    ld hl, $c3a0
    ld [hl], a
    ld hl, $c3b3
    ld [hl], a
    ld de, $5a73
    ld hl, $c3cd
    call Call_000_1723
    ld de, $5a7d
    ld hl, $c3f3
    call Call_000_1723
    ld de, $d157
    ld hl, $c3fa
    call Call_000_1723
    ld de, $5a84
    ld hl, $c41a
    call Call_000_1723
    ld de, $5ac8
    ld hl, $c4e9
    call Call_000_1723
    ld b, $08
    call Call_000_3e05
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    call Call_000_3de0
    ret


    db $10
    add e
    xor b
    xor a
    xor e
    xor [hl]
    xor h
    and b
    db $10
    ld d, b
    adc a
    xor e
    and b
    cp b
    and h
    or c
    ld d, b
    add d
    xor [hl]
    xor l
    and [hl]
    or c
    and b
    or e
    or d
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld c, [hl]
    and e
    xor b
    xor a
    xor e
    xor [hl]
    xor h
    and b
    ld a, a
    and d
    and h
    or c
    or e
    xor b
    and l
    xor b
    and h
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, [hl]
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, [hl]
    ld d, h
    add e
    add h
    sub a
    add sp, $50
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add l
    sub c
    add h
    add b
    adc d
    ld d, b

Call_03a_5ad3:
    call Call_000_16dd
    ld hl, $c4f4
    call Call_03a_5bdf
    ld hl, $c3a0
    call Call_03a_5beb
    ld hl, $c3b3
    call Call_03a_5beb
    ld a, $00
    ld hl, $c4f4
    ld [hl], a
    ld hl, $c507
    ld [hl], a
    ld de, $5b3e
    ld hl, $c3ce
    ld bc, $0a0c
    call Call_03a_525d
    ld de, $5bb6
    ld hl, $c4a9
    ld bc, $010b
    call Call_03a_525d
    ld de, $5bd5
    ld hl, $c4ce
    call Call_000_1723
    ld hl, $c4d8
    ld de, $da40
    ld bc, $4103
    call Call_000_3c5b
    ld [hl], $16
    inc hl
    ld de, $da42
    ld bc, $8102
    call Call_000_3c5b
    ld a, [$d11d]
    cp $97
    ret nz

    ld de, $5bc1
    ld hl, $c3a2
    ld bc, $0405
    call Call_03a_525d
    ret


    ld a, a
    ld a, a
    ld a, a
    ld a, [de]
    dec de
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03a_5bd2

    ld hl, $2322
    ld a, a
    inc h
    dec h
    ld h, $27
    jr z, jr_03a_5b86

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03a_5b96

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03a_5ba6

    ld a, [hl-]
    dec sp
    inc a
    ld a, a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    add hl, hl
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    add hl, hl
    add hl, hl
    ld c, h
    ld c, l
    ld c, [hl]

jr_03a_5b86:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld a, a
    ld a, a
    ld a, a
    ld e, d
    ld e, e

jr_03a_5b96:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_03a_5ba6:
    ld l, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld a, a
    ld a, a
    ld a, a
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld [hl], b
    ld [hl], c
    ld a, a
    ld [hl], d
    ld a, a
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, a
    ld a, b
    ld de, $1312
    ld a, a
    ld a, a

jr_03a_5bd2:
    inc d
    dec d
    ld a, a
    adc a
    adc e
    add b
    sbc b
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld d, b

Call_03a_5bdf:
    ld c, $0a

jr_03a_5be1:
    ld [hl], $02
    inc hl
    ld [hl], $01
    inc hl

jr_03a_5be7:
    dec c
    jr nz, jr_03a_5be1

    ret


Call_03a_5beb:
    ld c, $09
    ld de, $0014

jr_03a_5bf0:
    ld [hl], $04
    add hl, de
    ld [hl], $03
    add hl, de
    dec c
    jr nz, jr_03a_5bf0

    ret


    nop
    rst $38
    nop
    rst $38
    nop
    jp $db00


    nop
    db $db
    nop
    jp $ff00


    nop
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    jr nc, jr_03a_5c11

jr_03a_5c11:
    rst $30
    nop
    rst $30
    ld bc, $0106
    cp $00
    cp $00
    cp $00
    cp $00
    ld b, $00
    rst $30
    nop
    rst $30
    ret nz

    jr nc, jr_03a_5be7

    ccf
    ld b, b
    ccf
    nop
    dec de
    nop
    ei
    nop
    ei
    nop
    jp $df00


    nop
    rst $18
    rlca
    ret c

    ld b, $d8
    ld b, $d8
    nop
    rst $18
    nop
    rst $18
    nop
    jp $fb00


    nop
    ei
    ld h, b
    dec de
    ld h, b
    dec de
    nop
    rst $38
    nop
    db $e3
    nop
    ret


    nop
    rst $08
    nop
    rst $08
    nop
    ret


    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    adc l
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    sbc b
    nop
    sub c
    nop
    ld [de], a
    nop
    sub e
    nop
    sub c
    nop
    ret c

    nop
    rst $38
    nop
    rst $38
    nop
    ld b, e
    nop
    ret


    nop
    ld c, c
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld c, c
    nop
    rst $38
    nop
    rst $38
    nop
    ret c

    nop
    adc h
    nop
    inc h
    nop
    inc h
    nop
    inc b
    nop
    inc h
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, c
    nop
    ret


    nop
    ret


    nop
    ret


    nop
    ret


    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $00
    inc a
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    jr c, jr_03a_5cb7

jr_03a_5cb7:
    add hl, bc
    nop
    rst $38
    nop
    rst $38
    nop
    jp nz, Jump_03a_6600

    nop
    ld h, $00
    ld h, $00
    ld h, $00
    ld h, $00
    rst $38
    nop
    rst $38
    nop
    ld h, e
    nop
    ld c, c
    nop
    ld c, c
    nop
    ld c, c
    nop
    ld c, c
    nop
    ld h, e
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, [hl]
    nop
    inc h
    nop
    ld b, $00
    daa
    nop
    inc h
    nop
    ld [hl], $00
    rst $38
    nop
    rst $38
    nop
    inc sp
    nop
    di
    nop
    inc sp
    nop
    sub e
    nop
    sbc a
    nop
    inc sp
    nop
    rst $38
    nop
    nop
    nop
    nop
    jr c, jr_03a_5d00

jr_03a_5d00:
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    jr c, jr_03a_5d08

jr_03a_5d08:
    nop
    nop
    jr nz, jr_03a_5d2c

    db $10
    db $10
    rra
    rrca
    inc a
    nop
    ccf
    rrca
    ld a, [hl]
    ld b, $b5
    or l
    ld a, [de]
    ld a, [de]
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ld h, b
    sbc b
    sbc b
    ld h, a
    ld h, a
    sbc b
    sbc b
    ld h, a
    rst $20
    inc d
    inc d

jr_03a_5d2c:
    inc d
    inc d
    inc d
    inc d
    jr z, jr_03a_5d5a

    ld l, b
    ld l, b
    sub b
    sub b
    ld h, b
    ld h, b
    add b
    add b
    adc d
    cp d
    add l
    or l
    ld b, d
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld hl, $1127
    rra
    add hl, bc
    rrca
    ld b, $06
    db $10
    ret nc

    ld [$8408], sp
    adc h
    ld b, d
    ld e, [hl]
    ld [hl+], a
    ld a, $1c
    inc e
    nop
    nop
    nop
    nop

jr_03a_5d5a:
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    jp $c7c3


    rst $00
    add $c6
    add a
    add a
    inc bc
    inc bc
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    ret nz

    ret nz

    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    inc c
    inc c
    inc c
    inc c
    inc e
    inc e
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    nop
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $c7
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $7d01
    ld a, l
    cp $fe
    jp $ffc3


    jp $c0ff


    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    nop
    add b
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$30]
    ld hl, sp+$18
    db $fc
    inc c
    rst $38
    rlca
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
    cp $fe
    rst $38
    rst $38
    ld a, [hl]
    add c
    nop
    nop
    nop
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
    rra
    rra
    cp $ff
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$e0], a
    ldh a, [$f0]
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
    ld bc, $0701
    rlca
    ld bc, $0101
    ld bc, $0303
    rrca
    rrca
    ccf
    ccf
    ld a, [c]
    ld a, [c]
    jp nz, $01c2

    ld bc, $8181
    add b
    add b
    nop
    nop
    nop
    jr nc, jr_03a_5e7b

    ld a, b
    inc e
    ld a, h
    inc b
    ld h, h
    ld a, [c]
    add [hl]

jr_03a_5e6a:
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7e]
    ld a, c
    ld a, a
    ld a, d
    ccf
    inc a
    ccf
    inc a
    cpl
    jr z, jr_03a_5e6a

jr_03a_5e7b:
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $20
    ld h, $e7
    ld h, [hl]
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
    rst $30
    rrca
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
    sbc a
    sbc a
    db $fd
    cp $ff
    ld h, b
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
    rst $18
    ldh [rIE], a
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
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    db $fc
    ld a, h
    ld hl, sp+$78
    di
    di
    rst $00
    rst $00
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
    ld bc, $0101
    ld bc, $0e0e
    jr jr_03a_5f16

    jr nc, @+$32

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    add b
    add b
    and b
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

jr_03a_5f16:
    nop
    nop
    nop
    nop
    ld [c], a
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, d
    ld [bc], a
    ld a, $02
    ld e, $02
    ld c, $02
    ld b, $02
    ld b, $02
    daa
    inc h
    inc hl
    ld [hl+], a
    ld hl, $2121
    ld hl, $3030
    ld c, h
    ld c, h
    add d
    add d
    add d
    add d
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    jr c, jr_03a_5fc0

    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, h
    ld e, a
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    rrca
    di
    inc de
    di
    inc de
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rrca
    db $fc
    inc a
    ldh a, [$f0]
    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    pop bc
    pop bc
    jp Jump_000_0fc3


    inc c
    rra
    jr jr_03a_5fce

    jr nc, jr_03a_6010

    ld h, b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$60], a
    ldh [$60], a
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp+$18
    ld hl, sp+$18
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    ld h, b
    nop
    ld [hl], b
    add b
    ld [hl], b

jr_03a_5fc0:
    ret nz

    jr c, @-$1e

    inc e
    ldh a, [$0c]
    ld hl, sp+$06
    cp $01
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_03a_5fce:
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc c
    adc h
    jr jr_03a_6056

    ld a, b
    nop
    jr nc, jr_03a_5fea

jr_03a_5fea:
    ccf
    jr nz, jr_03a_602c

    jr nz, jr_03a_602e

    jr nz, @+$31

    jr nc, jr_03a_6012

    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rst $38
    ld hl, sp-$19
    rst $38
    rst $00
    cp $83
    ld a, [hl]
    add a
    ld a, h
    add a
    ld a, h
    rst $08
    ld a, b
    rst $38

jr_03a_6009:
    jr nc, jr_03a_6009

    add e
    db $fc
    rlca
    db $fc
    rlca

jr_03a_6010:
    db $fc
    rlca

jr_03a_6012:
    cp $03
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ccf
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $e3
    ld h, [hl]

jr_03a_602c:
    rst $20
    ld h, [hl]

jr_03a_602e:
    rst $28
    ld l, h
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
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
    cp $06
    db $fc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_03a_604f:
    inc c
    inc c
    inc c
    ld b, $06
    ld b, $06

jr_03a_6056:
    ld b, $06
    inc bc
    inc bc
    rst $28
    inc e
    rst $38
    inc hl
    call $cf43
    ld c, a
    db $d3
    ld d, d
    add e
    ld d, c
    db $e3

Jump_03a_6067:
    ld sp, $29d6
    add b
    ld b, b
    ret nz

    jr nc, jr_03a_604f

    sbc [hl]
    ld hl, sp+$47
    db $fc
    inc hl
    rst $18
    jr nz, @+$01

    db $10
    rst $38
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    pop hl
    ld bc, $c1fe
    ld a, $f3
    inc c
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_03a_6091

jr_03a_6091:
    ret nz

    nop
    nop
    nop
    nop
    ret nz

    nop
    ld hl, sp+$07
    rra
    db $10
    rra
    db $10
    ccf
    and b
    ccf
    ld h, b
    dec sp
    ld h, a
    ld a, a
    ld a, h
    ld a, a
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38

jr_03a_60c5:
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
    inc bc
    rst $38
    rlca
    db $fc
    inc c
    ld hl, sp+$38
    ldh a, [rSVBK]
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
    nop
    nop
    ld a, a
    ld e, $b7
    adc h
    db $dd
    jp Jump_03a_6067


    ld sp, $1c38
    ld e, $07
    rlca
    ld bc, $ff01
    db $10
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    add b
    ldh [$f0], a
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    db $fd
    ld c, [hl]
    cp $b6
    rst $38
    sub l
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ld a, $c0
    inc a
    ret nz

    add hl, sp
    ld sp, $f33a
    db $f4
    ld a, [c]
    dec d
    rst $38
    ret nz

    ld a, a
    ret nz

    rst $38
    add e
    inc a
    db $ec
    ret nc

    jr nc, jr_03a_60c5

    ld b, b
    nop
    add b
    nop
    ld bc, $00ff
    rst $38
    ld a, h
    add e
    add e
    nop
    nop
    nop
    rlca
    rlca
    ccf
    jr c, @+$01

    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$7f], a
    ld b, b
    ccf
    ldh [$9f], a
    ldh a, [$cf]
    ld hl, sp-$11
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [$bf]
    cp b
    sbc a
    sbc h
    cp a
    cp b
    rst $38
    ldh a, [$c0]
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh a, [$30]
    ld hl, sp+$18
    ld hl, sp+$18
    db $fc
    inc c
    db $fc
    inc c
    ld a, a
    ld a, a
    rrca
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
    rst $38
    ld bc, $82ff
    rst $38
    db $fc
    ld a, a
    ld a, b
    rra
    jr jr_03a_61f4

    jr nc, @+$41

    jr nc, @+$41

jr_03a_61b9:
    jr nc, jr_03a_61b9

    dec c
    cp $03
    cp $02
    db $fc
    inc b
    db $fc
    inc b
    db $f4
    inc c
    ld hl, sp+$08
    ld hl, sp+$08
    ld bc, $0203
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_03a_6255

    jr nz, jr_03a_6257

    ld b, b
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
    ld bc, $01ff
    rst $38
    ld l, a
    ld hl, sp+$77
    db $fc
    ld [hl], a
    db $fc
    ld [hl], a
    db $fc
    rst $30
    db $fc

jr_03a_61f4:
    rst $28
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$01
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ret nz

    scf
    ret z

    inc hl
    rst $18
    rrca
    rst $38
    inc c
    db $fc
    inc a
    db $fc
    db $fc
    db $fc
    ret nz

    ret nz

    ld hl, sp+$38
    ldh a, [$f0]
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
    ccf
    jr nc, @+$41

    jr nc, jr_03a_624e

    jr jr_03a_6250

    jr jr_03a_6242

    inc c
    rlca
    ld b, $03
    inc bc
    ld bc, $f801
    ld [$08f8], sp
    ld hl, sp+$09
    db $f4
    dec c

jr_03a_6242:
    db $fc
    dec b
    db $fc
    dec b
    cp $8e
    cp $c6
    ld b, b
    rst $38
    ld b, b
    rst $38

jr_03a_624e:
    add b
    rst $38

jr_03a_6250:
    add b
    rst $38
    add b
    rst $38
    pop hl

jr_03a_6255:
    rst $38
    ld a, a

jr_03a_6257:
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    rst $18
    ldh a, [$df]
    ldh a, [$bf]
    ldh [$7f], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    inc bc
    cp $06
    cp $06
    db $fc
    inc c
    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh [$60], a
    rlca
    rlca
    rrca
    ld c, $1f
    add hl, de
    rra
    rra
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    adc a
    db $fc
    inc a
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ccf
    rst $38
    ldh [rIE], a
    ld a, a
    ld a, a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $fe
    ld hl, sp-$08
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
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ccf
    inc sp
    ccf
    add hl, sp
    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    ldh [$60], a
    ldh a, [$30]
    ld hl, sp+$18
    db $fc
    inc l
    db $fc
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
    nop
    nop
    rra
    rra
    jr z, jr_03a_632a

    jr nz, jr_03a_6334

    jr nz, jr_03a_6326

    jr nz, jr_03a_6329

    jr nz, jr_03a_632b

    jr nc, jr_03a_633c

    ret z

    ret z

    ld [$0c08], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld h, d
    ld [hl], c
    ld [hl], c
    ld h, b
    ld [hl], b
    ret nc

    sub b
    ret z

    adc b
    call nz, $c484
    add h
    ld [c], a
    add d

jr_03a_6326:
    ld [hl], d
    ld b, d
    ld a, l

jr_03a_6329:
    ld b, c

jr_03a_632a:
    nop

jr_03a_632b:
    jr nz, jr_03a_632d

jr_03a_632d:
    jr nc, jr_03a_633f

    db $10
    ld [$0408], sp
    inc b

jr_03a_6334:
    inc b
    inc b
    inc bc
    inc bc
    nop
    nop
    or c
    or c

jr_03a_633c:
    ld sp, $82b1

jr_03a_633f:
    ld h, d
    adc h
    inc b
    inc l
    inc [hl]
    ld a, [hl]
    ld h, d
    or c
    and c
    ld b, b
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
    ret nz

    ret nz

    inc a
    jr nz, jr_03a_637b

    db $10
    rrca
    inc c
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
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    and b
    and b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr z, jr_03a_63a0

    jr z, jr_03a_63a2

    ld b, b

jr_03a_637b:
    ld b, b
    sub b
    sub b
    xor b
    xor b
    ld c, b
    ld c, b
    ld [$0408], sp
    inc b
    inc b
    inc b
    inc bc
    inc bc
    nop
    nop
    jr jr_03a_63a6

    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h
    ld a, [de]
    ld a, [de]
    inc d
    inc d
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_03a_63a0:
    nop
    nop

jr_03a_63a2:
    rst $38
    rst $38
    rst $38
    rst $38

jr_03a_63a6:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_03a_63c6

    xor h
    xor h
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    and h
    and h
    ld e, b
    ld e, b
    jr z, jr_03a_63e2

    jr z, jr_03a_63e4

    jr z, jr_03a_63e6

    jr z, jr_03a_63e8

    jr z, jr_03a_63ea

    jr z, @+$2a

    jr z, @+$2a

jr_03a_63c6:
    jr z, jr_03a_63f0

    jr z, @+$2a

    inc d
    inc d
    ld a, [de]
    ld a, [de]
    dec l
    dec l
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ld b, d
    dec h
    dec h
    jr jr_03a_63f0

    nop
    nop
    jr z, @+$2a

    ld e, b
    ld e, b
    xor h
    xor h
    ld a, [hl]
    ld a, [hl]

jr_03a_63e2:
    ld b, d
    ld b, d

jr_03a_63e4:
    and h
    and h

jr_03a_63e6:
    jr @+$1a

jr_03a_63e8:
    nop
    nop

Call_03a_63ea:
jr_03a_63ea:
    call Call_000_3dd8
    call Call_000_16dd

jr_03a_63f0:
    call Call_000_36c3
    ld de, $6563
    ld hl, $9710
    ld bc, $3a01
    call Call_000_1636
    ld de, $656b
    ld hl, $96e0
    ld bc, $3a01
    call Call_000_1636
    xor a
    ldh [$ba], a
    xor a
    ld [$cc49], a
    call Call_000_1132
    ld hl, $c3a0
    ld bc, $1012
    call Call_000_16f0
    ld hl, $c490
    ld bc, $0412
    call Call_000_16f0
    ld hl, $c46b
    call Call_000_1313
    ld hl, $c46a
    ld a, $6e
    ld [hl+], a
    ld [hl], $7f
    ld hl, $c47e
    ld [hl], $71
    ld hl, $c480
    ld de, $cfb9
    ld bc, $0203
    call Call_000_3c5b
    ld a, [$d0b7]
    ld [$d11d], a
    ld [$d0b4], a
    ld hl, $d2b4
    call Call_03a_6511
    ld hl, $c3d0
    call Call_000_1723
    call Call_000_2e93
    ld hl, $c3e5
    call Call_000_1723
    ld a, $3a
    call Call_000_3eb4
    ld hl, $c442
    ld [hl], $74
    inc hl
    ld [hl], $f2
    inc hl
    ld de, $d11d
    ld bc, $8103
    call Call_000_3c5b
    ld hl, $c3f8
    ld de, $652f
    call Call_000_1723
    ld hl, $d272
    call Call_03a_6511
    ld hl, $c40d
    call Call_000_1723
    ld hl, $c421
    ld de, $6533
    call Call_000_1723
    ld hl, $c425
    ld de, $cfa3
    ld bc, $8205
    call Call_000_3c5b
    ld hl, $c449
    ld de, $6537
    ldh a, [$fa]
    set 2, a
    ldh [$fa], a
    call Call_000_1723
    ldh a, [$fa]
    res 2, a
    ldh [$fa], a
    ld hl, $c450
    ld de, $cfbb
    ld a, $04

jr_03a_64c2:
    push af
    push de
    push hl
    ld bc, $0203
    call Call_000_3c5b
    pop hl
    ld bc, $0014
    add hl, bc
    pop de
    inc de
    inc de
    pop af
    dec a
    jr nz, jr_03a_64c2

    ld hl, $c4a5
    ld a, [$cf9f]
    call Call_03a_651d
    ld hl, $c4b9
    ld a, [$cfa0]
    call Call_03a_651d
    ld hl, $c4cd
    ld a, [$cfa1]
    call Call_03a_651d
    ld hl, $c4e1
    ld a, [$cfa2]
    call Call_03a_651d
    ld b, $04
    call Call_000_3e05
    ld a, $01
    ldh [$ba], a
    call Call_000_3ddb
    call Call_000_3de0
    ld hl, $c3b5
    call Call_000_1144
    ret


Call_03a_6511:
    ld bc, $000b
    ld a, [$cf91]
    call Call_000_3a74
    ld e, l
    ld d, h
    ret


Call_03a_651d:
    and a
    jr z, jr_03a_6528

    ld [$d11d], a
    call Call_000_2f4d
    jr jr_03a_652b

jr_03a_6528:
    ld de, $6554

jr_03a_652b:
    call Call_000_1723
    ret


    adc [hl]
    sub e
    di
    ld d, b
    ld [hl], e
    ld [hl], h
    di
    ld d, b
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld c, [hl]
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld c, [hl]
    sub d
    adc a
    add h
    add h
    add e
    ld c, [hl]
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b
    nop
    nop
    nop
    xor [hl]
    xor d
    xor $a8
    xor b
    nop
    nop
    nop
    add b
    adc d
    adc d
    adc d
    db $e4

Call_03a_6573:
    ld hl, $8fe0
    ld de, $6597
    ld bc, $3a02
    call Call_000_15fe
    ld hl, $c380
    ld a, $08
    ld c, $08

jr_03a_6586:
    ld [hl], $10
    inc hl
    ld [hl], a
    inc hl
    ld [hl], $fe
    inc hl
    ld [hl], $00
    inc hl
    add $08
    dec c
    jr nz, jr_03a_6586

    ret


    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    jr @+$1a

    jr c, jr_03a_65e5

    jr @+$1a

    jr @+$1a

    jr @+$1a

    jr jr_03a_65cd

    nop
    nop

Call_03a_65b7:
    ld hl, $c382
    ld de, $0004
    ld a, [$c971]
    ld c, $08

jr_03a_65c2:
    sla a
    jr c, jr_03a_65ca

    ld [hl], $fe
    jr jr_03a_65cc

jr_03a_65ca:
    ld [hl], $ff

jr_03a_65cc:
    add hl, de

jr_03a_65cd:
    dec c
    jr nz, jr_03a_65c2

    ret


Call_03a_65d1:
    ld a, [$c6e8]
    ld e, a
    ld d, $00
    ld hl, $65e0
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc hl
    ld h, [hl]
    jp nc, $af66

jr_03a_65e5:
    ld h, [hl]
    ld b, l
    ld h, [hl]
    ld bc, $bd67
    ld h, [hl]
    ld [hl], c
    ld h, [hl]
    ld bc, $af67
    ld h, [hl]
    adc d
    ld h, [hl]
    ld bc, $af67
    ld h, [hl]
    ld hl, $1067
    ld h, [hl]
    ld a, [de]
    ld h, [hl]
    xor a
    ld h, [hl]

Jump_03a_6600:
    ld e, $66
    cpl
    ld h, a
    ld [hl-], a
    ld h, a

Call_03a_6606:
    ld hl, $c6e8
    inc [hl]
    ret


Call_03a_660b:
    ld hl, $c6e8
    dec [hl]
    ret


    xor a
    ld [$c971], a
    ld hl, $c6e8
    set 7, [hl]
    ret


    call Call_03a_6606
    ret


    xor a
    ld [$c6e8], a
    ret


    call Call_03a_6784
    ld hl, $69de
    call Call_03a_676b
    xor a
    ld [$c976], a
    ld [$c977], a
    ld a, [$caf4]
    ld [$c6e9], a
    call Call_03a_6606
    call Call_03a_674c
    ld a, $01
    ld [$cae0], a
    ret


    call Call_03a_6784
    ld hl, $c6e9
    ld a, [hl]
    and a
    jr z, jr_03a_6671

    ld hl, $69ea
    call Call_03a_676b
    call Call_03a_67e9
    ld a, $80
    ld [$c976], a
    ld a, $02
    ld [$c977], a
    call Call_03a_67a2
    call Call_03a_6606
    call Call_03a_674c
    ld a, $02
    ld [$cae0], a
    ret


jr_03a_6671:
    ld a, $06
    ld [$c6e8], a
    ld hl, $69f0
    call Call_03a_676b
    xor a
    ld [$c976], a
    ld [$c977], a
    call Call_03a_6606
    call Call_03a_674c
    ret


    call Call_03a_6784
    ld hl, $69e4
    call Call_03a_676b
    call Call_03a_67d2
    ld a, $04
    ld [$c976], a
    ld a, $00
    ld [$c977], a
    call Call_03a_67a2
    call Call_03a_6606
    call Call_03a_674c
    ld a, $03
    ld [$cae0], a
    ret


    ld hl, $c973
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    xor a
    ld [hl], a
    call Call_03a_6606
    ret


    ld hl, $c973
    inc [hl]
    ld a, [hl]
    cp $06
    ret c

    xor a
    ld [hl], a
    ld hl, $c6e9
    dec [hl]
    call Call_03a_660b
    call Call_03a_660b
    ret


    call Call_03a_6742
    ret c

    ld a, [$c970]
    cp $ff
    jr nz, jr_03a_66e4

    ld a, [$c971]
    cp $ff
    jr z, jr_03a_66fb

jr_03a_66e4:
    ld a, [$c970]
    cp $81
    jr nz, jr_03a_66fb

    ld a, [$c971]
    cp $00
    jr nz, jr_03a_66fb

    ld hl, $d499
    set 1, [hl]
    call Call_03a_6606
    ret


jr_03a_66fb:
    ld a, $0e
    ld [$c6e8], a
    ret


    call Call_03a_6742
    ret c

    ld a, [$c971]
    and $f0
    jr nz, jr_03a_671b

    ld a, [$c971]
    and $01
    jr nz, jr_03a_6717

    call Call_03a_6606
    ret


jr_03a_6717:
    call Call_03a_660b
    ret


jr_03a_671b:
    ld a, $11
    ld [$c6e8], a
    ret


    call Call_03a_6742
    ret c

    ld a, [$c971]
    and $f3
    ret nz

    call Call_03a_6606
    ret


    call Call_03a_6606
    ld a, [$d49a]
    and a
    ret nz

    ld a, [$c971]
    and $f0
    ret nz

    xor a
    ld [$c6e8], a
    ret


Call_03a_6742:
    ld a, [$d49a]
    and a
    jr nz, jr_03a_674a

    and a
    ret


jr_03a_674a:
    scf
    ret


Call_03a_674c:
jr_03a_674c:
    ld a, [$d49a]
    and a
    jr nz, jr_03a_674c

    ld a, $01
    ld [$d49a], a
    xor a
    ld [$c974], a
    ld [$c975], a
    ld a, $88
    ldh [rSB], a
    ld a, $01
    ldh [rSC], a
    ld a, $81
    ldh [rSC], a
    ret


Call_03a_676b:
    ld a, [hl+]
    ld [$c6ea], a
    ld a, [hl+]
    ld [$c6eb], a
    ld a, [hl+]
    ld [$c6ec], a
    ld a, [hl+]
    ld [$c6ed], a
    ld a, [hl+]
    ld [$c6ee], a
    ld a, [hl]
    ld [$c6ef], a
    ret


Call_03a_6784:
    xor a
    ld hl, $c6ea
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c6ee
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c976], a
    ld [$c977], a
    ld hl, $c6f0
    ld bc, $0280
    call Call_000_166e
    ret


Call_03a_67a2:
    ld hl, $0000
    ld bc, $0004
    ld de, $c6ea
    call Call_03a_67c5
    ld a, [$c976]
    ld c, a
    ld a, [$c977]
    ld b, a
    ld de, $c6f0
    call Call_03a_67c5
    ld a, l
    ld [$c6ee], a
    ld a, h
    ld [$c6ef], a
    ret


Call_03a_67c5:
jr_03a_67c5:
    ld a, [de]
    inc de
    add l
    jr nc, jr_03a_67cb

    inc h

jr_03a_67cb:
    ld l, a
    dec bc
    ld a, c
    or b
    jr nz, jr_03a_67c5

    ret


Call_03a_67d2:
    ld a, $01
    ld [$c6f0], a
    ld a, [$cae2]
    ld [$c6f1], a
    ld a, $e4
    ld [$c6f2], a
    ld a, [$cae3]
    ld [$c6f3], a
    ret


Call_03a_67e9:
    ld a, [$c6e9]
    ld b, a
    ld a, [$caf4]
    sub b
    ld hl, $c978
    ld de, $0028

jr_03a_67f7:
    and a
    jr z, jr_03a_67fe

    add hl, de
    dec a
    jr jr_03a_67f7

jr_03a_67fe:
    ld e, l
    ld d, h
    ld hl, $c6f0
    ld c, $28

jr_03a_6805:
    ld a, [de]
    inc de
    push bc
    push de
    push hl
    swap a
    ld d, a
    and $f0
    ld e, a
    ld a, d
    and $0f
    ld d, a
    and $08
    ld a, d
    jr nz, jr_03a_681d

    or $90
    jr jr_03a_681f

jr_03a_681d:
    or $80

jr_03a_681f:
    ld d, a
    ld bc, $3a01
    call Call_000_15fe
    pop hl
    ld de, $0010
    add hl, de
    pop de
    pop bc
    dec c
    jr nz, jr_03a_6805

    call Call_03a_6834
    ret


Call_03a_6834:
    ld hl, $cbdc
    ld bc, $0020
    xor a
    call Call_000_166e
    ld hl, $c300
    ld c, $28

jr_03a_6843:
    push bc
    push hl
    call Call_03a_6860
    jr nc, jr_03a_6856

    call Call_03a_6886
    call Call_03a_68a1
    call Call_03a_6902
    call Call_03a_6999

jr_03a_6856:
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    pop bc
    dec c
    jr nz, jr_03a_6843

    ret


Call_03a_6860:
    ld a, [$c6e9]
    ld b, a
    ld a, [$caf4]
    sub b
    ld c, a
    ld b, $10

jr_03a_686b:
    ld a, c
    and a
    jr z, jr_03a_6876

    ld a, b
    add $10
    ld b, a
    dec c
    jr jr_03a_686b

jr_03a_6876:
    ld a, b
    ld e, a
    add $10
    ld d, a
    ld a, [hl]
    cp e
    jr c, jr_03a_6884

    cp d
    jr nc, jr_03a_6884

    scf
    ret


jr_03a_6884:
    and a
    ret


Call_03a_6886:
    push hl
    inc hl
    inc hl
    ld a, [hl]
    swap a
    ld d, a
    and $f0
    ld e, a
    ld a, d
    and $0f
    or $80
    ld d, a
    ld hl, $cbdc
    ld bc, $3a01
    call Call_000_15fe
    pop hl
    ret


Call_03a_68a1:
    push hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    call Call_03a_68ab
    pop hl
    ret


Call_03a_68ab:
    and $60
    swap a
    ld e, a
    ld d, $00
    ld hl, $68ba
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp nz, $c368

    ld l, b
    rst $00
    ld l, b
    bit 5, b
    ret


    call Call_03a_68d2
    ret


    call Call_03a_68e8
    ret


    call Call_03a_68d2
    call Call_03a_68e8
    ret


Call_03a_68d2:
    ld hl, $cbdc
    ld c, $10

jr_03a_68d7:
    ld d, [hl]
    ld a, $00
    ld b, $08

jr_03a_68dc:
    sla d
    rr a
    dec b
    jr nz, jr_03a_68dc

    ld [hl+], a
    dec c
    jr nz, jr_03a_68d7

    ret


Call_03a_68e8:
    ld hl, $cbdc
    ld de, $cbea
    ld c, $04

jr_03a_68f0:
    ld b, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, b
    ld [de], a
    inc de
    ld b, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, b
    ld [de], a
    dec de
    dec de
    dec de
    dec c
    jr nz, jr_03a_68f0

    ret


Call_03a_6902:
    push hl
    ld hl, $cbdc
    ld de, $cbec
    ld a, $08

jr_03a_690b:
    push af
    ld bc, $0000
    ld a, $08

jr_03a_6911:
    push af
    xor a
    rlc [hl]
    rl a
    inc hl
    rlc [hl]
    rl a
    dec hl
    push hl
    push de
    call Call_03a_6936
    pop de
    pop hl
    pop af
    dec a
    jr nz, jr_03a_6911

    inc hl
    inc hl
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_03a_690b

    pop hl
    ret


Call_03a_6936:
    call Call_03a_693d
    call Call_03a_696d
    ret


Call_03a_693d:
    ld e, a
    ld d, $00
    ld hl, $6949
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, c
    ld l, c
    ld e, a
    ld l, c
    ld d, [hl]
    ld l, c
    ld h, [hl]
    ld l, c
    ldh a, [rOBP0]
    and $03
    ret


    ldh a, [rOBP0]
    and $0c
    srl a
    srl a
    ret


    ldh a, [rOBP0]
    and $30
    swap a
    ret


    ldh a, [rOBP0]
    and $c0
    rlca
    rlca
    ret


Call_03a_696d:
    ld e, a
    ld d, $00
    ld hl, $6979
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add c
    ld l, c
    add [hl]
    ld l, c
    adc h
    ld l, c
    sub d
    ld l, c
    sla b
    sla c
    ret


    scf
    rl b
    sla c
    ret


    sla b
    scf
    rl c
    ret


    scf
    rl b
    scf
    rl c
    ret


Call_03a_6999:
    push hl
    ld a, [hl+]
    ld c, [hl]
    and $08
    jr nz, jr_03a_69a5

    ld hl, $c6f0
    jr jr_03a_69a8

jr_03a_69a5:
    ld hl, $c830

jr_03a_69a8:
    ld b, $00
    ld a, c
    and $f8
    sub $08
    ld c, a
    sla c
    rl b
    add hl, bc
    ld e, l
    ld d, h
    ld hl, $cbec
    ld c, $08

jr_03a_69bc:
    call Call_03a_69d0
    ld a, [de]
    and b
    or [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [de]
    and b
    or [hl]
    ld [de], a
    inc hl
    inc de
    dec c
    jr nz, jr_03a_69bc

    pop hl
    ret


Call_03a_69d0:
    push hl
    push de
    ld de, $fff0
    add hl, de
    ld a, [hl+]
    or [hl]
    xor $ff
    ld b, a
    pop de
    pop hl
    ret


    ld bc, $0000
    nop
    ld bc, $0200
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    add b
    ld [bc], a
    nop
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    ld [$0000], sp
    nop
    ld [$0f00], sp
    nop
    nop
    nop
    rrca
    nop
    ld a, [$d35d]
    cp $94
    ret z

    ld hl, $6a20
    ld a, [$cd2d]
    ld b, a

jr_03a_6a0f:
    ld a, [hl+]
    cp $ff
    jr z, jr_03a_6a18

    cp b
    ret z

    jr jr_03a_6a0f

jr_03a_6a18:
    ld a, [$cf13]
    ldh [$8c], a
    jp Jump_000_353e


    pop hl
    ld a, [c]
    di
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
