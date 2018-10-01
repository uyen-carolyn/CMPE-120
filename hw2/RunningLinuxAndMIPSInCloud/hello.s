	.file	1 "hello.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.globl	date
	.rdata
	.align	2
$LC0:
	.ascii	"Sep 13 2018\000"
	.section	.data.rel.local,"aw",@progbits
	.align	2
	.type	date, @object
	.size	date, 4
date:
	.word	$LC0
	.globl	time
	.rdata
	.align	2
$LC1:
	.ascii	"15:28:35\000"
	.section	.data.rel.local
	.align	2
	.type	time, @object
	.size	time, 4
time:
	.word	$LC1
	.globl	my_name
	.rdata
	.align	2
$LC2:
	.ascii	"Uyen Nguyen\000"
	.section	.data.rel.local
	.align	2
	.type	my_name, @object
	.size	my_name, 4
my_name:
	.word	$LC2
	.rdata
	.align	2
$LC3:
	.ascii	"hello from %s\012\000"
	.align	2
$LC4:
	.ascii	"current time is %s %s\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	move	$fp,$sp
	.cprestore	16
	lw	$2,%got(my_name)($28)
	lw	$2,0($2)
	move	$5,$2
	lw	$2,%got($LC3)($28)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,%got(date)($28)
	lw	$3,0($2)
	lw	$2,%got(time)($28)
	lw	$2,0($2)
	move	$6,$2
	move	$5,$3
	lw	$2,%got($LC4)($28)
	addiu	$4,$2,%lo($LC4)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	nop
	move	$sp,$fp
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
