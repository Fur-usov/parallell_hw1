	.arch armv8.5-a
	.build_version macos,  26, 0
; GNU C++20 (Homebrew GCC 15.2.0) version 15.2.0 (aarch64-apple-darwin24)
;	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

; GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
; options passed: -fPIC -mmacosx-version-min=26.0.0 -mlittle-endian -mabi=lp64 -mcpu=apple-m1 -O3 -std=c++20 -ffast-math -fopenmp
	.text
	.align	2
	.p2align 5,,15
__ZL9fill_randPfi:
LFB10595:
	sub	sp, sp, #2512	;,,
LCFI0:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:330:       _M_x[0] = __detail::__mod<_UIntType,
	mov	w3, 123	; tmp192,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:337: 	  __x *= __f;
	mov	w5, 35173	; tmp194,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:330:       _M_x[0] = __detail::__mod<_UIntType,
	mov	w2, w3	; rng___M_x_I_lsm0.284, tmp192
	mov	x8, sp	; tmp279,
	add	x4, sp, 4	; ivtmp.320,,
	str	w3, [sp]	; tmp192, MEM[(struct mersenne_twister_engine *)&rng]._M_x[0]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:337: 	  __x *= __f;
	movk	w5, 0x6c07, lsl 16	; tmp194,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	mov	x3, 1	; __i,
	.p2align 5,,15
L2:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:336: 	  __x ^= __x >> (__w - 2);
	eor	w2, w2, w2, lsr 30	; __x, rng___M_x_I_lsm0.284, rng___M_x_I_lsm0.284,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:338: 	  __x += __detail::__mod<_UIntType, __n>(__i);
	madd	w2, w2, w5, w3	; rng___M_x_I_lsm0.284, __x, tmp194, __i
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	add	x3, x3, 1	; __i, __i,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:339: 	  _M_x[__i] = __detail::__mod<_UIntType,
	str	w2, [x4], 4	; rng___M_x_I_lsm0.284, MEM[(unsigned int *)_63]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:333:       for (size_t __i = 1; __i < state_size; ++__i)
	cmp	x3, 624	; __i,
	bne	L2		;,
; inv.cpp:48:   for (long long i=0;i<1LL*n*n;++i) A[i]=d(rng);
	smull	x6, w1, w1	; _41, n, n
; inv.cpp:48:   for (long long i=0;i<1LL*n*n;++i) A[i]=d(rng);
	cmp	x6, 0	; _41,
	ble	L1		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	adrp	x2, lC0@PAGE	; tmp295,
	add	x6, x0, x6, lsl 2	; _260, ivtmp.311, _41,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	mov	w1, 1333788672	; tmp272,
	mov	x5, x0	; ivtmp.311, A
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	adrp	x0, lC1@PAGE	; tmp296,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	movi	v26.4s, 0x80, lsl 24	; tmp283
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	mov	w10, 22144	; tmp267,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ldr	q28, [x2, #lC0@PAGEOFF]	; tmp285,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	movi	v27.4s, 0x1	; tmp284
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fmov	s25, w1	; tmp271, tmp272
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	movi	v20.2s, 0x80, lsl 24	; tmp286
	add	x4, sp, 900	; tmp282,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ldr	d21, [x0, #lC1@PAGEOFF]	; tmp288,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	movi	v22.2s, 0x1	; tmp287
	add	x2, sp, 2492	; tmp289,,
; inv.cpp:48:   for (long long i=0;i<1LL*n*n;++i) A[i]=d(rng);
	movi	v23.2s, 0x30, lsl 24	; tmp290
	fmov	s24, -1.0e+0	; tmp291,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	movk	w10, 0x9d2c, lsl 16	; tmp267,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	mov	w9, -272236544	; tmp269,
	b	L11		;
	.p2align 2,,3
L16:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	ldr	w0, [x8, x3, lsl 2]	;, rng._M_x[rng__M_p_lsm.216_5]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:462:       result_type __z = _M_x[_M_p++];
	add	x3, x3, 1	; __i, __i,
L6:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:463:       __z ^= (__z >> __u) & __d;
	eor	w0, w0, w0, lsr 11	; __z, pretmp_238, pretmp_238,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	and	w1, w10, w0, lsl 7	; _162, tmp267, __z,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:464:       __z ^= (__z << __s) & __b;
	eor	w0, w0, w1	; __z, __z, _162
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	and	w1, w9, w0, lsl 15	; _165, tmp269, __z,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:465:       __z ^= (__z << __t) & __c;
	eor	w0, w0, w1	; __z, __z, _165
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:466:       __z ^= (__z >> __l);
	eor	w0, w0, w0, lsr 18	; __z_168, __z, __z,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:3367: 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
	ucvtf	s31, w0	; _169, __z_168
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:3371:       if (__builtin_expect(__ret >= _RealType(1), 0))
	fcmpe	s31, s25	; _169, tmp271
	bge	L9		;,
; inv.cpp:48:   for (long long i=0;i<1LL*n*n;++i) A[i]=d(rng);
	fmadd	s31, s31, s23, s24	; tmp273, _169, tmp290, tmp291
	str	s31, [x5], 4	; tmp273,
; inv.cpp:48:   for (long long i=0;i<1LL*n*n;++i) A[i]=d(rng);
	cmp	x5, x6	; ivtmp.311, _260
	beq	L1		;,
L11:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:458:       if (_M_p >= state_size)
	cmp	x3, 624	; __i,
	bne	L16		;,
	add	x0, sp, 4	; vectp_rng.248,,
	.p2align 5,,15
L4:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q30, [x0, -4]	; MEM <vector(4) unsigned int> [(unsigned int *)vectp_rng.248_78 + -4B], MEM <vector(4) unsigned int> [(unsigned int *)vectp_rng.248_78 + -4B]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:404:       for (size_t __k = 0; __k < (__n - __m); ++__k)
	add	x0, x0, 16	; vectp_rng.248, vectp_rng.248,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q31, [x0, -16]	; vect__143.250_76, MEM <vector(4) unsigned int> [(unsigned int *)vectp_rng.248_78]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ldr	q29, [x0, 1568]	; vect__147.243_84, MEM <vector(4) unsigned int> [(unsigned int *)vectp_rng.248_78 + 1584B]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	and	v30.16b, v30.16b, v26.16b	; vect__141.247_80, MEM <vector(4) unsigned int> [(unsigned int *)vectp_rng.248_78 + -4B], tmp283
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	bic	v31.4s, #128, lsl #24	; vect__144.251_75
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orr	v31.16b, v31.16b, v30.16b	; vect___y_145.252, vect__144.251_75, vect__141.247_80
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	and	v30.16b, v31.16b, v27.16b	; vect__150.255_71, vect___y_145.252, tmp284
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ushr	v31.4s, v31.4s, 1	; vect__148.253_73, vect___y_145.252,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	mul	v30.4s, v30.4s, v28.4s	; vect__193.256_70, vect__150.255_71, tmp285
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	eor	v31.16b, v31.16b, v29.16b	; vect__149.254_72, vect__148.253_73, vect__147.243_84
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	eor	v31.16b, v31.16b, v30.16b	; vect_prephitmp_232.257_69, vect__149.254_72, vect__193.256_70
	str	q31, [x0, -20]	; vect_prephitmp_232.257_69, MEM <vector(4) unsigned int> [(unsigned int *)vectp_rng.248_78 + -4B]
	cmp	x0, x4	; vectp_rng.248, tmp282
	bne	L4		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	add	x3, sp, 1024	; tmp299,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	d29, [sp, 896]	; MEM <vector(2) unsigned int> [(unsigned int *)&rng + 896B], MEM <vector(2) unsigned int> [(unsigned int *)&rng + 896B]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	mov	x1, x8	; ivtmp.296, tmp279
	add	x0, sp, 908	; vectp_rng.237,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	d31, [x3, -124]	; vect__102.271_110, MEM <vector(2) unsigned int> [(unsigned int *)&rng + 900B]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	add	x3, sp, 2560	; tmp301,,
	ldr	d30, [x3, -76]	; vect__98.264_123, MEM <vector(2) unsigned int> [(unsigned int *)&rng + 2484B]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	and	v29.8b, v29.8b, v20.8b	; vect__104.268_158, MEM <vector(2) unsigned int> [(unsigned int *)&rng + 896B], tmp286
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:407: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	w7, [sp, 908]	;, rng._M_x[227]
	bic	v31.2s, #128, lsl #24	; vect__101.272_109
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	w3, [sp, 904]	;, rng._M_x[226]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ldr	w11, [sp, 2492]	;, rng._M_x[623]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:406: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orr	v31.8b, v31.8b, v29.8b	; vect___y_100.273, vect__101.272_109, vect__104.268_158
	bfi	w3, w7, 0, 31	; __y, rng._M_x[227],
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	sbfx	x7, x3, 0, 1	; tmp259, __y,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	eor	w3, w11, w3, lsr 1	; _34, rng._M_x[623], __y,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	fmov	w11, s28	; tmp302, tmp285
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	and	v29.8b, v31.8b, v22.8b	; vect__95.276_253, vect___y_100.273, tmp287
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	ushr	v31.2s, v31.2s, 1	; vect__97.274_251, vect___y_100.273,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	mul	v29.2s, v29.2s, v21.2s	; vect__94.277_254, vect__95.276_253, tmp288
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	eor	v31.8b, v30.8b, v31.8b	; vect__96.275_252, vect__98.264_123, vect__97.274_251
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:409: 		       ^ ((__y & 0x01) ? __a : 0));
	and	w7, w7, w11	; _65, tmp259, tmp302
	eor	w3, w3, w7	; _20, _34, _65
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:408: 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
	str	w3, [sp, 904]	; _20, rng._M_x[226]
	eor	v31.8b, v31.8b, v29.8b	; vect_prephitmp_93.278_255, vect__96.275_252, vect__94.277_254
	str	d31, [sp, 896]	; vect_prephitmp_93.278_255, MEM <vector(2) unsigned int> [(unsigned int *)&rng + 896B]
	.p2align 5,,15
L7:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	ldr	q30, [x0]	; vect__126.225_188, MEM <vector(4) unsigned int> [(unsigned int *)vectp_rng.237_174]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	ldr	q31, [x1, 912]	; MEM <vector(4) unsigned int> [(unsigned int *)_16 + 912B], MEM <vector(4) unsigned int> [(unsigned int *)_16 + 912B]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	ldr	q29, [x1], 16	; MEM <vector(4) unsigned int> [(unsigned int *)_16], MEM <vector(4) unsigned int> [(unsigned int *)_16]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	and	v30.16b, v30.16b, v26.16b	; vect__127.226_187, vect__126.225_188, tmp283
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:415: 			   | (_M_x[__k + 1] & __lower_mask));
	bic	v31.4s, #128, lsl #24	; vect__130.230_182
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:414: 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
	orr	v31.16b, v31.16b, v30.16b	; vect___y_131.231, vect__130.230_182, vect__127.226_187
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:417: 		       ^ ((__y & 0x01) ? __a : 0));
	and	v30.16b, v31.16b, v27.16b	; vect__136.234_178, vect___y_131.231, tmp284
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	ushr	v31.4s, v31.4s, 1	; vect__134.232_180, vect___y_131.231,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	mul	v30.4s, v30.4s, v28.4s	; vect__217.235_177, vect__136.234_178, tmp285
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	eor	v31.16b, v31.16b, v29.16b	; vect__135.233_179, vect__134.232_180, MEM <vector(4) unsigned int> [(unsigned int *)_16]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:416: 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
	eor	v31.16b, v31.16b, v30.16b	; vect_prephitmp_235.236_176, vect__135.233_179, vect__217.235_177
	str	q31, [x0], 16	; vect_prephitmp_235.236_176, MEM <vector(4) unsigned int> [(unsigned int *)vectp_rng.237_174]
	cmp	x0, x2	; vectp_rng.237, tmp289
	bne	L7		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:420:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	ldr	w1, [sp, 2492]	;, rng._M_x[623]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:422:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	mov	x3, 1	; __i,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:421: 		       | (_M_x[0] & __lower_mask));
	ldr	w0, [sp]	;, rng._M_x[0]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:422:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	ldr	w11, [sp, 1584]	;, rng._M_x[396]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:420:       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
	bfi	w1, w0, 0, 31	; __y, pretmp_238,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:423: 		       ^ ((__y & 0x01) ? __a : 0));
	sbfx	x7, x1, 0, 1	; tmp204, __y,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:422:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	eor	w1, w11, w1, lsr 1	; _120, rng._M_x[396], __y,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:423: 		       ^ ((__y & 0x01) ? __a : 0));
	fmov	w11, s28	; tmp297, tmp285
	and	w7, w7, w11	; _40, tmp204, tmp297
	eor	w1, w1, w7	; _257, _120, _40
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/random.tcc:422:       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
	str	w1, [sp, 2492]	; _257, rng._M_x[623]
	b	L6		;
L9:
; inv.cpp:48:   for (long long i=0;i<1LL*n*n;++i) A[i]=d(rng);
	mov	w0, 65534	; tmp277,
	movk	w0, 0x3f7f, lsl 16	; tmp277,,
	str	w0, [x5], 4	; tmp276,
; inv.cpp:48:   for (long long i=0;i<1LL*n*n;++i) A[i]=d(rng);
	cmp	x5, x6	; ivtmp.311, _260
	bne	L11		;,
L1:
; inv.cpp:49: }
	add	sp, sp, 2512	;,,
LCFI1:
	ret	
LFE10595:
	.align	2
	.p2align 5,,15
__ZL3eyePfi:
LFB10596:
	stp	x29, x30, [sp, -32]!	;,,,
LCFI2:
	mov	x29, sp	;,
LCFI3:
	str	x19, [sp, 16]	;,
LCFI4:
; inv.cpp:50: static void eye(float* I, int n){
	mov	w19, w1	; n, n
; inv.cpp:51:   memset(I,0,1LL*n*n*sizeof(float));
	mov	w1, 0	;,
; inv.cpp:51:   memset(I,0,1LL*n*n*sizeof(float));
	smull	x2, w19, w19	; _2, n, n
; inv.cpp:51:   memset(I,0,1LL*n*n*sizeof(float));
	lsl	x2, x2, 2	;, _2,
	bl	_memset		;
; inv.cpp:52:   for(int i=0;i<n;++i) I[1LL*i*n + i]=1.f;
	cmp	w19, 0	; n,
	ble	L20		;,
; inv.cpp:52:   for(int i=0;i<n;++i) I[1LL*i*n + i]=1.f;
	fmov	s31, 1.0e+0	; tmp121,
; inv.cpp:52:   for(int i=0;i<n;++i) I[1LL*i*n + i]=1.f;
	mov	w2, 0	; i,
	add	w1, w19, 1	; _25, n,
	.p2align 5,,15
L22:
; inv.cpp:52:   for(int i=0;i<n;++i) I[1LL*i*n + i]=1.f;
	add	w2, w2, 1	; i, i,
; inv.cpp:52:   for(int i=0;i<n;++i) I[1LL*i*n + i]=1.f;
	str	s31, [x0]	; tmp121, MEM[(float *)_24]
; inv.cpp:52:   for(int i=0;i<n;++i) I[1LL*i*n + i]=1.f;
	add	x0, x0, x1, lsl 2	; ivtmp.329, ivtmp.329, _25,
	cmp	w19, w2	; n, i
	bne	L22		;,
L20:
; inv.cpp:53: }
	ldr	x19, [sp, 16]	;,
	ldp	x29, x30, [sp], 32	;,,,
LCFI5:
	ret	
LFE10596:
	.cstring
	.align	3
lC2:
	.ascii "N=\0"
	.align	3
lC3:
	.ascii "\12\0"
	.align	3
lC4:
	.ascii "cannot create std::vector larger than max_size()\0"
	.align	3
lC5:
	.ascii "lu_neon(s)=\0"
	.align	3
lC6:
	.ascii " ok=\0"
	.align	3
lC7:
	.ascii "rel_error_F(full) = \0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align	2
	.p2align 5,,15
	.globl _main
_main:
LFB10626:
	stp	x29, x30, [sp, -432]!	;,,,
LCFI6:
	mov	x29, sp	;,
LCFI7:
	stp	x21, x22, [sp, 32]	;,,
LCFI8:
	mov	w21, w0	; argc, argc
; inv.cpp:253:   ios::sync_with_stdio(false);
	mov	w0, 0	;,
; inv.cpp:252: int main(int argc, char** argv){
	stp	x19, x20, [sp, 16]	;,,
LCFI9:
	mov	x19, x1	; argv, argv
	mov	w20, 1024	; n,
	stp	x23, x24, [sp, 48]	;,,
	str	d15, [sp, 112]	;,
LEHB0:
LCFI10:
; inv.cpp:253:   ios::sync_with_stdio(false);
	bl	__ZNSt8ios_base15sync_with_stdioEb		;
; inv.cpp:254:   int n = (argc>1)? atoi(argv[1]) : N_DEFAULT;
	cmp	w21, 1	; argc,
	ble	L27		;,
; inv.cpp:254:   int n = (argc>1)? atoi(argv[1]) : N_DEFAULT;
	ldr	x0, [x19, 8]	;, MEM[(char * *)argv_24(D) + 8B]
	bl	_atoi		;
	mov	w20, w0	; n, n
L27:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC2@PAGE	; tmp847,
	mov	x2, 2	;,
	adrp	x0, __ZSt4cerr@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cerr@GOTPAGEOFF]	;,
	add	x1, x1, lC2@PAGEOFF;	;, tmp847,
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	add	x19, x29, 424	; tmp1279,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; inv.cpp:255:   cerr<<"N="<<n<<"\n";
	mov	w1, w20	;, n
	adrp	x0, __ZSt4cerr@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cerr@GOTPAGEOFF]	;,
; inv.cpp:257:   auto A = xmalloc(1LL*n*n);
	sxtw	x22, w20	; n, n
; inv.cpp:255:   cerr<<"N="<<n<<"\n";
	bl	__ZNSolsEi		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC3@PAGE	; tmp1941,
	mov	x2, 1	;,
	add	x1, x1, lC3@PAGEOFF;	;, tmp1941,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; inv.cpp:257:   auto A = xmalloc(1LL*n*n);
	smull	x2, w20, w20	; ivtmp.595, n, n
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	mov	x1, 64	;,
	mov	x0, x19	;, tmp1279
	str	x19, [x29, 128]	; tmp1279, %sfp
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	str	xzr, [x29, 424]	;, MEM[(void * *)_1183]
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	lsl	x21, x2, 2	; _57, ivtmp.595,
; inv.cpp:257:   auto A = xmalloc(1LL*n*n);
	str	x2, [x29, 312]	; ivtmp.595, %sfp
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	mov	x2, x21	;, _57
	str	x21, [x29, 144]	; _57, %sfp
	bl	_posix_memalign		;
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	ldr	x23, [x29, 424]	; _58, MEM[(void * *)_1183]
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	mov	x2, x21	;, _57
	mov	x0, x19	;, tmp1279
	mov	x1, 64	;,
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	str	xzr, [x29, 424]	;, MEM[(void * *)_1183]
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	str	x23, [x29, 232]	; _58, %sfp
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	bl	_posix_memalign		;
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	ldr	x24, [x29, 424]	; _56, MEM[(void * *)_1183]
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	mov	x2, x21	;, _57
	mov	x0, x19	;, tmp1279
	mov	x1, 64	;,
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	str	xzr, [x29, 424]	;, MEM[(void * *)_1183]
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	str	x24, [x29, 152]	; _56, %sfp
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	bl	_posix_memalign		;
; inv.cpp:260:   fill_rand(A,n); eye(I,n);
	mov	x0, x23	;, _58
	mov	w1, w20	;, n
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	ldr	x19, [x29, 424]	; _55, MEM[(void * *)_1183]
; inv.cpp:260:   fill_rand(A,n); eye(I,n);
	bl	__ZL9fill_randPfi		;
; inv.cpp:260:   fill_rand(A,n); eye(I,n);
	mov	w1, w20	;, n
	mov	x0, x24	;, _56
	bl	__ZL3eyePfi		;
; inv.cpp:298:     auto A1 = (float*)malloc(1LL*n*n*sizeof(float));
	mov	x0, x21	;, _57
	bl	_malloc		;
; inv.cpp:299:     memcpy(A1,A,1LL*n*n*sizeof(float));
	mov	x1, x23	;, _58
	mov	x2, x21	;, _57
; inv.cpp:298:     auto A1 = (float*)malloc(1LL*n*n*sizeof(float));
	mov	x23, x0	; A1, A1
; inv.cpp:299:     memcpy(A1,A,1LL*n*n*sizeof(float));
	bl	_memcpy		;
; inv.cpp:41:   return chrono::duration<double>(clk::now().time_since_epoch()).count();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
	fmov	d15, x0	; SR.123,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:2210: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	mov	x0, 2305843009213693951	; tmp860,
	cmp	x22, x0	; n, tmp860
	bhi	L216		;,
	stp	d13, d14, [x29, 96]	;,,
LCFI11:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	cbz	x22, L217	; n,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lsl	x21, x22, 2	; _158, n,
	stp	x25, x26, [x29, 64]	;,,
LCFI12:
	mov	x0, x21	;, _158
	stp	x27, x28, [x29, 80]	;,,
LCFI13:
	bl	__Znwm		;
	mov	x3, x0	; _159, _159
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	str	wzr, [x0], 4	;, *_159
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	str	x3, [x29, 368]	; _159, %sfp
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_algobase.h:1143:       if (__n <= 0)
	cmp	x22, 1	; n,
	beq	L125		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_algobase.h:925: 	*__first = __val;
	sub	x2, x21, #4	;, _158,
	mov	w1, 0	;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	add	x24, x3, x21	; _457, _159, _158
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_algobase.h:925: 	*__first = __val;
	bl	_memset		;
	mov	x0, x24	; _457, _457
	str	x21, [x29, 360]	; _158, %sfp
L31:
	ldr	x4, [x29, 368]	; _159, %sfp
	sub	x1, x0, x4	; _711, __first, _159
	mov	x3, x4	; ivtmp.806, _159
	sub	x1, x1, #4	; _1479, _711,
	cmp	x1, 8	; _1479,
	bls	L126		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	adrp	x2, lC8@PAGE	; tmp1951,
	lsr	x1, x1, 2	; _1480, _1479,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:97:       for (; __first != __last; ++__first)
	movi	v30.4s, 0x4	;
	add	x1, x1, 1	; niters.497, _1480,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	ldr	q31, [x2, #lC8@PAGEOFF]	;,
	lsr	x2, x1, 2	; bnd.498_1497, niters.497,
	add	x2, x4, x2, lsl 4	; _1764, _159, bnd.498_1497,
L33:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:99: 	  *__first = __value;
	str	q31, [x3], 16	;, MEM <vector(4) int> [(int &)_1761]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:97:       for (; __first != __last; ++__first)
	add	v31.4s, v31.4s, v30.4s	;,,
	cmp	x3, x2	; ivtmp.806, _1764
	bne	L33		;,
	tst	x1, 3	; niters.497,
	beq	L34		;,
	ldr	x2, [x29, 368]	; _159, %sfp
	and	x1, x1, -4	; niters_vector_mult_vf.499, niters.497,
	add	x2, x2, x1, lsl 2	; tmp.501, _159, niters_vector_mult_vf.499,
L32:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:99: 	  *__first = __value;
	mov	x3, x2	; _511, tmp.501
	str	w1, [x3], 4	; tmp.500, *__first$_M_current_1495
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:97:       for (; __first != __last; ++__first)
	cmp	x0, x3	; __first, _511
	beq	L34		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:100: 	  ++__value;
	add	w4, w1, 1	; __value_250, tmp.500,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_iterator.h:1103: 	++_M_current;
	add	x3, x2, 8	; _474, tmp.501,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:99: 	  *__first = __value;
	str	w4, [x2, 4]	; __value_250, MEM[(int &)__first$_M_current_1495 + 4]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:97:       for (; __first != __last; ++__first)
	cmp	x0, x3	; __first, _474
	beq	L34		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:100: 	  ++__value;
	add	w1, w1, 2	; __value_482, tmp.500,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_numeric.h:99: 	  *__first = __value;
	str	w1, [x2, 8]	; __value_482, MEM[(int &)__first$_M_current_1495 + 8]
L34:
	and	w2, w20, -4	; _1736, n,
	mov	w0, 12	; tmp891,
	neg	x5, x22, lsl 9	; tmp885, n,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	add	w1, w2, 1	; j_515, _1736,
	add	w3, w22, 1	; _1716, n,
; inv.cpp:140:     float invd = 1.0f / A[1LL*k*n + k];
	fmov	s29, 1.0e+0	;,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	sxtw	x1, w1	; _519, j_515
	str	w2, [x29, 332]	; _1736, %sfp
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	add	w2, w2, 2	; j, _1736,
	smull	x27, w20, w0	; _538, n, tmp891
	lsr	w0, w20, 2	; _1605, n,
	stp	x5, x3, [x29, 176]	; tmp885, _1716,
	lsl	x4, x22, 7	; _1722, n,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	x30, 0	; ivtmp.794,
	mov	x26, 0	; ivtmp.791,
	lsl	x28, x22, 3	; _1726, n,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	str	x1, [x29, 304]	; _519, %sfp
	neg	x1, x22, lsl 3	; ivtmp.797, n,
	add	x24, x23, 4	; _1234, A1,
	mov	x7, x23	; ivtmp.792, A1
	str	x19, [x29, 160]	; _55, %sfp
	str	x4, [x29, 200]	; _1722, %sfp
	stp	x1, xzr, [x29, 336]	; ivtmp.797,,
	sxtw	x1, w2	; _1424, j
	str	x1, [x29, 168]	; _1424, %sfp
	lsl	x1, x3, 9	; _1717, _1716,
	lsl	x3, x0, 4	; _1606, _1605,
	add	x0, x22, 1	; _1716, n,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	str	w2, [x29, 300]	; j, %sfp
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	str	xzr, [x29, 352]	;, %sfp
	stp	x1, x0, [x29, 208]	; _1717, _1716,
	add	x0, x21, 4	; _1651, _158,
	add	x1, x4, 128	; _1727, _1722,
	str	x0, [x29, 224]	; _1651, %sfp
	sub	w0, w20, #1	; i_461, n,
	str	x1, [x29, 192]	; _1727, %sfp
	mov	w1, w20	; ivtmp.790, n
	str	w0, [x29, 380]	; i_461, %sfp
	add	x0, x21, x23	; _1699, _158, A1
	str	x0, [x29, 136]	; _1699, %sfp
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	and	x0, x20, 4294967292	; _923, n,
	str	x0, [x29, 320]	; _923, %sfp
L72:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_algobase.h:239:       if (__b < __a)
	mov	w0, 128	; tmp1973,
	cmp	w1, 128	; ivtmp.790,
	csel	w4, w1, w0, le	; _128, ivtmp.790, tmp1973,
; inv.cpp:129:   int kend = min(k0+kb, n);
	add	w0, w4, w26	; i, _128, ivtmp.791
	str	w26, [x29, 328]	; ivtmp.791, %sfp
	mov	w5, w26	; k0, ivtmp.791
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_algobase.h:239:       if (__b < __a)
	cmp	w20, w0	; n, i
	csel	w13, w20, w0, le	; _169, n, i,
	str	w13, [x29, 376]	; _169, %sfp
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	cmp	w13, w26	; _169, ivtmp.791
	ble	L35		;,
	mov	x19, x7	; ivtmp.770, ivtmp.792
	sub	w12, w13, w26	; _1218, _169, ivtmp.791
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	stp	x28, x30, [x29, 240]	; _1726, ivtmp.794,
	mov	w28, w13	; _169, _169
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	add	w13, w5, 1	; r, p,
	add	x17, x7, 4	; ivtmp.773, ivtmp.792,
	lsl	x25, x30, 2	; ivtmp.782, ivtmp.794,
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	stp	x7, x26, [x29, 256]	; ivtmp.792, ivtmp.791,
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	mov	x16, x30	; ivtmp.776, ivtmp.794
	sub	w9, w12, #1	; ivtmp.771, _1218,
	sub	w11, w12, #2	; ivtmp.775, _1218,
	mov	x6, x26	; ivtmp.768, ivtmp.791
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	str	w26, [x29, 272]	; _1738, %sfp
	str	w1, [x29, 276]	; ivtmp.790, %sfp
	str	x27, [x29, 280]	; _538, %sfp
	str	w26, [x29, 288]	; k0, %sfp
	str	w0, [x29, 292]	; i, %sfp
	str	w4, [x29, 296]	; _128, %sfp
; inv.cpp:132:     int p=k; float mv=fabsf(A[1LL*k*n+k]);
	ldr	s28, [x19]	;, MEM[(float *)_1690]
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	ldr	x10, [x29, 184]	; _1716, %sfp
	ldr	x2, [x29, 216]	; _1716, %sfp
	ldr	x30, [x29, 224]	; _1651, %sfp
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	ldr	x15, [x29, 352]	; ivtmp.777, %sfp
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	ldr	x7, [x29, 368]	; _159, %sfp
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	cmp	w20, w13	; n, r
	ble	L36		;,
	.p2align 5,,15
L220:
	smaddl	x1, w20, w13, x6	; ivtmp.733, n, r, ivtmp.768
; inv.cpp:132:     int p=k; float mv=fabsf(A[1LL*k*n+k]);
	fabs	s27, s28	;,
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	mov	w0, w13	; r, r
	add	x8, x23, x1, lsl 2	; ivtmp.762, A1, ivtmp.733,
	b	L38		;
	.p2align 2,,3
L128:
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	mov	w0, w4	; r, r
L38:
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	ldr	s31, [x8]	;, MEM[(float *)_1620]
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	add	w4, w0, 1	; r, r,
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	add	x8, x8, x21	; ivtmp.762, ivtmp.762, _158
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	fabs	s31, s31	;,
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	fcmpe	s27, s31	;,
	csel	w5, w0, w5, mi	; p, r, p,
	fcsel	s27, s31, s27, mi	;,,,
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	cmp	w20, w4	; n, r
	bne	L128		;,
; inv.cpp:134:     if (mv==0) return -1;
	fcmp	s27, #0.0	;
	beq	L39		;,
; inv.cpp:135:     if(p!=k){
	cmp	w5, w6	; p, ivtmp.768
	bne	L218		;,
L40:
; inv.cpp:140:     float invd = 1.0f / A[1LL*k*n + k];
	fdiv	s30, s29, s28	;,,
	smull	x8, w20, w13	; ivtmp.732, n, r
; inv.cpp:142:     for(int i=k+1;i<n;++i) A[1LL*i*n + k] *= invd;
	mov	w5, w13	; i, r
	add	x0, x23, x1, lsl 2	; ivtmp.739, A1, ivtmp.733,
	.p2align 5,,15
L48:
; inv.cpp:142:     for(int i=k+1;i<n;++i) A[1LL*i*n + k] *= invd;
	ldr	s17, [x0]	;, MEM[(float *)_1579]
	mov	w4, w5	; i, i
; inv.cpp:142:     for(int i=k+1;i<n;++i) A[1LL*i*n + k] *= invd;
	add	w5, w5, 1	; i, i,
; inv.cpp:142:     for(int i=k+1;i<n;++i) A[1LL*i*n + k] *= invd;
	fmul	s17, s17, s30	;,,
	str	s17, [x0]	;, MEM[(float *)_1579]
; inv.cpp:142:     for(int i=k+1;i<n;++i) A[1LL*i*n + k] *= invd;
	add	x0, x0, x21	; ivtmp.739, ivtmp.739, _158
	cmp	w20, w5	; n, i
	bne	L48		;,
	cmp	w28, w13	; _169, r
	ble	L49		;,
	lsr	w26, w9, 2	; _1544, ivtmp.771,
; inv.cpp:144:     for(int i=k+1;i<n;++i){
	mov	w5, w13	; i, r
	stp	x19, x7, [x29, 384]	; ivtmp.770, _159,
	lsl	x26, x26, 4	; _1545, _1544,
	and	w27, w9, 3	; _118, ivtmp.771,
	and	w14, w9, -4	; niters_vector_mult_vf.457, ivtmp.771,
	str	x21, [x29, 400]	; _158, %sfp
	str	w28, [x29, 408]	; _169, %sfp
	str	w20, [x29, 412]	; n, %sfp
	.p2align 5,,15
L52:
; inv.cpp:145:       float lik = A[1LL*i*n + k];
	ldr	s23, [x23, x1, lsl 2]	;, MEM[(float *)A1_33 + ivtmp.733_1553 * 4]
	cmp	w11, 2	; ivtmp.775,
	bls	L219		;,
L51:
	dup	v16.4s, v23.s[0]	;,
	add	x7, x24, x1, lsl 2	; vectp.460, _1234, ivtmp.733,
; inv.cpp:144:     for(int i=k+1;i<n;++i){
	mov	x0, 0	; ivtmp.720,
	.p2align 5,,15
L54:
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	ldr	q7, [x17, x0]	;, MEM <vector(4) float> [(float *)vectp.463_332 + ivtmp.720_1542 * 1]
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	ldr	q6, [x7, x0]	;, MEM <vector(4) float> [(float *)vectp.460_377 + ivtmp.720_1542 * 1]
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	fmls	v6.4s, v7.4s, v16.4s	;,,
	str	q6, [x7, x0]	;, MEM <vector(4) float> [(float *)vectp.460_377 + ivtmp.720_1542 * 1]
	add	x0, x0, 16	; ivtmp.720, ivtmp.720,
	cmp	x0, x26	; ivtmp.720, _1545
	bne	L54		;,
	cbz	w27, L55	; _118,
	uxtw	x28, w14	;, niters_vector_mult_vf.457
	add	w7, w14, w13	; tmp.472, niters_vector_mult_vf.457, r
	mov	w20, w5	; i, i
L50:
	sub	w19, w12, w28	; _152, ivtmp.772, niters_vector_mult_vf.457
	cmp	w19, 2	; _152,
	beq	L56		;,
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	add	x21, x28, x15	; tmp964, _1338, ivtmp.777
	add	x0, x1, 1	; _1327, ivtmp.733,
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	dup	v5.2s, v23.s[0]	;,
	add	x0, x0, x28	; _1340, _1327, _1338
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	add	x21, x23, x21, lsl 2	; tmp966, A1, tmp964,
	sub	w28, w19, #1	; niters.469, _152,
	lsl	x0, x0, 2	; _1341, _1340,
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	ldr	d3, [x23, x0]	;, MEM <vector(2) float> [(float *)vectp.474_380]
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	ldr	d4, [x21, 4]	;, MEM <vector(2) float> [(float *)vectp.477_1346]
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	fmls	v3.2s, v5.2s, v4.2s	;,,
	str	d3, [x23, x0]	;, MEM <vector(2) float> [(float *)vectp.474_380]
	tbnz	x19, 0, L57	; _152,,
	and	w28, w28, -2	; niters_vector_mult_vf.471_1142, niters.469,
	add	w7, w7, w28	; tmp.472, tmp.472, niters_vector_mult_vf.471_1142
L56:
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	sxtw	x7, w7	; _142, tmp.472
	add	x0, x7, x8	; _137, _142, ivtmp.732
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	add	x7, x7, x16	; tmp974, _142, ivtmp.776
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	lsl	x0, x0, 2	; _135, _137,
; inv.cpp:148:         A[1LL*i*n + j] -= lik * A[1LL*k*n + j];
	ldr	s2, [x23, x7, lsl 2]	;, *_109
	ldr	s22, [x23, x0]	;, *_133
	fmsub	s22, s2, s23, s22	;,,,
	str	s22, [x23, x0]	;, *_133
L57:
; inv.cpp:144:     for(int i=k+1;i<n;++i){
	add	w5, w5, 1	; i, i,
; inv.cpp:144:     for(int i=k+1;i<n;++i){
	add	x8, x8, x22	; ivtmp.732, ivtmp.732, n
	add	x1, x1, x22	; ivtmp.733, ivtmp.733, n
	cmp	w4, w20	; i, i
	bne	L52		;,
L207:
	ldp	x19, x7, [x29, 384]	; ivtmp.770, _159,
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	add	x6, x6, 1	; ivtmp.768, ivtmp.768,
	ldr	x21, [x29, 400]	; _158, %sfp
	add	x19, x19, x10, lsl 2	; ivtmp.770, ivtmp.770, _1716,
	ldr	w28, [x29, 408]	;, %sfp
	ldr	w20, [x29, 412]	;, %sfp
L215:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	w5, w13	; p, r
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	sub	w9, w9, #1	; ivtmp.771, ivtmp.771,
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	add	w13, w5, 1	; r, p,
; inv.cpp:132:     int p=k; float mv=fabsf(A[1LL*k*n+k]);
	ldr	s28, [x19]	;, MEM[(float *)_1690]
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	sub	w12, w12, #1	; ivtmp.772, ivtmp.772,
	add	x17, x17, x30	; ivtmp.773, ivtmp.773, _1651
	sub	w11, w11, #1	; ivtmp.775, ivtmp.775,
	add	x16, x16, x22	; ivtmp.776, ivtmp.776, n
	add	x15, x15, x2	; ivtmp.777, ivtmp.777, _1716
	add	x25, x25, x21	; ivtmp.782, ivtmp.782, _158
; inv.cpp:133:     for(int r=k+1;r<n;++r){ float v=fabsf(A[1LL*r*n+k]); if(v>mv){mv=v;p=r;} }
	cmp	w20, w13	; n, r
	bgt	L220		;,
L36:
; inv.cpp:134:     if (mv==0) return -1;
	fcmp	s28, #0.0	;
	beq	L39		;,
L49:
; inv.cpp:130:   for(int k=k0;k<kend;++k){
	cmp	w28, w13	; _169, r
	beq	L46		;,
	add	x19, x19, x10, lsl 2	; ivtmp.770, ivtmp.770, _1716,
	add	x6, x6, 1	; ivtmp.768, ivtmp.768,
	b	L215		;
	.p2align 2,,3
L55:
; inv.cpp:144:     for(int i=k+1;i<n;++i){
	cmp	w4, w5	; i, i
	beq	L207		;,
	add	x1, x1, x22	; ivtmp.733, ivtmp.733, n
; inv.cpp:144:     for(int i=k+1;i<n;++i){
	add	w5, w5, 1	; i, i,
; inv.cpp:144:     for(int i=k+1;i<n;++i){
	add	x8, x8, x22	; ivtmp.732, ivtmp.732, n
; inv.cpp:145:       float lik = A[1LL*i*n + k];
	ldr	s23, [x23, x1, lsl 2]	;, MEM[(float *)A1_33 + ivtmp.733_1208 * 4]
	b	L51		;
	.p2align 2,,3
L219:
	mov	x28, 0	;,
	mov	w20, w5	; i, i
	mov	w7, w13	; tmp.472, r
	b	L50		;
L218:
	ldr	w8, [x29, 380]	;, %sfp
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	smull	x27, w20, w5	; _200, n, p
	cmp	w8, 3	; i_461,
	bls	L41		;,
	lsl	x14, x27, 2	; _1391, _200,
	add	x8, x25, 16	; _1701, ivtmp.782,
	cmp	x14, x8	; _1391, _1701
	add	x8, x14, 16	; _1396, _1391,
	ccmp	x8, x25, 4, lt	; _1396, ivtmp.782,,
	bgt	L41		;,
	mov	x8, 0	; ivtmp.752,
	add	x14, x23, x14	; vectp.488, A1, _1391
	add	x26, x23, x25	; vectp.491, A1, ivtmp.782
	.p2align 5,,15
L42:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	ldr	q30, [x14, x8]	; MEM <vector(4) float> [(type &)vectp.488_1447 + ivtmp.752_1603 * 1], MEM <vector(4) float> [(type &)vectp.488_1447 + ivtmp.752_1603 * 1]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:235:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	q31, [x26, x8]	; MEM <vector(4) float> [(type &)vectp.491_1453 + ivtmp.752_1603 * 1], MEM <vector(4) float> [(type &)vectp.491_1453 + ivtmp.752_1603 * 1]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	str	q30, [x26, x8]	; MEM <vector(4) float> [(type &)vectp.488_1447 + ivtmp.752_1603 * 1], MEM <vector(4) float> [(float &)vectp.491_1453 + ivtmp.752_1603 * 1]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:237:       __b = _GLIBCXX_MOVE(__tmp);
	str	q31, [x14, x8]	; MEM <vector(4) float> [(type &)vectp.491_1453 + ivtmp.752_1603 * 1], MEM <vector(4) float> [(float &)vectp.488_1447 + ivtmp.752_1603 * 1]
	add	x8, x8, 16	; ivtmp.752, ivtmp.752,
	cmp	x8, x3	; ivtmp.752, _1606
	bne	L42		;,
	ldr	w26, [x29, 332]	;, %sfp
	cmp	w26, w20	; _1736, n
	beq	L45		;,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	ldr	x14, [x29, 320]	; _923, %sfp
	add	x8, x27, x14	; _919, _200, _923
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	add	x14, x16, x14	; _922, ivtmp.776, _923
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	lsl	x8, x8, 2	; _857, _919,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	lsl	x14, x14, 2	; _920, _922,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	ldr	s30, [x23, x8]	; _512, MEM[(type &)_502]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:235:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	s31, [x23, x14]	; _501, MEM[(type &)_918]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	str	s30, [x23, x14]	; _512, *_918
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:237:       __b = _GLIBCXX_MOVE(__tmp);
	str	s31, [x23, x8]	; _501, *_502
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	cmp	w0, w26	; r, _1736
	ble	L45		;,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	ldr	x8, [x29, 304]	; _519, %sfp
	add	x0, x27, x8	; _237, _200, _519
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	add	x8, x16, x8	; _520, ivtmp.776, _519
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	lsl	x0, x0, 2	; _239, _237,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	lsl	x8, x8, 2	; _139, _520,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	ldr	s30, [x23, x0]	; _242, MEM[(type &)_240]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:235:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	s31, [x23, x8]	; _241, MEM[(type &)_507]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	str	s30, [x23, x8]	; _242, *_507
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:237:       __b = _GLIBCXX_MOVE(__tmp);
	str	s31, [x23, x0]	; _241, *_240
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	ldr	w0, [x29, 300]	;, %sfp
	cmp	w0, w4	; j, r
	bge	L45		;,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	ldr	x0, [x29, 168]	; _1424, %sfp
	add	x4, x27, x0	; _1429, _200, _1424
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	add	x0, x16, x0	; _1425, ivtmp.776, _1424
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	lsl	x4, x4, 2	; _1431, _1429,
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	lsl	x0, x0, 2	; _1427, _1425,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	ldr	s30, [x23, x4]	; _1434, MEM[(type &)_1432]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:235:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	s31, [x23, x0]	; _1433, MEM[(type &)_1428]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	str	s30, [x23, x0]	; _1434, *_1428
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:237:       __b = _GLIBCXX_MOVE(__tmp);
	str	s31, [x23, x4]	; _1433, *_1432
L45:
; inv.cpp:138:       swap(piv[k], piv[p]);
	ubfiz	x5, x5, 2, 32	; _212, p,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:235:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	w0, [x7, x6, lsl 2]	;, MEM[(type &)_159 + ivtmp.768_1621 * 4]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	ldr	w4, [x7, x5]	;, MEM[(type &)_213]
; inv.cpp:140:     float invd = 1.0f / A[1LL*k*n + k];
	ldr	s28, [x19]	;, MEM[(float *)_1690]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	str	w4, [x7, x6, lsl 2]	; _215, MEM[(int &)_159 + ivtmp.768_1621 * 4]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:237:       __b = _GLIBCXX_MOVE(__tmp);
	str	w0, [x7, x5]	; _214, *_213
	b	L40		;
L39:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/chrono.h:218: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d15, d15	;, SR.123
	ldr	x19, [x29, 160]	; _55, %sfp
	mov	w21, 0	; _1743,
L120:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	ldp	x1, x0, [x29, 360]	;,,
	bl	__ZdlPvm		;
	ldp	x25, x26, [x29, 64]	;,,
LCFI14:
	ldp	x27, x28, [x29, 80]	;,,
LCFI15:
L30:
; inv.cpp:41:   return chrono::duration<double>(clk::now().time_since_epoch()).count();
	bl	__ZNSt6chrono3_V212system_clock3nowEv		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/chrono.h:218: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d14, x0	;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC5@PAGE	; tmp1190,
	mov	x2, 11	;,
	add	x1, x1, lC5@PAGEOFF;	;, tmp1190,
	adrp	x0, __ZSt4cerr@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cerr@GOTPAGEOFF]	;,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; inv.cpp:301:     cerr<<"lu_neon(s)="<<(t1-t0)<<" ok="<<ok<<"\n";
	adrp	x0, lC9@PAGE	; tmp2019,
	fsub	d15, d14, d15	; _83,,
	ldr	d0, [x0, #lC9@PAGEOFF]	; tmp1194,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	adrp	x0, __ZSt4cerr@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cerr@GOTPAGEOFF]	;,
	fmul	d0, d15, d0	;, _83, tmp1194
	bl	__ZNSo9_M_insertIdEERSoT_		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC6@PAGE	; tmp1197,
	mov	x2, 4	;,
	add	x1, x1, lC6@PAGEOFF;	;, tmp1197,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	mov	x24, x0	; _50,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:183:       { return _M_insert(__n); }
	mov	w1, w21	;, _1743
	mov	x0, x24	;, _50
	bl	__ZNSo9_M_insertIbEERSoT_		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC3@PAGE	; tmp2020,
	mov	x2, 1	;,
	add	x1, x1, lC3@PAGEOFF;	;, tmp2020,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; inv.cpp:302:     free(A1);
	mov	x0, x23	;, A1
	bl	_free		;
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	ldr	x0, [x29, 128]	;, %sfp
	mov	x1, 64	;,
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	str	xzr, [x29, 424]	;, MEM[(void * *)_1183]
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	ldr	x2, [x29, 144]	;, %sfp
	bl	_posix_memalign		;
; inv.cpp:44:   void* p=nullptr; posix_memalign(&p, align, n*sizeof(float)); return (float*)p;
	ldr	x21, [x29, 424]	; _48, MEM[(void * *)_1183]
; inv.cpp:60:   for(int i=0;i<n;++i) for(int j=0;j<n;++j){
	cbz	w20, L137	; n,
	mov	w2, 12	; tmp1204,
	lsl	x14, x22, 2	; _450, n,
	ldr	x23, [x29, 232]	; _58, %sfp
	mov	x7, 0	; ivtmp.559,
	mov	x0, x21	; ivtmp.528, _48
	smull	x2, w20, w2	; _1076, n, tmp1204
; inv.cpp:60:   for(int i=0;i<n;++i) for(int j=0;j<n;++j){
	mov	w13, 0	; i,
	sub	w11, w20, #1	; _1149, n,
	lsl	x4, x22, 3	; _1023, n,
; inv.cpp:60:   for(int i=0;i<n;++i) for(int j=0;j<n;++j){
	mov	x9, x21	; ivtmp.560, _48
	lsr	w15, w20, 2	; bnd.379_1146, n,
	and	w10, w20, 3	; _1623, n,
	and	w12, w20, -4	; k, n,
	mov	x8, x23	; ivtmp.561, _58
L105:
	mov	x17, x19	; ivtmp.554, _55
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	mov	x6, 0	; ivtmp.550,
	add	x5, x8, w15, uxtw 4	; _873, ivtmp.561, bnd.379_1146,
	.p2align 5,,15
L115:
	cmp	w11, 2	; _1149,
	bls	L138		;,
L112:
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	movi	v16.4s, 0	;
	mov	x3, x8	; ivtmp.545, ivtmp.561
	mov	x1, x17	; ivtmp.542, ivtmp.554
	.p2align 5,,15
L109:
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	ldr	s30, [x1, x4]	; MEM[(const float *)_999 + _1023 * 1], MEM[(const float *)_999 + _1023 * 1]
	ldr	s18, [x1, x22, lsl 2]	;, MEM[(const float *)_999 + _119 * 4]
	ldr	s31, [x1, x2]	; MEM[(const float *)_999 + _1076 * 1], MEM[(const float *)_999 + _1076 * 1]
	ldr	s19, [x1]	;, MEM[(const float *)_999]
	add	x1, x1, x22, lsl 4	; ivtmp.542, ivtmp.542, n,
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	ldr	q17, [x3], 16	;, MEM <const vector(4) float> [(const float *)_998]
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	uzp1	v18.2s, v18.2s, v31.2s	;,, MEM[(const float *)_999 + _1076 * 1]
	uzp1	v19.2s, v19.2s, v30.2s	;,, MEM[(const float *)_999 + _1023 * 1]
	zip1	v18.4s, v19.4s, v18.4s	;,,
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	fmla	v16.4s, v18.4s, v17.4s	;,,
	cmp	x5, x3	; _873, ivtmp.545
	bne	L109		;,
	faddp	v16.4s, v16.4s, v16.4s	;,,
	faddp	v16.4s, v16.4s, v16.4s	;,,
	fmov	s28, s16	;,
	cbz	w10, L107	; _1623,
	mov	w1, w12	; k, k
L113:
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	smaddl	x24, w20, w1, x6	; tmp1208, n, k, ivtmp.550
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	add	x16, x7, w1, sxtw	; tmp1209, ivtmp.559, k
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	ldr	s26, [x23, x16, lsl 2]	;, *_526
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	add	w16, w1, 1	; k, k,
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	ldr	s7, [x19, x24, lsl 2]	;, *_487
	fmadd	s26, s7, s26, s28	;,,,
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	cmp	w20, w16	; n, k
	ble	L108		;,
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	smaddl	x3, w20, w1, x22	; _1092, n, k, n
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	add	x16, x7, w16, sxtw	; tmp1214, ivtmp.559, k
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	ldr	s5, [x23, x16, lsl 2]	;, *_1095
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	add	w1, w1, 2	; k, k,
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	add	x16, x3, x6	; tmp1212, _1092, ivtmp.550
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	ldr	s6, [x19, x16, lsl 2]	;, *_1088
	fmadd	s26, s6, s5, s26	;,,,
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	cmp	w20, w1	; n, k
	ble	L108		;,
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	add	x1, x7, w1, sxtw	; tmp1220, ivtmp.559, k
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	ldr	s4, [x23, x1, lsl 2]	;, *_1163
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	add	x1, x22, x6	; tmp1217, n, ivtmp.550
	add	x1, x1, x3	; tmp1218, tmp1217, _1092
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	ldr	s27, [x19, x1, lsl 2]	;, *_1157
	fmadd	s26, s27, s4, s26	;,,,
L108:
; inv.cpp:62:     C[1LL*i*n+j]=s;
	str	s26, [x9, x6, lsl 2]	;, MEM[(float *)_852 + ivtmp.550_788 * 4]
; inv.cpp:60:   for(int i=0;i<n;++i) for(int j=0;j<n;++j){
	add	x6, x6, 1	; ivtmp.550, ivtmp.550,
	add	x17, x17, 4	; ivtmp.554, ivtmp.554,
	cmp	x22, x6	; n, ivtmp.550
	bne	L115		;,
L111:
; inv.cpp:60:   for(int i=0;i<n;++i) for(int j=0;j<n;++j){
	add	w13, w13, 1	; _1301, i,
; inv.cpp:60:   for(int i=0;i<n;++i) for(int j=0;j<n;++j){
	add	x7, x7, x6	; ivtmp.559, ivtmp.559, ivtmp.550
	add	x9, x9, x14	; ivtmp.560, ivtmp.560, _450
	add	x8, x8, x14	; ivtmp.561, ivtmp.561, _450
	cmp	w20, w13	; n, _1301
	bne	L105		;,
; inv.cpp:310:     for (int i=0;i<n;++i) Prod[1LL*i*n + i] -= 1.f;
	fmov	s25, 1.0e+0	;,
; inv.cpp:310:     for (int i=0;i<n;++i) Prod[1LL*i*n + i] -= 1.f;
	mov	w2, 0	; i,
	add	x14, x14, 4	; _1082, _450,
; inv.cpp:60:   for(int i=0;i<n;++i) for(int j=0;j<n;++j){
	mov	x1, x21	; ivtmp.535, _48
L116:
; inv.cpp:310:     for (int i=0;i<n;++i) Prod[1LL*i*n + i] -= 1.f;
	ldr	s24, [x1]	;, MEM[(float *)_1018]
; inv.cpp:310:     for (int i=0;i<n;++i) Prod[1LL*i*n + i] -= 1.f;
	add	w2, w2, 1	; i, i,
; inv.cpp:310:     for (int i=0;i<n;++i) Prod[1LL*i*n + i] -= 1.f;
	fsub	s24, s24, s25	;,,
	str	s24, [x1]	;, MEM[(float *)_1018]
; inv.cpp:310:     for (int i=0;i<n;++i) Prod[1LL*i*n + i] -= 1.f;
	add	x1, x1, x14	; ivtmp.535, ivtmp.535, _1082
	cmp	w13, w2	; _1301, i
	bne	L116		;,
	ldr	x2, [x29, 312]	; ivtmp.595, %sfp
	sub	x1, x2, #1	; _348, ivtmp.595,
	cmp	x1, 2	; _348,
	bls	L139		;,
	lsr	x1, x2, 2	; bnd.367_593, ivtmp.595,
	movi	v30.4s, 0	;
	add	x1, x21, x1, lsl 4	; _148, _48, bnd.367_593,
L118:
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	ldr	q3, [x0], 16	;, MEM <const vector(4) float> [(const float *)_458]
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	fcvtl	v29.2d, v3.2s	;,
	fcvtl2	v3.2d, v3.4s	;,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	fmla	v30.2d, v29.2d, v29.2d	;,,
	fmla	v30.2d, v3.2d, v3.2d	;,,
	cmp	x1, x0	; _148, ivtmp.528
	bne	L118		;,
	ldr	x1, [x29, 312]	; ivtmp.595, %sfp
	faddp	d31, v30.2d	;,
	and	x0, x1, -4	; i, ivtmp.595,
	cmp	x1, x0	; ivtmp.595, i
	beq	L104		;,
L117:
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	ldr	s2, [x21, x0, lsl 2]	;, *_1489
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	add	x1, x0, 1	; i_90, i,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	ldr	x2, [x29, 312]	; ivtmp.595, %sfp
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	fcvt	d2, s2	;,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	fmadd	d31, d2, d2, d31	;,,,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	cmp	x2, x1	; ivtmp.595, i_90
	ble	L104		;,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	add	x1, x21, x0, lsl 2	; tmp1248, _48, i,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	add	x0, x0, 2	; i_102, i,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	ldr	s1, [x1, 4]	;, *_95
	fcvt	d1, s1	;,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	fmadd	d31, d1, d1, d31	;,,,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	cmp	x2, x0	; ivtmp.595, i_102
	ble	L104		;,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	ldr	s0, [x1, 8]	;, *_414
	fcvt	d0, s0	;,
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	fmadd	d31, d0, d0, d31	;,,,
L104:
; inv.cpp:311:     double rel = fro_norm(Prod, n) / sqrt((double)n);
	scvtf	d13, w20	;, n
; inv.cpp:57:   return sqrt((double)s);
	fsqrt	d31, d31	;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC7@PAGE	; tmp1255,
	add	x1, x1, lC7@PAGEOFF;	;, tmp1255,
	mov	x2, 20	;,
	adrp	x0, __ZSt4cerr@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cerr@GOTPAGEOFF]	;,
; inv.cpp:311:     double rel = fro_norm(Prod, n) / sqrt((double)n);
	fsqrt	d13, d13	;,
; inv.cpp:311:     double rel = fro_norm(Prod, n) / sqrt((double)n);
	fdiv	d13, d31, d13	;,,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:232:       { return _M_insert(__f); }
	fmov	d0, d13	;,
	adrp	x0, __ZSt4cerr@GOTPAGE	;,
	ldr	x0, [x0, __ZSt4cerr@GOTPAGEOFF]	;,
	bl	__ZNSo9_M_insertIdEERSoT_		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	adrp	x1, lC3@PAGE	; tmp2027,
	mov	x2, 1	;,
	add	x1, x1, lC3@PAGEOFF;	;, tmp2027,
	bl	__ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l		;
LEHE0:
; inv.cpp:313:     free(Prod);
	mov	x0, x21	;, _48
	bl	_free		;
; inv.cpp:316:   free(A); free(I); free(Inv);
	ldr	x0, [x29, 232]	;, %sfp
	bl	_free		;
; inv.cpp:316:   free(A); free(I); free(Inv);
	ldr	x0, [x29, 152]	;, %sfp
	bl	_free		;
; inv.cpp:316:   free(A); free(I); free(Inv);
	mov	x0, x19	;, _55
	bl	_free		;
; inv.cpp:318: }
	ldr	d15, [sp, 112]	;,
	mov	w0, 0	;,
	ldp	x19, x20, [sp, 16]	;,,
	ldp	x21, x22, [sp, 32]	;,,
	ldp	x23, x24, [sp, 48]	;,,
	ldp	d13, d14, [x29, 96]	;,,
LCFI16:
	ldp	x29, x30, [sp], 432	;,,,
LCFI17:
	ret	
L107:
LCFI18:
; inv.cpp:62:     C[1LL*i*n+j]=s;
	str	s16, [x9, x6, lsl 2]	;, MEM[(float *)_1102 + ivtmp.550_797 * 4]
; inv.cpp:60:   for(int i=0;i<n;++i) for(int j=0;j<n;++j){
	add	x6, x6, 1	; ivtmp.550, ivtmp.550,
	cmp	x22, x6	; n, ivtmp.550
	beq	L111		;,
	add	x17, x17, 4	; ivtmp.554, ivtmp.554,
	b	L112		;
L46:
LCFI19:
; inv.cpp:158:   if (j0 >= n) return;
	add	x2, x29, 284	;,,
	ldr	x27, [x29, 280]	; _538, %sfp
	ldp	x28, x30, [x29, 240]	; _1726, ivtmp.794,
	ldp	x7, x26, [x29, 256]	; ivtmp.792, ivtmp.791,
	ldp	w5, w0, [x2, 4]	;,,
	ldp	w8, w1, [x2, -12]	;,,
	ldr	w4, [x29, 296]	;, %sfp
	cmp	w20, w0	; n, i
	ble	L80		;,
	ldr	w9, [x29, 376]	;, %sfp
	ldr	w10, [x29, 328]	;, %sfp
	sub	w2, w9, #1	; _1239, _169,
	cmp	w2, w5	; _1239, k0
	csel	w2, w2, w5, le	; _1238, _1239, k0,
	sub	w6, w2, w8	; _364, _1238, _1738
	cmp	w2, w10	; _1238, k0
	csel	w2, w6, wzr, ge	; ivtmp.709, _364,,
	add	w8, w2, w8	; _366, ivtmp.709, _1738
	add	w8, w8, 1	; i, _366,
	cmp	w9, w8	; _169, i
	ble	L59		;,
	ldr	x11, [x29, 344]	; ivtmp.801, %sfp
	smaddl	x19, w20, w8, x26	; ivtmp.710, n, i, ivtmp.791
	add	w10, w2, 1	; ivtmp.709, ivtmp.709,
	mov	w12, w10	; ivtmp.708, ivtmp.709
	str	w0, [x29, 384]	; i, %sfp
	mov	w0, w2	; ivtmp.709, ivtmp.709
	ldr	w6, [x29, 376]	;, %sfp
	add	x6, x11, w6, sxtw	; _799, ivtmp.801, _169
	add	x6, x23, x6, lsl 2	; ivtmp.698, A1, _799,
	mov	x11, x26	; ivtmp.791, ivtmp.791
	add	x25, x23, x19, lsl 2	; ivtmp.706, A1, ivtmp.710,
	str	w1, [x29, 296]	; ivtmp.790, %sfp
	smull	x26, w20, w8	; ivtmp.707, n, i
	str	w4, [x29, 408]	; _128, %sfp
	str	x6, [x29, 392]	; ivtmp.698, %sfp
	smull	x6, w20, w8	; ivtmp.707, n, i
	add	x13, x23, x6, lsl 2	; ivtmp.705, A1, ivtmp.707,
L69:
	ldr	w2, [x29, 328]	;, %sfp
	str	w12, [x29, 400]	; ivtmp.708, %sfp
; inv.cpp:161:       float s = A[1LL*i*n + j];
	ldr	x9, [x29, 392]	; ivtmp.698, %sfp
	str	w8, [x29, 412]	; i, %sfp
	ldrsw	x1, [x29, 376]	; ivtmp.695, %sfp
	cmp	w8, w2	; i, k0
	csinc	w15, w12, wzr, gt	; niters.433, ivtmp.708,
	and	w17, w15, 3	; _664, niters.433,
	and	w14, w15, -4	; niters_vector_mult_vf.435, niters.433,
	cmp	w0, 2	; ivtmp.709,
	ccmp	w8, w2, 4, hi	; i, k0,,
	lsr	w0, w15, 2	; bnd.434_749, niters.433,
	cset	w16, le	; tmp1275,
	add	x0, x25, w0, uxtw 4	; _548, ivtmp.706, bnd.434_749,
	.p2align 5,,15
L68:
; inv.cpp:161:       float s = A[1LL*i*n + j];
	ldr	s21, [x13, x1, lsl 2]	;, MEM[(float *)_804 + ivtmp.695_786 * 4]
	cbnz	w16, L130	; tmp1275,
L65:
; inv.cpp:161:       float s = A[1LL*i*n + j];
	movi	v1.4s, 0	;
	mov	x4, x25	; ivtmp.688, ivtmp.706
	mov	x2, x9	; ivtmp.685, ivtmp.698
	.p2align 5,,15
L62:
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	ldr	s30, [x2, x28]	; MEM[(float *)_1378 + _1726 * 1], MEM[(float *)_1378 + _1726 * 1]
	ldr	s26, [x2, x22, lsl 2]	;, MEM[(float *)_1378 + _119 * 4]
	ldr	s31, [x2, x27]	; MEM[(float *)_1378 + _538 * 1], MEM[(float *)_1378 + _538 * 1]
	ldr	s0, [x2]	;, MEM[(float *)_1378]
	add	x2, x2, x22, lsl 4	; ivtmp.685, ivtmp.685, n,
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	ldr	q25, [x4], 16	;, MEM <vector(4) float> [(float *)_1379]
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	uzp1	v26.2s, v26.2s, v31.2s	;,, MEM[(float *)_1378 + _538 * 1]
	uzp1	v0.2s, v0.2s, v30.2s	;,, MEM[(float *)_1378 + _1726 * 1]
	zip1	v26.4s, v0.4s, v26.4s	;,,
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	fmls	v1.4s, v26.4s, v25.4s	;,,
	cmp	x0, x4	; _548, ivtmp.688
	bne	L62		;,
	faddp	v24.4s, v1.4s, v1.4s	;,,
	faddp	v24.4s, v24.4s, v24.4s	;,,
	fadd	s24, s21, s24	;,,
	cbz	w17, L63	; _664,
	dup	d18, v1.d[1]	;,
	uxtw	x4, w14	;, niters_vector_mult_vf.435
	add	w6, w14, w5	; tmp.436, niters_vector_mult_vf.435, k0
	fadd	v18.2s, v18.2s, v1.2s	;,,
L61:
	sub	w8, w15, w4	; niters.444, niters.433, niters_vector_mult_vf.435
	cmp	w8, 1	; niters.444,
	beq	L66		;,
	add	x2, x1, x30	; _1320, ivtmp.695, ivtmp.794
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	add	x12, x4, x19	; tmp1014, _653, ivtmp.710
	lsl	x12, x12, 2	; tmp1015, tmp1014,
	madd	x2, x22, x4, x2	; _612, n, _653, _1320
	ldr	d30, [x23, x12]	;, MEM <vector(2) float> [(float *)vectp.449_665]
	add	x4, x23, x2, lsl 2	; _610, A1, _612,
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	ldr	s31, [x23, x2, lsl 2]	;, *_610
	ldr	s28, [x4, x21]	; *ivtmp_571, *ivtmp_571
	uzp1	v31.2s, v31.2s, v28.2s	;,, *ivtmp_571
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	fmls	v18.2s, v31.2s, v30.2s	;,,
	faddp	s18, v18.2s	;,
	fadd	s24, s18, s21	;,,
	tbz	x8, 0, L67	; niters.444,,
	and	w8, w8, -2	; niters_vector_mult_vf.446_671, niters.444,
	add	w6, w6, w8	; tmp.436, tmp.436, niters_vector_mult_vf.446_671
L66:
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	smaddl	x2, w20, w6, x1	; _690, n, tmp.436, ivtmp.695
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	add	x6, x26, w6, sxtw	; tmp1022, ivtmp.707, tmp.436
; inv.cpp:164:         s -= A[1LL*i*n + t] * A[1LL*t*n + j]; // L[i,t] * U[t,j]
	ldr	s16, [x23, x6, lsl 2]	;, *_693
	ldr	s17, [x23, x2, lsl 2]	;, *_687
	fmsub	s24, s17, s16, s24	;,,,
L67:
; inv.cpp:166:       A[1LL*i*n + j] = s; // теперь это U[i,j]
	str	s24, [x13, x1, lsl 2]	;, MEM[(float *)_1541 + ivtmp.695_1537 * 4]
; inv.cpp:160:     for (int j = j0; j < n; ++j){
	add	x1, x1, 1	; ivtmp.695, ivtmp.695,
	add	x9, x9, 4	; ivtmp.698, ivtmp.698,
	cmp	w20, w1	; n, ivtmp.695
	bgt	L68		;,
L208:
	ldr	w8, [x29, 412]	;, %sfp
; inv.cpp:159:   for (int i = k0; i < kend; ++i){
	add	x13, x13, x21	; ivtmp.705, ivtmp.705, _158
	add	x25, x25, x21	; ivtmp.706, ivtmp.706, _158
	add	x26, x26, x22	; ivtmp.707, ivtmp.707, n
	add	x19, x19, x22	; ivtmp.710, ivtmp.710, n
	ldr	w12, [x29, 400]	;, %sfp
	mov	w0, w10	; ivtmp.709, ivtmp.709
	ldr	w1, [x29, 376]	;, %sfp
; inv.cpp:159:   for (int i = k0; i < kend; ++i){
	add	w8, w8, 1	; i, i,
; inv.cpp:159:   for (int i = k0; i < kend; ++i){
	add	w12, w12, 1	; ivtmp.708, ivtmp.708,
	cmp	w1, w8	; _169, i
	bgt	L221		;,
	ldr	w1, [x29, 296]	;, %sfp
	mov	x26, x11	; ivtmp.791, ivtmp.791
	ldr	w0, [x29, 384]	;, %sfp
	ldr	w4, [x29, 408]	;, %sfp
L59:
	sxtw	x6, w0	; _1460, i
	sub	w13, w4, #4	; _352, _128,
	smull	x2, w20, w0	; ivtmp.678, n, i
	ldr	x10, [x29, 344]	; ivtmp.801, %sfp
	and	w13, w13, -4	; _433, _352,
	cmp	w1, 3	; ivtmp.790,
	add	w13, w13, 4	; _353, _433,
	smaddl	x14, w20, w0, x26	; _193, n, i, ivtmp.791
	add	x12, x23, x2, lsl 2	; ivtmp.676, A1, ivtmp.678,
	add	x14, x23, x14, lsl 2	; ivtmp.677, A1, _193,
	add	x8, x10, x22, lsl 1	; _580, ivtmp.801, n,
	add	x8, x8, x6	; _785, _580, _1460
	add	x9, x23, x8, lsl 2	; ivtmp.670, A1, _785,
	mov	w8, 4	; tmp2001,
	csel	w13, w13, w8, gt	; k, _353, tmp2001,
	ldr	x8, [x29, 336]	; ivtmp.797, %sfp
	add	x15, x8, x10, lsl 2	; _254, ivtmp.797, ivtmp.801,
	.p2align 5,,15
L71:
; inv.cpp:196:       float s = A[1LL*i*n + j];
	mov	x25, x9	; ivtmp.670, ivtmp.670
	mov	x11, x6	; ivtmp.666, _1460
	.p2align 5,,15
L79:
; inv.cpp:196:       float s = A[1LL*i*n + j];
	ldr	s20, [x12, x11, lsl 2]	;, MEM[(float *)_941 + ivtmp.666_1363 * 4]
; inv.cpp:199:       for(; k+4<=kb; k+=4){
	cmp	w1, 3	; ivtmp.790,
	ble	L131		;,
L77:
; inv.cpp:198:       float32x4_t acc = vdupq_n_f32(0.0f);
	movi	v19.4s, 0	;
	add	x10, x15, x25	; ivtmp.657, _254, ivtmp.670
	mov	x8, x25	; ivtmp.659, ivtmp.670
	mov	x17, x14	; ivtmp.656, ivtmp.677
; inv.cpp:197:       int k=0;
	mov	w19, 0	; k,
	b	L75		;
	.p2align 2,,3
L132:
	add	w19, w19, 4	; k, k,
L75:
; /opt/homebrew/Cellar/gcc/15.2.0/lib/gcc/current/gcc/aarch64-apple-darwin24/15/include/arm_neon.h:11639:   return __builtin_aarch64_fmav4sf (__b, __c, __a);
	ldr	s6, [x10]	;, MEM[(float *)_1281]
; inv.cpp:199:       for(; k+4<=kb; k+=4){
	add	w16, w19, 7	; _1361, k,
; /opt/homebrew/Cellar/gcc/15.2.0/lib/gcc/current/gcc/aarch64-apple-darwin24/15/include/arm_neon.h:11639:   return __builtin_aarch64_fmav4sf (__b, __c, __a);
	ldr	s5, [x10, x22, lsl 2]	;, MEM[(float *)_1281 + _119 * 4]
; inv.cpp:199:       for(; k+4<=kb; k+=4){
	add	x10, x10, x22, lsl 4	; ivtmp.657, ivtmp.657, n,
; /opt/homebrew/Cellar/gcc/15.2.0/lib/gcc/current/gcc/aarch64-apple-darwin24/15/include/arm_neon.h:11639:   return __builtin_aarch64_fmav4sf (__b, __c, __a);
	ldr	s31, [x8, x22, lsl 2]	; MEM[(float *)_191 + _119 * 4], MEM[(float *)_191 + _119 * 4]
	ld1	{v6.s}[1], [x8]	;, MEM[(float *)_191]
; inv.cpp:199:       for(; k+4<=kb; k+=4){
	add	x8, x8, x22, lsl 4	; ivtmp.659, ivtmp.659, n,
; /opt/homebrew/Cellar/gcc/15.2.0/lib/gcc/current/gcc/aarch64-apple-darwin24/15/include/arm_neon.h:12296:   return __builtin_aarch64_ld1v4sf ((const __builtin_aarch64_simd_sf *) __a);
	ldr	q7, [x17], 16	;, MEM <__Float32x4_t> [(float * {ref-all})_189]
; /opt/homebrew/Cellar/gcc/15.2.0/lib/gcc/current/gcc/aarch64-apple-darwin24/15/include/arm_neon.h:11639:   return __builtin_aarch64_fmav4sf (__b, __c, __a);
	uzp1	v5.2s, v5.2s, v31.2s	;,, MEM[(float *)_191 + _119 * 4]
	zip1	v5.4s, v6.4s, v5.4s	;,,
	fmla	v19.4s, v7.4s, v5.4s	;,,
; inv.cpp:199:       for(; k+4<=kb; k+=4){
	cmp	w4, w16	; _128, _1361
	bgt	L132		;,
; inv.cpp:213:       float32x2_t hi = vget_high_f32(acc);
	dup	d4, v19.d[1]	;,
; /opt/homebrew/Cellar/gcc/15.2.0/lib/gcc/current/gcc/aarch64-apple-darwin24/15/include/arm_neon.h:222:   return __a + __b;
	fadd	v4.2s, v4.2s, v19.2s	;,,
; /opt/homebrew/Cellar/gcc/15.2.0/lib/gcc/current/gcc/aarch64-apple-darwin24/15/include/arm_neon.h:2604:   return __aarch64_vget_lane_any (__a, __b);
	dup	s3, v4.s[1]	;,,
; inv.cpp:216:       s -= sum;
	fadd	s3, s3, s4	;,,
	fsub	s20, s20, s3	;,,
; inv.cpp:217:       for(; k<kb; ++k)
	cmp	w4, w13	; _128, k
	ble	L222		;,
	mov	w8, w13	; k, k
L74:
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	add	w16, w8, w5	; _1081, k, k0
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	add	x10, x2, w16, sxtw	; tmp1067, ivtmp.678, _1081
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	ldr	s22, [x23, x10, lsl 2]	;, *_1304
; inv.cpp:217:       for(; k<kb; ++k)
	add	w10, w8, 1	; k, k,
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	smaddl	x16, w20, w16, x11	; _1300, n, _1081, ivtmp.666
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	ldr	s2, [x23, x16, lsl 2]	;, *_1297
	fmsub	s22, s2, s22, s20	;,,,
; inv.cpp:217:       for(; k<kb; ++k)
	cmp	w4, w10	; _128, k
	ble	L78		;,
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	add	w10, w5, w10	; _1290, k0, k
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	add	x16, x2, w10, sxtw	; tmp1072, ivtmp.678, _1290
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	ldr	s0, [x23, x16, lsl 2]	;, *_935
; inv.cpp:217:       for(; k<kb; ++k)
	add	w8, w8, 2	; k, k,
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	smaddl	x10, w20, w10, x11	; _933, n, _1290, ivtmp.666
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	ldr	s1, [x23, x10, lsl 2]	;, *_930
	fmsub	s22, s1, s0, s22	;,,,
; inv.cpp:217:       for(; k<kb; ++k)
	cmp	w4, w8	; _128, k
	ble	L78		;,
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	add	w8, w5, w8	; _318, k0, k
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	add	x10, x2, w8, sxtw	; tmp1076, ivtmp.678, _318
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	ldr	s26, [x23, x10, lsl 2]	;, *_323
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	smaddl	x8, w20, w8, x11	; _326, n, _318, ivtmp.666
; inv.cpp:218:         s -= A[1LL*i*n + (k0+k)] * A[1LL*(k0+k)*n + j];
	ldr	s25, [x23, x8, lsl 2]	;, *_329
	fmsub	s22, s26, s25, s22	;,,,
L78:
; inv.cpp:219:       A[1LL*i*n + j] = s;
	str	s22, [x12, x11, lsl 2]	;, MEM[(float *)_779 + ivtmp.666_1179 * 4]
; inv.cpp:195:     for(int j=j0;j<n;++j){
	add	x11, x11, 1	; ivtmp.666, ivtmp.666,
	add	x25, x25, 4	; ivtmp.670, ivtmp.670,
	cmp	w20, w11	; n, ivtmp.666
	bgt	L79		;,
L76:
; inv.cpp:194:   for(int i=i0;i<n;++i){
	add	w0, w0, 1	; i, i,
; inv.cpp:194:   for(int i=i0;i<n;++i){
	add	x12, x12, x21	; ivtmp.676, ivtmp.676, _158
	add	x14, x14, x21	; ivtmp.677, ivtmp.677, _158
	add	x2, x2, x22	; ivtmp.678, ivtmp.678, n
	cmp	w20, w0	; n, i
	bgt	L71		;,
L80:
; inv.cpp:231:   for(int k0=0; k0<n; k0+=KB){
	ldr	x0, [x29, 208]	; _1717, %sfp
	add	x26, x26, 128	; ivtmp.791, ivtmp.791,
	sub	w1, w1, #128	; ivtmp.790, ivtmp.790,
	ldr	x2, [x29, 352]	; ivtmp.795, %sfp
	add	x7, x7, x0	; ivtmp.792, ivtmp.792, _1717
	ldp	x4, x0, [x29, 192]	; _1727, _1722,
	add	x2, x2, x4	; ivtmp.795, ivtmp.795, _1727
	ldr	x4, [x29, 176]	; tmp885, %sfp
	add	x30, x30, x0	; ivtmp.794, ivtmp.794, _1722
	str	x2, [x29, 352]	; ivtmp.795, %sfp
	ldr	x2, [x29, 336]	; ivtmp.797, %sfp
	add	x2, x2, x4	; ivtmp.797, ivtmp.797, tmp885
	str	x2, [x29, 336]	; ivtmp.797, %sfp
	ldr	x2, [x29, 344]	; ivtmp.801, %sfp
	add	x0, x2, x0	; ivtmp.801, ivtmp.801, _1722
	str	x0, [x29, 344]	; ivtmp.801, %sfp
	cmp	w20, w26	; n, ivtmp.791
	bgt	L72		;,
	ldr	x19, [x29, 160]	; _55, %sfp
; inv.cpp:245:   eye(Inv, n);
	mov	w1, w20	;, n
	mov	x0, x19	;, _55
	bl	__ZL3eyePfi		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	ldr	x0, [x29, 360]	;, %sfp
LEHB1:
	bl	__Znwm		;
LEHE1:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	str	wzr, [x0]	;, *_453
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	x24, x0	; _453, _453
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_algobase.h:1143:       if (__n <= 0)
	cmp	x22, 1	; n,
	beq	L83		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_algobase.h:924:       for (; __first != __last; ++__first)
	ldr	x0, [x29, 360]	; _317, %sfp
	cmp	x0, 4	; _317,
	beq	L83		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_algobase.h:925: 	*__first = __val;
	sub	x2, x0, #4	;, _317,
	mov	w1, 0	;,
	add	x0, x24, 4	;, _453,
	bl	_memset		;
L83:
	ldr	x4, [x29, 368]	; _159, %sfp
	mov	x3, x19	; ivtmp.650, _55
	mov	x2, 0	; ivtmp.648,
L82:
; inv.cpp:197:       int k=0;
	mov	x0, 0	; ivtmp.641,
L84:
; inv.cpp:98:     for(int i=0;i<n;++i) tmp[i]=B[1LL*P[i]*n + j];
	ldr	w1, [x4, x0, lsl 2]	;, MEM[(const int *)_159 + ivtmp.641_1258 * 4]
	smaddl	x1, w20, w1, x2	; _381, n, MEM[(const int *)_159 + ivtmp.641_1258 * 4], ivtmp.648
; inv.cpp:98:     for(int i=0;i<n;++i) tmp[i]=B[1LL*P[i]*n + j];
	ldr	s31, [x19, x1, lsl 2]	; *_384, *_384
	str	s31, [x24, x0, lsl 2]	; *_384, MEM[(value_type &)_453 + ivtmp.641_1258 * 4]
; inv.cpp:98:     for(int i=0;i<n;++i) tmp[i]=B[1LL*P[i]*n + j];
	add	x0, x0, 1	; ivtmp.641, ivtmp.641,
	cmp	w20, w0	; n, ivtmp.641
	bgt	L84		;,
	mov	x0, 0	; ivtmp.635,
	mov	x1, x3	; ivtmp.638, ivtmp.650
L85:
; inv.cpp:99:     for(int i=0;i<n;++i) B[1LL*i*n + j]=tmp[i];
	ldr	s31, [x24, x0, lsl 2]	; MEM[(value_type &)_453 + ivtmp.635_203 * 4], MEM[(value_type &)_453 + ivtmp.635_203 * 4]
; inv.cpp:99:     for(int i=0;i<n;++i) B[1LL*i*n + j]=tmp[i];
	add	x0, x0, 1	; ivtmp.635, ivtmp.635,
; inv.cpp:99:     for(int i=0;i<n;++i) B[1LL*i*n + j]=tmp[i];
	str	s31, [x1]	; MEM[(value_type &)_453 + ivtmp.635_203 * 4], MEM[(float *)_1260]
; inv.cpp:99:     for(int i=0;i<n;++i) B[1LL*i*n + j]=tmp[i];
	add	x1, x1, x21	; ivtmp.638, ivtmp.638, _158
	cmp	w20, w0	; n, ivtmp.635
	bgt	L85		;,
; inv.cpp:97:   for(int j=0;j<n;++j){
	add	x2, x2, 1	; ivtmp.648, ivtmp.648,
	add	x3, x3, 4	; ivtmp.650, ivtmp.650,
	cmp	w20, w2	; n, ivtmp.648
	bgt	L82		;,
	cmp	w20, 1	; n,
	beq	L122		;,
	mov	w2, 12	; tmp1093,
	add	x10, x23, x22, lsl 2	; ivtmp.628, A1, n,
	lsl	x9, x22, 3	; _440, n,
	mov	x8, x22	; ivtmp.627, n
; inv.cpp:102:   for(int i=0;i<n;++i){
	mov	w7, 1	; i,
	smull	x2, w20, w2	; _154, n, tmp1093
L95:
	mov	x3, 0	; ivtmp.617,
	mov	x5, x19	; ivtmp.621, _55
	and	w12, w7, -4	; k, i,
	lsr	w4, w7, 2	; bnd.412_915, i,
	add	x4, x10, w4, uxtw 4	; _20, ivtmp.628, bnd.412_915,
L94:
; inv.cpp:105:       float s=B[1LL*i*n + j];
	ldr	s31, [x5, x8, lsl 2]	;, MEM[(float *)_1371 + ivtmp.627_105 * 4]
	cmp	w7, 3	; i,
	ble	L134		;,
	mov	w6, w12	; niters_vector_mult_vf.413, k
L91:
; inv.cpp:102:   for(int i=0;i<n;++i){
	movi	v30.4s, 0	;
	mov	x1, x10	; ivtmp.612, ivtmp.628
	mov	x0, x5	; ivtmp.609, ivtmp.621
L88:
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	ldr	s28, [x0, x9]	; MEM[(float *)_925 + _440 * 1], MEM[(float *)_925 + _440 * 1]
	ldr	s3, [x0, x22, lsl 2]	;, MEM[(float *)_925 + _119 * 4]
	ldr	s29, [x0, x2]	; MEM[(float *)_925 + _154 * 1], MEM[(float *)_925 + _154 * 1]
	ldr	s4, [x0]	;, MEM[(float *)_925]
	add	x0, x0, x22, lsl 4	; ivtmp.609, ivtmp.609, n,
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	ldr	q2, [x1], 16	;, MEM <const vector(4) float> [(const float *)_1455]
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	uzp1	v3.2s, v3.2s, v29.2s	;,, MEM[(float *)_925 + _154 * 1]
	uzp1	v4.2s, v4.2s, v28.2s	;,, MEM[(float *)_925 + _440 * 1]
	zip1	v3.4s, v4.4s, v3.4s	;,,
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	fmls	v30.4s, v3.4s, v2.4s	;,,
	cmp	x4, x1	; _20, ivtmp.612
	bne	L88		;,
	mov	w1, w12	; k, k
	faddp	v26.4s, v30.4s, v30.4s	;,,
	faddp	v26.4s, v26.4s, v26.4s	;,,
	fadd	s26, s31, s26	;,,
	cmp	w7, w12	; i, k
	beq	L89		;,
	dup	d0, v30.d[1]	;,
	fadd	v0.2s, v0.2s, v30.2s	;,,
L87:
	sub	w11, w7, w6	; niters.422, i, niters_vector_mult_vf.413
	cmp	w11, 1	; niters.422,
	beq	L92		;,
	uxtw	x0, w6	; _844, niters_vector_mult_vf.413
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	add	x6, x8, x0	; tmp1119, ivtmp.627, _844
	madd	x0, x22, x0, x3	; _833, n, _844, ivtmp.617
	lsl	x6, x6, 2	; tmp1120, tmp1119,
	ldr	d1, [x23, x6]	;, MEM <const vector(2) float> [(const float *)vectp.427_845]
	add	x6, x19, x0, lsl 2	; _831, _55, _833,
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	ldr	s28, [x19, x0, lsl 2]	;, *_831
	ldr	s30, [x6, x22, lsl 2]	; *ivtmp_823, *ivtmp_823
	uzp1	v28.2s, v28.2s, v30.2s	;,, *ivtmp_823
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	fmls	v0.2s, v28.2s, v1.2s	;,,
	faddp	s0, v0.2s	;,
	fadd	s26, s0, s31	;,,
	tbz	x11, 0, L93	; niters.422,,
	and	w11, w11, -2	; niters_vector_mult_vf.424_848, niters.422,
	add	w1, w1, w11	; k, k, niters_vector_mult_vf.424_848
L92:
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	smaddl	x0, w20, w1, x3	; _865, n, k, ivtmp.617
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	add	x1, x8, w1, sxtw	; tmp1129, ivtmp.627, k
; inv.cpp:107:       for(int k=0;k<i;++k) s -= Li[k]*B[1LL*k*n + j];
	ldr	s29, [x23, x1, lsl 2]	;, *_869
	ldr	s27, [x19, x0, lsl 2]	;, *_862
	fmsub	s26, s27, s29, s26	;,,,
L93:
; inv.cpp:104:     for(int j=0;j<n;++j){
	add	x3, x3, 1	; ivtmp.617, ivtmp.617,
; inv.cpp:108:       B[1LL*i*n + j]=s; // diag(L)=1
	str	s26, [x5, x8, lsl 2]	;, MEM[(float *)_830 + ivtmp.627_105 * 4]
; inv.cpp:104:     for(int j=0;j<n;++j){
	add	x5, x5, 4	; ivtmp.621, ivtmp.621,
	cmp	x22, x3	; n, ivtmp.617
	bne	L94		;,
L90:
; inv.cpp:102:   for(int i=0;i<n;++i){
	add	w7, w7, 1	; i, i,
; inv.cpp:102:   for(int i=0;i<n;++i){
	add	x10, x10, x22, lsl 2	; ivtmp.628, ivtmp.628, n,
	add	x8, x8, x3	; ivtmp.627, ivtmp.627, ivtmp.617
	cmp	w20, w7	; n, i
	bne	L95		;,
L122:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	ldr	x1, [x29, 360]	;, %sfp
	mov	x0, x24	;, _453
	lsl	x21, x22, 2	; _1283, n,
	bl	__ZdlPvm		;
	ldr	w2, [x29, 380]	;, %sfp
	mov	w0, 12	; tmp1141,
	sub	x11, x22, #1	; _884, n,
	mov	x1, -4	; tmp1132,
; inv.cpp:117:     float invd = 1.0f/Ui[i];
	fmov	s25, 1.0e+0	;,
	madd	x9, x22, x21, x19	; ivtmp.592, n, _1283, _55
	ldr	x17, [x29, 312]	; ivtmp.595, %sfp
	smull	x0, w20, w0	; _752, n, tmp1141
; inv.cpp:115:   for(int i=n-1;i>=0;--i){
	mov	w4, 0	; ivtmp.582,
	mul	x7, x22, x1	; _723, n, tmp1132
	mov	w10, w20	; ivtmp.590, n
	mov	w15, 1	; ivtmp.600,
	mov	w14, -1	; ivtmp.596,
	add	x5, x23, 4	; _1234, A1,
	smull	x3, w20, w2	; _1212, n, i_461
	smaddl	x11, w20, w2, x11	; ivtmp.598, n, i_461, _884
	lsl	x2, x22, 3	; _703, n,
	add	x8, x19, x3, lsl 2	; ivtmp.591, _55, _1212,
	add	x27, x23, x3, lsl 2	; ivtmp.597, A1, _1212,
L103:
; inv.cpp:117:     float invd = 1.0f/Ui[i];
	ldr	s24, [x23, x11, lsl 2]	;, MEM[(const float *)A1_33 + ivtmp.598_406 * 4]
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	mov	x3, 0	; ivtmp.576,
	mov	x12, x9	; ivtmp.580, ivtmp.592
	and	w28, w4, 3	; _1025, ivtmp.582,
	and	w25, w4, -4	; niters_vector_mult_vf.391, ivtmp.582,
	add	x26, x5, x11, lsl 2	; _1437, _1234, ivtmp.598,
	lsr	w1, w4, 2	; bnd.390_1071, ivtmp.582,
	add	x1, x26, w1, uxtw 4	; _1197, _1437, bnd.390_1071,
; inv.cpp:117:     float invd = 1.0f/Ui[i];
	str	w4, [x29, 412]	; ivtmp.582, %sfp
	fdiv	s24, s25, s24	;,,
L102:
; inv.cpp:119:       float s=B[1LL*i*n + j];
	ldr	s23, [x8, x3, lsl 2]	;, MEM[(float *)_1064 + ivtmp.576_1195 * 4]
	cmp	w20, w10	; n, ivtmp.590
	ble	L135		;,
	cmp	w14, 2	; ivtmp.596,
	bls	L136		;,
	movi	v22.4s, 0	;
	mov	x6, x26	; ivtmp.571, _1437
	mov	x4, x12	; ivtmp.568, ivtmp.580
	.p2align 5,,15
L98:
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	ldr	s30, [x4, x2]	; MEM[(float *)_679 + _703 * 1], MEM[(float *)_679 + _703 * 1]
	ldr	s16, [x4, x22, lsl 2]	;, MEM[(float *)_679 + _119 * 4]
	ldr	s31, [x4, x0]	; MEM[(float *)_679 + _752 * 1], MEM[(float *)_679 + _752 * 1]
	ldr	s17, [x4]	;, MEM[(float *)_679]
	add	x4, x4, x22, lsl 4	; ivtmp.568, ivtmp.568, n,
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	ldr	q7, [x6], 16	;, MEM <const vector(4) float> [(const float *)_678]
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	uzp1	v16.2s, v16.2s, v31.2s	;,, MEM[(float *)_679 + _752 * 1]
	uzp1	v17.2s, v17.2s, v30.2s	;,, MEM[(float *)_679 + _703 * 1]
	zip1	v16.4s, v17.4s, v16.4s	;,,
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	fmls	v22.4s, v16.4s, v7.4s	;,,
	cmp	x6, x1	; ivtmp.571, _1197
	bne	L98		;,
	faddp	v18.4s, v22.4s, v22.4s	;,,
	faddp	v18.4s, v18.4s, v18.4s	;,,
	fadd	s18, s23, s18	;,,
	cbz	w28, L96	; _1025,
	dup	d5, v22.d[1]	;,
	uxtw	x30, w25	;, niters_vector_mult_vf.391
	add	w16, w25, w10	; tmp.392, niters_vector_mult_vf.391, ivtmp.590
	fadd	v5.2s, v5.2s, v22.2s	;,,
L97:
	sub	w13, w15, w30	; _1020, ivtmp.600, niters_vector_mult_vf.391
	cmp	w13, 2	; _1020,
	beq	L100		;,
	add	x4, x17, x3	; _420, ivtmp.595, ivtmp.576
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	add	x6, x11, x30	; tmp1173, ivtmp.598, _987
	add	x6, x23, x6, lsl 2	; tmp1175, A1, tmp1173,
	sub	w24, w13, #1	; niters.400, _1020,
	madd	x4, x22, x30, x4	; _972, n, _987, _420
	ldr	d6, [x6, 4]	;, MEM <const vector(2) float> [(const float *)vectp.405_991]
	add	x30, x19, x4, lsl 2	; _970, _55, _972,
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	ldr	s20, [x19, x4, lsl 2]	;, *_970
	ldr	s31, [x30, x21]	; *ivtmp_962, *ivtmp_962
	uzp1	v20.2s, v20.2s, v31.2s	;,, *ivtmp_962
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	fmls	v5.2s, v20.2s, v6.2s	;,,
	faddp	s5, v5.2s	;,
	fadd	s18, s5, s23	;,,
	tbnz	x13, 0, L96	; _1020,,
	and	w24, w24, -2	; niters_vector_mult_vf.402_994, niters.400,
	add	w16, w16, w24	; tmp.392, tmp.392, niters_vector_mult_vf.402_994
L100:
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	smaddl	x4, w20, w16, x3	; _1011, n, tmp.392, ivtmp.576
; inv.cpp:121:       for(int k=i+1;k<n;++k) s -= Ui[k]*B[1LL*k*n + j];
	ldr	s21, [x27, w16, uxtw 2]	;, *_1015
	ldr	s19, [x19, x4, lsl 2]	;, *_1008
	fmsub	s18, s19, s21, s18	;,,,
L96:
; inv.cpp:122:       B[1LL*i*n + j]=s*invd;
	fmul	s18, s24, s18	;,,
; inv.cpp:118:     for(int j=0;j<n;++j){
	add	x12, x12, 4	; ivtmp.580, ivtmp.580,
; inv.cpp:122:       B[1LL*i*n + j]=s*invd;
	str	s18, [x8, x3, lsl 2]	;, MEM[(float *)_1064 + ivtmp.576_1195 * 4]
; inv.cpp:118:     for(int j=0;j<n;++j){
	add	x3, x3, 1	; ivtmp.576, ivtmp.576,
	cmp	w20, w3	; n, ivtmp.576
	bgt	L102		;,
	ldr	w4, [x29, 412]	;, %sfp
	sub	x11, x11, x22	; _1383, ivtmp.598, n
; inv.cpp:115:   for(int i=n-1;i>=0;--i){
	sub	w10, w10, #1	; ivtmp.590, ivtmp.590,
	sub	x11, x11, #1	; ivtmp.598, _1383,
	add	x8, x8, x7	; ivtmp.591, ivtmp.591, _723
	add	x9, x9, x7	; ivtmp.592, ivtmp.592, _723
	sub	x17, x17, x22	; ivtmp.595, ivtmp.595, n
	add	w14, w14, 1	; ivtmp.596, ivtmp.596,
	add	x27, x27, x7	; ivtmp.597, ivtmp.597, _723
	add	w15, w15, 1	; ivtmp.600, ivtmp.600,
	add	w4, w4, 1	; ivtmp.582, ivtmp.582,
	cmp	w4, w20	; ivtmp.582, n
	bne	L103		;,
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/chrono.h:218: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d15, d15	;, SR.123
	mov	w21, 1	; _1743,
	b	L120		;
	.p2align 2,,3
L222:
; inv.cpp:219:       A[1LL*i*n + j] = s;
	str	s20, [x12, x11, lsl 2]	;, MEM[(float *)_1754 + ivtmp.666_542 * 4]
; inv.cpp:195:     for(int j=j0;j<n;++j){
	add	x11, x11, 1	; ivtmp.666, ivtmp.666,
	cmp	w20, w11	; n, ivtmp.666
	ble	L76		;,
; inv.cpp:196:       float s = A[1LL*i*n + j];
	ldr	s20, [x12, x11, lsl 2]	;, MEM[(float *)_529 + ivtmp.666_1558 * 4]
; inv.cpp:195:     for(int j=j0;j<n;++j){
	add	x25, x25, 4	; ivtmp.670, ivtmp.670,
	b	L77		;
	.p2align 2,,3
L131:
; inv.cpp:197:       int k=0;
	mov	w8, 0	; k,
	b	L74		;
L63:
; inv.cpp:166:       A[1LL*i*n + j] = s; // теперь это U[i,j]
	str	s24, [x13, x1, lsl 2]	;, MEM[(float *)_1540 + ivtmp.695_1536 * 4]
; inv.cpp:160:     for (int j = j0; j < n; ++j){
	add	x1, x1, 1	; ivtmp.695, ivtmp.695,
	cmp	w20, w1	; n, ivtmp.695
	ble	L208		;,
; inv.cpp:161:       float s = A[1LL*i*n + j];
	ldr	s21, [x13, x1, lsl 2]	;, MEM[(float *)_459 + ivtmp.695_1349 * 4]
; inv.cpp:160:     for (int j = j0; j < n; ++j){
	add	x9, x9, 4	; ivtmp.698, ivtmp.698,
	b	L65		;
L138:
LCFI20:
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	movi	v28.2s, #0	;
; inv.cpp:61:     float s=0; for(int k=0;k<n;++k) s += A[1LL*i*n+k]*B[1LL*k*n+j];
	mov	w1, 0	; k,
	b	L113		;
L41:
LCFI21:
	ldr	x4, [x29, 136]	; _1699, %sfp
	sub	x27, x27, x16	; _1592, _200, ivtmp.776
	add	x0, x23, x25	; ivtmp.745, A1, ivtmp.782
	add	x4, x25, x4	; _1700, ivtmp.782, _1699
	.p2align 5,,15
L44:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	ldr	s30, [x0, x27, lsl 2]	; _1416, MEM[(type &)_1587 + _1592 * 4]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:235:       _Tp __tmp = _GLIBCXX_MOVE(__a);
	ldr	s31, [x0]	; _1415, MEM[(type &)_1587]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:236:       __a = _GLIBCXX_MOVE(__b);
	str	s30, [x0]	; _1416, MEM[(float &)_1587]
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/move.h:237:       __b = _GLIBCXX_MOVE(__tmp);
	str	s31, [x0, x27, lsl 2]	; _1415, MEM[(float &)_1587 + _1592 * 4]
; inv.cpp:137:       for(int j=0;j<n;++j) swap(A[1LL*k*n+j], A[1LL*p*n+j]);
	add	x0, x0, 4	; ivtmp.745, ivtmp.745,
	cmp	x0, x4	; ivtmp.745, _1700
	bne	L44		;,
	b	L45		;
L130:
; inv.cpp:161:       float s = A[1LL*i*n + j];
	fmov	s24, s21	;,
	movi	v18.2s, 0	;
	mov	w6, w5	; tmp.436, k0
	mov	x4, 0	;,
	b	L61		;
L135:
; inv.cpp:119:       float s=B[1LL*i*n + j];
	fmov	s18, s23	;,
	b	L96		;
L136:
	fmov	s18, s23	;,
	movi	v5.2s, 0	;
	mov	w16, w10	; tmp.392, ivtmp.590
	mov	x30, 0	;,
	b	L97		;
L89:
; inv.cpp:104:     for(int j=0;j<n;++j){
	add	x3, x3, 1	; ivtmp.617, ivtmp.617,
; inv.cpp:108:       B[1LL*i*n + j]=s; // diag(L)=1
	str	s26, [x5, x8, lsl 2]	;, MEM[(float *)_1180 + ivtmp.627_105 * 4]
; inv.cpp:104:     for(int j=0;j<n;++j){
	cmp	x22, x3	; n, ivtmp.617
	beq	L90		;,
	add	x5, x5, 4	; ivtmp.621, ivtmp.621,
; inv.cpp:105:       float s=B[1LL*i*n + j];
	ldr	s31, [x5, x8, lsl 2]	;, MEM[(float *)_1552 + ivtmp.627_105 * 4]
	b	L91		;
L221:
	add	w10, w10, 1	; ivtmp.709, ivtmp.709,
	b	L69		;
L134:
	fmov	s26, s31	;,
	movi	v0.2s, 0	;
	mov	w6, 0	; niters_vector_mult_vf.413,
	mov	w1, 0	; k,
	b	L87		;
L35:
; inv.cpp:158:   if (j0 >= n) return;
	cmp	w20, w0	; n, i
	bgt	L59		;,
	b	L80		;
L217:
LCFI22:
; inv.cpp:245:   eye(Inv, n);
	mov	w1, 0	;,
	mov	x0, x19	;, _55
	bl	__ZL3eyePfi		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/chrono.h:218: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	scvtf	d15, d15	;, SR.123
; inv.cpp:248:   return true;
	mov	w21, 1	; _1743,
	b	L30		;
L126:
LCFI23:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	ldr	x2, [x29, 368]	; tmp.501, %sfp
	mov	w1, 0	; tmp.500,
	b	L32		;
L125:
	mov	x1, 4	; _317,
	str	x1, [x29, 360]	; _317, %sfp
	b	L31		;
L139:
LCFI24:
; inv.cpp:55:   long long N=1LL*n*n; long double s=0;
	movi	d31, #0	;
; inv.cpp:56:   for (long long i=0;i<N;++i){ long double v=A[i]; s+=v*v; }
	mov	x0, 0	; i,
	b	L117		;
L137:
; inv.cpp:55:   long long N=1LL*n*n; long double s=0;
	movi	d31, #0	;
	b	L104		;
L216:
LCFI25:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:2211: 	  __throw_length_error(
	adrp	x0, lC4@PAGE	; tmp862,
	stp	x25, x26, [x29, 64]	;,,
LCFI26:
	add	x0, x0, lC4@PAGEOFF;	;, tmp862,
	stp	x27, x28, [x29, 80]	;,,
LCFI27:
	stp	d13, d14, [x29, 96]	;,,
LCFI28:
LEHB2:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/stl_vector.h:2211: 	  __throw_length_error(
	bl	__ZSt20__throw_length_errorPKc		;
L140:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	x19, x0	; tmp1364,
	ldp	x1, x0, [x29, 360]	;,,
	bl	__ZdlPvm		;
	mov	x0, x19	;, tmp1364
	bl	__Unwind_Resume		;
LEHE2:
LFE10626:
	.section __TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table0:
LLSDA10626:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE10626-LLSDACSB10626
LLSDACSB10626:
	.uleb128 LEHB0-LFB10626
	.uleb128 LEHE0-LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 LEHB1-LFB10626
	.uleb128 LEHE1-LEHB1
	.uleb128 L140-LFB10626
	.uleb128 0
	.uleb128 LEHB2-LFB10626
	.uleb128 LEHE2-LEHB2
	.uleb128 0
	.uleb128 0
LLSDACSE10626:
	.section __TEXT,__text_startup,regular,pure_instructions
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.align	2
	.p2align 5,,15
__GLOBAL__sub_I_inv.cpp:
LFB13085:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x1, __ZStL8__ioinit@PAGE	; tmp102,
; inv.cpp:318: }
	stp	x29, x30, [sp, -32]!	;,,,
LCFI29:
	mov	x29, sp	;,
LCFI30:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	add	x1, x1, __ZStL8__ioinit@PAGEOFF;	; tmp101, tmp102,
; inv.cpp:318: }
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	mov	x0, x1	;, tmp101
	str	x1, [x29, 24]	; tmp101, %sfp
	bl	__ZNSt8ios_base4InitC1Ev		;
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x2, ___dso_handle@PAGE	; tmp104,
	ldr	x1, [x29, 24]	; tmp101, %sfp
; inv.cpp:318: }
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	add	x2, x2, ___dso_handle@PAGEOFF;	;, tmp104,
; inv.cpp:318: }
	ldp	x29, x30, [sp], 32	;,,,
LCFI31:
; /opt/homebrew/Cellar/gcc/15.2.0/include/c++/15/iostream:82:   static ios_base::Init __ioinit;
	adrp	x0, __ZNSt8ios_base4InitD1Ev@GOTPAGE	;,
	ldr	x0, [x0, __ZNSt8ios_base4InitD1Ev@GOTPAGEOFF]	;,
	b	___cxa_atexit		;
LFE13085:
	.zerofill __DATA,__bss,__ZStL8__ioinit,1,0
	.literal16
	.align	4
lC0:
	.word	-1727483681
	.word	-1727483681
	.word	-1727483681
	.word	-1727483681
	.const
	.align	3
lC1:
	.word	-1727483681
	.word	-1727483681
	.literal16
	.align	4
lC8:
	.word	0
	.word	1
	.word	2
	.word	3
	.literal8
	.align	3
lC9:
	.word	-400107883
	.word	1041313291
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x3
	.ascii "zPLR\0"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x1e
	.uleb128 0x7
	.byte	0x9b
L_got_pcr0:
	.long	___gxx_personality_v0@GOT-L_got_pcr0
	.byte	0x10
	.byte	0x10
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB10595-.
	.set L$set$2,LFE10595-LFB10595
	.quad L$set$2
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB10595
	.long L$set$3
	.byte	0xe
	.uleb128 0x9d0
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.uleb128 0
	.align	3
LEFDE1:
LSFDE3:
	.set L$set$5,LEFDE3-LASFDE3
	.long L$set$5
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB10596-.
	.set L$set$6,LFE10596-LFB10596
	.quad L$set$6
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$7,LCFI2-LFB10596
	.long L$set$7
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$9,LCFI4-LCFI3
	.long L$set$9
	.byte	0x93
	.uleb128 0x2
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
	.byte	0xde
	.byte	0xdd
	.byte	0xd3
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE3:
LSFDE5:
	.set L$set$11,LEFDE5-LASFDE5
	.long L$set$11
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB10626-.
	.set L$set$12,LFE10626-LFB10626
	.quad L$set$12
	.uleb128 0x8
	.quad	LLSDA10626-.
	.byte	0x4
	.set L$set$13,LCFI6-LFB10626
	.long L$set$13
	.byte	0xe
	.uleb128 0x1b0
	.byte	0x9d
	.uleb128 0x36
	.byte	0x9e
	.uleb128 0x35
	.byte	0x4
	.set L$set$14,LCFI7-LCFI6
	.long L$set$14
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$15,LCFI8-LCFI7
	.long L$set$15
	.byte	0x95
	.uleb128 0x32
	.byte	0x96
	.uleb128 0x31
	.byte	0x4
	.set L$set$16,LCFI9-LCFI8
	.long L$set$16
	.byte	0x93
	.uleb128 0x34
	.byte	0x94
	.uleb128 0x33
	.byte	0x4
	.set L$set$17,LCFI10-LCFI9
	.long L$set$17
	.byte	0x97
	.uleb128 0x30
	.byte	0x98
	.uleb128 0x2f
	.byte	0x5
	.uleb128 0x4f
	.uleb128 0x28
	.byte	0x4
	.set L$set$18,LCFI11-LCFI10
	.long L$set$18
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x2a
	.byte	0x4
	.set L$set$19,LCFI12-LCFI11
	.long L$set$19
	.byte	0x9a
	.uleb128 0x2d
	.byte	0x99
	.uleb128 0x2e
	.byte	0x4
	.set L$set$20,LCFI13-LCFI12
	.long L$set$20
	.byte	0x9c
	.uleb128 0x2b
	.byte	0x9b
	.uleb128 0x2c
	.byte	0x4
	.set L$set$21,LCFI14-LCFI13
	.long L$set$21
	.byte	0xda
	.byte	0xd9
	.byte	0x4
	.set L$set$22,LCFI15-LCFI14
	.long L$set$22
	.byte	0xdc
	.byte	0xdb
	.byte	0x4
	.set L$set$23,LCFI16-LCFI15
	.long L$set$23
	.byte	0xa
	.byte	0x6
	.uleb128 0x4e
	.byte	0x6
	.uleb128 0x4d
	.byte	0x4
	.set L$set$24,LCFI17-LCFI16
	.long L$set$24
	.byte	0xde
	.byte	0xdd
	.byte	0xd7
	.byte	0xd8
	.byte	0xd5
	.byte	0xd6
	.byte	0xd3
	.byte	0xd4
	.byte	0x6
	.uleb128 0x4f
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.byte	0x4
	.set L$set$25,LCFI18-LCFI17
	.long L$set$25
	.byte	0xb
	.byte	0x4
	.set L$set$26,LCFI19-LCFI18
	.long L$set$26
	.byte	0x99
	.uleb128 0x2e
	.byte	0x9a
	.uleb128 0x2d
	.byte	0x9b
	.uleb128 0x2c
	.byte	0x9c
	.uleb128 0x2b
	.byte	0x4
	.set L$set$27,LCFI20-LCFI19
	.long L$set$27
	.byte	0xd9
	.byte	0xda
	.byte	0xdb
	.byte	0xdc
	.byte	0x4
	.set L$set$28,LCFI21-LCFI20
	.long L$set$28
	.byte	0x99
	.uleb128 0x2e
	.byte	0x9a
	.uleb128 0x2d
	.byte	0x9b
	.uleb128 0x2c
	.byte	0x9c
	.uleb128 0x2b
	.byte	0x4
	.set L$set$29,LCFI22-LCFI21
	.long L$set$29
	.byte	0xd9
	.byte	0xda
	.byte	0xdb
	.byte	0xdc
	.byte	0x4
	.set L$set$30,LCFI23-LCFI22
	.long L$set$30
	.byte	0x99
	.uleb128 0x2e
	.byte	0x9a
	.uleb128 0x2d
	.byte	0x9b
	.uleb128 0x2c
	.byte	0x9c
	.uleb128 0x2b
	.byte	0x4
	.set L$set$31,LCFI24-LCFI23
	.long L$set$31
	.byte	0xd9
	.byte	0xda
	.byte	0xdb
	.byte	0xdc
	.byte	0x4
	.set L$set$32,LCFI25-LCFI24
	.long L$set$32
	.byte	0x6
	.uleb128 0x4d
	.byte	0x6
	.uleb128 0x4e
	.byte	0x4
	.set L$set$33,LCFI26-LCFI25
	.long L$set$33
	.byte	0x9a
	.uleb128 0x2d
	.byte	0x99
	.uleb128 0x2e
	.byte	0x4
	.set L$set$34,LCFI27-LCFI26
	.long L$set$34
	.byte	0x9c
	.uleb128 0x2b
	.byte	0x9b
	.uleb128 0x2c
	.byte	0x4
	.set L$set$35,LCFI28-LCFI27
	.long L$set$35
	.byte	0x5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0x5
	.uleb128 0x4d
	.uleb128 0x2a
	.align	3
LEFDE5:
LSFDE7:
	.set L$set$36,LEFDE7-LASFDE7
	.long L$set$36
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB13085-.
	.set L$set$37,LFE13085-LFB13085
	.quad L$set$37
	.uleb128 0x8
	.quad	0
	.byte	0x4
	.set L$set$38,LCFI29-LFB13085
	.long L$set$38
	.byte	0xe
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x4
	.byte	0x9e
	.uleb128 0x3
	.byte	0x4
	.set L$set$39,LCFI30-LCFI29
	.long L$set$39
	.byte	0xd
	.uleb128 0x1d
	.byte	0x4
	.set L$set$40,LCFI31-LCFI30
	.long L$set$40
	.byte	0xde
	.byte	0xdd
	.byte	0xc
	.uleb128 0x1f
	.uleb128 0
	.align	3
LEFDE7:
	.private_extern ___dso_handle
	.ident	"GCC: (Homebrew GCC 15.2.0) 15.2.0"
	.mod_init_func
_Mod.init:
	.align	3
	.xword	__GLOBAL__sub_I_inv.cpp
	.subsections_via_symbols
