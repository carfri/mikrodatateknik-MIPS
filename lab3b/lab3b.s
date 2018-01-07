# First section:  user data,			
# each process has its own "private" area.

        .data        
glob1:  .byte   'A'
        .space  999
glob2:  .byte   '0'
        .space  999
glob3:  .byte   'a'
        .space  999

# Second section: user code.
#
# The first instructions initializes IO and Timer.
# The last instruction in main are only used for start
# up, they initialize the first process.

        .text
        .set noreorder
main:
        li    $t0, 0xFFFF0010   # address to Timer registers:
                                # +0: Timer control register
                                # +4: Timer count register
                                # +8: Timer compare register

        li    $t1, 0
        sw    $t1, 4($t0)       # reset counter register

        li    $t1, 63           # count from 0 to 63
        sw    $t1, 8($t0)       # compare register := 63

        li    $t1, 0b101001     # "101001": compare interrupt enable,
                                #           compare reset enable,
                                #           timer start
        sw    $t1, 0($t0)       # control register := "101001"

        li    $t0, 0xFFFF0000   # address to I/O registers:
                                # +0: Input control register
 
        li    $t1, 0b10         # "10": interrupt enable
        sw    $t1, 0($t0)       # control register := "10"

        li    $t0, 0x0C03       # enable HW Interrupt 1 (input): bit 11
                                # enable HW Interrupt 0 (timer): bit 10
                                # set user mode:     bit 1
                                # enable interrupts: bit 0

        mtc0  $t0, $12          # CP0 status := 0x0C03

        la    $gp, glob1        # dirty setup for process 1

proc1:  # ++++++++++ first process +++++++++
	lb $a0,0($gp)		#sets a0 to value of gp-address in memmory
	li $v0, 0x102		#Sets kernel service to Output
	Syscall			#Moves from userprocess to kernel
	addiu $t3,$a0,1		#changes t3 to next char 
if:	
	bne $t3,0x5b,else	#Checks if t3:s charcode = 'Z'
   	nop				
	li $t3,0x41		# sets t3 back to 'A'
else:	
	sb $t3,0($gp)		#stores the new char at memmory address gp

	j proc1			#jumps back to proc1
   nop
proc2: # ++++++++++ second process +++++++++
        # Description: almost identical to the code of proc1 above,
        # only 2-3 lines should differ.  Prints '0' through '9' in
        # an endless loop. The symbol "glob2" may not be used.

	lb $a0,0($gp)		#sets a0 to value of gp-address in memmory
	li $v0, 0x102		#Sets kernel service to Output
	Syscall			#Moves from userprocess to kernel
	addiu $t3,$a0,1		#changes t3 to next char 
ifproc2:	
	bne $t3,0x3a,elseproc2	#Checks if t3:s charcode = '9'
   	nop			
	li $t3,0x30		# sets t3 back to '0'
elseproc2:	
	sb $t3,0($gp)		#stores the new char at memmory address gp
        j proc2
   nop
proc3:  # +++++++++ third process ++++++++++
        # Description: almost identical to the code of proc1 above,
        # only 2-3 lines should differ.  Prints 'a' through 'z' in
        # an endless loop. The symbol "glob3" may not be used.

	lb $a0,0($gp)		#sets a0 to value of gp-address in memmory
	li $v0, 0x102		#Sets kernel service to Output
	Syscall			#Moves from userprocess to kernel
	addiu $t3,$a0,1		#changes t3 to next char 
ifproc3:	
	bne $t3,0x7b,elseproc3	#Checks if t3:s charcode = 'z'
   nop				#
	li $t3,0x61		# sets t3 back to 'a'
elseproc3:	
	sb $t3,0($gp)		#stores the new char at memmory address gp

        j proc3
   nop

# Third section: data structures for the kernel:
# Process Control Block (PCB) consists of three words:
# pcb: .word  (next Program Counter for this process)
#      .word  (contents of $gp for this process)
#      .word  (contents of $sp for this process)
# All other context is saved on the process' own stack
# during exception handling and SYSCALL.

        .section .kdata
curpcb: .word  pcb1
pcb1:   .word  0, 0, 0
pcb2:   .word  proc2, glob2, 0x7fffbf94
pcb3:   .word  proc3, glob3, 0x7fff7f94

# Fourth section: kernel code.

        .section .ktext , "xa"
        .set noreorder

exception_handler:

	mfc0 $k0,$13			#Loads the exception cause register
   	nop
	sll $k0,26			
	srl $k0,28			#shifts so that only [5:2] are left
if1:
	bne $k0, 0x8, checkforextint 	#Check for software interrupt
   	nop
	beq $v0, 0x102, else1		#check if the service requested is output
   	nop
	RFE

else1:	add $k1, $zero,$zero		#resets $k1
	lui $k1, 0xffff			#loads 0xffff0000 into $k1
	sw $a0, 8($k1)			
	mfc0 $k0, $14			#loads $14 from coporcessor into k0
   	nop
	addi $k0, $k0, 4		#increments address $k0 to next cycle
   	nop
	jr $k0				#jumps to that address
	RFE				#switch back to user space				

checkforextint:
	bne $k0, 0x0, kernel_loop	#check for external interrupt	
   	nop
	mfc0 $k0,$13			#Loads excepten cause register into k0 again
   	nop
	sll $k0,16			
	srl $k0,26			#shifts so that only [15:10] are left
	bne $k0,0x1,kernel_loop		#Determine the source of the extint (is it a timer or input?)
   	nop

timer_handler:
	li      $k0, 0xFFFF0010		#This clears the timer interrupt
	li      $k1, 0b101001
	sw      $k1, 0($k0)
	nop


				#save register at stack

	addiu $sp, $sp, -112
	nop
	.set noat		
	sw $1, 4($sp)
	.set at	
	sw $2, 8($sp)
	sw $3, 12($sp)
	sw $4, 16($sp)
	sw $5, 20($sp)
	sw $6, 24($sp)
	sw $7, 28($sp)
	sw $8, 32($sp)
	sw $9, 36($sp)
	sw $10, 40($sp)
	sw $11, 44($sp)
	sw $12, 48($sp)
	sw $13, 52($sp)
	sw $14, 56($sp)
	sw $15, 60($sp)
	sw $16, 64($sp)
	sw $17, 68($sp)
	sw $18, 72($sp)
	sw $19, 76($sp)
	sw $20, 80($sp)
	sw $21, 84($sp)
	sw $22, 88($sp)
	sw $23, 92($sp)
	sw $24, 96($sp)
	sw $25, 100($sp)
	sw $fp, 104($sp)
	sw $ra,	108($sp)
	nop
	addiu $sp, $sp, 112
	nop
	la $k0,curpcb
	lw $k0,0($k0)
	
				#save register(PC $sp $gp) at PCB
	mfc0 $k1, $14		#Loads PC state at interruption	
	nop
	sw $k1,0($k0)		#stores PC
	sw $gp,4($k0)		#stores gp
	sw $sp,8($k0)		#stores sp
	
Checkproc:			#checks what the current process is and switch to the next process in line
	la $k0,curpcb
nop
	lw $k0,0($k0)
nop
	la $k1,pcb1		
nop
	beq $k0,$k1,case1
nop
	la $k1,pcb2
nop
	beq $k0,$k1,case2
nop
	la $k1,pcb3
nop
	beq $k0,$k1,case3




			#change process
case1: 		
	la $k0,curpcb	#
	la $k1,pcb2	#
	sw $k1,0($k0)	#
	b load		#
	nop		#Updates curpcb to next process
case2:  
	la $k0,curpcb	#
	la $k1,pcb3	#
	sw $k1,0($k0)	#
	b load		#
	nop		#Updates curpcb to next process
case3:	
	la $k0,curpcb	#
	la $k1,pcb1	#
	sw $k1,0($k0)	#	
	b load		#
	nop		#Updates curpcb to next process


load:
	la $k0,curpcb			#
	lw $k0,0($k0)			#
	nop				#
	lw $k1,0($k0)			#
	nop				#
	lw	$gp,4($k0)		#
	nop				#
	lw	$sp,8($k0)		#Loads content of pcb and extracts PC from it
	nop

				


					#Load register from stack
	addiu $sp, $sp, -112
	nop
	.set noat		
	lw $1, 4($sp)
	.set at	
	lw $2, 8($sp)
	lw $3, 12($sp)
	lw $4, 16($sp)
	lw $5, 20($sp)
	lw $6, 24($sp)
	lw $7, 28($sp)
	lw $8, 32($sp)
	lw $9, 36($sp)
	lw $10, 40($sp)
	lw $11, 44($sp)
	lw $12, 48($sp)
	lw $13, 52($sp)
	lw $14, 56($sp)
	lw $15, 60($sp)
	lw $16, 64($sp)
	lw $17, 68($sp)
	lw $18, 72($sp)
	lw $19, 76($sp)
	lw $20, 80($sp)
	lw $21, 84($sp)
	lw $22, 88($sp)
	lw $23, 92($sp)
	lw $24, 96($sp)
	lw $25, 100($sp)
	lw $fp, 104($sp)
	lw $ra,	108($sp)
	nop
	addiu $sp, $sp, 112
	nop
	
				#Jump to "next" PCadress
	mtc0 $k1,$14
	nop
	jr      $k1
				#Back to usercontrol
	rfe

kernel_loop:
        b kernel_loop
	nop
