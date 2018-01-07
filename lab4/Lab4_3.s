	.section .mdebug.abi32
	.previous
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.globl	coded
	.section	.data,"aw",@progbits
	.align	2
	.type	coded, @object
	.size	coded, 356
coded:
	.word	1952590890
	.word	1165960861
	.word	-896067167
	.word	-1421955769
	.word	-721029614
	.word	683794951
	.word	-115587635
	.word	-1564715154
	.word	-982249603
	.word	1414983800
	.word	-139248558
	.word	357081219
	.word	1614955872
	.word	-1201629527
	.word	1938876311
	.word	180045844
	.word	-121615781
	.word	-1944432985
	.word	-1548756272
	.word	-998070855
	.word	1865405386
	.word	1980243677
	.word	-1089738627
	.word	-504648860
	.word	1058666749
	.word	1911151534
	.word	-767157276
	.word	1738655274
	.word	-589113017
	.word	-1113091161
	.word	1423414215
	.word	893419966
	.word	-1970356126
	.word	-1038188209
	.word	-633436122
	.word	-661966290
	.word	1944177294
	.word	1491371580
	.word	-1844349299
	.word	-69628117
	.word	-1439163905
	.word	-1273590194
	.word	-1667666395
	.word	-1574380650
	.word	-1755171148
	.word	-1991299975
	.word	-1455642039
	.word	65154797
	.word	-1570202309
	.word	-1999764695
	.word	826232704
	.word	1929803295
	.word	-966264137
	.word	2082315584
	.word	195773112
	.word	-575515018
	.word	-1127918862
	.word	291887893
	.word	-607469841
	.word	895032627
	.word	-97369834
	.word	-250070641
	.word	1914502484
	.word	1381675923
	.word	1693271306
	.word	-1883927731
	.word	-1919226885
	.word	136201513
	.word	-852826438
	.word	2060433656
	.word	27140200
	.word	-1228498934
	.word	-1330804792
	.word	-1679271964
	.word	456365158
	.word	352466288
	.word	548823281
	.word	-509712509
	.word	443002426
	.word	-1914713512
	.word	-1287279134
	.word	1487260481
	.word	-1743725896
	.word	1528927135
	.word	-1674969950
	.word	1716616164
	.word	108819273
	.word	-311195728
	.word	0
	.section	.text.codgen,"ax",@progbits
	.align	2
	.globl	codgen
.LFB1:
	.file 1 "Lab4.c"
	.loc 1 106 0
	.set	nomips16
	.ent	codgen
codgen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.loc 1 106 0
	move	$6,$4
	.loc 1 110 0
	lw	$4,0($4)
	.loc 1 109 0
	move	$5,$0
	.loc 1 110 0
	.loc 1 114 0
	beq	$4,$0,.L7
	move	$3,$4

.L8:
	.loc 1 113 0
	andi	$2,$3,0x1
	.loc 1 114 0
	srl	$3,$3,1
	.loc 1 113 0
	.loc 1 114 0
	bne	$3,$0,.L8
	addu	$5,$5,$2

.L7:
	.loc 1 116 0
	sll	$10,$4,25
	srl	$11,$4,7
	.loc 1 117 0
	srl	$9,$4,1
	.loc 1 116 0
	or	$8,$10,$11
	.loc 1 119 0
	addu	$7,$8,$9
	addu	$3,$7,$5
	.loc 1 120 0
	li	$5,196935680			# 0xbbd0000
	ori	$4,$5,0x95aa
	.loc 1 122 0
	xor	$2,$3,$4
	.loc 1 119 0
	.loc 1 122 0
	j	$31
	sw	$3,0($6)

	.set	macro
	.set	reorder
	.end	codgen
.LFE1:
	.size	codgen, .-codgen
	.section	.text.decode,"ax",@progbits
	.align	2
	.globl	decode
.LFB2:
	.loc 1 124 0
	.set	nomips16
	.ent	decode
decode:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
.LCFI0:
	sw	$19,28($sp)
.LCFI1:
	sw	$18,24($sp)
.LCFI2:
	sw	$17,20($sp)
.LCFI3:
	sw	$31,32($sp)
.LCFI4:
	sw	$16,16($sp)
.LCFI5:
.LBB2:
.LBB3:
	.loc 1 110 0
	lw	$3,0($6)
.LBE3:
.LBE2:
	.loc 1 124 0
	move	$19,$5
	move	$18,$6
	move	$17,$4
	.loc 1 109 0
	b	.L33
	move	$5,$0

.L34:
.LBB4:
.LBB5:
	.loc 1 113 0
	addu	$5,$5,$2
	.loc 1 114 0
	srl	$3,$3,1
.L33:
	.loc 1 113 0
	.loc 1 114 0
	bne	$3,$0,.L34
	andi	$2,$3,0x1

	.loc 1 116 0
	lw	$11,0($18)
	.loc 1 120 0
	li	$7,196935680			# 0xbbd0000
	.loc 1 116 0
	sll	$12,$11,25
	srl	$13,$11,7
	or	$9,$12,$13
	.loc 1 117 0
	srl	$10,$11,1
	.loc 1 119 0
	addu	$8,$9,$10
	addu	$6,$8,$5
	sw	$6,0($18)
	.loc 1 120 0
	ori	$5,$7,0x95aa
.LBE5:
.LBE4:
	.loc 1 130 0
	lw	$4,0($17)
.LBB6:
.LBB7:
	.loc 1 120 0
	xor	$3,$6,$5
.LBE7:
.LBE6:
	.loc 1 106 0
	.loc 1 130 0
	bne	$4,$0,.L17
	nor	$16,$0,$3

	.loc 1 132 0
	move	$2,$16
	.loc 1 131 0
	sb	$0,0($19)
	.loc 1 145 0
	lw	$31,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,40

.L17:
	.loc 1 135 0
	addiu	$4,$17,4
	addiu	$5,$19,1
	jal	decode
	move	$6,$18

	.loc 1 136 0
	lw	$15,0($17)
	subu	$17,$16,$2
	addu	$6,$17,$15
	.loc 1 139 0
	srl	$14,$6,4
	.loc 1 140 0
	sb	$14,0($19)
.LBB8:
.LBB9:
	.loc 1 110 0
	lw	$4,0($18)
.LBE9:
.LBE8:
	.loc 1 135 0
	move	$7,$2
.LBB10:
.LBB11:
	.loc 1 109 0
	move	$5,$0
	.loc 1 110 0
	.loc 1 114 0
	beq	$4,$0,.L28
	move	$3,$4

.L30:
	.loc 1 113 0
	andi	$19,$3,0x1
	.loc 1 114 0
	srl	$3,$3,1
	.loc 1 113 0
	.loc 1 114 0
	bne	$3,$0,.L30
	addu	$5,$5,$19

.L28:
	.loc 1 116 0
	sll	$10,$4,25
	srl	$11,$4,7
	.loc 1 117 0
	srl	$9,$4,1
	.loc 1 116 0
	or	$8,$10,$11
	.loc 1 119 0
	addu	$3,$8,$9
	addu	$24,$3,$5
	.loc 1 120 0
	li	$5,196935680			# 0xbbd0000
.LBE11:
.LBE10:
	.loc 1 142 0
	addu	$4,$16,$7
.LBB12:
.LBB13:
	.loc 1 120 0
	ori	$2,$5,0x95aa
	xor	$31,$24,$2
.LBE13:
.LBE12:
	.loc 1 142 0
	addu	$25,$4,$6
	subu	$16,$25,$31
	addiu	$2,$16,5
.LBB14:
.LBB15:
	.loc 1 119 0
	sw	$24,0($18)
.LBE15:
.LBE14:
	.loc 1 145 0
	lw	$31,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	decode
.LFE2:
	.size	decode, .-decode
	.section	.text.main,"ax",@progbits
	.align	2
	.globl	main
.LFB0:
	.loc 1 97 0
	.set	nomips16
	.ent	main
main:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-32
.LCFI6:
	.loc 1 100 0
	lui	$4,%hi(coded)
	lui	$5,%hi(plain)
	.loc 1 99 0
	li	$3,151584768			# 0x9090000
	ori	$2,$3,0x12dd
	.loc 1 100 0
	addiu	$4,$4,%lo(coded)
	addiu	$5,$5,%lo(plain)
	addiu	$6,$sp,16
	.loc 1 97 0
	sw	$31,24($sp)
.LCFI7:
	.loc 1 99 0
	.loc 1 100 0
	jal	decode
	sw	$2,16($sp)

.L36:
	b	.L36
	nop

	.set	macro
	.set	reorder
	.end	main
.LFE0:
	.size	main, .-main
	.globl	plain
	.section	.data
	.align	2
	.type	plain, @object
	.size	plain, 132
plain:
	.space	132
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI5-.LCFI0
	.byte	0x11
	.uleb128 0x10
	.sleb128 -6
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -2
	.byte	0x11
	.uleb128 0x11
	.sleb128 -5
	.byte	0x11
	.uleb128 0x12
	.sleb128 -4
	.byte	0x11
	.uleb128 0x13
	.sleb128 -3
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI6-.LFB0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -2
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_info
	.4byte	0x211
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	0x0
	.4byte	.LASF12
	.byte	0x1
	.4byte	.LASF13
	.4byte	.LASF14
	.uleb128 0x2
	.4byte	0x63
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x63
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x6a
	.4byte	0x6a
	.uleb128 0x4
	.ascii	"n\000"
	.byte	0x1
	.byte	0x6b
	.4byte	0x63
	.uleb128 0x4
	.ascii	"x\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x70
	.uleb128 0x4
	.ascii	"y\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x70
	.uleb128 0x4
	.ascii	"k\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x70
	.byte	0x0
	.uleb128 0x5
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x63
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x8
	.4byte	0xae
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x6d
	.uleb128 0x9
	.4byte	0x33
	.byte	0x1
	.byte	0x56
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.4byte	0x47
	.byte	0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	0x50
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0xb
	.4byte	0x192
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	0x63
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6d
	.uleb128 0xc
	.4byte	.LASF4
	.byte	0x1
	.byte	0x7c
	.4byte	0x6a
	.byte	0x1
	.byte	0x61
	.uleb128 0xc
	.4byte	.LASF5
	.byte	0x1
	.byte	0x7c
	.4byte	0x192
	.byte	0x1
	.byte	0x63
	.uleb128 0xc
	.4byte	.LASF3
	.byte	0x1
	.byte	0x7c
	.4byte	0x6a
	.byte	0x1
	.byte	0x62
	.uleb128 0xd
	.ascii	"m\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x63
	.byte	0x1
	.byte	0x56
	.uleb128 0x4
	.ascii	"r\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x63
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x63
	.byte	0x1
	.byte	0x60
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x63
	.byte	0x1
	.byte	0x57
	.uleb128 0x4
	.ascii	"z\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x63
	.uleb128 0xe
	.4byte	0x15c
	.4byte	0x21
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xf
	.4byte	0x8a
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.4byte	0x47
	.byte	0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	0x50
	.byte	0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.4byte	0x21
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0xf
	.4byte	0x8a
	.uleb128 0x10
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x1
	.byte	0x55
	.uleb128 0xa
	.4byte	0x47
	.byte	0x1
	.byte	0x53
	.uleb128 0xa
	.4byte	0x50
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	0x59
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x198
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x8
	.uleb128 0xb
	.4byte	0x1c9
	.byte	0x1
	.4byte	.LASF7
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x63
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6d
	.uleb128 0x12
	.4byte	.LASF8
	.byte	0x1
	.byte	0x63
	.4byte	0x63
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x13
	.4byte	0x1d9
	.4byte	0x198
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x83
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x7
	.uleb128 0x15
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1
	.4byte	0x1c9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	plain
	.uleb128 0x13
	.4byte	0x202
	.4byte	0x63
	.uleb128 0x14
	.4byte	0x1d9
	.byte	0x58
	.byte	0x0
	.uleb128 0x15
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2
	.4byte	0x1f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	coded
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x41
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x215
	.4byte	0x77
	.ascii	"codgen\000"
	.4byte	0xae
	.ascii	"decode\000"
	.4byte	0x19f
	.ascii	"main\000"
	.4byte	0x1e0
	.ascii	"plain\000"
	.4byte	0x202
	.ascii	"coded\000"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.ascii	"unsigned int\000"
.LASF8:
	.ascii	"seed\000"
.LASF12:
	.ascii	"GNU C 3.4.4 mipssde-6.06.01-20070420\000"
.LASF3:
	.ascii	"seed_addr\000"
.LASF6:
	.ascii	"char\000"
.LASF1:
	.ascii	"codgen\000"
.LASF4:
	.ascii	"wordarr\000"
.LASF10:
	.ascii	"plain\000"
.LASF2:
	.ascii	"decode\000"
.LASF7:
	.ascii	"main\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF13:
	.ascii	"Lab4.c\000"
.LASF5:
	.ascii	"bytearr\000"
.LASF14:
	.ascii	"/afs/ltu.se/students/c/a/carfri-5/d0013e/lab4\000"
.LASF11:
	.ascii	"coded\000"
	.ident	"GCC: (GNU) 3.4.4 mipssde-6.06.01-20070420"
