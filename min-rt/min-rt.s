.section	".rodata"
.align	8
l.12044:	! 128.000000
	.long	0x40600000
	.long	0x0
l.12014:	! 40000.000000
	.long	0x40e38800
	.long	0x0
l.11931:	! -2.000000
	.long	0xc0000000
	.long	0x0
l.11929:	! 0.100000
	.long	0x3fb99999
	.long	0x9999999a
l.11916:	! 0.200000
	.long	0x3fc99999
	.long	0x9999999a
l.11855:	! 100000000.000000
	.long	0x4197d784
	.long	0x0
l.11849:	! 1000000000.000000
	.long	0x41cdcd65
	.long	0x0
l.11836:	! 20.000000
	.long	0x40340000
	.long	0x0
l.11834:	! 0.050000
	.long	0x3fa99999
	.long	0x9999999a
l.11825:	! 0.250000
	.long	0x3fd00000
	.long	0x0
l.11818:	! 255.000000
	.long	0x406fe000
	.long	0x0
l.11816:	! 3.141593
	.long	0x400921fb
	.long	0x5a7ed197
l.11814:	! 10.000000
	.long	0x40240000
	.long	0x0
l.11806:	! 850.000000
	.long	0x408a9000
	.long	0x0
l.11802:	! 0.500000
	.long	0x3fe00000
	.long	0x0
l.11800:	! 0.150000
	.long	0x3fc33333
	.long	0x33333333
l.11792:	! 9.549296
	.long	0x4023193d
	.long	0x62316387
l.11790:	! 15.000000
	.long	0x402e0000
	.long	0x0
l.11788:	! 0.000100
	.long	0x3f1a36e2
	.long	0xeb1c432d
l.11390:	! -0.100000
	.long	0xbfb99999
	.long	0x9999999a
l.11308:	! 0.010000
	.long	0x3f847ae1
	.long	0x47ae147b
l.11306:	! -0.200000
	.long	0xbfc99999
	.long	0x9999999a
l.11096:	! 4.000000
	.long	0x40100000
	.long	0x0
l.10886:	! 2.000000
	.long	0x40000000
	.long	0x0
l.10803:	! -1.000000
	.long	0xbff00000
	.long	0x0
l.10801:	! 1.000000
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
	bne	be_else.26012
	nop
	set	0, %i2
	retl
	nop
be_else.26012:
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
	fbg	fble_else.26026
	nop
	set	0, %o5
	b	fble_cont.26027
	nop
fble_else.26026:
	set	1, %o5
fble_cont.26027:
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
	bne	be_else.26036
	nop
	b	be_cont.26037
	nop
be_else.26036:
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
be_cont.26037:
	ld	[%i0 + 8], %o4
	cmp	%o4, 2
	bne	be_else.26041
	nop
	set	1, %o4
	b	be_cont.26042
	nop
be_else.26041:
	ld	[%i0 + 40], %o4
be_cont.26042:
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
	bne	be_else.26043
	nop
	ldd	[%o2 + 0], %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.26045
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	b	fbe_cont.26046
	nop
fbe_else.26045:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26047
	nop
	set	l.10803, %o5
	ldd	[%o5 + 0], %f12
	b	fble_cont.26048
	nop
fble_else.26047:
	set	l.10801, %o5
	ldd	[%o5 + 0], %f12
fble_cont.26048:
	fmuld	%f14, %f14, %f14
	fdivd	%f12, %f14, %f14
fbe_cont.26046:
	std	%f14, [%o2 + 0]
	ldd	[%o2 + 8], %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.26049
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	b	fbe_cont.26050
	nop
fbe_else.26049:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26051
	nop
	set	l.10803, %o5
	ldd	[%o5 + 0], %f12
	b	fble_cont.26052
	nop
fble_else.26051:
	set	l.10801, %o5
	ldd	[%o5 + 0], %f12
fble_cont.26052:
	fmuld	%f14, %f14, %f14
	fdivd	%f12, %f14, %f14
fbe_cont.26050:
	std	%f14, [%o2 + 8]
	ldd	[%o2 + 16], %f14
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.26053
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	b	fbe_cont.26054
	nop
fbe_else.26053:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26055
	nop
	set	l.10803, %o5
	ldd	[%o5 + 0], %f12
	b	fble_cont.26056
	nop
fble_else.26055:
	set	l.10801, %o5
	ldd	[%o5 + 0], %f12
fble_cont.26056:
	fmuld	%f14, %f14, %f14
	fdivd	%f12, %f14, %f14
fbe_cont.26054:
	std	%f14, [%o2 + 16]
	b	be_cont.26044
	nop
be_else.26043:
	cmp	%o3, 2
	bne	be_else.26057
	nop
	ld	[%i0 + 40], %o5
	cmp	%o5, 0
	bne	be_else.26059
	nop
	set	1, %o5
	b	be_cont.26060
	nop
be_else.26059:
	set	0, %o5
be_cont.26060:
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
	bne	be_else.26062
	nop
	b	be_cont.26063
	nop
be_else.26062:
	fnegs	%f14, %f14
be_cont.26063:
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
	b	be_cont.26058
	nop
be_else.26057:
be_cont.26058:
be_cont.26044:
	ld	[%i0 + 16], %o5
	cmp	%o5, 0
	bne	be_else.26064
	nop
	b	be_cont.26065
	nop
be_else.26064:
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
	set	l.10886, %o5
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
	set	l.10886, %o4
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
	set	l.10886, %o4
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
be_cont.26065:
	set	1, %i2
	retl
	nop
read_object.2832:
	cmp	%i2, 61
	bl	bge_else.26072
	nop
	retl
	nop
bge_else.26072:
	st	%i2, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.26075
	nop
	retl
	nop
be_else.26075:
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.26077
	nop
	retl
	nop
bge_else.26077:
	st	%i2, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	read_nth_object.2384
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.26080
	nop
	retl
	nop
be_else.26080:
	ld	[%i0 + 4], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.26082
	nop
	retl
	nop
bge_else.26082:
	st	%i2, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	read_nth_object.2384
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.26085
	nop
	retl
	nop
be_else.26085:
	ld	[%i0 + 8], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.26087
	nop
	retl
	nop
bge_else.26087:
	st	%i2, [%i0 + 12]
	st	%o7, [%i0 + 20]
	call	read_nth_object.2384
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.26090
	nop
	retl
	nop
be_else.26090:
	ld	[%i0 + 12], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.26092
	nop
	retl
	nop
bge_else.26092:
	st	%i2, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	read_nth_object.2384
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.26095
	nop
	retl
	nop
be_else.26095:
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.26097
	nop
	retl
	nop
bge_else.26097:
	st	%i2, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	read_nth_object.2384
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.26100
	nop
	retl
	nop
be_else.26100:
	ld	[%i0 + 20], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.26102
	nop
	retl
	nop
bge_else.26102:
	st	%i2, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	read_nth_object.2384
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.26105
	nop
	retl
	nop
be_else.26105:
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	cmp	%i2, 61
	bl	bge_else.26107
	nop
	retl
	nop
bge_else.26107:
	st	%i2, [%i0 + 28]
	st	%o7, [%i0 + 36]
	call	read_nth_object.2384
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.26110
	nop
	retl
	nop
be_else.26110:
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
	bne	be_else.26113
	nop
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	set	-1, %i3
	b	min_caml_create_array
	nop
be_else.26113:
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
	bne	be_else.26115
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
	b	be_cont.26116
	nop
be_else.26115:
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
	bne	be_else.26119
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
	b	be_cont.26120
	nop
be_else.26119:
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
	bne	be_else.26123
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
	b	be_cont.26124
	nop
be_else.26123:
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
	bne	be_else.26127
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
	b	be_cont.26128
	nop
be_else.26127:
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
	bne	be_else.26131
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
	b	be_cont.26132
	nop
be_else.26131:
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
	bne	be_else.26135
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
	b	be_cont.26136
	nop
be_else.26135:
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
	bne	be_else.26139
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
	b	be_cont.26140
	nop
be_else.26139:
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
be_cont.26140:
	ld	[%i0 + 48], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 52], %o3
	st	%o3, [%o5 + %o4]
be_cont.26136:
	ld	[%i0 + 40], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 44], %o3
	st	%o3, [%o5 + %o4]
be_cont.26132:
	ld	[%i0 + 32], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 36], %o3
	st	%o3, [%o5 + %o4]
be_cont.26128:
	ld	[%i0 + 24], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 28], %o3
	st	%o3, [%o5 + %o4]
be_cont.26124:
	ld	[%i0 + 16], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 20], %o3
	st	%o3, [%o5 + %o4]
be_cont.26120:
	ld	[%i0 + 8], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 12], %o3
	st	%o3, [%o5 + %o4]
be_cont.26116:
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
	bne	be_else.26144
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 4]
	call	min_caml_create_array
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	b	be_cont.26145
	nop
be_else.26144:
	st	%o5, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26148
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.26149
	nop
be_else.26148:
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26152
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.26153
	nop
be_else.26152:
	st	%o5, [%i0 + 12]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26156
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.26157
	nop
be_else.26156:
	st	%o5, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26160
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.26161
	nop
be_else.26160:
	st	%o5, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26164
	nop
	set	6, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.26165
	nop
be_else.26164:
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26168
	nop
	set	7, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.26169
	nop
be_else.26168:
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
be_cont.26169:
	ld	[%i0 + 24], %o4
	st	%o4, [%o5 + 20]
be_cont.26165:
	ld	[%i0 + 20], %o4
	st	%o4, [%o5 + 16]
be_cont.26161:
	ld	[%i0 + 16], %o4
	st	%o4, [%o5 + 12]
be_cont.26157:
	ld	[%i0 + 12], %o4
	st	%o4, [%o5 + 8]
be_cont.26153:
	ld	[%i0 + 8], %o4
	st	%o4, [%o5 + 4]
be_cont.26149:
	ld	[%i0 + 4], %o4
	st	%o4, [%o5 + 0]
be_cont.26145:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.26172
	nop
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	b	min_caml_create_array
	nop
be_else.26172:
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
	bne	be_else.26174
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.26175
	nop
be_else.26174:
	st	%o5, [%i0 + 40]
	st	%o7, [%i0 + 44]
	call	min_caml_read_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26178
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.26179
	nop
be_else.26178:
	st	%o5, [%i0 + 44]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26182
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.26183
	nop
be_else.26182:
	st	%o5, [%i0 + 48]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26186
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.26187
	nop
be_else.26186:
	st	%o5, [%i0 + 52]
	st	%o7, [%i0 + 60]
	call	min_caml_read_int
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26190
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 60]
	call	min_caml_create_array
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.26191
	nop
be_else.26190:
	st	%o5, [%i0 + 56]
	st	%o7, [%i0 + 60]
	call	min_caml_read_int
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26194
	nop
	set	6, %i2
	set	-1, %i3
	st	%o7, [%i0 + 60]
	call	min_caml_create_array
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.26195
	nop
be_else.26194:
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
be_cont.26195:
	ld	[%i0 + 56], %o4
	st	%o4, [%o5 + 16]
be_cont.26191:
	ld	[%i0 + 52], %o4
	st	%o4, [%o5 + 12]
be_cont.26187:
	ld	[%i0 + 48], %o4
	st	%o4, [%o5 + 8]
be_cont.26183:
	ld	[%i0 + 44], %o4
	st	%o4, [%o5 + 4]
be_cont.26179:
	ld	[%i0 + 40], %o4
	st	%o4, [%o5 + 0]
be_cont.26175:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.26198
	nop
	ld	[%i0 + 36], %o5
	add	%o5, 1, %i2
	st	%o7, [%i0 + 68]
	call	min_caml_create_array
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	b	be_cont.26199
	nop
be_else.26198:
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
	bne	be_else.26202
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 76]
	call	min_caml_create_array
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	b	be_cont.26203
	nop
be_else.26202:
	st	%o5, [%i0 + 72]
	st	%o7, [%i0 + 76]
	call	min_caml_read_int
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26206
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 76]
	call	min_caml_create_array
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	b	be_cont.26207
	nop
be_else.26206:
	st	%o5, [%i0 + 76]
	st	%o7, [%i0 + 84]
	call	min_caml_read_int
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26210
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 84]
	call	min_caml_create_array
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	b	be_cont.26211
	nop
be_else.26210:
	st	%o5, [%i0 + 80]
	st	%o7, [%i0 + 84]
	call	min_caml_read_int
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26214
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 84]
	call	min_caml_create_array
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	b	be_cont.26215
	nop
be_else.26214:
	st	%o5, [%i0 + 84]
	st	%o7, [%i0 + 92]
	call	min_caml_read_int
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26218
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 92]
	call	min_caml_create_array
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	b	be_cont.26219
	nop
be_else.26218:
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
be_cont.26219:
	ld	[%i0 + 84], %o4
	st	%o4, [%o5 + 12]
be_cont.26215:
	ld	[%i0 + 80], %o4
	st	%o4, [%o5 + 8]
be_cont.26211:
	ld	[%i0 + 76], %o4
	st	%o4, [%o5 + 4]
be_cont.26207:
	ld	[%i0 + 72], %o4
	st	%o4, [%o5 + 0]
be_cont.26203:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.26222
	nop
	ld	[%i0 + 68], %o5
	add	%o5, 1, %i2
	st	%o7, [%i0 + 92]
	call	min_caml_create_array
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	b	be_cont.26223
	nop
be_else.26222:
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
	bne	be_else.26226
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 100]
	call	min_caml_create_array
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	b	be_cont.26227
	nop
be_else.26226:
	st	%o5, [%i0 + 100]
	st	%o7, [%i0 + 108]
	call	min_caml_read_int
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26230
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 108]
	call	min_caml_create_array
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	b	be_cont.26231
	nop
be_else.26230:
	st	%o5, [%i0 + 104]
	st	%o7, [%i0 + 108]
	call	min_caml_read_int
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26234
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 108]
	call	min_caml_create_array
	add	%i0, 112, %i0	! delay slot
	sub	%i0, 112, %i0
	ld	[%i0 + 108], %o7
	mov	%i2, %o5
	b	be_cont.26235
	nop
be_else.26234:
	st	%o5, [%i0 + 108]
	st	%o7, [%i0 + 116]
	call	min_caml_read_int
	add	%i0, 120, %i0	! delay slot
	sub	%i0, 120, %i0
	ld	[%i0 + 116], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26238
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 116]
	call	min_caml_create_array
	add	%i0, 120, %i0	! delay slot
	sub	%i0, 120, %i0
	ld	[%i0 + 116], %o7
	mov	%i2, %o5
	b	be_cont.26239
	nop
be_else.26238:
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
be_cont.26239:
	ld	[%i0 + 108], %o4
	st	%o4, [%o5 + 8]
be_cont.26235:
	ld	[%i0 + 104], %o4
	st	%o4, [%o5 + 4]
be_cont.26231:
	ld	[%i0 + 100], %o4
	st	%o4, [%o5 + 0]
be_cont.26227:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.26242
	nop
	ld	[%i0 + 96], %o5
	add	%o5, 1, %i2
	st	%o7, [%i0 + 116]
	call	min_caml_create_array
	add	%i0, 120, %i0	! delay slot
	sub	%i0, 120, %i0
	ld	[%i0 + 116], %o7
	mov	%i2, %o5
	b	be_cont.26243
	nop
be_else.26242:
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
be_cont.26243:
	ld	[%i0 + 68], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 92], %o3
	st	%o3, [%o5 + %o4]
be_cont.26223:
	ld	[%i0 + 36], %o4
	sll	%o4, 2, %o4
	ld	[%i0 + 64], %o3
	st	%o3, [%o5 + %o4]
be_cont.26199:
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
	bne	be_else.26247
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 4]
	call	min_caml_create_array
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	b	be_cont.26248
	nop
be_else.26247:
	st	%o5, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26251
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.26252
	nop
be_else.26251:
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26255
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.26256
	nop
be_else.26255:
	st	%o5, [%i0 + 12]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26259
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.26260
	nop
be_else.26259:
	st	%o5, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26263
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.26264
	nop
be_else.26263:
	st	%o5, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26267
	nop
	set	6, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.26268
	nop
be_else.26267:
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26271
	nop
	set	7, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.26272
	nop
be_else.26271:
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
be_cont.26272:
	ld	[%i0 + 24], %o4
	st	%o4, [%o5 + 20]
be_cont.26268:
	ld	[%i0 + 20], %o4
	st	%o4, [%o5 + 16]
be_cont.26264:
	ld	[%i0 + 16], %o4
	st	%o4, [%o5 + 12]
be_cont.26260:
	ld	[%i0 + 12], %o4
	st	%o4, [%o5 + 8]
be_cont.26256:
	ld	[%i0 + 8], %o4
	st	%o4, [%o5 + 4]
be_cont.26252:
	ld	[%i0 + 4], %o4
	st	%o4, [%o5 + 0]
be_cont.26248:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.26275
	nop
	retl
	nop
be_else.26275:
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
	bne	be_else.26278
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 36]
	call	min_caml_create_array
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.26279
	nop
be_else.26278:
	st	%o5, [%i0 + 36]
	st	%o7, [%i0 + 44]
	call	min_caml_read_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26282
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.26283
	nop
be_else.26282:
	st	%o5, [%i0 + 40]
	st	%o7, [%i0 + 44]
	call	min_caml_read_int
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26286
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 44]
	call	min_caml_create_array
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
	b	be_cont.26287
	nop
be_else.26286:
	st	%o5, [%i0 + 44]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26290
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.26291
	nop
be_else.26290:
	st	%o5, [%i0 + 48]
	st	%o7, [%i0 + 52]
	call	min_caml_read_int
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26294
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 52]
	call	min_caml_create_array
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.26295
	nop
be_else.26294:
	st	%o5, [%i0 + 52]
	st	%o7, [%i0 + 60]
	call	min_caml_read_int
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26298
	nop
	set	6, %i2
	set	-1, %i3
	st	%o7, [%i0 + 60]
	call	min_caml_create_array
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.26299
	nop
be_else.26298:
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
be_cont.26299:
	ld	[%i0 + 52], %o4
	st	%o4, [%o5 + 16]
be_cont.26295:
	ld	[%i0 + 48], %o4
	st	%o4, [%o5 + 12]
be_cont.26291:
	ld	[%i0 + 44], %o4
	st	%o4, [%o5 + 8]
be_cont.26287:
	ld	[%i0 + 40], %o4
	st	%o4, [%o5 + 4]
be_cont.26283:
	ld	[%i0 + 36], %o4
	st	%o4, [%o5 + 0]
be_cont.26279:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.26302
	nop
	retl
	nop
be_else.26302:
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
	bne	be_else.26305
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 68]
	call	min_caml_create_array
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	b	be_cont.26306
	nop
be_else.26305:
	st	%o5, [%i0 + 64]
	st	%o7, [%i0 + 68]
	call	min_caml_read_int
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26309
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 68]
	call	min_caml_create_array
	add	%i0, 72, %i0	! delay slot
	sub	%i0, 72, %i0
	ld	[%i0 + 68], %o7
	mov	%i2, %o5
	b	be_cont.26310
	nop
be_else.26309:
	st	%o5, [%i0 + 68]
	st	%o7, [%i0 + 76]
	call	min_caml_read_int
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26313
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 76]
	call	min_caml_create_array
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	b	be_cont.26314
	nop
be_else.26313:
	st	%o5, [%i0 + 72]
	st	%o7, [%i0 + 76]
	call	min_caml_read_int
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26317
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 76]
	call	min_caml_create_array
	add	%i0, 80, %i0	! delay slot
	sub	%i0, 80, %i0
	ld	[%i0 + 76], %o7
	mov	%i2, %o5
	b	be_cont.26318
	nop
be_else.26317:
	st	%o5, [%i0 + 76]
	st	%o7, [%i0 + 84]
	call	min_caml_read_int
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26321
	nop
	set	5, %i2
	set	-1, %i3
	st	%o7, [%i0 + 84]
	call	min_caml_create_array
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
	b	be_cont.26322
	nop
be_else.26321:
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
be_cont.26322:
	ld	[%i0 + 76], %o4
	st	%o4, [%o5 + 12]
be_cont.26318:
	ld	[%i0 + 72], %o4
	st	%o4, [%o5 + 8]
be_cont.26314:
	ld	[%i0 + 68], %o4
	st	%o4, [%o5 + 4]
be_cont.26310:
	ld	[%i0 + 64], %o4
	st	%o4, [%o5 + 0]
be_cont.26306:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.26325
	nop
	retl
	nop
be_else.26325:
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
	bne	be_else.26328
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 92]
	call	min_caml_create_array
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	b	be_cont.26329
	nop
be_else.26328:
	st	%o5, [%i0 + 88]
	st	%o7, [%i0 + 92]
	call	min_caml_read_int
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26332
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 92]
	call	min_caml_create_array
	add	%i0, 96, %i0	! delay slot
	sub	%i0, 96, %i0
	ld	[%i0 + 92], %o7
	mov	%i2, %o5
	b	be_cont.26333
	nop
be_else.26332:
	st	%o5, [%i0 + 92]
	st	%o7, [%i0 + 100]
	call	min_caml_read_int
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26336
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 100]
	call	min_caml_create_array
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	b	be_cont.26337
	nop
be_else.26336:
	st	%o5, [%i0 + 96]
	st	%o7, [%i0 + 100]
	call	min_caml_read_int
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.26340
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 100]
	call	min_caml_create_array
	add	%i0, 104, %i0	! delay slot
	sub	%i0, 104, %i0
	ld	[%i0 + 100], %o7
	mov	%i2, %o5
	b	be_cont.26341
	nop
be_else.26340:
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
be_cont.26341:
	ld	[%i0 + 96], %o4
	st	%o4, [%o5 + 8]
be_cont.26337:
	ld	[%i0 + 92], %o4
	st	%o4, [%o5 + 4]
be_cont.26333:
	ld	[%i0 + 88], %o4
	st	%o4, [%o5 + 0]
be_cont.26329:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.26344
	nop
	retl
	nop
be_else.26344:
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
	fbne	fbe_else.26346
	nop
	set	0, %o5
	b	fbe_cont.26347
	nop
fbe_else.26346:
	ld	[%i2 + 24], %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	ldd	[%i3 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26348
	nop
	set	0, %o4
	b	fble_cont.26349
	nop
fble_else.26348:
	set	1, %o4
fble_cont.26349:
	cmp	%o5, 0
	bne	be_else.26350
	nop
	mov	%o4, %o5
	b	be_cont.26351
	nop
be_else.26350:
	cmp	%o4, 0
	bne	be_else.26352
	nop
	set	1, %o5
	b	be_cont.26353
	nop
be_else.26352:
	set	0, %o5
be_cont.26353:
be_cont.26351:
	cmp	%o5, 0
	bne	be_else.26354
	nop
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
	fnegs	%f14, %f14
	b	be_cont.26355
	nop
be_else.26354:
	ld	[%i2 + 16], %o5
	ldd	[%o5 + 0], %f14
be_cont.26355:
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
	fbg	fble_else.26357
	nop
	set	0, %o5
	b	fble_cont.26358
	nop
fble_else.26357:
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
	fbg	fble_else.26360
	nop
	set	0, %o5
	b	fble_cont.26361
	nop
fble_else.26360:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 8], %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.26361:
fble_cont.26358:
fbe_cont.26347:
	cmp	%o5, 0
	bne	be_else.26362
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 8], %f12
	fcmpd	%f14, %f12
	nop
	fbne	fbe_else.26363
	nop
	set	0, %o5
	b	fbe_cont.26364
	nop
fbe_else.26363:
	ld	[%i0 + 0], %o4
	ld	[%o4 + 24], %o3
	set	l.10753, %o2
	ldd	[%o2 + 0], %f14
	ldd	[%o5 + 8], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26365
	nop
	set	0, %o2
	b	fble_cont.26366
	nop
fble_else.26365:
	set	1, %o2
fble_cont.26366:
	cmp	%o3, 0
	bne	be_else.26367
	nop
	mov	%o2, %o3
	b	be_cont.26368
	nop
be_else.26367:
	cmp	%o2, 0
	bne	be_else.26369
	nop
	set	1, %o3
	b	be_cont.26370
	nop
be_else.26369:
	set	0, %o3
be_cont.26370:
be_cont.26368:
	cmp	%o3, 0
	bne	be_else.26371
	nop
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 8], %f14
	fnegs	%f14, %f14
	b	be_cont.26372
	nop
be_else.26371:
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 8], %f14
be_cont.26372:
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
	fbg	fble_else.26374
	nop
	set	0, %o5
	b	fble_cont.26375
	nop
fble_else.26374:
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
	fbg	fble_else.26377
	nop
	set	0, %o5
	b	fble_cont.26378
	nop
fble_else.26377:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 32], %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.26378:
fble_cont.26375:
fbe_cont.26364:
	cmp	%o5, 0
	bne	be_else.26379
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 16], %f12
	fcmpd	%f14, %f12
	nop
	fbne	fbe_else.26380
	nop
	set	0, %o5
	b	fbe_cont.26381
	nop
fbe_else.26380:
	ld	[%i0 + 0], %o4
	ld	[%o4 + 24], %o3
	set	l.10753, %o2
	ldd	[%o2 + 0], %f14
	ldd	[%o5 + 16], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26382
	nop
	set	0, %o2
	b	fble_cont.26383
	nop
fble_else.26382:
	set	1, %o2
fble_cont.26383:
	cmp	%o3, 0
	bne	be_else.26384
	nop
	mov	%o2, %o3
	b	be_cont.26385
	nop
be_else.26384:
	cmp	%o2, 0
	bne	be_else.26386
	nop
	set	1, %o3
	b	be_cont.26387
	nop
be_else.26386:
	set	0, %o3
be_cont.26387:
be_cont.26385:
	cmp	%o3, 0
	bne	be_else.26388
	nop
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 16], %f14
	fnegs	%f14, %f14
	b	be_cont.26389
	nop
be_else.26388:
	ld	[%o4 + 16], %o3
	ldd	[%o3 + 16], %f14
be_cont.26389:
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
	fbg	fble_else.26391
	nop
	set	0, %o5
	b	fble_cont.26392
	nop
fble_else.26391:
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
	fbg	fble_else.26394
	nop
	set	0, %o5
	b	fble_cont.26395
	nop
fble_else.26394:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 56], %f14
	std	%f14, [%o5 + 0]
	set	1, %o5
fble_cont.26395:
fble_cont.26392:
fbe_cont.26381:
	cmp	%o5, 0
	bne	be_else.26396
	nop
	set	0, %i2
	retl
	nop
be_else.26396:
	set	3, %i2
	retl
	nop
be_else.26379:
	set	2, %i2
	retl
	nop
be_else.26362:
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
	bne	be_else.26397
	nop
	b	be_cont.26398
	nop
be_else.26397:
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
be_cont.26398:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.26399
	nop
	set	0, %i2
	retl
	nop
fbe_else.26399:
	set	l.10886, %o5
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
	bne	be_else.26400
	nop
	b	be_cont.26401
	nop
be_else.26400:
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
be_cont.26401:
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
	bne	be_else.26402
	nop
	b	be_cont.26403
	nop
be_else.26402:
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
be_cont.26403:
	ld	[%i2 + 4], %o5
	cmp	%o5, 3
	bne	be_else.26404
	nop
	set	l.10801, %o5
	ldd	[%o5 + 0], %f8
	fsubd	%f10, %f8, %f10
	b	be_cont.26405
	nop
be_else.26404:
be_cont.26405:
	set	l.11096, %o5
	ldd	[%o5 + 0], %f8
	fmuld	%f8, %f14, %f8
	fmuld	%f8, %f10, %f10
	fmuld	%f12, %f12, %f8
	fsubd	%f8, %f10, %f0
	set	l.10753, %o5
	ldd	[%o5 + 0], %f10
	fcmpd	%f0, %f10
	nop
	fbg	fble_else.26406
	nop
	set	0, %i2
	retl
	nop
fble_else.26406:
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
	bne	be_else.26408
	nop
	fnegs	%f14, %f14
	b	be_cont.26409
	nop
be_else.26408:
be_cont.26409:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 8], %f12
	fsubd	%f14, %f12, %f14
	set	l.10886, %o4
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
	bne	be_else.26410
	nop
	b	solver_rect.2890
	nop
be_else.26410:
	cmp	%o5, 2
	bne	be_else.26411
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
	fbg	fble_else.26412
	nop
	set	0, %i2
	retl
	nop
fble_else.26412:
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
be_else.26411:
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
	bne	be_else.26413
	nop
	b	be_cont.26414
	nop
be_else.26413:
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
be_cont.26414:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbne	fbe_else.26415
	nop
	set	0, %i2
	retl
	nop
fbe_else.26415:
	std	%f14, [%i0 + 0]
	st	%i2, [%i0 + 8]
	set	l.10886, %o5
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
	bne	be_else.26416
	nop
	b	be_cont.26417
	nop
be_else.26416:
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
be_cont.26417:
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
	bne	be_else.26420
	nop
	b	be_cont.26421
	nop
be_else.26420:
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
be_cont.26421:
	ld	[%o4 + 4], %o5
	cmp	%o5, 3
	bne	be_else.26422
	nop
	set	l.10801, %o5
	ldd	[%o5 + 0], %f10
	fsubd	%f12, %f10, %f12
	b	be_cont.26423
	nop
be_else.26422:
be_cont.26423:
	set	l.11096, %o5
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
	fbg	fble_else.26424
	nop
	set	0, %i2
	retl
	nop
fble_else.26424:
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
	bne	be_else.26426
	nop
	fnegs	%f14, %f14
	b	be_cont.26427
	nop
be_else.26426:
be_cont.26427:
	set	min_caml_solver_dist, %o5
	ldd	[%i0 + 24], %f12
	fsubd	%f14, %f12, %f14
	set	l.10886, %o4
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
	bne	be_else.26428
	nop
	set	l.10801, %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	b	be_cont.26429
	nop
be_else.26428:
be_cont.26429:
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.26430
	nop
	b	be_cont.26431
	nop
be_else.26430:
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
be_cont.26431:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.26432
	nop
	set	0, %o5
	b	fble_cont.26433
	nop
fble_else.26432:
	set	1, %o5
fble_cont.26433:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.26434
	nop
	b	be_cont.26435
	nop
be_else.26434:
	cmp	%o5, 0
	bne	be_else.26436
	nop
	set	1, %o5
	b	be_cont.26437
	nop
be_else.26436:
	set	0, %o5
be_cont.26437:
be_cont.26435:
	cmp	%o5, 0
	bne	be_else.26438
	nop
	set	1, %i2
	retl
	nop
be_else.26438:
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
	bne	be_else.26439
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
	fbg	fble_else.26442
	nop
	set	0, %o5
	b	fble_cont.26443
	nop
fble_else.26442:
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
	fbg	fble_else.26445
	nop
	set	0, %o5
	b	fble_cont.26446
	nop
fble_else.26445:
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
	fbg	fble_else.26448
	nop
	set	0, %o5
	b	fble_cont.26449
	nop
fble_else.26448:
	set	1, %o5
fble_cont.26449:
fble_cont.26446:
fble_cont.26443:
	cmp	%o5, 0
	bne	be_else.26450
	nop
	ld	[%i0 + 0], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.26451
	nop
	set	1, %i2
	retl
	nop
be_else.26451:
	set	0, %i2
	retl
	nop
be_else.26450:
	ld	[%i0 + 0], %o5
	ld	[%o5 + 24], %i2
	retl
	nop
be_else.26439:
	cmp	%o5, 2
	bne	be_else.26452
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
	fbg	fble_else.26453
	nop
	set	0, %o5
	b	fble_cont.26454
	nop
fble_else.26453:
	set	1, %o5
fble_cont.26454:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.26455
	nop
	b	be_cont.26456
	nop
be_else.26455:
	cmp	%o5, 0
	bne	be_else.26457
	nop
	set	1, %o5
	b	be_cont.26458
	nop
be_else.26457:
	set	0, %o5
be_cont.26458:
be_cont.26456:
	cmp	%o5, 0
	bne	be_else.26459
	nop
	set	1, %i2
	retl
	nop
be_else.26459:
	set	0, %i2
	retl
	nop
be_else.26452:
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
	bne	be_else.26460
	nop
	set	l.10801, %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	b	be_cont.26461
	nop
be_else.26460:
be_cont.26461:
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.26462
	nop
	b	be_cont.26463
	nop
be_else.26462:
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
be_cont.26463:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.26464
	nop
	set	0, %o5
	b	fble_cont.26465
	nop
fble_else.26464:
	set	1, %o5
fble_cont.26465:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.26466
	nop
	b	be_cont.26467
	nop
be_else.26466:
	cmp	%o5, 0
	bne	be_else.26468
	nop
	set	1, %o5
	b	be_cont.26469
	nop
be_else.26468:
	set	0, %o5
be_cont.26469:
be_cont.26467:
	cmp	%o5, 0
	bne	be_else.26470
	nop
	set	1, %i2
	retl
	nop
be_else.26470:
	set	0, %i2
	retl
	nop
check_all_inside.3346:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.26471
	nop
	set	1, %i2
	retl
	nop
be_else.26471:
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
	bne	be_else.26472
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
	fbg	fble_else.26476
	nop
	set	0, %o5
	b	fble_cont.26477
	nop
fble_else.26476:
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
	fbg	fble_else.26479
	nop
	set	0, %o5
	b	fble_cont.26480
	nop
fble_else.26479:
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
	fbg	fble_else.26482
	nop
	set	0, %o5
	b	fble_cont.26483
	nop
fble_else.26482:
	set	1, %o5
fble_cont.26483:
fble_cont.26480:
fble_cont.26477:
	cmp	%o5, 0
	bne	be_else.26484
	nop
	ld	[%i0 + 8], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.26486
	nop
	set	1, %o5
	b	be_cont.26487
	nop
be_else.26486:
	set	0, %o5
be_cont.26487:
	b	be_cont.26485
	nop
be_else.26484:
	ld	[%i0 + 8], %o5
	ld	[%o5 + 24], %o5
be_cont.26485:
	b	be_cont.26473
	nop
be_else.26472:
	cmp	%o5, 2
	bne	be_else.26488
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
	fbg	fble_else.26490
	nop
	set	0, %o5
	b	fble_cont.26491
	nop
fble_else.26490:
	set	1, %o5
fble_cont.26491:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.26492
	nop
	b	be_cont.26493
	nop
be_else.26492:
	cmp	%o5, 0
	bne	be_else.26494
	nop
	set	1, %o5
	b	be_cont.26495
	nop
be_else.26494:
	set	0, %o5
be_cont.26495:
be_cont.26493:
	cmp	%o5, 0
	bne	be_else.26496
	nop
	set	1, %o5
	b	be_cont.26497
	nop
be_else.26496:
	set	0, %o5
be_cont.26497:
	b	be_cont.26489
	nop
be_else.26488:
	st	%o7, [%i0 + 44]
	call	is_second_outside.3299
	add	%i0, 48, %i0	! delay slot
	sub	%i0, 48, %i0
	ld	[%i0 + 44], %o7
	mov	%i2, %o5
be_cont.26489:
be_cont.26473:
	cmp	%o5, 0
	bne	be_else.26499
	nop
	ld	[%i0 + 4], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26500
	nop
	set	1, %i2
	retl
	nop
be_else.26500:
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
	bne	be_else.26502
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26503
	nop
	set	1, %i2
	retl
	nop
be_else.26503:
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
	bne	be_else.26504
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
	fbg	fble_else.26508
	nop
	set	0, %o5
	b	fble_cont.26509
	nop
fble_else.26508:
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
	fbg	fble_else.26511
	nop
	set	0, %o5
	b	fble_cont.26512
	nop
fble_else.26511:
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
	fbg	fble_else.26514
	nop
	set	0, %o5
	b	fble_cont.26515
	nop
fble_else.26514:
	set	1, %o5
fble_cont.26515:
fble_cont.26512:
fble_cont.26509:
	cmp	%o5, 0
	bne	be_else.26516
	nop
	ld	[%i0 + 48], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.26518
	nop
	set	1, %o5
	b	be_cont.26519
	nop
be_else.26518:
	set	0, %o5
be_cont.26519:
	b	be_cont.26517
	nop
be_else.26516:
	ld	[%i0 + 48], %o5
	ld	[%o5 + 24], %o5
be_cont.26517:
	b	be_cont.26505
	nop
be_else.26504:
	cmp	%o5, 2
	bne	be_else.26520
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
	fbg	fble_else.26522
	nop
	set	0, %o5
	b	fble_cont.26523
	nop
fble_else.26522:
	set	1, %o5
fble_cont.26523:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.26524
	nop
	b	be_cont.26525
	nop
be_else.26524:
	cmp	%o5, 0
	bne	be_else.26526
	nop
	set	1, %o5
	b	be_cont.26527
	nop
be_else.26526:
	set	0, %o5
be_cont.26527:
be_cont.26525:
	cmp	%o5, 0
	bne	be_else.26528
	nop
	set	1, %o5
	b	be_cont.26529
	nop
be_else.26528:
	set	0, %o5
be_cont.26529:
	b	be_cont.26521
	nop
be_else.26520:
	st	%o7, [%i0 + 84]
	call	is_second_outside.3299
	add	%i0, 88, %i0	! delay slot
	sub	%i0, 88, %i0
	ld	[%i0 + 84], %o7
	mov	%i2, %o5
be_cont.26521:
be_cont.26505:
	cmp	%o5, 0
	bne	be_else.26531
	nop
	ld	[%i0 + 44], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26532
	nop
	set	1, %i2
	retl
	nop
be_else.26532:
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
	bne	be_else.26534
	nop
	ld	[%i0 + 80], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 0], %i3
	b	check_all_inside.3346
	nop
be_else.26534:
	set	0, %i2
	retl
	nop
be_else.26531:
	set	0, %i2
	retl
	nop
be_else.26502:
	set	0, %i2
	retl
	nop
be_else.26499:
	set	0, %i2
	retl
	nop
shadow_check_and_group.3357:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.26535
	nop
	set	0, %i2
	retl
	nop
be_else.26535:
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
	bne	be_else.26536
	nop
	st	%o7, [%i0 + 20]
	call	solver_rect.2890
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.26537
	nop
be_else.26536:
	cmp	%o5, 2
	bne	be_else.26539
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
	fbg	fble_else.26541
	nop
	set	0, %o5
	b	fble_cont.26542
	nop
fble_else.26541:
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
fble_cont.26542:
	b	be_cont.26540
	nop
be_else.26539:
	st	%o7, [%i0 + 20]
	call	solver_second.3180
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
be_cont.26540:
be_cont.26537:
	set	min_caml_solver_dist, %o4
	ldd	[%o4 + 0], %f14
	cmp	%o5, 0
	bne	be_else.26544
	nop
	set	0, %o5
	b	be_cont.26545
	nop
be_else.26544:
	set	l.11306, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.26546
	nop
	set	0, %o5
	b	fble_cont.26547
	nop
fble_else.26546:
	set	1, %o5
fble_cont.26547:
be_cont.26545:
	cmp	%o5, 0
	bne	be_else.26548
	nop
	set	min_caml_objects, %o5
	ld	[%i0 + 12], %o4
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.26549
	nop
	set	0, %i2
	retl
	nop
be_else.26549:
	ld	[%i0 + 8], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_and_group.3357
	nop
be_else.26548:
	set	l.11308, %o5
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
	bne	be_else.26550
	nop
	set	1, %o5
	b	be_cont.26551
	nop
be_else.26550:
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
	bne	be_else.26553
	nop
	ld	[%i0 + 4], %i3
	ld	[%i3 + 4], %o5
	cmp	%o5, -1
	bne	be_else.26555
	nop
	set	1, %o5
	b	be_cont.26556
	nop
be_else.26555:
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
	bne	be_else.26557
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
	fbg	fble_else.26561
	nop
	set	0, %o5
	b	fble_cont.26562
	nop
fble_else.26561:
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
	fbg	fble_else.26564
	nop
	set	0, %o5
	b	fble_cont.26565
	nop
fble_else.26564:
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
	fbg	fble_else.26567
	nop
	set	0, %o5
	b	fble_cont.26568
	nop
fble_else.26567:
	set	1, %o5
fble_cont.26568:
fble_cont.26565:
fble_cont.26562:
	cmp	%o5, 0
	bne	be_else.26569
	nop
	ld	[%i0 + 16], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.26571
	nop
	set	1, %o5
	b	be_cont.26572
	nop
be_else.26571:
	set	0, %o5
be_cont.26572:
	b	be_cont.26570
	nop
be_else.26569:
	ld	[%i0 + 16], %o5
	ld	[%o5 + 24], %o5
be_cont.26570:
	b	be_cont.26558
	nop
be_else.26557:
	cmp	%o5, 2
	bne	be_else.26573
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
	fbg	fble_else.26575
	nop
	set	0, %o5
	b	fble_cont.26576
	nop
fble_else.26575:
	set	1, %o5
fble_cont.26576:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.26577
	nop
	b	be_cont.26578
	nop
be_else.26577:
	cmp	%o5, 0
	bne	be_else.26579
	nop
	set	1, %o5
	b	be_cont.26580
	nop
be_else.26579:
	set	0, %o5
be_cont.26580:
be_cont.26578:
	cmp	%o5, 0
	bne	be_else.26581
	nop
	set	1, %o5
	b	be_cont.26582
	nop
be_else.26581:
	set	0, %o5
be_cont.26582:
	b	be_cont.26574
	nop
be_else.26573:
	st	%o7, [%i0 + 52]
	call	is_second_outside.3299
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
be_cont.26574:
be_cont.26558:
	cmp	%o5, 0
	bne	be_else.26584
	nop
	ld	[%i0 + 4], %i3
	ld	[%i3 + 8], %o5
	cmp	%o5, -1
	bne	be_else.26586
	nop
	set	1, %o5
	b	be_cont.26587
	nop
be_else.26586:
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
	bne	be_else.26589
	nop
	set	3, %i2
	ld	[%i0 + 4], %i3
	st	%o7, [%i0 + 52]
	call	check_all_inside.3346
	add	%i0, 56, %i0	! delay slot
	sub	%i0, 56, %i0
	ld	[%i0 + 52], %o7
	mov	%i2, %o5
	b	be_cont.26590
	nop
be_else.26589:
	set	0, %o5
be_cont.26590:
be_cont.26587:
	b	be_cont.26585
	nop
be_else.26584:
	set	0, %o5
be_cont.26585:
be_cont.26556:
	b	be_cont.26554
	nop
be_else.26553:
	set	0, %o5
be_cont.26554:
be_cont.26551:
	cmp	%o5, 0
	bne	be_else.26592
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_and_group.3357
	nop
be_else.26592:
	set	1, %i2
	retl
	nop
shadow_check_one_or_group.3416:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.26593
	nop
	set	0, %i2
	retl
	nop
be_else.26593:
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
	bne	be_else.26595
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26596
	nop
	set	0, %i2
	retl
	nop
be_else.26596:
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
	bne	be_else.26598
	nop
	ld	[%i0 + 12], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26599
	nop
	set	0, %i2
	retl
	nop
be_else.26599:
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
	bne	be_else.26601
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26602
	nop
	set	0, %i2
	retl
	nop
be_else.26602:
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
	bne	be_else.26604
	nop
	ld	[%i0 + 20], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26605
	nop
	set	0, %i2
	retl
	nop
be_else.26605:
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
	bne	be_else.26607
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26608
	nop
	set	0, %i2
	retl
	nop
be_else.26608:
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
	bne	be_else.26610
	nop
	ld	[%i0 + 28], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26611
	nop
	set	0, %i2
	retl
	nop
be_else.26611:
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
	bne	be_else.26613
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %o3
	ld	[%o3 + %o4], %o4
	cmp	%o4, -1
	bne	be_else.26614
	nop
	set	0, %i2
	retl
	nop
be_else.26614:
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
	bne	be_else.26616
	nop
	ld	[%i0 + 36], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_group.3416
	nop
be_else.26616:
	set	1, %i2
	retl
	nop
be_else.26613:
	set	1, %i2
	retl
	nop
be_else.26610:
	set	1, %i2
	retl
	nop
be_else.26607:
	set	1, %i2
	retl
	nop
be_else.26604:
	set	1, %i2
	retl
	nop
be_else.26601:
	set	1, %i2
	retl
	nop
be_else.26598:
	set	1, %i2
	retl
	nop
be_else.26595:
	set	1, %i2
	retl
	nop
shadow_check_one_or_matrix.3429:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.26617
	nop
	set	0, %i2
	retl
	nop
be_else.26617:
	cmp	%o4, 99
	bne	be_else.26618
	nop
	st	%i4, [%i0 + 0]
	st	%i3, [%i0 + 4]
	st	%i2, [%i0 + 8]
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.26619
	nop
	set	0, %o5
	b	be_cont.26620
	nop
be_else.26619:
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
	bne	be_else.26622
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26624
	nop
	set	0, %o5
	b	be_cont.26625
	nop
be_else.26624:
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
	bne	be_else.26627
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26629
	nop
	set	0, %o5
	b	be_cont.26630
	nop
be_else.26629:
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
	bne	be_else.26632
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26634
	nop
	set	0, %o5
	b	be_cont.26635
	nop
be_else.26634:
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
	bne	be_else.26637
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26639
	nop
	set	0, %o5
	b	be_cont.26640
	nop
be_else.26639:
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
	bne	be_else.26642
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26644
	nop
	set	0, %o5
	b	be_cont.26645
	nop
be_else.26644:
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
	bne	be_else.26647
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 28], %o4
	cmp	%o4, -1
	bne	be_else.26649
	nop
	set	0, %o5
	b	be_cont.26650
	nop
be_else.26649:
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
	bne	be_else.26652
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
	b	be_cont.26653
	nop
be_else.26652:
	set	1, %o5
be_cont.26653:
be_cont.26650:
	b	be_cont.26648
	nop
be_else.26647:
	set	1, %o5
be_cont.26648:
be_cont.26645:
	b	be_cont.26643
	nop
be_else.26642:
	set	1, %o5
be_cont.26643:
be_cont.26640:
	b	be_cont.26638
	nop
be_else.26637:
	set	1, %o5
be_cont.26638:
be_cont.26635:
	b	be_cont.26633
	nop
be_else.26632:
	set	1, %o5
be_cont.26633:
be_cont.26630:
	b	be_cont.26628
	nop
be_else.26627:
	set	1, %o5
be_cont.26628:
be_cont.26625:
	b	be_cont.26623
	nop
be_else.26622:
	set	1, %o5
be_cont.26623:
be_cont.26620:
	cmp	%o5, 0
	bne	be_else.26655
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.26656
	nop
	set	0, %i2
	retl
	nop
be_else.26656:
	cmp	%i2, 99
	bne	be_else.26657
	nop
	st	%o5, [%i0 + 16]
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.26658
	nop
	set	0, %o5
	b	be_cont.26659
	nop
be_else.26658:
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
	bne	be_else.26661
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26663
	nop
	set	0, %o5
	b	be_cont.26664
	nop
be_else.26663:
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
	bne	be_else.26666
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26668
	nop
	set	0, %o5
	b	be_cont.26669
	nop
be_else.26668:
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
	bne	be_else.26671
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26673
	nop
	set	0, %o5
	b	be_cont.26674
	nop
be_else.26673:
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
	bne	be_else.26676
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26678
	nop
	set	0, %o5
	b	be_cont.26679
	nop
be_else.26678:
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
	bne	be_else.26681
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26683
	nop
	set	0, %o5
	b	be_cont.26684
	nop
be_else.26683:
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
	bne	be_else.26686
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
	b	be_cont.26687
	nop
be_else.26686:
	set	1, %o5
be_cont.26687:
be_cont.26684:
	b	be_cont.26682
	nop
be_else.26681:
	set	1, %o5
be_cont.26682:
be_cont.26679:
	b	be_cont.26677
	nop
be_else.26676:
	set	1, %o5
be_cont.26677:
be_cont.26674:
	b	be_cont.26672
	nop
be_else.26671:
	set	1, %o5
be_cont.26672:
be_cont.26669:
	b	be_cont.26667
	nop
be_else.26666:
	set	1, %o5
be_cont.26667:
be_cont.26664:
	b	be_cont.26662
	nop
be_else.26661:
	set	1, %o5
be_cont.26662:
be_cont.26659:
	cmp	%o5, 0
	bne	be_else.26689
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26689:
	set	1, %i2
	retl
	nop
be_else.26657:
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
	bne	be_else.26691
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26691:
	set	l.11390, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26692
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
fble_else.26692:
	ld	[%i0 + 20], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.26693
	nop
	set	0, %o5
	b	be_cont.26694
	nop
be_else.26693:
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
	bne	be_else.26696
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26698
	nop
	set	0, %o5
	b	be_cont.26699
	nop
be_else.26698:
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
	bne	be_else.26701
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26703
	nop
	set	0, %o5
	b	be_cont.26704
	nop
be_else.26703:
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
	bne	be_else.26706
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26708
	nop
	set	0, %o5
	b	be_cont.26709
	nop
be_else.26708:
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
	bne	be_else.26711
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26713
	nop
	set	0, %o5
	b	be_cont.26714
	nop
be_else.26713:
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
	bne	be_else.26716
	nop
	ld	[%i0 + 20], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26718
	nop
	set	0, %o5
	b	be_cont.26719
	nop
be_else.26718:
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
	bne	be_else.26721
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
	b	be_cont.26722
	nop
be_else.26721:
	set	1, %o5
be_cont.26722:
be_cont.26719:
	b	be_cont.26717
	nop
be_else.26716:
	set	1, %o5
be_cont.26717:
be_cont.26714:
	b	be_cont.26712
	nop
be_else.26711:
	set	1, %o5
be_cont.26712:
be_cont.26709:
	b	be_cont.26707
	nop
be_else.26706:
	set	1, %o5
be_cont.26707:
be_cont.26704:
	b	be_cont.26702
	nop
be_else.26701:
	set	1, %o5
be_cont.26702:
be_cont.26699:
	b	be_cont.26697
	nop
be_else.26696:
	set	1, %o5
be_cont.26697:
be_cont.26694:
	cmp	%o5, 0
	bne	be_else.26724
	nop
	ld	[%i0 + 16], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26724:
	set	1, %i2
	retl
	nop
be_else.26655:
	set	1, %i2
	retl
	nop
be_else.26618:
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
	bne	be_else.26725
	nop
	st	%o7, [%i0 + 28]
	call	solver_rect.2890
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.26726
	nop
be_else.26725:
	cmp	%o5, 2
	bne	be_else.26728
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
	fbg	fble_else.26730
	nop
	set	0, %o5
	b	fble_cont.26731
	nop
fble_else.26730:
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
fble_cont.26731:
	b	be_cont.26729
	nop
be_else.26728:
	st	%o7, [%i0 + 28]
	call	solver_second.3180
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
be_cont.26729:
be_cont.26726:
	cmp	%o5, 0
	bne	be_else.26733
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.26734
	nop
	set	0, %i2
	retl
	nop
be_else.26734:
	cmp	%i2, 99
	bne	be_else.26735
	nop
	st	%o5, [%i0 + 24]
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.26736
	nop
	set	0, %o5
	b	be_cont.26737
	nop
be_else.26736:
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
	bne	be_else.26739
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26741
	nop
	set	0, %o5
	b	be_cont.26742
	nop
be_else.26741:
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
	bne	be_else.26744
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26746
	nop
	set	0, %o5
	b	be_cont.26747
	nop
be_else.26746:
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
	bne	be_else.26749
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26751
	nop
	set	0, %o5
	b	be_cont.26752
	nop
be_else.26751:
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
	bne	be_else.26754
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26756
	nop
	set	0, %o5
	b	be_cont.26757
	nop
be_else.26756:
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
	bne	be_else.26759
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26761
	nop
	set	0, %o5
	b	be_cont.26762
	nop
be_else.26761:
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
	bne	be_else.26764
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
	b	be_cont.26765
	nop
be_else.26764:
	set	1, %o5
be_cont.26765:
be_cont.26762:
	b	be_cont.26760
	nop
be_else.26759:
	set	1, %o5
be_cont.26760:
be_cont.26757:
	b	be_cont.26755
	nop
be_else.26754:
	set	1, %o5
be_cont.26755:
be_cont.26752:
	b	be_cont.26750
	nop
be_else.26749:
	set	1, %o5
be_cont.26750:
be_cont.26747:
	b	be_cont.26745
	nop
be_else.26744:
	set	1, %o5
be_cont.26745:
be_cont.26742:
	b	be_cont.26740
	nop
be_else.26739:
	set	1, %o5
be_cont.26740:
be_cont.26737:
	cmp	%o5, 0
	bne	be_else.26767
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26767:
	set	1, %i2
	retl
	nop
be_else.26735:
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
	bne	be_else.26769
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26769:
	set	l.11390, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26770
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
fble_else.26770:
	ld	[%i0 + 28], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.26771
	nop
	set	0, %o5
	b	be_cont.26772
	nop
be_else.26771:
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
	bne	be_else.26774
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26776
	nop
	set	0, %o5
	b	be_cont.26777
	nop
be_else.26776:
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
	bne	be_else.26779
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26781
	nop
	set	0, %o5
	b	be_cont.26782
	nop
be_else.26781:
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
	bne	be_else.26784
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26786
	nop
	set	0, %o5
	b	be_cont.26787
	nop
be_else.26786:
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
	bne	be_else.26789
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26791
	nop
	set	0, %o5
	b	be_cont.26792
	nop
be_else.26791:
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
	bne	be_else.26794
	nop
	ld	[%i0 + 28], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26796
	nop
	set	0, %o5
	b	be_cont.26797
	nop
be_else.26796:
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
	bne	be_else.26799
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
	b	be_cont.26800
	nop
be_else.26799:
	set	1, %o5
be_cont.26800:
be_cont.26797:
	b	be_cont.26795
	nop
be_else.26794:
	set	1, %o5
be_cont.26795:
be_cont.26792:
	b	be_cont.26790
	nop
be_else.26789:
	set	1, %o5
be_cont.26790:
be_cont.26787:
	b	be_cont.26785
	nop
be_else.26784:
	set	1, %o5
be_cont.26785:
be_cont.26782:
	b	be_cont.26780
	nop
be_else.26779:
	set	1, %o5
be_cont.26780:
be_cont.26777:
	b	be_cont.26775
	nop
be_else.26774:
	set	1, %o5
be_cont.26775:
be_cont.26772:
	cmp	%o5, 0
	bne	be_else.26802
	nop
	ld	[%i0 + 24], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26802:
	set	1, %i2
	retl
	nop
be_else.26733:
	set	l.11390, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26803
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.26804
	nop
	set	0, %i2
	retl
	nop
be_else.26804:
	cmp	%i2, 99
	bne	be_else.26805
	nop
	st	%o5, [%i0 + 32]
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.26806
	nop
	set	0, %o5
	b	be_cont.26807
	nop
be_else.26806:
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
	bne	be_else.26809
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26811
	nop
	set	0, %o5
	b	be_cont.26812
	nop
be_else.26811:
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
	bne	be_else.26814
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26816
	nop
	set	0, %o5
	b	be_cont.26817
	nop
be_else.26816:
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
	bne	be_else.26819
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26821
	nop
	set	0, %o5
	b	be_cont.26822
	nop
be_else.26821:
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
	bne	be_else.26824
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26826
	nop
	set	0, %o5
	b	be_cont.26827
	nop
be_else.26826:
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
	bne	be_else.26829
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26831
	nop
	set	0, %o5
	b	be_cont.26832
	nop
be_else.26831:
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
	bne	be_else.26834
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
	b	be_cont.26835
	nop
be_else.26834:
	set	1, %o5
be_cont.26835:
be_cont.26832:
	b	be_cont.26830
	nop
be_else.26829:
	set	1, %o5
be_cont.26830:
be_cont.26827:
	b	be_cont.26825
	nop
be_else.26824:
	set	1, %o5
be_cont.26825:
be_cont.26822:
	b	be_cont.26820
	nop
be_else.26819:
	set	1, %o5
be_cont.26820:
be_cont.26817:
	b	be_cont.26815
	nop
be_else.26814:
	set	1, %o5
be_cont.26815:
be_cont.26812:
	b	be_cont.26810
	nop
be_else.26809:
	set	1, %o5
be_cont.26810:
be_cont.26807:
	cmp	%o5, 0
	bne	be_else.26837
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26837:
	set	1, %i2
	retl
	nop
be_else.26805:
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
	bne	be_else.26839
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26839:
	set	l.11390, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26840
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
fble_else.26840:
	ld	[%i0 + 36], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.26841
	nop
	set	0, %o5
	b	be_cont.26842
	nop
be_else.26841:
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
	bne	be_else.26844
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26846
	nop
	set	0, %o5
	b	be_cont.26847
	nop
be_else.26846:
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
	bne	be_else.26849
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26851
	nop
	set	0, %o5
	b	be_cont.26852
	nop
be_else.26851:
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
	bne	be_else.26854
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26856
	nop
	set	0, %o5
	b	be_cont.26857
	nop
be_else.26856:
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
	bne	be_else.26859
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26861
	nop
	set	0, %o5
	b	be_cont.26862
	nop
be_else.26861:
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
	bne	be_else.26864
	nop
	ld	[%i0 + 36], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26866
	nop
	set	0, %o5
	b	be_cont.26867
	nop
be_else.26866:
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
	bne	be_else.26869
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
	b	be_cont.26870
	nop
be_else.26869:
	set	1, %o5
be_cont.26870:
be_cont.26867:
	b	be_cont.26865
	nop
be_else.26864:
	set	1, %o5
be_cont.26865:
be_cont.26862:
	b	be_cont.26860
	nop
be_else.26859:
	set	1, %o5
be_cont.26860:
be_cont.26857:
	b	be_cont.26855
	nop
be_else.26854:
	set	1, %o5
be_cont.26855:
be_cont.26852:
	b	be_cont.26850
	nop
be_else.26849:
	set	1, %o5
be_cont.26850:
be_cont.26847:
	b	be_cont.26845
	nop
be_else.26844:
	set	1, %o5
be_cont.26845:
be_cont.26842:
	cmp	%o5, 0
	bne	be_else.26872
	nop
	ld	[%i0 + 32], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26872:
	set	1, %i2
	retl
	nop
fble_else.26803:
	ld	[%i0 + 12], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.26873
	nop
	set	0, %o5
	b	be_cont.26874
	nop
be_else.26873:
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
	bne	be_else.26876
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26878
	nop
	set	0, %o5
	b	be_cont.26879
	nop
be_else.26878:
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
	bne	be_else.26881
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26883
	nop
	set	0, %o5
	b	be_cont.26884
	nop
be_else.26883:
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
	bne	be_else.26886
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26888
	nop
	set	0, %o5
	b	be_cont.26889
	nop
be_else.26888:
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
	bne	be_else.26891
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26893
	nop
	set	0, %o5
	b	be_cont.26894
	nop
be_else.26893:
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
	bne	be_else.26896
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26898
	nop
	set	0, %o5
	b	be_cont.26899
	nop
be_else.26898:
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
	bne	be_else.26901
	nop
	ld	[%i0 + 12], %o5
	ld	[%o5 + 28], %o4
	cmp	%o4, -1
	bne	be_else.26903
	nop
	set	0, %o5
	b	be_cont.26904
	nop
be_else.26903:
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
	bne	be_else.26906
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
	b	be_cont.26907
	nop
be_else.26906:
	set	1, %o5
be_cont.26907:
be_cont.26904:
	b	be_cont.26902
	nop
be_else.26901:
	set	1, %o5
be_cont.26902:
be_cont.26899:
	b	be_cont.26897
	nop
be_else.26896:
	set	1, %o5
be_cont.26897:
be_cont.26894:
	b	be_cont.26892
	nop
be_else.26891:
	set	1, %o5
be_cont.26892:
be_cont.26889:
	b	be_cont.26887
	nop
be_else.26886:
	set	1, %o5
be_cont.26887:
be_cont.26884:
	b	be_cont.26882
	nop
be_else.26881:
	set	1, %o5
be_cont.26882:
be_cont.26879:
	b	be_cont.26877
	nop
be_else.26876:
	set	1, %o5
be_cont.26877:
be_cont.26874:
	cmp	%o5, 0
	bne	be_else.26909
	nop
	ld	[%i0 + 8], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 4], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.26910
	nop
	set	0, %i2
	retl
	nop
be_else.26910:
	cmp	%i2, 99
	bne	be_else.26911
	nop
	st	%o5, [%i0 + 40]
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.26912
	nop
	set	0, %o5
	b	be_cont.26913
	nop
be_else.26912:
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
	bne	be_else.26915
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26917
	nop
	set	0, %o5
	b	be_cont.26918
	nop
be_else.26917:
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
	bne	be_else.26920
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26922
	nop
	set	0, %o5
	b	be_cont.26923
	nop
be_else.26922:
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
	bne	be_else.26925
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26927
	nop
	set	0, %o5
	b	be_cont.26928
	nop
be_else.26927:
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
	bne	be_else.26930
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26932
	nop
	set	0, %o5
	b	be_cont.26933
	nop
be_else.26932:
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
	bne	be_else.26935
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26937
	nop
	set	0, %o5
	b	be_cont.26938
	nop
be_else.26937:
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
	bne	be_else.26940
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
	b	be_cont.26941
	nop
be_else.26940:
	set	1, %o5
be_cont.26941:
be_cont.26938:
	b	be_cont.26936
	nop
be_else.26935:
	set	1, %o5
be_cont.26936:
be_cont.26933:
	b	be_cont.26931
	nop
be_else.26930:
	set	1, %o5
be_cont.26931:
be_cont.26928:
	b	be_cont.26926
	nop
be_else.26925:
	set	1, %o5
be_cont.26926:
be_cont.26923:
	b	be_cont.26921
	nop
be_else.26920:
	set	1, %o5
be_cont.26921:
be_cont.26918:
	b	be_cont.26916
	nop
be_else.26915:
	set	1, %o5
be_cont.26916:
be_cont.26913:
	cmp	%o5, 0
	bne	be_else.26943
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26943:
	set	1, %i2
	retl
	nop
be_else.26911:
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
	bne	be_else.26945
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26945:
	set	l.11390, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26946
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
fble_else.26946:
	ld	[%i0 + 44], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.26947
	nop
	set	0, %o5
	b	be_cont.26948
	nop
be_else.26947:
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
	bne	be_else.26950
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.26952
	nop
	set	0, %o5
	b	be_cont.26953
	nop
be_else.26952:
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
	bne	be_else.26955
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.26957
	nop
	set	0, %o5
	b	be_cont.26958
	nop
be_else.26957:
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
	bne	be_else.26960
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.26962
	nop
	set	0, %o5
	b	be_cont.26963
	nop
be_else.26962:
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
	bne	be_else.26965
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.26967
	nop
	set	0, %o5
	b	be_cont.26968
	nop
be_else.26967:
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
	bne	be_else.26970
	nop
	ld	[%i0 + 44], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.26972
	nop
	set	0, %o5
	b	be_cont.26973
	nop
be_else.26972:
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
	bne	be_else.26975
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
	b	be_cont.26976
	nop
be_else.26975:
	set	1, %o5
be_cont.26976:
be_cont.26973:
	b	be_cont.26971
	nop
be_else.26970:
	set	1, %o5
be_cont.26971:
be_cont.26968:
	b	be_cont.26966
	nop
be_else.26965:
	set	1, %o5
be_cont.26966:
be_cont.26963:
	b	be_cont.26961
	nop
be_else.26960:
	set	1, %o5
be_cont.26961:
be_cont.26958:
	b	be_cont.26956
	nop
be_else.26955:
	set	1, %o5
be_cont.26956:
be_cont.26953:
	b	be_cont.26951
	nop
be_else.26950:
	set	1, %o5
be_cont.26951:
be_cont.26948:
	cmp	%o5, 0
	bne	be_else.26978
	nop
	ld	[%i0 + 40], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	ld	[%i0 + 0], %i4
	b	shadow_check_one_or_matrix.3429
	nop
be_else.26978:
	set	1, %i2
	retl
	nop
be_else.26909:
	set	1, %i2
	retl
	nop
solve_each_element.3459:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.26979
	nop
	retl
	nop
be_else.26979:
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
	bne	be_else.26981
	nop
	st	%o7, [%i0 + 12]
	call	solver_rect.2890
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.26982
	nop
be_else.26981:
	cmp	%o5, 2
	bne	be_else.26984
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
	fbg	fble_else.26986
	nop
	set	0, %o5
	b	fble_cont.26987
	nop
fble_else.26986:
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
fble_cont.26987:
	b	be_cont.26985
	nop
be_else.26984:
	st	%o7, [%i0 + 12]
	call	solver_second.3180
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
be_cont.26985:
be_cont.26982:
	cmp	%o5, 0
	bne	be_else.26989
	nop
	set	min_caml_objects, %o5
	ld	[%i0 + 8], %o4
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.26991
	nop
	set	min_caml_end_flag, %o5
	set	1, %o4
	st	%o4, [%o5 + 0]
	b	be_cont.26992
	nop
be_else.26991:
be_cont.26992:
	b	be_cont.26990
	nop
be_else.26989:
	set	min_caml_solver_dist, %o4
	ldd	[%o4 + 0], %f14
	set	l.11390, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.26993
	nop
	b	fble_cont.26994
	nop
fble_else.26993:
	set	min_caml_tmin, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.26995
	nop
	b	fble_cont.26996
	nop
fble_else.26995:
	st	%o5, [%i0 + 12]
	set	l.11308, %o5
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
	bne	be_else.26997
	nop
	set	1, %o5
	b	be_cont.26998
	nop
be_else.26997:
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
	bne	be_else.27000
	nop
	ld	[%i0 + 4], %i3
	ld	[%i3 + 4], %o5
	cmp	%o5, -1
	bne	be_else.27002
	nop
	set	1, %o5
	b	be_cont.27003
	nop
be_else.27002:
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
	bne	be_else.27004
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
	fbg	fble_else.27008
	nop
	set	0, %o5
	b	fble_cont.27009
	nop
fble_else.27008:
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
	fbg	fble_else.27011
	nop
	set	0, %o5
	b	fble_cont.27012
	nop
fble_else.27011:
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
	fbg	fble_else.27014
	nop
	set	0, %o5
	b	fble_cont.27015
	nop
fble_else.27014:
	set	1, %o5
fble_cont.27015:
fble_cont.27012:
fble_cont.27009:
	cmp	%o5, 0
	bne	be_else.27016
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 24], %o5
	cmp	%o5, 0
	bne	be_else.27018
	nop
	set	1, %o5
	b	be_cont.27019
	nop
be_else.27018:
	set	0, %o5
be_cont.27019:
	b	be_cont.27017
	nop
be_else.27016:
	ld	[%i0 + 24], %o5
	ld	[%o5 + 24], %o5
be_cont.27017:
	b	be_cont.27005
	nop
be_else.27004:
	cmp	%o5, 2
	bne	be_else.27020
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
	fbg	fble_else.27022
	nop
	set	0, %o5
	b	fble_cont.27023
	nop
fble_else.27022:
	set	1, %o5
fble_cont.27023:
	ld	[%i2 + 24], %o4
	cmp	%o4, 0
	bne	be_else.27024
	nop
	b	be_cont.27025
	nop
be_else.27024:
	cmp	%o5, 0
	bne	be_else.27026
	nop
	set	1, %o5
	b	be_cont.27027
	nop
be_else.27026:
	set	0, %o5
be_cont.27027:
be_cont.27025:
	cmp	%o5, 0
	bne	be_else.27028
	nop
	set	1, %o5
	b	be_cont.27029
	nop
be_else.27028:
	set	0, %o5
be_cont.27029:
	b	be_cont.27021
	nop
be_else.27020:
	st	%o7, [%i0 + 60]
	call	is_second_outside.3299
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
be_cont.27021:
be_cont.27005:
	cmp	%o5, 0
	bne	be_else.27031
	nop
	ld	[%i0 + 4], %i3
	ld	[%i3 + 8], %o5
	cmp	%o5, -1
	bne	be_else.27033
	nop
	set	1, %o5
	b	be_cont.27034
	nop
be_else.27033:
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
	bne	be_else.27036
	nop
	set	3, %i2
	ld	[%i0 + 4], %i3
	st	%o7, [%i0 + 60]
	call	check_all_inside.3346
	add	%i0, 64, %i0	! delay slot
	sub	%i0, 64, %i0
	ld	[%i0 + 60], %o7
	mov	%i2, %o5
	b	be_cont.27037
	nop
be_else.27036:
	set	0, %o5
be_cont.27037:
be_cont.27034:
	b	be_cont.27032
	nop
be_else.27031:
	set	0, %o5
be_cont.27032:
be_cont.27003:
	b	be_cont.27001
	nop
be_else.27000:
	set	0, %o5
be_cont.27001:
be_cont.26998:
	cmp	%o5, 0
	bne	be_else.27039
	nop
	b	be_cont.27040
	nop
be_else.27039:
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
be_cont.27040:
fble_cont.26996:
fble_cont.26994:
be_cont.26990:
	set	min_caml_end_flag, %o5
	ld	[%o5 + 0], %o5
	cmp	%o5, 0
	bne	be_else.27041
	nop
	ld	[%i0 + 0], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 4], %i3
	b	solve_each_element.3459
	nop
be_else.27041:
	retl
	nop
solve_one_or_network.3553:
	sll	%i2, 2, %o5
	ld	[%i3 + %o5], %o5
	cmp	%o5, -1
	bne	be_else.27043
	nop
	retl
	nop
be_else.27043:
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
	bne	be_else.27046
	nop
	retl
	nop
be_else.27046:
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
	bne	be_else.27049
	nop
	retl
	nop
be_else.27049:
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
	bne	be_else.27052
	nop
	retl
	nop
be_else.27052:
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
	bne	be_else.27055
	nop
	retl
	nop
be_else.27055:
	st	%i3, [%i0 + 0]
	st	%i2, [%i0 + 4]
	cmp	%o4, 99
	bne	be_else.27057
	nop
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.27059
	nop
	b	be_cont.27060
	nop
be_else.27059:
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
	bne	be_else.27062
	nop
	b	be_cont.27063
	nop
be_else.27062:
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
	bne	be_else.27065
	nop
	b	be_cont.27066
	nop
be_else.27065:
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
be_cont.27066:
be_cont.27063:
be_cont.27060:
	b	be_cont.27058
	nop
be_else.27057:
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
	bne	be_else.27069
	nop
	st	%o7, [%i0 + 12]
	call	solver_rect.2890
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.27070
	nop
be_else.27069:
	cmp	%o5, 2
	bne	be_else.27072
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
	fbg	fble_else.27074
	nop
	set	0, %o5
	b	fble_cont.27075
	nop
fble_else.27074:
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
fble_cont.27075:
	b	be_cont.27073
	nop
be_else.27072:
	st	%o7, [%i0 + 12]
	call	solver_second.3180
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
be_cont.27073:
be_cont.27070:
	cmp	%o5, 0
	bne	be_else.27077
	nop
	b	be_cont.27078
	nop
be_else.27077:
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_tmin, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.27079
	nop
	b	fble_cont.27080
	nop
fble_else.27079:
	ld	[%i0 + 8], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.27081
	nop
	b	be_cont.27082
	nop
be_else.27081:
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
	bne	be_else.27084
	nop
	b	be_cont.27085
	nop
be_else.27084:
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
	bne	be_else.27087
	nop
	b	be_cont.27088
	nop
be_else.27087:
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
be_cont.27088:
be_cont.27085:
be_cont.27082:
fble_cont.27080:
be_cont.27078:
be_cont.27058:
	ld	[%i0 + 4], %o5
	add	%o5, 1, %o5
	sll	%o5, 2, %o4
	ld	[%i0 + 0], %i3
	ld	[%i3 + %o4], %o4
	ld	[%o4 + 0], %i2
	cmp	%i2, -1
	bne	be_else.27091
	nop
	retl
	nop
be_else.27091:
	st	%o5, [%i0 + 12]
	cmp	%i2, 99
	bne	be_else.27093
	nop
	ld	[%o4 + 4], %o5
	cmp	%o5, -1
	bne	be_else.27095
	nop
	b	be_cont.27096
	nop
be_else.27095:
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
	bne	be_else.27098
	nop
	b	be_cont.27099
	nop
be_else.27098:
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
be_cont.27099:
be_cont.27096:
	b	be_cont.27094
	nop
be_else.27093:
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
	bne	be_else.27103
	nop
	b	be_cont.27104
	nop
be_else.27103:
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_tmin, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.27105
	nop
	b	fble_cont.27106
	nop
fble_else.27105:
	ld	[%i0 + 16], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.27107
	nop
	b	be_cont.27108
	nop
be_else.27107:
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
	bne	be_else.27110
	nop
	b	be_cont.27111
	nop
be_else.27110:
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
be_cont.27111:
be_cont.27108:
fble_cont.27106:
be_cont.27104:
be_cont.27094:
	ld	[%i0 + 12], %o5
	add	%o5, 1, %i2
	ld	[%i0 + 0], %i3
	b	trace_or_matrix.3568
	nop
get_nvector_rect.3608:
	set	min_caml_intsec_rectside, %o5
	ld	[%o5 + 0], %o5
	cmp	%o5, 1
	bne	be_else.27114
	nop
	set	min_caml_nvector, %o5
	set	min_caml_vscan, %o4
	ldd	[%o4 + 0], %f14
	set	l.10753, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.27115
	nop
	set	l.10803, %o4
	ldd	[%o4 + 0], %f14
	b	fble_cont.27116
	nop
fble_else.27115:
	set	l.10801, %o4
	ldd	[%o4 + 0], %f14
fble_cont.27116:
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
be_else.27114:
	cmp	%o5, 2
	bne	be_else.27118
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
	fbg	fble_else.27119
	nop
	set	l.10803, %o4
	ldd	[%o4 + 0], %f14
	b	fble_cont.27120
	nop
fble_else.27119:
	set	l.10801, %o4
	ldd	[%o4 + 0], %f14
fble_cont.27120:
	fnegs	%f14, %f14
	std	%f14, [%o5 + 8]
	set	min_caml_nvector, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.27118:
	cmp	%o5, 3
	bne	be_else.27122
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
	fbg	fble_else.27123
	nop
	set	l.10803, %o4
	ldd	[%o4 + 0], %f14
	b	fble_cont.27124
	nop
fble_else.27123:
	set	l.10801, %o4
	ldd	[%o4 + 0], %f14
fble_cont.27124:
	fnegs	%f14, %f14
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.27122:
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
	bne	be_else.27128
	nop
	b	be_cont.27129
	nop
be_else.27128:
	fnegs	%f14, %f14
be_cont.27129:
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
	set	l.10886, %o4
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
	set	l.10886, %o4
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
	set	l.10886, %o4
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
	bne	be_else.27132
	nop
	b	be_cont.27133
	nop
be_else.27132:
	fnegs	%f14, %f14
be_cont.27133:
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
	bne	be_else.27135
	nop
	st	%i2, [%i0 + 0]
	st	%i3, [%i0 + 4]
	ldd	[%i3 + 0], %f14
	ld	[%i2 + 20], %o5
	ldd	[%o5 + 0], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%i0 + 8]
	set	l.11834, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	st	%o7, [%i0 + 20]
	call	min_caml_floor
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.11836, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	l.11814, %o5
	ldd	[%o5 + 0], %f12
	ldd	[%i0 + 8], %f10
	fsubd	%f10, %f14, %f14
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.27137
	nop
	set	0, %o5
	b	fble_cont.27138
	nop
fble_else.27137:
	set	1, %o5
fble_cont.27138:
	st	%o5, [%i0 + 16]
	ld	[%i0 + 4], %o5
	ldd	[%o5 + 16], %f14
	ld	[%i0 + 0], %o5
	ld	[%o5 + 20], %o5
	ldd	[%o5 + 16], %f12
	fsubd	%f14, %f12, %f14
	std	%f14, [%i0 + 24]
	set	l.11834, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f0
	st	%o7, [%i0 + 36]
	call	min_caml_floor
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	fmovs	%f0, %f14
	fmovs	%f1, %f15
	set	l.11836, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	set	l.11814, %o5
	ldd	[%o5 + 0], %f12
	ldd	[%i0 + 24], %f10
	fsubd	%f10, %f14, %f14
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.27141
	nop
	set	0, %o5
	b	fble_cont.27142
	nop
fble_else.27141:
	set	1, %o5
fble_cont.27142:
	set	min_caml_texture_color, %o4
	ld	[%i0 + 16], %o3
	cmp	%o3, 0
	bne	be_else.27143
	nop
	cmp	%o5, 0
	bne	be_else.27145
	nop
	set	l.11818, %o5
	ldd	[%o5 + 0], %f14
	b	be_cont.27146
	nop
be_else.27145:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
be_cont.27146:
	b	be_cont.27144
	nop
be_else.27143:
	cmp	%o5, 0
	bne	be_else.27147
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	b	be_cont.27148
	nop
be_else.27147:
	set	l.11818, %o5
	ldd	[%o5 + 0], %f14
be_cont.27148:
be_cont.27144:
	std	%f14, [%o4 + 8]
	retl
	nop
be_else.27135:
	cmp	%o5, 2
	bne	be_else.27150
	nop
	ldd	[%i3 + 8], %f14
	set	l.11825, %o5
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
	set	l.11818, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_texture_color, %o5
	set	l.11818, %o4
	ldd	[%o4 + 0], %f12
	set	l.10801, %o4
	ldd	[%o4 + 0], %f10
	fsubd	%f10, %f14, %f14
	fmuld	%f12, %f14, %f14
	std	%f14, [%o5 + 8]
	retl
	nop
be_else.27150:
	cmp	%o5, 3
	bne	be_else.27153
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
	set	l.11814, %o5
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
	set	l.11816, %o5
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
	set	l.11818, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f12
	std	%f12, [%o5 + 8]
	set	min_caml_texture_color, %o5
	set	l.10801, %o4
	ldd	[%o4 + 0], %f12
	fsubd	%f12, %f14, %f14
	set	l.11818, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.27153:
	cmp	%o5, 4
	bne	be_else.27158
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
	set	l.11788, %o5
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
	fbg	fble_else.27163
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
	set	l.11792, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	b	fble_cont.27164
	nop
fble_else.27163:
	set	l.11790, %o5
	ldd	[%o5 + 0], %f14
fble_cont.27164:
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
	set	l.11788, %o5
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
	fbg	fble_else.27170
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
	set	l.11792, %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	b	fble_cont.27171
	nop
fble_else.27170:
	set	l.11790, %o5
	ldd	[%o5 + 0], %f14
fble_cont.27171:
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
	set	l.11800, %o5
	ldd	[%o5 + 0], %f12
	set	l.11802, %o5
	ldd	[%o5 + 0], %f10
	ldd	[%i0 + 96], %f8
	fsubd	%f10, %f8, %f10
	fmuld	%f10, %f10, %f10
	fsubd	%f12, %f10, %f12
	set	l.11802, %o5
	ldd	[%o5 + 0], %f10
	fsubd	%f10, %f14, %f14
	fmuld	%f14, %f14, %f14
	fsubd	%f12, %f14, %f14
	set	min_caml_texture_color, %o5
	set	l.10753, %o4
	ldd	[%o4 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.27175
	nop
	set	l.10753, %o4
	ldd	[%o4 + 0], %f14
	b	fble_cont.27176
	nop
fble_else.27175:
	set	l.11806, %o4
	ldd	[%o4 + 0], %f12
	fmuld	%f14, %f12, %f14
fble_cont.27176:
	std	%f14, [%o5 + 16]
	retl
	nop
be_else.27158:
	retl
	nop
raytracing.4014:
	std	%f0, [%i0 + 0]
	st	%i2, [%i0 + 8]
	set	min_caml_tmin, %o5
	set	l.11849, %o4
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
	set	l.11390, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.27180
	nop
	set	0, %o5
	b	fble_cont.27181
	nop
fble_else.27180:
	set	l.11855, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.27182
	nop
	set	0, %o5
	b	fble_cont.27183
	nop
fble_else.27182:
	set	1, %o5
fble_cont.27183:
fble_cont.27181:
	cmp	%o5, 0
	bne	be_else.27184
	nop
	ld	[%i0 + 8], %o4
	cmp	%o4, 0
	bne	be_else.27186
	nop
	b	be_cont.27187
	nop
be_else.27186:
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
	fbg	fble_else.27188
	nop
	b	fble_cont.27189
	nop
fble_else.27188:
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
fble_cont.27189:
be_cont.27187:
	b	be_cont.27185
	nop
be_else.27184:
be_cont.27185:
	cmp	%o5, 0
	bne	be_else.27190
	nop
	retl
	nop
be_else.27190:
	set	min_caml_objects, %o5
	set	min_caml_crashed_object, %o4
	ld	[%o4 + 0], %o4
	sll	%o4, 2, %o4
	ld	[%o5 + %o4], %i2
	st	%i2, [%i0 + 12]
	set	min_caml_crashed_point, %i3
	ld	[%i2 + 4], %o5
	cmp	%o5, 1
	bne	be_else.27192
	nop
	st	%o7, [%i0 + 20]
	call	get_nvector_rect.3608
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	b	be_cont.27193
	nop
be_else.27192:
	cmp	%o5, 2
	bne	be_else.27195
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
	b	be_cont.27196
	nop
be_else.27195:
	ld	[%i2 + 12], %o5
	cmp	%o5, 0
	bne	be_else.27197
	nop
	st	%o7, [%i0 + 20]
	call	get_nvector_second_norot.3677
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	b	be_cont.27198
	nop
be_else.27197:
	st	%o7, [%i0 + 20]
	call	get_nvector_second_rot.3709
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
be_cont.27198:
be_cont.27196:
be_cont.27193:
	set	min_caml_or_net, %o5
	ld	[%o5 + 0], %i3
	set	min_caml_crashed_point, %i4
	ld	[%i3 + 0], %o5
	ld	[%o5 + 0], %i2
	cmp	%i2, -1
	bne	be_else.27201
	nop
	set	0, %o5
	b	be_cont.27202
	nop
be_else.27201:
	cmp	%i2, 99
	bne	be_else.27203
	nop
	st	%i4, [%i0 + 16]
	st	%i3, [%i0 + 20]
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.27205
	nop
	set	0, %o5
	b	be_cont.27206
	nop
be_else.27205:
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
	bne	be_else.27208
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.27210
	nop
	set	0, %o5
	b	be_cont.27211
	nop
be_else.27210:
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
	bne	be_else.27213
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.27215
	nop
	set	0, %o5
	b	be_cont.27216
	nop
be_else.27215:
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
	bne	be_else.27218
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.27220
	nop
	set	0, %o5
	b	be_cont.27221
	nop
be_else.27220:
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
	bne	be_else.27223
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.27225
	nop
	set	0, %o5
	b	be_cont.27226
	nop
be_else.27225:
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
	bne	be_else.27228
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.27230
	nop
	set	0, %o5
	b	be_cont.27231
	nop
be_else.27230:
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
	bne	be_else.27233
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
	b	be_cont.27234
	nop
be_else.27233:
	set	1, %o5
be_cont.27234:
be_cont.27231:
	b	be_cont.27229
	nop
be_else.27228:
	set	1, %o5
be_cont.27229:
be_cont.27226:
	b	be_cont.27224
	nop
be_else.27223:
	set	1, %o5
be_cont.27224:
be_cont.27221:
	b	be_cont.27219
	nop
be_else.27218:
	set	1, %o5
be_cont.27219:
be_cont.27216:
	b	be_cont.27214
	nop
be_else.27213:
	set	1, %o5
be_cont.27214:
be_cont.27211:
	b	be_cont.27209
	nop
be_else.27208:
	set	1, %o5
be_cont.27209:
be_cont.27206:
	cmp	%o5, 0
	bne	be_else.27236
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
	b	be_cont.27237
	nop
be_else.27236:
	set	1, %o5
be_cont.27237:
	b	be_cont.27204
	nop
be_else.27203:
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
	bne	be_else.27240
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
	b	be_cont.27241
	nop
be_else.27240:
	set	l.11390, %o5
	ldd	[%o5 + 0], %f14
	set	min_caml_solver_dist, %o5
	ldd	[%o5 + 0], %f12
	fcmpd	%f14, %f12
	nop
	fbg	fble_else.27243
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
	b	fble_cont.27244
	nop
fble_else.27243:
	ld	[%i0 + 24], %o5
	ld	[%o5 + 4], %o4
	cmp	%o4, -1
	bne	be_else.27246
	nop
	set	0, %o5
	b	be_cont.27247
	nop
be_else.27246:
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
	bne	be_else.27249
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 8], %o4
	cmp	%o4, -1
	bne	be_else.27251
	nop
	set	0, %o5
	b	be_cont.27252
	nop
be_else.27251:
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
	bne	be_else.27254
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 12], %o4
	cmp	%o4, -1
	bne	be_else.27256
	nop
	set	0, %o5
	b	be_cont.27257
	nop
be_else.27256:
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
	bne	be_else.27259
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 16], %o4
	cmp	%o4, -1
	bne	be_else.27261
	nop
	set	0, %o5
	b	be_cont.27262
	nop
be_else.27261:
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
	bne	be_else.27264
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 20], %o4
	cmp	%o4, -1
	bne	be_else.27266
	nop
	set	0, %o5
	b	be_cont.27267
	nop
be_else.27266:
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
	bne	be_else.27269
	nop
	ld	[%i0 + 24], %o5
	ld	[%o5 + 24], %o4
	cmp	%o4, -1
	bne	be_else.27271
	nop
	set	0, %o5
	b	be_cont.27272
	nop
be_else.27271:
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
	bne	be_else.27274
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
	b	be_cont.27275
	nop
be_else.27274:
	set	1, %o5
be_cont.27275:
be_cont.27272:
	b	be_cont.27270
	nop
be_else.27269:
	set	1, %o5
be_cont.27270:
be_cont.27267:
	b	be_cont.27265
	nop
be_else.27264:
	set	1, %o5
be_cont.27265:
be_cont.27262:
	b	be_cont.27260
	nop
be_else.27259:
	set	1, %o5
be_cont.27260:
be_cont.27257:
	b	be_cont.27255
	nop
be_else.27254:
	set	1, %o5
be_cont.27255:
be_cont.27252:
	b	be_cont.27250
	nop
be_else.27249:
	set	1, %o5
be_cont.27250:
be_cont.27247:
	cmp	%o5, 0
	bne	be_else.27277
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
	b	be_cont.27278
	nop
be_else.27277:
	set	1, %o5
be_cont.27278:
fble_cont.27244:
be_cont.27241:
be_cont.27204:
be_cont.27202:
	cmp	%o5, 0
	bne	be_else.27280
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
	fbg	fble_else.27282
	nop
	set	l.11916, %o5
	ldd	[%o5 + 0], %f12
	faddd	%f14, %f12, %f14
	b	fble_cont.27283
	nop
fble_else.27282:
	set	l.11916, %o5
	ldd	[%o5 + 0], %f14
fble_cont.27283:
	ldd	[%i0 + 0], %f12
	fmuld	%f14, %f12, %f14
	ld	[%i0 + 12], %i2
	ld	[%i2 + 28], %o5
	ldd	[%o5 + 0], %f12
	fmuld	%f14, %f12, %f14
	b	be_cont.27281
	nop
be_else.27280:
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
be_cont.27281:
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
	bg	ble_else.27286
	nop
	set	l.11929, %o4
	ldd	[%o4 + 0], %f14
	ldd	[%i0 + 0], %f12
	fcmpd	%f12, %f14
	nop
	fbg	fble_else.27287
	nop
	retl
	nop
fble_else.27287:
	set	l.11931, %o4
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
	bne	be_else.27289
	nop
	set	l.10753, %o5
	ldd	[%o5 + 0], %f14
	ld	[%o4 + 28], %o5
	ldd	[%o5 + 8], %f8
	fcmpd	%f14, %f8
	nop
	fbne	fbe_else.27290
	nop
	retl
	nop
fbe_else.27290:
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
	fbg	fble_else.27292
	nop
	retl
	nop
fble_else.27292:
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
be_else.27289:
	cmp	%o3, 2
	bne	be_else.27295
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
	set	l.10801, %o3
	ldd	[%o3 + 0], %f14
	ld	[%o4 + 28], %o4
	ldd	[%o4 + 0], %f10
	fsubd	%f14, %f10, %f14
	fmuld	%f12, %f14, %f0
	add	%o5, 1, %i2
	b	raytracing.4014
	nop
be_else.27295:
	retl
	nop
ble_else.27286:
	retl
	nop
scan_point.4202:
	set	min_caml_size, %o5
	ld	[%o5 + 0], %o5
	cmp	%o5, %i2
	bg	ble_else.27298
	nop
	retl
	nop
ble_else.27298:
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
	set	l.10801, %o5
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
	bg	ble_else.27304
	nop
	b	ble_cont.27305
	nop
ble_else.27304:
	set	255, %o5
ble_cont.27305:
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
	bg	ble_else.27308
	nop
	b	ble_cont.27309
	nop
ble_else.27308:
	set	255, %o5
ble_cont.27309:
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
	bg	ble_else.27312
	nop
	b	ble_cont.27313
	nop
ble_else.27312:
	set	255, %o5
ble_cont.27313:
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
	bg	ble_else.27315
	nop
	retl
	nop
ble_else.27315:
	st	%i2, [%i0 + 0]
	set	min_caml_scan_sscany, %o5
	st	%o5, [%i0 + 4]
	set	min_caml_scan_offset, %o5
	ldd	[%o5 + 0], %f14
	set	l.10801, %o5
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
	set	l.12014, %o4
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
	bne	be_else.27321
	nop
	b	be_cont.27322
	nop
be_else.27321:
	set	1, %i2
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.27324
	nop
	b	be_cont.27325
	nop
be_else.27324:
	set	2, %i2
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.27327
	nop
	b	be_cont.27328
	nop
be_else.27327:
	set	3, %i2
	st	%o7, [%i0 + 4]
	call	read_nth_object.2384
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, 0
	bne	be_else.27330
	nop
	b	be_cont.27331
	nop
be_else.27330:
	set	4, %i2
	st	%o7, [%i0 + 4]
	call	read_object.2832
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
be_cont.27331:
be_cont.27328:
be_cont.27325:
be_cont.27322:
	st	%o7, [%i0 + 4]
	call	min_caml_read_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.27334
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 4]
	call	min_caml_create_array
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	b	be_cont.27335
	nop
be_else.27334:
	st	%o5, [%i0 + 0]
	st	%o7, [%i0 + 4]
	call	min_caml_read_int
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.27338
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 4]
	call	min_caml_create_array
	add	%i0, 8, %i0	! delay slot
	sub	%i0, 8, %i0
	ld	[%i0 + 4], %o7
	mov	%i2, %o5
	b	be_cont.27339
	nop
be_else.27338:
	st	%o5, [%i0 + 4]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.27342
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.27343
	nop
be_else.27342:
	st	%o5, [%i0 + 8]
	st	%o7, [%i0 + 12]
	call	min_caml_read_int
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.27346
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 12]
	call	min_caml_create_array
	add	%i0, 16, %i0	! delay slot
	sub	%i0, 16, %i0
	ld	[%i0 + 12], %o7
	mov	%i2, %o5
	b	be_cont.27347
	nop
be_else.27346:
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
be_cont.27347:
	ld	[%i0 + 8], %o4
	st	%o4, [%o5 + 8]
be_cont.27343:
	ld	[%i0 + 4], %o4
	st	%o4, [%o5 + 4]
be_cont.27339:
	ld	[%i0 + 0], %o4
	st	%o4, [%o5 + 0]
be_cont.27335:
	ld	[%o5 + 0], %o4
	cmp	%o4, -1
	bne	be_else.27350
	nop
	b	be_cont.27351
	nop
be_else.27350:
	set	min_caml_and_net, %o4
	st	%o5, [%o4 + 0]
	set	1, %i2
	st	%o7, [%i0 + 20]
	call	read_and_network.2867
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
be_cont.27351:
	set	min_caml_or_net, %o5
	st	%o5, [%i0 + 16]
	st	%o7, [%i0 + 20]
	call	min_caml_read_int
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.27354
	nop
	set	1, %i2
	set	-1, %i3
	st	%o7, [%i0 + 20]
	call	min_caml_create_array
	add	%i0, 24, %i0	! delay slot
	sub	%i0, 24, %i0
	ld	[%i0 + 20], %o7
	mov	%i2, %o5
	b	be_cont.27355
	nop
be_else.27354:
	st	%o5, [%i0 + 20]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.27358
	nop
	set	2, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.27359
	nop
be_else.27358:
	st	%o5, [%i0 + 24]
	st	%o7, [%i0 + 28]
	call	min_caml_read_int
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.27362
	nop
	set	3, %i2
	set	-1, %i3
	st	%o7, [%i0 + 28]
	call	min_caml_create_array
	add	%i0, 32, %i0	! delay slot
	sub	%i0, 32, %i0
	ld	[%i0 + 28], %o7
	mov	%i2, %o5
	b	be_cont.27363
	nop
be_else.27362:
	st	%o5, [%i0 + 28]
	st	%o7, [%i0 + 36]
	call	min_caml_read_int
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	cmp	%o5, -1
	bne	be_else.27366
	nop
	set	4, %i2
	set	-1, %i3
	st	%o7, [%i0 + 36]
	call	min_caml_create_array
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.27367
	nop
be_else.27366:
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
be_cont.27367:
	ld	[%i0 + 28], %o4
	st	%o4, [%o5 + 8]
be_cont.27363:
	ld	[%i0 + 24], %o4
	st	%o4, [%o5 + 4]
be_cont.27359:
	ld	[%i0 + 20], %o4
	st	%o4, [%o5 + 0]
be_cont.27355:
	mov	%o5, %i3
	ld	[%i3 + 0], %o5
	cmp	%o5, -1
	bne	be_else.27370
	nop
	set	1, %i2
	st	%o7, [%i0 + 36]
	call	min_caml_create_array
	add	%i0, 40, %i0	! delay slot
	sub	%i0, 40, %i0
	ld	[%i0 + 36], %o7
	mov	%i2, %o5
	b	be_cont.27371
	nop
be_else.27370:
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
be_cont.27371:
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
	set	l.12044, %o4
	ldd	[%o4 + 0], %f12
	fdivd	%f12, %f14, %f12
	std	%f12, [%o5 + 0]
	set	min_caml_scan_offset, %o5
	set	l.10886, %o4
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
