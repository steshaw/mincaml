.section	".rodata"
.align	8
l.12034:	! 128.000000
	.long	0x40600000
	.long	0x0
l.12004:	! 40000.000000
	.long	0x40e38800
	.long	0x0
l.11921:	! -2.000000
	.long	0xc0000000
	.long	0x0
l.11919:	! 0.100000
	.long	0x3fb99999
	.long	0x9999999a
l.11906:	! 0.200000
	.long	0x3fc99999
	.long	0x9999999a
l.11845:	! 100000000.000000
	.long	0x4197d784
	.long	0x0
l.11839:	! 1000000000.000000
	.long	0x41cdcd65
	.long	0x0
l.11826:	! 20.000000
	.long	0x40340000
	.long	0x0
l.11824:	! 0.050000
	.long	0x3fa99999
	.long	0x9999999a
l.11815:	! 0.250000
	.long	0x3fd00000
	.long	0x0
l.11808:	! 255.000000
	.long	0x406fe000
	.long	0x0
l.11806:	! 3.141593
	.long	0x400921fb
	.long	0x5a7ed197
l.11804:	! 10.000000
	.long	0x40240000
	.long	0x0
l.11796:	! 850.000000
	.long	0x408a9000
	.long	0x0
l.11792:	! 0.500000
	.long	0x3fe00000
	.long	0x0
l.11790:	! 0.150000
	.long	0x3fc33333
	.long	0x33333333
l.11782:	! 9.549296
	.long	0x4023193d
	.long	0x62316387
l.11780:	! 15.000000
	.long	0x402e0000
	.long	0x0
l.11778:	! 0.000100
	.long	0x3f1a36e2
	.long	0xeb1c432d
l.11380:	! -0.100000
	.long	0xbfb99999
	.long	0x9999999a
l.11298:	! 0.010000
	.long	0x3f847ae1
	.long	0x47ae147b
l.11296:	! -0.200000
	.long	0xbfc99999
	.long	0x9999999a
l.11086:	! 4.000000
	.long	0x40100000
	.long	0x0
l.10876:	! 2.000000
	.long	0x40000000
	.long	0x0
l.10793:	! -1.000000
	.long	0xbff00000
	.long	0x0
l.10791:	! 1.000000
	.long	0x3ff00000
	.long	0x0
l.10753:	! 0.000000
	.long	0x0
	.long	0x0
l.10734:	! -200.000000
	.long	0xc0690000
	.long	0x0
l.10719:	! 0.017453
	.long	0x3f91df46
	.long	0xaa91ed06
.section	".text"
read_environ.2254:
	set	min_caml_screen, %o5
	st	%o5, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	min_caml_read_float
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 0], %o5
	std	%f14, [%o5 + 0]
	set	min_caml_screen, %o5
	st	%o5, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	min_caml_read_float
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 4], %o5
	std	%f14, [%o5 + 8]
	set	min_caml_screen, %o5
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_float
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 8], %o5
	std	%f14, [%o5 + 16]
	st	%o7, [%i0 + 12]
	call	min_caml_read_float
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.10719, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	std	%f0, [%i0 + 16]
	set	min_caml_cos_v, %o5
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_cos
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 24], %o5
	std	%f14, [%o5 + 0]
	set	min_caml_sin_v, %o5
	st	%o5, [%i0 + 28]
	ldd	[%i0 + 16], %f0
	st	%o7, [%i0 + 36]
	call	min_caml_sin
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 28], %o5
	std	%f14, [%o5 + 0]
	st	%o7, [%i0 + 36]
	call	min_caml_read_float
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.10719, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	std	%f0, [%i0 + 32]
	set	min_caml_cos_v, %o5
	st	%o5, [%i0 + 40]
	st	%o7, [%i0 + 44]
	call	min_caml_cos
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 40], %o5
	std	%f14, [%o5 + 8]
	set	min_caml_sin_v, %o5
	st	%o5, [%i0 + 44]
	ldd	[%i0 + 32], %f0
	st	%o7, [%i0 + 52]
	call	min_caml_sin
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 44], %o5
	std	%f14, [%o5 + 8]
	st	%o7, [%i0 + 52]
	call	min_caml_read_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	st	%o7, [%i0 + 52]
	call	min_caml_read_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.10719, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	std	%f0, [%i0 + 48]
	st	%o7, [%i0 + 60]
	call	min_caml_sin
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	min_caml_light, %o5
	fnegs	%f14, %f14
	std	%f14, [%o5 + 8]
	st	%o7, [%i0 + 60]
	call	min_caml_read_float
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.10719, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%i0 + 56]
	ldd	[%i0 + 48], %f0
	st	%o7, [%i0 + 68]
	call	min_caml_cos
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	std	%f14, [%i0 + 64]
	ldd	[%i0 + 56], %f0
	st	%o7, [%i0 + 76]
	call	min_caml_sin
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	min_caml_light, %o5
	ldd	[%i0 + 64], %f12
	fmuld	%f12, %f14, %f14
	std	%f14, [%o5 + 0]
	ldd	[%i0 + 56], %f0
	st	%o7, [%i0 + 76]
	call	min_caml_cos
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	min_caml_light, %o5
	ldd	[%i0 + 64], %f12
	fmuld	%f12, %f14, %f14
	std	%f14, [%o5 + 16]
	set	min_caml_beam, %o5
	st	%o5, [%i0 + 72]
	st	%o7, [%i0 + 76]
	call	min_caml_read_float
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 72], %o5
	std	%f14, [%o5 + 0]
	set	min_caml_vp, %o5
	set	min_caml_cos_v, %o4
	ldd	[%o4 + 0], %f14
	set	min_caml_sin_v, %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f14, %f12, %f14
	set	l.10734, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_vp, %o5
	set	min_caml_sin_v, %o4
	ldd	[%o4 + 0], %f14
	fnegs	%f14, %f14
	set	l.10734, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_vp, %o5
	set	min_caml_cos_v, %o4
	ldd	[%o4 + 0], %f14
	set	min_caml_cos_v, %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f14, %f12, %f14
	set	l.10734, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	set	min_caml_view, %o5
	set	min_caml_vp, %o4
	ldd	[%o4 + 0], %f14
	set	min_caml_screen, %o4
	ldd	[%o4 + 0], %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_view, %o5
	set	min_caml_vp, %o4
	ldd	[%o4 + 8], %f14
	set	min_caml_screen, %o4
	ldd	[%o4 + 8], %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_view, %o5
	set	min_caml_vp, %o4
	ldd	[%o4 + 16], %f14
	set	min_caml_screen, %o4
	ldd	[%o4 + 16], %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	retl
	nop
read_nth_object.2384:
	st	%i2, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	min_caml_read_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124436
	nop
	set	0, %i2
	retl
	nop
be_else.124436:
	st	%o5, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	st	%o5, [%i0 + 12]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	st	%o5, [%i0 + 16]
	set	3, %i2
	set	l.10753, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 20]
	call	min_caml_create_float_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	st	%o5, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	min_caml_read_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 20], %o5
	std	%f14, [%o5 + 0]
	st	%o7, [%i0 + 28]
	call	min_caml_read_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 20], %o5
	std	%f14, [%o5 + 8]
	st	%o7, [%i0 + 28]
	call	min_caml_read_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 20], %o5
	std	%f14, [%o5 + 16]
	set	3, %i2
	set	l.10753, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 28]
	call	min_caml_create_float_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_read_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 24], %o5
	std	%f14, [%o5 + 0]
	st	%o7, [%i0 + 28]
	call	min_caml_read_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 24], %o5
	std	%f14, [%o5 + 8]
	st	%o7, [%i0 + 28]
	call	min_caml_read_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 24], %o5
	std	%f14, [%o5 + 16]
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 32]
	st	%o7, [%i0 + 44]
	call	min_caml_read_float
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 32], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.124474
	nop
	set	0, %o5
	b	fble_cont.124475
	nop
fble_else.124474:
	set	1, %o5
fble_cont.124475:
	st	%o5, [%i0 + 40]
	set	2, %i2
	set	l.10753, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 44]
	call	min_caml_create_float_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	st	%o5, [%i0 + 44]
	st	%o7, [%i0 + 52]
	call	min_caml_read_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 44], %o5
	std	%f14, [%o5 + 0]
	st	%o7, [%i0 + 52]
	call	min_caml_read_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 44], %o5
	std	%f14, [%o5 + 8]
	set	3, %i2
	set	l.10753, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 52]
	call	min_caml_create_float_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	st	%o5, [%i0 + 48]
	st	%o7, [%i0 + 52]
	call	min_caml_read_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 48], %o5
	std	%f14, [%o5 + 0]
	st	%o7, [%i0 + 52]
	call	min_caml_read_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 48], %o5
	std	%f14, [%o5 + 8]
	st	%o7, [%i0 + 52]
	call	min_caml_read_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 48], %o5
	std	%f14, [%o5 + 16]
	set	3, %i2
	set	l.10753, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 52]
	call	min_caml_create_float_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	st	%o5, [%i0 + 52]
	ld	[%i0 + 16], %o4
	cmp	%o4, 0
	bne	be_else.124499
	nop
	b	be_cont.124500
	nop
be_else.124499:
	st	%o7, [%i0 + 60]
	call	min_caml_read_float
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.10719, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i0 + 52], %o5
	std	%f14, [%o5 + 0]
	st	%o7, [%i0 + 60]
	call	min_caml_read_float
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.10719, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i0 + 52], %o5
	std	%f14, [%o5 + 8]
	st	%o7, [%i0 + 60]
	call	min_caml_read_float
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.10719, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i0 + 52], %o5
	std	%f14, [%o5 + 16]
be_cont.124500:
	ld	[%i0 + 8], %o4
	cmp	%o4, 2
	bne	be_else.124511
	nop
	set	1, %o4
	b	be_cont.124512
	nop
be_else.124511:
	ld	[%i0 + 40], %o4
be_cont.124512:
	ld	[%i0 + 4], %o3
	st	%o3, [%i1 + 0]
	ld	[%i0 + 8], %o3
	st	%o3, [%i1 + 4]
	ld	[%i0 + 12], %o2
	st	%o2, [%i1 + 8]
	ld	[%i0 + 16], %o2
	st	%o2, [%i1 + 12]
	ld	[%i0 + 20], %o2
	st	%o2, [%i1 + 16]
	ld	[%i0 + 24], %o1
	st	%o1, [%i1 + 20]
	st	%o4, [%i1 + 24]
	ld	[%i0 + 44], %o4
	st	%o4, [%i1 + 28]
	ld	[%i0 + 48], %o4
	st	%o4, [%i1 + 32]
	st	%o5, [%i1 + 36]
	mov	%i1, %o5
	add	%i1, 40, %i1
	set	min_caml_objects, %o4
	ld	[%i0 + 0], %o1
	sll	%o1, 2, %o1
	st	%o5, [%o4 + %o1]
	cmp	%o3, 3
	bne	be_else.124525
	nop
	ldd	[%o2 + 0], %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.124527
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	b	fbe_cont.124528
	nop
fbe_else.124527:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.124529
	nop
	set	l.10793, %o5
	ldd	[%o5 + 0], %f12
	b	fble_cont.124530
	nop
fble_else.124529:
	set	l.10791, %o5
	ldd	[%o5 + 0], %f12
fble_cont.124530:
	fmuld	%f14, %f14, %f14
	fdivd	%f12, %f14, %f14
fbe_cont.124528:
	std	%f14, [%o2 + 0]
	ldd	[%o2 + 8], %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.124532
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	b	fbe_cont.124533
	nop
fbe_else.124532:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.124534
	nop
	set	l.10793, %o5
	ldd	[%o5 + 0], %f12
	b	fble_cont.124535
	nop
fble_else.124534:
	set	l.10791, %o5
	ldd	[%o5 + 0], %f12
fble_cont.124535:
	fmuld	%f14, %f14, %f14
	fdivd	%f12, %f14, %f14
fbe_cont.124533:
	std	%f14, [%o2 + 8]
	ldd	[%o2 + 16], %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.124537
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	b	fbe_cont.124538
	nop
fbe_else.124537:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.124539
	nop
	set	l.10793, %o5
	ldd	[%o5 + 0], %f12
	b	fble_cont.124540
	nop
fble_else.124539:
	set	l.10791, %o5
	ldd	[%o5 + 0], %f12
fble_cont.124540:
	fmuld	%f14, %f14, %f14
	fdivd	%f12, %f14, %f14
fbe_cont.124538:
	std	%f14, [%o2 + 16]
	b	be_cont.124526
	nop
be_else.124525:
	cmp	%o3, 2
	bne	be_else.124541
	nop
	ld	[%i0 + 40], %o5
	cmp	%o5, 0
	bne	be_else.124544
	nop
	set	1, %o5
	b	be_cont.124545
	nop
be_else.124544:
	set	0, %o5
be_cont.124545:
	st	%o5, [%i0 + 56]
	ldd	[%o2 + 0], %f14
	fmuld	%f14, %f14, %f14
	ldd	[%o2 + 8], %f12
	fmuld	%f12, %f12, %f12
	faddd	%f14, %f12, %f14
	ldd	[%o2 + 16], %f12
	fmuld	%f12, %f12, %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 60]
	call	min_caml_sqrt
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 56], %o5
	cmp	%o5, 0
	bne	be_else.124548
	nop
	b	be_cont.124549
	nop
be_else.124548:
	fnegs	%f14, %f14
be_cont.124549:
	ld	[%i0 + 20], %o5
	ldd	[%o5 + 0], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	ldd	[%o5 + 8], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 8]
	ldd	[%o5 + 16], %f12
	fdivd	%f12, %f14, %f14
	std	%f14, [%o5 + 16]
	b	be_cont.124542
	nop
be_else.124541:
be_cont.124542:
be_cont.124526:
	ld	[%i0 + 16], %o5
	cmp	%o5, 0
	bne	be_else.124554
	nop
	b	be_cont.124555
	nop
be_else.124554:
	set	min_caml_cs_temp, %o5
	st	%o5, [%i0 + 60]
	ld	[%i0 + 52], %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 68]
	call	min_caml_cos
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 60], %o5
	std	%f14, [%o5 + 80]
	set	min_caml_cs_temp, %o5
	st	%o5, [%i0 + 64]
	ld	[%i0 + 52], %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 68]
	call	min_caml_sin
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 64], %o5
	std	%f14, [%o5 + 88]
	set	min_caml_cs_temp, %o5
	st	%o5, [%i0 + 68]
	ld	[%i0 + 52], %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 76]
	call	min_caml_cos
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 68], %o5
	std	%f14, [%o5 + 96]
	set	min_caml_cs_temp, %o5
	st	%o5, [%i0 + 72]
	ld	[%i0 + 52], %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 76]
	call	min_caml_sin
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 72], %o5
	std	%f14, [%o5 + 104]
	set	min_caml_cs_temp, %o5
	st	%o5, [%i0 + 76]
	ld	[%i0 + 52], %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 84]
	call	min_caml_cos
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 76], %o5
	std	%f14, [%o5 + 112]
	set	min_caml_cs_temp, %o5
	st	%o5, [%i0 + 80]
	ld	[%i0 + 52], %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 84]
	call	min_caml_sin
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 80], %o5
	std	%f14, [%o5 + 120]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 96], %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 112], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 88], %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 104], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 112], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 80], %f12
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 120], %f10
	fmuld	%f12, %f10, %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 80], %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 104], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 112], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 88], %f12
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 120], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 96], %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 120], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 24]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 88], %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 104], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 120], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 80], %f12
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 112], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 32]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 80], %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 104], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 120], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 88], %f12
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 112], %f10
	fmuld	%f12, %f10, %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 40]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 104], %f14
	fnegs	%f14, %f14
	std	%f14, [%o5 + 48]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 88], %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 96], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 56]
	set	min_caml_cs_temp, %o5
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 80], %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 96], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 64]
	ld	[%i0 + 20], %o5
	ldd	[%o5 + 0], %f14
	ldd	[%o5 + 8], %f12
	ldd	[%o5 + 16], %f10
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 0], %f8
	fmuld	%f8, %f8, %f8
	fmuld	%f14, %f8, %f8
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 24], %f6
	fmuld	%f6, %f6, %f6
	fmuld	%f12, %f6, %f6
	faddd	%f8, %f6, %f8
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 48], %f6
	fmuld	%f6, %f6, %f6
	fmuld	%f10, %f6, %f6
	faddd	%f8, %f6, %f8
	std	%f8, [%o5 + 0]
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 8], %f8
	fmuld	%f8, %f8, %f8
	fmuld	%f14, %f8, %f8
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 32], %f6
	fmuld	%f6, %f6, %f6
	fmuld	%f12, %f6, %f6
	faddd	%f8, %f6, %f8
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 56], %f6
	fmuld	%f6, %f6, %f6
	fmuld	%f10, %f6, %f6
	faddd	%f8, %f6, %f8
	std	%f8, [%o5 + 8]
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 16], %f8
	fmuld	%f8, %f8, %f8
	fmuld	%f14, %f8, %f8
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 40], %f6
	fmuld	%f6, %f6, %f6
	fmuld	%f12, %f6, %f6
	faddd	%f8, %f6, %f8
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 64], %f6
	fmuld	%f6, %f6, %f6
	fmuld	%f10, %f6, %f6
	faddd	%f8, %f6, %f8
	std	%f8, [%o5 + 16]
	set	l.10876, %o5
	ldd	[%o5 + 0], %f8
	set	min_caml_cs_temp, %o5
	ldd	[%o5 + 8], %f6
	fmuld	%f14, %f6, %f6
	set	min_caml_cs_temp, %o5
	ldd	[%o5 + 16], %f4
	fmuld	%f6, %f4, %f6
	set	min_caml_cs_temp, %o5
	ldd	[%o5 + 32], %f4
	fmuld	%f12, %f4, %f4
	set	min_caml_cs_temp, %o5
	ldd	[%o5 + 40], %f2
	fmuld	%f4, %f2, %f4
	faddd	%f6, %f4, %f6
	set	min_caml_cs_temp, %o5
	ldd	[%o5 + 56], %f4
	fmuld	%f10, %f4, %f4
	set	min_caml_cs_temp, %o5
	ldd	[%o5 + 64], %f2
	fmuld	%f4, %f2, %f4
	faddd	%f6, %f4, %f6
	fmuld	%f8, %f6, %f8
	ld	[%i0 + 52], %o5
	std	%f8, [%o5 + 0]
	set	l.10876, %o4
	ldd	[%o4 + 0], %f8
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 0], %f6
	fmuld	%f14, %f6, %f6
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 16], %f4
	fmuld	%f6, %f4, %f6
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 24], %f4
	fmuld	%f12, %f4, %f4
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 40], %f2
	fmuld	%f4, %f2, %f4
	faddd	%f6, %f4, %f6
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 48], %f4
	fmuld	%f10, %f4, %f4
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 64], %f2
	fmuld	%f4, %f2, %f4
	faddd	%f6, %f4, %f6
	fmuld	%f8, %f6, %f8
	std	%f8, [%o5 + 8]
	set	l.10876, %o4
	ldd	[%o4 + 0], %f8
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 0], %f6
	fmuld	%f14, %f6, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 8], %f6
	fmuld	%f14, %f6, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 24], %f6
	fmuld	%f12, %f6, %f12
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 32], %f6
	fmuld	%f12, %f6, %f12
	faddd	%f14, %f12, %f14
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 48], %f12
	fmuld	%f10, %f12, %f12
	set	min_caml_cs_temp, %o4
	ldd	[%o4 + 56], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	fmuld	%f8, %f14, %f14
	std	%f14, [%o5 + 16]
be_cont.124555:
	set	1, %i2
	retl
	nop
read_object.2832:
	cmp	%i2, 61
	bl	bge_else.124590
	nop
	retl
	nop
bge_else.124590:
	st	%i2, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.124594
	nop
	retl
	nop
be_else.124594:
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.124596
	nop
	retl
	nop
bge_else.124596:
	st	%i2, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	read_nth_object.2384
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.124600
	nop
	retl
	nop
be_else.124600:
	ld	[%i0 + 4], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.124602
	nop
	retl
	nop
bge_else.124602:
	st	%i2, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	read_nth_object.2384
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.124606
	nop
	retl
	nop
be_else.124606:
	ld	[%i0 + 8], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.124608
	nop
	retl
	nop
bge_else.124608:
	st	%i2, [%i0 + 12]
	st	%o7, [%i0 + 20]
	call	read_nth_object.2384
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.124612
	nop
	retl
	nop
be_else.124612:
	ld	[%i0 + 12], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.124614
	nop
	retl
	nop
bge_else.124614:
	st	%i2, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	read_nth_object.2384
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.124618
	nop
	retl
	nop
be_else.124618:
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.124620
	nop
	retl
	nop
bge_else.124620:
	st	%i2, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	read_nth_object.2384
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.124624
	nop
	retl
	nop
be_else.124624:
	ld	[%i0 + 20], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.124626
	nop
	retl
	nop
bge_else.124626:
	st	%i2, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	read_nth_object.2384
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.124630
	nop
	retl
	nop
be_else.124630:
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.124632
	nop
	retl
	nop
bge_else.124632:
	st	%i2, [%i0 + 28]
	st	%o7, [%i0 + 36]
	call	read_nth_object.2384
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.124636
	nop
	retl
	nop
be_else.124636:
	ld	[%i0 + 28], %o5
	add	%o5, 1, %i2
	b	read_object.2832
	nop
read_net_item.2842:
	st	%i2, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	min_caml_read_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124641
	nop
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	b	min_caml_create_array
	nop
be_else.124641:
	st	%o5, [%i0 + 4]
	ld	[%i0 + 0], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124647
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.124648
	nop
be_else.124647:
	st	%o5, [%i0 + 12]
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124655
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.124656
	nop
be_else.124655:
	st	%o5, [%i0 + 20]
	ld	[%i0 + 16], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124663
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.124664
	nop
be_else.124663:
	st	%o5, [%i0 + 28]
	ld	[%i0 + 24], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 32]
	st	%o7, [%i0 + 36]
	call	min_caml_read_int
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124671
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 36]
	call	min_caml_create_array
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.124672
	nop
be_else.124671:
	st	%o5, [%i0 + 36]
	ld	[%i0 + 32], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 40]
	st	%o7, [%i0 + 44]
	call	min_caml_read_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124679
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.124680
	nop
be_else.124679:
	st	%o5, [%i0 + 44]
	ld	[%i0 + 40], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 48]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124687
	nop
	ld	[%i0 + 48], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.124688
	nop
be_else.124687:
	st	%o5, [%i0 + 52]
	ld	[%i0 + 48], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 56]
	st	%o7, [%i0 + 60]
	call	min_caml_read_int
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124695
	nop
	ld	[%i0 + 56], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 60]
	call	min_caml_create_array
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.124696
	nop
be_else.124695:
	st	%o5, [%i0 + 60]
	ld	[%i0 + 56], %o5
	add	%o5, 1, %i2
	st	%o7, [%i0 + 68]
	call	read_net_item.2842
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	ld	[%i0 + 56], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 60], %o3
	st	%o3, [%o5 + %o4]
be_cont.124696:
	ld	[%i0 + 48], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 52], %o3
	st	%o3, [%o5 + %o4]
be_cont.124688:
	ld	[%i0 + 40], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 44], %o3
	st	%o3, [%o5 + %o4]
be_cont.124680:
	ld	[%i0 + 32], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 36], %o3
	st	%o3, [%o5 + %o4]
be_cont.124672:
	ld	[%i0 + 24], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 28], %o3
	st	%o3, [%o5 + %o4]
be_cont.124664:
	ld	[%i0 + 16], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 20], %o3
	st	%o3, [%o5 + %o4]
be_cont.124656:
	ld	[%i0 + 8], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 12], %o3
	st	%o3, [%o5 + %o4]
be_cont.124648:
	mov	%o5, %i2
	ld	[%i0 + 0], %o5
	sll	%o5, 2, %o5
	ld	[%i0 + 4], %o4
	st	%o4, [%i2 + %o5]
	retl
	nop
read_or_network.2854:
	st	%i2, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	min_caml_read_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124712
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 4]
	call	min_caml_create_array
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	b	be_cont.124713
	nop
be_else.124712:
	st	%o5, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124718
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.124719
	nop
be_else.124718:
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124724
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.124725
	nop
be_else.124724:
	st	%o5, [%i0 + 12]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124730
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.124731
	nop
be_else.124730:
	st	%o5, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124736
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.124737
	nop
be_else.124736:
	st	%o5, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124742
	nop
	set	6, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.124743
	nop
be_else.124742:
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124748
	nop
	set	7, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.124749
	nop
be_else.124748:
	st	%o5, [%i0 + 28]
	set	7, %i2
	st	%o7, [%i0 + 36]
	call	read_net_item.2842
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	ld	[%i0 + 28], %o4
	st	%o4, [%o5 + 24]
be_cont.124749:
	ld	[%i0 + 24], %o4
	st	%o4, [%o5 + 20]
be_cont.124743:
	ld	[%i0 + 20], %o4
	st	%o4, [%o5 + 16]
be_cont.124737:
	ld	[%i0 + 16], %o4
	st	%o4, [%o5 + 12]
be_cont.124731:
	ld	[%i0 + 12], %o4
	st	%o4, [%o5 + 8]
be_cont.124725:
	ld	[%i0 + 8], %o4
	st	%o4, [%o5 + 4]
be_cont.124719:
	ld	[%i0 + 4], %o4
	st	%o4, [%o5 + 0]
be_cont.124713:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.124760
	nop
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	b	min_caml_create_array
	nop
be_else.124760:
	st	%i3, [%i0 + 32]
	ld	[%i0 + 0], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 36]
	st	%o7, [%i0 + 44]
	call	min_caml_read_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124766
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.124767
	nop
be_else.124766:
	st	%o5, [%i0 + 40]
	st	%o7, [%i0 + 44]
	call	min_caml_read_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124772
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.124773
	nop
be_else.124772:
	st	%o5, [%i0 + 44]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124778
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.124779
	nop
be_else.124778:
	st	%o5, [%i0 + 48]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124784
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.124785
	nop
be_else.124784:
	st	%o5, [%i0 + 52]
	st	%o7, [%i0 + 60]
	call	min_caml_read_int
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124790
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 60]
	call	min_caml_create_array
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.124791
	nop
be_else.124790:
	st	%o5, [%i0 + 56]
	st	%o7, [%i0 + 60]
	call	min_caml_read_int
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124796
	nop
	set	6, %i2
	set	-1, %i3
	st	%o7, [%i0 + 60]
	call	min_caml_create_array
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.124797
	nop
be_else.124796:
	st	%o5, [%i0 + 60]
	set	6, %i2
	st	%o7, [%i0 + 68]
	call	read_net_item.2842
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	ld	[%i0 + 60], %o4
	st	%o4, [%o5 + 20]
be_cont.124797:
	ld	[%i0 + 56], %o4
	st	%o4, [%o5 + 16]
be_cont.124791:
	ld	[%i0 + 52], %o4
	st	%o4, [%o5 + 12]
be_cont.124785:
	ld	[%i0 + 48], %o4
	st	%o4, [%o5 + 8]
be_cont.124779:
	ld	[%i0 + 44], %o4
	st	%o4, [%o5 + 4]
be_cont.124773:
	ld	[%i0 + 40], %o4
	st	%o4, [%o5 + 0]
be_cont.124767:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.124807
	nop
	ld	[%i0 + 36], %o5
	add	%o5, 1, %i2
	st	%o7, [%i0 + 68]
	call	min_caml_create_array
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	b	be_cont.124808
	nop
be_else.124807:
	st	%i3, [%i0 + 64]
	ld	[%i0 + 36], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 68]
	st	%o7, [%i0 + 76]
	call	min_caml_read_int
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124815
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 76]
	call	min_caml_create_array
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	b	be_cont.124816
	nop
be_else.124815:
	st	%o5, [%i0 + 72]
	st	%o7, [%i0 + 76]
	call	min_caml_read_int
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124821
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 76]
	call	min_caml_create_array
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	b	be_cont.124822
	nop
be_else.124821:
	st	%o5, [%i0 + 76]
	st	%o7, [%i0 + 84]
	call	min_caml_read_int
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124827
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 84]
	call	min_caml_create_array
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	b	be_cont.124828
	nop
be_else.124827:
	st	%o5, [%i0 + 80]
	st	%o7, [%i0 + 84]
	call	min_caml_read_int
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124833
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 84]
	call	min_caml_create_array
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	b	be_cont.124834
	nop
be_else.124833:
	st	%o5, [%i0 + 84]
	st	%o7, [%i0 + 92]
	call	min_caml_read_int
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124839
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 92]
	call	min_caml_create_array
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	b	be_cont.124840
	nop
be_else.124839:
	st	%o5, [%i0 + 88]
	set	5, %i2
	st	%o7, [%i0 + 92]
	call	read_net_item.2842
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	ld	[%i0 + 88], %o4
	st	%o4, [%o5 + 16]
be_cont.124840:
	ld	[%i0 + 84], %o4
	st	%o4, [%o5 + 12]
be_cont.124834:
	ld	[%i0 + 80], %o4
	st	%o4, [%o5 + 8]
be_cont.124828:
	ld	[%i0 + 76], %o4
	st	%o4, [%o5 + 4]
be_cont.124822:
	ld	[%i0 + 72], %o4
	st	%o4, [%o5 + 0]
be_cont.124816:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.124849
	nop
	ld	[%i0 + 68], %o5
	add	%o5, 1, %i2
	st	%o7, [%i0 + 92]
	call	min_caml_create_array
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	b	be_cont.124850
	nop
be_else.124849:
	st	%i3, [%i0 + 92]
	ld	[%i0 + 68], %o5
	add	%o5, 1, %o5
	st	%o5, [%i0 + 96]
	st	%o7, [%i0 + 100]
	call	min_caml_read_int
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124857
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 100]
	call	min_caml_create_array
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	b	be_cont.124858
	nop
be_else.124857:
	st	%o5, [%i0 + 100]
	st	%o7, [%i0 + 108]
	call	min_caml_read_int
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124863
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 108]
	call	min_caml_create_array
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	b	be_cont.124864
	nop
be_else.124863:
	st	%o5, [%i0 + 104]
	st	%o7, [%i0 + 108]
	call	min_caml_read_int
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124869
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 108]
	call	min_caml_create_array
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	b	be_cont.124870
	nop
be_else.124869:
	st	%o5, [%i0 + 108]
	st	%o7, [%i0 + 116]
	call	min_caml_read_int
	add	%i0, 120, %i0	! delay slot
	sub	%i0, 120, %i0
	ld	[%i0 + 116], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124875
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 116]
	call	min_caml_create_array
	add	%i0, 120, %i0	! delay slot
	sub	%i0, 120, %i0
	ld	[%i0 + 116], %o7
	mov	%i2, %o5
	b	be_cont.124876
	nop
be_else.124875:
	st	%o5, [%i0 + 112]
	set	4, %i2
	st	%o7, [%i0 + 116]
	call	read_net_item.2842
	add	%i0, 120, %i0	! delay slot
	sub	%i0, 120, %i0
	ld	[%i0 + 116], %o7
	mov	%i2, %o5
	ld	[%i0 + 112], %o4
	st	%o4, [%o5 + 12]
be_cont.124876:
	ld	[%i0 + 108], %o4
	st	%o4, [%o5 + 8]
be_cont.124870:
	ld	[%i0 + 104], %o4
	st	%o4, [%o5 + 4]
be_cont.124864:
	ld	[%i0 + 100], %o4
	st	%o4, [%o5 + 0]
be_cont.124858:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.124884
	nop
	ld	[%i0 + 96], %o5
	add	%o5, 1, %i2
	st	%o7, [%i0 + 116]
	call	min_caml_create_array
	add	%i0, 120, %i0	! delay slot
	sub	%i0, 120, %i0
	ld	[%i0 + 116], %o7
	mov	%i2, %o5
	b	be_cont.124885
	nop
be_else.124884:
	st	%i3, [%i0 + 116]
	ld	[%i0 + 96], %o5
	add	%o5, 1, %i2
	st	%o7, [%i0 + 124]
	call	read_or_network.2854
	add	%i0, 128, %i0	! delay slot
	sub	%i0, 128, %i0
	ld	[%i0 + 124], %o7
	mov	%i2, %o5
	ld	[%i0 + 96], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 116], %o3
	st	%o3, [%o5 + %o4]
be_cont.124885:
	ld	[%i0 + 68], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 92], %o3
	st	%o3, [%o5 + %o4]
be_cont.124850:
	ld	[%i0 + 36], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 64], %o3
	st	%o3, [%o5 + %o4]
be_cont.124808:
	mov	%o5, %i2
	ld	[%i0 + 0], %o5
	sll	%o5, 2, %o5
	ld	[%i0 + 32], %o4
	st	%o4, [%i2 + %o5]
	retl
	nop
read_and_network.2867:
	st	%i2, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	min_caml_read_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124897
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 4]
	call	min_caml_create_array
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	b	be_cont.124898
	nop
be_else.124897:
	st	%o5, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124903
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.124904
	nop
be_else.124903:
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124909
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.124910
	nop
be_else.124909:
	st	%o5, [%i0 + 12]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124915
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.124916
	nop
be_else.124915:
	st	%o5, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124921
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.124922
	nop
be_else.124921:
	st	%o5, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124927
	nop
	set	6, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.124928
	nop
be_else.124927:
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124933
	nop
	set	7, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.124934
	nop
be_else.124933:
	st	%o5, [%i0 + 28]
	set	7, %i2
	st	%o7, [%i0 + 36]
	call	read_net_item.2842
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	ld	[%i0 + 28], %o4
	st	%o4, [%o5 + 24]
be_cont.124934:
	ld	[%i0 + 24], %o4
	st	%o4, [%o5 + 20]
be_cont.124928:
	ld	[%i0 + 20], %o4
	st	%o4, [%o5 + 16]
be_cont.124922:
	ld	[%i0 + 16], %o4
	st	%o4, [%o5 + 12]
be_cont.124916:
	ld	[%i0 + 12], %o4
	st	%o4, [%o5 + 8]
be_cont.124910:
	ld	[%i0 + 8], %o4
	st	%o4, [%o5 + 4]
be_cont.124904:
	ld	[%i0 + 4], %o4
	st	%o4, [%o5 + 0]
be_cont.124898:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.124945
	nop
	retl
	nop
be_else.124945:
	set	min_caml_and_net, %o4
	ld	[%i0 + 0], %o3
	sll	%o3, 2, %o2
	st	%o5, [%o4 + %o2]
	add	%o3, 1, %o5
	st	%o5, [%i0 + 32]
	st	%o7, [%i0 + 36]
	call	min_caml_read_int
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124951
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 36]
	call	min_caml_create_array
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.124952
	nop
be_else.124951:
	st	%o5, [%i0 + 36]
	st	%o7, [%i0 + 44]
	call	min_caml_read_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124957
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.124958
	nop
be_else.124957:
	st	%o5, [%i0 + 40]
	st	%o7, [%i0 + 44]
	call	min_caml_read_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124963
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.124964
	nop
be_else.124963:
	st	%o5, [%i0 + 44]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124969
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.124970
	nop
be_else.124969:
	st	%o5, [%i0 + 48]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124975
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.124976
	nop
be_else.124975:
	st	%o5, [%i0 + 52]
	st	%o7, [%i0 + 60]
	call	min_caml_read_int
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124981
	nop
	set	6, %i2
	set	-1, %i3
	st	%o7, [%i0 + 60]
	call	min_caml_create_array
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.124982
	nop
be_else.124981:
	st	%o5, [%i0 + 56]
	set	6, %i2
	st	%o7, [%i0 + 60]
	call	read_net_item.2842
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	ld	[%i0 + 56], %o4
	st	%o4, [%o5 + 20]
be_cont.124982:
	ld	[%i0 + 52], %o4
	st	%o4, [%o5 + 16]
be_cont.124976:
	ld	[%i0 + 48], %o4
	st	%o4, [%o5 + 12]
be_cont.124970:
	ld	[%i0 + 44], %o4
	st	%o4, [%o5 + 8]
be_cont.124964:
	ld	[%i0 + 40], %o4
	st	%o4, [%o5 + 4]
be_cont.124958:
	ld	[%i0 + 36], %o4
	st	%o4, [%o5 + 0]
be_cont.124952:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.124992
	nop
	retl
	nop
be_else.124992:
	set	min_caml_and_net, %o4
	ld	[%i0 + 32], %o3
	sll	%o3, 2, %o2
	st	%o5, [%o4 + %o2]
	add	%o3, 1, %o5
	st	%o5, [%i0 + 60]
	st	%o7, [%i0 + 68]
	call	min_caml_read_int
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.124998
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 68]
	call	min_caml_create_array
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	b	be_cont.124999
	nop
be_else.124998:
	st	%o5, [%i0 + 64]
	st	%o7, [%i0 + 68]
	call	min_caml_read_int
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.125004
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 68]
	call	min_caml_create_array
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	b	be_cont.125005
	nop
be_else.125004:
	st	%o5, [%i0 + 68]
	st	%o7, [%i0 + 76]
	call	min_caml_read_int
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.125010
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 76]
	call	min_caml_create_array
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	b	be_cont.125011
	nop
be_else.125010:
	st	%o5, [%i0 + 72]
	st	%o7, [%i0 + 76]
	call	min_caml_read_int
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.125016
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 76]
	call	min_caml_create_array
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	b	be_cont.125017
	nop
be_else.125016:
	st	%o5, [%i0 + 76]
	st	%o7, [%i0 + 84]
	call	min_caml_read_int
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.125022
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 84]
	call	min_caml_create_array
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	b	be_cont.125023
	nop
be_else.125022:
	st	%o5, [%i0 + 80]
	set	5, %i2
	st	%o7, [%i0 + 84]
	call	read_net_item.2842
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	ld	[%i0 + 80], %o4
	st	%o4, [%o5 + 16]
be_cont.125023:
	ld	[%i0 + 76], %o4
	st	%o4, [%o5 + 12]
be_cont.125017:
	ld	[%i0 + 72], %o4
	st	%o4, [%o5 + 8]
be_cont.125011:
	ld	[%i0 + 68], %o4
	st	%o4, [%o5 + 4]
be_cont.125005:
	ld	[%i0 + 64], %o4
	st	%o4, [%o5 + 0]
be_cont.124999:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.125032
	nop
	retl
	nop
be_else.125032:
	set	min_caml_and_net, %o4
	ld	[%i0 + 60], %o3
	sll	%o3, 2, %o2
	st	%o5, [%o4 + %o2]
	add	%o3, 1, %o5
	st	%o5, [%i0 + 84]
	st	%o7, [%i0 + 92]
	call	min_caml_read_int
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.125038
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 92]
	call	min_caml_create_array
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	b	be_cont.125039
	nop
be_else.125038:
	st	%o5, [%i0 + 88]
	st	%o7, [%i0 + 92]
	call	min_caml_read_int
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.125044
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 92]
	call	min_caml_create_array
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	b	be_cont.125045
	nop
be_else.125044:
	st	%o5, [%i0 + 92]
	st	%o7, [%i0 + 100]
	call	min_caml_read_int
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.125050
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 100]
	call	min_caml_create_array
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	b	be_cont.125051
	nop
be_else.125050:
	st	%o5, [%i0 + 96]
	st	%o7, [%i0 + 100]
	call	min_caml_read_int
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.125056
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 100]
	call	min_caml_create_array
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	b	be_cont.125057
	nop
be_else.125056:
	st	%o5, [%i0 + 100]
	set	4, %i2
	st	%o7, [%i0 + 108]
	call	read_net_item.2842
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	ld	[%i0 + 100], %o4
	st	%o4, [%o5 + 12]
be_cont.125057:
	ld	[%i0 + 96], %o4
	st	%o4, [%o5 + 8]
be_cont.125051:
	ld	[%i0 + 92], %o4
	st	%o4, [%o5 + 4]
be_cont.125045:
	ld	[%i0 + 88], %o4
	st	%o4, [%o5 + 0]
be_cont.125039:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.125065
	nop
	retl
	nop
be_else.125065:
	set	min_caml_and_net, %o4
	ld	[%i0 + 84], %o3
	sll	%o3, 2, %o2
	st	%o5, [%o4 + %o2]
	add	%o3, 1, %i2
	b	read_and_network.2867
	nop
solver_rect.2890:
	st	%i2, [%i0 + 0]
	st	%i3, [%i0 + 4]
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	ldd	[%i3 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbne	fbe_else.125070
	nop
	set	0, %o5
	b	fbe_cont.125071
	nop
fbe_else.125070:
	ld	[%i2 + 24], %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	ldd	[%i3 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125074
	nop
	set	0, %o4
	b	fble_cont.125075
	nop
fble_else.125074:
	set	1, %o4
fble_cont.125075:
	cmp	%o5, 0
	bne	be_else.125076
	nop
	mov	%o4, %o5
	b	be_cont.125077
	nop
be_else.125076:
	cmp	%o4, 0
	bne	be_else.125078
	nop
	set	1, %o5
	b	be_cont.125079
	nop
be_else.125078:
	set	0, %o5
be_cont.125079:
be_cont.125077:
	cmp	%o5, 0
	bne	be_else.125080
	nop
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	fnegs	%f14, %f14
	b	be_cont.125081
	nop
be_else.125080:
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
be_cont.125081:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	ldd	[%i3 + 0], %f12
	fdivd	%f14, %f12, %f14
	std	%f14, [%i0 + 8]
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f12
	std	%f12, [%i0 + 16]
	ldd	[%i3 + 8], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 28]
	call	min_caml_abs_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 16], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125085
	nop
	set	0, %o5
	b	fble_cont.125086
	nop
fble_else.125085:
	ld	[%i0 + 0], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 16], %f14
	std	%f14, [%i0 + 24]
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 16], %f14
	ldd	[%i0 + 8], %f12
	fmuld	%f12, %f14, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 36]
	call	min_caml_abs_float
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 24], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125090
	nop
	set	0, %o5
	b	fble_cont.125091
	nop
fble_else.125090:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 8], %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.125091:
fble_cont.125086:
fbe_cont.125071:
	cmp	%o5, 0
	bne	be_else.125093
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 8], %f12
	fcmpd	%f14, %f12
	nop
	fbne	fbe_else.125096
	nop
	set	0, %o5
	b	fbe_cont.125097
	nop
fbe_else.125096:
	ld	[%i0 + 0], %o4
	ld	[%o4 + 24], %o3
	set	l.10753, %o2
	ldd	[%o2 + 0], %f14
	ldd	[%o5 + 8], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125100
	nop
	set	0, %o2
	b	fble_cont.125101
	nop
fble_else.125100:
	set	1, %o2
fble_cont.125101:
	cmp	%o3, 0
	bne	be_else.125102
	nop
	mov	%o2, %o3
	b	be_cont.125103
	nop
be_else.125102:
	cmp	%o2, 0
	bne	be_else.125104
	nop
	set	1, %o3
	b	be_cont.125105
	nop
be_else.125104:
	set	0, %o3
be_cont.125105:
be_cont.125103:
	cmp	%o3, 0
	bne	be_else.125106
	nop
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 8], %f14
	fnegs	%f14, %f14
	b	be_cont.125107
	nop
be_else.125106:
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 8], %f14
be_cont.125107:
	set	min_caml_solver_w_vec, %o3
	ldd	[%o3 + 8], %f12
	fsubd	%f14, %f12, %f14
	ldd	[%o5 + 8], %f12
	fdivd	%f14, %f12, %f14
	std	%f14, [%i0 + 32]
	ld	[%o4 + 16], %o4
	ldd	[%o4 + 16], %f12
	std	%f12, [%i0 + 40]
	ldd	[%o5 + 16], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 52]
	call	min_caml_abs_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 40], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125111
	nop
	set	0, %o5
	b	fble_cont.125112
	nop
fble_else.125111:
	ld	[%i0 + 0], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 48]
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 0], %f14
	ldd	[%i0 + 32], %f12
	fmuld	%f12, %f14, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 60]
	call	min_caml_abs_float
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 48], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125116
	nop
	set	0, %o5
	b	fble_cont.125117
	nop
fble_else.125116:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 32], %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.125117:
fble_cont.125112:
fbe_cont.125097:
	cmp	%o5, 0
	bne	be_else.125119
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 16], %f12
	fcmpd	%f14, %f12
	nop
	fbne	fbe_else.125120
	nop
	set	0, %o5
	b	fbe_cont.125121
	nop
fbe_else.125120:
	ld	[%i0 + 0], %o4
	ld	[%o4 + 24], %o3
	set	l.10753, %o2
	ldd	[%o2 + 0], %f14
	ldd	[%o5 + 16], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125124
	nop
	set	0, %o2
	b	fble_cont.125125
	nop
fble_else.125124:
	set	1, %o2
fble_cont.125125:
	cmp	%o3, 0
	bne	be_else.125126
	nop
	mov	%o2, %o3
	b	be_cont.125127
	nop
be_else.125126:
	cmp	%o2, 0
	bne	be_else.125128
	nop
	set	1, %o3
	b	be_cont.125129
	nop
be_else.125128:
	set	0, %o3
be_cont.125129:
be_cont.125127:
	cmp	%o3, 0
	bne	be_else.125130
	nop
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 16], %f14
	fnegs	%f14, %f14
	b	be_cont.125131
	nop
be_else.125130:
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 16], %f14
be_cont.125131:
	set	min_caml_solver_w_vec, %o3
	ldd	[%o3 + 16], %f12
	fsubd	%f14, %f12, %f14
	ldd	[%o5 + 16], %f12
	fdivd	%f14, %f12, %f14
	std	%f14, [%i0 + 56]
	ld	[%o4 + 16], %o4
	ldd	[%o4 + 0], %f12
	std	%f12, [%i0 + 64]
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 76]
	call	min_caml_abs_float
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 64], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125135
	nop
	set	0, %o5
	b	fble_cont.125136
	nop
fble_else.125135:
	ld	[%i0 + 0], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 8], %f14
	std	%f14, [%i0 + 72]
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 8], %f14
	ldd	[%i0 + 56], %f12
	fmuld	%f12, %f14, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 84]
	call	min_caml_abs_float
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 72], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125140
	nop
	set	0, %o5
	b	fble_cont.125141
	nop
fble_else.125140:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 56], %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.125141:
fble_cont.125136:
fbe_cont.125121:
	cmp	%o5, 0
	bne	be_else.125143
	nop
	set	0, %i2
	retl
	nop
be_else.125143:
	set	3, %i2
	retl
	nop
be_else.125119:
	set	2, %i2
	retl
	nop
be_else.125093:
	set	1, %i2
	retl
	nop
solver2nd_rot_b.3131:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f14
	ldd	[%i3 + 8], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f12
	ldd	[%i3 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	ldd	[%i3 + 16], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f10
	ldd	[%i3 + 0], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	ldd	[%i3 + 8], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f10
	ldd	[%i3 + 0], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f0
	retl
	nop
solver_second.3180:
	ldd	[%i3 + 0], %f14
	fmuld	%f14, %f14, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%i3 + 8], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%i3 + 16], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.125144
	nop
	b	be_cont.125145
	nop
be_else.125144:
	ldd	[%i3 + 8], %f12
	ldd	[%i3 + 16], %f10
	fmuld	%f12, %f10, %f12
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f12, %f10, %f12
	ldd	[%i3 + 0], %f10
	ldd	[%i3 + 16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	ldd	[%i3 + 0], %f10
	ldd	[%i3 + 8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
be_cont.125145:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.125146
	nop
	set	0, %i2
	retl
	nop
fbe_else.125146:
	set	l.10876, %o5
	ldd	[%o5 + 0], %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f10
	ldd	[%i3 + 0], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f8
	fmuld	%f10, %f8, %f10
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f8
	ldd	[%i3 + 8], %f6
	fmuld	%f8, %f6, %f8
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f8
	ldd	[%i3 + 16], %f6
	fmuld	%f8, %f6, %f8
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	fmuld	%f12, %f10, %f12
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.125147
	nop
	b	be_cont.125148
	nop
be_else.125147:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f10
	ldd	[%i3 + 8], %f8
	fmuld	%f10, %f8, %f10
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f8
	ldd	[%i3 + 16], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 0], %f8
	fmuld	%f10, %f8, %f10
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f8
	ldd	[%i3 + 16], %f6
	fmuld	%f8, %f6, %f8
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f6
	ldd	[%i3 + 0], %f4
	fmuld	%f6, %f4, %f6
	faddd	%f8, %f6, %f8
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 8], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f8
	ldd	[%i3 + 8], %f6
	fmuld	%f8, %f6, %f8
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f6
	ldd	[%i3 + 0], %f4
	fmuld	%f6, %f4, %f6
	faddd	%f8, %f6, %f8
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 16], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
be_cont.125148:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f10, %f10, %f10
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 0], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%o5 + 8], %f8
	fmuld	%f8, %f8, %f8
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 8], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	ldd	[%o5 + 16], %f8
	fmuld	%f8, %f8, %f8
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.125149
	nop
	b	be_cont.125150
	nop
be_else.125149:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f8
	ldd	[%o5 + 16], %f6
	fmuld	%f8, %f6, %f8
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 0], %f6
	fmuld	%f8, %f6, %f8
	ldd	[%o5 + 0], %f6
	ldd	[%o5 + 16], %f4
	fmuld	%f6, %f4, %f6
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 8], %f4
	fmuld	%f6, %f4, %f6
	faddd	%f8, %f6, %f8
	ldd	[%o5 + 0], %f6
	ldd	[%o5 + 8], %f4
	fmuld	%f6, %f4, %f6
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 16], %f4
	fmuld	%f6, %f4, %f6
	faddd	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
be_cont.125150:
	ld	[%i2 + 4], %o5
	cmp	%o5, 3
	bne	be_else.125151
	nop
	set	l.10791, %o5
	ldd	[%o5 + 0], %f8
	fsubd	%f10, %f8, %f10
	b	be_cont.125152
	nop
be_else.125151:
be_cont.125152:
	set	l.11086, %o5
	ldd	[%o5 + 0], %f8
	fmuld	%f8, %f14, %f8
	fmuld	%f8, %f10, %f10
	fmuld	%f12, %f12, %f8
	fsubd	%f8, %f10, %f0
	set	l.10753, %o5
	ldd	[%o5 + 0], %f10
	fcmpd	%f0, %f10
	nop
	fbg	fble_else.125153
	nop
	set	0, %i2
	retl
	nop
fble_else.125153:
	std	%f14, [%i0 + 0]
	std	%f12, [%i0 + 8]
	st	%i2, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	min_caml_sqrt
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 16], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.125158
	nop
	fnegs	%f14, %f14
	b	be_cont.125159
	nop
be_else.125158:
be_cont.125159:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 8], %f12
	fsubd	%f14, %f12, %f14
	set	l.10876, %o4
	ldd	[%o4 + 0], %f12
	fdivd	%f14, %f12, %f14
	ldd	[%i0 + 0], %f12
	fdivd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	1, %i2
	retl
	nop
solver.3224:
	set	min_caml_objects, %o5
	sll	%i2, 2, %o4
	ld	[%o5 + %o4], %i2
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.125164
	nop
	b	solver_rect.2890
	nop
be_else.125164:
	cmp	%o5, 2
	bne	be_else.125165
	nop
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%i3 + 8], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%i3 + 16], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125166
	nop
	set	0, %i2
	retl
	nop
fble_else.125166:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	fdivd	%f12, %f14, %f14
	set	min_caml_solver_dist, %o5
	fnegs	%f14, %f14
	std	%f14, [%o5 + 0]
	set	1, %i2
	retl
	nop
be_else.125165:
	ldd	[%i3 + 0], %f14
	fmuld	%f14, %f14, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%i3 + 8], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%i3 + 16], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.125168
	nop
	b	be_cont.125169
	nop
be_else.125168:
	ldd	[%i3 + 8], %f12
	ldd	[%i3 + 16], %f10
	fmuld	%f12, %f10, %f12
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f12, %f10, %f12
	ldd	[%i3 + 0], %f10
	ldd	[%i3 + 16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	ldd	[%i3 + 0], %f10
	ldd	[%i3 + 8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
be_cont.125169:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.125170
	nop
	set	0, %i2
	retl
	nop
fbe_else.125170:
	std	%f14, [%i0 + 0]
	st	%i2, [%i0 + 8]
	set	l.10876, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	ldd	[%i3 + 0], %f10
	fmuld	%f12, %f10, %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f10
	ldd	[%i3 + 8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f10
	ldd	[%i3 + 16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	fmuld	%f14, %f12, %f14
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.125173
	nop
	b	be_cont.125174
	nop
be_else.125173:
	std	%f14, [%i0 + 16]
	st	%o7, [%i0 + 28]
	call	solver2nd_rot_b.3131
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 16], %f12
	faddd	%f12, %f14, %f14
be_cont.125174:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i0 + 8], %o4
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 0], %f10
	fmuld	%f12, %f10, %f12
	ldd	[%o5 + 8], %f10
	fmuld	%f10, %f10, %f10
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	ldd	[%o5 + 16], %f10
	fmuld	%f10, %f10, %f10
	ld	[%o4 + 16], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	ld	[%o4 + 12], %o5
	cmp	%o5, 0
	bne	be_else.125178
	nop
	b	be_cont.125179
	nop
be_else.125178:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f10
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%o4 + 36], %o3
	ldd	[%o3 + 0], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%o5 + 0], %f8
	ldd	[%o5 + 16], %f6
	fmuld	%f8, %f6, %f8
	ld	[%o4 + 36], %o3
	ldd	[%o3 + 8], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	ldd	[%o5 + 0], %f8
	ldd	[%o5 + 8], %f6
	fmuld	%f8, %f6, %f8
	ld	[%o4 + 36], %o5
	ldd	[%o5 + 16], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
be_cont.125179:
	ld	[%o4 + 4], %o5
	cmp	%o5, 3
	bne	be_else.125180
	nop
	set	l.10791, %o5
	ldd	[%o5 + 0], %f10
	fsubd	%f12, %f10, %f12
	b	be_cont.125181
	nop
be_else.125180:
be_cont.125181:
	set	l.11086, %o5
	ldd	[%o5 + 0], %f10
	ldd	[%i0 + 0], %f8
	fmuld	%f10, %f8, %f10
	fmuld	%f10, %f12, %f12
	fmuld	%f14, %f14, %f10
	fsubd	%f10, %f12, %f0
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f0, %f12
	nop
	fbg	fble_else.125182
	nop
	set	0, %i2
	retl
	nop
fble_else.125182:
	std	%f14, [%i0 + 24]
	st	%o7, [%i0 + 36]
	call	min_caml_sqrt
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 8], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.125187
	nop
	fnegs	%f14, %f14
	b	be_cont.125188
	nop
be_else.125187:
be_cont.125188:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 24], %f12
	fsubd	%f14, %f12, %f14
	set	l.10876, %o4
	ldd	[%o4 + 0], %f12
	fdivd	%f14, %f12, %f14
	ldd	[%i0 + 0], %f12
	fdivd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	1, %i2
	retl
	nop
is_second_outside.3299:
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f14
	fmuld	%f14, %f14, %f14
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%o5 + 8], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%o5 + 16], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 4], %o5
	cmp	%o5, 3
	bne	be_else.125190
	nop
	set	l.10791, %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	b	be_cont.125191
	nop
be_else.125190:
be_cont.125191:
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.125192
	nop
	b	be_cont.125193
	nop
be_else.125192:
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f12
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 0], %f10
	fmuld	%f12, %f10, %f12
	ldd	[%o5 + 0], %f10
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	ldd	[%o5 + 0], %f10
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
be_cont.125193:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125194
	nop
	set	0, %o5
	b	fble_cont.125195
	nop
fble_else.125194:
	set	1, %o5
fble_cont.125195:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.125196
	nop
	b	be_cont.125197
	nop
be_else.125196:
	cmp	%o5, 0
	bne	be_else.125198
	nop
	set	1, %o5
	b	be_cont.125199
	nop
be_else.125198:
	set	0, %o5
be_cont.125199:
be_cont.125197:
	cmp	%o5, 0
	bne	be_else.125200
	nop
	set	1, %i2
	retl
	nop
be_else.125200:
	set	0, %i2
	retl
	nop
is_outside.3317:
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.125204
	nop
	st	%i2, [%i0 + 0]
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 8]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 20]
	call	min_caml_abs_float
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 8], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125209
	nop
	set	0, %o5
	b	fble_cont.125210
	nop
fble_else.125209:
	ld	[%i0 + 0], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 8], %f14
	std	%f14, [%i0 + 16]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 28]
	call	min_caml_abs_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 16], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125214
	nop
	set	0, %o5
	b	fble_cont.125215
	nop
fble_else.125214:
	ld	[%i0 + 0], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 16], %f14
	std	%f14, [%i0 + 24]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 36]
	call	min_caml_abs_float
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 24], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125218
	nop
	set	0, %o5
	b	fble_cont.125219
	nop
fble_else.125218:
	set	1, %o5
fble_cont.125219:
fble_cont.125215:
fble_cont.125210:
	cmp	%o5, 0
	bne	be_else.125220
	nop
	ld	[%i0 + 0], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.125221
	nop
	set	1, %i2
	retl
	nop
be_else.125221:
	set	0, %i2
	retl
	nop
be_else.125220:
	ld	[%i0 + 0], %o5
	ld	[%o5 + 24], %i2
	retl
	nop
be_else.125204:
	cmp	%o5, 2
	bne	be_else.125222
	nop
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125223
	nop
	set	0, %o5
	b	fble_cont.125224
	nop
fble_else.125223:
	set	1, %o5
fble_cont.125224:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.125225
	nop
	b	be_cont.125226
	nop
be_else.125225:
	cmp	%o5, 0
	bne	be_else.125227
	nop
	set	1, %o5
	b	be_cont.125228
	nop
be_else.125227:
	set	0, %o5
be_cont.125228:
be_cont.125226:
	cmp	%o5, 0
	bne	be_else.125229
	nop
	set	1, %i2
	retl
	nop
be_else.125229:
	set	0, %i2
	retl
	nop
be_else.125222:
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f14
	fmuld	%f14, %f14, %f14
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%o5 + 8], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%o5 + 16], %f12
	fmuld	%f12, %f12, %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 4], %o5
	cmp	%o5, 3
	bne	be_else.125230
	nop
	set	l.10791, %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	b	be_cont.125231
	nop
be_else.125230:
be_cont.125231:
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.125232
	nop
	b	be_cont.125233
	nop
be_else.125232:
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f12
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 0], %f10
	fmuld	%f12, %f10, %f12
	ldd	[%o5 + 0], %f10
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	ldd	[%o5 + 0], %f10
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%i2 + 36], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
be_cont.125233:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125234
	nop
	set	0, %o5
	b	fble_cont.125235
	nop
fble_else.125234:
	set	1, %o5
fble_cont.125235:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.125236
	nop
	b	be_cont.125237
	nop
be_else.125236:
	cmp	%o5, 0
	bne	be_else.125238
	nop
	set	1, %o5
	b	be_cont.125239
	nop
be_else.125238:
	set	0, %o5
be_cont.125239:
be_cont.125237:
	cmp	%o5, 0
	bne	be_else.125240
	nop
	set	1, %i2
	retl
	nop
be_else.125240:
	set	0, %i2
	retl
	nop
check_all_inside.3346:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.125241
	nop
	set	1, %i2
	retl
	nop
be_else.125241:
	st	%i3, [%i0 + 0]
	st	%i2, [%i0 + 4]
	set	min_caml_objects, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i2
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.125247
	nop
	st	%i2, [%i0 + 8]
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 16]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 28]
	call	min_caml_abs_float
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 16], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125253
	nop
	set	0, %o5
	b	fble_cont.125254
	nop
fble_else.125253:
	ld	[%i0 + 8], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 8], %f14
	std	%f14, [%i0 + 24]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 36]
	call	min_caml_abs_float
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 24], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125258
	nop
	set	0, %o5
	b	fble_cont.125259
	nop
fble_else.125258:
	ld	[%i0 + 8], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 16], %f14
	std	%f14, [%i0 + 32]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 44]
	call	min_caml_abs_float
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 32], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125262
	nop
	set	0, %o5
	b	fble_cont.125263
	nop
fble_else.125262:
	set	1, %o5
fble_cont.125263:
fble_cont.125259:
fble_cont.125254:
	cmp	%o5, 0
	bne	be_else.125264
	nop
	ld	[%i0 + 8], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.125266
	nop
	set	1, %o5
	b	be_cont.125267
	nop
be_else.125266:
	set	0, %o5
be_cont.125267:
	b	be_cont.125265
	nop
be_else.125264:
	ld	[%i0 + 8], %o5
	ld	[%o5 + 24], %o5
be_cont.125265:
	b	be_cont.125248
	nop
be_else.125247:
	cmp	%o5, 2
	bne	be_else.125268
	nop
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125270
	nop
	set	0, %o5
	b	fble_cont.125271
	nop
fble_else.125270:
	set	1, %o5
fble_cont.125271:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.125272
	nop
	b	be_cont.125273
	nop
be_else.125272:
	cmp	%o5, 0
	bne	be_else.125274
	nop
	set	1, %o5
	b	be_cont.125275
	nop
be_else.125274:
	set	0, %o5
be_cont.125275:
be_cont.125273:
	cmp	%o5, 0
	bne	be_else.125276
	nop
	set	1, %o5
	b	be_cont.125277
	nop
be_else.125276:
	set	0, %o5
be_cont.125277:
	b	be_cont.125269
	nop
be_else.125268:
	st	%o7, [%i0 + 44]
	call	is_second_outside.3299
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
be_cont.125269:
be_cont.125248:
	cmp	%o5, 0
	bne	be_else.125279
	nop
	ld	[%i0 + 4], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125280
	nop
	set	1, %i2
	retl
	nop
be_else.125280:
	st	%o5, [%i0 + 40]
	set	min_caml_objects, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i2
	st	%o7, [%i0 + 44]
	call	is_outside.3317
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125284
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125285
	nop
	set	1, %i2
	retl
	nop
be_else.125285:
	st	%o5, [%i0 + 44]
	set	min_caml_objects, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i2
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.125291
	nop
	st	%i2, [%i0 + 48]
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 56]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 68]
	call	min_caml_abs_float
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 56], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125297
	nop
	set	0, %o5
	b	fble_cont.125298
	nop
fble_else.125297:
	ld	[%i0 + 48], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 8], %f14
	std	%f14, [%i0 + 64]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 76]
	call	min_caml_abs_float
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 64], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125302
	nop
	set	0, %o5
	b	fble_cont.125303
	nop
fble_else.125302:
	ld	[%i0 + 48], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 16], %f14
	std	%f14, [%i0 + 72]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 84]
	call	min_caml_abs_float
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 72], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125306
	nop
	set	0, %o5
	b	fble_cont.125307
	nop
fble_else.125306:
	set	1, %o5
fble_cont.125307:
fble_cont.125303:
fble_cont.125298:
	cmp	%o5, 0
	bne	be_else.125308
	nop
	ld	[%i0 + 48], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.125310
	nop
	set	1, %o5
	b	be_cont.125311
	nop
be_else.125310:
	set	0, %o5
be_cont.125311:
	b	be_cont.125309
	nop
be_else.125308:
	ld	[%i0 + 48], %o5
	ld	[%o5 + 24], %o5
be_cont.125309:
	b	be_cont.125292
	nop
be_else.125291:
	cmp	%o5, 2
	bne	be_else.125312
	nop
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125314
	nop
	set	0, %o5
	b	fble_cont.125315
	nop
fble_else.125314:
	set	1, %o5
fble_cont.125315:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.125316
	nop
	b	be_cont.125317
	nop
be_else.125316:
	cmp	%o5, 0
	bne	be_else.125318
	nop
	set	1, %o5
	b	be_cont.125319
	nop
be_else.125318:
	set	0, %o5
be_cont.125319:
be_cont.125317:
	cmp	%o5, 0
	bne	be_else.125320
	nop
	set	1, %o5
	b	be_cont.125321
	nop
be_else.125320:
	set	0, %o5
be_cont.125321:
	b	be_cont.125313
	nop
be_else.125312:
	st	%o7, [%i0 + 84]
	call	is_second_outside.3299
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
be_cont.125313:
be_cont.125292:
	cmp	%o5, 0
	bne	be_else.125323
	nop
	ld	[%i0 + 44], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125324
	nop
	set	1, %i2
	retl
	nop
be_else.125324:
	st	%o5, [%i0 + 80]
	set	min_caml_objects, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i2
	st	%o7, [%i0 + 84]
	call	is_outside.3317
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125328
	nop
	ld	[%i0 + 80], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 0], %i3
	b	check_all_inside.3346
	nop
be_else.125328:
	set	0, %i2
	retl
	nop
be_else.125323:
	set	0, %i2
	retl
	nop
be_else.125284:
	set	0, %i2
	retl
	nop
be_else.125279:
	set	0, %i2
	retl
	nop
shadow_check_and_group.3357:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.125329
	nop
	set	0, %i2
	retl
	nop
be_else.125329:
	st	%i4, [%i0 + 0]
	st	%i3, [%i0 + 4]
	st	%i2, [%i0 + 8]
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	st	%o5, [%i0 + 12]
	set	min_caml_light, %i3
	set	min_caml_objects, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i2
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.125337
	nop
	st	%o7, [%i0 + 20]
	call	solver_rect.2890
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.125338
	nop
be_else.125337:
	cmp	%o5, 2
	bne	be_else.125340
	nop
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%i3 + 8], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%i3 + 16], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125342
	nop
	set	0, %o5
	b	fble_cont.125343
	nop
fble_else.125342:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	fdivd	%f12, %f14, %f14
	set	min_caml_solver_dist, %o5
	fnegs	%f14, %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.125343:
	b	be_cont.125341
	nop
be_else.125340:
	st	%o7, [%i0 + 20]
	call	solver_second.3180
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
be_cont.125341:
be_cont.125338:
	set	min_caml_solver_dist, %o4
	ldd	[%o4 + 0], %f14
	cmp	%o5, 0
	bne	be_else.125346
	nop
	set	0, %o5
	b	be_cont.125347
	nop
be_else.125346:
	set	l.11296, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125348
	nop
	set	0, %o5
	b	fble_cont.125349
	nop
fble_else.125348:
	set	1, %o5
fble_cont.125349:
be_cont.125347:
	cmp	%o5, 0
	bne	be_else.125350
	nop
	set	min_caml_objects, %o5
	ld	[%i0 + 12], %o4
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.125351
	nop
	set	0, %i2
	retl
	nop
be_else.125351:
	ld	[%i0 + 8], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_and_group.3357
	nop
be_else.125350:
	set	l.11298, %o5
	ldd	[%o5 + 0], %f12
	faddd	%f14, %f12, %f14
	set	min_caml_chkinside_p, %o5
	set	min_caml_light, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f12, %f14, %f12
	ld	[%i0 + 0], %i4
	ldd	[%i4 + 0], %f10
	faddd	%f12, %f10, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_chkinside_p, %o5
	set	min_caml_light, %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f12, %f14, %f12
	ldd	[%i4 + 8], %f10
	faddd	%f12, %f10, %f12
	std	%f12, [%o5 + 8]
	set	min_caml_chkinside_p, %o5
	set	min_caml_light, %o4
	ldd	[%o4 + 16], %f12
	fmuld	%f12, %f14, %f14
	ldd	[%i4 + 16], %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i0 + 4], %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.125358
	nop
	set	1, %o5
	b	be_cont.125359
	nop
be_else.125358:
	set	min_caml_objects, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i2
	st	%o7, [%i0 + 20]
	call	is_outside.3317
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125362
	nop
	ld	[%i0 + 4], %i3
	ld	[%i3 + 4], %o5
	cmp	%o5, -1
	bne	be_else.125364
	nop
	set	1, %o5
	b	be_cont.125365
	nop
be_else.125364:
	set	min_caml_objects, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i2
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.125370
	nop
	st	%i2, [%i0 + 16]
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 24]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 36]
	call	min_caml_abs_float
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 24], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125376
	nop
	set	0, %o5
	b	fble_cont.125377
	nop
fble_else.125376:
	ld	[%i0 + 16], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 8], %f14
	std	%f14, [%i0 + 32]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 44]
	call	min_caml_abs_float
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 32], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125381
	nop
	set	0, %o5
	b	fble_cont.125382
	nop
fble_else.125381:
	ld	[%i0 + 16], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 16], %f14
	std	%f14, [%i0 + 40]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 52]
	call	min_caml_abs_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 40], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125385
	nop
	set	0, %o5
	b	fble_cont.125386
	nop
fble_else.125385:
	set	1, %o5
fble_cont.125386:
fble_cont.125382:
fble_cont.125377:
	cmp	%o5, 0
	bne	be_else.125387
	nop
	ld	[%i0 + 16], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.125389
	nop
	set	1, %o5
	b	be_cont.125390
	nop
be_else.125389:
	set	0, %o5
be_cont.125390:
	b	be_cont.125388
	nop
be_else.125387:
	ld	[%i0 + 16], %o5
	ld	[%o5 + 24], %o5
be_cont.125388:
	b	be_cont.125371
	nop
be_else.125370:
	cmp	%o5, 2
	bne	be_else.125391
	nop
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.125393
	nop
	set	0, %o5
	b	fble_cont.125394
	nop
fble_else.125393:
	set	1, %o5
fble_cont.125394:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.125395
	nop
	b	be_cont.125396
	nop
be_else.125395:
	cmp	%o5, 0
	bne	be_else.125397
	nop
	set	1, %o5
	b	be_cont.125398
	nop
be_else.125397:
	set	0, %o5
be_cont.125398:
be_cont.125396:
	cmp	%o5, 0
	bne	be_else.125399
	nop
	set	1, %o5
	b	be_cont.125400
	nop
be_else.125399:
	set	0, %o5
be_cont.125400:
	b	be_cont.125392
	nop
be_else.125391:
	st	%o7, [%i0 + 52]
	call	is_second_outside.3299
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
be_cont.125392:
be_cont.125371:
	cmp	%o5, 0
	bne	be_else.125402
	nop
	ld	[%i0 + 4], %i3
	ld	[%i3 + 8], %o5
	cmp	%o5, -1
	bne	be_else.125404
	nop
	set	1, %o5
	b	be_cont.125405
	nop
be_else.125404:
	set	min_caml_objects, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i2
	st	%o7, [%i0 + 52]
	call	is_outside.3317
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125408
	nop
	set	3, %i2
	ld	[%i0 + 4], %i3
	st	%o7, [%i0 + 52]
	call	check_all_inside.3346
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.125409
	nop
be_else.125408:
	set	0, %o5
be_cont.125409:
be_cont.125405:
	b	be_cont.125403
	nop
be_else.125402:
	set	0, %o5
be_cont.125403:
be_cont.125365:
	b	be_cont.125363
	nop
be_else.125362:
	set	0, %o5
be_cont.125363:
be_cont.125359:
	cmp	%o5, 0
	bne	be_else.125411
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_and_group.3357
	nop
be_else.125411:
	set	1, %i2
	retl
	nop
shadow_check_one_or_group.3416:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.125412
	nop
	set	0, %i2
	retl
	nop
be_else.125412:
	st	%i4, [%i0 + 0]
	st	%i3, [%i0 + 4]
	st	%i2, [%i0 + 8]
	set	min_caml_and_net, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i3
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	shadow_check_and_group.3357
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125417
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125418
	nop
	set	0, %i2
	retl
	nop
be_else.125418:
	st	%o5, [%i0 + 12]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125423
	nop
	ld	[%i0 + 12], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125424
	nop
	set	0, %i2
	retl
	nop
be_else.125424:
	st	%o5, [%i0 + 16]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125429
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125430
	nop
	set	0, %i2
	retl
	nop
be_else.125430:
	st	%o5, [%i0 + 20]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125435
	nop
	ld	[%i0 + 20], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125436
	nop
	set	0, %i2
	retl
	nop
be_else.125436:
	st	%o5, [%i0 + 24]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125441
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125442
	nop
	set	0, %i2
	retl
	nop
be_else.125442:
	st	%o5, [%i0 + 28]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125447
	nop
	ld	[%i0 + 28], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125448
	nop
	set	0, %i2
	retl
	nop
be_else.125448:
	st	%o5, [%i0 + 32]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125453
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.125454
	nop
	set	0, %i2
	retl
	nop
be_else.125454:
	st	%o5, [%i0 + 36]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125459
	nop
	ld	[%i0 + 36], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_group.3416
	nop
be_else.125459:
	set	1, %i2
	retl
	nop
be_else.125453:
	set	1, %i2
	retl
	nop
be_else.125447:
	set	1, %i2
	retl
	nop
be_else.125441:
	set	1, %i2
	retl
	nop
be_else.125435:
	set	1, %i2
	retl
	nop
be_else.125429:
	set	1, %i2
	retl
	nop
be_else.125423:
	set	1, %i2
	retl
	nop
be_else.125417:
	set	1, %i2
	retl
	nop
shadow_check_one_or_matrix.3429:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.125460
	nop
	set	0, %i2
	retl
	nop
be_else.125460:
	cmp	%o4, 99
	bne	be_else.125461
	nop
	st	%i4, [%i0 + 0]
	st	%i3, [%i0 + 4]
	st	%i2, [%i0 + 8]
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.125465
	nop
	set	0, %o5
	b	be_cont.125466
	nop
be_else.125465:
	st	%o5, [%i0 + 12]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125470
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125472
	nop
	set	0, %o5
	b	be_cont.125473
	nop
be_else.125472:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125477
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125479
	nop
	set	0, %o5
	b	be_cont.125480
	nop
be_else.125479:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125484
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125486
	nop
	set	0, %o5
	b	be_cont.125487
	nop
be_else.125486:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125491
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125493
	nop
	set	0, %o5
	b	be_cont.125494
	nop
be_else.125493:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125498
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125500
	nop
	set	0, %o5
	b	be_cont.125501
	nop
be_else.125500:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125505
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 28], %o4
	cmp	%o4, -1
	bne	be_else.125507
	nop
	set	0, %o5
	b	be_cont.125508
	nop
be_else.125507:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_and_group.3357
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125512
	nop
	set	8, %i2
	ld	[%i0 + 12], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 20]
	call	shadow_check_one_or_group.3416
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.125513
	nop
be_else.125512:
	set	1, %o5
be_cont.125513:
be_cont.125508:
	b	be_cont.125506
	nop
be_else.125505:
	set	1, %o5
be_cont.125506:
be_cont.125501:
	b	be_cont.125499
	nop
be_else.125498:
	set	1, %o5
be_cont.125499:
be_cont.125494:
	b	be_cont.125492
	nop
be_else.125491:
	set	1, %o5
be_cont.125492:
be_cont.125487:
	b	be_cont.125485
	nop
be_else.125484:
	set	1, %o5
be_cont.125485:
be_cont.125480:
	b	be_cont.125478
	nop
be_else.125477:
	set	1, %o5
be_cont.125478:
be_cont.125473:
	b	be_cont.125471
	nop
be_else.125470:
	set	1, %o5
be_cont.125471:
be_cont.125466:
	cmp	%o5, 0
	bne	be_else.125515
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.125516
	nop
	set	0, %i2
	retl
	nop
be_else.125516:
	cmp	%i2, 99
	bne	be_else.125517
	nop
	st	%o5, [%i0 + 16]
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.125521
	nop
	set	0, %o5
	b	be_cont.125522
	nop
be_else.125521:
	st	%o4, [%i0 + 20]
	set	min_caml_and_net, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125526
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125528
	nop
	set	0, %o5
	b	be_cont.125529
	nop
be_else.125528:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125533
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125535
	nop
	set	0, %o5
	b	be_cont.125536
	nop
be_else.125535:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125540
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125542
	nop
	set	0, %o5
	b	be_cont.125543
	nop
be_else.125542:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125547
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125549
	nop
	set	0, %o5
	b	be_cont.125550
	nop
be_else.125549:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125554
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125556
	nop
	set	0, %o5
	b	be_cont.125557
	nop
be_else.125556:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125561
	nop
	set	7, %i2
	ld	[%i0 + 20], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_one_or_group.3416
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.125562
	nop
be_else.125561:
	set	1, %o5
be_cont.125562:
be_cont.125557:
	b	be_cont.125555
	nop
be_else.125554:
	set	1, %o5
be_cont.125555:
be_cont.125550:
	b	be_cont.125548
	nop
be_else.125547:
	set	1, %o5
be_cont.125548:
be_cont.125543:
	b	be_cont.125541
	nop
be_else.125540:
	set	1, %o5
be_cont.125541:
be_cont.125536:
	b	be_cont.125534
	nop
be_else.125533:
	set	1, %o5
be_cont.125534:
be_cont.125529:
	b	be_cont.125527
	nop
be_else.125526:
	set	1, %o5
be_cont.125527:
be_cont.125522:
	cmp	%o5, 0
	bne	be_else.125564
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125564:
	set	1, %i2
	retl
	nop
be_else.125517:
	st	%o4, [%i0 + 20]
	st	%o5, [%i0 + 16]
	set	min_caml_light, %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	solver.3224
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125570
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125570:
	set	l.11380, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125571
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
fble_else.125571:
	ld	[%i0 + 20], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.125575
	nop
	set	0, %o5
	b	be_cont.125576
	nop
be_else.125575:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125580
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125582
	nop
	set	0, %o5
	b	be_cont.125583
	nop
be_else.125582:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125587
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125589
	nop
	set	0, %o5
	b	be_cont.125590
	nop
be_else.125589:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125594
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125596
	nop
	set	0, %o5
	b	be_cont.125597
	nop
be_else.125596:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125601
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125603
	nop
	set	0, %o5
	b	be_cont.125604
	nop
be_else.125603:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125608
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125610
	nop
	set	0, %o5
	b	be_cont.125611
	nop
be_else.125610:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125615
	nop
	set	7, %i2
	ld	[%i0 + 20], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_one_or_group.3416
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.125616
	nop
be_else.125615:
	set	1, %o5
be_cont.125616:
be_cont.125611:
	b	be_cont.125609
	nop
be_else.125608:
	set	1, %o5
be_cont.125609:
be_cont.125604:
	b	be_cont.125602
	nop
be_else.125601:
	set	1, %o5
be_cont.125602:
be_cont.125597:
	b	be_cont.125595
	nop
be_else.125594:
	set	1, %o5
be_cont.125595:
be_cont.125590:
	b	be_cont.125588
	nop
be_else.125587:
	set	1, %o5
be_cont.125588:
be_cont.125583:
	b	be_cont.125581
	nop
be_else.125580:
	set	1, %o5
be_cont.125581:
be_cont.125576:
	cmp	%o5, 0
	bne	be_else.125618
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125618:
	set	1, %i2
	retl
	nop
be_else.125515:
	set	1, %i2
	retl
	nop
be_else.125461:
	st	%o5, [%i0 + 12]
	st	%i4, [%i0 + 0]
	st	%i3, [%i0 + 4]
	st	%i2, [%i0 + 8]
	set	min_caml_light, %i3
	set	min_caml_objects, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i2
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_solver_w_vec, %o5
	ldd	[%i4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.125626
	nop
	st	%o7, [%i0 + 28]
	call	solver_rect.2890
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.125627
	nop
be_else.125626:
	cmp	%o5, 2
	bne	be_else.125629
	nop
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%i3 + 8], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%i3 + 16], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125631
	nop
	set	0, %o5
	b	fble_cont.125632
	nop
fble_else.125631:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	fdivd	%f12, %f14, %f14
	set	min_caml_solver_dist, %o5
	fnegs	%f14, %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.125632:
	b	be_cont.125630
	nop
be_else.125629:
	st	%o7, [%i0 + 28]
	call	solver_second.3180
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
be_cont.125630:
be_cont.125627:
	cmp	%o5, 0
	bne	be_else.125635
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.125636
	nop
	set	0, %i2
	retl
	nop
be_else.125636:
	cmp	%i2, 99
	bne	be_else.125637
	nop
	st	%o5, [%i0 + 24]
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.125641
	nop
	set	0, %o5
	b	be_cont.125642
	nop
be_else.125641:
	st	%o4, [%i0 + 28]
	set	min_caml_and_net, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125646
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125648
	nop
	set	0, %o5
	b	be_cont.125649
	nop
be_else.125648:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125653
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125655
	nop
	set	0, %o5
	b	be_cont.125656
	nop
be_else.125655:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125660
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125662
	nop
	set	0, %o5
	b	be_cont.125663
	nop
be_else.125662:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125667
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125669
	nop
	set	0, %o5
	b	be_cont.125670
	nop
be_else.125669:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125674
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125676
	nop
	set	0, %o5
	b	be_cont.125677
	nop
be_else.125676:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125681
	nop
	set	7, %i2
	ld	[%i0 + 28], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_one_or_group.3416
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.125682
	nop
be_else.125681:
	set	1, %o5
be_cont.125682:
be_cont.125677:
	b	be_cont.125675
	nop
be_else.125674:
	set	1, %o5
be_cont.125675:
be_cont.125670:
	b	be_cont.125668
	nop
be_else.125667:
	set	1, %o5
be_cont.125668:
be_cont.125663:
	b	be_cont.125661
	nop
be_else.125660:
	set	1, %o5
be_cont.125661:
be_cont.125656:
	b	be_cont.125654
	nop
be_else.125653:
	set	1, %o5
be_cont.125654:
be_cont.125649:
	b	be_cont.125647
	nop
be_else.125646:
	set	1, %o5
be_cont.125647:
be_cont.125642:
	cmp	%o5, 0
	bne	be_else.125684
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125684:
	set	1, %i2
	retl
	nop
be_else.125637:
	st	%o4, [%i0 + 28]
	st	%o5, [%i0 + 24]
	set	min_caml_light, %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	solver.3224
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125690
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125690:
	set	l.11380, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125691
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
fble_else.125691:
	ld	[%i0 + 28], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.125695
	nop
	set	0, %o5
	b	be_cont.125696
	nop
be_else.125695:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125700
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125702
	nop
	set	0, %o5
	b	be_cont.125703
	nop
be_else.125702:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125707
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125709
	nop
	set	0, %o5
	b	be_cont.125710
	nop
be_else.125709:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125714
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125716
	nop
	set	0, %o5
	b	be_cont.125717
	nop
be_else.125716:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125721
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125723
	nop
	set	0, %o5
	b	be_cont.125724
	nop
be_else.125723:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125728
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125730
	nop
	set	0, %o5
	b	be_cont.125731
	nop
be_else.125730:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_and_group.3357
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125735
	nop
	set	7, %i2
	ld	[%i0 + 28], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 36]
	call	shadow_check_one_or_group.3416
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.125736
	nop
be_else.125735:
	set	1, %o5
be_cont.125736:
be_cont.125731:
	b	be_cont.125729
	nop
be_else.125728:
	set	1, %o5
be_cont.125729:
be_cont.125724:
	b	be_cont.125722
	nop
be_else.125721:
	set	1, %o5
be_cont.125722:
be_cont.125717:
	b	be_cont.125715
	nop
be_else.125714:
	set	1, %o5
be_cont.125715:
be_cont.125710:
	b	be_cont.125708
	nop
be_else.125707:
	set	1, %o5
be_cont.125708:
be_cont.125703:
	b	be_cont.125701
	nop
be_else.125700:
	set	1, %o5
be_cont.125701:
be_cont.125696:
	cmp	%o5, 0
	bne	be_else.125738
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125738:
	set	1, %i2
	retl
	nop
be_else.125635:
	set	l.11380, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125739
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.125740
	nop
	set	0, %i2
	retl
	nop
be_else.125740:
	cmp	%i2, 99
	bne	be_else.125741
	nop
	st	%o5, [%i0 + 32]
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.125745
	nop
	set	0, %o5
	b	be_cont.125746
	nop
be_else.125745:
	st	%o4, [%i0 + 36]
	set	min_caml_and_net, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125750
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125752
	nop
	set	0, %o5
	b	be_cont.125753
	nop
be_else.125752:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125757
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125759
	nop
	set	0, %o5
	b	be_cont.125760
	nop
be_else.125759:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125764
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125766
	nop
	set	0, %o5
	b	be_cont.125767
	nop
be_else.125766:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125771
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125773
	nop
	set	0, %o5
	b	be_cont.125774
	nop
be_else.125773:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125778
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125780
	nop
	set	0, %o5
	b	be_cont.125781
	nop
be_else.125780:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125785
	nop
	set	7, %i2
	ld	[%i0 + 36], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_one_or_group.3416
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.125786
	nop
be_else.125785:
	set	1, %o5
be_cont.125786:
be_cont.125781:
	b	be_cont.125779
	nop
be_else.125778:
	set	1, %o5
be_cont.125779:
be_cont.125774:
	b	be_cont.125772
	nop
be_else.125771:
	set	1, %o5
be_cont.125772:
be_cont.125767:
	b	be_cont.125765
	nop
be_else.125764:
	set	1, %o5
be_cont.125765:
be_cont.125760:
	b	be_cont.125758
	nop
be_else.125757:
	set	1, %o5
be_cont.125758:
be_cont.125753:
	b	be_cont.125751
	nop
be_else.125750:
	set	1, %o5
be_cont.125751:
be_cont.125746:
	cmp	%o5, 0
	bne	be_else.125788
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125788:
	set	1, %i2
	retl
	nop
be_else.125741:
	st	%o4, [%i0 + 36]
	st	%o5, [%i0 + 32]
	set	min_caml_light, %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	solver.3224
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125794
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125794:
	set	l.11380, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125795
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
fble_else.125795:
	ld	[%i0 + 36], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.125799
	nop
	set	0, %o5
	b	be_cont.125800
	nop
be_else.125799:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125804
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125806
	nop
	set	0, %o5
	b	be_cont.125807
	nop
be_else.125806:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125811
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125813
	nop
	set	0, %o5
	b	be_cont.125814
	nop
be_else.125813:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125818
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125820
	nop
	set	0, %o5
	b	be_cont.125821
	nop
be_else.125820:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125825
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125827
	nop
	set	0, %o5
	b	be_cont.125828
	nop
be_else.125827:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125832
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125834
	nop
	set	0, %o5
	b	be_cont.125835
	nop
be_else.125834:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125839
	nop
	set	7, %i2
	ld	[%i0 + 36], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_one_or_group.3416
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.125840
	nop
be_else.125839:
	set	1, %o5
be_cont.125840:
be_cont.125835:
	b	be_cont.125833
	nop
be_else.125832:
	set	1, %o5
be_cont.125833:
be_cont.125828:
	b	be_cont.125826
	nop
be_else.125825:
	set	1, %o5
be_cont.125826:
be_cont.125821:
	b	be_cont.125819
	nop
be_else.125818:
	set	1, %o5
be_cont.125819:
be_cont.125814:
	b	be_cont.125812
	nop
be_else.125811:
	set	1, %o5
be_cont.125812:
be_cont.125807:
	b	be_cont.125805
	nop
be_else.125804:
	set	1, %o5
be_cont.125805:
be_cont.125800:
	cmp	%o5, 0
	bne	be_else.125842
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125842:
	set	1, %i2
	retl
	nop
fble_else.125739:
	ld	[%i0 + 12], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.125846
	nop
	set	0, %o5
	b	be_cont.125847
	nop
be_else.125846:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125851
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125853
	nop
	set	0, %o5
	b	be_cont.125854
	nop
be_else.125853:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125858
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125860
	nop
	set	0, %o5
	b	be_cont.125861
	nop
be_else.125860:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125865
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125867
	nop
	set	0, %o5
	b	be_cont.125868
	nop
be_else.125867:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125872
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125874
	nop
	set	0, %o5
	b	be_cont.125875
	nop
be_else.125874:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125879
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125881
	nop
	set	0, %o5
	b	be_cont.125882
	nop
be_else.125881:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125886
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 28], %o4
	cmp	%o4, -1
	bne	be_else.125888
	nop
	set	0, %o5
	b	be_cont.125889
	nop
be_else.125888:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_and_group.3357
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125893
	nop
	set	8, %i2
	ld	[%i0 + 12], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 44]
	call	shadow_check_one_or_group.3416
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.125894
	nop
be_else.125893:
	set	1, %o5
be_cont.125894:
be_cont.125889:
	b	be_cont.125887
	nop
be_else.125886:
	set	1, %o5
be_cont.125887:
be_cont.125882:
	b	be_cont.125880
	nop
be_else.125879:
	set	1, %o5
be_cont.125880:
be_cont.125875:
	b	be_cont.125873
	nop
be_else.125872:
	set	1, %o5
be_cont.125873:
be_cont.125868:
	b	be_cont.125866
	nop
be_else.125865:
	set	1, %o5
be_cont.125866:
be_cont.125861:
	b	be_cont.125859
	nop
be_else.125858:
	set	1, %o5
be_cont.125859:
be_cont.125854:
	b	be_cont.125852
	nop
be_else.125851:
	set	1, %o5
be_cont.125852:
be_cont.125847:
	cmp	%o5, 0
	bne	be_else.125896
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.125897
	nop
	set	0, %i2
	retl
	nop
be_else.125897:
	cmp	%i2, 99
	bne	be_else.125898
	nop
	st	%o5, [%i0 + 40]
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.125902
	nop
	set	0, %o5
	b	be_cont.125903
	nop
be_else.125902:
	st	%o4, [%i0 + 44]
	set	min_caml_and_net, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125907
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125909
	nop
	set	0, %o5
	b	be_cont.125910
	nop
be_else.125909:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125914
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125916
	nop
	set	0, %o5
	b	be_cont.125917
	nop
be_else.125916:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125921
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125923
	nop
	set	0, %o5
	b	be_cont.125924
	nop
be_else.125923:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125928
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125930
	nop
	set	0, %o5
	b	be_cont.125931
	nop
be_else.125930:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125935
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125937
	nop
	set	0, %o5
	b	be_cont.125938
	nop
be_else.125937:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125942
	nop
	set	7, %i2
	ld	[%i0 + 44], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_one_or_group.3416
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.125943
	nop
be_else.125942:
	set	1, %o5
be_cont.125943:
be_cont.125938:
	b	be_cont.125936
	nop
be_else.125935:
	set	1, %o5
be_cont.125936:
be_cont.125931:
	b	be_cont.125929
	nop
be_else.125928:
	set	1, %o5
be_cont.125929:
be_cont.125924:
	b	be_cont.125922
	nop
be_else.125921:
	set	1, %o5
be_cont.125922:
be_cont.125917:
	b	be_cont.125915
	nop
be_else.125914:
	set	1, %o5
be_cont.125915:
be_cont.125910:
	b	be_cont.125908
	nop
be_else.125907:
	set	1, %o5
be_cont.125908:
be_cont.125903:
	cmp	%o5, 0
	bne	be_else.125945
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125945:
	set	1, %i2
	retl
	nop
be_else.125898:
	st	%o4, [%i0 + 44]
	st	%o5, [%i0 + 40]
	set	min_caml_light, %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	solver.3224
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125951
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125951:
	set	l.11380, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.125952
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
fble_else.125952:
	ld	[%i0 + 44], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.125956
	nop
	set	0, %o5
	b	be_cont.125957
	nop
be_else.125956:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125961
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.125963
	nop
	set	0, %o5
	b	be_cont.125964
	nop
be_else.125963:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125968
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.125970
	nop
	set	0, %o5
	b	be_cont.125971
	nop
be_else.125970:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125975
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.125977
	nop
	set	0, %o5
	b	be_cont.125978
	nop
be_else.125977:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125982
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.125984
	nop
	set	0, %o5
	b	be_cont.125985
	nop
be_else.125984:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125989
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.125991
	nop
	set	0, %o5
	b	be_cont.125992
	nop
be_else.125991:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_and_group.3357
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.125996
	nop
	set	7, %i2
	ld	[%i0 + 44], %i3
	ld	[%i0 + 0], %i4
	st	%o7, [%i0 + 52]
	call	shadow_check_one_or_group.3416
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.125997
	nop
be_else.125996:
	set	1, %o5
be_cont.125997:
be_cont.125992:
	b	be_cont.125990
	nop
be_else.125989:
	set	1, %o5
be_cont.125990:
be_cont.125985:
	b	be_cont.125983
	nop
be_else.125982:
	set	1, %o5
be_cont.125983:
be_cont.125978:
	b	be_cont.125976
	nop
be_else.125975:
	set	1, %o5
be_cont.125976:
be_cont.125971:
	b	be_cont.125969
	nop
be_else.125968:
	set	1, %o5
be_cont.125969:
be_cont.125964:
	b	be_cont.125962
	nop
be_else.125961:
	set	1, %o5
be_cont.125962:
be_cont.125957:
	cmp	%o5, 0
	bne	be_else.125999
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.125999:
	set	1, %i2
	retl
	nop
be_else.125896:
	set	1, %i2
	retl
	nop
solve_each_element.3459:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.126000
	nop
	retl
	nop
be_else.126000:
	st	%i2, [%i0 + 0]
	st	%i3, [%i0 + 4]
	st	%o5, [%i0 + 8]
	set	min_caml_vscan, %i3
	set	min_caml_viewpoint, %o4
	set	min_caml_objects, %o3
	sll	%o5, 2, %o5
	ld	[%o3 + %o5], %i2
	set	min_caml_solver_w_vec, %o5
	ldd	[%o4 + 0], %f14
	ld	[%i2 + 20], %o3
	ldd	[%o3 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_solver_w_vec, %o5
	ldd	[%o4 + 8], %f14
	ld	[%i2 + 20], %o3
	ldd	[%o3 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_solver_w_vec, %o5
	ldd	[%o4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.126008
	nop
	st	%o7, [%i0 + 12]
	call	solver_rect.2890
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.126009
	nop
be_else.126008:
	cmp	%o5, 2
	bne	be_else.126011
	nop
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%i3 + 8], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%i3 + 16], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126013
	nop
	set	0, %o5
	b	fble_cont.126014
	nop
fble_else.126013:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	fdivd	%f12, %f14, %f14
	set	min_caml_solver_dist, %o5
	fnegs	%f14, %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.126014:
	b	be_cont.126012
	nop
be_else.126011:
	st	%o7, [%i0 + 12]
	call	solver_second.3180
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
be_cont.126012:
be_cont.126009:
	cmp	%o5, 0
	bne	be_else.126018
	nop
	set	min_caml_objects, %o5
	ld	[%i0 + 8], %o4
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.126020
	nop
	set	min_caml_end_flag, %o5
	set	1, %o4
	st	%o4, [%o5 + 0]
	b	be_cont.126021
	nop
be_else.126020:
be_cont.126021:
	b	be_cont.126019
	nop
be_else.126018:
	set	min_caml_solver_dist, %o4
	ldd	[%o4 + 0], %f14
	set	l.11380, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126022
	nop
	b	fble_cont.126023
	nop
fble_else.126022:
	set	min_caml_tmin, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126024
	nop
	b	fble_cont.126025
	nop
fble_else.126024:
	st	%o5, [%i0 + 12]
	set	l.11298, %o5
	ldd	[%o5 + 0], %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%i0 + 16]
	set	min_caml_chkinside_p, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f12, %f14, %f12
	set	min_caml_viewpoint, %o4
	ldd	[%o4 + 0], %f10
	faddd	%f12, %f10, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_chkinside_p, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f12, %f14, %f12
	set	min_caml_viewpoint, %o4
	ldd	[%o4 + 8], %f10
	faddd	%f12, %f10, %f12
	std	%f12, [%o5 + 8]
	set	min_caml_chkinside_p, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 16], %f12
	fmuld	%f12, %f14, %f14
	set	min_caml_viewpoint, %o4
	ldd	[%o4 + 16], %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i0 + 4], %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.126032
	nop
	set	1, %o5
	b	be_cont.126033
	nop
be_else.126032:
	set	min_caml_objects, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i2
	st	%o7, [%i0 + 28]
	call	is_outside.3317
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126036
	nop
	ld	[%i0 + 4], %i3
	ld	[%i3 + 4], %o5
	cmp	%o5, -1
	bne	be_else.126038
	nop
	set	1, %o5
	b	be_cont.126039
	nop
be_else.126038:
	set	min_caml_objects, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i2
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_isoutside_q, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.126044
	nop
	st	%i2, [%i0 + 24]
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 32]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 44]
	call	min_caml_abs_float
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 32], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126050
	nop
	set	0, %o5
	b	fble_cont.126051
	nop
fble_else.126050:
	ld	[%i0 + 24], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 8], %f14
	std	%f14, [%i0 + 40]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 52]
	call	min_caml_abs_float
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 40], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126055
	nop
	set	0, %o5
	b	fble_cont.126056
	nop
fble_else.126055:
	ld	[%i0 + 24], %o5
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 16], %f14
	std	%f14, [%i0 + 48]
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 60]
	call	min_caml_abs_float
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 48], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126059
	nop
	set	0, %o5
	b	fble_cont.126060
	nop
fble_else.126059:
	set	1, %o5
fble_cont.126060:
fble_cont.126056:
fble_cont.126051:
	cmp	%o5, 0
	bne	be_else.126061
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.126063
	nop
	set	1, %o5
	b	be_cont.126064
	nop
be_else.126063:
	set	0, %o5
be_cont.126064:
	b	be_cont.126062
	nop
be_else.126061:
	ld	[%i0 + 24], %o5
	ld	[%o5 + 24], %o5
be_cont.126062:
	b	be_cont.126045
	nop
be_else.126044:
	cmp	%o5, 2
	bne	be_else.126065
	nop
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f12
	set	min_caml_isoutside_q, %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126067
	nop
	set	0, %o5
	b	fble_cont.126068
	nop
fble_else.126067:
	set	1, %o5
fble_cont.126068:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.126069
	nop
	b	be_cont.126070
	nop
be_else.126069:
	cmp	%o5, 0
	bne	be_else.126071
	nop
	set	1, %o5
	b	be_cont.126072
	nop
be_else.126071:
	set	0, %o5
be_cont.126072:
be_cont.126070:
	cmp	%o5, 0
	bne	be_else.126073
	nop
	set	1, %o5
	b	be_cont.126074
	nop
be_else.126073:
	set	0, %o5
be_cont.126074:
	b	be_cont.126066
	nop
be_else.126065:
	st	%o7, [%i0 + 60]
	call	is_second_outside.3299
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
be_cont.126066:
be_cont.126045:
	cmp	%o5, 0
	bne	be_else.126076
	nop
	ld	[%i0 + 4], %i3
	ld	[%i3 + 8], %o5
	cmp	%o5, -1
	bne	be_else.126078
	nop
	set	1, %o5
	b	be_cont.126079
	nop
be_else.126078:
	set	min_caml_objects, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i2
	st	%o7, [%i0 + 60]
	call	is_outside.3317
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126082
	nop
	set	3, %i2
	ld	[%i0 + 4], %i3
	st	%o7, [%i0 + 60]
	call	check_all_inside.3346
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.126083
	nop
be_else.126082:
	set	0, %o5
be_cont.126083:
be_cont.126079:
	b	be_cont.126077
	nop
be_else.126076:
	set	0, %o5
be_cont.126077:
be_cont.126039:
	b	be_cont.126037
	nop
be_else.126036:
	set	0, %o5
be_cont.126037:
be_cont.126033:
	cmp	%o5, 0
	bne	be_else.126085
	nop
	b	be_cont.126086
	nop
be_else.126085:
	set	min_caml_tmin, %o5
	ldd	[%i0 + 16], %f14
	std	%f14, [%o5 + 0]
	set	min_caml_crashed_point, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 0]
	set	min_caml_crashed_point, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 8], %f14
	std	%f14, [%o5 + 8]
	set	min_caml_crashed_point, %o5
	set	min_caml_chkinside_p, %o4
	ldd	[%o4 + 16], %f14
	std	%f14, [%o5 + 16]
	set	min_caml_intsec_rectside, %o5
	ld	[%i0 + 12], %o4
	st	%o4, [%o5 + 0]
	set	min_caml_crashed_object, %o5
	ld	[%i0 + 8], %o4
	st	%o4, [%o5 + 0]
be_cont.126086:
fble_cont.126025:
fble_cont.126023:
be_cont.126019:
	set	min_caml_end_flag, %o5
	ld	[%o5 + 0], %o5
	cmp	%o5, 0
	bne	be_else.126093
	nop
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	b	solve_each_element.3459
	nop
be_else.126093:
	retl
	nop
solve_one_or_network.3553:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.126095
	nop
	retl
	nop
be_else.126095:
	st	%i3, [%i0 + 0]
	st	%i2, [%i0 + 4]
	set	min_caml_and_net, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	solve_each_element.3459
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ld	[%i0 + 4], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.126103
	nop
	retl
	nop
be_else.126103:
	st	%o5, [%i0 + 8]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	solve_each_element.3459
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.126111
	nop
	retl
	nop
be_else.126111:
	st	%o5, [%i0 + 12]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 20]
	call	solve_each_element.3459
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	ld	[%i0 + 12], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.126119
	nop
	retl
	nop
be_else.126119:
	st	%o5, [%i0 + 16]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 20]
	call	solve_each_element.3459
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 0], %i3
	b	solve_one_or_network.3553
	nop
trace_or_matrix.3568:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.126127
	nop
	retl
	nop
be_else.126127:
	st	%i3, [%i0 + 0]
	st	%i2, [%i0 + 4]
	cmp	%o4, 99
	bne	be_else.126132
	nop
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.126134
	nop
	b	be_cont.126135
	nop
be_else.126134:
	st	%o5, [%i0 + 8]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	solve_each_element.3459
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ld	[%i0 + 8], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.126141
	nop
	b	be_cont.126142
	nop
be_else.126141:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	solve_each_element.3459
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ld	[%i0 + 8], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.126148
	nop
	b	be_cont.126149
	nop
be_else.126148:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	solve_each_element.3459
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	set	4, %i2
	ld	[%i0 + 8], %i3
	st	%o7, [%i0 + 12]
	call	solve_one_or_network.3553
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
be_cont.126149:
be_cont.126142:
be_cont.126135:
	b	be_cont.126133
	nop
be_else.126132:
	st	%o5, [%i0 + 8]
	set	min_caml_vscan, %i3
	set	min_caml_viewpoint, %o5
	set	min_caml_objects, %o3
	sll	%o4, 2, %o4
	ld	[%o3 + %o4], %i2
	set	min_caml_solver_w_vec, %o4
	ldd	[%o5 + 0], %f14
	ld	[%i2 + 20], %o3
	ldd	[%o3 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o4 + 0]
	set	min_caml_solver_w_vec, %o4
	ldd	[%o5 + 8], %f14
	ld	[%i2 + 20], %o3
	ldd	[%o3 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o4 + 8]
	set	min_caml_solver_w_vec, %o4
	ldd	[%o5 + 16], %f14
	ld	[%i2 + 20], %o5
	ldd	[%o5 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o4 + 16]
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.126160
	nop
	st	%o7, [%i0 + 12]
	call	solver_rect.2890
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.126161
	nop
be_else.126160:
	cmp	%o5, 2
	bne	be_else.126163
	nop
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%i3 + 8], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%i3 + 16], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126165
	nop
	set	0, %o5
	b	fble_cont.126166
	nop
fble_else.126165:
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 0], %f12
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 8], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	min_caml_solver_w_vec, %o5
	ldd	[%o5 + 16], %f10
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 16], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	fdivd	%f12, %f14, %f14
	set	min_caml_solver_dist, %o5
	fnegs	%f14, %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.126166:
	b	be_cont.126164
	nop
be_else.126163:
	st	%o7, [%i0 + 12]
	call	solver_second.3180
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
be_cont.126164:
be_cont.126161:
	cmp	%o5, 0
	bne	be_else.126169
	nop
	b	be_cont.126170
	nop
be_else.126169:
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_tmin, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126171
	nop
	b	fble_cont.126172
	nop
fble_else.126171:
	ld	[%i0 + 8], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.126173
	nop
	b	be_cont.126174
	nop
be_else.126173:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	solve_each_element.3459
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ld	[%i0 + 8], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.126180
	nop
	b	be_cont.126181
	nop
be_else.126180:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	solve_each_element.3459
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	ld	[%i0 + 8], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.126187
	nop
	b	be_cont.126188
	nop
be_else.126187:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 12]
	call	solve_each_element.3459
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	set	4, %i2
	ld	[%i0 + 8], %i3
	st	%o7, [%i0 + 12]
	call	solve_one_or_network.3553
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
be_cont.126188:
be_cont.126181:
be_cont.126174:
fble_cont.126172:
be_cont.126170:
be_cont.126133:
	ld	[%i0 + 4], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.126196
	nop
	retl
	nop
be_else.126196:
	st	%o5, [%i0 + 12]
	cmp	%i2, 99
	bne	be_else.126201
	nop
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.126203
	nop
	b	be_cont.126204
	nop
be_else.126203:
	st	%o4, [%i0 + 16]
	set	min_caml_and_net, %o4
	sll	%o5, 2, %o5
	ld	[%o4 + %o5], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 20]
	call	solve_each_element.3459
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	ld	[%i0 + 16], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.126210
	nop
	b	be_cont.126211
	nop
be_else.126210:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 20]
	call	solve_each_element.3459
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	set	3, %i2
	ld	[%i0 + 16], %i3
	st	%o7, [%i0 + 20]
	call	solve_one_or_network.3553
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
be_cont.126211:
be_cont.126204:
	b	be_cont.126202
	nop
be_else.126201:
	st	%o4, [%i0 + 16]
	set	min_caml_vscan, %i3
	set	min_caml_viewpoint, %i4
	st	%o7, [%i0 + 20]
	call	solver.3224
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126220
	nop
	b	be_cont.126221
	nop
be_else.126220:
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_tmin, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126222
	nop
	b	fble_cont.126223
	nop
fble_else.126222:
	ld	[%i0 + 16], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.126224
	nop
	b	be_cont.126225
	nop
be_else.126224:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 20]
	call	solve_each_element.3459
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	ld	[%i0 + 16], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.126231
	nop
	b	be_cont.126232
	nop
be_else.126231:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	min_caml_end_flag, %o5
	set	0, %o4
	st	%o4, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 20]
	call	solve_each_element.3459
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	set	3, %i2
	ld	[%i0 + 16], %i3
	st	%o7, [%i0 + 20]
	call	solve_one_or_network.3553
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
be_cont.126232:
be_cont.126225:
fble_cont.126223:
be_cont.126221:
be_cont.126202:
	ld	[%i0 + 12], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 0], %i3
	b	trace_or_matrix.3568
	nop
get_nvector_rect.3608:
	set	min_caml_intsec_rectside, %o5
	ld	[%o5 + 0], %o5
	cmp	%o5, 1
	bne	be_else.126240
	nop
	set	min_caml_nvector, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 0], %f14
	set	l.10753, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126241
	nop
	set	l.10793, %o4
	ldd	[%o4 + 0], %f14
	b	fble_cont.126242
	nop
fble_else.126241:
	set	l.10791, %o4
	ldd	[%o4 + 0], %f14
fble_cont.126242:
	fnegs	%f14, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_nvector, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 8]
	set	min_caml_nvector, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.126240:
	cmp	%o5, 2
	bne	be_else.126246
	nop
	set	min_caml_nvector, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 0]
	set	min_caml_nvector, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 8], %f14
	set	l.10753, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126248
	nop
	set	l.10793, %o4
	ldd	[%o4 + 0], %f14
	b	fble_cont.126249
	nop
fble_else.126248:
	set	l.10791, %o4
	ldd	[%o4 + 0], %f14
fble_cont.126249:
	fnegs	%f14, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_nvector, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.126246:
	cmp	%o5, 3
	bne	be_else.126252
	nop
	set	min_caml_nvector, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 0]
	set	min_caml_nvector, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 8]
	set	min_caml_nvector, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 16], %f14
	set	l.10753, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126255
	nop
	set	l.10793, %o4
	ldd	[%o4 + 0], %f14
	b	fble_cont.126256
	nop
fble_else.126255:
	set	l.10791, %o4
	ldd	[%o4 + 0], %f14
fble_cont.126256:
	fnegs	%f14, %f14
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.126252:
	retl
	nop
get_nvector_second_norot.3677:
	set	min_caml_nvector, %o5
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_nvector, %o5
	ldd	[%i3 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_nvector, %o5
	ldd	[%i3 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 16], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	set	min_caml_nvector, %o5
	st	%o5, [%i0 + 0]
	ld	[%i2 + 24], %o4
	st	%o4, [%i0 + 4]
	ldd	[%o5 + 0], %f14
	fmuld	%f14, %f14, %f14
	ldd	[%o5 + 8], %f12
	fmuld	%f12, %f12, %f12
	faddd	%f14, %f12, %f14
	ldd	[%o5 + 16], %f12
	fmuld	%f12, %f12, %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 12]
	call	min_caml_sqrt
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 4], %o5
	cmp	%o5, 0
	bne	be_else.126265
	nop
	b	be_cont.126266
	nop
be_else.126265:
	fnegs	%f14, %f14
be_cont.126266:
	ld	[%i0 + 0], %o5
	ldd	[%o5 + 0], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	ldd	[%o5 + 8], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 8]
	ldd	[%o5 + 16], %f12
	fdivd	%f12, %f14, %f14
	std	%f14, [%o5 + 16]
	retl
	nop
get_nvector_second_rot.3709:
	set	min_caml_nvector_w, %o5
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_nvector_w, %o5
	ldd	[%i3 + 8], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_nvector_w, %o5
	ldd	[%i3 + 16], %f14
	ld	[%i2 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	set	min_caml_nvector, %o5
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 0], %f14
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 8], %f12
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 16], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 16], %f10
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 8], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	l.10876, %o4
	ldd	[%o4 + 0], %f10
	fdivd	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_nvector, %o5
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 8], %f14
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 0], %f12
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 16], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 16], %f10
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 0], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	l.10876, %o4
	ldd	[%o4 + 0], %f10
	fdivd	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_nvector, %o5
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 16], %f14
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 16], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 0], %f12
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 8], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_nvector_w, %o4
	ldd	[%o4 + 8], %f10
	ld	[%i2 + 36], %o4
	ldd	[%o4 + 0], %f8
	fmuld	%f10, %f8, %f10
	faddd	%f12, %f10, %f12
	set	l.10876, %o4
	ldd	[%o4 + 0], %f10
	fdivd	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	set	min_caml_nvector, %o5
	st	%o5, [%i0 + 0]
	ld	[%i2 + 24], %o4
	st	%o4, [%i0 + 4]
	ldd	[%o5 + 0], %f14
	fmuld	%f14, %f14, %f14
	ldd	[%o5 + 8], %f12
	fmuld	%f12, %f12, %f12
	faddd	%f14, %f12, %f14
	ldd	[%o5 + 16], %f12
	fmuld	%f12, %f12, %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 12]
	call	min_caml_sqrt
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ld	[%i0 + 4], %o5
	cmp	%o5, 0
	bne	be_else.126279
	nop
	b	be_cont.126280
	nop
be_else.126279:
	fnegs	%f14, %f14
be_cont.126280:
	ld	[%i0 + 0], %o5
	ldd	[%o5 + 0], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	ldd	[%o5 + 8], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 8]
	ldd	[%o5 + 16], %f12
	fdivd	%f12, %f14, %f14
	std	%f14, [%o5 + 16]
	retl
	nop
utexture.3807:
	ld	[%i2 + 0], %o5
	set	min_caml_texture_color, %o4
	ld	[%i2 + 32], %o3
	ldd	[%o3 + 0], %f14
	std	%f14, [%o4 + 0]
	set	min_caml_texture_color, %o4
	ld	[%i2 + 32], %o3
	ldd	[%o3 + 8], %f14
	std	%f14, [%o4 + 8]
	set	min_caml_texture_color, %o4
	ld	[%i2 + 32], %o3
	ldd	[%o3 + 16], %f14
	std	%f14, [%o4 + 16]
	cmp	%o5, 1
	bne	be_else.126287
	nop
	st	%i2, [%i0 + 0]
	st	%i3, [%i0 + 4]
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 20], %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%i0 + 8]
	set	l.11824, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	st	%o7, [%i0 + 20]
	call	min_caml_floor
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.11826, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	l.11804, %o5
	ldd	[%o5 + 0], %f12
	ldd	[%i0 + 8], %f10
	fsubd	%f10, %f14, %f14
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126292
	nop
	set	0, %o5
	b	fble_cont.126293
	nop
fble_else.126292:
	set	1, %o5
fble_cont.126293:
	st	%o5, [%i0 + 16]
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 16], %f14
	ld	[%i0 + 0], %o5
	ld	[%o5 + 20], %o5
	ldd	[%o5 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%i0 + 24]
	set	l.11824, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	st	%o7, [%i0 + 36]
	call	min_caml_floor
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.11826, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	l.11804, %o5
	ldd	[%o5 + 0], %f12
	ldd	[%i0 + 24], %f10
	fsubd	%f10, %f14, %f14
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126298
	nop
	set	0, %o5
	b	fble_cont.126299
	nop
fble_else.126298:
	set	1, %o5
fble_cont.126299:
	set	min_caml_texture_color, %o4
	ld	[%i0 + 16], %o3
	cmp	%o3, 0
	bne	be_else.126300
	nop
	cmp	%o5, 0
	bne	be_else.126302
	nop
	set	l.11808, %o5
	ldd	[%o5 + 0], %f14
	b	be_cont.126303
	nop
be_else.126302:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
be_cont.126303:
	b	be_cont.126301
	nop
be_else.126300:
	cmp	%o5, 0
	bne	be_else.126304
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	b	be_cont.126305
	nop
be_else.126304:
	set	l.11808, %o5
	ldd	[%o5 + 0], %f14
be_cont.126305:
be_cont.126301:
	std	%f14, [%o4 + 8]
	retl
	nop
be_else.126287:
	cmp	%o5, 2
	bne	be_else.126307
	nop
	ldd	[%i3 + 8], %f14
	set	l.11815, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	st	%o7, [%i0 + 36]
	call	min_caml_sin
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	fmuld	%f14, %f14, %f14
	set	min_caml_texture_color, %o5
	set	l.11808, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_texture_color, %o5
	set	l.11808, %o4
	ldd	[%o4 + 0], %f12
	set	l.10791, %o4
	ldd	[%o4 + 0], %f10
	fsubd	%f10, %f14, %f14
	fmuld	%f12, %f14, %f14
	std	%f14, [%o5 + 8]
	retl
	nop
be_else.126307:
	cmp	%o5, 3
	bne	be_else.126311
	nop
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 20], %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	ldd	[%i3 + 16], %f12
	ld	[%i2 + 20], %o5
	ldd	[%o5 + 16], %f10
	fsubd	%f12, %f10, %f12
	fmuld	%f14, %f14, %f14
	fmuld	%f12, %f12, %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 36]
	call	min_caml_sqrt
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.11804, %o5
	ldd	[%o5 + 0], %f12
	fdivd	%f14, %f12, %f0
	std	%f0, [%i0 + 32]
	st	%o7, [%i0 + 44]
	call	min_caml_floor
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 32], %f12
	fsubd	%f12, %f14, %f14
	set	l.11806, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	st	%o7, [%i0 + 44]
	call	min_caml_cos
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	fmuld	%f14, %f14, %f14
	set	min_caml_texture_color, %o5
	set	l.11808, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f12
	std	%f12, [%o5 + 8]
	set	min_caml_texture_color, %o5
	set	l.10791, %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f12, %f14, %f14
	set	l.11808, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.126311:
	cmp	%o5, 4
	bne	be_else.126318
	nop
	st	%i2, [%i0 + 0]
	st	%i3, [%i0 + 4]
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 20], %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%i0 + 40]
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 52]
	call	min_caml_sqrt
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 40], %f12
	fmuld	%f12, %f14, %f14
	std	%f14, [%i0 + 48]
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 16], %f14
	ld	[%i0 + 0], %o5
	ld	[%o5 + 20], %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%i0 + 56]
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 68]
	call	min_caml_sqrt
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 56], %f12
	fmuld	%f12, %f14, %f14
	std	%f14, [%i0 + 64]
	ldd	[%i0 + 48], %f12
	fmuld	%f12, %f12, %f12
	fmuld	%f14, %f14, %f14
	faddd	%f12, %f14, %f0
	st	%o7, [%i0 + 76]
	call	min_caml_sqrt
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	std	%f14, [%i0 + 72]
	set	l.11778, %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 80]
	ldd	[%i0 + 48], %f0
	st	%o7, [%i0 + 92]
	call	min_caml_abs_float
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 80], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126331
	nop
	ldd	[%i0 + 48], %f14
	ldd	[%i0 + 64], %f12
	fdivd	%f12, %f14, %f0
	st	%o7, [%i0 + 92]
	call	min_caml_abs_float
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	st	%o7, [%i0 + 92]
	call	min_caml_atan
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.11782, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	b	fble_cont.126332
	nop
fble_else.126331:
	set	l.11780, %o5
	ldd	[%o5 + 0], %f14
fble_cont.126332:
	fmovs	%f14, %f0
	fmovs	%f15, %f1
	std	%f0, [%i0 + 88]
	st	%o7, [%i0 + 100]
	call	min_caml_floor
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 88], %f12
	fsubd	%f12, %f14, %f14
	std	%f14, [%i0 + 96]
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 8], %f14
	ld	[%i0 + 0], %o5
	ld	[%o5 + 20], %o4
	ldd	[%o4 + 8], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%i0 + 104]
	ld	[%o5 + 16], %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 116]
	call	min_caml_sqrt
	add	%i0, 120, %i0	! delay slot
	sub	%i0, 120, %i0
	ld	[%i0 + 116], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 104], %f12
	fmuld	%f12, %f14, %f14
	std	%f14, [%i0 + 112]
	set	l.11778, %o5
	ldd	[%o5 + 0], %f14
	std	%f14, [%i0 + 120]
	ldd	[%i0 + 88], %f0
	st	%o7, [%i0 + 132]
	call	min_caml_abs_float
	add	%i0, 136, %i0	! delay slot
	sub	%i0, 136, %i0
	ld	[%i0 + 132], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 120], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126343
	nop
	ldd	[%i0 + 72], %f14
	ldd	[%i0 + 112], %f12
	fdivd	%f12, %f14, %f0
	st	%o7, [%i0 + 132]
	call	min_caml_abs_float
	add	%i0, 136, %i0	! delay slot
	sub	%i0, 136, %i0
	ld	[%i0 + 132], %o7
	st	%o7, [%i0 + 132]
	call	min_caml_atan
	add	%i0, 136, %i0	! delay slot
	sub	%i0, 136, %i0
	ld	[%i0 + 132], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.11782, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	b	fble_cont.126344
	nop
fble_else.126343:
	set	l.11780, %o5
	ldd	[%o5 + 0], %f14
fble_cont.126344:
	fmovs	%f14, %f0
	fmovs	%f15, %f1
	std	%f0, [%i0 + 128]
	st	%o7, [%i0 + 140]
	call	min_caml_floor
	add	%i0, 144, %i0	! delay slot
	sub	%i0, 144, %i0
	ld	[%i0 + 140], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 128], %f12
	fsubd	%f12, %f14, %f14
	set	l.11790, %o5
	ldd	[%o5 + 0], %f12
	set	l.11792, %o5
	ldd	[%o5 + 0], %f10
	ldd	[%i0 + 96], %f8
	fsubd	%f10, %f8, %f10
	fmuld	%f10, %f10, %f10
	fsubd	%f12, %f10, %f12
	set	l.11792, %o5
	ldd	[%o5 + 0], %f10
	fsubd	%f10, %f14, %f14
	fmuld	%f14, %f14, %f14
	fsubd	%f12, %f14, %f14
	set	min_caml_texture_color, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126349
	nop
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	b	fble_cont.126350
	nop
fble_else.126349:
	set	l.11796, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
fble_cont.126350:
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.126318:
	retl
	nop
raytracing.4014:
	std	%f0, [%i0 + 0]
	st	%i2, [%i0 + 8]
	set	min_caml_tmin, %o5
	set	l.11839, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 0]
	set	0, %i2
	set	min_caml_or_net, %o5
	ld	[%o5 + 0], %i3
	st	%o7, [%i0 + 12]
	call	trace_or_matrix.3568
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	set	min_caml_tmin, %o5
	ldd	[%o5 + 0], %f14
	set	l.11380, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126359
	nop
	set	0, %o5
	b	fble_cont.126360
	nop
fble_else.126359:
	set	l.11845, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126361
	nop
	set	0, %o5
	b	fble_cont.126362
	nop
fble_else.126361:
	set	1, %o5
fble_cont.126362:
fble_cont.126360:
	cmp	%o5, 0
	bne	be_else.126364
	nop
	ld	[%i0 + 8], %o4
	cmp	%o4, 0
	bne	be_else.126366
	nop
	b	be_cont.126367
	nop
be_else.126366:
	set	min_caml_vscan, %o4
	set	min_caml_light, %o3
	ldd	[%o4 + 0], %f14
	ldd	[%o3 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%o4 + 8], %f12
	ldd	[%o3 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%o4 + 16], %f12
	ldd	[%o3 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	fnegs	%f14, %f14
	set	l.10753, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126368
	nop
	b	fble_cont.126369
	nop
fble_else.126368:
	fmuld	%f14, %f14, %f12
	fmuld	%f12, %f14, %f14
	ldd	[%i0 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_beam, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_rgb, %o4
	set	min_caml_rgb, %o3
	ldd	[%o3 + 0], %f12
	faddd	%f12, %f14, %f12
	std	%f12, [%o4 + 0]
	set	min_caml_rgb, %o4
	set	min_caml_rgb, %o3
	ldd	[%o3 + 8], %f12
	faddd	%f12, %f14, %f12
	std	%f12, [%o4 + 8]
	set	min_caml_rgb, %o4
	set	min_caml_rgb, %o3
	ldd	[%o3 + 16], %f12
	faddd	%f12, %f14, %f14
	std	%f14, [%o4 + 16]
fble_cont.126369:
be_cont.126367:
	b	be_cont.126365
	nop
be_else.126364:
be_cont.126365:
	cmp	%o5, 0
	bne	be_else.126373
	nop
	retl
	nop
be_else.126373:
	set	min_caml_objects, %o5
	set	min_caml_crashed_object, %o4
	ld	[%o4 + 0], %o4
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i2
	st	%i2, [%i0 + 12]
	set	min_caml_crashed_point, %i3
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.126379
	nop
	st	%o7, [%i0 + 20]
	call	get_nvector_rect.3608
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	b	be_cont.126380
	nop
be_else.126379:
	cmp	%o5, 2
	bne	be_else.126383
	nop
	set	min_caml_nvector, %o5
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 0], %f14
	fnegs	%f14, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_nvector, %o5
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 8], %f14
	fnegs	%f14, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_nvector, %o5
	ld	[%i2 + 16], %o4
	ldd	[%o4 + 16], %f14
	fnegs	%f14, %f14
	std	%f14, [%o5 + 16]
	b	be_cont.126384
	nop
be_else.126383:
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.126387
	nop
	st	%o7, [%i0 + 20]
	call	get_nvector_second_norot.3677
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	b	be_cont.126388
	nop
be_else.126387:
	st	%o7, [%i0 + 20]
	call	get_nvector_second_rot.3709
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
be_cont.126388:
be_cont.126384:
be_cont.126380:
	set	min_caml_or_net, %o5
	ld	[%o5 + 0], %i3
	set	min_caml_crashed_point, %i4
	ld	[%i3 + 0], %o5
	ld	[%o5 + 0], %i2
	cmp	%i2, -1
	bne	be_else.126392
	nop
	set	0, %o5
	b	be_cont.126393
	nop
be_else.126392:
	cmp	%i2, 99
	bne	be_else.126394
	nop
	st	%i4, [%i0 + 16]
	st	%i3, [%i0 + 20]
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.126398
	nop
	set	0, %o5
	b	be_cont.126399
	nop
be_else.126398:
	st	%o5, [%i0 + 24]
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126403
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.126405
	nop
	set	0, %o5
	b	be_cont.126406
	nop
be_else.126405:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126410
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.126412
	nop
	set	0, %o5
	b	be_cont.126413
	nop
be_else.126412:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126417
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.126419
	nop
	set	0, %o5
	b	be_cont.126420
	nop
be_else.126419:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126424
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.126426
	nop
	set	0, %o5
	b	be_cont.126427
	nop
be_else.126426:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126431
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.126433
	nop
	set	0, %o5
	b	be_cont.126434
	nop
be_else.126433:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126438
	nop
	set	7, %i2
	ld	[%i0 + 24], %i3
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_one_or_group.3416
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.126439
	nop
be_else.126438:
	set	1, %o5
be_cont.126439:
be_cont.126434:
	b	be_cont.126432
	nop
be_else.126431:
	set	1, %o5
be_cont.126432:
be_cont.126427:
	b	be_cont.126425
	nop
be_else.126424:
	set	1, %o5
be_cont.126425:
be_cont.126420:
	b	be_cont.126418
	nop
be_else.126417:
	set	1, %o5
be_cont.126418:
be_cont.126413:
	b	be_cont.126411
	nop
be_else.126410:
	set	1, %o5
be_cont.126411:
be_cont.126406:
	b	be_cont.126404
	nop
be_else.126403:
	set	1, %o5
be_cont.126404:
be_cont.126399:
	cmp	%o5, 0
	bne	be_else.126441
	nop
	set	1, %i2
	ld	[%i0 + 20], %i3
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_one_or_matrix.3429
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.126442
	nop
be_else.126441:
	set	1, %o5
be_cont.126442:
	b	be_cont.126395
	nop
be_else.126394:
	st	%o5, [%i0 + 24]
	st	%i4, [%i0 + 16]
	st	%i3, [%i0 + 20]
	set	min_caml_light, %i3
	st	%o7, [%i0 + 28]
	call	solver.3224
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126448
	nop
	set	1, %i2
	ld	[%i0 + 20], %i3
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_one_or_matrix.3429
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.126449
	nop
be_else.126448:
	set	l.11380, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.126451
	nop
	set	1, %i2
	ld	[%i0 + 20], %i3
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_one_or_matrix.3429
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	fble_cont.126452
	nop
fble_else.126451:
	ld	[%i0 + 24], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.126456
	nop
	set	0, %o5
	b	be_cont.126457
	nop
be_else.126456:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126461
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.126463
	nop
	set	0, %o5
	b	be_cont.126464
	nop
be_else.126463:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126468
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.126470
	nop
	set	0, %o5
	b	be_cont.126471
	nop
be_else.126470:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126475
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.126477
	nop
	set	0, %o5
	b	be_cont.126478
	nop
be_else.126477:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126482
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.126484
	nop
	set	0, %o5
	b	be_cont.126485
	nop
be_else.126484:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126489
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.126491
	nop
	set	0, %o5
	b	be_cont.126492
	nop
be_else.126491:
	set	min_caml_and_net, %o5
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i3
	set	0, %i2
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_and_group.3357
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126496
	nop
	set	7, %i2
	ld	[%i0 + 24], %i3
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_one_or_group.3416
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.126497
	nop
be_else.126496:
	set	1, %o5
be_cont.126497:
be_cont.126492:
	b	be_cont.126490
	nop
be_else.126489:
	set	1, %o5
be_cont.126490:
be_cont.126485:
	b	be_cont.126483
	nop
be_else.126482:
	set	1, %o5
be_cont.126483:
be_cont.126478:
	b	be_cont.126476
	nop
be_else.126475:
	set	1, %o5
be_cont.126476:
be_cont.126471:
	b	be_cont.126469
	nop
be_else.126468:
	set	1, %o5
be_cont.126469:
be_cont.126464:
	b	be_cont.126462
	nop
be_else.126461:
	set	1, %o5
be_cont.126462:
be_cont.126457:
	cmp	%o5, 0
	bne	be_else.126499
	nop
	set	1, %i2
	ld	[%i0 + 20], %i3
	ld	[%i0 + 16], %i4
	st	%o7, [%i0 + 28]
	call	shadow_check_one_or_matrix.3429
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.126500
	nop
be_else.126499:
	set	1, %o5
be_cont.126500:
fble_cont.126452:
be_cont.126449:
be_cont.126395:
be_cont.126393:
	cmp	%o5, 0
	bne	be_else.126502
	nop
	set	min_caml_nvector, %o5
	set	min_caml_light, %o4
	ldd	[%o5 + 0], %f14
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	ldd	[%o5 + 8], %f12
	ldd	[%o4 + 8], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	ldd	[%o5 + 16], %f12
	ldd	[%o4 + 16], %f10
	fmuld	%f12, %f10, %f12
	faddd	%f14, %f12, %f14
	fnegs	%f14, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126506
	nop
	set	l.11906, %o5
	ldd	[%o5 + 0], %f12
	faddd	%f14, %f12, %f14
	b	fble_cont.126507
	nop
fble_else.126506:
	set	l.11906, %o5
	ldd	[%o5 + 0], %f14
fble_cont.126507:
	ldd	[%i0 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i0 + 12], %i2
	ld	[%i2 + 28], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	b	be_cont.126503
	nop
be_else.126502:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
be_cont.126503:
	std	%f14, [%i0 + 32]
	set	min_caml_crashed_point, %i3
	ld	[%i0 + 12], %i2
	st	%o7, [%i0 + 44]
	call	utexture.3807
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	min_caml_rgb, %o5
	set	min_caml_texture_color, %o4
	ldd	[%o5 + 0], %f14
	ldd	[%o4 + 0], %f12
	ldd	[%i0 + 32], %f10
	fmuld	%f10, %f12, %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	ldd	[%o5 + 8], %f14
	ldd	[%o4 + 8], %f12
	fmuld	%f10, %f12, %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 8]
	ldd	[%o5 + 16], %f14
	ldd	[%o4 + 16], %f12
	fmuld	%f10, %f12, %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	ld	[%i0 + 8], %o5
	cmp	%o5, 4
	bg	ble_else.126516
	nop
	set	l.11919, %o4
	ldd	[%o4 + 0], %f14
	ldd	[%i0 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.126517
	nop
	retl
	nop
fble_else.126517:
	set	l.11921, %o4
	ldd	[%o4 + 0], %f14
	set	min_caml_vscan, %o4
	set	min_caml_nvector, %o3
	ldd	[%o4 + 0], %f8
	ldd	[%o3 + 0], %f6
	fmuld	%f8, %f6, %f8
	ldd	[%o4 + 8], %f6
	ldd	[%o3 + 8], %f4
	fmuld	%f6, %f4, %f6
	faddd	%f8, %f6, %f8
	ldd	[%o4 + 16], %f6
	ldd	[%o3 + 16], %f4
	fmuld	%f6, %f4, %f6
	faddd	%f8, %f6, %f8
	fmuld	%f14, %f8, %f14
	set	min_caml_vscan, %o4
	set	min_caml_nvector, %o3
	ldd	[%o4 + 0], %f8
	ldd	[%o3 + 0], %f6
	fmuld	%f14, %f6, %f6
	faddd	%f8, %f6, %f8
	std	%f8, [%o4 + 0]
	ldd	[%o4 + 8], %f8
	ldd	[%o3 + 8], %f6
	fmuld	%f14, %f6, %f6
	faddd	%f8, %f6, %f8
	std	%f8, [%o4 + 8]
	ldd	[%o4 + 16], %f8
	ldd	[%o3 + 16], %f6
	fmuld	%f14, %f6, %f14
	faddd	%f8, %f14, %f14
	std	%f14, [%o4 + 16]
	ld	[%i0 + 12], %o4
	ld	[%o4 + 8], %o3
	cmp	%o3, 1
	bne	be_else.126522
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	ld	[%o4 + 28], %o5
	ldd	[%o5 + 8], %f8
	fcmpd	%f14, %f8
	nop
	fbne	fbe_else.126523
	nop
	retl
	nop
fbe_else.126523:
	set	min_caml_vscan, %o5
	set	min_caml_light, %o3
	ldd	[%o5 + 0], %f14
	ldd	[%o3 + 0], %f8
	fmuld	%f14, %f8, %f14
	ldd	[%o5 + 8], %f8
	ldd	[%o3 + 8], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f14, %f8, %f14
	ldd	[%o5 + 16], %f8
	ldd	[%o3 + 16], %f6
	fmuld	%f8, %f6, %f8
	faddd	%f14, %f8, %f14
	fnegs	%f14, %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f8
	fcmpd	%f14, %f8
	nop
	fbg	fble_else.126525
	nop
	retl
	nop
fble_else.126525:
	fmuld	%f14, %f14, %f14
	fmuld	%f14, %f14, %f14
	fmuld	%f14, %f12, %f14
	fmuld	%f14, %f10, %f14
	ld	[%o4 + 28], %o5
	ldd	[%o5 + 8], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_rgb, %o5
	set	min_caml_rgb, %o4
	ldd	[%o4 + 0], %f12
	faddd	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_rgb, %o5
	set	min_caml_rgb, %o4
	ldd	[%o4 + 8], %f12
	faddd	%f12, %f14, %f12
	std	%f12, [%o5 + 8]
	set	min_caml_rgb, %o5
	set	min_caml_rgb, %o4
	ldd	[%o4 + 16], %f12
	faddd	%f12, %f14, %f14
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.126522:
	cmp	%o3, 2
	bne	be_else.126530
	nop
	set	min_caml_viewpoint, %o3
	set	min_caml_crashed_point, %o2
	ldd	[%o2 + 0], %f14
	std	%f14, [%o3 + 0]
	set	min_caml_viewpoint, %o3
	set	min_caml_crashed_point, %o2
	ldd	[%o2 + 8], %f14
	std	%f14, [%o3 + 8]
	set	min_caml_viewpoint, %o3
	set	min_caml_crashed_point, %o2
	ldd	[%o2 + 16], %f14
	std	%f14, [%o3 + 16]
	set	l.10791, %o3
	ldd	[%o3 + 0], %f14
	ld	[%o4 + 28], %o4
	ldd	[%o4 + 0], %f10
	fsubd	%f14, %f10, %f14
	fmuld	%f12, %f14, %f0
	add	%o5, 1, %i2
	b	raytracing.4014
	nop
be_else.126530:
	retl
	nop
ble_else.126516:
	retl
	nop
scan_point.4202:
	set	min_caml_size, %o5
	ld	[%o5 + 0], %o5
	cmp	%o5, %i2
	bg	ble_else.126536
	nop
	retl
	nop
ble_else.126536:
	st	%i2, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	min_caml_float_of_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	min_caml_scan_offset, %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	set	min_caml_scan_d, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_vscan, %o5
	set	min_caml_cos_v, %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f14, %f12, %f12
	set	min_caml_wscan, %o4
	ldd	[%o4 + 0], %f10
	faddd	%f12, %f10, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_vscan, %o5
	set	min_caml_scan_sscany, %o4
	ldd	[%o4 + 0], %f12
	set	min_caml_cos_v, %o4
	ldd	[%o4 + 0], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_vp, %o4
	ldd	[%o4 + 8], %f10
	fsubd	%f12, %f10, %f12
	std	%f12, [%o5 + 8]
	set	min_caml_vscan, %o5
	fnegs	%f14, %f12
	fmovs	%f15, %f13
	set	min_caml_sin_v, %o4
	ldd	[%o4 + 8], %f10
	fmuld	%f12, %f10, %f12
	set	min_caml_wscan, %o4
	ldd	[%o4 + 16], %f10
	faddd	%f12, %f10, %f12
	std	%f12, [%o5 + 16]
	fmuld	%f14, %f14, %f14
	set	min_caml_scan_met1, %o5
	ldd	[%o5 + 0], %f12
	faddd	%f14, %f12, %f0
	st	%o7, [%i0 + 4]
	call	min_caml_sqrt
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	min_caml_vscan, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 0], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_vscan, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 8], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 8]
	set	min_caml_vscan, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 16], %f12
	fdivd	%f12, %f14, %f14
	std	%f14, [%o5 + 16]
	set	min_caml_viewpoint, %o5
	set	min_caml_view, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 0]
	set	min_caml_viewpoint, %o5
	set	min_caml_view, %o4
	ldd	[%o4 + 8], %f14
	std	%f14, [%o5 + 8]
	set	min_caml_viewpoint, %o5
	set	min_caml_view, %o4
	ldd	[%o4 + 16], %f14
	std	%f14, [%o5 + 16]
	set	min_caml_rgb, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 0]
	set	min_caml_rgb, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 8]
	set	min_caml_rgb, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 16]
	set	0, %i2
	set	l.10791, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 4]
	call	raytracing.4014
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	set	min_caml_rgb, %o5
	ldd	[%o5 + 0], %f0
	st	%o7, [%i0 + 4]
	call	min_caml_int_of_float
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 255
	bg	ble_else.126557
	nop
	b	ble_cont.126558
	nop
ble_else.126557:
	set	255, %o5
ble_cont.126558:
	mov	%o5, %i2
	st	%o7, [%i0 + 4]
	call	min_caml_print_byte
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	set	min_caml_rgb, %o5
	ldd	[%o5 + 8], %f0
	st	%o7, [%i0 + 4]
	call	min_caml_int_of_float
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 255
	bg	ble_else.126563
	nop
	b	ble_cont.126564
	nop
ble_else.126563:
	set	255, %o5
ble_cont.126564:
	mov	%o5, %i2
	st	%o7, [%i0 + 4]
	call	min_caml_print_byte
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	set	min_caml_rgb, %o5
	ldd	[%o5 + 16], %f0
	st	%o7, [%i0 + 4]
	call	min_caml_int_of_float
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 255
	bg	ble_else.126569
	nop
	b	ble_cont.126570
	nop
ble_else.126569:
	set	255, %o5
ble_cont.126570:
	mov	%o5, %i2
	st	%o7, [%i0 + 4]
	call	min_caml_print_byte
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	b	scan_point.4202
	nop
scan_line.4317:
	set	min_caml_size, %o5
	ld	[%o5 + 0], %o5
	cmp	%o5, %i2
	bg	ble_else.126574
	nop
	retl
	nop
ble_else.126574:
	st	%i2, [%i0 + 0]
	set	min_caml_scan_sscany, %o5
	st	%o5, [%i0 + 4]
	set	min_caml_scan_offset, %o5
	ldd	[%o5 + 0], %f14
	set	l.10791, %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%i0 + 8]
	st	%o7, [%i0 + 20]
	call	min_caml_float_of_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	ldd	[%i0 + 8], %f12
	fsubd	%f12, %f14, %f14
	set	min_caml_scan_d, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f12, %f14, %f14
	ld	[%i0 + 4], %o5
	std	%f14, [%o5 + 0]
	set	min_caml_scan_met1, %o5
	set	min_caml_scan_sscany, %o4
	ldd	[%o4 + 0], %f14
	fmuld	%f14, %f14, %f14
	set	l.12004, %o4
	ldd	[%o4 + 0], %f12
	faddd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	min_caml_scan_sscany, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_sin_v, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_wscan, %o5
	set	min_caml_sin_v, %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f14, %f12, %f12
	set	min_caml_vp, %o4
	ldd	[%o4 + 0], %f10
	fsubd	%f12, %f10, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_wscan, %o5
	set	min_caml_cos_v, %o4
	ldd	[%o4 + 8], %f12
	fmuld	%f14, %f12, %f14
	set	min_caml_vp, %o4
	ldd	[%o4 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	set	0, %i2
	st	%o7, [%i0 + 20]
	call	scan_point.4202
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	b	scan_line.4317
	nop
.global	min_caml_start
min_caml_start:
	save	%sp, -112, %sp
	set	768, %o5
	set	768, %o4
	set	0, %o3
	set	min_caml_size, %o2
	st	%o5, [%o2 + 0]
	set	min_caml_size, %o5
	st	%o4, [%o5 + 4]
	set	min_caml_dbg, %o5
	st	%o3, [%o5 + 0]
	st	%o7, [%i0 + 4]
	call	read_environ.2254
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	set	0, %i2
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126595
	nop
	b	be_cont.126596
	nop
be_else.126595:
	set	1, %i2
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126598
	nop
	b	be_cont.126599
	nop
be_else.126598:
	set	2, %i2
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126601
	nop
	b	be_cont.126602
	nop
be_else.126601:
	set	3, %i2
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.126604
	nop
	b	be_cont.126605
	nop
be_else.126604:
	set	4, %i2
	st	%o7, [%i0 + 4]
	call	read_object.2832
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
be_cont.126605:
be_cont.126602:
be_cont.126599:
be_cont.126596:
	st	%o7, [%i0 + 4]
	call	min_caml_read_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.126609
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 4]
	call	min_caml_create_array
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	b	be_cont.126610
	nop
be_else.126609:
	st	%o5, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	min_caml_read_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.126615
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 4]
	call	min_caml_create_array
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	b	be_cont.126616
	nop
be_else.126615:
	st	%o5, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.126621
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.126622
	nop
be_else.126621:
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.126627
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.126628
	nop
be_else.126627:
	st	%o5, [%i0 + 12]
	set	4, %i2
	st	%o7, [%i0 + 20]
	call	read_net_item.2842
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	ld	[%i0 + 12], %o4
	st	%o4, [%o5 + 12]
be_cont.126628:
	ld	[%i0 + 8], %o4
	st	%o4, [%o5 + 8]
be_cont.126622:
	ld	[%i0 + 4], %o4
	st	%o4, [%o5 + 4]
be_cont.126616:
	ld	[%i0 + 0], %o4
	st	%o4, [%o5 + 0]
be_cont.126610:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.126637
	nop
	b	be_cont.126638
	nop
be_else.126637:
	set	min_caml_and_net, %o4
	st	%o5, [%o4 + 0]
	set	1, %i2
	st	%o7, [%i0 + 20]
	call	read_and_network.2867
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
be_cont.126638:
	set	min_caml_or_net, %o5
	st	%o5, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.126644
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.126645
	nop
be_else.126644:
	st	%o5, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.126650
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.126651
	nop
be_else.126650:
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.126656
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.126657
	nop
be_else.126656:
	st	%o5, [%i0 + 28]
	st	%o7, [%i0 + 36]
	call	min_caml_read_int
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.126662
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 36]
	call	min_caml_create_array
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.126663
	nop
be_else.126662:
	st	%o5, [%i0 + 32]
	set	4, %i2
	st	%o7, [%i0 + 36]
	call	read_net_item.2842
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	ld	[%i0 + 32], %o4
	st	%o4, [%o5 + 12]
be_cont.126663:
	ld	[%i0 + 28], %o4
	st	%o4, [%o5 + 8]
be_cont.126657:
	ld	[%i0 + 24], %o4
	st	%o4, [%o5 + 4]
be_cont.126651:
	ld	[%i0 + 20], %o4
	st	%o4, [%o5 + 0]
be_cont.126645:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.126671
	nop
	set	1, %i2
	st	%o7, [%i0 + 36]
	call	min_caml_create_array
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.126672
	nop
be_else.126671:
	st	%i3, [%i0 + 36]
	set	1, %i2
	st	%o7, [%i0 + 44]
	call	read_or_network.2854
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	ld	[%i0 + 36], %o4
	st	%o4, [%o5 + 0]
be_cont.126672:
	ld	[%i0 + 16], %o4
	st	%o5, [%o4 + 0]
	set	80, %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_byte
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	54, %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_byte
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	10, %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_byte
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	min_caml_size, %o5
	ld	[%o5 + 0], %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	32, %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_byte
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	min_caml_size, %o5
	ld	[%o5 + 4], %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	10, %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_byte
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	255, %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	10, %i2
	st	%o7, [%i0 + 44]
	call	min_caml_print_byte
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	set	min_caml_size, %o5
	ld	[%o5 + 0], %i2
	st	%o7, [%i0 + 44]
	call	min_caml_float_of_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	min_caml_scan_d, %o5
	set	l.12034, %o4
	ldd	[%o4 + 0], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_scan_offset, %o5
	set	l.10876, %o4
	ldd	[%o4 + 0], %f12
	fdivd	%f14, %f12, %f14
	std	%f14, [%o5 + 0]
	set	0, %i2
	st	%o7, [%i0 + 44]
	call	scan_line.4317
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	ret
	restore
