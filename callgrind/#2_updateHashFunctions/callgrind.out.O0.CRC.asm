# callgrind format
version: 1
creator: callgrind-3.19.0
pid: 18116
cmd:  ./hashmap
part: 1


desc: I1 cache: 
desc: D1 cache: 
desc: LL cache: 

desc: Timerange: Basic block 0 - 36737179
desc: Trigger: Program termination

positions: line
events: Ir
summary: 184557286


ob=(2) ???
fl=(50) ???
fn=(662) 0x0000000004883600
0 6
cob=(3) /usr/lib/x86_64-linux-gnu/libc.so.6
cfi=(187) ./string/../sysdeps/x86_64/multiarch/strchr-avx2.S
cfn=(664) __strchr_avx2
calls=3 51 
0 63

fn=(808) 0x0000000000109180
0 1
cob=(3)
cfi=(206) ./stdlib/./stdlib/cxa_finalize.c
cfn=(810) __cxa_finalize
calls=1 30 
0 72

fn=(844) 0x000000000483f288
0 4

fn=(702) 0x0000000004883370
0 12
cob=(3)
cfi=(165) ./malloc/./malloc/malloc.c
cfn=(704) free
calls=6 3352 
0 654

fn=(148) 0x0000000004002080
0 2
cob=(1) /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2
cfi=(51) ./elf/./elf/dl-error-skeleton.c
cfn=(150) _dl_catch_error
calls=1 225 
0 2811

fn=(530) 0x0000000004883490
0 6
cob=(3)
cfi=(159) ./string/../sysdeps/x86_64/multiarch/strlen-avx2.S
cfn=(532) __strlen_avx2
calls=3 50 
0 54

fn=(634) 0x00000000048833e0
0 10
cob=(3)
cfi=(182) ./string/../sysdeps/x86_64/multiarch/memmove-vec-unaligned-erms.S
cfn=(636) __mempcpy_avx_unaligned_erms
calls=5 294 
0 74

fn=(442) 0x0000000004883650
0 38
cob=(1)
cfi=(10) ./elf/./elf/dl-tunables.c
cfn=(24) __tunable_get_val
calls=19 402 
0 391
cob=(1)
cfi=(141) ./elf/../sysdeps/x86_64/dl-trampoline.h
cfn=(448) _dl_runtime_resolve_xsave
calls=1 67 
0 813
0 5

fn=(834) 0x000000000483f030
0 2
cob=(3)
cfi=(206)
cfn=(810)
calls=1 30 
0 72

fn=(500) 0x0000000000109000
0 7

fn=(774) 0x00000000048834d0
0 4
cob=(3)
cfi=(187)
cfn=(776) __strchrnul_avx2
calls=2 51 
0 38

fn=(824) 0x000000000010ae70
0 4

fn=(682) 0x0000000004883620
0 6
cob=(3)
cfi=(182)
cfn=(638) __memcpy_avx_unaligned_erms
calls=3 307 
0 340

fn=(152) 0x0000000004002050
0 6
cob=(1)
cfi=(51)
cfn=(154) _dl_catch_exception
calls=3 175 
0 8215

fn=(510) 0x00000000048836d0
0 2
cob=(1)
cfi=(48) ./elf/./elf/dl-audit.c
cfn=(514) _dl_audit_preinit
calls=1 117 
0 5
cob=(1)
cfi=(141)
cfn=(448)
calls=1 67 
0 824
0 5

fn=(548) 0x0000000004883380
0 16
cob=(3)
cfi=(165)
cfn=(550) malloc
calls=8 3287 
0 2829

fn=(470) 0x000000000483f000
0 7

fn=(484) 0x00000000048835f0
0 2
cob=(3)
cfi=(148) ./string/../sysdeps/x86_64/multiarch/strrchr-avx2.S
cfn=(486) __strrchr_avx2
calls=1 46 
0 43

ob=(4) /usr/local/libexec/valgrind/vgpreload_core-amd64-linux.so
fl=(145) ???
fn=(838) 0x0000000000001060
0 5

fn=(828) 0x00000000000010d0
0 9
cob=(2)
cfi=(50)
cfn=(834)
calls=1 0 
0 74
0 1
cfn=(838)
calls=1 0 
0 5
0 3

fn=(474) 0x0000000000001110
0 12

ob=(3)
fl=(114) ./string/../sysdeps/x86_64/multiarch/strcpy.c
fn=(362) strcpy
29 1
fi=(99) ./string/../sysdeps/x86_64/multiarch/ifunc-strcpy.h
+7 2
+1 1
-1 2
+1 2
+2 2
+4 3
+3 3
fe=(114)
-17 1

fl=(167) ./stdlib/../sysdeps/unix/sysv/linux/getrandom.c
fn=(556) getrandom
28 1
+1 7
+1 1

fl=(121) ./string/../sysdeps/x86_64/multiarch/memchr.c
fn=(384) memchr
29 1
fi=(122) ./string/../sysdeps/x86_64/multiarch/ifunc-evex.h
+6 5
-1 2
+2 3
+5 2
-3 2
+9 3
+3 4
fe=(121)
-21 1

fl=(202) ./stdlib/./stdlib/cxa_thread_atexit_impl.c
fn=(794) __call_tls_dtors
149 4
+1 4
+18 4

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

fl=(170) ./misc/../sysdeps/unix/sysv/linux/brk.c
fn=(572) brk
35 40
+1 160
+1 80
+6 40
+1 40

fl=(147) ./misc/./misc/init-misc.c
fn=(482) __init_misc
30 1
+1 2
-1 4
+1 3
+2 3
cob=(2)
cfi=(50)
cfn=(484)
calls=1 -33 
* 45
+4 5
+1 3
+2 4

fl=(137) ./ctype/./ctype/ctype-info.c
fn=(434) __ctype_init
29 1
+2 7
+2 4
+2 4
+1 1

fl=(206)
fn=(810)
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
cfn=(812) __unregister_atfork
calls=2 -30 
* 32
+1 8
+1 16

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
* 70

fl=(159)
fn=(532)
50 463903
+13 463903
+1 463903
+1 463903
+3 463903
+2 463903
+1 463903
+3 462651
+1 462651
+8 462651
+1 462651
+1 451365
+5 902730
+26 7836
+13 7836
+1 7836
+1 7836
+6 15672
+4 3503
+13 3503
+1 3503
+1 3503
+6 7006
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
+7 11286
+15 11286
+6 11286
+1 11286
+1 11286
-8 580
+6 580
+1 580
+1 580
+2 4030
+1 4030
+1 4030
+1 4030
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

fl=(149) ./libio/./libio/vtables.c
fn=(488) check_stdfiles_vtables
83 1
+1 4
+1 3
+1 3
+2 1

fl=(102) ./string/../sysdeps/x86_64/multiarch/strncmp.c
fn=(332) strncmp
66 1
-25 4
+1 3
+2 2
+5 3
+3 3
+14 1

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

fl=(148)
fn=(486)
46 1
+1 1
+1 1
+2 1
+1 1
+3 1
+1 1
+1 1
+33 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+3 1
+1 1
+9 1
+1 1
+3 1
+1 2
+4 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+32 1
+1 1
+2 1
+1 1
+1 1
+1 1
+6 1
+1 1
+2 2

fl=(176) ./io/../sysdeps/unix/sysv/linux/read.c
fn=(610) read
25 7
+1 42
+1 7

fl=(205) ./nptl/./nptl/pthread_mutex_unlock.c
fn=(800) pthread_mutex_unlock@@GLIBC_2.2.5
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

fl=(190) ./libio/./libio/iofclose.c
fn=(688) fclose@@GLIBC_2.2.5
34 15
+14 9
fi=(171) ./libio/./libio/libioP.h
883 6
+1 9
fe=(190)
57 3
fi=(171)
940 9
+2 6
+1 6
fe=(190)
57 9
cfi=(160) ./libio/./libio/fileops.c
cfn=(714) _IO_file_finish@@GLIBC_2.2.5
calls=3 168 
* 87
+1 9
+13 6
fi=(171)
855 12
+1 12
+6 6
cob=(2)
cfi=(50)
cfn=(702)
calls=3 0 
* 273
fe=(190)
76 15
-27 3
cfi=(161) ./libio/./libio/genops.c
cfn=(690) _IO_un_link
calls=3 +4 
* 324
+2 36
+1 3
-1 6
fi=(171)
883 6
fe=(190)
52 6
+1 6
cfi=(160)
cfn=(694) _IO_file_close_it@@GLIBC_2.2.5
calls=3 +75 
* 714
fi=(171)
883 3
fe=(190)
53 3
fi=(171)
883 6
+1 12
fe=(190)

fl=(158) ./libio/./libio/ioputs.c
fn=(528) puts
33 24
+2 3
cob=(2)
cfi=(50)
cfn=(530)
calls=3 -35 
* 60
+1 3
-1 3
+1 36
+3 3
-3 3
+3 3
-3 3
+3 6
-1 4
+1 1
+1 1
fi=(171)
940 3
+2 2
+1 2
fe=(158)
40 2
fi=(171)
940 6
+2 4
+1 4
fe=(158)
40 9
cfi=(160)
cfn=(534) _IO_file_xsputn@@GLIBC_2.2.5
calls=3 1197 
* 6095
* 6
+1 12
+1 12
fi=(171)
883 6
+1 30
fe=(158)
46 21
-5 6
cfi=(161)
cfn=(586) __overflow
calls=3 199 
* 501
* 6

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

fl=(195) ./stdlib/./stdlib/random.c
fn=(762) random
288 600000
+3 300000
-3 900000
+3 600000
+2 900000
cfi=(196) ./stdlib/./stdlib/random_r.c
cfn=(764) random_r
calls=300000 +61 
* 9561292
+2 1200000
+2 300000
+1 1500000

fl=(156) ./setjmp/./setjmp/sigjmp.c
fn=(522) __sigjmp_save
28 3
+2 2
-1 1
+5 3

fl=(106) ./string/../sysdeps/x86_64/multiarch/strcat.c
fn=(340) strcat
29 1
fi=(99)
+7 2
+1 1
-1 2
+1 2
+2 2
+4 3
+3 3
fe=(106)
-17 1

fl=(189) ./libio/./libio/iofread.c
fn=(674) fread
31 15
+1 3
-1 3
+1 3
-1 6
+4 6
+2 51
+1 12
cfi=(161)
cfn=(676) _IO_sgetn
calls=3 409 
* 2098
fi=(171)
883 6
+1 30
fe=(189)
40 6
+1 27
-1 6

fl=(165)
fn=(550)
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
cfn=(560) tcache_init.part.0
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
cfn=(562) _int_malloc
calls=6 1343 
* 855
+1 30
fi=(166) ./malloc/./malloc/arena.c
162 12
315 1
cfn=(554) ptmalloc_init.part.0
calls=1 -2 
* 1128
fe=(165)
1343 2

fn=(708) _int_free
4421 1311248
+10 163906
-10 491718
+10 327812
+6 819530
+1 327812
+4 655624
+8 819530
-1 327812
+1 327812
+29 163903
-20 163903
-6 163903
+6 327806
+20 655612
+14 327792
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
4702 1802966
4569 6
+3 3
+3 9
+7 3
-4 3
+4 6
+3 6
+5 9
+3 6
+1 6
+1 6
2012 9
4601 6
+9 6
+62 6
+20 9
3181 10
+4 10
-4 10
+2 40
+1 10
+1 10
4482 10
4673 3
+3 2
+2 1
-2 1
-23 3
+1 9
+1 6
-68 9
-2 6
+93 4
+2 2
cfn=(710) systrim.constprop.0
calls=1 2986 
* 25
* 1

fn=(562)
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
cfn=(564) sysmalloc
calls=43 2548 
* 6807
* 43
+1 86
2005 129

fn=(704)
3352 163910
+4 327820
-4 163910
+14 163910
-14 327820
+12 163910
+4 163910
-4 163910
+4 327820
+17 491718
fi=(166)
162 491718
fe=(165)
3391 327812
cfn=(708)
calls=163906 4421 
* 13931855
+3 163906
+1 655624
-23 12
+2 12
+2 2
+1 2
-1 2
+1 2
+1 2
+3 4
cfn=(784) munmap_chunk
calls=2 3044 
* 70
* 4
cfn=(784)
calls=2 3044 
* 70
+13 4
+1 16

fn=(784)
3044 4
+2 4
-1 4
+1 4
-1 4
+1 4
+2 8
+4 4
-1 8
+7 4
-8 4
+8 4
-6 4
+7 4
-1 8
+1 16
+3 4
+1 12
+5 4
+1 4
-1 4
cfi=(200) ./misc/../sysdeps/unix/syscall-template.S
cfn=(786) munmap
calls=4 117 
* 24

fn=(710)
2986 1
-9 3
+9 2
+2 1
+1 2
+5 1
+1 1
-1 2
+4 5
+2 2
-10 1
+50 4

fn=(628) calloc
3624 327808
+10 163904
-10 655616
+10 1311232
+8 327808
+3 491712
+2 491712
+32 491712
cfn=(562)
calls=163904 1343 
* 23116938
+2 819520
fi=(166)
162 491700
fe=(165)
3681 327800
+3 491712
+14 327808
+11 163904
+5 163904
-2 327808
+3 4
-1 8
+48 983424
-53 163900
+12 655600
-20 655600
+31 163900
+2 327800
+2 327800
+5 163900
+2 163900
-2 163900
+3 327800
-87 163904
+1 491712
+7 163904

fn=(630) sysmalloc_mmap.constprop.0
2420 12
+13 12
+5 8
+3 36
cfi=(181) ./misc/../sysdeps/unix/sysv/linux/mmap64.c
cfn=(632) mmap
calls=4 47 
* 36
* 4
+3 8
+4 8
2028 16
2466 12
+19 4
-1 4
+5 4
-4 8
+4 8
+1 20
+3 12
+1 20
+5 20

fn=(560)
3235 3
+9 8
+1 3
cfn=(562)
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

fn=(564)
2548 387
+20 172
+11 86
+1 125
+26 39
+1 117
+1 39
+9 308
+6 117
+3 117
2941 78
+1 39
+5 78
+3 78
+5 78
-2 39
+2 39
-1 39
+1 39
-3 39
+3 39
+1 39
-1 117
+1 39
+2 78
2581 12
+4 12
+9 16
cfn=(630)
calls=4 2420 
* 252
+1 8
2964 473
2687 78
+9 156
+13 117
+8 195
+8 78
+39 78
+2 117
+6 154
+1 38
2946 38
2773 114
+2 2
2896 1
-1 1
+1 3
+1 1
+11 2
fi=(166)
565 39
fe=(165)
2727 39
cfi=(168) ./malloc/./malloc/morecore.c
cfn=(568) __glibc_morecore
calls=39 25 
* 1691
+1 78
-1 39
+1 39
2028 39
2729 39
2028 39
2729 39
2028 78
2730 39
+3 78
+33 78
2610 78
2775 2
+40 3
+22 1
+1 1
-1 1
+1 6
+2 2
+1 3
cfi=(168)
cfn=(568)
calls=1 25 
* 28
+12 2
-12 1
+12 1
2028 4
2897 4
2765 2
-52 3

fl=(181)
fn=(632)
47 8
+3 8
+8 16
+2 4

fl=(186) ./string/../string/strstr.c
fn=(660) __GI_strstr
77 24
+5 3
-5 9
+5 6
+2 12
cob=(2)
cfi=(50)
cfn=(662)
calls=3 -84 
* 69
* 3
+1 6
+44 3
+32 36

fl=(188) ./io/../sysdeps/unix/sysv/linux/stat64.c
fn=(670) stat
28 6
+1 12
cfi=(164) ./io/../sysdeps/unix/sysv/linux/fstatat64.c
cfn=(546) fstatat
calls=3 153 
* 24

fl=(136) ./elf/./elf/libc_early_init.c
fn=(432) __libc_early_init
33 7
+2 1
cfi=(137)
cfn=(434)
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
fi=(212) ./elf/../nptl/nptl-stack.h
+13 3
fi=(139)
-13 1
fi=(212)
+13 2
fi=(139)
-4 1
fi=(212)
+4 2
fi=(139)
-6 1
fi=(212)
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

fl=(168)
fn=(568)
25 40
+1 80
-1 40
+4 40
cfi=(169) ./misc/./misc/sbrk.c
cfn=(570) sbrk
calls=40 +8 
* 1359
+1 80
+4 80

fl=(107) ./string/../sysdeps/x86_64/multiarch/strncase_l.c
fn=(344) strncasecmp_l
31 1
fi=(211)
+1 5
fe=(107)
-1 1

fl=(173) ./stdio-common/./stdio-common/isoc99_scanf.c
fn=(592) __isoc99_scanf
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
cfi=(174) ./stdio-common/./stdio-common/vfscanf-internal.c
cfn=(594) __vfscanf_internal
calls=1 278 
* 918
+4 5

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
* 184396564
* 1
+16 1
cfi=(201) ./stdlib/./stdlib/exit.c
cfn=(790) exit
calls=1 +68 
* 1532

fl=(200)
fn=(786)
117 20
+5 4

fl=(160)
fn=(534)
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
cfn=(634)
calls=5 0 
* 84
* 5
+4 10
+28 54
-55 5
+4 5
-4 5
+1 10
+18 1
+12 1
fi=(171)
940 3
+2 2
+1 2
fe=(160)
1243 1
fi=(171)
940 3
+2 2
+1 2
fe=(160)
1243 6
cfn=(536) _IO_file_overflow@@GLIBC_2.2.5
calls=2 731 
* 2134
* 4
+6 4
+1 14
+2 4
+11 6
+1 4
cfi=(161)
cfn=(578) _IO_default_xsputn
calls=1 371 
* 3655
+2 3
-48 237
-2 174
+4 1
+11 3
443 2

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
fi=(171)
883 2
+1 9
fe=(160)
498 6
fi=(171)
940 3
+2 3
-2 3
fe=(160)
505 6
cfi=(161)
cfn=(606) _IO_switch_to_get_mode
calls=3 164 
* 75
fi=(171)
940 1
+2 1
-2 1
fe=(160)
505 2
cfi=(161)
cfn=(606)
calls=1 164 
* 25
+6 4
+5 4
-5 4
fi=(171)
942 8
fe=(160)
511 4
fi=(171)
942 4
fe=(160)
511 12
fi=(171)
943 8
fe=(160)
516 16
cfn=(608) _IO_file_read
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
cfi=(161)
cfn=(538) _IO_doallocbuf
calls=1 343 
* 325
+4 3
+11 1
fi=(171)
940 3
+2 1
fe=(160)
500 1
fi=(171)
940 1
+2 1
+1 2
fe=(160)
500 4
cfn=(536)
calls=1 731 
* 28
* 1

fn=(656) _IO_file_open
182 6
+3 3
-3 21
+2 6
+4 3
cfi=(185) ./io/../sysdeps/unix/sysv/linux/open64.c
cfn=(658) open
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
cfi=(161)
cfn=(652) _IO_link_in
calls=3 87 
* 72
+1 3
+1 12

fn=(678) _IO_file_xsgetn
1272 30
+7 3
-7 3
+7 3
+11 3
fi=(171)
940 9
fe=(160)
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
fi=(171)
942 3
fe=(160)
1329 3
fi=(171)
942 3
fe=(160)
1329 6
fi=(171)
943 6
fe=(160)
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
cfn=(682)
calls=3 0 
* 346
+1 9
+25 6
cfi=(161)
cfn=(680) __underflow
calls=3 269 
* 408
* 6
+39 27
-78 9
+5 6
cfi=(161)
cfn=(538)
calls=3 343 
* 918
* 3

fn=(650) _IO_new_file_init_internal
106 3
+5 3
-5 6
+4 3
+3 3
cfi=(161)
cfn=(652)
calls=3 -26 
* 312
+1 3
+1 6

fn=(654) _IO_file_fopen@@GLIBC_2.2.5
213 33
+9 6
+2 18
356 36
247 18
+33 12
cfn=(656)
calls=3 -98 
* 273
* 3
+3 6
+3 9
cfi=(186)
cfn=(660)
calls=3 77 
* 171
* 3
+1 6
-40 6
-19 3
-1 3
-13 6

fn=(858) _IO_file_sync@@GLIBC_2.2.5
792 10
+5 8
+2 2
+1 4
+2 1
fi=(171)
940 3
+2 2
+1 2
fe=(160)
802 3
cfn=(860) _IO_file_seek
calls=1 1139 
* 13
+1 2
+8 4
+4 8
-10 3

fn=(608)
1130 7
+1 7
+2 7
-1 7
+1 14
cfi=(176)
cfn=(610)
calls=7 25 
* 56

fn=(714)
168 15
+1 6
+7 3
-1 6
+1 6
-1 3
cfi=(161)
cfn=(716) _IO_default_finish
calls=3 601 
* 48

fn=(542) _IO_file_stat
1146 5
+1 10
cfi=(163) ./io/../sysdeps/unix/sysv/linux/fstat64.c
cfn=(544) fstat
calls=5 29 
* 75

fn=(576) _IO_do_write@@GLIBC_2.2.5
423 8
+2 24
+1 2
-3 6
fi=(171)
940 6
fe=(160)
423 12
fi=(171)
940 6
fe=(160)
423 6
fi=(171)
940 12
fe=(160)
423 30
+20 6
-10 12
+7 24
fi=(171)
942 12
+1 12
fe=(160)
448 24
cfn=(582) _IO_file_write@@GLIBC_2.2.5
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

fn=(536)
731 350
+1 280
+7 348
+37 69
-2 138
+3 134
+3 201
+1 201
+1 268
+4 67
+1 268
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
+13 3
-12 3
+1 3
+11 6
-12 3
cfn=(576)
calls=3 423 
* 118
+9 10
-1 5
+1 5
-1 5
cfn=(576)
calls=5 423 
* 540
* 10
-39 2
cfi=(161)
cfn=(538)
calls=1 343 
* 1946
+1 1
+9 1
-9 5

fn=(582)
1173 42
+2 36
+5 6
cfi=(172) ./io/../sysdeps/unix/sysv/linux/write.c
cfn=(584) write
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

fn=(694)
128 12
+2 9
+4 6
+3 3
-3 3
-1 6
+6 3
+3 3
-3 3
cfi=(161)
cfn=(696) _IO_unsave_markers
calls=3 960 
* 30
+3 9
fi=(171)
940 9
+2 6
+1 6
fe=(160)
142 6
cfn=(698) _IO_file_close
calls=3 1164 
* 27
* 3
+3 9
+8 15
cfi=(161)
cfn=(574) _IO_setb
calls=3 329 
* 486
+1 3
+3 3
-3 9
+3 3
cfi=(161)
cfn=(690)
calls=3 53 
* 12
+5 3
-4 3
+1 3
+3 3
-2 3
+3 15

fn=(698)
1164 3
+3 6
cfi=(191) ./io/../sysdeps/unix/sysv/linux/close_nocancel.c
cfn=(700) __close_nocancel
calls=3 25 
* 18

fn=(854) _IO_file_setbuf@@GLIBC_2.2.5
381 6
+1 2
cfi=(161)
cfn=(856) _IO_default_setbuf
calls=2 +70 
* 167
* 4
+3 2
+4 4
-2 6
+3 4

fn=(860)
1139 1
+1 2
cfi=(209) ./io/../sysdeps/unix/sysv/linux/lseek64.c
cfn=(862) lseek
calls=1 28 
* 10

fl=(191)
fn=(700)
25 3
+1 12
+1 3

fl=(193) ./string/../sysdeps/x86_64/multiarch/strcpy-avx2.S
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
+2 1
+1 1
+2 1
+1 1
+1 1
+8 1
+1 1
+1 1
+2 1
+2 1
+1 1
349 1
+2 1
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
825 1
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
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 1
+1 2

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
+2 4
cob=(2)
cfi=(50)
cfn=(442)
calls=1 0 
* 22
+4 3
+1 1
+1 6

fl=(103) ./string/../sysdeps/x86_64/multiarch/strcasecmp.c
fn=(334) strcasecmp
31 1
fi=(211)
+1 5
fe=(103)
-1 1

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

fl=(199) ./stdio-common/./stdio-common/_itoa.c
fn=(778) _itoa_word
163 2
+3 4
+2 2
+9 86
+9 2

fl=(172)
fn=(584)
25 6
+1 42
+1 6

fl=(164)
fn=(546)
153 16
-55 16
+70 24
+1 8

fl=(163)
fn=(544)
29 10
+1 10
+5 15
cfi=(164)
cfn=(546)
calls=5 153 
* 40

fl=(166)
fn=(554)
313 1
fi=(165)
3162 3
fe=(166)
313 5
+5 1
fi=(165)
3162 2
cfi=(167)
cfn=(556)
calls=1 28 
* 9
* 2
fe=(166)
343 2
+4 3
fi=(165)
1966 4
+3 1
-3 1
+3 2
-3 2
+3 126
-3 126
+3 252
-3 252
fe=(166)
352 3
fi=(165)
1977 1
+1 1
+2 1
fe=(166)
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

fl=(194) ./stdlib/./stdlib/rand.c
fn=(760) rand
26 600000
+1 300000
cfi=(195)
cfn=(762)
calls=300000 288 
* 15861292
+1 600000

fl=(197) ./stdio-common/./stdio-common/printf.c
fn=(770) printf
28 13
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
cfi=(198) ./stdio-common/./stdio-common/vfprintf-internal.c
cfn=(772) __vfprintf_internal
calls=1 1180 
* 1014
+4 5

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

fl=(97) ./wcsmbs/../sysdeps/x86_64/multiarch/wcscmp.c
fn=(320) wcscmp
30 1
fi=(93) ./wcsmbs/../sysdeps/x86_64/multiarch/ifunc-avx2.h
+3 5
-1 2
+2 3
+2 2
+4 3
+3 4
fe=(97)
-13 1

fl=(154)
fn=(518)
28 1
+2 1
+2 1
cfi=(155) ./setjmp/../sysdeps/x86_64/setjmp.S
cfn=(520) __sigsetjmp
calls=1 -2 
* 31

fl=(207)
fn=(812)
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

fl=(182)
fn=(636)
294 5
+1 5
+1 5
+1 5
+17 5
+1 5
+42 5
+1 5
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
+7 3
+1 3
+1 3
+1 3
+2 3

fn=(638)
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

fl=(187)
fn=(664)
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

fn=(776)
51 2
+2 2
+1 2
+1 2
+1 2
+1 2
+3 2
+1 2
+4 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+1 2
+6 2
+1 4

fl=(83) ./string/../sysdeps/x86_64/multiarch/strpbrk.c
fn=(286) strpbrk
29 1
fi=(213) ./string/../sysdeps/x86_64/multiarch/ifunc-sse4_2.h
+1 5
fe=(83)
-1 1

fl=(138)
fn=(436)
38 2
+1 7
+1 1

fl=(175) ./nptl/./nptl/libc-cleanup.c
fn=(596) __libc_cleanup_push_defer
24 10
+3 20
+3 40
+1 10
+2 10
+1 10

fn=(614) __libc_cleanup_pop_restore
39 10
+3 20
+2 20
+1 20
+2 10

fl=(126) ./string/../sysdeps/x86_64/multiarch/rawmemchr.c
fn=(396) rawmemchr
31 1
fi=(122)
+4 5
-1 2
+2 3
+5 2
-3 2
+9 3
+3 4
fe=(126)
-19 1

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
cfn=(510)
calls=1 0 
* 836
+2 2
+8 4
cfi=(153)
cfn=(516)
calls=1 29 
* 184398158
128 2
+6 3
+1 6
cob=(2)
cfi=(50)
cfn=(500)
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
cfn=(504) 0x0000000000001270
calls=1 0 
* 12
-1 4

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

fl=(209)
fn=(862)
28 1
+8 8
+2 1

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

fl=(204) ./nptl/./nptl/pthread_mutex_lock.c
fn=(798) pthread_mutex_lock@@GLIBC_2.2.5
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

fl=(92) ./wcsmbs/../sysdeps/x86_64/multiarch/wcschr.c
fn=(306) wcschr
31 2
fi=(93)
+2 10
-1 4
+2 6
+2 4
+4 6
+3 8
fe=(92)
-12 2

fl=(198)
fn=(772)
1180 12
+30 5
+8 3
+4 5
+11 2
+11 1
fi=(214) ./stdio-common/./stdio-common/printf-parse.h
111 2
fe=(198)
1244 5
fi=(214)
111 1
cob=(2)
cfi=(50)
cfn=(774)
calls=1 0 
* 21
fe=(198)
1259 1
fi=(214)
111 1
fe=(198)
1259 3
239 1
fi=(215) ./stdio-common/../libio/libioP.h
940 1
fe=(198)
1263 1
fi=(215)
942 1
-2 1
fe=(198)
1263 1
fi=(215)
940 2
+2 2
+1 2
fe=(198)
239 4
cfi=(160)
cfn=(534)
calls=1 1197 
* 178
* 2
127 9
1263 2
+4 3
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
fe=(198)
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
1608 2
+1 2
+3 12
-4 9
1218 2
+41 4
cfi=(175)
cfn=(596)
calls=1 24 
* 10
+1 13
-1 2
1609 2
cfi=(175)
cfn=(614)
calls=1 39 
* 8
+2 1
1484 1
-5 8
-1 1
+1 8
+37 13
cfi=(199)
cfn=(778)
calls=1 163 
* 96
* 31
192 2
+47 1
fi=(215)
942 3
+1 2
fe=(198)
239 4
cfi=(160)
cfn=(534)
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
fe=(198)
1583 1
fi=(214)
111 2
cob=(2)
cfi=(50)
cfn=(774)
calls=1 0 
* 21
fe=(198)
239 1
fi=(215)
942 1
fe=(198)
1593 1
fi=(214)
111 1
fi=(215)
942 1
fe=(198)
1593 1
fi=(215)
942 1
+1 2
fe=(198)
239 4
cfi=(160)
cfn=(534)
calls=1 1197 
* 233
* 2
127 13
1593 2
+2 3
-79 20
192 2
1516 8

fl=(104) ./string/../sysdeps/x86_64/multiarch/strcspn.c
fn=(336) strcspn
29 1
fi=(213)
+1 5
fe=(104)
-1 1

fl=(123) ./string/../sysdeps/x86_64/multiarch/strspn.c
fn=(388) strspn
29 1
fi=(213)
+1 5
fe=(123)
-1 1

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

fl=(161)
fn=(574)
329 72
+1 38
+5 16
-3 8
+3 32
+3 35
-7 3
cob=(2)
cfi=(50)
cfn=(702)
calls=3 0 
* 393
+4 9

fn=(578)
371 1
+3 2
-3 8
fi=(171)
940 1
fe=(161)
371 1
fi=(171)
940 1
fe=(161)
371 1
fi=(171)
940 1
fe=(161)
371 2
+28 194
fi=(171)
942 128
+1 128
fe=(161)
399 256
cfi=(160)
cfn=(536)
calls=64 731 
* 2406
* 128
+2 64
-22 324
+25 1
-29 1
+29 7

fn=(680)
269 15
+1 12
+5 9
+3 3
173 3
278 6
+2 6
+6 6
+7 3
fi=(171)
940 9
+2 6
+1 6
fe=(161)
293 3
+1 3
-1 3
+1 6
-1 3
cfi=(160)
cfn=(602)
calls=3 461 
* 297
-2 9

fn=(538)
343 5
+1 10
-1 15
+3 20
+1 5
fi=(171)
940 15
+2 10
+1 10
fe=(161)
347 10
cfi=(162) ./libio/./libio/filedoalloc.c
cfn=(540) _IO_file_doallocate
calls=5 78 
* 3059
* 10
+3 20

fn=(848) _IO_flush_all_lockp
686 12
+5 6
cfi=(175)
cfn=(596)
calls=1 24 
* 10
+1 9
+3 1
-8 1
+5 2
+3 2
fi=(171)
940 4
fe=(161)
709 6
+2 3
-16 9
+2 3
+1 6
+3 21
+14 9
+1 2
cfi=(175)
cfn=(614)
calls=1 39 
* 8
+4 12

fn=(612) _IO_sputbackc
635 5
+3 3
+1 2
+9 1
+3 4
-10 2
+1 1
+5 1

fn=(648) _IO_old_init
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

fn=(856)
452 4
fi=(171)
940 2
fe=(161)
452 4
fi=(171)
940 2
fe=(161)
452 2
fi=(171)
940 2
fe=(161)
452 8
+1 2
fi=(171)
942 4
+1 4
fe=(161)
453 4
cfi=(160)
cfn=(858)
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

fn=(676)
409 6
fi=(171)
940 9
fe=(161)
409 3
+2 3
fi=(171)
942 6
+1 6
fe=(161)
411 3
+1 6
-1 3
cfi=(160)
cfn=(678)
calls=3 1272 
* 2053

fn=(846) _IO_cleanup
863 2
+3 1
-3 9
-77 1
+80 1
cfn=(848)
calls=1 686 
* 126
-80 2
+80 1
-80 3
cfi=(175)
cfn=(596)
calls=1 24 
* 10
+1 9
+3 1
-3 2
+3 2
fi=(171)
940 4
fe=(161)
838 3
-48 9
+9 9
+2 6
+6 26
+8 10
+9 2
fi=(171)
942 4
+1 4
fe=(161)
824 8
cfi=(160)
cfn=(854)
calls=2 381 
* 195
+2 6
+4 10
+1 16
+11 9
+1 2
cfi=(175)
cfn=(614)
calls=1 39 
* 8
+35 12
-59 2
-2 2
+3 2
-3 2
+2 6

fn=(586)
199 9
+2 9
+2 3
fi=(171)
940 9
+2 6
+1 6
fe=(161)
203 3
+1 6
-1 3
cfi=(160)
cfn=(536)
calls=3 731 
* 447

fn=(600) _IO_default_uflow
361 2
fi=(171)
940 2
fe=(161)
361 1
fi=(171)
940 1
fe=(161)
361 2
+1 1
fi=(171)
942 2
+1 2
fe=(161)
362 2
cfi=(160)
cfn=(602)
calls=1 +99 
* 504
+1 2
+2 4
+1 4

fn=(696)
960 6
+2 3
-2 3
+2 3
+5 9
+2 6

fn=(652)
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
cfi=(175)
cfn=(596)
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
cfi=(175)
cfn=(614)
calls=3 -64 
* 24
+3 3

fn=(716)
601 9
+2 9
+6 9
+3 9
54 6
624 6

fn=(598) __uflow
299 5
+1 3
+5 3
+3 1
173 1
308 2
+2 2
+6 2
+7 1
fi=(171)
940 3
+2 2
+1 2
fe=(161)
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

fn=(690)
53 6
+1 12
+28 6
cfn=(692) __GI__IO_un_link.part.0
calls=3 -30 
* 312

fn=(692)
52 6
+7 3
-7 21
+6 18
cfi=(175)
cfn=(596)
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
cfi=(175)
cfn=(614)
calls=3 -40 
* 24
+3 27

fn=(646) _IO_no_init
563 30
+1 3
cfn=(648)
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

fl=(185)
fn=(658)
30 6
+3 3
-3 24
+3 18
+8 30
+2 21

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

fl=(105) ./wcsmbs/../sysdeps/x86_64/multiarch/wcscpy.c
fn=(338) wcscpy
43 1
-6 5
+6 1

fl=(169)
fn=(570)
37 80
+6 40
-6 40
+3 40
-3 80
+3 40
+3 40
+20 1
+15 200
-20 80
+1 2
cfi=(170)
cfn=(572)
calls=1 -24 
* 9
* 2
+4 1
-1 80
+4 156
+8 39
cfi=(170)
cfn=(572)
calls=39 -39 
* 351
* 78

fl=(128) ./time/../sysdeps/unix/sysv/linux/gettimeofday.c
fn=(756) __gettimeofday_syscall
33 2
+1 4
+2 8
+1 2

fn=(404) gettimeofday
42 1
fi=(216) ./time/../sysdeps/unix/sysv/linux/dl-vdso.h
-2 2
+1 2
fe=(128)
+1 2

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

fl=(174)
fn=(594)
278 13
+10 5
+1 1
fi=(177) ./stdio-common/../include/scratch_buffer.h
78 1
fe=(174)
289 1
fi=(177)
77 2
fe=(174)
339 1
fi=(177)
77 1
fe=(174)
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
cfi=(175)
cfn=(596)
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
cfi=(161)
cfn=(612)
calls=1 +2 
* 19
+4 8
-9 2
cfi=(161)
cfn=(598)
calls=1 299 
* 567
* 2
3025 13
cfi=(175)
cfn=(614)
calls=1 39 
* 8
fi=(177)
85 3
fe=(174)
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

fl=(201)
fn=(792) __run_exit_handlers
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
cob=(1)
cfi=(203) ./elf/./elf/dl-fini.c
cfn=(796) _dl_fini
calls=1 -82 
* 901
+1 4
+10 2
+1 2
-63 1
+69 4
+2 2
+1 6
cfi=(161)
cfn=(846)
calls=1 863 
* 527
* 3
+2 2
cfi=(210) ./posix/../sysdeps/unix/sysv/linux/_exit.c
cfn=(864) _Exit
calls=1 27 
* 5
-90 1
cfi=(202)
cfn=(794)
calls=1 149 
* 12
* 1

fn=(790)
142 3
+1 3
-1 1
+1 1
cfn=(792)
calls=1 40 
* 1524

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

fl=(155)
fn=(520)
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
cfi=(156)
cfn=(522)
calls=1 -56 
* 9

fl=(196)
fn=(764)
354 300000
+3 1200000
+5 300000
-2 300000
+2 600000
+8 300000
+1 300000
+1 300000
+3 600000
+3 300000
+4 300000
-7 300000
+2 600000
+2 600000
+8 580646
-27 9677
+27 9677
+3 19354
+3 9677
-3 9677
+8 9677
-8 9677
+8 9677
-8 580646
+3 290323
-3 290323
+8 290323
-8 290323
+8 851615

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

fl=(184) ./libio/./libio/iofopen.c
fn=(644) fopen@@GLIBC_2.2.5
85 18
-20 3
+20 6
-20 3
cob=(2)
cfi=(50)
cfn=(548)
calls=3 -65 
* 275
+2 9
+3 3
+2 6
-2 3
+2 15
cfi=(161)
cfn=(646)
calls=3 563 
* 165
+1 3
+1 3
-1 3
+1 3
cfi=(160)
cfn=(650)
calls=3 +32 
* 339
+1 15
cfi=(160)
cfn=(654)
calls=3 213 
* 612
* 6
-38 6
+50 21

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

fl=(210)
fn=(864)
27 2
+3 1
+1 2

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

fl=(162)
fn=(540)
78 45
+6 20
fi=(171)
940 15
+2 10
+1 10
fe=(162)
84 15
cfi=(160)
cfn=(542)
calls=5 1146 
* 90
* 10
+2 20
+11 20
+4 10
cob=(2)
cfi=(50)
cfn=(548)
calls=5 0 
* 2570
* 5
+1 10
+2 20
cfi=(161)
cfn=(574)
calls=5 329 
* 120
+1 5
+1 40
-15 2
fi=(217) ./libio/../include/sys/sysmacros.h
-44 12
fe=(162)
+44 2
-2 4
+5 4

ob=(5)
fl=(178) /home/tnvc/Documents/hashtable/src/Test.cpp
fn=(620) db::test::CreateTest(db::test::TestTable*)
114 5
+1 2
+2 3
cfi=(179) /home/tnvc/Documents/hashtable/src/Hash.cpp
cfn=(622) db::hash::SetHashType(db::hash::HashType, unsigned int*)
calls=1 -66 
* 16
+2 45
+1 6
cfi=(180) /home/tnvc/Documents/hashtable/src/HashTable.cpp
cfn=(624) db::collection::map::CreateHashTable(db::collection::map::HashTable*, unsigned long, unsigned int*)
calls=1 18 
* 334
+2 3
cob=(3)
cfi=(158)
cfn=(528)
calls=1 -89 
* 476
* 1
+2 6
cfi=(183) /home/tnvc/Documents/hashtable/src/PropertiesReader.cpp
cfn=(640) db::loader::LoadProperties(db::collection::map::HashTable*, char const*)
calls=1 18 
* 3318847
-1 2
+3 6
cfi=(183)
cfn=(640)
calls=1 18 
* 48879934
-1 2
+3 6
cfi=(183)
cfn=(640)
calls=1 18 
* 37971685
-1 2
+2 3

fn=(746) db::test::SetTestName(db::test::TestTable*, char const*)
145 6
+1 2
+1 2
+2 6
cob=(3)
cfi=(193)
cfn=(750)
calls=1 -96 
* 78
* 1
+1 3

fn=(752) db::test::Test(db::test::TestTable*)
153 5
+1 2
+9 3
cob=(3)
cfi=(158)
cfn=(528)
calls=1 33 
* 411
* 1
+1 4
+1 4
cob=(3)
cfi=(128)
cfn=(756)
calls=1 33 
* 8
* 1
+1 2
+2 300000
cob=(3)
cfi=(194)
cfn=(760)
calls=300000 26 
* 17361292
* 300000
* 4500000
+2 3000000
cfi=(180)
cfn=(766) db::collection::map::ContainsKey(db::collection::map::HashTable const*, char*, unsigned int*)
calls=300000 -42 
* 42443290
* 300000
+1 1200000
-5 900002
+8 4
cob=(3)
cfi=(128)
cfn=(756)
calls=1 33 
* 8
* 1
+2 4
+1 3
-2 6
cob=(3)
cfi=(197)
cfn=(770)
calls=1 28 
* 1044
* 1
+3 3

fn=(780) db::test::DestroyTest(db::test::TestTable*)
132 5
+1 2
+2 4
cob=(3)
cfi=(165)
cfn=(704)
calls=1 3352 
* 66
* 1
+1 4
cob=(3)
cfi=(165)
cfn=(704)
calls=1 3352 
* 66
* 1
+1 4
cob=(3)
cfi=(165)
cfn=(704)
calls=1 3352 
* 59
* 1
+2 5
cfi=(180)
cfn=(788) db::collection::map::DestroyHashTable(db::collection::map::HashTable*, unsigned int*)
calls=1 34 
* 23911682
+2 45
+1 3

fl=(179)
fn=(622)
51 5
+1 6
+3 2
+2 1
+1 2

fn=(734) db::hash::GetHash(void const*, unsigned long)
61 2783400
+5 5102900
+8 2319500
cfi=(192) ./src/Hash.asm
cfn=(736) 0x0000000000002e4c
calls=463900 -6 
* 29446465
* 463900
+6 927800

fl=(183)
fn=(640)
18 18
+1 6
+1 6
+2 15
cob=(3)
cfi=(184)
cfn=(644)
calls=3 +63 
* 1517
* 3
* 3
+1 6
+2 9
cfn=(666) db::loader::GetFileSize(char const*)
calls=3 +31 
* 159
* 3
+2 15
cob=(3)
cfi=(165)
cfn=(628)
calls=3 3624 
* 909
* 3
* 3
+1 6
+2 21
cob=(3)
cfi=(189)
cfn=(674)
calls=3 +1 
* 2272
* 3
+1 9
cob=(3)
cfi=(190)
cfn=(688)
calls=3 +3 
* 1620
* 3
+2 6
+1 3
+3 12
cob=(3)
cfi=(187)
cfn=(664)
calls=3 +14 
* 63
* 3
* 655588
cob=(3)
cfi=(187)
cfn=(664)
calls=163897 +14 
* 3585217
* 163897
* 163900
+1 327800
+4 655600
+2 655600
cob=(3)
cfi=(187)
cfn=(664)
calls=163900 +7 
* 4002936
* 163900
* 163900
+1 983400
+2 983400
cfi=(180)
cfn=(720) db::collection::map::Put(db::collection::map::HashTable*, char*, char*, unsigned int*)
calls=163900 +14 
* 76347423
+2 327800
+1 983400
+2 3
+1 6

fn=(666)
56 15
+1 6
+2 69
+1 15
cob=(3)
cfi=(188)
cfn=(670)
calls=3 -32 
* 42
* 3
+1 3
+1 6

fl=(157)
fn=(618) TestTable()
45 7
+1 43
+1 3
cfi=(178)
cfn=(620)
calls=1 +67 
* 90171384
+2 5
cfi=(178)
cfn=(746)
calls=1 +96 
* 98
+1 3
cfi=(178)
cfn=(752)
calls=1 153 
* 70306099
+2 3
cfi=(178)
cfn=(780)
calls=1 +80 
* 23911948
+1 6

fn=(524)
9 4
+1 3
cob=(3)
cfi=(158)
cfn=(528)
calls=1 +23 
* 5993
* 1
+1 1
+1 6
cob=(3)
cfi=(173)
cfn=(592)
calls=1 +13 
* 948
* 1
+1 3
+1 1
cfn=(618)
calls=1 +31 
* 184389599
* 1
+4 1
+1 2

fl=(180)
fn=(730) db::collection::map::CopyValue(char**, char*)
214 1802900

fn=(766)
128 2100000
+1 600000
+2 900000
cfn=(722) db::collection::map::IsValidKey(char*)
calls=300000 +74 
* 2400000
* 900000
+2 900000
cob=(3)
cfi=(159)
cfn=(532)
calls=300000 -83 
* 4200000
* 300000
* 1500000
cfi=(179)
cfn=(734)
calls=300000 -72 
* 23543290
* 300000
+1 1800000
+2 2400000
+1 600000

fn=(728) db::collection::map::CopyKey(char**, char*)
209 1802900

fn=(788)
34 6
+1 2
+2 1
+1 2
+3 1147300
+1 1311200
+1 491700
cob=(3)
cfi=(165)
cfn=(704)
calls=163900 3352 
* 18028851
* 163900
-4 2208088
-1 560559
+8 4
cob=(3)
cfi=(165)
cfn=(704)
calls=1 3352 
* 59
* 1
+2 2
+1 2
+1 2
+2 1
+1 2

fn=(720)
61 1311200
+1 327800
+2 491700
cfn=(722)
calls=163900 205 
* 1311200
* 491700
+1 491700
cfn=(724) db::collection::map::IsValidValue(char*)
calls=163900 206 
* 1311200
* 491700
+2 491700
cob=(3)
cfi=(165)
cfn=(628)
calls=163900 3624 
* 35408442
* 163900
* 163900
+1 327800
+2 819500
cfn=(728)
calls=163900 209 
* 1802900
* 491700
+2 983400
cfn=(730)
calls=163900 214 
* 1802900
* 491700
+2 327800
+2 491700
cob=(3)
cfi=(159)
cfn=(532)
calls=163900 -26 
* 2410178
* 163900
* 819500
cfi=(179)
cfn=(734)
calls=163900 -15 
* 17500675
* 163900
+1 983400
+2 819500
+2 1147300
+1 327800
+2 590597
+1 84371
+3 694844
+1 318116
+1 327800

fn=(724)
206 1311200

fn=(722)
205 3711200

fn=(624)
18 7
+1 2
+2 2
+2 4
cob=(3)
cfi=(165)
cfn=(628)
calls=1 3624 
* 303
* 1
* 3
+1 4
+3 2
+1 3
+2 1
+1 2

fl=(150)
fn=(492) (below main)
0 12
cob=(3)
cfi=(151)
cfn=(494)
calls=1 242 
0 184399155

fn=(818) 0x00000000000011c0
0 5

fn=(504)
0 12

fn=(802) 0x0000000000001230
0 9
cob=(2)
cfi=(50)
cfn=(808)
calls=1 0 
0 73
0 1
cfn=(818)
calls=1 0 
0 5
0 3

fl=(192)
fn=(736)
68 463900
+2 463900
+1 463900
+2 463900
+2 5239833
+1 5239833
+1 5239833
+3 5239833
+1 5239833
-1 463900
+1 463900
+3 463900

ob=(1)
fl=(51)
fn=(150)
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

fn=(238) _dl_receive_error
238 6
+1 1
+1 1
+3 1
+1 1
+2 1
cfi=(2) ./elf/./elf/rtld.c
cfn=(240) version_check_doit
calls=1 696 
* 4246
+2 1
+1 1
+1 4

fn=(154)
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
cfi=(52) ./setjmp/../sysdeps/x86_64/setjmp.S
cfn=(156) __sigsetjmp
calls=3 30 
* 72
* 12
+2 9
cfi=(66) ./elf/./elf/dl-deps.c
cfn=(208) openaux
calls=2 61 
* 5311
cfi=(2)
cfn=(158) map_doit
calls=1 663 
* 2727
+2 3
-1 3
+1 3
-1 3
+1 6
+9 12

fl=(29) ./string/../sysdeps/x86_64/multiarch/memmove-vec-unaligned-erms.S
fn=(80) memcpy
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

fn=(128) mempcpy
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

fl=(75) ./elf/../sysdeps/x86/dl-cet.c
fn=(258) _dl_cet_check
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

fl=(53) ./elf/./elf/dl-misc.c
fn=(162) _dl_name_match_p
68 84
+1 28
cfi=(32) ./string/../sysdeps/x86_64/strcmp.S
cfn=(90) strcmp
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

fn=(212) _dl_sysdep_read_whole_file
36 2
+3 1
-3 6
+3 1
-3 1
+3 1
cfi=(55) ./io/../sysdeps/unix/sysv/linux/open64_nocancel.c
cfn=(170) __open_nocancel
calls=1 -11 
* 19
+1 2
+23 7
-21 4
cfi=(58) ./io/../sysdeps/unix/sysv/linux/fstat64.c
cfn=(184) fstat
calls=1 -13 
* 15
* 2
+2 2
+3 2
+13 2
cfi=(64) ./io/../sysdeps/unix/sysv/linux/close_nocancel.c
cfn=(198) __GI___close_nocancel
calls=1 -35 
* 6
* 1
-11 6
cfi=(60) ./misc/../sysdeps/unix/sysv/linux/mmap64.c
cfn=(188) mmap
calls=1 -2 
* 9
* 2

fl=(65) ./io/../sysdeps/unix/sysv/linux/access.c
fn=(202) access
25 1
+2 7
+4 1

fl=(77) ./elf/./elf/dl-lookup.c
fn=(272) check_match
70 106
+3 106
-3 1272
+3 420
+13 104
-13 104
+13 104
-13 104
+13 312
+3 372
cfi=(32)
cfn=(90)
calls=41 +19 
* 2061
* 82
+4 104
+1 208
+2 204
+19 204
+1 816
-38 104
+84 624
-18 4
+2 4
+1 2
-1 4
+1 6
-1 4
+16 12
-45 306
cfi=(32)
cfn=(90)
calls=102 -9 
* 2767
* 204
-44 8
+82 4

fn=(270) do_lookup_x
363 888
+1 111
-1 555
+48 111
-30 222
-11 111
+41 111
-30 333
+30 111
fi=(78) ./elf/../sysdeps/generic/dl-protected.h
44 333
fe=(77)
381 111
fi=(78)
44 444
fe=(77)
395 1050
+4 350
+4 350
-3 350
+3 1400
+1 1050
+3 350
+1 700
+7 350
-3 700
-2 350
+5 1400
+3 2450
570 738
374 700
+3 700
+4 700
+4 700
+4 700
+88 208
fi=(4) ./elf/../sysdeps/generic/ldsodefs.h
137 208
+1 312
fe=(77)
528 208
fi=(78)
29 208
fe=(77)
535 792
+16 208
+1 104
+1 208
422 440
-1 220
+2 220
+2 1320
+13 438
-10 1250
+3 106
-1 212
+1 106
-1 106
+2 212
-1 1272
cfn=(272)
calls=106 70 
* 10736
+4 318
+3 4
573 7
+1 888
-35 30
-70 12
171 42
452 832

fn=(268) _dl_lookup_symbol_x
840 1110
+10 111
-10 222
+10 111
-10 111
+10 111
204 111
840 111
204 555
581 444
-1 222
+2 111
-1 111
+1 333
-1 333
+1 1344
-1 1344
+1 4032
-1 4032
+2 111
846 111
-4 111
+1 111
+7 111
-8 111
+1 111
+7 417
+3 111
+2 222
-2 111
+6 222
-7 666
+7 35
+1 1554
cfn=(270)
calls=111 363 
* 39756
* 333
+28 111
-23 111
+23 111
-23 222
+24 608
+7 104
-7 104
+40 416
+79 208
-65 312
+3 312
-62 111
+69 999
-86 42
+18 21
+59 2

fl=(134) ./elf/./elf/dl-lookup-direct.c
fn=(426) _dl_lookup_direct
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

fl=(64)
fn=(198)
25 3
+1 12
+1 3

fl=(9) ./elf/../elf/dl-sysdep.c
fn=(456) _dl_sysdep_start_cleanup
262 1
+1 1

fn=(16) _dl_sysdep_start
85 4
+25 1
-25 6
+25 1
-1 1
+1 195
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
cfi=(10)
cfn=(18) __GI___tunables_init
calls=1 +55 
* 32294
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
cfi=(2)
cfn=(64) dl_main
calls=1 1320 
* 115533
+2 9

fl=(71) ./malloc/./malloc/scratch_buffer_set_array_size.c
fn=(228) __libc_scratch_buffer_set_array_size
30 20
+4 2
+1 4
+11 2
-1 4
+18 8

fl=(31) ./elf/./elf/dl-load.c
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

fn=(168) open_verify.constprop.1
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
cfi=(60)
cfn=(188)
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
cfi=(58)
cfn=(184)
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
cfi=(48)
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
cfi=(32)
cfn=(90)
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

fn=(160) _dl_map_object
2022 30
+8 6
+1 12
+3 42
+5 49
+2 21
cfi=(53)
cfn=(162)
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

fl=(144) ./elf/./elf/dl-init.c
fn=(466) _dl_init
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
* 208
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
cfn=(470)
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
* 89
cob=(4)
cfi=(145)
cfn=(474)
calls=1 -70 
* 12
-1 9
+3 24
-29 2

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
108 194
+33 194
+1 194
+2 194
+1 194
+21 194
+1 194
+1 163
+1 163
+1 140
+1 140
+1 140
+1 140
+21 140
+1 140
+1 140
+1 140
+1 140
+1 140
+1 140
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
-7 54
+1 54
+1 54
+1 54
+1 54
+1 54
+1 54
+1 54
+1 54
+1 32
+1 32
+1 32
+2 32
+1 32
+1 32
+1 32
+1 32
+1 32
-5 22
+1 22
+1 22
+1 22
+1 22
+1 22
+10 4
+1 4
+1 4
+2 4
+6 4
+1 4
+1 4
+1 4
+1 4
+5 4
+2 3
+1 3
+1 6
+8 3
+1 3
+3 3
+1 3
+1 3
+1 3
+1 3
+1 3
568 2
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
+72 2
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
+72 3
+1 3
+1 3
+1 3
+1 3
+2 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
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
+72 5
+1 5
+1 5
+1 5
+1 5
+2 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
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
+41 3
+1 3
+1 3
+1 3
+1 3
+2 3
+1 3
+1 3
+1 3
+1 3
+1 3
+1 3
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
+72 2
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
+72 5
+1 5
+1 5
+1 5
+1 5
+2 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
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
1693 5
+1 5
+1 5
+1 5
+1 5
+2 5
+1 5
+1 5
+1 5
+1 5
+1 5
+1 5
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
+44 1
+1 1
+1 1
+1 1
+7 1
+1 1
+1 1
+16 9
+1 9
+1 9
+1 9
+1 9
+2 9
+1 9
+1 9
+1 9
+1 9
+1 9
+1 9
+1 5
+4 5
+1 5
+1 5
+6 5
+1 5
+1 10
+4 5
+1 5
+3 5
+1 5
+1 5
+3 5
+1 5
+1 5
+6 5
+1 5
+1 5
+1 5
+1 5
+1 5
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
+72 16
+1 16
+1 16
+1 16
+1 16
+2 16
+1 16
+1 16
+1 16
+1 16
+1 16
+1 16
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
+74 35
+2 35
+1 35
+1 35
+1 35
-3 23
+1 23
+1 23
+1 23
+1 64
+5 32
+6 32
+1 32
+8 32
+1 32
-16 162
+6 162
+1 162
+8 162
+1 162

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
fn=(142) _dl_audit_activity_map
28 6
+2 1
-1 1
+1 2
+6 6

fn=(514)
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

fn=(826) _dl_audit_objclose
96 4
+1 16

fn=(200)
76 2
+1 8

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
cfi=(29)
cfn=(80)
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
fn=(122) _dl_hwcaps_split
25 4
+1 3
+21 1
-20 1
+20 3

fn=(120) _dl_hwcaps_contains
66 6
+1 12
+1 6
+9 6

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
cfn=(120)
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

fl=(46)
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
cfn=(128)
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

fn=(248) _dl_tls_static_surplus_init
97 2
+4 1
-4 2
+4 1
-4 2
+4 3
cfi=(10)
cfn=(24)
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

fn=(136) _dl_count_modids
197 1
+2 2
+1 1
+15 2

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

fl=(14)
fn=(28)
35 1
+1 3
+1 2
+6 1
+1 1

fl=(56)
fn=(172)
25 2
+1 8
+1 2

fl=(127) ./misc/../sysdeps/unix/syscall-template.S
fn=(462) munmap
117 5
+5 1

fn=(400) mprotect
117 20
+5 4

fl=(52)
fn=(156)
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

fl=(23)
fn=(62)
37 5
+3 1
+18 2
+4 2
+16 5

fl=(203)
fn=(796)
31 9
+20 3
-3 7
+3 4
+3 2
cob=(3)
cfi=(204)
cfn=(798)
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
cfn=(234) _dl_sort_maps
calls=1 288 
* 300
+9 2
cob=(3)
cfi=(205)
cfn=(800)
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
cfn=(828)
calls=1 0 
* 92
cob=(5)
cfi=(150)
cfn=(802)
calls=1 0 
* 91
-1 10
+5 6
+1 6
cob=(2)
cfi=(50)
cfn=(844)
calls=1 0 
* 4
cob=(2)
cfi=(50)
cfn=(824)
calls=1 0 
* 4
+6 8
cfi=(48)
cfn=(826)
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
-5 234
+1 117
+1 117
-2 117
+2 117
+3 117
-5 117
+2 117
-2 117
+1 234
+2 117
-2 117
+2 351
+2 234
+9 118
fi=(6)
262 236
+21 236
+4 236
+7 472
fi=(4)
138 306
fi=(6)
294 3947
cfi=(77)
cfn=(268)
calls=99 840 
* 56139
* 891
+2 306
+30 698
450 303
fi=(5)
145 337
-19 360
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
-13 75
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
296 163
+3 115
-3 115
+3 230
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
296 99
+3 99
-3 214
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

fl=(1) ???
fn=(0) 0x00000000000202b0
0 2
cfi=(2)
cfn=(2) _dl_start
calls=1 527 
0 157719
0 14
cfi=(144)
cfn=(466)
calls=1 77 
0 381
0 3
cob=(5)
cfi=(150)
cfn=(492)
calls=1 0 
0 184399167

fl=(24)
fn=(66) __tls_pre_init_tp
53 3
+3 8
+5 1
-5 1
+5 1
+1 1
-6 1
+8 1

fn=(254) __tls_init_tp
68 2
fi=(219) ./elf/../include/list.h
-24 1
fe=(24)
+24 1
fi=(219)
-25 1
fe=(24)
+26 1
+3 1
fi=(219)
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

fn=(84)
42 8
+2 16

fl=(67)
fn=(218) _dl_cache_libcmp
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
cfn=(218)
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
cfn=(212)
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
fi=(220) ./elf/../sysdeps/x86/dl-hwcap.h
57 1
fe=(38)
233 2
fi=(220)
57 1
fe=(38)
233 2
fi=(220)
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

fl=(142) ./elf/./elf/dl-runtime.c
fn=(450) _dl_fixup
46 16
+2 10
+1 2
+6 2
fi=(221) ./elf/../sysdeps/x86_64/dl-runtime.h
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
cfi=(77)
cfn=(268)
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
+4 6
-2 6
-2 12
+4 6
-4 61
56 32
+8 24
+6 24
+16 8
+1 16
+2 8
+5 72
+14 204
+12 282
+4 94
-30 188
224 32
+3 24
+5 6
-11 6
110 8
+3 32
cfi=(32)
cfn=(90)
calls=8 -5 
* 383
* 34
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
+7 8
+1 8
-1 24
+1 8
+1 8
-2 8
+2 16
+1 24
+3 24
+5 6
-15 6
+2 6
-2 6
+2 6
-2 6
+2 12
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
* 4163
-2 4
+2 12
-1 4
-1 8
+5 7

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
fn=(234)
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
71 315
+6 62
-3 124
+3 5566
+4 124
+5 124
fi=(11) ./elf/./elf/dl-tunables.h
+54 62
fe=(10)
-54 248
fi=(11)
+55 138
-1 49
+1 14
-1 62
+1 124
fe=(10)
320 248
-18 8680
+6 13640
fi=(11)
140 558
+1 1116
-1 89
+1 356
-1 445
fe=(10)
354 8
74 124

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

fl=(2)
fn=(158)
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
fi=(3) ./elf/./get-dynamic-info.h
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
cfi=(7) ./elf/./elf/dl-minimal.c
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
* 155626
* 1
+2 2
+98 9
fi=(3)
62 4
+2 4
fe=(2)
573 3

fn=(144) handle_preload_list
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
cfn=(148)
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

fn=(246) init_tls
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

fn=(240)
696 3
+2 4
cfi=(73)
cfn=(242)
calls=1 361 
* 4235
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
* 409
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
fi=(3)
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
cfi=(65)
cfn=(202)
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
cfi=(66)
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
cfi=(51)
cfn=(238)
calls=1 238 
* 4263
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
cfi=(75)
cfn=(258)
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
* 85979
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
cfi=(7)
cfn=(416) __rtld_malloc_init_real
calls=1 76 
* 2372
+3 1
cfi=(133) ./elf/../sysdeps/nptl/dl-mutex.c
cfn=(424) __rtld_mutex_init
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
cfi=(135) ./elf/./elf/dl-call-libc-early-init.c
cfn=(430) _dl_call_libc_early_init
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
cfn=(246)
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
cfn=(144)
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

fl=(135)
fn=(430)
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

fl=(66)
fn=(208)
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
cfn=(152)
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

fl=(141)
fn=(448)
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

fl=(7)
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

fn=(12)
42 1
+1 2
+1 2
+1 2
+1 2
+1 1

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

fl=(133)
fn=(424)
30 2
+10 3
-10 1
+10 2
-10 1
+7 1
+3 2
cfi=(134)
cfn=(426)
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

fl=(70)
fn=(222)
25 8
+1 16
+1 4

fl=(25)
fn=(68)
28 2
+1 2
+3 68
+13 61
-13 122
+2 124
+1 32
+5 1
-3 1
+3 1
+2 1
+7 1

totals: 184557286
