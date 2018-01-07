# Assignment: extend this program to reverse the string "intext"
# and write the result to "outtext".	

            .text
            .set noreorder
main:       la    $t1, intext	# t1 points to start of intext
            la    $t2, outtext	# t2 points to start of outtext
            li    $t0, 0		# t0 used to count characers
seek_end:	lb    $t3, 0($t1)	# read character
            beq   $t3, 0, seek_end1 # check if 0 (end of string)
            addiu $t0, $t0, 1
            addiu $t1, $t1, 1
            b     seek_end
seek_end1:  addu  $t2, $t2, $t0	# t2 points to end of outtext
            sb    $t3, 0($t2)	# write 0 to terminate string
            la    $t1, intext	# t1 points to start of intext
	    addiu $a0, $t0, 0
	    addiu $a1, $t1, 0
	    addiu $a2, $t2, 0
	    bal rev
stop:	    b     stop
	   
rev:	    addiu $sp, $sp, -4
            sw    $31, 0($sp)  #<=return adress 
	    addiu $sp, $sp,-4                        
            sw    $fp, ($sp)  #<=framepointer   
	    move  $fp, $sp 
	    addiu $sp, $sp, -8  #<= make room for a0 a1                        
save: 	    
  	    sw $a0,-4($fp)     #<=store number of characters left to write
	    lb $t4,0($a1)
	    sb $t4, 3($a2)
            sb $a2,-8($fp)    
	    addiu $a0,$a0,-1
     
if:	    bne   $a0, $zero,  else	                       
     
then:       b     exit
     
else:
            addiu $a1,$a1, 1
            addiu $a2,$a2,-1
       	    bal   rev


exit:
	    move  $sp, $fp		
	    lw    $fp, 0($sp)	
	    addiu $sp, $sp, 4	
	    lw    $31, 0($sp)	
	    addiu $sp, $sp, 4
	    jr    $31
            .data
intext:		.string "!dlroW olleH"
            .align 4
outtext:	.string "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

