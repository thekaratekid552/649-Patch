.text
.align 2
.thumb
.thumb_func
.global battlestringloaderhack

main:
	mov r0, #0xC2
	lsl r0, r0, #0x1
	cmp r0, r6
	bne normalcode
	ldr r0, ramlocation
	ldr r7, [r0, #0x0]
	cmp r7, #0x0
	bne continue
	mov r6, #0xC
	ldr r1, returntwo
	bx r1
continue:	ldr r0, returnone
	bx r0
normalcode:	ldr r1, otherramloc
	mov r0, #0xFF
	strb r0, [r1, #0x0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
.align
ramlocation:	.word 0x0203C020
returntwo:	.word 0x080D77D1
returnone:	.word 0x080D77DD
otherramloc:	.word 0x0202298C

