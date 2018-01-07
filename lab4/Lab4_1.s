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
	.section	.text.main,"ax",@progbits
	.align	2
	.globl	main
.LFB0:
	.file 1 "Lab4.c"
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
.LCFI0:
	sw	$31,24($sp)
.LCFI1:
	.loc 1 99 0
	li	$2,151584768			# 0x9090000
	ori	$2,$2,0x12dd
	sw	$2,16($sp)
	.loc 1 100 0
	lui	$4,%hi(coded)
	addiu	$4,$4,%lo(coded)
	lui	$5,%hi(plain)
	addiu	$5,$5,%lo(plain)
	jal	decode
	addiu	$6,$sp,16

.L2:
	.loc 1 101 0
	b	.L2
	nop

	.set	macro
	.set	reorder
	.end	main
.LFE0:
	.size	main, .-main
	.section	.text.codgen,"ax",@progbits
	.align	2
	.globl	codgen
.LFB1:
	.loc 1 106 0
	.set	nomips16
	.ent	codgen
codgen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	$6,$4
	.loc 1 110 0
	lw	$3,0($4)
	nop
	.loc 1 109 0
	.loc 1 114 0
	beq	$3,$0,.L10
	move	$5,$0

.L8:
	.loc 1 113 0
	andi	$2,$3,0x1
	.loc 1 114 0
	srl	$3,$3,1
	.loc 1 113 0
	.loc 1 114 0
	bne	$3,$0,.L8
	addu	$5,$5,$2

.L10:
	.loc 1 116 0
	lw	$2,0($6)
	nop
	sll	$3,$2,25
	srl	$4,$2,7
	or	$3,$3,$4
	.loc 1 117 0
	srl	$2,$2,1
	.loc 1 119 0
	addu	$3,$3,$2
	addu	$3,$3,$5
	sw	$3,0($6)
	.loc 1 120 0
	li	$2,196935680			# 0xbbd0000
	ori	$2,$2,0x95aa
	.loc 1 122 0
	j	$31
	xor	$2,$3,$2

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
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-48
.LCFI2:
	sw	$31,40($sp)
.LCFI3:
	sw	$21,36($sp)
.LCFI4:
	sw	$20,32($sp)
.LCFI5:
	sw	$19,28($sp)
.LCFI6:
	sw	$18,24($sp)
.LCFI7:
	sw	$17,20($sp)
.LCFI8:
	sw	$16,16($sp)
.LCFI9:
	move	$19,$4
	move	$21,$5
	move	$20,$6
	.loc 1 128 0
	jal	codgen
	move	$4,$6

	nor	$18,$0,$2
	.loc 1 130 0
	lw	$2,0($19)
	nop
	bne	$2,$0,.L12
	move	$2,$18

	.loc 1 131 0
	.loc 1 132 0
	b	.L13
	sb	$0,0($21)

.L12:
	.loc 1 135 0
	addiu	$4,$19,4
	addiu	$5,$21,1
	jal	decode
	move	$6,$20

	move	$16,$2
	.loc 1 136 0
	subu	$17,$18,$2
	lw	$2,0($19)
	nop
	addu	$17,$17,$2
	.loc 1 139 0
	srl	$2,$17,4
	.loc 1 140 0
	sb	$2,0($21)
	.loc 1 141 0
	jal	codgen
	move	$4,$20

	.loc 1 142 0
	addu	$16,$18,$16
	addu	$16,$16,$17
	subu	$2,$16,$2
	addiu	$2,$2,5
.L13:
	.loc 1 145 0
	lw	$31,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	decode
.LFE2:
	.size	decode, .-decode
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI9-.LCFI2
	.byte	0x11
	.uleb128 0x10
	.sleb128 -8
	.byte	0x11
	.uleb128 0x11
	.sleb128 -7
	.byte	0x11
	.uleb128 0x12
	.sleb128 -6
	.byte	0x11
	.uleb128 0x13
	.sleb128 -5
	.byte	0x11
	.uleb128 0x14
	.sleb128 -4
	.byte	0x11
	.uleb128 0x15
	.sleb128 -3
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -2
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_info
	.4byte	0x17f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.LASF12
	.byte	0x1
	.4byte	.LASF13
	.4byte	.LASF14
	.uleb128 0x2
	.4byte	0x47
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x47
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6d
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x63
	.4byte	0x47
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	0xa3
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x47
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x6d
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x6a
	.4byte	0xa3
	.byte	0x1
	.byte	0x56
	.uleb128 0x6
	.ascii	"n\000"
	.byte	0x1
	.byte	0x6b
	.4byte	0x47
	.byte	0x1
	.byte	0x55
	.uleb128 0x6
	.ascii	"x\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0xa9
	.byte	0x1
	.byte	0x53
	.uleb128 0x6
	.ascii	"y\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0xa9
	.byte	0x1
	.byte	0x52
	.uleb128 0x6
	.ascii	"k\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0xa9
	.byte	0x1
	.byte	0x53
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x47
	.uleb128 0x8
	.4byte	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	0x12a
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	0x47
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6d
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x1
	.byte	0x7c
	.4byte	0xa3
	.byte	0x1
	.byte	0x63
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x1
	.byte	0x7c
	.4byte	0x12a
	.byte	0x1
	.byte	0x65
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x7c
	.4byte	0xa3
	.byte	0x1
	.byte	0x64
	.uleb128 0x6
	.ascii	"m\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x47
	.byte	0x1
	.byte	0x61
	.uleb128 0x6
	.ascii	"r\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x47
	.byte	0x1
	.byte	0x52
	.uleb128 0x6
	.ascii	"x\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x47
	.byte	0x1
	.byte	0x62
	.uleb128 0x6
	.ascii	"y\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x47
	.byte	0x1
	.byte	0x60
	.uleb128 0x6
	.ascii	"z\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x47
	.byte	0x1
	.byte	0x52
	.byte	0x0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x130
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.uleb128 0x9
	.4byte	0x147
	.4byte	0x130
	.uleb128 0xa
	.4byte	0x147
	.byte	0x83
	.byte	0x0
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x4
	.byte	0x7
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1
	.4byte	0x137
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	plain
	.uleb128 0x9
	.4byte	0x170
	.4byte	0x47
	.uleb128 0xa
	.4byte	0x147
	.byte	0x58
	.byte	0x0
	.uleb128 0xb
	.4byte	.LASF11
	.byte	0x1
	.byte	0x2
	.4byte	0x160
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.4byte	0x183
	.4byte	0x1d
	.ascii	"main\000"
	.4byte	0x4e
	.ascii	"codgen\000"
	.4byte	0xb0
	.ascii	"decode\000"
	.4byte	0x14e
	.ascii	"plain\000"
	.4byte	0x170
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"Lab4.c\000"
.LASF12:
	.ascii	"GNU C 3.4.4 mipssde-6.06.01-20070420\000"
.LASF5:
	.ascii	"seed_addr\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF8:
	.ascii	"char\000"
.LASF1:
	.ascii	"codgen\000"
.LASF2:
	.ascii	"seed\000"
.LASF10:
	.ascii	"plain\000"
.LASF4:
	.ascii	"decode\000"
.LASF0:
	.ascii	"main\000"
.LASF6:
	.ascii	"wordarr\000"
.LASF7:
	.ascii	"bytearr\000"
.LASF14:
	.ascii	"/afs/ltu.se/students/c/a/carfri-5/d0013e/lab4\000"
.LASF11:
	.ascii	"coded\000"
	.ident	"GCC: (GNU) 3.4.4 mipssde-6.06.01-20070420"
