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
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-32
.LCFI0:
	sw	$31,28($sp)
.LCFI1:
	sw	$fp,24($sp)
.LCFI2:
	move	$fp,$sp
.LCFI3:
	.loc 1 99 0
	li	$2,151584768			# 0x9090000
	ori	$2,$2,0x12dd
	sw	$2,16($fp)
	.loc 1 100 0
	lui	$2,%hi(coded)
	addiu	$4,$2,%lo(coded)
	lui	$2,%hi(plain)
	addiu	$5,$2,%lo(plain)
	addiu	$6,$fp,16
	jal	decode
	nop

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
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-24
.LCFI4:
	sw	$fp,16($sp)
.LCFI5:
	move	$fp,$sp
.LCFI6:
	sw	$4,24($fp)
	.loc 1 109 0
	sw	$0,0($fp)
	.loc 1 110 0
	lw	$2,24($fp)
	nop
	lw	$2,0($2)
	nop
	sw	$2,12($fp)
.L5:
	.loc 1 111 0
	lw	$2,12($fp)
	nop
	beq	$2,$0,.L6
	nop

	.loc 1 112 0
	lw	$2,12($fp)
	nop
	andi	$2,$2,0x1
	beq	$2,$0,.L7
	nop

	.loc 1 113 0
	lw	$2,0($fp)
	nop
	addiu	$2,$2,1
	sw	$2,0($fp)
.L7:
	.loc 1 114 0
	lw	$2,12($fp)
	nop
	srl	$2,$2,1
	sw	$2,12($fp)
	b	.L5
	nop

.L6:
	.loc 1 116 0
	lw	$2,24($fp)
	nop
	lw	$2,0($2)
	nop
	sll	$3,$2,25
	srl	$2,$2,7
	or	$2,$3,$2
	sw	$2,4($fp)
	.loc 1 117 0
	lw	$2,24($fp)
	nop
	lw	$2,0($2)
	nop
	srl	$2,$2,1
	sw	$2,8($fp)
	.loc 1 118 0
	lw	$2,24($fp)
	nop
	sw	$0,0($2)
	.loc 1 119 0
	lw	$4,24($fp)
	lw	$3,4($fp)
	lw	$2,8($fp)
	nop
	addu	$3,$3,$2
	lw	$2,0($fp)
	nop
	addu	$2,$3,$2
	sw	$2,0($4)
	.loc 1 120 0
	lw	$2,24($fp)
	nop
	lw	$3,0($2)
	li	$2,196935680			# 0xbbd0000
	ori	$2,$2,0x95aa
	xor	$2,$3,$2
	sw	$2,12($fp)
	.loc 1 121 0
	lw	$2,12($fp)
	.loc 1 122 0
	move	$sp,$fp
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

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
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-48
.LCFI7:
	sw	$31,44($sp)
.LCFI8:
	sw	$fp,40($sp)
.LCFI9:
	move	$fp,$sp
.LCFI10:
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	.loc 1 128 0
	lw	$4,56($fp)
	jal	codgen
	nop

	nor	$2,$0,$2
	sw	$2,24($fp)
	.loc 1 130 0
	lw	$2,48($fp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,.L9
	nop

	.loc 1 131 0
	lw	$2,52($fp)
	nop
	sb	$0,0($2)
	.loc 1 132 0
	lw	$2,24($fp)
	nop
	sw	$2,20($fp)
	b	.L10
	nop

.L9:
	.loc 1 135 0
	lw	$2,48($fp)
	nop
	addiu	$3,$2,4
	lw	$2,52($fp)
	nop
	addiu	$2,$2,1
	move	$4,$3
	move	$5,$2
	lw	$6,56($fp)
	jal	decode
	nop

	sw	$2,28($fp)
	.loc 1 136 0
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	subu	$3,$3,$2
	lw	$2,48($fp)
	nop
	lw	$2,0($2)
	nop
	addu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 137 0
	lw	$2,16($fp)
	nop
	sw	$2,32($fp)
	.loc 1 138 0
	lw	$2,32($fp)
	nop
	sll	$2,$2,20
	sw	$2,32($fp)
	.loc 1 139 0
	lw	$2,32($fp)
	nop
	sra	$2,$2,24
	andi	$2,$2,0xff
	sw	$2,32($fp)
	.loc 1 140 0
	lw	$3,52($fp)
	lw	$2,32($fp)
	nop
	sb	$2,0($3)
	.loc 1 141 0
	lw	$4,56($fp)
	jal	codgen
	nop

	nor	$2,$0,$2
	addiu	$2,$2,1
	sw	$2,20($fp)
	.loc 1 142 0
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	addu	$3,$3,$2
	lw	$2,16($fp)
	nop
	addu	$3,$3,$2
	lw	$2,20($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,5
	sw	$2,20($fp)
.L10:
	.loc 1 144 0
	lw	$2,20($fp)
	.loc 1 145 0
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

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
	.4byte	.LCFI2-.LCFI0
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -2
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI7-.LFB2
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI9-.LCFI7
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -2
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_info
	.4byte	0x206
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.ascii	"GNU C 3.4.4 mipssde-6.06.01-20070420\000"
	.byte	0x1
	.ascii	"Lab4.c\000"
	.ascii	"/afs/ltu.se/students/c/a/carfri-5/d0013e/lab4\000"
	.uleb128 0x2
	.4byte	0x97
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6e
	.uleb128 0x3
	.ascii	"seed\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0x0
	.uleb128 0x4
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	0xfb
	.byte	0x1
	.ascii	"codgen\000"
	.byte	0x1
	.byte	0x6a
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x6e
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x6a
	.4byte	0xfb
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3
	.ascii	"n\000"
	.byte	0x1
	.byte	0x6b
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.ascii	"k\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x101
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x4
	.ascii	"unsigned int\000"
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	0x19e
	.byte	0x1
	.ascii	"decode\000"
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.uleb128 0x7
	.ascii	"wordarr\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0xfb
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x7
	.ascii	"bytearr\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x19e
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x1
	.byte	0x7c
	.4byte	0xfb
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x3
	.ascii	"m\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3
	.ascii	"r\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x3
	.ascii	"z\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0x4
	.ascii	"char\000"
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.4byte	0x1bc
	.4byte	0x1a4
	.uleb128 0x9
	.4byte	0x1bc
	.byte	0x83
	.byte	0x0
	.uleb128 0x4
	.ascii	"long unsigned int\000"
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.ascii	"plain\000"
	.byte	0x1
	.byte	0x1
	.4byte	0x1ac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	plain
	.uleb128 0x8
	.4byte	0x1f5
	.4byte	0x97
	.uleb128 0x9
	.4byte	0x1bc
	.byte	0x58
	.byte	0x0
	.uleb128 0xa
	.ascii	"coded\000"
	.byte	0x1
	.byte	0x2
	.4byte	0x1e5
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
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.4byte	0x20a
	.4byte	0x6b
	.ascii	"main\000"
	.4byte	0x9e
	.ascii	"codgen\000"
	.4byte	0x111
	.ascii	"decode\000"
	.4byte	0x1d1
	.ascii	"plain\000"
	.4byte	0x1f5
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
	.section	.debug_str,"",@progbits
.LASF0:
	.ascii	"seed_addr\000"
	.ident	"GCC: (GNU) 3.4.4 mipssde-6.06.01-20070420"
