# callgrind format
version: 1
creator: callgrind-3.19.0
pid: 7999
cmd:  ./hashmap
part: 1


desc: I1 cache: 
desc: D1 cache: 
desc: LL cache: 

desc: Timerange: Basic block 0 - 31578127
desc: Trigger: Program termination

positions: line
events: Ir
summary: 144913619


ob=(3) /usr/lib/x86_64-linux-gnu/libc.so.6
fl=(110) ./wcsmbs/../sysdeps/x86_64/multiarch/wmemset.c
fn=(350) wmemset
31 2
fi=(111) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-wmemset.h
+2 10
+1 6
+2 4
+8 6
+3 8
fe=(110)
-16 2

fl=(115) ./string/../sysdeps/x86_64/multiarch/strcasecmp_l.c
fn=(366) strcasecmp_l
31 1
fi=(211) ./string/../sysdeps/x86_64/multiarch/ifunc-strcasecmp.h
+1 5
fe=(115)
-1 1

fl=(155) ./setjmp/../sysdeps/x86_64/setjmp.S
fn=(520) __sigsetjmp
30 1
+2 1
+9 1
+1 2
+1 1
+4 1
+1 1
+1 1
+1 1
+1 1
+2 2
+2 1
+1 1
+1 1
+2 2
+2 1
+5 1
+1 1
+17 1
cfi=(156) ./setjmp/./setjmp/sigjmp.c
cfn=(522) __sigjmp_save
calls=1 -56 
* 9

fl=(164) ./libio/./libio/filedoalloc.c
fn=(544) _IO_file_doallocate
78 45
+6 20
fi=(173) ./libio/./libio/libioP.h
940 15
+2 10
+1 10
fe=(164)
84 15
cfi=(162) ./libio/./libio/fileops.c
cfn=(546) _IO_file_stat
calls=5 1146 
* 90
* 10
+2 20
+11 20
+4 10
cob=(2) ???
cfi=(50) ???
cfn=(552) 0x0000000004883380
calls=5 0 
* 2570
* 5
+1 10
+2 20
cfi=(163) ./libio/./libio/genops.c
cfn=(578) _IO_setb
calls=5 329 
* 120
+1 5
+1 40
-15 2
fi=(212) ./libio/../include/sys/sysmacros.h
-44 12
fe=(164)
+44 2
-2 4
+5 4

fl=(169) ./stdlib/../sysdeps/unix/sysv/linux/getrandom.c
fn=(560) getrandom
28 1
+1 7
+1 1

fl=(176) ./stdio-common/./stdio-common/vfscanf-internal.c
fn=(596) __vfscanf_internal
278 13
+10 5
+1 1
fi=(178) ./stdio-common/../include/scratch_buffer.h
78 1
fe=(176)
289 1
fi=(178)
77 2
fe=(176)
339 1
fi=(178)
77 1
fe=(176)
339 4
+6 4
+3 4
+4 2
+13 1
-6 1
+8 2
-8 1
+8 1
+5 1
-5 1
+5 6
cfi=(161) ./nptl/./nptl/libc-cleanup.c
cfn=(536) __libc_cleanup_push_defer
calls=1 24 
* 10
* 3
+9 1
-4 1
+4 3
570 1
284 1
-1 1
+10 1
-11 1
570 2
2429 4
328 2
+4 1
-5 1
-1 1
-1 1
-12 1
2180 1
2429 1
2180 5
418 4
+24 4
+1 4
+3 5
-65 8
3015 5
222 2
+1 2
-1 1
488 1
222 1
488 2
222 1
488 2
372 11
482 1
+22 4
+25 1
-4 4
+7 10
+80 2
+5 1
-1 2
+1 2
+4 3
+1 8
+6 3
+3 2
-3 1
+3 4
-3 2
+4 7
+1 5
+4 2
-4 2
cfi=(163)
cfn=(612) _IO_sputbackc
calls=1 +2 
* 19
+4 8
-9 2
cfi=(163)
cfn=(598) __uflow
calls=1 299 
* 567
* 2
3025 13
cfi=(161)
cfn=(590) __libc_cleanup_pop_restore
calls=1 39 
* 8
fi=(178)
85 3
fe=(176)
3029 2
+17 2
+6 12
442 1
+6 2
637 1
+62 5
+3 5
+35 6
+3 9
+59 4
+4 6
+36 2
-2 2
+2 3
+15 1
-3 1
+3 1
-1 2
737 14

fl=(187) ./io/../sysdeps/unix/sysv/linux/open64.c
fn=(660) open
30 6
+3 3
-3 24
+3 18
+8 30
+2 21

fl=(209) ./io/../sysdeps/unix/sysv/linux/lseek64.c
fn=(848) lseek
28 1
+8 8
+2 1

fl=(84) ./string/../sysdeps/x86_64/multiarch/strcmp.c
fn=(288) strcmp
65 2
-24 4
+1 2
-1 4
+1 4
+2 4
+5 6
+3 6
+13 2

fl=(102) ./string/../sysdeps/x86_64/multiarch/strncmp.c
fn=(332) strncmp
66 1
-25 4
+1 3
+2 2
+5 3
+3 3
+14 1

fl=(190) ./misc/../sysdeps/unix/sysv/linux/mmap64.c
fn=(674) mmap
47 6
+3 6
+8 12
+2 3

fl=(112) ./string/../sysdeps/x86_64/multiarch/memrchr.c
fn=(354) memrchr
29 1
fi=(82) ./string/../sysdeps/x86_64/multiarch/ifunc-avx2.h
+4 5
-1 2
+2 3
+2 2
+4 3
+3 4
fe=(112)
-14 1

fl=(124) ./string/../sysdeps/x86_64/multiarch/mempcpy.c
fn=(390) mempcpy
33 1
fi=(91) ./string/../sysdeps/x86_64/multiarch/ifunc-memmove.h
+20 3
-1 2
+4 3
+14 2
+2 2
+8 2
+8 2
+2 5
fe=(124)

fl=(136) ./elf/./elf/libc_early_init.c
fn=(432) __libc_early_init
33 7
+2 1
cfi=(137) ./ctype/./ctype/ctype-info.c
cfn=(434) __ctype_init
calls=1 -6 
* 17
+3 1
fi=(139) ./elf/../sysdeps/nptl/pthread_early_init.h
-5 2
fe=(136)
+8 1
-3 1
fi=(139)
-5 1
cfi=(138) ./resource/../sysdeps/unix/sysv/linux/getrlimit64.c
cfn=(436) getrlimit
calls=1 +5 
* 10
* 3
+1 6
+11 1
fi=(213) ./elf/../nptl/nptl-stack.h
+13 3
fi=(139)
-13 1
fi=(213)
+13 2
fi=(139)
-4 1
fi=(213)
+4 2
fi=(139)
-6 1
fi=(213)
+6 1
fi=(139)
-12 1
+6 6
+1 1
+4 1
cfi=(140) ./nptl/./nptl/pthread_mutex_conf.c
cfn=(440) __pthread_tunables_init
calls=1 -7 
* 884
fe=(136)
-10 3
+2 2
-2 1
cfi=(143) ./nptl/../sysdeps/unix/sysv/linux/x86/elision-conf.c
cfn=(454) __lll_elision_init
calls=1 +49 
* 147

fl=(191) ./libio/./libio/iofread.c
fn=(680) fread
31 15
+1 3
-1 3
+1 3
-1 6
+4 6
+2 51
+1 12
cfi=(163)
cfn=(682) _IO_sgetn
calls=3 409 
* 2098
fi=(173)
883 6
+1 30
fe=(191)
40 6
+1 27
-1 6

fl=(172) ./misc/../sysdeps/unix/sysv/linux/brk.c
fn=(576) brk
35 41
+1 164
+1 82
+6 41
+1 41

fl=(204) ./nptl/./nptl/pthread_mutex_lock.c
fn=(784) pthread_mutex_lock@@GLIBC_2.2.5
77 1
+3 3
+2 1
+2 2
-7 2
+11 2
+79 1
+3 1
+2 1
+3 1
+2 1
+1 3
-81 2
+11 4
+4 1
+3 2
-71 1
+1 8
+1 1
+84 3
+1 2

fl=(79) ./string/../sysdeps/x86/cacheinfo.c
fn=(278) __x86_cacheinfo
86 1
fi=(80) ./string/../sysdeps/x86/cacheinfo.h
-25 1
+3 3
+2 1
+1 1
-1 2
+7 3
+2 1
+1 1
-1 2
+5 2
+2 2
+1 2
+1 2
+2 2
fe=(79)
* 2

fl=(160) ./string/../sysdeps/x86_64/multiarch/strchr-avx2.S
fn=(534) __strchrnul_avx2
51 5
+2 5
+1 5
+1 5
+1 5
+1 5
+3 5
+1 5
+4 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 3
+6 3
+1 6
+27 1
+1 1
+6 1
+1 2
+4 1
+1 1
+6 1
+1 2
+19 2
+4 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1

fn=(666) __strchr_avx2
51 327803
+2 327803
+1 327803
+1 327803
+1 327803
+1 327803
+3 327803
+1 327803
+4 325299
+1 325299
+1 325299
+1 325299
+1 325299
+1 325299
+1 325299
+1 279800
+3 279800
+1 279800
+2 279797
+1 559594
+8 1013
+1 1013
+3 1013
+1 1013
+2 1013
+1 2026
+4 3
+1 6
+6 26878
+1 26878
+3 26878
+1 26878
+2 26878
+1 53756
+4 14537
+1 14537
+3 14537
+1 14537
+2 14537
+1 29074
+4 2837
+1 2837
+3 2837
+1 2837
+2 2837
+1 5674
+7 45499
+4 45499
+1 45499
+1 45499
+1 45499
+1 45499
+1 45499
+1 45499
-6 1357
+1 1357
+1 1357
+1 1357
+1 1357
+1 1357
+1 1357
+2 19978
+1 19978
+1 19978
+1 19978
+1 19978
+1 19978
+1 19978
+2 5441
+1 5441
+1 5441
+1 5441
+1 5441
+1 5441
+1 5441
+2 2604
+1 2604
+1 2604
+1 2604
+1 2604
+1 2604
+1 2604
+2 1591
+1 3182
+4 1591
+1 1591
+1 1591
+1 1591
+3 1591
+1 1591
+1 1591
+1 1591
+2 1591
+1 1591
+1 1591
+1 1591
+2 1591
+1 1591
+2 1591
+2 1591
+1 1591
+1 1591
+1 1591
+1 1591
-25 1414
+1 1414
+1 1414
+1 1414
+3 1414
+1 1414
+1 1414
+1 1414
+2 1414
+1 1414
+1 1414
+1 1414
+2 1414
+1 1414
+2 1414
+2 1414
+1 1414
+1 1414
+1 1414
+1 1414
+3 1591
+1 1591
+1 1591
+1 1591
+3 1197
+1 1197
+1 1197
+1 1197
+2 806
+1 806
+3 806
+1 806
+1 806
+1 806
+3 806
+1 806
+2 806
+1 1612
+5 394
+1 394
+3 394
+1 394
+2 394
+1 788
+10 391
+1 391
+3 391
+1 391
+2 391
+1 782
+6 2504
+2 2504
+1 2504
+1 2504
+1 2504
+1 2504
+1 2504
+3 2504
+1 2504
+1 2504
+1 1147
+2 1147
+2 1147
+1 1147
+1 1147
+5 2294

fl=(113) ./string/../sysdeps/x86_64/multiarch/strchrnul.c
fn=(358) strchrnul
31 1
fi=(82)
+2 5
-1 2
+2 3
+2 2
+4 3
+3 4
fe=(113)
-12 1

fl=(106) ./string/../sysdeps/x86_64/multiarch/strcat.c
fn=(340) strcat
29 1
fi=(99) ./string/../sysdeps/x86_64/multiarch/ifunc-strcpy.h
+7 2
+1 1
-1 2
+1 2
+2 2
+4 3
+3 3
fe=(106)
-17 1

fl=(200) ./misc/../sysdeps/unix/syscall-template.S
fn=(768) munmap
117 15
+5 3

fl=(152) ./stdlib/./stdlib/cxa_atexit.c
fn=(496) __cxa_atexit
69 9
-28 2
+2 6
+1 2
cfn=(498) __new_exitfn
calls=1 +38 
* 32
+2 2
+10 1
+2 1
-5 3
+3 1
-1 1
+4 2
+1 1
-1 2
+12 6

fn=(498)
82 1
+6 2
-6 4
+11 4
-10 2
+12 4
-2 1
+10 1
-10 3
+45 1
+5 1
-4 1
+4 4
-18 1
-1 1
+1 1

fl=(161)
fn=(536)
24 13
+3 26
+3 52
+1 13
+2 13
+1 13

fn=(590)
39 13
+3 26
+2 26
+1 26
+2 13

fl=(195) ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S
fn=(730) __strlen_avx2
50 463900
+13 463900
+1 463900
+1 463900
+3 463900
+2 463900
+1 463900
+3 462648
+1 462648
+8 462648
+1 462648
+1 451363
+5 902726
+26 7836
+13 7836
+1 7836
+1 7836
+6 15672
+4 3502
+13 3502
+1 3502
+1 3502
+6 7004
+4 442
+13 442
+1 442
+1 442
+6 884
+4 77
+13 77
+1 77
+1 77
+6 154
+7 11285
+15 11285
+6 11285
+1 11285
+1 11285
-8 580
+6 580
+1 580
+1 580
+2 4029
+1 4029
+1 4029
+1 4029
+2 527
+1 527
+1 527
+1 527
+2 85
+1 85
+1 85
+1 85
+18 8
+1 16
+14 8
+1 8
+1 8
+1 8
+2 8
+1 8
+1 8
+2 8
+1 8
+1 8
-11 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+2 1
+1 1
+1 1
+3 8
+1 8
+1 8
+1 8
+1 8
+2 3
+1 3
+1 3
+1 3
+3 3
+1 3
+3 3
+1 3
+1 3
+1 3
+1 3
+5 6
+50 5
+1 5
+1 5
+5 10
509 1252
+1 1252
+1 1252
+3 1252
+15 1252
+1 1252
+1 672
+7 1344

fl=(186) ./libio/./libio/iofopen.c
fn=(646) fopen@@GLIBC_2.2.5
85 18
-20 3
+20 6
-20 3
cob=(2)
cfi=(50)
cfn=(552)
calls=3 -65 
* 275
+2 9
+3 3
+2 6
-2 3
+2 15
cfi=(163)
cfn=(648) _IO_no_init
calls=3 563 
* 165
+1 3
+1 3
-1 3
+1 3
cfi=(162)
cfn=(652) _IO_new_file_init_internal
calls=3 +32 
* 339
+1 15
cfi=(162)
cfn=(656) _IO_file_fopen@@GLIBC_2.2.5
calls=3 213 
* 612
* 6
-38 6
+50 21

fl=(193) ./io/../sysdeps/unix/sysv/linux/close_nocancel.c
fn=(706) __close_nocancel
25 3
+1 12
+1 3

fl=(198) ./string/../sysdeps/x86_64/multiarch/strcpy-avx2.S
fn=(750) __strncpy_avx2
53 1
+2 1
+1 1
+1 1
+2 1
+2 1
+5 1
+2 1
+1 1
+1 1
304 1
+1 1
+1 1
+1 1
+6 1
+2 1
+2 1
+1 1
+33 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
609 1
+1 1
+1 1
+1 1
+5 1
+1 1
+1 1
+1 1
798 1
+1 1
+1 2
+25 1
+1 1
+1 1
+2 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+3 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+3 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+14 1
+1 1
+1 1
+1 1

fl=(143)
fn=(454)
96 2
+5 1
-5 1
+5 1
-5 3
+5 3
cob=(2)
cfi=(50)
cfn=(442) 0x0000000004883650
calls=1 0 
* 22
+2 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 22
+2 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 22
+2 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 22
+2 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 22
+4 3
+1 1
+1 6

fl=(184) ./string/../sysdeps/x86_64/multiarch/memmove-vec-unaligned-erms.S
fn=(638) __mempcpy_avx_unaligned_erms
294 5
+1 5
+1 5
+1 5
+17 5
+1 5
+2 1
+1 1
+1 1
+3 1
+1 1
+1 1
+3 2
+30 4
+1 4
+2 2
+1 2
+2 2
+4 2
+1 1
+1 1
+1 1
+1 1
+4 1
+2 1
+6 1
+1 1
+1 1
+1 1
+1 1
+7 2
+1 2
+1 2
+1 2
+2 2

fn=(640) __memcpy_avx_unaligned_erms
307 3
+1 3
+6 3
+1 3
+2 3
+1 3
+1 3
438 3
+1 3
+5 3
+1 3
+2 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 2
+4 2
+1 2
+4 2
+2 2
+4 2
+1 2
+11 2
+3 2
+2 2
+2 2
+4 2
+1 2
+9 2
+1 2
+2 2
+2 2
+1 2
+1 2
+3 2
+2 2
+2 2
+2 4
+6 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
-11 17
+1 17
+1 17
+1 17
+1 17
+1 17
+1 17
+1 17
+1 17
+1 17
+1 17
+1 17
+2 2
+1 2
+1 2
+1 2
+2 2
+4 4

fl=(140)
fn=(440)
50 2
+1 2
-1 4
+1 3
cob=(2)
cfi=(50)
cfn=(442)
calls=1 -51 
* 840
+2 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 -53 
* 23
+2 6

fl=(149) ./libio/./libio/vtables.c
fn=(488) check_stdfiles_vtables
83 1
+1 4
+1 3
+1 3
+2 1

fl=(107) ./string/../sysdeps/x86_64/multiarch/strncase_l.c
fn=(344) strncasecmp_l
31 1
fi=(211)
+1 5
fe=(107)
-1 1

fl=(167) ./malloc/./malloc/malloc.c
fn=(672) sysmalloc_mmap.constprop.0
2420 9
+13 9
+5 6
+3 27
cfi=(190)
cfn=(674)
calls=3 47 
* 27
* 3
+3 6
+4 6
2028 12
2466 9
+19 3
-1 3
+5 3
-4 6
+4 6
+1 15
+3 9
+1 15
+5 15

fn=(772) malloc_consolidate
4715 1
+17 1
-17 4
+28 1
-28 3
+15 1
+2 1
+13 2
+1 2
-1 18
+1 18
+62 30
+1 8
-31 327762
+4 164238
+2 82119
+1 164238
+1 164238
+2 164238
-4 81762
+1 163524
+1 163524
+2 163524
+1 19922
+4 9961
+2 9961
-2 19922
+3 9961
+9 19922
-12 153920
+2 153920
-2 307840
+3 153920
+9 471756
-56 327786
+4 491679
+1 655572
+8 163893
-3 327786
+3 163893
-3 163893
+4 163893
-4 163893
+5 163893
-5 163893
+5 327786
+2 327786
+1 82112
+2 82112
-1 82112
+2 328448
+2 492672
cfn=(774) unlink_chunk.constprop.0
calls=82112 1626 
* 1821560
* 328448
+3 327786
+25 12
+1 24
+1 24
-23 81762
+1 245286
+16 81762
-16 81762
cfn=(774)
calls=81762 1626 
* 1813530
* 245286

fn=(626) calloc
3624 327808
+10 163904
-10 655616
+10 1311232
+8 327808
+3 491712
+2 491712
+32 491712
cfn=(566) _int_malloc
calls=163904 1343 
* 23116997
+2 819520
fi=(168) ./malloc/./malloc/arena.c
162 491703
fe=(167)
3681 327802
+3 491712
+14 327808
+11 163904
+5 163904
-2 327808
+3 3
-1 6
+48 983418
-53 163901
+12 655604
-20 655604
+31 163901
+2 327802
+2 327802
+5 163900
+2 163900
-2 163900
+3 327800
-87 163904
+1 491712
+7 163904
+97 1
-25 2
+25 4
-25 1
cob=(2)
cfi=(50)
cfn=(630) 0x0000000004883670
calls=1 0 
* 107547

fn=(714) _int_free
4421 1311256
+10 163907
-10 491721
+10 327814
+6 819535
+1 327814
+4 655628
+8 819535
-1 327814
+1 327814
+29 163903
-20 163903
-6 163903
+6 327806
+20 655612
+14 327794
+11 655572
+2 491679
2012 491679
4527 163893
+1 163893
+4 491679
+2 491679
+4 327786
+2 655572
+1 163893
+19 655570
4702 1802977
4569 8
+3 4
+3 12
+7 4
-4 4
+4 8
+3 8
+5 12
+3 8
+1 8
+1 8
2012 12
4601 8
+9 8
+5 2
+4 1
+9 1
-1 1
+1 3
+1 2
+2 1
+2 2
+5 1
+1 1
+2 3
+1 1
+30 8
+20 12
3181 10
+4 10
-4 10
+2 40
+1 10
+1 10
4482 10
4635 3
+38 9
+3 6
+2 3
-2 3
-23 3
+1 9
+1 6
-68 12
-2 8
+89 2
cfn=(772)
calls=1 +41 
* 12670606
* 1
+4 12

fn=(710) free
3352 163910
+4 327820
-4 163910
+14 163910
-14 327820
+12 163910
+4 163910
-4 163910
+4 327820
+17 491721
fi=(168)
162 491721
fe=(167)
3391 327814
cfn=(714)
calls=163907 4421 
* 26602565
+3 163907
+1 655628
-23 9
+2 10
+2 2
+1 2
-1 2
+1 2
+1 2
+3 4
cfn=(766) munmap_chunk
calls=2 3044 
* 70
* 2
cfn=(766)
calls=1 3044 
* 35
+13 3
+1 12

fn=(564) tcache_init.part.0
3235 3
+9 8
+1 3
cfn=(566)
calls=1 1343 
* 367
* 1
+1 2
+8 4
+7 2
+2 1
+1 2
-1 1
+1 86
+3 4

fn=(568) sysmalloc
2548 387
+20 172
+11 86
+1 126
+26 40
+1 120
+1 40
+9 316
+6 120
+3 120
2941 80
+1 40
+5 80
+3 80
+5 80
-2 40
+2 40
-1 40
+1 40
-3 40
+3 40
+1 40
-1 120
+1 40
+2 80
2581 9
+4 9
+9 12
cfn=(672)
calls=3 2420 
* 189
+1 6
2964 473
2687 80
+9 160
+13 120
+8 200
+8 80
+39 80
+2 120
+6 158
+1 39
2946 39
2773 117
+2 2
2896 1
-1 1
+1 3
+1 1
+11 2
fi=(168)
565 40
fe=(167)
2727 40
cfi=(170) ./malloc/./malloc/morecore.c
cfn=(572) __glibc_morecore
calls=40 25 
* 1734
+1 80
-1 40
+1 40
2028 40
2729 40
2028 40
2729 40
2028 80
2730 40
+3 80
+33 80
2610 80
2775 2
+40 3
+22 1
+1 1
-1 1
+1 6
+2 2
+1 3
cfi=(170)
cfn=(572)
calls=1 25 
* 28
+12 2
-12 1
+12 1
2028 4
2897 4
2765 2
-52 3

fn=(766)
3044 3
+2 3
-1 3
+1 3
-1 3
+1 3
+2 6
+4 3
-1 6
+7 3
-8 3
+8 3
-6 3
+7 3
-1 6
+1 12
+3 3
+1 9
+5 3
+1 3
-1 3
cfi=(200)
cfn=(768)
calls=3 117 
* 18

fn=(554) malloc
3287 48
+7 16
1343 14
+19 32
3306 32
+3 14
+10 18
+28 30
1362 8
3304 24
-63 4
cfn=(564)
calls=1 -6 
* 484
+68 2
+1 4
+1 15
3193 4
+1 4
+2 2
+1 2
-1 6
+1 2
+1 2
3347 10
-26 24
cfn=(566)
calls=6 1343 
* 855
+1 30
fi=(168)
162 12
315 1
cfn=(558) ptmalloc_init.part.0
calls=1 -2 
* 1128
fe=(167)
1343 2

fn=(774)
1626 163874
+2 819370
+3 327748
+1 163874
-1 491622
+3 655496
+3 163874
+1 163874
+1 357610
+24 327748

fn=(566)
1343 327822
3771 163911
1362 163911
3771 1311288
1362 327822
3904 163902
+2 163902
-2 163902
+2 327804
1362 327822
3811 327822
4397 327822
3838 327822
+63 22
+62 321
+1 27
3853 491700
-10 163900
+2 819500
4399 327804
3903 163902
4399 2130726
3983 163902
+1 163902
-1 327804
-1 327804
+2 327804
-1 9
+1 9
-1 18
-1 18
+2 18
-2 491730
+12 163910
-6 163910
+73 655640
-67 491731
-6 1
+73 4
-67 3
4413 1475199
4183 327822
+2 27
+3 9
-3 9
+3 18
+68 327822
+1 163911
+1 163911
-1 163911
+1 163911
+1 327822
+1 491733
+5 327822
3963 16
4269 491733
+3 655616
-3 491712
+3 655608
-3 327804
+3 491703
+97 163911
+1 327822
+2 327822
+3 491819
+17 129
3904 6
4380 163868
-2 327736
+2 163868
-1 163868
+6 163868
-5 163868
-3 163868
+3 163868
+2 163868
-2 655472
2005 163868
4382 163868
2005 327736
4407 172
cfn=(568)
calls=43 2548 
* 6866
* 43
+1 86
2005 129

fl=(201) ./stdlib/./stdlib/exit.c
fn=(778) __run_exit_handlers
40 11
+5 2
+3 5
+50 1
-42 1
+2 3
+8 6
+2 1
+3 1
-3 1
+3 6
+34 1
+1 1
+1 1
-2 1
+7 1
-3 2
+3 3
+1 3
cob=(1) /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
cfi=(203) ./elf/./elf/dl-fini.c
cfn=(782) _dl_fini
calls=1 -82 
* 901
+1 4
+10 2
+1 2
-63 1
+69 4
+2 2
+1 6
cfi=(163)
cfn=(832) _IO_cleanup
calls=1 863 
* 527
* 3
+2 2
cfi=(210) ./posix/../sysdeps/unix/sysv/linux/_exit.c
cfn=(850) _Exit
calls=1 27 
* 5
-90 1
cfi=(202) ./stdlib/./stdlib/cxa_thread_atexit_impl.c
cfn=(780) __call_tls_dtors
calls=1 149 
* 12
* 1

fn=(776) exit
142 3
+1 3
-1 1
+1 1
cfn=(778)
calls=1 40 
* 1524

fl=(170)
fn=(572)
25 41
+1 82
-1 41
+4 41
cfi=(171) ./misc/./misc/sbrk.c
cfn=(574) sbrk
calls=41 +8 
* 1393
+1 82
+4 82

fl=(156)
fn=(522)
28 3
+2 2
-1 1
+5 3

fl=(210)
fn=(850)
27 2
+3 1
+1 2

fl=(85) ./wcsmbs/../sysdeps/x86_64/multiarch/wcsnlen.c
fn=(290) wcsnlen
29 1
fi=(86) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-wcslen.h
+5 4
-1 2
+2 3
+2 2
+4 3
+3 3
fe=(85)
-15 1

fl=(103) ./string/../sysdeps/x86_64/multiarch/strcasecmp.c
fn=(334) strcasecmp
31 1
fi=(211)
+1 5
fe=(103)
-1 1

fl=(202)
fn=(780)
149 4
+1 4
+18 4

fl=(138)
fn=(436)
38 2
+1 7
+1 1

fl=(162)
fn=(658) _IO_file_open
182 6
+3 3
-3 21
+2 6
+4 3
cfi=(187)
cfn=(660)
calls=3 30 
* 102
* 3
+1 6
+3 6
+3 3
-4 3
+1 12
+3 6
+10 6
cfi=(163)
cfn=(654) _IO_link_in
calls=3 87 
* 72
+1 3
+1 12

fn=(700) _IO_file_close_it@@GLIBC_2.2.5
128 12
+2 9
+4 6
+3 3
-3 3
-1 6
+6 3
+3 3
-3 3
cfi=(163)
cfn=(702) _IO_unsave_markers
calls=3 960 
* 30
+3 9
fi=(173)
940 9
+2 6
+1 6
fe=(162)
142 6
cfn=(704) _IO_file_close
calls=3 1164 
* 27
* 3
+3 9
+8 15
cfi=(163)
cfn=(578)
calls=3 329 
* 469
+1 3
+3 3
-3 9
+3 3
cfi=(163)
cfn=(696) _IO_un_link
calls=3 53 
* 12
+5 3
-4 3
+1 3
+3 3
-2 3
+3 15

fn=(704)
1164 3
+3 6
cfi=(193)
cfn=(706)
calls=3 25 
* 18

fn=(608) _IO_file_read
1130 7
+1 7
+2 7
-1 7
+1 14
cfi=(177) ./io/../sysdeps/unix/sysv/linux/read.c
cfn=(610) read
calls=7 25 
* 56

fn=(546)
1146 5
+1 10
cfi=(165) ./io/../sysdeps/unix/sysv/linux/fstat64.c
cfn=(548) fstat
calls=5 29 
* 75

fn=(580) _IO_do_write@@GLIBC_2.2.5
423 8
+2 24
+1 2
-3 6
fi=(173)
940 6
fe=(162)
423 12
fi=(173)
940 6
fe=(162)
423 6
fi=(173)
940 12
fe=(162)
423 30
+20 6
-10 12
+7 24
fi=(173)
942 12
+1 12
fe=(162)
448 24
cfn=(586) _IO_file_write@@GLIBC_2.2.5
calls=6 1173 
* 276
* 6
+1 30
+2 6
+4 12
-3 12
-1 12
+4 12
-2 6
-28 24
+1 48
+28 12

fn=(652)
106 3
+5 3
-5 6
+4 3
+3 3
cfi=(163)
cfn=(654)
calls=3 -26 
* 312
+1 3
+1 6

fn=(656)
213 33
+9 6
+2 18
356 36
247 18
+33 12
cfn=(658)
calls=3 -98 
* 273
* 3
+3 6
+3 9
cfi=(188) ./string/../string/strstr.c
cfn=(662) __GI_strstr
calls=3 77 
* 171
* 3
+1 6
-40 6
-19 3
-1 3
-13 6

fn=(840) _IO_file_setbuf@@GLIBC_2.2.5
381 6
+1 2
cfi=(163)
cfn=(842) _IO_default_setbuf
calls=2 +70 
* 167
* 4
+3 2
+4 4
-2 6
+3 4

fn=(846) _IO_file_seek
1139 1
+1 2
cfi=(209)
cfn=(848)
calls=1 28 
* 10

fn=(540) _IO_file_overflow@@GLIBC_2.2.5
731 350
+1 280
+7 348
+37 69
-2 138
+3 130
+3 195
+1 195
+1 260
+4 65
+1 260
-45 2
+12 2
+9 3
+5 3
+2 2
-3 2
+3 1
+1 1
-6 1
+1 1
+5 4
+1 1
+2 2
+13 5
-12 5
+1 5
+11 10
-12 5
cfn=(580)
calls=5 423 
* 334
+9 6
-1 3
+1 3
-1 3
cfn=(580)
calls=3 423 
* 324
* 6
-39 2
cfi=(163)
cfn=(542) _IO_doallocbuf
calls=1 343 
* 1946
+1 1
+9 1
-9 5

fn=(586)
1173 42
+2 36
+5 6
cfi=(174) ./io/../sysdeps/unix/sysv/linux/write.c
cfn=(588) write
calls=6 25 
* 54
+1 12
+5 6
+1 6
-12 12
+4 18
+1 12
+10 18
+3 36
-4 18

fn=(684) _IO_file_xsgetn
1272 30
+7 3
-7 3
+7 3
+11 3
fi=(173)
940 9
fe=(162)
1290 12
+2 9
+1 6
-1 18
+1 12
+8 12
+8 12
+9 18
+1 24
+18 6
+1 18
+3 9
fi=(173)
942 3
fe=(162)
1329 3
fi=(173)
942 3
fe=(162)
1329 6
fi=(173)
943 6
fe=(162)
1341 9
cfn=(608)
calls=3 1130 
* 42
+1 6
+12 3
-2 3
+1 3
+1 6
-64 6
+5 9
cob=(2)
cfi=(50)
cfn=(688) 0x0000000004883620
calls=3 0 
* 346
+1 9
+25 6
cfi=(163)
cfn=(686) __underflow
calls=3 269 
* 408
* 6
+39 27
-78 9
+5 6
cfi=(163)
cfn=(542)
calls=3 343 
* 918
* 3

fn=(718) _IO_file_finish@@GLIBC_2.2.5
168 15
+1 6
+7 3
-1 6
+1 6
-1 3
cfi=(163)
cfn=(720) _IO_default_finish
calls=3 601 
* 48

fn=(538) _IO_file_xsputn@@GLIBC_2.2.5
1197 30
+7 6
-7 18
+6 24
+9 12
-2 24
+17 3
+6 5
+2 5
+2 10
-2 5
+1 5
+1 5
-2 5
cob=(2)
cfi=(50)
cfn=(636) 0x00000000048833e0
calls=5 0 
* 85
* 5
+4 10
+28 54
-55 5
+4 5
-4 5
+1 10
+18 1
+12 1
fi=(173)
940 3
+2 2
+1 2
fe=(162)
1243 3
fi=(173)
940 9
+2 6
+1 6
fe=(162)
1243 12
cfn=(540)
calls=4 731 
* 2396
* 8
+6 8
+1 28
+2 8
+11 12
+1 4
cfi=(163)
cfn=(582) _IO_default_xsputn
calls=1 371 
* 3823
+2 3
-48 96
-2 72
+4 3
+11 9
443 6

fn=(602) _IO_file_underflow@@GLIBC_2.2.5
461 4
+4 12
-4 32
+7 8
+6 12
+3 8
+12 6
+7 13
+2 1
-2 1
+2 1
-2 1
+2 2
-2 1
+2 2
fi=(173)
883 2
+1 9
fe=(162)
498 6
fi=(173)
940 3
+2 3
-2 3
fe=(162)
505 6
cfi=(163)
cfn=(606) _IO_switch_to_get_mode
calls=3 164 
* 75
fi=(173)
940 1
+2 1
-2 1
fe=(162)
505 2
cfi=(163)
cfn=(606)
calls=1 164 
* 25
+6 4
+5 4
-5 4
fi=(173)
942 8
fe=(162)
511 4
fi=(173)
942 4
fe=(162)
511 12
fi=(173)
943 8
fe=(162)
516 16
cfn=(608)
calls=4 1130 
* 56
+2 8
+16 4
-9 4
+9 8
+2 8
+1 32
-57 3
+5 2
cfi=(163)
cfn=(542)
calls=1 343 
* 325
+4 3
+11 1
fi=(173)
940 3
+2 1
fe=(162)
500 1
fi=(173)
940 1
+2 1
+1 2
fe=(162)
500 4
cfn=(540)
calls=1 731 
* 28
* 1

fn=(844) _IO_file_sync@@GLIBC_2.2.5
792 10
+5 8
+2 2
+1 4
+2 1
fi=(173)
940 3
+2 2
+1 2
fe=(162)
802 3
cfn=(846)
calls=1 1139 
* 13
+1 2
+8 4
+4 8
-10 3

fl=(153) ./csu/../sysdeps/nptl/libc_start_call_main.h
fn=(516) (below main)
29 4
+15 1
-15 5
+15 1
cfi=(154) ./setjmp/../sysdeps/x86_64/bsd-_setjmp.S
cfn=(518) _setjmp
calls=1 -16 
* 34
* 1
+2 2
+5 2
+1 2
+3 2
+3 6
cob=(5) /home/tnvc/Documents/hashtable/hashmap
cfi=(157) /home/tnvc/Documents/hashtable/src/main.cpp
cfn=(524) main
calls=1 -49 
* 144755191
* 1
+16 1
cfi=(201)
cfn=(776)
calls=1 +68 
* 1532

fl=(159) ./stdio-common/./stdio-common/vfprintf-internal.c
fn=(530) __vfprintf_internal
1180 48
+30 20
+8 13
+4 20
+11 8
+11 4
fi=(214) ./stdio-common/./stdio-common/printf-parse.h
111 8
fe=(159)
1244 20
fi=(214)
111 4
cob=(2)
cfi=(50)
cfn=(532) 0x00000000048834d0
calls=4 0 
* 109
fe=(159)
1259 4
fi=(214)
111 4
fe=(159)
1259 12
239 4
fi=(215) ./stdio-common/../libio/libioP.h
940 4
fe=(159)
1263 4
fi=(215)
942 4
-2 4
fe=(159)
1263 4
fi=(215)
940 8
+2 8
+1 8
fe=(159)
239 16
cfi=(162)
cfn=(538)
calls=4 1197 
* 6527
* 8
127 36
1263 8
+4 12
+4 8
1532 1
1214 1
+34 1
-8 1
1532 3
+23 1
-39 1
+39 1
-39 1
+39 2
1313 15
+39 1
-51 1
-1 1
-1 1
-1 1
+5 1
1501 1
fi=(214)
88 1
fe=(159)
1352 1
-46 1
-4 1
+50 1
1501 1
1295 1
-1 1
-1 1
-1 1
-1 1
+16 2
1608 8
+1 8
+3 48
-4 36
1218 6
+41 16
cfi=(161)
cfn=(536)
calls=4 24 
* 40
+1 52
-1 8
1609 8
cfi=(161)
cfn=(590)
calls=4 39 
* 32
+2 4
1484 1
-5 8
-1 1
+1 8
+37 13
cfi=(199) ./stdio-common/./stdio-common/_itoa.c
cfn=(760) _itoa_word
calls=1 163 
* 96
* 31
192 2
+47 1
fi=(215)
942 3
+1 2
fe=(159)
239 4
cfi=(162)
cfn=(538)
calls=1 1197 
* 97
* 2
127 13
1517 2
-54 1
+53 12
+73 1
fi=(214)
111 1
fe=(159)
1583 1
fi=(214)
111 2
cob=(2)
cfi=(50)
cfn=(532)
calls=1 0 
* 21
fe=(159)
239 1
fi=(215)
942 1
fe=(159)
1593 1
fi=(214)
111 1
fi=(215)
942 1
fe=(159)
1593 1
fi=(215)
942 1
+1 2
fe=(159)
239 4
cfi=(162)
cfn=(538)
calls=1 1197 
* 233
* 2
127 13
1593 2
+2 3
-79 20
192 2
1516 8

fl=(174)
fn=(588)
25 6
+1 42
+1 6

fl=(166) ./io/../sysdeps/unix/sysv/linux/fstatat64.c
fn=(550) fstatat
153 16
-55 16
+70 24
+1 8

fl=(175) ./stdio-common/./stdio-common/isoc99_scanf.c
fn=(594) __isoc99_scanf
25 13
+4 1
+1 2
-1 2
+1 1
-1 1
+1 1
-1 1
+1 1
-1 1
+1 1
cfi=(176)
cfn=(596)
calls=1 278 
* 918
+4 5

fl=(206) ./stdlib/./stdlib/cxa_finalize.c
fn=(796) __cxa_finalize
30 4
+3 4
-3 14
+3 8
+3 6
+4 12
-4 6
+58 8
+4 12
-4 6
+11 4
+1 4
cfi=(207) ./posix/./posix/register-atfork.c
cfn=(798) __unregister_atfork
calls=2 -30 
* 32
+1 8
+1 16

fl=(165)
fn=(548)
29 10
+1 10
+5 15
cfi=(166)
cfn=(550)
calls=5 153 
* 40

fl=(168)
fn=(558)
313 1
fi=(167)
3162 3
fe=(168)
313 5
+5 1
fi=(167)
3162 2
cfi=(169)
cfn=(560)
calls=1 28 
* 9
* 2
fe=(168)
343 2
+4 3
fi=(167)
1966 4
+3 1
-3 1
+3 2
-3 2
+3 126
-3 126
+3 252
-3 252
fe=(168)
352 3
fi=(167)
1977 1
+1 1
+2 1
fe=(168)
352 1
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 22
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 22
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+2 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+3 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+1 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 23
+1 2
+63 7

fl=(188)
fn=(662)
77 24
+5 3
-5 9
+5 6
+2 12
cob=(2)
cfi=(50)
cfn=(664) 0x0000000004883600
calls=3 -84 
* 69
* 3
+1 6
+44 3
+32 36

fl=(89) ./wcsmbs/../sysdeps/x86_64/multiarch/wcslen.c
fn=(298) wcslen
29 1
fi=(86)
+5 4
-1 2
+2 3
+2 2
+4 3
+3 3
fe=(89)
-15 1

fl=(126) ./string/../sysdeps/x86_64/multiarch/rawmemchr.c
fn=(396) rawmemchr
31 1
fi=(122) ./string/../sysdeps/x86_64/multiarch/ifunc-evex.h
+4 5
-1 2
+2 3
+5 2
-3 2
+9 3
+3 4
fe=(126)
-19 1

fl=(116) ./string/../sysdeps/x86_64/multiarch/strlen.c
fn=(368) strlen
29 2
fi=(82)
+4 10
-1 4
+2 6
+2 4
+4 6
+3 8
fe=(116)
-14 2

fl=(205) ./nptl/./nptl/pthread_mutex_unlock.c
fn=(786) pthread_mutex_unlock@@GLIBC_2.2.5
367 1
51 3
+1 2
367 1
57 2
+8 1
-3 1
-23 1
+1 2
+30 1
369 2
40 3
+1 2
+33 2
+6 4
+4 3
+3 3

fl=(98) ./string/../sysdeps/x86_64/multiarch/stpncpy.c
fn=(324) stpncpy
31 1
fi=(99)
+5 2
+1 1
-1 2
+1 2
+2 2
+4 3
+3 3
fe=(98)
-15 1

fl=(125) ./string/../sysdeps/x86_64/multiarch/strncase.c
fn=(394) strncasecmp
31 1
fi=(211)
+1 5
fe=(125)
-1 1

fl=(83) ./string/../sysdeps/x86_64/multiarch/strpbrk.c
fn=(286) strpbrk
29 1
fi=(216) ./string/../sysdeps/x86_64/multiarch/ifunc-sse4_2.h
+1 5
fe=(83)
-1 1

fl=(100) ./wcsmbs/../sysdeps/x86_64/multiarch/wmemchr.c
fn=(328) wmemchr
31 2
fi=(101) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-evex.h
+4 10
-1 4
+2 6
+5 4
-3 4
+9 6
+3 8
fe=(100)
-19 2

fl=(128) ./time/../sysdeps/unix/sysv/linux/gettimeofday.c
fn=(756) __gettimeofday_syscall
33 2
+1 4
+2 8
+1 2

fn=(404) gettimeofday
42 1
fi=(217) ./time/../sysdeps/unix/sysv/linux/dl-vdso.h
-2 2
+1 2
fe=(128)
+1 2

fl=(104) ./string/../sysdeps/x86_64/multiarch/strcspn.c
fn=(336) strcspn
29 1
fi=(216)
+1 5
fe=(104)
-1 1

fl=(123) ./string/../sysdeps/x86_64/multiarch/strspn.c
fn=(388) strspn
29 1
fi=(216)
+1 5
fe=(123)
-1 1

fl=(154)
fn=(518)
28 1
+2 1
+2 1
cfi=(155)
cfn=(520)
calls=1 -2 
* 31

fl=(117) ./string/../sysdeps/x86_64/multiarch/strncpy.c
fn=(372) strncpy
29 2
fi=(99)
+7 4
+1 2
-1 4
+1 4
+2 4
+4 6
+3 6
fe=(117)
-17 2

fl=(182) ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S
fn=(632) __memset_avx2_unaligned_erms
181 1
+1 3
+5 1
+1 1
+1 1
+1 1
+69 1
+1 1
+88 1
+1 1
+1 1
+1 107529
+1 1
+1 2

fl=(92) ./wcsmbs/../sysdeps/x86_64/multiarch/wcschr.c
fn=(306) wcschr
31 2
fi=(93) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-avx2.h
+2 10
-1 4
+2 6
+2 4
+4 6
+3 8
fe=(92)
-12 2

fl=(105) ./wcsmbs/../sysdeps/x86_64/multiarch/wcscpy.c
fn=(338) wcscpy
43 1
-6 5
+6 1

fl=(151) ./csu/../csu/libc-start.c
fn=(494) __libc_start_main@@GLIBC_2.34
242 12
343 3
+1 3
cfi=(152)
cfn=(496)
calls=1 69 
* 71
+25 6
+6 2
-3 2
+10 2
cob=(2)
cfi=(50)
cfn=(510) 0x00000000048836d0
calls=1 0 
* 836
+2 2
+8 4
cfi=(153)
cfn=(516)
calls=1 29 
* 144756785
128 2
+6 3
+1 6
cob=(2)
cfi=(50)
cfn=(500) 0x0000000000109000
calls=1 0 
* 7
* 1
+3 1
+1 2
+3 2
+1 2
-1 1
+2 7
+1 4
cob=(5)
cfi=(150) ???
cfn=(504) 0x0000000000001290
calls=1 0 
* 12
-1 4

fl=(189) ./io/../sysdeps/unix/sysv/linux/stat64.c
fn=(670) stat
28 6
+1 12
cfi=(166)
cfn=(550)
calls=3 153 
* 24

fl=(87) ./string/../sysdeps/x86_64/multiarch/memset.c
fn=(294) memset
29 1
fi=(88) ./string/../sysdeps/x86_64/multiarch/ifunc-memset.h
+21 5
+3 3
+7 2
+9 2
+2 2
+10 2
+8 2
+2 5
fe=(87)

fl=(95) ./string/../sysdeps/x86_64/multiarch/strrchr.c
fn=(312) rindex
28 1
fi=(82)
+5 5
-1 2
+2 3
+2 2
+4 3
+3 4
fe=(95)
-15 1

fl=(97) ./wcsmbs/../sysdeps/x86_64/multiarch/wcscmp.c
fn=(320) wcscmp
30 1
fi=(93)
+3 5
-1 2
+2 3
+2 2
+4 3
+3 4
fe=(97)
-13 1

fl=(118) ./wcsmbs/../sysdeps/x86_64/multiarch/wmemcmp.c
fn=(376) wmemcmp
29 1
fi=(119) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-memcmp.h
+5 2
+1 1
-1 2
+1 2
+1 2
+1 3
+2 2
+4 3
+3 3
fe=(118)
-17 1

fl=(163)
fn=(650) _IO_old_init
531 3
+3 3
-2 3
+2 3
+5 3
-7 3
+2 3
+10 3
-10 3
+16 3
-11 3
-5 3
+16 3
-16 3
+21 3
-16 15
+16 6
+1 6
+2 3

fn=(600) _IO_default_uflow
361 2
fi=(173)
940 2
fe=(163)
361 1
fi=(173)
940 1
fe=(163)
361 2
+1 1
fi=(173)
942 2
+1 2
fe=(163)
362 2
cfi=(162)
cfn=(602)
calls=1 +99 
* 504
+1 2
+2 4
+1 4

fn=(686)
269 15
+1 12
+5 9
+3 3
173 3
278 6
+2 6
+6 6
+7 3
fi=(173)
940 9
+2 6
+1 6
fe=(163)
293 3
+1 3
-1 3
+1 6
-1 3
cfi=(162)
cfn=(602)
calls=3 461 
* 297
-2 9

fn=(598)
299 5
+1 3
+5 3
+3 1
173 1
308 2
+2 2
+6 2
+7 1
fi=(173)
940 3
+2 2
+1 2
fe=(163)
323 1
+1 1
-1 1
+1 2
-1 1
cfn=(600)
calls=1 +38 
* 529
-23 2
+21 3

fn=(606)
164 20
+1 12
+3 12
+4 8
+1 8
+7 4
-4 4
+4 4
-2 8
+3 4
+1 16

fn=(578)
329 72
+1 38
+5 16
-3 8
+3 32
+3 35
-7 3
cob=(2)
cfi=(50)
cfn=(708) 0x0000000004883370
calls=3 0 
* 376
+4 9

fn=(582)
371 1
+3 2
-3 8
fi=(173)
940 1
fe=(163)
371 1
fi=(173)
940 1
fe=(163)
371 1
fi=(173)
940 1
fe=(163)
371 2
+28 197
fi=(173)
942 130
+1 130
fe=(163)
399 260
cfi=(162)
cfn=(540)
calls=65 731 
* 2555
* 130
+2 65
-22 329
+25 1
-29 1
+29 7

fn=(654)
87 42
+1 6
-1 18
+1 18
+18 60
-16 3
+2 9
-2 3
+2 3
+1 3
-1 9
cfi=(161)
cfn=(536)
calls=3 -68 
* 30
+1 27
+2 3
-1 3
-1 6
+2 30
+5 3
-3 3
-2 6
+3 3
-1 3
+3 36
+1 3
+1 21
+1 6
cfi=(161)
cfn=(590)
calls=3 -64 
* 24
+3 3

fn=(720)
601 9
+2 9
+6 9
+3 9
54 6
624 6

fn=(834) _IO_flush_all_lockp
686 12
+5 6
cfi=(161)
cfn=(536)
calls=1 24 
* 10
+1 9
+3 1
-8 1
+5 2
+3 2
fi=(173)
940 4
fe=(163)
709 6
+2 3
-16 9
+2 3
+1 6
+3 21
+14 9
+1 2
cfi=(161)
cfn=(590)
calls=1 39 
* 8
+4 12

fn=(542)
343 5
+1 10
-1 15
+3 20
+1 5
fi=(173)
940 15
+2 10
+1 10
fe=(163)
347 10
cfi=(164)
cfn=(544)
calls=5 78 
* 3059
* 10
+3 20

fn=(702)
960 6
+2 3
-2 3
+2 3
+5 9
+2 6

fn=(648)
563 30
+1 3
cfn=(650)
calls=3 -33 
* 75
+1 3
+1 6
+2 3
+4 3
+7 3
+2 3
-9 15
+15 3
+1 18

fn=(682)
409 6
fi=(173)
940 9
fe=(163)
409 3
+2 3
fi=(173)
942 6
+1 6
fe=(163)
411 3
+1 6
-1 3
cfi=(162)
cfn=(684)
calls=3 1272 
* 2053

fn=(842)
452 4
fi=(173)
940 2
fe=(163)
452 4
fi=(173)
940 2
fe=(163)
452 2
fi=(173)
940 2
fe=(163)
452 8
+1 2
fi=(173)
942 4
+1 4
fe=(163)
453 4
cfi=(162)
cfn=(844)
calls=2 792 
* 65
* 4
+4 2
330 2
462 2
-7 4
332 4
+5 2
-5 2
+5 2
467 2
332 2
466 8
+2 12
-11 2
+1 4
-1 2
330 8

fn=(612)
635 5
+3 3
+1 2
+9 1
+3 4
-10 2
+1 1
+5 1

fn=(696)
53 6
+1 12
+28 6
cfn=(698) __GI__IO_un_link.part.0
calls=3 -30 
* 312

fn=(698)
52 6
+7 3
-7 21
+6 18
cfi=(161)
cfn=(536)
calls=3 -34 
* 30
+1 27
+2 3
-1 3
-1 6
+2 30
+13 3
-13 3
+2 3
+13 3
-15 6
+15 3
-13 6
+3 3
-1 6
+1 3
+8 6
+2 33
+2 6
-1 3
+1 21
+1 6
cfi=(161)
cfn=(590)
calls=3 -40 
* 24
+3 27

fn=(832)
863 2
+3 1
-3 9
-77 1
+80 1
cfn=(834)
calls=1 686 
* 126
-80 2
+80 1
-80 3
cfi=(161)
cfn=(536)
calls=1 24 
* 10
+1 9
+3 1
-3 2
+3 2
fi=(173)
940 4
fe=(163)
838 3
-48 9
+9 9
+2 6
+6 26
+8 10
+9 2
fi=(173)
942 4
+1 4
fe=(163)
824 8
cfi=(162)
cfn=(840)
calls=2 381 
* 195
+2 6
+4 10
+1 16
+11 9
+1 2
cfi=(161)
cfn=(590)
calls=1 39 
* 8
+35 12
-59 2
-2 2
+3 2
-3 2
+2 6

fl=(199)
fn=(760)
163 2
+3 4
+2 2
+9 86
+9 2

fl=(94) ./string/../sysdeps/x86_64/multiarch/strchr.c
fn=(310) index
61 2
-20 4
+1 2
-1 4
-1 4
+2 4
+2 4
+4 6
+3 6
+10 2

fl=(171)
fn=(574)
37 82
+6 41
-6 41
+3 41
-3 82
+3 41
+3 41
+20 1
+15 205
-20 82
+1 2
cfi=(172)
cfn=(576)
calls=1 -24 
* 9
* 2
+4 1
-1 82
+4 160
+8 40
cfi=(172)
cfn=(576)
calls=40 -39 
* 360
* 80

fl=(147) ./misc/./misc/init-misc.c
fn=(482) __init_misc
30 1
+1 2
-1 4
+1 3
+2 3
cob=(2)
cfi=(50)
cfn=(484) 0x00000000048835f0
calls=1 -33 
* 30
+4 5
+1 3
+2 4

fl=(96) ./string/../sysdeps/x86_64/multiarch/memmove.c
fn=(316) memmove
29 2
fi=(91)
+24 6
-1 4
+4 6
+14 4
+2 4
+8 4
+8 4
+2 10
fe=(96)

fl=(108) ./string/../sysdeps/x86_64/multiarch/memcmp.c
fn=(346) bcmp
29 1
fi=(109) ./string/../sysdeps/x86_64/multiarch/ifunc-memcmp.h
+5 2
+1 1
-1 2
+1 2
+1 2
+1 3
+2 2
+4 3
+3 3
fe=(108)
-17 1

fl=(137)
fn=(434)
29 1
+2 7
+2 4
+2 4
+1 1

fl=(81) ./string/../sysdeps/x86_64/multiarch/strnlen.c
fn=(282) strnlen
31 2
fi=(82)
+2 10
-1 4
+2 6
+2 4
+4 6
+3 8
fe=(81)
-12 2

fl=(120) ./string/../sysdeps/x86_64/multiarch/stpcpy.c
fn=(380) stpcpy
33 1
fi=(99)
+3 2
+1 1
-1 2
+1 2
+2 2
+4 3
+3 3
fe=(120)
-13 1

fl=(146) ./csu/./csu/init-first.c
fn=(480) _init_first
46 4
+5 2
+4 5
+8 1
-2 1
+10 1
-9 1
+1 1
+9 2
-1 1
cfi=(147)
cfn=(482)
calls=1 -41 
* 55

fl=(114) ./string/../sysdeps/x86_64/multiarch/strcpy.c
fn=(362) strcpy
29 1
fi=(99)
+7 2
+1 1
-1 2
+1 2
+2 2
+4 3
+3 3
fe=(114)
-17 1

fl=(177)
fn=(610)
25 7
+1 42
+1 7

fl=(121) ./string/../sysdeps/x86_64/multiarch/memchr.c
fn=(384) memchr
29 1
fi=(122)
+6 5
-1 2
+2 3
+5 2
-3 2
+9 3
+3 4
fe=(121)
-21 1

fl=(90) ./string/../sysdeps/x86_64/multiarch/memcpy.c
fn=(302) memcpy@@GLIBC_2.14
29 1
fi=(91)
+24 3
-1 2
+4 3
+14 2
+2 2
+8 2
+8 2
+2 5
fe=(90)

fl=(158) ./debug/./debug/printf_chk.c
fn=(528) __printf_chk
25 44
+7 4
-4 8
+4 8
-4 4
+5 4
-1 4
+1 4
-5 4
+4 4
+1 4
-1 4
+1 4
cfi=(159)
cfn=(530)
calls=4 1180 
* 7870
+4 20

fl=(192) ./libio/./libio/iofclose.c
fn=(694) fclose@@GLIBC_2.2.5
34 15
+14 9
fi=(173)
883 6
+1 9
fe=(192)
57 3
fi=(173)
940 9
+2 6
+1 6
fe=(192)
57 9
cfi=(162)
cfn=(718)
calls=3 168 
* 87
+1 9
+13 6
fi=(173)
855 12
+1 12
+6 6
cob=(2)
cfi=(50)
cfn=(708)
calls=3 0 
* 273
fe=(192)
76 15
-27 3
cfi=(163)
cfn=(696)
calls=3 +4 
* 324
+2 36
+1 3
-1 6
fi=(173)
883 6
fe=(192)
52 6
+1 6
cfi=(162)
cfn=(700)
calls=3 +75 
* 697
fi=(173)
883 3
fe=(192)
53 3
fi=(173)
883 6
+1 12
fe=(192)

fl=(148) ./string/../sysdeps/x86_64/multiarch/strrchr-avx2.S
fn=(486) __strrchr_avx2
46 1
+1 1
+1 1
+2 1
+1 1
+3 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+12 1
+1 1
219 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 2

fl=(207)
fn=(798)
76 4
+1 2
-1 2
+1 6
fi=(208) ./posix/../malloc/dynarray-skeleton.c
243 2
fe=(207)
65 4
+38 8
+1 4

ob=(4) /usr/local/libexec/valgrind/vgpreload_core-amd64-linux.so
fl=(145) ???
fn=(824) 0x0000000000001060
0 5

fn=(814) 0x00000000000010d0
0 9
cob=(2)
cfi=(50)
cfn=(820) 0x000000000483f030
calls=1 0 
0 74
0 1
cfn=(824)
calls=1 0 
0 5
0 3

fn=(474) 0x0000000000001110
0 12

ob=(1)
fl=(43) ./string/../sysdeps/x86_64/memcmp.S
fn=(124) bcmp
22 1
+5 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+3 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+17 1
+1 1
+17 1
+1 1
+1 1
+1 1
+1 1
+4 1
+47 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1

fl=(133) ./elf/../sysdeps/nptl/dl-mutex.c
fn=(424) __rtld_mutex_init
30 2
+10 3
-10 1
+10 2
-10 1
+7 1
+3 2
cfi=(134) ./elf/./elf/dl-lookup-direct.c
cfn=(426) _dl_lookup_direct
calls=1 +34 
* 175
+4 2
+1 8
+2 3
-2 1
+2 3
cfi=(134)
cfn=(426)
calls=1 +27 
* 198
+4 2
+1 6
+1 2
-1 1
+1 2

fl=(64) ./io/../sysdeps/unix/sysv/linux/close_nocancel.c
fn=(198) __GI___close_nocancel
25 3
+1 12
+1 3

fl=(9) ./elf/../elf/dl-sysdep.c
fn=(16) _dl_sysdep_start
85 4
+25 1
-25 6
+25 1
-1 1
+1 192
+11 1
-8 1
+1 1
-4 1
+3 1
+6 1
+2 13
-34 1
-1 1
+36 113
+3 1
+1 1
-5 85
+57 1
-57 1
+58 1
-1 1
-57 3
+29 1
-29 1
+30 1
-1 1
-29 3
+41 1
-41 1
+42 1
-1 1
-41 3
+35 1
-35 1
+36 1
-1 1
-35 3
+32 1
-32 1
+33 1
-1 1
-32 4
+13 1
-13 1
+14 1
-1 1
-13 3
+10 1
-10 1
+11 1
-1 1
-10 3
+7 1
-7 4
224 1
cfi=(10) ./elf/./elf/dl-tunables.c
cfn=(18) __GI___tunables_init
calls=1 +55 
* 31831
+3 1
cfi=(12) ./elf/./elf/dl-sort-maps.c
cfn=(22) _dl_sort_maps_init
calls=1 +52 
* 32
fi=(13) ./elf/../sysdeps/unix/sysv/linux/dl-sysdep.c
36 2
cfi=(14) ./elf/../sysdeps/unix/sysv/linux/brk.c
cfn=(28) brk
calls=1 -1 
* 8
fi=(6) ./elf/../sysdeps/x86_64/dl-machine.h
215 1
cfi=(15) ./elf/../sysdeps/x86/dl-get-cpu-features.c
cfn=(32) _dl_x86_init_cpu_features
calls=1 37 
* 7211
fe=(9)
+23 3
+1 1
cfi=(22) ./string/../sysdeps/x86_64/multiarch/strlen-vec.S
cfn=(60) strlen
calls=1 41 
* 17
* 1
+2 2
cfi=(23) ./elf/../misc/sbrk.c
cfn=(62) sbrk
calls=1 37 
* 15
* 3
+12 3
+3 5
cfi=(2) ./elf/./elf/rtld.c
cfn=(64) dl_main
calls=1 1320 
* 113720
+2 9

fn=(456) _dl_sysdep_start_cleanup
262 1
+1 1

fl=(71) ./malloc/./malloc/scratch_buffer_set_array_size.c
fn=(228) __libc_scratch_buffer_set_array_size
30 20
+4 2
+1 4
+11 2
-1 4
+18 8

fl=(31) ./elf/./elf/dl-load.c
fn=(106) _dl_init_paths
706 11
+14 1
-14 2
+14 2
cfi=(38) ./elf/./elf/dl-hwcaps.c
cfn=(108) _dl_important_hwcaps
calls=1 175 
* 1847
fi=(28) ./elf/../include/rtld-malloc.h
56 1
fe=(31)
720 1
fi=(28)
56 1
cfi=(27) ./elf/./elf/dl-minimal-malloc.c
cfn=(76) __minimal_malloc
calls=1 -21 
* 25
fe=(31)
725 1
+2 2
+7 2
+1 2
-1 3
+5 3
fi=(28)
56 1
cfi=(27)
cfn=(76)
calls=1 -21 
* 25
fe=(31)
739 1
+2 4
+17 1
-10 1
+19 1
-11 1
-9 1
+9 1
+12 2
-10 1
+3 2
+9 1
-7 1
+4 1
+3 2
-3 1
-8 1
+3 1
+8 1
-3 1
+1 16
cfi=(44) ./string/../sysdeps/x86_64/multiarch/memset-vec-unaligned-erms.S
cfn=(132) memset
calls=4 125 
* 72
+2 18
-14 3
+10 3
+4 3
-12 3
-2 3
+2 3
+4 3
-3 3
+3 3
+1 3
-2 3
+5 6
+1 3
-4 3
+4 3
+15 1
+3 1
-15 1
+7 1
-1 1
+9 2
+2 4
+2 3
+36 3
+31 1
+1 8
-49 1
-2 1
+2 2
+14 2

fn=(206) _dl_dst_count
238 4
+3 2
-3 4
+7 2
-7 4
+3 2
cfi=(42) ./string/../sysdeps/x86_64/multiarch/../strchr.S
cfn=(118) index
calls=2 23 
* 72
+3 4
+20 14

fn=(164) expand_dynamic_string_token
385 7
241 1
385 1
241 1
385 1
241 1
cfi=(42)
cfn=(118)
calls=1 23 
* 48
+3 2
410 1
-11 1
+11 6
-11 1
cfi=(54) ./string/./string/strdup.c
cfn=(166) strdup
calls=1 40 
* 97

fn=(88) _dl_process_pt_gnu_property
868 3
+8 3
-8 3
+8 3
-6 3
+12 6
-13 3
+13 3
-13 3
+13 6
+3 9
+1 6
+1 6
+43 3

fn=(178) _dl_map_object_from_fd
944 20
+10 2
-10 8
+10 2
cfi=(45) ./elf/./elf/dl-debug.c
cfn=(180) _dl_debug_update
calls=2 38 
* 14
* 2
+7 8
+85 8
+10 4
+7 14
cfi=(26) ./elf/./elf/dl-object.c
cfn=(70) _dl_new_object
calls=2 59 
* 766
* 2
+1 4
+11 4
+5 2
-5 2
+1 4
+1 2
+2 2
-2 2
+2 4
+1 6
+1 2
+19 2
-2 1
+2 12
-2 1
+2 30
+10 8
+85 2
-58 2
-34 2
-1 2
+93 2
+6 2
-64 4
+9 2
+55 4
-55 2
-42 2
+97 4
1101 2
-5 4
+15 60
+20 2
+1 1
-22 69
+1 127
1213 4
1110 2
1213 4
1110 6
1218 6
+10 4
+1 2
-1 2
+1 2
-1 6
+1 6
-1 6
+1 6
-1 18
1076 4
1235 4
+10 8
+7 4
fi=(61) ./elf/./dl-map-segments.h
96 2
fe=(31)
1252 6
fi=(61)
28 2
fe=(31)
1252 2
fi=(61)
96 2
fe=(31)
1252 2
fi=(61)
28 4
+1 16
cfi=(60) ./misc/../sysdeps/unix/sysv/linux/mmap64.c
cfn=(188) mmap
calls=2 +18 
* 18
+74 4
-1 2
-73 2
+74 2
+3 4
+1 2
+2 2
-3 2
+1 2
+2 2
+17 2
+2 2
fi=(62) ./elf/./dl-load.h
-37 16
+1 6
+2 16
fi=(61)
+56 32
+8 2
-2 2
+1 2
+2 2
-1 2
+1 2
-1 6
+8 4
+3 4
+8 14
cfi=(44)
cfn=(132)
calls=2 -52 
* 238
+1 4
+5 4
+12 8
-59 40
+2 12
+3 6
-3 12
+2 48
cfi=(60)
cfn=(188)
calls=6 -93 
* 54
* 18
fi=(57) ./elf/../sysdeps/posix/dl-fileid.h
37 6
cfi=(58) ./io/../sysdeps/unix/sysv/linux/fstat64.c
cfn=(184) fstat
calls=2 -8 
* 30
* 4
fe=(31)
999 4
fi=(57)
40 6
fe=(31)
999 2
fi=(57)
40 2
fe=(31)
999 23
+1 10
fi=(57)
49 12
fe=(31)
1515 18
1018 4
+66 13
+1 2
-1 1
+1 1
-1 1
+1 1
cfi=(70) ./io/../sysdeps/unix/sysv/linux/pread64_nocancel.c
cfn=(222) __pread64_nocancel
calls=1 25 
* 7
* 2
+26 26
+26 48
+10 8
-1 8
-1 8
+2 8
+2 8
-2 8
-1 48
+2 16
+1 8
+2 8
-3 8
+3 48
+2 16
+4 16
+1 30
+4 6
+1 6
-1 6
+1 42
-18 6
+28 6
-11 2
+1 2
-1 2
+1 14
-18 2
+28 2
-56 4
+7 2
+2 2
-2 2
+1 2
+1 2
-1 4
+1 16
+50 3
+5 1
-1 2
+5 1
-5 2
-56 1
+61 4
+1 1
+3 1
-3 1
+8 4
+15 4
+1 2
+58 8
+1 6
fi=(63) ./elf/./elf/get-dynamic-info.h
39 4
+6 2
-2 2
+2 4
+9 2
+5 2
+3 2
+2 2
-3 2
-3 2
-3 28
+13 8
-23 32
+23 33
-23 132
+4 82
+5 40
+2 10
+3 8
+13 8
+10 7
+1 8
+1 8
+1 8
+2 8
+5 7
+1 7
+1 8
+3 6
+5 2
+7 4
+1 6
+22 6
+5 2
+2 2
+2 2
+2 2
+4 6
+2 3
+1 2
+9 2
+6 2
+4 4
fe=(31)
1275 4
+1 4
+2 4
+10 6
+19 6
+2 10
+52 6
+1 2
+6 16
+1 42
+6 8
cfn=(88)
calls=2 868 
* 40
-7 54
+1 25
+6 25
-6 50
fi=(30) ./elf/../sysdeps/x86/dl-prop.h
95 16
213 2
-1 4
105 4
212 2
105 2
-2 2
-3 2
+2 2
+3 2
-4 4
+92 8
-1 2
-87 6
+3 6
+1 4
+1 4
+4 6
+4 6
+3 6
+1 4
+4 2
+1 8
+58 6
+2 8
-56 6
+1 3
+3 6
+3 3
+1 12
+5 6
+2 6
+5 6
+14 3
-1 6
+2 2
-1 4
fe=(31)
1380 4
cfi=(64)
cfn=(198)
calls=2 25 
* 12
* 4
+13 4
+2 8
+2 4
+16 4
cfi=(8) ./elf/./elf/dl-setup_hash.c
cfn=(14) _dl_setup_hash
calls=2 25 
* 58
+4 4
+1 4
+17 4
+1 1
+3 1
+5 1
-5 1
+5 1
-5 1
+5 1
-5 1
+5 1
+10 4
+7 12
+10 4
+1 4
+5 2
cfi=(46) ./elf/../elf/dl-tls.c
cfn=(226) _dl_assign_tls_modid
calls=1 131 
* 10
+7 6
cfi=(26)
cfn=(82) _dl_add_to_namespace_list
calls=2 31 
* 94
+3 8
+23 14
+1 6
cfi=(48) ./elf/./elf/dl-audit.c
cfn=(200) _dl_audit_objopen
calls=2 76 
* 10
* 2
fi=(62)
95 5
+2 1
-1 2
+1 1
-1 1
+1 1
-1 1
+1 1
-1 2
+3 4
fe=(31)
1506 10
fi=(30)
198 8
+2 2
+1 2
+2 2
-3 6
fe=(31)
1368 6
fi=(63)
62 8
+2 8
fe=(31)
1084 2
fi=(61)
187 8
cfi=(60)
cfn=(188)
calls=1 47 
* 9
+3 2
fe=(31)
1462 6
+2 1
-1 5
+1 1
-1 1
+1 1
-1 1
cfi=(32) ./string/../sysdeps/x86_64/strcmp.S
cfn=(90) strcmp
calls=1 108 
* 25
* 2
+2 5
1275 2
fi=(57)
49 3
fi=(30)
170 3
-39 2
fe=(31)

fn=(168) open_verify.constprop.1
1568 11
+39 3
+19 4
cfi=(55) ./io/../sysdeps/unix/sysv/linux/open64_nocancel.c
cfn=(170) __open_nocancel
calls=1 28 
* 19
* 1
+2 2
+11 1
+6 2
-5 1
+5 8
cfi=(56) ./io/../sysdeps/unix/sysv/linux/read_nocancel.c
cfn=(172) __read_nocancel
calls=1 25 
* 6
+2 2
+2 2
+2 2
+6 2
+17 11
fi=(28)
50 2
cfi=(27)
cfn=(176) __minimal_free
calls=1 +45 
* 5
fe=(31)
1856 9
1674 3
+74 2
+5 2
+2 4
+6 2
+6 1
+1 1
-1 3
+1 1
-1 1
+1 2
+1 2
+20 3
+31 1
-31 1
1633 1
1820 2
-31 66
+1 28
+1 8
+4 8
+25 12
+3 18
+3 2
-4 2
+4 4
+6 4
-36 6

fn=(160) _dl_map_object
2022 30
+8 6
+1 12
+3 42
+5 49
+2 21
cfi=(53) ./elf/./elf/dl-misc.c
cfn=(162) _dl_name_match_p
calls=7 68 
* 810
* 14
+4 12
+1 18
+4 2
-1 10
+1 2
+1 2
-1 2
+1 2
cfi=(32)
cfn=(90)
calls=2 108 
* 86
* 4
2329 27
2068 2
+1 2
-1 2
+1 2
-1 2
+1 2
-1 4
-44 2
+53 6
+17 4
-2 2
+2 2
cfi=(42)
cfn=(118)
calls=2 23 
* 48
* 4
2260 2
-1 3
cfn=(164)
calls=1 385 
* 168
+2 1
-3 1
+1 1
+2 2
+4 5
cfn=(168)
calls=1 1568 
* 283
+3 2
-3 1
+3 1
+12 4
+46 1
+1 3
-1 1
+1 9
cfn=(178)
calls=1 944 
* 1848
-1 1
+1 3
-1 1
+1 9
cfn=(178)
calls=1 944 
* 2200
* 6
2098 2
cfi=(22)
cfn=(60)
calls=1 41 
* 17
* 2
+2 2
+7 4
682 1
2165 1
682 2
2252 2
+28 4
+2 4
2111 1
696 3
2111 1
+1 1
696 2
2116 3
682 1
2117 1
682 2
2164 2
+9 1
+14 2
+2 3
+4 2
cfi=(67) ./elf/./elf/dl-cache.c
cfn=(210) _dl_load_cache_lookup
calls=1 416 
* 1690
* 1
+2 2
+4 2
+8 3
+23 6
cfn=(220) open_verify.constprop.0
calls=1 1568 
* 396
+4 2
-4 1
+4 1
+1 2
2131 5
+1 10
682 1
2133 1
682 2
2157 3
-15 2

fn=(220)
1568 11
+39 3
+19 4
cfi=(55)
cfn=(170)
calls=1 28 
* 19
* 1
+2 2
+11 1
+6 2
-5 1
+5 8
cfi=(56)
cfn=(172)
calls=1 25 
* 6
+2 2
+2 2
+2 2
+6 2
+17 11
fi=(28)
50 2
cfi=(27)
cfn=(176)
calls=1 +45 
* 5
fe=(31)
1856 9
1674 3
+74 2
+5 2
+2 4
+6 2
+6 1
+1 1
-1 3
+1 1
-1 1
+1 2
+21 3
+31 1
-31 1
1633 1
1820 2
-31 48
+1 24
+1 8
+4 8
+6 4
+1 28
+10 12
cfi=(70)
cfn=(222)
calls=2 25 
* 14
* 16
+8 18
+15 2
+6 1
-3 1
+1 1
+1 1
+1 2
-3 1
+1 1
+1 1
+2 1
-3 3
-1 1
+4 2
-19 18
+3 2
-4 2
+4 4
+5 1
+1 4
-60 13
+1 3
-1 1
+1 3
cfi=(70)
cfn=(222)
calls=1 25 
* 7
* 3
+16 5
1674 3
1802 4
-30 2

fl=(36) ./posix/../sysdeps/unix/syscall-template.S
fn=(102) uname
120 5
+2 1

fl=(55)
fn=(170)
28 3
+3 3
-3 9
+3 18
+8 21
+2 3

fl=(39) ./elf/../sysdeps/x86_64/dl-hwcaps-subdirs.c
fn=(110) _dl_hwcaps_subdirs_active
29 1
fi=(18) ./elf/../sysdeps/x86/get-isa-level.h
+2 1
fe=(39)
+7 1
fi=(18)
-7 2
-1 2
fe=(39)
+22 1
fi=(18)
-20 3
+4 1
fe=(39)
+2 1
fi=(18)
-2 2
+3 4
+1 4
+5 1
fe=(39)
-7 1
fi=(18)
+7 3
fe=(39)
-2 1
fi=(18)
+5 2
+1 3
+2 4
+1 2
+1 2
+6 1
fe=(39)
-11 1
fi=(18)
+11 1
-3 2
fe=(39)

fl=(32)
fn=(90)
108 189
+33 189
+1 189
+2 189
+1 189
+21 189
+1 189
+1 159
+1 159
+1 139
+1 139
+1 139
+1 139
+21 139
+1 139
+1 139
+1 139
+1 139
+1 139
+1 139
+5 4
+1 12
+9 4
+1 4
+1 4
+1 4
+1 4
+1 4
+1 4
+1 4
-7 50
+1 50
+1 50
+1 50
+1 50
+1 50
+1 50
+1 50
+1 48
+1 25
+1 25
+1 25
+2 25
+1 25
+1 25
+1 25
+1 25
+1 25
-5 23
+1 23
+1 23
+1 23
+1 23
+1 23
+10 6
+1 6
+1 6
+2 6
+6 6
+1 6
+1 6
+1 6
+1 6
+5 6
+2 5
+1 5
+1 10
+8 5
+1 5
+3 5
+1 5
+1 5
+1 5
+1 5
+1 5
568 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+4 1
+1 1
+1 1
+6 1
+1 1
+1 2
+4 1
+1 1
+3 1
+1 1
+1 1
+3 1
+1 1
+1 1
+6 1
+1 1
+1 1
+1 1
+1 1
+1 1
+7 1
+1 1
+2 1
+1 1
+2 1
+1 1
+1 1
+3 1
+1 1
+1 1
+6 1
+1 1
+1 1
+1 1
+1 1
+1 1
+41 4
+1 4
+1 4
+1 4
+1 4
+2 4
+1 4
+1 4
+1 4
+1 4
+1 4
+1 4
+1 4
+4 4
+1 4
+1 4
+6 4
+1 4
+1 8
+4 4
+1 4
+3 4
+1 4
+1 4
+3 4
+1 4
+1 4
+6 4
+1 4
+1 4
+1 4
+1 4
+1 4
+72 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+4 1
+1 1
+1 1
+6 1
+1 1
+1 2
+4 1
+1 1
+3 1
+1 1
+1 1
+3 1
+1 1
+1 1
+6 1
+1 1
+1 1
+1 1
+1 1
+1 1
+72 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+4 1
+1 1
+1 1
+6 1
+1 1
+1 2
+4 1
+1 1
+3 1
+1 1
+1 1
+3 1
+1 1
+1 1
+6 1
+1 1
+1 1
+1 1
+1 1
+1 1
+72 6
+1 6
+1 6
+1 6
+1 6
+2 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 2
+4 2
+1 2
+1 2
+6 2
+1 2
+1 4
+4 2
+1 2
+3 2
+1 2
+1 2
+3 2
+1 2
+1 2
+6 2
+1 2
+1 2
+1 2
+1 2
+1 2
+7 1
+1 1
+2 1
+1 1
+2 1
+1 1
+1 1
+3 1
+1 1
+1 1
+6 1
+1 1
+1 1
+1 1
+1 1
+1 1
+13 1
+1 1
+1 1
+1 1
+7 1
+1 1
+1 1
+16 2
+1 2
+1 2
+1 2
+1 2
+2 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
1318 4
+1 4
+1 4
+1 4
+1 4
+2 4
+1 4
+1 4
+1 4
+1 4
+1 4
+1 4
+1 3
+4 3
+1 3
+1 3
+6 3
+1 3
+1 6
+4 3
+1 3
+3 3
+1 3
+1 3
+3 3
+1 3
+1 3
+6 3
+1 3
+1 3
+1 3
+1 3
+1 3
1568 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+4 1
+1 1
+1 1
+6 1
+1 1
+1 2
+4 1
+1 1
+3 1
+1 1
+1 1
+3 1
+1 1
+1 1
+6 1
+1 1
+1 1
+1 1
+1 1
+1 1
+72 4
+1 4
+1 4
+1 4
+1 4
+2 4
+1 4
+1 4
+1 4
+1 4
+1 4
+1 4
+1 3
+4 3
+1 3
+1 3
+6 3
+1 3
+1 6
+4 3
+1 3
+3 3
+1 3
+1 3
+3 3
+1 3
+1 3
+6 3
+1 3
+1 3
+1 3
+1 3
+1 3
+72 1
+1 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
1943 6
+1 6
+1 6
+1 6
+1 6
+2 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 3
+4 3
+1 3
+1 3
+6 3
+1 3
+1 6
+4 3
+1 3
+3 3
+1 3
+1 3
+3 3
+1 3
+1 3
+6 3
+1 3
+1 3
+1 3
+1 3
+1 3
+72 17
+1 17
+1 17
+1 17
+1 17
+2 17
+1 17
+1 17
+1 17
+1 17
+1 17
+1 17
+2 6
+4 6
+1 6
+1 6
+6 6
+1 6
+2 12
+4 6
+1 6
+3 6
+1 6
+1 6
+3 6
+1 6
+1 6
+6 6
+1 6
+1 6
+1 6
+1 6
+1 6
+74 30
+2 30
+1 30
+1 30
+1 30
-3 24
+1 24
+1 24
+1 24
+1 50
+5 25
+6 25
+1 25
+8 25
+1 25
-16 164
+6 164
+1 164
+8 164
+1 164

fl=(134)
fn=(426)
74 30
+2 3
-2 3
+4 3
-4 3
+2 3
+2 9
+37 3
-37 9
+1 6
+2 12
+3 25
-52 3
+54 6
-54 3
+54 3
-54 9
+1 9
+2 6
+1 6
+12 12
+3 3
+2 3
-2 3
+2 9
cfi=(32)
cfn=(90)
calls=3 +55 
* 207
* 6
+4 6
+1 3
-1 3
+1 18
+1 9
cfi=(32)
cfn=(90)
calls=3 +49 
* 75
* 6
+57 27
-23 6

fl=(8)
fn=(14)
25 4
+3 4
-3 4
+3 8
+3 12
+1 8
+2 4
-1 4
+3 12
+1 4
+4 4
-3 4
+7 4
-4 4
-3 4
+2 8
+5 4
-5 4
-2 4
+7 4
-5 4
+10 4

fl=(13)
fn=(100) _dl_discover_osversion
46 5
+2 3
+85 5
-45 2
cfi=(36)
cfn=(102)
calls=1 +32 
* 6
+15 1
-15 2
+20 1
-1 1
+3 12
+4 3
-2 6
+2 10
+3 1
-1 1
+1 3
-3 4
+7 3
-1 3
+4 3
-2 3
+2 10
+5 2

fl=(59) ./io/../sysdeps/unix/sysv/linux/fstatat64.c
fn=(186) fstatat
153 6
-55 6
+70 9
+1 3

fl=(48)
fn=(812) _dl_audit_objclose
96 4
+1 16

fn=(200)
76 2
+1 8

fn=(514) _dl_audit_preinit
117 1
+1 4

fn=(458) _dl_audit_activity_nsid
40 6
+4 3
-4 3
+4 3
-4 3
+4 3
-4 6
+4 3
+1 3
+1 12
+4 18

fn=(142) _dl_audit_activity_map
28 6
+2 1
-1 1
+1 2
+6 6

fl=(60)
fn=(188)
47 24
+3 24
+8 48
+2 12

fl=(54)
fn=(166)
40 10
+1 2
cfi=(22)
cfn=(60)
calls=2 * 
* 70
* 2
fi=(218) ./string/../include/rtld-malloc.h
+15 4
cfi=(27)
cfn=(76)
calls=2 -21 
* 50
fe=(54)
-12 4
+4 2
-1 6
+1 4
-1 2
cfi=(29) ./string/../sysdeps/x86_64/multiarch/memmove-vec-unaligned-erms.S
cfn=(80) memcpy
calls=2 212 
* 30

fl=(44)
fn=(132)
125 7
+1 35
+6 7
+1 7
+1 6
+1 6
+69 4
+1 4
+2 4
+76 6
+1 6
+5 6
+3 6
+1 6
+3 2
+1 2
+13 2
+1 2
+2 2
+3 1
+3 2
+3 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
-6 27
+1 27
+1 27
+1 27
+1 27
+1 27
+1 27
+3 2
+1 2
+1 2
+1 2
+5 2
+29 1
+1 1
+1 1
+32 1
+1 1
+1 1

fl=(41) ./elf/./elf/dl-hwcaps_split.c
fn=(116) _dl_hwcaps_split_masked
51 55
-25 42
+4 24
+4 48
+1 12
-1 24
+2 24
+5 27
cfi=(42)
cfn=(118)
calls=9 -18 
* 216
+1 18
+3 6
+11 12
+1 12
+1 6
-1 6
+1 6
-2 6
+1 6
+1 3
-1 3
+1 27
cfn=(120) _dl_hwcaps_contains
calls=6 +8 
* 30
* 12
-3 5
+7 44
-19 6
cfi=(22)
cfn=(60)
calls=3 -2 
* 51
* 3

fn=(122) _dl_hwcaps_split
25 4
+1 3
+21 1
-20 1
+20 3

fn=(120)
66 6
+1 12
+1 6
+9 6

fl=(127) ./misc/../sysdeps/unix/syscall-template.S
fn=(462) munmap
117 5
+5 1

fn=(400) mprotect
117 20
+5 4

fl=(46)
fn=(226)
131 2
+3 1
+13 1
-13 1
+52 1
+2 1
+3 1
+1 2

fn=(250) _dl_determine_tlsoffset
221 8
+6 3
+3 2
+36 3
+2 1
-2 1
-2 1
-40 1
-1 1
-1 1
+46 2
+23 3
+3 1
-3 4
+2 2
-2 1
-25 1
+20 1
-20 5
+2 2
+3 1
-1 1
+5 2
-5 1
+1 1
-1 1
+3 2
+2 3
+32 3
-1 1
+1 4
+2 2
-2 2
+53 8

fn=(136) _dl_count_modids
197 1
+2 2
+1 1
+15 2

fn=(248) _dl_tls_static_surplus_init
97 2
+4 1
-4 2
+4 1
-4 2
+4 3
cfi=(10)
cfn=(24) __tunable_get_val
calls=1 402 
* 21
* 1
+1 4
cfi=(10)
cfn=(24)
calls=1 402 
* 21
* 1
+8 1
-8 1
+6 2
+2 3
+3 1
+2 1
-32 3
+34 3
+1 5

fn=(402) _dl_add_to_slotinfo
1015 8
+6 1
+3 1
+1 1
+4 3
+34 2
+3 3
+1 3
+3 6

fn=(406) _dl_allocate_tls_init
528 10
+1 2
+4 1
+6 1
-6 1
+6 1
cfi=(24) ./elf/../sysdeps/nptl/dl-tls_init_tp.c
cfn=(84) rtld_mutex_dummy
calls=1 42 
* 3
+3 3
+12 1
-18 1
-1 1
+43 3
-19 13
+9 3
+1 2
+6 3
+1 1
+2 2
-2 1
+6 1
-4 2
+4 1
-4 2
+3 2
+4 2
+1 4
+2 2
+1 2
+17 1
-8 1
+8 1
+2 3
cfi=(29)
cfn=(128) mempcpy
calls=1 199 
* 13
* 5
cfi=(44)
cfn=(132)
calls=1 125 
* 25
-49 1
+55 1
-55 4
+6 4
+55 2
cfi=(24)
cfn=(84)
calls=1 42 
* 3
+3 2
+3 9

fn=(252) _dl_allocate_tls_storage
422 2
+13 1
-13 2
+2 1
+12 1
fi=(28)
56 1
cfi=(27)
cfn=(76)
calls=1 -21 
* 53
fe=(46)
437 3
+8 2
fi=(28)
44 1
fe=(46)
445 2
+1 1
+4 321
+19 1
-99 1
+4 1
+1 1
fi=(28)
44 1
cfi=(27)
cfn=(72) __minimal_calloc
calls=1 +34 
* 36
fe=(46)
376 2
+3 1
+6 2
+90 5

fl=(129) ./elf/./elf/dl-find_object.c
fn=(408) _dl_find_object_init
561 4
+3 1
+2 2
+13 1
cfn=(412) _dlfo_process_initial
calls=1 474 
* 79
+1 1
-1 1
+1 1
fi=(28)
56 1
cfi=(27)
cfn=(76)
calls=1 -21 
* 25
fe=(129)
580 1
fi=(28)
56 1
fe=(129)
582 2
+3 2
+5 1
+1 1
cfn=(412)
calls=1 474 
* 280
+3 3
+10 4
-37 2
cfi=(130) ./elf/./dl-find_object.h
cfn=(410) _dl_find_object_from_map
calls=1 95 
* 68
* 1
+29 2
cfn=(414) _dlfo_sort_mappings
calls=1 -60 
* 80
+3 6
+2 1

fn=(412)
474 2
+3 2
-3 2
+1 2
+3 4
+26 14
+1 6
+1 8
-1 16
+3 28
+3 24
-7 10
+25 2
+2 8
-18 18
+3 6
-1 6
cfi=(130)
cfn=(410)
calls=3 95 
* 189
+2 12

fn=(414)
536 1
+1 2
+3 4
+4 1
+1 1
-1 1
+1 2
-1 1
+1 1
-1 1
+1 6
+1 19
-1 9
+8 6
+1 4
-1 2
-13 4
+14 6
+1 4
-15 4
+17 1

fl=(42)
fn=(118)
23 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 14
+1 12
+4 12
+1 12
+1 12
+1 12
+2 12
+4 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+52 2
+4 2
+1 2
+1 2
+1 2
+2 2

fl=(142) ./elf/./elf/dl-runtime.c
fn=(450) _dl_fixup
46 16
+2 10
+1 2
+6 2
fi=(219) ./elf/../sysdeps/x86_64/dl-runtime.h
-27 2
fe=(142)
+21 2
+5 2
+1 2
-6 2
+6 4
+1 2
+2 2
-2 2
+2 2
-2 10
+7 4
+4 4
+4 6
+4 6
+1 8
-7 8
+16 2
-1 2
+1 4
+10 20
cfi=(77) ./elf/./elf/dl-lookup.c
cfn=(268) _dl_lookup_symbol_x
calls=2 840 
* 1363
* 2
+4 10
+10 20
+15 8
+9 6
+26 6
fi=(6)
+70 2
fe=(142)
-66 12

fl=(16) ./elf/../sysdeps/x86/cpu-features.c
fn=(40) update_active.constprop.0
43 7
+45 1
-41 1
+28 1
-18 1
+31 1
+4 1
-36 1
-1 1
+37 1
-26 1
-11 1
+1 1
+36 2
+1 1
-17 1
-21 1
+25 1
-4 1
-11 1
+28 1
-1 1
-36 1
+18 1
+19 1
-13 1
-4 1
-11 1
+19 1
+11 1
-3 1
-12 1
+14 1
-29 1
+18 1
+9 1
-18 1
+13 1
-13 1
-9 1
+29 2
+3 1
-14 1
-9 1
+9 1
+4 1
+10 1
-17 1
+7 1
+5 1
+5 1
+1 1
-1 1
+1 2
+2 2
+1 4
+3 1
+1 1
-1 1
+1 1
-1 1
+1 1
-1 1
+1 1
+4 2
+4 2
+2 4
+83 3
+12 2
+1 1
+3 3
+4 1
-4 1
+4 1
+67 3
+4 3
fi=(18)
31 1
-3 1
+3 1
-1 2
fe=(16)
296 1
+1 8
-75 3
+1 2
+3 1
-1 1
+9 1
-5 1
+2 1
-2 1
+5 1
fi=(18)
32 3
+4 3
fe=(16)
+83 2
+2 1
+3 2
+10 1
+10 1
-10 1
+10 1
-10 1
+6 1
+4 1
-4 1
-6 1
+6 1
+2 1
-2 1
+2 3
+7 4
fi=(18)
39 3
+1 4
+5 1
-7 1
+7 3
+2 1
+1 2
+1 3
+2 4
+1 2
+1 2
+6 1
-4 1
+4 1
-3 2
fe=(16)
+75 1
-5 2
+4 1

fn=(34) init_cpu_features.constprop.0
399 1
+16 1
-16 6
+3 1
+1 1
+1 1
+11 2
+3 6
593 1
+94 5
+1 1
+3 2
+1 1
+6 1
+3 1
fi=(19) ./elf/../sysdeps/x86/dl-cacheinfo.h
+5 1
+2 1
fe=(16)
-9 1
fi=(19)
+23 2
840 1
+34 1
-34 17
+33 2
+25 2
+21 2
-21 2
+13 3
+8 1
-8 1
+8 1
cfi=(10)
cfn=(24)
calls=1 402 
* 21
* 1
+2 2
+3 4
cfi=(10)
cfn=(24)
calls=1 402 
* 21
* 1
+5 2
-3 2
+3 2
cfi=(10)
cfn=(24)
calls=1 402 
* 21
* 1
+2 2
+3 4
cfi=(10)
cfn=(24)
calls=1 402 
* 21
* 1
+1 2
+22 1
-16 4
+3 3
-3 1
cfi=(10)
cfn=(24)
calls=1 402 
* 21
+3 3
-3 2
+3 10
cfi=(10)
cfn=(54) __GI___tunable_set_val
calls=1 157 
* 58
+1 8
cfi=(10)
cfn=(54)
calls=1 157 
* 58
+1 9
cfi=(10)
cfn=(54)
calls=1 157 
* 58
+2 8
cfi=(10)
cfn=(54)
calls=1 157 
* 58
+2 9
cfi=(10)
cfn=(54)
calls=1 157 
* 58
+4 2
fe=(16)
706 1
fi=(19)
954 2
fe=(16)
706 2
fi=(19)
954 4
fe=(16)
706 1
cfi=(10)
cfn=(24)
calls=1 402 
* 19
+4 3
+14 1
-1 2
+1 3
+47 1
-1 1
+1 1
+46 4
cfi=(10)
cfn=(24)
calls=1 402 
* 19
+2 4
cfi=(10)
cfn=(24)
calls=1 402 
* 19
fi=(21) ./elf/../sysdeps/unix/sysv/linux/x86/cpu-features.c
27 6
fe=(16)
829 2
+45 8
fi=(19)
+7 11
fe=(16)
775 3
+27 2
-10 2
+1 2
+2 3
+1 2
+2 3
+1 2
fi=(19)
-75 3
cfn=(46) handle_intel.constprop.0
calls=1 255 
* 437
+1 1
-1 2
+1 1
cfn=(46)
calls=1 255 
* 478
+1 1
-1 1
+1 1
cfn=(46)
calls=1 255 
* 503
+3 1
-3 2
+3 1
cfn=(46)
calls=1 255 
* 459
+2 1
-2 1
+2 1
cfn=(46)
calls=1 255 
* 451
+3 1
-2 1
-1 1
+3 1
cfn=(46)
calls=1 255 
* 428
+2 1
-2 1
+2 1
cfn=(46)
calls=1 255 
* 429
+3 1
-2 1
-1 1
+3 1
cfn=(46)
calls=1 255 
* 469
+2 1
-2 1
+2 1
cfn=(46)
calls=1 255 
* 470
+3 1
-3 1
+3 1
cfn=(46)
calls=1 255 
* 494
+2 1
-2 1
+2 1
cfn=(46)
calls=1 255 
* 495
+2 1
-2 1
+2 1
cfn=(46)
calls=1 255 
* 790
+2 3
-2 1
+2 1
cfn=(52) get_common_cache_info.constprop.0
calls=1 481 
* 215
863 11
fe=(16)
424 6
cfn=(36) get_common_indices.constprop.0
calls=1 -99 
* 71
303 3
+1 2
+1 6
+5 2
+1 6
+5 2
+1 6
429 1
cfn=(40)
calls=1 43 
* 194
+2 1
+2 1
+83 1
-85 2
564 2
+7 2
+2 1
+4 2
+6 2
422 2
-3 1
+14 3
+1 4
+69 1
+10 11
+42 1
+1 1
434 11
+55 3

fn=(36)
325 1
+4 4
+3 3
+5 2
-5 1
+5 1
-5 1
+4 1
+1 1
+1 4
+1 4
+1 3
+1 2
+7 2
+2 5
+5 1
-5 1
+5 1
-5 1
+5 1
-5 2
+5 1
+7 1
-7 4
+7 1
+1 3
+6 1
-6 4
+6 1
fi=(17) ./elf/../sysdeps/unix/sysv/linux/x86/dl-minsigstacksize.h
24 2
+3 2
+1 2
+37 3
+7 1
+2 1
fe=(16)
384 2

fl=(56)
fn=(172)
25 2
+1 8
+1 2

fl=(14)
fn=(28)
35 1
+1 3
+1 2
+6 1
+1 1

fl=(52) ./setjmp/../sysdeps/x86_64/setjmp.S
fn=(156) __sigsetjmp
30 3
+2 3
+9 3
+1 6
+1 3
+4 3
+1 3
+1 3
+1 3
+1 3
+2 6
+2 3
+1 3
+1 3
+2 6
+2 3
+8 3
+3 3
+1 3
+7 3
+1 3

fl=(22)
fn=(60)
41 13
+44 13
+1 13
+1 13
+1 13
+1 13
+1 13
+1 13
+2 13
+2 13
+31 13
+1 13
+1 13
+1 13
+1 13
+1 7
+2 7
+4 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+1 6
+5 48

fl=(76) ./elf/./elf/dl-reloc.c
fn=(260) _dl_relocate_object
194 8
+14 4
-14 36
+16 4
-16 8
+14 4
+2 8
+3 4
-1 4
+1 8
+19 8
+6 20
-34 6
+38 6
+7 12
fi=(6)
71 10
+6 4
+4 3
+14 1
-8 1
+8 2
+20 2
+4 5
-2 2
fe=(76)
288 160
-83 1
fi=(6)
474 4
fe=(76)
205 2
+83 2
fi=(5) ./elf/./elf/do-rel.h
49 1
fe=(76)
288 1
fi=(5)
60 1
-11 2
+11 2
fe=(76)
288 3
-83 3
fi=(6)
474 12
fe=(76)
205 6
+83 6
fi=(5)
49 3
fe=(76)
288 3
fi=(5)
60 3
-11 6
+11 6
fe=(76)
288 8
fi=(5)
49 4
fe=(76)
288 4
fi=(5)
60 4
-11 8
+11 8
-7 1
-1 1
+11 8
fi=(6)
545 28
+4 28
+3 42
+1 14
fi=(5)
63 42
+2 216
+2 120
-4 120
+13 6
+1 8
+1 80
fi=(6)
545 40
+34 80
+2 40
cob=(3)
cfi=(126)
cfn=(396)
calls=1 31 
* 23
cob=(3)
cfi=(125)
cfn=(394)
calls=1 31 
* 7
cob=(3)
cfi=(124)
cfn=(390)
calls=1 33 
* 22
cob=(3)
cfi=(123)
cfn=(388)
calls=1 29 
* 7
cob=(3)
cfi=(121)
cfn=(384)
calls=1 29 
* 23
cob=(3)
cfi=(120)
cfn=(380)
calls=1 33 
* 17
cob=(3)
cfi=(118)
cfn=(376)
calls=1 29 
* 22
cob=(3)
cfi=(117)
cfn=(372)
calls=1 29 
* 17
cob=(3)
cfi=(116)
cfn=(368)
calls=1 29 
* 21
cob=(3)
cfi=(115)
cfn=(366)
calls=1 31 
* 7
cob=(3)
cfi=(114)
cfn=(362)
calls=1 29 
* 17
cob=(3)
cfi=(113)
cfn=(358)
calls=1 31 
* 21
cob=(3)
cfi=(112)
cfn=(354)
calls=1 29 
* 21
cob=(3)
cfi=(110)
cfn=(350)
calls=2 31 
* 38
cob=(3)
cfi=(108)
cfn=(346)
calls=1 29 
* 22
cob=(3)
cfi=(107)
cfn=(344)
calls=1 31 
* 7
cob=(3)
cfi=(106)
cfn=(340)
calls=1 29 
* 17
cob=(3)
cfi=(105)
cfn=(338)
calls=1 43 
* 7
cob=(3)
cfi=(104)
cfn=(336)
calls=1 29 
* 7
cob=(3)
cfi=(103)
cfn=(334)
calls=1 31 
* 7
cob=(3)
cfi=(102)
cfn=(332)
calls=1 66 
* 17
cob=(3)
cfi=(100)
cfn=(328)
calls=2 31 
* 46
cob=(3)
cfi=(98)
cfn=(324)
calls=1 31 
* 17
cob=(3)
cfi=(97)
cfn=(320)
calls=1 30 
* 21
cob=(3)
cfi=(96)
cfn=(316)
calls=2 29 
* 44
cob=(3)
cfi=(95)
cfn=(312)
calls=1 28 
* 21
cob=(3)
cfi=(94)
cfn=(310)
calls=1 61 
* 19
cob=(3)
cfi=(92)
cfn=(306)
calls=2 31 
* 42
cob=(3)
cfi=(90)
cfn=(302)
calls=1 29 
* 22
cob=(3)
cfi=(89)
cfn=(298)
calls=1 29 
* 19
cob=(3)
cfi=(87)
cfn=(294)
calls=1 29 
* 24
cob=(3)
cfi=(85)
cfn=(290)
calls=1 29 
* 19
cob=(3)
cfi=(84)
cfn=(288)
calls=1 65 
* 17
cob=(3)
cfi=(83)
cfn=(286)
calls=1 29 
* 7
cob=(3)
cfi=(81)
cfn=(282)
calls=2 31 
* 42
-36 40
+37 40
fi=(5)
77 121
fe=(76)
288 32
+3 24
+24 4
+3 8
+17 12
+2 32
-98 8
+3 2
+7 4
-9 2
fi=(5)
86 14
+2 14
+12 7
-14 28
+14 14
+10 10
+3 13
+1 3
fi=(6)
529 3
fi=(5)
114 3
fi=(6)
529 6
fi=(5)
114 1210
fi=(6)
529 1210
fi=(5)
114 1210
fi=(6)
529 2420
+5 2426
+1 1213
fi=(5)
113 1213
fi=(6)
535 1213
-5 1213
fi=(5)
113 2426
+7 28
+4 20
+2 10
-73 3
fi=(6)
484 3
fi=(5)
52 3
fi=(6)
484 6
fi=(5)
128 6
+1 3
+1 3
-2 3
+2 3
+3 3
-5 3
+2 3
-2 3
+1 6
+2 3
-2 3
+2 9
+2 6
-5 228
+1 114
+1 114
-2 114
+2 114
+3 114
-5 114
+2 114
-2 114
+1 228
+2 114
-2 114
+2 342
+2 228
+9 115
fi=(6)
262 230
+21 230
+4 230
+7 460
fi=(4) ./elf/../sysdeps/generic/ldsodefs.h
138 297
fi=(6)
294 3824
cfi=(77)
cfn=(268)
calls=96 840 
* 54635
* 864
+2 297
+30 680
450 294
fi=(5)
145 328
-19 351
+32 15
+1 6
fi=(6)
294 2
+22 2
-22 4
fi=(5)
160 6
+3 2
+4 2
-4 2
+4 4
-2 2
-2 2
+2 2
+1 2
-1 4
fi=(6)
294 8
508 2
-1 4
+1 4
+1 2
cfi=(15)
cfn=(428) __x86_cpu_features
calls=1 71 
* 6
cob=(3)
cfi=(79)
cfn=(278)
calls=1 86 
* 28
+1 2
fi=(5)
159 2
fi=(6)
510 2
fi=(5)
159 8
-13 66
fi=(6)
422 51
+4 68
+5 17
+9 17
-9 34
+9 17
fi=(5)
145 66
fi=(6)
296 160
+3 112
-3 112
+3 224
+2 25
+3 10
+1 15
+11 10
+7 5
cob=(3)
cfi=(84)
cfn=(288)
calls=1 65 
* 17
cob=(3)
cfi=(128)
cfn=(404)
calls=1 42 
* 7
cob=(3)
cfi=(94)
cfn=(310)
calls=1 61 
* 19
cob=(3)
cfi=(116)
cfn=(368)
calls=1 29 
* 21
cob=(3)
cfi=(117)
cfn=(372)
calls=1 29 
* 17
* 15
+3 10
fi=(5)
135 10
+3 2
fi=(6)
296 96
+3 96
-3 208
+3 4
fi=(5)
50 8
fe=(76)
308 14
fi=(6)
-14 29
fe=(76)
+49 20
+3 4
-3 4
+3 4
+4 8
+1 16
cfi=(127)
cfn=(400)
calls=4 117 
* 24
* 8
-63 6
fi=(5)
53 2
175 7
+2 2
+1 2
-1 1
+3 1
-3 4
+3 2
-3 10
+1 10
-1 5
+3 5
-3 20
+3 10
+8 6
fi=(6)
+74 12
+21 12
+4 12
+7 24
fi=(4)
138 18
fi=(6)
294 204
cfi=(77)
cfn=(268)
calls=6 840 
* 3251
* 54
+2 18
+30 36
450 12
fi=(5)
191 18
-16 18
+30 4
fi=(6)
+91 2
+3 2
-3 2
+3 4
-3 2
+3 2
-3 4
fe=(76)

fl=(23)
fn=(62)
37 5
+3 1
+18 2
+4 2
+16 5

fl=(130)
fn=(410)
95 8
+1 8
+1 4
+6 20
+1 119
+1 82
+2 12
+5 4

fl=(135) ./elf/./elf/dl-call-libc-early-init.c
fn=(430) _dl_call_libc_early_init
27 1
+2 2
-2 1
+6 3
-6 1
+6 3
-6 1
+6 1
cfi=(134)
cfn=(426)
calls=1 +41 
* 177
+4 2
+2 4
+2 1
-1 1
+1 2
-1 1
cob=(3)
cfi=(136)
cfn=(432)
calls=1 -7 
* 1108

fl=(1) ???
fn=(0) 0x00000000000202b0
0 2
cfi=(2)
cfn=(2) _dl_start
calls=1 527 
0 155440
0 14
cfi=(144) ./elf/./elf/dl-init.c
cfn=(466) _dl_init
calls=1 77 
0 366
0 3
cob=(5)
cfi=(150)
cfn=(492) (below main)
calls=1 0 
0 144757794

fl=(24)
fn=(84)
42 8
+2 16

fn=(254) __tls_init_tp
68 2
fi=(220) ./elf/../include/list.h
-24 1
fe=(24)
+24 1
fi=(220)
-25 1
fe=(24)
+26 1
+3 1
fi=(220)
-29 1
+1 1
+1 1
+2 1
fe=(24)
+28 4
+1 2
+1 1
+5 2
+5 1
+6 1
-3 1
+3 1
-6 3
+6 1
+13 3
fi=(74) ./elf/../sysdeps/unix/sysv/linux/rseq-internal.h
-72 1
fe=(24)
+72 1
cfi=(10)
cfn=(24)
calls=1 402 
* 20
fi=(74)
-74 3
+2 6
+3 2
+3 1
fe=(24)
+83 3
+7 2
+2 1
+1 1
+1 3

fn=(66) __tls_pre_init_tp
53 3
+3 8
+5 1
-5 1
+5 1
+1 1
-6 1
+8 1

fl=(141) ./elf/../sysdeps/x86_64/dl-trampoline.h
fn=(448) _dl_runtime_resolve_xsave
67 2
+5 2
+3 2
+2 2
+10 2
+6 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+4 2
+1 2
+3 2
+1 2
+2 2
+1 2
+1 2
+1 2
+1 2
+1 2
+2 2
+7 2
+1 2
+1 2
cfi=(142)
cfn=(450)
calls=2 -80 
* 1555
+1 2
+5 2
+1 2
+1 2
+2 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+2 2
+2 2
+4 2
+2 2

fl=(67)
fn=(460) _dl_unload_cache
537 1
+1 4
-1 1
+3 2
cfi=(127)
cfn=(462)
calls=1 117 
* 6
+1 1
+4 1
+2 2

fn=(210)
416 10
+2 2
+3 3
+74 1
208 1
495 2
+3 3
fi=(69) ./elf/../sysdeps/x86/dl-procinfo.h
39 2
+3 3
cfi=(32)
cfn=(90)
calls=1 +66 
* 25
* 4
fe=(67)
212 6
cfi=(10)
cfn=(24)
calls=1 402 
* 21
* 1
+16 2
-16 1
+6 2
+10 1
-7 5
+9 3
+1 1
-37 2
+37 1
+4 2
-5 24
+1 8
-37 16
+37 8
+4 16
+4 27
cfn=(218) _dl_cache_libcmp
calls=9 370 
* 668
+1 18
359 8
+3 8
228 8
360 4
228 11
+2 5
+20 6
+3 6
+2 12
cfn=(218)
calls=3 370 
* 366
* 6
+2 2
-9 6
-30 2
+1 1
+95 1
-95 1
-1 8
+96 3
+41 4
-88 4
+10 4
+1 3
fi=(68) ./elf/../sysdeps/generic/dl-cache.h
125 5
fe=(67)
294 2
+9 2
+3 2
+2 3
+1 2
+5 2
+1 4
+7 2
+21 4
513 2
+12 2
cfi=(22)
cfn=(60)
calls=1 41 
* 35
* 12
+1 1
-1 1
+1 1
-1 1
+1 1
cfi=(29)
cfn=(80)
calls=1 212 
* 11
* 1
+1 1
cfi=(54)
cfn=(166)
calls=1 40 
* 89
+1 8
-3 2
424 4
cfi=(53)
cfn=(212) _dl_sysdep_read_whole_file
calls=1 36 
* 91
* 1
+8 5
+1 8
+3 4
+1 1
-1 3
fi=(68)
194 1
+1 5
fe=(67)
444 1
+1 2

fn=(218)
370 12
+1 12
+32 12
-33 24
+1 30
+2 67
+2 67
-2 134
+20 128
+2 128
-12 55
+2 55
+14 55
+1 55
-29 110
+32 9
-28 6
+8 3
-2 6
+1 6
-1 3
+2 9
+2 3
-3 3
+3 9
+2 6
+9 27

fl=(49) ./string/../sysdeps/x86_64/strcspn.S
fn=(146) strcspn
25 1
+2 1
+7 1
+1 1
+2 1
+1 1
+1 1
+1 1
+1 33
+3 3
+7 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+1 1
+2 1
+1 1
+1 1
+9 3
+12 1
+2 1
+1 1
+1 1
-4 14
+2 14
+1 14
+1 14
+2 15
+1 15
+1 15
+2 14
+1 14
+1 14
+2 14
+1 14
+1 14
+4 1
+2 1
+7 1
+4 1

fl=(73) ./elf/./elf/dl-version.c
fn=(244) _dl_check_map_versions
155 32
+15 4
-15 8
+15 8
+2 20
+2 4
+1 4
-1 4
+1 4
+2 8
+3 4
-16 2
-8 2
+28 2
-4 2
+4 4
+16 2
36 4
200 2
36 10
+1 5
-1 10
+2 21
cfi=(53)
cfn=(162)
calls=7 +30 
* 844
* 14
208 6
+5 2
-71 4
+71 6
+8 2
-2 2
-2 4
+4 2
-4 12
+4 7
-2 7
-2 14
+4 7
-4 72
56 36
+8 27
+6 27
+16 9
+1 18
+2 9
+5 81
+14 218
+12 300
+4 100
-30 200
224 36
+3 27
+5 7
-11 7
110 9
+3 36
cfi=(32)
cfn=(90)
calls=9 -5 
* 288
* 38
236 8
+14 4
+3 8
+10 42
-7 168
+3 126
-3 8
+3 6
+8 6
+6 3
fi=(28)
44 3
fe=(73)
273 3
fi=(28)
44 3
cfi=(27)
cfn=(72)
calls=3 +34 
* 108
fe=(73)
272 3
fi=(28)
44 3
fe=(73)
274 6
+13 3
-3 3
+3 12
+2 9
+3 8
+4 6
+7 9
+1 9
-1 27
+1 9
+1 9
-2 9
+2 18
+1 27
+3 27
+5 7
-15 7
+2 7
-2 7
+2 7
-2 7
+2 14
-2 2
+2 2
-2 2
+2 2
-2 2
+2 4
+16 6
+39 36
-29 9
+3 8
+4 42
+6 42
+1 42
+1 42
-1 126
+1 42
-1 42
+1 42
+1 42
+3 126
+4 42
-14 88
+10 6
164 2
+86 2
-94 2
+94 3

fn=(242) _dl_check_all_versions
361 6
+4 5
-2 2
+4 24
cfn=(244)
calls=4 155 
* 4199
-2 4
+2 12
-1 4
-1 8
+5 7

fl=(38)
fn=(108)
175 5
+1 1
-1 6
+1 1
-1 1
+1 1
-1 1
+1 1
-1 1
+1 2
cfi=(10)
cfn=(24)
calls=1 402 
* 21
* 1
+2 2
+1 3
+26 2
-26 1
+25 1
cfi=(39)
cfn=(110)
calls=1 29 
* 47
fi=(40) ./elf/./dl-hwcaps.h
54 1
fe=(38)
205 1
-1 1
fi=(40)
56 1
+32 1
+1 1
+1 1
fe=(38)
-35 2
cfi=(41)
cfn=(116)
calls=1 -4 
* 13
* 2
fi=(40)
-1 1
+2 2
-2 1
+34 2
+1 2
+1 1
fe=(38)
-32 2
-1 2
+1 2
+1 2
-1 2
-3 4
cfi=(41)
cfn=(116)
calls=2 -4 
* 114
* 2
cfi=(41)
cfn=(116)
calls=1 -4 
* 122
* 6
+48 5
fi=(28)
-47 1
cfi=(27)
cfn=(76)
calls=1 -21 
* 25
fe=(38)
+47 1
+2 2
+3 2
fi=(40)
-52 1
fe=(38)
+55 1
-3 1
fi=(40)
-54 2
+3 1
fe=(38)
+58 2
cfi=(41)
cfn=(122)
calls=1 -90 
* 12
* 2
fi=(40)
-61 1
+2 2
-2 1
+34 2
+1 2
+1 1
fe=(38)
+40 4
+1 2
-1 6
+2 2
+1 2
-2 6
-3 4
cfi=(41)
cfn=(116)
calls=2 -77 
* 114
* 2
cfi=(41)
cfn=(116)
calls=1 -77 
* 122
* 6
+8 2
+9 1
-15 1
+15 2
-15 1
+15 8
+9 2
+4 7
cfi=(43)
cfn=(124)
calls=1 22 
* 41
+1 2
+1 1
+4 1
+1 2
+1 1
-20 2
+19 1
+1 1
-20 2
-1 4
+70 1
+1 1
+4 1
-5 2
+1 4
+4 2
-4 1
+4 4
+1 1
-1 1
+1 2
+1 2
-2 5
+1 1
-1 1
+1 2
+1 2
-2 5
+5 1
+3 2
-3 2
+3 15
+7 1
-7 2
+2 3
+1 4
+2 1
fi=(221) ./elf/../sysdeps/x86/dl-hwcap.h
57 1
fe=(38)
233 2
fi=(221)
57 1
fe=(38)
233 2
fi=(221)
57 1
fe=(38)
233 1
+1 1
cfi=(22)
cfn=(60)
calls=1 41 
* 17
+1 1
+1 1
-6 1
+4 1
+1 1
-5 1
+5 1
+1 1
-1 2
-5 4
+10 3
-2 3
+2 1
+1 1
+1 1
-1 1
+4 4
+1 1
-1 1
+4 2
+4 1
-1 1
+1 4
-1 2
+4 3
+1 3
+19 10
+6 2
fi=(28)
56 1
cfi=(27)
cfn=(76)
calls=1 -21 
* 25
* 1
fe=(38)
283 2
+8 1
fi=(40)
54 1
+2 1
+34 1
-2 2
fe=(38)
-5 1
291 1
fi=(40)
54 1
+35 1
fe=(38)
291 1
fi=(40)
90 1
fe=(38)
-10 2
cfi=(41)
cfn=(116)
calls=1 -29 
* 13
* 2
fi=(40)
-26 2
+2 1
fe=(38)
+27 1
fi=(40)
-29 1
+34 2
+1 2
+1 1
fe=(38)
-8 2
+1 4
+7 2
-7 10
cfi=(29)
cfn=(128)
calls=2 199 
* 26
+4 2
+2 2
+2 2
-2 4
-9 4
cfi=(41)
cfn=(116)
calls=2 -29 
* 114
* 2
cfi=(41)
cfn=(116)
calls=1 -29 
* 122
* 6
304 1
+2 1
-2 1
-48 2
+72 1
-72 1
376 2
+13 2
-58 1
+45 1
+13 1
-58 1
-75 1
+82 1
+10 2
-92 1
+88 1
+4 3
-4 1
+3 7
-3 2
-3 1
+3 1
cfi=(29)
cfn=(128)
calls=1 199 
* 18
* 2
-3 1
+3 1
cfi=(29)
cfn=(128)
calls=1 199 
* 18
* 2
+3 2
-3 4
+3 5
+1 12
+1 2
-2 1
+2 1
cfi=(29)
cfn=(128)
calls=1 199 
* 15
* 2
-2 2
+5 8
cfi=(29)
cfn=(128)
calls=2 199 
* 30
* 4
+2 5
+5 6
+1 1
-1 3
+1 7
-1 25
+5 11
+4 1
-1 1
+1 2
-4 12
+4 2
-1 2
+1 13
-1 9
+1 18
+1 24
-1 12
-1 12
+2 24
-1 24
-1 24
+4 9
+3 1
+2 2
-1 1
-1 1
+2 1
-2 1
+2 2
-1 1
+1 2
+2 6
+1 2
+3 2
-6 2
+6 3
+7 8
+1 1
-1 2
+3 2
-3 3
+1 3
-1 6
+3 6
+3 4
-80 2
+86 9
-20 1
+1 2
-6 3
259 2
+1 2
+1 4
-1 3
+12 4
-44 2
+34 4
-2 3

fl=(19)
fn=(46)
255 24
-5 24
+16 12
-16 72
+13 12
+1 36
-3 24
+11 60
+5 24
+2 12
+1 12
-1 12
+5 48
cfn=(48) intel_check_word.constprop.0
calls=12 123 
* 3876
+2 24
+3 60
cfn=(48)
calls=12 123 
* 1156
+2 24
+3 5
cfn=(48)
calls=1 123 
* 20
+2 2
+3 5
cfn=(48)
calls=1 123 
* 255
+2 2
-35 3
+39 3
+5 96

fn=(48)
123 78
-4 78
+10 104
-10 26
+10 52
+2 52
+71 200
-71 102
+2 63
+2 126
+8 126
+51 102
+22 51
fi=(20) ./elf/../bits/stdlib-bsearch.h
28 51
-1 102
+4 102
+1 51
fe=(19)
+78 102
fi=(20)
-79 76
+1 38
fe=(19)
+78 76
+3 345
fi=(20)
-84 820
+2 512
+1 256
fe=(19)
+78 512
+15 15
246 104
fi=(20)
37 63
-8 151
fe=(19)
155 36
+3 36
-6 54
+3 14
+9 14
+23 19
-32 57
+3 57
+4 50
+2 100
+2 50
+2 36
+4 11
+2 22
+6 14
+3 8
+1 12
-8 4
+2 4
-1 4
-1 4
+2 8
-2 4
+3 12
-2 12
+2 8
-10 24
+1 10
+11 12
-26 4
+9 4
+23 2
-32 6
+3 6
+4 8
+2 16
+2 8
-11 3
+7 6
+2 12

fn=(52)
481 1
+17 1
-17 4
+16 1
-16 1
+15 1
-15 3
+18 1
-1 1
+9 2
+3 3
+11 1
-11 1
-5 1
+21 3
+4 2
681 4
+1 5
+4 2
+9 2
-2 1
+2 2
-1 1
+1 3
535 6
+3 8
+7 2
-7 9
+7 6
+3 26
+14 2
+4 1
+3 1
+1 1
-4 2
+3 3
+6 2
-37 6
+15 2
+4 1
+1 1
-1 2
+18 2
-68 6
+74 4
+8 7
+2 2
+4 3
+2 1
+2 5
-4 1
+16 1
-16 3
+21 2
-21 4
+3 1
+1 4
-4 1
+6 4
+3 2
+5 1
+2 2
+1 1
+1 1
-2 2
+1 1
-19 5
+46 2
+1 1
+1 2
+2 2
-1 3
-23 2
+7 1
+2 2
-16 1
+22 1
-6 2
+1 1
+5 1

fl=(45)
fn=(180)
38 3
+3 3
-1 6
+4 6
+4 3

fn=(140) _dl_debug_state
116 2
+1 2

fn=(134) _dl_debug_initialize
56 1
+3 2
+4 1
-6 1
+4 1
+2 2
+22 2
+5 2
+1 1
+1 1
-1 1
-1 1
+5 2
+4 2
+8 2
-43 2
+32 6

fl=(58)
fn=(184)
29 6
+1 6
+5 9
cfi=(59)
cfn=(186)
calls=3 153 
* 24

fl=(12)
fn=(234) _dl_sort_maps
288 20
+8 2
-8 2
+8 4
+4 16
-79 4
-37 2
+37 2
-36 8
+1 2
-1 2
+1 2
-1 4
+1 6
-1 6
+1 6
-1 12
+36 30
+8 6
-3 2
+2 2
+1 2
-8 2
+5 2
+3 8
+2 18
+2 8
-90 40
cfn=(236) dfs_traversal.part.0
calls=8 -3 
* 284
+93 16
+18 4
+13 2
+33 2
-26 8
cfi=(29)
cfn=(80)
calls=2 -62 
* 22
* 2

fn=(22)
279 2
+1 4
cfi=(10)
cfn=(24)
calls=1 402 
* 20
+2 3
-1 1
+2 2

fn=(236)
140 64
+8 8
-2 8
+2 16
+2 20
+3 20
-3 40
+9 16
+15 24
+1 8
+1 48
-17 12

fl=(10)
fn=(18)
279 9
-9 9
71 310
+6 61
-3 122
+3 5518
+4 122
+5 122
fi=(11) ./elf/./elf/dl-tunables.h
+54 61
fe=(10)
-54 244
fi=(11)
+55 136
-1 49
+1 14
-1 61
+1 122
fe=(10)
320 244
-18 8540
+6 13420
fi=(11)
140 549
+1 1098
-1 89
+1 356
-1 445
fe=(10)
354 8
74 122

fn=(24)
402 33
+3 231
+9 33
-9 126
+9 10
+17 165
+2 33
-9 23
+1 23

fn=(54)
157 15
-55 5
+55 5
-55 5
+55 5
-55 35
+9 5
+1 5
fi=(222) ./elf/./dl-tunable-types.h
-22 10
fe=(10)
+22 20
+1 40
fi=(11)
+8 10
+1 5
fe=(10)
-6 15
fi=(11)
+15 5
fe=(10)
-12 10
+4 10
+7 10
+1 10
+3 30
+1 5
+1 5
+1 5
+24 5
fi=(11)
-30 15
fe=(10)

fl=(2)
fn=(240) version_check_doit
696 3
+2 4
cfi=(73)
cfn=(242)
calls=1 361 
* 4271
* 2
+4 2

fn=(64)
1320 2
205 1
311 1
1320 2
2818 1
1320 3
2829 1
1320 2
2698 1
1320 2
311 1
1320 3
207 1
310 1
205 1
+99 3
1332 1
cfi=(24)
cfn=(66)
calls=1 53 
* 17
2677 3
+6 5
-4 1
+4 1
+2 3
cfi=(25) ./elf/./elf/dl-environ.c
cfn=(68) _dl_next_ld_env_entry
calls=1 28 
* 403
* 2
cfi=(25)
cfn=(68)
calls=1 28 
* 7
* 6
+4 3
-2 1
+2 3
+1 1
-1 3
+1 6
-1 32
+9 6
2845 4
+32 2
1348 1
+1 2
-1 2
+1 2
2719 2
+7 2
1627 9
cfi=(26)
cfn=(70)
calls=1 59 
* 230
* 1
+2 2
+1 1
+6 2
-6 1
+1 2
+1 3
+4 1
cfi=(26)
cfn=(82)
calls=1 31 
* 36
+1 2
1140 1
1326 1
1169 1
-29 1
+11 1
+18 2
-21 1
+21 1
-19 1
-4 1
+23 1
-21 1
+21 2
+57 1
-83 1
+23 1
+4 1
+19 1
+22 1
+15 5
-56 116
1275 4
+2 1
1169 18
fi=(30)
105 2
fe=(2)
1282 22
+6 4
cfi=(31)
cfn=(88)
calls=1 868 
* 20
-7 26
+1 13
+6 13
-6 26
fi=(30)
212 4
+1 2
95 8
+10 2
212 1
105 1
-2 1
-3 1
+2 1
+3 1
-4 2
+92 4
-1 1
-87 3
+3 3
+1 2
+1 2
+4 3
+4 3
+3 3
+1 2
+4 1
+1 4
+4 2
+1 1
+3 2
+3 1
+1 4
+5 2
+2 2
+5 2
+14 1
-1 2
+2 2
fe=(2)
1174 1
-5 1
+5 2
-5 2
+30 1
-9 1
+27 1
-27 1
+2 1
-3 1
+10 2
-20 2
-10 1
+10 1
+1 9
-11 2
+57 4
-1 4
+1 8
-1 4
+2 8
+1 1
+2 12
+1 14
+4 8
+1 8
+1 4
+1 10
+1 1
+4 1
-74 1
+74 2
-74 2
+74 3
-74 3
+74 6
-74 6
1271 1
1169 1
1271 1
1169 2
1294 1
+3 2
+2 1
-5 2
+3 2
+2 2
+2 2
1662 3
+2 1
-1 1
+1 2
+1 2
-2 1
+2 1
-2 2
cfi=(32)
cfn=(90)
calls=1 108 
* 34
* 2
+7 1
+3 1
-5 1
+3 1
+2 1
+1 2
+4 2
+2 2
fi=(3) ./elf/./get-dynamic-info.h
39 3
+6 1
-2 1
+2 2
+9 1
+5 1
+3 1
+2 1
-3 1
-3 1
-3 17
+13 5
-23 20
+23 21
-23 84
+4 52
+5 24
+2 5
+16 3
+25 3
+5 2
+7 2
+1 3
+22 3
+5 2
+2 2
+2 2
+2 2
+1 1
+3 3
+2 3
+1 2
+9 2
+6 2
+1 2
+3 2
fe=(2)
1688 3
+7 2
cfi=(8)
cfn=(14)
calls=1 25 
* 29
+3 2
fi=(33) ./elf/./setup-vdso.h
24 2
fi=(35) ./elf/../sysdeps/unix/sysv/linux/dl-vdso-setup.h
+21 1
fe=(2)
1723 1
cfi=(13)
cfn=(100)
calls=1 46 
* 90
* 8
fi=(37) ./elf/./dl-main.h
109 5
cfi=(31)
cfn=(106)
calls=1 706 
* 2142
fe=(2)
1731 3
cfi=(45)
cfn=(134)
calls=1 56 
* 30
+7 1
-7 1
+2 1
+5 1
+4 1
+3 1
-3 3
+1 2
+3 1
+5 1
-7 1
+7 1
+1 3
+12 2
+1 2
+5 1
-3 2
+2 1
+1 2
+5 3
+1 5
-1 2
233 1
-1 1
+1 3
+1 2
-2 1
+2 2
1793 2
+5 1
-1 1
+1 1
+24 1
cfi=(46)
cfn=(136)
calls=1 197 
* 6
* 1
fi=(47) ./elf/../sysdeps/generic/dl-debug.h
29 3
+1 2
fe=(2)
1828 2
+1 1
cfi=(45)
cfn=(140)
calls=1 116 
* 2
+1 1
+4 3
cfi=(48)
cfn=(142)
calls=1 28 
* 16
+5 3
+2 1
+2 2
+9 2
+16 4
cfi=(65) ./io/../sysdeps/unix/sysv/linux/access.c
cfn=(202) access
calls=1 25 
* 9
* 2
+76 4
+16 3
85 1
1970 1
85 2
1970 2
85 1
1970 5
cfi=(66) ./elf/./elf/dl-deps.c
cfn=(204) _dl_map_object_deps
calls=1 159 
* 6938
92 1
1976 1
92 2
+9 2
1976 2
+1 5
-1 4
+1 6
-1 12
+4 4
+1 3
+1 1
+2 2
+1 4
-1 9
+1 9
+12 3
+1 2
+2 1
+2 3
+2 1
-4 1
+5 1
-1 2
+14 2
+1 2
+1 3
+11 2
+2 1
-2 1
+2 2
-2 1
+1 2
+1 1
-1 2
+1 1
cfi=(51) ./elf/./elf/dl-error-skeleton.c
cfn=(238) _dl_receive_error
calls=1 238 
* 4299
+10 2
+1 2
+3 2
862 1
fi=(223) ./elf/../sysdeps/unix/sysv/linux/dl-osinfo.h
64 2
fe=(2)
864 1
+6 1
+3 1
+7 1
-5 1
2052 3
2282 3
1778 2
+6 1
-6 2
+6 1
+2 3
fi=(30)
198 4
+2 1
+1 1
+2 1
-3 3
+3 1
fi=(3)
59 4
+3 4
+2 4
fi=(34) ./elf/../sysdeps/unix/sysv/linux/dl-vdso.h
-24 1
+1 2
fe=(2)
2331 1
1325 1
2342 1
-4 2
+10 1
-6 1
+6 1
+3 2
+8 1
fi=(30)
36 1
fe=(2)
2359 1
fi=(30)
37 3
+3 1
+13 6
-13 3
+9 6
-9 1
+9 20
+4 15
-16 12
+34 3
cfi=(75) ./elf/../sysdeps/x86/dl-cet.c
cfn=(258) _dl_cet_check
calls=1 252 
* 30
fe=(2)
2361 2
+54 3
+3 1
85 4
2422 1
+1 19
+2 8
+5 8
+2 8
+6 4
+2 12
+1 24
cfi=(76)
cfn=(260)
calls=3 194 
* 84136
+4 10
+1 2
-23 1
+23 1
cfi=(46)
cfn=(402)
calls=1 1015 
* 28
-23 6
92 3
+1 1
2454 1
93 1
2454 1
+5 4
+2 1
+7 3
cfi=(46)
cfn=(406)
calls=1 528 
* 146
+3 2
fi=(3)
72 2
+10 3
+1 4
+1 4
+1 4
+2 4
+5 4
+1 4
+1 5
fi=(35)
-64 3
+3 1
+3 1
+3 1
fi=(34)
+16 2
fe=(2)
2434 1
+1 1
-3 2
+49 3
+2 4
+10 1
cfi=(129)
cfn=(408)
calls=1 561 
* 571
+5 2
cfi=(7) ./elf/./elf/dl-minimal.c
cfn=(416) __rtld_malloc_init_real
calls=1 76 
* 2372
+3 1
cfi=(133)
cfn=(424)
calls=1 30 
* 415
85 1
2507 1
+1 3
85 3
2508 2
cfi=(76)
cfn=(260)
calls=1 194 
* 4806
92 3
+9 2
2516 3
cfi=(135)
cfn=(430)
calls=1 27 
* 1309
+7 1
cfi=(9)
cfn=(456)
calls=1 262 
* 2
+4 3
cfi=(48)
cfn=(458)
calls=1 40 
* 21
+5 2
cfi=(45)
cfn=(180)
calls=1 38 
* 7
+1 1
-1 1
+2 1
cfi=(45)
cfn=(140)
calls=1 116 
* 2
+1 1
+4 1
cfi=(67)
cfn=(460)
calls=1 537 
* 18
+5 8
1741 4
1995 2
+50 2
cfn=(246) init_tls
calls=1 756 
* 784
* 2
2726 4
+2 2
+1 1
85 1
1847 1
85 2
1847 1
85 1
1847 2
cfn=(144) handle_preload_list
calls=1 894 
* 3154
* 1
92 3
+9 3
1948 16
+1 1
-1 1
+4 3
+1 1
+1 2
+1 2
-7 2
fi=(30)
170 3
-39 2
fe=(2)

fn=(158) map_doit
663 2
+2 1
-2 1
+2 1
+1 2
-1 2
+1 3
cfi=(31)
cfn=(160)
calls=1 2022 
* 2712
* 1
+2 2

fn=(246)
756 3
+2 1
+4 1
-4 1
+4 2
+11 1
fi=(28)
44 1
fe=(2)
768 1
+4 1
fi=(28)
44 1
cfi=(27)
cfn=(72)
calls=1 +34 
* 36
fe=(2)
783 1
-12 1
+6 1
-9 1
+11 1
+4 1
+2 3
-1 2
+3 8
+4 1
+2 1
-2 2
-5 1
-1 2
+10 3
+3 2
cfi=(46)
cfn=(248)
calls=1 97 
* 79
+3 1
cfi=(46)
cfn=(250)
calls=1 221 
* 76
+7 1
cfi=(46)
cfn=(252)
calls=1 422 
* 442
* 1
+1 2
+6 1
+3 2
-3 1
+3 6
+3 1
cfi=(24)
cfn=(254)
calls=1 68 
* 75
+1 1
+3 5
-39 3
-1 7

fn=(2)
527 10
85 1
fi=(6)
-40 1
fe=(2)
557 1
-4 1
85 2
556 1
85 1
fi=(3)
-40 1
fe=(2)
556 1
fi=(3)
45 2
+9 1
+5 1
+3 1
+2 1
+4 1
-7 1
-3 1
-3 14
+13 4
-23 16
+23 14
-23 56
+4 36
+5 20
+2 5
+3 4
fi=(4)
+21 1
fi=(3)
-8 3
+10 4
+1 4
+1 4
+1 4
+2 4
+5 4
+1 4
+1 4
+3 3
+5 2
+7 3
+1 3
+8 2
+1 2
+5 3
+3 3
fe=(2)
573 1
fi=(6)
71 1
fe=(2)
573 42
fi=(6)
414 1
fi=(5)
86 1
fe=(2)
573 2
fi=(5)
49 1
+37 1
-37 1
+37 1
+2 1
-2 1
+2 1
-2 1
+27 2
-27 1
fe=(2)
573 2
fi=(5)
49 1
+37 1
-37 1
+37 1
+2 1
-2 1
+2 1
-2 1
+27 3
+1 2
fi=(6)
534 2
fi=(5)
114 282
fi=(6)
534 282
+1 142
fi=(5)
113 142
fi=(6)
535 284
fi=(5)
113 284
+5 4
+8 7
fi=(6)
326 12
fi=(5)
126 21
+2 7
+2 7
-2 7
fi=(6)
287 7
fi=(5)
130 7
-2 7
+1 14
fi=(6)
287 14
+9 70
+3 14
+27 33
fe=(2)
573 6
fi=(5)
50 1
fi=(4)
+30 2
fi=(6)
326 2
+20 12
+1 6
fe=(2)
575 1
+13 1
cfi=(7)
cfn=(12) __rtld_malloc_init_stubs
calls=1 42 
* 10
+4 2
85 1
488 2
85 3
488 1
cfi=(8)
cfn=(14)
calls=1 25 
* 29
+2 2
-1 1
+1 2
+17 1
-15 1
-2 1
+17 1
-15 1
+9 1
-11 1
+17 1
cfi=(9)
cfn=(16)
calls=1 85 
* 153347
* 1
+2 2
+98 9
fi=(3)
62 4
+2 4
fe=(2)
573 3

fn=(144)
894 10
+5 1
-5 2
+5 2
+6 1
-64 1
+54 3
+7 3
cfi=(49)
cfn=(146)
calls=1 25 
* 251
* 1
+1 3
+9 1
191 1
914 2
191 2
916 2
-80 1
+5 5
-10 1
+8 1
-4 1
+1 1
+1 1
+4 1
cob=(2)
cfi=(50)
cfn=(148) 0x0000000004002080
calls=1 0 
* 2813
+1 3
+8 3
+67 1
-18 2
+21 9
-15 4
cfi=(29)
cfn=(80)
calls=1 212 
* 19
+1 2

fl=(27)
fn=(176)
95 2
+2 8

fn=(76)
35 105
+1 21
+11 21
-11 42
+11 42
+3 21
-3 21
+3 118
+18 21
+1 21
+2 84
-16 8
+1 4
+2 2
+1 14
cfi=(60)
cfn=(188)
calls=2 -12 
* 18
* 2
+2 4
+2 4
+2 2
+4 2
-4 4
-23 1
-1 1
+1 1
+1 2
-2 2

fn=(72)
78 8
+4 8
-4 32
+7 8
+1 24
fi=(28)
-30 8
cfi=(27)
cfn=(76)
calls=8 -21 
* 235
fe=(27)

fl=(66)
fn=(204)
159 5
+1 3
-1 1
+1 1
-1 2
+1 1
-1 3
+1 1
-1 4
+1 12
-8 1
-7 1
+15 1
-14 1
+6 1
+8 1
-15 1
+7 1
-8 1
+1 1
+7 1
-7 1
+31 3
-28 3
-2 1
+31 1
-33 2
+2 2
+30 2
-30 1
-1 4
+7 4
+24 2
-32 1
+60 1
-60 2
+36 1
fi=(72) ./elf/../include/scratch_buffer.h
77 3
fe=(66)
198 1
fi=(72)
78 1
fe=(66)
200 2
+98 1
198 1
+4 1
+7 1
+4 4
-4 3
+4 12
+11 12
-18 2
+18 4
433 12
+2 2
+3 2
-3 4
+3 2
fi=(28)
56 2
cfi=(27)
cfn=(76)
calls=2 -21 
* 50
* 2
fe=(66)
439 4
+6 2
+1 10
cfi=(29)
cfn=(80)
calls=2 212 
* 22
+1 10
cfi=(29)
cfn=(80)
calls=2 212 
* 22
+4 2
-1 2
+5 16
204 9
458 9
-1 4
+1 8
199 3
+27 10
+5 2
+6 2
-5 2
-1 2
+2 4
+4 8
-31 2
+31 2
+1 6
+6 8
cfi=(31)
cfn=(206)
calls=2 -6 
* 108
* 6
+4 4
-2 2
+2 4
cob=(2)
cfi=(50)
cfn=(152) 0x0000000004002050
calls=2 0 
* 5433
+1 4
+9 2
+2 4
+5 10
+6 2
+2 2
-8 4
+3 2
+1 2
+1 2
+1 2
+4 10
+4 6
+1 3
-43 200
+1 96
+44 144
-38 4
fi=(72)
85 3
fe=(66)
464 6
+1 1
+3 4
+11 3
fi=(28)
56 1
cfi=(27)
cfn=(76)
calls=1 -21 
* 25
* 1
fe=(66)
481 2
+5 3
+1 1
-1 2
+4 2
-2 1
+2 1
-2 2
+11 3
+5 3
-14 9
-2 3
+4 3
+7 3
-2 6
-5 1
+7 1
-2 2
+2 2
+5 1
-14 6
+17 2
+52 3
+37 3
+15 1
-11 1
+11 1
-14 2
+20 1
-1 3
+1 3
-1 5
cfi=(12)
cfn=(234)
calls=1 288 
* 260
+5 1
+3 1
-1 1
+2 2
+7 3
+3 3
+3 8
214 25
+3 2
fi=(72)
-86 6
cfi=(71)
cfn=(228)
calls=2 30 
* 40
fe=(66)
+86 4
+4 6
611 2
cfi=(29)
cfn=(80)
calls=1 212 
* 11
* 1
-53 2
160 2
380 6

fn=(208) openaux
61 6
+7 2
-4 4
+1 2
-1 16
cfi=(31)
cfn=(160)
calls=2 2022 
* 5275
* 2
+5 4

fl=(15)
fn=(32)
37 1
+2 3
+2 1
cfi=(16)
cfn=(34)
calls=1 399 
* 7206

fn=(428)
71 1
-32 3
+32 2

fl=(7)
fn=(12)
42 1
+1 2
+1 2
+1 2
+1 2
+1 1

fn=(420) lookup_malloc_symbol
61 8
+3 4
-3 16
+3 4
-3 4
+3 8
-1 4
+1 12
cfi=(77)
cfn=(268)
calls=4 840 
* 2104
+4 28
+1 28
+2 4
fi=(132) ./elf/./dl-sym-post.h
-30 8
+12 12
fe=(7)
+19 20

fn=(416)
76 2
+10 1
fi=(131) ./elf/../sysdeps/generic/dl-hash.h
-41 1
fe=(7)
+31 1
fi=(131)
-32 1
fe=(7)
+32 5
+11 1
-1 1
fi=(131)
-43 1
+5 3
+14 4
-17 3
+3 15
+14 20
-17 15
fe=(7)
+46 2
fi=(131)
-24 1
fe=(7)
+22 1
+2 2
fi=(131)
-19 1
fe=(7)
+19 1
cfn=(420)
calls=1 -30 
* 575
+1 3
-1 1
+1 1
cfn=(420)
calls=1 -31 
* 575
+1 3
-1 1
+1 1
cfn=(420)
calls=1 -32 
* 561
+1 3
-1 1
+1 1
cfn=(420)
calls=1 -33 
* 553
+5 1
+1 1
+1 1
+1 1
+1 7

fl=(26)
fn=(70)
59 42
+3 6
+18 2
+3 2
-3 2
+3 2
cfi=(22)
cfn=(60)
calls=2 -42 
* 52
+4 4
-4 4
+9 4
fi=(28)
-48 6
cfi=(27)
cfn=(72)
calls=2 +34 
* 100
fe=(26)
+48 1
fi=(28)
-48 3
cfi=(27)
cfn=(72)
calls=1 +34 
* 43
* 3
fe=(26)
+51 6
+5 3
-2 3
+6 3
-4 3
+4 3
-5 3
+4 3
+1 3
-1 3
+1 6
cfi=(29)
cfn=(80)
calls=3 212 
* 44
* 6
+2 3
+13 6
+6 1
+2 7
+3 2
-3 14
+3 4
+9 3
-7 3
+4 3
+3 15
+2 1
-2 3
+2 15
-2 45
+16 6
-5 3
+5 3
-6 3
+6 3
-6 3
+6 6
+2 4
+3 4
-3 4
+7 8
+4 4
+8 2
+3 2
+10 3
-10 4
+10 6
+2 2
+21 2
-21 2
cfi=(22)
cfn=(60)
calls=2 41 
* 70
* 6
+17 2
-13 6
+50 6
cfi=(29)
cfn=(128)
calls=2 -46 
* 34
* 2
+5 4
+1 4
-1 80
+1 80
+2 4
+3 2
+3 2
+4 27
131 8
-12 4
+34 1
+7 4
+8 8
fi=(28)
56 4
cfi=(27)
cfn=(76)
calls=2 -21 
* 50
* 2
fe=(26)
200 8
64 2
+2 3
+1 2
+10 5
-6 2

fn=(82)
31 6
+2 3
-2 6
+2 3
-2 6
+2 3
cfi=(24)
cfn=(84)
calls=3 +9 
* 9
+2 23
+3 20
+2 2
+2 2
+4 2
+4 2
-4 4
+1 2
+4 2
-4 2
+1 2
+3 2
-3 2
+3 2
-1 2
cfi=(24)
cfn=(84)
calls=2 -8 
* 6
-4 1
+4 1
-4 2
+1 1
+4 1
-4 1
+1 1
+3 1
-3 1
+3 1
-1 1
cfi=(24)
cfn=(84)
calls=1 -8 
* 3
-5 2

fl=(25)
fn=(68)
28 2
+1 2
+3 67
+13 60
-13 120
+2 122
+1 32
+5 1
-3 1
+3 1
+2 1
+7 1

fl=(70)
fn=(222)
25 8
+1 16
+1 4

fl=(51)
fn=(150) _dl_catch_error
225 10
+2 2
cob=(2)
cfi=(50)
cfn=(152)
calls=1 0 
* 2788
+1 2
+1 1
+1 1
-1 1
+1 1
+2 5

fn=(238)
238 6
+1 1
+1 1
+3 1
+1 1
+2 1
cfi=(2)
cfn=(240)
calls=1 696 
* 4282
+2 1
+1 1
+1 4

fn=(154) _dl_catch_exception
175 9
+5 3
-5 9
+5 3
-2 6
+22 3
-1 3
+7 6
-6 3
+3 6
+3 3
cfi=(52)
cfn=(156)
calls=3 30 
* 72
* 12
+2 9
cfi=(66)
cfn=(208)
calls=2 61 
* 5311
cfi=(2)
cfn=(158)
calls=1 663 
* 2727
+2 3
-1 3
+1 3
-1 3
+1 6
+9 12

fl=(203)
fn=(782)
31 9
+20 3
-3 7
+3 4
+3 2
cob=(3)
cfi=(204)
cfn=(784)
calls=1 +23 
* 43
+2 1
+3 2
+2 6
+7 2
-2 1
+2 1
cfi=(48)
cfn=(458)
calls=1 -28 
* 21
+5 14
+5 1
-5 1
+5 3
+2 8
+2 8
+2 8
+1 4
+1 4
+4 4
-12 12
+14 6
+1 4
+6 5
cfi=(12)
cfn=(234)
calls=1 288 
* 300
+9 2
cob=(3)
cfi=(205)
cfn=(786)
calls=1 367 
* 34
+5 6
+2 1
+2 3
-2 3
+2 9
+3 8
+3 12
+4 4
+11 8
+1 2
+1 4
+1 10
+1 4
cob=(4)
cfi=(145)
cfn=(814)
calls=1 0 
* 92
cob=(5)
cfi=(150)
cfn=(788) 0x0000000000001250
calls=1 0 
* 91
-1 10
+5 6
+1 6
cob=(2)
cfi=(50)
cfn=(830) 0x000000000483f288
calls=1 0 
* 4
cob=(2)
cfi=(50)
cfn=(810) 0x000000000010ac94
calls=1 0 
* 4
+6 8
cfi=(48)
cfn=(812)
calls=4 -57 
* 20
+5 4
-45 12
+49 3
cfi=(48)
cfn=(458)
calls=1 40 
* 21
* 2
-38 6
+44 6
+6 2
+7 8
73 2

fl=(75)
fn=(258)
252 8
42 1
+9 1
-10 1
+4 1
-4 1
+3 1
+4 2
+1 2
-1 2
+14 2
254 8

fl=(144)
fn=(466)
77 12
+1 1
+1 1
+3 3
+8 2
+25 1
+1 5
+1 2
-86 4
+86 6
-86 12
+2 20
cfn=(468) call_init.part.0
calls=3 -7 
* 193
+83 12
+7 8
-92 4
+2 6
cfn=(468)
calls=1 -7 
* 72
+52 2

fn=(468)
26 32
+13 4
-13 4
+16 4
-3 8
+3 8
+5 6
+8 9
+1 6
cob=(2)
cfi=(50)
cfn=(470) 0x000000000483f000
calls=1 -56 
* 7
+3 3
+1 6
+6 4
+2 4
-2 2
+3 13
+1 4
cob=(3)
cfi=(149)
cfn=(488)
calls=1 +13 
* 12
* 8
cob=(3)
cfi=(146)
cfn=(480)
calls=1 -24 
* 74
cob=(4)
cfi=(145)
cfn=(474)
calls=1 -70 
* 12
-1 9
+3 24
-29 2

fl=(29)
fn=(128)
199 10
+1 10
+1 10
+1 10
+17 10
+1 10
+2 3
+1 3
+1 3
+2 2
+1 2
+1 2
+2 2
360 7
+1 7
+2 5
+4 5
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+2 2
+2 2
+6 3
+1 3
+1 3
+1 3
+1 3
+29 2
+1 2
+1 2
+1 2
+1 2
+7 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+11 1
+1 1
+2 1
+1 1
+1 1

fn=(80)
212 14
+1 14
+6 14
+1 14
+2 10
+1 10
+1 10
+2 7
+1 7
+1 7
+2 7
360 4
+1 4
+2 1
+4 1
+1 1
+1 1
+1 1
+1 1
+4 1
+2 1
+39 3
+1 3
+1 3
+1 3
+1 3
+7 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
+11 3
+1 3
+2 3
+1 3
+1 3

fl=(53)
fn=(162)
68 84
+1 28
cfi=(32)
cfn=(90)
calls=14 +39 
* 500
* 28
+3 14
+2 28
+6 15
-6 30
+1 54
cfi=(32)
cfn=(90)
calls=18 +33 
* 767
* 36
+8 3
-13 3
+13 20
-1 11
+1 33

fn=(212)
36 2
+3 1
-3 6
+3 1
-3 1
+3 1
cfi=(55)
cfn=(170)
calls=1 -11 
* 19
+1 2
+23 7
-21 4
cfi=(58)
cfn=(184)
calls=1 -13 
* 15
* 2
+2 2
+3 2
+13 2
cfi=(64)
cfn=(198)
calls=1 -35 
* 6
* 1
-11 6
cfi=(60)
cfn=(188)
calls=1 -2 
* 9
* 2

fl=(65)
fn=(202)
25 1
+2 7
+4 1

fl=(77)
fn=(270) do_lookup_x
363 864
+1 108
-1 540
+48 108
-30 216
-11 108
+41 108
-30 324
+30 108
fi=(78) ./elf/../sysdeps/generic/dl-protected.h
44 324
fe=(77)
381 108
fi=(78)
44 432
fe=(77)
395 1023
+4 341
+4 341
-3 341
+3 1364
+1 1023
+3 341
+1 682
+7 341
-3 682
-2 341
+5 1364
+3 2387
570 720
374 682
+3 682
+4 682
+4 682
+4 682
+88 202
fi=(4)
137 202
+1 303
fe=(77)
528 202
fi=(78)
29 202
fe=(77)
535 772
+16 202
+1 101
+1 202
422 428
-1 214
+2 214
+2 1284
+13 426
-10 1215
+3 103
-1 206
+1 103
-1 103
+2 206
-1 1236
cfn=(272) check_match
calls=103 70 
* 10276
+4 309
+3 4
573 7
+1 864
-35 27
-70 12
171 42
452 808

fn=(268)
840 1080
+10 108
-10 216
+10 108
-10 108
+10 108
204 108
840 108
204 540
581 432
-1 216
+2 108
-1 108
+1 324
-1 324
+1 1352
-1 1352
+1 4056
-1 4056
+2 108
846 108
-4 108
+1 108
+7 108
-8 108
+1 108
+7 405
+3 108
+2 216
-2 108
+6 216
-7 648
+7 35
+1 1512
cfn=(270)
calls=108 363 
* 38524
* 324
+28 108
-23 108
+23 108
-23 216
+24 590
+7 101
-7 101
+40 404
+79 202
-65 303
+3 303
-62 108
+69 972
-86 42
+18 21
+59 2

fn=(272)
70 103
+3 103
-3 1236
+3 408
+13 101
-13 101
+13 101
-13 101
+13 303
+3 354
cfi=(32)
cfn=(90)
calls=38 +19 
* 1959
* 76
+4 101
+1 202
+2 198
+19 198
+1 792
-38 101
+84 606
-18 4
+2 4
+1 2
-1 4
+1 6
-1 4
+16 12
-45 297
cfi=(32)
cfn=(90)
calls=99 -9 
* 2589
* 198
-44 8
+82 4

ob=(2)
fl=(50)
fn=(152)
0 6
cob=(1)
cfi=(51)
cfn=(154)
calls=3 175 
0 8215

fn=(442)
0 38
cob=(1)
cfi=(10)
cfn=(24)
calls=19 402 
0 391
cob=(1)
cfi=(141)
cfn=(448)
calls=1 67 
0 813
0 5

fn=(532)
0 10
cob=(3)
cfi=(160)
cfn=(534)
calls=5 51 
0 120

fn=(794) 0x0000000000109150
0 1
cob=(3)
cfi=(206)
cfn=(796)
calls=1 30 
0 72

fn=(830)
0 4

fn=(500)
0 7

fn=(510)
0 2
cob=(1)
cfi=(48)
cfn=(514)
calls=1 117 
0 5
cob=(1)
cfi=(141)
cfn=(448)
calls=1 67 
0 824
0 5

fn=(630)
0 2
cob=(3)
cfi=(182)
cfn=(632)
calls=1 181 
0 107545

fn=(820)
0 2
cob=(3)
cfi=(206)
cfn=(796)
calls=1 30 
0 72

fn=(664)
0 6
cob=(3)
cfi=(160)
cfn=(666)
calls=3 51 
0 63

fn=(688)
0 6
cob=(3)
cfi=(184)
cfn=(640)
calls=3 307 
0 340

fn=(810)
0 4

fn=(148)
0 2
cob=(1)
cfi=(51)
cfn=(150)
calls=1 225 
0 2811

fn=(470)
0 7

fn=(484)
0 2
cob=(3)
cfi=(148)
cfn=(486)
calls=1 46 
0 28

fn=(552)
0 16
cob=(3)
cfi=(167)
cfn=(554)
calls=8 3287 
0 2829

fn=(636)
0 10
cob=(3)
cfi=(184)
cfn=(638)
calls=5 294 
0 75

fn=(708)
0 12
cob=(3)
cfi=(167)
cfn=(710)
calls=6 3352 
0 637

ob=(5)
fl=(181) /home/tnvc/Documents/hashtable/src/HashTable.cpp
fn=(726) db::collection::map::Put(db::collection::map::HashTable*, char*, char*, unsigned int*)
60 1802900
+1 491700
+2 327800
+1 491700
+2 655600
cob=(3)
cfi=(167)
cfn=(626)
calls=163900 3624 
* 35408601
* 163900
+1 327800
-1 163900
+1 163900
+7 163900
+2 163900
209 163900
76 163900
cob=(3)
cfi=(195)
cfn=(730)
calls=163900 -26 
* 2410178
* 163900
* 491700
cfi=(180) /home/tnvc/Documents/hashtable/src/Hash.cpp
cfn=(732) db::hash::GetHash(void const*, unsigned long)
calls=163900 -6 
* 14878275
+1 327800
+2 491700
+1 327800
+6 4017060
+1 150459
+1 1147300
-6 13441
+1 13441

fn=(758) db::collection::map::ContainsKey(db::collection::map::HashTable const*, char*, unsigned int*)
126 300000
+1 600000
-1 1500000
+3 900000
+2 600000
cob=(3)
cfi=(195)
cfn=(730)
calls=300000 -81 
* 4200000
* 300000
* 900000
cfi=(180)
cfn=(732)
calls=300000 -61 
* 18750000
+1 600000
+2 900000
+1 1200000

fn=(622) db::collection::map::CreateHashTable(db::collection::map::HashTable*, unsigned long, unsigned int*)
20 8
+1 2
+2 5
+1 3
cob=(3)
cfi=(167)
cfn=(626)
calls=1 3624 
* 107768
* 1
* 1
+1 2
+2 1
+3 1
-2 1
+3 6

fn=(770) db::collection::map::DestroyHashTable(db::collection::map::HashTable*, unsigned int*)
34 1
+1 2
-1 3
+4 1
-4 4
+4 1
+7 1
-7 3
+1 80646
+3 26882
+1 13441
cob=(3)
cfi=(167)
cfn=(710)
calls=13441 3352 
* 1478487
* 13441
-1 300918
+1 150459
cob=(3)
cfi=(167)
cfn=(710)
calls=150459 3352 
* 16550364
* 150459
-4 819500
-1 53764
+7 2
cob=(3)
cfi=(167)
cfn=(710)
calls=1 3352 
* 12670752
* 1
+2 1
+4 1
-2 1
-2 1
+5 6

fl=(180)
fn=(620) db::hash::SetHashType(db::hash::HashType, unsigned int*)
60 1
+1 3
+3 1
+2 1
+1 1

fn=(732)
70 463900
+5 3247300
+8 463900
fi=(196) ./src/Hash.asm
-21 463900
+2 463900
+1 463900
+2 463900
+2 5241175
+1 5241175
+1 5241175
+3 5241175
+1 5241175
-1 463900
+1 463900
+3 463900
fe=(180)

fl=(150)
fn=(788)
0 9
cob=(2)
cfi=(50)
cfn=(794)
calls=1 0 
0 73
0 1
cfn=(804) 0x00000000000011e0
calls=1 0 
0 5
0 3

fn=(492)
0 12
cob=(3)
cfi=(151)
cfn=(494)
calls=1 242 
0 144757782

fn=(504)
0 12

fn=(804)
0 5

fl=(157)
fn=(616) TestTable()
45 2
+1 1
-1 2
+1 1
+1 1
-2 4
+1 39
+1 2
cfi=(179) /home/tnvc/Documents/hashtable/src/Test.cpp
cfn=(618) db::test::CreateTest(db::test::TestTable*)
calls=1 +67 
* 76887056
+2 3
cfi=(179)
cfn=(744) db::test::SetTestName(db::test::TestTable*, char const*)
calls=1 +96 
* 80
+1 2
cfi=(179)
cfn=(752) db::test::Test(db::test::TestTable*)
calls=1 153 
* 35551524
+2 2
cfi=(179)
cfn=(762) db::test::DestroyTest(db::test::TestTable*)
calls=1 +80 
* 32309398
+1 6

fn=(524)
9 2
fi=(183) /usr/include/x86_64-linux-gnu/bits/stdio2.h
112 3
fe=(157)
9 2
fi=(183)
112 1
cob=(3)
cfi=(158)
cfn=(528)
calls=1 -87 
* 6098
* 1
fe=(157)
12 2
-1 1
+1 2
cob=(3)
cfi=(175)
cfn=(594)
calls=1 +13 
* 948
* 1
+1 2
+6 3
-5 1
cfn=(616)
calls=1 +31 
* 144748123
* 1

fl=(185) /home/tnvc/Documents/hashtable/src/PropertiesReader.cpp
fn=(642) db::loader::LoadProperties(db::collection::map::HashTable*, char const*)
18 27
+1 9
+1 9
+2 9
cob=(3)
cfi=(186)
cfn=(646)
calls=3 +63 
* 1517
* 3
* 3
+1 6
+36 66
+1 9
cob=(3)
cfi=(189)
cfn=(670)
calls=3 -32 
* 42
* 3
+1 3
-34 9
cob=(3)
cfi=(167)
cfn=(626)
calls=3 3624 
* 909
* 3
* 3
+1 6
fi=(183)
293 18
cob=(3)
cfi=(191)
cfn=(680)
calls=3 31 
* 2272
* 3
fe=(185)
31 9
cob=(3)
cfi=(192)
cfn=(694)
calls=3 +3 
* 1603
* 3
+3 3
+11 163900
+2 655600
-2 163900
+2 163900
cfi=(181)
cfn=(726)
calls=163900 +13 
* 65086455
+3 491697
fi=(194) /usr/include/string.h
235 491691
cob=(3)
cfi=(160)
cfn=(666)
calls=163897 51 
* 3585217
* 163897
* 9
cob=(3)
cfi=(160)
cfn=(666)
calls=3 51 
* 63
* 3
fe=(185)
38 327800
+4 327800
fi=(194)
235 491700
cob=(3)
cfi=(160)
cfn=(666)
calls=163900 51 
* 4002936
* 163900
* 163900
fe=(185)
45 327800
+8 27

fl=(179)
fn=(744)
145 3
+1 2
+1 2
fi=(197) /usr/include/x86_64-linux-gnu/bits/string_fortified.h
-52 1
fe=(179)
+55 1
fi=(197)
-55 1
cob=(3)
cfi=(198)
cfn=(750)
calls=1 -42 
* 69
* 1
fe=(179)

fn=(752)
153 9
+1 3
fi=(183)
-42 2
fe=(179)
+54 1
fi=(183)
-54 1
fe=(179)
+57 1
+2 1
-2 1
fi=(183)
-57 1
cob=(3)
cfi=(158)
cfn=(528)
calls=1 -87 
* 419
* 1
fe=(179)
+52 1
+1 2
-1 1
fi=(183)
-52 1
fe=(179)
+52 1
+1 1
cob=(3)
cfi=(128)
cfn=(756)
calls=1 33 
* 8
* 1
+4 2
-3 900000
+3 3299989
cfi=(181)
cfn=(758)
calls=299999 -43 
* 30749919
* 3
cfi=(181)
cfn=(758)
calls=1 -43 
* 81
+1 600000
+3 3
cob=(3)
cfi=(128)
cfn=(756)
calls=1 33 
* 8
* 1
+2 2
fi=(183)
-63 1
fe=(179)
+63 1
fi=(183)
-63 1
fe=(179)
+64 1
fi=(183)
-64 1
fe=(179)
+62 1
fi=(183)
-62 1
cob=(3)
cfi=(158)
cfn=(528)
calls=1 -87 
* 1044
* 1
fe=(179)
+65 8

fn=(762)
132 5
+1 3
+2 2
cob=(3)
cfi=(167)
cfn=(710)
calls=1 3352 
* 66
* 1
+1 2
cob=(3)
cfi=(167)
cfn=(710)
calls=1 3352 
* 66
* 1
+1 2
cob=(3)
cfi=(167)
cfn=(710)
calls=1 3352 
* 59
* 1
+2 3
cfi=(181)
cfn=(770)
calls=1 34 
* 32309142
+2 42
+1 3

fn=(618)
114 5
+1 3
+2 3
cfi=(180)
cfn=(620)
calls=1 -57 
* 7
+2 42
+1 5
cfi=(181)
cfn=(622)
calls=1 20 
* 107799
fi=(183)
-8 4
cob=(3)
cfi=(158)
cfn=(528)
calls=1 -87 
* 429
* 1
fe=(179)
+12 3
cfi=(185)
cfn=(642)
calls=1 18 
* 2653555
+2 2
-3 1
+3 1
cfi=(185)
cfn=(642)
calls=1 18 
* 40548664
+2 2
-3 1
+3 1
cfi=(185)
cfn=(642)
calls=1 18 
* 33576523
-1 1
+2 4

totals: 144913619
