	.text
	.file	"main.c"
	.file	1 "/Users/javierca/Documents/Develop/yazecminer/js-emscripten" "./equihash.h"
	.file	2 "/Users/javierca/Documents/Develop/yazecminer/js-emscripten" "main.c"
	.file	3 "/Users/javierca/Documents/Develop/yazecminer/js-emscripten" "./util.h"
	.section	.text.mine,"",@
	.hidden	mine                    # -- Begin function mine
	.globl	mine
	.type	mine,@function
mine:                                   # @mine
.Lfunc_begin0:
	.loc	2 44 0                  # main.c:44:0
	.functype	mine (i32, i32) -> ()
	.local  	i32, i32, i32, i32
# %bb.0:                                # %entry
	i32.const	0
	local.set	2
.Ltmp0:
	#DEBUG_VALUE: mine:target_hex <- %31
	#DEBUG_VALUE: mine:block_hex <- %30
	#DEBUG_VALUE: from_hex:hex <- %30
	#DEBUG_VALUE: from_hex:len <- 140
	#DEBUG_VALUE: from_hex:i <- 0
	#DEBUG_VALUE: from_hex:bin <- undef
	i32.const	0
	local.set	3
.Ltmp1:
.LBB0_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	.loc	2 0 0 prologue_end      # main.c:0:0
	loop    	                # label0:
.Ltmp2:
	#DEBUG_VALUE: from_hex:i <- %251
	block   	
	local.get	0
	local.get	2
	i32.add 
	i32.load8_u	0
.Ltmp3:
	#DEBUG_VALUE: hex2int:ch <- %264
	local.tee	4
.Ltmp4:
	#DEBUG_VALUE: hex2int:ch <- %158
	i32.const	-48
.Ltmp5:
	.loc	2 13 19                 # main.c:13:19
	i32.add 
	local.tee	5
	i32.const	255
	i32.and 
	i32.const	10
	i32.lt_u
	br_if   	0               # 0: down to label1
.Ltmp6:
# %bb.2:                                # %cond.false.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	.loc	2 0 19 is_stmt 0        # main.c:0:19
	block   	
	.loc	2 14 13 is_stmt 1       # main.c:14:13
	local.get	4
	i32.const	-65
	i32.add 
	i32.const	255
	i32.and 
	i32.const	5
	i32.gt_u
	br_if   	0               # 0: down to label2
# %bb.3:                                # %cond.true13.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	.loc	2 14 37 is_stmt 0       # main.c:14:37
	local.get	4
	i32.const	-55
	i32.add 
	local.set	5
	br      	1               # 1: down to label1
.LBB0_4:                                # %cond.false16.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	.loc	2 0 37                  # main.c:0:37
	end_block                       # label2:
	.loc	2 15 37 is_stmt 1       # main.c:15:37
	local.get	4
	i32.const	-87
	i32.add 
	i32.const	-1
	.loc	2 15 13 is_stmt 0       # main.c:15:13
	local.get	4
	i32.const	-97
	i32.add 
	i32.const	255
	i32.and 
	i32.const	6
	i32.lt_u
	i32.select
	local.set	5
.Ltmp7:
.LBB0_5:                                # %hex2int.exit.i
                                        #   in Loop: Header=BB0_1 Depth=1
	.loc	2 0 13                  # main.c:0:13
	end_block                       # label1:
	.loc	2 26 33 is_stmt 1       # main.c:26:33
	local.get	5
	i32.const	4
	i32.shl 
	local.set	4
	block   	
	.loc	2 26 49 is_stmt 0       # main.c:26:49
	local.get	0
	.loc	2 26 59                 # main.c:26:59
	local.get	2
	i32.const	1
	i32.or  
	.loc	2 26 49                 # main.c:26:49
	i32.add 
	i32.load8_u	0
.Ltmp8:
	#DEBUG_VALUE: hex2int:ch <- %280
	.loc	2 0 49                  # main.c:0:49
	local.tee	5
.Ltmp9:
	#DEBUG_VALUE: hex2int:ch <- %252
	i32.const	-48
.Ltmp10:
	.loc	2 13 19 is_stmt 1       # main.c:13:19
	i32.add 
	local.tee	2
	i32.const	255
	i32.and 
	i32.const	10
	i32.lt_u
	br_if   	0               # 0: down to label3
.Ltmp11:
# %bb.6:                                # %cond.false.i13.i
                                        #   in Loop: Header=BB0_1 Depth=1
	.loc	2 0 19 is_stmt 0        # main.c:0:19
	block   	
	.loc	2 14 13 is_stmt 1       # main.c:14:13
	local.get	5
	i32.const	-65
	i32.add 
	i32.const	255
	i32.and 
	i32.const	5
	i32.gt_u
	br_if   	0               # 0: down to label4
# %bb.7:                                # %cond.true13.i15.i
                                        #   in Loop: Header=BB0_1 Depth=1
	.loc	2 14 37 is_stmt 0       # main.c:14:37
	local.get	5
	i32.const	-55
	i32.add 
	local.set	2
	br      	1               # 1: down to label3
.LBB0_8:                                # %cond.false16.i19.i
                                        #   in Loop: Header=BB0_1 Depth=1
	.loc	2 0 37                  # main.c:0:37
	end_block                       # label4:
	.loc	2 15 37 is_stmt 1       # main.c:15:37
	local.get	5
	i32.const	-87
	i32.add 
	i32.const	-1
	.loc	2 15 13 is_stmt 0       # main.c:15:13
	local.get	5
	i32.const	-97
	i32.add 
	i32.const	255
	i32.and 
	i32.const	6
	i32.lt_u
	i32.select
	local.set	2
.Ltmp12:
.LBB0_9:                                # %hex2int.exit22.i
                                        #   in Loop: Header=BB0_1 Depth=1
	.loc	2 0 13                  # main.c:0:13
	end_block                       # label3:
	.loc	2 26 3 is_stmt 1        # main.c:26:3
	local.get	3
	i32.const	block
	i32.add 
	.loc	2 26 38 is_stmt 0       # main.c:26:38
	local.get	2
	local.get	4
	i32.add 
	.loc	2 26 10                 # main.c:26:10
	i32.store8	0
	.loc	2 25 24 is_stmt 1       # main.c:25:24
	local.get	3
	i32.const	1
	i32.add 
.Ltmp13:
	#DEBUG_VALUE: from_hex:i <- %295
	.loc	2 0 24 is_stmt 0        # main.c:0:24
	local.tee	3
.Ltmp14:
	#DEBUG_VALUE: from_hex:i <- %251
	i32.const	1
.Ltmp15:
	i32.shl 
	local.set	2
.Ltmp16:
	.loc	2 25 16                 # main.c:25:16
	local.get	3
	i32.const	140
	i32.ne  
.Ltmp17:
	.loc	2 25 2                  # main.c:25:2
	br_if   	0               # 0: up to label0
.Ltmp18:
# %bb.10:
	end_loop
	i32.const	0
	local.set	2
	i32.const	0
	local.set	3
.Ltmp19:
.LBB0_11:                               # %for.body.i8
                                        # =>This Inner Loop Header: Depth=1
	.loc	2 0 0                   # main.c:0:0
	loop    	                # label5:
.Ltmp20:
	#DEBUG_VALUE: from_hex:i <- %251
	block   	
	local.get	1
	local.get	2
	i32.add 
	i32.load8_u	0
.Ltmp21:
	#DEBUG_VALUE: hex2int:ch <- %304
	local.tee	4
.Ltmp22:
	#DEBUG_VALUE: hex2int:ch <- %158
	i32.const	-48
.Ltmp23:
	.loc	2 13 19 is_stmt 1       # main.c:13:19
	i32.add 
	local.tee	5
	i32.const	255
	i32.and 
	i32.const	10
	i32.lt_u
	br_if   	0               # 0: down to label6
.Ltmp24:
# %bb.12:                               # %cond.false.i.i10
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	2 0 19 is_stmt 0        # main.c:0:19
	block   	
	.loc	2 14 13 is_stmt 1       # main.c:14:13
	local.get	4
	i32.const	-65
	i32.add 
	i32.const	255
	i32.and 
	i32.const	5
	i32.gt_u
	br_if   	0               # 0: down to label7
# %bb.13:                               # %cond.true13.i.i12
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	2 14 37 is_stmt 0       # main.c:14:37
	local.get	4
	i32.const	-55
	i32.add 
	local.set	5
	br      	1               # 1: down to label6
.LBB0_14:                               # %cond.false16.i.i16
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	2 0 37                  # main.c:0:37
	end_block                       # label7:
	.loc	2 15 37 is_stmt 1       # main.c:15:37
	local.get	4
	i32.const	-87
	i32.add 
	i32.const	-1
	.loc	2 15 13 is_stmt 0       # main.c:15:13
	local.get	4
	i32.const	-97
	i32.add 
	i32.const	255
	i32.and 
	i32.const	6
	i32.lt_u
	i32.select
	local.set	5
.Ltmp25:
.LBB0_15:                               # %hex2int.exit.i22
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	2 0 13                  # main.c:0:13
	end_block                       # label6:
	.loc	2 26 33 is_stmt 1       # main.c:26:33
	local.get	5
	i32.const	4
	i32.shl 
	local.set	4
	block   	
	.loc	2 26 49 is_stmt 0       # main.c:26:49
	local.get	1
	.loc	2 26 59                 # main.c:26:59
	local.get	2
	i32.const	1
	i32.or  
	.loc	2 26 49                 # main.c:26:49
	i32.add 
	i32.load8_u	0
.Ltmp26:
	#DEBUG_VALUE: hex2int:ch <- %320
	.loc	2 0 49                  # main.c:0:49
	local.tee	5
.Ltmp27:
	#DEBUG_VALUE: hex2int:ch <- %252
	i32.const	-48
.Ltmp28:
	.loc	2 13 19 is_stmt 1       # main.c:13:19
	i32.add 
	local.tee	2
	i32.const	255
	i32.and 
	i32.const	10
	i32.lt_u
	br_if   	0               # 0: down to label8
.Ltmp29:
# %bb.16:                               # %cond.false.i13.i24
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	2 0 19 is_stmt 0        # main.c:0:19
	block   	
	.loc	2 14 13 is_stmt 1       # main.c:14:13
	local.get	5
	i32.const	-65
	i32.add 
	i32.const	255
	i32.and 
	i32.const	5
	i32.gt_u
	br_if   	0               # 0: down to label9
# %bb.17:                               # %cond.true13.i15.i26
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	2 14 37 is_stmt 0       # main.c:14:37
	local.get	5
	i32.const	-55
	i32.add 
	local.set	2
	br      	1               # 1: down to label8
.LBB0_18:                               # %cond.false16.i19.i30
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	2 0 37                  # main.c:0:37
	end_block                       # label9:
	.loc	2 15 37 is_stmt 1       # main.c:15:37
	local.get	5
	i32.const	-87
	i32.add 
	i32.const	-1
	.loc	2 15 13 is_stmt 0       # main.c:15:13
	local.get	5
	i32.const	-97
	i32.add 
	i32.const	255
	i32.and 
	i32.const	6
	i32.lt_u
	i32.select
	local.set	2
.Ltmp30:
.LBB0_19:                               # %hex2int.exit22.i37
                                        #   in Loop: Header=BB0_11 Depth=1
	.loc	2 0 13                  # main.c:0:13
	end_block                       # label8:
	.loc	2 26 3 is_stmt 1        # main.c:26:3
	local.get	3
	i32.const	target
	i32.add 
	.loc	2 26 38 is_stmt 0       # main.c:26:38
	local.get	2
	local.get	4
	i32.add 
	.loc	2 26 10                 # main.c:26:10
	i32.store8	0
	.loc	2 25 24 is_stmt 1       # main.c:25:24
	local.get	3
	i32.const	1
	i32.add 
.Ltmp31:
	#DEBUG_VALUE: from_hex:i <- %335
	.loc	2 0 24 is_stmt 0        # main.c:0:24
	local.tee	3
.Ltmp32:
	#DEBUG_VALUE: from_hex:i <- %251
	i32.const	1
.Ltmp33:
	i32.shl 
	local.set	2
.Ltmp34:
	.loc	2 25 16                 # main.c:25:16
	local.get	3
	i32.const	32
	i32.ne  
.Ltmp35:
	.loc	2 25 2                  # main.c:25:2
	br_if   	0               # 0: up to label5
.Ltmp36:
# %bb.20:                               # %from_hex.exit38
	end_loop
.Ltmp37:
	.loc	2 50 2 is_stmt 1        # main.c:50:2
	i32.const	block
	call	step0
.Ltmp38:
	#DEBUG_VALUE: mine:i <- 1
	.loc	2 0 2 is_stmt 0         # main.c:0:2
	i32.const	1
.Ltmp39:
	.loc	2 53 3 is_stmt 1        # main.c:53:3
	call	step
.Ltmp40:
	#DEBUG_VALUE: mine:i <- 2
	.loc	2 0 3 is_stmt 0         # main.c:0:3
	i32.const	2
	.loc	2 53 3                  # main.c:53:3
	call	step
.Ltmp41:
	#DEBUG_VALUE: mine:i <- 3
	.loc	2 0 3                   # main.c:0:3
	i32.const	3
	.loc	2 53 3                  # main.c:53:3
	call	step
.Ltmp42:
	#DEBUG_VALUE: mine:i <- 4
	.loc	2 0 3                   # main.c:0:3
	i32.const	4
	.loc	2 53 3                  # main.c:53:3
	call	step
.Ltmp43:
	#DEBUG_VALUE: mine:i <- 5
	.loc	2 0 3                   # main.c:0:3
	i32.const	5
	.loc	2 53 3                  # main.c:53:3
	call	step
.Ltmp44:
	#DEBUG_VALUE: mine:i <- 6
	.loc	2 0 3                   # main.c:0:3
	i32.const	6
	.loc	2 53 3                  # main.c:53:3
	call	step
.Ltmp45:
	#DEBUG_VALUE: mine:i <- 7
	.loc	2 0 3                   # main.c:0:3
	i32.const	7
	.loc	2 53 3                  # main.c:53:3
	call	step
.Ltmp46:
	#DEBUG_VALUE: mine:i <- 8
	.loc	2 0 3                   # main.c:0:3
	i32.const	8
	.loc	2 53 3                  # main.c:53:3
	call	step
.Ltmp47:
	#DEBUG_VALUE: mine:i <- 9
	.loc	2 0 3                   # main.c:0:3
	i32.const	9
	.loc	2 53 3                  # main.c:53:3
	call	step
.Ltmp48:
	#DEBUG_VALUE: mine:i <- 10
	.loc	2 55 1 is_stmt 1        # main.c:55:1
                                        # fallthrough-return
	end_function
.Ltmp49:
.Lfunc_end0:
	.size	mine, .Lfunc_end0-mine
                                        # -- End function
	.section	.text.solution,"",@
	.hidden	solution                # -- Begin function solution
	.globl	solution
	.type	solution,@function
solution:                               # @solution
.Lfunc_begin1:
	.loc	2 75 0                  # main.c:75:0
	.functype	solution () -> (i32)
	.local  	i32, i32, i32, i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	2992
	i32.sub 
	local.tee	0
	global.set	__stack_pointer
.Ltmp50:
	.loc	2 62 2 prologue_end     # main.c:62:2
	i32.const	block
	i32.const	1487
	local.get	0
	i32.const	16
	i32.add 
	call	sha256
.Ltmp51:
	.loc	2 63 2                  # main.c:63:2
	local.get	0
	i32.const	16
	i32.add 
	i32.const	32
	local.get	0
	i32.const	16
	i32.add 
	call	sha256
.Ltmp52:
	.loc	2 0 2 is_stmt 0         # main.c:0:2
	i32.const	0
	local.set	1
.Ltmp53:
	#DEBUG_VALUE: above_target:i <- 0
.LBB1_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	.loc	2 66 7 is_stmt 1        # main.c:66:7
	block   	
	block   	
	loop    	                # label12:
.Ltmp54:
	#DEBUG_VALUE: above_target:i <- %113
	local.get	0
	i32.const	16
	i32.add 
	local.get	1
	i32.sub 
	i32.const	31
	i32.add 
	i32.load8_u	0
	local.tee	2
	.loc	2 66 33 is_stmt 0       # main.c:66:33
	local.get	1
	i32.const	target
	i32.add 
	i32.load8_u	0
	.loc	2 66 31                 # main.c:66:31
	local.tee	3
	i32.lt_u
.Ltmp55:
	.loc	2 66 7                  # main.c:66:7
	br_if   	1               # 1: down to label11
.Ltmp56:
# %bb.2:                                # %if.end.i
                                        #   in Loop: Header=BB1_1 Depth=1
	#DEBUG_VALUE: above_target:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] %113
	.loc	2 68 31 is_stmt 1       # main.c:68:31
	block   	
	local.get	2
	local.get	3
	i32.gt_u
.Ltmp57:
	.loc	2 68 7 is_stmt 0        # main.c:68:7
	br_if   	0               # 0: down to label13
.Ltmp58:
# %bb.3:                                # %for.cond.i
                                        #   in Loop: Header=BB1_1 Depth=1
	.loc	2 65 30 is_stmt 1       # main.c:65:30
	local.get	1
	i32.const	1
	i32.add 
.Ltmp59:
	#DEBUG_VALUE: above_target:i <- %143
	#DEBUG_VALUE: above_target:i <- %143
	.loc	2 0 30 is_stmt 0        # main.c:0:30
	local.tee	1
.Ltmp60:
	#DEBUG_VALUE: above_target:i <- %113
	#DEBUG_VALUE: above_target:i <- %113
	i32.const	32
	.loc	2 65 16                 # main.c:65:16
	i32.ne  
.Ltmp61:
	.loc	2 65 2                  # main.c:65:2
	br_if   	1               # 1: up to label12
.Ltmp62:
.LBB1_4:                                # %if.then
	.loc	2 0 2                   # main.c:0:2
	end_block                       # label13:
	.loc	2 65 2                  # main.c:65:2
	end_loop
	i32.const	0
	local.set	1
.Ltmp63:
	.loc	2 79 58 is_stmt 1       # main.c:79:58
	local.get	0
	i32.const	0
	i32.store8	15
	.loc	2 79 10 is_stmt 0       # main.c:79:10
	i32.const	.L.str.1
	local.get	0
	i32.const	15
	i32.add 
	i32.const	0
	call	emscripten_asm_const_int
.Ltmp64:
	drop
	br      	1               # 1: down to label10
.Ltmp65:
.LBB1_5:                                # %if.end
	.loc	2 0 10                  # main.c:0:10
	end_block                       # label11:
	i32.const	0
	local.set	1
.Ltmp66:
	#DEBUG_VALUE: to_hex:len <- 1487
	#DEBUG_VALUE: to_hex:i <- 0
	#DEBUG_VALUE: to_hex:hex <- [DW_OP_plus_uconst 16, DW_OP_stack_value] %137
	#DEBUG_VALUE: to_hex:bin <- undef
.LBB1_6:                                # %for.body.i4
                                        # =>This Inner Loop Header: Depth=1
	.loc	2 36 3 is_stmt 1        # main.c:36:3
	loop    	                # label14:
.Ltmp67:
	#DEBUG_VALUE: to_hex:i <- %113
	local.get	0
	i32.const	16
	i32.add 
	.loc	2 36 9 is_stmt 0        # main.c:36:9
	local.get	1
	i32.const	1
	i32.shl 
	.loc	2 36 3                  # main.c:36:3
	local.tee	2
	i32.add 
	.loc	2 36 26                 # main.c:36:26
	local.get	1
	i32.const	block
	i32.add 
	i32.load8_u	0
	local.tee	3
	i32.const	4
	.loc	2 36 33                 # main.c:36:33
	i32.shr_u
.Ltmp68:
	#DEBUG_VALUE: int2hex:i <- %162
	.loc	2 0 33                  # main.c:0:33
	i32.const	.L.str.6
.Ltmp69:
	.loc	2 19 30 is_stmt 1       # main.c:19:30
	i32.add 
	i32.load8_u	0
.Ltmp70:
	.loc	2 36 15                 # main.c:36:15
	i32.store8	0
	.loc	2 37 3                  # main.c:37:3
	local.get	0
	i32.const	16
	i32.add 
	.loc	2 37 13 is_stmt 0       # main.c:37:13
	local.get	2
	i32.const	1
	i32.or  
	.loc	2 37 3                  # main.c:37:3
	i32.add 
	.loc	2 37 36                 # main.c:37:36
	local.get	3
	i32.const	15
	i32.and 
.Ltmp71:
	#DEBUG_VALUE: int2hex:i <- %158
	.loc	2 0 36                  # main.c:0:36
	i32.const	.L.str.6
.Ltmp72:
	.loc	2 19 30 is_stmt 1       # main.c:19:30
	i32.add 
	i32.load8_u	0
.Ltmp73:
	.loc	2 37 18                 # main.c:37:18
	i32.store8	0
.Ltmp74:
	.loc	2 35 24                 # main.c:35:24
	local.get	1
	i32.const	1
	i32.add 
.Ltmp75:
	#DEBUG_VALUE: to_hex:i <- %155
	.loc	2 0 24 is_stmt 0        # main.c:0:24
	local.tee	1
.Ltmp76:
	#DEBUG_VALUE: to_hex:i <- %113
	i32.const	1487
	.loc	2 35 16                 # main.c:35:16
	i32.ne  
.Ltmp77:
	.loc	2 35 2                  # main.c:35:2
	br_if   	0               # 0: up to label14
.Ltmp78:
# %bb.7:                                # %to_hex.exit
	end_loop
.Ltmp79:
	#DEBUG_VALUE: to_hex:i <- 1487
	.loc	2 85 77 is_stmt 1       # main.c:85:77
	local.get	0
	i32.const	105
	i32.store16	13:p2align=0
.Ltmp80:
	.loc	2 39 13                 # main.c:39:13
	local.get	0
	i32.const	0
	i32.store8	2990
.Ltmp81:
	.loc	2 85 2                  # main.c:85:2
	local.get	0
	local.get	0
	i32.const	16
	i32.add 
	i32.store	0
	i32.const	.L.str.4
	local.get	0
	i32.const	13
	i32.add 
	local.get	0
	call	emscripten_asm_const_int
.Ltmp82:
	drop
	i32.const	1
	local.set	1
.Ltmp83:
.LBB1_8:                                # %cleanup
	.loc	2 0 2 is_stmt 0         # main.c:0:2
	end_block                       # label10:
	.loc	2 87 1 is_stmt 1        # main.c:87:1
	local.get	0
	i32.const	2992
	i32.add 
	global.set	__stack_pointer
	local.get	1
                                        # fallthrough-return
	end_function
.Ltmp84:
.Lfunc_end1:
	.size	solution, .Lfunc_end1-solution
	.file	4 "/Users/javierca/Documents/Develop/yazecminer/js-emscripten" "./sha256.h"
                                        # -- End function
	.type	block,@object           # @block
	.section	.bss.block,"",@
block:
	.skip	1487
	.size	block, 1487

	.type	target,@object          # @target
	.section	.bss.target,"",@
	.p2align	4
target:
	.skip	32
	.size	target, 32

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata..L.str.1,"",@
.L.str.1:
	.asciz	"above ();"
	.size	.L.str.1, 10

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata..L.str.4,"",@
.L.str.4:
	.asciz	"{ submit (Pointer_stringify ($0)); }"
	.size	.L.str.4, 37

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata..L.str.6,"",@
.L.str.6:
	.asciz	"0123456789abcdef"
	.size	.L.str.6, 17

	.no_dead_strip	mine
	.section	.debug_loc,"",@
.Ldebug_loc0:
	.int32	-1
	.int32	.Lfunc_begin0           #   base address
	.int32	.Ltmp0-.Lfunc_begin0
	.int32	.Ltmp1-.Lfunc_begin0
	.int16	4                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	140                     # 140
	.int8	1                       # 
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc1:
	.int32	-1
	.int32	.Lfunc_begin0           #   base address
	.int32	.Ltmp0-.Lfunc_begin0
	.int32	.Ltmp1-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	0                       # 0
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp14-.Lfunc_begin0
	.int32	.Ltmp18-.Lfunc_begin0
	.int16	4                       # Loc expr size
	.int8	237                     # DW_OP_WASM_location
	.int8	0                       # 0
	.int8	3                       # 3
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc2:
	.int32	-1
	.int32	.Lfunc_begin0           #   base address
	.int32	.Ltmp4-.Lfunc_begin0
	.int32	.Ltmp6-.Lfunc_begin0
	.int16	4                       # Loc expr size
	.int8	237                     # DW_OP_WASM_location
	.int8	0                       # 0
	.int8	4                       # 4
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc3:
	.int32	-1
	.int32	.Lfunc_begin0           #   base address
	.int32	.Ltmp9-.Lfunc_begin0
	.int32	.Ltmp11-.Lfunc_begin0
	.int16	4                       # Loc expr size
	.int8	237                     # DW_OP_WASM_location
	.int8	0                       # 0
	.int8	5                       # 5
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc4:
	.int32	-1
	.int32	.Lfunc_begin0           #   base address
	.int32	.Ltmp32-.Lfunc_begin0
	.int32	.Ltmp36-.Lfunc_begin0
	.int16	4                       # Loc expr size
	.int8	237                     # DW_OP_WASM_location
	.int8	0                       # 0
	.int8	3                       # 3
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc5:
	.int32	-1
	.int32	.Lfunc_begin0           #   base address
	.int32	.Ltmp22-.Lfunc_begin0
	.int32	.Ltmp24-.Lfunc_begin0
	.int16	4                       # Loc expr size
	.int8	237                     # DW_OP_WASM_location
	.int8	0                       # 0
	.int8	4                       # 4
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc6:
	.int32	-1
	.int32	.Lfunc_begin0           #   base address
	.int32	.Ltmp27-.Lfunc_begin0
	.int32	.Ltmp29-.Lfunc_begin0
	.int16	4                       # Loc expr size
	.int8	237                     # DW_OP_WASM_location
	.int8	0                       # 0
	.int8	5                       # 5
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc7:
	.int32	-1
	.int32	.Lfunc_begin0           #   base address
	.int32	.Ltmp38-.Lfunc_begin0
	.int32	.Ltmp40-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	1                       # 1
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp40-.Lfunc_begin0
	.int32	.Ltmp41-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	2                       # 2
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp41-.Lfunc_begin0
	.int32	.Ltmp42-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	3                       # 3
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp42-.Lfunc_begin0
	.int32	.Ltmp43-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	4                       # 4
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp43-.Lfunc_begin0
	.int32	.Ltmp44-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	5                       # 5
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp44-.Lfunc_begin0
	.int32	.Ltmp45-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	6                       # 6
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp45-.Lfunc_begin0
	.int32	.Ltmp46-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	7                       # 7
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp46-.Lfunc_begin0
	.int32	.Ltmp47-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	8                       # 8
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp47-.Lfunc_begin0
	.int32	.Ltmp48-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	9                       # 9
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp48-.Lfunc_begin0
	.int32	.Lfunc_end0-.Lfunc_begin0
	.int16	3                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	10                      # 10
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc8:
	.int32	-1
	.int32	.Lfunc_begin1           #   base address
	.int32	.Ltmp60-.Lfunc_begin1
	.int32	.Ltmp62-.Lfunc_begin1
	.int16	4                       # Loc expr size
	.int8	237                     # DW_OP_WASM_location
	.int8	0                       # 0
	.int8	1                       # 1
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
.Ldebug_loc9:
	.int32	-1
	.int32	.Lfunc_begin1           #   base address
	.int32	.Ltmp76-.Lfunc_begin1
	.int32	.Ltmp78-.Lfunc_begin1
	.int16	4                       # Loc expr size
	.int8	237                     # DW_OP_WASM_location
	.int8	0                       # 0
	.int8	1                       # 1
	.int8	159                     # DW_OP_stack_value
	.int32	.Ltmp79-.Lfunc_begin1
	.int32	.Ltmp83-.Lfunc_begin1
	.int16	4                       # Loc expr size
	.int8	17                      # DW_OP_consts
	.int8	207                     # 1487
	.int8	11                      # 
	.int8	159                     # DW_OP_stack_value
	.int32	0
	.int32	0
	.section	.debug_abbrev,"",@
	.int8	1                       # Abbreviation Code
	.int8	17                      # DW_TAG_compile_unit
	.int8	1                       # DW_CHILDREN_yes
	.int8	37                      # DW_AT_producer
	.int8	14                      # DW_FORM_strp
	.int8	19                      # DW_AT_language
	.int8	5                       # DW_FORM_data2
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	16                      # DW_AT_stmt_list
	.int8	23                      # DW_FORM_sec_offset
	.int8	27                      # DW_AT_comp_dir
	.int8	14                      # DW_FORM_strp
	.int8	17                      # DW_AT_low_pc
	.int8	1                       # DW_FORM_addr
	.int8	85                      # DW_AT_ranges
	.int8	23                      # DW_FORM_sec_offset
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	2                       # Abbreviation Code
	.int8	52                      # DW_TAG_variable
	.int8	0                       # DW_CHILDREN_no
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	2                       # DW_AT_location
	.int8	24                      # DW_FORM_exprloc
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	3                       # Abbreviation Code
	.int8	22                      # DW_TAG_typedef
	.int8	0                       # DW_CHILDREN_no
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	4                       # Abbreviation Code
	.int8	19                      # DW_TAG_structure_type
	.int8	1                       # DW_CHILDREN_yes
	.int8	11                      # DW_AT_byte_size
	.int8	5                       # DW_FORM_data2
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	5                       # Abbreviation Code
	.int8	13                      # DW_TAG_member
	.int8	0                       # DW_CHILDREN_no
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	56                      # DW_AT_data_member_location
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	6                       # Abbreviation Code
	.int8	1                       # DW_TAG_array_type
	.int8	1                       # DW_CHILDREN_yes
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	7                       # Abbreviation Code
	.int8	33                      # DW_TAG_subrange_type
	.int8	0                       # DW_CHILDREN_no
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	55                      # DW_AT_count
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	8                       # Abbreviation Code
	.int8	36                      # DW_TAG_base_type
	.int8	0                       # DW_CHILDREN_no
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	62                      # DW_AT_encoding
	.int8	11                      # DW_FORM_data1
	.int8	11                      # DW_AT_byte_size
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	9                       # Abbreviation Code
	.int8	36                      # DW_TAG_base_type
	.int8	0                       # DW_CHILDREN_no
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	11                      # DW_AT_byte_size
	.int8	11                      # DW_FORM_data1
	.int8	62                      # DW_AT_encoding
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	10                      # Abbreviation Code
	.int8	33                      # DW_TAG_subrange_type
	.int8	0                       # DW_CHILDREN_no
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	55                      # DW_AT_count
	.int8	5                       # DW_FORM_data2
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	11                      # Abbreviation Code
	.int8	15                      # DW_TAG_pointer_type
	.int8	0                       # DW_CHILDREN_no
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	12                      # Abbreviation Code
	.int8	15                      # DW_TAG_pointer_type
	.int8	0                       # DW_CHILDREN_no
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	13                      # Abbreviation Code
	.int8	46                      # DW_TAG_subprogram
	.int8	1                       # DW_CHILDREN_yes
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	39                      # DW_AT_prototyped
	.int8	25                      # DW_FORM_flag_present
	.int8	32                      # DW_AT_inline
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	14                      # Abbreviation Code
	.int8	5                       # DW_TAG_formal_parameter
	.int8	0                       # DW_CHILDREN_no
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	15                      # Abbreviation Code
	.int8	52                      # DW_TAG_variable
	.int8	0                       # DW_CHILDREN_no
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	16                      # Abbreviation Code
	.int8	46                      # DW_TAG_subprogram
	.int8	1                       # DW_CHILDREN_yes
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	39                      # DW_AT_prototyped
	.int8	25                      # DW_FORM_flag_present
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	32                      # DW_AT_inline
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	17                      # Abbreviation Code
	.int8	46                      # DW_TAG_subprogram
	.int8	1                       # DW_CHILDREN_yes
	.int8	17                      # DW_AT_low_pc
	.int8	1                       # DW_FORM_addr
	.int8	18                      # DW_AT_high_pc
	.int8	6                       # DW_FORM_data4
	.int8	64                      # DW_AT_frame_base
	.int8	24                      # DW_FORM_exprloc
	.ascii	"\227B"                 # DW_AT_GNU_all_call_sites
	.int8	25                      # DW_FORM_flag_present
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	39                      # DW_AT_prototyped
	.int8	25                      # DW_FORM_flag_present
	.int8	63                      # DW_AT_external
	.int8	25                      # DW_FORM_flag_present
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	18                      # Abbreviation Code
	.int8	52                      # DW_TAG_variable
	.int8	0                       # DW_CHILDREN_no
	.int8	2                       # DW_AT_location
	.int8	23                      # DW_FORM_sec_offset
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	19                      # Abbreviation Code
	.int8	29                      # DW_TAG_inlined_subroutine
	.int8	1                       # DW_CHILDREN_yes
	.int8	49                      # DW_AT_abstract_origin
	.int8	19                      # DW_FORM_ref4
	.int8	17                      # DW_AT_low_pc
	.int8	1                       # DW_FORM_addr
	.int8	18                      # DW_AT_high_pc
	.int8	6                       # DW_FORM_data4
	.int8	88                      # DW_AT_call_file
	.int8	11                      # DW_FORM_data1
	.int8	89                      # DW_AT_call_line
	.int8	11                      # DW_FORM_data1
	.int8	87                      # DW_AT_call_column
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	20                      # Abbreviation Code
	.int8	5                       # DW_TAG_formal_parameter
	.int8	0                       # DW_CHILDREN_no
	.int8	49                      # DW_AT_abstract_origin
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	21                      # Abbreviation Code
	.int8	5                       # DW_TAG_formal_parameter
	.int8	0                       # DW_CHILDREN_no
	.int8	2                       # DW_AT_location
	.int8	23                      # DW_FORM_sec_offset
	.int8	49                      # DW_AT_abstract_origin
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	22                      # Abbreviation Code
	.int8	52                      # DW_TAG_variable
	.int8	0                       # DW_CHILDREN_no
	.int8	2                       # DW_AT_location
	.int8	23                      # DW_FORM_sec_offset
	.int8	49                      # DW_AT_abstract_origin
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	23                      # Abbreviation Code
	.ascii	"\211\202\001"          # DW_TAG_GNU_call_site
	.int8	0                       # DW_CHILDREN_no
	.int8	49                      # DW_AT_abstract_origin
	.int8	19                      # DW_FORM_ref4
	.int8	17                      # DW_AT_low_pc
	.int8	1                       # DW_FORM_addr
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	24                      # Abbreviation Code
	.int8	46                      # DW_TAG_subprogram
	.int8	1                       # DW_CHILDREN_yes
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	39                      # DW_AT_prototyped
	.int8	25                      # DW_FORM_flag_present
	.int8	60                      # DW_AT_declaration
	.int8	25                      # DW_FORM_flag_present
	.int8	63                      # DW_AT_external
	.int8	25                      # DW_FORM_flag_present
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	25                      # Abbreviation Code
	.int8	5                       # DW_TAG_formal_parameter
	.int8	0                       # DW_CHILDREN_no
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	26                      # Abbreviation Code
	.int8	46                      # DW_TAG_subprogram
	.int8	1                       # DW_CHILDREN_yes
	.int8	17                      # DW_AT_low_pc
	.int8	1                       # DW_FORM_addr
	.int8	18                      # DW_AT_high_pc
	.int8	6                       # DW_FORM_data4
	.int8	64                      # DW_AT_frame_base
	.int8	24                      # DW_FORM_exprloc
	.ascii	"\227B"                 # DW_AT_GNU_all_call_sites
	.int8	25                      # DW_FORM_flag_present
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	39                      # DW_AT_prototyped
	.int8	25                      # DW_FORM_flag_present
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	63                      # DW_AT_external
	.int8	25                      # DW_FORM_flag_present
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	27                      # Abbreviation Code
	.int8	52                      # DW_TAG_variable
	.int8	0                       # DW_CHILDREN_no
	.int8	2                       # DW_AT_location
	.int8	24                      # DW_FORM_exprloc
	.int8	3                       # DW_AT_name
	.int8	14                      # DW_FORM_strp
	.int8	58                      # DW_AT_decl_file
	.int8	11                      # DW_FORM_data1
	.int8	59                      # DW_AT_decl_line
	.int8	11                      # DW_FORM_data1
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	28                      # Abbreviation Code
	.int8	52                      # DW_TAG_variable
	.int8	0                       # DW_CHILDREN_no
	.int8	2                       # DW_AT_location
	.int8	24                      # DW_FORM_exprloc
	.int8	49                      # DW_AT_abstract_origin
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	29                      # Abbreviation Code
	.int8	29                      # DW_TAG_inlined_subroutine
	.int8	1                       # DW_CHILDREN_yes
	.int8	49                      # DW_AT_abstract_origin
	.int8	19                      # DW_FORM_ref4
	.int8	85                      # DW_AT_ranges
	.int8	23                      # DW_FORM_sec_offset
	.int8	88                      # DW_AT_call_file
	.int8	11                      # DW_FORM_data1
	.int8	89                      # DW_AT_call_line
	.int8	11                      # DW_FORM_data1
	.int8	87                      # DW_AT_call_column
	.int8	11                      # DW_FORM_data1
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	30                      # Abbreviation Code
	.ascii	"\211\202\001"          # DW_TAG_GNU_call_site
	.int8	0                       # DW_CHILDREN_no
	.int8	17                      # DW_AT_low_pc
	.int8	1                       # DW_FORM_addr
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	31                      # Abbreviation Code
	.int8	38                      # DW_TAG_const_type
	.int8	0                       # DW_CHILDREN_no
	.int8	73                      # DW_AT_type
	.int8	19                      # DW_FORM_ref4
	.int8	0                       # EOM(1)
	.int8	0                       # EOM(2)
	.int8	0                       # EOM(3)
	.section	.debug_info,"",@
.Lcu_begin0:
	.int32	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.int16	4                       # DWARF version number
	.int32	.debug_abbrev           # Offset Into Abbrev. Section
	.int8	4                       # Address Size (in bytes)
	.int8	1                       # Abbrev [1] 0xb:0x43c DW_TAG_compile_unit
	.int32	.Linfo_string0          # DW_AT_producer
	.int16	12                      # DW_AT_language
	.int32	.Linfo_string1          # DW_AT_name
	.int32	.Lline_table_start0     # DW_AT_stmt_list
	.int32	.Linfo_string2          # DW_AT_comp_dir
	.int32	0                       # DW_AT_low_pc
	.int32	.Ldebug_ranges1         # DW_AT_ranges
	.int8	2                       # Abbrev [2] 0x26:0x11 DW_TAG_variable
	.int32	.Linfo_string3          # DW_AT_name
	.int32	55                      # DW_AT_type
	.int8	2                       # DW_AT_decl_file
	.int8	8                       # DW_AT_decl_line
	.int8	5                       # DW_AT_location
	.int8	3
	.int32	block
	.int8	3                       # Abbrev [3] 0x37:0xb DW_TAG_typedef
	.int32	66                      # DW_AT_type
	.int32	.Linfo_string15         # DW_AT_name
	.int8	1                       # DW_AT_decl_file
	.int8	17                      # DW_AT_decl_line
	.int8	4                       # Abbrev [4] 0x42:0x72 DW_TAG_structure_type
	.int16	1487                    # DW_AT_byte_size
	.int8	1                       # DW_AT_decl_file
	.int8	7                       # DW_AT_decl_line
	.int8	5                       # Abbrev [5] 0x47:0xc DW_TAG_member
	.int32	.Linfo_string4          # DW_AT_name
	.int32	180                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	8                       # DW_AT_decl_line
	.int8	0                       # DW_AT_data_member_location
	.int8	5                       # Abbrev [5] 0x53:0xc DW_TAG_member
	.int32	.Linfo_string7          # DW_AT_name
	.int32	206                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	9                       # DW_AT_decl_line
	.int8	4                       # DW_AT_data_member_location
	.int8	5                       # Abbrev [5] 0x5f:0xc DW_TAG_member
	.int32	.Linfo_string8          # DW_AT_name
	.int32	206                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	10                      # DW_AT_decl_line
	.int8	36                      # DW_AT_data_member_location
	.int8	5                       # Abbrev [5] 0x6b:0xc DW_TAG_member
	.int32	.Linfo_string9          # DW_AT_name
	.int32	206                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	11                      # DW_AT_decl_line
	.int8	68                      # DW_AT_data_member_location
	.int8	5                       # Abbrev [5] 0x77:0xc DW_TAG_member
	.int32	.Linfo_string10         # DW_AT_name
	.int32	180                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	12                      # DW_AT_decl_line
	.int8	100                     # DW_AT_data_member_location
	.int8	5                       # Abbrev [5] 0x83:0xc DW_TAG_member
	.int32	.Linfo_string11         # DW_AT_name
	.int32	180                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	13                      # DW_AT_decl_line
	.int8	104                     # DW_AT_data_member_location
	.int8	5                       # Abbrev [5] 0x8f:0xc DW_TAG_member
	.int32	.Linfo_string12         # DW_AT_name
	.int32	206                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	14                      # DW_AT_decl_line
	.int8	108                     # DW_AT_data_member_location
	.int8	5                       # Abbrev [5] 0x9b:0xc DW_TAG_member
	.int32	.Linfo_string13         # DW_AT_name
	.int32	218                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	15                      # DW_AT_decl_line
	.int8	140                     # DW_AT_data_member_location
	.int8	5                       # Abbrev [5] 0xa7:0xc DW_TAG_member
	.int32	.Linfo_string14         # DW_AT_name
	.int32	230                     # DW_AT_type
	.int8	1                       # DW_AT_decl_file
	.int8	16                      # DW_AT_decl_line
	.int8	143                     # DW_AT_data_member_location
	.int8	0                       # End Of Children Mark
	.int8	6                       # Abbrev [6] 0xb4:0xc DW_TAG_array_type
	.int32	192                     # DW_AT_type
	.int8	7                       # Abbrev [7] 0xb9:0x6 DW_TAG_subrange_type
	.int32	199                     # DW_AT_type
	.int8	4                       # DW_AT_count
	.int8	0                       # End Of Children Mark
	.int8	8                       # Abbrev [8] 0xc0:0x7 DW_TAG_base_type
	.int32	.Linfo_string5          # DW_AT_name
	.int8	8                       # DW_AT_encoding
	.int8	1                       # DW_AT_byte_size
	.int8	9                       # Abbrev [9] 0xc7:0x7 DW_TAG_base_type
	.int32	.Linfo_string6          # DW_AT_name
	.int8	8                       # DW_AT_byte_size
	.int8	7                       # DW_AT_encoding
	.int8	6                       # Abbrev [6] 0xce:0xc DW_TAG_array_type
	.int32	192                     # DW_AT_type
	.int8	7                       # Abbrev [7] 0xd3:0x6 DW_TAG_subrange_type
	.int32	199                     # DW_AT_type
	.int8	32                      # DW_AT_count
	.int8	0                       # End Of Children Mark
	.int8	6                       # Abbrev [6] 0xda:0xc DW_TAG_array_type
	.int32	192                     # DW_AT_type
	.int8	7                       # Abbrev [7] 0xdf:0x6 DW_TAG_subrange_type
	.int32	199                     # DW_AT_type
	.int8	3                       # DW_AT_count
	.int8	0                       # End Of Children Mark
	.int8	6                       # Abbrev [6] 0xe6:0xd DW_TAG_array_type
	.int32	192                     # DW_AT_type
	.int8	10                      # Abbrev [10] 0xeb:0x7 DW_TAG_subrange_type
	.int32	199                     # DW_AT_type
	.int16	1344                    # DW_AT_count
	.int8	0                       # End Of Children Mark
	.int8	2                       # Abbrev [2] 0xf3:0x11 DW_TAG_variable
	.int32	.Linfo_string16         # DW_AT_name
	.int32	260                     # DW_AT_type
	.int8	2                       # DW_AT_decl_file
	.int8	9                       # DW_AT_decl_line
	.int8	5                       # DW_AT_location
	.int8	3
	.int32	target
	.int8	6                       # Abbrev [6] 0x104:0xc DW_TAG_array_type
	.int32	272                     # DW_AT_type
	.int8	7                       # Abbrev [7] 0x109:0x6 DW_TAG_subrange_type
	.int32	199                     # DW_AT_type
	.int8	32                      # DW_AT_count
	.int8	0                       # End Of Children Mark
	.int8	3                       # Abbrev [3] 0x110:0xb DW_TAG_typedef
	.int32	192                     # DW_AT_type
	.int32	.Linfo_string17         # DW_AT_name
	.int8	3                       # DW_AT_decl_file
	.int8	4                       # DW_AT_decl_line
	.int8	11                      # Abbrev [11] 0x11b:0x1 DW_TAG_pointer_type
	.int8	12                      # Abbrev [12] 0x11c:0x5 DW_TAG_pointer_type
	.int32	272                     # DW_AT_type
	.int8	13                      # Abbrev [13] 0x121:0x35 DW_TAG_subprogram
	.int32	.Linfo_string18         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	22                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.int8	1                       # DW_AT_inline
	.int8	14                      # Abbrev [14] 0x129:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string19         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	22                      # DW_AT_decl_line
	.int32	284                     # DW_AT_type
	.int8	14                      # Abbrev [14] 0x134:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string20         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	22                      # DW_AT_decl_line
	.int32	342                     # DW_AT_type
	.int8	14                      # Abbrev [14] 0x13f:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string22         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	22                      # DW_AT_decl_line
	.int32	354                     # DW_AT_type
	.int8	15                      # Abbrev [15] 0x14a:0xb DW_TAG_variable
	.int32	.Linfo_string24         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	23                      # DW_AT_decl_line
	.int32	354                     # DW_AT_type
	.int8	0                       # End Of Children Mark
	.int8	12                      # Abbrev [12] 0x156:0x5 DW_TAG_pointer_type
	.int32	347                     # DW_AT_type
	.int8	8                       # Abbrev [8] 0x15b:0x7 DW_TAG_base_type
	.int32	.Linfo_string21         # DW_AT_name
	.int8	6                       # DW_AT_encoding
	.int8	1                       # DW_AT_byte_size
	.int8	8                       # Abbrev [8] 0x162:0x7 DW_TAG_base_type
	.int32	.Linfo_string23         # DW_AT_name
	.int8	5                       # DW_AT_encoding
	.int8	4                       # DW_AT_byte_size
	.int8	16                      # Abbrev [16] 0x169:0x18 DW_TAG_subprogram
	.int32	.Linfo_string25         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	12                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.int32	354                     # DW_AT_type
	.int8	1                       # DW_AT_inline
	.int8	14                      # Abbrev [14] 0x175:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string26         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	12                      # DW_AT_decl_line
	.int32	347                     # DW_AT_type
	.int8	0                       # End Of Children Mark
	.int8	17                      # Abbrev [17] 0x181:0x146 DW_TAG_subprogram
	.int32	.Lfunc_begin0           # DW_AT_low_pc
	.int32	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.int8	7                       # DW_AT_frame_base
	.int8	237
	.int8	3
	.int32	__stack_pointer
	.int8	159
                                        # DW_AT_GNU_all_call_sites
	.int32	.Linfo_string35         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	44                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.int8	14                      # Abbrev [14] 0x198:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string37         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	44                      # DW_AT_decl_line
	.int32	342                     # DW_AT_type
	.int8	14                      # Abbrev [14] 0x1a3:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string36         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	44                      # DW_AT_decl_line
	.int32	342                     # DW_AT_type
	.int8	18                      # Abbrev [18] 0x1ae:0xf DW_TAG_variable
	.int32	.Ldebug_loc7            # DW_AT_location
	.int32	.Linfo_string24         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	45                      # DW_AT_decl_line
	.int32	354                     # DW_AT_type
	.int8	19                      # Abbrev [19] 0x1bd:0x61 DW_TAG_inlined_subroutine
	.int32	289                     # DW_AT_abstract_origin
	.int32	.Ltmp1                  # DW_AT_low_pc
	.int32	.Ltmp19-.Ltmp1          # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	47                      # DW_AT_call_line
	.int8	2                       # DW_AT_call_column
	.int8	20                      # Abbrev [20] 0x1cd:0x5 DW_TAG_formal_parameter
	.int32	297                     # DW_AT_abstract_origin
	.int8	20                      # Abbrev [20] 0x1d2:0x5 DW_TAG_formal_parameter
	.int32	308                     # DW_AT_abstract_origin
	.int8	21                      # Abbrev [21] 0x1d7:0x9 DW_TAG_formal_parameter
	.int32	.Ldebug_loc0            # DW_AT_location
	.int32	319                     # DW_AT_abstract_origin
	.int8	22                      # Abbrev [22] 0x1e0:0x9 DW_TAG_variable
	.int32	.Ldebug_loc1            # DW_AT_location
	.int32	330                     # DW_AT_abstract_origin
	.int8	19                      # Abbrev [19] 0x1e9:0x1a DW_TAG_inlined_subroutine
	.int32	361                     # DW_AT_abstract_origin
	.int32	.Ltmp5                  # DW_AT_low_pc
	.int32	.Ltmp7-.Ltmp5           # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	26                      # DW_AT_call_line
	.int8	12                      # DW_AT_call_column
	.int8	21                      # Abbrev [21] 0x1f9:0x9 DW_TAG_formal_parameter
	.int32	.Ldebug_loc2            # DW_AT_location
	.int32	373                     # DW_AT_abstract_origin
	.int8	0                       # End Of Children Mark
	.int8	19                      # Abbrev [19] 0x203:0x1a DW_TAG_inlined_subroutine
	.int32	361                     # DW_AT_abstract_origin
	.int32	.Ltmp10                 # DW_AT_low_pc
	.int32	.Ltmp12-.Ltmp10         # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	26                      # DW_AT_call_line
	.int8	40                      # DW_AT_call_column
	.int8	21                      # Abbrev [21] 0x213:0x9 DW_TAG_formal_parameter
	.int32	.Ldebug_loc3            # DW_AT_location
	.int32	373                     # DW_AT_abstract_origin
	.int8	0                       # End Of Children Mark
	.int8	0                       # End Of Children Mark
	.int8	19                      # Abbrev [19] 0x21e:0x4e DW_TAG_inlined_subroutine
	.int32	289                     # DW_AT_abstract_origin
	.int32	.Ltmp19                 # DW_AT_low_pc
	.int32	.Ltmp37-.Ltmp19         # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	48                      # DW_AT_call_line
	.int8	2                       # DW_AT_call_column
	.int8	22                      # Abbrev [22] 0x22e:0x9 DW_TAG_variable
	.int32	.Ldebug_loc4            # DW_AT_location
	.int32	330                     # DW_AT_abstract_origin
	.int8	19                      # Abbrev [19] 0x237:0x1a DW_TAG_inlined_subroutine
	.int32	361                     # DW_AT_abstract_origin
	.int32	.Ltmp23                 # DW_AT_low_pc
	.int32	.Ltmp25-.Ltmp23         # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	26                      # DW_AT_call_line
	.int8	12                      # DW_AT_call_column
	.int8	21                      # Abbrev [21] 0x247:0x9 DW_TAG_formal_parameter
	.int32	.Ldebug_loc5            # DW_AT_location
	.int32	373                     # DW_AT_abstract_origin
	.int8	0                       # End Of Children Mark
	.int8	19                      # Abbrev [19] 0x251:0x1a DW_TAG_inlined_subroutine
	.int32	361                     # DW_AT_abstract_origin
	.int32	.Ltmp28                 # DW_AT_low_pc
	.int32	.Ltmp30-.Ltmp28         # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	26                      # DW_AT_call_line
	.int8	40                      # DW_AT_call_column
	.int8	21                      # Abbrev [21] 0x261:0x9 DW_TAG_formal_parameter
	.int32	.Ldebug_loc6            # DW_AT_location
	.int32	373                     # DW_AT_abstract_origin
	.int8	0                       # End Of Children Mark
	.int8	0                       # End Of Children Mark
	.int8	23                      # Abbrev [23] 0x26c:0x9 DW_TAG_GNU_call_site
	.int32	711                     # DW_AT_abstract_origin
	.int32	.Ltmp38                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x275:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp40                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x27e:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp41                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x287:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp42                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x290:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp43                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x299:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp44                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x2a2:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp45                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x2ab:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp46                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x2b4:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp47                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x2bd:0x9 DW_TAG_GNU_call_site
	.int32	729                     # DW_AT_abstract_origin
	.int32	.Ltmp48                 # DW_AT_low_pc
	.int8	0                       # End Of Children Mark
	.int8	24                      # Abbrev [24] 0x2c7:0xd DW_TAG_subprogram
	.int32	.Linfo_string27         # DW_AT_name
	.int8	1                       # DW_AT_decl_file
	.int8	21                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.int8	25                      # Abbrev [25] 0x2ce:0x5 DW_TAG_formal_parameter
	.int32	724                     # DW_AT_type
	.int8	0                       # End Of Children Mark
	.int8	12                      # Abbrev [12] 0x2d4:0x5 DW_TAG_pointer_type
	.int32	66                      # DW_AT_type
	.int8	24                      # Abbrev [24] 0x2d9:0xd DW_TAG_subprogram
	.int32	.Linfo_string28         # DW_AT_name
	.int8	1                       # DW_AT_decl_file
	.int8	22                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.int8	25                      # Abbrev [25] 0x2e0:0x5 DW_TAG_formal_parameter
	.int32	354                     # DW_AT_type
	.int8	0                       # End Of Children Mark
	.int8	16                      # Abbrev [16] 0x2e6:0x23 DW_TAG_subprogram
	.int32	.Linfo_string29         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	58                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.int32	354                     # DW_AT_type
	.int8	1                       # DW_AT_inline
	.int8	15                      # Abbrev [15] 0x2f2:0xb DW_TAG_variable
	.int32	.Linfo_string30         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	60                      # DW_AT_decl_line
	.int32	260                     # DW_AT_type
	.int8	15                      # Abbrev [15] 0x2fd:0xb DW_TAG_variable
	.int32	.Linfo_string24         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	59                      # DW_AT_decl_line
	.int32	354                     # DW_AT_type
	.int8	0                       # End Of Children Mark
	.int8	13                      # Abbrev [13] 0x309:0x35 DW_TAG_subprogram
	.int32	.Linfo_string31         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	32                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.int8	1                       # DW_AT_inline
	.int8	14                      # Abbrev [14] 0x311:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string20         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	32                      # DW_AT_decl_line
	.int32	342                     # DW_AT_type
	.int8	14                      # Abbrev [14] 0x31c:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string19         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	32                      # DW_AT_decl_line
	.int32	284                     # DW_AT_type
	.int8	14                      # Abbrev [14] 0x327:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string22         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	32                      # DW_AT_decl_line
	.int32	354                     # DW_AT_type
	.int8	15                      # Abbrev [15] 0x332:0xb DW_TAG_variable
	.int32	.Linfo_string24         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	33                      # DW_AT_decl_line
	.int32	354                     # DW_AT_type
	.int8	0                       # End Of Children Mark
	.int8	16                      # Abbrev [16] 0x33e:0x18 DW_TAG_subprogram
	.int32	.Linfo_string32         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	19                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.int32	347                     # DW_AT_type
	.int8	1                       # DW_AT_inline
	.int8	14                      # Abbrev [14] 0x34a:0xb DW_TAG_formal_parameter
	.int32	.Linfo_string24         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	19                      # DW_AT_decl_line
	.int32	272                     # DW_AT_type
	.int8	0                       # End Of Children Mark
	.int8	26                      # Abbrev [26] 0x356:0xb6 DW_TAG_subprogram
	.int32	.Lfunc_begin1           # DW_AT_low_pc
	.int32	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.int8	4                       # DW_AT_frame_base
	.int8	237
	.int8	0
	.int8	0
	.int8	159
                                        # DW_AT_GNU_all_call_sites
	.int32	.Linfo_string14         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	75                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.int32	354                     # DW_AT_type
                                        # DW_AT_external
	.int8	27                      # Abbrev [27] 0x36e:0xe DW_TAG_variable
	.int8	2                       # DW_AT_location
	.int8	145
	.int8	16
	.int32	.Linfo_string38         # DW_AT_name
	.int8	2                       # DW_AT_decl_file
	.int8	76                      # DW_AT_decl_line
	.int32	1081                    # DW_AT_type
	.int8	19                      # Abbrev [19] 0x37c:0x22 DW_TAG_inlined_subroutine
	.int32	742                     # DW_AT_abstract_origin
	.int32	.Ltmp50                 # DW_AT_low_pc
	.int32	.Ltmp63-.Ltmp50         # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	78                      # DW_AT_call_line
	.int8	6                       # DW_AT_call_column
	.int8	28                      # Abbrev [28] 0x38c:0x8 DW_TAG_variable
	.int8	2                       # DW_AT_location
	.int8	145
	.int8	16
	.int32	754                     # DW_AT_abstract_origin
	.int8	22                      # Abbrev [22] 0x394:0x9 DW_TAG_variable
	.int32	.Ldebug_loc8            # DW_AT_location
	.int32	765                     # DW_AT_abstract_origin
	.int8	0                       # End Of Children Mark
	.int8	29                      # Abbrev [29] 0x39e:0x51 DW_TAG_inlined_subroutine
	.int32	777                     # DW_AT_abstract_origin
	.int32	.Ldebug_ranges0         # DW_AT_ranges
	.int8	2                       # DW_AT_call_file
	.int8	84                      # DW_AT_call_line
	.int8	2                       # DW_AT_call_column
	.int8	20                      # Abbrev [20] 0x3aa:0x5 DW_TAG_formal_parameter
	.int32	785                     # DW_AT_abstract_origin
	.int8	20                      # Abbrev [20] 0x3af:0x5 DW_TAG_formal_parameter
	.int32	796                     # DW_AT_abstract_origin
	.int8	20                      # Abbrev [20] 0x3b4:0x5 DW_TAG_formal_parameter
	.int32	807                     # DW_AT_abstract_origin
	.int8	22                      # Abbrev [22] 0x3b9:0x9 DW_TAG_variable
	.int32	.Ldebug_loc9            # DW_AT_location
	.int32	818                     # DW_AT_abstract_origin
	.int8	19                      # Abbrev [19] 0x3c2:0x16 DW_TAG_inlined_subroutine
	.int32	830                     # DW_AT_abstract_origin
	.int32	.Ltmp69                 # DW_AT_low_pc
	.int32	.Ltmp70-.Ltmp69         # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	36                      # DW_AT_call_line
	.int8	17                      # DW_AT_call_column
	.int8	20                      # Abbrev [20] 0x3d2:0x5 DW_TAG_formal_parameter
	.int32	842                     # DW_AT_abstract_origin
	.int8	0                       # End Of Children Mark
	.int8	19                      # Abbrev [19] 0x3d8:0x16 DW_TAG_inlined_subroutine
	.int32	830                     # DW_AT_abstract_origin
	.int32	.Ltmp72                 # DW_AT_low_pc
	.int32	.Ltmp73-.Ltmp72         # DW_AT_high_pc
	.int8	2                       # DW_AT_call_file
	.int8	37                      # DW_AT_call_line
	.int8	20                      # DW_AT_call_column
	.int8	20                      # Abbrev [20] 0x3e8:0x5 DW_TAG_formal_parameter
	.int32	842                     # DW_AT_abstract_origin
	.int8	0                       # End Of Children Mark
	.int8	0                       # End Of Children Mark
	.int8	23                      # Abbrev [23] 0x3ef:0x9 DW_TAG_GNU_call_site
	.int32	1036                    # DW_AT_abstract_origin
	.int32	.Ltmp51                 # DW_AT_low_pc
	.int8	23                      # Abbrev [23] 0x3f8:0x9 DW_TAG_GNU_call_site
	.int32	1036                    # DW_AT_abstract_origin
	.int32	.Ltmp52                 # DW_AT_low_pc
	.int8	30                      # Abbrev [30] 0x401:0x5 DW_TAG_GNU_call_site
	.int32	.Ltmp64                 # DW_AT_low_pc
	.int8	30                      # Abbrev [30] 0x406:0x5 DW_TAG_GNU_call_site
	.int32	.Ltmp82                 # DW_AT_low_pc
	.int8	0                       # End Of Children Mark
	.int8	24                      # Abbrev [24] 0x40c:0x17 DW_TAG_subprogram
	.int32	.Linfo_string33         # DW_AT_name
	.int8	4                       # DW_AT_decl_file
	.int8	26                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_declaration
                                        # DW_AT_external
	.int8	25                      # Abbrev [25] 0x413:0x5 DW_TAG_formal_parameter
	.int32	1059                    # DW_AT_type
	.int8	25                      # Abbrev [25] 0x418:0x5 DW_TAG_formal_parameter
	.int32	1069                    # DW_AT_type
	.int8	25                      # Abbrev [25] 0x41d:0x5 DW_TAG_formal_parameter
	.int32	1076                    # DW_AT_type
	.int8	0                       # End Of Children Mark
	.int8	12                      # Abbrev [12] 0x423:0x5 DW_TAG_pointer_type
	.int32	1064                    # DW_AT_type
	.int8	31                      # Abbrev [31] 0x428:0x5 DW_TAG_const_type
	.int32	192                     # DW_AT_type
	.int8	8                       # Abbrev [8] 0x42d:0x7 DW_TAG_base_type
	.int32	.Linfo_string34         # DW_AT_name
	.int8	7                       # DW_AT_encoding
	.int8	4                       # DW_AT_byte_size
	.int8	12                      # Abbrev [12] 0x434:0x5 DW_TAG_pointer_type
	.int32	192                     # DW_AT_type
	.int8	6                       # Abbrev [6] 0x439:0xd DW_TAG_array_type
	.int32	347                     # DW_AT_type
	.int8	10                      # Abbrev [10] 0x43e:0x7 DW_TAG_subrange_type
	.int32	199                     # DW_AT_type
	.int16	2976                    # DW_AT_count
	.int8	0                       # End Of Children Mark
	.int8	0                       # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@
.Ldebug_ranges0:
	.int32	.Ltmp66
	.int32	.Ltmp79
	.int32	.Ltmp80
	.int32	.Ltmp81
	.int32	0
	.int32	0
.Ldebug_ranges1:
	.int32	.Lfunc_begin0
	.int32	.Lfunc_end0
	.int32	.Lfunc_begin1
	.int32	.Lfunc_end1
	.int32	0
	.int32	0
	.section	.debug_str,"",@
.Linfo_string0:
	.asciz	"clang version 11.0.0 (/b/s/w/ir/cache/git/chromium.googlesource.com-external-github.com-llvm-llvm--project 3774bcf9f84520a8c35bf765d9a528040d68a14b)" # string offset=0
.Linfo_string1:
	.asciz	"main.c"                # string offset=149
.Linfo_string2:
	.asciz	"/Users/javierca/Documents/Develop/yazecminer/js-emscripten" # string offset=156
.Linfo_string3:
	.asciz	"block"                 # string offset=215
.Linfo_string4:
	.asciz	"version"               # string offset=221
.Linfo_string5:
	.asciz	"unsigned char"         # string offset=229
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"   # string offset=243
.Linfo_string7:
	.asciz	"prevhash"              # string offset=263
.Linfo_string8:
	.asciz	"merkleroot"            # string offset=272
.Linfo_string9:
	.asciz	"reserved"              # string offset=283
.Linfo_string10:
	.asciz	"time"                  # string offset=292
.Linfo_string11:
	.asciz	"bits"                  # string offset=297
.Linfo_string12:
	.asciz	"nonce"                 # string offset=302
.Linfo_string13:
	.asciz	"solsize"               # string offset=308
.Linfo_string14:
	.asciz	"solution"              # string offset=316
.Linfo_string15:
	.asciz	"block_t"               # string offset=325
.Linfo_string16:
	.asciz	"target"                # string offset=333
.Linfo_string17:
	.asciz	"uint8_t"               # string offset=340
.Linfo_string18:
	.asciz	"from_hex"              # string offset=348
.Linfo_string19:
	.asciz	"bin"                   # string offset=357
.Linfo_string20:
	.asciz	"hex"                   # string offset=361
.Linfo_string21:
	.asciz	"char"                  # string offset=365
.Linfo_string22:
	.asciz	"len"                   # string offset=370
.Linfo_string23:
	.asciz	"int"                   # string offset=374
.Linfo_string24:
	.asciz	"i"                     # string offset=378
.Linfo_string25:
	.asciz	"hex2int"               # string offset=380
.Linfo_string26:
	.asciz	"ch"                    # string offset=388
.Linfo_string27:
	.asciz	"step0"                 # string offset=391
.Linfo_string28:
	.asciz	"step"                  # string offset=397
.Linfo_string29:
	.asciz	"above_target"          # string offset=402
.Linfo_string30:
	.asciz	"diff"                  # string offset=415
.Linfo_string31:
	.asciz	"to_hex"                # string offset=420
.Linfo_string32:
	.asciz	"int2hex"               # string offset=427
.Linfo_string33:
	.asciz	"sha256"                # string offset=435
.Linfo_string34:
	.asciz	"unsigned int"          # string offset=442
.Linfo_string35:
	.asciz	"mine"                  # string offset=455
.Linfo_string36:
	.asciz	"target_hex"            # string offset=460
.Linfo_string37:
	.asciz	"block_hex"             # string offset=471
.Linfo_string38:
	.asciz	"buf"                   # string offset=481
	.ident	"clang version 11.0.0 (/b/s/w/ir/cache/git/chromium.googlesource.com-external-github.com-llvm-llvm--project 3774bcf9f84520a8c35bf765d9a528040d68a14b)"
	.globaltype	__stack_pointer, i32
	.functype	step0 (i32) -> ()
	.functype	step (i32) -> ()
	.functype	emscripten_asm_const_int (i32, i32, i32) -> (i32)
	.functype	sha256 (i32, i32, i32) -> ()
	.functype	getTempRet0 () -> (i32)
	.import_module	getTempRet0, env
	.import_name	getTempRet0, getTempRet0
	.functype	setTempRet0 (i32) -> ()
	.import_module	setTempRet0, env
	.import_name	setTempRet0, setTempRet0
	.size	__THREW__, 4
	.size	__threwValue, 4
	.section	.custom_section.producers,"",@
	.int8	2
	.int8	8
	.ascii	"language"
	.int8	1
	.int8	3
	.ascii	"C99"
	.int8	0
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.ascii	"\206\001"
	.ascii	"11.0.0 (/b/s/w/ir/cache/git/chromium.googlesource.com-external-github.com-llvm-llvm--project 3774bcf9f84520a8c35bf765d9a528040d68a14b)"
	.section	.debug_str,"",@
	.section	.debug_line,"",@
.Lline_table_start0:
