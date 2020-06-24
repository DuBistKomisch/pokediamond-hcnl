	.include "asm/macros.inc"
    .include "global.inc"

	.rodata

	.global UNK_020F2224
UNK_020F2224: ; 0x020F2224
	.short 0x019E, 0x0008, 0x0008, 0x019B, 0x0074, 0x0376
	.byte 0x01, 0x01, 0x00, 0x00

	.short 0x01A4, 0x0008, 0x0006, 0x01A2, 0x00B1, 0x034B
	.byte 0x01, 0x01, 0x01, 0x00

	.short 0x01AC, 0x0008, 0x0006, 0x01AA, 0x00B0, 0x029B
	.byte 0x01, 0x01, 0x02, 0x00

	.short 0x01B3, 0x0008, 0x0006, 0x01B1, 0x0236, 0x0291
	.byte 0x01, 0x01, 0x03, 0x00

	.short 0x01BB, 0x0008, 0x0006, 0x01BA, 0x01D8, 0x021B
	.byte 0x01, 0x01, 0x04, 0x00

	.short 0x0006, 0x0008, 0x0006, 0x0003, 0x00B4, 0x0309
	.byte 0x01, 0x01, 0x07, 0x00

	.short 0x0024, 0x0008, 0x0006, 0x0021, 0x003A, 0x02D3
	.byte 0x01, 0x01, 0x08, 0x00

	.short 0x0030, 0x0008, 0x0006, 0x002D, 0x012F, 0x02F5
	.byte 0x01, 0x01, 0x09, 0x00

	.short 0x0045, 0x0008, 0x0006, 0x0041, 0x0131, 0x0213
	.byte 0x01, 0x01, 0x0A, 0x00

	.short 0x0065, 0x0008, 0x0006, 0x0056, 0x01D1, 0x02BA
	.byte 0x01, 0x01, 0x0B, 0x00

	.short 0x007B, 0x0008, 0x0006, 0x0078, 0x0258, 0x0330
	.byte 0x01, 0x01, 0x0C, 0x00

	.short 0x0086, 0x0008, 0x0006, 0x0084, 0x02CD, 0x0264
	.byte 0x01, 0x01, 0x0D, 0x00

	.short 0x0097, 0x0008, 0x0006, 0x0096, 0x035C, 0x0311
	.byte 0x01, 0x01, 0x0E, 0x00

	.short 0x00A8, 0x0008, 0x0006, 0x00A5, 0x017B, 0x00EA
	.byte 0x01, 0x01, 0x0F, 0x00

	.short 0x00AD, 0x0008, 0x0006, 0x00AC, 0x034A, 0x0257
	.byte 0x01, 0x00, 0x10, 0x00

	.short 0x00BD, 0x0008, 0x0006, 0x00BC, 0x0287, 0x01B0
	.byte 0x01, 0x01, 0x11, 0x00

	.short 0x01C4, 0x0008, 0x0006, 0x01C2, 0x0291, 0x0153
	.byte 0x01, 0x01, 0x05, 0x00

	.short 0x01CB, 0x0008, 0x0006, 0x01C9, 0x0327, 0x01CA
	.byte 0x01, 0x01, 0x06, 0x00

	.short 0x0189, 0x0008, 0x0006, 0x0188, 0x0132, 0x038E
	.byte 0x00, 0x00, 0x42, 0x00

	.short 0x00AF, 0x0004, 0x0006, 0x00AC, 0x034F, 0x0230
	.byte 0x01, 0x00, 0x44, 0x00

	.text

	thumb_func_start FUN_02034E78
FUN_02034E78: ; 0x02034E78
	push {r3, lr}
	cmp r0, #0x0
	ble _02034E82
	cmp r0, #0x14
	bls _02034E88
_02034E82:
	bl ErrorHandling
	mov r0, #0x1
_02034E88:
	sub r0, r0, #0x1
	pop {r3, pc}

	thumb_func_start FUN_02034E8C
FUN_02034E8C: ; 0x02034E8C
	mov r0, #0x1
	bx lr

	thumb_func_start FUN_02034E90
FUN_02034E90: ; 0x02034E90
	push {r4, lr}
	add r4, r1, #0x0
	bl FUN_02034E78
	lsl r1, r0, #0x4
	ldr r0, _02034EB8 ; =UNK_020F2224 + 6
	ldrh r0, [r0, r1]
	str r0, [r4, #0x0]
	mov r0, #0x0
	mvn r0, r0
	str r0, [r4, #0x4]
	ldr r0, _02034EBC ; =UNK_020F2224 + 8
	ldrh r0, [r0, r1]
	str r0, [r4, #0x8]
	ldr r0, _02034EC0 ; =UNK_020F2224 + 10
	ldrh r0, [r0, r1]
	str r0, [r4, #0xc]
	mov r0, #0x1
	str r0, [r4, #0x10]
	pop {r4, pc}
	.balign 4
_02034EB8: .word UNK_020F2224 + 6
_02034EBC: .word UNK_020F2224 + 8
_02034EC0: .word UNK_020F2224 + 10

	thumb_func_start FUN_02034EC4
FUN_02034EC4: ; 0x02034EC4
	push {r4, lr}
	add r4, r1, #0x0
	bl FUN_02034E78
	lsl r1, r0, #0x4
	ldr r0, _02034EEC ; =UNK_020F2224
	ldrh r0, [r0, r1]
	str r0, [r4, #0x0]
	mov r0, #0x0
	mvn r0, r0
	str r0, [r4, #0x4]
	ldr r0, _02034EF0 ; =UNK_020F2224 + 2
	ldrh r0, [r0, r1]
	str r0, [r4, #0x8]
	ldr r0, _02034EF4 ; =UNK_020F2224 + 4
	ldrh r0, [r0, r1]
	str r0, [r4, #0xc]
	mov r0, #0x0
	str r0, [r4, #0x10]
	pop {r4, pc}
	.balign 4
_02034EEC: .word UNK_020F2224
_02034EF0: .word UNK_020F2224 + 2
_02034EF4: .word UNK_020F2224 + 4

	thumb_func_start FUN_02034EF8
FUN_02034EF8: ; 0x02034EF8
	ldr r3, _02034F18 ; =UNK_020F2224
	mov r2, #0x0
_02034EFC:
	ldrh r1, [r3, #0x0]
	cmp r0, r1
	bne _02034F0C
	ldrb r1, [r3, #0xc]
	cmp r1, #0x0
	beq _02034F0C
	add r0, r2, #0x1
	bx lr
_02034F0C:
	add r2, r2, #0x1
	add r3, #0x10
	cmp r2, #0x14
	blo _02034EFC
	mov r0, #0x0
	bx lr
	.balign 4
_02034F18: .word UNK_020F2224

	thumb_func_start FUN_02034F1C
FUN_02034F1C: ; 0x02034F1C
	ldr r3, _02034F3C ; =UNK_020F2224
	mov r2, #0x0
_02034F20:
	ldrh r1, [r3, #0x6]
	cmp r0, r1
	bne _02034F30
	ldrb r1, [r3, #0xc]
	cmp r1, #0x0
	beq _02034F30
	add r0, r2, #0x1
	bx lr
_02034F30:
	add r2, r2, #0x1
	add r3, #0x10
	cmp r2, #0x14
	blo _02034F20
	mov r0, #0x0
	bx lr
	.balign 4
_02034F3C: .word UNK_020F2224

	thumb_func_start FUN_02034F40
FUN_02034F40: ; 0x02034F40
	push {r3-r6}
	asr r3, r1, #0x4
	lsr r3, r3, #0x1b
	add r3, r1, r3
	asr r1, r2, #0x4
	lsr r1, r1, #0x1b
	add r1, r2, r1
	mov r4, #0x0
	asr r2, r1, #0x5
	ldr r5, _02034F84 ; =UNK_020F2224
	asr r3, r3, #0x5
	add r1, r4, #0x0
_02034F58:
	ldrh r6, [r5, #0x6]
	cmp r0, r6
	bne _02034F76
	ldrh r6, [r5, #0x8]
	add r4, r1, #0x1
	lsr r6, r6, #0x5
	cmp r3, r6
	bne _02034F76
	ldrh r6, [r5, #0xa]
	lsr r6, r6, #0x5
	cmp r2, r6
	bne _02034F76
	add r0, r4, #0x0
	pop {r3-r6}
	bx lr
_02034F76:
	add r1, r1, #0x1
	add r5, #0x10
	cmp r1, #0x14
	blo _02034F58
	add r0, r4, #0x0
	pop {r3-r6}
	bx lr
	.balign 4
_02034F84: .word UNK_020F2224

	thumb_func_start FUN_02034F88
FUN_02034F88: ; 0x02034F88
	push {r4, lr}
	ldr r3, _02034FB8 ; =UNK_020F2224
	mov r4, #0x0
_02034F8E:
	ldrh r2, [r3, #0x6]
	cmp r1, r2
	bne _02034FAE
	ldrb r2, [r3, #0xd]
	cmp r2, #0x0
	beq _02034FAE
	ldr r0, [r0, #0xc]
	bl FUN_020462AC
	ldr r2, _02034FBC ; =UNK_020F2224 + 14
	lsl r3, r4, #0x4
	ldrh r2, [r2, r3]
	mov r1, #0x1
	bl FUN_0205F2E4
	pop {r4, pc}
_02034FAE:
	add r4, r4, #0x1
	add r3, #0x10
	cmp r4, #0x14
	blo _02034F8E
	pop {r4, pc}
	.balign 4
_02034FB8: .word UNK_020F2224
_02034FBC: .word UNK_020F2224 + 14

	thumb_func_start FUN_02034FC0
FUN_02034FC0: ; 0x02034FC0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	bl FUN_02034E78
	add r4, r0, #0x0
	ldr r0, [r5, #0xc]
	bl FUN_020462AC
	ldr r2, _02034FE0 ; =UNK_020F2224 + 14
	lsl r3, r4, #0x4
	ldrh r2, [r2, r3]
	mov r1, #0x2
	bl FUN_0205F2E4
	pop {r3-r5, pc}
	.balign 4
_02034FE0: .word UNK_020F2224 + 14
