# ----------------------------------------------------------
#  Group 93's "underlag" for Lab 1
#  Pseudo-instructions may be used for Lab 1.
# ----------------------------------------------------------
 
 
 
# Group 93's Codeword Generator Subroutine (pseudocode)
#  (remember:  "seed" is a global variable, UNSIGNED INTEGER;
#              you may implement local variables in registers or on the stack;
#              result returned in v0; preserve all except t regs)
#
# FUNCTION codgen(): UNSIGNED INTEGER;
#  LOCAL SIGNED INTEGER   n;
#  LOCAL UNSIGNED INTEGER x, y;
#  BEGIN
#    n := [count the number of 1's in word "seed"];
#    x := [rotate "seed" left by 25 bits];
#    y := [divide "seed" (unsigned !) by the constant 2];
#    seed := x + y + n;  [ignore overflow condition]
#   RETURN( seed XOR 0x0bbd95aa );
#  END;
# 
# hint:  if "seed" is initialized to 0x2eceb59b,
#        the first five calls will generate these values:
#        0x46796de1, 0xb6c3938f, 0xa1846a85, 0xbfcce600, 0xa41c0967, ...
# your code is to be written farther down (see comment below).
 
 
# Group 93's Recursive Decoding Subroutine (pseudocode)
#  (for "decode", all four local variables must be implemented ON THE
#              STACK, and NOT in registers; implement the code literally,.
#              no optimizations.  We're trying to teach you something.
#   remember:  result returned in v0; preserve all except t regs)
#
# FUNCTION decode( wordarr, bytearr ): UNSIGNED INTEGER;
#    (wordarr, bytearr passed by reference)
#  LOCAL UNSIGNED INTEGER m, r, x, y;
#  BEGIN
#    x := ONE'S-COMPLEMENT of codgen();
#    IF ([contents of word at "wordarr"] = 0) THEN  
#      [byte pointed to by "bytearr"] := 0;
#      r := x;
#    ELSE
#      y := decode( wordarr+, bytearr+ );  # "k+" means "successor in k"
#      m := ( x - y ) + [contents of word at "wordarr"];
#      [byte pointed to by "bytearr"] := [the eight bits at "m"<11:4>];
#      r := TWO'S-COMPLEMENT OF codgen();
#      r := x + y + m + r + 5;
#    ENDIF;
#    RETURN( r );
#  END;
 
 
# ----------------------------------------------------------
# The following are the ONLY lines that may appear in the
# ".data" section of the code.  You may add NO other lines.
# NO additional global variables.
# ----------------------------------------------------------
 
 
	.data
plain:	.space	89		# room for 89 characters
 
	.align 4
seed:	.word    0			# 32-bit UNSIGNED INTEGER.
 
abc:	.word	0x655a8e05	# string "abc", encoded
	.word	0x9432fc26
	.word	0x46e7d215
	.word	    0
coded:	.word	0x74622c2a	# the real encoded data
	.word	0x457f269d
	.word	0xca9719a1
	.word	0xab3ead47
	.word	0xd505f612
	.word	0x28c1e207
	.word	0xf91c45cd
	.word	0xa2bc576e
	.word	0xc5740f7d
	.word	0x5456f078
	.word	0xf7b33c52
	.word	0x1548a083
	.word	0x60424560
	.word	0xb86096a9
	.word	0x7390e797
	.word	0x0abb4814
	.word	0xf8c04a5b
	.word	0x8c1a4ea7
	.word	0xa3afdad0
	.word	0xc482a5b9
	.word	0x6f2fd3ca
	.word	0x76081edd
	.word	0xbf0be87d
	.word	0xe1ebab64
	.word	0x3f19f8fd
	.word	0x71e9dbae
	.word	0xd2461be4
	.word	0x67a1c62a
	.word	0xdce2d947
	.word	0xbda793a7
	.word	0x54d793c7
	.word	0x354081be
	.word	0x8a8ec062
	.word	0xc21e814f
	.word	0xda3e8826
	.word	0xd88b322e
	.word	0x73e1ca8e
	.word	0x58e4863c
	.word	0x9211768d
	.word	0xfbd98f2b
	.word	0xaa3819ff
	.word	0xb4168e4e
	.word	0x9c996e25
	.word	0xa228db96
	.word	0x976236b4
	.word	0x894f2c79
	.word	0xa93caa49
	.word	0x03e22eed
	.word	0xa2689d3b
	.word	0x88ce0329
	.word	0x313f4f80
	.word	0x7306761f
	.word	0xc667fab7
	.word	0x7c1d9d40
	.word	0x0bab42b8
	.word	0xddb25676
	.word	0xbcc552f2
	.word	0x1165db15
	.word	0xdbcabeef
	.word	0x35591d33
	.word	0xfa324116
	.word	0xf118398f
	.word	0x721cfd54
	.word	0x525ab393
	.word	0x64ed450a
	.word	0x8fb58b4d
	.word	0x8d9aebfb
	.word	0x081e4529
	.word	0xcd2ae6ba
	.word	0x7acfb8f8
	.word	0x019e2068
	.word	0xb6c6980a
	.word	0xb0ad87c8
	.word	0x9be857e4
	.word	0x1b339466
	.word	0x15023570
	.word	0x20b660f1
	.word	0xe19e6783
	.word	0x1a67ae3a
	.word	0x8ddfca58
	.word	0xb345ade2
	.word	0x58a5cb41
	.word	0x9810dab8
	.word	0x5b21939f
	.word	0x9c29fca2
	.word	0x66517be4
	.word	0x067c7349
	.word	0xed7387b0
	.word	    0
 
 
# ----------------------------------------------------------
# The following is the main program.  You may not change this.
# You may only add your subroutines AFTER the "infinite end loop" instruction here.
# You MUST have two subroutines named "codgen" and "decode".
# BOTH must adhere to our calling conventions; 
# both MUST preserve all registers except v-regs and t-regs;
# we are going to TEST for this when we run your code.
# ----------------------------------------------------------
 
 
	.text
	.set noreorder
main:	li	$s0, 0x090912dd	# initialize "seed"
	la	$s1, seed	# initialize "seed"
	sw	$s0, 0($s1)
	la	$a0, coded	# address of start of coded words
	la	$a1, plain	# address of start of decoded bytes
	bal	   decode	# outer call to recursive "decode"
end:
	b       end             # infinite loop; plaintext now in "plain".
 
 
# ----------------------------------------------------------
# Group 93's assembly code for Function CodGen :
# ----------------------------------------------------------

	# your activation record diagram here.

codgen:	codgen:	
	addiu $sp, $sp, -4
        sw    $31, 0($sp)  #<=return adress 
	addiu $sp, $sp,-4                        
        sw    $fp, 0($sp)  #<=framepointer   
	move  $fp, $sp 
	lw    $t5,0($s1)
	li    $t7, 0
	
if1: 	
	beq $t5,$zero,codgenexit
	andi $t0,$t5,1
	add $t7,$t7,$t0
	srl  $t5,$t5,1
	b if1
codgenexit:

#    x := [rotate "seed" left by 25 bits];

	rol $t1,$s0,25

#    y := [divide "seed" (unsigned !) by the constant 2];

	srl $t2,$s0,1 

#    seed := x + y + n;  [ignore overflow condition]

	li $t4,0x0bbd95aa	
	addu $t1,$t1,$t2
	addu $s0,$t1,$t7
	sw   $s0,0($s1)

#   RETURN( seed XOR 0x0bbd95aa );

	xor $v0,$s0,$t4
	move  $sp, $fp		
	lw    $fp, 0($sp)	
	addiu $sp, $sp, 4	
	lw    $31, 0($sp)	
	addiu $sp, $sp, 4
	jr $31



# ----------------------------------------------------------
# Group 93's assembly code for Function DeCode :
# ----------------------------------------------------------

	# your activation record diagram here.

decode:		# your code here.
# Group 93's Recursive Decoding Subroutine (pseudocode)
#  (for "decode", all four local variables must be implemented ON THE
#              STACK, and NOT in registers; implement the code literally,.
#              no optimizations.  We're trying to teach you something.
#   remember:  result returned in v0; preserve all except t regs)
#
# FUNCTION decode( wordarr, bytearr ): UNSIGNED INTEGER;
#    (wordarr, bytearr passed by reference)
#  LOCAL UNSIGNED INTEGER m, r, x, y;
#  BEGIN
decode:
	addiu $sp, $sp, -4	#
        sw    $31, 0($sp) 	#stores return adress on stack
	addiu $sp, $sp,-4       #
        sw    $fp, 0($sp)     	#store value of old framepointer
	move  $fp, $sp 		#Make new framepointer
	addiu $sp, $sp, -24  	#Make room for saveing varables on stack
	
#	+---------------------+
#	|  Adress of bytearr  | -24
#	+---------------------+
#	|  Adress of Wordarr  | -20
#	+---------------------+
#	|	  m	      | -16
#	+---------------------+
#	|	  r	      | -12
#	+---------------------+
#	|	  y	      | -8
#	+---------------------+
#	|	  x	      | -4
#	+---------------------+
#	|    framepointer     | -0
#	+---------------------+
#	|     Return adress   |  4
#	+---------------------+

#    x := ONE'S-COMPLEMENT of codgen();

 	bal codgen		#calls codgen
	lui $t0,0xffff
	ori $t0, $t0,0xffff	
	xor $t1,$t0,$v0		#inverts the result of codgen	
	sw $t1,-4($fp)   	#and stores it as y in the stack

#IF ([contents of word at "wordarr"] = 0) THEN  
#      [byte pointed to by "bytearr"] := 0;
#      r := x;

if: 	lw $t0,0($a0)
	bne $t0,$zero,else
	
then:
	sb $zero,0($a1)
	lw $t0,-4($fp)
	sw $t0,-12($fp)
	lw $v0,-12($fp)
	b exit

#    ELSE
#      y := decode( wordarr+, bytearr+ );  # "k+" means "successor in k"

else:	
	sw $a0,-20($fp)		#saves current adress in wordarr
	sw $a1,-24($fp)		#saves current adress in bytearr
	addiu $a0,$a0,4		#changes wordarr to next word
	addiu $a1,$a1,1		#changes bytearr to next byte
	bal decode		#calls decode
	sw $v0,-8($fp)		#saves result on stack
	
#      m := ( x - y ) + [contents of word at "wordarr"];

	lw $t0,-4($fp)		#loads x
	lw $t1,-8($fp)		#loads y
	subu $t2,$t0,$t1	#(x-y)
	lw $t3,-20($fp)		#loads adress to current word from the stack
	lw $t3,0($t3)		#loads the word
	addu $t5,$t2,$t3	#adds word to (x-y)
	sw $t5,-16($fp)		#stores result in stack

#      [byte pointed to by "bytearr"] := [the eight bits at "m"<11:4>];

	lw $t0,-16($fp)		#loads m 
	srl $t1,$t0,4		#shift m 4bits to the left
	lw $t2,-24($fp)		#loads adress to current byte in bytearr
	sb $t1,0($t2)		#and stores the byte (m <11:4>) in bytearr

#      r := TWO'S-COMPLEMENT OF codgen();

	bal codgen		#calls codgen
	lui $t0,0xffff
	ori $t1, $t0,0xffff
	xor $t2,$t1,$v0		#inverts the result of codgen
	addiu $t3,$t2,1		#and add 1 to the inverted result
	sw $t3,-12($fp)		#and stores it in the stack

#      r := x + y + m + r + 5;

	lw $t0,-4($fp) 		#load the value of x
	lw $t1,-8($fp) 		#load the value of y
	lw $t2,-12($fp)		#load the value of r
	lw $t3,-16($fp)		#load the value of m
	addu $t0,$t0,$t1	# x+y
	addu $t0,$t0,$t3	#(x+y)+m
	addu $t0,$t0,$t2	#(x+y+r)+r
	addiu $t0,$t0,5		#(x+y+r+m)+5
	sw $t0,-12($fp)		#store result r in the stack
	lw $v0,-12($fp)		#returns r
#    ENDIF;

exit:
	move  $sp, $fp		
	lw    $fp, 0($sp)	
	addiu $sp, $sp, 4	
	lw    $31, 0($sp)	
	addiu $sp, $sp, 4
	jr    $31

#    RETURN( r );
#  END;
 


# end of file.
