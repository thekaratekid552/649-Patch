.text
.align 2
.thumb
.thumb_func
.global formeitemcheck

main:
	ldr r0, darmanitan
	cmp r0, r1
	bne exit
	push {r3}
	ldrb r1, [r2, #0x17]
	lsr r1, r1, #0x7
	ldrh r0, [r2, #0x0]
	bl getability
	pop {r2}
	ldrh r1, [r2, #0x0]
	cmp r0, #0xA1
	bne exit
	add r0, r2, #0x0
	add r0, #0x28
	ldrh r0, [r0, #0x0]
	add r3, r2, #0x0
	add r3, #0x2C
	ldrh r3, [r3, #0x0]
	lsr r3, r3, #0x1
	cmp r0, r3
	bge exit
	pop {r3}
	add r2, #0x21
	mov r0, #0xA
	strb r0, [r2, #0x0]
	mov r0, #0xE
	strb r0, [r2, #0x1]
	ldr r0, return
	bx r0
exit:	pop {r3}
	lsl r0, r1, #0x3
	sub r0, r0, r1
	lsl r0, r0, #0x2
	add r0, r0, r3
	ldrb r0, [r0, #0x6]
	add r2, #0x21
	strb r0, [r2, #0x0]
	ldr r0, return2
	bx r0
getability:	push {r2}
	ldr r2, abilget
	bx r2
.align
darmanitan:	.word 0x0000022B
return:		.word 0x08023FD1
return2:	.word 0x08023FB9
abilget:	.word 0x08040D39
