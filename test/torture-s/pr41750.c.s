	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/pr41750.c"
	.section	.text.foo_create_got_section,"ax",@progbits
	.hidden	foo_create_got_section
	.globl	foo_create_got_section
	.type	foo_create_got_section,@function
foo_create_got_section:                 # @foo_create_got_section
	.param  	i32, i32
	.result 	i32
# BB#0:                                 # %entry
	i32.load	$push0=, 0($1)
	i32.store	$discard=, 8($pop0), $0
	i32.const	$push1=, 1
	return  	$pop1
.Lfunc_end0:
	.size	foo_create_got_section, .Lfunc_end0-foo_create_got_section

	.section	.text.elf64_ia64_check_relocs,"ax",@progbits
	.hidden	elf64_ia64_check_relocs
	.globl	elf64_ia64_check_relocs
	.type	elf64_ia64_check_relocs,@function
elf64_ia64_check_relocs:                # @elf64_ia64_check_relocs
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.load	$2=, 0($1)
	i32.load	$3=, 8($2)
	block
	br_if   	$3, 0           # 0: down to label0
# BB#1:                                 # %if.then.i
	i32.load	$3=, 4($2)
	block
	br_if   	$3, 0           # 0: down to label1
# BB#2:                                 # %if.then3.i
	i32.const	$push0=, 4
	i32.add 	$push1=, $2, $pop0
	i32.store	$3=, 0($pop1), $0
.LBB1_3:                                # %if.end.i
	end_block                       # label1:
	i32.call	$discard=, foo_create_got_section@FUNCTION, $3, $1
	i32.const	$push2=, 8
	i32.add 	$push3=, $2, $pop2
	i32.load	$3=, 0($pop3)
.LBB1_4:                                # %get_got.exit
	end_block                       # label0:
	return  	$3
.Lfunc_end1:
	.size	elf64_ia64_check_relocs, .Lfunc_end1-elf64_ia64_check_relocs

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	i32.const	$1=, abfd
	block
	i32.const	$push0=, hash
	i32.store	$discard=, link_info($0), $pop0
	i32.const	$push1=, link_info
	i32.call	$push2=, elf64_ia64_check_relocs@FUNCTION, $1, $pop1
	i32.ne  	$push3=, $pop2, $1
	br_if   	$pop3, 0        # 0: down to label2
# BB#1:                                 # %if.end
	return  	$0
.LBB2_2:                                # %if.then
	end_block                       # label2:
	call    	abort@FUNCTION
	unreachable
.Lfunc_end2:
	.size	main, .Lfunc_end2-main

	.hidden	hash                    # @hash
	.type	hash,@object
	.section	.bss.hash,"aw",@nobits
	.globl	hash
	.align	2
hash:
	.skip	12
	.size	hash, 12

	.hidden	link_info               # @link_info
	.type	link_info,@object
	.section	.bss.link_info,"aw",@nobits
	.globl	link_info
	.align	2
link_info:
	.skip	4
	.size	link_info, 4

	.hidden	abfd                    # @abfd
	.type	abfd,@object
	.section	.bss.abfd,"aw",@nobits
	.globl	abfd
	.align	2
abfd:
	.int32	0                       # 0x0
	.size	abfd, 4


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
