#Author: Aaron Griffin
#Desc: Simple translation of the mywc.c program into assembly
	.arch armv6
	.fpu vfp
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r4, .pt5
	mov	r6, #1
	mov	r5, r7
	ldr	r0, [r4, #0]
	bl	_IO_getc
	mov	r8, r7
	sub	r3, r6, #1
	cmn	r0, #1
	beq	.pt4
.pt2:
	cmp	r0, #10
	cmpne	r0, #32
	movne	r7, #0
	bne	.pt3
	cmp	r7, #0
	mov	r7, #1
	addeq	r5, r5, r7
	cmp	r0, #10
	addeq	r8, r8, #1
	movne	r7, #1
.pt3:
	ldr	r0, [r4, #0]
	bl	_IO_getc
	add	r6, r6, #1
	sub	r3, r6, #1
	cmn	r0, #1
	bne	.pt2
.pt4:
	cmp	r7, #0
	addeq	r5, r5, #1
	mov	r1, r8
	mov	r2, r5
	ldr	r0, .pt5+4
	bl	printf
	ldr	r0, [r4, #0]
	bl	_IO_getc
	mov	r0, #0
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.pt5:
	.word	stdin
	.word	.output
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.output:
	.ascii	" %d %d %d\012\000"
