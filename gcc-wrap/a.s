
test_wrap_symbol:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 4a 2f 00 00    	pushq  0x2f4a(%rip)        # 3f70 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 4b 2f 00 00 	bnd jmpq *0x2f4b(%rip)        # 3f78 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <.plt>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <.plt>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <.plt>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <.plt>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <.plt>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <.plt>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <.plt>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <.plt>
    10df:	90                   	nop

Disassembly of section .plt.got:

00000000000010e0 <__cxa_finalize@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 0d 2f 00 00 	bnd jmpq *0x2f0d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010f0 <free@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 85 2e 00 00 	bnd jmpq *0x2e85(%rip)        # 3f80 <free@GLIBC_2.2.5>
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <backtrace_symbols@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 7d 2e 00 00 	bnd jmpq *0x2e7d(%rip)        # 3f88 <backtrace_symbols@GLIBC_2.2.5>
    110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001110 <getpid@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 75 2e 00 00 	bnd jmpq *0x2e75(%rip)        # 3f90 <getpid@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001120 <backtrace@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 6d 2e 00 00 	bnd jmpq *0x2e6d(%rip)        # 3f98 <backtrace@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <__stack_chk_fail@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 65 2e 00 00 	bnd jmpq *0x2e65(%rip)        # 3fa0 <__stack_chk_fail@GLIBC_2.4>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <system@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 5d 2e 00 00 	bnd jmpq *0x2e5d(%rip)        # 3fa8 <system@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <fprintf@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 55 2e 00 00 	bnd jmpq *0x2e55(%rip)        # 3fb0 <fprintf@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <malloc@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 4d 2e 00 00 	bnd jmpq *0x2e4d(%rip)        # 3fb8 <malloc@GLIBC_2.2.5>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <sprintf@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 45 2e 00 00 	bnd jmpq *0x2e45(%rip)        # 3fc0 <sprintf@GLIBC_2.2.5>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001180 <exit@plt>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	f2 ff 25 3d 2e 00 00 	bnd jmpq *0x2e3d(%rip)        # 3fc8 <exit@GLIBC_2.2.5>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <fwrite@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 35 2e 00 00 	bnd jmpq *0x2e35(%rip)        # 3fd0 <fwrite@GLIBC_2.2.5>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000011a0 <_start>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	31 ed                	xor    %ebp,%ebp
    11a6:	49 89 d1             	mov    %rdx,%r9
    11a9:	5e                   	pop    %rsi
    11aa:	48 89 e2             	mov    %rsp,%rdx
    11ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11b1:	50                   	push   %rax
    11b2:	54                   	push   %rsp
    11b3:	4c 8d 05 76 05 00 00 	lea    0x576(%rip),%r8        # 1730 <__libc_csu_fini>
    11ba:	48 8d 0d ff 04 00 00 	lea    0x4ff(%rip),%rcx        # 16c0 <__libc_csu_init>
    11c1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1289 <main>
    11c8:	ff 15 12 2e 00 00    	callq  *0x2e12(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    11ce:	f4                   	hlt    
    11cf:	90                   	nop

00000000000011d0 <deregister_tm_clones>:
    11d0:	48 8d 3d 39 2e 00 00 	lea    0x2e39(%rip),%rdi        # 4010 <__TMC_END__>
    11d7:	48 8d 05 32 2e 00 00 	lea    0x2e32(%rip),%rax        # 4010 <__TMC_END__>
    11de:	48 39 f8             	cmp    %rdi,%rax
    11e1:	74 15                	je     11f8 <deregister_tm_clones+0x28>
    11e3:	48 8b 05 ee 2d 00 00 	mov    0x2dee(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    11ea:	48 85 c0             	test   %rax,%rax
    11ed:	74 09                	je     11f8 <deregister_tm_clones+0x28>
    11ef:	ff e0                	jmpq   *%rax
    11f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11f8:	c3                   	retq   
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <register_tm_clones>:
    1200:	48 8d 3d 09 2e 00 00 	lea    0x2e09(%rip),%rdi        # 4010 <__TMC_END__>
    1207:	48 8d 35 02 2e 00 00 	lea    0x2e02(%rip),%rsi        # 4010 <__TMC_END__>
    120e:	48 29 fe             	sub    %rdi,%rsi
    1211:	48 89 f0             	mov    %rsi,%rax
    1214:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1218:	48 c1 f8 03          	sar    $0x3,%rax
    121c:	48 01 c6             	add    %rax,%rsi
    121f:	48 d1 fe             	sar    %rsi
    1222:	74 14                	je     1238 <register_tm_clones+0x38>
    1224:	48 8b 05 c5 2d 00 00 	mov    0x2dc5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    122b:	48 85 c0             	test   %rax,%rax
    122e:	74 08                	je     1238 <register_tm_clones+0x38>
    1230:	ff e0                	jmpq   *%rax
    1232:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1238:	c3                   	retq   
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <__do_global_dtors_aux>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	80 3d fd 2d 00 00 00 	cmpb   $0x0,0x2dfd(%rip)        # 4048 <completed.8061>
    124b:	75 2b                	jne    1278 <__do_global_dtors_aux+0x38>
    124d:	55                   	push   %rbp
    124e:	48 83 3d a2 2d 00 00 	cmpq   $0x0,0x2da2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1255:	00 
    1256:	48 89 e5             	mov    %rsp,%rbp
    1259:	74 0c                	je     1267 <__do_global_dtors_aux+0x27>
    125b:	48 8b 3d a6 2d 00 00 	mov    0x2da6(%rip),%rdi        # 4008 <__dso_handle>
    1262:	e8 79 fe ff ff       	callq  10e0 <__cxa_finalize@plt>
    1267:	e8 64 ff ff ff       	callq  11d0 <deregister_tm_clones>
    126c:	c6 05 d5 2d 00 00 01 	movb   $0x1,0x2dd5(%rip)        # 4048 <completed.8061>
    1273:	5d                   	pop    %rbp
    1274:	c3                   	retq   
    1275:	0f 1f 00             	nopl   (%rax)
    1278:	c3                   	retq   
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <frame_dummy>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	e9 77 ff ff ff       	jmpq   1200 <register_tm_clones>

0000000000001289 <main>:
       #include <sys/types.h>
       #include <unistd.h>
#include "wrap_symbol.h"

int main()
{
    1289:	f3 0f 1e fa          	endbr64 
    128d:	55                   	push   %rbp
    128e:	48 89 e5             	mov    %rsp,%rbp
    1291:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
    1298:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    129f:	00 00 
    12a1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12a5:	31 c0                	xor    %eax,%eax
	fprintf(stdout, "===== test start =====\n");
    12a7:	48 8b 05 72 2d 00 00 	mov    0x2d72(%rip),%rax        # 4020 <stdout@@GLIBC_2.2.5>
    12ae:	48 89 c1             	mov    %rax,%rcx
    12b1:	ba 17 00 00 00       	mov    $0x17,%edx
    12b6:	be 01 00 00 00       	mov    $0x1,%esi
    12bb:	48 8d 3d 42 0d 00 00 	lea    0xd42(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12c2:	e8 c9 fe ff ff       	callq  1190 <fwrite@plt>

	char* p1 = (char*)malloc(4);
    12c7:	bf 04 00 00 00       	mov    $0x4,%edi
    12cc:	e8 0c 03 00 00       	callq  15dd <__wrap_malloc>
    12d1:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
	fprintf(stdout, "===== test mid =====\n");
    12d8:	48 8b 05 41 2d 00 00 	mov    0x2d41(%rip),%rax        # 4020 <stdout@@GLIBC_2.2.5>
    12df:	48 89 c1             	mov    %rax,%rcx
    12e2:	ba 15 00 00 00       	mov    $0x15,%edx
    12e7:	be 01 00 00 00       	mov    $0x1,%esi
    12ec:	48 8d 3d 29 0d 00 00 	lea    0xd29(%rip),%rdi        # 201c <_IO_stdin_used+0x1c>
    12f3:	e8 98 fe ff ff       	callq  1190 <fwrite@plt>
	free(p1);
    12f8:	48 8b 85 e8 fe ff ff 	mov    -0x118(%rbp),%rax
    12ff:	48 89 c7             	mov    %rax,%rdi
    1302:	e8 18 03 00 00       	callq  161f <__wrap_free>

	foo();
    1307:	b8 00 00 00 00       	mov    $0x0,%eax
    130c:	e8 7c 03 00 00       	callq  168d <__wrap_foo>

	//int* p2 = new int;
	//delete p2;

	fprintf(stdout, "===== test finish =====\n");
    1311:	48 8b 05 08 2d 00 00 	mov    0x2d08(%rip),%rax        # 4020 <stdout@@GLIBC_2.2.5>
    1318:	48 89 c1             	mov    %rax,%rcx
    131b:	ba 18 00 00 00       	mov    $0x18,%edx
    1320:	be 01 00 00 00       	mov    $0x1,%esi
    1325:	48 8d 3d 06 0d 00 00 	lea    0xd06(%rip),%rdi        # 2032 <_IO_stdin_used+0x32>
    132c:	e8 5f fe ff ff       	callq  1190 <fwrite@plt>
	char cmd[256]={0};
    1331:	48 c7 85 f0 fe ff ff 	movq   $0x0,-0x110(%rbp)
    1338:	00 00 00 00 
    133c:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    1343:	00 00 00 00 
    1347:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    134e:	00 00 00 00 
    1352:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
    1359:	00 00 00 00 
    135d:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    1364:	00 00 00 00 
    1368:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    136f:	00 00 00 00 
    1373:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    137a:	00 00 00 00 
    137e:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
    1385:	00 00 00 00 
    1389:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    1390:	00 00 00 00 
    1394:	48 c7 85 38 ff ff ff 	movq   $0x0,-0xc8(%rbp)
    139b:	00 00 00 00 
    139f:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
    13a6:	00 00 00 00 
    13aa:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    13b1:	00 00 00 00 
    13b5:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    13bc:	00 00 00 00 
    13c0:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    13c7:	00 00 00 00 
    13cb:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    13d2:	00 00 00 00 
    13d6:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    13dd:	00 00 00 00 
    13e1:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    13e8:	00 00 00 00 
    13ec:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    13f3:	00 00 00 00 
    13f7:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
    13fe:	00 
    13ff:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
    1406:	00 
    1407:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    140e:	00 
    140f:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    1416:	00 
    1417:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
    141e:	00 
    141f:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    1426:	00 
    1427:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    142e:	00 
    142f:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    1436:	00 
    1437:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    143e:	00 
    143f:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    1446:	00 
    1447:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    144e:	00 
    144f:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1456:	00 
    1457:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    145e:	00 
    145f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1466:	00 
	sprintf(cmd, "cat /proc/%d/maps", getpid());
    1467:	e8 a4 fc ff ff       	callq  1110 <getpid@plt>
    146c:	89 c2                	mov    %eax,%edx
    146e:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    1475:	48 8d 35 cf 0b 00 00 	lea    0xbcf(%rip),%rsi        # 204b <_IO_stdin_used+0x4b>
    147c:	48 89 c7             	mov    %rax,%rdi
    147f:	b8 00 00 00 00       	mov    $0x0,%eax
    1484:	e8 e7 fc ff ff       	callq  1170 <sprintf@plt>
	system(cmd);
    1489:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
    1490:	48 89 c7             	mov    %rax,%rdi
    1493:	e8 a8 fc ff ff       	callq  1140 <system@plt>
	return 0;
    1498:	b8 00 00 00 00       	mov    $0x0,%eax
}
    149d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    14a1:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    14a8:	00 00 
    14aa:	74 05                	je     14b1 <main+0x228>
    14ac:	e8 7f fc ff ff       	callq  1130 <__stack_chk_fail@plt>
    14b1:	c9                   	leaveq 
    14b2:	c3                   	retq   

00000000000014b3 <myfunc3>:

#define BT_BUF_SIZE 100

void
myfunc3(void)
{
    14b3:	f3 0f 1e fa          	endbr64 
    14b7:	55                   	push   %rbp
    14b8:	48 89 e5             	mov    %rsp,%rbp
    14bb:	48 81 ec 40 03 00 00 	sub    $0x340,%rsp
    14c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14c9:	00 00 
    14cb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    14cf:	31 c0                	xor    %eax,%eax
	int j, nptrs;
	void *buffer[BT_BUF_SIZE];
	char **strings;

	nptrs = backtrace(buffer, BT_BUF_SIZE);
    14d1:	48 8d 85 d0 fc ff ff 	lea    -0x330(%rbp),%rax
    14d8:	be 64 00 00 00       	mov    $0x64,%esi
    14dd:	48 89 c7             	mov    %rax,%rdi
    14e0:	e8 3b fc ff ff       	callq  1120 <backtrace@plt>
    14e5:	89 85 c4 fc ff ff    	mov    %eax,-0x33c(%rbp)
	fprintf(stderr, "backtrace() returned %d addresses\n", nptrs);
    14eb:	48 8b 05 4e 2b 00 00 	mov    0x2b4e(%rip),%rax        # 4040 <stderr@@GLIBC_2.2.5>
    14f2:	8b 95 c4 fc ff ff    	mov    -0x33c(%rbp),%edx
    14f8:	48 8d 35 61 0b 00 00 	lea    0xb61(%rip),%rsi        # 2060 <_IO_stdin_used+0x60>
    14ff:	48 89 c7             	mov    %rax,%rdi
    1502:	b8 00 00 00 00       	mov    $0x0,%eax
    1507:	e8 44 fc ff ff       	callq  1150 <fprintf@plt>

	/* The call backtrace_symbols_fd(buffer, nptrs, STDOUT_FILENO)
	would produce similar output to the following: */

	strings = backtrace_symbols(buffer, nptrs);
    150c:	8b 95 c4 fc ff ff    	mov    -0x33c(%rbp),%edx
    1512:	48 8d 85 d0 fc ff ff 	lea    -0x330(%rbp),%rax
    1519:	89 d6                	mov    %edx,%esi
    151b:	48 89 c7             	mov    %rax,%rdi
    151e:	e8 dd fb ff ff       	callq  1100 <backtrace_symbols@plt>
    1523:	48 89 85 c8 fc ff ff 	mov    %rax,-0x338(%rbp)

	if (strings == NULL) {
    152a:	48 83 bd c8 fc ff ff 	cmpq   $0x0,-0x338(%rbp)
    1531:	00 
    1532:	75 2a                	jne    155e <myfunc3+0xab>
		fprintf(stderr, "backtrace_symbols fail");
    1534:	48 8b 05 05 2b 00 00 	mov    0x2b05(%rip),%rax        # 4040 <stderr@@GLIBC_2.2.5>
    153b:	48 89 c1             	mov    %rax,%rcx
    153e:	ba 16 00 00 00       	mov    $0x16,%edx
    1543:	be 01 00 00 00       	mov    $0x1,%esi
    1548:	48 8d 3d 34 0b 00 00 	lea    0xb34(%rip),%rdi        # 2083 <_IO_stdin_used+0x83>
    154f:	e8 3c fc ff ff       	callq  1190 <fwrite@plt>
		exit(EXIT_FAILURE);
    1554:	bf 01 00 00 00       	mov    $0x1,%edi
    1559:	e8 22 fc ff ff       	callq  1180 <exit@plt>
	}

	for (j = 0; j < nptrs; j++)
    155e:	c7 85 c0 fc ff ff 00 	movl   $0x0,-0x340(%rbp)
    1565:	00 00 00 
    1568:	eb 3f                	jmp    15a9 <myfunc3+0xf6>
		fprintf(stderr, "%s\n", strings[j]);
    156a:	8b 85 c0 fc ff ff    	mov    -0x340(%rbp),%eax
    1570:	48 98                	cltq   
    1572:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1579:	00 
    157a:	48 8b 85 c8 fc ff ff 	mov    -0x338(%rbp),%rax
    1581:	48 01 d0             	add    %rdx,%rax
    1584:	48 8b 10             	mov    (%rax),%rdx
    1587:	48 8b 05 b2 2a 00 00 	mov    0x2ab2(%rip),%rax        # 4040 <stderr@@GLIBC_2.2.5>
    158e:	48 8d 35 05 0b 00 00 	lea    0xb05(%rip),%rsi        # 209a <_IO_stdin_used+0x9a>
    1595:	48 89 c7             	mov    %rax,%rdi
    1598:	b8 00 00 00 00       	mov    $0x0,%eax
    159d:	e8 ae fb ff ff       	callq  1150 <fprintf@plt>
	for (j = 0; j < nptrs; j++)
    15a2:	83 85 c0 fc ff ff 01 	addl   $0x1,-0x340(%rbp)
    15a9:	8b 85 c0 fc ff ff    	mov    -0x340(%rbp),%eax
    15af:	3b 85 c4 fc ff ff    	cmp    -0x33c(%rbp),%eax
    15b5:	7c b3                	jl     156a <myfunc3+0xb7>

	free(strings);
    15b7:	48 8b 85 c8 fc ff ff 	mov    -0x338(%rbp),%rax
    15be:	48 89 c7             	mov    %rax,%rdi
    15c1:	e8 59 00 00 00       	callq  161f <__wrap_free>
}
    15c6:	90                   	nop
    15c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    15cb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    15d2:	00 00 
    15d4:	74 05                	je     15db <myfunc3+0x128>
    15d6:	e8 55 fb ff ff       	callq  1130 <__stack_chk_fail@plt>
    15db:	c9                   	leaveq 
    15dc:	c3                   	retq   

00000000000015dd <__wrap_malloc>:

void* __wrap_malloc(size_t size)
{
    15dd:	f3 0f 1e fa          	endbr64 
    15e1:	55                   	push   %rbp
    15e2:	48 89 e5             	mov    %rsp,%rbp
    15e5:	48 83 ec 10          	sub    $0x10,%rsp
    15e9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	fprintf(stdout, "call __wrap_malloc function, size: %d\n", size);
    15ed:	48 8b 05 2c 2a 00 00 	mov    0x2a2c(%rip),%rax        # 4020 <stdout@@GLIBC_2.2.5>
    15f4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    15f8:	48 8d 35 a1 0a 00 00 	lea    0xaa1(%rip),%rsi        # 20a0 <_IO_stdin_used+0xa0>
    15ff:	48 89 c7             	mov    %rax,%rdi
    1602:	b8 00 00 00 00       	mov    $0x0,%eax
    1607:	e8 44 fb ff ff       	callq  1150 <fprintf@plt>
	myfunc3();
    160c:	e8 a2 fe ff ff       	callq  14b3 <myfunc3>
	return __real_malloc(size);
    1611:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1615:	48 89 c7             	mov    %rax,%rdi
    1618:	e8 43 fb ff ff       	callq  1160 <malloc@plt>
}
    161d:	c9                   	leaveq 
    161e:	c3                   	retq   

000000000000161f <__wrap_free>:

void __wrap_free(void* ptr)
{
    161f:	f3 0f 1e fa          	endbr64 
    1623:	55                   	push   %rbp
    1624:	48 89 e5             	mov    %rsp,%rbp
    1627:	48 83 ec 10          	sub    $0x10,%rsp
    162b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	fprintf(stdout, "call __wrap_free function\n");
    162f:	48 8b 05 ea 29 00 00 	mov    0x29ea(%rip),%rax        # 4020 <stdout@@GLIBC_2.2.5>
    1636:	48 89 c1             	mov    %rax,%rcx
    1639:	ba 1a 00 00 00       	mov    $0x1a,%edx
    163e:	be 01 00 00 00       	mov    $0x1,%esi
    1643:	48 8d 3d 7d 0a 00 00 	lea    0xa7d(%rip),%rdi        # 20c7 <_IO_stdin_used+0xc7>
    164a:	e8 41 fb ff ff       	callq  1190 <fwrite@plt>
	__real_free(ptr);
    164f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1653:	48 89 c7             	mov    %rax,%rdi
    1656:	e8 95 fa ff ff       	callq  10f0 <free@plt>
}
    165b:	90                   	nop
    165c:	c9                   	leaveq 
    165d:	c3                   	retq   

000000000000165e <foo>:




int foo()
{
    165e:	f3 0f 1e fa          	endbr64 
    1662:	55                   	push   %rbp
    1663:	48 89 e5             	mov    %rsp,%rbp
	fprintf(stdout, "call foo function\n");
    1666:	48 8b 05 b3 29 00 00 	mov    0x29b3(%rip),%rax        # 4020 <stdout@@GLIBC_2.2.5>
    166d:	48 89 c1             	mov    %rax,%rcx
    1670:	ba 12 00 00 00       	mov    $0x12,%edx
    1675:	be 01 00 00 00       	mov    $0x1,%esi
    167a:	48 8d 3d 61 0a 00 00 	lea    0xa61(%rip),%rdi        # 20e2 <_IO_stdin_used+0xe2>
    1681:	e8 0a fb ff ff       	callq  1190 <fwrite@plt>
	return 0;
    1686:	b8 00 00 00 00       	mov    $0x0,%eax
}
    168b:	5d                   	pop    %rbp
    168c:	c3                   	retq   

000000000000168d <__wrap_foo>:

int __wrap_foo()
{
    168d:	f3 0f 1e fa          	endbr64 
    1691:	55                   	push   %rbp
    1692:	48 89 e5             	mov    %rsp,%rbp
	fprintf(stdout, "call __wrap_foo function\n");
    1695:	48 8b 05 84 29 00 00 	mov    0x2984(%rip),%rax        # 4020 <stdout@@GLIBC_2.2.5>
    169c:	48 89 c1             	mov    %rax,%rcx
    169f:	ba 19 00 00 00       	mov    $0x19,%edx
    16a4:	be 01 00 00 00       	mov    $0x1,%esi
    16a9:	48 8d 3d 45 0a 00 00 	lea    0xa45(%rip),%rdi        # 20f5 <_IO_stdin_used+0xf5>
    16b0:	e8 db fa ff ff       	callq  1190 <fwrite@plt>
	return 0;
    16b5:	b8 00 00 00 00       	mov    $0x0,%eax
    16ba:	5d                   	pop    %rbp
    16bb:	c3                   	retq   
    16bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000016c0 <__libc_csu_init>:
    16c0:	f3 0f 1e fa          	endbr64 
    16c4:	41 57                	push   %r15
    16c6:	4c 8d 3d 9b 26 00 00 	lea    0x269b(%rip),%r15        # 3d68 <__frame_dummy_init_array_entry>
    16cd:	41 56                	push   %r14
    16cf:	49 89 d6             	mov    %rdx,%r14
    16d2:	41 55                	push   %r13
    16d4:	49 89 f5             	mov    %rsi,%r13
    16d7:	41 54                	push   %r12
    16d9:	41 89 fc             	mov    %edi,%r12d
    16dc:	55                   	push   %rbp
    16dd:	48 8d 2d 8c 26 00 00 	lea    0x268c(%rip),%rbp        # 3d70 <__do_global_dtors_aux_fini_array_entry>
    16e4:	53                   	push   %rbx
    16e5:	4c 29 fd             	sub    %r15,%rbp
    16e8:	48 83 ec 08          	sub    $0x8,%rsp
    16ec:	e8 0f f9 ff ff       	callq  1000 <_init>
    16f1:	48 c1 fd 03          	sar    $0x3,%rbp
    16f5:	74 1f                	je     1716 <__libc_csu_init+0x56>
    16f7:	31 db                	xor    %ebx,%ebx
    16f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1700:	4c 89 f2             	mov    %r14,%rdx
    1703:	4c 89 ee             	mov    %r13,%rsi
    1706:	44 89 e7             	mov    %r12d,%edi
    1709:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    170d:	48 83 c3 01          	add    $0x1,%rbx
    1711:	48 39 dd             	cmp    %rbx,%rbp
    1714:	75 ea                	jne    1700 <__libc_csu_init+0x40>
    1716:	48 83 c4 08          	add    $0x8,%rsp
    171a:	5b                   	pop    %rbx
    171b:	5d                   	pop    %rbp
    171c:	41 5c                	pop    %r12
    171e:	41 5d                	pop    %r13
    1720:	41 5e                	pop    %r14
    1722:	41 5f                	pop    %r15
    1724:	c3                   	retq   
    1725:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    172c:	00 00 00 00 

0000000000001730 <__libc_csu_fini>:
    1730:	f3 0f 1e fa          	endbr64 
    1734:	c3                   	retq   

Disassembly of section .fini:

0000000000001738 <_fini>:
    1738:	f3 0f 1e fa          	endbr64 
    173c:	48 83 ec 08          	sub    $0x8,%rsp
    1740:	48 83 c4 08          	add    $0x8,%rsp
    1744:	c3                   	retq   
