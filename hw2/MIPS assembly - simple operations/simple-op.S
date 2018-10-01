	.text
	.global simple_op
	.type simple_op, @function
simple_op:
	div	$a0,$a1
	mfhi 	$v0
	jr	$ra
